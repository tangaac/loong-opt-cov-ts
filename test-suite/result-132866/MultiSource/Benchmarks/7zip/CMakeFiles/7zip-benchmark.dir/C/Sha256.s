	.file	"Sha256.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function Sha256_Init
.LCPI0_0:
	.word	1779033703                      # 0x6a09e667
	.word	3144134277                      # 0xbb67ae85
	.word	1013904242                      # 0x3c6ef372
	.word	2773480762                      # 0xa54ff53a
.LCPI0_1:
	.word	1359893119                      # 0x510e527f
	.word	2600822924                      # 0x9b05688c
	.word	528734635                       # 0x1f83d9ab
	.word	1541459225                      # 0x5be0cd19
	.text
	.globl	Sha256_Init
	.p2align	5
	.type	Sha256_Init,@function
Sha256_Init:                            # @Sha256_Init
# %bb.0:
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_1)
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	st.d	$zero, $a0, 32
	ret
.Lfunc_end0:
	.size	Sha256_Init, .Lfunc_end0-Sha256_Init
                                        # -- End function
	.globl	Sha256_Update                   # -- Begin function Sha256_Update
	.p2align	5
	.type	Sha256_Update,@function
Sha256_Update:                          # @Sha256_Update
# %bb.0:
	beqz	$a2, .LBB1_6
# %bb.1:                                # %.lr.ph
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	ld.d	$a0, $a0, 32
	andi	$a0, $a0, 63
	addi.d	$s2, $s1, 40
	ori	$s3, $zero, 64
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                #   in Loop: Header=BB1_3 Depth=1
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 1
	move	$a0, $a1
	beqz	$fp, .LBB1_5
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	ld.b	$a2, $s0, 0
	ld.d	$a3, $s1, 32
	addi.d	$a1, $a0, 1
	stx.b	$a2, $s2, $a0
	addi.d	$a0, $a3, 1
	st.d	$a0, $s1, 32
	bne	$a1, $s3, .LBB1_2
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Sha256_WriteByteBlock)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	b	.LBB1_2
.LBB1_5:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB1_6:                                # %._crit_edge
	ret
.Lfunc_end1:
	.size	Sha256_Update, .Lfunc_end1-Sha256_Update
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function Sha256_WriteByteBlock
.LCPI2_0:
	.byte	1                               # 0x1
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	4                               # 0x4
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	9                               # 0x9
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	12                              # 0xc
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI2_1:
	.byte	0                               # 0x0
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	5                               # 0x5
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	8                               # 0x8
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	13                              # 0xd
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI2_2:
	.byte	2                               # 0x2
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	6                               # 0x6
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	10                              # 0xa
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	14                              # 0xe
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI2_3:
	.byte	3                               # 0x3
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	7                               # 0x7
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	11                              # 0xb
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	15                              # 0xf
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
	.text
	.p2align	5
	.type	Sha256_WriteByteBlock,@function
