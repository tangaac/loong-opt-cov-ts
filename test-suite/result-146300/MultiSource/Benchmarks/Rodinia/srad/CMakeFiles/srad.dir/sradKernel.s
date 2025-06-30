	.file	"sradKernel.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function srad_kernel
.LCPI0_0:
	.word	0x38800000                      # float 6.10351563E-5
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_1:
	.dword	0xbfb0000000000000              # double -0.0625
	.text
	.globl	srad_kernel
	.p2align	5
	.type	srad_kernel,@function
srad_kernel:                            # @srad_kernel
# %bb.0:
	addi.d	$sp, $sp, -608
	st.d	$ra, $sp, 600                   # 8-byte Folded Spill
	st.d	$fp, $sp, 592                   # 8-byte Folded Spill
	st.d	$s0, $sp, 584                   # 8-byte Folded Spill
	st.d	$s1, $sp, 576                   # 8-byte Folded Spill
	st.d	$s2, $sp, 568                   # 8-byte Folded Spill
	st.d	$s3, $sp, 560                   # 8-byte Folded Spill
	st.d	$s4, $sp, 552                   # 8-byte Folded Spill
	st.d	$s5, $sp, 544                   # 8-byte Folded Spill
	st.d	$s6, $sp, 536                   # 8-byte Folded Spill
	st.d	$s7, $sp, 528                   # 8-byte Folded Spill
	st.d	$s8, $sp, 520                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 608
	bstrins.d	$sp, $zero, 4, 0
	move	$s5, $a3
	move	$s6, $a2
	move	$s2, $zero
	lu12i.w	$s1, 2047
	lu12i.w	$s0, 2046
	ori	$t7, $s0, 4092
	add.d	$t8, $a0, $t7
	add.d	$a4, $a1, $t7
	add.d	$a3, $a2, $t7
	add.d	$a2, $s5, $t7
	addu16i.d	$a7, $a5, 128
	addi.d	$t0, $a7, -4
	lu12i.w	$a7, 1
	ori	$s3, $a7, 4
	add.d	$s4, $a0, $s3
	add.d	$s7, $a1, $s3
	add.d	$s8, $s6, $s3
	add.d	$ra, $s5, $s3
	add.d	$t1, $a6, $s3
	add.d	$t2, $a6, $t7
	addi.d	$t3, $a5, 4
	sltu	$t4, $s4, $a4
	sltu	$t5, $s7, $t8
	and	$t4, $t4, $t5
	sltu	$t5, $s4, $a3
	sltu	$t6, $s8, $t8
	and	$t5, $t5, $t6
	or	$t4, $t4, $t5
	sltu	$t5, $s4, $a2
	sltu	$t6, $ra, $t8
	and	$t5, $t5, $t6
	or	$t4, $t4, $t5
	sltu	$t5, $s4, $t2
	sltu	$t6, $t1, $t8
	and	$t5, $t5, $t6
	or	$t4, $t4, $t5
	st.d	$s4, $sp, 96                    # 8-byte Folded Spill
	sltu	$t5, $s4, $t0
	sltu	$t6, $t3, $t8
	and	$t5, $t5, $t6
	or	$t4, $t4, $t5
	sltu	$t5, $s7, $a3
	sltu	$t6, $s8, $a4
	and	$t5, $t5, $t6
	or	$t4, $t4, $t5
	sltu	$t5, $s7, $a2
	sltu	$t6, $ra, $a4
	and	$t5, $t5, $t6
	or	$t4, $t4, $t5
	sltu	$t5, $s7, $t2
	sltu	$t6, $t1, $a4
	and	$t5, $t5, $t6
	or	$t4, $t4, $t5
	st.d	$s7, $sp, 88                    # 8-byte Folded Spill
	sltu	$t5, $s7, $t0
	sltu	$t6, $t3, $a4
	and	$t5, $t5, $t6
	or	$t4, $t4, $t5
	sltu	$t5, $s8, $a2
	sltu	$t6, $ra, $a3
	and	$t5, $t5, $t6
	or	$t4, $t4, $t5
	sltu	$t5, $s8, $t2
	sltu	$t6, $t1, $a3
	and	$t5, $t5, $t6
	or	$t4, $t4, $t5
	st.d	$s8, $sp, 80                    # 8-byte Folded Spill
	sltu	$t5, $s8, $t0
	sltu	$t6, $t3, $a3
	and	$t5, $t5, $t6
	or	$t4, $t4, $t5
	sltu	$t5, $ra, $t2
	sltu	$t6, $t1, $a2
	and	$t5, $t5, $t6
	or	$t4, $t4, $t5
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	sltu	$t5, $ra, $t0
	sltu	$t6, $t3, $a2
	and	$t5, $t5, $t6
	add.d	$t6, $a6, $s1
	or	$t4, $t4, $t5
	add.d	$s4, $a5, $s1
	sltu	$t2, $t3, $t2
	addu16i.d	$t3, $a6, 128
	sltu	$t1, $t1, $t0
	and	$t1, $t1, $t2
	or	$t1, $t4, $t1
	sltu	$t2, $s4, $t3
	st.d	$t6, $sp, 152                   # 8-byte Folded Spill
	sltu	$t4, $t6, $t0
	and	$t2, $t2, $t4
	addu16i.d	$t4, $a0, 128
	addi.d	$t4, $t4, -4
	sltu	$t4, $s4, $t4
	add.d	$t6, $a0, $s1
	sltu	$t5, $t6, $t0
	and	$t4, $t4, $t5
	or	$t2, $t2, $t4
	addu16i.d	$t4, $a1, 128
	addi.d	$t4, $t4, -4
	sltu	$t4, $s4, $t4
	add.d	$s7, $a1, $s1
	sltu	$t5, $s7, $t0
	and	$t4, $t4, $t5
	or	$t2, $t2, $t4
	addu16i.d	$t4, $s6, 128
	addi.d	$t4, $t4, -4
	sltu	$t4, $s4, $t4
	add.d	$ra, $s6, $s1
	sltu	$t5, $ra, $t0
	and	$t4, $t4, $t5
	or	$t2, $t2, $t4
	addu16i.d	$t4, $s5, 128
	addi.d	$t4, $t4, -4
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	sltu	$t4, $s4, $t4
	add.d	$t5, $s5, $s1
	st.d	$t5, $sp, 176                   # 8-byte Folded Spill
	sltu	$t0, $t5, $t0
	and	$t0, $t4, $t0
	or	$t0, $t2, $t0
	st.d	$t0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$t0, $t3, -4
	add.d	$t3, $a5, $t7
	st.d	$t0, $sp, 216                   # 8-byte Folded Spill
	sltu	$t0, $a5, $t0
	sltu	$t2, $a6, $t3
	and	$t0, $t0, $t2
	sltu	$t4, $a5, $t8
	sltu	$t2, $a0, $t3
	and	$t2, $t4, $t2
	or	$t2, $t0, $t2
	sltu	$a4, $a5, $a4
	sltu	$t0, $a1, $t3
	and	$a4, $a4, $t0
	or	$a4, $t2, $a4
	sltu	$a3, $a5, $a3
	sltu	$t0, $s6, $t3
	and	$a3, $a3, $t0
	or	$a3, $a4, $a3
	add.d	$a4, $a5, $s0
	st.d	$a4, $sp, 224                   # 8-byte Folded Spill
	sltu	$a4, $a5, $a2
	sltu	$a2, $s5, $t3
	and	$a2, $a4, $a2
	or	$a2, $a3, $a2
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	st.d	$s3, $sp, 104                   # 8-byte Folded Spill
	add.d	$a2, $a5, $s3
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	add.d	$a2, $a6, $a7
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	ori	$a2, $s1, 4
	add.d	$a2, $a6, $a2
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	movgr2fr.w	$fa0, $zero
	vldi	$vr1, -928
	vldi	$vr2, -944
	vldi	$vr3, -912
	vldi	$vr4, -1168
	andi	$a2, $t1, 1
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	vldi	$vr5, -960
	add.d	$a2, $a5, $a7
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	add.d	$a2, $a0, $a7
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	add.d	$a2, $a1, $a7
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	add.d	$a2, $s6, $a7
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	add.d	$a2, $s5, $a7
	st.d	$a2, $sp, 0                     # 8-byte Folded Spill
	ori	$s8, $zero, 512
	ori	$t4, $zero, 128
	lu12i.w	$t1, -1
	ori	$t3, $zero, 4064
	lu52i.d	$s4, $zero, -1029
	st.d	$a6, $sp, 208                   # 8-byte Folded Spill
	st.d	$a5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s5, $sp, 136                   # 8-byte Folded Spill
	st.d	$s6, $sp, 128                   # 8-byte Folded Spill
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	st.d	$t6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_1:                                # %.preheader624
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
                                        #       Child Loop BB0_3 Depth 3
                                        #     Child Loop BB0_19 Depth 2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_42 Depth 3
                                        #     Child Loop BB0_47 Depth 2
                                        #     Child Loop BB0_50 Depth 2
                                        #     Child Loop BB0_52 Depth 2
                                        #       Child Loop BB0_55 Depth 3
                                        #       Child Loop BB0_58 Depth 3
	move	$a4, $zero
	move	$a3, $a5
	fmov.s	$fa7, $fa0
	fmov.s	$fa6, $fa0
	ld.d	$t0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_2:                                # %.preheader622
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_3 Depth 3
	move	$a2, $zero
	.p2align	4, , 16
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.s	$ft0, $a3, $a2
	fadd.s	$fa7, $fa7, $ft0
	fmul.s	$ft0, $ft0, $ft0
	addi.d	$a2, $a2, 4
	fadd.s	$fa6, $fa6, $ft0
	bne	$a2, $s8, .LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=2
	addi.d	$a4, $a4, 1
	add.d	$a3, $a3, $a7
	bne	$a4, $t4, .LBB0_2
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	fld.s	$ft0, $a5, 0
	fsub.s	$ft1, $ft0, $ft0
	fst.s	$ft1, $a0, 0
	fldx.s	$ft1, $a5, $a7
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	fld.s	$ft2, $a2, %pc_lo12(.LCPI0_0)
	fsub.s	$ft1, $ft1, $ft0
	fst.s	$ft1, $a1, 0
	fld.s	$ft1, $a5, 0
	fmul.s	$fa7, $fa7, $ft2
	fsub.s	$ft1, $ft1, $ft0
	fst.s	$ft1, $s6, 0
	fld.s	$ft1, $a5, 4
	fmul.s	$fa6, $fa6, $ft2
	fmul.s	$fa7, $fa7, $fa7
	fsub.s	$fa6, $fa6, $fa7
	fsub.s	$ft1, $ft1, $ft0
	fst.s	$ft1, $s5, 0
	fld.s	$ft2, $a0, 0
	fld.s	$ft3, $a1, 0
	fdiv.s	$fa6, $fa6, $fa7
	fld.s	$fa7, $s6, 0
	fmul.s	$ft4, $ft2, $ft2
	fmul.s	$ft5, $ft3, $ft3
	fadd.s	$ft4, $ft4, $ft5
	fmul.s	$ft5, $fa7, $fa7
	fadd.s	$ft4, $ft4, $ft5
	fmul.s	$ft5, $ft1, $ft1
	fadd.s	$ft4, $ft5, $ft4
	fmul.s	$ft5, $ft0, $ft0
	fdiv.s	$ft4, $ft4, $ft5
	fadd.s	$ft2, $ft2, $ft3
	fadd.s	$fa7, $ft2, $fa7
	fadd.s	$fa7, $ft1, $fa7
	fdiv.s	$ft0, $fa7, $ft0
	fcvt.d.s	$ft1, $ft4
	pcalau12i	$a2, %pc_hi20(.LCPI0_1)
	fld.d	$fa7, $a2, %pc_lo12(.LCPI0_1)
	fmul.d	$ft1, $ft1, $fa1
	fmul.s	$ft2, $ft0, $ft0
	fcvt.d.s	$ft2, $ft2
	fmul.d	$ft2, $ft2, $fa7
	fadd.d	$ft1, $ft1, $ft2
	fcvt.s.d	$ft1, $ft1
	fcvt.d.s	$ft0, $ft0
	fmul.d	$ft0, $ft0, $fa2
	fadd.d	$ft0, $ft0, $fa3
	fcvt.s.d	$ft0, $ft0
	fmul.s	$ft0, $ft0, $ft0
	fdiv.s	$ft0, $ft1, $ft0
	fsub.s	$ft1, $ft0, $fa6
	fadd.s	$ft0, $fa6, $fa4
	fmul.s	$ft0, $fa6, $ft0
	fdiv.s	$ft1, $ft1, $ft0
	fcvt.d.s	$ft1, $ft1
	fadd.d	$ft1, $ft1, $fa3
	frecip.d	$ft1, $ft1
	fcvt.s.d	$ft2, $ft1
	fcmp.clt.s	$fcc0, $ft2, $fa0
	fst.s	$ft2, $a6, 0
	fmov.s	$ft1, $fa0
	bcnez	$fcc0, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	vldi	$vr9, -1168
	fcmp.cule.s	$fcc0, $ft2, $ft1
	bcnez	$fcc0, .LBB0_8
