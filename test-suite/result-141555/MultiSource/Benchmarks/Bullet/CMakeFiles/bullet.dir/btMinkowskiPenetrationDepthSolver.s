	.file	"btMinkowskiPenetrationDepthSolver.cpp"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAlloc
.LCPI0_0:
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_1:
	.dword	0x3f847ae147ae147b              # double 0.01
	.text
	.globl	_ZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAlloc
	.p2align	5
	.type	_ZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAlloc,@function
_ZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAlloc: # @_ZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAlloc
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -2032
	.cfi_def_cfa_offset 2032
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
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -624
	.cfi_def_cfa_offset 4704
	move	$t0, $a2
	ld.w	$a0, $a2, 8
	addi.w	$a0, $a0, -17
	ori	$a2, $zero, 1
	st.d	$a7, $sp, 16                    # 8-byte Folded Spill
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	move	$s1, $a5
	move	$s2, $a4
	move	$s3, $a3
	move	$s4, $a1
	bltu	$a2, $a0, .LBB0_2
# %bb.1:
	ld.w	$a0, $s3, 8
	addi.w	$a0, $a0, -17
	sltui	$a0, $a0, 2
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
.LBB0_3:                                # %.preheader463
	move	$a0, $zero
	lu12i.w	$a1, 1
	ori	$a1, $a1, 616
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 608
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	fld.s	$ft1, $s2, 0
	addi.d	$a1, $s2, 16
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	fld.s	$ft4, $s2, 16
	addi.d	$a1, $s2, 32
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	fld.s	$ft5, $s2, 32
	fld.s	$ft2, $s2, 4
	fld.s	$ft8, $s2, 20
	fld.s	$ft6, $s2, 36
	fld.s	$ft3, $s2, 8
	fld.s	$ft9, $s2, 24
	fld.s	$ft7, $s2, 40
	fld.s	$fa0, $s1, 0
	addi.d	$a1, $s1, 16
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	fld.s	$fa3, $s1, 16
	addi.d	$a1, $s1, 32
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	fld.s	$fa4, $s1, 32
	fld.s	$fa1, $s1, 4
	fld.s	$fa7, $s1, 20
	fld.s	$fa5, $s1, 36
	fld.s	$fa2, $s1, 8
	fld.s	$ft0, $s1, 24
	fld.s	$fa6, $s1, 40
	vst	$vr9, $sp, 128                  # 16-byte Folded Spill
	vreplvei.w	$vr18, $vr9, 0
	vreplvei.w	$vr19, $vr12, 0
	vreplvei.w	$vr20, $vr13, 0
	vst	$vr10, $sp, 112                 # 16-byte Folded Spill
	vreplvei.w	$vr21, $vr10, 0
	vreplvei.w	$vr22, $vr16, 0
	vreplvei.w	$vr23, $vr14, 0
	vst	$vr11, $sp, 96                  # 16-byte Folded Spill
	vreplvei.w	$vr24, $vr11, 0
	vreplvei.w	$vr25, $vr17, 0
	vreplvei.w	$vr26, $vr15, 0
	vst	$vr0, $sp, 272                  # 16-byte Folded Spill
	vreplvei.w	$vr27, $vr0, 0
	vst	$vr3, $sp, 224                  # 16-byte Folded Spill
	vreplvei.w	$vr28, $vr3, 0
	vst	$vr4, $sp, 208                  # 16-byte Folded Spill
	vreplvei.w	$vr29, $vr4, 0
	vst	$vr1, $sp, 256                  # 16-byte Folded Spill
	vreplvei.w	$vr30, $vr1, 0
	vst	$vr7, $sp, 160                  # 16-byte Folded Spill
	vreplvei.w	$vr31, $vr7, 0
	pcalau12i	$a1, %pc_hi20(_ZL22sPenetrationDirections)
	addi.d	$s6, $a1, %pc_lo12(_ZL22sPenetrationDirections)
	addi.d	$a1, $sp, 1576
	addi.d	$a2, $sp, 584
	ori	$a3, $zero, 640
	vst	$vr5, $sp, 192                  # 16-byte Folded Spill
	vreplvei.w	$vr0, $vr5, 0
	vst	$vr2, $sp, 240                  # 16-byte Folded Spill
	vreplvei.w	$vr1, $vr2, 0
	vst	$vr8, $sp, 144                  # 16-byte Folded Spill
	vreplvei.w	$vr2, $vr8, 0
	vst	$vr6, $sp, 176                  # 16-byte Folded Spill
	vreplvei.w	$vr3, $vr6, 0
	.p2align	4, , 16
.LBB0_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $s6, $a0
	vldx	$vr4, $s6, $a0
	vld	$vr5, $a4, 16
	vpackev.w	$vr6, $vr5, $vr4
	vpackod.w	$vr7, $vr5, $vr4
	vilvh.w	$vr4, $vr5, $vr4
	vbitrevi.w	$vr5, $vr6, 31
	vbitrevi.w	$vr8, $vr7, 31
	vbitrevi.w	$vr9, $vr4, 31
	vfmul.s	$vr10, $vr19, $vr8
	vfmadd.s	$vr10, $vr18, $vr5, $vr10
	vfmadd.s	$vr10, $vr20, $vr9, $vr10
	vfmul.s	$vr11, $vr22, $vr8
	vfmadd.s	$vr11, $vr21, $vr5, $vr11
	vfmadd.s	$vr11, $vr23, $vr9, $vr11
	vfmul.s	$vr8, $vr25, $vr8
	vfmadd.s	$vr5, $vr24, $vr5, $vr8
	vfmadd.s	$vr5, $vr26, $vr9, $vr5
	vshuf4i.w	$vr8, $vr11, 16
	vslli.d	$vr8, $vr8, 32
	vrepli.b	$vr9, 0
	vilvl.w	$vr10, $vr9, $vr10
	vor.v	$vr8, $vr8, $vr10
	vilvl.w	$vr5, $vr9, $vr5
	add.d	$a4, $a1, $a0
	vpackod.d	$vr10, $vr5, $vr8
	vpackev.d	$vr5, $vr5, $vr8
	vstx	$vr5, $a0, $a1
	vst	$vr10, $a4, 16
	vfmul.s	$vr5, $vr7, $vr28
	vfmadd.s	$vr5, $vr27, $vr6, $vr5
	vfmadd.s	$vr5, $vr29, $vr4, $vr5
	vfmul.s	$vr8, $vr7, $vr31
	vfmadd.s	$vr8, $vr30, $vr6, $vr8
	vfmadd.s	$vr8, $vr0, $vr4, $vr8
	vfmul.s	$vr7, $vr7, $vr2
	vfmadd.s	$vr6, $vr1, $vr6, $vr7
	vfmadd.s	$vr4, $vr3, $vr4, $vr6
	vshuf4i.w	$vr6, $vr8, 16
	vslli.d	$vr6, $vr6, 32
	vilvl.w	$vr5, $vr9, $vr5
	vor.v	$vr5, $vr6, $vr5
	vilvl.w	$vr4, $vr9, $vr4
	add.d	$a4, $a2, $a0
	vpackod.d	$vr6, $vr4, $vr5
	vpackev.d	$vr4, $vr4, $vr5
	vstx	$vr4, $a0, $a2
	addi.d	$a0, $a0, 32
	vst	$vr6, $a4, 16
	bne	$a0, $a3, .LBB0_4
