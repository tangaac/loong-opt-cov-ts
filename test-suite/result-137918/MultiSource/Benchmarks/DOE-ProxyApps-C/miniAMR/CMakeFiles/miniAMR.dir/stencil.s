	.file	"stencil.c"
	.text
	.globl	stencil_calc                    # -- Begin function stencil_calc
	.p2align	5
	.type	stencil_calc,@function
stencil_calc:                           # @stencil_calc
# %bb.0:
	addi.d	$sp, $sp, -400
	st.d	$ra, $sp, 392                   # 8-byte Folded Spill
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	st.d	$s0, $sp, 376                   # 8-byte Folded Spill
	st.d	$s1, $sp, 368                   # 8-byte Folded Spill
	st.d	$s2, $sp, 360                   # 8-byte Folded Spill
	st.d	$s3, $sp, 352                   # 8-byte Folded Spill
	st.d	$s4, $sp, 344                   # 8-byte Folded Spill
	st.d	$s5, $sp, 336                   # 8-byte Folded Spill
	st.d	$s6, $sp, 328                   # 8-byte Folded Spill
	st.d	$s7, $sp, 320                   # 8-byte Folded Spill
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 304                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 296                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 288                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 280                  # 8-byte Folded Spill
	addi.d	$fp, $sp, 400
	pcalau12i	$a1, %pc_hi20(x_block_size)
	ld.w	$a1, $a1, %pc_lo12(x_block_size)
	st.d	$a0, $fp, -352                  # 8-byte Folded Spill
	st.d	$a1, $fp, -264                  # 8-byte Folded Spill
	addi.d	$a0, $a1, 2
	pcalau12i	$a1, %pc_hi20(y_block_size)
	ld.wu	$a1, $a1, %pc_lo12(y_block_size)
	bstrpick.d	$a2, $a0, 31, 0
	pcalau12i	$a0, %pc_hi20(z_block_size)
	ld.wu	$a3, $a0, %pc_lo12(z_block_size)
	addi.w	$a0, $a1, 0
	st.d	$a0, $fp, -328                  # 8-byte Folded Spill
	st.d	$a1, $fp, -288                  # 8-byte Folded Spill
	addi.d	$a4, $a1, 2
	bstrpick.d	$a1, $a4, 31, 0
	addi.w	$a0, $a3, 0
	st.d	$a0, $fp, -336                  # 8-byte Folded Spill
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
	st.d	$a5, $fp, -312                  # 8-byte Folded Spill
	bne	$a6, $a4, .LBB0_24
# %bb.1:                                # %.preheader255
	ori	$a4, $zero, 1
	blt	$a5, $a4, .LBB0_57
