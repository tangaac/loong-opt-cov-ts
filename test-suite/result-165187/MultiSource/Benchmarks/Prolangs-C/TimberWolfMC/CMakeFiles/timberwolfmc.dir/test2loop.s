	.file	"test2loop.c"
	.text
	.globl	test2loop                       # -- Begin function test2loop
	.p2align	5
	.type	test2loop,@function
test2loop:                              # @test2loop
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
	fst.d	$fs0, $sp, 224                  # 8-byte Folded Spill
	move	$s3, $a0
	pcalau12i	$a0, %got_pc_hi20(totFunc)
	ld.d	$a0, $a0, %got_pc_lo12(totFunc)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(totPen)
	ld.d	$a0, $a0, %got_pc_lo12(totPen)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(T)
	ld.d	$fp, $a0, %got_pc_lo12(T)
	fld.d	$fa0, $fp, 0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fa0, $fa0
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 208                  # 16-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(bdxlength)
	ld.d	$s1, $a0, %got_pc_lo12(bdxlength)
	ld.w	$s0, $s1, 0
	fld.d	$fa0, $fp, 0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	fadd.d	$fa0, $fa0, $fa0
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	pcalau12i	$a0, %got_pc_hi20(bdylength)
	ld.d	$fp, $a0, %got_pc_lo12(bdylength)
	ld.w	$a0, $fp, 0
	vld	$vr1, $sp, 208                  # 16-byte Folded Reload
	vextrins.d	$vr1, $vr0, 16
	lu52i.d	$a1, $zero, 1013
	vreplgr2vr.d	$vr0, $a1
	vfmul.d	$vr0, $vr1, $vr0
	vinsgr2vr.w	$vr1, $s0, 0
	vinsgr2vr.w	$vr1, $a0, 1
	movgr2fr.w	$fa2, $s0
	ffint.d.w	$fa2, $fa2
	movgr2fr.w	$fa3, $a0
	ffint.d.w	$fa3, $fa3
	vextrins.d	$vr2, $vr3, 16
	vfmul.d	$vr0, $vr0, $vr2
	vreplvei.d	$vr2, $vr0, 0
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a0, $fa2
	vinsgr2vr.w	$vr2, $a0, 0
	vreplvei.d	$vr0, $vr0, 1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	vinsgr2vr.w	$vr2, $a0, 1
	vslti.w	$vr0, $vr2, 3
	vrepli.w	$vr3, 3
	vmin.w	$vr1, $vr1, $vr2
	vbitsel.v	$vr0, $vr1, $vr3, $vr0
	vpickve2gr.w	$s0, $vr0, 1
	ori	$a0, $zero, 3
	div.w	$s5, $s0, $a0
	vpickve2gr.w	$s2, $vr0, 0
	div.w	$s6, $s2, $a0
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$s4, $a0, %got_pc_lo12(fpo)
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.w	$a2, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.w	$a2, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	move	$a2, $s6
	move	$a3, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	st.d	$s3, $sp, 168                   # 8-byte Folded Spill
	blez	$s3, .LBB0_39
# %bb.1:                                # %.preheader240.lr.ph.preheader
	st.d	$s6, $sp, 208                   # 8-byte Folded Spill
	vinsgr2vr.w	$vr0, $s6, 0
	vinsgr2vr.w	$vr0, $s5, 1
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(randVar)
	ld.d	$a0, $a0, %got_pc_lo12(randVar)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$a0, $a0, %got_pc_lo12(numcells)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(bigcell)
	ld.d	$a0, $a0, %got_pc_lo12(bigcell)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(toobig)
	ld.d	$a0, $a0, %got_pc_lo12(toobig)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$a0, $a0, %got_pc_lo12(cellarray)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(blockl)
	ld.d	$a0, $a0, %got_pc_lo12(blockl)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(blockr)
	ld.d	$a0, $a0, %got_pc_lo12(blockr)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(blockb)
	ld.d	$a0, $a0, %got_pc_lo12(blockb)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(blockt)
	ld.d	$a0, $a0, %got_pc_lo12(blockt)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	move	$a0, $zero
	lu12i.w	$a1, 269412
	ori	$s4, $a1, 3693
	lu12i.w	$a1, 3
	ori	$fp, $a1, 57
	lu12i.w	$a1, -1024
	lu52i.d	$a1, $a1, 1053
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	movgr2fr.d	$fs0, $a1
	move	$ra, $s5
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %.outer.sink.split
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	pcalau12i	$a1, %got_pc_hi20(funccost)
	ld.d	$a1, $a1, %got_pc_lo12(funccost)
	ld.w	$a2, $a1, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	fld.d	$fa0, $a1, 0
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(penalty)
	ld.d	$a1, $a1, %got_pc_lo12(penalty)
	ld.w	$a2, $a1, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	fld.d	$fa0, $a1, 0
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a1, 0
	ld.d	$ra, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB0_40
