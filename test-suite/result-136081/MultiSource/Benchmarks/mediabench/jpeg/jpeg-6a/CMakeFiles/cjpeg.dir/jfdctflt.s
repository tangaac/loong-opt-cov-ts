	.file	"jfdctflt.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function jpeg_fdct_float
.LCPI0_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI0_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	0                               # 0x0
	.text
	.globl	jpeg_fdct_float
	.p2align	5
	.type	jpeg_fdct_float,@function
jpeg_fdct_float:                        # @jpeg_fdct_float
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
	bstrins.d	$sp, $zero, 4, 0
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a0, 32
	fld.s	$fa2, $a0, 64
	fld.s	$fa3, $a0, 96
	fld.s	$fa4, $a0, 128
	fld.s	$fa5, $a0, 160
	fld.s	$fa6, $a0, 192
	fld.s	$fa7, $a0, 224
	movfr2gr.s	$a1, $fa0
	xvinsgr2vr.w	$xr8, $a1, 0
	movfr2gr.s	$a1, $fa1
	xvinsgr2vr.w	$xr8, $a1, 1
	movfr2gr.s	$a1, $fa2
	xvinsgr2vr.w	$xr8, $a1, 2
	movfr2gr.s	$a1, $fa3
	xvinsgr2vr.w	$xr8, $a1, 3
	movfr2gr.s	$a1, $fa4
	xvinsgr2vr.w	$xr8, $a1, 4
	movfr2gr.s	$a1, $fa5
	xvinsgr2vr.w	$xr8, $a1, 5
	movfr2gr.s	$a1, $fa6
	xvinsgr2vr.w	$xr8, $a1, 6
	movfr2gr.s	$a1, $fa7
	xvinsgr2vr.w	$xr8, $a1, 7
	fld.s	$fa0, $a0, 28
	fld.s	$fa1, $a0, 60
	fld.s	$fa2, $a0, 92
	fld.s	$fa3, $a0, 124
	fld.s	$fa4, $a0, 156
	fld.s	$fa5, $a0, 188
	fld.s	$fa6, $a0, 220
	fld.s	$fa7, $a0, 252
	movfr2gr.s	$a1, $fa0
	xvinsgr2vr.w	$xr9, $a1, 0
	movfr2gr.s	$a1, $fa1
	xvinsgr2vr.w	$xr9, $a1, 1
	movfr2gr.s	$a1, $fa2
	xvinsgr2vr.w	$xr9, $a1, 2
	movfr2gr.s	$a1, $fa3
	xvinsgr2vr.w	$xr9, $a1, 3
	movfr2gr.s	$a1, $fa4
	xvinsgr2vr.w	$xr9, $a1, 4
	movfr2gr.s	$a1, $fa5
	xvinsgr2vr.w	$xr9, $a1, 5
	movfr2gr.s	$a1, $fa6
	xvinsgr2vr.w	$xr9, $a1, 6
	movfr2gr.s	$a1, $fa7
	xvinsgr2vr.w	$xr9, $a1, 7
	xvfadd.s	$xr0, $xr8, $xr9
	xvfsub.s	$xr1, $xr8, $xr9
	fld.s	$fa2, $a0, 4
	fld.s	$fa3, $a0, 36
	fld.s	$fa4, $a0, 68
	fld.s	$fa5, $a0, 100
	fld.s	$fa6, $a0, 132
	fld.s	$fa7, $a0, 164
	fld.s	$ft0, $a0, 196
	fld.s	$ft1, $a0, 228
	movfr2gr.s	$a1, $fa2
	xvinsgr2vr.w	$xr2, $a1, 0
	movfr2gr.s	$a1, $fa3
	xvinsgr2vr.w	$xr2, $a1, 1
	movfr2gr.s	$a1, $fa4
	xvinsgr2vr.w	$xr2, $a1, 2
	movfr2gr.s	$a1, $fa5
	xvinsgr2vr.w	$xr2, $a1, 3
	movfr2gr.s	$a1, $fa6
	xvinsgr2vr.w	$xr2, $a1, 4
	movfr2gr.s	$a1, $fa7
	xvinsgr2vr.w	$xr2, $a1, 5
	movfr2gr.s	$a1, $ft0
	xvinsgr2vr.w	$xr2, $a1, 6
	movfr2gr.s	$a1, $ft1
	xvinsgr2vr.w	$xr2, $a1, 7
	fld.s	$fa3, $a0, 24
	fld.s	$fa4, $a0, 56
	fld.s	$fa5, $a0, 88
	fld.s	$fa6, $a0, 120
	fld.s	$fa7, $a0, 152
	fld.s	$ft0, $a0, 184
	fld.s	$ft1, $a0, 216
	fld.s	$ft2, $a0, 248
	movfr2gr.s	$a1, $fa3
	xvinsgr2vr.w	$xr3, $a1, 0
	movfr2gr.s	$a1, $fa4
	xvinsgr2vr.w	$xr3, $a1, 1
	movfr2gr.s	$a1, $fa5
	xvinsgr2vr.w	$xr3, $a1, 2
	movfr2gr.s	$a1, $fa6
	xvinsgr2vr.w	$xr3, $a1, 3
	movfr2gr.s	$a1, $fa7
	xvinsgr2vr.w	$xr3, $a1, 4
	movfr2gr.s	$a1, $ft0
	xvinsgr2vr.w	$xr3, $a1, 5
	movfr2gr.s	$a1, $ft1
	xvinsgr2vr.w	$xr3, $a1, 6
	movfr2gr.s	$a1, $ft2
	xvinsgr2vr.w	$xr3, $a1, 7
	xvfadd.s	$xr4, $xr2, $xr3
	xvfsub.s	$xr2, $xr2, $xr3
	fld.s	$fa3, $a0, 8
	fld.s	$fa5, $a0, 40
	fld.s	$fa6, $a0, 72
	fld.s	$fa7, $a0, 104
	fld.s	$ft0, $a0, 136
	fld.s	$ft1, $a0, 168
	fld.s	$ft2, $a0, 200
	fld.s	$ft3, $a0, 232
	movfr2gr.s	$a1, $fa3
	xvinsgr2vr.w	$xr3, $a1, 0
	movfr2gr.s	$a1, $fa5
	xvinsgr2vr.w	$xr3, $a1, 1
	movfr2gr.s	$a1, $fa6
	xvinsgr2vr.w	$xr3, $a1, 2
	movfr2gr.s	$a1, $fa7
	xvinsgr2vr.w	$xr3, $a1, 3
	movfr2gr.s	$a1, $ft0
	xvinsgr2vr.w	$xr3, $a1, 4
	movfr2gr.s	$a1, $ft1
	xvinsgr2vr.w	$xr3, $a1, 5
	movfr2gr.s	$a1, $ft2
	xvinsgr2vr.w	$xr3, $a1, 6
	movfr2gr.s	$a1, $ft3
	xvinsgr2vr.w	$xr3, $a1, 7
	fld.s	$fa5, $a0, 20
	fld.s	$fa6, $a0, 52
	fld.s	$fa7, $a0, 84
	fld.s	$ft0, $a0, 116
	fld.s	$ft1, $a0, 148
	fld.s	$ft2, $a0, 180
	fld.s	$ft3, $a0, 212
	fld.s	$ft4, $a0, 244
	movfr2gr.s	$a1, $fa5
	xvinsgr2vr.w	$xr13, $a1, 0
	movfr2gr.s	$a1, $fa6
	xvinsgr2vr.w	$xr13, $a1, 1
	movfr2gr.s	$a1, $fa7
	xvinsgr2vr.w	$xr13, $a1, 2
	movfr2gr.s	$a1, $ft0
	xvinsgr2vr.w	$xr13, $a1, 3
	movfr2gr.s	$a1, $ft1
	xvinsgr2vr.w	$xr13, $a1, 4
	movfr2gr.s	$a1, $ft2
	xvinsgr2vr.w	$xr13, $a1, 5
	movfr2gr.s	$a1, $ft3
	xvinsgr2vr.w	$xr13, $a1, 6
	movfr2gr.s	$a1, $ft4
	xvinsgr2vr.w	$xr13, $a1, 7
	xvfadd.s	$xr5, $xr3, $xr13
	xvfsub.s	$xr3, $xr3, $xr13
	fld.s	$fa6, $a0, 12
	fld.s	$fa7, $a0, 44
	fld.s	$ft0, $a0, 76
	fld.s	$ft1, $a0, 108
	fld.s	$ft2, $a0, 140
	fld.s	$ft3, $a0, 172
	fld.s	$ft4, $a0, 204
	fld.s	$ft5, $a0, 236
	movfr2gr.s	$a1, $fa6
	xvinsgr2vr.w	$xr6, $a1, 0
	movfr2gr.s	$a1, $fa7
	xvinsgr2vr.w	$xr6, $a1, 1
	movfr2gr.s	$a1, $ft0
	xvinsgr2vr.w	$xr6, $a1, 2
	movfr2gr.s	$a1, $ft1
	xvinsgr2vr.w	$xr6, $a1, 3
	movfr2gr.s	$a1, $ft2
	xvinsgr2vr.w	$xr6, $a1, 4
	movfr2gr.s	$a1, $ft3
	xvinsgr2vr.w	$xr6, $a1, 5
	movfr2gr.s	$a1, $ft4
	xvinsgr2vr.w	$xr6, $a1, 6
	movfr2gr.s	$a1, $ft5
	xvinsgr2vr.w	$xr6, $a1, 7
	fld.s	$fa7, $a0, 16
	fld.s	$ft0, $a0, 48
	fld.s	$ft1, $a0, 80
	fld.s	$ft2, $a0, 112
	fld.s	$ft3, $a0, 144
	fld.s	$ft4, $a0, 176
	fld.s	$ft5, $a0, 208
	fld.s	$ft6, $a0, 240
	movfr2gr.s	$a1, $fa7
	xvinsgr2vr.w	$xr7, $a1, 0
	movfr2gr.s	$a1, $ft0
	xvinsgr2vr.w	$xr7, $a1, 1
	movfr2gr.s	$a1, $ft1
	xvinsgr2vr.w	$xr7, $a1, 2
	movfr2gr.s	$a1, $ft2
	xvinsgr2vr.w	$xr7, $a1, 3
	movfr2gr.s	$a1, $ft3
	xvinsgr2vr.w	$xr7, $a1, 4
	movfr2gr.s	$a1, $ft4
	xvinsgr2vr.w	$xr7, $a1, 5
	movfr2gr.s	$a1, $ft5
	xvinsgr2vr.w	$xr7, $a1, 6
	movfr2gr.s	$a1, $ft6
	xvinsgr2vr.w	$xr7, $a1, 7
	xvfadd.s	$xr9, $xr6, $xr7
	xvfsub.s	$xr8, $xr6, $xr7
	xvfadd.s	$xr6, $xr0, $xr9
	xvfsub.s	$xr7, $xr0, $xr9
	xvfadd.s	$xr0, $xr4, $xr5
	xvfsub.s	$xr4, $xr4, $xr5
	xvfadd.s	$xr5, $xr0, $xr6
	xvpickve2gr.w	$a1, $xr5, 1
	movgr2fr.w	$ft1, $a1
	fst.s	$ft1, $a0, 32
	xvpickve2gr.w	$a1, $xr5, 2
	movgr2fr.w	$ft1, $a1
	fst.s	$ft1, $a0, 64
	xvpickve2gr.w	$a1, $xr5, 3
	movgr2fr.w	$ft1, $a1
	fst.s	$ft1, $a0, 96
	xvpickve2gr.w	$a1, $xr5, 4
	movgr2fr.w	$ft1, $a1
	fst.s	$ft1, $a0, 128
	xvpickve2gr.w	$a1, $xr5, 5
	movgr2fr.w	$ft1, $a1
	fst.s	$ft1, $a0, 160
	xvpickve2gr.w	$a1, $xr5, 6
	movgr2fr.w	$ft1, $a1
	fst.s	$ft1, $a0, 192
	xvpickve2gr.w	$a1, $xr5, 7
	movgr2fr.w	$ft1, $a1
	fst.s	$ft1, $a0, 224
	xvfsub.s	$xr6, $xr6, $xr0
	xvpickve2gr.w	$a1, $xr6, 1
	movgr2fr.w	$fa0, $a1
	fst.s	$fa0, $a0, 48
	xvpickve2gr.w	$a1, $xr6, 2
	movgr2fr.w	$fa0, $a1
	fst.s	$fa0, $a0, 80
	xvpickve2gr.w	$a1, $xr6, 3
	movgr2fr.w	$fa0, $a1
	fst.s	$fa0, $a0, 112
	xvpickve2gr.w	$a1, $xr6, 4
	movgr2fr.w	$fa0, $a1
	fst.s	$fa0, $a0, 144
	xvpickve2gr.w	$a1, $xr6, 5
	movgr2fr.w	$fa0, $a1
	fst.s	$fa0, $a0, 176
	xvpickve2gr.w	$a1, $xr6, 6
	movgr2fr.w	$fa0, $a1
	fst.s	$fa0, $a0, 208
	xvpickve2gr.w	$a1, $xr6, 7
	movgr2fr.w	$fa0, $a1
	fst.s	$fa0, $a0, 240
	xvfadd.s	$xr4, $xr4, $xr7
	lu12i.w	$a1, 258896
	ori	$a1, $a1, 1267
	xvreplgr2vr.w	$xr0, $a1
	xvfmul.s	$xr4, $xr4, $xr0
	xvfadd.s	$xr10, $xr7, $xr4
	xvpickve2gr.w	$a1, $xr10, 1
	movgr2fr.w	$ft1, $a1
	fst.s	$ft1, $a0, 40
	xvpickve2gr.w	$a1, $xr10, 2
	movgr2fr.w	$ft1, $a1
	fst.s	$ft1, $a0, 72
	xvpickve2gr.w	$a1, $xr10, 3
	movgr2fr.w	$ft1, $a1
	fst.s	$ft1, $a0, 104
	xvpickve2gr.w	$a1, $xr10, 4
	movgr2fr.w	$ft1, $a1
	fst.s	$ft1, $a0, 136
	xvpickve2gr.w	$a1, $xr10, 5
	movgr2fr.w	$ft1, $a1
	fst.s	$ft1, $a0, 168
	xvpickve2gr.w	$a1, $xr10, 6
	movgr2fr.w	$ft1, $a1
	fst.s	$ft1, $a0, 200
	xvpickve2gr.w	$a1, $xr10, 7
	movgr2fr.w	$ft1, $a1
	fst.s	$ft1, $a0, 232
	xvfsub.s	$xr7, $xr7, $xr4
	xvpickve2gr.w	$a1, $xr7, 1
	movgr2fr.w	$fa4, $a1
	fst.s	$fa4, $a0, 56
	xvpickve2gr.w	$a1, $xr7, 2
	movgr2fr.w	$fa4, $a1
	fst.s	$fa4, $a0, 88
	xvpickve2gr.w	$a1, $xr7, 3
	movgr2fr.w	$fa4, $a1
	fst.s	$fa4, $a0, 120
	xvpickve2gr.w	$a1, $xr7, 4
	movgr2fr.w	$fa4, $a1
	fst.s	$fa4, $a0, 152
	xvpickve2gr.w	$a1, $xr7, 5
	movgr2fr.w	$fa4, $a1
	fst.s	$fa4, $a0, 184
	xvpickve2gr.w	$a1, $xr7, 6
	movgr2fr.w	$fa4, $a1
	fst.s	$fa4, $a0, 216
	xvpickve2gr.w	$a1, $xr7, 7
	movgr2fr.w	$fa4, $a1
	fst.s	$fa4, $a0, 248
	xvfadd.s	$xr4, $xr3, $xr8
	xvfadd.s	$xr9, $xr2, $xr3
	xvfadd.s	$xr8, $xr1, $xr2
	xvfsub.s	$xr3, $xr4, $xr8
	lu12i.w	$a1, 257086
	ori	$a1, $a1, 3861
	xvreplgr2vr.w	$xr2, $a1
	xvfmul.s	$xr11, $xr3, $xr2
	lu12i.w	$a1, 258216
	ori	$a1, $a1, 3028
	xvreplgr2vr.w	$xr3, $a1
	xvfmadd.s	$xr12, $xr4, $xr3, $xr11
	lu12i.w	$a1, 260723
	ori	$a1, $a1, 3445
	xvreplgr2vr.w	$xr4, $a1
	xvfmadd.s	$xr8, $xr8, $xr4, $xr11
	xvfmul.s	$xr11, $xr9, $xr0
	xvfadd.s	$xr9, $xr1, $xr11
	xvfsub.s	$xr11, $xr1, $xr11
	xvfadd.s	$xr1, $xr11, $xr12
	xvpickve2gr.w	$a1, $xr1, 1
	movgr2fr.w	$ft5, $a1
	fst.s	$ft5, $a0, 52
	xvpickve2gr.w	$a1, $xr1, 2
	movgr2fr.w	$ft5, $a1
	fst.s	$ft5, $a0, 84
	xvpickve2gr.w	$a1, $xr1, 3
	movgr2fr.w	$ft5, $a1
	fst.s	$ft5, $a0, 116
	xvpickve2gr.w	$a1, $xr1, 4
	movgr2fr.w	$ft5, $a1
	fst.s	$ft5, $a0, 148
	xvpickve2gr.w	$a1, $xr1, 5
	movgr2fr.w	$ft5, $a1
	fst.s	$ft5, $a0, 180
	xvpickve2gr.w	$a1, $xr1, 6
	movgr2fr.w	$ft5, $a1
	fst.s	$ft5, $a0, 212
	xvpickve2gr.w	$a1, $xr1, 7
	movgr2fr.w	$ft5, $a1
	fst.s	$ft5, $a0, 244
	xvfsub.s	$xr11, $xr11, $xr12
	xvpickve2gr.w	$a1, $xr11, 1
	movgr2fr.w	$ft4, $a1
	fst.s	$ft4, $a0, 44
	xvpickve2gr.w	$a1, $xr11, 2
	movgr2fr.w	$ft4, $a1
	fst.s	$ft4, $a0, 76
	xvpickve2gr.w	$a1, $xr11, 3
	movgr2fr.w	$ft4, $a1
	fst.s	$ft4, $a0, 108
	xvpickve2gr.w	$a1, $xr11, 4
	movgr2fr.w	$ft4, $a1
	fst.s	$ft4, $a0, 140
	xvpickve2gr.w	$a1, $xr11, 5
	movgr2fr.w	$ft4, $a1
	fst.s	$ft4, $a0, 172
	xvpickve2gr.w	$a1, $xr11, 6
	movgr2fr.w	$ft4, $a1
	fst.s	$ft4, $a0, 204
	xvpickve2gr.w	$a1, $xr11, 7
	movgr2fr.w	$ft4, $a1
	fst.s	$ft4, $a0, 236
	xvfadd.s	$xr12, $xr9, $xr8
	xvpickve2gr.w	$a1, $xr12, 1
	movgr2fr.w	$ft5, $a1
	fst.s	$ft5, $a0, 36
	xvpickve2gr.w	$a1, $xr12, 2
	movgr2fr.w	$ft5, $a1
	fst.s	$ft5, $a0, 68
	xvpickve2gr.w	$a1, $xr12, 3
	movgr2fr.w	$ft5, $a1
	fst.s	$ft5, $a0, 100
	xvpickve2gr.w	$a1, $xr12, 4
	movgr2fr.w	$ft5, $a1
	fst.s	$ft5, $a0, 132
	xvpickve2gr.w	$a1, $xr12, 5
	movgr2fr.w	$ft5, $a1
	fst.s	$ft5, $a0, 164
	xvpickve2gr.w	$a1, $xr12, 6
	movgr2fr.w	$ft5, $a1
	fst.s	$ft5, $a0, 196
	xvpickve2gr.w	$a1, $xr12, 7
	movgr2fr.w	$ft5, $a1
	fst.s	$ft5, $a0, 228
	xvpermi.d	$xr5, $xr5, 68
	xvpermi.d	$xr12, $xr12, 68
	xvpackev.w	$xr5, $xr12, $xr5
	xvpermi.d	$xr5, $xr5, 68
	xvpermi.d	$xr10, $xr10, 68
	xvpackev.d	$xr5, $xr10, $xr5
	xvpermi.d	$xr5, $xr5, 68
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	xvld	$xr10, $a1, %pc_lo12(.LCPI0_0)
	xvpermi.d	$xr11, $xr11, 68
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	xvld	$xr12, $a1, %pc_lo12(.LCPI0_1)
	xvshuf.w	$xr10, $xr11, $xr5
	xvpermi.d	$xr5, $xr10, 68
	xvpermi.d	$xr6, $xr6, 68
	xvshuf.d	$xr12, $xr6, $xr5
	xvpickve2gr.w	$a1, $xr1, 0
	movgr2fr.w	$fa1, $a1
	fst.s	$fa1, $sp, 20
	xvpickve2gr.w	$a1, $xr12, 4
	movgr2fr.w	$fa1, $a1
	xvpickve2gr.w	$a1, $xr12, 0
	movgr2fr.w	$fa5, $a1
	fst.s	$fa1, $sp, 16
	movfr2gr.s	$a1, $fa5
	xvpickve2gr.w	$a2, $xr12, 1
	movgr2fr.w	$fa1, $a2
	vinsgr2vr.w	$vr5, $a1, 0
	movfr2gr.s	$a1, $fa1
	xvpickve2gr.w	$a2, $xr12, 2
	movgr2fr.w	$fa1, $a2
	vinsgr2vr.w	$vr5, $a1, 1
	movfr2gr.s	$a1, $fa1
	xvpickve2gr.w	$a2, $xr12, 3
	movgr2fr.w	$fa1, $a2
	vinsgr2vr.w	$vr5, $a1, 2
	movfr2gr.s	$a1, $fa1
	vinsgr2vr.w	$vr5, $a1, 3
	vst	$vr5, $sp, 0
	xvld	$xr1, $sp, 0
	xvpickve2gr.d	$a1, $xr7, 0
	movgr2fr.d	$fa5, $a1
	xvpickve2gr.d	$a1, $xr1, 0
	movgr2fr.d	$fa6, $a1
	movfr2gr.d	$a1, $fa5
	movfr2gr.d	$a2, $fa6
	xvinsgr2vr.d	$xr5, $a2, 0
	xvpickve2gr.d	$a2, $xr1, 1
	movgr2fr.d	$fa6, $a2
	xvpickve2gr.d	$a2, $xr1, 2
	movgr2fr.d	$fa1, $a2
	movfr2gr.d	$a2, $fa6
	xvinsgr2vr.d	$xr5, $a2, 1
	movfr2gr.d	$a2, $fa1
	xvinsgr2vr.d	$xr5, $a2, 2
	xvinsgr2vr.d	$xr5, $a1, 3
	xvpickve2gr.w	$a1, $xr5, 0
	movgr2fr.w	$fa1, $a1
	xvfsub.s	$xr6, $xr9, $xr8
	movfr2gr.s	$a1, $fa1
	xvpickve2gr.w	$a2, $xr5, 1
	movgr2fr.w	$fa7, $a2
	xvinsgr2vr.w	$xr1, $a1, 0
	movfr2gr.s	$a1, $fa7
	xvpickve2gr.w	$a2, $xr5, 2
	movgr2fr.w	$fa7, $a2
	xvinsgr2vr.w	$xr1, $a1, 1
	movfr2gr.s	$a1, $fa7
	xvpickve2gr.w	$a2, $xr5, 3
	movgr2fr.w	$fa7, $a2
	xvinsgr2vr.w	$xr1, $a1, 2
	movfr2gr.s	$a1, $fa7
	xvpickve2gr.w	$a2, $xr5, 4
	movgr2fr.w	$fa7, $a2
	xvinsgr2vr.w	$xr1, $a1, 3
	movfr2gr.s	$a1, $fa7
	xvpickve2gr.w	$a2, $xr5, 5
	movgr2fr.w	$fa7, $a2
	xvinsgr2vr.w	$xr1, $a1, 4
	movfr2gr.s	$a1, $fa7
	xvpickve2gr.w	$a2, $xr5, 6
	movgr2fr.w	$fa5, $a2
	xvinsgr2vr.w	$xr1, $a1, 5
	movfr2gr.s	$a1, $fa5
	xvpickve2gr.w	$a2, $xr6, 0
	movgr2fr.w	$fa5, $a2
	xvinsgr2vr.w	$xr1, $a1, 6
	movfr2gr.s	$a1, $fa5
	xvinsgr2vr.w	$xr1, $a1, 7
	xvst	$xr1, $a0, 0
	xvpickve2gr.w	$a1, $xr6, 1
	movgr2fr.w	$fa5, $a1
	fst.s	$fa5, $a0, 60
	xvpickve2gr.w	$a1, $xr6, 2
	movgr2fr.w	$fa5, $a1
	fst.s	$fa5, $a0, 92
	xvpickve2gr.w	$a1, $xr6, 3
	movgr2fr.w	$fa5, $a1
	fst.s	$fa5, $a0, 124
	xvpickve2gr.w	$a1, $xr6, 4
	movgr2fr.w	$fa5, $a1
	fst.s	$fa5, $a0, 156
	xvpickve2gr.w	$a1, $xr6, 5
	movgr2fr.w	$fa5, $a1
	xvpickve2gr.w	$a1, $xr6, 6
	movgr2fr.w	$fa7, $a1
	fst.s	$fa7, $a0, 220
	xvpickve2gr.w	$a1, $xr6, 7
	movgr2fr.w	$fa6, $a1
	fst.s	$fa6, $a0, 252
	xvld	$xr6, $a0, 224
	xvld	$xr7, $a0, 32
	xvld	$xr8, $a0, 192
	fst.s	$fa5, $a0, 188
	xvfadd.s	$xr5, $xr1, $xr6
	xvfsub.s	$xr1, $xr1, $xr6
	xvfadd.s	$xr6, $xr7, $xr8
	xvld	$xr9, $a0, 64
	xvld	$xr10, $a0, 160
	xvld	$xr11, $a0, 96
	xvld	$xr12, $a0, 128
	xvfsub.s	$xr7, $xr7, $xr8
	xvfadd.s	$xr8, $xr9, $xr10
	xvfsub.s	$xr9, $xr9, $xr10
	xvfadd.s	$xr10, $xr11, $xr12
	xvfsub.s	$xr11, $xr11, $xr12
	xvfadd.s	$xr12, $xr5, $xr10
	xvfsub.s	$xr5, $xr5, $xr10
	xvfadd.s	$xr10, $xr6, $xr8
	xvfsub.s	$xr6, $xr6, $xr8
	xvfadd.s	$xr8, $xr10, $xr12
	xvst	$xr8, $a0, 0
	xvfsub.s	$xr8, $xr12, $xr10
	xvst	$xr8, $a0, 128
	xvfadd.s	$xr6, $xr6, $xr5
	xvfmul.s	$xr6, $xr6, $xr0
	xvfadd.s	$xr8, $xr5, $xr6
	xvst	$xr8, $a0, 64
	xvfsub.s	$xr5, $xr5, $xr6
	xvst	$xr5, $a0, 192
	xvfadd.s	$xr5, $xr9, $xr11
	xvfadd.s	$xr6, $xr7, $xr9
	xvfadd.s	$xr7, $xr1, $xr7
	xvfsub.s	$xr8, $xr5, $xr7
	xvfmul.s	$xr2, $xr8, $xr2
	xvfmadd.s	$xr3, $xr5, $xr3, $xr2
	xvfmadd.s	$xr2, $xr7, $xr4, $xr2
	xvfmul.s	$xr0, $xr6, $xr0
	xvfadd.s	$xr4, $xr1, $xr0
	xvfsub.s	$xr0, $xr1, $xr0
	xvfadd.s	$xr1, $xr0, $xr3
	xvst	$xr1, $a0, 160
	xvfsub.s	$xr0, $xr0, $xr3
	xvst	$xr0, $a0, 96
	xvfadd.s	$xr0, $xr4, $xr2
	xvst	$xr0, $a0, 32
	xvfsub.s	$xr0, $xr4, $xr2
	xvst	$xr0, $a0, 224
	addi.d	$sp, $fp, -64
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end0:
	.size	jpeg_fdct_float, .Lfunc_end0-jpeg_fdct_float
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
