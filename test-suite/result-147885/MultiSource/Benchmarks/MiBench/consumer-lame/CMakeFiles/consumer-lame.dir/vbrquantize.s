	.file	"vbrquantize.c"
	.text
	.globl	calc_sfb_ave_noise              # -- Begin function calc_sfb_ave_noise
	.p2align	5
	.type	calc_sfb_ave_noise,@function
calc_sfb_ave_noise:                     # @calc_sfb_ave_noise
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	vldi	$vr1, -920
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	mul.w	$a0, $fp, $s0
	blez	$a0, .LBB0_7
# %bb.1:                                # %.lr.ph.preheader
	move	$a1, $zero
	move	$a2, $zero
	slli.d	$a3, $s0, 3
	pcalau12i	$a4, %got_pc_hi20(pow43)
	ld.d	$a4, $a4, %got_pc_lo12(pow43)
	movgr2fr.d	$fa1, $zero
	lu12i.w	$a5, 2
	ori	$a5, $a5, 14
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	fmadd.d	$fa1, $fa2, $fa2, $fa1
	add.d	$a2, $a2, $s0
	add.d	$a1, $a1, $a3
	bge	$a2, $a0, .LBB0_8
.LBB0_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa2, $s1, $a1
	fdiv.d	$fa2, $fa2, $fa0
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a6, $fa2
	blt	$a5, $a6, .LBB0_9
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	fldx.d	$fa2, $s2, $a1
	slli.d	$a7, $a6, 3
	fldx.d	$fa4, $a4, $a7
	fabs.d	$fa3, $fa2
	fneg.d	$fa2, $fa4
	fmadd.d	$fa2, $fa2, $fs0, $fa3
	beq	$a6, $a5, .LBB0_2
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	alsl.d	$a6, $a6, $a4, 3
	fld.d	$fa4, $a6, 8
	fneg.d	$fa4, $fa4
	fmadd.d	$fa3, $fa4, $fs0, $fa3
	fabs.d	$fa4, $fa3
	fabs.d	$fa5, $fa2
	fcmp.cule.d	$fcc0, $fa5, $fa4
	bcnez	$fcc0, .LBB0_2
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	fmov.d	$fa2, $fa3
	b	.LBB0_2
.LBB0_7:
	movgr2fr.d	$fa1, $zero
.LBB0_8:                                # %._crit_edge
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	b	.LBB0_10
.LBB0_9:
	vldi	$vr0, -784
.LBB0_10:                               # %.loopexit
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	calc_sfb_ave_noise, .Lfunc_end0-calc_sfb_ave_noise
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function find_scalefac
.LCPI1_0:
	.dword	0xc034800000000000              # double -20.5
.LCPI1_1:
	.dword	0xc042400000000000              # double -36.5
.LCPI1_2:
	.dword	0xc046400000000000              # double -44.5
.LCPI1_3:
	.dword	0xc048400000000000              # double -48.5
.LCPI1_4:
	.dword	0xc049400000000000              # double -50.5
.LCPI1_5:
	.dword	0xc049c00000000000              # double -51.5
.LCPI1_6:
	.dword	0xc04a000000000000              # double -52
.LCPI1_7:
	.dword	0x40c3880000000000              # double 1.0E+4
.LCPI1_8:
	.dword	0x4040000000000000              # double 32
.LCPI1_9:
	.dword	0x3f847ae147ae147b              # double 0.01
	.text
	.globl	find_scalefac
	.p2align	5
	.type	find_scalefac,@function
find_scalefac:                          # @find_scalefac
# %bb.0:
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 80                   # 8-byte Folded Spill
	fmov.d	$fs7, $fa0
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	mul.w	$s2, $a4, $a2
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fs4, $fa0
	blez	$s2, .LBB1_14
# %bb.1:                                # %.lr.ph.preheader.i.us.preheader
	move	$s3, $zero
	slli.d	$s4, $fp, 3
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI1_0)
	pcalau12i	$a0, %pc_hi20(.LCPI1_7)
	fld.d	$fs5, $a0, %pc_lo12(.LCPI1_7)
	pcalau12i	$a0, %pc_hi20(.LCPI1_8)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI1_8)
	movgr2fr.d	$fs6, $zero
	pcalau12i	$a0, %got_pc_hi20(pow43)
	ld.d	$s5, $a0, %got_pc_lo12(pow43)
	lu12i.w	$a0, 2
	ori	$s6, $a0, 14
	ori	$s7, $zero, 7
	fmov.d	$fs1, $fs5
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_2:                                # %calc_sfb_ave_noise.exit.thread.us
                                        #   in Loop: Header=BB1_4 Depth=1
	vld	$vr2, $sp, 64                   # 16-byte Folded Reload
	fadd.d	$fa0, $fs2, $fa2
.LBB1_3:                                #   in Loop: Header=BB1_4 Depth=1
	addi.w	$s3, $s3, 1
	fmov.d	$fs2, $fa0
	beq	$s3, $s7, .LBB1_18
.LBB1_4:                                # %.lr.ph.preheader.i.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	vldi	$vr0, -928
	fmul.d	$fa2, $fa2, $fa0
	vst	$vr2, $sp, 64                   # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	fmov.d	$fs3, $fa0
	vldi	$vr1, -920
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	move	$a1, $zero
	fmov.d	$fa1, $fs6
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_5:                                #   in Loop: Header=BB1_6 Depth=2
	fmadd.d	$fa1, $fa2, $fa2, $fa1
	add.d	$a1, $a1, $fp
	add.d	$a0, $a0, $s4
	bge	$a1, $s2, .LBB1_10
.LBB1_6:                                # %.lr.ph.i.us
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa2, $s0, $a0
	fdiv.d	$fa2, $fa2, $fa0
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a2, $fa2
	blt	$s6, $a2, .LBB1_2
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=2
	fldx.d	$fa2, $s1, $a0
	slli.d	$a3, $a2, 3
	fldx.d	$fa4, $s5, $a3
	fabs.d	$fa3, $fa2
	fneg.d	$fa2, $fa4
	fmadd.d	$fa2, $fa2, $fs3, $fa3
	beq	$a2, $s6, .LBB1_5
# %bb.8:                                #   in Loop: Header=BB1_6 Depth=2
	alsl.d	$a2, $a2, $s5, 3
	fld.d	$fa4, $a2, 8
	fneg.d	$fa4, $fa4
	fmadd.d	$fa3, $fa4, $fs3, $fa3
	fabs.d	$fa4, $fa3
	fabs.d	$fa5, $fa2
	fcmp.cule.d	$fcc0, $fa5, $fa4
	bcnez	$fcc0, .LBB1_5
# %bb.9:                                #   in Loop: Header=BB1_6 Depth=2
	fmov.d	$fa2, $fa3
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_10:                               # %calc_sfb_ave_noise.exit.loopexit.us
                                        #   in Loop: Header=BB1_4 Depth=1
	fdiv.d	$fa0, $fa1, $fs4
	fcmp.clt.d	$fcc0, $fa0, $fs6
	bcnez	$fcc0, .LBB1_2
# %bb.11:                               #   in Loop: Header=BB1_4 Depth=1
	fcmp.clt.d	$fcc0, $fs7, $fa0
	bceqz	$fcc0, .LBB1_13
# %bb.12:                               #   in Loop: Header=BB1_4 Depth=1
	fcmp.ceq.d	$fcc0, $fs1, $fs5
	fsel	$fs1, $fs1, $fs2, $fcc0
	vld	$vr2, $sp, 64                   # 16-byte Folded Reload
	fsub.d	$fa0, $fs2, $fa2
	b	.LBB1_3
.LBB1_13:                               #   in Loop: Header=BB1_4 Depth=1
	vld	$vr2, $sp, 64                   # 16-byte Folded Reload
	fadd.d	$fa0, $fs2, $fa2
	fmov.d	$fs1, $fs2
	b	.LBB1_3
.LBB1_14:                               # %.split
	movgr2fr.d	$fa0, $zero
	fdiv.d	$fs0, $fa0, $fs4
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fcmp.cule.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB1_16
# %bb.15:                               # %calc_sfb_ave_noise.exit.us100.preheader
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_0)
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI1_7)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI1_7)
	vldi	$vr0, -986
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	vldi	$vr0, -987
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vldi	$vr0, -989
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	vldi	$vr0, -994
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	vldi	$vr0, -1012
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vldi	$vr0, -878
	b	.LBB1_17
.LBB1_16:                               # %.split.split
	fld.d	$fs1, $a0, %pc_lo12(.LCPI1_0)
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	fcmp.clt.d	$fcc0, $fs7, $fs0
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_1)
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI1_2)
	vldi	$vr2, -878
	fsel	$fa0, $fa2, $fa0, $fcc0
	vldi	$vr2, -1012
	fsel	$fa1, $fa2, $fa1, $fcc0
	vst	$vr1, $sp, 32                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_3)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI1_3)
	pcalau12i	$a0, %pc_hi20(.LCPI1_4)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI1_4)
	vldi	$vr3, -994
	fsel	$fa1, $fa3, $fa1, $fcc0
	vst	$vr1, $sp, 0                    # 16-byte Folded Spill
	vldi	$vr1, -989
	fsel	$fa1, $fa1, $fa2, $fcc0
	vst	$vr1, $sp, 48                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_5)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI1_5)
	pcalau12i	$a0, %pc_hi20(.LCPI1_6)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI1_6)
	vldi	$vr3, -987
	fsel	$fa1, $fa3, $fa1, $fcc0
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	vldi	$vr1, -986
	fsel	$fa2, $fa1, $fa2, $fcc0
	vst	$vr2, $sp, 64                   # 16-byte Folded Spill
	fsel	$fs1, $fa1, $fs1, $fcc0