.LBB0_7:                                # %.sink.split
                                        #   in Loop: Header=BB0_1 Depth=1
	fst.s	$ft1, $a6, 0
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	ori	$a3, $zero, 4092
	fldx.s	$ft1, $a5, $a3
	fsub.s	$ft2, $ft1, $ft1
	fstx.s	$ft2, $a0, $a3
	ori	$a2, $a7, 4092
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	fldx.s	$ft2, $a5, $a2
	fsub.s	$ft2, $ft2, $ft1
	fstx.s	$ft2, $a1, $a3
	ori	$a2, $zero, 4088
	fldx.s	$ft2, $a5, $a2
	fsub.s	$ft2, $ft2, $ft1
	fstx.s	$ft2, $s6, $a3
	fldx.s	$ft2, $a5, $a3
	fsub.s	$ft2, $ft2, $ft1
	fstx.s	$ft2, $s5, $a3
	fldx.s	$ft3, $a0, $a3
	fldx.s	$ft4, $a1, $a3
	fldx.s	$ft5, $s6, $a3
	fmul.s	$ft6, $ft3, $ft3
	fmul.s	$ft7, $ft4, $ft4
	fadd.s	$ft6, $ft6, $ft7
	fmul.s	$ft7, $ft5, $ft5
	fadd.s	$ft6, $ft6, $ft7
	fmul.s	$ft7, $ft2, $ft2
	fadd.s	$ft6, $ft7, $ft6
	fmul.s	$ft7, $ft1, $ft1
	fdiv.s	$ft6, $ft6, $ft7
	fadd.s	$ft3, $ft3, $ft4
	fadd.s	$ft3, $ft3, $ft5
	fadd.s	$ft2, $ft2, $ft3
	fdiv.s	$ft1, $ft2, $ft1
	fcvt.d.s	$ft2, $ft6
	fmul.d	$ft2, $ft2, $fa1
	fmul.s	$ft3, $ft1, $ft1
	fcvt.d.s	$ft3, $ft3
	fmul.d	$ft3, $ft3, $fa7
	fadd.d	$ft2, $ft2, $ft3
	fcvt.s.d	$ft2, $ft2
	fcvt.d.s	$ft1, $ft1
	fmul.d	$ft1, $ft1, $fa2
	fadd.d	$ft1, $ft1, $fa3
	fcvt.s.d	$ft1, $ft1
	fmul.s	$ft1, $ft1, $ft1
	fdiv.s	$ft1, $ft2, $ft1
	fsub.s	$ft1, $ft1, $fa6
	fdiv.s	$ft1, $ft1, $ft0
	fcvt.d.s	$ft1, $ft1
	fadd.d	$ft1, $ft1, $fa3
	frecip.d	$ft1, $ft1
	fcvt.s.d	$ft2, $ft1
	fcmp.clt.s	$fcc0, $ft2, $fa0
	ori	$a2, $zero, 4092
	fstx.s	$ft2, $a6, $a3
	fmov.s	$ft1, $fa0
	bcnez	$fcc0, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	vldi	$vr9, -1168
	fcmp.cule.s	$fcc0, $ft2, $ft1
	bcnez	$fcc0, .LBB0_11
.LBB0_10:                               # %.sink.split658
                                        #   in Loop: Header=BB0_1 Depth=1
	fstx.s	$ft1, $a6, $a2
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	fldx.s	$ft1, $a3, $a7
	fld.s	$ft2, $a3, 0
	fsub.s	$ft2, $ft2, $ft1
	fst.s	$ft2, $t6, 0
	fldx.s	$ft2, $a3, $a7
	fsub.s	$ft2, $ft2, $ft1
	fst.s	$ft2, $s7, 0
	fldx.s	$ft2, $a3, $a7
	fsub.s	$ft2, $ft2, $ft1
	fst.s	$ft2, $ra, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	fldx.s	$ft2, $a3, $a2
	fsub.s	$ft2, $ft2, $ft1
	fst.s	$ft2, $t2, 0
	fld.s	$ft3, $t6, 0
	fld.s	$ft4, $s7, 0
	fld.s	$ft5, $ra, 0
	fmul.s	$ft6, $ft3, $ft3
	fmul.s	$ft7, $ft4, $ft4
	fadd.s	$ft6, $ft6, $ft7
	fmul.s	$ft7, $ft5, $ft5
	fadd.s	$ft6, $ft6, $ft7
	fmul.s	$ft7, $ft2, $ft2
	fadd.s	$ft6, $ft7, $ft6
	fmul.s	$ft7, $ft1, $ft1
	fdiv.s	$ft6, $ft6, $ft7
	fadd.s	$ft3, $ft3, $ft4
	fadd.s	$ft3, $ft3, $ft5
	fadd.s	$ft2, $ft2, $ft3
	fdiv.s	$ft1, $ft2, $ft1
	fcvt.d.s	$ft2, $ft6
	fmul.d	$ft2, $ft2, $fa1
	fmul.s	$ft3, $ft1, $ft1
	fcvt.d.s	$ft3, $ft3
	fmul.d	$ft3, $ft3, $fa7
	fadd.d	$ft2, $ft2, $ft3
	fcvt.s.d	$ft2, $ft2
	fcvt.d.s	$ft1, $ft1
	fmul.d	$ft1, $ft1, $fa2
	fadd.d	$ft1, $ft1, $fa3
	fcvt.s.d	$ft1, $ft1
	fmul.s	$ft1, $ft1, $ft1
	fdiv.s	$ft1, $ft2, $ft1
	fsub.s	$ft1, $ft1, $fa6
	fdiv.s	$ft1, $ft1, $ft0
	fcvt.d.s	$ft1, $ft1
	fadd.d	$ft1, $ft1, $fa3
	frecip.d	$ft1, $ft1
	fcvt.s.d	$ft2, $ft1
	fcmp.clt.s	$fcc0, $ft2, $fa0
	fst.s	$ft2, $t0, 0
	fmov.s	$ft1, $fa0
	bcnez	$fcc0, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_1 Depth=1
	vldi	$vr9, -1168
	fcmp.cule.s	$fcc0, $ft2, $ft1
	bcnez	$fcc0, .LBB0_14
