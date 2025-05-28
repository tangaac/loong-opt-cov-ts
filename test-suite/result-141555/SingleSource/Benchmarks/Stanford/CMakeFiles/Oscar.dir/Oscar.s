	.file	"Oscar.c"
	.text
	.globl	Initrand                        # -- Begin function Initrand
	.p2align	5
	.type	Initrand,@function
Initrand:                               # @Initrand
# %bb.0:
	pcalau12i	$a0, %pc_hi20(seed)
	lu12i.w	$a1, 18
	ori	$a1, $a1, 1027
	st.d	$a1, $a0, %pc_lo12(seed)
	ret
.Lfunc_end0:
	.size	Initrand, .Lfunc_end0-Initrand
                                        # -- End function
	.globl	Rand                            # -- Begin function Rand
	.p2align	5
	.type	Rand,@function
Rand:                                   # @Rand
# %bb.0:
	pcalau12i	$a1, %pc_hi20(seed)
	ld.d	$a0, $a1, %pc_lo12(seed)
	ori	$a2, $zero, 1309
	mul.d	$a0, $a0, $a2
	lu12i.w	$a2, 3
	ori	$a2, $a2, 1561
	add.d	$a0, $a0, $a2
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $a1, %pc_lo12(seed)
	ret
.Lfunc_end1:
	.size	Rand, .Lfunc_end1-Rand
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function Cos
.LCPI2_0:
	.word	0xc4340000                      # float -720
.LCPI2_1:
	.word	0x471d8000                      # float 40320
.LCPI2_2:
	.word	0xca5d7c00                      # float -3628800
	.text
	.globl	Cos
	.p2align	5
	.type	Cos,@function
Cos:                                    # @Cos
# %bb.0:
	fmul.s	$fa1, $fa0, $fa0
	vldi	$vr2, -1056
	fmul.s	$fa2, $fa1, $fa2
	vldi	$vr3, -1168
	fadd.s	$fa2, $fa2, $fa3
	fmul.s	$fa1, $fa0, $fa1
	fmul.s	$fa1, $fa0, $fa1
	vldi	$vr3, -1224
	fdiv.s	$fa3, $fa1, $fa3
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.s	$fa4, $a0, %pc_lo12(.LCPI2_0)
	fadd.s	$fa2, $fa2, $fa3
	fmul.s	$fa1, $fa0, $fa1
	fmul.s	$fa1, $fa0, $fa1
	fdiv.s	$fa3, $fa1, $fa4
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	fld.s	$fa4, $a0, %pc_lo12(.LCPI2_1)
	fadd.s	$fa2, $fa2, $fa3
	fmul.s	$fa1, $fa0, $fa1
	fmul.s	$fa1, $fa0, $fa1
	fdiv.s	$fa3, $fa1, $fa4
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	fld.s	$fa4, $a0, %pc_lo12(.LCPI2_2)
	fadd.s	$fa2, $fa2, $fa3
	fmul.s	$fa1, $fa0, $fa1
	fmul.s	$fa0, $fa0, $fa1
	fdiv.s	$fa0, $fa0, $fa4
	fadd.s	$fa0, $fa2, $fa0
	ret
.Lfunc_end2:
	.size	Cos, .Lfunc_end2-Cos
                                        # -- End function
	.globl	Min0                            # -- Begin function Min0
	.p2align	5
	.type	Min0,@function
Min0:                                   # @Min0
# %bb.0:
	slt	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	ret
.Lfunc_end3:
	.size	Min0, .Lfunc_end3-Min0
                                        # -- End function
	.globl	Printcomplex                    # -- Begin function Printcomplex
	.p2align	5
	.type	Printcomplex,@function
Printcomplex:                           # @Printcomplex
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	slli.d	$s4, $fp, 1
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s3, $a0, %pc_lo12(.L.str.1)
	.p2align	4, , 16
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	alsl.d	$a0, $s1, $s2, 3
	slli.d	$a1, $s1, 3
	fldx.s	$fa0, $s2, $a1
	fld.s	$fa1, $a0, 4
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	add.w	$a0, $fp, $s1
	alsl.d	$a1, $a0, $s2, 3
	slli.d	$a0, $a0, 3
	fldx.s	$fa0, $s2, $a0
	fld.s	$fa1, $a1, 4
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	add.w	$s1, $s1, $s4
	bge	$s0, $s1, .LBB4_1
# %bb.2:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end4:
	.size	Printcomplex, .Lfunc_end4-Printcomplex
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function Uniform11
.LCPI5_0:
	.word	0x39000000                      # float 1.22070313E-4
	.text
	.globl	Uniform11
	.p2align	5
	.type	Uniform11,@function
Uniform11:                              # @Uniform11
# %bb.0:
	ld.w	$a2, $a0, 0
	lu12i.w	$a3, 1
	ori	$a3, $a3, 759
	mul.d	$a2, $a2, $a3
	addi.d	$a2, $a2, 1731
	bstrpick.d	$a2, $a2, 12, 0
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	fld.s	$fa0, $a3, %pc_lo12(.LCPI5_0)
	st.w	$a2, $a0, 0
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $a1, 0
	ret