# %bb.5:                                # %scalar.ph
	fld.s	$fa0, $s6, 640
	fld.s	$fa1, $s6, 644
	fld.s	$fa2, $s6, 648
	fneg.s	$fa3, $fa0
	fneg.s	$fa4, $fa1
	fneg.s	$fa5, $fa2
	fmul.s	$fa6, $ft4, $fa4
	vld	$vr23, $sp, 128                 # 16-byte Folded Reload
	fmadd.s	$fa6, $ft15, $fa3, $fa6
	fmadd.s	$fa6, $ft5, $fa5, $fa6
	fmul.s	$fa7, $ft8, $fa4
	vld	$vr24, $sp, 112                 # 16-byte Folded Reload
	fmadd.s	$fa7, $fs0, $fa3, $fa7
	fmadd.s	$fa7, $ft6, $fa5, $fa7
	fmul.s	$fa4, $ft9, $fa4
	vld	$vr25, $sp, 96                  # 16-byte Folded Reload
	fmadd.s	$fa3, $fs1, $fa3, $fa4
	fmadd.s	$fa3, $ft7, $fa5, $fa3
	movfr2gr.s	$a0, $fa6
	movfr2gr.s	$a1, $fa7
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	ori	$a2, $zero, 2216
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a0, $zero, 2224
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	vld	$vr11, $sp, 224                 # 16-byte Folded Reload
	fmul.s	$fa3, $fa1, $ft3
	vld	$vr8, $sp, 272                  # 16-byte Folded Reload
	fmadd.s	$fa3, $ft0, $fa0, $fa3
	vld	$vr18, $sp, 208                 # 16-byte Folded Reload
	fmadd.s	$fa3, $ft10, $fa2, $fa3
	vld	$vr21, $sp, 160                 # 16-byte Folded Reload
	fmul.s	$fa4, $fa1, $ft13
	vld	$vr9, $sp, 256                  # 16-byte Folded Reload
	fmadd.s	$fa4, $ft1, $fa0, $fa4
	vld	$vr19, $sp, 192                 # 16-byte Folded Reload
	fmadd.s	$fa4, $ft11, $fa2, $fa4
	vld	$vr22, $sp, 144                 # 16-byte Folded Reload
	fmul.s	$fa1, $fa1, $ft14
	vld	$vr10, $sp, 240                 # 16-byte Folded Reload
	fmadd.s	$fa0, $ft2, $fa0, $fa1
	vld	$vr20, $sp, 176                 # 16-byte Folded Reload
	fmadd.s	$fa0, $ft12, $fa2, $fa0
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 1224
	fld.s	$fa0, $s6, 656
	fld.s	$fa1, $s6, 660
	fld.s	$fa2, $s6, 664
	st.d	$a1, $sp, 1232
	fneg.s	$fa3, $fa0
	fneg.s	$fa4, $fa1
	fneg.s	$fa5, $fa2
	fmul.s	$fa6, $ft4, $fa4
	fmadd.s	$fa6, $ft15, $fa3, $fa6
	fmadd.s	$fa6, $ft5, $fa5, $fa6
	fmul.s	$fa7, $ft8, $fa4
	fmadd.s	$fa7, $fs0, $fa3, $fa7
	fmadd.s	$fa7, $ft6, $fa5, $fa7
	fmul.s	$fa4, $ft9, $fa4
	fmadd.s	$fa3, $fs1, $fa3, $fa4
	fmadd.s	$fa3, $ft7, $fa5, $fa3
	movfr2gr.s	$a0, $fa6
	movfr2gr.s	$a1, $fa7
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	ori	$a2, $zero, 2232
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a0, $zero, 2240
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	fmul.s	$fa3, $fa1, $ft3
	fmadd.s	$fa3, $ft0, $fa0, $fa3
	fmadd.s	$fa3, $ft10, $fa2, $fa3
	fmul.s	$fa4, $fa1, $ft13
	fmadd.s	$fa4, $ft1, $fa0, $fa4
	fmadd.s	$fa4, $ft11, $fa2, $fa4
	fmul.s	$fa1, $fa1, $ft14
	fmadd.s	$fa0, $ft2, $fa0, $fa1
	fmadd.s	$fa0, $ft12, $fa2, $fa0
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	st.d	$a0, $sp, 1240
	ld.d	$a0, $t0, 0
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $sp, 1248
	ld.d	$a1, $a0, 128
	st.d	$t0, $sp, 96                    # 8-byte Folded Spill
	move	$a0, $t0
	jirl	$ra, $a1, 0
	ori	$s0, $zero, 1
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	blt	$a0, $s0, .LBB0_9
# %bb.6:                                # %.lr.ph
	move	$s7, $a0
	move	$s0, $zero
	addi.d	$s8, $sp, 1264
	addi.d	$s4, $s6, 672
	ori	$a0, $zero, 2256
	add.d	$fp, $sp, $a0
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a3, $a0, 136
	ori	$a0, $zero, 3560
	add.d	$a2, $sp, $a0
	move	$a0, $s5
	move	$a1, $s0
	jirl	$ra, $a3, 0
	fld.s	$fa0, $s2, 4
	ori	$a0, $zero, 3564
	add.d	$a0, $sp, $a0
	fld.s	$fa1, $a0, 0
	fld.s	$fa2, $s2, 0
	ori	$a0, $zero, 3560
	add.d	$a0, $sp, $a0
	fld.s	$fa3, $a0, 0
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa4, $s2, 8
	ori	$a0, $zero, 3568
	add.d	$a0, $sp, $a0
	fld.s	$fa5, $a0, 0
	fld.s	$fa6, $s2, 20
	fld.s	$fa7, $s2, 16
	fmadd.s	$ft0, $fa2, $fa3, $fa0
	fmadd.s	$fa0, $fa4, $fa5, $ft0
	fmul.s	$fa2, $fa1, $fa6
	fmadd.s	$fa6, $fa7, $fa3, $fa2
	fld.s	$fa2, $s2, 36
	fld.s	$fa7, $s2, 24
	fld.s	$ft1, $s2, 32
	fld.s	$ft2, $s2, 40
	fmul.s	$fa2, $fa1, $fa2
	fmadd.s	$fa1, $fa7, $fa5, $fa6
	fmadd.s	$fa3, $ft1, $fa3, $fa2
	fmadd.s	$fa2, $ft2, $fa5, $fa3
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	ori	$a2, $zero, 3560
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	st.d	$a0, $s4, 0
	st.d	$a1, $s4, 8
	fnmadd.s	$fa4, $fa4, $fa5, $ft0
	fld.s	$ft0, $s2, 16
	fld.s	$ft1, $s2, 0
	fnmadd.s	$fa6, $fa7, $fa5, $fa6
	fnmadd.s	$fa3, $ft2, $fa5, $fa3
	fmul.s	$fa5, $ft0, $fa6
	fmadd.s	$fa5, $ft1, $fa4, $fa5
	fld.s	$fa7, $s2, 32
	fld.s	$ft0, $s2, 20
	fld.s	$ft1, $s2, 4
	fld.s	$ft2, $s2, 36
	fmadd.s	$fa5, $fa7, $fa3, $fa5
	fmul.s	$fa7, $ft0, $fa6
	fmadd.s	$fa7, $ft1, $fa4, $fa7
	fmadd.s	$fa7, $ft2, $fa3, $fa7
	fld.s	$ft0, $s2, 24
	fld.s	$ft1, $s2, 8
	fld.s	$ft2, $s2, 40
	ori	$a0, $zero, 3568
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	fmul.s	$fa6, $ft0, $fa6
	fmadd.s	$fa4, $ft1, $fa4, $fa6
	fmadd.s	$fa3, $ft2, $fa3, $fa4
	movfr2gr.s	$a0, $fa5
	movfr2gr.s	$a1, $fa7
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	fld.s	$fa3, $s1, 16
	st.d	$a0, $fp, -8
	st.d	$a1, $fp, 0
	fld.s	$fa4, $s1, 0
	fmul.s	$fa3, $fa1, $fa3
	fld.s	$fa5, $s1, 32
	fld.s	$fa6, $s1, 20
	fld.s	$fa7, $s1, 4
	fmadd.s	$fa3, $fa4, $fa0, $fa3
	fmadd.s	$fa3, $fa5, $fa2, $fa3
	fmul.s	$fa4, $fa1, $fa6
	fmadd.s	$fa4, $fa7, $fa0, $fa4
	fld.s	$fa5, $s1, 36
	fld.s	$fa6, $s1, 24
	fld.s	$fa7, $s1, 8
	fld.s	$ft0, $s1, 40
	fmadd.s	$fa4, $fa5, $fa2, $fa4
	fmul.s	$fa1, $fa1, $fa6
	fmadd.s	$fa0, $fa7, $fa0, $fa1
	fmadd.s	$fa0, $ft0, $fa2, $fa0
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s8, -8
	st.d	$a1, $s8, 0
	addi.w	$s0, $s0, 1
	addi.d	$s8, $s8, 16
	addi.d	$fp, $fp, 16
	addi.d	$s4, $s4, 16
	bne	$s7, $s0, .LBB0_7
