	.file	"ratectl.c"
	.text
	.globl	update_rc                       # -- Begin function update_rc
	.p2align	5
	.type	update_rc,@function
update_rc:                              # @update_rc
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(calc_MAD)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	pcalau12i	$a2, %pc_hi20(generic_RC)
	ld.d	$a3, $a2, %pc_lo12(generic_RC)
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(input)
	ld.d	$a2, $a2, %got_pc_lo12(input)
	ld.w	$a5, $a1, 12
	ld.d	$a4, $a3, 64
	ld.d	$a2, $a2, 0
	slli.d	$a5, $a5, 2
	stx.w	$a0, $a4, $a5
	ldptr.w	$a0, $a2, 5128
	ldptr.w	$a5, $a1, 15352
	bgeu	$a0, $a5, .LBB0_6
# %bb.1:
	ld.w	$a0, $a1, 12
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a4, $a0
	ld.d	$a4, $a3, 56
	add.d	$a0, $a4, $a0
	ori	$a4, $zero, 14
	st.d	$a0, $a3, 56
	beq	$s0, $a4, .LBB0_3
# %bb.2:
	ld.w	$a0, $fp, 364
	sltu	$a0, $zero, $a0
	addi.d	$a3, $s0, -10
	sltui	$a3, $a3, 1
	or	$a3, $a3, $a0
	ori	$a0, $zero, 1
	bnez	$a3, .LBB0_4
.LBB0_3:
	ld.w	$a3, $fp, 496
	move	$a0, $zero
	st.w	$zero, $fp, 4
	st.w	$a3, $fp, 8
	st.w	$a3, $a1, 36
.LBB0_4:
	ldptr.w	$a2, $a2, 4708
	st.w	$a0, $fp, 504
	beqz	$a2, .LBB0_6
# %bb.5:
	ld.w	$a2, $fp, 4
	pcalau12i	$a3, %pc_hi20(rdopt)
	ld.d	$a3, $a3, %pc_lo12(rdopt)
	ld.w	$a4, $fp, 8
	st.w	$a2, $a3, 1740
	st.w	$a4, $a3, 1728
	st.w	$a0, $a3, 1744
	ld.w	$a0, $fp, 424
	ldptr.w	$a3, $a1, 15412
	pcalau12i	$a4, %pc_hi20(delta_qp_mbaff)
	addi.d	$a4, $a4, %pc_lo12(delta_qp_mbaff)
	alsl.d	$a0, $a0, $a4, 3
	slli.d	$a3, $a3, 2
	stx.w	$a2, $a0, $a3
	ld.w	$a0, $fp, 8
	ld.w	$a2, $fp, 424
	ldptr.w	$a1, $a1, 15412
	pcalau12i	$a3, %pc_hi20(qp_mbaff)
	addi.d	$a3, $a3, %pc_lo12(qp_mbaff)
	alsl.d	$a2, $a2, $a3, 3
	slli.d	$a1, $a1, 2
	stx.w	$a0, $a2, $a1
.LBB0_6:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(set_chroma_qp)
	jr	$t8
.Lfunc_end0:
	.size	update_rc, .Lfunc_end0-update_rc
                                        # -- End function
	.globl	calc_MAD                        # -- Begin function calc_MAD
	.p2align	5
	.type	calc_MAD,@function
