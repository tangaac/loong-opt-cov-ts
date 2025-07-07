	.file	"stencil.c"
	.text
	.globl	stencil_calc                    # -- Begin function stencil_calc
	.p2align	5
	.type	stencil_calc,@function
stencil_calc:                           # @stencil_calc
# %bb.0:
	addi.d	$sp, $sp, -432
	st.d	$ra, $sp, 424                   # 8-byte Folded Spill
	st.d	$fp, $sp, 416                   # 8-byte Folded Spill
	st.d	$s0, $sp, 408                   # 8-byte Folded Spill
	st.d	$s1, $sp, 400                   # 8-byte Folded Spill
	st.d	$s2, $sp, 392                   # 8-byte Folded Spill
	st.d	$s3, $sp, 384                   # 8-byte Folded Spill
	st.d	$s4, $sp, 376                   # 8-byte Folded Spill
	st.d	$s5, $sp, 368                   # 8-byte Folded Spill
	st.d	$s6, $sp, 360                   # 8-byte Folded Spill
	st.d	$s7, $sp, 352                   # 8-byte Folded Spill
	st.d	$s8, $sp, 344                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 336                  # 8-byte Folded Spill
	addi.d	$fp, $sp, 432
	pcalau12i	$a1, %pc_hi20(x_block_size)
	ld.w	$a1, $a1, %pc_lo12(x_block_size)
	st.d	$a0, $fp, -384                  # 8-byte Folded Spill
	st.d	$a1, $fp, -296                  # 8-byte Folded Spill
	addi.d	$a0, $a1, 2
	pcalau12i	$a1, %pc_hi20(y_block_size)
	ld.wu	$a1, $a1, %pc_lo12(y_block_size)
	bstrpick.d	$a2, $a0, 31, 0
	pcalau12i	$a0, %pc_hi20(z_block_size)
	ld.wu	$a3, $a0, %pc_lo12(z_block_size)
	addi.w	$a0, $a1, 0
	st.d	$a0, $fp, -360                  # 8-byte Folded Spill
	st.d	$a1, $fp, -320                  # 8-byte Folded Spill
	addi.d	$a4, $a1, 2
	bstrpick.d	$a1, $a4, 31, 0
	addi.w	$a0, $a3, 0
	st.d	$a0, $fp, -368                  # 8-byte Folded Spill
	addi.d	$a5, $a3, 2
	bstrpick.d	$a0, $a5, 31, 0
	mulw.d.wu	$a4, $a5, $a4
	mul.d	$a2, $a4, $a2
	slli.d	$a2, $a2, 3
	addi.d	$a2, $a2, 15
	bstrins.d	$a2, $zero, 3, 0
	sub.d	$a2, $sp, $a2
	move	$sp, $a2
	pcalau12i	$a4, %pc_hi20(sorted_index)
	ld.d	$a4, $a4, %pc_lo12(sorted_index)
	pcalau12i	$a5, %pc_hi20(num_refine)
	ld.w	$a5, $a5, %pc_lo12(num_refine)
	pcalau12i	$a6, %pc_hi20(stencil)
	ld.w	$a6, $a6, %pc_lo12(stencil)
	alsl.d	$a4, $a5, $a4, 2
	ld.w	$a5, $a4, 4
	ori	$a4, $zero, 7
	st.d	$a5, $fp, -344                  # 8-byte Folded Spill
	bne	$a6, $a4, .LBB0_24
# %bb.1:                                # %.preheader255
	ori	$a4, $zero, 1
	blt	$a5, $a4, .LBB0_59
# %bb.2:                                # %.lr.ph313
	move	$t2, $zero
	pcalau12i	$a4, %pc_hi20(sorted_list)
	ld.d	$a4, $a4, %pc_lo12(sorted_list)
	st.d	$a4, $fp, -184                  # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(blocks)
	ld.d	$a4, $a4, %pc_lo12(blocks)
	st.d	$a4, $fp, -176                  # 8-byte Folded Spill
	ld.d	$t0, $fp, -296                  # 8-byte Folded Reload
	slti	$a4, $t0, 1
	ld.d	$a7, $fp, -360                  # 8-byte Folded Reload
	slti	$a5, $a7, 1
	ld.d	$t1, $fp, -368                  # 8-byte Folded Reload
	slti	$a6, $t1, 1
	addi.w	$s6, $t1, 1
	addi.d	$a7, $a7, 1
	addi.d	$t0, $t0, 1
	slli.d	$t1, $a3, 3
	bstrpick.d	$a3, $t0, 31, 0
	st.d	$a3, $fp, -144                  # 8-byte Folded Spill
	bstrpick.d	$s8, $s6, 31, 0
	addi.d	$a3, $s8, -1
	bstrpick.d	$s0, $a7, 31, 0
	move	$s5, $a3
	bstrins.d	$s5, $zero, 1, 0
	st.d	$a3, $fp, -112                  # 8-byte Folded Spill
	move	$a7, $a3
	ori	$a3, $zero, 1
	bstrins.d	$a7, $a3, 1, 0
	st.d	$a7, $fp, -120                  # 8-byte Folded Spill
	or	$a3, $a4, $a5
	or	$a3, $a3, $a6
	st.d	$a3, $fp, -200                  # 8-byte Folded Spill
	slli.d	$a3, $a1, 3
	addi.d	$a3, $a3, 8
	mul.d	$a3, $a3, $a0
	add.d	$a2, $a2, $a3
	st.d	$a2, $fp, -208                  # 8-byte Folded Spill
	addi.d	$a2, $a2, 8
	st.d	$a2, $fp, -192                  # 8-byte Folded Spill
	mul.d	$a1, $a0, $a1
	slli.d	$a1, $a1, 3
	st.d	$a1, $fp, -128                  # 8-byte Folded Spill
	slli.d	$s7, $a0, 3
	ori	$a0, $zero, 0
	lu32i.d	$a0, -262144
	lu52i.d	$a0, $a0, 1025
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $fp, -240                 # 32-byte Folded Spill
	st.d	$t1, $fp, -104                  # 8-byte Folded Spill
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %.loopexit
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$t2, $fp, -168                  # 8-byte Folded Reload
	addi.d	$t2, $t2, 1
	ld.d	$a0, $fp, -344                  # 8-byte Folded Reload
	beq	$t2, $a0, .LBB0_59
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_12 Depth 3
                                        #         Child Loop BB0_14 Depth 4
                                        #         Child Loop BB0_18 Depth 4
                                        #     Child Loop BB0_21 Depth 2
                                        #       Child Loop BB0_22 Depth 3
	st.d	$t2, $fp, -168                  # 8-byte Folded Spill
	ld.d	$a0, $fp, -184                  # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	ld.w	$a0, $a0, 4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	ld.d	$a1, $fp, -176                  # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	bltz	$a1, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $fp, -296                  # 8-byte Folded Reload
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB0_3
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $fp, -360                  # 8-byte Folded Reload
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB0_3
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $fp, -368                  # 8-byte Folded Reload
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB0_3
# %bb.8:                                # %.preheader252.lr.ph.split.split
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $fp, -176                  # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $fp, -152                  # 8-byte Folded Spill
	ld.d	$a0, $a0, 184
	ld.d	$a1, $fp, -384                  # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	st.d	$a1, $fp, -160                  # 8-byte Folded Spill
	ldx.d	$a0, $a0, $a1
	st.d	$a0, $fp, -136                  # 8-byte Folded Spill
	ori	$a3, $zero, 1
	ld.d	$t1, $fp, -208                  # 8-byte Folded Reload
	ld.d	$a4, $fp, -192                  # 8-byte Folded Reload
	vldi	$vr5, -996
	xvld	$xr6, $fp, -240                 # 32-byte Folded Reload
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                # %._crit_edge294.split
                                        #   in Loop: Header=BB0_10 Depth=2
	addi.d	$a3, $a3, 1
	ld.d	$a0, $fp, -128                  # 8-byte Folded Reload
	add.d	$a4, $a4, $a0
	add.d	$t1, $s3, $a0
	ld.d	$a0, $fp, -144                  # 8-byte Folded Reload
	beq	$a3, $a0, .LBB0_19