# %bb.8:                                # %.loopexit462.loopexit
	addi.w	$s7, $s0, 42
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ori	$s0, $zero, 1
	b	.LBB0_10
.LBB0_9:
	ori	$s7, $zero, 42
.LBB0_10:                               # %.loopexit462
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a0, 128
	move	$a0, $s3
	jirl	$ra, $a1, 0
	blt	$a0, $s0, .LBB0_14
# %bb.11:                               # %.lr.ph469
	move	$s8, $a0
	move	$s0, $zero
	bstrpick.d	$a0, $s7, 31, 0
	ori	$a1, $zero, 8
	bstrins.d	$a1, $s7, 35, 4
	addi.d	$a2, $sp, 584
	add.d	$fp, $a2, $a1
	addi.d	$a2, $sp, 1576
	add.d	$s4, $a2, $a1
	alsl.d	$s5, $a0, $s6, 4
	.p2align	4, , 16
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a3, $a0, 136
	ori	$a0, $zero, 3560
	add.d	$a2, $sp, $a0
	move	$a0, $s3
	move	$a1, $s0
	jirl	$ra, $a3, 0
	fld.s	$fa0, $s1, 4
	ori	$a0, $zero, 3564
	add.d	$a0, $sp, $a0
	fld.s	$fa1, $a0, 0
	fld.s	$fa2, $s1, 0
	ori	$a0, $zero, 3560
	add.d	$a0, $sp, $a0
	fld.s	$fa3, $a0, 0
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa4, $s1, 8
	ori	$a0, $zero, 3568
	add.d	$a0, $sp, $a0
	fld.s	$fa5, $a0, 0
	fld.s	$fa6, $s1, 20
	fld.s	$fa7, $s1, 16
	fmadd.s	$ft0, $fa2, $fa3, $fa0
	fmadd.s	$fa0, $fa4, $fa5, $ft0
	fmul.s	$fa2, $fa1, $fa6
	fmadd.s	$fa6, $fa7, $fa3, $fa2
	fld.s	$fa2, $s1, 36
	fld.s	$fa7, $s1, 24
	fld.s	$ft1, $s1, 32
	fld.s	$ft2, $s1, 40
	fmul.s	$fa2, $fa1, $fa2
	fmadd.s	$fa1, $fa7, $fa5, $fa6
	fmadd.s	$fa3, $ft1, $fa3, $fa2
	fmadd.s	$fa2, $ft2, $fa5, $fa3
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	ori	$a2, $zero, 3560
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	st.d	$a0, $s5, 0
	st.d	$a1, $s5, 8
	fnmadd.s	$fa4, $fa4, $fa5, $ft0
	fld.s	$ft0, $s2, 16
	fld.s	$ft1, $s2, 0
	fnmadd.s	$fa6, $fa7, $fa5, $fa6
	fnmadd.s	$fa3, $ft2, $fa5, $fa3
	fmul.s	$fa5, $ft0, $fa6
	fmadd.s	$fa5, $ft1, $fa4, $fa5
	fld.s	$fa7, $s2, 32
	fld.s	$ft0, $s2, 20
	fld.s	$ft1, $s2, 4
	fld.s	$ft2, $s2, 36
	fmadd.s	$fa5, $fa7, $fa3, $fa5
	fmul.s	$fa7, $ft0, $fa6
	fmadd.s	$fa7, $ft1, $fa4, $fa7
	fmadd.s	$fa7, $ft2, $fa3, $fa7
	fld.s	$ft0, $s2, 24
	fld.s	$ft1, $s2, 8
	fld.s	$ft2, $s2, 40
	ori	$a0, $zero, 3568
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	fmul.s	$fa6, $ft0, $fa6
	fmadd.s	$fa4, $ft1, $fa4, $fa6
	fmadd.s	$fa3, $ft2, $fa3, $fa4
	movfr2gr.s	$a0, $fa5
	movfr2gr.s	$a1, $fa7
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	fld.s	$fa3, $s1, 16
	st.d	$a0, $s4, -8
	st.d	$a1, $s4, 0
	fld.s	$fa4, $s1, 0
	fmul.s	$fa3, $fa1, $fa3
	fld.s	$fa5, $s1, 32
	fld.s	$fa6, $s1, 20
	fld.s	$fa7, $s1, 4
	fmadd.s	$fa3, $fa4, $fa0, $fa3
	fmadd.s	$fa3, $fa5, $fa2, $fa3
	fmul.s	$fa4, $fa1, $fa6
	fmadd.s	$fa4, $fa7, $fa0, $fa4
	fld.s	$fa5, $s1, 36
	fld.s	$fa6, $s1, 24
	fld.s	$fa7, $s1, 8
	fld.s	$ft0, $s1, 40
	fmadd.s	$fa4, $fa5, $fa2, $fa4
	fmul.s	$fa1, $fa1, $fa6
	fmadd.s	$fa0, $fa7, $fa0, $fa1
	fmadd.s	$fa0, $ft0, $fa2, $fa0
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, -8
	st.d	$a1, $fp, 0
	addi.w	$s0, $s0, 1
	addi.d	$fp, $fp, 16
	addi.d	$s4, $s4, 16
	addi.d	$s5, $s5, 16
	bne	$s8, $s0, .LBB0_12