.LBB1_17:                               # %.split96.us.sink.split
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	vldi	$vr2, -944
.LBB1_18:                               # %.split96.us
	pcalau12i	$a0, %pc_hi20(.LCPI1_9)
	fld.d	$fs5, $a0, %pc_lo12(.LCPI1_9)
	vldi	$vr0, -920
	fadd.d	$fa0, $fs1, $fa0
	fadd.d	$fs6, $fs1, $fs5
	fcmp.cule.d	$fcc0, $fa0, $fs6
	bcnez	$fcc0, .LBB1_35
# %bb.19:                               # %.lr.ph
	fst.d	$fs7, $sp, 64                   # 8-byte Folded Spill
	vldi	$vr1, -1024
	fmadd.d	$fs7, $fa2, $fa1, $fs1
	blez	$s2, .LBB1_31
# %bb.20:                               # %.lr.ph.preheader.i76.us.preheader
	slli.d	$s3, $fp, 3
	pcalau12i	$a0, %got_pc_hi20(pow43)
	ld.d	$s4, $a0, %got_pc_lo12(pow43)
	movgr2fr.d	$fs0, $zero
	lu12i.w	$a0, 2
	ori	$s5, $a0, 14
	b	.LBB1_22
	.p2align	4, , 16
.LBB1_21:                               # %calc_sfb_ave_noise.exit83.thread.us
                                        #   in Loop: Header=BB1_22 Depth=1
	vldi	$vr0, -816
	fadd.d	$fa0, $fs2, $fa0
	fcmp.clt.d	$fcc0, $fs6, $fa0
	bceqz	$fcc0, .LBB1_35
.LBB1_22:                               # %.lr.ph.preheader.i76.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_24 Depth 2
	fsub.d	$fa1, $fa0, $fs7
	fabs.d	$fa1, $fa1
	vldi	$vr2, -816
	fadd.d	$fa2, $fa0, $fa2
	fcmp.clt.d	$fcc0, $fa1, $fs5
	fsel	$fs2, $fa0, $fa2, $fcc0
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	fmov.d	$fs3, $fa0
	vldi	$vr1, -920
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	move	$a1, $zero
	fmov.d	$fa1, $fs0
	b	.LBB1_24
	.p2align	4, , 16
.LBB1_23:                               #   in Loop: Header=BB1_24 Depth=2
	fmadd.d	$fa1, $fa2, $fa2, $fa1
	add.d	$a1, $a1, $fp
	add.d	$a0, $a0, $s3
	bge	$a1, $s2, .LBB1_28
.LBB1_24:                               # %.lr.ph.i77.us
                                        #   Parent Loop BB1_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa2, $s0, $a0
	fdiv.d	$fa2, $fa2, $fa0
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a2, $fa2
	blt	$s5, $a2, .LBB1_21
# %bb.25:                               #   in Loop: Header=BB1_24 Depth=2
	fldx.d	$fa2, $s1, $a0
	slli.d	$a3, $a2, 3
	fldx.d	$fa4, $s4, $a3
	fabs.d	$fa3, $fa2
	fneg.d	$fa2, $fa4
	fmadd.d	$fa2, $fa2, $fs3, $fa3
	beq	$a2, $s5, .LBB1_23
# %bb.26:                               #   in Loop: Header=BB1_24 Depth=2
	alsl.d	$a2, $a2, $s4, 3
	fld.d	$fa4, $a2, 8
	fneg.d	$fa4, $fa4
	fmadd.d	$fa3, $fa4, $fs3, $fa3
	fabs.d	$fa4, $fa3
	fabs.d	$fa5, $fa2
	fcmp.cule.d	$fcc0, $fa5, $fa4
	bcnez	$fcc0, .LBB1_23
# %bb.27:                               #   in Loop: Header=BB1_24 Depth=2
	fmov.d	$fa2, $fa3
	b	.LBB1_23
	.p2align	4, , 16
.LBB1_28:                               # %calc_sfb_ave_noise.exit83.loopexit.us
                                        #   in Loop: Header=BB1_22 Depth=1
	fdiv.d	$fa0, $fa1, $fs4
	fcmp.cule.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB1_21
# %bb.29:                               # %calc_sfb_ave_noise.exit83.loopexit.us
                                        #   in Loop: Header=BB1_22 Depth=1
	fld.d	$fa1, $sp, 64                   # 8-byte Folded Reload
	fcmp.cult.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB1_21
# %bb.30:
	fmov.d	$fs1, $fs2
	b	.LBB1_35
.LBB1_31:                               # %.lr.ph.split
	movgr2fr.d	$fa2, $zero
	fdiv.d	$fa1, $fa2, $fs4
	fcmp.cule.d	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB1_34
# %bb.32:                               # %.lr.ph.split
	fld.d	$fa2, $sp, 64                   # 8-byte Folded Reload
	fcmp.cle.d	$fcc0, $fa1, $fa2
	bceqz	$fcc0, .LBB1_34
# %bb.33:                               # %calc_sfb_ave_noise.exit83
	fsub.d	$fa1, $fa0, $fs7
	fabs.d	$fa1, $fa1
	vldi	$vr2, -816
	fadd.d	$fa2, $fa0, $fa2
	fcmp.clt.d	$fcc0, $fa1, $fs5
	fsel	$fs1, $fa0, $fa2, $fcc0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	vldi	$vr1, -920
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	b	.LBB1_35
	.p2align	4, , 16
.LBB1_34:                               # %calc_sfb_ave_noise.exit83.us151
                                        # =>This Inner Loop Header: Depth=1
	fsub.d	$fa1, $fa0, $fs7
	fabs.d	$fa1, $fa1
	vldi	$vr2, -816
	fadd.d	$fa2, $fa0, $fa2
	fcmp.clt.d	$fcc0, $fa1, $fs5
	fsel	$fs0, $fa0, $fa2, $fcc0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	vldi	$vr1, -920
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	vldi	$vr0, -816
	fadd.d	$fa0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fs6, $fa0
	bcnez	$fcc0, .LBB1_34
.LBB1_35:                               # %._crit_edge
	fmov.d	$fa0, $fs1
	fld.d	$fs7, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 136                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.Lfunc_end1:
	.size	find_scalefac, .Lfunc_end1-find_scalefac
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function compute_scalefacs_short
.LCPI2_0:
	.dword	0x3f1a36e2eb1c432d              # double 1.0E-4
	.text
	.globl	compute_scalefacs_short
	.p2align	5
	.type	compute_scalefacs_short,@function
compute_scalefacs_short:                # @compute_scalefacs_short
# %bb.0:
	addi.d	$sp, $sp, -320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	ld.w	$a3, $a1, 68
	move	$fp, $a2
	move	$a1, $a0
	sltui	$a0, $a3, 1
	addi.d	$s0, $a0, 1
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 288
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	movgr2fr.w	$fa0, $s0
	ffint.d.w	$fa1, $fa0
	addi.d	$a1, $sp, 24
	addi.d	$a2, $fp, 4
	movgr2fr.d	$fa0, $zero
	vldi	$vr2, -978
	pcalau12i	$a3, %pc_hi20(.LCPI2_0)
	fld.d	$fa3, $a3, %pc_lo12(.LCPI2_0)
	vldi	$vr4, -996
	vldi	$vr5, -920
	ori	$a3, $zero, 12
	.p2align	4, , 16
.LBB2_1:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	sltui	$a4, $a0, 6
	fld.d	$fa6, $a1, -16
	movgr2cf	$fcc0, $a4
	fsel	$fa7, $fa4, $fa2, $fcc0
	fdiv.d	$fa7, $fa7, $fa1
	fneg.d	$ft0, $fa6
	fmadd.d	$ft0, $ft0, $fa1, $fa5
	fadd.d	$ft0, $ft0, $fa3
	vreplvei.d	$vr8, $vr8, 0
	vfrintrm.d	$vr8, $vr8
	ftintrz.w.d	$ft0, $ft0
	movfr2gr.s	$a4, $ft0
	st.w	$a4, $a2, -4
	fld.d	$ft0, $a1, -8
	fadd.d	$fa6, $fa7, $fa6
	fcmp.clt.d	$fcc0, $fa0, $fa6
	fsel	$fa0, $fa0, $fa6, $fcc0
	fneg.d	$fa6, $ft0
	fmadd.d	$fa6, $fa6, $fa1, $fa5
	fadd.d	$fa6, $fa6, $fa3
	vreplvei.d	$vr6, $vr6, 0
	vfrintrm.d	$vr6, $vr6
	ftintrz.w.d	$fa6, $fa6
	movfr2gr.s	$a4, $fa6
	st.w	$a4, $a2, 0
	fld.d	$fa6, $a1, 0
	fadd.d	$ft0, $fa7, $ft0
	fcmp.clt.d	$fcc0, $fa0, $ft0
	fsel	$fa0, $fa0, $ft0, $fcc0
	fneg.d	$ft0, $fa6
	fmadd.d	$ft0, $ft0, $fa1, $fa5
	fadd.d	$ft0, $ft0, $fa3
	vreplvei.d	$vr8, $vr8, 0
	vfrintrm.d	$vr8, $vr8
	ftintrz.w.d	$ft0, $ft0
	movfr2gr.s	$a4, $ft0
	st.w	$a4, $a2, 4
	fadd.d	$fa6, $fa7, $fa6
	fcmp.clt.d	$fcc0, $fa0, $fa6
	fsel	$fa0, $fa0, $fa6, $fcc0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 24
	addi.d	$a2, $a2, 12
	bne	$a0, $a3, .LBB2_1
