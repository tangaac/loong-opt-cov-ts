	.file	"BoxPartition.cpp"
	.text
	.globl	_Z13box_map_localRK3BoxiPKiiii  # -- Begin function _Z13box_map_localRK3BoxiPKiiii
	.p2align	5
	.type	_Z13box_map_localRK3BoxiPKiiii,@function
_Z13box_map_localRK3BoxiPKiiii:         # @_Z13box_map_localRK3BoxiPKiiii
# %bb.0:
	move	$a6, $a0
	add.w	$a3, $a3, $a1
	addi.w	$a0, $zero, -1
	bltz	$a3, .LBB0_8
# %bb.1:
	ld.w	$a7, $a6, 4
	ld.w	$t0, $a6, 0
	alsl.d	$a7, $a1, $a7, 1
	sub.w	$a7, $a7, $t0
	bge	$a3, $a7, .LBB0_8
# %bb.2:
	add.w	$a4, $a4, $a1
	bltz	$a4, .LBB0_8
# %bb.3:
	ld.w	$t0, $a6, 12
	ld.w	$t1, $a6, 8
	alsl.d	$t0, $a1, $t0, 1
	sub.w	$t0, $t0, $t1
	bge	$a4, $t0, .LBB0_8
# %bb.4:
	add.w	$a5, $a5, $a1
	bltz	$a5, .LBB0_8
# %bb.5:
	ld.w	$t1, $a6, 20
	ld.w	$a6, $a6, 16
	alsl.d	$a1, $a1, $t1, 1
	sub.w	$a1, $a1, $a6
	bge	$a5, $a1, .LBB0_8
# %bb.6:                                # %_ZL19box_map_local_entryRK3Boxiiii.exit
	mul.d	$a0, $t0, $a5
	add.d	$a0, $a0, $a4
	mul.d	$a0, $a0, $a7
	add.w	$a0, $a0, $a3
	bltz	$a0, .LBB0_8
# %bb.7:
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a2, $a0
.LBB0_8:                                # %_ZL19box_map_local_entryRK3Boxiiii.exit.thread
	ret
.Lfunc_end0:
	.size	_Z13box_map_localRK3BoxiPKiiii, .Lfunc_end0-_Z13box_map_localRK3BoxiPKiiii
                                        # -- End function
	.globl	_Z13box_partitioniiiRK3BoxPS_   # -- Begin function _Z13box_partitioniiiRK3BoxPS_
	.p2align	5
	.type	_Z13box_partitioniiiRK3BoxPS_,@function
_Z13box_partitioniiiRK3BoxPS_:          # @_Z13box_partitioniiiRK3BoxPS_
# %bb.0:
	sub.w	$a5, $a1, $a0
	ori	$a6, $zero, 1
	bne	$a5, $a6, .LBB1_2
# %bb.1:
	ld.w	$a1, $a3, 0
	slli.d	$a2, $a0, 4
	alsl.d	$a0, $a0, $a2, 3
	stx.w	$a1, $a4, $a0
	ld.w	$a1, $a3, 4
	add.d	$a0, $a4, $a0
	st.w	$a1, $a0, 4
	ld.w	$a1, $a3, 8
	st.w	$a1, $a0, 8
	ld.w	$a1, $a3, 12
	st.w	$a1, $a0, 12
	ld.w	$a1, $a3, 16
	st.w	$a1, $a0, 16
	ld.w	$a1, $a3, 20
	st.w	$a1, $a0, 20
	ret
.LBB1_2:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	slli.w	$s3, $a2, 1
	alsl.d	$a6, $s3, $a3, 2
	slli.d	$s4, $s3, 2
	ld.w	$a6, $a6, 4
	ldx.w	$a7, $a3, $s4
	sub.d	$s5, $a6, $a7
	bstrpick.d	$a6, $a5, 31, 31
	add.w	$a6, $a5, $a6
	srai.d	$a6, $a6, 1
	sub.d	$a7, $a5, $a6
	movgr2fr.w	$fa0, $s5
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a7
	ffint.d.w	$fa1, $fa1
	movgr2fr.w	$fa2, $a5
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa2
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a7, $fa0
	sub.d	$s6, $s5, $a7
	addi.w	$a2, $a2, 2
	lu12i.w	$a7, 349525
	ori	$a7, $a7, 1366
	mul.d	$a7, $a2, $a7
	srli.d	$t0, $a7, 63
	srli.d	$a7, $a7, 32
	add.d	$a7, $a7, $t0
	alsl.d	$a7, $a7, $a7, 1
	sub.w	$fp, $a2, $a7
	addi.w	$a2, $a5, 1
	ori	$a5, $zero, 3
	add.w	$s0, $a6, $a0
	bltu	$a2, $a5, .LBB1_4
# %bb.3:
	vld	$vr0, $a3, 0
	ld.d	$a2, $a3, 16
	vst	$vr0, $sp, 0
	st.d	$a2, $sp, 16
	addi.d	$a2, $sp, 0
	ldx.w	$a5, $s4, $a2
	alsl.d	$a2, $s3, $a2, 2
	add.d	$a5, $a5, $s6
	st.w	$a5, $a2, 4
	move	$s7, $a3
	addi.d	$a3, $sp, 0
	move	$s1, $a0
	move	$s8, $a1
	move	$a1, $s0
	move	$a2, $fp
	move	$s2, $a4
	pcaddu18i	$ra, %call36(_Z13box_partitioniiiRK3BoxPS_)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a3, $s7
	move	$a1, $s8
	move	$a4, $s2
.LBB1_4:
	beq	$a1, $a0, .LBB1_6
