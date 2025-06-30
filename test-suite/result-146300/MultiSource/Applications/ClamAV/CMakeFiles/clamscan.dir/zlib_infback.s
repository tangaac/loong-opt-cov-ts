	.file	"zlib_infback.c"
	.text
	.globl	inflateBackInit_                # -- Begin function inflateBackInit_
	.p2align	5
	.type	inflateBackInit_,@function
inflateBackInit_:                       # @inflateBackInit_
# %bb.0:
	addi.w	$a5, $zero, -6
	beqz	$a3, .LBB0_14
# %bb.1:
	ori	$a6, $zero, 112
	bne	$a4, $a6, .LBB0_14
# %bb.2:
	ld.bu	$a3, $a3, 0
	ori	$a4, $zero, 49
	bne	$a3, $a4, .LBB0_14
# %bb.3:
	addi.w	$a3, $a1, -16
	addi.w	$a4, $zero, -8
	addi.w	$a5, $zero, -2
	bltu	$a3, $a4, .LBB0_14
# %bb.4:
	beqz	$a0, .LBB0_14
# %bb.5:
	beqz	$a2, .LBB0_14
# %bb.6:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a3, $a0, 64
	st.d	$zero, $a0, 48
	bnez	$a3, .LBB0_8
# %bb.7:
	pcalau12i	$a3, %got_pc_hi20(zcalloc)
	ld.d	$a3, $a3, %got_pc_lo12(zcalloc)
	st.d	$a3, $a0, 64
	st.d	$zero, $a0, 80
.LBB0_8:
	move	$s0, $a1
	move	$fp, $a2
	ld.d	$a1, $a0, 72
	bnez	$a1, .LBB0_10
# %bb.9:
	pcalau12i	$a1, %got_pc_hi20(zcfree)
	ld.d	$a1, $a1, %got_pc_lo12(zcfree)
	st.d	$a1, $a0, 72
.LBB0_10:
	move	$s1, $a0
	ld.d	$a0, $a0, 80
	lu12i.w	$a1, 1
	ori	$a2, $a1, 3064
	ori	$a1, $zero, 1
	ori	$s2, $zero, 1
	jirl	$ra, $a3, 0
	beqz	$a0, .LBB0_12
# %bb.11:
	move	$a5, $zero
	st.d	$a0, $s1, 56
	lu12i.w	$a1, 8
	st.w	$a1, $a0, 28
	st.w	$s0, $a0, 56
	sll.w	$a1, $s2, $s0
	st.w	$a1, $a0, 60
	st.d	$fp, $a0, 72
	st.d	$zero, $a0, 64
	b	.LBB0_13
.LBB0_12:
	addi.w	$a5, $zero, -4
.LBB0_13:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB0_14:
	move	$a0, $a5
	ret
.Lfunc_end0:
	.size	inflateBackInit_, .Lfunc_end0-inflateBackInit_
                                        # -- End function
	.globl	inflateBack                     # -- Begin function inflateBack
	.p2align	5
	.type	inflateBack,@function
inflateBack:                            # @inflateBack
# %bb.0:
	addi.d	$sp, $sp, -320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	st.d	$s5, $sp, 256                   # 8-byte Folded Spill
	st.d	$s6, $sp, 248                   # 8-byte Folded Spill
	st.d	$s7, $sp, 240                   # 8-byte Folded Spill
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 320
	bstrins.d	$sp, $zero, 4, 0
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	move	$s7, $a0
	addi.w	$a0, $zero, -2
	beqz	$s7, .LBB1_207
# %bb.1:
	ld.d	$s3, $s7, 56
	beqz	$s3, .LBB1_207
# %bb.2:
	move	$s5, $a4
	st.d	$zero, $s7, 48
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3903
	st.d	$a0, $s3, 8
	ld.d	$a1, $s7, 0
	st.w	$zero, $s3, 64
	st.d	$a1, $sp, 224
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	beqz	$a1, .LBB1_4
# %bb.3:
	ld.w	$s6, $s7, 8
	b	.LBB1_5
.LBB1_4:
	move	$s6, $zero
.LBB1_5:                                # %.split1107
	move	$s0, $zero
	move	$s4, $zero
	ld.d	$s8, $s3, 72
	ld.w	$s1, $s3, 60
	addi.d	$a1, $s3, 152
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a1, $s3, 1368
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a1, $s3, 144
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a1, $s3, 120
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a1, $s3, 792
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a1, $s3, 124
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	addi.w	$a1, $zero, -2
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	lu12i.w	$a1, -4
	ori	$a1, $a1, 193
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LJTI1_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI1_0)
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3905
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LJTI1_1)
	addi.d	$a1, $a1, %pc_lo12(.LJTI1_1)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ori	$a1, $zero, 9
	lu32i.d	$a1, 5
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a1, 15
	ori	$a1, $a1, 4095
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_15 Depth 2
                                        #     Child Loop BB1_19 Depth 2
                                        #     Child Loop BB1_112 Depth 2
                                        #     Child Loop BB1_68 Depth 2
                                        #     Child Loop BB1_50 Depth 2
                                        #     Child Loop BB1_72 Depth 2
                                        #       Child Loop BB1_76 Depth 3
                                        #       Child Loop BB1_95 Depth 3
                                        #       Child Loop BB1_85 Depth 3
                                        #       Child Loop BB1_90 Depth 3
                                        #       Child Loop BB1_106 Depth 3
                                        #       Child Loop BB1_109 Depth 3
                                        #     Child Loop BB1_133 Depth 2
                                        #     Child Loop BB1_137 Depth 2
                                        #     Child Loop BB1_147 Depth 2
                                        #     Child Loop BB1_162 Depth 2
                                        #     Child Loop BB1_169 Depth 2
                                        #     Child Loop BB1_179 Depth 2
                                        #     Child Loop BB1_191 Depth 2
                                        #       Child Loop BB1_198 Depth 3
                                        #       Child Loop BB1_201 Depth 3
                                        #     Child Loop BB1_27 Depth 2
                                        #     Child Loop BB1_34 Depth 2
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 18
	bltu	$a1, $a0, .LBB1_206
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=1
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB1_8:                                #   in Loop: Header=BB1_6 Depth=1
	ld.w	$a0, $s3, 12
	beqz	$a0, .LBB1_40
# %bb.9:                                #   in Loop: Header=BB1_6 Depth=1
	andi	$a0, $s4, 7
	srl.d	$s0, $s0, $a0
	bstrins.d	$s4, $zero, 2, 0
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3920
	b	.LBB1_188
	.p2align	4, , 16
.LBB1_10:                               # %.preheader693
                                        #   in Loop: Header=BB1_6 Depth=1
	addi.w	$a0, $s4, 0
	ori	$a1, $zero, 13
	bgeu	$a1, $a0, .LBB1_15
.LBB1_11:                               # %._crit_edge
                                        #   in Loop: Header=BB1_6 Depth=1
	andi	$a1, $s0, 31
	addi.d	$a0, $a1, 257
	st.w	$a0, $s3, 132
	bstrpick.d	$a0, $s0, 9, 5
	addi.d	$a2, $a0, 1
	st.w	$a2, $s3, 136
	bstrpick.d	$a2, $s0, 13, 10
	addi.w	$a2, $a2, 4
	st.w	$a2, $s3, 128
	srli.d	$s0, $s0, 14
	addi.w	$s4, $s4, -14
	ori	$a3, $zero, 29
	bltu	$a3, $a1, .LBB1_38
# %bb.12:                               # %._crit_edge
                                        #   in Loop: Header=BB1_6 Depth=1
	ori	$a1, $zero, 30
	bgeu	$a0, $a1, .LBB1_38
# %bb.13:                               # %.preheader682.preheader
                                        #   in Loop: Header=BB1_6 Depth=1
	move	$a1, $zero
	st.w	$zero, $s3, 140
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	b	.LBB1_19
	.p2align	4, , 16
.LBB1_14:                               #   in Loop: Header=BB1_15 Depth=2
	ld.d	$a0, $sp, 224
	addi.d	$a1, $a0, 1
	st.d	$a1, $sp, 224
	ld.bu	$a0, $a0, 0
	addi.w	$s6, $s6, -1
	sll.d	$a0, $a0, $s2
	add.d	$s0, $a0, $s0
	addi.d	$a0, $s2, 8
	addi.d	$s4, $s4, 8
	ori	$a1, $zero, 6
	bgeu	$s2, $a1, .LBB1_11
.LBB1_15:                               # %.lr.ph
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s2, $a0
	bnez	$s6, .LBB1_14
# %bb.16:                               #   in Loop: Header=BB1_15 Depth=2
	addi.d	$a1, $sp, 224
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	jirl	$ra, $a2, 0
	move	$s6, $a0
	bnez	$a0, .LBB1_14
	b	.LBB1_203
	.p2align	4, , 16
.LBB1_17:                               #   in Loop: Header=BB1_19 Depth=2
	move	$a3, $a1
.LBB1_18:                               #   in Loop: Header=BB1_19 Depth=2
	bstrpick.d	$a0, $a3, 31, 0
	slli.d	$a1, $a0, 1
	pcalau12i	$a0, %pc_hi20(inflateBack.order)
	addi.d	$a0, $a0, %pc_lo12(inflateBack.order)
	ldx.hu	$a4, $a0, $a1
	andi	$a5, $s0, 7
	addi.w	$a1, $a3, 1
	st.w	$a1, $s3, 140
	slli.d	$a4, $a4, 1
	stx.h	$a5, $s2, $a4
	srli.d	$s0, $s0, 3
	addi.w	$s4, $s4, -3
	bgeu	$a1, $a2, .LBB1_46
.LBB1_19:                               # %.preheader682
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 2
	bltu	$a0, $s4, .LBB1_17
# %bb.20:                               # %.lr.ph848
                                        #   in Loop: Header=BB1_19 Depth=2
	bnez	$s6, .LBB1_23
# %bb.21:                               #   in Loop: Header=BB1_19 Depth=2
	addi.d	$a1, $sp, 224
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB1_203
# %bb.22:                               # %.._crit_edge849_crit_edge
                                        #   in Loop: Header=BB1_19 Depth=2
	move	$s6, $a0
	ld.w	$a1, $s3, 140
	ld.w	$a2, $s3, 128
.LBB1_23:                               # %._crit_edge849
                                        #   in Loop: Header=BB1_19 Depth=2
	ld.d	$a0, $sp, 224
	addi.d	$a3, $a0, 1
	st.d	$a3, $sp, 224
	ld.bu	$a0, $a0, 0
	move	$a3, $a1
	sll.d	$a0, $a0, $s4
	ori	$s4, $s4, 8
	addi.w	$s6, $s6, -1
	add.d	$s0, $a0, $s0
	b	.LBB1_18
	.p2align	4, , 16
.LBB1_24:                               #   in Loop: Header=BB1_6 Depth=1
	addi.w	$a0, $s4, 0
	andi	$a1, $s4, 7
	srl.d	$s0, $s0, $a1
	ori	$a1, $zero, 31
	bltu	$a1, $a0, .LBB1_29