.LBB0_13:                               # %.sink.split660
                                        #   in Loop: Header=BB0_1 Depth=1
	fst.s	$ft1, $t0, 0
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	st.d	$s2, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	fldx.s	$ft1, $a0, $a2
	ori	$a1, $zero, 4092
	fldx.s	$ft2, $a0, $a1
	fsub.s	$ft2, $ft2, $ft1
	fstx.s	$ft2, $t6, $a1
	fldx.s	$ft2, $a0, $a2
	fsub.s	$ft2, $ft2, $ft1
	fstx.s	$ft2, $s7, $a1
	ori	$a6, $a7, 4088
	fldx.s	$ft2, $a0, $a6
	fsub.s	$ft2, $ft2, $ft1
	fstx.s	$ft2, $ra, $a1
	fldx.s	$ft2, $a0, $a2
	fsub.s	$ft2, $ft2, $ft1
	fstx.s	$ft2, $t2, $a1
	fldx.s	$ft3, $t6, $a1
	fldx.s	$ft4, $s7, $a1
	fldx.s	$ft5, $ra, $a1
	fmul.s	$ft6, $ft3, $ft3
	fmul.s	$ft7, $ft4, $ft4
	fadd.s	$ft6, $ft6, $ft7
	fmul.s	$ft7, $ft5, $ft5
	fadd.s	$ft6, $ft6, $ft7
	fmul.s	$ft7, $ft2, $ft2
	fadd.s	$ft6, $ft7, $ft6
	fmul.s	$ft7, $ft1, $ft1
	fdiv.s	$ft6, $ft6, $ft7
	fadd.s	$ft3, $ft3, $ft4
	fadd.s	$ft3, $ft3, $ft5
	fadd.s	$ft2, $ft2, $ft3
	fdiv.s	$ft1, $ft2, $ft1
	fcvt.d.s	$ft2, $ft6
	fmul.d	$ft2, $ft2, $fa1
	fmul.s	$ft3, $ft1, $ft1
	fcvt.d.s	$ft3, $ft3
	fmul.d	$ft3, $ft3, $fa7
	fadd.d	$ft2, $ft2, $ft3
	fcvt.s.d	$ft2, $ft2
	fcvt.d.s	$ft1, $ft1
	fmul.d	$ft1, $ft1, $fa2
	fadd.d	$ft1, $ft1, $fa3
	fcvt.s.d	$ft1, $ft1
	fmul.s	$ft1, $ft1, $ft1
	fdiv.s	$ft1, $ft2, $ft1
	fsub.s	$ft1, $ft1, $fa6
	fdiv.s	$ft1, $ft1, $ft0
	fcvt.d.s	$ft1, $ft1
	fadd.d	$ft1, $ft1, $fa3
	frecip.d	$ft1, $ft1
	fcvt.s.d	$ft2, $ft1
	movgr2fr.w	$ft1, $zero
	fcmp.clt.s	$fcc0, $ft2, $ft1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	fst.s	$ft2, $a0, 0
	bcnez	$fcc0, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_1 Depth=1
	vldi	$vr9, -1168
	fcmp.cule.s	$fcc0, $ft2, $ft1
	bcnez	$fcc0, .LBB0_17
.LBB0_16:                               # %.sink.split662
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	fst.s	$ft1, $a0, 0
.LBB0_17:                               # %.preheader621.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	xvreplve0.w	$xr9, $xr6
	xvreplve0.w	$xr10, $xr8
	ori	$s6, $zero, 1
	ld.d	$s7, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 208                   # 8-byte Folded Reload
	b	.LBB0_19
	.p2align	4, , 16
.LBB0_18:                               # %.loopexit836
                                        #   in Loop: Header=BB0_19 Depth=2
	addi.d	$s6, $s6, 1
	add.d	$t2, $t2, $a7
	add.d	$ra, $ra, $a7
	add.d	$s5, $s5, $a7
	add.d	$s0, $s0, $a7
	add.d	$t8, $t8, $a7
	add.d	$t7, $t7, $a7
	add.d	$t4, $t4, $a7
	add.d	$a2, $a2, $a7
	add.d	$a3, $a3, $a7
	add.d	$a4, $a4, $a7
	add.d	$s3, $s3, $a7
	add.d	$s7, $s7, $a7
	ori	$a0, $zero, 2047
	lu52i.d	$s4, $zero, -1029
	beq	$s6, $a0, .LBB0_44
.LBB0_19:                               # %.preheader621
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_22 Depth 3
                                        #       Child Loop BB0_42 Depth 3
	ori	$a1, $zero, 1
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_39
# %bb.20:                               # %vector.body809.preheader
                                        #   in Loop: Header=BB0_19 Depth=2
	ori	$a1, $t1, 32
	ori	$a0, $zero, 4068
	ori	$s1, $zero, 4060
	lu52i.d	$s2, $zero, 1022
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_21:                               # %pred.store.continue832
                                        #   in Loop: Header=BB0_22 Depth=3
	addi.d	$a1, $a1, 32
	beqz	$a1, .LBB0_38