# %bb.2:                                # %.lr.ph313
	move	$t2, $zero
	pcalau12i	$a4, %pc_hi20(sorted_list)
	ld.d	$a4, $a4, %pc_lo12(sorted_list)
	st.d	$a4, $fp, -208                  # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(blocks)
	ld.d	$a4, $a4, %pc_lo12(blocks)
	st.d	$a4, $fp, -200                  # 8-byte Folded Spill
	ld.d	$t0, $fp, -264                  # 8-byte Folded Reload
	slti	$a4, $t0, 1
	ld.d	$a7, $fp, -328                  # 8-byte Folded Reload
	slti	$a5, $a7, 1
	ld.d	$t1, $fp, -336                  # 8-byte Folded Reload
	slti	$a6, $t1, 1
	addi.w	$s6, $t1, 1
	addi.d	$a7, $a7, 1
	addi.d	$t0, $t0, 1
	slli.d	$t1, $a3, 3
	bstrpick.d	$a3, $t0, 31, 0
	st.d	$a3, $fp, -168                  # 8-byte Folded Spill
	bstrpick.d	$s8, $s6, 31, 0
	addi.d	$a3, $s8, -1
	bstrpick.d	$s0, $a7, 31, 0
	move	$s5, $a3
	bstrins.d	$s5, $zero, 0, 0
	st.d	$a3, $fp, -128                  # 8-byte Folded Spill
	ori	$a3, $a3, 1
	st.d	$a3, $fp, -136                  # 8-byte Folded Spill
	or	$a3, $a4, $a5
	or	$a3, $a3, $a6
	st.d	$a3, $fp, -224                  # 8-byte Folded Spill
	slli.d	$a3, $a1, 3
	addi.d	$a3, $a3, 8
	mul.d	$a3, $a3, $a0
	add.d	$a2, $a2, $a3
	st.d	$a2, $fp, -232                  # 8-byte Folded Spill
	addi.d	$a2, $a2, 8
	st.d	$a2, $fp, -216                  # 8-byte Folded Spill
	mul.d	$a1, $a0, $a1
	slli.d	$a1, $a1, 3
	st.d	$a1, $fp, -152                  # 8-byte Folded Spill
	slli.d	$s7, $a0, 3
	ori	$a0, $zero, 0
	lu32i.d	$a0, -262144
	lu52i.d	$a0, $a0, 1025
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $fp, -256                 # 16-byte Folded Spill
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %.loopexit
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$t2, $fp, -192                  # 8-byte Folded Reload
	addi.d	$t2, $t2, 1
	ld.d	$a0, $fp, -312                  # 8-byte Folded Reload
	beq	$t2, $a0, .LBB0_57
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_12 Depth 3
                                        #         Child Loop BB0_14 Depth 4
                                        #         Child Loop BB0_18 Depth 4
                                        #     Child Loop BB0_21 Depth 2
                                        #       Child Loop BB0_22 Depth 3
	st.d	$t2, $fp, -192                  # 8-byte Folded Spill
	ld.d	$a0, $fp, -208                  # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	ld.w	$a0, $a0, 4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	ld.d	$a1, $fp, -200                  # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	bltz	$a1, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $fp, -264                  # 8-byte Folded Reload
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB0_3
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $fp, -328                  # 8-byte Folded Reload
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB0_3
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $fp, -336                  # 8-byte Folded Reload
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB0_3
# %bb.8:                                # %.preheader252.lr.ph.split.split
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$s3, $t1
	ld.d	$a1, $fp, -200                  # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $fp, -176                  # 8-byte Folded Spill
	ld.d	$a0, $a0, 184
	ld.d	$a1, $fp, -352                  # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	st.d	$a1, $fp, -184                  # 8-byte Folded Spill
	ldx.d	$a0, $a0, $a1
	st.d	$a0, $fp, -160                  # 8-byte Folded Spill
	ori	$a3, $zero, 1
	ld.d	$t1, $fp, -232                  # 8-byte Folded Reload
	ld.d	$a4, $fp, -216                  # 8-byte Folded Reload
	vld	$vr5, $fp, -256                 # 16-byte Folded Reload
	vldi	$vr6, -996
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                # %._crit_edge294.split
                                        #   in Loop: Header=BB0_10 Depth=2
	addi.d	$a3, $a3, 1
	ld.d	$a0, $fp, -152                  # 8-byte Folded Reload
	add.d	$a4, $a4, $a0
	ld.d	$t1, $fp, -144                  # 8-byte Folded Reload
	add.d	$t1, $t1, $a0
	ld.d	$a0, $fp, -168                  # 8-byte Folded Reload
	beq	$a3, $a0, .LBB0_19
.LBB0_10:                               # %.preheader252
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_12 Depth 3
                                        #         Child Loop BB0_14 Depth 4
                                        #         Child Loop BB0_18 Depth 4
	ld.d	$a2, $fp, -160                  # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a2, 3
	slli.d	$a1, $a3, 3
	ld.d	$a6, $a0, -8
	ldx.d	$a7, $a2, $a1
	ld.d	$t0, $a0, 8
	st.d	$t1, $fp, -144                  # 8-byte Folded Spill
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
	ori	$a0, $zero, 3
	bltu	$s6, $a0, .LBB0_17
# %bb.13:                               # %vector.ph535
                                        #   in Loop: Header=BB0_12 Depth=3
	vreplvei.d	$vr0, $vr0, 0
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
	vori.b	$vr1, $vr0, 0
	vld	$vr2, $ra, 0
	vld	$vr3, $a0, 0
	vld	$vr4, $s2, -16
	vld	$vr0, $s2, 0
	vfadd.d	$vr2, $vr2, $vr3
	vfadd.d	$vr2, $vr2, $vr4
	vshuf4i.d	$vr1, $vr0, 9
	vld	$vr3, $a1, 0
	vld	$vr4, $a2, 0
	vfadd.d	$vr1, $vr2, $vr1
	vfadd.d	$vr1, $vr1, $vr0
	vfadd.d	$vr1, $vr1, $vr3
	vfadd.d	$vr1, $vr1, $vr4
	vfdiv.d	$vr1, $vr1, $vr5
	vst	$vr1, $t2, 0
	addi.d	$s2, $s2, 16
	addi.d	$ra, $ra, 16
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 16
	addi.d	$a2, $a2, 16
	addi.d	$s4, $s4, -2
	addi.d	$t2, $t2, 16
	bnez	$s4, .LBB0_14
# %bb.15:                               # %middle.block550
                                        #   in Loop: Header=BB0_12 Depth=3
	ld.d	$a0, $fp, -128                  # 8-byte Folded Reload
	beq	$a0, $s5, .LBB0_11
