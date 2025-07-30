	.file	"decoder.c"
	.text
	.globl	decode_one_b8block              # -- Begin function decode_one_b8block
	.p2align	5
	.type	decode_one_b8block,@function
decode_one_b8block:                     # @decode_one_b8block
# %bb.0:
	addi.d	$sp, $sp, -1328
	st.d	$ra, $sp, 1320                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1312                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1304                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1296                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1288                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1280                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1272                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1264                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1256                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1248                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1240                  # 8-byte Folded Spill
	pcalau12i	$a5, %got_pc_hi20(img)
	ld.d	$a5, $a5, %got_pc_lo12(img)
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a7, $a5, 0
	bstrpick.d	$a4, $a2, 31, 31
	add.d	$a4, $a2, $a4
	addi.w	$a5, $a4, 0
	srai.d	$t3, $a5, 1
	bstrpick.d	$a4, $a4, 31, 1
	slli.d	$a4, $a4, 1
	sub.d	$t0, $a2, $a4
	slli.w	$a4, $t0, 3
	ori	$a2, $zero, 8
	ld.w	$t2, $a7, 20
	alsl.w	$a5, $t0, $a2, 3
	ori	$s5, $zero, 2
	slli.w	$a6, $t3, 3
	alsl.w	$a2, $t3, $a2, 3
	bne	$t2, $s5, .LBB0_5
# %bb.1:                                # %.preheader164
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$a1, $a1, %got_pc_lo12(enc_picture)
	pcalau12i	$a3, %got_pc_hi20(decs)
	ld.d	$a3, $a3, %got_pc_lo12(decs)
	ld.d	$a1, $a1, 0
	ld.d	$a3, $a3, 0
	ldptr.d	$fp, $a1, 6440
	ld.d	$a1, $a3, 8
	ld.w	$t0, $a7, 180
	ld.w	$s1, $a7, 176
	slli.d	$a0, $a0, 3
	ldx.d	$s0, $a1, $a0
	bstrpick.d	$s2, $a5, 31, 0
	add.d	$a0, $t0, $a6
	slli.d	$s3, $a0, 3
	ldx.d	$a0, $fp, $s3
	ldx.d	$a1, $s0, $s3
	addi.d	$a3, $a6, 1
	add.d	$a6, $a3, $t0
	alsl.d	$a5, $a6, $fp, 3
	alsl.d	$a6, $a6, $s0, 3
	addi.d	$t0, $s3, 16
	add.d	$a7, $fp, $t0
	add.d	$t0, $s0, $t0
	addi.d	$t2, $s3, 24
	add.d	$t1, $fp, $t2
	add.d	$t2, $s0, $t2
	addi.d	$t4, $s3, 32
	add.d	$t3, $fp, $t4
	add.d	$t4, $s0, $t4
	addi.d	$t6, $s3, 40
	add.d	$t5, $fp, $t6
	add.d	$t6, $s0, $t6
	addi.d	$t8, $s3, 48
	add.d	$t7, $fp, $t8
	add.d	$t8, $s0, $t8
	addi.d	$s3, $s3, 56
	add.d	$fp, $fp, $s3
	add.d	$s0, $s0, $s3
	add.d	$s1, $s1, $a4
	slli.d	$s1, $s1, 1
	sub.d	$a4, $s2, $a4
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$s1, $s1, 2
	beqz	$a4, .LBB0_36
.LBB0_3:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ldx.h	$s2, $a0, $s1
	stx.h	$s2, $a1, $s1
	bge	$a3, $a2, .LBB0_2
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	ld.d	$s2, $a5, 0
	ldx.h	$s2, $s2, $s1
	ld.d	$s3, $a6, 0
	ld.d	$s4, $a7, 0
	stx.h	$s2, $s3, $s1
	ldx.h	$s2, $s4, $s1
	ld.d	$s3, $t0, 0
	ld.d	$s4, $t1, 0
	stx.h	$s2, $s3, $s1
	ldx.h	$s2, $s4, $s1
	ld.d	$s3, $t2, 0
	ld.d	$s4, $t3, 0
	stx.h	$s2, $s3, $s1
	ldx.h	$s2, $s4, $s1
	ld.d	$s3, $t4, 0
	ld.d	$s4, $t5, 0
	stx.h	$s2, $s3, $s1
	ldx.h	$s2, $s4, $s1
	ld.d	$s3, $t6, 0
	ld.d	$s4, $t7, 0
	stx.h	$s2, $s3, $s1
	ldx.h	$s2, $s4, $s1
	ld.d	$s3, $t8, 0
	ld.d	$s4, $fp, 0
	stx.h	$s2, $s3, $s1
	ldx.h	$s2, $s4, $s1
	ld.d	$s3, $s0, 0
	stx.h	$s2, $s3, $s1
	b	.LBB0_2
.LBB0_5:
	pcalau12i	$t4, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$t4, $t4, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$t6, $a7, 0
	st.d	$t4, $sp, 48                    # 8-byte Folded Spill
	ld.w	$s6, $t4, 0
	ld.w	$t1, $a7, 28
	slli.w	$t4, $t0, 1
	st.d	$t4, $sp, 24                    # 8-byte Folded Spill
	slli.d	$t3, $t3, 35
	beqz	$a1, .LBB0_15
.LBB0_6:
	addi.w	$t7, $a3, -1
	ori	$t8, $zero, 7
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	bgeu	$t7, $t8, .LBB0_8
# %bb.7:                                # %.preheader173
	ldptr.d	$t8, $a7, 14384
	srai.d	$fp, $t3, 34
	slli.d	$s0, $fp, 3
	ldx.d	$s0, $t8, $s0
	ld.d	$t5, $sp, 24                    # 8-byte Folded Reload
	slli.d	$s1, $t5, 3
	ldx.d	$s2, $s0, $s1
	ld.d	$s2, $s2, 0
	ld.d	$t4, $sp, 56                    # 8-byte Folded Reload
	slli.d	$s3, $t4, 3
	ldx.d	$s2, $s2, $s3
	slli.d	$a3, $a3, 3
	ldx.d	$s2, $s2, $a3
	ld.h	$s4, $s2, 0
	addi.d	$s5, $sp, 1112
	alsl.d	$s6, $fp, $s5, 4
	addi.d	$s7, $t5, 1
	slli.d	$s8, $s7, 3
	ldx.d	$s0, $s0, $s8
	addi.d	$ra, $fp, 1
	slli.d	$t4, $ra, 3
	ldx.d	$t4, $t8, $t4
	slli.d	$t8, $t5, 2
	ld.d	$s0, $s0, 0
	stx.w	$s4, $s6, $t8
	addi.d	$s4, $sp, 1176
	ldx.d	$s1, $t4, $s1
	ldx.d	$s0, $s0, $s3
	ld.h	$s2, $s2, 2
	alsl.d	$fp, $fp, $s4, 4
	ld.d	$s1, $s1, 0
	ldx.d	$s0, $s0, $a3
	ldx.d	$t4, $t4, $s8
	stx.w	$s2, $fp, $t8
	ldx.d	$s1, $s1, $s3
	ld.h	$s2, $s0, 0
	ld.d	$t4, $t4, 0
	slli.d	$s7, $s7, 2
	ldx.d	$s1, $s1, $a3
	ld.h	$s0, $s0, 2
	ldx.d	$t4, $t4, $s3
	stx.w	$s2, $s6, $s7
	ld.h	$s2, $s1, 0
	stx.w	$s0, $fp, $s7
	ldx.d	$a3, $t4, $a3
	alsl.d	$t4, $ra, $s5, 4
	stx.w	$s2, $t4, $t8
	ld.h	$fp, $s1, 2
	ld.h	$s0, $a3, 0
	ld.h	$a3, $a3, 2
	alsl.d	$s1, $ra, $s4, 4
	stx.w	$fp, $s1, $t8
	stx.w	$s0, $t4, $s7
	stx.w	$a3, $s1, $s7
	b	.LBB0_9
.LBB0_8:                                # %.preheader176
	addi.d	$a3, $sp, 1176
	srai.d	$t8, $t3, 34
	alsl.d	$fp, $t8, $a3, 4
	slli.d	$s0, $t8, 4
	ld.d	$t4, $sp, 24                    # 8-byte Folded Reload
	slli.d	$s1, $t4, 2
	stx.w	$zero, $fp, $s1
	addi.d	$s2, $sp, 1112
	alsl.d	$t8, $t8, $s2, 4
	stx.w	$zero, $t8, $s1
	addi.d	$s3, $s1, 4
	stx.w	$zero, $fp, $s3
	stx.w	$zero, $t8, $s3
	addi.d	$t8, $s0, 16
	add.d	$a3, $a3, $t8
	stx.w	$zero, $a3, $s1
	add.d	$t8, $s2, $t8
	stx.w	$zero, $t8, $s1
	stx.w	$zero, $a3, $s3
	stx.w	$zero, $t8, $s3
.LBB0_9:                                # %.loopexit174
	pcalau12i	$a3, %got_pc_hi20(decs)
	ld.d	$a3, $a3, %got_pc_lo12(decs)
	ld.d	$a3, $a3, 0
	ld.d	$t4, $a3, 0
	bstrpick.d	$s7, $a5, 31, 0
	alsl.d	$s5, $a6, $t4, 3
	slli.d	$a3, $a6, 3
	ldx.d	$a3, $t4, $a3
	addi.d	$t8, $a6, 1
	alsl.d	$fp, $t8, $t4, 3
	addi.d	$s0, $s5, 16
	addi.d	$s1, $s5, 24
	addi.d	$s2, $s5, 32
	addi.d	$s3, $s5, 40
	addi.d	$s4, $s5, 48
	addi.d	$s5, $s5, 56
	slli.d	$s6, $a4, 2
	sub.d	$s7, $s7, $a4
	slli.d	$t4, $a6, 6
	addi.d	$s8, $sp, 88
	add.d	$t4, $t4, $s8
	addi.d	$s8, $t4, 256
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_10:                               #   in Loop: Header=BB0_11 Depth=1
	addi.d	$s7, $s7, -1
	addi.d	$s6, $s6, 4
	beqz	$s7, .LBB0_13
.LBB0_11:                               # %.preheader170
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$t4, $a3, $s6
	add.d	$ra, $s8, $s6
	st.w	$t4, $ra, -256
	bge	$t8, $a2, .LBB0_10
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	ld.d	$t4, $fp, 0
	ldx.w	$t4, $t4, $s6
	ld.d	$t5, $s0, 0
	st.w	$t4, $ra, -192
	ldx.w	$t4, $t5, $s6
	ld.d	$t5, $s1, 0
	st.w	$t4, $ra, -128
	ldx.w	$t4, $t5, $s6
	ld.d	$t5, $s2, 0
	st.w	$t4, $ra, -64
	ldx.w	$t4, $t5, $s6
	ld.d	$t5, $s3, 0
	stx.w	$t4, $s8, $s6
	ldx.w	$t4, $t5, $s6
	ld.d	$t5, $s4, 0
	st.w	$t4, $ra, 64
	ldx.w	$t4, $t5, $s6
	ld.d	$t5, $s5, 0
	st.w	$t4, $ra, 128
	ldx.w	$t4, $t5, $s6
	st.w	$t4, $ra, 192
	b	.LBB0_10
.LBB0_13:                               # %.loopexit171
	ori	$a3, $zero, 7
	ori	$s5, $zero, 2
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	bltu	$t7, $a3, .LBB0_25
# %bb.14:
	bnez	$a1, .LBB0_32
	b	.LBB0_22
.LBB0_15:
	beqz	$t2, .LBB0_18
# %bb.16:
	ori	$t7, $zero, 1
	bne	$t2, $t7, .LBB0_6
# %bb.17:
	ldptr.w	$t7, $a7, 15360
	blez	$t7, .LBB0_6
.LBB0_18:                               # %.preheader181
	slli.d	$a1, $a6, 6
	addi.d	$t8, $sp, 88
	add.d	$a1, $t8, $a1
	slli.d	$t7, $a4, 2
	addi.d	$fp, $a6, 1
	stx.w	$zero, $a1, $t7
	bge	$fp, $a2, .LBB0_20
# %bb.19:
	slli.d	$fp, $fp, 6
	add.d	$t8, $t8, $fp
	addi.d	$fp, $a1, 128
	addi.d	$s0, $a1, 192
	addi.d	$s1, $a1, 256
	addi.d	$s2, $a1, 320
	addi.d	$s3, $a1, 384
	addi.d	$s4, $a1, 448
	vrepli.b	$vr0, 0
	vstx	$vr0, $t8, $t7
	vstx	$vr0, $fp, $t7
	vstx	$vr0, $s0, $t7
	vstx	$vr0, $s1, $t7
	vstx	$vr0, $s2, $t7
	vstx	$vr0, $s3, $t7
	vstx	$vr0, $s4, $t7
	alsl.d	$a1, $a4, $a1, 2
	vst	$vr0, $a1, 4
	addi.d	$t7, $t7, 16
	st.w	$zero, $a1, 20
	st.d	$zero, $a1, 24
	vstx	$vr0, $t8, $t7
	vstx	$vr0, $fp, $t7
	vstx	$vr0, $s0, $t7
	vstx	$vr0, $s1, $t7
	vstx	$vr0, $s2, $t7
	vstx	$vr0, $s3, $t7
	vstx	$vr0, $s4, $t7
	b	.LBB0_21
.LBB0_20:                               # %.preheader181.7
	vrepli.b	$vr0, 0
	alsl.d	$a1, $a4, $a1, 2
	vst	$vr0, $a1, 4
	st.w	$zero, $a1, 20
	st.d	$zero, $a1, 24
.LBB0_21:                               # %.loopexit171.thread
	addi.d	$a1, $sp, 1176
	srai.d	$t4, $t3, 34
	alsl.d	$t5, $t4, $a1, 4
	slli.d	$t7, $t4, 4
	ld.d	$t8, $sp, 24                    # 8-byte Folded Reload
	slli.d	$t8, $t8, 2
	stx.w	$zero, $t5, $t8
	addi.d	$fp, $sp, 1112
	alsl.d	$t4, $t4, $fp, 4
	stx.w	$zero, $t4, $t8
	addi.d	$s0, $t8, 4
	stx.w	$zero, $t5, $s0
	stx.w	$zero, $t4, $s0
	addi.d	$t4, $t7, 16
	add.d	$a1, $a1, $t4
	stx.w	$zero, $a1, $t8
	add.d	$t4, $fp, $t4
	stx.w	$zero, $t4, $t8
	stx.w	$zero, $a1, $s0
	addi.w	$a1, $a3, -1
	ori	$a3, $zero, 7
	stx.w	$zero, $t4, $s0
	bltu	$a1, $a3, .LBB0_25
.LBB0_22:                               # %.thread
	beqz	$t2, .LBB0_25
# %bb.23:                               # %.thread
	ori	$a1, $zero, 1
	bne	$t2, $a1, .LBB0_32
# %bb.24:
	ldptr.w	$a1, $a7, 15360
	blez	$a1, .LBB0_32
.LBB0_25:
	nor	$a1, $s6, $zero
	add.w	$a1, $t6, $a1
	mod.w	$s4, $a1, $t1
	alsl.w	$a1, $t0, $s5, 1
	srai.d	$a2, $a6, 2
	addi.d	$a2, $a2, 2
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	srai.d	$s6, $t3, 34
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a3
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	slli.d	$a1, $s6, 4
	alsl.d	$a1, $a3, $a1, 2
	addi.d	$a2, $sp, 1112
	add.d	$a1, $a1, $a2
	addi.d	$s7, $a1, 64
	slli.d	$a1, $s6, 8
	alsl.d	$a1, $a3, $a1, 4
	addi.d	$a2, $sp, 88
	add.d	$a1, $a1, $a2
	pcalau12i	$a2, %got_pc_hi20(enc_picture)
	ld.d	$a2, $a2, %got_pc_lo12(enc_picture)
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(enc_frame_picture)
	ld.d	$a2, $a2, %got_pc_lo12(enc_frame_picture)
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(decs)
	ld.d	$fp, $a2, %got_pc_lo12(decs)
	addi.d	$s2, $a1, 128
	slli.d	$s3, $a0, 3
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_26:                               #   in Loop: Header=BB0_27 Depth=1
	addi.d	$s6, $s6, 1
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	addi.d	$s7, $s7, 16
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	addi.d	$s2, $s2, 256
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beq	$s6, $a0, .LBB0_36
.LBB0_27:                               # %.preheader166
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_29 Depth 2
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	st.d	$s7, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	b	.LBB0_29
	.p2align	4, , 16
