	.file	"btBoxBoxDetector.cpp"
	.text
	.globl	_ZN16btBoxBoxDetectorC2EP10btBoxShapeS1_ # -- Begin function _ZN16btBoxBoxDetectorC2EP10btBoxShapeS1_
	.p2align	5
	.type	_ZN16btBoxBoxDetectorC2EP10btBoxShapeS1_,@function
_ZN16btBoxBoxDetectorC2EP10btBoxShapeS1_: # @_ZN16btBoxBoxDetectorC2EP10btBoxShapeS1_
# %bb.0:
	pcalau12i	$a3, %pc_hi20(_ZTV16btBoxBoxDetector+16)
	addi.d	$a3, $a3, %pc_lo12(_ZTV16btBoxBoxDetector+16)
	st.d	$a3, $a0, 0
	st.d	$a1, $a0, 8
	st.d	$a2, $a0, 16
	ret
.Lfunc_end0:
	.size	_ZN16btBoxBoxDetectorC2EP10btBoxShapeS1_, .Lfunc_end0-_ZN16btBoxBoxDetectorC2EP10btBoxShapeS1_
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z20dLineClosestApproachRK9btVector3S1_S1_S1_PfS2_
.LCPI1_0:
	.word	0x38d1b717                      # float 9.99999974E-5
	.text
	.globl	_Z20dLineClosestApproachRK9btVector3S1_S1_S1_PfS2_
	.p2align	5
	.type	_Z20dLineClosestApproachRK9btVector3S1_S1_S1_PfS2_,@function
_Z20dLineClosestApproachRK9btVector3S1_S1_S1_PfS2_: # @_Z20dLineClosestApproachRK9btVector3S1_S1_S1_PfS2_
# %bb.0:
	fld.s	$fa0, $a1, 0
	fld.s	$fa2, $a3, 0
	fld.s	$fa1, $a1, 4
	fld.s	$fa6, $a3, 4
	fld.s	$fa4, $a1, 8
	fld.s	$fa5, $a3, 8
	fmul.s	$fa3, $fa1, $fa6
	fmadd.s	$fa7, $fa0, $fa2, $fa3
	fmadd.s	$fa3, $fa4, $fa5, $fa7
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	fld.s	$ft0, $a1, %pc_lo12(.LCPI1_0)
	fnmadd.s	$fa7, $fa4, $fa5, $fa7
	vldi	$vr9, -1168
	fmadd.s	$fa7, $fa7, $fa3, $ft1
	fcmp.cle.s	$fcc0, $fa7, $ft0
	bcnez	$fcc0, .LBB1_2
# %bb.1:
	fld.s	$ft0, $a2, 8
	fld.s	$ft1, $a0, 8
	fld.s	$ft2, $a2, 0
	fld.s	$ft3, $a0, 0
	fld.s	$ft4, $a2, 4
	fld.s	$ft5, $a0, 4
	fsub.s	$ft0, $ft0, $ft1
	fsub.s	$ft1, $ft2, $ft3
	fsub.s	$ft2, $ft4, $ft5
	fmul.s	$fa6, $fa6, $ft2
	fmadd.s	$fa2, $fa2, $ft1, $fa6
	fmadd.s	$fa6, $fa5, $ft0, $fa2
	fmul.s	$fa1, $fa1, $ft2
	fmadd.s	$fa0, $fa0, $ft1, $fa1
	fmadd.s	$fa1, $fa4, $ft0, $fa0
	fnmadd.s	$fa0, $fa5, $ft0, $fa2
	frecip.s	$fa2, $fa7
	fmadd.s	$fa0, $fa3, $fa0, $fa1
	fmul.s	$fa0, $fa2, $fa0
	fmsub.s	$fa1, $fa3, $fa1, $fa6
	fmul.s	$fa1, $fa2, $fa1
	fst.s	$fa0, $a4, 0
	fst.s	$fa1, $a5, 0
	ret
.LBB1_2:
	movgr2fr.w	$fa0, $zero
	fmov.s	$fa1, $fa0
	fst.s	$fa0, $a4, 0
	fst.s	$fa1, $a5, 0
	ret
.Lfunc_end1:
	.size	_Z20dLineClosestApproachRK9btVector3S1_S1_S1_PfS2_, .Lfunc_end1-_Z20dLineClosestApproachRK9btVector3S1_S1_S1_PfS2_
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z11cullPoints2iPfiiPi
.LCPI2_0:
	.word	0x5d5e0b6b                      # float 9.99999984E+17
.LCPI2_1:
	.word	0x34000000                      # float 1.1920929E-7
.LCPI2_2:
	.word	0x40c90fdb                      # float 6.28318548
.LCPI2_3:
	.word	0xc0c90fdb                      # float -6.28318548
.LCPI2_4:
	.word	0x40490fdb                      # float 3.14159274
.LCPI2_5:
	.word	0x4e6e6b28                      # float 1.0E+9
	.text
	.globl	_Z11cullPoints2iPfiiPi
	.p2align	5
	.type	_Z11cullPoints2iPfiiPi,@function
_Z11cullPoints2iPfiiPi:                 # @_Z11cullPoints2iPfiiPi
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 64                   # 8-byte Folded Spill
	ori	$a5, $zero, 1
	move	$s1, $a4
	move	$fp, $a3
	move	$s0, $a2
	move	$s2, $a0
	beq	$a0, $a5, .LBB2_3
# %bb.1:
	ori	$a0, $zero, 2
	bne	$s2, $a0, .LBB2_4
# %bb.2:
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a1, 8
	fld.s	$fa2, $a1, 4
	fld.s	$fa3, $a1, 12
	fadd.s	$fa0, $fa0, $fa1
	vldi	$vr1, -1184
	fmul.s	$fs0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa3
	fmul.s	$fs1, $fa0, $fa1
	b	.LBB2_13
.LBB2_3:
	fld.s	$fs0, $a1, 0
	fld.s	$fs1, $a1, 4
	b	.LBB2_13
.LBB2_4:                                # %.preheader
	blt	$s2, $a0, .LBB2_7
# %bb.5:                                # %.lr.ph.preheader
	addi.w	$a0, $s2, -1
	movgr2fr.w	$fa0, $zero
	addi.d	$a2, $a1, 8
	fmov.s	$fa1, $fa0
	fmov.s	$fa2, $fa0
	.p2align	4, , 16
.LBB2_6:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $a2, -8
	fld.s	$fa4, $a2, -4
	fld.s	$fa5, $a2, 0
	fld.s	$fa6, $a2, 4
	fneg.s	$fa7, $fa4
	fmul.s	$fa7, $fa5, $fa7
	fmadd.s	$fa7, $fa3, $fa6, $fa7
	fadd.s	$fa2, $fa2, $fa7
	fadd.s	$fa3, $fa3, $fa5
	fmadd.s	$fa1, $fa7, $fa3, $fa1
	fadd.s	$fa3, $fa6, $fa4
	fmadd.s	$fa0, $fa7, $fa3, $fa0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB2_6
	b	.LBB2_8
.LBB2_7:
	movgr2fr.w	$fa2, $zero
	fmov.s	$fa1, $fa2
	fmov.s	$fa0, $fa2
.LBB2_8:                                # %._crit_edge
	slli.w	$a0, $s2, 1
	alsl.d	$a0, $a0, $a1, 2
	fld.s	$fa3, $a0, -4
	fld.s	$fa5, $a1, 0
	fld.s	$fa6, $a0, -8
	fld.s	$fa4, $a1, 4
	fneg.s	$fa7, $fa3
	fmul.s	$fa7, $fa5, $fa7
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	fld.s	$ft0, $a0, %pc_lo12(.LCPI2_1)
	fmadd.s	$fa7, $fa6, $fa4, $fa7
	fadd.s	$fa2, $fa2, $fa7
	fabs.s	$ft1, $fa2
	fcmp.cule.s	$fcc0, $ft1, $ft0
	bcnez	$fcc0, .LBB2_11
# %bb.9:
	vldi	$vr8, -1272
	fmul.s	$fa2, $fa2, $ft0
	frecip.s	$fa2, $fa2
	bgtz	$s2, .LBB2_12
.LBB2_10:                               # %._crit_edge125.thread
	move	$a1, $zero
	b	.LBB2_22
.LBB2_11:
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.s	$fa2, $a0, %pc_lo12(.LCPI2_0)
	blez	$s2, .LBB2_10
.LBB2_12:
	fadd.s	$fa5, $fa6, $fa5
	fmadd.s	$fa1, $fa7, $fa5, $fa1
	fmul.s	$fs0, $fa1, $fa2
	fadd.s	$fa1, $fa4, $fa3
	fmadd.s	$fa0, $fa7, $fa1, $fa0
	fmul.s	$fs1, $fa0, $fa2
.LBB2_13:                               # %.lr.ph124.preheader
	addi.d	$s3, $a1, 4
	addi.d	$s4, $sp, 32
	move	$s5, $s2
	.p2align	4, , 16
.LBB2_14:                               # %.lr.ph124
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $s3, 0
	fld.s	$fa1, $s3, -4
	fsub.s	$fa0, $fa0, $fs1
	fsub.s	$fa1, $fa1, $fs0
	pcaddu18i	$ra, %call36(atan2f)
	jirl	$ra, $ra, 0
	fst.s	$fa0, $s4, 0
	addi.d	$s3, $s3, 8
	addi.d	$s5, $s5, -1
	addi.d	$s4, $s4, 4
	bnez	$s5, .LBB2_14
# %bb.15:                               # %._crit_edge125
	ori	$a0, $zero, 8
	bgeu	$s2, $a0, .LBB2_17
# %bb.16:
	move	$a0, $zero
	b	.LBB2_20
.LBB2_17:                               # %vector.ph
	bstrpick.d	$a0, $s2, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a1, $sp, 16
	vrepli.w	$vr0, 1
	move	$a2, $a0
	.p2align	4, , 16
.LBB2_18:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a1, -16
	vst	$vr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB2_18
# %bb.19:                               # %middle.block
	ori	$a1, $zero, 1
	beq	$a0, $s2, .LBB2_22
.LBB2_20:                               # %.lr.ph128.preheader
	addi.d	$a1, $sp, 0
	alsl.d	$a2, $a0, $a1, 2
	sub.d	$a0, $s2, $a0
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB2_21:                               # %.lr.ph128
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a1, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB2_21
.LBB2_22:                               # %._crit_edge129
	slli.d	$a0, $fp, 2
	addi.d	$a2, $sp, 0
	stx.w	$zero, $a0, $a2
	ori	$a0, $zero, 2
	st.w	$fp, $s1, 0
	blt	$s0, $a0, .LBB2_37
# %bb.23:                               # %.lr.ph139
	addi.d	$a0, $s1, 4
	beqz	$a1, .LBB2_31
# %bb.24:                               # %.lr.ph133.us.preheader
	pcalau12i	$a1, %pc_hi20(.LCPI2_2)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI2_2)
	bstrpick.d	$a1, $s0, 31, 0
	movgr2fr.d	$fa1, $a1
	ffint.s.l	$fa1, $fa1
	fdiv.s	$fa1, $fa0, $fa1
	slli.d	$a1, $fp, 2
	addi.d	$a2, $sp, 32
	fldx.s	$fa2, $a1, $a2
	pcalau12i	$a1, %pc_hi20(.LCPI2_3)
	fld.s	$fa3, $a1, %pc_lo12(.LCPI2_3)
	pcalau12i	$a1, %pc_hi20(.LCPI2_4)
	fld.s	$fa4, $a1, %pc_lo12(.LCPI2_4)
	pcalau12i	$a1, %pc_hi20(.LCPI2_5)
	fld.s	$fa5, $a1, %pc_lo12(.LCPI2_5)
	bstrpick.d	$a1, $s2, 31, 0
	ori	$a2, $zero, 1
	addi.d	$a3, $sp, 0
	b	.LBB2_26
	.p2align	4, , 16
.LBB2_25:                               # %._crit_edge134.us
                                        #   in Loop: Header=BB2_26 Depth=1
	slli.d	$a4, $t0, 2
	stx.w	$zero, $a4, $a3
	addi.w	$a2, $a2, 1
	addi.d	$a0, $a0, 4
	beq	$a2, $s0, .LBB2_37
.LBB2_26:                               # %.lr.ph133.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_28 Depth 2
	move	$a4, $zero
	bstrpick.d	$a5, $a2, 31, 0
	movgr2fr.d	$fa6, $a5
	ffint.s.l	$fa6, $fa6
	fmadd.s	$fa6, $fa6, $fa1, $fa2
	fadd.s	$fa7, $fa6, $fa3
	fcmp.clt.s	$fcc0, $fa4, $fa6
	fsel	$fa6, $fa6, $fa7, $fcc0
	st.w	$fp, $a0, 0
	addi.d	$a5, $sp, 32
	move	$a6, $a1
	addi.d	$a7, $sp, 0
	move	$t0, $fp
	fmov.s	$fa7, $fa5
	b	.LBB2_28
	.p2align	4, , 16
.LBB2_27:                               #   in Loop: Header=BB2_28 Depth=2
	addi.w	$a4, $a4, 1
	addi.d	$a7, $a7, 4
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 4
	beqz	$a6, .LBB2_25
