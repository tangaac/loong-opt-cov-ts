	.file	"hotspotKernel.c"
	.text
	.globl	hotspotKernel                   # -- Begin function hotspotKernel
	.p2align	5
	.type	hotspotKernel,@function
hotspotKernel:                          # @hotspotKernel
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	move	$s8, $a0
	move	$a3, $zero
	lu12i.w	$a4, 511
	add.d	$a0, $a0, $a4
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a6, 510
	add.d	$a7, $a1, $a6
	add.d	$t0, $a2, $a4
	fdiv.d	$fa0, $fa4, $fa0
	sub.d	$t1, $a1, $s8
	lu12i.w	$t2, 1
	add.d	$a0, $s8, $t2
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$t4, $t2, 4080
	add.d	$a0, $a1, $t4
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	add.d	$a0, $a2, $t2
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$t8, -1
	ori	$s4, $t8, 16
	ori	$s0, $zero, 4080
	vldi	$vr4, -896
	ori	$s1, $zero, 4088
	ori	$s2, $zero, 4072
	ori	$s3, $zero, 511
	lu12i.w	$a0, -2
	ori	$s5, $a0, 16
	ori	$s6, $zero, 32
	ori	$s7, $zero, 512
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addi.w	$a3, $a3, 1
	ori	$a0, $zero, 200
	beq	$a3, $a0, .LBB0_15
.LBB0_2:                                # %.preheader224
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_4 Depth 3
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_12 Depth 2
                                        #       Child Loop BB0_14 Depth 3
                                        #       Child Loop BB0_13 Depth 3
	ori	$a0, $zero, 1
	ori	$t3, $t2, 8
	.p2align	4, , 16
.LBB0_3:                                # %.preheader221
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_4 Depth 3
	add.d	$t5, $a2, $t3
	add.d	$t7, $a1, $t3
	add.d	$ra, $s8, $t3
	move	$fp, $s4
	.p2align	4, , 16