# %bb.16:                               #   in Loop: Header=BB0_12 Depth=3
	vreplvei.d	$vr0, $vr0, 1
	ld.d	$s1, $fp, -136                  # 8-byte Folded Reload
.LBB0_17:                               # %scalar.ph533.preheader
                                        #   in Loop: Header=BB0_12 Depth=3
	alsl.d	$a0, $s1, $t7, 3
	addi.d	$a0, $a0, 8
	alsl.d	$a1, $s1, $t1, 3
	alsl.d	$a2, $s1, $t8, 3
	alsl.d	$t6, $s1, $t6, 3
	alsl.d	$t2, $s1, $t5, 3
	alsl.d	$t4, $s1, $t4, 3
	sub.d	$t5, $s8, $s1
	.p2align	4, , 16
.LBB0_18:                               # %scalar.ph533
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa1, $t4, 0
	fld.d	$fa2, $t2, 0
	fld.d	$fa3, $a0, -16
	fadd.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fa3
	fadd.d	$fa1, $fa1, $fa0
	fld.d	$fa0, $a0, 0
	fld.d	$fa2, $t6, 0
	fld.d	$fa3, $a2, 0
	fadd.d	$fa1, $fa1, $fa0
	fadd.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fa3
	fdiv.d	$fa1, $fa1, $fa6
	fst.d	$fa1, $a1, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$t6, $t6, 8
	addi.d	$t2, $t2, 8
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 8
	bnez	$t5, .LBB0_18
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_19:                               # %.preheader253
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$t1, $s3
	ld.d	$a0, $fp, -224                  # 8-byte Folded Reload
	bnez	$a0, .LBB0_3
# %bb.20:                               # %.preheader251.lr.ph.split.split
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $fp, -176                  # 8-byte Folded Reload
	ld.d	$a0, $a0, 184
	ld.d	$a1, $fp, -184                  # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	st.d	$a0, $fp, -184                  # 8-byte Folded Spill
	move	$a1, $zero
	ori	$a2, $zero, 1
	ld.d	$s2, $fp, -216                  # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_21:                               # %.preheader251
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_22 Depth 3
	st.d	$a1, $fp, -144                  # 8-byte Folded Spill
	st.d	$a2, $fp, -160                  # 8-byte Folded Spill
	slli.d	$a0, $a2, 3
	ld.d	$a1, $fp, -184                  # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	addi.d	$s1, $a0, 8
	ld.d	$s4, $fp, -288                  # 8-byte Folded Reload
	st.d	$s2, $fp, -176                  # 8-byte Folded Spill
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
	move	$a2, $s3
	addi.d	$s1, $s1, 8
	addi.d	$s4, $s4, -1
	add.d	$s2, $s2, $s7
	bnez	$s4, .LBB0_22
# %bb.23:                               # %._crit_edge306.split
                                        #   in Loop: Header=BB0_21 Depth=2
	move	$t1, $a2
	ld.d	$a2, $fp, -160                  # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ld.d	$a1, $fp, -144                  # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $fp, -152                  # 8-byte Folded Reload
	ld.d	$s2, $fp, -176                  # 8-byte Folded Reload
	add.d	$s2, $s2, $a0
	ld.d	$a0, $fp, -264                  # 8-byte Folded Reload
	bne	$a1, $a0, .LBB0_21
	b	.LBB0_3
.LBB0_24:                               # %.preheader264
	ori	$a4, $zero, 1
	blt	$a5, $a4, .LBB0_57