.LBB0_28:                               # %.preheader165
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a1, $fp, 0
	ld.d	$a2, $a1, 16
	ldx.d	$a2, $a2, $s3
	ld.w	$a6, $a0, 168
	ld.w	$a7, $a0, 172
	slli.d	$a0, $s4, 3
	ldx.d	$a0, $a2, $a0
	ld.w	$a3, $s7, -64
	ld.w	$a4, $s7, 0
	ld.d	$a5, $a1, 32
	add.w	$s0, $s5, $a6
	add.w	$s1, $a7, $s6
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(Get_Reference_Block)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ld.d	$a0, $a1, 32
	ld.d	$a1, $a1, 8
	ld.d	$a4, $a0, 0
	ldx.d	$a5, $a1, $s3
	slli.w	$a6, $s1, 2
	ld.h	$a1, $s2, -128
	ld.h	$a2, $a4, 0
	slli.d	$a3, $a6, 3
	ldx.d	$a7, $a5, $a3
	slli.w	$a3, $s0, 2
	add.d	$a2, $a2, $a1
	slli.d	$a1, $a3, 1
	stx.h	$a2, $a7, $a1
	ld.h	$a2, $s2, -124
	ld.h	$a3, $a4, 2
	add.d	$a3, $a3, $a2
	addi.d	$a2, $a1, 2
	stx.h	$a3, $a7, $a2
	ld.h	$a3, $s2, -120
	ld.h	$t0, $a4, 4
	add.d	$t0, $t0, $a3
	addi.d	$a3, $a1, 4
	stx.h	$t0, $a7, $a3
	ld.h	$t0, $s2, -116
	ld.h	$a4, $a4, 6
	alsl.d	$a5, $a6, $a5, 3
	add.d	$a6, $a4, $t0
	ld.d	$t0, $a0, 8
	addi.d	$a4, $a1, 6
	stx.h	$a6, $a7, $a4
	ld.h	$a6, $s2, -64
	ld.h	$a7, $t0, 0
	ld.d	$t1, $a5, 8
	add.d	$a6, $a7, $a6
	stx.h	$a6, $t1, $a1
	ld.h	$a6, $s2, -60
	ld.h	$a7, $t0, 2
	add.d	$a6, $a7, $a6
	stx.h	$a6, $t1, $a2
	ld.h	$a6, $s2, -56
	ld.h	$a7, $t0, 4
	add.d	$a6, $a7, $a6
	stx.h	$a6, $t1, $a3
	ld.h	$a6, $s2, -52
	ld.h	$a7, $t0, 6
	ld.d	$t0, $a0, 16
	add.d	$a6, $a7, $a6
	stx.h	$a6, $t1, $a4
	ld.h	$a6, $s2, 0
	ld.h	$a7, $t0, 0
	ld.d	$t1, $a5, 16
	add.d	$a6, $a7, $a6
	stx.h	$a6, $t1, $a1
	ld.h	$a6, $s2, 4
	ld.h	$a7, $t0, 2
	add.d	$a6, $a7, $a6
	stx.h	$a6, $t1, $a2
	ld.h	$a6, $s2, 8
	ld.h	$a7, $t0, 4
	add.d	$a6, $a7, $a6
	stx.h	$a6, $t1, $a3
	ld.h	$a6, $s2, 12
	ld.h	$a7, $t0, 6
	ld.d	$a0, $a0, 24
	add.d	$a6, $a7, $a6
	stx.h	$a6, $t1, $a4
	ld.h	$a6, $s2, 64
	ld.h	$a7, $a0, 0
	ld.d	$a5, $a5, 24
	add.d	$a6, $a7, $a6
	stx.h	$a6, $a5, $a1
	ld.h	$a1, $s2, 68
	ld.h	$a6, $a0, 2
	add.d	$a1, $a6, $a1
	stx.h	$a1, $a5, $a2
	ld.h	$a1, $s2, 72
	ld.h	$a2, $a0, 4
	add.d	$a1, $a2, $a1
	stx.h	$a1, $a5, $a3
	ld.h	$a1, $s2, 76
	ld.h	$a0, $a0, 6
	add.d	$a0, $a0, $a1
	stx.h	$a0, $a5, $a4
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, 4
	addi.d	$s5, $s5, 1
	addi.d	$s2, $s2, 16
	beqz	$s8, .LBB0_26
.LBB0_29:                               #   Parent Loop BB0_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 20
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB0_28
# %bb.30:                               #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	beq	$a1, $a2, .LBB0_28
# %bb.31:                               #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ld.w	$a2, $a0, 0
	ld.w	$a3, $a0, 28
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	sub.d	$a1, $a2, $a1
	addi.w	$a1, $a1, -2
	mod.w	$s4, $a1, $a3
	b	.LBB0_28
.LBB0_32:
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$a1, $a1, %got_pc_lo12(enc_picture)
	pcalau12i	$a3, %got_pc_hi20(decs)
	ld.d	$a3, $a3, %got_pc_lo12(decs)
	ld.d	$a1, $a1, 0
	ld.d	$a3, $a3, 0
	ldptr.d	$s0, $a1, 6440
	ld.d	$a1, $a3, 8
	ld.w	$t0, $a7, 180
	ld.w	$s2, $a7, 176
	slli.d	$a0, $a0, 3
	ldx.d	$s1, $a1, $a0
	add.d	$a0, $t0, $a6
	slli.d	$s3, $a0, 3
	ldx.d	$a0, $s0, $s3
	ldx.d	$a1, $s1, $s3
	addi.d	$a3, $a6, 1
	add.d	$a7, $a3, $t0
	alsl.d	$a6, $a7, $s0, 3
	alsl.d	$a7, $a7, $s1, 3
	addi.d	$t1, $s3, 16
	add.d	$t0, $s0, $t1
	add.d	$t1, $s1, $t1
	addi.d	$t3, $s3, 24
	add.d	$t2, $s0, $t3
	add.d	$t3, $s1, $t3
	addi.d	$t5, $s3, 32
	add.d	$t4, $s0, $t5
	add.d	$t5, $s1, $t5
	addi.d	$t7, $s3, 40
	add.d	$t6, $s0, $t7
	add.d	$t7, $s1, $t7
	addi.d	$fp, $s3, 48
	add.d	$t8, $s0, $fp
	add.d	$fp, $s1, $fp
	addi.d	$s3, $s3, 56
	add.d	$s0, $s0, $s3
	add.d	$s1, $s1, $s3
	add.d	$s2, $s2, $a4
	slli.d	$s2, $s2, 1
	sub.d	$a4, $a5, $a4
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_33:                               #   in Loop: Header=BB0_34 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$s2, $s2, 2
	beqz	$a4, .LBB0_36
.LBB0_34:                               # %.preheader168
                                        # =>This Inner Loop Header: Depth=1
	ldx.h	$a5, $a0, $s2
	stx.h	$a5, $a1, $s2
	bge	$a3, $a2, .LBB0_33
# %bb.35:                               #   in Loop: Header=BB0_34 Depth=1
	ld.d	$a5, $a6, 0
	ldx.h	$a5, $a5, $s2
	ld.d	$s3, $a7, 0
	ld.d	$s4, $t0, 0
	stx.h	$a5, $s3, $s2
	ldx.h	$a5, $s4, $s2
	ld.d	$s3, $t1, 0
	ld.d	$s4, $t2, 0
	stx.h	$a5, $s3, $s2
	ldx.h	$a5, $s4, $s2
	ld.d	$s3, $t3, 0
	ld.d	$s4, $t4, 0
	stx.h	$a5, $s3, $s2
	ldx.h	$a5, $s4, $s2
	ld.d	$s3, $t5, 0
	ld.d	$s4, $t6, 0
	stx.h	$a5, $s3, $s2
	ldx.h	$a5, $s4, $s2
	ld.d	$s3, $t7, 0
	ld.d	$s4, $t8, 0
	stx.h	$a5, $s3, $s2
	ldx.h	$a5, $s4, $s2
	ld.d	$s3, $fp, 0
	ld.d	$s4, $s0, 0
	stx.h	$a5, $s3, $s2
	ldx.h	$a5, $s4, $s2
	ld.d	$s3, $s1, 0
	stx.h	$a5, $s3, $s2
	b	.LBB0_33
.LBB0_36:                               # %.loopexit
	ld.d	$s8, $sp, 1240                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1248                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1256                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1264                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1272                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1280                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1288                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1296                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1304                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1312                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1320                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1328
	ret
.Lfunc_end0:
	.size	decode_one_b8block, .Lfunc_end0-decode_one_b8block
                                        # -- End function
	.globl	Get_Reference_Block             # -- Begin function Get_Reference_Block
	.p2align	5
	.type	Get_Reference_Block,@function
Get_Reference_Block:                    # @Get_Reference_Block
# %bb.0:                                # %.preheader
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a5
	move	$fp, $a0
	alsl.d	$s6, $a1, $a4, 4
	ld.d	$s7, $a5, 0
	alsl.w	$s5, $a1, $a4, 4
	alsl.d	$s4, $a2, $a3, 4
	alsl.w	$s1, $a2, $a3, 4
	move	$a1, $s5
	move	$a2, $s1
	pcaddu18i	$ra, %call36(Get_Reference_Pixel)
	jirl	$ra, $ra, 0
	st.h	$a0, $s7, 0
	addi.w	$s2, $s4, 4
	move	$a0, $fp
	move	$a1, $s5
	move	$a2, $s2
	pcaddu18i	$ra, %call36(Get_Reference_Pixel)
	jirl	$ra, $ra, 0
	st.h	$a0, $s7, 2
	addi.w	$s3, $s4, 8
	move	$a0, $fp
	move	$a1, $s5
	move	$a2, $s3
	pcaddu18i	$ra, %call36(Get_Reference_Pixel)
	jirl	$ra, $ra, 0
	st.h	$a0, $s7, 4
	addi.w	$s4, $s4, 12
	move	$a0, $fp
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(Get_Reference_Pixel)
	jirl	$ra, $ra, 0
	ld.d	$s8, $s0, 8
	st.h	$a0, $s7, 6
	addi.w	$s5, $s6, 4
	move	$a0, $fp
	move	$a1, $s5
	move	$a2, $s1
	pcaddu18i	$ra, %call36(Get_Reference_Pixel)
	jirl	$ra, $ra, 0
	st.h	$a0, $s8, 0
	move	$a0, $fp
	move	$a1, $s5
	move	$a2, $s2
	pcaddu18i	$ra, %call36(Get_Reference_Pixel)
	jirl	$ra, $ra, 0
	st.h	$a0, $s8, 2
	move	$a0, $fp
	move	$a1, $s5
	move	$a2, $s3
	pcaddu18i	$ra, %call36(Get_Reference_Pixel)
	jirl	$ra, $ra, 0
	st.h	$a0, $s8, 4
	move	$a0, $fp
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(Get_Reference_Pixel)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s0, 16
	st.h	$a0, $s8, 6
	addi.w	$s5, $s6, 8
	move	$a0, $fp
	move	$a1, $s5
	move	$a2, $s1
	pcaddu18i	$ra, %call36(Get_Reference_Pixel)
	jirl	$ra, $ra, 0
	st.h	$a0, $s7, 0
	move	$a0, $fp
	move	$a1, $s5
	move	$a2, $s2
	pcaddu18i	$ra, %call36(Get_Reference_Pixel)
	jirl	$ra, $ra, 0
	st.h	$a0, $s7, 2
	move	$a0, $fp
	move	$a1, $s5
	move	$a2, $s3
	pcaddu18i	$ra, %call36(Get_Reference_Pixel)
	jirl	$ra, $ra, 0
	st.h	$a0, $s7, 4
	move	$a0, $fp
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(Get_Reference_Pixel)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s0, 24
	st.h	$a0, $s7, 6
	addi.w	$s0, $s6, 12
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(Get_Reference_Pixel)
	jirl	$ra, $ra, 0
	st.h	$a0, $s5, 0
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(Get_Reference_Pixel)
	jirl	$ra, $ra, 0
	st.h	$a0, $s5, 2
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(Get_Reference_Pixel)
	jirl	$ra, $ra, 0
	st.h	$a0, $s5, 4
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(Get_Reference_Pixel)
	jirl	$ra, $ra, 0
	st.h	$a0, $s5, 6
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end1:
	.size	Get_Reference_Block, .Lfunc_end1-Get_Reference_Block
                                        # -- End function
	.globl	decode_one_mb                   # -- Begin function decode_one_mb
	.p2align	5
	.type	decode_one_mb,@function
