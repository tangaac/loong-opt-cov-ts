	.file	"tsc.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function set1d
.LCPI0_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	set1d
	.p2align	5
	.type	set1d,@function
set1d:                                  # @set1d
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 160
	bstrins.d	$sp, $zero, 4, 0
	addi.w	$a2, $zero, -1
	beq	$a1, $a2, .LBB0_4
# %bb.1:
	addi.w	$a2, $zero, -2
	bne	$a1, $a2, .LBB0_6
# %bb.2:                                # %vector.body.preheader
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	addi.d	$a0, $a0, 16
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	.p2align	4, , 16
.LBB0_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 64
	vld	$vr1, $sp, 64
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 96
	vld	$vr2, $sp, 96
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB0_3
	b	.LBB0_8
.LBB0_4:                                # %vector.body41.preheader
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	addi.d	$a0, $a0, 16
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	.p2align	4, , 16
.LBB0_5:                                # %vector.body41
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 32
	vld	$vr2, $sp, 32
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 0
	vld	$vr1, $sp, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB0_5
	b	.LBB0_8
.LBB0_6:                                # %.preheader.preheader
	move	$a2, $zero
	slli.d	$a3, $a1, 3
	lu12i.w	$a4, 7
	ori	$a4, $a4, 3328
	.p2align	4, , 16
.LBB0_7:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	fst.d	$fa0, $a0, 0
	add.d	$a2, $a2, $a1
	add.d	$a0, $a0, $a3
	blt	$a2, $a4, .LBB0_7
.LBB0_8:                                # %.loopexit
	move	$a0, $zero
	addi.d	$sp, $fp, -160
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end0:
	.size	set1d, .Lfunc_end0-set1d
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function set1ds
.LCPI1_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	set1ds
	.p2align	5
	.type	set1ds,@function
set1ds:                                 # @set1ds
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 160
	bstrins.d	$sp, $zero, 4, 0
	addi.w	$a0, $zero, -1
	beq	$a2, $a0, .LBB1_4
# %bb.1:
	addi.w	$a0, $zero, -2
	bne	$a2, $a0, .LBB1_6
# %bb.2:                                # %vector.body.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_0)
	addi.d	$a0, $a1, 16
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	.p2align	4, , 16
.LBB1_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 64
	vld	$vr1, $sp, 64
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 96
	vld	$vr2, $sp, 96
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB1_3
	b	.LBB1_8
.LBB1_4:                                # %vector.body41.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_0)
	addi.d	$a0, $a1, 16
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	.p2align	4, , 16
.LBB1_5:                                # %vector.body41
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 32
	vld	$vr2, $sp, 32
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 0
	vld	$vr1, $sp, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB1_5
	b	.LBB1_8
.LBB1_6:                                # %.preheader.preheader
	move	$a0, $zero
	slli.d	$a3, $a2, 3
	lu12i.w	$a4, 7
	ori	$a4, $a4, 3328
	.p2align	4, , 16
.LBB1_7:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	fst.d	$fa0, $a1, 0
	add.d	$a0, $a0, $a2
	add.d	$a1, $a1, $a3
	blt	$a0, $a4, .LBB1_7
.LBB1_8:                                # %.loopexit
	move	$a0, $zero
	addi.d	$sp, $fp, -160
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end1:
	.size	set1ds, .Lfunc_end1-set1ds
                                        # -- End function
	.globl	set2d                           # -- Begin function set2d
	.p2align	5
	.type	set2d,@function
set2d:                                  # @set2d
# %bb.0:
	addi.w	$a2, $zero, -1
	beq	$a1, $a2, .LBB2_4
# %bb.1:
	addi.w	$a2, $zero, -2
	bne	$a1, $a2, .LBB2_6
# %bb.2:                                # %.preheader37.preheader
	addi.d	$a0, $a0, 1024
	ori	$a1, $zero, 1
	addi.w	$a2, $zero, -3
	lu32i.d	$a2, 0
	ori	$a3, $zero, 257
	.p2align	4, , 16
.LBB2_3:                                # %.preheader37
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a4, $a1, $a1
	and	$a4, $a4, $a2
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bne	$a1, $a3, .LBB2_3
	b	.LBB2_10
.LBB2_4:                                # %.preheader34.preheader
	addi.d	$a0, $a0, 1024
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
	.p2align	4, , 16
.LBB2_5:                                # %.preheader34
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB2_5
	b	.LBB2_10
.LBB2_6:                                # %.preheader.preheader
	move	$a2, $zero
	slli.d	$a3, $a1, 3
	ori	$a4, $zero, 256
	.p2align	4, , 16
.LBB2_7:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_8 Depth 2
	move	$a5, $zero
	move	$a6, $a0
	.p2align	4, , 16
.LBB2_8:                                #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.d	$fa0, $a6, 0
	add.d	$a5, $a5, $a1
	add.d	$a6, $a6, $a3
	blt	$a5, $a4, .LBB2_8
# %bb.9:                                #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bne	$a2, $a4, .LBB2_7
.LBB2_10:                               # %.loopexit
	move	$a0, $zero
	ret
.Lfunc_end2:
	.size	set2d, .Lfunc_end2-set2d
                                        # -- End function
	.globl	sum1d                           # -- Begin function sum1d
	.p2align	5
	.type	sum1d,@function
sum1d:                                  # @sum1d
# %bb.0:
	movgr2fr.d	$fa0, $zero
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	.p2align	4, , 16
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a0, 0
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB3_1
# %bb.2:
	ret
.Lfunc_end3:
	.size	sum1d, .Lfunc_end3-sum1d
                                        # -- End function
	.globl	check                           # -- Begin function check
	.p2align	5
	.type	check,@function
check:                                  # @check
# %bb.0:
	movgr2fr.d	$fa0, $zero
	pcalau12i	$a1, %pc_hi20(global_data)
	addi.d	$a1, $a1, %pc_lo12(global_data)
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
	lu12i.w	$a3, 62
	ori	$a3, $a3, 2080
	lu12i.w	$a4, 125
	ori	$a4, $a4, 64
	lu12i.w	$a5, 187
	ori	$a5, $a5, 2144
	lu12i.w	$a6, 250
	ori	$a6, $a6, 160
	fmov.d	$fa4, $fa0
	fmov.d	$fa3, $fa0
	fmov.d	$fa1, $fa0
	fmov.d	$fa2, $fa0
	.p2align	4, , 16
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	fld.d	$fa5, $a1, 0
	fadd.d	$fa2, $fa2, $fa5
	fldx.d	$fa5, $a1, $a3
	fldx.d	$fa6, $a1, $a4
	fldx.d	$fa7, $a1, $a5
	fldx.d	$ft0, $a1, $a6
	fadd.d	$fa1, $fa1, $fa5
	fadd.d	$fa3, $fa3, $fa6
	fadd.d	$fa4, $fa4, $fa7
	fadd.d	$fa0, $fa0, $ft0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB4_1
# %bb.2:                                # %.preheader86.preheader
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(global_data)
	addi.d	$a4, $a2, %pc_lo12(global_data)
	lu12i.w	$a2, 312
	ori	$a2, $a2, 2272
	add.d	$a2, $a4, $a2
	lu12i.w	$a3, 440
	ori	$a3, $a3, 2368
	add.d	$a3, $a4, $a3
	lu12i.w	$a5, 568
	ori	$a5, $a5, 2464
	add.d	$a4, $a4, $a5
	movgr2fr.d	$fa5, $zero
	addi.w	$a5, $zero, -2048
	ori	$a6, $zero, 2048
	ori	$a7, $zero, 256
	fmov.d	$fa7, $fa5
	fmov.d	$fa6, $fa5
	.p2align	4, , 16
.LBB4_3:                                # %.preheader86
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_4 Depth 2
	move	$t0, $a5
	.p2align	4, , 16
.LBB4_4:                                #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t1, $a2, $t0
	fldx.d	$ft0, $t1, $a6
	add.d	$t1, $a3, $t0
	fldx.d	$ft1, $t1, $a6
	add.d	$t1, $a4, $t0
	fldx.d	$ft2, $t1, $a6
	fadd.d	$fa6, $fa6, $ft0
	fadd.d	$fa7, $fa7, $ft1
	addi.d	$t0, $t0, 8
	fadd.d	$fa5, $fa5, $ft2
	bnez	$t0, .LBB4_4
# %bb.5:                                #   in Loop: Header=BB4_3 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$a2, $a2, $a6
	add.d	$a3, $a3, $a6
	add.d	$a4, $a4, $a6
	bne	$a1, $a7, .LBB4_3
# %bb.6:                                # %.preheader.preheader
	movgr2fr.d	$ft0, $zero
	pcalau12i	$a1, %pc_hi20(array)
	addi.d	$a1, $a1, %pc_lo12(array)
	lu12i.w	$a2, 16
	.p2align	4, , 16
.LBB4_7:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$ft1, $a1, 0
	fadd.d	$ft0, $ft0, $ft1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB4_7
# %bb.8:
	addi.d	$a1, $a0, 12
	ori	$a2, $zero, 135
	bltu	$a2, $a1, .LBB4_12
