	.file	"finalpin.c"
	.text
	.globl	finalpin                        # -- Begin function finalpin
	.p2align	5
	.type	finalpin,@function
finalpin:                               # @finalpin
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1936                 # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 192
	sub.d	$sp, $sp, $a0
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$a0, $a0, %got_pc_lo12(numcells)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB0_257
# %bb.1:                                # %.lr.ph971
	ori	$s8, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$a0, $a0, %got_pc_lo12(cellarray)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$s6, %pc_hi20(UCptr)
	lu12i.w	$a0, -24415
	ori	$s1, $a0, 3840
	lu12i.w	$a0, 1
	ori	$a0, $a0, 348
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$s7, $zero, 44
	ori	$a0, $zero, 1
                                        # implicit-def: $r5
                                        # kill: killed $r5
                                        # implicit-def: $r5
                                        # kill: killed $r5
	st.d	$s6, $sp, 48                    # 8-byte Folded Spill
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %.loopexit755
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a2, 1
	bge	$a2, $a1, .LBB0_257
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_10 Depth 2
                                        #     Child Loop BB0_16 Depth 2
                                        #       Child Loop BB0_40 Depth 3
                                        #       Child Loop BB0_35 Depth 3
                                        #       Child Loop BB0_46 Depth 3
                                        #         Child Loop BB0_52 Depth 4
                                        #         Child Loop BB0_70 Depth 4
                                        #         Child Loop BB0_74 Depth 4
                                        #         Child Loop BB0_58 Depth 4
                                        #         Child Loop BB0_64 Depth 4
                                        #       Child Loop BB0_246 Depth 3
                                        #       Child Loop BB0_249 Depth 3
                                        #       Child Loop BB0_107 Depth 3
                                        #       Child Loop BB0_110 Depth 3
                                        #       Child Loop BB0_112 Depth 3
                                        #       Child Loop BB0_115 Depth 3
                                        #       Child Loop BB0_88 Depth 3
                                        #       Child Loop BB0_91 Depth 3
                                        #       Child Loop BB0_119 Depth 3
                                        #         Child Loop BB0_128 Depth 4
                                        #       Child Loop BB0_143 Depth 3
                                        #       Child Loop BB0_147 Depth 3
                                        #       Child Loop BB0_153 Depth 3
                                        #       Child Loop BB0_158 Depth 3
                                        #         Child Loop BB0_163 Depth 4
                                        #           Child Loop BB0_176 Depth 5
                                        #           Child Loop BB0_173 Depth 5
                                        #           Child Loop BB0_179 Depth 5
                                        #           Child Loop BB0_169 Depth 5
                                        #       Child Loop BB0_184 Depth 3
                                        #       Child Loop BB0_213 Depth 3
                                        #         Child Loop BB0_217 Depth 4
                                        #         Child Loop BB0_240 Depth 4
                                        #         Child Loop BB0_230 Depth 4
                                        #         Child Loop BB0_233 Depth 4
                                        #         Child Loop BB0_226 Depth 4
                                        #         Child Loop BB0_243 Depth 4
                                        #         Child Loop BB0_237 Depth 4
                                        #       Child Loop BB0_190 Depth 3
                                        #       Child Loop BB0_196 Depth 3
                                        #         Child Loop BB0_200 Depth 4
                                        #       Child Loop BB0_208 Depth 3
                                        #     Child Loop BB0_254 Depth 2
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 3
	ldx.d	$a7, $a1, $a0
	ld.w	$a0, $a7, 132
	beqz	$a0, .LBB0_2
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a1, $a7, 56
	alsl.d	$a1, $a1, $a7, 3
	ld.d	$a2, $a1, 152
	ld.d	$fp, $a7, 136
	ld.d	$a1, $a7, 144
	ld.d	$a2, $a2, 96
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	st.d	$a1, $s6, %pc_lo12(UCptr)
	blez	$a0, .LBB0_11
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	ori	$a2, $zero, 1
	beq	$a0, $a2, .LBB0_9
# %bb.6:                                # %vector.ph1368
                                        #   in Loop: Header=BB0_3 Depth=1
	bstrpick.d	$a2, $a0, 30, 1
	slli.d	$a3, $a2, 1
	ori	$a2, $a0, 1
	addi.d	$a4, $a1, 128
	move	$a5, $a3
	.p2align	4, , 16
.LBB0_7:                                # %vector.body1371
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a6, $s1
	bstrins.d	$a6, $s1, 58, 32
	st.d	$a6, $a4, -48
	st.d	$a6, $a4, -4
	addi.d	$a5, $a5, -2
	addi.d	$a4, $a4, 88
	bnez	$a5, .LBB0_7
# %bb.8:                                # %middle.block1375
                                        #   in Loop: Header=BB0_3 Depth=1
	beq	$a3, $a0, .LBB0_11
.LBB0_9:                                # %.lr.ph.preheader1395
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a3, $a0, 1
	bstrpick.d	$a3, $a3, 31, 0
	mul.d	$a4, $a2, $s7
	add.d	$a1, $a1, $a4
	addi.d	$a1, $a1, 40
	sub.d	$a2, $a3, $a2
	.p2align	4, , 16
.LBB0_10:                               # %.lr.ph
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a3, $s1
	bstrins.d	$a3, $s1, 58, 32
	st.d	$a3, $a1, -4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 44
	bnez	$a2, .LBB0_10
.LBB0_11:                               # %.preheader756
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a1, $a7, 128
	blez	$a1, .LBB0_251
# %bb.12:                               # %.lr.ph960
                                        #   in Loop: Header=BB0_3 Depth=1
	ori	$s4, $zero, 1
	st.d	$a7, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_13:                               # %._crit_edge954.loopexit
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a0, $t3, %pc_lo12(lArray)
.LBB0_14:                               # %._crit_edge954
                                        #   in Loop: Header=BB0_16 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a1, $a7, 128
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
.LBB0_15:                               #   in Loop: Header=BB0_16 Depth=2
	bge	$a3, $a1, .LBB0_250
.LBB0_16:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_40 Depth 3
                                        #       Child Loop BB0_35 Depth 3
                                        #       Child Loop BB0_46 Depth 3
                                        #         Child Loop BB0_52 Depth 4
                                        #         Child Loop BB0_70 Depth 4
                                        #         Child Loop BB0_74 Depth 4
                                        #         Child Loop BB0_58 Depth 4
                                        #         Child Loop BB0_64 Depth 4
                                        #       Child Loop BB0_246 Depth 3
                                        #       Child Loop BB0_249 Depth 3
                                        #       Child Loop BB0_107 Depth 3
                                        #       Child Loop BB0_110 Depth 3
                                        #       Child Loop BB0_112 Depth 3
                                        #       Child Loop BB0_115 Depth 3
                                        #       Child Loop BB0_88 Depth 3
                                        #       Child Loop BB0_91 Depth 3
                                        #       Child Loop BB0_119 Depth 3
                                        #         Child Loop BB0_128 Depth 4
                                        #       Child Loop BB0_143 Depth 3
                                        #       Child Loop BB0_147 Depth 3
                                        #       Child Loop BB0_153 Depth 3
                                        #       Child Loop BB0_158 Depth 3
                                        #         Child Loop BB0_163 Depth 4
                                        #           Child Loop BB0_176 Depth 5
                                        #           Child Loop BB0_173 Depth 5
                                        #           Child Loop BB0_179 Depth 5
                                        #           Child Loop BB0_169 Depth 5
                                        #       Child Loop BB0_184 Depth 3
                                        #       Child Loop BB0_213 Depth 3
                                        #         Child Loop BB0_217 Depth 4
                                        #         Child Loop BB0_240 Depth 4
                                        #         Child Loop BB0_230 Depth 4
                                        #         Child Loop BB0_233 Depth 4
                                        #         Child Loop BB0_226 Depth 4
                                        #         Child Loop BB0_243 Depth 4
                                        #         Child Loop BB0_237 Depth 4
                                        #       Child Loop BB0_190 Depth 3
                                        #       Child Loop BB0_196 Depth 3
                                        #         Child Loop BB0_200 Depth 4
                                        #       Child Loop BB0_208 Depth 3
	move	$a3, $s4
	slli.d	$s0, $s4, 4
	alsl.d	$a0, $s4, $s0, 2
	ldx.w	$a2, $fp, $a0
	addi.d	$s4, $s4, 1
	blez	$a2, .LBB0_15
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=2
	add.d	$a0, $fp, $a0
	ld.w	$a1, $a0, 16
	ld.w	$a0, $a0, 12
	ld.w	$a2, $a7, 56
	pcalau12i	$fp, %pc_hi20(HorV)
	st.w	$a0, $fp, %pc_lo12(HorV)
	movgr2fr.w	$fs0, $a1
	ori	$a0, $zero, 4
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	bge	$a2, $a0, .LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=2
	fld.d	$fa0, $a7, 96
	fld.d	$fa1, $a7, 104
	fdiv.d	$fa1, $fa0, $fa1
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_24
# %bb.19:                               # %.split1799
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a0, $fp, %pc_lo12(HorV)
	bnez	$a0, .LBB0_27
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_20:                               #   in Loop: Header=BB0_16 Depth=2
	fld.d	$fa0, $a7, 104
	fld.d	$fa1, $a7, 96
	fdiv.d	$fa1, $fa0, $fa1
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_25
# %bb.21:                               # %.split
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a0, $fp, %pc_lo12(HorV)
	bne	$a0, $s8, .LBB0_26
.LBB0_22:                               # %.thread
                                        #   in Loop: Header=BB0_16 Depth=2
	st.w	$zero, $fp, %pc_lo12(HorV)