# %bb.25:                               # %.lr.ph
	move	$t2, $zero
	pcalau12i	$a4, %pc_hi20(sorted_list)
	ld.d	$a4, $a4, %pc_lo12(sorted_list)
	st.d	$a4, $fp, -360                  # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(blocks)
	ld.d	$a4, $a4, %pc_lo12(blocks)
	st.d	$a4, $fp, -344                  # 8-byte Folded Spill
	ld.d	$t0, $fp, -264                  # 8-byte Folded Reload
	slti	$a4, $t0, 1
	ld.d	$a7, $fp, -328                  # 8-byte Folded Reload
	slti	$a5, $a7, 1
	ld.d	$t1, $fp, -336                  # 8-byte Folded Reload
	slti	$a6, $t1, 1
	addi.w	$t1, $t1, 1
	addi.d	$a7, $a7, 1
	addi.d	$t0, $t0, 1
	slli.d	$t3, $a3, 3
	bstrpick.d	$a3, $t0, 31, 0
	st.d	$a3, $fp, -296                  # 8-byte Folded Spill
	bstrpick.d	$t0, $a7, 31, 0
	st.d	$t1, $fp, -152                  # 8-byte Folded Spill
	bstrpick.d	$t1, $t1, 31, 0
	slli.d	$a3, $a1, 3
	addi.d	$a3, $a3, 8
	mul.d	$a3, $a3, $a0
	mul.d	$a7, $a0, $a1
	slli.d	$t4, $a7, 3
	st.d	$t0, $fp, -160                  # 8-byte Folded Spill
	add.d	$a1, $a1, $t0
	slli.d	$a1, $a1, 3
	addi.d	$a1, $a1, -8
	mul.d	$a1, $a1, $a0
	slli.d	$a7, $t1, 3
	addi.d	$s4, $a7, 8
	addi.d	$a7, $t1, -1
	add.d	$a3, $a2, $a3
	st.d	$a3, $fp, -384                  # 8-byte Folded Spill
	addi.d	$a3, $a3, 8
	st.d	$a3, $fp, -272                  # 8-byte Folded Spill
	add.d	$a1, $a2, $a1
	st.d	$t1, $fp, -168                  # 8-byte Folded Spill
	alsl.d	$a1, $t1, $a1, 3
	st.d	$a1, $fp, -304                  # 8-byte Folded Spill
	move	$a1, $a7
	bstrins.d	$a1, $zero, 0, 0
	st.d	$a1, $fp, -184                  # 8-byte Folded Spill
	st.d	$a7, $fp, -192                  # 8-byte Folded Spill
	ori	$a1, $a7, 1
	st.d	$a1, $fp, -200                  # 8-byte Folded Spill
	or	$a1, $a4, $a5
	or	$a1, $a1, $a6
	st.d	$a1, $fp, -392                  # 8-byte Folded Spill
	slli.d	$s0, $a0, 3
	ori	$a0, $zero, 0
	lu32i.d	$a0, -327680
	lu52i.d	$s1, $a0, 1027
	st.d	$t3, $fp, -176                  # 8-byte Folded Spill
	st.d	$t4, $fp, -256                  # 8-byte Folded Spill
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_26:                               # %.loopexit262
                                        #   in Loop: Header=BB0_27 Depth=1
	ld.d	$t2, $fp, -320                  # 8-byte Folded Reload
	addi.d	$t2, $t2, 1
	ld.d	$a0, $fp, -312                  # 8-byte Folded Reload
	beq	$t2, $a0, .LBB0_57
.LBB0_27:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_33 Depth 2
                                        #       Child Loop BB0_35 Depth 3
                                        #         Child Loop BB0_49 Depth 4
                                        #         Child Loop BB0_38 Depth 4
                                        #     Child Loop BB0_54 Depth 2
                                        #       Child Loop BB0_55 Depth 3
	st.d	$t2, $fp, -320                  # 8-byte Folded Spill
	ld.d	$a0, $fp, -360                  # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	ld.w	$a0, $a0, 4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	ld.d	$a1, $fp, -344                  # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	bltz	$a1, .LBB0_26
# %bb.28:                               #   in Loop: Header=BB0_27 Depth=1
	ld.d	$a1, $fp, -264                  # 8-byte Folded Reload
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB0_26
# %bb.29:                               #   in Loop: Header=BB0_27 Depth=1
	ld.d	$a1, $fp, -328                  # 8-byte Folded Reload
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB0_26
# %bb.30:                               #   in Loop: Header=BB0_27 Depth=1
	ld.d	$a1, $fp, -336                  # 8-byte Folded Reload
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB0_26
# %bb.31:                               # %.preheader260.lr.ph.split.split
                                        #   in Loop: Header=BB0_27 Depth=1
	ld.d	$a1, $fp, -344                  # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $fp, -368                  # 8-byte Folded Spill
	ld.d	$a0, $a0, 184
	ld.d	$a1, $fp, -352                  # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	st.d	$a1, $fp, -376                  # 8-byte Folded Spill
	ldx.d	$a0, $a0, $a1
	st.d	$a0, $fp, -280                  # 8-byte Folded Spill
	move	$a1, $zero
	ori	$a2, $zero, 1
	ld.d	$t0, $fp, -384                  # 8-byte Folded Reload
	ld.d	$t7, $fp, -272                  # 8-byte Folded Reload
	vldi	$vr27, -965
	b	.LBB0_33
	.p2align	4, , 16
.LBB0_32:                               # %._crit_edge270.split
                                        #   in Loop: Header=BB0_33 Depth=2
	ld.d	$a2, $fp, -216                  # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ld.d	$a1, $fp, -208                  # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$t4, $fp, -256                  # 8-byte Folded Reload
	ld.d	$t7, $fp, -232                  # 8-byte Folded Reload
	add.d	$t7, $t7, $t4
	ld.d	$t0, $fp, -224                  # 8-byte Folded Reload
	add.d	$t0, $t0, $t4
	ld.d	$a0, $fp, -296                  # 8-byte Folded Reload
	beq	$a2, $a0, .LBB0_52