.Lfunc_end5:
	.size	Uniform11, .Lfunc_end5-Uniform11
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function Exptab
.LCPI6_0:
	.word	0x40490fdb                      # float 3.14159274
.LCPI6_1:
	.word	0xc4340000                      # float -720
.LCPI6_2:
	.word	0x471d8000                      # float 40320
.LCPI6_3:
	.word	0xca5d7c00                      # float -3628800
	.text
	.globl	Exptab
	.p2align	5
	.type	Exptab,@function
Exptab:                                 # @Exptab
# %bb.0:
	addi.d	$sp, $sp, -112
	ori	$a2, $zero, 4
	vldi	$vr0, -1264
	pcalau12i	$a3, %pc_hi20(.LCPI6_0)
	fld.s	$fa1, $a3, %pc_lo12(.LCPI6_0)
	vldi	$vr2, -1056
	vldi	$vr3, -1168
	pcalau12i	$a3, %pc_hi20(.LCPI6_1)
	fld.s	$fa4, $a3, %pc_lo12(.LCPI6_1)
	pcalau12i	$a3, %pc_hi20(.LCPI6_2)
	fld.s	$fa5, $a3, %pc_lo12(.LCPI6_2)
	pcalau12i	$a3, %pc_hi20(.LCPI6_3)
	fld.s	$fa6, $a3, %pc_lo12(.LCPI6_3)
	vldi	$vr7, -1224
	addi.d	$a3, $sp, 8
	ori	$a4, $zero, 104
	.p2align	4, , 16
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	fdiv.s	$ft0, $fa1, $fa0
	fmul.s	$ft1, $ft0, $ft0
	fmul.s	$ft2, $ft1, $fa2
	fadd.s	$ft2, $ft2, $fa3
	fmul.s	$ft1, $ft0, $ft1
	fmul.s	$ft1, $ft0, $ft1
	fdiv.s	$ft3, $ft1, $fa7
	fadd.s	$ft2, $ft2, $ft3
	fmul.s	$ft1, $ft0, $ft1
	fmul.s	$ft1, $ft0, $ft1
	fdiv.s	$ft3, $ft1, $fa4
	fadd.s	$ft2, $ft2, $ft3
	fmul.s	$ft1, $ft0, $ft1
	fmul.s	$ft1, $ft0, $ft1
	fdiv.s	$ft3, $ft1, $fa5
	fadd.s	$ft2, $ft2, $ft3
	fmul.s	$ft1, $ft0, $ft1
	fmul.s	$ft0, $ft0, $ft1
	fdiv.s	$ft0, $ft0, $fa6
	fadd.s	$ft0, $ft2, $ft0
	fadd.s	$ft0, $ft0, $ft0
	frecip.s	$ft0, $ft0
	fstx.s	$ft0, $a2, $a3
	addi.d	$a2, $a2, 4
	fadd.s	$fa0, $fa0, $fa0
	bne	$a2, $a4, .LBB6_1
# %bb.2:
	bstrpick.d	$a2, $a0, 31, 31
	add.w	$a2, $a0, $a2
	srai.d	$a2, $a2, 1
	bstrpick.d	$a3, $a0, 62, 61
	add.w	$a0, $a0, $a3
	srai.d	$a3, $a0, 2
	addi.d	$a0, $a1, 8
	lu12i.w	$a4, 260096
	st.d	$a4, $a1, 8
	alsl.d	$a4, $a3, $a1, 3
	lu52i.d	$a5, $zero, 1016
	st.d	$a5, $a4, 8
	alsl.d	$a1, $a2, $a1, 3
	lu12i.w	$a4, -264192
	lu32i.d	$a4, 0
	st.d	$a4, $a1, 8
	ori	$a5, $zero, 1
	addi.d	$a1, $sp, 8
	ori	$a4, $zero, 24
	ori	$a6, $zero, 3
	.p2align	4, , 16
.LBB6_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_4 Depth 2
	bstrpick.d	$a7, $a3, 31, 31
	add.w	$t0, $a3, $a7
	addi.w	$a7, $a3, 0
	srai.d	$a3, $t0, 1
	slli.d	$t0, $a5, 2
	fldx.s	$fa0, $t0, $a1
	slli.d	$t0, $a3, 4
	slli.d	$t1, $a7, 3
	slli.d	$t2, $a3, 3
	move	$t3, $a0
	move	$t4, $a3
	.p2align	4, , 16
.LBB6_4:                                #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa1, $t3, $t0
	fld.s	$fa2, $t3, 0
	add.d	$t5, $t3, $t0
	fadd.s	$fa1, $fa1, $fa2
	fld.s	$fa2, $t5, 4
	fld.s	$fa3, $t3, 4
	fmul.s	$fa1, $fa0, $fa1
	add.d	$t5, $t3, $t2
	fstx.s	$fa1, $t3, $t2
	fadd.s	$fa1, $fa2, $fa3
	fmul.s	$fa1, $fa0, $fa1
	fst.s	$fa1, $t5, 4
	add.d	$t4, $t4, $a7
	add.d	$t3, $t3, $t1
	bge	$a2, $t4, .LBB6_4
