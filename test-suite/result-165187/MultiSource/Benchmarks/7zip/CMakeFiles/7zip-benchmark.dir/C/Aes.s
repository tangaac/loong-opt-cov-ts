	.file	"Aes.c"
	.text
	.globl	AesGenTables                    # -- Begin function AesGenTables
	.p2align	5
	.type	AesGenTables,@function
AesGenTables:                           # @AesGenTables
# %bb.0:                                # %vector.ph
	pcalau12i	$a0, %pc_hi20(Sbox)
	addi.d	$a0, $a0, %pc_lo12(Sbox)
	pcalau12i	$a1, %pc_hi20(InvS)
	addi.d	$a1, $a1, %pc_lo12(InvS)
	move	$a2, $zero
	ori	$a3, $zero, 256
	.p2align	4, , 16
.LBB0_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a4, $a0, $a2
	add.d	$a5, $a0, $a2
	ld.bu	$a5, $a5, 1
	ori	$a6, $a2, 1
	stx.b	$a2, $a1, $a4
	addi.d	$a2, $a2, 2
	stx.b	$a6, $a1, $a5
	bne	$a2, $a3, .LBB0_1
# %bb.2:                                # %vector.body81.preheader
	pcalau12i	$a2, %pc_hi20(D)
	addi.d	$a2, $a2, %pc_lo12(D)
	ori	$a4, $zero, 2048
	add.d	$a2, $a2, $a4
	pcalau12i	$a3, %pc_hi20(T)
	addi.d	$a5, $a3, %pc_lo12(T)
	move	$a3, $zero
	add.d	$a4, $a5, $a4
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, 27
	vrepli.w	$vr3, 254
	vrepli.w	$vr4, 64
	vrepli.w	$vr5, 32
	ori	$a5, $zero, 256
	.p2align	4, , 16
.LBB0_3:                                # %vector.body81
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a6, $a0, $a3
	vinsgr2vr.w	$vr6, $a6, 0
	vilvl.b	$vr7, $vr0, $vr6
	vilvl.h	$vr7, $vr0, $vr7
	vslli.w	$vr8, $vr7, 1
	vslt.b	$vr6, $vr1, $vr6
	vilvl.b	$vr6, $vr6, $vr6
	vilvl.h	$vr6, $vr6, $vr6
	vandn.v	$vr6, $vr6, $vr2
	vand.v	$vr8, $vr8, $vr3
	vxor.v	$vr6, $vr8, $vr6
	vxor.v	$vr8, $vr6, $vr7
	vslli.w	$vr9, $vr7, 8
	vslli.w	$vr10, $vr7, 16
	vslli.w	$vr11, $vr8, 24
	vor.v	$vr11, $vr11, $vr9
	vor.v	$vr11, $vr11, $vr6
	vor.v	$vr11, $vr11, $vr10
	vst	$vr11, $a4, -2048
	vslli.w	$vr11, $vr6, 8
	vor.v	$vr11, $vr8, $vr11
	vor.v	$vr10, $vr11, $vr10
	vslli.w	$vr11, $vr7, 24
	vor.v	$vr10, $vr10, $vr11
	vst	$vr10, $a4, -1024
	vslli.w	$vr10, $vr8, 8
	vslli.w	$vr12, $vr6, 16
	vor.v	$vr10, $vr10, $vr12
	vor.v	$vr10, $vr10, $vr7
	vor.v	$vr10, $vr10, $vr11
	vst	$vr10, $a4, 0
	vslli.w	$vr8, $vr8, 16
	vslli.w	$vr6, $vr6, 24
	vor.v	$vr6, $vr8, $vr6
	ldx.w	$a6, $a1, $a3
	vor.v	$vr6, $vr6, $vr7
	vor.v	$vr6, $vr6, $vr9
	vst	$vr6, $a4, 1024
	vinsgr2vr.w	$vr6, $a6, 0
	vilvl.b	$vr7, $vr0, $vr6
	vilvl.h	$vr7, $vr0, $vr7
	vslli.w	$vr8, $vr7, 1
	vslt.b	$vr6, $vr1, $vr6
	vilvl.b	$vr6, $vr6, $vr6
	vilvl.h	$vr6, $vr6, $vr6
	vandn.v	$vr6, $vr6, $vr2
	vand.v	$vr8, $vr8, $vr3
	vxor.v	$vr6, $vr8, $vr6
	vslli.w	$vr8, $vr6, 1
	vand.v	$vr9, $vr7, $vr4
	vseqi.w	$vr9, $vr9, 0
	vandn.v	$vr9, $vr9, $vr2
	vand.v	$vr8, $vr8, $vr3
	vxor.v	$vr8, $vr8, $vr9
	vslli.w	$vr9, $vr8, 1
	vand.v	$vr10, $vr7, $vr5
	vseqi.w	$vr10, $vr10, 0
	vandn.v	$vr10, $vr10, $vr2
	vand.v	$vr9, $vr9, $vr3
	vxor.v	$vr9, $vr9, $vr10
	vxor.v	$vr10, $vr9, $vr7
	vxor.v	$vr11, $vr10, $vr6
	vxor.v	$vr8, $vr9, $vr8
	vxor.v	$vr7, $vr8, $vr7
	vxor.v	$vr6, $vr8, $vr6
	vslli.w	$vr8, $vr10, 8
	vslli.w	$vr9, $vr7, 16
	vor.v	$vr8, $vr9, $vr8
	vslli.w	$vr9, $vr11, 24
	vor.v	$vr8, $vr8, $vr9
	vor.v	$vr8, $vr8, $vr6
	vst	$vr8, $a2, -2048
	vslli.w	$vr8, $vr6, 8
	vslli.w	$vr9, $vr10, 16
	vor.v	$vr8, $vr8, $vr9
	vslli.w	$vr9, $vr7, 24
	vor.v	$vr8, $vr8, $vr9
	vor.v	$vr8, $vr8, $vr11
	vst	$vr8, $a2, -1024
	vslli.w	$vr8, $vr11, 8
	vslli.w	$vr9, $vr6, 16
	vor.v	$vr8, $vr8, $vr9
	vslli.w	$vr9, $vr10, 24
	vor.v	$vr8, $vr8, $vr9
	vor.v	$vr8, $vr8, $vr7
	vst	$vr8, $a2, 0
	vslli.w	$vr7, $vr7, 8
	vslli.w	$vr8, $vr11, 16
	vor.v	$vr7, $vr7, $vr8
	vslli.w	$vr6, $vr6, 24
	vor.v	$vr6, $vr7, $vr6
	vor.v	$vr6, $vr6, $vr10
	vst	$vr6, $a2, 1024
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 16
	addi.d	$a4, $a4, 16
	bne	$a3, $a5, .LBB0_3