# %bb.5:
	vld	$vr0, $a3, 0
	ld.d	$a0, $a3, 16
	vst	$vr0, $sp, 0
	st.d	$a0, $sp, 16
	addi.d	$a0, $sp, 0
	ldx.w	$a2, $s4, $a0
	alsl.d	$a3, $s3, $a0, 2
	add.d	$a5, $a2, $s6
	stx.w	$a5, $s4, $a0
	add.d	$a0, $a2, $s5
	st.w	$a0, $a3, 4
	addi.d	$a3, $sp, 0
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_Z13box_partitioniiiRK3BoxPS_)
	jirl	$ra, $ra, 0
.LBB1_6:
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end1:
	.size	_Z13box_partitioniiiRK3BoxPS_, .Lfunc_end1-_Z13box_partitioniiiRK3BoxPS_
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z17box_partition_rcbiiRK3BoxiPPS_PPiS5_S5_S5_
.LCPI2_0:
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
.LCPI2_1:
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
.LCPI2_2:
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI2_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	_Z17box_partition_rcbiiRK3BoxiPPS_PPiS5_S5_S5_
	.p2align	5
	.type	_Z17box_partition_rcbiiRK3BoxiPPS_PPiS5_S5_S5_,@function
_Z17box_partition_rcbiiRK3BoxiPPS_PPiS5_S5_S5_: # @_Z17box_partition_rcbiiRK3BoxiPPS_PPiS5_S5_S5_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -576
	.cfi_def_cfa_offset 576
	st.d	$ra, $sp, 568                   # 8-byte Folded Spill
	st.d	$fp, $sp, 560                   # 8-byte Folded Spill
	st.d	$s0, $sp, 552                   # 8-byte Folded Spill
	st.d	$s1, $sp, 544                   # 8-byte Folded Spill
	st.d	$s2, $sp, 536                   # 8-byte Folded Spill
	st.d	$s3, $sp, 528                   # 8-byte Folded Spill
	st.d	$s4, $sp, 520                   # 8-byte Folded Spill
	st.d	$s5, $sp, 512                   # 8-byte Folded Spill
	st.d	$s6, $sp, 504                   # 8-byte Folded Spill
	st.d	$s7, $sp, 496                   # 8-byte Folded Spill
	st.d	$s8, $sp, 488                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	st.d	$a7, $sp, 96                    # 8-byte Folded Spill
	st.d	$a6, $sp, 88                    # 8-byte Folded Spill
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	move	$s0, $a4
	move	$s7, $a3
	move	$s3, $a2
	move	$s1, $a1
	move	$s8, $a0
	ori	$fp, $zero, 24
	mul.d	$a0, $a0, $fp
	mulh.du	$a1, $s8, $fp
	sltu	$a1, $zero, $a1
	masknez	$a0, $a0, $a1
	addi.w	$a2, $zero, -1
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $s0, 0
	ori	$a2, $zero, 2
	move	$a0, $zero
	move	$a1, $s8
	move	$a3, $s3
	move	$a4, $s2
	pcaddu18i	$ra, %call36(_Z13box_partitioniiiRK3BoxPS_)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 152                   # 8-byte Folded Spill
	mul.d	$a0, $s1, $fp
	add.d	$s6, $s2, $a0
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	ldx.w	$a0, $s2, $a0
	ld.w	$a1, $s6, 8
	ld.w	$a2, $s6, 16
	ld.w	$a3, $s6, 4
	ld.w	$s1, $s6, 12
	ld.w	$s2, $s6, 20
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	st.d	$a3, $sp, 480                   # 8-byte Folded Spill
	sub.d	$s3, $a3, $a0
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	sub.d	$s4, $s1, $a1
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	sub.d	$s5, $s2, $a2
	alsl.d	$a0, $s7, $s3, 1
	alsl.d	$a1, $s7, $s4, 1
	st.d	$s7, $sp, 368                   # 8-byte Folded Spill
	alsl.d	$a2, $s7, $s5, 1
	mul.d	$a0, $a1, $a0
	mul.w	$s7, $a0, $a2
	slli.d	$s0, $s7, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s8, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a0, $s8, 2
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.d	$s8, $a0, 4
	move	$a0, $s8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	move	$a0, $s8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	blez	$s7, .LBB2_2
# %bb.1:                                # %.lr.ph.preheader.i
	ori	$a1, $zero, 255
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB2_2:                                # %.preheader277.i
	st.d	$fp, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	blez	$a4, .LBB2_91
# %bb.3:                                # %.lr.ph648.i
	addi.w	$a0, $s5, 0
	ld.d	$t4, $sp, 368                   # 8-byte Folded Reload
	sub.w	$a3, $zero, $t4
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	add.w	$a0, $a0, $t4
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	bge	$a3, $a0, .LBB2_89
# %bb.4:                                # %.lr.ph648.split.us.i
	addi.w	$t7, $s4, 0
	add.w	$a0, $t7, $t4
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	bge	$a3, $a0, .LBB2_89
# %bb.5:                                # %.lr.ph648.split.us.split.us.i.preheader
	addi.w	$t8, $s3, 0
	add.w	$ra, $t8, $t4
	bge	$a3, $ra, .LBB2_93
