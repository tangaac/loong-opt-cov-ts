	.file	"jidctfst.c"
	.text
	.globl	jpeg_idct_ifast                 # -- Begin function jpeg_idct_ifast
	.p2align	5
	.type	jpeg_idct_ifast,@function
jpeg_idct_ifast:                        # @jpeg_idct_ifast
# %bb.0:
	addi.d	$sp, $sp, -336
	st.d	$fp, $sp, 328                   # 8-byte Folded Spill
	st.d	$s0, $sp, 320                   # 8-byte Folded Spill
	st.d	$s1, $sp, 312                   # 8-byte Folded Spill
	st.d	$s2, $sp, 304                   # 8-byte Folded Spill
	st.d	$s3, $sp, 296                   # 8-byte Folded Spill
	st.d	$s4, $sp, 288                   # 8-byte Folded Spill
	st.d	$s5, $sp, 280                   # 8-byte Folded Spill
	st.d	$s6, $sp, 272                   # 8-byte Folded Spill
	st.d	$s7, $sp, 264                   # 8-byte Folded Spill
	move	$a6, $zero
	ld.d	$a5, $a0, 408
	ld.d	$a1, $a1, 88
	addi.d	$a2, $a2, 64
	ori	$a7, $zero, 9
	addi.d	$t0, $sp, 8
	ori	$t1, $zero, 1
	ori	$t2, $zero, 362
	ori	$t3, $zero, 473
	ori	$t4, $zero, 277
	addi.w	$a0, $zero, -669
	lu32i.d	$a0, 255
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_1:                                #   in Loop: Header=BB0_3 Depth=1
	add.d	$s4, $a1, $a6
	ld.w	$s5, $s4, 64
	ld.w	$s6, $s4, 128
	ld.w	$s7, $s4, 192
	mul.d	$s1, $s5, $s1
	mul.d	$s2, $s6, $s2
	mul.d	$s3, $s7, $s3
	add.d	$s5, $s2, $s0
	sub.d	$s0, $s0, $s2
	add.d	$s2, $s3, $s1
	sub.w	$s1, $s1, $s3
	mul.d	$s1, $s1, $t2
	srli.d	$s1, $s1, 8
	sub.d	$s1, $s1, $s2
	add.d	$s3, $s2, $s5
	sub.d	$s2, $s5, $s2
	add.d	$s5, $s1, $s0
	sub.d	$s0, $s0, $s1
	ld.w	$s1, $s4, 32
	ld.w	$s6, $s4, 96
	ld.w	$s7, $s4, 160
	ld.w	$s4, $s4, 224
	mul.d	$t6, $s1, $t6
	mul.d	$t7, $s6, $t7
	mul.d	$t8, $s7, $t8
	mul.d	$fp, $s4, $fp
	add.d	$s1, $t8, $t7
	sub.w	$t7, $t8, $t7
	add.d	$t8, $fp, $t6
	sub.w	$t6, $t6, $fp
	add.d	$fp, $t8, $s1
	sub.w	$t8, $t8, $s1
	mul.d	$t8, $t8, $t2
	srli.d	$t8, $t8, 8
	add.w	$s1, $t6, $t7
	mul.d	$s1, $s1, $t3
	srli.d	$s1, $s1, 8
	mul.d	$t6, $t6, $t4
	srli.d	$t6, $t6, 8
	sub.d	$t6, $t6, $s1
	mul.d	$t7, $t7, $a0
	srli.d	$t7, $t7, 8
	sub.d	$t7, $t7, $fp
	add.d	$t7, $t7, $s1
	sub.d	$t8, $t8, $t7
	add.d	$s1, $t8, $t6
	add.d	$t6, $fp, $s3
	stx.w	$t6, $a6, $t0
	sub.d	$t6, $s3, $fp
	add.d	$fp, $t7, $s5
	st.w	$fp, $t5, 32
	sub.d	$t7, $s5, $t7
	add.d	$fp, $t8, $s0
	st.w	$fp, $t5, 64
	sub.d	$t8, $s0, $t8
	st.w	$t8, $t5, 160
	add.d	$t8, $s1, $s2
	st.w	$t8, $t5, 128
	sub.d	$s0, $s2, $s1
	ori	$t8, $zero, 96
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	stx.w	$s0, $t5, $t8
	st.w	$t7, $t5, 192
	st.w	$t6, $t5, 224
	addi.w	$a7, $a7, -1
	addi.d	$a6, $a6, 4
	addi.d	$a2, $a2, 2
	bgeu	$t1, $a7, .LBB0_5
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	ld.h	$t6, $a2, -48
	ld.h	$s1, $a2, -32
	ld.h	$t7, $a2, -16
	ld.h	$s2, $a2, 0
	or	$t5, $s1, $t6
	or	$t5, $t5, $t7
	or	$t5, $t5, $s2
	ld.h	$t8, $a2, 16
	ld.h	$s3, $a2, 32
	ld.h	$fp, $a2, 48
	ld.h	$s0, $a2, -64
	ldx.w	$s4, $a1, $a6
	or	$t5, $t5, $t8
	or	$t5, $t5, $s3
	or	$t5, $t5, $fp
	mul.d	$s0, $s4, $s0
	slli.d	$s4, $t5, 48
	add.d	$t5, $t0, $a6
	bnez	$s4, .LBB0_1
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	stx.w	$s0, $a6, $t0
	st.w	$s0, $t5, 32
	st.w	$s0, $t5, 64
	st.w	$s0, $t5, 96
	st.w	$s0, $t5, 128
	ori	$t8, $zero, 160
	move	$t7, $s0
	move	$t6, $s0
	b	.LBB0_2