# %bb.4:                                # %middle.block85
	pcalau12i	$a0, %pc_hi20(g_AesCbc_Encode)
	pcalau12i	$a1, %pc_hi20(AesCbc_Encode)
	addi.d	$a1, $a1, %pc_lo12(AesCbc_Encode)
	st.d	$a1, $a0, %pc_lo12(g_AesCbc_Encode)
	pcalau12i	$a0, %pc_hi20(g_AesCbc_Decode)
	pcalau12i	$a1, %pc_hi20(AesCbc_Decode)
	addi.d	$a1, $a1, %pc_lo12(AesCbc_Decode)
	st.d	$a1, $a0, %pc_lo12(g_AesCbc_Decode)
	pcalau12i	$a0, %pc_hi20(g_AesCtr_Code)
	pcalau12i	$a1, %pc_hi20(AesCtr_Code)
	addi.d	$a1, $a1, %pc_lo12(AesCtr_Code)
	st.d	$a1, $a0, %pc_lo12(g_AesCtr_Code)
	ret
.Lfunc_end0:
	.size	AesGenTables, .Lfunc_end0-AesGenTables
                                        # -- End function
	.globl	AesCbc_Encode                   # -- Begin function AesCbc_Encode
	.p2align	5
	.type	AesCbc_Encode,@function
AesCbc_Encode:                          # @AesCbc_Encode
# %bb.0:
	beqz	$a2, .LBB1_4
# %bb.1:                                # %.lr.ph
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	addi.d	$s2, $a0, 16
	.p2align	4, , 16
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s1, 0
	xor	$a0, $a0, $a1
	st.w	$a0, $s1, 0
	ld.w	$a0, $s0, 4
	ld.w	$a1, $s1, 4
	xor	$a0, $a0, $a1
	st.w	$a0, $s1, 4
	ld.w	$a0, $s0, 8
	ld.w	$a1, $s1, 8
	xor	$a0, $a0, $a1
	st.w	$a0, $s1, 8
	ld.w	$a0, $s0, 12
	ld.w	$a1, $s1, 12
	xor	$a0, $a0, $a1
	st.w	$a0, $s1, 12
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s1
	pcaddu18i	$ra, %call36(Aes_Encode)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	st.w	$a0, $s0, 0
	ld.w	$a0, $s1, 4
	st.w	$a0, $s0, 4
	ld.w	$a0, $s1, 8
	st.w	$a0, $s0, 8
	ld.w	$a0, $s1, 12
	st.w	$a0, $s0, 12
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 16
	bnez	$fp, .LBB1_2
# %bb.3:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB1_4:                                # %._crit_edge
	ret
.Lfunc_end1:
	.size	AesCbc_Encode, .Lfunc_end1-AesCbc_Encode
                                        # -- End function
	.globl	AesCbc_Decode                   # -- Begin function AesCbc_Decode
	.p2align	5
	.type	AesCbc_Decode,@function
AesCbc_Decode:                          # @AesCbc_Decode
# %bb.0:
	beqz	$a2, .LBB2_7