# %bb.13:                               # %.loopexit.loopexit
	add.w	$s7, $s7, $s0
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
.LBB0_14:                               # %.loopexit
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $s0, 0
	ld.d	$a4, $a0, 112
	addi.d	$a1, $sp, 1576
	ori	$a0, $zero, 3560
	add.d	$a2, $sp, $a0
	move	$a0, $s0
	move	$a3, $s7
	jirl	$ra, $a4, 0
	ld.d	$a0, $s3, 0
	ld.d	$a4, $a0, 112
	addi.d	$a1, $sp, 584
	ori	$a0, $zero, 2568
	add.d	$a2, $sp, $a0
	move	$a0, $s3
	move	$a3, $s7
	jirl	$ra, $a4, 0
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 1
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	fst.s	$fa0, $sp, 84                   # 4-byte Folded Spill
	blt	$s7, $a0, .LBB0_20
# %bb.15:                               # %.lr.ph477
	fld.s	$fa0, $s2, 0
	fst.s	$fa0, $sp, 272                  # 4-byte Folded Spill
	fld.s	$fa0, $s2, 4
	fst.s	$fa0, $sp, 256                  # 4-byte Folded Spill
	fld.s	$fa0, $s2, 8
	fst.s	$fa0, $sp, 240                  # 4-byte Folded Spill
	fld.s	$fa0, $s2, 48
	fst.s	$fa0, $sp, 224                  # 4-byte Folded Spill
	fld.s	$fa0, $s2, 16
	fst.s	$fa0, $sp, 208                  # 4-byte Folded Spill
	fld.s	$fa0, $s2, 20
	fst.s	$fa0, $sp, 192                  # 4-byte Folded Spill
	fld.s	$fa0, $s2, 24
	fst.s	$fa0, $sp, 176                  # 4-byte Folded Spill
	fld.s	$fa7, $s2, 52
	fld.s	$ft0, $s2, 32
	fld.s	$ft1, $s2, 36
	fld.s	$ft2, $s2, 40
	fld.s	$ft3, $s2, 56
	fld.s	$ft4, $s1, 0
	fld.s	$ft5, $s1, 4
	fld.s	$ft6, $s1, 8
	fld.s	$ft7, $s1, 48
	fld.s	$ft8, $s1, 16
	fld.s	$ft9, $s1, 20
	fld.s	$ft10, $s1, 24
	fld.s	$ft11, $s1, 52
	fld.s	$ft12, $s1, 32
	fld.s	$ft13, $s1, 36
	fld.s	$ft14, $s1, 40
	fld.s	$ft15, $s1, 56
	ori	$a0, $zero, 2576
	add.d	$a0, $sp, $a0
	fld.s	$fs1, $a1, %pc_lo12(.LCPI0_0)
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	fld.d	$fs6, $a1, %pc_lo12(.LCPI0_1)
	addi.d	$a1, $s6, 8
	movgr2fr.w	$fs7, $zero
	ori	$a2, $zero, 3564
	add.d	$a2, $sp, $a2
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	movgr2cf	$fcc0, $a3
	fst.s	$fs7, $sp, 112                  # 4-byte Folded Spill
	fst.s	$fs7, $sp, 128                  # 4-byte Folded Spill
	fst.s	$fs7, $sp, 144                  # 4-byte Folded Spill
	fst.s	$fs7, $sp, 160                  # 4-byte Folded Spill
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=1
	addi.d	$s7, $s7, -1
	addi.d	$a1, $a1, 16
	addi.d	$a0, $a0, 16
	addi.d	$a2, $a2, 16
	beqz	$s7, .LBB0_21
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fs4, $a1, 0
	fld.s	$fs3, $a1, -4
	fld.s	$fs2, $a1, -8
	fsel	$fs4, $fs4, $fs7, $fcc0
	fmul.s	$fs5, $fs3, $fs3
	fmadd.s	$fs5, $fs2, $fs2, $fs5
	fmadd.s	$fs5, $fs4, $fs4, $fs5
	fcvt.d.s	$fs5, $fs5
	fcmp.cule.d	$fcc1, $fs5, $fs6
	bcnez	$fcc1, .LBB0_16
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	fld.s	$fs5, $a2, -4
	fld.s	$fs0, $a2, 0
	fld.s	$fa0, $a2, 4
	fld.s	$fa1, $a0, -8
	fld.s	$fa2, $a0, -4
	fld.s	$fa3, $a0, 0
	fld.s	$fa4, $sp, 256                  # 4-byte Folded Reload
	fmul.s	$fa4, $fs0, $fa4
	fld.s	$fa5, $sp, 272                  # 4-byte Folded Reload
	fmadd.s	$fa4, $fa5, $fs5, $fa4
	fld.s	$fa5, $sp, 240                  # 4-byte Folded Reload
	fmadd.s	$fa4, $fa5, $fa0, $fa4
	fld.s	$fa5, $sp, 192                  # 4-byte Folded Reload
	fmul.s	$fa5, $fs0, $fa5
	fld.s	$fa6, $sp, 208                  # 4-byte Folded Reload
	fmadd.s	$fa5, $fa6, $fs5, $fa5
	fld.s	$fa6, $sp, 176                  # 4-byte Folded Reload
	fmadd.s	$fa5, $fa6, $fa0, $fa5
	fmul.s	$fs0, $fs0, $ft1
	fmadd.s	$fs0, $ft0, $fs5, $fs0
	fmadd.s	$fa0, $ft2, $fa0, $fs0
	fmul.s	$fs0, $fa2, $ft5
	fmadd.s	$fs0, $ft4, $fa1, $fs0
	fmul.s	$fs5, $fa2, $ft9
	fmadd.s	$fs5, $ft8, $fa1, $fs5
	fmul.s	$fa2, $fa2, $ft13
	fmadd.s	$fa1, $ft12, $fa1, $fa2
	fmadd.s	$fa2, $ft6, $fa3, $fs0
	fmadd.s	$fs0, $ft10, $fa3, $fs5
	fmadd.s	$fa1, $ft14, $fa3, $fa1
	fld.s	$fa3, $sp, 224                  # 4-byte Folded Reload
	fadd.s	$fa3, $fa3, $fa4
	fadd.s	$fa2, $ft7, $fa2
	fsub.s	$fa2, $fa2, $fa3
	fadd.s	$fa3, $fa7, $fa5
	fadd.s	$fa4, $ft11, $fs0
	fsub.s	$fa3, $fa4, $fa3
	fadd.s	$fa0, $ft3, $fa0
	fadd.s	$fa1, $ft15, $fa1
	fsub.s	$fa0, $fa1, $fa0
	movgr2fr.w	$fa1, $zero
	fsel	$fa0, $fa0, $fa1, $fcc0
	fmul.s	$fa1, $fs3, $fa3
	fmadd.s	$fa1, $fs2, $fa2, $fa1
	fmadd.s	$fs5, $fs4, $fa0, $fa1
	fcmp.cule.s	$fcc1, $fs1, $fs5
	bcnez	$fcc1, .LBB0_16
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=1
	fld.s	$fa0, $a1, 4
	fst.s	$fa0, $sp, 112                  # 4-byte Folded Spill
	fst.s	$fs2, $sp, 160                  # 4-byte Folded Spill
	fst.s	$fs3, $sp, 144                  # 4-byte Folded Spill
	fst.s	$fs4, $sp, 128                  # 4-byte Folded Spill
	fmov.s	$fs1, $fs5
	b	.LBB0_16