.LBB0_10:                               # %.preheader252
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_12 Depth 3
                                        #         Child Loop BB0_14 Depth 4
                                        #         Child Loop BB0_18 Depth 4
	ld.d	$a2, $fp, -136                  # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a2, 3
	slli.d	$a1, $a3, 3
	ld.d	$a6, $a0, -8
	ldx.d	$a7, $a2, $a1
	ld.d	$t0, $a0, 8
	move	$s3, $t1
	move	$a5, $a4
	ori	$t3, $zero, 1
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_11:                               # %._crit_edge291
                                        #   in Loop: Header=BB0_12 Depth=3
	addi.d	$t3, $t3, 1
	add.d	$a5, $a5, $s7
	add.d	$t1, $t1, $s7
	beq	$t3, $s0, .LBB0_9
.LBB0_12:                               # %.preheader250
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_14 Depth 4
                                        #         Child Loop BB0_18 Depth 4
	slli.d	$a0, $t3, 3
	ldx.d	$t4, $a6, $a0
	alsl.d	$a1, $t3, $a7, 3
	ldx.d	$t7, $a7, $a0
	ld.d	$t5, $a1, -8
	ld.d	$t6, $a1, 8
	ldx.d	$t8, $t0, $a0
	fld.d	$fa0, $t7, 8
	ori	$s1, $zero, 1
	ori	$a0, $zero, 5
	bltu	$s6, $a0, .LBB0_17
# %bb.13:                               # %vector.ph535
                                        #   in Loop: Header=BB0_12 Depth=3
	xvpermi.d	$xr0, $xr0, 68
	xvpackev.d	$xr0, $xr0, $xr0
	addi.d	$s2, $t7, 16
	addi.d	$ra, $t4, 8
	addi.d	$a0, $t5, 8
	addi.d	$a1, $t6, 8
	addi.d	$a2, $t8, 8
	move	$s4, $s5
	move	$t2, $a5
	.p2align	4, , 16
.LBB0_14:                               # %vector.body538
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvld	$xr1, $ra, 0
	xvld	$xr2, $a0, 0
	xvld	$xr3, $s2, -16
	xvpickve2gr.d	$s1, $xr0, 3
	xvld	$xr0, $s2, 0
	xvfadd.d	$xr1, $xr1, $xr2
	xvfadd.d	$xr1, $xr1, $xr3
	xvinsgr2vr.d	$xr2, $s1, 0
	xvpickve2gr.d	$s1, $xr0, 0
	xvinsgr2vr.d	$xr2, $s1, 1
	xvpickve2gr.d	$s1, $xr0, 1
	xvinsgr2vr.d	$xr2, $s1, 2
	xvpickve2gr.d	$s1, $xr0, 2
	xvinsgr2vr.d	$xr2, $s1, 3
	xvld	$xr3, $a1, 0
	xvld	$xr4, $a2, 0
	xvfadd.d	$xr1, $xr1, $xr2
	xvfadd.d	$xr1, $xr1, $xr0
	xvfadd.d	$xr1, $xr1, $xr3
	xvfadd.d	$xr1, $xr1, $xr4
	xvfdiv.d	$xr1, $xr1, $xr6
	xvst	$xr1, $t2, 0
	addi.d	$s2, $s2, 32
	addi.d	$ra, $ra, 32
	addi.d	$a0, $a0, 32
	addi.d	$a1, $a1, 32
	addi.d	$a2, $a2, 32
	addi.d	$s4, $s4, -4
	addi.d	$t2, $t2, 32
	bnez	$s4, .LBB0_14
# %bb.15:                               # %middle.block550
                                        #   in Loop: Header=BB0_12 Depth=3
	ld.d	$a0, $fp, -112                  # 8-byte Folded Reload
	beq	$a0, $s5, .LBB0_11
# %bb.16:                               #   in Loop: Header=BB0_12 Depth=3
	xvpickve2gr.d	$a0, $xr0, 3
	movgr2fr.d	$fa0, $a0
	ld.d	$s1, $fp, -120                  # 8-byte Folded Reload
.LBB0_17:                               # %scalar.ph533.preheader
                                        #   in Loop: Header=BB0_12 Depth=3
	alsl.d	$a0, $s1, $t7, 3
	addi.d	$a0, $a0, 8
	alsl.d	$a1, $s1, $t1, 3
	alsl.d	$a2, $s1, $t8, 3
	alsl.d	$t2, $s1, $t6, 3
	alsl.d	$t5, $s1, $t5, 3
	alsl.d	$t4, $s1, $t4, 3
	sub.d	$t6, $s8, $s1
	.p2align	4, , 16
.LBB0_18:                               # %scalar.ph533
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa1, $t4, 0
	fld.d	$fa2, $t5, 0
	fld.d	$fa3, $a0, -16
	fadd.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fa3
	fadd.d	$fa1, $fa1, $fa0
	fld.d	$fa0, $a0, 0
	fld.d	$fa2, $t2, 0
	fld.d	$fa3, $a2, 0
	fadd.d	$fa1, $fa1, $fa0
	fadd.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fa3
	fdiv.d	$fa1, $fa1, $fa5
	fst.d	$fa1, $a1, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$t2, $t2, 8
	addi.d	$t5, $t5, 8
	addi.d	$t6, $t6, -1
	addi.d	$t4, $t4, 8
	bnez	$t6, .LBB0_18
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_19:                               # %.preheader253
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$t1, $fp, -104                  # 8-byte Folded Reload
	ld.d	$a0, $fp, -200                  # 8-byte Folded Reload
	bnez	$a0, .LBB0_3