.LBB0_23:                               #   in Loop: Header=BB0_16 Depth=2
	ffint.d.w	$fa1, $fs0
	fdiv.d	$fa2, $fa1, $fa0
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$s4, $fa2
	movgr2fr.w	$fa2, $s4
	ffint.d.w	$fa2, $fa2
	fneg.d	$fa2, $fa2
	fmadd.d	$fa2, $fa2, $fa0, $fa1
	addi.d	$a0, $s4, 1
	movgr2fr.w	$fa3, $a0
	ffint.d.w	$fa3, $fa3
	fmsub.d	$fa0, $fa3, $fa0, $fa1
	fcmp.cule.d	$fcc0, $fa2, $fa0
	ori	$fp, $zero, 1
	bceqz	$fcc0, .LBB0_28
	b	.LBB0_29
.LBB0_24:                               # %call.sqrt1800
                                        #   in Loop: Header=BB0_16 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(HorV)
	bnez	$a0, .LBB0_27
	b	.LBB0_23
.LBB0_25:                               # %call.sqrt
                                        #   in Loop: Header=BB0_16 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(HorV)
	beq	$a0, $s8, .LBB0_22
.LBB0_26:                               # %.thread705
                                        #   in Loop: Header=BB0_16 Depth=2
	st.w	$s8, $fp, %pc_lo12(HorV)
.LBB0_27:                               #   in Loop: Header=BB0_16 Depth=2
	ffint.d.w	$fa1, $fs0
	fmul.d	$fa2, $fa0, $fa1
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$s4, $fa2
	movgr2fr.w	$fa2, $s4
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa2, $fa2, $fa0
	fsub.d	$fa2, $fa1, $fa2
	addi.d	$a0, $s4, 1
	movgr2fr.w	$fa3, $a0
	ffint.d.w	$fa3, $fa3
	fdiv.d	$fa0, $fa3, $fa0
	fsub.d	$fa0, $fa0, $fa1
	move	$fp, $zero
	fcmp.cule.d	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_16 Depth=2
	addi.w	$s4, $a0, 0
.LBB0_29:                               #   in Loop: Header=BB0_16 Depth=2
	pcalau12i	$a0, %got_pc_hi20(pinSpacing)
	ld.d	$a0, $a0, %got_pc_lo12(pinSpacing)
	ld.w	$s2, $a0, 0
	div.w	$a0, $s4, $s2
	mul.d	$a1, $a0, $s2
	sub.w	$a1, $s4, $a1
	addi.w	$a2, $a0, 1
	mul.d	$a3, $a2, $s2
	sub.w	$a3, $a3, $s4
	slt	$a1, $a3, $a1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s1, $a1, $a0
	pcalau12i	$a0, %pc_hi20(nPinLocs)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.w	$s1, $a0, %pc_lo12(nPinLocs)
	addi.w	$s5, $s1, 1
	slli.d	$a0, $s5, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(lArray)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$s3, $a0, %pc_lo12(lArray)
	blez	$s1, .LBB0_31
# %bb.30:                               # %.lr.ph768.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a0, $s3, 16
	slli.d	$a2, $s1, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_31:                               # %._crit_edge
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.wu	$a0, $a0, 128
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	xor	$a0, $a2, $a0
	sltui	$a0, $a0, 1
	addi.d	$a1, $a2, 1
	bstrpick.d	$a1, $a1, 31, 0
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 4
	beqz	$fp, .LBB0_37
# %bb.32:                               #   in Loop: Header=BB0_16 Depth=2
	blez	$s1, .LBB0_42
# %bb.33:                               # %.lr.ph776
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a1, 4
	ldx.w	$a1, $a1, $s0
	ld.w	$a2, $a2, 4
	bstrpick.d	$a3, $s4, 31, 31
	add.w	$a3, $s4, $a3
	srli.d	$a3, $a3, 1
	sub.d	$a3, $a1, $a3
	addi.d	$a4, $s4, 1
	bstrpick.d	$a5, $a4, 31, 31
	add.w	$a4, $a4, $a5
	srli.d	$a4, $a4, 1
	sub.d	$a4, $a1, $a4
	bstrpick.d	$a6, $s5, 31, 0
	addi.d	$a5, $s3, 28
	addi.d	$a6, $a6, -1
	ori	$a7, $zero, 1
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_34:                               #   in Loop: Header=BB0_35 Depth=3
	st.w	$t0, $a5, -4
	addi.d	$a7, $a7, 1
	add.d	$a3, $a3, $s2
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 16
	beqz	$a6, .LBB0_42
.LBB0_35:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$a2, $a5, 0
	move	$t0, $a3
	bge	$a1, $a0, .LBB0_34
# %bb.36:                               #   in Loop: Header=BB0_35 Depth=3
	mul.d	$t0, $s2, $a7
	add.d	$t0, $t0, $a4
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_37:                               #   in Loop: Header=BB0_16 Depth=2
	blez	$s1, .LBB0_42
# %bb.38:                               # %.lr.ph772
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a0, $a0, 4
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a1, 4
	ld.w	$a1, $a2, 4
	ld.w	$a2, $a2, 0
	bstrpick.d	$a3, $s4, 31, 31
	add.w	$a3, $s4, $a3
	srli.d	$a3, $a3, 1
	sub.d	$a3, $a1, $a3
	addi.d	$a4, $s4, 1
	bstrpick.d	$a5, $a4, 31, 31
	add.w	$a4, $a4, $a5
	srli.d	$a4, $a4, 1
	sub.d	$a4, $a1, $a4
	bstrpick.d	$a6, $s5, 31, 0
	addi.d	$a5, $s3, 28
	addi.d	$a6, $a6, -1
	ori	$a7, $zero, 1
	b	.LBB0_40
	.p2align	4, , 16
.LBB0_39:                               #   in Loop: Header=BB0_40 Depth=3
	st.w	$t0, $a5, 0
	addi.d	$a7, $a7, 1
	add.d	$a3, $a3, $s2
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 16
	beqz	$a6, .LBB0_42
.LBB0_40:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$a2, $a5, -4
	move	$t0, $a3
	bge	$a1, $a0, .LBB0_39
# %bb.41:                               #   in Loop: Header=BB0_40 Depth=3
	mul.d	$t0, $s2, $a7
	add.d	$t0, $t0, $a4
	b	.LBB0_39
	.p2align	4, , 16
.LBB0_42:                               # %.loopexit752
                                        #   in Loop: Header=BB0_16 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1720
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 404
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1312
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 404
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 960
	move	$a1, $zero
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 152
	ori	$a2, $zero, 804
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$t3, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a1, $t3, 132
	blez	$a1, .LBB0_92
# %bb.43:                               # %.lr.ph806.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a0, $s6, %pc_lo12(UCptr)
	ori	$s3, $zero, 1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1720
	add.d	$s1, $sp, $a2
	ori	$s4, $zero, 404
	addi.d	$t4, $sp, 960
	addi.d	$s2, $sp, 152
	ori	$s5, $zero, 2
	ld.d	$t5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	b	.LBB0_46
.LBB0_44:                               #   in Loop: Header=BB0_46 Depth=3
	ld.w	$a2, $sp, 152
	addi.d	$a2, $a2, 1
	st.w	$a2, $sp, 152
	slli.w	$a2, $a2, 1
	slli.d	$a2, $a2, 2
	stx.w	$s3, $a2, $s2
	.p2align	4, , 16
.LBB0_45:                               # %.loopexit734
                                        #   in Loop: Header=BB0_46 Depth=3
	move	$a2, $s3
	addi.w	$s3, $s3, 1
	bge	$a2, $a1, .LBB0_78
.LBB0_46:                               # %.lr.ph806
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_52 Depth 4
                                        #         Child Loop BB0_70 Depth 4
                                        #         Child Loop BB0_74 Depth 4
                                        #         Child Loop BB0_58 Depth 4
                                        #         Child Loop BB0_64 Depth 4
	mul.d	$s0, $s3, $s7
	add.d	$a2, $a0, $s0
	ld.wu	$a3, $a2, 4
	bne	$t5, $a3, .LBB0_45
# %bb.47:                               #   in Loop: Header=BB0_46 Depth=3
	ld.w	$a3, $a2, 28
	beqz	$a3, .LBB0_56
# %bb.48:                               #   in Loop: Header=BB0_46 Depth=3
	blt	$a3, $s5, .LBB0_44
# %bb.49:                               #   in Loop: Header=BB0_46 Depth=3
	ld.w	$a1, $sp, 960
	addi.w	$a1, $a1, 1
	st.w	$a1, $sp, 960
	mul.d	$a1, $a1, $s4
	stx.w	$s8, $a1, $t4
	ld.w	$a1, $sp, 960
	mul.d	$a1, $a1, $s4
	add.d	$a1, $t4, $a1
	st.w	$s3, $a1, 8
	ld.w	$a1, $t3, 132
	bge	$s3, $a1, .LBB0_45
# %bb.50:                               # %.lr.ph785.preheader
                                        #   in Loop: Header=BB0_46 Depth=3
	add.d	$a3, $s0, $a0
	ld.w	$a3, $a3, 72
	bnez	$a3, .LBB0_45
# %bb.51:                               # %.lr.ph1308.preheader
                                        #   in Loop: Header=BB0_46 Depth=3
	addi.d	$a3, $s3, 1
	addi.d	$a2, $a2, 116
	.p2align	4, , 16
.LBB0_52:                               # %.lr.ph1308
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_46 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a1, $sp, 960
	ld.wu	$a4, $a2, -68
	mul.d	$a1, $a1, $s4
	ldx.w	$s0, $a1, $t4
	addi.w	$s1, $s0, 1
	bne	$t5, $a4, .LBB0_67
# %bb.53:                               #   in Loop: Header=BB0_52 Depth=4
	add.d	$a1, $t4, $a1
	st.w	$s1, $a1, 0
	alsl.d	$a1, $s0, $a1, 2
	addi.w	$s3, $s3, 1
	st.w	$s3, $a1, 8
	ld.w	$a1, $t3, 132
	bge	$a3, $a1, .LBB0_55