calc_MAD:                               # @calc_MAD
# %bb.0:                                # %vector.ph
	move	$a0, $zero
	vrepli.b	$vr0, 0
	pcalau12i	$a1, %pc_hi20(diffy)
	addi.d	$a1, $a1, %pc_lo12(diffy)
	ori	$a2, $zero, 1024
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB1_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a1, $a0
	ldx.w	$a4, $a1, $a0
	ld.w	$a5, $a3, 64
	ld.w	$a6, $a3, 128
	ld.w	$a7, $a3, 192
	vinsgr2vr.w	$vr2, $a4, 0
	vinsgr2vr.w	$vr2, $a5, 1
	vinsgr2vr.w	$vr2, $a6, 2
	vinsgr2vr.w	$vr2, $a7, 3
	ld.w	$a4, $a3, 256
	ld.w	$a5, $a3, 320
	ld.w	$a6, $a3, 384
	ld.w	$a7, $a3, 448
	vinsgr2vr.w	$vr3, $a4, 0
	vinsgr2vr.w	$vr3, $a5, 1
	vinsgr2vr.w	$vr3, $a6, 2
	vinsgr2vr.w	$vr3, $a7, 3
	vneg.w	$vr4, $vr2
	vmax.w	$vr2, $vr2, $vr4
	vneg.w	$vr4, $vr3
	vmax.w	$vr3, $vr3, $vr4
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	ld.w	$a4, $a3, 4
	ld.w	$a5, $a3, 68
	ld.w	$a6, $a3, 132
	ld.w	$a7, $a3, 196
	vinsgr2vr.w	$vr2, $a4, 0
	vinsgr2vr.w	$vr2, $a5, 1
	vinsgr2vr.w	$vr2, $a6, 2
	vinsgr2vr.w	$vr2, $a7, 3
	ld.w	$a4, $a3, 260
	ld.w	$a5, $a3, 324
	ld.w	$a6, $a3, 388
	ld.w	$a7, $a3, 452
	vinsgr2vr.w	$vr3, $a4, 0
	vinsgr2vr.w	$vr3, $a5, 1
	vinsgr2vr.w	$vr3, $a6, 2
	vinsgr2vr.w	$vr3, $a7, 3
	vneg.w	$vr4, $vr2
	vmax.w	$vr2, $vr2, $vr4
	vneg.w	$vr4, $vr3
	vmax.w	$vr3, $vr3, $vr4
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	ld.w	$a4, $a3, 8
	ld.w	$a5, $a3, 72
	ld.w	$a6, $a3, 136
	ld.w	$a7, $a3, 200
	vinsgr2vr.w	$vr2, $a4, 0
	vinsgr2vr.w	$vr2, $a5, 1
	vinsgr2vr.w	$vr2, $a6, 2
	vinsgr2vr.w	$vr2, $a7, 3
	ld.w	$a4, $a3, 264
	ld.w	$a5, $a3, 328
	ld.w	$a6, $a3, 392
	ld.w	$a7, $a3, 456
	vinsgr2vr.w	$vr3, $a4, 0
	vinsgr2vr.w	$vr3, $a5, 1
	vinsgr2vr.w	$vr3, $a6, 2
	vinsgr2vr.w	$vr3, $a7, 3
	vneg.w	$vr4, $vr2
	vmax.w	$vr2, $vr2, $vr4
	vneg.w	$vr4, $vr3
	vmax.w	$vr3, $vr3, $vr4
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	ld.w	$a4, $a3, 12
	ld.w	$a5, $a3, 76
	ld.w	$a6, $a3, 140
	ld.w	$a7, $a3, 204
	vinsgr2vr.w	$vr2, $a4, 0
	vinsgr2vr.w	$vr2, $a5, 1
	vinsgr2vr.w	$vr2, $a6, 2
	vinsgr2vr.w	$vr2, $a7, 3
	ld.w	$a4, $a3, 268
	ld.w	$a5, $a3, 332
	ld.w	$a6, $a3, 396
	ld.w	$a7, $a3, 460
	vinsgr2vr.w	$vr3, $a4, 0
	vinsgr2vr.w	$vr3, $a5, 1
	vinsgr2vr.w	$vr3, $a6, 2
	vinsgr2vr.w	$vr3, $a7, 3
	vneg.w	$vr4, $vr2
	vmax.w	$vr2, $vr2, $vr4
	vneg.w	$vr4, $vr3
	vmax.w	$vr3, $vr3, $vr4
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	ld.w	$a4, $a3, 16
	ld.w	$a5, $a3, 80
	ld.w	$a6, $a3, 144
	ld.w	$a7, $a3, 208
	vinsgr2vr.w	$vr2, $a4, 0
	vinsgr2vr.w	$vr2, $a5, 1
	vinsgr2vr.w	$vr2, $a6, 2
	vinsgr2vr.w	$vr2, $a7, 3
	ld.w	$a4, $a3, 272
	ld.w	$a5, $a3, 336
	ld.w	$a6, $a3, 400
	ld.w	$a7, $a3, 464
	vinsgr2vr.w	$vr3, $a4, 0
	vinsgr2vr.w	$vr3, $a5, 1
	vinsgr2vr.w	$vr3, $a6, 2
	vinsgr2vr.w	$vr3, $a7, 3
	vneg.w	$vr4, $vr2
	vmax.w	$vr2, $vr2, $vr4
	vneg.w	$vr4, $vr3
	vmax.w	$vr3, $vr3, $vr4
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	ld.w	$a4, $a3, 20
	ld.w	$a5, $a3, 84
	ld.w	$a6, $a3, 148
	ld.w	$a7, $a3, 212
	vinsgr2vr.w	$vr2, $a4, 0
	vinsgr2vr.w	$vr2, $a5, 1
	vinsgr2vr.w	$vr2, $a6, 2
	vinsgr2vr.w	$vr2, $a7, 3
	ld.w	$a4, $a3, 276
	ld.w	$a5, $a3, 340
	ld.w	$a6, $a3, 404
	ld.w	$a7, $a3, 468
	vinsgr2vr.w	$vr3, $a4, 0
	vinsgr2vr.w	$vr3, $a5, 1
	vinsgr2vr.w	$vr3, $a6, 2
	vinsgr2vr.w	$vr3, $a7, 3
	vneg.w	$vr4, $vr2
	vmax.w	$vr2, $vr2, $vr4
	vneg.w	$vr4, $vr3
	vmax.w	$vr3, $vr3, $vr4
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	ld.w	$a4, $a3, 24
	ld.w	$a5, $a3, 88
	ld.w	$a6, $a3, 152
	ld.w	$a7, $a3, 216
	vinsgr2vr.w	$vr2, $a4, 0
	vinsgr2vr.w	$vr2, $a5, 1
	vinsgr2vr.w	$vr2, $a6, 2
	vinsgr2vr.w	$vr2, $a7, 3
	ld.w	$a4, $a3, 280
	ld.w	$a5, $a3, 344
	ld.w	$a6, $a3, 408
	ld.w	$a7, $a3, 472
	vinsgr2vr.w	$vr3, $a4, 0
	vinsgr2vr.w	$vr3, $a5, 1
	vinsgr2vr.w	$vr3, $a6, 2
	vinsgr2vr.w	$vr3, $a7, 3
	vneg.w	$vr4, $vr2
	vmax.w	$vr2, $vr2, $vr4
	vneg.w	$vr4, $vr3
	vmax.w	$vr3, $vr3, $vr4
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	ld.w	$a4, $a3, 28
	ld.w	$a5, $a3, 92
	ld.w	$a6, $a3, 156
	ld.w	$a7, $a3, 220
	vinsgr2vr.w	$vr2, $a4, 0
	vinsgr2vr.w	$vr2, $a5, 1
	vinsgr2vr.w	$vr2, $a6, 2
	vinsgr2vr.w	$vr2, $a7, 3
	ld.w	$a4, $a3, 284
	ld.w	$a5, $a3, 348
	ld.w	$a6, $a3, 412
	ld.w	$a7, $a3, 476
	vinsgr2vr.w	$vr3, $a4, 0
	vinsgr2vr.w	$vr3, $a5, 1
	vinsgr2vr.w	$vr3, $a6, 2
	vinsgr2vr.w	$vr3, $a7, 3
	vneg.w	$vr4, $vr2
	vmax.w	$vr2, $vr2, $vr4
	vneg.w	$vr4, $vr3
	vmax.w	$vr3, $vr3, $vr4
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	ld.w	$a4, $a3, 32
	ld.w	$a5, $a3, 96
	ld.w	$a6, $a3, 160
	ld.w	$a7, $a3, 224
	vinsgr2vr.w	$vr2, $a4, 0
	vinsgr2vr.w	$vr2, $a5, 1
	vinsgr2vr.w	$vr2, $a6, 2
	vinsgr2vr.w	$vr2, $a7, 3
	ld.w	$a4, $a3, 288
	ld.w	$a5, $a3, 352
	ld.w	$a6, $a3, 416
	ld.w	$a7, $a3, 480
	vinsgr2vr.w	$vr3, $a4, 0
	vinsgr2vr.w	$vr3, $a5, 1
	vinsgr2vr.w	$vr3, $a6, 2
	vinsgr2vr.w	$vr3, $a7, 3
	vneg.w	$vr4, $vr2
	vmax.w	$vr2, $vr2, $vr4
	vneg.w	$vr4, $vr3
	vmax.w	$vr3, $vr3, $vr4
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	ld.w	$a4, $a3, 36
	ld.w	$a5, $a3, 100
	ld.w	$a6, $a3, 164
	ld.w	$a7, $a3, 228
	vinsgr2vr.w	$vr2, $a4, 0
	vinsgr2vr.w	$vr2, $a5, 1
	vinsgr2vr.w	$vr2, $a6, 2
	vinsgr2vr.w	$vr2, $a7, 3
	ld.w	$a4, $a3, 292
	ld.w	$a5, $a3, 356
	ld.w	$a6, $a3, 420
	ld.w	$a7, $a3, 484
	vinsgr2vr.w	$vr3, $a4, 0
	vinsgr2vr.w	$vr3, $a5, 1
	vinsgr2vr.w	$vr3, $a6, 2
	vinsgr2vr.w	$vr3, $a7, 3
	vneg.w	$vr4, $vr2
	vmax.w	$vr2, $vr2, $vr4
	vneg.w	$vr4, $vr3
	vmax.w	$vr3, $vr3, $vr4
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	ld.w	$a4, $a3, 40
	ld.w	$a5, $a3, 104
	ld.w	$a6, $a3, 168
	ld.w	$a7, $a3, 232
	vinsgr2vr.w	$vr2, $a4, 0
	vinsgr2vr.w	$vr2, $a5, 1
	vinsgr2vr.w	$vr2, $a6, 2
	vinsgr2vr.w	$vr2, $a7, 3
	ld.w	$a4, $a3, 296
	ld.w	$a5, $a3, 360
	ld.w	$a6, $a3, 424
	ld.w	$a7, $a3, 488
	vinsgr2vr.w	$vr3, $a4, 0
	vinsgr2vr.w	$vr3, $a5, 1
	vinsgr2vr.w	$vr3, $a6, 2
	vinsgr2vr.w	$vr3, $a7, 3
	vneg.w	$vr4, $vr2
	vmax.w	$vr2, $vr2, $vr4
	vneg.w	$vr4, $vr3
	vmax.w	$vr3, $vr3, $vr4
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	ld.w	$a4, $a3, 44
	ld.w	$a5, $a3, 108
	ld.w	$a6, $a3, 172
	ld.w	$a7, $a3, 236
	vinsgr2vr.w	$vr2, $a4, 0
	vinsgr2vr.w	$vr2, $a5, 1
	vinsgr2vr.w	$vr2, $a6, 2
	vinsgr2vr.w	$vr2, $a7, 3
	ld.w	$a4, $a3, 300
	ld.w	$a5, $a3, 364
	ld.w	$a6, $a3, 428
	ld.w	$a7, $a3, 492
	vinsgr2vr.w	$vr3, $a4, 0
	vinsgr2vr.w	$vr3, $a5, 1
	vinsgr2vr.w	$vr3, $a6, 2
	vinsgr2vr.w	$vr3, $a7, 3
	vneg.w	$vr4, $vr2
	vmax.w	$vr2, $vr2, $vr4
	vneg.w	$vr4, $vr3
	vmax.w	$vr3, $vr3, $vr4
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	ld.w	$a4, $a3, 48
	ld.w	$a5, $a3, 112
	ld.w	$a6, $a3, 176
	ld.w	$a7, $a3, 240
	vinsgr2vr.w	$vr2, $a4, 0
	vinsgr2vr.w	$vr2, $a5, 1
	vinsgr2vr.w	$vr2, $a6, 2
	vinsgr2vr.w	$vr2, $a7, 3
	ld.w	$a4, $a3, 304
	ld.w	$a5, $a3, 368
	ld.w	$a6, $a3, 432
	ld.w	$a7, $a3, 496
	vinsgr2vr.w	$vr3, $a4, 0
	vinsgr2vr.w	$vr3, $a5, 1
	vinsgr2vr.w	$vr3, $a6, 2
	vinsgr2vr.w	$vr3, $a7, 3
	vneg.w	$vr4, $vr2
	vmax.w	$vr2, $vr2, $vr4
	vneg.w	$vr4, $vr3
	vmax.w	$vr3, $vr3, $vr4
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	ld.w	$a4, $a3, 52
	ld.w	$a5, $a3, 116
	ld.w	$a6, $a3, 180
	ld.w	$a7, $a3, 244
	vinsgr2vr.w	$vr2, $a4, 0
	vinsgr2vr.w	$vr2, $a5, 1
	vinsgr2vr.w	$vr2, $a6, 2
	vinsgr2vr.w	$vr2, $a7, 3
	ld.w	$a4, $a3, 308
	ld.w	$a5, $a3, 372
	ld.w	$a6, $a3, 436
	ld.w	$a7, $a3, 500
	vinsgr2vr.w	$vr3, $a4, 0
	vinsgr2vr.w	$vr3, $a5, 1
	vinsgr2vr.w	$vr3, $a6, 2
	vinsgr2vr.w	$vr3, $a7, 3
	vneg.w	$vr4, $vr2
	vmax.w	$vr2, $vr2, $vr4
	vneg.w	$vr4, $vr3
	vmax.w	$vr3, $vr3, $vr4
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	ld.w	$a4, $a3, 56
	ld.w	$a5, $a3, 120
	ld.w	$a6, $a3, 184
	ld.w	$a7, $a3, 248
	vinsgr2vr.w	$vr2, $a4, 0
	vinsgr2vr.w	$vr2, $a5, 1
	vinsgr2vr.w	$vr2, $a6, 2
	vinsgr2vr.w	$vr2, $a7, 3
	ld.w	$a4, $a3, 312
	ld.w	$a5, $a3, 376
	ld.w	$a6, $a3, 440
	ld.w	$a7, $a3, 504
	vinsgr2vr.w	$vr3, $a4, 0
	vinsgr2vr.w	$vr3, $a5, 1
	vinsgr2vr.w	$vr3, $a6, 2
	vinsgr2vr.w	$vr3, $a7, 3
	vneg.w	$vr4, $vr2
	vmax.w	$vr2, $vr2, $vr4
	vneg.w	$vr4, $vr3
	vmax.w	$vr3, $vr3, $vr4
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	ld.w	$a4, $a3, 60
	ld.w	$a5, $a3, 124
	ld.w	$a6, $a3, 188
	ld.w	$a7, $a3, 252
	vinsgr2vr.w	$vr2, $a4, 0
	vinsgr2vr.w	$vr2, $a5, 1
	vinsgr2vr.w	$vr2, $a6, 2
	vinsgr2vr.w	$vr2, $a7, 3
	ld.w	$a4, $a3, 316
	ld.w	$a5, $a3, 380
	ld.w	$a6, $a3, 444
	ld.w	$a3, $a3, 508
	vinsgr2vr.w	$vr3, $a4, 0
	vinsgr2vr.w	$vr3, $a5, 1
	vinsgr2vr.w	$vr3, $a6, 2
	vinsgr2vr.w	$vr3, $a3, 3
	vneg.w	$vr4, $vr2
	vmax.w	$vr2, $vr2, $vr4
	vneg.w	$vr4, $vr3
	vmax.w	$vr3, $vr3, $vr4
	vadd.w	$vr0, $vr2, $vr0
	addi.d	$a0, $a0, 512
	vadd.w	$vr1, $vr3, $vr1
	bne	$a0, $a2, .LBB1_1