# %bb.9:
	slli.d	$a0, $a1, 2
	pcalau12i	$a1, %pc_hi20(.LJTI4_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI4_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB4_10:
	pcalau12i	$a0, %pc_hi20(temp)
	fld.d	$fa0, $a0, %pc_lo12(temp)
.LBB4_11:
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fadd.d	$fa0, $fa1, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_12:
	ori	$a1, $zero, 1122
	beq	$a0, $a1, .LBB4_30
# %bb.13:
	lu12i.w	$a1, 27
	ori	$a1, $a1, 1641
	bne	$a0, $a1, .LBB4_15
# %bb.14:
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fadd.d	$fa0, $fa6, $fa7
	fadd.d	$fa0, $fa0, $fa5
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_15:
	ret
.LBB4_16:
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	movfr2gr.d	$a2, $fa5
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_17:
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fadd.d	$fa0, $fa2, $fa3
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_18:
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fadd.d	$fa0, $fa2, $fa1
	fadd.d	$fa0, $fa0, $fa3
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_19:
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	movfr2gr.d	$a2, $ft0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_20:
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fadd.d	$fa0, $fa2, $fa1
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_21:
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	pcalau12i	$a0, %pc_hi20(temp)
	ld.d	$a2, $a0, %pc_lo12(temp)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_22:
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	movfr2gr.d	$a2, $fa1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_23:
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	movfr2gr.d	$a2, $fa2
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_24:
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	movfr2gr.d	$a2, $fa3
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_25:
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_26:
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	movfr2gr.d	$a2, $fa6
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_27:
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	movfr2gr.d	$a2, $fa4
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_28:
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	movfr2gr.d	$a2, $fa7
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_29:
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fadd.d	$fa0, $fa2, $fa6
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_30:
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fadd.d	$fa0, $fa6, $fa7
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end4:
	.size	check, .Lfunc_end4-check
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI4_0:
	.word	.LBB4_10-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_21-.LJTI4_0
	.word	.LBB4_19-.LJTI4_0
	.word	.LBB4_23-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_24-.LJTI4_0
	.word	.LBB4_27-.LJTI4_0
	.word	.LBB4_25-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_26-.LJTI4_0
	.word	.LBB4_20-.LJTI4_0
	.word	.LBB4_17-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_28-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_11-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_16-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_29-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_18-.LJTI4_0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function init
.LCPI5_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	init
	.p2align	5
	.type	init,@function
init:                                   # @init
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	addi.d	$fp, $sp, 2032
	lu12i.w	$a1, 2
	ori	$a1, $a1, 656
	sub.d	$sp, $sp, $a1
	bstrins.d	$sp, $zero, 4, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_148
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_150
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_160
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_164
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_168
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_172
# %bb.6:
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_180
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_182
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_186
# %bb.9:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_190
# %bb.10:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_194
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_198
# %bb.12:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_206
# %bb.13:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_214
# %bb.14:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_220
# %bb.15:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_226
# %bb.16:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_234
# %bb.17:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_240
# %bb.18:
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_244
# %bb.19:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_250
# %bb.20:
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_254
# %bb.21:
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_258
# %bb.22:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_266
# %bb.23:
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_278
# %bb.24:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_284
# %bb.25:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_288
# %bb.26:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_292
# %bb.27:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_296
# %bb.28:
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_300
# %bb.29:
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_304
# %bb.30:
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_310
# %bb.31:
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_318
# %bb.32:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a1, $a0, %pc_lo12(.L.str.33)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_326
# %bb.33:
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_334
# %bb.34:
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_338
# %bb.35:
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a1, $a0, %pc_lo12(.L.str.36)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_342
# %bb.36:
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_347
# %bb.37:
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a1, $a0, %pc_lo12(.L.str.38)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_353
# %bb.38:
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a1, $a0, %pc_lo12(.L.str.39)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_359
# %bb.39:
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a1, $a0, %pc_lo12(.L.str.40)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_369
# %bb.40:
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a1, $a0, %pc_lo12(.L.str.41)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_377
# %bb.41:
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a1, $a0, %pc_lo12(.L.str.42)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_385
# %bb.42:
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a1, $a0, %pc_lo12(.L.str.43)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_393
# %bb.43:
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a1, $a0, %pc_lo12(.L.str.44)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_399
# %bb.44:
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a1, $a0, %pc_lo12(.L.str.45)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_407
# %bb.45:
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a1, $a0, %pc_lo12(.L.str.46)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_411
# %bb.46:
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a1, $a0, %pc_lo12(.L.str.47)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_419
# %bb.47:
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a1, $a0, %pc_lo12(.L.str.48)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_421
# %bb.48:
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a1, $a0, %pc_lo12(.L.str.49)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_423
# %bb.49:
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_429
# %bb.50:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a1, $a0, %pc_lo12(.L.str.51)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_435
# %bb.51:
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a1, $a0, %pc_lo12(.L.str.52)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_443
# %bb.52:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a1, $a0, %pc_lo12(.L.str.53)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_451
# %bb.53:
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a1, $a0, %pc_lo12(.L.str.54)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_457
# %bb.54:
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a1, $a0, %pc_lo12(.L.str.55)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_467
# %bb.55:
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a1, $a0, %pc_lo12(.L.str.56)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_477
# %bb.56:
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a1, $a0, %pc_lo12(.L.str.57)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_485
# %bb.57:
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a1, $a0, %pc_lo12(.L.str.58)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_491
# %bb.58:
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a1, $a0, %pc_lo12(.L.str.59)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_499
# %bb.59:
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a1, $a0, %pc_lo12(.L.str.60)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_511
# %bb.60:
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a1, $a0, %pc_lo12(.L.str.61)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_523
# %bb.61:
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a1, $a0, %pc_lo12(.L.str.62)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_535
# %bb.62:
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a1, $a0, %pc_lo12(.L.str.63)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_545
# %bb.63:
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a1, $a0, %pc_lo12(.L.str.64)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_551
# %bb.64:
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a1, $a0, %pc_lo12(.L.str.65)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_557
# %bb.65:
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a1, $a0, %pc_lo12(.L.str.66)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_561
# %bb.66:
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a1, $a0, %pc_lo12(.L.str.67)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_563
# %bb.67:
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a1, $a0, %pc_lo12(.L.str.68)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_565
# %bb.68:
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a1, $a0, %pc_lo12(.L.str.69)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_567
# %bb.69:
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a1, $a0, %pc_lo12(.L.str.70)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_574
# %bb.70:
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a1, $a0, %pc_lo12(.L.str.71)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_574
# %bb.71:
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a1, $a0, %pc_lo12(.L.str.72)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_575
# %bb.72:
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a1, $a0, %pc_lo12(.L.str.73)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_577
# %bb.73:
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_579
# %bb.74:
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_583
# %bb.75:
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a1, $a0, %pc_lo12(.L.str.76)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_585
# %bb.76:
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a1, $a0, %pc_lo12(.L.str.77)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_587
# %bb.77:
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a1, $a0, %pc_lo12(.L.str.78)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_573
# %bb.78:
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a1, $a0, %pc_lo12(.L.str.79)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_589
# %bb.79:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a1, $a0, %pc_lo12(.L.str.80)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_591
# %bb.80:
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a1, $a0, %pc_lo12(.L.str.81)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_597
# %bb.81:
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a1, $a0, %pc_lo12(.L.str.82)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_600
# %bb.82:
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a1, $a0, %pc_lo12(.L.str.83)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_602
# %bb.83:
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a1, $a0, %pc_lo12(.L.str.84)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_604
# %bb.84:
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a1, $a0, %pc_lo12(.L.str.85)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_607
# %bb.85:
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a1, $a0, %pc_lo12(.L.str.86)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_610
# %bb.86:
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a1, $a0, %pc_lo12(.L.str.87)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_613
# %bb.87:
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a1, $a0, %pc_lo12(.L.str.88)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_623
# %bb.88:
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a1, $a0, %pc_lo12(.L.str.89)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_626
# %bb.89:
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a1, $a0, %pc_lo12(.L.str.90)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_630
# %bb.90:
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a1, $a0, %pc_lo12(.L.str.91)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_632
# %bb.91:
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a1, $a0, %pc_lo12(.L.str.92)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_636
# %bb.92:
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a1, $a0, %pc_lo12(.L.str.93)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_640
# %bb.93:
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$a1, $a0, %pc_lo12(.L.str.94)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_644
# %bb.94:
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a1, $a0, %pc_lo12(.L.str.95)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_648
# %bb.95:
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$a1, $a0, %pc_lo12(.L.str.96)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_653
# %bb.96:
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$a1, $a0, %pc_lo12(.L.str.97)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_659
# %bb.97:
	pcalau12i	$a0, %pc_hi20(.L.str.98)
	addi.d	$a1, $a0, %pc_lo12(.L.str.98)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_665
# %bb.98:
	pcalau12i	$a0, %pc_hi20(.L.str.99)
	addi.d	$a1, $a0, %pc_lo12(.L.str.99)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_673
# %bb.99:
	pcalau12i	$a0, %pc_hi20(.L.str.100)
	addi.d	$a1, $a0, %pc_lo12(.L.str.100)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_679
# %bb.100:
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a1, $a0, %pc_lo12(.L.str.101)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_686
# %bb.101:
	pcalau12i	$a0, %pc_hi20(.L.str.102)
	addi.d	$a1, $a0, %pc_lo12(.L.str.102)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_690
# %bb.102:
	pcalau12i	$a0, %pc_hi20(.L.str.103)
	addi.d	$a1, $a0, %pc_lo12(.L.str.103)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_694
# %bb.103:
	pcalau12i	$a0, %pc_hi20(.L.str.104)
	addi.d	$a1, $a0, %pc_lo12(.L.str.104)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_696
# %bb.104:
	pcalau12i	$a0, %pc_hi20(.L.str.105)
	addi.d	$a1, $a0, %pc_lo12(.L.str.105)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_700
# %bb.105:
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$a1, $a0, %pc_lo12(.L.str.106)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_704
# %bb.106:
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$a1, $a0, %pc_lo12(.L.str.107)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_708
# %bb.107:
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a1, $a0, %pc_lo12(.L.str.108)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_718
# %bb.108:
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$a1, $a0, %pc_lo12(.L.str.109)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_728
# %bb.109:
	pcalau12i	$a0, %pc_hi20(.L.str.110)
	addi.d	$a1, $a0, %pc_lo12(.L.str.110)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_734
# %bb.110:
	pcalau12i	$a0, %pc_hi20(.L.str.111)
	addi.d	$a1, $a0, %pc_lo12(.L.str.111)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_738
# %bb.111:
	pcalau12i	$a0, %pc_hi20(.L.str.112)
	addi.d	$a1, $a0, %pc_lo12(.L.str.112)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_742
# %bb.112:
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a1, $a0, %pc_lo12(.L.str.113)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_744
# %bb.113:
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$a1, $a0, %pc_lo12(.L.str.114)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_754
# %bb.114:
	pcalau12i	$a0, %pc_hi20(.L.str.115)
	addi.d	$a1, $a0, %pc_lo12(.L.str.115)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_762
# %bb.115:
	pcalau12i	$a0, %pc_hi20(.L.str.116)
	addi.d	$a1, $a0, %pc_lo12(.L.str.116)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_768
# %bb.116:
	pcalau12i	$a0, %pc_hi20(.L.str.117)
	addi.d	$a1, $a0, %pc_lo12(.L.str.117)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_774
# %bb.117:
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a1, $a0, %pc_lo12(.L.str.118)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_778
# %bb.118:
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a1, $a0, %pc_lo12(.L.str.119)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_782
# %bb.119:
	pcalau12i	$a0, %pc_hi20(.L.str.120)
	addi.d	$a1, $a0, %pc_lo12(.L.str.120)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_788
# %bb.120:
	pcalau12i	$a0, %pc_hi20(.L.str.121)
	addi.d	$a1, $a0, %pc_lo12(.L.str.121)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_792
# %bb.121:
	pcalau12i	$a0, %pc_hi20(.L.str.122)
	addi.d	$a1, $a0, %pc_lo12(.L.str.122)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_796
# %bb.122:
	pcalau12i	$a0, %pc_hi20(.L.str.123)
	addi.d	$a1, $a0, %pc_lo12(.L.str.123)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_802
# %bb.123:
	pcalau12i	$a0, %pc_hi20(.L.str.124)
	addi.d	$a1, $a0, %pc_lo12(.L.str.124)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_808
# %bb.124:
	pcalau12i	$a0, %pc_hi20(.L.str.125)
	addi.d	$a1, $a0, %pc_lo12(.L.str.125)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_810
# %bb.125:
	pcalau12i	$a0, %pc_hi20(.L.str.126)
	addi.d	$a1, $a0, %pc_lo12(.L.str.126)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_812
# %bb.126:
	pcalau12i	$a0, %pc_hi20(.L.str.127)
	addi.d	$a1, $a0, %pc_lo12(.L.str.127)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_814
# %bb.127:
	pcalau12i	$a0, %pc_hi20(.L.str.128)
	addi.d	$a1, $a0, %pc_lo12(.L.str.128)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_816
# %bb.128:
	pcalau12i	$a0, %pc_hi20(.L.str.129)
	addi.d	$a1, $a0, %pc_lo12(.L.str.129)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_818
# %bb.129:
	pcalau12i	$a0, %pc_hi20(.L.str.130)
	addi.d	$a1, $a0, %pc_lo12(.L.str.130)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_822
# %bb.130:
	pcalau12i	$a0, %pc_hi20(.L.str.131)
	addi.d	$a1, $a0, %pc_lo12(.L.str.131)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_828
# %bb.131:
	pcalau12i	$a0, %pc_hi20(.L.str.132)
	addi.d	$a1, $a0, %pc_lo12(.L.str.132)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_832
# %bb.132:
	pcalau12i	$a0, %pc_hi20(.L.str.133)
	addi.d	$a1, $a0, %pc_lo12(.L.str.133)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_838
# %bb.133:
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a1, $a0, %pc_lo12(.L.str.134)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_844
# %bb.134:
	pcalau12i	$a0, %pc_hi20(.L.str.135)
	addi.d	$a1, $a0, %pc_lo12(.L.str.135)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_846
# %bb.135:
	pcalau12i	$a0, %pc_hi20(.L.str.136)
	addi.d	$a1, $a0, %pc_lo12(.L.str.136)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_573
# %bb.136:                              # %vector.body.preheader
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a3, $a0, 16
	lu12i.w	$a2, 7
	ori	$a4, $a2, 3328
.LBB5_137:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 2
	ori	$a5, $a5, 2592
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 2
	ori	$a5, $a5, 2592
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 2
	ori	$a5, $a5, 2560
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 2
	ori	$a5, $a5, 2560
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_137
# %bb.138:                              # %vector.body3599.preheader
	lu12i.w	$a3, 62
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a2, 3328
.LBB5_139:                              # %vector.body3599
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 2
	ori	$a5, $a5, 2528
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 2
	ori	$a5, $a5, 2528
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 2
	ori	$a5, $a5, 2496
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 2
	ori	$a5, $a5, 2496
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_139
# %bb.140:                              # %vector.body3609.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 80
	add.d	$a3, $a0, $a3
	ori	$a4, $a2, 3328
.LBB5_141:                              # %vector.body3609
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 2
	ori	$a5, $a5, 2464
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 2
	ori	$a5, $a5, 2464
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 2
	ori	$a5, $a5, 2432
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 2
	ori	$a5, $a5, 2432
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_141
# %bb.142:                              # %vector.body3619.preheader
	lu12i.w	$a3, 187
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2160
	add.d	$a3, $a0, $a3
	ori	$a4, $a2, 3328
.LBB5_143:                              # %vector.body3619
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 2
	ori	$a5, $a5, 2400
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 2
	ori	$a5, $a5, 2400
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 2
	ori	$a5, $a5, 2368
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 2
	ori	$a5, $a5, 2368
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_143
# %bb.144:                              # %vector.body3629.preheader
	lu12i.w	$a3, 250
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a1, $a3, 176
	add.d	$a1, $a0, $a1
	ori	$a2, $a2, 3328
.LBB5_145:                              # %vector.body3629
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a3, 2
	ori	$a3, $a3, 2336
	add.d	$a3, $sp, $a3
	xvst	$xr2, $a3, 0
	lu12i.w	$a3, 2
	ori	$a3, $a3, 2336
	add.d	$a3, $sp, $a3
	vld	$vr2, $a3, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a3, 2
	ori	$a3, $a3, 2304
	add.d	$a3, $sp, $a3
	xvst	$xr1, $a3, 0
	lu12i.w	$a3, 2
	ori	$a3, $a3, 2304
	add.d	$a3, $sp, $a3
	vld	$vr1, $a3, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB5_145
# %bb.146:                              # %.preheader34.i2938.preheader
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
.LBB5_147:                              # %.preheader34.i2938
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB5_147
	b	.LBB5_573
.LBB5_148:                              # %vector.body6577.preheader
	pcalau12i	$a0, %pc_hi20(X+8)
	addi.d	$a0, $a0, %pc_lo12(X+8)
	pcalau12i	$a1, %pc_hi20(V+8)
	addi.d	$a1, $a1, %pc_lo12(V+8)
	pcalau12i	$a2, %pc_hi20(U+8)
	addi.d	$a2, $a2, %pc_lo12(U+8)
	pcalau12i	$a3, %pc_hi20(Z+8)
	addi.d	$a3, $a3, %pc_lo12(Z+8)
	pcalau12i	$a4, %pc_hi20(Y+8)
	addi.d	$a4, $a4, %pc_lo12(Y+8)
	ori	$a5, $zero, 6
	lu12i.w	$a6, 7
	ori	$a6, $a6, 3328
	.p2align	4, , 16
.LBB5_149:                              # %vector.body6577
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a7, $a5, 31, 0
	addi.d	$t0, $a5, -5
	bstrpick.d	$t0, $t0, 31, 0
	addi.d	$t1, $a5, -4
	bstrpick.d	$t1, $t1, 31, 0
	movgr2fr.d	$fa0, $t0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $t1
	ffint.d.l	$fa1, $fa1
	fst.d	$fa0, $a0, -8
	fst.d	$fa1, $a0, 0
	addi.d	$t0, $a5, -3
	bstrpick.d	$t0, $t0, 31, 0
	movgr2fr.d	$fa0, $t0
	ffint.d.l	$fa0, $fa0
	fst.d	$fa1, $a4, -8
	fst.d	$fa0, $a4, 0
	addi.d	$t0, $a5, -2
	bstrpick.d	$t0, $t0, 31, 0
	movgr2fr.d	$fa1, $t0
	ffint.d.l	$fa1, $fa1
	fst.d	$fa0, $a3, -8
	fst.d	$fa1, $a3, 0
	addi.d	$t0, $a5, -1
	bstrpick.d	$t0, $t0, 31, 0
	movgr2fr.d	$fa0, $t0
	ffint.d.l	$fa0, $fa0
	fst.d	$fa1, $a2, -8
	fst.d	$fa0, $a2, 0
	movgr2fr.d	$fa1, $a7
	ffint.d.l	$fa1, $fa1
	fst.d	$fa0, $a1, -8
	fst.d	$fa1, $a1, 0
	addi.w	$a5, $a5, 2
	addi.d	$a0, $a0, 16
	addi.d	$a6, $a6, -2
	addi.d	$a1, $a1, 16
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bnez	$a6, .LBB5_149
	b	.LBB5_573
.LBB5_150:                              # %vector.body6530.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
	.p2align	4, , 16
.LBB5_151:                              # %vector.body6530
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_151
# %bb.152:                              # %vector.body6537.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
	.p2align	4, , 16
.LBB5_153:                              # %vector.body6537
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 256
	vld	$vr1, $sp, 256
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 288
	vld	$vr2, $sp, 288
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a3, -16
	vst	$vr2, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_153
# %bb.154:                              # %vector.body6547.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 80
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
	.p2align	4, , 16
.LBB5_155:                              # %vector.body6547
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 192
	vld	$vr1, $sp, 192
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 224
	vld	$vr2, $sp, 224
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a3, -16
	vst	$vr2, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_155
# %bb.156:                              # %vector.body6557.preheader
	lu12i.w	$a3, 187
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2160
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
	.p2align	4, , 16
.LBB5_157:                              # %vector.body6557
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 128
	vld	$vr1, $sp, 128
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 160
	vld	$vr2, $sp, 160
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a3, -16
	vst	$vr2, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_157
# %bb.158:                              # %vector.body6567.preheader
	lu12i.w	$a3, 250
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 176
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
	.p2align	4, , 16
.LBB5_159:                              # %vector.body6567
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 64
	vld	$vr1, $sp, 64
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 96
	vld	$vr2, $sp, 96
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_159
	b	.LBB5_573
.LBB5_160:                              # %vector.body6513.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
	.p2align	4, , 16
.LBB5_161:                              # %vector.body6513
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_161
# %bb.162:                              # %vector.body6520.preheader
	lu12i.w	$a2, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2096
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
	.p2align	4, , 16
.LBB5_163:                              # %vector.body6520
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 320
	vld	$vr1, $sp, 320
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 352
	vld	$vr2, $sp, 352
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_163
	b	.LBB5_573
.LBB5_164:                              # %vector.body6496.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
	.p2align	4, , 16
.LBB5_165:                              # %vector.body6496
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_165
# %bb.166:                              # %vector.body6503.preheader
	lu12i.w	$a2, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2096
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
	.p2align	4, , 16
.LBB5_167:                              # %vector.body6503
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 384
	vld	$vr1, $sp, 384
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 416
	vld	$vr2, $sp, 416
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_167
	b	.LBB5_573
.LBB5_168:                              # %.preheader34.i.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 1
	ori	$a3, $zero, 256
	.p2align	4, , 16
.LBB5_169:                              # %.preheader34.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB5_169
# %bb.170:                              # %.preheader37.i.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	addi.w	$a2, $zero, -3
	lu32i.d	$a2, 0
	ori	$a3, $zero, 257
	.p2align	4, , 16
.LBB5_171:                              # %.preheader37.i
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a4, $a1, $a1
	and	$a4, $a4, $a2
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bne	$a1, $a3, .LBB5_171
	b	.LBB5_573
.LBB5_172:                              # %vector.body6450.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 32
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
	.p2align	4, , 16
.LBB5_173:                              # %vector.body6450
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_173
# %bb.174:                              # %vector.ph6456.preheader
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu12i.w	$a3, -390306
	ori	$a3, $a3, 3469
	lu32i.d	$a3, 50935
	lu52i.d	$a3, $a3, 1003
	xvreplgr2vr.d	$xr0, $a3
	.p2align	4, , 16
.LBB5_175:                              # %vector.ph6456
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_175
# %bb.176:                              # %vector.ph6463.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	.p2align	4, , 16
.LBB5_177:                              # %vector.ph6463
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_177
# %bb.178:                              # %vector.ph6470.preheader
	lu12i.w	$a1, 568
	ori	$a1, $a1, 3488
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 256
	.p2align	4, , 16
.LBB5_179:                              # %vector.ph6470
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB5_179
	b	.LBB5_573
.LBB5_180:                              # %vector.body6443.preheader
	pcalau12i	$a0, %pc_hi20(global_data+32)
	addi.d	$a0, $a0, %pc_lo12(global_data+32)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	lu52i.d	$a2, $zero, 1023
	xvreplgr2vr.d	$xr0, $a2
	.p2align	4, , 16
.LBB5_181:                              # %vector.body6443
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_181
	b	.LBB5_573
.LBB5_182:                              # %vector.body6429.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 32
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
	.p2align	4, , 16
.LBB5_183:                              # %vector.body6429
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_183
# %bb.184:                              # %vector.ph6435.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 256
	lu12i.w	$a2, -390306
	ori	$a2, $a2, 3469
	lu32i.d	$a2, 50935
	lu52i.d	$a2, $a2, 1003
	xvreplgr2vr.d	$xr0, $a2
	.p2align	4, , 16
.LBB5_185:                              # %vector.ph6435
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB5_185
	b	.LBB5_573
.LBB5_186:                              # %vector.ph6412.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
	.p2align	4, , 16
.LBB5_187:                              # %vector.ph6412
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_187
# %bb.188:                              # %.preheader37.i1151.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	addi.w	$a2, $zero, -3
	lu32i.d	$a2, 0
	ori	$a3, $zero, 257
	.p2align	4, , 16
.LBB5_189:                              # %.preheader37.i1151
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a4, $a1, $a1
	and	$a4, $a4, $a2
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bne	$a1, $a3, .LBB5_189
	b	.LBB5_573
.LBB5_190:                              # %vector.body6396.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_191:                              # %vector.body6396
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_191
# %bb.192:                              # %vector.body6403.preheader
	lu12i.w	$a2, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2096
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_193:                              # %vector.body6403
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 448
	vld	$vr1, $sp, 448
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 480
	vld	$vr2, $sp, 480
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_193
	b	.LBB5_573
.LBB5_194:                              # %vector.body6379.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_195:                              # %vector.body6379
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_195
# %bb.196:                              # %vector.body6386.preheader
	lu12i.w	$a2, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2096
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_197:                              # %vector.body6386
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 512
	vld	$vr1, $sp, 512
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 544
	vld	$vr2, $sp, 544
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_197
	b	.LBB5_573
.LBB5_198:                              # %.preheader.i1177.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 62
	ori	$a2, $s1, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2112
	add.d	$a1, $s0, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_199:                              # %vector.body6345
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_199
# %bb.200:                              # %vector.body6352.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 96
	add.d	$a1, $s0, $a1
	ori	$a2, $a0, 3328
.LBB5_201:                              # %vector.body6352
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_201
# %bb.202:                              # %vector.body6359.preheader
	lu12i.w	$a2, 187
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2160
	add.d	$a2, $s0, $a2
	ori	$a3, $a0, 3328
.LBB5_203:                              # %vector.body6359
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 672
	vld	$vr2, $sp, 672
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 640
	vld	$vr1, $sp, 640
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_203
# %bb.204:                              # %vector.body6369.preheader
	lu12i.w	$a2, 250
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a1, $a2, 176
	add.d	$a1, $s0, $a1
	ori	$a0, $a0, 3328
.LBB5_205:                              # %vector.body6369
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 608
	vld	$vr2, $sp, 608
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 576
	vld	$vr1, $sp, 576
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_205
	b	.LBB5_573
.LBB5_206:                              # %.preheader.i1195.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 62
	ori	$a2, $s1, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2112
	add.d	$a1, $s0, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_207:                              # %vector.body6311
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_207
# %bb.208:                              # %vector.body6318.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 96
	add.d	$a1, $s0, $a1
	ori	$a2, $a0, 3328
.LBB5_209:                              # %vector.body6318
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_209
# %bb.210:                              # %vector.body6325.preheader
	lu12i.w	$a2, 187
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2160
	add.d	$a2, $s0, $a2
	ori	$a3, $a0, 3328
.LBB5_211:                              # %vector.body6325
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 800
	vld	$vr2, $sp, 800
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 768
	vld	$vr1, $sp, 768
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_211
# %bb.212:                              # %vector.body6335.preheader
	lu12i.w	$a2, 250
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a1, $a2, 176
	add.d	$a1, $s0, $a1
	ori	$a0, $a0, 3328
.LBB5_213:                              # %vector.body6335
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 736
	vld	$vr2, $sp, 736
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 704
	vld	$vr1, $sp, 704
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_213
	b	.LBB5_573
.LBB5_214:                              # %.preheader.i1217.preheader
	pcalau12i	$a0, %pc_hi20(array)
	addi.d	$a0, $a0, %pc_lo12(array)
	lu12i.w	$a1, 62
	ori	$a2, $a1, 2048
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_215:                              # %vector.ph6289
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_215
# %bb.216:                              # %vector.ph6296.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu52i.d	$a3, $zero, 1022
	xvreplgr2vr.d	$xr0, $a3
.LBB5_217:                              # %vector.ph6296
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_217
# %bb.218:                              # %vector.ph6303.preheader
	lu12i.w	$a1, 568
	ori	$a1, $a1, 3488
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 256
	lu52i.d	$a2, $zero, 1024
	xvreplgr2vr.d	$xr0, $a2
.LBB5_219:                              # %vector.ph6303
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB5_219
	b	.LBB5_573
.LBB5_220:                              # %vector.ph6263.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_221:                              # %vector.ph6263
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_221
# %bb.222:                              # %vector.body6271.preheader
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	pcalau12i	$a1, %pc_hi20(array+16)
	addi.d	$a1, $a1, %pc_lo12(array+16)
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
.LBB5_223:                              # %vector.body6271
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 864
	vld	$vr2, $sp, 864
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 832
	vld	$vr1, $sp, 832
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB5_223
# %bb.224:                              # %.preheader34.i1253.preheader
	lu12i.w	$a1, 568
	ori	$a1, $a1, 3488
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
.LBB5_225:                              # %.preheader34.i1253
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB5_225
	b	.LBB5_573
.LBB5_226:                              # %.preheader.i1261.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 62
	ori	$a2, $s1, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2112
	add.d	$a1, $s0, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_227:                              # %vector.body6227
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_227
# %bb.228:                              # %vector.body6234.preheader
	lu12i.w	$a2, 125
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 80
	add.d	$a2, $s0, $a2
	ori	$a3, $a0, 3328
.LBB5_229:                              # %vector.body6234
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 1056
	vld	$vr2, $sp, 1056
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 1024
	vld	$vr1, $sp, 1024
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_229
# %bb.230:                              # %vector.body6244.preheader
	lu12i.w	$a2, 187
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2160
	add.d	$a2, $s0, $a2
	ori	$a3, $a0, 3328
.LBB5_231:                              # %vector.body6244
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 992
	vld	$vr2, $sp, 992
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 960
	vld	$vr1, $sp, 960
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_231
# %bb.232:                              # %vector.body6254.preheader
	lu12i.w	$a2, 250
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a1, $a2, 176
	add.d	$a1, $s0, $a1
	ori	$a0, $a0, 3328
.LBB5_233:                              # %vector.body6254
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 928
	vld	$vr2, $sp, 928
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 896
	vld	$vr1, $sp, 896
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_233
	b	.LBB5_573
.LBB5_234:                              # %.preheader.i1284.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 62
	ori	$a2, $s1, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2112
	add.d	$a1, $s0, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1024
	xvreplgr2vr.d	$xr0, $a3
.LBB5_235:                              # %vector.body6206
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_235
# %bb.236:                              # %vector.body6213.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 96
	add.d	$a1, $s0, $a1
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_237:                              # %vector.body6213
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_237
# %bb.238:                              # %vector.body6220.preheader
	lu12i.w	$a1, 187
	ori	$a1, $a1, 2176
	add.d	$a1, $s0, $a1
	ori	$a0, $a0, 3328
.LBB5_239:                              # %vector.body6220
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_239
	b	.LBB5_573
.LBB5_240:                              # %vector.body6189.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_241:                              # %vector.body6189
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_241
# %bb.242:                              # %vector.body6196.preheader
	lu12i.w	$a2, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2096
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_243:                              # %vector.body6196
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 1088
	vld	$vr1, $sp, 1088
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 1120
	vld	$vr2, $sp, 1120
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_243
	b	.LBB5_573
.LBB5_244:                              # %vector.ph6161.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_245:                              # %vector.ph6161
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_245
# %bb.246:                              # %vector.body6169.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2096
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	add.d	$a3, $a0, $a1
	lu12i.w	$a1, 7
	ori	$a4, $a1, 3328
.LBB5_247:                              # %vector.body6169
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 1248
	vld	$vr2, $sp, 1248
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 1216
	vld	$vr1, $sp, 1216
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_247
# %bb.248:                              # %vector.body6179.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 80
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_249:                              # %vector.body6179
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 1184
	vld	$vr2, $sp, 1184
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 1152
	vld	$vr1, $sp, 1152
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_249
	b	.LBB5_573
.LBB5_250:                              # %vector.body6146.preheader
	pcalau12i	$a0, %pc_hi20(array+32)
	addi.d	$a0, $a0, %pc_lo12(array+32)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	lu52i.d	$a2, $zero, 1023
	xvreplgr2vr.d	$xr0, $a2
.LBB5_251:                              # %vector.body6146
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_251
# %bb.252:                              # %.preheader37.i1330.preheader
	pcalau12i	$a0, %pc_hi20(global_data+1805632)
	addi.d	$a0, $a0, %pc_lo12(global_data+1805632)
	ori	$a1, $zero, 1
	addi.w	$a2, $zero, -3
	lu32i.d	$a2, 0
	ori	$a3, $zero, 257
.LBB5_253:                              # %.preheader37.i1330
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a4, $a1, $a1
	and	$a4, $a4, $a2
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bne	$a1, $a3, .LBB5_253
	b	.LBB5_573
.LBB5_254:                              # %vector.body6129.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_255:                              # %vector.body6129
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_255
# %bb.256:                              # %vector.body6136.preheader
	lu12i.w	$a2, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2096
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_257:                              # %vector.body6136
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 1280
	vld	$vr1, $sp, 1280
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 1312
	vld	$vr2, $sp, 1312
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_257
	b	.LBB5_573
.LBB5_258:                              # %vector.body6092.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	addi.d	$a0, $s0, 32
	lu12i.w	$s1, 7
	ori	$a1, $s1, 3328
	lu52i.d	$a2, $zero, 1023
	xvreplgr2vr.d	$xr0, $a2
.LBB5_259:                              # %vector.body6092
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_259
# %bb.260:                              # %.preheader.i1351.preheader
	lu12i.w	$a1, 62
	ori	$a0, $a1, 2080
	add.d	$a0, $s0, $a0
	ori	$a2, $a1, 2048
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 125
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	ori	$a1, $a1, 80
	add.d	$a1, $s0, $a1
	ori	$a2, $s1, 3328
.LBB5_261:                              # %vector.body6099
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 1504
	vld	$vr2, $sp, 1504
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 1472
	vld	$vr1, $sp, 1472
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB5_261
# %bb.262:                              # %vector.body6109.preheader
	lu12i.w	$a1, 187
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	ori	$a1, $a1, 2160
	add.d	$a1, $s0, $a1
	ori	$a2, $s1, 3328
.LBB5_263:                              # %vector.body6109
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 1440
	vld	$vr2, $sp, 1440
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 1408
	vld	$vr1, $sp, 1408
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB5_263
# %bb.264:                              # %vector.body6119.preheader
	lu12i.w	$a1, 250
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	ori	$a0, $a1, 176
	add.d	$a0, $s0, $a0
	ori	$a1, $s1, 3328
.LBB5_265:                              # %vector.body6119
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 1376
	vld	$vr2, $sp, 1376
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 1344
	vld	$vr1, $sp, 1344
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_265
	b	.LBB5_573
.LBB5_266:                              # %vector.body6043.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a3, $a0, 32
	lu12i.w	$a1, 7
	ori	$a4, $a1, 3328
	lu52i.d	$a2, $zero, 1023
	xvreplgr2vr.d	$xr0, $a2
.LBB5_267:                              # %vector.body6043
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB5_267
# %bb.268:                              # %vector.body6050.preheader
	lu12i.w	$a3, 62
	ori	$a4, $a3, 2096
	add.d	$a5, $a0, $a4
	lu12i.w	$a4, 3
	ori	$a6, $a4, 3712
.LBB5_269:                              # %vector.body6050
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a2, $a5, -16
	st.d	$a2, $a5, 0
	addi.d	$a6, $a6, -2
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB5_269
# %bb.270:                              # %vector.body6057.preheader
	ori	$a2, $a3, 2104
	add.d	$a2, $a0, $a2
	ori	$a3, $a4, 3712
	lu52i.d	$a4, $zero, -1025
.LBB5_271:                              # %vector.body6057
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a4, $a2, -16
	st.d	$a4, $a2, 0
	addi.d	$a3, $a3, -2
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_271
# %bb.272:                              # %vector.body6065.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 96
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_273:                              # %vector.body6065
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_273
# %bb.274:                              # %vector.body6072.preheader
	lu12i.w	$a3, 187
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2160
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_275:                              # %vector.body6072
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 1632
	vld	$vr2, $sp, 1632
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 1600
	vld	$vr1, $sp, 1600
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_275
# %bb.276:                              # %vector.body6082.preheader
	lu12i.w	$a3, 250
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 176
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_277:                              # %vector.body6082
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 1568
	vld	$vr2, $sp, 1568
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 1536
	vld	$vr1, $sp, 1536
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_277
	b	.LBB5_573
.LBB5_278:                              # %vector.body6016.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_279:                              # %vector.body6016
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_279
# %bb.280:                              # %vector.body6023.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_281:                              # %vector.body6023
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 1760
	vld	$vr2, $sp, 1760
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 1728
	vld	$vr1, $sp, 1728
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_281
# %bb.282:                              # %vector.body6033.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 80
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_283:                              # %vector.body6033
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 1696
	vld	$vr2, $sp, 1696
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 1664
	vld	$vr1, $sp, 1664
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_283
	b	.LBB5_573
.LBB5_284:                              # %vector.body5999.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_285:                              # %vector.body5999
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_285
# %bb.286:                              # %vector.body6006.preheader
	lu12i.w	$a2, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2096
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_287:                              # %vector.body6006
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 1792
	vld	$vr1, $sp, 1792
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 1824
	vld	$vr2, $sp, 1824
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_287
	b	.LBB5_573
.LBB5_288:                              # %vector.body5982.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_289:                              # %vector.body5982
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_289
# %bb.290:                              # %vector.body5989.preheader
	lu12i.w	$a2, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2096
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_291:                              # %vector.body5989
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 1856
	vld	$vr1, $sp, 1856
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 1888
	vld	$vr2, $sp, 1888
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_291
	b	.LBB5_573
.LBB5_292:                              # %vector.body5965.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_293:                              # %vector.body5965
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_293
# %bb.294:                              # %vector.body5972.preheader
	lu12i.w	$a2, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2096
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_295:                              # %vector.body5972
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 1920
	vld	$vr1, $sp, 1920
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 1952
	vld	$vr2, $sp, 1952
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_295
	b	.LBB5_573
.LBB5_296:                              # %vector.body5948.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_297:                              # %vector.body5948
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_297
# %bb.298:                              # %vector.body5955.preheader
	lu12i.w	$a2, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2096
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_299:                              # %vector.body5955
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr1, $sp, 1984
	vld	$vr1, $sp, 1984
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvst	$xr2, $sp, 2016
	vld	$vr2, $sp, 2016
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_299
	b	.LBB5_573
.LBB5_300:                              # %vector.body5931.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_301:                              # %vector.body5931
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_301
# %bb.302:                              # %vector.body5938.preheader
	lu12i.w	$a2, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2096
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_303:                              # %vector.body5938
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	ori	$a2, $zero, 2048
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	ori	$a2, $zero, 2048
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a2, $zero, 2080
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	ori	$a2, $zero, 2080
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_303
	b	.LBB5_573
.LBB5_304:                              # %vector.body5904.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_305:                              # %vector.body5904
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_305
# %bb.306:                              # %vector.body5911.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_307:                              # %vector.body5911
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a5, $zero, 2208
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	ori	$a5, $zero, 2208
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	ori	$a5, $zero, 2176
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	ori	$a5, $zero, 2176
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_307
# %bb.308:                              # %vector.body5921.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 80
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_309:                              # %vector.body5921
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a2, $zero, 2144
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	ori	$a2, $zero, 2144
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	ori	$a2, $zero, 2112
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	ori	$a2, $zero, 2112
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_309
	b	.LBB5_573
.LBB5_310:                              # %.preheader.i1469.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 62
	ori	$a2, $s1, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2112
	add.d	$a1, $s0, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_311:                              # %vector.body5867
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_311
# %bb.312:                              # %vector.body5874.preheader
	lu12i.w	$a2, 125
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 80
	add.d	$a2, $s0, $a2
	ori	$a3, $a0, 3328
.LBB5_313:                              # %vector.body5874
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a4, $zero, 2400
	add.d	$a4, $sp, $a4
	xvst	$xr2, $a4, 0
	ori	$a4, $zero, 2400
	add.d	$a4, $sp, $a4
	vld	$vr2, $a4, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	ori	$a4, $zero, 2368
	add.d	$a4, $sp, $a4
	xvst	$xr1, $a4, 0
	ori	$a4, $zero, 2368
	add.d	$a4, $sp, $a4
	vld	$vr1, $a4, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_313
# %bb.314:                              # %vector.body5884.preheader
	lu12i.w	$a2, 187
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2160
	add.d	$a2, $s0, $a2
	ori	$a3, $a0, 3328
.LBB5_315:                              # %vector.body5884
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a4, $zero, 2336
	add.d	$a4, $sp, $a4
	xvst	$xr2, $a4, 0
	ori	$a4, $zero, 2336
	add.d	$a4, $sp, $a4
	vld	$vr2, $a4, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	ori	$a4, $zero, 2304
	add.d	$a4, $sp, $a4
	xvst	$xr1, $a4, 0
	ori	$a4, $zero, 2304
	add.d	$a4, $sp, $a4
	vld	$vr1, $a4, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_315
# %bb.316:                              # %vector.body5894.preheader
	lu12i.w	$a2, 250
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a1, $a2, 176
	add.d	$a1, $s0, $a1
	ori	$a0, $a0, 3328
.LBB5_317:                              # %vector.body5894
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a2, $zero, 2272
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	ori	$a2, $zero, 2272
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	ori	$a2, $zero, 2240
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	ori	$a2, $zero, 2240
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_317
	b	.LBB5_573
.LBB5_318:                              # %vector.body5833.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a1, %pc_hi20(global_data)
	addi.d	$a1, $a1, %pc_lo12(global_data)
	addi.d	$a3, $a1, 16
	lu12i.w	$a2, 7
	ori	$a4, $a2, 3328
.LBB5_319:                              # %vector.body5833
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a5, $zero, 2528
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	ori	$a5, $zero, 2528
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	ori	$a5, $zero, 2496
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	ori	$a5, $zero, 2496
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_319
# %bb.320:                              # %vector.body5843.preheader
	lu12i.w	$a3, 62
	ori	$a3, $a3, 2112
	add.d	$a3, $a1, $a3
	ori	$a4, $a2, 3328
	lu52i.d	$a5, $zero, 1023
	xvreplgr2vr.d	$xr0, $a5
.LBB5_321:                              # %vector.body5843
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB5_321
# %bb.322:                              # %vector.body5850.preheader
	lu12i.w	$a3, 125
	ori	$a3, $a3, 96
	add.d	$a3, $a1, $a3
	ori	$a4, $a2, 3328
.LBB5_323:                              # %vector.body5850
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB5_323
# %bb.324:                              # %vector.body5857.preheader
	lu12i.w	$a3, 187
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	ori	$a0, $a3, 2160
	add.d	$a0, $a1, $a0
	ori	$a1, $a2, 3328
.LBB5_325:                              # %vector.body5857
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a2, $zero, 2464
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	ori	$a2, $zero, 2464
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	ori	$a2, $zero, 2432
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	ori	$a2, $zero, 2432
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_325
	b	.LBB5_573
.LBB5_326:                              # %vector.body5796.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_327:                              # %vector.body5796
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_327
# %bb.328:                              # %vector.body5803.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_329:                              # %vector.body5803
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a5, $zero, 2720
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	ori	$a5, $zero, 2720
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	ori	$a5, $zero, 2688
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	ori	$a5, $zero, 2688
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_329
# %bb.330:                              # %vector.body5813.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 80
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_331:                              # %vector.body5813
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a5, $zero, 2656
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	ori	$a5, $zero, 2656
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	ori	$a5, $zero, 2624
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	ori	$a5, $zero, 2624
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_331
# %bb.332:                              # %vector.body5823.preheader
	lu12i.w	$a3, 187
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 2160
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_333:                              # %vector.body5823
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a2, $zero, 2592
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	ori	$a2, $zero, 2592
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	ori	$a2, $zero, 2560
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	ori	$a2, $zero, 2560
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_333
	b	.LBB5_573
.LBB5_334:                              # %.preheader.i1529.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 62
	ori	$a2, $s1, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2112
	add.d	$a1, $s0, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_335:                              # %vector.body5782
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_335
# %bb.336:                              # %vector.body5789.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 96
	add.d	$a1, $s0, $a1
	ori	$a0, $a0, 3328
.LBB5_337:                              # %vector.body5789
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_337
	b	.LBB5_573
.LBB5_338:                              # %vector.ph5765.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_339:                              # %vector.ph5765
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_339
# %bb.340:                              # %.preheader37.i1548.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	addi.w	$a2, $zero, -3
	lu32i.d	$a2, 0
	ori	$a3, $zero, 257
.LBB5_341:                              # %.preheader37.i1548
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a4, $a1, $a1
	and	$a4, $a4, $a2
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bne	$a1, $a3, .LBB5_341
	b	.LBB5_573
.LBB5_342:                              # %vector.ph5758.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_343:                              # %vector.ph5758
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_343
# %bb.344:                              # %.preheader.i1563.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 2368
	add.d	$a0, $a0, $a1
.LBB5_345:                              # %set1d.exit1086
	lu12i.w	$a2, 128
.LBB5_346:                              # %set1d.exit1086
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB5_573
.LBB5_347:                              # %.preheader34.i1570.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 1
	ori	$a3, $zero, 256
.LBB5_348:                              # %.preheader34.i1570
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB5_348
# %bb.349:                              # %.preheader34.i1578.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 1
	ori	$a3, $zero, 256
.LBB5_350:                              # %.preheader34.i1578
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB5_350
# %bb.351:                              # %.preheader34.i1586.preheader
	lu12i.w	$a1, 568
	ori	$a1, $a1, 3488
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
.LBB5_352:                              # %.preheader34.i1586
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB5_352
	b	.LBB5_573
.LBB5_353:                              # %vector.ph5706.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_354:                              # %vector.ph5706
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_354
# %bb.355:                              # %.preheader34.i1601.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 1
	ori	$a3, $zero, 256
.LBB5_356:                              # %.preheader34.i1601
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB5_356
# %bb.357:                              # %.preheader34.i1609.preheader
	lu12i.w	$a1, 568
	ori	$a1, $a1, 3488
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
.LBB5_358:                              # %.preheader34.i1609
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB5_358
	b	.LBB5_573
.LBB5_359:                              # %vector.body5664.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_360:                              # %vector.body5664
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_360
# %bb.361:                              # %vector.body5671.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr1, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_362:                              # %vector.body5671
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr2, $vr1, 8
	vaddi.wu	$vr3, $vr2, 1
	vaddi.wu	$vr2, $vr2, 3
	vext2xv.du.wu	$xr3, $xr3
	xvffint.d.lu	$xr3, $xr3
	ori	$a5, $zero, 2848
	add.d	$a5, $sp, $a5
	xvst	$xr3, $a5, 0
	ori	$a5, $zero, 2848
	add.d	$a5, $sp, $a5
	vld	$vr3, $a5, 0
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a5, $zero, 2816
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	ori	$a5, $zero, 2816
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vfrecip.d	$vr3, $vr3
	vfrecip.d	$vr2, $vr2
	vst	$vr3, $a3, -16
	vst	$vr2, $a3, 0
	vaddi.du	$vr1, $vr1, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_362
# %bb.363:                              # %vector.body5681.preheader
	lu12i.w	$a3, 125
	vld	$vr1, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 80
	add.d	$a2, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_364:                              # %vector.body5681
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr2, $vr1, 8
	vaddi.wu	$vr3, $vr2, 1
	vaddi.wu	$vr2, $vr2, 3
	vext2xv.du.wu	$xr3, $xr3
	xvffint.d.lu	$xr3, $xr3
	ori	$a3, $zero, 2784
	add.d	$a3, $sp, $a3
	xvst	$xr3, $a3, 0
	ori	$a3, $zero, 2784
	add.d	$a3, $sp, $a3
	vld	$vr3, $a3, 0
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a3, $zero, 2752
	add.d	$a3, $sp, $a3
	xvst	$xr2, $a3, 0
	ori	$a3, $zero, 2752
	add.d	$a3, $sp, $a3
	vld	$vr2, $a3, 0
	vfrecip.d	$vr3, $vr3
	vfrecip.d	$vr2, $vr2
	vst	$vr3, $a2, -16
	vst	$vr2, $a2, 0
	vaddi.du	$vr1, $vr1, 4
	addi.d	$a1, $a1, -4
	addi.d	$a2, $a2, 32
	bnez	$a1, .LBB5_364
# %bb.365:                              # %vector.ph5690.preheader
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
.LBB5_366:                              # %vector.ph5690
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_366
# %bb.367:                              # %.preheader37.i1638.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	addi.w	$a2, $zero, -3
	lu32i.d	$a2, 0
	ori	$a3, $zero, 257
.LBB5_368:                              # %.preheader37.i1638
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a4, $a1, $a1
	and	$a4, $a4, $a2
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bne	$a1, $a3, .LBB5_368
	b	.LBB5_573
.LBB5_369:                              # %vector.body5636.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_370:                              # %vector.body5636
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_370
# %bb.371:                              # %vector.body5643.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2112
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_372:                              # %vector.body5643
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_372
# %bb.373:                              # %vector.body5650.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 96
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_374:                              # %vector.body5650
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_374
# %bb.375:                              # %vector.body5657.preheader
	lu12i.w	$a2, 187
	ori	$a2, $a2, 2176
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_376:                              # %vector.body5657
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_376
	b	.LBB5_573
.LBB5_377:                              # %vector.body5608.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, -390306
	ori	$a4, $a4, 3469
	lu32i.d	$a4, 50935
	lu52i.d	$a4, $a4, 1003
	xvreplgr2vr.d	$xr0, $a4
.LBB5_378:                              # %vector.body5608
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_378
# %bb.379:                              # %vector.body5615.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2112
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_380:                              # %vector.body5615
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_380
# %bb.381:                              # %vector.body5622.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 96
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_382:                              # %vector.body5622
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_382
# %bb.383:                              # %vector.body5629.preheader
	lu12i.w	$a2, 187
	ori	$a2, $a2, 2176
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_384:                              # %vector.body5629
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_384
	b	.LBB5_573
.LBB5_385:                              # %.preheader.i1678.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 62
	ori	$a2, $s1, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2112
	add.d	$a1, $s0, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_386:                              # %vector.body5571
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_386
# %bb.387:                              # %vector.body5578.preheader
	lu12i.w	$a2, 125
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 80
	add.d	$a2, $s0, $a2
	ori	$a3, $a0, 3328
.LBB5_388:                              # %vector.body5578
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a4, $zero, 3040
	add.d	$a4, $sp, $a4
	xvst	$xr2, $a4, 0
	ori	$a4, $zero, 3040
	add.d	$a4, $sp, $a4
	vld	$vr2, $a4, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	ori	$a4, $zero, 3008
	add.d	$a4, $sp, $a4
	xvst	$xr1, $a4, 0
	ori	$a4, $zero, 3008
	add.d	$a4, $sp, $a4
	vld	$vr1, $a4, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_388
# %bb.389:                              # %vector.body5588.preheader
	lu12i.w	$a2, 187
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2160
	add.d	$a2, $s0, $a2
	ori	$a3, $a0, 3328
.LBB5_390:                              # %vector.body5588
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a4, $zero, 2976
	add.d	$a4, $sp, $a4
	xvst	$xr2, $a4, 0
	ori	$a4, $zero, 2976
	add.d	$a4, $sp, $a4
	vld	$vr2, $a4, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	ori	$a4, $zero, 2944
	add.d	$a4, $sp, $a4
	xvst	$xr1, $a4, 0
	ori	$a4, $zero, 2944
	add.d	$a4, $sp, $a4
	vld	$vr1, $a4, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_390
# %bb.391:                              # %vector.body5598.preheader
	lu12i.w	$a2, 250
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a1, $a2, 176
	add.d	$a1, $s0, $a1
	ori	$a0, $a0, 3328
.LBB5_392:                              # %vector.body5598
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a2, $zero, 2912
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	ori	$a2, $zero, 2912
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	ori	$a2, $zero, 2880
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	ori	$a2, $zero, 2880
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_392
	b	.LBB5_573
.LBB5_393:                              # %.preheader.i1701.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 62
	ori	$a2, $s1, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2112
	add.d	$a1, $s0, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_394:                              # %vector.body5550
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_394
# %bb.395:                              # %vector.body5557.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 96
	add.d	$a1, $s0, $a1
	ori	$a2, $a0, 3328
	lu12i.w	$a3, -390306
	ori	$a3, $a3, 3469
	lu32i.d	$a3, 50935
	lu52i.d	$a3, $a3, 1003
	xvreplgr2vr.d	$xr0, $a3
.LBB5_396:                              # %vector.body5557
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_396
# %bb.397:                              # %vector.body5564.preheader
	lu12i.w	$a1, 187
	ori	$a1, $a1, 2176
	add.d	$a1, $s0, $a1
	ori	$a0, $a0, 3328
.LBB5_398:                              # %vector.body5564
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_398
	b	.LBB5_573
.LBB5_399:                              # %.preheader.i1717.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 62
	ori	$a2, $s1, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2112
	add.d	$a1, $s0, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_400:                              # %vector.body5513
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_400
# %bb.401:                              # %vector.body5520.preheader
	lu12i.w	$a2, 125
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 80
	add.d	$a2, $s0, $a2
	ori	$a3, $a0, 3328
.LBB5_402:                              # %vector.body5520
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a4, $zero, 3232
	add.d	$a4, $sp, $a4
	xvst	$xr2, $a4, 0
	ori	$a4, $zero, 3232
	add.d	$a4, $sp, $a4
	vld	$vr2, $a4, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	ori	$a4, $zero, 3200
	add.d	$a4, $sp, $a4
	xvst	$xr1, $a4, 0
	ori	$a4, $zero, 3200
	add.d	$a4, $sp, $a4
	vld	$vr1, $a4, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_402
# %bb.403:                              # %vector.body5530.preheader
	lu12i.w	$a2, 187
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2160
	add.d	$a2, $s0, $a2
	ori	$a3, $a0, 3328
.LBB5_404:                              # %vector.body5530
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a4, $zero, 3168
	add.d	$a4, $sp, $a4
	xvst	$xr2, $a4, 0
	ori	$a4, $zero, 3168
	add.d	$a4, $sp, $a4
	vld	$vr2, $a4, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	ori	$a4, $zero, 3136
	add.d	$a4, $sp, $a4
	xvst	$xr1, $a4, 0
	ori	$a4, $zero, 3136
	add.d	$a4, $sp, $a4
	vld	$vr1, $a4, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_404
# %bb.405:                              # %vector.body5540.preheader
	lu12i.w	$a2, 250
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a1, $a2, 176
	add.d	$a1, $s0, $a1
	ori	$a0, $a0, 3328
.LBB5_406:                              # %vector.body5540
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a2, $zero, 3104
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	ori	$a2, $zero, 3104
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	ori	$a2, $zero, 3072
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	ori	$a2, $zero, 3072
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_406
	b	.LBB5_573
.LBB5_407:                              # %.preheader.i1740.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 62
	ori	$a2, $s1, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2112
	add.d	$a1, $s0, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_408:                              # %vector.body5499
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_408
# %bb.409:                              # %vector.body5506.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 96
	add.d	$a1, $s0, $a1
	ori	$a0, $a0, 3328
.LBB5_410:                              # %vector.body5506
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_410
	b	.LBB5_573
.LBB5_411:                              # %vector.body5468.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_412:                              # %vector.body5468
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_412
# %bb.413:                              # %vector.body5475.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2112
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
	lu12i.w	$a4, -390306
	ori	$a4, $a4, 3469
	lu32i.d	$a4, 50935
	lu52i.d	$a4, $a4, 1003
	xvreplgr2vr.d	$xr1, $a4
.LBB5_414:                              # %vector.body5475
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr1, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_414
# %bb.415:                              # %vector.body5482.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 96
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_416:                              # %vector.body5482
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_416
# %bb.417:                              # %vector.body5489.preheader
	lu12i.w	$a2, 187
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2160
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_418:                              # %vector.body5489
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a2, $zero, 3296
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	ori	$a2, $zero, 3296
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	ori	$a2, $zero, 3264
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	ori	$a2, $zero, 3264
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_418
	b	.LBB5_573
.LBB5_419:                              # %.preheader.i1769.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 62
	ori	$a2, $s1, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2112
	add.d	$a0, $s0, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	lu52i.d	$a2, $zero, 1023
	xvreplgr2vr.d	$xr0, $a2
.LBB5_420:                              # %vector.body5461
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_420
	b	.LBB5_573
.LBB5_421:                              # %.preheader.i1777.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 62
	ori	$a2, $s1, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2112
	add.d	$a0, $s0, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	lu52i.d	$a2, $zero, 1023
	xvreplgr2vr.d	$xr0, $a2
.LBB5_422:                              # %vector.body5454
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_422
	b	.LBB5_573
.LBB5_423:                              # %vector.body5433.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 32
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_424:                              # %vector.body5433
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_424
# %bb.425:                              # %vector.ph5439.preheader
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu52i.d	$a3, $zero, 1024
	xvreplgr2vr.d	$xr1, $a3
.LBB5_426:                              # %vector.ph5439
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr1, $a1, -1024
	xvst	$xr1, $a1, -992
	xvst	$xr1, $a1, -960
	xvst	$xr1, $a1, -928
	xvst	$xr1, $a1, -896
	xvst	$xr1, $a1, -864
	xvst	$xr1, $a1, -832
	xvst	$xr1, $a1, -800
	xvst	$xr1, $a1, -768
	xvst	$xr1, $a1, -736
	xvst	$xr1, $a1, -704
	xvst	$xr1, $a1, -672
	xvst	$xr1, $a1, -640
	xvst	$xr1, $a1, -608
	xvst	$xr1, $a1, -576
	xvst	$xr1, $a1, -544
	xvst	$xr1, $a1, -512
	xvst	$xr1, $a1, -480
	xvst	$xr1, $a1, -448
	xvst	$xr1, $a1, -416
	xvst	$xr1, $a1, -384
	xvst	$xr1, $a1, -352
	xvst	$xr1, $a1, -320
	xvst	$xr1, $a1, -288
	xvst	$xr1, $a1, -256
	xvst	$xr1, $a1, -224
	xvst	$xr1, $a1, -192
	xvst	$xr1, $a1, -160
	xvst	$xr1, $a1, -128
	xvst	$xr1, $a1, -96
	xvst	$xr1, $a1, -64
	xvst	$xr1, $a1, -32
	xvst	$xr1, $a1, 0
	xvst	$xr1, $a1, 32
	xvst	$xr1, $a1, 64
	xvst	$xr1, $a1, 96
	xvst	$xr1, $a1, 128
	xvst	$xr1, $a1, 160
	xvst	$xr1, $a1, 192
	xvst	$xr1, $a1, 224
	xvst	$xr1, $a1, 256
	xvst	$xr1, $a1, 288
	xvst	$xr1, $a1, 320
	xvst	$xr1, $a1, 352
	xvst	$xr1, $a1, 384
	xvst	$xr1, $a1, 416
	xvst	$xr1, $a1, 448
	xvst	$xr1, $a1, 480
	xvst	$xr1, $a1, 512
	xvst	$xr1, $a1, 544
	xvst	$xr1, $a1, 576
	xvst	$xr1, $a1, 608
	xvst	$xr1, $a1, 640
	xvst	$xr1, $a1, 672
	xvst	$xr1, $a1, 704
	xvst	$xr1, $a1, 736
	xvst	$xr1, $a1, 768
	xvst	$xr1, $a1, 800
	xvst	$xr1, $a1, 832
	xvst	$xr1, $a1, 864
	xvst	$xr1, $a1, 896
	xvst	$xr1, $a1, 928
	xvst	$xr1, $a1, 960
	xvst	$xr1, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_426
# %bb.427:                              # %vector.ph5446.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 256
.LBB5_428:                              # %vector.ph5446
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB5_428
	b	.LBB5_573
.LBB5_429:                              # %vector.body5412.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 32
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_430:                              # %vector.body5412
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_430
# %bb.431:                              # %vector.ph5418.preheader
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu52i.d	$a3, $zero, 1024
	xvreplgr2vr.d	$xr1, $a3
.LBB5_432:                              # %vector.ph5418
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr1, $a1, -1024
	xvst	$xr1, $a1, -992
	xvst	$xr1, $a1, -960
	xvst	$xr1, $a1, -928
	xvst	$xr1, $a1, -896
	xvst	$xr1, $a1, -864
	xvst	$xr1, $a1, -832
	xvst	$xr1, $a1, -800
	xvst	$xr1, $a1, -768
	xvst	$xr1, $a1, -736
	xvst	$xr1, $a1, -704
	xvst	$xr1, $a1, -672
	xvst	$xr1, $a1, -640
	xvst	$xr1, $a1, -608
	xvst	$xr1, $a1, -576
	xvst	$xr1, $a1, -544
	xvst	$xr1, $a1, -512
	xvst	$xr1, $a1, -480
	xvst	$xr1, $a1, -448
	xvst	$xr1, $a1, -416
	xvst	$xr1, $a1, -384
	xvst	$xr1, $a1, -352
	xvst	$xr1, $a1, -320
	xvst	$xr1, $a1, -288
	xvst	$xr1, $a1, -256
	xvst	$xr1, $a1, -224
	xvst	$xr1, $a1, -192
	xvst	$xr1, $a1, -160
	xvst	$xr1, $a1, -128
	xvst	$xr1, $a1, -96
	xvst	$xr1, $a1, -64
	xvst	$xr1, $a1, -32
	xvst	$xr1, $a1, 0
	xvst	$xr1, $a1, 32
	xvst	$xr1, $a1, 64
	xvst	$xr1, $a1, 96
	xvst	$xr1, $a1, 128
	xvst	$xr1, $a1, 160
	xvst	$xr1, $a1, 192
	xvst	$xr1, $a1, 224
	xvst	$xr1, $a1, 256
	xvst	$xr1, $a1, 288
	xvst	$xr1, $a1, 320
	xvst	$xr1, $a1, 352
	xvst	$xr1, $a1, 384
	xvst	$xr1, $a1, 416
	xvst	$xr1, $a1, 448
	xvst	$xr1, $a1, 480
	xvst	$xr1, $a1, 512
	xvst	$xr1, $a1, 544
	xvst	$xr1, $a1, 576
	xvst	$xr1, $a1, 608
	xvst	$xr1, $a1, 640
	xvst	$xr1, $a1, 672
	xvst	$xr1, $a1, 704
	xvst	$xr1, $a1, 736
	xvst	$xr1, $a1, 768
	xvst	$xr1, $a1, 800
	xvst	$xr1, $a1, 832
	xvst	$xr1, $a1, 864
	xvst	$xr1, $a1, 896
	xvst	$xr1, $a1, 928
	xvst	$xr1, $a1, 960
	xvst	$xr1, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_432
# %bb.433:                              # %vector.ph5425.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 256
.LBB5_434:                              # %vector.ph5425
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB5_434
	b	.LBB5_573
.LBB5_435:                              # %vector.body5373.preheader
	pcalau12i	$s2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $s2, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s1, $a0, %pc_lo12(global_data)
	addi.d	$a0, $s1, 16
	lu12i.w	$s3, 7
	ori	$a1, $s3, 3328
.LBB5_436:                              # %vector.body5373
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a2, $zero, 3488
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	ori	$a2, $zero, 3488
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	ori	$a2, $zero, 3456
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	ori	$a2, $zero, 3456
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_436
# %bb.437:                              # %.preheader.i1826.preheader
	lu12i.w	$a1, 62
	ori	$a0, $a1, 2080
	add.d	$a0, $s1, $a0
	ori	$s0, $a1, 2048
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 125
	vld	$vr0, $s2, %pc_lo12(.LCPI5_0)
	ori	$a0, $a0, 80
	add.d	$a0, $s1, $a0
	ori	$a1, $s3, 3328
.LBB5_438:                              # %vector.body5383
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a2, $zero, 3424
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	ori	$a2, $zero, 3424
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	ori	$a2, $zero, 3392
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	ori	$a2, $zero, 3392
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_438
# %bb.439:                              # %vector.body5393.preheader
	lu12i.w	$a0, 187
	vld	$vr0, $s2, %pc_lo12(.LCPI5_0)
	ori	$a0, $a0, 2160
	add.d	$a0, $s1, $a0
	ori	$a1, $s3, 3328
.LBB5_440:                              # %vector.body5393
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a2, $zero, 3360
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	ori	$a2, $zero, 3360
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	ori	$a2, $zero, 3328
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	ori	$a2, $zero, 3328
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_440
# %bb.441:                              # %.preheader.i1840.preheader
	lu12i.w	$a0, 250
	ori	$a0, $a0, 160
	add.d	$a0, $s1, $a0
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 312
	ori	$a0, $a0, 3296
	add.d	$a0, $s1, $a0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
.LBB5_442:                              # %.preheader34.i1844
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB5_442
	b	.LBB5_573
.LBB5_443:                              # %vector.body5339.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_444:                              # %vector.body5339
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_444
# %bb.445:                              # %vector.body5346.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr1, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_446:                              # %vector.body5346
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr2, $vr1, 1
	vaddi.du	$vr3, $vr1, 3
	vmul.d	$vr2, $vr2, $vr2
	vmul.d	$vr3, $vr3, $vr3
	vshuf4i.w	$vr2, $vr2, 8
	vshuf4i.w	$vr3, $vr3, 8
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a5, $zero, 3584
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	ori	$a5, $zero, 3584
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr3, $xr3
	xvffint.d.lu	$xr3, $xr3
	ori	$a5, $zero, 3616
	add.d	$a5, $sp, $a5
	xvst	$xr3, $a5, 0
	ori	$a5, $zero, 3616
	add.d	$a5, $sp, $a5
	vld	$vr3, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr3, $vr3
	vst	$vr2, $a3, -16
	vst	$vr3, $a3, 0
	vaddi.du	$vr1, $vr1, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_446
# %bb.447:                              # %vector.body5356.preheader
	lu12i.w	$a3, 125
	vld	$vr1, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 80
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_448:                              # %vector.body5356
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr2, $vr1, 1
	vaddi.du	$vr3, $vr1, 3
	vmul.d	$vr2, $vr2, $vr2
	vmul.d	$vr3, $vr3, $vr3
	vshuf4i.w	$vr2, $vr2, 8
	vshuf4i.w	$vr3, $vr3, 8
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a4, $zero, 3520
	add.d	$a4, $sp, $a4
	xvst	$xr2, $a4, 0
	ori	$a4, $zero, 3520
	add.d	$a4, $sp, $a4
	vld	$vr2, $a4, 0
	vext2xv.du.wu	$xr3, $xr3
	xvffint.d.lu	$xr3, $xr3
	ori	$a4, $zero, 3552
	add.d	$a4, $sp, $a4
	xvst	$xr3, $a4, 0
	ori	$a4, $zero, 3552
	add.d	$a4, $sp, $a4
	vld	$vr3, $a4, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr3, $vr3
	vst	$vr2, $a2, -16
	vst	$vr3, $a2, 0
	vaddi.du	$vr1, $vr1, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_448
# %bb.449:                              # %vector.body5366.preheader
	lu12i.w	$a2, 187
	ori	$a2, $a2, 2176
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_450:                              # %vector.body5366
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_450
	b	.LBB5_573
.LBB5_451:                              # %vector.body5312.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_452:                              # %vector.body5312
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_452
# %bb.453:                              # %vector.body5319.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_454:                              # %vector.body5319
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a5, $zero, 3744
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	ori	$a5, $zero, 3744
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	ori	$a5, $zero, 3712
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	ori	$a5, $zero, 3712
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_454
# %bb.455:                              # %vector.body5329.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 80
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_456:                              # %vector.body5329
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a2, $zero, 3680
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	ori	$a2, $zero, 3680
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	ori	$a2, $zero, 3648
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	ori	$a2, $zero, 3648
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_456
	b	.LBB5_573
.LBB5_457:                              # %vector.body5271.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_458:                              # %vector.body5271
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_458
# %bb.459:                              # %vector.body5278.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2112
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_460:                              # %vector.body5278
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_460
# %bb.461:                              # %vector.body5285.preheader
	lu12i.w	$a3, 125
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 80
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_462:                              # %vector.body5285
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a5, $zero, 3872
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	ori	$a5, $zero, 3872
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	ori	$a5, $zero, 3840
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	ori	$a5, $zero, 3840
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_462
# %bb.463:                              # %vector.body5295.preheader
	lu12i.w	$a3, 187
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 2160
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_464:                              # %vector.body5295
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a4, $zero, 3808
	add.d	$a4, $sp, $a4
	xvst	$xr2, $a4, 0
	ori	$a4, $zero, 3808
	add.d	$a4, $sp, $a4
	vld	$vr2, $a4, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	ori	$a4, $zero, 3776
	add.d	$a4, $sp, $a4
	xvst	$xr1, $a4, 0
	ori	$a4, $zero, 3776
	add.d	$a4, $sp, $a4
	vld	$vr1, $a4, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_464
# %bb.465:                              # %vector.body5305.preheader
	lu12i.w	$a2, 250
	ori	$a2, $a2, 192
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
	lu52i.d	$a2, $zero, 1024
	xvreplgr2vr.d	$xr0, $a2
.LBB5_466:                              # %vector.body5305
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_466
	b	.LBB5_573
.LBB5_467:                              # %vector.body5233.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_468:                              # %vector.body5233
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_468
# %bb.469:                              # %vector.body5240.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2112
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_470:                              # %vector.body5240
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_470
# %bb.471:                              # %vector.body5247.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 96
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_472:                              # %vector.body5247
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_472
# %bb.473:                              # %vector.body5254.preheader
	lu12i.w	$a2, 187
	ori	$a2, $a2, 2176
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
	lu12i.w	$a4, -390306
	ori	$a4, $a4, 3469
	lu32i.d	$a4, 50935
	lu52i.d	$a4, $a4, 1003
	xvreplgr2vr.d	$xr0, $a4
.LBB5_474:                              # %vector.body5254
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_474
# %bb.475:                              # %vector.body5261.preheader
	lu12i.w	$a2, 250
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 176
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_476:                              # %vector.body5261
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a2, $zero, 3936
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	ori	$a2, $zero, 3936
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	ori	$a2, $zero, 3904
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	ori	$a2, $zero, 3904
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_476
	b	.LBB5_573
.LBB5_477:                              # %.preheader.i1927.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 62
	ori	$a2, $s1, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2112
	add.d	$a1, $s0, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_478:                              # %vector.body5199
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_478
# %bb.479:                              # %vector.body5206.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 96
	add.d	$a1, $s0, $a1
	ori	$a2, $a0, 3328
.LBB5_480:                              # %vector.body5206
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_480
# %bb.481:                              # %vector.body5213.preheader
	lu12i.w	$a2, 187
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2160
	add.d	$a2, $s0, $a2
	ori	$a3, $a0, 3328
.LBB5_482:                              # %vector.body5213
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a4, $zero, 4064
	add.d	$a4, $sp, $a4
	xvst	$xr2, $a4, 0
	ori	$a4, $zero, 4064
	add.d	$a4, $sp, $a4
	vld	$vr2, $a4, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	ori	$a4, $zero, 4032
	add.d	$a4, $sp, $a4
	xvst	$xr1, $a4, 0
	ori	$a4, $zero, 4032
	add.d	$a4, $sp, $a4
	vld	$vr1, $a4, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_482
# %bb.483:                              # %vector.body5223.preheader
	lu12i.w	$a2, 250
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a1, $a2, 176
	add.d	$a1, $s0, $a1
	ori	$a0, $a0, 3328
.LBB5_484:                              # %vector.body5223
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	ori	$a2, $zero, 4000
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	ori	$a2, $zero, 4000
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	ori	$a2, $zero, 3968
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	ori	$a2, $zero, 3968
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_484
	b	.LBB5_573
.LBB5_485:                              # %vector.ph5177.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_486:                              # %vector.ph5177
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_486
# %bb.487:                              # %vector.ph5184.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu12i.w	$a3, -390306
	ori	$a3, $a3, 3469
	lu32i.d	$a3, 50935
	lu52i.d	$a3, $a3, 1003
	xvreplgr2vr.d	$xr0, $a3
.LBB5_488:                              # %vector.ph5184
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_488
# %bb.489:                              # %vector.ph5191.preheader
	lu12i.w	$a1, 568
	ori	$a1, $a1, 3488
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 256
.LBB5_490:                              # %vector.ph5191
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB5_490
	b	.LBB5_573
.LBB5_491:                              # %vector.body5141.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_492:                              # %vector.body5141
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_492
# %bb.493:                              # %vector.body5148.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_494:                              # %vector.body5148
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 1
	ori	$a5, $a5, 160
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 160
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 1
	ori	$a5, $a5, 128
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 128
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_494
# %bb.495:                              # %vector.body5158.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 80
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_496:                              # %vector.body5158
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 1
	ori	$a5, $a5, 96
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 96
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 1
	ori	$a5, $a5, 64
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 64
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_496
# %bb.497:                              # %vector.body5168.preheader
	lu12i.w	$a3, 187
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 2160
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_498:                              # %vector.body5168
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 32
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 32
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 1
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 1
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_498
	b	.LBB5_573
.LBB5_499:                              # %vector.body5090.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_500:                              # %vector.body5090
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_500
# %bb.501:                              # %vector.body5097.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2112
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_502:                              # %vector.body5097
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_502
# %bb.503:                              # %vector.body5104.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3136
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, -1025
	xvreplgr2vr.d	$xr0, $a4
.LBB5_504:                              # %vector.body5104
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_504
# %bb.505:                              # %vector.body5111.preheader
	lu12i.w	$a3, 125
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 80
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_506:                              # %vector.body5111
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 1
	ori	$a5, $a5, 352
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 352
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 1
	ori	$a5, $a5, 320
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 320
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_506
# %bb.507:                              # %vector.body5121.preheader
	lu12i.w	$a3, 187
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2160
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_508:                              # %vector.body5121
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 1
	ori	$a5, $a5, 288
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 288
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 1
	ori	$a5, $a5, 256
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 256
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_508
# %bb.509:                              # %vector.body5131.preheader
	lu12i.w	$a3, 250
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 176
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_510:                              # %vector.body5131
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 224
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 224
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 192
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 192
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_510
	b	.LBB5_573
.LBB5_511:                              # %vector.body5039.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, -1025
	xvreplgr2vr.d	$xr0, $a4
.LBB5_512:                              # %vector.body5039
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_512
# %bb.513:                              # %vector.body5046.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1056
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_514:                              # %vector.body5046
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_514
# %bb.515:                              # %vector.body5053.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2112
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_516:                              # %vector.body5053
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_516
# %bb.517:                              # %vector.body5060.preheader
	lu12i.w	$a3, 125
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 80
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_518:                              # %vector.body5060
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 1
	ori	$a5, $a5, 544
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 544
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 1
	ori	$a5, $a5, 512
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 512
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_518
# %bb.519:                              # %vector.body5070.preheader
	lu12i.w	$a3, 187
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2160
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_520:                              # %vector.body5070
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 1
	ori	$a5, $a5, 480
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 480
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 1
	ori	$a5, $a5, 448
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 448
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_520
# %bb.521:                              # %vector.body5080.preheader
	lu12i.w	$a3, 250
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 176
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_522:                              # %vector.body5080
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 416
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 416
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 384
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 384
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_522
	b	.LBB5_573
.LBB5_523:                              # %vector.body4988.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, -1025
	xvreplgr2vr.d	$xr0, $a4
.LBB5_524:                              # %vector.body4988
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_524
# %bb.525:                              # %vector.body4995.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1056
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_526:                              # %vector.body4995
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_526
# %bb.527:                              # %vector.body5002.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2112
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_528:                              # %vector.body5002
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_528
# %bb.529:                              # %vector.body5009.preheader
	lu12i.w	$a3, 125
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 80
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_530:                              # %vector.body5009
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 1
	ori	$a5, $a5, 736
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 736
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 1
	ori	$a5, $a5, 704
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 704
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_530
# %bb.531:                              # %vector.body5019.preheader
	lu12i.w	$a3, 187
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2160
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_532:                              # %vector.body5019
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 1
	ori	$a5, $a5, 672
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 672
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 1
	ori	$a5, $a5, 640
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 640
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_532
# %bb.533:                              # %vector.body5029.preheader
	lu12i.w	$a3, 250
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 176
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_534:                              # %vector.body5029
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 608
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 608
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 576
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 576
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_534
	b	.LBB5_573
.LBB5_535:                              # %vector.body4944.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_536:                              # %vector.body4944
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_536
# %bb.537:                              # %vector.body4951.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2112
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_538:                              # %vector.body4951
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_538
# %bb.539:                              # %vector.body4958.preheader
	lu12i.w	$a3, 125
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 80
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_540:                              # %vector.body4958
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 1
	ori	$a5, $a5, 928
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 928
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 1
	ori	$a5, $a5, 896
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 896
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_540
# %bb.541:                              # %vector.body4968.preheader
	lu12i.w	$a3, 187
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2160
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_542:                              # %vector.body4968
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 1
	ori	$a5, $a5, 864
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 864
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 1
	ori	$a5, $a5, 832
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 832
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_542
# %bb.543:                              # %vector.body4978.preheader
	lu12i.w	$a3, 250
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 176
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_544:                              # %vector.body4978
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 800
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 800
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 768
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 768
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_544
	b	.LBB5_573
.LBB5_545:                              # %vector.body4917.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_546:                              # %vector.body4917
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_546
# %bb.547:                              # %vector.body4924.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_548:                              # %vector.body4924
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 1
	ori	$a5, $a5, 1056
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 1056
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 1
	ori	$a5, $a5, 1024
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 1024
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_548
# %bb.549:                              # %vector.body4934.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 80
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_550:                              # %vector.body4934
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 992
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 992
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 960
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 960
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_550
	b	.LBB5_573
.LBB5_551:                              # %vector.body4890.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_552:                              # %vector.body4890
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_552
# %bb.553:                              # %vector.body4897.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_554:                              # %vector.body4897
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 1
	ori	$a5, $a5, 1184
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 1184
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 1
	ori	$a5, $a5, 1152
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 1152
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_554
# %bb.555:                              # %vector.body4907.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 80
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_556:                              # %vector.body4907
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1120
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1120
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1088
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1088
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_556
	b	.LBB5_573
.LBB5_557:                              # %.preheader.i2121.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 62
	ori	$a2, $s1, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2112
	add.d	$a1, $s0, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_558:                              # %vector.body4876
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_558
# %bb.559:                              # %vector.body4883.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 96
	add.d	$a1, $s0, $a1
	ori	$a0, $a0, 3328
.LBB5_560:                              # %vector.body4883
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_560
	b	.LBB5_573
.LBB5_561:                              # %.preheader.i2133.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 62
	ori	$a2, $s1, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2112
	add.d	$a0, $s0, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	lu52i.d	$a2, $zero, 1023
	xvreplgr2vr.d	$xr0, $a2
.LBB5_562:                              # %vector.body4869
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_562
	b	.LBB5_573
.LBB5_563:                              # %.preheader.i2141.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 62
	ori	$a2, $s1, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2112
	add.d	$a0, $s0, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	lu52i.d	$a2, $zero, 1023
	xvreplgr2vr.d	$xr0, $a2
.LBB5_564:                              # %vector.body4862
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_564
	b	.LBB5_573
.LBB5_565:                              # %vector.body4852.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data+16)
	addi.d	$a0, $a0, %pc_lo12(global_data+16)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_566:                              # %vector.body4852
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1248
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1248
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1216
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1216
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_566
	b	.LBB5_573
.LBB5_567:                              # %vector.ph4826.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_568:                              # %vector.ph4826
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_568
# %bb.569:                              # %.preheader34.i2161.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 1
	ori	$a3, $zero, 256
.LBB5_570:                              # %.preheader34.i2161
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB5_570
# %bb.571:                              # %.preheader34.i2169.preheader
	lu12i.w	$a1, 568
	ori	$a1, $a1, 3488
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
.LBB5_572:                              # %.preheader34.i2169
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB5_572
.LBB5_573:                              # %set1d.exit1086
	move	$a0, $zero
	lu12i.w	$a1, 2
	ori	$a1, $a1, 2688
	sub.d	$sp, $fp, $a1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 656
	add.d	$sp, $sp, $a1
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB5_574:                              # %.preheader.i2177.preheader
	pcalau12i	$a0, %pc_hi20(global_data+1280224)
	addi.d	$a0, $a0, %pc_lo12(global_data+1280224)
	b	.LBB5_345
.LBB5_575:                              # %vector.body4817.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data+16)
	addi.d	$a0, $a0, %pc_lo12(global_data+16)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_576:                              # %vector.body4817
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1312
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1312
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1280
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1280
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_576
	b	.LBB5_573
.LBB5_577:                              # %vector.body4810.preheader
	pcalau12i	$a0, %pc_hi20(global_data+32)
	addi.d	$a0, $a0, %pc_lo12(global_data+32)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	lu12i.w	$a2, 50935
	ori	$a2, $a2, 2571
	lu32i.d	$a2, 1
	lu52i.d	$a2, $a2, 1023
	xvreplgr2vr.d	$xr0, $a2
.LBB5_578:                              # %vector.body4810
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_578
	b	.LBB5_573
.LBB5_579:                              # %vector.body4790.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a1, %pc_hi20(global_data)
	addi.d	$a1, $a1, %pc_lo12(global_data)
	addi.d	$a3, $a1, 16
	lu12i.w	$a2, 7
	ori	$a4, $a2, 3328
.LBB5_580:                              # %vector.body4790
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 1
	ori	$a5, $a5, 1440
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 1440
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 1
	ori	$a5, $a5, 1408
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 1408
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_580
# %bb.581:                              # %vector.body4800.preheader
	lu12i.w	$a3, 62
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	ori	$a0, $a3, 2096
	add.d	$a0, $a1, $a0
	ori	$a1, $a2, 3328
.LBB5_582:                              # %vector.body4800
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1376
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1376
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1344
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1344
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_582
	b	.LBB5_573
.LBB5_583:                              # %vector.body4780.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data+16)
	addi.d	$a0, $a0, %pc_lo12(global_data+16)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_584:                              # %vector.body4780
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1504
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1504
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1472
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1472
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_584
	b	.LBB5_573
.LBB5_585:                              # %vector.body4770.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data+16)
	addi.d	$a0, $a0, %pc_lo12(global_data+16)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_586:                              # %vector.body4770
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1568
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1568
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1536
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1536
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_586
	b	.LBB5_573
.LBB5_587:                              # %vector.body4760.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data+16)
	addi.d	$a0, $a0, %pc_lo12(global_data+16)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_588:                              # %vector.body4760
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1632
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1632
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1600
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1600
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_588
	b	.LBB5_573
.LBB5_589:                              # %vector.body4750.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 16
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
.LBB5_590:                              # %vector.body4750
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1696
	add.d	$a3, $sp, $a3
	xvst	$xr2, $a3, 0
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1696
	add.d	$a3, $sp, $a3
	vld	$vr2, $a3, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1664
	add.d	$a3, $sp, $a3
	xvst	$xr1, $a3, 0
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1664
	add.d	$a3, $sp, $a3
	vld	$vr1, $a3, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB5_590
	b	.LBB5_606
.LBB5_591:                              # %.preheader.i2230.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	lu12i.w	$s2, 62
	ori	$s1, $s2, 2048
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s2, 2080
	add.d	$a0, $s0, $a0
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 125
	ori	$a0, $a0, 80
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	add.d	$a2, $s0, $a0
	lu12i.w	$a0, 7
	ori	$a3, $a0, 3328
.LBB5_592:                              # %vector.body4720
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1888
	add.d	$a4, $sp, $a4
	xvst	$xr2, $a4, 0
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1888
	add.d	$a4, $sp, $a4
	vld	$vr2, $a4, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1856
	add.d	$a4, $sp, $a4
	xvst	$xr1, $a4, 0
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1856
	add.d	$a4, $sp, $a4
	vld	$vr1, $a4, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_592
# %bb.593:                              # %vector.body4730.preheader
	lu12i.w	$a2, 187
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2160
	add.d	$a2, $s0, $a2
	ori	$a3, $a0, 3328
.LBB5_594:                              # %vector.body4730
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1824
	add.d	$a4, $sp, $a4
	xvst	$xr2, $a4, 0
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1824
	add.d	$a4, $sp, $a4
	vld	$vr2, $a4, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1792
	add.d	$a4, $sp, $a4
	xvst	$xr1, $a4, 0
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1792
	add.d	$a4, $sp, $a4
	vld	$vr1, $a4, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_594
# %bb.595:                              # %vector.body4740.preheader
	lu12i.w	$a2, 250
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a1, $a2, 176
	add.d	$a1, $s0, $a1
	ori	$a0, $a0, 3328
.LBB5_596:                              # %vector.body4740
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1760
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1760
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1728
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1728
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_596
	b	.LBB5_573
.LBB5_597:                              # %.preheader34.i2253.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 1
	ori	$a3, $zero, 256
.LBB5_598:                              # %.preheader34.i2253
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB5_598
# %bb.599:                              # %set2d.exit2260
	lu12i.w	$a1, 440
	ori	$a1, $a1, 2264
	b	.LBB5_629
.LBB5_600:                              # %vector.body4701.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data+16)
	addi.d	$a0, $a0, %pc_lo12(global_data+16)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_601:                              # %vector.body4701
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1952
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1952
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1920
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1920
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_601
	b	.LBB5_573
.LBB5_602:                              # %vector.body4691.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 16
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
.LBB5_603:                              # %vector.body4691
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1984
	add.d	$a3, $sp, $a3
	xvst	$xr1, $a3, 0
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1984
	add.d	$a3, $sp, $a3
	vld	$vr1, $a3, 0
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a3, 1
	ori	$a3, $a3, 2016
	add.d	$a3, $sp, $a3
	xvst	$xr2, $a3, 0
	lu12i.w	$a3, 1
	ori	$a3, $a3, 2016
	add.d	$a3, $sp, $a3
	vld	$vr2, $a3, 0
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a1, -16
	vst	$vr2, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB5_603
	b	.LBB5_609
.LBB5_604:                              # %vector.body4681.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 16
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
.LBB5_605:                              # %vector.body4681
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a3, 1
	ori	$a3, $a3, 2080
	add.d	$a3, $sp, $a3
	xvst	$xr2, $a3, 0
	lu12i.w	$a3, 1
	ori	$a3, $a3, 2080
	add.d	$a3, $sp, $a3
	vld	$vr2, $a3, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a3, 1
	ori	$a3, $a3, 2048
	add.d	$a3, $sp, $a3
	xvst	$xr1, $a3, 0
	lu12i.w	$a3, 1
	ori	$a3, $a3, 2048
	add.d	$a3, $sp, $a3
	vld	$vr1, $a3, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB5_605
.LBB5_606:                              # %set1d.exit2229
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2040
	lu52i.d	$a2, $zero, -1024
	stx.d	$a2, $a0, $a1
	b	.LBB5_573
.LBB5_607:                              # %vector.body4674.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 32
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_608:                              # %vector.body4674
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_608
.LBB5_609:                              # %.preheader.i2271.preheader
	lu12i.w	$a1, 62
	ori	$a2, $a1, 2080
	add.d	$a0, $a0, $a2
	ori	$a2, $a1, 2048
	b	.LBB5_346
.LBB5_610:                              # %vector.body4667.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s1, $a0, %pc_lo12(global_data)
	addi.d	$a0, $s1, 32
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	lu52i.d	$a2, $zero, 1023
	xvreplgr2vr.d	$xr0, $a2
.LBB5_611:                              # %vector.body4667
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_611
# %bb.612:                              # %.preheader.i2292.preheader
	lu12i.w	$a1, 62
	ori	$a0, $a1, 2080
	add.d	$a0, $s1, $a0
	ori	$s0, $a1, 2048
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 125
	ori	$a0, $a0, 64
	add.d	$a0, $s1, $a0
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB5_573
.LBB5_613:                              # %vector.body4623.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_614:                              # %vector.body4623
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_614
# %bb.615:                              # %vector.body4630.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2112
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_616:                              # %vector.body4630
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_616
# %bb.617:                              # %vector.body4637.preheader
	lu12i.w	$a3, 125
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 80
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_618:                              # %vector.body4637
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 1
	ori	$a5, $a5, 2272
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 2272
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 1
	ori	$a5, $a5, 2240
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 2240
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_618
# %bb.619:                              # %vector.body4647.preheader
	lu12i.w	$a3, 187
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2160
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_620:                              # %vector.body4647
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 1
	ori	$a5, $a5, 2208
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 2208
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 1
	ori	$a5, $a5, 2176
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 2176
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_620
# %bb.621:                              # %vector.body4657.preheader
	lu12i.w	$a3, 250
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 176
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_622:                              # %vector.body4657
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2144
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2144
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2112
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2112
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_622
	b	.LBB5_573
.LBB5_623:                              # %vector.body4613.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 16
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
.LBB5_624:                              # %vector.body4613
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a3, 1
	ori	$a3, $a3, 2336
	add.d	$a3, $sp, $a3
	xvst	$xr2, $a3, 0
	lu12i.w	$a3, 1
	ori	$a3, $a3, 2336
	add.d	$a3, $sp, $a3
	vld	$vr2, $a3, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a3, 1
	ori	$a3, $a3, 2304
	add.d	$a3, $sp, $a3
	xvst	$xr1, $a3, 0
	lu12i.w	$a3, 1
	ori	$a3, $a3, 2304
	add.d	$a3, $sp, $a3
	vld	$vr1, $a3, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB5_624
# %bb.625:                              # %set1d.exit2327
	lu12i.w	$a1, 62
	b	.LBB5_685
.LBB5_626:                              # %vector.body4603.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 16
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
.LBB5_627:                              # %vector.body4603
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a3, 1
	ori	$a3, $a3, 2368
	add.d	$a3, $sp, $a3
	xvst	$xr1, $a3, 0
	lu12i.w	$a3, 1
	ori	$a3, $a3, 2368
	add.d	$a3, $sp, $a3
	vld	$vr1, $a3, 0
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a3, 1
	ori	$a3, $a3, 2400
	add.d	$a3, $sp, $a3
	xvst	$xr2, $a3, 0
	lu12i.w	$a3, 1
	ori	$a3, $a3, 2400
	add.d	$a3, $sp, $a3
	vld	$vr2, $a3, 0
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a1, -16
	vst	$vr2, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB5_627
# %bb.628:                              # %set1d.exit2332
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2040
.LBB5_629:                              # %set1d.exit1086
	lu52i.d	$a2, $zero, 1024
	stx.d	$a2, $a0, $a1
	b	.LBB5_573
.LBB5_630:                              # %.preheader.i2333.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 62
	ori	$a2, $s1, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2096
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	add.d	$a0, $s0, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_631:                              # %vector.body4593
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2464
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2464
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2432
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2432
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_631
	b	.LBB5_573
.LBB5_632:                              # %vector.body4573.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a1, %pc_hi20(global_data)
	addi.d	$a1, $a1, %pc_lo12(global_data)
	addi.d	$a3, $a1, 16
	lu12i.w	$a2, 7
	ori	$a4, $a2, 3328
.LBB5_633:                              # %vector.body4573
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 1
	ori	$a5, $a5, 2592
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 2592
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 1
	ori	$a5, $a5, 2560
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 2560
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_633
# %bb.634:                              # %vector.body4583.preheader
	lu12i.w	$a3, 62
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	ori	$a0, $a3, 2096
	add.d	$a0, $a1, $a0
	ori	$a1, $a2, 3328
.LBB5_635:                              # %vector.body4583
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2528
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2528
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2496
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2496
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_635
	b	.LBB5_573
.LBB5_636:                              # %.preheader34.i2352.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 1
	ori	$a3, $zero, 256
.LBB5_637:                              # %.preheader34.i2352
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB5_637
# %bb.638:                              # %vector.ph4565.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 256
	lu52i.d	$a2, $zero, 1023
	xvreplgr2vr.d	$xr0, $a2
.LBB5_639:                              # %vector.ph4565
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB5_639
	b	.LBB5_573
.LBB5_640:                              # %vector.body4543.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a3, $a0, 32
	lu12i.w	$a2, 7
	ori	$a4, $a2, 3328
	lu52i.d	$a1, $zero, 1023
	xvreplgr2vr.d	$xr0, $a1
.LBB5_641:                              # %vector.body4543
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB5_641
# %bb.642:                              # %vector.body4550.preheader
	lu12i.w	$a3, 62
	ori	$a3, $a3, 2112
	add.d	$a3, $a0, $a3
	ori	$a2, $a2, 3328
.LBB5_643:                              # %vector.body4550
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a2, $a2, -8
	addi.d	$a3, $a3, 64
	bnez	$a2, .LBB5_643
	b	.LBB5_652
.LBB5_644:                              # %vector.body4523.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a1, %pc_hi20(global_data)
	addi.d	$a1, $a1, %pc_lo12(global_data)
	addi.d	$a3, $a1, 16
	lu12i.w	$a2, 7
	ori	$a4, $a2, 3328
.LBB5_645:                              # %vector.body4523
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 1
	ori	$a5, $a5, 2720
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 2720
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 1
	ori	$a5, $a5, 2688
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 2688
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_645
# %bb.646:                              # %vector.body4533.preheader
	lu12i.w	$a3, 62
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	ori	$a0, $a3, 2096
	add.d	$a0, $a1, $a0
	ori	$a1, $a2, 3328
.LBB5_647:                              # %vector.body4533
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2656
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2656
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2624
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2624
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_647
	b	.LBB5_573
.LBB5_648:                              # %vector.body4509.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a3, $a0, 32
	lu12i.w	$a2, 7
	ori	$a4, $a2, 3328
	lu52i.d	$a1, $zero, 1023
	xvreplgr2vr.d	$xr0, $a1
.LBB5_649:                              # %vector.body4509
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB5_649
# %bb.650:                              # %vector.body4516.preheader
	lu12i.w	$a3, 62
	ori	$a3, $a3, 2112
	add.d	$a3, $a0, $a3
	ori	$a2, $a2, 3328
.LBB5_651:                              # %vector.body4516
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a2, $a2, -8
	addi.d	$a3, $a3, 64
	bnez	$a2, .LBB5_651
.LBB5_652:                              # %set1d.exit2374
	lu12i.w	$a2, 125
	ori	$a2, $a2, 64
	stx.d	$a1, $a0, $a2
	b	.LBB5_573
.LBB5_653:                              # %vector.body4482.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_654:                              # %vector.body4482
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_654
# %bb.655:                              # %vector.body4489.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_656:                              # %vector.body4489
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 1
	ori	$a5, $a5, 2848
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 2848
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 1
	ori	$a5, $a5, 2816
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 2816
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_656
# %bb.657:                              # %vector.body4499.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 80
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_658:                              # %vector.body4499
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2784
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2784
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2752
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2752
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_658
	b	.LBB5_573
.LBB5_659:                              # %vector.body4455.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_660:                              # %vector.body4455
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_660
# %bb.661:                              # %vector.body4462.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_662:                              # %vector.body4462
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 1
	ori	$a5, $a5, 2976
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 2976
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 1
	ori	$a5, $a5, 2944
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 2944
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_662
# %bb.663:                              # %vector.body4472.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 80
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_664:                              # %vector.body4472
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2912
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2912
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2880
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2880
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_664
	b	.LBB5_573
.LBB5_665:                              # %.preheader.i2421.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 62
	ori	$a2, $s1, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2112
	add.d	$a1, $s0, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_666:                              # %vector.body4421
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_666
# %bb.667:                              # %vector.body4428.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 96
	add.d	$a1, $s0, $a1
	ori	$a2, $a0, 3328
.LBB5_668:                              # %vector.body4428
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_668
# %bb.669:                              # %vector.body4435.preheader
	lu12i.w	$a2, 187
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2160
	add.d	$a2, $s0, $a2
	ori	$a3, $a0, 3328
.LBB5_670:                              # %vector.body4435
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a4, 1
	ori	$a4, $a4, 3104
	add.d	$a4, $sp, $a4
	xvst	$xr2, $a4, 0
	lu12i.w	$a4, 1
	ori	$a4, $a4, 3104
	add.d	$a4, $sp, $a4
	vld	$vr2, $a4, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a4, 1
	ori	$a4, $a4, 3072
	add.d	$a4, $sp, $a4
	xvst	$xr1, $a4, 0
	lu12i.w	$a4, 1
	ori	$a4, $a4, 3072
	add.d	$a4, $sp, $a4
	vld	$vr1, $a4, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_670
# %bb.671:                              # %vector.body4445.preheader
	lu12i.w	$a2, 250
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a1, $a2, 176
	add.d	$a1, $s0, $a1
	ori	$a0, $a0, 3328
.LBB5_672:                              # %vector.body4445
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3040
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3040
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3008
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3008
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_672
	b	.LBB5_573
.LBB5_673:                              # %vector.ph4395.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_674:                              # %vector.ph4395
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_674
# %bb.675:                              # %.preheader34.i2450.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 1
	ori	$a3, $zero, 256
.LBB5_676:                              # %.preheader34.i2450
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB5_676
# %bb.677:                              # %.preheader34.i2458.preheader
	lu12i.w	$a1, 568
	ori	$a1, $a1, 3488
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
.LBB5_678:                              # %.preheader34.i2458
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB5_678
	b	.LBB5_573
.LBB5_679:                              # %vector.body4369.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 32
	lu12i.w	$a2, 7
	ori	$a3, $a2, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_680:                              # %vector.body4369
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a3, $a3, -8
	addi.d	$a1, $a1, 64
	bnez	$a3, .LBB5_680
# %bb.681:                              # %vector.body4376.preheader
	lu12i.w	$a1, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a4, $a1, 2096
	add.d	$a4, $a0, $a4
	ori	$a5, $a2, 3328
.LBB5_682:                              # %vector.body4376
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a6, 1
	ori	$a6, $a6, 3232
	add.d	$a6, $sp, $a6
	xvst	$xr2, $a6, 0
	lu12i.w	$a6, 1
	ori	$a6, $a6, 3232
	add.d	$a6, $sp, $a6
	vld	$vr2, $a6, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a6, 1
	ori	$a6, $a6, 3200
	add.d	$a6, $sp, $a6
	xvst	$xr1, $a6, 0
	lu12i.w	$a6, 1
	ori	$a6, $a6, 3200
	add.d	$a6, $sp, $a6
	vld	$vr1, $a6, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a4, -16
	vst	$vr1, $a4, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB5_682
# %bb.683:                              # %vector.body4386.preheader
	lu12i.w	$a4, 125
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a3, $a4, 80
	add.d	$a3, $a0, $a3
	ori	$a2, $a2, 3328
.LBB5_684:                              # %vector.body4386
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a4, 1
	ori	$a4, $a4, 3168
	add.d	$a4, $sp, $a4
	xvst	$xr2, $a4, 0
	lu12i.w	$a4, 1
	ori	$a4, $a4, 3168
	add.d	$a4, $sp, $a4
	vld	$vr2, $a4, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a4, 1
	ori	$a4, $a4, 3136
	add.d	$a4, $sp, $a4
	xvst	$xr1, $a4, 0
	lu12i.w	$a4, 1
	ori	$a4, $a4, 3136
	add.d	$a4, $sp, $a4
	vld	$vr1, $a4, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a2, $a2, -4
	addi.d	$a3, $a3, 32
	bnez	$a2, .LBB5_684
.LBB5_685:                              # %set1d.exit2479
	ori	$a1, $a1, 2040
	lu52i.d	$a2, $zero, -1025
	stx.d	$a2, $a0, $a1
	b	.LBB5_573
.LBB5_686:                              # %vector.body4352.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 16
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
.LBB5_687:                              # %vector.body4352
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a4, 1
	ori	$a4, $a4, 3264
	add.d	$a4, $sp, $a4
	xvst	$xr1, $a4, 0
	lu12i.w	$a4, 1
	ori	$a4, $a4, 3264
	add.d	$a4, $sp, $a4
	vld	$vr1, $a4, 0
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a4, 1
	ori	$a4, $a4, 3296
	add.d	$a4, $sp, $a4
	xvst	$xr2, $a4, 0
	lu12i.w	$a4, 1
	ori	$a4, $a4, 3296
	add.d	$a4, $sp, $a4
	vld	$vr2, $a4, 0
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a2, -16
	vst	$vr2, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_687
# %bb.688:                              # %vector.body4362.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2112
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
	lu52i.d	$a2, $zero, 1023
	xvreplgr2vr.d	$xr0, $a2
.LBB5_689:                              # %vector.body4362
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_689
	b	.LBB5_573
.LBB5_690:                              # %vector.body4335.preheader
	pcalau12i	$a0, %pc_hi20(array+32)
	addi.d	$a0, $a0, %pc_lo12(array+32)
	lu12i.w	$a1, 7
	ori	$a2, $a1, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_691:                              # %vector.body4335
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a2, $a2, -8
	addi.d	$a0, $a0, 64
	bnez	$a2, .LBB5_691
# %bb.692:                              # %vector.body4342.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data+16)
	addi.d	$a0, $a0, %pc_lo12(global_data+16)
	ori	$a1, $a1, 3328
.LBB5_693:                              # %vector.body4342
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3328
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3328
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3360
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3360
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_693
	b	.LBB5_573
.LBB5_694:                              # %.preheader.i2498.preheader
	pcalau12i	$a0, %pc_hi20(array)
	addi.d	$a0, $a0, %pc_lo12(array)
	lu12i.w	$a1, 62
	ori	$a2, $a1, 2048
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data+16)
	addi.d	$a0, $a0, %pc_lo12(global_data+16)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_695:                              # %vector.body4325
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3392
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3392
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3424
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3424
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_695
	b	.LBB5_573
