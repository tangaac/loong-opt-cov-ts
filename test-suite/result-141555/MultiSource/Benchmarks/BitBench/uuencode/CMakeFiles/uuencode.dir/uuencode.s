	.file	"uuencode.c"
	.text
	.globl	encode_char                     # -- Begin function encode_char
	.p2align	5
	.type	encode_char,@function
encode_char:                            # @encode_char
# %bb.0:
	andi	$a0, $a0, 63
	addi.d	$a0, $a0, 32
	ret
.Lfunc_end0:
	.size	encode_char, .Lfunc_end0-encode_char
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function encode_line
.LCPI1_0:
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	9                               # 0x9
	.byte	12                              # 0xc
	.byte	15                              # 0xf
	.byte	18                              # 0x12
	.byte	21                              # 0x15
	.byte	24                              # 0x18
	.byte	27                              # 0x1b
	.byte	30                              # 0x1e
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI1_1:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	17                              # 0x11
	.byte	20                              # 0x14
	.byte	23                              # 0x17
	.byte	26                              # 0x1a
	.byte	29                              # 0x1d
.LCPI1_2:
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.byte	7                               # 0x7
	.byte	10                              # 0xa
	.byte	13                              # 0xd
	.byte	16                              # 0x10
	.byte	19                              # 0x13
	.byte	22                              # 0x16
	.byte	25                              # 0x19
	.byte	28                              # 0x1c
	.byte	31                              # 0x1f
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI1_3:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	18                              # 0x12
	.byte	21                              # 0x15
	.byte	24                              # 0x18
	.byte	27                              # 0x1b
	.byte	30                              # 0x1e
.LCPI1_4:
	.byte	2                               # 0x2
	.byte	5                               # 0x5
	.byte	8                               # 0x8
	.byte	11                              # 0xb
	.byte	14                              # 0xe
	.byte	17                              # 0x11
	.byte	20                              # 0x14
	.byte	23                              # 0x17
	.byte	26                              # 0x1a
	.byte	29                              # 0x1d
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI1_5:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	16                              # 0x10
	.byte	19                              # 0x13
	.byte	22                              # 0x16
	.byte	25                              # 0x19
	.byte	28                              # 0x1c
	.byte	31                              # 0x1f
.LCPI1_6:
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	17                              # 0x11
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	2                               # 0x2
	.byte	18                              # 0x12
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	19                              # 0x13
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI1_7:
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	17                              # 0x11
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	2                               # 0x2
	.byte	18                              # 0x12
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	19                              # 0x13
.LCPI1_8:
	.half	0                               # 0x0
	.half	9                               # 0x9
	.half	2                               # 0x2
	.half	11                              # 0xb
	.half	4                               # 0x4
	.half	13                              # 0xd
	.half	6                               # 0x6
	.half	15                              # 0xf
.LCPI1_9:
	.byte	4                               # 0x4
	.byte	20                              # 0x14
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	5                               # 0x5
	.byte	21                              # 0x15
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	6                               # 0x6
	.byte	22                              # 0x16
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.byte	23                              # 0x17
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI1_10:
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	4                               # 0x4
	.byte	20                              # 0x14
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	5                               # 0x5
	.byte	21                              # 0x15
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	6                               # 0x6
	.byte	22                              # 0x16
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.byte	23                              # 0x17
.LCPI1_11:
	.byte	8                               # 0x8
	.byte	24                              # 0x18
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	9                               # 0x9
	.byte	25                              # 0x19
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	10                              # 0xa
	.byte	26                              # 0x1a
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	11                              # 0xb
	.byte	27                              # 0x1b
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI1_12:
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	8                               # 0x8
	.byte	24                              # 0x18
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	9                               # 0x9
	.byte	25                              # 0x19
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	10                              # 0xa
	.byte	26                              # 0x1a
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	11                              # 0xb
	.byte	27                              # 0x1b
.LCPI1_13:
	.byte	12                              # 0xc
	.byte	28                              # 0x1c
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	13                              # 0xd
	.byte	29                              # 0x1d
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	14                              # 0xe
	.byte	30                              # 0x1e
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	15                              # 0xf
	.byte	31                              # 0x1f
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI1_14:
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	12                              # 0xc
	.byte	28                              # 0x1c
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	13                              # 0xd
	.byte	29                              # 0x1d
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	14                              # 0xe
	.byte	30                              # 0x1e
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	15                              # 0xf
	.byte	31                              # 0x1f
	.text
	.globl	encode_line
	.p2align	5
	.type	encode_line,@function