# %bb.20:                               # %.preheader251.lr.ph.split.split
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $fp, -152                  # 8-byte Folded Reload
	ld.d	$a0, $a0, 184
	ld.d	$a1, $fp, -160                  # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	st.d	$a0, $fp, -160                  # 8-byte Folded Spill
	move	$a1, $zero
	ori	$a2, $zero, 1
	ld.d	$s4, $fp, -192                  # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_21:                               # %.preheader251
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_22 Depth 3
	st.d	$a1, $fp, -136                  # 8-byte Folded Spill
	st.d	$a2, $fp, -152                  # 8-byte Folded Spill
	slli.d	$a0, $a2, 3
	ld.d	$a1, $fp, -160                  # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	addi.d	$s1, $a0, 8
	ld.d	$s3, $fp, -320                  # 8-byte Folded Reload
	move	$s2, $s4
	move	$a2, $t1
	.p2align	4, , 16
.LBB0_22:                               # %.preheader
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s1, 0
	addi.d	$a0, $a0, 8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, -104                  # 8-byte Folded Reload
	addi.d	$s1, $s1, 8
	addi.d	$s3, $s3, -1
	add.d	$s2, $s2, $s7
	bnez	$s3, .LBB0_22
# %bb.23:                               # %._crit_edge306.split
                                        #   in Loop: Header=BB0_21 Depth=2
	move	$t1, $a2
	ld.d	$a2, $fp, -152                  # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ld.d	$a1, $fp, -136                  # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $fp, -128                  # 8-byte Folded Reload
	add.d	$s4, $s4, $a0
	ld.d	$a0, $fp, -296                  # 8-byte Folded Reload
	bne	$a1, $a0, .LBB0_21
	b	.LBB0_3
.LBB0_24:                               # %.preheader264
	ori	$a4, $zero, 1
	blt	$a5, $a4, .LBB0_59
# %bb.25:                               # %.lr.ph
	move	$t2, $zero
	pcalau12i	$a4, %pc_hi20(sorted_list)
	ld.d	$a4, $a4, %pc_lo12(sorted_list)
	st.d	$a4, $fp, -392                  # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(blocks)
	ld.d	$a4, $a4, %pc_lo12(blocks)
	st.d	$a4, $fp, -376                  # 8-byte Folded Spill
	ld.d	$t0, $fp, -296                  # 8-byte Folded Reload
	slti	$a4, $t0, 1
	ld.d	$a7, $fp, -360                  # 8-byte Folded Reload
	slti	$a5, $a7, 1
	ld.d	$t1, $fp, -368                  # 8-byte Folded Reload
	slti	$a6, $t1, 1
	addi.w	$t1, $t1, 1
	addi.d	$a7, $a7, 1
	addi.d	$t0, $t0, 1
	slli.d	$s8, $a3, 3
	bstrpick.d	$a3, $t0, 31, 0
	st.d	$a3, $fp, -328                  # 8-byte Folded Spill
	bstrpick.d	$t0, $a7, 31, 0
	st.d	$t1, $fp, -208                  # 8-byte Folded Spill
	bstrpick.d	$t1, $t1, 31, 0
	slli.d	$a3, $a1, 3
	addi.d	$a3, $a3, 8
	mul.d	$a3, $a3, $a0
	mul.d	$a7, $a0, $a1
	slli.d	$t3, $a7, 3
	st.d	$t0, $fp, -192                  # 8-byte Folded Spill
	add.d	$a1, $a1, $t0
	slli.d	$a1, $a1, 3
	addi.d	$a1, $a1, -8
	mul.d	$a1, $a1, $a0
	slli.d	$a7, $t1, 3
	addi.d	$a7, $a7, 8
	st.d	$a7, $fp, -176                  # 8-byte Folded Spill
	addi.d	$a7, $t1, -1
	add.d	$a3, $a2, $a3
	st.d	$a3, $fp, -416                  # 8-byte Folded Spill
	addi.d	$a3, $a3, 8
	st.d	$a3, $fp, -304                  # 8-byte Folded Spill
	add.d	$a1, $a2, $a1
	st.d	$t1, $fp, -168                  # 8-byte Folded Spill
	alsl.d	$a1, $t1, $a1, 3
	st.d	$a1, $fp, -336                  # 8-byte Folded Spill
	move	$a1, $a7
	bstrins.d	$a1, $zero, 1, 0
	st.d	$a1, $fp, -184                  # 8-byte Folded Spill
	st.d	$a7, $fp, -240                  # 8-byte Folded Spill
	ori	$a1, $zero, 1
	bstrins.d	$a7, $a1, 1, 0
	st.d	$a7, $fp, -248                  # 8-byte Folded Spill
	or	$a1, $a4, $a5
	or	$a1, $a1, $a6
	st.d	$a1, $fp, -424                  # 8-byte Folded Spill
	slli.d	$a0, $a0, 3
	st.d	$a0, $fp, -136                  # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, -327680
	lu52i.d	$s1, $a0, 1027
	st.d	$s8, $fp, -200                  # 8-byte Folded Spill
	st.d	$t3, $fp, -288                  # 8-byte Folded Spill
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_26:                               # %.loopexit262
                                        #   in Loop: Header=BB0_27 Depth=1
	ld.d	$t2, $fp, -352                  # 8-byte Folded Reload
	addi.d	$t2, $t2, 1
	ld.d	$a0, $fp, -344                  # 8-byte Folded Reload
	beq	$t2, $a0, .LBB0_59
.LBB0_27:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_33 Depth 2
                                        #       Child Loop BB0_35 Depth 3
                                        #         Child Loop BB0_49 Depth 4
                                        #         Child Loop BB0_38 Depth 4
                                        #     Child Loop BB0_56 Depth 2
                                        #       Child Loop BB0_57 Depth 3
	st.d	$t2, $fp, -352                  # 8-byte Folded Spill
	ld.d	$a0, $fp, -392                  # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	ld.w	$a0, $a0, 4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	ld.d	$a1, $fp, -376                  # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	bltz	$a1, .LBB0_26