.LBB0_22:                               # %vector.body809
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a5, $t7, $a1
	xvldx	$xr11, $a5, $t3
	xvld	$xr12, $a5, -32
	ori	$t0, $a7, 4064
	xvldx	$xr13, $a5, $t0
	xvfsub.s	$xr12, $xr12, $xr11
	add.d	$t0, $t8, $a1
	xvstx	$xr12, $t0, $t3
	xvfsub.s	$xr13, $xr13, $xr11
	xvldx	$xr14, $a5, $s1
	add.d	$t0, $s0, $a1
	xvstx	$xr13, $t0, $t3
	xvldx	$xr15, $a5, $a0
	xvfsub.s	$xr14, $xr14, $xr11
	add.d	$a5, $s5, $a1
	xvstx	$xr14, $a5, $t3
	xvfsub.s	$xr15, $xr15, $xr11
	add.d	$a5, $ra, $a1
	xvstx	$xr15, $a5, $t3
	xvfmul.s	$xr16, $xr12, $xr12
	xvfmul.s	$xr17, $xr13, $xr13
	xvfadd.s	$xr16, $xr16, $xr17
	xvfmul.s	$xr17, $xr14, $xr14
	xvfadd.s	$xr16, $xr16, $xr17
	xvfmul.s	$xr17, $xr15, $xr15
	xvfadd.s	$xr16, $xr17, $xr16
	xvfmul.s	$xr17, $xr11, $xr11
	xvfdiv.s	$xr16, $xr16, $xr17
	xvst	$xr16, $sp, 448
	vld	$vr16, $sp, 464
	xvfadd.s	$xr12, $xr12, $xr13
	xvfadd.s	$xr12, $xr12, $xr14
	xvfadd.s	$xr12, $xr15, $xr12
	vreplvei.w	$vr13, $vr16, 0
	fcvt.d.s	$ft5, $ft5
	xvfdiv.s	$xr11, $xr12, $xr11
	movfr2gr.d	$a5, $ft5
	vreplvei.w	$vr12, $vr16, 1
	fcvt.d.s	$ft4, $ft4
	xvinsgr2vr.d	$xr13, $a5, 0
	movfr2gr.d	$a5, $ft4
	vreplvei.w	$vr12, $vr16, 2
	fcvt.d.s	$ft4, $ft4
	xvinsgr2vr.d	$xr13, $a5, 1
	movfr2gr.d	$a5, $ft4
	vld	$vr12, $sp, 448
	vreplvei.w	$vr14, $vr16, 3
	fcvt.d.s	$ft6, $ft6
	xvinsgr2vr.d	$xr13, $a5, 2
	movfr2gr.d	$a5, $ft6
	vreplvei.w	$vr14, $vr12, 0
	fcvt.d.s	$ft6, $ft6
	xvinsgr2vr.d	$xr13, $a5, 3
	movfr2gr.d	$a5, $ft6
	vreplvei.w	$vr14, $vr12, 1
	fcvt.d.s	$ft6, $ft6
	xvinsgr2vr.d	$xr15, $a5, 0
	movfr2gr.d	$a5, $ft6
	vreplvei.w	$vr14, $vr12, 2
	fcvt.d.s	$ft6, $ft6
	xvinsgr2vr.d	$xr15, $a5, 1
	movfr2gr.d	$a5, $ft6
	vreplvei.w	$vr12, $vr12, 3
	fcvt.d.s	$ft4, $ft4
	xvinsgr2vr.d	$xr15, $a5, 2
	movfr2gr.d	$a5, $ft4
	xvfmul.s	$xr12, $xr11, $xr11
	xvst	$xr12, $sp, 416
	vld	$vr12, $sp, 432
	xvinsgr2vr.d	$xr15, $a5, 3
	xvreplgr2vr.d	$xr14, $s2
	xvfmul.d	$xr15, $xr15, $xr14
	vreplvei.w	$vr16, $vr12, 0
	fcvt.d.s	$ft8, $ft8
	xvfmul.d	$xr13, $xr13, $xr14
	movfr2gr.d	$a5, $ft8
	vreplvei.w	$vr14, $vr12, 1
	fcvt.d.s	$ft6, $ft6
	xvinsgr2vr.d	$xr16, $a5, 0
	movfr2gr.d	$a5, $ft6
	vreplvei.w	$vr14, $vr12, 2
	fcvt.d.s	$ft6, $ft6
	xvinsgr2vr.d	$xr16, $a5, 1
	movfr2gr.d	$a5, $ft6
	vld	$vr14, $sp, 416
	vreplvei.w	$vr12, $vr12, 3
	fcvt.d.s	$ft4, $ft4
	xvinsgr2vr.d	$xr16, $a5, 2
	movfr2gr.d	$a5, $ft4
	vreplvei.w	$vr12, $vr14, 0
	fcvt.d.s	$ft4, $ft4
	xvinsgr2vr.d	$xr16, $a5, 3
	movfr2gr.d	$a5, $ft4
	vreplvei.w	$vr12, $vr14, 1
	fcvt.d.s	$ft4, $ft4
	xvinsgr2vr.d	$xr17, $a5, 0
	movfr2gr.d	$a5, $ft4
	vreplvei.w	$vr12, $vr14, 2
	fcvt.d.s	$ft4, $ft4
	xvinsgr2vr.d	$xr17, $a5, 1
	movfr2gr.d	$a5, $ft4
	vreplvei.w	$vr12, $vr14, 3
	fcvt.d.s	$ft4, $ft4
	xvinsgr2vr.d	$xr17, $a5, 2
	movfr2gr.d	$a5, $ft4
	xvinsgr2vr.d	$xr17, $a5, 3
	xvreplgr2vr.d	$xr12, $s4
	xvfmul.d	$xr14, $xr17, $xr12
	xvfmul.d	$xr12, $xr16, $xr12
	xvfadd.d	$xr14, $xr15, $xr14
	xvpickve2gr.d	$a5, $xr14, 0
	movgr2fr.d	$ft7, $a5
	fcvt.s.d	$ft7, $ft7
	xvfadd.d	$xr13, $xr13, $xr12
	movfr2gr.s	$a5, $ft7
	xvpickve2gr.d	$t0, $xr14, 1
	movgr2fr.d	$ft4, $t0
	fcvt.s.d	$ft7, $ft4
	xvinsgr2vr.w	$xr12, $a5, 0
	movfr2gr.s	$a5, $ft7
	xvpickve2gr.d	$t0, $xr14, 2
	movgr2fr.d	$ft7, $t0
	fcvt.s.d	$ft7, $ft7
	xvinsgr2vr.w	$xr12, $a5, 1
	movfr2gr.s	$a5, $ft7
	xvpickve2gr.d	$t0, $xr14, 3
	movgr2fr.d	$ft6, $t0
	fcvt.s.d	$ft6, $ft6
	xvinsgr2vr.w	$xr12, $a5, 2
	movfr2gr.s	$a5, $ft6
	xvpickve2gr.d	$t0, $xr13, 0
	movgr2fr.d	$ft6, $t0
	fcvt.s.d	$ft6, $ft6
	xvinsgr2vr.w	$xr12, $a5, 3
	movfr2gr.s	$a5, $ft6
	xvpickve2gr.d	$t0, $xr13, 1
	movgr2fr.d	$ft6, $t0
	fcvt.s.d	$ft6, $ft6
	xvinsgr2vr.w	$xr12, $a5, 4
	movfr2gr.s	$a5, $ft6
	xvpickve2gr.d	$t0, $xr13, 2
	movgr2fr.d	$ft6, $t0
	fcvt.s.d	$ft6, $ft6
	xvinsgr2vr.w	$xr12, $a5, 5
	movfr2gr.s	$a5, $ft6
	xvpickve2gr.d	$t0, $xr13, 3
	xvst	$xr11, $sp, 384
	vld	$vr11, $sp, 400
	movgr2fr.d	$ft5, $t0
	fcvt.s.d	$ft5, $ft5
	xvinsgr2vr.w	$xr12, $a5, 6
	movfr2gr.s	$a5, $ft5
	vreplvei.w	$vr13, $vr11, 0
	fcvt.d.s	$ft5, $ft5
	xvinsgr2vr.w	$xr12, $a5, 7
	movfr2gr.d	$a5, $ft5
	vreplvei.w	$vr13, $vr11, 1
	fcvt.d.s	$ft5, $ft5
	xvinsgr2vr.d	$xr14, $a5, 0
	movfr2gr.d	$a5, $ft5
	vreplvei.w	$vr13, $vr11, 2
	fcvt.d.s	$ft5, $ft5
	xvinsgr2vr.d	$xr14, $a5, 1
	movfr2gr.d	$a5, $ft5
	vld	$vr13, $sp, 384
	vreplvei.w	$vr11, $vr11, 3
	fcvt.d.s	$ft3, $ft3
	xvinsgr2vr.d	$xr14, $a5, 2
	movfr2gr.d	$a5, $ft3
	vreplvei.w	$vr11, $vr13, 0
	fcvt.d.s	$ft3, $ft3
	xvinsgr2vr.d	$xr14, $a5, 3
	movfr2gr.d	$a5, $ft3
	vreplvei.w	$vr11, $vr13, 1
	fcvt.d.s	$ft3, $ft3
	xvinsgr2vr.d	$xr15, $a5, 0
	movfr2gr.d	$a5, $ft3
	vreplvei.w	$vr11, $vr13, 2
	fcvt.d.s	$ft3, $ft3
	xvinsgr2vr.d	$xr15, $a5, 1
	movfr2gr.d	$a5, $ft3
	vreplvei.w	$vr11, $vr13, 3
	fcvt.d.s	$ft3, $ft3
	xvinsgr2vr.d	$xr15, $a5, 2
	movfr2gr.d	$a5, $ft3
	xvinsgr2vr.d	$xr15, $a5, 3
	lu52i.d	$a5, $zero, 1021
	xvreplgr2vr.d	$xr11, $a5
	xvfmul.d	$xr13, $xr15, $xr11
	xvfmul.d	$xr14, $xr14, $xr11
	lu52i.d	$a5, $zero, 1023
	xvreplgr2vr.d	$xr11, $a5
	xvfadd.d	$xr13, $xr13, $xr11
	xvpickve2gr.d	$a5, $xr13, 0
	movgr2fr.d	$ft7, $a5
	fcvt.s.d	$ft7, $ft7
	xvfadd.d	$xr14, $xr14, $xr11
	movfr2gr.s	$a5, $ft7
	xvpickve2gr.d	$t0, $xr13, 1
	movgr2fr.d	$ft7, $t0
	fcvt.s.d	$ft7, $ft7
	xvinsgr2vr.w	$xr16, $a5, 0
	movfr2gr.s	$a5, $ft7
	xvpickve2gr.d	$t0, $xr13, 2
	movgr2fr.d	$ft7, $t0
	fcvt.s.d	$ft7, $ft7
	xvinsgr2vr.w	$xr16, $a5, 1
	movfr2gr.s	$a5, $ft7
	xvpickve2gr.d	$t0, $xr13, 3
	movgr2fr.d	$ft5, $t0
	fcvt.s.d	$ft5, $ft5
	xvinsgr2vr.w	$xr16, $a5, 2
	movfr2gr.s	$a5, $ft5
	xvpickve2gr.d	$t0, $xr14, 0
	movgr2fr.d	$ft5, $t0
	fcvt.s.d	$ft5, $ft5
	xvinsgr2vr.w	$xr16, $a5, 3
	movfr2gr.s	$a5, $ft5
	xvpickve2gr.d	$t0, $xr14, 1
	movgr2fr.d	$ft5, $t0
	fcvt.s.d	$ft5, $ft5
	xvinsgr2vr.w	$xr16, $a5, 4
	movfr2gr.s	$a5, $ft5
	xvpickve2gr.d	$t0, $xr14, 2
	movgr2fr.d	$ft5, $t0
	fcvt.s.d	$ft5, $ft5
	xvinsgr2vr.w	$xr16, $a5, 5
	movfr2gr.s	$a5, $ft5
	xvpickve2gr.d	$t0, $xr14, 3
	movgr2fr.d	$ft5, $t0
	fcvt.s.d	$ft5, $ft5
	xvinsgr2vr.w	$xr16, $a5, 6
	movfr2gr.s	$a5, $ft5
	xvinsgr2vr.w	$xr16, $a5, 7
	xvfmul.s	$xr13, $xr16, $xr16
	xvfdiv.s	$xr12, $xr12, $xr13
	xvfsub.s	$xr12, $xr12, $xr9
	xvfdiv.s	$xr12, $xr12, $xr10
	xvst	$xr12, $sp, 480
	vld	$vr12, $sp, 496
	vreplvei.w	$vr13, $vr12, 0
	fcvt.d.s	$ft5, $ft5
	movfr2gr.d	$a5, $ft5
	vreplvei.w	$vr13, $vr12, 1
	fcvt.d.s	$ft5, $ft5
	xvinsgr2vr.d	$xr14, $a5, 0
	movfr2gr.d	$a5, $ft5
	vreplvei.w	$vr13, $vr12, 2
	fcvt.d.s	$ft5, $ft5
	xvinsgr2vr.d	$xr14, $a5, 1
	movfr2gr.d	$a5, $ft5
	vld	$vr13, $sp, 480
	vreplvei.w	$vr12, $vr12, 3
	fcvt.d.s	$ft4, $ft4
	xvinsgr2vr.d	$xr14, $a5, 2
	movfr2gr.d	$a5, $ft4
	vreplvei.w	$vr12, $vr13, 0
	fcvt.d.s	$ft4, $ft4
	xvinsgr2vr.d	$xr14, $a5, 3
	movfr2gr.d	$a5, $ft4
	vreplvei.w	$vr12, $vr13, 1
	fcvt.d.s	$ft4, $ft4
	xvinsgr2vr.d	$xr15, $a5, 0
	movfr2gr.d	$a5, $ft4
	vreplvei.w	$vr12, $vr13, 2
	fcvt.d.s	$ft4, $ft4
	xvinsgr2vr.d	$xr15, $a5, 1
	movfr2gr.d	$a5, $ft4
	vreplvei.w	$vr12, $vr13, 3
	fcvt.d.s	$ft4, $ft4
	xvinsgr2vr.d	$xr15, $a5, 2
	movfr2gr.d	$a5, $ft4
	xvinsgr2vr.d	$xr15, $a5, 3
	xvfadd.d	$xr12, $xr15, $xr11
	xvfadd.d	$xr11, $xr14, $xr11
	xvfrecip.d	$xr12, $xr12
	xvpickve2gr.d	$a5, $xr12, 0
	movgr2fr.d	$ft5, $a5
	fcvt.s.d	$ft5, $ft5
	xvfrecip.d	$xr11, $xr11
	movfr2gr.s	$a5, $ft5
	xvpickve2gr.d	$t0, $xr12, 1
	movgr2fr.d	$ft5, $t0
	fcvt.s.d	$ft5, $ft5
	xvinsgr2vr.w	$xr14, $a5, 0
	movfr2gr.s	$a5, $ft5
	xvpickve2gr.d	$t0, $xr12, 2
	movgr2fr.d	$ft5, $t0
	fcvt.s.d	$ft5, $ft5
	xvinsgr2vr.w	$xr14, $a5, 1
	movfr2gr.s	$a5, $ft5
	xvpickve2gr.d	$t0, $xr12, 3
	movgr2fr.d	$ft4, $t0
	fcvt.s.d	$ft4, $ft4
	xvinsgr2vr.w	$xr14, $a5, 2
	movfr2gr.s	$a5, $ft4
	xvpickve2gr.d	$t0, $xr11, 0
	movgr2fr.d	$ft4, $t0
	fcvt.s.d	$ft4, $ft4
	xvinsgr2vr.w	$xr14, $a5, 3
	movfr2gr.s	$a5, $ft4
	xvpickve2gr.d	$t0, $xr11, 1
	movgr2fr.d	$ft4, $t0
	fcvt.s.d	$ft4, $ft4
	xvinsgr2vr.w	$xr14, $a5, 4
	movfr2gr.s	$a5, $ft4
	xvpickve2gr.d	$t0, $xr11, 2
	movgr2fr.d	$ft4, $t0
	fcvt.s.d	$ft4, $ft4
	xvinsgr2vr.w	$xr14, $a5, 5
	movfr2gr.s	$a5, $ft4
	xvpickve2gr.d	$t0, $xr11, 3
	movgr2fr.d	$ft3, $t0
	fcvt.s.d	$ft3, $ft3
	xvinsgr2vr.w	$xr14, $a5, 6
	movfr2gr.s	$a5, $ft3
	xvinsgr2vr.w	$xr14, $a5, 7
	add.d	$a5, $t2, $a1
	ori	$t0, $a7, 4068
	xvstx	$xr14, $a5, $t0
	xvrepli.b	$xr11, 0
	xvfcmp.clt.s	$xr12, $xr14, $xr11
	lu12i.w	$t5, 260096
	xvreplgr2vr.w	$xr15, $t5
	xvfcmp.clt.s	$xr13, $xr15, $xr14
	xvor.v	$xr13, $xr13, $xr12
	xvpickve2gr.w	$t5, $xr13, 0
	andi	$t6, $t5, 1
	xvbitsel.v	$xr11, $xr15, $xr11, $xr12
	beqz	$t6, .LBB0_24