# %bb.25:                               # %.lr.ph1012.preheader
                                        #   in Loop: Header=BB1_6 Depth=1
	andi	$s4, $s4, 24
	move	$a0, $s4
	b	.LBB1_27
	.p2align	4, , 16
.LBB1_26:                               #   in Loop: Header=BB1_27 Depth=2
	ld.d	$a0, $sp, 224
	addi.d	$a1, $a0, 1
	st.d	$a1, $sp, 224
	ld.bu	$a0, $a0, 0
	addi.w	$s6, $s6, -1
	sll.d	$a0, $a0, $s2
	add.d	$s0, $a0, $s0
	addi.d	$a0, $s2, 8
	addi.w	$s4, $s4, 8
	ori	$a1, $zero, 24
	bgeu	$s2, $a1, .LBB1_30
.LBB1_27:                               # %.lr.ph1012
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s2, $a0
	bnez	$s6, .LBB1_26
# %bb.28:                               #   in Loop: Header=BB1_27 Depth=2
	addi.d	$a1, $sp, 224
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	jirl	$ra, $a2, 0
	move	$s6, $a0
	bnez	$a0, .LBB1_26
	b	.LBB1_203
.LBB1_29:                               #   in Loop: Header=BB1_6 Depth=1
	bstrins.d	$s4, $zero, 2, 0
.LBB1_30:                               # %._crit_edge1013
                                        #   in Loop: Header=BB1_6 Depth=1
	bstrpick.d	$s2, $s0, 15, 0
	srli.d	$a0, $s0, 16
	xor	$a0, $a0, $s2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB1_39
# %bb.31:                               #   in Loop: Header=BB1_6 Depth=1
	st.w	$s2, $s3, 92
	beqz	$s2, .LBB1_54
# %bb.32:                               # %.lr.ph1023.preheader
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	b	.LBB1_34
	.p2align	4, , 16
.LBB1_33:                               #   in Loop: Header=BB1_34 Depth=2
	addi.w	$a0, $s6, 0
	sltu	$a1, $s2, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s2, $a1
	or	$a0, $a1, $a0
	sltu	$a2, $a0, $s1
	maskeqz	$a0, $a0, $a2
	ld.d	$a1, $sp, 224
	masknez	$a2, $s1, $a2
	or	$s0, $a0, $a2
	bstrpick.d	$s2, $s0, 31, 0
	move	$a0, $s8
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224
	sub.w	$s6, $s6, $s0
	add.d	$a0, $a0, $s2
	ld.w	$a1, $s3, 92
	st.d	$a0, $sp, 224
	sub.w	$s1, $s1, $s0
	add.d	$s8, $s8, $s2
	sub.w	$s2, $a1, $s0
	st.w	$s2, $s3, 92
	beqz	$s2, .LBB1_54
.LBB1_34:                               # %.lr.ph1023
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bnez	$s6, .LBB1_36
# %bb.35:                               #   in Loop: Header=BB1_34 Depth=2
	addi.d	$a1, $sp, 224
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	jirl	$ra, $a2, 0
	move	$s6, $a0
	beqz	$a0, .LBB1_203
.LBB1_36:                               #   in Loop: Header=BB1_34 Depth=2
	bnez	$s1, .LBB1_33
# %bb.37:                               #   in Loop: Header=BB1_34 Depth=2
	ld.w	$s1, $s3, 60
	ld.d	$s8, $s3, 72
	st.w	$s1, $s3, 64
	move	$a0, $s5
	move	$a1, $s8
	move	$a2, $s1
	jirl	$ra, $s4, 0
	beqz	$a0, .LBB1_33
	b	.LBB1_204
.LBB1_38:                               #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	b	.LBB1_187
.LBB1_39:                               #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	b	.LBB1_187
.LBB1_40:                               # %.preheader683
                                        #   in Loop: Header=BB1_6 Depth=1
	addi.w	$s2, $s4, 0
	ori	$a0, $zero, 2
	bltu	$a0, $s2, .LBB1_44
# %bb.41:                               # %.lr.ph1031
                                        #   in Loop: Header=BB1_6 Depth=1
	bnez	$s6, .LBB1_43
# %bb.42:                               #   in Loop: Header=BB1_6 Depth=1
	addi.d	$a1, $sp, 224
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	jirl	$ra, $a2, 0
	move	$s6, $a0
	beqz	$a0, .LBB1_203
.LBB1_43:                               # %._crit_edge1032
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.d	$a0, $sp, 224
	addi.d	$a1, $a0, 1
	st.d	$a1, $sp, 224
	ld.bu	$a0, $a0, 0
	ori	$s4, $s4, 8
	addi.w	$s6, $s6, -1
	sll.d	$a0, $a0, $s2
	add.d	$s0, $a0, $s0
.LBB1_44:                               #   in Loop: Header=BB1_6 Depth=1
	bstrpick.d	$a0, $s0, 2, 1
	slli.d	$a0, $a0, 2
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ldx.w	$a0, $a2, $a0
	andi	$a1, $s0, 1
	add.d	$a2, $a2, $a0
	st.w	$a1, $s3, 12
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	jr	$a2
.LBB1_45:                               #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %pc_hi20(fixedtables.lenfix)
	addi.d	$a0, $a0, %pc_lo12(fixedtables.lenfix)
	st.d	$a0, $s3, 104
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $s3, 120
	pcalau12i	$a0, %pc_hi20(fixedtables.distfix)
	addi.d	$a0, $a0, %pc_lo12(fixedtables.distfix)
	st.d	$a0, $s3, 112
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3912
	b	.LBB1_62
.LBB1_46:                               # %.preheader692
                                        #   in Loop: Header=BB1_6 Depth=1
	ori	$a2, $zero, 18
	bltu	$a2, $a1, .LBB1_52
# %bb.47:                               # %iter.check
                                        #   in Loop: Header=BB1_6 Depth=1
	addi.d	$a2, $a3, 2
	bstrpick.d	$a4, $a2, 31, 0
	ori	$a2, $zero, 20
	sub.d	$t6, $a2, $a4
	ori	$a2, $zero, 7
	bltu	$a2, $t6, .LBB1_63
.LBB1_48:                               #   in Loop: Header=BB1_6 Depth=1
	ori	$a5, $zero, 19
.LBB1_49:                               # %.lr.ph872.preheader
                                        #   in Loop: Header=BB1_6 Depth=1
	alsl.d	$a0, $a1, $a0, 1
	addi.d	$a1, $a1, 1
	.p2align	4, , 16
.LBB1_50:                               # %.lr.ph872
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a2, $a0, 0
	slli.d	$a2, $a2, 1
	stx.h	$zero, $s2, $a2
	bstrpick.d	$a2, $a1, 31, 0
	addi.d	$a0, $a0, 2
	addi.d	$a1, $a1, 1
	bne	$a2, $a5, .LBB1_50
.LBB1_51:                               # %._crit_edge873
                                        #   in Loop: Header=BB1_6 Depth=1
	st.w	$a5, $s3, 140
.LBB1_52:                               #   in Loop: Header=BB1_6 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $s3, 144
	st.d	$a0, $s3, 104
	ori	$a0, $zero, 7
	st.w	$a0, $s3, 120
	ori	$a2, $zero, 19
	move	$a0, $zero
	move	$a1, $s2
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inflate_table)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_55
# %bb.53:                               #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	b	.LBB1_187
.LBB1_54:                               # %._crit_edge1024
                                        #   in Loop: Header=BB1_6 Depth=1
	move	$s0, $zero
	move	$s4, $zero
	b	.LBB1_150
.LBB1_55:                               #   in Loop: Header=BB1_6 Depth=1
	ld.w	$a2, $s3, 132
	ld.w	$a0, $s3, 136
	sub.w	$a1, $zero, $a2
	st.w	$zero, $s3, 140
	bne	$a0, $a1, .LBB1_70
.LBB1_56:                               # %._crit_edge923
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.w	$a0, $s3, 8
	lu12i.w	$a1, 3
	ori	$s2, $a1, 3921
	beq	$a0, $s2, .LBB1_189
# %bb.57:                               #   in Loop: Header=BB1_6 Depth=1
	ld.hu	$a0, $s3, 664
	beqz	$a0, .LBB1_116
# %bb.58:                               #   in Loop: Header=BB1_6 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $s3, 144
	st.d	$a0, $s3, 104
	ori	$a0, $zero, 9
	st.w	$a0, $s3, 120
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inflate_table)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_117
# %bb.59:                               #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	b	.LBB1_119
.LBB1_60:                               #   in Loop: Header=BB1_6 Depth=1
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3908
	b	.LBB1_62
.LBB1_61:                               #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $s7, 48
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3921
.LBB1_62:                               #   in Loop: Header=BB1_6 Depth=1
	st.w	$a0, $s3, 8
	srli.d	$s0, $s0, 3
	addi.w	$s4, $s4, -3
	ld.w	$a0, $s3, 8
	b	.LBB1_6
.LBB1_63:                               # %vector.scevcheck1478
                                        #   in Loop: Header=BB1_6 Depth=1
	ori	$a2, $zero, 19
	sub.d	$a4, $a2, $a4
	addi.w	$a5, $a4, 0
	addi.d	$a6, $zero, -3
	sub.w	$a3, $a6, $a3
	bltu	$a3, $a5, .LBB1_48
# %bb.64:                               # %vector.scevcheck1478
                                        #   in Loop: Header=BB1_6 Depth=1
	srli.d	$a3, $a4, 32
	ori	$a5, $zero, 19
	bnez	$a3, .LBB1_49
# %bb.65:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB1_6 Depth=1
	ori	$a2, $zero, 16
	bgeu	$t6, $a2, .LBB1_111
# %bb.66:                               #   in Loop: Header=BB1_6 Depth=1
	move	$a2, $zero
.LBB1_67:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB1_6 Depth=1
	move	$a4, $t6
	bstrins.d	$a4, $zero, 2, 0
	add.d	$a5, $a4, $a1
	sub.d	$a6, $a2, $a4
	add.d	$a1, $a2, $a1
	alsl.d	$a1, $a1, $a0, 1
	.p2align	4, , 16
