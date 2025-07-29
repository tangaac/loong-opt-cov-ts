	.file	"jidctint.c"
	.text
	.globl	jpeg_idct_islow                 # -- Begin function jpeg_idct_islow
	.p2align	5
	.type	jpeg_idct_islow,@function
jpeg_idct_islow:                        # @jpeg_idct_islow
# %bb.0:
	addi.d	$sp, $sp, -384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	st.d	$s2, $sp, 344                   # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	st.d	$s4, $sp, 328                   # 8-byte Folded Spill
	st.d	$s5, $sp, 320                   # 8-byte Folded Spill
	st.d	$s6, $sp, 312                   # 8-byte Folded Spill
	st.d	$s7, $sp, 304                   # 8-byte Folded Spill
	st.d	$s8, $sp, 296                   # 8-byte Folded Spill
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	move	$t7, $zero
	ld.d	$a0, $a0, 408
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$t8, $a1, 88
	ori	$fp, $zero, 9
	addi.d	$s0, $sp, 40
	lu12i.w	$a6, 1
	ori	$a5, $a6, 337
	lu12i.w	$a0, -4
	ori	$a0, $a0, 1247
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$a0, $a6, 2174
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a7, 2
	ori	$a7, $a7, 1441
	lu12i.w	$t0, 4
	ori	$t0, $t0, 435
	lu12i.w	$t1, 6
	ori	$t1, $t1, 596
	lu12i.w	$t2, 3
	ori	$t2, $t2, 11
	lu12i.w	$t3, -2
	ori	$t3, $t3, 819
	lu12i.w	$t4, -6
	ori	$t4, $t4, 3581
	lu12i.w	$t5, -1
	ori	$t5, $t5, 900
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_1:                                #   in Loop: Header=BB0_3 Depth=1
	add.d	$a4, $t8, $t7
	ld.w	$s2, $a4, 64
	ld.w	$a1, $a4, 192
	mul.w	$s2, $s2, $s5
	mul.w	$a1, $a1, $s7
	add.d	$s5, $a1, $s2
	mul.d	$s5, $s5, $a5
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	mul.d	$a1, $a1, $a0
	add.d	$a1, $s5, $a1
	ld.h	$s7, $a2, 0
	ldx.w	$s1, $t8, $t7
	ld.w	$a0, $a4, 128
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	mul.d	$s2, $s2, $a6
	add.d	$s2, $s5, $s2
	mul.w	$s1, $s1, $s7
	mul.w	$a0, $a0, $s4
	add.d	$s4, $a0, $s1
	slli.d	$s4, $s4, 13
	sub.d	$a0, $s1, $a0
	slli.d	$a0, $a0, 13
	add.d	$s1, $s4, $s2
	sub.d	$s4, $s4, $s2
	add.d	$s7, $a0, $a1
	sub.d	$s5, $a0, $a1
	ld.w	$a0, $a4, 224
	ld.w	$a1, $a4, 160
	ld.w	$s2, $a4, 96
	ld.w	$a4, $a4, 32
	mul.w	$a0, $a0, $t6
	mul.w	$a1, $a1, $ra
	mul.w	$t6, $s2, $s8
	mul.w	$a4, $a4, $s6
	add.d	$s2, $t6, $a0
	add.d	$s6, $a4, $a1
	lu12i.w	$a6, -4
	ori	$s8, $a6, 315
	mul.d	$s8, $s2, $s8
	add.d	$s2, $s6, $s2
	mul.d	$s2, $s2, $a7
	mul.d	$s6, $s6, $t5
	add.d	$s8, $s2, $s8
	add.d	$s2, $s2, $s6
	add.d	$s6, $t6, $a1
	mul.d	$a1, $a1, $t0
	mul.d	$t6, $t6, $t1
	mul.d	$s6, $s6, $t4
	add.d	$a1, $s6, $a1
	add.d	$t6, $s6, $t6
	add.d	$s6, $a4, $a0
	ori	$a6, $zero, 2446
	mul.d	$a0, $a0, $a6
	mul.d	$s6, $s6, $t3
	add.d	$a0, $s6, $a0
	add.d	$a0, $a0, $s8
	add.d	$t6, $t6, $s8
	mul.d	$a4, $a4, $t2
	add.d	$a4, $s6, $a4
	add.d	$a1, $a1, $s2
	add.d	$a4, $a4, $s2
	addi.d	$s1, $s1, 1024
	add.d	$s2, $s1, $a4
	srli.d	$s2, $s2, 11
	stx.w	$s2, $t7, $s0
	sub.d	$a4, $s1, $a4
	addi.d	$s1, $s7, 1024
	add.d	$s2, $s1, $t6
	srli.d	$s2, $s2, 11
	st.w	$s2, $s3, 32
	sub.d	$t6, $s1, $t6
	addi.d	$s1, $s5, 1024
	add.d	$s2, $s1, $a1
	srli.d	$s2, $s2, 11
	st.w	$s2, $s3, 64
	sub.d	$a1, $s1, $a1
	srli.d	$a1, $a1, 11
	st.w	$a1, $s3, 160
	addi.d	$a1, $s4, 1024
	add.d	$s1, $a1, $a0
	srli.d	$s1, $s1, 11
	st.w	$s1, $s3, 96
	srli.d	$s4, $a4, 11
	srli.d	$s5, $t6, 11
	sub.d	$a0, $a1, $a0
	srli.d	$t6, $a0, 11
	ori	$s6, $zero, 128
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	stx.w	$t6, $s3, $s6
	st.w	$s5, $s3, 192
	st.w	$s4, $s3, 224
	addi.d	$a2, $a2, 2
	addi.w	$fp, $fp, -1
	addi.d	$t7, $t7, 4
	ori	$a0, $zero, 1
	bgeu	$a0, $fp, .LBB0_5
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	ld.h	$s6, $a2, 16
	ld.h	$s5, $a2, 32
	ld.h	$s8, $a2, 48
	or	$t6, $s5, $s6
	or	$s3, $t6, $s8
	ld.h	$s4, $a2, 64
	ld.h	$ra, $a2, 80
	ld.h	$s7, $a2, 96
	ld.h	$t6, $a2, 112
	or	$s3, $s3, $s4
	or	$s3, $s3, $ra
	or	$s3, $s3, $s7
	or	$s3, $s3, $t6
	slli.d	$a4, $s3, 48
	add.d	$s3, $s0, $t7
	bnez	$a4, .LBB0_1
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	ld.h	$a4, $a2, 0
	ldx.w	$t6, $t8, $t7
	mul.d	$a4, $a4, $t6
	slli.d	$t6, $a4, 2
	stx.w	$t6, $t7, $s0
	st.w	$t6, $s3, 32
	st.w	$t6, $s3, 64
	st.w	$t6, $s3, 96
	st.w	$t6, $s3, 128
	ori	$s6, $zero, 160
	move	$s5, $t6
	move	$s4, $t6
	b	.LBB0_2