encode_line:                            # @encode_line
# %bb.0:
	andi	$a4, $a2, 63
	addi.d	$a5, $a4, 32
	ori	$a4, $zero, 1
	st.b	$a5, $a3, 0
	blt	$a2, $a4, .LBB1_15
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -16
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	bstrpick.d	$a4, $a2, 31, 0
	lu12i.w	$a5, -349526
	ori	$a5, $a5, 2731
	mul.d	$a6, $a2, $a5
	lu32i.d	$a5, 0
	mul.d	$a4, $a4, $a5
	srli.d	$a4, $a4, 33
	addi.w	$a5, $a6, -1
	sltu	$a6, $a4, $a5
	masknez	$a5, $a5, $a6
	maskeqz	$a4, $a4, $a6
	or	$a6, $a4, $a5
	ori	$a4, $zero, 16
	ori	$a7, $zero, 1
	bltu	$a6, $a4, .LBB1_6
# %bb.2:                                # %vector.memcheck
	addi.d	$a4, $a3, 1
	add.d	$a5, $a0, $a1
	alsl.d	$t0, $a6, $a6, 1
	add.d	$t0, $a5, $t0
	addi.d	$t0, $t0, 3
	bgeu	$a4, $t0, .LBB1_4
# %bb.3:                                # %vector.memcheck
	alsl.d	$t0, $a6, $a3, 2
	addi.d	$t0, $t0, 5
	bltu	$a5, $t0, .LBB1_6
.LBB1_4:                                # %vector.ph
	addi.d	$a6, $a6, 1
	andi	$a7, $a6, 15
	sltui	$t0, $a7, 1
	masknez	$a7, $a7, $t0
	ori	$t1, $zero, 16
	maskeqz	$t0, $t1, $t0
	or	$a7, $t0, $a7
	sub.d	$a6, $a6, $a7
	alsl.d	$t0, $a6, $a6, 1
	add.d	$a1, $t0, $a1
	slli.d	$a7, $a6, 2
	pcalau12i	$t1, %pc_hi20(.LCPI1_0)
	vld	$vr0, $t1, %pc_lo12(.LCPI1_0)
	pcalau12i	$t1, %pc_hi20(.LCPI1_1)
	vld	$vr1, $t1, %pc_lo12(.LCPI1_1)
	pcalau12i	$t1, %pc_hi20(.LCPI1_2)
	vld	$vr2, $t1, %pc_lo12(.LCPI1_2)
	pcalau12i	$t1, %pc_hi20(.LCPI1_3)
	vld	$vr3, $t1, %pc_lo12(.LCPI1_3)
	pcalau12i	$t1, %pc_hi20(.LCPI1_4)
	vld	$vr4, $t1, %pc_lo12(.LCPI1_4)
	pcalau12i	$t1, %pc_hi20(.LCPI1_5)
	vld	$vr5, $t1, %pc_lo12(.LCPI1_5)
	pcalau12i	$t1, %pc_hi20(.LCPI1_6)
	vld	$vr6, $t1, %pc_lo12(.LCPI1_6)
	pcalau12i	$t1, %pc_hi20(.LCPI1_7)
	vld	$vr7, $t1, %pc_lo12(.LCPI1_7)
	pcalau12i	$t1, %pc_hi20(.LCPI1_8)
	vld	$vr8, $t1, %pc_lo12(.LCPI1_8)
	pcalau12i	$t1, %pc_hi20(.LCPI1_9)
	vld	$vr9, $t1, %pc_lo12(.LCPI1_9)
	pcalau12i	$t1, %pc_hi20(.LCPI1_10)
	vld	$vr10, $t1, %pc_lo12(.LCPI1_10)
	pcalau12i	$t1, %pc_hi20(.LCPI1_11)
	vld	$vr11, $t1, %pc_lo12(.LCPI1_11)
	pcalau12i	$t1, %pc_hi20(.LCPI1_12)
	vld	$vr12, $t1, %pc_lo12(.LCPI1_12)
	pcalau12i	$t1, %pc_hi20(.LCPI1_13)
	vld	$vr13, $t1, %pc_lo12(.LCPI1_13)
	pcalau12i	$t1, %pc_hi20(.LCPI1_14)
	vld	$vr14, $t1, %pc_lo12(.LCPI1_14)
	addi.d	$a7, $a7, 1
	sub.w	$a2, $a2, $t0
	vrepli.b	$vr15, 32
	.p2align	4, , 16