# %bb.6:                                # %.lr.ph648.split.us.split.us.i.us.preheader
	move	$a6, $zero
	move	$s7, $zero
	move	$s8, $zero
	move	$a0, $zero
	move	$a1, $zero
	ld.d	$t6, $sp, 360                   # 8-byte Folded Reload
	sub.w	$t2, $t6, $t4
	ld.d	$a2, $sp, 480                   # 8-byte Folded Reload
	add.w	$a7, $a2, $t4
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $t4
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	add.w	$a2, $s1, $t4
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $t4
	st.d	$a2, $sp, 0                     # 8-byte Folded Spill
	add.w	$a2, $s2, $t4
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	slli.d	$t3, $t4, 1
	add.w	$s5, $t8, $t3
	addi.w	$a2, $s5, -1
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	vreplgr2vr.w	$vr11, $t4
	st.d	$a3, $sp, 256                   # 8-byte Folded Spill
	vreplgr2vr.w	$vr0, $a3
	pcalau12i	$a2, %pc_hi20(.LCPI2_0)
	vld	$vr1, $a2, %pc_lo12(.LCPI2_0)
	pcalau12i	$a2, %pc_hi20(.LCPI2_1)
	vld	$vr2, $a2, %pc_lo12(.LCPI2_1)
	pcalau12i	$a2, %pc_hi20(.LCPI2_2)
	vld	$vr3, $a2, %pc_lo12(.LCPI2_2)
	pcalau12i	$a2, %pc_hi20(.LCPI2_3)
	vld	$vr4, $a2, %pc_lo12(.LCPI2_3)
	vadd.w	$vr1, $vr0, $vr1
	vst	$vr1, $sp, 208                  # 16-byte Folded Spill
	vadd.w	$vr1, $vr0, $vr2
	vst	$vr1, $sp, 192                  # 16-byte Folded Spill
	vadd.w	$vr1, $vr0, $vr3
	vst	$vr1, $sp, 176                  # 16-byte Folded Spill
	vadd.w	$vr0, $vr0, $vr4
	vst	$vr0, $sp, 160                  # 16-byte Folded Spill
	ld.d	$t5, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	st.d	$t7, $sp, 352                   # 8-byte Folded Spill
	st.d	$t8, $sp, 344                   # 8-byte Folded Spill
	st.d	$ra, $sp, 336                   # 8-byte Folded Spill
	st.d	$t2, $sp, 400                   # 8-byte Folded Spill
	st.d	$t3, $sp, 392                   # 8-byte Folded Spill
	vst	$vr11, $sp, 320                 # 16-byte Folded Spill
	b	.LBB2_8
	.p2align	4, , 16
.LBB2_7:                                # %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us
                                        #   in Loop: Header=BB2_8 Depth=1
	addi.d	$a6, $a6, 1
	beq	$a6, $a4, .LBB2_92
.LBB2_8:                                # %.lr.ph648.split.us.split.us.i.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_16 Depth 2
                                        #       Child Loop BB2_69 Depth 3
                                        #         Child Loop BB2_81 Depth 4
                                        #         Child Loop BB2_86 Depth 4
                                        #         Child Loop BB2_74 Depth 4
                                        #       Child Loop BB2_20 Depth 3
                                        #         Child Loop BB2_59 Depth 4
                                        #         Child Loop BB2_64 Depth 4
                                        #         Child Loop BB2_52 Depth 4
                                        #         Child Loop BB2_27 Depth 4
                                        #           Child Loop BB2_43 Depth 5
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	add.w	$a2, $a2, $a6
	mod.w	$t0, $a2, $a4
	slli.d	$a2, $t0, 4
	alsl.d	$a2, $t0, $a2, 3
	ldx.w	$t1, $a5, $a2
	slli.d	$a3, $a6, 2
	stx.w	$s7, $s0, $a3
	stx.w	$s8, $s1, $a3
	st.d	$t1, $sp, 416                   # 8-byte Folded Spill
	bge	$t1, $a7, .LBB2_7
# %bb.9:                                #   in Loop: Header=BB2_8 Depth=1
	add.d	$a2, $a5, $a2
	ld.w	$a3, $a2, 4
	st.d	$a3, $sp, 480                   # 8-byte Folded Spill
	bge	$t2, $a3, .LBB2_7
# %bb.10:                               #   in Loop: Header=BB2_8 Depth=1
	ld.w	$t1, $a2, 8
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	st.d	$t1, $sp, 288                   # 8-byte Folded Spill
	bge	$t1, $a3, .LBB2_7
# %bb.11:                               #   in Loop: Header=BB2_8 Depth=1
	ld.w	$t1, $a2, 12
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	st.d	$t1, $sp, 280                   # 8-byte Folded Spill
	bge	$a3, $t1, .LBB2_7
# %bb.12:                               #   in Loop: Header=BB2_8 Depth=1
	ld.w	$t1, $a2, 16
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	st.d	$t1, $sp, 64                    # 8-byte Folded Spill
	bge	$t1, $a3, .LBB2_7
# %bb.13:                               # %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us
                                        #   in Loop: Header=BB2_8 Depth=1
	ld.w	$a3, $a2, 20
	ld.d	$a2, $sp, 0                     # 8-byte Folded Reload
	bge	$a2, $a3, .LBB2_7
# %bb.14:                               # %.preheader276.lr.ph.us.us.i.us
                                        #   in Loop: Header=BB2_8 Depth=1
	st.d	$t0, $sp, 56                    # 8-byte Folded Spill
	st.d	$zero, $sp, 264                 # 8-byte Folded Spill
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	sub.w	$a2, $a2, $t4
	st.d	$a2, $sp, 464                   # 8-byte Folded Spill
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	add.w	$a2, $a3, $t4
	st.d	$a2, $sp, 456                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $t4
	st.d	$a2, $sp, 448                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	add.w	$a2, $a2, $t4
	st.d	$a2, $sp, 440                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 416                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $t4
	st.d	$a2, $sp, 432                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 480                   # 8-byte Folded Reload
	add.w	$a2, $a2, $t4
	st.d	$a2, $sp, 424                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	st.d	$a7, $sp, 32                    # 8-byte Folded Spill
	b	.LBB2_16
	.p2align	4, , 16