.LBB2_28:                               #   Parent Loop BB2_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $a7, 0
	beqz	$t1, .LBB2_27
# %bb.29:                               #   in Loop: Header=BB2_28 Depth=2
	fld.s	$ft0, $a5, 0
	fsub.s	$ft0, $ft0, $fa6
	fabs.s	$ft0, $ft0
	fsub.s	$ft1, $fa0, $ft0
	fcmp.clt.s	$fcc0, $fa4, $ft0
	fsel	$ft0, $ft0, $ft1, $fcc0
	fcmp.cule.s	$fcc0, $fa7, $ft0
	bcnez	$fcc0, .LBB2_27
# %bb.30:                               #   in Loop: Header=BB2_28 Depth=2
	st.w	$a4, $a0, 0
	move	$t0, $a4
	fmov.s	$fa7, $ft0
	b	.LBB2_27
.LBB2_31:                               # %.lr.ph139.split.preheader
	ori	$a2, $zero, 9
	ori	$a1, $zero, 1
	bltu	$s0, $a2, .LBB2_35
# %bb.32:                               # %vector.ph173
	addi.d	$a1, $s0, -1
	bstrpick.d	$a2, $a1, 31, 0
	bstrpick.d	$a1, $a2, 31, 3
	slli.d	$a3, $a1, 3
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
	srli.d	$a4, $a2, 3
	ori	$a1, $zero, 1
	bstrins.d	$a1, $a4, 31, 3
	vreplgr2vr.w	$vr0, $fp
	addi.d	$a4, $s1, 20
	move	$a5, $a3
	.p2align	4, , 16
.LBB2_33:                               # %vector.body176
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a4, -16
	vst	$vr0, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB2_33
# %bb.34:                               # %middle.block179
	beq	$a3, $a2, .LBB2_37
.LBB2_35:                               # %.lr.ph139.split.preheader183
	sub.d	$a1, $s0, $a1
	.p2align	4, , 16
.LBB2_36:                               # %.lr.ph139.split
                                        # =>This Inner Loop Header: Depth=1
	st.w	$fp, $a0, 0
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB2_36
.LBB2_37:                               # %._crit_edge140
	fld.d	$fs1, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 72                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end2:
	.size	_Z11cullPoints2iPfiiPi, .Lfunc_end2-_Z11cullPoints2iPfiiPi
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z8dBoxBox2RK9btVector3PKfS1_S1_S3_S1_RS_PfPiiP12dContactGeomiRN36btDiscreteCollisionDetectorInterface6ResultE
.LCPI3_0:
	.word	0xff7fffff                      # float -3.40282347E+38
.LCPI3_1:
	.word	0x3f866666                      # float 1.04999995
	.text
	.globl	_Z8dBoxBox2RK9btVector3PKfS1_S1_S3_S1_RS_PfPiiP12dContactGeomiRN36btDiscreteCollisionDetectorInterface6ResultE
	.p2align	5
	.type	_Z8dBoxBox2RK9btVector3PKfS1_S1_S3_S1_RS_PfPiiP12dContactGeomiRN36btDiscreteCollisionDetectorInterface6ResultE,@function
_Z8dBoxBox2RK9btVector3PKfS1_S1_S3_S1_RS_PfPiiP12dContactGeomiRN36btDiscreteCollisionDetectorInterface6ResultE: # @_Z8dBoxBox2RK9btVector3PKfS1_S1_S3_S1_RS_PfPiiP12dContactGeomiRN36btDiscreteCollisionDetectorInterface6ResultE
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -592
	.cfi_def_cfa_offset 592
	st.d	$ra, $sp, 584                   # 8-byte Folded Spill
	st.d	$fp, $sp, 576                   # 8-byte Folded Spill
	st.d	$s0, $sp, 568                   # 8-byte Folded Spill
	st.d	$s1, $sp, 560                   # 8-byte Folded Spill
	st.d	$s2, $sp, 552                   # 8-byte Folded Spill
	st.d	$s3, $sp, 544                   # 8-byte Folded Spill
	st.d	$s4, $sp, 536                   # 8-byte Folded Spill
	st.d	$s5, $sp, 528                   # 8-byte Folded Spill
	st.d	$s6, $sp, 520                   # 8-byte Folded Spill
	st.d	$s7, $sp, 512                   # 8-byte Folded Spill
	st.d	$s8, $sp, 504                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 496                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 488                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 480                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 472                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 464                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 456                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 448                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 440                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	.cfi_offset 58, -112
	.cfi_offset 59, -120
	.cfi_offset 60, -128
	.cfi_offset 61, -136
	.cfi_offset 62, -144
	.cfi_offset 63, -152
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a0, 0
	fld.s	$fa2, $a3, 4
	fld.s	$fa3, $a0, 4
	fsub.s	$ft10, $fa0, $fa1
	fsub.s	$ft15, $fa2, $fa3
	fld.s	$fa0, $a3, 8
	fld.s	$fa1, $a0, 8
	fld.s	$fa7, $a1, 16
	fld.s	$fa5, $a1, 0
	fld.s	$ft2, $a1, 32
	fsub.s	$ft9, $fa0, $fa1
	fmul.s	$fa0, $ft15, $fa7
	fmadd.s	$fa0, $fa5, $ft10, $fa0
	fmadd.s	$ft0, $ft2, $ft9, $fa0
	fld.s	$fa6, $a1, 4
	fld.s	$ft1, $a1, 20
	fld.s	$fs3, $a1, 36
	fld.s	$fa0, $a1, 8
	fst.s	$fa0, $sp, 96                   # 4-byte Folded Spill
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a2, 4
	vldi	$vr11, -1184
	fld.s	$fa2, $a2, 8
	fmul.s	$fa4, $fa0, $ft3
	fmul.s	$fa3, $fa1, $ft3
	fld.s	$fa0, $a5, 0
	fmul.s	$fa2, $fa2, $ft3
	fld.s	$ft4, $a5, 4
	fld.s	$ft5, $a5, 8
	fmul.s	$fa1, $fa0, $ft3
	fld.s	$ft12, $a4, 16
	fmul.s	$fa0, $ft4, $ft3
	fmul.s	$ft7, $ft5, $ft3
	fld.s	$ft4, $a4, 0
	fmul.s	$ft3, $fa7, $ft12
	fld.s	$ft13, $a4, 32
	fld.s	$ft5, $a4, 20
	fld.s	$fs6, $a4, 4
	fmadd.s	$ft3, $fa5, $ft4, $ft3
	fmadd.s	$ft11, $ft2, $ft13, $ft3
	fmul.s	$ft3, $fa7, $ft5
	fmadd.s	$ft3, $fa5, $fs6, $ft3
	fld.s	$ft6, $a4, 36
	fld.s	$fs7, $a4, 24
	fld.s	$fs4, $a4, 8
	fld.s	$fs5, $a4, 40
	fmadd.s	$ft3, $ft2, $ft6, $ft3
	fmul.s	$fa7, $fa7, $fs7
	fmadd.s	$fa7, $fa5, $fs4, $fa7
	fmadd.s	$ft2, $ft2, $fs5, $fa7
	fabs.s	$ft14, $ft11
	fst.s	$ft3, $sp, 56                   # 4-byte Folded Spill
	fabs.s	$ft8, $ft3
	fabs.s	$ft3, $ft2
	fabs.s	$fa7, $ft0
	fmadd.s	$fs0, $fa1, $ft14, $fa4
	fmadd.s	$fs0, $fa0, $ft8, $fs0
	fmadd.s	$fs0, $ft7, $ft3, $fs0
	fsub.s	$fs0, $fa7, $fs0
	fld.s	$fa7, $a1, 24
	fst.s	$fa4, $sp, 428
	fst.s	$fa3, $sp, 432
	fst.s	$fa2, $sp, 92                   # 4-byte Folded Spill
	fst.s	$fa2, $sp, 436
	fst.s	$fa1, $sp, 416
	fst.s	$fa0, $sp, 420
	fld.s	$fs2, $a1, 40
	movgr2fr.w	$fs1, $zero
	fcmp.clt.s	$fcc0, $fs1, $fs0
	fst.s	$ft7, $sp, 424
	bcnez	$fcc0, .LBB3_87
# %bb.1:
	fst.s	$fa3, $sp, 80                   # 4-byte Folded Spill
	fst.s	$ft0, $sp, 52                   # 4-byte Folded Spill
	fst.s	$ft3, $sp, 44                   # 4-byte Folded Spill
	fmul.s	$fa2, $ft15, $ft1
	fmadd.s	$fa2, $fa6, $ft10, $fa2
	fmadd.s	$fa2, $fs3, $ft9, $fa2
	fst.s	$fa2, $sp, 72                   # 4-byte Folded Spill
	fmul.s	$fa2, $ft1, $ft12
	fmadd.s	$fa2, $fa6, $ft4, $fa2
	fmadd.s	$fa3, $fs3, $ft13, $fa2
	fmul.s	$fa2, $ft1, $ft5
	fmadd.s	$fa2, $fa6, $fs6, $fa2
	fmadd.s	$ft0, $fs3, $ft6, $fa2
	fmul.s	$fa2, $ft1, $fs7
	fmadd.s	$fa2, $fa6, $fs4, $fa2
	pcalau12i	$a2, %pc_hi20(.LCPI3_0)
	fld.s	$ft3, $a2, %pc_lo12(.LCPI3_0)
	fmadd.s	$fs3, $fs3, $fs5, $fa2
	fst.s	$fa3, $sp, 36                   # 4-byte Folded Spill
	fabs.s	$ft1, $fa3
	fst.s	$ft0, $sp, 40                   # 4-byte Folded Spill
	fabs.s	$fa2, $ft0
	fst.s	$fa2, $sp, 64                   # 4-byte Folded Spill
	fcmp.cule.s	$fcc0, $fs0, $ft3
	fabs.s	$fa2, $fs3
	fst.s	$fa2, $sp, 60                   # 4-byte Folded Spill
	bcnez	$fcc0, .LBB3_3
# %bb.2:
	movgr2fr.w	$fa2, $zero
	fld.s	$fa3, $sp, 52                   # 4-byte Folded Reload
	fcmp.clt.s	$fcc0, $fa3, $fa2
	ori	$s2, $zero, 1
	movcf2gr	$a2, $fcc0
	fmov.s	$ft3, $fs0
	move	$a5, $a1
	b	.LBB3_4
.LBB3_3:
	move	$s2, $zero
	move	$a2, $zero
	move	$a5, $zero
	fld.s	$fa3, $sp, 52                   # 4-byte Folded Reload
.LBB3_4:
	fld.s	$ft0, $sp, 80                   # 4-byte Folded Reload
	fld.s	$fa2, $sp, 72                   # 4-byte Folded Reload
	fabs.s	$fa2, $fa2
	fst.s	$ft1, $sp, 48                   # 4-byte Folded Spill
	fmadd.s	$ft1, $fa1, $ft1, $ft0
	fld.s	$fs0, $sp, 64                   # 4-byte Folded Reload
	fmadd.s	$ft1, $fa0, $fs0, $ft1
	fld.s	$fs0, $sp, 60                   # 4-byte Folded Reload
	fmadd.s	$ft1, $ft7, $fs0, $ft1
	fsub.s	$ft1, $fa2, $ft1
	fcmp.clt.s	$fcc0, $fs1, $ft1
	bcnez	$fcc0, .LBB3_87
# %bb.5:
	fst.s	$fs3, $sp, 28                   # 4-byte Folded Spill
	fst.s	$ft2, $sp, 32                   # 4-byte Folded Spill
	fmul.s	$fa2, $fa7, $ft12
	fmul.s	$fs0, $fa7, $ft5
	fmul.s	$fs3, $fa7, $fs7
	fmul.s	$fa7, $ft15, $fa7
	fmov.s	$ft2, $ft3
	fld.s	$ft3, $sp, 96                   # 4-byte Folded Reload
	fmadd.s	$fa2, $ft3, $ft4, $fa2
	fmadd.s	$fs0, $ft3, $fs6, $fs0
	fmadd.s	$fs3, $ft3, $fs4, $fs3
	fmadd.s	$fa7, $ft3, $ft10, $fa7
	fmov.s	$ft3, $ft2
	fmadd.s	$ft0, $fs2, $ft13, $fa2
	fmadd.s	$ft2, $fs2, $ft6, $fs0
	fmadd.s	$fa2, $fs2, $fs5, $fs3
	fmadd.s	$fs0, $fs2, $ft9, $fa7
	fst.s	$ft0, $sp, 20                   # 4-byte Folded Spill
	fabs.s	$fs2, $ft0
	fst.s	$ft2, $sp, 16                   # 4-byte Folded Spill
	fabs.s	$fs3, $ft2
	fcmp.cule.s	$fcc0, $ft1, $ft3
	fst.s	$fa2, $sp, 12                   # 4-byte Folded Spill
	fabs.s	$ft2, $fa2
	bcnez	$fcc0, .LBB3_7
# %bb.6:
	addi.d	$a5, $a1, 4
	movgr2fr.w	$fa2, $zero
	fld.s	$fa7, $sp, 72                   # 4-byte Folded Reload
	fcmp.clt.s	$fcc0, $fa7, $fa2
	ori	$s2, $zero, 2
	movcf2gr	$a2, $fcc0
	fmov.s	$ft3, $ft1