.LBB0_33:                               # %.preheader260
                                        #   Parent Loop BB0_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_35 Depth 3
                                        #         Child Loop BB0_49 Depth 4
                                        #         Child Loop BB0_38 Depth 4
	st.d	$a1, $fp, -208                  # 8-byte Folded Spill
	mul.d	$a0, $t4, $a1
	ld.d	$a3, $fp, -280                  # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a3, 3
	ld.d	$a4, $a1, -8
	st.d	$a2, $fp, -216                  # 8-byte Folded Spill
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a3, $a2
	ld.d	$a1, $a1, 8
	ld.d	$s2, $a4, 0
	st.d	$a4, $fp, -128                  # 8-byte Folded Spill
	ld.d	$t8, $a4, 8
	ld.d	$ra, $a2, 0
	st.d	$a2, $fp, -136                  # 8-byte Folded Spill
	ld.d	$t2, $a2, 8
	ld.d	$a3, $a1, 0
	st.d	$a1, $fp, -144                  # 8-byte Folded Spill
	ld.d	$t3, $a1, 8
	fld.d	$ft3, $t8, 0
	fld.d	$ft0, $t8, 8
	fld.d	$ft2, $t2, 0
	fld.d	$fa7, $t2, 8
	fld.d	$ft1, $t3, 0
	fld.d	$fa6, $t3, 8
	ld.d	$a1, $fp, -272                  # 8-byte Folded Reload
	add.d	$t4, $a1, $a0
	ld.d	$a1, $fp, -304                  # 8-byte Folded Reload
	add.d	$t5, $a1, $a0
	st.d	$t0, $fp, -224                  # 8-byte Folded Spill
	st.d	$t7, $fp, -232                  # 8-byte Folded Spill
	ori	$a0, $zero, 1
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_34:                               # %._crit_edge
                                        #   in Loop: Header=BB0_35 Depth=3
	add.d	$t7, $t7, $s0
	add.d	$t0, $t0, $s0
	fmov.d	$fa6, $fa5
	fmov.d	$ft1, $fa4
	fmov.d	$fa7, $fa3
	fmov.d	$ft2, $fa2
	fmov.d	$ft0, $fa1
	fmov.d	$ft3, $fa0
	move	$a3, $a5
	move	$ra, $a2
	move	$s2, $a1
	ld.d	$a1, $fp, -160                  # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_32
.LBB0_35:                               # %.preheader258
                                        #   Parent Loop BB0_27 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_49 Depth 4
                                        #         Child Loop BB0_38 Depth 4
	move	$a1, $t8
	addi.d	$a0, $a0, 1
	slli.d	$a4, $a0, 3
	ld.d	$a2, $fp, -128                  # 8-byte Folded Reload
	ldx.d	$t8, $a2, $a4
	move	$a2, $t2
	move	$a5, $t3
	ld.d	$a6, $fp, -136                  # 8-byte Folded Reload
	ldx.d	$t2, $a6, $a4
	ld.d	$a6, $fp, -144                  # 8-byte Folded Reload
	ldx.d	$t3, $a6, $a4
	fld.d	$fa0, $t8, 0
	fld.d	$fa1, $t8, 8
	fld.d	$fa2, $t2, 0
	fld.d	$fa3, $t2, 8
	fld.d	$fa4, $t3, 0
	fld.d	$fa5, $t3, 8
	ori	$a4, $zero, 1
	ld.d	$a6, $fp, -152                  # 8-byte Folded Reload
	ori	$a7, $zero, 3
	bgeu	$a6, $a7, .LBB0_39
.LBB0_36:                               #   in Loop: Header=BB0_35 Depth=3
	fmov.d	$ft4, $fa5
	fmov.d	$ft5, $fa4
	fmov.d	$ft6, $fa3
	fmov.d	$ft7, $fa2
	fmov.d	$ft8, $fa1
	fmov.d	$ft9, $fa0
.LBB0_37:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_35 Depth=3
	slli.d	$a6, $a4, 3
	addi.d	$s3, $a1, 8
	addi.d	$s5, $t8, 8
	addi.d	$s6, $a2, 8
	addi.d	$s7, $t2, 8
	ld.d	$a7, $fp, -168                  # 8-byte Folded Reload
	sub.d	$a4, $a7, $a4
	addi.d	$s8, $t3, 8
	addi.d	$a7, $a5, 8
	addi.d	$a3, $a3, 8
	move	$t6, $t0
	.p2align	4, , 16
