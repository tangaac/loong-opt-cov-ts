	.file	"hotspotKernel.c"
	.text
	.globl	hotspotKernel                   # -- Begin function hotspotKernel
	.p2align	5
	.type	hotspotKernel,@function
hotspotKernel:                          # @hotspotKernel
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
                                        # kill: def $f5_64 killed $f5_64 def $vr5
                                        # kill: def $f3_64 killed $f3_64 def $vr3
                                        # kill: def $f2_64 killed $f2_64 def $vr2
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	move	$s2, $a1
	move	$s1, $a0
	move	$a3, $zero
	lu12i.w	$a0, 511
	add.d	$a5, $s1, $a0
	lu12i.w	$t5, 510
	add.d	$a7, $a1, $t5
	add.d	$t0, $a2, $a0
	fdiv.d	$fa0, $fa4, $fa0
	addu16i.d	$a0, $s1, 32
	addi.d	$a0, $a0, -8
	sub.d	$t1, $a1, $s1
	addi.d	$a1, $s1, 8
	addi.d	$a4, $a2, 8
	addu16i.d	$a6, $a2, 32
	addi.d	$a6, $a6, -8
	addu16i.d	$t4, $s2, 32
	lu12i.w	$t2, 1
	ori	$t3, $t2, 8
	add.d	$t8, $s1, $t3
	ori	$t5, $t5, 4088
	add.d	$t6, $s1, $t5
	add.d	$s0, $a2, $t3
	add.d	$t5, $a2, $t5
	addi.d	$t7, $s2, 8
	addi.d	$fp, $t4, -8
	sltu	$t5, $t8, $t5
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	sltu	$s0, $s0, $t6
	and	$t5, $t5, $s0
	st.d	$t8, $sp, 64                    # 8-byte Folded Spill
	sltu	$fp, $t8, $fp
	sltu	$t6, $t7, $t6
	and	$t6, $fp, $t6
	or	$t6, $t5, $t6
	vreplvei.d	$vr4, $vr2, 0
	vreplvei.d	$vr6, $vr1, 0
	vreplvei.d	$vr7, $vr5, 0
	vreplvei.d	$vr8, $vr3, 0
	vreplvei.d	$vr9, $vr0, 0
	sltu	$a6, $a1, $a6
	sltu	$a4, $a4, $a0
	and	$a4, $a6, $a4
	sltu	$a1, $a1, $t4
	sltu	$a0, $s2, $a0
	and	$a0, $a1, $a0
	or	$a0, $a4, $a0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	add.d	$a0, $s2, $t3
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s1, $t2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$s0, $t2, 4080
	add.d	$a0, $s2, $s0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	add.d	$a0, $a2, $t2
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$s3, -1
	ori	$s4, $s3, 16
	ori	$s5, $zero, 4080
	vldi	$vr10, -896
	ori	$s6, $zero, 4088
	ori	$s7, $zero, 4072
	ori	$s8, $zero, 511
	lu12i.w	$a0, -2
	ori	$ra, $a0, 16
	ori	$a4, $zero, 32
	ori	$a6, $zero, 512
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addi.w	$a3, $a3, 1
	ori	$a0, $zero, 200
	beq	$a3, $a0, .LBB0_21
.LBB0_2:                                # %.preheader224
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
                                        #       Child Loop BB0_8 Depth 3
                                        #       Child Loop BB0_6 Depth 3
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_11 Depth 2
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_18 Depth 2
                                        #       Child Loop BB0_20 Depth 3
                                        #       Child Loop BB0_19 Depth 3
	ori	$t5, $zero, 1
	ld.d	$t7, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %middle.block317
                                        #   in Loop: Header=BB0_4 Depth=2
	addi.d	$t5, $t5, 1
	add.d	$fp, $fp, $t2
	add.d	$t4, $t4, $t2
	add.d	$t7, $t7, $t2
	beq	$t5, $s8, .LBB0_9
