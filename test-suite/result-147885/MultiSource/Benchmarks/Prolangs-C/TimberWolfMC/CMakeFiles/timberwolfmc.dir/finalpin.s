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
	blez	$a0, .LBB0_288
# %bb.1:                                # %.lr.ph970
	ori	$fp, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$a0, $a0, %got_pc_lo12(cellarray)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, -24415
	ori	$s0, $a0, 3840
	vrepli.b	$vr0, -1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1768
	add.d	$s6, $sp, $a0
	ori	$s8, $zero, 404
	lu12i.w	$a0, 1
	ori	$a0, $a0, 348
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$s7, $zero, 2
	ori	$s1, $zero, 44
	vrepli.b	$vr1, 0
	vst	$vr1, $sp, 32                   # 16-byte Folded Spill
	ori	$a0, $zero, 1
                                        # implicit-def: $r5
                                        # kill: killed $r5
                                        # implicit-def: $r5
                                        # kill: killed $r5
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %.loopexit754
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	addi.d	$a0, $s2, 1
	bge	$s2, $a1, .LBB0_288
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_10 Depth 2
                                        #     Child Loop BB0_16 Depth 2
                                        #       Child Loop BB0_44 Depth 3
                                        #       Child Loop BB0_107 Depth 3
                                        #       Child Loop BB0_35 Depth 3
                                        #       Child Loop BB0_39 Depth 3
                                        #       Child Loop BB0_50 Depth 3
                                        #         Child Loop BB0_56 Depth 4
                                        #         Child Loop BB0_73 Depth 4
                                        #         Child Loop BB0_77 Depth 4
                                        #         Child Loop BB0_61 Depth 4
                                        #         Child Loop BB0_67 Depth 4
                                        #       Child Loop BB0_277 Depth 3
                                        #       Child Loop BB0_280 Depth 3
                                        #       Child Loop BB0_272 Depth 3
                                        #       Child Loop BB0_275 Depth 3
                                        #       Child Loop BB0_113 Depth 3
                                        #       Child Loop BB0_116 Depth 3
                                        #       Child Loop BB0_91 Depth 3
                                        #       Child Loop BB0_94 Depth 3
                                        #       Child Loop BB0_121 Depth 3
                                        #         Child Loop BB0_130 Depth 4
                                        #       Child Loop BB0_147 Depth 3
                                        #       Child Loop BB0_151 Depth 3
                                        #       Child Loop BB0_157 Depth 3
                                        #       Child Loop BB0_162 Depth 3
                                        #         Child Loop BB0_167 Depth 4
                                        #           Child Loop BB0_184 Depth 5
                                        #           Child Loop BB0_181 Depth 5
                                        #           Child Loop BB0_197 Depth 5
                                        #           Child Loop BB0_191 Depth 5
                                        #           Child Loop BB0_194 Depth 5
                                        #           Child Loop BB0_177 Depth 5
                                        #       Child Loop BB0_230 Depth 3
                                        #       Child Loop BB0_269 Depth 3
                                        #       Child Loop BB0_235 Depth 3
                                        #         Child Loop BB0_239 Depth 4
                                        #         Child Loop BB0_262 Depth 4
                                        #         Child Loop BB0_252 Depth 4
                                        #         Child Loop BB0_255 Depth 4
                                        #         Child Loop BB0_248 Depth 4
                                        #         Child Loop BB0_265 Depth 4
                                        #         Child Loop BB0_259 Depth 4
                                        #       Child Loop BB0_208 Depth 3
                                        #       Child Loop BB0_214 Depth 3
                                        #         Child Loop BB0_218 Depth 4
                                        #       Child Loop BB0_226 Depth 3
                                        #     Child Loop BB0_285 Depth 2
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	move	$s2, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a3, $a1, $a0
	ld.w	$a0, $a3, 132
	beqz	$a0, .LBB0_2
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a1, $a3, 56
	alsl.d	$a1, $a1, $a3, 3
	ld.d	$a2, $a1, 152
	ld.d	$s4, $a3, 136
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a1, $a3, 144
	ld.d	$a2, $a2, 96
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(UCptr)
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	st.d	$a1, $a2, %pc_lo12(UCptr)
	blez	$a0, .LBB0_11
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
	move	$a6, $s0
	bstrins.d	$a6, $s0, 58, 32
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
	mul.d	$a4, $a2, $s1
	add.d	$a1, $a1, $a4
	addi.d	$a1, $a1, 40
	sub.d	$a2, $a3, $a2
	.p2align	4, , 16
.LBB0_10:                               # %.lr.ph
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a3, $s0
	bstrins.d	$a3, $s0, 58, 32
	st.d	$a3, $a1, -4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 44
	bnez	$a2, .LBB0_10
.LBB0_11:                               # %.preheader755
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 128
	blez	$a1, .LBB0_282
# %bb.12:                               # %.lr.ph959
                                        #   in Loop: Header=BB0_3 Depth=1
	ori	$s3, $zero, 1
	st.d	$s2, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_13:                               # %._crit_edge953.loopexit
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(lArray)
.LBB0_14:                               # %._crit_edge953
                                        #   in Loop: Header=BB0_16 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 128
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
.LBB0_15:                               #   in Loop: Header=BB0_16 Depth=2
	bge	$a4, $a1, .LBB0_281
.LBB0_16:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_44 Depth 3
                                        #       Child Loop BB0_107 Depth 3
                                        #       Child Loop BB0_35 Depth 3
                                        #       Child Loop BB0_39 Depth 3
                                        #       Child Loop BB0_50 Depth 3
                                        #         Child Loop BB0_56 Depth 4
                                        #         Child Loop BB0_73 Depth 4
                                        #         Child Loop BB0_77 Depth 4
                                        #         Child Loop BB0_61 Depth 4
                                        #         Child Loop BB0_67 Depth 4
                                        #       Child Loop BB0_277 Depth 3
                                        #       Child Loop BB0_280 Depth 3
                                        #       Child Loop BB0_272 Depth 3
                                        #       Child Loop BB0_275 Depth 3
                                        #       Child Loop BB0_113 Depth 3
                                        #       Child Loop BB0_116 Depth 3
                                        #       Child Loop BB0_91 Depth 3
                                        #       Child Loop BB0_94 Depth 3
                                        #       Child Loop BB0_121 Depth 3
                                        #         Child Loop BB0_130 Depth 4
                                        #       Child Loop BB0_147 Depth 3
                                        #       Child Loop BB0_151 Depth 3
                                        #       Child Loop BB0_157 Depth 3
                                        #       Child Loop BB0_162 Depth 3
                                        #         Child Loop BB0_167 Depth 4
                                        #           Child Loop BB0_184 Depth 5
                                        #           Child Loop BB0_181 Depth 5
                                        #           Child Loop BB0_197 Depth 5
                                        #           Child Loop BB0_191 Depth 5
                                        #           Child Loop BB0_194 Depth 5
                                        #           Child Loop BB0_177 Depth 5
                                        #       Child Loop BB0_230 Depth 3
                                        #       Child Loop BB0_269 Depth 3
                                        #       Child Loop BB0_235 Depth 3
                                        #         Child Loop BB0_239 Depth 4
                                        #         Child Loop BB0_262 Depth 4
                                        #         Child Loop BB0_252 Depth 4
                                        #         Child Loop BB0_255 Depth 4
                                        #         Child Loop BB0_248 Depth 4
                                        #         Child Loop BB0_265 Depth 4
                                        #         Child Loop BB0_259 Depth 4
                                        #       Child Loop BB0_208 Depth 3
                                        #       Child Loop BB0_214 Depth 3
                                        #         Child Loop BB0_218 Depth 4
                                        #       Child Loop BB0_226 Depth 3
	move	$a4, $s3
	slli.d	$a0, $s3, 4
	alsl.d	$a0, $s3, $a0, 2
	ldx.w	$a2, $s4, $a0
	addi.d	$s3, $s3, 1
	blez	$a2, .LBB0_15
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=2
	add.d	$a0, $s4, $a0
	ld.w	$a1, $a0, 16
	ld.w	$a0, $a0, 12
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a2, $a3, 56
	pcalau12i	$s0, %pc_hi20(HorV)
	st.w	$a0, $s0, %pc_lo12(HorV)
	movgr2fr.w	$fs0, $a1
	ori	$a0, $zero, 4
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 104                   # 8-byte Folded Spill
	bge	$a2, $a0, .LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=2
	fld.d	$fa0, $a3, 96
	fld.d	$fa1, $a3, 104
	fdiv.d	$fa1, $fa0, $fa1
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_24
# %bb.19:                               # %.split1948
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a0, $s0, %pc_lo12(HorV)
	bnez	$a0, .LBB0_27
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_20:                               #   in Loop: Header=BB0_16 Depth=2
	fld.d	$fa0, $a3, 104
	fld.d	$fa1, $a3, 96
	fdiv.d	$fa1, $fa0, $fa1
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_25
# %bb.21:                               # %.split
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a0, $s0, %pc_lo12(HorV)
	bne	$a0, $fp, .LBB0_26