# %bb.5:                                #   in Loop: Header=BB6_3 Depth=1
	slti	$t0, $a5, 24
	masknez	$t1, $a4, $t0
	maskeqz	$a5, $a5, $t0
	or	$a5, $a5, $t1
	addi.w	$a5, $a5, 1
	blt	$a6, $a7, .LBB6_3
# %bb.6:
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end6:
	.size	Exptab, .Lfunc_end6-Exptab
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function Fft
.LCPI7_0:
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	0                               # 0x0
	.word	7                               # 0x7
.LCPI7_1:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	4                               # 0x4
	.text
	.globl	Fft
	.p2align	5
	.type	Fft,@function
Fft:                                    # @Fft
# %bb.0:
	addi.d	$sp, $sp, -304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	st.d	$s5, $sp, 240                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
                                        # kill: def $f0 killed $f0 def $vr0
	move	$a7, $a1
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a1, $a0, $a1
	srai.d	$a5, $a1, 1
	ori	$a6, $zero, 1
	slt	$a4, $a6, $a0
	masknez	$a1, $a6, $a4
	maskeqz	$a4, $a0, $a4
	or	$t0, $a4, $a1
	sub.d	$a4, $a7, $a2
	addi.d	$t1, $a2, 4
	addi.d	$t3, $a7, 4
	slli.d	$t2, $a5, 3
	st.d	$a5, $sp, 208                   # 8-byte Folded Spill
	alsl.d	$a1, $a5, $a7, 3
	addi.d	$a5, $a3, 8
	st.d	$a5, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a5, $a3, 12
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a5, $a2, 8
	st.d	$a5, $sp, 136                   # 8-byte Folded Spill
	addi.d	$s2, $a7, 8
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a1, $a1, 4
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a1, $a3, 16
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	slti	$a1, $a0, 4
	sltui	$a0, $a4, 32
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	bstrpick.d	$a0, $t0, 30, 2
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	srli.d	$a0, $t0, 2
	ori	$a1, $zero, 1
	bstrins.d	$a1, $a0, 30, 2
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $a7, 24
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a0, $a2, 24
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$t0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $t0, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$t0, $t3
	ori	$t6, $zero, 45
	st.d	$a7, $sp, 104                   # 8-byte Folded Spill
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	st.d	$s2, $sp, 112                   # 8-byte Folded Spill
	st.d	$t1, $sp, 184                   # 8-byte Folded Spill
	st.d	$t3, $sp, 192                   # 8-byte Folded Spill
	b	.LBB7_2
	.p2align	4, , 16
.LBB7_1:                                # %.loopexit
                                        #   in Loop: Header=BB7_2 Depth=1
	slli.w	$a6, $a6, 1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	blt	$a0, $a6, .LBB7_44
.LBB7_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
                                        #       Child Loop BB7_19 Depth 3
                                        #       Child Loop BB7_24 Depth 3
                                        #     Child Loop BB7_40 Depth 2
                                        #     Child Loop BB7_43 Depth 2
	move	$s7, $zero
	move	$s8, $zero
	move	$ra, $zero
	move	$s4, $zero
	slli.d	$a4, $a6, 3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a0, $a6, $a0, 3
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$s3, $a6, $a0, 3
	alsl.d	$a0, $a6, $t1, 3
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	move	$a0, $a6
	ori	$s6, $zero, 1
	st.d	$a6, $sp, 144                   # 8-byte Folded Spill
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB7_3:                                #   Parent Loop BB7_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_19 Depth 3
                                        #       Child Loop BB7_24 Depth 3
	addi.w	$a1, $s4, 0
	move	$s4, $a0
	slli.d	$s0, $s7, 3
	addi.w	$t3, $s6, 0
	slt	$a0, $t3, $a0
	masknez	$a2, $t3, $a0
	maskeqz	$a0, $s4, $a0
	or	$t8, $a0, $a2
	sub.d	$a0, $t8, $t3
	addi.d	$t7, $a0, 1
	alsl.d	$fp, $a1, $a3, 3
	bltu	$t7, $t6, .LBB7_23
# %bb.4:                                # %vector.memcheck113
                                        #   in Loop: Header=BB7_3 Depth=2
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	slli.d	$a0, $s6, 32
	mul.w	$s6, $a6, $ra
	mul.d	$t6, $a4, $s8
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.d	$s5, $a1, $t6
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t6
	srai.d	$t4, $a0, 29
	alsl.d	$a0, $s6, $t4, 3
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	add.d	$s0, $a2, $a0
	add.d	$s1, $t8, $s6
	alsl.d	$t1, $s1, $t1, 3
	add.d	$a4, $a1, $t4
	alsl.d	$a2, $t8, $s5, 3
	sltu	$a1, $s0, $a2
	sltu	$a5, $a4, $t1
	and	$a1, $a1, $a5
	bnez	$a1, .LBB7_37
