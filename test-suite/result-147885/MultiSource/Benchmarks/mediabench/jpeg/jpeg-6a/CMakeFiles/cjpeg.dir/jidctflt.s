	.file	"jidctflt.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function jpeg_idct_float
.LCPI0_0:
	.word	0x3fb504f3                      # float 1.41421354
.LCPI0_1:
	.word	0x3fec835e                      # float 1.84775901
.LCPI0_2:
	.word	0x3f8a8bd4                      # float 1.08239222
.LCPI0_3:
	.word	0xc0273d75                      # float -2.61312604
	.text
	.globl	jpeg_idct_float
	.p2align	5
	.type	jpeg_idct_float,@function
jpeg_idct_float:                        # @jpeg_idct_float
# %bb.0:
	addi.d	$sp, $sp, -272
	st.d	$fp, $sp, 264                   # 8-byte Folded Spill
	st.d	$s0, $sp, 256                   # 8-byte Folded Spill
	move	$a5, $zero
	ld.d	$a0, $a0, 408
	ld.d	$a1, $a1, 88
	addi.d	$a2, $a2, 64
	pcalau12i	$a6, %pc_hi20(.LCPI0_0)
	fld.s	$fa0, $a6, %pc_lo12(.LCPI0_0)
	pcalau12i	$a6, %pc_hi20(.LCPI0_1)
	fld.s	$fa1, $a6, %pc_lo12(.LCPI0_1)
	pcalau12i	$a6, %pc_hi20(.LCPI0_2)
	fld.s	$fa2, $a6, %pc_lo12(.LCPI0_2)
	pcalau12i	$a6, %pc_hi20(.LCPI0_3)
	fld.s	$fa3, $a6, %pc_lo12(.LCPI0_3)
	ori	$a6, $zero, 9
	addi.d	$a7, $sp, 0
	ori	$t0, $zero, 1
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_1:                                #   in Loop: Header=BB0_3 Depth=1
	add.d	$t6, $a1, $a5
	fld.s	$fa5, $t6, 64
	ext.w.h	$fp, $fp
	movgr2fr.w	$fa6, $fp
	ffint.s.w	$fa6, $fa6
	fmul.s	$fa5, $fa5, $fa6
	fld.s	$fa6, $t6, 128
	ext.w.h	$t8, $t8
	movgr2fr.w	$fa7, $t8
	ffint.s.w	$fa7, $fa7
	fmul.s	$fa6, $fa6, $fa7
	fld.s	$fa7, $t6, 192
	ext.w.h	$t7, $t7
	movgr2fr.w	$ft0, $t7
	ffint.s.w	$ft0, $ft0
	fmul.s	$fa7, $fa7, $ft0
	fadd.s	$ft0, $fa4, $fa6
	fsub.s	$fa4, $fa4, $fa6
	fadd.s	$fa6, $fa5, $fa7
	fsub.s	$fa5, $fa5, $fa7
	fmsub.s	$fa5, $fa5, $fa0, $fa6
	fadd.s	$fa7, $ft0, $fa6
	fsub.s	$ft0, $ft0, $fa6
	fadd.s	$fa6, $fa4, $fa5
	fsub.s	$fa4, $fa4, $fa5
	fld.s	$fa5, $t6, 32
	ext.w.h	$t5, $t5
	movgr2fr.w	$ft1, $t5
	ffint.s.w	$ft1, $ft1
	fmul.s	$fa5, $fa5, $ft1
	fld.s	$ft1, $t6, 96
	ext.w.h	$t4, $t4
	movgr2fr.w	$ft2, $t4
	ffint.s.w	$ft2, $ft2
	fmul.s	$ft1, $ft1, $ft2
	fld.s	$ft2, $t6, 160
	ext.w.h	$t3, $t3
	movgr2fr.w	$ft3, $t3
	ffint.s.w	$ft3, $ft3
	fmul.s	$ft2, $ft2, $ft3
	fld.s	$ft3, $t6, 224
	ext.w.h	$t2, $t2
	movgr2fr.w	$ft4, $t2
	ffint.s.w	$ft4, $ft4
	fmul.s	$ft3, $ft3, $ft4
	fadd.s	$ft4, $ft1, $ft2
	fsub.s	$ft1, $ft2, $ft1
	fadd.s	$ft2, $fa5, $ft3
	fsub.s	$fa5, $fa5, $ft3
	fadd.s	$ft3, $ft4, $ft2
	fsub.s	$ft2, $ft2, $ft4
	fmul.s	$ft2, $ft2, $fa0
	fadd.s	$ft4, $ft1, $fa5
	fmul.s	$ft4, $ft4, $fa1
	fmsub.s	$fa5, $fa5, $fa2, $ft4
	fmadd.s	$ft1, $ft1, $fa3, $ft4
	fsub.s	$ft1, $ft1, $ft3
	fsub.s	$ft2, $ft2, $ft1
	fadd.s	$ft4, $fa5, $ft2
	fadd.s	$fa5, $fa7, $ft3
	fstx.s	$fa5, $a5, $a7
	fsub.s	$fa5, $fa7, $ft3
	fadd.s	$fa7, $fa6, $ft1
	fst.s	$fa7, $t1, 32
	fsub.s	$fa6, $fa6, $ft1
	fadd.s	$fa7, $fa4, $ft2
	fst.s	$fa7, $t1, 64
	fsub.s	$fa7, $fa4, $ft2
	fadd.s	$fa4, $ft0, $ft4
	fst.s	$fa4, $t1, 128
	fsub.s	$fa4, $ft0, $ft4
	ori	$t2, $zero, 96
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	fstx.s	$fa4, $t1, $t2
	fst.s	$fa7, $t1, 160
	fst.s	$fa6, $t1, 192
	fst.s	$fa5, $t1, 224
	addi.w	$a6, $a6, -1
	addi.d	$a5, $a5, 4
	addi.d	$a2, $a2, 2
	bgeu	$t0, $a6, .LBB0_5
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	ld.hu	$t5, $a2, -48
	ld.hu	$fp, $a2, -32
	ld.hu	$t4, $a2, -16
	or	$t1, $fp, $t5
	ld.hu	$t8, $a2, 0
	or	$t1, $t1, $t4
	ld.hu	$t3, $a2, 16
	ld.hu	$t7, $a2, 32
	or	$t1, $t1, $t8
	ld.hu	$t2, $a2, 48
	or	$t1, $t1, $t3
	or	$t1, $t1, $t7
	ld.h	$t6, $a2, -64
	or	$t1, $t1, $t2
	fldx.s	$fa4, $a1, $a5
	bstrpick.d	$s0, $t1, 15, 0
	movgr2fr.w	$fa5, $t6
	ffint.s.w	$fa5, $fa5
	fmul.s	$fa4, $fa4, $fa5
	add.d	$t1, $a7, $a5
	bnez	$s0, .LBB0_1
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	fstx.s	$fa4, $a5, $a7
	fst.s	$fa4, $t1, 32
	fst.s	$fa4, $t1, 64
	fst.s	$fa4, $t1, 96
	ori	$t2, $zero, 128
	fmov.s	$fa7, $fa4
	fmov.s	$fa6, $fa4
	fmov.s	$fa5, $fa4
	b	.LBB0_2