# %bb.2:                                # %middle.block
	vadd.w	$vr0, $vr1, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a0, $vr0, 0
	ret
.Lfunc_end1:
	.size	calc_MAD, .Lfunc_end1-calc_MAD
                                        # -- End function
	.globl	QP2Qstep                        # -- Begin function QP2Qstep
	.p2align	5
	.type	QP2Qstep,@function
QP2Qstep:                               # @QP2Qstep
# %bb.0:
	lu12i.w	$a1, 174762
	ori	$a1, $a1, 2731
	mul.d	$a1, $a0, $a1
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 32
	add.d	$a1, $a1, $a2
	ori	$a2, $zero, 6
	mul.d	$a3, $a1, $a2
	sub.w	$a3, $a0, $a3
	slli.d	$a3, $a3, 3
	pcalau12i	$a4, %pc_hi20(QP2Qstep.QP2QSTEP)
	addi.d	$a4, $a4, %pc_lo12(QP2Qstep.QP2QSTEP)
	fldx.d	$fa0, $a4, $a3
	blt	$a0, $a2, .LBB2_2
	.p2align	4, , 16
.LBB2_1:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a1, $a1, -1
	fadd.d	$fa0, $fa0, $fa0
	bnez	$a1, .LBB2_1
.LBB2_2:                                # %._crit_edge
	ret
