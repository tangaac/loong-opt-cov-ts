	.file	"jfdctflt.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function jpeg_fdct_float
.LCPI0_0:
	.dword	0                               # 0x0
	.dword	3                               # 0x3
.LCPI0_1:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	2                               # 0x2
	.word	7                               # 0x7
.LCPI0_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4                               # 0x4
.LCPI0_3:
	.word	3                               # 0x3
	.word	7                               # 0x7
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.text
	.globl	jpeg_fdct_float
	.p2align	5
	.type	jpeg_fdct_float,@function
jpeg_fdct_float:                        # @jpeg_fdct_float
# %bb.0:                                # %vector.ph
	move	$a1, $zero
	lu12i.w	$a2, 258896
	ori	$a2, $a2, 1267
	vreplgr2vr.w	$vr0, $a2
	lu12i.w	$a2, 257086
	ori	$a2, $a2, 3861
	vreplgr2vr.w	$vr1, $a2
	lu12i.w	$a2, 260723
	ori	$a2, $a2, 3445
	vreplgr2vr.w	$vr2, $a2
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	vld	$vr4, $a2, %pc_lo12(.LCPI0_0)
	pcalau12i	$a2, %pc_hi20(.LCPI0_1)
	vld	$vr5, $a2, %pc_lo12(.LCPI0_1)
	pcalau12i	$a2, %pc_hi20(.LCPI0_2)
	vld	$vr6, $a2, %pc_lo12(.LCPI0_2)
	pcalau12i	$a2, %pc_hi20(.LCPI0_3)
	vld	$vr7, $a2, %pc_lo12(.LCPI0_3)
	lu12i.w	$a2, 258216
	ori	$a2, $a2, 3028
	vreplgr2vr.w	$vr3, $a2
	ori	$a2, $zero, 256
	.p2align	4, , 16