# %bb.1:                                # %.lr.ph
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
	addi.d	$a3, $a0, 16
	lu12i.w	$a4, -4096
	lu32i.d	$a4, 0
	pcalau12i	$a5, %pc_hi20(D)
	addi.d	$a5, $a5, %pc_lo12(D)
	addi.d	$a6, $a5, 1024
	addi.d	$t0, $a5, 2047
	addi.d	$a7, $t0, 1
	addi.d	$t0, $t0, 1025
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %Aes_Decode.exit
                                        #   in Loop: Header=BB2_3 Depth=1
	pcalau12i	$t6, %pc_hi20(InvS)
	addi.d	$t6, $t6, %pc_lo12(InvS)
	bstrpick.d	$s5, $fp, 15, 8
	ldx.bu	$s5, $t6, $s5
	ldx.bu	$s2, $t6, $s2
	slli.d	$s5, $s5, 8
	bstrpick.d	$s6, $t8, 23, 16
	ldx.bu	$s6, $t6, $s6
	bstrpick.d	$s7, $s1, 31, 24
	ldx.b	$s7, $t6, $s7
	or	$s2, $s5, $s2
	slli.d	$s5, $s6, 16
	or	$s2, $s2, $s5
	slli.d	$s5, $s7, 24
	ld.w	$s6, $t5, -16
	bstrpick.d	$s7, $t7, 15, 8
	ldx.bu	$s7, $t6, $s7
	or	$s2, $s2, $s5
	xor	$s2, $s2, $s6
	ldx.bu	$s4, $t6, $s4
	slli.d	$s5, $s7, 8
	bstrpick.d	$s6, $fp, 23, 16
	ldx.bu	$s6, $t6, $s6
	bstrpick.d	$s7, $t8, 31, 24
	ldx.b	$s7, $t6, $s7
	or	$s4, $s5, $s4
	slli.d	$s5, $s6, 16
	or	$s4, $s4, $s5
	slli.d	$s5, $s7, 24
	ld.w	$s6, $t5, -12
	bstrpick.d	$s7, $s1, 15, 8
	ldx.bu	$s7, $t6, $s7
	or	$s4, $s4, $s5
	xor	$s4, $s4, $s6
	ldx.bu	$s0, $t6, $s0
	slli.d	$s5, $s7, 8
	bstrpick.d	$s6, $t7, 23, 16
	ldx.bu	$s6, $t6, $s6
	bstrpick.d	$fp, $fp, 31, 24
	ldx.b	$fp, $t6, $fp
	or	$s0, $s5, $s0
	slli.d	$s5, $s6, 16
	or	$s0, $s0, $s5
	slli.d	$fp, $fp, 24
	ldx.bu	$s3, $t6, $s3
	bstrpick.d	$t8, $t8, 15, 8
	ldx.bu	$t8, $t6, $t8
	bstrpick.d	$s1, $s1, 23, 16
	ldx.bu	$s1, $t6, $s1
	bstrpick.d	$t7, $t7, 31, 24
	ld.w	$s5, $a0, 0
	ldx.b	$t6, $t6, $t7
	ld.w	$t7, $t5, -8
	ld.w	$t5, $t5, -4
	xor	$s2, $s2, $s5
	st.w	$s2, $a1, 0
	ld.w	$s2, $a0, 4
	or	$fp, $s0, $fp
	xor	$t7, $fp, $t7
	slli.d	$t8, $t8, 8
	xor	$fp, $s4, $s2
	st.w	$fp, $a1, 4
	ld.w	$fp, $a0, 8
	or	$t8, $t8, $s3
	slli.d	$s0, $s1, 16
	or	$t8, $t8, $s0
	xor	$t7, $t7, $fp
	st.w	$t7, $a1, 8
	ld.w	$t7, $a0, 12
	slli.d	$t6, $t6, 24
	or	$t6, $t8, $t6
	xor	$t5, $t6, $t5
	xor	$t5, $t5, $t7
	st.w	$t5, $a1, 12
	st.w	$t1, $a0, 0
	st.w	$t2, $a0, 4
	st.w	$t3, $a0, 8
	st.w	$t4, $a0, 12
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 16
	beqz	$a2, .LBB2_6
.LBB2_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
	ld.w	$t1, $a1, 0
	ld.w	$t5, $a3, 0
	ld.w	$t2, $a1, 4
	ld.w	$t3, $a1, 8
	ld.w	$t4, $a1, 12
	slli.d	$t6, $t5, 3
	addi.d	$t6, $t6, 4
	bstrpick.d	$t6, $t6, 31, 2
	alsl.d	$t7, $t6, $a3, 4
	slli.d	$t6, $t6, 4
	ldx.w	$t6, $a3, $t6
	ld.w	$t8, $t7, 4
	ld.w	$fp, $t7, 8
	ld.w	$t7, $t7, 12
	xor	$s0, $t6, $t1
	xor	$s3, $t8, $t2
	xor	$s2, $fp, $t3
	xor	$s1, $t7, $t4
	addi.w	$t6, $t5, -1
	slli.d	$t5, $t5, 5
	bstrpick.d	$t5, $t5, 33, 5
	slli.d	$t5, $t5, 5
	add.d	$t5, $a3, $t5
	.p2align	4, , 16