.LBB2_15:                               # %._crit_edge361.split.us.split.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_16 Depth=2
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	addi.w	$a3, $a3, 1
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	st.d	$a2, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	beq	$a3, $a2, .LBB2_7
.LBB2_16:                               # %.preheader276.us.us.us.us.i.us
                                        #   Parent Loop BB2_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_69 Depth 3
                                        #         Child Loop BB2_81 Depth 4
                                        #         Child Loop BB2_86 Depth 4
                                        #         Child Loop BB2_74 Depth 4
                                        #       Child Loop BB2_20 Depth 3
                                        #         Child Loop BB2_59 Depth 4
                                        #         Child Loop BB2_64 Depth 4
                                        #         Child Loop BB2_52 Depth 4
                                        #         Child Loop BB2_27 Depth 4
                                        #           Child Loop BB2_43 Depth 5
	st.d	$a3, $sp, 248                   # 8-byte Folded Spill
	add.w	$a2, $a3, $t4
	ld.d	$s1, $sp, 416                   # 8-byte Folded Reload
	st.d	$a2, $sp, 472                   # 8-byte Folded Spill
	bltz	$a2, .LBB2_94
# %bb.17:                               # %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_16 Depth=2
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 248                   # 8-byte Folded Reload
	add.w	$t0, $a6, $a2
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	slt	$a2, $t0, $a2
	xori	$a2, $a2, 1
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	slt	$a3, $t0, $a3
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	xor	$a4, $a4, $a5
	sltu	$a4, $zero, $a4
	ld.d	$a5, $sp, 240                   # 8-byte Folded Reload
	slt	$a5, $a5, $a6
	and	$a4, $a4, $a5
	and	$a2, $a2, $a3
	st.d	$a2, $sp, 304                   # 8-byte Folded Spill
	beqz	$a4, .LBB2_67
# %bb.18:                               # %.preheader.us.us.us.us.us.us.us.i.us.preheader
                                        #   in Loop: Header=BB2_16 Depth=2
	st.d	$zero, $sp, 312                 # 8-byte Folded Spill
	ld.d	$t1, $sp, 256                   # 8-byte Folded Reload
	st.d	$t0, $sp, 384                   # 8-byte Folded Spill
	b	.LBB2_20
	.p2align	4, , 16
.LBB2_19:                               # %._crit_edge.split.us.us.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_20 Depth=3
	addi.w	$t1, $t1, 1
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	st.d	$a2, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	beq	$t1, $a2, .LBB2_15
.LBB2_20:                               # %.preheader.us.us.us.us.us.us.us.i.us
                                        #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_59 Depth 4
                                        #         Child Loop BB2_64 Depth 4
                                        #         Child Loop BB2_52 Depth 4
                                        #         Child Loop BB2_27 Depth 4
                                        #           Child Loop BB2_43 Depth 5
	add.w	$s3, $t1, $t4
	bltz	$s3, .LBB2_94
# %bb.21:                               # %.lr.ph299.split.us378.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_20 Depth=3
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	add.w	$s2, $t1, $a2
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	slt	$a2, $s2, $a2
	xori	$a2, $a2, 1
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	slt	$a3, $s2, $a3
	and	$a2, $a2, $a3
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	slt	$a3, $a4, $a3
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	slt	$a4, $a4, $t1
	and	$a3, $a3, $a4
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	and	$s0, $a4, $a2
	st.d	$t1, $sp, 408                   # 8-byte Folded Spill
	beqz	$a3, .LBB2_48
# %bb.22:                               #   in Loop: Header=BB2_20 Depth=3
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	b	.LBB2_27
.LBB2_23:                               #   in Loop: Header=BB2_27 Depth=4
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
.LBB2_24:                               # %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_27 Depth=4
	ld.d	$t1, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 384                   # 8-byte Folded Reload
	vld	$vr11, $sp, 320                 # 16-byte Folded Reload
	ld.d	$t3, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 400                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 360                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 368                   # 8-byte Folded Reload
.LBB2_25:                               # %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_27 Depth=4
	slli.d	$a1, $s4, 2
	ldx.w	$a1, $t5, $a1
	slli.d	$a2, $s8, 2
	addi.w	$s8, $s8, 1
	stx.w	$a1, $a0, $a2
	move	$a1, $s5
	move	$s5, $s1
	ld.d	$s1, $sp, 416                   # 8-byte Folded Reload
.LBB2_26:                               #   in Loop: Header=BB2_27 Depth=4
	addi.w	$fp, $fp, 1
	beq	$fp, $ra, .LBB2_19
.LBB2_27:                               # %.lr.ph299.split.split.split.us.us.us.us.split.us.us.us.us.us.i.us
                                        #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_16 Depth=2
                                        #       Parent Loop BB2_20 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_43 Depth 5
	ld.w	$a2, $s6, 4
	ld.w	$a3, $s6, 0
	add.d	$a2, $a2, $t3
	sub.w	$a2, $a2, $a3
	add.w	$a3, $fp, $t4
	bge	$a3, $a2, .LBB2_94
# %bb.28:                               #   in Loop: Header=BB2_27 Depth=4
	ld.w	$a4, $s6, 12
	ld.w	$a5, $s6, 8
	add.d	$a4, $a4, $t3
	sub.w	$a4, $a4, $a5
	bge	$s3, $a4, .LBB2_94