.LBB5_696:                              # %vector.body4308.preheader
	pcalau12i	$a0, %pc_hi20(array+32)
	addi.d	$a0, $a0, %pc_lo12(array+32)
	lu12i.w	$a1, 7
	ori	$a2, $a1, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_697:                              # %vector.body4308
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a2, $a2, -8
	addi.d	$a0, $a0, 64
	bnez	$a2, .LBB5_697
# %bb.698:                              # %vector.body4315.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data+16)
	addi.d	$a0, $a0, %pc_lo12(global_data+16)
	ori	$a1, $a1, 3328
.LBB5_699:                              # %vector.body4315
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3456
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3456
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3488
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3488
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_699
	b	.LBB5_573
.LBB5_700:                              # %vector.body4291.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_701:                              # %vector.body4291
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_701
# %bb.702:                              # %vector.body4298.preheader
	lu12i.w	$a2, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2096
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_703:                              # %vector.body4298
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3520
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3520
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3552
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3552
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_703
	b	.LBB5_573
.LBB5_704:                              # %vector.body4274.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_705:                              # %vector.body4274
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_705
# %bb.706:                              # %vector.body4281.preheader
	lu12i.w	$a2, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2096
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_707:                              # %vector.body4281
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3584
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3584
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3616
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3616
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_707
	b	.LBB5_573