.LBB0_3:                                # %.preheader240.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_6 Depth 3
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a7, $a1, 0
	movgr2fr.w	$fa0, $a0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.w	$t0, $a1, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a4, $a4, 0
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a5, $a5, 0
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a6, $a6, 0
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $t0
	ffint.d.w	$fa1, $fa1
	b	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	beqz	$t0, .LBB0_11
	.p2align	4, , 16
.LBB0_5:                                # %.preheader240
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_6 Depth 3
	mul.d	$a7, $a7, $s4
	add.w	$a7, $a7, $fp
	bstrpick.d	$t0, $a7, 30, 0
	movgr2fr.w	$fa2, $t0
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa2, $fa2, $fs0
	fmul.d	$fa2, $fa2, $fa0
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t0, $fa2
	beq	$a0, $t0, .LBB0_5
	.p2align	4, , 16
.LBB0_6:                                # %.preheader
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mul.d	$a7, $a7, $s4
	add.w	$a7, $a7, $fp
	bstrpick.d	$t1, $a7, 30, 0
	movgr2fr.w	$fa2, $t1
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa2, $fa2, $fs0
	fmul.d	$fa2, $fa2, $fa1
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t1, $fa2
	addi.w	$s7, $t1, 1
	beq	$s7, $a1, .LBB0_6
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=2
	beq	$t0, $t1, .LBB0_5
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=2
	addi.w	$s5, $t0, 1
	slli.d	$t0, $s5, 3
	ldx.d	$s6, $a2, $t0
	ld.w	$t0, $s6, 8
	bge	$t1, $a0, .LBB0_4
# %bb.9:                                #   in Loop: Header=BB0_5 Depth=2
	addi.w	$t1, $zero, -1
	beq	$t0, $t1, .LBB0_5
# %bb.10:                               #   in Loop: Header=BB0_5 Depth=2
	slli.d	$s1, $s7, 3
	ldx.d	$s8, $a2, $s1
	ld.w	$t1, $s8, 8
	bne	$t0, $t1, .LBB0_5
	b	.LBB0_29
.LBB0_11:                               #   in Loop: Header=BB0_5 Depth=2
	ld.d	$t0, $s6, 12
	vinsgr2vr.d	$vr2, $t0, 0
	vpickve2gr.w	$t2, $vr2, 0
	sub.w	$t0, $t2, $s2
	sub.w	$t1, $a4, $t2
	sub.w	$t3, $a3, $t2
	bge	$t0, $a3, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_5 Depth=2
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	div.w	$t0, $t3, $s1
	b	.LBB0_16
.LBB0_13:                               #   in Loop: Header=BB0_5 Depth=2
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	bge	$t0, $a4, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_5 Depth=2
	div.w	$t0, $s2, $s1
	sub.d	$t0, $zero, $t0
	b	.LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_5 Depth=2
	div.w	$t0, $t1, $s1
.LBB0_16:                               #   in Loop: Header=BB0_5 Depth=2
	vpickve2gr.w	$t6, $vr2, 1
	sub.w	$t5, $t6, $s0
	sub.w	$t4, $a6, $t6
	sub.w	$t7, $a5, $t6
	bge	$t5, $a5, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_5 Depth=2
	div.w	$t5, $t7, $ra
	b	.LBB0_21