# %bb.54:                               # %.lr.ph785
                                        #   in Loop: Header=BB0_52 Depth=4
	ld.w	$a4, $a2, 0
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 44
	beqz	$a4, .LBB0_52
.LBB0_55:                               # %.loopexit734.loopexit1457
                                        #   in Loop: Header=BB0_46 Depth=3
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1720
	add.d	$s1, $sp, $a2
	b	.LBB0_45
.LBB0_56:                               #   in Loop: Header=BB0_46 Depth=3
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1720
	add.d	$a3, $sp, $a3
	ld.w	$a3, $a3, 0
	beqz	$a3, .LBB0_62
# %bb.57:                               #   in Loop: Header=BB0_46 Depth=3
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$fp, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 72                    # 8-byte Folded Reload
	addi.d	$t4, $sp, 960
	ld.d	$a0, $s6, %pc_lo12(UCptr)
	ld.w	$a1, $t3, 132
	add.d	$a2, $a0, $s0
	addi.d	$a3, $a2, 48
	move	$a4, $s3
	.p2align	4, , 16
.LBB0_58:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_46 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bge	$a4, $a1, .LBB0_78
# %bb.59:                               #   in Loop: Header=BB0_58 Depth=4
	move	$a2, $s3
	ld.w	$a5, $a3, 24
	bnez	$a5, .LBB0_61
# %bb.60:                               #   in Loop: Header=BB0_58 Depth=4
	ld.wu	$a5, $a3, 0
	addi.w	$s3, $a2, 1
	addi.d	$a3, $a3, 44
	addi.d	$a4, $a4, 1
	beq	$t5, $a5, .LBB0_58
.LBB0_61:                               #   in Loop: Header=BB0_46 Depth=3
	move	$s3, $a2
	b	.LBB0_45
.LBB0_62:                               #   in Loop: Header=BB0_46 Depth=3
	ld.w	$a3, $a2, -40
	ld.d	$a4, $t7, %pc_lo12(lArray)
	slli.d	$a5, $a3, 4
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$a5, $a7, $a5
	ld.w	$a6, $a4, 24
	alsl.d	$a3, $a3, $a7, 4
	ld.w	$a3, $a3, 4
	sub.w	$a6, $a6, $a5
	srai.d	$a7, $a6, 31
	ld.w	$t0, $a4, 28
	xor	$a6, $a6, $a7
	ld.w	$t1, $t6, %pc_lo12(nPinLocs)
	sub.d	$a6, $a6, $a7
	sub.w	$a7, $t0, $a3
	srai.d	$t0, $a7, 31
	alsl.d	$a4, $t1, $a4, 4
	ld.w	$t2, $a4, 8
	xor	$a7, $a7, $t0
	sub.d	$a7, $a7, $t0
	add.w	$a6, $a7, $a6
	sub.w	$a5, $t2, $a5
	ld.w	$a4, $a4, 12
	srai.d	$a7, $a5, 31
	xor	$a5, $a5, $a7
	sub.d	$a5, $a5, $a7
	sub.w	$a3, $a4, $a3
	srai.d	$a4, $a3, 31
	xor	$a3, $a3, $a4
	sub.d	$a3, $a3, $a4
	add.w	$a3, $a3, $a5
	sltu	$a3, $a6, $a3
	masknez	$a4, $t1, $a3
	maskeqz	$a3, $s8, $a3
	or	$a3, $a3, $a4
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1720
	add.d	$a4, $sp, $a4
	st.w	$s8, $a4, 0
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1724
	add.d	$a4, $sp, $a4
	st.w	$a3, $a4, 0
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1728
	add.d	$a3, $sp, $a3
	st.w	$s3, $a3, 0
	bge	$s3, $a1, .LBB0_45
# %bb.63:                               # %.lr.ph798.preheader
                                        #   in Loop: Header=BB0_46 Depth=3
	sub.d	$a3, $a1, $s3
	addi.d	$a2, $a2, 48
	.p2align	4, , 16
.LBB0_64:                               # %.lr.ph798
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_46 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a4, $a2, 24
	bnez	$a4, .LBB0_45
# %bb.65:                               #   in Loop: Header=BB0_64 Depth=4
	ld.wu	$a4, $a2, 0
	bne	$t5, $a4, .LBB0_45
# %bb.66:                               #   in Loop: Header=BB0_64 Depth=4
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1720
	add.d	$a4, $sp, $a4
	ld.w	$a4, $a4, 0
	addi.d	$a5, $a4, 1
	lu12i.w	$a6, 1
	ori	$a6, $a6, 1720
	add.d	$a6, $sp, $a6
	st.w	$a5, $a6, 0
	alsl.d	$a4, $a4, $s1, 2
	addi.w	$s3, $s3, 1
	st.w	$s3, $a4, 8
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 44
	bnez	$a3, .LBB0_64
	b	.LBB0_78
.LBB0_67:                               #   in Loop: Header=BB0_46 Depth=3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1312
	add.d	$a1, $sp, $a1
	ld.w	$a1, $a1, 0
	addi.w	$a2, $zero, -1
	beqz	$a1, .LBB0_72
# %bb.68:                               #   in Loop: Header=BB0_46 Depth=3
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$fp, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 16
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	move	$s2, $t5
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(UCptr)
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	blt	$s0, $a1, .LBB0_76
# %bb.69:                               # %.lr.ph790.preheader
                                        #   in Loop: Header=BB0_46 Depth=3
	bstrpick.d	$a2, $s1, 31, 0
	addi.d	$a1, $s0, 2
	addi.d	$t4, $sp, 960
	alsl.d	$a2, $a2, $t4, 2
	ld.d	$t3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_70:                               # %.lr.ph790
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_46 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a3, $sp, 960
	mul.d	$a3, $a3, $s4
	stx.w	$zero, $a2, $a3
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	bgtz	$a1, .LBB0_70
# %bb.71:                               #   in Loop: Header=BB0_46 Depth=3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1720
	add.d	$s1, $sp, $a1
	addi.d	$s2, $sp, 152
	ld.d	$t5, $sp, 112                   # 8-byte Folded Reload
	b	.LBB0_77
.LBB0_72:                               # %.preheader736
                                        #   in Loop: Header=BB0_46 Depth=3
	blt	$s0, $a2, .LBB0_75
# %bb.73:                               # %.lr.ph792.preheader
                                        #   in Loop: Header=BB0_46 Depth=3
	bstrpick.d	$a2, $s1, 31, 0
	addi.d	$a1, $s0, 2
	slli.d	$a2, $a2, 2
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1312
	add.d	$a5, $sp, $a3
	.p2align	4, , 16
.LBB0_74:                               # %.lr.ph792
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_46 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a3, $sp, 960
	mul.d	$a3, $a3, $s4
	add.d	$a3, $t4, $a3
	ldx.w	$a4, $a3, $a2
	stx.w	$a4, $a2, $a5
	stx.w	$zero, $a3, $a2
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	bgtz	$a1, .LBB0_74
.LBB0_75:                               #   in Loop: Header=BB0_46 Depth=3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1720
	add.d	$s1, $sp, $a1
	addi.d	$s2, $sp, 152
	b	.LBB0_77
.LBB0_76:                               #   in Loop: Header=BB0_46 Depth=3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1720
	add.d	$s1, $sp, $a1
	addi.d	$t4, $sp, 960
	addi.d	$s2, $sp, 152
	ld.d	$t3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
.LBB0_77:                               # %.loopexit737
                                        #   in Loop: Header=BB0_46 Depth=3
	ld.w	$a2, $sp, 960
	ld.w	$a1, $t3, 132
	addi.d	$a2, $a2, -1
	st.w	$a2, $sp, 960
	b	.LBB0_45
	.p2align	4, , 16
.LBB0_78:                               # %._crit_edge807.loopexit
                                        #   in Loop: Header=BB0_16 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1720
	add.d	$a0, $sp, $a0
	ld.w	$s2, $a0, 0
	ld.w	$s1, $t6, %pc_lo12(nPinLocs)
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	bge	$s1, $s2, .LBB0_80
.LBB0_79:                               #   in Loop: Header=BB0_16 Depth=2
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$fp, $a0, %got_pc_lo12(fpo)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	move	$a2, $t5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 37
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 112                   # 8-byte Folded Reload
	addi.d	$t4, $sp, 960
.LBB0_80:                               #   in Loop: Header=BB0_16 Depth=2
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	blez	$s2, .LBB0_82
# %bb.81:                               #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a1, $t6, %pc_lo12(nPinLocs)
	bge	$a1, $s2, .LBB0_96
.LBB0_82:                               # %.loopexit748
                                        #   in Loop: Header=BB0_16 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1312
	add.d	$a0, $sp, $a0
	ld.w	$a1, $a0, 0
	ld.w	$a5, $t6, %pc_lo12(nPinLocs)
	add.w	$a0, $a1, $s2
	blez	$a1, .LBB0_93
# %bb.83:                               #   in Loop: Header=BB0_16 Depth=2
	blt	$a5, $a0, .LBB0_94