.LBB1_68:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a1, 0
	vpickve2gr.h	$a3, $vr0, 7
	bstrpick.d	$a3, $a3, 15, 0
	bstrpick.d	$a3, $a3, 15, 0
	vpickve2gr.h	$a7, $vr0, 6
	bstrpick.d	$a7, $a7, 15, 0
	bstrpick.d	$a7, $a7, 15, 0
	vpickve2gr.h	$t0, $vr0, 5
	bstrpick.d	$t0, $t0, 15, 0
	bstrpick.d	$t0, $t0, 15, 0
	vpickve2gr.h	$t1, $vr0, 4
	bstrpick.d	$t1, $t1, 15, 0
	bstrpick.d	$t1, $t1, 15, 0
	vpickve2gr.h	$t2, $vr0, 3
	bstrpick.d	$t2, $t2, 15, 0
	bstrpick.d	$t2, $t2, 15, 0
	vpickve2gr.h	$t3, $vr0, 2
	bstrpick.d	$t3, $t3, 15, 0
	bstrpick.d	$t3, $t3, 15, 0
	vpickve2gr.h	$t4, $vr0, 1
	bstrpick.d	$t4, $t4, 15, 0
	bstrpick.d	$t4, $t4, 15, 0
	vpickve2gr.h	$t5, $vr0, 0
	bstrpick.d	$t5, $t5, 15, 0
	bstrpick.d	$t5, $t5, 15, 0
	slli.d	$t5, $t5, 1
	slli.d	$t4, $t4, 1
	slli.d	$t3, $t3, 1
	slli.d	$t2, $t2, 1
	slli.d	$t1, $t1, 1
	slli.d	$t0, $t0, 1
	slli.d	$a7, $a7, 1
	slli.d	$a3, $a3, 1
	stx.h	$zero, $s2, $t5
	stx.h	$zero, $s2, $t4
	stx.h	$zero, $s2, $t3
	stx.h	$zero, $s2, $t2
	stx.h	$zero, $s2, $t1
	stx.h	$zero, $s2, $t0
	stx.h	$zero, $s2, $a7
	stx.h	$zero, $s2, $a3
	addi.d	$a6, $a6, 8
	addi.d	$a1, $a1, 16
	bnez	$a6, .LBB1_68
# %bb.69:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB1_6 Depth=1
	move	$a1, $a5
	ori	$a5, $zero, 19
	bne	$t6, $a4, .LBB1_49
	b	.LBB1_51
.LBB1_70:                               # %.preheader681.preheader
                                        #   in Loop: Header=BB1_6 Depth=1
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	b	.LBB1_72
.LBB1_71:                               #   in Loop: Header=BB1_72 Depth=2
	ld.wu	$a1, $s3, 140
	srl.d	$s0, $s0, $s2
	sub.w	$s4, $s4, $s2
	addi.w	$a4, $a1, 1
	ld.w	$a2, $s3, 132
	ld.w	$a3, $s3, 136
	st.w	$a4, $s3, 140
	slli.d	$a1, $a1, 1
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	stx.h	$a0, $a5, $a1
	add.w	$a1, $a3, $a2
	bgeu	$a4, $a1, .LBB1_56
.LBB1_72:                               # %.preheader681
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_76 Depth 3
                                        #       Child Loop BB1_95 Depth 3
                                        #       Child Loop BB1_85 Depth 3
                                        #       Child Loop BB1_90 Depth 3
                                        #       Child Loop BB1_106 Depth 3
                                        #       Child Loop BB1_109 Depth 3
	ld.wu	$a0, $s3, 120
	ld.d	$a1, $s3, 104
	addi.d	$s5, $zero, -1
	sll.w	$a2, $s5, $a0
	andn	$a2, $s0, $a2
	addi.w	$a2, $a2, 0
	alsl.d	$a2, $a2, $a1, 2
	ld.bu	$s2, $a2, 1
	bgeu	$s4, $s2, .LBB1_79
# %bb.73:                               # %.lr.ph885.preheader
                                        #   in Loop: Header=BB1_72 Depth=2
	move	$s7, $s4
	b	.LBB1_76
	.p2align	4, , 16
.LBB1_74:                               # %._crit_edge1242
                                        #   in Loop: Header=BB1_76 Depth=3
	move	$s6, $a0
	ld.d	$a1, $s3, 104
	ld.w	$a0, $s3, 120
.LBB1_75:                               #   in Loop: Header=BB1_76 Depth=3
	ld.d	$a2, $sp, 224
	addi.d	$a3, $a2, 1
	st.d	$a3, $sp, 224
	ld.bu	$a2, $a2, 0
	sll.d	$a2, $a2, $s7
	add.d	$s0, $a2, $s0
	sll.w	$a2, $s5, $a0
	andn	$a2, $s0, $a2
	addi.w	$a2, $a2, 0
	alsl.d	$a2, $a2, $a1, 2
	ld.bu	$s2, $a2, 1
	addi.w	$s6, $s6, -1
	addi.d	$s7, $s7, 8
	addi.w	$s4, $s4, 8
	bgeu	$s7, $s2, .LBB1_78
.LBB1_76:                               # %.lr.ph885
                                        #   Parent Loop BB1_6 Depth=1
                                        #     Parent Loop BB1_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bnez	$s6, .LBB1_75
# %bb.77:                               #   in Loop: Header=BB1_76 Depth=3
	addi.d	$a1, $sp, 224
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	jirl	$ra, $a2, 0
	bnez	$a0, .LBB1_74
	b	.LBB1_208
.LBB1_78:                               # %._crit_edge886.loopexit
                                        #   in Loop: Header=BB1_72 Depth=2
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
.LBB1_79:                               # %._crit_edge886
                                        #   in Loop: Header=BB1_72 Depth=2
	ld.hu	$a0, $a2, 2
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ori	$a1, $zero, 15
	bgeu	$a1, $a0, .LBB1_71
# %bb.80:                               #   in Loop: Header=BB1_72 Depth=2
	ori	$a1, $zero, 16
	beq	$a0, $a1, .LBB1_87
# %bb.81:                               #   in Loop: Header=BB1_72 Depth=2
	ori	$a1, $zero, 17
	bne	$a0, $a1, .LBB1_92
# %bb.82:                               # %.preheader680
                                        #   in Loop: Header=BB1_72 Depth=2
	addi.d	$s5, $s2, 3
	bgeu	$s4, $s5, .LBB1_97
# %bb.83:                               # %.lr.ph897.preheader
                                        #   in Loop: Header=BB1_72 Depth=2
	move	$s7, $s4
	b	.LBB1_85
	.p2align	4, , 16
.LBB1_84:                               #   in Loop: Header=BB1_85 Depth=3
	ld.d	$a0, $sp, 224
	addi.d	$a1, $a0, 1
	st.d	$a1, $sp, 224
	ld.bu	$a0, $a0, 0
	addi.w	$s6, $s6, -1
	sll.d	$a0, $a0, $s7
	add.d	$s0, $a0, $s0
	addi.d	$s7, $s7, 8
	addi.d	$s4, $s4, 8
	bgeu	$s7, $s5, .LBB1_97
.LBB1_85:                               # %.lr.ph897
                                        #   Parent Loop BB1_6 Depth=1
                                        #     Parent Loop BB1_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bnez	$s6, .LBB1_84
# %bb.86:                               #   in Loop: Header=BB1_85 Depth=3
	addi.d	$a1, $sp, 224
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	jirl	$ra, $a2, 0
	move	$s6, $a0
	bnez	$a0, .LBB1_84
	b	.LBB1_208
.LBB1_87:                               # %.preheader679
                                        #   in Loop: Header=BB1_72 Depth=2
	addi.d	$s5, $s2, 2
	bgeu	$s4, $s5, .LBB1_98
# %bb.88:                               # %.lr.ph905.preheader
                                        #   in Loop: Header=BB1_72 Depth=2
	move	$s7, $s4
	b	.LBB1_90
	.p2align	4, , 16
.LBB1_89:                               #   in Loop: Header=BB1_90 Depth=3
	ld.d	$a0, $sp, 224
	addi.d	$a1, $a0, 1
	st.d	$a1, $sp, 224
	ld.bu	$a0, $a0, 0
	addi.w	$s6, $s6, -1
	sll.d	$a0, $a0, $s7
	add.d	$s0, $a0, $s0
	addi.d	$s7, $s7, 8
	addi.d	$s4, $s4, 8
	bgeu	$s7, $s5, .LBB1_98
.LBB1_90:                               # %.lr.ph905
                                        #   Parent Loop BB1_6 Depth=1
                                        #     Parent Loop BB1_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bnez	$s6, .LBB1_89
# %bb.91:                               #   in Loop: Header=BB1_90 Depth=3
	addi.d	$a1, $sp, 224
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	jirl	$ra, $a2, 0
	move	$s6, $a0
	bnez	$a0, .LBB1_89
	b	.LBB1_208
.LBB1_92:                               # %.preheader678
                                        #   in Loop: Header=BB1_72 Depth=2
	addi.d	$s5, $s2, 7
	bgeu	$s4, $s5, .LBB1_100
# %bb.93:                               # %.lr.ph913.preheader
                                        #   in Loop: Header=BB1_72 Depth=2
	move	$s7, $s4
	b	.LBB1_95
	.p2align	4, , 16
.LBB1_94:                               #   in Loop: Header=BB1_95 Depth=3
	ld.d	$a0, $sp, 224
	addi.d	$a1, $a0, 1
	st.d	$a1, $sp, 224
	ld.bu	$a0, $a0, 0
	addi.w	$s6, $s6, -1
	sll.d	$a0, $a0, $s7
	add.d	$s0, $a0, $s0
	addi.d	$s7, $s7, 8
	addi.d	$s4, $s4, 8
	bgeu	$s7, $s5, .LBB1_100
.LBB1_95:                               # %.lr.ph913
                                        #   Parent Loop BB1_6 Depth=1
                                        #     Parent Loop BB1_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bnez	$s6, .LBB1_94
# %bb.96:                               #   in Loop: Header=BB1_95 Depth=3
	addi.d	$a1, $sp, 224
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	jirl	$ra, $a2, 0
	move	$s6, $a0
	bnez	$a0, .LBB1_94
	b	.LBB1_208
.LBB1_97:                               # %._crit_edge898
                                        #   in Loop: Header=BB1_72 Depth=2
	move	$a0, $zero
	srl.d	$a1, $s0, $s2
	andi	$a2, $a1, 7
	addi.d	$a3, $a2, 3
	srli.d	$s0, $a1, 3
	sub.d	$a1, $s4, $s2
	addi.w	$s4, $a1, -3
	b	.LBB1_101
.LBB1_98:                               # %._crit_edge906
                                        #   in Loop: Header=BB1_72 Depth=2
	ld.w	$a0, $s3, 140
	srl.d	$s0, $s0, $s2
	sub.w	$s4, $s4, $s2
	beqz	$a0, .LBB1_202
# %bb.99:                               #   in Loop: Header=BB1_72 Depth=2
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 1
	ld.d	$t3, $sp, 168                   # 8-byte Folded Reload
	ldx.hu	$a0, $t3, $a0
	andi	$a1, $s0, 3
	addi.d	$a3, $a1, 3
	srli.d	$s0, $s0, 2
	addi.w	$s4, $s4, -2
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	b	.LBB1_102
.LBB1_100:                              # %._crit_edge914
                                        #   in Loop: Header=BB1_72 Depth=2
	move	$a0, $zero
	srl.d	$a1, $s0, $s2
	andi	$a2, $a1, 127
	addi.d	$a3, $a2, 11
	srli.d	$s0, $a1, 7
	sub.d	$a1, $s4, $s2
	addi.w	$s4, $a1, -7
.LBB1_101:                              #   in Loop: Header=BB1_72 Depth=2
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 168                   # 8-byte Folded Reload
.LBB1_102:                              #   in Loop: Header=BB1_72 Depth=2
	ld.w	$a4, $s3, 140
	ld.w	$a2, $s3, 132
	ld.w	$a1, $s3, 136
	add.w	$a5, $a4, $a3
	add.w	$a1, $a1, $a2
	bltu	$a1, $a5, .LBB1_120