# %bb.28:                               #   in Loop: Header=BB0_27 Depth=1
	ld.d	$a1, $fp, -296                  # 8-byte Folded Reload
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB0_26
# %bb.29:                               #   in Loop: Header=BB0_27 Depth=1
	ld.d	$a1, $fp, -360                  # 8-byte Folded Reload
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB0_26
# %bb.30:                               #   in Loop: Header=BB0_27 Depth=1
	ld.d	$a1, $fp, -368                  # 8-byte Folded Reload
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB0_26
# %bb.31:                               # %.preheader260.lr.ph.split.split
                                        #   in Loop: Header=BB0_27 Depth=1
	ld.d	$a1, $fp, -376                  # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $fp, -400                  # 8-byte Folded Spill
	ld.d	$a0, $a0, 184
	ld.d	$a1, $fp, -384                  # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	st.d	$a1, $fp, -408                  # 8-byte Folded Spill
	ldx.d	$a0, $a0, $a1
	st.d	$a0, $fp, -312                  # 8-byte Folded Spill
	move	$a1, $zero
	ori	$a2, $zero, 1
	ld.d	$t6, $fp, -416                  # 8-byte Folded Reload
	ld.d	$t7, $fp, -304                  # 8-byte Folded Reload
	ld.d	$s7, $fp, -192                  # 8-byte Folded Reload
	vldi	$vr24, -965
	b	.LBB0_33
	.p2align	4, , 16
.LBB0_32:                               # %._crit_edge270.split
                                        #   in Loop: Header=BB0_33 Depth=2
	ld.d	$a2, $fp, -264                  # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ld.d	$a1, $fp, -256                  # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$t3, $fp, -288                  # 8-byte Folded Reload
	ld.d	$t7, $fp, -280                  # 8-byte Folded Reload
	add.d	$t7, $t7, $t3
	ld.d	$t6, $fp, -272                  # 8-byte Folded Reload
	add.d	$t6, $t6, $t3
	ld.d	$a0, $fp, -328                  # 8-byte Folded Reload
	beq	$a2, $a0, .LBB0_54
.LBB0_33:                               # %.preheader260
                                        #   Parent Loop BB0_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_35 Depth 3
                                        #         Child Loop BB0_49 Depth 4
                                        #         Child Loop BB0_38 Depth 4
	st.d	$a1, $fp, -256                  # 8-byte Folded Spill
	mul.d	$a0, $t3, $a1
	ld.d	$a3, $fp, -312                  # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a3, 3
	ld.d	$a4, $a1, -8
	st.d	$a2, $fp, -264                  # 8-byte Folded Spill
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a3, $a2
	ld.d	$a1, $a1, 8
	ld.d	$s2, $a4, 0
	st.d	$a4, $fp, -144                  # 8-byte Folded Spill
	ld.d	$t8, $a4, 8
	ld.d	$ra, $a2, 0
	st.d	$a2, $fp, -152                  # 8-byte Folded Spill
	ld.d	$t2, $a2, 8
	ld.d	$a3, $a1, 0
	st.d	$a1, $fp, -160                  # 8-byte Folded Spill
	ld.d	$t3, $a1, 8
	fld.d	$ft3, $t8, 0
	fld.d	$fa7, $t8, 8
	fld.d	$ft2, $t2, 0
	fld.d	$ft0, $t2, 8
	fld.d	$ft1, $t3, 0
	fld.d	$fa6, $t3, 8
	ld.d	$a1, $fp, -304                  # 8-byte Folded Reload
	add.d	$t4, $a1, $a0
	ld.d	$a1, $fp, -336                  # 8-byte Folded Reload
	add.d	$t5, $a1, $a0
	st.d	$t6, $fp, -272                  # 8-byte Folded Spill
	st.d	$t7, $fp, -280                  # 8-byte Folded Spill
	ori	$t0, $zero, 1
	ld.d	$a2, $fp, -208                  # 8-byte Folded Reload
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_34:                               # %._crit_edge
                                        #   in Loop: Header=BB0_35 Depth=3
	ld.d	$a0, $fp, -136                  # 8-byte Folded Reload
	add.d	$t7, $t7, $a0
	add.d	$t6, $t6, $a0
	fmov.d	$fa6, $fa5
	fmov.d	$ft1, $fa4
	fmov.d	$ft0, $fa3
	fmov.d	$ft2, $fa2
	fmov.d	$fa7, $fa1
	fmov.d	$ft3, $fa0
	ld.d	$a3, $fp, -120                  # 8-byte Folded Reload
	ld.d	$ra, $fp, -112                  # 8-byte Folded Reload
	ld.d	$s2, $fp, -104                  # 8-byte Folded Reload
	ld.d	$t0, $fp, -128                  # 8-byte Folded Reload
	beq	$t0, $s7, .LBB0_32
.LBB0_35:                               # %.preheader258
                                        #   Parent Loop BB0_27 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_49 Depth 4
                                        #         Child Loop BB0_38 Depth 4
	move	$t1, $t8
	addi.d	$t0, $t0, 1
	slli.d	$a1, $t0, 3
	ld.d	$a0, $fp, -144                  # 8-byte Folded Reload
	ldx.d	$t8, $a0, $a1
	move	$s0, $t2
	move	$s4, $t3
	ld.d	$a0, $fp, -152                  # 8-byte Folded Reload
	ldx.d	$t2, $a0, $a1
	ld.d	$a0, $fp, -160                  # 8-byte Folded Reload
	ldx.d	$t3, $a0, $a1
	fld.d	$fa0, $t8, 0
	fld.d	$fa1, $t8, 8
	fld.d	$fa2, $t2, 0
	fld.d	$fa3, $t2, 8
	fld.d	$fa4, $t3, 0
	fld.d	$fa5, $t3, 8
	ori	$a7, $zero, 1
	ori	$a0, $zero, 5
	st.d	$t0, $fp, -128                  # 8-byte Folded Spill
	st.d	$t1, $fp, -104                  # 8-byte Folded Spill
	st.d	$s0, $fp, -112                  # 8-byte Folded Spill
	st.d	$s4, $fp, -120                  # 8-byte Folded Spill
	bgeu	$a2, $a0, .LBB0_39
.LBB0_36:                               #   in Loop: Header=BB0_35 Depth=3
	fmov.d	$ft4, $fa5
	fmov.d	$ft5, $fa4
	fmov.d	$ft6, $fa3
	fmov.d	$ft8, $fa2
	fmov.d	$ft7, $fa1
	fmov.d	$ft9, $fa0
.LBB0_37:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_35 Depth=3
	slli.d	$a4, $a7, 3
	addi.d	$a6, $t1, 8
	addi.d	$t0, $t8, 8
	addi.d	$t1, $s0, 8
	addi.d	$s0, $t2, 8
	ld.d	$a0, $fp, -168                  # 8-byte Folded Reload
	sub.d	$a7, $a0, $a7
	addi.d	$s3, $t3, 8
	addi.d	$s5, $s4, 8
	addi.d	$a3, $a3, 8
	move	$s6, $t6
	.p2align	4, , 16