.LBB1_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr16, $a5, 0
	vld	$vr17, $a5, 16
	vld	$vr18, $a5, 32
	vshuf.b	$vr19, $vr17, $vr16, $vr0
	vshuf.b	$vr19, $vr18, $vr19, $vr1
	vshuf.b	$vr20, $vr17, $vr16, $vr2
	vshuf.b	$vr20, $vr18, $vr20, $vr3
	vshuf.b	$vr16, $vr17, $vr16, $vr4
	vshuf.b	$vr16, $vr18, $vr16, $vr5
	vsrli.b	$vr17, $vr19, 2
	vadd.b	$vr17, $vr17, $vr15
	vslli.b	$vr18, $vr19, 4
	vsrai.b	$vr19, $vr20, 4
	vor.v	$vr18, $vr19, $vr18
	vandi.b	$vr18, $vr18, 63
	vadd.b	$vr18, $vr18, $vr15
	vslli.b	$vr19, $vr20, 2
	vsrai.b	$vr20, $vr16, 6
	vor.v	$vr19, $vr20, $vr19
	vandi.b	$vr19, $vr19, 63
	vadd.b	$vr19, $vr19, $vr15
	vandi.b	$vr16, $vr16, 63
	vadd.b	$vr16, $vr16, $vr15
	vshuf.b	$vr20, $vr18, $vr17, $vr6
	vshuf.b	$vr21, $vr16, $vr19, $vr7
	vori.b	$vr22, $vr8, 0
	vshuf.h	$vr22, $vr21, $vr20
	vshuf.b	$vr20, $vr18, $vr17, $vr9
	vshuf.b	$vr21, $vr16, $vr19, $vr10
	vori.b	$vr23, $vr8, 0
	vshuf.h	$vr23, $vr21, $vr20
	vshuf.b	$vr20, $vr18, $vr17, $vr11
	vshuf.b	$vr21, $vr16, $vr19, $vr12
	vori.b	$vr24, $vr8, 0
	vshuf.h	$vr24, $vr21, $vr20
	vshuf.b	$vr17, $vr18, $vr17, $vr13
	vshuf.b	$vr16, $vr16, $vr19, $vr14
	vori.b	$vr18, $vr8, 0
	vshuf.h	$vr18, $vr16, $vr17
	vst	$vr18, $a4, 48
	vst	$vr24, $a4, 32
	vst	$vr23, $a4, 16
	vst	$vr22, $a4, 0
	addi.d	$a4, $a4, 64
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 48
	bnez	$a6, .LBB1_5
.LBB1_6:                                # %.lr.ph.preheader110
	add.d	$a0, $a1, $a0
	addi.d	$a1, $a0, 1
	addi.d	$a0, $a7, 4
	ori	$a4, $zero, 2
	.p2align	4, , 16
.LBB1_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	bgeu	$a4, $a2, .LBB1_10
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=1
	ld.bu	$a5, $a1, -1
	srli.d	$a5, $a5, 2
	addi.d	$a5, $a5, 32
	add.d	$a6, $a3, $a0
	st.b	$a5, $a6, -4
	ld.b	$a5, $a1, -1
	ld.b	$a7, $a1, 0
	slli.d	$a5, $a5, 4
	srli.d	$a7, $a7, 4
	or	$a5, $a7, $a5
	andi	$a5, $a5, 63
	addi.d	$a5, $a5, 32
	st.b	$a5, $a6, -3
	ld.b	$a5, $a1, 0
	ld.b	$a7, $a1, 1
	slli.d	$a5, $a5, 2
	srli.d	$a7, $a7, 6
	or	$a5, $a7, $a5
	andi	$a5, $a5, 63
	addi.d	$a5, $a5, 32
	st.b	$a5, $a6, -2
	ld.bu	$a5, $a1, 1
	andi	$a5, $a5, 63
	addi.d	$a5, $a5, 32
	st.b	$a5, $a6, -1
	addi.w	$a2, $a2, -3
	addi.d	$a1, $a1, 3
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB1_7
# %bb.9:                                # %._crit_edge.loopexit.loopexit
	addi.d	$a0, $a0, -4
	b	.LBB1_14
.LBB1_10:
	ld.bu	$a4, $a1, -1
	srli.d	$a4, $a4, 2
	addi.d	$a5, $a4, 32
	add.d	$a4, $a3, $a0
	st.b	$a5, $a4, -4
	ld.b	$a5, $a1, -1
	ori	$a6, $zero, 1
	slli.d	$a5, $a5, 4
	bne	$a2, $a6, .LBB1_12
# %bb.11:
	andi	$a1, $a5, 48
	addi.d	$a1, $a1, 32
	st.b	$a1, $a4, -3
	ori	$a1, $zero, 61
	b	.LBB1_13
.LBB1_12:
	ld.b	$a2, $a1, 0
	srli.d	$a2, $a2, 4
	or	$a2, $a2, $a5
	andi	$a2, $a2, 63
	addi.d	$a2, $a2, 32
	st.b	$a2, $a4, -3
	ld.b	$a1, $a1, 0
	slli.d	$a1, $a1, 2
	andi	$a1, $a1, 60
	addi.d	$a1, $a1, 32
.LBB1_13:                               # %.thread
	st.b	$a1, $a4, -2
	ori	$a1, $zero, 61
	st.b	$a1, $a4, -1
.LBB1_14:                               # %._crit_edge.loopexit
	bstrpick.d	$a4, $a0, 31, 0
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB1_15:                               # %._crit_edge
	ori	$a0, $zero, 10
	stx.h	$a0, $a3, $a4
	ret
.Lfunc_end1:
	.size	encode_line, .Lfunc_end1-encode_line
                                        # -- End function
	.globl	encode                          # -- Begin function encode
	.p2align	5
	.type	encode,@function