# %bb.103:                              # %.preheader.preheader
                                        #   in Loop: Header=BB1_72 Depth=2
	ori	$a5, $zero, 32
	bltu	$a3, $a5, .LBB1_108
# %bb.104:                              # %.preheader.preheader
                                        #   in Loop: Header=BB1_72 Depth=2
	sub.d	$a5, $zero, $a3
	bltu	$a5, $a4, .LBB1_108
# %bb.105:                              # %vector.ph1468
                                        #   in Loop: Header=BB1_72 Depth=2
	andi	$a7, $a3, 224
	andi	$a5, $a3, 31
	add.w	$a6, $a4, $a7
	xvreplgr2vr.h	$xr0, $a0
	move	$t0, $a7
	.p2align	4, , 16
.LBB1_106:                              # %vector.body1471
                                        #   Parent Loop BB1_6 Depth=1
                                        #     Parent Loop BB1_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$t1, $a4, 31, 0
	alsl.d	$t2, $t1, $t3, 1
	slli.d	$t1, $t1, 1
	xvstx	$xr0, $t3, $t1
	xvst	$xr0, $t2, 32
	addi.w	$t0, $t0, -32
	addi.w	$a4, $a4, 32
	bnez	$t0, .LBB1_106
# %bb.107:                              # %middle.block1474
                                        #   in Loop: Header=BB1_72 Depth=2
	move	$a4, $a6
	bne	$a3, $a7, .LBB1_109
	b	.LBB1_110
.LBB1_108:                              #   in Loop: Header=BB1_72 Depth=2
	move	$a5, $a3
	move	$a6, $a4
	.p2align	4, , 16
.LBB1_109:                              # %.preheader
                                        #   Parent Loop BB1_6 Depth=1
                                        #     Parent Loop BB1_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$a5, $a5, -1
	addi.w	$a4, $a6, 1
	bstrpick.d	$a3, $a6, 31, 0
	slli.d	$a3, $a3, 1
	stx.h	$a0, $t3, $a3
	move	$a6, $a4
	bnez	$a5, .LBB1_109
.LBB1_110:                              # %.loopexit
                                        #   in Loop: Header=BB1_72 Depth=2
	st.w	$a4, $s3, 140
	bltu	$a4, $a1, .LBB1_72
	b	.LBB1_56
.LBB1_111:                              # %vector.ph1485
                                        #   in Loop: Header=BB1_6 Depth=1
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	st.d	$t6, $sp, 32                    # 8-byte Folded Spill
	move	$a5, $t6
	bstrins.d	$a5, $zero, 3, 0
	alsl.d	$a4, $a1, $a0, 1
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_112:                              # %vector.body1488
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a4, 0
	xvst	$xr0, $sp, 192
	vld	$vr0, $sp, 208
	vpickve2gr.h	$a6, $vr0, 7
	bstrpick.d	$a6, $a6, 15, 0
	bstrpick.d	$a6, $a6, 15, 0
	vpickve2gr.h	$a7, $vr0, 6
	bstrpick.d	$a7, $a7, 15, 0
	bstrpick.d	$a7, $a7, 15, 0
	vpickve2gr.h	$t0, $vr0, 5
	bstrpick.d	$t0, $t0, 15, 0
	bstrpick.d	$t0, $t0, 15, 0
	vpickve2gr.h	$t1, $vr0, 4
	bstrpick.d	$t1, $t1, 15, 0
	bstrpick.d	$t1, $t1, 15, 0
	vpickve2gr.h	$t2, $vr0, 3
	bstrpick.d	$t2, $t2, 15, 0
	bstrpick.d	$t2, $t2, 15, 0
	vpickve2gr.h	$t3, $vr0, 2
	bstrpick.d	$t3, $t3, 15, 0
	bstrpick.d	$t3, $t3, 15, 0
	vpickve2gr.h	$t4, $vr0, 1
	bstrpick.d	$t4, $t4, 15, 0
	vpickve2gr.h	$t5, $vr0, 0
	vld	$vr0, $sp, 192
	bstrpick.d	$t4, $t4, 15, 0
	bstrpick.d	$t5, $t5, 15, 0
	bstrpick.d	$t5, $t5, 15, 0
	vpickve2gr.h	$t6, $vr0, 7
	bstrpick.d	$t6, $t6, 15, 0
	bstrpick.d	$t6, $t6, 15, 0
	vpickve2gr.h	$t7, $vr0, 6
	bstrpick.d	$t7, $t7, 15, 0
	bstrpick.d	$t7, $t7, 15, 0
	vpickve2gr.h	$t8, $vr0, 5
	bstrpick.d	$t8, $t8, 15, 0
	bstrpick.d	$t8, $t8, 15, 0
	vpickve2gr.h	$s2, $vr0, 4
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	vpickve2gr.h	$s5, $vr0, 3
	bstrpick.d	$s5, $s5, 15, 0
	bstrpick.d	$s5, $s5, 15, 0
	vpickve2gr.h	$s7, $vr0, 2
	bstrpick.d	$s7, $s7, 15, 0
	bstrpick.d	$s7, $s7, 15, 0
	vpickve2gr.h	$ra, $vr0, 1
	bstrpick.d	$ra, $ra, 15, 0
	bstrpick.d	$ra, $ra, 15, 0
	vpickve2gr.h	$a3, $vr0, 0
	bstrpick.d	$a3, $a3, 15, 0
	bstrpick.d	$a3, $a3, 15, 0
	slli.d	$a3, $a3, 1
	slli.d	$ra, $ra, 1
	slli.d	$s7, $s7, 1
	slli.d	$s5, $s5, 1
	slli.d	$s2, $s2, 1
	slli.d	$t8, $t8, 1
	slli.d	$t7, $t7, 1
	slli.d	$t6, $t6, 1
	slli.d	$t5, $t5, 1
	slli.d	$t4, $t4, 1
	slli.d	$t3, $t3, 1
	slli.d	$t2, $t2, 1
	slli.d	$t1, $t1, 1
	slli.d	$t0, $t0, 1
	slli.d	$a7, $a7, 1
	slli.d	$a6, $a6, 1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	stx.h	$zero, $a2, $a3
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	stx.h	$zero, $a2, $ra
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	stx.h	$zero, $a2, $s7
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	stx.h	$zero, $a2, $s5
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	stx.h	$zero, $a2, $s2
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	stx.h	$zero, $s2, $t8
	stx.h	$zero, $s2, $t7
	stx.h	$zero, $s2, $t6
	stx.h	$zero, $s2, $t5
	stx.h	$zero, $s2, $t4
	stx.h	$zero, $s2, $t3
	stx.h	$zero, $s2, $t2
	stx.h	$zero, $s2, $t1
	stx.h	$zero, $s2, $t0
	stx.h	$zero, $s2, $a7
	stx.h	$zero, $s2, $a6
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB1_112
# %bb.113:                              # %middle.block1492
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ori	$a5, $zero, 19
	ld.d	$t6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	beq	$t6, $a2, .LBB1_51
# %bb.114:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB1_6 Depth=1
	andi	$a3, $t6, 8
	bnez	$a3, .LBB1_67
# %bb.115:                              #   in Loop: Header=BB1_6 Depth=1
	add.d	$a1, $a2, $a1
	b	.LBB1_48
.LBB1_116:                              #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	b	.LBB1_119
.LBB1_117:                              #   in Loop: Header=BB1_6 Depth=1
	ld.d	$a0, $s3, 144
	ld.wu	$a1, $s3, 132
	ld.w	$a2, $s3, 136
	st.d	$a0, $s3, 112
	ori	$a0, $zero, 6
	st.w	$a0, $s3, 124
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a0, 1
	ori	$a0, $zero, 2
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(inflate_table)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_121
# %bb.118:                              #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
.LBB1_119:                              # %.thread
                                        #   in Loop: Header=BB1_6 Depth=1
	st.d	$a0, $s7, 48
	st.w	$s2, $s3, 8
	ld.w	$a0, $s3, 8
	b	.LBB1_6
.LBB1_120:                              #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	b	.LBB1_187
.LBB1_121:                              #   in Loop: Header=BB1_6 Depth=1
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3912
	st.w	$a0, $s3, 8
	.p2align	4, , 16
.LBB1_122:                              #   in Loop: Header=BB1_6 Depth=1
	ori	$a0, $zero, 6
	bltu	$s6, $a0, .LBB1_127
# %bb.123:                              #   in Loop: Header=BB1_6 Depth=1
	ori	$a0, $zero, 257
	bgeu	$a0, $s1, .LBB1_127
# %bb.124:                              #   in Loop: Header=BB1_6 Depth=1
	st.d	$s8, $s7, 24
	ld.d	$a0, $sp, 224
	st.w	$s1, $s7, 32
	ld.w	$a2, $s3, 64
	ld.w	$a1, $s3, 60
	st.d	$a0, $s7, 0
	st.w	$s6, $s7, 8
	st.d	$s0, $s3, 80
	st.w	$s4, $s3, 88
	bgeu	$a2, $a1, .LBB1_126
# %bb.125:                              #   in Loop: Header=BB1_6 Depth=1
	sub.d	$a0, $a1, $s1
	st.w	$a0, $s3, 64
.LBB1_126:                              #   in Loop: Header=BB1_6 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(inflate_fast)
	jirl	$ra, $ra, 0
	ld.d	$s8, $s7, 24
	ld.w	$s1, $s7, 32
	ld.d	$a0, $s7, 0
	ld.w	$s6, $s7, 8
	ld.d	$s0, $s3, 80
	ld.w	$s4, $s3, 88
	st.d	$a0, $sp, 224
	ld.w	$a0, $s3, 8
	b	.LBB1_6
.LBB1_127:                              # %.preheader691
                                        #   in Loop: Header=BB1_6 Depth=1
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	ld.wu	$a1, $s3, 120
	ld.d	$a0, $s3, 104
	addi.d	$a5, $zero, -1
	sll.w	$a2, $a5, $a1
	andn	$a2, $s0, $a2
	addi.w	$a2, $a2, 0
	alsl.d	$a2, $a2, $a0, 2
	ld.bu	$s5, $a2, 1
	addi.w	$s2, $s4, 0
	bltu	$s2, $s5, .LBB1_133
.LBB1_128:                              # %._crit_edge937
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.bu	$a3, $a2, 0
	ld.hu	$a6, $a2, 2
	addi.d	$a1, $a3, -1
	ori	$a2, $zero, 14
	bltu	$a2, $a1, .LBB1_139
# %bb.129:                              # %.preheader690
                                        #   in Loop: Header=BB1_6 Depth=1
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	add.d	$a1, $s5, $a3
	sll.w	$a3, $a5, $a1
	andn	$a1, $s0, $a3
	srl.w	$a1, $a1, $s5
	add.d	$a1, $a1, $a6
	bstrpick.d	$a1, $a1, 31, 0
	alsl.d	$a2, $a1, $a0, 2
	ld.bu	$a1, $a2, 1
	add.d	$a4, $s5, $a1
	addi.w	$s7, $s4, 0
	bgeu	$s7, $a4, .LBB1_140