# %bb.5:                                # %vector.memcheck113
                                        #   in Loop: Header=BB7_3 Depth=2
	add.d	$a5, $a7, $t4
	alsl.d	$s2, $t8, $t0, 3
	sltu	$a1, $s0, $s2
	sltu	$a6, $a5, $t1
	and	$a1, $a1, $a6
	bnez	$a1, .LBB7_36
# %bb.6:                                # %vector.memcheck113
                                        #   in Loop: Header=BB7_3 Depth=2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.d	$a1, $a1, $t4
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	add.d	$a7, $t8, $a3
	alsl.d	$t0, $a7, $t0, 3
	sltu	$a6, $s0, $t0
	sltu	$t5, $a1, $t1
	and	$a6, $a6, $t5
	bnez	$a6, .LBB7_35
# %bb.7:                                # %vector.memcheck113
                                        #   in Loop: Header=BB7_3 Depth=2
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$t5, $s6, $a3, 3
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a6, $s6, $a3, 3
	sltu	$a3, $s0, $t5
	sltu	$t1, $a6, $t1
	and	$a3, $a3, $t1
	bnez	$a3, .LBB7_35
# %bb.8:                                # %vector.memcheck113
                                        #   in Loop: Header=BB7_3 Depth=2
	sltu	$a3, $a4, $s2
	sltu	$a5, $a5, $a2
	and	$a3, $a3, $a5
	ld.d	$t1, $sp, 184                   # 8-byte Folded Reload
	bnez	$a3, .LBB7_33
# %bb.9:                                # %vector.memcheck113
                                        #   in Loop: Header=BB7_3 Depth=2
	sltu	$a3, $a4, $t0
	sltu	$a1, $a1, $a2
	and	$a1, $a3, $a1
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	bnez	$a1, .LBB7_32
# %bb.10:                               # %vector.memcheck113
                                        #   in Loop: Header=BB7_3 Depth=2
	sltu	$a1, $a4, $t5
	sltu	$a2, $a6, $a2
	and	$a1, $a1, $a2
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	bnez	$a1, .LBB7_30
# %bb.11:                               # %vector.memcheck113
                                        #   in Loop: Header=BB7_3 Depth=2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t6
	add.d	$a3, $t1, $a0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a4, $s1, $a0, 3
	add.d	$a0, $s5, $t4
	alsl.d	$a2, $t8, $a1, 3
	sltu	$a1, $a3, $a2
	sltu	$a5, $a0, $a4
	and	$a1, $a1, $a5
	bnez	$a1, .LBB7_30
# %bb.12:                               # %vector.memcheck113
                                        #   in Loop: Header=BB7_3 Depth=2
	add.d	$a1, $t0, $t4
	alsl.d	$a5, $t8, $s2, 3
	sltu	$a6, $a3, $a5
	sltu	$t0, $a1, $a4
	and	$a6, $a6, $t0
	ori	$t6, $zero, 45
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	bnez	$a6, .LBB7_28
# %bb.13:                               # %vector.memcheck113
                                        #   in Loop: Header=BB7_3 Depth=2
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	add.d	$t1, $a6, $t4
	alsl.d	$a6, $a7, $s2, 3
	sltu	$a7, $a3, $a6
	sltu	$t0, $t1, $a4
	and	$a7, $a7, $t0
	bnez	$a7, .LBB7_27
# %bb.14:                               # %vector.memcheck113
                                        #   in Loop: Header=BB7_3 Depth=2
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a7, $s6, $a7, 3
	sltu	$a3, $a3, $a7
	sltu	$a4, $t5, $a4
	and	$a3, $a3, $a4
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	bnez	$a3, .LBB7_26
# %bb.15:                               # %vector.memcheck113
                                        #   in Loop: Header=BB7_3 Depth=2
	sltu	$a3, $a0, $a5
	sltu	$a1, $a1, $a2
	and	$a1, $a3, $a1
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	bnez	$a1, .LBB7_22
# %bb.16:                               # %vector.memcheck113
                                        #   in Loop: Header=BB7_3 Depth=2
	sltu	$a1, $a0, $a6
	sltu	$a3, $t1, $a2
	and	$a1, $a1, $a3
	bnez	$a1, .LBB7_22
# %bb.17:                               # %vector.memcheck113
                                        #   in Loop: Header=BB7_3 Depth=2
	sltu	$a0, $a0, $a7
	sltu	$a1, $t5, $a2
	and	$a0, $a0, $a1
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 184                   # 8-byte Folded Reload
	bnez	$a0, .LBB7_21
# %bb.18:                               # %vector.ph205
                                        #   in Loop: Header=BB7_3 Depth=2
	andi	$a0, $t7, 3
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 4
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	sub.d	$a1, $t7, $a0
	add.d	$t7, $t3, $a1
	add.d	$a0, $a0, $t3
	nor	$a1, $t8, $zero
	add.d	$t4, $a1, $a0
	alsl.d	$t5, $t3, $s3, 3
	alsl.d	$a0, $t3, $s0, 3
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	add.d	$t8, $a1, $a0
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$t3, $t3, $a7, 3
	.p2align	4, , 16