.LBB0_38:                               # %scalar.ph
                                        #   Parent Loop BB0_27 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        #       Parent Loop BB0_35 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.d	$t1, $s2, $a6
	fld.d	$ft10, $t1, -8
	fldx.d	$ft11, $s2, $a6
	fadd.d	$ft10, $ft10, $ft11
	fld.d	$ft11, $t1, 8
	add.d	$t1, $ra, $a6
	fld.d	$ft12, $t1, -8
	fldx.d	$ft13, $ra, $a6
	fld.d	$ft14, $t1, 8
	fadd.d	$ft10, $ft10, $ft11
	fadd.d	$ft10, $ft10, $ft3
	fmov.d	$ft3, $ft0
	fadd.d	$ft0, $ft12, $ft13
	fadd.d	$ft0, $ft0, $ft14
	fadd.d	$ft11, $ft0, $ft2
	fmov.d	$ft2, $fa7
	add.d	$t1, $a3, $a6
	fld.d	$fa7, $t1, -16
	fld.d	$ft12, $t1, -8
	fldx.d	$ft13, $a3, $a6
	fadd.d	$ft10, $ft10, $ft3
	fldx.d	$ft0, $s3, $a6
	fadd.d	$fa7, $fa7, $ft12
	fadd.d	$fa7, $fa7, $ft13
	fadd.d	$ft1, $fa7, $ft1
	fmov.d	$ft12, $fa6
	fadd.d	$ft10, $ft10, $ft0
	fadd.d	$ft11, $ft11, $ft2
	fldx.d	$fa7, $s6, $a6
	fadd.d	$ft1, $ft1, $fa6
	fldx.d	$fa6, $a7, $a6
	fadd.d	$ft9, $ft10, $ft9
	fmov.d	$ft10, $ft8
	fadd.d	$ft8, $ft11, $fa7
	fadd.d	$ft7, $ft8, $ft7
	fmov.d	$ft11, $ft6
	fadd.d	$ft1, $ft1, $fa6
	fadd.d	$ft1, $ft1, $ft5
	fmov.d	$ft5, $ft4
	fadd.d	$ft13, $ft9, $ft10
	fldx.d	$ft8, $s5, $a6
	fadd.d	$ft14, $ft7, $ft6
	fldx.d	$ft6, $s7, $a6
	fldx.d	$ft4, $s8, $a6
	fadd.d	$ft15, $ft1, $ft5
                                        # kill: def $f13_64 killed $f13_64 def $vr13
	fmov.d	$ft1, $ft12
	fmov.d	$ft7, $ft11
                                        # kill: def $f10_64 killed $f10_64 def $vr10
	fmov.d	$ft9, $ft10
                                        # kill: def $f11_64 killed $f11_64 def $vr11
	fadd.d	$ft10, $ft13, $ft8
	fadd.d	$ft11, $ft14, $ft6
	fadd.d	$ft12, $ft15, $ft4
	fadd.d	$ft10, $ft10, $ft11
	fadd.d	$ft10, $ft10, $ft12
	fdiv.d	$ft10, $ft10, $fs3
	fstx.d	$ft10, $t6, $a6
	addi.d	$s3, $s3, 8
	addi.d	$s5, $s5, 8
	addi.d	$s6, $s6, 8
	addi.d	$t6, $t6, 8
	addi.d	$s7, $s7, 8
	addi.d	$ra, $ra, 8
	addi.d	$s2, $s2, 8
	addi.d	$a4, $a4, -1
	addi.d	$s8, $s8, 8
	addi.d	$a7, $a7, 8
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB0_38
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_39:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_35 Depth=3
	addi.d	$a6, $a1, 16
	add.d	$a7, $a1, $s4
	sltu	$a7, $t4, $a7
	sltu	$t6, $a6, $t5
	and	$a7, $a7, $t6
	bnez	$a7, .LBB0_36
# %bb.40:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_35 Depth=3
	add.d	$a7, $s2, $s4
	sltu	$a7, $t4, $a7
	sltu	$t6, $s2, $t5
	and	$a7, $a7, $t6
	bnez	$a7, .LBB0_36
# %bb.41:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_35 Depth=3
	addi.d	$s5, $t8, 16
	add.d	$a7, $t8, $s4
	sltu	$a7, $t4, $a7
	sltu	$t6, $s5, $t5
	and	$a7, $a7, $t6
	bnez	$a7, .LBB0_36
# %bb.42:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_35 Depth=3
	addi.d	$s3, $a2, 16
	add.d	$a7, $a2, $s4
	sltu	$a7, $t4, $a7
	sltu	$t6, $s3, $t5
	and	$a7, $a7, $t6
	bnez	$a7, .LBB0_36
# %bb.43:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_35 Depth=3
	add.d	$a7, $ra, $s4
	sltu	$a7, $t4, $a7
	sltu	$t6, $ra, $t5
	and	$a7, $a7, $t6
	bnez	$a7, .LBB0_36
