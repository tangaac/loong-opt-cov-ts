	.file	"finalpin.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function finalpin
.LCPI0_0:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.text
	.globl	finalpin
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
	ori	$a0, $a0, 240
	sub.d	$sp, $sp, $a0
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$a0, $a0, %got_pc_lo12(numcells)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	ori	$s5, $zero, 1
	blt	$a0, $s5, .LBB0_289
# %bb.1:                                # %.lr.ph970
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$a0, $a0, %got_pc_lo12(cellarray)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, -24415
	ori	$fp, $a0, 3840
	vrepli.b	$vr0, -1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 348
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$s6, $zero, 2
	ori	$s2, $zero, 44
	vrepli.b	$vr1, 0
	ori	$a0, $zero, 1
                                        # implicit-def: $r5
                                        # kill: killed $r5
                                        # implicit-def: $r30
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	vst	$vr1, $sp, 32                   # 16-byte Folded Spill
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %.loopexit754
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a0, $a2, 1
	bge	$a2, $a1, .LBB0_289
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_10 Depth 2
                                        #     Child Loop BB0_16 Depth 2
                                        #       Child Loop BB0_44 Depth 3
                                        #       Child Loop BB0_108 Depth 3
                                        #       Child Loop BB0_35 Depth 3
                                        #       Child Loop BB0_39 Depth 3
                                        #       Child Loop BB0_50 Depth 3
                                        #         Child Loop BB0_56 Depth 4
                                        #         Child Loop BB0_73 Depth 4
                                        #         Child Loop BB0_76 Depth 4
                                        #         Child Loop BB0_61 Depth 4
                                        #         Child Loop BB0_67 Depth 4
                                        #       Child Loop BB0_278 Depth 3
                                        #       Child Loop BB0_281 Depth 3
                                        #       Child Loop BB0_273 Depth 3
                                        #       Child Loop BB0_276 Depth 3
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_117 Depth 3
                                        #       Child Loop BB0_92 Depth 3
                                        #       Child Loop BB0_95 Depth 3
                                        #       Child Loop BB0_122 Depth 3
                                        #         Child Loop BB0_132 Depth 4
                                        #       Child Loop BB0_146 Depth 3
                                        #       Child Loop BB0_150 Depth 3
                                        #       Child Loop BB0_156 Depth 3
                                        #       Child Loop BB0_161 Depth 3
                                        #         Child Loop BB0_166 Depth 4
                                        #           Child Loop BB0_179 Depth 5
                                        #           Child Loop BB0_176 Depth 5
                                        #           Child Loop BB0_195 Depth 5
                                        #           Child Loop BB0_198 Depth 5
                                        #           Child Loop BB0_190 Depth 5
                                        #           Child Loop BB0_193 Depth 5
                                        #       Child Loop BB0_231 Depth 3
                                        #       Child Loop BB0_270 Depth 3
                                        #       Child Loop BB0_236 Depth 3
                                        #         Child Loop BB0_240 Depth 4
                                        #         Child Loop BB0_263 Depth 4
                                        #         Child Loop BB0_253 Depth 4
                                        #         Child Loop BB0_256 Depth 4
                                        #         Child Loop BB0_249 Depth 4
                                        #         Child Loop BB0_266 Depth 4
                                        #         Child Loop BB0_260 Depth 4
                                        #       Child Loop BB0_209 Depth 3
                                        #       Child Loop BB0_215 Depth 3
                                        #         Child Loop BB0_219 Depth 4
                                        #       Child Loop BB0_227 Depth 3
                                        #     Child Loop BB0_286 Depth 2
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 3
	ldx.d	$s8, $a1, $a0
	ld.w	$a0, $s8, 132
	beqz	$a0, .LBB0_2
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a1, $s8, 56
	alsl.d	$a1, $a1, $s8, 3
	ld.d	$a2, $a1, 152
	ld.d	$s1, $s8, 136
	ld.d	$a1, $s8, 144
	ld.d	$a2, $a2, 96
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(UCptr)
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	st.d	$a1, $a2, %pc_lo12(UCptr)
	blt	$a0, $s5, .LBB0_11
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	ori	$a2, $zero, 1
	beq	$a0, $a2, .LBB0_9
# %bb.6:                                # %vector.ph1413
                                        #   in Loop: Header=BB0_3 Depth=1
	bstrpick.d	$a2, $a0, 30, 1
	slli.d	$a3, $a2, 1
	ori	$a2, $a0, 1
	addi.d	$a4, $a1, 128
	move	$a5, $a3
	.p2align	4, , 16
.LBB0_7:                                # %vector.body1416
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a6, $fp
	bstrins.d	$a6, $fp, 58, 32
	st.d	$a6, $a4, -48
	st.d	$a6, $a4, -4
	addi.d	$a5, $a5, -2
	addi.d	$a4, $a4, 88
	bnez	$a5, .LBB0_7
# %bb.8:                                # %middle.block1420
                                        #   in Loop: Header=BB0_3 Depth=1
	beq	$a3, $a0, .LBB0_11
.LBB0_9:                                # %.lr.ph.preheader1443
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a3, $a0, 1
	bstrpick.d	$a3, $a3, 31, 0
	mul.d	$a4, $a2, $s2
	add.d	$a1, $a1, $a4
	addi.d	$a1, $a1, 40
	sub.d	$a2, $a3, $a2
	.p2align	4, , 16
.LBB0_10:                               # %.lr.ph
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a3, $fp
	bstrins.d	$a3, $fp, 58, 32
	st.d	$a3, $a1, -4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 44
	bnez	$a2, .LBB0_10
.LBB0_11:                               # %.preheader755
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a1, $s8, 128
	blt	$a1, $s5, .LBB0_283
# %bb.12:                               # %.lr.ph959
                                        #   in Loop: Header=BB0_3 Depth=1
	ori	$s0, $zero, 1
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 88                    # 8-byte Folded Spill
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_13:                               # %._crit_edge953.loopexit
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(lArray)
.LBB0_14:                               # %._crit_edge953
                                        #   in Loop: Header=BB0_16 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s8, 128
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
.LBB0_15:                               #   in Loop: Header=BB0_16 Depth=2
	bge	$a3, $a1, .LBB0_282
.LBB0_16:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_44 Depth 3
                                        #       Child Loop BB0_108 Depth 3
                                        #       Child Loop BB0_35 Depth 3
                                        #       Child Loop BB0_39 Depth 3
                                        #       Child Loop BB0_50 Depth 3
                                        #         Child Loop BB0_56 Depth 4
                                        #         Child Loop BB0_73 Depth 4
                                        #         Child Loop BB0_76 Depth 4
                                        #         Child Loop BB0_61 Depth 4
                                        #         Child Loop BB0_67 Depth 4
                                        #       Child Loop BB0_278 Depth 3
                                        #       Child Loop BB0_281 Depth 3
                                        #       Child Loop BB0_273 Depth 3
                                        #       Child Loop BB0_276 Depth 3
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_117 Depth 3
                                        #       Child Loop BB0_92 Depth 3
                                        #       Child Loop BB0_95 Depth 3
                                        #       Child Loop BB0_122 Depth 3
                                        #         Child Loop BB0_132 Depth 4
                                        #       Child Loop BB0_146 Depth 3
                                        #       Child Loop BB0_150 Depth 3
                                        #       Child Loop BB0_156 Depth 3
                                        #       Child Loop BB0_161 Depth 3
                                        #         Child Loop BB0_166 Depth 4
                                        #           Child Loop BB0_179 Depth 5
                                        #           Child Loop BB0_176 Depth 5
                                        #           Child Loop BB0_195 Depth 5
                                        #           Child Loop BB0_198 Depth 5
                                        #           Child Loop BB0_190 Depth 5
                                        #           Child Loop BB0_193 Depth 5
                                        #       Child Loop BB0_231 Depth 3
                                        #       Child Loop BB0_270 Depth 3
                                        #       Child Loop BB0_236 Depth 3
                                        #         Child Loop BB0_240 Depth 4
                                        #         Child Loop BB0_263 Depth 4
                                        #         Child Loop BB0_253 Depth 4
                                        #         Child Loop BB0_256 Depth 4
                                        #         Child Loop BB0_249 Depth 4
                                        #         Child Loop BB0_266 Depth 4
                                        #         Child Loop BB0_260 Depth 4
                                        #       Child Loop BB0_209 Depth 3
                                        #       Child Loop BB0_215 Depth 3
                                        #         Child Loop BB0_219 Depth 4
                                        #       Child Loop BB0_227 Depth 3
	move	$a3, $s0
	slli.d	$a0, $s0, 4
	alsl.d	$a0, $s0, $a0, 2
	ldx.w	$a2, $s1, $a0
	addi.d	$s0, $s0, 1
	blt	$a2, $s5, .LBB0_15
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=2
	add.d	$a0, $s1, $a0
	ld.w	$a1, $a0, 16
	ld.w	$a0, $a0, 12
	ld.w	$a2, $s8, 56
	pcalau12i	$fp, %pc_hi20(HorV)
	st.w	$a0, $fp, %pc_lo12(HorV)
	movgr2fr.w	$fs0, $a1
	ori	$a0, $zero, 4
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	bge	$a2, $a0, .LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=2
	fld.d	$fa0, $s8, 96
	fld.d	$fa1, $s8, 104
	fdiv.d	$fa1, $fa0, $fa1
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_24
# %bb.19:                               # %.split1948
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a0, $fp, %pc_lo12(HorV)
	bnez	$a0, .LBB0_27
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_20:                               #   in Loop: Header=BB0_16 Depth=2
	fld.d	$fa0, $s8, 104
	fld.d	$fa1, $s8, 96
	fdiv.d	$fa1, $fa0, $fa1
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_25
# %bb.21:                               # %.split
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a0, $fp, %pc_lo12(HorV)
	bne	$a0, $s5, .LBB0_26
.LBB0_22:                               # %.thread
                                        #   in Loop: Header=BB0_16 Depth=2
	st.w	$zero, $fp, %pc_lo12(HorV)
.LBB0_23:                               #   in Loop: Header=BB0_16 Depth=2
	ffint.d.w	$fa1, $fs0
	fdiv.d	$fa2, $fa1, $fa0
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$s1, $fa2
	movgr2fr.w	$fa2, $s1
	ffint.d.w	$fa2, $fa2
	fneg.d	$fa2, $fa2
	fmadd.d	$fa2, $fa2, $fa0, $fa1
	addi.d	$a0, $s1, 1
	movgr2fr.w	$fa3, $a0
	ffint.d.w	$fa3, $fa3
	fmsub.d	$fa0, $fa3, $fa0, $fa1
	fcmp.cule.d	$fcc0, $fa2, $fa0
	ori	$fp, $zero, 1
	bceqz	$fcc0, .LBB0_28
	b	.LBB0_29
.LBB0_24:                               # %call.sqrt1949
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
	beq	$a0, $s5, .LBB0_22
.LBB0_26:                               # %.thread705
                                        #   in Loop: Header=BB0_16 Depth=2
	st.w	$s5, $fp, %pc_lo12(HorV)