.LBB7_19:                               # %vector.body208
                                        #   Parent Loop BB7_2 Depth=1
                                        #     Parent Loop BB7_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr1, $t3, 0
	vld	$vr2, $t3, 16
	add.d	$a0, $t3, $t2
	vld	$vr3, $a0, 16
	vldx	$vr4, $t3, $t2
	vfadd.s	$vr5, $vr2, $vr3
	vfadd.s	$vr6, $vr1, $vr4
	vst	$vr6, $t8, 0
	vst	$vr5, $t8, 16
	fld.s	$fa5, $fp, 8
	vfsub.s	$vr1, $vr1, $vr4
	vfsub.s	$vr2, $vr2, $vr3
	vpickev.w	$vr1, $vr2, $vr1
	fld.s	$fa2, $fp, 12
	vld	$vr3, $t3, 16
	vld	$vr4, $t3, 0
	vldx	$vr6, $t3, $t2
	vld	$vr7, $a0, 16
	vreplvei.w	$vr5, $vr5, 0
	vreplvei.w	$vr2, $vr2, 0
	vfsub.s	$vr4, $vr4, $vr6
	vfsub.s	$vr3, $vr3, $vr7
	vpickod.w	$vr6, $vr3, $vr4
	vbitrevi.w	$vr7, $vr6, 31
	vfmul.s	$vr7, $vr2, $vr7
	vfmadd.s	$vr1, $vr5, $vr1, $vr7
	vpickev.w	$vr3, $vr3, $vr4
	vfmul.s	$vr2, $vr2, $vr3
	vfmadd.s	$vr2, $vr5, $vr6, $vr2
	vilvl.w	$vr3, $vr2, $vr1
	vilvh.w	$vr1, $vr2, $vr1
	vst	$vr1, $t5, 16
	vst	$vr3, $t5, 0
	addi.d	$t4, $t4, 4
	addi.d	$t5, $t5, 32
	addi.d	$t8, $t8, 32
	addi.d	$t3, $t3, 32
	bnez	$t4, .LBB7_19
# %bb.20:                               #   in Loop: Header=BB7_3 Depth=2
	move	$t3, $t7
	b	.LBB7_23
.LBB7_21:                               #   in Loop: Header=BB7_3 Depth=2
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	b	.LBB7_23
.LBB7_22:                               #   in Loop: Header=BB7_3 Depth=2
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 184                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_23:                               # %scalar.ph203.preheader
                                        #   in Loop: Header=BB7_3 Depth=2
	alsl.d	$t4, $t3, $s3, 3
	alsl.d	$a0, $t3, $s0, 3
	add.d	$t5, $t1, $a0
	alsl.d	$t7, $t3, $a7, 3
	move	$s6, $t3
	.p2align	4, , 16
.LBB7_24:                               # %scalar.ph203
                                        #   Parent Loop BB7_2 Depth=1
                                        #     Parent Loop BB7_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.s	$fa1, $t7, 0
	add.d	$a0, $t7, $t2
	fldx.s	$fa2, $t7, $t2
	fld.s	$fa3, $t7, 4
	fld.s	$fa4, $a0, 4
	fadd.s	$fa1, $fa1, $fa2
	fst.s	$fa1, $t5, -4
	fadd.s	$fa1, $fa3, $fa4
	fld.s	$fa2, $t7, 0
	fldx.s	$fa3, $t7, $t2
	fst.s	$fa1, $t5, 0
	fld.s	$fa1, $t7, 4
	fld.s	$fa4, $a0, 4
	fsub.s	$fa2, $fa2, $fa3
	fld.s	$fa3, $fp, 12
	fld.s	$fa5, $fp, 8
	fsub.s	$fa1, $fa1, $fa4
	fneg.s	$fa4, $fa1
	fmul.s	$fa4, $fa3, $fa4
	fmadd.s	$fa2, $fa5, $fa2, $fa4
	fst.s	$fa2, $t4, 0
	fld.s	$fa2, $t7, 0
	fldx.s	$fa4, $t7, $t2
	fld.s	$fa5, $fp, 8
	move	$a0, $s6
	fsub.s	$fa2, $fa2, $fa4
	fmul.s	$fa2, $fa3, $fa2
	fmadd.s	$fa1, $fa5, $fa1, $fa2
	fst.s	$fa1, $t4, 4
	addi.d	$s6, $s6, 1
	addi.d	$t4, $t4, 8
	addi.d	$t5, $t5, 8
	addi.d	$t7, $t7, 8
	blt	$a0, $s4, .LBB7_24