.LBB0_4:                                # %.preheader221
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
                                        #       Child Loop BB0_6 Depth 3
	beqz	$t6, .LBB0_7
# %bb.5:                                # %scalar.ph295.preheader
                                        #   in Loop: Header=BB0_4 Depth=2
	move	$a0, $s4
	.p2align	4, , 16
.LBB0_6:                                # %scalar.ph295
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a1, $t7, $a0
	fldx.d	$ft3, $a1, $s0
	fld.d	$ft4, $a1, -16
	add.d	$t8, $fp, $a0
	fldx.d	$ft5, $t8, $s5
	fldx.d	$ft6, $a1, $s5
	fadd.d	$ft3, $ft3, $ft4
	fldx.d	$ft4, $a1, $s6
	fldx.d	$ft7, $a1, $s7
	fmadd.d	$ft3, $ft6, $ft2, $ft3
	fdiv.d	$ft3, $ft3, $fa2
	fadd.d	$ft3, $ft5, $ft3
	fadd.d	$ft4, $ft4, $ft7
	fmadd.d	$ft4, $ft6, $ft2, $ft4
	fdiv.d	$ft4, $ft4, $fa1
	fadd.d	$ft3, $ft3, $ft4
	fsub.d	$ft4, $fa5, $ft6
	fdiv.d	$ft4, $ft4, $fa3
	fadd.d	$ft3, $ft4, $ft3
	fmul.d	$ft3, $fa0, $ft3
	fadd.d	$ft3, $ft6, $ft3
	add.d	$a1, $t4, $a0
	addi.d	$a0, $a0, 8
	fstx.d	$ft3, $a1, $s5
	bnez	$a0, .LBB0_6
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_7:                                # %vector.body307.preheader
                                        #   in Loop: Header=BB0_4 Depth=2
	ori	$a0, $s3, 16
	.p2align	4, , 16