.LBB5_708:                              # %vector.body4233.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	addi.d	$a0, $s0, 32
	lu12i.w	$s1, 7
	ori	$a1, $s1, 3328
	lu52i.d	$a2, $zero, 1023
	xvreplgr2vr.d	$xr0, $a2
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
.LBB5_709:                              # %vector.body4233
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_709
# %bb.710:                              # %vector.body4240.preheader
	lu12i.w	$a1, 62
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	ori	$a2, $a1, 2096
	add.d	$a2, $s0, $a2
	ori	$a3, $s1, 3328
.LBB5_711:                              # %vector.body4240
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a4, 1
	ori	$a4, $a4, 3744
	add.d	$a4, $sp, $a4
	xvst	$xr2, $a4, 0
	lu12i.w	$a4, 1
	ori	$a4, $a4, 3744
	add.d	$a4, $sp, $a4
	vld	$vr2, $a4, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a4, 1
	ori	$a4, $a4, 3712
	add.d	$a4, $sp, $a4
	xvst	$xr1, $a4, 0
	lu12i.w	$a4, 1
	ori	$a4, $a4, 3712
	add.d	$a4, $sp, $a4
	vld	$vr1, $a4, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_711
# %bb.712:                              # %vector.body4250.preheader
	lu12i.w	$a2, 125
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	ori	$a0, $a2, 80
	add.d	$a0, $s0, $a0
	ori	$a2, $s1, 3328
