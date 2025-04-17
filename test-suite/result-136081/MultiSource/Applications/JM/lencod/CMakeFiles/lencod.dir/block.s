	.file	"block.c"
	.text
	.globl	intrapred_luma                  # -- Begin function intrapred_luma
	.p2align	5
	.type	intrapred_luma,@function
intrapred_luma:                         # @intrapred_luma
# %bb.0:
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a5, %got_pc_hi20(enc_picture)
	ld.d	$a5, $a5, %got_pc_lo12(enc_picture)
	pcalau12i	$a6, %got_pc_hi20(img)
	ld.d	$s7, $a6, %got_pc_lo12(img)
	ld.d	$a5, $a5, 0
	ld.d	$a6, $s7, 0
	st.d	$a4, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	ldptr.d	$s8, $a5, 6440
	ld.w	$s4, $a6, 12
	pcalau12i	$fp, %pc_hi20(getNeighbour)
	ld.d	$a5, $fp, %pc_lo12(getNeighbour)
	andi	$s3, $a0, 15
	andi	$s6, $a1, 15
	addi.d	$s5, $s3, -1
	addi.d	$a4, $sp, 88
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $s6
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $fp, %pc_lo12(getNeighbour)
	addi.d	$a2, $s6, 1
	addi.d	$a4, $sp, 112
	move	$a0, $s4
	move	$a1, $s5
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $fp, %pc_lo12(getNeighbour)
	addi.d	$a2, $s6, 2
	addi.d	$a4, $sp, 136
	move	$a0, $s4
	move	$a1, $s5
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $fp, %pc_lo12(getNeighbour)
	addi.d	$a2, $s6, 3
	addi.d	$a4, $sp, 160
	move	$a0, $s4
	move	$a1, $s5
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $fp, %pc_lo12(getNeighbour)
	addi.d	$s6, $s6, -1
	addi.d	$a4, $sp, 64
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s6
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $fp, %pc_lo12(getNeighbour)
	addi.d	$a1, $s3, 4
	addi.d	$a4, $sp, 40
	move	$a0, $s4
	move	$a2, $s6
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $fp, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 16
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $s6
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.w	$a0, $sp, 40
	beqz	$a0, .LBB0_2
# %bb.1:
	addi.d	$a0, $s3, -4
	sltu	$a0, $zero, $a0
	andi	$a1, $s2, 7
	addi.d	$a1, $a1, -4
	sltu	$a1, $zero, $a1
	or	$a5, $a0, $a1
	b	.LBB0_3
.LBB0_2:
	move	$a5, $zero
.LBB0_3:
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 272
	st.w	$a5, $sp, 40
	beqz	$a0, .LBB0_12
# %bb.4:                                # %.preheader223
	ld.w	$a1, $sp, 88
	ld.d	$a0, $s7, 0
	beqz	$a1, .LBB0_13
# %bb.5:
	ld.w	$a1, $sp, 92
	ldptr.d	$a2, $a0, 14240
	slli.d	$a1, $a1, 2
	ldx.wu	$a1, $a2, $a1
	andi	$a1, $a1, 1
	ld.w	$a2, $sp, 112
	beqz	$a2, .LBB0_14
.LBB0_6:
	ld.w	$a2, $sp, 116
	ldptr.d	$a3, $a0, 14240
	slli.d	$a2, $a2, 2
	ldx.w	$a3, $a3, $a2
	ld.w	$a2, $sp, 136
	beqz	$a2, .LBB0_15
.LBB0_7:
	ld.w	$a2, $sp, 140
	ldptr.d	$a4, $a0, 14240
	slli.d	$a2, $a2, 2
	ldx.w	$a4, $a4, $a2
	ld.w	$a2, $sp, 160
	beqz	$a2, .LBB0_16
.LBB0_8:
	ld.w	$a2, $sp, 164
	ldptr.d	$a6, $a0, 14240
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a6, $a2
	ld.w	$a6, $sp, 64
	and	$a1, $a3, $a1
	beqz	$a6, .LBB0_17
.LBB0_9:
	ld.w	$a3, $sp, 68
	ldptr.d	$a6, $a0, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$t2, $a6, $a3
	and	$a1, $a4, $a1
	beqz	$a5, .LBB0_18
.LBB0_10:
	ld.w	$a3, $sp, 44
	ldptr.d	$a4, $a0, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a5, $a4, $a3
	ld.w	$a3, $sp, 16
	and	$a7, $a2, $a1
	beqz	$a3, .LBB0_19
.LBB0_11:
	ld.w	$a1, $sp, 20
	ldptr.d	$a0, $a0, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a2, $a0, $a1
	b	.LBB0_20
.LBB0_12:
	ld.w	$a7, $sp, 88
	ld.w	$t2, $sp, 64
	ld.w	$a2, $sp, 16
	b	.LBB0_20
.LBB0_13:
	move	$a1, $zero
	ld.w	$a2, $sp, 112
	bnez	$a2, .LBB0_6
.LBB0_14:
	move	$a3, $zero
	ld.w	$a2, $sp, 136
	bnez	$a2, .LBB0_7
.LBB0_15:
	move	$a4, $zero
	ld.w	$a2, $sp, 160
	bnez	$a2, .LBB0_8
.LBB0_16:
	move	$a2, $zero
	ld.w	$a6, $sp, 64
	and	$a1, $a3, $a1
	bnez	$a6, .LBB0_9
.LBB0_17:
	move	$t2, $zero
	and	$a1, $a4, $a1
	bnez	$a5, .LBB0_10
.LBB0_18:
	move	$a5, $zero
	ld.w	$a3, $sp, 16
	and	$a7, $a2, $a1
	bnez	$a3, .LBB0_11
.LBB0_19:
	move	$a2, $zero
.LBB0_20:
	st.w	$a7, $s1, 0
	st.w	$t2, $s0, 0
	sltu	$a0, $zero, $t2
	sltu	$a1, $zero, $a7
	and	$a6, $a0, $a1
	sltu	$a0, $zero, $a2
	and	$a0, $a6, $a0
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	beqz	$t2, .LBB0_22
# %bb.21:
	ld.w	$a0, $sp, 84
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s8, $a0
	ld.w	$a1, $sp, 80
	alsl.d	$t0, $a1, $a0, 1
	slli.d	$a1, $a1, 1
	ldx.hu	$a4, $a0, $a1
	ld.hu	$a3, $t0, 2
	ld.hu	$a1, $t0, 4
	ld.hu	$a0, $t0, 6
	b	.LBB0_23
.LBB0_22:
	ld.d	$a0, $s7, 0
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3224
	ldx.h	$a0, $a0, $a1
	move	$a1, $a0
	move	$a3, $a0
	move	$a4, $a0
.LBB0_23:
	move	$t7, $a0
	move	$fp, $a0
	move	$s0, $a0
	move	$s1, $a0
	beqz	$a5, .LBB0_25
# %bb.24:
	ld.w	$a5, $sp, 60
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $s8, $a5
	ld.w	$t0, $sp, 56
	alsl.d	$t1, $t0, $a5, 1
	slli.d	$t0, $t0, 1
	ldx.hu	$s1, $a5, $t0
	ld.hu	$s0, $t1, 2
	ld.hu	$fp, $t1, 4
	ld.hu	$t7, $t1, 6
.LBB0_25:
	beqz	$a7, .LBB0_28
# %bb.26:
	ld.w	$a5, $sp, 108
	ld.w	$t0, $sp, 104
	ld.w	$t1, $sp, 132
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $s8, $a5
	slli.d	$t0, $t0, 1
	slli.d	$t1, $t1, 3
	ld.w	$t3, $sp, 128
	ldx.d	$t1, $s8, $t1
	ldx.hu	$t0, $a5, $t0
	ld.w	$a5, $sp, 156
	slli.d	$t3, $t3, 1
	ldx.hu	$t1, $t1, $t3
	ld.w	$t3, $sp, 180
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $s8, $a5
	ld.w	$t4, $sp, 152
	slli.d	$t3, $t3, 3
	ld.w	$t5, $sp, 176
	ldx.d	$t6, $s8, $t3
	slli.d	$t3, $t4, 1
	ldx.hu	$t3, $a5, $t3
	slli.d	$a5, $t5, 1
	ldx.hu	$t4, $t6, $a5
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	beqz	$a2, .LBB0_29
.LBB0_27:
	ld.w	$a5, $sp, 36
	slli.d	$a5, $a5, 3
	ld.w	$t5, $sp, 32
	ldx.d	$a5, $s8, $a5
	slli.d	$t5, $t5, 1
	ldx.hu	$a2, $a5, $t5
	st.d	$a2, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a5, $s7, 0
	b	.LBB0_30
.LBB0_28:
	ld.d	$a5, $s7, 0
	lu12i.w	$t0, 3
	ori	$t0, $t0, 3224
	ldx.h	$t3, $a5, $t0
	move	$t1, $t3
	move	$t0, $t3
	move	$t4, $t3
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	bnez	$a2, .LBB0_27
.LBB0_29:
	ld.d	$a5, $s7, 0
	lu12i.w	$t5, 3
	ori	$t5, $t5, 3224
	ldx.h	$a2, $a5, $t5
	st.d	$a2, $sp, 0                     # 8-byte Folded Spill
.LBB0_30:
	lu12i.w	$t6, 15
	ori	$t6, $t6, 4095
	st.h	$t6, $a5, 720
	st.h	$t6, $a5, 1744
	ori	$t8, $zero, 2256
	stx.h	$t6, $a5, $t8
	ori	$t8, $zero, 2768
	stx.h	$t6, $a5, $t8
	ori	$t8, $zero, 3280
	stx.h	$t6, $a5, $t8
	ori	$t8, $zero, 3792
	stx.h	$t6, $a5, $t8
	lu12i.w	$t8, 1
	ori	$s2, $t8, 208
	stx.h	$t6, $a5, $s2
	beqz	$a6, .LBB0_32
# %bb.31:
	bstrpick.d	$s3, $a4, 15, 0
	bstrpick.d	$s4, $a3, 15, 0
	bstrpick.d	$s5, $a1, 15, 0
	bstrpick.d	$s6, $a0, 15, 0
	bstrpick.d	$s7, $t0, 15, 0
	bstrpick.d	$s8, $t1, 15, 0
	bstrpick.d	$ra, $t3, 15, 0
	bstrpick.d	$t5, $t4, 15, 0
	add.d	$s3, $s3, $s4
	add.d	$s3, $s3, $s5
	add.d	$s3, $s3, $s6
	add.d	$s3, $s3, $s7
	add.d	$s3, $s3, $s8
	add.d	$s3, $s3, $ra
	add.d	$t5, $s3, $t5
	addi.d	$t5, $t5, 4
	bstrpick.d	$s3, $t5, 31, 3
	b	.LBB0_40
.LBB0_32:
	bnez	$t2, .LBB0_35
# %bb.33:
	beqz	$a7, .LBB0_35
# %bb.34:
	bstrpick.d	$t5, $t0, 15, 0
	bstrpick.d	$s3, $t1, 15, 0
	bstrpick.d	$s4, $t3, 15, 0
	bstrpick.d	$s5, $t4, 15, 0
	b	.LBB0_38
.LBB0_35:
	beqz	$t2, .LBB0_39
# %bb.36:
	bnez	$a7, .LBB0_39
# %bb.37:
	bstrpick.d	$t5, $a4, 15, 0
	bstrpick.d	$s3, $a3, 15, 0
	bstrpick.d	$s4, $a1, 15, 0
	bstrpick.d	$s5, $a0, 15, 0
.LBB0_38:                               # %.preheader
	add.d	$t5, $t5, $s3
	add.d	$t5, $t5, $s4
	add.d	$t5, $t5, $s5
	addi.d	$t5, $t5, 2
	srli.d	$s3, $t5, 2
	b	.LBB0_40
.LBB0_39:
	lu12i.w	$t5, 3
	ori	$t5, $t5, 3224
	ldx.w	$s3, $a5, $t5
.LBB0_40:                               # %.preheader
	st.h	$s3, $a5, 1232
	st.h	$s3, $a5, 1234
	st.h	$s3, $a5, 1236
	st.h	$s3, $a5, 1238
	st.h	$s3, $a5, 1264
	st.h	$s3, $a5, 1266
	st.h	$s3, $a5, 1268
	st.h	$s3, $a5, 1270
	st.h	$s3, $a5, 1296
	st.h	$s3, $a5, 1298
	st.h	$s3, $a5, 1300
	st.h	$s3, $a5, 1302
	st.h	$s3, $a5, 1328
	st.h	$s3, $a5, 1330
	st.h	$s3, $a5, 1332
	st.h	$s3, $a5, 1334
	st.h	$a4, $a5, 304
	st.h	$a4, $a5, 272
	st.h	$a4, $a5, 240
	st.h	$a4, $a5, 208
	st.h	$a3, $a5, 306
	st.h	$a3, $a5, 274
	st.h	$a3, $a5, 242
	st.h	$a3, $a5, 210
	st.h	$a1, $a5, 308
	st.h	$a1, $a5, 276
	st.h	$a1, $a5, 244
	st.h	$a1, $a5, 212
	st.h	$a0, $a5, 310
	st.h	$a0, $a5, 278
	st.h	$a0, $a5, 246
	st.h	$a0, $a5, 214
	bnez	$t2, .LBB0_42
# %bb.41:
	st.h	$t6, $a5, 208
.LBB0_42:
	addi.d	$s3, $a5, 2047
	st.h	$t0, $a5, 726
	st.h	$t0, $a5, 724
	st.h	$t0, $a5, 722
	st.h	$t0, $a5, 720
	st.h	$t1, $a5, 758
	st.h	$t1, $a5, 756
	st.h	$t1, $a5, 754
	st.h	$t1, $a5, 752
	st.h	$t3, $a5, 790
	st.h	$t3, $a5, 788
	st.h	$t3, $a5, 786
	st.h	$t3, $a5, 784
	st.h	$t4, $a5, 822
	st.h	$t4, $a5, 820
	st.h	$t4, $a5, 818
	st.h	$t4, $a5, 816
	bnez	$a7, .LBB0_44
# %bb.43:
	st.h	$t6, $a5, 720
.LBB0_44:
	addi.d	$t6, $s3, 211
	beqz	$t2, .LBB0_46
# %bb.45:
	bstrpick.d	$t5, $a4, 15, 0
	bstrpick.d	$s4, $a1, 15, 0
	bstrpick.d	$s7, $a3, 15, 0
	addi.d	$s8, $s4, 2
	add.d	$t2, $s8, $t5
	alsl.d	$t2, $s7, $t2, 1
	srli.d	$t2, $t2, 2
	st.h	$t2, $a5, 1744
	bstrpick.d	$s5, $a0, 15, 0
	addi.d	$ra, $s5, 2
	add.d	$s3, $ra, $s7
	alsl.d	$s3, $s4, $s3, 1
	srli.d	$s3, $s3, 2
	st.h	$s3, $a5, 1776
	st.h	$s3, $a5, 1746
	bstrpick.d	$s6, $s1, 15, 0
	alsl.d	$s1, $s5, $s8, 1
	add.d	$s1, $s1, $s6
	srli.d	$s1, $s1, 2
	st.h	$s1, $a5, 1808
	st.h	$s1, $a5, 1778
	st.h	$s1, $a5, 1748
	bstrpick.d	$s8, $s0, 15, 0
	alsl.d	$s0, $s6, $ra, 1
	add.d	$s0, $s0, $s8
	srli.d	$s0, $s0, 2
	st.h	$s0, $a5, 1840
	st.h	$s0, $a5, 1810
	st.h	$s0, $a5, 1780
	st.h	$s0, $a5, 1750
	bstrpick.d	$fp, $fp, 15, 0
	alsl.d	$ra, $s8, $s6, 1
	add.d	$ra, $ra, $fp
	addi.d	$ra, $ra, 2
	srli.d	$ra, $ra, 2
	st.h	$ra, $a5, 1842
	st.h	$ra, $a5, 1812
	st.h	$ra, $a5, 1782
	bstrpick.d	$t7, $t7, 15, 0
	alsl.d	$a2, $fp, $s8, 1
	add.d	$a2, $a2, $t7
	addi.d	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	st.h	$a2, $a5, 1844
	st.h	$a2, $a5, 1814
	alsl.d	$a2, $t7, $t7, 1
	add.d	$a2, $fp, $a2
	addi.d	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	st.h	$a2, $a5, 1846
	add.d	$a2, $s7, $t5
	addi.d	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ori	$t5, $zero, 3792
	stx.h	$a2, $a5, $t5
	add.d	$a2, $s4, $s7
	addi.d	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ori	$t5, $zero, 3856
	stx.h	$a2, $a5, $t5
	st.h	$a2, $t6, 1536
	add.d	$a2, $s4, $s5
	addi.d	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	st.h	$a2, $t6, 1600
	ori	$t5, $zero, 3796
	stx.h	$a2, $a5, $t5
	add.d	$a2, $s5, $s6
	addi.d	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ori	$t5, $zero, 3860
	stx.h	$a2, $a5, $t5
	st.h	$a2, $t6, 1540
	add.d	$a2, $s6, $s8
	addi.d	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	st.h	$a2, $t6, 1604
	ori	$a2, $zero, 3824
	stx.h	$t2, $a5, $a2
	ori	$a2, $zero, 3888
	stx.h	$s3, $a5, $a2
	st.h	$s3, $t6, 1568
	st.h	$s1, $t6, 1632
	ori	$a2, $zero, 3828
	stx.h	$s1, $a5, $a2
	ori	$a2, $zero, 3892
	stx.h	$s0, $a5, $a2
	st.h	$s0, $t6, 1572
	st.h	$ra, $t6, 1636
.LBB0_46:
	beqz	$a7, .LBB0_48
# %bb.47:
	bstrpick.d	$a2, $t0, 15, 0
	bstrpick.d	$a7, $t1, 15, 0
	add.d	$t2, $a7, $a2
	addi.d	$t2, $t2, 1
	srli.d	$t2, $t2, 1
	stx.h	$t2, $a5, $s2
	bstrpick.d	$t2, $t3, 15, 0
	addi.d	$t5, $t2, 2
	add.d	$a2, $t5, $a2
	alsl.d	$a2, $a7, $a2, 1
	srli.d	$a2, $a2, 2
	ori	$t7, $zero, 2048
	stx.h	$a2, $t6, $t7
	add.d	$a2, $a7, $t2
	addi.d	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	ori	$t7, $t8, 240
	stx.h	$a2, $a5, $t7
	ori	$t7, $t8, 212
	stx.h	$a2, $a5, $t7
	bstrpick.d	$a2, $t4, 15, 0
	add.d	$a7, $a2, $a7
	alsl.d	$a7, $t2, $a7, 1
	addi.d	$a7, $a7, 2
	srli.d	$a7, $a7, 2
	ori	$t7, $zero, 2080
	stx.h	$a7, $t6, $t7
	ori	$t7, $zero, 2052
	stx.h	$a7, $t6, $t7
	add.d	$a7, $t2, $a2
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	ori	$t2, $t8, 272
	stx.h	$a7, $a5, $t2
	ori	$t2, $t8, 244
	stx.h	$a7, $a5, $t2
	add.d	$a7, $t5, $a2
	alsl.d	$a2, $a2, $a7, 1
	srli.d	$a2, $a2, 2
	ori	$a7, $zero, 2112
	stx.h	$a2, $t6, $a7
	ori	$a7, $zero, 2084
	stx.h	$a2, $t6, $a7
	ori	$a2, $zero, 2148
	stx.h	$t4, $t6, $a2
	ori	$a2, $t8, 308
	stx.h	$t4, $a5, $a2
	ori	$a2, $zero, 2144
	stx.h	$t4, $t6, $a2
	ori	$a2, $zero, 2116
	stx.h	$t4, $t6, $a2
	ori	$a2, $t8, 276
	stx.h	$t4, $a5, $a2
	ori	$a2, $t8, 304
	stx.h	$t4, $a5, $a2
.LBB0_48:
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	sltui	$a2, $a2, 1
	xori	$a6, $a6, 1
	or	$a2, $a6, $a2
	bnez	$a2, .LBB0_50
# %bb.49:
	bstrpick.d	$a2, $t4, 15, 0
	bstrpick.d	$a6, $t3, 15, 0
	bstrpick.d	$t1, $t1, 15, 0
	addi.d	$t3, $t1, 2
	add.d	$a7, $t3, $a2
	alsl.d	$a7, $a6, $a7, 1
	srli.d	$a7, $a7, 2
	ori	$t2, $zero, 2352
	stx.h	$a7, $a5, $t2
	bstrpick.d	$t2, $t0, 15, 0
	addi.d	$t5, $t2, 2
	add.d	$t0, $t5, $a6
	alsl.d	$t0, $t1, $t0, 1
	srli.d	$t0, $t0, 2
	st.h	$t0, $t6, 96
	ori	$t4, $zero, 2320
	stx.h	$t0, $a5, $t4
	ld.d	$t4, $sp, 0                     # 8-byte Folded Reload
	bstrpick.d	$t4, $t4, 15, 0
	alsl.d	$t3, $t2, $t3, 1
	add.d	$t3, $t3, $t4
	srli.d	$t3, $t3, 2
	ori	$t7, $zero, 2356
	stx.h	$t3, $a5, $t7
	st.h	$t3, $t6, 64
	ori	$t7, $zero, 2288
	stx.h	$t3, $a5, $t7
	bstrpick.d	$t7, $a4, 15, 0
	alsl.d	$a4, $t4, $t5, 1
	add.d	$a4, $a4, $t7
	srli.d	$a4, $a4, 2
	st.h	$a4, $t6, 100
	ori	$t5, $zero, 2324
	stx.h	$a4, $a5, $t5
	st.h	$a4, $t6, 32
	ori	$t5, $zero, 2256
	stx.h	$a4, $a5, $t5
	bstrpick.d	$t5, $a3, 15, 0
	alsl.d	$a3, $t7, $t4, 1
	add.d	$a3, $a3, $t5
	addi.d	$a3, $a3, 2
	srli.d	$a3, $a3, 2
	st.h	$a3, $t6, 68
	ori	$t8, $zero, 2292
	stx.h	$a3, $a5, $t8
	st.h	$a3, $t6, 0
	bstrpick.d	$t8, $a1, 15, 0
	alsl.d	$a1, $t5, $t7, 1
	add.d	$a1, $a1, $t8
	addi.d	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	st.h	$a1, $t6, 36
	ori	$fp, $zero, 2260
	stx.h	$a1, $a5, $fp
	bstrpick.d	$a0, $a0, 15, 0
	alsl.d	$fp, $t8, $t5, 1
	add.d	$fp, $fp, $a0
	addi.d	$fp, $fp, 2
	srli.d	$fp, $fp, 2
	st.h	$fp, $t6, 4
	add.d	$s0, $t4, $t7
	addi.d	$s0, $s0, 1
	srli.d	$s0, $s0, 1
	st.h	$s0, $t6, 576
	ori	$s1, $zero, 2768
	stx.h	$s0, $a5, $s1
	add.d	$t7, $t7, $t5
	addi.d	$t7, $t7, 1
	srli.d	$t7, $t7, 1
	ori	$s0, $zero, 2836
	stx.h	$t7, $a5, $s0
	st.h	$t7, $t6, 512
	add.d	$t5, $t5, $t8
	addi.d	$t5, $t5, 1
	srli.d	$t5, $t5, 1
	st.h	$t5, $t6, 580
	ori	$t7, $zero, 2772
	stx.h	$t5, $a5, $t7
	add.d	$a0, $t8, $a0
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	st.h	$a0, $t6, 516
	st.h	$a4, $t6, 608
	ori	$a0, $zero, 2800
	stx.h	$a4, $a5, $a0
	ori	$a0, $zero, 2868
	stx.h	$a3, $a5, $a0
	st.h	$a3, $t6, 544
	st.h	$a1, $t6, 612
	ori	$a0, $zero, 2804
	stx.h	$a1, $a5, $a0
	st.h	$fp, $t6, 548
	ori	$a0, $zero, 2832
	stx.h	$t3, $a5, $a0
	ori	$a0, $zero, 2864
	stx.h	$t0, $a5, $a0
	add.d	$a0, $t2, $t4
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	ori	$t4, $zero, 3316
	stx.h	$a0, $a5, $t4
	ori	$t4, $zero, 3280
	stx.h	$a0, $a5, $t4
	st.h	$a4, $t6, 1060
	st.h	$a4, $t6, 1024
	ori	$a0, $zero, 3284
	stx.h	$a3, $a5, $a0
	st.h	$a1, $t6, 1028
	add.d	$a0, $t1, $t2
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	ori	$a1, $zero, 3348
	stx.h	$a0, $a5, $a1
	ori	$a1, $zero, 3312
	stx.h	$a0, $a5, $a1
	st.h	$t3, $t6, 1092
	st.h	$t3, $t6, 1056
	add.d	$a0, $a6, $t1
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	ori	$a1, $zero, 3380
	stx.h	$a0, $a5, $a1
	ori	$a1, $zero, 3344
	stx.h	$a0, $a5, $a1
	st.h	$t0, $t6, 1124
	st.h	$t0, $t6, 1088
	add.d	$a0, $a6, $a2
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	ori	$a1, $zero, 3376
	stx.h	$a0, $a5, $a1
	st.h	$a7, $t6, 1120
.LBB0_50:
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.Lfunc_end0:
	.size	intrapred_luma, .Lfunc_end0-intrapred_luma
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function intrapred_luma_16x16
.LCPI1_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI1_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.text
	.globl	intrapred_luma_16x16
	.p2align	5
	.type	intrapred_luma_16x16,@function
intrapred_luma_16x16:                   # @intrapred_luma_16x16
# %bb.0:
	addi.d	$sp, $sp, -560
	st.d	$ra, $sp, 552                   # 8-byte Folded Spill
	st.d	$fp, $sp, 544                   # 8-byte Folded Spill
	st.d	$s0, $sp, 536                   # 8-byte Folded Spill
	st.d	$s1, $sp, 528                   # 8-byte Folded Spill
	st.d	$s2, $sp, 520                   # 8-byte Folded Spill
	st.d	$s3, $sp, 512                   # 8-byte Folded Spill
	st.d	$s4, $sp, 504                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$s2, $a1, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $s2, 0
	ldptr.d	$s1, $a0, 6440
	ld.w	$fp, $a1, 12
	pcalau12i	$s3, %pc_hi20(getNeighbour)
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.w	$s0, $zero, -1
	addi.d	$a4, $sp, 8
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 32
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 56
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 80
	ori	$a2, $zero, 2
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 104
	ori	$a2, $zero, 3
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 128
	ori	$a2, $zero, 4
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 152
	ori	$a2, $zero, 5
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 176
	ori	$a2, $zero, 6
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 200
	ori	$a2, $zero, 7
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 224
	ori	$a2, $zero, 8
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 248
	ori	$a2, $zero, 9
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 272
	ori	$a2, $zero, 10
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 296
	ori	$a2, $zero, 11
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 320
	ori	$a2, $zero, 12
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 344
	ori	$a2, $zero, 13
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 368
	ori	$a2, $zero, 14
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 392
	ori	$a2, $zero, 15
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 416
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 272
	ld.w	$a0, $sp, 416
	beqz	$a1, .LBB1_20
# %bb.1:
	ld.d	$a1, $s2, 0
	beqz	$a0, .LBB1_23
# %bb.2:
	ld.w	$a0, $sp, 420
	ldptr.d	$a2, $a1, 14240
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a2, $a0
	ld.w	$a2, $sp, 32
	beqz	$a2, .LBB1_24
.LBB1_3:
	ld.w	$a2, $sp, 36
	ldptr.d	$a3, $a1, 14240
	slli.d	$a2, $a2, 2
	ldx.wu	$a2, $a3, $a2
	andi	$a2, $a2, 1
	ld.w	$a3, $sp, 56
	beqz	$a3, .LBB1_25
.LBB1_4:
	ld.w	$a3, $sp, 60
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 80
	and	$a2, $a3, $a2
	beqz	$a4, .LBB1_26
.LBB1_5:
	ld.w	$a3, $sp, 84
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 104
	and	$a2, $a3, $a2
	beqz	$a4, .LBB1_27
.LBB1_6:
	ld.w	$a3, $sp, 108
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 128
	and	$a2, $a3, $a2
	beqz	$a4, .LBB1_28
.LBB1_7:
	ld.w	$a3, $sp, 132
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 152
	and	$a2, $a3, $a2
	beqz	$a4, .LBB1_29
.LBB1_8:
	ld.w	$a3, $sp, 156
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 176
	and	$a2, $a3, $a2
	beqz	$a4, .LBB1_30
.LBB1_9:
	ld.w	$a3, $sp, 180
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 200
	and	$a2, $a3, $a2
	beqz	$a4, .LBB1_31
.LBB1_10:
	ld.w	$a3, $sp, 204
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 224
	and	$a2, $a3, $a2
	beqz	$a4, .LBB1_32
.LBB1_11:
	ld.w	$a3, $sp, 228
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 248
	and	$a2, $a3, $a2
	beqz	$a4, .LBB1_33
.LBB1_12:
	ld.w	$a3, $sp, 252
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 272
	and	$a2, $a3, $a2
	beqz	$a4, .LBB1_34
.LBB1_13:
	ld.w	$a3, $sp, 276
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 296
	and	$a2, $a3, $a2
	beqz	$a4, .LBB1_35
.LBB1_14:
	ld.w	$a3, $sp, 300
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 320
	and	$a2, $a3, $a2
	beqz	$a4, .LBB1_36
.LBB1_15:
	ld.w	$a3, $sp, 324
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 344
	and	$a2, $a3, $a2
	beqz	$a4, .LBB1_37
.LBB1_16:
	ld.w	$a3, $sp, 348
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 368
	and	$a2, $a3, $a2
	beqz	$a4, .LBB1_38
.LBB1_17:
	ld.w	$a3, $sp, 372
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 392
	and	$a2, $a3, $a2
	beqz	$a4, .LBB1_39
.LBB1_18:
	ld.w	$a3, $sp, 396
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 8
	and	$a2, $a3, $a2
	beqz	$a4, .LBB1_40
.LBB1_19:
	ld.w	$a3, $sp, 12
	ldptr.d	$a1, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a1, $a3
	bnez	$a0, .LBB1_21
	b	.LBB1_41
.LBB1_20:
	ld.w	$a2, $sp, 32
	ld.w	$a3, $sp, 8
	beqz	$a0, .LBB1_41
.LBB1_21:
	ld.w	$a1, $sp, 436
	ld.w	$a5, $sp, 432
	slli.d	$a1, $a1, 3
	ldx.d	$a4, $s1, $a1
	alsl.d	$a1, $a5, $a4, 1
	slli.d	$a5, $a5, 1
	ldx.hu	$a6, $a4, $a5
	ld.hu	$a7, $a1, 2
	ld.hu	$t0, $a1, 4
	ld.hu	$t1, $a1, 6
	add.d	$a6, $a6, $a7
	add.d	$a6, $a6, $t0
	add.d	$a6, $a6, $t1
	ld.hu	$a7, $a1, 8
	ld.hu	$t0, $a1, 10
	ld.hu	$t1, $a1, 12
	ld.hu	$t2, $a1, 14
	add.d	$a6, $a6, $a7
	add.d	$a6, $a6, $t0
	add.d	$a6, $a6, $t1
	add.d	$a6, $a6, $t2
	ld.hu	$a7, $a1, 16
	ld.hu	$t0, $a1, 18
	ld.hu	$t1, $a1, 20
	ld.hu	$t2, $a1, 22
	add.d	$a6, $a6, $a7
	add.d	$a6, $a6, $t0
	add.d	$a6, $a6, $t1
	add.d	$a6, $a6, $t2
	ld.hu	$a7, $a1, 24
	ld.hu	$t0, $a1, 26
	ld.hu	$t1, $a1, 28
	ld.hu	$a1, $a1, 30
	add.d	$a6, $a6, $a7
	add.d	$a6, $a6, $t0
	add.d	$a6, $a6, $t1
	add.w	$a1, $a6, $a1
	bnez	$a2, .LBB1_43
# %bb.22:
	xvldx	$xr0, $a4, $a5
	move	$a5, $zero
	addi.d	$a1, $a1, 8
	bstrpick.d	$a4, $a1, 31, 4
	xvst	$xr0, $sp, 440
	b	.LBB1_47
.LBB1_23:
	move	$a0, $zero
	ld.w	$a2, $sp, 32
	bnez	$a2, .LBB1_3
.LBB1_24:
	move	$a2, $zero
	ld.w	$a3, $sp, 56
	bnez	$a3, .LBB1_4
.LBB1_25:
	move	$a3, $zero
	ld.w	$a4, $sp, 80
	and	$a2, $a3, $a2
	bnez	$a4, .LBB1_5
.LBB1_26:
	move	$a3, $zero
	ld.w	$a4, $sp, 104
	and	$a2, $a3, $a2
	bnez	$a4, .LBB1_6
.LBB1_27:
	move	$a3, $zero
	ld.w	$a4, $sp, 128
	and	$a2, $a3, $a2
	bnez	$a4, .LBB1_7
.LBB1_28:
	move	$a3, $zero
	ld.w	$a4, $sp, 152
	and	$a2, $a3, $a2
	bnez	$a4, .LBB1_8
.LBB1_29:
	move	$a3, $zero
	ld.w	$a4, $sp, 176
	and	$a2, $a3, $a2
	bnez	$a4, .LBB1_9
.LBB1_30:
	move	$a3, $zero
	ld.w	$a4, $sp, 200
	and	$a2, $a3, $a2
	bnez	$a4, .LBB1_10
.LBB1_31:
	move	$a3, $zero
	ld.w	$a4, $sp, 224
	and	$a2, $a3, $a2
	bnez	$a4, .LBB1_11
.LBB1_32:
	move	$a3, $zero
	ld.w	$a4, $sp, 248
	and	$a2, $a3, $a2
	bnez	$a4, .LBB1_12
.LBB1_33:
	move	$a3, $zero
	ld.w	$a4, $sp, 272
	and	$a2, $a3, $a2
	bnez	$a4, .LBB1_13
.LBB1_34:
	move	$a3, $zero
	ld.w	$a4, $sp, 296
	and	$a2, $a3, $a2
	bnez	$a4, .LBB1_14
.LBB1_35:
	move	$a3, $zero
	ld.w	$a4, $sp, 320
	and	$a2, $a3, $a2
	bnez	$a4, .LBB1_15
.LBB1_36:
	move	$a3, $zero
	ld.w	$a4, $sp, 344
	and	$a2, $a3, $a2
	bnez	$a4, .LBB1_16
.LBB1_37:
	move	$a3, $zero
	ld.w	$a4, $sp, 368
	and	$a2, $a3, $a2
	bnez	$a4, .LBB1_17
.LBB1_38:
	move	$a3, $zero
	ld.w	$a4, $sp, 392
	and	$a2, $a3, $a2
	bnez	$a4, .LBB1_18
.LBB1_39:
	move	$a3, $zero
	ld.w	$a4, $sp, 8
	and	$a2, $a3, $a2
	bnez	$a4, .LBB1_19
.LBB1_40:
	move	$a3, $zero
	bnez	$a0, .LBB1_21
.LBB1_41:                               # %.thread125
	beqz	$a2, .LBB1_54
# %bb.42:
	move	$a1, $zero
.LBB1_43:                               # %.preheader137
	ld.w	$a2, $sp, 52
	ld.w	$a4, $sp, 48
	ld.w	$a5, $sp, 76
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $s1, $a2
	slli.d	$a4, $a4, 1
	slli.d	$a5, $a5, 3
	ld.w	$a6, $sp, 72
	ldx.d	$a5, $s1, $a5
	ld.w	$a7, $sp, 100
	ldx.hu	$a2, $a2, $a4
	slli.d	$a4, $a6, 1
	ldx.hu	$a4, $a5, $a4
	slli.d	$a5, $a7, 3
	ld.w	$a6, $sp, 96
	ldx.d	$a5, $s1, $a5
	ld.w	$a7, $sp, 124
	add.d	$a2, $a2, $a4
	slli.d	$a4, $a6, 1
	ldx.hu	$a4, $a5, $a4
	slli.d	$a5, $a7, 3
	ld.w	$a6, $sp, 120
	ldx.d	$a5, $s1, $a5
	ld.w	$a7, $sp, 148
	add.d	$a2, $a2, $a4
	slli.d	$a4, $a6, 1
	ldx.hu	$a4, $a5, $a4
	slli.d	$a5, $a7, 3
	ld.w	$a6, $sp, 144
	ldx.d	$a5, $s1, $a5
	ld.w	$a7, $sp, 172
	add.d	$a2, $a2, $a4
	slli.d	$a4, $a6, 1
	ldx.hu	$a4, $a5, $a4
	slli.d	$a5, $a7, 3
	ld.w	$a6, $sp, 168
	ldx.d	$a5, $s1, $a5
	ld.w	$a7, $sp, 196
	add.d	$a2, $a2, $a4
	slli.d	$a4, $a6, 1
	ldx.hu	$a4, $a5, $a4
	slli.d	$a5, $a7, 3
	ld.w	$a6, $sp, 192
	ldx.d	$a5, $s1, $a5
	ld.w	$a7, $sp, 220
	add.d	$a4, $a2, $a4
	slli.d	$a2, $a6, 1
	ldx.hu	$a5, $a5, $a2
	slli.d	$a2, $a7, 3
	ld.w	$a6, $sp, 216
	ldx.d	$a7, $s1, $a2
	ld.w	$a2, $sp, 244
	add.d	$a4, $a4, $a5
	slli.d	$a5, $a6, 1
	ldx.hu	$a5, $a7, $a5
	slli.d	$a6, $a2, 3
	ld.w	$a7, $sp, 240
	ldx.d	$a6, $s1, $a6
	ld.w	$t0, $sp, 268
	add.d	$a4, $a4, $a5
	slli.d	$a5, $a7, 1
	ldx.hu	$a5, $a6, $a5
	slli.d	$a6, $t0, 3
	ld.w	$a7, $sp, 264
	ldx.d	$a6, $s1, $a6
	add.d	$a4, $a4, $a5
	ld.w	$a5, $sp, 292
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	ld.w	$a7, $sp, 316
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $s1, $a5
	ld.w	$t0, $sp, 288
	slli.d	$a7, $a7, 3
	ld.w	$t1, $sp, 312
	ldx.d	$a7, $s1, $a7
	slli.d	$t0, $t0, 1
	ldx.hu	$a5, $a5, $t0
	slli.d	$t0, $t1, 1
	ldx.hu	$a7, $a7, $t0
	add.d	$a4, $a4, $a6
	add.d	$a4, $a4, $a5
	ld.w	$a5, $sp, 340
	add.d	$a4, $a4, $a7
	ld.w	$a6, $sp, 336
	ld.w	$a7, $sp, 364
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $s1, $a5
	slli.d	$a6, $a6, 1
	slli.d	$a7, $a7, 3
	ld.w	$t0, $sp, 360
	ldx.d	$a7, $s1, $a7
	ldx.hu	$a5, $a5, $a6
	ld.w	$a6, $sp, 388
	slli.d	$t0, $t0, 1
	ldx.hu	$a7, $a7, $t0
	ld.w	$t0, $sp, 412
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $s1, $a6
	ld.w	$t1, $sp, 384
	slli.d	$t0, $t0, 3
	ld.w	$t2, $sp, 408
	ldx.d	$t0, $s1, $t0
	slli.d	$t1, $t1, 1
	ldx.hu	$a6, $a6, $t1
	slli.d	$t1, $t2, 1
	ldx.hu	$t0, $t0, $t1
	add.d	$a4, $a4, $a5
	add.d	$a4, $a4, $a7
	add.d	$a4, $a4, $a6
	add.w	$a4, $a4, $t0
	beqz	$a0, .LBB1_45
# %bb.44:                               # %..preheader135_crit_edge
	ld.w	$a2, $sp, 436
	slli.d	$a2, $a2, 3
	ld.w	$a5, $sp, 432
	ldx.d	$a2, $s1, $a2
	add.d	$a1, $a1, $a4
	slli.d	$a4, $a5, 1
	xvldx	$xr0, $a2, $a4
	ld.w	$a2, $sp, 244
	addi.d	$a1, $a1, 16
	bstrpick.d	$a4, $a1, 31, 5
	xvst	$xr0, $sp, 440
	b	.LBB1_46
.LBB1_45:
	addi.d	$a1, $a4, 8
	bstrpick.d	$a4, $a1, 31, 4
.LBB1_46:                               # %.preheader135
	ld.w	$a1, $sp, 52
	slli.d	$a1, $a1, 3
	ld.w	$a5, $sp, 48
	ldx.d	$a1, $s1, $a1
	ld.w	$a6, $sp, 76
	slli.d	$a5, $a5, 1
	ldx.h	$a1, $a1, $a5
	slli.d	$a5, $a6, 3
	ld.w	$a6, $sp, 72
	ldx.d	$a5, $s1, $a5
	ld.w	$a7, $sp, 100
	st.h	$a1, $sp, 472
	slli.d	$a1, $a6, 1
	ldx.h	$a1, $a5, $a1
	slli.d	$a5, $a7, 3
	ld.w	$a6, $sp, 96
	ldx.d	$a5, $s1, $a5
	st.h	$a1, $sp, 474
	ld.w	$a1, $sp, 124
	slli.d	$a6, $a6, 1
	ldx.h	$a5, $a5, $a6
	ld.w	$a6, $sp, 148
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s1, $a1
	ld.w	$a7, $sp, 120
	slli.d	$a6, $a6, 3
	ld.w	$t0, $sp, 144
	ldx.d	$a6, $s1, $a6
	slli.d	$a7, $a7, 1
	ldx.h	$a1, $a1, $a7
	slli.d	$a7, $t0, 1
	ldx.h	$a6, $a6, $a7
	st.h	$a5, $sp, 476
	st.h	$a1, $sp, 478
	ld.w	$a1, $sp, 172
	st.h	$a6, $sp, 480
	ld.w	$a5, $sp, 168
	ld.w	$a6, $sp, 196
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s1, $a1
	slli.d	$a5, $a5, 1
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 192
	ldx.d	$a6, $s1, $a6
	ld.w	$t0, $sp, 220
	ldx.h	$a1, $a1, $a5
	slli.d	$a5, $a7, 1
	ldx.h	$a5, $a6, $a5
	slli.d	$a6, $t0, 3
	ld.w	$a7, $sp, 216
	ldx.d	$a6, $s1, $a6
	st.h	$a1, $sp, 482
	st.h	$a5, $sp, 484
	slli.d	$a1, $a7, 1
	ldx.h	$a1, $a6, $a1
	slli.d	$a2, $a2, 3
	ld.w	$a5, $sp, 240
	ldx.d	$a2, $s1, $a2
	ld.w	$a6, $sp, 268
	st.h	$a1, $sp, 486
	slli.d	$a1, $a5, 1
	ldx.h	$a1, $a2, $a1
	slli.d	$a2, $a6, 3
	ld.w	$a5, $sp, 264
	ldx.d	$a2, $s1, $a2
	st.h	$a1, $sp, 488
	ld.w	$a1, $sp, 292
	slli.d	$a5, $a5, 1
	ldx.h	$a2, $a2, $a5
	ld.w	$a5, $sp, 316
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s1, $a1
	ld.w	$a6, $sp, 288
	slli.d	$a5, $a5, 3
	ld.w	$a7, $sp, 312
	ldx.d	$a5, $s1, $a5
	slli.d	$a6, $a6, 1
	ldx.h	$a1, $a1, $a6
	slli.d	$a6, $a7, 1
	ldx.h	$a5, $a5, $a6
	st.h	$a2, $sp, 490
	st.h	$a1, $sp, 492
	ld.w	$a1, $sp, 340
	st.h	$a5, $sp, 494
	ld.w	$a2, $sp, 336
	ld.w	$a5, $sp, 364
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s1, $a1
	slli.d	$a2, $a2, 1
	slli.d	$a5, $a5, 3
	ld.w	$a6, $sp, 360
	ldx.d	$a5, $s1, $a5
	ldx.h	$a1, $a1, $a2
	ld.w	$a2, $sp, 388
	slli.d	$a6, $a6, 1
	ldx.h	$a5, $a5, $a6
	ld.w	$a6, $sp, 412
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $s1, $a2
	ld.w	$a7, $sp, 384
	slli.d	$a6, $a6, 3
	ld.w	$t0, $sp, 408
	ldx.d	$a6, $s1, $a6
	slli.d	$a7, $a7, 1
	ldx.h	$a2, $a2, $a7
	slli.d	$a7, $t0, 1
	ldx.h	$a6, $a6, $a7
	st.h	$a1, $sp, 496
	st.h	$a5, $sp, 498
	st.h	$a2, $sp, 500
	st.h	$a6, $sp, 502
	ori	$a5, $zero, 1
.LBB1_47:                               # %.loopexit136
	ld.d	$a2, $s2, 0
	ori	$a6, $zero, 32
	lu12i.w	$a1, 1
	ori	$a7, $a1, 720
	addi.d	$t0, $sp, 440
	ori	$t1, $zero, 64
	.p2align	4, , 16
.LBB1_48:                               # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $sp, 440
	xvstx	$xr0, $a2, $a7
	ld.d	$a2, $s2, 0
	ldx.h	$t2, $a6, $t0
	add.d	$t3, $a2, $a7
	st.h	$t2, $t3, 512
	st.h	$a4, $t3, 1024
	st.h	$t2, $t3, 514
	st.h	$a4, $t3, 1026
	st.h	$t2, $t3, 516
	st.h	$a4, $t3, 1028
	st.h	$t2, $t3, 518
	st.h	$a4, $t3, 1030
	st.h	$t2, $t3, 520
	st.h	$a4, $t3, 1032
	st.h	$t2, $t3, 522
	st.h	$a4, $t3, 1034
	st.h	$t2, $t3, 524
	st.h	$a4, $t3, 1036
	st.h	$t2, $t3, 526
	st.h	$a4, $t3, 1038
	st.h	$t2, $t3, 528
	st.h	$a4, $t3, 1040
	st.h	$t2, $t3, 530
	st.h	$a4, $t3, 1042
	st.h	$t2, $t3, 532
	st.h	$a4, $t3, 1044
	st.h	$t2, $t3, 534
	st.h	$a4, $t3, 1046
	st.h	$t2, $t3, 536
	st.h	$a4, $t3, 1048
	st.h	$t2, $t3, 538
	st.h	$a4, $t3, 1050
	st.h	$t2, $t3, 540
	st.h	$a4, $t3, 1052
	st.h	$t2, $t3, 542
	st.h	$a4, $t3, 1054
	addi.d	$a6, $a6, 2
	addi.d	$a7, $a7, 32
	bne	$a6, $t1, .LBB1_48
# %bb.49:
	sltui	$a0, $a0, 1
	xori	$a4, $a5, 1
	or	$a0, $a0, $a4
	bnez	$a0, .LBB1_53
# %bb.50:
	beqz	$a3, .LBB1_53
# %bb.51:                               # %vector.ph
	ld.w	$a3, $sp, 436
	ori	$a0, $a1, 2258
	ld.w	$a4, $sp, 28
	slli.d	$a3, $a3, 3
	ldx.d	$a5, $s1, $a3
	ld.w	$a6, $sp, 432
	slli.d	$a3, $a4, 3
	ld.w	$a7, $sp, 24
	ldx.d	$a3, $s1, $a3
	alsl.d	$t0, $a6, $a5, 1
	ld.hu	$a4, $t0, 30
	slli.d	$a7, $a7, 1
	ldx.hu	$a3, $a3, $a7
	slli.d	$a6, $a6, 1
	ld.hu	$a7, $t0, 28
	ldx.hu	$a6, $a5, $a6
	sub.d	$a5, $a4, $a3
	ld.hu	$t1, $t0, 26
	ld.hu	$t2, $t0, 2
	sub.d	$a6, $a7, $a6
	slli.d	$a7, $a6, 3
	sub.d	$a6, $a7, $a6
	sub.d	$a7, $t1, $t2
	ori	$t2, $zero, 6
	ld.hu	$t1, $t0, 24
	ld.hu	$t3, $t0, 4
	ld.hu	$t4, $t0, 22
	ld.hu	$t5, $t0, 6
	mul.d	$a7, $a7, $t2
	sub.d	$t1, $t1, $t3
	alsl.d	$t1, $t1, $t1, 2
	sub.d	$t3, $t4, $t5
	ld.hu	$t4, $t0, 20
	ld.hu	$t5, $t0, 8
	ld.hu	$t6, $t0, 18
	ld.hu	$t7, $t0, 10
	ld.hu	$t8, $t0, 16
	ld.hu	$t0, $t0, 12
	sub.d	$t4, $t4, $t5
	alsl.d	$t4, $t4, $t4, 1
	sub.d	$t5, $t6, $t7
	sub.d	$t0, $t8, $t0
	alsl.d	$t0, $t5, $t0, 1
	add.d	$t0, $t4, $t0
	alsl.d	$t0, $t3, $t0, 2
	ld.w	$t3, $sp, 412
	add.d	$t0, $t1, $t0
	add.d	$a7, $a7, $t0
	add.w	$a6, $a6, $a7
	slli.d	$a7, $t3, 3
	ld.w	$t0, $sp, 408
	ldx.d	$a7, $s1, $a7
	alsl.d	$t5, $a5, $a6, 3
	ld.w	$a5, $sp, 388
	slli.d	$a6, $t0, 1
	ldx.hu	$a6, $a7, $a6
	ld.w	$a7, $sp, 52
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $s1, $a5
	ld.w	$t0, $sp, 384
	slli.d	$a7, $a7, 3
	ld.w	$t1, $sp, 48
	ldx.d	$a7, $s1, $a7
	slli.d	$t0, $t0, 1
	ldx.hu	$a5, $a5, $t0
	slli.d	$t0, $t1, 1
	ldx.hu	$a7, $a7, $t0
	add.d	$t6, $a6, $a4
	ld.w	$a4, $sp, 364
	sub.d	$t7, $a6, $a3
	sub.d	$a3, $a5, $a7
	ld.w	$a5, $sp, 76
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $s1, $a4
	ld.w	$a6, $sp, 360
	slli.d	$a5, $a5, 3
	ld.w	$a7, $sp, 72
	ldx.d	$a5, $s1, $a5
	slli.d	$a6, $a6, 1
	ldx.hu	$a4, $a4, $a6
	slli.d	$a6, $a7, 1
	ldx.hu	$a5, $a5, $a6
	slli.d	$a6, $a3, 3
	ld.w	$a7, $sp, 340
	sub.d	$t8, $a6, $a3
	sub.d	$t4, $a4, $a5
	ld.w	$a3, $sp, 336
	slli.d	$a4, $a7, 3
	ld.w	$a5, $sp, 100
	ldx.d	$a4, $s1, $a4
	slli.d	$a3, $a3, 1
	ld.w	$a6, $sp, 96
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $s1, $a5
	ldx.hu	$a3, $a4, $a3
	slli.d	$a4, $a6, 1
	ld.w	$a6, $sp, 316
	ldx.hu	$a4, $a5, $a4
	ld.w	$a5, $sp, 312
	ld.w	$a7, $sp, 124
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $s1, $a6
	slli.d	$a5, $a5, 1
	slli.d	$a7, $a7, 3
	ld.w	$t0, $sp, 120
	ldx.d	$a7, $s1, $a7
	ldx.hu	$a5, $a6, $a5
	ld.w	$a6, $sp, 292
	slli.d	$t0, $t0, 1
	ldx.hu	$a7, $a7, $t0
	ld.w	$t0, $sp, 148
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $s1, $a6
	ld.w	$t1, $sp, 288
	slli.d	$t0, $t0, 3
	ld.w	$t3, $sp, 144
	ldx.d	$t0, $s1, $t0
	slli.d	$t1, $t1, 1
	ldx.hu	$a6, $a6, $t1
	slli.d	$t1, $t3, 1
	ldx.hu	$t0, $t0, $t1
	sub.d	$t3, $a3, $a4
	sub.d	$t1, $a5, $a7
	ld.w	$a3, $sp, 268
	sub.d	$t0, $a6, $t0
	ld.w	$a4, $sp, 264
	ld.w	$a5, $sp, 172
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $s1, $a3
	slli.d	$a4, $a4, 1
	slli.d	$a5, $a5, 3
	ld.w	$a6, $sp, 168
	ldx.d	$a5, $s1, $a5
	ld.w	$a7, $sp, 244
	ldx.hu	$fp, $a3, $a4
	slli.d	$a3, $a6, 1
	ldx.hu	$a5, $a5, $a3
	slli.d	$a3, $a7, 3
	ld.w	$a4, $sp, 240
	ldx.d	$a3, $s1, $a3
	ld.w	$a6, $sp, 196
	add.d	$a0, $a2, $a0
	slli.d	$a4, $a4, 1
	ldx.hu	$a7, $a3, $a4
	slli.d	$a3, $a6, 3
	ld.w	$a4, $sp, 192
	ldx.d	$a6, $s1, $a3
	ori	$a3, $a1, 2260
	add.d	$a3, $a2, $a3
	slli.d	$a4, $a4, 1
	ldx.hu	$a6, $a6, $a4
	ori	$a4, $a1, 2262
	add.d	$a4, $a2, $a4
	sub.d	$fp, $fp, $a5
	ori	$a5, $a1, 2264
	add.d	$a5, $a2, $a5
	sub.d	$a7, $a7, $a6
	ori	$a6, $a1, 2266
	add.d	$a6, $a2, $a6
	alsl.d	$fp, $fp, $a7, 1
	ori	$a7, $a1, 2268
	add.d	$a7, $a2, $a7
	alsl.d	$t0, $t0, $t0, 1
	add.d	$fp, $t0, $fp
	ori	$t0, $a1, 2270
	add.d	$t0, $a2, $t0
	alsl.d	$fp, $t1, $fp, 2
	ori	$t1, $a1, 2272
	add.d	$t1, $a2, $t1
	alsl.d	$t3, $t3, $t3, 2
	add.d	$fp, $t3, $fp
	ori	$t3, $a1, 2274
	add.d	$t3, $a2, $t3
	mul.d	$t4, $t4, $t2
	add.d	$fp, $t4, $fp
	ori	$t4, $a1, 2276
	add.d	$t4, $a2, $t4
	alsl.d	$t5, $t5, $t5, 2
	addi.w	$t5, $t5, 32
	srai.d	$s0, $t5, 6
	add.w	$t5, $t8, $fp
	slli.d	$fp, $s0, 3
	alsl.d	$t5, $t7, $t5, 3
	lu12i.w	$t7, 3
	ori	$t7, $t7, 3232
	ldx.w	$t7, $a2, $t7
	alsl.d	$t5, $t5, $t5, 2
	addi.w	$t5, $t5, 32
	srai.d	$t5, $t5, 6
	vreplgr2vr.w	$vr0, $t5
	slli.d	$t5, $s0, 2
	vreplgr2vr.w	$vr1, $t7
	alsl.d	$t7, $s0, $s0, 2
	slli.d	$t6, $t6, 4
	addi.d	$t6, $t6, 16
	vreplgr2vr.w	$vr2, $t6
	sub.d	$t6, $s0, $fp
	vreplgr2vr.w	$vr3, $t6
	addi.d	$t6, $zero, -6
	mul.d	$t6, $s0, $t6
	vreplgr2vr.w	$vr4, $t6
	sub.d	$t6, $zero, $t7
	vreplgr2vr.w	$vr5, $t6
	alsl.d	$t6, $s0, $s0, 1
	vreplgr2vr.w	$vr6, $t5
	sub.d	$t5, $zero, $t6
	vreplgr2vr.w	$vr7, $t5
	slli.d	$t5, $s0, 1
	vreplgr2vr.w	$vr8, $t5
	ori	$t5, $a1, 2278
	add.d	$t5, $a2, $t5
	vreplgr2vr.w	$vr9, $t6
	ori	$t6, $a1, 2280
	add.d	$t6, $a2, $t6
	vreplgr2vr.w	$vr10, $t7
	ori	$t7, $a1, 2282
	add.d	$t7, $a2, $t7
	mul.d	$t2, $s0, $t2
	vreplgr2vr.w	$vr11, $t2
	ori	$t2, $a1, 2284
	add.d	$t2, $a2, $t2
	vreplgr2vr.w	$vr12, $s0
	sub.d	$t8, $fp, $s0
	vreplgr2vr.w	$vr13, $t8
	pcalau12i	$t8, %pc_hi20(.LCPI1_0)
	vld	$vr14, $t8, %pc_lo12(.LCPI1_0)
	pcalau12i	$t8, %pc_hi20(.LCPI1_1)
	xvld	$xr15, $t8, %pc_lo12(.LCPI1_1)
	ori	$t8, $a1, 2286
	add.d	$t8, $a2, $t8
	vreplgr2vr.w	$vr16, $fp
	addi.w	$fp, $zero, -512
	vrepli.w	$vr17, -7
	.p2align	4, , 16
.LBB1_52:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vadd.w	$vr19, $vr14, $vr17
	vori.b	$vr18, $vr2, 0
	vmadd.w	$vr18, $vr19, $vr0
	vadd.w	$vr19, $vr18, $vr3
	vsrai.w	$vr19, $vr19, 5
	vmaxi.w	$vr19, $vr19, 0
	vmin.w	$vr19, $vr19, $vr1
	add.d	$s0, $a2, $fp
	vpickve2gr.h	$s1, $vr19, 0
	ori	$s2, $a1, 2768
	stx.h	$s1, $s0, $s2
	vpickve2gr.h	$s1, $vr19, 2
	ori	$s2, $a1, 2800
	stx.h	$s1, $s0, $s2
	vpickve2gr.h	$s1, $vr19, 4
	ori	$s2, $a1, 2832
	stx.h	$s1, $s0, $s2
	vpickve2gr.h	$s1, $vr19, 6
	ori	$s2, $a1, 2864
	stx.h	$s1, $s0, $s2
	vadd.w	$vr19, $vr18, $vr4
	vsrai.w	$vr19, $vr19, 5
	vmaxi.w	$vr19, $vr19, 0
	vmin.w	$vr19, $vr19, $vr1
	xvslli.d	$xr20, $xr15, 5
	xvpickve2gr.d	$s3, $xr20, 0
	xvpickve2gr.d	$s2, $xr20, 1
	xvpickve2gr.d	$s1, $xr20, 2
	xvpickve2gr.d	$s0, $xr20, 3
	vpickve2gr.h	$s4, $vr19, 0
	stx.h	$s4, $a0, $s3
	vpickve2gr.h	$s4, $vr19, 2
	stx.h	$s4, $a0, $s2
	vpickve2gr.h	$s4, $vr19, 4
	stx.h	$s4, $a0, $s1
	vpickve2gr.h	$s4, $vr19, 6
	stx.h	$s4, $a0, $s0
	vadd.w	$vr19, $vr18, $vr5
	vsrai.w	$vr19, $vr19, 5
	vmaxi.w	$vr19, $vr19, 0
	vmin.w	$vr19, $vr19, $vr1
	vpickve2gr.h	$s4, $vr19, 0
	stx.h	$s4, $a3, $s3
	vpickve2gr.h	$s4, $vr19, 2
	stx.h	$s4, $a3, $s2
	vpickve2gr.h	$s4, $vr19, 4
	stx.h	$s4, $a3, $s1
	vpickve2gr.h	$s4, $vr19, 6
	stx.h	$s4, $a3, $s0
	vsub.w	$vr19, $vr18, $vr6
	vsrai.w	$vr19, $vr19, 5
	vmaxi.w	$vr19, $vr19, 0
	vmin.w	$vr19, $vr19, $vr1
	vpickve2gr.h	$s4, $vr19, 0
	stx.h	$s4, $a4, $s3
	vpickve2gr.h	$s4, $vr19, 2
	stx.h	$s4, $a4, $s2
	vpickve2gr.h	$s4, $vr19, 4
	stx.h	$s4, $a4, $s1
	vpickve2gr.h	$s4, $vr19, 6
	stx.h	$s4, $a4, $s0
	vadd.w	$vr19, $vr18, $vr7
	vsrai.w	$vr19, $vr19, 5
	vmaxi.w	$vr19, $vr19, 0
	vmin.w	$vr19, $vr19, $vr1
	vpickve2gr.h	$s4, $vr19, 0
	stx.h	$s4, $a5, $s3
	vpickve2gr.h	$s4, $vr19, 2
	stx.h	$s4, $a5, $s2
	vpickve2gr.h	$s4, $vr19, 4
	stx.h	$s4, $a5, $s1
	vpickve2gr.h	$s4, $vr19, 6
	stx.h	$s4, $a5, $s0
	vsub.w	$vr19, $vr18, $vr8
	vsrai.w	$vr19, $vr19, 5
	vmaxi.w	$vr19, $vr19, 0
	vmin.w	$vr19, $vr19, $vr1
	vpickve2gr.h	$s4, $vr19, 0
	stx.h	$s4, $a6, $s3
	vpickve2gr.h	$s4, $vr19, 2
	stx.h	$s4, $a6, $s2
	vpickve2gr.h	$s4, $vr19, 4
	stx.h	$s4, $a6, $s1
	vpickve2gr.h	$s4, $vr19, 6
	stx.h	$s4, $a6, $s0
	vsub.w	$vr19, $vr18, $vr12
	vsrai.w	$vr19, $vr19, 5
	vmaxi.w	$vr19, $vr19, 0
	vmin.w	$vr19, $vr19, $vr1
	vpickve2gr.h	$s4, $vr19, 0
	stx.h	$s4, $a7, $s3
	vpickve2gr.h	$s4, $vr19, 2
	stx.h	$s4, $a7, $s2
	vpickve2gr.h	$s4, $vr19, 4
	stx.h	$s4, $a7, $s1
	vpickve2gr.h	$s4, $vr19, 6
	stx.h	$s4, $a7, $s0
	vsrai.w	$vr19, $vr18, 5
	vmaxi.w	$vr19, $vr19, 0
	vmin.w	$vr19, $vr19, $vr1
	vpickve2gr.h	$s4, $vr19, 0
	stx.h	$s4, $t0, $s3
	vpickve2gr.h	$s4, $vr19, 2
	stx.h	$s4, $t0, $s2
	vpickve2gr.h	$s4, $vr19, 4
	stx.h	$s4, $t0, $s1
	vpickve2gr.h	$s4, $vr19, 6
	stx.h	$s4, $t0, $s0
	vadd.w	$vr19, $vr18, $vr12
	vsrai.w	$vr19, $vr19, 5
	vmaxi.w	$vr19, $vr19, 0
	vmin.w	$vr19, $vr19, $vr1
	vpickve2gr.h	$s4, $vr19, 0
	stx.h	$s4, $t1, $s3
	vpickve2gr.h	$s4, $vr19, 2
	stx.h	$s4, $t1, $s2
	vpickve2gr.h	$s4, $vr19, 4
	stx.h	$s4, $t1, $s1
	vpickve2gr.h	$s4, $vr19, 6
	stx.h	$s4, $t1, $s0
	vadd.w	$vr19, $vr18, $vr8
	vsrai.w	$vr19, $vr19, 5
	vmaxi.w	$vr19, $vr19, 0
	vmin.w	$vr19, $vr19, $vr1
	vpickve2gr.h	$s4, $vr19, 0
	stx.h	$s4, $t3, $s3
	vpickve2gr.h	$s4, $vr19, 2
	stx.h	$s4, $t3, $s2
	vpickve2gr.h	$s4, $vr19, 4
	stx.h	$s4, $t3, $s1
	vpickve2gr.h	$s4, $vr19, 6
	stx.h	$s4, $t3, $s0
	vadd.w	$vr19, $vr18, $vr9
	vsrai.w	$vr19, $vr19, 5
	vmaxi.w	$vr19, $vr19, 0
	vmin.w	$vr19, $vr19, $vr1
	vpickve2gr.h	$s4, $vr19, 0
	stx.h	$s4, $t4, $s3
	vpickve2gr.h	$s4, $vr19, 2
	stx.h	$s4, $t4, $s2
	vpickve2gr.h	$s4, $vr19, 4
	stx.h	$s4, $t4, $s1
	vpickve2gr.h	$s4, $vr19, 6
	stx.h	$s4, $t4, $s0
	vadd.w	$vr19, $vr18, $vr6
	vsrai.w	$vr19, $vr19, 5
	vmaxi.w	$vr19, $vr19, 0
	vmin.w	$vr19, $vr19, $vr1
	vpickve2gr.h	$s4, $vr19, 0
	stx.h	$s4, $t5, $s3
	vpickve2gr.h	$s4, $vr19, 2
	stx.h	$s4, $t5, $s2
	vpickve2gr.h	$s4, $vr19, 4
	stx.h	$s4, $t5, $s1
	vpickve2gr.h	$s4, $vr19, 6
	stx.h	$s4, $t5, $s0
	vadd.w	$vr19, $vr18, $vr10
	vsrai.w	$vr19, $vr19, 5
	vmaxi.w	$vr19, $vr19, 0
	vmin.w	$vr19, $vr19, $vr1
	vpickve2gr.h	$s4, $vr19, 0
	stx.h	$s4, $t6, $s3
	vpickve2gr.h	$s4, $vr19, 2
	stx.h	$s4, $t6, $s2
	vpickve2gr.h	$s4, $vr19, 4
	stx.h	$s4, $t6, $s1
	vpickve2gr.h	$s4, $vr19, 6
	stx.h	$s4, $t6, $s0
	vadd.w	$vr19, $vr18, $vr11
	vsrai.w	$vr19, $vr19, 5
	vmaxi.w	$vr19, $vr19, 0
	vmin.w	$vr19, $vr19, $vr1
	vpickve2gr.h	$s4, $vr19, 0
	stx.h	$s4, $t7, $s3
	vpickve2gr.h	$s4, $vr19, 2
	stx.h	$s4, $t7, $s2
	vpickve2gr.h	$s4, $vr19, 4
	stx.h	$s4, $t7, $s1
	vpickve2gr.h	$s4, $vr19, 6
	stx.h	$s4, $t7, $s0
	vadd.w	$vr19, $vr18, $vr13
	vsrai.w	$vr19, $vr19, 5
	vmaxi.w	$vr19, $vr19, 0
	vmin.w	$vr19, $vr19, $vr1
	vpickve2gr.h	$s4, $vr19, 0
	stx.h	$s4, $t2, $s3
	vpickve2gr.h	$s4, $vr19, 2
	stx.h	$s4, $t2, $s2
	vpickve2gr.h	$s4, $vr19, 4
	stx.h	$s4, $t2, $s1
	vpickve2gr.h	$s4, $vr19, 6
	stx.h	$s4, $t2, $s0
	vadd.w	$vr18, $vr18, $vr16
	vsrai.w	$vr18, $vr18, 5
	vmaxi.w	$vr18, $vr18, 0
	vmin.w	$vr18, $vr18, $vr1
	vpickve2gr.h	$s4, $vr18, 0
	stx.h	$s4, $t8, $s3
	vpickve2gr.h	$s3, $vr18, 2
	stx.h	$s3, $t8, $s2
	vpickve2gr.h	$s2, $vr18, 4
	stx.h	$s2, $t8, $s1
	vpickve2gr.h	$s1, $vr18, 6
	stx.h	$s1, $t8, $s0
	xvaddi.du	$xr15, $xr15, 4
	addi.d	$fp, $fp, 128
	vaddi.wu	$vr14, $vr14, 4
	bnez	$fp, .LBB1_52
.LBB1_53:                               # %.loopexit
	ld.d	$s4, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 536                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 544                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 552                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 560
	ret
.LBB1_54:                               # %.thread122
	ld.d	$a1, $s2, 0
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3224
	ldx.w	$a4, $a1, $a2
	move	$a5, $zero
	b	.LBB1_47
.Lfunc_end1:
	.size	intrapred_luma_16x16, .Lfunc_end1-intrapred_luma_16x16
                                        # -- End function
	.globl	dct_luma_16x16                  # -- Begin function dct_luma_16x16
	.p2align	5
	.type	dct_luma_16x16,@function
dct_luma_16x16:                         # @dct_luma_16x16
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
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a2, 12
	ldptr.d	$a3, $a2, 14224
	ori	$a4, $zero, 536
	mul.d	$a1, $a1, $a4
	add.d	$a1, $a3, $a1
	ldptr.d	$a5, $a2, 14168
	lu12i.w	$a3, 3
	ori	$a3, $a3, 3164
	ldx.w	$a3, $a2, $a3
	ld.w	$a4, $a1, 8
	ld.d	$a5, $a5, 0
	sub.w	$a6, $zero, $a3
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	bne	$a4, $a6, .LBB2_2
# %bb.1:
	ldptr.w	$a6, $a2, 15540
	addi.d	$a6, $a6, -1
	sltui	$a6, $a6, 1
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
.LBB2_2:
	move	$t1, $zero
	pcalau12i	$a6, %got_pc_hi20(qp_per_matrix)
	ld.d	$a6, $a6, %got_pc_lo12(qp_per_matrix)
	ld.d	$t3, $a5, 0
	ld.d	$s1, $a5, 8
	ld.w	$a1, $a1, 428
	ld.d	$a5, $a6, 0
	pcalau12i	$a6, %got_pc_hi20(qp_rem_matrix)
	ld.d	$a6, $a6, %got_pc_lo12(qp_rem_matrix)
	add.w	$a3, $a3, $a4
	slli.d	$a3, $a3, 2
	ldx.w	$t0, $a5, $a3
	ld.d	$a4, $a6, 0
	pcalau12i	$a5, %got_pc_hi20(LevelScale4x4Luma)
	ld.d	$a5, $a5, %got_pc_lo12(LevelScale4x4Luma)
	pcalau12i	$a6, %got_pc_hi20(InvLevelScale4x4Luma)
	ld.d	$a6, $a6, %got_pc_lo12(InvLevelScale4x4Luma)
	pcalau12i	$a7, %got_pc_hi20(LevelOffset4x4Luma)
	ld.d	$a7, $a7, %got_pc_lo12(LevelOffset4x4Luma)
	ld.d	$a5, $a5, 0
	ld.d	$a6, $a6, 0
	ldx.w	$a3, $a4, $a3
	ld.d	$a4, $a7, 0
	ld.d	$a5, $a5, 8
	ld.d	$a6, $a6, 8
	slli.d	$a3, $a3, 3
	ld.d	$a4, $a4, 8
	ldx.d	$a5, $a5, $a3
	st.d	$a5, $sp, 144                   # 8-byte Folded Spill
	ldx.d	$a3, $a6, $a3
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	st.d	$t0, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a3, $t0, 3
	ldx.d	$t4, $a4, $a3
	ld.w	$a4, $a2, 196
	pcalau12i	$a3, %pc_hi20(imgY_org)
	ld.d	$a5, $a3, %pc_lo12(imgY_org)
	ld.w	$a3, $a2, 192
	lu12i.w	$a6, 1
	ori	$a6, $a6, 720
	st.d	$a6, $sp, 8                     # 8-byte Folded Spill
	add.d	$a6, $a2, $a6
	alsl.d	$a4, $a4, $a5, 3
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	slli.d	$a5, $a0, 9
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	add.d	$a5, $a6, $a5
	addi.d	$a5, $a5, 16
	pcalau12i	$a6, %pc_hi20(dct_luma_16x16.M1)
	addi.d	$a0, $a6, %pc_lo12(dct_luma_16x16.M1)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a6, $a0, 32
	slli.d	$a7, $a3, 1
	pcalau12i	$t0, %pc_hi20(dct_luma_16x16.M0)
	addi.d	$t2, $t0, %pc_lo12(dct_luma_16x16.M0)
	ori	$t0, $zero, 16
	.p2align	4, , 16
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$t6, $a4, 0
	andi	$t5, $t1, 3
	vldx	$vr0, $t6, $a7
	alsl.d	$t6, $a3, $t6, 1
	slli.d	$t7, $t1, 6
	bstrpick.d	$t7, $t7, 37, 8
	vpickve2gr.h	$t8, $vr0, 0
	bstrpick.d	$t8, $t8, 15, 0
	xvinsgr2vr.w	$xr1, $t8, 0
	vpickve2gr.h	$t8, $vr0, 1
	bstrpick.d	$t8, $t8, 15, 0
	xvinsgr2vr.w	$xr1, $t8, 1
	vpickve2gr.h	$t8, $vr0, 2
	bstrpick.d	$t8, $t8, 15, 0
	xvinsgr2vr.w	$xr1, $t8, 2
	vpickve2gr.h	$t8, $vr0, 3
	bstrpick.d	$t8, $t8, 15, 0
	xvinsgr2vr.w	$xr1, $t8, 3
	vpickve2gr.h	$t8, $vr0, 4
	bstrpick.d	$t8, $t8, 15, 0
	xvinsgr2vr.w	$xr1, $t8, 4
	vpickve2gr.h	$t8, $vr0, 5
	bstrpick.d	$t8, $t8, 15, 0
	xvinsgr2vr.w	$xr1, $t8, 5
	vpickve2gr.h	$t8, $vr0, 6
	bstrpick.d	$t8, $t8, 15, 0
	xvinsgr2vr.w	$xr1, $t8, 6
	vld	$vr2, $a5, -16
	vpickve2gr.h	$t8, $vr0, 7
	bstrpick.d	$t8, $t8, 15, 0
	xvinsgr2vr.w	$xr1, $t8, 7
	vpickve2gr.h	$t8, $vr2, 0
	bstrpick.d	$t8, $t8, 15, 0
	xvinsgr2vr.w	$xr0, $t8, 0
	vpickve2gr.h	$t8, $vr2, 1
	bstrpick.d	$t8, $t8, 15, 0
	xvinsgr2vr.w	$xr0, $t8, 1
	vpickve2gr.h	$t8, $vr2, 2
	bstrpick.d	$t8, $t8, 15, 0
	xvinsgr2vr.w	$xr0, $t8, 2
	vpickve2gr.h	$t8, $vr2, 3
	bstrpick.d	$t8, $t8, 15, 0
	xvinsgr2vr.w	$xr0, $t8, 3
	vpickve2gr.h	$t8, $vr2, 4
	bstrpick.d	$t8, $t8, 15, 0
	xvinsgr2vr.w	$xr0, $t8, 4
	vpickve2gr.h	$t8, $vr2, 5
	bstrpick.d	$t8, $t8, 15, 0
	xvinsgr2vr.w	$xr0, $t8, 5
	vpickve2gr.h	$t8, $vr2, 6
	bstrpick.d	$t8, $t8, 15, 0
	xvinsgr2vr.w	$xr0, $t8, 6
	vpickve2gr.h	$t8, $vr2, 7
	bstrpick.d	$t8, $t8, 15, 0
	xvinsgr2vr.w	$xr0, $t8, 7
	xvsub.w	$xr0, $xr1, $xr0
	xvst	$xr0, $a6, -32
	vld	$vr0, $a6, -32
	slli.d	$t7, $t7, 8
	add.d	$t7, $t2, $t7
	slli.d	$t8, $t5, 4
	vstx	$vr0, $t7, $t8
	vld	$vr0, $a6, -16
	vld	$vr1, $t6, 16
	alsl.d	$t5, $t5, $t7, 4
	vst	$vr0, $t5, 64
	vpickve2gr.h	$t6, $vr1, 0
	bstrpick.d	$t6, $t6, 15, 0
	xvinsgr2vr.w	$xr0, $t6, 0
	vpickve2gr.h	$t6, $vr1, 1
	bstrpick.d	$t6, $t6, 15, 0
	xvinsgr2vr.w	$xr0, $t6, 1
	vpickve2gr.h	$t6, $vr1, 2
	bstrpick.d	$t6, $t6, 15, 0
	xvinsgr2vr.w	$xr0, $t6, 2
	vpickve2gr.h	$t6, $vr1, 3
	bstrpick.d	$t6, $t6, 15, 0
	xvinsgr2vr.w	$xr0, $t6, 3
	vpickve2gr.h	$t6, $vr1, 4
	bstrpick.d	$t6, $t6, 15, 0
	xvinsgr2vr.w	$xr0, $t6, 4
	vpickve2gr.h	$t6, $vr1, 5
	bstrpick.d	$t6, $t6, 15, 0
	xvinsgr2vr.w	$xr0, $t6, 5
	vpickve2gr.h	$t6, $vr1, 6
	bstrpick.d	$t6, $t6, 15, 0
	xvinsgr2vr.w	$xr0, $t6, 6
	vld	$vr2, $a5, 0
	vpickve2gr.h	$t6, $vr1, 7
	bstrpick.d	$t6, $t6, 15, 0
	xvinsgr2vr.w	$xr0, $t6, 7
	vpickve2gr.h	$t6, $vr2, 0
	bstrpick.d	$t6, $t6, 15, 0
	xvinsgr2vr.w	$xr1, $t6, 0
	vpickve2gr.h	$t6, $vr2, 1
	bstrpick.d	$t6, $t6, 15, 0
	xvinsgr2vr.w	$xr1, $t6, 1
	vpickve2gr.h	$t6, $vr2, 2
	bstrpick.d	$t6, $t6, 15, 0
	xvinsgr2vr.w	$xr1, $t6, 2
	vpickve2gr.h	$t6, $vr2, 3
	bstrpick.d	$t6, $t6, 15, 0
	xvinsgr2vr.w	$xr1, $t6, 3
	vpickve2gr.h	$t6, $vr2, 4
	bstrpick.d	$t6, $t6, 15, 0
	xvinsgr2vr.w	$xr1, $t6, 4
	vpickve2gr.h	$t6, $vr2, 5
	bstrpick.d	$t6, $t6, 15, 0
	xvinsgr2vr.w	$xr1, $t6, 5
	vpickve2gr.h	$t6, $vr2, 6
	bstrpick.d	$t6, $t6, 15, 0
	xvinsgr2vr.w	$xr1, $t6, 6
	vpickve2gr.h	$t6, $vr2, 7
	bstrpick.d	$t6, $t6, 15, 0
	xvinsgr2vr.w	$xr1, $t6, 7
	xvsub.w	$xr0, $xr0, $xr1
	xvst	$xr0, $a6, 0
	vld	$vr0, $a6, 0
	vst	$vr0, $t5, 128
	vld	$vr0, $a6, 16
	vst	$vr0, $t5, 192
	addi.d	$t1, $t1, 1
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 64
	bne	$t1, $t0, .LBB2_3
# %bb.4:
	sltui	$a0, $a1, 1
	pcalau12i	$a1, %pc_hi20(FIELD_SCAN)
	addi.d	$a1, $a1, %pc_lo12(FIELD_SCAN)
	masknez	$a1, $a1, $a0
	pcalau12i	$a3, %pc_hi20(SNGL_SCAN)
	addi.d	$a3, $a3, %pc_lo12(SNGL_SCAN)
	maskeqz	$a0, $a3, $a0
	or	$t5, $a0, $a1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	addi.d	$t6, $a1, 15
	pcalau12i	$a0, %pc_hi20(dct_luma_16x16.M4)
	addi.d	$t7, $a0, %pc_lo12(dct_luma_16x16.M4)
	addi.d	$a0, $a1, 16
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.d	$t2, $sp, 48                    # 8-byte Folded Spill
	beqz	$a0, .LBB2_11
# %bb.5:                                # %.preheader494.preheader
	ld.w	$a3, $t2, 0
	move	$a0, $zero
	move	$a1, $zero
	st.w	$a3, $t7, 0
	ld.w	$a3, $t2, 64
	ld.w	$a4, $t2, 128
	ld.w	$a5, $t2, 192
	ld.w	$a6, $t2, 256
	st.w	$a3, $t7, 4
	st.w	$a4, $t7, 8
	st.w	$a5, $t7, 12
	st.w	$a6, $t7, 16
	ld.w	$a3, $t2, 320
	ld.w	$a4, $t2, 384
	ld.w	$a5, $t2, 448
	ld.w	$a6, $t2, 512
	st.w	$a3, $t7, 20
	st.w	$a4, $t7, 24
	st.w	$a5, $t7, 28
	st.w	$a6, $t7, 32
	ld.w	$a3, $t2, 576
	ld.w	$a4, $t2, 640
	ld.w	$a5, $t2, 704
	ld.w	$a6, $t2, 768
	st.w	$a3, $t7, 36
	st.w	$a4, $t7, 40
	st.w	$a5, $t7, 44
	st.w	$a6, $t7, 48
	ld.w	$a3, $t2, 832
	ld.w	$a4, $t2, 896
	ld.w	$a5, $t2, 960
	pcalau12i	$a6, %got_pc_hi20(input)
	ld.d	$a6, $a6, %got_pc_lo12(input)
	st.w	$a3, $t7, 52
	st.w	$a4, $t7, 56
	st.w	$a5, $t7, 60
	ld.d	$a3, $a6, 0
	addi.d	$a6, $zero, -1
	ori	$a4, $zero, 2063
	ori	$a5, $zero, 32
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_6:                                #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a0, $a0, 2
	beq	$a0, $a5, .LBB2_22
.LBB2_7:                                # =>This Inner Loop Header: Depth=1
	add.d	$a7, $t5, $a0
	ld.bu	$a7, $a7, 1
	ldx.bu	$t0, $t5, $a0
	alsl.d	$a7, $a7, $t7, 4
	slli.d	$t0, $t0, 2
	ldx.w	$a7, $a7, $t0
	ldptr.w	$t8, $a3, 4008
	srai.d	$t0, $a7, 31
	xor	$fp, $a7, $t0
	sub.w	$t0, $fp, $t0
	beqz	$t8, .LBB2_9
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a6, $a6, 1
	bnez	$t0, .LBB2_10
	b	.LBB2_6
	.p2align	4, , 16
.LBB2_9:                                #   in Loop: Header=BB2_7 Depth=1
	ld.w	$t8, $a2, 36
	slti	$t8, $t8, 10
	sltu	$fp, $t0, $a4
	masknez	$s0, $a4, $fp
	maskeqz	$fp, $t0, $fp
	or	$fp, $fp, $s0
	maskeqz	$fp, $fp, $t8
	masknez	$t0, $t0, $t8
	or	$t0, $fp, $t0
	addi.d	$a6, $a6, 1
	beqz	$t0, .LBB2_6
.LBB2_10:                               #   in Loop: Header=BB2_7 Depth=1
	slti	$a7, $a7, 0
	sub.d	$t8, $zero, $t0
	masknez	$t0, $t0, $a7
	maskeqz	$a7, $t8, $a7
	or	$a7, $a7, $t0
	slli.d	$t0, $a1, 2
	stx.w	$a7, $t3, $t0
	stx.w	$a6, $s1, $t0
	addi.w	$a1, $a1, 1
	addi.d	$a6, $zero, -1
	b	.LBB2_6
.LBB2_11:                               # %.preheader505.preheader
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.d	$t5, $sp, 64                    # 8-byte Folded Spill
	st.d	$t4, $sp, 80                    # 8-byte Folded Spill
	st.d	$t3, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	move	$a7, $zero
	addi.d	$a2, $t2, 32
	.p2align	4, , 16
.LBB2_12:                               # %.preheader505
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_13 Depth 2
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	st.d	$a7, $sp, 104                   # 8-byte Folded Spill
	move	$a5, $zero
	.p2align	4, , 16
.LBB2_13:                               # %.preheader504
                                        #   Parent Loop BB2_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	add.d	$a3, $a2, $a5
	ld.w	$a0, $a3, -32
	ld.w	$a1, $a3, -20
	ld.w	$a4, $a3, -28
	ld.w	$a6, $a3, -24
	add.d	$a7, $a1, $a0
	addi.w	$t0, $a7, 0
	add.d	$t8, $a6, $a4
	addi.w	$fp, $t8, 0
	sub.w	$t3, $a4, $a6
	sub.w	$t2, $a0, $a1
	add.d	$t1, $t8, $a7
	ld.w	$a0, $a3, -16
	ld.w	$a1, $a3, -4
	ld.w	$a4, $a3, -12
	ld.w	$a6, $a3, -8
	sub.d	$a7, $t0, $fp
	st.d	$a7, $sp, 128                   # 8-byte Folded Spill
	alsl.d	$t0, $t2, $t3, 1
	add.d	$a7, $a1, $a0
	add.d	$t8, $a6, $a4
	sub.d	$s7, $a4, $a6
	addi.w	$a4, $s7, 0
	sub.d	$a0, $a0, $a1
	addi.w	$s6, $a0, 0
	add.d	$s5, $t8, $a7
	sub.d	$s4, $a7, $t8
	alsl.d	$t8, $s6, $s7, 1
	ldx.w	$a1, $a2, $a5
	ld.w	$a6, $a3, 12
	ld.w	$a7, $a3, 4
	ld.w	$fp, $a3, 8
	slli.d	$a4, $a4, 1
	sub.d	$t4, $a0, $a4
	add.d	$a0, $a6, $a1
	add.d	$a4, $fp, $a7
	sub.d	$t5, $a7, $fp
	addi.w	$fp, $t5, 0
	sub.d	$a1, $a1, $a6
	addi.w	$a7, $a1, 0
	add.d	$s8, $a4, $a0
	sub.d	$ra, $a0, $a4
	slli.d	$a0, $fp, 1
	ld.w	$a4, $a3, 16
	ld.w	$fp, $a3, 28
	ld.w	$s0, $a3, 20
	ld.w	$s1, $a3, 24
	sub.d	$a6, $a1, $a0
	add.d	$a0, $fp, $a4
	addi.w	$s2, $a0, 0
	add.d	$s3, $s1, $s0
	sub.w	$a1, $s0, $s1
	addi.w	$s0, $s3, 0
	sub.w	$a4, $a4, $fp
	add.d	$a0, $s3, $a0
	sub.d	$fp, $s2, $s0
	add.d	$s0, $a0, $t1
	add.d	$s1, $s8, $s5
	add.d	$s2, $s1, $s0
	st.w	$s2, $a3, -32
	sub.d	$s2, $s5, $s8
	sub.d	$s0, $s0, $s1
	sub.d	$s1, $t1, $a0
	stx.w	$s0, $a2, $a5
	alsl.d	$s0, $s1, $s2, 1
	st.w	$s0, $a3, -16
	alsl.d	$s0, $a7, $t5, 1
	slli.d	$s2, $s2, 1
	sub.d	$s1, $s1, $s2
	alsl.d	$s2, $a4, $a1, 1
	st.w	$s1, $a3, 16
	add.d	$s1, $s0, $t8
	sub.d	$s0, $t8, $s0
	add.d	$s3, $s2, $t0
	sub.d	$s2, $t0, $s2
	add.d	$t0, $s1, $s3
	st.w	$t0, $a3, -28
	slli.d	$t0, $t3, 1
	sub.d	$t8, $t2, $t0
	sub.d	$s1, $s3, $s1
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	slli.d	$t0, $a1, 1
	sub.d	$t0, $a4, $t0
	st.w	$s1, $a3, 4
	alsl.d	$s1, $s2, $s0, 1
	st.w	$s1, $a3, -12
	slli.d	$s0, $s0, 1
	sub.d	$s0, $s2, $s0
	st.w	$s0, $a3, 20
	add.d	$s0, $fp, $s3
	add.d	$s1, $ra, $s4
	add.d	$s2, $s1, $s0
	st.w	$s2, $a3, -24
	sub.d	$s2, $s4, $ra
	sub.d	$s0, $s0, $s1
	sub.d	$s1, $s3, $fp
	st.w	$s0, $a3, 8
	alsl.d	$s0, $s1, $s2, 1
	st.w	$s0, $a3, -8
	slli.d	$s0, $s2, 1
	sub.d	$s0, $s1, $s0
	st.w	$s0, $a3, 24
	add.d	$s0, $t0, $t8
	add.d	$s1, $a6, $t4
	add.d	$s2, $s1, $s0
	st.w	$s2, $a3, -20
	sub.d	$s2, $t4, $a6
	sub.d	$s0, $s0, $s1
	sub.d	$s1, $t8, $t0
	st.w	$s0, $a3, 12
	alsl.d	$s0, $s1, $s2, 1
	st.w	$s0, $a3, -4
	slli.d	$s0, $s2, 1
	sub.d	$s0, $s1, $s0
	addi.d	$a5, $a5, 64
	st.w	$s0, $a3, 28
	ori	$a2, $zero, 256
	bne	$a5, $a2, .LBB2_13
# %bb.14:                               #   in Loop: Header=BB2_12 Depth=1
	move	$s1, $a7
	move	$a5, $t2
	move	$a3, $t3
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a7, $a7, 1
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	addi.d	$a2, $t2, 256
	ori	$t3, $zero, 4
	bne	$a7, $t3, .LBB2_12
# %bb.15:                               # %.preheader502
	alsl.w	$a3, $a5, $a3, 1
	alsl.w	$a5, $s6, $s7, 1
	alsl.w	$a7, $s1, $t5, 1
	alsl.w	$a1, $a4, $a1, 1
	st.w	$t1, $t7, 0
	st.w	$s3, $t7, 8
	st.w	$a3, $t7, 4
	st.w	$t8, $t7, 12
	st.w	$s5, $t7, 16
	st.w	$s4, $t7, 24
	st.w	$a5, $t7, 20
	st.w	$t4, $t7, 28
	st.w	$s8, $t7, 32
	st.w	$ra, $t7, 40
	st.w	$a7, $t7, 36
	st.w	$a6, $t7, 44
	st.w	$a0, $t7, 48
	st.w	$fp, $t7, 56
	st.w	$a1, $t7, 52
	st.w	$t0, $t7, 60
	ld.d	$t2, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $t2, 0
	ld.w	$a1, $t2, 64
	ld.w	$a3, $t2, 128
	ld.w	$a4, $t2, 192
	ld.w	$a5, $t2, 256
	ld.w	$a6, $t2, 320
	ld.w	$a7, $t2, 384
	ld.w	$t0, $t2, 448
	ld.w	$t8, $t2, 512
	ld.w	$fp, $t2, 576
	ld.w	$s0, $t2, 640
	ld.w	$s1, $t2, 704
	ld.w	$s2, $t2, 768
	ld.w	$s3, $t2, 832
	ld.w	$s4, $t2, 896
	ld.w	$s5, $t2, 960
	add.d	$s6, $a4, $a0
	add.d	$s7, $a3, $a1
	sub.d	$a1, $a1, $a3
	sub.d	$a0, $a0, $a4
	add.d	$s8, $s7, $s6
	sub.d	$a3, $s6, $s7
	add.d	$s6, $a1, $a0
	sub.d	$a0, $a0, $a1
	add.d	$a1, $t0, $a5
	add.d	$a4, $a7, $a6
	sub.d	$a6, $a6, $a7
	sub.d	$a5, $a5, $t0
	add.d	$a7, $a4, $a1
	sub.d	$t0, $a1, $a4
	add.d	$s7, $a6, $a5
	sub.d	$a1, $a5, $a6
	add.d	$a4, $s1, $t8
	add.d	$a5, $s0, $fp
	sub.d	$a6, $fp, $s0
	sub.d	$t8, $t8, $s1
	add.d	$fp, $a5, $a4
	sub.d	$a5, $a4, $a5
	add.d	$s0, $a6, $t8
	sub.d	$a4, $t8, $a6
	add.d	$a6, $s5, $s2
	add.d	$t8, $s4, $s3
	sub.d	$s1, $s3, $s4
	sub.d	$s2, $s2, $s5
	move	$s5, $zero
	add.d	$s3, $t8, $a6
	sub.d	$a6, $a6, $t8
	add.d	$t8, $s1, $s2
	sub.d	$s1, $s2, $s1
	add.d	$s2, $s3, $s8
	add.d	$s4, $fp, $a7
	sub.d	$a7, $a7, $fp
	sub.d	$fp, $s8, $s3
	add.w	$s3, $s4, $s2
	srli.d	$s3, $s3, 1
	st.w	$s3, $t7, 0
	sub.w	$s2, $s2, $s4
	srli.d	$s2, $s2, 1
	st.w	$s2, $t7, 32
	add.w	$s2, $a7, $fp
	srli.d	$s2, $s2, 1
	st.w	$s2, $t7, 16
	sub.w	$a7, $fp, $a7
	srli.d	$a7, $a7, 1
	st.w	$a7, $t7, 48
	add.d	$a7, $t8, $s6
	add.d	$fp, $s0, $s7
	sub.d	$s0, $s7, $s0
	sub.d	$t8, $s6, $t8
	move	$s6, $zero
	add.w	$s2, $fp, $a7
	srli.d	$s2, $s2, 1
	st.w	$s2, $t7, 4
	sub.w	$a7, $a7, $fp
	srli.d	$a7, $a7, 1
	st.w	$a7, $t7, 36
	add.w	$a7, $s0, $t8
	srli.d	$a7, $a7, 1
	st.w	$a7, $t7, 20
	sub.w	$a7, $t8, $s0
	srli.d	$a7, $a7, 1
	st.w	$a7, $t7, 52
	add.d	$a7, $a6, $a3
	add.d	$t8, $a5, $t0
	sub.d	$a5, $t0, $a5
	sub.d	$a3, $a3, $a6
	add.w	$a6, $t8, $a7
	srli.d	$a6, $a6, 1
	st.w	$a6, $t7, 8
	sub.w	$a6, $a7, $t8
	srli.d	$a6, $a6, 1
	st.w	$a6, $t7, 40
	add.w	$a6, $a5, $a3
	srli.d	$a6, $a6, 1
	st.w	$a6, $t7, 24
	sub.w	$a3, $a3, $a5
	srli.d	$a3, $a3, 1
	st.w	$a3, $t7, 56
	add.d	$a3, $s1, $a0
	add.d	$a5, $a4, $a1
	sub.d	$a1, $a1, $a4
	sub.d	$a0, $a0, $s1
	add.w	$a4, $a5, $a3
	srli.d	$a4, $a4, 1
	st.w	$a4, $t7, 12
	sub.w	$a3, $a3, $a5
	srli.d	$a3, $a3, 1
	st.w	$a3, $t7, 44
	add.w	$a3, $a1, $a0
	srli.d	$a3, $a3, 1
	st.w	$a3, $t7, 28
	sub.w	$a0, $a0, $a1
	srli.d	$a0, $a0, 1
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a3, $a1, %got_pc_lo12(input)
	st.w	$a0, $t7, 60
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$t4, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $t4, 0
	ld.d	$a3, $a3, 0
	addi.d	$a6, $zero, -1
	ori	$a4, $zero, 2063
	ori	$a5, $zero, 32
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	b	.LBB2_17
	.p2align	4, , 16
.LBB2_16:                               # %.split462
                                        #   in Loop: Header=BB2_17 Depth=1
	slti	$t8, $t8, 0
	srai.d	$s0, $fp, 31
	xor	$fp, $fp, $s0
	sub.d	$fp, $fp, $s0
	sub.d	$s0, $zero, $fp
	masknez	$fp, $fp, $t8
	maskeqz	$t8, $s0, $t8
	or	$t8, $t8, $fp
	slli.d	$fp, $s6, 2
	stx.w	$t8, $t3, $fp
	stx.w	$a6, $s4, $fp
	addi.w	$s6, $s6, 1
	addi.d	$a6, $zero, -1
	alsl.d	$a7, $a7, $t0, 2
	addi.d	$s5, $s5, 2
	st.w	$t8, $a7, 0
	beq	$s5, $a5, .LBB2_21
.LBB2_17:                               # =>This Inner Loop Header: Depth=1
	add.d	$a7, $t5, $s5
	ld.bu	$t0, $a7, 1
	ldx.bu	$a7, $t5, $s5
	alsl.d	$t0, $t0, $t7, 4
	slli.d	$t8, $a7, 2
	ldx.w	$t8, $t0, $t8
	srai.d	$fp, $t8, 31
	xor	$s0, $t8, $fp
	ld.w	$s1, $a0, 0
	ld.w	$s2, $a1, 0
	ldptr.w	$s3, $a3, 4008
	sub.d	$fp, $s0, $fp
	mul.d	$fp, $s1, $fp
	alsl.w	$fp, $s2, $fp, 1
	ld.d	$t1, $sp, 120                   # 8-byte Folded Reload
	sra.w	$fp, $fp, $t1
	beqz	$s3, .LBB2_19
# %bb.18:                               #   in Loop: Header=BB2_17 Depth=1
	addi.d	$a6, $a6, 1
	bnez	$fp, .LBB2_16
	b	.LBB2_20
	.p2align	4, , 16
.LBB2_19:                               #   in Loop: Header=BB2_17 Depth=1
	ld.w	$s0, $a2, 36
	slti	$s0, $s0, 10
	slt	$s1, $fp, $a4
	masknez	$s2, $a4, $s1
	maskeqz	$s1, $fp, $s1
	or	$s1, $s1, $s2
	maskeqz	$s1, $s1, $s0
	masknez	$fp, $fp, $s0
	or	$fp, $s1, $fp
	addi.d	$a6, $a6, 1
	bnez	$fp, .LBB2_16
.LBB2_20:                               #   in Loop: Header=BB2_17 Depth=1
	move	$t8, $zero
	alsl.d	$a7, $a7, $t0, 2
	addi.d	$s5, $s5, 2
	st.w	$t8, $a7, 0
	bne	$s5, $a5, .LBB2_17
.LBB2_21:                               # %.preheader496
	slli.d	$a0, $s6, 2
	stx.w	$zero, $t3, $a0
	ld.w	$a0, $t7, 0
	ld.w	$a1, $t7, 8
	ld.w	$a3, $t7, 4
	ld.w	$a4, $t7, 12
	add.d	$a5, $a1, $a0
	sub.d	$a0, $a0, $a1
	sub.d	$a1, $a3, $a4
	add.d	$a4, $a4, $a3
	add.d	$a7, $a4, $a5
	st.w	$a7, $t7, 0
	add.d	$a3, $a1, $a0
	st.w	$a3, $t7, 4
	sub.d	$a0, $a0, $a1
	st.w	$a0, $t7, 8
	sub.d	$a0, $a5, $a4
	ld.w	$a1, $t7, 16
	ld.w	$a4, $t7, 24
	ld.w	$a5, $t7, 20
	ld.w	$a6, $t7, 28
	st.w	$a0, $t7, 12
	add.d	$a0, $a4, $a1
	sub.d	$a1, $a1, $a4
	sub.d	$a4, $a5, $a6
	add.d	$a6, $a6, $a5
	add.d	$t8, $a6, $a0
	st.w	$t8, $t7, 16
	add.d	$a5, $a4, $a1
	st.w	$a5, $t7, 20
	sub.d	$a1, $a1, $a4
	st.w	$a1, $t7, 24
	sub.d	$a0, $a0, $a6
	ld.w	$a1, $t7, 32
	ld.w	$a4, $t7, 40
	ld.w	$a6, $t7, 36
	ld.w	$t0, $t7, 44
	st.w	$a0, $t7, 28
	add.d	$a0, $a4, $a1
	sub.d	$a1, $a1, $a4
	sub.d	$a4, $a6, $t0
	add.d	$a6, $t0, $a6
	add.d	$fp, $a6, $a0
	st.w	$fp, $t7, 32
	add.d	$t0, $a4, $a1
	st.w	$t0, $t7, 36
	sub.d	$a4, $a1, $a4
	st.w	$a4, $t7, 40
	sub.d	$a0, $a0, $a6
	ld.w	$a1, $t7, 48
	ld.w	$a6, $t7, 56
	ld.w	$s0, $t7, 52
	ld.w	$s1, $t7, 60
	st.w	$a0, $t7, 44
	add.d	$a0, $a6, $a1
	sub.d	$a1, $a1, $a6
	sub.d	$a6, $s0, $s1
	add.d	$s0, $s1, $s0
	add.d	$s1, $s0, $a0
	st.w	$s1, $t7, 48
	add.d	$s2, $a6, $a1
	st.w	$s2, $t7, 52
	sub.d	$a6, $a1, $a6
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $a1, 0
	st.w	$a6, $t7, 56
	sub.d	$a1, $a0, $s0
	st.w	$a1, $t7, 60
	ld.w	$a0, $s3, 0
	add.d	$s0, $fp, $a7
	sub.d	$a7, $a7, $fp
	sub.d	$fp, $t8, $s1
	add.d	$t8, $s1, $t8
	add.d	$s1, $t8, $s0
	mul.d	$s1, $a0, $s1
	ld.d	$t1, $sp, 72                    # 8-byte Folded Reload
	sll.w	$s1, $s1, $t1
	addi.w	$s1, $s1, 32
	srli.d	$s1, $s1, 6
	st.w	$s1, $t2, 0
	add.d	$s1, $fp, $a7
	mul.d	$s1, $a0, $s1
	sll.w	$s1, $s1, $t1
	addi.w	$s1, $s1, 32
	srli.d	$s1, $s1, 6
	st.w	$s1, $t2, 256
	sub.d	$a7, $a7, $fp
	mul.d	$a7, $a0, $a7
	sll.w	$a7, $a7, $t1
	addi.w	$a7, $a7, 32
	srli.d	$a7, $a7, 6
	st.w	$a7, $t2, 512
	sub.d	$a7, $s0, $t8
	mul.d	$a7, $a0, $a7
	sll.w	$a7, $a7, $t1
	addi.w	$a7, $a7, 32
	srli.d	$a7, $a7, 6
	st.w	$a7, $t2, 768
	add.d	$a7, $t0, $a3
	sub.d	$a3, $a3, $t0
	sub.d	$t0, $a5, $s2
	add.d	$a5, $s2, $a5
	add.d	$t8, $a5, $a7
	mul.d	$t8, $a0, $t8
	sll.w	$t8, $t8, $t1
	addi.w	$t8, $t8, 32
	srli.d	$t8, $t8, 6
	st.w	$t8, $t2, 64
	add.d	$t8, $t0, $a3
	mul.d	$t8, $a0, $t8
	sll.w	$t8, $t8, $t1
	addi.w	$t8, $t8, 32
	srli.d	$t8, $t8, 6
	st.w	$t8, $t2, 320
	sub.d	$a3, $a3, $t0
	mul.d	$a3, $a0, $a3
	sll.w	$a3, $a3, $t1
	addi.w	$a3, $a3, 32
	srli.d	$a3, $a3, 6
	st.w	$a3, $t2, 576
	sub.d	$a3, $a7, $a5
	mul.d	$a3, $a0, $a3
	sll.w	$a3, $a3, $t1
	addi.w	$a3, $a3, 32
	ld.w	$a5, $t7, 8
	srli.d	$a3, $a3, 6
	ld.w	$a7, $t7, 24
	st.w	$a3, $t2, 832
	add.d	$a3, $a4, $a5
	sub.d	$a4, $a5, $a4
	sub.d	$a5, $a7, $a6
	add.d	$a6, $a6, $a7
	add.d	$a7, $a6, $a3
	mul.d	$a7, $a0, $a7
	sll.w	$a7, $a7, $t1
	addi.w	$a7, $a7, 32
	srli.d	$a7, $a7, 6
	st.w	$a7, $t2, 128
	add.d	$a7, $a5, $a4
	mul.d	$a7, $a0, $a7
	sll.w	$a7, $a7, $t1
	addi.w	$a7, $a7, 32
	srli.d	$a7, $a7, 6
	st.w	$a7, $t2, 384
	sub.d	$a4, $a4, $a5
	mul.d	$a4, $a0, $a4
	sll.w	$a4, $a4, $t1
	addi.w	$a4, $a4, 32
	srli.d	$a4, $a4, 6
	st.w	$a4, $t2, 640
	sub.d	$a3, $a3, $a6
	mul.d	$a3, $a0, $a3
	sll.w	$a3, $a3, $t1
	addi.w	$a3, $a3, 32
	ld.w	$a4, $t7, 12
	ld.w	$a5, $t7, 44
	srli.d	$a3, $a3, 6
	ld.w	$a6, $t7, 28
	st.w	$a3, $t2, 896
	add.d	$a3, $a5, $a4
	sub.d	$a4, $a4, $a5
	sub.d	$a5, $a6, $a1
	add.d	$a1, $a1, $a6
	add.d	$a6, $a1, $a3
	mul.d	$a6, $a0, $a6
	sll.w	$a6, $a6, $t1
	addi.w	$a6, $a6, 32
	srli.d	$a6, $a6, 6
	st.w	$a6, $t2, 192
	add.d	$a6, $a5, $a4
	mul.d	$a6, $a0, $a6
	sll.w	$a6, $a6, $t1
	addi.w	$a6, $a6, 32
	srli.d	$a6, $a6, 6
	st.w	$a6, $t2, 448
	sub.d	$a4, $a4, $a5
	mul.d	$a4, $a0, $a4
	sll.w	$a4, $a4, $t1
	addi.w	$a4, $a4, 32
	srli.d	$a4, $a4, 6
	st.w	$a4, $t2, 704
	sub.d	$a1, $a3, $a1
	mul.d	$a0, $a0, $a1
	sll.w	$a0, $a0, $t1
	addi.w	$a0, $a0, 32
	srli.d	$a0, $a0, 6
	st.w	$a0, $t2, 960
	b	.LBB2_23
.LBB2_22:
	slli.d	$a0, $a1, 2
	stx.w	$zero, $t3, $a0
.LBB2_23:
	ldptr.d	$a1, $a2, 14160
	move	$a4, $zero
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	ori	$a0, $zero, 1
	sll.w	$t3, $a0, $t6
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 8
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$s3, $zero, 30
	b	.LBB2_26
	.p2align	4, , 16
.LBB2_24:                               # %.split579.us.loopexit
                                        #   in Loop: Header=BB2_26 Depth=1
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	slli.d	$a3, $a5, 2
	stx.w	$zero, $a0, $a3
.LBB2_25:                               # %.split579.us
                                        #   in Loop: Header=BB2_26 Depth=1
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	ld.d	$t2, $sp, 48                    # 8-byte Folded Reload
	ori	$a0, $zero, 4
	beq	$a4, $a0, .LBB2_63
.LBB2_26:                               # %.preheader492
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_35 Depth 2
                                        #       Child Loop BB2_38 Depth 3
                                        #     Child Loop BB2_29 Depth 2
                                        #     Child Loop BB2_47 Depth 2
                                        #     Child Loop BB2_53 Depth 2
                                        #     Child Loop BB2_59 Depth 2
	slli.d	$a0, $a4, 8
	andi	$a1, $a4, 2
	slli.d	$a3, $a4, 1
	andi	$t1, $a3, 2
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	slli.d	$s5, $a4, 2
	add.d	$s8, $t2, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB2_33
# %bb.27:                               # %.preheader491.us.preheader
                                        #   in Loop: Header=BB2_26 Depth=1
	xvld	$xr0, $s8, 32
	xvld	$xr1, $s8, 0
	xvst	$xr0, $t7, 32
	xvst	$xr1, $t7, 0
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ldx.d	$a5, $a1, $a0
	slli.d	$a3, $t1, 3
	ldx.d	$a6, $a5, $a3
	ld.d	$a4, $a6, 0
	ld.d	$a6, $a6, 8
	move	$a7, $zero
	move	$t0, $zero
	addi.d	$t8, $zero, -1
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	b	.LBB2_29
	.p2align	4, , 16
.LBB2_28:                               #   in Loop: Header=BB2_29 Depth=2
	addi.d	$a7, $a7, 2
	beq	$a7, $s3, .LBB2_45
.LBB2_29:                               #   Parent Loop BB2_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s0, $t5, $a7
	ld.bu	$fp, $s0, 3
	ld.bu	$s0, $s0, 2
	alsl.d	$s2, $fp, $t7, 4
	slli.d	$s0, $s0, 2
	ldx.w	$s2, $s2, $s0
	addi.d	$t8, $t8, 1
	beqz	$s2, .LBB2_31
# %bb.30:                               #   in Loop: Header=BB2_29 Depth=2
	srai.d	$a1, $s2, 31
	xor	$s4, $s2, $a1
	sub.d	$a1, $s4, $a1
	slti	$s2, $s2, 0
	sub.d	$s4, $zero, $a1
	masknez	$a1, $a1, $s2
	maskeqz	$s2, $s4, $s2
	or	$a1, $s2, $a1
	slli.d	$s2, $t0, 2
	stx.w	$a1, $a4, $s2
	stx.w	$t8, $a6, $s2
	addi.w	$t0, $t0, 1
	addi.d	$t8, $zero, -1
	ori	$s1, $zero, 15
.LBB2_31:                               #   in Loop: Header=BB2_29 Depth=2
	ldptr.w	$s2, $a2, 15260
	beqz	$s2, .LBB2_28
# %bb.32:                               #   in Loop: Header=BB2_29 Depth=2
	ldptr.d	$s2, $a2, 14176
	ld.d	$s2, $s2, 16
	alsl.d	$s2, $s5, $s2, 3
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $s2, $fp
	stx.w	$zero, $fp, $s0
	b	.LBB2_28
	.p2align	4, , 16
.LBB2_33:                               # %.preheader491.preheader
                                        #   in Loop: Header=BB2_26 Depth=1
	move	$ra, $zero
	st.d	$s8, $sp, 96                    # 8-byte Folded Spill
	st.d	$t1, $sp, 88                    # 8-byte Folded Spill
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	b	.LBB2_35
	.p2align	4, , 16
.LBB2_34:                               # %.preheader488
                                        #   in Loop: Header=BB2_35 Depth=2
	slli.d	$a0, $a7, 2
	stx.w	$zero, $a4, $a0
	ld.w	$a0, $t7, 0
	ld.w	$a1, $t7, 8
	ld.w	$a4, $t7, 4
	ld.w	$a5, $t7, 12
	add.d	$a7, $a1, $a0
	sub.d	$a0, $a0, $a1
	srai.d	$a1, $a4, 1
	sub.d	$a1, $a1, $a5
	srai.d	$a5, $a5, 1
	add.d	$a5, $a5, $a4
	add.d	$t0, $a5, $a7
	st.w	$t0, $t7, 0
	add.d	$a6, $a1, $a0
	st.w	$a6, $t7, 4
	sub.d	$a4, $a0, $a1
	st.w	$a4, $t7, 8
	sub.d	$a0, $a7, $a5
	ld.w	$a1, $t7, 16
	ld.w	$a5, $t7, 24
	st.w	$a0, $t7, 12
	ld.w	$a0, $t7, 20
	ld.w	$a7, $t7, 28
	add.d	$t1, $a5, $a1
	sub.d	$a1, $a1, $a5
	srai.d	$a5, $a0, 1
	sub.d	$a5, $a5, $a7
	srai.d	$a7, $a7, 1
	add.d	$a0, $a7, $a0
	add.w	$s4, $a0, $t1
	st.w	$s4, $t7, 16
	add.w	$s2, $a5, $a1
	st.w	$s2, $t7, 20
	sub.w	$a7, $a1, $a5
	st.w	$a7, $t7, 24
	sub.w	$a5, $t1, $a0
	ld.w	$a0, $t7, 32
	ld.w	$a1, $t7, 40
	st.w	$a5, $t7, 28
	ld.w	$t1, $t7, 36
	ld.w	$t8, $t7, 44
	add.d	$fp, $a1, $a0
	sub.d	$a0, $a0, $a1
	srai.d	$a1, $t1, 1
	sub.d	$a1, $a1, $t8
	srai.d	$t8, $t8, 1
	add.d	$t1, $t8, $t1
	add.d	$s0, $t1, $fp
	st.w	$s0, $t7, 32
	add.d	$s6, $a1, $a0
	st.w	$s6, $t7, 36
	sub.d	$a0, $a0, $a1
	st.w	$a0, $t7, 40
	sub.d	$t8, $fp, $t1
	ld.w	$a1, $t7, 48
	ld.w	$t1, $t7, 56
	st.w	$t8, $t7, 44
	ld.w	$fp, $t7, 52
	ld.w	$s7, $t7, 60
	add.d	$s8, $t1, $a1
	sub.d	$a1, $a1, $t1
	srai.d	$t1, $fp, 1
	sub.d	$t1, $t1, $s7
	srai.d	$s7, $s7, 1
	add.d	$fp, $s7, $fp
	add.w	$s7, $fp, $s8
	st.w	$s7, $t7, 48
	add.w	$t2, $t1, $a1
	st.w	$t2, $t7, 52
	sub.w	$a1, $a1, $t1
	st.w	$a1, $t7, 56
	sub.w	$t1, $s8, $fp
	st.w	$t1, $t7, 60
	add.d	$fp, $s0, $t0
	sub.d	$t0, $t0, $s0
	srli.d	$s0, $s4, 1
	sub.d	$s0, $s0, $s7
	srli.d	$s7, $s7, 1
	add.d	$s4, $s7, $s4
	add.d	$s7, $s4, $fp
	ld.d	$s8, $sp, 96                    # 8-byte Folded Reload
	move	$s1, $t3
	ld.d	$t3, $sp, 112                   # 8-byte Folded Reload
	stx.w	$s7, $s8, $t3
	move	$t3, $s1
	add.d	$s7, $s0, $t0
	st.w	$s7, $a3, 16
	sub.d	$t0, $t0, $s0
	st.w	$t0, $a3, 32
	sub.d	$t0, $fp, $s4
	st.w	$t0, $a3, 48
	add.d	$t0, $s6, $a6
	sub.d	$a6, $a6, $s6
	srli.d	$fp, $s2, 1
	sub.d	$fp, $fp, $t2
	srli.d	$t2, $t2, 1
	add.d	$t2, $t2, $s2
	add.d	$s0, $t2, $t0
	st.w	$s0, $a3, 4
	add.d	$s0, $fp, $a6
	st.w	$s0, $a3, 20
	sub.d	$a6, $a6, $fp
	st.w	$a6, $a3, 36
	sub.d	$a6, $t0, $t2
	st.w	$a6, $a3, 52
	add.d	$a6, $a0, $a4
	sub.d	$a0, $a4, $a0
	srli.d	$a4, $a7, 1
	sub.d	$a4, $a4, $a1
	srli.d	$a1, $a1, 1
	add.d	$a1, $a1, $a7
	add.d	$a7, $a1, $a6
	st.w	$a7, $a3, 8
	add.d	$a7, $a4, $a0
	st.w	$a7, $a3, 24
	sub.d	$a0, $a0, $a4
	ld.w	$a4, $t7, 12
	st.w	$a0, $a3, 40
	sub.d	$a0, $a6, $a1
	st.w	$a0, $a3, 56
	add.d	$a0, $t8, $a4
	sub.d	$a1, $a4, $t8
	srli.d	$a4, $a5, 1
	sub.d	$a4, $a4, $t1
	srli.d	$a6, $t1, 1
	add.d	$a5, $a6, $a5
	add.d	$a6, $a5, $a0
	st.w	$a6, $a3, 12
	add.d	$a6, $a4, $a1
	st.w	$a6, $a3, 28
	sub.d	$a1, $a1, $a4
	st.w	$a1, $a3, 44
	sub.d	$a0, $a0, $a5
	addi.d	$ra, $ra, 1
	st.w	$a0, $a3, 60
	ori	$a0, $zero, 4
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	beq	$ra, $a0, .LBB2_25
.LBB2_35:                               # %.preheader491
                                        #   Parent Loop BB2_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_38 Depth 3
	slli.d	$a0, $ra, 6
	add.d	$a3, $s8, $a0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	xvldx	$xr0, $s8, $a0
	xvld	$xr1, $a3, 32
	xvst	$xr0, $t7, 0
	xvst	$xr1, $t7, 32
	bstrpick.d	$a4, $ra, 31, 1
	or	$a4, $a4, $a1
	slli.d	$a4, $a4, 3
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ldx.d	$a4, $a0, $a4
	andi	$a5, $ra, 1
	or	$a5, $a5, $t1
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a4, $a5
	ld.d	$a4, $a5, 0
	ld.d	$a5, $a5, 8
	move	$a6, $zero
	move	$a7, $zero
	slli.d	$t0, $ra, 4
	addi.d	$t8, $zero, -1
	ld.d	$t2, $sp, 72                    # 8-byte Folded Reload
	b	.LBB2_38
	.p2align	4, , 16
.LBB2_36:                               # %.split465
                                        #   in Loop: Header=BB2_38 Depth=3
	slti	$a0, $fp, 0
	srai.d	$a1, $s8, 31
	xor	$t1, $s8, $a1
	sub.d	$a1, $t1, $a1
	sub.d	$t1, $zero, $a1
	masknez	$fp, $a1, $a0
	maskeqz	$a0, $t1, $a0
	or	$a0, $a0, $fp
	slli.d	$fp, $a7, 2
	stx.w	$a0, $a4, $fp
	stx.w	$t8, $a5, $fp
	ld.w	$a0, $s0, 0
	addi.w	$a7, $a7, 1
	slti	$a0, $a0, 0
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $t1, $a0
	or	$fp, $a0, $a1
	addi.d	$t8, $zero, -1
	ori	$a0, $zero, 15
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
.LBB2_37:                               # %.split463
                                        #   in Loop: Header=BB2_38 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $s4
	ldx.w	$a0, $a0, $s2
	mul.d	$a0, $a0, $fp
	sll.w	$a0, $a0, $t2
	addi.w	$a0, $a0, 8
	srli.d	$a0, $a0, 4
	addi.d	$a6, $a6, 2
	st.w	$a0, $s0, 0
	beq	$a6, $s3, .LBB2_34
.LBB2_38:                               #   Parent Loop BB2_26 Depth=1
                                        #     Parent Loop BB2_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$fp, $t5, $a6
	ld.bu	$s4, $fp, 3
	ld.bu	$s0, $fp, 2
	alsl.d	$s7, $s4, $t7, 4
	slli.d	$s2, $s0, 2
	ldx.w	$fp, $s7, $s2
	slli.d	$s4, $s4, 3
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$s6, $a0, $s4
	ldx.d	$s8, $t4, $s4
	srai.d	$a0, $fp, 31
	xor	$a1, $fp, $a0
	ldx.w	$s6, $s6, $s2
	ldx.w	$s8, $s8, $s2
	ldptr.w	$t1, $a2, 15260
	sub.d	$a0, $a1, $a0
	mul.d	$s6, $s6, $a0
	add.d	$a0, $s8, $s6
	sra.w	$s8, $a0, $t6
	beqz	$t1, .LBB2_43
# %bb.39:                               #   in Loop: Header=BB2_38 Depth=3
	beqz	$s8, .LBB2_41
# %bb.40:                               #   in Loop: Header=BB2_38 Depth=3
	pcalau12i	$a0, %got_pc_hi20(AdaptRndWeight)
	ld.d	$a0, $a0, %got_pc_lo12(AdaptRndWeight)
	ld.w	$a0, $a0, 0
	sll.w	$a1, $s8, $t6
	sub.d	$a1, $s6, $a1
	mul.d	$a0, $a0, $a1
	add.d	$a0, $a0, $t3
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	sra.w	$s6, $a0, $a1
	b	.LBB2_42
	.p2align	4, , 16
.LBB2_41:                               #   in Loop: Header=BB2_38 Depth=3
	move	$s6, $zero
.LBB2_42:                               #   in Loop: Header=BB2_38 Depth=3
	ldptr.d	$a0, $a2, 14176
	ld.d	$a0, $a0, 16
	alsl.d	$a0, $s5, $a0, 3
	ldx.d	$a0, $a0, $s4
	add.d	$a0, $a0, $t0
	stx.w	$s6, $a0, $s2
.LBB2_43:                               #   in Loop: Header=BB2_38 Depth=3
	addi.d	$t8, $t8, 1
	alsl.d	$s0, $s0, $s7, 2
	bnez	$s8, .LBB2_36
# %bb.44:                               #   in Loop: Header=BB2_38 Depth=3
	move	$fp, $zero
	b	.LBB2_37
	.p2align	4, , 16
.LBB2_45:                               # %.preheader491.us.1
                                        #   in Loop: Header=BB2_26 Depth=1
	slli.d	$a6, $t0, 2
	stx.w	$zero, $a4, $a6
	xvld	$xr0, $s8, 96
	xvld	$xr1, $s8, 64
	xvst	$xr0, $t7, 32
	xvst	$xr1, $t7, 0
	ori	$a4, $t1, 1
	slli.d	$a4, $a4, 3
	ldx.d	$a6, $a5, $a4
	ld.d	$a5, $a6, 0
	ld.d	$a6, $a6, 8
	move	$a7, $zero
	move	$t0, $zero
	addi.d	$t8, $zero, -1
	b	.LBB2_47
	.p2align	4, , 16
.LBB2_46:                               #   in Loop: Header=BB2_47 Depth=2
	addi.d	$a7, $a7, 2
	beq	$a7, $s3, .LBB2_51
.LBB2_47:                               #   Parent Loop BB2_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$fp, $t5, $a7
	ld.bu	$s0, $fp, 3
	ld.bu	$fp, $fp, 2
	alsl.d	$s2, $s0, $t7, 4
	slli.d	$s4, $fp, 2
	ldx.w	$s2, $s2, $s4
	addi.d	$t8, $t8, 1
	beqz	$s2, .LBB2_49
# %bb.48:                               #   in Loop: Header=BB2_47 Depth=2
	srai.d	$a1, $s2, 31
	xor	$s4, $s2, $a1
	sub.d	$a1, $s4, $a1
	slti	$s2, $s2, 0
	sub.d	$s4, $zero, $a1
	masknez	$a1, $a1, $s2
	maskeqz	$s2, $s4, $s2
	or	$a1, $s2, $a1
	slli.d	$s2, $t0, 2
	stx.w	$a1, $a5, $s2
	stx.w	$t8, $a6, $s2
	addi.w	$t0, $t0, 1
	addi.d	$t8, $zero, -1
	ori	$s1, $zero, 15
.LBB2_49:                               #   in Loop: Header=BB2_47 Depth=2
	ldptr.w	$s2, $a2, 15260
	beqz	$s2, .LBB2_46
# %bb.50:                               #   in Loop: Header=BB2_47 Depth=2
	ldptr.d	$s2, $a2, 14176
	ld.d	$s2, $s2, 16
	alsl.d	$s2, $s5, $s2, 3
	slli.d	$s0, $s0, 3
	ldx.d	$s0, $s2, $s0
	alsl.d	$fp, $fp, $s0, 2
	st.w	$zero, $fp, 16
	b	.LBB2_46
	.p2align	4, , 16
.LBB2_51:                               # %.preheader491.us.2
                                        #   in Loop: Header=BB2_26 Depth=1
	slli.d	$a6, $t0, 2
	stx.w	$zero, $a5, $a6
	xvld	$xr0, $s8, 160
	xvld	$xr1, $s8, 128
	xvst	$xr0, $t7, 32
	xvst	$xr1, $t7, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ldx.d	$a5, $a0, $a3
	ld.d	$a3, $a5, 0
	ld.d	$a5, $a5, 8
	move	$a6, $zero
	move	$a7, $zero
	addi.d	$t0, $zero, -1
	b	.LBB2_53
	.p2align	4, , 16
.LBB2_52:                               #   in Loop: Header=BB2_53 Depth=2
	addi.d	$a6, $a6, 2
	beq	$a6, $s3, .LBB2_57
.LBB2_53:                               #   Parent Loop BB2_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t8, $t5, $a6
	ld.bu	$fp, $t8, 3
	ld.bu	$t8, $t8, 2
	alsl.d	$s0, $fp, $t7, 4
	slli.d	$s2, $t8, 2
	ldx.w	$s0, $s0, $s2
	addi.d	$t0, $t0, 1
	beqz	$s0, .LBB2_55
# %bb.54:                               #   in Loop: Header=BB2_53 Depth=2
	srai.d	$a1, $s0, 31
	xor	$s2, $s0, $a1
	sub.d	$a1, $s2, $a1
	slti	$s0, $s0, 0
	sub.d	$s2, $zero, $a1
	masknez	$a1, $a1, $s0
	maskeqz	$s0, $s2, $s0
	or	$a1, $s0, $a1
	slli.d	$s0, $a7, 2
	stx.w	$a1, $a3, $s0
	stx.w	$t0, $a5, $s0
	addi.w	$a7, $a7, 1
	addi.d	$t0, $zero, -1
	ori	$s1, $zero, 15
.LBB2_55:                               #   in Loop: Header=BB2_53 Depth=2
	ldptr.w	$s0, $a2, 15260
	beqz	$s0, .LBB2_52
# %bb.56:                               #   in Loop: Header=BB2_53 Depth=2
	ldptr.d	$s0, $a2, 14176
	ld.d	$s0, $s0, 16
	alsl.d	$s0, $s5, $s0, 3
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $s0, $fp
	alsl.d	$t8, $t8, $fp, 2
	st.w	$zero, $t8, 32
	b	.LBB2_52
	.p2align	4, , 16
.LBB2_57:                               # %.preheader491.us.3
                                        #   in Loop: Header=BB2_26 Depth=1
	slli.d	$a5, $a7, 2
	stx.w	$zero, $a3, $a5
	xvld	$xr0, $s8, 224
	xvld	$xr1, $s8, 192
	xvst	$xr0, $t7, 32
	xvst	$xr1, $t7, 0
	ldx.d	$a3, $a0, $a4
	ld.d	$a0, $a3, 0
	ld.d	$a3, $a3, 8
	move	$a4, $zero
	move	$a5, $zero
	addi.d	$a6, $zero, -1
	b	.LBB2_59
	.p2align	4, , 16
.LBB2_58:                               #   in Loop: Header=BB2_59 Depth=2
	addi.d	$a4, $a4, 2
	beq	$a4, $s3, .LBB2_24
.LBB2_59:                               #   Parent Loop BB2_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a7, $t5, $a4
	ld.bu	$t0, $a7, 3
	ld.bu	$a7, $a7, 2
	alsl.d	$t8, $t0, $t7, 4
	slli.d	$fp, $a7, 2
	ldx.w	$t8, $t8, $fp
	addi.d	$a6, $a6, 1
	beqz	$t8, .LBB2_61
# %bb.60:                               #   in Loop: Header=BB2_59 Depth=2
	srai.d	$a1, $t8, 31
	xor	$fp, $t8, $a1
	sub.d	$a1, $fp, $a1
	slti	$t8, $t8, 0
	sub.d	$fp, $zero, $a1
	masknez	$a1, $a1, $t8
	maskeqz	$t8, $fp, $t8
	or	$a1, $t8, $a1
	slli.d	$t8, $a5, 2
	stx.w	$a1, $a0, $t8
	stx.w	$a6, $a3, $t8
	addi.w	$a5, $a5, 1
	addi.d	$a6, $zero, -1
	ori	$s1, $zero, 15
.LBB2_61:                               #   in Loop: Header=BB2_59 Depth=2
	ldptr.w	$t8, $a2, 15260
	beqz	$t8, .LBB2_58
# %bb.62:                               #   in Loop: Header=BB2_59 Depth=2
	ldptr.d	$t8, $a2, 14176
	ld.d	$t8, $t8, 16
	alsl.d	$t8, $s5, $t8, 3
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $t8, $t0
	alsl.d	$a7, $a7, $t0, 2
	st.w	$zero, $a7, 48
	b	.LBB2_58
.LBB2_63:                               # %.preheader485.preheader
	move	$a0, $zero
	ori	$a3, $zero, 1024
	ld.d	$t8, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_64:                               # %.preheader485
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $t8, $a0
	vldx	$vr0, $t2, $a0
	add.d	$a4, $t2, $a0
	vld	$vr1, $a4, 16
	vld	$vr2, $a4, 32
	vstx	$vr0, $t8, $a0
	vld	$vr0, $a4, 48
	vst	$vr1, $a1, 64
	vst	$vr2, $a1, 128
	vld	$vr1, $a4, 64
	vst	$vr0, $a1, 192
	vld	$vr0, $a4, 80
	vld	$vr2, $a4, 96
	vst	$vr1, $a1, 16
	vld	$vr1, $a4, 112
	vst	$vr0, $a1, 80
	vst	$vr2, $a1, 144
	vld	$vr0, $a4, 128
	vst	$vr1, $a1, 208
	vld	$vr1, $a4, 144
	vld	$vr2, $a4, 160
	vst	$vr0, $a1, 32
	vld	$vr0, $a4, 176
	vst	$vr1, $a1, 96
	vst	$vr2, $a1, 160
	vld	$vr1, $a4, 192
	vst	$vr0, $a1, 224
	vld	$vr0, $a4, 208
	vld	$vr2, $a4, 224
	vst	$vr1, $a1, 48
	vld	$vr1, $a4, 240
	vst	$vr0, $a1, 112
	vst	$vr2, $a1, 176
	addi.d	$a0, $a0, 256
	vst	$vr1, $a1, 240
	bne	$a0, $a3, .LBB2_64
# %bb.65:
	ld.w	$a0, $a2, 20
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	beqz	$a1, .LBB2_69
# %bb.66:
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB2_74
# %bb.67:                               # %.preheader
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a1, $a0, 0
	move	$a0, $zero
	ldptr.d	$a3, $a1, 6440
	pcalau12i	$a1, %pc_hi20(lrec)
	ld.d	$a4, $a1, %pc_lo12(lrec)
	slli.d	$a1, $a6, 9
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	add.d	$a1, $a5, $a1
	addi.d	$a5, $a1, 30
	pcalau12i	$a1, %pc_hi20(dct_luma_16x16.M1+32)
	addi.d	$a6, $a1, %pc_lo12(dct_luma_16x16.M1+32)
	addi.w	$a7, $zero, -16
	lu32i.d	$a7, 0
	ori	$t0, $zero, 16
	.p2align	4, , 16
.LBB2_68:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a2, 180
	add.d	$a1, $a0, $a1
	slli.d	$a1, $a1, 3
	ld.h	$t3, $a6, -32
	ld.h	$t4, $a5, -30
	ld.w	$t5, $a2, 176
	ldx.d	$t2, $a3, $a1
	ldx.d	$t1, $a4, $a1
	add.d	$a1, $t4, $t3
	slli.d	$t3, $t5, 1
	stx.h	$a1, $t2, $t3
	slli.d	$a1, $t5, 2
	stx.w	$a7, $t1, $a1
	ld.h	$a1, $a6, -28
	ld.h	$t3, $a5, -28
	ld.w	$t4, $a2, 176
	add.d	$a1, $t3, $a1
	addi.w	$t3, $t4, 1
	slli.d	$t4, $t3, 1
	stx.h	$a1, $t2, $t4
	slli.d	$a1, $t3, 2
	stx.w	$a7, $t1, $a1
	ld.h	$a1, $a6, -24
	ld.h	$t3, $a5, -26
	ld.w	$t4, $a2, 176
	add.d	$a1, $t3, $a1
	addi.w	$t3, $t4, 2
	slli.d	$t4, $t3, 1
	stx.h	$a1, $t2, $t4
	slli.d	$a1, $t3, 2
	stx.w	$a7, $t1, $a1
	ld.h	$a1, $a6, -20
	ld.h	$t3, $a5, -24
	ld.w	$t4, $a2, 176
	add.d	$a1, $t3, $a1
	addi.w	$t3, $t4, 3
	slli.d	$t4, $t3, 1
	stx.h	$a1, $t2, $t4
	slli.d	$a1, $t3, 2
	stx.w	$a7, $t1, $a1
	ld.h	$a1, $a6, -16
	ld.h	$t3, $a5, -22
	ld.w	$t4, $a2, 176
	add.d	$a1, $t3, $a1
	addi.w	$t3, $t4, 4
	slli.d	$t4, $t3, 1
	stx.h	$a1, $t2, $t4
	slli.d	$a1, $t3, 2
	stx.w	$a7, $t1, $a1
	ld.h	$a1, $a6, -12
	ld.h	$t3, $a5, -20
	ld.w	$t4, $a2, 176
	add.d	$a1, $t3, $a1
	addi.w	$t3, $t4, 5
	slli.d	$t4, $t3, 1
	stx.h	$a1, $t2, $t4
	slli.d	$a1, $t3, 2
	stx.w	$a7, $t1, $a1
	ld.h	$a1, $a6, -8
	ld.h	$t3, $a5, -18
	ld.w	$t4, $a2, 176
	add.d	$a1, $t3, $a1
	addi.w	$t3, $t4, 6
	slli.d	$t4, $t3, 1
	stx.h	$a1, $t2, $t4
	slli.d	$a1, $t3, 2
	stx.w	$a7, $t1, $a1
	ld.h	$a1, $a6, -4
	ld.h	$t3, $a5, -16
	ld.w	$t4, $a2, 176
	add.d	$a1, $t3, $a1
	addi.w	$t3, $t4, 7
	slli.d	$t4, $t3, 1
	stx.h	$a1, $t2, $t4
	slli.d	$a1, $t3, 2
	stx.w	$a7, $t1, $a1
	ld.h	$a1, $a6, 0
	ld.h	$t3, $a5, -14
	ld.w	$t4, $a2, 176
	add.d	$a1, $t3, $a1
	addi.w	$t3, $t4, 8
	slli.d	$t4, $t3, 1
	stx.h	$a1, $t2, $t4
	slli.d	$a1, $t3, 2
	stx.w	$a7, $t1, $a1
	ld.h	$a1, $a6, 4
	ld.h	$t3, $a5, -12
	ld.w	$t4, $a2, 176
	add.d	$a1, $t3, $a1
	addi.w	$t3, $t4, 9
	slli.d	$t4, $t3, 1
	stx.h	$a1, $t2, $t4
	slli.d	$a1, $t3, 2
	stx.w	$a7, $t1, $a1
	ld.h	$a1, $a6, 8
	ld.h	$t3, $a5, -10
	ld.w	$t4, $a2, 176
	add.d	$a1, $t3, $a1
	addi.w	$t3, $t4, 10
	slli.d	$t4, $t3, 1
	stx.h	$a1, $t2, $t4
	slli.d	$a1, $t3, 2
	stx.w	$a7, $t1, $a1
	ld.h	$a1, $a6, 12
	ld.h	$t3, $a5, -8
	ld.w	$t4, $a2, 176
	add.d	$a1, $t3, $a1
	addi.w	$t3, $t4, 11
	slli.d	$t4, $t3, 1
	stx.h	$a1, $t2, $t4
	slli.d	$a1, $t3, 2
	stx.w	$a7, $t1, $a1
	ld.h	$a1, $a6, 16
	ld.h	$t3, $a5, -6
	ld.w	$t4, $a2, 176
	add.d	$a1, $t3, $a1
	addi.w	$t3, $t4, 12
	slli.d	$t4, $t3, 1
	stx.h	$a1, $t2, $t4
	slli.d	$a1, $t3, 2
	stx.w	$a7, $t1, $a1
	ld.h	$a1, $a6, 20
	ld.h	$t3, $a5, -4
	ld.w	$t4, $a2, 176
	add.d	$a1, $t3, $a1
	addi.w	$t3, $t4, 13
	slli.d	$t4, $t3, 1
	stx.h	$a1, $t2, $t4
	slli.d	$a1, $t3, 2
	stx.w	$a7, $t1, $a1
	ld.h	$a1, $a6, 24
	ld.h	$t3, $a5, -2
	ld.w	$t4, $a2, 176
	add.d	$a1, $t3, $a1
	addi.w	$t3, $t4, 14
	slli.d	$t4, $t3, 1
	stx.h	$a1, $t2, $t4
	slli.d	$a1, $t3, 2
	stx.w	$a7, $t1, $a1
	ld.h	$a1, $a6, 28
	ld.h	$t3, $a5, 0
	ld.w	$t4, $a2, 176
	add.d	$a1, $t3, $a1
	addi.w	$t3, $t4, 15
	slli.d	$t4, $t3, 1
	stx.h	$a1, $t2, $t4
	slli.d	$a1, $t3, 2
	stx.w	$a7, $t1, $a1
	addi.d	$a0, $a0, 1
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 64
	bne	$a0, $t0, .LBB2_68
	b	.LBB2_78
.LBB2_69:
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB2_76
# %bb.70:                               # %.preheader480
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a1, $a0, 0
	move	$a0, $zero
	ldptr.d	$a3, $a1, 6440
	pcalau12i	$a1, %pc_hi20(lrec)
	ld.d	$a4, $a1, %pc_lo12(lrec)
	slli.d	$a1, $a6, 9
	add.d	$a1, $a1, $a2
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	add.d	$a5, $a1, $a5
	addi.w	$a6, $zero, -16
	lu32i.d	$a6, 0
	ori	$a7, $zero, 16
	.p2align	4, , 16
.LBB2_71:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_72 Depth 2
	ld.w	$a1, $a2, 180
	add.w	$a1, $a1, $a0
	slli.d	$a1, $a1, 3
	ldx.d	$t0, $a3, $a1
	ldx.d	$t1, $a4, $a1
	move	$t2, $zero
	move	$t3, $a5
	move	$t4, $t8
	.p2align	4, , 16
.LBB2_72:                               #   Parent Loop BB2_71 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a1, $t3, 0
	ld.w	$t5, $t4, 0
	ldptr.w	$t6, $a2, 15520
	slli.d	$a1, $a1, 6
	add.d	$a1, $t5, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t5, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t5, $a1
	slt	$t5, $a1, $t6
	ld.w	$t7, $a2, 176
	maskeqz	$a1, $a1, $t5
	masknez	$t5, $t6, $t5
	or	$a1, $a1, $t5
	add.d	$t5, $t2, $t7
	slli.d	$t6, $t5, 1
	stx.h	$a1, $t0, $t6
	slli.d	$a1, $t5, 2
	stx.w	$a6, $t1, $a1
	addi.d	$t2, $t2, 1
	addi.d	$t4, $t4, 4
	addi.d	$t3, $t3, 2
	bne	$t2, $a7, .LBB2_72
# %bb.73:                               #   in Loop: Header=BB2_71 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$t8, $t8, 64
	addi.d	$a5, $a5, 32
	bne	$a0, $a7, .LBB2_71
	b	.LBB2_78
.LBB2_74:                               # %.preheader478
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a2, 180
	ldptr.d	$a3, $a0, 6440
	move	$a0, $zero
	ld.w	$a2, $a2, 176
	alsl.d	$a3, $a1, $a3, 3
	slli.d	$a1, $a6, 9
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	addi.d	$a4, $a1, 30
	pcalau12i	$a1, %pc_hi20(dct_luma_16x16.M1+32)
	addi.d	$a5, $a1, %pc_lo12(dct_luma_16x16.M1+32)
	slli.d	$a6, $a2, 1
	ori	$a7, $zero, 128
	.p2align	4, , 16
.LBB2_75:                               # =>This Inner Loop Header: Depth=1
	ld.h	$a1, $a5, -32
	ld.h	$t0, $a4, -30
	ldx.d	$t1, $a3, $a0
	add.d	$a1, $t0, $a1
	stx.h	$a1, $t1, $a6
	ld.h	$a1, $a5, -28
	ld.h	$t2, $a4, -28
	alsl.d	$t0, $a2, $t1, 1
	add.d	$a1, $t2, $a1
	st.h	$a1, $t0, 2
	ld.h	$a1, $a5, -24
	ld.h	$t1, $a4, -26
	add.d	$a1, $t1, $a1
	st.h	$a1, $t0, 4
	ld.h	$a1, $a5, -20
	ld.h	$t1, $a4, -24
	add.d	$a1, $t1, $a1
	st.h	$a1, $t0, 6
	ld.h	$a1, $a5, -16
	ld.h	$t1, $a4, -22
	add.d	$a1, $t1, $a1
	st.h	$a1, $t0, 8
	ld.h	$a1, $a5, -12
	ld.h	$t1, $a4, -20
	add.d	$a1, $t1, $a1
	st.h	$a1, $t0, 10
	ld.h	$a1, $a5, -8
	ld.h	$t1, $a4, -18
	add.d	$a1, $t1, $a1
	st.h	$a1, $t0, 12
	ld.h	$a1, $a5, -4
	ld.h	$t1, $a4, -16
	add.d	$a1, $t1, $a1
	st.h	$a1, $t0, 14
	ld.h	$a1, $a5, 0
	ld.h	$t1, $a4, -14
	add.d	$a1, $t1, $a1
	st.h	$a1, $t0, 16
	ld.h	$a1, $a5, 4
	ld.h	$t1, $a4, -12
	add.d	$a1, $t1, $a1
	st.h	$a1, $t0, 18
	ld.h	$a1, $a5, 8
	ld.h	$t1, $a4, -10
	add.d	$a1, $t1, $a1
	st.h	$a1, $t0, 20
	ld.h	$a1, $a5, 12
	ld.h	$t1, $a4, -8
	add.d	$a1, $t1, $a1
	st.h	$a1, $t0, 22
	ld.h	$a1, $a5, 16
	ld.h	$t1, $a4, -6
	add.d	$a1, $t1, $a1
	st.h	$a1, $t0, 24
	ld.h	$a1, $a5, 20
	ld.h	$t1, $a4, -4
	add.d	$a1, $t1, $a1
	st.h	$a1, $t0, 26
	ld.h	$a1, $a5, 24
	ld.h	$t1, $a4, -2
	add.d	$a1, $t1, $a1
	st.h	$a1, $t0, 28
	ld.h	$a1, $a5, 28
	ld.h	$t1, $a4, 0
	add.d	$a1, $t1, $a1
	st.h	$a1, $t0, 30
	addi.d	$a0, $a0, 8
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 64
	bne	$a0, $a7, .LBB2_75
	b	.LBB2_78
.LBB2_76:                               # %.preheader482
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a0, $a0, 0
	move	$a3, $zero
	ld.w	$a1, $a2, 180
	ldptr.d	$a4, $a0, 6440
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3232
	ldx.w	$a0, $a2, $a0
	ld.w	$a2, $a2, 176
	alsl.d	$a5, $a1, $a4, 3
	slli.d	$a1, $a6, 9
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	addi.d	$a6, $a1, 30
	addi.d	$a4, $t8, 32
	slli.d	$a7, $a2, 1
	ori	$t0, $zero, 128
	.p2align	4, , 16
.LBB2_77:                               # =>This Inner Loop Header: Depth=1
	ld.hu	$a1, $a6, -30
	ld.w	$t1, $a4, -32
	ldx.d	$t2, $a5, $a3
	slli.d	$a1, $a1, 6
	add.d	$a1, $t1, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t1, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t1, $a1
	slt	$t1, $a1, $a0
	maskeqz	$a1, $a1, $t1
	masknez	$t1, $a0, $t1
	or	$a1, $a1, $t1
	stx.h	$a1, $t2, $a7
	ld.hu	$a1, $a6, -28
	ld.w	$t3, $a4, -28
	alsl.d	$t1, $a2, $t2, 1
	slli.d	$a1, $a1, 6
	add.d	$a1, $t3, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $a0
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $a0, $t2
	or	$a1, $a1, $t2
	st.h	$a1, $t1, 2
	ld.hu	$a1, $a6, -26
	ld.w	$t2, $a4, -24
	slli.d	$a1, $a1, 6
	add.d	$a1, $t2, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $a0
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $a0, $t2
	or	$a1, $a1, $t2
	st.h	$a1, $t1, 4
	ld.hu	$a1, $a6, -24
	ld.w	$t2, $a4, -20
	slli.d	$a1, $a1, 6
	add.d	$a1, $t2, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $a0
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $a0, $t2
	or	$a1, $a1, $t2
	st.h	$a1, $t1, 6
	ld.hu	$a1, $a6, -22
	ld.w	$t2, $a4, -16
	slli.d	$a1, $a1, 6
	add.d	$a1, $t2, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $a0
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $a0, $t2
	or	$a1, $a1, $t2
	st.h	$a1, $t1, 8
	ld.hu	$a1, $a6, -20
	ld.w	$t2, $a4, -12
	slli.d	$a1, $a1, 6
	add.d	$a1, $t2, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $a0
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $a0, $t2
	or	$a1, $a1, $t2
	st.h	$a1, $t1, 10
	ld.hu	$a1, $a6, -18
	ld.w	$t2, $a4, -8
	slli.d	$a1, $a1, 6
	add.d	$a1, $t2, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $a0
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $a0, $t2
	or	$a1, $a1, $t2
	st.h	$a1, $t1, 12
	ld.hu	$a1, $a6, -16
	ld.w	$t2, $a4, -4
	slli.d	$a1, $a1, 6
	add.d	$a1, $t2, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $a0
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $a0, $t2
	or	$a1, $a1, $t2
	st.h	$a1, $t1, 14
	ld.hu	$a1, $a6, -14
	ld.w	$t2, $a4, 0
	slli.d	$a1, $a1, 6
	add.d	$a1, $t2, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $a0
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $a0, $t2
	or	$a1, $a1, $t2
	st.h	$a1, $t1, 16
	ld.hu	$a1, $a6, -12
	ld.w	$t2, $a4, 4
	slli.d	$a1, $a1, 6
	add.d	$a1, $t2, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $a0
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $a0, $t2
	or	$a1, $a1, $t2
	st.h	$a1, $t1, 18
	ld.hu	$a1, $a6, -10
	ld.w	$t2, $a4, 8
	slli.d	$a1, $a1, 6
	add.d	$a1, $t2, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $a0
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $a0, $t2
	or	$a1, $a1, $t2
	st.h	$a1, $t1, 20
	ld.hu	$a1, $a6, -8
	ld.w	$t2, $a4, 12
	slli.d	$a1, $a1, 6
	add.d	$a1, $t2, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $a0
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $a0, $t2
	or	$a1, $a1, $t2
	st.h	$a1, $t1, 22
	ld.hu	$a1, $a6, -6
	ld.w	$t2, $a4, 16
	slli.d	$a1, $a1, 6
	add.d	$a1, $t2, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $a0
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $a0, $t2
	or	$a1, $a1, $t2
	st.h	$a1, $t1, 24
	ld.hu	$a1, $a6, -4
	ld.w	$t2, $a4, 20
	slli.d	$a1, $a1, 6
	add.d	$a1, $t2, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $a0
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $a0, $t2
	or	$a1, $a1, $t2
	st.h	$a1, $t1, 26
	ld.hu	$a1, $a6, -2
	ld.w	$t2, $a4, 24
	slli.d	$a1, $a1, 6
	add.d	$a1, $t2, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $a0
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $a0, $t2
	or	$a1, $a1, $t2
	st.h	$a1, $t1, 28
	ld.hu	$a1, $a6, 0
	ld.w	$t2, $a4, 28
	slli.d	$a1, $a1, 6
	add.d	$a1, $t2, $a1
	addi.w	$a1, $a1, 32
	srai.d	$t2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $t2, $a1
	slt	$t2, $a1, $a0
	maskeqz	$a1, $a1, $t2
	masknez	$t2, $a0, $t2
	or	$a1, $a1, $t2
	st.h	$a1, $t1, 30
	addi.d	$a3, $a3, 8
	addi.d	$a6, $a6, 32
	addi.d	$a4, $a4, 64
	bne	$a3, $t0, .LBB2_77
.LBB2_78:                               # %.loopexit
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
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
.Lfunc_end2:
	.size	dct_luma_16x16, .Lfunc_end2-dct_luma_16x16
                                        # -- End function
	.globl	dct_luma                        # -- Begin function dct_luma
	.p2align	5
	.type	dct_luma,@function
dct_luma:                               # @dct_luma
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
	move	$t6, $a1
	move	$t7, $a0
	srli.d	$a0, $a0, 2
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	srli.d	$a4, $t6, 2
	addi.w	$a5, $zero, -2
	lu52i.d	$a6, $a5, 511
	ld.d	$a5, $a1, 0
	and	$a1, $a4, $a6
	srli.d	$a4, $t7, 3
	add.d	$a1, $a1, $a4
	ldptr.d	$a4, $a5, 14160
	bstrpick.d	$a6, $t6, 2, 2
	bstrins.d	$a0, $a6, 63, 1
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a4, $a1
	ld.w	$a4, $a5, 12
	ldptr.d	$a6, $a5, 14224
	slli.d	$a7, $a0, 3
	ori	$a0, $zero, 536
	mul.d	$a0, $a4, $a0
	add.d	$a0, $a6, $a0
	lu12i.w	$s0, 3
	ori	$a4, $s0, 3164
	ldx.w	$t0, $a5, $a4
	ld.w	$t1, $a0, 8
	ldx.d	$a4, $a1, $a7
	sub.w	$a6, $zero, $t0
	move	$a1, $zero
	bne	$t1, $a6, .LBB3_2
# %bb.1:
	ldptr.w	$a1, $a5, 15540
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
.LBB3_2:
	ld.w	$a0, $a0, 428
	ld.d	$s2, $a4, 0
	ld.d	$s3, $a4, 8
	sltui	$a0, $a0, 1
	pcalau12i	$a4, %pc_hi20(FIELD_SCAN)
	addi.d	$a4, $a4, %pc_lo12(FIELD_SCAN)
	masknez	$a4, $a4, $a0
	pcalau12i	$a6, %pc_hi20(SNGL_SCAN)
	addi.d	$a6, $a6, %pc_lo12(SNGL_SCAN)
	maskeqz	$a0, $a6, $a0
	or	$s4, $a0, $a4
	ori	$t8, $s0, 848
	beqz	$a1, .LBB3_9
# %bb.3:                                # %.preheader
	move	$t1, $zero
	move	$t0, $zero
	move	$fp, $zero
	add.d	$t2, $a5, $t8
	addi.d	$t4, $zero, -1
	ori	$t3, $zero, 32
	lu12i.w	$a0, 244
	ori	$t5, $a0, 575
	b	.LBB3_5
	.p2align	4, , 16
.LBB3_4:                                #   in Loop: Header=BB3_5 Depth=1
	addi.d	$t1, $t1, 2
	beq	$t1, $t3, .LBB3_21
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	add.d	$a0, $s4, $t1
	ld.bu	$a6, $a0, 1
	ldx.bu	$a0, $s4, $t1
	slli.d	$a1, $a6, 6
	add.d	$a4, $t2, $a1
	slli.d	$a1, $a0, 2
	ldptr.w	$a7, $a5, 15260
	ldx.w	$a1, $a4, $a1
	beqz	$a7, .LBB3_7
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	ldptr.d	$s1, $a5, 14176
	slli.d	$a7, $a3, 3
	ldx.d	$a7, $s1, $a7
	add.w	$a6, $t6, $a6
	slli.d	$a6, $a6, 3
	ldx.d	$a7, $a7, $a6
	add.w	$a6, $t7, $a0
	slli.d	$a6, $a6, 2
	stx.w	$zero, $a7, $a6
.LBB3_7:                                #   in Loop: Header=BB3_5 Depth=1
	addi.d	$t4, $t4, 1
	beqz	$a1, .LBB3_4
# %bb.8:                                #   in Loop: Header=BB3_5 Depth=1
	ld.w	$a6, $a2, 0
	alsl.d	$a0, $a0, $a4, 2
	add.d	$a4, $a6, $t5
	st.w	$a4, $a2, 0
	ld.w	$a0, $a0, 0
	srai.d	$a4, $a1, 31
	xor	$a1, $a1, $a4
	sub.d	$a1, $a1, $a4
	slti	$a0, $a0, 0
	sub.d	$a4, $zero, $a1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a1
	slli.d	$a1, $t0, 2
	stx.w	$a0, $s2, $a1
	stx.w	$t4, $s3, $a1
	addi.w	$t0, $t0, 1
	addi.d	$t4, $zero, -1
	ori	$fp, $zero, 1
	b	.LBB3_4
.LBB3_9:                                # %.preheader235
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$t6, $sp, 136                   # 8-byte Folded Spill
	st.d	$t7, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(qp_per_matrix)
	ld.d	$t2, $a0, %got_pc_lo12(qp_per_matrix)
	pcalau12i	$a0, %got_pc_hi20(qp_rem_matrix)
	ld.d	$t3, $a0, %got_pc_lo12(qp_rem_matrix)
	move	$s6, $zero
	move	$s5, $zero
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	ld.d	$a0, $t2, 0
	add.w	$a1, $t0, $t1
	ld.d	$a4, $t3, 0
	pcalau12i	$a6, %got_pc_hi20(LevelScale4x4Luma)
	ld.d	$a6, $a6, %got_pc_lo12(LevelScale4x4Luma)
	slli.d	$a1, $a1, 2
	ldx.w	$s7, $a0, $a1
	ldx.w	$a0, $a4, $a1
	ld.d	$a1, $a6, 0
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	slli.d	$a4, $a3, 3
	pcalau12i	$a6, %got_pc_hi20(LevelOffset4x4Luma)
	ld.d	$a6, $a6, %got_pc_lo12(LevelOffset4x4Luma)
	pcalau12i	$a7, %got_pc_hi20(InvLevelScale4x4Luma)
	ld.d	$a7, $a7, %got_pc_lo12(InvLevelScale4x4Luma)
	ldx.d	$a1, $a1, $a4
	ld.d	$a6, $a6, 0
	slli.d	$a0, $a0, 3
	ld.d	$a7, $a7, 0
	ldx.d	$s8, $a1, $a0
	ldx.d	$a1, $a6, $a4
	slli.d	$a6, $s7, 3
	ldx.d	$a4, $a7, $a4
	st.d	$t8, $sp, 96                    # 8-byte Folded Spill
	ldx.w	$a7, $a5, $t8
	ori	$t0, $s0, 860
	ldx.w	$t1, $a5, $t0
	ori	$a3, $s0, 852
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	ldx.w	$t2, $a5, $a3
	ori	$a3, $s0, 856
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	ldx.w	$t3, $a5, $a3
	ldx.d	$ra, $a1, $a6
	ldx.d	$a3, $a4, $a0
	add.w	$a0, $t1, $a7
	add.w	$a1, $t3, $t2
	sub.w	$a4, $t2, $t3
	sub.w	$a6, $a7, $t1
	add.d	$a7, $a1, $a0
	sub.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(dct_luma.m4)
	addi.d	$s1, $a1, %pc_lo12(dct_luma.m4)
	st.w	$a0, $s1, 8
	alsl.d	$t1, $a6, $a4, 1
	slli.d	$a0, $a4, 1
	ori	$a1, $s0, 912
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ldx.w	$a1, $a5, $a1
	ori	$a4, $s0, 924
	ldx.w	$a4, $a5, $a4
	ori	$t0, $s0, 916
	st.d	$t0, $sp, 64                    # 8-byte Folded Spill
	ldx.w	$t2, $a5, $t0
	ori	$t0, $s0, 920
	st.d	$t0, $sp, 56                    # 8-byte Folded Spill
	ldx.w	$t3, $a5, $t0
	sub.d	$a0, $a6, $a0
	st.w	$a0, $s1, 12
	add.d	$a0, $a4, $a1
	add.d	$a6, $t3, $t2
	sub.d	$t2, $t2, $t3
	addi.w	$t3, $t2, 0
	sub.d	$a1, $a1, $a4
	addi.w	$a4, $a1, 0
	add.d	$t4, $a6, $a0
	sub.d	$a6, $a0, $a6
	alsl.d	$a0, $a4, $t2, 1
	ori	$a4, $s0, 976
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	ldx.w	$a4, $a5, $a4
	ori	$t2, $s0, 988
	ldx.w	$t5, $a5, $t2
	ori	$t0, $s0, 980
	st.d	$t0, $sp, 40                    # 8-byte Folded Spill
	ldx.w	$t6, $a5, $t0
	ori	$t0, $s0, 984
	st.d	$t0, $sp, 32                    # 8-byte Folded Spill
	ldx.w	$t7, $a5, $t0
	slli.d	$t2, $t3, 1
	sub.d	$t2, $a1, $t2
	add.d	$a1, $t5, $a4
	add.d	$t3, $t7, $t6
	sub.d	$t6, $t6, $t7
	addi.w	$t7, $t6, 0
	sub.d	$a4, $a4, $t5
	add.d	$t5, $t3, $a1
	sub.d	$a1, $a1, $t3
	addi.w	$t3, $a4, 0
	alsl.d	$t3, $t3, $t6, 1
	slli.d	$t6, $t7, 1
	ori	$t7, $s0, 1052
	ldx.w	$t7, $a5, $t7
	ori	$t0, $s0, 1044
	st.d	$t0, $sp, 24                    # 8-byte Folded Spill
	ldx.w	$t8, $a5, $t0
	ori	$t0, $s0, 1048
	st.d	$t0, $sp, 16                    # 8-byte Folded Spill
	ldx.w	$fp, $a5, $t0
	ori	$t0, $s0, 1040
	st.d	$t0, $sp, 8                     # 8-byte Folded Spill
	ldx.w	$s0, $a5, $t0
	sub.d	$a4, $a4, $t6
	add.w	$t6, $fp, $t8
	sub.w	$t8, $t8, $fp
	add.w	$fp, $t7, $s0
	sub.w	$t7, $s0, $t7
	add.d	$s0, $t6, $fp
	sub.d	$t6, $fp, $t6
	alsl.d	$fp, $t7, $t8, 1
	slli.d	$t8, $t8, 1
	sub.d	$t7, $t7, $t8
	add.d	$t8, $t5, $t4
	sub.d	$t4, $t4, $t5
	add.d	$t5, $s0, $a7
	sub.d	$a7, $a7, $s0
	add.d	$s0, $t8, $t5
	st.w	$s0, $s1, 0
	sub.d	$t5, $t5, $t8
	st.w	$t5, $s1, 32
	alsl.d	$t5, $a7, $t4, 1
	st.w	$t5, $s1, 16
	slli.d	$t4, $t4, 1
	sub.d	$a7, $a7, $t4
	st.w	$a7, $s1, 48
	add.d	$a7, $t3, $a0
	sub.d	$a0, $a0, $t3
	add.d	$t3, $fp, $t1
	sub.d	$t1, $t1, $fp
	add.d	$t4, $a7, $t3
	st.w	$t4, $s1, 4
	sub.d	$a7, $t3, $a7
	st.w	$a7, $s1, 36
	alsl.d	$a7, $t1, $a0, 1
	st.w	$a7, $s1, 20
	slli.d	$a0, $a0, 1
	sub.d	$a0, $t1, $a0
	ld.w	$a7, $s1, 8
	st.w	$a0, $s1, 52
	add.d	$a0, $a1, $a6
	sub.d	$a1, $a6, $a1
	add.d	$a6, $t6, $a7
	sub.d	$a7, $a7, $t6
	add.d	$t1, $a0, $a6
	st.w	$t1, $s1, 8
	addi.d	$t1, $s7, 15
	sub.d	$a0, $a6, $a0
	st.w	$a0, $s1, 40
	alsl.d	$a0, $a7, $a1, 1
	st.w	$a0, $s1, 24
	ld.w	$a0, $s1, 12
	slli.d	$a1, $a1, 1
	sub.d	$a1, $a7, $a1
	st.w	$a1, $s1, 56
	add.d	$a1, $t7, $a0
	add.d	$a6, $a4, $t2
	sub.d	$a4, $t2, $a4
	sub.d	$a0, $a0, $t7
	add.d	$a7, $a6, $a1
	st.w	$a7, $s1, 12
	sub.d	$a1, $a1, $a6
	st.w	$a1, $s1, 44
	alsl.d	$a1, $a0, $a4, 1
	st.w	$a1, $s1, 28
	slli.d	$a1, $a4, 1
	sub.d	$a0, $a0, $a1
	st.w	$a0, $s1, 60
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	addi.d	$t2, $s7, 16
	ori	$a1, $zero, 1
	sll.w	$t4, $a1, $t1
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$t8, $zero, -1
	ori	$t6, $zero, 32
	lu12i.w	$a0, 244
	ori	$t7, $a0, 575
	b	.LBB3_11
	.p2align	4, , 16
.LBB3_10:                               #   in Loop: Header=BB3_11 Depth=1
	ld.w	$a4, $a2, 0
	add.d	$a0, $a4, $a0
	st.w	$a0, $a2, 0
	slti	$a0, $a6, 0
	srai.d	$a4, $a1, 31
	xor	$a1, $a1, $a4
	sub.d	$a1, $a1, $a4
	sub.d	$a4, $zero, $a1
	masknez	$a6, $a1, $a0
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a6
	slli.d	$a6, $s5, 2
	stx.w	$a0, $s2, $a6
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	stx.w	$t8, $a0, $a6
	ld.w	$a0, $a7, 0
	ldx.d	$a6, $a3, $s0
	addi.w	$s5, $s5, 1
	slti	$a0, $a0, 0
	ldx.w	$a6, $a6, $fp
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a1
	mul.d	$a0, $a0, $a6
	sll.w	$a0, $a0, $s7
	addi.w	$a0, $a0, 8
	srai.d	$a1, $a0, 4
	addi.d	$t8, $zero, -1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.d	$s6, $s6, 2
	st.w	$a1, $a7, 0
	beq	$s6, $t6, .LBB3_20
.LBB3_11:                               # =>This Inner Loop Header: Depth=1
	add.d	$a0, $s4, $s6
	ld.bu	$t3, $a0, 1
	ldx.bu	$a7, $s4, $s6
	alsl.d	$a4, $t3, $s1, 4
	slli.d	$fp, $a7, 2
	ldx.w	$a6, $a4, $fp
	slli.d	$s0, $t3, 3
	ldx.d	$a0, $s8, $s0
	ldx.d	$a1, $ra, $s0
	srai.d	$t5, $a6, 31
	xor	$s3, $a6, $t5
	ldx.w	$a0, $a0, $fp
	ldx.w	$a1, $a1, $fp
	ldptr.w	$t0, $a5, 15260
	sub.d	$t5, $s3, $t5
	mul.d	$a0, $a0, $t5
	add.d	$a1, $a1, $a0
	sra.w	$a1, $a1, $t1
	beqz	$t0, .LBB3_16
# %bb.12:                               #   in Loop: Header=BB3_11 Depth=1
	beqz	$a1, .LBB3_14
# %bb.13:                               #   in Loop: Header=BB3_11 Depth=1
	pcalau12i	$t0, %got_pc_hi20(AdaptRndWeight)
	ld.d	$t0, $t0, %got_pc_lo12(AdaptRndWeight)
	ld.w	$t0, $t0, 0
	sll.w	$t5, $a1, $t1
	sub.d	$a0, $a0, $t5
	mul.d	$a0, $t0, $a0
	add.d	$a0, $a0, $t4
	sra.w	$a0, $a0, $t2
	b	.LBB3_15
	.p2align	4, , 16
.LBB3_14:                               #   in Loop: Header=BB3_11 Depth=1
	move	$a0, $zero
.LBB3_15:                               #   in Loop: Header=BB3_11 Depth=1
	ldptr.d	$t0, $a5, 14176
	ld.d	$t5, $sp, 120                   # 8-byte Folded Reload
	slli.d	$t5, $t5, 3
	ldx.d	$t0, $t0, $t5
	ld.d	$t5, $sp, 136                   # 8-byte Folded Reload
	add.w	$t3, $t5, $t3
	slli.d	$t3, $t3, 3
	ldx.d	$t0, $t0, $t3
	ld.d	$t3, $sp, 144                   # 8-byte Folded Reload
	add.w	$t3, $t3, $a7
	slli.d	$t3, $t3, 2
	stx.w	$a0, $t0, $t3
.LBB3_16:                               #   in Loop: Header=BB3_11 Depth=1
	addi.w	$t8, $t8, 1
	alsl.d	$a7, $a7, $a4, 2
	beqz	$a1, .LBB3_19
# %bb.17:                               #   in Loop: Header=BB3_11 Depth=1
	move	$a0, $t7
	ori	$a4, $zero, 1
	blt	$a4, $a1, .LBB3_10
# %bb.18:                               #   in Loop: Header=BB3_11 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ldptr.w	$a0, $a0, 4180
	pcalau12i	$a4, %pc_hi20(COEFF_COST)
	addi.d	$a4, $a4, %pc_lo12(COEFF_COST)
	alsl.d	$a0, $a0, $a4, 4
	ldx.bu	$a0, $a0, $t8
	b	.LBB3_10
	.p2align	4, , 16
.LBB3_19:                               #   in Loop: Header=BB3_11 Depth=1
	move	$a1, $zero
	addi.d	$s6, $s6, 2
	st.w	$a1, $a7, 0
	bne	$s6, $t6, .LBB3_11
.LBB3_20:                               # %.preheader232
	slli.d	$a0, $s5, 2
	stx.w	$zero, $s2, $a0
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s1, 8
	ld.w	$a2, $s1, 4
	ld.w	$a3, $s1, 12
	add.d	$a4, $a1, $a0
	sub.d	$a0, $a0, $a1
	srli.d	$a1, $a2, 1
	sub.d	$a1, $a1, $a3
	srli.d	$a3, $a3, 1
	add.d	$a3, $a3, $a2
	add.d	$a2, $a3, $a4
	st.w	$a2, $s1, 0
	add.d	$a6, $a1, $a0
	st.w	$a6, $s1, 4
	sub.d	$a0, $a0, $a1
	st.w	$a0, $s1, 8
	sub.d	$a0, $a4, $a3
	ld.w	$a1, $s1, 16
	ld.w	$a3, $s1, 24
	st.w	$a0, $s1, 12
	ld.w	$a0, $s1, 20
	ld.w	$a4, $s1, 28
	add.d	$a7, $a3, $a1
	sub.d	$a1, $a1, $a3
	srli.d	$a3, $a0, 1
	sub.d	$a3, $a3, $a4
	srai.d	$a4, $a4, 1
	add.d	$a0, $a4, $a0
	add.w	$a6, $a0, $a7
	st.w	$a6, $s1, 16
	add.d	$a4, $a3, $a1
	st.w	$a4, $s1, 20
	sub.d	$a1, $a1, $a3
	st.w	$a1, $s1, 24
	sub.d	$a0, $a7, $a0
	ld.w	$a1, $s1, 32
	ld.w	$a3, $s1, 40
	st.w	$a0, $s1, 28
	ld.w	$a0, $s1, 36
	ld.w	$a4, $s1, 44
	add.d	$a7, $a3, $a1
	sub.d	$a1, $a1, $a3
	srli.d	$a3, $a0, 1
	sub.d	$a3, $a3, $a4
	srli.d	$a4, $a4, 1
	add.d	$a0, $a4, $a0
	add.d	$a4, $a0, $a7
	st.w	$a4, $s1, 32
	add.d	$t2, $a3, $a1
	sub.d	$a1, $a1, $a3
	st.w	$a1, $s1, 40
	sub.d	$a0, $a7, $a0
	ld.w	$a1, $s1, 48
	ld.w	$a3, $s1, 56
	st.w	$a0, $s1, 44
	ld.w	$a0, $s1, 52
	ld.w	$a7, $s1, 60
	add.d	$t0, $a3, $a1
	sub.d	$a1, $a1, $a3
	srli.d	$a3, $a0, 1
	sub.d	$a3, $a3, $a7
	srli.d	$a7, $a7, 1
	add.d	$a0, $a7, $a0
	add.w	$t1, $a0, $t0
	st.w	$t1, $s1, 48
	add.w	$t3, $a3, $a1
	sub.d	$a1, $a1, $a3
	st.w	$a1, $s1, 56
	sub.d	$a0, $t0, $a0
	st.w	$a0, $s1, 60
	ld.d	$t7, $sp, 136                   # 8-byte Folded Reload
	slli.d	$a0, $t7, 5
	add.d	$a7, $a5, $a0
	add.d	$a0, $a4, $a2
	sub.d	$a1, $a2, $a4
	srai.d	$a2, $a6, 1
	lu12i.w	$t8, 3
	ori	$a3, $t8, 336
	add.d	$a3, $a7, $a3
	ld.d	$t6, $sp, 144                   # 8-byte Folded Reload
	slli.d	$t0, $t6, 1
	ldx.hu	$a4, $a3, $t0
	sub.d	$a2, $a2, $t1
	srai.d	$t1, $t1, 1
	add.d	$a6, $t1, $a6
	slli.d	$a4, $a4, 6
	addi.d	$a0, $a0, 32
	add.d	$t1, $a0, $a6
	add.w	$a4, $t1, $a4
	ldptr.w	$t1, $a5, 15520
	srai.d	$t4, $a4, 6
	srai.d	$a4, $a4, 63
	andn	$a4, $t4, $a4
	slt	$t4, $a4, $t1
	maskeqz	$a4, $a4, $t4
	ori	$t5, $t8, 368
	add.d	$s2, $a7, $t5
	ldx.hu	$t5, $s2, $t0
	masknez	$t4, $t1, $t4
	or	$a4, $a4, $t4
	stptr.w	$a4, $a5, 13136
	slli.d	$a4, $t5, 6
	addi.d	$a1, $a1, 32
	add.d	$t4, $a1, $a2
	add.w	$a4, $t4, $a4
	srai.d	$t4, $a4, 6
	srai.d	$a4, $a4, 63
	andn	$a4, $t4, $a4
	slt	$t4, $a4, $t1
	maskeqz	$a4, $a4, $t4
	masknez	$t4, $t1, $t4
	ori	$t5, $t8, 400
	add.d	$s3, $a7, $t5
	ldx.hu	$t5, $s3, $t0
	or	$a4, $a4, $t4
	stptr.w	$a4, $a5, 13200
	sub.d	$a1, $a1, $a2
	slli.d	$a2, $t5, 6
	add.w	$a1, $a1, $a2
	srai.d	$a2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $a2, $a1
	slt	$a2, $a1, $t1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $t1, $a2
	or	$a1, $a1, $a2
	ori	$a2, $t8, 432
	add.d	$a2, $a7, $a2
	ldx.hu	$a4, $a2, $t0
	st.w	$t2, $s1, 36
	st.w	$t3, $s1, 52
	stptr.w	$a1, $a5, 13264
	slli.d	$a1, $a4, 6
	sub.d	$a0, $a0, $a6
	add.w	$a0, $a0, $a1
	srai.d	$a1, $a0, 6
	srai.d	$a0, $a0, 63
	andn	$a0, $a1, $a0
	slt	$a1, $a0, $t1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $t1, $a1
	ld.w	$a4, $s1, 4
	or	$a0, $a0, $a1
	ld.w	$a1, $s1, 20
	stptr.w	$a0, $a5, 13328
	add.d	$a0, $t2, $a4
	sub.d	$a4, $a4, $t2
	srai.d	$a6, $a1, 1
	addi.d	$a7, $t0, 2
	ldx.hu	$t2, $a3, $a7
	sub.d	$a6, $a6, $t3
	srai.d	$t3, $t3, 1
	add.d	$a1, $t3, $a1
	slli.d	$t2, $t2, 6
	addi.d	$a0, $a0, 32
	add.d	$t3, $a0, $a1
	add.w	$t2, $t3, $t2
	srai.d	$t3, $t2, 6
	srai.d	$t2, $t2, 63
	andn	$t2, $t3, $t2
	slt	$t3, $t2, $t1
	maskeqz	$t2, $t2, $t3
	ldx.hu	$t4, $s2, $a7
	masknez	$t3, $t1, $t3
	or	$t2, $t2, $t3
	stptr.w	$t2, $a5, 13140
	slli.d	$t2, $t4, 6
	addi.d	$a4, $a4, 32
	add.d	$t3, $a4, $a6
	add.w	$t2, $t3, $t2
	srai.d	$t3, $t2, 6
	srai.d	$t2, $t2, 63
	andn	$t2, $t3, $t2
	slt	$t3, $t2, $t1
	maskeqz	$t2, $t2, $t3
	ldx.hu	$t4, $s3, $a7
	masknez	$t3, $t1, $t3
	or	$t2, $t2, $t3
	stptr.w	$t2, $a5, 13204
	slli.d	$t2, $t4, 6
	sub.d	$a4, $a4, $a6
	add.w	$a4, $a4, $t2
	srai.d	$a6, $a4, 6
	srai.d	$a4, $a4, 63
	andn	$a4, $a6, $a4
	slt	$a6, $a4, $t1
	maskeqz	$a4, $a4, $a6
	ldx.hu	$a7, $a2, $a7
	masknez	$a6, $t1, $a6
	or	$a4, $a4, $a6
	stptr.w	$a4, $a5, 13268
	slli.d	$a4, $a7, 6
	sub.d	$a0, $a0, $a1
	add.w	$a0, $a0, $a4
	srai.d	$a1, $a0, 6
	srai.d	$a0, $a0, 63
	andn	$a0, $a1, $a0
	slt	$a1, $a0, $t1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $t1, $a1
	ld.w	$a4, $s1, 8
	ld.w	$a6, $s1, 40
	or	$a0, $a0, $a1
	stptr.w	$a0, $a5, 13332
	ld.w	$a0, $s1, 24
	add.d	$a1, $a6, $a4
	sub.d	$a4, $a4, $a6
	ld.w	$a6, $s1, 56
	srai.d	$a7, $a0, 1
	addi.d	$t1, $t0, 4
	ldx.hu	$t2, $a3, $t1
	sub.d	$t3, $a7, $a6
	srai.d	$a6, $a6, 1
	add.d	$a0, $a6, $a0
	slli.d	$a6, $t2, 6
	addi.d	$a1, $a1, 32
	add.d	$a7, $a1, $a0
	add.w	$a6, $a7, $a6
	ldptr.w	$a7, $a5, 15520
	srai.d	$t2, $a6, 6
	srai.d	$a6, $a6, 63
	andn	$a6, $t2, $a6
	slt	$t2, $a6, $a7
	maskeqz	$a6, $a6, $t2
	ldx.hu	$t4, $s2, $t1
	masknez	$t2, $a7, $t2
	or	$a6, $a6, $t2
	stptr.w	$a6, $a5, 13144
	slli.d	$a6, $t4, 6
	addi.d	$a4, $a4, 32
	add.d	$t2, $a4, $t3
	add.w	$a6, $t2, $a6
	srai.d	$t2, $a6, 6
	srai.d	$a6, $a6, 63
	andn	$a6, $t2, $a6
	slt	$t2, $a6, $a7
	maskeqz	$a6, $a6, $t2
	masknez	$t2, $a7, $t2
	ldx.hu	$t4, $s3, $t1
	or	$a6, $a6, $t2
	stptr.w	$a6, $a5, 13208
	sub.d	$a4, $a4, $t3
	slli.d	$a6, $t4, 6
	add.w	$a4, $a4, $a6
	srai.d	$a6, $a4, 6
	srai.d	$a4, $a4, 63
	andn	$a4, $a6, $a4
	slt	$a6, $a4, $a7
	maskeqz	$a4, $a4, $a6
	ldx.hu	$t1, $a2, $t1
	masknez	$a6, $a7, $a6
	or	$a4, $a4, $a6
	stptr.w	$a4, $a5, 13272
	slli.d	$a4, $t1, 6
	sub.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a4
	srai.d	$a1, $a0, 6
	srai.d	$a0, $a0, 63
	andn	$a0, $a1, $a0
	slt	$a1, $a0, $a7
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a7, $a1
	ld.w	$a4, $s1, 12
	ld.w	$a6, $s1, 44
	or	$a0, $a0, $a1
	stptr.w	$a0, $a5, 13336
	ld.w	$a0, $s1, 28
	add.d	$a1, $a6, $a4
	sub.d	$a4, $a4, $a6
	ld.w	$a6, $s1, 60
	srai.d	$t1, $a0, 1
	addi.d	$t4, $t0, 6
	ldx.hu	$t0, $a3, $t4
	sub.d	$t3, $t1, $a6
	srai.d	$a3, $a6, 1
	add.d	$a3, $a3, $a0
	slli.d	$a0, $t0, 6
	addi.d	$t0, $a1, 32
	add.d	$a1, $t0, $a3
	add.w	$a0, $a1, $a0
	srai.d	$a1, $a0, 6
	srai.d	$a0, $a0, 63
	andn	$a0, $a1, $a0
	slt	$a1, $a0, $a7
	ldx.hu	$a6, $s2, $t4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a7, $a1
	or	$t1, $a0, $a1
	slli.d	$a0, $a6, 6
	addi.d	$a1, $a4, 32
	add.d	$a4, $a1, $t3
	add.w	$a0, $a4, $a0
	srai.d	$a4, $a0, 6
	srai.d	$a0, $a0, 63
	andn	$a0, $a4, $a0
	slt	$a4, $a0, $a7
	ldx.hu	$a6, $s3, $t4
	maskeqz	$a0, $a0, $a4
	masknez	$a4, $a7, $a4
	or	$t2, $a0, $a4
	slli.d	$a0, $a6, 6
	sub.d	$a1, $a1, $t3
	add.w	$a0, $a1, $a0
	srai.d	$a1, $a0, 6
	srai.d	$a0, $a0, 63
	andn	$a0, $a1, $a0
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$a1, $a1, %got_pc_lo12(enc_picture)
	slt	$a4, $a0, $a7
	maskeqz	$a0, $a0, $a4
	masknez	$a4, $a7, $a4
	ld.d	$a1, $a1, 0
	ld.w	$a6, $a5, 180
	or	$t3, $a0, $a4
	ldx.hu	$a2, $a2, $t4
	ldptr.d	$a0, $a1, 6440
	add.w	$a1, $t7, $a6
	ld.w	$a4, $a5, 176
	slli.d	$a6, $a1, 3
	ldx.d	$a6, $a0, $a6
	ld.d	$t4, $sp, 96                    # 8-byte Folded Reload
	ldx.h	$t4, $a5, $t4
	add.w	$a4, $a4, $t6
	slli.d	$a4, $a4, 1
	ld.d	$t5, $sp, 80                    # 8-byte Folded Reload
	ldx.h	$t5, $a5, $t5
	stx.h	$t4, $a6, $a4
	ld.d	$t4, $sp, 88                    # 8-byte Folded Reload
	ldx.h	$t4, $a5, $t4
	addi.d	$t6, $a4, 2
	stx.h	$t5, $a6, $t6
	addi.d	$t5, $a4, 4
	stx.h	$t4, $a6, $t5
	addi.d	$t4, $a4, 6
	addi.w	$t7, $a1, 1
	slli.d	$t7, $t7, 3
	ldx.d	$t7, $a0, $t7
	ld.d	$t8, $sp, 72                    # 8-byte Folded Reload
	ldx.h	$t8, $a5, $t8
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ldx.h	$fp, $a5, $fp
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ldx.h	$s0, $a5, $s0
	stx.h	$t1, $a6, $t4
	stx.h	$t8, $t7, $a4
	stx.h	$fp, $t7, $t6
	stx.h	$s0, $t7, $t5
	addi.w	$a6, $a1, 2
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a0, $a6
	ld.d	$t8, $sp, 48                    # 8-byte Folded Reload
	ldx.h	$t8, $a5, $t8
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	ldx.h	$fp, $a5, $fp
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ldx.h	$s0, $a5, $s0
	stx.h	$t2, $t7, $t4
	stx.h	$t8, $a6, $a4
	stx.h	$fp, $a6, $t6
	stx.h	$s0, $a6, $t5
	addi.w	$a1, $a1, 3
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ldx.h	$a1, $a5, $a1
	ld.d	$t7, $sp, 24                    # 8-byte Folded Reload
	ldx.h	$t7, $a5, $t7
	ld.d	$t8, $sp, 16                    # 8-byte Folded Reload
	ldx.h	$t8, $a5, $t8
	stx.h	$t3, $a6, $t4
	stx.h	$a1, $a0, $a4
	stx.h	$t7, $a0, $t6
	stx.h	$t8, $a0, $t5
	sub.d	$a1, $t0, $a3
	slli.d	$a2, $a2, 6
	add.w	$a1, $a1, $a2
	srai.d	$a2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $a2, $a1
	slt	$a2, $a1, $a7
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a7, $a2
	or	$a1, $a1, $a2
	stx.h	$a1, $a0, $t4
	stptr.w	$t1, $a5, 13148
	stptr.w	$t2, $a5, 13212
	stptr.w	$t3, $a5, 13276
	stptr.w	$a1, $a5, 13340
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	b	.LBB3_22
.LBB3_21:                               # %.loopexit.loopexit
	slli.d	$a0, $t0, 2
	stx.w	$zero, $s2, $a0
	ld.w	$a0, $a5, 180
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$a1, $a1, %got_pc_lo12(enc_picture)
	add.w	$a3, $t6, $a0
	ld.d	$a0, $a1, 0
	ld.w	$a1, $a5, 176
	slli.d	$a2, $t6, 5
	add.d	$a2, $a5, $a2
	ldptr.d	$a4, $a0, 6440
	ldx.h	$a0, $a5, $t8
	ori	$a6, $s0, 336
	add.d	$a7, $a2, $a6
	slli.d	$a6, $t7, 1
	ldx.h	$t0, $a7, $a6
	slli.d	$t1, $a3, 3
	ldx.d	$t6, $a4, $t1
	add.w	$a1, $a1, $t7
	add.d	$t0, $t0, $a0
	slli.d	$a0, $a1, 1
	stx.h	$t0, $t6, $a0
	ori	$a1, $s0, 852
	ldx.h	$a1, $a5, $a1
	addi.d	$t0, $a6, 2
	ldx.h	$t1, $a7, $t0
	add.d	$a1, $t1, $a1
	addi.d	$t1, $a0, 2
	stx.h	$a1, $t6, $t1
	ori	$a1, $s0, 856
	ldx.h	$a1, $a5, $a1
	addi.d	$t2, $a6, 4
	ldx.h	$t3, $a7, $t2
	add.d	$a1, $t3, $a1
	addi.d	$t3, $a0, 4
	stx.h	$a1, $t6, $t3
	ori	$a1, $s0, 860
	ldx.h	$a1, $a5, $a1
	addi.d	$t4, $a6, 6
	ldx.h	$a7, $a7, $t4
	add.d	$a1, $a7, $a1
	addi.d	$t5, $a0, 6
	stx.h	$a1, $t6, $t5
	addi.w	$a1, $a3, 1
	slli.d	$a1, $a1, 3
	ori	$a7, $s0, 912
	ldx.h	$a7, $a5, $a7
	ori	$t6, $s0, 368
	add.d	$t6, $a2, $t6
	ldx.h	$t7, $t6, $a6
	ldx.d	$a1, $a4, $a1
	add.d	$a7, $t7, $a7
	stx.h	$a7, $a1, $a0
	ori	$a7, $s0, 916
	ldx.h	$a7, $a5, $a7
	ldx.h	$t7, $t6, $t0
	add.d	$a7, $t7, $a7
	stx.h	$a7, $a1, $t1
	ori	$a7, $s0, 920
	ldx.h	$a7, $a5, $a7
	ldx.h	$t7, $t6, $t2
	add.d	$a7, $t7, $a7
	stx.h	$a7, $a1, $t3
	ori	$a7, $s0, 924
	ldx.h	$a7, $a5, $a7
	ldx.h	$t6, $t6, $t4
	add.d	$a7, $t6, $a7
	stx.h	$a7, $a1, $t5
	addi.w	$a1, $a3, 2
	slli.d	$a1, $a1, 3
	ori	$a7, $s0, 976
	ldx.h	$a7, $a5, $a7
	ori	$t6, $s0, 400
	add.d	$t6, $a2, $t6
	ldx.h	$t7, $t6, $a6
	ldx.d	$a1, $a4, $a1
	add.d	$a7, $t7, $a7
	stx.h	$a7, $a1, $a0
	ori	$a7, $s0, 980
	ldx.h	$a7, $a5, $a7
	ldx.h	$t7, $t6, $t0
	add.d	$a7, $t7, $a7
	stx.h	$a7, $a1, $t1
	ori	$a7, $s0, 984
	ldx.h	$a7, $a5, $a7
	ldx.h	$t7, $t6, $t2
	add.d	$a7, $t7, $a7
	stx.h	$a7, $a1, $t3
	ori	$a7, $s0, 988
	ldx.h	$a7, $a5, $a7
	ldx.h	$t6, $t6, $t4
	add.d	$a7, $t6, $a7
	stx.h	$a7, $a1, $t5
	addi.w	$a1, $a3, 3
	slli.d	$a1, $a1, 3
	ori	$a3, $s0, 1040
	ldx.h	$a3, $a5, $a3
	ori	$a7, $s0, 432
	add.d	$a2, $a2, $a7
	ldx.h	$a6, $a2, $a6
	ldx.d	$a1, $a4, $a1
	add.d	$a3, $a6, $a3
	stx.h	$a3, $a1, $a0
	ori	$a0, $s0, 1044
	ldx.h	$a0, $a5, $a0
	ldx.h	$a3, $a2, $t0
	add.d	$a0, $a3, $a0
	stx.h	$a0, $a1, $t1
	ori	$a0, $s0, 1048
	ldx.h	$a0, $a5, $a0
	ldx.h	$a3, $a2, $t2
	add.d	$a0, $a3, $a0
	stx.h	$a0, $a1, $t3
	ori	$a0, $s0, 1052
	ldx.h	$a0, $a5, $a0
	ldx.h	$a2, $a2, $t4
	add.d	$a0, $a2, $a0
	stx.h	$a0, $a1, $t5
.LBB3_22:                               # %.loopexit
	move	$a0, $fp
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
.Lfunc_end3:
	.size	dct_luma, .Lfunc_end3-dct_luma
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function dct_chroma
.LCPI4_0:
	.dword	16                              # 0x10
	.dword	20                              # 0x14
	.dword	24                              # 0x18
	.dword	28                              # 0x1c
.LCPI4_1:
	.dword	0                               # 0x0
	.dword	4                               # 0x4
	.dword	8                               # 0x8
	.dword	12                              # 0xc
	.text
	.globl	dct_chroma
	.p2align	5
	.type	dct_chroma,@function
dct_chroma:                             # @dct_chroma
# %bb.0:
	addi.d	$sp, $sp, -336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$a2, $a2, %got_pc_lo12(img)
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	ld.d	$s0, $a2, 0
	ld.w	$a2, $s0, 12
	ldptr.d	$a3, $s0, 14224
	ori	$a4, $zero, 536
	mul.d	$a2, $a2, $a4
	add.d	$a2, $a3, $a2
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	ld.w	$a3, $a2, 72
	ldptr.d	$a2, $s0, 14168
	ori	$a4, $zero, 13
	move	$s3, $a1
	bltu	$a4, $a3, .LBB4_2
# %bb.1:
	ori	$a1, $zero, 1
	sll.d	$a4, $a1, $a3
	lu12i.w	$a1, 2
	ori	$a1, $a1, 1536
	and	$a1, $a4, $a1
	ori	$t2, $zero, 1
	bnez	$a1, .LBB4_3
.LBB4_2:
	addi.d	$a1, $a3, -14
	sltui	$t2, $a1, 1
.LBB4_3:
	lu12i.w	$s7, 3
	ori	$a1, $s7, 3164
	ldx.w	$a1, $s0, $a1
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a3, $a3, 8
	ldptr.w	$a4, $s0, 15536
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	move	$s4, $zero
	sub.w	$a4, $zero, $a1
	alsl.d	$a1, $a0, $a2, 3
	bne	$a3, $a4, .LBB4_5
# %bb.4:
	ldptr.w	$a2, $s0, 15540
	addi.d	$a2, $a2, -1
	sltui	$s4, $a2, 1
.LBB4_5:
	pcalau12i	$a2, %got_pc_hi20(qp_per_matrix)
	ld.d	$a3, $a2, %got_pc_lo12(qp_per_matrix)
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 2
	ld.w	$a4, $a2, 12
	ori	$a2, $s7, 3168
	ldx.w	$a5, $s0, $a2
	ld.d	$a2, $a1, 8
	ld.d	$a3, $a3, 0
	add.w	$a1, $a5, $a4
	pcalau12i	$a4, %got_pc_hi20(qp_rem_matrix)
	ld.d	$a4, $a4, %got_pc_lo12(qp_rem_matrix)
	pcalau12i	$a5, %got_pc_hi20(LevelScale4x4Chroma)
	ld.d	$a5, $a5, %got_pc_lo12(LevelScale4x4Chroma)
	pcalau12i	$a6, %got_pc_hi20(LevelOffset4x4Chroma)
	ld.d	$a6, $a6, %got_pc_lo12(LevelOffset4x4Chroma)
	pcalau12i	$a7, %got_pc_hi20(InvLevelScale4x4Chroma)
	ld.d	$a7, $a7, %got_pc_lo12(InvLevelScale4x4Chroma)
	ld.d	$a4, $a4, 0
	ld.d	$a5, $a5, 0
	ld.d	$a6, $a6, 0
	ld.d	$a7, $a7, 0
	slli.d	$t0, $a0, 3
	ldx.d	$a5, $a5, $t0
	ldx.d	$a6, $a6, $t0
	st.d	$t0, $sp, 224                   # 8-byte Folded Spill
	ldx.d	$a7, $a7, $t0
	slli.d	$t0, $a1, 2
	ori	$t1, $zero, 2
	slli.d	$t2, $t2, 3
	st.d	$t2, $sp, 216                   # 8-byte Folded Spill
	ld.d	$t2, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	bne	$t2, $t1, .LBB4_7
# %bb.6:
	addi.w	$a0, $a1, 3
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $a3, $a0
	ldx.w	$a0, $a4, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	addi.d	$t3, $a1, 16
	b	.LBB4_8
.LBB4_7:
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	ori	$t3, $zero, 1
.LBB4_8:
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 428
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	ldptr.w	$a0, $s0, 15528
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ldx.w	$a0, $a3, $t0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$s2, $a2, 0
	ld.d	$a0, $a2, 8
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ldx.w	$a0, $a4, $t0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ldx.d	$a1, $a5, $a0
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ldx.d	$a1, $a6, $a0
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ldx.d	$a0, $a7, $a0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(dct_chroma.m5)
	addi.d	$s5, $a2, %pc_lo12(dct_chroma.m5)
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	bnez	$s4, .LBB4_16
# %bb.9:                                # %.preheader792
	ldptr.w	$a4, $s0, 15548
	ori	$a3, $zero, 1
	blt	$a4, $a3, .LBB4_16
# %bb.10:                               # %.preheader791.lr.ph
	ori	$a2, $s7, 3256
	ldx.w	$a2, $s0, $a2
	move	$a6, $zero
	ori	$a5, $s7, 848
	add.d	$a7, $s0, $a5
	b	.LBB4_12
	.p2align	4, , 16
.LBB4_11:                               #   in Loop: Header=BB4_12 Depth=1
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 256
	bge	$a6, $a4, .LBB4_16
.LBB4_12:                               # %.preheader791
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_14 Depth 2
	blt	$a2, $a3, .LBB4_11
# %bb.13:                               # %.preheader790.lr.ph
                                        #   in Loop: Header=BB4_12 Depth=1
	move	$t0, $zero
	move	$a4, $a7
	.p2align	4, , 16
.LBB4_14:                               # %.preheader790
                                        #   Parent Loop BB4_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a4, 0
	ld.w	$a5, $a4, 12
	ld.w	$t1, $a4, 4
	ld.w	$t2, $a4, 8
	add.w	$t6, $a5, $a2
	add.w	$fp, $t2, $t1
	sub.w	$t2, $t1, $t2
	sub.w	$a2, $a2, $a5
	add.d	$t5, $fp, $t6
	sub.d	$a5, $t6, $fp
	st.w	$a5, $a4, 8
	alsl.d	$t1, $a2, $t2, 1
	slli.d	$a5, $t2, 1
	ld.w	$t2, $a4, 64
	ld.w	$t6, $a4, 76
	ld.w	$fp, $a4, 68
	ld.w	$s1, $a4, 72
	sub.d	$a2, $a2, $a5
	st.w	$a2, $a4, 12
	add.d	$a2, $t6, $t2
	add.d	$a5, $s1, $fp
	sub.d	$fp, $fp, $s1
	addi.w	$s1, $fp, 0
	sub.d	$t6, $t2, $t6
	addi.w	$s5, $t6, 0
	add.d	$s6, $a5, $a2
	sub.d	$t2, $a2, $a5
	alsl.d	$a5, $s5, $fp, 1
	ld.w	$fp, $a4, 128
	ld.w	$s5, $a4, 140
	ld.w	$s7, $a4, 132
	ld.w	$s8, $a4, 136
	slli.d	$a2, $s1, 1
	sub.d	$a2, $t6, $a2
	add.d	$t6, $s5, $fp
	add.d	$s1, $s8, $s7
	sub.d	$s7, $s7, $s8
	addi.w	$s8, $s7, 0
	sub.d	$fp, $fp, $s5
	addi.w	$s5, $fp, 0
	add.d	$ra, $s1, $t6
	sub.d	$s1, $t6, $s1
	alsl.d	$s5, $s5, $s7, 1
	ld.w	$s7, $a4, 192
	ld.w	$t7, $a4, 204
	ld.w	$t8, $a4, 196
	ld.w	$t4, $a4, 200
	slli.d	$t6, $s8, 1
	sub.d	$t6, $fp, $t6
	add.w	$fp, $t7, $s7
	add.w	$s8, $t4, $t8
	sub.w	$t4, $t8, $t4
	sub.w	$t7, $s7, $t7
	add.d	$t8, $s8, $fp
	sub.d	$fp, $fp, $s8
	alsl.d	$s7, $t7, $t4, 1
	slli.d	$t4, $t4, 1
	sub.d	$t4, $t7, $t4
	add.d	$t7, $t8, $t5
	add.d	$s8, $ra, $s6
	sub.d	$s6, $s6, $ra
	sub.d	$t5, $t5, $t8
	add.d	$t8, $s8, $t7
	st.w	$t8, $a4, 0
	sub.d	$t7, $t7, $s8
	st.w	$t7, $a4, 128
	alsl.d	$t7, $t5, $s6, 1
	st.w	$t7, $a4, 64
	slli.d	$t7, $s6, 1
	sub.d	$t5, $t5, $t7
	st.w	$t5, $a4, 192
	add.d	$t5, $s7, $t1
	add.d	$t7, $s5, $a5
	sub.d	$a5, $a5, $s5
	sub.d	$t1, $t1, $s7
	add.d	$t8, $t7, $t5
	st.w	$t8, $a4, 4
	sub.d	$t5, $t5, $t7
	st.w	$t5, $a4, 132
	alsl.d	$t5, $t1, $a5, 1
	st.w	$t5, $a4, 68
	ld.w	$t5, $a4, 8
	slli.d	$a5, $a5, 1
	sub.d	$a5, $t1, $a5
	st.w	$a5, $a4, 196
	add.d	$a5, $fp, $t5
	add.d	$t1, $s1, $t2
	sub.d	$t2, $t2, $s1
	sub.d	$t5, $t5, $fp
	add.d	$t7, $t1, $a5
	st.w	$t7, $a4, 8
	sub.d	$a5, $a5, $t1
	st.w	$a5, $a4, 136
	alsl.d	$a5, $t5, $t2, 1
	st.w	$a5, $a4, 72
	ld.w	$t7, $a4, 12
	slli.d	$a5, $t2, 1
	sub.d	$a5, $t5, $a5
	st.w	$a5, $a4, 200
	add.d	$t5, $t4, $t7
	add.d	$a5, $t6, $a2
	sub.d	$t1, $a2, $t6
	sub.d	$t2, $t7, $t4
	add.d	$a2, $a5, $t5
	st.w	$a2, $a4, 12
	sub.d	$a2, $t5, $a5
	st.w	$a2, $a4, 140
	alsl.d	$a2, $t2, $t1, 1
	st.w	$a2, $a4, 76
	slli.d	$a2, $t1, 1
	sub.d	$a2, $t2, $a2
	st.w	$a2, $a4, 204
	ldptr.w	$a2, $s0, 15544
	addi.d	$t0, $t0, 4
	addi.d	$a4, $a4, 16
	blt	$t0, $a2, .LBB4_14
# %bb.15:                               # %._crit_edge
                                        #   in Loop: Header=BB4_12 Depth=1
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	st.w	$t5, $s5, 0
	lu12i.w	$s7, 3
	ori	$a4, $s7, 3260
	ldx.w	$a4, $s0, $a4
	st.w	$a5, $s5, 4
	st.w	$t1, $s5, 8
	st.w	$t2, $s5, 12
	b	.LBB4_11
.LBB4_16:                               # %.loopexit793
	pcalau12i	$a2, %pc_hi20(SNGL_SCAN)
	ori	$a3, $zero, 1
	addi.d	$a0, $a2, %pc_lo12(SNGL_SCAN)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	st.d	$s4, $sp, 112                   # 8-byte Folded Spill
	beq	$a5, $a3, .LBB4_54
# %bb.17:                               # %.loopexit793
	ori	$a2, $zero, 2
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 208                   # 8-byte Folded Spill
	beq	$a5, $a2, .LBB4_30
# %bb.18:                               # %.loopexit793
	ori	$a0, $zero, 3
	bne	$a5, $a0, .LBB4_71
# %bb.19:                               # %.preheader788
	ldptr.w	$a1, $s0, 15548
	pcalau12i	$a0, %pc_hi20(dct_chroma.m4)
	ori	$a2, $zero, 1
	addi.d	$a0, $a0, %pc_lo12(dct_chroma.m4)
	blt	$a1, $a2, .LBB4_72
# %bb.20:                               # %.preheader787.lr.ph
	ldptr.w	$a3, $s0, 15544
	blt	$a3, $a2, .LBB4_72
# %bb.21:                               # %.preheader787.us.preheader
	move	$a4, $zero
	ori	$a2, $s7, 848
	add.d	$a6, $s0, $a2
	addi.d	$a2, $a3, -1
	srli.d	$a2, $a2, 2
	addi.d	$a2, $a2, 1
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	bstrpick.d	$a2, $a2, 62, 3
	slli.d	$t0, $a2, 3
	slli.d	$a2, $a2, 5
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	ori	$a2, $s7, 960
	pcalau12i	$a5, %pc_hi20(.LCPI4_0)
	xvld	$xr0, $a5, %pc_lo12(.LCPI4_0)
	pcalau12i	$a5, %pc_hi20(.LCPI4_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI4_1)
	add.d	$t6, $s0, $a2
	ori	$t2, $zero, 29
	xvrepli.d	$xr2, 32
	move	$s4, $a0
	b	.LBB4_23
	.p2align	4, , 16
.LBB4_22:                               # %._crit_edge809.us
                                        #   in Loop: Header=BB4_23 Depth=1
	addi.d	$a4, $a4, 4
	addi.d	$t6, $t6, 256
	addi.d	$s4, $s4, 4
	addi.d	$a6, $a6, 256
	bgeu	$a4, $a1, .LBB4_72
.LBB4_23:                               # %.preheader787.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_26 Depth 2
                                        #     Child Loop BB4_29 Depth 2
	bgeu	$a3, $t2, .LBB4_25
# %bb.24:                               #   in Loop: Header=BB4_23 Depth=1
	move	$a2, $zero
	b	.LBB4_28
	.p2align	4, , 16
.LBB4_25:                               # %vector.body.preheader
                                        #   in Loop: Header=BB4_23 Depth=1
	srli.d	$a2, $a4, 2
	slli.d	$a2, $a2, 2
	move	$t1, $t6
	move	$a5, $t0
	xvori.b	$xr3, $xr1, 0
	xvori.b	$xr4, $xr0, 0
	.p2align	4, , 16
.LBB4_26:                               # %vector.body
                                        #   Parent Loop BB4_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t1, -112
	ld.w	$t4, $t1, -96
	ld.w	$t7, $t1, -80
	ld.w	$t8, $t1, -64
	ld.w	$s5, $t1, -48
	ld.w	$s6, $t1, -32
	ld.w	$s7, $t1, -16
	ld.w	$s8, $t1, 0
	xvsrli.d	$xr5, $xr4, 2
	xvsrli.d	$xr6, $xr3, 2
	xvpickve2gr.d	$ra, $xr6, 0
	alsl.d	$ra, $ra, $a0, 4
	xvpickve2gr.d	$s1, $xr6, 1
	alsl.d	$s1, $s1, $a0, 4
	xvpickve2gr.d	$t3, $xr6, 2
	alsl.d	$t3, $t3, $a0, 4
	xvpickve2gr.d	$s3, $xr6, 3
	alsl.d	$s3, $s3, $a0, 4
	xvpickve2gr.d	$s2, $xr5, 0
	alsl.d	$s2, $s2, $a0, 4
	xvpickve2gr.d	$t5, $xr5, 1
	alsl.d	$t5, $t5, $a0, 4
	xvpickve2gr.d	$fp, $xr5, 2
	alsl.d	$fp, $fp, $a0, 4
	xvpickve2gr.d	$a7, $xr5, 3
	alsl.d	$a7, $a7, $a0, 4
	stx.w	$t2, $ra, $a2
	stx.w	$t4, $s1, $a2
	stx.w	$t7, $t3, $a2
	stx.w	$t8, $s3, $a2
	stx.w	$s5, $s2, $a2
	stx.w	$s6, $t5, $a2
	stx.w	$s7, $fp, $a2
	stx.w	$s8, $a7, $a2
	xvadd.d	$xr3, $xr3, $xr2
	xvadd.d	$xr4, $xr4, $xr2
	addi.d	$a5, $a5, -8
	addi.d	$t1, $t1, 128
	bnez	$a5, .LBB4_26
# %bb.27:                               # %middle.block
                                        #   in Loop: Header=BB4_23 Depth=1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	lu12i.w	$s7, 3
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	ori	$t2, $zero, 29
	beq	$a5, $t0, .LBB4_22
.LBB4_28:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB4_23 Depth=1
	slli.d	$a5, $a2, 2
	bstrins.d	$a5, $zero, 3, 0
	add.d	$a5, $s4, $a5
	alsl.d	$t1, $a2, $a6, 2
	.p2align	4, , 16
.LBB4_29:                               # %scalar.ph
                                        #   Parent Loop BB4_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $t1, 0
	st.w	$a7, $a5, 0
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 16
	addi.d	$t1, $t1, 16
	bltu	$a2, $a3, .LBB4_29
	b	.LBB4_22
.LBB4_30:                               # %.preheader780
	ldptr.w	$a6, $s0, 15548
	ori	$a2, $zero, 1
	pcalau12i	$a3, %pc_hi20(dct_chroma.m3)
	addi.d	$a3, $a3, %pc_lo12(dct_chroma.m3)
	st.d	$t3, $sp, 160                   # 8-byte Folded Spill
	blt	$a6, $a2, .LBB4_41
# %bb.31:                               # %.preheader779.lr.ph
	ldptr.w	$a7, $s0, 15544
	blt	$a7, $a2, .LBB4_41
# %bb.32:                               # %.preheader779.us.preheader
	move	$a4, $zero
	lu12i.w	$a0, 3
	ori	$a2, $a0, 848
	add.d	$t0, $s0, $a2
	addi.d	$a2, $a7, -1
	srli.d	$a2, $a2, 2
	addi.d	$a1, $a2, 1
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	bstrpick.d	$a2, $a1, 62, 3
	slli.d	$t6, $a2, 3
	slli.d	$a1, $a2, 5
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	ori	$a2, $a0, 960
	pcalau12i	$a5, %pc_hi20(.LCPI4_0)
	xvld	$xr0, $a5, %pc_lo12(.LCPI4_0)
	pcalau12i	$a5, %pc_hi20(.LCPI4_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI4_1)
	add.d	$s5, $s0, $a2
	ori	$a1, $zero, 29
	xvrepli.d	$xr2, 32
	move	$s7, $a3
	b	.LBB4_34
	.p2align	4, , 16
.LBB4_33:                               # %._crit_edge842.us
                                        #   in Loop: Header=BB4_34 Depth=1
	addi.d	$a4, $a4, 4
	addi.d	$s5, $s5, 256
	addi.d	$s7, $s7, 4
	addi.d	$t0, $t0, 256
	bgeu	$a4, $a6, .LBB4_41
.LBB4_34:                               # %.preheader779.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_37 Depth 2
                                        #     Child Loop BB4_40 Depth 2
	bgeu	$a7, $a1, .LBB4_36
# %bb.35:                               #   in Loop: Header=BB4_34 Depth=1
	move	$a2, $zero
	b	.LBB4_39
	.p2align	4, , 16
.LBB4_36:                               # %vector.body1209.preheader
                                        #   in Loop: Header=BB4_34 Depth=1
	srli.d	$a2, $a4, 2
	slli.d	$a2, $a2, 2
	move	$t1, $s5
	move	$a5, $t6
	xvori.b	$xr3, $xr1, 0
	xvori.b	$xr4, $xr0, 0
	.p2align	4, , 16
.LBB4_37:                               # %vector.body1209
                                        #   Parent Loop BB4_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t1, -112
	ld.w	$t3, $t1, -96
	ld.w	$t4, $t1, -80
	ld.w	$t7, $t1, -64
	ld.w	$t8, $t1, -48
	ld.w	$s1, $t1, -32
	ld.w	$s2, $t1, -16
	ld.w	$s3, $t1, 0
	xvsrli.d	$xr5, $xr4, 2
	xvsrli.d	$xr6, $xr3, 2
	xvpickve2gr.d	$s8, $xr6, 0
	alsl.d	$s8, $s8, $a3, 4
	xvpickve2gr.d	$ra, $xr6, 1
	alsl.d	$ra, $ra, $a3, 4
	xvpickve2gr.d	$a0, $xr6, 2
	alsl.d	$a0, $a0, $a3, 4
	xvpickve2gr.d	$s4, $xr6, 3
	alsl.d	$s4, $s4, $a3, 4
	xvpickve2gr.d	$a1, $xr5, 0
	alsl.d	$a1, $a1, $a3, 4
	xvpickve2gr.d	$fp, $xr5, 1
	alsl.d	$fp, $fp, $a3, 4
	xvpickve2gr.d	$s6, $xr5, 2
	alsl.d	$s6, $s6, $a3, 4
	xvpickve2gr.d	$t5, $xr5, 3
	alsl.d	$t5, $t5, $a3, 4
	stx.w	$t2, $s8, $a2
	stx.w	$t3, $ra, $a2
	stx.w	$t4, $a0, $a2
	stx.w	$t7, $s4, $a2
	stx.w	$t8, $a1, $a2
	stx.w	$s1, $fp, $a2
	stx.w	$s2, $s6, $a2
	stx.w	$s3, $t5, $a2
	xvadd.d	$xr3, $xr3, $xr2
	xvadd.d	$xr4, $xr4, $xr2
	addi.d	$a5, $a5, -8
	addi.d	$t1, $t1, 128
	bnez	$a5, .LBB4_37
# %bb.38:                               # %middle.block1215
                                        #   in Loop: Header=BB4_34 Depth=1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ori	$a1, $zero, 29
	beq	$a0, $t6, .LBB4_33
.LBB4_39:                               # %scalar.ph1204.preheader
                                        #   in Loop: Header=BB4_34 Depth=1
	slli.d	$a0, $a2, 2
	bstrins.d	$a0, $zero, 3, 0
	add.d	$a5, $s7, $a0
	alsl.d	$t1, $a2, $t0, 2
	.p2align	4, , 16
.LBB4_40:                               # %scalar.ph1204
                                        #   Parent Loop BB4_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $t1, 0
	st.w	$a0, $a5, 0
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 16
	addi.d	$t1, $t1, 16
	bltu	$a2, $a7, .LBB4_40
	b	.LBB4_33
.LBB4_41:                               # %._crit_edge844
	bnez	$s4, .LBB4_43
# %bb.42:                               # %.loopexit778
	ld.w	$a0, $a3, 0
	ld.w	$a1, $a3, 16
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 20
	ld.w	$a5, $a3, 8
	ld.w	$a6, $a3, 24
	ld.w	$a7, $a3, 12
	ld.w	$t0, $a3, 28
	add.d	$t1, $a1, $a0
	add.d	$t2, $a4, $a2
	add.d	$t3, $a6, $a5
	add.d	$t4, $t0, $a7
	sub.d	$a0, $a0, $a1
	sub.d	$a1, $a2, $a4
	sub.d	$a2, $a5, $a6
	sub.d	$a4, $a7, $t0
	add.d	$a5, $t4, $t1
	add.d	$a6, $t3, $t2
	sub.d	$a7, $t2, $t3
	ld.d	$t3, $sp, 160                   # 8-byte Folded Reload
	sub.d	$t0, $t1, $t4
	add.d	$t1, $a6, $a5
	pcalau12i	$t2, %pc_hi20(dct_chroma.m4)
	addi.d	$t2, $t2, %pc_lo12(dct_chroma.m4)
	st.w	$t1, $t2, 0
	sub.d	$a5, $a5, $a6
	st.w	$a5, $t2, 8
	add.d	$a5, $a7, $t0
	st.w	$a5, $t2, 4
	sub.d	$a5, $t0, $a7
	st.w	$a5, $t2, 12
	add.d	$a5, $a4, $a0
	add.d	$a6, $a2, $a1
	sub.d	$a1, $a1, $a2
	sub.d	$a0, $a0, $a4
	add.d	$a2, $a6, $a5
	st.w	$a2, $t2, 16
	sub.d	$a2, $a5, $a6
	st.w	$a2, $t2, 24
	add.d	$a2, $a1, $a0
	st.w	$a2, $t2, 20
	sub.d	$a2, $a0, $a1
	st.w	$a2, $t2, 28
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.w	$a5, $a2, 0
	st.w	$a6, $a2, 4
	st.w	$a1, $a2, 8
	st.w	$a0, $a2, 12
.LBB4_43:
	move	$t0, $zero
	move	$a7, $zero
	move	$s1, $zero
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a4, $a1, $a0, 3
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$t6, $a1, $a0, 3
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 3
	slli.d	$a0, $a0, 3
	lu12i.w	$a1, 4080
	sll.w	$s5, $a1, $a0
	pcalau12i	$a0, %pc_hi20(SCAN_YUV422+1)
	addi.d	$s6, $a0, %pc_lo12(SCAN_YUV422+1)
	addi.d	$s8, $zero, -1
	ori	$s7, $zero, 7
	pcalau12i	$a0, %pc_hi20(dct_chroma.m4)
	addi.d	$a6, $a0, %pc_lo12(dct_chroma.m4)
	b	.LBB4_46
	.p2align	4, , 16
.LBB4_44:                               #   in Loop: Header=BB4_46 Depth=1
	beqz	$s7, .LBB4_85
.LBB4_45:                               # %.backedge.backedge
                                        #   in Loop: Header=BB4_46 Depth=1
	addi.d	$s7, $s7, -1
	addi.d	$s6, $s6, 2
.LBB4_46:                               # %.backedge
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s6, 0
	ld.bu	$t5, $s6, -1
	slli.d	$fp, $a0, 2
	beqz	$s4, .LBB4_48
# %bb.47:                               #   in Loop: Header=BB4_46 Depth=1
	alsl.d	$a0, $t5, $a3, 4
	ldx.w	$a2, $a0, $fp
	srai.d	$a0, $a2, 31
	xor	$a1, $a2, $a0
	sub.w	$t1, $a1, $a0
	alsl.d	$a0, $t5, $a6, 4
	stx.w	$a2, $a0, $fp
	addi.d	$s8, $s8, 1
	bnez	$t1, .LBB4_49
	b	.LBB4_50
	.p2align	4, , 16
.LBB4_48:                               #   in Loop: Header=BB4_46 Depth=1
	ld.d	$a0, $a4, 0
	ld.d	$a1, $t6, 0
	alsl.d	$a2, $t5, $a6, 4
	ldx.w	$a2, $a2, $fp
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	srai.d	$a5, $a2, 31
	ld.w	$a0, $a0, 0
	ld.w	$a1, $a1, 0
	xor	$t1, $a2, $a5
	sub.d	$a5, $t1, $a5
	mul.d	$a0, $a0, $a5
	alsl.w	$a0, $a1, $a0, 1
	sra.w	$t1, $a0, $t3
	addi.d	$s8, $s8, 1
	beqz	$t1, .LBB4_50
.LBB4_49:                               #   in Loop: Header=BB4_46 Depth=1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 368
	or	$a0, $a0, $s5
	st.d	$a0, $a1, 368
	ori	$s1, $zero, 1
	slt	$a0, $s1, $s3
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s3, $a0
	or	$s3, $a0, $a1
	slti	$a0, $a2, 0
	srai.d	$a1, $t1, 31
	xor	$a5, $t1, $a1
	sub.d	$a1, $a5, $a1
	sub.d	$a5, $zero, $a1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a5, $a0
	or	$a0, $a0, $a1
	slli.d	$a1, $a7, 2
	stx.w	$a0, $s2, $a1
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	stx.w	$s8, $a0, $a1
	addi.w	$a7, $a7, 1
	addi.d	$s8, $zero, -1
.LBB4_50:                               #   in Loop: Header=BB4_46 Depth=1
	addi.d	$t0, $t0, 1
	bnez	$s4, .LBB4_44
# %bb.51:                               # %.thread1127
                                        #   in Loop: Header=BB4_46 Depth=1
	slti	$a0, $a2, 0
	srai.d	$a1, $t1, 31
	xor	$a2, $t1, $a1
	sub.d	$a1, $a2, $a1
	sub.d	$a2, $zero, $a1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	alsl.d	$a1, $t5, $a3, 4
	stx.w	$a0, $a1, $fp
	bnez	$s7, .LBB4_45
# %bb.52:
	slli.d	$a0, $a7, 2
	stx.w	$zero, $s2, $a0
	ld.w	$a0, $a3, 0
	ld.w	$a1, $a3, 16
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 20
	add.d	$a5, $a1, $a0
	st.w	$a5, $a6, 0
	add.d	$t1, $a4, $a2
	ld.w	$t2, $a3, 8
	ld.w	$t3, $a3, 24
	ld.w	$t4, $a3, 12
	ld.w	$a3, $a3, 28
	st.w	$t1, $a6, 4
	add.d	$t7, $t3, $t2
	st.w	$t7, $a6, 8
	add.d	$t8, $a3, $t4
	st.w	$t8, $a6, 12
	sub.d	$t0, $a0, $a1
	st.w	$t0, $a6, 16
	sub.d	$a7, $a2, $a4
	st.w	$a7, $a6, 20
	sub.d	$t6, $t2, $t3
	st.w	$t6, $a6, 24
	sub.d	$t5, $t4, $a3
	st.w	$t5, $a6, 28
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	addi.d	$a1, $fp, -4
	ori	$t2, $zero, 3
	sub.d	$a2, $t2, $fp
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	ldx.d	$a0, $a3, $a0
	ori	$a3, $zero, 1
	sll.w	$a3, $a3, $a2
	ori	$a2, $zero, 4
	ld.d	$a0, $a0, 0
	sub.d	$a4, $a2, $fp
	add.d	$a2, $t7, $a5
	sub.d	$a5, $a5, $t7
	ld.w	$a6, $a0, 0
	sub.d	$t3, $t1, $t8
	add.d	$t4, $t8, $t1
	add.d	$t1, $t4, $a2
	mul.d	$t1, $a6, $t1
	add.d	$a6, $t3, $a5
	sub.d	$a5, $a5, $t3
	sub.d	$a2, $a2, $t4
	blt	$t2, $fp, .LBB4_91
# %bb.53:
	add.d	$t1, $t1, $a3
	sra.w	$t1, $t1, $a4
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	stptr.w	$t1, $s0, 13136
	ld.w	$t1, $a0, 0
	mul.d	$a6, $t1, $a6
	add.d	$a6, $a6, $a3
	sra.w	$a6, $a6, $a4
	addi.w	$a6, $a6, 2
	srli.d	$a6, $a6, 2
	stptr.w	$a6, $s0, 13392
	ld.w	$a6, $a0, 0
	mul.d	$a5, $a6, $a5
	add.d	$a5, $a5, $a3
	sra.w	$a5, $a5, $a4
	addi.w	$a5, $a5, 2
	srli.d	$a5, $a5, 2
	stptr.w	$a5, $s0, 13648
	ld.w	$a5, $a0, 0
	mul.d	$a2, $a5, $a2
	add.d	$a2, $a2, $a3
	sra.w	$a2, $a2, $a4
	b	.LBB4_92
.LBB4_54:
	ldptr.w	$s5, $s0, 13136
	ldptr.w	$t6, $s0, 13152
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	slli.d	$a4, $a0, 2
	lu12i.w	$a1, 240
	beqz	$s4, .LBB4_86
# %bb.55:
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a3, $a0, 0
	bstrpick.d	$a0, $a4, 31, 2
	slli.d	$a0, $a0, 2
	ldptr.w	$a4, $a3, 4008
	sll.w	$a0, $a1, $a0
	srai.d	$a1, $s5, 31
	xor	$a2, $s5, $a1
	sub.w	$a2, $a2, $a1
	bnez	$a4, .LBB4_57
# %bb.56:
	ld.w	$a1, $s0, 36
	slti	$a1, $a1, 4
	ori	$a5, $zero, 2063
	sltu	$a6, $a2, $a5
	masknez	$a5, $a5, $a6
	maskeqz	$a6, $a2, $a6
	or	$a5, $a6, $a5
	maskeqz	$a5, $a5, $a1
	masknez	$a1, $a2, $a1
	or	$a2, $a5, $a1
.LBB4_57:
	ldptr.w	$a6, $s0, 13392
	ldptr.w	$a1, $s0, 13408
	beqz	$a2, .LBB4_108
# %bb.58:
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a4, $a5, 368
	move	$t0, $zero
	or	$a4, $a4, $a0
	st.d	$a4, $a5, 368
	ori	$t3, $zero, 1
	slti	$a4, $s5, 0
	sub.d	$a5, $zero, $a2
	masknez	$a2, $a2, $a4
	maskeqz	$a4, $a5, $a4
	slt	$a5, $t3, $s3
	or	$a2, $a4, $a2
	st.w	$a2, $s2, 0
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	st.w	$zero, $a2, 0
	ori	$a2, $zero, 4008
	ldx.w	$a4, $a3, $a2
	masknez	$a2, $t3, $a5
	maskeqz	$a5, $s3, $a5
	or	$s3, $a5, $a2
	srai.d	$a2, $t6, 31
	xor	$a5, $t6, $a2
	sub.w	$a2, $a5, $a2
	bnez	$a4, .LBB4_60
.LBB4_59:
	ld.w	$a5, $s0, 36
	slti	$a5, $a5, 4
	ori	$a7, $zero, 2063
	sltu	$t1, $a2, $a7
	masknez	$a7, $a7, $t1
	maskeqz	$t1, $a2, $t1
	or	$a7, $t1, $a7
	maskeqz	$a7, $a7, $a5
	masknez	$a2, $a2, $a5
	or	$a2, $a7, $a2
.LBB4_60:
	beqz	$a2, .LBB4_109
# %bb.61:
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a4, $a5, 368
	or	$a4, $a4, $a0
	st.d	$a4, $a5, 368
	ori	$a4, $zero, 1
	slt	$a5, $a4, $s3
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $s3, $a5
	or	$s3, $a5, $a4
	slti	$a4, $t6, 0
	sub.d	$a5, $zero, $a2
	masknez	$a2, $a2, $a4
	maskeqz	$a4, $a5, $a4
	or	$a2, $a4, $a2
	slli.d	$a4, $t3, 2
	stx.w	$a2, $s2, $a4
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	stx.w	$t0, $a2, $a4
	ori	$a2, $zero, 4008
	ldx.w	$a4, $a3, $a2
	addi.d	$a7, $t3, 1
	addi.d	$t0, $zero, -1
	ori	$t3, $zero, 1
	srai.d	$a2, $a6, 31
	xor	$a5, $a6, $a2
	sub.w	$a5, $a5, $a2
	bnez	$a4, .LBB4_63
.LBB4_62:
	ld.w	$a2, $s0, 36
	slti	$a2, $a2, 4
	ori	$t1, $zero, 2063
	sltu	$t2, $a5, $t1
	masknez	$t1, $t1, $t2
	maskeqz	$t2, $a5, $t2
	or	$t1, $t2, $t1
	maskeqz	$t1, $t1, $a2
	masknez	$a2, $a5, $a2
	or	$a5, $t1, $a2
.LBB4_63:
	addi.d	$a2, $t0, 1
	beqz	$a5, .LBB4_65
# %bb.64:
	ld.d	$t0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a4, $t0, 368
	or	$a4, $a4, $a0
	st.d	$a4, $t0, 368
	ori	$t3, $zero, 1
	slt	$a4, $t3, $s3
	masknez	$t0, $t3, $a4
	maskeqz	$t1, $s3, $a4
	slti	$a4, $a6, 0
	sub.d	$a6, $zero, $a5
	masknez	$a5, $a5, $a4
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $a5
	slli.d	$a5, $a7, 2
	stx.w	$a4, $s2, $a5
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	stx.w	$a2, $a4, $a5
	ori	$a2, $zero, 4008
	ldx.w	$a4, $a3, $a2
	or	$s3, $t1, $t0
	addi.d	$a7, $a7, 1
	addi.d	$a2, $zero, -1
.LBB4_65:
	srai.d	$a3, $a1, 31
	xor	$a5, $a1, $a3
	sub.w	$a3, $a5, $a3
	bnez	$a4, .LBB4_67
# %bb.66:
	ld.w	$a4, $s0, 36
	slti	$a4, $a4, 4
	ori	$a5, $zero, 2063
	sltu	$a6, $a3, $a5
	masknez	$a5, $a5, $a6
	maskeqz	$a6, $a3, $a6
	or	$a5, $a6, $a5
	maskeqz	$a5, $a5, $a4
	masknez	$a3, $a3, $a4
	or	$a3, $a5, $a3
.LBB4_67:
	beqz	$a3, .LBB4_69
# %bb.68:
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a4, $a5, 368
	addi.d	$a2, $a2, 1
	or	$a0, $a4, $a0
	st.d	$a0, $a5, 368
	ori	$t3, $zero, 1
	slt	$a0, $t3, $s3
	masknez	$a4, $t3, $a0
	maskeqz	$a0, $s3, $a0
	or	$s3, $a0, $a4
	slti	$a0, $a1, 0
	sub.d	$a1, $zero, $a3
	masknez	$a3, $a3, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a3
	slli.d	$a1, $a7, 2
	stx.w	$a0, $s2, $a1
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	stx.w	$a2, $a0, $a1
	addi.d	$a7, $a7, 1
.LBB4_69:                               # %.loopexit777.thread
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 0
	slli.d	$a0, $a7, 2
	stx.w	$zero, $s2, $a0
	ldptr.w	$a0, $t0, 15528
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB4_96
# %bb.70:
	st.d	$t3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	ori	$a0, $s7, 3240
	add.d	$a0, $t0, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	move	$a3, $s7
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	b	.LBB4_130
.LBB4_71:
	move	$s1, $zero
	b	.LBB4_128
.LBB4_72:                               # %.preheader786
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	bnez	$s4, .LBB4_74
# %bb.73:                               # %.lr.ph820.split.preheader
	ld.w	$a1, $a0, 0
	ld.w	$a2, $a0, 48
	ld.w	$a3, $a0, 16
	ld.w	$a4, $a0, 32
	add.d	$a5, $a2, $a1
	add.d	$a6, $a4, $a3
	sub.d	$a3, $a3, $a4
	sub.d	$a1, $a1, $a2
	add.d	$t0, $a6, $a5
	sub.d	$a2, $a5, $a6
	ld.w	$a4, $a0, 4
	ld.w	$a5, $a0, 52
	ld.w	$a7, $a0, 20
	ld.w	$t1, $a0, 36
	add.d	$a6, $a3, $a1
	sub.d	$a1, $a1, $a3
	add.d	$a3, $a5, $a4
	add.d	$t2, $t1, $a7
	sub.d	$a7, $a7, $t1
	sub.d	$a5, $a4, $a5
	add.d	$t1, $t2, $a3
	sub.d	$a4, $a3, $t2
	ld.w	$t2, $a0, 8
	ld.w	$t3, $a0, 56
	ld.w	$t4, $a0, 24
	ld.w	$t5, $a0, 40
	add.d	$t6, $a7, $a5
	sub.d	$a3, $a5, $a7
	add.d	$a5, $t3, $t2
	add.d	$a7, $t5, $t4
	sub.d	$t4, $t4, $t5
	sub.d	$t2, $t2, $t3
	add.d	$t3, $a7, $a5
	sub.d	$a5, $a5, $a7
	ld.w	$t5, $a0, 12
	ld.w	$t7, $a0, 60
	ld.w	$t8, $a0, 28
	ld.w	$fp, $a0, 44
	add.d	$s1, $t4, $t2
	sub.d	$a7, $t2, $t4
	add.d	$t2, $t7, $t5
	add.d	$t4, $fp, $t8
	sub.d	$t8, $t8, $fp
	sub.d	$t5, $t5, $t7
	add.d	$t7, $t4, $t2
	sub.d	$t2, $t2, $t4
	add.d	$t4, $t8, $t5
	sub.d	$t5, $t5, $t8
	add.d	$t8, $t7, $t0
	add.d	$fp, $t3, $t1
	sub.d	$t1, $t1, $t3
	sub.d	$t0, $t0, $t7
	add.w	$t3, $fp, $t8
	srli.d	$t3, $t3, 1
	st.w	$t3, $a0, 0
	sub.w	$t3, $t8, $fp
	srli.d	$t3, $t3, 1
	st.w	$t3, $a0, 8
	add.w	$t3, $t1, $t0
	srli.d	$t3, $t3, 1
	st.w	$t3, $a0, 4
	sub.w	$t0, $t0, $t1
	srli.d	$t0, $t0, 1
	st.w	$t0, $a0, 12
	add.d	$t0, $t4, $a6
	add.d	$t1, $s1, $t6
	sub.d	$t3, $t6, $s1
	sub.d	$a6, $a6, $t4
	add.w	$t4, $t1, $t0
	srli.d	$t4, $t4, 1
	st.w	$t4, $a0, 16
	sub.w	$t0, $t0, $t1
	srli.d	$t0, $t0, 1
	st.w	$t0, $a0, 24
	add.w	$t0, $t3, $a6
	srli.d	$t0, $t0, 1
	st.w	$t0, $a0, 20
	sub.w	$a6, $a6, $t3
	srli.d	$a6, $a6, 1
	st.w	$a6, $a0, 28
	add.d	$a6, $t2, $a2
	add.d	$t0, $a5, $a4
	sub.d	$a4, $a4, $a5
	sub.d	$a2, $a2, $t2
	add.w	$a5, $t0, $a6
	srli.d	$a5, $a5, 1
	st.w	$a5, $a0, 32
	sub.w	$a5, $a6, $t0
	srli.d	$a5, $a5, 1
	st.w	$a5, $a0, 40
	add.w	$a5, $a4, $a2
	srli.d	$a5, $a5, 1
	st.w	$a5, $a0, 36
	sub.w	$a2, $a2, $a4
	srli.d	$a2, $a2, 1
	st.w	$a2, $a0, 44
	add.d	$a2, $t5, $a1
	add.d	$a4, $a7, $a3
	sub.d	$a3, $a3, $a7
	sub.d	$a1, $a1, $t5
	add.w	$a5, $a4, $a2
	srli.d	$a5, $a5, 1
	st.w	$a5, $a0, 48
	sub.w	$a5, $a2, $a4
	srli.d	$a5, $a5, 1
	st.w	$a5, $a0, 56
	add.w	$a5, $a3, $a1
	srli.d	$a5, $a5, 1
	st.w	$a5, $a0, 52
	sub.w	$a5, $a1, $a3
	srli.d	$a5, $a5, 1
	st.w	$a5, $a0, 60
	st.w	$a2, $s5, 0
	st.w	$a4, $s5, 4
	st.w	$a3, $s5, 8
	st.w	$a1, $s5, 12
.LBB4_74:                               # %.preheader784
	move	$a3, $zero
	move	$a1, $zero
	move	$s1, $zero
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a4, $a2, $a4, 3
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$a6, $a2, $a5, 3
	addi.d	$a7, $a2, 16
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	slli.d	$a2, $a2, 4
	lu12i.w	$a5, -16
	lu32i.d	$a5, 0
	sll.d	$t0, $a5, $a2
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	addi.d	$t5, $a2, 1
	addi.d	$fp, $zero, -1
	ori	$t6, $zero, 15
	b	.LBB4_77
	.p2align	4, , 16
.LBB4_75:                               #   in Loop: Header=BB4_77 Depth=1
	beqz	$t6, .LBB4_90
.LBB4_76:                               # %.backedge1153.backedge
                                        #   in Loop: Header=BB4_77 Depth=1
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 2
.LBB4_77:                               # %.backedge1153
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $t5, -1
	ld.bu	$a5, $t5, 0
	alsl.d	$a2, $a2, $a0, 4
	slli.d	$t1, $a5, 2
	ldx.w	$a5, $a2, $t1
	srai.d	$t2, $a5, 31
	xor	$t3, $a5, $t2
	sub.w	$t2, $t3, $t2
	bnez	$s4, .LBB4_79
# %bb.78:                               #   in Loop: Header=BB4_77 Depth=1
	ld.d	$t3, $a4, 0
	ld.d	$t4, $a6, 0
	ld.d	$t3, $t3, 0
	ld.d	$t4, $t4, 0
	ld.w	$t3, $t3, 0
	ld.w	$t4, $t4, 0
	mul.d	$t2, $t3, $t2
	alsl.w	$t2, $t4, $t2, 1
	sra.w	$t2, $t2, $a7
.LBB4_79:                               #   in Loop: Header=BB4_77 Depth=1
	addi.d	$fp, $fp, 1
	slti	$a5, $a5, 0
	beqz	$t2, .LBB4_81
# %bb.80:                               #   in Loop: Header=BB4_77 Depth=1
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $t4, 368
	or	$t3, $t3, $t0
	st.d	$t3, $t4, 368
	ori	$s1, $zero, 1
	slt	$t3, $s1, $s3
	masknez	$t4, $s1, $t3
	maskeqz	$t3, $s3, $t3
	or	$s3, $t3, $t4
	srai.d	$t3, $t2, 31
	xor	$t4, $t2, $t3
	sub.d	$t3, $t4, $t3
	sub.d	$t4, $zero, $t3
	masknez	$t3, $t3, $a5
	maskeqz	$t4, $t4, $a5
	or	$t3, $t4, $t3
	slli.d	$t4, $a1, 2
	stx.w	$t3, $s2, $t4
	ld.d	$t3, $sp, 240                   # 8-byte Folded Reload
	stx.w	$fp, $t3, $t4
	addi.w	$a1, $a1, 1
	addi.d	$fp, $zero, -1
.LBB4_81:                               #   in Loop: Header=BB4_77 Depth=1
	addi.d	$a3, $a3, 1
	bnez	$s4, .LBB4_75
# %bb.82:                               # %.thread1131
                                        #   in Loop: Header=BB4_77 Depth=1
	srai.d	$t3, $t2, 31
	xor	$t2, $t2, $t3
	sub.d	$t2, $t2, $t3
	sub.d	$t3, $zero, $t2
	masknez	$t2, $t2, $a5
	maskeqz	$a5, $t3, $a5
	or	$a5, $a5, $t2
	stx.w	$a5, $a2, $t1
	bnez	$t6, .LBB4_76
# %bb.83:                               # %.preheader783.preheader
	move	$ra, $s1
	move	$s1, $s3
	slli.d	$a1, $a1, 2
	stx.w	$zero, $s2, $a1
	ld.w	$a1, $a0, 0
	ld.w	$a2, $a0, 32
	ld.w	$a3, $a0, 16
	ld.w	$a4, $a0, 48
	add.d	$a5, $a2, $a1
	sub.d	$a1, $a1, $a2
	sub.d	$a6, $a3, $a4
	add.d	$a3, $a4, $a3
	add.d	$a2, $a3, $a5
	st.w	$a2, $a0, 0
	add.d	$s7, $a6, $a1
	st.w	$s7, $a0, 16
	sub.d	$s3, $a1, $a6
	st.w	$s3, $a0, 32
	sub.d	$a1, $a5, $a3
	ld.w	$a3, $a0, 4
	ld.w	$a4, $a0, 36
	ld.w	$a5, $a0, 20
	ld.w	$a6, $a0, 52
	st.w	$a1, $a0, 48
	add.d	$a7, $a4, $a3
	sub.d	$a3, $a3, $a4
	sub.d	$t0, $a5, $a6
	add.d	$a5, $a6, $a5
	add.d	$t1, $a5, $a7
	st.w	$t1, $a0, 4
	add.d	$a4, $t0, $a3
	st.w	$a4, $a0, 20
	sub.d	$s4, $a3, $t0
	st.w	$s4, $a0, 36
	sub.d	$a3, $a7, $a5
	ld.w	$a5, $a0, 8
	ld.w	$a6, $a0, 40
	ld.w	$a7, $a0, 24
	ld.w	$t0, $a0, 56
	st.w	$a3, $a0, 52
	add.d	$t2, $a6, $a5
	sub.d	$a5, $a5, $a6
	sub.d	$a6, $a7, $t0
	add.d	$a7, $t0, $a7
	add.d	$t3, $a7, $t2
	st.w	$t3, $a0, 8
	add.d	$t5, $a6, $a5
	st.w	$t5, $a0, 24
	sub.d	$s5, $a5, $a6
	st.w	$s5, $a0, 40
	sub.d	$t0, $t2, $a7
	ld.w	$a5, $a0, 12
	ld.w	$a6, $a0, 44
	ld.w	$a7, $a0, 28
	ld.w	$t2, $a0, 60
	st.w	$t0, $a0, 56
	add.d	$t4, $a6, $a5
	sub.d	$a5, $a5, $a6
	sub.d	$a6, $a7, $t2
	add.d	$a7, $t2, $a7
	add.d	$t2, $a7, $t4
	st.w	$t2, $a0, 12
	add.d	$fp, $a6, $a5
	st.w	$fp, $a0, 28
	sub.d	$s6, $a5, $a6
	st.w	$s6, $a0, 44
	sub.d	$s2, $t4, $a7
	st.w	$s2, $a0, 60
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	addi.d	$a6, $s8, -4
	ori	$t4, $zero, 3
	sub.d	$a5, $t4, $s8
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
	ldx.d	$a0, $a7, $a0
	ori	$a7, $zero, 1
	sll.w	$a7, $a7, $a5
	ori	$a5, $zero, 4
	ld.d	$a0, $a0, 0
	sub.d	$t6, $a5, $s8
	add.d	$t7, $t3, $a2
	sub.d	$a2, $a2, $t3
	ld.w	$a5, $a0, 0
	sub.d	$t3, $t1, $t2
	add.d	$t8, $t2, $t1
	add.d	$t1, $t8, $t7
	mul.d	$t2, $a5, $t1
	add.d	$t1, $t3, $a2
	sub.d	$a5, $a2, $t3
	sub.d	$a2, $t7, $t8
	blt	$t4, $s8, .LBB4_97
# %bb.84:
	add.d	$t2, $t2, $a7
	sra.w	$t2, $t2, $t6
	addi.w	$t2, $t2, 2
	srli.d	$t2, $t2, 2
	stptr.w	$t2, $s0, 13136
	ld.w	$t2, $a0, 0
	mul.d	$t1, $t2, $t1
	add.d	$t1, $t1, $a7
	sra.w	$t1, $t1, $t6
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	stptr.w	$t1, $s0, 13392
	ld.w	$t1, $a0, 0
	mul.d	$a5, $t1, $a5
	add.d	$a5, $a5, $a7
	sra.w	$a5, $a5, $t6
	addi.w	$a5, $a5, 2
	srli.d	$a5, $a5, 2
	stptr.w	$a5, $s0, 13648
	ld.w	$a5, $a0, 0
	mul.d	$a2, $a5, $a2
	add.d	$a2, $a2, $a7
	sra.w	$a2, $a2, $t6
	b	.LBB4_98
.LBB4_85:
	slli.d	$a0, $a7, 2
	stx.w	$zero, $s2, $a0
	lu12i.w	$s7, 3
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	b	.LBB4_127
.LBB4_86:
	ori	$a0, $s7, 1104
	ldx.w	$ra, $s0, $a0
	ori	$a0, $s7, 1120
	ldx.w	$s6, $s0, $a0
	add.d	$fp, $t6, $s5
	add.d	$t5, $s6, $ra
	add.w	$a2, $t5, $fp
	add.d	$a3, $s5, $ra
	add.d	$a5, $t6, $s6
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	ld.d	$a6, $sp, 192                   # 8-byte Folded Reload
	ldx.d	$a6, $a6, $a0
	ld.d	$t2, $sp, 200                   # 8-byte Folded Reload
	slli.d	$a7, $t2, 3
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	ldx.d	$t0, $t0, $a7
	pcalau12i	$a7, %got_pc_hi20(input)
	ld.d	$t1, $a7, %got_pc_lo12(input)
	sub.w	$s8, $a3, $a5
	ld.d	$a7, $a6, 0
	ld.d	$a6, $t0, 0
	ld.d	$s4, $t1, 0
	bstrpick.d	$a3, $a4, 31, 2
	slli.d	$a3, $a3, 2
	sll.w	$a1, $a1, $a3
	srai.d	$a3, $a2, 31
	xor	$a4, $a2, $a3
	ld.w	$a5, $a7, 0
	ld.w	$t0, $a6, 0
	sub.d	$a3, $a4, $a3
	ldptr.w	$s7, $s4, 4008
	mul.d	$a3, $a5, $a3
	alsl.w	$a3, $t0, $a3, 1
	addi.d	$t0, $t2, 16
	sra.w	$a3, $a3, $t0
	bnez	$s7, .LBB4_88
# %bb.87:
	ld.w	$a4, $s0, 36
	slti	$a4, $a4, 4
	ori	$a5, $zero, 2063
	slt	$t1, $a3, $a5
	masknez	$a5, $a5, $t1
	maskeqz	$t1, $a3, $t1
	or	$a5, $t1, $a5
	maskeqz	$a5, $a5, $a4
	masknez	$a3, $a3, $a4
	or	$a3, $a5, $a3
.LBB4_88:
	beqz	$a3, .LBB4_110
# %bb.89:
	ld.d	$t1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a5, $t1, 368
	move	$a4, $zero
	or	$a5, $a5, $a1
	st.d	$a5, $t1, 368
	ori	$s1, $zero, 1
	slti	$a2, $a2, 0
	srai.d	$a5, $a3, 31
	xor	$a3, $a3, $a5
	sub.d	$a3, $a3, $a5
	sub.d	$a5, $zero, $a3
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a5, $a2
	slt	$a5, $s1, $s3
	or	$a3, $a2, $a3
	st.w	$a3, $s2, 0
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	st.w	$zero, $a2, 0
	ori	$a2, $zero, 4008
	ldx.w	$s7, $s4, $a2
	maskeqz	$a2, $s3, $a5
	masknez	$a5, $s1, $a5
	or	$s3, $a2, $a5
	b	.LBB4_111
.LBB4_90:
	slli.d	$a0, $a1, 2
	stx.w	$zero, $s2, $a0
	b	.LBB4_127
.LBB4_91:
	sll.w	$t1, $t1, $a1
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	stptr.w	$t1, $s0, 13136
	ld.w	$t1, $a0, 0
	mul.d	$a6, $t1, $a6
	sll.w	$a6, $a6, $a1
	addi.w	$a6, $a6, 2
	srli.d	$a6, $a6, 2
	stptr.w	$a6, $s0, 13392
	ld.w	$a6, $a0, 0
	mul.d	$a5, $a6, $a5
	sll.w	$a5, $a5, $a1
	addi.w	$a5, $a5, 2
	srli.d	$a5, $a5, 2
	stptr.w	$a5, $s0, 13648
	ld.w	$a5, $a0, 0
	mul.d	$a2, $a5, $a2
	sll.w	$a2, $a2, $a1
.LBB4_92:
	addi.w	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	stptr.w	$a2, $s0, 13904
	add.d	$a2, $t6, $t0
	sub.d	$a5, $t0, $t6
	ld.w	$a6, $a0, 0
	sub.d	$t0, $a7, $t5
	add.d	$t1, $t5, $a7
	add.d	$a7, $t1, $a2
	mul.d	$a7, $a6, $a7
	ori	$t2, $zero, 4
	add.d	$a6, $t0, $a5
	sub.d	$a5, $a5, $t0
	sub.d	$a2, $a2, $t1
	lu12i.w	$s7, 3
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 120                   # 8-byte Folded Reload
	bge	$t0, $t2, .LBB4_94
# %bb.93:
	add.d	$a1, $a7, $a3
	sra.w	$a1, $a1, $a4
	addi.w	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	stptr.w	$a1, $s0, 13152
	ld.w	$a1, $a0, 0
	mul.d	$a1, $a1, $a6
	add.d	$a1, $a1, $a3
	sra.w	$a1, $a1, $a4
	addi.w	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	stptr.w	$a1, $s0, 13408
	ld.w	$a1, $a0, 0
	mul.d	$a1, $a1, $a5
	add.d	$a1, $a1, $a3
	sra.w	$a1, $a1, $a4
	addi.w	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	stptr.w	$a1, $s0, 13664
	ld.w	$a0, $a0, 0
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a3
	sra.w	$a0, $a0, $a4
	b	.LBB4_95
.LBB4_94:
	sll.w	$a3, $a7, $a1
	addi.w	$a3, $a3, 2
	srli.d	$a3, $a3, 2
	stptr.w	$a3, $s0, 13152
	ld.w	$a3, $a0, 0
	mul.d	$a3, $a3, $a6
	sll.w	$a3, $a3, $a1
	addi.w	$a3, $a3, 2
	srli.d	$a3, $a3, 2
	stptr.w	$a3, $s0, 13408
	ld.w	$a3, $a0, 0
	mul.d	$a3, $a3, $a5
	sll.w	$a3, $a3, $a1
	addi.w	$a3, $a3, 2
	srli.d	$a3, $a3, 2
	stptr.w	$a3, $s0, 13664
	ld.w	$a0, $a0, 0
	mul.d	$a0, $a0, $a2
	sll.w	$a0, $a0, $a1
.LBB4_95:                               # %.loopexit777
	addi.w	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	stptr.w	$a0, $s0, 13920
	b	.LBB4_127
.LBB4_96:
	move	$s1, $t0
	b	.LBB4_174
.LBB4_97:
	sll.w	$t2, $t2, $a6
	addi.w	$t2, $t2, 2
	srli.d	$t2, $t2, 2
	stptr.w	$t2, $s0, 13136
	ld.w	$t2, $a0, 0
	mul.d	$t1, $t2, $t1
	sll.w	$t1, $t1, $a6
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	stptr.w	$t1, $s0, 13392
	ld.w	$t1, $a0, 0
	mul.d	$a5, $t1, $a5
	sll.w	$a5, $a5, $a6
	addi.w	$a5, $a5, 2
	srli.d	$a5, $a5, 2
	stptr.w	$a5, $s0, 13648
	ld.w	$a5, $a0, 0
	mul.d	$a2, $a5, $a2
	sll.w	$a2, $a2, $a6
.LBB4_98:
	addi.w	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	stptr.w	$a2, $s0, 13904
	add.d	$a2, $t5, $s7
	sub.d	$t2, $s7, $t5
	ld.w	$a5, $a0, 0
	sub.d	$t3, $a4, $fp
	add.d	$t4, $fp, $a4
	add.d	$a4, $t4, $a2
	mul.d	$t1, $a5, $a4
	ori	$t5, $zero, 4
	add.d	$a5, $t3, $t2
	sub.d	$a4, $t2, $t3
	sub.d	$a2, $a2, $t4
	ld.d	$t2, $sp, 200                   # 8-byte Folded Reload
	bge	$t2, $t5, .LBB4_100
# %bb.99:
	add.d	$t1, $t1, $a7
	sra.w	$t1, $t1, $t6
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	stptr.w	$t1, $s0, 13152
	ld.w	$t1, $a0, 0
	mul.d	$a5, $t1, $a5
	add.d	$a5, $a5, $a7
	sra.w	$a5, $a5, $t6
	addi.w	$a5, $a5, 2
	srli.d	$a5, $a5, 2
	stptr.w	$a5, $s0, 13408
	ld.w	$a5, $a0, 0
	mul.d	$a4, $a5, $a4
	add.d	$a4, $a4, $a7
	sra.w	$a4, $a4, $t6
	addi.w	$a4, $a4, 2
	srli.d	$a4, $a4, 2
	stptr.w	$a4, $s0, 13664
	ld.w	$a4, $a0, 0
	mul.d	$a2, $a4, $a2
	add.d	$a2, $a2, $a7
	sra.w	$a2, $a2, $t6
	b	.LBB4_101
.LBB4_100:
	sll.w	$t1, $t1, $a6
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	stptr.w	$t1, $s0, 13152
	ld.w	$t1, $a0, 0
	mul.d	$a5, $t1, $a5
	sll.w	$a5, $a5, $a6
	addi.w	$a5, $a5, 2
	srli.d	$a5, $a5, 2
	stptr.w	$a5, $s0, 13408
	ld.w	$a5, $a0, 0
	mul.d	$a4, $a5, $a4
	sll.w	$a4, $a4, $a6
	addi.w	$a4, $a4, 2
	srli.d	$a4, $a4, 2
	stptr.w	$a4, $s0, 13664
	ld.w	$a4, $a0, 0
	mul.d	$a2, $a4, $a2
	sll.w	$a2, $a2, $a6
.LBB4_101:
	lu12i.w	$s7, 3
	addi.w	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	stptr.w	$a2, $s0, 13920
	add.d	$a2, $s5, $s3
	sub.d	$a4, $s3, $s5
	ld.w	$a5, $a0, 0
	sub.d	$t2, $s4, $s6
	add.d	$t3, $s6, $s4
	add.d	$t1, $t3, $a2
	mul.d	$t1, $a5, $t1
	ori	$t4, $zero, 4
	add.d	$a5, $t2, $a4
	sub.d	$a4, $a4, $t2
	sub.d	$a2, $a2, $t3
	ld.d	$t2, $sp, 200                   # 8-byte Folded Reload
	bge	$t2, $t4, .LBB4_103
# %bb.102:
	add.d	$t1, $t1, $a7
	sra.w	$t1, $t1, $t6
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	stptr.w	$t1, $s0, 13168
	ld.w	$t1, $a0, 0
	mul.d	$a5, $t1, $a5
	add.d	$a5, $a5, $a7
	sra.w	$a5, $a5, $t6
	addi.w	$a5, $a5, 2
	srli.d	$a5, $a5, 2
	stptr.w	$a5, $s0, 13424
	ld.w	$a5, $a0, 0
	mul.d	$a4, $a5, $a4
	add.d	$a4, $a4, $a7
	sra.w	$a4, $a4, $t6
	addi.w	$a4, $a4, 2
	srli.d	$a4, $a4, 2
	stptr.w	$a4, $s0, 13680
	ld.w	$a4, $a0, 0
	mul.d	$a2, $a4, $a2
	add.d	$a2, $a2, $a7
	sra.w	$a2, $a2, $t6
	b	.LBB4_104
.LBB4_103:
	sll.w	$t1, $t1, $a6
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	stptr.w	$t1, $s0, 13168
	ld.w	$t1, $a0, 0
	mul.d	$a5, $t1, $a5
	sll.w	$a5, $a5, $a6
	addi.w	$a5, $a5, 2
	srli.d	$a5, $a5, 2
	stptr.w	$a5, $s0, 13424
	ld.w	$a5, $a0, 0
	mul.d	$a4, $a5, $a4
	sll.w	$a4, $a4, $a6
	addi.w	$a4, $a4, 2
	srli.d	$a4, $a4, 2
	stptr.w	$a4, $s0, 13680
	ld.w	$a4, $a0, 0
	mul.d	$a2, $a4, $a2
	sll.w	$a2, $a2, $a6
.LBB4_104:
	move	$s3, $s1
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	stptr.w	$a2, $s0, 13936
	add.d	$a5, $t0, $a1
	sub.d	$a1, $a1, $t0
	ld.w	$a2, $a0, 0
	sub.d	$t0, $a3, $s2
	add.d	$t1, $s2, $a3
	add.d	$a3, $t1, $a5
	mul.d	$a4, $a2, $a3
	ori	$t2, $zero, 4
	add.d	$a3, $t0, $a1
	sub.d	$a2, $a1, $t0
	sub.d	$a1, $a5, $t1
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	move	$s1, $ra
	bge	$a5, $t2, .LBB4_106
# %bb.105:
	add.d	$a4, $a4, $a7
	sra.w	$a4, $a4, $t6
	addi.w	$a4, $a4, 2
	srli.d	$a4, $a4, 2
	stptr.w	$a4, $s0, 13184
	ld.w	$a4, $a0, 0
	mul.d	$a3, $a4, $a3
	add.d	$a3, $a3, $a7
	sra.w	$a3, $a3, $t6
	addi.w	$a3, $a3, 2
	srli.d	$a3, $a3, 2
	stptr.w	$a3, $s0, 13440
	ld.w	$a3, $a0, 0
	mul.d	$a2, $a3, $a2
	add.d	$a2, $a2, $a7
	sra.w	$a2, $a2, $t6
	addi.w	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	stptr.w	$a2, $s0, 13696
	ld.w	$a0, $a0, 0
	mul.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a7
	sra.w	$a0, $a0, $t6
	b	.LBB4_107
.LBB4_106:
	sll.w	$a4, $a4, $a6
	addi.w	$a4, $a4, 2
	srli.d	$a4, $a4, 2
	stptr.w	$a4, $s0, 13184
	ld.w	$a4, $a0, 0
	mul.d	$a3, $a4, $a3
	sll.w	$a3, $a3, $a6
	addi.w	$a3, $a3, 2
	srli.d	$a3, $a3, 2
	stptr.w	$a3, $s0, 13440
	ld.w	$a3, $a0, 0
	mul.d	$a2, $a3, $a2
	sll.w	$a2, $a2, $a6
	addi.w	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	stptr.w	$a2, $s0, 13696
	ld.w	$a0, $a0, 0
	mul.d	$a0, $a0, $a1
	sll.w	$a0, $a0, $a6
.LBB4_107:                              # %.loopexit777
	addi.w	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	stptr.w	$a0, $s0, 13952
	b	.LBB4_127
.LBB4_108:
	move	$t3, $zero
	ori	$t0, $zero, 1
	srai.d	$a2, $t6, 31
	xor	$a5, $t6, $a2
	sub.w	$a2, $a5, $a2
	bnez	$a4, .LBB4_60
	b	.LBB4_59
.LBB4_109:
	move	$a7, $t3
	srai.d	$a2, $a6, 31
	xor	$a5, $a6, $a2
	sub.w	$a5, $a5, $a2
	bnez	$a4, .LBB4_63
	b	.LBB4_62
.LBB4_110:
	move	$s1, $zero
	move	$a3, $zero
	ori	$a4, $zero, 1
.LBB4_111:
	add.d	$a2, $t6, $ra
	sub.w	$ra, $fp, $t5
	srai.d	$a5, $s8, 31
	ld.w	$t1, $a7, 0
	ld.w	$t2, $a6, 0
	xor	$t3, $s8, $a5
	sub.d	$a5, $t3, $a5
	mul.d	$a5, $t1, $a5
	alsl.w	$a5, $t2, $a5, 1
	sra.w	$a5, $a5, $t0
	bnez	$s7, .LBB4_113
# %bb.112:
	ld.w	$t1, $s0, 36
	slti	$t1, $t1, 4
	ori	$t2, $zero, 2063
	slt	$t3, $a5, $t2
	masknez	$t2, $t2, $t3
	maskeqz	$t3, $a5, $t3
	or	$t2, $t3, $t2
	maskeqz	$t2, $t2, $t1
	masknez	$a5, $a5, $t1
	or	$a5, $t2, $a5
.LBB4_113:
	sub.d	$a2, $s5, $a2
	beqz	$a5, .LBB4_115
# %bb.114:
	ld.d	$t2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t1, $t2, 368
	or	$t1, $t1, $a1
	st.d	$t1, $t2, 368
	ori	$t1, $zero, 1
	slt	$t2, $t1, $s3
	masknez	$t1, $t1, $t2
	maskeqz	$t2, $s3, $t2
	or	$s3, $t2, $t1
	slti	$t1, $s8, 0
	srai.d	$t2, $a5, 31
	xor	$a5, $a5, $t2
	sub.d	$a5, $a5, $t2
	sub.d	$t2, $zero, $a5
	masknez	$a5, $a5, $t1
	maskeqz	$t1, $t2, $t1
	or	$t6, $t1, $a5
	slli.d	$a5, $s1, 2
	stx.w	$t6, $s2, $a5
	ld.d	$t1, $sp, 240                   # 8-byte Folded Reload
	stx.w	$a4, $t1, $a5
	ori	$a4, $zero, 4008
	ldx.w	$s7, $s4, $a4
	addi.d	$s5, $s1, 1
	addi.d	$a4, $zero, -1
	ori	$s1, $zero, 1
	b	.LBB4_116
.LBB4_115:
	move	$t6, $zero
	move	$s5, $s1
.LBB4_116:
	add.w	$s6, $a2, $s6
	srai.d	$a2, $ra, 31
	ld.w	$a5, $a7, 0
	ld.w	$t1, $a6, 0
	xor	$t2, $ra, $a2
	sub.d	$a2, $t2, $a2
	mul.d	$a2, $a5, $a2
	alsl.w	$a2, $t1, $a2, 1
	sra.w	$a5, $a2, $t0
	bnez	$s7, .LBB4_118
# %bb.117:
	ld.w	$a2, $s0, 36
	slti	$a2, $a2, 4
	ori	$t1, $zero, 2063
	slt	$t2, $a5, $t1
	masknez	$t1, $t1, $t2
	maskeqz	$t2, $a5, $t2
	or	$t1, $t2, $t1
	maskeqz	$t1, $t1, $a2
	masknez	$a2, $a5, $a2
	or	$a5, $t1, $a2
.LBB4_118:
	addi.d	$a2, $a4, 1
	beqz	$a5, .LBB4_120
# %bb.119:
	ld.d	$t1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a4, $t1, 368
	or	$a4, $a4, $a1
	st.d	$a4, $t1, 368
	ori	$s1, $zero, 1
	slt	$a4, $s1, $s3
	masknez	$t1, $s1, $a4
	maskeqz	$t2, $s3, $a4
	slti	$a4, $ra, 0
	srai.d	$t3, $a5, 31
	xor	$a5, $a5, $t3
	sub.d	$a5, $a5, $t3
	sub.d	$t3, $zero, $a5
	masknez	$a5, $a5, $a4
	maskeqz	$a4, $t3, $a4
	or	$a4, $a4, $a5
	slli.d	$a5, $s5, 2
	stx.w	$a4, $s2, $a5
	ld.d	$t3, $sp, 240                   # 8-byte Folded Reload
	stx.w	$a2, $t3, $a5
	ori	$a2, $zero, 4008
	ldx.w	$s7, $s4, $a2
	or	$s3, $t2, $t1
	addi.d	$s5, $s5, 1
	addi.d	$a2, $zero, -1
	b	.LBB4_121
.LBB4_120:
	move	$a4, $zero
.LBB4_121:
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	srai.d	$a5, $s6, 31
	ld.w	$a7, $a7, 0
	ld.w	$a6, $a6, 0
	xor	$t1, $s6, $a5
	sub.d	$a5, $t1, $a5
	mul.d	$a5, $a7, $a5
	alsl.w	$a5, $a6, $a5, 1
	sra.w	$a5, $a5, $t0
	bnez	$s7, .LBB4_123
# %bb.122:
	ld.w	$a6, $s0, 36
	slti	$a6, $a6, 4
	ori	$a7, $zero, 2063
	slt	$t0, $a5, $a7
	masknez	$a7, $a7, $t0
	maskeqz	$t0, $a5, $t0
	or	$a7, $t0, $a7
	maskeqz	$a7, $a7, $a6
	masknez	$a5, $a5, $a6
	or	$a5, $a7, $a5
.LBB4_123:
	lu12i.w	$s7, 3
	beqz	$a5, .LBB4_125
# %bb.124:
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a6, $a7, 368
	addi.d	$a2, $a2, 1
	or	$a1, $a6, $a1
	st.d	$a1, $a7, 368
	ori	$s1, $zero, 1
	slt	$a1, $s1, $s3
	masknez	$a6, $s1, $a1
	maskeqz	$a1, $s3, $a1
	or	$s3, $a1, $a6
	slti	$a1, $s6, 0
	srai.d	$a6, $a5, 31
	xor	$a5, $a5, $a6
	sub.d	$a5, $a5, $a6
	sub.d	$a6, $zero, $a5
	masknez	$a5, $a5, $a1
	maskeqz	$a1, $a6, $a1
	or	$a1, $a1, $a5
	slli.d	$a5, $s5, 2
	stx.w	$a1, $s2, $a5
	ld.d	$a6, $sp, 240                   # 8-byte Folded Reload
	stx.w	$a2, $a6, $a5
	addi.d	$s5, $s5, 1
	b	.LBB4_126
.LBB4_125:
	move	$a1, $zero
.LBB4_126:
	slli.d	$a2, $s5, 2
	stx.w	$zero, $s2, $a2
	add.d	$a2, $t6, $a3
	add.d	$a5, $a1, $a4
	add.d	$a6, $a5, $a2
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	st.w	$a6, $s5, 0
	add.d	$a7, $a3, $a4
	add.d	$t0, $t6, $a1
	sub.d	$a7, $a7, $t0
	st.w	$a7, $s5, 4
	ld.d	$t0, $sp, 152                   # 8-byte Folded Reload
	ldx.d	$a0, $t0, $a0
	sub.d	$a2, $a2, $a5
	st.w	$a2, $s5, 8
	add.d	$a4, $t6, $a4
	ld.d	$a0, $a0, 0
	sub.d	$a3, $a3, $a4
	add.d	$a1, $a3, $a1
	st.w	$a1, $s5, 12
	ld.w	$a0, $a0, 0
	mul.d	$a3, $a0, $a6
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	sll.w	$a3, $a3, $a5
	srli.d	$a3, $a3, 5
	mul.d	$a4, $a0, $a7
	sll.w	$a4, $a4, $a5
	srli.d	$a4, $a4, 5
	mul.d	$a2, $a0, $a2
	sll.w	$a2, $a2, $a5
	srli.d	$a2, $a2, 5
	mul.d	$a0, $a0, $a1
	sll.w	$a0, $a0, $a5
	srli.d	$a0, $a0, 5
	stptr.w	$a3, $s0, 13136
	stptr.w	$a4, $s0, 13152
	stptr.w	$a2, $s0, 13392
	stptr.w	$a0, $s0, 13408
.LBB4_127:                              # %.loopexit777
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
.LBB4_128:                              # %.loopexit777
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 0
	ldptr.w	$a0, $t0, 15528
	ori	$a1, $zero, 1
	bge	$a1, $a0, .LBB4_173
# %bb.129:
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	ori	$a0, $s7, 3240
	add.d	$a0, $t0, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	move	$a3, $s7
.LBB4_130:                              # %.preheader776.lr.ph
	move	$a7, $zero
	move	$s3, $zero
	move	$s0, $zero
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	sltui	$a4, $a0, 1
	st.d	$a4, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(FIELD_SCAN)
	addi.d	$a0, $a0, %pc_lo12(FIELD_SCAN)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	srai.d	$a1, $a1, 1
	masknez	$a0, $a0, $a4
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	maskeqz	$a2, $a2, $a4
	ld.d	$a6, $sp, 200                   # 8-byte Folded Reload
	addi.d	$s5, $a6, 15
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	mul.w	$a1, $a1, $a4
	or	$s7, $a2, $a0
	ldptr.d	$a0, $t0, 14160
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a0, $a1, 4
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$a0, $a3, 848
	move	$s1, $t0
	add.d	$ra, $t0, $a0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a1, $a6, 16
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ori	$a1, $zero, 1
	sll.w	$a1, $a1, $s5
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 3
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(cbp_blk_chroma)
	addi.d	$a0, $a1, %pc_lo12(cbp_blk_chroma)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(hor_offset)
	addi.d	$a0, $a1, %pc_lo12(hor_offset)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	alsl.d	$t7, $a5, $a0, 4
	pcalau12i	$a1, %pc_hi20(ver_offset)
	addi.d	$a0, $a1, %pc_lo12(ver_offset)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	alsl.d	$t3, $a5, $a0, 4
	lu12i.w	$a0, 244
	ori	$a0, $a0, 575
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	st.d	$ra, $sp, 240                   # 8-byte Folded Spill
	st.d	$t3, $sp, 152                   # 8-byte Folded Spill
	st.d	$t7, $sp, 128                   # 8-byte Folded Spill
	b	.LBB4_133
	.p2align	4, , 16
.LBB4_131:                              # %.loopexit773.us.3
                                        #   in Loop: Header=BB4_133 Depth=1
	slli.d	$a2, $a2, 2
	stx.w	$zero, $a1, $a2
	ld.d	$t3, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 168                   # 8-byte Folded Reload
.LBB4_132:                              # %.split.us
                                        #   in Loop: Header=BB4_133 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	addi.d	$a7, $a7, 1
	srai.d	$a0, $a1, 1
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 240                   # 8-byte Folded Reload
	bge	$a7, $a0, .LBB4_171
.LBB4_133:                              # %.preheader776
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_142 Depth 2
                                        #       Child Loop BB4_144 Depth 3
                                        #     Child Loop BB4_136 Depth 2
                                        #     Child Loop BB4_155 Depth 2
                                        #     Child Loop BB4_161 Depth 2
                                        #     Child Loop BB4_167 Depth 2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.w	$a1, $a0, $a7
	slli.d	$a1, $a1, 3
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$a5, $a0, $a1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.d	$fp, $a7, $a0
	st.d	$a7, $sp, 168                   # 8-byte Folded Spill
	beqz	$s4, .LBB4_140
# %bb.134:                              # %.preheader772.us.preheader
                                        #   in Loop: Header=BB4_133 Depth=1
	slli.d	$a1, $fp, 2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ldx.bu	$a2, $a0, $a1
	ld.d	$a3, $a5, 0
	slli.d	$a1, $a7, 2
	ldx.bu	$a4, $t7, $a1
	ldx.bu	$a6, $t3, $a1
	ld.d	$a1, $a3, 0
	ld.d	$a7, $a3, 8
	move	$t5, $zero
	move	$t4, $zero
	ori	$a0, $zero, 1
	sll.d	$a2, $a0, $a2
	addi.d	$t2, $zero, -1
	move	$t3, $s1
	lu12i.w	$s2, 244
	move	$s4, $a5
	b	.LBB4_136
	.p2align	4, , 16
.LBB4_135:                              #   in Loop: Header=BB4_136 Depth=2
	addi.d	$t5, $t5, 2
	ori	$a0, $zero, 30
	beq	$t5, $a0, .LBB4_153
.LBB4_136:                              #   Parent Loop BB4_133 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $s7, $t5
	ld.bu	$a5, $a3, 3
	ld.bu	$a3, $a3, 2
	add.d	$t1, $a5, $a6
	add.d	$a3, $a3, $a4
	slli.d	$a5, $t1, 6
	add.d	$t0, $ra, $a5
	slli.d	$t6, $a3, 2
	ldptr.w	$t8, $t3, 15260
	ldx.w	$a5, $t0, $t6
	beqz	$t8, .LBB4_138
# %bb.137:                              #   in Loop: Header=BB4_136 Depth=2
	ldptr.d	$t8, $t3, 14192
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ldx.d	$t8, $t8, $a0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$t8, $t8, $a0
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $t8, $t1
	stx.w	$zero, $t1, $t6
.LBB4_138:                              #   in Loop: Header=BB4_136 Depth=2
	addi.d	$t2, $t2, 1
	beqz	$a5, .LBB4_135
# %bb.139:                              #   in Loop: Header=BB4_136 Depth=2
	alsl.d	$a3, $a3, $t0, 2
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 368
	srai.d	$t1, $a5, 31
	xor	$a5, $a5, $t1
	sub.d	$a5, $a5, $t1
	or	$t0, $t0, $a2
	ld.w	$a3, $a3, 0
	st.d	$t0, $a0, 368
	ori	$t0, $s2, 575
	add.w	$s3, $s3, $t0
	slti	$a3, $a3, 0
	sub.d	$t0, $zero, $a5
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $t0, $a3
	or	$a3, $a3, $a5
	slli.d	$a5, $t4, 2
	stx.w	$a3, $a1, $a5
	stx.w	$t2, $a7, $a5
	addi.w	$t4, $t4, 1
	addi.d	$t2, $zero, -1
	ori	$s0, $zero, 2
	b	.LBB4_135
	.p2align	4, , 16
.LBB4_140:                              # %.preheader776.split
                                        #   in Loop: Header=BB4_133 Depth=1
	st.d	$a5, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s6, $a0, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s8, $a0, 0
	move	$s2, $zero
	st.d	$fp, $sp, 136                   # 8-byte Folded Spill
	b	.LBB4_142
	.p2align	4, , 16
.LBB4_141:                              # %.loopexit775
                                        #   in Loop: Header=BB4_142 Depth=2
	slli.d	$a0, $a7, 2
	addi.d	$s2, $s2, 1
	stx.w	$zero, $t4, $a0
	ld.d	$t7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 168                   # 8-byte Folded Reload
	ori	$a0, $zero, 4
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	beq	$s2, $a0, .LBB4_132
.LBB4_142:                              # %.preheader774
                                        #   Parent Loop BB4_133 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_144 Depth 3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$a1, $fp, $a0, 2
	ldx.bu	$a2, $a1, $s2
	alsl.d	$a1, $a7, $t7, 2
	ldx.bu	$t6, $a1, $s2
	alsl.d	$a1, $a7, $t3, 2
	slli.d	$a3, $s2, 3
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$a3, $a0, $a3
	pcalau12i	$a4, %got_pc_hi20(input)
	ld.d	$a4, $a4, %got_pc_lo12(input)
	ldx.bu	$t5, $a1, $s2
	ld.d	$t4, $a3, 0
	ld.d	$a1, $a3, 8
	ld.d	$a6, $a4, 0
	move	$fp, $zero
	move	$a7, $zero
	ori	$a0, $zero, 1
	sll.d	$s4, $a0, $a2
	addi.d	$a4, $zero, -1
	b	.LBB4_144
	.p2align	4, , 16
.LBB4_143:                              #   in Loop: Header=BB4_144 Depth=3
	ld.w	$a0, $t1, 0
	slti	$a0, $a0, 0
	srai.d	$a5, $t0, 31
	xor	$t0, $t0, $a5
	sub.d	$a5, $t0, $a5
	sub.d	$t0, $zero, $a5
	masknez	$t3, $a5, $a0
	maskeqz	$a0, $t0, $a0
	or	$a0, $a0, $t3
	slli.d	$t3, $a7, 2
	ld.d	$t7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t7, $t7, 0
	stx.w	$a0, $t4, $t3
	stx.w	$a4, $a1, $t3
	ld.w	$a0, $t1, 0
	ldx.d	$a2, $t7, $a2
	add.w	$s3, $a3, $s3
	addi.w	$a7, $a7, 1
	slti	$a0, $a0, 0
	ldx.w	$a2, $a2, $t2
	masknez	$a3, $a5, $a0
	maskeqz	$a0, $t0, $a0
	or	$a0, $a0, $a3
	mul.d	$a0, $a2, $a0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	sll.w	$a0, $a0, $a2
	addi.w	$a0, $a0, 8
	srai.d	$a2, $a0, 4
	addi.d	$a4, $zero, -1
	ori	$s0, $zero, 2
	addi.d	$fp, $fp, 2
	st.w	$a2, $t1, 0
	ori	$a0, $zero, 30
	beq	$fp, $a0, .LBB4_141
.LBB4_144:                              #   Parent Loop BB4_133 Depth=1
                                        #     Parent Loop BB4_142 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $s7, $fp
	ld.bu	$t0, $a2, 3
	ld.bu	$t2, $a2, 2
	add.d	$ra, $t0, $t5
	add.d	$t1, $t2, $t6
	slli.d	$a2, $ra, 6
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	add.d	$a5, $a0, $a2
	slli.d	$a3, $t1, 2
	ldx.w	$t8, $a5, $a3
	srai.d	$a0, $t8, 31
	slli.d	$a2, $t0, 3
	ldx.d	$t0, $s6, $a2
	ldx.d	$t7, $s8, $a2
	xor	$t8, $t8, $a0
	slli.d	$t2, $t2, 2
	ldx.w	$t0, $t0, $t2
	ldx.w	$t7, $t7, $t2
	ldptr.w	$t3, $s1, 15260
	sub.d	$a0, $t8, $a0
	mul.d	$t8, $t0, $a0
	add.d	$a0, $t7, $t8
	sra.w	$t0, $a0, $s5
	beqz	$t3, .LBB4_149
# %bb.145:                              #   in Loop: Header=BB4_144 Depth=3
	beqz	$t0, .LBB4_147
# %bb.146:                              #   in Loop: Header=BB4_144 Depth=3
	pcalau12i	$a0, %got_pc_hi20(AdaptRndCrWeight)
	ld.d	$a0, $a0, %got_pc_lo12(AdaptRndCrWeight)
	ld.w	$a0, $a0, 0
	sll.w	$t3, $t0, $s5
	sub.d	$t3, $t8, $t3
	mul.d	$a0, $a0, $t3
	ld.d	$t3, $sp, 176                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t3
	ld.d	$t3, $sp, 184                   # 8-byte Folded Reload
	sra.w	$t8, $a0, $t3
	b	.LBB4_148
	.p2align	4, , 16
.LBB4_147:                              #   in Loop: Header=BB4_144 Depth=3
	move	$t8, $zero
.LBB4_148:                              #   in Loop: Header=BB4_144 Depth=3
	ldptr.d	$a0, $s1, 14192
	ld.d	$t3, $sp, 216                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $t3
	ld.d	$t3, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $t3
	slli.d	$t3, $ra, 3
	ldx.d	$a0, $a0, $t3
	stx.w	$t8, $a0, $a3
.LBB4_149:                              #   in Loop: Header=BB4_144 Depth=3
	addi.w	$a4, $a4, 1
	alsl.d	$t1, $t1, $a5, 2
	beqz	$t0, .LBB4_152
# %bb.150:                              #   in Loop: Header=BB4_144 Depth=3
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a3, 368
	or	$a0, $a0, $s4
	st.d	$a0, $a3, 368
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ori	$a0, $zero, 1
	blt	$a0, $t0, .LBB4_143
# %bb.151:                              #   in Loop: Header=BB4_144 Depth=3
	ldptr.w	$a0, $a6, 4180
	pcalau12i	$a3, %pc_hi20(COEFF_COST)
	addi.d	$a3, $a3, %pc_lo12(COEFF_COST)
	alsl.d	$a0, $a0, $a3, 4
	ldx.bu	$a3, $a0, $a4
	b	.LBB4_143
	.p2align	4, , 16
.LBB4_152:                              #   in Loop: Header=BB4_144 Depth=3
	move	$a2, $zero
	addi.d	$fp, $fp, 2
	st.w	$a2, $t1, 0
	ori	$a0, $zero, 30
	bne	$fp, $a0, .LBB4_144
	b	.LBB4_141
	.p2align	4, , 16
.LBB4_153:                              # %.loopexit773.us
                                        #   in Loop: Header=BB4_133 Depth=1
	slli.d	$a2, $t4, 2
	stx.w	$zero, $a1, $a2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$fp, $fp, $a0, 2
	ld.bu	$a2, $fp, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 4
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$s8, $a5, $a1, 2
	ld.bu	$a1, $s8, 1
	ld.d	$a3, $s4, 8
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 4
	alsl.d	$s6, $a5, $a4, 2
	ld.bu	$a6, $s6, 1
	ld.d	$a4, $a3, 0
	ld.d	$a7, $a3, 8
	move	$t5, $zero
	move	$t4, $zero
	ori	$a0, $zero, 1
	sll.d	$a2, $a0, $a2
	addi.d	$t2, $zero, -1
	b	.LBB4_155
	.p2align	4, , 16
.LBB4_154:                              #   in Loop: Header=BB4_155 Depth=2
	addi.d	$t5, $t5, 2
	ori	$a0, $zero, 30
	beq	$t5, $a0, .LBB4_159
.LBB4_155:                              #   Parent Loop BB4_133 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $s7, $t5
	ld.bu	$a5, $a3, 3
	ld.bu	$a3, $a3, 2
	add.d	$t1, $a5, $a6
	add.d	$a3, $a3, $a1
	slli.d	$a5, $t1, 6
	add.d	$t0, $ra, $a5
	slli.d	$t6, $a3, 2
	ldptr.w	$t8, $t3, 15260
	ldx.w	$a5, $t0, $t6
	beqz	$t8, .LBB4_157
# %bb.156:                              #   in Loop: Header=BB4_155 Depth=2
	ldptr.d	$t8, $t3, 14192
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ldx.d	$t8, $t8, $a0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$t8, $t8, $a0
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $t8, $t1
	stx.w	$zero, $t1, $t6
.LBB4_157:                              #   in Loop: Header=BB4_155 Depth=2
	addi.d	$t2, $t2, 1
	beqz	$a5, .LBB4_154
# %bb.158:                              #   in Loop: Header=BB4_155 Depth=2
	alsl.d	$a3, $a3, $t0, 2
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 368
	srai.d	$t1, $a5, 31
	xor	$a5, $a5, $t1
	sub.d	$a5, $a5, $t1
	or	$t0, $t0, $a2
	ld.w	$a3, $a3, 0
	st.d	$t0, $a0, 368
	ori	$t0, $s2, 575
	add.w	$s3, $s3, $t0
	slti	$a3, $a3, 0
	sub.d	$t0, $zero, $a5
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $t0, $a3
	or	$a3, $a3, $a5
	slli.d	$a5, $t4, 2
	stx.w	$a3, $a4, $a5
	stx.w	$t2, $a7, $a5
	addi.w	$t4, $t4, 1
	addi.d	$t2, $zero, -1
	ori	$s0, $zero, 2
	b	.LBB4_154
	.p2align	4, , 16
.LBB4_159:                              # %.loopexit773.us.1
                                        #   in Loop: Header=BB4_133 Depth=1
	slli.d	$a1, $t4, 2
	stx.w	$zero, $a4, $a1
	ld.d	$a2, $s4, 16
	ld.bu	$a3, $fp, 2
	ld.bu	$a4, $s8, 2
	ld.bu	$a6, $s6, 2
	ld.d	$a1, $a2, 0
	ld.d	$a7, $a2, 8
	move	$t5, $zero
	move	$t4, $zero
	ori	$a0, $zero, 1
	sll.d	$a2, $a0, $a3
	addi.d	$t2, $zero, -1
	b	.LBB4_161
	.p2align	4, , 16
.LBB4_160:                              #   in Loop: Header=BB4_161 Depth=2
	addi.d	$t5, $t5, 2
	ori	$a0, $zero, 30
	beq	$t5, $a0, .LBB4_165
.LBB4_161:                              #   Parent Loop BB4_133 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $s7, $t5
	ld.bu	$a5, $a3, 3
	ld.bu	$a3, $a3, 2
	add.d	$t1, $a5, $a6
	add.d	$a3, $a3, $a4
	slli.d	$a5, $t1, 6
	add.d	$t0, $ra, $a5
	slli.d	$t6, $a3, 2
	ldptr.w	$t8, $t3, 15260
	ldx.w	$a5, $t0, $t6
	beqz	$t8, .LBB4_163
# %bb.162:                              #   in Loop: Header=BB4_161 Depth=2
	ldptr.d	$t8, $t3, 14192
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ldx.d	$t8, $t8, $a0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$t8, $t8, $a0
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $t8, $t1
	stx.w	$zero, $t1, $t6
.LBB4_163:                              #   in Loop: Header=BB4_161 Depth=2
	addi.d	$t2, $t2, 1
	beqz	$a5, .LBB4_160
# %bb.164:                              #   in Loop: Header=BB4_161 Depth=2
	alsl.d	$a3, $a3, $t0, 2
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 368
	srai.d	$t1, $a5, 31
	xor	$a5, $a5, $t1
	sub.d	$a5, $a5, $t1
	or	$t0, $t0, $a2
	ld.w	$a3, $a3, 0
	st.d	$t0, $a0, 368
	ori	$t0, $s2, 575
	add.w	$s3, $s3, $t0
	slti	$a3, $a3, 0
	sub.d	$t0, $zero, $a5
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $t0, $a3
	or	$a3, $a3, $a5
	slli.d	$a5, $t4, 2
	stx.w	$a3, $a1, $a5
	stx.w	$t2, $a7, $a5
	addi.w	$t4, $t4, 1
	addi.d	$t2, $zero, -1
	ori	$s0, $zero, 2
	b	.LBB4_160
	.p2align	4, , 16
.LBB4_165:                              # %.loopexit773.us.2
                                        #   in Loop: Header=BB4_133 Depth=1
	slli.d	$a2, $t4, 2
	stx.w	$zero, $a1, $a2
	ld.d	$a2, $s4, 24
	ld.bu	$a3, $fp, 3
	ld.bu	$a4, $s8, 3
	ld.bu	$a6, $s6, 3
	ld.d	$a1, $a2, 0
	ld.d	$a7, $a2, 8
	move	$t4, $zero
	move	$a2, $zero
	ori	$a0, $zero, 1
	sll.d	$t5, $a0, $a3
	addi.d	$t2, $zero, -1
	b	.LBB4_167
	.p2align	4, , 16
.LBB4_166:                              #   in Loop: Header=BB4_167 Depth=2
	addi.d	$t4, $t4, 2
	ori	$a0, $zero, 30
	beq	$t4, $a0, .LBB4_131
.LBB4_167:                              #   Parent Loop BB4_133 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $s7, $t4
	ld.bu	$a5, $a3, 3
	ld.bu	$a3, $a3, 2
	add.d	$t1, $a5, $a6
	add.d	$a3, $a3, $a4
	slli.d	$a5, $t1, 6
	add.d	$t0, $ra, $a5
	slli.d	$t6, $a3, 2
	ldptr.w	$t8, $t3, 15260
	ldx.w	$a5, $t0, $t6
	beqz	$t8, .LBB4_169
# %bb.168:                              #   in Loop: Header=BB4_167 Depth=2
	ldptr.d	$t8, $t3, 14192
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ldx.d	$t8, $t8, $a0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$t8, $t8, $a0
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $t8, $t1
	stx.w	$zero, $t1, $t6
.LBB4_169:                              #   in Loop: Header=BB4_167 Depth=2
	addi.d	$t2, $t2, 1
	beqz	$a5, .LBB4_166
# %bb.170:                              #   in Loop: Header=BB4_167 Depth=2
	alsl.d	$a3, $a3, $t0, 2
	srai.d	$t0, $a5, 31
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t1, $a0, 368
	xor	$a5, $a5, $t0
	sub.d	$a5, $a5, $t0
	ld.w	$a3, $a3, 0
	or	$t0, $t1, $t5
	st.d	$t0, $a0, 368
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	add.w	$s3, $s3, $a0
	slti	$a3, $a3, 0
	sub.d	$t0, $zero, $a5
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $t0, $a3
	or	$a3, $a3, $a5
	slli.d	$a5, $a2, 2
	stx.w	$a3, $a1, $a5
	stx.w	$t2, $a7, $a5
	addi.w	$a2, $a2, 1
	addi.d	$t2, $zero, -1
	ori	$s0, $zero, 2
	b	.LBB4_166
.LBB4_171:                              # %._crit_edge885
	beqz	$s4, .LBB4_188
# %bb.172:
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	lu12i.w	$s7, 3
	b	.LBB4_174
.LBB4_173:                              # %._crit_edge885.thread
	move	$s1, $t0
	beqz	$s4, .LBB4_201
.LBB4_174:                              # %.preheader
	ldptr.w	$a0, $s1, 15548
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB4_221
# %bb.175:                              # %.lr.ph920
	move	$s2, $s1
	move	$a3, $zero
	ld.w	$a4, $s1, 188
	ori	$a2, $s7, 3256
	ldx.wu	$a5, $s1, $a2
	ori	$a2, $s7, 848
	pcalau12i	$a6, %got_pc_hi20(enc_picture)
	ld.d	$t0, $a6, %got_pc_lo12(enc_picture)
	add.d	$a6, $s1, $a2
	ori	$a2, $s7, 336
	add.d	$a7, $s1, $a2
	ld.d	$t0, $t0, 0
	addi.d	$t1, $a5, -1
	bstrpick.d	$a2, $a5, 16, 3
	slli.d	$t2, $a2, 3
	addi.w	$t4, $a5, 0
	lu12i.w	$a2, -4
	ori	$t5, $a2, 3760
	ori	$t6, $zero, 16
	b	.LBB4_177
	.p2align	4, , 16
.LBB4_176:                              # %._crit_edge918
                                        #   in Loop: Header=BB4_177 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a7, $a7, 32
	addi.d	$a6, $a6, 64
	beq	$a3, $a0, .LBB4_221
.LBB4_177:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_186 Depth 2
                                        #     Child Loop BB4_181 Depth 2
	blt	$t4, $a1, .LBB4_176
# %bb.178:                              # %.lr.ph917
                                        #   in Loop: Header=BB4_177 Depth=1
	ldptr.d	$a2, $t0, 6472
	add.d	$t3, $a4, $a3
	ld.d	$t7, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a2, $a2, $t7
	ld.w	$t8, $s2, 184
	slli.d	$t3, $t3, 48
	srai.d	$t3, $t3, 45
	ldx.d	$t7, $a2, $t3
	bgeu	$a5, $t6, .LBB4_182
.LBB4_179:                              #   in Loop: Header=BB4_177 Depth=1
	move	$s0, $zero
.LBB4_180:                              # %scalar.ph1233.preheader
                                        #   in Loop: Header=BB4_177 Depth=1
	add.d	$a2, $t8, $s0
	slli.d	$t8, $s0, 2
	slli.d	$fp, $s0, 1
	sub.d	$s0, $a5, $s0
	.p2align	4, , 16
.LBB4_181:                              # %scalar.ph1233
                                        #   Parent Loop BB4_177 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.h	$t3, $a6, $t8
	ldx.h	$s1, $a7, $fp
	add.d	$t3, $s1, $t3
	slli.d	$s1, $a2, 48
	srai.d	$s1, $s1, 47
	stx.h	$t3, $t7, $s1
	addi.d	$a2, $a2, 1
	addi.d	$t8, $t8, 4
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 2
	bnez	$s0, .LBB4_181
	b	.LBB4_176
	.p2align	4, , 16
.LBB4_182:                              # %vector.scevcheck1229
                                        #   in Loop: Header=BB4_177 Depth=1
	slli.d	$a2, $t8, 48
	srai.d	$a2, $a2, 47
	add.d	$t3, $t8, $t1
	slli.d	$t3, $t3, 48
	srai.d	$t3, $t3, 47
	move	$s0, $zero
	blt	$t3, $a2, .LBB4_180
# %bb.183:                              # %vector.scevcheck1229
                                        #   in Loop: Header=BB4_177 Depth=1
	srli.d	$t3, $t1, 16
	bnez	$t3, .LBB4_180
# %bb.184:                              # %vector.memcheck
                                        #   in Loop: Header=BB4_177 Depth=1
	slli.d	$t3, $a3, 5
	add.d	$t3, $t3, $s2
	sub.d	$t3, $t5, $t3
	add.d	$t3, $t3, $t7
	add.d	$a2, $t3, $a2
	bltu	$a2, $t6, .LBB4_179
# %bb.185:                              # %vector.body1238.preheader
                                        #   in Loop: Header=BB4_177 Depth=1
	move	$a2, $t8
	move	$fp, $a6
	move	$s0, $a7
	move	$s1, $t2
	.p2align	4, , 16
.LBB4_186:                              # %vector.body1238
                                        #   Parent Loop BB4_177 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $fp, 0
	vld	$vr1, $s0, 0
	xvpickve2gr.w	$t3, $xr0, 0
	vinsgr2vr.h	$vr2, $t3, 0
	xvpickve2gr.w	$t3, $xr0, 1
	vinsgr2vr.h	$vr2, $t3, 1
	xvpickve2gr.w	$t3, $xr0, 2
	vinsgr2vr.h	$vr2, $t3, 2
	xvpickve2gr.w	$t3, $xr0, 3
	vinsgr2vr.h	$vr2, $t3, 3
	xvpickve2gr.w	$t3, $xr0, 4
	vinsgr2vr.h	$vr2, $t3, 4
	xvpickve2gr.w	$t3, $xr0, 5
	vinsgr2vr.h	$vr2, $t3, 5
	xvpickve2gr.w	$t3, $xr0, 6
	vinsgr2vr.h	$vr2, $t3, 6
	xvpickve2gr.w	$t3, $xr0, 7
	vinsgr2vr.h	$vr2, $t3, 7
	vadd.h	$vr0, $vr1, $vr2
	slli.d	$t3, $a2, 48
	srai.d	$t3, $t3, 47
	vstx	$vr0, $t7, $t3
	addi.d	$s1, $s1, -8
	addi.d	$s0, $s0, 16
	addi.d	$fp, $fp, 32
	addi.d	$a2, $a2, 8
	bnez	$s1, .LBB4_186
# %bb.187:                              # %middle.block1243
                                        #   in Loop: Header=BB4_177 Depth=1
	move	$s0, $t2
	beq	$t2, $a5, .LBB4_176
	b	.LBB4_180
.LBB4_188:
	ori	$a2, $zero, 3
	ori	$a0, $zero, 2
	lu12i.w	$s7, 3
	blt	$a2, $s3, .LBB4_197
# %bb.189:
	blt	$a1, $a0, .LBB4_198
# %bb.190:                              # %.preheader771.lr.ph
	move	$a6, $t7
	move	$a0, $zero
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	slli.d	$a1, $a3, 3
	pcalau12i	$a2, %pc_hi20(dct_chroma.cbpblk_pattern)
	addi.d	$a2, $a2, %pc_lo12(dct_chroma.cbpblk_pattern)
	ldx.d	$a2, $a2, $a1
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	sltu	$a1, $zero, $a1
	addi.d	$a3, $a3, 1
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	sll.w	$a3, $a4, $a3
	sll.d	$a2, $a2, $a3
	ldptr.d	$a3, $s1, 14160
	st.d	$a3, $sp, 216                   # 8-byte Folded Spill
	nor	$a2, $a2, $zero
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	ori	$a2, $zero, 3
	masknez	$a4, $a2, $s8
	ori	$a5, $zero, 1
	maskeqz	$a7, $a5, $s8
	or	$a7, $a7, $a4
	addi.d	$t0, $s8, 1
	masknez	$a4, $a5, $s8
	maskeqz	$a2, $a2, $s8
	or	$t1, $a2, $a4
	slli.d	$t2, $a1, 1
	ori	$a2, $zero, 2
	sub.d	$t6, $a2, $s8
	slli.d	$t7, $s8, 1
	addi.d	$t8, $s8, 2
	xori	$fp, $s8, 3
	ori	$s0, $zero, 4
	b	.LBB4_192
	.p2align	4, , 16
.LBB4_191:                              # %.split892.us
                                        #   in Loop: Header=BB4_192 Depth=1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	addi.d	$a0, $a0, 1
	srai.d	$a2, $a2, 1
	addi.d	$a6, $a6, 4
	addi.d	$t3, $t3, 4
	bge	$a0, $a2, .LBB4_199
.LBB4_192:                              # %.preheader771
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_194 Depth 2
                                        #     Child Loop BB4_196 Depth 2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.w	$a2, $a2, $a0
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	ldx.d	$s3, $a3, $a2
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	move	$a3, $t3
	beqz	$a2, .LBB4_195
# %bb.193:                              # %.preheader771.split.preheader
                                        #   in Loop: Header=BB4_192 Depth=1
	move	$a4, $zero
	.p2align	4, , 16
.LBB4_194:                              # %.preheader771.split
                                        #   Parent Loop BB4_192 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s3, 0
	ld.d	$a2, $a2, 0
	ldx.bu	$t5, $t3, $a4
	ldx.bu	$t4, $a6, $a4
	st.w	$zero, $a2, 0
	add.d	$a5, $a1, $t5
	add.d	$t3, $s8, $t4
	slli.d	$a5, $a5, 6
	add.d	$a5, $ra, $a5
	slli.d	$t3, $t3, 2
	stx.w	$zero, $a5, $t3
	st.w	$zero, $a2, 4
	add.d	$s2, $s8, $t5
	add.d	$s4, $a1, $t4
	slli.d	$s2, $s2, 6
	add.d	$s5, $ra, $s2
	slli.d	$s2, $s4, 2
	stx.w	$zero, $s5, $s2
	st.w	$zero, $a2, 8
	slli.d	$s2, $t5, 6
	add.d	$s2, $s2, $ra
	alsl.d	$s4, $t4, $s2, 2
	slli.d	$s6, $t4, 2
	st.w	$zero, $s4, 128
	st.w	$zero, $a2, 12
	add.d	$s4, $a7, $t5
	slli.d	$s4, $s4, 6
	add.d	$s4, $ra, $s4
	stx.w	$zero, $s4, $t3
	st.w	$zero, $a2, 16
	add.d	$t3, $t0, $t4
	slli.d	$t3, $t3, 2
	stx.w	$zero, $a5, $t3
	st.w	$zero, $a2, 20
	add.d	$a5, $t2, $t5
	add.d	$s7, $t1, $t4
	slli.d	$a5, $a5, 6
	add.d	$a5, $ra, $a5
	slli.d	$s7, $s7, 2
	stx.w	$zero, $a5, $s7
	st.w	$zero, $a2, 24
	stx.w	$zero, $s4, $t3
	st.w	$zero, $a2, 28
	add.d	$a5, $t7, $t5
	add.d	$t3, $t6, $t4
	slli.d	$a5, $a5, 6
	add.d	$a5, $ra, $a5
	slli.d	$t3, $t3, 2
	stx.w	$zero, $a5, $t3
	st.w	$zero, $a2, 32
	add.d	$a5, $t1, $t5
	add.d	$s4, $t2, $t4
	slli.d	$a5, $a5, 6
	add.d	$a5, $ra, $a5
	slli.d	$s4, $s4, 2
	stx.w	$zero, $a5, $s4
	st.w	$zero, $a2, 36
	add.d	$a5, $t8, $t5
	slli.d	$a5, $a5, 6
	add.d	$a5, $ra, $a5
	stx.w	$zero, $a5, $t3
	st.w	$zero, $a2, 40
	add.d	$t3, $fp, $t5
	slli.d	$t3, $t3, 6
	add.d	$t3, $ra, $t3
	alsl.d	$t3, $t4, $t3, 2
	st.w	$zero, $t3, 8
	st.w	$zero, $a2, 44
	addi.d	$t3, $s6, 12
	stx.w	$zero, $s5, $t3
	st.w	$zero, $a2, 48
	add.d	$t5, $t0, $t5
	slli.d	$t5, $t5, 6
	add.d	$t5, $ra, $t5
	stx.w	$zero, $t5, $t3
	st.w	$zero, $a2, 52
	add.d	$t4, $fp, $t4
	slli.d	$t4, $t4, 2
	stx.w	$zero, $a5, $t4
	st.w	$zero, $a2, 56
	add.d	$a5, $s2, $t3
	move	$t3, $a3
	st.w	$zero, $a5, 192
	st.w	$zero, $a2, 60
	addi.d	$a4, $a4, 1
	addi.d	$s3, $s3, 8
	bne	$a4, $s0, .LBB4_194
	b	.LBB4_191
	.p2align	4, , 16
.LBB4_195:                              # %.preheader771.split.us
                                        #   in Loop: Header=BB4_192 Depth=1
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 368
	move	$a4, $zero
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	and	$t4, $a2, $a5
	.p2align	4, , 16
.LBB4_196:                              #   Parent Loop BB4_192 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s3, 0
	ld.d	$a2, $a2, 0
	ldx.bu	$s2, $t3, $a4
	ldx.bu	$t5, $a6, $a4
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	st.d	$t4, $a5, 368
	st.w	$zero, $a2, 0
	add.d	$a5, $a1, $s2
	add.d	$t3, $s8, $t5
	slli.d	$a5, $a5, 6
	add.d	$a5, $ra, $a5
	slli.d	$t3, $t3, 2
	stx.w	$zero, $a5, $t3
	st.w	$zero, $a2, 4
	add.d	$s4, $s8, $s2
	add.d	$s5, $a1, $t5
	slli.d	$s4, $s4, 6
	add.d	$s6, $ra, $s4
	slli.d	$s4, $s5, 2
	stx.w	$zero, $s6, $s4
	st.w	$zero, $a2, 8
	slli.d	$s4, $s2, 6
	add.d	$s4, $s4, $ra
	alsl.d	$s5, $t5, $s4, 2
	slli.d	$s7, $t5, 2
	st.w	$zero, $s5, 128
	st.w	$zero, $a2, 12
	add.d	$s5, $a7, $s2
	slli.d	$s5, $s5, 6
	add.d	$s5, $ra, $s5
	stx.w	$zero, $s5, $t3
	st.w	$zero, $a2, 16
	add.d	$t3, $t0, $t5
	slli.d	$t3, $t3, 2
	stx.w	$zero, $a5, $t3
	st.w	$zero, $a2, 20
	add.d	$a5, $t2, $s2
	add.d	$s8, $t1, $t5
	slli.d	$a5, $a5, 6
	add.d	$a5, $ra, $a5
	slli.d	$s8, $s8, 2
	stx.w	$zero, $a5, $s8
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	st.w	$zero, $a2, 24
	stx.w	$zero, $s5, $t3
	st.w	$zero, $a2, 28
	add.d	$a5, $t7, $s2
	add.d	$t3, $t6, $t5
	slli.d	$a5, $a5, 6
	add.d	$a5, $ra, $a5
	slli.d	$t3, $t3, 2
	stx.w	$zero, $a5, $t3
	st.w	$zero, $a2, 32
	add.d	$a5, $t1, $s2
	add.d	$s5, $t2, $t5
	slli.d	$a5, $a5, 6
	add.d	$a5, $ra, $a5
	slli.d	$s5, $s5, 2
	stx.w	$zero, $a5, $s5
	st.w	$zero, $a2, 36
	add.d	$a5, $t8, $s2
	slli.d	$a5, $a5, 6
	add.d	$a5, $ra, $a5
	stx.w	$zero, $a5, $t3
	st.w	$zero, $a2, 40
	add.d	$t3, $fp, $s2
	slli.d	$t3, $t3, 6
	add.d	$t3, $ra, $t3
	alsl.d	$t3, $t5, $t3, 2
	st.w	$zero, $t3, 8
	st.w	$zero, $a2, 44
	addi.d	$t3, $s7, 12
	stx.w	$zero, $s6, $t3
	st.w	$zero, $a2, 48
	add.d	$s2, $t0, $s2
	slli.d	$s2, $s2, 6
	add.d	$s2, $ra, $s2
	stx.w	$zero, $s2, $t3
	st.w	$zero, $a2, 52
	add.d	$t5, $fp, $t5
	slli.d	$t5, $t5, 2
	stx.w	$zero, $a5, $t5
	st.w	$zero, $a2, 56
	add.d	$a5, $s4, $t3
	move	$t3, $a3
	st.w	$zero, $a5, 192
	st.w	$zero, $a2, 60
	addi.d	$a4, $a4, 1
	addi.d	$s3, $s3, 8
	bne	$a4, $s0, .LBB4_196
	b	.LBB4_191
.LBB4_197:
	addi.d	$a1, $s0, -2
	sltui	$a1, $a1, 1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$s3, $a0, $a2
	b	.LBB4_200
.LBB4_198:
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	b	.LBB4_200
.LBB4_199:
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	lu12i.w	$s7, 3
.LBB4_200:                              # %.thread
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
.LBB4_201:                              # %.thread
	ldptr.w	$a7, $s1, 15548
	ori	$a1, $zero, 1
	blt	$a7, $a1, .LBB4_221
# %bb.202:                              # %.preheader770.lr.ph
	move	$a3, $zero
	ori	$a0, $s7, 3256
	ldx.w	$a4, $s1, $a0
	ori	$a2, $s7, 1052
	add.d	$a5, $s1, $a2
	ori	$a2, $s7, 438
	add.d	$a6, $s1, $a2
	b	.LBB4_204
	.p2align	4, , 16
.LBB4_203:                              #   in Loop: Header=BB4_204 Depth=1
	addi.d	$a3, $a3, 4
	addi.d	$a5, $a5, 256
	addi.d	$a6, $a6, 128
	bge	$a3, $a7, .LBB4_208
.LBB4_204:                              # %.preheader770
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_206 Depth 2
	blt	$a4, $a1, .LBB4_203
# %bb.205:                              # %.preheader769.lr.ph
                                        #   in Loop: Header=BB4_204 Depth=1
	move	$a7, $zero
	move	$t0, $a6
	move	$t1, $a5
	.p2align	4, , 16
.LBB4_206:                              # %.preheader769
                                        #   Parent Loop BB4_204 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $t1, -204
	st.d	$a2, $s5, 0
	ld.d	$a4, $t1, -196
	st.d	$a4, $s5, 8
	ld.w	$t2, $s5, 4
	ld.w	$t3, $s5, 12
	add.d	$t4, $a4, $a2
	sub.d	$a2, $a2, $a4
	srli.d	$a4, $t2, 1
	sub.d	$a4, $a4, $t3
	srli.d	$t3, $t3, 1
	add.d	$t2, $t3, $t2
	add.d	$t3, $t2, $t4
	st.w	$t3, $t1, -204
	add.d	$t3, $a4, $a2
	st.w	$t3, $t1, -200
	sub.d	$a2, $a2, $a4
	ld.d	$a4, $t1, -140
	st.w	$a2, $t1, -196
	sub.d	$a2, $t4, $t2
	st.w	$a2, $t1, -192
	st.d	$a4, $s5, 0
	ld.d	$a2, $t1, -132
	st.d	$a2, $s5, 8
	ld.w	$t2, $s5, 4
	ld.w	$t3, $s5, 12
	add.d	$t4, $a2, $a4
	sub.d	$a2, $a4, $a2
	srli.d	$a4, $t2, 1
	sub.d	$a4, $a4, $t3
	srli.d	$t3, $t3, 1
	add.d	$t2, $t3, $t2
	add.d	$t3, $t2, $t4
	st.w	$t3, $t1, -140
	add.d	$t3, $a4, $a2
	st.w	$t3, $t1, -136
	sub.d	$a2, $a2, $a4
	ld.d	$a4, $t1, -76
	st.w	$a2, $t1, -132
	sub.d	$a2, $t4, $t2
	st.w	$a2, $t1, -128
	st.d	$a4, $s5, 0
	ld.d	$a2, $t1, -68
	st.d	$a2, $s5, 8
	ld.w	$t2, $s5, 4
	ld.w	$t3, $s5, 12
	add.d	$t4, $a2, $a4
	sub.d	$a2, $a4, $a2
	srli.d	$a4, $t2, 1
	sub.d	$a4, $a4, $t3
	srli.d	$t3, $t3, 1
	add.d	$t2, $t3, $t2
	add.d	$t3, $t2, $t4
	st.w	$t3, $t1, -76
	add.d	$t3, $a4, $a2
	st.w	$t3, $t1, -72
	sub.d	$a2, $a2, $a4
	ld.d	$a4, $t1, -12
	st.w	$a2, $t1, -68
	sub.d	$a2, $t4, $t2
	st.w	$a2, $t1, -64
	st.d	$a4, $s5, 0
	ld.d	$a2, $t1, -4
	st.d	$a2, $s5, 8
	ld.w	$t2, $s5, 4
	ld.w	$t3, $s5, 12
	add.d	$t4, $a2, $a4
	sub.d	$a2, $a4, $a2
	srli.d	$a4, $t2, 1
	sub.d	$a4, $a4, $t3
	srli.d	$t3, $t3, 1
	add.d	$t2, $t3, $t2
	add.w	$t3, $t2, $t4
	st.w	$t3, $t1, -12
	add.d	$t5, $a4, $a2
	st.w	$t5, $t1, -8
	sub.d	$a2, $a2, $a4
	st.w	$a2, $t1, -4
	ld.w	$a2, $t1, -204
	ld.w	$a4, $t1, -76
	sub.d	$t2, $t4, $t2
	ld.w	$t4, $t1, -140
	st.w	$t2, $t1, 0
	add.d	$t2, $a4, $a2
	sub.d	$a2, $a2, $a4
	srai.d	$a4, $t4, 1
	sub.d	$a4, $a4, $t3
	ld.hu	$t5, $t0, -102
	srai.d	$t3, $t3, 1
	add.d	$t3, $t3, $t4
	ldptr.w	$t4, $s1, 15524
	slli.d	$t5, $t5, 6
	addi.d	$t2, $t2, 32
	add.d	$t6, $t2, $t3
	add.w	$t5, $t6, $t5
	srai.d	$t6, $t5, 6
	srai.d	$t5, $t5, 63
	andn	$t5, $t6, $t5
	slt	$t6, $t5, $t4
	maskeqz	$t5, $t5, $t6
	masknez	$t4, $t4, $t6
	ld.hu	$t6, $t0, -70
	or	$t4, $t5, $t4
	st.w	$t4, $t1, -204
	ldptr.w	$t4, $s1, 15524
	slli.d	$t5, $t6, 6
	addi.d	$a2, $a2, 32
	add.d	$t6, $a2, $a4
	add.w	$t5, $t6, $t5
	srai.d	$t6, $t5, 6
	srai.d	$t5, $t5, 63
	andn	$t5, $t6, $t5
	slt	$t6, $t5, $t4
	maskeqz	$t5, $t5, $t6
	masknez	$t4, $t4, $t6
	ld.hu	$t6, $t0, -38
	or	$t4, $t5, $t4
	st.w	$t4, $t1, -140
	ldptr.w	$t4, $s1, 15524
	slli.d	$t5, $t6, 6
	sub.d	$a2, $a2, $a4
	add.w	$a2, $a2, $t5
	srai.d	$a4, $a2, 6
	srai.d	$a2, $a2, 63
	andn	$a2, $a4, $a2
	slt	$a4, $a2, $t4
	maskeqz	$a2, $a2, $a4
	masknez	$a4, $t4, $a4
	ld.hu	$t4, $t0, -6
	or	$a2, $a2, $a4
	st.w	$a2, $t1, -76
	ldptr.w	$a2, $s1, 15524
	slli.d	$a4, $t4, 6
	sub.d	$t2, $t2, $t3
	add.w	$a4, $t2, $a4
	srai.d	$t2, $a4, 6
	srai.d	$a4, $a4, 63
	andn	$a4, $t2, $a4
	slt	$t2, $a4, $a2
	maskeqz	$a4, $a4, $t2
	masknez	$a2, $a2, $t2
	or	$a2, $a4, $a2
	ld.w	$a4, $t1, -200
	ld.w	$t2, $t1, -72
	st.w	$a2, $t1, -12
	ld.w	$a2, $t1, -136
	ld.w	$t3, $t1, -8
	add.d	$t4, $t2, $a4
	sub.d	$a4, $a4, $t2
	srai.d	$t2, $a2, 1
	sub.d	$t2, $t2, $t3
	ld.hu	$t5, $t0, -100
	srai.d	$t3, $t3, 1
	add.d	$a2, $t3, $a2
	ldptr.w	$t3, $s1, 15524
	slli.d	$t5, $t5, 6
	addi.d	$t4, $t4, 32
	add.d	$t6, $t4, $a2
	add.w	$t5, $t6, $t5
	srai.d	$t6, $t5, 6
	srai.d	$t5, $t5, 63
	andn	$t5, $t6, $t5
	slt	$t6, $t5, $t3
	maskeqz	$t5, $t5, $t6
	masknez	$t3, $t3, $t6
	ld.hu	$t6, $t0, -68
	or	$t3, $t5, $t3
	st.w	$t3, $t1, -200
	ldptr.w	$t3, $s1, 15524
	slli.d	$t5, $t6, 6
	addi.d	$a4, $a4, 32
	add.d	$t6, $a4, $t2
	add.w	$t5, $t6, $t5
	srai.d	$t6, $t5, 6
	srai.d	$t5, $t5, 63
	andn	$t5, $t6, $t5
	slt	$t6, $t5, $t3
	maskeqz	$t5, $t5, $t6
	masknez	$t3, $t3, $t6
	ld.hu	$t6, $t0, -36
	or	$t3, $t5, $t3
	st.w	$t3, $t1, -136
	ldptr.w	$t3, $s1, 15524
	slli.d	$t5, $t6, 6
	sub.d	$a4, $a4, $t2
	add.w	$a4, $a4, $t5
	srai.d	$t2, $a4, 6
	srai.d	$a4, $a4, 63
	andn	$a4, $t2, $a4
	slt	$t2, $a4, $t3
	maskeqz	$a4, $a4, $t2
	masknez	$t2, $t3, $t2
	ld.hu	$t3, $t0, -4
	or	$a4, $a4, $t2
	st.w	$a4, $t1, -72
	ldptr.w	$a4, $s1, 15524
	slli.d	$t2, $t3, 6
	sub.d	$a2, $t4, $a2
	add.w	$a2, $a2, $t2
	srai.d	$t2, $a2, 6
	srai.d	$a2, $a2, 63
	andn	$a2, $t2, $a2
	slt	$t2, $a2, $a4
	maskeqz	$a2, $a2, $t2
	masknez	$a4, $a4, $t2
	or	$a2, $a2, $a4
	ld.w	$a4, $t1, -196
	ld.w	$t2, $t1, -68
	st.w	$a2, $t1, -8
	ld.w	$a2, $t1, -132
	ld.w	$t3, $t1, -4
	add.d	$t4, $t2, $a4
	sub.d	$a4, $a4, $t2
	srai.d	$t2, $a2, 1
	sub.d	$t2, $t2, $t3
	ld.hu	$t5, $t0, -98
	srai.d	$t3, $t3, 1
	add.d	$a2, $t3, $a2
	ldptr.w	$t3, $s1, 15524
	slli.d	$t5, $t5, 6
	addi.d	$t4, $t4, 32
	add.d	$t6, $t4, $a2
	add.w	$t5, $t6, $t5
	srai.d	$t6, $t5, 6
	srai.d	$t5, $t5, 63
	andn	$t5, $t6, $t5
	slt	$t6, $t5, $t3
	maskeqz	$t5, $t5, $t6
	masknez	$t3, $t3, $t6
	ld.hu	$t6, $t0, -66
	or	$t3, $t5, $t3
	st.w	$t3, $t1, -196
	ldptr.w	$t3, $s1, 15524
	slli.d	$t5, $t6, 6
	addi.d	$a4, $a4, 32
	add.d	$t6, $a4, $t2
	add.w	$t5, $t6, $t5
	srai.d	$t6, $t5, 6
	srai.d	$t5, $t5, 63
	andn	$t5, $t6, $t5
	slt	$t6, $t5, $t3
	maskeqz	$t5, $t5, $t6
	masknez	$t3, $t3, $t6
	ld.hu	$t6, $t0, -34
	or	$t3, $t5, $t3
	st.w	$t3, $t1, -132
	ldptr.w	$t3, $s1, 15524
	slli.d	$t5, $t6, 6
	sub.d	$a4, $a4, $t2
	add.w	$a4, $a4, $t5
	srai.d	$t2, $a4, 6
	srai.d	$a4, $a4, 63
	andn	$a4, $t2, $a4
	slt	$t2, $a4, $t3
	maskeqz	$a4, $a4, $t2
	masknez	$t2, $t3, $t2
	ld.hu	$t3, $t0, -2
	or	$a4, $a4, $t2
	st.w	$a4, $t1, -68
	ldptr.w	$a4, $s1, 15524
	slli.d	$t2, $t3, 6
	sub.d	$a2, $t4, $a2
	add.w	$a2, $a2, $t2
	srai.d	$t2, $a2, 6
	srai.d	$a2, $a2, 63
	andn	$a2, $t2, $a2
	slt	$t2, $a2, $a4
	maskeqz	$a2, $a2, $t2
	masknez	$a4, $a4, $t2
	or	$a2, $a2, $a4
	ld.w	$a4, $t1, -192
	ld.w	$t2, $t1, -64
	st.w	$a2, $t1, -4
	ld.w	$t4, $t1, -128
	ld.w	$a2, $t1, 0
	add.d	$t3, $t2, $a4
	sub.d	$t5, $a4, $t2
	srai.d	$t6, $t4, 1
	sub.d	$t6, $t6, $a2
	ld.hu	$t7, $t0, -96
	srai.d	$t8, $a2, 1
	add.d	$t8, $t8, $t4
	ldptr.w	$fp, $s1, 15524
	slli.d	$t7, $t7, 6
	addi.d	$t3, $t3, 32
	add.d	$s0, $t3, $t8
	add.w	$t7, $s0, $t7
	srai.d	$s0, $t7, 6
	srai.d	$t7, $t7, 63
	andn	$t7, $s0, $t7
	slt	$s0, $t7, $fp
	maskeqz	$t7, $t7, $s0
	masknez	$fp, $fp, $s0
	ld.hu	$s0, $t0, -64
	or	$t7, $t7, $fp
	st.w	$t7, $t1, -192
	ldptr.w	$t7, $s1, 15524
	slli.d	$fp, $s0, 6
	addi.d	$t5, $t5, 32
	add.d	$s0, $t5, $t6
	add.w	$fp, $s0, $fp
	srai.d	$s0, $fp, 6
	srai.d	$fp, $fp, 63
	andn	$fp, $s0, $fp
	slt	$s0, $fp, $t7
	maskeqz	$fp, $fp, $s0
	masknez	$t7, $t7, $s0
	ld.hu	$s0, $t0, -32
	or	$t7, $fp, $t7
	st.w	$t7, $t1, -128
	ldptr.w	$t7, $s1, 15524
	slli.d	$fp, $s0, 6
	sub.d	$t5, $t5, $t6
	add.w	$t5, $t5, $fp
	srai.d	$t6, $t5, 6
	srai.d	$t5, $t5, 63
	andn	$t5, $t6, $t5
	slt	$t6, $t5, $t7
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $t7, $t6
	ld.hu	$t7, $t0, 0
	or	$t5, $t5, $t6
	st.w	$t5, $t1, -64
	ldptr.w	$t5, $s1, 15524
	slli.d	$t6, $t7, 6
	sub.d	$t3, $t3, $t8
	add.w	$t3, $t3, $t6
	srai.d	$t6, $t3, 6
	srai.d	$t3, $t3, 63
	andn	$t3, $t6, $t3
	slt	$t6, $t3, $t5
	maskeqz	$t3, $t3, $t6
	masknez	$t5, $t5, $t6
	or	$t3, $t3, $t5
	st.w	$t3, $t1, 0
	st.w	$a4, $s5, 0
	st.w	$t4, $s5, 4
	st.w	$t2, $s5, 8
	ldptr.w	$a4, $s1, 15544
	st.w	$a2, $s5, 12
	addi.d	$a7, $a7, 4
	addi.d	$t1, $t1, 16
	addi.d	$t0, $t0, 8
	blt	$a7, $a4, .LBB4_206
# %bb.207:                              # %._crit_edge906
                                        #   in Loop: Header=BB4_204 Depth=1
	ori	$a2, $s7, 3260
	ldx.w	$a7, $s1, $a2
	b	.LBB4_203
.LBB4_208:                              # %.preheader766
	ori	$a1, $zero, 1
	blt	$a7, $a1, .LBB4_221
# %bb.209:                              # %.lr.ph914
	move	$a3, $zero
	ld.w	$a4, $s1, 188
	pcalau12i	$a2, %got_pc_hi20(enc_picture)
	ld.d	$a2, $a2, %got_pc_lo12(enc_picture)
	ldx.wu	$a0, $s1, $a0
	ori	$a5, $s7, 848
	add.d	$a5, $s1, $a5
	ld.d	$a6, $a2, 0
	addi.d	$t0, $a0, -1
	bstrpick.d	$a2, $a0, 16, 3
	slli.d	$t1, $a2, 3
	addi.w	$t2, $a0, 0
	ori	$t4, $zero, 16
	srli.d	$t5, $t0, 16
	b	.LBB4_211
	.p2align	4, , 16
.LBB4_210:                              # %._crit_edge912
                                        #   in Loop: Header=BB4_211 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a5, $a5, 64
	beq	$a3, $a7, .LBB4_221
.LBB4_211:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_219 Depth 2
                                        #     Child Loop BB4_215 Depth 2
	blt	$t2, $a1, .LBB4_210
# %bb.212:                              # %.lr.ph911
                                        #   in Loop: Header=BB4_211 Depth=1
	ldptr.d	$a2, $a6, 6472
	add.d	$t3, $a4, $a3
	ld.d	$t6, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$t6, $a2, $t6
	ld.w	$a2, $s1, 184
	slli.d	$t3, $t3, 48
	srai.d	$t3, $t3, 45
	ldx.d	$t6, $t6, $t3
	bgeu	$a0, $t4, .LBB4_216
# %bb.213:                              #   in Loop: Header=BB4_211 Depth=1
	move	$t8, $zero
.LBB4_214:                              # %scalar.ph1218.preheader
                                        #   in Loop: Header=BB4_211 Depth=1
	add.d	$a2, $a2, $t8
	slli.d	$t7, $t8, 2
	sub.d	$t8, $a0, $t8
	.p2align	4, , 16
.LBB4_215:                              # %scalar.ph1218
                                        #   Parent Loop BB4_211 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.h	$t3, $a5, $t7
	slli.d	$fp, $a2, 48
	srai.d	$fp, $fp, 47
	stx.h	$t3, $t6, $fp
	addi.d	$a2, $a2, 1
	addi.d	$t8, $t8, -1
	addi.d	$t7, $t7, 4
	bnez	$t8, .LBB4_215
	b	.LBB4_210
	.p2align	4, , 16
.LBB4_216:                              # %vector.scevcheck
                                        #   in Loop: Header=BB4_211 Depth=1
	slli.d	$t3, $a2, 48
	srai.d	$t3, $t3, 47
	add.d	$t7, $a2, $t0
	slli.d	$t7, $t7, 48
	srai.d	$t7, $t7, 47
	move	$t8, $zero
	blt	$t7, $t3, .LBB4_214
# %bb.217:                              # %vector.scevcheck
                                        #   in Loop: Header=BB4_211 Depth=1
	bnez	$t5, .LBB4_214
# %bb.218:                              # %vector.body1223.preheader
                                        #   in Loop: Header=BB4_211 Depth=1
	move	$t7, $a2
	move	$t8, $a5
	move	$fp, $t1
	.p2align	4, , 16
.LBB4_219:                              # %vector.body1223
                                        #   Parent Loop BB4_211 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t8, 0
	xvpickve2gr.w	$t3, $xr0, 0
	vinsgr2vr.h	$vr1, $t3, 0
	xvpickve2gr.w	$t3, $xr0, 1
	vinsgr2vr.h	$vr1, $t3, 1
	xvpickve2gr.w	$t3, $xr0, 2
	vinsgr2vr.h	$vr1, $t3, 2
	xvpickve2gr.w	$t3, $xr0, 3
	vinsgr2vr.h	$vr1, $t3, 3
	xvpickve2gr.w	$t3, $xr0, 4
	vinsgr2vr.h	$vr1, $t3, 4
	xvpickve2gr.w	$t3, $xr0, 5
	vinsgr2vr.h	$vr1, $t3, 5
	xvpickve2gr.w	$t3, $xr0, 6
	vinsgr2vr.h	$vr1, $t3, 6
	xvpickve2gr.w	$t3, $xr0, 7
	vinsgr2vr.h	$vr1, $t3, 7
	slli.d	$t3, $t7, 48
	srai.d	$t3, $t3, 47
	vstx	$vr1, $t6, $t3
	addi.d	$fp, $fp, -8
	addi.d	$t8, $t8, 32
	addi.d	$t7, $t7, 8
	bnez	$fp, .LBB4_219
# %bb.220:                              # %middle.block1226
                                        #   in Loop: Header=BB4_211 Depth=1
	move	$t8, $t1
	beq	$t1, $a0, .LBB4_210
	b	.LBB4_214
.LBB4_221:                              # %.loopexit
	move	$a0, $s3
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.Lfunc_end4:
	.size	dct_chroma, .Lfunc_end4-dct_chroma
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function dct_luma_sp
.LCPI5_0:
	.dword	0x3feb333333333333              # double 0.84999999999999998
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI5_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4                               # 0x4
	.word	4294967295                      # 0xffffffff
.LCPI5_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4                               # 0x4
	.text
	.globl	dct_luma_sp
	.p2align	5
	.type	dct_luma_sp,@function
dct_luma_sp:                            # @dct_luma_sp
# %bb.0:                                # %.preheader373
	addi.d	$sp, $sp, -544
	st.d	$ra, $sp, 536                   # 8-byte Folded Spill
	st.d	$fp, $sp, 528                   # 8-byte Folded Spill
	st.d	$s0, $sp, 520                   # 8-byte Folded Spill
	st.d	$s1, $sp, 512                   # 8-byte Folded Spill
	st.d	$s2, $sp, 504                   # 8-byte Folded Spill
	st.d	$s3, $sp, 496                   # 8-byte Folded Spill
	st.d	$s4, $sp, 488                   # 8-byte Folded Spill
	st.d	$s5, $sp, 480                   # 8-byte Folded Spill
	st.d	$s6, $sp, 472                   # 8-byte Folded Spill
	st.d	$s7, $sp, 464                   # 8-byte Folded Spill
	st.d	$s8, $sp, 456                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 448                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 440                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 432                  # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	srli.d	$a0, $a0, 2
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$s1, $a1, %got_pc_lo12(img)
	srli.d	$a1, $s0, 2
	addi.w	$a3, $zero, -2
	lu52i.d	$a3, $a3, 511
	ld.d	$a4, $s1, 0
	and	$a1, $a1, $a3
	srli.d	$a3, $fp, 3
	add.d	$a1, $a1, $a3
	ldptr.d	$a3, $a4, 14160
	bstrpick.d	$a5, $s0, 2, 2
	bstrins.d	$a0, $a5, 63, 1
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a3, $a1
	slli.d	$a0, $a0, 3
	ld.w	$a3, $a4, 12
	ldptr.d	$a4, $a4, 14224
	ldx.d	$a0, $a1, $a0
	ori	$a1, $zero, 536
	mul.d	$a1, $a3, $a1
	add.d	$s7, $a4, $a1
	ld.w	$a1, $s7, 8
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a2, $a0, 0
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 8
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	addi.d	$a0, $a1, -12
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	vldi	$vr1, -1016
	fdiv.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	move	$ra, $zero
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	pcalau12i	$a2, %got_pc_hi20(qp_per_matrix)
	ld.d	$a2, $a2, %got_pc_lo12(qp_per_matrix)
	pcalau12i	$a3, %got_pc_hi20(qp_rem_matrix)
	ld.d	$a3, $a3, %got_pc_lo12(qp_rem_matrix)
	ld.w	$a4, $s7, 8
	ld.d	$a5, $a2, 0
	fld.d	$fa1, $a1, %pc_lo12(.LCPI5_0)
	ld.d	$a1, $a3, 0
	slli.d	$a3, $a4, 2
	ldx.w	$t4, $a5, $a3
	ld.d	$a2, $s1, 0
	ldx.w	$a3, $a1, $a3
	st.d	$a3, $sp, 304                   # 8-byte Folded Spill
	ld.w	$a3, $s7, 20
	st.d	$s0, $sp, 176                   # 8-byte Folded Spill
	slli.d	$a4, $s0, 5
	add.d	$a4, $a2, $a4
	st.d	$fp, $sp, 184                   # 8-byte Folded Spill
	alsl.d	$a4, $fp, $a4, 1
	ldptr.d	$a6, $a4, 12624
	slli.d	$a3, $a3, 2
	ldx.w	$s0, $a5, $a3
	ldx.w	$a1, $a1, $a3
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	vinsgr2vr.d	$vr2, $a6, 0
	vrepli.b	$vr5, 0
	vilvl.h	$vr2, $vr5, $vr2
	vpickve2gr.w	$a3, $vr2, 1
	lu12i.w	$a1, 3
	ori	$t3, $a1, 848
	vldx	$vr3, $a2, $t3
	st.w	$a3, $sp, 384
	vpickve2gr.w	$a3, $vr2, 2
	st.w	$a3, $sp, 400
	vadd.w	$vr3, $vr3, $vr2
	ldptr.d	$a3, $a4, 12656
	vstx	$vr3, $a2, $t3
	vpickve2gr.w	$a5, $vr2, 3
	st.w	$a5, $sp, 416
	vinsgr2vr.d	$vr3, $a3, 0
	vilvl.h	$vr3, $vr5, $vr3
	vpickve2gr.w	$a3, $vr3, 1
	ori	$t2, $a1, 912
	vldx	$vr4, $a2, $t2
	st.w	$a3, $sp, 388
	vpickve2gr.w	$a3, $vr3, 2
	st.w	$a3, $sp, 404
	vadd.w	$vr4, $vr4, $vr3
	ldptr.d	$a3, $a4, 12688
	vstx	$vr4, $a2, $t2
	vpickve2gr.w	$a5, $vr3, 3
	st.w	$a5, $sp, 420
	vinsgr2vr.d	$vr4, $a3, 0
	vilvl.h	$vr4, $vr5, $vr4
	vpickve2gr.w	$a3, $vr4, 1
	ori	$t1, $a1, 976
	vldx	$vr6, $a2, $t1
	st.w	$a3, $sp, 392
	vpickve2gr.w	$a3, $vr4, 2
	st.w	$a3, $sp, 408
	vadd.w	$vr6, $vr6, $vr4
	ldptr.d	$a3, $a4, 12720
	vstx	$vr6, $a2, $t1
	vpickve2gr.w	$a4, $vr4, 3
	st.w	$a4, $sp, 424
	vinsgr2vr.d	$vr6, $a3, 0
	vilvl.h	$vr5, $vr5, $vr6
	ori	$t0, $a1, 1040
	vldx	$vr7, $a2, $t0
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	vld	$vr6, $a3, %pc_lo12(.LCPI5_1)
	pcalau12i	$a3, %pc_hi20(.LCPI5_2)
	vadd.w	$vr7, $vr7, $vr5
	vstx	$vr7, $a2, $t0
	vld	$vr7, $a3, %pc_lo12(.LCPI5_2)
	vpickve2gr.w	$a2, $vr5, 1
	st.w	$a2, $sp, 396
	ld.d	$a2, $s1, 0
	vpickve2gr.w	$a3, $vr5, 2
	st.w	$a3, $sp, 412
	vpickve2gr.w	$a3, $vr5, 3
	ldx.w	$a4, $a2, $t3
	ori	$a5, $a1, 860
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	ldx.w	$a5, $a2, $a5
	ori	$a6, $a1, 852
	st.d	$a6, $sp, 72                    # 8-byte Folded Spill
	ldx.w	$a6, $a2, $a6
	ori	$a7, $a1, 856
	st.d	$a7, $sp, 80                    # 8-byte Folded Spill
	ldx.w	$a7, $a2, $a7
	st.w	$a3, $sp, 428
	add.d	$a3, $a5, $a4
	sub.d	$a4, $a4, $a5
	add.d	$a5, $a7, $a6
	sub.d	$a6, $a6, $a7
	add.d	$a7, $a5, $a3
	stptr.w	$a7, $a2, 13136
	sub.d	$a3, $a3, $a5
	stptr.w	$a3, $a2, 13144
	alsl.d	$a3, $a4, $a6, 1
	stptr.w	$a3, $a2, 13140
	slli.d	$a3, $a6, 1
	sub.d	$a3, $a4, $a3
	ldx.w	$a4, $a2, $t2
	ori	$a5, $a1, 924
	st.d	$a5, $sp, 88                    # 8-byte Folded Spill
	ldx.w	$a5, $a2, $a5
	ori	$a6, $a1, 916
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	ldx.w	$a6, $a2, $a6
	ori	$a7, $a1, 920
	st.d	$a7, $sp, 56                    # 8-byte Folded Spill
	ldx.w	$a7, $a2, $a7
	stptr.w	$a3, $a2, 13148
	add.d	$a3, $a5, $a4
	sub.d	$a4, $a4, $a5
	add.d	$a5, $a7, $a6
	sub.d	$a6, $a6, $a7
	add.d	$a7, $a5, $a3
	stptr.w	$a7, $a2, 13200
	sub.d	$a3, $a3, $a5
	stptr.w	$a3, $a2, 13208
	alsl.d	$a3, $a4, $a6, 1
	stptr.w	$a3, $a2, 13204
	slli.d	$a3, $a6, 1
	sub.d	$a3, $a4, $a3
	ldx.w	$a4, $a2, $t1
	ori	$a5, $a1, 988
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	ldx.w	$a5, $a2, $a5
	ori	$a6, $a1, 980
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	ldx.w	$a6, $a2, $a6
	ori	$a7, $a1, 984
	st.d	$a7, $sp, 32                    # 8-byte Folded Spill
	ldx.w	$a7, $a2, $a7
	stptr.w	$a3, $a2, 13212
	add.d	$a3, $a5, $a4
	sub.d	$a4, $a4, $a5
	add.d	$a5, $a7, $a6
	sub.d	$a6, $a6, $a7
	add.d	$a7, $a5, $a3
	stptr.w	$a7, $a2, 13264
	sub.d	$a3, $a3, $a5
	stptr.w	$a3, $a2, 13272
	alsl.d	$a3, $a4, $a6, 1
	stptr.w	$a3, $a2, 13268
	slli.d	$a3, $a6, 1
	sub.d	$a3, $a4, $a3
	ldx.w	$a4, $a2, $t0
	ori	$a5, $a1, 1052
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	ldx.w	$a5, $a2, $a5
	ori	$a6, $a1, 1044
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	ldx.w	$a6, $a2, $a6
	ori	$a1, $a1, 1048
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ldx.w	$a1, $a2, $a1
	stptr.w	$a3, $a2, 13276
	add.d	$a3, $a5, $a4
	sub.d	$a4, $a4, $a5
	add.d	$a5, $a1, $a6
	sub.d	$a1, $a6, $a1
	add.d	$a6, $a5, $a3
	stptr.w	$a6, $a2, 13328
	vpackev.w	$vr2, $vr3, $vr2
	sub.d	$a3, $a3, $a5
	st.d	$t4, $sp, 312                   # 8-byte Folded Spill
	addi.d	$a5, $t4, 15
	stptr.w	$a3, $a2, 13336
	alsl.d	$a3, $a4, $a1, 1
	stptr.w	$a3, $a2, 13332
	ori	$fp, $zero, 1
	slli.d	$a1, $a1, 1
	sub.d	$a1, $a4, $a1
	st.d	$a5, $sp, 288                   # 8-byte Folded Spill
	sll.w	$a3, $fp, $a5
	vshuf.w	$vr6, $vr4, $vr2
	vshuf.w	$vr7, $vr5, $vr6
	vst	$vr7, $sp, 368
	stptr.w	$a1, $a2, 13340
	lu12i.w	$a1, 174762
	ori	$a1, $a1, 2731
	ld.d	$a2, $s1, 0
	mul.d	$a1, $a3, $a1
	srli.d	$a3, $a1, 63
	srli.d	$a1, $a1, 32
	vldx	$vr2, $a2, $t3
	vldx	$vr3, $a2, $t0
	vldx	$vr4, $a2, $t2
	vldx	$vr5, $a2, $t1
	add.d	$a1, $a1, $a3
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	vsub.w	$vr6, $vr2, $vr3
	vadd.w	$vr2, $vr3, $vr2
	vsub.w	$vr3, $vr4, $vr5
	vadd.w	$vr4, $vr5, $vr4
	vadd.w	$vr5, $vr4, $vr2
	st.d	$t3, $sp, 328                   # 8-byte Folded Spill
	vstx	$vr5, $a2, $t3
	vsub.w	$vr2, $vr2, $vr4
	st.d	$t1, $sp, 112                   # 8-byte Folded Spill
	vstx	$vr2, $a2, $t1
	vslli.w	$vr2, $vr6, 1
	vadd.w	$vr2, $vr2, $vr3
	st.d	$t2, $sp, 104                   # 8-byte Folded Spill
	vstx	$vr2, $a2, $t2
	vslli.w	$vr2, $vr3, 1
	vsub.w	$vr2, $vr6, $vr2
	ld.w	$a1, $sp, 368
	ld.w	$a3, $sp, 416
	ld.w	$a4, $sp, 384
	ld.w	$a5, $sp, 400
	st.d	$t0, $sp, 120                   # 8-byte Folded Spill
	vstx	$vr2, $a2, $t0
	add.w	$a2, $a3, $a1
	sub.w	$a3, $a1, $a3
	add.w	$a1, $a5, $a4
	sub.w	$a5, $a4, $a5
	add.d	$a6, $a1, $a2
	sub.d	$a1, $a2, $a1
	alsl.d	$a4, $a3, $a5, 1
	slli.d	$a2, $a5, 1
	sub.d	$a2, $a3, $a2
	ld.w	$a3, $sp, 372
	ld.w	$a5, $sp, 420
	ld.w	$a7, $sp, 388
	ld.w	$t0, $sp, 404
	st.w	$a2, $sp, 416
	add.d	$a2, $a5, $a3
	sub.d	$a5, $a3, $a5
	add.d	$a3, $t0, $a7
	sub.d	$a7, $a7, $t0
	add.d	$t0, $a3, $a2
	sub.d	$a3, $a2, $a3
	addi.w	$a2, $a5, 0
	alsl.d	$t1, $a2, $a7, 1
	addi.w	$a2, $a7, 0
	slli.d	$a2, $a2, 1
	ld.w	$a7, $sp, 376
	ld.w	$t2, $sp, 424
	ld.w	$t3, $sp, 392
	ld.w	$t4, $sp, 408
	sub.d	$a2, $a5, $a2
	add.d	$a5, $t2, $a7
	sub.d	$a7, $a7, $t2
	add.d	$t2, $t4, $t3
	sub.d	$t3, $t3, $t4
	add.d	$t4, $t2, $a5
	sub.d	$a5, $a5, $t2
	addi.w	$t2, $a7, 0
	alsl.d	$t2, $t2, $t3, 1
	addi.w	$t3, $t3, 0
	slli.d	$t3, $t3, 1
	ld.w	$t5, $sp, 380
	ld.w	$t6, $sp, 428
	ld.w	$t7, $sp, 396
	ld.w	$t8, $sp, 412
	sub.d	$a7, $a7, $t3
	add.w	$t3, $t6, $t5
	sub.w	$t5, $t5, $t6
	add.w	$t6, $t8, $t7
	sub.w	$t7, $t7, $t8
	add.d	$t8, $t6, $t3
	sub.d	$t3, $t3, $t6
	alsl.d	$t6, $t5, $t7, 1
	slli.d	$t7, $t7, 1
	sub.d	$t5, $t5, $t7
	add.d	$t7, $t8, $a6
	sub.d	$a6, $a6, $t8
	add.d	$t8, $t4, $t0
	sub.d	$t0, $t0, $t4
	add.d	$t4, $t8, $t7
	st.w	$t4, $sp, 368
	sub.d	$t4, $t7, $t8
	st.w	$t4, $sp, 376
	alsl.d	$t4, $a6, $t0, 1
	st.w	$t4, $sp, 372
	slli.d	$t0, $t0, 1
	sub.d	$a6, $a6, $t0
	st.w	$a6, $sp, 380
	add.d	$a6, $t6, $a4
	sub.d	$a4, $a4, $t6
	add.d	$t0, $t2, $t1
	sub.d	$t1, $t1, $t2
	add.d	$t2, $t0, $a6
	st.w	$t2, $sp, 384
	sub.d	$a6, $a6, $t0
	st.w	$a6, $sp, 392
	alsl.d	$a6, $a4, $t1, 1
	st.w	$a6, $sp, 388
	slli.d	$a6, $t1, 1
	move	$t1, $zero
	sub.d	$a4, $a4, $a6
	st.w	$a4, $sp, 396
	add.d	$a4, $t3, $a1
	sub.d	$a1, $a1, $t3
	add.d	$a6, $a5, $a3
	sub.d	$a3, $a3, $a5
	add.d	$a5, $a6, $a4
	st.w	$a5, $sp, 400
	sub.d	$a4, $a4, $a6
	st.w	$a4, $sp, 408
	alsl.d	$a4, $a1, $a3, 1
	st.w	$a4, $sp, 404
	ld.w	$a4, $sp, 416
	slli.d	$a3, $a3, 1
	sub.d	$a1, $a1, $a3
	st.w	$a1, $sp, 412
	add.d	$a1, $t5, $a4
	sub.d	$a3, $a4, $t5
	add.d	$a4, $a7, $a2
	sub.d	$a2, $a2, $a7
	add.d	$a5, $a4, $a1
	st.w	$a5, $sp, 416
	sub.d	$a1, $a1, $a4
	st.w	$a1, $sp, 424
	alsl.d	$a1, $a3, $a2, 1
	st.w	$a1, $sp, 420
	slli.d	$a1, $a2, 1
	sub.d	$a1, $a3, $a1
	addi.d	$t2, $s0, 15
	st.w	$a1, $sp, 428
	sll.w	$a1, $fp, $t2
	bstrpick.d	$a2, $a1, 31, 31
	add.w	$a1, $a1, $a2
	fmul.d	$fa0, $fa0, $fa1
	vldi	$vr1, -1008
	fmul.d	$fs0, $fa0, $fa1
	srai.d	$t3, $a1, 1
	lu12i.w	$a1, 244
	ori	$a1, $a1, 575
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	addi.d	$t7, $zero, -1
	ld.d	$a1, $s1, 0
	sll.w	$t4, $t7, $t2
	addi.d	$t5, $sp, 368
	ori	$t6, $zero, 32
	st.d	$s1, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$t2, $sp, 144                   # 8-byte Folded Spill
	st.d	$t3, $sp, 136                   # 8-byte Folded Spill
	st.d	$t4, $sp, 128                   # 8-byte Folded Spill
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_1:                                #   in Loop: Header=BB5_3 Depth=1
	srai.d	$a4, $a3, 31
	xor	$a3, $a3, $a4
	sub.d	$a3, $a3, $a4
	sub.d	$a4, $zero, $a3
	masknez	$a5, $a3, $a2
	move	$s2, $a6
	maskeqz	$a6, $a4, $a2
	or	$a5, $a6, $a5
	ld.w	$a6, $a1, 180
	pcalau12i	$a7, %pc_hi20(lrec)
	ld.d	$a7, $a7, %pc_lo12(lrec)
	ld.d	$t0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	add.d	$t0, $t0, $fp
	add.w	$a6, $t0, $a6
	ld.w	$t0, $a1, 176
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a7, $a6
	ld.d	$a7, $sp, 184                   # 8-byte Folded Reload
	add.d	$a7, $a7, $s6
	add.w	$a7, $a7, $t0
	slli.d	$a7, $a7, 2
	stx.w	$a5, $a6, $a7
	move	$a6, $s2
.LBB5_2:                                #   in Loop: Header=BB5_3 Depth=1
	add.d	$a5, $a6, $s5
	alsl.d	$a5, $s6, $a5, 4
	ldx.w	$a5, $a5, $t8
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	mul.d	$a2, $a5, $a2
	sll.w	$a2, $a2, $s0
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	add.d	$a3, $a1, $a3
	alsl.d	$a3, $s6, $a3, 2
	addi.d	$ra, $ra, 2
	stptr.w	$a2, $a3, 13136
	beq	$ra, $t6, .LBB5_17
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $s7, 428
	sltui	$a2, $a2, 1
	pcalau12i	$a3, %pc_hi20(FIELD_SCAN)
	addi.d	$a3, $a3, %pc_lo12(FIELD_SCAN)
	add.d	$a4, $a3, $ra
	pcalau12i	$a5, %pc_hi20(SNGL_SCAN)
	addi.d	$a5, $a5, %pc_lo12(SNGL_SCAN)
	add.d	$a6, $a5, $ra
	masknez	$a3, $a3, $a2
	maskeqz	$a5, $a5, $a2
	or	$a3, $a5, $a3
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a6, $a2
	or	$a2, $a2, $a4
	ldx.bu	$s6, $a3, $ra
	ld.bu	$a5, $a2, 1
	addi.w	$t7, $t7, 1
	alsl.d	$a2, $s6, $t5, 4
	slli.d	$t8, $a5, 2
	ldx.w	$s8, $a2, $t8
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	slli.d	$s5, $a2, 6
	pcalau12i	$a2, %pc_hi20(quant_coef)
	addi.d	$a3, $a2, %pc_lo12(quant_coef)
	add.d	$a2, $a3, $s5
	alsl.d	$a2, $s6, $a2, 4
	ldx.w	$t0, $a2, $t8
	srai.d	$a2, $s8, 31
	xor	$a4, $s8, $a2
	sub.d	$a2, $a4, $a2
	mul.d	$a2, $a2, $t0
	add.w	$a2, $a2, $t3
	and	$a2, $a2, $t4
	div.w	$a4, $a2, $t0
	st.d	$a5, $sp, 320                   # 8-byte Folded Spill
	slli.d	$a2, $a5, 6
	st.d	$a2, $sp, 352                   # 8-byte Folded Spill
	add.d	$a2, $a1, $a2
	alsl.d	$a2, $s6, $a2, 2
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	ldx.w	$a2, $a2, $a5
	slti	$a5, $s8, 0
	srai.d	$a6, $a4, 31
	xor	$a4, $a4, $a6
	sub.d	$a4, $a4, $a6
	sub.d	$a6, $zero, $a4
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $a6, $a5
	or	$a4, $a4, $a5
	add.w	$s2, $a4, $a2
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	slli.d	$a4, $a4, 6
	st.d	$a4, $sp, 344                   # 8-byte Folded Spill
	add.d	$a3, $a3, $a4
	alsl.d	$a3, $s6, $a3, 4
	ldx.w	$a3, $a3, $t8
	srai.d	$a4, $s2, 31
	xor	$a5, $s2, $a4
	sub.d	$a4, $a5, $a4
	mul.d	$a4, $a4, $a3
	ld.d	$a7, $sp, 280                   # 8-byte Folded Reload
	add.d	$a4, $a4, $a7
	ld.d	$a6, $sp, 288                   # 8-byte Folded Reload
	sra.w	$s4, $a4, $a6
	sub.w	$fp, $a2, $s8
	srai.d	$a4, $fp, 31
	xor	$a5, $fp, $a4
	sub.d	$a4, $a5, $a4
	mul.d	$a3, $a4, $a3
	add.d	$a3, $a3, $a7
	sra.w	$s3, $a3, $a6
	pcalau12i	$a3, %pc_hi20(dequant_coef)
	addi.d	$a6, $a3, %pc_lo12(dequant_coef)
	pcalau12i	$a3, %pc_hi20(A)
	addi.d	$a4, $a3, %pc_lo12(A)
	st.d	$a4, $sp, 336                   # 8-byte Folded Spill
	beqz	$s3, .LBB5_7
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=1
	beq	$s4, $s3, .LBB5_7
# %bb.5:                                #   in Loop: Header=BB5_3 Depth=1
	beqz	$s4, .LBB5_7
# %bb.6:                                # %.thread349
                                        #   in Loop: Header=BB5_3 Depth=1
	slti	$a0, $s2, 0
	srai.d	$a1, $s4, 31
	xor	$a3, $s4, $a1
	sub.w	$a5, $a3, $a1
	st.d	$a5, $sp, 224                   # 8-byte Folded Spill
	sub.d	$a1, $zero, $a5
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	add.d	$a3, $a6, $a3
	alsl.d	$a3, $s6, $a3, 4
	ldx.w	$a3, $a3, $t8
	alsl.d	$a4, $s6, $a4, 4
	ldx.w	$a4, $a4, $t8
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a5, $a0
	or	$a0, $a1, $a0
	mul.d	$s0, $a4, $a3
	mul.d	$a0, $s0, $a0
	ld.d	$s7, $sp, 312                   # 8-byte Folded Reload
	sll.w	$a0, $a0, $s7
	srli.d	$a0, $a0, 6
	add.d	$a0, $s8, $a0
	sub.d	$a0, $a2, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fs1, $fa0
	addi.d	$a2, $sp, 364
	addi.d	$a3, $sp, 360
	move	$a0, $s4
	move	$a1, $t7
	st.d	$ra, $sp, 272                   # 8-byte Folded Spill
	st.d	$t1, $sp, 264                   # 8-byte Folded Spill
	st.d	$s5, $sp, 248                   # 8-byte Folded Spill
	move	$s5, $t7
	st.d	$t8, $sp, 256                   # 8-byte Folded Spill
	st.d	$a6, $sp, 240                   # 8-byte Folded Spill
	st.d	$t0, $sp, 232                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(levrun_linfo_inter)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 364
	movgr2fr.w	$fa0, $a0
	ld.d	$a0, $s1, 0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fmadd.d	$fs1, $fs1, $fs1, $fa0
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	alsl.d	$a0, $s6, $a0, 2
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $a1
	slti	$a1, $fp, 0
	srai.d	$a2, $s3, 31
	xor	$a3, $s3, $a2
	sub.w	$s1, $a3, $a2
	sub.d	$a2, $zero, $s1
	masknez	$a3, $s1, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	mul.d	$a1, $s0, $a1
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	sll.w	$a1, $a1, $s7
	srli.d	$a1, $a1, 6
	add.d	$a1, $a1, $s8
	sub.d	$a0, $a0, $a1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fs2, $fa0
	addi.d	$a2, $sp, 364
	addi.d	$a3, $sp, 360
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(levrun_linfo_inter)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 256                   # 8-byte Folded Reload
	move	$t7, $s5
	ld.d	$s5, $sp, 248                   # 8-byte Folded Reload
	ori	$t6, $zero, 32
	addi.d	$t5, $sp, 368
	ld.d	$t4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 272                   # 8-byte Folded Reload
	ld.w	$a0, $sp, 364
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fmadd.d	$fa0, $fs2, $fs2, $fa0
	fcmp.ceq.d	$fcc0, $fs1, $fa0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	sltu	$a0, $a0, $s1
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s4, $a0
	fcmp.clt.d	$fcc1, $fs1, $fa0
	or	$a0, $a0, $a1
	movcf2gr	$a1, $fcc1
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $s4, $a1
	or	$a1, $a1, $a2
	movcf2gr	$a2, $fcc0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$s3, $a0, $a1
	xor	$a0, $s3, $s4
	sltui	$a0, $a0, 1
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s2, $a0
	or	$fp, $a0, $a1
	b	.LBB5_11
	.p2align	4, , 16
.LBB5_7:                                #   in Loop: Header=BB5_3 Depth=1
	bne	$s4, $s3, .LBB5_9
# %bb.8:                                #   in Loop: Header=BB5_3 Depth=1
	move	$fp, $s2
	move	$s3, $s4
	b	.LBB5_10
	.p2align	4, , 16
.LBB5_9:                                #   in Loop: Header=BB5_3 Depth=1
	beqz	$s4, .LBB5_14
.LBB5_10:                               #   in Loop: Header=BB5_3 Depth=1
	beqz	$s3, .LBB5_14
.LBB5_11:                               #   in Loop: Header=BB5_3 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	blt	$a1, $s3, .LBB5_13
# %bb.12:                               #   in Loop: Header=BB5_3 Depth=1
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4180
	pcalau12i	$a1, %pc_hi20(COEFF_COST)
	addi.d	$a1, $a1, %pc_lo12(COEFF_COST)
	alsl.d	$a0, $a0, $a1, 4
	ldx.bu	$a0, $a0, $t7
.LBB5_13:                               #   in Loop: Header=BB5_3 Depth=1
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a1, $a2, 0
	add.d	$a0, $a1, $a0
	st.w	$a0, $a2, 0
	slti	$a0, $fp, 0
	srai.d	$a1, $s3, 31
	xor	$a2, $s3, $a1
	sub.d	$a1, $a2, $a1
	sub.d	$a2, $zero, $a1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	slli.d	$a1, $t1, 2
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	stx.w	$a0, $a2, $a1
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	stx.w	$t7, $a2, $a1
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	add.d	$a1, $a6, $a1
	alsl.d	$a1, $s6, $a1, 4
	ldx.w	$a1, $a1, $t8
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a2, $s6, $a2, 4
	ldx.w	$a2, $a2, $t8
	addi.w	$t1, $t1, 1
	mul.d	$a0, $a1, $a0
	mul.d	$a0, $a0, $a2
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	sll.w	$a0, $a0, $a1
	ld.d	$a1, $s1, 0
	srai.d	$a2, $a0, 6
	addi.d	$t7, $zero, -1
	ori	$a0, $zero, 1
	b	.LBB5_15
	.p2align	4, , 16
.LBB5_14:                               #   in Loop: Header=BB5_3 Depth=1
	move	$a2, $zero
.LBB5_15:                               # %.thread
                                        #   in Loop: Header=BB5_3 Depth=1
	pcalau12i	$a3, %pc_hi20(si_frame_indicator)
	ld.w	$a3, $a3, %pc_lo12(si_frame_indicator)
	pcalau12i	$a4, %pc_hi20(sp2_frame_indicator)
	ld.w	$a4, $a4, %pc_lo12(sp2_frame_indicator)
	add.w	$a2, $a2, $s8
	or	$a4, $a3, $a4
	srai.d	$a3, $a2, 31
	xor	$a5, $a2, $a3
	sub.d	$a3, $a5, $a3
	mul.d	$a3, $a3, $t0
	add.d	$a3, $a3, $t3
	sra.w	$a3, $a3, $t2
	slti	$a2, $a2, 0
	beqz	$a4, .LBB5_1
# %bb.16:                               # %.thread._crit_edge
                                        #   in Loop: Header=BB5_3 Depth=1
	srai.d	$a4, $a3, 31
	xor	$a3, $a3, $a4
	sub.d	$a3, $a3, $a4
	sub.d	$a4, $zero, $a3
	b	.LBB5_2
.LBB5_17:                               # %.preheader363
	slli.d	$a2, $t1, 2
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	stx.w	$zero, $a3, $a2
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ldx.w	$a2, $a1, $s2
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ldx.w	$a3, $a1, $s3
	ldptr.w	$a4, $a1, 13140
	ldptr.w	$a5, $a1, 13148
	add.d	$a6, $a3, $a2
	sub.d	$a3, $a2, $a3
	srai.d	$a2, $a4, 1
	sub.d	$a7, $a2, $a5
	srai.d	$a2, $a5, 1
	add.d	$a4, $a2, $a4
	add.d	$a2, $a4, $a6
	sub.d	$a4, $a6, $a4
	stptr.w	$a4, $a1, 13148
	add.d	$a5, $a7, $a3
	sub.d	$a3, $a3, $a7
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ldx.w	$a4, $a1, $s0
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ldx.w	$a6, $a1, $s4
	stptr.w	$a3, $a1, 13144
	ldptr.w	$a3, $a1, 13204
	ldptr.w	$a7, $a1, 13212
	add.d	$t0, $a6, $a4
	sub.d	$a4, $a4, $a6
	srai.d	$a6, $a3, 1
	sub.d	$a6, $a6, $a7
	srai.d	$a7, $a7, 1
	add.d	$a3, $a7, $a3
	add.w	$t1, $a3, $t0
	sub.d	$a3, $t0, $a3
	stptr.w	$a3, $a1, 13212
	add.w	$a7, $a6, $a4
	sub.d	$a3, $a4, $a6
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ldx.w	$a4, $a1, $fp
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ldx.w	$a6, $a1, $s5
	stptr.w	$a3, $a1, 13208
	ldptr.w	$a3, $a1, 13268
	ldptr.w	$t0, $a1, 13276
	add.d	$t2, $a6, $a4
	sub.d	$a4, $a4, $a6
	srai.d	$a6, $a3, 1
	sub.d	$a6, $a6, $t0
	srai.d	$t0, $t0, 1
	add.d	$a3, $t0, $a3
	add.d	$t3, $a3, $t2
	sub.d	$a3, $t2, $a3
	stptr.w	$a3, $a1, 13276
	add.d	$t0, $a6, $a4
	ld.d	$t8, $sp, 120                   # 8-byte Folded Reload
	ldx.w	$a3, $a1, $t8
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ldx.w	$t2, $a1, $s6
	sub.d	$a4, $a4, $a6
	ldptr.w	$a6, $a1, 13332
	ldptr.w	$t4, $a1, 13340
	add.d	$t5, $t2, $a3
	sub.d	$t2, $a3, $t2
	srli.d	$a3, $a6, 1
	sub.d	$t6, $a3, $t4
	srli.d	$a3, $t4, 1
	add.d	$a3, $a3, $a6
	add.w	$t4, $a3, $t5
	sub.w	$a3, $t5, $a3
	add.w	$t5, $t6, $t2
	sub.w	$a6, $t2, $t6
	add.d	$t2, $t3, $a2
	sub.d	$t3, $a2, $t3
	srli.d	$a2, $t1, 1
	sub.d	$t6, $a2, $t4
	srli.d	$a2, $t4, 1
	add.d	$t1, $a2, $t1
	addi.d	$t2, $t2, 32
	ldptr.w	$a2, $a1, 15520
	add.w	$t4, $t2, $t1
	srai.d	$t7, $t4, 6
	srai.d	$t4, $t4, 63
	andn	$t4, $t7, $t4
	slt	$t7, $t4, $a2
	maskeqz	$t4, $t4, $t7
	masknez	$t7, $a2, $t7
	or	$t4, $t4, $t7
	stptr.w	$t4, $a1, 13136
	sub.w	$t1, $t2, $t1
	srai.d	$t2, $t1, 6
	srai.d	$t1, $t1, 63
	andn	$t1, $t2, $t1
	slt	$t2, $t1, $a2
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a2, $t2
	or	$t1, $t1, $t2
	stptr.w	$t1, $a1, 13328
	addi.d	$t1, $t3, 32
	add.w	$t2, $t1, $t6
	srai.d	$t3, $t2, 6
	srai.d	$t2, $t2, 63
	andn	$t2, $t3, $t2
	slt	$t3, $t2, $a2
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a2, $t3
	or	$t2, $t2, $t3
	stptr.w	$t2, $a1, 13200
	sub.w	$t1, $t1, $t6
	srai.d	$t2, $t1, 6
	srai.d	$t1, $t1, 63
	andn	$t1, $t2, $t1
	slt	$t2, $t1, $a2
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a2, $t2
	or	$t1, $t1, $t2
	stptr.w	$t1, $a1, 13264
	add.d	$t1, $t0, $a5
	sub.d	$a5, $a5, $t0
	srli.d	$t0, $a7, 1
	sub.d	$t0, $t0, $t5
	srli.d	$t2, $t5, 1
	add.d	$a7, $t2, $a7
	addi.d	$t1, $t1, 32
	add.w	$t2, $t1, $a7
	srai.d	$t3, $t2, 6
	srai.d	$t2, $t2, 63
	andn	$t2, $t3, $t2
	slt	$t3, $t2, $a2
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a2, $t3
	or	$t2, $t2, $t3
	stptr.w	$t2, $a1, 13140
	sub.w	$a7, $t1, $a7
	srai.d	$t1, $a7, 6
	srai.d	$a7, $a7, 63
	andn	$a7, $t1, $a7
	slt	$t1, $a7, $a2
	maskeqz	$a7, $a7, $t1
	masknez	$t1, $a2, $t1
	or	$a7, $a7, $t1
	stptr.w	$a7, $a1, 13332
	addi.d	$a5, $a5, 32
	add.w	$a7, $a5, $t0
	srai.d	$t1, $a7, 6
	srai.d	$a7, $a7, 63
	andn	$a7, $t1, $a7
	slt	$t1, $a7, $a2
	maskeqz	$a7, $a7, $t1
	masknez	$t1, $a2, $t1
	or	$a7, $a7, $t1
	stptr.w	$a7, $a1, 13204
	sub.w	$a5, $a5, $t0
	srai.d	$a7, $a5, 6
	srai.d	$a5, $a5, 63
	andn	$a5, $a7, $a5
	slt	$a7, $a5, $a2
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $a2, $a7
	ldx.w	$t0, $a1, $s3
	or	$a5, $a5, $a7
	ldptr.w	$a7, $a1, 13208
	stptr.w	$a5, $a1, 13268
	add.d	$a5, $a4, $t0
	sub.d	$a4, $t0, $a4
	srli.d	$t0, $a7, 1
	sub.d	$t0, $t0, $a6
	srli.d	$a6, $a6, 1
	add.d	$a6, $a6, $a7
	addi.d	$a5, $a5, 32
	add.w	$a7, $a5, $a6
	srai.d	$t1, $a7, 6
	srai.d	$a7, $a7, 63
	andn	$a7, $t1, $a7
	slt	$t1, $a7, $a2
	maskeqz	$a7, $a7, $t1
	masknez	$t1, $a2, $t1
	or	$a7, $a7, $t1
	stptr.w	$a7, $a1, 13144
	sub.w	$a5, $a5, $a6
	srai.d	$a6, $a5, 6
	srai.d	$a5, $a5, 63
	andn	$a5, $a6, $a5
	slt	$a6, $a5, $a2
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $a2, $a6
	or	$a5, $a5, $a6
	stptr.w	$a5, $a1, 13336
	addi.d	$a4, $a4, 32
	add.w	$a5, $a4, $t0
	srai.d	$a6, $a5, 6
	srai.d	$a5, $a5, 63
	andn	$a5, $a6, $a5
	slt	$a6, $a5, $a2
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $a2, $a6
	or	$a5, $a5, $a6
	stptr.w	$a5, $a1, 13208
	sub.w	$a4, $a4, $t0
	srai.d	$a5, $a4, 6
	srai.d	$a4, $a4, 63
	andn	$a4, $a5, $a4
	slt	$a5, $a4, $a2
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $a2, $a5
	ld.d	$t2, $sp, 96                    # 8-byte Folded Reload
	ldx.w	$a6, $a1, $t2
	ld.d	$t5, $sp, 48                    # 8-byte Folded Reload
	ldx.w	$a7, $a1, $t5
	or	$a4, $a4, $a5
	ldptr.w	$a5, $a1, 13212
	stptr.w	$a4, $a1, 13272
	add.d	$a4, $a7, $a6
	sub.d	$a6, $a6, $a7
	srli.d	$a7, $a5, 1
	sub.d	$a7, $a7, $a3
	srli.d	$a3, $a3, 1
	add.d	$a3, $a3, $a5
	addi.d	$a4, $a4, 32
	add.w	$a5, $a4, $a3
	srai.d	$t0, $a5, 6
	srai.d	$a5, $a5, 63
	andn	$a5, $t0, $a5
	slt	$t0, $a5, $a2
	maskeqz	$a5, $a5, $t0
	masknez	$t0, $a2, $t0
	or	$a5, $a5, $t0
	stptr.w	$a5, $a1, 13148
	sub.w	$a3, $a4, $a3
	srai.d	$a4, $a3, 6
	srai.d	$a3, $a3, 63
	andn	$a3, $a4, $a3
	slt	$a4, $a3, $a2
	maskeqz	$a3, $a3, $a4
	masknez	$a2, $a2, $a4
	or	$a2, $a3, $a2
	stptr.w	$a2, $a1, 13340
	ldptr.w	$a2, $a1, 15520
	addi.d	$a3, $a6, 32
	add.w	$a4, $a3, $a7
	srai.d	$a5, $a4, 6
	srai.d	$a4, $a4, 63
	andn	$a4, $a5, $a4
	slt	$a5, $a4, $a2
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $a2, $a5
	or	$a4, $a4, $a5
	stptr.w	$a4, $a1, 13212
	sub.w	$a3, $a3, $a7
	srai.d	$a4, $a3, 6
	srai.d	$a3, $a3, 63
	andn	$a3, $a4, $a3
	slt	$a4, $a3, $a2
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a2, $a4
	pcalau12i	$a2, %got_pc_hi20(enc_picture)
	ld.d	$a5, $a2, %got_pc_lo12(enc_picture)
	ld.d	$a2, $s1, 0
	or	$a3, $a3, $a4
	stptr.w	$a3, $a1, 13276
	ld.d	$a1, $a5, 0
	ld.w	$a3, $a2, 180
	ldptr.d	$a1, $a1, 6440
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	add.w	$a3, $a4, $a3
	ld.w	$a4, $a2, 176
	slli.d	$a5, $a3, 3
	ldx.d	$a5, $a1, $a5
	ldx.h	$a6, $a2, $s2
	ld.d	$a7, $sp, 184                   # 8-byte Folded Reload
	add.w	$a4, $a7, $a4
	slli.d	$a7, $a4, 1
	ld.d	$t0, $sp, 72                    # 8-byte Folded Reload
	ldx.h	$t0, $a2, $t0
	stx.h	$a6, $a5, $a7
	addi.w	$a6, $a4, 1
	slli.d	$a6, $a6, 1
	stx.h	$t0, $a5, $a6
	ldx.h	$t0, $a2, $s3
	addi.w	$t1, $a4, 2
	slli.d	$t1, $t1, 1
	ldx.h	$t2, $a2, $t2
	stx.h	$t0, $a5, $t1
	addi.w	$a4, $a4, 3
	slli.d	$a4, $a4, 1
	stx.h	$t2, $a5, $a4
	addi.w	$a5, $a3, 1
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a1, $a5
	ldx.h	$t0, $a2, $s0
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	ldx.h	$t2, $a2, $t2
	ldx.h	$t3, $a2, $s4
	ld.d	$t4, $sp, 88                    # 8-byte Folded Reload
	ldx.h	$t4, $a2, $t4
	stx.h	$t0, $a5, $a7
	stx.h	$t2, $a5, $a6
	stx.h	$t3, $a5, $t1
	stx.h	$t4, $a5, $a4
	addi.w	$a5, $a3, 2
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a1, $a5
	ldx.h	$t0, $a2, $fp
	ld.d	$t2, $sp, 40                    # 8-byte Folded Reload
	ldx.h	$t2, $a2, $t2
	ldx.h	$t3, $a2, $s5
	ldx.h	$t4, $a2, $t5
	stx.h	$t0, $a5, $a7
	stx.h	$t2, $a5, $a6
	stx.h	$t3, $a5, $t1
	stx.h	$t4, $a5, $a4
	addi.w	$a3, $a3, 3
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	ldx.h	$a3, $a2, $t8
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	ldx.h	$a5, $a2, $a5
	ldx.h	$t0, $a2, $s6
	ld.d	$t2, $sp, 24                    # 8-byte Folded Reload
	ldx.h	$a2, $a2, $t2
	stx.h	$a3, $a1, $a7
	stx.h	$a5, $a1, $a6
	stx.h	$t0, $a1, $t1
	stx.h	$a2, $a1, $a4
	fld.d	$fs2, $sp, 432                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 440                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 448                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 520                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 528                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 536                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 544
	ret
.Lfunc_end5:
	.size	dct_luma_sp, .Lfunc_end5-dct_luma_sp
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function dct_chroma_sp
.LCPI6_0:
	.dword	0x3feb333333333333              # double 0.84999999999999998
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI6_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4                               # 0x4
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI6_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI6_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI6_4:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	4294967295                      # 0xffffffff
.LCPI6_5:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	5                               # 0x5
.LCPI6_6:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4                               # 0x4
	.word	5                               # 0x5
	.text
	.globl	dct_chroma_sp
	.p2align	5
	.type	dct_chroma_sp,@function
dct_chroma_sp:                          # @dct_chroma_sp
# %bb.0:
	addi.d	$sp, $sp, -1024
	st.d	$ra, $sp, 1016                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1008                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1000                  # 8-byte Folded Spill
	st.d	$s1, $sp, 992                   # 8-byte Folded Spill
	st.d	$s2, $sp, 984                   # 8-byte Folded Spill
	st.d	$s3, $sp, 976                   # 8-byte Folded Spill
	st.d	$s4, $sp, 968                   # 8-byte Folded Spill
	st.d	$s5, $sp, 960                   # 8-byte Folded Spill
	st.d	$s6, $sp, 952                   # 8-byte Folded Spill
	st.d	$s7, $sp, 944                   # 8-byte Folded Spill
	st.d	$s8, $sp, 936                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 928                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 920                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 912                  # 8-byte Folded Spill
	addi.d	$fp, $sp, 1024
	bstrins.d	$sp, $zero, 4, 0
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$s0, $a2, %got_pc_lo12(img)
	ld.d	$a2, $s0, 0
	ld.w	$a5, $a2, 12
	ldptr.d	$a3, $a2, 14168
	ldptr.d	$a2, $a2, 14224
	ori	$a4, $zero, 536
	mul.d	$a4, $a5, $a4
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	alsl.d	$a3, $a0, $a3, 3
	ld.d	$a3, $a3, 8
	add.d	$s1, $a2, $a4
	ld.w	$a0, $s1, 8
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a1, $a3, 0
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a1, $a3, 8
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a0, $a0, -12
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	vldi	$vr1, -1016
	fdiv.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	ld.d	$t5, $s0, 0
	lu12i.w	$a2, 3
	pcalau12i	$a1, %pc_hi20(active_pps)
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ori	$a2, $a2, 3168
	ldx.w	$a2, $t5, $a2
	ld.w	$a3, $s1, 8
	ld.w	$a1, $a1, 208
	fld.d	$fa2, $a0, %pc_lo12(.LCPI6_0)
	vldi	$vr1, -1008
	sub.w	$a2, $zero, $a2
	add.w	$a0, $a1, $a3
	slt	$a3, $a2, $a0
	masknez	$a4, $a2, $a3
	maskeqz	$a0, $a0, $a3
	or	$a4, $a0, $a4
	slti	$a3, $a4, 51
	maskeqz	$a5, $a4, $a3
	st.d	$s1, $sp, 344                   # 8-byte Folded Spill
	ld.w	$t3, $s1, 20
	ori	$a0, $zero, 51
	masknez	$a3, $a0, $a3
	or	$a3, $a5, $a3
	add.w	$a1, $t3, $a1
	slt	$a5, $a2, $a1
	masknez	$a2, $a2, $a5
	maskeqz	$a1, $a1, $a5
	or	$a1, $a1, $a2
	addi.w	$a7, $zero, -1
	pcalau12i	$a2, %pc_hi20(QP_SCALE_CR)
	addi.d	$a2, $a2, %pc_lo12(QP_SCALE_CR)
	bge	$a7, $a4, .LBB6_2
# %bb.1:
	ldx.bu	$a3, $a2, $a3
	ori	$a4, $zero, 171
	mul.d	$a4, $a3, $a4
	srli.d	$a6, $a4, 10
	b	.LBB6_3
.LBB6_2:                                # %.thread
	sub.d	$a4, $zero, $a3
	bstrpick.d	$a4, $a4, 31, 0
	lu12i.w	$a5, -349526
	ori	$a5, $a5, 2731
	lu32i.d	$a5, 0
	mul.d	$a4, $a4, $a5
	srli.d	$a4, $a4, 34
	sub.d	$a6, $zero, $a4
.LBB6_3:
	st.d	$a6, $sp, 480                   # 8-byte Folded Spill
	fmul.d	$fa0, $fa0, $fa2
	lu12i.w	$a4, 174762
	ori	$t6, $a4, 2731
	mul.d	$a4, $a3, $t6
	srli.d	$a5, $a4, 63
	srli.d	$a4, $a4, 32
	add.d	$a4, $a4, $a5
	slli.d	$a5, $a4, 2
	alsl.d	$a4, $a4, $a5, 1
	sub.w	$a3, $a3, $a4
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a4, $a6, 15
	ori	$a3, $zero, 1
	st.d	$a4, $sp, 448                   # 8-byte Folded Spill
	sll.w	$a3, $a3, $a4
	mul.d	$a3, $a3, $t6
	srli.d	$a4, $a3, 63
	srli.d	$a3, $a3, 32
	add.d	$a3, $a3, $a4
	st.d	$a3, $sp, 456                   # 8-byte Folded Spill
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	bge	$a7, $a1, .LBB6_5
# %bb.4:
	slti	$a3, $a1, 51
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	ldx.bu	$t3, $a2, $a0
	ori	$a0, $zero, 171
	mul.d	$a0, $t3, $a0
	srli.d	$t2, $a0, 10
	b	.LBB6_6
.LBB6_5:
	mul.d	$a0, $t3, $t6
	srli.d	$a1, $a0, 63
	srli.d	$a0, $a0, 32
	add.d	$t2, $a0, $a1
.LBB6_6:                                # %.preheader669
	st.d	$s0, $sp, 352                   # 8-byte Folded Spill
	move	$a0, $zero
	fmul.d	$fs0, $fa0, $fa1
	lu12i.w	$t1, 3
	ori	$a1, $t1, 336
	vldx	$vr1, $t5, $a1
	ori	$t4, $t1, 848
	vpickve2gr.h	$a1, $vr1, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 0
	vpickve2gr.h	$a1, $vr1, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 1
	vpickve2gr.h	$a2, $vr1, 2
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr0, $a2, 2
	vpickve2gr.h	$a3, $vr1, 3
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 3
	vpickve2gr.h	$a4, $vr1, 4
	bstrpick.d	$a4, $a4, 15, 0
	xvinsgr2vr.w	$xr0, $a4, 4
	vpickve2gr.h	$a5, $vr1, 5
	bstrpick.d	$a5, $a5, 15, 0
	xvinsgr2vr.w	$xr0, $a5, 5
	vpickve2gr.h	$a6, $vr1, 6
	bstrpick.d	$a6, $a6, 15, 0
	xvinsgr2vr.w	$xr0, $a6, 6
	vpickve2gr.h	$a7, $vr1, 7
	bstrpick.d	$a7, $a7, 15, 0
	xvinsgr2vr.w	$xr0, $a7, 7
	st.w	$a1, $sp, 672
	st.w	$a2, $sp, 704
	st.w	$a3, $sp, 736
	st.w	$a4, $sp, 768
	st.w	$a5, $sp, 800
	xvldx	$xr1, $t5, $t4
	st.w	$a6, $sp, 832
	ori	$a1, $t1, 368
	vldx	$vr2, $t5, $a1
	xvadd.w	$xr1, $xr1, $xr0
	xvstx	$xr1, $t5, $t4
	st.w	$a7, $sp, 864
	vpickve2gr.h	$a1, $vr2, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 0
	vpickve2gr.h	$a1, $vr2, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr1, $a1, 1
	vpickve2gr.h	$a2, $vr2, 2
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr1, $a2, 2
	vpickve2gr.h	$a3, $vr2, 3
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr1, $a3, 3
	vpickve2gr.h	$a4, $vr2, 4
	bstrpick.d	$a4, $a4, 15, 0
	xvinsgr2vr.w	$xr1, $a4, 4
	vpickve2gr.h	$a5, $vr2, 5
	bstrpick.d	$a5, $a5, 15, 0
	xvinsgr2vr.w	$xr1, $a5, 5
	vpickve2gr.h	$a6, $vr2, 6
	bstrpick.d	$a6, $a6, 15, 0
	xvinsgr2vr.w	$xr1, $a6, 6
	vpickve2gr.h	$a7, $vr2, 7
	bstrpick.d	$a7, $a7, 15, 0
	xvinsgr2vr.w	$xr1, $a7, 7
	st.w	$a1, $sp, 676
	st.w	$a2, $sp, 708
	st.w	$a3, $sp, 740
	st.w	$a4, $sp, 772
	st.w	$a5, $sp, 804
	ori	$a2, $t1, 912
	xvldx	$xr2, $t5, $a2
	st.w	$a6, $sp, 836
	ori	$a1, $t1, 400
	vldx	$vr3, $t5, $a1
	xvadd.w	$xr2, $xr2, $xr1
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	xvstx	$xr2, $t5, $a2
	st.w	$a7, $sp, 868
	vpickve2gr.h	$a1, $vr3, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr2, $a1, 0
	vpickve2gr.h	$a1, $vr3, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr2, $a1, 1
	vpickve2gr.h	$a2, $vr3, 2
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr2, $a2, 2
	vpickve2gr.h	$a3, $vr3, 3
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr2, $a3, 3
	vpickve2gr.h	$a4, $vr3, 4
	bstrpick.d	$a4, $a4, 15, 0
	xvinsgr2vr.w	$xr2, $a4, 4
	vpickve2gr.h	$a5, $vr3, 5
	bstrpick.d	$a5, $a5, 15, 0
	xvinsgr2vr.w	$xr2, $a5, 5
	vpickve2gr.h	$a6, $vr3, 6
	bstrpick.d	$a6, $a6, 15, 0
	xvinsgr2vr.w	$xr2, $a6, 6
	vpickve2gr.h	$a7, $vr3, 7
	bstrpick.d	$a7, $a7, 15, 0
	xvinsgr2vr.w	$xr2, $a7, 7
	st.w	$a1, $sp, 680
	st.w	$a2, $sp, 712
	st.w	$a3, $sp, 744
	st.w	$a4, $sp, 776
	st.w	$a5, $sp, 808
	ori	$a2, $t1, 976
	xvldx	$xr3, $t5, $a2
	st.w	$a6, $sp, 840
	ori	$a1, $t1, 432
	vldx	$vr4, $t5, $a1
	xvadd.w	$xr3, $xr3, $xr2
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	xvstx	$xr3, $t5, $a2
	st.w	$a7, $sp, 872
	vpickve2gr.h	$a1, $vr4, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr3, $a1, 0
	vpickve2gr.h	$a1, $vr4, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr3, $a1, 1
	vpickve2gr.h	$a2, $vr4, 2
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr3, $a2, 2
	vpickve2gr.h	$a3, $vr4, 3
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr3, $a3, 3
	vpickve2gr.h	$a4, $vr4, 4
	bstrpick.d	$a4, $a4, 15, 0
	xvinsgr2vr.w	$xr3, $a4, 4
	vpickve2gr.h	$a5, $vr4, 5
	bstrpick.d	$a5, $a5, 15, 0
	xvinsgr2vr.w	$xr3, $a5, 5
	vpickve2gr.h	$a6, $vr4, 6
	bstrpick.d	$a6, $a6, 15, 0
	xvinsgr2vr.w	$xr3, $a6, 6
	vpickve2gr.h	$a7, $vr4, 7
	bstrpick.d	$a7, $a7, 15, 0
	xvinsgr2vr.w	$xr3, $a7, 7
	st.w	$a1, $sp, 684
	st.w	$a2, $sp, 716
	st.w	$a3, $sp, 748
	st.w	$a4, $sp, 780
	st.w	$a5, $sp, 812
	ori	$a2, $t1, 1040
	xvldx	$xr4, $t5, $a2
	st.w	$a6, $sp, 844
	ori	$a1, $t1, 464
	vldx	$vr5, $t5, $a1
	xvadd.w	$xr4, $xr4, $xr3
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	xvstx	$xr4, $t5, $a2
	st.w	$a7, $sp, 876
	vpickve2gr.h	$a1, $vr5, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr4, $a1, 0
	vpickve2gr.h	$a1, $vr5, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr4, $a1, 1
	vpickve2gr.h	$a2, $vr5, 2
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr4, $a2, 2
	vpickve2gr.h	$a3, $vr5, 3
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr4, $a3, 3
	vpickve2gr.h	$a4, $vr5, 4
	bstrpick.d	$a4, $a4, 15, 0
	xvinsgr2vr.w	$xr4, $a4, 4
	vpickve2gr.h	$a5, $vr5, 5
	bstrpick.d	$a5, $a5, 15, 0
	xvinsgr2vr.w	$xr4, $a5, 5
	vpickve2gr.h	$a6, $vr5, 6
	bstrpick.d	$a6, $a6, 15, 0
	xvinsgr2vr.w	$xr4, $a6, 6
	vpickve2gr.h	$a7, $vr5, 7
	bstrpick.d	$a7, $a7, 15, 0
	xvinsgr2vr.w	$xr4, $a7, 7
	st.w	$a1, $sp, 688
	st.w	$a2, $sp, 720
	st.w	$a3, $sp, 752
	st.w	$a4, $sp, 784
	st.w	$a5, $sp, 816
	ori	$a2, $t1, 1104
	xvldx	$xr5, $t5, $a2
	st.w	$a6, $sp, 848
	ori	$a1, $t1, 496
	vldx	$vr6, $t5, $a1
	xvadd.w	$xr5, $xr5, $xr4
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	xvstx	$xr5, $t5, $a2
	st.w	$a7, $sp, 880
	vpickve2gr.h	$a1, $vr6, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr5, $a1, 0
	vpickve2gr.h	$a2, $vr6, 1
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr5, $a2, 1
	vpickve2gr.h	$a3, $vr6, 2
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr5, $a3, 2
	vpickve2gr.h	$a4, $vr6, 3
	bstrpick.d	$a4, $a4, 15, 0
	xvinsgr2vr.w	$xr5, $a4, 3
	vpickve2gr.h	$a5, $vr6, 4
	bstrpick.d	$a5, $a5, 15, 0
	xvinsgr2vr.w	$xr5, $a5, 4
	vpickve2gr.h	$a6, $vr6, 5
	bstrpick.d	$a6, $a6, 15, 0
	xvinsgr2vr.w	$xr5, $a6, 5
	vpickve2gr.h	$a7, $vr6, 6
	bstrpick.d	$a7, $a7, 15, 0
	xvinsgr2vr.w	$xr5, $a7, 6
	vpickve2gr.h	$t0, $vr6, 7
	bstrpick.d	$t0, $t0, 15, 0
	xvinsgr2vr.w	$xr5, $t0, 7
	st.w	$a2, $sp, 692
	st.w	$a3, $sp, 724
	ori	$a3, $t1, 1168
	xvldx	$xr6, $t5, $a3
	st.w	$a4, $sp, 756
	st.w	$a5, $sp, 788
	st.w	$a6, $sp, 820
	xvadd.w	$xr5, $xr6, $xr5
	ori	$a2, $t1, 528
	vldx	$vr6, $t5, $a2
	st.w	$a7, $sp, 852
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	xvstx	$xr5, $t5, $a3
	st.w	$t0, $sp, 884
	vpickve2gr.h	$a2, $vr6, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr5, $a2, 0
	vpickve2gr.h	$a3, $vr6, 1
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr5, $a3, 1
	vpickve2gr.h	$a4, $vr6, 2
	bstrpick.d	$a4, $a4, 15, 0
	xvinsgr2vr.w	$xr5, $a4, 2
	vpickve2gr.h	$a5, $vr6, 3
	bstrpick.d	$a5, $a5, 15, 0
	xvinsgr2vr.w	$xr5, $a5, 3
	vpickve2gr.h	$a6, $vr6, 4
	bstrpick.d	$a6, $a6, 15, 0
	xvinsgr2vr.w	$xr5, $a6, 4
	vpickve2gr.h	$a7, $vr6, 5
	bstrpick.d	$a7, $a7, 15, 0
	xvinsgr2vr.w	$xr5, $a7, 5
	st.w	$a3, $sp, 696
	vpickve2gr.h	$a3, $vr6, 6
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr5, $a3, 6
	st.w	$a4, $sp, 728
	vpickve2gr.h	$a4, $vr6, 7
	bstrpick.d	$a4, $a4, 15, 0
	st.w	$a5, $sp, 760
	ori	$t0, $t1, 1232
	xvldx	$xr6, $t5, $t0
	xvinsgr2vr.w	$xr5, $a4, 7
	st.w	$a6, $sp, 792
	st.w	$a7, $sp, 824
	xvadd.w	$xr5, $xr6, $xr5
	ori	$a5, $t1, 560
	vldx	$vr6, $t5, $a5
	st.w	$a3, $sp, 856
	st.d	$t0, $sp, 64                    # 8-byte Folded Spill
	xvstx	$xr5, $t5, $t0
	st.w	$a4, $sp, 888
	vpickve2gr.h	$a3, $vr6, 0
	bstrpick.d	$a5, $a3, 15, 0
	xvinsgr2vr.w	$xr5, $a5, 0
	vpickve2gr.h	$a3, $vr6, 1
	bstrpick.d	$a4, $a3, 15, 0
	xvinsgr2vr.w	$xr5, $a4, 1
	vpickve2gr.h	$a3, $vr6, 2
	bstrpick.d	$a3, $a3, 15, 0
	xvpermi.d	$xr0, $xr0, 68
	xvpermi.d	$xr1, $xr1, 68
	xvpackev.w	$xr0, $xr1, $xr0
	pcalau12i	$a6, %pc_hi20(.LCPI6_1)
	xvld	$xr1, $a6, %pc_lo12(.LCPI6_1)
	xvinsgr2vr.w	$xr5, $a3, 2
	xvpermi.d	$xr0, $xr0, 68
	xvpermi.d	$xr2, $xr2, 68
	xvshuf.w	$xr1, $xr2, $xr0
	pcalau12i	$a6, %pc_hi20(.LCPI6_2)
	xvld	$xr0, $a6, %pc_lo12(.LCPI6_2)
	pcalau12i	$a6, %pc_hi20(.LCPI6_3)
	xvld	$xr2, $a6, %pc_lo12(.LCPI6_3)
	vpickve2gr.h	$a6, $vr6, 3
	xvpermi.d	$xr1, $xr1, 68
	xvpermi.d	$xr3, $xr3, 68
	xvshuf.w	$xr0, $xr3, $xr1
	xvpermi.d	$xr0, $xr0, 68
	xvpermi.d	$xr1, $xr4, 68
	xvshuf.w	$xr2, $xr1, $xr0
	st.w	$a1, $sp, 596
	xvpickve2gr.w	$a1, $xr2, 4
	st.w	$a1, $sp, 592
	xvpickve2gr.w	$a1, $xr2, 3
	st.w	$a1, $sp, 588
	xvpickve2gr.w	$a1, $xr2, 2
	st.w	$a1, $sp, 584
	xvpickve2gr.w	$a1, $xr2, 1
	st.w	$a1, $sp, 580
	xvpickve2gr.w	$a1, $xr2, 0
	st.w	$a1, $sp, 576
	xvld	$xr0, $sp, 576
	bstrpick.d	$a1, $a6, 15, 0
	xvinsgr2vr.w	$xr5, $a1, 3
	st.w	$a2, $sp, 568
	xvpickve2gr.w	$a2, $xr0, 5
	st.w	$a2, $sp, 564
	xvpickve2gr.w	$a2, $xr0, 4
	st.w	$a2, $sp, 560
	xvpickve2gr.w	$a2, $xr0, 3
	st.w	$a2, $sp, 556
	xvpickve2gr.w	$a2, $xr0, 2
	st.w	$a2, $sp, 552
	xvpickve2gr.w	$a2, $xr0, 1
	st.w	$a2, $sp, 548
	xvpickve2gr.w	$a2, $xr0, 0
	st.w	$a2, $sp, 544
	xvld	$xr0, $sp, 544
	vpickve2gr.h	$a2, $vr6, 4
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr5, $a2, 4
	xvpickve2gr.w	$a6, $xr0, 0
	xvinsgr2vr.w	$xr1, $a6, 0
	xvpickve2gr.w	$a6, $xr0, 1
	xvinsgr2vr.w	$xr1, $a6, 1
	xvpickve2gr.w	$a6, $xr0, 2
	xvinsgr2vr.w	$xr1, $a6, 2
	xvpickve2gr.w	$a6, $xr0, 3
	xvinsgr2vr.w	$xr1, $a6, 3
	xvpickve2gr.w	$a6, $xr0, 4
	xvinsgr2vr.w	$xr1, $a6, 4
	xvpickve2gr.w	$a6, $xr0, 5
	xvinsgr2vr.w	$xr1, $a6, 5
	xvpickve2gr.w	$a6, $xr0, 6
	xvinsgr2vr.w	$xr1, $a6, 6
	vpickve2gr.h	$a6, $vr6, 5
	bstrpick.d	$a6, $a6, 15, 0
	xvinsgr2vr.w	$xr5, $a6, 5
	xvinsgr2vr.w	$xr1, $a5, 7
	vpickve2gr.h	$a5, $vr6, 6
	bstrpick.d	$a5, $a5, 15, 0
	xvinsgr2vr.w	$xr5, $a5, 6
	st.w	$a4, $sp, 700
	vpickve2gr.h	$a4, $vr6, 7
	bstrpick.d	$a4, $a4, 15, 0
	xvinsgr2vr.w	$xr5, $a4, 7
	xvst	$xr1, $sp, 640
	st.w	$a3, $sp, 732
	st.w	$a1, $sp, 764
	ori	$a1, $t1, 1296
	xvldx	$xr0, $t5, $a1
	st.w	$a2, $sp, 796
	st.w	$a6, $sp, 828
	st.w	$a5, $sp, 860
	xvadd.w	$xr0, $xr0, $xr5
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	xvstx	$xr0, $t5, $a1
	st.w	$a4, $sp, 892
	mul.d	$a1, $t3, $t6
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 32
	add.d	$a1, $a1, $a2
	slli.d	$a2, $a1, 2
	alsl.d	$a1, $a1, $a2, 1
	sub.w	$a1, $t3, $a1
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ori	$a1, $t1, 860
	add.d	$a1, $t5, $a1
	st.d	$a1, $sp, 520                   # 8-byte Folded Spill
	ori	$a2, $t1, 852
	add.d	$a1, $t5, $a2
	st.d	$a1, $sp, 528                   # 8-byte Folded Spill
	ori	$a2, $t1, 856
	add.d	$a1, $t5, $a2
	st.d	$a1, $sp, 512                   # 8-byte Folded Spill
	ori	$a2, $t1, 876
	add.d	$a1, $t5, $a2
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ori	$a2, $t1, 868
	add.d	$a1, $t5, $a2
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	ori	$a2, $t1, 872
	add.d	$a1, $t5, $a2
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	st.d	$t2, $sp, 472                   # 8-byte Folded Spill
	addi.d	$a2, $t2, 15
	ori	$a3, $zero, 1
	st.d	$a2, $sp, 312                   # 8-byte Folded Spill
	sll.w	$a2, $a3, $a2
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	st.d	$t4, $sp, 464                   # 8-byte Folded Spill
	add.d	$a1, $t5, $t4
	st.d	$a1, $sp, 536                   # 8-byte Folded Spill
	ori	$a2, $t1, 864
	st.d	$t5, $sp, 40                    # 8-byte Folded Spill
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	add.d	$a1, $t5, $a2
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB6_7:                                # %.preheader667
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a3, $sp, 504                   # 8-byte Folded Spill
	slli.d	$a4, $a0, 6
	ld.d	$t4, $sp, 536                   # 8-byte Folded Reload
	ldx.w	$a0, $t4, $a4
	ld.d	$t1, $sp, 520                   # 8-byte Folded Reload
	ldx.w	$a2, $t1, $a4
	ld.d	$s7, $sp, 528                   # 8-byte Folded Reload
	ldx.w	$a3, $s7, $a4
	ld.d	$s8, $sp, 512                   # 8-byte Folded Reload
	ldx.w	$a5, $s8, $a4
	add.d	$a6, $a2, $a0
	sub.w	$a0, $a0, $a2
	add.d	$a2, $a5, $a3
	sub.d	$a3, $a3, $a5
	add.d	$t2, $a2, $a6
	st.d	$t2, $sp, 488                   # 8-byte Folded Spill
	sub.d	$a2, $a6, $a2
	stx.w	$a2, $s8, $a4
	alsl.d	$t0, $a0, $a3, 1
	st.d	$t0, $sp, 416                   # 8-byte Folded Spill
	slli.d	$a2, $a3, 1
	sub.d	$a0, $a0, $a2
	addi.d	$t6, $a4, 64
	ldx.w	$a3, $t4, $t6
	ldx.w	$a5, $t1, $t6
	ldx.w	$a6, $s7, $t6
	ldx.w	$a7, $s8, $t6
	stx.w	$a0, $t1, $a4
	add.w	$a0, $a5, $a3
	sub.w	$a3, $a3, $a5
	add.w	$a5, $a7, $a6
	sub.w	$a6, $a6, $a7
	add.d	$a2, $a5, $a0
	st.d	$a2, $sp, 432                   # 8-byte Folded Spill
	sub.d	$t3, $a0, $a5
	st.d	$t3, $sp, 328                   # 8-byte Folded Spill
	alsl.d	$t5, $a3, $a6, 1
	st.d	$t5, $sp, 376                   # 8-byte Folded Spill
	slli.d	$a0, $a6, 1
	addi.d	$t8, $a4, 128
	ldx.w	$a5, $t4, $t8
	move	$s2, $t4
	ldx.w	$a6, $t1, $t8
	move	$t4, $t1
	ldx.w	$a7, $s7, $t8
	ldx.w	$t1, $s8, $t8
	sub.d	$s0, $a3, $a0
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	add.w	$a0, $a6, $a5
	sub.w	$a3, $a5, $a6
	add.w	$a5, $t1, $a7
	sub.w	$a6, $a7, $t1
	add.d	$s4, $a5, $a0
	st.d	$s4, $sp, 440                   # 8-byte Folded Spill
	sub.d	$s1, $a0, $a5
	st.d	$s1, $sp, 360                   # 8-byte Folded Spill
	alsl.d	$s3, $a3, $a6, 1
	st.d	$s3, $sp, 392                   # 8-byte Folded Spill
	slli.d	$a0, $a6, 1
	addi.d	$t7, $a4, 192
	ldx.w	$a5, $s2, $t7
	move	$s6, $s2
	ldx.w	$a6, $t4, $t7
	sub.d	$s2, $a3, $a0
	st.d	$s2, $sp, 304                   # 8-byte Folded Spill
	ldx.w	$a0, $s7, $t7
	ldx.w	$a3, $s8, $t7
	add.d	$a7, $a6, $a5
	sub.d	$a5, $a5, $a6
	addi.w	$a6, $a5, 0
	add.d	$t1, $a3, $a0
	sub.d	$a0, $a0, $a3
	addi.w	$a3, $a0, 0
	add.d	$s5, $t1, $a7
	st.d	$s5, $sp, 496                   # 8-byte Folded Spill
	sub.d	$a7, $a7, $t1
	st.d	$a7, $sp, 368                   # 8-byte Folded Spill
	alsl.d	$a6, $a6, $a0, 1
	st.d	$a6, $sp, 424                   # 8-byte Folded Spill
	slli.d	$a0, $a3, 1
	sub.d	$a1, $a5, $a0
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	add.d	$a3, $s5, $t2
	st.d	$a3, $sp, 400                   # 8-byte Folded Spill
	add.d	$a0, $s4, $a2
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	add.d	$a0, $a0, $a3
	stx.w	$a0, $s6, $a4
	add.d	$a2, $a6, $t0
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	ldx.w	$a3, $s8, $a4
	st.d	$a3, $sp, 384                   # 8-byte Folded Spill
	add.d	$a0, $s3, $t5
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	add.d	$a0, $a0, $a2
	stx.w	$a0, $s7, $a4
	add.d	$a5, $a7, $a3
	st.d	$a5, $sp, 272                   # 8-byte Folded Spill
	ldx.w	$a3, $t4, $a4
	st.d	$a3, $sp, 336                   # 8-byte Folded Spill
	add.d	$a0, $s1, $t3
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	add.d	$a0, $a0, $a5
	stx.w	$a0, $s8, $a4
	add.d	$a0, $a1, $a3
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	add.d	$a1, $s2, $s0
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	add.d	$a0, $a1, $a0
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	ldx.w	$a3, $s6, $a4
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ldx.w	$a5, $s7, $a4
	ld.d	$s5, $sp, 152                   # 8-byte Folded Reload
	ldx.w	$a6, $s5, $a4
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ldx.w	$a7, $s4, $a4
	stx.w	$a0, $t4, $a4
	add.d	$a0, $a5, $a3
	sub.w	$a3, $a3, $a5
	add.d	$a5, $a7, $a6
	sub.d	$a6, $a6, $a7
	add.d	$t0, $a5, $a0
	st.d	$t0, $sp, 232                   # 8-byte Folded Spill
	sub.d	$a0, $a0, $a5
	stx.w	$a0, $s4, $a4
	alsl.d	$a2, $a3, $a6, 1
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	slli.d	$a0, $a6, 1
	sub.d	$a0, $a3, $a0
	ldx.w	$a3, $s6, $t6
	ldx.w	$a5, $s7, $t6
	ldx.w	$a6, $s5, $t6
	ldx.w	$a7, $s4, $t6
	stx.w	$a0, $s7, $a4
	add.w	$a0, $a5, $a3
	sub.w	$a5, $a3, $a5
	add.w	$t1, $a7, $a6
	sub.w	$t2, $a6, $a7
	add.d	$a7, $t1, $a0
	st.d	$a7, $sp, 216                   # 8-byte Folded Spill
	sub.d	$s8, $a0, $t1
	alsl.d	$a3, $a5, $t2, 1
	slli.d	$a0, $t2, 1
	ldx.w	$t1, $s6, $t8
	ldx.w	$t2, $s7, $t8
	ldx.w	$t3, $s5, $t8
	ldx.w	$t4, $s4, $t8
	sub.d	$a6, $a5, $a0
	add.w	$a0, $t2, $t1
	sub.w	$t1, $t1, $t2
	add.w	$t2, $t4, $t3
	sub.w	$t4, $t3, $t4
	add.d	$s2, $t2, $a0
	st.d	$s2, $sp, 224                   # 8-byte Folded Spill
	sub.d	$a5, $a0, $t2
	st.d	$a5, $sp, 184                   # 8-byte Folded Spill
	alsl.d	$a0, $t1, $t4, 1
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	slli.d	$t2, $t4, 1
	ldx.w	$t4, $s6, $t7
	ldx.w	$t5, $s7, $t7
	ldx.w	$s0, $s5, $t7
	ldx.w	$s1, $s4, $t7
	sub.d	$s3, $t1, $t2
	st.d	$s3, $sp, 168                   # 8-byte Folded Spill
	add.d	$t1, $t5, $t4
	sub.d	$t2, $t4, $t5
	add.d	$t4, $s1, $s0
	sub.d	$s1, $s0, $s1
	add.d	$t5, $t4, $t1
	sub.d	$ra, $t1, $t4
	st.d	$ra, $sp, 192                   # 8-byte Folded Spill
	addi.w	$t1, $t2, 0
	alsl.d	$s0, $t1, $s1, 1
	addi.w	$t1, $s1, 0
	slli.d	$t1, $t1, 1
	sub.d	$a1, $t2, $t1
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	add.d	$t2, $t5, $t0
	add.d	$t1, $s2, $a7
	add.d	$t4, $t1, $t2
	stx.w	$t4, $s6, $a4
	add.d	$t0, $s0, $a2
	ldx.w	$t4, $s4, $a4
	add.d	$a0, $a0, $a3
	move	$t3, $a3
	add.d	$a7, $a0, $t0
	stx.w	$a7, $s5, $a4
	add.d	$a7, $ra, $t4
	ldx.w	$s1, $s7, $a4
	add.d	$s2, $a5, $s8
	move	$a3, $s8
	add.d	$a5, $s2, $a7
	stx.w	$a5, $s4, $a4
	add.d	$a5, $a1, $s1
	add.d	$ra, $s3, $a6
	move	$s3, $a6
	add.d	$a6, $ra, $a5
	stx.w	$a6, $s7, $a4
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	sub.d	$a4, $a4, $a1
	ld.d	$a6, $sp, 536                   # 8-byte Folded Reload
	stx.w	$a4, $a6, $t8
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	sub.d	$a4, $a2, $a1
	ld.d	$a1, $sp, 528                   # 8-byte Folded Reload
	stx.w	$a4, $a1, $t8
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	sub.d	$a4, $a4, $a2
	ld.d	$s8, $sp, 512                   # 8-byte Folded Reload
	stx.w	$a4, $s8, $t8
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	sub.d	$a4, $a2, $a4
	ld.d	$a2, $sp, 520                   # 8-byte Folded Reload
	stx.w	$a4, $a2, $t8
	sub.d	$a4, $t2, $t1
	stx.w	$a4, $s6, $t8
	sub.d	$a0, $t0, $a0
	stx.w	$a0, $s5, $t8
	sub.d	$a0, $a7, $s2
	stx.w	$a0, $s4, $t8
	sub.d	$a0, $a5, $ra
	stx.w	$a0, $s7, $t8
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 488                   # 8-byte Folded Reload
	sub.d	$a0, $a4, $a0
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 432                   # 8-byte Folded Reload
	sub.d	$a4, $a5, $a4
	alsl.d	$a5, $a0, $a4, 1
	stx.w	$a5, $a6, $t6
	ld.d	$a5, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 416                   # 8-byte Folded Reload
	sub.d	$a5, $a6, $a5
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 376                   # 8-byte Folded Reload
	sub.d	$a6, $a7, $a6
	alsl.d	$a7, $a5, $a6, 1
	stx.w	$a7, $a1, $t6
	move	$ra, $a1
	ld.d	$a7, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 368                   # 8-byte Folded Reload
	sub.d	$a7, $a7, $t0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 328                   # 8-byte Folded Reload
	sub.d	$t0, $t0, $a1
	alsl.d	$t1, $a7, $t0, 1
	stx.w	$t1, $s8, $t6
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 320                   # 8-byte Folded Reload
	sub.d	$t1, $a1, $t1
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 296                   # 8-byte Folded Reload
	sub.d	$t2, $t2, $a1
	alsl.d	$t8, $t1, $t2, 1
	stx.w	$t8, $a2, $t6
	move	$a1, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	sub.d	$t5, $a2, $t5
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 216                   # 8-byte Folded Reload
	sub.d	$t8, $t8, $a2
	alsl.d	$s2, $t5, $t8, 1
	stx.w	$s2, $s6, $t6
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	sub.d	$s0, $a2, $s0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	sub.d	$t3, $t3, $a2
	alsl.d	$s2, $s0, $t3, 1
	stx.w	$s2, $s5, $t6
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	sub.d	$t4, $t4, $a2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	sub.d	$a3, $a3, $a2
	alsl.d	$s2, $t4, $a3, 1
	stx.w	$s2, $s4, $t6
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	sub.d	$s1, $s1, $a2
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	sub.d	$s2, $s3, $a2
	alsl.d	$s3, $s1, $s2, 1
	stx.w	$s3, $s7, $t6
	slli.d	$a2, $a4, 1
	sub.d	$a0, $a0, $a2
	ld.d	$a2, $sp, 536                   # 8-byte Folded Reload
	stx.w	$a0, $a2, $t7
	slli.d	$a0, $a6, 1
	sub.d	$a0, $a5, $a0
	stx.w	$a0, $ra, $t7
	slli.d	$a0, $t0, 1
	sub.d	$a0, $a7, $a0
	stx.w	$a0, $s8, $t7
	slli.d	$a0, $t2, 1
	sub.d	$a0, $t1, $a0
	stx.w	$a0, $a1, $t7
	slli.d	$a0, $t8, 1
	sub.d	$a0, $t5, $a0
	stx.w	$a0, $s6, $t7
	slli.d	$a0, $t3, 1
	sub.d	$a0, $s0, $a0
	stx.w	$a0, $s5, $t7
	slli.d	$a0, $a3, 1
	sub.d	$a0, $t4, $a0
	stx.w	$a0, $s4, $t7
	slli.d	$a0, $s2, 1
	sub.d	$a0, $s1, $a0
	stx.w	$a0, $s7, $t7
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	andi	$a2, $a0, 1
	ori	$a0, $zero, 4
	move	$a3, $zero
	bnez	$a2, .LBB6_7
# %bb.8:                                # %.preheader663.preheader
	move	$a1, $zero
	ori	$a3, $zero, 1
	addi.d	$s5, $sp, 640
	addi.d	$a0, $sp, 864
	addi.d	$a7, $sp, 768
	addi.d	$ra, $sp, 736
	addi.d	$s8, $sp, 704
	addi.d	$a4, $sp, 672
	addi.d	$a5, $sp, 832
	addi.d	$a6, $sp, 800
	.p2align	4, , 16
.LBB6_9:                                # %.preheader663
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	st.d	$a7, $sp, 520                   # 8-byte Folded Spill
	st.d	$a5, $sp, 528                   # 8-byte Folded Spill
	st.d	$a6, $sp, 536                   # 8-byte Folded Spill
	st.d	$a3, $sp, 504                   # 8-byte Folded Spill
	ld.w	$a2, $s5, 0
	ld.w	$a3, $ra, 0
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$a4, $sp, 360                   # 8-byte Folded Spill
	ld.w	$a4, $a4, 0
	ld.w	$a5, $s8, 0
	slli.d	$t3, $a1, 2
	add.d	$a6, $a3, $a2
	sub.w	$a0, $a2, $a3
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	add.d	$a2, $a5, $a4
	sub.d	$a1, $a4, $a5
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	add.d	$t2, $a2, $a6
	st.d	$t2, $sp, 488                   # 8-byte Folded Spill
	sub.d	$a2, $a6, $a2
	st.w	$a2, $s8, 0
	slli.d	$a2, $a1, 1
	sub.d	$a2, $a0, $a2
	st.w	$a2, $ra, 0
	addi.d	$s2, $t3, 4
	addi.d	$s0, $sp, 640
	ldx.w	$a7, $s2, $s0
	addi.d	$a4, $sp, 736
	ldx.w	$a1, $a4, $s2
	addi.d	$s3, $sp, 672
	ldx.w	$a5, $s3, $s2
	addi.d	$s4, $sp, 704
	ldx.w	$a3, $s4, $s2
	addi.d	$t7, $t3, 8
	ldx.w	$a2, $t7, $s0
	ldx.w	$t5, $a4, $t7
	add.d	$a0, $a1, $a7
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	add.d	$ra, $a3, $a5
	add.d	$a0, $ra, $a0
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	add.d	$a6, $t5, $a2
	ldx.w	$t6, $s3, $t7
	ldx.w	$t8, $s4, $t7
	addi.d	$t4, $t3, 12
	ldx.w	$t3, $t4, $s0
	ldx.w	$s0, $a4, $t4
	ldx.w	$s1, $s3, $t4
	ldx.w	$s3, $s4, $t4
	add.d	$s4, $t8, $t6
	add.d	$t0, $s4, $a6
	st.d	$t0, $sp, 440                   # 8-byte Folded Spill
	add.d	$a4, $s0, $t3
	add.d	$s6, $s3, $s1
	add.d	$t1, $s6, $a4
	st.d	$t1, $sp, 496                   # 8-byte Folded Spill
	add.d	$t1, $t1, $t2
	st.d	$t1, $sp, 416                   # 8-byte Folded Spill
	add.d	$a0, $t0, $a0
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	add.d	$s7, $a0, $t1
	st.w	$s7, $s5, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$s5, $t0, $a0, 1
	st.d	$s5, $sp, 400                   # 8-byte Folded Spill
	sub.d	$a1, $a7, $a1
	sub.d	$a3, $a5, $a3
	sub.d	$a7, $a2, $t5
	sub.d	$t0, $t6, $t8
	sub.w	$a0, $t3, $s0
	sub.d	$t1, $s1, $s3
	addi.w	$t2, $a1, 0
	alsl.d	$a5, $t2, $a3, 1
	st.d	$a5, $sp, 384                   # 8-byte Folded Spill
	addi.w	$t2, $a7, 0
	alsl.d	$t2, $t2, $t0, 1
	st.d	$t2, $sp, 392                   # 8-byte Folded Spill
	alsl.d	$t3, $a0, $t1, 1
	st.d	$t3, $sp, 408                   # 8-byte Folded Spill
	add.d	$t3, $t3, $s5
	st.d	$t3, $sp, 368                   # 8-byte Folded Spill
	add.d	$a5, $t2, $a5
	st.d	$a5, $sp, 376                   # 8-byte Folded Spill
	add.d	$t2, $a5, $t3
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	st.w	$t2, $a2, 0
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	sub.d	$t2, $a2, $ra
	st.d	$t2, $sp, 320                   # 8-byte Folded Spill
	sub.d	$a6, $a6, $s4
	st.d	$a6, $sp, 328                   # 8-byte Folded Spill
	ld.w	$t3, $s8, 0
	st.d	$t3, $sp, 336                   # 8-byte Folded Spill
	addi.w	$a4, $a4, 0
	addi.w	$a5, $s6, 0
	sub.d	$a4, $a4, $a5
	st.d	$a4, $sp, 360                   # 8-byte Folded Spill
	add.d	$a5, $a4, $t3
	st.d	$a5, $sp, 296                   # 8-byte Folded Spill
	add.d	$a4, $a6, $t2
	st.d	$a4, $sp, 304                   # 8-byte Folded Spill
	add.d	$a4, $a4, $a5
	st.w	$a4, $s8, 0
	addi.w	$a3, $a3, 0
	slli.d	$a3, $a3, 1
	sub.d	$a3, $a1, $a3
	st.d	$a3, $sp, 256                   # 8-byte Folded Spill
	addi.w	$a1, $t0, 0
	slli.d	$a1, $a1, 1
	sub.d	$a4, $a7, $a1
	st.d	$a4, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a5, $a6, 0
	st.d	$a5, $sp, 280                   # 8-byte Folded Spill
	addi.w	$a1, $t1, 0
	slli.d	$a1, $a1, 1
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	add.d	$a1, $a0, $a5
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	add.d	$a0, $a4, $a3
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ld.d	$t0, $sp, 512                   # 8-byte Folded Reload
	ld.w	$a3, $t0, 0
	ld.d	$a4, $sp, 536                   # 8-byte Folded Reload
	ld.w	$a4, $a4, 0
	ld.d	$a2, $sp, 528                   # 8-byte Folded Reload
	ld.w	$a5, $a2, 0
	st.w	$a0, $a6, 0
	add.d	$a6, $a3, $a1
	sub.w	$a0, $a1, $a3
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	add.d	$a3, $a5, $a4
	sub.d	$s8, $a4, $a5
	add.d	$s7, $a3, $a6
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	sub.d	$a3, $a6, $a3
	st.w	$a3, $a2, 0
	slli.d	$a3, $s8, 1
	sub.d	$a3, $a0, $a3
	st.w	$a3, $t0, 0
	addi.d	$a4, $sp, 768
	ldx.w	$s3, $a4, $s2
	addi.d	$a1, $sp, 864
	ldx.w	$t1, $a1, $s2
	addi.d	$a0, $sp, 800
	ldx.w	$a7, $a0, $s2
	addi.d	$a5, $sp, 832
	ldx.w	$t0, $a5, $s2
	ldx.w	$t2, $a4, $t7
	ldx.w	$t3, $a1, $t7
	add.d	$s6, $t1, $s3
	add.d	$s5, $t0, $a7
	add.d	$a3, $s5, $s6
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	add.d	$s4, $t3, $t2
	ldx.w	$t5, $a0, $t7
	ldx.w	$t6, $a5, $t7
	ldx.w	$t8, $a4, $t4
	ldx.w	$s0, $a1, $t4
	ldx.w	$s1, $a0, $t4
	ldx.w	$a2, $a5, $t4
	add.d	$a4, $t6, $t5
	add.d	$a1, $a4, $s4
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	add.d	$a5, $s0, $t8
	add.d	$a6, $a2, $s1
	add.d	$a0, $a6, $a5
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	add.d	$a0, $a0, $s7
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	add.d	$a1, $a1, $a3
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	add.d	$ra, $a1, $a0
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	st.w	$ra, $a0, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $s8, 1
	st.d	$a1, $sp, 520                   # 8-byte Folded Spill
	sub.d	$s7, $s3, $t1
	sub.d	$a7, $a7, $t0
	sub.d	$s8, $t2, $t3
	sub.d	$t0, $t5, $t6
	sub.w	$t6, $t8, $s0
	sub.d	$t3, $s1, $a2
	addi.w	$a0, $s7, 0
	alsl.d	$a2, $a0, $a7, 1
	addi.w	$a0, $s8, 0
	alsl.d	$s1, $a0, $t0, 1
	alsl.d	$s0, $t6, $t3, 1
	add.d	$t5, $s0, $a1
	add.d	$t2, $s1, $a2
	add.d	$a0, $t2, $t5
	ld.d	$a1, $sp, 536                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	sub.d	$t8, $s6, $s5
	sub.d	$s6, $s4, $a4
	ld.d	$s3, $sp, 528                   # 8-byte Folded Reload
	ld.w	$t1, $s3, 0
	addi.w	$a0, $a5, 0
	addi.w	$a1, $a6, 0
	sub.d	$a1, $a0, $a1
	add.d	$a3, $a1, $t1
	add.d	$a0, $s6, $t8
	add.d	$a4, $a0, $a3
	st.w	$a4, $s3, 0
	ld.d	$a4, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 488                   # 8-byte Folded Reload
	sub.d	$a4, $a5, $a4
	ld.d	$a5, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	sub.d	$s3, $s3, $a5
	ld.d	$a5, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 416                   # 8-byte Folded Reload
	sub.d	$ra, $s4, $a5
	addi.d	$a5, $sp, 640
	stx.w	$ra, $t7, $a5
	alsl.d	$ra, $a4, $s3, 1
	stx.w	$ra, $s2, $a5
	addi.d	$a5, $sp, 640
	slli.d	$s3, $s3, 1
	sub.d	$a4, $a4, $s3
	stx.w	$a4, $t4, $a5
	ld.d	$a4, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 400                   # 8-byte Folded Reload
	sub.d	$a4, $a5, $a4
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 384                   # 8-byte Folded Reload
	sub.d	$s3, $s3, $a5
	ld.d	$a5, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 368                   # 8-byte Folded Reload
	sub.d	$ra, $s4, $a5
	addi.d	$a5, $sp, 672
	stx.w	$ra, $a5, $t7
	alsl.d	$ra, $a4, $s3, 1
	stx.w	$ra, $a5, $s2
	slli.d	$s3, $s3, 1
	sub.d	$a4, $a4, $s3
	stx.w	$a4, $a5, $t4
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 336                   # 8-byte Folded Reload
	sub.d	$a4, $a5, $a4
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	sub.d	$s3, $s3, $a5
	ld.d	$a5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	sub.d	$ra, $s4, $a5
	addi.d	$a5, $sp, 704
	stx.w	$ra, $a5, $t7
	alsl.d	$ra, $a4, $s3, 1
	stx.w	$ra, $a5, $s2
	slli.d	$s3, $s3, 1
	sub.d	$a4, $a4, $s3
	stx.w	$a4, $a5, $t4
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	sub.d	$a4, $a5, $a4
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	sub.d	$s3, $s3, $a5
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 240                   # 8-byte Folded Reload
	sub.d	$ra, $s4, $a5
	addi.d	$a5, $sp, 736
	stx.w	$ra, $a5, $t7
	alsl.d	$ra, $a4, $s3, 1
	stx.w	$ra, $a5, $s2
	slli.d	$s3, $s3, 1
	sub.d	$a4, $a4, $s3
	stx.w	$a4, $a5, $t4
	addi.w	$a4, $a7, 0
	slli.d	$a4, $a4, 1
	sub.d	$a4, $s7, $a4
	addi.w	$a5, $t0, 0
	slli.d	$a5, $a5, 1
	sub.d	$a5, $s8, $a5
	addi.w	$a7, $t3, 0
	slli.d	$a7, $a7, 1
	sub.d	$a7, $t6, $a7
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	sub.d	$t0, $t0, $a6
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 208                   # 8-byte Folded Reload
	sub.d	$t3, $t3, $a6
	ld.d	$a6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 192                   # 8-byte Folded Reload
	sub.d	$t6, $a6, $t6
	addi.d	$a6, $sp, 768
	stx.w	$t6, $a6, $t7
	alsl.d	$t6, $t0, $t3, 1
	stx.w	$t6, $a6, $s2
	slli.d	$t3, $t3, 1
	sub.d	$t0, $t0, $t3
	stx.w	$t0, $a6, $t4
	ld.d	$a6, $sp, 520                   # 8-byte Folded Reload
	sub.d	$t0, $a6, $s0
	sub.d	$t3, $a2, $s1
	sub.d	$a6, $t5, $t2
	addi.d	$t2, $sp, 800
	stx.w	$a6, $t2, $t7
	alsl.d	$a6, $t0, $t3, 1
	stx.w	$a6, $t2, $s2
	slli.d	$a6, $t3, 1
	sub.d	$a6, $t0, $a6
	stx.w	$a6, $t2, $t4
	sub.d	$a1, $t1, $a1
	sub.d	$a6, $t8, $s6
	sub.d	$a0, $a3, $a0
	addi.d	$t0, $sp, 832
	stx.w	$a0, $t0, $t7
	alsl.d	$a0, $a1, $a6, 1
	stx.w	$a0, $t0, $s2
	ld.d	$t1, $sp, 512                   # 8-byte Folded Reload
	ld.w	$a0, $t1, 0
	slli.d	$a3, $a6, 1
	sub.d	$a1, $a1, $a3
	stx.w	$a1, $t0, $t4
	add.d	$a1, $a7, $a0
	sub.d	$a0, $a0, $a7
	add.d	$a3, $a5, $a4
	sub.d	$a4, $a4, $a5
	add.d	$a5, $a3, $a1
	st.w	$a5, $t1, 0
	sub.d	$a1, $a1, $a3
	addi.d	$a3, $sp, 864
	stx.w	$a1, $a3, $t7
	alsl.d	$a1, $a0, $a4, 1
	stx.w	$a1, $a3, $s2
	slli.d	$a1, $a4, 1
	sub.d	$a0, $a0, $a1
	stx.w	$a0, $a3, $t4
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	andi	$a2, $a0, 1
	ori	$a1, $zero, 4
	addi.d	$s5, $sp, 656
	addi.d	$ra, $sp, 752
	addi.d	$a4, $sp, 688
	addi.d	$s8, $sp, 720
	addi.d	$a7, $sp, 784
	addi.d	$a0, $sp, 880
	addi.d	$a6, $sp, 816
	addi.d	$a5, $sp, 848
	move	$a3, $zero
	bnez	$a2, .LBB6_9
# %bb.10:
	move	$s1, $zero
	move	$t1, $zero
	move	$s5, $zero
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a6, 31, 31
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	ldx.w	$a1, $a5, $a1
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	ldx.w	$a2, $a5, $a2
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ldx.w	$a3, $a5, $a3
	lu12i.w	$a4, 3
	ori	$a4, $a4, 1120
	ldx.w	$a4, $a5, $a4
	add.w	$t0, $a6, $a0
	srai.d	$t5, $t0, 1
	add.d	$a0, $a2, $a1
	add.d	$a5, $a4, $a3
	add.d	$a6, $a5, $a0
	st.w	$a6, $sp, 896
	add.d	$a6, $a1, $a3
	add.d	$a7, $a2, $a4
	sub.d	$a6, $a6, $a7
	st.w	$a6, $sp, 900
	sub.d	$a0, $a0, $a5
	st.w	$a0, $sp, 904
	add.d	$a0, $a2, $a3
	sub.d	$a0, $a1, $a0
	ld.w	$a1, $sp, 640
	ld.w	$a2, $sp, 768
	ld.w	$a3, $sp, 656
	ld.w	$a5, $sp, 784
	add.d	$a0, $a0, $a4
	st.w	$a0, $sp, 908
	add.d	$a0, $a2, $a1
	add.d	$a4, $a5, $a3
	add.d	$a6, $a4, $a0
	st.w	$a6, $sp, 624
	add.d	$a6, $a1, $a3
	add.d	$a7, $a2, $a5
	sub.d	$a6, $a6, $a7
	move	$a7, $zero
	st.w	$a6, $sp, 628
	sub.d	$a0, $a0, $a4
	st.w	$a0, $sp, 632
	add.d	$a0, $a2, $a3
	sub.d	$a0, $a1, $a0
	add.d	$a0, $a0, $a5
	st.w	$a0, $sp, 636
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	slli.d	$a3, $a0, 6
	pcalau12i	$a0, %pc_hi20(quant_coef)
	addi.d	$a1, $a0, %pc_lo12(quant_coef)
	ldx.w	$s2, $a1, $a3
	bstrins.d	$t0, $zero, 0, 0
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 16
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	sll.w	$a0, $a6, $a0
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	slli.d	$a2, $a0, 6
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	ldx.w	$a0, $a1, $a2
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	ld.d	$t3, $sp, 480                   # 8-byte Folded Reload
	addi.d	$a0, $t3, 16
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(dequant_coef)
	addi.d	$a0, $a0, %pc_lo12(dequant_coef)
	st.d	$a2, $sp, 424                   # 8-byte Folded Spill
	add.d	$t6, $a0, $a2
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 2
	st.d	$a1, $sp, 360                   # 8-byte Folded Spill
	bstrpick.d	$a1, $a1, 31, 2
	slli.d	$a1, $a1, 2
	lu12i.w	$a2, 240
	sll.w	$a1, $a2, $a1
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	st.d	$a3, $sp, 440                   # 8-byte Folded Spill
	add.d	$t7, $a0, $a3
	addi.d	$t4, $sp, 624
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 344                   # 8-byte Folded Reload
	st.d	$t5, $sp, 336                   # 8-byte Folded Spill
	st.d	$t6, $sp, 328                   # 8-byte Folded Spill
	st.d	$t7, $sp, 320                   # 8-byte Folded Spill
	st.d	$t0, $sp, 368                   # 8-byte Folded Spill
	st.d	$s2, $sp, 536                   # 8-byte Folded Spill
	b	.LBB6_12
	.p2align	4, , 16
.LBB6_11:                               #   in Loop: Header=BB6_12 Depth=1
	addi.d	$s5, $s5, 2
	addi.d	$s1, $s1, 4
	addi.d	$t1, $t1, 4
	ori	$a0, $zero, 16
	beq	$s1, $a0, .LBB6_25
.LBB6_12:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$s8, $s1, $t4
	addi.w	$a6, $a6, 1
	srai.d	$a0, $s8, 31
	xor	$a1, $s8, $a0
	sub.d	$a0, $a1, $a0
	mul.d	$a0, $a0, $s2
	add.w	$a0, $a0, $t0
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	and	$a0, $a0, $a1
	div.w	$a0, $a0, $s2
	addi.d	$a1, $sp, 896
	ldx.w	$s7, $s1, $a1
	slti	$a1, $s8, 0
	srai.d	$a2, $a0, 31
	xor	$a0, $a0, $a2
	sub.d	$a0, $a0, $a2
	sub.d	$a2, $zero, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	add.w	$s6, $a0, $s7
	srai.d	$a0, $s6, 31
	xor	$a1, $s6, $a0
	sub.d	$a0, $a1, $a0
	ld.d	$a3, $sp, 512                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a3
	ld.d	$a4, $sp, 504                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a4
	sub.w	$s2, $s7, $s8
	srai.d	$a1, $s2, 31
	xor	$a2, $s2, $a1
	sub.d	$a1, $a2, $a1
	mul.d	$a1, $a1, $a3
	add.d	$a1, $a1, $a4
	ld.d	$a2, $sp, 496                   # 8-byte Folded Reload
	sra.w	$s4, $a1, $a2
	sra.w	$s3, $a0, $a2
	beqz	$s4, .LBB6_16
# %bb.13:                               #   in Loop: Header=BB6_12 Depth=1
	beq	$s3, $s4, .LBB6_16
# %bb.14:                               #   in Loop: Header=BB6_12 Depth=1
	beqz	$s3, .LBB6_16
# %bb.15:                               #   in Loop: Header=BB6_12 Depth=1
	slti	$a0, $s6, 0
	srai.d	$a1, $s3, 31
	xor	$a2, $s3, $a1
	sub.w	$a2, $a2, $a1
	st.d	$a2, $sp, 392                   # 8-byte Folded Spill
	sub.d	$a1, $zero, $a2
	ld.w	$a3, $t6, 0
	st.d	$a3, $sp, 384                   # 8-byte Folded Spill
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a2, $a0
	or	$a0, $a1, $a0
	mul.d	$a0, $a0, $a3
	slli.d	$a0, $a0, 4
	sll.w	$a0, $a0, $t3
	srli.d	$a0, $a0, 5
	add.d	$a0, $s8, $a0
	sub.d	$a0, $s7, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fs1, $fa0
	addi.d	$a2, $sp, 620
	addi.d	$a3, $sp, 616
	move	$a0, $s3
	move	$a1, $a6
	st.d	$a5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s5, $sp, 400                   # 8-byte Folded Spill
	move	$s5, $a6
	st.d	$a7, $sp, 416                   # 8-byte Folded Spill
	st.d	$t1, $sp, 408                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(levrun_linfo_c2x2)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 620
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fmadd.d	$fs1, $fs1, $fs1, $fa0
	slti	$a0, $s2, 0
	srai.d	$a1, $s4, 31
	xor	$a2, $s4, $a1
	sub.w	$s0, $a2, $a1
	sub.d	$a1, $zero, $s0
	masknez	$a2, $s0, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	slli.d	$a0, $a0, 4
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	sll.w	$a0, $a0, $a1
	srli.d	$a0, $a0, 5
	add.d	$a0, $s8, $a0
	sub.d	$a0, $s7, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fs2, $fa0
	addi.d	$a2, $sp, 620
	addi.d	$a3, $sp, 616
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(levrun_linfo_c2x2)
	jirl	$ra, $ra, 0
	addi.d	$t4, $sp, 624
	ld.d	$t0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 416                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 336                   # 8-byte Folded Reload
	move	$a6, $s5
	ld.d	$s5, $sp, 400                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 480                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a0, $sp, 620
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fmadd.d	$fa0, $fs2, $fs2, $fa0
	fcmp.ceq.d	$fcc0, $fs1, $fa0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	sltu	$a0, $a0, $s0
	ld.d	$s0, $sp, 352                   # 8-byte Folded Reload
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s3, $a0
	fcmp.clt.d	$fcc1, $fs1, $fa0
	or	$a0, $a0, $a1
	movcf2gr	$a1, $fcc1
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $s3, $a1
	or	$a1, $a1, $a2
	movcf2gr	$a2, $fcc0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	xor	$a1, $a0, $s3
	sltui	$a1, $a1, 1
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $s6, $a1
	or	$s6, $a1, $a2
	move	$s3, $a0
	b	.LBB6_18
	.p2align	4, , 16
.LBB6_16:                               #   in Loop: Header=BB6_12 Depth=1
	beq	$s3, $s4, .LBB6_18
# %bb.17:                               #   in Loop: Header=BB6_12 Depth=1
	sltui	$a0, $s3, 1
	masknez	$s3, $s4, $a0
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s6, $a0
	or	$s6, $a0, $a1
.LBB6_18:                               #   in Loop: Header=BB6_12 Depth=1
	ld.d	$s2, $sp, 536                   # 8-byte Folded Reload
	addi.d	$s4, $sp, 896
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	beqz	$a0, .LBB6_21
# %bb.19:                               #   in Loop: Header=BB6_12 Depth=1
	beqz	$s3, .LBB6_22
.LBB6_20:                               #   in Loop: Header=BB6_12 Depth=1
	ld.d	$a0, $t2, 368
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	or	$a0, $a0, $a1
	st.d	$a0, $t2, 368
	ori	$a4, $zero, 1
	slt	$a0, $a4, $a5
	slti	$a1, $s6, 0
	srai.d	$a2, $s3, 31
	xor	$a3, $s3, $a2
	sub.d	$a2, $a3, $a2
	sub.d	$a3, $zero, $a2
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a3, $a1
	masknez	$a3, $a4, $a0
	or	$a1, $a1, $a2
	slli.d	$a2, $a7, 2
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	stx.w	$a1, $a4, $a2
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	stx.w	$a6, $a4, $a2
	ld.w	$a2, $t6, 0
	maskeqz	$a0, $a5, $a0
	or	$a5, $a0, $a3
	addi.w	$a7, $a7, 1
	mul.d	$a0, $a1, $a2
	slli.d	$a0, $a0, 4
	sll.w	$a0, $a0, $t3
	srai.d	$a0, $a0, 5
	addi.d	$a6, $zero, -1
	b	.LBB6_23
	.p2align	4, , 16
.LBB6_21:                               #   in Loop: Header=BB6_12 Depth=1
	ld.d	$a0, $s0, 0
	ld.w	$a0, $a0, 36
	slti	$a0, $a0, 4
	ori	$a2, $zero, 2063
	slt	$a1, $s3, $a2
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $s3, $a1
	or	$a1, $a1, $a2
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s3, $a0
	or	$s3, $a1, $a0
	bnez	$s3, .LBB6_20
.LBB6_22:                               #   in Loop: Header=BB6_12 Depth=1
	move	$a0, $zero
.LBB6_23:                               #   in Loop: Header=BB6_12 Depth=1
	add.w	$a0, $a0, $s8
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.d	$a1, $a2, $a1
	mul.d	$a1, $a1, $s2
	add.d	$a1, $a1, $t0
	ld.d	$a2, $sp, 528                   # 8-byte Folded Reload
	sra.w	$a1, $a1, $a2
	slti	$a0, $a0, 0
	srai.d	$a2, $a1, 31
	xor	$a1, $a1, $a2
	sub.d	$a1, $a1, $a2
	sub.d	$a2, $zero, $a1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ld.w	$a1, $t7, 0
	pcalau12i	$t8, %pc_hi20(si_frame_indicator)
	ld.w	$a2, $t8, %pc_lo12(si_frame_indicator)
	pcalau12i	$ra, %pc_hi20(sp2_frame_indicator)
	ld.w	$a3, $ra, %pc_lo12(sp2_frame_indicator)
	mul.d	$a1, $a0, $a1
	ld.d	$a4, $sp, 472                   # 8-byte Folded Reload
	sll.w	$a1, $a1, $a4
	stx.w	$a1, $s1, $s4
	or	$a1, $a2, $a3
	pcalau12i	$a2, %pc_hi20(lrec_uv)
	st.d	$a2, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 3
	st.d	$a2, $sp, 288                   # 8-byte Folded Spill
	bnez	$a1, .LBB6_11
# %bb.24:                               #   in Loop: Header=BB6_12 Depth=1
	ld.d	$a1, $s0, 0
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(lrec_uv)
	ld.w	$a3, $a1, 188
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	ldx.d	$a2, $a2, $a4
	andi	$a4, $t1, 4
	add.w	$a3, $a3, $a4
	ld.w	$a1, $a1, 184
	slli.d	$a3, $a3, 3
	ldx.d	$a2, $a2, $a3
	andi	$a3, $s5, 4
	add.w	$a1, $a1, $a3
	slli.d	$a1, $a1, 2
	stx.w	$a0, $a2, $a1
	b	.LBB6_11
.LBB6_25:
	st.d	$a5, $sp, 160                   # 8-byte Folded Spill
	move	$a0, $zero
	ld.w	$a2, $sp, 896
	ld.w	$a3, $sp, 900
	ld.w	$a4, $sp, 904
	ld.w	$a5, $sp, 908
	slli.d	$a1, $a7, 2
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	stx.w	$zero, $a6, $a1
	add.d	$a6, $a3, $a2
	add.d	$a7, $a5, $a4
	add.d	$t0, $a7, $a6
	ld.d	$a1, $s0, 0
	bstrpick.d	$t1, $t0, 31, 31
	add.w	$t0, $t0, $t1
	srli.d	$t0, $t0, 1
	stptr.w	$t0, $a1, 13136
	add.d	$t0, $a2, $a4
	add.d	$t1, $a3, $a5
	sub.d	$t0, $t0, $t1
	bstrpick.d	$t1, $t0, 31, 31
	add.w	$t0, $t0, $t1
	move	$t1, $zero
	srli.d	$t0, $t0, 1
	stptr.w	$t0, $a1, 13152
	sub.d	$a6, $a6, $a7
	bstrpick.d	$a7, $a6, 31, 31
	add.w	$a6, $a6, $a7
	srli.d	$a6, $a6, 1
	stptr.w	$a6, $a1, 13392
	add.w	$a3, $a3, $a4
	sub.d	$a2, $a2, $a3
	add.d	$a2, $a2, $a5
	bstrpick.d	$a3, $a2, 31, 31
	add.w	$a2, $a2, $a3
	srli.d	$a2, $a2, 1
	stptr.w	$a2, $a1, 13408
	addi.d	$a2, $zero, -1
	ld.d	$t0, $sp, 312                   # 8-byte Folded Reload
	sll.w	$a2, $a2, $t0
	st.d	$a2, $sp, 416                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 16
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	ori	$a4, $zero, 1
	ld.d	$t4, $sp, 464                   # 8-byte Folded Reload
	st.d	$t8, $sp, 304                   # 8-byte Folded Spill
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	b	.LBB6_27
	.p2align	4, , 16
.LBB6_26:                               #   in Loop: Header=BB6_27 Depth=1
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	andi	$a3, $a3, 1
	ori	$t1, $zero, 4
	move	$a4, $zero
	beqz	$a3, .LBB6_45
.LBB6_27:                               # %.preheader660
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_29 Depth 2
                                        #       Child Loop BB6_32 Depth 3
	st.d	$a4, $sp, 240                   # 8-byte Folded Spill
	move	$s3, $zero
	srli.d	$a3, $t1, 1
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	st.d	$a3, $sp, 256                   # 8-byte Folded Spill
	or	$a2, $a3, $a2
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	ori	$a4, $zero, 1
	st.d	$t1, $sp, 360                   # 8-byte Folded Spill
	b	.LBB6_29
	.p2align	4, , 16
.LBB6_28:                               #   in Loop: Header=BB6_29 Depth=2
	ld.d	$a3, $sp, 504                   # 8-byte Folded Reload
	slli.d	$a3, $a3, 2
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	stx.w	$zero, $a4, $a3
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	andi	$a3, $a3, 1
	ori	$s3, $zero, 4
	move	$a4, $zero
	beqz	$a3, .LBB6_26
.LBB6_29:                               #   Parent Loop BB6_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_32 Depth 3
	st.d	$a4, $sp, 272                   # 8-byte Folded Spill
	ldptr.d	$a2, $a1, 14160
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$a2, $a2, 32
	alsl.d	$a2, $s3, $a2, 1
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	slli.d	$a3, $a3, 3
	ldx.d	$a2, $a2, $a3
	st.d	$zero, $sp, 504                 # 8-byte Folded Spill
	srli.d	$a3, $s3, 2
	ld.d	$a4, $a2, 0
	st.d	$a4, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a2, $a2, 8
	st.d	$a2, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	or	$a2, $a3, $a2
	ori	$a3, $zero, 1
	sll.d	$a2, $a3, $a2
	st.d	$a2, $sp, 368                   # 8-byte Folded Spill
	ori	$s1, $zero, 2
	addi.d	$a7, $zero, -1
	st.d	$s3, $sp, 488                   # 8-byte Folded Spill
	b	.LBB6_32
	.p2align	4, , 16
.LBB6_30:                               # %.thread610._crit_edge
                                        #   in Loop: Header=BB6_32 Depth=3
	ld.d	$a1, $s0, 0
.LBB6_31:                               #   in Loop: Header=BB6_32 Depth=3
	srai.d	$a4, $a3, 31
	xor	$a3, $a3, $a4
	sub.d	$a3, $a3, $a4
	mul.d	$a3, $a3, $s4
	add.d	$a3, $a3, $t5
	sra.w	$a3, $a3, $t0
	srai.d	$a4, $a3, 31
	xor	$a3, $a3, $a4
	sub.d	$a3, $a3, $a4
	sub.d	$a4, $zero, $a3
	alsl.d	$a5, $s6, $t7, 4
	ldx.w	$a5, $a5, $s8
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	mul.d	$a2, $a5, $a2
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	sll.w	$a3, $a2, $a3
	add.d	$a2, $a1, $t4
	ld.d	$a4, $sp, 528                   # 8-byte Folded Reload
	add.d	$a4, $a2, $a4
	ld.d	$a5, $sp, 536                   # 8-byte Folded Reload
	slli.d	$a5, $a5, 2
	addi.d	$s1, $s1, 2
	stx.w	$a3, $a4, $a5
	ori	$a3, $zero, 32
	beq	$s1, $a3, .LBB6_28
.LBB6_32:                               #   Parent Loop BB6_27 Depth=1
                                        #     Parent Loop BB6_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $t2, 428
	sltui	$a2, $a2, 1
	pcalau12i	$a3, %pc_hi20(FIELD_SCAN)
	addi.d	$a3, $a3, %pc_lo12(FIELD_SCAN)
	add.d	$a4, $a3, $s1
	pcalau12i	$a5, %pc_hi20(SNGL_SCAN)
	addi.d	$a5, $a5, %pc_lo12(SNGL_SCAN)
	add.d	$a6, $a5, $s1
	masknez	$a3, $a3, $a2
	maskeqz	$a5, $a5, $a2
	or	$a3, $a5, $a3
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a6, $a2
	or	$a2, $a2, $a4
	ldx.bu	$s4, $a3, $s1
	ld.bu	$s5, $a2, 1
	add.d	$a6, $s3, $s4
	add.w	$a2, $t1, $s5
	slli.d	$a3, $a6, 5
	addi.d	$a4, $sp, 640
	add.d	$a3, $a4, $a3
	slli.d	$a4, $a2, 2
	ldx.w	$s2, $a3, $a4
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 432                   # 8-byte Folded Reload
	add.d	$a3, $a5, $a3
	alsl.d	$a3, $s4, $a3, 4
	st.d	$s5, $sp, 512                   # 8-byte Folded Spill
	slli.d	$s3, $s5, 2
	ldx.w	$s5, $a3, $s3
	srai.d	$a3, $s2, 31
	xor	$a4, $s2, $a3
	sub.d	$a3, $a4, $a3
	mul.d	$a3, $a3, $s5
	add.w	$a3, $a3, $t5
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	and	$a3, $a3, $a4
	st.d	$s5, $sp, 520                   # 8-byte Folded Spill
	div.w	$a3, $a3, $s5
	slli.d	$a2, $a2, 6
	st.d	$a2, $sp, 528                   # 8-byte Folded Spill
	add.d	$a1, $a1, $a2
	st.d	$a6, $sp, 536                   # 8-byte Folded Spill
	alsl.d	$a1, $a6, $a1, 2
	ldx.w	$a1, $a1, $t4
	slti	$a2, $s2, 0
	srai.d	$a4, $a3, 31
	xor	$a3, $a3, $a4
	sub.d	$a3, $a3, $a4
	sub.d	$a4, $zero, $a3
	maskeqz	$a3, $a3, $a2
	masknez	$a2, $a4, $a2
	or	$a2, $a3, $a2
	add.w	$s7, $a2, $a1
	srai.d	$a2, $s7, 31
	xor	$a3, $s7, $a2
	sub.d	$a2, $a3, $a2
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	add.d	$a3, $a5, $a3
	move	$s6, $s4
	alsl.d	$a3, $s4, $a3, 4
	move	$s8, $s3
	ldx.w	$a3, $a3, $s3
	sub.w	$s5, $a1, $s2
	srai.d	$a4, $s5, 31
	xor	$a5, $s5, $a4
	sub.d	$a4, $a5, $a4
	addi.w	$a7, $a7, 1
	mul.d	$a2, $a2, $a3
	ld.d	$a6, $sp, 456                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a6
	ld.d	$a5, $sp, 448                   # 8-byte Folded Reload
	sra.w	$s4, $a2, $a5
	mul.d	$a2, $a4, $a3
	add.d	$a2, $a2, $a6
	sra.w	$s3, $a2, $a5
	pcalau12i	$a2, %pc_hi20(A)
	addi.d	$a5, $a2, %pc_lo12(A)
	beqz	$s3, .LBB6_36
# %bb.33:                               #   in Loop: Header=BB6_32 Depth=3
	beq	$s4, $s3, .LBB6_36
# %bb.34:                               #   in Loop: Header=BB6_32 Depth=3
	beqz	$s4, .LBB6_36
# %bb.35:                               # %.thread614
                                        #   in Loop: Header=BB6_32 Depth=3
	slti	$a0, $s7, 0
	srai.d	$a2, $s4, 31
	xor	$a3, $s4, $a2
	sub.w	$a6, $a3, $a2
	st.d	$a6, $sp, 400                   # 8-byte Folded Spill
	sub.d	$a2, $zero, $a6
	alsl.d	$a3, $s6, $t6, 4
	ldx.w	$a3, $a3, $s8
	alsl.d	$a4, $s6, $a5, 4
	ldx.w	$a4, $a4, $s8
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a6, $a0
	or	$a0, $a2, $a0
	mul.d	$a2, $a4, $a3
	st.d	$a2, $sp, 392                   # 8-byte Folded Spill
	mul.d	$a0, $a2, $a0
	sll.w	$a0, $a0, $t3
	srli.d	$a0, $a0, 6
	add.d	$a0, $s2, $a0
	sub.d	$a0, $a1, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fs1, $fa0
	addi.d	$a2, $sp, 620
	addi.d	$a3, $sp, 616
	move	$a0, $s4
	move	$a1, $a7
	st.d	$a7, $sp, 496                   # 8-byte Folded Spill
	st.d	$a5, $sp, 408                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(levrun_linfo_inter)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 620
	movgr2fr.w	$fa0, $a0
	ld.d	$a0, $s0, 0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fmadd.d	$fs1, $fs1, $fs1, $fa0
	ld.d	$a1, $sp, 528                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 2
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $a1
	slti	$a1, $s5, 0
	srai.d	$a2, $s3, 31
	xor	$a3, $s3, $a2
	sub.w	$s0, $a3, $a2
	sub.d	$a2, $zero, $s0
	masknez	$a3, $s0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	mul.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 480                   # 8-byte Folded Reload
	sll.w	$a1, $a1, $a2
	srli.d	$a1, $a1, 6
	add.d	$a1, $a1, $s2
	sub.d	$a0, $a0, $a1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fs2, $fa0
	addi.d	$a2, $sp, 620
	addi.d	$a3, $sp, 616
	move	$a0, $s3
	ld.d	$a1, $sp, 496                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(levrun_linfo_inter)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 496                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 464                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 360                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 480                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 344                   # 8-byte Folded Reload
	ld.w	$a0, $sp, 620
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fmadd.d	$fa0, $fs2, $fs2, $fa0
	fcmp.ceq.d	$fcc0, $fs1, $fa0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	sltu	$a0, $a0, $s0
	ld.d	$s0, $sp, 352                   # 8-byte Folded Reload
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s4, $a0
	fcmp.clt.d	$fcc1, $fs1, $fa0
	or	$a0, $a0, $a1
	movcf2gr	$a1, $fcc1
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $s4, $a1
	or	$a1, $a1, $a2
	movcf2gr	$a2, $fcc0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$s3, $a0, $a1
	xor	$a0, $s3, $s4
	sltui	$a0, $a0, 1
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s7, $a0
	or	$s5, $a0, $a1
	ld.d	$s7, $sp, 512                   # 8-byte Folded Reload
	b	.LBB6_40
	.p2align	4, , 16
.LBB6_36:                               #   in Loop: Header=BB6_32 Depth=3
	bne	$s4, $s3, .LBB6_38
# %bb.37:                               #   in Loop: Header=BB6_32 Depth=3
	move	$s3, $s4
	move	$s5, $s7
	ld.d	$s7, $sp, 512                   # 8-byte Folded Reload
	b	.LBB6_39
	.p2align	4, , 16
.LBB6_38:                               #   in Loop: Header=BB6_32 Depth=3
	ld.d	$s7, $sp, 512                   # 8-byte Folded Reload
	beqz	$s4, .LBB6_41
.LBB6_39:                               #   in Loop: Header=BB6_32 Depth=3
	beqz	$s3, .LBB6_41
.LBB6_40:                               #   in Loop: Header=BB6_32 Depth=3
	ld.d	$a0, $t2, 368
	slti	$a1, $s5, 0
	srai.d	$a2, $s3, 31
	xor	$a3, $s3, $a2
	sub.d	$a2, $a3, $a2
	sub.d	$a3, $zero, $a2
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a3, $a1
	ld.d	$a3, $sp, 368                   # 8-byte Folded Reload
	or	$a0, $a0, $a3
	or	$a1, $a1, $a2
	ld.d	$a4, $sp, 504                   # 8-byte Folded Reload
	slli.d	$a2, $a4, 2
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	stx.w	$a1, $a3, $a2
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	stx.w	$a7, $a3, $a2
	alsl.d	$a2, $s6, $t6, 4
	ldx.w	$a2, $a2, $s8
	alsl.d	$a3, $s6, $a5, 4
	ldx.w	$a3, $a3, $s8
	st.d	$a0, $t2, 368
	addi.w	$a4, $a4, 1
	st.d	$a4, $sp, 504                   # 8-byte Folded Spill
	mul.d	$a0, $a2, $a1
	mul.d	$a0, $a0, $a3
	sll.w	$a0, $a0, $t3
	srai.d	$a1, $a0, 6
	addi.d	$a7, $zero, -1
	ori	$a0, $zero, 2
	b	.LBB6_42
	.p2align	4, , 16
.LBB6_41:                               #   in Loop: Header=BB6_32 Depth=3
	move	$a1, $zero
.LBB6_42:                               # %.thread610
                                        #   in Loop: Header=BB6_32 Depth=3
	ld.d	$s3, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 520                   # 8-byte Folded Reload
	ld.w	$a2, $t8, %pc_lo12(si_frame_indicator)
	ld.w	$a4, $ra, %pc_lo12(sp2_frame_indicator)
	add.w	$a3, $a1, $s2
	or	$a1, $a2, $a4
	slti	$a2, $a3, 0
	bnez	$a1, .LBB6_30
# %bb.43:                               #   in Loop: Header=BB6_32 Depth=3
	ld.d	$a1, $s0, 0
	or	$a4, $s7, $s6
	andi	$a4, $a4, 3
	beqz	$a4, .LBB6_31
# %bb.44:                               #   in Loop: Header=BB6_32 Depth=3
	srai.d	$a4, $a3, 31
	xor	$a5, $a3, $a4
	sub.d	$a4, $a5, $a4
	mul.d	$a4, $a4, $s4
	add.d	$a4, $a4, $t5
	sra.w	$a4, $a4, $t0
	srai.d	$a5, $a4, 31
	xor	$a4, $a4, $a5
	sub.d	$a4, $a4, $a5
	sub.d	$a5, $zero, $a4
	masknez	$a4, $a4, $a2
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(lrec_uv)
	maskeqz	$a5, $a5, $a2
	move	$s2, $t4
	move	$t4, $a7
	ld.w	$a7, $a1, 188
	or	$a4, $a5, $a4
	ld.d	$a5, $sp, 288                   # 8-byte Folded Reload
	ldx.d	$a5, $a6, $a5
	add.d	$a6, $s3, $s7
	add.w	$a6, $a6, $a7
	ld.w	$a7, $a1, 184
	slli.d	$a6, $a6, 3
	ldx.d	$a5, $a5, $a6
	add.d	$a6, $t1, $s6
	add.w	$a6, $a6, $a7
	move	$a7, $t4
	move	$t4, $s2
	slli.d	$a6, $a6, 2
	stx.w	$a4, $a5, $a6
	b	.LBB6_31
.LBB6_45:                               # %.preheader659
	move	$a5, $zero
	pcalau12i	$a3, %pc_hi20(.LCPI6_4)
	vld	$vr0, $a3, %pc_lo12(.LCPI6_4)
	pcalau12i	$a3, %pc_hi20(.LCPI6_5)
	vld	$vr1, $a3, %pc_lo12(.LCPI6_5)
	pcalau12i	$a3, %pc_hi20(.LCPI6_6)
	vld	$vr2, $a3, %pc_lo12(.LCPI6_6)
	ori	$a4, $zero, 1
	lu12i.w	$a3, 3
	ori	$a3, $a3, 3236
	vrepli.w	$vr3, 32
	.p2align	4, , 16
.LBB6_46:                               # %.preheader658
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_47 Depth 2
	move	$t2, $zero
	addi.d	$a6, $a5, 1
	addi.d	$a7, $a5, 2
	addi.d	$t0, $a5, 3
	slli.d	$a5, $a5, 6
	add.d	$a5, $a2, $a5
	slli.d	$a6, $a6, 6
	add.d	$a6, $a2, $a6
	slli.d	$a7, $a7, 6
	add.d	$a7, $a2, $a7
	slli.d	$t0, $t0, 6
	add.d	$t0, $a2, $t0
	ori	$t1, $zero, 1
	.p2align	4, , 16
.LBB6_47:                               # %.preheader657
                                        #   Parent Loop BB6_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$t2, $t2, 2
	ldx.w	$t6, $a5, $t2
	addi.d	$t4, $t2, 4
	addi.d	$t3, $t2, 8
	ldx.w	$t7, $a5, $t3
	ldx.w	$t8, $a5, $t4
	addi.d	$t5, $t2, 12
	ldx.w	$s0, $a5, $t5
	add.d	$s1, $t7, $t6
	sub.d	$t6, $t6, $t7
	srli.d	$t7, $t8, 1
	sub.d	$t7, $t7, $s0
	srli.d	$s0, $s0, 1
	add.d	$t8, $s0, $t8
	add.d	$s0, $t8, $s1
	stx.w	$s0, $a5, $t2
	sub.d	$t8, $s1, $t8
	stx.w	$t8, $a5, $t5
	add.d	$t8, $t7, $t6
	stx.w	$t8, $a5, $t4
	sub.d	$t6, $t6, $t7
	ldx.w	$t7, $a6, $t2
	ldx.w	$t8, $a6, $t3
	stx.w	$t6, $a5, $t3
	ldx.w	$t6, $a6, $t4
	ldx.w	$s0, $a6, $t5
	add.d	$s1, $t8, $t7
	sub.d	$t7, $t7, $t8
	srli.d	$t8, $t6, 1
	sub.d	$t8, $t8, $s0
	srli.d	$s0, $s0, 1
	add.d	$t6, $s0, $t6
	add.d	$s0, $t6, $s1
	stx.w	$s0, $a6, $t2
	sub.d	$t6, $s1, $t6
	stx.w	$t6, $a6, $t5
	add.d	$t6, $t8, $t7
	stx.w	$t6, $a6, $t4
	sub.d	$t6, $t7, $t8
	ldx.w	$t7, $a7, $t2
	ldx.w	$t8, $a7, $t3
	stx.w	$t6, $a6, $t3
	ldx.w	$t6, $a7, $t4
	ldx.w	$s0, $a7, $t5
	add.d	$s1, $t8, $t7
	sub.d	$t7, $t7, $t8
	srli.d	$t8, $t6, 1
	sub.d	$t8, $t8, $s0
	srli.d	$s0, $s0, 1
	add.d	$t6, $s0, $t6
	add.d	$s0, $t6, $s1
	stx.w	$s0, $a7, $t2
	sub.d	$t6, $s1, $t6
	stx.w	$t6, $a7, $t5
	add.d	$t6, $t8, $t7
	stx.w	$t6, $a7, $t4
	sub.d	$t6, $t7, $t8
	ldx.w	$t7, $t0, $t2
	ldx.w	$t8, $t0, $t3
	stx.w	$t6, $a7, $t3
	ldx.w	$t6, $t0, $t4
	ldx.w	$s0, $t0, $t5
	add.d	$s1, $t8, $t7
	sub.d	$t7, $t7, $t8
	srli.d	$t8, $t6, 1
	sub.d	$t8, $t8, $s0
	srli.d	$s0, $s0, 1
	add.d	$t6, $s0, $t6
	add.d	$s0, $t6, $s1
	sub.d	$t6, $s1, $t6
	stx.w	$t6, $t0, $t5
	add.d	$t5, $t8, $t7
	stx.w	$t5, $t0, $t4
	sub.d	$t6, $t7, $t8
	stx.w	$t6, $t0, $t3
	vldx	$vr4, $a5, $t2
	ldx.d	$t4, $t0, $t4
	vldx	$vr5, $a7, $t2
	ldx.w	$t6, $a1, $a3
	vldx	$vr6, $a6, $t2
	vinsgr2vr.d	$vr7, $t4, 0
	vadd.w	$vr8, $vr5, $vr4
	vinsgr2vr.w	$vr9, $s0, 0
	vori.b	$vr10, $vr0, 0
	ldx.d	$t3, $t0, $t3
	vshuf.w	$vr10, $vr7, $vr9
	vadd.w	$vr7, $vr8, $vr3
	vreplgr2vr.w	$vr8, $t6
	vinsgr2vr.d	$vr11, $t3, 0
	vori.b	$vr12, $vr1, 0
	vshuf.w	$vr12, $vr11, $vr10
	vsrai.w	$vr10, $vr12, 1
	vadd.w	$vr10, $vr10, $vr6
	vsub.w	$vr4, $vr4, $vr5
	vsrai.w	$vr5, $vr6, 1
	vinsgr2vr.w	$vr9, $t5, 1
	vori.b	$vr6, $vr2, 0
	vshuf.w	$vr6, $vr11, $vr9
	vsub.w	$vr5, $vr5, $vr6
	vadd.w	$vr4, $vr4, $vr3
	vadd.w	$vr6, $vr7, $vr10
	vsrai.w	$vr6, $vr6, 6
	vmaxi.w	$vr6, $vr6, 0
	vmin.w	$vr6, $vr6, $vr8
	vstx	$vr6, $a5, $t2
	vsub.w	$vr6, $vr7, $vr10
	vsrai.w	$vr6, $vr6, 6
	vinsgr2vr.w	$vr7, $t6, 0
	vreplvei.w	$vr7, $vr7, 0
	vmaxi.w	$vr6, $vr6, 0
	vori.b	$vr8, $vr7, 0
	vinsgr2vr.w	$vr8, $t6, 3
	vmin.w	$vr6, $vr6, $vr8
	vstx	$vr6, $t0, $t2
	vadd.w	$vr6, $vr4, $vr5
	vsrai.w	$vr6, $vr6, 6
	vmaxi.w	$vr6, $vr6, 0
	vmin.w	$vr6, $vr6, $vr8
	vstx	$vr6, $a6, $t2
	ldx.w	$t3, $a1, $a3
	vsub.w	$vr4, $vr4, $vr5
	vsrai.w	$vr4, $vr4, 6
	vmaxi.w	$vr4, $vr4, 0
	vinsgr2vr.w	$vr7, $t3, 3
	vmin.w	$vr4, $vr4, $vr7
	vstx	$vr4, $a7, $t2
	andi	$t3, $t1, 1
	ori	$t2, $zero, 4
	move	$t1, $zero
	bnez	$t3, .LBB6_47
# %bb.48:                               #   in Loop: Header=BB6_46 Depth=1
	andi	$a6, $a4, 1
	ori	$a5, $zero, 4
	move	$a4, $zero
	bnez	$a6, .LBB6_46
# %bb.49:                               # %.preheader653
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$a1, $a1, %got_pc_lo12(enc_picture)
	ld.d	$a1, $a1, 0
	ldptr.d	$a1, $a1, 6472
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a3
	ld.w	$a4, $a2, 188
	ld.w	$a5, $a2, 184
	alsl.d	$a3, $a4, $a1, 3
	ld.d	$a6, $sp, 464                   # 8-byte Folded Reload
	xvldx	$xr0, $a2, $a6
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a1, $a4
	slli.d	$a1, $a5, 1
	xvpickve2gr.w	$a5, $xr0, 0
	vinsgr2vr.h	$vr1, $a5, 0
	xvpickve2gr.w	$a5, $xr0, 1
	vinsgr2vr.h	$vr1, $a5, 1
	xvpickve2gr.w	$a5, $xr0, 2
	vinsgr2vr.h	$vr1, $a5, 2
	xvpickve2gr.w	$a5, $xr0, 3
	vinsgr2vr.h	$vr1, $a5, 3
	xvpickve2gr.w	$a5, $xr0, 4
	vinsgr2vr.h	$vr1, $a5, 4
	xvpickve2gr.w	$a5, $xr0, 5
	vinsgr2vr.h	$vr1, $a5, 5
	xvpickve2gr.w	$a5, $xr0, 6
	vinsgr2vr.h	$vr1, $a5, 6
	xvpickve2gr.w	$a5, $xr0, 7
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	xvldx	$xr0, $a2, $a6
	vinsgr2vr.h	$vr1, $a5, 7
	vstx	$vr1, $a4, $a1
	ld.d	$a4, $a3, 8
	xvpickve2gr.w	$a5, $xr0, 0
	vinsgr2vr.h	$vr1, $a5, 0
	xvpickve2gr.w	$a5, $xr0, 1
	vinsgr2vr.h	$vr1, $a5, 1
	xvpickve2gr.w	$a5, $xr0, 2
	vinsgr2vr.h	$vr1, $a5, 2
	xvpickve2gr.w	$a5, $xr0, 3
	vinsgr2vr.h	$vr1, $a5, 3
	xvpickve2gr.w	$a5, $xr0, 4
	vinsgr2vr.h	$vr1, $a5, 4
	xvpickve2gr.w	$a5, $xr0, 5
	vinsgr2vr.h	$vr1, $a5, 5
	xvpickve2gr.w	$a5, $xr0, 6
	vinsgr2vr.h	$vr1, $a5, 6
	xvpickve2gr.w	$a5, $xr0, 7
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	xvldx	$xr0, $a2, $a6
	vinsgr2vr.h	$vr1, $a5, 7
	vstx	$vr1, $a4, $a1
	ld.d	$a4, $a3, 16
	xvpickve2gr.w	$a5, $xr0, 0
	vinsgr2vr.h	$vr1, $a5, 0
	xvpickve2gr.w	$a5, $xr0, 1
	vinsgr2vr.h	$vr1, $a5, 1
	xvpickve2gr.w	$a5, $xr0, 2
	vinsgr2vr.h	$vr1, $a5, 2
	xvpickve2gr.w	$a5, $xr0, 3
	vinsgr2vr.h	$vr1, $a5, 3
	xvpickve2gr.w	$a5, $xr0, 4
	vinsgr2vr.h	$vr1, $a5, 4
	xvpickve2gr.w	$a5, $xr0, 5
	vinsgr2vr.h	$vr1, $a5, 5
	xvpickve2gr.w	$a5, $xr0, 6
	vinsgr2vr.h	$vr1, $a5, 6
	xvpickve2gr.w	$a5, $xr0, 7
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	xvldx	$xr0, $a2, $a6
	vinsgr2vr.h	$vr1, $a5, 7
	vstx	$vr1, $a4, $a1
	ld.d	$a4, $a3, 24
	xvpickve2gr.w	$a5, $xr0, 0
	vinsgr2vr.h	$vr1, $a5, 0
	xvpickve2gr.w	$a5, $xr0, 1
	vinsgr2vr.h	$vr1, $a5, 1
	xvpickve2gr.w	$a5, $xr0, 2
	vinsgr2vr.h	$vr1, $a5, 2
	xvpickve2gr.w	$a5, $xr0, 3
	vinsgr2vr.h	$vr1, $a5, 3
	xvpickve2gr.w	$a5, $xr0, 4
	vinsgr2vr.h	$vr1, $a5, 4
	xvpickve2gr.w	$a5, $xr0, 5
	vinsgr2vr.h	$vr1, $a5, 5
	xvpickve2gr.w	$a5, $xr0, 6
	vinsgr2vr.h	$vr1, $a5, 6
	xvpickve2gr.w	$a5, $xr0, 7
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	xvldx	$xr0, $a2, $a6
	vinsgr2vr.h	$vr1, $a5, 7
	vstx	$vr1, $a4, $a1
	ld.d	$a4, $a3, 32
	xvpickve2gr.w	$a5, $xr0, 0
	vinsgr2vr.h	$vr1, $a5, 0
	xvpickve2gr.w	$a5, $xr0, 1
	vinsgr2vr.h	$vr1, $a5, 1
	xvpickve2gr.w	$a5, $xr0, 2
	vinsgr2vr.h	$vr1, $a5, 2
	xvpickve2gr.w	$a5, $xr0, 3
	vinsgr2vr.h	$vr1, $a5, 3
	xvpickve2gr.w	$a5, $xr0, 4
	vinsgr2vr.h	$vr1, $a5, 4
	xvpickve2gr.w	$a5, $xr0, 5
	vinsgr2vr.h	$vr1, $a5, 5
	xvpickve2gr.w	$a5, $xr0, 6
	vinsgr2vr.h	$vr1, $a5, 6
	xvpickve2gr.w	$a5, $xr0, 7
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	xvldx	$xr0, $a2, $a6
	vinsgr2vr.h	$vr1, $a5, 7
	vstx	$vr1, $a4, $a1
	ld.d	$a4, $a3, 40
	xvpickve2gr.w	$a5, $xr0, 0
	vinsgr2vr.h	$vr1, $a5, 0
	xvpickve2gr.w	$a5, $xr0, 1
	vinsgr2vr.h	$vr1, $a5, 1
	xvpickve2gr.w	$a5, $xr0, 2
	vinsgr2vr.h	$vr1, $a5, 2
	xvpickve2gr.w	$a5, $xr0, 3
	vinsgr2vr.h	$vr1, $a5, 3
	xvpickve2gr.w	$a5, $xr0, 4
	vinsgr2vr.h	$vr1, $a5, 4
	xvpickve2gr.w	$a5, $xr0, 5
	vinsgr2vr.h	$vr1, $a5, 5
	xvpickve2gr.w	$a5, $xr0, 6
	vinsgr2vr.h	$vr1, $a5, 6
	xvpickve2gr.w	$a5, $xr0, 7
	ld.d	$a6, $sp, 64                    # 8-byte Folded Reload
	xvldx	$xr0, $a2, $a6
	vinsgr2vr.h	$vr1, $a5, 7
	vstx	$vr1, $a4, $a1
	ld.d	$a4, $a3, 48
	xvpickve2gr.w	$a5, $xr0, 0
	vinsgr2vr.h	$vr1, $a5, 0
	xvpickve2gr.w	$a5, $xr0, 1
	vinsgr2vr.h	$vr1, $a5, 1
	xvpickve2gr.w	$a5, $xr0, 2
	vinsgr2vr.h	$vr1, $a5, 2
	xvpickve2gr.w	$a5, $xr0, 3
	vinsgr2vr.h	$vr1, $a5, 3
	xvpickve2gr.w	$a5, $xr0, 4
	vinsgr2vr.h	$vr1, $a5, 4
	xvpickve2gr.w	$a5, $xr0, 5
	vinsgr2vr.h	$vr1, $a5, 5
	xvpickve2gr.w	$a5, $xr0, 6
	vinsgr2vr.h	$vr1, $a5, 6
	xvpickve2gr.w	$a5, $xr0, 7
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	xvldx	$xr0, $a2, $a6
	vinsgr2vr.h	$vr1, $a5, 7
	vstx	$vr1, $a4, $a1
	ld.d	$a2, $a3, 56
	xvpickve2gr.w	$a3, $xr0, 0
	vinsgr2vr.h	$vr1, $a3, 0
	xvpickve2gr.w	$a3, $xr0, 1
	vinsgr2vr.h	$vr1, $a3, 1
	xvpickve2gr.w	$a3, $xr0, 2
	vinsgr2vr.h	$vr1, $a3, 2
	xvpickve2gr.w	$a3, $xr0, 3
	vinsgr2vr.h	$vr1, $a3, 3
	xvpickve2gr.w	$a3, $xr0, 4
	vinsgr2vr.h	$vr1, $a3, 4
	xvpickve2gr.w	$a3, $xr0, 5
	vinsgr2vr.h	$vr1, $a3, 5
	xvpickve2gr.w	$a3, $xr0, 6
	vinsgr2vr.h	$vr1, $a3, 6
	xvpickve2gr.w	$a3, $xr0, 7
	vinsgr2vr.h	$vr1, $a3, 7
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	masknez	$a3, $a3, $a0
	ori	$a4, $zero, 2
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a3
	vstx	$vr1, $a2, $a1
	addi.d	$sp, $fp, -1024
	fld.d	$fs2, $sp, 912                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 920                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 928                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 936                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 944                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 952                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 960                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 968                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 976                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 984                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 992                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 1000                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1008                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1016                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1024
	ret
.Lfunc_end6:
	.size	dct_chroma_sp, .Lfunc_end6-dct_chroma_sp
                                        # -- End function
	.globl	copyblock_sp                    # -- Begin function copyblock_sp
	.p2align	5
	.type	copyblock_sp,@function
copyblock_sp:                           # @copyblock_sp
# %bb.0:                                # %.preheader149
	addi.d	$sp, $sp, -144
	st.d	$fp, $sp, 136                   # 8-byte Folded Spill
	st.d	$s0, $sp, 128                   # 8-byte Folded Spill
	st.d	$s1, $sp, 120                   # 8-byte Folded Spill
	st.d	$s2, $sp, 112                   # 8-byte Folded Spill
	st.d	$s3, $sp, 104                   # 8-byte Folded Spill
	st.d	$s4, $sp, 96                    # 8-byte Folded Spill
	st.d	$s5, $sp, 88                    # 8-byte Folded Spill
	st.d	$s6, $sp, 80                    # 8-byte Folded Spill
	st.d	$s7, $sp, 72                    # 8-byte Folded Spill
	st.d	$s8, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$a2, $a2, %got_pc_lo12(img)
	ld.d	$a2, $a2, 0
	ld.w	$a3, $a2, 12
	ldptr.d	$a4, $a2, 14224
	ori	$a5, $zero, 536
	mul.d	$a3, $a3, $a5
	add.d	$a3, $a4, $a3
	ld.w	$t0, $a3, 20
	addi.d	$a5, $sp, 32
	lu12i.w	$a3, 174762
	ori	$a3, $a3, 2731
	mul.d	$a3, $t0, $a3
	srli.d	$a4, $a3, 63
	srli.d	$a3, $a3, 32
	add.d	$a6, $a3, $a4
	addi.d	$a7, $a6, 15
	ori	$a3, $zero, 1
	sll.w	$a4, $a3, $a7
	slli.d	$a3, $a1, 5
	add.d	$t1, $a2, $a3
	lu12i.w	$a3, 3
	ori	$t2, $a3, 336
	add.d	$t2, $t1, $t2
	slli.d	$t3, $a0, 1
	ldx.hu	$t4, $t2, $t3
	addi.d	$t5, $t3, 2
	ldx.hu	$t6, $t2, $t5
	addi.d	$t7, $t3, 4
	ldx.hu	$t8, $t2, $t7
	addi.d	$fp, $t3, 6
	ldx.hu	$t2, $t2, $fp
	ori	$s0, $a3, 368
	add.d	$s0, $t1, $s0
	ldx.hu	$s1, $s0, $t3
	ldx.hu	$s2, $s0, $t5
	ldx.hu	$s3, $s0, $t7
	ldx.hu	$s0, $s0, $fp
	ori	$s4, $a3, 400
	add.d	$s4, $t1, $s4
	ldx.hu	$s5, $s4, $t3
	ldx.hu	$s6, $s4, $t5
	ldx.hu	$s7, $s4, $t7
	ldx.hu	$s4, $s4, $fp
	ori	$s8, $a3, 432
	add.d	$t1, $t1, $s8
	ldx.hu	$t3, $t1, $t3
	ldx.hu	$s8, $t1, $t5
	ldx.hu	$t7, $t1, $t7
	ldx.hu	$fp, $t1, $fp
	slli.d	$t1, $a6, 2
	alsl.d	$t1, $a6, $t1, 1
	sub.w	$t5, $t0, $t1
	add.d	$t0, $t2, $t4
	sub.d	$t1, $t4, $t2
	add.d	$t2, $t8, $t6
	sub.d	$t4, $t6, $t8
	add.d	$t6, $t2, $t0
	sub.d	$t2, $t0, $t2
	alsl.d	$t8, $t1, $t4, 1
	slli.d	$t0, $t4, 1
	sub.d	$t0, $t1, $t0
	add.d	$t1, $s0, $s1
	sub.d	$t4, $s1, $s0
	add.d	$s0, $s3, $s2
	sub.d	$s1, $s2, $s3
	add.d	$s2, $s0, $t1
	sub.d	$s0, $t1, $s0
	alsl.d	$s3, $t4, $s1, 1
	slli.d	$t1, $s1, 1
	sub.d	$t1, $t4, $t1
	add.d	$t4, $s4, $s5
	sub.d	$s1, $s5, $s4
	add.d	$s4, $s7, $s6
	sub.d	$s5, $s6, $s7
	add.d	$s6, $s4, $t4
	sub.d	$t4, $t4, $s4
	alsl.d	$s4, $s1, $s5, 1
	slli.d	$s5, $s5, 1
	sub.d	$s1, $s1, $s5
	add.d	$s5, $fp, $t3
	sub.d	$t3, $t3, $fp
	add.d	$fp, $t7, $s8
	sub.d	$t7, $s8, $t7
	add.d	$s7, $fp, $s5
	sub.d	$fp, $s5, $fp
	alsl.d	$s5, $t3, $t7, 1
	slli.d	$t7, $t7, 1
	sub.d	$t3, $t3, $t7
	add.d	$t7, $s7, $t6
	sub.d	$t6, $t6, $s7
	add.d	$s7, $s6, $s2
	sub.d	$s2, $s2, $s6
	add.d	$s6, $s7, $t7
	st.w	$s6, $sp, 0
	sub.d	$t7, $t7, $s7
	st.w	$t7, $sp, 8
	alsl.d	$t7, $t6, $s2, 1
	st.w	$t7, $sp, 4
	slli.d	$t7, $s2, 1
	sub.d	$t6, $t6, $t7
	st.w	$t6, $sp, 12
	add.d	$t6, $s5, $t8
	sub.d	$t7, $t8, $s5
	add.d	$t8, $s4, $s3
	sub.d	$s2, $s3, $s4
	add.d	$s3, $t8, $t6
	st.w	$s3, $sp, 16
	sub.d	$t6, $t6, $t8
	st.w	$t6, $sp, 24
	alsl.d	$t6, $t7, $s2, 1
	st.w	$t6, $sp, 20
	slli.d	$t6, $s2, 1
	sub.d	$t6, $t7, $t6
	st.w	$t6, $sp, 28
	add.d	$t6, $fp, $t2
	sub.d	$t2, $t2, $fp
	add.d	$t7, $t4, $s0
	sub.d	$t4, $s0, $t4
	add.d	$t8, $t7, $t6
	st.w	$t8, $sp, 32
	sub.d	$t6, $t6, $t7
	st.w	$t6, $sp, 40
	alsl.d	$t6, $t2, $t4, 1
	st.w	$t6, $sp, 36
	slli.d	$t4, $t4, 1
	sub.d	$t2, $t2, $t4
	st.w	$t2, $sp, 44
	add.d	$t2, $t3, $t0
	sub.d	$t0, $t0, $t3
	add.d	$t3, $s1, $t1
	sub.d	$t1, $t1, $s1
	add.d	$t4, $t3, $t2
	st.w	$t4, $sp, 48
	sub.d	$t2, $t2, $t3
	st.w	$t2, $sp, 56
	alsl.d	$t2, $t0, $t1, 1
	st.w	$t2, $sp, 52
	slli.d	$t1, $t1, 1
	sub.d	$t0, $t0, $t1
	st.w	$t0, $sp, 60
	bstrpick.d	$t0, $a4, 31, 31
	add.w	$a4, $a4, $t0
	srai.d	$t0, $a4, 1
	addi.d	$t1, $a0, 1
	addi.d	$t2, $a0, 2
	ori	$a4, $a3, 860
	add.d	$t3, $a2, $a4
	addi.d	$t4, $a0, 3
	slli.d	$t5, $t5, 6
	addi.d	$t6, $t5, 32
	pcalau12i	$t5, %pc_hi20(dequant_coef)
	addi.d	$t5, $t5, %pc_lo12(dequant_coef)
	add.d	$t5, $t5, $t6
	pcalau12i	$t7, %pc_hi20(quant_coef)
	addi.d	$t7, $t7, %pc_lo12(quant_coef)
	add.d	$t6, $t7, $t6
	addi.w	$t7, $zero, -16
	move	$t8, $a1
	b	.LBB7_2
	.p2align	4, , 16
.LBB7_1:                                #   in Loop: Header=BB7_2 Depth=1
	addi.d	$t7, $t7, 4
	addi.d	$t8, $t8, 1
	addi.d	$t3, $t3, 64
	beqz	$t7, .LBB7_10
.LBB7_2:                                # %.preheader143
                                        # =>This Inner Loop Header: Depth=1
	pcalau12i	$fp, %pc_hi20(lrec)
	add.d	$s0, $a5, $t7
	ld.w	$s2, $s0, -16
	ld.d	$fp, $fp, %pc_lo12(lrec)
	add.d	$s1, $t6, $t7
	ld.w	$s3, $s1, -16
	srai.d	$s4, $s2, 31
	xor	$s5, $s2, $s4
	sub.d	$s4, $s5, $s4
	mul.d	$s3, $s4, $s3
	add.d	$s3, $s3, $t0
	sra.w	$s3, $s3, $a7
	slti	$s4, $s2, 0
	srai.d	$s2, $s3, 31
	xor	$s3, $s3, $s2
	sub.d	$s3, $s3, $s2
	sub.d	$s5, $zero, $s3
	add.d	$s2, $t5, $t7
	ld.w	$s6, $s2, -16
	masknez	$s3, $s3, $s4
	maskeqz	$s4, $s5, $s4
	or	$s5, $s4, $s3
	mul.d	$s3, $s5, $s6
	sll.w	$s3, $s3, $a6
	st.w	$s3, $t3, -12
	pcalau12i	$s3, %pc_hi20(si_frame_indicator)
	ld.w	$s6, $s3, %pc_lo12(si_frame_indicator)
	pcalau12i	$s4, %pc_hi20(sp2_frame_indicator)
	ld.w	$s7, $s4, %pc_lo12(sp2_frame_indicator)
	or	$s6, $s6, $s7
	bnez	$s6, .LBB7_4
# %bb.3:                                #   in Loop: Header=BB7_2 Depth=1
	ld.w	$s6, $a2, 180
	add.w	$s6, $t8, $s6
	ld.w	$s7, $a2, 176
	slli.d	$s6, $s6, 3
	ldx.d	$s6, $fp, $s6
	add.w	$s7, $a0, $s7
	slli.d	$s7, $s7, 2
	stx.w	$s5, $s6, $s7
.LBB7_4:                                #   in Loop: Header=BB7_2 Depth=1
	ldx.w	$s5, $a5, $t7
	ldx.w	$s6, $t6, $t7
	srai.d	$s7, $s5, 31
	xor	$s8, $s5, $s7
	sub.d	$s7, $s8, $s7
	mul.d	$s6, $s7, $s6
	add.d	$s6, $s6, $t0
	sra.w	$s6, $s6, $a7
	slti	$s5, $s5, 0
	srai.d	$s7, $s6, 31
	xor	$s6, $s6, $s7
	sub.d	$s6, $s6, $s7
	sub.d	$s7, $zero, $s6
	ldx.w	$s8, $t5, $t7
	masknez	$s6, $s6, $s5
	maskeqz	$s5, $s7, $s5
	or	$s5, $s5, $s6
	mul.d	$s6, $s5, $s8
	sll.w	$s6, $s6, $a6
	st.w	$s6, $t3, -8
	ld.w	$s6, $s3, %pc_lo12(si_frame_indicator)
	ld.w	$s7, $s4, %pc_lo12(sp2_frame_indicator)
	or	$s6, $s6, $s7
	bnez	$s6, .LBB7_6
# %bb.5:                                #   in Loop: Header=BB7_2 Depth=1
	ld.w	$s6, $a2, 180
	add.w	$s6, $t8, $s6
	ld.w	$s7, $a2, 176
	slli.d	$s6, $s6, 3
	ldx.d	$s6, $fp, $s6
	add.w	$s7, $t1, $s7
	slli.d	$s7, $s7, 2
	stx.w	$s5, $s6, $s7
.LBB7_6:                                #   in Loop: Header=BB7_2 Depth=1
	ld.w	$s5, $s0, 16
	ld.w	$s6, $s1, 16
	srai.d	$s7, $s5, 31
	xor	$s8, $s5, $s7
	sub.d	$s7, $s8, $s7
	mul.d	$s6, $s7, $s6
	add.d	$s6, $s6, $t0
	sra.w	$s6, $s6, $a7
	slti	$s5, $s5, 0
	srai.d	$s7, $s6, 31
	xor	$s6, $s6, $s7
	sub.d	$s6, $s6, $s7
	sub.d	$s7, $zero, $s6
	ld.w	$s8, $s2, 16
	masknez	$s6, $s6, $s5
	maskeqz	$s5, $s7, $s5
	or	$s5, $s5, $s6
	mul.d	$s6, $s5, $s8
	sll.w	$s6, $s6, $a6
	st.w	$s6, $t3, -4
	ld.w	$s6, $s3, %pc_lo12(si_frame_indicator)
	ld.w	$s7, $s4, %pc_lo12(sp2_frame_indicator)
	or	$s6, $s6, $s7
	bnez	$s6, .LBB7_8
# %bb.7:                                #   in Loop: Header=BB7_2 Depth=1
	ld.w	$s6, $a2, 180
	add.w	$s6, $t8, $s6
	ld.w	$s7, $a2, 176
	slli.d	$s6, $s6, 3
	ldx.d	$s6, $fp, $s6
	add.w	$s7, $t2, $s7
	slli.d	$s7, $s7, 2
	stx.w	$s5, $s6, $s7
.LBB7_8:                                #   in Loop: Header=BB7_2 Depth=1
	ld.w	$s0, $s0, 32
	ld.w	$s1, $s1, 32
	srai.d	$s5, $s0, 31
	xor	$s6, $s0, $s5
	sub.d	$s5, $s6, $s5
	mul.d	$s1, $s5, $s1
	add.d	$s1, $s1, $t0
	sra.w	$s1, $s1, $a7
	slti	$s0, $s0, 0
	srai.d	$s5, $s1, 31
	xor	$s1, $s1, $s5
	sub.d	$s1, $s1, $s5
	sub.d	$s5, $zero, $s1
	ld.w	$s2, $s2, 32
	masknez	$s1, $s1, $s0
	maskeqz	$s0, $s5, $s0
	or	$s0, $s0, $s1
	mul.d	$s1, $s0, $s2
	sll.w	$s1, $s1, $a6
	st.w	$s1, $t3, 0
	ld.w	$s1, $s3, %pc_lo12(si_frame_indicator)
	ld.w	$s2, $s4, %pc_lo12(sp2_frame_indicator)
	or	$s1, $s1, $s2
	bnez	$s1, .LBB7_1
# %bb.9:                                #   in Loop: Header=BB7_2 Depth=1
	ld.w	$s1, $a2, 180
	add.w	$s1, $t8, $s1
	ld.w	$s2, $a2, 176
	slli.d	$s1, $s1, 3
	ldx.d	$fp, $fp, $s1
	add.w	$s1, $t4, $s2
	slli.d	$s1, $s1, 2
	stx.w	$s0, $fp, $s1
	b	.LBB7_1
.LBB7_10:                               # %.preheader142
	ori	$a5, $a3, 848
	ldx.w	$a6, $a2, $a5
	ori	$t2, $a3, 856
	ldx.w	$a7, $a2, $t2
	ldptr.w	$t0, $a2, 13140
	ldptr.w	$t1, $a2, 13148
	add.d	$t4, $a7, $a6
	sub.d	$a6, $a6, $a7
	srai.d	$a7, $t0, 1
	sub.d	$a7, $a7, $t1
	srai.d	$t1, $t1, 1
	add.d	$t0, $t1, $t0
	add.d	$t3, $t0, $t4
	sub.d	$t0, $t4, $t0
	stptr.w	$t0, $a2, 13148
	add.d	$t4, $a7, $a6
	sub.d	$a7, $a6, $a7
	ori	$a6, $a3, 912
	ldx.w	$t0, $a2, $a6
	ori	$t1, $a3, 920
	ldx.w	$t1, $a2, $t1
	stptr.w	$a7, $a2, 13144
	ldptr.w	$a7, $a2, 13204
	ldptr.w	$t5, $a2, 13212
	add.d	$t6, $t1, $t0
	sub.d	$t0, $t0, $t1
	srai.d	$t1, $a7, 1
	sub.d	$t1, $t1, $t5
	srai.d	$t5, $t5, 1
	add.d	$a7, $t5, $a7
	add.w	$s0, $a7, $t6
	sub.d	$a7, $t6, $a7
	stptr.w	$a7, $a2, 13212
	add.w	$t8, $t1, $t0
	sub.d	$t0, $t0, $t1
	ori	$a7, $a3, 976
	ldx.w	$t1, $a2, $a7
	ori	$t5, $a3, 984
	ldx.w	$t5, $a2, $t5
	stptr.w	$t0, $a2, 13208
	ldptr.w	$t0, $a2, 13268
	ldptr.w	$t6, $a2, 13276
	add.d	$t7, $t5, $t1
	sub.d	$t5, $t1, $t5
	srai.d	$t1, $t0, 1
	sub.d	$s1, $t1, $t6
	srai.d	$t1, $t6, 1
	add.d	$t0, $t1, $t0
	add.d	$s2, $t0, $t7
	sub.d	$t0, $t7, $t0
	stptr.w	$t0, $a2, 13276
	add.d	$fp, $s1, $t5
	ori	$t1, $a3, 1040
	ldx.w	$t7, $a2, $t1
	ori	$t0, $a3, 1048
	ldx.w	$s3, $a2, $t0
	sub.d	$t6, $t5, $s1
	ldptr.w	$t5, $a2, 13332
	ldptr.w	$s1, $a2, 13340
	add.d	$s4, $s3, $t7
	sub.d	$t7, $t7, $s3
	srli.d	$s3, $t5, 1
	sub.d	$s3, $s3, $s1
	srli.d	$s1, $s1, 1
	add.d	$t5, $s1, $t5
	add.w	$s1, $t5, $s4
	sub.w	$t5, $s4, $t5
	add.w	$s4, $s3, $t7
	sub.w	$t7, $t7, $s3
	add.d	$s3, $s2, $t3
	sub.d	$s2, $t3, $s2
	srli.d	$t3, $s0, 1
	sub.d	$s5, $t3, $s1
	srli.d	$t3, $s1, 1
	add.d	$s0, $t3, $s0
	ldptr.w	$t3, $a2, 15520
	addi.d	$s1, $s3, 32
	add.w	$s3, $s1, $s0
	srai.d	$s6, $s3, 6
	srai.d	$s3, $s3, 63
	andn	$s3, $s6, $s3
	slt	$s6, $s3, $t3
	maskeqz	$s3, $s3, $s6
	masknez	$s6, $t3, $s6
	or	$s3, $s3, $s6
	stptr.w	$s3, $a2, 13136
	sub.w	$s0, $s1, $s0
	srai.d	$s1, $s0, 6
	srai.d	$s0, $s0, 63
	andn	$s0, $s1, $s0
	slt	$s1, $s0, $t3
	maskeqz	$s0, $s0, $s1
	masknez	$s1, $t3, $s1
	or	$s0, $s0, $s1
	stptr.w	$s0, $a2, 13328
	addi.d	$s0, $s2, 32
	add.w	$s1, $s0, $s5
	srai.d	$s2, $s1, 6
	srai.d	$s1, $s1, 63
	andn	$s1, $s2, $s1
	slt	$s2, $s1, $t3
	maskeqz	$s1, $s1, $s2
	masknez	$s2, $t3, $s2
	or	$s1, $s1, $s2
	stptr.w	$s1, $a2, 13200
	sub.w	$s0, $s0, $s5
	srai.d	$s1, $s0, 6
	srai.d	$s0, $s0, 63
	andn	$s0, $s1, $s0
	slt	$s1, $s0, $t3
	maskeqz	$s0, $s0, $s1
	masknez	$s1, $t3, $s1
	or	$s0, $s0, $s1
	stptr.w	$s0, $a2, 13264
	add.d	$s0, $fp, $t4
	sub.d	$fp, $t4, $fp
	srli.d	$t4, $t8, 1
	sub.d	$s1, $t4, $s4
	srli.d	$t4, $s4, 1
	add.d	$t8, $t4, $t8
	addi.d	$s0, $s0, 32
	add.w	$t4, $s0, $t8
	srai.d	$s2, $t4, 6
	srai.d	$t4, $t4, 63
	andn	$t4, $s2, $t4
	slt	$s2, $t4, $t3
	maskeqz	$t4, $t4, $s2
	masknez	$s2, $t3, $s2
	or	$t4, $t4, $s2
	stptr.w	$t4, $a2, 13140
	sub.w	$t8, $s0, $t8
	srai.d	$s0, $t8, 6
	srai.d	$t8, $t8, 63
	andn	$t8, $s0, $t8
	slt	$s0, $t8, $t3
	maskeqz	$t8, $t8, $s0
	masknez	$s0, $t3, $s0
	or	$t8, $t8, $s0
	stptr.w	$t8, $a2, 13332
	addi.d	$t8, $fp, 32
	add.w	$fp, $t8, $s1
	srai.d	$s0, $fp, 6
	srai.d	$fp, $fp, 63
	andn	$fp, $s0, $fp
	slt	$s0, $fp, $t3
	maskeqz	$fp, $fp, $s0
	masknez	$s0, $t3, $s0
	or	$fp, $fp, $s0
	stptr.w	$fp, $a2, 13204
	sub.w	$t8, $t8, $s1
	srai.d	$fp, $t8, 6
	srai.d	$t8, $t8, 63
	andn	$t8, $fp, $t8
	slt	$fp, $t8, $t3
	maskeqz	$t8, $t8, $fp
	masknez	$fp, $t3, $fp
	ldx.w	$t2, $a2, $t2
	or	$t8, $t8, $fp
	ldptr.w	$fp, $a2, 13208
	stptr.w	$t8, $a2, 13268
	add.d	$t8, $t6, $t2
	sub.d	$t2, $t2, $t6
	srli.d	$t6, $fp, 1
	sub.d	$s0, $t6, $t7
	srli.d	$t6, $t7, 1
	add.d	$t7, $t6, $fp
	addi.d	$t8, $t8, 32
	add.w	$t6, $t8, $t7
	srai.d	$fp, $t6, 6
	srai.d	$t6, $t6, 63
	andn	$t6, $fp, $t6
	slt	$fp, $t6, $t3
	maskeqz	$t6, $t6, $fp
	masknez	$fp, $t3, $fp
	or	$t6, $t6, $fp
	stptr.w	$t6, $a2, 13144
	sub.w	$t7, $t8, $t7
	srai.d	$t8, $t7, 6
	srai.d	$t7, $t7, 63
	andn	$t7, $t8, $t7
	slt	$t8, $t7, $t3
	maskeqz	$t7, $t7, $t8
	masknez	$t8, $t3, $t8
	or	$t7, $t7, $t8
	stptr.w	$t7, $a2, 13336
	addi.d	$t7, $t2, 32
	add.w	$t2, $t7, $s0
	srai.d	$t8, $t2, 6
	srai.d	$t2, $t2, 63
	andn	$t2, $t8, $t2
	slt	$t8, $t2, $t3
	maskeqz	$t2, $t2, $t8
	masknez	$t8, $t3, $t8
	or	$t2, $t2, $t8
	stptr.w	$t2, $a2, 13208
	sub.w	$t7, $t7, $s0
	srai.d	$t8, $t7, 6
	srai.d	$t7, $t7, 63
	andn	$t7, $t8, $t7
	slt	$t8, $t7, $t3
	maskeqz	$t7, $t7, $t8
	masknez	$t8, $t3, $t8
	ldx.w	$fp, $a2, $a4
	ori	$a4, $a3, 988
	ldx.w	$s0, $a2, $a4
	or	$a4, $t7, $t8
	ldptr.w	$t7, $a2, 13212
	stptr.w	$a4, $a2, 13272
	add.d	$t8, $s0, $fp
	sub.d	$fp, $fp, $s0
	srli.d	$s0, $t7, 1
	sub.d	$s0, $s0, $t5
	srli.d	$t5, $t5, 1
	add.d	$t7, $t5, $t7
	addi.d	$t8, $t8, 32
	add.w	$t5, $t8, $t7
	srai.d	$s1, $t5, 6
	srai.d	$t5, $t5, 63
	andn	$t5, $s1, $t5
	slt	$s1, $t5, $t3
	maskeqz	$t5, $t5, $s1
	masknez	$s1, $t3, $s1
	or	$t5, $t5, $s1
	stptr.w	$t5, $a2, 13148
	sub.w	$t7, $t8, $t7
	srai.d	$t8, $t7, 6
	srai.d	$t7, $t7, 63
	andn	$t7, $t8, $t7
	slt	$t8, $t7, $t3
	maskeqz	$t7, $t7, $t8
	masknez	$t3, $t3, $t8
	or	$t3, $t7, $t3
	stptr.w	$t3, $a2, 13340
	ldptr.w	$t8, $a2, 15520
	addi.d	$fp, $fp, 32
	add.w	$t7, $fp, $s0
	srai.d	$s1, $t7, 6
	srai.d	$t7, $t7, 63
	andn	$t7, $s1, $t7
	slt	$s1, $t7, $t8
	maskeqz	$t7, $t7, $s1
	masknez	$s1, $t8, $s1
	or	$t7, $t7, $s1
	stptr.w	$t7, $a2, 13212
	sub.w	$fp, $fp, $s0
	srai.d	$s0, $fp, 6
	srai.d	$fp, $fp, 63
	pcalau12i	$s1, %got_pc_hi20(enc_picture)
	ld.d	$s1, $s1, %got_pc_lo12(enc_picture)
	andn	$fp, $s0, $fp
	slt	$s0, $fp, $t8
	maskeqz	$fp, $fp, $s0
	ld.d	$s1, $s1, 0
	ld.w	$s2, $a2, 180
	masknez	$t8, $t8, $s0
	or	$t8, $fp, $t8
	ldptr.d	$fp, $s1, 6440
	add.w	$a1, $a1, $s2
	ld.w	$s0, $a2, 176
	slli.d	$s1, $a1, 3
	ldx.d	$s1, $fp, $s1
	ldx.h	$a5, $a2, $a5
	stptr.w	$t8, $a2, 13276
	add.w	$a0, $a0, $s0
	slli.d	$s0, $a0, 1
	stx.h	$a5, $s1, $s0
	addi.w	$a5, $a0, 1
	slli.d	$a5, $a5, 1
	stx.h	$t4, $s1, $a5
	addi.w	$t4, $a0, 2
	slli.d	$t4, $t4, 1
	stx.h	$t6, $s1, $t4
	addi.w	$a0, $a0, 3
	addi.w	$t6, $a1, 1
	slli.d	$t6, $t6, 3
	ldx.d	$t6, $fp, $t6
	ldx.h	$a6, $a2, $a6
	ori	$s2, $a3, 916
	ldx.h	$s2, $a2, $s2
	slli.d	$a0, $a0, 1
	stx.h	$t5, $s1, $a0
	stx.h	$a6, $t6, $s0
	stx.h	$s2, $t6, $a5
	addi.w	$a6, $a1, 2
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $fp, $a6
	ldx.h	$a7, $a2, $a7
	ori	$t5, $a3, 980
	ldx.h	$t5, $a2, $t5
	stx.h	$t2, $t6, $t4
	stx.h	$t7, $t6, $a0
	stx.h	$a7, $a6, $s0
	stx.h	$t5, $a6, $a5
	stx.h	$a4, $a6, $t4
	addi.w	$a1, $a1, 3
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $fp, $a1
	ldx.h	$a4, $a2, $t1
	ori	$a3, $a3, 1044
	ldx.h	$a3, $a2, $a3
	ldx.h	$a2, $a2, $t0
	stx.h	$t8, $a6, $a0
	stx.h	$a4, $a1, $s0
	stx.h	$a3, $a1, $a5
	stx.h	$a2, $a1, $t4
	stx.h	$t3, $a1, $a0
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end7:
	.size	copyblock_sp, .Lfunc_end7-copyblock_sp
                                        # -- End function
	.globl	writeIPCMBytes                  # -- Begin function writeIPCMBytes
	.p2align	5
	.type	writeIPCMBytes,@function
writeIPCMBytes:                         # @writeIPCMBytes
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
	move	$fp, $a0
	move	$s4, $zero
	move	$s0, $zero
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s1, $a0, %got_pc_lo12(img)
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$s2, $a0, %got_pc_lo12(enc_picture)
	ori	$s5, $zero, 16
	lu12i.w	$s3, 3
	ori	$s6, $s3, 3156
	.p2align	4, , 16
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s2, 0
	ld.w	$a2, $a0, 180
	ldptr.d	$a1, $a1, 6440
	add.d	$a2, $s4, $a2
	slli.d	$s7, $a2, 3
	ld.w	$a2, $a0, 176
	ldx.d	$a1, $a1, $s7
	ldx.w	$a0, $a0, $s6
	slli.d	$a2, $a2, 1
	ldx.hu	$a1, $a1, $a2
	st.w	$a0, $sp, 12
	add.d	$s0, $a0, $s0
	st.w	$a1, $sp, 20
	addi.d	$a0, $sp, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a1, $s1, 0
	ldx.d	$a0, $a0, $s7
	ld.w	$a2, $a1, 176
	ldx.w	$a1, $a1, $s6
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 2
	st.w	$a1, $sp, 12
	add.d	$s0, $a1, $s0
	st.w	$a0, $sp, 20
	addi.d	$a0, $sp, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a1, $s1, 0
	ldx.d	$a0, $a0, $s7
	ld.w	$a2, $a1, 176
	ldx.w	$a1, $a1, $s6
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 4
	st.w	$a1, $sp, 12
	add.d	$s0, $a1, $s0
	st.w	$a0, $sp, 20
	addi.d	$a0, $sp, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a1, $s1, 0
	ldx.d	$a0, $a0, $s7
	ld.w	$a2, $a1, 176
	ldx.w	$a1, $a1, $s6
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 6
	st.w	$a1, $sp, 12
	add.d	$s0, $a1, $s0
	st.w	$a0, $sp, 20
	addi.d	$a0, $sp, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a1, $s1, 0
	ldx.d	$a0, $a0, $s7
	ld.w	$a2, $a1, 176
	ldx.w	$a1, $a1, $s6
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 8
	st.w	$a1, $sp, 12
	add.d	$s0, $a1, $s0
	st.w	$a0, $sp, 20
	addi.d	$a0, $sp, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a1, $s1, 0
	ldx.d	$a0, $a0, $s7
	ld.w	$a2, $a1, 176
	ldx.w	$a1, $a1, $s6
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 10
	st.w	$a1, $sp, 12
	add.d	$s0, $a1, $s0
	st.w	$a0, $sp, 20
	addi.d	$a0, $sp, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a1, $s1, 0
	ldx.d	$a0, $a0, $s7
	ld.w	$a2, $a1, 176
	ldx.w	$a1, $a1, $s6
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 12
	st.w	$a1, $sp, 12
	add.d	$s0, $a1, $s0
	st.w	$a0, $sp, 20
	addi.d	$a0, $sp, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a1, $s1, 0
	ldx.d	$a0, $a0, $s7
	ld.w	$a2, $a1, 176
	ldx.w	$a1, $a1, $s6
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 14
	st.w	$a1, $sp, 12
	add.d	$s0, $a1, $s0
	st.w	$a0, $sp, 20
	addi.d	$a0, $sp, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a1, $s1, 0
	ldx.d	$a0, $a0, $s7
	ld.w	$a2, $a1, 176
	ldx.w	$a1, $a1, $s6
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 16
	st.w	$a1, $sp, 12
	add.d	$s0, $a1, $s0
	st.w	$a0, $sp, 20
	addi.d	$a0, $sp, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a1, $s1, 0
	ldx.d	$a0, $a0, $s7
	ld.w	$a2, $a1, 176
	ldx.w	$a1, $a1, $s6
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 18
	st.w	$a1, $sp, 12
	add.d	$s0, $a1, $s0
	st.w	$a0, $sp, 20
	addi.d	$a0, $sp, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a1, $s1, 0
	ldx.d	$a0, $a0, $s7
	ld.w	$a2, $a1, 176
	ldx.w	$a1, $a1, $s6
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 20
	st.w	$a1, $sp, 12
	add.d	$s0, $a1, $s0
	st.w	$a0, $sp, 20
	addi.d	$a0, $sp, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a1, $s1, 0
	ldx.d	$a0, $a0, $s7
	ld.w	$a2, $a1, 176
	ldx.w	$a1, $a1, $s6
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 22
	st.w	$a1, $sp, 12
	add.d	$s0, $a1, $s0
	st.w	$a0, $sp, 20
	addi.d	$a0, $sp, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a1, $s1, 0
	ldx.d	$a0, $a0, $s7
	ld.w	$a2, $a1, 176
	ldx.w	$a1, $a1, $s6
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 24
	st.w	$a1, $sp, 12
	add.d	$s0, $a1, $s0
	st.w	$a0, $sp, 20
	addi.d	$a0, $sp, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a1, $s1, 0
	ldx.d	$a0, $a0, $s7
	ld.w	$a2, $a1, 176
	ldx.w	$a1, $a1, $s6
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 26
	st.w	$a1, $sp, 12
	add.d	$s0, $a1, $s0
	st.w	$a0, $sp, 20
	addi.d	$a0, $sp, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a1, $s1, 0
	ldx.d	$a0, $a0, $s7
	ld.w	$a2, $a1, 176
	ldx.w	$a1, $a1, $s6
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 28
	st.w	$a1, $sp, 12
	add.d	$s0, $a1, $s0
	st.w	$a0, $sp, 20
	addi.d	$a0, $sp, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a1, $s1, 0
	ldx.d	$a0, $a0, $s7
	ld.w	$a2, $a1, 176
	ldx.w	$a1, $a1, $s6
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 30
	st.w	$a1, $sp, 12
	add.w	$s0, $a1, $s0
	st.w	$a0, $sp, 20
	addi.d	$a0, $sp, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	addi.w	$s5, $s5, -1
	addi.d	$s4, $s4, 1
	bnez	$s5, .LBB8_1
# %bb.2:                                # %.preheader26
	ld.d	$a0, $s1, 0
	ldptr.w	$a1, $a0, 15548
	blez	$a1, .LBB8_16
# %bb.3:                                # %.lr.ph35
	ldptr.w	$a1, $a0, 15544
	ori	$s4, $zero, 1
	blt	$a1, $s4, .LBB8_10
# %bb.4:                                # %.lr.ph35.split.preheader
	move	$s5, $zero
	ori	$s6, $s3, 3160
	b	.LBB8_6
	.p2align	4, , 16
.LBB8_5:                                # %._crit_edge
                                        #   in Loop: Header=BB8_6 Depth=1
	ldptr.w	$a1, $a0, 15548
	addi.w	$s5, $s5, 1
	bge	$s5, $a1, .LBB8_9
.LBB8_6:                                # %.lr.ph35.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_8 Depth 2
	ldptr.w	$a1, $a0, 15544
	blt	$a1, $s4, .LBB8_5
# %bb.7:                                # %.lr.ph
                                        #   in Loop: Header=BB8_6 Depth=1
	ld.w	$a1, $a0, 188
	move	$s7, $zero
	move	$s8, $zero
	add.w	$a1, $a1, $s5
	slli.d	$s3, $a1, 3
	.p2align	4, , 16
.LBB8_8:                                #   Parent Loop BB8_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s2, 0
	ldptr.d	$a1, $a1, 6472
	ld.d	$a1, $a1, 0
	ld.w	$a2, $a0, 184
	ldx.d	$a1, $a1, $s3
	ldx.w	$a0, $a0, $s6
	add.d	$a2, $s7, $a2
	slli.d	$a2, $a2, 1
	ldx.hu	$a1, $a1, $a2
	st.w	$a0, $sp, 12
	add.w	$s0, $a0, $s0
	st.w	$a1, $sp, 20
	addi.d	$a0, $sp, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ldptr.w	$a1, $a0, 15544
	addi.w	$s8, $s8, 1
	addi.d	$s7, $s7, 1
	blt	$s8, $a1, .LBB8_8
	b	.LBB8_5
.LBB8_9:                                # %._crit_edge36
	ori	$a2, $zero, 1
	lu12i.w	$s3, 3
	blt	$a1, $a2, .LBB8_16
.LBB8_10:                               # %.lr.ph35.1
	ldptr.w	$a1, $a0, 15544
	blt	$a1, $s4, .LBB8_16
# %bb.11:                               # %.lr.ph35.split.1.preheader
	move	$s4, $zero
	ori	$s5, $zero, 1
	ori	$s3, $s3, 3160
	b	.LBB8_13
	.p2align	4, , 16
.LBB8_12:                               # %._crit_edge.1
                                        #   in Loop: Header=BB8_13 Depth=1
	ldptr.w	$a1, $a0, 15548
	addi.w	$s4, $s4, 1
	bge	$s4, $a1, .LBB8_16
.LBB8_13:                               # %.lr.ph35.split.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_15 Depth 2
	ldptr.w	$a1, $a0, 15544
	blt	$a1, $s5, .LBB8_12
# %bb.14:                               # %.lr.ph.1
                                        #   in Loop: Header=BB8_13 Depth=1
	ld.w	$a1, $a0, 188
	move	$s6, $zero
	move	$s7, $zero
	add.w	$a1, $a1, $s4
	slli.d	$s8, $a1, 3
	.p2align	4, , 16
.LBB8_15:                               #   Parent Loop BB8_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s2, 0
	ldptr.d	$a1, $a1, 6472
	ld.d	$a1, $a1, 8
	ld.w	$a2, $a0, 184
	ldx.d	$a1, $a1, $s8
	ldx.w	$a0, $a0, $s3
	add.d	$a2, $s6, $a2
	slli.d	$a2, $a2, 1
	ldx.hu	$a1, $a1, $a2
	st.w	$a0, $sp, 12
	add.w	$s0, $a0, $s0
	st.w	$a1, $sp, 20
	addi.d	$a0, $sp, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(writeSyntaxElement2Buf_Fixed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ldptr.w	$a1, $a0, 15544
	addi.w	$s7, $s7, 1
	addi.d	$s6, $s6, 1
	blt	$s7, $a1, .LBB8_15
	b	.LBB8_12
.LBB8_16:                               # %.split.us
	move	$a0, $s0
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
	.size	writeIPCMBytes, .Lfunc_end8-writeIPCMBytes
                                        # -- End function
	.globl	writePCMByteAlign               # -- Begin function writePCMByteAlign
	.p2align	5
	.type	writePCMByteAlign,@function
writePCMByteAlign:                      # @writePCMByteAlign
# %bb.0:
	ld.w	$a2, $a0, 4
	ori	$a1, $zero, 7
	blt	$a1, $a2, .LBB9_2
# %bb.1:
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	pcalau12i	$a3, %got_pc_hi20(stats)
	ld.d	$a3, $a3, %got_pc_lo12(stats)
	ld.d	$a1, $a1, 0
	ld.b	$a4, $a0, 8
	ld.d	$a3, $a3, 0
	ld.w	$a5, $a1, 20
	ori	$a6, $zero, 8
	sub.w	$a1, $a6, $a2
	sll.w	$a4, $a4, $a2
	alsl.d	$a3, $a5, $a3, 3
	ld.d	$a5, $a3, 1960
	ori	$a7, $zero, 255
	srl.w	$a7, $a7, $a1
	or	$a4, $a4, $a7
	add.d	$a2, $a5, $a2
	ld.w	$a5, $a0, 0
	st.d	$a2, $a3, 1960
	ld.d	$a2, $a0, 32
	st.b	$a4, $a0, 8
	addi.d	$a3, $a5, 1
	st.w	$a3, $a0, 0
	stx.b	$a4, $a2, $a5
	st.w	$a6, $a0, 4
	move	$a0, $a1
	ret
.LBB9_2:
	move	$a0, $zero
	ret
.Lfunc_end9:
	.size	writePCMByteAlign, .Lfunc_end9-writePCMByteAlign
                                        # -- End function
	.globl	dct_luma_sp2                    # -- Begin function dct_luma_sp2
	.p2align	5
	.type	dct_luma_sp2,@function
dct_luma_sp2:                           # @dct_luma_sp2
# %bb.0:                                # %.preheader188
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
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a4, $a3, %got_pc_lo12(img)
	move	$s2, $a1
	move	$t0, $zero
	move	$a7, $zero
	st.d	$zero, $sp, 8                   # 8-byte Folded Spill
	srli.d	$a5, $a0, 2
	srli.d	$a6, $a1, 2
	ld.d	$a4, $a4, 0
	addi.w	$t1, $zero, -2
	lu52i.d	$t1, $t1, 511
	and	$a6, $a6, $t1
	ldptr.d	$t1, $a4, 14160
	srli.d	$t2, $a0, 3
	add.d	$a6, $a6, $t2
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $t1, $a6
	bstrpick.d	$t1, $a1, 2, 2
	bstrins.d	$a5, $t1, 63, 1
	slli.d	$a5, $a5, 3
	ldx.d	$a3, $a6, $a5
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	ld.w	$t2, $a4, 40
	ld.w	$fp, $a4, 180
	lu12i.w	$a5, 174762
	pcalau12i	$t1, %pc_hi20(lrec)
	ld.d	$t3, $t1, %pc_lo12(lrec)
	add.w	$t1, $a1, $fp
	ld.w	$t5, $a4, 176
	slli.d	$t1, $t1, 3
	ldx.d	$t6, $t3, $t1
	ori	$a5, $a5, 2731
	add.w	$t1, $a0, $t5
	slli.d	$s0, $t1, 2
	ldx.w	$t1, $t6, $s0
	mul.d	$a5, $t2, $a5
	srli.d	$t4, $a5, 63
	srli.d	$a5, $a5, 32
	stptr.w	$t1, $a4, 13136
	addi.d	$s1, $a0, 1
	add.w	$t1, $s1, $t5
	slli.d	$s4, $t1, 2
	ldx.w	$t7, $t6, $s4
	add.d	$t1, $a5, $t4
	lu12i.w	$a3, 3
	ori	$t4, $a3, 336
	stptr.w	$t7, $a4, 13140
	addi.d	$a3, $a0, 2
	add.w	$t7, $a3, $t5
	slli.d	$s5, $t7, 2
	ldx.w	$t7, $t6, $s5
	add.d	$t4, $a4, $t4
	slli.d	$t8, $a1, 5
	add.d	$s6, $t4, $t8
	stptr.w	$t7, $a4, 13144
	move	$a6, $a0
	addi.d	$s3, $a0, 3
	add.w	$t5, $s3, $t5
	slli.d	$s7, $t5, 2
	ldx.w	$t7, $t6, $s7
	slli.d	$t5, $a0, 1
	ldx.hu	$t8, $s6, $t5
	addi.d	$t6, $t5, 2
	stptr.w	$t7, $a4, 13148
	addi.d	$s8, $a1, 1
	add.w	$t7, $fp, $s8
	slli.d	$t7, $t7, 3
	ldx.d	$ra, $t3, $t7
	ldx.hu	$a5, $s6, $t6
	addi.d	$t7, $t5, 4
	ldx.hu	$a1, $s6, $t7
	ldx.w	$a0, $ra, $s0
	st.w	$t8, $sp, 40
	st.w	$a5, $sp, 56
	st.w	$a1, $sp, 72
	stptr.w	$a0, $a4, 13200
	addi.d	$t8, $t5, 6
	ldx.hu	$a0, $s6, $t8
	ldx.w	$a1, $ra, $s4
	slli.d	$a5, $s8, 5
	add.d	$a5, $t4, $a5
	ldx.hu	$s4, $a5, $t5
	stptr.w	$a1, $a4, 13204
	ldx.w	$a1, $ra, $s5
	st.w	$a0, $sp, 88
	st.w	$s4, $sp, 44
	ldx.hu	$a0, $a5, $t6
	stptr.w	$a1, $a4, 13208
	ldx.w	$a1, $ra, $s7
	addi.d	$s4, $s2, 2
	add.w	$fp, $fp, $s4
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $t3, $fp
	ld.w	$s5, $a4, 180
	ldx.hu	$s6, $a5, $t7
	stptr.w	$a1, $a4, 13212
	ldx.w	$a1, $fp, $s0
	add.w	$fp, $s5, $s4
	ld.w	$s0, $a4, 176
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $t3, $fp
	stptr.w	$a1, $a4, 13264
	add.w	$a1, $s1, $s0
	slli.d	$a1, $a1, 2
	ldx.w	$s1, $fp, $a1
	st.w	$a0, $sp, 60
	st.w	$s6, $sp, 76
	ldx.hu	$a0, $a5, $t8
	stptr.w	$s1, $a4, 13268
	add.w	$a5, $a3, $s0
	slli.d	$a5, $a5, 2
	ldx.w	$s1, $fp, $a5
	st.w	$a0, $sp, 92
	slli.d	$a0, $s4, 5
	add.d	$a0, $t4, $a0
	stptr.w	$s1, $a4, 13272
	add.w	$s1, $s3, $s0
	slli.d	$s1, $s1, 2
	ldx.w	$fp, $fp, $s1
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	addi.d	$s2, $s2, 3
	add.w	$s3, $s5, $s2
	slli.d	$s3, $s3, 3
	ldx.d	$t3, $t3, $s3
	stptr.w	$fp, $a4, 13276
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	add.w	$fp, $a6, $s0
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	slli.d	$fp, $fp, 2
	ldx.w	$fp, $t3, $fp
	ldx.hu	$s0, $a0, $t5
	ldx.hu	$s3, $a0, $t6
	ldx.hu	$s4, $a0, $t7
	stptr.w	$fp, $a4, 13328
	ldx.w	$a1, $t3, $a1
	st.w	$s0, $sp, 48
	st.w	$s3, $sp, 64
	st.w	$s4, $sp, 80
	stptr.w	$a1, $a4, 13332
	ldx.w	$a1, $t3, $a5
	ldx.hu	$a0, $a0, $t8
	slli.d	$a5, $s2, 5
	add.d	$a5, $t4, $a5
	stptr.w	$a1, $a4, 13336
	ldx.w	$a1, $t3, $s1
	ldx.hu	$t3, $a5, $t5
	ldx.hu	$t4, $a5, $t6
	ldx.hu	$t5, $a5, $t7
	stptr.w	$a1, $a4, 13340
	ldx.hu	$a1, $a5, $t8
	slli.d	$a5, $t1, 2
	alsl.d	$a5, $t1, $a5, 1
	ld.w	$t6, $sp, 40
	ld.w	$t7, $sp, 88
	ld.w	$t8, $sp, 56
	ld.w	$fp, $sp, 72
	sub.w	$t2, $t2, $a5
	add.w	$a5, $t7, $t6
	sub.w	$t6, $t6, $t7
	add.w	$t7, $fp, $t8
	sub.w	$t8, $t8, $fp
	add.d	$s1, $t7, $a5
	sub.d	$t7, $a5, $t7
	alsl.d	$a5, $t6, $t8, 1
	slli.d	$t8, $t8, 1
	sub.d	$t6, $t6, $t8
	ld.w	$t8, $sp, 44
	ld.w	$fp, $sp, 92
	st.w	$t6, $sp, 88
	ld.w	$t6, $sp, 60
	ld.w	$s0, $sp, 76
	add.d	$s2, $fp, $t8
	sub.d	$t8, $t8, $fp
	addi.w	$s3, $t8, 0
	add.d	$fp, $s0, $t6
	sub.d	$t6, $t6, $s0
	addi.w	$s0, $t6, 0
	add.d	$s4, $fp, $s2
	sub.d	$fp, $s2, $fp
	alsl.d	$t6, $s3, $t6, 1
	slli.d	$s0, $s0, 1
	ld.w	$s2, $sp, 48
	ld.w	$s3, $sp, 64
	ld.w	$s5, $sp, 80
	sub.d	$t8, $t8, $s0
	add.d	$s0, $s2, $a0
	sub.d	$a0, $s2, $a0
	add.d	$s2, $s5, $s3
	sub.d	$s3, $s3, $s5
	add.d	$s5, $s2, $s0
	sub.d	$s2, $s0, $s2
	addi.w	$s0, $a0, 0
	alsl.d	$s6, $s0, $s3, 1
	addi.w	$s0, $s3, 0
	slli.d	$s0, $s0, 1
	sub.d	$s0, $a0, $s0
	add.d	$a0, $a1, $t3
	sub.d	$a1, $t3, $a1
	add.d	$t3, $t5, $t4
	sub.d	$t4, $t4, $t5
	add.d	$t5, $t3, $a0
	sub.d	$a0, $a0, $t3
	alsl.d	$t3, $a1, $t4, 1
	slli.d	$t4, $t4, 1
	sub.d	$a1, $a1, $t4
	add.d	$t4, $t5, $s1
	sub.d	$t5, $s1, $t5
	add.d	$s1, $s5, $s4
	sub.d	$s3, $s4, $s5
	add.d	$s4, $s1, $t4
	st.w	$s4, $sp, 40
	sub.d	$t4, $t4, $s1
	st.w	$t4, $sp, 48
	alsl.d	$t4, $t5, $s3, 1
	st.w	$t4, $sp, 44
	slli.d	$t4, $s3, 1
	sub.d	$t4, $t5, $t4
	st.w	$t4, $sp, 52
	add.d	$t4, $t3, $a5
	sub.d	$a5, $a5, $t3
	add.d	$t3, $s6, $t6
	sub.d	$t6, $t6, $s6
	add.d	$t5, $t3, $t4
	st.w	$t5, $sp, 56
	sub.d	$t5, $t4, $t3
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t3, $a6, 0
	ld.d	$t4, $a6, 8
	st.w	$t5, $sp, 64
	alsl.d	$a6, $a5, $t6, 1
	st.w	$a6, $sp, 60
	addi.d	$t5, $t1, 15
	slli.d	$a6, $t6, 1
	sub.d	$a5, $a5, $a6
	ori	$t6, $zero, 1
	st.w	$a5, $sp, 68
	add.d	$a5, $a0, $t7
	sub.d	$a0, $t7, $a0
	add.d	$a6, $s2, $fp
	sub.d	$t7, $fp, $s2
	add.d	$fp, $a6, $a5
	st.w	$fp, $sp, 72
	sll.w	$fp, $t6, $t5
	sub.d	$a5, $a5, $a6
	lu12i.w	$a6, 3
	ori	$s1, $a6, 848
	st.w	$a5, $sp, 80
	alsl.d	$a5, $a0, $t7, 1
	st.w	$a5, $sp, 76
	slli.d	$a5, $t7, 1
	ld.w	$a6, $sp, 88
	sub.d	$a0, $a0, $a5
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	add.d	$t7, $a4, $s1
	st.w	$a0, $sp, 84
	add.d	$a0, $a1, $a6
	sub.d	$a1, $a6, $a1
	add.d	$a5, $s0, $t8
	sub.d	$a6, $t8, $s0
	add.d	$t8, $a5, $a0
	st.w	$t8, $sp, 88
	sub.d	$a0, $a0, $a5
	st.w	$a0, $sp, 96
	alsl.d	$a0, $a1, $a6, 1
	st.w	$a0, $sp, 92
	slli.d	$a0, $a6, 1
	sub.d	$a0, $a1, $a0
	st.w	$a0, $sp, 100
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	bstrpick.d	$a1, $fp, 31, 31
	add.w	$a1, $fp, $a1
	srai.d	$t8, $a1, 1
	ld.d	$fp, $a0, 0
	addi.d	$s2, $zero, -1
	addi.d	$s0, $sp, 40
	ori	$s1, $zero, 32
	lu12i.w	$a0, 244
	ori	$a6, $a0, 575
	b	.LBB10_3
	.p2align	4, , 16
.LBB10_1:                               #   in Loop: Header=BB10_3 Depth=1
	ld.w	$a0, $a2, 0
	add.d	$a0, $a0, $s3
	st.w	$a0, $a2, 0
	slti	$a0, $ra, 0
	sub.d	$a1, $zero, $a3
	masknez	$a3, $a3, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a3
	slli.d	$a1, $a7, 2
	stx.w	$a0, $t3, $a1
	stx.w	$s2, $t4, $a1
	addi.w	$a7, $a7, 1
	addi.d	$s2, $zero, -1
	ori	$a3, $zero, 1
.LBB10_2:                               #   in Loop: Header=BB10_3 Depth=1
	pcalau12i	$a0, %pc_hi20(dequant_coef)
	addi.d	$a0, $a0, %pc_lo12(dequant_coef)
	add.d	$a0, $a0, $s6
	alsl.d	$a0, $s4, $a0, 4
	ldx.w	$a0, $a0, $s5
	alsl.d	$a1, $s4, $s7, 2
	mul.d	$a0, $a0, $s8
	sll.w	$a0, $a0, $t1
	addi.d	$t0, $t0, 2
	st.w	$a0, $a1, 0
	beq	$t0, $s1, .LBB10_10
.LBB10_3:                               # =>This Inner Loop Header: Depth=1
	ldptr.w	$a0, $a4, 15312
	pcalau12i	$a1, %pc_hi20(FIELD_SCAN)
	addi.d	$s4, $a1, %pc_lo12(FIELD_SCAN)
	bnez	$a0, .LBB10_7
# %bb.4:                                #   in Loop: Header=BB10_3 Depth=1
	pcalau12i	$a0, %pc_hi20(mb_adaptive)
	ld.w	$a0, $a0, %pc_lo12(mb_adaptive)
	beqz	$a0, .LBB10_6
# %bb.5:                                #   in Loop: Header=BB10_3 Depth=1
	ldptr.w	$a0, $a4, 14464
	bnez	$a0, .LBB10_7
.LBB10_6:                               #   in Loop: Header=BB10_3 Depth=1
	pcalau12i	$a0, %pc_hi20(SNGL_SCAN)
	addi.d	$s4, $a0, %pc_lo12(SNGL_SCAN)
.LBB10_7:                               #   in Loop: Header=BB10_3 Depth=1
	add.d	$a0, $s4, $t0
	ldx.bu	$s4, $s4, $t0
	ld.bu	$a0, $a0, 1
	alsl.d	$a1, $s4, $s0, 4
	slli.d	$s5, $a0, 2
	ldx.w	$a1, $a1, $s5
	slli.d	$s6, $t2, 6
	pcalau12i	$a5, %pc_hi20(quant_coef)
	addi.d	$a5, $a5, %pc_lo12(quant_coef)
	add.d	$a5, $a5, $s6
	alsl.d	$a5, $s4, $a5, 4
	ldx.w	$a5, $a5, $s5
	srai.d	$s3, $a1, 31
	xor	$s7, $a1, $s3
	sub.d	$s3, $s7, $s3
	mul.d	$a5, $s3, $a5
	add.d	$a5, $a5, $t8
	sra.w	$a5, $a5, $t5
	slli.d	$a0, $a0, 6
	add.d	$s7, $t7, $a0
	slli.d	$a0, $s4, 2
	ldx.w	$s8, $s7, $a0
	slti	$a0, $a1, 0
	srai.d	$a1, $a5, 31
	xor	$a5, $a5, $a1
	sub.d	$a1, $a5, $a1
	sub.d	$a5, $zero, $a1
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a5, $a0
	or	$a0, $a1, $a0
	add.w	$ra, $a0, $s8
	addi.w	$s2, $s2, 1
	beqz	$ra, .LBB10_2
# %bb.8:                                #   in Loop: Header=BB10_3 Depth=1
	srai.d	$a0, $ra, 31
	xor	$a1, $ra, $a0
	sub.w	$a3, $a1, $a0
	move	$s3, $a6
	bltu	$t6, $a3, .LBB10_1
# %bb.9:                                #   in Loop: Header=BB10_3 Depth=1
	ldptr.w	$a0, $fp, 4180
	pcalau12i	$a1, %pc_hi20(COEFF_COST)
	addi.d	$a1, $a1, %pc_lo12(COEFF_COST)
	alsl.d	$a0, $a0, $a1, 4
	ldx.bu	$s3, $a0, $s2
	b	.LBB10_1
.LBB10_10:                              # %.preheader182
	slli.d	$a0, $a7, 2
	stx.w	$zero, $t3, $a0
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ldx.w	$a0, $a4, $s7
	lu12i.w	$s6, 3
	ori	$a2, $s6, 856
	ldx.w	$a1, $a4, $a2
	ldptr.w	$a5, $a4, 13140
	ldptr.w	$a6, $a4, 13148
	add.d	$a7, $a1, $a0
	sub.d	$a0, $a0, $a1
	srai.d	$a1, $a5, 1
	sub.d	$a1, $a1, $a6
	srai.d	$a6, $a6, 1
	add.d	$a5, $a6, $a5
	add.d	$t4, $a5, $a7
	sub.d	$a5, $a7, $a5
	stptr.w	$a5, $a4, 13148
	add.d	$fp, $a1, $a0
	sub.d	$a0, $a0, $a1
	ori	$t1, $s6, 912
	ldx.w	$a1, $a4, $t1
	ori	$a7, $s6, 920
	ldx.w	$a5, $a4, $a7
	stptr.w	$a0, $a4, 13144
	ldptr.w	$a0, $a4, 13204
	ldptr.w	$a6, $a4, 13212
	add.d	$t0, $a5, $a1
	sub.d	$a1, $a1, $a5
	srai.d	$a5, $a0, 1
	sub.d	$a5, $a5, $a6
	srai.d	$a6, $a6, 1
	add.d	$a0, $a6, $a0
	add.w	$a6, $a0, $t0
	sub.d	$a0, $t0, $a0
	stptr.w	$a0, $a4, 13212
	add.w	$s1, $a5, $a1
	ori	$t2, $s6, 976
	ldx.w	$a0, $a4, $t2
	ori	$t0, $s6, 984
	ldx.w	$t0, $a4, $t0
	sub.w	$t7, $a1, $a5
	ldptr.w	$a1, $a4, 13268
	ldptr.w	$a5, $a4, 13276
	add.d	$t3, $t0, $a0
	sub.d	$a0, $a0, $t0
	srai.d	$t0, $a1, 1
	sub.d	$t6, $t0, $a5
	srai.d	$a5, $a5, 1
	add.d	$a1, $a5, $a1
	add.d	$a5, $a1, $t3
	sub.d	$t5, $t3, $a1
	stptr.w	$t5, $a4, 13276
	add.d	$s2, $t6, $a0
	ori	$t3, $s6, 1040
	ldx.w	$a1, $a4, $t3
	ori	$t0, $s6, 1048
	ldx.w	$s0, $a4, $t0
	sub.d	$t8, $a0, $t6
	ldptr.w	$a0, $a4, 13332
	ldptr.w	$t6, $a4, 13340
	add.d	$s3, $s0, $a1
	sub.d	$a1, $a1, $s0
	srli.d	$s0, $a0, 1
	sub.d	$s0, $s0, $t6
	srli.d	$t6, $t6, 1
	add.d	$a0, $t6, $a0
	add.w	$s4, $a0, $s3
	sub.w	$t6, $s3, $a0
	add.w	$a0, $s0, $a1
	sub.w	$s0, $a1, $s0
	add.d	$a1, $a5, $t4
	sub.d	$a5, $t4, $a5
	srli.d	$t4, $a6, 1
	sub.d	$s3, $t4, $s4
	srli.d	$t4, $s4, 1
	add.d	$a6, $t4, $a6
	addi.d	$a1, $a1, 32
	add.w	$t4, $a1, $a6
	srai.d	$s4, $t4, 6
	srai.d	$t4, $t4, 63
	andn	$t4, $s4, $t4
	slti	$s4, $t4, 255
	maskeqz	$s5, $t4, $s4
	ori	$t4, $zero, 255
	masknez	$s4, $t4, $s4
	or	$s4, $s5, $s4
	stptr.w	$s4, $a4, 13136
	sub.w	$a1, $a1, $a6
	srai.d	$a6, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $a6, $a1
	slti	$a6, $a1, 255
	maskeqz	$a1, $a1, $a6
	masknez	$a6, $t4, $a6
	or	$a1, $a1, $a6
	stptr.w	$a1, $a4, 13328
	addi.d	$a1, $a5, 32
	add.w	$a5, $a1, $s3
	srai.d	$a6, $a5, 6
	srai.d	$a5, $a5, 63
	andn	$a5, $a6, $a5
	slti	$a6, $a5, 255
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $t4, $a6
	or	$a5, $a5, $a6
	stptr.w	$a5, $a4, 13200
	sub.w	$a1, $a1, $s3
	srai.d	$a5, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $a5, $a1
	slti	$a5, $a1, 255
	maskeqz	$a1, $a1, $a5
	masknez	$a5, $t4, $a5
	or	$a1, $a1, $a5
	stptr.w	$a1, $a4, 13264
	add.d	$a1, $s2, $fp
	sub.d	$a5, $fp, $s2
	srli.d	$a6, $s1, 1
	sub.d	$a6, $a6, $a0
	srli.d	$a0, $a0, 1
	add.d	$a0, $a0, $s1
	addi.d	$a1, $a1, 32
	add.w	$fp, $a1, $a0
	srai.d	$s1, $fp, 6
	srai.d	$fp, $fp, 63
	andn	$fp, $s1, $fp
	slti	$s1, $fp, 255
	maskeqz	$fp, $fp, $s1
	masknez	$s1, $t4, $s1
	or	$fp, $fp, $s1
	stptr.w	$fp, $a4, 13140
	sub.w	$a0, $a1, $a0
	srai.d	$a1, $a0, 6
	srai.d	$a0, $a0, 63
	andn	$a0, $a1, $a0
	slti	$a1, $a0, 255
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $t4, $a1
	or	$a0, $a0, $a1
	stptr.w	$a0, $a4, 13332
	addi.d	$a0, $a5, 32
	add.w	$a1, $a0, $a6
	srai.d	$a5, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $a5, $a1
	slti	$a5, $a1, 255
	maskeqz	$a1, $a1, $a5
	masknez	$a5, $t4, $a5
	or	$a1, $a1, $a5
	stptr.w	$a1, $a4, 13204
	sub.w	$a0, $a0, $a6
	srai.d	$a1, $a0, 6
	srai.d	$a0, $a0, 63
	andn	$a0, $a1, $a0
	slti	$a1, $a0, 255
	maskeqz	$a0, $a0, $a1
	ldx.w	$a5, $a4, $a2
	masknez	$a1, $t4, $a1
	or	$a0, $a0, $a1
	stptr.w	$a0, $a4, 13268
	add.d	$a0, $t8, $a5
	sub.d	$a1, $a5, $t8
	srli.d	$a5, $t7, 1
	sub.d	$a5, $a5, $s0
	srli.d	$a6, $s0, 1
	add.d	$a6, $a6, $t7
	addi.d	$a0, $a0, 32
	add.w	$t7, $a0, $a6
	srai.d	$t8, $t7, 6
	srai.d	$t7, $t7, 63
	andn	$t7, $t8, $t7
	slti	$t8, $t7, 255
	maskeqz	$t7, $t7, $t8
	masknez	$t8, $t4, $t8
	or	$t7, $t7, $t8
	stptr.w	$t7, $a4, 13144
	sub.w	$a0, $a0, $a6
	srai.d	$a6, $a0, 6
	srai.d	$a0, $a0, 63
	andn	$a0, $a6, $a0
	slti	$a6, $a0, 255
	maskeqz	$a0, $a0, $a6
	masknez	$a6, $t4, $a6
	or	$a0, $a0, $a6
	stptr.w	$a0, $a4, 13336
	addi.d	$a0, $a1, 32
	add.w	$a1, $a0, $a5
	srai.d	$a6, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $a6, $a1
	slti	$a6, $a1, 255
	maskeqz	$a1, $a1, $a6
	masknez	$a6, $t4, $a6
	or	$a1, $a1, $a6
	stptr.w	$a1, $a4, 13208
	sub.w	$a0, $a0, $a5
	srai.d	$a1, $a0, 6
	srai.d	$a0, $a0, 63
	andn	$a0, $a1, $a0
	slti	$a1, $a0, 255
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $t4, $a1
	ori	$a5, $s6, 860
	ldx.w	$a5, $a4, $a5
	or	$t7, $a0, $a1
	ldptr.w	$a0, $a4, 13212
	stptr.w	$t7, $a4, 13272
	add.d	$a1, $t5, $a5
	sub.d	$a5, $a5, $t5
	srli.d	$a6, $a0, 1
	sub.d	$a6, $a6, $t6
	srli.d	$t5, $t6, 1
	add.d	$a0, $t5, $a0
	addi.d	$a1, $a1, 32
	add.w	$t5, $a1, $a0
	srai.d	$t6, $t5, 6
	srai.d	$t5, $t5, 63
	andn	$t5, $t6, $t5
	slti	$t6, $t5, 255
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $t4, $t6
	or	$t5, $t5, $t6
	stptr.w	$t5, $a4, 13148
	sub.w	$a0, $a1, $a0
	srai.d	$a1, $a0, 6
	srai.d	$a0, $a0, 63
	andn	$a0, $a1, $a0
	slti	$a1, $a0, 255
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $t4, $a1
	or	$t6, $a0, $a1
	stptr.w	$t6, $a4, 13340
	addi.d	$a0, $a5, 32
	add.w	$a1, $a0, $a6
	srai.d	$a5, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $a5, $a1
	slti	$a5, $a1, 255
	maskeqz	$a1, $a1, $a5
	masknez	$a5, $t4, $a5
	or	$t8, $a1, $a5
	stptr.w	$t8, $a4, 13212
	sub.w	$a0, $a0, $a6
	srai.d	$a1, $a0, 6
	srai.d	$a0, $a0, 63
	andn	$a0, $a1, $a0
	slti	$a1, $a0, 255
	pcalau12i	$a5, %got_pc_hi20(enc_picture)
	ld.d	$a5, $a5, %got_pc_lo12(enc_picture)
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $t4, $a1
	or	$t4, $a0, $a1
	ld.d	$a0, $a5, 0
	ld.w	$a1, $a4, 180
	ld.w	$a5, $a4, 176
	stptr.w	$t4, $a4, 13276
	ldptr.d	$a0, $a0, 6440
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	add.w	$a1, $a6, $a1
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	add.w	$a5, $a6, $a5
	ldx.h	$a6, $a4, $s7
	slli.d	$fp, $a1, 3
	ldx.d	$fp, $a0, $fp
	slli.d	$s0, $a5, 1
	ldx.h	$t1, $a4, $t1
	addi.w	$s1, $a1, 1
	slli.d	$s1, $s1, 3
	ldx.d	$s1, $a0, $s1
	ldx.h	$t2, $a4, $t2
	addi.w	$s2, $a1, 2
	slli.d	$s2, $s2, 3
	ldx.d	$s2, $a0, $s2
	ldx.h	$t3, $a4, $t3
	addi.w	$a1, $a1, 3
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	stx.h	$a6, $fp, $s0
	stx.h	$t1, $s1, $s0
	stx.h	$t2, $s2, $s0
	stx.h	$t3, $a0, $s0
	addi.w	$a1, $a5, 1
	ori	$a6, $s6, 852
	ldx.h	$a6, $a4, $a6
	slli.d	$a1, $a1, 1
	ori	$t1, $s6, 916
	ldx.h	$t1, $a4, $t1
	ori	$t2, $s6, 980
	ldx.h	$t2, $a4, $t2
	ori	$t3, $s6, 1044
	ldx.h	$t3, $a4, $t3
	stx.h	$a6, $fp, $a1
	stx.h	$t1, $s1, $a1
	stx.h	$t2, $s2, $a1
	stx.h	$t3, $a0, $a1
	addi.w	$a1, $a5, 2
	ldx.h	$a2, $a4, $a2
	ldx.h	$a6, $a4, $a7
	slli.d	$a1, $a1, 1
	ldx.h	$a4, $a4, $t0
	stx.h	$a2, $fp, $a1
	stx.h	$a6, $s1, $a1
	stx.h	$t7, $s2, $a1
	stx.h	$a4, $a0, $a1
	addi.w	$a1, $a5, 3
	slli.d	$a1, $a1, 1
	stx.h	$t5, $fp, $a1
	stx.h	$t8, $s1, $a1
	stx.h	$t4, $s2, $a1
	stx.h	$t6, $a0, $a1
	move	$a0, $a3
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
.Lfunc_end10:
	.size	dct_luma_sp2, .Lfunc_end10-dct_luma_sp2
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function dct_chroma_sp2
.LCPI11_0:
	.word	0                               # 0x0
	.word	7                               # 0x7
	.word	2                               # 0x2
	.word	3                               # 0x3
.LCPI11_1:
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI11_2:
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	5                               # 0x5
	.word	0                               # 0x0
.LCPI11_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	6                               # 0x6
	.word	7                               # 0x7
	.text
	.globl	dct_chroma_sp2
	.p2align	5
	.type	dct_chroma_sp2,@function
dct_chroma_sp2:                         # @dct_chroma_sp2
# %bb.0:
	addi.d	$sp, $sp, -752
	st.d	$ra, $sp, 744                   # 8-byte Folded Spill
	st.d	$fp, $sp, 736                   # 8-byte Folded Spill
	st.d	$s0, $sp, 728                   # 8-byte Folded Spill
	st.d	$s1, $sp, 720                   # 8-byte Folded Spill
	st.d	$s2, $sp, 712                   # 8-byte Folded Spill
	st.d	$s3, $sp, 704                   # 8-byte Folded Spill
	st.d	$s4, $sp, 696                   # 8-byte Folded Spill
	st.d	$s5, $sp, 688                   # 8-byte Folded Spill
	st.d	$s6, $sp, 680                   # 8-byte Folded Spill
	st.d	$s7, $sp, 672                   # 8-byte Folded Spill
	st.d	$s8, $sp, 664                   # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$a2, $a2, %got_pc_lo12(img)
	ld.d	$t4, $a2, 0
	ldptr.d	$a2, $t4, 14168
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	alsl.d	$a2, $a0, $a2, 3
	ld.w	$a0, $t4, 40
	ld.d	$a2, $a2, 8
	addi.w	$a5, $zero, -1
	bge	$a5, $a0, .LBB11_2
# %bb.1:
	pcalau12i	$a3, %pc_hi20(QP_SCALE_CR)
	addi.d	$a3, $a3, %pc_lo12(QP_SCALE_CR)
	ldx.bu	$a0, $a3, $a0
	ori	$a3, $zero, 171
	mul.d	$a3, $a0, $a3
	srli.d	$a3, $a3, 10
	b	.LBB11_3
.LBB11_2:                               # %.thread
	sub.d	$a3, $zero, $a0
	bstrpick.d	$a4, $a3, 31, 0
	lu12i.w	$a3, -349526
	ori	$a3, $a3, 2731
	lu32i.d	$a3, 0
	mul.d	$a3, $a4, $a3
	srli.d	$a3, $a3, 34
	sub.d	$a3, $zero, $a3
.LBB11_3:
	st.d	$a5, $sp, 8                     # 8-byte Folded Spill
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	move	$a1, $zero
	addi.d	$t5, $sp, 632
	addi.d	$a7, $sp, 408
	ldptr.d	$a4, $t4, 14224
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a4, $t4, 12
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a4, $a2, 0
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a2, $a2, 8
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	addi.d	$t8, $sp, 504
	addi.d	$a6, $sp, 440
	addi.d	$fp, $sp, 472
	addi.d	$t7, $sp, 536
	addi.d	$t6, $sp, 568
	addi.d	$t1, $sp, 600
	st.d	$a3, $sp, 384                   # 8-byte Folded Spill
	addi.d	$a4, $a3, 15
	pcalau12i	$a2, %pc_hi20(lrec_uv)
	ld.d	$a2, $a2, %pc_lo12(lrec_uv)
	ori	$a3, $zero, 1
	st.d	$a4, $sp, 392                   # 8-byte Folded Spill
	sll.w	$a3, $a3, $a4
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	slli.d	$a3, $a3, 3
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	ldx.d	$a2, $a2, $a3
	lu12i.w	$a4, 3
	ori	$a5, $a4, 848
	ori	$a3, $a4, 350
	add.d	$a3, $t4, $a3
	st.d	$a5, $sp, 88                    # 8-byte Folded Spill
	add.d	$a5, $t4, $a5
	st.d	$a5, $sp, 400                   # 8-byte Folded Spill
	ori	$a4, $a4, 876
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	add.d	$a4, $t4, $a4
	addi.d	$a5, $sp, 536
	ori	$t0, $zero, 8
	.p2align	4, , 16
.LBB11_4:                               # %.preheader337
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$t2, $a3, -14
	st.w	$t2, $a5, -128
	ld.w	$t2, $t4, 188
	add.d	$t2, $a1, $t2
	slli.d	$t2, $t2, 3
	ld.w	$t3, $t4, 184
	ldx.d	$t2, $a2, $t2
	slli.d	$t3, $t3, 2
	ldx.w	$t2, $t2, $t3
	ld.hu	$t3, $a3, -12
	st.w	$t2, $a4, -28
	st.w	$t3, $a5, -96
	ld.w	$t2, $t4, 188
	add.d	$t2, $a1, $t2
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a2, $t2
	ld.w	$t3, $t4, 184
	alsl.d	$t2, $t3, $t2, 2
	ld.w	$t2, $t2, 4
	ld.hu	$t3, $a3, -10
	st.w	$t2, $a4, -24
	st.w	$t3, $a5, -64
	ld.w	$t2, $t4, 188
	add.d	$t2, $a1, $t2
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a2, $t2
	ld.w	$t3, $t4, 184
	alsl.d	$t2, $t3, $t2, 2
	ld.w	$t2, $t2, 8
	ld.hu	$t3, $a3, -8
	st.w	$t2, $a4, -20
	st.w	$t3, $a5, -32
	ld.w	$t2, $t4, 188
	add.d	$t2, $a1, $t2
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a2, $t2
	ld.w	$t3, $t4, 184
	alsl.d	$t2, $t3, $t2, 2
	ld.w	$t2, $t2, 12
	ld.hu	$t3, $a3, -6
	st.w	$t2, $a4, -16
	st.w	$t3, $a5, 0
	ld.w	$t2, $t4, 188
	add.d	$t2, $a1, $t2
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a2, $t2
	ld.w	$t3, $t4, 184
	alsl.d	$t2, $t3, $t2, 2
	ld.w	$t2, $t2, 16
	ld.hu	$t3, $a3, -4
	st.w	$t2, $a4, -12
	st.w	$t3, $a5, 32
	ld.w	$t2, $t4, 188
	add.d	$t2, $a1, $t2
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a2, $t2
	ld.w	$t3, $t4, 184
	alsl.d	$t2, $t3, $t2, 2
	ld.w	$t2, $t2, 20
	ld.hu	$t3, $a3, -2
	st.w	$t2, $a4, -8
	st.w	$t3, $a5, 64
	ld.w	$t2, $t4, 188
	add.d	$t2, $a1, $t2
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a2, $t2
	ld.w	$t3, $t4, 184
	alsl.d	$t2, $t3, $t2, 2
	ld.w	$t2, $t2, 24
	ld.hu	$t3, $a3, 0
	st.w	$t2, $a4, -4
	st.w	$t3, $a5, 96
	ld.w	$t2, $t4, 188
	add.d	$t2, $a1, $t2
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a2, $t2
	ld.w	$t3, $t4, 184
	alsl.d	$t2, $t3, $t2, 2
	ld.w	$t2, $t2, 28
	st.w	$t2, $a4, 0
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 4
	addi.d	$a3, $a3, 32
	bne	$a1, $t0, .LBB11_4
# %bb.5:                                # %.preheader336
	st.d	$t4, $sp, 104                   # 8-byte Folded Spill
	move	$a1, $zero
	lu12i.w	$a2, 174762
	ori	$a2, $a2, 2731
	mul.d	$a2, $a0, $a2
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 32
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 2
	alsl.d	$a2, $a2, $a3, 1
	sub.w	$a0, $a0, $a2
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB11_6:                               # %.preheader335
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a6, $sp, 240                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$t8, $sp, 144                   # 8-byte Folded Spill
	st.d	$t7, $sp, 352                   # 8-byte Folded Spill
	st.d	$t6, $sp, 360                   # 8-byte Folded Spill
	st.d	$t1, $sp, 368                   # 8-byte Folded Spill
	st.d	$t5, $sp, 376                   # 8-byte Folded Spill
	st.d	$a2, $sp, 344                   # 8-byte Folded Spill
	ld.w	$a0, $a7, 0
	ld.w	$a2, $t8, 0
	ld.w	$a3, $a6, 0
	ld.w	$a4, $fp, 0
	slli.d	$t5, $a1, 2
	add.d	$a5, $a2, $a0
	sub.w	$a2, $a0, $a2
	st.d	$a2, $sp, 288                   # 8-byte Folded Spill
	add.d	$a0, $a4, $a3
	sub.d	$s0, $a3, $a4
	add.d	$a1, $a0, $a5
	st.d	$a1, $sp, 328                   # 8-byte Folded Spill
	sub.d	$a0, $a5, $a0
	st.w	$a0, $fp, 0
	slli.d	$a0, $s0, 1
	sub.d	$a0, $a2, $a0
	st.w	$a0, $t8, 0
	addi.d	$t3, $t5, 4
	addi.d	$s4, $sp, 408
	ldx.w	$t2, $t3, $s4
	addi.d	$s3, $sp, 504
	ldx.w	$a5, $s3, $t3
	addi.d	$s5, $sp, 440
	ldx.w	$t4, $s5, $t3
	addi.d	$s7, $sp, 472
	ldx.w	$t6, $s7, $t3
	addi.d	$a3, $t5, 8
	ldx.w	$t7, $a3, $s4
	ldx.w	$t8, $s3, $a3
	add.d	$t1, $a5, $t2
	add.d	$a4, $t6, $t4
	add.d	$a6, $a4, $t1
	st.d	$a6, $sp, 312                   # 8-byte Folded Spill
	add.d	$t0, $t8, $t7
	ldx.w	$fp, $s5, $a3
	ldx.w	$s1, $s7, $a3
	addi.d	$s6, $t5, 12
	ldx.w	$t5, $s6, $s4
	ldx.w	$s2, $s3, $s6
	ldx.w	$s3, $s5, $s6
	ldx.w	$s4, $s7, $s6
	add.d	$s5, $s1, $fp
	move	$a2, $a7
	add.d	$a7, $s5, $t0
	st.d	$a7, $sp, 320                   # 8-byte Folded Spill
	add.d	$s7, $s2, $t5
	add.d	$s8, $s4, $s3
	add.d	$a0, $s8, $s7
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	add.d	$a1, $a7, $a6
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	add.d	$ra, $a1, $a0
	st.w	$ra, $a2, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	alsl.d	$a6, $a0, $s0, 1
	st.d	$a6, $sp, 280                   # 8-byte Folded Spill
	sub.d	$a1, $t2, $a5
	sub.d	$a2, $t4, $t6
	sub.d	$a7, $t7, $t8
	sub.d	$t2, $fp, $s1
	sub.w	$a0, $t5, $s2
	sub.d	$t4, $s3, $s4
	addi.w	$t5, $a1, 0
	alsl.d	$a5, $t5, $a2, 1
	st.d	$a5, $sp, 264                   # 8-byte Folded Spill
	addi.w	$t5, $a7, 0
	alsl.d	$t5, $t5, $t2, 1
	st.d	$t5, $sp, 272                   # 8-byte Folded Spill
	alsl.d	$t6, $a0, $t4, 1
	st.d	$t6, $sp, 288                   # 8-byte Folded Spill
	add.d	$a6, $t6, $a6
	st.d	$a6, $sp, 248                   # 8-byte Folded Spill
	add.d	$a5, $t5, $a5
	st.d	$a5, $sp, 256                   # 8-byte Folded Spill
	add.d	$t5, $a5, $a6
	ld.d	$a5, $sp, 240                   # 8-byte Folded Reload
	st.w	$t5, $a5, 0
	sub.d	$a6, $t1, $a4
	st.d	$a6, $sp, 216                   # 8-byte Folded Spill
	sub.d	$t0, $t0, $s5
	st.d	$t0, $sp, 224                   # 8-byte Folded Spill
	ld.d	$t5, $sp, 192                   # 8-byte Folded Reload
	ld.w	$t1, $t5, 0
	st.d	$t1, $sp, 232                   # 8-byte Folded Spill
	addi.w	$a4, $s7, 0
	addi.w	$a5, $s8, 0
	sub.d	$a4, $a4, $a5
	st.d	$a4, $sp, 240                   # 8-byte Folded Spill
	add.d	$a5, $a4, $t1
	st.d	$a5, $sp, 200                   # 8-byte Folded Spill
	add.d	$a4, $t0, $a6
	st.d	$a4, $sp, 208                   # 8-byte Folded Spill
	add.d	$a4, $a4, $a5
	st.w	$a4, $t5, 0
	addi.w	$a2, $a2, 0
	slli.d	$a2, $a2, 1
	sub.d	$a2, $a1, $a2
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	addi.w	$a1, $t2, 0
	slli.d	$a1, $a1, 1
	sub.d	$a4, $a7, $a1
	st.d	$a4, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a5, $a7, 0
	st.d	$a5, $sp, 184                   # 8-byte Folded Spill
	addi.w	$a1, $t4, 0
	slli.d	$a1, $a1, 1
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	add.d	$a0, $a0, $a5
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	add.d	$a1, $a4, $a2
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	add.d	$a1, $a1, $a0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 0
	ld.d	$t1, $sp, 376                   # 8-byte Folded Reload
	ld.w	$a4, $t1, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.w	$a5, $a0, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.w	$a6, $a0, 0
	st.w	$a1, $a7, 0
	add.d	$a7, $a4, $a2
	sub.w	$s4, $a2, $a4
	add.d	$a4, $a6, $a5
	sub.d	$t6, $a5, $a6
	add.d	$s3, $a4, $a7
	st.d	$s3, $sp, 136                   # 8-byte Folded Spill
	sub.d	$a4, $a7, $a4
	st.w	$a4, $a0, 0
	slli.d	$a4, $t6, 1
	sub.d	$a4, $s4, $a4
	st.w	$a4, $t1, 0
	addi.d	$a5, $sp, 536
	ldx.w	$t0, $a5, $t3
	addi.d	$a0, $sp, 632
	ldx.w	$t2, $a0, $t3
	addi.d	$a4, $sp, 568
	ldx.w	$t4, $a4, $t3
	addi.d	$t1, $sp, 600
	ldx.w	$t7, $t1, $t3
	ldx.w	$t8, $a5, $a3
	ldx.w	$fp, $a0, $a3
	add.d	$s0, $t2, $t0
	add.d	$t5, $t7, $t4
	add.d	$a2, $t5, $s0
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	add.d	$s2, $fp, $t8
	ldx.w	$s1, $a4, $a3
	ldx.w	$s5, $t1, $a3
	ldx.w	$s7, $a5, $s6
	ldx.w	$s8, $a0, $s6
	ldx.w	$ra, $a4, $s6
	ldx.w	$a1, $t1, $s6
	add.d	$a4, $s5, $s1
	add.d	$a6, $a4, $s2
	st.d	$a6, $sp, 128                   # 8-byte Folded Spill
	add.d	$a7, $s8, $s7
	add.d	$a5, $a1, $ra
	add.d	$a0, $a5, $a7
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	add.d	$a0, $a0, $s3
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	add.d	$s3, $a6, $a2
	add.d	$a6, $s3, $a0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	st.w	$a6, $a0, 0
	alsl.d	$s4, $s4, $t6, 1
	sub.d	$t6, $t0, $t2
	sub.d	$t2, $t4, $t7
	sub.d	$a6, $t8, $fp
	sub.d	$s1, $s1, $s5
	sub.w	$t1, $s7, $s8
	sub.d	$s8, $ra, $a1
	addi.w	$a1, $t6, 0
	alsl.d	$t0, $a1, $t2, 1
	addi.w	$a1, $a6, 0
	alsl.d	$fp, $a1, $s1, 1
	alsl.d	$t8, $t1, $s8, 1
	add.d	$t7, $t8, $s4
	add.d	$s5, $fp, $t0
	add.d	$a1, $s5, $t7
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	st.w	$a1, $a0, 0
	sub.d	$t5, $s0, $t5
	sub.d	$ra, $s2, $a4
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.w	$s2, $a0, 0
	addi.w	$a1, $a7, 0
	addi.w	$a2, $a5, 0
	sub.d	$s7, $a1, $a2
	add.d	$t4, $s7, $s2
	add.d	$a1, $ra, $t5
	add.d	$a2, $a1, $t4
	st.w	$a2, $a0, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 312                   # 8-byte Folded Reload
	sub.d	$a4, $a4, $a0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	sub.d	$a5, $a5, $a0
	addi.d	$a0, $sp, 408
	stx.w	$a5, $a3, $a0
	alsl.d	$a5, $a2, $a4, 1
	stx.w	$a5, $t3, $a0
	slli.d	$a4, $a4, 1
	sub.d	$a2, $a2, $a4
	stx.w	$a2, $s6, $a0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	sub.d	$a4, $a4, $a0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	sub.d	$a5, $a5, $a0
	addi.d	$a0, $sp, 440
	stx.w	$a5, $a0, $a3
	alsl.d	$a5, $a2, $a4, 1
	stx.w	$a5, $a0, $t3
	slli.d	$a4, $a4, 1
	sub.d	$a2, $a2, $a4
	stx.w	$a2, $a0, $s6
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	sub.d	$a4, $a4, $a0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	sub.d	$a5, $a5, $a0
	addi.d	$a0, $sp, 472
	stx.w	$a5, $a0, $a3
	alsl.d	$a5, $a2, $a4, 1
	stx.w	$a5, $a0, $t3
	slli.d	$a4, $a4, 1
	sub.d	$a2, $a2, $a4
	stx.w	$a2, $a0, $s6
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	sub.d	$a4, $a4, $a0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	sub.d	$a5, $a5, $a0
	addi.d	$a0, $sp, 504
	stx.w	$a5, $a0, $a3
	alsl.d	$a5, $a2, $a4, 1
	stx.w	$a5, $a0, $t3
	slli.d	$a4, $a4, 1
	sub.d	$a2, $a2, $a4
	stx.w	$a2, $a0, $s6
	addi.w	$a2, $t2, 0
	slli.d	$a2, $a2, 1
	sub.d	$a2, $t6, $a2
	addi.w	$a4, $s1, 0
	slli.d	$a4, $a4, 1
	sub.d	$a4, $a6, $a4
	addi.w	$a5, $s8, 0
	slli.d	$a5, $a5, 1
	sub.d	$a5, $t1, $a5
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	sub.d	$a6, $a6, $a0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	sub.d	$a7, $a7, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	sub.d	$t1, $a0, $s3
	addi.d	$a0, $sp, 536
	stx.w	$t1, $a0, $a3
	alsl.d	$t1, $a6, $a7, 1
	stx.w	$t1, $a0, $t3
	slli.d	$a7, $a7, 1
	sub.d	$a6, $a6, $a7
	stx.w	$a6, $a0, $s6
	sub.d	$a6, $s4, $t8
	sub.d	$a7, $t0, $fp
	sub.d	$t0, $t7, $s5
	addi.d	$a0, $sp, 568
	stx.w	$t0, $a0, $a3
	alsl.d	$t0, $a6, $a7, 1
	stx.w	$t0, $a0, $t3
	slli.d	$a7, $a7, 1
	sub.d	$a6, $a6, $a7
	stx.w	$a6, $a0, $s6
	sub.d	$a6, $s2, $s7
	sub.d	$a7, $t5, $ra
	addi.d	$t5, $sp, 648
	addi.d	$t7, $sp, 552
	addi.d	$fp, $sp, 488
	addi.d	$t2, $sp, 456
	addi.d	$t8, $sp, 520
	addi.d	$t0, $sp, 424
	sub.d	$a1, $t4, $a1
	addi.d	$t4, $sp, 600
	stx.w	$a1, $t4, $a3
	alsl.d	$a1, $a6, $a7, 1
	stx.w	$a1, $t4, $t3
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	slli.d	$a7, $a7, 1
	sub.d	$a6, $a6, $a7
	stx.w	$a6, $t4, $s6
	add.d	$a6, $a5, $a1
	sub.d	$a1, $a1, $a5
	add.d	$a5, $a4, $a2
	sub.d	$a2, $a2, $a4
	add.d	$a4, $a5, $a6
	st.w	$a4, $a0, 0
	sub.d	$a4, $a6, $a5
	addi.d	$a0, $sp, 632
	stx.w	$a4, $a0, $a3
	alsl.d	$a3, $a1, $a2, 1
	stx.w	$a3, $a0, $t3
	move	$a3, $a0
	slli.d	$a0, $a2, 1
	sub.d	$a0, $a1, $a0
	stx.w	$a0, $a3, $s6
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$a1, $zero, 4
	move	$a7, $t0
	move	$a6, $t2
	addi.d	$t1, $sp, 616
	addi.d	$t6, $sp, 584
	move	$a2, $zero
	bnez	$a0, .LBB11_6
# %bb.7:
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a1, 31, 31
	add.w	$a0, $a1, $a0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a1
	lu12i.w	$a7, 3
	ori	$a1, $a7, 1104
	st.d	$a1, $sp, 368                   # 8-byte Folded Spill
	ldx.w	$t0, $a2, $a1
	ori	$a1, $a7, 864
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	ldx.w	$a6, $a2, $a1
	ld.w	$a1, $sp, 408
	ld.w	$a3, $sp, 536
	ld.w	$a5, $sp, 424
	ld.w	$s3, $sp, 552
	ori	$s6, $a7, 1120
	ldx.w	$a2, $a2, $s6
	add.d	$a7, $a3, $a1
	add.d	$t1, $s3, $a5
	add.w	$t3, $t1, $a7
	add.d	$t2, $a1, $a5
	add.d	$t4, $a3, $s3
	sub.w	$t6, $t2, $t4
	sub.w	$t1, $a7, $t1
	add.d	$a3, $a3, $a5
	sub.d	$s4, $a1, $a3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	slli.d	$s0, $a1, 6
	pcalau12i	$a1, %pc_hi20(quant_coef)
	addi.d	$t4, $a1, %pc_lo12(quant_coef)
	ldx.w	$a7, $t4, $s0
	move	$t8, $a0
	bstrins.d	$t8, $zero, 0, 0
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	addi.d	$fp, $a1, 16
	pcalau12i	$a1, %pc_hi20(dequant_coef)
	addi.d	$t2, $a1, %pc_lo12(dequant_coef)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 2
	bstrpick.d	$a3, $a1, 31, 2
	slli.d	$a3, $a3, 2
	lu12i.w	$a5, 240
	sll.w	$t5, $a5, $a3
	ori	$a3, $zero, 536
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	mul.d	$a3, $a5, $a3
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	add.d	$a5, $a5, $a3
	srai.d	$a3, $t3, 31
	xor	$t7, $t3, $a3
	sub.d	$a3, $t7, $a3
	mul.d	$a3, $a3, $a7
	add.d	$a3, $a3, $t8
	sra.w	$a3, $a3, $fp
	slti	$t3, $t3, 0
	srai.d	$t7, $a3, 31
	xor	$a3, $a3, $t7
	sub.d	$a3, $a3, $t7
	sub.d	$t7, $zero, $a3
	maskeqz	$s5, $a3, $t3
	masknez	$t3, $t7, $t3
	ldx.w	$a3, $t2, $s0
	or	$t3, $s5, $t3
	add.w	$s5, $t3, $a4
	addi.d	$t7, $a5, 368
	beqz	$s5, .LBB11_9
# %bb.8:
	move	$t3, $zero
	ld.d	$a5, $t7, 0
	srai.d	$s7, $s5, 31
	xor	$s8, $s5, $s7
	sub.d	$s7, $s8, $s7
	or	$a5, $a5, $t5
	st.d	$a5, $t7, 0
	ori	$a5, $zero, 1
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	slt	$s8, $a5, $s1
	maskeqz	$ra, $s1, $s8
	masknez	$s8, $a5, $s8
	or	$s2, $ra, $s8
	slti	$s5, $s5, 0
	sub.d	$s8, $zero, $s7
	masknez	$s7, $s7, $s5
	maskeqz	$s5, $s8, $s5
	or	$s5, $s5, $s7
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	st.w	$s5, $s8, 0
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	st.w	$zero, $s1, 0
	b	.LBB11_10
.LBB11_9:
	move	$a5, $zero
	ori	$t3, $zero, 1
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
.LBB11_10:
	srai.d	$s5, $t6, 31
	xor	$s7, $t6, $s5
	sub.d	$s5, $s7, $s5
	mul.d	$s5, $s5, $a7
	add.d	$s5, $s5, $t8
	sra.w	$s5, $s5, $fp
	slti	$t6, $t6, 0
	srai.d	$s7, $s5, 31
	xor	$s5, $s5, $s7
	sub.d	$s5, $s5, $s7
	sub.d	$s7, $zero, $s5
	maskeqz	$s5, $s5, $t6
	masknez	$t6, $s7, $t6
	or	$t6, $s5, $t6
	add.w	$t6, $t6, $t0
	add.w	$s3, $s4, $s3
	beqz	$t6, .LBB11_12
# %bb.11:
	ld.d	$s4, $t7, 0
	srai.d	$s5, $t6, 31
	xor	$s7, $t6, $s5
	sub.d	$s5, $s7, $s5
	or	$s4, $s4, $t5
	st.d	$s4, $t7, 0
	ori	$s4, $zero, 1
	slt	$s7, $s4, $s2
	masknez	$s4, $s4, $s7
	maskeqz	$s7, $s2, $s7
	or	$s2, $s7, $s4
	slti	$t6, $t6, 0
	sub.d	$s4, $zero, $s5
	masknez	$s5, $s5, $t6
	maskeqz	$t6, $s4, $t6
	or	$t6, $t6, $s5
	slli.d	$s4, $a5, 2
	stx.w	$t6, $s8, $s4
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	stx.w	$t3, $s7, $s4
	addi.d	$a5, $a5, 1
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	b	.LBB11_13
.LBB11_12:
	move	$s4, $t3
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
.LBB11_13:
	mul.d	$t3, $a3, $a4
	mul.d	$t6, $a3, $t0
	srai.d	$a4, $t1, 31
	xor	$t0, $t1, $a4
	sub.d	$a4, $t0, $a4
	mul.d	$a4, $a4, $a7
	add.d	$a4, $a4, $t8
	sra.w	$a4, $a4, $fp
	slti	$t0, $t1, 0
	srai.d	$t1, $a4, 31
	xor	$a4, $a4, $t1
	sub.d	$a4, $a4, $t1
	sub.d	$t1, $zero, $a4
	maskeqz	$a4, $a4, $t0
	masknez	$t0, $t1, $t0
	or	$a4, $a4, $t0
	add.w	$t0, $a4, $a6
	addi.d	$a4, $s4, 1
	beqz	$t0, .LBB11_15
# %bb.14:
	ld.d	$t1, $t7, 0
	srai.d	$s4, $t0, 31
	xor	$s5, $t0, $s4
	sub.d	$s4, $s5, $s4
	or	$t1, $t1, $t5
	st.d	$t1, $t7, 0
	ori	$t1, $zero, 1
	slt	$s5, $t1, $s2
	masknez	$t1, $t1, $s5
	maskeqz	$s5, $s2, $s5
	or	$s2, $s5, $t1
	slti	$t0, $t0, 0
	sub.d	$t1, $zero, $s4
	masknez	$s4, $s4, $t0
	maskeqz	$t0, $t1, $t0
	or	$t0, $t0, $s4
	slli.d	$t1, $a5, 2
	stx.w	$t0, $s8, $t1
	stx.w	$a4, $s7, $t1
	addi.d	$a5, $a5, 1
	addi.d	$a4, $zero, -1
.LBB11_15:
	sll.w	$t0, $t3, $s1
	sll.w	$t1, $t6, $s1
	mul.d	$t3, $a3, $a6
	srai.d	$a6, $s3, 31
	xor	$t6, $s3, $a6
	sub.d	$a6, $t6, $a6
	mul.d	$a6, $a6, $a7
	add.d	$a6, $a6, $t8
	sra.w	$a6, $a6, $fp
	slti	$a7, $s3, 0
	srai.d	$t6, $a6, 31
	xor	$a6, $a6, $t6
	sub.d	$a6, $a6, $t6
	sub.d	$t6, $zero, $a6
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $t6, $a7
	or	$a6, $a6, $a7
	add.w	$a6, $a6, $a2
	sll.w	$t8, $t3, $s1
	beqz	$a6, .LBB11_17
# %bb.16:
	srai.d	$a7, $a6, 31
	ld.d	$t3, $t7, 0
	xor	$t6, $a6, $a7
	sub.d	$a7, $t6, $a7
	addi.d	$a4, $a4, 1
	or	$t3, $t3, $t5
	st.d	$t3, $t7, 0
	ori	$t3, $zero, 1
	slt	$t5, $t3, $s2
	masknez	$t3, $t3, $t5
	maskeqz	$t5, $s2, $t5
	or	$s2, $t5, $t3
	slti	$a6, $a6, 0
	sub.d	$t3, $zero, $a7
	masknez	$a7, $a7, $a6
	maskeqz	$a6, $t3, $a6
	or	$a6, $a6, $a7
	slli.d	$a7, $a5, 2
	stx.w	$a6, $s8, $a7
	stx.w	$a4, $s7, $a7
	addi.d	$a5, $a5, 1
.LBB11_17:                              # %.preheader332
	move	$a4, $zero
	move	$a6, $zero
	move	$t5, $zero
	mul.d	$a2, $a3, $a2
	sll.w	$a3, $a2, $s1
	slli.d	$a2, $a5, 2
	stx.w	$zero, $s8, $a2
	add.d	$a2, $t1, $t0
	add.d	$a5, $a3, $t8
	add.d	$a7, $a5, $a2
	bstrpick.d	$t3, $a7, 31, 31
	add.w	$a7, $a7, $t3
	srli.d	$a7, $a7, 1
	stptr.w	$a7, $ra, 13136
	add.d	$a7, $t0, $t8
	add.d	$t3, $t1, $a3
	sub.d	$a7, $a7, $t3
	bstrpick.d	$t3, $a7, 31, 31
	add.w	$t3, $a7, $t3
	srai.d	$a7, $a0, 1
	srli.d	$a0, $t3, 1
	stptr.w	$a0, $ra, 13392
	sub.d	$a0, $a2, $a5
	bstrpick.d	$a2, $a0, 31, 31
	add.w	$a0, $a0, $a2
	srli.d	$a0, $a0, 1
	ldptr.d	$a2, $ra, 14160
	stptr.w	$a0, $ra, 13152
	add.w	$a0, $t1, $t8
	sub.d	$a0, $t0, $a0
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$a2, $a5, $a2, 3
	ld.d	$a2, $a2, 32
	add.d	$a0, $a0, $a3
	bstrpick.d	$a3, $a0, 31, 31
	add.w	$a0, $a0, $a3
	ld.d	$a5, $a2, 0
	srli.d	$a0, $a0, 1
	stptr.w	$a0, $ra, 13408
	addi.d	$fp, $a1, 16
	ld.d	$a3, $a5, 0
	ld.d	$a1, $a5, 8
	ori	$a0, $zero, 1
	sll.d	$a5, $a0, $fp
	addi.d	$t1, $zero, -1
	pcalau12i	$a0, %pc_hi20(FIELD_SCAN)
	addi.d	$t0, $a0, %pc_lo12(FIELD_SCAN)
	addi.d	$s3, $sp, 408
	ori	$s4, $zero, 30
	b	.LBB11_19
	.p2align	4, , 16
.LBB11_18:                              #   in Loop: Header=BB11_19 Depth=1
	add.d	$t8, $t2, $s0
	alsl.d	$t3, $t3, $t8, 4
	ldx.w	$t3, $t3, $s5
	alsl.d	$t6, $t6, $s8, 2
	mul.d	$t3, $t3, $s7
	ld.d	$s1, $sp, 384                   # 8-byte Folded Reload
	sll.w	$t3, $t3, $s1
	addi.d	$a4, $a4, 2
	st.w	$t3, $t6, 0
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	beq	$a4, $s4, .LBB11_25
.LBB11_19:                              # =>This Inner Loop Header: Depth=1
	ldptr.w	$t3, $ra, 15312
	move	$a0, $t0
	bnez	$t3, .LBB11_23
# %bb.20:                               #   in Loop: Header=BB11_19 Depth=1
	pcalau12i	$a0, %pc_hi20(mb_adaptive)
	ld.w	$a0, $a0, %pc_lo12(mb_adaptive)
	beqz	$a0, .LBB11_22
# %bb.21:                               #   in Loop: Header=BB11_19 Depth=1
	ldptr.w	$t3, $ra, 14464
	move	$a0, $t0
	bnez	$t3, .LBB11_23
.LBB11_22:                              #   in Loop: Header=BB11_19 Depth=1
	pcalau12i	$a0, %pc_hi20(SNGL_SCAN)
	addi.d	$a0, $a0, %pc_lo12(SNGL_SCAN)
.LBB11_23:                              #   in Loop: Header=BB11_19 Depth=1
	add.d	$a0, $a0, $a4
	ld.bu	$t6, $a0, 2
	ld.bu	$t3, $a0, 3
	slli.d	$a0, $t6, 5
	add.d	$a0, $s3, $a0
	slli.d	$t8, $t3, 2
	ldx.w	$t8, $a0, $t8
	add.d	$a0, $t4, $s0
	alsl.d	$s7, $t3, $a0, 4
	slli.d	$s5, $t6, 2
	ldx.w	$s7, $s7, $s5
	srai.d	$s8, $t8, 31
	xor	$ra, $t8, $s8
	sub.d	$s8, $ra, $s8
	mul.d	$s7, $s8, $s7
	add.d	$s7, $s7, $a7
	ld.d	$s1, $sp, 392                   # 8-byte Folded Reload
	sra.w	$ra, $s7, $s1
	slli.d	$s7, $t3, 6
	ld.d	$s1, $sp, 400                   # 8-byte Folded Reload
	add.d	$s8, $s1, $s7
	ldx.w	$s7, $s8, $s5
	slti	$t8, $t8, 0
	srai.d	$s1, $ra, 31
	xor	$ra, $ra, $s1
	sub.d	$s1, $ra, $s1
	sub.d	$ra, $zero, $s1
	maskeqz	$s1, $s1, $t8
	masknez	$t8, $ra, $t8
	or	$t8, $s1, $t8
	add.w	$t8, $t8, $s7
	addi.d	$t1, $t1, 1
	beqz	$t8, .LBB11_18
# %bb.24:                               #   in Loop: Header=BB11_19 Depth=1
	ld.d	$t5, $t7, 0
	srai.d	$s1, $t8, 31
	xor	$ra, $t8, $s1
	sub.d	$s1, $ra, $s1
	or	$t5, $t5, $a5
	st.d	$t5, $t7, 0
	slti	$t5, $t8, 0
	sub.d	$t8, $zero, $s1
	masknez	$s1, $s1, $t5
	maskeqz	$t5, $t8, $t5
	or	$t5, $t5, $s1
	slli.d	$t8, $a6, 2
	stx.w	$t5, $a3, $t8
	stx.w	$t1, $a1, $t8
	addi.w	$a6, $a6, 1
	addi.d	$t1, $zero, -1
	ori	$t5, $zero, 2
	b	.LBB11_18
.LBB11_25:
	ld.d	$a5, $a2, 8
	move	$t0, $zero
	move	$a1, $zero
	slli.d	$a4, $a6, 2
	stx.w	$zero, $a3, $a4
	ld.d	$a4, $a5, 0
	ld.d	$a3, $a5, 8
	ori	$a5, $zero, 2
	sll.d	$a6, $a5, $fp
	addi.d	$s0, $zero, -1
	pcalau12i	$a5, %pc_hi20(FIELD_SCAN)
	addi.d	$t1, $a5, %pc_lo12(FIELD_SCAN)
	pcalau12i	$a5, %pc_hi20(mb_adaptive)
	pcalau12i	$t2, %pc_hi20(SNGL_SCAN)
	addi.d	$t4, $t2, %pc_lo12(SNGL_SCAN)
	addi.d	$t2, $sp, 408
	ori	$s3, $zero, 30
	b	.LBB11_27
	.p2align	4, , 16
.LBB11_26:                              #   in Loop: Header=BB11_27 Depth=1
	alsl.d	$t3, $t3, $t8, 4
	ldx.w	$t3, $t3, $t6
	addi.d	$t6, $s5, 256
	mul.d	$t3, $t3, $s4
	ld.d	$s1, $sp, 384                   # 8-byte Folded Reload
	sll.w	$t3, $t3, $s1
	addi.d	$t0, $t0, 2
	st.w	$t3, $t6, 0
	beq	$t0, $s3, .LBB11_33
.LBB11_27:                              # =>This Inner Loop Header: Depth=1
	ldptr.w	$t6, $ra, 15312
	move	$t3, $t1
	bnez	$t6, .LBB11_31
# %bb.28:                               #   in Loop: Header=BB11_27 Depth=1
	ld.w	$t3, $a5, %pc_lo12(mb_adaptive)
	beqz	$t3, .LBB11_30
# %bb.29:                               #   in Loop: Header=BB11_27 Depth=1
	ldptr.w	$t6, $ra, 14464
	move	$t3, $t1
	bnez	$t6, .LBB11_31
.LBB11_30:                              #   in Loop: Header=BB11_27 Depth=1
	move	$t3, $t4
.LBB11_31:                              #   in Loop: Header=BB11_27 Depth=1
	add.d	$t3, $t3, $t0
	ld.bu	$s1, $t3, 2
	ld.bu	$t3, $t3, 3
	slli.d	$t6, $s1, 5
	add.d	$t6, $t6, $t2
	alsl.d	$t6, $t3, $t6, 2
	ld.w	$s7, $t6, 128
	alsl.d	$s4, $t3, $a0, 4
	slli.d	$t6, $s1, 2
	ldx.w	$s4, $s4, $t6
	srai.d	$s5, $s7, 31
	xor	$s8, $s7, $s5
	sub.d	$s5, $s8, $s5
	mul.d	$s4, $s5, $s4
	add.d	$s4, $s4, $a7
	ld.d	$s5, $sp, 392                   # 8-byte Folded Reload
	sra.w	$s8, $s4, $s5
	slli.d	$s4, $t3, 6
	ld.d	$s5, $sp, 400                   # 8-byte Folded Reload
	add.d	$s4, $s4, $s5
	alsl.d	$s5, $s1, $s4, 2
	ld.w	$s4, $s5, 256
	slti	$s1, $s7, 0
	srai.d	$s7, $s8, 31
	xor	$s8, $s8, $s7
	sub.d	$s7, $s8, $s7
	sub.d	$s8, $zero, $s7
	maskeqz	$s7, $s7, $s1
	masknez	$s1, $s8, $s1
	or	$s1, $s7, $s1
	add.w	$s7, $s1, $s4
	addi.d	$s0, $s0, 1
	beqz	$s7, .LBB11_26
# %bb.32:                               #   in Loop: Header=BB11_27 Depth=1
	ld.d	$t5, $t7, 0
	srai.d	$s1, $s7, 31
	xor	$s8, $s7, $s1
	sub.d	$s1, $s8, $s1
	or	$t5, $t5, $a6
	st.d	$t5, $t7, 0
	slti	$t5, $s7, 0
	sub.d	$s7, $zero, $s1
	masknez	$s1, $s1, $t5
	maskeqz	$t5, $s7, $t5
	or	$t5, $t5, $s1
	slli.d	$s1, $a1, 2
	stx.w	$t5, $a4, $s1
	stx.w	$s0, $a3, $s1
	addi.w	$a1, $a1, 1
	addi.d	$s0, $zero, -1
	ori	$t5, $zero, 2
	b	.LBB11_26
.LBB11_33:                              # %.preheader332.1
	ld.d	$t0, $a2, 16
	move	$a6, $zero
	move	$a3, $zero
	slli.d	$a1, $a1, 2
	stx.w	$zero, $a4, $a1
	ld.d	$a4, $t0, 0
	ld.d	$a1, $t0, 8
	ori	$t0, $zero, 4
	sll.d	$t0, $t0, $fp
	addi.d	$s0, $zero, -1
	pcalau12i	$t1, %pc_hi20(FIELD_SCAN)
	addi.d	$t1, $t1, %pc_lo12(FIELD_SCAN)
	pcalau12i	$t2, %pc_hi20(SNGL_SCAN)
	addi.d	$t4, $t2, %pc_lo12(SNGL_SCAN)
	addi.d	$t2, $sp, 408
	ori	$s3, $zero, 30
	b	.LBB11_35
	.p2align	4, , 16
.LBB11_34:                              #   in Loop: Header=BB11_35 Depth=1
	alsl.d	$t3, $t3, $t8, 4
	ldx.w	$t3, $t3, $t6
	addi.d	$t6, $s5, 16
	mul.d	$t3, $t3, $s4
	ld.d	$s8, $sp, 384                   # 8-byte Folded Reload
	sll.w	$t3, $t3, $s8
	addi.d	$a6, $a6, 2
	st.w	$t3, $t6, 0
	beq	$a6, $s3, .LBB11_41
.LBB11_35:                              # =>This Inner Loop Header: Depth=1
	ldptr.w	$t6, $ra, 15312
	move	$t3, $t1
	bnez	$t6, .LBB11_39
# %bb.36:                               #   in Loop: Header=BB11_35 Depth=1
	ld.w	$t3, $a5, %pc_lo12(mb_adaptive)
	beqz	$t3, .LBB11_38
# %bb.37:                               #   in Loop: Header=BB11_35 Depth=1
	ldptr.w	$t6, $ra, 14464
	move	$t3, $t1
	bnez	$t6, .LBB11_39
.LBB11_38:                              #   in Loop: Header=BB11_35 Depth=1
	move	$t3, $t4
.LBB11_39:                              #   in Loop: Header=BB11_35 Depth=1
	add.d	$t3, $t3, $a6
	ld.bu	$s1, $t3, 2
	ld.bu	$t3, $t3, 3
	slli.d	$t6, $s1, 5
	add.d	$t6, $t2, $t6
	alsl.d	$t6, $t3, $t6, 2
	ld.w	$s7, $t6, 16
	alsl.d	$s4, $t3, $a0, 4
	slli.d	$t6, $s1, 2
	ldx.w	$s4, $s4, $t6
	srai.d	$s5, $s7, 31
	xor	$s8, $s7, $s5
	sub.d	$s5, $s8, $s5
	mul.d	$s4, $s5, $s4
	add.d	$s4, $s4, $a7
	ld.d	$s5, $sp, 392                   # 8-byte Folded Reload
	sra.w	$s8, $s4, $s5
	slli.d	$s4, $t3, 6
	ld.d	$s5, $sp, 400                   # 8-byte Folded Reload
	add.d	$s4, $s5, $s4
	alsl.d	$s5, $s1, $s4, 2
	ld.w	$s4, $s5, 16
	slti	$s1, $s7, 0
	srai.d	$s7, $s8, 31
	xor	$s8, $s8, $s7
	sub.d	$s7, $s8, $s7
	sub.d	$s8, $zero, $s7
	maskeqz	$s7, $s7, $s1
	masknez	$s1, $s8, $s1
	or	$s1, $s7, $s1
	add.w	$s7, $s1, $s4
	addi.d	$s0, $s0, 1
	beqz	$s7, .LBB11_34
# %bb.40:                               #   in Loop: Header=BB11_35 Depth=1
	ld.d	$t5, $t7, 0
	srai.d	$s1, $s7, 31
	xor	$s8, $s7, $s1
	sub.d	$s1, $s8, $s1
	or	$t5, $t5, $t0
	st.d	$t5, $t7, 0
	slti	$t5, $s7, 0
	sub.d	$s7, $zero, $s1
	masknez	$s1, $s1, $t5
	maskeqz	$t5, $s7, $t5
	or	$t5, $t5, $s1
	slli.d	$s1, $a3, 2
	stx.w	$t5, $a4, $s1
	stx.w	$s0, $a1, $s1
	addi.w	$a3, $a3, 1
	addi.d	$s0, $zero, -1
	ori	$t5, $zero, 2
	b	.LBB11_34
.LBB11_41:
	ld.d	$t0, $a2, 24
	move	$a6, $zero
	move	$a1, $zero
	slli.d	$a2, $a3, 2
	stx.w	$zero, $a4, $a2
	ld.d	$a2, $t0, 0
	ld.d	$a3, $t0, 8
	ori	$a4, $zero, 8
	sll.d	$a4, $a4, $fp
	addi.d	$t1, $zero, -1
	pcalau12i	$t0, %pc_hi20(FIELD_SCAN)
	addi.d	$t0, $t0, %pc_lo12(FIELD_SCAN)
	pcalau12i	$t2, %pc_hi20(SNGL_SCAN)
	addi.d	$fp, $t2, %pc_lo12(SNGL_SCAN)
	addi.d	$s0, $sp, 408
	ori	$t4, $zero, 30
	b	.LBB11_43
	.p2align	4, , 16
.LBB11_42:                              #   in Loop: Header=BB11_43 Depth=1
	alsl.d	$t2, $t2, $t8, 4
	ldx.w	$t2, $t2, $t6
	alsl.d	$t3, $t3, $s3, 2
	mul.d	$t2, $t2, $s4
	sll.w	$t2, $t2, $s8
	addi.d	$a6, $a6, 2
	st.w	$t2, $t3, 0
	beq	$a6, $t4, .LBB11_49
.LBB11_43:                              # =>This Inner Loop Header: Depth=1
	ldptr.w	$t3, $ra, 15312
	move	$t2, $t0
	bnez	$t3, .LBB11_47
# %bb.44:                               #   in Loop: Header=BB11_43 Depth=1
	ld.w	$t2, $a5, %pc_lo12(mb_adaptive)
	beqz	$t2, .LBB11_46
# %bb.45:                               #   in Loop: Header=BB11_43 Depth=1
	ldptr.w	$t3, $ra, 14464
	move	$t2, $t0
	bnez	$t3, .LBB11_47
.LBB11_46:                              #   in Loop: Header=BB11_43 Depth=1
	move	$t2, $fp
.LBB11_47:                              #   in Loop: Header=BB11_43 Depth=1
	add.d	$t2, $t2, $a6
	ld.bu	$t6, $t2, 2
	ld.bu	$t2, $t2, 3
	addi.d	$t3, $t6, 4
	addi.d	$s1, $t2, 4
	slli.d	$s3, $t3, 5
	add.d	$s3, $s0, $s3
	slli.d	$s4, $s1, 2
	ldx.w	$s5, $s3, $s4
	alsl.d	$s3, $t2, $a0, 4
	slli.d	$t6, $t6, 2
	ldx.w	$s3, $s3, $t6
	srai.d	$s4, $s5, 31
	xor	$s7, $s5, $s4
	sub.d	$s4, $s7, $s4
	mul.d	$s3, $s4, $s3
	add.d	$s3, $s3, $a7
	ld.d	$s4, $sp, 392                   # 8-byte Folded Reload
	sra.w	$s7, $s3, $s4
	slli.d	$s1, $s1, 6
	ld.d	$s3, $sp, 400                   # 8-byte Folded Reload
	add.d	$s3, $s3, $s1
	slli.d	$s1, $t3, 2
	ldx.w	$s4, $s3, $s1
	slti	$s1, $s5, 0
	srai.d	$s5, $s7, 31
	xor	$s7, $s7, $s5
	sub.d	$s5, $s7, $s5
	sub.d	$s7, $zero, $s5
	maskeqz	$s5, $s5, $s1
	masknez	$s1, $s7, $s1
	or	$s1, $s5, $s1
	add.w	$s5, $s1, $s4
	addi.d	$t1, $t1, 1
	beqz	$s5, .LBB11_42
# %bb.48:                               #   in Loop: Header=BB11_43 Depth=1
	ld.d	$t5, $t7, 0
	srai.d	$s1, $s5, 31
	xor	$s7, $s5, $s1
	sub.d	$s1, $s7, $s1
	or	$t5, $t5, $a4
	st.d	$t5, $t7, 0
	slti	$t5, $s5, 0
	sub.d	$s5, $zero, $s1
	masknez	$s1, $s1, $t5
	maskeqz	$t5, $s5, $t5
	or	$t5, $t5, $s1
	slli.d	$s1, $a1, 2
	stx.w	$t5, $a2, $s1
	stx.w	$t1, $a3, $s1
	addi.w	$a1, $a1, 1
	addi.d	$t1, $zero, -1
	ori	$t5, $zero, 2
	b	.LBB11_42
.LBB11_49:                              # %.preheader330.preheader
	move	$a3, $zero
	slli.d	$a0, $a1, 2
	stx.w	$zero, $a2, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI11_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI11_0)
	pcalau12i	$a0, %pc_hi20(.LCPI11_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI11_1)
	pcalau12i	$a0, %pc_hi20(.LCPI11_2)
	vld	$vr2, $a0, %pc_lo12(.LCPI11_2)
	pcalau12i	$a0, %pc_hi20(.LCPI11_3)
	vld	$vr3, $a0, %pc_lo12(.LCPI11_3)
	ori	$a0, $zero, 1
	vrepli.w	$vr4, 32
	vrepli.w	$vr5, 255
	ld.d	$t7, $sp, 400                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB11_50:                              # %.preheader330
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_51 Depth 2
	move	$a6, $zero
	addi.d	$a2, $a3, 1
	addi.d	$a4, $a3, 2
	addi.d	$a5, $a3, 3
	slli.d	$a1, $a3, 2
	slli.d	$a2, $a2, 2
	slli.d	$a3, $a4, 2
	slli.d	$a4, $a5, 2
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB11_51:                              # %.preheader329
                                        #   Parent Loop BB11_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a6, $a6, 6
	add.d	$a7, $t7, $a6
	addi.d	$t1, $a7, 64
	addi.d	$t0, $a7, 128
	addi.d	$a6, $a7, 192
	vldx	$vr6, $a7, $a1
	vldx	$vr7, $t0, $a1
	vldx	$vr8, $t1, $a1
	vldx	$vr9, $a6, $a1
	vsub.w	$vr10, $vr6, $vr7
	vsrai.w	$vr11, $vr8, 1
	vsub.w	$vr11, $vr11, $vr9
	vadd.w	$vr6, $vr7, $vr6
	vsrai.w	$vr7, $vr9, 1
	vadd.w	$vr7, $vr7, $vr8
	vadd.w	$vr8, $vr7, $vr6
	vpickve2gr.w	$t2, $vr8, 0
	stx.w	$t2, $a7, $a1
	vpickve2gr.w	$t3, $vr8, 1
	stx.w	$t3, $a7, $a2
	vpickve2gr.w	$t4, $vr8, 2
	stx.w	$t4, $a7, $a3
	vsub.w	$vr6, $vr6, $vr7
	vstx	$vr6, $a6, $a1
	vadd.w	$vr6, $vr11, $vr10
	vstx	$vr6, $t1, $a1
	vsub.w	$vr6, $vr10, $vr11
	vstx	$vr6, $t0, $a1
	add.d	$t6, $t4, $t2
	sub.d	$t2, $t2, $t4
	vshuf4i.w	$vr6, $vr8, 7
	vsrai.w	$vr6, $vr6, 1
	vinsgr2vr.w	$vr6, $t2, 2
	vinsgr2vr.w	$vr6, $t6, 3
	vori.b	$vr7, $vr4, 0
	vinsgr2vr.w	$vr7, $t3, 0
	vori.b	$vr9, $vr0, 0
	vshuf.w	$vr9, $vr8, $vr7
	vadd.w	$vr7, $vr6, $vr9
	vsub.w	$vr6, $vr6, $vr9
	vori.b	$vr8, $vr1, 0
	vshuf.w	$vr8, $vr6, $vr7
	vori.b	$vr9, $vr2, 0
	vshuf.w	$vr9, $vr6, $vr7
	vadd.w	$vr6, $vr8, $vr9
	vsub.w	$vr7, $vr7, $vr9
	vori.b	$vr8, $vr3, 0
	vshuf.w	$vr8, $vr7, $vr6
	vsrai.w	$vr6, $vr8, 6
	vmaxi.w	$vr6, $vr6, 0
	vmin.w	$vr6, $vr6, $vr5
	ldx.w	$t2, $t1, $a1
	ldx.w	$t3, $t1, $a3
	vstx	$vr6, $a7, $a1
	ldx.w	$a7, $t1, $a4
	ldx.w	$t4, $t1, $a2
	add.d	$t6, $t3, $t2
	sub.d	$t2, $t2, $t3
	vinsgr2vr.w	$vr6, $a7, 0
	vinsgr2vr.w	$vr7, $t4, 0
	vpackev.w	$vr6, $vr7, $vr6
	vsrai.w	$vr6, $vr6, 1
	vinsgr2vr.w	$vr6, $t2, 2
	vinsgr2vr.w	$vr6, $t6, 3
	vori.b	$vr7, $vr4, 0
	vinsgr2vr.w	$vr7, $t4, 0
	vinsgr2vr.w	$vr7, $a7, 1
	vadd.w	$vr8, $vr6, $vr7
	vsub.w	$vr6, $vr6, $vr7
	vori.b	$vr7, $vr1, 0
	vshuf.w	$vr7, $vr6, $vr8
	vori.b	$vr9, $vr2, 0
	vshuf.w	$vr9, $vr6, $vr8
	vadd.w	$vr6, $vr7, $vr9
	vsub.w	$vr7, $vr8, $vr9
	vori.b	$vr8, $vr3, 0
	vshuf.w	$vr8, $vr7, $vr6
	vsrai.w	$vr6, $vr8, 6
	vmaxi.w	$vr6, $vr6, 0
	vmin.w	$vr6, $vr6, $vr5
	ldx.w	$a7, $t0, $a1
	ldx.w	$t2, $t0, $a3
	vstx	$vr6, $t1, $a1
	ldx.w	$t1, $t0, $a4
	ldx.w	$t3, $t0, $a2
	add.d	$t4, $t2, $a7
	sub.d	$a7, $a7, $t2
	vinsgr2vr.w	$vr6, $t1, 0
	vinsgr2vr.w	$vr7, $t3, 0
	vpackev.w	$vr6, $vr7, $vr6
	vsrai.w	$vr6, $vr6, 1
	vinsgr2vr.w	$vr6, $a7, 2
	vinsgr2vr.w	$vr6, $t4, 3
	vori.b	$vr7, $vr4, 0
	vinsgr2vr.w	$vr7, $t3, 0
	vinsgr2vr.w	$vr7, $t1, 1
	vadd.w	$vr8, $vr6, $vr7
	vsub.w	$vr6, $vr6, $vr7
	vori.b	$vr7, $vr1, 0
	vshuf.w	$vr7, $vr6, $vr8
	vori.b	$vr9, $vr2, 0
	vshuf.w	$vr9, $vr6, $vr8
	vadd.w	$vr6, $vr7, $vr9
	vsub.w	$vr7, $vr8, $vr9
	vori.b	$vr8, $vr3, 0
	vshuf.w	$vr8, $vr7, $vr6
	vsrai.w	$vr6, $vr8, 6
	vmaxi.w	$vr6, $vr6, 0
	vmin.w	$vr6, $vr6, $vr5
	ldx.w	$a7, $a6, $a1
	ldx.w	$t1, $a6, $a3
	vstx	$vr6, $t0, $a1
	ldx.w	$t0, $a6, $a4
	ldx.w	$t2, $a6, $a2
	add.d	$t3, $t1, $a7
	sub.d	$a7, $a7, $t1
	vinsgr2vr.w	$vr6, $t0, 0
	vinsgr2vr.w	$vr7, $t2, 0
	vpackev.w	$vr6, $vr7, $vr6
	vsrai.w	$vr6, $vr6, 1
	vinsgr2vr.w	$vr6, $a7, 2
	vinsgr2vr.w	$vr6, $t3, 3
	vori.b	$vr7, $vr4, 0
	vinsgr2vr.w	$vr7, $t2, 0
	vinsgr2vr.w	$vr7, $t0, 1
	vadd.w	$vr8, $vr6, $vr7
	vsub.w	$vr6, $vr6, $vr7
	vori.b	$vr7, $vr1, 0
	vshuf.w	$vr7, $vr6, $vr8
	vori.b	$vr9, $vr2, 0
	vshuf.w	$vr9, $vr6, $vr8
	vadd.w	$vr6, $vr7, $vr9
	vsub.w	$vr7, $vr8, $vr9
	vori.b	$vr8, $vr3, 0
	vshuf.w	$vr8, $vr7, $vr6
	vsrai.w	$vr6, $vr8, 6
	vmaxi.w	$vr6, $vr6, 0
	vmin.w	$vr6, $vr6, $vr5
	vstx	$vr6, $a6, $a1
	andi	$a7, $a5, 1
	ori	$a6, $zero, 4
	move	$a5, $zero
	bnez	$a7, .LBB11_51
# %bb.52:                               #   in Loop: Header=BB11_50 Depth=1
	andi	$a1, $a0, 1
	ori	$a3, $zero, 4
	move	$a0, $zero
	bnez	$a1, .LBB11_50
# %bb.53:                               # %.preheader325
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a0, $a0, 0
	ldptr.d	$a0, $a0, 6472
	ld.w	$a1, $ra, 188
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$a2, $a0, $a2
	ld.w	$t6, $ra, 184
	slli.d	$a3, $a1, 3
	ldx.d	$a6, $a2, $a3
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ldx.h	$a4, $ra, $a0
	alsl.d	$a1, $a1, $a2, 3
	alsl.d	$a5, $t6, $a6, 1
	slli.d	$a0, $t6, 1
	stx.h	$a4, $a6, $a0
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	ldx.h	$a7, $ra, $a4
	ld.d	$a4, $a1, 32
	ld.d	$t0, $sp, 376                   # 8-byte Folded Reload
	ldx.h	$t0, $ra, $t0
	ldx.h	$t1, $ra, $s6
	st.h	$a7, $a5, 8
	alsl.d	$a5, $t6, $a4, 1
	stx.h	$t0, $a4, $a0
	st.h	$t1, $a5, 8
	lu12i.w	$fp, 3
	ori	$a7, $fp, 912
	ld.d	$a5, $a1, 8
	ldx.h	$a7, $ra, $a7
	ori	$t0, $fp, 1168
	ldx.h	$t0, $ra, $t0
	alsl.d	$t2, $t6, $a5, 1
	stx.h	$a7, $a5, $a0
	ld.d	$t1, $a1, 40
	st.h	$t0, $t2, 8
	ori	$a7, $fp, 928
	ldx.h	$t0, $ra, $a7
	alsl.d	$t2, $t6, $t1, 1
	ori	$a7, $fp, 1184
	ldx.h	$t3, $ra, $a7
	ori	$t4, $fp, 976
	ld.d	$a7, $a1, 16
	ldx.h	$t4, $ra, $t4
	stx.h	$t0, $t1, $a0
	st.h	$t3, $t2, 8
	alsl.d	$t2, $t6, $a7, 1
	stx.h	$t4, $a7, $a0
	ori	$t0, $fp, 1232
	ldx.h	$t3, $ra, $t0
	ori	$t0, $fp, 992
	ldx.h	$t4, $ra, $t0
	ld.d	$t0, $a1, 48
	ori	$t7, $fp, 1248
	ldx.h	$t7, $ra, $t7
	st.h	$t3, $t2, 8
	alsl.d	$t2, $t6, $t0, 1
	stx.h	$t4, $t0, $a0
	st.h	$t7, $t2, 8
	ori	$t2, $fp, 1040
	ld.d	$t3, $a1, 24
	ldx.h	$t2, $ra, $t2
	ori	$t4, $fp, 1296
	ldx.h	$t4, $ra, $t4
	alsl.d	$t7, $t6, $t3, 1
	stx.h	$t2, $t3, $a0
	ld.d	$t2, $a1, 56
	st.h	$t4, $t7, 8
	ori	$t4, $fp, 1056
	ldx.h	$t4, $ra, $t4
	alsl.d	$t6, $t6, $t2, 1
	ori	$t7, $fp, 1312
	ldx.h	$t7, $ra, $t7
	stx.h	$t4, $t2, $a0
	ori	$t4, $fp, 852
	ldx.h	$t8, $ra, $t4
	st.h	$t7, $t6, 8
	addi.d	$t4, $a0, 2
	add.d	$t6, $a6, $t4
	stx.h	$t8, $a6, $t4
	ori	$a6, $fp, 1108
	ldx.h	$a6, $ra, $a6
	ori	$t7, $fp, 868
	ldx.h	$t7, $ra, $t7
	ori	$t8, $fp, 1124
	ldx.h	$t8, $ra, $t8
	st.h	$a6, $t6, 8
	add.d	$a6, $a4, $t4
	stx.h	$t7, $a4, $t4
	st.h	$t8, $a6, 8
	ori	$a4, $fp, 916
	ldx.h	$a4, $ra, $a4
	add.d	$a6, $a5, $t4
	ori	$t6, $fp, 1172
	ldx.h	$t6, $ra, $t6
	ori	$t7, $fp, 932
	ldx.h	$t7, $ra, $t7
	stx.h	$a4, $a5, $t4
	st.h	$t6, $a6, 8
	add.d	$a4, $t1, $t4
	stx.h	$t7, $t1, $t4
	ori	$a5, $fp, 1188
	ldx.h	$a5, $ra, $a5
	ori	$a6, $fp, 980
	ldx.h	$a6, $ra, $a6
	ori	$t1, $fp, 1236
	ldx.h	$t1, $ra, $t1
	st.h	$a5, $a4, 8
	add.d	$a4, $a7, $t4
	stx.h	$a6, $a7, $t4
	st.h	$t1, $a4, 8
	ori	$a4, $fp, 996
	ldx.h	$a4, $ra, $a4
	add.d	$a5, $t0, $t4
	ori	$a6, $fp, 1252
	ldx.h	$a6, $ra, $a6
	ori	$a7, $fp, 1044
	ldx.h	$a7, $ra, $a7
	stx.h	$a4, $t0, $t4
	st.h	$a6, $a5, 8
	add.d	$a4, $t3, $t4
	stx.h	$a7, $t3, $t4
	ori	$a5, $fp, 1300
	ldx.h	$a5, $ra, $a5
	ori	$a6, $fp, 1060
	ldx.h	$a6, $ra, $a6
	ori	$a7, $fp, 1316
	ldx.h	$a7, $ra, $a7
	st.h	$a5, $a4, 8
	add.d	$a4, $t2, $t4
	stx.h	$a6, $t2, $t4
	st.h	$a7, $a4, 8
	ori	$a4, $fp, 856
	ldx.h	$a4, $ra, $a4
	ldx.d	$a2, $a2, $a3
	addi.d	$a6, $a0, 4
	ori	$a3, $fp, 1112
	ldx.h	$a3, $ra, $a3
	add.d	$a7, $a2, $a6
	stx.h	$a4, $a2, $a6
	ld.d	$a5, $a1, 32
	st.h	$a3, $a7, 8
	ori	$a3, $fp, 872
	ldx.h	$a4, $ra, $a3
	add.d	$a7, $a5, $a6
	ori	$a3, $fp, 1128
	ldx.h	$t0, $ra, $a3
	ori	$t1, $fp, 920
	ld.d	$a3, $a1, 8
	ldx.h	$t1, $ra, $t1
	stx.h	$a4, $a5, $a6
	st.h	$t0, $a7, 8
	add.d	$a7, $a3, $a6
	stx.h	$t1, $a3, $a6
	ori	$a4, $fp, 1176
	ldx.h	$t0, $ra, $a4
	ori	$a4, $fp, 936
	ldx.h	$t1, $ra, $a4
	ld.d	$a4, $a1, 40
	ori	$t2, $fp, 1192
	ldx.h	$t2, $ra, $t2
	st.h	$t0, $a7, 8
	add.d	$a7, $a4, $a6
	stx.h	$t1, $a4, $a6
	st.h	$t2, $a7, 8
	ori	$a7, $fp, 984
	ld.d	$t1, $a1, 16
	ldx.h	$a7, $ra, $a7
	ori	$t0, $fp, 1240
	ldx.h	$t0, $ra, $t0
	add.d	$t2, $t1, $a6
	stx.h	$a7, $t1, $a6
	ld.d	$a7, $a1, 48
	st.h	$t0, $t2, 8
	ori	$t0, $fp, 1000
	ldx.h	$t2, $ra, $t0
	add.d	$t3, $a7, $a6
	ori	$t0, $fp, 1256
	ldx.h	$t4, $ra, $t0
	ori	$t6, $fp, 1048
	ld.d	$t0, $a1, 24
	ldx.h	$t6, $ra, $t6
	stx.h	$t2, $a7, $a6
	st.h	$t4, $t3, 8
	add.d	$t2, $t0, $a6
	stx.h	$t6, $t0, $a6
	ori	$t3, $fp, 1304
	ldx.h	$t3, $ra, $t3
	ori	$t4, $fp, 1064
	ldx.h	$t4, $ra, $t4
	ld.d	$a1, $a1, 56
	ori	$t6, $fp, 1320
	ldx.h	$t6, $ra, $t6
	st.h	$t3, $t2, 8
	add.d	$t2, $a1, $a6
	stx.h	$t4, $a1, $a6
	st.h	$t6, $t2, 8
	ori	$a6, $fp, 860
	ldx.h	$a6, $ra, $a6
	addi.d	$a0, $a0, 6
	ori	$t2, $fp, 1116
	ldx.h	$t2, $ra, $t2
	add.d	$t3, $a2, $a0
	ld.d	$t4, $sp, 64                    # 8-byte Folded Reload
	ldx.h	$t4, $ra, $t4
	stx.h	$a6, $a2, $a0
	st.h	$t2, $t3, 8
	add.d	$a2, $a5, $a0
	stx.h	$t4, $a5, $a0
	ori	$a5, $fp, 1132
	ldx.h	$a5, $ra, $a5
	ori	$a6, $fp, 924
	ldx.h	$a6, $ra, $a6
	ori	$t2, $fp, 1180
	ldx.h	$t2, $ra, $t2
	st.h	$a5, $a2, 8
	add.d	$a2, $a3, $a0
	stx.h	$a6, $a3, $a0
	st.h	$t2, $a2, 8
	ori	$a2, $fp, 940
	ldx.h	$a2, $ra, $a2
	add.d	$a3, $a4, $a0
	ori	$a5, $fp, 1196
	ldx.h	$a5, $ra, $a5
	ori	$a6, $fp, 988
	ldx.h	$a6, $ra, $a6
	stx.h	$a2, $a4, $a0
	st.h	$a5, $a3, 8
	add.d	$a2, $t1, $a0
	stx.h	$a6, $t1, $a0
	ori	$a3, $fp, 1244
	ldx.h	$a3, $ra, $a3
	ori	$a4, $fp, 1004
	ldx.h	$a4, $ra, $a4
	ori	$a5, $fp, 1260
	ldx.h	$a5, $ra, $a5
	st.h	$a3, $a2, 8
	add.d	$a2, $a7, $a0
	stx.h	$a4, $a7, $a0
	st.h	$a5, $a2, 8
	ori	$a2, $fp, 1052
	ldx.h	$a2, $ra, $a2
	add.d	$a3, $t0, $a0
	ori	$a4, $fp, 1308
	ldx.h	$a4, $ra, $a4
	ori	$a5, $fp, 1068
	ldx.h	$a5, $ra, $a5
	stx.h	$a2, $t0, $a0
	st.h	$a4, $a3, 8
	add.d	$a2, $a1, $a0
	stx.h	$a5, $a1, $a0
	ori	$a0, $fp, 1324
	ldx.h	$a1, $ra, $a0
	addi.d	$a0, $t5, -2
	sltui	$a0, $a0, 1
	masknez	$a3, $s2, $a0
	ori	$a4, $zero, 2
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a3
	st.h	$a1, $a2, 8
	ld.d	$s8, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 680                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 688                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 696                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 704                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 712                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 720                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 728                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 736                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 744                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 752
	ret
.Lfunc_end11:
	.size	dct_chroma_sp2, .Lfunc_end11-dct_chroma_sp2
                                        # -- End function
	.type	SNGL_SCAN,@object               # @SNGL_SCAN
	.section	.rodata,"a",@progbits
	.globl	SNGL_SCAN
SNGL_SCAN:
	.space	2
	.asciz	"\001"
	.ascii	"\000\001"
	.ascii	"\000\002"
	.space	2,1
	.asciz	"\002"
	.asciz	"\003"
	.ascii	"\002\001"
	.ascii	"\001\002"
	.ascii	"\000\003"
	.ascii	"\001\003"
	.space	2,2
	.ascii	"\003\001"
	.ascii	"\003\002"
	.ascii	"\002\003"
	.space	2,3
	.size	SNGL_SCAN, 32

	.type	FIELD_SCAN,@object              # @FIELD_SCAN
	.globl	FIELD_SCAN
FIELD_SCAN:
	.space	2
	.ascii	"\000\001"
	.asciz	"\001"
	.ascii	"\000\002"
	.ascii	"\000\003"
	.space	2,1
	.ascii	"\001\002"
	.ascii	"\001\003"
	.asciz	"\002"
	.ascii	"\002\001"
	.space	2,2
	.ascii	"\002\003"
	.asciz	"\003"
	.ascii	"\003\001"
	.ascii	"\003\002"
	.space	2,3
	.size	FIELD_SCAN, 32

	.type	COEFF_COST,@object              # @COEFF_COST
	.globl	COEFF_COST
COEFF_COST:
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.space	10
	.space	16,9
	.size	COEFF_COST, 32

	.type	COEFF_BIT_COST,@object          # @COEFF_BIT_COST
	.globl	COEFF_BIT_COST
COEFF_BIT_COST:
	.ascii	"\003\005\007\t\t\013\013\013\013\r\r\r\r\r\r\r"
	.ascii	"\005\007\t\t\013\013\013\013\r\r\r\r\r\r\r\r"
	.ascii	"\007\t\t\013\013\013\013\r\r\r\r\r\r\r\r\017"
	.ascii	"\007\t\t\013\013\013\013\r\r\r\r\r\r\r\r\017"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\007\007\t\t\t\t\013\013\013\013\013\013\013\013\r\r"
	.ascii	"\003\005\007\007\007\t\t\t\t\013\013\r\r\r\r\017"
	.ascii	"\005\t\t\013\013\r\r\r\r\017\017\017\017\017\017\017"
	.ascii	"\007\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021"
	.ascii	"\t\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021"
	.ascii	"\t\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021"
	.ascii	"\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021\021"
	.ascii	"\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021\021"
	.ascii	"\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021\021"
	.ascii	"\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021\021"
	.ascii	"\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021\021"
	.ascii	"\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021\021"
	.ascii	"\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021\021"
	.ascii	"\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021\021"
	.ascii	"\013\013\r\r\r\r\017\017\017\017\017\017\017\017\021\021"
	.space	16
	.space	16
	.ascii	"\003\007\t\t\013\r\r\017\017\017\017\021\021\021\021\021"
	.ascii	"\005\t\013\r\r\017\017\017\017\021\021\021\021\021\021\021"
	.ascii	"\005\t\013\r\r\017\017\017\017\021\021\021\021\021\021\021"
	.ascii	"\007\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021"
	.ascii	"\007\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021"
	.ascii	"\007\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021"
	.ascii	"\t\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021"
	.ascii	"\t\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021"
	.ascii	"\t\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021"
	.ascii	"\t\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021"
	.ascii	"\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021\023"
	.ascii	"\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021\023"
	.ascii	"\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021\023"
	.ascii	"\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021\023"
	.ascii	"\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021\023"
	.ascii	"\013\r\r\017\017\017\017\021\021\021\021\021\021\021\021\023"
	.size	COEFF_BIT_COST, 768

	.type	SCAN_YUV422,@object             # @SCAN_YUV422
	.globl	SCAN_YUV422
SCAN_YUV422:
	.space	2
	.ascii	"\000\001"
	.asciz	"\001"
	.ascii	"\000\002"
	.ascii	"\000\003"
	.space	2,1
	.ascii	"\001\002"
	.ascii	"\001\003"
	.size	SCAN_YUV422, 16

	.type	hor_offset,@object              # @hor_offset
	.globl	hor_offset
hor_offset:
	.space	16
	.ascii	"\000\004\000\004"
	.space	4
	.space	4
	.space	4
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.space	4
	.space	4
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.size	hor_offset, 64

	.type	ver_offset,@object              # @ver_offset
	.globl	ver_offset
ver_offset:
	.space	16
	.ascii	"\000\000\004\004"
	.space	4
	.space	4
	.space	4
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.space	4
	.space	4
	.ascii	"\000\000\004\004"
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.ascii	"\b\b\f\f"
	.size	ver_offset, 64

	.type	quant_coef,@object              # @quant_coef
	.globl	quant_coef
	.p2align	2, 0x0
quant_coef:
	.word	13107                           # 0x3333
	.word	8066                            # 0x1f82
	.word	13107                           # 0x3333
	.word	8066                            # 0x1f82
	.word	8066                            # 0x1f82
	.word	5243                            # 0x147b
	.word	8066                            # 0x1f82
	.word	5243                            # 0x147b
	.word	13107                           # 0x3333
	.word	8066                            # 0x1f82
	.word	13107                           # 0x3333
	.word	8066                            # 0x1f82
	.word	8066                            # 0x1f82
	.word	5243                            # 0x147b
	.word	8066                            # 0x1f82
	.word	5243                            # 0x147b
	.word	11916                           # 0x2e8c
	.word	7490                            # 0x1d42
	.word	11916                           # 0x2e8c
	.word	7490                            # 0x1d42
	.word	7490                            # 0x1d42
	.word	4660                            # 0x1234
	.word	7490                            # 0x1d42
	.word	4660                            # 0x1234
	.word	11916                           # 0x2e8c
	.word	7490                            # 0x1d42
	.word	11916                           # 0x2e8c
	.word	7490                            # 0x1d42
	.word	7490                            # 0x1d42
	.word	4660                            # 0x1234
	.word	7490                            # 0x1d42
	.word	4660                            # 0x1234
	.word	10082                           # 0x2762
	.word	6554                            # 0x199a
	.word	10082                           # 0x2762
	.word	6554                            # 0x199a
	.word	6554                            # 0x199a
	.word	4194                            # 0x1062
	.word	6554                            # 0x199a
	.word	4194                            # 0x1062
	.word	10082                           # 0x2762
	.word	6554                            # 0x199a
	.word	10082                           # 0x2762
	.word	6554                            # 0x199a
	.word	6554                            # 0x199a
	.word	4194                            # 0x1062
	.word	6554                            # 0x199a
	.word	4194                            # 0x1062
	.word	9362                            # 0x2492
	.word	5825                            # 0x16c1
	.word	9362                            # 0x2492
	.word	5825                            # 0x16c1
	.word	5825                            # 0x16c1
	.word	3647                            # 0xe3f
	.word	5825                            # 0x16c1
	.word	3647                            # 0xe3f
	.word	9362                            # 0x2492
	.word	5825                            # 0x16c1
	.word	9362                            # 0x2492
	.word	5825                            # 0x16c1
	.word	5825                            # 0x16c1
	.word	3647                            # 0xe3f
	.word	5825                            # 0x16c1
	.word	3647                            # 0xe3f
	.word	8192                            # 0x2000
	.word	5243                            # 0x147b
	.word	8192                            # 0x2000
	.word	5243                            # 0x147b
	.word	5243                            # 0x147b
	.word	3355                            # 0xd1b
	.word	5243                            # 0x147b
	.word	3355                            # 0xd1b
	.word	8192                            # 0x2000
	.word	5243                            # 0x147b
	.word	8192                            # 0x2000
	.word	5243                            # 0x147b
	.word	5243                            # 0x147b
	.word	3355                            # 0xd1b
	.word	5243                            # 0x147b
	.word	3355                            # 0xd1b
	.word	7282                            # 0x1c72
	.word	4559                            # 0x11cf
	.word	7282                            # 0x1c72
	.word	4559                            # 0x11cf
	.word	4559                            # 0x11cf
	.word	2893                            # 0xb4d
	.word	4559                            # 0x11cf
	.word	2893                            # 0xb4d
	.word	7282                            # 0x1c72
	.word	4559                            # 0x11cf
	.word	7282                            # 0x1c72
	.word	4559                            # 0x11cf
	.word	4559                            # 0x11cf
	.word	2893                            # 0xb4d
	.word	4559                            # 0x11cf
	.word	2893                            # 0xb4d
	.size	quant_coef, 384

	.type	dequant_coef,@object            # @dequant_coef
	.globl	dequant_coef
	.p2align	2, 0x0
dequant_coef:
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	11                              # 0xb
	.word	14                              # 0xe
	.word	11                              # 0xb
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	11                              # 0xb
	.word	14                              # 0xe
	.word	11                              # 0xb
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	23                              # 0x17
	.word	29                              # 0x1d
	.word	23                              # 0x17
	.word	29                              # 0x1d
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	23                              # 0x17
	.word	29                              # 0x1d
	.word	23                              # 0x17
	.word	29                              # 0x1d
	.size	dequant_coef, 384

	.type	QP_SCALE_CR,@object             # @QP_SCALE_CR
	.globl	QP_SCALE_CR
QP_SCALE_CR:
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\035\036\037  !\"\"##$$%%%&&&''''"
	.size	QP_SCALE_CR, 52

	.type	getNeighbour,@object            # @getNeighbour
	.comm	getNeighbour,8,8
	.type	dct_luma_16x16.M1,@object       # @dct_luma_16x16.M1
	.local	dct_luma_16x16.M1
	.comm	dct_luma_16x16.M1,1024,4
	.type	dct_luma_16x16.M4,@object       # @dct_luma_16x16.M4
	.local	dct_luma_16x16.M4
	.comm	dct_luma_16x16.M4,64,8
	.type	dct_luma_16x16.M0,@object       # @dct_luma_16x16.M0
	.local	dct_luma_16x16.M0
	.comm	dct_luma_16x16.M0,1024,4
	.type	imgY_org,@object                # @imgY_org
	.comm	imgY_org,8,8
	.type	lrec,@object                    # @lrec
	.comm	lrec,8,8
	.type	dct_luma.m4,@object             # @dct_luma.m4
	.local	dct_luma.m4
	.comm	dct_luma.m4,64,4
	.type	dct_chroma.m5,@object           # @dct_chroma.m5
	.local	dct_chroma.m5
	.comm	dct_chroma.m5,16,8
	.type	dct_chroma.cbpblk_pattern,@object # @dct_chroma.cbpblk_pattern
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	3, 0x0
dct_chroma.cbpblk_pattern:
	.dword	0                               # 0x0
	.dword	983040                          # 0xf0000
	.dword	16711680                        # 0xff0000
	.dword	4294901760                      # 0xffff0000
	.size	dct_chroma.cbpblk_pattern, 32

	.type	dct_chroma.m3,@object           # @dct_chroma.m3
	.local	dct_chroma.m3
	.comm	dct_chroma.m3,64,4
	.type	dct_chroma.m4,@object           # @dct_chroma.m4
	.local	dct_chroma.m4
	.comm	dct_chroma.m4,64,4
	.type	cbp_blk_chroma,@object          # @cbp_blk_chroma
cbp_blk_chroma:
	.ascii	"\020\021\022\023"
	.ascii	"\024\025\026\027"
	.ascii	"\030\031\032\033"
	.ascii	"\034\035\036\037"
	.ascii	" !\"#"
	.ascii	"$%&'"
	.ascii	"()*+"
	.ascii	",-./"
	.size	cbp_blk_chroma, 32

	.type	A,@object                       # @A
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
A:
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	20                              # 0x14
	.word	25                              # 0x19
	.size	A, 64

	.type	si_frame_indicator,@object      # @si_frame_indicator
	.comm	si_frame_indicator,4,4
	.type	sp2_frame_indicator,@object     # @sp2_frame_indicator
	.comm	sp2_frame_indicator,4,4
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	lrec_uv,@object                 # @lrec_uv
	.comm	lrec_uv,8,8
	.type	mb_adaptive,@object             # @mb_adaptive
	.comm	mb_adaptive,4,4
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
	.type	get_mb_block_pos,@object        # @get_mb_block_pos
	.comm	get_mb_block_pos,8,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