.LBB2_4:                                #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$t7, $s0, 255
	slli.d	$t7, $t7, 2
	ldx.w	$t7, $a5, $t7
	srli.d	$t8, $s1, 6
	andi	$t8, $t8, 1020
	ldx.w	$t8, $a6, $t8
	srli.d	$fp, $s2, 14
	andi	$fp, $fp, 1020
	ldx.w	$fp, $a7, $fp
	and	$s4, $s3, $a4
	srli.d	$s4, $s4, 22
	ldx.w	$s4, $t0, $s4
	xor	$t7, $t8, $t7
	xor	$t7, $t7, $fp
	xor	$t7, $t7, $s4
	ld.w	$t8, $t5, 0
	andi	$fp, $s2, 255
	slli.d	$fp, $fp, 2
	ldx.w	$fp, $a5, $fp
	srli.d	$s4, $s3, 6
	andi	$s4, $s4, 1020
	ldx.w	$s4, $a6, $s4
	srli.d	$s5, $s0, 14
	andi	$s5, $s5, 1020
	ldx.w	$s5, $a7, $s5
	and	$s6, $s1, $a4
	xor	$t7, $t7, $t8
	xor	$t8, $s4, $fp
	xor	$t8, $t8, $s5
	srli.d	$fp, $s6, 22
	ldx.w	$fp, $t0, $fp
	ld.w	$s4, $t5, 8
	andi	$s5, $s1, 255
	slli.d	$s5, $s5, 2
	ldx.w	$s5, $a5, $s5
	srli.d	$s6, $s2, 6
	andi	$s6, $s6, 1020
	ldx.w	$s6, $a6, $s6
	xor	$t8, $t8, $fp
	and	$fp, $s0, $a4
	xor	$t8, $t8, $s4
	xor	$s4, $s6, $s5
	srli.d	$s5, $s3, 14
	andi	$s5, $s5, 1020
	ldx.w	$s5, $a7, $s5
	srli.d	$fp, $fp, 22
	ldx.w	$fp, $t0, $fp
	ld.w	$s6, $t5, 12
	and	$s2, $s2, $a4
	xor	$s4, $s4, $s5
	xor	$fp, $s4, $fp
	xor	$fp, $fp, $s6
	andi	$s3, $s3, 255
	slli.d	$s3, $s3, 2
	ldx.w	$s3, $a5, $s3
	srli.d	$s0, $s0, 6
	andi	$s0, $s0, 1020
	ldx.w	$s0, $a6, $s0
	srli.d	$s1, $s1, 14
	andi	$s1, $s1, 1020
	ldx.w	$s1, $a7, $s1
	srli.d	$s2, $s2, 22
	ldx.w	$s2, $t0, $s2
	ld.w	$s4, $t5, 4
	xor	$s0, $s0, $s3
	xor	$s0, $s0, $s1
	xor	$s0, $s0, $s2
	xor	$s1, $s0, $s4
	andi	$s2, $t7, 255
	andi	$s4, $s1, 255
	andi	$s0, $t8, 255
	andi	$s3, $fp, 255
	beqz	$t6, .LBB2_2
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=2
	slli.d	$s2, $s2, 2
	ldx.w	$s2, $a5, $s2
	srli.d	$s5, $fp, 6
	andi	$s5, $s5, 1020
	ldx.w	$s5, $a6, $s5
	srli.d	$s6, $t8, 14
	andi	$s6, $s6, 1020
	ldx.w	$s6, $a7, $s6
	and	$s7, $fp, $a4
	xor	$s2, $s5, $s2
	xor	$s2, $s2, $s6
	and	$s5, $s1, $a4
	srli.d	$s5, $s5, 22
	ldx.w	$s5, $t0, $s5
	ld.w	$s6, $t5, -16
	slli.d	$s0, $s0, 2
	ldx.w	$s8, $a5, $s0
	srli.d	$s0, $s1, 6
	andi	$s0, $s0, 1020
	ldx.w	$ra, $a6, $s0
	xor	$s0, $s2, $s5
	and	$s5, $t8, $a4
	xor	$s0, $s0, $s6
	xor	$s2, $ra, $s8
	srli.d	$s6, $t7, 14
	andi	$s6, $s6, 1020
	ldx.w	$s6, $a7, $s6
	srli.d	$s7, $s7, 22
	ldx.w	$s7, $t0, $s7
	ld.w	$s8, $t5, -8
	xor	$s2, $s2, $s6
	and	$s6, $t7, $a4
	xor	$s2, $s2, $s7
	xor	$s2, $s2, $s8
	slli.d	$s3, $s3, 2
	ldx.w	$s3, $a5, $s3
	srli.d	$t8, $t8, 6
	andi	$t8, $t8, 1020
	ldx.w	$t8, $a6, $t8
	srli.d	$s1, $s1, 14
	andi	$s1, $s1, 1020
	ldx.w	$s1, $a7, $s1
	srli.d	$s6, $s6, 22
	ldx.w	$s6, $t0, $s6
	ld.w	$s7, $t5, -4
	xor	$t8, $t8, $s3
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $s6
	xor	$s1, $t8, $s7
	slli.d	$t8, $s4, 2
	ldx.w	$t8, $a5, $t8
	srli.d	$t7, $t7, 6
	andi	$t7, $t7, 1020
	ldx.w	$t7, $a6, $t7
	srli.d	$fp, $fp, 14
	andi	$fp, $fp, 1020
	ldx.w	$fp, $a7, $fp
	srli.d	$s3, $s5, 22
	ldx.w	$s3, $t0, $s3
	ld.w	$s4, $t5, -12
	xor	$t7, $t7, $t8
	xor	$t7, $t7, $fp
	xor	$t7, $t7, $s3
	xor	$s3, $t7, $s4
	addi.w	$t6, $t6, -1
	addi.d	$t5, $t5, -32
	b	.LBB2_4
.LBB2_6:
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
.LBB2_7:                                # %._crit_edge
	ret
.Lfunc_end2:
	.size	AesCbc_Decode, .Lfunc_end2-AesCbc_Decode
                                        # -- End function
	.globl	AesCtr_Code                     # -- Begin function AesCtr_Code
	.p2align	5
	.type	AesCtr_Code,@function
AesCtr_Code:                            # @AesCtr_Code
# %bb.0:
	beqz	$a2, .LBB3_6