.LBB0_22:                               # %.thread
                                        #   in Loop: Header=BB0_16 Depth=2
	st.w	$zero, $s0, %pc_lo12(HorV)
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
	ori	$s5, $zero, 1
	bceqz	$fcc0, .LBB0_28
	b	.LBB0_29
.LBB0_24:                               # %call.sqrt1949
                                        #   in Loop: Header=BB0_16 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(HorV)
	bnez	$a0, .LBB0_27
	b	.LBB0_23
.LBB0_25:                               # %call.sqrt
                                        #   in Loop: Header=BB0_16 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(HorV)
	beq	$a0, $fp, .LBB0_22
.LBB0_26:                               # %.thread705
                                        #   in Loop: Header=BB0_16 Depth=2
	st.w	$fp, $s0, %pc_lo12(HorV)
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
	move	$s5, $zero
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
	or	$s4, $a1, $a0
	pcalau12i	$a0, %pc_hi20(nPinLocs)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	st.w	$s4, $a0, %pc_lo12(nPinLocs)
	addi.w	$s2, $s4, 1
	slli.d	$a0, $s2, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(lArray)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $a0, %pc_lo12(lArray)
	blez	$s4, .LBB0_31
# %bb.30:                               # %.lr.ph770.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a0, $s3, 16
	slli.d	$a2, $s4, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_31:                               # %._crit_edge
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.wu	$a0, $a0, 128
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	xor	$a0, $a2, $a0
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a1, 4
	beqz	$s5, .LBB0_41
# %bb.32:                               #   in Loop: Header=BB0_16 Depth=2
	vld	$vr7, $sp, 80                   # 16-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	blez	$s4, .LBB0_46
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
	bstrins.d	$a4, $fp, 1, 0
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
	vld	$vr7, $sp, 80                   # 16-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	blez	$s4, .LBB0_46
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
	bltu	$s2, $a7, .LBB0_105
# %bb.43:                               # %vector.ph1390
                                        #   in Loop: Header=BB0_16 Depth=2
	sub.d	$t1, $a1, $a6
	addi.d	$a7, $a5, -1
	slt	$t2, $a1, $a0
	move	$t0, $a7
	bstrins.d	$t0, $zero, 1, 0
	move	$a4, $a7
	bstrins.d	$a4, $fp, 1, 0
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
	bne	$a7, $t0, .LBB0_105
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
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a1, $s2, 132
	blez	$a1, .LBB0_97
# %bb.47:                               # %.lr.ph806.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(UCptr)
	ori	$s3, $zero, 1
	addi.d	$t4, $sp, 1008
	addi.d	$s4, $sp, 200
	ori	$s1, $zero, 44
	ld.d	$t3, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 176                   # 8-byte Folded Reload
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
	bge	$a2, $a1, .LBB0_81
.LBB0_50:                               # %.lr.ph806
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_56 Depth 4
                                        #         Child Loop BB0_73 Depth 4
                                        #         Child Loop BB0_77 Depth 4
                                        #         Child Loop BB0_61 Depth 4
                                        #         Child Loop BB0_67 Depth 4
	mul.d	$s0, $s3, $s1
	add.d	$a2, $a0, $s0
	ld.wu	$a3, $a2, 4
	bne	$t3, $a3, .LBB0_49
# %bb.51:                               #   in Loop: Header=BB0_50 Depth=3
	ld.w	$a3, $a2, 28
	beqz	$a3, .LBB0_59
# %bb.52:                               #   in Loop: Header=BB0_50 Depth=3
	blt	$a3, $s7, .LBB0_48
# %bb.53:                               #   in Loop: Header=BB0_50 Depth=3
	ld.w	$a1, $sp, 1008
	addi.w	$a1, $a1, 1
	st.w	$a1, $sp, 1008
	mul.d	$a1, $a1, $s8
	stx.w	$fp, $a1, $t4
	ld.w	$a1, $sp, 1008
	mul.d	$a1, $a1, $s8
	add.d	$a1, $t4, $a1
	st.w	$s3, $a1, 8
	ld.w	$a1, $s2, 132
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
	mul.d	$a1, $a1, $s8
	ldx.w	$a4, $a1, $t4
	add.d	$a5, $t4, $a1
	addi.d	$a6, $a4, 1
	stx.w	$a6, $a1, $t4
	alsl.d	$a1, $a4, $a5, 2
	addi.w	$s3, $s3, 1
	st.w	$s3, $a1, 8
	ld.w	$a1, $s2, 132
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
	ld.d	$s1, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ori	$s1, $zero, 44
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 152                   # 8-byte Folded Reload
	addi.d	$t4, $sp, 1008
	ld.w	$a1, $s2, 132
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
	beqz	$a2, .LBB0_81
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
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
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
	ld.w	$t1, $t5, %pc_lo12(nPinLocs)
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
	maskeqz	$a3, $fp, $a3
	or	$a3, $a3, $a4
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1768
	add.d	$a4, $sp, $a4
	st.w	$fp, $a4, 0
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
	alsl.d	$a4, $a4, $s6, 2
	addi.w	$s3, $s3, 1
	st.w	$s3, $a4, 8
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 44
	bnez	$a3, .LBB0_67
	b	.LBB0_81
.LBB0_70:                               #   in Loop: Header=BB0_50 Depth=3
	ld.w	$a1, $sp, 1008
	mul.d	$a1, $a1, $s8
	ldx.w	$s0, $a1, $t4
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1360
	add.d	$a1, $sp, $a1
	ld.w	$a1, $a1, 0
	addi.w	$a2, $s0, 1
	addi.w	$s2, $zero, -1
	beqz	$a1, .LBB0_75
# %bb.71:                               #   in Loop: Header=BB0_50 Depth=3
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$s4, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	move	$s1, $t3
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(UCptr)
	blt	$s0, $s2, .LBB0_79
# %bb.72:                               # %.lr.ph790.preheader
                                        #   in Loop: Header=BB0_50 Depth=3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a1, 31, 0
	addi.d	$a1, $s0, 2
	addi.d	$t4, $sp, 1008
	alsl.d	$a2, $a2, $t4, 2
	addi.d	$s4, $sp, 200
	ld.d	$t5, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_73:                               # %.lr.ph790
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_50 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a3, $sp, 1008
	mul.d	$a3, $a3, $s8
	stx.w	$zero, $a2, $a3
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	bgtz	$a1, .LBB0_73
# %bb.74:                               #   in Loop: Header=BB0_50 Depth=3
	ori	$s1, $zero, 44
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 152                   # 8-byte Folded Reload
	b	.LBB0_80
.LBB0_75:                               # %.preheader735
                                        #   in Loop: Header=BB0_50 Depth=3
	blt	$s0, $s2, .LBB0_78
# %bb.76:                               # %.lr.ph792.preheader
                                        #   in Loop: Header=BB0_50 Depth=3
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a1, $s0, 2
	slli.d	$a2, $a2, 2
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1360
	add.d	$a5, $sp, $a3
	.p2align	4, , 16
.LBB0_77:                               # %.lr.ph792
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_50 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a3, $sp, 1008
	mul.d	$a3, $a3, $s8
	add.d	$a3, $t4, $a3
	ldx.w	$a4, $a3, $a2
	stx.w	$a4, $a2, $a5
	stx.w	$zero, $a3, $a2
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	bgtz	$a1, .LBB0_77
.LBB0_78:                               #   in Loop: Header=BB0_50 Depth=3
	ori	$s1, $zero, 44
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	b	.LBB0_80
.LBB0_79:                               #   in Loop: Header=BB0_50 Depth=3
	addi.d	$t4, $sp, 1008
	addi.d	$s4, $sp, 200
	ori	$s1, $zero, 44
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 176                   # 8-byte Folded Reload
.LBB0_80:                               # %.loopexit736
                                        #   in Loop: Header=BB0_50 Depth=3
	ld.w	$a2, $sp, 1008
	ld.w	$a1, $s2, 132
	addi.d	$a2, $a2, -1
	st.w	$a2, $sp, 1008
	b	.LBB0_49
	.p2align	4, , 16
.LBB0_81:                               # %._crit_edge807.loopexit
                                        #   in Loop: Header=BB0_16 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1768
	add.d	$a0, $sp, $a0
	ld.w	$s2, $a0, 0
	ld.w	$s4, $t5, %pc_lo12(nPinLocs)
	bge	$s4, $s2, .LBB0_83
.LBB0_82:                               #   in Loop: Header=BB0_16 Depth=2
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$s0, $a0, %got_pc_lo12(fpo)
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	move	$a2, $t3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 37
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 152                   # 8-byte Folded Reload
	addi.d	$t4, $sp, 1008
.LBB0_83:                               #   in Loop: Header=BB0_16 Depth=2
	blez	$s2, .LBB0_85
# %bb.84:                               #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a1, $t5, %pc_lo12(nPinLocs)
	bge	$a1, $s2, .LBB0_98
.LBB0_85:                               # %.loopexit747
                                        #   in Loop: Header=BB0_16 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1360
	add.d	$a0, $sp, $a0
	ld.w	$a2, $a0, 0
	ld.w	$a3, $t5, %pc_lo12(nPinLocs)
	add.w	$a0, $a2, $s2
	blez	$a2, .LBB0_95
# %bb.86:                               # %.loopexit747
                                        #   in Loop: Header=BB0_16 Depth=2
	blt	$a3, $a0, .LBB0_95