# %bb.23:                               # %pred.store.if
                                        #   in Loop: Header=BB0_22 Depth=3
	add.d	$t0, $a5, $t0
	xvstelm.w	$xr11, $t0, 0, 0
.LBB0_24:                               # %pred.store.continue
                                        #   in Loop: Header=BB0_22 Depth=3
	vinsgr2vr.h	$vr12, $t5, 0
	xvpickve2gr.w	$t0, $xr13, 1
	vinsgr2vr.h	$vr12, $t0, 1
	xvpickve2gr.w	$t0, $xr13, 2
	vinsgr2vr.h	$vr12, $t0, 2
	xvpickve2gr.w	$t0, $xr13, 3
	vinsgr2vr.h	$vr12, $t0, 3
	xvpickve2gr.w	$t0, $xr13, 4
	vinsgr2vr.h	$vr12, $t0, 4
	xvpickve2gr.w	$t0, $xr13, 5
	vinsgr2vr.h	$vr12, $t0, 5
	xvpickve2gr.w	$t0, $xr13, 6
	vinsgr2vr.h	$vr12, $t0, 6
	xvpickve2gr.w	$t0, $xr13, 7
	vinsgr2vr.h	$vr12, $t0, 7
	vpickve2gr.h	$t0, $vr12, 1
	andi	$t0, $t0, 1
	bnez	$t0, .LBB0_31
# %bb.25:                               # %pred.store.continue820
                                        #   in Loop: Header=BB0_22 Depth=3
	vpickve2gr.h	$t0, $vr12, 2
	andi	$t0, $t0, 1
	bnez	$t0, .LBB0_32
.LBB0_26:                               # %pred.store.continue822
                                        #   in Loop: Header=BB0_22 Depth=3
	vpickve2gr.h	$t0, $vr12, 3
	andi	$t0, $t0, 1
	bnez	$t0, .LBB0_33
.LBB0_27:                               # %pred.store.continue824
                                        #   in Loop: Header=BB0_22 Depth=3
	vpickve2gr.h	$t0, $vr12, 4
	andi	$t0, $t0, 1
	bnez	$t0, .LBB0_34
.LBB0_28:                               # %pred.store.continue826
                                        #   in Loop: Header=BB0_22 Depth=3
	vpickve2gr.h	$t0, $vr12, 5
	andi	$t0, $t0, 1
	bnez	$t0, .LBB0_35
.LBB0_29:                               # %pred.store.continue828
                                        #   in Loop: Header=BB0_22 Depth=3
	vpickve2gr.h	$t0, $vr12, 6
	andi	$t0, $t0, 1
	bnez	$t0, .LBB0_36
.LBB0_30:                               # %pred.store.continue830
                                        #   in Loop: Header=BB0_22 Depth=3
	vpickve2gr.h	$t0, $vr12, 7
	andi	$t0, $t0, 1
	beqz	$t0, .LBB0_21
	b	.LBB0_37
	.p2align	4, , 16
.LBB0_31:                               # %pred.store.if819
                                        #   in Loop: Header=BB0_22 Depth=3
	ori	$t0, $a7, 4072
	add.d	$t0, $a5, $t0
	xvstelm.w	$xr11, $t0, 0, 1
	vpickve2gr.h	$t0, $vr12, 2
	andi	$t0, $t0, 1
	beqz	$t0, .LBB0_26
.LBB0_32:                               # %pred.store.if821
                                        #   in Loop: Header=BB0_22 Depth=3
	ori	$t0, $a7, 4076
	add.d	$t0, $a5, $t0
	xvstelm.w	$xr11, $t0, 0, 2
	vpickve2gr.h	$t0, $vr12, 3
	andi	$t0, $t0, 1
	beqz	$t0, .LBB0_27