# %bb.1:                                # %.lr.ph
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	addi.d	$s2, $a0, 16
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_2:                                #   in Loop: Header=BB3_3 Depth=1
	addi.d	$a1, $sp, 8
	move	$a0, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(Aes_Encode)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 8
	srli.d	$t0, $a2, 8
	ld.w	$t1, $sp, 12
	srli.d	$t2, $a2, 16
	srli.d	$t3, $a2, 24
	ld.w	$a7, $sp, 16
	srli.d	$t4, $t1, 8
	srli.d	$t5, $t1, 16
	srli.d	$t6, $t1, 24
	srli.d	$a6, $a7, 8
	ld.w	$a1, $sp, 20
	srli.d	$a4, $a7, 16
	ld.b	$t7, $s0, 0
	srli.d	$a5, $a7, 24
	srli.d	$a3, $a1, 8
	srli.d	$a0, $a1, 16
	xor	$t7, $t7, $a2
	ld.b	$t8, $s0, 1
	srli.d	$a2, $a1, 24
	st.b	$t7, $s0, 0
	ld.b	$t7, $s0, 2
	xor	$t0, $t8, $t0
	st.b	$t0, $s0, 1
	ld.b	$t0, $s0, 3
	xor	$t2, $t7, $t2
	st.b	$t2, $s0, 2
	ld.b	$t2, $s0, 4
	xor	$t0, $t0, $t3
	st.b	$t0, $s0, 3
	ld.b	$t0, $s0, 5
	xor	$t1, $t2, $t1
	st.b	$t1, $s0, 4
	ld.b	$t1, $s0, 6
	xor	$t0, $t0, $t4
	st.b	$t0, $s0, 5
	ld.b	$t0, $s0, 7
	xor	$t1, $t1, $t5
	st.b	$t1, $s0, 6
	ld.b	$t1, $s0, 8
	xor	$t0, $t0, $t6
	st.b	$t0, $s0, 7
	ld.b	$t0, $s0, 9
	xor	$a7, $t1, $a7
	st.b	$a7, $s0, 8
	ld.b	$a7, $s0, 10
	xor	$a6, $t0, $a6
	st.b	$a6, $s0, 9
	ld.b	$a6, $s0, 11
	xor	$a4, $a7, $a4
	st.b	$a4, $s0, 10
	ld.b	$a4, $s0, 12
	xor	$a5, $a6, $a5
	st.b	$a5, $s0, 11
	ld.b	$a5, $s0, 13
	xor	$a1, $a4, $a1
	st.b	$a1, $s0, 12
	ld.b	$a1, $s0, 14
	xor	$a3, $a5, $a3
	ld.b	$a4, $s0, 15
	st.b	$a3, $s0, 13
	xor	$a0, $a1, $a0
	st.b	$a0, $s0, 14
	xor	$a0, $a4, $a2
	st.b	$a0, $s0, 15
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 16
	beqz	$fp, .LBB3_5
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	ld.wu	$a0, $s1, 0
	addi.d	$a0, $a0, 1
	slli.d	$a1, $a0, 31
	st.w	$a0, $s1, 0
	bgez	$a1, .LBB3_2
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	ld.w	$a0, $s1, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 4
	b	.LBB3_2
.LBB3_5:
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
.LBB3_6:                                # %._crit_edge
	ret
.Lfunc_end3:
	.size	AesCtr_Code, .Lfunc_end3-AesCtr_Code
                                        # -- End function
	.globl	Aes_SetKey_Enc                  # -- Begin function Aes_SetKey_Enc
	.p2align	5
	.type	Aes_SetKey_Enc,@function
Aes_SetKey_Enc:                         # @Aes_SetKey_Enc
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	bstrpick.d	$a4, $a2, 31, 3
	addi.w	$a5, $a2, 28
	bstrpick.d	$a3, $a2, 31, 2
	bstrpick.d	$a4, $a4, 60, 0
	addi.d	$a4, $a4, 3
	st.w	$a4, $a0, 0
	ori	$a6, $zero, 4
	addi.d	$a4, $a0, 16
	bgeu	$a2, $a6, .LBB4_2
# %bb.1:
	move	$a1, $zero
	addi.w	$a6, $a1, 0
	bltu	$a6, $a5, .LBB4_5
	b	.LBB4_13
.LBB4_2:                                # %.lr.ph.preheader
	addi.w	$a6, $a3, 0
	move	$a7, $a4
	.p2align	4, , 16
.LBB4_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a1, 0
	st.w	$t0, $a7, 0
	addi.d	$a1, $a1, 4
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 4
	bnez	$a6, .LBB4_3
# %bb.4:
	move	$a1, $a3
	addi.w	$a6, $a1, 0
	bgeu	$a6, $a5, .LBB4_13
.LBB4_5:                                # %.lr.ph47
	bstrpick.d	$a7, $a1, 31, 0
	bstrpick.d	$t0, $a5, 31, 0
	addi.w	$a5, $zero, -1
	lu32i.d	$a5, 0
	add.d	$a5, $a7, $a5
	alsl.d	$a0, $a7, $a0, 2
	addi.d	$a0, $a0, 16
	sub.w	$a6, $zero, $a3
	sub.d	$a7, $t0, $a7
	addi.w	$t0, $a3, 0
	pcalau12i	$t1, %pc_hi20(Sbox)
	addi.d	$t1, $t1, %pc_lo12(Sbox)
	pcalau12i	$t2, %pc_hi20(Rcon)
	addi.d	$t2, $t2, %pc_lo12(Rcon)
	ori	$t3, $zero, 28
	ori	$t4, $zero, 4
	b	.LBB4_9
	.p2align	4, , 16
.LBB4_6:                                #   in Loop: Header=BB4_9 Depth=1
	bstrpick.d	$t7, $t5, 15, 8
	ldx.bu	$t7, $t1, $t7
	bstrpick.d	$t6, $t6, 31, 0
	ldx.bu	$t6, $t2, $t6
	bstrpick.d	$t8, $t5, 23, 16
	ldx.bu	$t8, $t1, $t8
	srli.d	$fp, $t5, 24
	ldx.bu	$fp, $t1, $fp
	xor	$t6, $t6, $t7
	slli.d	$t7, $t8, 8
	or	$t6, $t7, $t6
	slli.d	$t7, $fp, 16
	or	$t6, $t6, $t7
	andi	$t5, $t5, 255
.LBB4_7:                                # %.sink.split
                                        #   in Loop: Header=BB4_9 Depth=1
	ldx.bu	$t5, $t1, $t5
	slli.d	$t5, $t5, 24
	or	$t5, $t6, $t5