decode_one_mb:                          # @decode_one_mb
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(enc_picture)
	ld.d	$s1, $a2, %got_pc_lo12(enc_picture)
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$s2, $a2, %got_pc_lo12(img)
	ld.d	$a2, $s1, 0
	ld.d	$a3, $s2, 0
	ldptr.d	$a2, $a2, 6488
	ld.w	$a4, $a3, 172
	ld.d	$a2, $a2, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $a3, 168
	move	$s0, $a1
	ld.w	$a1, $a1, 72
	ld.w	$a3, $s0, 376
	ldx.b	$a4, $a2, $a4
	move	$fp, $a0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(decode_one_b8block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s2, 0
	ldptr.d	$a0, $a0, 6488
	ld.w	$a2, $a1, 172
	ld.d	$a0, $a0, 0
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	ld.w	$a2, $a1, 168
	ld.w	$a1, $s0, 72
	ld.w	$a3, $s0, 380
	add.d	$a0, $a0, $a2
	ld.b	$a4, $a0, 2
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(decode_one_b8block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a1, $s2, 0
	ld.d	$a0, $a0, 0
	ld.w	$a2, $a1, 172
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a0, $a0, 16
	ld.w	$a2, $a1, 168
	ld.w	$a1, $s0, 72
	ld.w	$a3, $s0, 384
	ldx.b	$a4, $a0, $a2
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(decode_one_b8block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ldptr.d	$a0, $a0, 6488
	ld.d	$a1, $s2, 0
	ld.d	$a0, $a0, 0
	ld.w	$a2, $a1, 172
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a0, $a0, 16
	ld.w	$a2, $a1, 168
	ld.w	$a1, $s0, 72
	ld.w	$a3, $s0, 388
	add.d	$a0, $a0, $a2
	ld.b	$a4, $a0, 2
	ori	$a2, $zero, 3
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(decode_one_b8block)
	jr	$t8
.Lfunc_end2:
	.size	decode_one_mb, .Lfunc_end2-decode_one_mb
                                        # -- End function
	.globl	Get_Reference_Pixel             # -- Begin function Get_Reference_Pixel
	.p2align	5
	.type	Get_Reference_Pixel,@function
Get_Reference_Pixel:                    # @Get_Reference_Pixel
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	st.d	$s4, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a3, $a3, %got_pc_lo12(img)
	ld.d	$a3, $a3, 0
	ld.w	$a4, $a3, 52
	srai.d	$a7, $a2, 2
	srai.d	$a5, $a1, 2
	ld.w	$t0, $a3, 68
	addi.w	$a6, $a4, -1
	or	$a4, $a2, $a1
	andi	$t1, $a4, 3
	addi.w	$a4, $t0, -1
	beqz	$t1, .LBB3_6
# %bb.1:
	andi	$t0, $a1, 3
	andi	$a1, $a2, 3
	beqz	$t0, .LBB3_7
# %bb.2:
	beqz	$a1, .LBB3_10
# %bb.3:
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB3_13
# %bb.4:                                # %.preheader170.preheader
	slt	$a1, $a2, $a7
	masknez	$t1, $a2, $a1
	maskeqz	$a1, $a7, $a1
	or	$a1, $a1, $t1
	addi.d	$a1, $a1, -2
	slt	$t1, $a1, $a6
	maskeqz	$a1, $a1, $t1
	masknez	$t1, $a6, $t1
	or	$a1, $a1, $t1
	slt	$t1, $a2, $a5
	masknez	$a2, $a2, $t1
	maskeqz	$t1, $a5, $t1
	or	$a2, $t1, $a2
	addi.d	$a2, $a2, -2
	slt	$t1, $a2, $a4
	maskeqz	$a2, $a2, $t1
	masknez	$t1, $a4, $t1
	or	$a2, $a2, $t1
	slli.d	$a2, $a2, 3
	ldx.d	$t8, $a0, $a2
	slli.d	$a2, $a1, 1
	ori	$a1, $zero, 1
	slt	$t1, $a1, $a7
	masknez	$t2, $a1, $t1
	maskeqz	$t1, $a7, $t1
	or	$t1, $t1, $t2
	addi.d	$t1, $t1, -1
	slt	$t2, $t1, $a6
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a6, $t2
	or	$t1, $t1, $t2
	slli.d	$t1, $t1, 1
	ldx.hu	$t2, $t8, $t1
	ldx.hu	$t3, $t8, $a2
	alsl.d	$t2, $t2, $t2, 2
	sub.d	$t5, $t3, $t2
	srai.d	$t2, $a7, 63
	andn	$t2, $a7, $t2
	slt	$t3, $t2, $a6
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a6, $t3
	or	$t2, $t2, $t3
	slli.d	$t3, $t2, 1
	ldx.hu	$t6, $t8, $t3
	addi.w	$fp, $zero, -1
	slt	$t2, $fp, $a7
	masknez	$t4, $fp, $t2
	maskeqz	$t2, $a7, $t2
	or	$t2, $t2, $t4
	addi.d	$t2, $t2, 1
	slt	$t4, $t2, $a6
	maskeqz	$t2, $t2, $t4
	masknez	$t4, $a6, $t4
	or	$t2, $t2, $t4
	slli.d	$t4, $t2, 1
	ldx.hu	$t7, $t8, $t4
	ori	$t2, $zero, 20
	mul.d	$t6, $t6, $t2
	add.d	$t5, $t6, $t5
	mul.d	$t6, $t7, $t2
	add.d	$s0, $t6, $t5
	addi.w	$t7, $zero, -2
	slt	$t5, $t7, $a7
	masknez	$t6, $t7, $t5
	maskeqz	$t5, $a7, $t5
	or	$t5, $t5, $t6
	addi.d	$t5, $t5, 2
	slt	$t6, $t5, $a6
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a6, $t6
	or	$t5, $t5, $t6
	slli.d	$t5, $t5, 1
	ldx.hu	$s1, $t8, $t5
	addi.w	$t6, $zero, -3
	slt	$s2, $t6, $a7
	masknez	$s3, $t6, $s2
	maskeqz	$a7, $a7, $s2
	or	$a7, $a7, $s3
	addi.d	$a7, $a7, 3
	slt	$s2, $a7, $a6
	maskeqz	$a7, $a7, $s2
	masknez	$a6, $a6, $s2
	or	$a6, $a7, $a6
	slli.d	$a6, $a6, 1
	slt	$a7, $a1, $a5
	masknez	$s2, $a1, $a7
	maskeqz	$a7, $a5, $a7
	or	$a7, $a7, $s2
	addi.d	$a7, $a7, -1
	slt	$s2, $a7, $a4
	maskeqz	$a7, $a7, $s2
	masknez	$s2, $a4, $s2
	or	$a7, $a7, $s2
	slli.d	$a7, $a7, 3
	ldx.d	$s2, $a0, $a7
	ldx.hu	$a7, $t8, $a6
	alsl.d	$t8, $s1, $s1, 2
	sub.d	$t8, $s0, $t8
	ldx.hu	$s0, $s2, $t1
	add.d	$a7, $t8, $a7
	ldx.hu	$t8, $s2, $a2
	ldx.hu	$s1, $s2, $t3
	alsl.d	$s0, $s0, $s0, 2
	ldx.hu	$s3, $s2, $t4
	sub.d	$t8, $t8, $s0
	mul.d	$s0, $s1, $t2
	add.d	$t8, $s0, $t8
	mul.d	$s0, $s3, $t2
	add.d	$t8, $s0, $t8
	ldx.hu	$s0, $s2, $t5
	srai.d	$s1, $a5, 63
	andn	$s1, $a5, $s1
	slt	$s3, $s1, $a4
	maskeqz	$s1, $s1, $s3
	masknez	$s3, $a4, $s3
	or	$s1, $s1, $s3
	slli.d	$s1, $s1, 3
	ldx.d	$s1, $a0, $s1
	ldx.hu	$s2, $s2, $a6
	alsl.d	$s0, $s0, $s0, 2
	sub.w	$t8, $t8, $s0
	ldx.hu	$s0, $s1, $t1
	add.d	$t8, $t8, $s2
	ldx.hu	$s2, $s1, $a2
	ldx.hu	$s3, $s1, $t3
	alsl.d	$s0, $s0, $s0, 2
	ldx.hu	$s4, $s1, $t4
	sub.d	$s0, $s2, $s0
	mul.d	$s2, $s3, $t2
	add.d	$s0, $s2, $s0
	mul.d	$s2, $s4, $t2
	add.d	$s0, $s2, $s0
	ldx.hu	$s2, $s1, $t5
	slt	$s3, $fp, $a5
	masknez	$fp, $fp, $s3
	maskeqz	$s3, $a5, $s3
	or	$fp, $s3, $fp
	addi.d	$fp, $fp, 1
	slt	$s3, $fp, $a4
	maskeqz	$fp, $fp, $s3
	masknez	$s3, $a4, $s3
	or	$fp, $fp, $s3
	slli.d	$fp, $fp, 3
	ldx.d	$s3, $a0, $fp
	ldx.hu	$fp, $s1, $a6
	alsl.d	$s1, $s2, $s2, 2
	sub.d	$s0, $s0, $s1
	ldx.hu	$s1, $s3, $t1
	add.d	$fp, $s0, $fp
	ldx.hu	$s0, $s3, $a2
	ldx.hu	$s2, $s3, $t3
	alsl.d	$s1, $s1, $s1, 2
	ldx.hu	$s4, $s3, $t4
	sub.d	$s0, $s0, $s1
	mul.d	$s1, $s2, $t2
	add.d	$s0, $s1, $s0
	mul.d	$s1, $s4, $t2
	add.d	$s0, $s1, $s0
	ldx.hu	$s1, $s3, $t5
	slt	$s2, $t7, $a5
	masknez	$t7, $t7, $s2
	maskeqz	$s2, $a5, $s2
	or	$t7, $s2, $t7
	addi.d	$t7, $t7, 2
	slt	$s2, $t7, $a4
	maskeqz	$t7, $t7, $s2
	masknez	$s2, $a4, $s2
	or	$t7, $t7, $s2
	slli.d	$t7, $t7, 3
	ldx.d	$s2, $a0, $t7
	ldx.hu	$t7, $s3, $a6
	alsl.d	$s1, $s1, $s1, 2
	sub.d	$s0, $s0, $s1
	ldx.hu	$s1, $s2, $t1
	add.d	$t7, $s0, $t7
	ldx.hu	$s0, $s2, $a2
	ldx.hu	$s3, $s2, $t3
	alsl.d	$s1, $s1, $s1, 2
	ldx.hu	$s4, $s2, $t4
	sub.d	$s0, $s0, $s1
	mul.d	$s1, $s3, $t2
	add.d	$s0, $s1, $s0
	mul.d	$s1, $s4, $t2
	add.d	$s0, $s1, $s0
	slt	$s1, $t6, $a5
	masknez	$t6, $t6, $s1
	maskeqz	$a5, $a5, $s1
	ldx.hu	$s1, $s2, $t5
	or	$a5, $a5, $t6
	addi.d	$a5, $a5, 3
	slt	$t6, $a5, $a4
	maskeqz	$a5, $a5, $t6
	masknez	$a4, $a4, $t6
	or	$a4, $a5, $a4
	slli.d	$a4, $a4, 3
	ldx.d	$a0, $a0, $a4
	alsl.d	$a4, $s1, $s1, 2
	ldx.hu	$a5, $s2, $a6
	sub.d	$a4, $s0, $a4
	ldx.hu	$t1, $a0, $t1
	ldx.hu	$a2, $a0, $a2
	add.w	$a4, $a4, $a5
	ldx.hu	$a5, $a0, $t3
	alsl.d	$t1, $t1, $t1, 2
	sub.d	$a2, $a2, $t1
	ldx.hu	$t1, $a0, $t4
	mul.d	$a5, $a5, $t2
	add.d	$a2, $a5, $a2
	ldx.hu	$a5, $a0, $t5
	mul.d	$t1, $t1, $t2
	ldx.hu	$a0, $a0, $a6
	add.d	$a2, $t1, $a2
	alsl.d	$a5, $a5, $a5, 2
	sub.d	$a2, $a2, $a5
	add.d	$a0, $a2, $a0
	alsl.d	$a2, $t8, $t8, 2
	sub.d	$a2, $a7, $a2
	mul.d	$a5, $fp, $t2
	add.d	$a2, $a5, $a2
	mul.d	$a5, $t7, $t2
	add.d	$a2, $a5, $a2
	alsl.d	$a4, $a4, $a4, 2
	sub.d	$a2, $a2, $a4
	add.d	$a2, $a0, $a2
	ldptr.w	$a0, $a3, 15520
	addi.w	$a2, $a2, 512
	bstrpick.d	$a3, $a2, 62, 53
	add.w	$a2, $a2, $a3
	srai.d	$a3, $a2, 10
	srai.d	$a2, $a2, 63
	andn	$a2, $a3, $a2
	slt	$a3, $a2, $a0
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a0, $a3
	or	$a3, $a2, $a3
	beq	$t0, $a1, .LBB3_19
# %bb.5:                                # %.preheader170.preheader
	ori	$a1, $zero, 3
	beq	$t0, $a1, .LBB3_17
	b	.LBB3_24
.LBB3_6:
	srai.d	$a1, $a5, 63
	andn	$a1, $a5, $a1
	slt	$a2, $a1, $a4
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a4, $a2
	or	$a1, $a1, $a2
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	srai.d	$a1, $a7, 63
	andn	$a1, $a7, $a1
	slt	$a2, $a1, $a6
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a6, $a2
	or	$a1, $a1, $a2
	slli.d	$a1, $a1, 1
	ldx.hu	$a3, $a0, $a1
	b	.LBB3_24
.LBB3_7:
	srai.d	$a2, $a5, 63
	andn	$a2, $a5, $a2
	slt	$a5, $a2, $a4
	maskeqz	$a2, $a2, $a5
	masknez	$a4, $a4, $a5
	or	$a2, $a2, $a4
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	slt	$a4, $a2, $a7
	masknez	$a2, $a2, $a4
	maskeqz	$a4, $a7, $a4
	or	$a2, $a4, $a2
	addi.d	$a2, $a2, -2
	slt	$a4, $a2, $a6
	maskeqz	$a2, $a2, $a4
	masknez	$a4, $a6, $a4
	or	$a2, $a2, $a4
	slli.d	$a4, $a2, 1
	ori	$a2, $zero, 1
	slt	$a5, $a2, $a7
	masknez	$t0, $a2, $a5
	maskeqz	$a5, $a7, $a5
	or	$a5, $a5, $t0
	addi.d	$a5, $a5, -1
	slt	$t0, $a5, $a6
	maskeqz	$a5, $a5, $t0
	masknez	$t0, $a6, $t0
	or	$a5, $a5, $t0
	slli.d	$a5, $a5, 1
	ldx.hu	$a5, $a0, $a5
	ldx.hu	$a4, $a0, $a4
	alsl.d	$a5, $a5, $a5, 2
	sub.d	$t0, $a4, $a5
	srai.d	$a4, $a7, 63
	andn	$a4, $a7, $a4
	slt	$a5, $a4, $a6
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $a6, $a5
	or	$a4, $a4, $a5
	slli.d	$a4, $a4, 1
	ldx.hu	$a4, $a0, $a4
	addi.w	$a5, $zero, -1
	slt	$t1, $a5, $a7
	masknez	$a5, $a5, $t1
	maskeqz	$t1, $a7, $t1
	or	$a5, $t1, $a5
	addi.d	$a5, $a5, 1
	slt	$t1, $a5, $a6
	maskeqz	$a5, $a5, $t1
	masknez	$t1, $a6, $t1
	or	$a5, $a5, $t1
	slli.d	$a5, $a5, 1
	ldx.hu	$t1, $a0, $a5
	ori	$t2, $zero, 20
	mul.d	$t3, $a4, $t2
	add.d	$t0, $t3, $t0
	mul.d	$t1, $t1, $t2
	addi.w	$t2, $zero, -2
	slt	$t3, $t2, $a7
	masknez	$t2, $t2, $t3
	maskeqz	$t3, $a7, $t3
	or	$t2, $t3, $t2
	addi.d	$t2, $t2, 2
	slt	$t3, $t2, $a6
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a6, $t3
	or	$t2, $t2, $t3
	addi.w	$t3, $zero, -3
	slt	$t4, $t3, $a7
	masknez	$t3, $t3, $t4
	maskeqz	$a7, $a7, $t4
	or	$a7, $a7, $t3
	addi.d	$a7, $a7, 3
	slt	$t3, $a7, $a6
	maskeqz	$a7, $a7, $t3
	masknez	$a6, $a6, $t3
	slli.d	$t2, $t2, 1
	ldx.hu	$t2, $a0, $t2
	or	$a6, $a7, $a6
	slli.d	$a6, $a6, 1
	ldx.hu	$a6, $a0, $a6
	add.d	$a7, $t1, $t0
	alsl.d	$t0, $t2, $t2, 2
	sub.d	$a7, $a7, $t0
	add.d	$a6, $a7, $a6
	ldptr.w	$a3, $a3, 15520
	addi.w	$a6, $a6, 16
	bstrpick.d	$a7, $a6, 62, 58
	add.w	$a6, $a6, $a7
	srai.d	$a7, $a6, 5
	srai.d	$a6, $a6, 63
	andn	$a6, $a7, $a6
	slt	$a7, $a6, $a3
	maskeqz	$a6, $a6, $a7
	masknez	$a3, $a3, $a7
	ori	$a7, $zero, 3
	or	$a3, $a6, $a3
	beq	$a1, $a7, .LBB3_16
# %bb.8:
	bne	$a1, $a2, .LBB3_24
# %bb.9:
	add.d	$a0, $a3, $a4
	b	.LBB3_23
.LBB3_10:
	srai.d	$a1, $a7, 63
	andn	$a1, $a7, $a1
	slt	$a2, $a1, $a6
	maskeqz	$a7, $a1, $a2
	masknez	$a2, $a6, $a2
	ori	$a1, $zero, 2
	slt	$a6, $a1, $a5
	masknez	$a1, $a1, $a6
	maskeqz	$a6, $a5, $a6
	or	$a1, $a6, $a1
	addi.d	$a1, $a1, -2
	slt	$a6, $a1, $a4
	maskeqz	$a1, $a1, $a6
	masknez	$a6, $a4, $a6
	or	$a1, $a1, $a6
	slli.d	$a1, $a1, 3
	ldx.d	$a6, $a0, $a1
	ori	$a1, $zero, 1
	slt	$t1, $a1, $a5
	masknez	$t2, $a1, $t1
	maskeqz	$t1, $a5, $t1
	or	$t1, $t1, $t2
	addi.d	$t1, $t1, -1
	slt	$t2, $t1, $a4
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a4, $t2
	or	$t1, $t1, $t2
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a0, $t1
	or	$a2, $a7, $a2
	slli.d	$a2, $a2, 1
	ldx.hu	$a6, $a6, $a2
	ldx.hu	$a7, $t1, $a2
	srai.d	$t1, $a5, 63
	andn	$t1, $a5, $t1
	slt	$t2, $t1, $a4
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a4, $t2
	or	$t1, $t1, $t2
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a0, $t1
	alsl.d	$a7, $a7, $a7, 2
	sub.d	$t2, $a6, $a7
	ldx.hu	$a6, $t1, $a2
	addi.w	$a7, $zero, -1
	slt	$t1, $a7, $a5
	masknez	$a7, $a7, $t1
	maskeqz	$t1, $a5, $t1
	or	$a7, $t1, $a7
	addi.d	$a7, $a7, 1
	slt	$t1, $a7, $a4
	maskeqz	$a7, $a7, $t1
	masknez	$t1, $a4, $t1
	or	$a7, $a7, $t1
	slli.d	$a7, $a7, 3
	addi.w	$t1, $zero, -2
	slt	$t3, $t1, $a5
	masknez	$t1, $t1, $t3
	maskeqz	$t3, $a5, $t3
	or	$t1, $t3, $t1
	addi.d	$t1, $t1, 2
	slt	$t3, $t1, $a4
	maskeqz	$t1, $t1, $t3
	masknez	$t3, $a4, $t3
	or	$t1, $t1, $t3
	addi.w	$t3, $zero, -3
	slt	$t4, $t3, $a5
	masknez	$t3, $t3, $t4
	maskeqz	$a5, $a5, $t4
	ldx.d	$t4, $a0, $a7
	or	$a5, $a5, $t3
	addi.d	$a5, $a5, 3
	slt	$t3, $a5, $a4
	maskeqz	$a5, $a5, $t3
	masknez	$a4, $a4, $t3
	ori	$t3, $zero, 20
	or	$a4, $a5, $a4
	mul.d	$a5, $a6, $t3
	ldx.hu	$t4, $t4, $a2
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a0, $t1
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a0, $a4
	add.d	$a5, $a5, $t2
	ldx.hu	$t1, $t1, $a2
	mul.d	$t2, $t4, $t3
	ldx.hu	$a4, $a4, $a2
	add.d	$a5, $t2, $a5
	alsl.d	$t1, $t1, $t1, 2
	sub.d	$a5, $a5, $t1
	add.d	$a4, $a5, $a4
	ldptr.w	$a3, $a3, 15520
	addi.w	$a4, $a4, 16
	bstrpick.d	$a5, $a4, 62, 58
	add.w	$a4, $a4, $a5
	srai.d	$a5, $a4, 5
	srai.d	$a4, $a4, 63
	andn	$a4, $a5, $a4
	slt	$a5, $a4, $a3
	maskeqz	$a4, $a4, $a5
	masknez	$a3, $a3, $a5
	ori	$a5, $zero, 3
	or	$a3, $a4, $a3
	beq	$t0, $a5, .LBB3_21
# %bb.11:
	bne	$t0, $a1, .LBB3_24
# %bb.12:
	add.d	$a0, $a3, $a6
	b	.LBB3_23
.LBB3_13:
	bne	$t0, $a2, .LBB3_18
# %bb.14:                               # %.preheader168.preheader
	ori	$a2, $zero, 2
	slt	$t0, $a2, $a5
	masknez	$t1, $a2, $t0
	maskeqz	$t0, $a5, $t0
	or	$t0, $t0, $t1
	addi.d	$t0, $t0, -2
	slt	$t1, $t0, $a4
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $a4, $t1
	or	$t0, $t0, $t1
	slli.d	$t1, $t0, 3
	slt	$t0, $a2, $a7
	masknez	$a2, $a2, $t0
	maskeqz	$t0, $a7, $t0
	or	$a2, $t0, $a2
	addi.d	$a2, $a2, -2
	slt	$t0, $a2, $a6
	maskeqz	$t2, $a2, $t0
	masknez	$t3, $a6, $t0
	ori	$a2, $zero, 1
	slt	$t0, $a2, $a5
	masknez	$t4, $a2, $t0
	maskeqz	$t0, $a5, $t0
	or	$t0, $t0, $t4
	addi.d	$t0, $t0, -1
	slt	$t4, $t0, $a4
	maskeqz	$t0, $t0, $t4
	masknez	$t4, $a4, $t4
	or	$t0, $t0, $t4
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $a0, $t0
	or	$t2, $t2, $t3
	ldx.d	$t1, $a0, $t1
	slli.d	$fp, $t2, 1
	ldx.hu	$t2, $t0, $fp
	ldx.hu	$t5, $t1, $fp
	alsl.d	$t2, $t2, $t2, 2
	srai.d	$t3, $a5, 63
	andn	$t3, $a5, $t3
	slt	$t4, $t3, $a4
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a4, $t4
	or	$t3, $t3, $t4
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $a0, $t3
	addi.w	$t8, $zero, -1
	slt	$t4, $t8, $a5
	masknez	$t6, $t8, $t4
	maskeqz	$t4, $a5, $t4
	or	$t4, $t4, $t6
	addi.d	$t4, $t4, 1
	slt	$t6, $t4, $a4
	maskeqz	$t4, $t4, $t6
	masknez	$t6, $a4, $t6
	or	$t4, $t4, $t6
	slli.d	$t4, $t4, 3
	ldx.d	$t4, $a0, $t4
	sub.d	$t6, $t5, $t2
	ldx.hu	$s0, $t3, $fp
	ori	$t2, $zero, 20
	ldx.hu	$s1, $t4, $fp
	addi.w	$t7, $zero, -2
	slt	$t5, $t7, $a5
	masknez	$s2, $t7, $t5
	maskeqz	$t5, $a5, $t5
	or	$t5, $t5, $s2
	addi.d	$t5, $t5, 2
	slt	$s2, $t5, $a4
	maskeqz	$t5, $t5, $s2
	masknez	$s2, $a4, $s2
	or	$t5, $t5, $s2
	slli.d	$t5, $t5, 3
	ldx.d	$t5, $a0, $t5
	mul.d	$s0, $s0, $t2
	add.d	$s0, $s0, $t6
	mul.d	$s1, $s1, $t2
	ldx.hu	$s2, $t5, $fp
	addi.w	$t6, $zero, -3
	slt	$s3, $t6, $a5
	maskeqz	$a5, $a5, $s3
	masknez	$s3, $t6, $s3
	or	$a5, $a5, $s3
	addi.d	$a5, $a5, 3
	slt	$s3, $a5, $a4
	maskeqz	$a5, $a5, $s3
	masknez	$a4, $a4, $s3
	or	$a4, $a5, $a4
	slli.d	$a4, $a4, 3
	ldx.d	$a0, $a0, $a4
	add.d	$a4, $s1, $s0
	alsl.d	$a5, $s2, $s2, 2
	sub.d	$a4, $a4, $a5
	ldx.hu	$a5, $a0, $fp
	slt	$fp, $a2, $a7
	masknez	$s0, $a2, $fp
	maskeqz	$fp, $a7, $fp
	or	$fp, $fp, $s0
	addi.d	$fp, $fp, -1
	slt	$s0, $fp, $a6
	maskeqz	$fp, $fp, $s0
	masknez	$s0, $a6, $s0
	or	$fp, $fp, $s0
	slli.d	$fp, $fp, 1
	ldx.hu	$s0, $t0, $fp
	ldx.hu	$s1, $t1, $fp
	add.d	$a4, $a4, $a5
	ldx.hu	$a5, $t3, $fp
	alsl.d	$s0, $s0, $s0, 2
	sub.d	$s0, $s1, $s0
	ldx.hu	$s1, $t4, $fp
	mul.d	$a5, $a5, $t2
	ldx.hu	$s2, $t5, $fp
	add.d	$a5, $a5, $s0
	mul.d	$s0, $s1, $t2
	add.d	$a5, $s0, $a5
	alsl.d	$s0, $s2, $s2, 2
	sub.w	$a5, $a5, $s0
	ldx.hu	$fp, $a0, $fp
	srai.d	$s0, $a7, 63
	andn	$s0, $a7, $s0
	slt	$s1, $s0, $a6
	maskeqz	$s0, $s0, $s1
	masknez	$s1, $a6, $s1
	or	$s0, $s0, $s1
	slli.d	$s0, $s0, 1
	ldx.hu	$s1, $t0, $s0
	ldx.hu	$s2, $t1, $s0
	add.d	$a5, $a5, $fp
	ldx.hu	$fp, $t3, $s0
	alsl.d	$s1, $s1, $s1, 2
	sub.d	$s1, $s2, $s1
	ldx.hu	$s2, $t4, $s0
	mul.d	$fp, $fp, $t2
	ldx.hu	$s3, $t5, $s0
	add.d	$fp, $fp, $s1
	mul.d	$s1, $s2, $t2
	add.d	$fp, $s1, $fp
	alsl.d	$s1, $s3, $s3, 2
	sub.d	$fp, $fp, $s1
	ldx.hu	$s0, $a0, $s0
	slt	$s1, $t8, $a7
	masknez	$t8, $t8, $s1
	maskeqz	$s1, $a7, $s1
	or	$t8, $s1, $t8
	addi.d	$t8, $t8, 1
	slt	$s1, $t8, $a6
	maskeqz	$t8, $t8, $s1
	masknez	$s1, $a6, $s1
	or	$t8, $t8, $s1
	slli.d	$s1, $t8, 1
	ldx.hu	$s2, $t0, $s1
	ldx.hu	$s3, $t1, $s1
	add.d	$t8, $fp, $s0
	ldx.hu	$fp, $t3, $s1
	alsl.d	$s0, $s2, $s2, 2
	sub.d	$s0, $s3, $s0
	ldx.hu	$s2, $t4, $s1
	mul.d	$fp, $fp, $t2
	ldx.hu	$s3, $t5, $s1
	add.d	$fp, $fp, $s0
	mul.d	$s0, $s2, $t2
	add.d	$fp, $s0, $fp
	alsl.d	$s0, $s3, $s3, 2
	sub.d	$fp, $fp, $s0
	ldx.hu	$s0, $a0, $s1
	slt	$s1, $t7, $a7
	masknez	$t7, $t7, $s1
	maskeqz	$s1, $a7, $s1
	or	$t7, $s1, $t7
	addi.d	$t7, $t7, 2
	slt	$s1, $t7, $a6
	maskeqz	$t7, $t7, $s1
	masknez	$s1, $a6, $s1
	or	$t7, $t7, $s1
	slli.d	$s1, $t7, 1
	ldx.hu	$s2, $t0, $s1
	ldx.hu	$s3, $t1, $s1
	add.d	$t7, $fp, $s0
	ldx.hu	$fp, $t3, $s1
	alsl.d	$s0, $s2, $s2, 2
	sub.d	$s0, $s3, $s0
	ldx.hu	$s2, $t4, $s1
	mul.d	$fp, $fp, $t2
	ldx.hu	$s3, $t5, $s1
	add.d	$fp, $fp, $s0
	mul.d	$s0, $s2, $t2
	add.d	$fp, $s0, $fp
	alsl.d	$s0, $s3, $s3, 2
	sub.d	$fp, $fp, $s0
	ldx.hu	$s0, $a0, $s1
	slt	$s1, $t6, $a7
	masknez	$t6, $t6, $s1
	maskeqz	$a7, $a7, $s1
	or	$a7, $a7, $t6
	addi.d	$a7, $a7, 3
	slt	$t6, $a7, $a6
	maskeqz	$a7, $a7, $t6
	masknez	$a6, $a6, $t6
	or	$a6, $a7, $a6
	slli.d	$a6, $a6, 1
	ldx.hu	$a7, $t0, $a6
	ldx.hu	$t0, $t1, $a6
	add.w	$t1, $fp, $s0
	ldx.hu	$t3, $t3, $a6
	alsl.d	$a7, $a7, $a7, 2
	sub.d	$a7, $t0, $a7
	ldx.hu	$t0, $t4, $a6
	mul.d	$t3, $t3, $t2
	add.d	$a7, $t3, $a7
	ldx.hu	$t3, $t5, $a6
	mul.d	$t0, $t0, $t2
	ldx.hu	$a0, $a0, $a6
	add.d	$a6, $t0, $a7
	alsl.d	$a7, $t3, $t3, 2
	sub.d	$a6, $a6, $a7
	add.d	$a0, $a6, $a0
	alsl.d	$a5, $a5, $a5, 2
	sub.d	$a4, $a4, $a5
	mul.d	$a5, $t8, $t2
	add.d	$a4, $a5, $a4
	mul.d	$a5, $t7, $t2
	add.d	$a4, $a5, $a4
	alsl.d	$a5, $t1, $t1, 2
	sub.d	$a4, $a4, $a5
	add.d	$a4, $a0, $a4
	ldptr.w	$a0, $a3, 15520
	addi.w	$a3, $a4, 512
	bstrpick.d	$a4, $a3, 62, 53
	add.w	$a3, $a3, $a4
	srai.d	$a4, $a3, 10
	srai.d	$a3, $a3, 63
	andn	$a3, $a4, $a3
	slt	$a4, $a3, $a0
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a0, $a4
	or	$a3, $a3, $a4
	bne	$a1, $a2, .LBB3_17
# %bb.15:
	addi.w	$a1, $t8, 16
	b	.LBB3_20
.LBB3_16:
	ldx.hu	$a0, $a0, $a5
	b	.LBB3_22
.LBB3_17:
	addi.w	$a1, $t7, 16
	b	.LBB3_20
.LBB3_18:
	addi.d	$a2, $t0, -1
	sltu	$a2, $zero, $a2
	add.d	$a2, $a5, $a2
	srai.d	$t0, $a2, 63
	andn	$a2, $a2, $t0
	slt	$t0, $a2, $a4
	maskeqz	$a2, $a2, $t0
	masknez	$t0, $a4, $t0
	or	$a2, $a2, $t0
	slli.d	$a2, $a2, 3
	ldx.d	$t4, $a0, $a2
	ori	$fp, $zero, 2
	slt	$a2, $fp, $a7
	masknez	$t0, $fp, $a2
	maskeqz	$a2, $a7, $a2
	or	$a2, $a2, $t0
	addi.d	$a2, $a2, -2
	slt	$t0, $a2, $a6
	maskeqz	$a2, $a2, $t0
	masknez	$t0, $a6, $t0
	or	$a2, $a2, $t0
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $t4, $a2
	ori	$t8, $zero, 1
	slt	$t0, $t8, $a7
	masknez	$t1, $t8, $t0
	maskeqz	$t0, $a7, $t0
	or	$t0, $t0, $t1
	addi.d	$t0, $t0, -1
	slt	$t1, $t0, $a6
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $a6, $t1
	or	$t0, $t0, $t1
	slli.d	$t0, $t0, 1
	ldx.hu	$t0, $t4, $t0
	srai.d	$t1, $a7, 63
	andn	$t1, $a7, $t1
	slt	$t2, $t1, $a6
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a6, $t2
	or	$t1, $t1, $t2
	slli.d	$t1, $t1, 1
	ldx.hu	$t1, $t4, $t1
	addi.w	$t7, $zero, -1
	slt	$t2, $t7, $a7
	masknez	$t3, $t7, $t2
	maskeqz	$t2, $a7, $t2
	or	$t2, $t2, $t3
	addi.d	$t2, $t2, 1
	slt	$t3, $t2, $a6
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a6, $t3
	or	$t2, $t2, $t3
	slli.d	$t2, $t2, 1
	ldx.hu	$t2, $t4, $t2
	addi.w	$t6, $zero, -2
	slt	$t3, $t6, $a7
	masknez	$t5, $t6, $t3
	maskeqz	$t3, $a7, $t3
	or	$t3, $t3, $t5
	addi.d	$t3, $t3, 2
	slt	$t5, $t3, $a6
	maskeqz	$t3, $t3, $t5
	masknez	$t5, $a6, $t5
	or	$t3, $t3, $t5
	slli.d	$t3, $t3, 1
	ldx.hu	$t3, $t4, $t3
	addi.w	$t5, $zero, -3
	slt	$s0, $t5, $a7
	masknez	$s1, $t5, $s0
	maskeqz	$s0, $a7, $s0
	or	$s0, $s0, $s1
	addi.d	$s0, $s0, 3
	slt	$s1, $s0, $a6
	maskeqz	$s0, $s0, $s1
	masknez	$s1, $a6, $s1
	or	$s0, $s0, $s1
	slli.d	$s0, $s0, 1
	ldx.hu	$t4, $t4, $s0
	addi.d	$a1, $a1, -1
	sltu	$a1, $zero, $a1
	add.d	$a1, $a7, $a1
	srai.d	$a7, $a1, 63
	andn	$a1, $a1, $a7
	slt	$a7, $a1, $a6
	maskeqz	$a1, $a1, $a7
	masknez	$a6, $a6, $a7
	or	$a1, $a1, $a6
	slt	$a6, $fp, $a5
	masknez	$a7, $fp, $a6
	maskeqz	$a6, $a5, $a6
	or	$a6, $a6, $a7
	addi.d	$a6, $a6, -2
	slt	$a7, $a6, $a4
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $a4, $a7
	or	$a6, $a6, $a7
	slt	$a7, $t8, $a5
	masknez	$t8, $t8, $a7
	maskeqz	$a7, $a5, $a7
	or	$a7, $a7, $t8
	addi.d	$a7, $a7, -1
	slt	$t8, $a7, $a4
	maskeqz	$a7, $a7, $t8
	masknez	$t8, $a4, $t8
	or	$a7, $a7, $t8
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $a0, $a7
	slli.d	$a6, $a6, 3
	ldx.d	$t8, $a0, $a6
	slli.d	$a6, $a1, 1
	ldx.hu	$a7, $a7, $a6
	srai.d	$a1, $a5, 63
	andn	$a1, $a5, $a1
	slt	$fp, $a1, $a4
	maskeqz	$a1, $a1, $fp
	masknez	$fp, $a4, $fp
	or	$a1, $a1, $fp
	slli.d	$a1, $a1, 3
	ldx.d	$fp, $a0, $a1
	ldptr.w	$a1, $a3, 15520
	ldx.hu	$a3, $t8, $a6
	alsl.d	$a7, $a7, $a7, 2
	ldx.hu	$t8, $fp, $a6
	slt	$fp, $t7, $a5
	masknez	$t7, $t7, $fp
	maskeqz	$fp, $a5, $fp
	or	$t7, $fp, $t7
	addi.d	$t7, $t7, 1
	slt	$fp, $t7, $a4
	maskeqz	$t7, $t7, $fp
	masknez	$fp, $a4, $fp
	or	$t7, $t7, $fp
	slli.d	$t7, $t7, 3
	ldx.d	$t7, $a0, $t7
	sub.d	$a3, $a3, $a7
	ori	$a7, $zero, 20
	mul.d	$t8, $t8, $a7
	ldx.hu	$t7, $t7, $a6
	slt	$fp, $t6, $a5
	masknez	$t6, $t6, $fp
	maskeqz	$fp, $a5, $fp
	or	$t6, $fp, $t6
	addi.d	$t6, $t6, 2
	slt	$fp, $t6, $a4
	maskeqz	$t6, $t6, $fp
	masknez	$fp, $a4, $fp
	or	$t6, $t6, $fp
	slli.d	$t6, $t6, 3
	ldx.d	$t6, $a0, $t6
	slt	$fp, $t5, $a5
	masknez	$t5, $t5, $fp
	maskeqz	$a5, $a5, $fp
	or	$a5, $a5, $t5
	addi.d	$a5, $a5, 3
	slt	$t5, $a5, $a4
	maskeqz	$a5, $a5, $t5
	masknez	$a4, $a4, $t5
	or	$a4, $a5, $a4
	slli.d	$a4, $a4, 3
	ldx.d	$a0, $a0, $a4
	add.d	$a3, $t8, $a3
	ldx.hu	$a4, $t6, $a6
	mul.d	$a5, $t7, $a7
	ldx.hu	$a0, $a0, $a6
	add.d	$a3, $a5, $a3
	alsl.d	$a4, $a4, $a4, 2
	sub.d	$a3, $a3, $a4
	add.d	$a0, $a3, $a0
	alsl.d	$a3, $t0, $t0, 2
	sub.d	$a2, $a2, $a3
	mul.d	$a3, $t1, $a7
	add.d	$a2, $a3, $a2
	mul.d	$a3, $t2, $a7
	add.d	$a2, $a3, $a2
	alsl.d	$a3, $t3, $t3, 2
	sub.d	$a2, $a2, $a3
	add.d	$a2, $a2, $t4
	addi.w	$a2, $a2, 16
	bstrpick.d	$a3, $a2, 62, 58
	add.w	$a2, $a2, $a3
	srai.d	$a3, $a2, 5
	srai.d	$a2, $a2, 63
	andn	$a2, $a3, $a2
	slt	$a3, $a2, $a1
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a1, $a3
	or	$a2, $a2, $a3
	addi.w	$a0, $a0, 16
	bstrpick.d	$a3, $a0, 62, 58
	add.w	$a0, $a0, $a3
	srai.d	$a3, $a0, 5
	srai.d	$a0, $a0, 63
	andn	$a0, $a3, $a0
	slt	$a3, $a0, $a1
	maskeqz	$a0, $a0, $a3
	masknez	$a1, $a1, $a3
	or	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	b	.LBB3_23
.LBB3_19:
	addi.w	$a1, $fp, 16
.LBB3_20:
	bstrpick.d	$a2, $a1, 62, 58
	add.w	$a1, $a1, $a2
	srai.d	$a2, $a1, 5
	srai.d	$a1, $a1, 63
	andn	$a1, $a2, $a1
	slt	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a0, $a1, $a0
	add.d	$a0, $a0, $a3
	b	.LBB3_23
.LBB3_21:
	ldx.d	$a0, $a0, $a7
	ldx.hu	$a0, $a0, $a2
.LBB3_22:
	add.d	$a0, $a3, $a0
.LBB3_23:
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$a3, $a0, 1
.LBB3_24:
	andi	$a0, $a3, 255
	ld.d	$s4, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	Get_Reference_Pixel, .Lfunc_end3-Get_Reference_Pixel
                                        # -- End function
	.globl	UpdateDecoders                  # -- Begin function UpdateDecoders
	.p2align	5
	.type	UpdateDecoders,@function
UpdateDecoders:                         # @UpdateDecoders
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
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$s3, $a0, %got_pc_lo12(input)
	ld.d	$a0, $s3, 0
	ldptr.w	$a0, $a0, 4728
	blez	$a0, .LBB4_15
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a0, %got_pc_hi20(decs)
	ld.d	$s4, $a0, %got_pc_lo12(decs)
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s6, $a0, %got_pc_lo12(img)
	pcalau12i	$a0, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$a0, $a0, %got_pc_lo12(start_frame_no_in_this_IGOP)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$s5, $zero
	ori	$s7, $zero, 16
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	st.d	$s4, $sp, 0                     # 8-byte Folded Spill
	b	.LBB4_3
	.p2align	4, , 16
.LBB4_2:                                # %DecOneForthPix.exit
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $s3, 0
	ldptr.w	$a0, $a0, 4728
	addi.d	$s5, $s5, 1
	bge	$s5, $a0, .LBB4_15
.LBB4_3:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
                                        #       Child Loop BB4_9 Depth 3
                                        #     Child Loop BB4_14 Depth 2
	ld.d	$a0, $s4, 0
	ld.d	$a0, $a0, 40
	pcaddu18i	$ra, %call36(Build_Status_Map)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s6, 0
	ld.d	$a3, $a0, 24
	slli.d	$a5, $s5, 3
	ld.w	$a2, $a1, 68
	ldx.d	$fp, $a3, $a5
	blt	$a2, $s7, .LBB4_12
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a3, $a1, 52
	blt	$a3, $s7, .LBB4_12
# %bb.5:                                # %.preheader.us.preheader.i
                                        #   in Loop: Header=BB4_3 Depth=1
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a1, $a0, 16
	ld.d	$s0, $a0, 40
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	ldx.d	$s1, $a1, $a5
	move	$s2, $zero
	bstrpick.d	$s4, $a3, 31, 4
	bstrpick.d	$s5, $a2, 31, 4
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_6:                                # %._crit_edge.us.i
                                        #   in Loop: Header=BB4_7 Depth=2
	addi.d	$s2, $s2, 1
	beq	$s2, $s5, .LBB4_11
.LBB4_7:                                # %.preheader.us.i
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_9 Depth 3
	move	$s3, $zero
	move	$s7, $zero
	alsl.d	$s8, $s2, $s0, 3
	b	.LBB4_9
	.p2align	4, , 16
.LBB4_8:                                #   in Loop: Header=BB4_9 Depth=3
	addi.d	$s7, $s7, 1
	addi.w	$s3, $s3, 1
	beq	$s4, $s7, .LBB4_6
.LBB4_9:                                #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s8, 0
	ldx.bu	$a0, $a0, $s7
	beqz	$a0, .LBB4_8
# %bb.10:                               #   in Loop: Header=BB4_9 Depth=3
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s3
	move	$a3, $s1
	move	$a4, $s0
	pcaddu18i	$ra, %call36(Conceal_Error)
	jirl	$ra, $ra, 0
	b	.LBB4_8
	.p2align	4, , 16
.LBB4_11:                               # %Error_Concealment.exit.loopexit
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$s4, $sp, 0                     # 8-byte Folded Reload
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 24
	ld.d	$a1, $s6, 0
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$fp, $a2, $a5
	ld.w	$a2, $a1, 68
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ori	$s7, $zero, 16
.LBB4_12:                               # %Error_Concealment.exit
                                        #   in Loop: Header=BB4_3 Depth=1
	blez	$a2, .LBB4_2
# %bb.13:                               # %.lr.ph.i
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $a0, 16
	ld.w	$a2, $a1, 0
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	ldptr.w	$a4, $a1, 15240
	ldx.d	$a0, $a0, $a5
	move	$s0, $zero
	move	$s1, $zero
	sub.w	$a2, $a2, $a3
	mod.w	$a2, $a2, $a4
	alsl.d	$s2, $a2, $a0, 3
	.p2align	4, , 16
.LBB4_14:                               #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s2, 0
	ldx.d	$a0, $a0, $s0
	ld.w	$a2, $a1, 52
	ldx.d	$a1, $fp, $s0
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 0
	ld.w	$a0, $a1, 68
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB4_14
	b	.LBB4_2
.LBB4_15:                               # %._crit_edge
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
.Lfunc_end4:
	.size	UpdateDecoders, .Lfunc_end4-UpdateDecoders
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Build_Status_Map
.LCPI5_0:
	.dword	0x41dfffffffc00000              # double 2147483647
.LCPI5_1:
	.dword	0x4059000000000000              # double 100
	.text
	.globl	Build_Status_Map
	.p2align	5
	.type	Build_Status_Map,@function
Build_Status_Map:                       # @Build_Status_Map
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
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a2, 68
	ori	$a3, $zero, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	blt	$a1, $a3, .LBB5_15
# %bb.1:
	ld.w	$a2, $a2, 52
	blt	$a2, $a3, .LBB5_15
# %bb.2:                                # %.preheader.us.preheader
	move	$a3, $zero
	move	$a0, $zero
	move	$a4, $zero
	bstrpick.d	$s5, $a2, 31, 4
	bstrpick.d	$a1, $a1, 31, 4
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a1, $s5, -1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$s8, $a1, %got_pc_lo12(input)
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	fld.d	$fs0, $a1, %pc_lo12(.LCPI5_0)
	pcalau12i	$a1, %pc_hi20(.LCPI5_1)
	fld.d	$fs1, $a1, %pc_lo12(.LCPI5_1)
	addi.w	$fp, $zero, -1
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_3:                                # %._crit_edge.us
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	add.w	$a4, $a1, $a4
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	beq	$a3, $a1, .LBB5_15
.LBB5_4:                                # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_8 Depth 2
	move	$s7, $zero
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	alsl.d	$s6, $a3, $a1, 3
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	ori	$a1, $zero, 536
	mul.d	$s4, $a4, $a1
	b	.LBB5_8
	.p2align	4, , 16
.LBB5_5:                                #   in Loop: Header=BB5_8 Depth=2
	move	$a1, $zero
	move	$a0, $zero
.LBB5_6:                                # %.sink.split
                                        #   in Loop: Header=BB5_8 Depth=2
	ld.d	$a2, $s6, 0
	stx.b	$a1, $a2, $s7
.LBB5_7:                                #   in Loop: Header=BB5_8 Depth=2
	addi.d	$s7, $s7, 1
	addi.d	$s4, $s4, 536
	beq	$s5, $s7, .LBB5_3
.LBB5_8:                                #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s8, 0
	ld.w	$a1, $a1, 264
	beqz	$a1, .LBB5_10
# %bb.9:                                #   in Loop: Header=BB5_8 Depth=2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldptr.d	$a1, $a1, 14224
	ldx.w	$a1, $a1, $s4
	beq	$a1, $fp, .LBB5_12
.LBB5_10:                               #   in Loop: Header=BB5_8 Depth=2
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	ldptr.w	$s2, $a1, 4724
	move	$s1, $a0
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	ldptr.w	$s3, $a1, 4720
	move	$s0, $a0
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	movgr2fr.w	$fa0, $a0
	ldptr.w	$a0, $a1, 4716
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	fmul.d	$fa0, $fa0, $fs1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	addi.w	$fp, $fp, 1
	fcmp.clt.d	$fcc0, $fa0, $fa1
	ori	$a0, $zero, 1
	bcnez	$fcc0, .LBB5_13
# %bb.11:                               #   in Loop: Header=BB5_8 Depth=2
	movgr2fr.w	$fa0, $s1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	fmul.d	$fa0, $fa0, $fs1
	movgr2fr.w	$fa1, $s2
	ffint.d.w	$fa1, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	ori	$a1, $zero, 3
	maskeqz	$a0, $a1, $a0
	movgr2fr.w	$fa0, $s0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	fmul.d	$fa0, $fa0, $fs1
	movgr2fr.w	$fa1, $s3
	ffint.d.w	$fa1, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.w	$a1, $a0, 2
	movcf2gr	$a2, $fcc0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
.LBB5_12:                               #   in Loop: Header=BB5_8 Depth=2
	beqz	$a0, .LBB5_5
.LBB5_13:                               # %.thread.us
                                        #   in Loop: Header=BB5_8 Depth=2
	ld.d	$a1, $s6, 0
	stx.b	$a0, $a1, $s7
	ld.d	$a1, $s8, 0
	ldptr.w	$a1, $a1, 4016
	bnez	$a1, .LBB5_7
# %bb.14:                               #   in Loop: Header=BB5_8 Depth=2
	ori	$a1, $zero, 1
	b	.LBB5_6
.LBB5_15:                               # %._crit_edge48
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
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
.Lfunc_end5:
	.size	Build_Status_Map, .Lfunc_end5-Build_Status_Map
                                        # -- End function
	.globl	Error_Concealment               # -- Begin function Error_Concealment
	.p2align	5
	.type	Error_Concealment,@function
Error_Concealment:                      # @Error_Concealment
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	st.d	$s7, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a3, $a3, %got_pc_lo12(img)
	ld.d	$a4, $a3, 0
	ld.w	$a3, $a4, 68
	ori	$a5, $zero, 16
	blt	$a3, $a5, .LBB6_8
# %bb.1:
	move	$s1, $a0
	ld.w	$a0, $a4, 52
	blt	$a0, $a5, .LBB6_8
# %bb.2:                                # %.preheader.us.preheader
	move	$fp, $a2
	move	$s0, $a1
	move	$s2, $zero
	bstrpick.d	$s4, $a0, 31, 4
	bstrpick.d	$s5, $a3, 31, 4
	b	.LBB6_4
	.p2align	4, , 16
.LBB6_3:                                # %._crit_edge.us
                                        #   in Loop: Header=BB6_4 Depth=1
	addi.d	$s2, $s2, 1
	beq	$s2, $s5, .LBB6_8
.LBB6_4:                                # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_6 Depth 2
	move	$s3, $zero
	move	$s6, $zero
	alsl.d	$s7, $s2, $s0, 3
	b	.LBB6_6
	.p2align	4, , 16
.LBB6_5:                                #   in Loop: Header=BB6_6 Depth=2
	addi.d	$s6, $s6, 1
	addi.w	$s3, $s3, 1
	beq	$s4, $s6, .LBB6_3
.LBB6_6:                                #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s7, 0
	ldx.bu	$a0, $a0, $s6
	beqz	$a0, .LBB6_5
# %bb.7:                                #   in Loop: Header=BB6_6 Depth=2
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s3
	move	$a3, $fp
	move	$a4, $s0
	pcaddu18i	$ra, %call36(Conceal_Error)
	jirl	$ra, $ra, 0
	b	.LBB6_5
.LBB6_8:                                # %._crit_edge16
	ld.d	$s7, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end6:
	.size	Error_Concealment, .Lfunc_end6-Error_Concealment
                                        # -- End function
	.globl	DecOneForthPix                  # -- Begin function DecOneForthPix
	.p2align	5
	.type	DecOneForthPix,@function
DecOneForthPix:                         # @DecOneForthPix
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$s0, $a2, %got_pc_lo12(img)
	ld.d	$a2, $s0, 0
	ld.w	$a3, $a2, 68
	blez	$a3, .LBB7_3
# %bb.1:                                # %.lr.ph
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$a0, $a0, %got_pc_lo12(start_frame_no_in_this_IGOP)
	ld.w	$a3, $a2, 0
	ld.w	$a0, $a0, 0
	ldptr.w	$a4, $a2, 15240
	move	$s1, $zero
	move	$s2, $zero
	sub.w	$a0, $a3, $a0
	mod.w	$a0, $a0, $a4
	alsl.d	$s3, $a0, $a1, 3
	.p2align	4, , 16
.LBB7_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ldx.d	$a0, $a0, $s1
	ld.w	$a2, $a2, 52
	ldx.d	$a1, $fp, $s1
	slli.d	$a2, $a2, 1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 0
	ld.w	$a0, $a2, 68
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	blt	$s2, $a0, .LBB7_2
.LBB7_3:                                # %._crit_edge
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end7:
	.size	DecOneForthPix, .Lfunc_end7-DecOneForthPix
                                        # -- End function
	.globl	compute_residue_b8block         # -- Begin function compute_residue_b8block
	.p2align	5
	.type	compute_residue_b8block,@function
compute_residue_b8block:                # @compute_residue_b8block
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	bstrpick.d	$a2, $a0, 31, 31
	add.d	$a2, $a0, $a2
	addi.w	$a4, $a2, 0
	bstrpick.d	$a2, $a2, 31, 1
	pcalau12i	$a3, %got_pc_hi20(enc_picture)
	ld.d	$a3, $a3, %got_pc_lo12(enc_picture)
	slli.d	$a2, $a2, 1
	sub.d	$a0, $a0, $a2
	slli.w	$s4, $a0, 3
	ld.d	$a2, $a3, 0
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a5, $a3, %got_pc_lo12(img)
	ori	$a3, $zero, 8
	alsl.w	$a3, $a0, $a3, 3
	ldptr.d	$s0, $a2, 6440
	ld.d	$a0, $a5, 0
	slli.d	$a4, $a4, 2
	bstrins.d	$a4, $zero, 2, 0
	addi.w	$a2, $a4, 8
	bltz	$a1, .LBB8_5
# %bb.1:                                # %.preheader37
	pcalau12i	$a5, %got_pc_hi20(decs)
	ld.d	$a5, $a5, %got_pc_lo12(decs)
	ld.d	$a5, $a5, 0
	ld.d	$s1, $a5, 0
	addi.w	$s5, $a4, 0
	bstrpick.d	$s6, $a3, 31, 0
	alsl.d	$a3, $s5, $s0, 3
	slli.d	$s2, $s5, 3
	ldx.d	$a4, $s1, $s2
	addi.d	$a5, $s5, 1
	alsl.d	$a6, $a5, $s0, 3
	st.d	$a6, $sp, 0                     # 8-byte Folded Spill
	alsl.d	$a7, $a5, $s1, 3
	addi.d	$t1, $s2, 16
	add.d	$t0, $s0, $t1
	add.d	$t1, $s1, $t1
	addi.d	$t3, $s2, 24
	add.d	$t2, $s0, $t3
	add.d	$t3, $s1, $t3
	addi.d	$t5, $s2, 32
	add.d	$t4, $s0, $t5
	add.d	$t5, $s1, $t5
	addi.d	$t7, $s2, 40
	add.d	$t6, $s0, $t7
	add.d	$t7, $s1, $t7
	addi.d	$fp, $s2, 48
	add.d	$t8, $s0, $fp
	add.d	$fp, $s1, $fp
	addi.d	$s2, $s2, 56
	add.d	$s0, $s0, $s2
	add.d	$s1, $s1, $s2
	slli.d	$s2, $s4, 1
	slli.d	$s3, $s4, 2
	sub.d	$s4, $s6, $s4
	slli.d	$a1, $a1, 9
	slli.d	$s5, $s5, 5
	add.d	$a1, $a1, $s5
	add.d	$a1, $a0, $a1
	lu12i.w	$s5, 1
	ori	$s6, $s5, 720
	b	.LBB8_3
	.p2align	4, , 16
.LBB8_2:                                #   in Loop: Header=BB8_3 Depth=1
	addi.d	$s2, $s2, 2
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, 4
	beqz	$s4, .LBB8_9
.LBB8_3:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$s7, $a0, 180
	slli.d	$s7, $s7, 3
	ldx.d	$s7, $a3, $s7
	ld.w	$s8, $a0, 176
	alsl.d	$s7, $s8, $s7, 1
	ldx.hu	$s8, $s7, $s2
	add.d	$s7, $a1, $s2
	ldx.hu	$ra, $s7, $s6
	sub.d	$s8, $s8, $ra
	stx.w	$s8, $a4, $s3
	bge	$a5, $a2, .LBB8_2
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=1
	ld.w	$s8, $a0, 180
	slli.d	$s8, $s8, 3
	ld.d	$a6, $sp, 0                     # 8-byte Folded Reload
	ldx.d	$s8, $a6, $s8
	ld.w	$ra, $a0, 176
	alsl.d	$s8, $ra, $s8, 1
	ldx.hu	$s8, $s8, $s2
	ori	$ra, $s5, 752
	ldx.hu	$ra, $s7, $ra
	ld.d	$a6, $a7, 0
	sub.d	$s8, $s8, $ra
	stx.w	$s8, $a6, $s3
	ld.w	$a6, $a0, 180
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $t0, $a6
	ld.w	$s8, $a0, 176
	alsl.d	$a6, $s8, $a6, 1
	ldx.hu	$a6, $a6, $s2
	ori	$s8, $s5, 784
	ldx.hu	$s8, $s7, $s8
	ld.d	$ra, $t1, 0
	sub.d	$a6, $a6, $s8
	stx.w	$a6, $ra, $s3
	ld.w	$a6, $a0, 180
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $t2, $a6
	ld.w	$s8, $a0, 176
	alsl.d	$a6, $s8, $a6, 1
	ldx.hu	$a6, $a6, $s2
	ori	$s8, $s5, 816
	ldx.hu	$s8, $s7, $s8
	ld.d	$ra, $t3, 0
	sub.d	$a6, $a6, $s8
	stx.w	$a6, $ra, $s3
	ld.w	$a6, $a0, 180
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $t4, $a6
	ld.w	$s8, $a0, 176
	alsl.d	$a6, $s8, $a6, 1
	ldx.hu	$a6, $a6, $s2
	ori	$s8, $s5, 848
	ldx.hu	$s8, $s7, $s8
	ld.d	$ra, $t5, 0
	sub.d	$a6, $a6, $s8
	stx.w	$a6, $ra, $s3
	ld.w	$a6, $a0, 180
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $t6, $a6
	ld.w	$s8, $a0, 176
	alsl.d	$a6, $s8, $a6, 1
	ldx.hu	$a6, $a6, $s2
	ori	$s8, $s5, 880
	ldx.hu	$s8, $s7, $s8
	ld.d	$ra, $t7, 0
	sub.d	$a6, $a6, $s8
	stx.w	$a6, $ra, $s3
	ld.w	$a6, $a0, 180
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $t8, $a6
	ld.w	$s8, $a0, 176
	alsl.d	$a6, $s8, $a6, 1
	ldx.hu	$a6, $a6, $s2
	ori	$s8, $s5, 912
	ldx.hu	$s8, $s7, $s8
	ld.d	$ra, $fp, 0
	sub.d	$a6, $a6, $s8
	stx.w	$a6, $ra, $s3
	ld.w	$a6, $a0, 180
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $s0, $a6
	ld.w	$s8, $a0, 176
	alsl.d	$a6, $s8, $a6, 1
	ldx.hu	$a6, $a6, $s2
	ori	$s8, $s5, 944
	ldx.hu	$s7, $s7, $s8
	ld.d	$s8, $s1, 0
	sub.d	$a6, $a6, $s7
	stx.w	$a6, $s8, $s3
	b	.LBB8_2
.LBB8_5:                                # %.preheader39
	pcalau12i	$a1, %got_pc_hi20(decs)
	ld.d	$a1, $a1, %got_pc_lo12(decs)
	ld.d	$a1, $a1, 0
	ld.d	$s1, $a1, 0
	addi.w	$s5, $a4, 0
	bstrpick.d	$s3, $a3, 31, 0
	alsl.d	$a1, $s5, $s0, 3
	slli.d	$fp, $s5, 3
	ldx.d	$a3, $s1, $fp
	addi.d	$a4, $s5, 1
	alsl.d	$a5, $a4, $s0, 3
	alsl.d	$a6, $a4, $s1, 3
	addi.d	$t0, $fp, 16
	add.d	$a7, $s0, $t0
	add.d	$t0, $s1, $t0
	addi.d	$t2, $fp, 24
	add.d	$t1, $s0, $t2
	add.d	$t2, $s1, $t2
	addi.d	$t4, $fp, 32
	add.d	$t3, $s0, $t4
	add.d	$t4, $s1, $t4
	addi.d	$t6, $fp, 40
	add.d	$t5, $s0, $t6
	add.d	$t6, $s1, $t6
	addi.d	$t8, $fp, 48
	add.d	$t7, $s0, $t8
	add.d	$t8, $s1, $t8
	addi.d	$s2, $fp, 56
	add.d	$fp, $s0, $s2
	add.d	$s0, $s1, $s2
	slli.d	$s1, $s4, 1
	slli.d	$s2, $s4, 2
	sub.d	$s3, $s3, $s4
	slli.d	$s4, $s5, 5
	add.d	$s4, $s4, $a0
	lu12i.w	$s5, 3
	ori	$s5, $s5, 560
	add.d	$s4, $s4, $s5
	b	.LBB8_7
	.p2align	4, , 16
.LBB8_6:                                #   in Loop: Header=BB8_7 Depth=1
	addi.d	$s1, $s1, 2
	addi.d	$s3, $s3, -1
	addi.d	$s2, $s2, 4
	beqz	$s3, .LBB8_9
.LBB8_7:                                # %.preheader38
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$s5, $a0, 180
	slli.d	$s5, $s5, 3
	ldx.d	$s5, $a1, $s5
	ld.w	$s6, $a0, 176
	alsl.d	$s5, $s6, $s5, 1
	ldx.hu	$s6, $s5, $s1
	add.d	$s5, $s4, $s1
	ld.hu	$s7, $s5, -224
	sub.d	$s6, $s6, $s7
	stx.w	$s6, $a3, $s2
	bge	$a4, $a2, .LBB8_6
# %bb.8:                                #   in Loop: Header=BB8_7 Depth=1
	ld.w	$s6, $a0, 180
	slli.d	$s6, $s6, 3
	ldx.d	$s6, $a5, $s6
	ld.w	$s7, $a0, 176
	alsl.d	$s6, $s7, $s6, 1
	ldx.hu	$s6, $s6, $s1
	ld.hu	$s7, $s5, -192
	ld.d	$s8, $a6, 0
	sub.d	$s6, $s6, $s7
	stx.w	$s6, $s8, $s2
	ld.w	$s6, $a0, 180
	slli.d	$s6, $s6, 3
	ldx.d	$s6, $a7, $s6
	ld.w	$s7, $a0, 176
	alsl.d	$s6, $s7, $s6, 1
	ldx.hu	$s6, $s6, $s1
	ld.hu	$s7, $s5, -160
	ld.d	$s8, $t0, 0
	sub.d	$s6, $s6, $s7
	stx.w	$s6, $s8, $s2
	ld.w	$s6, $a0, 180
	slli.d	$s6, $s6, 3
	ldx.d	$s6, $t1, $s6
	ld.w	$s7, $a0, 176
	alsl.d	$s6, $s7, $s6, 1
	ldx.hu	$s6, $s6, $s1
	ld.hu	$s7, $s5, -128
	ld.d	$s8, $t2, 0
	sub.d	$s6, $s6, $s7
	stx.w	$s6, $s8, $s2
	ld.w	$s6, $a0, 180
	slli.d	$s6, $s6, 3
	ldx.d	$s6, $t3, $s6
	ld.w	$s7, $a0, 176
	alsl.d	$s6, $s7, $s6, 1
	ldx.hu	$s6, $s6, $s1
	ld.hu	$s7, $s5, -96
	ld.d	$s8, $t4, 0
	sub.d	$s6, $s6, $s7
	stx.w	$s6, $s8, $s2
	ld.w	$s6, $a0, 180
	slli.d	$s6, $s6, 3
	ldx.d	$s6, $t5, $s6
	ld.w	$s7, $a0, 176
	alsl.d	$s6, $s7, $s6, 1
	ldx.hu	$s6, $s6, $s1
	ld.hu	$s7, $s5, -64
	ld.d	$s8, $t6, 0
	sub.d	$s6, $s6, $s7
	stx.w	$s6, $s8, $s2
	ld.w	$s6, $a0, 180
	slli.d	$s6, $s6, 3
	ldx.d	$s6, $t7, $s6
	ld.w	$s7, $a0, 176
	alsl.d	$s6, $s7, $s6, 1
	ldx.hu	$s6, $s6, $s1
	ld.hu	$s5, $s5, -32
	ld.d	$s7, $t8, 0
	sub.d	$s5, $s6, $s5
	stx.w	$s5, $s7, $s2
	ld.w	$s5, $a0, 180
	slli.d	$s5, $s5, 3
	ldx.d	$s5, $fp, $s5
	ld.w	$s6, $a0, 176
	alsl.d	$s5, $s6, $s5, 1
	ldx.hu	$s5, $s5, $s1
	ldx.hu	$s6, $s4, $s1
	ld.d	$s7, $s0, 0
	sub.d	$s5, $s5, $s6
	stx.w	$s5, $s7, $s2
	b	.LBB8_6
.LBB8_9:                                # %.loopexit
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end8:
	.size	compute_residue_b8block, .Lfunc_end8-compute_residue_b8block
                                        # -- End function
	.globl	compute_residue_mb              # -- Begin function compute_residue_mb
	.p2align	5
	.type	compute_residue_mb,@function
compute_residue_mb:                     # @compute_residue_mb
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	move	$a0, $zero
	move	$a1, $fp
	pcaddu18i	$ra, %call36(compute_residue_b8block)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(compute_residue_b8block)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(compute_residue_b8block)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	move	$a1, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(compute_residue_b8block)
	jr	$t8
.Lfunc_end9:
	.size	compute_residue_mb, .Lfunc_end9-compute_residue_mb
                                        # -- End function
	.globl	Conceal_Error                   # -- Begin function Conceal_Error
	.p2align	5
	.type	Conceal_Error,@function
Conceal_Error:                          # @Conceal_Error
# %bb.0:
	addi.d	$sp, $sp, -288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a5, %got_pc_hi20(decs)
	ld.d	$s4, $a5, %got_pc_lo12(decs)
	ld.d	$a5, $s4, 0
	ld.d	$a6, $a5, 48
	slli.d	$a5, $a1, 3
	ldx.d	$a6, $a6, $a5
	pcalau12i	$a7, %got_pc_hi20(img)
	ld.d	$a7, $a7, %got_pc_lo12(img)
	ldx.bu	$a6, $a6, $a2
	ld.d	$t0, $a7, 0
	addi.d	$a7, $a6, -1
	ori	$t1, $zero, 3
	move	$s7, $a0
	bltu	$a7, $t1, .LBB10_6
# %bb.1:
	ori	$a0, $zero, 8
	beq	$a6, $a0, .LBB10_6
# %bb.2:
	bnez	$a6, .LBB10_9
# %bb.3:
	ld.w	$a0, $t0, 20
	beqz	$a0, .LBB10_30
# %bb.4:
	ori	$a6, $zero, 1
	bne	$a0, $a6, .LBB10_9
# %bb.5:
	ldptr.w	$a0, $t0, 15360
	move	$a6, $zero
	slt	$a7, $zero, $a0
	b	.LBB10_11
.LBB10_6:
	ld.w	$a0, $t0, 20
	beqz	$a0, .LBB10_10
# %bb.7:
	ori	$a6, $zero, 1
	bne	$a0, $a6, .LBB10_9
# %bb.8:
	ldptr.w	$a0, $t0, 15360
	move	$a7, $zero
	slt	$a6, $zero, $a0
	b	.LBB10_11
.LBB10_9:                               # %.fold.split250
	move	$a7, $zero
	move	$a6, $zero
	b	.LBB10_11
.LBB10_10:
	move	$a7, $zero
	ori	$a6, $zero, 1
.LBB10_11:                              # %.thread253
	ldx.d	$a0, $a4, $a5
	ldx.bu	$a0, $a0, $a2
	addi.d	$a0, $a0, -1
	ori	$a4, $zero, 4
	bltu	$a4, $a0, .LBB10_26
# %bb.12:                               # %.thread253
	pcalau12i	$a4, %got_pc_hi20(start_frame_no_in_this_IGOP)
	ld.d	$a4, $a4, %got_pc_lo12(start_frame_no_in_this_IGOP)
	pcalau12i	$a5, %got_pc_hi20(enc_picture)
	ld.d	$a5, $a5, %got_pc_lo12(enc_picture)
	ld.w	$a4, $a4, 0
	ld.w	$t1, $t0, 0
	ld.d	$a5, $a5, 0
	nor	$a4, $a4, $zero
	add.w	$a4, $t1, $a4
	ld.w	$t1, $t0, 28
	ldptr.d	$t2, $a5, 6512
	slli.d	$a0, $a0, 2
	pcalau12i	$a5, %pc_hi20(.LJTI10_0)
	addi.d	$t3, $a5, %pc_lo12(.LJTI10_0)
	ldx.w	$a0, $t3, $a0
	mod.w	$a5, $a4, $t1
	ld.d	$t1, $t2, 0
	slli.w	$a4, $a1, 4
	add.d	$t2, $t3, $a0
	slli.w	$a0, $a2, 4
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	jr	$t2
.LBB10_13:
	ld.w	$a1, $t0, 20
	ori	$a2, $zero, 2
	beq	$a1, $a2, .LBB10_25
# %bb.14:                               # %.preheader257
	move	$a1, $zero
	slli.d	$a2, $a5, 3
	ldx.d	$a2, $a3, $a2
	addi.d	$a5, $a0, 1
	addi.d	$a6, $a0, 2
	addi.d	$a7, $a0, 3
	addi.d	$t0, $a0, 4
	addi.d	$t1, $a0, 5
	addi.d	$t2, $a0, 6
	addi.d	$t3, $a0, 7
	addi.d	$t4, $a0, 8
	addi.d	$t5, $a0, 9
	addi.d	$t6, $a0, 10
	addi.d	$t7, $a0, 11
	addi.d	$t8, $a0, 12
	addi.d	$fp, $a0, 13
	addi.d	$s0, $a0, 14
	addi.d	$s1, $a0, 15
	alsl.d	$a2, $a4, $a2, 3
	alsl.d	$a3, $a4, $s7, 3
	slli.d	$a0, $a0, 1
	slli.d	$a4, $a5, 1
	slli.d	$a5, $a6, 1
	slli.d	$a6, $a7, 1
	slli.d	$a7, $t0, 1
	slli.d	$t0, $t1, 1
	slli.d	$t1, $t2, 1
	slli.d	$t2, $t3, 1
	slli.d	$t3, $t4, 1
	slli.d	$t4, $t5, 1
	slli.d	$t5, $t6, 1
	slli.d	$t6, $t7, 1
	slli.d	$t7, $t8, 1
	slli.d	$t8, $fp, 1
	slli.d	$fp, $s0, 1
	slli.d	$s0, $s1, 1
	ori	$s1, $zero, 128
	.p2align	4, , 16
.LBB10_15:                              # %.preheader256
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$s2, $a2, $a1
	ldx.d	$s3, $a3, $a1
	ldx.h	$s4, $s2, $a0
	stx.h	$s4, $s3, $a0
	ldx.h	$s4, $s2, $a4
	stx.h	$s4, $s3, $a4
	ldx.h	$s4, $s2, $a5
	stx.h	$s4, $s3, $a5
	ldx.h	$s4, $s2, $a6
	stx.h	$s4, $s3, $a6
	ldx.h	$s4, $s2, $a7
	stx.h	$s4, $s3, $a7
	ldx.h	$s4, $s2, $t0
	stx.h	$s4, $s3, $t0
	ldx.h	$s4, $s2, $t1
	stx.h	$s4, $s3, $t1
	ldx.h	$s4, $s2, $t2
	stx.h	$s4, $s3, $t2
	ldx.h	$s4, $s2, $t3
	stx.h	$s4, $s3, $t3
	ldx.h	$s4, $s2, $t4
	stx.h	$s4, $s3, $t4
	ldx.h	$s4, $s2, $t5
	stx.h	$s4, $s3, $t5
	ldx.h	$s4, $s2, $t6
	stx.h	$s4, $s3, $t6
	ldx.h	$s4, $s2, $t7
	stx.h	$s4, $s3, $t7
	ldx.h	$s4, $s2, $t8
	stx.h	$s4, $s3, $t8
	ldx.h	$s4, $s2, $fp
	stx.h	$s4, $s3, $fp
	ldx.h	$s2, $s2, $s0
	addi.d	$a1, $a1, 8
	stx.h	$s2, $s3, $s0
	bne	$a1, $s1, .LBB10_15
	b	.LBB10_26
.LBB10_16:
	ld.w	$t0, $t0, 20
	ori	$t2, $zero, 2
	beq	$t0, $t2, .LBB10_26
# %bb.17:                               # %.preheader284
	slli.w	$s0, $a1, 2
	slli.d	$a1, $s0, 3
	ldx.d	$a1, $t1, $a1
	slli.w	$s5, $a2, 2
	addi.d	$t3, $a1, 32
	slli.d	$a1, $s5, 3
	ldx.d	$t2, $t3, $a1
	ld.h	$a2, $t2, 0
	alsl.d	$t1, $s0, $t1, 3
	st.w	$a2, $sp, 72
	addi.d	$t0, $a1, 8
	ldx.d	$t4, $t3, $t0
	addi.d	$a2, $a1, 16
	ldx.d	$t5, $t3, $a2
	ld.h	$t2, $t2, 2
	ld.h	$t6, $t4, 0
	ld.h	$t4, $t4, 2
	ld.h	$t7, $t5, 0
	st.w	$t2, $sp, 136
	st.w	$t6, $sp, 76
	st.w	$t4, $sp, 140
	st.w	$t7, $sp, 80
	ld.d	$t4, $t1, 8
	addi.d	$t2, $a1, 24
	ldx.d	$t3, $t3, $t2
	ld.h	$t5, $t5, 2
	addi.d	$t4, $t4, 32
	ldx.d	$t6, $t4, $a1
	ld.h	$t7, $t3, 0
	ld.h	$t3, $t3, 2
	st.w	$t5, $sp, 144
	ld.h	$t5, $t6, 0
	st.w	$t7, $sp, 84
	st.w	$t3, $sp, 148
	ldx.d	$t3, $t4, $t0
	st.w	$t5, $sp, 88
	ld.h	$t5, $t6, 2
	ldx.d	$t6, $t4, $a2
	ld.h	$t7, $t3, 0
	ld.h	$t3, $t3, 2
	st.w	$t5, $sp, 152
	ld.h	$t5, $t6, 0
	st.w	$t7, $sp, 92
	st.w	$t3, $sp, 156
	ld.d	$t3, $t1, 16
	st.w	$t5, $sp, 96
	ldx.d	$t4, $t4, $t2
	ld.h	$t5, $t6, 2
	addi.d	$t3, $t3, 32
	ldx.d	$t6, $t3, $a1
	ld.h	$t7, $t4, 0
	st.w	$t5, $sp, 160
	ld.h	$t4, $t4, 2
	ld.h	$t5, $t6, 0
	st.w	$t7, $sp, 100
	ldx.d	$t7, $t3, $t0
	st.w	$t4, $sp, 164
	st.w	$t5, $sp, 104
	ld.h	$t4, $t6, 2
	ld.h	$t5, $t7, 0
	ldx.d	$t6, $t3, $a2
	ld.h	$t7, $t7, 2
	st.w	$t4, $sp, 168
	st.w	$t5, $sp, 108
	ld.h	$t4, $t6, 0
	st.w	$t7, $sp, 172
	ldx.d	$t3, $t3, $t2
	ld.d	$t1, $t1, 24
	st.w	$t4, $sp, 112
	ld.h	$t4, $t6, 2
	ld.h	$t5, $t3, 0
	addi.d	$t1, $t1, 32
	ldx.d	$t6, $t1, $a1
	st.w	$t4, $sp, 176
	st.w	$t5, $sp, 116
	ld.h	$t3, $t3, 2
	ld.h	$t4, $t6, 0
	ldx.d	$t0, $t1, $t0
	ld.h	$t5, $t6, 2
	st.w	$t3, $sp, 180
	st.w	$t4, $sp, 120
	ld.h	$t3, $t0, 0
	st.w	$t5, $sp, 184
	ld.h	$t0, $t0, 2
	ldx.d	$a2, $t1, $a2
	st.w	$t3, $sp, 124
	ldx.d	$t1, $t1, $t2
	st.w	$t0, $sp, 188
	ld.h	$t0, $a2, 0
	ld.h	$a2, $a2, 2
	ld.h	$t2, $t1, 0
	ld.h	$t1, $t1, 2
	st.w	$t0, $sp, 128
	st.w	$a2, $sp, 192
	st.w	$t2, $sp, 132
	st.w	$t1, $sp, 196
	beqz	$a7, .LBB10_31
# %bb.18:                               # %.preheader276
	move	$a1, $zero
	slli.d	$a2, $a5, 3
	ldx.d	$a2, $a3, $a2
	addi.d	$a5, $a0, 1
	addi.d	$a6, $a0, 2
	addi.d	$a7, $a0, 3
	addi.d	$t0, $a0, 4
	addi.d	$t1, $a0, 5
	addi.d	$t2, $a0, 6
	addi.d	$t3, $a0, 7
	addi.d	$t4, $a0, 8
	addi.d	$t5, $a0, 9
	addi.d	$t6, $a0, 10
	addi.d	$t7, $a0, 11
	addi.d	$t8, $a0, 12
	addi.d	$fp, $a0, 13
	addi.d	$s0, $a0, 14
	addi.d	$s1, $a0, 15
	alsl.d	$a2, $a4, $a2, 3
	alsl.d	$a3, $a4, $s7, 3
	slli.d	$a4, $a5, 1
	slli.d	$a5, $a6, 1
	slli.d	$a6, $a7, 1
	slli.d	$a7, $t0, 1
	slli.d	$t0, $t1, 1
	slli.d	$t1, $t2, 1
	slli.d	$t2, $t3, 1
	slli.d	$t3, $t4, 1
	slli.d	$t4, $t5, 1
	slli.d	$t5, $t6, 1
	slli.d	$t6, $t7, 1
	slli.d	$t7, $t8, 1
	slli.d	$t8, $fp, 1
	slli.d	$fp, $s0, 1
	slli.d	$s0, $s1, 1
	ori	$s1, $zero, 128
	.p2align	4, , 16
.LBB10_19:                              # %.preheader275
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$s2, $a2, $a1
	ldx.d	$s3, $a3, $a1
	slli.d	$s4, $a0, 1
	ldx.h	$s5, $s2, $s4
	stx.h	$s5, $s3, $s4
	ldx.h	$s4, $s2, $a4
	stx.h	$s4, $s3, $a4
	ldx.h	$s4, $s2, $a5
	stx.h	$s4, $s3, $a5
	ldx.h	$s4, $s2, $a6
	stx.h	$s4, $s3, $a6
	ldx.h	$s4, $s2, $a7
	stx.h	$s4, $s3, $a7
	ldx.h	$s4, $s2, $t0
	stx.h	$s4, $s3, $t0
	ldx.h	$s4, $s2, $t1
	stx.h	$s4, $s3, $t1
	ldx.h	$s4, $s2, $t2
	stx.h	$s4, $s3, $t2
	ldx.h	$s4, $s2, $t3
	stx.h	$s4, $s3, $t3
	ldx.h	$s4, $s2, $t4
	stx.h	$s4, $s3, $t4
	ldx.h	$s4, $s2, $t5
	stx.h	$s4, $s3, $t5
	ldx.h	$s4, $s2, $t6
	stx.h	$s4, $s3, $t6
	ldx.h	$s4, $s2, $t7
	stx.h	$s4, $s3, $t7
	ldx.h	$s4, $s2, $t8
	stx.h	$s4, $s3, $t8
	ldx.h	$s4, $s2, $fp
	stx.h	$s4, $s3, $fp
	ldx.h	$s2, $s2, $s0
	addi.d	$a1, $a1, 8
	stx.h	$s2, $s3, $s0
	bne	$a1, $s1, .LBB10_19
	b	.LBB10_26
.LBB10_20:
	ld.w	$a1, $t0, 20
	ori	$a2, $zero, 2
	beq	$a1, $a2, .LBB10_25
# %bb.21:
	bnez	$a6, .LBB10_26
# %bb.22:                               # %.preheader289
	move	$a1, $zero
	slli.d	$a2, $a5, 3
	ldx.d	$a2, $a3, $a2
	addi.d	$a5, $a0, 1
	addi.d	$a6, $a0, 2
	addi.d	$a7, $a0, 3
	addi.d	$t0, $a0, 4
	addi.d	$t1, $a0, 5
	addi.d	$t2, $a0, 6
	addi.d	$t3, $a0, 7
	addi.d	$t4, $a0, 8
	addi.d	$t5, $a0, 9
	addi.d	$t6, $a0, 10
	addi.d	$t7, $a0, 11
	addi.d	$t8, $a0, 12
	addi.d	$fp, $a0, 13
	addi.d	$s0, $a0, 14
	addi.d	$s1, $a0, 15
	alsl.d	$a2, $a4, $a2, 3
	alsl.d	$a3, $a4, $s7, 3
	slli.d	$a0, $a0, 1
	slli.d	$a4, $a5, 1
	slli.d	$a5, $a6, 1
	slli.d	$a6, $a7, 1
	slli.d	$a7, $t0, 1
	slli.d	$t0, $t1, 1
	slli.d	$t1, $t2, 1
	slli.d	$t2, $t3, 1
	slli.d	$t3, $t4, 1
	slli.d	$t4, $t5, 1
	slli.d	$t5, $t6, 1
	slli.d	$t6, $t7, 1
	slli.d	$t7, $t8, 1
	slli.d	$t8, $fp, 1
	slli.d	$fp, $s0, 1
	slli.d	$s0, $s1, 1
	ori	$s1, $zero, 128
	.p2align	4, , 16
.LBB10_23:                              # %.preheader288
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$s2, $a2, $a1
	ldx.d	$s3, $a3, $a1
	ldx.h	$s4, $s2, $a0
	stx.h	$s4, $s3, $a0
	ldx.h	$s4, $s2, $a4
	stx.h	$s4, $s3, $a4
	ldx.h	$s4, $s2, $a5
	stx.h	$s4, $s3, $a5
	ldx.h	$s4, $s2, $a6
	stx.h	$s4, $s3, $a6
	ldx.h	$s4, $s2, $a7
	stx.h	$s4, $s3, $a7
	ldx.h	$s4, $s2, $t0
	stx.h	$s4, $s3, $t0
	ldx.h	$s4, $s2, $t1
	stx.h	$s4, $s3, $t1
	ldx.h	$s4, $s2, $t2
	stx.h	$s4, $s3, $t2
	ldx.h	$s4, $s2, $t3
	stx.h	$s4, $s3, $t3
	ldx.h	$s4, $s2, $t4
	stx.h	$s4, $s3, $t4
	ldx.h	$s4, $s2, $t5
	stx.h	$s4, $s3, $t5
	ldx.h	$s4, $s2, $t6
	stx.h	$s4, $s3, $t6
	ldx.h	$s4, $s2, $t7
	stx.h	$s4, $s3, $t7
	ldx.h	$s4, $s2, $t8
	stx.h	$s4, $s3, $t8
	ldx.h	$s4, $s2, $fp
	stx.h	$s4, $s3, $fp
	ldx.h	$s2, $s2, $s0
	addi.d	$a1, $a1, 8
	stx.h	$s2, $s3, $s0
	bne	$a1, $s1, .LBB10_23
	b	.LBB10_26
.LBB10_24:                              # %.preheader274
	slli.w	$s0, $a1, 2
	slli.d	$a1, $s0, 3
	ldx.d	$a1, $t1, $a1
	slli.w	$s5, $a2, 2
	addi.d	$t4, $a1, 32
	slli.d	$a1, $s5, 3
	ldx.d	$a2, $t4, $a1
	addi.d	$t2, $a1, 8
	ldx.d	$t3, $t4, $t2
	ld.h	$t5, $a2, 0
	ld.h	$a2, $a2, 2
	ld.h	$t7, $t3, 0
	alsl.d	$t6, $s0, $t1, 3
	st.w	$t5, $sp, 72
	st.w	$a2, $sp, 136
	st.w	$t7, $sp, 76
	ld.h	$t5, $t3, 2
	addi.d	$a2, $a1, 16
	ldx.d	$t3, $t4, $a2
	addi.d	$t1, $a1, 24
	ldx.d	$t4, $t4, $t1
	ld.d	$t7, $t6, 8
	st.w	$t5, $sp, 140
	ld.h	$t8, $t3, 2
	ld.h	$fp, $t4, 2
	addi.d	$t7, $t7, 32
	ldx.d	$t5, $t7, $a1
	st.w	$t8, $sp, 144
	ldx.d	$t8, $t7, $t2
	st.w	$fp, $sp, 148
	ld.h	$fp, $t5, 2
	ldx.d	$s1, $t7, $a2
	ld.h	$s2, $t8, 0
	ld.h	$t8, $t8, 2
	st.w	$fp, $sp, 152
	ld.h	$fp, $s1, 0
	st.w	$s2, $sp, 92
	st.w	$t8, $sp, 156
	ld.d	$t8, $t6, 16
	st.w	$fp, $sp, 96
	ldx.d	$t7, $t7, $t1
	ld.h	$fp, $s1, 2
	addi.d	$t8, $t8, 32
	ldx.d	$s1, $t8, $a1
	ld.h	$s2, $t7, 0
	st.w	$fp, $sp, 160
	ld.h	$t7, $t7, 2
	ld.h	$fp, $s1, 0
	st.w	$s2, $sp, 100
	ldx.d	$s2, $t8, $t2
	st.w	$t7, $sp, 164
	st.w	$fp, $sp, 104
	ld.h	$t7, $s1, 2
	ld.h	$fp, $s2, 0
	ld.h	$s1, $s2, 2
	ldx.d	$s2, $t8, $a2
	st.w	$t7, $sp, 168
	st.w	$fp, $sp, 108
	st.w	$s1, $sp, 172
	ld.h	$t7, $s2, 0
	ldx.d	$t8, $t8, $t1
	ld.h	$fp, $s2, 2
	ld.d	$t6, $t6, 24
	st.w	$t7, $sp, 112
	ld.h	$t7, $t8, 0
	st.w	$fp, $sp, 176
	addi.d	$t6, $t6, 32
	ldx.d	$fp, $t6, $a1
	st.w	$t7, $sp, 116
	ldx.d	$t2, $t6, $t2
	ld.h	$t7, $t8, 2
	ld.h	$t8, $fp, 0
	ld.h	$fp, $fp, 2
	ld.h	$s1, $t2, 0
	st.w	$t7, $sp, 180
	st.w	$t8, $sp, 120
	st.w	$fp, $sp, 184
	st.w	$s1, $sp, 124
	ld.h	$t3, $t3, 0
	ld.h	$t4, $t4, 0
	ld.h	$t2, $t2, 2
	ldx.d	$a2, $t6, $a2
	ld.h	$t5, $t5, 0
	ldx.d	$t1, $t6, $t1
	st.w	$t2, $sp, 188
	ld.h	$t2, $a2, 0
	ld.h	$a2, $a2, 2
	ld.h	$t6, $t1, 0
	ld.h	$t1, $t1, 2
	st.w	$t2, $sp, 128
	st.w	$a2, $sp, 192
	st.w	$t6, $sp, 132
	st.w	$t1, $sp, 196
	ld.w	$a2, $t0, 20
	st.w	$t3, $sp, 80
	st.w	$t4, $sp, 84
	ori	$t0, $zero, 2
	st.w	$t5, $sp, 88
	bne	$a2, $t0, .LBB10_27
.LBB10_25:                              # %.preheader285
	alsl.d	$a2, $a4, $s7, 3
	slli.d	$a1, $a4, 3
	ldx.d	$a3, $s7, $a1
	slli.d	$a1, $a0, 1
	vrepli.h	$vr0, 127
	ld.d	$a4, $a2, 8
	vstx	$vr0, $a3, $a1
	alsl.d	$a3, $a0, $a3, 1
	vst	$vr0, $a3, 16
	vstx	$vr0, $a4, $a1
	ld.d	$a3, $a2, 16
	alsl.d	$a4, $a0, $a4, 1
	vst	$vr0, $a4, 16
	ld.d	$a4, $a2, 24
	vstx	$vr0, $a3, $a1
	alsl.d	$a3, $a0, $a3, 1
	vst	$vr0, $a3, 16
	vstx	$vr0, $a4, $a1
	ld.d	$a3, $a2, 32
	alsl.d	$a4, $a0, $a4, 1
	vst	$vr0, $a4, 16
	ld.d	$a4, $a2, 40
	vstx	$vr0, $a3, $a1
	alsl.d	$a3, $a0, $a3, 1
	vst	$vr0, $a3, 16
	vstx	$vr0, $a4, $a1
	ld.d	$a3, $a2, 48
	alsl.d	$a4, $a0, $a4, 1
	vst	$vr0, $a4, 16
	ld.d	$a4, $a2, 56
	vstx	$vr0, $a3, $a1
	alsl.d	$a3, $a0, $a3, 1
	vst	$vr0, $a3, 16
	vstx	$vr0, $a4, $a1
	ld.d	$a3, $a2, 64
	alsl.d	$a4, $a0, $a4, 1
	vst	$vr0, $a4, 16
	ld.d	$a4, $a2, 72
	vstx	$vr0, $a3, $a1
	alsl.d	$a3, $a0, $a3, 1
	vst	$vr0, $a3, 16
	vstx	$vr0, $a4, $a1
	ld.d	$a3, $a2, 80
	alsl.d	$a4, $a0, $a4, 1
	vst	$vr0, $a4, 16
	ld.d	$a4, $a2, 88
	vstx	$vr0, $a3, $a1
	alsl.d	$a3, $a0, $a3, 1
	vst	$vr0, $a3, 16
	vstx	$vr0, $a4, $a1
	ld.d	$a3, $a2, 96
	alsl.d	$a4, $a0, $a4, 1
	vst	$vr0, $a4, 16
	ld.d	$a4, $a2, 104
	vstx	$vr0, $a3, $a1
	alsl.d	$a3, $a0, $a3, 1
	vst	$vr0, $a3, 16
	vstx	$vr0, $a4, $a1
	ld.d	$a3, $a2, 112
	alsl.d	$a4, $a0, $a4, 1
	vst	$vr0, $a4, 16
	ld.d	$a2, $a2, 120
	alsl.d	$a4, $a0, $a3, 1
	vstx	$vr0, $a3, $a1
	vst	$vr0, $a4, 16
	alsl.d	$a0, $a0, $a2, 1
	vstx	$vr0, $a2, $a1
	vst	$vr0, $a0, 16
.LBB10_26:                              # %.loopexit
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.LBB10_27:
	alsl.d	$s3, $a5, $a3, 3
	beqz	$a7, .LBB10_36
# %bb.28:                               # %.preheader263
	move	$a1, $zero
	ld.d	$a2, $s3, 0
	addi.d	$a5, $a0, 1
	addi.d	$a6, $a0, 2
	addi.d	$a7, $a0, 3
	addi.d	$t0, $a0, 4
	addi.d	$t1, $a0, 5
	addi.d	$t2, $a0, 6
	addi.d	$t3, $a0, 7
	addi.d	$t4, $a0, 8
	addi.d	$t5, $a0, 9
	addi.d	$t6, $a0, 10
	addi.d	$t7, $a0, 11
	addi.d	$t8, $a0, 12
	addi.d	$fp, $a0, 13
	addi.d	$s0, $a0, 14
	addi.d	$s1, $a0, 15
	alsl.d	$a2, $a4, $a2, 3
	alsl.d	$a3, $a4, $s7, 3
	slli.d	$a0, $a0, 1
	slli.d	$a4, $a5, 1
	slli.d	$a5, $a6, 1
	slli.d	$a6, $a7, 1
	slli.d	$a7, $t0, 1
	slli.d	$t0, $t1, 1
	slli.d	$t1, $t2, 1
	slli.d	$t2, $t3, 1
	slli.d	$t3, $t4, 1
	slli.d	$t4, $t5, 1
	slli.d	$t5, $t6, 1
	slli.d	$t6, $t7, 1
	slli.d	$t7, $t8, 1
	slli.d	$t8, $fp, 1
	slli.d	$fp, $s0, 1
	slli.d	$s0, $s1, 1
	ori	$s1, $zero, 128
	.p2align	4, , 16
.LBB10_29:                              # %.preheader262
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$s2, $a2, $a1
	ldx.d	$s3, $a3, $a1
	ldx.h	$s4, $s2, $a0
	stx.h	$s4, $s3, $a0
	ldx.h	$s4, $s2, $a4
	stx.h	$s4, $s3, $a4
	ldx.h	$s4, $s2, $a5
	stx.h	$s4, $s3, $a5
	ldx.h	$s4, $s2, $a6
	stx.h	$s4, $s3, $a6
	ldx.h	$s4, $s2, $a7
	stx.h	$s4, $s3, $a7
	ldx.h	$s4, $s2, $t0
	stx.h	$s4, $s3, $t0
	ldx.h	$s4, $s2, $t1
	stx.h	$s4, $s3, $t1
	ldx.h	$s4, $s2, $t2
	stx.h	$s4, $s3, $t2
	ldx.h	$s4, $s2, $t3
	stx.h	$s4, $s3, $t3
	ldx.h	$s4, $s2, $t4
	stx.h	$s4, $s3, $t4
	ldx.h	$s4, $s2, $t5
	stx.h	$s4, $s3, $t5
	ldx.h	$s4, $s2, $t6
	stx.h	$s4, $s3, $t6
	ldx.h	$s4, $s2, $t7
	stx.h	$s4, $s3, $t7
	ldx.h	$s4, $s2, $t8
	stx.h	$s4, $s3, $t8
	ldx.h	$s4, $s2, $fp
	stx.h	$s4, $s3, $fp
	ldx.h	$s2, $s2, $s0
	addi.d	$a1, $a1, 8
	stx.h	$s2, $s3, $s0
	bne	$a1, $s1, .LBB10_29
	b	.LBB10_26
.LBB10_30:
	move	$a6, $zero
	ori	$a7, $zero, 1
	b	.LBB10_11
.LBB10_31:
	beqz	$a6, .LBB10_26
# %bb.32:
	ld.d	$a0, $s4, 0
	addi.d	$s2, $sp, 136
	alsl.d	$s4, $a5, $a3, 3
	addi.w	$a2, $s0, 4
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a5, $a0, 32
	addi.d	$a0, $s7, 8
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s7, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s7, 24
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $a1, 6
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB10_33:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_34 Depth 2
	move	$s6, $zero
	slli.d	$a0, $s0, 5
	add.d	$s7, $s7, $a0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.d	$s8, $a1, $a0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	add.d	$fp, $a1, $a0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$s3, $a1, $a0
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB10_34:                              # %.preheader278
                                        #   Parent Loop BB10_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s4, 0
	ld.w	$a3, $s2, -64
	ld.w	$a4, $s2, 0
	add.w	$a2, $s5, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(Get_Reference_Block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a5, $a0, 32
	ld.d	$a0, $a5, 0
	ld.d	$a1, $s7, 0
	ld.h	$a2, $a0, 0
	add.d	$a3, $a1, $s1
	st.h	$a2, $a3, -6
	ld.h	$a2, $a0, 2
	st.h	$a2, $a3, -4
	ld.h	$a2, $a0, 4
	st.h	$a2, $a3, -2
	ld.h	$a0, $a0, 6
	ld.d	$a2, $a5, 8
	stx.h	$a0, $a1, $s1
	ld.d	$a0, $s8, 0
	ld.h	$a1, $a2, 0
	add.d	$a3, $a0, $s1
	st.h	$a1, $a3, -6
	ld.h	$a1, $a2, 2
	st.h	$a1, $a3, -4
	ld.h	$a1, $a2, 4
	st.h	$a1, $a3, -2
	ld.h	$a1, $a2, 6
	ld.d	$a2, $a5, 16
	stx.h	$a1, $a0, $s1
	ld.d	$a0, $fp, 0
	ld.h	$a1, $a2, 0
	add.d	$a3, $a0, $s1
	st.h	$a1, $a3, -6
	ld.h	$a1, $a2, 2
	st.h	$a1, $a3, -4
	ld.h	$a1, $a2, 4
	st.h	$a1, $a3, -2
	ld.h	$a1, $a2, 6
	ld.d	$a2, $a5, 24
	stx.h	$a1, $a0, $s1
	ld.d	$a0, $s3, 0
	ld.h	$a1, $a2, 0
	add.d	$a3, $a0, $s1
	st.h	$a1, $a3, -6
	ld.h	$a1, $a2, 2
	st.h	$a1, $a3, -4
	ld.h	$a1, $a2, 4
	st.h	$a1, $a3, -2
	ld.h	$a1, $a2, 6
	ori	$a2, $zero, 4
	stx.h	$a1, $a0, $s1
	addi.w	$s6, $s6, 1
	addi.d	$s2, $s2, 4
	addi.d	$s1, $s1, 8
	bne	$s6, $a2, .LBB10_34
# %bb.35:                               #   in Loop: Header=BB10_33 Depth=1
	addi.d	$s0, $s0, 1
	addi.w	$a0, $s0, 0
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	addi.d	$s2, $s2, 16
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB10_33
	b	.LBB10_26
.LBB10_36:
	beqz	$a6, .LBB10_41
# %bb.37:
	ld.d	$a0, $s4, 0
	addi.d	$s2, $sp, 136
	addi.w	$a2, $s0, 4
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a5, $a0, 32
	addi.d	$a0, $s7, 8
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s7, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s7, 24
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $a1, 6
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB10_38:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_39 Depth 2
	move	$s6, $zero
	slli.d	$a0, $s0, 5
	add.d	$s7, $s7, $a0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.d	$s8, $a1, $a0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	add.d	$fp, $a1, $a0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$s4, $a1, $a0
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB10_39:                              # %.preheader265
                                        #   Parent Loop BB10_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 0
	ld.w	$a3, $s2, -64
	ld.w	$a4, $s2, 0
	add.w	$a2, $s5, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(Get_Reference_Block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a5, $a0, 32
	ld.d	$a0, $a5, 0
	ld.d	$a1, $s7, 0
	ld.h	$a2, $a0, 0
	add.d	$a3, $a1, $s1
	st.h	$a2, $a3, -6
	ld.h	$a2, $a0, 2
	st.h	$a2, $a3, -4
	ld.h	$a2, $a0, 4
	st.h	$a2, $a3, -2
	ld.h	$a0, $a0, 6
	ld.d	$a2, $a5, 8
	stx.h	$a0, $a1, $s1
	ld.d	$a0, $s8, 0
	ld.h	$a1, $a2, 0
	add.d	$a3, $a0, $s1
	st.h	$a1, $a3, -6
	ld.h	$a1, $a2, 2
	st.h	$a1, $a3, -4
	ld.h	$a1, $a2, 4
	st.h	$a1, $a3, -2
	ld.h	$a1, $a2, 6
	ld.d	$a2, $a5, 16
	stx.h	$a1, $a0, $s1
	ld.d	$a0, $fp, 0
	ld.h	$a1, $a2, 0
	add.d	$a3, $a0, $s1
	st.h	$a1, $a3, -6
	ld.h	$a1, $a2, 2
	st.h	$a1, $a3, -4
	ld.h	$a1, $a2, 4
	st.h	$a1, $a3, -2
	ld.h	$a1, $a2, 6
	ld.d	$a2, $a5, 24
	stx.h	$a1, $a0, $s1
	ld.d	$a0, $s4, 0
	ld.h	$a1, $a2, 0
	add.d	$a3, $a0, $s1
	st.h	$a1, $a3, -6
	ld.h	$a1, $a2, 2
	st.h	$a1, $a3, -4
	ld.h	$a1, $a2, 4
	st.h	$a1, $a3, -2
	ld.h	$a1, $a2, 6
	ori	$a2, $zero, 4
	stx.h	$a1, $a0, $s1
	addi.w	$s6, $s6, 1
	addi.d	$s2, $s2, 4
	addi.d	$s1, $s1, 8
	bne	$s6, $a2, .LBB10_39
# %bb.40:                               #   in Loop: Header=BB10_38 Depth=1
	addi.d	$s0, $s0, 1
	addi.w	$a0, $s0, 0
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	addi.d	$s2, $s2, 16
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB10_38
	b	.LBB10_26
.LBB10_41:                              # %.preheader268
	move	$a1, $zero
	ld.d	$a2, $s3, 0
	addi.d	$a5, $a0, 1
	addi.d	$a6, $a0, 2
	addi.d	$a7, $a0, 3
	addi.d	$t0, $a0, 4
	addi.d	$t1, $a0, 5
	addi.d	$t2, $a0, 6
	addi.d	$t3, $a0, 7
	addi.d	$t4, $a0, 8
	addi.d	$t5, $a0, 9
	addi.d	$t6, $a0, 10
	addi.d	$t7, $a0, 11
	addi.d	$t8, $a0, 12
	addi.d	$fp, $a0, 13
	addi.d	$s0, $a0, 14
	addi.d	$s1, $a0, 15
	alsl.d	$a2, $a4, $a2, 3
	alsl.d	$a3, $a4, $s7, 3
	slli.d	$a0, $a0, 1
	slli.d	$a4, $a5, 1
	slli.d	$a5, $a6, 1
	slli.d	$a6, $a7, 1
	slli.d	$a7, $t0, 1
	slli.d	$t0, $t1, 1
	slli.d	$t1, $t2, 1
	slli.d	$t2, $t3, 1
	slli.d	$t3, $t4, 1
	slli.d	$t4, $t5, 1
	slli.d	$t5, $t6, 1
	slli.d	$t6, $t7, 1
	slli.d	$t7, $t8, 1
	slli.d	$t8, $fp, 1
	slli.d	$fp, $s0, 1
	slli.d	$s0, $s1, 1
	ori	$s1, $zero, 128
	.p2align	4, , 16
.LBB10_42:                              # %.preheader267
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$s2, $a2, $a1
	ldx.d	$s3, $a3, $a1
	ldx.h	$s4, $s2, $a0
	stx.h	$s4, $s3, $a0
	ldx.h	$s4, $s2, $a4
	stx.h	$s4, $s3, $a4
	ldx.h	$s4, $s2, $a5
	stx.h	$s4, $s3, $a5
	ldx.h	$s4, $s2, $a6
	stx.h	$s4, $s3, $a6
	ldx.h	$s4, $s2, $a7
	stx.h	$s4, $s3, $a7
	ldx.h	$s4, $s2, $t0
	stx.h	$s4, $s3, $t0
	ldx.h	$s4, $s2, $t1
	stx.h	$s4, $s3, $t1
	ldx.h	$s4, $s2, $t2
	stx.h	$s4, $s3, $t2
	ldx.h	$s4, $s2, $t3
	stx.h	$s4, $s3, $t3
	ldx.h	$s4, $s2, $t4
	stx.h	$s4, $s3, $t4
	ldx.h	$s4, $s2, $t5
	stx.h	$s4, $s3, $t5
	ldx.h	$s4, $s2, $t6
	stx.h	$s4, $s3, $t6
	ldx.h	$s4, $s2, $t7
	stx.h	$s4, $s3, $t7
	ldx.h	$s4, $s2, $t8
	stx.h	$s4, $s3, $t8
	ldx.h	$s4, $s2, $fp
	stx.h	$s4, $s3, $fp
	ldx.h	$s2, $s2, $s0
	addi.d	$a1, $a1, 8
	stx.h	$s2, $s3, $s0
	bne	$a1, $s1, .LBB10_42
	b	.LBB10_26
.Lfunc_end10:
	.size	Conceal_Error, .Lfunc_end10-Conceal_Error
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI10_0:
	.word	.LBB10_13-.LJTI10_0
	.word	.LBB10_20-.LJTI10_0
	.word	.LBB10_16-.LJTI10_0
	.word	.LBB10_26-.LJTI10_0
	.word	.LBB10_24-.LJTI10_0
                                        # -- End function
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
	.type	start_me_refinement_hp,@object  # @start_me_refinement_hp
	.comm	start_me_refinement_hp,4,4
	.type	start_me_refinement_qp,@object  # @start_me_refinement_qp
	.comm	start_me_refinement_qp,4,4
	.type	height_pad,@object              # @height_pad
	.comm	height_pad,4,4
	.type	width_pad,@object               # @width_pad
	.comm	width_pad,4,4
	.type	height_pad_cr,@object           # @height_pad_cr
	.comm	height_pad_cr,4,4
	.type	width_pad_cr,@object            # @width_pad_cr
	.comm	width_pad_cr,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