.LBB0_8:                                # %vector.body307
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a1, $t7, $a0
	vldx	$vr11, $a1, $s0
	vld	$vr12, $a1, -16
	add.d	$t8, $fp, $a0
	vldx	$vr13, $t8, $s5
	vldx	$vr14, $a1, $s5
	vfadd.d	$vr11, $vr11, $vr12
	vldx	$vr12, $a1, $s6
	vldx	$vr15, $a1, $s7
	vfmadd.d	$vr11, $vr14, $vr10, $vr11
	vfdiv.d	$vr11, $vr11, $vr4
	vfadd.d	$vr11, $vr13, $vr11
	vfadd.d	$vr12, $vr12, $vr15
	vfmadd.d	$vr12, $vr14, $vr10, $vr12
	vfdiv.d	$vr12, $vr12, $vr6
	vfadd.d	$vr11, $vr11, $vr12
	vfsub.d	$vr12, $vr7, $vr14
	vfdiv.d	$vr12, $vr12, $vr8
	vfadd.d	$vr11, $vr12, $vr11
	vfmul.d	$vr11, $vr9, $vr11
	vfadd.d	$vr11, $vr14, $vr11
	add.d	$a1, $t4, $a0
	addi.d	$a0, $a0, 16
	vstx	$vr11, $a1, $s5
	bnez	$a0, .LBB0_8
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_9:                                # %vector.memcheck250
                                        #   in Loop: Header=BB0_2 Depth=1
	fld.d	$ft3, $s2, 8
	fld.d	$ft4, $s2, 0
	fld.d	$ft5, $a2, 0
	fldx.d	$ft6, $s2, $t2
	fsub.d	$ft3, $ft3, $ft4
	fdiv.d	$ft3, $ft3, $fa1
	fadd.d	$ft3, $ft5, $ft3
	fsub.d	$ft5, $ft6, $ft4
	fdiv.d	$ft5, $ft5, $fa2
	fadd.d	$ft3, $ft3, $ft5
	fsub.d	$ft5, $fa5, $ft4
	fdiv.d	$ft5, $ft5, $fa3
	fadd.d	$ft3, $ft5, $ft3
	fmul.d	$ft3, $fa0, $ft3
	fadd.d	$ft3, $ft4, $ft3
	fst.d	$ft3, $s1, 0
	fldx.d	$ft3, $s2, $s5
	fldx.d	$ft4, $s2, $s6
	fldx.d	$ft5, $a2, $s6
	ori	$a0, $t2, 4088
	fldx.d	$ft6, $s2, $a0
	fsub.d	$ft3, $ft3, $ft4
	fdiv.d	$ft3, $ft3, $fa1
	fadd.d	$ft3, $ft5, $ft3
	fsub.d	$ft5, $ft6, $ft4
	fdiv.d	$ft5, $ft5, $fa2
	fadd.d	$ft3, $ft3, $ft5
	fsub.d	$ft5, $fa5, $ft4
	fdiv.d	$ft5, $ft5, $fa3
	fadd.d	$ft3, $ft5, $ft3
	fmul.d	$ft3, $fa0, $ft3
	fadd.d	$ft3, $ft4, $ft3
	fstx.d	$ft3, $s1, $s6
	fldx.d	$ft3, $a7, $s0
	fldx.d	$ft4, $a7, $a0
	fldx.d	$ft5, $t0, $s6
	fldx.d	$ft6, $a7, $s6
	fsub.d	$ft3, $ft3, $ft4
	fdiv.d	$ft3, $ft3, $fa1
	fadd.d	$ft3, $ft5, $ft3
	fsub.d	$ft5, $ft6, $ft4
	fdiv.d	$ft5, $ft5, $fa2
	fadd.d	$ft3, $ft3, $ft5
	fsub.d	$ft5, $fa5, $ft4
	fdiv.d	$ft5, $ft5, $fa3
	fadd.d	$ft3, $ft5, $ft3
	fmul.d	$ft3, $fa0, $ft3
	fadd.d	$ft3, $ft4, $ft3
	fstx.d	$ft3, $a5, $s6
	fldx.d	$ft3, $a7, $t3
	fldx.d	$ft4, $a7, $t2
	fld.d	$ft5, $t0, 0
	fld.d	$ft6, $a7, 0
	fsub.d	$ft3, $ft3, $ft4
	fdiv.d	$ft3, $ft3, $fa1
	fadd.d	$ft3, $ft5, $ft3
	fsub.d	$ft5, $ft6, $ft4
	fdiv.d	$ft5, $ft5, $fa2
	fadd.d	$ft3, $ft3, $ft5
	fsub.d	$ft5, $fa5, $ft4
	fdiv.d	$ft5, $ft5, $fa3
	fadd.d	$ft3, $ft5, $ft3
	fmul.d	$ft3, $fa0, $ft3
	fadd.d	$ft3, $ft4, $ft3
	fst.d	$ft3, $a5, 0
	lu12i.w	$a0, 511
	ori	$t5, $a0, 8
	lu12i.w	$a0, 510
	ori	$t7, $a0, 8
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_12
# %bb.10:                               # %scalar.ph257.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	ori	$t4, $zero, 510
	move	$a0, $s1
	move	$fp, $s2
	move	$a1, $a2
	.p2align	4, , 16