encode:                                 # @encode
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	ori	$a3, $zero, 1
	move	$fp, $a2
	blt	$a1, $a3, .LBB2_6
# %bb.1:                                # %.lr.ph.preheader
	move	$s0, $a1
	move	$s1, $a0
	move	$s2, $zero
	ori	$s3, $zero, 45
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_2:                                #   in Loop: Header=BB2_4 Depth=1
	ori	$a2, $zero, 45
	addi.d	$a3, $sp, 1
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(encode_line)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, 45
.LBB2_3:                                #   in Loop: Header=BB2_4 Depth=1
	addi.d	$a1, $sp, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$fp, $fp, $a0
	bge	$s2, $s0, .LBB2_6
.LBB2_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	sub.w	$a2, $s0, $s2
	bge	$a2, $s3, .LBB2_2
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	addi.d	$a3, $sp, 1
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(encode_line)
	jirl	$ra, $ra, 0
	move	$s2, $s0
	b	.LBB2_3
.LBB2_6:                                # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ld.w	$a2, $a1, 0
	ld.h	$a1, $a1, 4
	add.d	$a3, $fp, $a0
	stx.w	$a2, $fp, $a0
	st.h	$a1, $a3, 4
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end2:
	.size	encode, .Lfunc_end2-encode
                                        # -- End function
	.globl	do_encode                       # -- Begin function do_encode
	.p2align	5
	.type	do_encode,@function
do_encode:                              # @do_encode
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(.L.str.1)
	addi.d	$a4, $a4, %pc_lo12(.L.str.1)
	ld.w	$a5, $a4, 7
	ld.d	$a4, $a4, 0
	move	$s0, $a2
	move	$fp, $a1
	move	$s1, $a0
	st.w	$a5, $a1, 7
	st.d	$a4, $a1, 0
	move	$a0, $a1
	move	$a1, $a3
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	ld.h	$a2, $a1, 0
	ld.b	$a1, $a1, 2
	add.d	$a3, $fp, $a0
	stx.h	$a2, $fp, $a0
	st.b	$a1, $a3, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	add.d	$s2, $fp, $a0
	blt	$s0, $a1, .LBB3_6
# %bb.1:                                # %.lr.ph.i.preheader
	move	$s3, $zero
	ori	$s4, $zero, 45
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_2:                                #   in Loop: Header=BB3_4 Depth=1
	ori	$a2, $zero, 45
	addi.d	$a3, $sp, 9
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(encode_line)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, 45
.LBB3_3:                                #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a1, $sp, 9
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$s2, $s2, $a0
	bge	$s3, $s0, .LBB3_6
.LBB3_4:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	sub.w	$a2, $s0, $s3
	bge	$a2, $s4, .LBB3_2
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a3, $sp, 9
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(encode_line)
	jirl	$ra, $ra, 0
	move	$s3, $s0
	b	.LBB3_3
.LBB3_6:                                # %encode.exit
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ld.w	$a2, $a1, 0
	ld.h	$a1, $a1, 4
	add.d	$a3, $s2, $a0
	stx.w	$a2, $s2, $a0
	st.h	$a1, $a3, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end3:
	.size	do_encode, .Lfunc_end3-do_encode
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI4_0:
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	9                               # 0x9
	.byte	12                              # 0xc
	.byte	15                              # 0xf
	.byte	18                              # 0x12
	.byte	21                              # 0x15
	.byte	24                              # 0x18
	.byte	27                              # 0x1b
	.byte	30                              # 0x1e
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI4_1:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	17                              # 0x11
	.byte	20                              # 0x14
	.byte	23                              # 0x17
	.byte	26                              # 0x1a
	.byte	29                              # 0x1d
.LCPI4_2:
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.byte	7                               # 0x7
	.byte	10                              # 0xa
	.byte	13                              # 0xd
	.byte	16                              # 0x10
	.byte	19                              # 0x13
	.byte	22                              # 0x16
	.byte	25                              # 0x19
	.byte	28                              # 0x1c
	.byte	31                              # 0x1f
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI4_3:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	18                              # 0x12
	.byte	21                              # 0x15
	.byte	24                              # 0x18
	.byte	27                              # 0x1b
	.byte	30                              # 0x1e
.LCPI4_4:
	.byte	2                               # 0x2
	.byte	5                               # 0x5
	.byte	8                               # 0x8
	.byte	11                              # 0xb
	.byte	14                              # 0xe
	.byte	17                              # 0x11
	.byte	20                              # 0x14
	.byte	23                              # 0x17
	.byte	26                              # 0x1a
	.byte	29                              # 0x1d
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI4_5:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	16                              # 0x10
	.byte	19                              # 0x13
	.byte	22                              # 0x16
	.byte	25                              # 0x19
	.byte	28                              # 0x1c
	.byte	31                              # 0x1f