.LBB0_33:                               # %pred.store.if823
                                        #   in Loop: Header=BB0_22 Depth=3
	ori	$t0, $a7, 4080
	add.d	$t0, $a5, $t0
	xvstelm.w	$xr11, $t0, 0, 3
	vpickve2gr.h	$t0, $vr12, 4
	andi	$t0, $t0, 1
	beqz	$t0, .LBB0_28
.LBB0_34:                               # %pred.store.if825
                                        #   in Loop: Header=BB0_22 Depth=3
	ori	$t0, $a7, 4084
	add.d	$t0, $a5, $t0
	xvstelm.w	$xr11, $t0, 0, 4
	vpickve2gr.h	$t0, $vr12, 5
	andi	$t0, $t0, 1
	beqz	$t0, .LBB0_29
.LBB0_35:                               # %pred.store.if827
                                        #   in Loop: Header=BB0_22 Depth=3
	add.d	$t0, $a5, $a6
	xvstelm.w	$xr11, $t0, 0, 5
	vpickve2gr.h	$t0, $vr12, 6
	andi	$t0, $t0, 1
	beqz	$t0, .LBB0_30
.LBB0_36:                               # %pred.store.if829
                                        #   in Loop: Header=BB0_22 Depth=3
	ld.d	$t0, $sp, 248                   # 8-byte Folded Reload
	add.d	$t0, $a5, $t0
	xvstelm.w	$xr11, $t0, 0, 6
	vpickve2gr.h	$t0, $vr12, 7
	andi	$t0, $t0, 1
	beqz	$t0, .LBB0_21
.LBB0_37:                               # %pred.store.if831
                                        #   in Loop: Header=BB0_22 Depth=3
	lu12i.w	$t0, 2
	add.d	$a5, $a5, $t0
	xvstelm.w	$xr11, $a5, 0, 7
	b	.LBB0_21
	.p2align	4, , 16
.LBB0_38:                               #   in Loop: Header=BB0_19 Depth=2
	ori	$a1, $zero, 1017
.LBB0_39:                               # %scalar.ph805.preheader
                                        #   in Loop: Header=BB0_19 Depth=2
	slli.d	$a1, $a1, 2
	ori	$t0, $zero, 4092
	move	$a5, $s7
	move	$s4, $s3
	move	$s2, $a4
	move	$t6, $a3
	move	$t5, $a2
	move	$s1, $t4
	b	.LBB0_42
	.p2align	4, , 16
.LBB0_40:                               # %.sink.split664
                                        #   in Loop: Header=BB0_42 Depth=3
	fstx.s	$ft3, $s1, $a1
.LBB0_41:                               #   in Loop: Header=BB0_42 Depth=3
	addi.d	$t0, $t0, -4
	addi.d	$s1, $s1, 4
	addi.d	$t5, $t5, 4
	addi.d	$t6, $t6, 4
	addi.d	$s2, $s2, 4
	addi.d	$s4, $s4, 4
	addi.d	$a5, $a5, 4
	beq	$a1, $t0, .LBB0_18
.LBB0_42:                               # %scalar.ph805
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a0, $t5, $a1
	fldx.s	$ft3, $t5, $a1
	fldx.s	$ft4, $a0, $t1
	fsub.s	$ft4, $ft4, $ft3
	fstx.s	$ft4, $t6, $a1
	fldx.s	$ft4, $a0, $a7
	fsub.s	$ft4, $ft4, $ft3
	fstx.s	$ft4, $s2, $a1
	fld.s	$ft4, $a0, -4
	fsub.s	$ft4, $ft4, $ft3
	fstx.s	$ft4, $s4, $a1
	fld.s	$ft4, $a0, 4
	fsub.s	$ft4, $ft4, $ft3
	fstx.s	$ft4, $a5, $a1
	fldx.s	$ft5, $t6, $a1
	fldx.s	$ft6, $s2, $a1
	fldx.s	$ft7, $s4, $a1
	fmul.s	$ft8, $ft5, $ft5
	fmul.s	$ft9, $ft6, $ft6
	fadd.s	$ft8, $ft8, $ft9
	fmul.s	$ft9, $ft7, $ft7
	fadd.s	$ft8, $ft8, $ft9
	fmul.s	$ft9, $ft4, $ft4
	fadd.s	$ft8, $ft9, $ft8
	fmul.s	$ft9, $ft3, $ft3
	fdiv.s	$ft8, $ft8, $ft9
	fadd.s	$ft5, $ft5, $ft6
	fadd.s	$ft5, $ft5, $ft7
	fadd.s	$ft4, $ft4, $ft5
	fdiv.s	$ft3, $ft4, $ft3
	fcvt.d.s	$ft4, $ft8
	fmul.d	$ft4, $ft4, $fa1
	fmul.s	$ft5, $ft3, $ft3
	fcvt.d.s	$ft5, $ft5
	fmul.d	$ft5, $ft5, $fa7
	fadd.d	$ft4, $ft4, $ft5
	fcvt.s.d	$ft4, $ft4
	fcvt.d.s	$ft3, $ft3
	fmul.d	$ft3, $ft3, $fa2
	fadd.d	$ft3, $ft3, $fa3
	fcvt.s.d	$ft3, $ft3
	fmul.s	$ft3, $ft3, $ft3
	fdiv.s	$ft3, $ft4, $ft3
	fsub.s	$ft3, $ft3, $fa6
	fdiv.s	$ft3, $ft3, $ft0
	fcvt.d.s	$ft3, $ft3
	fadd.d	$ft3, $ft3, $fa3
	frecip.d	$ft3, $ft3
	fcvt.s.d	$ft4, $ft3
	movgr2fr.w	$ft3, $zero
	fcmp.clt.s	$fcc0, $ft4, $ft3
	fstx.s	$ft4, $s1, $a1
	bcnez	$fcc0, .LBB0_40
# %bb.43:                               #   in Loop: Header=BB0_42 Depth=3
	vldi	$vr11, -1168
	fcmp.cule.s	$fcc0, $ft4, $ft3
	bceqz	$fcc0, .LBB0_40
	b	.LBB0_41
	.p2align	4, , 16
.LBB0_44:                               # %vector.memcheck693
                                        #   in Loop: Header=BB0_1 Depth=1
	lu52i.d	$a0, $zero, 1020
	xvreplgr2vr.d	$xr6, $a0
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	beqz	$a2, .LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_1 Depth=1
	move	$a2, $zero
	ld.d	$a6, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 176                   # 8-byte Folded Reload
	b	.LBB0_49
	.p2align	4, , 16
.LBB0_46:                               # %vector.body721.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	ori	$a4, $t1, 32
	ld.d	$a6, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 176                   # 8-byte Folded Reload
	ori	$t4, $zero, 4068
	.p2align	4, , 16