.LBB0_27:                               #   in Loop: Header=BB0_16 Depth=2
	ffint.d.w	$fa1, $fs0
	fmul.d	$fa2, $fa0, $fa1
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$s1, $fa2
	movgr2fr.w	$fa2, $s1
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa2, $fa2, $fa0
	fsub.d	$fa2, $fa1, $fa2
	addi.d	$a0, $s1, 1
	movgr2fr.w	$fa3, $a0
	ffint.d.w	$fa3, $fa3
	fdiv.d	$fa0, $fa3, $fa0
	fsub.d	$fa0, $fa0, $fa1
	move	$fp, $zero
	fcmp.cule.d	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_16 Depth=2
	addi.w	$s1, $a0, 0
.LBB0_29:                               #   in Loop: Header=BB0_16 Depth=2
	pcalau12i	$a0, %got_pc_hi20(pinSpacing)
	ld.d	$a0, $a0, %got_pc_lo12(pinSpacing)
	ld.w	$s0, $a0, 0
	div.w	$a0, $s1, $s0
	mul.d	$a1, $a0, $s0
	sub.w	$a1, $s1, $a1
	addi.w	$a2, $a0, 1
	mul.d	$a3, $a2, $s0
	sub.w	$a3, $a3, $s1
	slt	$a1, $a3, $a1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s8, $a1, $a0
	pcalau12i	$s4, %pc_hi20(nPinLocs)
	st.w	$s8, $s4, %pc_lo12(nPinLocs)
	addi.w	$s2, $s8, 1
	slli.d	$a0, $s2, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(lArray)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $a0, %pc_lo12(lArray)
	blt	$s8, $s5, .LBB0_31
# %bb.30:                               # %.lr.ph770.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a0, $s3, 16
	slli.d	$a2, $s8, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_31:                               # %._crit_edge
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.wu	$a0, $a0, 128
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	xor	$a0, $a2, $a0
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s5, $a0
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a1, 4
	beqz	$fp, .LBB0_41
# %bb.32:                               #   in Loop: Header=BB0_16 Depth=2
	vld	$vr7, $sp, 64                   # 16-byte Folded Reload
	blt	$s8, $s5, .LBB0_46
# %bb.33:                               # %.lr.ph778
                                        #   in Loop: Header=BB0_16 Depth=2
	slli.d	$a0, $a0, 4
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	ld.w	$a1, $a2, 0
	ld.w	$a2, $a2, 4
	bstrpick.d	$a3, $s1, 31, 31
	add.w	$a3, $s1, $a3
	srai.d	$a6, $a3, 1
	addi.d	$a3, $s1, 1
	bstrpick.d	$a4, $a3, 31, 31
	add.w	$a3, $a3, $a4
	srli.d	$a3, $a3, 1
	sub.d	$a3, $a1, $a3
	bstrpick.d	$a5, $s2, 31, 0
	ori	$a4, $zero, 1
	ori	$a7, $zero, 5
	bltu	$s2, $a7, .LBB0_37
# %bb.34:                               # %vector.ph1371
                                        #   in Loop: Header=BB0_16 Depth=2
	sub.d	$t1, $a1, $a6
	addi.d	$a7, $a5, -1
	slt	$t2, $a1, $a0
	move	$t0, $a7
	bstrins.d	$t0, $zero, 1, 0
	move	$a4, $a7
	bstrins.d	$a4, $s5, 1, 0
	vreplgr2vr.w	$vr0, $t1
	vreplgr2vr.w	$vr1, $a3
	vreplgr2vr.w	$vr4, $t2
	vreplgr2vr.w	$vr2, $s0
	pcalau12i	$t1, %pc_hi20(.LCPI0_0)
	vld	$vr3, $t1, %pc_lo12(.LCPI0_0)
	addi.d	$t1, $s3, 40
	vslli.w	$vr4, $vr4, 31
	vsrai.w	$vr4, $vr4, 31
	move	$t2, $t0
	.p2align	4, , 16
.LBB0_35:                               # %vector.body1380
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$a2, $t1, -12
	st.w	$a2, $t1, 4
	st.w	$a2, $t1, 20
	st.w	$a2, $t1, 36
	vadd.w	$vr5, $vr3, $vr7
	vori.b	$vr6, $vr0, 0
	vmadd.w	$vr6, $vr5, $vr2
	vori.b	$vr5, $vr1, 0
	vmadd.w	$vr5, $vr2, $vr3
	vbitsel.v	$vr5, $vr6, $vr5, $vr4
	vstelm.w	$vr5, $t1, -16, 0
	vstelm.w	$vr5, $t1, 0, 1
	vstelm.w	$vr5, $t1, 16, 2
	vstelm.w	$vr5, $t1, 32, 3
	vaddi.wu	$vr3, $vr3, 4
	addi.d	$t2, $t2, -4
	addi.d	$t1, $t1, 64
	bnez	$t2, .LBB0_35
# %bb.36:                               # %middle.block1385
                                        #   in Loop: Header=BB0_16 Depth=2
	beq	$a7, $t0, .LBB0_46
.LBB0_37:                               # %scalar.ph1369.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	sub.d	$a6, $zero, $a6
	add.d	$a6, $a1, $a6
	addi.d	$a7, $a4, -1
	mul.d	$a7, $s0, $a7
	add.d	$a6, $a6, $a7
	alsl.d	$a7, $a4, $s3, 4
	addi.d	$a7, $a7, 12
	sub.d	$a5, $a5, $a4
	b	.LBB0_39
	.p2align	4, , 16
.LBB0_38:                               #   in Loop: Header=BB0_39 Depth=3
	st.w	$t0, $a7, -4
	addi.d	$a4, $a4, 1
	add.d	$a6, $a6, $s0
	addi.d	$a5, $a5, -1
	addi.d	$a7, $a7, 16
	beqz	$a5, .LBB0_46
.LBB0_39:                               # %scalar.ph1369
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$a2, $a7, 0
	move	$t0, $a6
	bge	$a1, $a0, .LBB0_38
# %bb.40:                               #   in Loop: Header=BB0_39 Depth=3
	mul.d	$t0, $s0, $a4
	add.d	$t0, $t0, $a3
	b	.LBB0_38
	.p2align	4, , 16
.LBB0_41:                               #   in Loop: Header=BB0_16 Depth=2
	vld	$vr7, $sp, 64                   # 16-byte Folded Reload
	blt	$s8, $s5, .LBB0_46
# %bb.42:                               # %.lr.ph774
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 4
	ld.w	$a0, $a0, 4
	ld.w	$a1, $a2, 4
	ld.w	$a2, $a2, 0
	bstrpick.d	$a3, $s1, 31, 31
	add.w	$a3, $s1, $a3
	srai.d	$a6, $a3, 1
	addi.d	$a3, $s1, 1
	bstrpick.d	$a4, $a3, 31, 31
	add.w	$a3, $a3, $a4
	srli.d	$a3, $a3, 1
	sub.d	$a3, $a1, $a3
	bstrpick.d	$a5, $s2, 31, 0
	ori	$a4, $zero, 1
	ori	$a7, $zero, 5
	bltu	$s2, $a7, .LBB0_106
# %bb.43:                               # %vector.ph1390
                                        #   in Loop: Header=BB0_16 Depth=2
	sub.d	$t1, $a1, $a6
	addi.d	$a7, $a5, -1
	slt	$t2, $a1, $a0
	move	$t0, $a7
	bstrins.d	$t0, $zero, 1, 0
	move	$a4, $a7
	bstrins.d	$a4, $s5, 1, 0
	vreplgr2vr.w	$vr0, $t1
	vreplgr2vr.w	$vr1, $a3
	vreplgr2vr.w	$vr4, $t2
	vreplgr2vr.w	$vr2, $s0
	pcalau12i	$t1, %pc_hi20(.LCPI0_0)
	vld	$vr3, $t1, %pc_lo12(.LCPI0_0)
	addi.d	$t1, $s3, 40
	vslli.w	$vr4, $vr4, 31
	vsrai.w	$vr4, $vr4, 31
	move	$t2, $t0
	.p2align	4, , 16
.LBB0_44:                               # %vector.body1401
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$a2, $t1, -16
	st.w	$a2, $t1, 0
	st.w	$a2, $t1, 16
	st.w	$a2, $t1, 32
	vadd.w	$vr5, $vr3, $vr7
	vori.b	$vr6, $vr0, 0
	vmadd.w	$vr6, $vr5, $vr2
	vori.b	$vr5, $vr1, 0
	vmadd.w	$vr5, $vr2, $vr3
	vbitsel.v	$vr5, $vr6, $vr5, $vr4
	vstelm.w	$vr5, $t1, -12, 0
	vstelm.w	$vr5, $t1, 4, 1
	vstelm.w	$vr5, $t1, 20, 2
	vstelm.w	$vr5, $t1, 36, 3
	vaddi.wu	$vr3, $vr3, 4
	addi.d	$t2, $t2, -4
	addi.d	$t1, $t1, 64
	bnez	$t2, .LBB0_44
# %bb.45:                               # %middle.block1408
                                        #   in Loop: Header=BB0_16 Depth=2
	bne	$a7, $t0, .LBB0_106
	.p2align	4, , 16
.LBB0_46:                               # %.loopexit751
                                        #   in Loop: Header=BB0_16 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1768
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 404
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1360
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 404
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1008
	move	$a1, $zero
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 200
	ori	$a2, $zero, 804
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 132
	st.d	$s4, $sp, 176                   # 8-byte Folded Spill
	blt	$a1, $s5, .LBB0_98
# %bb.47:                               # %.lr.ph806.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(UCptr)
	ori	$s3, $zero, 1
	ori	$t4, $zero, 404
	addi.d	$s1, $sp, 1008
	addi.d	$s4, $sp, 200
	ori	$s2, $zero, 44
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 160                   # 8-byte Folded Reload
	b	.LBB0_50
.LBB0_48:                               #   in Loop: Header=BB0_50 Depth=3
	ld.w	$a2, $sp, 200
	addi.d	$a2, $a2, 1
	st.w	$a2, $sp, 200
	slli.w	$a2, $a2, 1
	slli.d	$a2, $a2, 2
	stx.w	$s3, $a2, $s4
	.p2align	4, , 16
.LBB0_49:                               # %.loopexit733
                                        #   in Loop: Header=BB0_50 Depth=3
	move	$a2, $s3
	addi.w	$s3, $s3, 1
	bge	$a2, $a1, .LBB0_82
.LBB0_50:                               # %.lr.ph806
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_56 Depth 4
                                        #         Child Loop BB0_73 Depth 4
                                        #         Child Loop BB0_76 Depth 4
                                        #         Child Loop BB0_61 Depth 4
                                        #         Child Loop BB0_67 Depth 4
	mul.d	$s0, $s3, $s2
	add.d	$a2, $a0, $s0
	ld.wu	$a3, $a2, 4
	bne	$t3, $a3, .LBB0_49
# %bb.51:                               #   in Loop: Header=BB0_50 Depth=3
	ld.w	$a3, $a2, 28
	beqz	$a3, .LBB0_59
# %bb.52:                               #   in Loop: Header=BB0_50 Depth=3
	blt	$a3, $s6, .LBB0_48
# %bb.53:                               #   in Loop: Header=BB0_50 Depth=3
	ld.w	$a1, $sp, 1008
	addi.w	$a1, $a1, 1
	st.w	$a1, $sp, 1008
	mul.d	$a1, $a1, $t4
	stx.w	$s5, $a1, $s1
	ld.w	$a1, $sp, 1008
	mul.d	$a1, $a1, $t4
	add.d	$a1, $s1, $a1
	st.w	$s3, $a1, 8
	ld.w	$a1, $s8, 132
	bge	$s3, $a1, .LBB0_49