.LBB3_7:
	fst.s	$fs0, $sp, 24                   # 4-byte Folded Spill
	fabs.s	$fa2, $fs0
	fld.s	$fs0, $sp, 92                   # 4-byte Folded Reload
	fmadd.s	$fa7, $fa1, $fs2, $fs0
	fmadd.s	$fa7, $fa0, $fs3, $fa7
	fmadd.s	$fa7, $ft7, $ft2, $fa7
	fsub.s	$fa7, $fa2, $fa7
	fcmp.clt.s	$fcc0, $fs1, $fa7
	bcnez	$fcc0, .LBB3_87
# %bb.8:
	fcmp.cule.s	$fcc0, $fa7, $ft3
	bcnez	$fcc0, .LBB3_10
# %bb.9:
	addi.d	$a5, $a1, 8
	movgr2fr.w	$fa2, $zero
	fld.s	$ft1, $sp, 24                   # 4-byte Folded Reload
	fcmp.clt.s	$fcc0, $ft1, $fa2
	ori	$s2, $zero, 3
	movcf2gr	$a2, $fcc0
	fmov.s	$ft3, $fa7
.LBB3_10:
	fmul.s	$fa2, $ft15, $ft12
	fmadd.s	$fa2, $ft4, $ft10, $fa2
	fmadd.s	$fa7, $ft13, $ft9, $fa2
	fabs.s	$fa2, $fa7
	fld.s	$ft1, $sp, 48                   # 4-byte Folded Reload
	fld.s	$ft0, $sp, 80                   # 4-byte Folded Reload
	fmul.s	$ft1, $ft0, $ft1
	fmadd.s	$ft1, $fa4, $ft14, $ft1
	fmadd.s	$ft1, $fs0, $fs2, $ft1
	fadd.s	$ft1, $fa1, $ft1
	fsub.s	$ft1, $fa2, $ft1
	fcmp.clt.s	$fcc0, $fs1, $ft1
	fld.s	$ft13, $sp, 32                  # 4-byte Folded Reload
	fld.s	$ft12, $sp, 28                  # 4-byte Folded Reload
	bcnez	$fcc0, .LBB3_87
# %bb.11:
	fmov.s	$ft0, $fa3
	fcmp.cule.s	$fcc0, $ft1, $ft3
	bcnez	$fcc0, .LBB3_13
# %bb.12:
	movgr2fr.w	$fa2, $zero
	fcmp.clt.s	$fcc0, $fa7, $fa2
	ori	$s2, $zero, 4
	movcf2gr	$a2, $fcc0
	fmov.s	$ft3, $ft1
	move	$a5, $a4
.LBB3_13:
	fmul.s	$fa2, $ft15, $ft5
	fmadd.s	$fa2, $fs6, $ft10, $fa2
	fmadd.s	$fa7, $ft6, $ft9, $fa2
	fabs.s	$fa2, $fa7
	fld.s	$ft1, $sp, 64                   # 4-byte Folded Reload
	fld.s	$fa3, $sp, 80                   # 4-byte Folded Reload
	fmul.s	$ft1, $fa3, $ft1
	fmadd.s	$ft1, $fa4, $ft8, $ft1
	fmadd.s	$ft1, $fs0, $fs3, $ft1
	fadd.s	$ft1, $fa0, $ft1
	fsub.s	$ft1, $fa2, $ft1
	fcmp.clt.s	$fcc0, $fs1, $ft1
	bcnez	$fcc0, .LBB3_87
# %bb.14:
	fcmp.cule.s	$fcc0, $ft1, $ft3
	bcnez	$fcc0, .LBB3_16
# %bb.15:
	addi.d	$a5, $a4, 4
	movgr2fr.w	$fa2, $zero
	fcmp.clt.s	$fcc0, $fa7, $fa2
	ori	$s2, $zero, 5
	movcf2gr	$a2, $fcc0
	fmov.s	$ft3, $ft1
.LBB3_16:
	fmul.s	$fa2, $ft15, $fs7
	fmadd.s	$fa2, $fs4, $ft10, $fa2
	fmadd.s	$fa7, $fs5, $ft9, $fa2
	fabs.s	$fa2, $fa7
	fld.s	$ft1, $sp, 60                   # 4-byte Folded Reload
	fld.s	$fa3, $sp, 80                   # 4-byte Folded Reload
	fmul.s	$ft1, $fa3, $ft1
	fld.s	$ft4, $sp, 44                   # 4-byte Folded Reload
	fmadd.s	$ft1, $fa4, $ft4, $ft1
	fmadd.s	$ft1, $fs0, $ft2, $ft1
	fadd.s	$ft1, $ft7, $ft1
	fsub.s	$ft1, $fa2, $ft1
	fcmp.clt.s	$fcc0, $fs1, $ft1
	bcnez	$fcc0, .LBB3_87
# %bb.17:
	fcmp.cule.s	$fcc0, $ft1, $ft3
	bcnez	$fcc0, .LBB3_19
# %bb.18:
	addi.d	$a5, $a4, 8
	movgr2fr.w	$fa2, $zero
	fcmp.clt.s	$fcc0, $fa7, $fa2
	ori	$s2, $zero, 6
	movcf2gr	$a2, $fcc0
	fmov.s	$ft3, $ft1
.LBB3_19:
	fld.s	$ft9, $sp, 20                   # 4-byte Folded Reload
	fneg.s	$fa7, $ft9
	fld.s	$fa2, $sp, 72                   # 4-byte Folded Reload
	fmul.s	$fa2, $fa2, $fa7
	fld.s	$fs5, $sp, 36                   # 4-byte Folded Reload
	fld.s	$ft1, $sp, 24                   # 4-byte Folded Reload
	fmadd.s	$ft4, $ft1, $fs5, $fa2
	fabs.s	$fa2, $ft4
	fld.s	$ft1, $sp, 48                   # 4-byte Folded Reload
	fmul.s	$ft1, $fs0, $ft1
	fld.s	$fa3, $sp, 80                   # 4-byte Folded Reload
	fmadd.s	$ft1, $fa3, $fs2, $ft1
	fld.s	$ft5, $sp, 44                   # 4-byte Folded Reload
	fmadd.s	$ft1, $fa0, $ft5, $ft1
	fmadd.s	$ft1, $ft7, $ft8, $ft1
	fsub.s	$ft1, $fa2, $ft1
	fcmp.clt.s	$fcc0, $fs1, $ft1
	fld.s	$fs4, $sp, 40                   # 4-byte Folded Reload
	fld.s	$ft6, $sp, 16                   # 4-byte Folded Reload
	bcnez	$fcc0, .LBB3_87
# %bb.20:
	fmadd.s	$ft9, $ft9, $ft9, $fs1
	fmadd.s	$ft5, $fs5, $fs5, $ft9
	fcmp.cule.s	$fcc0, $ft5, $fs1
	bcnez	$fcc0, .LBB3_23
# %bb.21:
	pcalau12i	$t0, %pc_hi20(.LCPI3_1)
	fld.s	$fa2, $t0, %pc_lo12(.LCPI3_1)
	fsqrt.s	$ft5, $ft5
	fdiv.s	$ft1, $ft1, $ft5
	fmul.s	$fa2, $ft1, $fa2
	fcmp.cule.s	$fcc0, $fa2, $ft3
	fmov.s	$fs7, $fs1
	fmov.s	$fs6, $fs1
	fmov.s	$ft15, $fs1
	bcnez	$fcc0, .LBB3_24
# %bb.22:
	move	$a5, $zero
	movgr2fr.w	$fa2, $zero
	fdiv.s	$fs7, $fa2, $ft5
	fdiv.s	$fs6, $fa7, $ft5
	fdiv.s	$ft15, $fs5, $ft5
	fcmp.clt.s	$fcc0, $ft4, $fa2
	ori	$s2, $zero, 7
	movcf2gr	$a2, $fcc0
	fmov.s	$ft3, $ft1
	b	.LBB3_24
.LBB3_23:
	fmov.s	$fs7, $fs1
	fmov.s	$fs6, $fs1
	fmov.s	$ft15, $fs1
.LBB3_24:
	fneg.s	$fa7, $ft6
	fld.s	$fa2, $sp, 72                   # 4-byte Folded Reload
	fmul.s	$fa2, $fa2, $fa7
	fld.s	$ft1, $sp, 24                   # 4-byte Folded Reload
	fmadd.s	$ft4, $ft1, $fs4, $fa2
	fabs.s	$fa2, $ft4
	fld.s	$ft1, $sp, 64                   # 4-byte Folded Reload
	fmul.s	$ft1, $fs0, $ft1
	fld.s	$fa3, $sp, 80                   # 4-byte Folded Reload
	fmadd.s	$ft1, $fa3, $fs3, $ft1
	fld.s	$ft5, $sp, 44                   # 4-byte Folded Reload
	fmadd.s	$ft1, $fa1, $ft5, $ft1
	fmadd.s	$ft1, $ft7, $ft14, $ft1
	fsub.s	$ft1, $fa2, $ft1
	fcmp.clt.s	$fcc0, $fs1, $ft1
	bcnez	$fcc0, .LBB3_87
# %bb.25:
	movgr2fr.w	$fs1, $zero
	fmadd.s	$ft10, $ft6, $ft6, $fs1
	fmadd.s	$ft5, $fs4, $fs4, $ft10
	fcmp.cule.s	$fcc0, $ft5, $fs1
	bcnez	$fcc0, .LBB3_28
# %bb.26:
	pcalau12i	$t0, %pc_hi20(.LCPI3_1)
	fld.s	$fa2, $t0, %pc_lo12(.LCPI3_1)
	fsqrt.s	$ft5, $ft5
	fdiv.s	$ft1, $ft1, $ft5
	fmul.s	$fa2, $ft1, $fa2
	fcmp.cule.s	$fcc0, $fa2, $ft3
	bcnez	$fcc0, .LBB3_28
# %bb.27:
	move	$a5, $zero
	fdiv.s	$fs7, $fs1, $ft5
	fdiv.s	$fs6, $fa7, $ft5
	fdiv.s	$ft15, $fs4, $ft5
	fcmp.clt.s	$fcc0, $ft4, $fs1
	ori	$s2, $zero, 8
	movcf2gr	$a2, $fcc0
	fmov.s	$ft3, $ft1
.LBB3_28:
	fld.s	$ft5, $sp, 12                   # 4-byte Folded Reload
	fneg.s	$fa7, $ft5
	fld.s	$fa2, $sp, 72                   # 4-byte Folded Reload
	fmul.s	$fa2, $fa2, $fa7
	fld.s	$ft1, $sp, 24                   # 4-byte Folded Reload
	fmadd.s	$ft4, $ft1, $ft12, $fa2
	fabs.s	$fa2, $ft4
	fld.s	$ft1, $sp, 60                   # 4-byte Folded Reload
	fmul.s	$ft1, $fs0, $ft1
	fld.s	$fa3, $sp, 80                   # 4-byte Folded Reload
	fmadd.s	$ft1, $fa3, $ft2, $ft1
	fmadd.s	$ft1, $fa1, $ft8, $ft1
	fmadd.s	$ft1, $fa0, $ft14, $ft1
	fsub.s	$ft1, $fa2, $ft1
	fcmp.clt.s	$fcc0, $fs1, $ft1
	bcnez	$fcc0, .LBB3_87
# %bb.29:
	fst.s	$ft15, $sp, 8                   # 4-byte Folded Spill
	fmadd.s	$ft15, $ft5, $ft5, $fs1
	fmadd.s	$ft5, $ft12, $ft12, $ft15
	fcmp.cule.s	$fcc0, $ft5, $fs1
	bcnez	$fcc0, .LBB3_32
# %bb.30:
	pcalau12i	$t0, %pc_hi20(.LCPI3_1)
	fld.s	$fa2, $t0, %pc_lo12(.LCPI3_1)
	fsqrt.s	$ft5, $ft5
	fdiv.s	$ft1, $ft1, $ft5
	fmul.s	$fa2, $ft1, $fa2
	fcmp.cule.s	$fcc0, $fa2, $ft3
	bcnez	$fcc0, .LBB3_32
# %bb.31:
	move	$a5, $zero
	fdiv.s	$fs7, $fs1, $ft5
	fdiv.s	$fs6, $fa7, $ft5
	fdiv.s	$fa2, $ft12, $ft5
	fst.s	$fa2, $sp, 8                    # 4-byte Folded Spill
	fcmp.clt.s	$fcc0, $ft4, $fs1
	ori	$s2, $zero, 9
	movcf2gr	$a2, $fcc0
	fmov.s	$ft3, $ft1
.LBB3_32:
	fneg.s	$fa7, $ft11
	fld.s	$fa2, $sp, 24                   # 4-byte Folded Reload
	fmul.s	$fa2, $fa2, $fa7
	fld.s	$ft1, $sp, 20                   # 4-byte Folded Reload
	fmadd.s	$ft4, $ft0, $ft1, $fa2
	fabs.s	$fa2, $ft4
	fmul.s	$ft1, $fs0, $ft14
	fmadd.s	$ft1, $fa4, $fs2, $ft1
	fld.s	$ft5, $sp, 60                   # 4-byte Folded Reload
	fmadd.s	$ft1, $fa0, $ft5, $ft1
	fld.s	$ft5, $sp, 64                   # 4-byte Folded Reload
	fmadd.s	$ft1, $ft7, $ft5, $ft1
	fsub.s	$ft1, $fa2, $ft1
	fcmp.clt.s	$fcc0, $fs1, $ft1
	bcnez	$fcc0, .LBB3_87