# %bb.130:                              # %.lr.ph951.preheader
                                        #   in Loop: Header=BB1_6 Depth=1
	nor	$a4, $a3, $zero
	st.d	$s8, $sp, 64                    # 8-byte Folded Spill
	b	.LBB1_137
	.p2align	4, , 16
.LBB1_131:                              # %._crit_edge1247
                                        #   in Loop: Header=BB1_133 Depth=2
	move	$s6, $a0
	ld.d	$a0, $s3, 104
	ld.w	$a1, $s3, 120
	addi.d	$a5, $zero, -1
.LBB1_132:                              #   in Loop: Header=BB1_133 Depth=2
	ld.d	$a2, $sp, 224
	addi.d	$a3, $a2, 1
	st.d	$a3, $sp, 224
	ld.bu	$a2, $a2, 0
	sll.d	$a2, $a2, $s2
	add.d	$s0, $a2, $s0
	sll.w	$a2, $a5, $a1
	andn	$a2, $s0, $a2
	addi.w	$a2, $a2, 0
	alsl.d	$a2, $a2, $a0, 2
	ld.bu	$s5, $a2, 1
	addi.w	$s6, $s6, -1
	addi.d	$s2, $s2, 8
	addi.d	$s4, $s4, 8
	bgeu	$s2, $s5, .LBB1_128
.LBB1_133:                              # %.lr.ph936
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bnez	$s6, .LBB1_132
# %bb.134:                              #   in Loop: Header=BB1_133 Depth=2
	addi.d	$a1, $sp, 224
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	jirl	$ra, $a2, 0
	bnez	$a0, .LBB1_131
	b	.LBB1_203
	.p2align	4, , 16
.LBB1_135:                              # %._crit_edge1250
                                        #   in Loop: Header=BB1_137 Depth=2
	move	$s6, $a0
	ld.d	$a0, $s3, 104
	addi.d	$a5, $zero, -1
	move	$a6, $s1
	move	$s1, $s2
	move	$a4, $s8
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
.LBB1_136:                              #   in Loop: Header=BB1_137 Depth=2
	ld.d	$a1, $sp, 224
	addi.d	$a2, $a1, 1
	st.d	$a2, $sp, 224
	ld.bu	$a1, $a1, 0
	sll.d	$a1, $a1, $s7
	add.d	$s0, $a1, $s0
	and	$a1, $s0, $a4
	srl.w	$a1, $a1, $s5
	add.d	$a1, $a1, $a6
	bstrpick.d	$a1, $a1, 31, 0
	alsl.d	$a2, $a1, $a0, 2
	ld.bu	$a1, $a2, 1
	addi.w	$s6, $s6, -1
	addi.d	$s7, $s7, 8
	add.d	$a3, $s5, $a1
	addi.d	$s4, $s4, 8
	bgeu	$s7, $a3, .LBB1_140
.LBB1_137:                              # %.lr.ph951
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bnez	$s6, .LBB1_136
# %bb.138:                              #   in Loop: Header=BB1_137 Depth=2
	move	$s8, $a4
	move	$s2, $s1
	move	$s1, $a6
	addi.d	$a1, $sp, 224
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	jirl	$ra, $a2, 0
	bnez	$a0, .LBB1_135
	b	.LBB1_208
.LBB1_139:                              #   in Loop: Header=BB1_6 Depth=1
	move	$a1, $s5
	b	.LBB1_141
.LBB1_140:                              # %._crit_edge952
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.hu	$a6, $a2, 2
	ld.bu	$a3, $a2, 0
	srl.d	$s0, $s0, $s5
	sub.d	$s4, $s4, $s5
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
.LBB1_141:                              #   in Loop: Header=BB1_6 Depth=1
	srl.d	$s0, $s0, $a1
	sub.w	$s4, $s4, $a1
	st.w	$a6, $s3, 92
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	beqz	$a3, .LBB1_151
# %bb.142:                              #   in Loop: Header=BB1_6 Depth=1
	andi	$a0, $a3, 32
	bnez	$a0, .LBB1_150
# %bb.143:                              #   in Loop: Header=BB1_6 Depth=1
	andi	$a0, $a3, 64
	bnez	$a0, .LBB1_155
# %bb.144:                              #   in Loop: Header=BB1_6 Depth=1
	andi	$a0, $a3, 15
	st.w	$a0, $s3, 100
	beqz	$a0, .LBB1_158
# %bb.145:                              # %.preheader689
                                        #   in Loop: Header=BB1_6 Depth=1
	bltu	$s4, $a0, .LBB1_147
	b	.LBB1_157
	.p2align	4, , 16
.LBB1_146:                              #   in Loop: Header=BB1_147 Depth=2
	ld.d	$a1, $sp, 224
	addi.d	$a2, $a1, 1
	st.d	$a2, $sp, 224
	ld.bu	$a1, $a1, 0
	addi.w	$s6, $s6, -1
	sll.d	$a1, $a1, $s4
	addi.w	$s4, $s4, 8
	add.d	$s0, $a1, $s0
	bgeu	$s4, $a0, .LBB1_156
.LBB1_147:                              # %.lr.ph961
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bnez	$s6, .LBB1_146
# %bb.148:                              #   in Loop: Header=BB1_147 Depth=2
	addi.d	$a1, $sp, 224
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB1_203
# %bb.149:                              # %._crit_edge1252
                                        #   in Loop: Header=BB1_147 Depth=2
	move	$s6, $a0
	ld.w	$a0, $s3, 100
	addi.d	$a5, $zero, -1
	b	.LBB1_146
.LBB1_150:                              #   in Loop: Header=BB1_6 Depth=1
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3903
	b	.LBB1_188
.LBB1_151:                              #   in Loop: Header=BB1_6 Depth=1
	bnez	$s1, .LBB1_154
# %bb.152:                              #   in Loop: Header=BB1_6 Depth=1
	ld.w	$s1, $s3, 60
	ld.d	$s8, $s3, 72
	st.w	$s1, $s3, 64
	move	$a0, $s5
	move	$a1, $s8
	move	$a2, $s1
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	bnez	$a0, .LBB1_204
# %bb.153:                              # %._crit_edge1266
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.w	$a6, $s3, 92
.LBB1_154:                              #   in Loop: Header=BB1_6 Depth=1
	st.b	$a6, $s8, 0
	addi.d	$s8, $s8, 1
	addi.w	$s1, $s1, -1
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3912
	b	.LBB1_188
.LBB1_155:                              #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	b	.LBB1_187
.LBB1_156:                              # %._crit_edge962.loopexit
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.w	$a6, $s3, 92
.LBB1_157:                              # %._crit_edge962
                                        #   in Loop: Header=BB1_6 Depth=1
	sll.w	$a1, $a5, $a0
	andn	$a1, $s0, $a1
	add.d	$a1, $a6, $a1
	st.w	$a1, $s3, 92
	srl.d	$s0, $s0, $a0
	sub.w	$s4, $s4, $a0
.LBB1_158:                              #   in Loop: Header=BB1_6 Depth=1
	ld.wu	$a1, $s3, 124
	ld.d	$a0, $s3, 112
	sll.w	$a2, $a5, $a1
	andn	$a2, $s0, $a2
	addi.w	$a2, $a2, 0
	alsl.d	$a2, $a2, $a0, 2
	ld.bu	$s5, $a2, 1
	bgeu	$s4, $s5, .LBB1_164
# %bb.159:                              # %.lr.ph977.preheader
                                        #   in Loop: Header=BB1_6 Depth=1
	move	$s2, $s4
	b	.LBB1_162
.LBB1_160:                              # %._crit_edge1255
                                        #   in Loop: Header=BB1_162 Depth=2
	move	$s6, $a0
	ld.d	$a0, $s3, 112
	ld.w	$a1, $s3, 124
	addi.d	$a5, $zero, -1
.LBB1_161:                              #   in Loop: Header=BB1_162 Depth=2
	ld.d	$a2, $sp, 224
	addi.d	$a3, $a2, 1
	st.d	$a3, $sp, 224
	ld.bu	$a2, $a2, 0
	sll.d	$a2, $a2, $s4
	add.d	$s0, $a2, $s0
	sll.w	$a2, $a5, $a1
	andn	$a2, $s0, $a2
	addi.w	$a2, $a2, 0
	alsl.d	$a2, $a2, $a0, 2
	ld.bu	$s5, $a2, 1
	addi.w	$s6, $s6, -1
	addi.d	$s4, $s4, 8
	addi.w	$s2, $s2, 8
	bgeu	$s4, $s5, .LBB1_165
.LBB1_162:                              # %.lr.ph977
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bnez	$s6, .LBB1_161
# %bb.163:                              #   in Loop: Header=BB1_162 Depth=2
	addi.d	$a1, $sp, 224
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	jirl	$ra, $a2, 0
	bnez	$a0, .LBB1_160
	b	.LBB1_203
.LBB1_164:                              #   in Loop: Header=BB1_6 Depth=1
	move	$s2, $s4
.LBB1_165:                              # %._crit_edge978
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.bu	$a3, $a2, 0
	ld.hu	$a6, $a2, 2
	ori	$a1, $zero, 15
	bltu	$a1, $a3, .LBB1_172
# %bb.166:                              # %.preheader688
                                        #   in Loop: Header=BB1_6 Depth=1
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	add.d	$a1, $s5, $a3
	sll.w	$a3, $a5, $a1
	andn	$a1, $s0, $a3
	srl.w	$a1, $a1, $s5
	add.d	$a1, $a1, $a6
	bstrpick.d	$a1, $a1, 31, 0
	alsl.d	$a2, $a1, $a0, 2
	ld.bu	$a1, $a2, 1
	add.d	$a4, $s5, $a1
	bgeu	$s2, $a4, .LBB1_173
# %bb.167:                              # %.lr.ph992.preheader
                                        #   in Loop: Header=BB1_6 Depth=1
	nor	$a4, $a3, $zero
	move	$s4, $s2
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	b	.LBB1_169
.LBB1_168:                              #   in Loop: Header=BB1_169 Depth=2
	ld.d	$a1, $sp, 224
	addi.d	$a2, $a1, 1
	st.d	$a2, $sp, 224
	ld.bu	$a1, $a1, 0
	sll.d	$a1, $a1, $s2
	add.d	$s0, $a1, $s0
	and	$a1, $s0, $a4
	srl.w	$a1, $a1, $s5
	add.d	$a1, $a1, $a6
	bstrpick.d	$a1, $a1, 31, 0
	alsl.d	$a2, $a1, $a0, 2
	ld.bu	$a1, $a2, 1
	addi.w	$s6, $s6, -1
	addi.d	$s2, $s2, 8
	add.d	$a3, $s5, $a1
	addi.d	$s4, $s4, 8
	bgeu	$s2, $a3, .LBB1_174