.LBB0_20:
	fld.s	$fs1, $a1, %pc_lo12(.LCPI0_0)
	fst.s	$fa0, $sp, 160                  # 4-byte Folded Spill
	fst.s	$fa0, $sp, 144                  # 4-byte Folded Spill
	fst.s	$fa0, $sp, 128                  # 4-byte Folded Spill
	fst.s	$fa0, $sp, 112                  # 4-byte Folded Spill
.LBB0_21:                               # %._crit_edge
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK13btConvexShape19getMarginNonVirtualEv)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNK13btConvexShape19getMarginNonVirtualEv)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $sp, 84                   # 4-byte Folded Reload
	fcmp.clt.s	$fcc0, $fs1, $fa0
	bceqz	$fcc0, .LBB0_23
# %bb.22:
	move	$a0, $zero
	b	.LBB0_25
.LBB0_23:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK13btConvexShape19getMarginNonVirtualEv)
	jirl	$ra, $ra, 0
	fmov.s	$fs0, $fa0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNK13btConvexShape19getMarginNonVirtualEv)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fs0, $fa0
	vldi	$vr1, -1184
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fs0, $fs1, $fa0
	addi.d	$a0, $sp, 488
	move	$a1, $s0
	move	$a2, $s3
	move	$a3, $s4
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN17btGjkPairDetectorC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver)
	jirl	$ra, $ra, 0
	fld.s	$fs1, $sp, 160                  # 4-byte Folded Reload
	fmul.s	$fa0, $fs1, $fs0
	movfr2gr.s	$a0, $fs1
	fld.s	$fa1, $s2, 48
	fld.s	$fa2, $s2, 52
	fld.s	$fs2, $sp, 144                  # 4-byte Folded Reload
	fmul.s	$fa3, $fs2, $fs0
	movfr2gr.s	$a1, $fs2
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa1, $fa3, $fa2
	fld.s	$fa2, $s2, 56
	fld.s	$fs3, $sp, 128                  # 4-byte Folded Reload
	fmul.s	$fa3, $fs3, $fs0
	movfr2gr.s	$a2, $fs3
	st.d	$zero, $sp, 480
	fadd.s	$fa2, $fa3, $fa2
	movfr2gr.s	$a3, $fa0
	movfr2gr.s	$a4, $fa1
	bstrins.d	$a3, $a4, 63, 32
	movfr2gr.s	$a4, $fa2
	vld	$vr0, $s2, 0
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	vld	$vr1, $a5, 0
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	vld	$vr2, $a5, 0
	bstrpick.d	$a4, $a4, 31, 0
	vst	$vr0, $sp, 344
	vst	$vr1, $sp, 360
	vst	$vr2, $sp, 376
	st.d	$a3, $sp, 392
	st.d	$a4, $sp, 400
	vld	$vr0, $s1, 0
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	vld	$vr1, $a3, 0
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	vld	$vr2, $a3, 0
	vld	$vr3, $s1, 48
	vst	$vr0, $sp, 408
	vst	$vr1, $sp, 424
	vst	$vr2, $sp, 440
	vst	$vr3, $sp, 456
	lu12i.w	$a3, 382432
	ori	$a3, $a3, 2923
	st.w	$a3, $sp, 472
	pcalau12i	$a3, %pc_hi20(_ZTVZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult+16)
	addi.d	$a3, $a3, %pc_lo12(_ZTVZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult+16)
	st.d	$a3, $sp, 296
	st.b	$zero, $sp, 340
	lu12i.w	$a3, -524288
	lu32i.d	$a3, 0
	xor	$a0, $a0, $a3
	xor	$a1, $a1, $a3
	bstrins.d	$a0, $a1, 63, 32
	xor	$a1, $a2, $a3
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 496
	st.d	$a1, $sp, 504
	addi.d	$a0, $sp, 488
	addi.d	$a1, $sp, 344
	addi.d	$a2, $sp, 296
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 340
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_25
# %bb.24:
	fld.s	$fa0, $sp, 336
	fld.s	$fa1, $sp, 320
	fsub.s	$fa0, $fs0, $fa0
	fmul.s	$fa2, $fs1, $fa0
	fld.s	$fa3, $sp, 324
	fsub.s	$fa1, $fa1, $fa2
	fld.s	$fa2, $sp, 328
	fmul.s	$fa4, $fs2, $fa0
	fsub.s	$fa3, $fa3, $fa4
	fmul.s	$fa0, $fs3, $fa0
	fsub.s	$fa0, $fa2, $fa0
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a2, $fa3
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa0
	vld	$vr0, $sp, 320
	bstrpick.d	$a2, $a2, 31, 0
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	st.d	$a1, $a3, 0
	st.d	$a2, $a3, 8
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	vst	$vr0, $a1, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	fst.s	$fs1, $a1, 0
	fst.s	$fs2, $a1, 4
	fst.s	$fs3, $a1, 8
	fld.s	$fa0, $sp, 112                  # 4-byte Folded Reload
	fst.s	$fa0, $a1, 12