# %bb.33:
	fmadd.s	$ft5, $ft11, $ft11, $ft9
	fcmp.cule.s	$fcc0, $ft5, $fs1
	bcnez	$fcc0, .LBB3_36
# %bb.34:
	pcalau12i	$t0, %pc_hi20(.LCPI3_1)
	fld.s	$fa2, $t0, %pc_lo12(.LCPI3_1)
	fsqrt.s	$ft5, $ft5
	fdiv.s	$ft1, $ft1, $ft5
	fmul.s	$fa2, $ft1, $fa2
	fcmp.cule.s	$fcc0, $fa2, $ft3
	fld.s	$ft6, $sp, 56                   # 4-byte Folded Reload
	bcnez	$fcc0, .LBB3_37
# %bb.35:
	move	$a5, $zero
	fld.s	$fa2, $sp, 20                   # 4-byte Folded Reload
	fdiv.s	$fs7, $fa2, $ft5
	fdiv.s	$fs6, $fs1, $ft5
	fdiv.s	$fa2, $fa7, $ft5
	fst.s	$fa2, $sp, 8                    # 4-byte Folded Spill
	fcmp.clt.s	$fcc0, $ft4, $fs1
	ori	$s2, $zero, 10
	movcf2gr	$a2, $fcc0
	fmov.s	$ft3, $ft1
	b	.LBB3_37
.LBB3_36:
	fld.s	$ft6, $sp, 56                   # 4-byte Folded Reload
.LBB3_37:
	fneg.s	$fa7, $ft6
	fld.s	$fa2, $sp, 24                   # 4-byte Folded Reload
	fmul.s	$fa2, $fa2, $fa7
	fld.s	$ft1, $sp, 16                   # 4-byte Folded Reload
	fmadd.s	$ft4, $ft0, $ft1, $fa2
	fabs.s	$fa2, $ft4
	fmul.s	$ft1, $fs0, $ft8
	fmadd.s	$ft1, $fa4, $fs3, $ft1
	fld.s	$ft5, $sp, 60                   # 4-byte Folded Reload
	fmadd.s	$ft1, $fa1, $ft5, $ft1
	fld.s	$ft5, $sp, 48                   # 4-byte Folded Reload
	fmadd.s	$ft1, $ft7, $ft5, $ft1
	fsub.s	$ft1, $fa2, $ft1
	fcmp.clt.s	$fcc0, $fs1, $ft1
	bcnez	$fcc0, .LBB3_87
# %bb.38:
	fmadd.s	$ft5, $ft6, $ft6, $ft10
	fcmp.cule.s	$fcc0, $ft5, $fs1
	bcnez	$fcc0, .LBB3_41
# %bb.39:
	pcalau12i	$t0, %pc_hi20(.LCPI3_1)
	fld.s	$fa2, $t0, %pc_lo12(.LCPI3_1)
	fsqrt.s	$ft5, $ft5
	fdiv.s	$ft1, $ft1, $ft5
	fmul.s	$fa2, $ft1, $fa2
	fcmp.cule.s	$fcc0, $fa2, $ft3
	bcnez	$fcc0, .LBB3_41
# %bb.40:
	move	$a5, $zero
	fld.s	$fa2, $sp, 16                   # 4-byte Folded Reload
	fdiv.s	$fs7, $fa2, $ft5
	fdiv.s	$fs6, $fs1, $ft5
	fdiv.s	$fa2, $fa7, $ft5
	fst.s	$fa2, $sp, 8                    # 4-byte Folded Spill
	fcmp.clt.s	$fcc0, $ft4, $fs1
	ori	$s2, $zero, 11
	movcf2gr	$a2, $fcc0
	fmov.s	$ft3, $ft1
.LBB3_41:
	fneg.s	$fa7, $ft13
	fld.s	$fa2, $sp, 24                   # 4-byte Folded Reload
	fmul.s	$fa2, $fa2, $fa7
	fld.s	$ft1, $sp, 12                   # 4-byte Folded Reload
	fmadd.s	$ft4, $ft0, $ft1, $fa2
	fabs.s	$fa2, $ft4
	fld.s	$ft1, $sp, 44                   # 4-byte Folded Reload
	fmul.s	$ft1, $fs0, $ft1
	fmadd.s	$ft1, $fa4, $ft2, $ft1
	fld.s	$ft5, $sp, 64                   # 4-byte Folded Reload
	fmadd.s	$ft1, $fa1, $ft5, $ft1
	fld.s	$ft5, $sp, 48                   # 4-byte Folded Reload
	fmadd.s	$ft1, $fa0, $ft5, $ft1
	fsub.s	$ft1, $fa2, $ft1
	fcmp.clt.s	$fcc0, $fs1, $ft1
	bcnez	$fcc0, .LBB3_87
# %bb.42:
	fmadd.s	$ft5, $ft13, $ft13, $ft15
	fcmp.cule.s	$fcc0, $ft5, $fs1
	bcnez	$fcc0, .LBB3_45
# %bb.43:
	pcalau12i	$t0, %pc_hi20(.LCPI3_1)
	fld.s	$fa2, $t0, %pc_lo12(.LCPI3_1)
	fsqrt.s	$ft5, $ft5
	fdiv.s	$ft1, $ft1, $ft5
	fmul.s	$fa2, $ft1, $fa2
	fcmp.cule.s	$fcc0, $fa2, $ft3
	bcnez	$fcc0, .LBB3_45
# %bb.44:
	move	$a5, $zero
	fld.s	$fa2, $sp, 12                   # 4-byte Folded Reload
	fdiv.s	$fs7, $fa2, $ft5
	fdiv.s	$fs6, $fs1, $ft5
	fdiv.s	$fa2, $fa7, $ft5
	fst.s	$fa2, $sp, 8                    # 4-byte Folded Spill
	fcmp.clt.s	$fcc0, $ft4, $fs1
	ori	$s2, $zero, 12
	movcf2gr	$a2, $fcc0
	fmov.s	$ft3, $ft1
.LBB3_45:
	fneg.s	$ft4, $fs5
	fmul.s	$fa2, $ft0, $ft4
	fld.s	$fa7, $sp, 72                   # 4-byte Folded Reload
	fmadd.s	$fa7, $fa7, $ft11, $fa2
	fabs.s	$fa2, $fa7
	fld.s	$fa3, $sp, 80                   # 4-byte Folded Reload
	fmul.s	$ft1, $fa3, $ft14
	fld.s	$ft5, $sp, 48                   # 4-byte Folded Reload
	fmadd.s	$ft1, $fa4, $ft5, $ft1
	fmadd.s	$ft1, $fa0, $ft2, $ft1
	fmadd.s	$ft1, $ft7, $fs3, $ft1
	fsub.s	$ft1, $fa2, $ft1
	fcmp.clt.s	$fcc0, $fs1, $ft1
	bcnez	$fcc0, .LBB3_87
# %bb.46:
	fmul.s	$fa2, $ft11, $ft11
	fmadd.s	$ft5, $fs5, $fs5, $fa2
	fcmp.cule.s	$fcc0, $ft5, $fs1
	bcnez	$fcc0, .LBB3_49
# %bb.47:
	pcalau12i	$t0, %pc_hi20(.LCPI3_1)
	fld.s	$fa2, $t0, %pc_lo12(.LCPI3_1)
	fsqrt.s	$ft5, $ft5
	fdiv.s	$ft1, $ft1, $ft5
	fmul.s	$fa2, $ft1, $fa2
	fcmp.cule.s	$fcc0, $fa2, $ft3
	bcnez	$fcc0, .LBB3_49
# %bb.48:
	move	$a5, $zero
	fdiv.s	$fs7, $ft4, $ft5
	fdiv.s	$fs6, $ft11, $ft5
	fdiv.s	$fa2, $fs1, $ft5
	fst.s	$fa2, $sp, 8                    # 4-byte Folded Spill
	fcmp.clt.s	$fcc0, $fa7, $fs1
	ori	$s2, $zero, 13
	movcf2gr	$a2, $fcc0
	fmov.s	$ft3, $ft1
.LBB3_49:
	fneg.s	$ft4, $fs4
	fmul.s	$fa2, $ft0, $ft4
	fld.s	$fa7, $sp, 72                   # 4-byte Folded Reload
	fmadd.s	$fa7, $fa7, $ft6, $fa2
	fabs.s	$fa2, $fa7
	fld.s	$fa3, $sp, 80                   # 4-byte Folded Reload
	fmul.s	$ft1, $fa3, $ft8
	fld.s	$ft0, $sp, 64                   # 4-byte Folded Reload
	fmadd.s	$ft1, $fa4, $ft0, $ft1
	fmadd.s	$ft1, $fa1, $ft2, $ft1
	fmadd.s	$ft1, $ft7, $fs2, $ft1
	fsub.s	$ft1, $fa2, $ft1
	fcmp.clt.s	$fcc0, $fs1, $ft1
	bcnez	$fcc0, .LBB3_87
# %bb.50:
	fmov.s	$ft9, $fs6
	fmov.s	$fs6, $ft3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$s4, $a6
	fmul.s	$fa2, $ft6, $ft6
	fmadd.s	$ft5, $fs4, $fs4, $fa2
	fcmp.cule.s	$fcc0, $ft5, $fs1
	bcnez	$fcc0, .LBB3_53
# %bb.51:
	pcalau12i	$a0, %pc_hi20(.LCPI3_1)
	fld.s	$fa2, $a0, %pc_lo12(.LCPI3_1)
	fsqrt.s	$ft5, $ft5
	fdiv.s	$ft1, $ft1, $ft5
	fmul.s	$fa2, $ft1, $fa2
	fcmp.cule.s	$fcc0, $fa2, $fs6
	bcnez	$fcc0, .LBB3_53
# %bb.52:
	move	$a5, $zero
	fdiv.s	$fs7, $ft4, $ft5
	fld.s	$fa2, $sp, 56                   # 4-byte Folded Reload
	fdiv.s	$ft9, $fa2, $ft5
	fdiv.s	$fa2, $fs1, $ft5
	fst.s	$fa2, $sp, 8                    # 4-byte Folded Spill
	fcmp.clt.s	$fcc0, $fa7, $fs1
	ori	$s2, $zero, 14
	movcf2gr	$a2, $fcc0
	fmov.s	$fs6, $ft1
.LBB3_53:
	fld.s	$fa2, $sp, 28                   # 4-byte Folded Reload
	fneg.s	$ft1, $fa2
	fld.s	$fa2, $sp, 52                   # 4-byte Folded Reload
	fmul.s	$fa2, $fa2, $ft1
	fld.s	$fa7, $sp, 32                   # 4-byte Folded Reload
	fld.s	$ft0, $sp, 72                   # 4-byte Folded Reload
	fmadd.s	$fa7, $ft0, $fa7, $fa2
	fabs.s	$fa2, $fa7
	fld.s	$ft0, $sp, 44                   # 4-byte Folded Reload
	fld.s	$fa3, $sp, 80                   # 4-byte Folded Reload
	fmul.s	$ft0, $fa3, $ft0
	fld.s	$ft2, $sp, 60                   # 4-byte Folded Reload
	fmadd.s	$ft0, $fa4, $ft2, $ft0
	fmadd.s	$ft0, $fa1, $fs3, $ft0
	fmadd.s	$ft0, $fa0, $fs2, $ft0
	fsub.s	$ft0, $fa2, $ft0
	fcmp.clt.s	$fcc0, $fs1, $ft0
	bcnez	$fcc0, .LBB3_87
# %bb.54:
	fld.s	$fa2, $sp, 32                   # 4-byte Folded Reload
	fmul.s	$fa2, $fa2, $fa2
	fld.s	$ft2, $sp, 28                   # 4-byte Folded Reload
	fmadd.s	$ft2, $ft2, $ft2, $fa2
	fcmp.cule.s	$fcc0, $ft2, $fs1
	bcnez	$fcc0, .LBB3_57
# %bb.55:
	pcalau12i	$a0, %pc_hi20(.LCPI3_1)
	fld.s	$fa2, $a0, %pc_lo12(.LCPI3_1)
	fsqrt.s	$ft2, $ft2
	fdiv.s	$ft0, $ft0, $ft2
	fmul.s	$fa2, $ft0, $fa2
	fcmp.cule.s	$fcc0, $fa2, $fs6
	bcnez	$fcc0, .LBB3_57
# %bb.56:                               # %.thread866
	fdiv.s	$fs7, $ft1, $ft2
	fld.s	$fa2, $sp, 32                   # 4-byte Folded Reload
	fdiv.s	$ft9, $fa2, $ft2
	fdiv.s	$fa2, $fs1, $ft2
	fst.s	$fa2, $sp, 8                    # 4-byte Folded Spill
	fcmp.clt.s	$fcc0, $fa7, $fs1
	ori	$s2, $zero, 15
	movcf2gr	$a2, $fcc0
	fmov.s	$fs6, $ft0
	b	.LBB3_60
.LBB3_57:
	beqz	$s2, .LBB3_87