.LBB5_713:                              # %vector.body4250
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a3, 1
	ori	$a3, $a3, 3680
	add.d	$a3, $sp, $a3
	xvst	$xr2, $a3, 0
	lu12i.w	$a3, 1
	ori	$a3, $a3, 3680
	add.d	$a3, $sp, $a3
	vld	$vr2, $a3, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a3, 1
	ori	$a3, $a3, 3648
	add.d	$a3, $sp, $a3
	xvst	$xr1, $a3, 0
	lu12i.w	$a3, 1
	ori	$a3, $a3, 3648
	add.d	$a3, $sp, $a3
	vld	$vr1, $a3, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a2, $a2, -4
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB5_713
# %bb.714:                              # %vector.body4260.preheader
	lu12i.w	$a0, 187
	ori	$a0, $a0, 2176
	add.d	$a0, $s0, $a0
	ori	$a2, $s1, 3328
	lu52i.d	$a3, $zero, -1025
	xvreplgr2vr.d	$xr0, $a3
.LBB5_715:                              # %vector.body4260
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a2, $a2, -8
	addi.d	$a0, $a0, 64
	bnez	$a2, .LBB5_715
# %bb.716:                              # %.preheader.i2552.preheader
	addu16i.d	$a0, $s0, 13
	addi.d	$a0, $a0, 1456
	ori	$a2, $a1, 2048
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 229
	ori	$a0, $a0, 808
	add.d	$a0, $s0, $a0
	ori	$a1, $s1, 3328