# %bb.29:                               #   in Loop: Header=BB2_27 Depth=4
	ld.w	$a5, $s6, 20
	ld.w	$a6, $s6, 16
	add.d	$a5, $a5, $t3
	sub.w	$a5, $a5, $a6
	ld.d	$a6, $sp, 472                   # 8-byte Folded Reload
	bge	$a6, $a5, .LBB2_94
# %bb.30:                               # %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_27 Depth=4
	ld.d	$a5, $sp, 472                   # 8-byte Folded Reload
	mul.d	$a4, $a4, $a5
	add.d	$a4, $a4, $s3
	mul.d	$a2, $a4, $a2
	add.w	$s4, $a2, $a3
	bltz	$s4, .LBB2_94
# %bb.31:                               #   in Loop: Header=BB2_27 Depth=4
	add.w	$a2, $fp, $t6
	slt	$a3, $a2, $s1
	xori	$a3, $a3, 1
	ld.d	$a4, $sp, 480                   # 8-byte Folded Reload
	slt	$a4, $a2, $a4
	and	$a3, $a3, $a4
	and	$a3, $s0, $a3
	beqz	$a3, .LBB2_33
# %bb.32:                               #   in Loop: Header=BB2_27 Depth=4
	addi.d	$a3, $s7, 1
	slli.d	$a4, $s4, 2
	stx.w	$s7, $t5, $a4
	move	$s7, $a3
.LBB2_33:                               #   in Loop: Header=BB2_27 Depth=4
	bge	$fp, $t8, .LBB2_26
# %bb.34:                               #   in Loop: Header=BB2_27 Depth=4
	bge	$t1, $t7, .LBB2_26
# %bb.35:                               #   in Loop: Header=BB2_27 Depth=4
	bltz	$fp, .LBB2_26
# %bb.36:                               #   in Loop: Header=BB2_27 Depth=4
	ld.d	$a3, $sp, 464                   # 8-byte Folded Reload
	blt	$t0, $a3, .LBB2_26
# %bb.37:                               #   in Loop: Header=BB2_27 Depth=4
	ld.d	$a3, $sp, 456                   # 8-byte Folded Reload
	bge	$t0, $a3, .LBB2_26
# %bb.38:                               #   in Loop: Header=BB2_27 Depth=4
	ld.d	$a3, $sp, 448                   # 8-byte Folded Reload
	blt	$s2, $a3, .LBB2_26
# %bb.39:                               #   in Loop: Header=BB2_27 Depth=4
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	bge	$s2, $a3, .LBB2_26
# %bb.40:                               #   in Loop: Header=BB2_27 Depth=4
	ld.d	$a3, $sp, 432                   # 8-byte Folded Reload
	blt	$a2, $a3, .LBB2_26
# %bb.41:                               #   in Loop: Header=BB2_27 Depth=4
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	bge	$a2, $a3, .LBB2_26
# %bb.42:                               # %.preheader.us.preheader
                                        #   in Loop: Header=BB2_27 Depth=4
	move	$s1, $s5
	ori	$a2, $zero, 32
	.p2align	4, , 16
.LBB2_43:                               # %.preheader.us
                                        #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_16 Depth=2
                                        #       Parent Loop BB2_20 Depth=3
                                        #         Parent Loop BB2_27 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	move	$s5, $a2
	slli.w	$a2, $a2, 1
	bge	$s8, $s5, .LBB2_43
# %bb.44:                               #   in Loop: Header=BB2_27 Depth=4
	beqz	$a0, .LBB2_23
# %bb.45:                               #   in Loop: Header=BB2_27 Depth=4
	bge	$a1, $s5, .LBB2_47
# %bb.46:                               #   in Loop: Header=BB2_27 Depth=4
	slli.d	$a1, $s5, 2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	b	.LBB2_24
.LBB2_47:                               #   in Loop: Header=BB2_27 Depth=4
	move	$s5, $a1
	b	.LBB2_25
	.p2align	4, , 16
.LBB2_48:                               # %.lr.ph299.split.split.split.us.us.us.us.split.us550.us.us.us.i.us
                                        #   in Loop: Header=BB2_20 Depth=3
	ld.w	$a2, $s6, 12
	ld.w	$a3, $s6, 8
	ld.w	$a4, $s6, 20
	ld.w	$a5, $s6, 16
	add.d	$a2, $a2, $t3
	sub.w	$a3, $a2, $a3
	add.d	$a2, $a4, $t3
	sub.w	$a2, $a2, $a5
	slt	$a4, $s3, $a3
	ld.d	$a5, $sp, 472                   # 8-byte Folded Reload
	slt	$a2, $a5, $a2
	and	$a2, $a4, $a2
	beqz	$a2, .LBB2_94
# %bb.49:                               # %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_20 Depth=3
	ld.w	$a2, $s6, 4
	ld.w	$a4, $s6, 0
	add.d	$a2, $a2, $t3
	sub.w	$a2, $a2, $a4
	beqz	$s0, .LBB2_57
# %bb.50:                               # %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us607.us.us.i.us.preheader
                                        #   in Loop: Header=BB2_20 Depth=3
	move	$a4, $zero
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	mul.d	$a3, $a5, $a3
	ld.d	$a5, $sp, 312                   # 8-byte Folded Reload
	add.w	$a3, $a5, $a3
	mul.d	$a3, $a2, $a3
	bstrpick.d	$a5, $a3, 31, 0
	alsl.d	$a5, $a5, $t5, 2
	b	.LBB2_52
	.p2align	4, , 16