# %bb.58:
	beqz	$a5, .LBB3_60
# %bb.59:
	fld.s	$fa5, $a5, 0
	fst.s	$fa5, $s4, 0
	fld.s	$fa6, $a5, 16
	fst.s	$fa6, $s4, 4
	fld.s	$fa7, $a5, 32
	b	.LBB3_61
.LBB3_60:
	fmul.s	$fa2, $fa6, $ft9
	fmadd.s	$fa2, $fa5, $fs7, $fa2
	fld.s	$fa5, $sp, 96                   # 4-byte Folded Reload
	fld.s	$fa3, $sp, 8                    # 4-byte Folded Reload
	fmadd.s	$fa5, $fa5, $fa3, $fa2
	fst.s	$fa5, $s4, 0
	fld.s	$fa2, $a1, 20
	fld.s	$fa6, $a1, 16
	fld.s	$fa7, $a1, 24
	fmul.s	$fa2, $ft9, $fa2
	fmadd.s	$fa2, $fa6, $fs7, $fa2
	fmadd.s	$fa6, $fa7, $fa3, $fa2
	fst.s	$fa6, $s4, 4
	fld.s	$fa2, $a1, 36
	fld.s	$fa7, $a1, 32
	fld.s	$ft0, $a1, 40
	fmul.s	$fa2, $ft9, $fa2
	fmadd.s	$fa2, $fa7, $fs7, $fa2
	fmadd.s	$fa7, $ft0, $fa3, $fa2
.LBB3_61:
	fst.s	$fa7, $s4, 8
	beqz	$a2, .LBB3_63
# %bb.62:
	fneg.s	$fa2, $fa5
	fst.s	$fa2, $s4, 0
	fneg.s	$fa2, $fa6
	fst.s	$fa2, $s4, 4
	fneg.s	$fa2, $fa7
	fst.s	$fa2, $s4, 8
.LBB3_63:
	ld.d	$fp, $sp, 624
	ld.d	$a0, $sp, 592
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	fneg.s	$fa2, $fs6
	ori	$a0, $zero, 7
	fst.s	$fa2, $a7, 0
	bltu	$s2, $a0, .LBB3_65
# %bb.64:                               # %.preheader913
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	st.d	$a2, $sp, 200
	ld.w	$a0, $a0, 8
	fld.s	$fa5, $s4, 0
	fld.s	$fa7, $s4, 4
	fld.s	$fa6, $s4, 8
	fld.s	$fa2, $a1, 16
	fld.s	$ft0, $a1, 0
	fld.s	$ft1, $a1, 32
	st.w	$a0, $sp, 208
	fmul.s	$ft2, $fa7, $fa2
	fmadd.s	$ft2, $fa5, $ft0, $ft2
	fmadd.s	$ft2, $fa6, $ft1, $ft2
	fneg.s	$ft3, $fa4
	fld.s	$ft4, $sp, 200
	fld.s	$ft5, $sp, 204
	fcmp.clt.s	$fcc0, $fs1, $ft2
	fsel	$fa4, $ft3, $fa4, $fcc0
	fmadd.s	$ft0, $fa4, $ft0, $ft4
	fmadd.s	$fa2, $fa4, $fa2, $ft5
	fld.s	$ft2, $sp, 208
	fld.s	$ft3, $a1, 20
	fld.s	$ft4, $a1, 4
	fld.s	$ft5, $a1, 36
	fmadd.s	$fa4, $fa4, $ft1, $ft2
	fmul.s	$ft1, $fa7, $ft3
	fmadd.s	$ft1, $fa5, $ft4, $ft1
	fmadd.s	$ft1, $fa6, $ft5, $ft1
	fld.s	$fa3, $sp, 80                   # 4-byte Folded Reload
	fneg.s	$ft2, $fa3
	fcmp.clt.s	$fcc0, $fs1, $ft1
	fsel	$fa3, $ft2, $fa3, $fcc0
	fmadd.s	$ft0, $fa3, $ft4, $ft0
	fmadd.s	$fa2, $fa3, $ft3, $fa2
	fld.s	$ft1, $a1, 24
	fld.s	$ft2, $a1, 8
	fld.s	$ft3, $a1, 40
	fmadd.s	$fa3, $fa3, $ft5, $fa4
	fmul.s	$fa4, $fa7, $ft1
	fmadd.s	$fa4, $fa5, $ft2, $fa4
	fmadd.s	$fa4, $fa6, $ft3, $fa4
	fld.s	$ft5, $sp, 92                   # 4-byte Folded Reload
	fneg.s	$ft4, $ft5
	fcmp.clt.s	$fcc0, $fs1, $fa4
	fsel	$fa4, $ft4, $ft5, $fcc0
	fmadd.s	$ft0, $fa4, $ft2, $ft0
	fst.s	$ft0, $sp, 200
	fmadd.s	$fa2, $fa4, $ft1, $fa2
	ld.d	$a0, $a3, 0
	fst.s	$fa2, $sp, 204
	fmadd.s	$fa2, $fa4, $ft3, $fa3
	fst.s	$fa2, $sp, 208
	st.d	$a0, $sp, 296
	ld.w	$a0, $a3, 8
	fld.s	$fa2, $a4, 16
	fld.s	$fa3, $a4, 0
	fld.s	$fa4, $a4, 32
	st.w	$a0, $sp, 304
	fmul.s	$ft0, $fa7, $fa2
	fmadd.s	$ft0, $fa5, $fa3, $ft0
	fmadd.s	$ft0, $fa6, $fa4, $ft0
	fneg.s	$ft1, $fa1
	fld.s	$ft2, $sp, 296
	fld.s	$ft3, $sp, 300
	fcmp.clt.s	$fcc0, $fs1, $ft0
	fsel	$fa1, $fa1, $ft1, $fcc0
	fmadd.s	$fa3, $fa1, $fa3, $ft2
	fmadd.s	$fa2, $fa1, $fa2, $ft3
	fld.s	$ft0, $sp, 304
	fld.s	$ft1, $a4, 20
	fld.s	$ft2, $a4, 4
	fld.s	$ft3, $a4, 36
	fmadd.s	$fa1, $fa1, $fa4, $ft0
	fmul.s	$fa4, $fa7, $ft1
	fmadd.s	$fa4, $fa5, $ft2, $fa4
	fmadd.s	$fa4, $fa6, $ft3, $fa4
	fneg.s	$ft0, $fa0
	fcmp.clt.s	$fcc0, $fs1, $fa4
	fsel	$fa0, $fa0, $ft0, $fcc0
	fmadd.s	$fa3, $fa0, $ft2, $fa3
	fmadd.s	$fa2, $fa0, $ft1, $fa2
	fmadd.s	$fa0, $fa0, $ft3, $fa1
	fld.s	$fa1, $a4, 24
	fld.s	$fa4, $a4, 8
	fld.s	$ft0, $a4, 40
	fld.s	$ft1, $sp, 424
	fmul.s	$fa7, $fa7, $fa1
	fmadd.s	$fa5, $fa5, $fa4, $fa7
	fmadd.s	$fa5, $fa6, $ft0, $fa5
	fneg.s	$fa6, $ft1
	fcmp.clt.s	$fcc0, $fs1, $fa5
	fsel	$fa5, $ft1, $fa6, $fcc0
	fmadd.s	$fs0, $fa5, $fa4, $fa3
	fst.s	$fs0, $sp, 296
	fmadd.s	$fs1, $fa5, $fa1, $fa2
	fst.s	$fs1, $sp, 300
	addi.d	$a0, $s2, -7
	andi	$a2, $a0, 255
	ori	$a3, $zero, 171
	mul.d	$a2, $a2, $a3
	srli.d	$a2, $a2, 9
	alsl.d	$a3, $a2, $a1, 2
	slli.d	$a5, $a2, 2
	fldx.s	$fa1, $a1, $a5
	fld.s	$fa2, $a3, 16
	fmadd.s	$fs2, $fa5, $ft0, $fa0
	fst.s	$fs2, $sp, 304
	fst.s	$fa1, $sp, 368
	fst.s	$fa2, $sp, 372
	fld.s	$fa0, $a3, 32
	alsl.d	$a1, $a2, $a2, 1
	sub.d	$a0, $a0, $a1
	andi	$a0, $a0, 255
	alsl.d	$a1, $a0, $a4, 2
	slli.d	$a0, $a0, 2
	fldx.s	$fs3, $a4, $a0
	fld.s	$fs4, $a1, 16
	fld.s	$fs5, $a1, 32
	fst.s	$fa0, $sp, 376
	fst.s	$fs3, $sp, 168
	fst.s	$fs4, $sp, 172
	fst.s	$fs5, $sp, 176
	addi.d	$a0, $sp, 200
	addi.d	$a1, $sp, 368
	addi.d	$a2, $sp, 296
	addi.d	$a3, $sp, 168
	addi.d	$a4, $sp, 400
	addi.d	$a5, $sp, 152
	pcaddu18i	$ra, %call36(_Z20dLineClosestApproachRK9btVector3S1_S1_S1_PfS2_)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $sp, 152
	fmadd.s	$fa1, $fs3, $fa0, $fs0
	fst.s	$fa1, $sp, 296
	fmadd.s	$fa1, $fs4, $fa0, $fs1
	fst.s	$fa1, $sp, 300
	ld.wu	$a0, $s4, 0
	ld.w	$a1, $s4, 4
	lu12i.w	$a2, -524288
	lu32i.d	$a2, 0
	xor	$a0, $a0, $a2
	xor	$a1, $a1, $a2
	slli.d	$a1, $a1, 32
	or	$a0, $a1, $a0
	ld.d	$a1, $fp, 0
	ld.wu	$a3, $s4, 8
	fmadd.s	$fa0, $fs5, $fa0, $fs2
	fst.s	$fa0, $sp, 304
	ld.d	$a4, $a1, 32
	xor	$a1, $a3, $a2
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 128
	addi.d	$a1, $sp, 120
	addi.d	$a2, $sp, 296
	move	$a0, $fp
	fmov.s	$fa0, $fs6
	jirl	$ra, $a4, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.w	$s2, $a0, 0
	ori	$s1, $zero, 1
	b	.LBB3_88
.LBB3_65:
	fld.s	$fs0, $s4, 0
	ori	$a0, $zero, 3
	bltu	$a0, $s2, .LBB3_67
# %bb.66:
	fld.s	$fa0, $s4, 4
	fst.s	$fa0, $sp, 92                   # 4-byte Folded Spill
	fld.s	$fs3, $s4, 8
	addi.d	$a0, $sp, 428
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 416
	move	$a2, $a3
	move	$s6, $a4
	b	.LBB3_68
.LBB3_67:
	fld.s	$fa0, $s4, 4
	fld.s	$fa1, $s4, 8
	fneg.s	$fs0, $fs0
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $sp, 92                   # 4-byte Folded Spill
	fneg.s	$fs3, $fa1
	addi.d	$a0, $sp, 416
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 428
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	move	$s6, $a1
	move	$a1, $a4
.LBB3_68:
	fld.s	$fa0, $s6, 16
	fld.s	$fa1, $s6, 0
	fld.s	$fa2, $s6, 32
	fld.s	$fa5, $sp, 92                   # 4-byte Folded Reload
	fmul.s	$fa0, $fa5, $fa0
	fld.s	$fa3, $s6, 20
	fmadd.s	$fa0, $fa1, $fs0, $fa0
	fmadd.s	$fa0, $fa2, $fs3, $fa0
	fld.s	$fa1, $s6, 4
	fmul.s	$fa2, $fa5, $fa3
	fld.s	$fa3, $s6, 36
	fld.s	$fa4, $s6, 24
	fmadd.s	$fa1, $fa1, $fs0, $fa2
	fld.s	$fa2, $s6, 8
	fmadd.s	$fa1, $fa3, $fs3, $fa1
	fmul.s	$fa3, $fa5, $fa4
	fld.s	$fa4, $s6, 40
	fmadd.s	$fa2, $fa2, $fs0, $fa3
	fst.s	$fa0, $sp, 400
	fst.s	$fa1, $sp, 404
	fmadd.s	$fa3, $fa4, $fs3, $fa2
	fst.s	$fa3, $sp, 408
	fabs.s	$fa2, $fa0
	fabs.s	$fa1, $fa1
	fcmp.cule.s	$fcc0, $fa1, $fa2
	fabs.s	$fa0, $fa3
	bcnez	$fcc0, .LBB3_70
# %bb.69:
	move	$a4, $zero
	fcmp.clt.s	$fcc0, $fa0, $fa1
	ori	$a3, $zero, 2
	movcf2gr	$a6, $fcc0
	sub.d	$a5, $a3, $a6
	addi.d	$a3, $a6, 1
	b	.LBB3_71
.LBB3_70:
	fcmp.cule.s	$fcc0, $fa2, $fa0
	fcmp.clt.s	$fcc1, $fa0, $fa2
	movcf2gr	$a3, $fcc0
	slli.d	$a5, $a3, 1
	movcf2gr	$a4, $fcc1
	addi.d	$a3, $a4, 1