Sha256_WriteByteBlock:                  # @Sha256_WriteByteBlock
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$fp, $sp, 168                   # 8-byte Folded Spill
	vld	$vr1, $a0, 40
	pcalau12i	$a1, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI2_0)
	move	$t1, $zero
	vrepli.b	$vr2, 0
	vshuf.b	$vr3, $vr2, $vr1, $vr0
	ori	$a1, $zero, 16
	pcalau12i	$a2, %pc_hi20(.LCPI2_1)
	vld	$vr4, $a2, %pc_lo12(.LCPI2_1)
	lu32i.d	$a1, 24
	vreplgr2vr.d	$vr5, $a1
	vsll.w	$vr3, $vr3, $vr5
	vshuf.b	$vr6, $vr2, $vr1, $vr4
	ori	$a1, $zero, 24
	lu32i.d	$a1, 16
	pcalau12i	$a2, %pc_hi20(.LCPI2_2)
	vld	$vr7, $a2, %pc_lo12(.LCPI2_2)
	vreplgr2vr.d	$vr8, $a1
	vsll.w	$vr6, $vr6, $vr8
	vor.v	$vr3, $vr6, $vr3
	vshuf.b	$vr6, $vr2, $vr1, $vr7
	pcalau12i	$a1, %pc_hi20(.LCPI2_3)
	vld	$vr9, $a1, %pc_lo12(.LCPI2_3)
	vslli.w	$vr6, $vr6, 8
	vor.v	$vr3, $vr3, $vr6
	vld	$vr6, $a0, 56
	vshuf.b	$vr1, $vr2, $vr1, $vr9
	vor.v	$vr1, $vr3, $vr1
	vst	$vr1, $sp, 0
	vshuf.b	$vr1, $vr2, $vr6, $vr0
	vsll.w	$vr1, $vr1, $vr5
	vshuf.b	$vr3, $vr2, $vr6, $vr4
	vsll.w	$vr3, $vr3, $vr8
	vor.v	$vr1, $vr3, $vr1
	vshuf.b	$vr3, $vr2, $vr6, $vr7
	vslli.w	$vr3, $vr3, 8
	vor.v	$vr1, $vr1, $vr3
	vld	$vr3, $a0, 72
	vshuf.b	$vr6, $vr2, $vr6, $vr9
	vor.v	$vr1, $vr1, $vr6
	vst	$vr1, $sp, 16
	vshuf.b	$vr1, $vr2, $vr3, $vr0
	vsll.w	$vr1, $vr1, $vr5
	vshuf.b	$vr6, $vr2, $vr3, $vr4
	vsll.w	$vr6, $vr6, $vr8
	vor.v	$vr1, $vr6, $vr1
	vshuf.b	$vr6, $vr2, $vr3, $vr7
	vslli.w	$vr6, $vr6, 8
	vor.v	$vr1, $vr1, $vr6
	vld	$vr6, $a0, 88
	vshuf.b	$vr3, $vr2, $vr3, $vr9
	vor.v	$vr1, $vr1, $vr3
	vst	$vr1, $sp, 32
	vshuf.b	$vr0, $vr2, $vr6, $vr0
	vsll.w	$vr0, $vr0, $vr5
	vshuf.b	$vr1, $vr2, $vr6, $vr4
	vsll.w	$vr1, $vr1, $vr8
	vor.v	$vr0, $vr1, $vr0
	vshuf.b	$vr1, $vr2, $vr6, $vr7
	vslli.w	$vr1, $vr1, 8
	vor.v	$vr0, $vr0, $vr1
	vshuf.b	$vr1, $vr2, $vr6, $vr9
	vld	$vr2, $a0, 16
	vld	$vr3, $a0, 0
	vor.v	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 48
	vst	$vr2, $sp, 80
	vst	$vr3, $sp, 64
	pcalau12i	$a1, %pc_hi20(K)
	addi.d	$a1, $a1, %pc_lo12(K)
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 0
	addi.d	$a4, $sp, 104
	ori	$a5, $zero, 7
	ori	$a6, $zero, 48
	b	.LBB2_2
	.p2align	4, , 16
.LBB2_1:                                #   in Loop: Header=BB2_2 Depth=1
	addi.d	$t1, $a7, 16
	addi.d	$a1, $a1, 64
	bgeu	$a7, $a6, .LBB2_7
.LBB2_2:                                # %.preheader57.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_5 Depth 2
	move	$t3, $zero
	move	$t0, $zero
	move	$a7, $t1
	ori	$t1, $zero, 16
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_3:                                #   in Loop: Header=BB2_5 Depth=2
	ldx.w	$t4, $t0, $a3