.LBB0_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$ft0, $a0, $a1
	fld.s	$ft1, $a3, 32
	fld.s	$ft2, $a3, 64
	fld.s	$ft3, $a3, 96
	movfr2gr.s	$a4, $ft0
	vinsgr2vr.w	$vr8, $a4, 0
	movfr2gr.s	$a4, $ft1
	vinsgr2vr.w	$vr8, $a4, 1
	movfr2gr.s	$a4, $ft2
	vinsgr2vr.w	$vr8, $a4, 2
	movfr2gr.s	$a4, $ft3
	fld.s	$ft1, $a3, 28
	fld.s	$ft2, $a3, 60
	fld.s	$ft3, $a3, 92
	fld.s	$ft4, $a3, 124
	vinsgr2vr.w	$vr8, $a4, 3
	movfr2gr.s	$a4, $ft1
	vinsgr2vr.w	$vr13, $a4, 0
	movfr2gr.s	$a4, $ft2
	vinsgr2vr.w	$vr13, $a4, 1
	movfr2gr.s	$a4, $ft3
	vinsgr2vr.w	$vr13, $a4, 2
	movfr2gr.s	$a4, $ft4
	vinsgr2vr.w	$vr13, $a4, 3
	vfadd.s	$vr9, $vr8, $vr13
	fld.s	$ft2, $a3, 4
	fld.s	$ft3, $a3, 36
	fld.s	$ft4, $a3, 68
	fld.s	$ft6, $a3, 100
	vfsub.s	$vr8, $vr8, $vr13
	movfr2gr.s	$a4, $ft2
	vinsgr2vr.w	$vr13, $a4, 0
	movfr2gr.s	$a4, $ft3
	vinsgr2vr.w	$vr13, $a4, 1
	movfr2gr.s	$a4, $ft4
	vinsgr2vr.w	$vr13, $a4, 2
	movfr2gr.s	$a4, $ft6
	fld.s	$ft2, $a3, 24
	fld.s	$ft3, $a3, 56
	fld.s	$ft4, $a3, 88
	fld.s	$ft6, $a3, 120
	vinsgr2vr.w	$vr13, $a4, 3
	movfr2gr.s	$a4, $ft2
	vinsgr2vr.w	$vr15, $a4, 0
	movfr2gr.s	$a4, $ft3
	vinsgr2vr.w	$vr15, $a4, 1
	movfr2gr.s	$a4, $ft4
	vinsgr2vr.w	$vr15, $a4, 2
	movfr2gr.s	$a4, $ft6
	vinsgr2vr.w	$vr15, $a4, 3
	vfadd.s	$vr10, $vr13, $vr15
	fld.s	$ft4, $a3, 8
	fld.s	$ft6, $a3, 40
	fld.s	$ft8, $a3, 72
	fld.s	$ft9, $a3, 104
	vfsub.s	$vr11, $vr13, $vr15
	movfr2gr.s	$a4, $ft4
	vinsgr2vr.w	$vr12, $a4, 0
	movfr2gr.s	$a4, $ft6
	vinsgr2vr.w	$vr12, $a4, 1
	movfr2gr.s	$a4, $ft8
	vinsgr2vr.w	$vr12, $a4, 2
	movfr2gr.s	$a4, $ft9
	fld.s	$ft5, $a3, 20
	fld.s	$ft6, $a3, 52
	fld.s	$ft7, $a3, 84
	fld.s	$ft8, $a3, 116
	vinsgr2vr.w	$vr12, $a4, 3
	movfr2gr.s	$a4, $ft5
	vinsgr2vr.w	$vr13, $a4, 0
	movfr2gr.s	$a4, $ft6
	vinsgr2vr.w	$vr13, $a4, 1
	movfr2gr.s	$a4, $ft7
	vinsgr2vr.w	$vr13, $a4, 2
	movfr2gr.s	$a4, $ft8
	vinsgr2vr.w	$vr13, $a4, 3
	vfadd.s	$vr14, $vr12, $vr13
	fld.s	$ft7, $a3, 12
	fld.s	$ft8, $a3, 44
	fld.s	$ft9, $a3, 76
	fld.s	$ft10, $a3, 108
	vfsub.s	$vr12, $vr12, $vr13
	movfr2gr.s	$a4, $ft7
	vinsgr2vr.w	$vr13, $a4, 0
	movfr2gr.s	$a4, $ft8
	vinsgr2vr.w	$vr13, $a4, 1
	movfr2gr.s	$a4, $ft9
	vinsgr2vr.w	$vr13, $a4, 2
	movfr2gr.s	$a4, $ft10
	fld.s	$ft7, $a3, 16
	fld.s	$ft8, $a3, 48
	fld.s	$ft9, $a3, 80
	fld.s	$ft10, $a3, 112
	vinsgr2vr.w	$vr13, $a4, 3
	movfr2gr.s	$a4, $ft7
	vinsgr2vr.w	$vr15, $a4, 0
	movfr2gr.s	$a4, $ft8
	vinsgr2vr.w	$vr15, $a4, 1
	movfr2gr.s	$a4, $ft9
	vinsgr2vr.w	$vr15, $a4, 2
	movfr2gr.s	$a4, $ft10
	vinsgr2vr.w	$vr15, $a4, 3
	vfadd.s	$vr16, $vr13, $vr15
	vfsub.s	$vr13, $vr13, $vr15
	vfadd.s	$vr15, $vr9, $vr16
	vfsub.s	$vr9, $vr9, $vr16
	vfadd.s	$vr16, $vr10, $vr14
	vfsub.s	$vr10, $vr10, $vr14
	vfadd.s	$vr14, $vr16, $vr15
	vfadd.s	$vr13, $vr12, $vr13
	vfadd.s	$vr12, $vr11, $vr12
	vfadd.s	$vr11, $vr8, $vr11
	vfsub.s	$vr17, $vr13, $vr11
	vfmul.s	$vr17, $vr17, $vr1
	vfmadd.s	$vr11, $vr11, $vr2, $vr17
	vfmul.s	$vr12, $vr12, $vr0
	vfadd.s	$vr18, $vr8, $vr12
	vfadd.s	$vr19, $vr18, $vr11
	vpackod.w	$vr20, $vr19, $vr14
	vfadd.s	$vr10, $vr10, $vr9
	vfmul.s	$vr10, $vr10, $vr0
	vfadd.s	$vr21, $vr9, $vr10
	vfmadd.s	$vr13, $vr13, $vr3, $vr17
	vfsub.s	$vr8, $vr8, $vr12
	vfsub.s	$vr12, $vr8, $vr13
	vilvl.w	$vr17, $vr12, $vr21
	vori.b	$vr22, $vr4, 0
	vshuf.d	$vr22, $vr17, $vr20
	vst	$vr22, $a3, 32
	vreplvei.w	$vr17, $vr14, 2
	fst.s	$ft9, $a3, 64
	vfsub.s	$vr15, $vr15, $vr16
	vfadd.s	$vr8, $vr8, $vr13
	vpackod.w	$vr13, $vr8, $vr15
	vfsub.s	$vr9, $vr9, $vr10
	vfsub.s	$vr10, $vr18, $vr11
	vilvl.w	$vr11, $vr10, $vr9
	vori.b	$vr16, $vr4, 0
	vshuf.d	$vr16, $vr11, $vr13
	vst	$vr16, $a3, 48
	vreplvei.w	$vr11, $vr9, 3
	fst.s	$ft3, $a3, 120
	vori.b	$vr11, $vr5, 0
	vshuf.w	$vr11, $vr14, $vr10
	vilvh.w	$vr13, $vr9, $vr8
	vori.b	$vr16, $vr4, 0
	vshuf.d	$vr16, $vr11, $vr13
	vst	$vr16, $a3, 84
	vreplvei.w	$vr11, $vr8, 3
	fst.s	$ft3, $a3, 116
	vpackev.w	$vr11, $vr19, $vr14
	vpackev.d	$vr11, $vr21, $vr11
	vori.b	$vr13, $vr6, 0
	vshuf.w	$vr13, $vr12, $vr11
	vstx	$vr13, $a0, $a1
	vilvh.w	$vr11, $vr21, $vr19
	vpackev.w	$vr13, $vr15, $vr12
	vori.b	$vr14, $vr4, 0
	vshuf.d	$vr14, $vr13, $vr11
	vst	$vr14, $a3, 68
	vori.b	$vr11, $vr7, 0
	vshuf.w	$vr11, $vr21, $vr19
	vpackod.w	$vr12, $vr15, $vr12
	vori.b	$vr13, $vr4, 0
	vshuf.d	$vr13, $vr12, $vr11
	vst	$vr13, $a3, 100
	vpackev.w	$vr8, $vr8, $vr15
	vpackev.d	$vr8, $vr9, $vr8
	vori.b	$vr9, $vr6, 0
	vshuf.w	$vr9, $vr10, $vr8
	vst	$vr9, $a3, 16
	vreplvei.w	$vr8, $vr10, 3
	addi.d	$a1, $a1, 128
	fst.s	$ft0, $a3, 124
	bne	$a1, $a2, .LBB0_1