.LBB0_25:
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 640
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
.Lfunc_end0:
	.size	_ZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAlloc, .Lfunc_end0-_ZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAlloc
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev,"axG",@progbits,_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev,comdat
	.weak	_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev # -- Begin function _ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev
	.p2align	5
	.type	_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev,@function
_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev: # @_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev
# %bb.0:
	ret
.Lfunc_end1:
	.size	_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev, .Lfunc_end1-_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev
                                        # -- End function
	.section	.text._ZN30btConvexPenetrationDepthSolverD2Ev,"axG",@progbits,_ZN30btConvexPenetrationDepthSolverD2Ev,comdat
	.weak	_ZN30btConvexPenetrationDepthSolverD2Ev # -- Begin function _ZN30btConvexPenetrationDepthSolverD2Ev
	.p2align	5
	.type	_ZN30btConvexPenetrationDepthSolverD2Ev,@function
_ZN30btConvexPenetrationDepthSolverD2Ev: # @_ZN30btConvexPenetrationDepthSolverD2Ev
# %bb.0:
	ret
.Lfunc_end2:
	.size	_ZN30btConvexPenetrationDepthSolverD2Ev, .Lfunc_end2-_ZN30btConvexPenetrationDepthSolverD2Ev
                                        # -- End function
	.section	.text._ZN33btMinkowskiPenetrationDepthSolverD0Ev,"axG",@progbits,_ZN33btMinkowskiPenetrationDepthSolverD0Ev,comdat
	.weak	_ZN33btMinkowskiPenetrationDepthSolverD0Ev # -- Begin function _ZN33btMinkowskiPenetrationDepthSolverD0Ev
	.p2align	5
	.type	_ZN33btMinkowskiPenetrationDepthSolverD0Ev,@function
_ZN33btMinkowskiPenetrationDepthSolverD0Ev: # @_ZN33btMinkowskiPenetrationDepthSolverD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end3:
	.size	_ZN33btMinkowskiPenetrationDepthSolverD0Ev, .Lfunc_end3-_ZN33btMinkowskiPenetrationDepthSolverD0Ev
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResultD0Ev
	.type	_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResultD0Ev,@function
_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResultD0Ev: # @_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResultD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end4:
	.size	_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResultD0Ev, .Lfunc_end4-_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResultD0Ev
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult20setShapeIdentifiersAEii
	.type	_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult20setShapeIdentifiersAEii,@function
_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult20setShapeIdentifiersAEii: # @_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult20setShapeIdentifiersAEii
# %bb.0:
	ret
.Lfunc_end5:
	.size	_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult20setShapeIdentifiersAEii, .Lfunc_end5-_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult20setShapeIdentifiersAEii
                                        # -- End function
	.p2align	5                               # -- Begin function _ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult20setShapeIdentifiersBEii
	.type	_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult20setShapeIdentifiersBEii,@function
_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult20setShapeIdentifiersBEii: # @_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult20setShapeIdentifiersBEii
# %bb.0:
	ret
.Lfunc_end6:
	.size	_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult20setShapeIdentifiersBEii, .Lfunc_end6-_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult20setShapeIdentifiersBEii
                                        # -- End function
	.p2align	5                               # -- Begin function _ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult15addContactPointERKS8_SG_f
	.type	_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult15addContactPointERKS8_SG_f,@function
_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult15addContactPointERKS8_SG_f: # @_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult15addContactPointERKS8_SG_f
# %bb.0:
	vld	$vr1, $a1, 0
	vst	$vr1, $a0, 8
	vld	$vr1, $a2, 0
	vst	$vr1, $a0, 24
	fst.s	$fa0, $a0, 40
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 44
	ret
.Lfunc_end7:
	.size	_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult15addContactPointERKS8_SG_f, .Lfunc_end7-_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult15addContactPointERKS8_SG_f
                                        # -- End function
	.type	_ZL22sPenetrationDirections,@object # @_ZL22sPenetrationDirections
	.data
	.p2align	2, 0x0