.LBB0_5:                                # %.preheader
	move	$a1, $zero
	addi.d	$a2, $a5, 128
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a5, $sp, 8
	ori	$a6, $zero, 256
	ori	$a7, $zero, 362
	ori	$t0, $zero, 473
	ori	$t1, $zero, 277
	b	.LBB0_7
	.p2align	4, , 16
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	add.d	$t3, $s1, $t4
	sub.d	$s1, $s1, $t4
	add.d	$t4, $s0, $fp
	addi.w	$s2, $t4, 0
	sub.d	$fp, $fp, $s0
	bstrpick.d	$fp, $fp, 31, 0
	mul.d	$fp, $fp, $a7
	srli.d	$fp, $fp, 8
	sub.d	$fp, $fp, $s2
	add.d	$s0, $t3, $t4
	add.d	$s2, $s1, $fp
	add.d	$s3, $t7, $t6
	addi.w	$s4, $s3, 0
	add.d	$s5, $t8, $t5
	addi.w	$s6, $s5, 0
	add.d	$s4, $s6, $s4
	add.d	$s6, $s0, $s4
	bstrpick.d	$s6, $s6, 14, 5
	ldx.b	$s6, $a2, $s6
	sub.d	$fp, $s1, $fp
	sub.d	$t6, $t7, $t6
	sub.d	$t5, $t5, $t8
	st.b	$s6, $t2, 0
	add.d	$t7, $t5, $t6
	bstrpick.d	$t7, $t7, 31, 0
	mul.d	$t7, $t7, $t0
	srli.d	$t7, $t7, 8
	bstrpick.d	$t6, $t6, 31, 0
	mul.d	$t6, $t6, $a0
	sub.d	$t8, $s0, $s4
	bstrpick.d	$t8, $t8, 14, 5
	ldx.b	$t8, $a2, $t8
	srli.d	$t6, $t6, 8
	sub.d	$t6, $t6, $s4
	add.d	$t6, $t6, $t7
	st.b	$t8, $t2, 7
	add.d	$t8, $s2, $t6
	bstrpick.d	$t8, $t8, 14, 5
	ldx.b	$t8, $a2, $t8
	sub.d	$s0, $s5, $s3
	bstrpick.d	$s0, $s0, 31, 0
	mul.d	$s0, $s0, $a7
	st.b	$t8, $t2, 1
	sub.d	$t8, $s2, $t6
	bstrpick.d	$t8, $t8, 14, 5
	ldx.b	$t8, $a2, $t8
	srli.d	$s0, $s0, 8
	addi.w	$t6, $t6, 0
	sub.d	$t6, $s0, $t6
	st.b	$t8, $t2, 6
	add.d	$t8, $fp, $t6
	bstrpick.d	$t8, $t8, 14, 5
	ldx.b	$t8, $a2, $t8
	sub.d	$t3, $t3, $t4
	bstrpick.d	$t4, $t5, 31, 0
	mul.d	$t4, $t4, $t1
	st.b	$t8, $t2, 2
	sub.d	$t5, $fp, $t6
	bstrpick.d	$t5, $t5, 14, 5
	ldx.b	$t5, $a2, $t5
	srli.d	$t4, $t4, 8
	sub.d	$t4, $t4, $t7
	add.d	$t4, $t6, $t4
	st.b	$t5, $t2, 5
	add.d	$t5, $t3, $t4
	bstrpick.d	$t5, $t5, 14, 5
	ldx.b	$t5, $a2, $t5
	st.b	$t5, $t2, 4
	sub.d	$t3, $t3, $t4
	bstrpick.d	$t3, $t3, 14, 5
	ldx.bu	$t3, $a2, $t3
	ori	$t4, $zero, 3
	stx.b	$t3, $t2, $t4
	addi.d	$a1, $a1, 32
	addi.d	$a3, $a3, 8
	beq	$a1, $a6, .LBB0_9
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	add.d	$t2, $a5, $a1
	ld.w	$t5, $t2, 4
	ld.w	$fp, $t2, 8
	ld.w	$t6, $t2, 12
	ld.d	$t3, $a3, 0
	ld.w	$t4, $t2, 16
	or	$t7, $fp, $t5
	or	$t8, $t7, $t6
	ld.w	$t7, $t2, 20
	or	$s1, $t8, $t4
	ld.w	$s0, $t2, 24
	ld.w	$t8, $t2, 28
	or	$t2, $s1, $t7
	ldx.w	$s1, $a1, $a5
	or	$t2, $t2, $s0
	or	$s2, $t2, $t8
	add.d	$t2, $t3, $a4
	bnez	$s2, .LBB0_6
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	bstrpick.d	$t3, $s1, 14, 5
	ldx.bu	$t3, $a2, $t3
	st.b	$t3, $t2, 0
	st.b	$t3, $t2, 1
	st.b	$t3, $t2, 2
	st.b	$t3, $t2, 3
	st.b	$t3, $t2, 4
	st.b	$t3, $t2, 5
	st.b	$t3, $t2, 6
	ori	$t4, $zero, 7
	stx.b	$t3, $t2, $t4
	addi.d	$a1, $a1, 32
	addi.d	$a3, $a3, 8
	bne	$a1, $a6, .LBB0_7
.LBB0_9:
	ld.d	$s7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.Lfunc_end0:
	.size	jpeg_idct_ifast, .Lfunc_end0-jpeg_idct_ifast
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