# %bb.84:                               #   in Loop: Header=BB0_16 Depth=2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1312
	add.d	$a2, $sp, $a2
	alsl.d	$a3, $a1, $a2, 2
	ld.w	$a4, $a3, 4
	ld.d	$a2, $s6, %pc_lo12(UCptr)
	mul.d	$a6, $a4, $s7
	add.d	$a2, $a2, $a6
	ld.w	$a6, $a2, 48
	ld.d	$a2, $t7, %pc_lo12(lArray)
	slli.d	$a7, $a6, 4
	ld.d	$t1, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$a7, $t1, $a7
	ld.w	$t0, $a2, 24
	alsl.d	$a6, $a6, $t1, 4
	ld.w	$a6, $a6, 4
	sub.w	$t0, $t0, $a7
	ld.w	$t1, $a2, 28
	srai.d	$t2, $t0, 31
	xor	$t0, $t0, $t2
	sub.d	$t0, $t0, $t2
	sub.w	$t1, $t1, $a6
	srai.d	$t2, $t1, 31
	alsl.d	$a5, $a5, $a2, 4
	ld.w	$t3, $a5, 8
	xor	$t1, $t1, $t2
	sub.d	$t1, $t1, $t2
	add.w	$t0, $t1, $t0
	sub.w	$a7, $t3, $a7
	ld.w	$t1, $a5, 12
	srai.d	$t2, $a7, 31
	xor	$a7, $a7, $t2
	sub.d	$a7, $a7, $t2
	sub.w	$a6, $t1, $a6
	srai.d	$t1, $a6, 31
	xor	$a6, $a6, $t1
	sub.d	$a6, $a6, $t1
	add.w	$a6, $a6, $a7
	bgeu	$t0, $a6, .LBB0_100
# %bb.85:                               #   in Loop: Header=BB0_16 Depth=2
	st.w	$a4, $a2, 16
	st.w	$s8, $a2, 20
	beq	$a1, $s8, .LBB0_116
# %bb.86:                               # %.lr.ph825.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	ori	$a3, $zero, 1
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1312
	add.d	$t3, $sp, $a4
	ori	$a4, $zero, 3
	bltu	$a1, $a4, .LBB0_90
# %bb.87:                               # %vector.ph
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a3, $a1, -2
	sltu	$a4, $a1, $a3
	masknez	$a3, $a3, $a4
	addi.d	$a4, $a3, 1
	bstrpick.d	$a3, $a4, 31, 1
	slli.d	$a5, $a3, 1
	ori	$a3, $a4, 1
	sub.d	$a6, $a1, $a5
	alsl.d	$a1, $a1, $t3, 2
	addi.d	$a7, $a2, 52
	move	$t0, $a5
	.p2align	4, , 16
.LBB0_88:                               # %vector.body
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t1, $a1, 0
	ld.w	$t2, $a1, -4
	st.w	$t1, $a7, -20
	st.w	$t2, $a7, -4
	st.w	$s8, $a7, -16
	st.w	$s8, $a7, 0
	addi.d	$a1, $a1, -8
	addi.d	$t0, $t0, -2
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB0_88
# %bb.89:                               # %middle.block
                                        #   in Loop: Header=BB0_16 Depth=2
	move	$a1, $a6
	beq	$a4, $a5, .LBB0_116
.LBB0_90:                               # %.lr.ph825.preheader1387
                                        #   in Loop: Header=BB0_16 Depth=2
	alsl.d	$a2, $a3, $a2, 4
	addi.d	$a2, $a2, 20
	addi.d	$a3, $a1, 1
	alsl.d	$a1, $a1, $t3, 2
	.p2align	4, , 16
.LBB0_91:                               # %.lr.ph825
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $a1, 0
	st.w	$a4, $a2, -4
	st.w	$s8, $a2, 0
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, -4
	bltu	$s5, $a3, .LBB0_91
	b	.LBB0_116
	.p2align	4, , 16
.LBB0_92:                               #   in Loop: Header=BB0_16 Depth=2
	move	$s2, $zero
	ori	$s4, $zero, 404
	addi.d	$t4, $sp, 960
	ori	$s5, $zero, 2
	ld.d	$t5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	blt	$s1, $s2, .LBB0_79
	b	.LBB0_80
	.p2align	4, , 16
.LBB0_93:                               #   in Loop: Header=BB0_16 Depth=2
	bge	$a5, $a0, .LBB0_95
.LBB0_94:                               # %.thread1199
                                        #   in Loop: Header=BB0_16 Depth=2
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$fp, $a0, %got_pc_lo12(fpo)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	move	$a2, $t5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 37
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$t6, $sp, 128                   # 8-byte Folded Reload
	addi.d	$t4, $sp, 960
.LBB0_95:                               # %.loopexit746
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$s6, $sp, 960
	bgtz	$s6, .LBB0_117
	b	.LBB0_139
.LBB0_96:                               #   in Loop: Header=BB0_16 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1724
	add.d	$a0, $sp, $a0
	ld.w	$a3, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1728
	add.d	$a0, $sp, $a0
	ld.w	$a2, $a0, 0
	ld.d	$a0, $t7, %pc_lo12(lArray)
	bne	$a3, $s8, .LBB0_103
# %bb.97:                               #   in Loop: Header=BB0_16 Depth=2
	st.w	$a2, $a0, 16
	st.w	$s8, $a0, 20
	beq	$s2, $s8, .LBB0_82
# %bb.98:                               # %.lr.ph817.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	bstrpick.d	$a1, $s2, 31, 0
	ori	$a2, $zero, 3
	bgeu	$s2, $a2, .LBB0_106
# %bb.99:                               #   in Loop: Header=BB0_16 Depth=2
	ori	$a2, $zero, 2
	ori	$a3, $zero, 1
	b	.LBB0_109
.LBB0_100:                              #   in Loop: Header=BB0_16 Depth=2
	st.w	$a4, $a5, 0
	ld.w	$a4, $t6, %pc_lo12(nPinLocs)
	alsl.d	$a4, $a4, $a2, 4
	st.w	$s8, $a4, 4
	beq	$a1, $s8, .LBB0_116
# %bb.101:                              # %.lr.ph821.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a7, $t6, %pc_lo12(nPinLocs)
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1312
	add.d	$t3, $sp, $a4
	ori	$a4, $zero, 3
	bgeu	$a1, $a4, .LBB0_111
# %bb.102:                              #   in Loop: Header=BB0_16 Depth=2
	move	$a4, $a7
	b	.LBB0_114
.LBB0_103:                              #   in Loop: Header=BB0_16 Depth=2
	slli.d	$a1, $a1, 4
	stx.w	$a2, $a0, $a1
	ld.w	$a1, $t6, %pc_lo12(nPinLocs)
	alsl.d	$a1, $a1, $a0, 4
	st.w	$s8, $a1, 4
	beq	$s2, $s8, .LBB0_82
# %bb.104:                              # %.lr.ph812.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a6, $t6, %pc_lo12(nPinLocs)
	addi.d	$a1, $s2, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a4, $a1, -2
	ori	$a2, $zero, 2
	bgeu	$a4, $a2, .LBB0_245
# %bb.105:                              #   in Loop: Header=BB0_16 Depth=2
	move	$a3, $a6
	b	.LBB0_248
.LBB0_106:                              # %vector.ph1340
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a4, $a1, -1
	move	$a5, $a4
	bstrins.d	$a5, $zero, 0, 0
	ori	$a3, $a4, 1
	addi.d	$a2, $a5, 2
	addi.d	$a6, $a0, 52
	move	$a7, $a5
	lu12i.w	$t0, 1
	ori	$t0, $t0, 1736
	add.d	$t0, $sp, $t0
	.p2align	4, , 16
.LBB0_107:                              # %vector.body1343
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t1, $t0, -4
	ld.w	$t2, $t0, 0
	st.w	$t1, $a6, -20
	st.w	$t2, $a6, -4
	st.w	$s8, $a6, -16
	st.w	$s8, $a6, 0
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, -2
	addi.d	$t0, $t0, 8
	bnez	$a7, .LBB0_107
# %bb.108:                              # %middle.block1348
                                        #   in Loop: Header=BB0_16 Depth=2
	beq	$a4, $a5, .LBB0_82
.LBB0_109:                              # %.lr.ph817.preheader1390
                                        #   in Loop: Header=BB0_16 Depth=2
	sub.d	$a1, $a1, $a3
	alsl.d	$a0, $a3, $a0, 4
	addi.d	$a0, $a0, 20
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1724
	add.d	$a3, $sp, $a3
	alsl.d	$a2, $a2, $a3, 2
	.p2align	4, , 16
.LBB0_110:                              # %.lr.ph817
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a3, $a2, 0
	st.w	$a3, $a0, -4
	st.w	$s8, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 16
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB0_110
	b	.LBB0_82
.LBB0_111:                              # %vector.ph1326
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a4, $a1, -2
	sltu	$a5, $a1, $a4
	masknez	$a4, $a4, $a5
	addi.d	$a5, $a4, 1
	bstrpick.d	$a4, $a5, 31, 1
	slli.d	$a6, $a4, 1
	sub.d	$a4, $a7, $a6
	sub.d	$a1, $a1, $a6
	alsl.d	$a7, $a7, $a2, 4
	addi.d	$a7, $a7, -16
	move	$t0, $a6
	.p2align	4, , 16
.LBB0_112:                              # %vector.body1329
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t1, $a3, 0
	ld.w	$t2, $a3, -4
	st.w	$t1, $a7, 0
	st.w	$t2, $a7, -16
	st.w	$s8, $a7, 4
	st.w	$s8, $a7, -12
	addi.d	$t0, $t0, -2
	addi.d	$a7, $a7, -32
	addi.d	$a3, $a3, -8
	bnez	$t0, .LBB0_112
# %bb.113:                              # %middle.block1334
                                        #   in Loop: Header=BB0_16 Depth=2
	beq	$a5, $a6, .LBB0_116
.LBB0_114:                              # %.lr.ph821.preheader1388
                                        #   in Loop: Header=BB0_16 Depth=2
	alsl.d	$a2, $a4, $a2, 4
	addi.d	$a2, $a2, -16
	addi.d	$a3, $a1, 1
	alsl.d	$a1, $a1, $t3, 2
	.p2align	4, , 16
.LBB0_115:                              # %.lr.ph821
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $a1, 0
	st.w	$a4, $a2, 0
	st.w	$s8, $a2, 4
	addi.d	$a2, $a2, -16
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, -4
	bltu	$s5, $a3, .LBB0_115