# %bb.25:                               #   in Loop: Header=BB7_3 Depth=2
	add.d	$a0, $s4, $a6
	addi.d	$ra, $ra, 1
	addi.d	$s8, $s8, 1
	add.d	$s3, $s3, $a4
	add.w	$s7, $s7, $a6
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB7_3
	b	.LBB7_38
.LBB7_26:                               #   in Loop: Header=BB7_3 Depth=2
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	b	.LBB7_23
.LBB7_27:                               #   in Loop: Header=BB7_3 Depth=2
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 184                   # 8-byte Folded Reload
	b	.LBB7_29
.LBB7_28:                               #   in Loop: Header=BB7_3 Depth=2
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
.LBB7_29:                               # %scalar.ph203.preheader
                                        #   in Loop: Header=BB7_3 Depth=2
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	b	.LBB7_23
.LBB7_30:                               #   in Loop: Header=BB7_3 Depth=2
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
.LBB7_31:                               # %scalar.ph203.preheader
                                        #   in Loop: Header=BB7_3 Depth=2
	ori	$t6, $zero, 45
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	b	.LBB7_23
.LBB7_32:                               #   in Loop: Header=BB7_3 Depth=2
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	b	.LBB7_34
.LBB7_33:                               #   in Loop: Header=BB7_3 Depth=2
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
.LBB7_34:                               # %scalar.ph203.preheader
                                        #   in Loop: Header=BB7_3 Depth=2
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	b	.LBB7_31
.LBB7_35:                               #   in Loop: Header=BB7_3 Depth=2
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	b	.LBB7_31
.LBB7_36:                               #   in Loop: Header=BB7_3 Depth=2
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
.LBB7_37:                               #   in Loop: Header=BB7_3 Depth=2
	ld.d	$t1, $sp, 184                   # 8-byte Folded Reload
	b	.LBB7_31
	.p2align	4, , 16
.LBB7_38:                               # %.preheader95.preheader
                                        #   in Loop: Header=BB7_2 Depth=1
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bnez	$a0, .LBB7_42
# %bb.39:                               # %vector.body.preheader
                                        #   in Loop: Header=BB7_2 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_40:                               # %vector.body
                                        #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $a1, -16
	vld	$vr2, $a1, 0
	vst	$vr1, $a2, -16
	vst	$vr2, $a2, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB7_40
# %bb.41:                               # %middle.block
                                        #   in Loop: Header=BB7_2 Depth=1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB7_1
.LBB7_42:                               # %.preheader95.preheader253
                                        #   in Loop: Header=BB7_2 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 3
	alsl.d	$a1, $a2, $a7, 3
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a2, $a4, $a2
	.p2align	4, , 16
.LBB7_43:                               # %.preheader95
                                        #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a0, 0
	st.d	$a4, $a1, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB7_43
	b	.LBB7_1
.LBB7_44:                               # %.preheader
	ori	$a0, $zero, 1
	ld.d	$a4, $sp, 0                     # 8-byte Folded Reload
	blt	$a4, $a0, .LBB7_51
# %bb.45:                               # %.lr.ph
	ori	$a1, $zero, 4
	fneg.s	$fa1, $fa0
	bltu	$a4, $a1, .LBB7_49
# %bb.46:                               # %vector.ph235
	bstrpick.d	$a0, $a4, 30, 2
	slli.d	$a2, $a0, 2
	pcalau12i	$a0, %pc_hi20(.LCPI7_0)
	vld	$vr2, $a0, %pc_lo12(.LCPI7_0)
	pcalau12i	$a0, %pc_hi20(.LCPI7_1)
	vld	$vr3, $a0, %pc_lo12(.LCPI7_1)
	srli.d	$a1, $a4, 2
	ori	$a0, $zero, 1
	bstrins.d	$a0, $a1, 30, 2
	move	$a3, $a2
	.p2align	4, , 16
.LBB7_47:                               # %vector.body242
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $s2, 0
	vld	$vr5, $s2, 16
	vori.b	$vr6, $vr2, 0
	vshuf.w	$vr6, $vr4, $vr0
	vori.b	$vr7, $vr2, 0
	vshuf.w	$vr7, $vr5, $vr0
	vori.b	$vr8, $vr3, 0
	vshuf.w	$vr8, $vr1, $vr4
	vori.b	$vr4, $vr3, 0
	vshuf.w	$vr4, $vr1, $vr5
	vfmul.s	$vr4, $vr7, $vr4
	vfmul.s	$vr5, $vr6, $vr8
	vst	$vr5, $s2, 0
	vst	$vr4, $s2, 16
	addi.d	$a3, $a3, -4
	addi.d	$s2, $s2, 32
	bnez	$a3, .LBB7_47
# %bb.48:                               # %middle.block250
	beq	$a2, $a4, .LBB7_51
.LBB7_49:                               # %scalar.ph233.preheader
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a1, 31, 0
	alsl.d	$a1, $a0, $a7, 3
	addi.d	$a1, $a1, 4
	sub.d	$a0, $a2, $a0
	.p2align	4, , 16
