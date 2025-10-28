	.file	"jfdctflt.c"
	.text
	.globl	jpeg_fdct_float                 # -- Begin function jpeg_fdct_float
	.p2align	5
	.type	jpeg_fdct_float,@function
jpeg_fdct_float:                        # @jpeg_fdct_float
# %bb.0:
	addi.w	$a5, $zero, -8
	lu12i.w	$a1, 258896
	ori	$a4, $a1, 1267
	movgr2fr.w	$fa0, $a4
	lu12i.w	$a1, 257086
	ori	$a1, $a1, 3861
	movgr2fr.w	$fa1, $a1
	lu12i.w	$a2, 258216
	ori	$a2, $a2, 3028
	movgr2fr.w	$fa2, $a2
	lu12i.w	$a3, 260723
	ori	$a3, $a3, 3445
	movgr2fr.w	$fa3, $a3
	move	$a6, $a0
	.p2align	4, , 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa4, $a6, 0
	fld.s	$fa5, $a6, 28
	fld.s	$fa6, $a6, 4
	fld.s	$fa7, $a6, 24
	fadd.s	$ft0, $fa4, $fa5
	fsub.s	$fa4, $fa4, $fa5
	fadd.s	$fa5, $fa6, $fa7
	fld.s	$ft1, $a6, 8
	fld.s	$ft2, $a6, 20
	fld.s	$ft3, $a6, 12
	fld.s	$ft4, $a6, 16
	fsub.s	$fa6, $fa6, $fa7
	fadd.s	$fa7, $ft1, $ft2
	fsub.s	$ft1, $ft1, $ft2
	fadd.s	$ft2, $ft3, $ft4
	fsub.s	$ft3, $ft3, $ft4
	fadd.s	$ft4, $ft0, $ft2
	fsub.s	$ft0, $ft0, $ft2
	fadd.s	$ft2, $fa5, $fa7
	fsub.s	$fa5, $fa5, $fa7
	fadd.s	$fa7, $ft2, $ft4
	fst.s	$fa7, $a6, 0
	fsub.s	$fa7, $ft4, $ft2
	fst.s	$fa7, $a6, 16
	fadd.s	$fa5, $fa5, $ft0
	fmul.s	$fa5, $fa5, $fa0
	fadd.s	$fa7, $ft0, $fa5
	fst.s	$fa7, $a6, 8
	fsub.s	$fa5, $ft0, $fa5
	fst.s	$fa5, $a6, 24
	fadd.s	$fa5, $ft1, $ft3
	fadd.s	$fa7, $fa6, $ft1
	fadd.s	$fa6, $fa4, $fa6
	fsub.s	$ft0, $fa5, $fa6
	fmul.s	$ft0, $ft0, $fa1
	fmadd.s	$fa5, $fa5, $fa2, $ft0
	fmadd.s	$fa6, $fa6, $fa3, $ft0
	fmul.s	$fa7, $fa7, $fa0
	fadd.s	$ft0, $fa4, $fa7
	fsub.s	$fa4, $fa4, $fa7
	fadd.s	$fa7, $fa4, $fa5
	fst.s	$fa7, $a6, 20
	fsub.s	$fa4, $fa4, $fa5
	fst.s	$fa4, $a6, 12
	fadd.s	$fa4, $ft0, $fa6
	fst.s	$fa4, $a6, 4
	fsub.s	$fa4, $ft0, $fa6
	fst.s	$fa4, $a6, 28
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a5, $a5, 1
	slli.d	$a7, $a5, 31
	addi.d	$a6, $a6, 32
	bgez	$a7, .LBB0_1