# %bb.2:
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.Lfunc_end2:
	.size	compute_scalefacs_short, .Lfunc_end2-compute_scalefacs_short
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function compute_scalefacs_long
.LCPI3_0:
	.dword	0x3f1a36e2eb1c432d              # double 1.0E-4
	.text
	.globl	compute_scalefacs_long
	.p2align	5
	.type	compute_scalefacs_long,@function
compute_scalefacs_long:                 # @compute_scalefacs_long
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	move	$s0, $a1
	ld.w	$a3, $a1, 68
	move	$fp, $a2
	move	$a1, $a0
	sltui	$a0, $a3, 1
	addi.d	$s2, $a0, 1
	addi.d	$a0, $sp, 0
	ori	$a2, $zero, 168
	addi.d	$s1, $sp, 0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(pretab)
	ld.d	$a0, $a0, %got_pc_lo12(pretab)
	ld.w	$a1, $a0, 44
	fld.d	$fa0, $sp, 88
	div.w	$a1, $a1, $s2
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa1, $fa0, $fa1
	movgr2fr.d	$fa0, $zero
	fcmp.clt.d	$fcc0, $fa0, $fa1
	st.w	$zero, $s0, 64
	bcnez	$fcc0, .LBB3_11
# %bb.1:
	ld.w	$a1, $a0, 48
	fld.d	$fa2, $sp, 96
	div.w	$a1, $a1, $s2
	movgr2fr.w	$fa3, $a1
	ffint.d.w	$fa3, $fa3
	fadd.d	$fa2, $fa2, $fa3
	fcmp.clt.d	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB3_11
# %bb.2:
	ld.w	$a1, $a0, 52
	fld.d	$fa3, $sp, 104
	div.w	$a1, $a1, $s2
	movgr2fr.w	$fa4, $a1
	ffint.d.w	$fa4, $fa4
	fadd.d	$fa3, $fa3, $fa4
	fcmp.clt.d	$fcc0, $fa0, $fa3
	bcnez	$fcc0, .LBB3_11
# %bb.3:
	ld.w	$a1, $a0, 56
	fld.d	$fa4, $sp, 112
	div.w	$a1, $a1, $s2
	movgr2fr.w	$fa5, $a1
	ffint.d.w	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fcmp.clt.d	$fcc0, $fa0, $fa4
	bcnez	$fcc0, .LBB3_11
# %bb.4:
	ld.w	$a1, $a0, 60
	fld.d	$fa5, $sp, 120
	div.w	$a1, $a1, $s2
	movgr2fr.w	$fa6, $a1
	ffint.d.w	$fa6, $fa6
	fadd.d	$fa6, $fa5, $fa6
	fcmp.clt.d	$fcc0, $fa0, $fa6
	bcnez	$fcc0, .LBB3_11
# %bb.5:
	ld.w	$a1, $a0, 64
	fld.d	$fa5, $sp, 128
	div.w	$a1, $a1, $s2
	movgr2fr.w	$fa7, $a1
	ffint.d.w	$fa7, $fa7
	fadd.d	$fa7, $fa5, $fa7
	fcmp.clt.d	$fcc0, $fa0, $fa7
	bcnez	$fcc0, .LBB3_11
# %bb.6:
	ld.w	$a1, $a0, 68
	fld.d	$fa7, $sp, 136
	div.w	$a1, $a1, $s2
	movgr2fr.w	$ft0, $a1
	ffint.d.w	$ft0, $ft0
	fadd.d	$ft0, $fa7, $ft0
	fcmp.clt.d	$fcc0, $fa0, $ft0
	bcnez	$fcc0, .LBB3_11
# %bb.7:
	ld.w	$a1, $a0, 72
	fld.d	$ft0, $sp, 144
	div.w	$a1, $a1, $s2
	movgr2fr.w	$ft1, $a1
	ffint.d.w	$ft1, $ft1
	fadd.d	$ft1, $ft0, $ft1
	fcmp.clt.d	$fcc0, $fa0, $ft1
	bcnez	$fcc0, .LBB3_11
# %bb.8:
	ld.w	$a1, $a0, 76
	fld.d	$ft1, $sp, 152
	div.w	$a1, $a1, $s2
	movgr2fr.w	$ft2, $a1
	ffint.d.w	$ft2, $ft2
	fadd.d	$ft2, $ft1, $ft2
	fcmp.clt.d	$fcc0, $fa0, $ft2
	bcnez	$fcc0, .LBB3_11
# %bb.9:
	ld.w	$a1, $a0, 80
	fld.d	$ft2, $sp, 160
	div.w	$a1, $a1, $s2
	movgr2fr.w	$ft3, $a1
	ffint.d.w	$ft3, $ft3
	fadd.d	$ft3, $ft2, $ft3
	fcmp.clt.d	$fcc0, $fa0, $ft3
	bcnez	$fcc0, .LBB3_11
# %bb.10:                               # %.thread.loopexit
	ori	$a1, $zero, 1
	st.w	$a1, $s0, 64
	fst.d	$fa1, $sp, 88
	fst.d	$fa2, $sp, 96
	ld.w	$a1, $a0, 64
	fst.d	$fa3, $sp, 104
	fst.d	$fa4, $sp, 112
	fst.d	$fa6, $sp, 120
	div.w	$a1, $a1, $s2
	movgr2fr.w	$fa1, $a1
	ld.w	$a1, $a0, 68
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa1, $fa5, $fa1
	fst.d	$fa1, $sp, 128
	div.w	$a1, $a1, $s2
	movgr2fr.w	$fa1, $a1
	ld.w	$a1, $a0, 72
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa1, $fa7, $fa1
	fst.d	$fa1, $sp, 136
	div.w	$a1, $a1, $s2
	movgr2fr.w	$fa1, $a1
	ld.w	$a1, $a0, 76
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa1, $ft0, $fa1
	fst.d	$fa1, $sp, 144
	div.w	$a1, $a1, $s2
	movgr2fr.w	$fa1, $a1
	ld.w	$a0, $a0, 80
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa1, $ft1, $fa1
	fst.d	$fa1, $sp, 152
	div.w	$a0, $a0, $s2
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa1, $ft2, $fa1
	fst.d	$fa1, $sp, 160
.LBB3_11:                               # %.thread
	move	$a0, $zero
	movgr2fr.w	$fa1, $s2
	ffint.d.w	$fa1, $fa1
	vldi	$vr2, -920
	pcalau12i	$a1, %pc_hi20(.LCPI3_0)
	fld.d	$fa3, $a1, %pc_lo12(.LCPI3_0)
	vldi	$vr4, -978
	vldi	$vr5, -996
	ori	$a1, $zero, 21
	.p2align	4, , 16
.LBB3_12:                               # =>This Inner Loop Header: Depth=1
	fld.d	$fa6, $s1, 0
	fneg.d	$fa7, $fa6
	fmadd.d	$fa7, $fa7, $fa1, $fa2
	fadd.d	$fa7, $fa7, $fa3
	vreplvei.d	$vr7, $vr7, 0
	vfrintrm.d	$vr7, $vr7
	ftintrz.w.d	$fa7, $fa7
	movfr2gr.s	$a2, $fa7
	sltui	$a3, $a0, 11
	st.w	$a2, $fp, 0
	movgr2cf	$fcc0, $a3
	fsel	$fa7, $fa5, $fa4, $fcc0
	fdiv.d	$fa7, $fa7, $fa1
	fadd.d	$fa6, $fa7, $fa6
	fcmp.clt.d	$fcc0, $fa0, $fa6
	fsel	$fa0, $fa0, $fa6, $fcc0
	addi.d	$a0, $a0, 1
	addi.d	$fp, $fp, 4
	addi.d	$s1, $s1, 8
	bne	$a0, $a1, .LBB3_12
# %bb.13:
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end3:
	.size	compute_scalefacs_long, .Lfunc_end3-compute_scalefacs_long
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function VBR_iteration_loop_new
.LCPI4_0:
	.dword	0x405fc00000000000              # double 127
.LCPI4_1:
	.dword	0x406a400000000000              # double 210
.LCPI4_2:
	.dword	0x3f1a36e2eb1c432d              # double 1.0E-4
	.text
	.globl	VBR_iteration_loop_new
	.p2align	5
	.type	VBR_iteration_loop_new,@function
VBR_iteration_loop_new:                 # @VBR_iteration_loop_new
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
	fst.d	$fs1, $sp, 1928                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1920                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1912                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1904                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1896                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1888                 # 8-byte Folded Spill
	fst.d	$fs7, $sp, 1880                 # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1328
	sub.d	$sp, $sp, $a1
	st.d	$a7, $sp, 168                   # 8-byte Folded Spill
	move	$a2, $a6
	move	$s3, $a5
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	move	$s2, $a0
	move	$a1, $a5
	pcaddu18i	$ra, %call36(iteration_init)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 92
	slli.d	$a0, $a0, 1
	addi.d	$a0, $a0, -10
	movgr2fr.w	$fa0, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI4_0)
	ffint.d.w	$fa0, $fa0
	vldi	$vr1, -988
	fdiv.d	$fa1, $fa0, $fa1
	fcmp.cule.d	$fcc0, $fa1, $fa2
	bceqz	$fcc0, .LBB4_25
.LBB4_1:                                # %cdce.end
	pcalau12i	$a0, %got_pc_hi20(masking_lower)
	ld.d	$s5, $a0, %got_pc_lo12(masking_lower)
	ld.w	$a0, $s2, 200
	lu12i.w	$a1, 260096
	st.w	$a1, $s5, 0
	blez	$a0, .LBB4_24