.LBB0_4:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t6, $t7, $fp
	fldx.d	$fa6, $t6, $t4
	fld.d	$fa7, $t6, -16
	add.d	$a5, $t5, $fp
	fldx.d	$ft0, $a5, $s0
	fldx.d	$ft1, $t6, $s0
	fadd.d	$fa6, $fa6, $fa7
	fldx.d	$fa7, $t6, $s1
	fldx.d	$ft2, $t6, $s2
	fmadd.d	$fa6, $ft1, $fa4, $fa6
	fdiv.d	$fa6, $fa6, $fa2
	fadd.d	$fa6, $ft0, $fa6
	fadd.d	$fa7, $fa7, $ft2
	fmadd.d	$fa7, $ft1, $fa4, $fa7
	fdiv.d	$fa7, $fa7, $fa1
	fadd.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $fa5, $ft1
	fdiv.d	$fa7, $fa7, $fa3
	fadd.d	$fa6, $fa7, $fa6
	fmul.d	$fa6, $fa0, $fa6
	fadd.d	$fa6, $ft1, $fa6
	add.d	$a5, $ra, $fp
	addi.d	$fp, $fp, 8
	fstx.d	$fa6, $a5, $s0
	bnez	$fp, .LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	addi.d	$a0, $a0, 1
	add.d	$t3, $t3, $t2
	bne	$a0, $s3, .LBB0_3
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	fld.d	$fa6, $a1, 8
	fld.d	$fa7, $a1, 0
	fld.d	$ft0, $a2, 0
	fldx.d	$ft1, $a1, $t2
	fsub.d	$fa6, $fa6, $fa7
	fdiv.d	$fa6, $fa6, $fa1
	fadd.d	$fa6, $ft0, $fa6
	fsub.d	$ft0, $ft1, $fa7
	fdiv.d	$ft0, $ft0, $fa2
	fadd.d	$fa6, $fa6, $ft0
	fsub.d	$ft0, $fa5, $fa7
	fdiv.d	$ft0, $ft0, $fa3
	fadd.d	$fa6, $ft0, $fa6
	fmul.d	$fa6, $fa0, $fa6
	fadd.d	$fa6, $fa7, $fa6
	fst.d	$fa6, $s8, 0
	fldx.d	$fa6, $a1, $s0
	fldx.d	$fa7, $a1, $s1
	fldx.d	$ft0, $a2, $s1
	ori	$a0, $t2, 4088
	fldx.d	$ft1, $a1, $a0
	fsub.d	$fa6, $fa6, $fa7
	fdiv.d	$fa6, $fa6, $fa1
	fadd.d	$fa6, $ft0, $fa6
	fsub.d	$ft0, $ft1, $fa7
	fdiv.d	$ft0, $ft0, $fa2
	fadd.d	$fa6, $fa6, $ft0
	fsub.d	$ft0, $fa5, $fa7
	fdiv.d	$ft0, $ft0, $fa3
	fadd.d	$fa6, $ft0, $fa6
	fmul.d	$fa6, $fa0, $fa6
	fadd.d	$fa6, $fa7, $fa6
	fstx.d	$fa6, $s8, $s1
	fldx.d	$fa6, $a7, $t4
	fldx.d	$fa7, $a7, $a0
	fldx.d	$ft0, $t0, $s1
	fldx.d	$ft1, $a7, $s1
	fsub.d	$fa6, $fa6, $fa7
	fdiv.d	$fa6, $fa6, $fa1
	fadd.d	$fa6, $ft0, $fa6
	fsub.d	$ft0, $ft1, $fa7
	fdiv.d	$ft0, $ft0, $fa2
	fadd.d	$fa6, $fa6, $ft0
	fsub.d	$ft0, $fa5, $fa7
	fdiv.d	$ft0, $ft0, $fa3
	fadd.d	$fa6, $ft0, $fa6
	fmul.d	$fa6, $fa0, $fa6
	fadd.d	$fa6, $fa7, $fa6
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	fstx.d	$fa6, $a0, $s1
	ori	$ra, $t2, 8
	fldx.d	$fa6, $a7, $ra
	fldx.d	$fa7, $a7, $t2
	fld.d	$ft0, $t0, 0
	fld.d	$ft1, $a7, 0
	fsub.d	$fa6, $fa6, $fa7
	fdiv.d	$fa6, $fa6, $fa1
	fadd.d	$fa6, $ft0, $fa6
	fsub.d	$ft0, $ft1, $fa7
	fdiv.d	$ft0, $ft0, $fa2
	fadd.d	$fa6, $fa6, $ft0
	fsub.d	$ft0, $fa5, $fa7
	fdiv.d	$ft0, $ft0, $fa3
	fadd.d	$fa6, $ft0, $fa6
	fmul.d	$fa6, $fa0, $fa6
	fadd.d	$fa6, $fa7, $fa6
	fst.d	$fa6, $a0, 0
	ori	$t7, $zero, 510
	move	$a0, $s8
	move	$t3, $a1
	move	$t5, $a2
	.p2align	4, , 16
.LBB0_7:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa6, $t3, 16
	fld.d	$fa7, $t3, 0
	fld.d	$ft0, $t3, 8
	fld.d	$ft1, $t5, 8
	fadd.d	$fa6, $fa6, $fa7
	fldx.d	$fa7, $t3, $ra
	fmadd.d	$fa6, $ft0, $fa4, $fa6
	fdiv.d	$fa6, $fa6, $fa1
	fadd.d	$fa6, $ft1, $fa6
	fsub.d	$fa7, $fa7, $ft0
	fdiv.d	$fa7, $fa7, $fa2
	fadd.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $fa5, $ft0
	fdiv.d	$fa7, $fa7, $fa3
	fadd.d	$fa6, $fa7, $fa6
	fmul.d	$fa6, $fa0, $fa6
	fadd.d	$fa6, $ft0, $fa6
	fst.d	$fa6, $a0, 8
	ori	$a5, $a6, 8
	add.d	$t6, $t3, $a5
	fldx.d	$fa6, $t6, $ra
	fldx.d	$fa7, $t6, $s1
	fldx.d	$ft0, $t6, $t2
	ori	$t6, $a4, 8
	fldx.d	$ft1, $t5, $t6
	fadd.d	$fa6, $fa6, $fa7
	fmadd.d	$fa6, $ft0, $fa4, $fa6
	fdiv.d	$fa6, $fa6, $fa1
	fadd.d	$fa6, $ft1, $fa6
	fldx.d	$fa7, $t3, $a5
	addi.d	$t5, $t5, 8
	addi.d	$t3, $t3, 8
	addi.d	$a5, $a0, 8
	fsub.d	$fa7, $fa7, $ft0
	fdiv.d	$fa7, $fa7, $fa2
	fadd.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $fa5, $ft0
	fdiv.d	$fa7, $fa7, $fa3
	fadd.d	$fa6, $fa7, $fa6
	fmul.d	$fa6, $fa0, $fa6
	fadd.d	$fa6, $ft0, $fa6
	addi.d	$t7, $t7, -1
	fstx.d	$fa6, $a0, $t6
	move	$a0, $a5
	bnez	$t7, .LBB0_7