.LBB4_8:                                #   in Loop: Header=BB4_9 Depth=1
	add.d	$t6, $a6, $a1
	bstrpick.d	$t6, $t6, 31, 0
	slli.d	$t6, $t6, 2
	ldx.w	$t6, $a4, $t6
	xor	$t5, $t6, $t5
	st.w	$t5, $a0, 0
	addi.d	$a5, $a5, 1
	addi.d	$a0, $a0, 4
	addi.d	$a7, $a7, -1
	addi.w	$a1, $a1, 1
	beqz	$a7, .LBB4_13
.LBB4_9:                                # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t5, $a5, 31, 0
	slli.d	$t5, $t5, 2
	ldx.wu	$t5, $a4, $t5
	addi.w	$t6, $a1, 0
	div.wu	$t6, $t6, $t0
	mul.d	$t7, $t6, $a3
	sub.w	$t7, $a1, $t7
	beqz	$t7, .LBB4_6
# %bb.10:                               #   in Loop: Header=BB4_9 Depth=1
	bltu	$a2, $t3, .LBB4_8
# %bb.11:                               #   in Loop: Header=BB4_9 Depth=1
	bne	$t7, $t4, .LBB4_8
# %bb.12:                               #   in Loop: Header=BB4_9 Depth=1
	andi	$t6, $t5, 255
	ldx.bu	$t6, $t1, $t6
	bstrpick.d	$t7, $t5, 15, 8
	ldx.bu	$t7, $t1, $t7
	bstrpick.d	$t8, $t5, 23, 16
	ldx.bu	$t8, $t1, $t8
	slli.d	$t7, $t7, 8
	or	$t6, $t7, $t6
	slli.d	$t7, $t8, 16
	or	$t6, $t6, $t7
	srli.d	$t5, $t5, 24
	b	.LBB4_7
.LBB4_13:                               # %._crit_edge
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	Aes_SetKey_Enc, .Lfunc_end4-Aes_SetKey_Enc
                                        # -- End function
	.globl	Aes_SetKey_Dec                  # -- Begin function Aes_SetKey_Dec
	.p2align	5
	.type	Aes_SetKey_Dec,@function
Aes_SetKey_Dec:                         # @Aes_SetKey_Dec
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a2
	move	$fp, $a0
	pcaddu18i	$ra, %call36(Aes_SetKey_Enc)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s0, 20
	beqz	$a1, .LBB5_3
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a0, $fp, 32
	bstrpick.d	$a1, $a1, 31, 0
	pcalau12i	$a2, %pc_hi20(Sbox)
	addi.d	$a2, $a2, %pc_lo12(Sbox)
	pcalau12i	$a3, %pc_hi20(D)
	addi.d	$a3, $a3, %pc_lo12(D)
	ori	$a4, $zero, 2048
	ori	$a5, $zero, 3072
	.p2align	4, , 16
.LBB5_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a6, $a0, 0
	andi	$a7, $a6, 255
	ldx.bu	$a7, $a2, $a7
	bstrpick.d	$t0, $a6, 15, 8
	ldx.bu	$t0, $a2, $t0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a3, $a7
	alsl.d	$t0, $t0, $a3, 2
	bstrpick.d	$t1, $a6, 23, 16
	ldx.bu	$t1, $a2, $t1
	srli.d	$a6, $a6, 24
	ldx.bu	$a6, $a2, $a6
	ld.w	$t0, $t0, 1024
	alsl.d	$t1, $t1, $a3, 2
	ldx.w	$t1, $t1, $a4
	alsl.d	$a6, $a6, $a3, 2
	ldx.w	$a6, $a6, $a5
	xor	$a7, $t0, $a7
	xor	$a7, $a7, $t1
	xor	$a6, $a7, $a6
	st.w	$a6, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB5_2
.LBB5_3:                                # %._crit_edge
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	Aes_SetKey_Dec, .Lfunc_end5-Aes_SetKey_Dec
                                        # -- End function
	.globl	AesCbc_Init                     # -- Begin function AesCbc_Init
	.p2align	5
	.type	AesCbc_Init,@function
AesCbc_Init:                            # @AesCbc_Init
# %bb.0:
	ld.w	$a2, $a1, 0
	st.w	$a2, $a0, 0
	ld.w	$a2, $a1, 4
	st.w	$a2, $a0, 4
	ld.w	$a2, $a1, 8
	st.w	$a2, $a0, 8
	ld.w	$a1, $a1, 12
	st.w	$a1, $a0, 12
	ret
.Lfunc_end6:
	.size	AesCbc_Init, .Lfunc_end6-AesCbc_Init
                                        # -- End function
	.p2align	5                               # -- Begin function Aes_Encode
	.type	Aes_Encode,@function