# %bb.54:                               # %.lr.ph787.preheader
                                        #   in Loop: Header=BB0_50 Depth=3
	add.d	$a3, $s0, $a0
	ld.w	$a3, $a3, 72
	bnez	$a3, .LBB0_49
# %bb.55:                               # %.lr.ph1245.preheader
                                        #   in Loop: Header=BB0_50 Depth=3
	addi.d	$a3, $s3, 1
	addi.d	$a2, $a2, 116
	.p2align	4, , 16
.LBB0_56:                               # %.lr.ph1245
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_50 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.wu	$a1, $a2, -68
	bne	$t3, $a1, .LBB0_70
# %bb.57:                               #   in Loop: Header=BB0_56 Depth=4
	ld.w	$a1, $sp, 1008
	mul.d	$a1, $a1, $t4
	ldx.w	$a4, $a1, $s1
	add.d	$a5, $s1, $a1
	addi.d	$a6, $a4, 1
	stx.w	$a6, $a1, $s1
	alsl.d	$a1, $a4, $a5, 2
	addi.w	$s3, $s3, 1
	st.w	$s3, $a1, 8
	ld.w	$a1, $s8, 132
	bge	$a3, $a1, .LBB0_49
# %bb.58:                               # %.lr.ph787
                                        #   in Loop: Header=BB0_56 Depth=4
	ld.w	$a4, $a2, 0
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 44
	beqz	$a4, .LBB0_56
	b	.LBB0_49
.LBB0_59:                               #   in Loop: Header=BB0_50 Depth=3
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1768
	add.d	$a3, $sp, $a3
	ld.w	$a3, $a3, 0
	beqz	$a3, .LBB0_65
# %bb.60:                               #   in Loop: Header=BB0_50 Depth=3
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
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
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
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$t3, $sp, 160                   # 8-byte Folded Reload
	ori	$t4, $zero, 404
	ld.w	$a1, $s8, 132
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(UCptr)
	slt	$a2, $a1, $s3
	masknez	$a3, $a1, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	sub.d	$a2, $a2, $s3
	add.d	$a3, $a0, $s0
	addi.d	$a4, $a3, 48
	.p2align	4, , 16
.LBB0_61:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_50 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	beqz	$a2, .LBB0_82
# %bb.62:                               #   in Loop: Header=BB0_61 Depth=4
	move	$a3, $s3
	ld.w	$a5, $a4, 24
	bnez	$a5, .LBB0_64
# %bb.63:                               #   in Loop: Header=BB0_61 Depth=4
	ld.wu	$a5, $a4, 0
	addi.w	$s3, $a3, 1
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 44
	beq	$t3, $a5, .LBB0_61
.LBB0_64:                               #   in Loop: Header=BB0_50 Depth=3
	move	$s3, $a3
	b	.LBB0_49
.LBB0_65:                               #   in Loop: Header=BB0_50 Depth=3
	ld.w	$a3, $a2, -40
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(lArray)
	slli.d	$a5, $a3, 4
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	ldx.w	$a5, $a7, $a5
	ld.w	$a6, $a4, 24
	alsl.d	$a3, $a3, $a7, 4
	ld.w	$a3, $a3, 4
	sub.w	$a6, $a6, $a5
	srai.d	$a7, $a6, 31
	ld.w	$t0, $a4, 28
	xor	$a6, $a6, $a7
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
	ld.w	$t1, $t1, %pc_lo12(nPinLocs)
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
	maskeqz	$a3, $s5, $a3
	or	$a3, $a3, $a4
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1768
	add.d	$a4, $sp, $a4
	st.w	$s5, $a4, 0
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1772
	add.d	$a4, $sp, $a4
	st.w	$a3, $a4, 0
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1776
	add.d	$a3, $sp, $a3
	st.w	$s3, $a3, 0
	bge	$s3, $a1, .LBB0_49
# %bb.66:                               # %.lr.ph798.preheader
                                        #   in Loop: Header=BB0_50 Depth=3
	sub.d	$a3, $a1, $s3
	addi.d	$a2, $a2, 48
	.p2align	4, , 16
.LBB0_67:                               # %.lr.ph798
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_50 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a4, $a2, 24
	bnez	$a4, .LBB0_49
# %bb.68:                               #   in Loop: Header=BB0_67 Depth=4
	ld.wu	$a4, $a2, 0
	bne	$t3, $a4, .LBB0_49
# %bb.69:                               #   in Loop: Header=BB0_67 Depth=4
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1768
	add.d	$a4, $sp, $a4
	ld.w	$a4, $a4, 0
	addi.d	$a5, $a4, 1
	lu12i.w	$a6, 1
	ori	$a6, $a6, 1768
	add.d	$a6, $sp, $a6
	st.w	$a5, $a6, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 1768
	add.d	$a5, $sp, $a5
	alsl.d	$a4, $a4, $a5, 2
	addi.w	$s3, $s3, 1
	st.w	$s3, $a4, 8
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 44
	bnez	$a3, .LBB0_67
	b	.LBB0_82
.LBB0_70:                               #   in Loop: Header=BB0_50 Depth=3
	ld.w	$a1, $sp, 1008
	mul.d	$a1, $a1, $t4
	ldx.w	$s0, $a1, $s1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1360
	add.d	$a1, $sp, $a1
	ld.w	$a1, $a1, 0
	addi.w	$a2, $s0, 1
	addi.w	$s2, $zero, -1
	beqz	$a1, .LBB0_74
# %bb.71:                               #   in Loop: Header=BB0_50 Depth=3
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$fp, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	move	$s1, $t3
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
	move	$a2, $s1
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
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(UCptr)
	blt	$s0, $s2, .LBB0_77
# %bb.72:                               # %.lr.ph790.preheader
                                        #   in Loop: Header=BB0_50 Depth=3
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a1, 31, 0
	addi.d	$a1, $s0, 2
	addi.d	$s1, $sp, 1008
	alsl.d	$a2, $a2, $s1, 2
	ori	$t4, $zero, 404
	.p2align	4, , 16
.LBB0_73:                               # %.lr.ph790
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_50 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a3, $sp, 1008
	mul.d	$a3, $a3, $t4
	stx.w	$zero, $a2, $a3
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	bgtz	$a1, .LBB0_73
	b	.LBB0_78
.LBB0_74:                               # %.preheader735
                                        #   in Loop: Header=BB0_50 Depth=3
	blt	$s0, $s2, .LBB0_79
# %bb.75:                               # %.lr.ph792.preheader
                                        #   in Loop: Header=BB0_50 Depth=3
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a1, $s0, 2
	slli.d	$a2, $a2, 2
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1360
	add.d	$a5, $sp, $a3
	addi.d	$s1, $sp, 1008
	.p2align	4, , 16
.LBB0_76:                               # %.lr.ph792
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_50 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a3, $sp, 1008
	mul.d	$a3, $a3, $t4
	add.d	$a3, $s1, $a3
	ldx.w	$a4, $a3, $a2
	stx.w	$a4, $a2, $a5
	stx.w	$zero, $a3, $a2
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	bgtz	$a1, .LBB0_76
	b	.LBB0_80
.LBB0_77:                               #   in Loop: Header=BB0_50 Depth=3
	ori	$t4, $zero, 404
	addi.d	$s1, $sp, 1008
.LBB0_78:                               #   in Loop: Header=BB0_50 Depth=3
	ori	$s2, $zero, 44
	ld.d	$t3, $sp, 160                   # 8-byte Folded Reload
	b	.LBB0_81
.LBB0_79:                               #   in Loop: Header=BB0_50 Depth=3
	addi.d	$s1, $sp, 1008
.LBB0_80:                               # %.loopexit736
                                        #   in Loop: Header=BB0_50 Depth=3
	ori	$s2, $zero, 44
.LBB0_81:                               # %.loopexit736
                                        #   in Loop: Header=BB0_50 Depth=3
	ld.w	$a2, $sp, 1008
	ld.w	$a1, $s8, 132
	addi.d	$a2, $a2, -1
	st.w	$a2, $sp, 1008
	b	.LBB0_49
	.p2align	4, , 16
.LBB0_82:                               # %._crit_edge807.loopexit
                                        #   in Loop: Header=BB0_16 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1768
	add.d	$a0, $sp, $a0
	ld.w	$s2, $a0, 0
	ld.d	$s4, $sp, 176                   # 8-byte Folded Reload
	ld.w	$s8, $s4, %pc_lo12(nPinLocs)
	move	$s3, $s7
	bge	$s8, $s2, .LBB0_84
.LBB0_83:                               #   in Loop: Header=BB0_16 Depth=2
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$fp, $a0, %got_pc_lo12(fpo)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	move	$a2, $t3
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
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$t3, $sp, 160                   # 8-byte Folded Reload
	ori	$t4, $zero, 404
.LBB0_84:                               #   in Loop: Header=BB0_16 Depth=2
	blt	$s2, $s5, .LBB0_86
# %bb.85:                               #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a1, $s4, %pc_lo12(nPinLocs)
	bge	$a1, $s2, .LBB0_99
.LBB0_86:                               # %.loopexit747
                                        #   in Loop: Header=BB0_16 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1360
	add.d	$a0, $sp, $a0
	ld.w	$a2, $a0, 0
	ld.w	$a3, $s4, %pc_lo12(nPinLocs)
	add.w	$a0, $a2, $s2
	blt	$a2, $s5, .LBB0_96
# %bb.87:                               # %.loopexit747
                                        #   in Loop: Header=BB0_16 Depth=2
	blt	$a3, $a0, .LBB0_96
# %bb.88:                               #   in Loop: Header=BB0_16 Depth=2
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1360
	add.d	$a1, $sp, $a1
	alsl.d	$a1, $a2, $a1, 2
	ld.w	$a4, $a1, 4
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(UCptr)
	ori	$a5, $zero, 44
	mul.d	$a5, $a4, $a5
	add.d	$a1, $a1, $a5
	ld.w	$a5, $a1, 48
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(lArray)
	slli.d	$a6, $a5, 4
	ld.d	$t0, $sp, 112                   # 8-byte Folded Reload
	ldx.w	$a6, $t0, $a6
	ld.w	$a7, $a1, 24
	alsl.d	$a5, $a5, $t0, 4
	ld.w	$a5, $a5, 4
	sub.w	$a7, $a7, $a6
	ld.w	$t0, $a1, 28
	srai.d	$t1, $a7, 31
	xor	$a7, $a7, $t1
	sub.d	$a7, $a7, $t1
	sub.w	$t0, $t0, $a5
	srai.d	$t1, $t0, 31
	alsl.d	$t2, $a3, $a1, 4
	ld.w	$t3, $t2, 8
	xor	$t0, $t0, $t1
	sub.d	$t0, $t0, $t1
	add.w	$a7, $t0, $a7
	sub.w	$a6, $t3, $a6
	ld.w	$t0, $t2, 12
	srai.d	$t1, $a6, 31
	xor	$a6, $a6, $t1
	sub.d	$a6, $a6, $t1
	sub.w	$a5, $t0, $a5
	srai.d	$t0, $a5, 31
	xor	$a5, $a5, $t0
	sub.d	$a5, $a5, $t0
	add.w	$a5, $a5, $a6
	bgeu	$a7, $a5, .LBB0_103