.LBB5_717:                              # %vector.body4267
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_717
	b	.LBB5_573
.LBB5_718:                              # %vector.body4186.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_719:                              # %vector.body4186
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_719
# %bb.720:                              # %vector.body4193.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_721:                              # %vector.body4193
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 1
	ori	$a5, $a5, 4000
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 4000
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 1
	ori	$a5, $a5, 3968
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 3968
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_721
# %bb.722:                              # %vector.body4203.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 80
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_723:                              # %vector.body4203
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 1
	ori	$a5, $a5, 3936
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 3936
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 1
	ori	$a5, $a5, 3904
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 3904
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_723
# %bb.724:                              # %vector.body4213.preheader
	lu12i.w	$a3, 187
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2160
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_725:                              # %vector.body4213
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 1
	ori	$a5, $a5, 3872
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 3872
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 1
	ori	$a5, $a5, 3840
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 3840
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_725
# %bb.726:                              # %vector.body4223.preheader
	lu12i.w	$a3, 250
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 176
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_727:                              # %vector.body4223
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3808
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3808
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3776
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3776
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_727
	b	.LBB5_573
.LBB5_728:                              # %vector.body4159.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_729:                              # %vector.body4159
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_729
# %bb.730:                              # %vector.body4166.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_731:                              # %vector.body4166
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 2
	ori	$a5, $a5, 32
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 2
	ori	$a5, $a5, 32
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 2
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 2
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_731
# %bb.732:                              # %vector.body4176.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 80
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_733:                              # %vector.body4176
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 4064
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 4064
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 4032
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 4032
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_733
	b	.LBB5_573
.LBB5_734:                              # %vector.body4139.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2096
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	add.d	$a3, $a0, $a1
	lu12i.w	$a1, 7
	ori	$a4, $a1, 3328
.LBB5_735:                              # %vector.body4139
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 2
	ori	$a5, $a5, 160
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 2
	ori	$a5, $a5, 160
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 2
	ori	$a5, $a5, 128
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 2
	ori	$a5, $a5, 128
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_735
# %bb.736:                              # %vector.body4149.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 80
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_737:                              # %vector.body4149
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 2
	ori	$a2, $a2, 96
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 96
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 64
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 64
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_737
	b	.LBB5_573
.LBB5_738:                              # %.preheader.i2608.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 62
	ori	$a2, $s1, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2112
	add.d	$a1, $s0, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_739:                              # %vector.body4125
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_739
# %bb.740:                              # %vector.body4132.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 96
	add.d	$a1, $s0, $a1
	ori	$a0, $a0, 3328
	lu12i.w	$a2, -390306
	ori	$a2, $a2, 3469
	lu32i.d	$a2, 50935
	lu52i.d	$a2, $a2, 1003
	xvreplgr2vr.d	$xr0, $a2
.LBB5_741:                              # %vector.body4132
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_741
	b	.LBB5_573
.LBB5_742:                              # %.preheader.i2620.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 62
	ori	$a2, $s1, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2096
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	add.d	$a0, $s0, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_743:                              # %vector.body4115
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 192
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 192
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 2
	ori	$a2, $a2, 224
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 224
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_743
	b	.LBB5_573
.LBB5_744:                              # %vector.body4074.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_745:                              # %vector.body4074
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_745
# %bb.746:                              # %vector.body4081.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2112
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_747:                              # %vector.body4081
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_747
# %bb.748:                              # %vector.body4088.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 96
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_749:                              # %vector.body4088
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_749
# %bb.750:                              # %vector.body4095.preheader
	lu12i.w	$a3, 187
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2160
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_751:                              # %vector.body4095
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 2
	ori	$a5, $a5, 352
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 2
	ori	$a5, $a5, 352
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 2
	ori	$a5, $a5, 320
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 2
	ori	$a5, $a5, 320
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_751
# %bb.752:                              # %vector.body4105.preheader
	lu12i.w	$a3, 250
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 176
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_753:                              # %vector.body4105
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 2
	ori	$a2, $a2, 288
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 288
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 256
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 256
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_753
	b	.LBB5_573
.LBB5_754:                              # %vector.body4037.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_755:                              # %vector.body4037
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_755
# %bb.756:                              # %vector.body4044.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_757:                              # %vector.body4044
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 2
	ori	$a5, $a5, 544
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 2
	ori	$a5, $a5, 544
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 2
	ori	$a5, $a5, 512
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 2
	ori	$a5, $a5, 512
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_757
# %bb.758:                              # %vector.body4054.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 80
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_759:                              # %vector.body4054
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 2
	ori	$a5, $a5, 480
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 2
	ori	$a5, $a5, 480
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 2
	ori	$a5, $a5, 448
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 2
	ori	$a5, $a5, 448
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_759
# %bb.760:                              # %vector.body4064.preheader
	lu12i.w	$a3, 187
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 2160
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_761:                              # %vector.body4064
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 2
	ori	$a2, $a2, 416
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 416
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 384
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 384
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_761
	b	.LBB5_573
.LBB5_762:                              # %vector.body4010.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_763:                              # %vector.body4010
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_763
# %bb.764:                              # %vector.body4017.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_765:                              # %vector.body4017
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 2
	ori	$a5, $a5, 672
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 2
	ori	$a5, $a5, 672
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 2
	ori	$a5, $a5, 640
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 2
	ori	$a5, $a5, 640
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_765
# %bb.766:                              # %vector.body4027.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 80
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_767:                              # %vector.body4027
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 2
	ori	$a2, $a2, 608
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 608
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 576
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 576
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_767
	b	.LBB5_573
.LBB5_768:                              # %.preheader.i2684.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 62
	ori	$a2, $s1, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2112
	add.d	$a1, $s0, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_769:                              # %vector.body3983
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_769
# %bb.770:                              # %vector.body3990.preheader
	lu12i.w	$a2, 125
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 80
	add.d	$a2, $s0, $a2
	ori	$a3, $a0, 3328
.LBB5_771:                              # %vector.body3990
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a4, 2
	ori	$a4, $a4, 800
	add.d	$a4, $sp, $a4
	xvst	$xr2, $a4, 0
	lu12i.w	$a4, 2
	ori	$a4, $a4, 800
	add.d	$a4, $sp, $a4
	vld	$vr2, $a4, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a4, 2
	ori	$a4, $a4, 768
	add.d	$a4, $sp, $a4
	xvst	$xr1, $a4, 0
	lu12i.w	$a4, 2
	ori	$a4, $a4, 768
	add.d	$a4, $sp, $a4
	vld	$vr1, $a4, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_771
# %bb.772:                              # %vector.body4000.preheader
	lu12i.w	$a2, 187
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a1, $a2, 2160
	add.d	$a1, $s0, $a1
	ori	$a0, $a0, 3328
.LBB5_773:                              # %vector.body4000
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 2
	ori	$a2, $a2, 736
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 736
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 704
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 704
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_773
	b	.LBB5_573
.LBB5_774:                              # %vector.body3966.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_775:                              # %vector.body3966
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_775
# %bb.776:                              # %vector.body3973.preheader
	lu12i.w	$a2, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2096
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_777:                              # %vector.body3973
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 2
	ori	$a2, $a2, 864
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 864
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 832
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 832
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_777
	b	.LBB5_573
.LBB5_778:                              # %.preheader.i2711.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 62
	ori	$a2, $s1, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2112
	add.d	$a0, $s0, $a0
	lu12i.w	$a1, 7
	ori	$a2, $a1, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_779:                              # %vector.body3949
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a2, $a2, -8
	addi.d	$a0, $a0, 64
	bnez	$a2, .LBB5_779
# %bb.780:                              # %vector.body3956.preheader
	lu12i.w	$a0, 125
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a0, $a0, 80
	add.d	$a0, $s0, $a0
	ori	$a1, $a1, 3328
.LBB5_781:                              # %vector.body3956
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 896
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 896
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 2
	ori	$a2, $a2, 928
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 928
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_781
	b	.LBB5_573
.LBB5_782:                              # %.preheader.i2724.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 62
	ori	$a2, $s1, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2112
	add.d	$a1, $s0, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_783:                              # %vector.body3922
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_783
# %bb.784:                              # %vector.body3929.preheader
	lu12i.w	$a2, 125
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 80
	add.d	$a2, $s0, $a2
	ori	$a3, $a0, 3328
.LBB5_785:                              # %vector.body3929
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a4, 2
	ori	$a4, $a4, 1056
	add.d	$a4, $sp, $a4
	xvst	$xr2, $a4, 0
	lu12i.w	$a4, 2
	ori	$a4, $a4, 1056
	add.d	$a4, $sp, $a4
	vld	$vr2, $a4, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a4, 2
	ori	$a4, $a4, 1024
	add.d	$a4, $sp, $a4
	xvst	$xr1, $a4, 0
	lu12i.w	$a4, 2
	ori	$a4, $a4, 1024
	add.d	$a4, $sp, $a4
	vld	$vr1, $a4, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_785
# %bb.786:                              # %vector.body3939.preheader
	lu12i.w	$a2, 187
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a1, $a2, 2160
	add.d	$a1, $s0, $a1
	ori	$a0, $a0, 3328
.LBB5_787:                              # %vector.body3939
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 2
	ori	$a2, $a2, 992
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 992
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 960
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 960
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_787
	b	.LBB5_573
.LBB5_788:                              # %vector.body3902.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a1, %pc_hi20(global_data)
	addi.d	$a1, $a1, %pc_lo12(global_data)
	addi.d	$a3, $a1, 16
	lu12i.w	$a2, 7
	ori	$a4, $a2, 3328
.LBB5_789:                              # %vector.body3902
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 2
	ori	$a5, $a5, 1184
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 2
	ori	$a5, $a5, 1184
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 2
	ori	$a5, $a5, 1152
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 2
	ori	$a5, $a5, 1152
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_789
# %bb.790:                              # %vector.body3912.preheader
	lu12i.w	$a3, 62
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	ori	$a0, $a3, 2096
	add.d	$a0, $a1, $a0
	ori	$a1, $a2, 3328
.LBB5_791:                              # %vector.body3912
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1120
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1120
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1088
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1088
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_791
	b	.LBB5_573
.LBB5_792:                              # %vector.body3883.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 16
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
.LBB5_793:                              # %vector.body3883
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a3, 2
	ori	$a3, $a3, 1248
	add.d	$a3, $sp, $a3
	xvst	$xr2, $a3, 0
	lu12i.w	$a3, 2
	ori	$a3, $a3, 1248
	add.d	$a3, $sp, $a3
	vld	$vr2, $a3, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a3, 2
	ori	$a3, $a3, 1216
	add.d	$a3, $sp, $a3
	xvst	$xr1, $a3, 0
	lu12i.w	$a3, 2
	ori	$a3, $a3, 1216
	add.d	$a3, $sp, $a3
	vld	$vr1, $a3, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB5_793
# %bb.794:                              # %.preheader34.i2757.preheader
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
.LBB5_795:                              # %.preheader34.i2757
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB5_795
	b	.LBB5_573
.LBB5_796:                              # %.preheader.i2765.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 62
	ori	$a2, $s1, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2112
	add.d	$a1, $s0, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_797:                              # %vector.body3856
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_797
# %bb.798:                              # %vector.body3863.preheader
	lu12i.w	$a2, 125
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 80
	add.d	$a2, $s0, $a2
	ori	$a3, $a0, 3328