.LBB0_116:                              #   in Loop: Header=BB0_16 Depth=2
	move	$s2, $a0
	ld.w	$s6, $sp, 960
	blez	$s6, .LBB0_139
.LBB0_117:                              # %.lr.ph843.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a0, $s6, 1
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ori	$s5, $zero, 1
	addi.d	$s0, $sp, 1376
	b	.LBB0_119
	.p2align	4, , 16
.LBB0_118:                              #   in Loop: Header=BB0_119 Depth=3
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$fp, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ori	$a1, $zero, 34
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a1, $a1, %pc_lo12(.L.str.15)
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$t6, $sp, 128                   # 8-byte Folded Reload
	addi.d	$t4, $sp, 960
	addi.d	$s5, $s5, 1
	addi.d	$s0, $s0, 404
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$s5, $a0, .LBB0_139
.LBB0_119:                              # %.lr.ph843
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_128 Depth 4
	mul.d	$a0, $s5, $s4
	ldx.wu	$s7, $a0, $t4
	ld.w	$a1, $t6, %pc_lo12(nPinLocs)
	add.w	$fp, $s7, $s2
	blt	$a1, $fp, .LBB0_118
# %bb.120:                              # %.preheader733
                                        #   in Loop: Header=BB0_119 Depth=3
	addi.w	$s4, $s7, 0
	add.d	$s2, $t4, $a0
	blez	$s4, .LBB0_123
