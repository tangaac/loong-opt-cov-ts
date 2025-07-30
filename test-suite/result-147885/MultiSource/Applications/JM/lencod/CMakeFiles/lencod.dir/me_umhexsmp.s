	.file	"me_umhexsmp.c"
	.text
	.globl	smpUMHEX_init                   # -- Begin function smpUMHEX_init
	.p2align	5
	.type	smpUMHEX_init,@function
smpUMHEX_init:                          # @smpUMHEX_init
# %bb.0:
	pcalau12i	$a0, %pc_hi20(SymmetricalCrossSearchThreshold1)
	ori	$a1, $zero, 800
	st.h	$a1, $a0, %pc_lo12(SymmetricalCrossSearchThreshold1)
	pcalau12i	$a0, %pc_hi20(SymmetricalCrossSearchThreshold2)
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2904
	st.h	$a1, $a0, %pc_lo12(SymmetricalCrossSearchThreshold2)
	pcalau12i	$a0, %pc_hi20(ConvergeThreshold)
	ori	$a1, $zero, 1000
	st.h	$a1, $a0, %pc_lo12(ConvergeThreshold)
	pcalau12i	$a0, %pc_hi20(SubPelThreshold1)
	st.h	$a1, $a0, %pc_lo12(SubPelThreshold1)
	pcalau12i	$a0, %pc_hi20(SubPelThreshold3)
	ori	$a1, $zero, 400
	st.h	$a1, $a0, %pc_lo12(SubPelThreshold3)
	ret
.Lfunc_end0:
	.size	smpUMHEX_init, .Lfunc_end0-smpUMHEX_init
                                        # -- End function
	.globl	smpUMHEX_get_mem                # -- Begin function smpUMHEX_get_mem
	.p2align	5
	.type	smpUMHEX_get_mem,@function
smpUMHEX_get_mem:                       # @smpUMHEX_get_mem
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$fp, $a0, %got_pc_lo12(img)
	ld.d	$s1, $fp, 0
	ld.w	$s0, $s1, 52
	srai.d	$a0, $s0, 4
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(smpUMHEX_flag_intra)
	st.d	$a0, $a1, %pc_lo12(smpUMHEX_flag_intra)
	bnez	$a0, .LBB1_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 0
	ld.w	$s0, $s1, 52
.LBB1_2:
	ld.w	$a0, $s1, 68
	bstrpick.d	$a1, $a0, 62, 61
	add.w	$a0, $a0, $a1
	srai.d	$a2, $a0, 2
	bstrpick.d	$a0, $s0, 62, 61
	add.w	$a0, $s0, $a0
	srai.d	$a3, $a0, 2
	pcalau12i	$a0, %pc_hi20(smpUMHEX_l0_cost)
	addi.d	$a0, $a0, %pc_lo12(smpUMHEX_l0_cost)
	ori	$a1, $zero, 9
	pcaddu18i	$ra, %call36(get_mem3Dint)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ld.w	$a2, $a1, 68
	move	$fp, $a0
	ld.w	$a0, $a1, 52
	bstrpick.d	$a1, $a2, 62, 61
	add.w	$a1, $a2, $a1
	srai.d	$a2, $a1, 2
	bstrpick.d	$a1, $a0, 62, 61
	add.w	$a0, $a0, $a1
	srai.d	$a3, $a0, 2
	pcalau12i	$a0, %pc_hi20(smpUMHEX_l1_cost)
	addi.d	$a0, $a0, %pc_lo12(smpUMHEX_l1_cost)
	ori	$a1, $zero, 9
	pcaddu18i	$ra, %call36(get_mem3Dint)
	jirl	$ra, $ra, 0
	add.d	$fp, $a0, $fp
	pcalau12i	$a0, %pc_hi20(smpUMHEX_SearchState)
	addi.d	$a0, $a0, %pc_lo12(smpUMHEX_SearchState)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 7
	pcaddu18i	$ra, %call36(get_mem2D)
	jirl	$ra, $ra, 0
	add.w	$a0, $fp, $a0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	smpUMHEX_get_mem, .Lfunc_end1-smpUMHEX_get_mem
                                        # -- End function
	.globl	smpUMHEX_free_mem               # -- Begin function smpUMHEX_free_mem
	.p2align	5
	.type	smpUMHEX_free_mem,@function