.LBB5_799:                              # %vector.body3863
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a4, 2
	ori	$a4, $a4, 1376
	add.d	$a4, $sp, $a4
	xvst	$xr2, $a4, 0
	lu12i.w	$a4, 2
	ori	$a4, $a4, 1376
	add.d	$a4, $sp, $a4
	vld	$vr2, $a4, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a4, 2
	ori	$a4, $a4, 1344
	add.d	$a4, $sp, $a4
	xvst	$xr1, $a4, 0
	lu12i.w	$a4, 2
	ori	$a4, $a4, 1344
	add.d	$a4, $sp, $a4
	vld	$vr1, $a4, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_799
# %bb.800:                              # %vector.body3873.preheader
	lu12i.w	$a2, 187
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a1, $a2, 2160
	add.d	$a1, $s0, $a1
	ori	$a0, $a0, 3328
.LBB5_801:                              # %vector.body3873
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1312
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1312
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1280
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1280
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_801
	b	.LBB5_573
.LBB5_802:                              # %vector.body3829.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_803:                              # %vector.body3829
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_803
# %bb.804:                              # %vector.body3836.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_805:                              # %vector.body3836
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 2
	ori	$a5, $a5, 1504
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 2
	ori	$a5, $a5, 1504
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 2
	ori	$a5, $a5, 1472
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 2
	ori	$a5, $a5, 1472
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_805
# %bb.806:                              # %vector.body3846.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 80
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_807:                              # %vector.body3846
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1440
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1440
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1408
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1408
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_807
	b	.LBB5_573
.LBB5_808:                              # %.preheader.i2797.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 62
	ori	$a2, $s1, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2096
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	add.d	$a0, $s0, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_809:                              # %vector.body3819
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1536
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1536
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1568
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1568
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_809
	b	.LBB5_573
.LBB5_810:                              # %.preheader.i2806.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 62
	ori	$a2, $s1, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2096
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	add.d	$a0, $s0, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_811:                              # %vector.body3809
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1600
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1600
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1632
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1632
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_811
	b	.LBB5_573
.LBB5_812:                              # %.preheader.i2815.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 62
	ori	$a2, $s1, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2096
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	add.d	$a0, $s0, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_813:                              # %vector.body3799
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1664
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1664
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1696
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1696
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_813
	b	.LBB5_573
.LBB5_814:                              # %.preheader.i2824.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 62
	ori	$a2, $s1, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2096
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	add.d	$a0, $s0, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_815:                              # %vector.body3789
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1728
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1728
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1760
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1760
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_815
	b	.LBB5_573
.LBB5_816:                              # %.preheader.i2833.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 62
	ori	$a2, $s1, 2048
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2096
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	add.d	$a0, $s0, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_817:                              # %vector.body3779
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1792
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1792
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1824
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1824
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_817
	b	.LBB5_573
.LBB5_818:                              # %vector.body3765.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_819:                              # %vector.body3765
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_819
# %bb.820:                              # %vector.body3772.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2112
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_821:                              # %vector.body3772
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_821
	b	.LBB5_573
.LBB5_822:                              # %vector.body3738.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_823:                              # %vector.body3738
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_823
# %bb.824:                              # %vector.body3745.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_825:                              # %vector.body3745
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 2
	ori	$a5, $a5, 1952
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 2
	ori	$a5, $a5, 1952
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 2
	ori	$a5, $a5, 1920
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 2
	ori	$a5, $a5, 1920
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_825
# %bb.826:                              # %vector.body3755.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 80
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_827:                              # %vector.body3755
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1888
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1888
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1856
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1856
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_827
	b	.LBB5_573
.LBB5_828:                              # %vector.body3721.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_829:                              # %vector.body3721
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_829
# %bb.830:                              # %vector.body3728.preheader
	lu12i.w	$a2, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2096
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_831:                              # %vector.body3728
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1984
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1984
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2016
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2016
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_831
	b	.LBB5_573
.LBB5_832:                              # %vector.body3697.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 16
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
.LBB5_833:                              # %vector.body3697
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vshuf4i.w	$vr1, $vr1, 8
	vshuf4i.w	$vr2, $vr2, 8
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a4, 2
	ori	$a4, $a4, 2048
	add.d	$a4, $sp, $a4
	xvst	$xr1, $a4, 0
	lu12i.w	$a4, 2
	ori	$a4, $a4, 2048
	add.d	$a4, $sp, $a4
	vld	$vr1, $a4, 0
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a4, 2
	ori	$a4, $a4, 2080
	add.d	$a4, $sp, $a4
	xvst	$xr2, $a4, 0
	lu12i.w	$a4, 2
	ori	$a4, $a4, 2080
	add.d	$a4, $sp, $a4
	vld	$vr2, $a4, 0
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a2, -16
	vst	$vr2, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_833
# %bb.834:                              # %vector.body3707.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2112
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_835:                              # %vector.body3707
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_835
# %bb.836:                              # %vector.body3714.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 96
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
	lu52i.d	$a2, $zero, -1025
	xvreplgr2vr.d	$xr0, $a2
.LBB5_837:                              # %vector.body3714
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_837
	b	.LBB5_573
.LBB5_838:                              # %vector.body3676.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_839:                              # %vector.body3676
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_839
# %bb.840:                              # %vector.body3683.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2112
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1024
	xvreplgr2vr.d	$xr0, $a4
.LBB5_841:                              # %vector.body3683
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_841
# %bb.842:                              # %vector.body3690.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 96
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
	lu52i.d	$a2, $zero, 1022
	xvreplgr2vr.d	$xr0, $a2
.LBB5_843:                              # %vector.body3690
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_843
	b	.LBB5_573
.LBB5_844:                              # %vector.body3666.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data+16)
	addi.d	$a0, $a0, %pc_lo12(global_data+16)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_845:                              # %vector.body3666
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2144
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2144
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2112
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2112
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_845
	b	.LBB5_573
.LBB5_846:                              # %vector.body3646.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a1, %pc_hi20(global_data)
	addi.d	$a1, $a1, %pc_lo12(global_data)
	addi.d	$a3, $a1, 16
	lu12i.w	$a2, 7
	ori	$a4, $a2, 3328
.LBB5_847:                              # %vector.body3646
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a5, 2
	ori	$a5, $a5, 2272
	add.d	$a5, $sp, $a5
	xvst	$xr2, $a5, 0
	lu12i.w	$a5, 2
	ori	$a5, $a5, 2272
	add.d	$a5, $sp, $a5
	vld	$vr2, $a5, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a5, 2
	ori	$a5, $a5, 2240
	add.d	$a5, $sp, $a5
	xvst	$xr1, $a5, 0
	lu12i.w	$a5, 2
	ori	$a5, $a5, 2240
	add.d	$a5, $sp, $a5
	vld	$vr1, $a5, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_847
# %bb.848:                              # %vector.body3656.preheader
	lu12i.w	$a3, 62
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	ori	$a0, $a3, 2096
	add.d	$a0, $a1, $a0
	ori	$a1, $a2, 3328
.LBB5_849:                              # %vector.body3656
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2208
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2208
	add.d	$a2, $sp, $a2
	vld	$vr2, $a2, 0
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2176
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2176
	add.d	$a2, $sp, $a2
	vld	$vr1, $a2, 0
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_849
	b	.LBB5_573
.Lfunc_end5:
	.size	init, .Lfunc_end5-init
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function s331
.LCPI6_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	s331
	.p2align	5
	.type	s331,@function
s331:                                   # @s331
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 112                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	pcaddu18i	$ra, %call36(init)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(ntimes)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB6_6
# %bb.1:                                # %vector.ph.preheader
	move	$s8, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI6_0)
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	lu12i.w	$a0, -524288
	vreplgr2vr.w	$vr0, $a0
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	addi.d	$a0, $fp, 32
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a0, 7
	ori	$a0, $a0, 3328
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	xvrepli.b	$xr7, 0
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$a0, 62
	ori	$a0, $a0, 2080
	add.d	$s0, $fp, $a0
	lu12i.w	$a0, 125
	ori	$a0, $a0, 64
	add.d	$s1, $fp, $a0
	lu12i.w	$a0, 187
	ori	$a0, $a0, 2144
	add.d	$s2, $fp, $a0
	lu12i.w	$a0, 250
	ori	$a0, $a0, 160
	add.d	$s3, $fp, $a0
	lu12i.w	$a0, 312
	ori	$a0, $a0, 2272
	add.d	$s4, $fp, $a0
	lu12i.w	$a0, 440
	ori	$a0, $a0, 2368
	add.d	$s5, $fp, $a0
	lu12i.w	$a0, 568
	ori	$a0, $a0, 2464
	add.d	$s6, $fp, $a0
	xvst	$xr7, $sp, 16                   # 32-byte Folded Spill
	.p2align	4, , 16
.LBB6_2:                                # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	vori.b	$vr0, $vr1, 0
	vld	$vr2, $sp, 80                   # 16-byte Folded Reload
	.p2align	4, , 16
.LBB6_3:                                # %vector.body
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr3, $a0, -32
	vaddi.wu	$vr4, $vr2, 4
	xvld	$xr5, $a0, 0
	xvfcmp.clt.d	$xr3, $xr3, $xr7
	xvpickve2gr.d	$a2, $xr3, 0
	vinsgr2vr.w	$vr6, $a2, 0
	xvpickve2gr.d	$a2, $xr3, 1
	vinsgr2vr.w	$vr6, $a2, 1
	xvpickve2gr.d	$a2, $xr3, 2
	vinsgr2vr.w	$vr6, $a2, 2
	xvpickve2gr.d	$a2, $xr3, 3
	vinsgr2vr.w	$vr6, $a2, 3
	xvfcmp.clt.d	$xr3, $xr5, $xr7
	xvpickve2gr.d	$a2, $xr3, 0
	vinsgr2vr.w	$vr5, $a2, 0
	xvpickve2gr.d	$a2, $xr3, 1
	vinsgr2vr.w	$vr5, $a2, 1
	xvpickve2gr.d	$a2, $xr3, 2
	vinsgr2vr.w	$vr5, $a2, 2
	xvpickve2gr.d	$a2, $xr3, 3
	vinsgr2vr.w	$vr5, $a2, 3
	vbitsel.v	$vr0, $vr0, $vr2, $vr6
	vbitsel.v	$vr1, $vr1, $vr4, $vr5
	vaddi.wu	$vr2, $vr2, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB6_3
# %bb.4:                                # %middle.block
                                        #   in Loop: Header=BB6_2 Depth=1
	vmax.w	$vr0, $vr0, $vr1
	vshuf4i.w	$vr1, $vr0, 14
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a0, $vr0, 0
	lu12i.w	$a1, -524288
	xor	$a1, $a0, $a1
	sltui	$a1, $a1, 1
	masknez	$a0, $a0, $a1
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	maskeqz	$a1, $a2, $a1
	or	$s7, $a1, $a0
	movgr2fr.w	$fa0, $s7
	ffint.d.w	$fa0, $fa0
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $s3
	move	$a5, $s4
	move	$a6, $s5
	move	$a7, $s6
	pcaddu18i	$ra, %call36(dummy)
	jirl	$ra, $ra, 0
	xvld	$xr7, $sp, 16                   # 32-byte Folded Reload
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	addi.w	$s8, $s8, 1
	blt	$s8, $a0, .LBB6_2
# %bb.5:                                # %._crit_edge.loopexit
	addi.d	$a0, $s7, 1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fs0, $fa0
	b	.LBB6_7
.LBB6_6:
	movgr2fr.d	$fs0, $zero
.LBB6_7:                                # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.L.str.137)
	addi.d	$a0, $a0, %pc_lo12(.L.str.137)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	pcalau12i	$a0, %pc_hi20(temp)
	fst.d	$fs0, $a0, %pc_lo12(temp)
	movfr2gr.d	$a2, $fs0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs0, $sp, 112                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end6:
	.size	s331, .Lfunc_end6-s331
                                        # -- End function
	.globl	max                             # -- Begin function max
	.p2align	5
	.type	max,@function
max:                                    # @max
# %bb.0:
	slt	$a2, $a0, $a1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	ret
.Lfunc_end7:
	.size	max, .Lfunc_end7-max
                                        # -- End function
	.globl	s332                            # -- Begin function s332
	.p2align	5
	.type	s332,@function
s332:                                   # @s332
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
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	pcaddu18i	$ra, %call36(init)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(ntimes)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB8_8
# %bb.1:                                # %.preheader.preheader
	move	$s8, $zero
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$a0, 7
	ori	$s7, $a0, 3328
	lu12i.w	$a0, 62
	ori	$a0, $a0, 2080
	add.d	$s0, $fp, $a0
	lu12i.w	$a0, 125
	ori	$a0, $a0, 64
	add.d	$s1, $fp, $a0
	lu12i.w	$a0, 187
	ori	$a0, $a0, 2144
	add.d	$s2, $fp, $a0
	lu12i.w	$a0, 250
	ori	$a0, $a0, 160
	add.d	$s3, $fp, $a0
	lu12i.w	$a0, 312
	ori	$a0, $a0, 2272
	add.d	$s4, $fp, $a0
	lu12i.w	$a0, 440
	ori	$a0, $a0, 2368
	add.d	$s5, $fp, $a0
	lu12i.w	$a0, 568
	ori	$a0, $a0, 2464
	add.d	$s6, $fp, $a0
	b	.LBB8_4
	.p2align	4, , 16