.LBB0_38:                               # %scalar.ph
                                        #   Parent Loop BB0_27 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        #       Parent Loop BB0_35 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.d	$a0, $s2, $a4
	fld.d	$ft10, $a0, -8
	fldx.d	$ft11, $s2, $a4
	fadd.d	$ft10, $ft10, $ft11
	fld.d	$ft11, $a0, 8
	add.d	$a0, $ra, $a4
	fld.d	$ft12, $a0, -8
	fldx.d	$ft13, $ra, $a4
	fld.d	$ft14, $a0, 8
	fadd.d	$ft10, $ft10, $ft11
	fadd.d	$ft10, $ft10, $ft3
	fmov.d	$ft3, $fa7
	fadd.d	$fa7, $ft12, $ft13
	fadd.d	$fa7, $fa7, $ft14
	fadd.d	$ft11, $fa7, $ft2
	fmov.d	$ft2, $ft0
	add.d	$a0, $a3, $a4
	fld.d	$ft0, $a0, -16
	fld.d	$ft12, $a0, -8
	fldx.d	$ft13, $a3, $a4
	fadd.d	$ft10, $ft10, $ft3
	fldx.d	$fa7, $a6, $a4
	fadd.d	$ft0, $ft0, $ft12
	fadd.d	$ft0, $ft0, $ft13
	fadd.d	$ft1, $ft0, $ft1
	fmov.d	$ft12, $fa6
	fadd.d	$ft10, $ft10, $fa7
	fadd.d	$ft11, $ft11, $ft2
	fldx.d	$ft0, $t1, $a4
	fadd.d	$ft1, $ft1, $fa6
	fldx.d	$fa6, $s5, $a4
	fadd.d	$ft9, $ft10, $ft9
	fmov.d	$ft10, $ft7
	fadd.d	$ft7, $ft11, $ft0
	fadd.d	$ft8, $ft7, $ft8
	fmov.d	$ft11, $ft6
	fadd.d	$ft1, $ft1, $fa6
	fadd.d	$ft1, $ft1, $ft5
	fmov.d	$ft5, $ft4
	fadd.d	$ft13, $ft9, $ft10
	fldx.d	$ft7, $t0, $a4
	fadd.d	$ft14, $ft8, $ft6
	fldx.d	$ft6, $s0, $a4
	fldx.d	$ft4, $s3, $a4
	fadd.d	$ft15, $ft1, $ft5
	fmov.d	$ft1, $ft12
	fmov.d	$ft8, $ft11
                                        # kill: def $f10_64 killed $f10_64 def $xr10
	fmov.d	$ft9, $ft10
                                        # kill: def $f11_64 killed $f11_64 def $xr11
	fadd.d	$ft10, $ft13, $ft7
	fadd.d	$ft11, $ft14, $ft6
	fadd.d	$ft12, $ft15, $ft4
	fadd.d	$ft10, $ft10, $ft11
	fadd.d	$ft10, $ft10, $ft12
	fdiv.d	$ft10, $ft10, $fs0
	fstx.d	$ft10, $s6, $a4
	addi.d	$a6, $a6, 8
	addi.d	$t0, $t0, 8
	addi.d	$t1, $t1, 8
	addi.d	$s6, $s6, 8
	addi.d	$s0, $s0, 8
	addi.d	$ra, $ra, 8
	addi.d	$s2, $s2, 8
	addi.d	$a7, $a7, -1
	addi.d	$s3, $s3, 8
	addi.d	$s5, $s5, 8
	addi.d	$a3, $a3, 8
	bnez	$a7, .LBB0_38
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_39:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_35 Depth=3
	addi.d	$a6, $t1, 16
	ld.d	$a0, $fp, -176                  # 8-byte Folded Reload
	add.d	$a1, $t1, $a0
	sltu	$a1, $t4, $a1
	sltu	$a4, $a6, $t5
	and	$a1, $a1, $a4
	bnez	$a1, .LBB0_36
# %bb.40:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_35 Depth=3
	add.d	$a1, $s2, $a0
	sltu	$a1, $t4, $a1
	sltu	$a4, $s2, $t5
	and	$a1, $a1, $a4
	bnez	$a1, .LBB0_36
# %bb.41:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_35 Depth=3
	addi.d	$a4, $t8, 16
	add.d	$a1, $t8, $a0
	sltu	$a1, $t4, $a1
	sltu	$a5, $a4, $t5
	and	$a1, $a1, $a5
	bnez	$a1, .LBB0_36
# %bb.42:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_35 Depth=3
	addi.d	$s5, $s0, 16
	add.d	$a1, $s0, $a0
	sltu	$a1, $t4, $a1
	sltu	$a5, $s5, $t5
	and	$a1, $a1, $a5
	bnez	$a1, .LBB0_36
# %bb.43:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_35 Depth=3
	add.d	$a1, $ra, $a0
	sltu	$a1, $t4, $a1
	sltu	$a5, $ra, $t5
	and	$a1, $a1, $a5
	bnez	$a1, .LBB0_36
# %bb.44:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_35 Depth=3
	addi.d	$s3, $t2, 16
	add.d	$a1, $t2, $a0
	sltu	$a1, $t4, $a1
	sltu	$a5, $s3, $t5
	and	$a1, $a1, $a5
	bnez	$a1, .LBB0_36
# %bb.45:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_35 Depth=3
	addi.d	$s7, $s4, 16
	add.d	$a1, $s4, $a0
	sltu	$a1, $t4, $a1
	sltu	$a5, $s7, $t5
	and	$a1, $a1, $a5
	bnez	$a1, .LBB0_53
# %bb.46:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_35 Depth=3
	add.d	$a1, $a3, $a0
	sltu	$a1, $t4, $a1
	sltu	$a5, $a3, $t5
	and	$a1, $a1, $a5
	bnez	$a1, .LBB0_53
# %bb.47:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_35 Depth=3
	addi.d	$s8, $t3, 16
	add.d	$a1, $t3, $a0
	sltu	$a1, $t4, $a1
	sltu	$a5, $s8, $t5
	and	$a1, $a1, $a5
	bnez	$a1, .LBB0_52