# %bb.44:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_35 Depth=3
	addi.d	$s6, $t2, 16
	add.d	$a7, $t2, $s4
	sltu	$a7, $t4, $a7
	sltu	$t6, $s6, $t5
	and	$a7, $a7, $t6
	bnez	$a7, .LBB0_36
# %bb.45:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_35 Depth=3
	addi.d	$s8, $a5, 16
	add.d	$a7, $a5, $s4
	sltu	$a7, $t4, $a7
	sltu	$t6, $s8, $t5
	and	$a7, $a7, $t6
	bnez	$a7, .LBB0_36
# %bb.46:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_35 Depth=3
	add.d	$a7, $a3, $s4
	sltu	$a7, $t4, $a7
	sltu	$t6, $a3, $t5
	and	$a7, $a7, $t6
	bnez	$a7, .LBB0_36
# %bb.47:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_35 Depth=3
	addi.d	$s7, $t3, 16
	add.d	$a7, $t3, $s4
	sltu	$a7, $t4, $a7
	sltu	$t6, $s7, $t5
	and	$a7, $a7, $t6
	bnez	$a7, .LBB0_36
# %bb.48:                               # %vector.ph
                                        #   in Loop: Header=BB0_35 Depth=3
	move	$a4, $zero
	vreplvei.d	$vr20, $vr5, 0
	vreplvei.d	$vr12, $vr4, 0
	vreplvei.d	$vr14, $vr6, 0
	vreplvei.d	$vr6, $vr9, 0
	vreplvei.d	$vr15, $vr3, 0
	vreplvei.d	$vr9, $vr2, 0
	vreplvei.d	$vr16, $vr7, 0
	vreplvei.d	$vr21, $vr10, 0
	vreplvei.d	$vr17, $vr1, 0
	vreplvei.d	$vr22, $vr0, 0
	vreplvei.d	$vr18, $vr8, 0
	vreplvei.d	$vr23, $vr11, 0
	ld.d	$a7, $fp, -184                  # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_49:                               # %vector.body
                                        #   Parent Loop BB0_27 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        #       Parent Loop BB0_35 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.d	$t6, $s2, $a4
	vldx	$vr24, $s2, $a4
	vld	$vr25, $t6, 8
	vld	$vr26, $t6, 16
	vori.b	$vr7, $vr18, 0
	vori.b	$vr8, $vr17, 0
	vori.b	$vr10, $vr16, 0
	vori.b	$vr11, $vr15, 0
	vori.b	$vr13, $vr14, 0
	vori.b	$vr19, $vr20, 0
	vldx	$vr18, $a6, $a4
	vfadd.d	$vr14, $vr24, $vr25
	vfadd.d	$vr14, $vr14, $vr26
	vshuf4i.d	$vr23, $vr7, 13
	vshuf4i.d	$vr7, $vr18, 9
	vfadd.d	$vr14, $vr14, $vr23
	vfadd.d	$vr14, $vr14, $vr7
	vfadd.d	$vr14, $vr14, $vr18
	vldx	$vr17, $s5, $a4
	add.d	$t6, $ra, $a4
	vldx	$vr15, $ra, $a4
	vld	$vr16, $t6, 8
	vshuf4i.d	$vr22, $vr8, 13
	vfadd.d	$vr14, $vr14, $vr22
	vld	$vr20, $t6, 16
	vfadd.d	$vr15, $vr15, $vr16
	vldx	$vr16, $s3, $a4
	vshuf4i.d	$vr8, $vr17, 9
	vfadd.d	$vr15, $vr15, $vr20
	vshuf4i.d	$vr21, $vr10, 13
	vshuf4i.d	$vr10, $vr16, 9
	vfadd.d	$vr15, $vr15, $vr21
	vfadd.d	$vr15, $vr15, $vr10
	vfadd.d	$vr15, $vr15, $vr16
	add.d	$t6, $a3, $a4
	vldx	$vr20, $a3, $a4
	vld	$vr21, $t6, 8
	vshuf4i.d	$vr9, $vr11, 13
	vfadd.d	$vr9, $vr15, $vr9
	vldx	$vr15, $s6, $a4
	vfadd.d	$vr20, $vr20, $vr21
	vld	$vr21, $t6, 16
	vfadd.d	$vr14, $vr14, $vr8
	vfadd.d	$vr22, $vr14, $vr17
	vshuf4i.d	$vr11, $vr15, 9
	vfadd.d	$vr20, $vr20, $vr21
	vldx	$vr14, $s8, $a4
	vfadd.d	$vr9, $vr9, $vr11
	vfadd.d	$vr9, $vr9, $vr15
	vshuf4i.d	$vr6, $vr13, 13
	vshuf4i.d	$vr13, $vr14, 9
	vfadd.d	$vr6, $vr20, $vr6
	vldx	$vr20, $s7, $a4
	vfadd.d	$vr6, $vr6, $vr13
	vfadd.d	$vr6, $vr6, $vr14
	vshuf4i.d	$vr12, $vr19, 13
	vshuf4i.d	$vr19, $vr20, 9
	vfadd.d	$vr6, $vr6, $vr12
	vfadd.d	$vr6, $vr6, $vr19
	vfadd.d	$vr6, $vr6, $vr20
	vfadd.d	$vr9, $vr22, $vr9
	vfadd.d	$vr6, $vr9, $vr6
	vreplgr2vr.d	$vr9, $s1
	vfdiv.d	$vr6, $vr6, $vr9
	vstx	$vr6, $t7, $a4
	addi.d	$a7, $a7, -2
	addi.d	$a4, $a4, 16
	vori.b	$vr12, $vr19, 0
	vori.b	$vr6, $vr13, 0
	vori.b	$vr9, $vr11, 0
	vori.b	$vr21, $vr10, 0
	vori.b	$vr22, $vr8, 0
	vori.b	$vr23, $vr7, 0
	bnez	$a7, .LBB0_49