.LBB8_2:                                #   in Loop: Header=BB8_4 Depth=1
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
.LBB8_3:                                # %.loopexit
                                        #   in Loop: Header=BB8_4 Depth=1
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	fadd.d	$fa0, $fa1, $fa0
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $s3
	move	$a5, $s4
	move	$a6, $s5
	move	$a7, $s6
	pcaddu18i	$ra, %call36(dummy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	addi.w	$s8, $s8, 1
	bge	$s8, $a0, .LBB8_9
.LBB8_4:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_5 Depth 2
	move	$a0, $zero
	move	$a1, $s7
	move	$a2, $fp
	.p2align	4, , 16
.LBB8_5:                                #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a2, 0
	fcmp.cule.d	$fcc0, $fa1, $fs0
	bceqz	$fcc0, .LBB8_2
# %bb.6:                                #   in Loop: Header=BB8_5 Depth=2
	addi.w	$a0, $a0, 1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB8_5
# %bb.7:                                #   in Loop: Header=BB8_4 Depth=1
	vldi	$vr0, -896
	vldi	$vr1, -784
	b	.LBB8_3
.LBB8_8:
                                        # implicit-def: $f0_64
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
.LBB8_9:                                # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	pcalau12i	$a0, %pc_hi20(temp)
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	fst.d	$fa0, $a0, %pc_lo12(temp)
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
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
.Lfunc_end8:
	.size	s332, .Lfunc_end8-s332
                                        # -- End function
	.globl	min                             # -- Begin function min
	.p2align	5
	.type	min,@function
min:                                    # @min
# %bb.0:
	slt	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	ret
.Lfunc_end9:
	.size	min, .Lfunc_end9-min
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function set
.LCPI10_0:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI10_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.text
	.globl	set
	.p2align	5
	.type	set,@function
set:                                    # @set
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(xx)
	addi.d	$a0, $a0, %pc_lo12(xx)
	lu12i.w	$s2, 62
	ori	$a2, $s2, 2048
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$a1, $s1, 20
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2304
	.p2align	4, , 16
.LBB10_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a3, $a0, 5
	addi.d	$a4, $a0, 4
	addi.d	$a5, $a0, 9
	st.w	$a4, $a1, -20
	st.w	$a5, $a1, 0
	addi.d	$a4, $a0, 2
	addi.d	$a5, $a0, 7
	st.w	$a4, $a1, -16
	st.w	$a5, $a1, 4
	st.w	$a0, $a1, -12
	st.w	$a3, $a1, 8
	addi.d	$a3, $a0, 3
	addi.d	$a4, $a0, 8
	st.w	$a3, $a1, -8
	st.w	$a4, $a1, 12
	addi.d	$a3, $a0, 1
	addi.d	$a4, $a0, 6
	st.w	$a3, $a1, -4
	st.w	$a4, $a1, 16
	addi.d	$a0, $a0, 10
	addi.d	$a2, $a2, -2
	addi.d	$a1, $a1, 40
	bnez	$a2, .LBB10_1
# %bb.2:                                # %vector.body67.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a2, $a0, %pc_lo12(global_data)
	addi.d	$a3, $a2, 32
	lu12i.w	$a1, 7
	ori	$a4, $a1, 3328
	lu52i.d	$a0, $zero, 1023
	xvreplgr2vr.d	$xr0, $a0
	.p2align	4, , 16
.LBB10_3:                               # %vector.body67
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB10_3
# %bb.4:                                # %vector.body74.preheader
	ori	$a3, $s2, 2112
	add.d	$a3, $a2, $a3
	ori	$a4, $a1, 3328
	.p2align	4, , 16
.LBB10_5:                               # %vector.body74
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB10_5
# %bb.6:                                # %vector.body81.preheader
	lu12i.w	$a3, 125
	ori	$a3, $a3, 96
	add.d	$a3, $a2, $a3
	ori	$a4, $a1, 3328
	.p2align	4, , 16
.LBB10_7:                               # %vector.body81
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB10_7
# %bb.8:                                # %vector.body88.preheader
	lu12i.w	$a3, 187
	ori	$a3, $a3, 2176
	add.d	$a3, $a2, $a3
	ori	$a4, $a1, 3328
	.p2align	4, , 16
.LBB10_9:                               # %vector.body88
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB10_9
# %bb.10:                               # %vector.body95.preheader
	lu12i.w	$a3, 250
	ori	$a3, $a3, 192
	add.d	$a3, $a2, $a3
	ori	$a4, $a1, 3328
	.p2align	4, , 16
.LBB10_11:                              # %vector.body95
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB10_11
# %bb.12:                               # %.preheader34.i.preheader
	lu12i.w	$a3, 312
	ori	$a3, $a3, 3296
	add.d	$a3, $a2, $a3
	ori	$a4, $zero, 1
	ori	$a5, $zero, 256
	.p2align	4, , 16
.LBB10_13:                              # %.preheader34.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a6, $a4, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a3, -1024
	xvst	$xr0, $a3, -992
	xvst	$xr0, $a3, -960
	xvst	$xr0, $a3, -928
	xvst	$xr0, $a3, -896
	xvst	$xr0, $a3, -864
	xvst	$xr0, $a3, -832
	xvst	$xr0, $a3, -800
	xvst	$xr0, $a3, -768
	xvst	$xr0, $a3, -736
	xvst	$xr0, $a3, -704
	xvst	$xr0, $a3, -672
	xvst	$xr0, $a3, -640
	xvst	$xr0, $a3, -608
	xvst	$xr0, $a3, -576
	xvst	$xr0, $a3, -544
	xvst	$xr0, $a3, -512
	xvst	$xr0, $a3, -480
	xvst	$xr0, $a3, -448
	xvst	$xr0, $a3, -416
	xvst	$xr0, $a3, -384
	xvst	$xr0, $a3, -352
	xvst	$xr0, $a3, -320
	xvst	$xr0, $a3, -288
	xvst	$xr0, $a3, -256
	xvst	$xr0, $a3, -224
	xvst	$xr0, $a3, -192
	xvst	$xr0, $a3, -160
	xvst	$xr0, $a3, -128
	xvst	$xr0, $a3, -96
	xvst	$xr0, $a3, -64
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	xvst	$xr0, $a3, 32
	xvst	$xr0, $a3, 64
	xvst	$xr0, $a3, 96
	xvst	$xr0, $a3, 128
	xvst	$xr0, $a3, 160
	xvst	$xr0, $a3, 192
	xvst	$xr0, $a3, 224
	xvst	$xr0, $a3, 256
	xvst	$xr0, $a3, 288
	xvst	$xr0, $a3, 320
	xvst	$xr0, $a3, 352
	xvst	$xr0, $a3, 384
	xvst	$xr0, $a3, 416
	xvst	$xr0, $a3, 448
	xvst	$xr0, $a3, 480
	xvst	$xr0, $a3, 512
	xvst	$xr0, $a3, 544
	xvst	$xr0, $a3, 576
	xvst	$xr0, $a3, 608
	xvst	$xr0, $a3, 640
	xvst	$xr0, $a3, 672
	xvst	$xr0, $a3, 704
	xvst	$xr0, $a3, 736
	xvst	$xr0, $a3, 768
	xvst	$xr0, $a3, 800
	xvst	$xr0, $a3, 832
	xvst	$xr0, $a3, 864
	xvst	$xr0, $a3, 896
	xvst	$xr0, $a3, 928
	xvst	$xr0, $a3, 960
	xvst	$xr0, $a3, 992
	addi.w	$a4, $a4, 1
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, 2047
	addi.d	$a3, $a3, 1
	bnez	$a5, .LBB10_13
# %bb.14:                               # %.preheader34.i39.preheader
	lu12i.w	$a3, 440
	ori	$a3, $a3, 3392
	add.d	$a3, $a2, $a3
	ori	$a4, $zero, 1
	ori	$a5, $zero, 256
	.p2align	4, , 16
.LBB10_15:                              # %.preheader34.i39
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a6, $a4, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a3, -1024
	xvst	$xr0, $a3, -992
	xvst	$xr0, $a3, -960
	xvst	$xr0, $a3, -928
	xvst	$xr0, $a3, -896
	xvst	$xr0, $a3, -864
	xvst	$xr0, $a3, -832
	xvst	$xr0, $a3, -800
	xvst	$xr0, $a3, -768
	xvst	$xr0, $a3, -736
	xvst	$xr0, $a3, -704
	xvst	$xr0, $a3, -672
	xvst	$xr0, $a3, -640
	xvst	$xr0, $a3, -608
	xvst	$xr0, $a3, -576
	xvst	$xr0, $a3, -544
	xvst	$xr0, $a3, -512
	xvst	$xr0, $a3, -480
	xvst	$xr0, $a3, -448
	xvst	$xr0, $a3, -416
	xvst	$xr0, $a3, -384
	xvst	$xr0, $a3, -352
	xvst	$xr0, $a3, -320
	xvst	$xr0, $a3, -288
	xvst	$xr0, $a3, -256
	xvst	$xr0, $a3, -224
	xvst	$xr0, $a3, -192
	xvst	$xr0, $a3, -160
	xvst	$xr0, $a3, -128
	xvst	$xr0, $a3, -96
	xvst	$xr0, $a3, -64
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	xvst	$xr0, $a3, 32
	xvst	$xr0, $a3, 64
	xvst	$xr0, $a3, 96
	xvst	$xr0, $a3, 128
	xvst	$xr0, $a3, 160
	xvst	$xr0, $a3, 192
	xvst	$xr0, $a3, 224
	xvst	$xr0, $a3, 256
	xvst	$xr0, $a3, 288
	xvst	$xr0, $a3, 320
	xvst	$xr0, $a3, 352
	xvst	$xr0, $a3, 384
	xvst	$xr0, $a3, 416
	xvst	$xr0, $a3, 448
	xvst	$xr0, $a3, 480
	xvst	$xr0, $a3, 512
	xvst	$xr0, $a3, 544
	xvst	$xr0, $a3, 576
	xvst	$xr0, $a3, 608
	xvst	$xr0, $a3, 640
	xvst	$xr0, $a3, 672
	xvst	$xr0, $a3, 704
	xvst	$xr0, $a3, 736
	xvst	$xr0, $a3, 768
	xvst	$xr0, $a3, 800
	xvst	$xr0, $a3, 832
	xvst	$xr0, $a3, 864
	xvst	$xr0, $a3, 896
	xvst	$xr0, $a3, 928
	xvst	$xr0, $a3, 960
	xvst	$xr0, $a3, 992
	addi.w	$a4, $a4, 1
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, 2047
	addi.d	$a3, $a3, 1
	bnez	$a5, .LBB10_15
# %bb.16:                               # %.preheader34.i47.preheader
	lu12i.w	$a3, 568
	ori	$a3, $a3, 3488
	add.d	$a2, $a2, $a3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 256
	.p2align	4, , 16
.LBB10_17:                              # %.preheader34.i47
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	movgr2fr.d	$fa0, $a5
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a2, -1024
	xvst	$xr0, $a2, -992
	xvst	$xr0, $a2, -960
	xvst	$xr0, $a2, -928
	xvst	$xr0, $a2, -896
	xvst	$xr0, $a2, -864
	xvst	$xr0, $a2, -832
	xvst	$xr0, $a2, -800
	xvst	$xr0, $a2, -768
	xvst	$xr0, $a2, -736
	xvst	$xr0, $a2, -704
	xvst	$xr0, $a2, -672
	xvst	$xr0, $a2, -640
	xvst	$xr0, $a2, -608
	xvst	$xr0, $a2, -576
	xvst	$xr0, $a2, -544
	xvst	$xr0, $a2, -512
	xvst	$xr0, $a2, -480
	xvst	$xr0, $a2, -448
	xvst	$xr0, $a2, -416
	xvst	$xr0, $a2, -384
	xvst	$xr0, $a2, -352
	xvst	$xr0, $a2, -320
	xvst	$xr0, $a2, -288
	xvst	$xr0, $a2, -256
	xvst	$xr0, $a2, -224
	xvst	$xr0, $a2, -192
	xvst	$xr0, $a2, -160
	xvst	$xr0, $a2, -128
	xvst	$xr0, $a2, -96
	xvst	$xr0, $a2, -64
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	xvst	$xr0, $a2, 32
	xvst	$xr0, $a2, 64
	xvst	$xr0, $a2, 96
	xvst	$xr0, $a2, 128
	xvst	$xr0, $a2, 160
	xvst	$xr0, $a2, 192
	xvst	$xr0, $a2, 224
	xvst	$xr0, $a2, 256
	xvst	$xr0, $a2, 288
	xvst	$xr0, $a2, 320
	xvst	$xr0, $a2, 352
	xvst	$xr0, $a2, 384
	xvst	$xr0, $a2, 416
	xvst	$xr0, $a2, 448
	xvst	$xr0, $a2, 480
	xvst	$xr0, $a2, 512
	xvst	$xr0, $a2, 544
	xvst	$xr0, $a2, 576
	xvst	$xr0, $a2, 608
	xvst	$xr0, $a2, 640
	xvst	$xr0, $a2, 672
	xvst	$xr0, $a2, 704
	xvst	$xr0, $a2, 736
	xvst	$xr0, $a2, 768
	xvst	$xr0, $a2, 800
	xvst	$xr0, $a2, 832
	xvst	$xr0, $a2, 864
	xvst	$xr0, $a2, 896
	xvst	$xr0, $a2, 928
	xvst	$xr0, $a2, 960
	xvst	$xr0, $a2, 992
	addi.w	$a3, $a3, 1
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 2047
	addi.d	$a2, $a2, 1
	bnez	$a4, .LBB10_17
# %bb.18:                               # %vector.body127.preheader
	pcalau12i	$a2, %pc_hi20(.LCPI10_0)
	xvld	$xr0, $a2, %pc_lo12(.LCPI10_0)
	pcalau12i	$a2, %pc_hi20(.LCPI10_1)
	xvld	$xr1, $a2, %pc_lo12(.LCPI10_1)
	pcalau12i	$a2, %pc_hi20(indx)
	addi.d	$a2, $a2, %pc_lo12(indx)
	ori	$a1, $a1, 3328
	xvrepli.w	$xr2, 3
	.p2align	4, , 16
.LBB10_19:                              # %vector.body127
                                        # =>This Inner Loop Header: Depth=1
	xvpickve2gr.d	$a3, $xr1, 0
	xvinsgr2vr.w	$xr3, $a3, 0
	xvpickve2gr.d	$a3, $xr1, 1
	xvinsgr2vr.w	$xr3, $a3, 1
	xvpickve2gr.d	$a3, $xr1, 2
	xvinsgr2vr.w	$xr3, $a3, 2
	xvpickve2gr.d	$a3, $xr1, 3
	xvinsgr2vr.w	$xr3, $a3, 3
	xvpickve2gr.d	$a3, $xr0, 0
	xvinsgr2vr.w	$xr3, $a3, 4
	xvpickve2gr.d	$a3, $xr0, 1
	xvinsgr2vr.w	$xr3, $a3, 5
	xvpickve2gr.d	$a3, $xr0, 2
	xvinsgr2vr.w	$xr3, $a3, 6
	xvpickve2gr.d	$a3, $xr0, 3
	xvinsgr2vr.w	$xr3, $a3, 7
	xvaddi.wu	$xr3, $xr3, 1
	xvand.v	$xr3, $xr3, $xr2
	xvaddi.wu	$xr3, $xr3, 1
	xvst	$xr3, $a2, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a2, $a2, 32
	bnez	$a1, .LBB10_19
# %bb.20:                               # %middle.block130
	st.d	$a0, $s0, 0
	lu52i.d	$a0, $zero, 1024
	st.d	$a0, $fp, 0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end10:
	.size	set, .Lfunc_end10-set
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	lu12i.w	$a0, 62
	ori	$a2, $a0, 2048
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	bge	$a0, $s0, .LBB11_3
# %bb.1:
	ld.d	$a0, $fp, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(ntimes)
	st.w	$a0, $a1, %pc_lo12(ntimes)
	addi.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.140)
	addi.d	$a0, $a0, %pc_lo12(.L.str.140)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	beq	$s0, $a0, .LBB11_4
# %bb.2:
	ld.d	$a0, $fp, 16
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(digits)
	st.w	$a0, $a1, %pc_lo12(digits)
	b	.LBB11_4
.LBB11_3:                               # %.thread
	pcalau12i	$a0, %pc_hi20(ntimes)
	ld.w	$a1, $a0, %pc_lo12(ntimes)
	pcalau12i	$a0, %pc_hi20(.L.str.140)
	addi.d	$a0, $a0, %pc_lo12(.L.str.140)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB11_4:
	ld.d	$a0, $sp, 16
	addi.d	$a1, $sp, 8
	addi.d	$a2, $sp, 0
	pcaddu18i	$ra, %call36(set)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(s331)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 8
	pcaddu18i	$ra, %call36(s332)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end11:
	.size	main, .Lfunc_end11-main
                                        # -- End function
	.type	global_data,@object             # @global_data
	.bss
	.globl	global_data
	.p2align	5, 0x0
global_data:
	.space	3377664
	.size	global_data, 3377664

	.type	a,@object                       # @a
	.section	.data.rel.ro,"aw",@progbits
	.globl	a
	.p2align	5, 0x0
a:
	.dword	global_data
	.size	a, 8

	.type	b,@object                       # @b
	.globl	b
	.p2align	5, 0x0
b:
	.dword	global_data+256032
	.size	b, 8

	.type	c,@object                       # @c
	.globl	c
	.p2align	5, 0x0
c:
	.dword	global_data+512064
	.size	c, 8

	.type	d,@object                       # @d
	.globl	d
	.p2align	5, 0x0
d:
	.dword	global_data+768096
	.size	d, 8

	.type	e,@object                       # @e
	.globl	e
	.p2align	5, 0x0
e:
	.dword	global_data+1024160
	.size	e, 8

	.type	aa,@object                      # @aa
	.globl	aa
	.p2align	5, 0x0
aa:
	.dword	global_data+1280224
	.size	aa, 8

	.type	bb,@object                      # @bb
	.globl	bb
	.p2align	5, 0x0
bb:
	.dword	global_data+1804608
	.size	bb, 8

	.type	cc,@object                      # @cc
	.globl	cc
	.p2align	5, 0x0
cc:
	.dword	global_data+2328992
	.size	cc, 8

	.type	tt,@object                      # @tt
	.globl	tt
	.p2align	5, 0x0
tt:
	.dword	global_data+2853376
	.size	tt, 8

	.type	array,@object                   # @array
	.bss
	.globl	array
	.p2align	5, 0x0
array:
	.space	524288
	.size	array, 524288

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%.*G \n"
	.size	.L.str, 7

	.type	digits,@object                  # @digits
	.data
	.p2align	2, 0x0
digits:
	.word	6                               # 0x6
	.size	digits, 4

	.type	temp,@object                    # @temp
	.bss
	.globl	temp
	.p2align	3, 0x0
temp:
	.dword	0x0000000000000000              # double 0
	.size	temp, 8

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"s000 "
	.size	.L.str.1, 6

	.type	X,@object                       # @X
	.bss
	.globl	X
	.p2align	5, 0x0
X:
	.space	256000
	.size	X, 256000

	.type	Y,@object                       # @Y
	.globl	Y
	.p2align	5, 0x0
Y:
	.space	256000
	.size	Y, 256000

	.type	Z,@object                       # @Z
	.globl	Z
	.p2align	5, 0x0
Z:
	.space	256000
	.size	Z, 256000

	.type	U,@object                       # @U
	.globl	U
	.p2align	5, 0x0
U:
	.space	256000
	.size	U, 256000

	.type	V,@object                       # @V
	.globl	V
	.p2align	5, 0x0
V:
	.space	256000
	.size	V, 256000

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"s111 "
	.size	.L.str.2, 6

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"s112 "
	.size	.L.str.3, 6

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"s113 "
	.size	.L.str.4, 6

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"s114 "
	.size	.L.str.5, 6

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"s115 "
	.size	.L.str.6, 6

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"s116 "
	.size	.L.str.7, 6

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"s118 "
	.size	.L.str.8, 6

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"s119 "
	.size	.L.str.9, 6

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"s121 "
	.size	.L.str.10, 6

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"s122 "
	.size	.L.str.11, 6

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"s123 "
	.size	.L.str.12, 6

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"s124 "
	.size	.L.str.13, 6

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"s125 "
	.size	.L.str.14, 6

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"s126 "
	.size	.L.str.15, 6

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"s127 "
	.size	.L.str.16, 6

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"s128 "
	.size	.L.str.17, 6

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"s131 "
	.size	.L.str.18, 6

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"s132 "
	.size	.L.str.19, 6

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"s141 "
	.size	.L.str.20, 6

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"s151 "
	.size	.L.str.21, 6

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"s152 "
	.size	.L.str.22, 6

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"s161 "
	.size	.L.str.23, 6

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"s162 "
	.size	.L.str.24, 6

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"s171 "
	.size	.L.str.25, 6

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"s172 "
	.size	.L.str.26, 6

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"s173 "
	.size	.L.str.27, 6

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"s174 "
	.size	.L.str.28, 6

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"s175 "
	.size	.L.str.29, 6

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"s176 "
	.size	.L.str.30, 6

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"s211 "
	.size	.L.str.31, 6

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"s212 "
	.size	.L.str.32, 6

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"s221 "
	.size	.L.str.33, 6

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"s222 "
	.size	.L.str.34, 6

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"s231 "
	.size	.L.str.35, 6

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"s232 "
	.size	.L.str.36, 6

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"s233 "
	.size	.L.str.37, 6

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"s234 "
	.size	.L.str.38, 6

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"s235 "
	.size	.L.str.39, 6

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"s241 "
	.size	.L.str.40, 6

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"s242 "
	.size	.L.str.41, 6

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"s243 "
	.size	.L.str.42, 6

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"s244 "
	.size	.L.str.43, 6

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"s251 "
	.size	.L.str.44, 6

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"s252 "
	.size	.L.str.45, 6

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"s253 "
	.size	.L.str.46, 6

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"s254 "
	.size	.L.str.47, 6

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"s255 "
	.size	.L.str.48, 6

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"s256 "
	.size	.L.str.49, 6

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"s257 "
	.size	.L.str.50, 6

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"s258 "
	.size	.L.str.51, 6

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"s261 "
	.size	.L.str.52, 6

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"s271 "
	.size	.L.str.53, 6

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"s272 "
	.size	.L.str.54, 6

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"s273 "
	.size	.L.str.55, 6

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"s274 "
	.size	.L.str.56, 6

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"s275 "
	.size	.L.str.57, 6

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"s276 "
	.size	.L.str.58, 6

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"s277 "
	.size	.L.str.59, 6

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"s278 "
	.size	.L.str.60, 6

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"s279 "
	.size	.L.str.61, 6

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"s2710"
	.size	.L.str.62, 6

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"s2711"
	.size	.L.str.63, 6

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"s2712"
	.size	.L.str.64, 6

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"s281 "
	.size	.L.str.65, 6

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"s291 "
	.size	.L.str.66, 6

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"s292 "
	.size	.L.str.67, 6

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"s293 "
	.size	.L.str.68, 6

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"s2101"
	.size	.L.str.69, 6

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"s2102"
	.size	.L.str.70, 6

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"s2111"
	.size	.L.str.71, 6

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"s311 "
	.size	.L.str.72, 6

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"s312 "
	.size	.L.str.73, 6

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"s313 "
	.size	.L.str.74, 6

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"s314 "
	.size	.L.str.75, 6

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"s315 "
	.size	.L.str.76, 6

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"s316 "
	.size	.L.str.77, 6

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"s317 "
	.size	.L.str.78, 6

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"s318 "
	.size	.L.str.79, 6

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"s319 "
	.size	.L.str.80, 6

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"s3110"
	.size	.L.str.81, 6

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"s3111"
	.size	.L.str.82, 6

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"s3112"
	.size	.L.str.83, 6

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"s3113"
	.size	.L.str.84, 6

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"s321 "
	.size	.L.str.85, 6

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"s322 "
	.size	.L.str.86, 6

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"s323 "
	.size	.L.str.87, 6

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"s331 "
	.size	.L.str.88, 6

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"s332 "
	.size	.L.str.89, 6

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"s341 "
	.size	.L.str.90, 6

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"s342 "
	.size	.L.str.91, 6

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"s343 "
	.size	.L.str.92, 6

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"s351 "
	.size	.L.str.93, 6

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"s352 "
	.size	.L.str.94, 6

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"s353 "
	.size	.L.str.95, 6

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"s411 "
	.size	.L.str.96, 6

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"s412 "
	.size	.L.str.97, 6

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"s413 "
	.size	.L.str.98, 6

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"s414 "
	.size	.L.str.99, 6

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"s415 "
	.size	.L.str.100, 6

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"s421 "
	.size	.L.str.101, 6

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"s422 "
	.size	.L.str.102, 6

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"s423 "
	.size	.L.str.103, 6

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"s424 "
	.size	.L.str.104, 6

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"s431 "
	.size	.L.str.105, 6

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"s432 "
	.size	.L.str.106, 6

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"s441 "
	.size	.L.str.107, 6

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"s442 "
	.size	.L.str.108, 6

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"s443 "
	.size	.L.str.109, 6

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"s451 "
	.size	.L.str.110, 6

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"s452 "
	.size	.L.str.111, 6

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"s453 "
	.size	.L.str.112, 6

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	"s471 "
	.size	.L.str.113, 6

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"s481 "
	.size	.L.str.114, 6

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"s482 "
	.size	.L.str.115, 6

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"s491 "
	.size	.L.str.116, 6

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"s4112"
	.size	.L.str.117, 6

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"s4113"
	.size	.L.str.118, 6

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"s4114"
	.size	.L.str.119, 6

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"s4115"
	.size	.L.str.120, 6

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"s4116"
	.size	.L.str.121, 6

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	"s4117"
	.size	.L.str.122, 6

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	"s4121"
	.size	.L.str.123, 6

	.type	.L.str.124,@object              # @.str.124
.L.str.124:
	.asciz	"va\t"
	.size	.L.str.124, 4

	.type	.L.str.125,@object              # @.str.125
.L.str.125:
	.asciz	"vag  "
	.size	.L.str.125, 6

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	"vas  "
	.size	.L.str.126, 6

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"vif  "
	.size	.L.str.127, 6

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"vpv  "
	.size	.L.str.128, 6

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	"vtv  "
	.size	.L.str.129, 6

	.type	.L.str.130,@object              # @.str.130
.L.str.130:
	.asciz	"vpvtv"
	.size	.L.str.130, 6

	.type	.L.str.131,@object              # @.str.131
.L.str.131:
	.asciz	"vpvts"
	.size	.L.str.131, 6

	.type	.L.str.132,@object              # @.str.132
.L.str.132:
	.asciz	"vpvpv"
	.size	.L.str.132, 6

	.type	.L.str.133,@object              # @.str.133
.L.str.133:
	.asciz	"vtvtv"
	.size	.L.str.133, 6

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"vsumr"
	.size	.L.str.134, 6

	.type	.L.str.135,@object              # @.str.135
.L.str.135:
	.asciz	"vdotr"
	.size	.L.str.135, 6

	.type	.L.str.136,@object              # @.str.136
.L.str.136:
	.asciz	"vbor "
	.size	.L.str.136, 6

	.type	ntimes,@object                  # @ntimes
	.data
	.p2align	2, 0x0
ntimes:
	.word	200000                          # 0x30d40
	.size	ntimes, 4

	.type	.L.str.137,@object              # @.str.137
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.137:
	.asciz	"S331\t %.2f \t\t"
	.size	.L.str.137, 14

	.type	.L.str.138,@object              # @.str.138
.L.str.138:
	.asciz	"S332\t %.2f \t\t"
	.size	.L.str.138, 14

	.type	xx,@object                      # @xx
	.bss
	.globl	xx
	.p2align	3, 0x0
xx:
	.dword	0
	.size	xx, 8

	.type	indx,@object                    # @indx
	.globl	indx
	.p2align	5, 0x0
indx:
	.space	128000
	.size	indx, 128000

	.type	.L.str.140,@object              # @.str.140
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.140:
	.asciz	"Running each loop %d times...\n"
	.size	.L.str.140, 31

	.type	x,@object                       # @x
	.bss
	.globl	x
	.p2align	5, 0x0
x:
	.space	256000
	.size	x, 256000

	.type	temp_int,@object                # @temp_int
	.globl	temp_int
	.p2align	2, 0x0
temp_int:
	.word	0                               # 0x0
	.size	temp_int, 4

	.type	yy,@object                      # @yy
	.globl	yy
	.p2align	3, 0x0
yy:
	.dword	0
	.size	yy, 8

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"Loop \t Time(Sec) \t Checksum "
	.size	.Lstr, 29

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym global_data
	.addrsig_sym xx