# %bb.87:                               #   in Loop: Header=BB0_16 Depth=2
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1360
	add.d	$a1, $sp, $a1
	alsl.d	$a1, $a2, $a1, 2
	ld.w	$a4, $a1, 4
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(UCptr)
	mul.d	$a5, $a4, $s1
	add.d	$a1, $a1, $a5
	ld.w	$a5, $a1, 48
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
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
	bgeu	$a7, $a5, .LBB0_102
# %bb.88:                               #   in Loop: Header=BB0_16 Depth=2
	st.w	$a4, $a1, 16
	st.w	$fp, $a1, 20
	beq	$a2, $fp, .LBB0_117
# %bb.89:                               # %.lr.ph825.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a4, $a2, -1
	ori	$a3, $zero, 1
	move	$a5, $a2
	ori	$a6, $zero, 4
	bltu	$a4, $a6, .LBB0_93
# %bb.90:                               # %vector.ph1308
                                        #   in Loop: Header=BB0_16 Depth=2
	move	$a6, $a4
	bstrins.d	$a6, $zero, 1, 0
	move	$a3, $a4
	bstrins.d	$a3, $fp, 1, 0
	sub.d	$a5, $a2, $a6
	lu12i.w	$a7, 1
	ori	$a7, $a7, 1348
	add.d	$a7, $sp, $a7
	alsl.d	$a7, $a2, $a7, 2
	addi.d	$t0, $a1, 48
	move	$t1, $a6
	.p2align	4, , 16
.LBB0_91:                               # %vector.body1311
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a7, 0
	vstelm.w	$vr0, $t0, -16, 3
	vstelm.w	$vr0, $t0, 0, 2
	vstelm.w	$vr0, $t0, 16, 1
	vstelm.w	$vr0, $t0, 32, 0
	st.w	$fp, $t0, -12
	st.w	$fp, $t0, 4
	st.w	$fp, $t0, 20
	st.w	$fp, $t0, 36
	addi.d	$a7, $a7, -16
	addi.d	$t1, $t1, -4
	addi.d	$t0, $t0, 64
	bnez	$t1, .LBB0_91
# %bb.92:                               # %middle.block1318
                                        #   in Loop: Header=BB0_16 Depth=2
	beq	$a4, $a6, .LBB0_117
.LBB0_93:                               # %.lr.ph825.preheader1435
                                        #   in Loop: Header=BB0_16 Depth=2
	sub.d	$a2, $a2, $a3
	alsl.d	$a1, $a3, $a1, 4
	addi.d	$a1, $a1, 20
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1360
	add.d	$a3, $sp, $a3
	alsl.d	$a3, $a5, $a3, 2
	.p2align	4, , 16
.LBB0_94:                               # %.lr.ph825
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $a3, 0
	st.w	$a4, $a1, -4
	st.w	$fp, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 16
	addi.d	$a3, $a3, -4
	bnez	$a2, .LBB0_94
	b	.LBB0_117
	.p2align	4, , 16
.LBB0_95:                               # %.loopexit747._crit_edge
                                        #   in Loop: Header=BB0_16 Depth=2
	bge	$a3, $a0, .LBB0_118
# %bb.96:                               #   in Loop: Header=BB0_16 Depth=2
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$s0, $a0, %got_pc_lo12(fpo)
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	move	$a2, $t3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 37
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 176                   # 8-byte Folded Reload
	addi.d	$t4, $sp, 1008
	b	.LBB0_118
	.p2align	4, , 16
.LBB0_97:                               #   in Loop: Header=BB0_16 Depth=2
	move	$s2, $zero
	addi.d	$t4, $sp, 1008
	ori	$s1, $zero, 44
	ld.d	$t3, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 176                   # 8-byte Folded Reload
	blt	$s4, $s2, .LBB0_82
	b	.LBB0_83
.LBB0_98:                               #   in Loop: Header=BB0_16 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1772
	add.d	$a0, $sp, $a0
	ld.w	$a3, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1776
	add.d	$a0, $sp, $a0
	ld.w	$a2, $a0, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(lArray)
	bne	$a3, $fp, .LBB0_109
# %bb.99:                               #   in Loop: Header=BB0_16 Depth=2
	st.w	$a2, $a0, 16
	st.w	$fp, $a0, 20
	beq	$s2, $fp, .LBB0_85
# %bb.100:                              # %.lr.ph817.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	bstrpick.d	$a1, $s2, 31, 0
	ori	$a2, $zero, 5
	bgeu	$s2, $a2, .LBB0_271
# %bb.101:                              #   in Loop: Header=BB0_16 Depth=2
	ori	$a2, $zero, 2
	ori	$a3, $zero, 1
	b	.LBB0_274
.LBB0_102:                              #   in Loop: Header=BB0_16 Depth=2
	slli.d	$a3, $a3, 4
	stx.w	$a4, $a1, $a3
	ld.w	$a3, $t5, %pc_lo12(nPinLocs)
	alsl.d	$a3, $a3, $a1, 4
	st.w	$fp, $a3, 4
	beq	$a2, $fp, .LBB0_117
# %bb.103:                              # %.lr.ph821.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a7, $t5, %pc_lo12(nPinLocs)
	addi.d	$a3, $a2, -2
	sltu	$a4, $a2, $a3
	masknez	$a3, $a3, $a4
	ori	$a4, $zero, 3
	bgeu	$a3, $a4, .LBB0_112
# %bb.104:                              #   in Loop: Header=BB0_16 Depth=2
	move	$a4, $a7
	move	$a3, $a2
	b	.LBB0_115
.LBB0_105:                              # %scalar.ph1388.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	sub.d	$a6, $zero, $a6
	add.d	$a6, $a1, $a6
	addi.d	$a7, $a4, -1
	mul.d	$a7, $s0, $a7
	add.d	$a6, $a6, $a7
	alsl.d	$a7, $a4, $s3, 4
	addi.d	$a7, $a7, 12
	sub.d	$a5, $a5, $a4
	b	.LBB0_107
	.p2align	4, , 16
.LBB0_106:                              #   in Loop: Header=BB0_107 Depth=3
	st.w	$t0, $a7, 0
	addi.d	$a4, $a4, 1
	add.d	$a6, $a6, $s0
	addi.d	$a5, $a5, -1
	addi.d	$a7, $a7, 16
	beqz	$a5, .LBB0_46
.LBB0_107:                              # %scalar.ph1388
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$a2, $a7, -4
	move	$t0, $a6
	bge	$a1, $a0, .LBB0_106
# %bb.108:                              #   in Loop: Header=BB0_107 Depth=3
	mul.d	$t0, $s0, $a4
	add.d	$t0, $t0, $a3
	b	.LBB0_106
.LBB0_109:                              #   in Loop: Header=BB0_16 Depth=2
	slli.d	$a1, $a1, 4
	stx.w	$a2, $a0, $a1
	ld.w	$a1, $t5, %pc_lo12(nPinLocs)
	alsl.d	$a1, $a1, $a0, 4
	st.w	$fp, $a1, 4
	beq	$s2, $fp, .LBB0_85
# %bb.110:                              # %.lr.ph812.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a6, $t5, %pc_lo12(nPinLocs)
	addi.d	$a1, $s2, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a4, $a1, -2
	ori	$a2, $zero, 2
	ori	$a3, $zero, 4
	bgeu	$a4, $a3, .LBB0_276
# %bb.111:                              #   in Loop: Header=BB0_16 Depth=2
	move	$a3, $a6
	b	.LBB0_279
.LBB0_112:                              # %vector.ph1325
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
.LBB0_113:                              # %vector.body1328
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a2, 0
	vstelm.w	$vr0, $a7, 16, 3
	vstelm.w	$vr0, $a7, 0, 2
	vstelm.w	$vr0, $a7, -16, 1
	vstelm.w	$vr0, $a7, -32, 0
	st.w	$fp, $a7, 20
	st.w	$fp, $a7, 4
	st.w	$fp, $a7, -12
	st.w	$fp, $a7, -28
	addi.d	$t0, $t0, -4
	addi.d	$a2, $a2, -16
	addi.d	$a7, $a7, -64
	bnez	$t0, .LBB0_113
# %bb.114:                              # %middle.block1335
                                        #   in Loop: Header=BB0_16 Depth=2
	beq	$a5, $a6, .LBB0_117
.LBB0_115:                              # %.lr.ph821.preheader1436
                                        #   in Loop: Header=BB0_16 Depth=2
	alsl.d	$a1, $a4, $a1, 4
	addi.d	$a1, $a1, -16
	addi.d	$a2, $a3, 1
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1360
	add.d	$a4, $sp, $a4
	alsl.d	$a3, $a3, $a4, 2
	.p2align	4, , 16
.LBB0_116:                              # %.lr.ph821
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $a3, 0
	st.w	$a4, $a1, 0
	st.w	$fp, $a1, 4
	addi.d	$a1, $a1, -16
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, -4
	bltu	$s7, $a2, .LBB0_116
	.p2align	4, , 16
.LBB0_117:                              #   in Loop: Header=BB0_16 Depth=2
	move	$s2, $a0