# %bb.2:                                # %.lr.ph160
	move	$a1, $zero
	addi.d	$a0, $s3, 48
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(convert_mdct)
	ld.d	$a0, $a0, %got_pc_lo12(convert_mdct)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, -2
	ori	$a0, $a0, 3584
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$s1, $a0, 512
	addi.d	$s7, $sp, 256
	pcalau12i	$a0, %got_pc_hi20(scalefac_band)
	ld.d	$a0, $a0, %got_pc_lo12(scalefac_band)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 96
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	movgr2fr.d	$fs1, $zero
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1024
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1256
	add.d	$a0, $sp, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 72                   # 8-byte Folded Spill
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_3:                                # %._crit_edge
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.w	$a0, $s2, 200
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	add.d	$a3, $a3, $a2
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 976
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	bge	$a1, $a0, .LBB4_24
.LBB4_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
                                        #       Child Loop BB4_10 Depth 3
                                        #       Child Loop BB4_17 Depth 3
                                        #       Child Loop BB4_15 Depth 3
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	alsl.d	$fp, $a1, $a1, 3
	beqz	$a0, .LBB4_6
# %bb.5:                                #   in Loop: Header=BB4_4 Depth=1
	slli.d	$a0, $fp, 10
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	move	$a1, $a0
	pcaddu18i	$ra, %call36(ms_convert)
	jirl	$ra, $ra, 0
.LBB4_6:                                #   in Loop: Header=BB4_4 Depth=1
	ld.w	$a0, $s2, 204
	blez	$a0, .LBB4_3
# %bb.7:                                # %.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$s6, $zero
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ori	$a0, $zero, 240
	mul.d	$a0, $a2, $a0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	slli.d	$a0, $fp, 10
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ori	$a0, $zero, 1952
	mul.d	$a0, $a2, $a0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ori	$a0, $zero, 976
	mul.d	$a0, $a2, $a0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1256
	add.d	$a1, $sp, $a1
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	b	.LBB4_9
	.p2align	4, , 16
.LBB4_8:                                #   in Loop: Header=BB4_9 Depth=2
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a0, $s2, 204
	addi.d	$s6, $s6, 1
	add.d	$fp, $fp, $s1
	addi.d	$s3, $s3, 488
	bge	$s6, $a0, .LBB4_3
.LBB4_9:                                #   Parent Loop BB4_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_10 Depth 3
                                        #       Child Loop BB4_17 Depth 3
                                        #       Child Loop BB4_15 Depth 3
	ori	$a0, $zero, 120
	mul.d	$a0, $s6, $a0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	add.d	$a3, $a1, $a0
	ld.w	$s8, $a3, 24
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_10:                               #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a0, $fp, $s0
	fldx.d	$fa0, $a0, $s1
	fabs.d	$fa0, $fa0
	fsqrt.d	$fa1, $fa0
	fmul.d	$fa1, $fa0, $fa1
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB4_12
# %bb.11:                               # %.split
                                        #   in Loop: Header=BB4_10 Depth=3
	add.d	$a0, $s7, $s0
	addi.d	$s0, $s0, 8
	fstx.d	$fa0, $a0, $s1
	bnez	$s0, .LBB4_10
	b	.LBB4_13
.LBB4_12:                               # %call.sqrt
                                        #   in Loop: Header=BB4_10 Depth=3
	fmov.d	$fa0, $fa1
	move	$s4, $a3
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	move	$a3, $s4
	add.d	$a0, $s7, $s0
	addi.d	$s0, $s0, 8
	fstx.d	$fa0, $a0, $s1
	bnez	$s0, .LBB4_10
	.p2align	4, , 16
.LBB4_13:                               #   in Loop: Header=BB4_9 Depth=2
	alsl.d	$a0, $s6, $s6, 3
	slli.d	$a0, $a0, 9
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	add.d	$s4, $a1, $a0
	ori	$a0, $zero, 976
	mul.d	$a0, $s6, $a0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	add.d	$a2, $a1, $a0
	ori	$a0, $zero, 488
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	mul.d	$a0, $s6, $a0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	add.d	$a4, $a1, $a0
	move	$a0, $s2
	move	$a1, $s4
	st.d	$a3, $sp, 224                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(calc_xmin)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
	bne	$s8, $a0, .LBB4_16
# %bb.14:                               # %.preheader145
                                        #   in Loop: Header=BB4_9 Depth=2
	move	$s6, $zero
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	fmov.d	$fa4, $fs1
	.p2align	4, , 16
.LBB4_15:                               # %.preheader142
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vst	$vr4, $sp, 240                  # 16-byte Folded Spill
	ld.w	$a0, $s2, -4
	ld.w	$a1, $s2, 0
	sub.w	$a4, $a1, $a0
	alsl.w	$a1, $a0, $a0, 1
	fld.s	$fa0, $s5, 0
	add.d	$s8, $s3, $s6
	fld.d	$fa1, $s8, 176
	alsl.d	$a0, $a1, $s4, 3
	alsl.d	$a1, $a1, $s7, 3
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(find_scalefac)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 944
	add.d	$a2, $sp, $a0
	add.d	$s0, $a2, $s6
	ld.w	$a0, $s2, -4
	ld.w	$a1, $s2, 0
	fstx.d	$fa0, $a2, $s6
	vld	$vr1, $sp, 240                  # 16-byte Folded Reload
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fsel	$fs0, $fa1, $fa0, $fcc0
	sub.w	$a4, $a1, $a0
	alsl.w	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 3
	addi.d	$a1, $a0, 8
	fld.s	$fa0, $s5, 0
	fld.d	$fa1, $s8, 184
	add.d	$a0, $s4, $a1
	add.d	$a1, $s7, $a1
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(find_scalefac)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, -4
	ld.w	$a1, $s2, 0
	fst.d	$fa0, $s0, 8
	fcmp.clt.d	$fcc0, $fs0, $fa0
	fsel	$fs0, $fs0, $fa0, $fcc0
	sub.w	$a4, $a1, $a0
	alsl.w	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 3
	addi.d	$a1, $a0, 16
	fld.s	$fa0, $s5, 0
	fld.d	$fa1, $s8, 192
	add.d	$a0, $s4, $a1
	add.d	$a1, $s7, $a1
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(find_scalefac)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $s0, 16
	fcmp.clt.d	$fcc0, $fs0, $fa0
	fsel	$fa4, $fs0, $fa0, $fcc0
	addi.d	$s6, $s6, 24
	addi.d	$s2, $s2, 4
	ori	$a0, $zero, 288
	bne	$s6, $a0, .LBB4_15
	b	.LBB4_18
	.p2align	4, , 16
.LBB4_16:                               # %.preheader146.preheader
                                        #   in Loop: Header=BB4_9 Depth=2
	move	$s0, $zero
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$s2, $a0, 4
	movgr2fr.d	$fa4, $zero
	.p2align	4, , 16
.LBB4_17:                               # %.preheader146
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vst	$vr4, $sp, 240                  # 16-byte Folded Spill
	ld.w	$a0, $s2, 0
	ld.w	$a1, $s2, -4
	sub.w	$a4, $a0, $a1
	fld.s	$fa0, $s5, 0
	fldx.d	$fa1, $s3, $s0
	alsl.d	$a0, $a1, $s4, 3
	alsl.d	$a1, $a1, $s7, 3
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(find_scalefac)
	jirl	$ra, $ra, 0
	vld	$vr4, $sp, 240                  # 16-byte Folded Reload
	lu12i.w	$a0, 1
	ori	$a0, $a0, 768
	add.d	$a0, $sp, $a0
	fstx.d	$fa0, $s0, $a0
	fcmp.clt.d	$fcc0, $fa4, $fa0
	fsel	$fa4, $fa4, $fa0, $fcc0
	addi.d	$s0, $s0, 8
	addi.d	$s2, $s2, 4
	ori	$a0, $zero, 168
	bne	$s0, $a0, .LBB4_17