# %bb.2:                                # %vector.body154
	vld	$vr4, $a0, 0
	vld	$vr5, $a0, 224
	vld	$vr6, $a0, 32
	vld	$vr7, $a0, 192
	vfadd.s	$vr8, $vr4, $vr5
	vfsub.s	$vr4, $vr4, $vr5
	vfadd.s	$vr5, $vr6, $vr7
	vld	$vr9, $a0, 64
	vld	$vr10, $a0, 160
	vld	$vr11, $a0, 96
	vld	$vr12, $a0, 128
	vfsub.s	$vr6, $vr6, $vr7
	vfadd.s	$vr7, $vr9, $vr10
	vfsub.s	$vr9, $vr9, $vr10
	vfadd.s	$vr10, $vr11, $vr12
	vfsub.s	$vr11, $vr11, $vr12
	vfadd.s	$vr12, $vr8, $vr10
	vfsub.s	$vr8, $vr8, $vr10
	vfadd.s	$vr10, $vr5, $vr7
	vfsub.s	$vr5, $vr5, $vr7
	vfadd.s	$vr7, $vr10, $vr12
	vst	$vr7, $a0, 0
	vfsub.s	$vr7, $vr12, $vr10
	vst	$vr7, $a0, 128
	vfadd.s	$vr5, $vr5, $vr8
	vfmul.s	$vr5, $vr5, $vr0
	vfadd.s	$vr7, $vr8, $vr5
	vst	$vr7, $a0, 64
	vfsub.s	$vr5, $vr8, $vr5
	vst	$vr5, $a0, 192
	vfadd.s	$vr5, $vr9, $vr11
	vfadd.s	$vr7, $vr6, $vr9
	vfadd.s	$vr6, $vr4, $vr6
	vfsub.s	$vr8, $vr5, $vr6
	vfmul.s	$vr8, $vr8, $vr1
	vfmadd.s	$vr5, $vr5, $vr3, $vr8
	vfmadd.s	$vr6, $vr6, $vr2, $vr8
	vfmul.s	$vr7, $vr7, $vr0
	vfadd.s	$vr8, $vr4, $vr7
	vfsub.s	$vr4, $vr4, $vr7
	vfadd.s	$vr7, $vr4, $vr5
	vst	$vr7, $a0, 160
	vfsub.s	$vr4, $vr4, $vr5
	vst	$vr4, $a0, 96
	vfadd.s	$vr4, $vr8, $vr6
	vst	$vr4, $a0, 32
	vfsub.s	$vr4, $vr8, $vr6
	vld	$vr5, $a0, 16
	vld	$vr6, $a0, 240
	vld	$vr7, $a0, 48
	vld	$vr8, $a0, 208
	vst	$vr4, $a0, 224
	vfadd.s	$vr4, $vr5, $vr6
	vfsub.s	$vr5, $vr5, $vr6
	vfadd.s	$vr6, $vr7, $vr8
	vld	$vr9, $a0, 80
	vld	$vr10, $a0, 176
	vld	$vr11, $a0, 112
	vld	$vr12, $a0, 144
	vfsub.s	$vr7, $vr7, $vr8
	vfadd.s	$vr8, $vr9, $vr10
	vfsub.s	$vr9, $vr9, $vr10
	vfadd.s	$vr10, $vr11, $vr12
	vfsub.s	$vr11, $vr11, $vr12
	vfadd.s	$vr12, $vr4, $vr10
	vfsub.s	$vr4, $vr4, $vr10
	vfadd.s	$vr10, $vr6, $vr8
	vfsub.s	$vr6, $vr6, $vr8
	vfadd.s	$vr8, $vr10, $vr12
	vst	$vr8, $a0, 16
	vfsub.s	$vr8, $vr12, $vr10
	vst	$vr8, $a0, 144
	vfadd.s	$vr6, $vr6, $vr4
	vfmul.s	$vr6, $vr6, $vr0
	vfadd.s	$vr8, $vr4, $vr6
	vst	$vr8, $a0, 80
	vfsub.s	$vr4, $vr4, $vr6
	vst	$vr4, $a0, 208
	vfadd.s	$vr4, $vr9, $vr11
	vfadd.s	$vr6, $vr7, $vr9
	vfadd.s	$vr7, $vr5, $vr7
	vfsub.s	$vr8, $vr4, $vr7
	vfmul.s	$vr1, $vr8, $vr1
	vfmadd.s	$vr3, $vr4, $vr3, $vr1
	vfmadd.s	$vr1, $vr7, $vr2, $vr1
	vfmul.s	$vr0, $vr6, $vr0
	vfadd.s	$vr2, $vr5, $vr0
	vfsub.s	$vr0, $vr5, $vr0
	vfadd.s	$vr4, $vr0, $vr3
	vst	$vr4, $a0, 176
	vfsub.s	$vr0, $vr0, $vr3
	vst	$vr0, $a0, 112
	vfadd.s	$vr0, $vr2, $vr1
	vst	$vr0, $a0, 48
	vfsub.s	$vr0, $vr2, $vr1
	vst	$vr0, $a0, 240
	ret
.Lfunc_end0:
	.size	jpeg_fdct_float, .Lfunc_end0-jpeg_fdct_float
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