Aes_Encode:                             # @Aes_Encode
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a3, $a2, 0
	ld.w	$a4, $a0, 16
	xor	$t3, $a4, $a3
	ld.w	$a3, $a2, 4
	ld.w	$a4, $a0, 20
	ld.w	$a5, $a2, 8
	ld.w	$a6, $a0, 24
	ld.w	$a2, $a2, 12
	ld.w	$a7, $a0, 28
	ld.w	$t0, $a0, 0
	xor	$t6, $a4, $a3
	xor	$t2, $a6, $a5
	xor	$t5, $a7, $a2
	addi.w	$a2, $t0, -1
	addi.d	$a0, $a0, 60
	lu12i.w	$a4, -4096
	lu32i.d	$a4, 0
	pcalau12i	$a3, %pc_hi20(T)
	addi.d	$a5, $a3, %pc_lo12(T)
	addi.d	$a6, $a5, 1024
	addi.d	$a3, $a5, 2047
	addi.d	$a7, $a3, 1
	addi.d	$t0, $a3, 1025
	.p2align	4, , 16
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	andi	$a3, $t2, 255
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a5, $a3
	srli.d	$t1, $t5, 6
	andi	$t1, $t1, 1020
	ldx.w	$t1, $a6, $t1
	srli.d	$t4, $t3, 14
	andi	$t4, $t4, 1020
	ldx.w	$t4, $a7, $t4
	and	$t7, $t6, $a4
	srli.d	$t7, $t7, 22
	ldx.w	$t7, $t0, $t7
	xor	$a3, $t1, $a3
	xor	$a3, $a3, $t4
	xor	$a3, $a3, $t7
	ld.w	$t1, $a0, -20
	andi	$t4, $t3, 255
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $a5, $t4
	srli.d	$t7, $t6, 6
	andi	$t7, $t7, 1020
	ldx.w	$t7, $a6, $t7
	srli.d	$t8, $t2, 14
	andi	$t8, $t8, 1020
	ldx.w	$t8, $a7, $t8
	and	$fp, $t5, $a4
	xor	$a3, $a3, $t1
	xor	$t1, $t7, $t4
	xor	$t1, $t1, $t8
	srli.d	$t4, $fp, 22
	ldx.w	$t4, $t0, $t4
	ld.w	$t7, $a0, -28
	andi	$t8, $t5, 255
	slli.d	$t8, $t8, 2
	ldx.w	$t8, $a5, $t8
	srli.d	$fp, $t3, 6
	andi	$fp, $fp, 1020
	ldx.w	$fp, $a6, $fp
	xor	$t1, $t1, $t4
	and	$t4, $t2, $a4
	xor	$t1, $t1, $t7
	xor	$t7, $fp, $t8
	srli.d	$t8, $t6, 14
	andi	$t8, $t8, 1020
	ldx.w	$t8, $a7, $t8
	srli.d	$t4, $t4, 22
	ldx.w	$t4, $t0, $t4
	ld.w	$fp, $a0, -16
	and	$t3, $t3, $a4
	xor	$t7, $t7, $t8
	xor	$t4, $t7, $t4
	xor	$t4, $t4, $fp
	andi	$t6, $t6, 255
	slli.d	$t6, $t6, 2
	ldx.w	$t6, $a5, $t6
	srli.d	$t2, $t2, 6
	andi	$t2, $t2, 1020
	ldx.w	$t2, $a6, $t2
	srli.d	$t5, $t5, 14
	andi	$t5, $t5, 1020
	ldx.w	$t5, $a7, $t5
	srli.d	$t3, $t3, 22
	ldx.w	$t3, $t0, $t3
	ld.w	$t7, $a0, -24
	xor	$t2, $t2, $t6
	xor	$t2, $t2, $t5
	xor	$t2, $t2, $t3
	xor	$t5, $t2, $t7
	andi	$t3, $t1, 255
	andi	$t7, $t5, 255
	andi	$t2, $a3, 255
	andi	$t6, $t4, 255
	beqz	$a2, .LBB7_3
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a5, $t2
	srli.d	$t8, $t4, 6
	andi	$t8, $t8, 1020
	ldx.w	$t8, $a6, $t8
	srli.d	$fp, $t1, 14
	andi	$fp, $fp, 1020
	ldx.w	$fp, $a7, $fp
	and	$s0, $a3, $a4
	xor	$t2, $t8, $t2
	xor	$t2, $t2, $fp
	and	$t8, $t5, $a4
	srli.d	$t8, $t8, 22
	ldx.w	$t8, $t0, $t8
	ld.w	$fp, $a0, -4
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $a5, $t3
	srli.d	$s1, $t5, 6
	andi	$s1, $s1, 1020
	ldx.w	$s1, $a6, $s1
	xor	$t2, $t2, $t8
	and	$t8, $t4, $a4
	xor	$t2, $t2, $fp
	xor	$t3, $s1, $t3
	srli.d	$fp, $a3, 14
	andi	$fp, $fp, 1020
	ldx.w	$fp, $a7, $fp
	srli.d	$t8, $t8, 22
	ldx.w	$t8, $t0, $t8
	ld.w	$s1, $a0, -12
	xor	$t3, $t3, $fp
	and	$fp, $t1, $a4
	xor	$t3, $t3, $t8
	xor	$t3, $t3, $s1
	slli.d	$t6, $t6, 2
	ldx.w	$t6, $a5, $t6
	srli.d	$t1, $t1, 6
	andi	$t1, $t1, 1020
	ldx.w	$t1, $a6, $t1
	srli.d	$t5, $t5, 14
	andi	$t5, $t5, 1020
	ldx.w	$t5, $a7, $t5
	srli.d	$t8, $s0, 22
	ldx.w	$t8, $t0, $t8
	ld.w	$s0, $a0, 0
	xor	$t1, $t1, $t6
	xor	$t1, $t1, $t5
	xor	$t1, $t1, $t8
	xor	$t5, $t1, $s0
	slli.d	$t1, $t7, 2
	ldx.w	$t1, $a5, $t1
	srli.d	$a3, $a3, 6
	andi	$a3, $a3, 1020
	ldx.w	$a3, $a6, $a3
	srli.d	$t4, $t4, 14
	andi	$t4, $t4, 1020
	ldx.w	$t4, $a7, $t4
	srli.d	$t6, $fp, 22
	ldx.w	$t6, $t0, $t6
	ld.w	$t7, $a0, -8
	xor	$a3, $a3, $t1
	xor	$a3, $a3, $t4
	xor	$a3, $a3, $t6
	xor	$t6, $a3, $t7
	addi.w	$a2, $a2, -1
	addi.d	$a0, $a0, 32
	b	.LBB7_1