.LBB4_18:                               # %.loopexit
                                        #   in Loop: Header=BB4_9 Depth=2
	pcalau12i	$a0, %pc_hi20(.LCPI4_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI4_1)
	vldi	$vr1, -1008
	fmadd.d	$fa0, $fa4, $fa1, $fa0
	vldi	$vr1, -928
	fadd.d	$fa0, $fa0, $fa1
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	ld.d	$s0, $sp, 224                   # 8-byte Folded Reload
	st.w	$a0, $s0, 12
	ori	$a0, $zero, 244
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	mul.d	$a0, $s6, $a0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ori	$a2, $zero, 488
	mul.d	$a1, $a1, $a2
	ori	$a2, $zero, 2
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	bne	$a3, $a2, .LBB4_21
# %bb.19:                               # %.preheader.i.peel.next213
                                        #   in Loop: Header=BB4_9 Depth=2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 960
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 944
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vreplvei.d	$vr0, $vr4, 0
	vfsub.d	$vr1, $vr1, $vr0
	vfsub.d	$vr2, $vr2, $vr0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 992
	add.d	$a2, $sp, $a2
	vld	$vr3, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 976
	add.d	$a2, $sp, $a2
	vld	$vr4, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 944
	add.d	$a2, $sp, $a2
	vst	$vr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 960
	add.d	$a2, $sp, $a2
	vst	$vr1, $a2, 0
	vfsub.d	$vr1, $vr3, $vr0
	vfsub.d	$vr2, $vr4, $vr0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1024
	add.d	$a2, $sp, $a2
	vld	$vr3, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1008
	add.d	$a2, $sp, $a2
	vld	$vr4, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 976
	add.d	$a2, $sp, $a2
	vst	$vr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 992
	add.d	$a2, $sp, $a2
	vst	$vr1, $a2, 0
	vfsub.d	$vr1, $vr3, $vr0
	vfsub.d	$vr2, $vr4, $vr0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1056
	add.d	$a2, $sp, $a2
	vld	$vr3, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1040
	add.d	$a2, $sp, $a2
	vld	$vr4, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1008
	add.d	$a2, $sp, $a2
	vst	$vr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1024
	add.d	$a2, $sp, $a2
	vst	$vr1, $a2, 0
	vfsub.d	$vr1, $vr3, $vr0
	vfsub.d	$vr2, $vr4, $vr0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1088
	add.d	$a2, $sp, $a2
	vld	$vr3, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1072
	add.d	$a2, $sp, $a2
	vld	$vr4, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1040
	add.d	$a2, $sp, $a2
	vst	$vr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1056
	add.d	$a2, $sp, $a2
	vst	$vr1, $a2, 0
	vfsub.d	$vr1, $vr3, $vr0
	vfsub.d	$vr2, $vr4, $vr0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1120
	add.d	$a2, $sp, $a2
	vld	$vr3, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1104
	add.d	$a2, $sp, $a2
	vld	$vr4, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1072
	add.d	$a2, $sp, $a2
	vst	$vr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1088
	add.d	$a2, $sp, $a2
	vst	$vr1, $a2, 0
	vfsub.d	$vr1, $vr3, $vr0
	vfsub.d	$vr2, $vr4, $vr0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1152
	add.d	$a2, $sp, $a2
	vld	$vr3, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1136
	add.d	$a2, $sp, $a2
	vld	$vr4, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1104
	add.d	$a2, $sp, $a2
	vst	$vr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1120
	add.d	$a2, $sp, $a2
	vst	$vr1, $a2, 0
	vfsub.d	$vr1, $vr3, $vr0
	vfsub.d	$vr2, $vr4, $vr0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1184
	add.d	$a2, $sp, $a2
	vld	$vr3, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1168
	add.d	$a2, $sp, $a2
	vld	$vr4, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1136
	add.d	$a2, $sp, $a2
	vst	$vr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1152
	add.d	$a2, $sp, $a2
	vst	$vr1, $a2, 0
	vfsub.d	$vr1, $vr3, $vr0
	vfsub.d	$vr2, $vr4, $vr0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1216
	add.d	$a2, $sp, $a2
	vld	$vr3, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1200
	add.d	$a2, $sp, $a2
	vld	$vr4, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1168
	add.d	$a2, $sp, $a2
	vst	$vr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1184
	add.d	$a2, $sp, $a2
	vst	$vr1, $a2, 0
	vfsub.d	$vr1, $vr3, $vr0
	vfsub.d	$vr0, $vr4, $vr0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1200
	add.d	$a2, $sp, $a2
	vst	$vr0, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1216
	add.d	$a2, $sp, $a2
	vst	$vr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 944
	add.d	$a2, $sp, $a2
	fld.d	$ft9, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 952
	add.d	$a2, $sp, $a2
	fld.d	$ft10, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 960
	add.d	$a2, $sp, $a2
	fld.d	$ft8, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 968
	add.d	$a2, $sp, $a2
	fld.d	$ft7, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 976
	add.d	$a2, $sp, $a2
	fld.d	$ft6, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 984
	add.d	$a2, $sp, $a2
	fld.d	$ft5, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 992
	add.d	$a2, $sp, $a2
	fld.d	$ft4, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1000
	add.d	$a2, $sp, $a2
	fld.d	$ft3, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1008
	add.d	$a2, $sp, $a2
	fld.d	$ft1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1016
	add.d	$a2, $sp, $a2
	fld.d	$ft0, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1024
	add.d	$a2, $sp, $a2
	fld.d	$fa7, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1032
	add.d	$a2, $sp, $a2
	fld.d	$fa6, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1040
	add.d	$a2, $sp, $a2
	fld.d	$fa5, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1048
	add.d	$a2, $sp, $a2
	fld.d	$fa4, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1056
	add.d	$a2, $sp, $a2
	fld.d	$fa3, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1064
	add.d	$a2, $sp, $a2
	fld.d	$fa2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1072
	add.d	$a2, $sp, $a2
	fld.d	$fa1, $a2, 0
	pcalau12i	$a2, %pc_hi20(.LCPI4_2)
	fld.d	$ft12, $a2, %pc_lo12(.LCPI4_2)
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1080
	add.d	$a2, $sp, $a2
	fld.d	$ft2, $a2, 0
	fneg.d	$ft11, $ft9
	vldi	$vr0, -920
	vldi	$vr21, -1024
	fmadd.d	$ft11, $ft11, $ft13, $fa0
	fadd.d	$ft11, $ft11, $ft12
	vreplvei.d	$vr19, $vr19, 0
	vfrintrm.d	$vr19, $vr19
	ftintrz.w.d	$ft11, $ft11
	movfr2gr.s	$t8, $ft11
	fneg.d	$ft11, $ft10
	fmadd.d	$ft11, $ft11, $ft13, $fa0
	fadd.d	$ft11, $ft11, $ft12
	vreplvei.d	$vr19, $vr19, 0
	vfrintrm.d	$vr19, $vr19
	ftintrz.w.d	$ft11, $ft11
	movfr2gr.s	$t6, $ft11
	fneg.d	$ft11, $ft8
	fmadd.d	$ft11, $ft11, $ft13, $fa0
	fadd.d	$ft11, $ft11, $ft12
	vreplvei.d	$vr19, $vr19, 0
	vfrintrm.d	$vr19, $vr19
	ftintrz.w.d	$ft11, $ft11
	movfr2gr.s	$t5, $ft11
	fneg.d	$ft11, $ft7
	fmadd.d	$ft11, $ft11, $ft13, $fa0
	fadd.d	$ft11, $ft11, $ft12
	vreplvei.d	$vr19, $vr19, 0
	vfrintrm.d	$vr19, $vr19
	ftintrz.w.d	$ft11, $ft11
	movfr2gr.s	$t3, $ft11
	fneg.d	$ft11, $ft6
	fmadd.d	$ft11, $ft11, $ft13, $fa0
	fadd.d	$ft11, $ft11, $ft12
	vreplvei.d	$vr19, $vr19, 0
	vfrintrm.d	$vr19, $vr19
	ftintrz.w.d	$ft11, $ft11
	movfr2gr.s	$t2, $ft11
	fneg.d	$ft11, $ft5
	fmadd.d	$ft11, $ft11, $ft13, $fa0
	fadd.d	$ft11, $ft11, $ft12
	vreplvei.d	$vr19, $vr19, 0
	vfrintrm.d	$vr19, $vr19
	ftintrz.w.d	$ft11, $ft11
	movfr2gr.s	$s2, $ft11
	fneg.d	$ft11, $ft4
	fmadd.d	$ft11, $ft11, $ft13, $fa0
	fadd.d	$ft11, $ft11, $ft12
	vreplvei.d	$vr19, $vr19, 0
	vfrintrm.d	$vr19, $vr19
	ftintrz.w.d	$ft11, $ft11
	movfr2gr.s	$s8, $ft11
	fneg.d	$ft11, $ft3
	fmadd.d	$ft11, $ft11, $ft13, $fa0
	fadd.d	$ft11, $ft11, $ft12
	vreplvei.d	$vr19, $vr19, 0
	vfrintrm.d	$vr19, $vr19
	ftintrz.w.d	$ft11, $ft11
	movfr2gr.s	$a2, $ft11
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	fneg.d	$ft11, $ft1
	fmadd.d	$ft11, $ft11, $ft13, $fa0
	fadd.d	$ft11, $ft11, $ft12
	vreplvei.d	$vr19, $vr19, 0
	vfrintrm.d	$vr19, $vr19
	ftintrz.w.d	$ft11, $ft11
	movfr2gr.s	$t7, $ft11
	fneg.d	$ft11, $ft0
	fmadd.d	$ft11, $ft11, $ft13, $fa0
	fadd.d	$ft11, $ft11, $ft12
	vreplvei.d	$vr19, $vr19, 0
	vfrintrm.d	$vr19, $vr19
	ftintrz.w.d	$ft11, $ft11
	movfr2gr.s	$a2, $ft11
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	fneg.d	$ft11, $fa7
	fmadd.d	$ft11, $ft11, $ft13, $fa0
	fadd.d	$ft11, $ft11, $ft12
	vreplvei.d	$vr19, $vr19, 0
	vfrintrm.d	$vr19, $vr19
	ftintrz.w.d	$ft11, $ft11
	movfr2gr.s	$a2, $ft11
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	fneg.d	$ft11, $fa6
	fmadd.d	$ft11, $ft11, $ft13, $fa0
	fadd.d	$ft11, $ft11, $ft12
	vreplvei.d	$vr19, $vr19, 0
	vfrintrm.d	$vr19, $vr19
	ftintrz.w.d	$ft11, $ft11
	movfr2gr.s	$a2, $ft11
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	fneg.d	$ft11, $fa5
	fmadd.d	$ft11, $ft11, $ft13, $fa0
	fadd.d	$ft11, $ft11, $ft12
	vreplvei.d	$vr19, $vr19, 0
	vfrintrm.d	$vr19, $vr19
	ftintrz.w.d	$ft11, $ft11
	movfr2gr.s	$a2, $ft11
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	fneg.d	$ft11, $fa4
	fmadd.d	$ft11, $ft11, $ft13, $fa0
	fadd.d	$ft11, $ft11, $ft12
	vreplvei.d	$vr19, $vr19, 0
	vfrintrm.d	$vr19, $vr19
	ftintrz.w.d	$ft11, $ft11
	movfr2gr.s	$a2, $ft11
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	fneg.d	$ft11, $fa3
	fmadd.d	$ft11, $ft11, $ft13, $fa0
	fadd.d	$ft11, $ft11, $ft12
	vreplvei.d	$vr19, $vr19, 0
	vfrintrm.d	$vr19, $vr19
	ftintrz.w.d	$ft11, $ft11
	movfr2gr.s	$a2, $ft11
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	fneg.d	$ft11, $fa2
	fmadd.d	$ft11, $ft11, $ft13, $fa0
	fadd.d	$ft11, $ft11, $ft12
	vreplvei.d	$vr19, $vr19, 0
	vfrintrm.d	$vr19, $vr19
	ftintrz.w.d	$ft11, $ft11
	movfr2gr.s	$s4, $ft11
	fneg.d	$ft11, $fa1
	fmadd.d	$ft11, $ft11, $ft13, $fa0
	fadd.d	$ft11, $ft11, $ft12
	vreplvei.d	$vr19, $vr19, 0
	vfrintrm.d	$vr19, $vr19
	ftintrz.w.d	$ft11, $ft11
	movfr2gr.s	$ra, $ft11
	fneg.d	$ft11, $ft2
	fmadd.d	$ft11, $ft11, $ft13, $fa0
	fadd.d	$ft11, $ft11, $ft12
	vreplvei.d	$vr19, $vr19, 0
	vfrintrm.d	$vr19, $vr19
	ftintrz.w.d	$ft11, $ft11
	movfr2gr.s	$t4, $ft11
	vldi	$vr19, -994
	fadd.d	$ft10, $ft10, $ft11
	fadd.d	$ft9, $ft9, $ft11
	fmax.d	$ft9, $ft9, $fs1
	fcmp.clt.d	$fcc0, $ft9, $ft10
	fsel	$ft9, $ft9, $ft10, $fcc0
	fadd.d	$ft8, $ft8, $ft11
	fcmp.clt.d	$fcc0, $ft9, $ft8
	fsel	$ft8, $ft9, $ft8, $fcc0
	fadd.d	$ft7, $ft7, $ft11
	fcmp.clt.d	$fcc0, $ft8, $ft7
	fsel	$ft7, $ft8, $ft7, $fcc0
	fadd.d	$ft6, $ft6, $ft11
	fcmp.clt.d	$fcc0, $ft7, $ft6
	fsel	$ft6, $ft7, $ft6, $fcc0
	fadd.d	$ft5, $ft5, $ft11
	fcmp.clt.d	$fcc0, $ft6, $ft5
	fsel	$ft5, $ft6, $ft5, $fcc0
	fadd.d	$ft4, $ft4, $ft11
	fcmp.clt.d	$fcc0, $ft5, $ft4
	fsel	$ft4, $ft5, $ft4, $fcc0
	fadd.d	$ft3, $ft3, $ft11
	fcmp.clt.d	$fcc0, $ft4, $ft3
	fsel	$ft3, $ft4, $ft3, $fcc0
	fadd.d	$ft1, $ft1, $ft11
	fcmp.clt.d	$fcc0, $ft3, $ft1
	fsel	$ft1, $ft3, $ft1, $fcc0
	fadd.d	$ft0, $ft0, $ft11
	fcmp.clt.d	$fcc0, $ft1, $ft0
	fsel	$ft0, $ft1, $ft0, $fcc0
	fadd.d	$fa7, $fa7, $ft11
	fcmp.clt.d	$fcc0, $ft0, $fa7
	fsel	$fa7, $ft0, $fa7, $fcc0
	fadd.d	$fa6, $fa6, $ft11
	fcmp.clt.d	$fcc0, $fa7, $fa6
	fsel	$fa6, $fa7, $fa6, $fcc0
	fadd.d	$fa5, $fa5, $ft11
	fcmp.clt.d	$fcc0, $fa6, $fa5
	fsel	$fa5, $fa6, $fa5, $fcc0
	fadd.d	$fa4, $fa4, $ft11
	fcmp.clt.d	$fcc0, $fa5, $fa4
	fsel	$fa4, $fa5, $fa4, $fcc0
	fadd.d	$fa3, $fa3, $ft11
	fcmp.clt.d	$fcc0, $fa4, $fa3
	fsel	$fa3, $fa4, $fa3, $fcc0
	fadd.d	$fa2, $fa2, $ft11
	fcmp.clt.d	$fcc0, $fa3, $fa2
	fsel	$fa2, $fa3, $fa2, $fcc0
	st.w	$zero, $s0, 68
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	add.d	$a0, $a1, $a0
	fadd.d	$fa1, $fa1, $ft11
	fcmp.clt.d	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1088
	add.d	$a1, $sp, $a1
	fld.d	$fa2, $a1, 0
	fadd.d	$fa3, $ft2, $ft11
	fcmp.clt.d	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa1, $fa3, $fcc0
	fneg.d	$fa3, $fa2
	fmadd.d	$fa3, $fa3, $ft13, $fa0
	fadd.d	$fa3, $fa3, $ft12
	vreplvei.d	$vr3, $vr3, 0
	vfrintrm.d	$vr3, $vr3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t1, $fa3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1096
	add.d	$a1, $sp, $a1
	fld.d	$fa3, $a1, 0
	vldi	$vr4, -1012
	fadd.d	$fa2, $fa2, $fa4
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fneg.d	$fa2, $fa3
	fmadd.d	$fa2, $fa2, $ft13, $fa0
	fadd.d	$fa2, $fa2, $ft12
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t0, $fa2
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1104
	add.d	$a1, $sp, $a1
	fld.d	$fa2, $a1, 0
	fadd.d	$fa3, $fa3, $fa4
	fcmp.clt.d	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa1, $fa3, $fcc0
	fneg.d	$fa3, $fa2
	fmadd.d	$fa3, $fa3, $ft13, $fa0
	fadd.d	$fa3, $fa3, $ft12
	vreplvei.d	$vr3, $vr3, 0
	vfrintrm.d	$vr3, $vr3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a7, $fa3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1112
	add.d	$a1, $sp, $a1
	fld.d	$fa3, $a1, 0
	fadd.d	$fa2, $fa2, $fa4
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fneg.d	$fa2, $fa3
	fmadd.d	$fa2, $fa2, $ft13, $fa0
	fadd.d	$fa2, $fa2, $ft12
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$s0, $fa2
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1120
	add.d	$a1, $sp, $a1
	fld.d	$fa2, $a1, 0
	fadd.d	$fa3, $fa3, $fa4
	fcmp.clt.d	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa1, $fa3, $fcc0
	fneg.d	$fa3, $fa2
	fmadd.d	$fa3, $fa3, $ft13, $fa0
	fadd.d	$fa3, $fa3, $ft12
	vreplvei.d	$vr3, $vr3, 0
	vfrintrm.d	$vr3, $vr3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a6, $fa3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1128
	add.d	$a1, $sp, $a1
	fld.d	$fa3, $a1, 0
	fadd.d	$fa2, $fa2, $fa4
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fneg.d	$fa2, $fa3
	fmadd.d	$fa2, $fa2, $ft13, $fa0
	fadd.d	$fa2, $fa2, $ft12
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a5, $fa2
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1136
	add.d	$a1, $sp, $a1
	fld.d	$fa2, $a1, 0
	fadd.d	$fa3, $fa3, $fa4
	fcmp.clt.d	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa1, $fa3, $fcc0
	fneg.d	$fa3, $fa2
	fmadd.d	$fa3, $fa3, $ft13, $fa0
	fadd.d	$fa3, $fa3, $ft12
	vreplvei.d	$vr3, $vr3, 0
	vfrintrm.d	$vr3, $vr3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$s6, $fa3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1144
	add.d	$a1, $sp, $a1
	fld.d	$fa3, $a1, 0
	fadd.d	$fa2, $fa2, $fa4
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fneg.d	$fa2, $fa3
	fmadd.d	$fa2, $fa2, $ft13, $fa0
	fadd.d	$fa2, $fa2, $ft12
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a4, $fa2
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1152
	add.d	$a1, $sp, $a1
	fld.d	$fa2, $a1, 0
	fadd.d	$fa3, $fa3, $fa4
	fcmp.clt.d	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa1, $fa3, $fcc0
	fneg.d	$fa3, $fa2
	fmadd.d	$fa3, $fa3, $ft13, $fa0
	fadd.d	$fa3, $fa3, $ft12
	vreplvei.d	$vr3, $vr3, 0
	vfrintrm.d	$vr3, $vr3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a3, $fa3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1160
	add.d	$a1, $sp, $a1
	fld.d	$fa3, $a1, 0
	st.w	$t8, $a0, 88
	fadd.d	$fa2, $fa2, $fa4
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fneg.d	$fa2, $fa3
	fmadd.d	$fa2, $fa2, $ft13, $fa0
	fadd.d	$fa2, $fa2, $ft12
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t8, $fa2
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1168
	add.d	$a1, $sp, $a1
	fld.d	$fa2, $a1, 0
	st.w	$t6, $a0, 92
	fadd.d	$fa3, $fa3, $fa4
	fcmp.clt.d	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa1, $fa3, $fcc0
	fneg.d	$fa3, $fa2
	fmadd.d	$fa3, $fa3, $ft13, $fa0
	fadd.d	$fa3, $fa3, $ft12
	vreplvei.d	$vr3, $vr3, 0
	vfrintrm.d	$vr3, $vr3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t6, $fa3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1176
	add.d	$a1, $sp, $a1
	fld.d	$fa3, $a1, 0
	st.w	$t5, $a0, 96
	fadd.d	$fa2, $fa2, $fa4
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fneg.d	$fa2, $fa3
	fmadd.d	$fa2, $fa2, $ft13, $fa0
	fadd.d	$fa2, $fa2, $ft12
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t5, $fa2
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1184
	add.d	$a1, $sp, $a1
	fld.d	$fa2, $a1, 0
	st.w	$t3, $a0, 100
	fadd.d	$fa3, $fa3, $fa4
	fcmp.clt.d	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa1, $fa3, $fcc0
	fneg.d	$fa3, $fa2
	fmadd.d	$fa3, $fa3, $ft13, $fa0
	fadd.d	$fa3, $fa3, $ft12
	vreplvei.d	$vr3, $vr3, 0
	vfrintrm.d	$vr3, $vr3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t3, $fa3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1192
	add.d	$a1, $sp, $a1
	fld.d	$fa3, $a1, 0
	st.w	$t2, $a0, 104
	fadd.d	$fa2, $fa2, $fa4
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fneg.d	$fa2, $fa3
	fmadd.d	$fa2, $fa2, $ft13, $fa0
	fadd.d	$fa2, $fa2, $ft12
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t2, $fa2
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1200
	add.d	$a1, $sp, $a1
	fld.d	$fa2, $a1, 0
	st.w	$s2, $a0, 108
	fadd.d	$fa3, $fa3, $fa4
	fcmp.clt.d	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa1, $fa3, $fcc0
	fneg.d	$fa3, $fa2
	fmadd.d	$fa3, $fa3, $ft13, $fa0
	fadd.d	$fa3, $fa3, $ft12
	vreplvei.d	$vr3, $vr3, 0
	vfrintrm.d	$vr3, $vr3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$s2, $fa3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1208
	add.d	$a1, $sp, $a1
	fld.d	$fa3, $a1, 0
	st.w	$s8, $a0, 112
	fadd.d	$fa2, $fa2, $fa4
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fneg.d	$fa2, $fa3
	fmadd.d	$fa2, $fa2, $ft13, $fa0
	fadd.d	$fa2, $fa2, $ft12
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$s8, $fa2
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1216
	add.d	$a1, $sp, $a1
	fld.d	$fa2, $a1, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.w	$a1, $a0, 116
	fadd.d	$fa3, $fa3, $fa4
	fcmp.clt.d	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa1, $fa3, $fcc0
	fneg.d	$fa3, $fa2
	fmadd.d	$fa3, $fa3, $ft13, $fa0
	fadd.d	$fa3, $fa3, $ft12
	vreplvei.d	$vr3, $vr3, 0
	vfrintrm.d	$vr3, $vr3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a2, $fa3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1224
	add.d	$a1, $sp, $a1
	fld.d	$fa3, $a1, 0
	st.w	$t7, $a0, 120
	fadd.d	$fa2, $fa2, $fa4
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fneg.d	$fa2, $fa3
	fmadd.d	$fa2, $fa2, $ft13, $fa0
	fadd.d	$fa2, $fa2, $ft12
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a1, $fa2
	fadd.d	$fa2, $fa3, $fa4
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fcmp.cule.d	$fcc0, $fa1, $fs1
	ld.d	$t7, $sp, 240                   # 8-byte Folded Reload
	st.w	$t7, $a0, 124
	ld.d	$t7, $sp, 216                   # 8-byte Folded Reload
	st.w	$t7, $a0, 128
	ld.d	$t7, $sp, 136                   # 8-byte Folded Reload
	st.w	$t7, $a0, 132
	ld.d	$t7, $sp, 128                   # 8-byte Folded Reload
	st.w	$t7, $a0, 136
	ld.d	$t7, $sp, 120                   # 8-byte Folded Reload
	st.w	$t7, $a0, 140
	ld.d	$t7, $sp, 112                   # 8-byte Folded Reload
	st.w	$t7, $a0, 144
	st.w	$s4, $a0, 148
	st.w	$ra, $a0, 152
	st.w	$t4, $a0, 156
	st.w	$t1, $a0, 160
	st.w	$t0, $a0, 164
	st.w	$a7, $a0, 168
	st.w	$s0, $a0, 172
	st.w	$a6, $a0, 176
	st.w	$a5, $a0, 180
	st.w	$s6, $a0, 184
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	st.w	$a4, $a0, 188
	st.w	$a3, $a0, 192
	st.w	$t8, $a0, 196
	st.w	$t6, $a0, 200
	st.w	$t5, $a0, 204
	st.w	$t3, $a0, 208
	st.w	$t2, $a0, 212
	st.w	$s2, $a0, 216
	st.w	$s8, $a0, 220
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	st.w	$a2, $a0, 224
	st.w	$a1, $a0, 228
	bcnez	$fcc0, .LBB4_8