# %bb.2:                                # %vector.body
	vld	$vr0, $a0, 0
	vld	$vr1, $a0, 224
	vld	$vr2, $a0, 32
	vld	$vr3, $a0, 192
	vfadd.s	$vr4, $vr0, $vr1
	vfsub.s	$vr1, $vr0, $vr1
	vfadd.s	$vr0, $vr2, $vr3
	vld	$vr5, $a0, 64
	vld	$vr6, $a0, 160
	vld	$vr7, $a0, 96
	vld	$vr8, $a0, 128
	vfsub.s	$vr2, $vr2, $vr3
	vfadd.s	$vr3, $vr5, $vr6
	vfsub.s	$vr5, $vr5, $vr6
	vfadd.s	$vr6, $vr7, $vr8
	vfsub.s	$vr7, $vr7, $vr8
	vfadd.s	$vr8, $vr4, $vr6
	vfsub.s	$vr4, $vr4, $vr6
	vfadd.s	$vr6, $vr0, $vr3
	vfsub.s	$vr0, $vr0, $vr3
	vfadd.s	$vr3, $vr6, $vr8
	vst	$vr3, $a0, 0
	vfsub.s	$vr3, $vr8, $vr6
	vst	$vr3, $a0, 128
	vfadd.s	$vr3, $vr0, $vr4
	vreplgr2vr.w	$vr0, $a4
	vfmul.s	$vr3, $vr3, $vr0
	vfadd.s	$vr6, $vr4, $vr3
	vst	$vr6, $a0, 64
	vfsub.s	$vr3, $vr4, $vr3
	vst	$vr3, $a0, 192
	vfadd.s	$vr3, $vr5, $vr7
	vfadd.s	$vr4, $vr2, $vr5
	vfadd.s	$vr2, $vr1, $vr2
	vfsub.s	$vr5, $vr3, $vr2
	vreplgr2vr.w	$vr6, $a1
	vfmul.s	$vr5, $vr5, $vr6
	vreplgr2vr.w	$vr7, $a2
	vfmadd.s	$vr3, $vr3, $vr7, $vr5
	vreplgr2vr.w	$vr8, $a3
	vfmadd.s	$vr2, $vr2, $vr8, $vr5
	vfmul.s	$vr4, $vr4, $vr0
	vfadd.s	$vr5, $vr1, $vr4
	vfsub.s	$vr1, $vr1, $vr4
	vfadd.s	$vr4, $vr1, $vr3
	vst	$vr4, $a0, 160
	vfsub.s	$vr1, $vr1, $vr3
	vst	$vr1, $a0, 96
	vfadd.s	$vr1, $vr5, $vr2
	vst	$vr1, $a0, 32
	vfsub.s	$vr1, $vr5, $vr2
	vld	$vr2, $a0, 16
	vld	$vr3, $a0, 240
	vld	$vr4, $a0, 48
	vld	$vr5, $a0, 208
	vst	$vr1, $a0, 224
	vfadd.s	$vr1, $vr2, $vr3
	vfsub.s	$vr2, $vr2, $vr3
	vfadd.s	$vr3, $vr4, $vr5
	vld	$vr9, $a0, 80
	vld	$vr10, $a0, 176
	vld	$vr11, $a0, 112
	vld	$vr12, $a0, 144
	vfsub.s	$vr4, $vr4, $vr5
	vfadd.s	$vr5, $vr9, $vr10
	vfsub.s	$vr9, $vr9, $vr10
	vfadd.s	$vr10, $vr11, $vr12
	vfsub.s	$vr11, $vr11, $vr12
	vfadd.s	$vr12, $vr1, $vr10
	vfsub.s	$vr1, $vr1, $vr10
	vfadd.s	$vr10, $vr3, $vr5
	vfsub.s	$vr3, $vr3, $vr5
	vfadd.s	$vr5, $vr10, $vr12
	vst	$vr5, $a0, 16
	vfsub.s	$vr5, $vr12, $vr10
	vst	$vr5, $a0, 144
	vfadd.s	$vr3, $vr3, $vr1
	vfmul.s	$vr3, $vr3, $vr0
	vfadd.s	$vr5, $vr1, $vr3
	vst	$vr5, $a0, 80
	vfsub.s	$vr1, $vr1, $vr3
	vst	$vr1, $a0, 208
	vfadd.s	$vr1, $vr9, $vr11
	vfadd.s	$vr3, $vr4, $vr9
	vfadd.s	$vr4, $vr2, $vr4
	vfsub.s	$vr5, $vr1, $vr4
	vfmul.s	$vr5, $vr5, $vr6
	vfmadd.s	$vr1, $vr1, $vr7, $vr5
	vfmadd.s	$vr4, $vr4, $vr8, $vr5
	vfmul.s	$vr0, $vr3, $vr0
	vfadd.s	$vr3, $vr2, $vr0
	vfsub.s	$vr0, $vr2, $vr0
	vfadd.s	$vr2, $vr0, $vr1
	vst	$vr2, $a0, 176
	vfsub.s	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 112
	vfadd.s	$vr0, $vr3, $vr4
	vst	$vr0, $a0, 48
	vfsub.s	$vr0, $vr3, $vr4
	vst	$vr0, $a0, 240
	ret
.Lfunc_end0:
	.size	jpeg_fdct_float, .Lfunc_end0-jpeg_fdct_float
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