.LBB0_18:                               #   in Loop: Header=BB0_5 Depth=2
	bge	$t5, $a6, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_5 Depth=2
	div.w	$t5, $s0, $ra
	sub.d	$t5, $zero, $t5
	b	.LBB0_21
.LBB0_20:                               #   in Loop: Header=BB0_5 Depth=2
	div.w	$t5, $t4, $ra
.LBB0_21:                               #   in Loop: Header=BB0_5 Depth=2
	add.w	$t2, $t2, $s2
	slt	$t8, $a4, $t2
	slt	$t2, $a3, $t2
	masknez	$t3, $t3, $t2
	maskeqz	$t2, $s2, $t2
	or	$t2, $t2, $t3
	maskeqz	$t1, $t1, $t8
	masknez	$t2, $t2, $t8
	or	$t1, $t1, $t2
	div.w	$t1, $t1, $s1
	add.w	$t2, $t6, $s0
	slt	$t3, $a6, $t2
	slt	$t2, $a5, $t2
	masknez	$t6, $t7, $t2
	maskeqz	$t2, $s0, $t2
	or	$t2, $t2, $t6
	maskeqz	$t4, $t4, $t3
	masknez	$t2, $t2, $t3
	or	$t2, $t4, $t2
	div.w	$t2, $t2, $ra
	mul.d	$a7, $a7, $s4
	add.d	$t3, $a7, $fp
	vinsgr2vr.w	$vr3, $t1, 0
	vinsgr2vr.w	$vr3, $t2, 1
	vinsgr2vr.w	$vr4, $t0, 0
	vinsgr2vr.w	$vr4, $t5, 1
	vsub.w	$vr3, $vr3, $vr4
	vaddi.wu	$vr3, $vr3, 1
	vpickve2gr.w	$a7, $vr3, 1
	movgr2fr.w	$fa5, $a7
	ffint.d.w	$fa5, $fa5
	vpickve2gr.w	$a7, $vr3, 0
	movgr2fr.w	$fa3, $a7
	ffint.d.w	$fa3, $fa3
	vextrins.d	$vr3, $vr5, 16
	mul.d	$a7, $t3, $s4
	add.w	$a7, $a7, $fp
	bstrpick.d	$t0, $t3, 30, 0
	movgr2fr.w	$fa5, $t0
	ffint.d.w	$fa5, $fa5
	bstrpick.d	$t0, $a7, 30, 0
	movgr2fr.w	$fa6, $t0
	ffint.d.w	$fa6, $fa6
	vextrins.d	$vr5, $vr6, 16
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	vreplgr2vr.d	$vr6, $t0
	vfdiv.d	$vr5, $vr5, $vr6
	vfmul.d	$vr3, $vr5, $vr3
	vreplvei.d	$vr5, $vr3, 0
	ftintrz.w.d	$fa5, $fa5
	movfr2gr.s	$t0, $fa5
	vinsgr2vr.w	$vr5, $t0, 0
	vreplvei.d	$vr3, $vr3, 1
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t0, $fa3
	vinsgr2vr.w	$vr5, $t0, 1
	vinsgr2vr.w	$vr5, $a0, 2
	vinsgr2vr.w	$vr5, $a0, 3
	vadd.w	$vr3, $vr4, $vr5
	vseqi.w	$vr4, $vr3, 0
	vshuf4i.w	$vr5, $vr4, 16
	vpickve2gr.d	$t0, $vr4, 0
	vpickve2gr.d	$t1, $vr5, 1
	and	$t0, $t0, $t1
	andi	$t0, $t0, 1
	bnez	$t0, .LBB0_5