.LBB2_51:                               #   in Loop: Header=BB2_52 Depth=4
	addi.w	$a4, $a4, 1
	addi.d	$a5, $a5, 4
	beq	$s5, $a4, .LBB2_19
.LBB2_52:                               # %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us607.us.us.i.us
                                        #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_16 Depth=2
                                        #       Parent Loop BB2_20 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bge	$a4, $a2, .LBB2_94
# %bb.53:                               # %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us543.us.us605.us.us.i.us
                                        #   in Loop: Header=BB2_52 Depth=4
	add.w	$a6, $a3, $a4
	bltz	$a6, .LBB2_94
# %bb.54:                               #   in Loop: Header=BB2_52 Depth=4
	add.w	$a6, $t2, $a4
	blt	$a6, $s1, .LBB2_51
# %bb.55:                               #   in Loop: Header=BB2_52 Depth=4
	ld.d	$a7, $sp, 480                   # 8-byte Folded Reload
	bge	$a6, $a7, .LBB2_51
# %bb.56:                               #   in Loop: Header=BB2_52 Depth=4
	addi.d	$a6, $s7, 1
	st.w	$s7, $a5, 0
	move	$s7, $a6
	b	.LBB2_51
	.p2align	4, , 16
.LBB2_57:                               # %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader
                                        #   in Loop: Header=BB2_20 Depth=3
	srai.d	$a4, $a2, 63
	andn	$a4, $a2, $a4
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	sltu	$a5, $a4, $a6
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $a6, $a5
	or	$a5, $a4, $a5
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	ori	$a6, $zero, 15
	bltu	$a5, $a6, .LBB2_63
# %bb.58:                               # %vector.ph
                                        #   in Loop: Header=BB2_20 Depth=3
	ld.d	$a4, $sp, 472                   # 8-byte Folded Reload
	mul.d	$a4, $a3, $a4
	add.d	$a4, $a4, $s3
	mul.d	$a4, $a4, $a2
	addi.w	$a5, $a5, 1
	add.d	$a7, $a4, $t4
	move	$a6, $a5
	bstrins.d	$a6, $zero, 3, 0
	sub.d	$a4, $a6, $t4
	vreplgr2vr.w	$vr0, $a2
	vreplgr2vr.w	$vr1, $a7
	addi.w	$a7, $a6, -16
	vld	$vr2, $sp, 160                  # 16-byte Folded Reload
	vld	$vr3, $sp, 176                  # 16-byte Folded Reload
	vld	$vr4, $sp, 192                  # 16-byte Folded Reload
	vld	$vr5, $sp, 208                  # 16-byte Folded Reload
	.p2align	4, , 16
.LBB2_59:                               # %vector.body
                                        #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_16 Depth=2
                                        #       Parent Loop BB2_20 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vadd.w	$vr6, $vr5, $vr11
	vadd.w	$vr7, $vr4, $vr11
	vadd.w	$vr8, $vr3, $vr11
	vadd.w	$vr9, $vr2, $vr11
	vsle.w	$vr9, $vr0, $vr9
	vsle.w	$vr8, $vr0, $vr8
	vpickev.h	$vr8, $vr8, $vr9
	vsle.w	$vr7, $vr0, $vr7
	vsle.w	$vr6, $vr0, $vr6
	vpickev.h	$vr6, $vr6, $vr7
	vpickev.b	$vr6, $vr6, $vr8
	vadd.w	$vr7, $vr5, $vr1
	vadd.w	$vr8, $vr4, $vr1
	vadd.w	$vr9, $vr3, $vr1
	vadd.w	$vr10, $vr2, $vr1
	vslti.w	$vr10, $vr10, 0
	vslti.w	$vr9, $vr9, 0
	vpickev.h	$vr9, $vr9, $vr10
	vslti.w	$vr8, $vr8, 0
	vslti.w	$vr7, $vr7, 0
	vpickev.h	$vr7, $vr7, $vr8
	vpickev.b	$vr7, $vr7, $vr9
	vor.v	$vr6, $vr6, $vr7
	vslli.b	$vr6, $vr6, 7
	vmskltz.b	$vr6, $vr6
	vpickve2gr.hu	$t0, $vr6, 0
	bnez	$t0, .LBB2_61
# %bb.60:                               # %vector.body
                                        #   in Loop: Header=BB2_59 Depth=4
	move	$t1, $a7
	vaddi.wu	$vr2, $vr2, 16
	vaddi.wu	$vr3, $vr3, 16
	vaddi.wu	$vr4, $vr4, 16
	vaddi.wu	$vr5, $vr5, 16
	addi.w	$a7, $a7, -16
	bnez	$t1, .LBB2_59
.LBB2_61:                               # %middle.split
                                        #   in Loop: Header=BB2_20 Depth=3
	slli.d	$a7, $t0, 48
	ld.d	$t0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 408                   # 8-byte Folded Reload
	bnez	$a7, .LBB2_94
# %bb.62:                               # %middle.block
                                        #   in Loop: Header=BB2_20 Depth=3
	beq	$a5, $a6, .LBB2_19
.LBB2_63:                               # %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader105
                                        #   in Loop: Header=BB2_20 Depth=3
	sub.d	$a5, $ra, $a4
	ld.d	$a6, $sp, 264                   # 8-byte Folded Reload
	mul.d	$a3, $a6, $a3
	ld.d	$a6, $sp, 312                   # 8-byte Folded Reload
	add.d	$a3, $a6, $a3
	mul.d	$a3, $a2, $a3
	add.w	$a4, $t4, $a4
	.p2align	4, , 16