.LBB0_118:                              # %.loopexit745
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$s4, $sp, 1008
	blez	$s4, .LBB0_143
# %bb.119:                              # %.lr.ph843.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a0, $s4, 1
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ori	$s1, $zero, 1
	addi.d	$s0, $sp, 1424
	b	.LBB0_121
	.p2align	4, , 16
.LBB0_120:                              #   in Loop: Header=BB0_121 Depth=3
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$s3, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ori	$a1, $zero, 34
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a1, $a1, %pc_lo12(.L.str.15)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 176                   # 8-byte Folded Reload
	addi.d	$t4, $sp, 1008
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 404
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$s1, $a0, .LBB0_143
.LBB0_121:                              # %.lr.ph843
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_130 Depth 4
	mul.d	$a0, $s1, $s8
	ldx.wu	$s6, $a0, $t4
	ld.w	$a1, $t5, %pc_lo12(nPinLocs)
	add.w	$a4, $s6, $s2
	blt	$a1, $a4, .LBB0_120
# %bb.122:                              # %.preheader732
                                        #   in Loop: Header=BB0_121 Depth=3
	addi.w	$s8, $s6, 0
	add.d	$s2, $t4, $a0
	blez	$s8, .LBB0_125
# %bb.123:                              #   in Loop: Header=BB0_121 Depth=3
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	ld.w	$a0, $s2, 8
	addi.w	$s3, $s8, 1
	pcaddu18i	$ra, %call36(findLoc)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	bne	$s3, $s7, .LBB0_126
# %bb.124:                              #   in Loop: Header=BB0_121 Depth=3
	move	$a0, $a3
	b	.LBB0_136
.LBB0_125:                              #   in Loop: Header=BB0_121 Depth=3
	move	$a0, $zero
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	b	.LBB0_137
.LBB0_126:                              # %.peel.next
                                        #   in Loop: Header=BB0_121 Depth=3
	st.d	$a3, $sp, 184                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	alsl.d	$a0, $s8, $s2, 2
	addi.d	$s7, $a0, 4
	ori	$s2, $zero, 2
	ori	$a0, $zero, 3
	bne	$s3, $a0, .LBB0_128
# %bb.127:                              #   in Loop: Header=BB0_121 Depth=3
	ld.d	$s3, $sp, 184                   # 8-byte Folded Reload
	b	.LBB0_132
.LBB0_128:                              # %.peel.next.split
                                        #   in Loop: Header=BB0_121 Depth=3
	ori	$s2, $zero, 2
	move	$s5, $s0
	ld.d	$s3, $sp, 184                   # 8-byte Folded Reload
	b	.LBB0_130
	.p2align	4, , 16
.LBB0_129:                              #   in Loop: Header=BB0_130 Depth=4
	ld.w	$a0, $s5, 0
	pcaddu18i	$ra, %call36(findLoc)
	jirl	$ra, $ra, 0
	add.d	$s3, $a0, $s3
	addi.d	$s2, $s2, 1
	addi.d	$s5, $s5, 4
	beq	$s6, $s2, .LBB0_132