.LBB3_71:                               # %.loopexit916
	slli.d	$a6, $a5, 2
	fldx.s	$fa0, $a0, $a6
	addi.d	$a7, $sp, 400
	fldx.s	$fa1, $a6, $a7
	fneg.s	$fa2, $fa0
	fld.s	$fa3, $a2, 0
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	fld.s	$fa4, $a7, 0
	fcmp.clt.s	$fcc0, $fa1, $fs1
	fldx.s	$fa1, $s6, $a6
	fsel	$fa0, $fa2, $fa0, $fcc0
	fsub.s	$fa2, $fa3, $fa4
	alsl.d	$a5, $a5, $s6, 2
	fmadd.s	$fs4, $fa0, $fa1, $fa2
	fld.s	$fa1, $a2, 4
	fld.s	$fa2, $a7, 4
	fld.s	$fa3, $a5, 16
	fld.s	$fa4, $a2, 8
	fld.s	$fa5, $a7, 8
	fsub.s	$fa1, $fa1, $fa2
	fld.s	$fa2, $a5, 32
	fmadd.s	$fs5, $fa0, $fa3, $fa1
	fsub.s	$fa1, $fa4, $fa5
	sltui	$a2, $s2, 4
	fmadd.s	$fs6, $fa0, $fa2, $fa1
	sub.d	$a2, $zero, $a2
	addi.w	$a5, $zero, -4
	or	$a2, $a2, $a5
	add.d	$a2, $a2, $s2
	ori	$a5, $zero, 2
	ori	$s0, $zero, 1
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	beqz	$a2, .LBB3_74
# %bb.72:                               # %.loopexit916
	ori	$a2, $zero, 1
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	bne	$a6, $a2, .LBB3_75
# %bb.73:
	move	$a2, $zero
	b	.LBB3_76
.LBB3_74:
	ori	$a2, $zero, 1
	b	.LBB3_76
.LBB3_75:
	move	$a2, $zero
	ori	$a5, $zero, 1
.LBB3_76:
	alsl.d	$a6, $a2, $a1, 2
	fld.s	$fa0, $a6, 16
	slli.d	$a2, $a2, 2
	fldx.s	$fa1, $a1, $a2
	fmul.s	$fa2, $fs5, $fa0
	fld.s	$fa3, $a6, 32
	fmadd.s	$fa2, $fs4, $fa1, $fa2
	alsl.d	$a6, $a5, $a1, 2
	fld.s	$fa4, $a6, 16
	fmadd.s	$fs7, $fs6, $fa3, $fa2
	slli.d	$a5, $a5, 2
	fldx.s	$fa2, $a1, $a5
	fmul.s	$fa5, $fs5, $fa4
	alsl.d	$s8, $a4, $s6, 2
	fld.s	$fa6, $s8, 16
	fld.s	$fa7, $a6, 32
	slli.d	$s3, $a4, 2
	fldx.s	$ft0, $s6, $s3
	fmul.s	$ft1, $fa0, $fa6
	alsl.d	$s1, $a3, $s6, 2
	slli.d	$s7, $a3, 2
	fld.s	$ft2, $s1, 16
	fldx.s	$ft3, $s6, $s7
	fmadd.s	$ft1, $fa1, $ft0, $ft1
	fld.s	$ft4, $s8, 32
	fmul.s	$fa0, $fa0, $ft2
	fmadd.s	$fa0, $fa1, $ft3, $fa0
	fld.s	$fa1, $s1, 32
	fmadd.s	$fa5, $fs4, $fa2, $fa5
	fmadd.s	$fs2, $fs6, $fa7, $fa5
	fmadd.s	$fa5, $fa3, $ft4, $ft1
	fmadd.s	$ft1, $fa3, $fa1, $fa0
	fmul.s	$fa0, $fa4, $fa6
	fmadd.s	$fa0, $fa2, $ft0, $fa0
	fmadd.s	$fa6, $fa7, $ft4, $fa0
	fmul.s	$fa0, $fa4, $ft2
	fldx.s	$fa3, $a0, $s3
	fmadd.s	$fa0, $fa2, $ft3, $fa0
	fldx.s	$fa2, $a0, $s7
	fmadd.s	$fa4, $fa7, $fa1, $fa0
	fst.s	$fa5, $sp, 60                   # 4-byte Folded Spill
	fmul.s	$fa0, $fa5, $fa3
	fst.s	$fa6, $sp, 52                   # 4-byte Folded Spill
	fmul.s	$fa1, $fa6, $fa3
	fst.s	$ft1, $sp, 56                   # 4-byte Folded Spill
	fmul.s	$fa3, $ft1, $fa2
	fst.s	$fa4, $sp, 48                   # 4-byte Folded Spill
	fmul.s	$fa2, $fa4, $fa2
	fsub.s	$fa4, $fs7, $fa0
	fsub.s	$fa5, $fa4, $fa3
	fst.s	$fa5, $sp, 368
	fsub.s	$fa5, $fs2, $fa1
	fsub.s	$fa6, $fa5, $fa2
	fst.s	$fa6, $sp, 372
	fadd.s	$fa4, $fa4, $fa3
	fst.s	$fa4, $sp, 376
	fadd.s	$fa4, $fa5, $fa2
	fst.s	$fa4, $sp, 380
	fadd.s	$fa0, $fs7, $fa0
	fadd.s	$fa4, $fa0, $fa3
	fst.s	$fa4, $sp, 384
	fadd.s	$fa1, $fs2, $fa1
	fadd.s	$fa4, $fa1, $fa2
	fst.s	$fa4, $sp, 388
	fsub.s	$fa0, $fa0, $fa3
	fst.s	$fa0, $sp, 392
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	fldx.s	$fa0, $a0, $a2
	fldx.s	$fa3, $a0, $a5
	fsub.s	$fa1, $fa1, $fa2
	fst.s	$fa1, $sp, 396
	fst.s	$fa0, $sp, 360
	fst.s	$fa3, $sp, 364
	addi.d	$a0, $sp, 360
	addi.d	$a1, $sp, 368
	addi.d	$a2, $sp, 296
	addi.d	$s5, $sp, 296
	pcaddu18i	$ra, %call36(_ZL18intersectRectQuad2PfS_S_)
	jirl	$ra, $ra, 0
	blt	$a0, $s0, .LBB3_87
# %bb.77:
	move	$a2, $zero
	move	$s0, $zero
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 2
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	fldx.s	$fa0, $a3, $a1
	ld.d	$a1, $sp, 600
	fld.s	$fa5, $sp, 52                   # 4-byte Folded Reload
	fneg.s	$fa1, $fa5
	fld.s	$fa3, $sp, 56                   # 4-byte Folded Reload
	fmul.s	$fa1, $fa3, $fa1
	fld.s	$fa2, $sp, 60                   # 4-byte Folded Reload
	fld.s	$fa6, $sp, 48                   # 4-byte Folded Reload
	fmadd.s	$fa1, $fa2, $fa6, $fa1
	frecip.s	$fa4, $fa1
	fmul.s	$fa1, $fa2, $fa4
	fmul.s	$fa2, $fa3, $fa4
	fmul.s	$fa3, $fa6, $fa4
	fneg.s	$fa4, $fa4
	fmul.s	$fa4, $fa5, $fa4
	fldx.s	$fa5, $s6, $s3
	fldx.s	$fa6, $s6, $s7
	fld.s	$fa7, $s8, 16
	fld.s	$ft0, $s1, 16
	fld.s	$ft1, $s8, 32
	fld.s	$ft2, $s1, 32
	slli.d	$a0, $a0, 3
	addi.d	$a3, $sp, 200
	addi.d	$a4, $sp, 168
	fld.s	$ft9, $sp, 92                   # 4-byte Folded Reload
	b	.LBB3_79
.LBB3_78:                               #   in Loop: Header=BB3_79 Depth=1
	addi.d	$a2, $a2, 8
	beq	$a0, $a2, .LBB3_81
.LBB3_79:                               # =>This Inner Loop Header: Depth=1
	add.d	$a5, $s5, $a2
	fldx.s	$ft4, $a2, $s5
	fld.s	$ft3, $a5, 4
	fsub.s	$ft5, $ft4, $fs7
	fsub.s	$ft6, $ft3, $fs2
	fneg.s	$ft7, $ft6
	fmul.s	$ft7, $fa2, $ft7
	fmadd.s	$ft7, $fa3, $ft5, $ft7
	fmul.s	$ft6, $fa1, $ft6
	fmadd.s	$ft5, $fa4, $ft5, $ft6
	alsl.w	$a5, $s0, $s0, 1
	fmadd.s	$ft6, $ft7, $fa5, $fs4
	fmadd.s	$ft6, $ft5, $fa6, $ft6
	alsl.d	$a6, $a5, $a3, 2
	slli.d	$a5, $a5, 2
	fstx.s	$ft6, $a5, $a3
	fmadd.s	$ft8, $ft7, $fa7, $fs5
	fmadd.s	$ft8, $ft5, $ft0, $ft8
	fst.s	$ft8, $a6, 4
	fmadd.s	$ft7, $ft7, $ft1, $fs6
	fmadd.s	$ft5, $ft5, $ft2, $ft7
	fst.s	$ft5, $a6, 8
	fmul.s	$ft7, $ft9, $ft8
	fmadd.s	$ft6, $fs0, $ft6, $ft7
	fmadd.s	$ft5, $fs3, $ft5, $ft6
	fsub.s	$ft5, $fa0, $ft5
	slli.d	$a5, $s0, 2
	fcmp.cult.s	$fcc0, $ft5, $fs1
	fstx.s	$ft5, $a5, $a4
	bcnez	$fcc0, .LBB3_78
# %bb.80:                               #   in Loop: Header=BB3_79 Depth=1
	slli.w	$a5, $s0, 1
	slli.d	$a6, $a5, 2
	fstx.s	$ft4, $a6, $s5
	addi.w	$a5, $a5, 1
	slli.d	$a5, $a5, 2
	fstx.s	$ft3, $a5, $s5
	addi.w	$s0, $s0, 1
	b	.LBB3_78
.LBB3_81:
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB3_87
# %bb.82:
	slt	$a2, $a1, $s0
	masknez	$a3, $s0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	slt	$a2, $a0, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$s1, $a1, $a0
	bgeu	$s1, $s0, .LBB3_89
# %bb.83:
	move	$a3, $zero
	fld.s	$fa0, $sp, 168
	addi.d	$a0, $sp, 172
	addi.d	$a1, $s0, -1
	ori	$a2, $zero, 1
.LBB3_84:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a0, 0
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	movcf2gr	$a4, $fcc0
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a3, $a4, $a3
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, -1
	addi.w	$a2, $a2, 1
	bnez	$a1, .LBB3_84
# %bb.85:
	addi.d	$a1, $sp, 296
	addi.d	$a4, $sp, 120
	addi.d	$s3, $sp, 120
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_Z11cullPoints2iPfiiPi)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	bstrpick.d	$a0, $s1, 31, 0
	slli.d	$s5, $a0, 2
	addi.d	$s6, $sp, 200
	lu12i.w	$s7, -524288
	lu32i.d	$s7, 0
	addi.d	$s8, $sp, 168
.LBB3_86:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$a0, $s0, $s3
	alsl.w	$a1, $a0, $a0, 1
	slli.d	$a2, $a1, 2
	fldx.s	$fa0, $a2, $s6
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	fld.s	$fa1, $a2, 0
	alsl.d	$a1, $a1, $s6, 2
	fadd.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $a1, 4
	fld.s	$fa2, $a2, 4
	fld.s	$fa3, $a1, 8
	fld.s	$fa4, $a2, 8
	fst.s	$fa0, $sp, 152
	fadd.s	$fa0, $fa1, $fa2
	fst.s	$fa0, $sp, 156
	fadd.s	$fa0, $fa3, $fa4
	ld.wu	$a2, $s4, 0
	ld.w	$a3, $s4, 4
	fst.s	$fa0, $sp, 160
	ld.wu	$a1, $s4, 8
	xor	$a2, $a2, $s7
	xor	$a3, $a3, $s7
	slli.d	$a3, $a3, 32
	or	$a2, $a3, $a2
	ld.d	$a3, $fp, 0
	xor	$a1, $a1, $s7
	slli.d	$a0, $a0, 2
	fldx.s	$fa0, $a0, $s8
	ld.d	$a3, $a3, 32
	st.d	$a2, $sp, 104
	st.d	$a1, $sp, 112
	fneg.s	$fa0, $fa0
	addi.d	$a1, $sp, 104
	addi.d	$a2, $sp, 152
	move	$a0, $fp
	jirl	$ra, $a3, 0
	addi.d	$s0, $s0, 4
	bne	$s5, $s0, .LBB3_86
	b	.LBB3_92
.LBB3_87:
	move	$s1, $zero
.LBB3_88:
	addi.w	$a0, $s1, 0
	fld.d	$fs7, $sp, 440                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 448                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 456                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 464                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 472                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 480                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 488                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 496                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 568                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 576                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 584                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 592
	ret
.LBB3_89:                               # %.lr.ph
	addi.d	$s1, $sp, 168
	addi.d	$s3, $sp, 204
	lu12i.w	$s5, -524288
	lu32i.d	$s5, 0
	move	$s6, $s0