# %bb.20:                               # %.preheader.i131.peel.next255
                                        #   in Loop: Header=BB4_9 Depth=2
	lu12i.w	$a1, 1
	ori	$a1, $a1, 944
	add.d	$a1, $sp, $a1
	fld.d	$fs1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 952
	add.d	$a1, $sp, $a1
	fld.d	$fa1, $a1, 0
	fst.d	$fa1, $sp, 80                   # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 960
	add.d	$a1, $sp, $a1
	fld.d	$fs7, $a1, 0
	fst.d	$fs7, $sp, 88                   # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 968
	add.d	$a1, $sp, $a1
	fld.d	$fs0, $a1, 0
	fst.d	$fs0, $sp, 112                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 976
	add.d	$a1, $sp, $a1
	fld.d	$fs6, $a1, 0
	fst.d	$fs6, $sp, 120                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 984
	add.d	$a1, $sp, $a1
	fld.d	$ft5, $a1, 0
	fst.d	$ft5, $sp, 128                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 992
	add.d	$a1, $sp, $a1
	fld.d	$ft6, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1000
	add.d	$a1, $sp, $a1
	fld.d	$ft4, $a1, 0
	fst.d	$ft4, $sp, 136                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1008
	add.d	$a1, $sp, $a1
	fld.d	$ft3, $a1, 0
	fst.d	$ft3, $sp, 144                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1016
	add.d	$a1, $sp, $a1
	fld.d	$fa3, $a1, 0
	fst.d	$fa3, $sp, 216                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1024
	add.d	$a1, $sp, $a1
	fld.d	$fs5, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1032
	add.d	$a1, $sp, $a1
	fld.d	$fs4, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1040
	add.d	$a1, $sp, $a1
	fld.d	$fs3, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1048
	add.d	$a1, $sp, $a1
	fld.d	$fs2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1056
	add.d	$a1, $sp, $a1
	fld.d	$ft15, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1064
	add.d	$a1, $sp, $a1
	fld.d	$ft14, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1072
	add.d	$a1, $sp, $a1
	fld.d	$ft13, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1080
	add.d	$a1, $sp, $a1
	fld.d	$ft11, $a1, 0
	fst.d	$ft11, $sp, 240                 # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1088
	add.d	$a1, $sp, $a1
	fld.d	$ft10, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1096
	add.d	$a1, $sp, $a1
	fld.d	$ft9, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1104
	add.d	$a1, $sp, $a1
	fld.d	$ft8, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1112
	add.d	$a1, $sp, $a1
	fld.d	$ft7, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1120
	add.d	$a1, $sp, $a1
	fld.d	$ft2, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1128
	add.d	$a1, $sp, $a1
	fld.d	$ft1, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1136
	add.d	$a1, $sp, $a1
	fld.d	$fa7, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1144
	add.d	$a1, $sp, $a1
	fld.d	$fa6, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1152
	add.d	$a1, $sp, $a1
	fld.d	$fa5, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1160
	add.d	$a1, $sp, $a1
	fld.d	$fa4, $a1, 0
	vldi	$vr0, -978
	fadd.d	$fa1, $fa1, $fa0
	fadd.d	$fa2, $fs1, $fa0
	movgr2fr.d	$ft0, $zero
	fmax.d	$fa2, $fa2, $ft0
	fcmp.clt.d	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fadd.d	$fa2, $fs7, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fadd.d	$fa2, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fadd.d	$fa2, $fs6, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fadd.d	$fa2, $ft5, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fadd.d	$fa2, $ft6, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fadd.d	$fa2, $ft4, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fadd.d	$fa2, $ft3, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fadd.d	$fa2, $fa3, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fadd.d	$fa2, $fs5, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fadd.d	$fa2, $fs4, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fadd.d	$fa2, $fs3, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fadd.d	$fa2, $fs2, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fadd.d	$fa2, $ft15, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fadd.d	$fa2, $ft14, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fadd.d	$fa2, $ft13, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fadd.d	$fa2, $ft11, $fa0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	vldi	$vr3, -996
	fadd.d	$fa2, $ft10, $fa3
	fmov.d	$ft11, $ft10
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fadd.d	$fa2, $ft9, $fa3
	fmov.d	$ft10, $ft9
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fadd.d	$fa2, $ft8, $fa3
	fmov.d	$ft9, $ft8
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fadd.d	$fa2, $ft7, $fa3
	fmov.d	$ft8, $ft7
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fadd.d	$fa2, $ft2, $fa3
	fmov.d	$ft7, $ft2
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fadd.d	$fa2, $ft1, $fa3
	fmov.d	$ft5, $ft1
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fadd.d	$fa2, $fa7, $fa3
	fmov.d	$ft4, $fa7
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fadd.d	$fa2, $fa6, $fa3
	fmov.d	$ft3, $fa6
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fadd.d	$fa2, $fa5, $fa3
	fmov.d	$ft2, $fa5
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1168
	add.d	$a1, $sp, $a1
	fld.d	$fs6, $a1, 0
	fadd.d	$fa2, $fa4, $fa3
	fmov.d	$ft1, $fa4
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1176
	add.d	$a1, $sp, $a1
	fld.d	$fs7, $a1, 0
	fadd.d	$fa2, $fs6, $fa3
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1184
	add.d	$a1, $sp, $a1
	fld.d	$fs0, $a1, 0
	fadd.d	$fa2, $fs7, $fa3
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1192
	add.d	$a1, $sp, $a1
	fld.d	$fa7, $a1, 0
	fadd.d	$fa2, $fs0, $fa3
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1200
	add.d	$a1, $sp, $a1
	fld.d	$fa6, $a1, 0
	fadd.d	$fa2, $fa7, $fa3
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1208
	add.d	$a1, $sp, $a1
	fld.d	$fa5, $a1, 0
	fadd.d	$fa2, $fa6, $fa3
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1216
	add.d	$a1, $sp, $a1
	fld.d	$fa4, $a1, 0
	fadd.d	$fa0, $fa5, $fa3
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fsel	$fa1, $fa1, $fa0, $fcc0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1224
	add.d	$a1, $sp, $a1
	fld.d	$fa2, $a1, 0
	fadd.d	$fa0, $fa4, $fa3
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fsel	$fa0, $fa1, $fa0, $fcc0
	fadd.d	$fa1, $fa2, $fa3
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	fcmp.cule.d	$fcc0, $fa0, $ft0
	vldi	$vr1, -920
	fsub.d	$fa0, $fa1, $fs1
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$t3, $fa0
	fld.d	$fa0, $sp, 80                   # 8-byte Folded Reload
	fsub.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$t2, $fa0
	fld.d	$fa0, $sp, 88                   # 8-byte Folded Reload
	fsub.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$t1, $fa0
	fld.d	$fa0, $sp, 112                  # 8-byte Folded Reload
	fsub.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$t0, $fa0
	fld.d	$fa0, $sp, 120                  # 8-byte Folded Reload
	fsub.d	$fa0, $fa1, $fa0
	fld.d	$fs1, $sp, 72                   # 8-byte Folded Reload
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s8, $fa0
	fld.d	$fa0, $sp, 128                  # 8-byte Folded Reload
	fsub.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a4, $fa0
	fsub.d	$fa0, $fa1, $ft6
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$t7, $fa0
	fld.d	$fa0, $sp, 136                  # 8-byte Folded Reload
	fsub.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	fld.d	$fa0, $sp, 144                  # 8-byte Folded Reload
	fsub.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	fld.d	$fa0, $sp, 216                  # 8-byte Folded Reload
	fsub.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	fsub.d	$fa0, $fa1, $fs5
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	fsub.d	$fa0, $fa1, $fs4
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	fsub.d	$fa0, $fa1, $fs3
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	fsub.d	$fa0, $fa1, $fs2
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	fsub.d	$fa0, $fa1, $ft15
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	fsub.d	$fa0, $fa1, $ft14
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$t8, $fa0
	fsub.d	$fa0, $fa1, $ft13
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s0, $fa0
	fld.d	$fa0, $sp, 240                  # 8-byte Folded Reload
	fsub.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s4, $fa0
	fsub.d	$fa0, $fa1, $ft11
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s6, $fa0
	fsub.d	$fa0, $fa1, $ft10
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$ra, $fa0
	fsub.d	$fa0, $fa1, $ft9
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$t6, $fa0
	fsub.d	$fa0, $fa1, $ft8
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$t5, $fa0
	fsub.d	$fa0, $fa1, $ft7
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s2, $fa0
	fsub.d	$fa0, $fa1, $ft5
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$t4, $fa0
	fsub.d	$fa0, $fa1, $ft4
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a7, $fa0
	fsub.d	$fa0, $fa1, $ft3
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a6, $fa0
	ori	$a1, $zero, 1
	st.w	$a1, $a3, 68
	fsub.d	$fa0, $fa1, $ft2
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a5, $fa0
	addi.d	$a0, $a0, 88
	st.w	$t3, $a0, 0
	fsub.d	$fa0, $fa1, $ft1
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$t3, $fa0
	st.w	$t2, $a0, 4
	fsub.d	$fa0, $fa1, $fs6
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$t2, $fa0
	st.w	$t1, $a0, 8
	fsub.d	$fa0, $fa1, $fs7
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$t1, $fa0
	st.w	$t0, $a0, 12
	fsub.d	$fa0, $fa1, $fs0
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$t0, $fa0
	st.w	$s8, $a0, 16
	fsub.d	$fa0, $fa1, $fa7
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s8, $fa0
	st.w	$a4, $a0, 20
	fsub.d	$fa0, $fa1, $fa6
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a4, $fa0
	st.w	$t7, $a0, 24
	fsub.d	$fa0, $fa1, $fa5
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a3, $fa0
	st.w	$a2, $a0, 28
	fsub.d	$fa0, $fa1, $fa4
	fadd.d	$fa0, $fa0, $ft12
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	fsub.d	$fa0, $fa1, $fa2
	fadd.d	$fa0, $fa0, $ft12
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.w	$a1, $a0, 32
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	ld.d	$t7, $sp, 216                   # 8-byte Folded Reload
	st.w	$t7, $a0, 36
	ld.d	$t7, $sp, 136                   # 8-byte Folded Reload
	st.w	$t7, $a0, 40
	ld.d	$t7, $sp, 128                   # 8-byte Folded Reload
	st.w	$t7, $a0, 44
	ld.d	$t7, $sp, 120                   # 8-byte Folded Reload
	st.w	$t7, $a0, 48
	ld.d	$t7, $sp, 112                   # 8-byte Folded Reload
	st.w	$t7, $a0, 52
	ld.d	$t7, $sp, 88                    # 8-byte Folded Reload
	st.w	$t7, $a0, 56
	st.w	$t8, $a0, 60
	st.w	$s0, $a0, 64
	st.w	$s4, $a0, 68
	st.w	$s6, $a0, 72
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	st.w	$ra, $a0, 76
	st.w	$t6, $a0, 80
	st.w	$t5, $a0, 84
	st.w	$s2, $a0, 88
	st.w	$t4, $a0, 92
	st.w	$a7, $a0, 96
	st.w	$a6, $a0, 100
	st.w	$a5, $a0, 104
	st.w	$t3, $a0, 108
	st.w	$t2, $a0, 112
	st.w	$t1, $a0, 116
	st.w	$t0, $a0, 120
	st.w	$s8, $a0, 124
	st.w	$a4, $a0, 128
	st.w	$a3, $a0, 132
	st.w	$a2, $a0, 136
	st.w	$a1, $a0, 140
	bcnez	$fcc0, .LBB4_8
	b	.LBB4_23
	.p2align	4, , 16