.LBB0_47:                               # %vector.body721
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $t0, $a4
	xvldx	$xr7, $a2, $t3
	add.d	$a3, $t8, $a4
	xvldx	$xr8, $a3, $t3
	add.d	$a3, $s0, $a4
	xvldx	$xr9, $a3, $t3
	xvldx	$xr10, $a2, $t4
	xvfmul.s	$xr8, $xr7, $xr8
	xvfmul.s	$xr9, $xr7, $xr9
	xvfadd.s	$xr8, $xr8, $xr9
	add.d	$a2, $s1, $a4
	add.d	$a3, $t2, $a4
	xvldx	$xr9, $a3, $t3
	xvldx	$xr11, $a2, $t3
	add.d	$a2, $s2, $a4
	xvldx	$xr12, $a2, $t3
	xvst	$xr9, $sp, 320
	vld	$vr9, $sp, 320
	xvfmul.s	$xr7, $xr7, $xr11
	xvfadd.s	$xr7, $xr8, $xr7
	xvfmul.s	$xr8, $xr10, $xr12
	vreplvei.w	$vr10, $vr9, 0
	fcvt.d.s	$ft2, $ft2
	xvfadd.s	$xr11, $xr7, $xr8
	movfr2gr.d	$a2, $ft2
	vreplvei.w	$vr7, $vr9, 1
	fcvt.d.s	$ft0, $fa7
	xvinsgr2vr.d	$xr7, $a2, 0
	movfr2gr.d	$a2, $ft0
	vreplvei.w	$vr8, $vr9, 2
	fcvt.d.s	$ft0, $ft0
	xvinsgr2vr.d	$xr7, $a2, 1
	movfr2gr.d	$a2, $ft0
	vld	$vr10, $sp, 336
	vreplvei.w	$vr8, $vr9, 3
	fcvt.d.s	$ft0, $ft0
	xvinsgr2vr.d	$xr7, $a2, 2
	movfr2gr.d	$a2, $ft0
	vreplvei.w	$vr8, $vr10, 0
	fcvt.d.s	$ft0, $ft0
	xvinsgr2vr.d	$xr7, $a2, 3
	movfr2gr.d	$a2, $ft0
	vreplvei.w	$vr8, $vr10, 1
	fcvt.d.s	$ft1, $ft0
	xvinsgr2vr.d	$xr8, $a2, 0
	movfr2gr.d	$a2, $ft1
	vreplvei.w	$vr9, $vr10, 2
	fcvt.d.s	$ft1, $ft1
	xvinsgr2vr.d	$xr8, $a2, 1
	movfr2gr.d	$a2, $ft1
	xvst	$xr11, $sp, 352
	vld	$vr9, $sp, 368
	vreplvei.w	$vr10, $vr10, 3
	fcvt.d.s	$ft2, $ft2
	xvinsgr2vr.d	$xr8, $a2, 2
	movfr2gr.d	$a2, $ft2
	vreplvei.w	$vr10, $vr9, 0
	fcvt.d.s	$ft2, $ft2
	xvinsgr2vr.d	$xr8, $a2, 3
	movfr2gr.d	$a2, $ft2
	vreplvei.w	$vr10, $vr9, 1
	fcvt.d.s	$ft2, $ft2
	xvinsgr2vr.d	$xr11, $a2, 0
	movfr2gr.d	$a2, $ft2
	vreplvei.w	$vr10, $vr9, 2
	fcvt.d.s	$ft2, $ft2
	xvinsgr2vr.d	$xr11, $a2, 1
	movfr2gr.d	$a2, $ft2
	vld	$vr10, $sp, 352
	vreplvei.w	$vr9, $vr9, 3
	fcvt.d.s	$ft1, $ft1
	xvinsgr2vr.d	$xr11, $a2, 2
	movfr2gr.d	$a2, $ft1
	vreplvei.w	$vr9, $vr10, 0
	fcvt.d.s	$ft1, $ft1
	xvinsgr2vr.d	$xr11, $a2, 3
	movfr2gr.d	$a2, $ft1
	vreplvei.w	$vr9, $vr10, 1
	fcvt.d.s	$ft1, $ft1
	xvinsgr2vr.d	$xr12, $a2, 0
	movfr2gr.d	$a2, $ft1
	vreplvei.w	$vr9, $vr10, 2
	fcvt.d.s	$ft1, $ft1
	xvinsgr2vr.d	$xr12, $a2, 1
	movfr2gr.d	$a2, $ft1
	vreplvei.w	$vr9, $vr10, 3
	fcvt.d.s	$ft1, $ft1
	xvinsgr2vr.d	$xr12, $a2, 2
	movfr2gr.d	$a2, $ft1
	xvinsgr2vr.d	$xr12, $a2, 3
	xvfmul.d	$xr9, $xr12, $xr6
	xvfmul.d	$xr10, $xr11, $xr6
	xvfadd.d	$xr8, $xr10, $xr8
	xvfadd.d	$xr7, $xr9, $xr7
	xvpickve2gr.d	$a2, $xr7, 0
	movgr2fr.d	$ft1, $a2
	fcvt.s.d	$ft1, $ft1
	xvpickve2gr.d	$a2, $xr7, 1
	movgr2fr.d	$ft2, $a2
	movfr2gr.s	$a2, $ft1
	fcvt.s.d	$ft1, $ft2
	xvinsgr2vr.w	$xr10, $a2, 0
	movfr2gr.s	$a2, $ft1
	xvinsgr2vr.w	$xr10, $a2, 1
	xvpickve2gr.d	$a2, $xr7, 2
	movgr2fr.d	$ft1, $a2
	fcvt.s.d	$ft1, $ft1
	xvpickve2gr.d	$a2, $xr7, 3
	movgr2fr.d	$fa7, $a2
	movfr2gr.s	$a2, $ft1
	fcvt.s.d	$fa7, $fa7
	xvinsgr2vr.w	$xr10, $a2, 2
	movfr2gr.s	$a2, $fa7
	xvinsgr2vr.w	$xr10, $a2, 3
	xvpickve2gr.d	$a2, $xr8, 0
	movgr2fr.d	$fa7, $a2
	fcvt.s.d	$fa7, $fa7
	xvpickve2gr.d	$a2, $xr8, 1
	movgr2fr.d	$ft1, $a2
	movfr2gr.s	$a2, $fa7
	fcvt.s.d	$fa7, $ft1
	xvinsgr2vr.w	$xr10, $a2, 4
	movfr2gr.s	$a2, $fa7
	xvinsgr2vr.w	$xr10, $a2, 5
	xvpickve2gr.d	$a2, $xr8, 2
	movgr2fr.d	$fa7, $a2
	fcvt.s.d	$fa7, $fa7
	xvpickve2gr.d	$a2, $xr8, 3
	movgr2fr.d	$ft0, $a2
	movfr2gr.s	$a2, $fa7
	fcvt.s.d	$fa7, $ft0
	xvinsgr2vr.w	$xr10, $a2, 6
	movfr2gr.s	$a2, $fa7
	xvinsgr2vr.w	$xr10, $a2, 7
	addi.d	$a4, $a4, 32
	xvstx	$xr10, $a3, $t3
	bnez	$a4, .LBB0_47
# %bb.48:                               #   in Loop: Header=BB0_1 Depth=1
	ori	$a2, $zero, 1016
.LBB0_49:                               # %.preheader623.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	slli.d	$t6, $a2, 2
	addi.d	$a2, $a2, -1023
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	move	$a4, $t8
	move	$t5, $s0
	move	$t4, $s1
	move	$t0, $s2
	.p2align	4, , 16
.LBB0_50:                               # %.preheader623
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t7, $a3, $t6
	fld.s	$fa7, $t7, -4
	fldx.s	$ft0, $a4, $t6
	fldx.s	$ft1, $t5, $t6
	fldx.s	$ft2, $a3, $t6
	fmul.s	$ft0, $fa7, $ft0
	fldx.s	$ft3, $t4, $t6
	fmul.s	$ft1, $fa7, $ft1
	fadd.s	$ft0, $ft0, $ft1
	fldx.s	$ft1, $t0, $t6
	fmul.s	$fa7, $fa7, $ft3
	fldx.s	$ft3, $t2, $t6
	fadd.s	$fa7, $ft0, $fa7
	fmul.s	$ft0, $ft2, $ft1
	fadd.s	$fa7, $fa7, $ft0
	fcvt.d.s	$ft0, $ft3
	fcvt.d.s	$fa7, $fa7
	fmul.d	$fa7, $fa7, $fa5
	fadd.d	$fa7, $fa7, $ft0
	fcvt.s.d	$fa7, $fa7
	fstx.s	$fa7, $t2, $t6
	addi.d	$t2, $t2, 4
	addi.d	$t0, $t0, 4
	addi.d	$t4, $t4, 4
	addi.d	$t5, $t5, 4
	addi.d	$a4, $a4, 4
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 4
	bnez	$a2, .LBB0_50
# %bb.51:                               # %.loopexit837
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	fld.s	$fa7, $a2, 0
	ori	$a2, $zero, 4092
	fldx.s	$ft0, $t8, $a2
	fldx.s	$ft1, $s0, $a2
	move	$s7, $zero
	fmul.s	$ft0, $fa7, $ft0
	fldx.s	$ft2, $s1, $a2
	fmul.s	$ft1, $fa7, $ft1
	fadd.s	$ft0, $ft0, $ft1
	fldx.s	$ft1, $s2, $a2
	fmul.s	$ft2, $fa7, $ft2
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	fldx.s	$ft3, $a2, $a3
	fadd.s	$ft0, $ft0, $ft2
	fmul.s	$fa7, $fa7, $ft1
	fadd.s	$fa7, $ft0, $fa7
	fcvt.d.s	$ft0, $ft3
	fcvt.d.s	$fa7, $fa7
	fmul.d	$fa7, $fa7, $fa5
	fadd.d	$fa7, $fa7, $ft0
	fcvt.s.d	$fa7, $fa7
	fstx.s	$fa7, $a2, $a3
	move	$ra, $a6
	move	$s4, $a0
	move	$s3, $a1
	move	$t2, $s6
	move	$t5, $s5
	move	$t6, $a5
	ld.d	$t7, $sp, 168                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_52:                               # %vector.memcheck
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_55 Depth 3
                                        #       Child Loop BB0_58 Depth 3
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	beqz	$a2, .LBB0_54
# %bb.53:                               #   in Loop: Header=BB0_52 Depth=2
	move	$a3, $zero
	b	.LBB0_57
	.p2align	4, , 16
.LBB0_54:                               # %vector.body.preheader
                                        #   in Loop: Header=BB0_52 Depth=2
	ori	$t8, $t1, 32
	.p2align	4, , 16