.Lfunc_end2:
	.size	QP2Qstep, .Lfunc_end2-QP2Qstep
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Qstep2QP
.LCPI3_0:
	.dword	0x406c000000000000              # double 224
	.text
	.globl	Qstep2QP
	.p2align	5
	.type	Qstep2QP,@function
Qstep2QP:                               # @Qstep2QP
# %bb.0:
	vldi	$vr1, -924
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB3_2
# %bb.1:
	move	$a0, $zero
	ret
.LBB3_2:                                # %.lr.ph.i.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI3_0)
	fcmp.clt.d	$fcc0, $fa1, $fa0
	ori	$a0, $zero, 51
	bceqz	$fcc0, .LBB3_4
# %bb.3:
	ret
.LBB3_4:                                # %.preheader
	vldi	$vr1, -910
	move	$a0, $zero
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB3_7
# %bb.5:                                # %.lr.ph.preheader
	vldi	$vr1, -928
	vldi	$vr2, -910
	.p2align	4, , 16
.LBB3_6:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fmul.d	$fa0, $fa0, $fa1
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a0, $a0, 6
	bcnez	$fcc0, .LBB3_6
.LBB3_7:                                # %._crit_edge
	vldi	$vr1, -923
	fcmp.cle.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB3_13
# %bb.8:
	vldi	$vr1, -920
	fcmp.cle.d	$fcc0, $fa0, $fa1
	ori	$a1, $zero, 1
	bcnez	$fcc0, .LBB3_12