.LBB2_64:                               # %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us
                                        #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_16 Depth=2
                                        #       Parent Loop BB2_20 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bge	$a4, $a2, .LBB2_94
# %bb.65:                               # %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_64 Depth=4
	add.w	$a6, $a3, $a4
	bltz	$a6, .LBB2_94
# %bb.66:                               #   in Loop: Header=BB2_64 Depth=4
	addi.w	$a5, $a5, -1
	addi.w	$a4, $a4, 1
	bnez	$a5, .LBB2_64
	b	.LBB2_19
	.p2align	4, , 16
.LBB2_67:                               # %.preheader.us.us.us526.us.us.us.i.us.preheader
                                        #   in Loop: Header=BB2_16 Depth=2
	move	$a2, $zero
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	b	.LBB2_69
	.p2align	4, , 16
.LBB2_68:                               # %._crit_edge.split.us376.split.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_69 Depth=3
	addi.w	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	beq	$a3, $a4, .LBB2_15
.LBB2_69:                               # %.preheader.us.us.us526.us.us.us.i.us
                                        #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_81 Depth 4
                                        #         Child Loop BB2_86 Depth 4
                                        #         Child Loop BB2_74 Depth 4
	add.w	$a7, $a3, $t4
	bltz	$a7, .LBB2_94
# %bb.70:                               # %.lr.ph299.split.us378.us.us533.us.us.us.i.us
                                        #   in Loop: Header=BB2_69 Depth=3
	ld.w	$a4, $s6, 12
	ld.w	$a5, $s6, 8
	ld.w	$a6, $s6, 20
	ld.w	$t0, $s6, 16
	add.d	$a4, $a4, $t3
	sub.w	$a5, $a4, $a5
	add.d	$a4, $a6, $t3
	sub.w	$a4, $a4, $t0
	slt	$a6, $a7, $a5
	ld.d	$t0, $sp, 472                   # 8-byte Folded Reload
	slt	$a4, $t0, $a4
	and	$a4, $a6, $a4
	beqz	$a4, .LBB2_94
# %bb.71:                               # %.lr.ph299.split.split.split.us380.split.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_69 Depth=3
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	add.w	$a4, $a3, $a4
	ld.d	$a6, $sp, 288                   # 8-byte Folded Reload
	slt	$a6, $a4, $a6
	xori	$a6, $a6, 1
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	slt	$a4, $a4, $t0
	ld.w	$t0, $s6, 4
	ld.w	$t1, $s6, 0
	and	$a4, $a6, $a4
	ld.d	$a6, $sp, 304                   # 8-byte Folded Reload
	and	$a6, $a6, $a4
	add.d	$a4, $t0, $t3
	sub.w	$a4, $a4, $t1
	beqz	$a6, .LBB2_79
# %bb.72:                               # %.lr.ph299.split.split.split.us380.split.us.split.us407.us.us.us.us.i.us.preheader
                                        #   in Loop: Header=BB2_69 Depth=3
	move	$a6, $zero
	ld.d	$a7, $sp, 264                   # 8-byte Folded Reload
	mul.d	$a5, $a7, $a5
	add.w	$a5, $a2, $a5
	mul.d	$a5, $a4, $a5
	bstrpick.d	$a7, $a5, 31, 0
	alsl.d	$a7, $a7, $t5, 2
	b	.LBB2_74
	.p2align	4, , 16
.LBB2_73:                               #   in Loop: Header=BB2_74 Depth=4
	addi.w	$a6, $a6, 1
	addi.d	$a7, $a7, 4
	beq	$s5, $a6, .LBB2_68
.LBB2_74:                               # %.lr.ph299.split.split.split.us380.split.us.split.us407.us.us.us.us.i.us
                                        #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_16 Depth=2
                                        #       Parent Loop BB2_69 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bge	$a6, $a4, .LBB2_94
# %bb.75:                               # %_ZL19box_map_local_entryRK3Boxiiii.exit.us371.us.us405.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_74 Depth=4
	add.w	$t0, $a5, $a6
	bltz	$t0, .LBB2_94
# %bb.76:                               #   in Loop: Header=BB2_74 Depth=4
	add.w	$t0, $t2, $a6
	blt	$t0, $s1, .LBB2_73
# %bb.77:                               #   in Loop: Header=BB2_74 Depth=4
	ld.d	$t1, $sp, 480                   # 8-byte Folded Reload
	bge	$t0, $t1, .LBB2_73
# %bb.78:                               #   in Loop: Header=BB2_74 Depth=4
	addi.d	$t0, $s7, 1
	st.w	$s7, $a7, 0
	move	$s7, $t0
	b	.LBB2_73
	.p2align	4, , 16
.LBB2_79:                               # %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us.preheader
                                        #   in Loop: Header=BB2_69 Depth=3
	srai.d	$a6, $a4, 63
	andn	$a6, $a4, $a6
	ld.d	$t1, $sp, 224                   # 8-byte Folded Reload
	sltu	$t0, $a6, $t1
	maskeqz	$a6, $a6, $t0
	masknez	$t0, $t1, $t0
	or	$t0, $a6, $t0
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	ori	$t1, $zero, 15
	bltu	$t0, $t1, .LBB2_85