.LBB0_11:                               # %scalar.ph257
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$ft3, $fp, 16
	fld.d	$ft4, $fp, 0
	fld.d	$ft5, $fp, 8
	fld.d	$ft6, $a1, 8
	fadd.d	$ft3, $ft3, $ft4
	fldx.d	$ft4, $fp, $t3
	fmadd.d	$ft3, $ft5, $ft2, $ft3
	fdiv.d	$ft3, $ft3, $fa1
	fadd.d	$ft3, $ft6, $ft3
	fsub.d	$ft4, $ft4, $ft5
	fdiv.d	$ft4, $ft4, $fa2
	fadd.d	$ft3, $ft3, $ft4
	fsub.d	$ft4, $fa5, $ft5
	fdiv.d	$ft4, $ft4, $fa3
	fadd.d	$ft3, $ft4, $ft3
	fmul.d	$ft3, $fa0, $ft3
	fadd.d	$ft3, $ft5, $ft3
	fst.d	$ft3, $a0, 8
	add.d	$t8, $fp, $t7
	fldx.d	$ft3, $t8, $t3
	fldx.d	$ft4, $t8, $s6
	fldx.d	$ft5, $t8, $t2
	fldx.d	$ft6, $a1, $t5
	fadd.d	$ft3, $ft3, $ft4
	fmadd.d	$ft3, $ft5, $ft2, $ft3
	fdiv.d	$ft3, $ft3, $fa1
	fadd.d	$ft3, $ft6, $ft3
	fldx.d	$ft4, $fp, $t7
	addi.d	$a1, $a1, 8
	addi.d	$fp, $fp, 8
	addi.d	$t8, $a0, 8
	fsub.d	$ft4, $ft4, $ft5
	fdiv.d	$ft4, $ft4, $fa2
	fadd.d	$ft3, $ft3, $ft4
	fsub.d	$ft4, $fa5, $ft5
	fdiv.d	$ft4, $ft4, $fa3
	fadd.d	$ft3, $ft4, $ft3
	fmul.d	$ft3, $fa0, $ft3
	fadd.d	$ft3, $ft5, $ft3
	addi.d	$t4, $t4, -1
	fstx.d	$ft3, $a0, $t5
	move	$a0, $t8
	bnez	$t4, .LBB0_11
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_12:                               # %vector.body267.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	ori	$t4, $zero, 510
	move	$fp, $a2
	move	$a0, $s1
	move	$a1, $s2
	.p2align	4, , 16
.LBB0_13:                               # %vector.body267
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr11, $a1, 16
	vld	$vr12, $a1, 0
	vld	$vr13, $a1, 8
	vld	$vr14, $fp, 8
	vfadd.d	$vr11, $vr11, $vr12
	vldx	$vr12, $a1, $t3
	vfmadd.d	$vr11, $vr13, $vr10, $vr11
	vfdiv.d	$vr11, $vr11, $vr6
	vfadd.d	$vr11, $vr14, $vr11
	vfsub.d	$vr12, $vr12, $vr13
	vfdiv.d	$vr12, $vr12, $vr4
	vfadd.d	$vr11, $vr11, $vr12
	vfsub.d	$vr12, $vr7, $vr13
	vfdiv.d	$vr12, $vr12, $vr8
	vfadd.d	$vr11, $vr12, $vr11
	vfmul.d	$vr11, $vr9, $vr11
	vfadd.d	$vr11, $vr13, $vr11
	add.d	$t8, $a1, $t7
	vldx	$vr12, $t8, $t3
	vldx	$vr13, $t8, $s6
	vldx	$vr14, $t8, $t2
	vst	$vr11, $a0, 8
	vldx	$vr11, $fp, $t5
	vfadd.d	$vr12, $vr12, $vr13
	vfmadd.d	$vr12, $vr14, $vr10, $vr12
	vldx	$vr13, $a1, $t7
	vfdiv.d	$vr12, $vr12, $vr6
	vfadd.d	$vr11, $vr11, $vr12
	addi.d	$a1, $a1, 16
	vfsub.d	$vr12, $vr13, $vr14
	vfdiv.d	$vr12, $vr12, $vr4
	vfadd.d	$vr11, $vr11, $vr12
	vfsub.d	$vr12, $vr7, $vr14
	vfdiv.d	$vr12, $vr12, $vr8
	vfadd.d	$vr11, $vr12, $vr11
	vfmul.d	$vr11, $vr9, $vr11
	vfadd.d	$vr11, $vr14, $vr11
	vstx	$vr11, $a0, $t5
	addi.d	$t4, $t4, -2
	addi.d	$a0, $a0, 16
	addi.d	$fp, $fp, 16
	bnez	$t4, .LBB0_13