# %bb.22:                               #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a0, $s6, 56
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.w	$a7, $a1, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vmadd.w	$vr2, $vr3, $vr0
	pcalau12i	$a1, %got_pc_hi20(gridGiven)
	ld.d	$a1, $a1, %got_pc_lo12(gridGiven)
	ld.w	$a1, $a1, 0
	beqz	$a1, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_3 Depth=1
	alsl.d	$a0, $a0, $s6, 3
	ld.d	$a0, $a0, 152
	ld.d	$s1, $a0, 88
	ld.w	$a0, $s1, 8
	ld.w	$a1, $s1, 12
	vpickve2gr.w	$a2, $vr2, 0
	add.w	$a0, $a0, $a2
	vpickve2gr.w	$a2, $vr2, 1
	add.w	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(forceGrid)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(newxx)
	ld.d	$a0, $a0, %got_pc_lo12(newxx)
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(newyy)
	ld.d	$a1, $a1, %got_pc_lo12(newyy)
	ld.d	$a2, $s1, 8
	ld.w	$a1, $a1, 0
	vinsgr2vr.d	$vr0, $a2, 0
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr1, $a1, 1
	vsub.w	$vr2, $vr1, $vr0
.LBB0_24:                               #   in Loop: Header=BB0_3 Depth=1
	vpickve2gr.w	$s8, $vr2, 0
	vpickve2gr.w	$s7, $vr2, 1
	move	$a0, $s5
	move	$a1, $s8
	move	$a2, $s7
	pcaddu18i	$ra, %call36(usite1)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_2
# %bb.25:                               #   in Loop: Header=BB0_3 Depth=1
	ori	$a1, $zero, 4
	move	$a0, $s6
	pcaddu18i	$ra, %call36(newOrient)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_27
# %bb.26:                               #   in Loop: Header=BB0_3 Depth=1
	move	$a3, $a0
	move	$a0, $s5
	move	$a1, $s8
	move	$a2, $s7
	pcaddu18i	$ra, %call36(usiteo1)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_2
.LBB0_27:                               #   in Loop: Header=BB0_3 Depth=1
	ori	$a1, $zero, 8
	move	$a0, $s6
	pcaddu18i	$ra, %call36(newOrient)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_38
# %bb.28:                               #   in Loop: Header=BB0_3 Depth=1
	move	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(usite0)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_2
	b	.LBB0_38
	.p2align	4, , 16