_ZL22sPenetrationDirections:
	.word	0x00000000                      # float 0
	.word	0x80000000                      # float -0
	.word	0xbf800000                      # float -1
	.word	0x00000000                      # float 0
	.word	0x3f393e60                      # float 0.723608017
	.word	0xbf0695ea                      # float -0.525725007
	.word	0xbee4f9e4                      # float -0.447219014
	.word	0x00000000                      # float 0
	.word	0xbe8d82ba                      # float -0.27638799
	.word	0xbf59c422                      # float -0.850648999
	.word	0xbee4f9e4                      # float -0.447219014
	.word	0x00000000                      # float 0
	.word	0xbf64f91a                      # float -0.894425988
	.word	0x80000000                      # float -0
	.word	0xbee4f97f                      # float -0.447216004
	.word	0x00000000                      # float 0
	.word	0xbe8d82ba                      # float -0.27638799
	.word	0x3f59c422                      # float 0.850648999
	.word	0xbee4fa05                      # float -0.447219998
	.word	0x00000000                      # float 0
	.word	0x3f393e60                      # float 0.723608017
	.word	0x3f0695ea                      # float 0.525725007
	.word	0xbee4f9e4                      # float -0.447219014
	.word	0x00000000                      # float 0
	.word	0x3e8d82ba                      # float 0.27638799
	.word	0xbf59c422                      # float -0.850648999
	.word	0x3ee4fa05                      # float 0.447219998
	.word	0x00000000                      # float 0
	.word	0xbf393e60                      # float -0.723608017
	.word	0xbf0695ea                      # float -0.525725007
	.word	0x3ee4f9e4                      # float 0.447219014
	.word	0x00000000                      # float 0
	.word	0xbf393e60                      # float -0.723608017
	.word	0x3f0695ea                      # float 0.525725007
	.word	0x3ee4f9e4                      # float 0.447219014
	.word	0x00000000                      # float 0
	.word	0x3e8d82ba                      # float 0.27638799
	.word	0x3f59c422                      # float 0.850648999
	.word	0x3ee4f9e4                      # float 0.447219014
	.word	0x00000000                      # float 0
	.word	0x3f64f91a                      # float 0.894425988
	.word	0x00000000                      # float 0
	.word	0x3ee4f97f                      # float 0.447216004
	.word	0x00000000                      # float 0
	.word	0x80000000                      # float -0
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.word	0x3ed9c3f0                      # float 0.425323009
	.word	0xbe9e36b1                      # float -0.309011012
	.word	0xbf59c476                      # float -0.850654006
	.word	0x00000000                      # float 0
	.word	0xbe265ade                      # float -0.162456006
	.word	0xbeffff58                      # float -0.499994993
	.word	0xbf59c476                      # float -0.850654006
	.word	0x00000000                      # float 0
	.word	0x3e8696c4                      # float 0.262869
	.word	0xbf4f1b69                      # float -0.809011995
	.word	0xbf0696c4                      # float -0.525738001
	.word	0x00000000                      # float 0
	.word	0x3ed9c3f0                      # float 0.425323009
	.word	0x3e9e36b1                      # float 0.309011012
	.word	0xbf59c476                      # float -0.850654006
	.word	0x00000000                      # float 0
	.word	0x3f59c411                      # float 0.850647985
	.word	0x80000000                      # float -0
	.word	0xbf0696a2                      # float -0.525735974
	.word	0x00000000                      # float 0
	.word	0xbf06963e                      # float -0.525730014
	.word	0x80000000                      # float -0
	.word	0xbf59c454                      # float -0.850651979
	.word	0x00000000                      # float 0
	.word	0xbf302d38                      # float -0.688189983
	.word	0xbeffff9b                      # float -0.49999699
	.word	0xbf0696a2                      # float -0.525735974
	.word	0x00000000                      # float 0
	.word	0xbe265ade                      # float -0.162456006
	.word	0x3effff58                      # float 0.499994993
	.word	0xbf59c476                      # float -0.850654006
	.word	0x00000000                      # float 0
	.word	0xbf302d38                      # float -0.688189983
	.word	0x3effff9b                      # float 0.49999699
	.word	0xbf0696a2                      # float -0.525735974
	.word	0x00000000                      # float 0
	.word	0x3e8696c4                      # float 0.262869
	.word	0x3f4f1b69                      # float 0.809011995
	.word	0xbf0696c4                      # float -0.525738001
	.word	0x00000000                      # float 0
	.word	0x3f737889                      # float 0.95105797
	.word	0x3e9e36f4                      # float 0.309013009
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x3f737889                      # float 0.95105797
	.word	0xbe9e36f4                      # float -0.309013009
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x3f167925                      # float 0.587786019
	.word	0xbf4f1bbd                      # float -0.809017002
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xbf800000                      # float -1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xbf167925                      # float -0.587786019
	.word	0xbf4f1bbd                      # float -0.809017002
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0xbf737889                      # float -0.95105797
	.word	0xbe9e36f4                      # float -0.309013009
	.word	0x80000000                      # float -0
	.word	0x00000000                      # float 0
	.word	0xbf737889                      # float -0.95105797
	.word	0x3e9e36f4                      # float 0.309013009
	.word	0x80000000                      # float -0
	.word	0x00000000                      # float 0
	.word	0xbf167925                      # float -0.587786019
	.word	0x3f4f1bbd                      # float 0.809017002
	.word	0x80000000                      # float -0
	.word	0x00000000                      # float 0
	.word	0x80000000                      # float -0
	.word	0x3f800000                      # float 1
	.word	0x80000000                      # float -0
	.word	0x00000000                      # float 0
	.word	0x3f167925                      # float 0.587786019
	.word	0x3f4f1bbd                      # float 0.809017002
	.word	0x80000000                      # float -0
	.word	0x00000000                      # float 0
	.word	0x3f302d38                      # float 0.688189983
	.word	0xbeffff9b                      # float -0.49999699
	.word	0x3f0696a2                      # float 0.525735974
	.word	0x00000000                      # float 0
	.word	0xbe8696c4                      # float -0.262869
	.word	0xbf4f1b69                      # float -0.809011995
	.word	0x3f0696c4                      # float 0.525738001
	.word	0x00000000                      # float 0
	.word	0xbf59c411                      # float -0.850647985
	.word	0x00000000                      # float 0
	.word	0x3f0696a2                      # float 0.525735974
	.word	0x00000000                      # float 0
	.word	0xbe8696c4                      # float -0.262869
	.word	0x3f4f1b69                      # float 0.809011995
	.word	0x3f0696c4                      # float 0.525738001
	.word	0x00000000                      # float 0
	.word	0x3f302d38                      # float 0.688189983
	.word	0x3effff9b                      # float 0.49999699
	.word	0x3f0696a2                      # float 0.525735974
	.word	0x00000000                      # float 0
	.word	0x3f06963e                      # float 0.525730014
	.word	0x00000000                      # float 0
	.word	0x3f59c454                      # float 0.850651979
	.word	0x00000000                      # float 0
	.word	0x3e265ade                      # float 0.162456006
	.word	0xbeffff58                      # float -0.499994993
	.word	0x3f59c476                      # float 0.850654006
	.word	0x00000000                      # float 0
	.word	0xbed9c3f0                      # float -0.425323009
	.word	0xbe9e36b1                      # float -0.309011012
	.word	0x3f59c476                      # float 0.850654006
	.word	0x00000000                      # float 0
	.word	0xbed9c3f0                      # float -0.425323009
	.word	0x3e9e36b1                      # float 0.309011012
	.word	0x3f59c476                      # float 0.850654006
	.word	0x00000000                      # float 0
	.word	0x3e265ade                      # float 0.162456006
	.word	0x3effff58                      # float 0.499994993
	.word	0x3f59c476                      # float 0.850654006
	.word	0x00000000                      # float 0
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.space	16
	.size	_ZL22sPenetrationDirections, 992

	.type	_ZTV33btMinkowskiPenetrationDepthSolver,@object # @_ZTV33btMinkowskiPenetrationDepthSolver
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV33btMinkowskiPenetrationDepthSolver
	.p2align	3, 0x0