.LBB2_4:                                #   in Loop: Header=BB2_5 Depth=2
	stx.w	$t4, $t0, $a4
	addi.d	$t5, $t1, -12
	andi	$t5, $t5, 7
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $t5, $a2
	rotri.w	$t6, $t5, 6
	rotri.w	$t7, $t5, 11
	xor	$t6, $t6, $t7
	addi.d	$t7, $t1, -10
	andi	$t7, $t7, 7
	slli.d	$t7, $t7, 2
	ldx.w	$t7, $t7, $a2
	addi.d	$t8, $t1, -11
	andi	$t8, $t8, 7
	slli.d	$t8, $t8, 2
	ldx.w	$t8, $t8, $a2
	rotri.w	$fp, $t5, 25
	xor	$t6, $t6, $fp
	andn	$t7, $t7, $t5
	and	$t5, $t8, $t5
	or	$t5, $t5, $t7
	ldx.w	$t7, $a1, $t0
	andn	$t3, $a5, $t3
	slli.d	$t3, $t3, 2
	ldx.w	$t8, $t3, $a2
	add.d	$t6, $t7, $t6
	add.d	$t5, $t6, $t5
	add.d	$t4, $t5, $t4
	add.d	$t4, $t4, $t8
	stx.w	$t4, $t3, $a2
	addi.d	$t5, $t1, -13
	andi	$t5, $t5, 7
	slli.d	$t5, $t5, 2
	ldx.w	$t6, $t5, $a2
	add.d	$t4, $t6, $t4
	stx.w	$t4, $t5, $a2
	addi.d	$t4, $t1, -16
	andi	$t4, $t4, 7
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $t4, $a2
	rotri.w	$t5, $t4, 2
	rotri.w	$t6, $t4, 13
	xor	$t5, $t5, $t6
	rotri.w	$t6, $t4, 22
	xor	$t5, $t5, $t6
	addi.d	$t6, $t1, -15
	andi	$t6, $t6, 7
	slli.d	$t6, $t6, 2
	ldx.w	$t6, $t6, $a2
	addi.d	$t7, $t1, -14
	andi	$t7, $t7, 7
	slli.d	$t7, $t7, 2
	ldx.w	$t7, $t7, $a2
	and	$t8, $t6, $t4
	ldx.w	$fp, $t3, $a2
	or	$t4, $t6, $t4
	and	$t4, $t7, $t4
	or	$t4, $t4, $t8
	add.d	$t5, $fp, $t5
	add.d	$t4, $t5, $t4
	stx.w	$t4, $t3, $a2
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 4
	move	$t3, $t2
	beqz	$t1, .LBB2_1
.LBB2_5:                                #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t2, $t3, 1
	beqz	$a7, .LBB2_3
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=2
	addi.d	$t4, $t3, 14
	andi	$t4, $t4, 15
	slli.d	$t4, $t4, 2
	ldx.wu	$t4, $t4, $a4
	rotri.w	$t5, $t4, 17
	rotri.w	$t6, $t4, 19
	xor	$t5, $t5, $t6
	addi.d	$t6, $t3, 9
	andi	$t6, $t6, 15
	slli.d	$t6, $t6, 2
	ldx.w	$t6, $t6, $a4
	andi	$t7, $t2, 15
	slli.d	$t7, $t7, 2
	ldx.wu	$t7, $t7, $a4
	srli.d	$t4, $t4, 10
	xor	$t4, $t5, $t4
	add.d	$t4, $t4, $t6
	rotri.w	$t5, $t7, 7
	rotri.w	$t6, $t7, 18
	ldx.w	$t8, $t0, $a4
	xor	$t5, $t5, $t6
	srli.d	$t6, $t7, 3
	xor	$t5, $t5, $t6
	add.d	$t4, $t4, $t8
	add.d	$t4, $t4, $t5
	b	.LBB2_4
.LBB2_7:                                # %Sha256_Transform.exit
	vld	$vr0, $sp, 64
	vld	$vr1, $a0, 0
	vld	$vr2, $sp, 80
	vld	$vr3, $a0, 16
	vadd.w	$vr0, $vr1, $vr0
	vst	$vr0, $a0, 0
	vadd.w	$vr0, $vr3, $vr2
	vst	$vr0, $a0, 16
	ld.d	$fp, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end2:
	.size	Sha256_WriteByteBlock, .Lfunc_end2-Sha256_WriteByteBlock
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function Sha256_Final
.LCPI3_0:
	.word	1779033703                      # 0x6a09e667
	.word	3144134277                      # 0xbb67ae85
	.word	1013904242                      # 0x3c6ef372
	.word	2773480762                      # 0xa54ff53a
.LCPI3_1:
	.word	1359893119                      # 0x510e527f
	.word	2600822924                      # 0x9b05688c
	.word	528734635                       # 0x1f83d9ab
	.word	1541459225                      # 0x5be0cd19
	.text
	.globl	Sha256_Final
	.p2align	5
	.type	Sha256_Final,@function