.LBB1_169:                              # %.lr.ph992
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bnez	$s6, .LBB1_168
# %bb.170:                              #   in Loop: Header=BB1_169 Depth=2
	move	$s7, $a6
	addi.d	$a1, $sp, 224
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB1_208
# %bb.171:                              # %._crit_edge1258
                                        #   in Loop: Header=BB1_169 Depth=2
	move	$s6, $a0
	ld.d	$a0, $s3, 112
	addi.d	$a5, $zero, -1
	move	$a6, $s7
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	b	.LBB1_168
.LBB1_172:                              #   in Loop: Header=BB1_6 Depth=1
	move	$a1, $s5
	b	.LBB1_175
.LBB1_173:                              #   in Loop: Header=BB1_6 Depth=1
	move	$s4, $s2
.LBB1_174:                              # %._crit_edge993
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.hu	$a6, $a2, 2
	ld.bu	$a3, $a2, 0
	srl.d	$s0, $s0, $s5
	sub.d	$s2, $s4, $s5
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
.LBB1_175:                              #   in Loop: Header=BB1_6 Depth=1
	srl.d	$s0, $s0, $a1
	andi	$a0, $a3, 64
	sub.w	$s4, $s2, $a1
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	bnez	$a0, .LBB1_182
# %bb.176:                              #   in Loop: Header=BB1_6 Depth=1
	st.w	$a6, $s3, 96
	andi	$a0, $a3, 15
	st.w	$a0, $s3, 100
	beqz	$a0, .LBB1_185
# %bb.177:                              # %.preheader687
                                        #   in Loop: Header=BB1_6 Depth=1
	bltu	$s4, $a0, .LBB1_179
	b	.LBB1_184
.LBB1_178:                              #   in Loop: Header=BB1_179 Depth=2
	ld.d	$a1, $sp, 224
	addi.d	$a2, $a1, 1
	st.d	$a2, $sp, 224
	ld.bu	$a1, $a1, 0
	addi.w	$s6, $s6, -1
	sll.d	$a1, $a1, $s4
	addi.w	$s4, $s4, 8
	add.d	$s0, $a1, $s0
	bgeu	$s4, $a0, .LBB1_183
.LBB1_179:                              # %.lr.ph1002
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bnez	$s6, .LBB1_178
# %bb.180:                              #   in Loop: Header=BB1_179 Depth=2
	addi.d	$a1, $sp, 224
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB1_203
# %bb.181:                              # %._crit_edge1260
                                        #   in Loop: Header=BB1_179 Depth=2
	move	$s6, $a0
	ld.w	$a0, $s3, 100
	addi.d	$a5, $zero, -1
	b	.LBB1_178
.LBB1_182:                              #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	b	.LBB1_187
.LBB1_183:                              # %._crit_edge1003.loopexit
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.w	$a6, $s3, 96
.LBB1_184:                              # %._crit_edge1003
                                        #   in Loop: Header=BB1_6 Depth=1
	sll.w	$a1, $a5, $a0
	andn	$a1, $s0, $a1
	add.w	$a6, $a6, $a1
	st.w	$a6, $s3, 96
	srl.d	$s0, $s0, $a0
	sub.w	$s4, $s4, $a0
.LBB1_185:                              #   in Loop: Header=BB1_6 Depth=1
	ld.w	$a0, $s3, 60
	ld.w	$a1, $s3, 64
	sltu	$a1, $a1, $a0
	maskeqz	$a1, $s1, $a1
	sub.w	$a0, $a0, $a1
	bgeu	$a0, $a6, .LBB1_191
# %bb.186:                              #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	.p2align	4, , 16
.LBB1_187:                              # %.thread
                                        #   in Loop: Header=BB1_6 Depth=1
	st.d	$a0, $s7, 48
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3921
.LBB1_188:                              # %.thread
                                        #   in Loop: Header=BB1_6 Depth=1
	st.w	$a0, $s3, 8
.LBB1_189:                              # %.thread
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.w	$a0, $s3, 8
	b	.LBB1_6
.LBB1_190:                              # %.loopexit1502
                                        #   in Loop: Header=BB1_191 Depth=2
	ld.w	$a1, $s3, 92
	sub.w	$s1, $s2, $a0
	beqz	$a1, .LBB1_189
.LBB1_191:                              # %.preheader685
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_198 Depth 3
                                        #       Child Loop BB1_201 Depth 3
	ld.w	$s2, $s3, 60
	beqz	$s1, .LBB1_193
# %bb.192:                              #   in Loop: Header=BB1_191 Depth=2
	move	$a0, $s2
	move	$s2, $s1
	b	.LBB1_195
.LBB1_193:                              #   in Loop: Header=BB1_191 Depth=2
	ld.d	$s8, $s3, 72
	st.w	$s2, $s3, 64
	move	$a0, $s5
	move	$a1, $s8
	move	$a2, $s2
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	bnez	$a0, .LBB1_204
# %bb.194:                              # %._crit_edge1263
                                        #   in Loop: Header=BB1_191 Depth=2
	ld.w	$a0, $s3, 60
.LBB1_195:                              #   in Loop: Header=BB1_191 Depth=2
	ld.wu	$a1, $s3, 96
	sub.w	$a0, $a0, $a1
	sltu	$a2, $a0, $s2
	bstrpick.d	$a3, $a0, 31, 0
	sub.d	$a1, $zero, $a1
	maskeqz	$a0, $a0, $a2
	sub.w	$a0, $s2, $a0
	masknez	$a1, $a1, $a2
	ld.w	$a5, $s3, 92
	maskeqz	$a2, $a3, $a2
	or	$a4, $a2, $a1
	add.d	$a1, $s8, $a4
	sltu	$a2, $a0, $a5
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a5, $a2
	or	$a0, $a0, $a2
	sub.d	$a3, $a5, $a0
	addi.w	$a2, $a0, -1
	st.w	$a3, $s3, 92
	ori	$a3, $zero, 63
	bltu	$a2, $a3, .LBB1_200
# %bb.196:                              #   in Loop: Header=BB1_191 Depth=2
	addi.d	$a3, $a4, 63
	ori	$a5, $zero, 64
	bltu	$a3, $a5, .LBB1_200
# %bb.197:                              # %vector.ph
                                        #   in Loop: Header=BB1_191 Depth=2
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a5, $a2, 1
	bstrpick.d	$a2, $a5, 32, 6
	slli.d	$a6, $a2, 6
	add.d	$a2, $s8, $a6
	sub.d	$a3, $a0, $a6
	add.d	$a1, $a1, $a6
	move	$a7, $a6
	.p2align	4, , 16
.LBB1_198:                              # %vector.body
                                        #   Parent Loop BB1_6 Depth=1
                                        #     Parent Loop BB1_191 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t0, $s8, $a4
	xvldx	$xr0, $s8, $a4
	xvld	$xr1, $t0, 32
	xvst	$xr0, $s8, 0
	xvst	$xr1, $s8, 32
	addi.d	$a7, $a7, -64
	addi.d	$s8, $s8, 64
	bnez	$a7, .LBB1_198
# %bb.199:                              # %middle.block
                                        #   in Loop: Header=BB1_191 Depth=2
	move	$s8, $a2
	bne	$a5, $a6, .LBB1_201
	b	.LBB1_190
.LBB1_200:                              #   in Loop: Header=BB1_191 Depth=2
	move	$a2, $s8
	move	$a3, $a0
	.p2align	4, , 16
.LBB1_201:                              # %scalar.ph
                                        #   Parent Loop BB1_6 Depth=1
                                        #     Parent Loop BB1_191 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$a4, $a1, 0
	addi.d	$a1, $a1, 1
	addi.d	$s8, $a2, 1
	addi.w	$a3, $a3, -1
	st.b	$a4, $a2, 0
	move	$a2, $s8
	bnez	$a3, .LBB1_201
	b	.LBB1_190
.LBB1_202:                              #   in Loop: Header=BB1_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $s7, 48
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3921
	st.w	$a0, $s3, 8
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $s3, 8
	b	.LBB1_6
.LBB1_203:                              # %.split1037
	move	$s6, $zero
	st.d	$zero, $sp, 224
.LBB1_204:                              # %.loopexit684
	addi.w	$a0, $zero, -5
.LBB1_205:                              # %.loopexit684
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
.LBB1_206:                              # %.loopexit684
	ld.d	$a0, $sp, 224
	st.d	$a0, $s7, 0
	st.w	$s6, $s7, 8
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
.LBB1_207:
	addi.d	$sp, $fp, -320
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.LBB1_208:
	move	$s6, $zero
	st.d	$zero, $sp, 224
	addi.w	$a0, $zero, -5
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	b	.LBB1_206
.LBB1_209:                              # %.loopexit684.loopexit1508
	addi.w	$a0, $zero, -3
	b	.LBB1_205
.LBB1_210:
	ld.w	$a0, $s3, 60
	bgeu	$s1, $a0, .LBB1_212
# %bb.211:
	ld.d	$a1, $s3, 72
	sub.w	$a2, $a0, $s1
	move	$a0, $s5
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	sltui	$a0, $a0, 1
	addi.w	$a1, $zero, -5
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	b	.LBB1_205
.LBB1_212:
	ori	$a0, $zero, 1
	b	.LBB1_205
.Lfunc_end1:
	.size	inflateBack, .Lfunc_end1-inflateBack
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_206-.LJTI1_0
	.word	.LBB1_24-.LJTI1_0
	.word	.LBB1_206-.LJTI1_0
	.word	.LBB1_206-.LJTI1_0
	.word	.LBB1_10-.LJTI1_0
	.word	.LBB1_206-.LJTI1_0
	.word	.LBB1_206-.LJTI1_0
	.word	.LBB1_206-.LJTI1_0
	.word	.LBB1_122-.LJTI1_0
	.word	.LBB1_206-.LJTI1_0
	.word	.LBB1_206-.LJTI1_0
	.word	.LBB1_206-.LJTI1_0
	.word	.LBB1_206-.LJTI1_0
	.word	.LBB1_206-.LJTI1_0
	.word	.LBB1_206-.LJTI1_0
	.word	.LBB1_206-.LJTI1_0
	.word	.LBB1_210-.LJTI1_0
	.word	.LBB1_209-.LJTI1_0
.LJTI1_1:
	.word	.LBB1_62-.LJTI1_1
	.word	.LBB1_45-.LJTI1_1
	.word	.LBB1_60-.LJTI1_1
	.word	.LBB1_61-.LJTI1_1
                                        # -- End function
	.text
	.globl	inflateBackEnd                  # -- Begin function inflateBackEnd
	.p2align	5
	.type	inflateBackEnd,@function
inflateBackEnd:                         # @inflateBackEnd
# %bb.0:
	move	$a2, $a0
	addi.w	$a0, $zero, -2
	beqz	$a2, .LBB2_4
# %bb.1:
	ld.d	$a1, $a2, 56
	beqz	$a1, .LBB2_4
# %bb.2:
	ld.d	$a3, $a2, 72
	beqz	$a3, .LBB2_4
# %bb.3:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a0, $a2, 80
	move	$fp, $a2
	jirl	$ra, $a3, 0
	move	$a0, $zero
	st.d	$zero, $fp, 56
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB2_4:
	ret