.LBB0_14:                               # %.preheader223.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	ori	$t4, $zero, 510
	ld.d	$t5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_15:                               # %.preheader223
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$ft3, $a0, $t3
	ori	$a1, $s3, 8
	fldx.d	$ft4, $a0, $a1
	fld.d	$ft5, $a0, 8
	fldx.d	$ft6, $t5, $s6
	fadd.d	$ft3, $ft3, $ft4
	fld.d	$ft4, $a0, 0
	fmadd.d	$ft3, $ft5, $ft2, $ft3
	fdiv.d	$ft3, $ft3, $fa2
	fadd.d	$ft3, $ft6, $ft3
	fsub.d	$ft4, $ft4, $ft5
	fdiv.d	$ft4, $ft4, $fa1
	fadd.d	$ft3, $ft3, $ft4
	fsub.d	$ft4, $fa5, $ft5
	fdiv.d	$ft4, $ft4, $fa3
	fadd.d	$ft3, $ft4, $ft3
	fmul.d	$ft3, $fa0, $ft3
	fadd.d	$ft3, $ft5, $ft3
	fstx.d	$ft3, $t7, $s6
	fld.d	$ft3, $a0, 16
	fldx.d	$ft4, $a0, $ra
	fld.d	$ft5, $t5, 0
	ori	$a1, $s3, 16
	fldx.d	$ft6, $a0, $a1
	fadd.d	$ft3, $ft3, $ft4
	ori	$a1, $s3, 24
	fldx.d	$ft4, $a0, $a1
	fmadd.d	$ft3, $ft6, $ft2, $ft3
	fdiv.d	$ft3, $ft3, $fa2
	fadd.d	$ft3, $ft5, $ft3
	fsub.d	$ft4, $ft4, $ft6
	fdiv.d	$ft4, $ft4, $fa1
	fadd.d	$ft3, $ft3, $ft4
	fsub.d	$ft4, $fa5, $ft6
	fdiv.d	$ft4, $ft4, $fa3
	fadd.d	$ft3, $ft4, $ft3
	fmul.d	$ft3, $fa0, $ft3
	fadd.d	$ft3, $ft6, $ft3
	fst.d	$ft3, $t7, 0
	addi.d	$t4, $t4, -1
	add.d	$t7, $t7, $t2
	add.d	$a0, $a0, $t2
	add.d	$t5, $t5, $t2
	bnez	$t4, .LBB0_15
# %bb.16:                               # %.preheader.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	move	$a0, $zero
	move	$a1, $s1
	move	$t4, $s2
	b	.LBB0_18
	.p2align	4, , 16
.LBB0_17:                               # %middle.block
                                        #   in Loop: Header=BB0_18 Depth=2
	addi.d	$a0, $a0, 1
	add.d	$t4, $t4, $t2
	add.d	$a1, $a1, $t2
	beq	$a0, $a6, .LBB0_1
.LBB0_18:                               # %.preheader
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_20 Depth 3
                                        #       Child Loop BB0_19 Depth 3
	move	$t5, $s3
	bgeu	$t1, $a4, .LBB0_20
	.p2align	4, , 16
.LBB0_19:                               # %scalar.ph
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t7, $a1, $t5
	fldx.d	$ft3, $t7, $t2
	add.d	$t7, $t4, $t5
	addi.d	$t5, $t5, 8
	fstx.d	$ft3, $t7, $t2
	bnez	$t5, .LBB0_19
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_20:                               # %vector.body
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t7, $a1, $t5
	vldx	$vr11, $t7, $t2
	ori	$t8, $t2, 16
	vldx	$vr12, $t7, $t8
	add.d	$t7, $t4, $t5
	vstx	$vr11, $t7, $t2
	addi.d	$t5, $t5, 32
	vstx	$vr12, $t7, $t8
	bnez	$t5, .LBB0_20
	b	.LBB0_17
.LBB0_21:
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end0:
	.size	hotspotKernel, .Lfunc_end0-hotspotKernel
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