# %bb.8:                                # %.preheader223.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	ori	$a0, $zero, 510
	ld.d	$t7, $sp, 8                     # 8-byte Folded Reload
	ld.d	$t5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_9:                                # %.preheader223
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa6, $t5, $ra
	ori	$a5, $t8, 8
	fldx.d	$fa7, $t5, $a5
	fld.d	$ft0, $t5, 8
	fldx.d	$ft1, $t7, $s1
	fadd.d	$fa6, $fa6, $fa7
	fld.d	$fa7, $t5, 0
	fmadd.d	$fa6, $ft0, $fa4, $fa6
	fdiv.d	$fa6, $fa6, $fa2
	fadd.d	$fa6, $ft1, $fa6
	fsub.d	$fa7, $fa7, $ft0
	fdiv.d	$fa7, $fa7, $fa1
	fadd.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $fa5, $ft0
	fdiv.d	$fa7, $fa7, $fa3
	fadd.d	$fa6, $fa7, $fa6
	fmul.d	$fa6, $fa0, $fa6
	fadd.d	$fa6, $ft0, $fa6
	fstx.d	$fa6, $t3, $s1
	fld.d	$fa6, $t5, 16
	fldx.d	$fa7, $t5, $s5
	fld.d	$ft0, $t7, 0
	ori	$a5, $t8, 16
	fldx.d	$ft1, $t5, $a5
	fadd.d	$fa6, $fa6, $fa7
	ori	$a5, $t8, 24
	fldx.d	$fa7, $t5, $a5
	fmadd.d	$fa6, $ft1, $fa4, $fa6
	fdiv.d	$fa6, $fa6, $fa2
	fadd.d	$fa6, $ft0, $fa6
	fsub.d	$fa7, $fa7, $ft1
	fdiv.d	$fa7, $fa7, $fa1
	fadd.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $fa5, $ft1
	fdiv.d	$fa7, $fa7, $fa3
	fadd.d	$fa6, $fa7, $fa6
	fmul.d	$fa6, $fa0, $fa6
	fadd.d	$fa6, $ft1, $fa6
	fst.d	$fa6, $t3, 0
	addi.d	$a0, $a0, -1
	add.d	$t3, $t3, $t2
	add.d	$t5, $t5, $t2
	add.d	$t7, $t7, $t2
	bnez	$a0, .LBB0_9
# %bb.10:                               # %.preheader.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	move	$a0, $zero
	move	$t3, $s8
	move	$t5, $a1
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_11:                               # %middle.block
                                        #   in Loop: Header=BB0_12 Depth=2
	addi.d	$a0, $a0, 1
	add.d	$t5, $t5, $t2
	add.d	$t3, $t3, $t2
	beq	$a0, $s7, .LBB0_1
.LBB0_12:                               # %.preheader
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_14 Depth 3
                                        #       Child Loop BB0_13 Depth 3
	move	$t7, $t8
	bgeu	$t1, $s6, .LBB0_14
	.p2align	4, , 16
.LBB0_13:                               # %scalar.ph
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a5, $t3, $t7
	fldx.d	$fa6, $a5, $t2
	add.d	$a5, $t5, $t7
	addi.d	$t7, $t7, 8
	fstx.d	$fa6, $a5, $t2
	bnez	$t7, .LBB0_13
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_14:                               # %vector.body
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a5, $t3, $t7
	vldx	$vr6, $a5, $t2
	ori	$t6, $t2, 16
	vldx	$vr7, $a5, $t6
	add.d	$a5, $t5, $t7
	vstx	$vr6, $a5, $t2
	addi.d	$t7, $t7, 32
	vstx	$vr7, $a5, $t6
	bnez	$t7, .LBB0_14
	b	.LBB0_11
.LBB0_15:
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end0:
	.size	hotspotKernel, .Lfunc_end0-hotspotKernel
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