.LBB7_50:                               # %scalar.ph233
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa2, $a1, -4
	fld.s	$fa3, $a1, 0
	fmul.s	$fa2, $fa0, $fa2
	fst.s	$fa2, $a1, -4
	fmul.s	$fa2, $fa3, $fa1
	fst.s	$fa2, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB7_50
.LBB7_51:                               # %._crit_edge
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ret
.Lfunc_end7:
	.size	Fft, .Lfunc_end7-Fft
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function Oscar
.LCPI8_0:
	.word	0x39000000                      # float 1.22070313E-4
.LCPI8_1:
	.word	0x3d800000                      # float 0.0625
	.text
	.globl	Oscar
	.p2align	5
	.type	Oscar,@function
Oscar:                                  # @Oscar
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(e)
	addi.d	$a1, $a0, %pc_lo12(e)
	ori	$a0, $zero, 256
	pcaddu18i	$ra, %call36(Exptab)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	lu12i.w	$a1, 1
	ori	$a2, $a1, 1671
	ori	$a1, $a1, 759
	pcalau12i	$a3, %pc_hi20(.LCPI8_0)
	fld.s	$fa0, $a3, %pc_lo12(.LCPI8_0)
	vldi	$vr1, -1116
	vldi	$vr2, -1228
	pcalau12i	$a3, %pc_hi20(z)
	addi.d	$fp, $a3, %pc_lo12(z)
	ori	$a3, $zero, 2048
	.p2align	4, , 16
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	mul.d	$a2, $a2, $a1
	addi.d	$a2, $a2, 1731
	bstrpick.d	$a4, $a2, 12, 0
	movgr2fr.w	$fa3, $a4
	ffint.s.w	$fa3, $fa3
	fmul.s	$fa3, $fa3, $fa0
	mul.d	$a2, $a2, $a1
	addi.d	$a2, $a2, 1731
	bstrpick.d	$a2, $a2, 12, 0
	movgr2fr.w	$fa4, $a2
	ffint.s.w	$fa4, $fa4
	fmul.s	$fa4, $fa4, $fa0
	fmadd.s	$fa5, $fa3, $fa2, $fa1
	add.d	$a4, $fp, $a0
	fst.s	$fa5, $a4, 8
	fmadd.s	$fa5, $fa4, $fa2, $fa1
	addi.d	$a0, $a0, 8
	fst.s	$fa5, $a4, 12
	bne	$a0, $a3, .LBB8_1
# %bb.2:                                # %.preheader
	pcalau12i	$a0, %pc_hi20(seed)
	st.d	$a2, $a0, %pc_lo12(seed)
	pcalau12i	$a0, %pc_hi20(zr)
	fst.s	$fa3, $a0, %pc_lo12(zr)
	pcalau12i	$a0, %pc_hi20(zi)
	fst.s	$fa4, $a0, %pc_lo12(zi)
	pcalau12i	$a0, %pc_hi20(w)
	addi.d	$s0, $a0, %pc_lo12(w)
	pcalau12i	$a0, %pc_hi20(.LCPI8_1)
	fld.s	$fs0, $a0, %pc_lo12(.LCPI8_1)
	pcalau12i	$a0, %pc_hi20(e)
	addi.d	$s1, $a0, %pc_lo12(e)
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 256
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(Fft)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 8
	fld.s	$fa1, $fp, 12
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s0, $a0, %pc_lo12(.L.str.1)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 144
	fld.s	$fa1, $fp, 148
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 280
	fld.s	$fa1, $fp, 284
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 416
	fld.s	$fa1, $fp, 420
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 552
	fld.s	$fa1, $fp, 556
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 688
	fld.s	$fa1, $fp, 692
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 824
	fld.s	$fa1, $fp, 828
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 960
	fld.s	$fa1, $fp, 964
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 1096
	fld.s	$fa1, $fp, 1100
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 1232
	fld.s	$fa1, $fp, 1236
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 1368
	fld.s	$fa1, $fp, 1372
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 1504
	fld.s	$fa1, $fp, 1508
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 1640
	fld.s	$fa1, $fp, 1644
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 1776
	fld.s	$fa1, $fp, 1780
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 1912
	fld.s	$fa1, $fp, 1916
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2048
	fldx.s	$fa0, $fp, $a0
	ori	$a0, $zero, 2052
	fldx.s	$fa1, $fp, $a0
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(putchar)
	jr	$t8
.Lfunc_end8:
	.size	Oscar, .Lfunc_end8-Oscar
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(Oscar)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(Oscar)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(Oscar)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(Oscar)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(Oscar)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(Oscar)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(Oscar)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(Oscar)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(Oscar)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(Oscar)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end9:
	.size	main, .Lfunc_end9-main
                                        # -- End function
	.type	seed,@object                    # @seed
	.bss
	.globl	seed
	.p2align	3, 0x0
seed:
	.dword	0                               # 0x0
	.size	seed, 8

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"  %15.3f%15.3f"
	.size	.L.str.1, 15

	.type	e,@object                       # @e
	.bss
	.globl	e
	.p2align	2, 0x0