.LBB0_29:                               #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a1, $s6, 56
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	st.w	$a7, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(gridGiven)
	ld.d	$a0, $a0, %got_pc_lo12(gridGiven)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	beqz	$a0, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_3 Depth=1
	alsl.d	$a0, $a1, $s6, 3
	ld.d	$a0, $a0, 152
	ld.w	$a1, $s8, 56
	ld.d	$s3, $a0, 88
	alsl.d	$a0, $a1, $s8, 3
	ld.d	$a0, $a0, 152
	ld.w	$a1, $s8, 12
	ld.w	$a2, $s3, 8
	ld.w	$a3, $s8, 16
	ld.w	$a4, $s3, 12
	ld.d	$a0, $a0, 88
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	add.w	$a0, $a2, $a1
	add.w	$a1, $a4, $a3
	pcaddu18i	$ra, %call36(forceGrid)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(newxx)
	ld.d	$a0, $a0, %got_pc_lo12(newxx)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s3, 8
	sub.w	$a0, $a0, $a1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(newyy)
	ld.d	$a0, $a0, %got_pc_lo12(newyy)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s3, 12
	ld.w	$a2, $s6, 12
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a3, $s3, 8
	ld.w	$a4, $s6, 16
	ld.w	$a5, $s3, 12
	sub.w	$a0, $a0, $a1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	add.w	$a0, $a3, $a2
	add.w	$a1, $a5, $a4
	pcaddu18i	$ra, %call36(forceGrid)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s3, 8
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	ld.w	$a3, $s3, 12
	sub.w	$a4, $a0, $a1
	sub.w	$a5, $a2, $a3
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	move	$a0, $s5
	move	$a1, $s7
	pcaddu18i	$ra, %call36(usite2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_2
	b	.LBB0_32
	.p2align	4, , 16
.LBB0_31:                               #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a2, $s8, 12
	ld.w	$a3, $s8, 16
	ld.w	$a4, $s6, 12
	ld.w	$a5, $s6, 16
	move	$a0, $s5
	move	$a1, $s7
	pcaddu18i	$ra, %call36(usite2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_2
.LBB0_32:                               #   in Loop: Header=BB0_3 Depth=1
	ori	$a1, $zero, 4
	move	$a0, $s6
	pcaddu18i	$ra, %call36(newOrient)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldx.d	$a2, $a1, $s1
	ld.w	$s1, $a2, 56
	move	$s3, $a0
	ori	$a1, $zero, 4
	move	$a0, $a2
	pcaddu18i	$ra, %call36(newOrient)
	jirl	$ra, $ra, 0
	bgez	$s3, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_3 Depth=1
	bltz	$a0, .LBB0_38
.LBB0_34:                               #   in Loop: Header=BB0_3 Depth=1
	slti	$a1, $s3, 0
	slti	$a2, $a0, 0
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $s1, $a2
	or	$a2, $a2, $a3
	masknez	$a3, $s3, $a1
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	maskeqz	$a4, $a4, $a1
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a5, $a5, 0
	or	$a6, $a4, $a3
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$a7, $a0, $a2
	beqz	$a5, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_3 Depth=1
	alsl.d	$a0, $a6, $s6, 3
	ld.d	$a0, $a0, 152
	ld.d	$s1, $a0, 88
	alsl.d	$a0, $a7, $s8, 3
	ld.d	$a0, $a0, 152
	ld.w	$a1, $s8, 12
	ld.w	$a2, $s1, 8
	ld.w	$a3, $s8, 16
	ld.w	$a4, $s1, 12
	ld.d	$s3, $a0, 88
	add.w	$a0, $a2, $a1
	add.w	$a1, $a4, $a3
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	st.d	$a7, $sp, 72                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(forceGrid)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(newxx)
	ld.d	$a0, $a0, %got_pc_lo12(newxx)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s1, 8
	sub.w	$a0, $a0, $a1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(newyy)
	ld.d	$s8, $a0, %got_pc_lo12(newyy)
	ld.w	$a0, $s8, 0
	ld.w	$a1, $s1, 12
	ld.w	$a2, $s6, 12
	ld.w	$a3, $s3, 8
	ld.w	$a4, $s6, 16
	ld.w	$a5, $s3, 12
	sub.w	$s1, $a0, $a1
	add.w	$a0, $a3, $a2
	add.w	$a1, $a5, $a4
	pcaddu18i	$ra, %call36(forceGrid)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.w	$a1, $s3, 8
	ld.w	$a2, $s8, 0
	ld.w	$a3, $s3, 12
	sub.w	$a4, $a0, $a1
	sub.w	$a5, $a2, $a3
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	b	.LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a2, $s8, 12
	ld.w	$s1, $s8, 16
	ld.w	$a4, $s6, 12
	ld.w	$a5, $s6, 16
.LBB0_37:                               #   in Loop: Header=BB0_3 Depth=1
	move	$a0, $s5
	move	$a1, $s7
	move	$a3, $s1
	pcaddu18i	$ra, %call36(usiteo2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_2
.LBB0_38:                               #   in Loop: Header=BB0_3 Depth=1
	ld.d	$ra, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB0_3
	b	.LBB0_40
.LBB0_39:
	move	$a0, $zero
.LBB0_40:                               # %.outer._crit_edge
	fld.d	$fs0, $sp, 224                  # 8-byte Folded Reload
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
.Lfunc_end0:
	.size	test2loop, .Lfunc_end0-test2loop
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"range limiter:%d units either way in x"
	.size	.L.str, 39

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"   compared to bdxlength:%d\n"
	.size	.L.str.1, 29

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"range limiter:%d units either way in y"
	.size	.L.str.2, 39

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"   compared to bdylength:%d\n"
	.size	.L.str.3, 29

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"scalex:%d  scaley:%d\n"
	.size	.L.str.4, 22

	.section	".note.GNU-stack","",@progbits
	.addrsig