.LBB0_55:                               # %vector.body
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $t7, $t8
	xvld	$xr7, $a2, -32
	xvldx	$xr8, $a2, $t3
	add.d	$a3, $s4, $t8
	xvldx	$xr9, $a3, $t3
	add.d	$a3, $s3, $t8
	xvldx	$xr10, $a3, $t3
	xvld	$xr11, $a2, -28
	xvfmul.s	$xr9, $xr7, $xr9
	xvfmul.s	$xr8, $xr8, $xr10
	xvfadd.s	$xr8, $xr9, $xr8
	add.d	$a2, $t2, $t8
	add.d	$s0, $t6, $t8
	xvldx	$xr9, $s0, $t3
	xvldx	$xr10, $a2, $t3
	add.d	$a2, $t5, $t8
	xvldx	$xr12, $a2, $t3
	xvst	$xr9, $sp, 256
	vld	$vr9, $sp, 256
	xvfmul.s	$xr7, $xr7, $xr10
	xvfadd.s	$xr7, $xr8, $xr7
	xvfmul.s	$xr8, $xr11, $xr12
	vreplvei.w	$vr10, $vr9, 0
	fcvt.d.s	$ft2, $ft2
	xvfadd.s	$xr11, $xr7, $xr8
	movfr2gr.d	$a2, $ft2
	vreplvei.w	$vr7, $vr9, 1
	fcvt.d.s	$ft0, $fa7
	xvinsgr2vr.d	$xr7, $a2, 0
	movfr2gr.d	$a2, $ft0
	vreplvei.w	$vr8, $vr9, 2
	fcvt.d.s	$ft0, $ft0
	xvinsgr2vr.d	$xr7, $a2, 1
	movfr2gr.d	$a2, $ft0
	vld	$vr10, $sp, 272
	vreplvei.w	$vr8, $vr9, 3
	fcvt.d.s	$ft0, $ft0
	xvinsgr2vr.d	$xr7, $a2, 2
	movfr2gr.d	$a2, $ft0
	vreplvei.w	$vr8, $vr10, 0
	fcvt.d.s	$ft0, $ft0
	xvinsgr2vr.d	$xr7, $a2, 3
	movfr2gr.d	$a2, $ft0
	vreplvei.w	$vr8, $vr10, 1
	fcvt.d.s	$ft1, $ft0
	xvinsgr2vr.d	$xr8, $a2, 0
	movfr2gr.d	$a2, $ft1
	vreplvei.w	$vr9, $vr10, 2
	fcvt.d.s	$ft1, $ft1
	xvinsgr2vr.d	$xr8, $a2, 1
	movfr2gr.d	$a2, $ft1
	xvst	$xr11, $sp, 288
	vld	$vr9, $sp, 304
	vreplvei.w	$vr10, $vr10, 3
	fcvt.d.s	$ft2, $ft2
	xvinsgr2vr.d	$xr8, $a2, 2
	movfr2gr.d	$a2, $ft2
	vreplvei.w	$vr10, $vr9, 0
	fcvt.d.s	$ft2, $ft2
	xvinsgr2vr.d	$xr8, $a2, 3
	movfr2gr.d	$a2, $ft2
	vreplvei.w	$vr10, $vr9, 1
	fcvt.d.s	$ft2, $ft2
	xvinsgr2vr.d	$xr11, $a2, 0
	movfr2gr.d	$a2, $ft2
	vreplvei.w	$vr10, $vr9, 2
	fcvt.d.s	$ft2, $ft2
	xvinsgr2vr.d	$xr11, $a2, 1
	movfr2gr.d	$a2, $ft2
	vld	$vr10, $sp, 288
	vreplvei.w	$vr9, $vr9, 3
	fcvt.d.s	$ft1, $ft1
	xvinsgr2vr.d	$xr11, $a2, 2
	movfr2gr.d	$a2, $ft1
	vreplvei.w	$vr9, $vr10, 0
	fcvt.d.s	$ft1, $ft1
	xvinsgr2vr.d	$xr11, $a2, 3
	movfr2gr.d	$a2, $ft1
	vreplvei.w	$vr9, $vr10, 1
	fcvt.d.s	$ft1, $ft1
	xvinsgr2vr.d	$xr12, $a2, 0
	movfr2gr.d	$a2, $ft1
	vreplvei.w	$vr9, $vr10, 2
	fcvt.d.s	$ft1, $ft1
	xvinsgr2vr.d	$xr12, $a2, 1
	movfr2gr.d	$a2, $ft1
	vreplvei.w	$vr9, $vr10, 3
	fcvt.d.s	$ft1, $ft1
	xvinsgr2vr.d	$xr12, $a2, 2
	movfr2gr.d	$a2, $ft1
	xvinsgr2vr.d	$xr12, $a2, 3
	xvfmul.d	$xr9, $xr12, $xr6
	xvfmul.d	$xr10, $xr11, $xr6
	xvfadd.d	$xr8, $xr10, $xr8
	xvfadd.d	$xr7, $xr9, $xr7
	xvpickve2gr.d	$a2, $xr7, 0
	movgr2fr.d	$ft1, $a2
	fcvt.s.d	$ft1, $ft1
	xvpickve2gr.d	$a2, $xr7, 1
	movgr2fr.d	$ft2, $a2
	movfr2gr.s	$a2, $ft1
	fcvt.s.d	$ft1, $ft2
	xvinsgr2vr.w	$xr10, $a2, 0
	movfr2gr.s	$a2, $ft1
	xvinsgr2vr.w	$xr10, $a2, 1
	xvpickve2gr.d	$a2, $xr7, 2
	movgr2fr.d	$ft1, $a2
	fcvt.s.d	$ft1, $ft1
	xvpickve2gr.d	$a2, $xr7, 3
	movgr2fr.d	$fa7, $a2
	movfr2gr.s	$a2, $ft1
	fcvt.s.d	$fa7, $fa7
	xvinsgr2vr.w	$xr10, $a2, 2
	movfr2gr.s	$a2, $fa7
	xvinsgr2vr.w	$xr10, $a2, 3
	xvpickve2gr.d	$a2, $xr8, 0
	movgr2fr.d	$fa7, $a2
	fcvt.s.d	$fa7, $fa7
	xvpickve2gr.d	$a2, $xr8, 1
	movgr2fr.d	$ft1, $a2
	movfr2gr.s	$a2, $fa7
	fcvt.s.d	$fa7, $ft1
	xvinsgr2vr.w	$xr10, $a2, 4
	movfr2gr.s	$a2, $fa7
	xvinsgr2vr.w	$xr10, $a2, 5
	xvpickve2gr.d	$a2, $xr8, 2
	movgr2fr.d	$fa7, $a2
	fcvt.s.d	$fa7, $fa7
	xvpickve2gr.d	$a2, $xr8, 3
	movgr2fr.d	$ft0, $a2
	movfr2gr.s	$a2, $fa7
	fcvt.s.d	$fa7, $ft0
	xvinsgr2vr.w	$xr10, $a2, 6
	movfr2gr.s	$a2, $fa7
	xvinsgr2vr.w	$xr10, $a2, 7
	addi.d	$t8, $t8, 32
	xvstx	$xr10, $s0, $t3
	bnez	$t8, .LBB0_55
# %bb.56:                               #   in Loop: Header=BB0_52 Depth=2
	ori	$a3, $zero, 1016
.LBB0_57:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_52 Depth=2
	slli.d	$a2, $a3, 2
	addi.d	$a3, $a3, -1023
	move	$a4, $t6
	move	$t0, $t5
	move	$t4, $t2
	move	$t8, $s3
	move	$s0, $s4
	move	$s1, $ra
	.p2align	4, , 16
.LBB0_58:                               # %scalar.ph
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$s2, $s1, $a2
	fldx.s	$fa7, $s2, $a7
	fldx.s	$ft0, $t8, $a2
	fldx.s	$ft1, $s1, $a2
	fldx.s	$ft2, $s0, $a2
	fld.s	$ft3, $s2, 4
	fmul.s	$fa7, $fa7, $ft0
	fldx.s	$ft0, $t4, $a2
	fmul.s	$ft2, $ft1, $ft2
	fadd.s	$fa7, $ft2, $fa7
	fldx.s	$ft2, $t0, $a2
	fmul.s	$ft0, $ft1, $ft0
	fldx.s	$ft1, $a4, $a2
	fadd.s	$fa7, $fa7, $ft0
	fmul.s	$ft0, $ft3, $ft2
	fadd.s	$fa7, $fa7, $ft0
	fcvt.d.s	$ft0, $ft1
	fcvt.d.s	$fa7, $fa7
	fmul.d	$fa7, $fa7, $fa5
	fadd.d	$fa7, $fa7, $ft0
	fcvt.s.d	$fa7, $fa7
	fstx.s	$fa7, $a4, $a2
	addi.d	$s1, $s1, 4
	addi.d	$s0, $s0, 4
	addi.d	$t8, $t8, 4
	addi.d	$t4, $t4, 4
	addi.d	$t0, $t0, 4
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 4
	bnez	$a3, .LBB0_58
# %bb.59:                               # %.loopexit
                                        #   in Loop: Header=BB0_52 Depth=2
	addi.d	$s7, $s7, 1
	add.d	$t7, $t7, $a7
	add.d	$t6, $t6, $a7
	add.d	$t5, $t5, $a7
	add.d	$t2, $t2, $a7
	add.d	$s3, $s3, $a7
	add.d	$s4, $s4, $a7
	add.d	$ra, $ra, $a7
	ori	$a2, $zero, 2047
	bne	$s7, $a2, .LBB0_52
# %bb.60:                               #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
	addi.w	$s2, $s2, 1
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	ori	$t4, $zero, 128
	ori	$a2, $zero, 10
	lu52i.d	$s4, $zero, -1029
	bne	$s2, $a2, .LBB0_1
# %bb.61:
	addi.d	$sp, $fp, -608
	ld.d	$s8, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 584                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 592                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 600                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 608
	ret
.Lfunc_end0:
	.size	srad_kernel, .Lfunc_end0-srad_kernel
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