smpUMHEX_free_mem:                      # @smpUMHEX_free_mem
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(smpUMHEX_l0_cost)
	ld.d	$a0, $a0, %pc_lo12(smpUMHEX_l0_cost)
	ori	$a1, $zero, 9
	pcaddu18i	$ra, %call36(free_mem3Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(smpUMHEX_l1_cost)
	ld.d	$a0, $a0, %pc_lo12(smpUMHEX_l1_cost)
	ori	$a1, $zero, 9
	pcaddu18i	$ra, %call36(free_mem3Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(smpUMHEX_SearchState)
	ld.d	$a0, $a0, %pc_lo12(smpUMHEX_SearchState)
	pcaddu18i	$ra, %call36(free_mem2D)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(smpUMHEX_flag_intra)
	ld.d	$a0, $a0, %pc_lo12(smpUMHEX_flag_intra)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end2:
	.size	smpUMHEX_free_mem, .Lfunc_end2-smpUMHEX_free_mem
                                        # -- End function
	.globl	smpUMHEXIntegerPelBlockMotionSearch # -- Begin function smpUMHEXIntegerPelBlockMotionSearch
	.p2align	5
	.type	smpUMHEXIntegerPelBlockMotionSearch,@function
smpUMHEXIntegerPelBlockMotionSearch:    # @smpUMHEXIntegerPelBlockMotionSearch
# %bb.0:
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$t0, %got_pc_hi20(img)
	ld.d	$t0, $t0, %got_pc_lo12(img)
	ld.d	$t0, $t0, 0
	ldptr.w	$t1, $t0, 15268
	ld.d	$t2, $sp, 368
	move	$s2, $a7
	move	$s3, $a6
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	move	$s5, $a4
	move	$s4, $a3
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	beqz	$t1, .LBB3_3
# %bb.1:
	ld.w	$a0, $t0, 12
	ldptr.d	$a3, $t0, 14224
	ori	$a4, $zero, 536
	mul.d	$a4, $a0, $a4
	add.d	$a3, $a3, $a4
	ld.w	$a3, $a3, 424
	beqz	$a3, .LBB3_3
# %bb.2:
	andi	$a0, $a0, 1
	sltui	$a0, $a0, 1
	ori	$a3, $zero, 4
	masknez	$a3, $a3, $a0
	ori	$a4, $zero, 2
	maskeqz	$a0, $a4, $a0
	or	$a4, $a0, $a3
	b	.LBB3_4
.LBB3_3:
	move	$a4, $zero
.LBB3_4:
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	pcalau12i	$a3, %pc_hi20(active_pps)
	ld.d	$a3, $a3, %pc_lo12(active_pps)
	ld.d	$t5, $sp, 376
	ld.d	$a0, $a0, 0
	ld.w	$a6, $a3, 192
	ld.h	$s7, $t2, 0
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a5, $a5, $a0, 3
	st.d	$t2, $sp, 88                    # 8-byte Folded Spill
	beqz	$a6, .LBB3_7
# %bb.5:
	ld.w	$a6, $t0, 20
	beqz	$a6, .LBB3_9
# %bb.6:
	ori	$a7, $zero, 3
	beq	$a6, $a7, .LBB3_9
.LBB3_7:
	ld.w	$a3, $a3, 196
	beqz	$a3, .LBB3_10
# %bb.8:
	ld.w	$a3, $t0, 20
	ori	$a6, $zero, 1
	bne	$a3, $a6, .LBB3_10
.LBB3_9:
	ldptr.w	$a0, $a0, 2936
	sltu	$a3, $zero, $a0
	ori	$a0, $zero, 3
	maskeqz	$a0, $a0, $a3
	b	.LBB3_11
.LBB3_10:
	move	$a3, $zero
	move	$a0, $zero
.LBB3_11:                               # %.thread
	pcalau12i	$a6, %got_pc_hi20(listX)
	ld.d	$a6, $a6, %got_pc_lo12(listX)
	add.w	$a2, $a4, $a2
	slli.d	$a4, $a2, 3
	ldx.d	$a2, $a6, $a4
	ld.h	$s8, $t5, 0
	add.w	$t6, $s4, $s7
	slli.d	$a6, $a1, 3
	ldx.d	$a6, $a2, $a6
	ld.w	$a2, $a5, 76
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	ld.w	$a2, $a5, 72
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$t3, %pc_hi20(dist_method)
	ldptr.d	$a5, $a6, 6448
	pcalau12i	$a2, %got_pc_hi20(ref_pic_sub)
	ld.d	$t0, $a2, %got_pc_lo12(ref_pic_sub)
	lu12i.w	$a7, 1
	ori	$a2, $a7, 2296
	ldx.w	$a2, $a6, $a2
	pcalau12i	$t1, %got_pc_hi20(img_width)
	ld.d	$t1, $t1, %got_pc_lo12(img_width)
	pcalau12i	$t2, %pc_hi20(ref_pic_ptr)
	st.d	$a6, $t2, %pc_lo12(ref_pic_ptr)
	st.d	$a5, $t0, 0
	st.h	$a2, $t1, 0
	ori	$a5, $a7, 2312
	ldx.w	$t1, $a6, $a5
	ori	$a5, $a7, 2300
	ldx.w	$a5, $a6, $a5
	pcalau12i	$t2, %pc_hi20(width_pad)
	st.w	$t1, $t2, %pc_lo12(width_pad)
	pcalau12i	$t1, %got_pc_hi20(img_height)
	ld.d	$t1, $t1, %got_pc_lo12(img_height)
	ori	$t2, $a7, 2316
	ldx.w	$t2, $a6, $t2
	st.d	$t3, $sp, 208                   # 8-byte Folded Spill
	st.w	$a0, $t3, %pc_lo12(dist_method)
	st.h	$a5, $t1, 0
	pcalau12i	$t1, %pc_hi20(height_pad)
	st.w	$t2, $t1, %pc_lo12(height_pad)
	beqz	$a3, .LBB3_13
# %bb.12:
	pcalau12i	$t1, %pc_hi20(wp_weight)
	ld.d	$t1, $t1, %pc_lo12(wp_weight)
	ldx.d	$t1, $t1, $a4
	slli.d	$t2, $a1, 3
	pcalau12i	$t3, %pc_hi20(wp_offset)
	ld.d	$t3, $t3, %pc_lo12(wp_offset)
	ldx.d	$t1, $t1, $t2
	ldx.d	$t3, $t3, $a4
	ld.w	$t1, $t1, 0
	pcalau12i	$t4, %got_pc_hi20(weight_luma)
	ld.d	$t4, $t4, %got_pc_lo12(weight_luma)
	ldx.d	$t2, $t3, $t2
	st.w	$t1, $t4, 0
	ld.w	$t1, $t2, 0
	pcalau12i	$t2, %got_pc_hi20(offset_luma)
	ld.d	$t2, $t2, %got_pc_lo12(offset_luma)
	st.w	$t1, $t2, 0
.LBB3_13:
	st.d	$t5, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$t1, %got_pc_hi20(ChromaMEEnable)
	ld.d	$t1, $t1, %got_pc_lo12(ChromaMEEnable)
	ld.w	$t1, $t1, 0
	ld.d	$t3, $sp, 384
	add.w	$t2, $s5, $s8
	st.d	$t2, $sp, 272                   # 8-byte Folded Spill
	beqz	$t1, .LBB3_16
# %bb.14:
	ldptr.d	$t1, $a6, 6464
	ld.d	$t2, $t1, 0
	st.d	$t2, $t0, 8
	ld.d	$t1, $t1, 8
	st.d	$t1, $t0, 16
	ori	$t0, $a7, 2320
	ldx.w	$t0, $a6, $t0
	ori	$a7, $a7, 2324
	ldx.w	$a6, $a6, $a7
	pcalau12i	$a7, %pc_hi20(width_pad_cr)
	st.w	$t0, $a7, %pc_lo12(width_pad_cr)
	pcalau12i	$a7, %pc_hi20(height_pad_cr)
	st.w	$a6, $a7, %pc_lo12(height_pad_cr)
	beqz	$a3, .LBB3_16
# %bb.15:
	pcalau12i	$a3, %pc_hi20(wp_weight)
	ld.d	$a3, $a3, %pc_lo12(wp_weight)
	ldx.d	$a3, $a3, $a4
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $a3, $a1
	ld.d	$a3, $a3, 4
	pcalau12i	$a6, %got_pc_hi20(weight_cr)
	ld.d	$a6, $a6, %got_pc_lo12(weight_cr)
	pcalau12i	$a7, %pc_hi20(wp_offset)
	ld.d	$a7, $a7, %pc_lo12(wp_offset)
	st.d	$a3, $a6, 0
	ldx.d	$a3, $a7, $a4
	ldx.d	$a1, $a3, $a1
	ld.w	$a3, $a1, 4
	pcalau12i	$a4, %got_pc_hi20(offset_cr)
	ld.d	$a4, $a4, %got_pc_lo12(offset_cr)
	ld.w	$a1, $a1, 8
	st.w	$a3, $a4, 0
	st.w	$a1, $a4, 4
.LBB3_16:
	ld.d	$a1, $sp, 400
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 392
	alsl.w	$a1, $s4, $s3, 2
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	alsl.w	$a1, $s5, $s2, 2
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	st.d	$t3, $sp, 224                   # 8-byte Folded Spill
	bge	$t3, $t6, .LBB3_21
# %bb.17:
	ext.w.h	$a2, $a2
	nor	$a1, $t3, $zero
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	sub.d	$a3, $a1, $a3
	add.w	$a2, $a3, $a2
	bge	$t6, $a2, .LBB3_21
# %bb.18:
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	bge	$t3, $a2, .LBB3_21
# %bb.19:
	ext.w.h	$a2, $a5
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a3
	add.w	$a1, $a1, $a2
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	bge	$a2, $a1, .LBB3_21
# %bb.20:
	move	$a1, $zero
	b	.LBB3_22
.LBB3_21:
	ori	$a1, $zero, 1
.LBB3_22:
	pcalau12i	$a2, %got_pc_hi20(ref_access_method)
	ld.d	$a2, $a2, %got_pc_lo12(ref_access_method)
	pcalau12i	$a3, %got_pc_hi20(mvbits)
	ld.d	$a3, $a3, %got_pc_lo12(mvbits)
	st.w	$a1, $a2, 0
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a1, $a3, 0
	slli.d	$a2, $t6, 2
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a1, $a2
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	slli.d	$a3, $s1, 2
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	sub.w	$a3, $a3, $a4
	slli.d	$a3, $a3, 2
	ldx.w	$a1, $a1, $a3
	slli.d	$a3, $s4, 2
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a3, $s5, 2
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	add.d	$a1, $a1, $a2
	pcalau12i	$a2, %got_pc_hi20(computeUniPred)
	ld.d	$a3, $a2, %got_pc_lo12(computeUniPred)
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a1, $a1, $a2
	srai.d	$s0, $a1, 16
	slli.d	$a0, $a0, 3
	st.d	$a3, $sp, 200                   # 8-byte Folded Spill
	ldx.d	$a6, $a3, $a0
	sub.w	$a3, $fp, $s0
	ori	$a0, $zero, 80
	alsl.w	$a4, $t6, $a0, 2
	alsl.w	$a5, $s1, $a0, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	st.d	$t6, $sp, 216                   # 8-byte Folded Spill
	jirl	$ra, $a6, 0
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	add.w	$a0, $s0, $a0
	slt	$a1, $a0, $fp
	maskeqz	$s6, $a5, $a1
	maskeqz	$s1, $s1, $a1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$a7, $a0, $a1
	or	$a0, $s2, $s3
	srai.d	$a1, $s7, 31
	xor	$a2, $s7, $a1
	sub.w	$a3, $a2, $a1
	srai.d	$a1, $s8, 31
	xor	$a2, $s8, $a1
	sub.w	$a1, $a2, $a1
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	st.d	$s7, $sp, 40                    # 8-byte Folded Spill
	st.d	$s8, $sp, 32                    # 8-byte Folded Spill
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	beqz	$a0, .LBB3_28
# %bb.23:
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	blt	$t2, $a3, .LBB3_27
# %bb.24:
	bltu	$t2, $a1, .LBB3_27
# %bb.25:
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s3, 2
	sub.d	$a1, $a0, $a1
	ld.w	$a1, $a1, 0
	slli.d	$a2, $s2, 2
	sub.d	$a0, $a0, $a2
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$fp, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a7, $fp
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.w	$a4, $a0, 80
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.w	$a5, $a0, 80
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	move	$s0, $a7
	jirl	$ra, $a6, 0
	move	$a7, $s0
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $fp, $a0
	move	$s2, $s6
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	bge	$a0, $s0, .LBB3_29
# %bb.26:
	move	$s2, $s4
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	move	$a7, $a0
	b	.LBB3_29
.LBB3_27:
	move	$s2, $s6
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	b	.LBB3_29
.LBB3_28:
	move	$s2, $s6
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
.LBB3_29:
	pcalau12i	$a0, %pc_hi20(ConvergeThreshold)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.hu	$a0, $a0, %pc_lo12(ConvergeThreshold)
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 1
	pcalau12i	$a2, %pc_hi20(block_type_shift_factor)
	addi.d	$a2, $a2, %pc_lo12(block_type_shift_factor)
	ldx.hu	$a3, $a2, $a1
	srl.w	$a1, $a0, $a3
	addi.w	$fp, $s6, -1
	sub.w	$a0, $fp, $a5
	srai.d	$a2, $a0, 31
	xor	$a0, $a0, $a2
	sub.w	$a0, $a0, $a2
	addi.w	$s3, $s1, -1
	st.d	$s5, $sp, 104                   # 8-byte Folded Spill
	st.d	$s4, $sp, 96                    # 8-byte Folded Spill
	bge	$a7, $a1, .LBB3_40
# %bb.30:                               # %.preheader.preheader
	blt	$t2, $a0, .LBB3_34
# %bb.31:
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	sub.w	$a0, $s1, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t2, $a0, .LBB3_34
# %bb.32:
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s1, 2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s0, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a7, $s0
	ori	$a0, $zero, 80
	alsl.w	$a4, $fp, $a0, 2
	alsl.w	$a5, $s1, $a0, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	move	$s7, $s1
	move	$s1, $a7
	jirl	$ra, $a6, 0
	move	$a7, $s1
	move	$s1, $s7
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $s0, $a0
	bge	$a0, $a7, .LBB3_34
# %bb.33:
	move	$s2, $fp
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	move	$a7, $a0
.LBB3_34:                               # %.preheader.1
	addi.d	$fp, $s6, 1
	sub.w	$a0, $fp, $a5
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t2, $a0, .LBB3_38
# %bb.35:
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	sub.w	$a0, $s1, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t2, $a0, .LBB3_38
# %bb.36:
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s1, 2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s0, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a7, $s0
	ori	$a0, $zero, 80
	alsl.w	$a4, $fp, $a0, 2
	alsl.w	$a5, $s1, $a0, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	move	$s4, $s1
	move	$s1, $a7
	jirl	$ra, $a6, 0
	move	$a7, $s1
	move	$s1, $s4
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $s0, $a0
	bge	$a0, $a7, .LBB3_38
# %bb.37:
	move	$s2, $fp
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	move	$a7, $a0
.LBB3_38:                               # %.preheader.2
	sub.w	$a0, $s6, $a5
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bge	$t2, $a0, .LBB3_50
# %bb.39:
	ld.d	$s8, $sp, 160                   # 8-byte Folded Reload
	move	$s3, $s2
	b	.LBB3_188
.LBB3_40:                               # %.preheader779.preheader
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	blt	$t2, $a0, .LBB3_44
# %bb.41:
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	sub.w	$a0, $s1, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t2, $a0, .LBB3_44
# %bb.42:
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s1, 2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s0, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a7, $s0
	ori	$a0, $zero, 80
	alsl.w	$a4, $fp, $a0, 2
	alsl.w	$a5, $s1, $a0, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	move	$s7, $s1
	move	$s1, $a7
	jirl	$ra, $a6, 0
	move	$a7, $s1
	move	$s1, $s7
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $s0, $a0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	bge	$a0, $a7, .LBB3_44
# %bb.43:
	move	$s2, $fp
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	move	$a7, $a0
.LBB3_44:                               # %.preheader779.1
	addi.w	$fp, $s6, 1
	sub.w	$a0, $fp, $a5
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t2, $a0, .LBB3_48
# %bb.45:
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	sub.w	$a0, $s1, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t2, $a0, .LBB3_48
# %bb.46:
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s1, 2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s0, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a7, $s0
	ori	$a0, $zero, 80
	alsl.w	$a4, $fp, $a0, 2
	alsl.w	$a5, $s1, $a0, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	move	$s7, $s1
	move	$s1, $a7
	jirl	$ra, $a6, 0
	move	$a7, $s1
	move	$s1, $s7
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $s0, $a0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	bge	$a0, $a7, .LBB3_48
# %bb.47:
	move	$s2, $fp
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	move	$a7, $a0
.LBB3_48:                               # %.preheader779.2
	sub.w	$a0, $s6, $a5
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bge	$t2, $a0, .LBB3_55
# %bb.49:
	move	$s3, $s2
	b	.LBB3_64
.LBB3_50:
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	sub.w	$a0, $s3, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t2, $a0, .LBB3_53
# %bb.51:
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s6, 2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s3, 2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$fp, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a7, $fp
	ori	$a0, $zero, 80
	alsl.w	$a4, $s6, $a0, 2
	alsl.w	$a5, $s3, $a0, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	move	$s0, $a7
	jirl	$ra, $a6, 0
	move	$a7, $s0
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $fp, $a0
	bge	$a0, $s0, .LBB3_53
# %bb.52:
	move	$s2, $s6
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	move	$a7, $a0
.LBB3_53:
	ld.d	$s8, $sp, 160                   # 8-byte Folded Reload
	addi.d	$fp, $s1, 1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	sub.w	$a0, $fp, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bgeu	$t2, $a0, .LBB3_60
# %bb.54:
	move	$s3, $s2
	b	.LBB3_188
.LBB3_55:
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	sub.w	$a0, $s3, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t2, $a0, .LBB3_58
# %bb.56:
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s6, 2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s3, 2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$fp, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a7, $fp
	ori	$a0, $zero, 80
	alsl.w	$a4, $s6, $a0, 2
	alsl.w	$a5, $s3, $a0, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	move	$s0, $a7
	jirl	$ra, $a6, 0
	move	$a7, $s0
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $fp, $a0
	bge	$a0, $s0, .LBB3_58
# %bb.57:
	move	$s2, $s6
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	move	$a7, $a0
.LBB3_58:
	addi.w	$fp, $s1, 1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	sub.w	$a0, $fp, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bgeu	$t2, $a0, .LBB3_62
# %bb.59:
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	move	$s3, $s2
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	b	.LBB3_64
.LBB3_60:
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s6, 2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $fp, 2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s0, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a7, $s0
	ori	$a0, $zero, 80
	alsl.w	$a4, $s6, $a0, 2
	alsl.w	$a5, $fp, $a0, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	move	$s1, $a7
	jirl	$ra, $a6, 0
	move	$a7, $s1
	add.w	$a0, $s0, $a0
	move	$s3, $s2
	bge	$a0, $s1, .LBB3_188
# %bb.61:
	move	$s3, $s6
	move	$s8, $fp
	b	.LBB3_187
.LBB3_62:
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s6, 2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $fp, 2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s0, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a7, $s0
	ori	$a0, $zero, 80
	alsl.w	$a4, $s6, $a0, 2
	alsl.w	$a5, $fp, $a0, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	move	$s1, $a7
	jirl	$ra, $a6, 0
	move	$a7, $s1
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $s0, $a0
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	move	$s3, $s2
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	bge	$a0, $s1, .LBB3_64
# %bb.63:
	move	$s3, $s6
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	move	$a7, $a0
.LBB3_64:                               # %.preheader779.3
	ori	$a0, $zero, 1
	st.d	$s3, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB3_66
# %bb.65:
	pcalau12i	$a0, %pc_hi20(SymmetricalCrossSearchThreshold1)
	ld.hu	$a0, $a0, %pc_lo12(SymmetricalCrossSearchThreshold1)
	srl.w	$a0, $a0, $a3
	blt	$a0, $a7, .LBB3_67
.LBB3_66:
	pcalau12i	$a0, %pc_hi20(SymmetricalCrossSearchThreshold2)
	ld.hu	$a0, $a0, %pc_lo12(SymmetricalCrossSearchThreshold2)
	srl.w	$a0, $a0, $a3
	bge	$a0, $a7, .LBB3_77
.LBB3_67:
	ori	$a0, $zero, 2
	bge	$t2, $a0, .LBB3_94
# %bb.68:
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
.LBB3_69:                               # %.preheader778
	move	$fp, $zero
	pcalau12i	$a0, %pc_hi20(Hexagon_X)
	addi.d	$s2, $a0, %pc_lo12(Hexagon_X)
	pcalau12i	$a0, %pc_hi20(Hexagon_Y)
	addi.d	$s5, $a0, %pc_lo12(Hexagon_Y)
	ori	$s7, $zero, 12
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	move	$s3, $a2
	b	.LBB3_71
	.p2align	4, , 16
.LBB3_70:                               #   in Loop: Header=BB3_71 Depth=1
	addi.d	$fp, $fp, 2
	beq	$fp, $s7, .LBB3_75
.LBB3_71:                               # =>This Inner Loop Header: Depth=1
	ldx.h	$a0, $s2, $fp
	add.w	$s0, $a2, $a0
	sub.w	$a0, $s0, $a5
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t2, $a0, .LBB3_70
# %bb.72:                               #   in Loop: Header=BB3_71 Depth=1
	ldx.h	$a0, $s5, $fp
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.w	$s8, $a1, $a0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	sub.w	$a0, $s8, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t2, $a0, .LBB3_70
# %bb.73:                               #   in Loop: Header=BB3_71 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s0, 2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s8, 2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s4, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a7, $s4
	addi.w	$s1, $a7, 0
	ori	$a0, $zero, 80
	alsl.w	$a4, $s0, $a0, 2
	alsl.w	$a5, $s8, $a0, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	move	$s6, $a7
	jirl	$ra, $a6, 0
	move	$a7, $s6
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $s4, $a0
	bge	$a0, $s1, .LBB3_70
# %bb.74:                               #   in Loop: Header=BB3_71 Depth=1
	move	$s3, $s0
	st.d	$s8, $sp, 264                   # 8-byte Folded Spill
	move	$a7, $a0
	b	.LBB3_70
.LBB3_75:                               # %.preheader776
	ori	$a0, $zero, 4
	bge	$t2, $a0, .LBB3_114
# %bb.76:
	st.d	$s3, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	b	.LBB3_78
.LBB3_77:
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
.LBB3_78:                               # %.loopexit777
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
.LBB3_79:                               # %.loopexit777
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	bstrpick.d	$fp, $a2, 15, 0
	ori	$a0, $zero, 2
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	bstrpick.d	$s1, $a3, 15, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB3_86
# %bb.80:
	pcalau12i	$a0, %pc_hi20(smpUMHEX_pred_MV_uplayer_X)
	ld.h	$a0, $a0, %pc_lo12(smpUMHEX_pred_MV_uplayer_X)
	bstrpick.d	$a1, $a0, 30, 29
	add.d	$a0, $a0, $a1
	ext.w.h	$a0, $a0
	srai.d	$a0, $a0, 2
	ext.w.h	$a0, $a0
	sub.w	$a1, $a0, $a2
	srai.d	$a2, $a1, 31
	xor	$a1, $a1, $a2
	sub.w	$a1, $a1, $a2
	ld.d	$s7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	blt	$t2, $a1, .LBB3_84
# %bb.81:
	pcalau12i	$a1, %pc_hi20(smpUMHEX_pred_MV_uplayer_Y)
	ld.h	$a1, $a1, %pc_lo12(smpUMHEX_pred_MV_uplayer_Y)
	bstrpick.d	$a2, $a1, 30, 29
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	srai.d	$a1, $a1, 2
	sub.w	$a2, $a1, $a3
	srai.d	$a3, $a2, 31
	xor	$a2, $a2, $a3
	sub.w	$a2, $a2, $a3
	bltu	$t2, $a2, .LBB3_84
# %bb.82:
	add.w	$s0, $s6, $a0
	add.w	$s2, $s7, $a1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s0, 2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s2, 2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s3, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a7, $s3
	addi.w	$s4, $a7, 0
	ori	$a0, $zero, 80
	alsl.w	$a4, $s0, $a0, 2
	alsl.w	$a5, $s2, $a0, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	move	$s5, $a7
	jirl	$ra, $a6, 0
	move	$a7, $s5
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $s3, $a0
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	bge	$a0, $s4, .LBB3_84
# %bb.83:
	move	$s3, $s0
	move	$s5, $s2
	move	$a7, $a0
.LBB3_84:
	or	$a0, $fp, $s1
	slli.d	$a0, $a0, 48
	bnez	$a0, .LBB3_87
.LBB3_85:
	move	$s4, $s3
	b	.LBB3_127
.LBB3_86:
	ld.d	$s7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	or	$a0, $fp, $s1
	slli.d	$a0, $a0, 48
	beqz	$a0, .LBB3_85
.LBB3_87:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	blt	$t2, $a0, .LBB3_91
# %bb.88:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bltu	$t2, $a0, .LBB3_91
# %bb.89:
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	slli.d	$a1, $a1, 2
	sub.d	$a1, $a0, $a1
	ld.w	$a1, $a1, 0
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	slli.d	$a2, $a2, 2
	sub.d	$a0, $a0, $a2
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$fp, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a7, $fp
	addi.w	$s0, $a7, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.w	$a4, $a0, 80
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.w	$a5, $a0, 80
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	move	$s1, $a7
	jirl	$ra, $a6, 0
	move	$a7, $s1
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $fp, $a0
	bge	$a0, $s0, .LBB3_91
# %bb.90:
	move	$s3, $s6
	move	$s5, $s7
	move	$a7, $a0
.LBB3_91:
	addi.w	$fp, $s3, -1
	sub.w	$a0, $fp, $a5
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t2, $a0, .LBB3_93
# %bb.92:
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	sub.w	$a0, $s5, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bgeu	$t2, $a0, .LBB3_122
.LBB3_93:
	move	$s4, $s3
	b	.LBB3_123
.LBB3_94:                               # %.lr.ph
	bstrpick.d	$a0, $t2, 31, 31
	add.w	$a0, $t2, $a0
	srai.d	$s5, $a0, 1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	sub.w	$a0, $a2, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$s7, $a0, $a1
	slli.d	$a0, $a2, 2
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	sub.w	$s4, $a0, $a1
	ori	$s8, $zero, 80
	alsl.w	$a0, $a2, $s8, 2
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	sub.w	$a0, $s3, $a5
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	slli.d	$a0, $s3, 2
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	sub.w	$a0, $a0, $a1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	alsl.w	$a0, $s3, $s8, 2
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ori	$fp, $zero, 1
	ori	$s6, $zero, 1
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	b	.LBB3_97
	.p2align	4, , 16
.LBB3_95:                               #   in Loop: Header=BB3_97 Depth=1
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
.LBB3_96:                               #   in Loop: Header=BB3_97 Depth=1
	addi.d	$s6, $s6, 1
	bstrpick.d	$fp, $s6, 15, 0
	blt	$s5, $fp, .LBB3_69
.LBB3_97:                               # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $fp, 1
	addi.d	$a0, $a0, -1
	add.w	$s0, $a0, $s3
	sub.w	$a0, $s0, $a5
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t2, $a0, .LBB3_101
# %bb.98:                               #   in Loop: Header=BB3_97 Depth=1
	bltu	$t2, $s7, .LBB3_101
# %bb.99:                               #   in Loop: Header=BB3_97 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s0, 2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s4, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s2, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a7, $s2
	addi.w	$s3, $a7, 0
	alsl.w	$a4, $s0, $s8, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	move	$s1, $a7
	jirl	$ra, $a6, 0
	move	$a7, $s1
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $s2, $a0
	bge	$a0, $s3, .LBB3_101
# %bb.100:                              #   in Loop: Header=BB3_97 Depth=1
	st.d	$s0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	move	$a7, $a0
.LBB3_101:                              #   in Loop: Header=BB3_97 Depth=1
	addi.d	$a0, $zero, -1
	alsl.w	$s2, $fp, $a0, 1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	sub.w	$fp, $a0, $s2
	sub.w	$a0, $fp, $a5
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t2, $a0, .LBB3_105
# %bb.102:                              #   in Loop: Header=BB3_97 Depth=1
	bltu	$t2, $s7, .LBB3_105
# %bb.103:                              #   in Loop: Header=BB3_97 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s4, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s0, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a7, $s0
	addi.w	$s3, $a7, 0
	alsl.w	$a4, $fp, $s8, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	move	$s1, $a7
	jirl	$ra, $a6, 0
	move	$a7, $s1
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $s0, $a0
	bge	$a0, $s3, .LBB3_105
# %bb.104:                              #   in Loop: Header=BB3_97 Depth=1
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	move	$a7, $a0
.LBB3_105:                              #   in Loop: Header=BB3_97 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bltu	$t2, $a0, .LBB3_95
# %bb.106:                              #   in Loop: Header=BB3_97 Depth=1
	ori	$a5, $zero, 80
	move	$s8, $s4
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	add.w	$s0, $s2, $a0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	sub.w	$a0, $s0, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	slli.d	$fp, $a1, 2
	bgeu	$t2, $a0, .LBB3_108
# %bb.107:                              #   in Loop: Header=BB3_97 Depth=1
	move	$s1, $a7
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	b	.LBB3_110
	.p2align	4, , 16
.LBB3_108:                              #   in Loop: Header=BB3_97 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.w	$a1, $a0, $fp
	slli.d	$a2, $s0, 2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s3, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a7, $s3
	move	$s1, $a7
	addi.w	$s4, $a7, 0
	alsl.w	$a5, $s0, $a5, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $s3, $a0
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	bge	$a0, $s4, .LBB3_110
# %bb.109:                              #   in Loop: Header=BB3_97 Depth=1
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	move	$s1, $a0
.LBB3_110:                              #   in Loop: Header=BB3_97 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	sub.w	$s0, $a0, $s2
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	sub.w	$a0, $s0, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	move	$s4, $s8
	bgeu	$t2, $a0, .LBB3_112
# %bb.111:                              #   in Loop: Header=BB3_97 Depth=1
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	move	$a7, $s1
	ori	$s8, $zero, 80
	b	.LBB3_96
	.p2align	4, , 16
.LBB3_112:                              #   in Loop: Header=BB3_97 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.w	$a1, $a0, $fp
	slli.d	$a2, $s0, 2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$fp, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $s1, $fp
	addi.w	$s2, $s1, 0
	ori	$s8, $zero, 80
	alsl.w	$a5, $s0, $s8, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	move	$a7, $s1
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $fp, $a0
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	bge	$a0, $s2, .LBB3_96
# %bb.113:                              #   in Loop: Header=BB3_97 Depth=1
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	move	$a7, $a0
	b	.LBB3_96
.LBB3_114:                              # %.preheader775.preheader
	bstrpick.d	$a0, $t2, 62, 61
	add.w	$a0, $t2, $a0
	srai.d	$a0, $a0, 2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ori	$s8, $zero, 1
	pcalau12i	$a0, %pc_hi20(Big_Hexagon_X)
	addi.d	$s1, $a0, %pc_lo12(Big_Hexagon_X)
	pcalau12i	$a0, %pc_hi20(Big_Hexagon_Y)
	addi.d	$s5, $a0, %pc_lo12(Big_Hexagon_Y)
	ori	$a3, $zero, 32
	ori	$a1, $zero, 1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	st.d	$s3, $sp, 168                   # 8-byte Folded Spill
	b	.LBB3_116
	.p2align	4, , 16
.LBB3_115:                              #   in Loop: Header=BB3_116 Depth=1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$s8, $a1, 15, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	blt	$a0, $s8, .LBB3_79
.LBB3_116:                              # %.preheader775
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_118 Depth 2
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	move	$s4, $zero
	b	.LBB3_118
	.p2align	4, , 16
.LBB3_117:                              #   in Loop: Header=BB3_118 Depth=2
	addi.d	$s4, $s4, 2
	beq	$s4, $a3, .LBB3_115
.LBB3_118:                              #   Parent Loop BB3_116 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.h	$a0, $s1, $s4
	mul.d	$a0, $s8, $a0
	add.w	$s0, $a0, $s3
	sub.w	$a0, $s0, $a5
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t2, $a0, .LBB3_117
# %bb.119:                              #   in Loop: Header=BB3_118 Depth=2
	ldx.h	$a0, $s5, $s4
	mul.d	$a0, $s8, $a0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	add.w	$fp, $a0, $a1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	sub.w	$a0, $fp, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t2, $a0, .LBB3_117
# %bb.120:                              #   in Loop: Header=BB3_118 Depth=2
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s0, 2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $fp, 2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s7, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a7, $s7
	addi.w	$s6, $a7, 0
	ori	$a0, $zero, 80
	alsl.w	$a4, $s0, $a0, 2
	alsl.w	$a5, $fp, $a0, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	move	$s2, $a7
	jirl	$ra, $a6, 0
	ori	$a3, $zero, 32
	move	$a7, $s2
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $s7, $a0
	bge	$a0, $s6, .LBB3_117
# %bb.121:                              #   in Loop: Header=BB3_118 Depth=2
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	move	$a7, $a0
	b	.LBB3_117
.LBB3_122:
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s5, 2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s0, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a7, $s0
	addi.w	$s1, $a7, 0
	ori	$a0, $zero, 80
	alsl.w	$a4, $fp, $a0, 2
	alsl.w	$a5, $s5, $a0, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $s0, $a0
	slt	$a1, $a0, $s1
	masknez	$a2, $s3, $a1
	maskeqz	$a3, $fp, $a1
	or	$s4, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$a7, $a0, $a1
.LBB3_123:
	addi.w	$fp, $s3, 1
	sub.w	$a0, $fp, $a5
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t2, $a0, .LBB3_126
# %bb.124:
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	sub.w	$a0, $s5, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t2, $a0, .LBB3_126
# %bb.125:
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s5, 2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s0, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a7, $s0
	addi.w	$s1, $a7, 0
	ori	$a0, $zero, 80
	alsl.w	$a4, $fp, $a0, 2
	alsl.w	$a5, $s5, $a0, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $s0, $a0
	slt	$a1, $a0, $s1
	masknez	$a2, $s4, $a1
	maskeqz	$a3, $fp, $a1
	or	$s4, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$a7, $a0, $a1
.LBB3_126:
	sub.w	$a0, $s3, $a5
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bge	$t2, $a0, .LBB3_166
.LBB3_127:
	move	$s8, $s5
.LBB3_128:                              # %.loopexit
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
.LBB3_129:                              # %.loopexit
	ld.hu	$a0, $a1, %pc_lo12(ConvergeThreshold)
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	srl.w	$a0, $a0, $a1
	addi.w	$fp, $a7, 0
	bge	$fp, $a0, .LBB3_133
# %bb.130:                              # %.preheader771.preheader
	addi.d	$s0, $s4, -1
	sub.w	$a0, $s0, $a5
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t2, $a0, .LBB3_132
# %bb.131:
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	sub.w	$a0, $s8, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bgeu	$t2, $a0, .LBB3_169
.LBB3_132:
	move	$s3, $s4
	b	.LBB3_170
.LBB3_133:                              # %.preheader774
	blez	$t2, .LBB3_168
# %bb.134:                              # %.preheader773.preheader
	move	$a2, $zero
	pcalau12i	$a0, %pc_hi20(Hexagon_X)
	addi.d	$s1, $a0, %pc_lo12(Hexagon_X)
	pcalau12i	$a0, %pc_hi20(Hexagon_Y)
	addi.d	$s6, $a0, %pc_lo12(Hexagon_Y)
	ori	$t1, $zero, 12
	b	.LBB3_136
	.p2align	4, , 16
.LBB3_135:                              #   in Loop: Header=BB3_136 Depth=1
	addi.d	$a2, $a2, 1
	bstrpick.d	$a0, $a2, 15, 0
	move	$a6, $s8
	move	$s3, $s4
	bge	$a0, $t2, .LBB3_144
.LBB3_136:                              # %.preheader773
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_138 Depth 2
	move	$fp, $zero
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	move	$s3, $s4
	st.d	$s8, $sp, 160                   # 8-byte Folded Spill
	move	$a6, $s8
	st.d	$a2, $sp, 264                   # 8-byte Folded Spill
	b	.LBB3_138
	.p2align	4, , 16
.LBB3_137:                              #   in Loop: Header=BB3_138 Depth=2
	addi.d	$fp, $fp, 2
	beq	$fp, $t1, .LBB3_142
.LBB3_138:                              #   Parent Loop BB3_136 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.h	$a0, $s1, $fp
	add.w	$s0, $s3, $a0
	sub.w	$a0, $s0, $a5
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t2, $a0, .LBB3_137
# %bb.139:                              #   in Loop: Header=BB3_138 Depth=2
	ldx.h	$a0, $s6, $fp
	add.w	$s4, $a6, $a0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	sub.w	$a0, $s4, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t2, $a0, .LBB3_137
# %bb.140:                              #   in Loop: Header=BB3_138 Depth=2
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s0, 2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s4, 2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	move	$s8, $a6
	srai.d	$s5, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a7, $s5
	addi.w	$s7, $a7, 0
	ori	$a0, $zero, 80
	alsl.w	$a4, $s0, $a0, 2
	alsl.w	$a5, $s4, $a0, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	move	$s2, $s3
	move	$s3, $a7
	jirl	$ra, $a6, 0
	ori	$t1, $zero, 12
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	move	$a7, $s3
	move	$s3, $s2
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $s5, $a0
	move	$a6, $s8
	bge	$a0, $s7, .LBB3_137
# %bb.141:                              #   in Loop: Header=BB3_138 Depth=2
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s4, $sp, 160                   # 8-byte Folded Spill
	move	$a7, $a0
	b	.LBB3_137
	.p2align	4, , 16
.LBB3_142:                              #   in Loop: Header=BB3_136 Depth=1
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 160                   # 8-byte Folded Reload
	bne	$s4, $s3, .LBB3_135
# %bb.143:                              #   in Loop: Header=BB3_136 Depth=1
	bne	$s8, $a6, .LBB3_135
.LBB3_144:                              # %.preheader772.preheader
	move	$s8, $a6
	move	$s1, $zero
	b	.LBB3_147
	.p2align	4, , 16
.LBB3_145:                              #   in Loop: Header=BB3_147 Depth=1
	move	$a7, $s4
.LBB3_146:                              # %.thread905
                                        #   in Loop: Header=BB3_147 Depth=1
	addi.d	$s1, $s1, 1
	bstrpick.d	$a0, $s1, 15, 0
	move	$s8, $s7
	move	$s3, $s5
	bge	$a0, $t2, .LBB3_188
.LBB3_147:                              # %.preheader772
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$fp, $s3, -1
	sub.w	$a0, $fp, $a5
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t2, $a0, .LBB3_149
# %bb.148:                              #   in Loop: Header=BB3_147 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	sub.w	$a0, $s8, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bgeu	$t2, $a0, .LBB3_150
.LBB3_149:                              #   in Loop: Header=BB3_147 Depth=1
	move	$s5, $s3
	b	.LBB3_151
	.p2align	4, , 16
.LBB3_150:                              #   in Loop: Header=BB3_147 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s8, 2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s0, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a7, $s0
	addi.w	$s2, $a7, 0
	ori	$a0, $zero, 80
	alsl.w	$a4, $fp, $a0, 2
	alsl.w	$a5, $s8, $a0, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $s0, $a0
	slt	$a1, $a0, $s2
	masknez	$a2, $s3, $a1
	maskeqz	$a3, $fp, $a1
	or	$s5, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$a7, $a0, $a1
.LBB3_151:                              #   in Loop: Header=BB3_147 Depth=1
	addi.w	$fp, $s3, 1
	sub.w	$a0, $fp, $a5
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t2, $a0, .LBB3_154
# %bb.152:                              #   in Loop: Header=BB3_147 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	sub.w	$a0, $s8, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t2, $a0, .LBB3_154
# %bb.153:                              #   in Loop: Header=BB3_147 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s8, 2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s0, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a7, $s0
	addi.w	$s2, $a7, 0
	ori	$a0, $zero, 80
	alsl.w	$a4, $fp, $a0, 2
	alsl.w	$a5, $s8, $a0, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $s0, $a0
	slt	$a1, $a0, $s2
	masknez	$a2, $s5, $a1
	maskeqz	$a3, $fp, $a1
	or	$s5, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$a7, $a0, $a1
.LBB3_154:                              #   in Loop: Header=BB3_147 Depth=1
	sub.w	$a0, $s3, $a5
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bgeu	$t2, $a0, .LBB3_156
# %bb.155:                              #   in Loop: Header=BB3_147 Depth=1
	move	$s6, $s3
	move	$s4, $a7
	move	$s7, $s8
	b	.LBB3_164
	.p2align	4, , 16
.LBB3_156:                              #   in Loop: Header=BB3_147 Depth=1
	move	$fp, $s8
	addi.w	$s0, $s8, -1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	sub.w	$a0, $s0, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	slli.d	$s2, $s3, 2
	move	$s6, $s3
	ori	$a1, $zero, 80
	alsl.w	$a4, $s3, $a1, 2
	st.d	$a4, $sp, 264                   # 8-byte Folded Spill
	bgeu	$t2, $a0, .LBB3_158
# %bb.157:                              #   in Loop: Header=BB3_147 Depth=1
	move	$s4, $a7
	move	$s7, $fp
	b	.LBB3_160
	.p2align	4, , 16
.LBB3_158:                              #   in Loop: Header=BB3_147 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	sub.w	$a1, $s2, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s0, 2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s7, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a7, $s7
	move	$s4, $a7
	addi.w	$s3, $a7, 0
	ori	$a0, $zero, 80
	alsl.w	$a5, $s0, $a0, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $s7, $a0
	move	$s7, $fp
	bge	$a0, $s3, .LBB3_160
# %bb.159:                              #   in Loop: Header=BB3_147 Depth=1
	move	$s5, $s6
	move	$s7, $s0
	move	$s4, $a0
.LBB3_160:                              #   in Loop: Header=BB3_147 Depth=1
	addi.w	$s0, $fp, 1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	sub.w	$a0, $s0, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bgeu	$t2, $a0, .LBB3_162
# %bb.161:                              #   in Loop: Header=BB3_147 Depth=1
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	b	.LBB3_164
	.p2align	4, , 16
.LBB3_162:                              #   in Loop: Header=BB3_147 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	sub.w	$a1, $s2, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s0, 2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s2, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $s4, $s2
	addi.w	$s3, $s4, 0
	ori	$a0, $zero, 80
	alsl.w	$a5, $s0, $a0, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $s2, $a0
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	bge	$a0, $s3, .LBB3_164
# %bb.163:                              #   in Loop: Header=BB3_147 Depth=1
	move	$a7, $a0
	move	$s7, $s0
	move	$s5, $s6
	b	.LBB3_146
	.p2align	4, , 16
.LBB3_164:                              #   in Loop: Header=BB3_147 Depth=1
	bne	$s5, $s6, .LBB3_145
# %bb.165:                              #   in Loop: Header=BB3_147 Depth=1
	move	$s3, $s6
	move	$a7, $s4
	bne	$s7, $s8, .LBB3_146
	b	.LBB3_188
.LBB3_166:
	addi.w	$s0, $s5, -1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	sub.w	$a0, $s0, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	slli.d	$fp, $s3, 2
	bgeu	$t2, $a0, .LBB3_178
# %bb.167:
	move	$s8, $s5
	b	.LBB3_180
.LBB3_168:
	move	$s3, $s4
	b	.LBB3_188
.LBB3_169:
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s0, 2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s8, 2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s1, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a7, $s1
	ori	$a0, $zero, 80
	alsl.w	$a4, $s0, $a0, 2
	alsl.w	$a5, $s8, $a0, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $s1, $a0
	slt	$a1, $a0, $fp
	masknez	$a2, $s4, $a1
	maskeqz	$a3, $s0, $a1
	or	$s3, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$a7, $a0, $a1
.LBB3_170:                              # %.preheader771.1
	addi.d	$fp, $s4, 1
	sub.w	$a0, $fp, $a5
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bge	$t2, $a0, .LBB3_172
# %bb.171:
	move	$a6, $s8
	b	.LBB3_174
.LBB3_172:
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	move	$a6, $s8
	sub.w	$a0, $s8, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t2, $a0, .LBB3_174
# %bb.173:
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $a6, 2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s0, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a7, $s0
	addi.w	$s1, $a7, 0
	ori	$a0, $zero, 80
	alsl.w	$a4, $fp, $a0, 2
	alsl.w	$a5, $s8, $a0, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $s0, $a0
	move	$a6, $s8
	slt	$a1, $a0, $s1
	masknez	$a2, $s3, $a1
	maskeqz	$a3, $fp, $a1
	or	$s3, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$a7, $a0, $a1
.LBB3_174:                              # %.preheader771.2
	sub.w	$a0, $s4, $a5
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bge	$t2, $a0, .LBB3_176
# %bb.175:
	move	$s8, $a6
	b	.LBB3_188
.LBB3_176:
	move	$s6, $a6
	addi.d	$s0, $a6, -1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	sub.w	$a0, $s0, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	slli.d	$fp, $s4, 2
	bgeu	$t2, $a0, .LBB3_182
# %bb.177:
	move	$s8, $s6
	b	.LBB3_184
.LBB3_178:
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	sub.w	$a1, $fp, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s0, 2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s1, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a7, $s1
	addi.w	$s2, $a7, 0
	ori	$a0, $zero, 80
	alsl.w	$a4, $s3, $a0, 2
	alsl.w	$a5, $s0, $a0, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	move	$s8, $s4
	move	$s4, $s3
	move	$s3, $a7
	jirl	$ra, $a6, 0
	move	$a7, $s3
	move	$s3, $s4
	move	$s4, $s8
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $s1, $a0
	move	$s8, $s5
	bge	$a0, $s2, .LBB3_180
# %bb.179:
	move	$s4, $s3
	move	$s8, $s0
	move	$a7, $a0
.LBB3_180:
	addi.w	$s0, $s5, 1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	sub.w	$a0, $s0, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bgeu	$t2, $a0, .LBB3_189
# %bb.181:
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	b	.LBB3_128
.LBB3_182:
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	sub.w	$a1, $fp, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s0, 2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s1, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a7, $s1
	addi.w	$s2, $a7, 0
	ori	$a0, $zero, 80
	alsl.w	$a4, $s4, $a0, 2
	alsl.w	$a5, $s0, $a0, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	move	$s5, $s4
	move	$s4, $s3
	move	$s3, $a7
	jirl	$ra, $a6, 0
	move	$a7, $s3
	move	$s3, $s4
	move	$s4, $s5
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $s1, $a0
	move	$s8, $s6
	bge	$a0, $s2, .LBB3_184
# %bb.183:
	move	$s3, $s4
	move	$s8, $s0
	move	$a7, $a0
.LBB3_184:
	addi.d	$s0, $s6, 1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	sub.w	$a0, $s0, $a0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t2, $a0, .LBB3_188
# %bb.185:
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	sub.w	$a1, $fp, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s0, 2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$fp, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a7, $fp
	addi.w	$s1, $a7, 0
	ori	$a0, $zero, 80
	alsl.w	$a4, $s4, $a0, 2
	alsl.w	$a5, $s0, $a0, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	move	$s2, $a7
	jirl	$ra, $a6, 0
	move	$a7, $s2
	add.w	$a0, $fp, $a0
	bge	$a0, $s1, .LBB3_188
# %bb.186:
	move	$s3, $s4
	move	$s8, $s0
.LBB3_187:                              # %.preheader.3
	move	$a7, $a0
.LBB3_188:                              # %.preheader.3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	sub.d	$a0, $s3, $a0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.h	$a0, $a1, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	sub.d	$a1, $s8, $a0
	addi.w	$a0, $a7, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.h	$a1, $a2, 0
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.LBB3_189:
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	sub.w	$a1, $fp, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $s0, 2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$fp, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a7, $fp
	addi.w	$s1, $a7, 0
	ori	$a0, $zero, 80
	alsl.w	$a4, $s3, $a0, 2
	alsl.w	$a5, $s0, $a0, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	move	$s2, $a7
	jirl	$ra, $a6, 0
	move	$a7, $s2
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $fp, $a0
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	bge	$a0, $s1, .LBB3_129
# %bb.190:
	move	$s4, $s3
	move	$s8, $s0
	move	$a7, $a0
	b	.LBB3_129
.Lfunc_end3:
	.size	smpUMHEXIntegerPelBlockMotionSearch, .Lfunc_end3-smpUMHEXIntegerPelBlockMotionSearch
                                        # -- End function
	.globl	smpUMHEXFullSubPelBlockMotionSearch # -- Begin function smpUMHEXFullSubPelBlockMotionSearch
	.p2align	5
	.type	smpUMHEXFullSubPelBlockMotionSearch,@function
smpUMHEXFullSubPelBlockMotionSearch:    # @smpUMHEXFullSubPelBlockMotionSearch
# %bb.0:
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$t0, %got_pc_hi20(input)
	ld.d	$t1, $t0, %got_pc_lo12(input)
	ld.d	$t0, $sp, 256
	ld.d	$t1, $t1, 0
	pcalau12i	$t2, %got_pc_hi20(img)
	ld.d	$t2, $t2, %got_pc_lo12(img)
	ld.d	$ra, $sp, 248
	ld.d	$t6, $sp, 240
	ldptr.w	$t3, $t1, 4168
	ld.d	$t2, $t2, 0
	st.d	$a7, $sp, 144                   # 8-byte Folded Spill
	st.d	$a6, $sp, 136                   # 8-byte Folded Spill
	move	$s6, $a5
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	beqz	$t3, .LBB4_27
.LBB4_1:
	move	$a0, $zero
.LBB4_2:
	alsl.d	$a6, $s6, $t1, 3
	pcalau12i	$a5, %pc_hi20(start_me_refinement_hp)
	ld.w	$s2, $a5, %pc_lo12(start_me_refinement_hp)
	ori	$a7, $zero, 1
	ldptr.d	$t3, $t2, 14224
	ld.w	$t4, $t2, 12
	pcalau12i	$a5, %pc_hi20(active_pps)
	ld.d	$a5, $a5, %pc_lo12(active_pps)
	ori	$t5, $zero, 536
	mul.d	$t4, $t4, $t5
	add.d	$t3, $t3, $t4
	ld.w	$t5, $a5, 192
	ld.w	$t4, $t3, 432
	slt	$t3, $a7, $t0
	masknez	$a7, $a7, $t3
	maskeqz	$t3, $t0, $t3
	st.d	$t6, $sp, 120                   # 8-byte Folded Spill
	beqz	$t5, .LBB4_5
# %bb.3:
	ld.w	$t5, $t2, 20
	beqz	$t5, .LBB4_7
# %bb.4:
	ori	$t6, $zero, 3
	beq	$t5, $t6, .LBB4_7
.LBB4_5:
	ld.w	$a5, $a5, 196
	beqz	$a5, .LBB4_8
# %bb.6:
	ld.w	$a5, $t2, 20
	ori	$t2, $zero, 1
	bne	$a5, $t2, .LBB4_8
.LBB4_7:
	ori	$a5, $zero, 2936
	ldx.w	$a5, $t1, $a5
	sltu	$a5, $zero, $a5
	b	.LBB4_9
.LBB4_8:
	move	$a5, $zero
.LBB4_9:
	pcalau12i	$t1, %got_pc_hi20(listX)
	ld.d	$t1, $t1, %got_pc_lo12(listX)
	ld.w	$t2, $a6, 72
	st.d	$t2, $sp, 112                   # 8-byte Folded Spill
	add.w	$a2, $t4, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$t1, $t1, $a2
	ld.w	$a6, $a6, 76
	st.d	$a6, $sp, 104                   # 8-byte Folded Spill
	sltui	$t2, $s2, 1
	slli.d	$a6, $a1, 3
	ldx.d	$a6, $t1, $a6
	or	$t3, $t3, $a7
	lu12i.w	$t1, 1
	ori	$a7, $t1, 2296
	ldx.w	$t5, $a6, $a7
	ori	$a7, $t1, 2300
	ldx.w	$t6, $a6, $a7
	ori	$a7, $zero, 2
	masknez	$a7, $a7, $a5
	ori	$t4, $zero, 5
	maskeqz	$t4, $t4, $a5
	or	$a7, $t4, $a7
	ldptr.d	$t7, $a6, 6448
	pcalau12i	$t4, %got_pc_hi20(ref_pic_sub)
	ld.d	$t4, $t4, %got_pc_lo12(ref_pic_sub)
	pcalau12i	$t8, %got_pc_hi20(img_width)
	ld.d	$t8, $t8, %got_pc_lo12(img_width)
	pcalau12i	$fp, %pc_hi20(dist_method)
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	st.w	$a7, $fp, %pc_lo12(dist_method)
	st.d	$t7, $t4, 0
	st.h	$t5, $t8, 0
	ori	$a7, $t1, 2312
	ldx.w	$a7, $a6, $a7
	pcalau12i	$t7, %got_pc_hi20(img_height)
	ld.d	$t7, $t7, %got_pc_lo12(img_height)
	pcalau12i	$t8, %pc_hi20(width_pad)
	st.w	$a7, $t8, %pc_lo12(width_pad)
	ori	$a7, $t1, 2316
	ldx.w	$t8, $a6, $a7
	ori	$a7, $zero, 80
	st.h	$t6, $t7, 0
	pcalau12i	$t7, %pc_hi20(height_pad)
	st.w	$t8, $t7, %pc_lo12(height_pad)
	beqz	$a5, .LBB4_11
# %bb.10:
	pcalau12i	$t7, %pc_hi20(wp_weight)
	ld.d	$t7, $t7, %pc_lo12(wp_weight)
	ldx.d	$t7, $t7, $a2
	slli.d	$t8, $a1, 3
	pcalau12i	$fp, %pc_hi20(wp_offset)
	ld.d	$fp, $fp, %pc_lo12(wp_offset)
	ldx.d	$t7, $t7, $t8
	ldx.d	$fp, $fp, $a2
	ld.w	$t7, $t7, 0
	pcalau12i	$s0, %got_pc_hi20(weight_luma)
	ld.d	$s0, $s0, %got_pc_lo12(weight_luma)
	ldx.d	$t8, $fp, $t8
	st.w	$t7, $s0, 0
	ld.w	$t7, $t8, 0
	pcalau12i	$t8, %got_pc_hi20(offset_luma)
	ld.d	$t8, $t8, %got_pc_lo12(offset_luma)
	st.w	$t7, $t8, 0
.LBB4_11:
	pcalau12i	$t7, %got_pc_hi20(ChromaMEEnable)
	ld.d	$t7, $t7, %got_pc_lo12(ChromaMEEnable)
	ld.d	$t8, $sp, 112                   # 8-byte Folded Reload
	sub.d	$t8, $t5, $t8
	ld.w	$t5, $t7, 0
	ld.d	$t7, $sp, 104                   # 8-byte Folded Reload
	sub.d	$t6, $t6, $t7
	maskeqz	$t3, $t3, $t2
	masknez	$t0, $t0, $t2
	alsl.w	$a3, $a3, $a7, 2
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	beqz	$t5, .LBB4_14
# %bb.12:
	ldptr.d	$a3, $a6, 6464
	ld.d	$t2, $a3, 0
	st.d	$t2, $t4, 8
	ld.d	$a3, $a3, 8
	st.d	$a3, $t4, 16
	ori	$a3, $t1, 2320
	ldx.w	$a3, $a6, $a3
	ori	$t1, $t1, 2324
	ldx.w	$a6, $a6, $t1
	pcalau12i	$t1, %pc_hi20(width_pad_cr)
	st.w	$a3, $t1, %pc_lo12(width_pad_cr)
	pcalau12i	$a3, %pc_hi20(height_pad_cr)
	st.w	$a6, $a3, %pc_lo12(height_pad_cr)
	beqz	$a5, .LBB4_14
# %bb.13:
	pcalau12i	$a3, %pc_hi20(wp_weight)
	ld.d	$a3, $a3, %pc_lo12(wp_weight)
	ldx.d	$a3, $a3, $a2
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $a3, $a1
	ld.d	$a3, $a3, 4
	pcalau12i	$a5, %got_pc_hi20(weight_cr)
	ld.d	$a5, $a5, %got_pc_lo12(weight_cr)
	pcalau12i	$a6, %pc_hi20(wp_offset)
	ld.d	$a6, $a6, %pc_lo12(wp_offset)
	st.d	$a3, $a5, 0
	ldx.d	$a2, $a6, $a2
	ldx.d	$a1, $a2, $a1
	ld.w	$a2, $a1, 4
	pcalau12i	$a3, %got_pc_hi20(offset_cr)
	ld.d	$a3, $a3, %got_pc_lo12(offset_cr)
	ld.w	$a1, $a1, 8
	st.w	$a2, $a3, 0
	st.w	$a1, $a3, 4
.LBB4_14:
	ld.d	$t1, $sp, 120                   # 8-byte Folded Reload
	ld.h	$a1, $t1, 0
	alsl.w	$a2, $a4, $a7, 2
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	add.w	$a2, $a2, $a1
	ori	$a3, $zero, 2
	or	$s8, $t3, $t0
	blt	$a2, $a3, .LBB4_19
# %bb.15:
	slli.d	$a3, $t8, 2
	addi.w	$a3, $a3, 159
	bge	$a2, $a3, .LBB4_19
# %bb.16:
	ld.h	$a2, $ra, 0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	add.w	$a2, $a3, $a2
	ori	$a3, $zero, 2
	blt	$a2, $a3, .LBB4_19
# %bb.17:
	slli.d	$a3, $t6, 2
	addi.w	$a3, $a3, 159
	bge	$a2, $a3, .LBB4_19
# %bb.18:
	move	$a2, $zero
	b	.LBB4_20
.LBB4_19:
	ori	$a2, $zero, 1
.LBB4_20:
	ld.d	$s3, $sp, 280
	pcalau12i	$a3, %got_pc_hi20(ref_access_method)
	ld.d	$a5, $a3, %got_pc_lo12(ref_access_method)
	ld.w	$s5, $sp, 272
	st.w	$a2, $a5, 0
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	bge	$s2, $s8, .LBB4_26
# %bb.21:                               # %.lr.ph
	st.d	$a5, $sp, 0                     # 8-byte Folded Spill
	st.d	$t8, $sp, 8                     # 8-byte Folded Spill
	st.d	$t6, $sp, 16                    # 8-byte Folded Spill
	move	$s1, $zero
	srai.d	$a4, $s3, 12
	pcalau12i	$a1, %pc_hi20(block_type_shift_factor)
	addi.d	$a1, $a1, %pc_lo12(block_type_shift_factor)
	pcalau12i	$a2, %got_pc_hi20(spiral_hpel_search_x)
	ld.d	$a5, $a2, %got_pc_lo12(spiral_hpel_search_x)
	pcalau12i	$a2, %got_pc_hi20(spiral_hpel_search_y)
	ld.d	$a3, $a2, %got_pc_lo12(spiral_hpel_search_y)
	pcalau12i	$a2, %got_pc_hi20(mvbits)
	ld.d	$a6, $a2, %got_pc_lo12(mvbits)
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	alsl.d	$a1, $s6, $a1, 1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a1, $a5, 0
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a2, $a3, 0
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a3, $a6, 0
	slli.d	$s7, $s2, 1
	pcalau12i	$a5, %got_pc_hi20(computeUniPred)
	ld.d	$a5, $a5, %got_pc_lo12(computeUniPred)
	st.d	$a5, $sp, 40                    # 8-byte Folded Spill
	andi	$a0, $a0, 1
	maskeqz	$fp, $a4, $a0
	pcalau12i	$s6, %pc_hi20(SubPelThreshold3)
	move	$s4, $s2
	b	.LBB4_23
	.p2align	4, , 16
.LBB4_22:                               #   in Loop: Header=BB4_23 Depth=1
	addi.d	$s4, $s4, 1
	addi.w	$s2, $s2, 1
	addi.d	$s7, $s7, 2
	beq	$s8, $s2, .LBB4_33
.LBB4_23:                               # =>This Inner Loop Header: Depth=1
	ld.h	$a0, $t1, 0
	ldx.h	$a4, $a1, $s7
	ld.h	$a5, $ra, 0
	ldx.h	$a6, $a2, $s7
	add.d	$a0, $a4, $a0
	add.d	$a5, $a6, $a5
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	sub.d	$a4, $a0, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a3, $a4
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	sub.d	$a6, $a5, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a3, $a6
	add.d	$a4, $a6, $a4
	mul.w	$a4, $a4, $s3
	srai.d	$s0, $a4, 16
	bge	$s0, $s5, .LBB4_22
# %bb.24:                               #   in Loop: Header=BB4_23 Depth=1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(dist_method)
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a6, $a2, $a1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.w	$a4, $a0, $a1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.w	$a5, $a5, $a0
	sub.w	$a3, $s5, $s0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	sltui	$a1, $s4, 1
	maskeqz	$a1, $fp, $a1
	sub.d	$a1, $s0, $a1
	add.w	$a0, $a1, $a0
	slt	$a1, $a0, $s5
	maskeqz	$a0, $a0, $a1
	masknez	$a2, $s5, $a1
	ld.hu	$a3, $s6, %pc_lo12(SubPelThreshold3)
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	ld.hu	$a4, $a4, 0
	or	$s5, $a0, $a2
	masknez	$a0, $s1, $a1
	maskeqz	$a1, $s2, $a1
	srl.w	$a2, $a3, $a4
	or	$s1, $a1, $a0
	blt	$s5, $a2, .LBB4_32
# %bb.25:                               #   in Loop: Header=BB4_23 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 120                   # 8-byte Folded Reload
	b	.LBB4_22
.LBB4_26:
	bstrpick.d	$a0, $a1, 15, 0
	slli.d	$a1, $a0, 48
	bnez	$a1, .LBB4_38
	b	.LBB4_36
.LBB4_27:
	ori	$a5, $zero, 1
	move	$a0, $zero
	bne	$s6, $a5, .LBB4_2
# %bb.28:
	bnez	$a1, .LBB4_2
# %bb.29:
	ld.w	$a5, $t2, 20
	ori	$a6, $zero, 1
	beq	$a5, $a6, .LBB4_2
# %bb.30:
	ld.hu	$a0, $t6, 0
	bnez	$a0, .LBB4_1
# %bb.31:
	ld.hu	$a0, $ra, 0
	sltui	$a0, $a0, 1
	b	.LBB4_2
.LBB4_32:
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 120                   # 8-byte Folded Reload
.LBB4_33:                               # %._crit_edge
	ld.hu	$a0, $t1, 0
	beqz	$s1, .LBB4_35
# %bb.34:
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	slli.d	$a2, $s1, 1
	ldx.h	$a1, $a1, $a2
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	add.d	$a0, $a0, $a1
	st.h	$a0, $t1, 0
	ldx.h	$a0, $a3, $a2
	ld.h	$a1, $ra, 0
	add.d	$a0, $a1, $a0
	st.h	$a0, $ra, 0
	ld.hu	$a0, $t1, 0
.LBB4_35:                               # %._crit_edge.thread
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a5, $sp, 0                     # 8-byte Folded Reload
	slli.d	$a1, $a0, 48
	bnez	$a1, .LBB4_38
.LBB4_36:
	ld.h	$a1, $ra, 0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	or	$a1, $a2, $a1
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	or	$a1, $a1, $a2
	slli.d	$a1, $a1, 48
	bnez	$a1, .LBB4_38
# %bb.37:
	pcalau12i	$a1, %pc_hi20(SubPelThreshold1)
	ld.hu	$a1, $a1, %pc_lo12(SubPelThreshold1)
	slli.d	$a2, $s6, 1
	pcalau12i	$a3, %pc_hi20(block_type_shift_factor)
	addi.d	$a3, $a3, %pc_lo12(block_type_shift_factor)
	ldx.hu	$a2, $a3, $a2
	srl.w	$a1, $a1, $a2
	blt	$s5, $a1, .LBB4_52
.LBB4_38:
	pcalau12i	$a1, %pc_hi20(start_me_refinement_qp)
	ld.w	$s4, $a1, %pc_lo12(start_me_refinement_qp)
	ld.d	$s8, $sp, 264
	sltui	$a2, $s4, 1
	masknez	$a1, $s5, $a2
	lu12i.w	$a3, 524287
	ori	$a4, $a3, 4095
	ext.w.h	$a0, $a0
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	add.w	$a3, $a3, $a0
	maskeqz	$a0, $a4, $a2
	blez	$a3, .LBB4_42
# %bb.39:
	ori	$a2, $zero, 160
	alsl.w	$a4, $t8, $a2, 2
	bge	$a3, $a4, .LBB4_42
# %bb.40:
	ld.h	$a3, $ra, 0
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	add.w	$a3, $a4, $a3
	blez	$a3, .LBB4_42
# %bb.41:
	alsl.w	$a4, $t6, $a2, 2
	move	$a2, $zero
	blt	$a3, $a4, .LBB4_43
.LBB4_42:
	ori	$a2, $zero, 1
.LBB4_43:
	or	$s5, $a0, $a1
	st.w	$a2, $a5, 0
	bge	$s4, $s8, .LBB4_52
# %bb.44:                               # %.lr.ph216
	move	$s0, $zero
	pcalau12i	$a0, %pc_hi20(block_type_shift_factor)
	pcalau12i	$a1, %got_pc_hi20(spiral_search_x)
	ld.d	$a4, $a1, %got_pc_lo12(spiral_search_x)
	pcalau12i	$a1, %got_pc_hi20(spiral_search_y)
	ld.d	$a2, $a1, %got_pc_lo12(spiral_search_y)
	pcalau12i	$a1, %got_pc_hi20(mvbits)
	ld.d	$s2, $a1, %got_pc_lo12(mvbits)
	addi.d	$a3, $a0, %pc_lo12(block_type_shift_factor)
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $a4, 0
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a1, $a2, 0
	ld.d	$a2, $s2, 0
	pcalau12i	$a4, %got_pc_hi20(computeUniPred)
	ld.d	$a4, $a4, %got_pc_lo12(computeUniPred)
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	alsl.d	$s7, $s6, $a3, 1
	slli.d	$fp, $s4, 1
	pcalau12i	$s1, %pc_hi20(SubPelThreshold3)
	b	.LBB4_46
	.p2align	4, , 16
.LBB4_45:                               #   in Loop: Header=BB4_46 Depth=1
	addi.w	$s4, $s4, 1
	addi.d	$fp, $fp, 2
	beq	$s8, $s4, .LBB4_50
.LBB4_46:                               # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $t1, 0
	ldx.h	$a4, $a0, $fp
	ld.h	$a5, $ra, 0
	ldx.h	$a6, $a1, $fp
	add.d	$a3, $a4, $a3
	add.d	$a5, $a6, $a5
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	sub.d	$a4, $a3, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a2, $a4
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	sub.d	$a6, $a5, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a2, $a6
	add.d	$a4, $a6, $a4
	mul.w	$a4, $a4, $s3
	srai.d	$s6, $a4, 16
	bge	$s6, $s5, .LBB4_45
# %bb.47:                               #   in Loop: Header=BB4_46 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(dist_method)
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.w	$a4, $a3, $a0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.w	$a5, $a5, $a0
	sub.w	$a3, $s5, $s6
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	add.w	$a0, $a0, $s6
	slt	$a1, $a0, $s5
	masknez	$a2, $s0, $a1
	maskeqz	$a3, $s4, $a1
	ld.hu	$a4, $s1, %pc_lo12(SubPelThreshold3)
	ld.hu	$a5, $s7, 0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$s5, $a0, $a1
	srl.w	$a0, $a4, $a5
	or	$s0, $a3, $a2
	blt	$s5, $a0, .LBB4_49
# %bb.48:                               #   in Loop: Header=BB4_46 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $s2, 0
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 120                   # 8-byte Folded Reload
	b	.LBB4_45
.LBB4_49:
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 120                   # 8-byte Folded Reload
.LBB4_50:                               # %._crit_edge217
	beqz	$s0, .LBB4_52
# %bb.51:
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s0, 1
	ldx.h	$a0, $a0, $a1
	ld.h	$a2, $t1, 0
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	add.d	$a0, $a2, $a0
	st.h	$a0, $t1, 0
	ldx.h	$a0, $a3, $a1
	ld.h	$a1, $ra, 0
	add.d	$a0, $a1, $a0
	st.h	$a0, $ra, 0
.LBB4_52:                               # %._crit_edge217.thread
	move	$a0, $s5
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.Lfunc_end4:
	.size	smpUMHEXFullSubPelBlockMotionSearch, .Lfunc_end4-smpUMHEXFullSubPelBlockMotionSearch
                                        # -- End function
	.globl	smpUMHEXSubPelBlockMotionSearch # -- Begin function smpUMHEXSubPelBlockMotionSearch
	.p2align	5
	.type	smpUMHEXSubPelBlockMotionSearch,@function
smpUMHEXSubPelBlockMotionSearch:        # @smpUMHEXSubPelBlockMotionSearch
# %bb.0:
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$t0, %got_pc_hi20(img)
	ld.d	$t0, $t0, %got_pc_lo12(img)
	ld.d	$t0, $t0, 0
	ldptr.w	$t1, $t0, 15268
	move	$s0, $a7
	move	$ra, $a5
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	beqz	$t1, .LBB5_3
# %bb.1:
	ld.w	$a0, $t0, 12
	ldptr.d	$a5, $t0, 14224
	ori	$a7, $zero, 536
	mul.d	$a7, $a0, $a7
	add.d	$a5, $a5, $a7
	ld.w	$a5, $a5, 424
	beqz	$a5, .LBB5_3
# %bb.2:
	andi	$a0, $a0, 1
	sltui	$a0, $a0, 1
	ori	$a5, $zero, 4
	masknez	$a5, $a5, $a0
	ori	$a7, $zero, 2
	maskeqz	$a0, $a7, $a0
	or	$a0, $a0, $a5
	b	.LBB5_4
.LBB5_3:
	move	$a0, $zero
.LBB5_4:
	add.w	$a0, $a0, $a2
	pcalau12i	$a2, %got_pc_hi20(listX)
	ld.d	$a2, $a2, %got_pc_lo12(listX)
	slli.d	$s1, $a0, 3
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a5, $a0, %got_pc_lo12(input)
	ldx.d	$a7, $a2, $s1
	pcalau12i	$a0, %pc_hi20(active_pps)
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.d	$a2, $a5, 0
	slli.d	$a5, $a1, 3
	ldx.d	$t2, $a7, $a5
	ld.w	$t1, $a0, 192
	alsl.d	$a5, $ra, $a2, 3
	lu12i.w	$a7, 1
	ori	$t6, $a7, 2296
	ori	$t5, $a7, 2300
	beqz	$t1, .LBB5_7
# %bb.5:
	ld.w	$t1, $t0, 20
	beqz	$t1, .LBB5_9
# %bb.6:
	ori	$t3, $zero, 3
	beq	$t1, $t3, .LBB5_9
.LBB5_7:
	ld.w	$t1, $a0, 196
	ori	$a0, $zero, 2
	beqz	$t1, .LBB5_10
# %bb.8:
	ld.w	$t0, $t0, 20
	ori	$t1, $zero, 1
	bne	$t0, $t1, .LBB5_10
.LBB5_9:
	ldptr.w	$a0, $a2, 2936
	sltu	$t3, $zero, $a0
	ori	$a0, $zero, 2
	masknez	$a0, $a0, $t3
	ori	$a2, $zero, 5
	maskeqz	$a2, $a2, $t3
	or	$a0, $a2, $a0
	b	.LBB5_11
.LBB5_10:
	move	$t3, $zero
.LBB5_11:                               # %.thread
	ld.w	$a2, $a5, 72
	ld.w	$a5, $a5, 76
	pcalau12i	$t0, %pc_hi20(ref_pic_ptr)
	ld.d	$t4, $t0, %pc_lo12(ref_pic_ptr)
	ldx.w	$t1, $t2, $t6
	ldx.w	$t0, $t2, $t5
	ori	$t2, $zero, 80
	ldx.h	$t7, $t4, $t6
	pcalau12i	$t6, %got_pc_hi20(img_width)
	ld.d	$t8, $t6, %got_pc_lo12(img_width)
	ldptr.d	$fp, $t4, 6448
	pcalau12i	$t6, %got_pc_hi20(ref_pic_sub)
	ld.d	$t6, $t6, %got_pc_lo12(ref_pic_sub)
	st.h	$t7, $t8, 0
	ldx.h	$t5, $t4, $t5
	pcalau12i	$t7, %got_pc_hi20(img_height)
	ld.d	$t7, $t7, %got_pc_lo12(img_height)
	pcalau12i	$t8, %pc_hi20(dist_method)
	st.d	$t8, $sp, 56                    # 8-byte Folded Spill
	st.w	$a0, $t8, %pc_lo12(dist_method)
	st.d	$fp, $t6, 0
	st.h	$t5, $t7, 0
	ori	$t5, $a7, 2312
	ldx.w	$t5, $t4, $t5
	ori	$t7, $a7, 2316
	ldx.w	$t7, $t4, $t7
	pcalau12i	$t8, %pc_hi20(width_pad)
	st.w	$t5, $t8, %pc_lo12(width_pad)
	pcalau12i	$t5, %pc_hi20(height_pad)
	st.w	$t7, $t5, %pc_lo12(height_pad)
	beqz	$t3, .LBB5_13
# %bb.12:
	pcalau12i	$t5, %pc_hi20(wp_weight)
	ld.d	$t5, $t5, %pc_lo12(wp_weight)
	ldx.d	$t5, $t5, $s1
	slli.d	$t7, $a1, 3
	pcalau12i	$t8, %pc_hi20(wp_offset)
	ld.d	$t8, $t8, %pc_lo12(wp_offset)
	ldx.d	$t5, $t5, $t7
	ldx.d	$t8, $t8, $s1
	ld.w	$t5, $t5, 0
	pcalau12i	$fp, %got_pc_hi20(weight_luma)
	ld.d	$fp, $fp, %got_pc_lo12(weight_luma)
	ldx.d	$t7, $t8, $t7
	st.w	$t5, $fp, 0
	ld.w	$t5, $t7, 0
	pcalau12i	$t7, %got_pc_hi20(offset_luma)
	ld.d	$t7, $t7, %got_pc_lo12(offset_luma)
	st.w	$t5, $t7, 0
.LBB5_13:
	pcalau12i	$t5, %got_pc_hi20(ChromaMEEnable)
	ld.d	$t5, $t5, %got_pc_lo12(ChromaMEEnable)
	ld.w	$t5, $t5, 0
	ld.d	$t7, $sp, 224
	alsl.w	$a3, $a3, $t2, 2
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	beqz	$t5, .LBB5_16
# %bb.14:
	ldptr.d	$a3, $t4, 6464
	ld.d	$t5, $a3, 0
	st.d	$t5, $t6, 8
	ld.d	$a3, $a3, 8
	st.d	$a3, $t6, 16
	ori	$a3, $a7, 2320
	ldx.w	$a3, $t4, $a3
	ori	$a7, $a7, 2324
	ldx.w	$a7, $t4, $a7
	pcalau12i	$t4, %pc_hi20(width_pad_cr)
	st.w	$a3, $t4, %pc_lo12(width_pad_cr)
	pcalau12i	$a3, %pc_hi20(height_pad_cr)
	st.w	$a7, $a3, %pc_lo12(height_pad_cr)
	beqz	$t3, .LBB5_16
# %bb.15:
	pcalau12i	$a3, %pc_hi20(wp_weight)
	ld.d	$a3, $a3, %pc_lo12(wp_weight)
	ldx.d	$a3, $a3, $s1
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $a3, $a1
	ld.d	$a3, $a3, 4
	pcalau12i	$a7, %got_pc_hi20(weight_cr)
	ld.d	$a7, $a7, %got_pc_lo12(weight_cr)
	pcalau12i	$t3, %pc_hi20(wp_offset)
	ld.d	$t3, $t3, %pc_lo12(wp_offset)
	st.d	$a3, $a7, 0
	ldx.d	$a3, $t3, $s1
	ldx.d	$a1, $a3, $a1
	ld.w	$a3, $a1, 4
	pcalau12i	$a7, %got_pc_hi20(offset_cr)
	ld.d	$a7, $a7, %got_pc_lo12(offset_cr)
	ld.w	$a1, $a1, 8
	st.w	$a3, $a7, 0
	st.w	$a1, $a7, 4
.LBB5_16:
	ld.h	$s4, $t7, 0
	ld.d	$s8, $sp, 232
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.w	$a3, $a1, $s4
	ori	$a1, $zero, 1
	alsl.w	$a4, $a4, $t2, 2
	st.d	$a4, $sp, 120                   # 8-byte Folded Spill
	bge	$a1, $a3, .LBB5_21
# %bb.17:
	sub.d	$a1, $t1, $a2
	slli.d	$a1, $a1, 2
	addi.d	$a4, $a1, 160
	ld.hu	$a1, $s8, 0
	ext.w.h	$a4, $a4
	addi.d	$a4, $a4, -1
	bge	$a3, $a4, .LBB5_22
# %bb.18:
	ext.w.h	$s1, $a1
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	add.w	$a3, $a3, $s1
	ori	$a4, $zero, 2
	blt	$a3, $a4, .LBB5_22
# %bb.19:
	sub.d	$a4, $t0, $a5
	slli.d	$a4, $a4, 2
	addi.d	$a4, $a4, 160
	ext.w.h	$a4, $a4
	addi.d	$a4, $a4, -1
	bge	$a3, $a4, .LBB5_22
# %bb.20:
	move	$a1, $zero
	b	.LBB5_23
.LBB5_21:                               # %._crit_edge254
	ld.hu	$a1, $s8, 0
.LBB5_22:
	ext.w.h	$s1, $a1
	ori	$a1, $zero, 1
.LBB5_23:
	pcalau12i	$a3, %got_pc_hi20(ref_access_method)
	ld.d	$a3, $a3, %got_pc_lo12(ref_access_method)
	ld.d	$t0, $sp, 264
	ld.d	$t3, $sp, 256
	st.w	$a1, $a3, 0
	sub.d	$a1, $a6, $s4
	bstrpick.d	$a3, $a1, 31, 30
	add.d	$a3, $a1, $a3
	bstrpick.d	$a3, $a3, 31, 2
	pcalau12i	$t1, %pc_hi20(smpUMHEX_SearchState)
	ld.d	$a4, $t1, %pc_lo12(smpUMHEX_SearchState)
	slli.d	$a3, $a3, 2
	sub.w	$s7, $a1, $a3
	pcalau12i	$a1, %pc_hi20(smpUMHEX_pred_MV_uplayer_X)
	ld.d	$a3, $a4, 0
	ld.hu	$fp, $a1, %pc_lo12(smpUMHEX_pred_MV_uplayer_X)
	pcalau12i	$a1, %pc_hi20(smpUMHEX_pred_MV_uplayer_Y)
	ld.hu	$t8, $a1, %pc_lo12(smpUMHEX_pred_MV_uplayer_Y)
	st.b	$zero, $a3, 48
	vrepli.b	$vr0, 0
	vst	$vr0, $a3, 32
	vst	$vr0, $a3, 16
	vst	$vr0, $a3, 0
	ld.d	$a1, $t1, %pc_lo12(smpUMHEX_SearchState)
	sub.d	$a3, $s0, $s1
	bstrpick.d	$a4, $a3, 31, 30
	add.d	$a4, $a3, $a4
	ld.d	$a1, $a1, 24
	bstrpick.d	$a4, $a4, 31, 2
	slli.d	$a4, $a4, 2
	ori	$a7, $zero, 1
	st.b	$a7, $a1, 3
	pcalau12i	$a1, %pc_hi20(start_me_refinement_hp)
	ld.w	$a1, $a1, %pc_lo12(start_me_refinement_hp)
	ld.h	$s2, $t7, 0
	ld.h	$s6, $s8, 0
	sub.w	$a3, $a3, $a4
	ext.w.h	$a7, $a2
	ext.w.h	$t2, $a5
	st.d	$a6, $sp, 88                    # 8-byte Folded Spill
	st.d	$t7, $sp, 104                   # 8-byte Folded Spill
	st.d	$t0, $sp, 80                    # 8-byte Folded Spill
	st.d	$t1, $sp, 96                    # 8-byte Folded Spill
	st.d	$a7, $sp, 72                    # 8-byte Folded Spill
	st.d	$t2, $sp, 64                    # 8-byte Folded Spill
	beqz	$a1, .LBB5_25
# %bb.24:
	bstrpick.d	$a0, $s2, 15, 0
	slli.d	$a1, $a0, 48
	pcalau12i	$a2, %pc_hi20(block_type_shift_factor)
	addi.d	$s5, $a2, %pc_lo12(block_type_shift_factor)
	bnez	$a1, .LBB5_32
	b	.LBB5_26
.LBB5_25:                               # %thread-pre-split
	pcalau12i	$a1, %got_pc_hi20(mvbits)
	ld.d	$a1, $a1, %got_pc_lo12(mvbits)
	ld.d	$a1, $a1, 0
	sub.d	$a2, $s2, $a6
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a1, $a2
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	sub.d	$a3, $s6, $s0
	slli.d	$a3, $a3, 2
	ldx.w	$a1, $a1, $a3
	add.d	$a1, $a1, $a2
	pcalau12i	$a2, %got_pc_hi20(computeUniPred)
	ld.d	$a2, $a2, %got_pc_lo12(computeUniPred)
	mul.w	$a1, $a1, $t0
	srai.d	$a1, $a1, 16
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 3
	ldx.d	$a6, $a2, $a0
	sub.w	$a3, $t3, $a1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.w	$a4, $a0, $s2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.w	$a5, $a0, $s6
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $t2
	move	$a2, $a7
	move	$s5, $t3
	move	$s3, $ra
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $t8
	jirl	$ra, $a6, 0
	move	$t8, $fp
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	move	$ra, $s3
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	slt	$a2, $a1, $s5
	maskeqz	$s2, $s2, $a2
	maskeqz	$s6, $s6, $a2
	ld.hu	$a0, $t7, 0
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s5, $a2
	or	$t3, $a1, $a2
	slli.d	$a1, $a0, 48
	pcalau12i	$a2, %pc_hi20(block_type_shift_factor)
	addi.d	$s5, $a2, %pc_lo12(block_type_shift_factor)
	bnez	$a1, .LBB5_32
.LBB5_26:
	ld.hu	$a1, $s8, 0
	bnez	$a1, .LBB5_32
# %bb.27:
	bnez	$s7, .LBB5_32
# %bb.28:
	sub.d	$a1, $fp, $s4
	andi	$a1, $a1, 3
	bnez	$a1, .LBB5_32
# %bb.29:
	bnez	$a3, .LBB5_32
# %bb.30:
	sub.d	$a1, $t8, $s1
	andi	$a1, $a1, 3
	bnez	$a1, .LBB5_32
# %bb.31:
	pcalau12i	$a1, %pc_hi20(SubPelThreshold1)
	ld.hu	$a1, $a1, %pc_lo12(SubPelThreshold1)
	slli.d	$a2, $ra, 1
	ldx.hu	$a2, $s5, $a2
	srl.w	$a1, $a1, $a2
	blt	$t3, $a1, .LBB5_64
.LBB5_32:
	or	$a1, $s7, $a3
	beqz	$a1, .LBB5_35
# %bb.33:
	pcalau12i	$a1, %got_pc_hi20(mvbits)
	ld.d	$a1, $a1, %got_pc_lo12(mvbits)
	ld.h	$a2, $s8, 0
	ext.w.h	$a0, $a0
	add.d	$fp, $s7, $a0
	ld.d	$a0, $a1, 0
	add.d	$s1, $a3, $a2
	sub.w	$a1, $fp, $a6
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	sub.w	$a2, $s1, $s0
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(dist_method)
	pcalau12i	$a2, %got_pc_hi20(computeUniPred)
	ld.d	$a2, $a2, %got_pc_lo12(computeUniPred)
	mul.w	$a0, $a0, $t0
	srai.d	$s3, $a0, 16
	slli.d	$a0, $a1, 3
	ldx.d	$a6, $a2, $a0
	sub.w	$a3, $t3, $s3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.w	$a4, $fp, $a0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.w	$a5, $s1, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $t2
	move	$a2, $a7
	move	$s4, $t3
	move	$s7, $ra
	jirl	$ra, $a6, 0
	move	$ra, $s7
	move	$t3, $s4
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	ld.h	$a1, $s8, 0
	ld.d	$a2, $t1, %pc_lo12(smpUMHEX_SearchState)
	sub.w	$a1, $s1, $a1
	alsl.d	$a1, $a1, $a2, 3
	ld.h	$a2, $t7, 0
	ld.d	$a1, $a1, 24
	add.w	$a0, $s3, $a0
	sub.w	$a2, $fp, $a2
	add.d	$a1, $a1, $a2
	ori	$a2, $zero, 1
	st.b	$a2, $a1, 3
	bge	$a0, $s4, .LBB5_35
# %bb.34:
	move	$s2, $fp
	move	$s6, $s1
	move	$t3, $a0
.LBB5_35:
	move	$a1, $zero
	alsl.d	$a0, $ra, $s5, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s7, $zero, 3
	pcalau12i	$a0, %got_pc_hi20(mvbits)
	ld.d	$a0, $a0, %got_pc_lo12(mvbits)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(computeUniPred)
	ld.d	$a0, $a0, %got_pc_lo12(computeUniPred)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(SubPelThreshold3)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$a5, $zero, 2
	move	$s3, $s6
	move	$s5, $s2
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	.p2align	4, , 16
.LBB5_36:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a0, $t7, 0
	addi.d	$fp, $s5, -1
	sub.w	$a2, $fp, $a0
	srai.d	$a3, $a2, 31
	xor	$a4, $a2, $a3
	sub.w	$a3, $a4, $a3
	move	$s1, $a1
	bltu	$s7, $a3, .LBB5_39
# %bb.37:                               #   in Loop: Header=BB5_36 Depth=1
	ld.h	$a1, $s8, 0
	sub.w	$a1, $s3, $a1
	srai.d	$a3, $a1, 31
	xor	$a4, $a1, $a3
	sub.w	$a3, $a4, $a3
	bltu	$s7, $a3, .LBB5_39
# %bb.38:                               #   in Loop: Header=BB5_36 Depth=1
	ld.d	$a3, $t1, %pc_lo12(smpUMHEX_SearchState)
	alsl.d	$a1, $a1, $a3, 3
	ld.d	$a1, $a1, 24
	add.d	$a1, $a1, $a2
	ld.bu	$a1, $a1, 3
	beqz	$a1, .LBB5_57
	.p2align	4, , 16
.LBB5_39:                               #   in Loop: Header=BB5_36 Depth=1
	move	$s2, $s5
	ori	$s4, $zero, 1
.LBB5_40:                               #   in Loop: Header=BB5_36 Depth=1
	addi.d	$fp, $s5, 1
	sub.w	$a1, $fp, $a0
	srai.d	$a2, $a1, 31
	xor	$a3, $a1, $a2
	sub.w	$a2, $a3, $a2
	bltu	$s7, $a2, .LBB5_45
# %bb.41:                               #   in Loop: Header=BB5_36 Depth=1
	ld.h	$a2, $s8, 0
	sub.w	$a2, $s3, $a2
	srai.d	$a3, $a2, 31
	xor	$a4, $a2, $a3
	sub.w	$a3, $a4, $a3
	bltu	$s7, $a3, .LBB5_45
# %bb.42:                               #   in Loop: Header=BB5_36 Depth=1
	ld.d	$a3, $t1, %pc_lo12(smpUMHEX_SearchState)
	alsl.d	$a2, $a2, $a3, 3
	ld.d	$a2, $a2, 24
	add.d	$a1, $a2, $a1
	ld.bu	$a1, $a1, 3
	bnez	$a1, .LBB5_45
# %bb.43:                               #   in Loop: Header=BB5_36 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	sub.w	$a1, $fp, $a6
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	sub.w	$a2, $s3, $s0
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	mul.w	$a0, $a0, $t0
	srai.d	$s6, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $t3, $s6
	addi.w	$s0, $t3, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.w	$a4, $fp, $a0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.w	$a5, $s3, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $t2
	move	$a2, $a7
	jirl	$ra, $a6, 0
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 104                   # 8-byte Folded Reload
	ld.h	$a1, $s8, 0
	ld.d	$a2, $t1, %pc_lo12(smpUMHEX_SearchState)
	sub.w	$a1, $s3, $a1
	alsl.d	$a1, $a1, $a2, 3
	ld.h	$a2, $t7, 0
	ld.d	$a1, $a1, 24
	add.w	$a0, $s6, $a0
	sub.w	$a2, $fp, $a2
	add.d	$a1, $a1, $a2
	ori	$a2, $zero, 1
	st.b	$a2, $a1, 3
	slt	$a1, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a2, $s0, $a1
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.hu	$a3, $a3, %pc_lo12(SubPelThreshold3)
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	ld.hu	$a4, $a4, 0
	or	$t3, $a0, $a2
	masknez	$a0, $s2, $a1
	maskeqz	$a2, $fp, $a1
	srl.w	$a3, $a3, $a4
	or	$s2, $a2, $a0
	blt	$t3, $a3, .LBB5_63
# %bb.44:                               # %._crit_edge250
                                        #   in Loop: Header=BB5_36 Depth=1
	ld.h	$a0, $t7, 0
	masknez	$s4, $s4, $a1
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	ori	$a5, $zero, 2
	.p2align	4, , 16
.LBB5_45:                               #   in Loop: Header=BB5_36 Depth=1
	sub.w	$a0, $s5, $a0
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	bltu	$s7, $a1, .LBB5_54
# %bb.46:                               #   in Loop: Header=BB5_36 Depth=1
	ld.h	$a1, $s8, 0
	addi.d	$fp, $s3, -1
	sub.w	$a1, $fp, $a1
	srai.d	$a2, $a1, 31
	xor	$a3, $a1, $a2
	sub.w	$a2, $a3, $a2
	bltu	$s7, $a2, .LBB5_48
# %bb.47:                               #   in Loop: Header=BB5_36 Depth=1
	ld.d	$a2, $t1, %pc_lo12(smpUMHEX_SearchState)
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a1, $a1, 24
	add.d	$a1, $a1, $a0
	ld.bu	$a1, $a1, 3
	beqz	$a1, .LBB5_59
.LBB5_48:                               #   in Loop: Header=BB5_36 Depth=1
	move	$s6, $s3
.LBB5_49:                               # %.thread268
                                        #   in Loop: Header=BB5_36 Depth=1
	ld.h	$a1, $s8, 0
	addi.d	$fp, $s3, 1
	sub.w	$a1, $fp, $a1
	srai.d	$a2, $a1, 31
	xor	$a3, $a1, $a2
	sub.w	$a2, $a3, $a2
	bltu	$s7, $a2, .LBB5_55
# %bb.50:                               #   in Loop: Header=BB5_36 Depth=1
	ld.d	$a2, $t1, %pc_lo12(smpUMHEX_SearchState)
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a1, $a1, 24
	add.d	$a0, $a1, $a0
	ld.bu	$a0, $a0, 3
	bnez	$a0, .LBB5_55
# %bb.51:                               #   in Loop: Header=BB5_36 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	sub.w	$a1, $s5, $a6
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	sub.w	$a2, $fp, $s0
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	mul.w	$a0, $a0, $t0
	srai.d	$s0, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $t3, $s0
	addi.w	$s3, $t3, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.w	$a4, $s5, $a0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.w	$a5, $fp, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $t2
	move	$a2, $a7
	move	$s8, $t3
	jirl	$ra, $a6, 0
	move	$t3, $s8
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 104                   # 8-byte Folded Reload
	ld.h	$a1, $s8, 0
	ld.d	$a2, $t1, %pc_lo12(smpUMHEX_SearchState)
	sub.w	$a1, $fp, $a1
	alsl.d	$a1, $a1, $a2, 3
	ld.h	$a2, $t7, 0
	ld.d	$a1, $a1, 24
	add.w	$a0, $s0, $a0
	sub.w	$a2, $s5, $a2
	add.d	$a1, $a1, $a2
	ori	$a2, $zero, 1
	st.b	$a2, $a1, 3
	bge	$a0, $s3, .LBB5_53
# %bb.52:                               #   in Loop: Header=BB5_36 Depth=1
	move	$s4, $zero
	move	$s2, $s5
	move	$s6, $fp
	move	$t3, $a0
.LBB5_53:                               #   in Loop: Header=BB5_36 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.hu	$a0, $a0, %pc_lo12(SubPelThreshold3)
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.hu	$a1, $a1, 0
	srl.w	$a0, $a0, $a1
	addi.w	$a1, $t3, 0
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	ori	$a5, $zero, 2
	bge	$a1, $a0, .LBB5_55
	b	.LBB5_64
	.p2align	4, , 16
.LBB5_54:                               #   in Loop: Header=BB5_36 Depth=1
	move	$s6, $s3
.LBB5_55:                               # %.thread280
                                        #   in Loop: Header=BB5_36 Depth=1
	bnez	$s4, .LBB5_64
# %bb.56:                               # %.thread280
                                        #   in Loop: Header=BB5_36 Depth=1
	addi.d	$a1, $s1, 1
	move	$s3, $s6
	move	$s5, $s2
	bltu	$s1, $a5, .LBB5_36
	b	.LBB5_64
.LBB5_57:                               #   in Loop: Header=BB5_36 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	sub.w	$a1, $fp, $a6
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	sub.w	$a2, $s3, $s0
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	mul.w	$a0, $a0, $t0
	srai.d	$s2, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $t3, $s2
	addi.w	$s0, $t3, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.w	$a4, $fp, $a0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.w	$a5, $s3, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $t2
	move	$a2, $a7
	jirl	$ra, $a6, 0
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 104                   # 8-byte Folded Reload
	ld.h	$a1, $s8, 0
	ld.d	$a2, $t1, %pc_lo12(smpUMHEX_SearchState)
	sub.w	$a1, $s3, $a1
	alsl.d	$a1, $a1, $a2, 3
	ld.h	$a2, $t7, 0
	ld.d	$a1, $a1, 24
	add.w	$a0, $s2, $a0
	sub.w	$a2, $fp, $a2
	add.d	$a1, $a1, $a2
	ori	$a2, $zero, 1
	st.b	$a2, $a1, 3
	slt	$a1, $a0, $s0
	xori	$s4, $a1, 1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.hu	$a2, $a2, %pc_lo12(SubPelThreshold3)
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.hu	$a3, $a3, 0
	masknez	$a4, $fp, $s4
	or	$t3, $a0, $a1
	maskeqz	$a0, $s5, $s4
	srl.w	$a1, $a2, $a3
	or	$s2, $a0, $a4
	blt	$t3, $a1, .LBB5_63
# %bb.58:                               # %._crit_edge
                                        #   in Loop: Header=BB5_36 Depth=1
	ld.h	$a0, $t7, 0
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	ori	$a5, $zero, 2
	b	.LBB5_40
.LBB5_59:                               #   in Loop: Header=BB5_36 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	sub.w	$a1, $s5, $a6
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	sub.w	$a2, $fp, $s0
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	mul.w	$a0, $a0, $t0
	srai.d	$s6, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $t3, $s6
	addi.w	$s0, $t3, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.w	$a4, $s5, $a0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.w	$a5, $fp, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $t2
	move	$a2, $a7
	move	$s8, $t3
	jirl	$ra, $a6, 0
	move	$t3, $s8
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 104                   # 8-byte Folded Reload
	ld.h	$a1, $s8, 0
	ld.d	$a2, $t1, %pc_lo12(smpUMHEX_SearchState)
	sub.w	$a1, $fp, $a1
	alsl.d	$a1, $a1, $a2, 3
	ld.h	$a2, $t7, 0
	ld.d	$a1, $a1, 24
	add.w	$a0, $s6, $a0
	sub.w	$a2, $s5, $a2
	add.d	$a1, $a1, $a2
	ori	$a2, $zero, 1
	st.b	$a2, $a1, 3
	move	$s6, $s3
	bge	$a0, $s0, .LBB5_61
# %bb.60:                               #   in Loop: Header=BB5_36 Depth=1
	move	$s4, $zero
	move	$s2, $s5
	move	$s6, $fp
	move	$t3, $a0
.LBB5_61:                               #   in Loop: Header=BB5_36 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.hu	$a0, $a0, %pc_lo12(SubPelThreshold3)
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.hu	$a1, $a1, 0
	srl.w	$a0, $a0, $a1
	addi.w	$a1, $t3, 0
	ori	$a5, $zero, 2
	blt	$a1, $a0, .LBB5_64
# %bb.62:                               #   in Loop: Header=BB5_36 Depth=1
	ld.h	$a0, $t7, 0
	sub.w	$a0, $s5, $a0
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	bgeu	$s7, $a1, .LBB5_49
	b	.LBB5_55
.LBB5_63:
	move	$s6, $s3
.LBB5_64:                               # %.loopexit
	st.h	$s2, $t7, 0
	addi.w	$a0, $t3, 0
	st.h	$s6, $s8, 0
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.Lfunc_end5:
	.size	smpUMHEXSubPelBlockMotionSearch, .Lfunc_end5-smpUMHEXSubPelBlockMotionSearch
                                        # -- End function
	.globl	smpUMHEXBipredIntegerPelBlockMotionSearch # -- Begin function smpUMHEXBipredIntegerPelBlockMotionSearch
	.p2align	5
	.type	smpUMHEXBipredIntegerPelBlockMotionSearch,@function
smpUMHEXBipredIntegerPelBlockMotionSearch: # @smpUMHEXBipredIntegerPelBlockMotionSearch
# %bb.0:
	addi.d	$sp, $sp, -448
	st.d	$ra, $sp, 440                   # 8-byte Folded Spill
	st.d	$fp, $sp, 432                   # 8-byte Folded Spill
	st.d	$s0, $sp, 424                   # 8-byte Folded Spill
	st.d	$s1, $sp, 416                   # 8-byte Folded Spill
	st.d	$s2, $sp, 408                   # 8-byte Folded Spill
	st.d	$s3, $sp, 400                   # 8-byte Folded Spill
	st.d	$s4, $sp, 392                   # 8-byte Folded Spill
	st.d	$s5, $sp, 384                   # 8-byte Folded Spill
	st.d	$s6, $sp, 376                   # 8-byte Folded Spill
	st.d	$s7, $sp, 368                   # 8-byte Folded Spill
	st.d	$s8, $sp, 360                   # 8-byte Folded Spill
	pcalau12i	$t0, %got_pc_hi20(img)
	ld.d	$t0, $t0, %got_pc_lo12(img)
	ld.d	$t0, $t0, 0
	ld.d	$t8, $sp, 472
	ld.d	$t4, $sp, 464
	ld.d	$t7, $sp, 488
	ld.w	$t1, $t0, 12
	ld.d	$s0, $sp, 480
	ldptr.d	$t0, $t0, 14224
	ori	$t2, $zero, 536
	mul.d	$t1, $t1, $t2
	pcalau12i	$t2, %got_pc_hi20(input)
	ld.d	$t2, $t2, %got_pc_lo12(input)
	pcalau12i	$t3, %pc_hi20(active_pps)
	ld.d	$t3, $t3, %pc_lo12(active_pps)
	add.d	$t0, $t0, $t1
	ld.w	$t1, $t0, 432
	ld.d	$t0, $t2, 0
	ld.w	$t2, $t3, 196
	st.d	$t4, $sp, 48                    # 8-byte Folded Spill
	ld.h	$t6, $t4, 0
	st.d	$a7, $sp, 280                   # 8-byte Folded Spill
	move	$s6, $a6
	move	$s7, $a4
	move	$s5, $a3
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	alsl.d	$s2, $a5, $t0, 3
	slli.d	$a6, $a1, 3
	beqz	$t2, .LBB6_3
# %bb.1:
	pcalau12i	$a0, %pc_hi20(wp_offset)
	ld.d	$a0, $a0, %pc_lo12(wp_offset)
	alsl.d	$a0, $t1, $a0, 3
	beqz	$a2, .LBB6_4
# %bb.2:
	ld.d	$a3, $a0, 8
	ld.d	$a0, $a0, 0
	ld.d	$a3, $a3, 0
	ld.d	$a0, $a0, 0
	slli.d	$a4, $a1, 2
	ldx.w	$t0, $a3, $a4
	ldx.w	$s1, $a0, $a4
	b	.LBB6_5
.LBB6_3:                                # %._crit_edge1215
	move	$t0, $zero
	move	$s1, $zero
	b	.LBB6_5
.LBB6_4:
	ld.d	$a3, $a0, 0
	ld.d	$a0, $a0, 8
	ldx.d	$a3, $a3, $a6
	ldx.d	$a0, $a0, $a6
	ld.w	$t0, $a3, 0
	ld.w	$s1, $a0, 0
.LBB6_5:
	pcalau12i	$a0, %got_pc_hi20(listX)
	ld.d	$a0, $a0, %got_pc_lo12(listX)
	add.w	$a3, $t1, $a2
	slli.d	$a3, $a3, 3
	ldx.d	$t4, $a0, $a3
	sltui	$a3, $a2, 1
	addi.w	$a7, $t1, 1
	masknez	$a4, $t1, $a3
	maskeqz	$a3, $a7, $a3
	or	$a3, $a3, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$t5, $a0, $a3
	ldx.d	$s3, $t4, $a6
	st.d	$t8, $sp, 56                    # 8-byte Folded Spill
	ld.h	$t3, $t8, 0
	add.d	$fp, $t6, $s5
	ld.d	$a0, $t5, 0
	ldptr.d	$a3, $s3, 6448
	pcalau12i	$a4, %got_pc_hi20(ref_pic1_sub)
	ld.d	$t8, $a4, %got_pc_lo12(ref_pic1_sub)
	ldptr.d	$a4, $a0, 6448
	pcalau12i	$a0, %got_pc_hi20(ref_pic2_sub)
	ld.d	$t6, $a0, %got_pc_lo12(ref_pic2_sub)
	ld.h	$a0, $s0, 0
	ld.h	$a5, $t7, 0
	st.d	$a3, $t8, 0
	st.d	$a4, $t6, 0
	lu12i.w	$t7, 1
	ori	$a3, $t7, 2296
	ldx.w	$a4, $s3, $a3
	pcalau12i	$a3, %got_pc_hi20(img_width)
	ld.d	$s0, $a3, %got_pc_lo12(img_width)
	ori	$a3, $t7, 2300
	ldx.w	$a3, $s3, $a3
	pcalau12i	$s4, %got_pc_hi20(img_height)
	ld.d	$s4, $s4, %got_pc_lo12(img_height)
	ld.w	$s8, $s2, 76
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
	ld.w	$s2, $s2, 72
	st.d	$s2, $sp, 304                   # 8-byte Folded Spill
	st.h	$a4, $s0, 0
	st.h	$a3, $s4, 0
	ori	$s0, $t7, 2312
	ldx.w	$s0, $s3, $s0
	ori	$s2, $t7, 2316
	ldx.w	$s2, $s3, $s2
	pcalau12i	$s3, %pc_hi20(width_pad)
	st.w	$s0, $s3, %pc_lo12(width_pad)
	pcalau12i	$s0, %pc_hi20(height_pad)
	st.w	$s2, $s0, %pc_lo12(height_pad)
	pcalau12i	$s0, %pc_hi20(wbp_weight)
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	beqz	$t2, .LBB6_8
# %bb.6:
	ld.d	$s2, $s0, %pc_lo12(wbp_weight)
	slli.d	$s3, $a7, 3
	beqz	$a2, .LBB6_9
# %bb.7:
	ldx.d	$s3, $s2, $s3
	slli.d	$s4, $t1, 3
	ldx.d	$s2, $s2, $s4
	ld.d	$s3, $s3, 0
	ld.d	$s2, $s2, 0
	alsl.d	$s3, $a1, $s3, 3
	alsl.d	$s2, $a1, $s2, 3
	b	.LBB6_10
.LBB6_8:
	move	$s1, $zero
	pcalau12i	$t0, %pc_hi20(luma_log_weight_denom)
	ld.wu	$s2, $t0, %pc_lo12(luma_log_weight_denom)
	ori	$s3, $zero, 1
	pcalau12i	$t0, %got_pc_hi20(weight1)
	ld.d	$s4, $t0, %got_pc_lo12(weight1)
	pcalau12i	$t0, %got_pc_hi20(weight2)
	ld.d	$s5, $t0, %got_pc_lo12(weight2)
	pcalau12i	$t0, %got_pc_hi20(computeBiPredSAD1)
	ld.d	$t0, $t0, %got_pc_lo12(computeBiPredSAD1)
	sll.w	$s2, $s3, $s2
	st.h	$s2, $s4, 0
	st.h	$s2, $s5, 0
	b	.LBB6_11
.LBB6_9:
	slli.d	$s4, $t1, 3
	ldx.d	$s4, $s2, $s4
	ldx.d	$s2, $s2, $s3
	ldx.d	$s3, $s4, $a6
	ldx.d	$s2, $s2, $a6
.LBB6_10:
	ld.d	$s3, $s3, 0
	ld.d	$s2, $s2, 0
	ld.h	$s3, $s3, 0
	pcalau12i	$s4, %got_pc_hi20(weight1)
	ld.d	$s4, $s4, %got_pc_lo12(weight1)
	ld.h	$s2, $s2, 0
	pcalau12i	$s5, %got_pc_hi20(weight2)
	ld.d	$s5, $s5, %got_pc_lo12(weight2)
	st.h	$s3, $s4, 0
	st.h	$s2, $s5, 0
	ext.w.h	$s2, $t0
	ext.w.h	$s1, $s1
	pcalau12i	$t0, %got_pc_hi20(computeBiPredSAD2)
	ld.d	$t0, $t0, %got_pc_lo12(computeBiPredSAD2)
	add.d	$s1, $s2, $s1
	addi.d	$s1, $s1, 1
	bstrpick.d	$s1, $s1, 31, 1
.LBB6_11:
	add.d	$t3, $t3, $s7
	pcalau12i	$s2, %got_pc_hi20(offsetBi)
	pcalau12i	$s3, %got_pc_hi20(ChromaMEEnable)
	ld.d	$s3, $s3, %got_pc_lo12(ChromaMEEnable)
	ld.d	$s2, $s2, %got_pc_lo12(offsetBi)
	pcalau12i	$s4, %got_pc_hi20(computeBiPred)
	ld.d	$s4, $s4, %got_pc_lo12(computeBiPred)
	ld.w	$s3, $s3, 0
	ld.d	$ra, $sp, 496
	ext.w.h	$s8, $fp
	st.h	$s1, $s2, 0
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	st.d	$t0, $s4, 0
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	beqz	$s3, .LBB6_19
# %bb.12:
	alsl.d	$t4, $a1, $t4, 3
	ld.d	$t4, $t4, 0
	ldptr.d	$fp, $t4, 6464
	ld.d	$s1, $fp, 0
	ld.d	$t5, $t5, 0
	st.d	$s1, $t8, 8
	ld.d	$fp, $fp, 8
	ldptr.d	$t5, $t5, 6464
	st.d	$fp, $t8, 16
	ld.d	$t8, $t5, 0
	st.d	$t8, $t6, 8
	ld.d	$t5, $t5, 8
	st.d	$t5, $t6, 16
	ori	$t5, $t7, 2320
	ldx.w	$t5, $t4, $t5
	ori	$t6, $t7, 2324
	ldx.w	$t4, $t4, $t6
	pcalau12i	$t6, %pc_hi20(width_pad_cr)
	st.w	$t5, $t6, %pc_lo12(width_pad_cr)
	pcalau12i	$t5, %pc_hi20(height_pad_cr)
	st.w	$t4, $t5, %pc_lo12(height_pad_cr)
	beqz	$t2, .LBB6_15
# %bb.13:
	ld.d	$t2, $s0, %pc_lo12(wbp_weight)
	beqz	$a2, .LBB6_16
# %bb.14:
	slli.d	$a2, $a7, 3
	ldx.d	$a7, $t2, $a2
	ld.d	$a7, $a7, 0
	ldx.d	$a6, $a7, $a6
	ld.h	$t4, $a6, 4
	pcalau12i	$a7, %got_pc_hi20(weight1_cr)
	slli.d	$t1, $t1, 3
	ldx.d	$t2, $t2, $t1
	pcalau12i	$t5, %pc_hi20(wp_offset)
	ld.d	$t5, $t5, %pc_lo12(wp_offset)
	ld.d	$t6, $a7, %got_pc_lo12(weight1_cr)
	ld.h	$t7, $a6, 8
	ld.d	$t2, $t2, 0
	ldx.d	$a7, $t5, $a2
	ldx.d	$a6, $t5, $t1
	st.h	$t4, $t6, 0
	st.h	$t7, $t6, 2
	alsl.d	$a2, $a1, $t2, 3
	b	.LBB6_17
.LBB6_15:
	pcalau12i	$a1, %pc_hi20(chroma_log_weight_denom)
	ld.wu	$a2, $a1, %pc_lo12(chroma_log_weight_denom)
	pcalau12i	$a1, %got_pc_hi20(weight1_cr)
	ld.d	$a6, $a1, %got_pc_lo12(weight1_cr)
	move	$a1, $zero
	ori	$a7, $zero, 1
	sll.w	$a2, $a7, $a2
	st.h	$a2, $a6, 0
	pcalau12i	$a7, %got_pc_hi20(weight2_cr)
	ld.d	$a7, $a7, %got_pc_lo12(weight2_cr)
	pcalau12i	$t1, %got_pc_hi20(offsetBi_cr)
	ld.d	$t1, $t1, %got_pc_lo12(offsetBi_cr)
	st.h	$a2, $a6, 2
	st.h	$a2, $a7, 0
	st.h	$a2, $a7, 2
	st.h	$zero, $t1, 0
	b	.LBB6_18
.LBB6_16:
	slli.d	$a2, $t1, 3
	ldx.d	$t1, $t2, $a2
	ldx.d	$t1, $t1, $a6
	ld.d	$t1, $t1, 0
	ld.h	$t4, $t1, 4
	pcalau12i	$t5, %got_pc_hi20(weight1_cr)
	ld.d	$t5, $t5, %got_pc_lo12(weight1_cr)
	st.h	$t4, $t5, 0
	pcalau12i	$t4, %pc_hi20(wp_offset)
	ld.d	$t4, $t4, %pc_lo12(wp_offset)
	slli.d	$a7, $a7, 3
	ldx.d	$t2, $t2, $a7
	ld.h	$t1, $t1, 8
	ldx.d	$t6, $t4, $a2
	ldx.d	$t4, $t4, $a7
	ldx.d	$a2, $t2, $a6
	st.h	$t1, $t5, 2
	alsl.d	$a7, $a1, $t6, 3
	alsl.d	$a6, $a1, $t4, 3
.LBB6_17:
	ld.d	$a1, $a7, 0
	ld.d	$a6, $a6, 0
	ld.w	$a7, $a1, 4
	ld.d	$a2, $a2, 0
	ld.w	$t1, $a6, 4
	ld.w	$a1, $a1, 8
	ld.w	$a6, $a6, 8
	ld.h	$t2, $a2, 4
	pcalau12i	$t4, %got_pc_hi20(weight2_cr)
	ld.d	$t4, $t4, %got_pc_lo12(weight2_cr)
	add.d	$a7, $a7, $t1
	add.d	$a1, $a6, $a1
	ld.h	$a2, $a2, 8
	st.h	$t2, $t4, 0
	pcalau12i	$a6, %got_pc_hi20(offsetBi_cr)
	ld.d	$a6, $a6, %got_pc_lo12(offsetBi_cr)
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	st.h	$a2, $t4, 2
	st.h	$a7, $a6, 0
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 1
.LBB6_18:                               # %.sink.split
	pcalau12i	$a2, %got_pc_hi20(offsetBi_cr)
	ld.d	$a2, $a2, %got_pc_lo12(offsetBi_cr)
	st.h	$a1, $a2, 2
.LBB6_19:
	ld.d	$a1, $sp, 456
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 448
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	add.d	$a2, $a5, $s7
	ext.w.h	$t3, $t3
	nor	$a1, $ra, $zero
	bge	$ra, $s8, .LBB6_24
# %bb.20:
	ext.w.h	$a4, $a4
	ld.d	$a5, $sp, 304                   # 8-byte Folded Reload
	sub.d	$a5, $a1, $a5
	add.w	$a4, $a5, $a4
	bge	$s8, $a4, .LBB6_24
# %bb.21:
	bge	$ra, $t3, .LBB6_24
# %bb.22:
	ext.w.h	$a4, $a3
	ld.d	$a5, $sp, 312                   # 8-byte Folded Reload
	sub.d	$a5, $a1, $a5
	add.w	$a4, $a5, $a4
	bge	$t3, $a4, .LBB6_24
# %bb.23:
	move	$a5, $zero
	b	.LBB6_25
.LBB6_24:
	ori	$a5, $zero, 1
.LBB6_25:
	ld.d	$t2, $sp, 512
	ld.d	$s0, $sp, 504
	slli.d	$a7, $s4, 2
	slli.d	$t1, $s7, 2
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	alsl.w	$a4, $s4, $a4, 2
	st.d	$a4, $sp, 320                   # 8-byte Folded Spill
	pcalau12i	$a4, %got_pc_hi20(bipred2_access_method)
	ld.d	$a6, $a4, %got_pc_lo12(bipred2_access_method)
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	alsl.w	$a4, $s7, $a4, 2
	st.d	$a4, $sp, 328                   # 8-byte Folded Spill
	add.d	$a4, $a0, $s4
	ext.w.h	$a0, $a2
	st.w	$a5, $a6, 0
	st.d	$ra, $sp, 272                   # 8-byte Folded Spill
	bge	$ra, $a0, .LBB6_28
# %bb.26:
	ext.w.h	$a2, $a3
	ld.d	$a3, $sp, 312                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a3
	add.w	$a1, $a1, $a2
	bge	$a0, $a1, .LBB6_28
# %bb.27:
	move	$a1, $zero
	b	.LBB6_29
.LBB6_28:
	ori	$a1, $zero, 1
.LBB6_29:
	pcalau12i	$a2, %got_pc_hi20(bipred1_access_method)
	ld.d	$a2, $a2, %got_pc_lo12(bipred1_access_method)
	pcalau12i	$a3, %got_pc_hi20(mvbits)
	ld.d	$a3, $a3, %got_pc_lo12(mvbits)
	st.w	$a1, $a2, 0
	st.d	$a3, $sp, 352                   # 8-byte Folded Spill
	ld.d	$a1, $a3, 0
	ext.w.h	$a2, $a4
	slli.d	$a2, $a2, 2
	st.d	$a7, $sp, 24                    # 8-byte Folded Spill
	move	$s5, $s6
	add.d	$a3, $a7, $s6
	sub.w	$a3, $a2, $a3
	slli.d	$a3, $a3, 2
	st.d	$a3, $sp, 344                   # 8-byte Folded Spill
	ldx.w	$a3, $a1, $a3
	slli.d	$a0, $a0, 2
	st.d	$t1, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	add.d	$a4, $t1, $s6
	sub.w	$a4, $a0, $a4
	slli.d	$a4, $a4, 2
	st.d	$a4, $sp, 336                   # 8-byte Folded Spill
	ldx.w	$a4, $a1, $a4
	slli.d	$t4, $s8, 2
	ld.d	$a5, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a6, $t4, $a5
	slli.d	$a5, $a6, 2
	st.d	$a5, $sp, 232                   # 8-byte Folded Spill
	ldx.w	$a6, $a1, $a5
	slli.d	$a7, $t3, 2
	ld.d	$t1, $sp, 328                   # 8-byte Folded Reload
	sub.w	$t1, $a7, $t1
	slli.d	$fp, $t1, 2
	ldx.w	$a1, $a1, $fp
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t2
	srli.d	$s1, $a3, 16
	add.d	$a1, $a1, $a6
	st.d	$t2, $sp, 288                   # 8-byte Folded Spill
	mul.w	$a1, $a1, $t2
	srli.d	$s2, $a1, 16
	addi.d	$a4, $a2, 80
	addi.d	$a5, $a0, 80
	addi.d	$a6, $t4, 80
	addi.d	$a7, $a7, 80
	lu12i.w	$a0, 524287
	ori	$a3, $a0, 4095
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	st.d	$a4, $sp, 248                   # 8-byte Folded Spill
	st.d	$a5, $sp, 256                   # 8-byte Folded Spill
	st.d	$a6, $sp, 216                   # 8-byte Folded Spill
	st.d	$a7, $sp, 224                   # 8-byte Folded Spill
	move	$s3, $t3
	jirl	$ra, $t0, 0
	add.d	$a0, $a0, $s1
	add.w	$a0, $a0, $s2
	slt	$a1, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$a2, $s6, $s5
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	or	$a2, $a2, $a3
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	or	$a2, $a2, $a3
	or	$s6, $a0, $a1
	st.d	$s8, $sp, 240                   # 8-byte Folded Spill
	st.d	$s3, $sp, 280                   # 8-byte Folded Spill
	beqz	$a2, .LBB6_32
# %bb.30:
	move	$s5, $s4
	sub.w	$a0, $s4, $s8
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	move	$a7, $s8
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	bge	$t0, $a0, .LBB6_33
# %bb.31:
	move	$s8, $a7
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	move	$s0, $t2
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	b	.LBB6_38
.LBB6_32:
	move	$s0, $s3
	move	$a7, $s8
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	move	$t2, $s3
	move	$s5, $s4
	b	.LBB6_38
.LBB6_33:
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	sub.w	$a0, $s7, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	bltu	$t0, $a0, .LBB6_37
# %bb.34:
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a2, $a0, $a2
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	slli.d	$a3, $a3, 2
	sub.d	$a3, $a0, $a3
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	slli.d	$a4, $a4, 2
	sub.d	$a0, $a0, $a4
	ld.w	$a3, $a3, 0
	ld.w	$a0, $a0, 0
	add.d	$a1, $a2, $a1
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$a0, $a0, $a3
	mul.w	$a0, $a0, $t1
	srai.d	$a0, $a0, 16
	add.d	$s0, $a0, $a1
	bge	$s0, $s6, .LBB6_37
# %bb.35:
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 0
	sub.w	$a3, $s6, $s0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a6, $a0, 80
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.w	$a7, $a0, 80
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s0
	move	$s8, $a7
	move	$s0, $t2
	bge	$a0, $s6, .LBB6_38
# %bb.36:
	move	$s8, $s5
	move	$s0, $s7
	move	$s6, $a0
	b	.LBB6_38
.LBB6_37:
	move	$s8, $a7
	move	$s0, $t2
.LBB6_38:
	pcalau12i	$a5, %pc_hi20(ConvergeThreshold)
	ld.hu	$a0, $a5, %pc_lo12(ConvergeThreshold)
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 1
	pcalau12i	$a2, %pc_hi20(block_type_shift_factor)
	addi.d	$a2, $a2, %pc_lo12(block_type_shift_factor)
	ldx.hu	$a2, $a2, $a1
	slli.w	$a1, $s6, 3
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	srl.w	$a0, $a0, $a2
	addi.d	$s2, $a7, -1
	st.d	$s7, $sp, 72                    # 8-byte Folded Spill
	bge	$a1, $a0, .LBB6_46
# %bb.39:                               # %.preheader.preheader
	blez	$t0, .LBB6_53
# %bb.40:
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a3, $a1, $a0
	slli.d	$a0, $s2, 2
	ld.d	$a4, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a4, $a0, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	ldx.w	$a1, $a1, $fp
	add.d	$a2, $a3, $a2
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$a1, $a1, $a4
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$s1, $a1, $a2
	bge	$s1, $s6, .LBB6_43
# %bb.41:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 0
	sub.w	$a3, $s6, $s1
	addi.d	$a6, $a0, 80
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 224                   # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s1
	bge	$a0, $s6, .LBB6_43
# %bb.42:
	move	$s8, $s2
	move	$s0, $t2
	move	$s6, $a0
.LBB6_43:
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	addi.d	$s1, $a7, 1
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a3, $a1, $a0
	slli.d	$a0, $s1, 2
	ld.d	$a4, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a4, $a0, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	ldx.w	$a1, $a1, $fp
	add.d	$a2, $a3, $a2
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$a1, $a1, $a4
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$fp, $a1, $a2
	bge	$fp, $s6, .LBB6_55
# %bb.44:
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 0
	sub.w	$a3, $s6, $fp
	addi.d	$a6, $a0, 80
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 224                   # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	add.w	$a0, $a0, $fp
	bge	$a0, $s6, .LBB6_56
# %bb.45:
	move	$s8, $s1
	move	$s0, $t2
	move	$s6, $a0
	b	.LBB6_56
.LBB6_46:                               # %.preheader1115.preheader
	st.d	$a5, $sp, 0                     # 8-byte Folded Spill
	blez	$t0, .LBB6_54
# %bb.47:
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a3, $a1, $a0
	slli.d	$a0, $s2, 2
	ld.d	$a4, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a4, $a0, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	ldx.w	$a1, $a1, $fp
	add.d	$a2, $a3, $a2
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$a1, $a1, $a4
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$s1, $a1, $a2
	bge	$s1, $s6, .LBB6_50
# %bb.48:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 0
	sub.w	$a3, $s6, $s1
	addi.d	$a6, $a0, 80
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 224                   # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s1
	bge	$a0, $s6, .LBB6_50
# %bb.49:
	move	$s8, $s2
	move	$s0, $t2
	move	$s6, $a0
.LBB6_50:
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	addi.d	$s1, $a7, 1
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a3, $a1, $a0
	slli.d	$a0, $s1, 2
	ld.d	$a4, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a4, $a0, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	ldx.w	$a1, $a1, $fp
	add.d	$a2, $a3, $a2
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$a1, $a1, $a4
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$fp, $a1, $a2
	bge	$fp, $s6, .LBB6_63
# %bb.51:
	ld.d	$s3, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 0
	sub.w	$a3, $s6, $fp
	addi.d	$a6, $a0, 80
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 224                   # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	add.w	$a0, $a0, $fp
	bge	$a0, $s6, .LBB6_64
# %bb.52:
	move	$s8, $s1
	move	$s0, $t2
	move	$s6, $a0
	b	.LBB6_64
.LBB6_53:
	move	$s7, $s8
	move	$s4, $s0
	move	$t3, $s6
	b	.LBB6_210
.LBB6_54:
	move	$s4, $s8
	move	$s2, $s0
	move	$t3, $s6
	b	.LBB6_71
.LBB6_55:
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
.LBB6_56:
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	addi.d	$s4, $t2, -1
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a3, $a1, $a0
	slli.d	$a0, $s4, 2
	ld.d	$a4, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a4, $a0, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	ld.d	$s1, $sp, 232                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $s1
	add.d	$a2, $a3, $a2
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$a1, $a4, $a1
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$fp, $a1, $a2
	bge	$fp, $s6, .LBB6_58
# %bb.57:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 0
	sub.w	$a3, $s6, $fp
	addi.d	$a7, $a0, 80
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	move	$a6, $s2
	jirl	$ra, $t0, 0
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	add.w	$t3, $a0, $fp
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	blt	$t3, $s6, .LBB6_59
.LBB6_58:                               # %.preheader.3
	move	$t3, $s6
	move	$s4, $s0
	move	$s7, $s8
.LBB6_59:
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	addi.d	$fp, $t2, 1
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a3, $a1, $a0
	ldx.w	$a4, $a1, $s1
	slli.d	$a0, $fp, 2
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a5, $a0, $a5
	slli.d	$a5, $a5, 2
	ldx.w	$a1, $a1, $a5
	add.d	$a2, $a3, $a2
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$a1, $a1, $a4
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$s0, $a1, $a2
	bge	$s0, $t3, .LBB6_210
# %bb.60:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 0
	sub.w	$a3, $t3, $s0
	addi.d	$a7, $a0, 80
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	move	$a6, $s2
	move	$s1, $t3
	jirl	$ra, $t0, 0
	move	$t3, $s1
	add.w	$a0, $a0, $s0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	bge	$a0, $s1, .LBB6_210
# %bb.61:
	move	$s7, $a1
	move	$s4, $fp
.LBB6_62:                               # %.preheader.3.thread
	move	$t3, $a0
	b	.LBB6_210
.LBB6_63:
	ld.d	$s3, $sp, 216                   # 8-byte Folded Reload
.LBB6_64:
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	addi.d	$s2, $t2, -1
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a3, $a1, $a0
	slli.d	$a0, $s2, 2
	ld.d	$a4, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a4, $a0, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	ld.d	$s1, $sp, 232                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $s1
	add.d	$a2, $a3, $a2
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$a1, $a4, $a1
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$fp, $a1, $a2
	bge	$fp, $s6, .LBB6_66
# %bb.65:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 0
	sub.w	$a3, $s6, $fp
	addi.d	$a7, $a0, 80
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	move	$a6, $s3
	jirl	$ra, $t0, 0
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	add.w	$t3, $a0, $fp
	ld.d	$s4, $sp, 240                   # 8-byte Folded Reload
	blt	$t3, $s6, .LBB6_67
.LBB6_66:                               # %.preheader1115.3
	move	$t3, $s6
	move	$s2, $s0
	move	$s4, $s8
.LBB6_67:
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	addi.d	$fp, $t2, 1
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a3, $a1, $a0
	ldx.w	$a4, $a1, $s1
	slli.d	$a0, $fp, 2
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a5, $a0, $a5
	slli.d	$a5, $a5, 2
	ldx.w	$a1, $a1, $a5
	add.d	$a2, $a3, $a2
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$a1, $a1, $a4
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$s0, $a1, $a2
	bge	$s0, $t3, .LBB6_70
# %bb.68:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 0
	sub.w	$a3, $t3, $s0
	addi.d	$a7, $a0, 80
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	move	$a6, $s3
	move	$s1, $t3
	jirl	$ra, $t0, 0
	move	$t3, $s1
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s0
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	bge	$a0, $s1, .LBB6_71
# %bb.69:
	move	$s4, $a7
	move	$s2, $fp
	move	$t3, $a0
	b	.LBB6_71
.LBB6_70:
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
.LBB6_71:                               # %.preheader1115.3.thread
	ori	$a1, $zero, 1
	slli.w	$a0, $t3, 2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	bne	$a2, $a1, .LBB6_73
# %bb.72:
	pcalau12i	$a1, %pc_hi20(SymmetricalCrossSearchThreshold1)
	ld.hu	$a1, $a1, %pc_lo12(SymmetricalCrossSearchThreshold1)
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	srl.w	$a1, $a1, $a2
	blt	$a1, $a0, .LBB6_74
.LBB6_73:                               # %._crit_edge1214
	pcalau12i	$a1, %pc_hi20(SymmetricalCrossSearchThreshold2)
	ld.hu	$a1, $a1, %pc_lo12(SymmetricalCrossSearchThreshold2)
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	srl.w	$a1, $a1, $a2
	bge	$a1, $a0, .LBB6_85
.LBB6_74:
	ori	$a0, $zero, 2
	bge	$t0, $a0, .LBB6_112
# %bb.75:
	st.d	$s4, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
.LBB6_76:                               # %.preheader1114
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(Hexagon_X)
	addi.d	$s3, $a0, %pc_lo12(Hexagon_X)
	pcalau12i	$a0, %pc_hi20(Hexagon_Y)
	addi.d	$s4, $a0, %pc_lo12(Hexagon_Y)
	ori	$s5, $zero, 12
	ld.d	$t5, $sp, 136                   # 8-byte Folded Reload
	st.d	$t5, $sp, 232                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 144                   # 8-byte Folded Reload
	move	$s0, $t4
	b	.LBB6_78
	.p2align	4, , 16
.LBB6_77:                               #   in Loop: Header=BB6_78 Depth=1
	addi.d	$s2, $s2, 2
	beq	$s2, $s5, .LBB6_83
.LBB6_78:                               # =>This Inner Loop Header: Depth=1
	ldx.h	$a0, $s3, $s2
	add.d	$s6, $t4, $a0
	sub.w	$a0, $s6, $a7
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t0, $a0, .LBB6_77
# %bb.79:                               #   in Loop: Header=BB6_78 Depth=1
	ldx.h	$a0, $s4, $s2
	add.d	$s7, $t5, $a0
	sub.w	$a0, $s7, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_77
# %bb.80:                               #   in Loop: Header=BB6_78 Depth=1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $s6, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s7, 2
	ld.d	$a6, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t1
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$s8, $a2, $a3
	addi.w	$s1, $t3, 0
	bge	$s8, $s1, .LBB6_77
# %bb.81:                               #   in Loop: Header=BB6_78 Depth=1
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t3, $s8
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	move	$fp, $t3
	jirl	$ra, $t0, 0
	move	$t3, $fp
	ld.d	$t5, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s8
	bge	$a0, $s1, .LBB6_77
# %bb.82:                               #   in Loop: Header=BB6_78 Depth=1
	move	$s0, $s6
	st.d	$s7, $sp, 232                   # 8-byte Folded Spill
	move	$t3, $a0
	b	.LBB6_77
.LBB6_83:                               # %.preheader1112
	ori	$a0, $zero, 4
	bge	$t0, $a0, .LBB6_133
# %bb.84:
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	b	.LBB6_86
.LBB6_85:
	st.d	$s2, $sp, 224                   # 8-byte Folded Spill
.LBB6_86:                               # %.loopexit1113
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB6_92
# %bb.87:
	pcalau12i	$a0, %pc_hi20(smpUMHEX_pred_MV_uplayer_X)
	ld.h	$a0, $a0, %pc_lo12(smpUMHEX_pred_MV_uplayer_X)
	bstrpick.d	$a1, $a0, 30, 29
	add.d	$a0, $a0, $a1
	ext.w.h	$a0, $a0
	srai.d	$a0, $a0, 2
	ext.w.h	$a0, $a0
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	add.d	$fp, $s5, $a0
	sub.w	$a0, $fp, $a7
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	blt	$t0, $a0, .LBB6_93
# %bb.88:
	pcalau12i	$a0, %pc_hi20(smpUMHEX_pred_MV_uplayer_Y)
	ld.h	$a0, $a0, %pc_lo12(smpUMHEX_pred_MV_uplayer_Y)
	bstrpick.d	$a1, $a0, 30, 29
	add.d	$a0, $a0, $a1
	ext.w.h	$a0, $a0
	srli.d	$a0, $a0, 2
	add.d	$s0, $s3, $a0
	sub.w	$a0, $s0, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_93
# %bb.89:
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $fp, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s0, 2
	ld.d	$a6, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t1
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$s2, $a2, $a3
	addi.w	$s1, $t3, 0
	bge	$s2, $s1, .LBB6_93
# %bb.90:
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t3, $s2
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	move	$s4, $t3
	jirl	$ra, $t0, 0
	move	$t3, $s4
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s2
	bge	$a0, $s1, .LBB6_93
# %bb.91:
	move	$s4, $fp
	move	$s7, $s0
	move	$t3, $a0
	b	.LBB6_93
.LBB6_92:
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
.LBB6_93:
	bne	$s5, $a7, .LBB6_96
# %bb.94:
	bne	$s3, $t2, .LBB6_96
# %bb.95:
	move	$s8, $s4
	move	$s6, $s7
	b	.LBB6_151
.LBB6_96:
	sub.w	$a0, $s5, $a7
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t0, $a0, .LBB6_101
# %bb.97:
	sub.w	$a0, $s3, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_101
# %bb.98:
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a2, $a0, $a2
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	slli.d	$a3, $a3, 2
	sub.d	$a3, $a0, $a3
	ld.w	$a3, $a3, 0
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	slli.d	$a4, $a4, 2
	sub.d	$a0, $a0, $a4
	ld.w	$a0, $a0, 0
	add.d	$a1, $a2, $a1
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$a0, $a0, $a3
	mul.w	$a0, $a0, $t1
	srai.d	$a0, $a0, 16
	add.d	$s0, $a0, $a1
	addi.w	$fp, $t3, 0
	bge	$s0, $fp, .LBB6_101
# %bb.99:
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 0
	sub.w	$a3, $t3, $s0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a6, $a0, 80
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.w	$a7, $a0, 80
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	move	$s1, $t3
	jirl	$ra, $t0, 0
	move	$t3, $s1
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s0
	bge	$a0, $fp, .LBB6_101
# %bb.100:
	move	$s4, $s5
	move	$s7, $s3
	move	$t3, $a0
.LBB6_101:
	addi.d	$fp, $s4, -1
	sub.w	$a0, $fp, $a7
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t0, $a0, .LBB6_105
# %bb.102:
	sub.w	$a0, $s7, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_105
# %bb.103:
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $fp, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s7, 2
	ld.d	$a6, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t1
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$s1, $a2, $a3
	addi.w	$s0, $t3, 0
	bge	$s1, $s0, .LBB6_105
# %bb.104:
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t3, $s1
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s1
	slt	$a1, $a0, $s0
	masknez	$a2, $s4, $a1
	maskeqz	$a3, $fp, $a1
	or	$s8, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$t3, $a0, $a1
	b	.LBB6_106
.LBB6_105:
	move	$s8, $s4
.LBB6_106:
	addi.d	$fp, $s4, 1
	sub.w	$a0, $fp, $a7
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t0, $a0, .LBB6_110
# %bb.107:
	sub.w	$a0, $s7, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_110
# %bb.108:
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $fp, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s7, 2
	ld.d	$a6, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t1
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$s1, $a2, $a3
	addi.w	$s0, $t3, 0
	bge	$s1, $s0, .LBB6_110
# %bb.109:
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t3, $s1
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s1
	slt	$a1, $a0, $s0
	masknez	$a2, $s8, $a1
	maskeqz	$a3, $fp, $a1
	or	$s8, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$t3, $a0, $a1
.LBB6_110:
	sub.w	$a0, $s4, $a7
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bge	$t0, $a0, .LBB6_142
# %bb.111:
	move	$s6, $s7
	b	.LBB6_151
.LBB6_112:                              # %.lr.ph
	move	$a4, $s2
	move	$s7, $zero
	sub.w	$a0, $s2, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a5, $a0, $a1
	slli.d	$a6, $s2, 2
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a0, $a6, $a0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ori	$a0, $zero, 80
	alsl.w	$a1, $s2, $a0, 2
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	sub.w	$a1, $s4, $a7
	srai.d	$a2, $a1, 31
	xor	$a1, $a1, $a2
	sub.w	$a1, $a1, $a2
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	slli.d	$t4, $s4, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $t4, $a1
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	alsl.w	$a0, $s4, $a0, 2
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	nor	$t5, $t2, $zero
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	sub.d	$a0, $a6, $a1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	addi.d	$a0, $a0, -4
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$t6, $zero, 1
	sub.d	$t7, $t6, $t2
	add.d	$a0, $a1, $a2
	ori	$a1, $zero, 4
	sub.d	$t8, $a1, $a0
	nor	$s0, $a7, $zero
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	sub.d	$a0, $t4, $a2
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	addi.d	$a0, $a0, -4
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	sub.d	$fp, $t6, $a7
	add.d	$a0, $a2, $a3
	sub.d	$s3, $a1, $a0
	bstrpick.d	$s2, $t0, 31, 1
	addi.d	$s5, $zero, -1
	ori	$s6, $zero, 84
	st.d	$a4, $sp, 224                   # 8-byte Folded Spill
	st.d	$a4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s4, $sp, 144                   # 8-byte Folded Spill
	st.d	$a5, $sp, 168                   # 8-byte Folded Spill
	st.d	$a6, $sp, 160                   # 8-byte Folded Spill
	st.d	$t4, $sp, 152                   # 8-byte Folded Spill
	b	.LBB6_114
	.p2align	4, , 16
.LBB6_113:                              #   in Loop: Header=BB6_114 Depth=1
	addi.d	$t5, $t5, -2
	addi.d	$s5, $s5, -2
	addi.d	$s7, $s7, -8
	addi.d	$t7, $t7, 2
	addi.d	$t6, $t6, 2
	addi.d	$s6, $s6, 8
	addi.d	$t8, $t8, 8
	addi.d	$s0, $s0, -2
	addi.d	$fp, $fp, 2
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 8
	beqz	$s2, .LBB6_76
.LBB6_114:                              # =>This Inner Loop Header: Depth=1
	add.w	$a0, $s4, $fp
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t0, $a0, .LBB6_119
# %bb.115:                              #   in Loop: Header=BB6_114 Depth=1
	bltu	$t0, $a5, .LBB6_119
# %bb.116:                              #   in Loop: Header=BB6_114 Depth=1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a2, $a0, $a2
	add.w	$a3, $t4, $s3
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a0, $a3
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	slli.d	$a4, $a4, 2
	ldx.w	$a0, $a0, $a4
	add.d	$a1, $a2, $a1
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$a0, $a0, $a3
	mul.w	$a0, $a0, $t1
	srai.d	$a0, $a0, 16
	add.d	$s8, $a0, $a1
	addi.w	$s1, $t3, 0
	bge	$s8, $s1, .LBB6_119
# %bb.117:                              #   in Loop: Header=BB6_114 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 0
	sub.w	$a3, $t3, $s8
	add.w	$a6, $t4, $s6
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 96                    # 8-byte Folded Reload
	move	$s4, $t3
	st.d	$t5, $sp, 232                   # 8-byte Folded Spill
	st.d	$s6, $sp, 192                   # 8-byte Folded Spill
	move	$s6, $t6
	st.d	$s5, $sp, 200                   # 8-byte Folded Spill
	move	$s5, $t7
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	move	$s3, $t8
	jirl	$ra, $t0, 0
	move	$t8, $s3
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	move	$t7, $s5
	ld.d	$s5, $sp, 200                   # 8-byte Folded Reload
	move	$t6, $s6
	ld.d	$s6, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	move	$t3, $s4
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s8
	bge	$a0, $s1, .LBB6_119
# %bb.118:                              #   in Loop: Header=BB6_114 Depth=1
	add.d	$a1, $s4, $t6
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	move	$t3, $a0
	.p2align	4, , 16
.LBB6_119:                              #   in Loop: Header=BB6_114 Depth=1
	add.w	$a0, $s4, $s0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t0, $a0, .LBB6_124
# %bb.120:                              #   in Loop: Header=BB6_114 Depth=1
	bltu	$t0, $a5, .LBB6_124
# %bb.121:                              #   in Loop: Header=BB6_114 Depth=1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a2, $a0, $a2
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	add.w	$a3, $a3, $s7
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a0, $a3
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	slli.d	$a4, $a4, 2
	ldx.w	$a0, $a0, $a4
	add.d	$a1, $a2, $a1
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$a0, $a0, $a3
	mul.w	$a0, $a0, $t1
	srai.d	$a0, $a0, 16
	add.d	$s8, $a0, $a1
	addi.w	$s1, $t3, 0
	bge	$s8, $s1, .LBB6_124
# %bb.122:                              #   in Loop: Header=BB6_114 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 0
	sub.w	$a3, $t3, $s8
	add.d	$a0, $t4, $s7
	addi.w	$a6, $a0, 76
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 96                    # 8-byte Folded Reload
	move	$s4, $t3
	st.d	$t5, $sp, 232                   # 8-byte Folded Spill
	st.d	$s6, $sp, 192                   # 8-byte Folded Spill
	move	$s6, $t6
	st.d	$s5, $sp, 200                   # 8-byte Folded Spill
	move	$s5, $t7
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	move	$s3, $t8
	jirl	$ra, $t0, 0
	move	$t8, $s3
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	move	$t7, $s5
	ld.d	$s5, $sp, 200                   # 8-byte Folded Reload
	move	$t6, $s6
	ld.d	$s6, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	move	$t3, $s4
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s8
	bge	$a0, $s1, .LBB6_124
# %bb.123:                              #   in Loop: Header=BB6_114 Depth=1
	add.d	$a1, $s4, $s5
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	move	$t3, $a0
	.p2align	4, , 16
.LBB6_124:                              #   in Loop: Header=BB6_114 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	bltu	$t0, $a0, .LBB6_113
# %bb.125:                              #   in Loop: Header=BB6_114 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $a0, $t7
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	slli.d	$a4, $a1, 2
	bltu	$t0, $a0, .LBB6_129
# %bb.126:                              #   in Loop: Header=BB6_114 Depth=1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a2, $a0, $a2
	add.w	$a3, $a6, $t8
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a0, $a3
	ldx.w	$a0, $a0, $a4
	add.d	$a1, $a2, $a1
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$a0, $a3, $a0
	mul.w	$a0, $a0, $t1
	srai.d	$a0, $a0, 16
	add.d	$s8, $a0, $a1
	addi.w	$s1, $t3, 0
	bge	$s8, $s1, .LBB6_129
# %bb.127:                              #   in Loop: Header=BB6_114 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 0
	sub.w	$a3, $t3, $s8
	add.w	$a7, $a6, $s6
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	move	$s4, $t3
	st.d	$t5, $sp, 232                   # 8-byte Folded Spill
	st.d	$s6, $sp, 192                   # 8-byte Folded Spill
	move	$s6, $t6
	st.d	$s5, $sp, 200                   # 8-byte Folded Spill
	move	$s5, $t7
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	move	$s3, $t8
	jirl	$ra, $t0, 0
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	move	$t8, $s3
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	move	$t7, $s5
	ld.d	$s5, $sp, 200                   # 8-byte Folded Reload
	move	$t6, $s6
	ld.d	$s6, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	move	$t3, $s4
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s8
	bge	$a0, $s1, .LBB6_129
# %bb.128:                              #   in Loop: Header=BB6_114 Depth=1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t6
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	st.d	$s4, $sp, 144                   # 8-byte Folded Spill
	move	$t3, $a0
	.p2align	4, , 16
.LBB6_129:                              #   in Loop: Header=BB6_114 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $a0, $t5
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_113
# %bb.130:                              #   in Loop: Header=BB6_114 Depth=1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a2, $a0, $a2
	ldx.w	$a3, $a0, $a4
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	add.w	$a4, $a4, $s7
	slli.d	$a4, $a4, 2
	ldx.w	$a0, $a0, $a4
	add.d	$a1, $a2, $a1
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$a0, $a0, $a3
	mul.w	$a0, $a0, $t1
	srai.d	$a0, $a0, 16
	add.d	$s8, $a0, $a1
	addi.w	$s1, $t3, 0
	bge	$s8, $s1, .LBB6_113
# %bb.131:                              #   in Loop: Header=BB6_114 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 0
	sub.w	$a3, $t3, $s8
	add.d	$a0, $a6, $s7
	addi.w	$a7, $a0, 76
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	move	$s4, $t3
	st.d	$t5, $sp, 232                   # 8-byte Folded Spill
	st.d	$s6, $sp, 192                   # 8-byte Folded Spill
	move	$s6, $t6
	st.d	$s5, $sp, 200                   # 8-byte Folded Spill
	move	$s5, $t7
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	move	$s3, $t8
	jirl	$ra, $t0, 0
	move	$t8, $s3
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	move	$t7, $s5
	ld.d	$s5, $sp, 200                   # 8-byte Folded Reload
	move	$t6, $s6
	ld.d	$s6, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	move	$t3, $s4
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s8
	bge	$a0, $s1, .LBB6_113
# %bb.132:                              #   in Loop: Header=BB6_114 Depth=1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	add.d	$a1, $a1, $s5
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	st.d	$s4, $sp, 144                   # 8-byte Folded Spill
	move	$t3, $a0
	b	.LBB6_113
.LBB6_133:                              # %.preheader1111.preheader
	bstrpick.d	$a1, $t0, 31, 2
	ori	$a0, $zero, 1
	pcalau12i	$a2, %pc_hi20(Big_Hexagon_X)
	addi.d	$s2, $a2, %pc_lo12(Big_Hexagon_X)
	pcalau12i	$a2, %pc_hi20(Big_Hexagon_Y)
	addi.d	$s4, $a2, %pc_lo12(Big_Hexagon_Y)
	ori	$t6, $zero, 32
	addi.w	$a1, $a1, 0
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	st.d	$t4, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	b	.LBB6_135
	.p2align	4, , 16
.LBB6_134:                              #   in Loop: Header=BB6_135 Depth=1
	addi.w	$a0, $s6, 1
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	beq	$s6, $a1, .LBB6_86
.LBB6_135:                              # %.preheader1111
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_137 Depth 2
	move	$s7, $zero
	move	$s6, $a0
	b	.LBB6_137
	.p2align	4, , 16
.LBB6_136:                              #   in Loop: Header=BB6_137 Depth=2
	addi.d	$s7, $s7, 2
	beq	$s7, $t6, .LBB6_134
.LBB6_137:                              #   Parent Loop BB6_135 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.h	$a0, $s2, $s7
	mul.d	$a0, $s6, $a0
	add.d	$s5, $a0, $s0
	sub.w	$a0, $s5, $a7
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t0, $a0, .LBB6_136
# %bb.138:                              #   in Loop: Header=BB6_137 Depth=2
	ldx.h	$a0, $s4, $s7
	mul.d	$a0, $s6, $a0
	add.d	$s1, $a0, $t4
	sub.w	$a0, $s1, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_136
# %bb.139:                              #   in Loop: Header=BB6_137 Depth=2
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $s5, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s1, 2
	ld.d	$a6, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t1
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$fp, $a2, $a3
	addi.w	$s8, $t3, 0
	bge	$fp, $s8, .LBB6_136
# %bb.140:                              #   in Loop: Header=BB6_137 Depth=2
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t3, $fp
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	move	$s3, $t3
	jirl	$ra, $t0, 0
	ori	$t6, $zero, 32
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	move	$t3, $s3
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $a0, $fp
	bge	$a0, $s8, .LBB6_136
# %bb.141:                              #   in Loop: Header=BB6_137 Depth=2
	st.d	$s5, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	move	$t3, $a0
	b	.LBB6_136
.LBB6_142:
	addi.d	$fp, $s7, -1
	sub.w	$a0, $fp, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_146
# %bb.143:
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $s4, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $fp, 2
	ld.d	$a6, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t1
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$s1, $a2, $a3
	addi.w	$s0, $t3, 0
	bge	$s1, $s0, .LBB6_146
# %bb.144:
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t3, $s1
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	move	$s2, $t3
	jirl	$ra, $t0, 0
	move	$t3, $s2
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s1
	move	$s6, $s7
	bge	$a0, $s0, .LBB6_147
# %bb.145:
	move	$s8, $s4
	move	$s6, $fp
	move	$t3, $a0
	b	.LBB6_147
.LBB6_146:
	move	$s6, $s7
.LBB6_147:
	addi.d	$fp, $s7, 1
	sub.w	$a0, $fp, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_151
# %bb.148:
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $s4, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $fp, 2
	ld.d	$a6, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t1
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$s1, $a2, $a3
	addi.w	$s0, $t3, 0
	bge	$s1, $s0, .LBB6_151
# %bb.149:
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t3, $s1
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	move	$s2, $t3
	jirl	$ra, $t0, 0
	move	$t3, $s2
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s1
	bge	$a0, $s0, .LBB6_151
# %bb.150:
	move	$s8, $s4
	move	$s6, $fp
	move	$t3, $a0
.LBB6_151:                              # %.loopexit
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	ld.hu	$a0, $a0, %pc_lo12(ConvergeThreshold)
	slli.w	$a1, $t3, 2
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	srl.w	$a0, $a0, $a2
	bge	$a1, $a0, .LBB6_156
# %bb.152:                              # %.preheader1107.preheader
	addi.d	$fp, $s8, -1
	sub.w	$a0, $fp, $a7
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t0, $a0, .LBB6_169
# %bb.153:
	sub.w	$a0, $s6, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_169
# %bb.154:
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $fp, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s6, 2
	ld.d	$a6, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t1
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$s1, $a2, $a3
	addi.w	$s0, $t3, 0
	bge	$s1, $s0, .LBB6_169
# %bb.155:
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t3, $s1
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s1
	slt	$a1, $a0, $s0
	masknez	$a2, $s8, $a1
	maskeqz	$a3, $fp, $a1
	or	$s7, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$t3, $a0, $a1
	b	.LBB6_170
.LBB6_156:                              # %.preheader1110
	blez	$t0, .LBB6_204
# %bb.157:                              # %.preheader1109.preheader
	move	$s3, $zero
	pcalau12i	$a0, %pc_hi20(Hexagon_X)
	addi.d	$s2, $a0, %pc_lo12(Hexagon_X)
	pcalau12i	$a0, %pc_hi20(Hexagon_Y)
	addi.d	$s0, $a0, %pc_lo12(Hexagon_Y)
	ori	$t7, $zero, 12
	b	.LBB6_159
	.p2align	4, , 16
.LBB6_158:                              #   in Loop: Header=BB6_159 Depth=1
	addi.w	$s3, $s3, 1
	move	$s4, $s6
	move	$s7, $s8
	beq	$s3, $t0, .LBB6_168
.LBB6_159:                              # %.preheader1109
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_161 Depth 2
	move	$s5, $zero
	st.d	$s8, $sp, 224                   # 8-byte Folded Spill
	move	$s7, $s8
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	move	$s4, $s6
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
	b	.LBB6_161
	.p2align	4, , 16
.LBB6_160:                              #   in Loop: Header=BB6_161 Depth=2
	addi.d	$s5, $s5, 2
	beq	$s5, $t7, .LBB6_166
.LBB6_161:                              #   Parent Loop BB6_159 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.h	$a0, $s2, $s5
	add.d	$s6, $s7, $a0
	sub.w	$a0, $s6, $a7
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t0, $a0, .LBB6_160
# %bb.162:                              #   in Loop: Header=BB6_161 Depth=2
	ldx.h	$a0, $s0, $s5
	add.d	$s1, $s4, $a0
	sub.w	$a0, $s1, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_160
# %bb.163:                              #   in Loop: Header=BB6_161 Depth=2
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $s6, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s1, 2
	ld.d	$a6, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t1
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$fp, $a2, $a3
	addi.w	$s8, $t3, 0
	bge	$fp, $s8, .LBB6_160
# %bb.164:                              #   in Loop: Header=BB6_161 Depth=2
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t3, $fp
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	move	$s7, $s4
	move	$s4, $t3
	jirl	$ra, $t0, 0
	ori	$t7, $zero, 12
	move	$t3, $s4
	move	$s4, $s7
	ld.d	$s7, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $a0, $fp
	bge	$a0, $s8, .LBB6_160
# %bb.165:                              #   in Loop: Header=BB6_161 Depth=2
	st.d	$s6, $sp, 224                   # 8-byte Folded Spill
	st.d	$s1, $sp, 216                   # 8-byte Folded Spill
	move	$t3, $a0
	b	.LBB6_160
	.p2align	4, , 16
.LBB6_166:                              #   in Loop: Header=BB6_159 Depth=1
	addi.w	$a0, $s7, 0
	ld.d	$s8, $sp, 224                   # 8-byte Folded Reload
	addi.w	$a1, $s8, 0
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB6_158
# %bb.167:                              #   in Loop: Header=BB6_159 Depth=1
	addi.w	$a0, $s4, 0
	addi.w	$a1, $s6, 0
	bne	$a1, $a0, .LBB6_158
.LBB6_168:                              # %.preheader1108.preheader
	move	$s0, $t0
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	b	.LBB6_178
.LBB6_169:
	move	$s7, $s8
.LBB6_170:                              # %.preheader1107.1
	addi.d	$fp, $s8, 1
	sub.w	$a0, $fp, $a7
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t0, $a0, .LBB6_174
# %bb.171:
	sub.w	$a0, $s6, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_174
# %bb.172:
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $fp, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s6, 2
	ld.d	$a6, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t1
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$s1, $a2, $a3
	addi.w	$s0, $t3, 0
	bge	$s1, $s0, .LBB6_174
# %bb.173:
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t3, $s1
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s1
	slt	$a1, $a0, $s0
	masknez	$a2, $s7, $a1
	maskeqz	$a3, $fp, $a1
	or	$s7, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$t3, $a0, $a1
.LBB6_174:                              # %.preheader1107.2
	sub.w	$a0, $s8, $a7
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bge	$t0, $a0, .LBB6_200
# %bb.175:
	move	$s4, $s6
	b	.LBB6_210
.LBB6_176:                              #   in Loop: Header=BB6_178 Depth=1
	move	$t3, $a0
	move	$s2, $s1
	move	$fp, $s7
	.p2align	4, , 16
.LBB6_177:                              # %.thread1286
                                        #   in Loop: Header=BB6_178 Depth=1
	addi.w	$s0, $s0, -1
	move	$s4, $s2
	move	$s7, $fp
	beqz	$s0, .LBB6_210
.LBB6_178:                              # %.preheader1108
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$fp, $s7, -1
	sub.w	$a0, $fp, $a7
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t0, $a0, .LBB6_182
# %bb.179:                              #   in Loop: Header=BB6_178 Depth=1
	sub.w	$a0, $s4, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_182
# %bb.180:                              #   in Loop: Header=BB6_178 Depth=1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $fp, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s4, 2
	ld.d	$a6, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t1
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$s2, $a2, $a3
	addi.w	$s1, $t3, 0
	bge	$s2, $s1, .LBB6_182
# %bb.181:                              #   in Loop: Header=BB6_178 Depth=1
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t3, $s2
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s2
	slt	$a1, $a0, $s1
	masknez	$a2, $s7, $a1
	maskeqz	$a3, $fp, $a1
	or	$fp, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$t3, $a0, $a1
	b	.LBB6_183
	.p2align	4, , 16
.LBB6_182:                              #   in Loop: Header=BB6_178 Depth=1
	move	$fp, $s7
.LBB6_183:                              #   in Loop: Header=BB6_178 Depth=1
	addi.d	$s2, $s7, 1
	sub.w	$a0, $s2, $a7
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t0, $a0, .LBB6_187
# %bb.184:                              #   in Loop: Header=BB6_178 Depth=1
	sub.w	$a0, $s4, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_187
# %bb.185:                              #   in Loop: Header=BB6_178 Depth=1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $s2, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s4, 2
	ld.d	$a6, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t1
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$s3, $a2, $a3
	addi.w	$s1, $t3, 0
	bge	$s3, $s1, .LBB6_187
# %bb.186:                              #   in Loop: Header=BB6_178 Depth=1
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t3, $s3
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s3
	slt	$a1, $a0, $s1
	masknez	$a2, $fp, $a1
	maskeqz	$a3, $s2, $a1
	or	$fp, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$t3, $a0, $a1
	.p2align	4, , 16
.LBB6_187:                              #   in Loop: Header=BB6_178 Depth=1
	sub.w	$a0, $s7, $a7
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bge	$t0, $a0, .LBB6_189
# %bb.188:                              #   in Loop: Header=BB6_178 Depth=1
	move	$s2, $s4
	b	.LBB6_198
	.p2align	4, , 16
.LBB6_189:                              #   in Loop: Header=BB6_178 Depth=1
	addi.d	$s1, $s4, -1
	sub.w	$a0, $s1, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_193
# %bb.190:                              #   in Loop: Header=BB6_178 Depth=1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $s7, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s1, 2
	ld.d	$a6, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t1
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$s2, $a2, $a3
	addi.w	$s3, $t3, 0
	bge	$s2, $s3, .LBB6_193
# %bb.191:                              #   in Loop: Header=BB6_178 Depth=1
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t3, $s2
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	move	$s8, $s7
	move	$s7, $s4
	move	$s4, $t3
	jirl	$ra, $t0, 0
	move	$t3, $s4
	move	$s4, $s7
	move	$s7, $s8
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s2
	move	$s2, $s4
	bge	$a0, $s3, .LBB6_194
# %bb.192:                              #   in Loop: Header=BB6_178 Depth=1
	move	$fp, $s7
	move	$s2, $s1
	move	$t3, $a0
	b	.LBB6_194
	.p2align	4, , 16
.LBB6_193:                              #   in Loop: Header=BB6_178 Depth=1
	move	$s2, $s4
.LBB6_194:                              #   in Loop: Header=BB6_178 Depth=1
	addi.d	$s1, $s4, 1
	sub.w	$a0, $s1, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_198
# %bb.195:                              #   in Loop: Header=BB6_178 Depth=1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $s7, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s1, 2
	ld.d	$a6, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	mul.w	$a3, $a3, $t1
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$s5, $a2, $a3
	addi.w	$s3, $t3, 0
	bge	$s5, $s3, .LBB6_197
# %bb.196:                              #   in Loop: Header=BB6_178 Depth=1
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t3, $s5
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	move	$s8, $s7
	move	$s7, $s4
	move	$s4, $t3
	jirl	$ra, $t0, 0
	move	$t3, $s4
	move	$s4, $s7
	move	$s7, $s8
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s5
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	blt	$a0, $s3, .LBB6_176
	b	.LBB6_198
.LBB6_197:                              #   in Loop: Header=BB6_178 Depth=1
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_198:                              #   in Loop: Header=BB6_178 Depth=1
	addi.w	$a0, $s7, 0
	addi.w	$a1, $fp, 0
	bne	$a1, $a0, .LBB6_177
# %bb.199:                              #   in Loop: Header=BB6_178 Depth=1
	addi.w	$a0, $s4, 0
	addi.w	$a1, $s2, 0
	bne	$a1, $a0, .LBB6_177
	b	.LBB6_210
.LBB6_200:
	addi.d	$s0, $s6, -1
	sub.w	$a0, $s0, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	slli.d	$fp, $s8, 2
	bltu	$t0, $a0, .LBB6_205
# %bb.201:
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a3, $a1, $a0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a0, $fp, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a4, $a1, $a0
	slli.d	$a0, $s0, 2
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a5, $a0, $a5
	slli.d	$a5, $a5, 2
	ldx.w	$a1, $a1, $a5
	add.d	$a2, $a3, $a2
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$a1, $a1, $a4
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$s2, $a1, $a2
	addi.w	$s1, $t3, 0
	bge	$s2, $s1, .LBB6_205
# %bb.202:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 0
	sub.w	$a3, $t3, $s2
	addi.w	$a6, $fp, 80
	addi.w	$a7, $a0, 80
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	move	$s3, $t3
	jirl	$ra, $t0, 0
	move	$t3, $s3
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s2
	move	$s4, $s6
	bge	$a0, $s1, .LBB6_206
# %bb.203:
	move	$s7, $s8
	move	$s4, $s0
	move	$t3, $a0
	b	.LBB6_206
.LBB6_204:
	move	$s7, $s8
	move	$s4, $s6
	b	.LBB6_210
.LBB6_205:
	move	$s4, $s6
.LBB6_206:
	addi.d	$s0, $s6, 1
	sub.w	$a0, $s0, $t2
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB6_210
# %bb.207:
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ldx.w	$a3, $a1, $a0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a0, $fp, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a4, $a1, $a0
	slli.d	$a0, $s0, 2
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a5, $a0, $a5
	slli.d	$a5, $a5, 2
	ldx.w	$a1, $a1, $a5
	add.d	$a2, $a3, $a2
	mul.w	$a2, $a2, $t1
	srai.d	$a2, $a2, 16
	add.d	$a1, $a1, $a4
	mul.w	$a1, $a1, $t1
	srai.d	$a1, $a1, 16
	add.d	$s2, $a1, $a2
	addi.w	$s1, $t3, 0
	bge	$s2, $s1, .LBB6_210
# %bb.208:
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 0
	sub.w	$a3, $t3, $s2
	addi.w	$a6, $fp, 80
	addi.w	$a7, $a0, 80
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	move	$fp, $t3
	jirl	$ra, $t0, 0
	move	$t3, $fp
	add.w	$a0, $a0, $s2
	bge	$a0, $s1, .LBB6_210
# %bb.209:
	move	$s7, $s8
	move	$s4, $s0
	b	.LBB6_62
.LBB6_210:                              # %.preheader.3.thread
	sub.d	$a0, $s7, $s5
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.h	$a0, $a1, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	sub.d	$a1, $s4, $a0
	addi.w	$a0, $t3, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	st.h	$a1, $a2, 0
	ld.d	$s8, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 432                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 440                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 448
	ret
.Lfunc_end6:
	.size	smpUMHEXBipredIntegerPelBlockMotionSearch, .Lfunc_end6-smpUMHEXBipredIntegerPelBlockMotionSearch
                                        # -- End function
	.globl	smpUMHEX_decide_intrabk_SAD     # -- Begin function smpUMHEX_decide_intrabk_SAD
	.p2align	5
	.type	smpUMHEX_decide_intrabk_SAD,@function
smpUMHEX_decide_intrabk_SAD:            # @smpUMHEX_decide_intrabk_SAD
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 20
	ori	$a2, $zero, 2
	beq	$a1, $a2, .LBB7_11
# %bb.1:
	ld.w	$a1, $a0, 176
	ld.w	$a0, $a0, 180
	beqz	$a1, .LBB7_6
# %bb.2:
	pcalau12i	$a2, %pc_hi20(smpUMHEX_flag_intra)
	ld.d	$a2, $a2, %pc_lo12(smpUMHEX_flag_intra)
	srai.d	$a1, $a1, 4
	add.d	$a1, $a2, $a1
	beqz	$a0, .LBB7_8
# %bb.3:
	ld.bu	$a2, $a1, 0
	ori	$a0, $zero, 1
	bnez	$a2, .LBB7_10
# %bb.4:
	ld.bu	$a2, $a1, -1
	bnez	$a2, .LBB7_10
# %bb.5:
	ld.bu	$a0, $a1, 1
	sltu	$a0, $zero, $a0
	b	.LBB7_10
.LBB7_6:
	beqz	$a0, .LBB7_9
# %bb.7:
	pcalau12i	$a0, %pc_hi20(smpUMHEX_flag_intra)
	ld.d	$a0, $a0, %pc_lo12(smpUMHEX_flag_intra)
	ld.bu	$a0, $a0, 0
	b	.LBB7_10
.LBB7_8:
	ld.bu	$a0, $a1, -1
	b	.LBB7_10
.LBB7_9:
	move	$a0, $zero
.LBB7_10:                               # %.sink.split
	pcalau12i	$a1, %pc_hi20(smpUMHEX_flag_intra_SAD)
	st.w	$a0, $a1, %pc_lo12(smpUMHEX_flag_intra_SAD)
.LBB7_11:
	ret
.Lfunc_end7:
	.size	smpUMHEX_decide_intrabk_SAD, .Lfunc_end7-smpUMHEX_decide_intrabk_SAD
                                        # -- End function
	.globl	smpUMHEX_skip_intrabk_SAD       # -- Begin function smpUMHEX_skip_intrabk_SAD
	.p2align	5
	.type	smpUMHEX_skip_intrabk_SAD,@function
smpUMHEX_skip_intrabk_SAD:              # @smpUMHEX_skip_intrabk_SAD
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a2, $a1, %got_pc_lo12(img)
	ld.d	$a1, $a2, 0
	ld.w	$a3, $a1, 0
	addi.w	$a0, $a0, -9
	blez	$a3, .LBB8_2
# %bb.1:
	pcalau12i	$a3, %pc_hi20(smpUMHEX_flag_intra)
	ld.w	$a1, $a1, 176
	ld.d	$a3, $a3, %pc_lo12(smpUMHEX_flag_intra)
	sltui	$a4, $a0, 2
	srai.d	$a1, $a1, 4
	stx.b	$a4, $a3, $a1
	ld.d	$a1, $a2, 0
.LBB8_2:                                # %._crit_edge
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	bltu	$a2, $a0, .LBB8_6
# %bb.3:                                # %._crit_edge
	ld.w	$a0, $a1, 20
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB8_6
# %bb.4:                                # %.preheader21
	pcalau12i	$a0, %pc_hi20(smpUMHEX_l0_cost)
	ld.d	$a0, $a0, %pc_lo12(smpUMHEX_l0_cost)
	pcalau12i	$a1, %pc_hi20(smpUMHEX_l1_cost)
	ld.d	$a1, $a1, %pc_lo12(smpUMHEX_l1_cost)
	ld.d	$s4, $a0, 8
	ld.d	$t2, $a1, 8
	ld.d	$t1, $a0, 16
	ld.d	$a5, $a1, 16
	ld.d	$t5, $a0, 24
	ld.d	$t3, $a1, 24
	ld.d	$a7, $a0, 32
	ld.d	$t0, $a1, 32
	ld.d	$s5, $a0, 40
	ld.d	$s6, $a1, 40
	ld.d	$s7, $a0, 48
	ld.d	$s8, $a1, 48
	ld.d	$ra, $a0, 56
	ld.d	$s3, $a1, 56
	ld.d	$a4, $a0, 0
	ld.d	$a6, $a1, 0
	ld.d	$a2, $a0, 64
	ld.d	$a3, $a1, 64
	ld.d	$t4, $a4, 0
	st.d	$t4, $sp, 80                    # 8-byte Folded Spill
	ld.d	$t4, $a6, 0
	st.d	$t4, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a4, $a4, 8
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a4, $a6, 8
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a4, $t2, 8
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a4, $t1, 8
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a4, $a5, 8
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a4, $t5, 8
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a4, $t3, 8
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a4, $a7, 8
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a4, $t0, 8
	st.d	$a4, $sp, 0                     # 8-byte Folded Spill
	move	$s2, $zero
	st.d	$t0, $sp, 88                    # 8-byte Folded Spill
	st.d	$a7, $sp, 96                    # 8-byte Folded Spill
	move	$s1, $t3
	move	$a6, $t3
	move	$s0, $t5
	move	$fp, $a5
	move	$a4, $a5
	move	$t3, $t1
	move	$t8, $t2
	.p2align	4, , 16
.LBB8_5:                                # %.preheader20
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	stx.w	$zero, $a5, $s2
	ld.d	$t4, $s4, 0
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	stx.w	$zero, $a5, $s2
	ld.d	$t2, $t2, 0
	ld.d	$t1, $t1, 0
	stx.w	$zero, $t4, $s2
	ld.d	$a4, $a4, 0
	stx.w	$zero, $t2, $s2
	stx.w	$zero, $t1, $s2
	ld.d	$t1, $t5, 0
	stx.w	$zero, $a4, $s2
	ld.d	$a4, $a6, 0
	ld.d	$a6, $a7, 0
	stx.w	$zero, $t1, $s2
	ld.d	$a7, $t0, 0
	stx.w	$zero, $a4, $s2
	stx.w	$zero, $a6, $s2
	ld.d	$a4, $s5, 0
	stx.w	$zero, $a7, $s2
	ld.d	$a6, $s6, 0
	ld.d	$a7, $s7, 0
	stx.w	$zero, $a4, $s2
	ld.d	$a4, $s8, 0
	stx.w	$zero, $a6, $s2
	stx.w	$zero, $a7, $s2
	ld.d	$a6, $ra, 0
	stx.w	$zero, $a4, $s2
	ld.d	$a4, $s3, 0
	ld.d	$a2, $a2, 0
	stx.w	$zero, $a6, $s2
	ld.d	$a3, $a3, 0
	stx.w	$zero, $a4, $s2
	stx.w	$zero, $a2, $s2
	ld.d	$a2, $s4, 8
	stx.w	$zero, $a3, $s2
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	stx.w	$zero, $a3, $s2
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	stx.w	$zero, $a3, $s2
	stx.w	$zero, $a2, $s2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	stx.w	$zero, $a2, $s2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	stx.w	$zero, $a2, $s2
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	stx.w	$zero, $a2, $s2
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	stx.w	$zero, $a2, $s2
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	stx.w	$zero, $a2, $s2
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	stx.w	$zero, $a2, $s2
	ld.d	$a3, $a0, 40
	ld.d	$a4, $a1, 40
	ld.d	$a2, $a0, 48
	ld.d	$a5, $sp, 0                     # 8-byte Folded Reload
	stx.w	$zero, $a5, $s2
	ld.d	$a7, $a3, 8
	ld.d	$t0, $a4, 8
	ld.d	$t1, $a2, 8
	ld.d	$a6, $a1, 48
	stx.w	$zero, $a7, $s2
	stx.w	$zero, $t0, $s2
	stx.w	$zero, $t1, $s2
	ld.d	$t2, $a6, 8
	ld.d	$t0, $a0, 56
	ld.d	$t1, $a1, 56
	ld.d	$a7, $a0, 64
	stx.w	$zero, $t2, $s2
	ld.d	$t4, $t0, 8
	ld.d	$t5, $t1, 8
	ld.d	$s3, $a7, 8
	ld.d	$t2, $a1, 64
	stx.w	$zero, $t4, $s2
	stx.w	$zero, $t5, $s2
	stx.w	$zero, $s3, $s2
	ld.d	$t4, $t2, 8
	ld.d	$t5, $a0, 0
	ld.d	$s3, $a1, 0
	ld.d	$s4, $a0, 8
	stx.w	$zero, $t4, $s2
	ld.d	$t4, $t5, 16
	ld.d	$s5, $s3, 16
	ld.d	$s6, $s4, 16
	ld.d	$s7, $t8, 16
	stx.w	$zero, $t4, $s2
	stx.w	$zero, $s5, $s2
	stx.w	$zero, $s6, $s2
	stx.w	$zero, $s7, $s2
	ld.d	$t4, $t3, 16
	ld.d	$s5, $fp, 16
	ld.d	$s6, $s0, 16
	ld.d	$s7, $s1, 16
	stx.w	$zero, $t4, $s2
	stx.w	$zero, $s5, $s2
	stx.w	$zero, $s6, $s2
	stx.w	$zero, $s7, $s2
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t4, $a5, 16
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $a5, 16
	ld.d	$a3, $a3, 16
	ld.d	$a4, $a4, 16
	stx.w	$zero, $t4, $s2
	stx.w	$zero, $s5, $s2
	stx.w	$zero, $a3, $s2
	stx.w	$zero, $a4, $s2
	ld.d	$a2, $a2, 16
	ld.d	$a3, $a6, 16
	ld.d	$a4, $t0, 16
	ld.d	$a6, $t1, 16
	stx.w	$zero, $a2, $s2
	stx.w	$zero, $a3, $s2
	stx.w	$zero, $a4, $s2
	stx.w	$zero, $a6, $s2
	ld.d	$a2, $a7, 16
	ld.d	$a3, $t2, 16
	ld.d	$a4, $t5, 24
	ld.d	$a6, $s3, 24
	stx.w	$zero, $a2, $s2
	stx.w	$zero, $a3, $s2
	stx.w	$zero, $a4, $s2
	stx.w	$zero, $a6, $s2
	ld.d	$t2, $a1, 8
	ld.d	$t1, $a0, 16
	ld.d	$a4, $a1, 16
	ld.d	$a2, $s4, 24
	ld.d	$a3, $t2, 24
	ld.d	$a6, $t1, 24
	ld.d	$a7, $a4, 24
	stx.w	$zero, $a2, $s2
	stx.w	$zero, $a3, $s2
	stx.w	$zero, $a6, $s2
	stx.w	$zero, $a7, $s2
	ld.d	$t5, $a0, 24
	ld.d	$a6, $a1, 24
	ld.d	$a7, $a0, 32
	ld.d	$t0, $a1, 32
	ld.d	$a2, $t5, 24
	ld.d	$a3, $a6, 24
	ld.d	$t4, $a7, 24
	ld.d	$s3, $t0, 24
	stx.w	$zero, $a2, $s2
	stx.w	$zero, $a3, $s2
	stx.w	$zero, $t4, $s2
	stx.w	$zero, $s3, $s2
	ld.d	$s5, $a0, 40
	ld.d	$s6, $a1, 40
	ld.d	$s7, $a0, 48
	ld.d	$s8, $a1, 48
	ld.d	$a2, $s5, 24
	ld.d	$a3, $s6, 24
	ld.d	$t4, $s7, 24
	ld.d	$s3, $s8, 24
	stx.w	$zero, $a2, $s2
	stx.w	$zero, $a3, $s2
	stx.w	$zero, $t4, $s2
	stx.w	$zero, $s3, $s2
	ld.d	$ra, $a0, 56
	ld.d	$s3, $a1, 56
	ld.d	$a2, $a0, 64
	ld.d	$a3, $a1, 64
	ld.d	$t4, $ra, 24
	ld.d	$t6, $s3, 24
	ld.d	$a5, $a2, 24
	ld.d	$t7, $a3, 24
	stx.w	$zero, $t4, $s2
	stx.w	$zero, $t6, $s2
	stx.w	$zero, $a5, $s2
	stx.w	$zero, $t7, $s2
	addi.d	$s2, $s2, 4
	ori	$a5, $zero, 16
	bne	$s2, $a5, .LBB8_5
.LBB8_6:                                # %.loopexit
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end8:
	.size	smpUMHEX_skip_intrabk_SAD, .Lfunc_end8-smpUMHEX_skip_intrabk_SAD
                                        # -- End function
	.globl	smpUMHEX_setup                  # -- Begin function smpUMHEX_setup
	.p2align	5
	.type	smpUMHEX_setup,@function
smpUMHEX_setup:                         # @smpUMHEX_setup
# %bb.0:
	ori	$a7, $zero, 6
	ori	$a6, $zero, 40
	blt	$a7, $a4, .LBB9_4
# %bb.1:
	ori	$a7, $zero, 4
	ori	$a6, $zero, 32
	blt	$a7, $a4, .LBB9_4
# %bb.2:
	ori	$a6, $zero, 16
	beq	$a4, $a7, .LBB9_4
# %bb.3:
	ori	$a7, $zero, 2
	ori	$a6, $zero, 8
	blt	$a4, $a7, .LBB9_5
.LBB9_4:
	slli.d	$a4, $a2, 3
	ldx.d	$a4, $a5, $a4
	slli.d	$a5, $a3, 3
	ldx.d	$a4, $a4, $a5
	slli.d	$a5, $a1, 3
	ldx.d	$a4, $a4, $a5
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a4, $a0
	ldx.d	$a0, $a0, $a6
	ld.h	$a4, $a0, 0
	pcalau12i	$a5, %pc_hi20(smpUMHEX_pred_MV_uplayer_X)
	st.h	$a4, $a5, %pc_lo12(smpUMHEX_pred_MV_uplayer_X)
	ld.h	$a0, $a0, 2
	pcalau12i	$a4, %pc_hi20(smpUMHEX_pred_MV_uplayer_Y)
	pcalau12i	$a5, %got_pc_hi20(img)
	ld.d	$a5, $a5, %got_pc_lo12(img)
	st.h	$a0, $a4, %pc_lo12(smpUMHEX_pred_MV_uplayer_Y)
	addi.d	$a0, $a1, -1
	sltui	$a0, $a0, 1
	ld.d	$a1, $a5, 0
	pcalau12i	$a4, %pc_hi20(smpUMHEX_l1_cost)
	addi.d	$a4, $a4, %pc_lo12(smpUMHEX_l1_cost)
	pcalau12i	$a5, %pc_hi20(smpUMHEX_l0_cost)
	addi.d	$a5, $a5, %pc_lo12(smpUMHEX_l0_cost)
	masknez	$a5, $a5, $a0
	maskeqz	$a0, $a4, $a0
	ld.w	$a4, $a1, 180
	or	$a0, $a0, $a5
	ld.d	$a0, $a0, 0
	srli.d	$a4, $a4, 2
	ldx.d	$a0, $a0, $a6
	ld.w	$a1, $a1, 176
	add.w	$a2, $a4, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	srli.d	$a1, $a1, 2
	add.w	$a1, $a1, $a3
	slli.d	$a1, $a1, 2
	ldx.wu	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(smpUMHEX_flag_intra_SAD)
	ld.w	$a1, $a1, %pc_lo12(smpUMHEX_flag_intra_SAD)
	srli.d	$a2, $a0, 31
	add.w	$a0, $a0, $a2
	srli.d	$a0, $a0, 1
	sltui	$a1, $a1, 1
	maskeqz	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(smpUMHEX_pred_SAD_uplayer)
	st.w	$a0, $a1, %pc_lo12(smpUMHEX_pred_SAD_uplayer)
.LBB9_5:
	ret
.Lfunc_end9:
	.size	smpUMHEX_setup, .Lfunc_end9-smpUMHEX_setup
                                        # -- End function
	.type	block_type_shift_factor,@object # @block_type_shift_factor
	.section	.rodata,"a",@progbits
	.globl	block_type_shift_factor
	.p2align	1, 0x0
block_type_shift_factor:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	1                               # 0x1
	.size	block_type_shift_factor, 16

	.type	SymmetricalCrossSearchThreshold1,@object # @SymmetricalCrossSearchThreshold1
	.comm	SymmetricalCrossSearchThreshold1,2,2
	.type	SymmetricalCrossSearchThreshold2,@object # @SymmetricalCrossSearchThreshold2
	.comm	SymmetricalCrossSearchThreshold2,2,2
	.type	ConvergeThreshold,@object       # @ConvergeThreshold
	.comm	ConvergeThreshold,2,2
	.type	SubPelThreshold1,@object        # @SubPelThreshold1
	.comm	SubPelThreshold1,2,2
	.type	SubPelThreshold3,@object        # @SubPelThreshold3
	.comm	SubPelThreshold3,2,2
	.type	smpUMHEX_flag_intra,@object     # @smpUMHEX_flag_intra
	.comm	smpUMHEX_flag_intra,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"smpUMHEX_get_mem: smpUMHEX_flag_intra"
	.size	.L.str, 38

	.type	smpUMHEX_l0_cost,@object        # @smpUMHEX_l0_cost
	.comm	smpUMHEX_l0_cost,8,8
	.type	smpUMHEX_l1_cost,@object        # @smpUMHEX_l1_cost
	.comm	smpUMHEX_l1_cost,8,8
	.type	smpUMHEX_SearchState,@object    # @smpUMHEX_SearchState
	.comm	smpUMHEX_SearchState,8,8
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	dist_method,@object             # @dist_method
	.local	dist_method
	.comm	dist_method,4,4
	.type	ref_pic_ptr,@object             # @ref_pic_ptr
	.local	ref_pic_ptr
	.comm	ref_pic_ptr,8,8
	.type	width_pad,@object               # @width_pad
	.comm	width_pad,4,4
	.type	height_pad,@object              # @height_pad
	.comm	height_pad,4,4
	.type	wp_weight,@object               # @wp_weight
	.comm	wp_weight,8,8
	.type	wp_offset,@object               # @wp_offset
	.comm	wp_offset,8,8
	.type	width_pad_cr,@object            # @width_pad_cr
	.comm	width_pad_cr,4,4
	.type	height_pad_cr,@object           # @height_pad_cr
	.comm	height_pad_cr,4,4
	.type	Hexagon_X,@object               # @Hexagon_X
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
Hexagon_X:
	.half	65534                           # 0xfffe
	.half	2                               # 0x2
	.half	65535                           # 0xffff
	.half	1                               # 0x1
	.half	65535                           # 0xffff
	.half	1                               # 0x1
	.size	Hexagon_X, 12

	.type	Hexagon_Y,@object               # @Hexagon_Y
	.p2align	1, 0x0
Hexagon_Y:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65534                           # 0xfffe
	.half	2                               # 0x2
	.half	2                               # 0x2
	.half	65534                           # 0xfffe
	.size	Hexagon_Y, 12

	.type	Big_Hexagon_X,@object           # @Big_Hexagon_X
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	1, 0x0
Big_Hexagon_X:
	.half	65532                           # 0xfffc
	.half	4                               # 0x4
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65532                           # 0xfffc
	.half	4                               # 0x4
	.half	65532                           # 0xfffc
	.half	4                               # 0x4
	.half	65532                           # 0xfffc
	.half	4                               # 0x4
	.half	65532                           # 0xfffc
	.half	4                               # 0x4
	.half	65534                           # 0xfffe
	.half	2                               # 0x2
	.half	65534                           # 0xfffe
	.half	2                               # 0x2
	.size	Big_Hexagon_X, 32

	.type	Big_Hexagon_Y,@object           # @Big_Hexagon_Y
	.p2align	1, 0x0
Big_Hexagon_Y:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65532                           # 0xfffc
	.half	4                               # 0x4
	.half	65535                           # 0xffff
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	65535                           # 0xffff
	.half	65534                           # 0xfffe
	.half	2                               # 0x2
	.half	2                               # 0x2
	.half	65534                           # 0xfffe
	.half	65533                           # 0xfffd
	.half	3                               # 0x3
	.half	3                               # 0x3
	.half	65533                           # 0xfffd
	.size	Big_Hexagon_Y, 32

	.type	smpUMHEX_pred_MV_uplayer_X,@object # @smpUMHEX_pred_MV_uplayer_X
	.comm	smpUMHEX_pred_MV_uplayer_X,2,2
	.type	smpUMHEX_pred_MV_uplayer_Y,@object # @smpUMHEX_pred_MV_uplayer_Y
	.comm	smpUMHEX_pred_MV_uplayer_Y,2,2
	.type	start_me_refinement_hp,@object  # @start_me_refinement_hp
	.comm	start_me_refinement_hp,4,4
	.type	start_me_refinement_qp,@object  # @start_me_refinement_qp
	.comm	start_me_refinement_qp,4,4
	.type	wbp_weight,@object              # @wbp_weight
	.comm	wbp_weight,8,8
	.type	luma_log_weight_denom,@object   # @luma_log_weight_denom
	.comm	luma_log_weight_denom,4,4
	.type	chroma_log_weight_denom,@object # @chroma_log_weight_denom
	.comm	chroma_log_weight_denom,4,4
	.type	smpUMHEX_flag_intra_SAD,@object # @smpUMHEX_flag_intra_SAD
	.comm	smpUMHEX_flag_intra_SAD,4,4
	.type	smpUMHEX_pred_SAD_uplayer,@object # @smpUMHEX_pred_SAD_uplayer
	.comm	smpUMHEX_pred_SAD_uplayer,4,4
	.type	color_formats,@object           # @color_formats
	.comm	color_formats,4,4
	.type	top_pic,@object                 # @top_pic
	.comm	top_pic,8,8
	.type	bottom_pic,@object              # @bottom_pic
	.comm	bottom_pic,8,8
	.type	frame_pic,@object               # @frame_pic
	.comm	frame_pic,8,8
	.type	frame_pic_1,@object             # @frame_pic_1
	.comm	frame_pic_1,8,8
	.type	frame_pic_2,@object             # @frame_pic_2
	.comm	frame_pic_2,8,8
	.type	frame_pic_3,@object             # @frame_pic_3
	.comm	frame_pic_3,8,8
	.type	frame_pic_si,@object            # @frame_pic_si
	.comm	frame_pic_si,8,8
	.type	Bit_Buffer,@object              # @Bit_Buffer
	.comm	Bit_Buffer,8,8
	.type	imgY_org,@object                # @imgY_org
	.comm	imgY_org,8,8
	.type	imgUV_org,@object               # @imgUV_org
	.comm	imgUV_org,8,8
	.type	imgY_sub_tmp,@object            # @imgY_sub_tmp
	.comm	imgY_sub_tmp,8,8
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	log2_max_frame_num_minus4,@object # @log2_max_frame_num_minus4
	.comm	log2_max_frame_num_minus4,4,4
	.type	log2_max_pic_order_cnt_lsb_minus4,@object # @log2_max_pic_order_cnt_lsb_minus4
	.comm	log2_max_pic_order_cnt_lsb_minus4,4,4
	.type	me_tot_time,@object             # @me_tot_time
	.comm	me_tot_time,8,8
	.type	me_time,@object                 # @me_time
	.comm	me_time,8,8
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	dsr_new_search_range,@object    # @dsr_new_search_range
	.comm	dsr_new_search_range,4,4
	.type	mb_adaptive,@object             # @mb_adaptive
	.comm	mb_adaptive,4,4
	.type	MBPairIsField,@object           # @MBPairIsField
	.comm	MBPairIsField,4,4
	.type	wp_luma_round,@object           # @wp_luma_round
	.comm	wp_luma_round,4,4
	.type	wp_chroma_round,@object         # @wp_chroma_round
	.comm	wp_chroma_round,4,4
	.type	imgY_org_top,@object            # @imgY_org_top
	.comm	imgY_org_top,8,8
	.type	imgY_org_bot,@object            # @imgY_org_bot
	.comm	imgY_org_bot,8,8
	.type	imgUV_org_top,@object           # @imgUV_org_top
	.comm	imgUV_org_top,8,8
	.type	imgUV_org_bot,@object           # @imgUV_org_bot
	.comm	imgUV_org_bot,8,8
	.type	imgY_org_frm,@object            # @imgY_org_frm
	.comm	imgY_org_frm,8,8
	.type	imgUV_org_frm,@object           # @imgUV_org_frm
	.comm	imgUV_org_frm,8,8
	.type	imgY_com,@object                # @imgY_com
	.comm	imgY_com,8,8
	.type	imgUV_com,@object               # @imgUV_com
	.comm	imgUV_com,8,8
	.type	direct_ref_idx,@object          # @direct_ref_idx
	.comm	direct_ref_idx,8,8
	.type	direct_pdir,@object             # @direct_pdir
	.comm	direct_pdir,8,8
	.type	pixel_map,@object               # @pixel_map
	.comm	pixel_map,8,8
	.type	refresh_map,@object             # @refresh_map
	.comm	refresh_map,8,8
	.type	intras,@object                  # @intras
	.comm	intras,4,4
	.type	frame_ctr,@object               # @frame_ctr
	.comm	frame_ctr,20,4
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	nextP_tr_fld,@object            # @nextP_tr_fld
	.comm	nextP_tr_fld,4,4
	.type	nextP_tr_frm,@object            # @nextP_tr_frm
	.comm	nextP_tr_frm,4,4
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	b8_ipredmode8x8,@object         # @b8_ipredmode8x8
	.comm	b8_ipredmode8x8,16,1
	.type	b8_intra_pred_modes8x8,@object  # @b8_intra_pred_modes8x8
	.comm	b8_intra_pred_modes8x8,16,1
	.type	gop_structure,@object           # @gop_structure
	.comm	gop_structure,8,8
	.type	rdopt,@object                   # @rdopt
	.comm	rdopt,8,8
	.type	rddata_top_frame_mb,@object     # @rddata_top_frame_mb
	.comm	rddata_top_frame_mb,1752,8
	.type	rddata_bot_frame_mb,@object     # @rddata_bot_frame_mb
	.comm	rddata_bot_frame_mb,1752,8
	.type	rddata_top_field_mb,@object     # @rddata_top_field_mb
	.comm	rddata_top_field_mb,1752,8
	.type	rddata_bot_field_mb,@object     # @rddata_bot_field_mb
	.comm	rddata_bot_field_mb,1752,8
	.type	p_stat,@object                  # @p_stat
	.comm	p_stat,8,8
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	p_trace,@object                 # @p_trace
	.comm	p_trace,8,8
	.type	p_in,@object                    # @p_in
	.comm	p_in,4,4
	.type	p_dec,@object                   # @p_dec
	.comm	p_dec,4,4
	.type	mb16x16_cost_frame,@object      # @mb16x16_cost_frame
	.comm	mb16x16_cost_frame,8,8
	.type	Bytes_After_Header,@object      # @Bytes_After_Header
	.comm	Bytes_After_Header,4,4
	.type	encode_one_macroblock,@object   # @encode_one_macroblock
	.comm	encode_one_macroblock,8,8
	.type	lrec,@object                    # @lrec
	.comm	lrec,8,8
	.type	lrec_uv,@object                 # @lrec_uv
	.comm	lrec_uv,8,8
	.type	si_frame_indicator,@object      # @si_frame_indicator
	.comm	si_frame_indicator,4,4
	.type	sp2_frame_indicator,@object     # @sp2_frame_indicator
	.comm	sp2_frame_indicator,4,4
	.type	number_sp2_frames,@object       # @number_sp2_frames
	.comm	number_sp2_frames,4,4
	.type	giRDOpt_B8OnlyFlag,@object      # @giRDOpt_B8OnlyFlag
	.comm	giRDOpt_B8OnlyFlag,4,4
	.type	imgY_tmp,@object                # @imgY_tmp
	.comm	imgY_tmp,8,8
	.type	imgUV_tmp,@object               # @imgUV_tmp
	.comm	imgUV_tmp,16,8
	.type	frameNuminGOP,@object           # @frameNuminGOP
	.comm	frameNuminGOP,4,4
	.type	redundant_coding,@object        # @redundant_coding
	.comm	redundant_coding,4,4
	.type	key_frame,@object               # @key_frame
	.comm	key_frame,4,4
	.type	redundant_ref_idx,@object       # @redundant_ref_idx
	.comm	redundant_ref_idx,4,4
	.type	img_pad_size_uv_x,@object       # @img_pad_size_uv_x
	.comm	img_pad_size_uv_x,4,4
	.type	img_pad_size_uv_y,@object       # @img_pad_size_uv_y
	.comm	img_pad_size_uv_y,4,4
	.type	chroma_mask_mv_y,@object        # @chroma_mask_mv_y
	.comm	chroma_mask_mv_y,1,1
	.type	chroma_mask_mv_x,@object        # @chroma_mask_mv_x
	.comm	chroma_mask_mv_x,1,1
	.type	chroma_shift_y,@object          # @chroma_shift_y
	.comm	chroma_shift_y,4,4
	.type	chroma_shift_x,@object          # @chroma_shift_x
	.comm	chroma_shift_x,4,4
	.type	shift_cr_x,@object              # @shift_cr_x
	.comm	shift_cr_x,4,4
	.type	shift_cr_y,@object              # @shift_cr_y
	.comm	shift_cr_y,4,4
	.type	img_padded_size_x,@object       # @img_padded_size_x
	.comm	img_padded_size_x,4,4
	.type	img_cr_padded_size_x,@object    # @img_cr_padded_size_x
	.comm	img_cr_padded_size_x,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym computeBiPredSAD2
	.addrsig_sym computeBiPredSAD1
	.addrsig_sym smpUMHEX_l0_cost
	.addrsig_sym smpUMHEX_l1_cost
	.addrsig_sym smpUMHEX_SearchState