.LBB0_5:                                # %.preheader
	move	$a2, $zero
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	addi.d	$t6, $a0, 128
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bstrpick.d	$a4, $a0, 31, 0
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	add.d	$a0, $s6, $s5
	mul.d	$a0, $a0, $a5
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	mul.d	$a1, $s6, $a1
	ld.w	$ra, $s4, 0
	add.d	$s6, $a0, $a1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	mul.d	$a1, $s5, $a1
	add.d	$s4, $a0, $a1
	add.d	$a0, $ra, $s8
	slli.d	$s5, $a0, 13
	sub.d	$a0, $ra, $s8
	add.d	$a1, $s5, $s4
	add.d	$s8, $s1, $s7
	add.d	$ra, $s1, $s3
	add.d	$fp, $s2, $s7
	add.d	$t7, $ra, $fp
	mul.d	$t7, $t7, $a7
	mul.d	$t8, $s7, $t2
	mul.d	$s7, $s8, $t3
	mul.d	$fp, $fp, $t5
	add.d	$fp, $t7, $fp
	add.d	$t8, $s7, $t8
	add.d	$t8, $t8, $fp
	add.d	$s8, $t8, $a1
	addu16i.d	$s8, $s8, 2
	bstrpick.d	$s8, $s8, 27, 18
	ldx.b	$s8, $t6, $s8
	move	$a6, $a5
	lu12i.w	$a5, -4
	ori	$a5, $a5, 315
	mul.d	$a5, $ra, $a5
	slli.d	$a0, $a0, 13
	st.b	$s8, $s0, 0
	add.d	$s8, $a0, $s6
	sub.d	$a1, $a1, $t8
	add.d	$t8, $s2, $s3
	mul.d	$s3, $s3, $t1
	mul.d	$t8, $t8, $t4
	addu16i.d	$a1, $a1, 2
	bstrpick.d	$a1, $a1, 27, 18
	ldx.b	$a1, $t6, $a1
	add.d	$a5, $t7, $a5
	add.d	$t7, $t8, $s3
	add.d	$t7, $t7, $a5
	st.b	$a1, $s0, 7
	add.d	$a1, $t7, $s8
	addu16i.d	$a1, $a1, 2
	bstrpick.d	$a1, $a1, 27, 18
	ldx.b	$a1, $t6, $a1
	sub.d	$a0, $a0, $s6
	st.b	$a1, $s0, 1
	sub.d	$a1, $s8, $t7
	addu16i.d	$a1, $a1, 2
	bstrpick.d	$a1, $a1, 27, 18
	ldx.b	$a1, $t6, $a1
	mul.d	$t7, $s2, $t0
	add.d	$t7, $t8, $t7
	add.d	$t7, $t7, $fp
	st.b	$a1, $s0, 6
	add.d	$a1, $t7, $a0
	addu16i.d	$a1, $a1, 2
	bstrpick.d	$a1, $a1, 27, 18
	ldx.b	$a1, $t6, $a1
	sub.d	$t8, $s5, $s4
	st.b	$a1, $s0, 2
	sub.d	$a0, $a0, $t7
	addu16i.d	$a0, $a0, 2
	bstrpick.d	$a0, $a0, 27, 18
	ldx.b	$a0, $t6, $a0
	ori	$a1, $zero, 2446
	mul.d	$a1, $s1, $a1
	add.d	$a1, $s7, $a1
	add.d	$a1, $a1, $a5
	move	$a5, $a6
	st.b	$a0, $s0, 5
	add.d	$a0, $a1, $t8
	addu16i.d	$a0, $a0, 2
	bstrpick.d	$a0, $a0, 27, 18
	ldx.b	$a0, $t6, $a0
	st.b	$a0, $s0, 3
	sub.d	$a0, $t8, $a1
	addu16i.d	$a0, $a0, 2
	bstrpick.d	$a0, $a0, 27, 18
	ldx.bu	$s1, $t6, $a0
	ori	$s2, $zero, 4
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	stx.b	$s1, $s0, $s2
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 8
	ori	$a0, $zero, 256
	beq	$a2, $a0, .LBB0_10
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 40
	add.d	$s4, $a0, $a2
	ld.wu	$s7, $s4, 4
	ld.wu	$s5, $s4, 8
	ld.wu	$s3, $s4, 12
	ld.d	$a0, $a3, 0
	or	$a1, $s5, $s7
	or	$a1, $a1, $s3
	ld.w	$s8, $s4, 16
	ld.wu	$s2, $s4, 20
	ld.wu	$s6, $s4, 24
	ld.wu	$s1, $s4, 28
	or	$a1, $a1, $s8
	or	$a1, $a1, $s2
	or	$a1, $a1, $s6
	or	$a1, $a1, $s1
	addi.w	$a1, $a1, 0
	add.d	$s0, $a0, $a4
	bnez	$a1, .LBB0_6
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a0, $s4, 0
	addi.d	$a0, $a0, 16
	bstrpick.d	$a0, $a0, 14, 5
	ldx.bu	$s1, $t6, $a0
	st.b	$s1, $s0, 0
	st.b	$s1, $s0, 1
	st.b	$s1, $s0, 2
	st.b	$s1, $s0, 3
	st.b	$s1, $s0, 4
	st.b	$s1, $s0, 5
	st.b	$s1, $s0, 6
	ori	$s2, $zero, 7
	b	.LBB0_7
.LBB0_10:
	ld.d	$s8, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
	ret
.Lfunc_end0:
	.size	jpeg_idct_islow, .Lfunc_end0-jpeg_idct_islow
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