.LBB0_5:                                # %.preheader
	move	$a1, $zero
	addi.d	$a0, $a0, 128
	bstrpick.d	$a2, $a4, 31, 0
	addi.d	$a4, $sp, 0
	ori	$a5, $zero, 256
	.p2align	4, , 16
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	add.d	$a6, $a4, $a1
	fldx.s	$fa5, $a1, $a4
	fld.s	$fa6, $a6, 16
	fld.s	$fa7, $a6, 8
	fld.s	$ft0, $a6, 24
	ld.d	$a7, $a3, 0
	fadd.s	$fa4, $fa5, $fa6
	fsub.s	$ft1, $fa5, $fa6
	fadd.s	$fa5, $fa7, $ft0
	fsub.s	$fa6, $fa7, $ft0
	fmsub.s	$fa7, $fa6, $fa0, $fa5
	fld.s	$fa6, $a6, 20
	fld.s	$ft0, $a6, 12
	fld.s	$ft2, $a6, 4
	fld.s	$ft3, $a6, 28
	fadd.s	$ft4, $fa4, $fa5
	fadd.s	$ft5, $fa6, $ft0
	fsub.s	$ft0, $fa6, $ft0
	fadd.s	$ft6, $ft2, $ft3
	fsub.s	$fa6, $ft2, $ft3
	fadd.s	$ft2, $ft5, $ft6
	fadd.s	$ft3, $ft4, $ft2
	ftintrz.l.s	$ft3, $ft3
	movfr2gr.d	$a6, $ft3
	fadd.s	$ft3, $ft0, $fa6
	fmul.s	$ft3, $ft3, $fa1
	fmadd.s	$ft0, $ft0, $fa3, $ft3
	addi.d	$a6, $a6, 4
	bstrpick.d	$a6, $a6, 12, 3
	ldx.b	$a6, $a0, $a6
	fsub.s	$ft0, $ft0, $ft2
	fsub.s	$ft2, $ft4, $ft2
	fadd.s	$ft4, $ft1, $fa7
	stx.b	$a6, $a7, $a2
	ftintrz.l.s	$ft2, $ft2
	movfr2gr.d	$a6, $ft2
	addi.d	$a6, $a6, 4
	bstrpick.d	$a6, $a6, 12, 3
	ldx.b	$a6, $a0, $a6
	fadd.s	$ft2, $ft4, $ft0
	ftintrz.l.s	$ft2, $ft2
	movfr2gr.d	$t0, $ft2
	add.d	$a7, $a7, $a2
	st.b	$a6, $a7, 7
	addi.d	$a6, $t0, 4
	bstrpick.d	$a6, $a6, 12, 3
	ldx.b	$a6, $a0, $a6
	fsub.s	$fa7, $ft1, $fa7
	st.b	$a6, $a7, 1
	fsub.s	$ft1, $ft4, $ft0
	ftintrz.l.s	$ft1, $ft1
	movfr2gr.d	$a6, $ft1
	addi.d	$a6, $a6, 4
	bstrpick.d	$a6, $a6, 12, 3
	ldx.b	$a6, $a0, $a6
	fsub.s	$ft1, $ft6, $ft5
	fmul.s	$ft1, $ft1, $fa0
	fsub.s	$ft0, $ft1, $ft0
	st.b	$a6, $a7, 6
	fadd.s	$ft1, $fa7, $ft0
	ftintrz.l.s	$ft1, $ft1
	movfr2gr.d	$a6, $ft1
	addi.d	$a6, $a6, 4
	bstrpick.d	$a6, $a6, 12, 3
	ldx.b	$a6, $a0, $a6
	st.b	$a6, $a7, 2
	fsub.s	$fa7, $fa7, $ft0
	ftintrz.l.s	$fa7, $fa7
	movfr2gr.d	$a6, $fa7
	addi.d	$a6, $a6, 4
	bstrpick.d	$a6, $a6, 12, 3
	ldx.b	$a6, $a0, $a6
	fsub.s	$fa4, $fa4, $fa5
	fmsub.s	$fa5, $fa6, $fa2, $ft3
	fadd.s	$fa5, $fa5, $ft0
	st.b	$a6, $a7, 5
	fadd.s	$fa6, $fa4, $fa5
	ftintrz.l.s	$fa6, $fa6
	movfr2gr.d	$a6, $fa6
	addi.d	$a6, $a6, 4
	bstrpick.d	$a6, $a6, 12, 3
	ldx.b	$a6, $a0, $a6
	st.b	$a6, $a7, 4
	fsub.s	$fa4, $fa4, $fa5
	ftintrz.l.s	$fa4, $fa4
	movfr2gr.d	$a6, $fa4
	addi.d	$a6, $a6, 4
	bstrpick.d	$a6, $a6, 12, 3
	ldx.b	$a6, $a0, $a6
	st.b	$a6, $a7, 3
	addi.d	$a1, $a1, 32
	addi.d	$a3, $a3, 8
	bne	$a1, $a5, .LBB0_6
# %bb.7:
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.Lfunc_end0:
	.size	jpeg_idct_float, .Lfunc_end0-jpeg_idct_float
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