.LBB3_90:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $s3, -4
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	fld.s	$fa1, $a0, 0
	fld.s	$fa2, $s3, 0
	fld.s	$fa3, $a0, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $sp, 120
	fadd.s	$fa0, $fa2, $fa3
	fld.s	$fa1, $s3, 4
	fld.s	$fa2, $a0, 8
	fst.s	$fa0, $sp, 124
	ld.wu	$a1, $s4, 0
	ld.w	$a2, $s4, 4
	fadd.s	$fa0, $fa1, $fa2
	ld.wu	$a0, $s4, 8
	xor	$a1, $a1, $s5
	xor	$a2, $a2, $s5
	slli.d	$a2, $a2, 32
	or	$a1, $a2, $a1
	ld.d	$a2, $fp, 0
	fst.s	$fa0, $sp, 128
	xor	$a0, $a0, $s5
	fld.s	$fa0, $s1, 0
	ld.d	$a3, $a2, 32
	st.d	$a1, $sp, 152
	st.d	$a0, $sp, 160
	fneg.s	$fa0, $fa0
	addi.d	$a1, $sp, 152
	addi.d	$a2, $sp, 120
	move	$a0, $fp
	jirl	$ra, $a3, 0
	addi.d	$s3, $s3, 12
	addi.d	$s6, $s6, -1
	addi.d	$s1, $s1, 4
	bnez	$s6, .LBB3_90
# %bb.91:
	move	$s1, $s0
.LBB3_92:                               # %.loopexit
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.w	$s2, $a0, 0
	b	.LBB3_88
.Lfunc_end3:
	.size	_Z8dBoxBox2RK9btVector3PKfS1_S1_S3_S1_RS_PfPiiP12dContactGeomiRN36btDiscreteCollisionDetectorInterface6ResultE, .Lfunc_end3-_Z8dBoxBox2RK9btVector3PKfS1_S1_S3_S1_RS_PfPiiP12dContactGeomiRN36btDiscreteCollisionDetectorInterface6ResultE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL18intersectRectQuad2PfS_S_
	.type	_ZL18intersectRectQuad2PfS_S_,@function
_ZL18intersectRectQuad2PfS_S_:          # @_ZL18intersectRectQuad2PfS_S_
# %bb.0:                                # %.lr.ph
	fld.s	$fa2, $a1, 0
	fld.s	$fa0, $a0, 0
	fneg.s	$fa3, $fa2
	fcmp.cule.s	$fcc0, $fa0, $fa3
	bcnez	$fcc0, .LBB4_2
# %bb.1:                                # %._crit_edge216
	fst.s	$fa2, $a2, 0
	fld.s	$fa0, $a1, 4
	fst.s	$fa0, $a2, 4
	fld.s	$fa2, $a1, 0
	fld.s	$fa0, $a0, 0
	addi.d	$a4, $a2, 8
	fneg.s	$fa3, $fa2
	ori	$a3, $zero, 1
	b	.LBB4_3
.LBB4_2:
	move	$a3, $zero
	move	$a4, $a2
.LBB4_3:
	fld.s	$fa1, $a1, 8
	fcmp.clt.s	$fcc0, $fa3, $fa0
	fneg.s	$fa3, $fa1
	fcmp.clt.s	$fcc1, $fa3, $fa0
	movcf2gr	$a5, $fcc0
	movcf2gr	$a6, $fcc1
	beq	$a5, $a6, .LBB4_5
# %bb.4:                                # %._crit_edge218
	fld.s	$fa3, $a1, 4
	fld.s	$fa4, $a1, 12
	fsub.s	$fa4, $fa4, $fa3
	fsub.s	$fa1, $fa1, $fa2
	fdiv.s	$fa1, $fa4, $fa1
	fneg.s	$fa2, $fa2
	fsub.s	$fa0, $fa2, $fa0
	fmadd.s	$fa0, $fa1, $fa0, $fa3
	fst.s	$fa0, $a4, 4
	fld.s	$fa0, $a0, 0
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $a4, 0
	fld.s	$fa1, $a1, 8
	fld.s	$fa0, $a0, 0
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 8
	fneg.s	$fa3, $fa1
.LBB4_5:
	fcmp.cule.s	$fcc0, $fa0, $fa3
	bcnez	$fcc0, .LBB4_7
# %bb.6:                                # %._crit_edge221
	fst.s	$fa1, $a4, 0
	fld.s	$fa0, $a1, 12
	fst.s	$fa0, $a4, 4
	fld.s	$fa1, $a1, 8
	fld.s	$fa0, $a0, 0
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 8
	fneg.s	$fa3, $fa1
.LBB4_7:
	fld.s	$fa2, $a1, 16
	fcmp.clt.s	$fcc0, $fa3, $fa0
	fneg.s	$fa3, $fa2
	fcmp.clt.s	$fcc1, $fa3, $fa0
	movcf2gr	$a5, $fcc0
	movcf2gr	$a6, $fcc1
	beq	$a5, $a6, .LBB4_9
# %bb.8:                                # %._crit_edge224
	fld.s	$fa3, $a1, 12
	fld.s	$fa4, $a1, 20
	fsub.s	$fa4, $fa4, $fa3
	fsub.s	$fa2, $fa2, $fa1
	fdiv.s	$fa2, $fa4, $fa2
	fneg.s	$fa1, $fa1
	fsub.s	$fa0, $fa1, $fa0
	fmadd.s	$fa0, $fa2, $fa0, $fa3
	fst.s	$fa0, $a4, 4
	fld.s	$fa0, $a0, 0
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $a4, 0
	fld.s	$fa2, $a1, 16
	fld.s	$fa0, $a0, 0
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 8
	fneg.s	$fa3, $fa2
.LBB4_9:
	fcmp.cule.s	$fcc0, $fa0, $fa3
	bcnez	$fcc0, .LBB4_11
# %bb.10:                               # %._crit_edge227
	fst.s	$fa2, $a4, 0
	fld.s	$fa0, $a1, 20
	fst.s	$fa0, $a4, 4
	fld.s	$fa2, $a1, 16
	fld.s	$fa0, $a0, 0
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 8
	fneg.s	$fa3, $fa2
.LBB4_11:
	fld.s	$fa1, $a1, 24
	fcmp.clt.s	$fcc0, $fa3, $fa0
	fneg.s	$fa3, $fa1
	fcmp.clt.s	$fcc1, $fa3, $fa0
	movcf2gr	$a5, $fcc0
	movcf2gr	$a6, $fcc1
	beq	$a5, $a6, .LBB4_13
# %bb.12:                               # %._crit_edge230
	fld.s	$fa3, $a1, 20
	fld.s	$fa4, $a1, 28
	fsub.s	$fa4, $fa4, $fa3
	fsub.s	$fa1, $fa1, $fa2
	fdiv.s	$fa1, $fa4, $fa1
	fneg.s	$fa2, $fa2
	fsub.s	$fa0, $fa2, $fa0
	fmadd.s	$fa0, $fa1, $fa0, $fa3
	fst.s	$fa0, $a4, 4
	fld.s	$fa0, $a0, 0
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $a4, 0
	fld.s	$fa1, $a1, 24
	fld.s	$fa0, $a0, 0
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 8
	fneg.s	$fa3, $fa1
.LBB4_13:
	fcmp.cule.s	$fcc0, $fa0, $fa3
	bcnez	$fcc0, .LBB4_15
# %bb.14:                               # %._crit_edge233
	fst.s	$fa1, $a4, 0
	fld.s	$fa0, $a1, 28
	fst.s	$fa0, $a4, 4
	fld.s	$fa1, $a1, 24
	fld.s	$fa0, $a0, 0
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 8
	fneg.s	$fa3, $fa1
.LBB4_15:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	fld.s	$fa2, $a1, 0
	fcmp.clt.s	$fcc0, $fa3, $fa0
	fneg.s	$fa3, $fa2
	fcmp.clt.s	$fcc1, $fa3, $fa0
	movcf2gr	$a5, $fcc0
	movcf2gr	$a6, $fcc1
	beq	$a5, $a6, .LBB4_17
# %bb.16:
	fld.s	$fa3, $a1, 28
	fld.s	$fa4, $a1, 4
	fsub.s	$fa4, $fa4, $fa3
	fsub.s	$fa2, $fa2, $fa1
	fdiv.s	$fa2, $fa4, $fa2
	fneg.s	$fa1, $fa1
	fsub.s	$fa0, $fa1, $fa0
	fmadd.s	$fa0, $fa2, $fa0, $fa3
	fst.s	$fa0, $a4, 4
	fld.s	$fa0, $a0, 0
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $a4, 0
	addi.d	$a3, $a3, 1
	andi	$a1, $a3, 8
	ori	$fp, $zero, 8
	beqz	$a1, .LBB4_18
	b	.LBB4_46
.LBB4_17:                               # %._crit_edge
	beqz	$a3, .LBB4_44
.LBB4_18:                               # %.lr.ph.1
	move	$fp, $zero
	addi.d	$a1, $a2, 8
	fld.s	$fa0, $a0, 0
	addi.w	$a3, $a3, 1
	addi.d	$a4, $sp, 0
	ori	$a5, $zero, 1
	b	.LBB4_20
	.p2align	4, , 16
.LBB4_19:                               #   in Loop: Header=BB4_20 Depth=1
	addi.w	$a3, $a3, -1
	addi.d	$a1, $a1, 8
	bge	$a5, $a3, .LBB4_26
.LBB4_20:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a1, -8
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB4_23
# %bb.21:                               #   in Loop: Header=BB4_20 Depth=1
	fst.s	$fa1, $a4, 0
	fld.s	$fa0, $a1, -4
	addi.w	$fp, $fp, 1
	andi	$a6, $fp, 8
	fst.s	$fa0, $a4, 4
	bnez	$a6, .LBB4_45
# %bb.22:                               # %._crit_edge237
                                        #   in Loop: Header=BB4_20 Depth=1
	fld.s	$fa1, $a1, -8
	fld.s	$fa0, $a0, 0
	addi.d	$a4, $a4, 8
.LBB4_23:                               #   in Loop: Header=BB4_20 Depth=1
	addi.d	$a6, $a3, -2
	sltui	$a6, $a6, 1
	masknez	$a7, $a1, $a6
	maskeqz	$a6, $a2, $a6
	or	$a6, $a6, $a7
	fld.s	$fa2, $a6, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	fcmp.clt.s	$fcc1, $fa2, $fa0
	movcf2gr	$a7, $fcc0
	movcf2gr	$t0, $fcc1
	beq	$a7, $t0, .LBB4_19
# %bb.24:                               #   in Loop: Header=BB4_20 Depth=1
	fld.s	$fa3, $a1, -4
	fld.s	$fa4, $a6, 4
	fsub.s	$fa4, $fa4, $fa3
	fsub.s	$fa2, $fa2, $fa1
	fdiv.s	$fa2, $fa4, $fa2
	fsub.s	$fa0, $fa0, $fa1
	fmadd.s	$fa0, $fa2, $fa0, $fa3
	fst.s	$fa0, $a4, 4
	fld.s	$fa0, $a0, 0
	addi.w	$fp, $fp, 1
	andi	$a6, $fp, 8
	fst.s	$fa0, $a4, 0
	bnez	$a6, .LBB4_45
# %bb.25:                               #   in Loop: Header=BB4_20 Depth=1
	addi.d	$a4, $a4, 8
	b	.LBB4_19
.LBB4_26:                               # %._crit_edge.1
	ori	$a1, $zero, 1
	blt	$fp, $a1, .LBB4_44
# %bb.27:                               # %.lr.ph.1179
	addi.d	$a3, $sp, 4
	addi.w	$a4, $fp, 1
	addi.d	$a5, $sp, 8
	addi.d	$a6, $sp, 0
	move	$a7, $a2
	move	$fp, $zero
	b	.LBB4_29
	.p2align	4, , 16
.LBB4_28:                               #   in Loop: Header=BB4_29 Depth=1
	addi.w	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bge	$a1, $a4, .LBB4_35
.LBB4_29:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a5, -4
	fld.s	$fa1, $a0, 4
	fneg.s	$fa2, $fa0
	fcmp.cule.s	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB4_32
# %bb.30:                               #   in Loop: Header=BB4_29 Depth=1
	fld.s	$fa0, $a5, -8
	fst.s	$fa0, $a7, 0
	fld.s	$fa0, $a5, -4
	addi.w	$fp, $fp, 1
	andi	$t0, $fp, 8
	fst.s	$fa0, $a7, 4
	bnez	$t0, .LBB4_46
# %bb.31:                               # %._crit_edge240
                                        #   in Loop: Header=BB4_29 Depth=1
	fld.s	$fa1, $a0, 4
	addi.d	$a7, $a7, 8
	fneg.s	$fa2, $fa0
.LBB4_32:                               #   in Loop: Header=BB4_29 Depth=1
	addi.d	$t0, $a4, -2
	sltui	$t0, $t0, 1
	addi.d	$t1, $a5, 4
	masknez	$t1, $t1, $t0
	maskeqz	$t2, $a3, $t0
	or	$t1, $t2, $t1
	fld.s	$fa3, $t1, 0
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fneg.s	$fa2, $fa3
	fcmp.clt.s	$fcc1, $fa2, $fa1
	movcf2gr	$t1, $fcc0
	movcf2gr	$t2, $fcc1
	beq	$t1, $t2, .LBB4_28