# %bb.9:
	vldi	$vr1, -917
	fcmp.cle.d	$fcc0, $fa0, $fa1
	ori	$a1, $zero, 2
	bcnez	$fcc0, .LBB3_12
# %bb.10:
	vldi	$vr1, -914
	fcmp.cle.d	$fcc0, $fa0, $fa1
	ori	$a1, $zero, 3
	bcnez	$fcc0, .LBB3_12
# %bb.11:
	vldi	$vr1, -911
	fcmp.cult.d	$fcc0, $fa1, $fa0
	movcf2gr	$a1, $fcc0
	addi.d	$a1, $a1, 4
.LBB3_12:
	add.w	$a0, $a1, $a0
	ret
.LBB3_13:
	add.w	$a0, $zero, $a0
	ret
.Lfunc_end3:
	.size	Qstep2QP, .Lfunc_end3-Qstep2QP
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function ComputeFrameMAD
.LCPI4_0:
	.dword	0x4070000000000000              # double 256
	.text
	.globl	ComputeFrameMAD
	.p2align	5
	.type	ComputeFrameMAD,@function
ComputeFrameMAD:                        # @ComputeFrameMAD
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ldptr.w	$a2, $a0, 15352
	bstrpick.d	$a0, $a2, 31, 0
	beqz	$a2, .LBB4_3