Sha256_Final:                           # @Sha256_Final
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s1, $a0, 32
	move	$s0, $a1
	addi.d	$s2, $a0, 40
	andi	$a1, $s1, 63
	ori	$a2, $zero, 128
	addi.d	$a0, $a1, 1
	ori	$s3, $zero, 56
	stx.b	$a2, $s2, $a1
	bne	$a0, $s3, .LBB3_3
.LBB3_1:                                # %.preheader
	srli.d	$a0, $s1, 53
	st.b	$a0, $fp, 96
	srli.d	$a0, $s1, 45
	st.b	$a0, $fp, 97
	srli.d	$a0, $s1, 37
	st.b	$a0, $fp, 98
	srli.d	$a0, $s1, 29
	st.b	$a0, $fp, 99
	srli.d	$a0, $s1, 21
	st.b	$a0, $fp, 100
	srli.d	$a0, $s1, 13
	st.b	$a0, $fp, 101
	srli.d	$a0, $s1, 5
	st.b	$a0, $fp, 102
	slli.d	$a0, $s1, 3
	st.b	$a0, $fp, 103
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Sha256_WriteByteBlock)
	jirl	$ra, $ra, 0
	ld.b	$a0, $fp, 3
	st.b	$a0, $s0, 0
	ld.b	$a0, $fp, 2
	st.b	$a0, $s0, 1
	ld.b	$a0, $fp, 1
	st.b	$a0, $s0, 2
	ld.b	$a0, $fp, 0
	st.b	$a0, $s0, 3
	ld.b	$a0, $fp, 7
	st.b	$a0, $s0, 4
	ld.b	$a0, $fp, 6
	st.b	$a0, $s0, 5
	ld.b	$a0, $fp, 5
	st.b	$a0, $s0, 6
	ld.b	$a0, $fp, 4
	st.b	$a0, $s0, 7
	ld.b	$a0, $fp, 11
	st.b	$a0, $s0, 8
	ld.b	$a0, $fp, 10
	st.b	$a0, $s0, 9
	ld.b	$a0, $fp, 9
	st.b	$a0, $s0, 10
	ld.b	$a0, $fp, 8
	st.b	$a0, $s0, 11
	ld.b	$a0, $fp, 15
	st.b	$a0, $s0, 12
	ld.b	$a0, $fp, 14
	st.b	$a0, $s0, 13
	ld.b	$a0, $fp, 13
	st.b	$a0, $s0, 14
	ld.b	$a0, $fp, 12
	st.b	$a0, $s0, 15
	ld.b	$a0, $fp, 19
	st.b	$a0, $s0, 16
	ld.b	$a0, $fp, 18
	st.b	$a0, $s0, 17
	ld.b	$a0, $fp, 17
	st.b	$a0, $s0, 18
	ld.b	$a0, $fp, 16
	st.b	$a0, $s0, 19
	ld.b	$a0, $fp, 23
	st.b	$a0, $s0, 20
	ld.b	$a0, $fp, 22
	st.b	$a0, $s0, 21
	ld.b	$a0, $fp, 21
	st.b	$a0, $s0, 22
	ld.b	$a0, $fp, 20
	st.b	$a0, $s0, 23
	ld.b	$a0, $fp, 27
	st.b	$a0, $s0, 24
	ld.b	$a0, $fp, 26
	st.b	$a0, $s0, 25
	ld.b	$a0, $fp, 25
	st.b	$a0, $s0, 26
	ld.b	$a0, $fp, 24
	st.b	$a0, $s0, 27
	ld.b	$a0, $fp, 31
	st.b	$a0, $s0, 28
	ld.b	$a0, $fp, 30
	st.b	$a0, $s0, 29
	ld.b	$a0, $fp, 29
	st.b	$a0, $s0, 30
	ld.b	$a0, $fp, 28
	pcalau12i	$a1, %pc_hi20(.LCPI3_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI3_0)
	pcalau12i	$a1, %pc_hi20(.LCPI3_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI3_1)
	st.b	$a0, $s0, 31
	vst	$vr0, $fp, 0
	vst	$vr1, $fp, 16
	st.d	$zero, $fp, 32
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
	.p2align	4, , 16