# %bb.121:                              #   in Loop: Header=BB0_119 Depth=3
	ld.w	$a0, $s2, 8
	addi.w	$s1, $s4, 1
	pcaddu18i	$ra, %call36(findLoc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 2
	bne	$s1, $a0, .LBB0_124
# %bb.122:                              #   in Loop: Header=BB0_119 Depth=3
	move	$a0, $a1
	addi.d	$t4, $sp, 960
	move	$s1, $a1
	ld.d	$t6, $sp, 128                   # 8-byte Folded Reload
	b	.LBB0_134
.LBB0_123:                              #   in Loop: Header=BB0_119 Depth=3
	move	$a0, $zero
	b	.LBB0_134
.LBB0_124:                              # %.peel.next
                                        #   in Loop: Header=BB0_119 Depth=3
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	move	$fp, $s3
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	alsl.d	$a0, $s4, $s2, 2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ori	$s2, $zero, 2
	ori	$a0, $zero, 3
	bne	$s1, $a0, .LBB0_126
# %bb.125:                              #   in Loop: Header=BB0_119 Depth=3
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	b	.LBB0_130
.LBB0_126:                              # %.peel.next.split
                                        #   in Loop: Header=BB0_119 Depth=3
	ori	$s2, $zero, 2
	move	$s1, $s0
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	b	.LBB0_128
	.p2align	4, , 16
.LBB0_127:                              #   in Loop: Header=BB0_128 Depth=4
	ld.w	$a0, $s1, 0
	pcaddu18i	$ra, %call36(findLoc)
	jirl	$ra, $ra, 0
	add.d	$s3, $a0, $s3
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 4
	beq	$s7, $s2, .LBB0_130
.LBB0_128:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_119 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bne	$s7, $s2, .LBB0_127
# %bb.129:                              #   in Loop: Header=BB0_128 Depth=4
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 4
	pcaddu18i	$ra, %call36(findLoc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	add.d	$s3, $a0, $s3
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 4
	bne	$s7, $s2, .LBB0_128
.LBB0_130:                              # %._crit_edge832.loopexit.peel.begin
                                        #   in Loop: Header=BB0_119 Depth=3
	bne	$s2, $s4, .LBB0_132
# %bb.131:                              #   in Loop: Header=BB0_119 Depth=3
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 4
	pcaddu18i	$ra, %call36(findLoc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	b	.LBB0_133
.LBB0_132:                              #   in Loop: Header=BB0_119 Depth=3
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a1, 2
	move	$s2, $a1
	ld.w	$a0, $a0, 4
	pcaddu18i	$ra, %call36(findLoc)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
.LBB0_133:                              # %._crit_edge832.loopexit.peel.next
                                        #   in Loop: Header=BB0_119 Depth=3
	add.w	$a0, $a0, $s3
	addi.d	$t4, $sp, 960
	move	$s3, $fp
	ld.d	$t6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
.LBB0_134:                              # %._crit_edge832
                                        #   in Loop: Header=BB0_119 Depth=3
	addi.w	$a1, $zero, -2
	div.w	$a1, $s4, $a1
	div.w	$a0, $a0, $s4
	add.w	$a0, $a0, $a1
	blez	$a0, .LBB0_138
# %bb.135:                              #   in Loop: Header=BB0_119 Depth=3
	ld.w	$a1, $t6, %pc_lo12(nPinLocs)
	sub.d	$a1, $a1, $s4
	addi.w	$a1, $a1, 1
	slt	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	ori	$s4, $zero, 404
	addi.w	$a1, $s1, 0
	addi.w	$a2, $s3, 0
	bge	$a2, $a1, .LBB0_137
.LBB0_136:                              #   in Loop: Header=BB0_119 Depth=3
	sub.d	$a0, $zero, $a0
.LBB0_137:                              #   in Loop: Header=BB0_119 Depth=3
	st.w	$a0, $s2, 4
	move	$s2, $fp
	addi.d	$s5, $s5, 1
	addi.d	$s0, $s0, 404
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	bne	$s5, $a0, .LBB0_119
	b	.LBB0_139
.LBB0_138:                              #   in Loop: Header=BB0_119 Depth=3
	ori	$a0, $zero, 1
	ori	$s4, $zero, 404
	addi.w	$a1, $s1, 0
	addi.w	$a2, $s3, 0
	blt	$a2, $a1, .LBB0_136
	b	.LBB0_137
	.p2align	4, , 16
.LBB0_139:                              # %._crit_edge844
                                        #   in Loop: Header=BB0_16 Depth=2
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	ld.w	$s3, $sp, 152
	ld.w	$a0, $t6, %pc_lo12(nPinLocs)
	add.w	$fp, $s3, $s2
	bge	$a0, $fp, .LBB0_141
# %bb.140:                              #   in Loop: Header=BB0_16 Depth=2
	sub.w	$s3, $a0, $s2
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$s0, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	ori	$a1, $zero, 36
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	ori	$a1, $zero, 36
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(nPinLocs)
	ld.d	$a0, $s0, 0
	sub.w	$a2, $fp, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a1, $a1, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_141:                              #   in Loop: Header=BB0_16 Depth=2
	st.d	$s1, $sp, 136                   # 8-byte Folded Spill
	ori	$s5, $zero, 2
	blez	$s3, .LBB0_144
# %bb.142:                              # %.lr.ph851.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	move	$fp, $zero
	addi.d	$s0, $sp, 160
	.p2align	4, , 16
.LBB0_143:                              # %.lr.ph851
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(findLoc)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, -4
	addi.d	$fp, $fp, 1
	addi.d	$s0, $s0, 8
	bltu	$fp, $s3, .LBB0_143
.LBB0_144:                              # %.preheader745
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$ra, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a2, $ra, %pc_lo12(nPinLocs)
	addi.w	$a0, $a2, 1
	addi.d	$t7, $sp, 1368
	addi.d	$t4, $sp, 1372
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$s2, $sp, 152
	blez	$a2, .LBB0_149
# %bb.145:                              # %.lr.ph855
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$t5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $t5, %pc_lo12(lArray)
	ld.w	$a1, $a3, 20
	ori	$s7, $zero, 44
	bne	$a1, $s8, .LBB0_150
# %bb.146:                              # %.lr.ph1311.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	move	$a1, $zero
	bstrpick.d	$a4, $a0, 31, 0
	addi.d	$a3, $a3, 36
	addi.d	$a4, $a4, -2
	addi.d	$s0, $sp, 960
	.p2align	4, , 16
.LBB0_147:                              # %.lr.ph1311
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beqz	$a4, .LBB0_152
# %bb.148:                              #   in Loop: Header=BB0_147 Depth=3
	ld.w	$a5, $a3, 0
	addi.w	$a1, $a1, 1
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, -1
	beq	$a5, $s8, .LBB0_147
	b	.LBB0_151
	.p2align	4, , 16
.LBB0_149:                              # %._crit_edge856.thread
                                        #   in Loop: Header=BB0_16 Depth=2
	move	$a1, $zero
	addi.d	$s0, $sp, 960
	ori	$s7, $zero, 44
	ld.d	$t5, $sp, 80                    # 8-byte Folded Reload
	b	.LBB0_158
.LBB0_150:                              #   in Loop: Header=BB0_16 Depth=2
	move	$a1, $zero
	addi.d	$s0, $sp, 960
.LBB0_151:                              # %.lr.ph865
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a3, $t5, %pc_lo12(lArray)
	alsl.d	$a4, $a2, $a3, 4
	ld.w	$a4, $a4, 4
	bne	$a4, $s8, .LBB0_158
	b	.LBB0_153
.LBB0_152:                              #   in Loop: Header=BB0_16 Depth=2
	move	$a1, $a2
	ld.d	$a3, $t5, %pc_lo12(lArray)
	alsl.d	$a4, $a2, $a3, 4
	ld.w	$a4, $a4, 4
	bne	$a4, $s8, .LBB0_158
	.p2align	4, , 16
.LBB0_153:                              # %.lr.ph1316
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blt	$a2, $s5, .LBB0_156
# %bb.154:                              #   in Loop: Header=BB0_153 Depth=3
	addi.w	$a2, $a2, -1
	alsl.d	$a0, $a2, $a3, 4
	ld.w	$a0, $a0, 4
	beq	$a0, $s8, .LBB0_153
# %bb.155:                              # %.preheader731.preheader.loopexit
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.w	$a0, $a2, 1
	b	.LBB0_158
.LBB0_156:                              #   in Loop: Header=BB0_16 Depth=2
	ori	$a0, $zero, 1
	b	.LBB0_158
	.p2align	4, , 16
.LBB0_157:                              # %.loopexit732
                                        #   in Loop: Header=BB0_158 Depth=3
	beqz	$t0, .LBB0_181
.LBB0_158:                              # %.preheader731
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_163 Depth 4
                                        #           Child Loop BB0_176 Depth 5
                                        #           Child Loop BB0_173 Depth 5
                                        #           Child Loop BB0_179 Depth 5
                                        #           Child Loop BB0_169 Depth 5
	blez	$s6, .LBB0_186
# %bb.159:                              # %.lr.ph893
                                        #   in Loop: Header=BB0_158 Depth=3
	ld.d	$a3, $t5, %pc_lo12(lArray)
	move	$t0, $zero
	addi.d	$a2, $a3, 20
	addi.d	$a3, $a3, 4
	ori	$a7, $zero, 1
	move	$a4, $t4
	move	$a5, $t7
	b	.LBB0_163
	.p2align	4, , 16
.LBB0_160:                              # %.loopexit715
                                        #   in Loop: Header=BB0_163 Depth=4
	add.w	$a1, $t0, $a1
.LBB0_161:                              # %.sink.split
                                        #   in Loop: Header=BB0_163 Depth=4
	st.w	$zero, $a7, 4
	ori	$t0, $zero, 1
.LBB0_162:                              #   in Loop: Header=BB0_163 Depth=4
	ld.w	$s6, $sp, 960
	addi.d	$a7, $a6, 1
	addi.d	$a5, $a5, 404
	addi.d	$a4, $a4, 404
	bge	$a6, $s6, .LBB0_157
.LBB0_163:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_158 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_176 Depth 5
                                        #           Child Loop BB0_173 Depth 5
                                        #           Child Loop BB0_179 Depth 5
                                        #           Child Loop BB0_169 Depth 5
	move	$a6, $a7
	mul.d	$a7, $a7, $s4
	add.d	$a7, $s0, $a7
	ld.w	$t2, $a7, 4
	beqz	$t2, .LBB0_162
# %bb.164:                              #   in Loop: Header=BB0_163 Depth=4
	srai.d	$t1, $t2, 31
	xor	$t3, $t2, $t1
	sub.w	$t3, $t3, $t1
	addi.w	$t1, $a1, 1
	bge	$t1, $t3, .LBB0_170
# %bb.165:                              #   in Loop: Header=BB0_163 Depth=4
	ld.w	$t1, $a7, 0
	add.w	$t3, $t1, $t3
	blt	$t3, $a0, .LBB0_162
# %bb.166:                              #   in Loop: Header=BB0_163 Depth=4
	blez	$t2, .LBB0_177
# %bb.167:                              #   in Loop: Header=BB0_163 Depth=4
	blez	$t1, .LBB0_180
# %bb.168:                              # %.lr.ph885.preheader
                                        #   in Loop: Header=BB0_163 Depth=4
	move	$t0, $zero
	sub.w	$t1, $a0, $t1
	alsl.d	$t2, $t1, $a3, 4
	.p2align	4, , 16
.LBB0_169:                              # %.lr.ph885
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_158 Depth=3
                                        #         Parent Loop BB0_163 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ldx.w	$t3, $a4, $t0
	st.w	$t3, $t2, -4
	st.w	$s8, $t2, 0
	addi.d	$t1, $t1, 1
	addi.d	$t0, $t0, 4
	addi.d	$t2, $t2, 16
	blt	$t1, $a0, .LBB0_169
	b	.LBB0_180
	.p2align	4, , 16
.LBB0_170:                              #   in Loop: Header=BB0_163 Depth=4
	ld.w	$t0, $a7, 0
	blez	$t2, .LBB0_174
# %bb.171:                              # %.preheader
                                        #   in Loop: Header=BB0_163 Depth=4
	blez	$t0, .LBB0_160
# %bb.172:                              # %.lr.ph877.preheader
                                        #   in Loop: Header=BB0_163 Depth=4
	move	$t1, $zero
	alsl.d	$t2, $a1, $a2, 4
	move	$t3, $a4
	.p2align	4, , 16
.LBB0_173:                              # %.lr.ph877
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_158 Depth=3
                                        #         Parent Loop BB0_163 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$t0, $t3, 0
	st.w	$t0, $t2, -4
	st.w	$s8, $t2, 0
	ld.w	$t0, $a7, 0
	addi.d	$t2, $t2, 16
	addi.d	$t1, $t1, 1
	addi.d	$t3, $t3, 4
	blt	$t1, $t0, .LBB0_173
	b	.LBB0_160
.LBB0_174:                              #   in Loop: Header=BB0_163 Depth=4
	blez	$t0, .LBB0_160
# %bb.175:                              # %.lr.ph874.preheader
                                        #   in Loop: Header=BB0_163 Depth=4
	move	$t1, $zero
	alsl.d	$t2, $t0, $a5, 2
	alsl.d	$t3, $a1, $a2, 4
	.p2align	4, , 16
.LBB0_176:                              # %.lr.ph874
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_158 Depth=3
                                        #         Parent Loop BB0_163 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$t0, $t2, 0
	st.w	$t0, $t3, -4
	st.w	$s8, $t3, 0
	ld.w	$t0, $a7, 0
	addi.d	$t2, $t2, -4
	addi.d	$t1, $t1, 1
	addi.d	$t3, $t3, 16
	blt	$t1, $t0, .LBB0_176
	b	.LBB0_160
.LBB0_177:                              #   in Loop: Header=BB0_163 Depth=4
	blez	$t1, .LBB0_180
# %bb.178:                              # %.lr.ph881.preheader
                                        #   in Loop: Header=BB0_163 Depth=4
	sub.w	$t0, $a0, $t1
	slli.d	$t1, $t1, 2
	alsl.d	$t2, $t0, $a3, 4
	.p2align	4, , 16
.LBB0_179:                              # %.lr.ph881
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_158 Depth=3
                                        #         Parent Loop BB0_163 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ldx.w	$t3, $a5, $t1
	st.w	$t3, $t2, -4
	st.w	$s8, $t2, 0
	addi.d	$t0, $t0, 1
	addi.d	$t1, $t1, -4
	addi.d	$t2, $t2, 16
	blt	$t0, $a0, .LBB0_179
.LBB0_180:                              # %.loopexit
                                        #   in Loop: Header=BB0_163 Depth=4
	ld.w	$t0, $a7, 0
	sub.w	$a0, $a0, $t0
	b	.LBB0_161
	.p2align	4, , 16
.LBB0_181:                              # %.preheader744
                                        #   in Loop: Header=BB0_16 Depth=2
	blez	$s6, .LBB0_186
# %bb.182:                              # %.lr.ph902.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	move	$a3, $zero
	move	$a2, $zero
	addi.d	$a4, $s6, 1
	bstrpick.d	$a4, $a4, 31, 0
	mul.d	$a4, $a4, $s4
	addi.d	$a4, $a4, -404
	addi.d	$t8, $sp, 964
	addi.d	$fp, $sp, 968
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	b	.LBB0_184
	.p2align	4, , 16
.LBB0_183:                              #   in Loop: Header=BB0_184 Depth=3
	addi.d	$a3, $a3, 404
	beq	$a4, $a3, .LBB0_210
.LBB0_184:                              # %.lr.ph902
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a5, $s0, $a3
	ld.w	$a6, $a5, 408
	beqz	$a6, .LBB0_183
# %bb.185:                              #   in Loop: Header=BB0_184 Depth=3
	ld.w	$a5, $a5, 404
	add.w	$a2, $a5, $a2
	b	.LBB0_183
	.p2align	4, , 16
.LBB0_186:                              #   in Loop: Header=BB0_16 Depth=2
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
.LBB0_187:                              # %.preheader742
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	addi.d	$s4, $a0, 1
	ld.d	$t3, $sp, 80                    # 8-byte Folded Reload
	blez	$s3, .LBB0_205
# %bb.188:                              # %.lr.ph944
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a0, $t3, %pc_lo12(lArray)
	move	$a1, $zero
	addi.d	$a2, $sp, 156
	b	.LBB0_190
	.p2align	4, , 16
.LBB0_189:                              #   in Loop: Header=BB0_190 Depth=3
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 8
	bgeu	$a1, $s3, .LBB0_192
.LBB0_190:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a3, $a2, 0
	alsl.d	$a3, $a3, $a0, 4
	ld.w	$a4, $a3, 4
	bnez	$a4, .LBB0_189
# %bb.191:                              #   in Loop: Header=BB0_190 Depth=3
	ld.w	$a4, $a2, 4
	st.w	$s8, $a3, 4
	st.w	$a4, $a3, 0
	st.w	$zero, $a2, 0
	b	.LBB0_189
	.p2align	4, , 16
.LBB0_192:                              # %.lr.ph950.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	ori	$a1, $zero, 1
	b	.LBB0_196
.LBB0_193:                              # %.loopexit718.sink.splitsplit
                                        #   in Loop: Header=BB0_196 Depth=3
	alsl.d	$a2, $a2, $a4, 4
	addi.d	$a2, $a2, 16
.LBB0_194:                              # %.loopexit718.sink.split
                                        #   in Loop: Header=BB0_196 Depth=3
	st.w	$s8, $a2, 4
	ld.w	$a3, $a1, 0
	st.w	$a3, $a2, 0
	st.w	$zero, $a1, -4
	.p2align	4, , 16
.LBB0_195:                              # %.loopexit718
                                        #   in Loop: Header=BB0_196 Depth=3
	addi.d	$a1, $a0, 1
	bgeu	$a0, $s3, .LBB0_205
.LBB0_196:                              # %.lr.ph950
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_200 Depth 4
	move	$a0, $a1
	alsl.d	$a1, $a1, $s2, 3
	ld.w	$a2, $a1, -4
	beqz	$a2, .LBB0_195
# %bb.197:                              # %.preheader717
                                        #   in Loop: Header=BB0_196 Depth=3
	ld.w	$a3, $ra, %pc_lo12(nPinLocs)
	blt	$a3, $s5, .LBB0_195
# %bb.198:                              # %.lr.ph947
                                        #   in Loop: Header=BB0_196 Depth=3
	ld.d	$a4, $t3, %pc_lo12(lArray)
	slli.d	$a5, $a2, 4
	addi.d	$a6, $a2, -1
	addi.d	$a7, $a2, 1
	addi.d	$t0, $a3, -1
	move	$t1, $a4
	b	.LBB0_200
	.p2align	4, , 16
.LBB0_199:                              #   in Loop: Header=BB0_200 Depth=4
	addi.d	$t1, $t1, -16
	addi.d	$a6, $a6, -1
	addi.d	$a4, $a4, 16
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 1
	beqz	$t0, .LBB0_195
.LBB0_200:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_196 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	blt	$a3, $a7, .LBB0_202
# %bb.201:                              #   in Loop: Header=BB0_200 Depth=4
	add.d	$t2, $a4, $a5
	ld.w	$t2, $t2, 20
	beqz	$t2, .LBB0_193
.LBB0_202:                              #   in Loop: Header=BB0_200 Depth=4
	blez	$a6, .LBB0_199
# %bb.203:                              #   in Loop: Header=BB0_200 Depth=4
	add.d	$t2, $t1, $a5
	ld.w	$t2, $t2, -12
	bnez	$t2, .LBB0_199
# %bb.204:                              # %..loopexit718.sink.split_crit_edge
                                        #   in Loop: Header=BB0_196 Depth=3
	alsl.d	$a2, $a2, $t1, 4
	addi.d	$a2, $a2, -16
	b	.LBB0_194
	.p2align	4, , 16
.LBB0_205:                              # %.preheader740
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a2, $ra, %pc_lo12(nPinLocs)
	ld.d	$a0, $t3, %pc_lo12(lArray)
	blez	$a2, .LBB0_14
# %bb.206:                              # %.lr.ph953
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a1, $s6, %pc_lo12(UCptr)
	move	$a3, $zero
	addi.d	$a0, $a0, 28
	b	.LBB0_208
	.p2align	4, , 16
.LBB0_207:                              #   in Loop: Header=BB0_208 Depth=3
	addi.d	$a3, $a3, 1
	addi.d	$a0, $a0, 16
	bge	$a3, $a2, .LBB0_13
.LBB0_208:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $a0, -8
	bne	$a4, $s8, .LBB0_207
# %bb.209:                              #   in Loop: Header=BB0_208 Depth=3
	ld.w	$a2, $a0, -12
	ld.d	$a4, $a0, -4
	mul.d	$a2, $a2, $s7
	add.d	$a2, $a1, $a2
	st.d	$a4, $a2, 36
	ld.w	$a2, $ra, %pc_lo12(nPinLocs)
	b	.LBB0_207
.LBB0_210:                              # %.preheader743
                                        #   in Loop: Header=BB0_16 Depth=2
	blez	$a2, .LBB0_187
# %bb.211:                              # %.lr.ph940
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(lArray)
	addi.d	$a3, $a3, 20
	b	.LBB0_213
	.p2align	4, , 16
.LBB0_212:                              # %.loopexit727
                                        #   in Loop: Header=BB0_213 Depth=3
	add.w	$a1, $t1, $a4
	st.w	$zero, $a6, 4
	sub.w	$a2, $a2, $a4
	blez	$a2, .LBB0_187
.LBB0_213:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_217 Depth 4
                                        #         Child Loop BB0_240 Depth 4
                                        #         Child Loop BB0_230 Depth 4
                                        #         Child Loop BB0_233 Depth 4
                                        #         Child Loop BB0_226 Depth 4
                                        #         Child Loop BB0_243 Depth 4
                                        #         Child Loop BB0_237 Depth 4
	ld.w	$a5, $ra, %pc_lo12(nPinLocs)
	ld.w	$a4, $sp, 960
	addi.w	$a6, $a5, 1
	blez	$a4, .LBB0_221
# %bb.214:                              # %.lr.ph911.preheader
                                        #   in Loop: Header=BB0_213 Depth=3
	move	$a5, $zero
	move	$t0, $zero
	addi.d	$a4, $a4, 1
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a4, $a4, -1
	ori	$t1, $zero, 1
	move	$t2, $t7
	move	$a7, $a6
	b	.LBB0_217
	.p2align	4, , 16
.LBB0_215:                              #   in Loop: Header=BB0_217 Depth=4
	slt	$t4, $t3, $a7
	masknez	$a5, $a5, $t4
	maskeqz	$t5, $t1, $t4
	or	$a5, $t5, $a5
	masknez	$a7, $a7, $t4
	maskeqz	$t3, $t3, $t4
	or	$a7, $t3, $a7
.LBB0_216:                              #   in Loop: Header=BB0_217 Depth=4
	addi.w	$t1, $t1, 1
	addi.d	$a4, $a4, -1
	addi.d	$t2, $t2, 404
	beqz	$a4, .LBB0_220
.LBB0_217:                              # %.lr.ph911
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_213 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$t3, $t2, 0
	beqz	$t3, .LBB0_216
# %bb.218:                              #   in Loop: Header=BB0_217 Depth=4
	srai.d	$t4, $t3, 31
	xor	$t3, $t3, $t4
	sub.w	$t3, $t3, $t4
	bge	$t3, $a6, .LBB0_215
# %bb.219:                              #   in Loop: Header=BB0_217 Depth=4
	sltui	$t4, $t0, 1
	masknez	$t0, $t0, $t4
	maskeqz	$a5, $a5, $t4
	or	$a5, $a5, $t0
	masknez	$a6, $a6, $t4
	maskeqz	$a7, $a7, $t4
	or	$a7, $a7, $a6
	move	$a6, $t3
	move	$t0, $t1
	b	.LBB0_216
	.p2align	4, , 16
.LBB0_220:                              # %.preheader730.loopexit
                                        #   in Loop: Header=BB0_213 Depth=3
	mul.d	$a4, $t0, $s4
	ldx.w	$a4, $a4, $s0
	b	.LBB0_222
	.p2align	4, , 16
.LBB0_221:                              #   in Loop: Header=BB0_213 Depth=3
	move	$t0, $zero
	move	$a5, $zero
	move	$a7, $a6
.LBB0_222:                              # %.preheader730
                                        #   in Loop: Header=BB0_213 Depth=3
	add.w	$a6, $a2, $a6
	slt	$t1, $a0, $a6
	masknez	$a6, $a6, $t1
	maskeqz	$t1, $a0, $t1
	or	$t2, $t1, $a6
	sub.d	$a6, $t2, $a2
	mul.d	$t0, $t0, $s4
	st.d	$a6, $sp, 136                   # 8-byte Folded Spill
	addi.w	$t1, $a6, -1
	add.w	$t3, $t1, $a4
	add.d	$a6, $s0, $t0
	bge	$a7, $t3, .LBB0_227
# %bb.223:                              #   in Loop: Header=BB0_213 Depth=3
	sub.w	$t1, $t3, $a7
	bstrpick.d	$t3, $t1, 31, 1
	nor	$t4, $a2, $zero
	add.w	$t4, $t2, $t4
	slt	$t5, $a1, $t4
	masknez	$t6, $t4, $t5
	maskeqz	$a1, $a1, $t5
	or	$a1, $a1, $t6
	sub.w	$a1, $t4, $a1
	add.d	$t2, $a4, $t2
	add.d	$a7, $a2, $a7
	slt	$t5, $t3, $t1
	masknez	$t1, $t1, $t5
	maskeqz	$t3, $t3, $t5
	or	$t1, $t3, $t1
	add.d	$a7, $a7, $t1
	nor	$a7, $a7, $zero
	add.w	$a7, $a7, $t2
	sltu	$t1, $a1, $a7
	ld.w	$t2, $a6, 4
	masknez	$a7, $a7, $t1
	maskeqz	$a1, $a1, $t1
	or	$a1, $a1, $a7
	sub.w	$a7, $t4, $a1
	blez	$t2, .LBB0_231
# %bb.224:                              # %.preheader722
                                        #   in Loop: Header=BB0_213 Depth=3
	blez	$a4, .LBB0_234
# %bb.225:                              # %.lr.ph929.preheader
                                        #   in Loop: Header=BB0_213 Depth=3
	move	$t1, $zero
	alsl.d	$a7, $a7, $a3, 4
	add.d	$t0, $fp, $t0
	.p2align	4, , 16
.LBB0_226:                              # %.lr.ph929
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_213 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a4, $t0, 0
	st.w	$a4, $a7, -4
	st.w	$s8, $a7, 0
	ld.w	$a4, $a6, 0
	addi.d	$a7, $a7, 16
	addi.d	$t1, $t1, 1
	addi.d	$t0, $t0, 4
	blt	$t1, $a4, .LBB0_226
	b	.LBB0_234
	.p2align	4, , 16
.LBB0_227:                              #   in Loop: Header=BB0_213 Depth=3
	ld.w	$a1, $a6, 4
	blez	$a1, .LBB0_238
# %bb.228:                              # %.preheader726
                                        #   in Loop: Header=BB0_213 Depth=3
	blez	$a4, .LBB0_212
# %bb.229:                              # %.lr.ph922
                                        #   in Loop: Header=BB0_213 Depth=3
	move	$a1, $zero
	alsl.d	$a5, $t1, $a3, 4
	add.d	$a7, $fp, $t0
	.p2align	4, , 16
.LBB0_230:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_213 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a4, $a7, 0
	st.w	$a4, $a5, -4
	st.w	$s8, $a5, 0
	ld.w	$a4, $a6, 0
	addi.d	$a5, $a5, 16
	addi.d	$a1, $a1, 1
	addi.d	$a7, $a7, 4
	blt	$a1, $a4, .LBB0_230
	b	.LBB0_212
.LBB0_231:                              # %.preheader724
                                        #   in Loop: Header=BB0_213 Depth=3
	blez	$a4, .LBB0_234
# %bb.232:                              # %.lr.ph926.preheader
                                        #   in Loop: Header=BB0_213 Depth=3
	move	$t1, $zero
	alsl.d	$a4, $a4, $t0, 2
	add.d	$t0, $t8, $a4
	alsl.d	$a7, $a7, $a3, 4
	.p2align	4, , 16
.LBB0_233:                              # %.lr.ph926
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_213 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a4, $t0, 0
	st.w	$a4, $a7, -4
	st.w	$s8, $a7, 0
	ld.w	$a4, $a6, 0
	addi.d	$t0, $t0, -4
	addi.d	$t1, $t1, 1
	addi.d	$a7, $a7, 16
	blt	$t1, $a4, .LBB0_233
.LBB0_234:                              # %.loopexit723
                                        #   in Loop: Header=BB0_213 Depth=3
	st.w	$zero, $a6, 4
	mul.d	$a7, $a5, $s4
	add.d	$a5, $s0, $a7
	ld.w	$t0, $a5, 4
	ldx.w	$a6, $a7, $s0
	ld.d	$t1, $sp, 136                   # 8-byte Folded Reload
	sub.d	$t1, $t1, $a1
	st.d	$t1, $sp, 136                   # 8-byte Folded Spill
	add.d	$a1, $t1, $a4
	addi.w	$a1, $a1, -1
	blez	$t0, .LBB0_241
# %bb.235:                              # %.preheader719
                                        #   in Loop: Header=BB0_213 Depth=3
	blez	$a6, .LBB0_244
# %bb.236:                              # %.lr.ph937.preheader
                                        #   in Loop: Header=BB0_213 Depth=3
	move	$t0, $zero
	alsl.d	$t1, $a1, $a3, 4
	add.d	$a7, $fp, $a7
	.p2align	4, , 16
.LBB0_237:                              # %.lr.ph937
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_213 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a6, $a7, 0
	st.w	$a6, $t1, -4
	st.w	$s8, $t1, 0
	ld.w	$a6, $a5, 0
	addi.d	$t1, $t1, 16
	addi.d	$t0, $t0, 1
	addi.d	$a7, $a7, 4
	blt	$t0, $a6, .LBB0_237
	b	.LBB0_244
.LBB0_238:                              # %.preheader728
                                        #   in Loop: Header=BB0_213 Depth=3
	blez	$a4, .LBB0_212
# %bb.239:                              # %.lr.ph919
                                        #   in Loop: Header=BB0_213 Depth=3
	move	$a1, $zero
	alsl.d	$a4, $a4, $t0, 2
	add.d	$a5, $t8, $a4
	alsl.d	$a7, $t1, $a3, 4
	.p2align	4, , 16
.LBB0_240:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_213 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a4, $a5, 0
	st.w	$a4, $a7, -4
	st.w	$s8, $a7, 0
	ld.w	$a4, $a6, 0
	addi.d	$a5, $a5, -4
	addi.d	$a1, $a1, 1
	addi.d	$a7, $a7, 16
	blt	$a1, $a4, .LBB0_240
	b	.LBB0_212
.LBB0_241:                              #   in Loop: Header=BB0_213 Depth=3
	blez	$a6, .LBB0_244
# %bb.242:                              # %.lr.ph934.preheader
                                        #   in Loop: Header=BB0_213 Depth=3
	move	$t0, $zero
	alsl.d	$a6, $a6, $a7, 2
	add.d	$a7, $t8, $a6
	alsl.d	$t1, $a1, $a3, 4
	.p2align	4, , 16
.LBB0_243:                              # %.lr.ph934
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_213 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a6, $a7, 0
	st.w	$a6, $t1, -4
	st.w	$s8, $t1, 0
	ld.w	$a6, $a5, 0
	addi.d	$a7, $a7, -4
	addi.d	$t0, $t0, 1
	addi.d	$t1, $t1, 16
	blt	$t0, $a6, .LBB0_243
.LBB0_244:                              # %.loopexit720
                                        #   in Loop: Header=BB0_213 Depth=3
	add.w	$a1, $a6, $a1
	st.w	$zero, $a5, 4
	add.d	$a4, $a6, $a4
	sub.w	$a2, $a2, $a4
	bgtz	$a2, .LBB0_213
	b	.LBB0_187
.LBB0_245:                              # %vector.ph1354
                                        #   in Loop: Header=BB0_16 Depth=2
	move	$a5, $a4
	bstrins.d	$a5, $zero, 0, 0
	sub.d	$a3, $a6, $a5
	addi.d	$a2, $a5, 2
	alsl.d	$a6, $a6, $a0, 4
	addi.d	$a6, $a6, -16
	move	$a7, $a5
	lu12i.w	$t0, 1
	ori	$t0, $t0, 1736
	add.d	$t0, $sp, $t0
	.p2align	4, , 16
.LBB0_246:                              # %vector.body1357
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t1, $t0, -4
	ld.w	$t2, $t0, 0
	st.w	$t1, $a6, 0
	st.w	$t2, $a6, -16
	st.w	$s8, $a6, 4
	st.w	$s8, $a6, -12
	addi.d	$a6, $a6, -32
	addi.d	$a7, $a7, -2
	addi.d	$t0, $t0, 8
	bnez	$a7, .LBB0_246
# %bb.247:                              # %middle.block1362
                                        #   in Loop: Header=BB0_16 Depth=2
	beq	$a4, $a5, .LBB0_82
.LBB0_248:                              # %.lr.ph812.preheader1391
                                        #   in Loop: Header=BB0_16 Depth=2
	alsl.d	$a0, $a3, $a0, 4
	addi.d	$a0, $a0, -16
	sub.d	$a1, $a1, $a2
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1724
	add.d	$a3, $sp, $a3
	alsl.d	$a2, $a2, $a3, 2
	.p2align	4, , 16
.LBB0_249:                              # %.lr.ph812
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a3, $a2, 0
	st.w	$a3, $a0, 0
	st.w	$s8, $a0, 4
	addi.d	$a0, $a0, -16
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB0_249
	b	.LBB0_82
	.p2align	4, , 16
.LBB0_250:                              # %.preheader754.loopexit
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a0, $a7, 132
.LBB0_251:                              # %.preheader754
                                        #   in Loop: Header=BB0_3 Depth=1
	blez	$a0, .LBB0_2
# %bb.252:                              # %.lr.ph965
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a1, $s6, %pc_lo12(UCptr)
	addi.d	$a0, $a0, 1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a1, 84
	addi.d	$a1, $a2, -1
	b	.LBB0_254
	.p2align	4, , 16
.LBB0_253:                              #   in Loop: Header=BB0_254 Depth=2
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 44
	beqz	$a1, .LBB0_2
.LBB0_254:                              #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a0, -4
	bne	$a2, $s1, .LBB0_253
# %bb.255:                              #   in Loop: Header=BB0_254 Depth=2
	ld.w	$a2, $a0, 0
	bne	$a2, $s1, .LBB0_253
# %bb.256:                              #   in Loop: Header=BB0_254 Depth=2
	ld.w	$a2, $a0, -36
	slli.d	$a2, $a2, 4
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$a2, $a3, $a2
	st.d	$a2, $a0, -4
	b	.LBB0_253
.LBB0_257:                              # %._crit_edge972
	lu12i.w	$a0, 1
	ori	$a0, $a0, 192
	add.d	$sp, $sp, $a0
	fld.d	$fs0, $sp, 1936                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end0:
	.size	finalpin, .Lfunc_end0-finalpin
                                        # -- End function
	.type	UCptr,@object                   # @UCptr
	.comm	UCptr,8,8
	.type	HorV,@object                    # @HorV
	.comm	HorV,4,4
	.type	nPinLocs,@object                # @nPinLocs
	.comm	nPinLocs,4,4
	.type	lArray,@object                  # @lArray
	.comm	lArray,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"OOPs: a endSeqs "
	.size	.L.str, 17

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"cannot fit in the"
	.size	.L.str.1, 18

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	" site:%d\n"
	.size	.L.str.2, 10

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"TimberWolf has "
	.size	.L.str.3, 16

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"to leave it out\n"
	.size	.L.str.4, 17

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Current cell: %d\n"
	.size	.L.str.5, 18

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"OOPs: a begSeqs "
	.size	.L.str.6, 17

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"cannot fit in "
	.size	.L.str.7, 15

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"TimberWolf has t"
	.size	.L.str.8, 17

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"o leave it out\n"
	.size	.L.str.9, 16

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Current cell:%d\n"
	.size	.L.str.10, 17

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"OOPs: an endSeqs cannot fit in site:%d\n"
	.size	.L.str.11, 40

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"TimberWolf will have to leave it out\n"
	.size	.L.str.12, 38

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"OOPs: a begSeqs cannot fit in site:%d\n"
	.size	.L.str.13, 39

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"OOPs: TimberWolf has to ignore a \n"
	.size	.L.str.14, 35

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"contained sequence in site:%d\n"
	.size	.L.str.15, 31

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"OOPs: isolated pin(s) cannot fit in "
	.size	.L.str.16, 37

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"the site: %d\n"
	.size	.L.str.17, 14

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"TimberWolf will have to ignore this "
	.size	.L.str.18, 37

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"number of pins: %d\n"
	.size	.L.str.19, 20

	.section	".note.GNU-stack","",@progbits
	.addrsig