# %bb.89:                               #   in Loop: Header=BB0_16 Depth=2
	st.w	$a4, $a1, 16
	st.w	$s5, $a1, 20
	beq	$a2, $s5, .LBB0_118
# %bb.90:                               # %.lr.ph825.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a4, $a2, -1
	ori	$a3, $zero, 1
	move	$a5, $a2
	ori	$a6, $zero, 4
	bltu	$a4, $a6, .LBB0_94
# %bb.91:                               # %vector.ph1308
                                        #   in Loop: Header=BB0_16 Depth=2
	move	$a6, $a4
	bstrins.d	$a6, $zero, 1, 0
	move	$a3, $a4
	bstrins.d	$a3, $s5, 1, 0
	sub.d	$a5, $a2, $a6
	lu12i.w	$a7, 1
	ori	$a7, $a7, 1348
	add.d	$a7, $sp, $a7
	alsl.d	$a7, $a2, $a7, 2
	addi.d	$t0, $a1, 48
	move	$t1, $a6
	.p2align	4, , 16
.LBB0_92:                               # %vector.body1311
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a7, 0
	vstelm.w	$vr0, $t0, -16, 3
	vstelm.w	$vr0, $t0, 0, 2
	vstelm.w	$vr0, $t0, 16, 1
	vstelm.w	$vr0, $t0, 32, 0
	st.w	$s5, $t0, -12
	st.w	$s5, $t0, 4
	st.w	$s5, $t0, 20
	st.w	$s5, $t0, 36
	addi.d	$a7, $a7, -16
	addi.d	$t1, $t1, -4
	addi.d	$t0, $t0, 64
	bnez	$t1, .LBB0_92
# %bb.93:                               # %middle.block1318
                                        #   in Loop: Header=BB0_16 Depth=2
	beq	$a4, $a6, .LBB0_118
.LBB0_94:                               # %.lr.ph825.preheader1435
                                        #   in Loop: Header=BB0_16 Depth=2
	sub.d	$a2, $a2, $a3
	alsl.d	$a1, $a3, $a1, 4
	addi.d	$a1, $a1, 20
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1360
	add.d	$a3, $sp, $a3
	alsl.d	$a3, $a5, $a3, 2
	.p2align	4, , 16
.LBB0_95:                               # %.lr.ph825
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $a3, 0
	st.w	$a4, $a1, -4
	st.w	$s5, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 16
	addi.d	$a3, $a3, -4
	bnez	$a2, .LBB0_95
	b	.LBB0_118
	.p2align	4, , 16
.LBB0_96:                               # %.loopexit747._crit_edge
                                        #   in Loop: Header=BB0_16 Depth=2
	bge	$a3, $a0, .LBB0_119
# %bb.97:                               #   in Loop: Header=BB0_16 Depth=2
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$fp, $a0, %got_pc_lo12(fpo)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	move	$a2, $t3
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
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$t4, $zero, 404
	b	.LBB0_119
	.p2align	4, , 16
.LBB0_98:                               #   in Loop: Header=BB0_16 Depth=2
	move	$s2, $zero
	ori	$t4, $zero, 404
	ld.d	$t3, $sp, 160                   # 8-byte Folded Reload
	move	$s3, $s7
	blt	$s8, $s2, .LBB0_83
	b	.LBB0_84
.LBB0_99:                               #   in Loop: Header=BB0_16 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1772
	add.d	$a0, $sp, $a0
	ld.w	$a3, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1776
	add.d	$a0, $sp, $a0
	ld.w	$a2, $a0, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(lArray)
	bne	$a3, $s5, .LBB0_110
# %bb.100:                              #   in Loop: Header=BB0_16 Depth=2
	st.w	$a2, $a0, 16
	st.w	$s5, $a0, 20
	beq	$s2, $s5, .LBB0_86
# %bb.101:                              # %.lr.ph817.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	bstrpick.d	$a1, $s2, 31, 0
	ori	$a2, $zero, 5
	bgeu	$s2, $a2, .LBB0_272
# %bb.102:                              #   in Loop: Header=BB0_16 Depth=2
	ori	$a2, $zero, 2
	ori	$a3, $zero, 1
	b	.LBB0_275
.LBB0_103:                              #   in Loop: Header=BB0_16 Depth=2
	slli.d	$a3, $a3, 4
	stx.w	$a4, $a1, $a3
	ld.w	$a3, $s4, %pc_lo12(nPinLocs)
	alsl.d	$a3, $a3, $a1, 4
	st.w	$s5, $a3, 4
	beq	$a2, $s5, .LBB0_118
# %bb.104:                              # %.lr.ph821.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a7, $s4, %pc_lo12(nPinLocs)
	addi.d	$a3, $a2, -2
	sltu	$a4, $a2, $a3
	masknez	$a3, $a3, $a4
	ori	$a4, $zero, 3
	bgeu	$a3, $a4, .LBB0_113
# %bb.105:                              #   in Loop: Header=BB0_16 Depth=2
	move	$a4, $a7
	move	$a3, $a2
	b	.LBB0_116
.LBB0_106:                              # %scalar.ph1388.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	sub.d	$a6, $zero, $a6
	add.d	$a6, $a1, $a6
	addi.d	$a7, $a4, -1
	mul.d	$a7, $s0, $a7
	add.d	$a6, $a6, $a7
	alsl.d	$a7, $a4, $s3, 4
	addi.d	$a7, $a7, 12
	sub.d	$a5, $a5, $a4
	b	.LBB0_108
	.p2align	4, , 16
.LBB0_107:                              #   in Loop: Header=BB0_108 Depth=3
	st.w	$t0, $a7, 0
	addi.d	$a4, $a4, 1
	add.d	$a6, $a6, $s0
	addi.d	$a5, $a5, -1
	addi.d	$a7, $a7, 16
	beqz	$a5, .LBB0_46
.LBB0_108:                              # %scalar.ph1388
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$a2, $a7, -4
	move	$t0, $a6
	bge	$a1, $a0, .LBB0_107
# %bb.109:                              #   in Loop: Header=BB0_108 Depth=3
	mul.d	$t0, $s0, $a4
	add.d	$t0, $t0, $a3
	b	.LBB0_107
.LBB0_110:                              #   in Loop: Header=BB0_16 Depth=2
	slli.d	$a1, $a1, 4
	stx.w	$a2, $a0, $a1
	ld.w	$a1, $s4, %pc_lo12(nPinLocs)
	alsl.d	$a1, $a1, $a0, 4
	st.w	$s5, $a1, 4
	beq	$s2, $s5, .LBB0_86
# %bb.111:                              # %.lr.ph812.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a6, $s4, %pc_lo12(nPinLocs)
	addi.d	$a1, $s2, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a4, $a1, -2
	ori	$a2, $zero, 2
	ori	$a3, $zero, 4
	bgeu	$a4, $a3, .LBB0_277
# %bb.112:                              #   in Loop: Header=BB0_16 Depth=2
	move	$a3, $a6
	b	.LBB0_280
.LBB0_113:                              # %vector.ph1325
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a5, $a3, 1
	bstrpick.d	$a3, $a5, 31, 2
	slli.d	$a6, $a3, 2
	sub.d	$a4, $a7, $a6
	sub.d	$a3, $a2, $a6
	lu12i.w	$t0, 1
	ori	$t0, $t0, 1348
	add.d	$t0, $sp, $t0
	alsl.d	$a2, $a2, $t0, 2
	alsl.d	$a7, $a7, $a1, 4
	addi.d	$a7, $a7, -32
	move	$t0, $a6
	.p2align	4, , 16
.LBB0_114:                              # %vector.body1328
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a2, 0
	vstelm.w	$vr0, $a7, 16, 3
	vstelm.w	$vr0, $a7, 0, 2
	vstelm.w	$vr0, $a7, -16, 1
	vstelm.w	$vr0, $a7, -32, 0
	st.w	$s5, $a7, 20
	st.w	$s5, $a7, 4
	st.w	$s5, $a7, -12
	st.w	$s5, $a7, -28
	addi.d	$t0, $t0, -4
	addi.d	$a2, $a2, -16
	addi.d	$a7, $a7, -64
	bnez	$t0, .LBB0_114
# %bb.115:                              # %middle.block1335
                                        #   in Loop: Header=BB0_16 Depth=2
	beq	$a5, $a6, .LBB0_118
.LBB0_116:                              # %.lr.ph821.preheader1436
                                        #   in Loop: Header=BB0_16 Depth=2
	alsl.d	$a1, $a4, $a1, 4
	addi.d	$a1, $a1, -16
	addi.d	$a2, $a3, 1
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1360
	add.d	$a4, $sp, $a4
	alsl.d	$a3, $a3, $a4, 2
	.p2align	4, , 16
.LBB0_117:                              # %.lr.ph821
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $a3, 0
	st.w	$a4, $a1, 0
	st.w	$s5, $a1, 4
	addi.d	$a1, $a1, -16
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, -4
	bltu	$s6, $a2, .LBB0_117
	.p2align	4, , 16
.LBB0_118:                              #   in Loop: Header=BB0_16 Depth=2
	move	$s2, $a0
.LBB0_119:                              # %.loopexit745
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$s8, $sp, 1008
	blt	$s8, $s5, .LBB0_142
# %bb.120:                              # %.lr.ph843.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a0, $s8, 1
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ori	$s1, $zero, 1
	addi.d	$s0, $sp, 1424
	b	.LBB0_122
	.p2align	4, , 16
.LBB0_121:                              #   in Loop: Header=BB0_122 Depth=3
	st.w	$a0, $s2, 4
	move	$s2, $fp
	ld.d	$s4, $sp, 176                   # 8-byte Folded Reload
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 404
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beq	$s1, $a0, .LBB0_142
.LBB0_122:                              # %.lr.ph843
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_132 Depth 4
	mul.d	$a0, $s1, $t4
	addi.d	$a2, $sp, 1008
	ldx.wu	$s7, $a0, $a2
	ld.w	$a1, $s4, %pc_lo12(nPinLocs)
	add.w	$fp, $s7, $s2
	bge	$a1, $fp, .LBB0_124
# %bb.123:                              #   in Loop: Header=BB0_122 Depth=3
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
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$t4, $zero, 404
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 404
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	bne	$s1, $a0, .LBB0_122
	b	.LBB0_142
	.p2align	4, , 16
.LBB0_124:                              # %.preheader732
                                        #   in Loop: Header=BB0_122 Depth=3
	addi.w	$s4, $s7, 0
	add.d	$s2, $a2, $a0
	blt	$s4, $s5, .LBB0_127
# %bb.125:                              #   in Loop: Header=BB0_122 Depth=3
	ld.w	$a0, $s2, 8
	addi.w	$s3, $s4, 1
	pcaddu18i	$ra, %call36(findLoc)
	jirl	$ra, $ra, 0
	bne	$s3, $s6, .LBB0_128
# %bb.126:                              #   in Loop: Header=BB0_122 Depth=3
	move	$a1, $a0
	ori	$t4, $zero, 404
	move	$s3, $a0
	b	.LBB0_138
.LBB0_127:                              #   in Loop: Header=BB0_122 Depth=3
	move	$a1, $zero
	b	.LBB0_138