# %bb.1:                                # %.lr.ph
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	ld.d	$a1, $a1, 64
	ori	$a3, $zero, 4
	bgeu	$a2, $a3, .LBB4_4
# %bb.2:
	move	$a2, $zero
	move	$a3, $zero
	b	.LBB4_7
.LBB4_3:
	movgr2fr.d	$fa0, $zero
	b	.LBB4_10
.LBB4_4:                                # %vector.ph
	bstrpick.d	$a2, $a0, 31, 2
	slli.d	$a2, $a2, 2
	vrepli.b	$vr0, 0
	addi.d	$a3, $a1, 8
	move	$a4, $a2
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB4_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, -8
	ld.d	$a6, $a3, 0
	vinsgr2vr.d	$vr2, $a5, 0
	vinsgr2vr.d	$vr3, $a6, 0
	vshuf4i.w	$vr2, $vr2, 16
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vshuf4i.w	$vr3, $vr3, 16
	vslli.d	$vr3, $vr3, 32
	vsrai.d	$vr3, $vr3, 32
	vadd.d	$vr0, $vr0, $vr2
	vadd.d	$vr1, $vr1, $vr3
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 16
	bnez	$a4, .LBB4_5
# %bb.6:                                # %middle.block
	vadd.d	$vr0, $vr1, $vr0
	vreplvei.d	$vr1, $vr0, 1
	vadd.d	$vr0, $vr0, $vr1
	vpickve2gr.d	$a3, $vr0, 0
	beq	$a2, $a0, .LBB4_9
.LBB4_7:                                # %scalar.ph.preheader
	alsl.d	$a1, $a2, $a1, 2
	sub.d	$a2, $a0, $a2
	.p2align	4, , 16