.LCPI4_6:
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	17                              # 0x11
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	2                               # 0x2
	.byte	18                              # 0x12
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	19                              # 0x13
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI4_7:
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	1                               # 0x1
	.byte	17                              # 0x11
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	2                               # 0x2
	.byte	18                              # 0x12
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	3                               # 0x3
	.byte	19                              # 0x13
.LCPI4_8:
	.half	0                               # 0x0
	.half	9                               # 0x9
	.half	2                               # 0x2
	.half	11                              # 0xb
	.half	4                               # 0x4
	.half	13                              # 0xd
	.half	6                               # 0x6
	.half	15                              # 0xf
.LCPI4_9:
	.byte	4                               # 0x4
	.byte	20                              # 0x14
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	5                               # 0x5
	.byte	21                              # 0x15
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	6                               # 0x6
	.byte	22                              # 0x16
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.byte	23                              # 0x17
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI4_10:
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	4                               # 0x4
	.byte	20                              # 0x14
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	5                               # 0x5
	.byte	21                              # 0x15
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	6                               # 0x6
	.byte	22                              # 0x16
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.byte	23                              # 0x17
.LCPI4_11:
	.byte	8                               # 0x8
	.byte	24                              # 0x18
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	9                               # 0x9
	.byte	25                              # 0x19
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	10                              # 0xa
	.byte	26                              # 0x1a
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	11                              # 0xb
	.byte	27                              # 0x1b
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI4_12:
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	8                               # 0x8
	.byte	24                              # 0x18
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	9                               # 0x9
	.byte	25                              # 0x19
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	10                              # 0xa
	.byte	26                              # 0x1a
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	11                              # 0xb
	.byte	27                              # 0x1b
.LCPI4_13:
	.byte	12                              # 0xc
	.byte	28                              # 0x1c
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	13                              # 0xd
	.byte	29                              # 0x1d
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	14                              # 0xe
	.byte	30                              # 0x1e
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	15                              # 0xf
	.byte	31                              # 0x1f
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI4_14:
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	12                              # 0xc
	.byte	28                              # 0x1c
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	13                              # 0xd
	.byte	29                              # 0x1d
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	14                              # 0xe
	.byte	30                              # 0x1e
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	15                              # 0xf
	.byte	31                              # 0x1f
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	move	$s3, $a1
	move	$s2, $a0
	lu12i.w	$a0, 244
	ori	$s1, $a0, 576
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	lu12i.w	$a0, 488
	ori	$a0, $a0, 1152
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	move	$fp, $a0
	blt	$s2, $a1, .LBB4_3
# %bb.1:
	ld.d	$a0, $s3, 8
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_28
# %bb.2:
	ld.d	$a0, $s3, 8
	pcaddu18i	$ra, %call36(perror)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB4_3:
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$a0, $a0, %got_pc_lo12(stdin)
	ld.d	$a3, $a0, 0
	ori	$a0, $zero, 1
	bne	$s2, $a0, .LBB4_29
.LBB4_4:
	ori	$a1, $zero, 1
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.d	$a0, $sp, 120
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s7, 0
	blez	$s4, .LBB4_30
# %bb.5:                                # %.lr.ph.i.i.preheader.us.preheader
	move	$a2, $zero
	addi.d	$a0, $s0, 1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$s3, $s0, 2
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ld.w	$a1, $a0, 7
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 7
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ld.h	$a1, $a0, 0
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ld.b	$a0, $a0, 2
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$s6, $zero, 44
	ori	$s5, $zero, 10
	addi.d	$s8, $sp, 136
	lu12i.w	$a0, -349526
	ori	$a0, $a0, 2731
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1365
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$s0, $zero, 2
	vrepli.b	$vr0, 32
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_6:                                # %do_encode.exit.loopexit.us
                                        #   in Loop: Header=BB4_7 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ld.w	$a2, $a1, 0
	ld.h	$a1, $a1, 4
	add.d	$a3, $s2, $a0
	stx.w	$a2, $s2, $a0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	st.h	$a1, $a3, 4
	ori	$a0, $zero, 1000
	beq	$a2, $a0, .LBB4_32
.LBB4_7:                                # %.lr.ph.i.i.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_13 Depth 2
                                        #       Child Loop BB4_20 Depth 3
                                        #       Child Loop BB4_23 Depth 3
                                        #       Child Loop BB4_15 Depth 3
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.w	$a0, $fp, 7
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $fp, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $fp, $a0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	stx.d	$a2, $fp, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.w	$a0, $a1, 7
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $fp, $a0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	stx.h	$a2, $fp, $a0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.b	$a0, $a1, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	add.d	$s2, $fp, $a0
	b	.LBB4_13
.LBB4_8:                                #   in Loop: Header=BB4_13 Depth=2
	andi	$a0, $a4, 48
	ori	$a2, $zero, 61