.LBB7_3:
	pcalau12i	$a2, %pc_hi20(Sbox)
	addi.d	$a2, $a2, %pc_lo12(Sbox)
	bstrpick.d	$a4, $t5, 15, 8
	ldx.bu	$a4, $a2, $a4
	ldx.bu	$a5, $a2, $t3
	slli.d	$a4, $a4, 8
	bstrpick.d	$a6, $a3, 23, 16
	ldx.bu	$a6, $a2, $a6
	or	$a4, $a4, $a5
	bstrpick.d	$a5, $t4, 31, 24
	ldx.b	$a5, $a2, $a5
	slli.d	$a6, $a6, 16
	ld.w	$a7, $a0, -12
	or	$a4, $a4, $a6
	slli.d	$a5, $a5, 24
	or	$a4, $a4, $a5
	xor	$a4, $a4, $a7
	st.w	$a4, $a1, 0
	bstrpick.d	$a4, $a3, 15, 8
	ldx.bu	$a4, $a2, $a4
	ldx.bu	$a5, $a2, $t7
	slli.d	$a4, $a4, 8
	bstrpick.d	$a6, $t4, 23, 16
	ldx.bu	$a6, $a2, $a6
	or	$a4, $a4, $a5
	bstrpick.d	$a5, $t1, 31, 24
	ldx.b	$a5, $a2, $a5
	slli.d	$a6, $a6, 16
	ld.w	$a7, $a0, -8
	or	$a4, $a4, $a6
	slli.d	$a5, $a5, 24
	or	$a4, $a4, $a5
	xor	$a4, $a4, $a7
	st.w	$a4, $a1, 4
	bstrpick.d	$a4, $t4, 15, 8
	ldx.bu	$a4, $a2, $a4
	ldx.bu	$a5, $a2, $t2
	slli.d	$a4, $a4, 8
	bstrpick.d	$a6, $t1, 23, 16
	ldx.bu	$a6, $a2, $a6
	or	$a4, $a4, $a5
	bstrpick.d	$a5, $t5, 31, 24
	ldx.b	$a5, $a2, $a5
	slli.d	$a6, $a6, 16
	ld.w	$a7, $a0, -4
	or	$a4, $a4, $a6
	slli.d	$a5, $a5, 24
	or	$a4, $a4, $a5
	xor	$a4, $a4, $a7
	st.w	$a4, $a1, 8
	bstrpick.d	$a4, $t1, 15, 8
	ldx.bu	$a4, $a2, $a4
	ldx.bu	$a5, $a2, $t6
	slli.d	$a4, $a4, 8
	bstrpick.d	$a6, $t5, 23, 16
	ldx.bu	$a6, $a2, $a6
	or	$a4, $a4, $a5
	bstrpick.d	$a3, $a3, 31, 24
	ldx.b	$a2, $a2, $a3
	slli.d	$a3, $a6, 16
	ld.w	$a0, $a0, 0
	or	$a3, $a4, $a3
	slli.d	$a2, $a2, 24
	or	$a2, $a3, $a2
	xor	$a0, $a2, $a0
	st.w	$a0, $a1, 12
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end7:
	.size	Aes_Encode, .Lfunc_end7-Aes_Encode
                                        # -- End function
	.type	InvS,@object                    # @InvS
	.local	InvS
	.comm	InvS,256,1
	.type	Sbox,@object                    # @Sbox
	.section	.rodata,"a",@progbits
Sbox:
	.ascii	"c|w{\362ko\3050\001g+\376\327\253v\312\202\311}\372YG\360\255\324\242\257\234\244r\300\267\375\223&6?\367\3144\245\345\361q\3301\025\004\307#\303\030\226\005\232\007\022\200\342\353'\262u\t\203,\032\033nZ\240R;\326\263)\343/\204S\321\000\355 \374\261[j\313\2769JLX\317\320\357\252\373CM3\205E\371\002\177P<\237\250Q\243@\217\222\2358\365\274\266\332!\020\377\363\322\315\f\023\354_\227D\027\304\247~=d]\031s`\201O\334\"*\220\210F\356\270\024\336^\013\333\3402:\nI\006$\\\302\323\254b\221\225\344y\347\3107m\215\325N\251lV\364\352ez\256\b\272x%.\034\246\264\306\350\335t\037K\275\213\212p>\265fH\003\366\016a5W\271\206\301\035\236\341\370\230\021i\331\216\224\233\036\207\351\316U(\337\214\241\211\r\277\346BhA\231-\017\260T\273\026"
	.size	Sbox, 256

	.type	T,@object                       # @T
	.local	T
	.comm	T,4096,4
	.type	D,@object                       # @D
	.local	D
	.comm	D,4096,4
	.type	g_AesCbc_Encode,@object         # @g_AesCbc_Encode
	.bss
	.globl	g_AesCbc_Encode
	.p2align	3, 0x0
g_AesCbc_Encode:
	.dword	0
	.size	g_AesCbc_Encode, 8

	.type	g_AesCbc_Decode,@object         # @g_AesCbc_Decode
	.globl	g_AesCbc_Decode
	.p2align	3, 0x0
g_AesCbc_Decode:
	.dword	0
	.size	g_AesCbc_Decode, 8

	.type	g_AesCtr_Code,@object           # @g_AesCtr_Code
	.globl	g_AesCtr_Code
	.p2align	3, 0x0
g_AesCtr_Code:
	.dword	0
	.size	g_AesCtr_Code, 8

	.type	Rcon,@object                    # @Rcon
	.section	.rodata,"a",@progbits
Rcon:
	.ascii	"\000\001\002\004\b\020 @\200\0336"
	.size	Rcon, 11

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym AesCbc_Encode
	.addrsig_sym AesCbc_Decode
	.addrsig_sym AesCtr_Code