# %bb.80:                               # %vector.ph81
                                        #   in Loop: Header=BB2_69 Depth=3
	ld.d	$a6, $sp, 472                   # 8-byte Folded Reload
	mul.d	$a6, $a5, $a6
	add.d	$a6, $a6, $a7
	mul.d	$a6, $a6, $a4
	addi.w	$a7, $t0, 1
	add.d	$t1, $a6, $t4
	move	$t0, $a7
	bstrins.d	$t0, $zero, 3, 0
	sub.d	$a6, $t0, $t4
	vreplgr2vr.w	$vr0, $a4
	vreplgr2vr.w	$vr1, $t1
	addi.w	$t1, $t0, -16
	vld	$vr2, $sp, 160                  # 16-byte Folded Reload
	vld	$vr3, $sp, 176                  # 16-byte Folded Reload
	vld	$vr4, $sp, 192                  # 16-byte Folded Reload
	vld	$vr5, $sp, 208                  # 16-byte Folded Reload
	.p2align	4, , 16
.LBB2_81:                               # %vector.body93
                                        #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_16 Depth=2
                                        #       Parent Loop BB2_69 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vadd.w	$vr6, $vr5, $vr11
	vadd.w	$vr7, $vr4, $vr11
	vadd.w	$vr8, $vr3, $vr11
	vadd.w	$vr9, $vr2, $vr11
	vsle.w	$vr9, $vr0, $vr9
	vsle.w	$vr8, $vr0, $vr8
	vpickev.h	$vr8, $vr8, $vr9
	vsle.w	$vr7, $vr0, $vr7
	vsle.w	$vr6, $vr0, $vr6
	vpickev.h	$vr6, $vr6, $vr7
	vpickev.b	$vr6, $vr6, $vr8
	vadd.w	$vr7, $vr5, $vr1
	vadd.w	$vr8, $vr4, $vr1
	vadd.w	$vr9, $vr3, $vr1
	vadd.w	$vr10, $vr2, $vr1
	vslti.w	$vr10, $vr10, 0
	vslti.w	$vr9, $vr9, 0
	vpickev.h	$vr9, $vr9, $vr10
	vslti.w	$vr8, $vr8, 0
	vslti.w	$vr7, $vr7, 0
	vpickev.h	$vr7, $vr7, $vr8
	vpickev.b	$vr7, $vr7, $vr9
	vor.v	$vr6, $vr6, $vr7
	vslli.b	$vr6, $vr6, 7
	vmskltz.b	$vr6, $vr6
	vpickve2gr.hu	$t2, $vr6, 0
	bnez	$t2, .LBB2_83
# %bb.82:                               # %vector.body93
                                        #   in Loop: Header=BB2_81 Depth=4
	move	$t3, $t1
	vaddi.wu	$vr2, $vr2, 16
	vaddi.wu	$vr3, $vr3, 16
	vaddi.wu	$vr4, $vr4, 16
	vaddi.wu	$vr5, $vr5, 16
	addi.w	$t1, $t1, -16
	bnez	$t3, .LBB2_81
.LBB2_83:                               # %middle.split98
                                        #   in Loop: Header=BB2_69 Depth=3
	slli.d	$t1, $t2, 48
	ld.d	$t2, $sp, 400                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 392                   # 8-byte Folded Reload
	bnez	$t1, .LBB2_94
# %bb.84:                               # %middle.block99
                                        #   in Loop: Header=BB2_69 Depth=3
	beq	$a7, $t0, .LBB2_68
.LBB2_85:                               # %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us.preheader109
                                        #   in Loop: Header=BB2_69 Depth=3
	sub.d	$a7, $ra, $a6
	ld.d	$t0, $sp, 264                   # 8-byte Folded Reload
	mul.d	$a5, $t0, $a5
	add.d	$a5, $a2, $a5
	mul.d	$a5, $a4, $a5
	add.w	$a6, $t4, $a6
	.p2align	4, , 16
.LBB2_86:                               # %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us
                                        #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_16 Depth=2
                                        #       Parent Loop BB2_69 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bge	$a6, $a4, .LBB2_94
# %bb.87:                               # %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us
                                        #   in Loop: Header=BB2_86 Depth=4
	add.w	$t0, $a5, $a6
	bltz	$t0, .LBB2_94
# %bb.88:                               #   in Loop: Header=BB2_86 Depth=4
	addi.w	$a7, $a7, -1
	addi.w	$a6, $a6, 1
	bnez	$a7, .LBB2_86
	b	.LBB2_68
.LBB2_89:                               # %._crit_edge.sink.split.i
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	move	$a0, $s0
	move	$a1, $zero
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
.LBB2_90:                               # %_ZL18box_partition_mapsiiPK3BoxiPPiS3_S3_S3_.exit
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	move	$s8, $zero
	move	$s7, $zero
	ld.d	$t5, $sp, 376                   # 8-byte Folded Reload
	b	.LBB2_92
.LBB2_91:
	move	$a0, $zero
	move	$s8, $zero
	move	$s7, $zero
	ld.d	$t5, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
.LBB2_92:                               # %_ZL18box_partition_mapsiiPK3BoxiPPiS3_S3_S3_.exit
	ld.d	$a1, $sp, 576
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	stx.w	$s7, $s0, $a2
	stx.w	$s8, $s1, $a2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.d	$t5, $a2, 0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.d	$s0, $a2, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$s1, $a2, 0
	st.d	$a0, $a1, 0
	ld.d	$s8, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 552                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 560                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 568                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 576
	ret
.LBB2_93:                               # %.lr.ph648.split.us.split.us.i.preheader45
	slli.d	$fp, $a4, 2
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	move	$a0, $s0
	move	$a1, $zero
	b	.LBB2_90
.LBB2_94:                               # %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_Z17box_partition_rcbiiRK3BoxiPPS_PPiS5_S5_S5_, .Lfunc_end2-_Z17box_partition_rcbiiRK3BoxiPPS_PPiS5_S5_S5_
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