.LBB4_8:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	add.d	$a3, $a3, $a4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB4_8
.LBB4_9:                                # %._crit_edge.loopexit
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
.LBB4_10:                               # %._crit_edge
	pcalau12i	$a1, %pc_hi20(.LCPI4_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI4_0)
	movgr2fr.d	$fa2, $a0
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa1, $fa2, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	ret
.Lfunc_end4:
	.size	ComputeFrameMAD, .Lfunc_end4-ComputeFrameMAD
                                        # -- End function
	.globl	copy_rc_generic                 # -- Begin function copy_rc_generic
	.p2align	5
	.type	copy_rc_generic,@function
copy_rc_generic:                        # @copy_rc_generic
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s0, $a0, 64
	move	$s1, $a1
	ori	$a2, $zero, 144
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	st.d	$s0, $fp, 64
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3064
	ldx.wu	$a0, $a0, $a1
	ld.d	$a1, $s1, 64
	slli.d	$a2, $a0, 2
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(memcpy)
	jr	$t8
.Lfunc_end5:
	.size	copy_rc_generic, .Lfunc_end5-copy_rc_generic
                                        # -- End function
	.globl	generic_alloc                   # -- Begin function generic_alloc
	.p2align	5
	.type	generic_alloc,@function
generic_alloc:                          # @generic_alloc
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 144
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $fp, 0
	bnez	$a0, .LBB6_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
.LBB6_2:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3064
	ldx.wu	$a0, $a0, $a1
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 64
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 64
	bnez	$a1, .LBB6_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
.LBB6_4:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 8
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end6:
	.size	generic_alloc, .Lfunc_end6-generic_alloc
                                        # -- End function
	.globl	generic_free                    # -- Begin function generic_free
	.p2align	5
	.type	generic_free,@function
generic_free:                           # @generic_free
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 64
	beqz	$a1, .LBB7_2
# %bb.1:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	st.d	$zero, $a0, 64
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB7_3
.LBB7_2:                                # %.thread
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 0
.LBB7_3:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end7:
	.size	generic_free, .Lfunc_end7-generic_free
                                        # -- End function
	.type	generic_RC,@object              # @generic_RC
	.comm	generic_RC,8,8
	.type	rdopt,@object                   # @rdopt
	.comm	rdopt,8,8
	.type	delta_qp_mbaff,@object          # @delta_qp_mbaff
	.comm	delta_qp_mbaff,16,4
	.type	qp_mbaff,@object                # @qp_mbaff
	.comm	qp_mbaff,16,4
	.type	QP2Qstep.QP2QSTEP,@object       # @QP2Qstep.QP2QSTEP
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
QP2Qstep.QP2QSTEP:
	.dword	0x3fe4000000000000              # double 0.625
	.dword	0x3fe6000000000000              # double 0.6875
	.dword	0x3fea000000000000              # double 0.8125
	.dword	0x3fec000000000000              # double 0.875
	.dword	0x3ff0000000000000              # double 1
	.dword	0x3ff2000000000000              # double 1.125
	.size	QP2Qstep.QP2QSTEP, 48

	.type	diffy,@object                   # @diffy
	.comm	diffy,1024,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"init_global_buffers: generic_alloc"
	.size	.L.str, 35

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"init_global_buffers: (*prc)->MADofMB"
	.size	.L.str.1, 37

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
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	dsr_new_search_range,@object    # @dsr_new_search_range
	.comm	dsr_new_search_range,4,4
	.type	mb_adaptive,@object             # @mb_adaptive
	.comm	mb_adaptive,4,4
	.type	MBPairIsField,@object           # @MBPairIsField
	.comm	MBPairIsField,4,4
	.type	wp_weight,@object               # @wp_weight
	.comm	wp_weight,8,8
	.type	wp_offset,@object               # @wp_offset
	.comm	wp_offset,8,8
	.type	wbp_weight,@object              # @wbp_weight
	.comm	wbp_weight,8,8
	.type	luma_log_weight_denom,@object   # @luma_log_weight_denom
	.comm	luma_log_weight_denom,4,4
	.type	chroma_log_weight_denom,@object # @chroma_log_weight_denom
	.comm	chroma_log_weight_denom,4,4
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
	.type	start_me_refinement_hp,@object  # @start_me_refinement_hp
	.comm	start_me_refinement_hp,4,4
	.type	start_me_refinement_qp,@object  # @start_me_refinement_qp
	.comm	start_me_refinement_qp,4,4
	.type	generic_RC_init,@object         # @generic_RC_init
	.comm	generic_RC_init,8,8
	.type	generic_RC_best,@object         # @generic_RC_best
	.comm	generic_RC_best,8,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