# %bb.48:                               # %vector.ph
                                        #   in Loop: Header=BB0_35 Depth=3
	move	$s6, $zero
	xvpermi.d	$xr12, $xr5, 68
	xvpackev.d	$xr19, $xr12, $xr12
	xvpermi.d	$xr12, $xr4, 68
	xvpackev.d	$xr12, $xr12, $xr12
	xvpermi.d	$xr6, $xr6, 68
	xvpackev.d	$xr18, $xr6, $xr6
	xvpermi.d	$xr6, $xr9, 68
	xvpackev.d	$xr6, $xr6, $xr6
	xvpermi.d	$xr9, $xr3, 68
	xvpackev.d	$xr14, $xr9, $xr9
	xvpermi.d	$xr9, $xr2, 68
	xvpackev.d	$xr13, $xr9, $xr9
	xvpermi.d	$xr8, $xr8, 68
	xvpackev.d	$xr17, $xr8, $xr8
	xvpermi.d	$xr8, $xr10, 68
	xvpackev.d	$xr16, $xr8, $xr8
	xvpermi.d	$xr8, $xr1, 68
	xvpackev.d	$xr15, $xr8, $xr8
	xvpermi.d	$xr8, $xr0, 68
	xvpackev.d	$xr10, $xr8, $xr8
	xvpermi.d	$xr7, $xr7, 68
	xvpackev.d	$xr7, $xr7, $xr7
	xvpermi.d	$xr8, $xr11, 68
	xvpackev.d	$xr8, $xr8, $xr8
	ld.d	$a7, $fp, -184                  # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_49:                               # %vector.body
                                        #   Parent Loop BB0_27 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        #       Parent Loop BB0_35 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.d	$a1, $s2, $s6
	xvldx	$xr20, $s2, $s6
	xvld	$xr21, $a1, 8
	xvori.b	$xr11, $xr18, 0
	xvori.b	$xr9, $xr19, 0
	xvld	$xr18, $a1, 16
	xvfadd.d	$xr19, $xr20, $xr21
	xvpickve2gr.d	$a1, $xr7, 3
	xvldx	$xr7, $a6, $s6
	xvfadd.d	$xr18, $xr19, $xr18
	xvpickve2gr.d	$a5, $xr8, 3
	xvinsgr2vr.d	$xr8, $a1, 0
	xvpickve2gr.d	$a1, $xr7, 0
	xvinsgr2vr.d	$xr8, $a1, 1
	xvpickve2gr.d	$a1, $xr7, 1
	xvinsgr2vr.d	$xr8, $a1, 2
	xvpickve2gr.d	$t0, $xr7, 2
	xvinsgr2vr.d	$xr8, $t0, 3
	xvpickve2gr.d	$a1, $xr8, 0
	xvinsgr2vr.d	$xr19, $a5, 0
	xvinsgr2vr.d	$xr19, $a1, 1
	xvpickve2gr.d	$a1, $xr8, 1
	xvinsgr2vr.d	$xr19, $a1, 2
	xvpickve2gr.d	$a1, $xr8, 2
	xvinsgr2vr.d	$xr19, $a1, 3
	xvfadd.d	$xr18, $xr18, $xr19
	xvfadd.d	$xr18, $xr18, $xr8
	xvpickve2gr.d	$a1, $xr15, 3
	xvldx	$xr15, $a4, $s6
	xvfadd.d	$xr18, $xr18, $xr7
	xvpickve2gr.d	$a5, $xr10, 3
	xvinsgr2vr.d	$xr10, $a1, 0
	xvpickve2gr.d	$a1, $xr15, 0
	xvinsgr2vr.d	$xr10, $a1, 1
	xvpickve2gr.d	$a1, $xr15, 1
	xvinsgr2vr.d	$xr10, $a1, 2
	xvpickve2gr.d	$t1, $xr15, 2
	xvinsgr2vr.d	$xr10, $t1, 3
	xvpickve2gr.d	$a1, $xr10, 0
	xvinsgr2vr.d	$xr19, $a5, 0
	xvinsgr2vr.d	$xr19, $a1, 1
	xvpickve2gr.d	$a1, $xr10, 1
	xvinsgr2vr.d	$xr19, $a1, 2
	xvpickve2gr.d	$a1, $xr10, 2
	add.d	$a5, $ra, $s6
	xvldx	$xr20, $ra, $s6
	xvld	$xr21, $a5, 8
	xvinsgr2vr.d	$xr19, $a1, 3
	xvfadd.d	$xr18, $xr18, $xr19
	xvld	$xr19, $a5, 16
	xvfadd.d	$xr20, $xr20, $xr21
	xvpickve2gr.d	$a1, $xr17, 3
	xvldx	$xr17, $s5, $s6
	xvfadd.d	$xr19, $xr20, $xr19
	xvpickve2gr.d	$a5, $xr16, 3
	xvinsgr2vr.d	$xr16, $a1, 0
	xvpickve2gr.d	$a1, $xr17, 0
	xvinsgr2vr.d	$xr16, $a1, 1
	xvpickve2gr.d	$a1, $xr17, 1
	xvinsgr2vr.d	$xr16, $a1, 2
	xvpickve2gr.d	$s0, $xr17, 2
	xvinsgr2vr.d	$xr16, $s0, 3
	xvpickve2gr.d	$a1, $xr16, 0
	xvinsgr2vr.d	$xr20, $a5, 0
	xvinsgr2vr.d	$xr20, $a1, 1
	xvpickve2gr.d	$a1, $xr16, 1
	xvinsgr2vr.d	$xr20, $a1, 2
	xvpickve2gr.d	$a1, $xr16, 2
	xvinsgr2vr.d	$xr20, $a1, 3
	xvfadd.d	$xr19, $xr19, $xr20
	xvfadd.d	$xr19, $xr19, $xr16
	xvpickve2gr.d	$a1, $xr14, 3
	xvldx	$xr14, $s3, $s6
	xvfadd.d	$xr19, $xr19, $xr17
	xvpickve2gr.d	$a5, $xr13, 3
	xvinsgr2vr.d	$xr13, $a1, 0
	xvpickve2gr.d	$a1, $xr14, 0
	xvinsgr2vr.d	$xr13, $a1, 1
	xvpickve2gr.d	$a1, $xr14, 1
	xvinsgr2vr.d	$xr13, $a1, 2
	xvpickve2gr.d	$s4, $xr14, 2
	xvinsgr2vr.d	$xr13, $s4, 3
	xvpickve2gr.d	$a1, $xr13, 0
	xvinsgr2vr.d	$xr20, $a5, 0
	xvinsgr2vr.d	$xr20, $a1, 1
	xvpickve2gr.d	$a1, $xr13, 1
	xvinsgr2vr.d	$xr20, $a1, 2
	xvpickve2gr.d	$a1, $xr13, 2
	xvinsgr2vr.d	$xr20, $a1, 3
	xvfadd.d	$xr19, $xr19, $xr20
	add.d	$a1, $a3, $s6
	xvldx	$xr21, $a3, $s6
	xvld	$xr22, $a1, 8
	xvfadd.d	$xr18, $xr18, $xr10
	xvfadd.d	$xr20, $xr18, $xr15
	xvfadd.d	$xr18, $xr19, $xr13
	xvfadd.d	$xr19, $xr21, $xr22
	xvld	$xr22, $a1, 16
	xvfadd.d	$xr21, $xr18, $xr14
	xvpickve2gr.d	$a1, $xr11, 3
	xvldx	$xr18, $s7, $s6
	xvfadd.d	$xr11, $xr19, $xr22
	xvpickve2gr.d	$a5, $xr6, 3
	xvinsgr2vr.d	$xr6, $a1, 0
	xvpickve2gr.d	$a1, $xr18, 0
	xvinsgr2vr.d	$xr6, $a1, 1
	xvpickve2gr.d	$a1, $xr18, 1
	xvinsgr2vr.d	$xr6, $a1, 2
	xvpickve2gr.d	$a1, $xr18, 2
	xvinsgr2vr.d	$xr6, $a1, 3
	xvpickve2gr.d	$a2, $xr6, 0
	xvinsgr2vr.d	$xr19, $a5, 0
	xvinsgr2vr.d	$xr19, $a2, 1
	xvpickve2gr.d	$a2, $xr6, 1
	xvinsgr2vr.d	$xr19, $a2, 2
	xvpickve2gr.d	$a2, $xr6, 2
	xvinsgr2vr.d	$xr19, $a2, 3
	xvfadd.d	$xr11, $xr11, $xr19
	xvfadd.d	$xr11, $xr11, $xr6
	xvpickve2gr.d	$a2, $xr9, 3
	xvldx	$xr19, $s8, $s6
	xvfadd.d	$xr9, $xr11, $xr18
	xvpickve2gr.d	$a0, $xr12, 3
	xvinsgr2vr.d	$xr12, $a2, 0
	xvpickve2gr.d	$a2, $xr19, 0
	xvinsgr2vr.d	$xr12, $a2, 1
	xvpickve2gr.d	$a2, $xr19, 1
	xvinsgr2vr.d	$xr12, $a2, 2
	xvpickve2gr.d	$a5, $xr19, 2
	xvinsgr2vr.d	$xr12, $a5, 3
	xvpickve2gr.d	$a2, $xr12, 0
	xvinsgr2vr.d	$xr11, $a0, 0
	xvinsgr2vr.d	$xr11, $a2, 1
	xvpickve2gr.d	$a0, $xr12, 1
	xvinsgr2vr.d	$xr11, $a0, 2
	xvpickve2gr.d	$a0, $xr12, 2
	xvinsgr2vr.d	$xr11, $a0, 3
	xvfadd.d	$xr9, $xr9, $xr11
	xvfadd.d	$xr9, $xr9, $xr12
	xvfadd.d	$xr9, $xr9, $xr19
	xvfadd.d	$xr11, $xr20, $xr21
	xvfadd.d	$xr9, $xr11, $xr9
	xvreplgr2vr.d	$xr11, $s1
	xvfdiv.d	$xr9, $xr9, $xr11
	xvstx	$xr9, $t7, $s6
	addi.d	$a7, $a7, -4
	addi.d	$s6, $s6, 32
	bnez	$a7, .LBB0_49