.Lfunc_end2:
	.size	inflateBackEnd, .Lfunc_end2-inflateBackEnd
                                        # -- End function
	.type	inflateBack.order,@object       # @inflateBack.order
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
inflateBack.order:
	.half	16                              # 0x10
	.half	17                              # 0x11
	.half	18                              # 0x12
	.half	0                               # 0x0
	.half	8                               # 0x8
	.half	7                               # 0x7
	.half	9                               # 0x9
	.half	6                               # 0x6
	.half	10                              # 0xa
	.half	5                               # 0x5
	.half	11                              # 0xb
	.half	4                               # 0x4
	.half	12                              # 0xc
	.half	3                               # 0x3
	.half	13                              # 0xd
	.half	2                               # 0x2
	.half	14                              # 0xe
	.half	1                               # 0x1
	.half	15                              # 0xf
	.size	inflateBack.order, 38

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"invalid block type"
	.size	.L.str.1, 19

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"invalid stored block lengths"
	.size	.L.str.2, 29

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"too many length or distance symbols"
	.size	.L.str.3, 36

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"invalid code lengths set"
	.size	.L.str.4, 25

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"invalid bit length repeat"
	.size	.L.str.5, 26

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"invalid code -- missing end-of-block"
	.size	.L.str.6, 37

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"invalid literal/lengths set"
	.size	.L.str.7, 28

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"invalid distances set"
	.size	.L.str.8, 22

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"invalid literal/length code"
	.size	.L.str.9, 28

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"invalid distance code"
	.size	.L.str.10, 22

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"invalid distance too far back"
	.size	.L.str.11, 30

	.type	fixedtables.lenfix,@object      # @fixedtables.lenfix
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
fixedtables.lenfix:
	.byte	96                              # 0x60
	.byte	7                               # 0x7
	.half	0                               # 0x0
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	80                              # 0x50
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	16                              # 0x10
	.byte	20                              # 0x14
	.byte	8                               # 0x8
	.half	115                             # 0x73
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	112                             # 0x70
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	48                              # 0x30
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	192                             # 0xc0
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	10                              # 0xa
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	96                              # 0x60
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	32                              # 0x20
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	160                             # 0xa0
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	0                               # 0x0
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	128                             # 0x80
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	64                              # 0x40
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	224                             # 0xe0
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	6                               # 0x6
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	88                              # 0x58
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	24                              # 0x18
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	144                             # 0x90
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	59                              # 0x3b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	120                             # 0x78
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	56                              # 0x38
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	208                             # 0xd0
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	17                              # 0x11
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	104                             # 0x68
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	40                              # 0x28
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	176                             # 0xb0
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	8                               # 0x8
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	136                             # 0x88
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	72                              # 0x48
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	240                             # 0xf0
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	4                               # 0x4
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	84                              # 0x54
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	20                              # 0x14
	.byte	21                              # 0x15
	.byte	8                               # 0x8
	.half	227                             # 0xe3
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	43                              # 0x2b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	116                             # 0x74
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	52                              # 0x34
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	200                             # 0xc8
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	13                              # 0xd
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	100                             # 0x64
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	36                              # 0x24
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	168                             # 0xa8
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	4                               # 0x4
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	132                             # 0x84
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	68                              # 0x44
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	232                             # 0xe8
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	8                               # 0x8
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	92                              # 0x5c
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	28                              # 0x1c
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	152                             # 0x98
	.byte	20                              # 0x14
	.byte	7                               # 0x7
	.half	83                              # 0x53
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	124                             # 0x7c
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	60                              # 0x3c
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	216                             # 0xd8
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	23                              # 0x17
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	108                             # 0x6c
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	44                              # 0x2c
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	184                             # 0xb8
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	12                              # 0xc
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	140                             # 0x8c
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	76                              # 0x4c
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	248                             # 0xf8
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	3                               # 0x3
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	82                              # 0x52
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	18                              # 0x12
	.byte	21                              # 0x15
	.byte	8                               # 0x8
	.half	163                             # 0xa3
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	35                              # 0x23
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	114                             # 0x72
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	50                              # 0x32
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	196                             # 0xc4
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	11                              # 0xb
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	98                              # 0x62
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	34                              # 0x22
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	164                             # 0xa4
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	2                               # 0x2
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	130                             # 0x82
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	66                              # 0x42
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	228                             # 0xe4
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	7                               # 0x7
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	90                              # 0x5a
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	26                              # 0x1a
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	148                             # 0x94
	.byte	20                              # 0x14
	.byte	7                               # 0x7
	.half	67                              # 0x43
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	122                             # 0x7a
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	58                              # 0x3a
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	212                             # 0xd4
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	19                              # 0x13
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	106                             # 0x6a
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	42                              # 0x2a
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	180                             # 0xb4
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	10                              # 0xa
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	138                             # 0x8a
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	74                              # 0x4a
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	244                             # 0xf4
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	5                               # 0x5
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	86                              # 0x56
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	22                              # 0x16
	.byte	64                              # 0x40
	.byte	8                               # 0x8
	.half	0                               # 0x0
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	51                              # 0x33
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	118                             # 0x76
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	54                              # 0x36
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	204                             # 0xcc
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	15                              # 0xf
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	102                             # 0x66
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	38                              # 0x26
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	172                             # 0xac
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	6                               # 0x6
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	134                             # 0x86
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	70                              # 0x46
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	236                             # 0xec
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	9                               # 0x9
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	94                              # 0x5e
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	30                              # 0x1e
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	156                             # 0x9c
	.byte	20                              # 0x14
	.byte	7                               # 0x7
	.half	99                              # 0x63
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	126                             # 0x7e
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	62                              # 0x3e
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	220                             # 0xdc
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	27                              # 0x1b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	110                             # 0x6e
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	46                              # 0x2e
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	188                             # 0xbc
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	14                              # 0xe
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	142                             # 0x8e
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	78                              # 0x4e
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	252                             # 0xfc
	.byte	96                              # 0x60
	.byte	7                               # 0x7
	.half	0                               # 0x0
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	81                              # 0x51
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	17                              # 0x11
	.byte	21                              # 0x15
	.byte	8                               # 0x8
	.half	131                             # 0x83
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	113                             # 0x71
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	49                              # 0x31
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	194                             # 0xc2
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	10                              # 0xa
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	97                              # 0x61
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	33                              # 0x21
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	162                             # 0xa2
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	1                               # 0x1
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	129                             # 0x81
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	65                              # 0x41
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	226                             # 0xe2
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	6                               # 0x6
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	89                              # 0x59
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	25                              # 0x19
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	146                             # 0x92
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	59                              # 0x3b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	121                             # 0x79
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	57                              # 0x39
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	210                             # 0xd2
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	17                              # 0x11
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	105                             # 0x69
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	41                              # 0x29
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	178                             # 0xb2
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	9                               # 0x9
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	137                             # 0x89
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	73                              # 0x49
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	242                             # 0xf2
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	4                               # 0x4
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	85                              # 0x55
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	21                              # 0x15
	.byte	16                              # 0x10
	.byte	8                               # 0x8
	.half	258                             # 0x102
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	43                              # 0x2b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	117                             # 0x75
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	53                              # 0x35
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	202                             # 0xca
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	13                              # 0xd
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	101                             # 0x65
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	37                              # 0x25
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	170                             # 0xaa
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	5                               # 0x5
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	133                             # 0x85
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	69                              # 0x45
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	234                             # 0xea
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	8                               # 0x8
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	93                              # 0x5d
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	29                              # 0x1d
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	154                             # 0x9a
	.byte	20                              # 0x14
	.byte	7                               # 0x7
	.half	83                              # 0x53
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	125                             # 0x7d
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	61                              # 0x3d
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	218                             # 0xda
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	23                              # 0x17
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	109                             # 0x6d
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	45                              # 0x2d
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	186                             # 0xba
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	13                              # 0xd
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	141                             # 0x8d
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	77                              # 0x4d
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	250                             # 0xfa
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	3                               # 0x3
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	83                              # 0x53
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	19                              # 0x13
	.byte	21                              # 0x15
	.byte	8                               # 0x8
	.half	195                             # 0xc3
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	35                              # 0x23
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	115                             # 0x73
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	51                              # 0x33
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	198                             # 0xc6
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	11                              # 0xb
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	99                              # 0x63
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	35                              # 0x23
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	166                             # 0xa6
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	3                               # 0x3
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	131                             # 0x83
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	67                              # 0x43
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	230                             # 0xe6
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	7                               # 0x7
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	91                              # 0x5b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	27                              # 0x1b
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	150                             # 0x96
	.byte	20                              # 0x14
	.byte	7                               # 0x7
	.half	67                              # 0x43
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	123                             # 0x7b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	59                              # 0x3b
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	214                             # 0xd6
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	19                              # 0x13
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	107                             # 0x6b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	43                              # 0x2b
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	182                             # 0xb6
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	11                              # 0xb
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	139                             # 0x8b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	75                              # 0x4b
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	246                             # 0xf6
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	5                               # 0x5
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	87                              # 0x57
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	23                              # 0x17
	.byte	64                              # 0x40
	.byte	8                               # 0x8
	.half	0                               # 0x0
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	51                              # 0x33
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	119                             # 0x77
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	55                              # 0x37
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	206                             # 0xce
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	15                              # 0xf
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	103                             # 0x67
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	39                              # 0x27
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	174                             # 0xae
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	7                               # 0x7
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	135                             # 0x87
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	71                              # 0x47
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	238                             # 0xee
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	9                               # 0x9
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	95                              # 0x5f
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	158                             # 0x9e
	.byte	20                              # 0x14
	.byte	7                               # 0x7
	.half	99                              # 0x63
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	63                              # 0x3f
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	222                             # 0xde
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	27                              # 0x1b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	111                             # 0x6f
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	47                              # 0x2f
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	190                             # 0xbe
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	15                              # 0xf
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	143                             # 0x8f
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	79                              # 0x4f
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	254                             # 0xfe
	.byte	96                              # 0x60
	.byte	7                               # 0x7
	.half	0                               # 0x0
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	80                              # 0x50
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	16                              # 0x10
	.byte	20                              # 0x14
	.byte	8                               # 0x8
	.half	115                             # 0x73
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	112                             # 0x70
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	48                              # 0x30
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	193                             # 0xc1
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	10                              # 0xa
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	96                              # 0x60
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	32                              # 0x20
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	161                             # 0xa1
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	0                               # 0x0
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	128                             # 0x80
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	64                              # 0x40
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	225                             # 0xe1
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	6                               # 0x6
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	88                              # 0x58
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	24                              # 0x18
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	145                             # 0x91
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	59                              # 0x3b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	120                             # 0x78
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	56                              # 0x38
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	209                             # 0xd1
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	17                              # 0x11
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	104                             # 0x68
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	40                              # 0x28
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	177                             # 0xb1
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	8                               # 0x8
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	136                             # 0x88
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	72                              # 0x48
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	241                             # 0xf1
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	4                               # 0x4
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	84                              # 0x54
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	20                              # 0x14
	.byte	21                              # 0x15
	.byte	8                               # 0x8
	.half	227                             # 0xe3
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	43                              # 0x2b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	116                             # 0x74
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	52                              # 0x34
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	201                             # 0xc9
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	13                              # 0xd
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	100                             # 0x64
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	36                              # 0x24
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	169                             # 0xa9
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	4                               # 0x4
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	132                             # 0x84
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	68                              # 0x44
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	233                             # 0xe9
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	8                               # 0x8
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	92                              # 0x5c
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	28                              # 0x1c
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	153                             # 0x99
	.byte	20                              # 0x14
	.byte	7                               # 0x7
	.half	83                              # 0x53
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	124                             # 0x7c
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	60                              # 0x3c
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	217                             # 0xd9
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	23                              # 0x17
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	108                             # 0x6c
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	44                              # 0x2c
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	185                             # 0xb9
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	12                              # 0xc
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	140                             # 0x8c
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	76                              # 0x4c
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	249                             # 0xf9
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	3                               # 0x3
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	82                              # 0x52
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	18                              # 0x12
	.byte	21                              # 0x15
	.byte	8                               # 0x8
	.half	163                             # 0xa3
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	35                              # 0x23
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	114                             # 0x72
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	50                              # 0x32
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	197                             # 0xc5
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	11                              # 0xb
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	98                              # 0x62
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	34                              # 0x22
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	165                             # 0xa5
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	2                               # 0x2
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	130                             # 0x82
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	66                              # 0x42
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	229                             # 0xe5
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	7                               # 0x7
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	90                              # 0x5a
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	26                              # 0x1a
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	149                             # 0x95
	.byte	20                              # 0x14
	.byte	7                               # 0x7
	.half	67                              # 0x43
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	122                             # 0x7a
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	58                              # 0x3a
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	213                             # 0xd5
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	19                              # 0x13
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	106                             # 0x6a
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	42                              # 0x2a
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	181                             # 0xb5
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	10                              # 0xa
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	138                             # 0x8a
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	74                              # 0x4a
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	245                             # 0xf5
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	5                               # 0x5
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	86                              # 0x56
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	22                              # 0x16
	.byte	64                              # 0x40
	.byte	8                               # 0x8
	.half	0                               # 0x0
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	51                              # 0x33
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	118                             # 0x76
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	54                              # 0x36
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	205                             # 0xcd
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	15                              # 0xf
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	102                             # 0x66
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	38                              # 0x26
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	173                             # 0xad
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	6                               # 0x6
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	134                             # 0x86
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	70                              # 0x46
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	237                             # 0xed
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	9                               # 0x9
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	94                              # 0x5e
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	30                              # 0x1e
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	157                             # 0x9d
	.byte	20                              # 0x14
	.byte	7                               # 0x7
	.half	99                              # 0x63
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	126                             # 0x7e
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	62                              # 0x3e
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	221                             # 0xdd
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	27                              # 0x1b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	110                             # 0x6e
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	46                              # 0x2e
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	189                             # 0xbd
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	14                              # 0xe
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	142                             # 0x8e
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	78                              # 0x4e
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	253                             # 0xfd
	.byte	96                              # 0x60
	.byte	7                               # 0x7
	.half	0                               # 0x0
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	81                              # 0x51
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	17                              # 0x11
	.byte	21                              # 0x15
	.byte	8                               # 0x8
	.half	131                             # 0x83
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	113                             # 0x71
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	49                              # 0x31
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	195                             # 0xc3
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	10                              # 0xa
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	97                              # 0x61
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	33                              # 0x21
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	163                             # 0xa3
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	1                               # 0x1
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	129                             # 0x81
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	65                              # 0x41
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	227                             # 0xe3
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	6                               # 0x6
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	89                              # 0x59
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	25                              # 0x19
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	147                             # 0x93
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	59                              # 0x3b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	121                             # 0x79
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	57                              # 0x39
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	211                             # 0xd3
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	17                              # 0x11
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	105                             # 0x69
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	41                              # 0x29
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	179                             # 0xb3
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	9                               # 0x9
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	137                             # 0x89
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	73                              # 0x49
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	243                             # 0xf3
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	4                               # 0x4
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	85                              # 0x55
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	21                              # 0x15
	.byte	16                              # 0x10
	.byte	8                               # 0x8
	.half	258                             # 0x102
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	43                              # 0x2b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	117                             # 0x75
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	53                              # 0x35
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	203                             # 0xcb
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	13                              # 0xd
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	101                             # 0x65
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	37                              # 0x25
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	171                             # 0xab
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	5                               # 0x5
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	133                             # 0x85
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	69                              # 0x45
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	235                             # 0xeb
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	8                               # 0x8
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	93                              # 0x5d
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	29                              # 0x1d
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	155                             # 0x9b
	.byte	20                              # 0x14
	.byte	7                               # 0x7
	.half	83                              # 0x53
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	125                             # 0x7d
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	61                              # 0x3d
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	219                             # 0xdb
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	23                              # 0x17
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	109                             # 0x6d
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	45                              # 0x2d
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	187                             # 0xbb
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	13                              # 0xd
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	141                             # 0x8d
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	77                              # 0x4d
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	251                             # 0xfb
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	3                               # 0x3
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	83                              # 0x53
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	19                              # 0x13
	.byte	21                              # 0x15
	.byte	8                               # 0x8
	.half	195                             # 0xc3
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	35                              # 0x23
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	115                             # 0x73
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	51                              # 0x33
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	199                             # 0xc7
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	11                              # 0xb
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	99                              # 0x63
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	35                              # 0x23
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	167                             # 0xa7
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	3                               # 0x3
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	131                             # 0x83
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	67                              # 0x43
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	231                             # 0xe7
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	7                               # 0x7
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	91                              # 0x5b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	27                              # 0x1b
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	151                             # 0x97
	.byte	20                              # 0x14
	.byte	7                               # 0x7
	.half	67                              # 0x43
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	123                             # 0x7b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	59                              # 0x3b
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	215                             # 0xd7
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	19                              # 0x13
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	107                             # 0x6b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	43                              # 0x2b
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	183                             # 0xb7
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	11                              # 0xb
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	139                             # 0x8b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	75                              # 0x4b
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	247                             # 0xf7
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	5                               # 0x5
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	87                              # 0x57
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	23                              # 0x17
	.byte	64                              # 0x40
	.byte	8                               # 0x8
	.half	0                               # 0x0
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.half	51                              # 0x33
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	119                             # 0x77
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	55                              # 0x37
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	207                             # 0xcf
	.byte	17                              # 0x11
	.byte	7                               # 0x7
	.half	15                              # 0xf
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	103                             # 0x67
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	39                              # 0x27
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	175                             # 0xaf
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	7                               # 0x7
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	135                             # 0x87
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	71                              # 0x47
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	239                             # 0xef
	.byte	16                              # 0x10
	.byte	7                               # 0x7
	.half	9                               # 0x9
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	95                              # 0x5f
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	159                             # 0x9f
	.byte	20                              # 0x14
	.byte	7                               # 0x7
	.half	99                              # 0x63
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	127                             # 0x7f
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	63                              # 0x3f
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	223                             # 0xdf
	.byte	18                              # 0x12
	.byte	7                               # 0x7
	.half	27                              # 0x1b
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	111                             # 0x6f
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	47                              # 0x2f
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	191                             # 0xbf
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	15                              # 0xf
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	143                             # 0x8f
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.half	79                              # 0x4f
	.byte	0                               # 0x0
	.byte	9                               # 0x9
	.half	255                             # 0xff
	.size	fixedtables.lenfix, 2048

	.type	fixedtables.distfix,@object     # @fixedtables.distfix
	.p2align	1, 0x0