.LBB0_128:                              # %.peel.next
                                        #   in Loop: Header=BB0_122 Depth=3
	st.d	$fp, $sp, 136                   # 8-byte Folded Spill
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 128                   # 8-byte Folded Spill
	alsl.d	$a0, $s4, $s2, 2
	addi.d	$fp, $a0, 4
	ori	$s2, $zero, 2
	ori	$a0, $zero, 3
	bne	$s3, $a0, .LBB0_130
# %bb.129:                              #   in Loop: Header=BB0_122 Depth=3
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	b	.LBB0_134
.LBB0_130:                              # %.peel.next.split
                                        #   in Loop: Header=BB0_122 Depth=3
	ori	$s2, $zero, 2
	move	$s6, $s0
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	b	.LBB0_132
	.p2align	4, , 16
.LBB0_131:                              #   in Loop: Header=BB0_132 Depth=4
	ld.w	$a0, $s6, 0
	pcaddu18i	$ra, %call36(findLoc)
	jirl	$ra, $ra, 0
	add.d	$s3, $a0, $s3
	addi.d	$s2, $s2, 1
	addi.d	$s6, $s6, 4
	beq	$s7, $s2, .LBB0_134
.LBB0_132:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_122 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bne	$s7, $s2, .LBB0_131
# %bb.133:                              #   in Loop: Header=BB0_132 Depth=4
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(findLoc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	add.d	$s3, $a0, $s3
	addi.d	$s2, $s2, 1
	addi.d	$s6, $s6, 4
	bne	$s7, $s2, .LBB0_132
.LBB0_134:                              # %._crit_edge832.loopexit.peel.begin
                                        #   in Loop: Header=BB0_122 Depth=3
	bne	$s2, $s4, .LBB0_136
# %bb.135:                              #   in Loop: Header=BB0_122 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(findLoc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ori	$s6, $zero, 2
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	b	.LBB0_137
.LBB0_136:                              #   in Loop: Header=BB0_122 Depth=3
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a1, 2
	move	$s2, $a1
	ld.w	$a0, $a0, 4
	pcaddu18i	$ra, %call36(findLoc)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 2
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
.LBB0_137:                              # %._crit_edge832.loopexit.peel.next
                                        #   in Loop: Header=BB0_122 Depth=3
	add.w	$a1, $a0, $s3
	ori	$t4, $zero, 404
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
.LBB0_138:                              # %._crit_edge832
                                        #   in Loop: Header=BB0_122 Depth=3
	div.w	$a0, $a1, $s4
	bstrpick.d	$a1, $s4, 31, 31
	add.w	$a1, $s4, $a1
	srli.d	$a1, $a1, 1
	sub.w	$a1, $a0, $a1
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB0_140
# %bb.139:                              #   in Loop: Header=BB0_122 Depth=3
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(nPinLocs)
	sub.d	$a0, $a0, $s4
	addi.w	$a0, $a0, 1
	slt	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
.LBB0_140:                              #   in Loop: Header=BB0_122 Depth=3
	addi.w	$a1, $s3, 0
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 0
	bge	$a2, $a1, .LBB0_121
# %bb.141:                              #   in Loop: Header=BB0_122 Depth=3
	sub.d	$a0, $zero, $a0
	b	.LBB0_121
	.p2align	4, , 16
.LBB0_142:                              # %._crit_edge844
                                        #   in Loop: Header=BB0_16 Depth=2
	move	$s7, $s3
	ld.w	$s3, $sp, 200
	ld.w	$a0, $s4, %pc_lo12(nPinLocs)
	add.w	$fp, $s3, $s2
	bge	$a0, $fp, .LBB0_144
# %bb.143:                              #   in Loop: Header=BB0_16 Depth=2
	pcalau12i	$a1, %got_pc_hi20(fpo)
	ld.d	$s0, $a1, %got_pc_lo12(fpo)
	ld.d	$a3, $s0, 0
	sub.w	$s3, $a0, $s2
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	ori	$a1, $zero, 36
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	ori	$a1, $zero, 36
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, %pc_lo12(nPinLocs)
	ld.d	$a0, $s0, 0
	sub.w	$a2, $fp, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a1, $a1, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_144:                              #   in Loop: Header=BB0_16 Depth=2
	addi.d	$s1, $sp, 1008
	blt	$s3, $s5, .LBB0_147
# %bb.145:                              # %.lr.ph851.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	move	$fp, $zero
	addi.d	$s0, $sp, 208
	.p2align	4, , 16
.LBB0_146:                              # %.lr.ph851
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(findLoc)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, -4
	addi.d	$fp, $fp, 1
	addi.d	$s0, $s0, 8
	bltu	$fp, $s3, .LBB0_146
.LBB0_147:                              # %.preheader744
                                        #   in Loop: Header=BB0_16 Depth=2
	ori	$a6, $zero, 2
	ld.w	$a2, $s4, %pc_lo12(nPinLocs)
	addi.w	$a0, $a2, 1
	addi.d	$s2, $sp, 1420
	blez	$a2, .LBB0_152
# %bb.148:                              # %.lr.ph855
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $a1, %pc_lo12(lArray)
	ld.w	$a1, $a3, 20
	addi.d	$s4, $sp, 1416
	addi.d	$s6, $sp, 1404
	vld	$vr6, $sp, 32                   # 16-byte Folded Reload
	bne	$a1, $s5, .LBB0_153
# %bb.149:                              # %.lr.ph1248.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	move	$a1, $zero
	bstrpick.d	$a4, $a0, 31, 0
	addi.d	$a3, $a3, 36
	addi.d	$a4, $a4, -2
	ori	$ra, $zero, 404
	.p2align	4, , 16
.LBB0_150:                              # %.lr.ph1248
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beqz	$a4, .LBB0_154
# %bb.151:                              #   in Loop: Header=BB0_150 Depth=3
	ld.w	$a5, $a3, 0
	addi.w	$a1, $a1, 1
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, -1
	beq	$a5, $s5, .LBB0_150
	b	.LBB0_155
	.p2align	4, , 16
.LBB0_152:                              # %._crit_edge856.thread
                                        #   in Loop: Header=BB0_16 Depth=2
	move	$a1, $zero
	addi.d	$s4, $sp, 1416
	addi.d	$s6, $sp, 1404
	ori	$ra, $zero, 404
	vld	$vr6, $sp, 32                   # 16-byte Folded Reload
	b	.LBB0_161
.LBB0_153:                              #   in Loop: Header=BB0_16 Depth=2
	move	$a1, $zero
	ori	$ra, $zero, 404
	b	.LBB0_155
.LBB0_154:                              #   in Loop: Header=BB0_16 Depth=2
	move	$a1, $a2
.LBB0_155:                              # %.lr.ph865
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(lArray)
	alsl.d	$a4, $a2, $a3, 4
	ld.w	$a4, $a4, 4
	bne	$a4, $s5, .LBB0_161
	.p2align	4, , 16
.LBB0_156:                              # %.lr.ph1253
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blt	$a2, $a6, .LBB0_159
# %bb.157:                              #   in Loop: Header=BB0_156 Depth=3
	addi.w	$a2, $a2, -1
	alsl.d	$a0, $a2, $a3, 4
	ld.w	$a0, $a0, 4
	beq	$a0, $s5, .LBB0_156
# %bb.158:                              # %.preheader730.preheader.loopexit
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.w	$a0, $a2, 1
	b	.LBB0_161
.LBB0_159:                              #   in Loop: Header=BB0_16 Depth=2
	ori	$a0, $zero, 1
	b	.LBB0_161
	.p2align	4, , 16
.LBB0_160:                              # %.loopexit731
                                        #   in Loop: Header=BB0_161 Depth=3
	beqz	$t5, .LBB0_201
.LBB0_161:                              # %.preheader730
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_166 Depth 4
                                        #           Child Loop BB0_179 Depth 5
                                        #           Child Loop BB0_176 Depth 5
                                        #           Child Loop BB0_195 Depth 5
                                        #           Child Loop BB0_198 Depth 5
                                        #           Child Loop BB0_190 Depth 5
                                        #           Child Loop BB0_193 Depth 5
	blt	$s8, $s5, .LBB0_200
# %bb.162:                              # %.lr.ph893
                                        #   in Loop: Header=BB0_161 Depth=3
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(lArray)
	move	$a3, $zero
	move	$t5, $zero
	addi.d	$a4, $a2, -8
	addi.d	$a5, $a2, 20
	addi.d	$a6, $a2, 32
	addi.d	$a7, $a2, 4
	ori	$t4, $zero, 1
	move	$t0, $s6
	move	$t1, $s2
	move	$t2, $s4
	b	.LBB0_166
	.p2align	4, , 16
.LBB0_163:                              # %.loopexit714
                                        #   in Loop: Header=BB0_166 Depth=4
	add.w	$a1, $t5, $a1
.LBB0_164:                              # %.sink.split
                                        #   in Loop: Header=BB0_166 Depth=4
	st.w	$zero, $t4, 4
	ori	$t5, $zero, 1
.LBB0_165:                              #   in Loop: Header=BB0_166 Depth=4
	addi.d	$t4, $t3, 1
	ld.w	$s8, $sp, 1008
	addi.d	$a3, $a3, 1
	addi.d	$t2, $t2, 404
	addi.d	$t1, $t1, 404
	addi.d	$t0, $t0, 404
	bge	$t3, $s8, .LBB0_160
.LBB0_166:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_161 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_179 Depth 5
                                        #           Child Loop BB0_176 Depth 5
                                        #           Child Loop BB0_195 Depth 5
                                        #           Child Loop BB0_198 Depth 5
                                        #           Child Loop BB0_190 Depth 5
                                        #           Child Loop BB0_193 Depth 5
	move	$t3, $t4
	mul.d	$t4, $t4, $ra
	add.d	$t4, $s1, $t4
	ld.w	$t6, $t4, 4
	beqz	$t6, .LBB0_165
# %bb.167:                              #   in Loop: Header=BB0_166 Depth=4
	srai.d	$t7, $t6, 31
	xor	$t8, $t6, $t7
	sub.w	$t8, $t8, $t7
	addi.w	$t7, $a1, 1
	bge	$t7, $t8, .LBB0_173
# %bb.168:                              #   in Loop: Header=BB0_166 Depth=4
	ld.w	$t7, $t4, 0
	add.w	$t8, $t7, $t8
	blt	$t8, $a0, .LBB0_165
# %bb.169:                              #   in Loop: Header=BB0_166 Depth=4
	mul.d	$t5, $a3, $ra
	add.d	$t5, $s2, $t5
	blt	$t6, $s5, .LBB0_180
# %bb.170:                              #   in Loop: Header=BB0_166 Depth=4
	blt	$t7, $s5, .LBB0_199
# %bb.171:                              # %.lr.ph885.preheader
                                        #   in Loop: Header=BB0_166 Depth=4
	sub.w	$t8, $a0, $t7
	addi.d	$t6, $t8, 1
	slt	$t7, $a0, $t6
	maskeqz	$t6, $t6, $t7
	masknez	$t7, $a0, $t7
	or	$fp, $t6, $t7
	sub.d	$t6, $fp, $t8
	ori	$t7, $zero, 1
	ori	$s0, $zero, 8
	bgeu	$t6, $s0, .LBB0_183
# %bb.172:                              #   in Loop: Header=BB0_166 Depth=4
	move	$t5, $t8
	b	.LBB0_192
	.p2align	4, , 16
.LBB0_173:                              #   in Loop: Header=BB0_166 Depth=4
	ld.w	$t5, $t4, 0
	blt	$t6, $s5, .LBB0_177
# %bb.174:                              # %.preheader
                                        #   in Loop: Header=BB0_166 Depth=4
	blt	$t5, $s5, .LBB0_163
# %bb.175:                              # %.lr.ph877.preheader
                                        #   in Loop: Header=BB0_166 Depth=4
	move	$t6, $zero
	alsl.d	$t7, $a1, $a5, 4
	move	$t8, $t1
	.p2align	4, , 16
.LBB0_176:                              # %.lr.ph877
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_161 Depth=3
                                        #         Parent Loop BB0_166 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$t5, $t8, 0
	st.w	$t5, $t7, -4
	st.w	$s5, $t7, 0
	ld.w	$t5, $t4, 0
	addi.d	$t6, $t6, 1
	addi.d	$t7, $t7, 16
	addi.d	$t8, $t8, 4
	blt	$t6, $t5, .LBB0_176
	b	.LBB0_163
.LBB0_177:                              #   in Loop: Header=BB0_166 Depth=4
	blt	$t5, $s5, .LBB0_163
# %bb.178:                              # %.lr.ph874.preheader
                                        #   in Loop: Header=BB0_166 Depth=4
	move	$t6, $zero
	alsl.d	$t7, $t5, $t2, 2
	alsl.d	$t8, $a1, $a5, 4
	.p2align	4, , 16
.LBB0_179:                              # %.lr.ph874
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_161 Depth=3
                                        #         Parent Loop BB0_166 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$t5, $t7, 0
	st.w	$t5, $t8, -4
	st.w	$s5, $t8, 0
	ld.w	$t5, $t4, 0
	addi.d	$t7, $t7, -4
	addi.d	$t6, $t6, 1
	addi.d	$t8, $t8, 16
	blt	$t6, $t5, .LBB0_179
	b	.LBB0_163
.LBB0_180:                              #   in Loop: Header=BB0_166 Depth=4
	blt	$t7, $s5, .LBB0_199
# %bb.181:                              # %.lr.ph881.preheader
                                        #   in Loop: Header=BB0_166 Depth=4
	sub.w	$s0, $a0, $t7
	addi.d	$t6, $s0, 1
	slt	$t8, $a0, $t6
	maskeqz	$t6, $t6, $t8
	masknez	$t8, $a0, $t8
	or	$t8, $t6, $t8
	sub.d	$t6, $t8, $s0
	ori	$fp, $zero, 8
	bgeu	$t6, $fp, .LBB0_186
# %bb.182:                              #   in Loop: Header=BB0_166 Depth=4
	move	$t8, $t7
	move	$t5, $s0
	b	.LBB0_197
.LBB0_183:                              # %vector.memcheck
                                        #   in Loop: Header=BB0_166 Depth=4
	alsl.d	$s0, $t8, $a2, 4
	alsl.d	$s1, $t6, $t5, 2
	bgeu	$s0, $s1, .LBB0_189
# %bb.184:                              # %vector.memcheck
                                        #   in Loop: Header=BB0_166 Depth=4
	alsl.d	$fp, $fp, $a4, 4
	bgeu	$t5, $fp, .LBB0_189
# %bb.185:                              #   in Loop: Header=BB0_166 Depth=4
	move	$t5, $t8
	addi.d	$s1, $sp, 1008
	b	.LBB0_192
.LBB0_186:                              # %vector.memcheck1279
                                        #   in Loop: Header=BB0_166 Depth=4
	alsl.d	$fp, $s0, $a2, 4
	alsl.d	$s1, $t7, $t5, 2
	bgeu	$fp, $s1, .LBB0_194
# %bb.187:                              # %vector.memcheck1279
                                        #   in Loop: Header=BB0_166 Depth=4
	alsl.d	$fp, $t8, $a4, 4
	add.d	$s1, $s0, $t7
	sub.d	$t8, $s1, $t8
	alsl.d	$t5, $t8, $t5, 2
	bgeu	$t5, $fp, .LBB0_194
# %bb.188:                              #   in Loop: Header=BB0_166 Depth=4
	move	$t8, $t7
	move	$t5, $s0
	addi.d	$s1, $sp, 1008
	b	.LBB0_197
.LBB0_189:                              # %vector.ph1267
                                        #   in Loop: Header=BB0_166 Depth=4
	move	$s0, $zero
	move	$fp, $t6
	bstrins.d	$fp, $zero, 1, 0
	move	$t7, $t6
	bstrins.d	$t7, $s5, 1, 0
	add.d	$t5, $fp, $t8
	alsl.d	$t8, $t8, $a6, 4
	move	$s1, $fp
	.p2align	4, , 16
.LBB0_190:                              # %vector.body1270
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_161 Depth=3
                                        #         Parent Loop BB0_166 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	vldx	$vr0, $t1, $s0
	vstelm.w	$vr0, $t8, -32, 0
	vstelm.w	$vr0, $t8, -16, 1
	vstelm.w	$vr0, $t8, 0, 2
	vstelm.w	$vr0, $t8, 16, 3
	st.w	$s5, $t8, -28
	st.w	$s5, $t8, -12
	st.w	$s5, $t8, 4
	st.w	$s5, $t8, 20
	addi.d	$s0, $s0, 16
	addi.d	$s1, $s1, -4
	addi.d	$t8, $t8, 64
	bnez	$s1, .LBB0_190
# %bb.191:                              # %middle.block1275
                                        #   in Loop: Header=BB0_166 Depth=4
	addi.d	$s1, $sp, 1008
	beq	$t6, $fp, .LBB0_199
.LBB0_192:                              # %.lr.ph885.preheader1423
                                        #   in Loop: Header=BB0_166 Depth=4
	slli.d	$t6, $t7, 2
	alsl.d	$t7, $t5, $a7, 4
	.p2align	4, , 16
.LBB0_193:                              # %.lr.ph885
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_161 Depth=3
                                        #         Parent Loop BB0_166 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ldx.w	$t8, $t2, $t6
	st.w	$t8, $t7, -4
	st.w	$s5, $t7, 0
	addi.d	$t5, $t5, 1
	addi.d	$t6, $t6, 4
	addi.d	$t7, $t7, 16
	blt	$t5, $a0, .LBB0_193
	b	.LBB0_199
.LBB0_194:                              # %vector.ph1293
                                        #   in Loop: Header=BB0_166 Depth=4
	move	$fp, $t6
	bstrins.d	$fp, $zero, 1, 0
	sub.d	$t8, $t7, $fp
	add.d	$t5, $fp, $s0
	alsl.d	$t7, $t7, $t0, 2
	alsl.d	$s0, $s0, $a6, 4
	move	$s1, $fp
	.p2align	4, , 16
.LBB0_195:                              # %vector.body1296
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_161 Depth=3
                                        #         Parent Loop BB0_166 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	vld	$vr0, $t7, 0
	vstelm.w	$vr0, $s0, -32, 3
	vstelm.w	$vr0, $s0, -16, 2
	vstelm.w	$vr0, $s0, 0, 1
	vstelm.w	$vr0, $s0, 16, 0
	st.w	$s5, $s0, -28
	st.w	$s5, $s0, -12
	st.w	$s5, $s0, 4
	st.w	$s5, $s0, 20
	addi.d	$s1, $s1, -4
	addi.d	$t7, $t7, -16
	addi.d	$s0, $s0, 64
	bnez	$s1, .LBB0_195
# %bb.196:                              # %middle.block1302
                                        #   in Loop: Header=BB0_166 Depth=4
	addi.d	$s1, $sp, 1008
	beq	$t6, $fp, .LBB0_199
.LBB0_197:                              # %.lr.ph881.preheader1424
                                        #   in Loop: Header=BB0_166 Depth=4
	slli.d	$t6, $t8, 2
	alsl.d	$t7, $t5, $a7, 4
	.p2align	4, , 16
.LBB0_198:                              # %.lr.ph881
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_161 Depth=3
                                        #         Parent Loop BB0_166 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ldx.w	$t8, $t2, $t6
	st.w	$t8, $t7, -4
	st.w	$s5, $t7, 0
	addi.d	$t5, $t5, 1
	addi.d	$t6, $t6, -4
	addi.d	$t7, $t7, 16
	blt	$t5, $a0, .LBB0_198
.LBB0_199:                              # %.loopexit
                                        #   in Loop: Header=BB0_166 Depth=4
	ld.w	$t5, $t4, 0
	sub.w	$a0, $a0, $t5
	b	.LBB0_164
	.p2align	4, , 16
.LBB0_200:                              #   in Loop: Header=BB0_16 Depth=2
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	addi.d	$s0, $sp, 200
	ori	$s6, $zero, 2
	ori	$s2, $zero, 44
	b	.LBB0_205
	.p2align	4, , 16
.LBB0_201:                              # %.preheader743
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.d	$t7, $sp, 1012
	ori	$s6, $zero, 2
	ori	$s2, $zero, 44
	blt	$s8, $s5, .LBB0_204
# %bb.202:                              # %.lr.ph902.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	ori	$a2, $zero, 8
	bgeu	$s8, $a2, .LBB0_230
# %bb.203:                              #   in Loop: Header=BB0_16 Depth=2
	move	$a2, $zero
	ori	$a3, $zero, 1
	b	.LBB0_268
.LBB0_204:                              #   in Loop: Header=BB0_16 Depth=2
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	addi.d	$s0, $sp, 200
.LBB0_205:                              # %.preheader741
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
.LBB0_206:                              # %.preheader741
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 176                   # 8-byte Folded Reload
	blt	$s3, $s5, .LBB0_224
# %bb.207:                              # %.lr.ph944
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(lArray)
	move	$a1, $zero
	addi.d	$a2, $sp, 204
	b	.LBB0_209
	.p2align	4, , 16
.LBB0_208:                              #   in Loop: Header=BB0_209 Depth=3
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 8
	bgeu	$a1, $s3, .LBB0_211
.LBB0_209:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a3, $a2, 0
	alsl.d	$a4, $a3, $a0, 4
	ld.w	$a5, $a4, 4
	bnez	$a5, .LBB0_208
# %bb.210:                              #   in Loop: Header=BB0_209 Depth=3
	ld.w	$a5, $a2, 4
	addi.d	$a4, $a4, 4
	st.w	$s5, $a4, 0
	slli.d	$a3, $a3, 4
	stx.w	$a5, $a0, $a3
	st.w	$zero, $a2, 0
	b	.LBB0_208
	.p2align	4, , 16
.LBB0_211:                              # %.lr.ph949.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	ori	$a1, $zero, 1
	b	.LBB0_215
.LBB0_212:                              # %.loopexit717.sink.splitsplit
                                        #   in Loop: Header=BB0_215 Depth=3
	alsl.d	$a3, $a3, $t2, 4
.LBB0_213:                              # %.loopexit717.sink.split
                                        #   in Loop: Header=BB0_215 Depth=3
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $s0
	st.w	$s5, $a3, 0
	slli.d	$a3, $a6, 4
	stx.w	$a4, $a2, $a3
	st.w	$zero, $a1, 0
	.p2align	4, , 16
.LBB0_214:                              # %.loopexit717
                                        #   in Loop: Header=BB0_215 Depth=3
	addi.d	$a1, $a0, 1
	bgeu	$a0, $s3, .LBB0_224
.LBB0_215:                              # %.lr.ph949
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_219 Depth 4
	move	$a0, $a1
	alsl.d	$a1, $a1, $s0, 3
	ld.w	$a3, $a1, -4
	beqz	$a3, .LBB0_214
# %bb.216:                              # %.preheader716
                                        #   in Loop: Header=BB0_215 Depth=3
	ld.w	$a5, $t5, %pc_lo12(nPinLocs)
	blt	$a5, $s6, .LBB0_214
# %bb.217:                              # %.lr.ph946
                                        #   in Loop: Header=BB0_215 Depth=3
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(lArray)
	slli.d	$a4, $a0, 1
	addi.d	$a1, $a1, -4
	addi.d	$a7, $a3, -1
	addi.d	$t0, $a2, -12
	slli.d	$t1, $a3, 4
	addi.d	$a6, $a3, 1
	addi.d	$t2, $a2, 20
	addi.d	$t3, $a5, -1
	b	.LBB0_219
	.p2align	4, , 16
.LBB0_218:                              #   in Loop: Header=BB0_219 Depth=4
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, -16
	addi.d	$a6, $a6, 1
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, 16
	beqz	$t3, .LBB0_214
.LBB0_219:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_215 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	blt	$a5, $a6, .LBB0_221
# %bb.220:                              #   in Loop: Header=BB0_219 Depth=4
	ldx.w	$t4, $t2, $t1
	beqz	$t4, .LBB0_212
.LBB0_221:                              #   in Loop: Header=BB0_219 Depth=4
	blt	$a7, $s5, .LBB0_218
# %bb.222:                              #   in Loop: Header=BB0_219 Depth=4
	ldx.w	$t4, $t0, $t1
	bnez	$t4, .LBB0_218
# %bb.223:                              # %..loopexit717.sink.split_crit_edge
                                        #   in Loop: Header=BB0_215 Depth=3
	alsl.d	$a3, $a3, $t0, 4
	move	$a6, $a7
	b	.LBB0_213
	.p2align	4, , 16
.LBB0_224:                              # %.preheader739
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a2, $t5, %pc_lo12(nPinLocs)
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(lArray)
	blt	$a2, $s5, .LBB0_229
# %bb.225:                              # %.lr.ph952
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(UCptr)
	move	$a3, $zero
	addi.d	$a0, $a0, 28
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	b	.LBB0_227
	.p2align	4, , 16
.LBB0_226:                              #   in Loop: Header=BB0_227 Depth=3
	addi.d	$a3, $a3, 1
	addi.d	$a0, $a0, 16
	bge	$a3, $a2, .LBB0_13
.LBB0_227:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $a0, -8
	bne	$a4, $s5, .LBB0_226
# %bb.228:                              #   in Loop: Header=BB0_227 Depth=3
	ld.w	$a2, $a0, -12
	ld.d	$a4, $a0, -4
	mul.d	$a2, $a2, $s2
	add.d	$a2, $a1, $a2
	st.d	$a4, $a2, 36
	ld.w	$a2, $t5, %pc_lo12(nPinLocs)
	b	.LBB0_226
	.p2align	4, , 16
.LBB0_229:                              #   in Loop: Header=BB0_16 Depth=2
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	b	.LBB0_14
.LBB0_230:                              # %vector.ph
                                        #   in Loop: Header=BB0_16 Depth=2
	bstrpick.d	$a2, $s8, 30, 3
	slli.d	$a4, $a2, 3
	srli.d	$a2, $s8, 3
	ori	$a3, $zero, 1
	bstrins.d	$a3, $a2, 30, 3
	ori	$a2, $zero, 2628
	add.d	$a2, $sp, $a2
	move	$a5, $a4
	vori.b	$vr0, $vr6, 0
	vori.b	$vr1, $vr6, 0
	.p2align	4, , 16
.LBB0_231:                              # %vector.body
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a6, $a2, -1212
	ld.w	$a7, $a2, -808
	ld.w	$t0, $a2, -404
	ld.w	$t1, $a2, 0
	vinsgr2vr.w	$vr2, $a6, 0
	vinsgr2vr.w	$vr2, $a7, 1
	vinsgr2vr.w	$vr2, $t0, 2
	vinsgr2vr.w	$vr2, $t1, 3
	ld.w	$a6, $a2, 404
	ld.w	$a7, $a2, 808
	ld.w	$t0, $a2, 1212
	ld.w	$t1, $a2, 1616
	vinsgr2vr.w	$vr3, $a6, 0
	vinsgr2vr.w	$vr3, $a7, 1
	vinsgr2vr.w	$vr3, $t0, 2
	vinsgr2vr.w	$vr3, $t1, 3
	vseqi.w	$vr2, $vr2, 0
	vseqi.w	$vr3, $vr3, 0
	ld.w	$a6, $a2, -1216
	ld.w	$a7, $a2, -812
	ld.w	$t0, $a2, -408
	ld.w	$t1, $a2, -4
	vinsgr2vr.w	$vr4, $a6, 0
	vinsgr2vr.w	$vr4, $a7, 1
	vinsgr2vr.w	$vr4, $t0, 2
	vinsgr2vr.w	$vr4, $t1, 3
	ld.w	$a6, $a2, 400
	ld.w	$a7, $a2, 804
	ld.w	$t0, $a2, 1208
	ld.w	$t1, $a2, 1612
	vinsgr2vr.w	$vr5, $a6, 0
	vinsgr2vr.w	$vr5, $a7, 1
	vinsgr2vr.w	$vr5, $t0, 2
	vinsgr2vr.w	$vr5, $t1, 3
	vbitsel.v	$vr2, $vr4, $vr6, $vr2
	vadd.w	$vr0, $vr0, $vr2
	vbitsel.v	$vr2, $vr5, $vr6, $vr3
	vadd.w	$vr1, $vr1, $vr2
	addi.d	$a5, $a5, -8
	addi.d	$a2, $a2, 2047
	addi.d	$a2, $a2, 1185
	bnez	$a5, .LBB0_231
# %bb.232:                              # %middle.block
                                        #   in Loop: Header=BB0_16 Depth=2
	vadd.w	$vr0, $vr1, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a2, $vr0, 0
	bne	$a4, $s8, .LBB0_268
.LBB0_233:                              # %.preheader742
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.d	$t8, $sp, 1016
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	addi.d	$s0, $sp, 200
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	blt	$a2, $s5, .LBB0_206
# %bb.234:                              # %.lr.ph940
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(lArray)
	addi.d	$a3, $a3, 20
	b	.LBB0_236
	.p2align	4, , 16
.LBB0_235:                              # %.loopexit726
                                        #   in Loop: Header=BB0_236 Depth=3
	add.w	$a1, $t1, $a4
	st.w	$zero, $a6, 4
	sub.w	$a2, $a2, $a4
	blez	$a2, .LBB0_206
.LBB0_236:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_240 Depth 4
                                        #         Child Loop BB0_263 Depth 4
                                        #         Child Loop BB0_253 Depth 4
                                        #         Child Loop BB0_256 Depth 4
                                        #         Child Loop BB0_249 Depth 4
                                        #         Child Loop BB0_266 Depth 4
                                        #         Child Loop BB0_260 Depth 4
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a5, $a4, %pc_lo12(nPinLocs)
	ld.w	$a4, $sp, 1008
	addi.w	$a6, $a5, 1
	blt	$a4, $s5, .LBB0_244
# %bb.237:                              # %.lr.ph911.preheader
                                        #   in Loop: Header=BB0_236 Depth=3
	move	$a5, $zero
	move	$t0, $zero
	addi.d	$a4, $a4, 1
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a4, $a4, -1
	ori	$t1, $zero, 1
	move	$t2, $s4
	move	$a7, $a6
	b	.LBB0_240
	.p2align	4, , 16
.LBB0_238:                              #   in Loop: Header=BB0_240 Depth=4
	slt	$t4, $t3, $a7
	masknez	$a5, $a5, $t4
	maskeqz	$t5, $t1, $t4
	or	$a5, $t5, $a5
	masknez	$a7, $a7, $t4
	maskeqz	$t3, $t3, $t4
	or	$a7, $t3, $a7
.LBB0_239:                              #   in Loop: Header=BB0_240 Depth=4
	addi.w	$t1, $t1, 1
	addi.d	$a4, $a4, -1
	addi.d	$t2, $t2, 404
	beqz	$a4, .LBB0_243
.LBB0_240:                              # %.lr.ph911
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_236 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$t3, $t2, 0
	beqz	$t3, .LBB0_239
# %bb.241:                              #   in Loop: Header=BB0_240 Depth=4
	srai.d	$t4, $t3, 31
	xor	$t3, $t3, $t4
	sub.w	$t3, $t3, $t4
	bge	$t3, $a6, .LBB0_238
# %bb.242:                              #   in Loop: Header=BB0_240 Depth=4
	sltui	$t4, $t0, 1
	masknez	$t0, $t0, $t4
	maskeqz	$a5, $a5, $t4
	or	$a5, $a5, $t0
	masknez	$a6, $a6, $t4
	maskeqz	$a7, $a7, $t4
	or	$a7, $a7, $a6
	move	$a6, $t3
	move	$t0, $t1
	b	.LBB0_239
	.p2align	4, , 16
.LBB0_243:                              # %.preheader729.loopexit
                                        #   in Loop: Header=BB0_236 Depth=3
	mul.d	$a4, $t0, $ra
	ldx.w	$a4, $a4, $s1
	b	.LBB0_245
	.p2align	4, , 16
.LBB0_244:                              #   in Loop: Header=BB0_236 Depth=3
	move	$t0, $zero
	move	$a5, $zero
	move	$a7, $a6
.LBB0_245:                              # %.preheader729
                                        #   in Loop: Header=BB0_236 Depth=3
	add.w	$a6, $a2, $a6
	slt	$t1, $a0, $a6
	masknez	$a6, $a6, $t1
	maskeqz	$t1, $a0, $t1
	or	$t2, $t1, $a6
	sub.d	$a6, $t2, $a2
	mul.d	$t0, $t0, $ra
	move	$s7, $a6
	addi.w	$t1, $a6, -1
	add.w	$t3, $t1, $a4
	add.d	$a6, $s1, $t0
	bge	$a7, $t3, .LBB0_250
# %bb.246:                              #   in Loop: Header=BB0_236 Depth=3
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
	blez	$t2, .LBB0_254
# %bb.247:                              # %.preheader721
                                        #   in Loop: Header=BB0_236 Depth=3
	blt	$a4, $s5, .LBB0_257
# %bb.248:                              # %.lr.ph929.preheader
                                        #   in Loop: Header=BB0_236 Depth=3
	move	$t1, $zero
	alsl.d	$a7, $a7, $a3, 4
	add.d	$t0, $t8, $t0
	.p2align	4, , 16
.LBB0_249:                              # %.lr.ph929
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_236 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a4, $t0, 0
	st.w	$a4, $a7, -4
	st.w	$s5, $a7, 0
	ld.w	$a4, $a6, 0
	addi.d	$t1, $t1, 1
	addi.d	$a7, $a7, 16
	addi.d	$t0, $t0, 4
	blt	$t1, $a4, .LBB0_249
	b	.LBB0_257
	.p2align	4, , 16
.LBB0_250:                              #   in Loop: Header=BB0_236 Depth=3
	ld.w	$a1, $a6, 4
	blez	$a1, .LBB0_261
# %bb.251:                              # %.preheader725
                                        #   in Loop: Header=BB0_236 Depth=3
	blt	$a4, $s5, .LBB0_235
# %bb.252:                              # %.lr.ph922
                                        #   in Loop: Header=BB0_236 Depth=3
	move	$a1, $zero
	alsl.d	$a5, $t1, $a3, 4
	add.d	$a7, $t8, $t0
	.p2align	4, , 16
.LBB0_253:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_236 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a4, $a7, 0
	st.w	$a4, $a5, -4
	st.w	$s5, $a5, 0
	ld.w	$a4, $a6, 0
	addi.d	$a1, $a1, 1
	addi.d	$a5, $a5, 16
	addi.d	$a7, $a7, 4
	blt	$a1, $a4, .LBB0_253
	b	.LBB0_235
.LBB0_254:                              # %.preheader723
                                        #   in Loop: Header=BB0_236 Depth=3
	blt	$a4, $s5, .LBB0_257
# %bb.255:                              # %.lr.ph926.preheader
                                        #   in Loop: Header=BB0_236 Depth=3
	move	$t1, $zero
	alsl.d	$a4, $a4, $t0, 2
	add.d	$t0, $t7, $a4
	alsl.d	$a7, $a7, $a3, 4
	.p2align	4, , 16
.LBB0_256:                              # %.lr.ph926
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_236 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a4, $t0, 0
	st.w	$a4, $a7, -4
	st.w	$s5, $a7, 0
	ld.w	$a4, $a6, 0
	addi.d	$t0, $t0, -4
	addi.d	$t1, $t1, 1
	addi.d	$a7, $a7, 16
	blt	$t1, $a4, .LBB0_256
.LBB0_257:                              # %.loopexit722
                                        #   in Loop: Header=BB0_236 Depth=3
	st.w	$zero, $a6, 4
	mul.d	$a7, $a5, $ra
	add.d	$a5, $s1, $a7
	ld.w	$t0, $a5, 4
	ldx.w	$a6, $a7, $s1
	sub.d	$t1, $s7, $a1
	move	$s7, $t1
	add.d	$a1, $t1, $a4
	addi.w	$a1, $a1, -1
	blt	$t0, $s5, .LBB0_264
# %bb.258:                              # %.preheader718
                                        #   in Loop: Header=BB0_236 Depth=3
	blt	$a6, $s5, .LBB0_267
# %bb.259:                              # %.lr.ph937.preheader
                                        #   in Loop: Header=BB0_236 Depth=3
	move	$t0, $zero
	alsl.d	$t1, $a1, $a3, 4
	add.d	$a7, $t8, $a7
	.p2align	4, , 16
.LBB0_260:                              # %.lr.ph937
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_236 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a6, $a7, 0
	st.w	$a6, $t1, -4
	st.w	$s5, $t1, 0
	ld.w	$a6, $a5, 0
	addi.d	$t0, $t0, 1
	addi.d	$t1, $t1, 16
	addi.d	$a7, $a7, 4
	blt	$t0, $a6, .LBB0_260
	b	.LBB0_267
.LBB0_261:                              # %.preheader727
                                        #   in Loop: Header=BB0_236 Depth=3
	blt	$a4, $s5, .LBB0_235
# %bb.262:                              # %.lr.ph919
                                        #   in Loop: Header=BB0_236 Depth=3
	move	$a1, $zero
	alsl.d	$a4, $a4, $t0, 2
	add.d	$a5, $t7, $a4
	alsl.d	$a7, $t1, $a3, 4
	.p2align	4, , 16
.LBB0_263:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_236 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a4, $a5, 0
	st.w	$a4, $a7, -4
	st.w	$s5, $a7, 0
	ld.w	$a4, $a6, 0
	addi.d	$a5, $a5, -4
	addi.d	$a1, $a1, 1
	addi.d	$a7, $a7, 16
	blt	$a1, $a4, .LBB0_263
	b	.LBB0_235
.LBB0_264:                              #   in Loop: Header=BB0_236 Depth=3
	blt	$a6, $s5, .LBB0_267
# %bb.265:                              # %.lr.ph934.preheader
                                        #   in Loop: Header=BB0_236 Depth=3
	move	$t0, $zero
	alsl.d	$a6, $a6, $a7, 2
	add.d	$a7, $t7, $a6
	alsl.d	$t1, $a1, $a3, 4
	.p2align	4, , 16
.LBB0_266:                              # %.lr.ph934
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_236 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a6, $a7, 0
	st.w	$a6, $t1, -4
	st.w	$s5, $t1, 0
	ld.w	$a6, $a5, 0
	addi.d	$a7, $a7, -4
	addi.d	$t0, $t0, 1
	addi.d	$t1, $t1, 16
	blt	$t0, $a6, .LBB0_266
.LBB0_267:                              # %.loopexit719
                                        #   in Loop: Header=BB0_236 Depth=3
	add.w	$a1, $a6, $a1
	st.w	$zero, $a5, 4
	add.d	$a4, $a6, $a4
	sub.w	$a2, $a2, $a4
	bgtz	$a2, .LBB0_236
	b	.LBB0_206
.LBB0_268:                              # %.lr.ph902.preheader1433
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a4, $s8, 1
	bstrpick.d	$a5, $a4, 31, 0
	mul.d	$a4, $a3, $ra
	add.d	$a4, $t7, $a4
	sub.d	$a3, $a5, $a3
	b	.LBB0_270
	.p2align	4, , 16
.LBB0_269:                              #   in Loop: Header=BB0_270 Depth=3
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 404
	beqz	$a3, .LBB0_233
.LBB0_270:                              # %.lr.ph902
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a5, $a4, 0
	beqz	$a5, .LBB0_269
# %bb.271:                              #   in Loop: Header=BB0_270 Depth=3
	ld.w	$a5, $a4, -4
	add.w	$a2, $a5, $a2
	b	.LBB0_269
.LBB0_272:                              # %vector.ph1341
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a4, $a1, -1
	move	$a5, $a4
	bstrins.d	$a5, $zero, 1, 0
	move	$a3, $a4
	bstrins.d	$a3, $s5, 1, 0
	move	$a2, $a4
	bstrins.d	$a2, $s6, 1, 0
	addi.d	$a6, $a0, 48
	lu12i.w	$a7, 1
	ori	$a7, $a7, 1780
	add.d	$a7, $sp, $a7
	move	$t0, $a5
	.p2align	4, , 16
.LBB0_273:                              # %vector.body1344
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a7, 0
	vstelm.w	$vr0, $a6, -16, 0
	vstelm.w	$vr0, $a6, 0, 1
	vstelm.w	$vr0, $a6, 16, 2
	vstelm.w	$vr0, $a6, 32, 3
	st.w	$s5, $a6, -12
	st.w	$s5, $a6, 4
	st.w	$s5, $a6, 20
	st.w	$s5, $a6, 36
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, 16
	addi.d	$a6, $a6, 64
	bnez	$t0, .LBB0_273
# %bb.274:                              # %middle.block1350
                                        #   in Loop: Header=BB0_16 Depth=2
	beq	$a4, $a5, .LBB0_86
.LBB0_275:                              # %.lr.ph817.preheader1438
                                        #   in Loop: Header=BB0_16 Depth=2
	sub.d	$a1, $a1, $a3
	alsl.d	$a0, $a3, $a0, 4
	addi.d	$a0, $a0, 20
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1772
	add.d	$a3, $sp, $a3
	alsl.d	$a2, $a2, $a3, 2
	.p2align	4, , 16
.LBB0_276:                              # %.lr.ph817
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a3, $a2, 0
	st.w	$a3, $a0, -4
	st.w	$s5, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 16
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB0_276
	b	.LBB0_86
.LBB0_277:                              # %vector.ph1356
                                        #   in Loop: Header=BB0_16 Depth=2
	move	$a5, $a4
	bstrins.d	$a5, $zero, 1, 0
	sub.d	$a3, $a6, $a5
	move	$a2, $a4
	bstrins.d	$a2, $s6, 1, 0
	alsl.d	$a6, $a6, $a0, 4
	addi.d	$a6, $a6, -32
	move	$a7, $a5
	lu12i.w	$t0, 1
	ori	$t0, $t0, 1780
	add.d	$t0, $sp, $t0
	.p2align	4, , 16
.LBB0_278:                              # %vector.body1359
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $t0, 0
	vstelm.w	$vr0, $a6, 16, 0
	vstelm.w	$vr0, $a6, 0, 1
	vstelm.w	$vr0, $a6, -16, 2
	vstelm.w	$vr0, $a6, -32, 3
	st.w	$s5, $a6, 20
	st.w	$s5, $a6, 4
	st.w	$s5, $a6, -12
	st.w	$s5, $a6, -28
	addi.d	$t0, $t0, 16
	addi.d	$a7, $a7, -4
	addi.d	$a6, $a6, -64
	bnez	$a7, .LBB0_278
# %bb.279:                              # %middle.block1365
                                        #   in Loop: Header=BB0_16 Depth=2
	beq	$a4, $a5, .LBB0_86
.LBB0_280:                              # %.lr.ph812.preheader1439
                                        #   in Loop: Header=BB0_16 Depth=2
	alsl.d	$a0, $a3, $a0, 4
	addi.d	$a0, $a0, -16
	sub.d	$a1, $a1, $a2
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1772
	add.d	$a3, $sp, $a3
	alsl.d	$a2, $a2, $a3, 2
	.p2align	4, , 16
.LBB0_281:                              # %.lr.ph812
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a3, $a2, 0
	st.w	$a3, $a0, 0
	st.w	$s5, $a0, 4
	addi.d	$a0, $a0, -16
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB0_281
	b	.LBB0_86
	.p2align	4, , 16
.LBB0_282:                              # %.preheader753.loopexit
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a0, $s8, 132
.LBB0_283:                              # %.preheader753
                                        #   in Loop: Header=BB0_3 Depth=1
	blt	$a0, $s5, .LBB0_2
# %bb.284:                              # %.lr.ph964
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(UCptr)
	addi.d	$a0, $a0, 1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a1, 84
	addi.d	$a1, $a2, -1
	b	.LBB0_286
	.p2align	4, , 16
.LBB0_285:                              #   in Loop: Header=BB0_286 Depth=2
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 44
	beqz	$a1, .LBB0_2
.LBB0_286:                              #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a0, -4
	bne	$a2, $fp, .LBB0_285
# %bb.287:                              #   in Loop: Header=BB0_286 Depth=2
	ld.w	$a2, $a0, 0
	bne	$a2, $fp, .LBB0_285
# %bb.288:                              #   in Loop: Header=BB0_286 Depth=2
	ld.w	$a2, $a0, -36
	slli.d	$a2, $a2, 4
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ldx.d	$a2, $a3, $a2
	st.d	$a2, $a0, -4
	b	.LBB0_285
.LBB0_289:                              # %._crit_edge971
	lu12i.w	$a0, 1
	ori	$a0, $a0, 240
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