.LBB4_9:                                # %.thread.i.us
                                        #   in Loop: Header=BB4_13 Depth=2
	addi.d	$a0, $a0, 32
	st.b	$a0, $a3, -3
	st.b	$a2, $a3, -2
	ori	$a0, $zero, 61
	st.b	$a0, $a3, -1
.LBB4_10:                               # %._crit_edge.loopexit.i.us
                                        #   in Loop: Header=BB4_13 Depth=2
	bstrpick.d	$a1, $a1, 31, 0
.LBB4_11:                               # %encode_line.exit.us
                                        #   in Loop: Header=BB4_13 Depth=2
	stx.h	$s5, $a1, $s8
	move	$s1, $s7
.LBB4_12:                               #   in Loop: Header=BB4_13 Depth=2
	addi.d	$a1, $sp, 136
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s1, 0
	add.d	$s2, $s2, $a0
	bge	$a1, $s4, .LBB4_6
.LBB4_13:                               # %.lr.ph.i.i.us
                                        #   Parent Loop BB4_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_20 Depth 3
                                        #       Child Loop BB4_23 Depth 3
                                        #       Child Loop BB4_15 Depth 3
	sub.w	$a0, $s7, $s1
	bge	$s6, $a0, .LBB4_17
# %bb.14:                               #   in Loop: Header=BB4_13 Depth=2
	ori	$a0, $zero, 77
	st.b	$a0, $sp, 136
	addi.w	$a0, $s1, 0
	add.d	$a0, $s3, $a0
	addi.d	$a1, $sp, 140
	addi.d	$a2, $zero, -45
	.p2align	4, , 16
.LBB4_15:                               #   Parent Loop BB4_7 Depth=1
                                        #     Parent Loop BB4_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a3, $a0, -2
	srli.d	$a4, $a3, 2
	ld.b	$a5, $a0, -1
	addi.d	$a4, $a4, 32
	st.b	$a4, $a1, -3
	slli.d	$a3, $a3, 4
	srli.d	$a4, $a5, 4
	or	$a3, $a4, $a3
	andi	$a3, $a3, 63
	ld.b	$a4, $a0, 0
	addi.d	$a3, $a3, 32
	st.b	$a3, $a1, -2
	slli.d	$a3, $a5, 2
	srli.d	$a5, $a4, 6
	or	$a3, $a5, $a3
	andi	$a3, $a3, 63
	addi.d	$a3, $a3, 32
	st.b	$a3, $a1, -1
	andi	$a3, $a4, 63
	addi.d	$a3, $a3, 32
	st.b	$a3, $a1, 0
	addi.w	$a2, $a2, 3
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, 3
	bnez	$a2, .LBB4_15
# %bb.16:                               # %encode_line.exit40.us
                                        #   in Loop: Header=BB4_13 Depth=2
	st.h	$s5, $sp, 197
	addi.d	$s1, $s1, 45
	b	.LBB4_12
	.p2align	4, , 16
.LBB4_17:                               #   in Loop: Header=BB4_13 Depth=2
	andi	$a1, $a0, 63
	addi.d	$a2, $a1, 32
	ori	$a1, $zero, 1
	st.b	$a2, $sp, 136
	blt	$a0, $a1, .LBB4_11
# %bb.18:                               # %.lr.ph.preheader.i.us
                                        #   in Loop: Header=BB4_13 Depth=2
	addi.w	$a3, $s1, 0
	bstrpick.d	$a4, $a0, 31, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	mul.d	$a1, $a4, $a1
	srli.d	$a1, $a1, 33
	sub.d	$a2, $s1, $s7
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	mul.d	$a2, $a2, $a5
	addi.w	$a5, $a2, -1
	sltu	$a2, $a1, $a5
	masknez	$a6, $a5, $a2
	maskeqz	$a1, $a1, $a2
	or	$a2, $a1, $a6
	ori	$a1, $zero, 1
	ori	$a7, $zero, 16
	bltu	$a2, $a7, .LBB4_22
# %bb.19:                               # %vector.ph
                                        #   in Loop: Header=BB4_13 Depth=2
	addi.w	$a1, $a2, 1
	andi	$a2, $a1, 15
	sltui	$a6, $a2, 1
	masknez	$a2, $a2, $a6
	maskeqz	$a6, $a7, $a6
	or	$a6, $a6, $a2
	sub.d	$a1, $a1, $a6
	alsl.d	$a7, $a1, $a1, 1
	add.d	$a2, $a7, $a3
	slli.d	$a1, $a1, 2
	addi.d	$a1, $a1, 1
	sub.w	$a0, $a0, $a7
	ld.d	$a7, $sp, 88                    # 8-byte Folded Reload
	add.d	$a3, $a7, $a3
	lu12i.w	$a7, 349525
	ori	$a7, $a7, 1366
	lu32i.d	$a7, 349525
	lu52i.d	$a7, $a7, 1365
	mulh.du	$a4, $a4, $a7
	bstrpick.d	$a5, $a5, 31, 0
	sltu	$a7, $a4, $a5
	maskeqz	$a4, $a4, $a7
	masknez	$a5, $a5, $a7
	or	$a4, $a4, $a5
	nor	$a4, $a4, $zero
	add.d	$a4, $a4, $a6
	addi.d	$a5, $sp, 137
	vld	$vr12, $sp, 64                  # 16-byte Folded Reload
	.p2align	4, , 16