# %bb.50:                               # %middle.block
                                        #   in Loop: Header=BB0_35 Depth=3
	ld.d	$a2, $fp, -208                  # 8-byte Folded Reload
	ld.d	$s8, $fp, -200                  # 8-byte Folded Reload
	ld.d	$s7, $fp, -192                  # 8-byte Folded Reload
	ld.d	$a0, $fp, -240                  # 8-byte Folded Reload
	ld.d	$a4, $fp, -184                  # 8-byte Folded Reload
	beq	$a0, $a4, .LBB0_34
# %bb.51:                               #   in Loop: Header=BB0_35 Depth=3
	xvpickve2gr.d	$a0, $xr19, 3
	movgr2fr.d	$ft4, $a0
	movgr2fr.d	$ft5, $a5
	xvpickve2gr.d	$a0, $xr18, 3
	movgr2fr.d	$fa6, $a0
	movgr2fr.d	$ft1, $a1
	xvpickve2gr.d	$a0, $xr14, 3
	movgr2fr.d	$ft6, $a0
	movgr2fr.d	$ft8, $s4
	xvpickve2gr.d	$a0, $xr17, 3
	movgr2fr.d	$ft0, $a0
	movgr2fr.d	$ft2, $s0
	xvpickve2gr.d	$a0, $xr15, 3
	movgr2fr.d	$ft7, $a0
	movgr2fr.d	$ft9, $t1
	xvpickve2gr.d	$a0, $xr7, 3
	movgr2fr.d	$fa7, $a0
	movgr2fr.d	$ft3, $t0
	ld.d	$a7, $fp, -248                  # 8-byte Folded Reload
	ld.d	$t1, $fp, -104                  # 8-byte Folded Reload
	ld.d	$s0, $fp, -112                  # 8-byte Folded Reload
	ld.d	$s4, $fp, -120                  # 8-byte Folded Reload
	b	.LBB0_37
.LBB0_52:                               #   in Loop: Header=BB0_35 Depth=3
	fmov.d	$ft4, $fa5
	fmov.d	$ft5, $fa4
	fmov.d	$ft6, $fa3
	fmov.d	$ft8, $fa2
	fmov.d	$ft7, $fa1
	fmov.d	$ft9, $fa0
	ld.d	$s8, $fp, -200                  # 8-byte Folded Reload
	ld.d	$s7, $fp, -192                  # 8-byte Folded Reload
	b	.LBB0_37
.LBB0_53:                               #   in Loop: Header=BB0_35 Depth=3
	fmov.d	$ft4, $fa5
	fmov.d	$ft5, $fa4
	fmov.d	$ft6, $fa3
	fmov.d	$ft8, $fa2
	fmov.d	$ft7, $fa1
	fmov.d	$ft9, $fa0
	ld.d	$s7, $fp, -192                  # 8-byte Folded Reload
	b	.LBB0_37
	.p2align	4, , 16
.LBB0_54:                               # %.preheader261
                                        #   in Loop: Header=BB0_27 Depth=1
	ld.d	$a0, $fp, -424                  # 8-byte Folded Reload
	bnez	$a0, .LBB0_26
# %bb.55:                               # %.preheader259.lr.ph.split.split
                                        #   in Loop: Header=BB0_27 Depth=1
	ld.d	$a0, $fp, -400                  # 8-byte Folded Reload
	ld.d	$a0, $a0, 184
	ld.d	$a1, $fp, -408                  # 8-byte Folded Reload
	ldx.d	$s0, $a0, $a1
	move	$s3, $zero
	ori	$s4, $zero, 1
	ld.d	$s5, $fp, -304                  # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_56:                               # %.preheader259
                                        #   Parent Loop BB0_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_57 Depth 3
	slli.d	$a0, $s4, 3
	ldx.d	$a0, $s0, $a0
	addi.d	$s6, $a0, 8
	ld.d	$s7, $fp, -320                  # 8-byte Folded Reload
	move	$s2, $s5
	.p2align	4, , 16