# %bb.50:                               # %middle.block
                                        #   in Loop: Header=BB0_35 Depth=3
	ld.d	$a4, $fp, -192                  # 8-byte Folded Reload
	ld.d	$a6, $fp, -184                  # 8-byte Folded Reload
	beq	$a4, $a6, .LBB0_34
# %bb.51:                               #   in Loop: Header=BB0_35 Depth=3
	vreplvei.d	$vr12, $vr20, 1
	vreplvei.d	$vr13, $vr20, 0
	vreplvei.d	$vr6, $vr14, 1
	vreplvei.d	$vr9, $vr14, 0
	vreplvei.d	$vr14, $vr15, 1
	vreplvei.d	$vr15, $vr15, 0
	vreplvei.d	$vr7, $vr16, 1
	vreplvei.d	$vr10, $vr16, 0
	vreplvei.d	$vr16, $vr17, 1
	vreplvei.d	$vr17, $vr17, 0
	vreplvei.d	$vr8, $vr18, 1
	vreplvei.d	$vr11, $vr18, 0
	ld.d	$a4, $fp, -200                  # 8-byte Folded Reload
	b	.LBB0_37
	.p2align	4, , 16
.LBB0_52:                               # %.preheader261
                                        #   in Loop: Header=BB0_27 Depth=1
	ld.d	$t3, $fp, -176                  # 8-byte Folded Reload
	ld.d	$a0, $fp, -392                  # 8-byte Folded Reload
	bnez	$a0, .LBB0_26
# %bb.53:                               # %.preheader259.lr.ph.split.split
                                        #   in Loop: Header=BB0_27 Depth=1
	ld.d	$a0, $fp, -368                  # 8-byte Folded Reload
	ld.d	$a0, $a0, 184
	ld.d	$a1, $fp, -376                  # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	st.d	$a0, $fp, -128                  # 8-byte Folded Spill
	move	$s5, $zero
	ori	$s6, $zero, 1
	ld.d	$s7, $fp, -272                  # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_54:                               # %.preheader259
                                        #   Parent Loop BB0_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_55 Depth 3
	slli.d	$a0, $s6, 3
	ld.d	$a1, $fp, -128                  # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	addi.d	$s8, $a0, 8
	ld.d	$s3, $fp, -288                  # 8-byte Folded Reload
	move	$s2, $s7
	move	$a2, $t3
	.p2align	4, , 16
.LBB0_55:                               # %.preheader257
                                        #   Parent Loop BB0_27 Depth=1
                                        #     Parent Loop BB0_54 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s8, 0
	addi.d	$a0, $a0, 8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, -176                  # 8-byte Folded Reload
	addi.d	$s8, $s8, 8
	addi.d	$s3, $s3, -1
	add.d	$s2, $s2, $s0
	bnez	$s3, .LBB0_55
# %bb.56:                               # %._crit_edge281.split
                                        #   in Loop: Header=BB0_54 Depth=2
	move	$t3, $a2
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 1
	ld.d	$t4, $fp, -256                  # 8-byte Folded Reload
	add.d	$s7, $s7, $t4
	ld.d	$a0, $fp, -264                  # 8-byte Folded Reload
	bne	$s5, $a0, .LBB0_54
	b	.LBB0_26
.LBB0_57:                               # %.loopexit256
	addi.d	$sp, $fp, -400
	fld.d	$fs3, $sp, 280                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 288                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 296                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 304                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 400
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