fixedtables.distfix:
	.byte	16                              # 0x10
	.byte	5                               # 0x5
	.half	1                               # 0x1
	.byte	23                              # 0x17
	.byte	5                               # 0x5
	.half	257                             # 0x101
	.byte	19                              # 0x13
	.byte	5                               # 0x5
	.half	17                              # 0x11
	.byte	27                              # 0x1b
	.byte	5                               # 0x5
	.half	4097                            # 0x1001
	.byte	17                              # 0x11
	.byte	5                               # 0x5
	.half	5                               # 0x5
	.byte	25                              # 0x19
	.byte	5                               # 0x5
	.half	1025                            # 0x401
	.byte	21                              # 0x15
	.byte	5                               # 0x5
	.half	65                              # 0x41
	.byte	29                              # 0x1d
	.byte	5                               # 0x5
	.half	16385                           # 0x4001
	.byte	16                              # 0x10
	.byte	5                               # 0x5
	.half	3                               # 0x3
	.byte	24                              # 0x18
	.byte	5                               # 0x5
	.half	513                             # 0x201
	.byte	20                              # 0x14
	.byte	5                               # 0x5
	.half	33                              # 0x21
	.byte	28                              # 0x1c
	.byte	5                               # 0x5
	.half	8193                            # 0x2001
	.byte	18                              # 0x12
	.byte	5                               # 0x5
	.half	9                               # 0x9
	.byte	26                              # 0x1a
	.byte	5                               # 0x5
	.half	2049                            # 0x801
	.byte	22                              # 0x16
	.byte	5                               # 0x5
	.half	129                             # 0x81
	.byte	64                              # 0x40
	.byte	5                               # 0x5
	.half	0                               # 0x0
	.byte	16                              # 0x10
	.byte	5                               # 0x5
	.half	2                               # 0x2
	.byte	23                              # 0x17
	.byte	5                               # 0x5
	.half	385                             # 0x181
	.byte	19                              # 0x13
	.byte	5                               # 0x5
	.half	25                              # 0x19
	.byte	27                              # 0x1b
	.byte	5                               # 0x5
	.half	6145                            # 0x1801
	.byte	17                              # 0x11
	.byte	5                               # 0x5
	.half	7                               # 0x7
	.byte	25                              # 0x19
	.byte	5                               # 0x5
	.half	1537                            # 0x601
	.byte	21                              # 0x15
	.byte	5                               # 0x5
	.half	97                              # 0x61
	.byte	29                              # 0x1d
	.byte	5                               # 0x5
	.half	24577                           # 0x6001
	.byte	16                              # 0x10
	.byte	5                               # 0x5
	.half	4                               # 0x4
	.byte	24                              # 0x18
	.byte	5                               # 0x5
	.half	769                             # 0x301
	.byte	20                              # 0x14
	.byte	5                               # 0x5
	.half	49                              # 0x31
	.byte	28                              # 0x1c
	.byte	5                               # 0x5
	.half	12289                           # 0x3001
	.byte	18                              # 0x12
	.byte	5                               # 0x5
	.half	13                              # 0xd
	.byte	26                              # 0x1a
	.byte	5                               # 0x5
	.half	3073                            # 0xc01
	.byte	22                              # 0x16
	.byte	5                               # 0x5
	.half	193                             # 0xc1
	.byte	64                              # 0x40
	.byte	5                               # 0x5
	.half	0                               # 0x0
	.size	fixedtables.distfix, 128

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym zcalloc
	.addrsig_sym zcfree
	.addrsig_sym fixedtables.lenfix
	.addrsig_sym fixedtables.distfix