.LBB4_20:                               # %vector.body
                                        #   Parent Loop BB4_7 Depth=1
                                        #     Parent Loop BB4_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a3, 32
	vld	$vr1, $a3, 0
	vld	$vr2, $a3, 16
	pcalau12i	$a6, %pc_hi20(.LCPI4_0)
	vld	$vr3, $a6, %pc_lo12(.LCPI4_0)
	pcalau12i	$a6, %pc_hi20(.LCPI4_1)
	vld	$vr4, $a6, %pc_lo12(.LCPI4_1)
	vshuf.b	$vr3, $vr2, $vr1, $vr3
	vshuf.b	$vr3, $vr0, $vr3, $vr4
	pcalau12i	$a6, %pc_hi20(.LCPI4_2)
	vld	$vr4, $a6, %pc_lo12(.LCPI4_2)
	pcalau12i	$a6, %pc_hi20(.LCPI4_3)
	vld	$vr5, $a6, %pc_lo12(.LCPI4_3)
	pcalau12i	$a6, %pc_hi20(.LCPI4_4)
	vld	$vr6, $a6, %pc_lo12(.LCPI4_4)
	pcalau12i	$a6, %pc_hi20(.LCPI4_5)
	vld	$vr7, $a6, %pc_lo12(.LCPI4_5)
	vshuf.b	$vr4, $vr2, $vr1, $vr4
	vshuf.b	$vr4, $vr0, $vr4, $vr5
	vshuf.b	$vr1, $vr2, $vr1, $vr6
	vshuf.b	$vr0, $vr0, $vr1, $vr7
	vsrli.b	$vr1, $vr3, 2
	vadd.b	$vr1, $vr1, $vr12
	vslli.b	$vr2, $vr3, 4
	vsrai.b	$vr3, $vr4, 4
	vor.v	$vr2, $vr3, $vr2
	vandi.b	$vr2, $vr2, 63
	vadd.b	$vr2, $vr2, $vr12
	vslli.b	$vr3, $vr4, 2
	vsrai.b	$vr4, $vr0, 6
	vor.v	$vr3, $vr4, $vr3
	vandi.b	$vr3, $vr3, 63
	vadd.b	$vr3, $vr3, $vr12
	pcalau12i	$a6, %pc_hi20(.LCPI4_6)
	vld	$vr4, $a6, %pc_lo12(.LCPI4_6)
	pcalau12i	$a6, %pc_hi20(.LCPI4_7)
	vld	$vr5, $a6, %pc_lo12(.LCPI4_7)
	pcalau12i	$a6, %pc_hi20(.LCPI4_8)
	vld	$vr6, $a6, %pc_lo12(.LCPI4_8)
	vandi.b	$vr0, $vr0, 63
	vadd.b	$vr0, $vr0, $vr12
	vshuf.b	$vr4, $vr2, $vr1, $vr4
	vshuf.b	$vr5, $vr0, $vr3, $vr5
	vori.b	$vr7, $vr6, 0
	vshuf.h	$vr7, $vr5, $vr4
	pcalau12i	$a6, %pc_hi20(.LCPI4_9)
	vld	$vr4, $a6, %pc_lo12(.LCPI4_9)
	pcalau12i	$a6, %pc_hi20(.LCPI4_10)
	vld	$vr5, $a6, %pc_lo12(.LCPI4_10)
	pcalau12i	$a6, %pc_hi20(.LCPI4_11)
	vld	$vr8, $a6, %pc_lo12(.LCPI4_11)
	vshuf.b	$vr4, $vr2, $vr1, $vr4
	vshuf.b	$vr5, $vr0, $vr3, $vr5
	vori.b	$vr9, $vr6, 0
	vshuf.h	$vr9, $vr5, $vr4
	vshuf.b	$vr4, $vr2, $vr1, $vr8
	pcalau12i	$a6, %pc_hi20(.LCPI4_12)
	vld	$vr5, $a6, %pc_lo12(.LCPI4_12)
	pcalau12i	$a6, %pc_hi20(.LCPI4_13)
	vld	$vr8, $a6, %pc_lo12(.LCPI4_13)
	pcalau12i	$a6, %pc_hi20(.LCPI4_14)
	vld	$vr10, $a6, %pc_lo12(.LCPI4_14)
	vshuf.b	$vr5, $vr0, $vr3, $vr5
	vori.b	$vr11, $vr6, 0
	vshuf.h	$vr11, $vr5, $vr4
	vshuf.b	$vr1, $vr2, $vr1, $vr8
	vshuf.b	$vr0, $vr0, $vr3, $vr10
	vshuf.h	$vr6, $vr0, $vr1
	vst	$vr6, $a5, 48
	vst	$vr11, $a5, 32
	vst	$vr9, $a5, 16
	vst	$vr7, $a5, 0
	addi.d	$a5, $a5, 64
	addi.d	$a4, $a4, 16
	addi.d	$a3, $a3, 48
	bnez	$a4, .LBB4_20