e:
	.space	1040
	.size	e, 1040

	.type	zr,@object                      # @zr
	.globl	zr
	.p2align	2, 0x0
zr:
	.word	0x00000000                      # float 0
	.size	zr, 4

	.type	zi,@object                      # @zi
	.globl	zi
	.p2align	2, 0x0
zi:
	.word	0x00000000                      # float 0
	.size	zi, 4

	.type	z,@object                       # @z
	.globl	z
	.p2align	2, 0x0
z:
	.space	2056
	.size	z, 2056

	.type	w,@object                       # @w
	.globl	w
	.p2align	2, 0x0
w:
	.space	2056
	.size	w, 2056

	.type	value,@object                   # @value
	.globl	value
	.p2align	2, 0x0
value:
	.word	0x00000000                      # float 0
	.size	value, 4

	.type	fixed,@object                   # @fixed
	.globl	fixed
	.p2align	2, 0x0
fixed:
	.word	0x00000000                      # float 0
	.size	fixed, 4

	.type	floated,@object                 # @floated
	.globl	floated
	.p2align	2, 0x0
floated:
	.word	0x00000000                      # float 0
	.size	floated, 4

	.type	permarray,@object               # @permarray
	.globl	permarray
	.p2align	2, 0x0
permarray:
	.space	44
	.size	permarray, 44

	.type	pctr,@object                    # @pctr
	.globl	pctr
	.p2align	2, 0x0
pctr:
	.word	0                               # 0x0
	.size	pctr, 4

	.type	tree,@object                    # @tree
	.globl	tree
	.p2align	3, 0x0
tree:
	.dword	0
	.size	tree, 8

	.type	stack,@object                   # @stack
	.globl	stack
	.p2align	2, 0x0
stack:
	.space	16
	.size	stack, 16

	.type	cellspace,@object               # @cellspace
	.globl	cellspace
	.p2align	2, 0x0
cellspace:
	.space	152
	.size	cellspace, 152

	.type	freelist,@object                # @freelist
	.globl	freelist
	.p2align	2, 0x0
freelist:
	.word	0                               # 0x0
	.size	freelist, 4

	.type	movesdone,@object               # @movesdone
	.globl	movesdone
	.p2align	2, 0x0
movesdone:
	.word	0                               # 0x0
	.size	movesdone, 4

	.type	ima,@object                     # @ima
	.globl	ima
	.p2align	2, 0x0
ima:
	.space	6724
	.size	ima, 6724

	.type	imb,@object                     # @imb
	.globl	imb
	.p2align	2, 0x0
imb:
	.space	6724
	.size	imb, 6724

	.type	imr,@object                     # @imr
	.globl	imr
	.p2align	2, 0x0
imr:
	.space	6724
	.size	imr, 6724

	.type	rma,@object                     # @rma
	.globl	rma
	.p2align	2, 0x0
rma:
	.space	6724
	.size	rma, 6724

	.type	rmb,@object                     # @rmb
	.globl	rmb
	.p2align	2, 0x0
rmb:
	.space	6724
	.size	rmb, 6724

	.type	rmr,@object                     # @rmr
	.globl	rmr
	.p2align	2, 0x0
rmr:
	.space	6724
	.size	rmr, 6724

	.type	piececount,@object              # @piececount
	.globl	piececount
	.p2align	2, 0x0
piececount:
	.space	16
	.size	piececount, 16

	.type	class,@object                   # @class
	.globl	class
	.p2align	2, 0x0
class:
	.space	52
	.size	class, 52

	.type	piecemax,@object                # @piecemax
	.globl	piecemax
	.p2align	2, 0x0
piecemax:
	.space	52
	.size	piecemax, 52

	.type	puzzl,@object                   # @puzzl
	.globl	puzzl
	.p2align	2, 0x0
puzzl:
	.space	2048
	.size	puzzl, 2048

	.type	p,@object                       # @p
	.globl	p
	.p2align	2, 0x0
p:
	.space	26624
	.size	p, 26624

	.type	n,@object                       # @n
	.globl	n
	.p2align	2, 0x0
n:
	.word	0                               # 0x0
	.size	n, 4

	.type	kount,@object                   # @kount
	.globl	kount
	.p2align	2, 0x0
kount:
	.word	0                               # 0x0
	.size	kount, 4

	.type	sortlist,@object                # @sortlist
	.globl	sortlist
	.p2align	2, 0x0
sortlist:
	.space	20004
	.size	sortlist, 20004

	.type	biggest,@object                 # @biggest
	.globl	biggest
	.p2align	2, 0x0
biggest:
	.word	0                               # 0x0
	.size	biggest, 4

	.type	littlest,@object                # @littlest
	.globl	littlest
	.p2align	2, 0x0
littlest:
	.word	0                               # 0x0
	.size	littlest, 4

	.type	top,@object                     # @top
	.globl	top
	.p2align	2, 0x0
top:
	.word	0                               # 0x0
	.size	top, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym e
	.addrsig_sym z
	.addrsig_sym w