_ZTV33btMinkowskiPenetrationDepthSolver:
	.dword	0
	.dword	_ZTI33btMinkowskiPenetrationDepthSolver
	.dword	_ZN30btConvexPenetrationDepthSolverD2Ev
	.dword	_ZN33btMinkowskiPenetrationDepthSolverD0Ev
	.dword	_ZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAlloc
	.size	_ZTV33btMinkowskiPenetrationDepthSolver, 40

	.type	_ZTI33btMinkowskiPenetrationDepthSolver,@object # @_ZTI33btMinkowskiPenetrationDepthSolver
	.globl	_ZTI33btMinkowskiPenetrationDepthSolver
	.p2align	3, 0x0
_ZTI33btMinkowskiPenetrationDepthSolver:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS33btMinkowskiPenetrationDepthSolver
	.dword	_ZTI30btConvexPenetrationDepthSolver
	.size	_ZTI33btMinkowskiPenetrationDepthSolver, 24

	.type	_ZTS33btMinkowskiPenetrationDepthSolver,@object # @_ZTS33btMinkowskiPenetrationDepthSolver
	.section	.rodata,"a",@progbits
	.globl	_ZTS33btMinkowskiPenetrationDepthSolver
_ZTS33btMinkowskiPenetrationDepthSolver:
	.asciz	"33btMinkowskiPenetrationDepthSolver"
	.size	_ZTS33btMinkowskiPenetrationDepthSolver, 36

	.type	_ZTI30btConvexPenetrationDepthSolver,@object # @_ZTI30btConvexPenetrationDepthSolver
	.section	.data.rel.ro._ZTI30btConvexPenetrationDepthSolver,"awG",@progbits,_ZTI30btConvexPenetrationDepthSolver,comdat
	.weak	_ZTI30btConvexPenetrationDepthSolver
	.p2align	3, 0x0
_ZTI30btConvexPenetrationDepthSolver:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS30btConvexPenetrationDepthSolver
	.size	_ZTI30btConvexPenetrationDepthSolver, 16

	.type	_ZTS30btConvexPenetrationDepthSolver,@object # @_ZTS30btConvexPenetrationDepthSolver
	.section	.rodata._ZTS30btConvexPenetrationDepthSolver,"aG",@progbits,_ZTS30btConvexPenetrationDepthSolver,comdat
	.weak	_ZTS30btConvexPenetrationDepthSolver
_ZTS30btConvexPenetrationDepthSolver:
	.asciz	"30btConvexPenetrationDepthSolver"
	.size	_ZTS30btConvexPenetrationDepthSolver, 33

	.type	_ZTVZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult,@object # @_ZTVZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTVZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult:
	.dword	0
	.dword	_ZTIZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult
	.dword	_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev
	.dword	_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResultD0Ev
	.dword	_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult20setShapeIdentifiersAEii
	.dword	_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult20setShapeIdentifiersBEii
	.dword	_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult15addContactPointERKS8_SG_f
	.size	_ZTVZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult, 56

	.type	_ZTIZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult,@object # @_ZTIZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult
	.p2align	3, 0x0
_ZTIZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult
	.dword	_ZTIN36btDiscreteCollisionDetectorInterface6ResultE
	.size	_ZTIZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult, 24

	.type	_ZTSZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult,@object # @_ZTSZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult
	.section	.rodata,"a",@progbits
_ZTSZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult:
	.asciz	"ZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult"
	.size	_ZTSZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult, 186

	.type	_ZTIN36btDiscreteCollisionDetectorInterface6ResultE,@object # @_ZTIN36btDiscreteCollisionDetectorInterface6ResultE
	.section	.data.rel.ro._ZTIN36btDiscreteCollisionDetectorInterface6ResultE,"awG",@progbits,_ZTIN36btDiscreteCollisionDetectorInterface6ResultE,comdat
	.weak	_ZTIN36btDiscreteCollisionDetectorInterface6ResultE
	.p2align	3, 0x0
_ZTIN36btDiscreteCollisionDetectorInterface6ResultE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSN36btDiscreteCollisionDetectorInterface6ResultE
	.size	_ZTIN36btDiscreteCollisionDetectorInterface6ResultE, 16

	.type	_ZTSN36btDiscreteCollisionDetectorInterface6ResultE,@object # @_ZTSN36btDiscreteCollisionDetectorInterface6ResultE
	.section	.rodata._ZTSN36btDiscreteCollisionDetectorInterface6ResultE,"aG",@progbits,_ZTSN36btDiscreteCollisionDetectorInterface6ResultE,comdat
	.weak	_ZTSN36btDiscreteCollisionDetectorInterface6ResultE
_ZTSN36btDiscreteCollisionDetectorInterface6ResultE:
	.asciz	"N36btDiscreteCollisionDetectorInterface6ResultE"
	.size	_ZTSN36btDiscreteCollisionDetectorInterface6ResultE, 48

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _ZTI33btMinkowskiPenetrationDepthSolver
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS33btMinkowskiPenetrationDepthSolver
	.addrsig_sym _ZTI30btConvexPenetrationDepthSolver
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS30btConvexPenetrationDepthSolver
	.addrsig_sym _ZTIZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult
	.addrsig_sym _ZTSZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult
	.addrsig_sym _ZTIN36btDiscreteCollisionDetectorInterface6ResultE
	.addrsig_sym _ZTSN36btDiscreteCollisionDetectorInterface6ResultE