.LBB4_21:                               # %.preheader144.preheader
                                        #   in Loop: Header=BB4_9 Depth=2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 768
	add.d	$a2, $sp, $a2
	vld	$vr0, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 784
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vreplvei.d	$vr2, $vr4, 0
	vfsub.d	$vr0, $vr0, $vr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 768
	add.d	$a2, $sp, $a2
	vst	$vr0, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 816
	add.d	$a2, $sp, $a2
	vld	$vr0, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 800
	add.d	$a2, $sp, $a2
	vld	$vr3, $a2, 0
	vfsub.d	$vr1, $vr1, $vr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 784
	add.d	$a2, $sp, $a2
	vst	$vr1, $a2, 0
	vfsub.d	$vr0, $vr0, $vr2
	vfsub.d	$vr1, $vr3, $vr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 832
	add.d	$a2, $sp, $a2
	vld	$vr3, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 800
	add.d	$a2, $sp, $a2
	vst	$vr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 816
	add.d	$a2, $sp, $a2
	vst	$vr0, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 848
	add.d	$a2, $sp, $a2
	vld	$vr0, $a2, 0
	vfsub.d	$vr1, $vr3, $vr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 832
	add.d	$a2, $sp, $a2
	vst	$vr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 880
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 864
	add.d	$a2, $sp, $a2
	vld	$vr3, $a2, 0
	vfsub.d	$vr0, $vr0, $vr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 848
	add.d	$a2, $sp, $a2
	vst	$vr0, $a2, 0
	vfsub.d	$vr0, $vr1, $vr2
	vfsub.d	$vr1, $vr3, $vr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 912
	add.d	$a2, $sp, $a2
	vld	$vr3, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 864
	add.d	$a2, $sp, $a2
	vst	$vr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 896
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 880
	add.d	$a2, $sp, $a2
	vst	$vr0, $a2, 0
	vfsub.d	$vr0, $vr3, $vr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 928
	add.d	$a2, $sp, $a2
	fld.d	$fa3, $a2, 0
	vfsub.d	$vr1, $vr1, $vr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 896
	add.d	$a2, $sp, $a2
	vst	$vr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 912
	add.d	$a2, $sp, $a2
	vst	$vr0, $a2, 0
	fsub.d	$fa0, $fa3, $fa4
	lu12i.w	$a2, 1
	ori	$a2, $a2, 928
	add.d	$a2, $sp, $a2
	fst.d	$fa0, $a2, 0
	st.w	$zero, $s0, 68
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	add.d	$s4, $a1, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 768
	add.d	$a0, $sp, $a0
	move	$a1, $s0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(compute_scalefacs_long)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fs0, $zero
	fcmp.clt.d	$fcc0, $fs0, $fa0
	bceqz	$fcc0, .LBB4_8
# %bb.22:                               #   in Loop: Header=BB4_9 Depth=2
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 68
	lu12i.w	$a0, 1
	ori	$a0, $a0, 768
	add.d	$a0, $sp, $a0
	move	$a1, $s0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(compute_scalefacs_long)
	jirl	$ra, $ra, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB4_8
.LBB4_23:
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB4_24:                               # %._crit_edge161
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1328
	add.d	$sp, $sp, $a0
	fld.d	$fs7, $sp, 1880                 # 8-byte Folded Reload
	fld.d	$fs6, $sp, 1888                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1896                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1904                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1912                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1920                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1928                 # 8-byte Folded Reload
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
.LBB4_25:                               # %cdce.call
	vldi	$vr0, -988
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	b	.LBB4_1
.Lfunc_end4:
	.size	VBR_iteration_loop_new, .Lfunc_end4-VBR_iteration_loop_new
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