.LBB0_130:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_121 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bne	$s6, $s2, .LBB0_129
# %bb.131:                              #   in Loop: Header=BB0_130 Depth=4
	ld.w	$a0, $s7, 0
	pcaddu18i	$ra, %call36(findLoc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	add.d	$s3, $a0, $s3
	addi.d	$s2, $s2, 1
	addi.d	$s5, $s5, 4
	bne	$s6, $s2, .LBB0_130
.LBB0_132:                              # %._crit_edge832.loopexit.peel.begin
                                        #   in Loop: Header=BB0_121 Depth=3
	bne	$s2, $s8, .LBB0_134
# %bb.133:                              #   in Loop: Header=BB0_121 Depth=3
	ld.w	$a0, $s7, 0
	pcaddu18i	$ra, %call36(findLoc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ori	$s7, $zero, 2
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	b	.LBB0_135
.LBB0_134:                              #   in Loop: Header=BB0_121 Depth=3
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a1, 2
	move	$s2, $a1
	ld.w	$a0, $a0, 4
	pcaddu18i	$ra, %call36(findLoc)
	jirl	$ra, $ra, 0
	ori	$s7, $zero, 2
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
.LBB0_135:                              # %._crit_edge832.loopexit.peel.next
                                        #   in Loop: Header=BB0_121 Depth=3
	add.w	$a0, $a0, $s3
.LBB0_136:                              # %._crit_edge832
                                        #   in Loop: Header=BB0_121 Depth=3
	addi.d	$t4, $sp, 1008
	ld.d	$t5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
.LBB0_137:                              # %._crit_edge832
                                        #   in Loop: Header=BB0_121 Depth=3
	div.w	$a0, $a0, $s8
	bstrpick.d	$a1, $s8, 31, 31
	add.w	$a1, $s8, $a1
	srli.d	$a1, $a1, 1
	sub.w	$a0, $a0, $a1
	blez	$a0, .LBB0_139
# %bb.138:                              #   in Loop: Header=BB0_121 Depth=3
	ld.w	$a1, $t5, %pc_lo12(nPinLocs)
	sub.d	$a1, $a1, $s8
	addi.w	$a1, $a1, 1
	slt	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	b	.LBB0_140
.LBB0_139:                              #   in Loop: Header=BB0_121 Depth=3
	ori	$a0, $zero, 1
.LBB0_140:                              #   in Loop: Header=BB0_121 Depth=3
	ori	$s8, $zero, 404
	st.d	$a3, $sp, 184                   # 8-byte Folded Spill
	addi.w	$a1, $a3, 0
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 0
	bge	$a2, $a1, .LBB0_142
# %bb.141:                              #   in Loop: Header=BB0_121 Depth=3
	sub.d	$a0, $zero, $a0
.LBB0_142:                              #   in Loop: Header=BB0_121 Depth=3
	st.w	$a0, $s2, 4
	move	$s2, $a4
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 404
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	bne	$s1, $a0, .LBB0_121
.LBB0_143:                              # %._crit_edge844
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$s3, $sp, 200
	ld.w	$a0, $t5, %pc_lo12(nPinLocs)
	add.w	$s0, $s3, $s2
	bge	$a0, $s0, .LBB0_145
# %bb.144:                              #   in Loop: Header=BB0_16 Depth=2
	pcalau12i	$a1, %got_pc_hi20(fpo)
	ld.d	$s1, $a1, %got_pc_lo12(fpo)
	ld.d	$a3, $s1, 0
	sub.w	$s3, $a0, $s2
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	ori	$a1, $zero, 36
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	ori	$a1, $zero, 36
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(nPinLocs)
	ld.d	$a0, $s1, 0
	sub.w	$a2, $s0, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a1, $a1, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_145:                              #   in Loop: Header=BB0_16 Depth=2
	blez	$s3, .LBB0_148
# %bb.146:                              # %.lr.ph851.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	move	$s0, $zero
	addi.d	$s1, $sp, 208
	.p2align	4, , 16
.LBB0_147:                              # %.lr.ph851
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $s1, 0
	pcaddu18i	$ra, %call36(findLoc)
	jirl	$ra, $ra, 0
	st.w	$a0, $s1, -4
	addi.d	$s0, $s0, 1
	addi.d	$s1, $s1, 8
	bltu	$s0, $s3, .LBB0_147
.LBB0_148:                              # %.preheader744
                                        #   in Loop: Header=BB0_16 Depth=2
	ori	$a6, $zero, 2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(nPinLocs)
	addi.w	$a0, $a2, 1
	blez	$a2, .LBB0_153
# %bb.149:                              # %.lr.ph855
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $a1, %pc_lo12(lArray)
	ld.w	$a1, $a3, 20
	addi.d	$s5, $sp, 1420
	addi.d	$s6, $sp, 1416
	addi.d	$s7, $sp, 1404
	vld	$vr6, $sp, 80                   # 16-byte Folded Reload
	bne	$a1, $fp, .LBB0_154
# %bb.150:                              # %.lr.ph1248.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	move	$a1, $zero
	bstrpick.d	$a4, $a0, 31, 0
	addi.d	$a3, $a3, 36
	addi.d	$a4, $a4, -2
	addi.d	$ra, $sp, 1008
	.p2align	4, , 16
.LBB0_151:                              # %.lr.ph1248
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beqz	$a4, .LBB0_155
# %bb.152:                              #   in Loop: Header=BB0_151 Depth=3
	ld.w	$a5, $a3, 0
	addi.w	$a1, $a1, 1
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, -1
	beq	$a5, $fp, .LBB0_151
	b	.LBB0_156
	.p2align	4, , 16
.LBB0_153:                              # %._crit_edge856.thread
                                        #   in Loop: Header=BB0_16 Depth=2
	move	$a1, $zero
	addi.d	$s5, $sp, 1420
	addi.d	$s6, $sp, 1416
	addi.d	$s7, $sp, 1404
	vld	$vr6, $sp, 80                   # 16-byte Folded Reload
	addi.d	$ra, $sp, 1008
	b	.LBB0_162
.LBB0_154:                              #   in Loop: Header=BB0_16 Depth=2
	move	$a1, $zero
	addi.d	$ra, $sp, 1008
	b	.LBB0_156
.LBB0_155:                              #   in Loop: Header=BB0_16 Depth=2
	move	$a1, $a2
.LBB0_156:                              # %.lr.ph865
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(lArray)
	alsl.d	$a4, $a2, $a3, 4
	ld.w	$a4, $a4, 4
	bne	$a4, $fp, .LBB0_162
	.p2align	4, , 16
.LBB0_157:                              # %.lr.ph1253
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blt	$a2, $a6, .LBB0_160
# %bb.158:                              #   in Loop: Header=BB0_157 Depth=3
	addi.w	$a2, $a2, -1
	alsl.d	$a0, $a2, $a3, 4
	ld.w	$a0, $a0, 4
	beq	$a0, $fp, .LBB0_157
# %bb.159:                              # %.preheader730.preheader.loopexit
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.w	$a0, $a2, 1
	b	.LBB0_162
.LBB0_160:                              #   in Loop: Header=BB0_16 Depth=2
	ori	$a0, $zero, 1
	b	.LBB0_162
	.p2align	4, , 16
.LBB0_161:                              # %.loopexit731
                                        #   in Loop: Header=BB0_162 Depth=3
	beqz	$t5, .LBB0_200
.LBB0_162:                              # %.preheader730
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_167 Depth 4
                                        #           Child Loop BB0_184 Depth 5
                                        #           Child Loop BB0_181 Depth 5
                                        #           Child Loop BB0_197 Depth 5
                                        #           Child Loop BB0_191 Depth 5
                                        #           Child Loop BB0_194 Depth 5
                                        #           Child Loop BB0_177 Depth 5
	blez	$s4, .LBB0_199
# %bb.163:                              # %.lr.ph893
                                        #   in Loop: Header=BB0_162 Depth=3
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(lArray)
	move	$a3, $zero
	move	$t5, $zero
	addi.d	$a4, $a2, -8
	addi.d	$a5, $a2, 20
	addi.d	$a6, $a2, 32
	addi.d	$a7, $a2, 4
	ori	$t4, $zero, 1
	move	$t0, $s7
	move	$t1, $s5
	move	$t2, $s6
	b	.LBB0_167
	.p2align	4, , 16
.LBB0_164:                              # %.loopexit714
                                        #   in Loop: Header=BB0_167 Depth=4
	add.w	$a1, $t5, $a1
.LBB0_165:                              # %.sink.split
                                        #   in Loop: Header=BB0_167 Depth=4
	st.w	$zero, $t4, 4
	ori	$t5, $zero, 1
.LBB0_166:                              #   in Loop: Header=BB0_167 Depth=4
	addi.d	$t4, $t3, 1
	ld.w	$s4, $sp, 1008
	addi.d	$a3, $a3, 1
	addi.d	$t2, $t2, 404
	addi.d	$t1, $t1, 404
	addi.d	$t0, $t0, 404
	bge	$t3, $s4, .LBB0_161
.LBB0_167:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_162 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_184 Depth 5
                                        #           Child Loop BB0_181 Depth 5
                                        #           Child Loop BB0_197 Depth 5
                                        #           Child Loop BB0_191 Depth 5
                                        #           Child Loop BB0_194 Depth 5
                                        #           Child Loop BB0_177 Depth 5
	move	$t3, $t4
	mul.d	$t4, $t4, $s8
	add.d	$t4, $ra, $t4
	ld.w	$t6, $t4, 4
	beqz	$t6, .LBB0_166
# %bb.168:                              #   in Loop: Header=BB0_167 Depth=4
	srai.d	$t7, $t6, 31
	xor	$t8, $t6, $t7
	sub.w	$t8, $t8, $t7
	addi.w	$t7, $a1, 1
	bge	$t7, $t8, .LBB0_178
# %bb.169:                              #   in Loop: Header=BB0_167 Depth=4
	ld.w	$t7, $t4, 0
	add.w	$t8, $t7, $t8
	blt	$t8, $a0, .LBB0_166
# %bb.170:                              #   in Loop: Header=BB0_167 Depth=4
	mul.d	$t5, $a3, $s8
	add.d	$t5, $s5, $t5
	blez	$t6, .LBB0_185
# %bb.171:                              #   in Loop: Header=BB0_167 Depth=4
	blez	$t7, .LBB0_192
# %bb.172:                              # %.lr.ph885.preheader
                                        #   in Loop: Header=BB0_167 Depth=4
	sub.w	$t8, $a0, $t7
	addi.d	$t6, $t8, 1
	slt	$t7, $a0, $t6
	maskeqz	$t6, $t6, $t7
	masknez	$t7, $a0, $t7
	or	$s0, $t6, $t7
	sub.d	$t6, $s0, $t8
	ori	$t7, $zero, 1
	ori	$s1, $zero, 8
	bltu	$t6, $s1, .LBB0_175
# %bb.173:                              # %vector.memcheck
                                        #   in Loop: Header=BB0_167 Depth=4
	alsl.d	$s1, $t8, $a2, 4
	alsl.d	$s2, $t6, $t5, 2
	bgeu	$s1, $s2, .LBB0_193
# %bb.174:                              # %vector.memcheck
                                        #   in Loop: Header=BB0_167 Depth=4
	alsl.d	$s0, $s0, $a4, 4
	bgeu	$t5, $s0, .LBB0_193
.LBB0_175:                              #   in Loop: Header=BB0_167 Depth=4
	move	$t5, $t8
.LBB0_176:                              # %.lr.ph885.preheader1423
                                        #   in Loop: Header=BB0_167 Depth=4
	slli.d	$t6, $t7, 2
	alsl.d	$t7, $t5, $a7, 4
	.p2align	4, , 16
.LBB0_177:                              # %.lr.ph885
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_162 Depth=3
                                        #         Parent Loop BB0_167 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ldx.w	$t8, $t2, $t6
	st.w	$t8, $t7, -4
	st.w	$fp, $t7, 0
	addi.d	$t5, $t5, 1
	addi.d	$t6, $t6, 4
	addi.d	$t7, $t7, 16
	blt	$t5, $a0, .LBB0_177
	b	.LBB0_192
	.p2align	4, , 16
.LBB0_178:                              #   in Loop: Header=BB0_167 Depth=4
	ld.w	$t5, $t4, 0
	blez	$t6, .LBB0_182
# %bb.179:                              # %.preheader
                                        #   in Loop: Header=BB0_167 Depth=4
	blez	$t5, .LBB0_164
# %bb.180:                              # %.lr.ph877.preheader
                                        #   in Loop: Header=BB0_167 Depth=4
	move	$t6, $zero
	alsl.d	$t7, $a1, $a5, 4
	move	$t8, $t1
	.p2align	4, , 16
.LBB0_181:                              # %.lr.ph877
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_162 Depth=3
                                        #         Parent Loop BB0_167 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$t5, $t8, 0
	st.w	$t5, $t7, -4
	st.w	$fp, $t7, 0
	ld.w	$t5, $t4, 0
	addi.d	$t6, $t6, 1
	addi.d	$t7, $t7, 16
	addi.d	$t8, $t8, 4
	blt	$t6, $t5, .LBB0_181
	b	.LBB0_164
.LBB0_182:                              #   in Loop: Header=BB0_167 Depth=4
	blez	$t5, .LBB0_164
# %bb.183:                              # %.lr.ph874.preheader
                                        #   in Loop: Header=BB0_167 Depth=4
	move	$t6, $zero
	alsl.d	$t7, $t5, $t2, 2
	alsl.d	$t8, $a1, $a5, 4
	.p2align	4, , 16
.LBB0_184:                              # %.lr.ph874
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_162 Depth=3
                                        #         Parent Loop BB0_167 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$t5, $t7, 0
	st.w	$t5, $t8, -4
	st.w	$fp, $t8, 0
	ld.w	$t5, $t4, 0
	addi.d	$t7, $t7, -4
	addi.d	$t6, $t6, 1
	addi.d	$t8, $t8, 16
	blt	$t6, $t5, .LBB0_184
	b	.LBB0_164
.LBB0_185:                              #   in Loop: Header=BB0_167 Depth=4
	blez	$t7, .LBB0_192
# %bb.186:                              # %.lr.ph881.preheader
                                        #   in Loop: Header=BB0_167 Depth=4
	sub.w	$s1, $a0, $t7
	addi.d	$t6, $s1, 1
	slt	$t8, $a0, $t6
	maskeqz	$t6, $t6, $t8
	masknez	$t8, $a0, $t8
	or	$t8, $t6, $t8
	sub.d	$t6, $t8, $s1
	ori	$s0, $zero, 8
	bltu	$t6, $s0, .LBB0_189
# %bb.187:                              # %vector.memcheck1279
                                        #   in Loop: Header=BB0_167 Depth=4
	alsl.d	$s0, $s1, $a2, 4
	alsl.d	$s2, $t7, $t5, 2
	bgeu	$s0, $s2, .LBB0_196
# %bb.188:                              # %vector.memcheck1279
                                        #   in Loop: Header=BB0_167 Depth=4
	alsl.d	$s0, $t8, $a4, 4
	add.d	$s2, $s1, $t7
	sub.d	$t8, $s2, $t8
	alsl.d	$t5, $t8, $t5, 2
	bgeu	$t5, $s0, .LBB0_196
.LBB0_189:                              #   in Loop: Header=BB0_167 Depth=4
	move	$t8, $t7
	move	$t5, $s1
.LBB0_190:                              # %.lr.ph881.preheader1424
                                        #   in Loop: Header=BB0_167 Depth=4
	slli.d	$t6, $t8, 2
	alsl.d	$t7, $t5, $a7, 4
	.p2align	4, , 16
.LBB0_191:                              # %.lr.ph881
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_162 Depth=3
                                        #         Parent Loop BB0_167 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ldx.w	$t8, $t2, $t6
	st.w	$t8, $t7, -4
	st.w	$fp, $t7, 0
	addi.d	$t5, $t5, 1
	addi.d	$t6, $t6, -4
	addi.d	$t7, $t7, 16
	blt	$t5, $a0, .LBB0_191
.LBB0_192:                              # %.loopexit
                                        #   in Loop: Header=BB0_167 Depth=4
	ld.w	$t5, $t4, 0
	sub.w	$a0, $a0, $t5
	b	.LBB0_165
.LBB0_193:                              # %vector.ph1267
                                        #   in Loop: Header=BB0_167 Depth=4
	move	$s1, $zero
	move	$s0, $t6
	bstrins.d	$s0, $zero, 1, 0
	move	$t7, $t6
	bstrins.d	$t7, $fp, 1, 0
	add.d	$t5, $s0, $t8
	alsl.d	$t8, $t8, $a6, 4
	move	$s2, $s0
	.p2align	4, , 16
.LBB0_194:                              # %vector.body1270
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_162 Depth=3
                                        #         Parent Loop BB0_167 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	vldx	$vr0, $t1, $s1
	vstelm.w	$vr0, $t8, -32, 0
	vstelm.w	$vr0, $t8, -16, 1
	vstelm.w	$vr0, $t8, 0, 2
	vstelm.w	$vr0, $t8, 16, 3
	st.w	$fp, $t8, -28
	st.w	$fp, $t8, -12
	st.w	$fp, $t8, 4
	st.w	$fp, $t8, 20
	addi.d	$s1, $s1, 16
	addi.d	$s2, $s2, -4
	addi.d	$t8, $t8, 64
	bnez	$s2, .LBB0_194
# %bb.195:                              # %middle.block1275
                                        #   in Loop: Header=BB0_167 Depth=4
	beq	$t6, $s0, .LBB0_192
	b	.LBB0_176
.LBB0_196:                              # %vector.ph1293
                                        #   in Loop: Header=BB0_167 Depth=4
	move	$s0, $t6
	bstrins.d	$s0, $zero, 1, 0
	sub.d	$t8, $t7, $s0
	add.d	$t5, $s0, $s1
	alsl.d	$t7, $t7, $t0, 2
	alsl.d	$s1, $s1, $a6, 4
	move	$s2, $s0
	.p2align	4, , 16
.LBB0_197:                              # %vector.body1296
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_162 Depth=3
                                        #         Parent Loop BB0_167 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	vld	$vr0, $t7, 0
	vstelm.w	$vr0, $s1, -32, 3
	vstelm.w	$vr0, $s1, -16, 2
	vstelm.w	$vr0, $s1, 0, 1
	vstelm.w	$vr0, $s1, 16, 0
	st.w	$fp, $s1, -28
	st.w	$fp, $s1, -12
	st.w	$fp, $s1, 4
	st.w	$fp, $s1, 20
	addi.d	$s2, $s2, -4
	addi.d	$t7, $t7, -16
	addi.d	$s1, $s1, 64
	bnez	$s2, .LBB0_197
# %bb.198:                              # %middle.block1302
                                        #   in Loop: Header=BB0_167 Depth=4
	bne	$t6, $s0, .LBB0_190
	b	.LBB0_192
	.p2align	4, , 16
.LBB0_199:                              #   in Loop: Header=BB0_16 Depth=2
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	addi.d	$s1, $sp, 200
	ori	$s7, $zero, 2
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	b	.LBB0_204
	.p2align	4, , 16
.LBB0_200:                              # %.preheader743
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.d	$t7, $sp, 1012
	ori	$s7, $zero, 2
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	blez	$s4, .LBB0_203
# %bb.201:                              # %.lr.ph902.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	ori	$a2, $zero, 8
	bgeu	$s4, $a2, .LBB0_229
# %bb.202:                              #   in Loop: Header=BB0_16 Depth=2
	move	$a2, $zero
	ori	$a3, $zero, 1
	b	.LBB0_267
.LBB0_203:                              #   in Loop: Header=BB0_16 Depth=2
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	addi.d	$s1, $sp, 200
.LBB0_204:                              # %.preheader741
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
.LBB0_205:                              # %.preheader741
                                        #   in Loop: Header=BB0_16 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1768
	add.d	$s6, $sp, $a0
	ld.d	$t5, $sp, 176                   # 8-byte Folded Reload
	blez	$s3, .LBB0_223
# %bb.206:                              # %.lr.ph944
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(lArray)
	move	$a1, $zero
	addi.d	$a2, $sp, 204
	b	.LBB0_208
	.p2align	4, , 16
.LBB0_207:                              #   in Loop: Header=BB0_208 Depth=3
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 8
	bgeu	$a1, $s3, .LBB0_210
.LBB0_208:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a3, $a2, 0
	alsl.d	$a4, $a3, $a0, 4
	ld.w	$a5, $a4, 4
	bnez	$a5, .LBB0_207
# %bb.209:                              #   in Loop: Header=BB0_208 Depth=3
	ld.w	$a5, $a2, 4
	addi.d	$a4, $a4, 4
	st.w	$fp, $a4, 0
	slli.d	$a3, $a3, 4
	stx.w	$a5, $a0, $a3
	st.w	$zero, $a2, 0
	b	.LBB0_207
	.p2align	4, , 16
.LBB0_210:                              # %.lr.ph949.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	ori	$a1, $zero, 1
	b	.LBB0_214
.LBB0_211:                              # %.loopexit717.sink.splitsplit
                                        #   in Loop: Header=BB0_214 Depth=3
	alsl.d	$a3, $a3, $t2, 4
.LBB0_212:                              # %.loopexit717.sink.split
                                        #   in Loop: Header=BB0_214 Depth=3
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $s1
	st.w	$fp, $a3, 0
	slli.d	$a3, $a6, 4
	stx.w	$a4, $a2, $a3
	st.w	$zero, $a1, 0
	.p2align	4, , 16
.LBB0_213:                              # %.loopexit717
                                        #   in Loop: Header=BB0_214 Depth=3
	addi.d	$a1, $a0, 1
	bgeu	$a0, $s3, .LBB0_223
.LBB0_214:                              # %.lr.ph949
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_218 Depth 4
	move	$a0, $a1
	alsl.d	$a1, $a1, $s1, 3
	ld.w	$a3, $a1, -4
	beqz	$a3, .LBB0_213
# %bb.215:                              # %.preheader716
                                        #   in Loop: Header=BB0_214 Depth=3
	ld.w	$a5, $t5, %pc_lo12(nPinLocs)
	blt	$a5, $s7, .LBB0_213
# %bb.216:                              # %.lr.ph946
                                        #   in Loop: Header=BB0_214 Depth=3
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(lArray)
	slli.d	$a4, $a0, 1
	addi.d	$a1, $a1, -4
	addi.d	$a7, $a3, -1
	addi.d	$t0, $a2, -12
	slli.d	$t1, $a3, 4
	addi.d	$a6, $a3, 1
	addi.d	$t2, $a2, 20
	addi.d	$t3, $a5, -1
	b	.LBB0_218
	.p2align	4, , 16
.LBB0_217:                              #   in Loop: Header=BB0_218 Depth=4
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, -16
	addi.d	$a6, $a6, 1
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, 16
	beqz	$t3, .LBB0_213
.LBB0_218:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_214 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	blt	$a5, $a6, .LBB0_220
# %bb.219:                              #   in Loop: Header=BB0_218 Depth=4
	ldx.w	$t4, $t2, $t1
	beqz	$t4, .LBB0_211
.LBB0_220:                              #   in Loop: Header=BB0_218 Depth=4
	blez	$a7, .LBB0_217
# %bb.221:                              #   in Loop: Header=BB0_218 Depth=4
	ldx.w	$t4, $t0, $t1
	bnez	$t4, .LBB0_217
# %bb.222:                              # %..loopexit717.sink.split_crit_edge
                                        #   in Loop: Header=BB0_214 Depth=3
	alsl.d	$a3, $a3, $t0, 4
	move	$a6, $a7
	b	.LBB0_212
	.p2align	4, , 16
.LBB0_223:                              # %.preheader739
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a2, $t5, %pc_lo12(nPinLocs)
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(lArray)
	blez	$a2, .LBB0_228
# %bb.224:                              # %.lr.ph952
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(UCptr)
	move	$a3, $zero
	addi.d	$a0, $a0, 28
	ori	$s1, $zero, 44
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	b	.LBB0_226
	.p2align	4, , 16
.LBB0_225:                              #   in Loop: Header=BB0_226 Depth=3
	addi.d	$a3, $a3, 1
	addi.d	$a0, $a0, 16
	bge	$a3, $a2, .LBB0_13
.LBB0_226:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $a0, -8
	bne	$a4, $fp, .LBB0_225
# %bb.227:                              #   in Loop: Header=BB0_226 Depth=3
	ld.w	$a2, $a0, -12
	ld.d	$a4, $a0, -4
	mul.d	$a2, $a2, $s1
	add.d	$a2, $a1, $a2
	st.d	$a4, $a2, 36
	ld.w	$a2, $t5, %pc_lo12(nPinLocs)
	b	.LBB0_225
	.p2align	4, , 16
.LBB0_228:                              #   in Loop: Header=BB0_16 Depth=2
	ori	$s1, $zero, 44
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	b	.LBB0_14
.LBB0_229:                              # %vector.ph
                                        #   in Loop: Header=BB0_16 Depth=2
	bstrpick.d	$a2, $s4, 30, 3
	slli.d	$a4, $a2, 3
	srli.d	$a2, $s4, 3
	ori	$a3, $zero, 1
	bstrins.d	$a3, $a2, 30, 3
	ori	$a2, $zero, 2628
	add.d	$a2, $sp, $a2
	move	$a5, $a4
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	vori.b	$vr0, $vr1, 0
	.p2align	4, , 16
.LBB0_230:                              # %vector.body
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
	vseqi.w	$vr2, $vr2, 0
	vxor.v	$vr2, $vr2, $vr6
	vand.v	$vr2, $vr2, $vr4
	vadd.w	$vr0, $vr0, $vr2
	vseqi.w	$vr2, $vr3, 0
	vxor.v	$vr2, $vr2, $vr6
	vand.v	$vr2, $vr2, $vr5
	vadd.w	$vr1, $vr1, $vr2
	addi.d	$a5, $a5, -8
	addi.d	$a2, $a2, 2047
	addi.d	$a2, $a2, 1185
	bnez	$a5, .LBB0_230
# %bb.231:                              # %middle.block
                                        #   in Loop: Header=BB0_16 Depth=2
	vadd.w	$vr0, $vr1, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a2, $vr0, 0
	bne	$a4, $s4, .LBB0_267
.LBB0_232:                              # %.preheader742
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.d	$t8, $sp, 1016
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	addi.d	$s1, $sp, 200
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	blez	$a2, .LBB0_205
# %bb.233:                              # %.lr.ph940
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(lArray)
	addi.d	$a3, $a3, 20
	b	.LBB0_235
	.p2align	4, , 16
.LBB0_234:                              # %.loopexit726
                                        #   in Loop: Header=BB0_235 Depth=3
	add.w	$a1, $t1, $a4
	st.w	$zero, $a6, 4
	sub.w	$a2, $a2, $a4
	blez	$a2, .LBB0_205
.LBB0_235:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_239 Depth 4
                                        #         Child Loop BB0_262 Depth 4
                                        #         Child Loop BB0_252 Depth 4
                                        #         Child Loop BB0_255 Depth 4
                                        #         Child Loop BB0_248 Depth 4
                                        #         Child Loop BB0_265 Depth 4
                                        #         Child Loop BB0_259 Depth 4
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a5, $a4, %pc_lo12(nPinLocs)
	ld.w	$a4, $sp, 1008
	addi.w	$a6, $a5, 1
	blez	$a4, .LBB0_243
# %bb.236:                              # %.lr.ph911.preheader
                                        #   in Loop: Header=BB0_235 Depth=3
	move	$a5, $zero
	move	$t0, $zero
	addi.d	$a4, $a4, 1
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a4, $a4, -1
	ori	$t1, $zero, 1
	move	$t2, $s6
	move	$a7, $a6
	b	.LBB0_239
	.p2align	4, , 16
.LBB0_237:                              #   in Loop: Header=BB0_239 Depth=4
	slt	$t4, $t3, $a7
	masknez	$a5, $a5, $t4
	maskeqz	$t5, $t1, $t4
	or	$a5, $t5, $a5
	masknez	$a7, $a7, $t4
	maskeqz	$t3, $t3, $t4
	or	$a7, $t3, $a7
.LBB0_238:                              #   in Loop: Header=BB0_239 Depth=4
	addi.w	$t1, $t1, 1
	addi.d	$a4, $a4, -1
	addi.d	$t2, $t2, 404
	beqz	$a4, .LBB0_242
.LBB0_239:                              # %.lr.ph911
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_235 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$t3, $t2, 0
	beqz	$t3, .LBB0_238
# %bb.240:                              #   in Loop: Header=BB0_239 Depth=4
	srai.d	$t4, $t3, 31
	xor	$t3, $t3, $t4
	sub.w	$t3, $t3, $t4
	bge	$t3, $a6, .LBB0_237
# %bb.241:                              #   in Loop: Header=BB0_239 Depth=4
	sltui	$t4, $t0, 1
	masknez	$t0, $t0, $t4
	maskeqz	$a5, $a5, $t4
	or	$a5, $a5, $t0
	masknez	$a6, $a6, $t4
	maskeqz	$a7, $a7, $t4
	or	$a7, $a7, $a6
	move	$a6, $t3
	move	$t0, $t1
	b	.LBB0_238
	.p2align	4, , 16
.LBB0_242:                              # %.preheader729.loopexit
                                        #   in Loop: Header=BB0_235 Depth=3
	mul.d	$a4, $t0, $s8
	ldx.w	$a4, $a4, $ra
	b	.LBB0_244
	.p2align	4, , 16
.LBB0_243:                              #   in Loop: Header=BB0_235 Depth=3
	move	$t0, $zero
	move	$a5, $zero
	move	$a7, $a6
.LBB0_244:                              # %.preheader729
                                        #   in Loop: Header=BB0_235 Depth=3
	add.w	$a6, $a2, $a6
	slt	$t1, $a0, $a6
	masknez	$a6, $a6, $t1
	maskeqz	$t1, $a0, $t1
	or	$t2, $t1, $a6
	sub.d	$a6, $t2, $a2
	mul.d	$t0, $t0, $s8
	st.d	$a6, $sp, 184                   # 8-byte Folded Spill
	addi.w	$t1, $a6, -1
	add.w	$t3, $t1, $a4
	add.d	$a6, $ra, $t0
	bge	$a7, $t3, .LBB0_249
# %bb.245:                              #   in Loop: Header=BB0_235 Depth=3
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
	blez	$t2, .LBB0_253
# %bb.246:                              # %.preheader721
                                        #   in Loop: Header=BB0_235 Depth=3
	blez	$a4, .LBB0_256
# %bb.247:                              # %.lr.ph929.preheader
                                        #   in Loop: Header=BB0_235 Depth=3
	move	$t1, $zero
	alsl.d	$a7, $a7, $a3, 4
	add.d	$t0, $t8, $t0
	.p2align	4, , 16
.LBB0_248:                              # %.lr.ph929
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_235 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a4, $t0, 0
	st.w	$a4, $a7, -4
	st.w	$fp, $a7, 0
	ld.w	$a4, $a6, 0
	addi.d	$t1, $t1, 1
	addi.d	$a7, $a7, 16
	addi.d	$t0, $t0, 4
	blt	$t1, $a4, .LBB0_248
	b	.LBB0_256
	.p2align	4, , 16
.LBB0_249:                              #   in Loop: Header=BB0_235 Depth=3
	ld.w	$a1, $a6, 4
	blez	$a1, .LBB0_260
# %bb.250:                              # %.preheader725
                                        #   in Loop: Header=BB0_235 Depth=3
	blez	$a4, .LBB0_234
# %bb.251:                              # %.lr.ph922
                                        #   in Loop: Header=BB0_235 Depth=3
	move	$a1, $zero
	alsl.d	$a5, $t1, $a3, 4
	add.d	$a7, $t8, $t0
	.p2align	4, , 16
.LBB0_252:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_235 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a4, $a7, 0
	st.w	$a4, $a5, -4
	st.w	$fp, $a5, 0
	ld.w	$a4, $a6, 0
	addi.d	$a1, $a1, 1
	addi.d	$a5, $a5, 16
	addi.d	$a7, $a7, 4
	blt	$a1, $a4, .LBB0_252
	b	.LBB0_234
.LBB0_253:                              # %.preheader723
                                        #   in Loop: Header=BB0_235 Depth=3
	blez	$a4, .LBB0_256
# %bb.254:                              # %.lr.ph926.preheader
                                        #   in Loop: Header=BB0_235 Depth=3
	move	$t1, $zero
	alsl.d	$a4, $a4, $t0, 2
	add.d	$t0, $t7, $a4
	alsl.d	$a7, $a7, $a3, 4
	.p2align	4, , 16
.LBB0_255:                              # %.lr.ph926
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_235 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a4, $t0, 0
	st.w	$a4, $a7, -4
	st.w	$fp, $a7, 0
	ld.w	$a4, $a6, 0
	addi.d	$t0, $t0, -4
	addi.d	$t1, $t1, 1
	addi.d	$a7, $a7, 16
	blt	$t1, $a4, .LBB0_255
.LBB0_256:                              # %.loopexit722
                                        #   in Loop: Header=BB0_235 Depth=3
	st.w	$zero, $a6, 4
	mul.d	$a7, $a5, $s8
	add.d	$a5, $ra, $a7
	ld.w	$t0, $a5, 4
	ldx.w	$a6, $a7, $ra
	ld.d	$t1, $sp, 184                   # 8-byte Folded Reload
	sub.d	$t1, $t1, $a1
	st.d	$t1, $sp, 184                   # 8-byte Folded Spill
	add.d	$a1, $t1, $a4
	addi.w	$a1, $a1, -1
	blez	$t0, .LBB0_263
# %bb.257:                              # %.preheader718
                                        #   in Loop: Header=BB0_235 Depth=3
	blez	$a6, .LBB0_266
# %bb.258:                              # %.lr.ph937.preheader
                                        #   in Loop: Header=BB0_235 Depth=3
	move	$t0, $zero
	alsl.d	$t1, $a1, $a3, 4
	add.d	$a7, $t8, $a7
	.p2align	4, , 16
.LBB0_259:                              # %.lr.ph937
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_235 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a6, $a7, 0
	st.w	$a6, $t1, -4
	st.w	$fp, $t1, 0
	ld.w	$a6, $a5, 0
	addi.d	$t0, $t0, 1
	addi.d	$t1, $t1, 16
	addi.d	$a7, $a7, 4
	blt	$t0, $a6, .LBB0_259
	b	.LBB0_266
.LBB0_260:                              # %.preheader727
                                        #   in Loop: Header=BB0_235 Depth=3
	blez	$a4, .LBB0_234
# %bb.261:                              # %.lr.ph919
                                        #   in Loop: Header=BB0_235 Depth=3
	move	$a1, $zero
	alsl.d	$a4, $a4, $t0, 2
	add.d	$a5, $t7, $a4
	alsl.d	$a7, $t1, $a3, 4
	.p2align	4, , 16
.LBB0_262:                              #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_235 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a4, $a5, 0
	st.w	$a4, $a7, -4
	st.w	$fp, $a7, 0
	ld.w	$a4, $a6, 0
	addi.d	$a5, $a5, -4
	addi.d	$a1, $a1, 1
	addi.d	$a7, $a7, 16
	blt	$a1, $a4, .LBB0_262
	b	.LBB0_234
.LBB0_263:                              #   in Loop: Header=BB0_235 Depth=3
	blez	$a6, .LBB0_266
# %bb.264:                              # %.lr.ph934.preheader
                                        #   in Loop: Header=BB0_235 Depth=3
	move	$t0, $zero
	alsl.d	$a6, $a6, $a7, 2
	add.d	$a7, $t7, $a6
	alsl.d	$t1, $a1, $a3, 4
	.p2align	4, , 16
.LBB0_265:                              # %.lr.ph934
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_235 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a6, $a7, 0
	st.w	$a6, $t1, -4
	st.w	$fp, $t1, 0
	ld.w	$a6, $a5, 0
	addi.d	$a7, $a7, -4
	addi.d	$t0, $t0, 1
	addi.d	$t1, $t1, 16
	blt	$t0, $a6, .LBB0_265
.LBB0_266:                              # %.loopexit719
                                        #   in Loop: Header=BB0_235 Depth=3
	add.w	$a1, $a6, $a1
	st.w	$zero, $a5, 4
	add.d	$a4, $a6, $a4
	sub.w	$a2, $a2, $a4
	bgtz	$a2, .LBB0_235
	b	.LBB0_205
.LBB0_267:                              # %.lr.ph902.preheader1433
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a4, $s4, 1
	bstrpick.d	$a5, $a4, 31, 0
	mul.d	$a4, $a3, $s8
	add.d	$a4, $t7, $a4
	sub.d	$a3, $a5, $a3
	b	.LBB0_269
	.p2align	4, , 16
.LBB0_268:                              #   in Loop: Header=BB0_269 Depth=3
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 404
	beqz	$a3, .LBB0_232
.LBB0_269:                              # %.lr.ph902
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a5, $a4, 0
	beqz	$a5, .LBB0_268
# %bb.270:                              #   in Loop: Header=BB0_269 Depth=3
	ld.w	$a5, $a4, -4
	add.w	$a2, $a5, $a2
	b	.LBB0_268
.LBB0_271:                              # %vector.ph1341
                                        #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a4, $a1, -1
	move	$a5, $a4
	bstrins.d	$a5, $zero, 1, 0
	move	$a3, $a4
	bstrins.d	$a3, $fp, 1, 0
	move	$a2, $a4
	bstrins.d	$a2, $s7, 1, 0
	addi.d	$a6, $a0, 48
	lu12i.w	$a7, 1
	ori	$a7, $a7, 1780
	add.d	$a7, $sp, $a7
	move	$t0, $a5
	.p2align	4, , 16
.LBB0_272:                              # %vector.body1344
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a7, 0
	vstelm.w	$vr0, $a6, -16, 0
	vstelm.w	$vr0, $a6, 0, 1
	vstelm.w	$vr0, $a6, 16, 2
	vstelm.w	$vr0, $a6, 32, 3
	st.w	$fp, $a6, -12
	st.w	$fp, $a6, 4
	st.w	$fp, $a6, 20
	st.w	$fp, $a6, 36
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, 16
	addi.d	$a6, $a6, 64
	bnez	$t0, .LBB0_272
# %bb.273:                              # %middle.block1350
                                        #   in Loop: Header=BB0_16 Depth=2
	beq	$a4, $a5, .LBB0_85
.LBB0_274:                              # %.lr.ph817.preheader1438
                                        #   in Loop: Header=BB0_16 Depth=2
	sub.d	$a1, $a1, $a3
	alsl.d	$a0, $a3, $a0, 4
	addi.d	$a0, $a0, 20
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1772
	add.d	$a3, $sp, $a3
	alsl.d	$a2, $a2, $a3, 2
	.p2align	4, , 16
.LBB0_275:                              # %.lr.ph817
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a3, $a2, 0
	st.w	$a3, $a0, -4
	st.w	$fp, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 16
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB0_275
	b	.LBB0_85
.LBB0_276:                              # %vector.ph1356
                                        #   in Loop: Header=BB0_16 Depth=2
	move	$a5, $a4
	bstrins.d	$a5, $zero, 1, 0
	sub.d	$a3, $a6, $a5
	move	$a2, $a4
	bstrins.d	$a2, $s7, 1, 0
	alsl.d	$a6, $a6, $a0, 4
	addi.d	$a6, $a6, -32
	move	$a7, $a5
	lu12i.w	$t0, 1
	ori	$t0, $t0, 1780
	add.d	$t0, $sp, $t0
	.p2align	4, , 16
.LBB0_277:                              # %vector.body1359
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $t0, 0
	vstelm.w	$vr0, $a6, 16, 0
	vstelm.w	$vr0, $a6, 0, 1
	vstelm.w	$vr0, $a6, -16, 2
	vstelm.w	$vr0, $a6, -32, 3
	st.w	$fp, $a6, 20
	st.w	$fp, $a6, 4
	st.w	$fp, $a6, -12
	st.w	$fp, $a6, -28
	addi.d	$t0, $t0, 16
	addi.d	$a7, $a7, -4
	addi.d	$a6, $a6, -64
	bnez	$a7, .LBB0_277
# %bb.278:                              # %middle.block1365
                                        #   in Loop: Header=BB0_16 Depth=2
	beq	$a4, $a5, .LBB0_85
.LBB0_279:                              # %.lr.ph812.preheader1439
                                        #   in Loop: Header=BB0_16 Depth=2
	alsl.d	$a0, $a3, $a0, 4
	addi.d	$a0, $a0, -16
	sub.d	$a1, $a1, $a2
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1772
	add.d	$a3, $sp, $a3
	alsl.d	$a2, $a2, $a3, 2
	.p2align	4, , 16
.LBB0_280:                              # %.lr.ph812
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a3, $a2, 0
	st.w	$a3, $a0, 0
	st.w	$fp, $a0, 4
	addi.d	$a0, $a0, -16
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB0_280
	b	.LBB0_85
	.p2align	4, , 16
.LBB0_281:                              # %.preheader753.loopexit
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 132
.LBB0_282:                              # %.preheader753
                                        #   in Loop: Header=BB0_3 Depth=1
	blez	$a0, .LBB0_2
# %bb.283:                              # %.lr.ph964
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(UCptr)
	addi.d	$a0, $a0, 1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a1, 84
	addi.d	$a1, $a2, -1
	b	.LBB0_285
	.p2align	4, , 16
.LBB0_284:                              #   in Loop: Header=BB0_285 Depth=2
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 44
	beqz	$a1, .LBB0_2
.LBB0_285:                              #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a0, -4
	bne	$a2, $s0, .LBB0_284
# %bb.286:                              #   in Loop: Header=BB0_285 Depth=2
	ld.w	$a2, $a0, 0
	bne	$a2, $s0, .LBB0_284
# %bb.287:                              #   in Loop: Header=BB0_285 Depth=2
	ld.w	$a2, $a0, -36
	slli.d	$a2, $a2, 4
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ldx.d	$a2, $a3, $a2
	st.d	$a2, $a0, -4
	b	.LBB0_284
.LBB0_288:                              # %._crit_edge971
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