.LBB3_2:                                #   in Loop: Header=BB3_3 Depth=1
	addi.d	$a0, $s4, 1
	stx.b	$zero, $s2, $s4
	beq	$a0, $s3, .LBB3_1
.LBB3_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	andi	$s4, $a0, 63
	bnez	$s4, .LBB3_2
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Sha256_WriteByteBlock)
	jirl	$ra, $ra, 0
	b	.LBB3_2
.Lfunc_end3:
	.size	Sha256_Final, .Lfunc_end3-Sha256_Final
                                        # -- End function
	.type	K,@object                       # @K
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
K:
	.word	1116352408                      # 0x428a2f98
	.word	1899447441                      # 0x71374491
	.word	3049323471                      # 0xb5c0fbcf
	.word	3921009573                      # 0xe9b5dba5
	.word	961987163                       # 0x3956c25b
	.word	1508970993                      # 0x59f111f1
	.word	2453635748                      # 0x923f82a4
	.word	2870763221                      # 0xab1c5ed5
	.word	3624381080                      # 0xd807aa98
	.word	310598401                       # 0x12835b01
	.word	607225278                       # 0x243185be
	.word	1426881987                      # 0x550c7dc3
	.word	1925078388                      # 0x72be5d74
	.word	2162078206                      # 0x80deb1fe
	.word	2614888103                      # 0x9bdc06a7
	.word	3248222580                      # 0xc19bf174
	.word	3835390401                      # 0xe49b69c1
	.word	4022224774                      # 0xefbe4786
	.word	264347078                       # 0xfc19dc6
	.word	604807628                       # 0x240ca1cc
	.word	770255983                       # 0x2de92c6f
	.word	1249150122                      # 0x4a7484aa
	.word	1555081692                      # 0x5cb0a9dc
	.word	1996064986                      # 0x76f988da
	.word	2554220882                      # 0x983e5152
	.word	2821834349                      # 0xa831c66d
	.word	2952996808                      # 0xb00327c8
	.word	3210313671                      # 0xbf597fc7
	.word	3336571891                      # 0xc6e00bf3
	.word	3584528711                      # 0xd5a79147
	.word	113926993                       # 0x6ca6351
	.word	338241895                       # 0x14292967
	.word	666307205                       # 0x27b70a85
	.word	773529912                       # 0x2e1b2138
	.word	1294757372                      # 0x4d2c6dfc
	.word	1396182291                      # 0x53380d13
	.word	1695183700                      # 0x650a7354
	.word	1986661051                      # 0x766a0abb
	.word	2177026350                      # 0x81c2c92e
	.word	2456956037                      # 0x92722c85
	.word	2730485921                      # 0xa2bfe8a1
	.word	2820302411                      # 0xa81a664b
	.word	3259730800                      # 0xc24b8b70
	.word	3345764771                      # 0xc76c51a3
	.word	3516065817                      # 0xd192e819
	.word	3600352804                      # 0xd6990624
	.word	4094571909                      # 0xf40e3585
	.word	275423344                       # 0x106aa070
	.word	430227734                       # 0x19a4c116
	.word	506948616                       # 0x1e376c08
	.word	659060556                       # 0x2748774c
	.word	883997877                       # 0x34b0bcb5
	.word	958139571                       # 0x391c0cb3
	.word	1322822218                      # 0x4ed8aa4a
	.word	1537002063                      # 0x5b9cca4f
	.word	1747873779                      # 0x682e6ff3
	.word	1955562222                      # 0x748f82ee
	.word	2024104815                      # 0x78a5636f
	.word	2227730452                      # 0x84c87814
	.word	2361852424                      # 0x8cc70208
	.word	2428436474                      # 0x90befffa
	.word	2756734187                      # 0xa4506ceb
	.word	3204031479                      # 0xbef9a3f7
	.word	3329325298                      # 0xc67178f2
	.size	K, 256

	.section	".note.GNU-stack","",@progbits
	.addrsig