.LBB0_57:                               # %.preheader257
                                        #   Parent Loop BB0_27 Depth=1
                                        #     Parent Loop BB0_56 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s6, 0
	addi.d	$a0, $a0, 8
	move	$a1, $s2
	move	$a2, $s8
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, 8
	addi.d	$s7, $s7, -1
	ld.d	$a0, $fp, -136                  # 8-byte Folded Reload
	add.d	$s2, $s2, $a0
	bnez	$s7, .LBB0_57
# %bb.58:                               # %._crit_edge281.split
                                        #   in Loop: Header=BB0_56 Depth=2
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 1
	ld.d	$t3, $fp, -288                  # 8-byte Folded Reload
	add.d	$s5, $s5, $t3
	ld.d	$a0, $fp, -296                  # 8-byte Folded Reload
	bne	$s3, $a0, .LBB0_56
	b	.LBB0_26
.LBB0_59:                               # %.loopexit256
	addi.d	$sp, $fp, -432
	fld.d	$fs0, $sp, 336                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 416                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 424                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 432
	ret
.Lfunc_end0:
	.size	stencil_calc, .Lfunc_end0-stencil_calc
                                        # -- End function
	.type	x_block_size,@object            # @x_block_size
	.comm	x_block_size,4,4
	.type	y_block_size,@object            # @y_block_size
	.comm	y_block_size,4,4
	.type	z_block_size,@object            # @z_block_size
	.comm	z_block_size,4,4
	.type	stencil,@object                 # @stencil
	.comm	stencil,4,4
	.type	sorted_index,@object            # @sorted_index
	.comm	sorted_index,8,8
	.type	num_refine,@object              # @num_refine
	.comm	num_refine,4,4
	.type	sorted_list,@object             # @sorted_list
	.comm	sorted_list,8,8
	.type	blocks,@object                  # @blocks
	.comm	blocks,8,8
	.type	parents,@object                 # @parents
	.comm	parents,8,8
	.type	my_pe,@object                   # @my_pe
	.comm	my_pe,4,4
	.type	num_pes,@object                 # @num_pes
	.comm	num_pes,4,4
	.type	max_num_blocks,@object          # @max_num_blocks
	.comm	max_num_blocks,4,4
	.type	target_active,@object           # @target_active
	.comm	target_active,4,4
	.type	target_max,@object              # @target_max
	.comm	target_max,4,4
	.type	target_min,@object              # @target_min
	.comm	target_min,4,4
	.type	uniform_refine,@object          # @uniform_refine
	.comm	uniform_refine,4,4
	.type	num_vars,@object                # @num_vars
	.comm	num_vars,4,4
	.type	comm_vars,@object               # @comm_vars
	.comm	comm_vars,4,4
	.type	init_block_x,@object            # @init_block_x
	.comm	init_block_x,4,4
	.type	init_block_y,@object            # @init_block_y
	.comm	init_block_y,4,4
	.type	init_block_z,@object            # @init_block_z
	.comm	init_block_z,4,4
	.type	reorder,@object                 # @reorder
	.comm	reorder,4,4
	.type	npx,@object                     # @npx
	.comm	npx,4,4
	.type	npy,@object                     # @npy
	.comm	npy,4,4
	.type	npz,@object                     # @npz
	.comm	npz,4,4
	.type	inbalance,@object               # @inbalance
	.comm	inbalance,4,4
	.type	refine_freq,@object             # @refine_freq
	.comm	refine_freq,4,4
	.type	report_diffusion,@object        # @report_diffusion
	.comm	report_diffusion,4,4
	.type	checksum_freq,@object           # @checksum_freq
	.comm	checksum_freq,4,4
	.type	stages_per_ts,@object           # @stages_per_ts
	.comm	stages_per_ts,4,4
	.type	error_tol,@object               # @error_tol
	.comm	error_tol,4,4
	.type	num_tsteps,@object              # @num_tsteps
	.comm	num_tsteps,4,4
	.type	report_perf,@object             # @report_perf
	.comm	report_perf,4,4
	.type	plot_freq,@object               # @plot_freq
	.comm	plot_freq,4,4
	.type	lb_opt,@object                  # @lb_opt
	.comm	lb_opt,4,4
	.type	block_change,@object            # @block_change
	.comm	block_change,4,4
	.type	code,@object                    # @code
	.comm	code,4,4
	.type	permute,@object                 # @permute
	.comm	permute,4,4
	.type	nonblocking,@object             # @nonblocking
	.comm	nonblocking,4,4
	.type	refine_ghost,@object            # @refine_ghost
	.comm	refine_ghost,4,4
	.type	max_num_parents,@object         # @max_num_parents
	.comm	max_num_parents,4,4
	.type	num_parents,@object             # @num_parents
	.comm	num_parents,4,4
	.type	max_active_parent,@object       # @max_active_parent
	.comm	max_active_parent,4,4
	.type	cur_max_level,@object           # @cur_max_level
	.comm	cur_max_level,4,4
	.type	num_blocks,@object              # @num_blocks
	.comm	num_blocks,8,8
	.type	block_start,@object             # @block_start
	.comm	block_start,8,8
	.type	num_active,@object              # @num_active
	.comm	num_active,4,4
	.type	max_active_block,@object        # @max_active_block
	.comm	max_active_block,4,4
	.type	global_active,@object           # @global_active
	.comm	global_active,4,4
	.type	x_block_half,@object            # @x_block_half
	.comm	x_block_half,4,4
	.type	y_block_half,@object            # @y_block_half
	.comm	y_block_half,4,4
	.type	z_block_half,@object            # @z_block_half
	.comm	z_block_half,4,4
	.type	tol,@object                     # @tol
	.comm	tol,8,8
	.type	grid_sum,@object                # @grid_sum
	.comm	grid_sum,8,8
	.type	p8,@object                      # @p8
	.comm	p8,8,8
	.type	p2,@object                      # @p2
	.comm	p2,8,8
	.type	mesh_size,@object               # @mesh_size
	.comm	mesh_size,12,4
	.type	max_mesh_size,@object           # @max_mesh_size
	.comm	max_mesh_size,4,4
	.type	from,@object                    # @from
	.comm	from,8,8
	.type	to,@object                      # @to
	.comm	to,8,8
	.type	msg_len,@object                 # @msg_len
	.comm	msg_len,48,4
	.type	local_max_b,@object             # @local_max_b
	.comm	local_max_b,4,4
	.type	global_max_b,@object            # @global_max_b
	.comm	global_max_b,4,4
	.type	num_objects,@object             # @num_objects
	.comm	num_objects,4,4
	.type	objects,@object                 # @objects
	.comm	objects,8,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