# %bb.33:                               #   in Loop: Header=BB4_29 Depth=1
	masknez	$t1, $a5, $t0
	maskeqz	$t0, $a6, $t0
	or	$t0, $t0, $t1
	fld.s	$fa2, $a5, -8
	fld.s	$fa4, $t0, 0
	fsub.s	$fa4, $fa4, $fa2
	fsub.s	$fa3, $fa3, $fa0
	fdiv.s	$fa3, $fa4, $fa3
	fneg.s	$fa0, $fa0
	fsub.s	$fa0, $fa0, $fa1
	fmadd.s	$fa0, $fa3, $fa0, $fa2
	fst.s	$fa0, $a7, 0
	fld.s	$fa0, $a0, 4
	fneg.s	$fa0, $fa0
	addi.w	$fp, $fp, 1
	andi	$t0, $fp, 8
	fst.s	$fa0, $a7, 4
	bnez	$t0, .LBB4_46
# %bb.34:                               #   in Loop: Header=BB4_29 Depth=1
	addi.d	$a7, $a7, 8
	b	.LBB4_28
.LBB4_35:                               # %._crit_edge.1194
	ori	$a1, $zero, 1
	blt	$fp, $a1, .LBB4_44
# %bb.36:                               # %.lr.ph.1.1
	fld.s	$fa0, $a0, 4
	addi.d	$a3, $a2, 4
	addi.w	$a4, $fp, 1
	addi.d	$a5, $a2, 8
	addi.d	$a6, $sp, 0
	move	$fp, $zero
	b	.LBB4_38
	.p2align	4, , 16
.LBB4_37:                               #   in Loop: Header=BB4_38 Depth=1
	addi.w	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bge	$a1, $a4, .LBB4_45
.LBB4_38:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a5, -4
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB4_41
# %bb.39:                               #   in Loop: Header=BB4_38 Depth=1
	fld.s	$fa0, $a5, -8
	fst.s	$fa0, $a6, 0
	fld.s	$fa1, $a5, -4
	addi.w	$fp, $fp, 1
	andi	$a7, $fp, 8
	fst.s	$fa1, $a6, 4
	bnez	$a7, .LBB4_45
# %bb.40:                               # %._crit_edge243
                                        #   in Loop: Header=BB4_38 Depth=1
	fld.s	$fa0, $a0, 4
	addi.d	$a6, $a6, 8
.LBB4_41:                               #   in Loop: Header=BB4_38 Depth=1
	addi.d	$a7, $a4, -2
	sltui	$a7, $a7, 1
	addi.d	$t0, $a5, 4
	masknez	$t0, $t0, $a7
	maskeqz	$t1, $a3, $a7
	or	$t0, $t1, $t0
	fld.s	$fa2, $t0, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	fcmp.clt.s	$fcc1, $fa2, $fa0
	movcf2gr	$t0, $fcc0
	movcf2gr	$t1, $fcc1
	beq	$t0, $t1, .LBB4_37
# %bb.42:                               #   in Loop: Header=BB4_38 Depth=1
	masknez	$t0, $a5, $a7
	maskeqz	$a7, $a2, $a7
	or	$a7, $a7, $t0
	fld.s	$fa3, $a5, -8
	fld.s	$fa4, $a7, 0
	fsub.s	$fa4, $fa4, $fa3
	fsub.s	$fa2, $fa2, $fa1
	fdiv.s	$fa2, $fa4, $fa2
	fsub.s	$fa0, $fa0, $fa1
	fmadd.s	$fa0, $fa2, $fa0, $fa3
	fst.s	$fa0, $a6, 0
	fld.s	$fa0, $a0, 4
	addi.w	$fp, $fp, 1
	andi	$a7, $fp, 8
	fst.s	$fa0, $a6, 4
	bnez	$a7, .LBB4_45
# %bb.43:                               #   in Loop: Header=BB4_38 Depth=1
	addi.d	$a6, $a6, 8
	b	.LBB4_37
.LBB4_44:
	move	$fp, $zero
.LBB4_45:                               # %.thread145
	slli.w	$a0, $fp, 1
	slli.d	$a3, $a0, 2
	addi.d	$a1, $sp, 0
	move	$a0, $a2
	move	$a2, $a3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_46:                               # %.thread145.thread
	move	$a0, $fp
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end4:
	.size	_ZL18intersectRectQuad2PfS_S_, .Lfunc_end4-_ZL18intersectRectQuad2PfS_S_
                                        # -- End function
	.globl	_ZN16btBoxBoxDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb # -- Begin function _ZN16btBoxBoxDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb
	.p2align	5
	.type	_ZN16btBoxBoxDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb,@function
_ZN16btBoxBoxDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb: # @_ZN16btBoxBoxDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -288
	.cfi_def_cfa_offset 288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 200                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 56, -56
	.cfi_offset 57, -64
	.cfi_offset 58, -72
	.cfi_offset 59, -80
	.cfi_offset 60, -88
	move	$s1, $a1
	fld.s	$fa0, $a1, 0
	ld.d	$a1, $a1, 4
	move	$fp, $a2
	move	$s2, $a0
	fst.s	$fa0, $sp, 152
	fld.s	$fa0, $s1, 64
	st.d	$a1, $sp, 156
	ld.d	$a0, $s1, 68
	ld.d	$a1, $s1, 16
	ld.d	$a2, $s1, 80
	fst.s	$fa0, $sp, 104
	st.d	$a0, $sp, 108
	st.d	$a1, $sp, 168
	st.d	$a2, $sp, 120
	fld.s	$fa0, $s1, 24
	fld.s	$fa1, $s1, 88
	fld.s	$fa2, $s1, 32
	fld.s	$fa3, $s1, 96
	fst.s	$fa0, $sp, 176
	fst.s	$fa1, $sp, 128
	fst.s	$fa2, $sp, 184
	fst.s	$fa3, $sp, 136
	fld.s	$fa0, $s1, 36
	fld.s	$fa1, $s1, 40
	fld.s	$fa2, $s1, 104
	ld.d	$s3, $s2, 8
	fld.s	$fa3, $s1, 100
	fst.s	$fa1, $sp, 192
	fst.s	$fa2, $sp, 144
	ld.d	$a0, $s3, 0
	fld.s	$fs2, $s3, 40
	fld.s	$fs3, $s3, 44
	fld.s	$fs4, $s3, 48
	ld.d	$a1, $a0, 88
	fst.s	$fa0, $sp, 188
	fst.s	$fa3, $sp, 140
	addi.d	$s0, $s1, 48
	move	$a0, $s3
	jirl	$ra, $a1, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs0, $fa0
	move	$a0, $s3
	jirl	$ra, $a1, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs1, $fa0
	move	$a0, $s3
	jirl	$ra, $a1, 0
	fadd.s	$fa1, $fs2, $fs0
	fadd.s	$fa2, $fs3, $fs1
	fadd.s	$fa0, $fs4, $fa0
	fadd.s	$fa1, $fa1, $fa1
	fadd.s	$fa2, $fa2, $fa2
	fadd.s	$fa0, $fa0, $fa0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	ld.d	$s2, $s2, 16
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	st.d	$a0, $sp, 64
	ld.d	$a0, $s2, 0
	fld.s	$fs2, $s2, 40
	fld.s	$fs3, $s2, 44
	fld.s	$fs4, $s2, 48
	ld.d	$a2, $a0, 88
	bstrpick.d	$a0, $a1, 31, 0
	st.d	$a0, $sp, 72
	addi.d	$s1, $s1, 112
	move	$a0, $s2
	jirl	$ra, $a2, 0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs0, $fa0
	move	$a0, $s2
	jirl	$ra, $a1, 0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs1, $fa0
	move	$a0, $s2
	jirl	$ra, $a1, 0
	fadd.s	$fa1, $fs2, $fs0
	fadd.s	$fa2, $fs3, $fs1
	fadd.s	$fa0, $fs4, $fa0
	fadd.s	$fa1, $fa1, $fa1
	fadd.s	$fa2, $fa2, $fa2
	fadd.s	$fa0, $fa0, $fa0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	st.d	$fp, $sp, 32
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 152
	addi.d	$a2, $sp, 64
	addi.d	$a4, $sp, 104
	addi.d	$a5, $sp, 48
	addi.d	$a6, $sp, 88
	addi.d	$a7, $sp, 84
	st.d	$a0, $sp, 0
	move	$a0, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_Z8dBoxBox2RK9btVector3PKfS1_S1_S3_S1_RS_PfPiiP12dContactGeomiRN36btDiscreteCollisionDetectorInterface6ResultE)
	jirl	$ra, $ra, 0
	fld.d	$fs4, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 232                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.Lfunc_end5:
	.size	_ZN16btBoxBoxDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb, .Lfunc_end5-_ZN16btBoxBoxDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN36btDiscreteCollisionDetectorInterfaceD2Ev,"axG",@progbits,_ZN36btDiscreteCollisionDetectorInterfaceD2Ev,comdat
	.weak	_ZN36btDiscreteCollisionDetectorInterfaceD2Ev # -- Begin function _ZN36btDiscreteCollisionDetectorInterfaceD2Ev
	.p2align	5
	.type	_ZN36btDiscreteCollisionDetectorInterfaceD2Ev,@function
_ZN36btDiscreteCollisionDetectorInterfaceD2Ev: # @_ZN36btDiscreteCollisionDetectorInterfaceD2Ev
# %bb.0:
	ret
.Lfunc_end6:
	.size	_ZN36btDiscreteCollisionDetectorInterfaceD2Ev, .Lfunc_end6-_ZN36btDiscreteCollisionDetectorInterfaceD2Ev
                                        # -- End function
	.section	.text._ZN16btBoxBoxDetectorD0Ev,"axG",@progbits,_ZN16btBoxBoxDetectorD0Ev,comdat
	.weak	_ZN16btBoxBoxDetectorD0Ev       # -- Begin function _ZN16btBoxBoxDetectorD0Ev
	.p2align	5
	.type	_ZN16btBoxBoxDetectorD0Ev,@function
_ZN16btBoxBoxDetectorD0Ev:              # @_ZN16btBoxBoxDetectorD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end7:
	.size	_ZN16btBoxBoxDetectorD0Ev, .Lfunc_end7-_ZN16btBoxBoxDetectorD0Ev
	.cfi_endproc
                                        # -- End function
	.type	_ZTV16btBoxBoxDetector,@object  # @_ZTV16btBoxBoxDetector
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV16btBoxBoxDetector
	.p2align	3, 0x0
_ZTV16btBoxBoxDetector:
	.dword	0
	.dword	_ZTI16btBoxBoxDetector
	.dword	_ZN36btDiscreteCollisionDetectorInterfaceD2Ev
	.dword	_ZN16btBoxBoxDetectorD0Ev
	.dword	_ZN16btBoxBoxDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb
	.size	_ZTV16btBoxBoxDetector, 40

	.type	_ZTI16btBoxBoxDetector,@object  # @_ZTI16btBoxBoxDetector
	.globl	_ZTI16btBoxBoxDetector
	.p2align	3, 0x0
_ZTI16btBoxBoxDetector:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS16btBoxBoxDetector
	.dword	_ZTI36btDiscreteCollisionDetectorInterface
	.size	_ZTI16btBoxBoxDetector, 24

	.type	_ZTS16btBoxBoxDetector,@object  # @_ZTS16btBoxBoxDetector
	.section	.rodata,"a",@progbits
	.globl	_ZTS16btBoxBoxDetector
_ZTS16btBoxBoxDetector:
	.asciz	"16btBoxBoxDetector"
	.size	_ZTS16btBoxBoxDetector, 19

	.type	_ZTI36btDiscreteCollisionDetectorInterface,@object # @_ZTI36btDiscreteCollisionDetectorInterface
	.section	.data.rel.ro._ZTI36btDiscreteCollisionDetectorInterface,"awG",@progbits,_ZTI36btDiscreteCollisionDetectorInterface,comdat
	.weak	_ZTI36btDiscreteCollisionDetectorInterface
	.p2align	3, 0x0
_ZTI36btDiscreteCollisionDetectorInterface:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS36btDiscreteCollisionDetectorInterface
	.size	_ZTI36btDiscreteCollisionDetectorInterface, 16

	.type	_ZTS36btDiscreteCollisionDetectorInterface,@object # @_ZTS36btDiscreteCollisionDetectorInterface
	.section	.rodata._ZTS36btDiscreteCollisionDetectorInterface,"aG",@progbits,_ZTS36btDiscreteCollisionDetectorInterface,comdat
	.weak	_ZTS36btDiscreteCollisionDetectorInterface
_ZTS36btDiscreteCollisionDetectorInterface:
	.asciz	"36btDiscreteCollisionDetectorInterface"
	.size	_ZTS36btDiscreteCollisionDetectorInterface, 39

	.globl	_ZN16btBoxBoxDetectorC1EP10btBoxShapeS1_
	.type	_ZN16btBoxBoxDetectorC1EP10btBoxShapeS1_,@function
_ZN16btBoxBoxDetectorC1EP10btBoxShapeS1_ = _ZN16btBoxBoxDetectorC2EP10btBoxShapeS1_
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _ZTI16btBoxBoxDetector
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS16btBoxBoxDetector
	.addrsig_sym _ZTI36btDiscreteCollisionDetectorInterface
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS36btDiscreteCollisionDetectorInterface