# %bb.21:                               #   in Loop: Header=BB4_13 Depth=2
	move	$a3, $a2
.LBB4_22:                               # %.lr.ph.i.us.preheader
                                        #   in Loop: Header=BB4_13 Depth=2
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	addi.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB4_23:                               # %.lr.ph.i.us
                                        #   Parent Loop BB4_7 Depth=1
                                        #     Parent Loop BB4_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bgeu	$s0, $a0, .LBB4_26
# %bb.24:                               #   in Loop: Header=BB4_23 Depth=3
	ld.bu	$a3, $a2, -1
	srli.d	$a4, $a3, 2
	addi.d	$a4, $a4, 32
	ld.b	$a5, $a2, 0
	add.d	$a6, $s8, $a1
	st.b	$a4, $a6, -4
	slli.d	$a3, $a3, 4
	srli.d	$a4, $a5, 4
	or	$a3, $a4, $a3
	andi	$a3, $a3, 63
	ld.b	$a4, $a2, 1
	addi.d	$a3, $a3, 32
	st.b	$a3, $a6, -3
	slli.d	$a3, $a5, 2
	srli.d	$a5, $a4, 6
	or	$a3, $a5, $a3
	andi	$a3, $a3, 63
	addi.d	$a3, $a3, 32
	st.b	$a3, $a6, -2
	andi	$a3, $a4, 63
	addi.d	$a3, $a3, 32
	st.b	$a3, $a6, -1
	addi.w	$a0, $a0, -3
	addi.d	$a2, $a2, 3
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB4_23
# %bb.25:                               # %._crit_edge.loopexit.i.us.loopexit
                                        #   in Loop: Header=BB4_13 Depth=2
	addi.d	$a1, $a1, -4
	b	.LBB4_10
.LBB4_26:                               #   in Loop: Header=BB4_13 Depth=2
	ld.bu	$a4, $a2, -1
	srli.d	$a3, $a4, 2
	addi.d	$a5, $a3, 32
	add.d	$a3, $s8, $a1
	st.b	$a5, $a3, -4
	slli.d	$a4, $a4, 4
	ori	$a5, $zero, 1
	beq	$a0, $a5, .LBB4_8
# %bb.27:                               #   in Loop: Header=BB4_13 Depth=2
	ld.b	$a2, $a2, 0
	srli.d	$a0, $a2, 4
	or	$a0, $a0, $a4
	andi	$a0, $a0, 63
	slli.d	$a2, $a2, 2
	andi	$a2, $a2, 60
	addi.d	$a2, $a2, 32
	b	.LBB4_9
.LBB4_28:
	move	$a3, $a0
	addi.w	$s2, $s2, -1
	ori	$a0, $zero, 1
	beq	$s2, $a0, .LBB4_4
.LBB4_29:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB4_30:                               # %do_encode.exit.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ld.w	$a1, $a0, 7
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ld.d	$s2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ld.d	$s3, $a0, 0
	ld.w	$s4, $a0, 7
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ld.h	$s5, $a0, 0
	ld.b	$s6, $a0, 2
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.w	$s7, $a0, 0
	ld.h	$s8, $a0, 4
	ori	$s1, $zero, 1000
	.p2align	4, , 16
.LBB4_31:                               # %do_encode.exit
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.w	$a0, $fp, 7
	st.d	$s2, $fp, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $fp, $a0
	stx.d	$s3, $fp, $a0
	st.w	$s4, $a1, 7
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $fp, $a0
	stx.h	$s5, $fp, $a0
	st.b	$s6, $a1, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$s0, $fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $s0, $a0
	stx.w	$s7, $s0, $a0
	addi.w	$s1, $s1, -1
	st.h	$s8, $a1, 4
	bnez	$s1, .LBB4_31
.LBB4_32:                               # %.split50.us
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$a0, $sp, 136
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	addi.w	$a1, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" \nend"
	.size	.L.str, 6

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.1:
	.asciz	"begin 640 "
	.size	.L.str.1, 11

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	" \n"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"r"
	.size	.L.str.3, 2

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.5:
	.asciz	"uuencode.c"
	.size	.L.str.5, 11

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"%d\n"
	.size	.L.str.6, 4

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Usage: uuencode [infile]"
	.size	.Lstr, 25

	.section	".note.GNU-stack","",@progbits
	.addrsig
