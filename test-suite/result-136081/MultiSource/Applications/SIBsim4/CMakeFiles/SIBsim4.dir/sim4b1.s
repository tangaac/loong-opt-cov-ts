	.file	"sim4b1.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function SIM4
.LCPI0_0:
	.dword	0x3fc3333333333334              # double 0.15000000000000002
.LCPI0_1:
	.dword	0x3fc999999999999a              # double 0.20000000000000001
.LCPI0_2:
	.dword	0x3ff3333333333333              # double 1.2
.LCPI0_3:
	.dword	0x408f400000000000              # double 1000
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_4:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.globl	SIM4
	.p2align	5
	.type	SIM4,@function
SIM4:                                   # @SIM4
# %bb.0:
	addi.d	$sp, $sp, -704
	st.d	$ra, $sp, 696                   # 8-byte Folded Spill
	st.d	$fp, $sp, 688                   # 8-byte Folded Spill
	st.d	$s0, $sp, 680                   # 8-byte Folded Spill
	st.d	$s1, $sp, 672                   # 8-byte Folded Spill
	st.d	$s2, $sp, 664                   # 8-byte Folded Spill
	st.d	$s3, $sp, 656                   # 8-byte Folded Spill
	st.d	$s4, $sp, 648                   # 8-byte Folded Spill
	st.d	$s5, $sp, 640                   # 8-byte Folded Spill
	st.d	$s6, $sp, 632                   # 8-byte Folded Spill
	st.d	$s7, $sp, 624                   # 8-byte Folded Spill
	st.d	$s8, $sp, 616                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 608                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 600                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 592                  # 8-byte Folded Spill
	move	$s6, $a0
	ld.w	$a0, $a0, 16
	beqz	$a0, .LBB0_637
# %bb.1:
	move	$s2, $a1
	ldptr.w	$a0, $a1, 4148
	beqz	$a0, .LBB0_637
# %bb.2:
	move	$s7, $a2
	ori	$a0, $zero, 0
	lu32i.d	$a0, 5
	st.d	$a0, $sp, 560
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(options)
	ld.d	$a3, $a1, %got_pc_lo12(options)
	ld.d	$a1, $s2, 16
	ldptr.w	$a2, $s2, 4148
	st.d	$a3, $sp, 440                   # 8-byte Folded Spill
	ld.w	$a5, $a3, 40
	st.d	$a0, $sp, 552
	st.d	$zero, $sp, 0
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	addi.d	$a6, $sp, 552
	move	$a0, $s6
	move	$a7, $s7
	pcaddu18i	$ra, %call36(exon_cores)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 8
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 320                  # 16-byte Folded Spill
	vst	$vr0, $sp, 536
	beqz	$a0, .LBB0_635
# %bb.3:                                # %.lr.ph701
	move	$a1, $zero
	ori	$s3, $zero, 2
	addi.w	$a0, $zero, -62
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(free)
	ld.d	$a0, $a0, %got_pc_lo12(free)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	lu12i.w	$a0, 244
	ori	$a0, $a0, 575
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	xvrepli.b	$xr0, -1
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	movgr2fr.d	$fs0, $zero
	vrepli.w	$vr0, 1
	vst	$vr0, $sp, 240                  # 16-byte Folded Spill
	lu12i.w	$a0, -4096
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	st.d	$s6, $sp, 160                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_4:                                # %free_align.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	st.d	$zero, $s4, 0
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=1
	ld.wu	$a0, $s7, 8
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bgeu	$a1, $a0, .LBB0_634
.LBB0_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_18 Depth 2
                                        #     Child Loop BB0_24 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_35 Depth 2
                                        #     Child Loop BB0_49 Depth 2
                                        #     Child Loop BB0_53 Depth 2
                                        #     Child Loop BB0_56 Depth 2
                                        #     Child Loop BB0_61 Depth 2
                                        #     Child Loop BB0_65 Depth 2
                                        #     Child Loop BB0_69 Depth 2
                                        #     Child Loop BB0_71 Depth 2
                                        #       Child Loop BB0_87 Depth 3
                                        #         Child Loop BB0_96 Depth 4
                                        #       Child Loop BB0_106 Depth 3
                                        #       Child Loop BB0_115 Depth 3
                                        #       Child Loop BB0_119 Depth 3
                                        #       Child Loop BB0_123 Depth 3
                                        #     Child Loop BB0_131 Depth 2
                                        #     Child Loop BB0_142 Depth 2
                                        #     Child Loop BB0_145 Depth 2
                                        #     Child Loop BB0_149 Depth 2
                                        #     Child Loop BB0_155 Depth 2
                                        #     Child Loop BB0_162 Depth 2
                                        #     Child Loop BB0_168 Depth 2
                                        #     Child Loop BB0_178 Depth 2
                                        #       Child Loop BB0_193 Depth 3
                                        #         Child Loop BB0_205 Depth 4
                                        #       Child Loop BB0_216 Depth 3
                                        #       Child Loop BB0_223 Depth 3
                                        #       Child Loop BB0_226 Depth 3
                                        #       Child Loop BB0_228 Depth 3
                                        #     Child Loop BB0_630 Depth 2
                                        #     Child Loop BB0_242 Depth 2
                                        #       Child Loop BB0_251 Depth 3
                                        #       Child Loop BB0_271 Depth 3
                                        #       Child Loop BB0_275 Depth 3
                                        #       Child Loop BB0_278 Depth 3
                                        #       Child Loop BB0_281 Depth 3
                                        #       Child Loop BB0_294 Depth 3
                                        #       Child Loop BB0_298 Depth 3
                                        #       Child Loop BB0_301 Depth 3
                                        #       Child Loop BB0_356 Depth 3
                                        #       Child Loop BB0_361 Depth 3
                                        #       Child Loop BB0_365 Depth 3
                                        #       Child Loop BB0_369 Depth 3
                                        #         Child Loop BB0_384 Depth 4
                                        #           Child Loop BB0_394 Depth 5
                                        #         Child Loop BB0_417 Depth 4
                                        #         Child Loop BB0_374 Depth 4
                                        #         Child Loop BB0_400 Depth 4
                                        #           Child Loop BB0_412 Depth 5
                                        #         Child Loop BB0_421 Depth 4
                                        #         Child Loop BB0_426 Depth 4
                                        #       Child Loop BB0_346 Depth 3
                                        #       Child Loop BB0_351 Depth 3
                                        #       Child Loop BB0_325 Depth 3
                                        #       Child Loop BB0_330 Depth 3
                                        #       Child Loop BB0_335 Depth 3
                                        #     Child Loop BB0_435 Depth 2
                                        #     Child Loop BB0_446 Depth 2
                                        #     Child Loop BB0_455 Depth 2
                                        #     Child Loop BB0_462 Depth 2
                                        #     Child Loop BB0_471 Depth 2
                                        #       Child Loop BB0_474 Depth 3
                                        #       Child Loop BB0_477 Depth 3
                                        #       Child Loop BB0_483 Depth 3
                                        #     Child Loop BB0_491 Depth 2
                                        #       Child Loop BB0_496 Depth 3
                                        #         Child Loop BB0_498 Depth 4
                                        #         Child Loop BB0_501 Depth 4
                                        #         Child Loop BB0_507 Depth 4
                                        #       Child Loop BB0_516 Depth 3
                                        #     Child Loop BB0_523 Depth 2
                                        #       Child Loop BB0_530 Depth 3
                                        #         Child Loop BB0_532 Depth 4
                                        #     Child Loop BB0_554 Depth 2
                                        #       Child Loop BB0_561 Depth 3
                                        #     Child Loop BB0_573 Depth 2
                                        #       Child Loop BB0_603 Depth 3
                                        #         Child Loop BB0_611 Depth 4
                                        #         Child Loop BB0_614 Depth 4
                                        #     Child Loop BB0_627 Depth 2
	ld.d	$a0, $s7, 0
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	ldx.d	$s4, $a0, $a1
	st.d	$zero, $s4, 40
	ld.d	$a1, $s6, 8
	ld.d	$a2, $s2, 16
	move	$a0, $s4
	pcaddu18i	$ra, %call36(kill_polyA)
	jirl	$ra, $ra, 0
	ld.w	$s0, $s4, 16
	beqz	$s0, .LBB0_5
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $s4, 44
	addi.d	$s5, $s4, 8
	st.d	$s4, $sp, 456                   # 8-byte Folded Spill
	st.d	$s5, $sp, 448                   # 8-byte Folded Spill
	bnez	$a0, .LBB0_137
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$t0, $a0, 0
	ld.w	$a0, $t0, 4
	bltu	$a0, $s3, .LBB0_137
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=1
	addi.w	$a1, $a0, -62
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	bltu	$a2, $a1, .LBB0_23
# %bb.10:                               #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a1, $t0, 0
	ld.w	$a2, $s4, 24
	addi.w	$a1, $a1, -1
	bgeu	$a2, $a1, .LBB0_23
# %bb.11:                               #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a1, $s6, 36
	bstrpick.d	$a2, $a0, 31, 0
	sltui	$a3, $a1, 10
	ori	$a4, $zero, 10
	masknez	$a4, $a4, $a3
	maskeqz	$a1, $a1, $a3
	ld.d	$a3, $s2, 16
	or	$a1, $a1, $a4
	addi.d	$a0, $a0, -1
	st.w	$a1, $sp, 532
	st.d	$a3, $sp, 504
	st.w	$a0, $sp, 512
	slli.d	$a0, $a1, 1
	addi.d	$a0, $a0, -2
	bstrpick.d	$a0, $a0, 31, 1
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	sll.w	$a0, $a1, $a0
	nor	$a0, $a0, $zero
	st.w	$a0, $sp, 528
	slli.d	$a0, $a2, 2
	move	$s1, $t0
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $sp, 520
	ori	$a1, $zero, 8
	lu12i.w	$a0, 128
	pcaddu18i	$ra, %call36(xcalloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$a0, $sp, 496
	addi.d	$a0, $sp, 496
	pcaddu18i	$ra, %call36(bld_table)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 8
	ld.wu	$a3, $s4, 24
	st.d	$s1, $sp, 432                   # 8-byte Folded Spill
	ld.w	$a2, $s1, 0
	add.d	$a1, $a0, $a3
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	ld.w	$a5, $a0, 24
	nor	$a0, $a3, $zero
	add.w	$a2, $a2, $a0
	addi.w	$a4, $a3, 1
	addi.d	$a0, $sp, 496
	ori	$a3, $zero, 1
	addi.d	$a6, $sp, 552
	addi.d	$a7, $sp, 536
	st.d	$a7, $sp, 0
	move	$a7, $zero
	pcaddu18i	$ra, %call36(exon_cores)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	lu12i.w	$s2, 1024
	.p2align	4, , 16
.LBB0_12:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a0, $fp, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(tdestroy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	bne	$s0, $s2, .LBB0_12
# %bb.13:                               # %free_hash_env.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 544
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 432                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_22
# %bb.14:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a1, $sp, 536
	bstrpick.d	$a2, $a0, 31, 0
	move	$a3, $a1
	.p2align	4, , 16
.LBB0_15:                               # %.lr.ph.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a4, 0
	ld.d	$a6, $a4, 8
	rotri.d	$a5, $a5, 32
	st.d	$a5, $a4, 0
	rotri.d	$a5, $a6, 32
	st.d	$a5, $a4, 8
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	bnez	$a2, .LBB0_15
# %bb.16:                               # %swap_seqs.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$a1, $s6, 16
	ld.w	$a2, $a0, 8
	bgeu	$a2, $a1, .LBB0_21
# %bb.17:                               # %.lr.ph.i358
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a3, $s6, 8
	ld.w	$a4, $a0, 12
	ldptr.w	$a5, $s2, 4148
	ld.d	$a6, $s2, 16
	bstrpick.d	$a7, $a2, 31, 0
	bstrpick.d	$t0, $a4, 31, 0
	sltu	$t1, $a5, $a4
	masknez	$a5, $a5, $t1
	maskeqz	$t1, $a4, $t1
	or	$a5, $t1, $a5
	bstrpick.d	$t1, $a5, 31, 0
	add.d	$a3, $a3, $a7
	addi.d	$a4, $a4, 1
	add.d	$a5, $a6, $t0
	sub.d	$a6, $t1, $t0
	.p2align	4, , 16
.LBB0_18:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a6, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=2
	ld.bu	$a7, $a3, 0
	ld.bu	$t0, $a5, 0
	bne	$a7, $t0, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	addi.w	$a2, $a2, 1
	st.w	$a2, $a0, 8
	st.w	$a4, $a0, 12
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 1
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a6, -1
	bne	$a1, $a2, .LBB0_18
.LBB0_21:                               # %grow_exon_right.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a3, $s6, 36
	addi.d	$a1, $sp, 536
	move	$a0, $s5
	move	$a2, $zero
	pcaddu18i	$ra, %call36(merge)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$t0, $a0, 0
	st.w	$zero, $sp, 544
.LBB0_22:                               #   in Loop: Header=BB0_6 Depth=1
	ld.w	$s0, $s4, 16
	beqz	$s0, .LBB0_32
.LBB0_23:                               # %.lr.ph
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s8, $t0
	move	$a0, $s2
	ld.d	$s2, $s5, 0
	ld.d	$fp, $a0, 16
	move	$s1, $zero
	bstrpick.d	$s3, $s0, 31, 0
	.p2align	4, , 16
.LBB0_24:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s2, 0
	ld.w	$a1, $a0, 12
	ld.w	$a0, $a0, 4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(is_polyAT_exon_p)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_27
# %bb.25:                               #   in Loop: Header=BB0_24 Depth=2
	addi.w	$s1, $s1, 1
	addi.d	$s3, $s3, -1
	addi.d	$s2, $s2, 8
	bnez	$s3, .LBB0_24
# %bb.26:                               #   in Loop: Header=BB0_6 Depth=1
	move	$s1, $s0
.LBB0_27:                               # %.critedge
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$t0, $s8
	ori	$s3, $zero, 2
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	beqz	$s1, .LBB0_32
# %bb.28:                               # %.preheader616.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s0, $zero
	bstrpick.d	$fp, $s1, 31, 0
	slli.d	$s2, $fp, 3
	.p2align	4, , 16
.LBB0_29:                               # %.preheader616
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s5, 0
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	bne	$s2, $s0, .LBB0_29
# %bb.30:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $s4, 8
	ld.w	$a2, $s4, 16
	alsl.d	$a1, $fp, $a0, 3
	sub.d	$a2, $a2, $s1
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 16
	sub.d	$a1, $a0, $s1
	st.w	$a1, $s4, 16
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	beq	$a0, $s1, .LBB0_5
# %bb.31:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$t0, $a0, 0
.LBB0_32:                               # %.critedge.thread
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.wu	$a0, $t0, 4
	addi.w	$s0, $a0, -1
	beqz	$s0, .LBB0_137
# %bb.33:                               #   in Loop: Header=BB0_6 Depth=1
	sltui	$a2, $s0, 250
	ori	$a1, $zero, 250
	masknez	$a3, $a1, $a2
	ld.wu	$a1, $t0, 0
	maskeqz	$a2, $s0, $a2
	or	$t1, $a2, $a3
	slli.d	$a2, $t1, 2
	addi.w	$a3, $a1, 0
	slt	$a3, $a2, $a3
	addi.d	$a4, $a1, -1
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a4, $a3
	ld.d	$a4, $s2, 16
	or	$a2, $a2, $a3
	addi.w	$t2, $a2, 0
	ld.d	$a5, $s6, 8
	add.d	$a4, $a4, $a0
	nor	$a3, $t1, $zero
	add.d	$a4, $a3, $a4
	add.d	$a5, $a5, $a1
	nor	$a6, $t2, $zero
	add.d	$a5, $a6, $a5
	addi.d	$s8, $a4, -1
	addi.d	$s4, $a5, -1
	ori	$a4, $zero, 1
	blt	$t2, $a4, .LBB0_38
# %bb.34:                               # %.lr.ph.i367.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$a5, $t2
	move	$s2, $t1
	.p2align	4, , 16
.LBB0_35:                               # %.lr.ph.i367
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a6, $s2
	ldx.bu	$a4, $s8, $s2
	ldx.bu	$a7, $s4, $a5
	bne	$a4, $a7, .LBB0_40
# %bb.36:                               #   in Loop: Header=BB0_35 Depth=2
	addi.w	$s2, $a6, -1
	addi.w	$a4, $a5, -1
	blt	$a5, $s3, .LBB0_39
# %bb.37:                               #   in Loop: Header=BB0_35 Depth=2
	move	$a5, $a4
	ori	$a7, $zero, 1
	bne	$a6, $a7, .LBB0_35
	b	.LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_6 Depth=1
	move	$s2, $t1
	move	$a4, $t2
.LBB0_39:                               # %.critedge.i
                                        #   in Loop: Header=BB0_6 Depth=1
	add.d	$a5, $a0, $a3
	nor	$a0, $a2, $zero
	add.d	$a6, $a1, $a0
	bnez	$s2, .LBB0_41
	b	.LBB0_45
.LBB0_40:                               #   in Loop: Header=BB0_6 Depth=1
	move	$s2, $a6
	move	$a4, $a5
	add.d	$a5, $a0, $a3
	nor	$a0, $a2, $zero
	add.d	$a6, $a1, $a0
	beqz	$s2, .LBB0_45
.LBB0_41:                               # %.critedge.i
                                        #   in Loop: Header=BB0_6 Depth=1
	beqz	$a4, .LBB0_45
# %bb.42:                               #   in Loop: Header=BB0_6 Depth=1
	st.d	$a6, $sp, 360                   # 8-byte Folded Spill
	st.d	$a5, $sp, 368                   # 8-byte Folded Spill
	st.d	$t0, $sp, 432                   # 8-byte Folded Spill
	ori	$s6, $zero, 2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$s7, $a0, 36
	addi.w	$s3, $t1, 1
	st.d	$t1, $sp, 480                   # 8-byte Folded Spill
	st.d	$t2, $sp, 416                   # 8-byte Folded Spill
	add.w	$s5, $t2, $t1
	addi.w	$s1, $s5, 1
	slli.d	$fp, $s1, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	bltz	$s5, .LBB0_57
# %bb.43:                               # %iter.check1141
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 4
	bgeu	$s1, $a0, .LBB0_46
# %bb.44:                               #   in Loop: Header=BB0_6 Depth=1
	move	$a0, $zero
	b	.LBB0_55
.LBB0_45:                               #   in Loop: Header=BB0_6 Depth=1
	move	$s1, $zero
	add.d	$a5, $s2, $a5
	add.d	$a6, $a4, $a6
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	b	.LBB0_135
.LBB0_46:                               # %vector.main.loop.iter.check1143
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 16
	bgeu	$s1, $a0, .LBB0_48
# %bb.47:                               #   in Loop: Header=BB0_6 Depth=1
	move	$a0, $zero
	b	.LBB0_52
.LBB0_48:                               # %vector.ph1144
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	addi.d	$a1, $a0, 32
	bstrpick.d	$a0, $s1, 30, 4
	slli.d	$a0, $a0, 4
	xvreplgr2vr.w	$xr0, $s3
	move	$a2, $a0
	.p2align	4, , 16
.LBB0_49:                               # %vector.body1149
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB0_49
# %bb.50:                               # %middle.block1152
                                        #   in Loop: Header=BB0_6 Depth=1
	beq	$a0, $s1, .LBB0_57
# %bb.51:                               # %vec.epilog.iter.check1157
                                        #   in Loop: Header=BB0_6 Depth=1
	andi	$a1, $s1, 12
	beqz	$a1, .LBB0_55
.LBB0_52:                               # %vec.epilog.ph1156
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$a2, $a0
	bstrpick.d	$a0, $s1, 30, 2
	slli.d	$a0, $a0, 2
	vreplgr2vr.w	$vr0, $s3
	sub.d	$a1, $a2, $a0
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 2
	.p2align	4, , 16
.LBB0_53:                               # %vec.epilog.vector.body1164
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $a2, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 16
	bnez	$a1, .LBB0_53
# %bb.54:                               # %vec.epilog.middle.block1167
                                        #   in Loop: Header=BB0_6 Depth=1
	beq	$a0, $s1, .LBB0_57
.LBB0_55:                               # %.lr.ph281.i.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	sub.d	$a1, $s1, $a0
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a2, 2
	.p2align	4, , 16
.LBB0_56:                               # %.lr.ph281.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$s3, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB0_56
.LBB0_57:                               # %iter.check1107
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	stx.w	$s2, $a1, $a0
	slli.w	$s1, $s3, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$t7, $fp
	move	$t6, $a0
	ori	$a1, $zero, 1
	ori	$a0, $zero, 4
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 480                   # 8-byte Folded Reload
	bltu	$s0, $a0, .LBB0_68
# %bb.58:                               # %vector.main.loop.iter.check1109
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 16
	bgeu	$s0, $a0, .LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_6 Depth=1
	move	$a0, $zero
	b	.LBB0_64
.LBB0_60:                               # %vector.ph1110
                                        #   in Loop: Header=BB0_6 Depth=1
	andi	$a0, $t0, 240
	xvreplgr2vr.w	$xr0, $s3
	addi.d	$a1, $t7, 36
	move	$a2, $a0
	.p2align	4, , 16
.LBB0_61:                               # %vector.body1115
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB0_61
# %bb.62:                               # %middle.block1118
                                        #   in Loop: Header=BB0_6 Depth=1
	beq	$a0, $t0, .LBB0_70
# %bb.63:                               # %vec.epilog.iter.check1123
                                        #   in Loop: Header=BB0_6 Depth=1
	andi	$a1, $t0, 12
	beqz	$a1, .LBB0_67
.LBB0_64:                               # %vec.epilog.ph1122
                                        #   in Loop: Header=BB0_6 Depth=1
	andi	$a2, $t0, 252
	srli.d	$a3, $t0, 2
	ori	$a1, $zero, 1
	bstrins.d	$a1, $a3, 7, 2
	vreplgr2vr.w	$vr0, $s3
	alsl.d	$a3, $a0, $t7, 2
	addi.d	$a3, $a3, 4
	sub.d	$a0, $a0, $a2
	.p2align	4, , 16
.LBB0_65:                               # %vec.epilog.vector.body1130
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $a3, 0
	addi.d	$a0, $a0, 4
	addi.d	$a3, $a3, 16
	bnez	$a0, .LBB0_65
# %bb.66:                               # %vec.epilog.middle.block1134
                                        #   in Loop: Header=BB0_6 Depth=1
	bne	$a2, $t0, .LBB0_68
	b	.LBB0_70
.LBB0_67:                               #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a1, $a0, 1
.LBB0_68:                               # %vec.epilog.scalar.ph1121.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	sub.d	$a0, $t0, $a1
	addi.d	$a0, $a0, 1
	alsl.d	$a1, $a1, $t7, 2
	.p2align	4, , 16
.LBB0_69:                               # %vec.epilog.scalar.ph1121
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$s3, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB0_69
.LBB0_70:                               # %.loopexit1171
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$t2, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$t3, $t2, $a3, 2
	ld.w	$a0, $t3, 0
	move	$a1, $zero
	move	$a2, $zero
	st.w	$a0, $t7, 0
	st.w	$t2, $t6, 0
	bstrpick.d	$a0, $s7, 31, 31
	add.w	$a0, $s7, $a0
	srai.d	$t4, $a0, 1
	slli.w	$t5, $s7, 1
	addi.d	$a0, $a3, -4
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	addi.d	$a0, $a3, 4
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	addi.w	$a7, $t2, 2
	addi.d	$s1, $t0, 2
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	sub.d	$a4, $a3, $a0
	st.d	$a4, $sp, 264                   # 8-byte Folded Spill
	addi.w	$t1, $t2, -1
	sub.d	$a5, $t1, $t0
	addi.d	$a6, $a3, 32
	addi.d	$a0, $a0, 32
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ori	$s0, $zero, 1
	ori	$ra, $zero, 2
	move	$t8, $t2
	st.d	$t2, $sp, 464                   # 8-byte Folded Spill
	st.d	$t6, $sp, 408                   # 8-byte Folded Spill
	st.d	$t7, $sp, 400                   # 8-byte Folded Spill
	st.d	$t3, $sp, 352                   # 8-byte Folded Spill
	st.d	$t4, $sp, 304                   # 8-byte Folded Spill
	st.d	$t5, $sp, 296                   # 8-byte Folded Spill
	st.d	$a6, $sp, 280                   # 8-byte Folded Spill
.LBB0_71:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_87 Depth 3
                                        #         Child Loop BB0_96 Depth 4
                                        #       Child Loop BB0_106 Depth 3
                                        #       Child Loop BB0_115 Depth 3
                                        #       Child Loop BB0_119 Depth 3
                                        #       Child Loop BB0_123 Depth 3
	slli.d	$a0, $a2, 2
	ldx.w	$a0, $t7, $a0
	sub.w	$a0, $t0, $a0
	ori	$a3, $zero, 2
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	bge	$t4, $a0, .LBB0_74
# %bb.72:                               #   in Loop: Header=BB0_71 Depth=2
	bge	$a0, $t5, .LBB0_79
# %bb.73:                               #   in Loop: Header=BB0_71 Depth=2
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	ld.w	$a3, $a0, 28
.LBB0_74:                               # %good_ratio.exit.i
                                        #   in Loop: Header=BB0_71 Depth=2
	bge	$a3, $a2, .LBB0_82
.LBB0_75:                               #   in Loop: Header=BB0_71 Depth=2
	beqz	$a2, .LBB0_129
# %bb.76:                               #   in Loop: Header=BB0_71 Depth=2
	addi.d	$a0, $a2, -1
	slli.d	$a3, $a0, 2
	ldx.w	$a3, $t7, $a3
	sub.w	$a3, $t0, $a3
	ori	$a4, $zero, 2
	bge	$t4, $a3, .LBB0_81
# %bb.77:                               #   in Loop: Header=BB0_71 Depth=2
	bge	$a3, $t5, .LBB0_80
# %bb.78:                               #   in Loop: Header=BB0_71 Depth=2
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	ld.w	$a4, $a3, 28
	b	.LBB0_81
.LBB0_79:                               #   in Loop: Header=BB0_71 Depth=2
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a3, %pc_lo12(.LCPI0_0)
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	vldi	$vr2, -912
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a3, $fa0
	blt	$a3, $a2, .LBB0_75
	b	.LBB0_82
.LBB0_80:                               #   in Loop: Header=BB0_71 Depth=2
	pcalau12i	$a4, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a4, %pc_lo12(.LCPI0_0)
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	vldi	$vr2, -912
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a4, $fa0
.LBB0_81:                               # %good_ratio.exit259.i
                                        #   in Loop: Header=BB0_71 Depth=2
	blt	$a4, $a0, .LBB0_129
.LBB0_82:                               # %.critedge7.i
                                        #   in Loop: Header=BB0_71 Depth=2
	addi.w	$fp, $t8, -1
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	st.d	$a5, $sp, 424                   # 8-byte Folded Spill
	bge	$a0, $fp, .LBB0_84
# %bb.83:                               # %._crit_edge301.thread.i
                                        #   in Loop: Header=BB0_71 Depth=2
	ld.w	$a0, $t3, 0
	slli.d	$a3, $s0, 2
	stx.w	$a0, $t7, $a3
	stx.w	$t2, $t6, $a3
	move	$t8, $fp
	b	.LBB0_124
	.p2align	4, , 16
.LBB0_84:                               # %.lr.ph300.i
                                        #   in Loop: Header=BB0_71 Depth=2
	move	$a0, $ra
	bstrins.d	$a0, $zero, 1, 0
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	move	$t5, $ra
	bstrins.d	$t5, $zero, 3, 0
	alsl.d	$a6, $t1, $a6, 2
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$t3, $t1, $a0, 2
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$t4, $t1, $a0, 2
	slli.d	$a0, $a2, 1
	addi.d	$a0, $a0, 3
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	nor	$a0, $a2, $zero
	add.w	$a4, $t2, $a0
	add.d	$a0, $s0, $t2
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$t0, $a0, $a3, 2
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a3, $a4, $a3, 2
	move	$t2, $a5
	st.d	$fp, $sp, 344                   # 8-byte Folded Spill
	move	$t7, $fp
	b	.LBB0_87
	.p2align	4, , 16
.LBB0_85:                               # %.critedge11.thread.i
                                        #   in Loop: Header=BB0_87 Depth=3
	slli.d	$a5, $t7, 2
	ld.d	$t6, $sp, 488                   # 8-byte Folded Reload
	stx.w	$fp, $t6, $a5
.LBB0_86:                               #   in Loop: Header=BB0_87 Depth=3
	addi.d	$t7, $t7, 1
	addi.w	$a5, $t7, 0
	addi.d	$t2, $t2, 1
	beq	$a7, $a5, .LBB0_104
.LBB0_87:                               #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_96 Depth 4
	bne	$t7, $a4, .LBB0_89
# %bb.88:                               #   in Loop: Header=BB0_87 Depth=3
	ld.w	$s2, $a3, 0
	b	.LBB0_94
	.p2align	4, , 16
.LBB0_89:                               #   in Loop: Header=BB0_87 Depth=3
	bne	$t7, $a0, .LBB0_91
# %bb.90:                               #   in Loop: Header=BB0_87 Depth=3
	ld.w	$t6, $t0, 0
	addi.w	$s2, $t6, -1
	b	.LBB0_94
	.p2align	4, , 16
.LBB0_91:                               #   in Loop: Header=BB0_87 Depth=3
	ld.d	$a5, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$s2, $t7, $a5, 2
	slli.d	$t6, $t7, 2
	ldx.w	$t6, $a5, $t6
	ld.w	$fp, $s2, 4
	ld.w	$s5, $s2, -4
	addi.w	$s2, $t6, -1
	blt	$fp, $s2, .LBB0_93
# %bb.92:                               #   in Loop: Header=BB0_87 Depth=3
	bge	$s5, $t6, .LBB0_94
.LBB0_93:                               # %._crit_edge353.i
                                        #   in Loop: Header=BB0_87 Depth=3
	addi.w	$s2, $s5, -1
	slt	$t6, $t6, $s5
	slt	$s5, $s2, $fp
	masknez	$a5, $fp, $s5
	maskeqz	$s2, $s2, $s5
	or	$a5, $s2, $a5
	masknez	$a5, $a5, $t6
	maskeqz	$t6, $fp, $t6
	or	$s2, $t6, $a5
	.p2align	4, , 16
.LBB0_94:                               #   in Loop: Header=BB0_87 Depth=3
	ld.d	$a5, $sp, 480                   # 8-byte Folded Reload
	sub.d	$a5, $t7, $a5
	add.w	$fp, $s2, $a5
	ori	$a5, $zero, 1
	blt	$s2, $a5, .LBB0_100
# %bb.95:                               #   in Loop: Header=BB0_87 Depth=3
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	blt	$fp, $a5, .LBB0_101
	.p2align	4, , 16
.LBB0_96:                               # %.lr.ph291.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        #       Parent Loop BB0_87 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$fp, $s2
	add.w	$t6, $t2, $s2
	ldx.bu	$a5, $s8, $s2
	ldx.bu	$s2, $s4, $t6
	bne	$a5, $s2, .LBB0_85
# %bb.97:                               #   in Loop: Header=BB0_96 Depth=4
	addi.w	$s2, $fp, -1
	blt	$t6, $s6, .LBB0_99
# %bb.98:                               #   in Loop: Header=BB0_96 Depth=4
	ori	$a5, $zero, 1
	blt	$a5, $fp, .LBB0_96
.LBB0_99:                               # %.critedge11.i.loopexit
                                        #   in Loop: Header=BB0_87 Depth=3
	add.w	$fp, $t2, $s2
	b	.LBB0_101
	.p2align	4, , 16
.LBB0_100:                              #   in Loop: Header=BB0_87 Depth=3
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
.LBB0_101:                              # %.critedge11.i
                                        #   in Loop: Header=BB0_87 Depth=3
	slli.d	$a5, $t7, 2
	or	$t6, $s2, $fp
	ld.d	$s7, $sp, 488                   # 8-byte Folded Reload
	stx.w	$s2, $s7, $a5
	beqz	$t6, .LBB0_126
# %bb.102:                              #   in Loop: Header=BB0_87 Depth=3
	beqz	$s2, .LBB0_127
# %bb.103:                              #   in Loop: Header=BB0_87 Depth=3
	bnez	$fp, .LBB0_86
	b	.LBB0_128
.LBB0_104:                              # %._crit_edge301.i
                                        #   in Loop: Header=BB0_71 Depth=2
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.w	$a3, $a0, 0
	ld.d	$t7, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a0, $s0, $t7, 2
	slli.d	$a4, $s0, 2
	stx.w	$a3, $t7, $a4
	ld.d	$t6, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a3, $s0, $t6, 2
	ld.d	$t2, $sp, 416                   # 8-byte Folded Reload
	stx.w	$t2, $t6, $a4
	addi.d	$a4, $zero, -3
	b	.LBB0_106
	.p2align	4, , 16
.LBB0_105:                              #   in Loop: Header=BB0_106 Depth=3
	addi.w	$a4, $a4, 1
	addi.d	$t4, $t4, 4
	beq	$a1, $a4, .LBB0_108
.LBB0_106:                              # %.lr.ph305.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t0, $t4, 0
	ld.w	$a5, $a0, 0
	bge	$t0, $a5, .LBB0_105
# %bb.107:                              #   in Loop: Header=BB0_106 Depth=3
	st.w	$t0, $a0, 0
	add.d	$a5, $t8, $a4
	addi.d	$a5, $a5, 2
	st.w	$a5, $a3, 0
	b	.LBB0_105
.LBB0_108:                              # %iter.check1074
                                        #   in Loop: Header=BB0_71 Depth=2
	beqz	$a2, .LBB0_113
# %bb.109:                              # %iter.check1074
                                        #   in Loop: Header=BB0_71 Depth=2
	ori	$a0, $zero, 64
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 344                   # 8-byte Folded Reload
	bltu	$a3, $a0, .LBB0_112
# %bb.110:                              # %vector.main.loop.iter.check1076
                                        #   in Loop: Header=BB0_71 Depth=2
	ori	$a0, $zero, 7
	bgeu	$a2, $a0, .LBB0_114
# %bb.111:                              #   in Loop: Header=BB0_71 Depth=2
	move	$a3, $zero
	ld.d	$t0, $sp, 480                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	b	.LBB0_118
.LBB0_112:                              #   in Loop: Header=BB0_71 Depth=2
	move	$a0, $t8
	b	.LBB0_121
.LBB0_113:                              #   in Loop: Header=BB0_71 Depth=2
	ld.d	$t8, $sp, 344                   # 8-byte Folded Reload
	move	$a0, $t8
	b	.LBB0_121
.LBB0_114:                              # %vector.ph1077
                                        #   in Loop: Header=BB0_71 Depth=2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	move	$a3, $a4
	bstrins.d	$a3, $zero, 3, 0
	.p2align	4, , 16
.LBB0_115:                              # %vector.body1080
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $t3, -32
	xvld	$xr1, $t3, 0
	xvst	$xr0, $a6, -32
	xvst	$xr1, $a6, 0
	addi.d	$t5, $t5, -16
	addi.d	$a6, $a6, 64
	addi.d	$t3, $t3, 64
	bnez	$t5, .LBB0_115
# %bb.116:                              # %vec.epilog.iter.check1090
                                        #   in Loop: Header=BB0_71 Depth=2
	andi	$a0, $a4, 12
	beqz	$a0, .LBB0_120
# %bb.117:                              #   in Loop: Header=BB0_71 Depth=2
	ld.d	$t0, $sp, 480                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 296                   # 8-byte Folded Reload
.LBB0_118:                              # %vec.epilog.ph1089
                                        #   in Loop: Header=BB0_71 Depth=2
	bstrins.d	$a4, $zero, 1, 0
	add.d	$a0, $a4, $t8
	ld.d	$a4, $sp, 312                   # 8-byte Folded Reload
	sub.d	$a4, $a3, $a4
	add.d	$a5, $a3, $t1
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$a3, $a5, $a3, 2
	ld.d	$a6, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$a6, $a5, $a6, 2
	.p2align	4, , 16
.LBB0_119:                              # %vec.epilog.vector.body1095
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a6, 0
	vst	$vr0, $a3, 0
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 16
	addi.d	$a6, $a6, 16
	bnez	$a4, .LBB0_119
	b	.LBB0_122
.LBB0_120:                              #   in Loop: Header=BB0_71 Depth=2
	add.d	$a0, $a3, $t8
.LBB0_121:                              # %.lr.ph308.i.preheader
                                        #   in Loop: Header=BB0_71 Depth=2
	ld.d	$t0, $sp, 480                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 296                   # 8-byte Folded Reload
.LBB0_122:                              # %.lr.ph308.i.preheader
                                        #   in Loop: Header=BB0_71 Depth=2
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$a3, $a0, $a3, 2
	ld.d	$a4, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 2
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_123:                              # %.lr.ph308.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a5, $a4, 0
	st.w	$a5, $a3, 0
	addi.w	$a0, $a0, 1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	bne	$a7, $a0, .LBB0_123
.LBB0_124:                              # %.loopexit.i
                                        #   in Loop: Header=BB0_71 Depth=2
	addi.d	$s0, $s0, 1
	addi.w	$a7, $a7, 1
	addi.d	$a2, $a2, 1
	ld.d	$a5, $sp, 424                   # 8-byte Folded Reload
	addi.d	$a5, $a5, -1
	addi.w	$a1, $a1, 2
	addi.w	$t1, $t1, -1
	addi.d	$ra, $ra, 2
	bne	$a2, $s3, .LBB0_71
# %bb.125:                              #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	b	.LBB0_130
.LBB0_126:                              #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s1, $s0
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ori	$s3, $zero, 2
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 360                   # 8-byte Folded Reload
	b	.LBB0_135
.LBB0_127:                              #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 360                   # 8-byte Folded Reload
	add.d	$a6, $fp, $a6
	move	$s1, $s0
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ori	$s3, $zero, 2
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 368                   # 8-byte Folded Reload
	b	.LBB0_135
.LBB0_128:                              #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 368                   # 8-byte Folded Reload
	add.d	$a5, $s2, $a5
	move	$s1, $s0
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ori	$s3, $zero, 2
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 360                   # 8-byte Folded Reload
	b	.LBB0_135
.LBB0_129:                              # %.critedge5.split.loop.exit366.i
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s1, $s0
.LBB0_130:                              # %.critedge5.i.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ori	$a3, $zero, 1
	ori	$s3, $zero, 2
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 360                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_131:                              # %.critedge5.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a0, $s1, 0
	alsl.d	$a1, $a0, $t7, 2
	slli.d	$a2, $a0, 2
	ld.w	$a1, $a1, -4
	ldx.w	$a2, $t7, $a2
	sub.w	$a1, $a1, $a2
	blt	$s3, $a1, .LBB0_134
# %bb.132:                              #   in Loop: Header=BB0_131 Depth=2
	addi.d	$s1, $s1, -1
	blt	$a3, $a0, .LBB0_131
# %bb.133:                              #   in Loop: Header=BB0_6 Depth=1
	move	$s1, $zero
.LBB0_134:                              # %.critedge15.i
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.w	$a0, $s1, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $t7, $a0
	ldx.w	$a0, $t6, $a0
	add.d	$fp, $a1, $a4
	sub.d	$a2, $a5, $t0
	add.d	$a1, $a2, $a1
	add.d	$s0, $a1, $a0
	move	$a0, $t7
	move	$s6, $t6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a6, $s0
	move	$a5, $fp
	ld.d	$t0, $sp, 432                   # 8-byte Folded Reload
.LBB0_135:                              # %extend_bw.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $t0, 4
	ld.d	$a2, $sp, 440                   # 8-byte Folded Reload
	ld.w	$a1, $a2, 56
	ld.w	$a2, $a2, 48
	nor	$a3, $a5, $zero
	add.d	$a0, $a0, $a3
	mul.d	$a0, $a0, $a1
	mul.d	$a1, $a2, $s1
	add.w	$a0, $a1, $a0
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	bltz	$a0, .LBB0_137
# %bb.136:                              #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a0, $a5, 1
	st.w	$a0, $t0, 4
	addi.d	$a0, $a6, 1
	st.w	$a0, $t0, 0
	.p2align	4, , 16
.LBB0_137:                              # %.thread564
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $s4, 40
	move	$a2, $s4
	bnez	$a0, .LBB0_238
# %bb.138:                              #   in Loop: Header=BB0_6 Depth=1
	ld.w	$s0, $a2, 16
	ld.d	$a0, $a2, 8
	addi.d	$a1, $s0, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	ldx.d	$s4, $a0, $a1
	ld.w	$a1, $s4, 12
	ldptr.w	$a0, $s2, 4148
	bgeu	$a1, $a0, .LBB0_238
# %bb.139:                              #   in Loop: Header=BB0_6 Depth=1
	sub.w	$a0, $a0, $a1
	ori	$a2, $zero, 61
	bltu	$a0, $a2, .LBB0_153
# %bb.140:                              #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s1, $sp, 456                   # 8-byte Folded Reload
	ld.w	$a2, $s1, 24
	ld.w	$a3, $s1, 28
	ld.w	$a4, $s4, 8
	add.w	$a2, $a3, $a2
	bgeu	$a4, $a2, .LBB0_153
# %bb.141:                              #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a2, $s6, 36
	bstrpick.d	$a1, $a1, 31, 0
	sltui	$a3, $a2, 10
	move	$s8, $s2
	ld.d	$a4, $s2, 16
	maskeqz	$a2, $a2, $a3
	ori	$a5, $zero, 10
	masknez	$a3, $a5, $a3
	or	$a2, $a2, $a3
	add.d	$a1, $a4, $a1
	st.w	$a2, $sp, 532
	st.d	$a1, $sp, 504
	st.w	$a0, $sp, 512
	slli.d	$a1, $a2, 1
	addi.d	$a1, $a1, -2
	bstrpick.d	$a1, $a1, 31, 1
	slli.d	$a1, $a1, 1
	addi.d	$a2, $zero, -1
	sll.w	$a1, $a2, $a1
	nor	$a1, $a1, $zero
	st.w	$a1, $sp, 528
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $sp, 520
	ori	$a1, $zero, 8
	lu12i.w	$a0, 128
	pcaddu18i	$ra, %call36(xcalloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$a0, $sp, 496
	addi.d	$a0, $sp, 496
	pcaddu18i	$ra, %call36(bld_table)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 8
	ld.wu	$a4, $s4, 8
	ld.w	$a2, $s1, 24
	add.d	$a1, $a0, $a4
	ld.w	$a0, $s1, 28
	ld.w	$a3, $s4, 12
	sub.d	$a2, $a2, $a4
	ld.d	$a5, $sp, 440                   # 8-byte Folded Reload
	ld.w	$a5, $a5, 24
	add.w	$a2, $a2, $a0
	addi.w	$a3, $a3, 1
	addi.w	$a4, $a4, 1
	addi.d	$a0, $sp, 496
	addi.d	$a6, $sp, 552
	addi.d	$a7, $sp, 536
	st.d	$a7, $sp, 0
	move	$a7, $zero
	pcaddu18i	$ra, %call36(exon_cores)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	lu12i.w	$s2, 1024
	.p2align	4, , 16
.LBB0_142:                              #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a0, $fp, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(tdestroy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	bne	$s0, $s2, .LBB0_142
# %bb.143:                              # %free_hash_env.exit372
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.wu	$a2, $sp, 544
	beqz	$a2, .LBB0_230
# %bb.144:                              # %.lr.ph.preheader.i374
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 536
	move	$a1, $zero
	slli.d	$a2, $a2, 3
	move	$s2, $s8
	.p2align	4, , 16
.LBB0_145:                              # %.lr.ph.i376
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a3, $a0, $a1
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a3, 8
	rotri.d	$a4, $a4, 32
	st.d	$a4, $a3, 0
	rotri.d	$a4, $a5, 32
	addi.d	$a1, $a1, 8
	st.d	$a4, $a3, 8
	bne	$a2, $a1, .LBB0_145
# %bb.146:                              # %swap_seqs.exit381
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $a0, 0
	ld.d	$a1, $s6, 8
	ld.wu	$a7, $a0, 0
	add.d	$a2, $a1, $a7
	addi.d	$a3, $a2, -2
	ld.d	$fp, $sp, 456                   # 8-byte Folded Reload
	bltu	$a3, $a1, .LBB0_152
# %bb.147:                              # %swap_seqs.exit381
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a3, $s2, 16
	ld.wu	$a6, $a0, 4
	add.d	$a4, $a3, $a6
	addi.d	$a5, $a4, -2
	bltu	$a5, $a3, .LBB0_152
# %bb.148:                              # %.lr.ph.i382.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$a5, $zero
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, -1
	.p2align	4, , 16
.LBB0_149:                              # %.lr.ph.i382
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $a4, $a5
	add.d	$t1, $a2, $a5
	ld.bu	$t2, $t1, -2
	ld.bu	$t3, $t0, -2
	bne	$t2, $t3, .LBB0_152
# %bb.150:                              #   in Loop: Header=BB0_149 Depth=2
	addi.d	$t1, $t1, -3
	st.w	$a7, $a0, 0
	st.w	$a6, $a0, 4
	bltu	$t1, $a1, .LBB0_152
# %bb.151:                              #   in Loop: Header=BB0_149 Depth=2
	addi.d	$t0, $t0, -3
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, -1
	addi.d	$a5, $a5, -1
	bgeu	$t0, $a3, .LBB0_149
.LBB0_152:                              # %grow_exon_left.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a2, $fp, 16
	ld.w	$a3, $s6, 36
	addi.d	$a1, $sp, 536
	move	$a0, $s5
	pcaddu18i	$ra, %call36(merge)
	jirl	$ra, $ra, 0
	ld.w	$s0, $fp, 16
	ld.d	$a0, $fp, 8
	addi.d	$a1, $s0, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	ldx.d	$s4, $a0, $a1
	st.w	$zero, $sp, 544
.LBB0_153:                              #   in Loop: Header=BB0_6 Depth=1
	beqz	$s0, .LBB0_165
.LBB0_154:                              # %.lr.ph675
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$a0, $s2
	ld.d	$s2, $s5, 0
	move	$s8, $a0
	ld.d	$fp, $a0, 16
	move	$s1, $zero
	bstrpick.d	$s3, $s0, 31, 0
	addi.w	$s5, $s0, -1
	.p2align	4, , 16
.LBB0_155:                              #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a0, $s5, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s2, $a0
	ld.w	$a1, $a0, 12
	ld.w	$a0, $a0, 4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(is_polyAT_exon_p)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_158
# %bb.156:                              #   in Loop: Header=BB0_155 Depth=2
	addi.w	$s1, $s1, 1
	addi.d	$s3, $s3, -1
	addi.w	$s5, $s5, -1
	bnez	$s3, .LBB0_155
# %bb.157:                              #   in Loop: Header=BB0_6 Depth=1
	move	$s1, $s0
.LBB0_158:                              # %.critedge7
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$s3, $zero, 2
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	move	$s2, $s8
	beqz	$s1, .LBB0_165
# %bb.159:                              #   in Loop: Header=BB0_6 Depth=1
	sub.w	$a0, $s0, $s1
	bgeu	$s0, $s1, .LBB0_161
# %bb.160:                              #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	addi.w	$a1, $s0, 0
	st.w	$a0, $s4, 16
	beq	$a1, $s1, .LBB0_5
	b	.LBB0_164
.LBB0_161:                              # %.lr.ph682.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	bstrpick.d	$fp, $a0, 31, 0
	slli.d	$s2, $fp, 3
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_162:                              # %.lr.ph682
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s4, 8
	ldx.d	$a0, $a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.wu	$s0, $s4, 16
	addi.d	$fp, $fp, 1
	addi.d	$s2, $s2, 8
	bltu	$fp, $s0, .LBB0_162
# %bb.163:                              # %._crit_edge.loopexit
                                        #   in Loop: Header=BB0_6 Depth=1
	sub.w	$a0, $s0, $s1
	move	$s2, $s8
	addi.w	$a1, $s0, 0
	st.w	$a0, $s4, 16
	beq	$a1, $s1, .LBB0_5
.LBB0_164:                              #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a1, $s5, 0
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$s4, $a1, $a0
.LBB0_165:                              # %.critedge7.thread
                                        #   in Loop: Header=BB0_6 Depth=1
	ldptr.w	$a0, $s2, 4148
	ld.w	$a6, $s4, 12
	ld.d	$a2, $sp, 456                   # 8-byte Folded Reload
	beq	$a0, $a6, .LBB0_238
# %bb.166:                              #   in Loop: Header=BB0_6 Depth=1
	sub.w	$a0, $a0, $a6
	sltui	$a1, $a0, 250
	maskeqz	$a0, $a0, $a1
	ori	$a2, $zero, 250
	masknez	$a1, $a2, $a1
	or	$s3, $a0, $a1
	ld.wu	$a7, $s4, 8
	ld.w	$a0, $s6, 16
	ld.d	$t1, $s2, 16
	ld.d	$a1, $s6, 8
	slli.d	$s5, $s3, 2
	sub.w	$a0, $a0, $a7
	slt	$a2, $s5, $a0
	maskeqz	$a3, $s5, $a2
	masknez	$a2, $a0, $a2
	ld.w	$t3, $s6, 36
	or	$t0, $a3, $a2
	bstrpick.d	$t2, $a6, 31, 0
	add.d	$s7, $a1, $a7
	move	$s6, $zero
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_173
# %bb.167:                              # %.lr.ph.preheader.i411
                                        #   in Loop: Header=BB0_6 Depth=1
	add.d	$a0, $t1, $t2
	addi.w	$a1, $t0, -1
	addi.w	$a2, $s3, -1
	sltu	$a3, $a1, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	addi.w	$a1, $a1, 1
	bstrpick.d	$a2, $a1, 31, 0
	sub.d	$a2, $zero, $a2
	move	$a3, $s7
	.p2align	4, , 16
.LBB0_168:                              # %.lr.ph.i413
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a4, $a0, 0
	ld.bu	$a5, $a3, 0
	bne	$a4, $a5, .LBB0_171
# %bb.169:                              #   in Loop: Header=BB0_168 Depth=2
	addi.w	$s6, $s6, 1
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 1
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB0_168
# %bb.170:                              #   in Loop: Header=BB0_6 Depth=1
	move	$s6, $a1
.LBB0_171:                              # %.critedge.i415
                                        #   in Loop: Header=BB0_6 Depth=1
	bne	$s6, $s3, .LBB0_173
# %bb.172:                              #   in Loop: Header=BB0_6 Depth=1
	move	$s5, $zero
	add.d	$fp, $a7, $s3
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 440                   # 8-byte Folded Reload
	b	.LBB0_236
.LBB0_173:                              # %.critedge.thread.i
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.w	$s8, $t0, 0
	bne	$s6, $s8, .LBB0_175
# %bb.174:                              #   in Loop: Header=BB0_6 Depth=1
	move	$s5, $zero
	add.d	$fp, $t0, $a7
	move	$s3, $t0
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 440                   # 8-byte Folded Reload
	b	.LBB0_236
.LBB0_175:                              #   in Loop: Header=BB0_6 Depth=1
	st.d	$t3, $sp, 464                   # 8-byte Folded Spill
	st.d	$t2, $sp, 472                   # 8-byte Folded Spill
	st.d	$t1, $sp, 480                   # 8-byte Folded Spill
	st.d	$a7, $sp, 360                   # 8-byte Folded Spill
	st.d	$a6, $sp, 368                   # 8-byte Folded Spill
	st.d	$t0, $sp, 352                   # 8-byte Folded Spill
	add.w	$s2, $t0, $s3
	addi.w	$a0, $s2, 1
	slli.d	$s1, $a0, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	bltz	$s2, .LBB0_177
# %bb.176:                              # %.lr.ph276.preheader.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a1, $zero, 255
	move	$a0, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_177:                              # %._crit_edge.i386
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.w	$s0, $s3, 1
	alsl.d	$a0, $s3, $fp, 2
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	stx.w	$s6, $fp, $s5
	slli.w	$s1, $s0, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.d	$a0, $s2, 4
	ori	$a1, $zero, 255
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	ldx.w	$a1, $fp, $s5
	move	$t3, $zero
	st.w	$a1, $s2, 0
	st.d	$s1, $sp, 416                   # 8-byte Folded Spill
	st.w	$s3, $s1, 0
	ld.d	$a2, $sp, 464                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a2, 31, 31
	add.w	$a1, $a2, $a1
	srai.d	$t2, $a1, 1
	slli.w	$t6, $a2, 1
	addi.d	$t8, $fp, -4
	addi.d	$a1, $fp, 4
	st.d	$a1, $sp, 384                   # 8-byte Folded Spill
	addi.d	$s5, $s3, 2
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	sub.d	$a2, $fp, $a1
	st.d	$a2, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	st.d	$a2, $sp, 376                   # 8-byte Folded Spill
	addi.d	$a7, $s3, -1
	addi.d	$a6, $zero, -1
	alsl.d	$a1, $s3, $a1, 2
	addi.d	$t1, $a1, -4
	addi.d	$a1, $a1, 28
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	addi.d	$t0, $a2, 28
	alsl.d	$t4, $s3, $t8, 2
	ori	$s1, $zero, 1
	ori	$t5, $zero, 3
	ori	$a4, $zero, 2
	move	$t7, $s5
	st.d	$s3, $sp, 480                   # 8-byte Folded Spill
	st.d	$s3, $sp, 472                   # 8-byte Folded Spill
	st.d	$s0, $sp, 392                   # 8-byte Folded Spill
	move	$a5, $s0
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	ori	$s0, $zero, 1
	st.d	$fp, $sp, 464                   # 8-byte Folded Spill
	move	$fp, $a1
	st.d	$s2, $sp, 400                   # 8-byte Folded Spill
	st.d	$t2, $sp, 312                   # 8-byte Folded Spill
	st.d	$t6, $sp, 304                   # 8-byte Folded Spill
	st.d	$t8, $sp, 296                   # 8-byte Folded Spill
.LBB0_178:                              #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_193 Depth 3
                                        #         Child Loop BB0_205 Depth 4
                                        #       Child Loop BB0_216 Depth 3
                                        #       Child Loop BB0_223 Depth 3
                                        #       Child Loop BB0_226 Depth 3
                                        #       Child Loop BB0_228 Depth 3
	slli.d	$a1, $t3, 2
	ldx.w	$a1, $a0, $a1
	ori	$a2, $zero, 2
	bge	$t2, $a1, .LBB0_181
# %bb.179:                              #   in Loop: Header=BB0_178 Depth=2
	bge	$a1, $t6, .LBB0_186
# %bb.180:                              #   in Loop: Header=BB0_178 Depth=2
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	ld.w	$a2, $a1, 28
.LBB0_181:                              # %good_ratio.exit.i391
                                        #   in Loop: Header=BB0_178 Depth=2
	bge	$a2, $t3, .LBB0_189
.LBB0_182:                              #   in Loop: Header=BB0_178 Depth=2
	beqz	$t3, .LBB0_628
# %bb.183:                              #   in Loop: Header=BB0_178 Depth=2
	addi.d	$a1, $t3, -1
	slli.d	$a2, $a1, 2
	ldx.w	$a2, $a0, $a2
	ori	$a3, $zero, 2
	bge	$t2, $a2, .LBB0_188
# %bb.184:                              #   in Loop: Header=BB0_178 Depth=2
	bge	$a2, $t6, .LBB0_187
# %bb.185:                              #   in Loop: Header=BB0_178 Depth=2
	ld.d	$a2, $sp, 440                   # 8-byte Folded Reload
	ld.w	$a3, $a2, 28
	b	.LBB0_188
.LBB0_186:                              #   in Loop: Header=BB0_178 Depth=2
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI0_0)
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	vldi	$vr2, -912
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	blt	$a2, $t3, .LBB0_182
	b	.LBB0_189
.LBB0_187:                              #   in Loop: Header=BB0_178 Depth=2
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a3, %pc_lo12(.LCPI0_0)
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	vldi	$vr2, -912
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a3, $fa0
.LBB0_188:                              # %good_ratio.exit258.i
                                        #   in Loop: Header=BB0_178 Depth=2
	blt	$a3, $a1, .LBB0_628
.LBB0_189:                              # %.critedge4.i
                                        #   in Loop: Header=BB0_178 Depth=2
	st.d	$t0, $sp, 432                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	addi.w	$a1, $a1, -1
	ld.d	$a2, $sp, 480                   # 8-byte Folded Reload
	addi.d	$a2, $a2, -1
	st.d	$a1, $sp, 472                   # 8-byte Folded Spill
	st.d	$a2, $sp, 480                   # 8-byte Folded Spill
	bge	$a5, $a1, .LBB0_192
# %bb.190:                              # %._crit_edge292.thread.i
                                        #   in Loop: Header=BB0_178 Depth=2
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	slli.d	$a2, $s1, 2
	stx.w	$a1, $a0, $a2
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	stx.w	$s3, $a1, $a2
.LBB0_191:                              # %._crit_edge300.i
                                        #   in Loop: Header=BB0_178 Depth=2
	addi.w	$a5, $a5, 1
	addi.d	$s1, $s1, 1
	addi.d	$t7, $t7, 1
	addi.d	$t3, $t3, 1
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, -1
	addi.d	$t5, $t5, 2
	addi.d	$t1, $t1, -4
	addi.d	$a4, $a4, 2
	addi.d	$fp, $fp, -4
	ld.d	$t0, $sp, 432                   # 8-byte Folded Reload
	addi.d	$t0, $t0, -4
	addi.d	$t4, $t4, -4
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	bne	$t3, $a1, .LBB0_178
	b	.LBB0_629
.LBB0_192:                              # %.lr.ph291.i393
                                        #   in Loop: Header=BB0_178 Depth=2
	st.d	$fp, $sp, 344                   # 8-byte Folded Spill
	move	$a0, $a4
	bstrins.d	$a0, $zero, 1, 0
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	move	$t6, $a4
	bstrins.d	$t6, $zero, 3, 0
	slli.d	$a1, $t3, 1
	addi.d	$a0, $a1, 3
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	nor	$a1, $t3, $zero
	add.d	$fp, $a1, $s3
	add.d	$s0, $s1, $s3
	alsl.d	$a0, $s0, $t8, 2
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a3, $fp, $a0, 2
	move	$t0, $a6
	move	$t8, $a2
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_193:                              #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_178 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_205 Depth 4
	slli.d	$a2, $t8, 2
	bne	$t8, $fp, .LBB0_195
# %bb.194:                              #   in Loop: Header=BB0_193 Depth=3
	ld.w	$a1, $a3, 0
	addi.w	$s6, $a1, 1
	b	.LBB0_201
	.p2align	4, , 16
.LBB0_195:                              #   in Loop: Header=BB0_193 Depth=3
	bne	$t8, $s0, .LBB0_197
# %bb.196:                              #   in Loop: Header=BB0_193 Depth=3
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	ld.w	$s6, $a1, 0
	b	.LBB0_201
	.p2align	4, , 16
.LBB0_197:                              #   in Loop: Header=BB0_193 Depth=3
	ld.d	$t2, $sp, 464                   # 8-byte Folded Reload
	alsl.d	$a1, $t8, $t2, 2
	ldx.w	$s2, $t2, $a2
	ld.w	$ra, $a1, 4
	bge	$s2, $ra, .LBB0_199
# %bb.198:                              # %._crit_edge355.i
                                        #   in Loop: Header=BB0_193 Depth=3
	ld.w	$a1, $a1, -4
	b	.LBB0_200
.LBB0_199:                              #   in Loop: Header=BB0_193 Depth=3
	ld.w	$a1, $a1, -4
	addi.w	$s6, $s2, 1
	bge	$s6, $a1, .LBB0_201
.LBB0_200:                              #   in Loop: Header=BB0_193 Depth=3
	addi.w	$s6, $ra, 1
	slt	$s2, $ra, $s2
	slt	$ra, $a1, $s6
	masknez	$t2, $a1, $ra
	maskeqz	$s6, $s6, $ra
	or	$t2, $s6, $t2
	masknez	$t2, $t2, $s2
	maskeqz	$a1, $a1, $s2
	or	$s6, $a1, $t2
	.p2align	4, , 16
.LBB0_201:                              #   in Loop: Header=BB0_193 Depth=3
	sub.d	$a1, $t8, $s3
	add.w	$s2, $s6, $a1
	bltz	$s6, .LBB0_209
# %bb.202:                              # %.preheader.i402
                                        #   in Loop: Header=BB0_193 Depth=3
	bge	$s6, $s3, .LBB0_209
# %bb.203:                              # %.preheader.i402
                                        #   in Loop: Header=BB0_193 Depth=3
	bge	$s2, $s8, .LBB0_209
# %bb.204:                              # %.lr.ph281.preheader.i403
                                        #   in Loop: Header=BB0_193 Depth=3
	add.w	$s2, $s6, $t0
	bstrpick.d	$a1, $s6, 31, 0
	add.d	$ra, $a0, $a1
	.p2align	4, , 16
.LBB0_205:                              # %.lr.ph281.i404
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_178 Depth=2
                                        #       Parent Loop BB0_193 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$a1, $ra, 0
	ldx.bu	$t2, $s7, $s2
	bne	$a1, $t2, .LBB0_208
# %bb.206:                              #   in Loop: Header=BB0_205 Depth=4
	addi.w	$s6, $s6, 1
	bge	$s6, $s3, .LBB0_208
# %bb.207:                              #   in Loop: Header=BB0_205 Depth=4
	addi.d	$s2, $s2, 1
	addi.d	$ra, $ra, 1
	blt	$s2, $s8, .LBB0_205
.LBB0_208:                              # %.critedge6.i.loopexit
                                        #   in Loop: Header=BB0_193 Depth=3
	add.w	$s2, $t0, $s6
.LBB0_209:                              # %.critedge6.i
                                        #   in Loop: Header=BB0_193 Depth=3
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	stx.w	$s6, $a1, $a2
	bne	$s6, $s3, .LBB0_211
# %bb.210:                              # %.critedge6.i
                                        #   in Loop: Header=BB0_193 Depth=3
	beq	$s2, $s8, .LBB0_231
.LBB0_211:                              #   in Loop: Header=BB0_193 Depth=3
	beq	$s6, $s3, .LBB0_232
# %bb.212:                              #   in Loop: Header=BB0_193 Depth=3
	beq	$s2, $s8, .LBB0_233
# %bb.213:                              #   in Loop: Header=BB0_193 Depth=3
	addi.d	$t8, $t8, 1
	addi.d	$t0, $t0, 1
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	bne	$t8, $t7, .LBB0_193
# %bb.214:                              # %._crit_edge292.i
                                        #   in Loop: Header=BB0_178 Depth=2
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a1, $s1, $a0, 2
	slli.d	$a3, $s1, 2
	stx.w	$a2, $a0, $a3
	ld.d	$t0, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a2, $s1, $t0, 2
	stx.w	$s3, $t0, $a3
	move	$a3, $t1
	move	$t0, $t5
	move	$t8, $a7
	ori	$s0, $zero, 1
	ld.d	$s2, $sp, 464                   # 8-byte Folded Reload
	b	.LBB0_216
	.p2align	4, , 16
.LBB0_215:                              #   in Loop: Header=BB0_216 Depth=3
	addi.d	$t8, $t8, 1
	addi.d	$t0, $t0, -1
	addi.d	$a3, $a3, 4
	beqz	$t0, .LBB0_218
.LBB0_216:                              # %.lr.ph296.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_178 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$fp, $a3, 0
	ld.w	$t2, $a1, 0
	bge	$t2, $fp, .LBB0_215
# %bb.217:                              #   in Loop: Header=BB0_216 Depth=3
	st.w	$fp, $a1, 0
	st.w	$t8, $a2, 0
	b	.LBB0_215
.LBB0_218:                              # %iter.check1039
                                        #   in Loop: Header=BB0_178 Depth=2
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 344                   # 8-byte Folded Reload
	beqz	$t3, .LBB0_227
# %bb.219:                              # %iter.check1039
                                        #   in Loop: Header=BB0_178 Depth=2
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	ori	$a2, $zero, 64
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	bltu	$a0, $a2, .LBB0_227
# %bb.220:                              # %vector.main.loop.iter.check1041
                                        #   in Loop: Header=BB0_178 Depth=2
	ori	$a1, $zero, 7
	bgeu	$t3, $a1, .LBB0_222
# %bb.221:                              #   in Loop: Header=BB0_178 Depth=2
	move	$a2, $zero
	ld.d	$t0, $sp, 336                   # 8-byte Folded Reload
	b	.LBB0_225
.LBB0_222:                              # %vector.ph1042
                                        #   in Loop: Header=BB0_178 Depth=2
	ld.d	$t0, $sp, 336                   # 8-byte Folded Reload
	move	$a2, $t0
	bstrins.d	$a2, $zero, 3, 0
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	move	$a3, $fp
	.p2align	4, , 16
.LBB0_223:                              # %vector.body1045
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_178 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$t6, $t6, -16
	addi.d	$a3, $a3, 64
	addi.d	$a1, $a1, 64
	bnez	$t6, .LBB0_223
# %bb.224:                              # %vec.epilog.iter.check1055
                                        #   in Loop: Header=BB0_178 Depth=2
	andi	$a1, $t0, 12
	beqz	$a1, .LBB0_229
.LBB0_225:                              # %vec.epilog.ph1054
                                        #   in Loop: Header=BB0_178 Depth=2
	bstrins.d	$t0, $zero, 1, 0
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	add.d	$a1, $a0, $t0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	sub.d	$a3, $a2, $a0
	slli.d	$a2, $a2, 2
	.p2align	4, , 16
.LBB0_226:                              # %vec.epilog.vector.body1060
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_178 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vldx	$vr0, $t1, $a2
	vstx	$vr0, $t4, $a2
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 16
	bnez	$a3, .LBB0_226
.LBB0_227:                              # %.lr.ph299.i.preheader
                                        #   in Loop: Header=BB0_178 Depth=2
	alsl.d	$a2, $a1, $s2, 2
	ld.d	$a3, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a3, 2
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 304                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_228:                              # %.lr.ph299.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_178 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t0, $a3, 0
	st.w	$t0, $a2, 0
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bne	$t7, $a1, .LBB0_228
	b	.LBB0_191
.LBB0_229:                              #   in Loop: Header=BB0_178 Depth=2
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a2
	b	.LBB0_227
.LBB0_230:                              # %free_hash_env.exit372._crit_edge
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	ld.w	$s0, $a0, 16
	move	$s2, $s8
	bnez	$s0, .LBB0_154
	b	.LBB0_165
.LBB0_231:                              #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	add.d	$fp, $a1, $a0
	b	.LBB0_234
.LBB0_232:                              #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	add.d	$fp, $s2, $a0
	b	.LBB0_234
.LBB0_233:                              #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	add.d	$fp, $a1, $a0
	move	$s3, $s6
.LBB0_234:                              # %extend_fw.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s5, $s1
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 440                   # 8-byte Folded Reload
.LBB0_235:                              # %extend_fw.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a6, $sp, 368                   # 8-byte Folded Reload
.LBB0_236:                              # %extend_fw.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a1, $s4, 12
	ld.w	$a2, $s1, 56
	ld.w	$a3, $s1, 48
	add.d	$a0, $s3, $a6
	sub.d	$a1, $a0, $a1
	mul.d	$a1, $a1, $a2
	mul.d	$a2, $a3, $s5
	add.w	$a1, $a2, $a1
	ori	$s3, $zero, 2
	ld.d	$a2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	bltz	$a1, .LBB0_238
# %bb.237:                              #   in Loop: Header=BB0_6 Depth=1
	st.w	$a0, $s4, 12
	st.w	$fp, $s4, 8
	.p2align	4, , 16
.LBB0_238:                              # %.thread571
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $a2, 16
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	ori	$s0, $zero, 1
	move	$s4, $a2
	bltu	$a0, $s3, .LBB0_430
# %bb.239:                              # %.lr.ph685.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a5, $zero, 1
	b	.LBB0_242
	.p2align	4, , 16
.LBB0_240:                              #   in Loop: Header=BB0_242 Depth=2
	ori	$s3, $zero, 2
.LBB0_241:                              #   in Loop: Header=BB0_242 Depth=2
	addi.w	$a5, $a5, 1
	bgeu	$a5, $a0, .LBB0_430
.LBB0_242:                              # %.lr.ph685
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_251 Depth 3
                                        #       Child Loop BB0_271 Depth 3
                                        #       Child Loop BB0_275 Depth 3
                                        #       Child Loop BB0_278 Depth 3
                                        #       Child Loop BB0_281 Depth 3
                                        #       Child Loop BB0_294 Depth 3
                                        #       Child Loop BB0_298 Depth 3
                                        #       Child Loop BB0_301 Depth 3
                                        #       Child Loop BB0_356 Depth 3
                                        #       Child Loop BB0_361 Depth 3
                                        #       Child Loop BB0_365 Depth 3
                                        #       Child Loop BB0_369 Depth 3
                                        #         Child Loop BB0_384 Depth 4
                                        #           Child Loop BB0_394 Depth 5
                                        #         Child Loop BB0_417 Depth 4
                                        #         Child Loop BB0_374 Depth 4
                                        #         Child Loop BB0_400 Depth 4
                                        #           Child Loop BB0_412 Depth 5
                                        #         Child Loop BB0_421 Depth 4
                                        #         Child Loop BB0_426 Depth 4
                                        #       Child Loop BB0_346 Depth 3
                                        #       Child Loop BB0_351 Depth 3
                                        #       Child Loop BB0_325 Depth 3
                                        #       Child Loop BB0_330 Depth 3
                                        #       Child Loop BB0_335 Depth 3
	ld.d	$a1, $s5, 0
	addi.w	$a3, $a5, -1
	bstrpick.d	$a2, $a3, 31, 0
	slli.d	$a2, $a2, 3
	ldx.d	$s1, $a1, $a2
	bstrpick.d	$a2, $a5, 31, 0
	slli.d	$a2, $a2, 3
	ldx.d	$a6, $a1, $a2
	ld.wu	$t2, $s1, 12
	ld.w	$t1, $a6, 4
	nor	$a1, $t2, $zero
	add.w	$s7, $t1, $a1
	blt	$s7, $s0, .LBB0_241
# %bb.243:                              #   in Loop: Header=BB0_242 Depth=2
	ori	$a4, $zero, 2
	ld.w	$t6, $a6, 0
	ld.w	$t3, $s1, 8
	addi.w	$t0, $t6, -1
	bgeu	$t3, $t0, .LBB0_240
# %bb.244:                              #   in Loop: Header=BB0_242 Depth=2
	st.d	$a3, $sp, 232                   # 8-byte Folded Spill
	ld.w	$a3, $s6, 36
	ld.d	$a0, $s6, 8
	ori	$a1, $zero, 500
	st.d	$a5, $sp, 280                   # 8-byte Folded Spill
	bltu	$a1, $s7, .LBB0_247
# %bb.245:                              #   in Loop: Header=BB0_242 Depth=2
	nor	$a1, $t3, $zero
	add.w	$fp, $t6, $a1
	bstrpick.d	$a7, $s7, 31, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	bgeu	$a1, $fp, .LBB0_248
# %bb.246:                              #   in Loop: Header=BB0_242 Depth=2
	move	$s8, $zero
	ori	$s3, $zero, 2
	b	.LBB0_322
.LBB0_247:                              #   in Loop: Header=BB0_242 Depth=2
	ori	$s3, $zero, 2
	b	.LBB0_324
.LBB0_248:                              #   in Loop: Header=BB0_242 Depth=2
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	fld.d	$fs1, $a1, %pc_lo12(.LCPI0_1)
	sub.w	$t5, $fp, $s7
	movgr2fr.d	$fa0, $a7
	ffint.d.l	$fa0, $fa0
	vldi	$vr1, -912
	fmadd.d	$fa1, $fa0, $fs1, $fa1
	ftintrz.l.d	$fa1, $fa1
	movfr2gr.d	$a1, $fa1
	addi.w	$a1, $a1, 0
	sltu	$a2, $a1, $a3
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	addi.w	$t4, $zero, -1
	or	$a1, $a2, $a1
	st.d	$a1, $sp, 464                   # 8-byte Folded Spill
	st.d	$t4, $sp, 400                   # 8-byte Folded Spill
	bge	$t4, $t5, .LBB0_259
# %bb.249:                              #   in Loop: Header=BB0_242 Depth=2
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	move	$s8, $s2
	ld.d	$a1, $s2, 16
	bstrpick.d	$a2, $t3, 31, 0
	add.d	$s6, $a1, $t2
	add.d	$s1, $a0, $a2
	addi.d	$s4, $s6, -1
	addi.d	$s2, $s1, -1
	move	$s5, $s7
	st.d	$a6, $sp, 128                   # 8-byte Folded Spill
	st.d	$a7, $sp, 120                   # 8-byte Folded Spill
	beqz	$fp, .LBB0_262
# %bb.250:                              # %.lr.ph.i419.preheader
                                        #   in Loop: Header=BB0_242 Depth=2
	move	$a0, $fp
	move	$s5, $s7
	.p2align	4, , 16
.LBB0_251:                              # %.lr.ph.i419
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a1, $s5
	ldx.bu	$a2, $s4, $s5
	ldx.bu	$a3, $s2, $a0
	bne	$a2, $a3, .LBB0_261
# %bb.252:                              #   in Loop: Header=BB0_251 Depth=3
	addi.w	$s5, $a1, -1
	blt	$a0, $a4, .LBB0_254
# %bb.253:                              #   in Loop: Header=BB0_251 Depth=3
	addi.w	$a0, $a0, -1
	bne	$a1, $s0, .LBB0_251
.LBB0_254:                              # %.critedge.i438
                                        #   in Loop: Header=BB0_242 Depth=2
	bnez	$s5, .LBB0_262
# %bb.255:                              #   in Loop: Header=BB0_242 Depth=2
	add.d	$a0, $t3, $t5
	addi.d	$s0, $a0, 1
	addi.d	$s1, $t2, 1
	addi.d	$s2, $t1, -1
	ori	$a0, $zero, 32
	move	$s3, $t0
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.w	$s0, $a0, 0
	ld.w	$a1, $sp, 548
	ld.w	$s0, $sp, 544
	ld.d	$a0, $sp, 536
	st.w	$s1, $fp, 4
	st.w	$s3, $fp, 8
	st.w	$s2, $fp, 12
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	bltu	$s0, $a1, .LBB0_257
# %bb.256:                              #   in Loop: Header=BB0_242 Depth=2
	addi.d	$a1, $a1, 5
	st.w	$a1, $sp, 548
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(xrealloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 536
.LBB0_257:                              # %add_col_elt.exit508.i
                                        #   in Loop: Header=BB0_242 Depth=2
	ori	$s3, $zero, 2
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	move	$s2, $s8
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	bstrpick.d	$a2, $s0, 31, 0
	addi.w	$a1, $s0, 1
	st.w	$a1, $sp, 544
	slli.d	$a2, $a2, 3
	stx.d	$fp, $a0, $a2
	fmov.d	$fa0, $fs0
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a3, $s6, 36
	bnez	$a1, .LBB0_323
.LBB0_258:                              # %greedy.exit..thread575_crit_edge
                                        #   in Loop: Header=BB0_242 Depth=2
	ld.d	$a0, $s6, 8
	b	.LBB0_324
.LBB0_259:                              #   in Loop: Header=BB0_242 Depth=2
	bstrpick.d	$a0, $a3, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_2)
	bstrpick.d	$a0, $fp, 31, 0
	movgr2fr.d	$fa3, $a0
	ffint.d.l	$fs2, $fa3
	fmul.d	$fa2, $fs2, $fa2
	fcmp.clt.d	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa1, $fa2, $fcc0
	fcmp.cult.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB0_266
# %bb.260:                              #   in Loop: Header=BB0_242 Depth=2
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	addi.w	$s8, $a0, 1
	ori	$s3, $zero, 2
	b	.LBB0_322
.LBB0_261:                              #   in Loop: Header=BB0_242 Depth=2
	move	$s5, $a1
.LBB0_262:                              # %iter.check1005
                                        #   in Loop: Header=BB0_242 Depth=2
	st.d	$t6, $sp, 416                   # 8-byte Folded Spill
	st.d	$t5, $sp, 480                   # 8-byte Folded Spill
	st.d	$t3, $sp, 136                   # 8-byte Folded Spill
	st.d	$t0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	add.d	$a0, $a0, $fp
	addi.w	$s0, $a0, 0
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$s3, $a0, 2
	move	$a0, $s3
	st.d	$t1, $sp, 104                   # 8-byte Folded Spill
	st.d	$t2, $sp, 144                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	st.d	$s3, $sp, 472                   # 8-byte Folded Spill
	move	$a0, $s3
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	move	$a4, $a0
	move	$a0, $zero
	sub.d	$a1, $a6, $a7
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	bstrpick.d	$t1, $s0, 31, 0
	addi.d	$t2, $t1, 1
	ori	$a1, $zero, 3
	bltu	$s0, $a1, .LBB0_269
# %bb.263:                              # %iter.check1005
                                        #   in Loop: Header=BB0_242 Depth=2
	sub.d	$a1, $a4, $s8
	ori	$a2, $zero, 64
	ld.d	$t0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	bltu	$a1, $a2, .LBB0_277
# %bb.264:                              # %vector.main.loop.iter.check1007
                                        #   in Loop: Header=BB0_242 Depth=2
	ori	$a0, $zero, 15
	bgeu	$s0, $a0, .LBB0_270
# %bb.265:                              #   in Loop: Header=BB0_242 Depth=2
	move	$a0, $zero
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	b	.LBB0_274
.LBB0_266:                              #   in Loop: Header=BB0_242 Depth=2
	st.d	$a7, $sp, 120                   # 8-byte Folded Spill
	st.d	$a6, $sp, 128                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	addi.d	$s1, $t3, 1
	addi.d	$s2, $t2, 1
	addi.d	$s3, $t1, -1
	ori	$a0, $zero, 32
	move	$s8, $t0
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.w	$s1, $a0, 0
	ld.w	$a1, $sp, 548
	ld.w	$s1, $sp, 544
	ld.d	$a0, $sp, 536
	st.w	$s2, $s0, 4
	st.w	$s8, $s0, 8
	st.w	$s3, $s0, 12
	bltu	$s1, $a1, .LBB0_268
# %bb.267:                              #   in Loop: Header=BB0_242 Depth=2
	addi.d	$a1, $a1, 5
	st.w	$a1, $sp, 548
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(xrealloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 536
.LBB0_268:                              # %add_col_elt.exit.i
                                        #   in Loop: Header=BB0_242 Depth=2
	ori	$s3, $zero, 2
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	bstrpick.d	$a1, $s1, 31, 0
	addi.d	$a2, $s1, 1
	st.w	$a2, $sp, 544
	slli.d	$a1, $a1, 3
	stx.d	$s0, $a0, $a1
	sub.d	$a0, $s7, $fp
	vldi	$vr0, -912
	fmadd.d	$fa0, $fs2, $fs1, $fa0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	add.w	$s8, $a0, $a1
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	b	.LBB0_321
.LBB0_269:                              #   in Loop: Header=BB0_242 Depth=2
	ld.d	$t0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	b	.LBB0_277
.LBB0_270:                              # %vector.ph1008
                                        #   in Loop: Header=BB0_242 Depth=2
	bstrpick.d	$a0, $t2, 32, 4
	slli.d	$a0, $a0, 4
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	xvreplgr2vr.w	$xr0, $a1
	addi.d	$a1, $a4, 32
	addi.d	$a2, $s8, 32
	move	$a3, $a0
	.p2align	4, , 16
.LBB0_271:                              # %vector.body1013
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, 64
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB0_271
# %bb.272:                              # %middle.block1016
                                        #   in Loop: Header=BB0_242 Depth=2
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	beq	$t2, $a0, .LBB0_279
# %bb.273:                              # %vec.epilog.iter.check1021
                                        #   in Loop: Header=BB0_242 Depth=2
	andi	$a1, $t2, 12
	beqz	$a1, .LBB0_277
.LBB0_274:                              # %vec.epilog.ph1020
                                        #   in Loop: Header=BB0_242 Depth=2
	move	$a3, $a0
	bstrpick.d	$a0, $t2, 32, 2
	slli.d	$a0, $a0, 2
	vreplgr2vr.w	$vr0, $a5
	sub.d	$a1, $a3, $a0
	alsl.d	$a2, $a3, $a4, 2
	alsl.d	$a3, $a3, $s8, 2
	.p2align	4, , 16
.LBB0_275:                              # %vec.epilog.vector.body1028
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vst	$vr0, $a3, 0
	vst	$vr0, $a2, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	bnez	$a1, .LBB0_275
# %bb.276:                              # %vec.epilog.middle.block1031
                                        #   in Loop: Header=BB0_242 Depth=2
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	beq	$t2, $a0, .LBB0_279
.LBB0_277:                              # %vec.epilog.scalar.ph1019.preheader
                                        #   in Loop: Header=BB0_242 Depth=2
	sub.d	$a1, $t1, $a0
	addi.d	$a1, $a1, 1
	alsl.d	$a2, $a0, $a4, 2
	alsl.d	$a0, $a0, $s8, 2
	.p2align	4, , 16
.LBB0_278:                              # %vec.epilog.scalar.ph1019
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$a5, $a0, 0
	st.w	$a5, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB0_278
.LBB0_279:                              # %.loopexit1170
                                        #   in Loop: Header=BB0_242 Depth=2
	st.d	$s8, $sp, 432                   # 8-byte Folded Spill
	st.d	$a4, $sp, 488                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	slli.d	$t4, $a0, 2
	stx.w	$s5, $s8, $t4
	move	$s5, $zero
	beqz	$fp, .LBB0_288
# %bb.280:                              # %.lr.ph538.preheader.i
                                        #   in Loop: Header=BB0_242 Depth=2
	sltu	$a0, $fp, $s7
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $a1
	bstrpick.d	$a1, $a0, 31, 0
	move	$a2, $s6
	move	$a3, $s1
	.p2align	4, , 16
.LBB0_281:                              # %.lr.ph538.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a4, $a2, 0
	ld.bu	$a5, $a3, 0
	bne	$a4, $a5, .LBB0_284
# %bb.282:                              #   in Loop: Header=BB0_281 Depth=3
	addi.w	$s5, $s5, 1
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB0_281
# %bb.283:                              #   in Loop: Header=BB0_242 Depth=2
	move	$s5, $a0
.LBB0_284:                              # %.critedge3.i
                                        #   in Loop: Header=BB0_242 Depth=2
	bne	$s5, $s7, .LBB0_288
# %bb.285:                              #   in Loop: Header=BB0_242 Depth=2
	addi.d	$s0, $t0, 1
	addi.d	$s1, $a7, 1
	add.d	$s2, $t0, $s7
	addi.d	$s3, $a6, -1
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.w	$s0, $a0, 0
	ld.w	$a1, $sp, 548
	ld.w	$s0, $sp, 544
	ld.d	$a0, $sp, 536
	st.w	$s1, $fp, 4
	st.w	$s2, $fp, 8
	st.w	$s3, $fp, 12
	bltu	$s0, $a1, .LBB0_287
# %bb.286:                              #   in Loop: Header=BB0_242 Depth=2
	addi.d	$a1, $a1, 5
	st.w	$a1, $sp, 548
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(xrealloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 536
.LBB0_287:                              # %add_col_elt.exit512.i
                                        #   in Loop: Header=BB0_242 Depth=2
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	ori	$s3, $zero, 2
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 432                   # 8-byte Folded Reload
	bstrpick.d	$a1, $s0, 31, 0
	addi.d	$a2, $s0, 1
	st.w	$a2, $sp, 544
	slli.d	$a1, $a1, 3
	stx.d	$fp, $a0, $a1
	move	$a0, $a3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s8, $zero
	b	.LBB0_320
.LBB0_288:                              # %iter.check975
                                        #   in Loop: Header=BB0_242 Depth=2
	st.d	$t4, $sp, 408                   # 8-byte Folded Spill
	st.d	$t2, $sp, 392                   # 8-byte Folded Spill
	st.d	$t1, $sp, 424                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 472                   # 8-byte Folded Reload
	move	$a0, $s3
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	move	$a0, $zero
	ori	$a1, $zero, 3
	bltu	$s0, $a1, .LBB0_292
# %bb.289:                              # %iter.check975
                                        #   in Loop: Header=BB0_242 Depth=2
	sub.d	$a1, $a5, $s8
	ori	$a2, $zero, 64
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	xvld	$xr1, $sp, 32                   # 32-byte Folded Reload
	ld.d	$a4, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 480                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 408                   # 8-byte Folded Reload
	bltu	$a1, $a2, .LBB0_300
# %bb.290:                              # %vector.main.loop.iter.check977
                                        #   in Loop: Header=BB0_242 Depth=2
	ori	$a0, $zero, 15
	bgeu	$s0, $a0, .LBB0_293
# %bb.291:                              #   in Loop: Header=BB0_242 Depth=2
	move	$a0, $zero
	b	.LBB0_297
.LBB0_292:                              #   in Loop: Header=BB0_242 Depth=2
	ld.d	$a4, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 480                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 408                   # 8-byte Folded Reload
	b	.LBB0_300
.LBB0_293:                              # %vector.ph978
                                        #   in Loop: Header=BB0_242 Depth=2
	bstrpick.d	$a0, $t1, 32, 4
	slli.d	$a0, $a0, 4
	addi.d	$a1, $a5, 32
	addi.d	$a2, $s8, 32
	move	$a3, $a0
	.p2align	4, , 16
.LBB0_294:                              # %vector.body981
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvst	$xr1, $a2, -32
	xvst	$xr1, $a2, 0
	xvst	$xr1, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, 64
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB0_294
# %bb.295:                              # %middle.block984
                                        #   in Loop: Header=BB0_242 Depth=2
	beq	$t1, $a0, .LBB0_302
# %bb.296:                              # %vec.epilog.iter.check989
                                        #   in Loop: Header=BB0_242 Depth=2
	andi	$a1, $t1, 12
	beqz	$a1, .LBB0_300
.LBB0_297:                              # %vec.epilog.ph988
                                        #   in Loop: Header=BB0_242 Depth=2
	move	$a3, $a0
	bstrpick.d	$a0, $t1, 32, 2
	slli.d	$a0, $a0, 2
	sub.d	$a1, $a3, $a0
	alsl.d	$a2, $a3, $a5, 2
	alsl.d	$a3, $a3, $s8, 2
	.p2align	4, , 16
.LBB0_298:                              # %vec.epilog.vector.body994
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vst	$vr0, $a3, 0
	vst	$vr0, $a2, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	bnez	$a1, .LBB0_298
# %bb.299:                              # %vec.epilog.middle.block997
                                        #   in Loop: Header=BB0_242 Depth=2
	beq	$t1, $a0, .LBB0_302
.LBB0_300:                              # %vec.epilog.scalar.ph987.preheader
                                        #   in Loop: Header=BB0_242 Depth=2
	sub.d	$a1, $t0, $a0
	addi.d	$a1, $a1, 1
	alsl.d	$a2, $a0, $a5, 2
	alsl.d	$a0, $a0, $s8, 2
	.p2align	4, , 16
.LBB0_301:                              # %vec.epilog.scalar.ph987
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$a3, $zero, -1
	lu32i.d	$a3, 0
	st.w	$a3, $a0, 0
	st.w	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB0_301
.LBB0_302:                              # %.loopexit
                                        #   in Loop: Header=BB0_242 Depth=2
	st.d	$a5, $sp, 480                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 464                   # 8-byte Folded Reload
	sub.d	$a0, $a7, $s0
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	alsl.d	$a0, $s0, $a4, 2
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	addi.w	$a1, $s0, 1
	alsl.d	$a0, $s0, $s8, 2
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	st.d	$s8, $sp, 424                   # 8-byte Folded Spill
	stx.w	$s5, $s8, $t2
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a1, 31, 0
	slli.d	$s3, $a0, 2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	move	$a0, $s3
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 344                   # 8-byte Folded Reload
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	beqz	$s0, .LBB0_307
# %bb.303:                              # %iter.check
                                        #   in Loop: Header=BB0_242 Depth=2
	ld.d	$a4, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 384                   # 8-byte Folded Reload
	ori	$a1, $zero, 2
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
	sltu	$a2, $a1, $a6
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a6, $a2
	or	$a1, $a2, $a1
	bstrpick.d	$t7, $a1, 31, 0
	ori	$a3, $zero, 1
	ori	$a1, $zero, 5
	bltu	$a6, $a1, .LBB0_354
# %bb.304:                              # %iter.check
                                        #   in Loop: Header=BB0_242 Depth=2
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $s5
	ori	$a2, $zero, 64
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	xvld	$xr2, $sp, 32                   # 32-byte Folded Reload
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 480                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 312                   # 8-byte Folded Reload
	move	$s3, $a4
	bltu	$a1, $a2, .LBB0_364
# %bb.305:                              # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB0_242 Depth=2
	addi.d	$a1, $t7, -1
	ori	$a2, $zero, 17
	bgeu	$a6, $a2, .LBB0_355
# %bb.306:                              #   in Loop: Header=BB0_242 Depth=2
	move	$t8, $a6
	move	$a2, $zero
	b	.LBB0_360
.LBB0_307:                              # %._crit_edge.thread.i
                                        #   in Loop: Header=BB0_242 Depth=2
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	st.w	$a1, $s5, 0
	st.w	$zero, $a0, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	st.w	$a0, $s3, 0
	st.w	$zero, $s8, 0
	addi.w	$s3, $zero, -1
	ori	$s8, $zero, 1
	move	$s0, $s3
.LBB0_308:                              # %._crit_edge614.i
                                        #   in Loop: Header=BB0_242 Depth=2
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	bgeu	$a0, $s8, .LBB0_310
# %bb.309:                              #   in Loop: Header=BB0_242 Depth=2
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	ori	$s3, $zero, 2
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	b	.LBB0_319
.LBB0_310:                              #   in Loop: Header=BB0_242 Depth=2
	slli.d	$a1, $s3, 2
	ldx.w	$a2, $s5, $a1
	slli.d	$a5, $s0, 2
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a3, $a0, $a5
	sub.w	$a4, $s7, $a2
	slt	$a4, $a4, $a3
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ldx.w	$fp, $a0, $a1
	masknez	$a1, $a2, $a4
	maskeqz	$a2, $a3, $a4
	or	$s1, $a2, $a1
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	beqz	$s1, .LBB0_314
# %bb.311:                              #   in Loop: Header=BB0_242 Depth=2
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $a5
	addi.d	$s2, $a3, 1
	addi.d	$s4, $a2, 1
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	sub.d	$a1, $a3, $a1
	add.d	$a1, $a1, $s1
	add.d	$s6, $a1, $a0
	add.d	$s8, $s1, $a2
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	st.w	$s2, $a0, 0
	ld.w	$a1, $sp, 548
	ld.w	$s2, $sp, 544
	ld.d	$a0, $sp, 536
	st.w	$s4, $a3, 4
	st.w	$s6, $a3, 8
	st.w	$s8, $a3, 12
	bltu	$s2, $a1, .LBB0_313
# %bb.312:                              #   in Loop: Header=BB0_242 Depth=2
	addi.d	$a1, $a1, 5
	st.w	$a1, $sp, 548
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	move	$s4, $a3
	pcaddu18i	$ra, %call36(xrealloc)
	jirl	$ra, $ra, 0
	move	$a3, $s4
	st.d	$a0, $sp, 536
.LBB0_313:                              # %add_col_elt.exit516.i
                                        #   in Loop: Header=BB0_242 Depth=2
	bstrpick.d	$a1, $s2, 31, 0
	addi.d	$a2, $s2, 1
	st.w	$a2, $sp, 544
	slli.d	$a1, $a1, 3
	stx.d	$a3, $a0, $a1
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
.LBB0_314:                              #   in Loop: Header=BB0_242 Depth=2
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	bgeu	$s1, $s7, .LBB0_318
# %bb.315:                              #   in Loop: Header=BB0_242 Depth=2
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	add.d	$a0, $a3, $a0
	add.d	$a0, $a0, $fp
	add.d	$a0, $a0, $s1
	addi.d	$fp, $a0, 1
	add.d	$a0, $a2, $s1
	addi.d	$s1, $a0, 1
	addi.d	$s2, $a1, -1
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	st.w	$fp, $a0, 0
	ld.w	$a1, $sp, 548
	ld.w	$fp, $sp, 544
	ld.d	$a0, $sp, 536
	st.w	$s1, $s8, 4
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.w	$a2, $s8, 8
	st.w	$s2, $s8, 12
	bltu	$fp, $a1, .LBB0_317
# %bb.316:                              #   in Loop: Header=BB0_242 Depth=2
	addi.d	$a1, $a1, 5
	st.w	$a1, $sp, 548
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(xrealloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 536
.LBB0_317:                              # %add_col_elt.exit520.i
                                        #   in Loop: Header=BB0_242 Depth=2
	bstrpick.d	$a1, $fp, 31, 0
	addi.d	$a2, $fp, 1
	st.w	$a2, $sp, 544
	slli.d	$a1, $a1, 3
	stx.d	$s8, $a0, $a1
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
.LBB0_318:                              #   in Loop: Header=BB0_242 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	add.w	$s8, $s0, $s3
	ori	$s3, $zero, 2
.LBB0_319:                              # %greedy.exitthread-pre-split
                                        #   in Loop: Header=BB0_242 Depth=2
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
.LBB0_320:                              # %greedy.exitthread-pre-split
                                        #   in Loop: Header=BB0_242 Depth=2
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
.LBB0_321:                              # %greedy.exitthread-pre-split
                                        #   in Loop: Header=BB0_242 Depth=2
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
.LBB0_322:                              # %greedy.exitthread-pre-split
                                        #   in Loop: Header=BB0_242 Depth=2
	ld.w	$a1, $sp, 544
	movgr2fr.w	$fa0, $s8
	ffint.d.w	$fa0, $fa0
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a3, $s6, 36
	beqz	$a1, .LBB0_258
.LBB0_323:                              #   in Loop: Header=BB0_242 Depth=2
	bstrpick.d	$a0, $a3, 31, 0
	movgr2fr.d	$fa1, $a0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_1)
	ffint.d.l	$fa1, $fa1
	movgr2fr.d	$fa3, $a7
	ffint.d.l	$fa3, $fa3
	vldi	$vr4, -912
	fmadd.d	$fa2, $fa3, $fa2, $fa4
	fcmp.clt.d	$fcc0, $fa1, $fa2
	ld.d	$a0, $s6, 8
	fsel	$fa1, $fa1, $fa2, $fcc0
	fcmp.cult.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB0_343
	.p2align	4, , 16
.LBB0_324:                              # %.thread575
                                        #   in Loop: Header=BB0_242 Depth=2
	sltui	$a1, $a3, 8
	maskeqz	$a2, $a3, $a1
	ld.wu	$a3, $s1, 8
	ori	$a4, $zero, 8
	masknez	$a1, $a4, $a1
	ld.w	$a4, $a6, 0
	or	$a1, $a2, $a1
	add.d	$a0, $a0, $a3
	nor	$a2, $a3, $zero
	add.d	$a2, $a4, $a2
	st.w	$a1, $sp, 532
	st.d	$a0, $sp, 504
	st.w	$a2, $sp, 512
	slli.d	$a0, $a1, 1
	addi.d	$a0, $a0, -2
	bstrpick.d	$a0, $a0, 31, 1
	slli.d	$a0, $a0, 1
	addi.d	$a1, $zero, -1
	sll.w	$a0, $a1, $a0
	nor	$a0, $a0, $zero
	st.w	$a0, $sp, 528
	sub.d	$a0, $a4, $a3
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $sp, 520
	ori	$a1, $zero, 8
	lu12i.w	$a0, 128
	pcaddu18i	$ra, %call36(xcalloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$a0, $sp, 496
	addi.d	$a0, $sp, 496
	pcaddu18i	$ra, %call36(bld_table)
	jirl	$ra, $ra, 0
	move	$s8, $s2
	ld.d	$a0, $s2, 16
	ld.wu	$a2, $s1, 12
	ld.w	$a3, $s1, 8
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	ld.w	$a5, $a1, 24
	add.d	$a1, $a0, $a2
	addi.w	$a3, $a3, 1
	addi.w	$a4, $a2, 1
	addi.d	$a0, $sp, 496
	addi.d	$a6, $sp, 552
	addi.d	$a2, $sp, 536
	st.d	$a2, $sp, 0
	move	$a2, $s7
	move	$a7, $zero
	pcaddu18i	$ra, %call36(exon_cores)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	lu12i.w	$s2, 1024
	.p2align	4, , 16
.LBB0_325:                              #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $fp, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(tdestroy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	bne	$s0, $s2, .LBB0_325
# %bb.326:                              # %free_hash_env.exit468
                                        #   in Loop: Header=BB0_242 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 544
	ori	$s0, $zero, 1
	beqz	$a2, .LBB0_341
# %bb.327:                              #   in Loop: Header=BB0_242 Depth=2
	ld.d	$a3, $sp, 536
	ld.d	$a4, $a3, 0
	ld.d	$a0, $s6, 8
	ld.wu	$t1, $a4, 0
	move	$s2, $s8
	ld.d	$a1, $s8, 16
	add.d	$a5, $a0, $t1
	addi.d	$a6, $a5, -2
	bltu	$a6, $a0, .LBB0_333
# %bb.328:                              #   in Loop: Header=BB0_242 Depth=2
	ld.wu	$t0, $a4, 4
	add.d	$a6, $a1, $t0
	addi.d	$a7, $a6, -2
	bltu	$a7, $a1, .LBB0_333
# %bb.329:                              # %.lr.ph.i472.preheader
                                        #   in Loop: Header=BB0_242 Depth=2
	move	$a7, $zero
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, -1
	.p2align	4, , 16
.LBB0_330:                              # %.lr.ph.i472
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t2, $a6, $a7
	add.d	$t3, $a5, $a7
	ld.bu	$t4, $t3, -2
	ld.bu	$t5, $t2, -2
	bne	$t4, $t5, .LBB0_333
# %bb.331:                              #   in Loop: Header=BB0_330 Depth=3
	addi.d	$t3, $t3, -3
	st.w	$t1, $a4, 0
	st.w	$t0, $a4, 4
	bltu	$t3, $a0, .LBB0_333
# %bb.332:                              #   in Loop: Header=BB0_330 Depth=3
	addi.d	$t2, $t2, -3
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, -1
	addi.d	$a7, $a7, -1
	bgeu	$t2, $a1, .LBB0_330
.LBB0_333:                              # %grow_exon_left.exit479
                                        #   in Loop: Header=BB0_242 Depth=2
	addi.d	$a2, $a2, -1
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a3, $a2
	ld.w	$a3, $s6, 16
	ld.w	$a4, $a2, 8
	bgeu	$a4, $a3, .LBB0_338
# %bb.334:                              # %.lr.ph.i482
                                        #   in Loop: Header=BB0_242 Depth=2
	ld.w	$a5, $a2, 12
	ldptr.w	$a6, $s2, 4148
	bstrpick.d	$a7, $a4, 31, 0
	bstrpick.d	$t0, $a5, 31, 0
	sltu	$t1, $a6, $a5
	masknez	$a6, $a6, $t1
	maskeqz	$t1, $a5, $t1
	or	$a6, $t1, $a6
	bstrpick.d	$a6, $a6, 31, 0
	add.d	$a0, $a0, $a7
	addi.d	$a5, $a5, 1
	add.d	$a1, $a1, $t0
	sub.d	$a6, $a6, $t0
	.p2align	4, , 16
.LBB0_335:                              #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beqz	$a6, .LBB0_338
# %bb.336:                              #   in Loop: Header=BB0_335 Depth=3
	ld.bu	$a7, $a0, 0
	ld.bu	$t0, $a1, 0
	bne	$a7, $t0, .LBB0_338
# %bb.337:                              #   in Loop: Header=BB0_335 Depth=3
	addi.w	$a4, $a4, 1
	st.w	$a4, $a2, 8
	st.w	$a5, $a2, 12
	addi.d	$a0, $a0, 1
	addi.d	$a5, $a5, 1
	addi.d	$a1, $a1, 1
	addi.d	$a6, $a6, -1
	bne	$a3, $a4, .LBB0_335
.LBB0_338:                              # %grow_exon_right.exit492
                                        #   in Loop: Header=BB0_242 Depth=2
	ld.w	$a3, $s6, 36
.LBB0_339:                              # %.sink.split
                                        #   in Loop: Header=BB0_242 Depth=2
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
.LBB0_340:                              # %.sink.split
                                        #   in Loop: Header=BB0_242 Depth=2
	addi.d	$a1, $sp, 536
	move	$a0, $s5
	pcaddu18i	$ra, %call36(merge)
	jirl	$ra, $ra, 0
	st.w	$zero, $sp, 544
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	b	.LBB0_342
.LBB0_341:                              #   in Loop: Header=BB0_242 Depth=2
	move	$s2, $s8
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
.LBB0_342:                              #   in Loop: Header=BB0_242 Depth=2
	ld.w	$a0, $s4, 16
	b	.LBB0_241
.LBB0_343:                              #   in Loop: Header=BB0_242 Depth=2
	ld.d	$a4, $sp, 536
	ld.d	$a5, $a4, 0
	ld.wu	$t2, $a5, 0
	ld.d	$a2, $s2, 16
	add.d	$a6, $a0, $t2
	addi.d	$a7, $a6, -2
	bltu	$a7, $a0, .LBB0_349
# %bb.344:                              #   in Loop: Header=BB0_242 Depth=2
	ld.wu	$t1, $a5, 4
	add.d	$a7, $a2, $t1
	addi.d	$t0, $a7, -2
	bltu	$t0, $a2, .LBB0_349
# %bb.345:                              # %.lr.ph.i443.preheader
                                        #   in Loop: Header=BB0_242 Depth=2
	move	$t0, $zero
	addi.d	$t1, $t1, -1
	addi.d	$t2, $t2, -1
	.p2align	4, , 16
.LBB0_346:                              # %.lr.ph.i443
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t3, $a7, $t0
	add.d	$t4, $a6, $t0
	ld.bu	$t5, $t4, -2
	ld.bu	$t6, $t3, -2
	bne	$t5, $t6, .LBB0_349
# %bb.347:                              #   in Loop: Header=BB0_346 Depth=3
	addi.d	$t4, $t4, -3
	st.w	$t2, $a5, 0
	st.w	$t1, $a5, 4
	bltu	$t4, $a0, .LBB0_349
# %bb.348:                              #   in Loop: Header=BB0_346 Depth=3
	addi.d	$t3, $t3, -3
	addi.d	$t1, $t1, -1
	addi.d	$t2, $t2, -1
	addi.d	$t0, $t0, -1
	bgeu	$t3, $a2, .LBB0_346
.LBB0_349:                              # %grow_exon_left.exit450
                                        #   in Loop: Header=BB0_242 Depth=2
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a4, $a1
	ld.w	$a4, $s6, 16
	ld.w	$a5, $a1, 8
	ori	$s0, $zero, 1
	bgeu	$a5, $a4, .LBB0_339
# %bb.350:                              # %.lr.ph.i453
                                        #   in Loop: Header=BB0_242 Depth=2
	ld.w	$a6, $a1, 12
	ldptr.w	$a7, $s2, 4148
	bstrpick.d	$t0, $a5, 31, 0
	bstrpick.d	$t1, $a6, 31, 0
	sltu	$t2, $a7, $a6
	masknez	$a7, $a7, $t2
	maskeqz	$t2, $a6, $t2
	or	$a7, $t2, $a7
	bstrpick.d	$a7, $a7, 31, 0
	add.d	$a0, $a0, $t0
	addi.d	$a6, $a6, 1
	add.d	$t2, $a2, $t1
	sub.d	$a7, $a7, $t1
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_351:                              #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beqz	$a7, .LBB0_340
# %bb.352:                              #   in Loop: Header=BB0_351 Depth=3
	ld.bu	$t0, $a0, 0
	ld.bu	$t1, $t2, 0
	bne	$t0, $t1, .LBB0_340
# %bb.353:                              #   in Loop: Header=BB0_351 Depth=3
	addi.w	$a5, $a5, 1
	st.w	$a5, $a1, 8
	st.w	$a6, $a1, 12
	addi.d	$a0, $a0, 1
	addi.d	$a6, $a6, 1
	addi.d	$t2, $t2, 1
	addi.d	$a7, $a7, -1
	bne	$a4, $a5, .LBB0_351
	b	.LBB0_340
.LBB0_354:                              #   in Loop: Header=BB0_242 Depth=2
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 480                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 312                   # 8-byte Folded Reload
	move	$s3, $a4
	b	.LBB0_364
.LBB0_355:                              # %vector.ph954
                                        #   in Loop: Header=BB0_242 Depth=2
	move	$a2, $a1
	bstrins.d	$a2, $zero, 3, 0
	xvreplgr2vr.w	$xr0, $a7
	addi.d	$a3, $s5, 36
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 36
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_356:                              # %vector.body957
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	xvst	$xr2, $a4, -32
	xvst	$xr2, $a4, 0
	addi.d	$a3, $a3, 64
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB0_356
# %bb.357:                              # %middle.block960
                                        #   in Loop: Header=BB0_242 Depth=2
	beq	$a1, $a2, .LBB0_366
# %bb.358:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB0_242 Depth=2
	andi	$a3, $a1, 12
	beqz	$a3, .LBB0_363
# %bb.359:                              #   in Loop: Header=BB0_242 Depth=2
	move	$t8, $a6
.LBB0_360:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB0_242 Depth=2
	move	$a4, $a1
	bstrins.d	$a4, $zero, 1, 0
	move	$a3, $a1
	ori	$a5, $zero, 1
	bstrins.d	$a3, $a5, 1, 0
	vreplgr2vr.w	$vr0, $a7
	alsl.d	$a5, $a2, $s5, 2
	addi.d	$a5, $a5, 4
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$a6, $a2, $a6, 2
	addi.d	$a6, $a6, 4
	sub.d	$a2, $a2, $a4
	.p2align	4, , 16
.LBB0_361:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vst	$vr0, $a5, 0
	vst	$vr1, $a6, 0
	addi.d	$a5, $a5, 16
	addi.d	$a2, $a2, 4
	addi.d	$a6, $a6, 16
	bnez	$a2, .LBB0_361
# %bb.362:                              # %vec.epilog.middle.block
                                        #   in Loop: Header=BB0_242 Depth=2
	move	$a6, $t8
	bne	$a1, $a4, .LBB0_364
	b	.LBB0_366
.LBB0_363:                              #   in Loop: Header=BB0_242 Depth=2
	addi.d	$a3, $a2, 1
.LBB0_364:                              # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB0_242 Depth=2
	sub.d	$a4, $t7, $a3
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$a1, $a3, $a1, 2
	alsl.d	$a2, $a3, $s5, 2
	.p2align	4, , 16
.LBB0_365:                              # %vec.epilog.scalar.ph
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$a7, $a2, 0
	addi.w	$a3, $zero, -1
	lu32i.d	$a3, 0
	st.w	$a3, $a1, 0
	addi.d	$a4, $a4, -1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	bnez	$a4, .LBB0_365
.LBB0_366:                              # %.preheader528.lr.ph.i
                                        #   in Loop: Header=BB0_242 Depth=2
	ld.w	$a1, $s0, 0
	st.w	$a1, $s5, 0
	ld.d	$a4, $sp, 464                   # 8-byte Folded Reload
	st.w	$a4, $a0, 0
	ld.w	$a0, $s3, 0
	addi.w	$t7, $a4, -1
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	st.w	$a4, $t6, 0
	addi.d	$a0, $t3, -4
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a0, $t3, 4
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$a0, $a4, $a2, 2
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	addi.d	$a0, $t5, -4
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	addi.d	$a0, $t5, 4
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	alsl.d	$a0, $a4, $t4, 2
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	addi.w	$a7, $a4, 2
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	add.d	$a0, $t1, $a0
	add.d	$a1, $t2, $t0
	nor	$a1, $a1, $zero
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	alsl.d	$a0, $t7, $t3, 2
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	alsl.d	$a0, $t7, $a2, 2
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	alsl.d	$t1, $t7, $t5, 2
	alsl.d	$t2, $t7, $t4, 2
	ori	$s8, $zero, 1
	ori	$t5, $zero, 2
	ori	$t6, $zero, 3
	st.d	$t7, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	move	$a5, $a0
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	b	.LBB0_369
	.p2align	4, , 16
.LBB0_367:                              #   in Loop: Header=BB0_369 Depth=3
	move	$a4, $a3
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
.LBB0_368:                              #   in Loop: Header=BB0_369 Depth=3
	addi.w	$s8, $s8, 1
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	addi.w	$a7, $a7, 1
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	addi.w	$t5, $t5, 1
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	addi.w	$t6, $t6, 2
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -4
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -4
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	addi.d	$t1, $t1, -4
	addi.d	$t2, $t2, -4
	move	$a5, $s0
	bltu	$a4, $s8, .LBB0_308
.LBB0_369:                              # %.preheader528.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_384 Depth 4
                                        #           Child Loop BB0_394 Depth 5
                                        #         Child Loop BB0_417 Depth 4
                                        #         Child Loop BB0_374 Depth 4
                                        #         Child Loop BB0_400 Depth 4
                                        #           Child Loop BB0_412 Depth 5
                                        #         Child Loop BB0_421 Depth 4
                                        #         Child Loop BB0_426 Depth 4
	st.d	$t2, $sp, 352                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 464                   # 8-byte Folded Reload
	sub.w	$a1, $t4, $s8
	add.w	$a2, $s8, $t4
	st.d	$a6, $sp, 392                   # 8-byte Folded Spill
	st.d	$t1, $sp, 360                   # 8-byte Folded Spill
	bge	$a6, $t7, .LBB0_381
# %bb.370:                              # %._crit_edge565.thread.i
                                        #   in Loop: Header=BB0_369 Depth=3
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a3, $a0, 0
	bstrpick.d	$a6, $s8, 31, 0
	alsl.d	$a0, $a6, $s5, 2
	st.d	$a6, $sp, 416                   # 8-byte Folded Spill
	slli.d	$a6, $a6, 2
	stx.w	$a3, $s5, $a6
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	stx.w	$t4, $a3, $a6
	ld.d	$s3, $sp, 344                   # 8-byte Folded Reload
.LBB0_371:                              # %.preheader527.i
                                        #   in Loop: Header=BB0_369 Depth=3
	beqz	$s8, .LBB0_378
# %bb.372:                              # %.lr.ph571.i
                                        #   in Loop: Header=BB0_369 Depth=3
	ld.w	$a0, $a0, 0
	move	$s0, $zero
	sub.d	$a6, $s8, $a4
	move	$t0, $s3
	ld.d	$t1, $sp, 416                   # 8-byte Folded Reload
	b	.LBB0_374
	.p2align	4, , 16
.LBB0_373:                              #   in Loop: Header=BB0_374 Depth=4
	addi.d	$t1, $t1, -1
	addi.w	$s0, $s0, 1
	addi.d	$t0, $t0, 4
	beqz	$t1, .LBB0_378
.LBB0_374:                              #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        #       Parent Loop BB0_369 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a3, $t0, 0
	blt	$a3, $a0, .LBB0_373
# %bb.375:                              #   in Loop: Header=BB0_374 Depth=4
	add.w	$a3, $s8, $s0
	bltu	$a3, $a4, .LBB0_377
# %bb.376:                              #   in Loop: Header=BB0_374 Depth=4
	slti	$t2, $a5, 0
	add.w	$t3, $a6, $s0
	sltui	$t3, $t3, 1
	and	$t2, $t3, $t2
	beqz	$t2, .LBB0_373
.LBB0_377:                              # %.._crit_edge572.i.loopexit_crit_edge
                                        #   in Loop: Header=BB0_369 Depth=3
	st.d	$s8, $sp, 336                   # 8-byte Folded Spill
	b	.LBB0_379
	.p2align	4, , 16
.LBB0_378:                              #   in Loop: Header=BB0_369 Depth=3
	move	$a3, $a4
	move	$s0, $a5
.LBB0_379:                              # %._crit_edge572.i
                                        #   in Loop: Header=BB0_369 Depth=3
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $s3, 2
	slli.d	$a5, $a0, 2
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
	bge	$a6, $t7, .LBB0_397
# %bb.380:                              # %._crit_edge599.thread.i
                                        #   in Loop: Header=BB0_369 Depth=3
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	stx.w	$a0, $s3, $a5
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	stx.w	$t4, $a0, $a5
	ld.d	$t1, $sp, 360                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 352                   # 8-byte Folded Reload
	b	.LBB0_424
	.p2align	4, , 16
.LBB0_381:                              # %.lr.ph564.i
                                        #   in Loop: Header=BB0_369 Depth=3
	bstrpick.d	$a0, $s8, 31, 0
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a3, 2
	ld.d	$a6, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 408                   # 8-byte Folded Reload
	ori	$s0, $zero, 1
	ori	$s3, $zero, 2
	b	.LBB0_384
	.p2align	4, , 16
.LBB0_382:                              #   in Loop: Header=BB0_384 Depth=4
	move	$t2, $t3
.LBB0_383:                              # %.critedge7.i426
                                        #   in Loop: Header=BB0_384 Depth=4
	ld.d	$t3, $sp, 488                   # 8-byte Folded Reload
	stx.w	$t2, $t3, $t1
	addi.d	$t0, $t0, 1
	addi.w	$t1, $t0, 0
	addi.d	$a6, $a6, 1
	beq	$a7, $t1, .LBB0_415
.LBB0_384:                              #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        #       Parent Loop BB0_369 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_394 Depth 5
	slli.d	$t1, $t0, 2
	bne	$t0, $a1, .LBB0_386
# %bb.385:                              #   in Loop: Header=BB0_384 Depth=4
	ld.w	$t2, $a3, 0
	b	.LBB0_392
	.p2align	4, , 16
.LBB0_386:                              #   in Loop: Header=BB0_384 Depth=4
	bne	$t0, $a2, .LBB0_388
# %bb.387:                              #   in Loop: Header=BB0_384 Depth=4
	ld.w	$t2, $a0, 0
	addi.w	$t2, $t2, -1
	b	.LBB0_392
	.p2align	4, , 16
.LBB0_388:                              #   in Loop: Header=BB0_384 Depth=4
	ld.d	$t3, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$t2, $t0, $t3, 2
	ldx.w	$t4, $t3, $t1
	ld.w	$t3, $t2, 4
	bge	$t3, $t4, .LBB0_390
# %bb.389:                              # %._crit_edge667.i
                                        #   in Loop: Header=BB0_384 Depth=4
	ld.w	$t8, $t2, -4
	b	.LBB0_391
.LBB0_390:                              #   in Loop: Header=BB0_384 Depth=4
	ld.w	$t8, $t2, -4
	addi.w	$t2, $t4, -1
	bge	$t8, $t2, .LBB0_392
.LBB0_391:                              #   in Loop: Header=BB0_384 Depth=4
	slt	$t2, $t8, $t3
	slt	$t4, $t8, $t4
	addi.w	$t8, $t8, -1
	masknez	$s0, $t3, $t4
	maskeqz	$t4, $t8, $t4
	or	$t4, $t4, $s0
	ori	$s0, $zero, 1
	maskeqz	$t4, $t4, $t2
	masknez	$t2, $t3, $t2
	or	$t2, $t4, $t2
	.p2align	4, , 16
.LBB0_392:                              #   in Loop: Header=BB0_384 Depth=4
	blt	$t2, $s0, .LBB0_383
# %bb.393:                              #   in Loop: Header=BB0_384 Depth=4
	ld.d	$t3, $sp, 472                   # 8-byte Folded Reload
	add.d	$t3, $t3, $t0
	add.w	$t3, $t3, $t2
	blt	$t3, $s0, .LBB0_383
	.p2align	4, , 16
.LBB0_394:                              # %.lr.ph554.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        #       Parent Loop BB0_369 Depth=3
                                        #         Parent Loop BB0_384 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	move	$t3, $t2
	add.w	$t4, $a6, $t2
	ldx.bu	$t2, $s4, $t2
	ldx.bu	$t8, $s2, $t4
	bne	$t2, $t8, .LBB0_382
# %bb.395:                              #   in Loop: Header=BB0_394 Depth=5
	addi.w	$t2, $t3, -1
	blt	$t4, $s3, .LBB0_383
# %bb.396:                              #   in Loop: Header=BB0_394 Depth=5
	blt	$s0, $t3, .LBB0_394
	b	.LBB0_383
	.p2align	4, , 16
.LBB0_397:                              # %.lr.ph598.i
                                        #   in Loop: Header=BB0_369 Depth=3
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$s3, $a2, $a0, 2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$a6, $a1, $a0, 2
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 400                   # 8-byte Folded Reload
	b	.LBB0_400
	.p2align	4, , 16
.LBB0_398:                              #   in Loop: Header=BB0_400 Depth=4
	move	$t3, $t2
.LBB0_399:                              # %.critedge11.i429
                                        #   in Loop: Header=BB0_400 Depth=4
	ld.d	$t2, $sp, 480                   # 8-byte Folded Reload
	stx.w	$t3, $t2, $t1
	addi.w	$t0, $t0, 1
	addi.d	$a0, $a0, 1
	beq	$t0, $t5, .LBB0_419
.LBB0_400:                              #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        #       Parent Loop BB0_369 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_412 Depth 5
	slli.d	$t1, $a0, 2
	bne	$a0, $a1, .LBB0_402
# %bb.401:                              #   in Loop: Header=BB0_400 Depth=4
	ld.w	$t2, $a6, 0
	addi.w	$t2, $t2, 1
	b	.LBB0_408
	.p2align	4, , 16
.LBB0_402:                              #   in Loop: Header=BB0_400 Depth=4
	bne	$a0, $a2, .LBB0_404
# %bb.403:                              #   in Loop: Header=BB0_400 Depth=4
	ld.w	$t2, $s3, 0
	b	.LBB0_408
	.p2align	4, , 16
.LBB0_404:                              #   in Loop: Header=BB0_400 Depth=4
	ld.d	$t3, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$t2, $a0, $t3, 2
	ldx.w	$t3, $t3, $t1
	ld.w	$t4, $t2, 4
	bge	$t3, $t4, .LBB0_406
# %bb.405:                              # %._crit_edge668.i
                                        #   in Loop: Header=BB0_400 Depth=4
	ld.w	$t8, $t2, -4
	b	.LBB0_407
.LBB0_406:                              #   in Loop: Header=BB0_400 Depth=4
	ld.w	$t8, $t2, -4
	addi.w	$t2, $t3, 1
	bge	$t2, $t8, .LBB0_408
.LBB0_407:                              #   in Loop: Header=BB0_400 Depth=4
	addi.w	$t2, $t4, 1
	slt	$t3, $t4, $t3
	slt	$t4, $t8, $t2
	masknez	$ra, $t8, $t4
	maskeqz	$t2, $t2, $t4
	or	$t2, $t2, $ra
	masknez	$t2, $t2, $t3
	maskeqz	$t3, $t8, $t3
	or	$t2, $t3, $t2
	.p2align	4, , 16
.LBB0_408:                              #   in Loop: Header=BB0_400 Depth=4
	bltz	$t2, .LBB0_398
# %bb.409:                              # %.preheader.i432
                                        #   in Loop: Header=BB0_400 Depth=4
	bgeu	$t2, $s7, .LBB0_398
# %bb.410:                              # %.preheader.i432
                                        #   in Loop: Header=BB0_400 Depth=4
	ld.d	$t3, $sp, 464                   # 8-byte Folded Reload
	sub.d	$t3, $a0, $t3
	add.w	$t3, $t3, $t2
	bgeu	$t3, $fp, .LBB0_398
# %bb.411:                              # %.lr.ph587.preheader.i
                                        #   in Loop: Header=BB0_400 Depth=4
	add.d	$t3, $t2, $t0
	bstrpick.d	$t4, $t3, 31, 0
	move	$t3, $t2
	.p2align	4, , 16
.LBB0_412:                              # %.lr.ph587.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        #       Parent Loop BB0_369 Depth=3
                                        #         Parent Loop BB0_400 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ldx.bu	$t8, $s6, $t2
	ldx.bu	$ra, $s1, $t4
	bne	$t8, $ra, .LBB0_399
# %bb.413:                              #   in Loop: Header=BB0_412 Depth=5
	addi.d	$t2, $t2, 1
	addi.d	$t3, $t3, 1
	bgeu	$t2, $s7, .LBB0_399
# %bb.414:                              #   in Loop: Header=BB0_412 Depth=5
	addi.d	$t4, $t4, 1
	bltu	$t4, $fp, .LBB0_412
	b	.LBB0_399
	.p2align	4, , 16
.LBB0_415:                              # %._crit_edge565.i
                                        #   in Loop: Header=BB0_369 Depth=3
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a6, $a0, 0
	move	$a3, $zero
	ld.d	$t2, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $s5, 2
	slli.d	$t0, $t2, 2
	stx.w	$a6, $s5, $t0
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$a6, $t2, $t1, 2
	ld.d	$t4, $sp, 464                   # 8-byte Folded Reload
	stx.w	$t4, $t1, $t0
	ld.d	$t0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 344                   # 8-byte Folded Reload
	b	.LBB0_417
	.p2align	4, , 16
.LBB0_416:                              #   in Loop: Header=BB0_417 Depth=4
	addi.w	$a3, $a3, 1
	addi.d	$t1, $t1, 4
	addi.d	$t0, $t0, 4
	beq	$t6, $a3, .LBB0_371
.LBB0_417:                              # %.lr.ph569.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        #       Parent Loop BB0_369 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$t2, $t0, 0
	st.w	$t2, $t1, 0
	st.w	$t8, $t0, 0
	ld.w	$t2, $t1, 0
	ld.w	$t3, $a0, 0
	bge	$t2, $t3, .LBB0_416
# %bb.418:                              #   in Loop: Header=BB0_417 Depth=4
	st.w	$t2, $a0, 0
	add.d	$t2, $t7, $a3
	st.w	$t2, $a6, 0
	b	.LBB0_416
	.p2align	4, , 16
.LBB0_419:                              # %._crit_edge599.i
                                        #   in Loop: Header=BB0_369 Depth=3
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	move	$a0, $zero
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	stx.w	$a1, $a2, $a5
	ld.d	$a6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a6, 2
	ld.d	$a2, $sp, 464                   # 8-byte Folded Reload
	stx.w	$a2, $a6, $a5
	ld.d	$t2, $sp, 352                   # 8-byte Folded Reload
	move	$a2, $t2
	ld.d	$t1, $sp, 360                   # 8-byte Folded Reload
	move	$a5, $t1
	b	.LBB0_421
	.p2align	4, , 16
.LBB0_420:                              #   in Loop: Header=BB0_421 Depth=4
	addi.w	$a0, $a0, 1
	addi.d	$a5, $a5, 4
	addi.d	$a2, $a2, 4
	beq	$t6, $a0, .LBB0_423
.LBB0_421:                              # %.lr.ph603.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        #       Parent Loop BB0_369 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a6, $a2, 0
	st.w	$a6, $a5, 0
	addi.w	$a6, $zero, -1
	lu32i.d	$a6, 0
	st.w	$a6, $a2, 0
	ld.w	$a6, $a5, 0
	ld.w	$t0, $a4, 0
	bge	$t0, $a6, .LBB0_420
# %bb.422:                              #   in Loop: Header=BB0_421 Depth=4
	st.w	$a6, $a4, 0
	add.d	$a6, $t7, $a0
	st.w	$a6, $a1, 0
	b	.LBB0_420
	.p2align	4, , 16
.LBB0_423:                              #   in Loop: Header=BB0_369 Depth=3
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
.LBB0_424:                              # %.preheader526.i
                                        #   in Loop: Header=BB0_369 Depth=3
	move	$s3, $zero
	ld.w	$a0, $a4, 0
	addi.w	$t7, $t7, -1
	addi.w	$a6, $a6, 1
	sub.d	$a1, $s8, $a3
	b	.LBB0_426
	.p2align	4, , 16
.LBB0_425:                              #   in Loop: Header=BB0_426 Depth=4
	addi.w	$s3, $s3, 1
	bltu	$s8, $s3, .LBB0_367
.LBB0_426:                              #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_242 Depth=2
                                        #       Parent Loop BB0_369 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bstrpick.d	$a2, $s3, 31, 0
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $s5, $a2
	blt	$a0, $a2, .LBB0_425
# %bb.427:                              #   in Loop: Header=BB0_426 Depth=4
	add.w	$a4, $s8, $s3
	bltu	$a4, $a3, .LBB0_429
# %bb.428:                              #   in Loop: Header=BB0_426 Depth=4
	slti	$a2, $s0, 0
	add.w	$a5, $a1, $s3
	sltui	$a5, $a5, 1
	and	$a2, $a5, $a2
	beqz	$a2, .LBB0_425
.LBB0_429:                              # %._crit_edge1650
                                        #   in Loop: Header=BB0_369 Depth=3
	move	$s0, $s8
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	b	.LBB0_368
	.p2align	4, , 16
.LBB0_430:                              # %.loopexit615
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a1, $s6, 8
	ld.d	$a2, $s2, 16
	move	$a0, $s4
	pcaddu18i	$ra, %call36(kill_polyA)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s4, 16
	bltu	$a2, $s3, .LBB0_452
# %bb.431:                              # %.lr.ph.i494.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $s6, 36
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	ori	$s2, $zero, 1
	ld.d	$s7, $sp, 440                   # 8-byte Folded Reload
	b	.LBB0_435
	.p2align	4, , 16
.LBB0_432:                              #   in Loop: Header=BB0_435 Depth=2
	addi.w	$s2, $s2, 1
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
.LBB0_433:                              # %thread-pre-split
                                        #   in Loop: Header=BB0_435 Depth=2
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
.LBB0_434:                              # %thread-pre-split
                                        #   in Loop: Header=BB0_435 Depth=2
	ld.w	$a2, $s4, 16
	ori	$s3, $zero, 2
	bgeu	$s2, $a2, .LBB0_442
.LBB0_435:                              # %.lr.ph.i494
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$s1, $zero, 2
	ld.d	$a0, $s5, 0
	addi.d	$a1, $s2, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	bstrpick.d	$s5, $s2, 31, 0
	slli.d	$s8, $s5, 3
	ldx.d	$fp, $a0, $s8
	ldx.d	$s0, $a0, $a1
	ld.w	$a0, $fp, 4
	ld.w	$a1, $s0, 4
	ld.w	$a3, $s7, 36
	sub.w	$s3, $a0, $a1
	bltu	$a3, $s3, .LBB0_432
# %bb.436:                              #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a0, $a2, -1
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	st.w	$a0, $s4, 16
	ld.w	$a0, $s0, 12
	ld.w	$a1, $fp, 12
	bgeu	$a1, $a0, .LBB0_439
# %bb.437:                              #   in Loop: Header=BB0_435 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 8
	ld.w	$a2, $s4, 16
	alsl.d	$a0, $s5, $a0, 3
	addi.d	$a1, $a0, 8
	sub.d	$a2, $a2, $s2
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s4, 16
	bgeu	$s2, $a2, .LBB0_441
# %bb.438:                              #   in Loop: Header=BB0_435 Depth=2
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a0, $s5, 0
	ld.w	$a1, $s0, 8
	ld.w	$a2, $s0, 12
	ldx.d	$a0, $a0, $s8
	add.d	$a1, $a1, $s3
	st.w	$a1, $s0, 8
	add.d	$a1, $a2, $s3
	st.w	$a1, $s0, 12
	ld.w	$a1, $a0, 0
	ld.w	$a2, $a0, 4
	sub.d	$a1, $a1, $s3
	st.w	$a1, $a0, 0
	sub.d	$a1, $a2, $s3
	st.w	$a1, $a0, 4
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	b	.LBB0_434
	.p2align	4, , 16
.LBB0_439:                              #   in Loop: Header=BB0_435 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 8
	ld.w	$a2, $s4, 16
	alsl.d	$a1, $s5, $a0, 3
	addi.d	$a0, $a1, -8
	sub.d	$a2, $a2, $s2
	addi.d	$a2, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	bltu	$s2, $s1, .LBB0_433
# %bb.440:                              #   in Loop: Header=BB0_435 Depth=2
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a0, $s5, 0
	addi.d	$a1, $s2, -2
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 8
	ld.w	$a2, $a0, 12
	add.d	$a1, $a1, $s3
	st.w	$a1, $a0, 8
	add.d	$a1, $a2, $s3
	st.w	$a1, $a0, 12
	ld.w	$a0, $fp, 0
	ld.w	$a1, $fp, 4
	sub.d	$a0, $a0, $s3
	st.w	$a0, $fp, 0
	sub.d	$a0, $a1, $s3
	st.w	$a0, $fp, 4
	b	.LBB0_434
.LBB0_441:                              #   in Loop: Header=BB0_435 Depth=2
	ori	$s3, $zero, 2
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	bltu	$s2, $a2, .LBB0_435
	.p2align	4, , 16
.LBB0_442:                              # %.preheader.i495
                                        #   in Loop: Header=BB0_6 Depth=1
	bltu	$a2, $s3, .LBB0_452
# %bb.443:                              # %.lr.ph86.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	addi.d	$fp, $a0, 1
	ori	$s1, $zero, 1
	b	.LBB0_446
	.p2align	4, , 16
.LBB0_444:                              #   in Loop: Header=BB0_446 Depth=2
	move	$s0, $s1
	addi.w	$s1, $s0, 1
	bltu	$s1, $a2, .LBB0_446
	b	.LBB0_452
	.p2align	4, , 16
.LBB0_445:                              #   in Loop: Header=BB0_446 Depth=2
	ld.d	$a2, $a0, 8
	st.d	$a2, $a1, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 16
	ld.d	$a1, $s4, 8
	addi.d	$a2, $a0, -1
	st.w	$a2, $s4, 16
	alsl.d	$a0, $s2, $a1, 3
	addi.d	$a1, $a0, 8
	sub.d	$a2, $a2, $s1
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s4, 16
	addi.w	$s1, $s0, 1
	bgeu	$s1, $a2, .LBB0_452
.LBB0_446:                              #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s5, 0
	addi.w	$s0, $s1, -1
	bstrpick.d	$a1, $s0, 31, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a0, $a1
	bstrpick.d	$s2, $s1, 31, 0
	slli.d	$a3, $s2, 3
	ldx.d	$a0, $a0, $a3
	ld.w	$a4, $a1, 8
	ld.w	$a3, $a0, 0
	addi.w	$a5, $a4, 31
	bgeu	$a3, $a5, .LBB0_449
# %bb.447:                              #   in Loop: Header=BB0_446 Depth=2
	ld.w	$a5, $a1, 12
	ld.w	$a6, $a0, 4
	add.w	$a7, $fp, $a5
	bgeu	$a7, $a6, .LBB0_445
# %bb.448:                              #   in Loop: Header=BB0_446 Depth=2
	bltu	$a4, $a3, .LBB0_450
	b	.LBB0_444
	.p2align	4, , 16
.LBB0_449:                              # %._crit_edge87.i
                                        #   in Loop: Header=BB0_446 Depth=2
	ld.w	$a5, $a1, 12
	ld.w	$a6, $a0, 4
	bgeu	$a4, $a3, .LBB0_444
.LBB0_450:                              #   in Loop: Header=BB0_446 Depth=2
	bgeu	$a5, $a6, .LBB0_444
# %bb.451:                              # %about_same_gap_p.exit.i
                                        #   in Loop: Header=BB0_446 Depth=2
	nor	$a4, $a4, $zero
	add.w	$a3, $a3, $a4
	bstrpick.d	$a4, $a3, 31, 0
	nor	$a5, $a5, $zero
	add.w	$a5, $a6, $a5
	bstrpick.d	$a6, $a5, 31, 0
	sltu	$a7, $a3, $a5
	masknez	$a3, $a3, $a7
	maskeqz	$a5, $a5, $a7
	or	$a3, $a5, $a3
	sub.d	$a4, $a6, $a4
	srai.d	$a5, $a4, 63
	xor	$a4, $a4, $a5
	ld.w	$a6, $s7, 32
	sub.d	$a4, $a4, $a5
	ori	$a5, $zero, 100
	mul.w	$a4, $a4, $a5
	div.wu	$a3, $a4, $a3
	bgeu	$a6, $a3, .LBB0_445
	b	.LBB0_444
	.p2align	4, , 16
.LBB0_452:                              # %compact_exons.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	beqz	$a2, .LBB0_466
# %bb.453:                              # %.lr.ph687.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 12
	ld.w	$a3, $a0, 4
	ld.w	$a4, $s6, 36
	sub.d	$a1, $a1, $a3
	addi.w	$a1, $a1, 1
	ld.d	$s1, $sp, 216                   # 8-byte Folded Reload
	move	$fp, $zero
	bgeu	$a1, $a4, .LBB0_457
# %bb.454:                              # %.lr.ph932.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$s0, $zero, 8
	.p2align	4, , 16
.LBB0_455:                              # %.lr.ph932
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s4, 16
	addi.w	$fp, $fp, 1
	bgeu	$fp, $a2, .LBB0_458
# %bb.456:                              # %.lr.ph687
                                        #   in Loop: Header=BB0_455 Depth=2
	ld.d	$a0, $s5, 0
	ldx.d	$a0, $a0, $s0
	ld.w	$a1, $a0, 12
	ld.w	$a3, $a0, 4
	ld.w	$a4, $s6, 36
	sub.d	$a1, $a1, $a3
	addi.w	$a1, $a1, 1
	addi.d	$s0, $s0, 8
	bltu	$a1, $a4, .LBB0_455
.LBB0_457:                              # %.thread579
                                        #   in Loop: Header=BB0_6 Depth=1
	beqz	$fp, .LBB0_459
.LBB0_458:                              # %.thread579.thread
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $s4, 8
	bstrpick.d	$a1, $fp, 31, 0
	alsl.d	$a1, $a1, $a0, 3
	sub.d	$a2, $a2, $fp
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 16
	sub.w	$a2, $a0, $fp
	st.w	$a2, $s4, 16
.LBB0_459:                              # %thread-pre-split583
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.w	$a0, $a2, -1
	bltz	$a0, .LBB0_464
# %bb.460:                              # %.lr.ph693.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a1, $s5, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 12
	ld.w	$a3, $a0, 4
	ld.w	$a4, $s6, 36
	sub.d	$a1, $a1, $a3
	addi.w	$a1, $a1, 1
	bgeu	$a1, $a4, .LBB0_464
# %bb.461:                              # %.lr.ph936.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.w	$fp, $a2, -2
	.p2align	4, , 16
.LBB0_462:                              # %.lr.ph936
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$s0, $fp, 1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 16
	addi.w	$a2, $a0, -1
	st.w	$a2, $s4, 16
	blez	$s0, .LBB0_464
# %bb.463:                              # %.lr.ph693
                                        #   in Loop: Header=BB0_462 Depth=2
	ld.d	$a0, $s5, 0
	slli.d	$a1, $fp, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 12
	ld.w	$a3, $a0, 4
	ld.w	$a4, $s6, 36
	sub.d	$a1, $a1, $a3
	addi.w	$a1, $a1, 1
	addi.w	$fp, $fp, -1
	bltu	$a1, $a4, .LBB0_462
	.p2align	4, , 16
.LBB0_464:                              # %.thread587
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s6, $s6, 8
	ld.d	$a0, $s1, 16
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	bltu	$a2, $s3, .LBB0_518
# %bb.465:                              # %.lr.ph.i506
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a0, $s6, -1
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	ld.wu	$a0, $a1, 16
	ld.d	$a1, $a1, 8
	addi.d	$a2, $s6, -3
	st.d	$a2, $sp, 416                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 488                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	st.d	$a2, $sp, 464                   # 8-byte Folded Spill
	ori	$a3, $zero, 1
	ori	$s0, $zero, 1
	ld.d	$s1, $sp, 456                   # 8-byte Folded Reload
	b	.LBB0_471
	.p2align	4, , 16
.LBB0_466:                              # %._crit_edge229.i.thread
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $s4, 32
	move	$a2, $zero
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_569
# %bb.467:                              #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s6, $s6, 8
	ld.d	$a0, $a1, 16
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	addi.d	$a5, $s4, 32
	move	$a7, $a2
	move	$t0, $a2
	b	.LBB0_548
.LBB0_468:                              #   in Loop: Header=BB0_471 Depth=2
	ori	$a5, $zero, 1
.LBB0_469:                              #   in Loop: Header=BB0_471 Depth=2
	ld.w	$a6, $s1, 32
	add.d	$a6, $a6, $a5
	st.w	$a6, $s1, 32
	ld.d	$a6, $a2, 24
	addi.w	$a7, $zero, -1
	lu32i.d	$a7, -4
	lu52i.d	$a7, $a7, 15
	and	$a6, $a6, $a7
	bstrins.d	$a6, $a5, 33, 32
	sub.d	$a4, $a6, $a4
	st.d	$a4, $a2, 24
	ld.d	$a5, $sp, 440                   # 8-byte Folded Reload
	ld.w	$a5, $a5, 44
	slli.d	$a5, $a5, 1
	addi.d	$a5, $a5, 4
	bstrpick.d	$a5, $a5, 21, 1
	slli.d	$a5, $a5, 35
	bstrins.d	$a4, $zero, 55, 34
	or	$a4, $a5, $a4
	st.d	$a4, $a2, 24
	.p2align	4, , 16
.LBB0_470:                              #   in Loop: Header=BB0_471 Depth=2
	ld.wu	$a2, $s1, 16
	addi.d	$a3, $a3, 1
	bgeu	$a3, $a2, .LBB0_487
.LBB0_471:                              #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_474 Depth 3
                                        #       Child Loop BB0_477 Depth 3
                                        #       Child Loop BB0_483 Depth 3
	ld.d	$a4, $s5, 0
	alsl.d	$a2, $a3, $a4, 3
	slli.d	$a5, $a3, 3
	ld.d	$a2, $a2, -8
	ldx.d	$a5, $a4, $a5
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	st.w	$a4, $a2, 28
	ld.w	$a4, $a5, 4
	ld.wu	$a7, $a2, 12
	sub.w	$a4, $a4, $a7
	bne	$a4, $s0, .LBB0_470
# %bb.472:                              #   in Loop: Header=BB0_471 Depth=2
	ld.wu	$a4, $a2, 8
	ld.d	$a6, $sp, 440                   # 8-byte Folded Reload
	ld.wu	$t0, $a6, 44
	add.d	$a4, $s6, $a4
	sub.d	$a6, $a4, $t0
	ld.d	$t1, $sp, 488                   # 8-byte Folded Reload
	add.d	$t1, $t1, $a7
	sub.d	$t3, $t1, $t0
	ld.bu	$t2, $a6, 0
	ld.bu	$t6, $t3, 0
	ld.wu	$a5, $a5, 0
	addi.w	$a6, $t0, 0
	xor	$t3, $t2, $t6
	sltui	$t3, $t3, 1
	bltu	$a6, $s3, .LBB0_479
# %bb.473:                              # %.lr.ph.i.i548.preheader
                                        #   in Loop: Header=BB0_471 Depth=2
	move	$t7, $zero
	move	$t5, $zero
	sub.d	$t4, $s0, $t0
	.p2align	4, , 16
.LBB0_474:                              # %.lr.ph.i.i548
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_471 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$t8, $t1, $t4
	xor	$t2, $t2, $t8
	sltui	$t2, $t2, 1
	add.w	$t7, $t7, $t2
	slt	$fp, $t3, $t7
	ldx.bu	$t2, $a4, $t4
	maskeqz	$t7, $t7, $fp
	masknez	$fp, $t3, $fp
	or	$t7, $t7, $fp
	xor	$t6, $t2, $t6
	sltui	$t6, $t6, 1
	add.w	$t5, $t5, $t6
	slt	$t6, $t3, $t5
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $t3, $t6
	or	$t5, $t5, $t6
	slt	$t6, $t5, $t7
	masknez	$fp, $t5, $t6
	maskeqz	$t6, $t7, $t6
	or	$t6, $t6, $fp
	xor	$fp, $t2, $t8
	sltui	$fp, $fp, 1
	add.w	$t3, $t3, $fp
	slt	$fp, $t3, $t6
	addi.w	$t6, $t6, -1
	maskeqz	$t6, $t6, $fp
	masknez	$t3, $t3, $fp
	addi.d	$t4, $t4, 1
	or	$t3, $t6, $t3
	move	$t6, $t8
	bnez	$t4, .LBB0_474
# %bb.475:                              # %SWscore.exit.i
                                        #   in Loop: Header=BB0_471 Depth=2
	bltu	$t3, $a6, .LBB0_470
# %bb.476:                              #   in Loop: Header=BB0_471 Depth=2
	ld.d	$t2, $sp, 472                   # 8-byte Folded Reload
	ldx.bu	$t2, $t2, $a5
	ld.bu	$t6, $t1, 0
	move	$t5, $zero
	move	$t4, $zero
	xor	$t1, $t2, $t6
	sltui	$t1, $t1, 1
	addi.d	$t0, $t0, -1
	add.d	$t3, $s6, $a5
	ld.d	$t7, $sp, 464                   # 8-byte Folded Reload
	add.d	$a7, $t7, $a7
	.p2align	4, , 16
.LBB0_477:                              # %.lr.ph.i30.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_471 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$t7, $a7, 0
	xor	$t2, $t2, $t7
	sltui	$t2, $t2, 1
	add.w	$t5, $t5, $t2
	slt	$t8, $t1, $t5
	ld.bu	$t2, $t3, 0
	maskeqz	$t5, $t5, $t8
	masknez	$t8, $t1, $t8
	or	$t5, $t5, $t8
	xor	$t6, $t2, $t6
	sltui	$t6, $t6, 1
	add.w	$t4, $t4, $t6
	slt	$t6, $t1, $t4
	maskeqz	$t4, $t4, $t6
	masknez	$t6, $t1, $t6
	or	$t4, $t4, $t6
	slt	$t6, $t4, $t5
	masknez	$t8, $t4, $t6
	maskeqz	$t6, $t5, $t6
	or	$t6, $t6, $t8
	xor	$t8, $t2, $t7
	sltui	$t8, $t8, 1
	add.w	$t1, $t1, $t8
	slt	$t8, $t1, $t6
	addi.w	$t6, $t6, -1
	maskeqz	$t6, $t6, $t8
	masknez	$t1, $t1, $t8
	or	$t1, $t6, $t1
	addi.d	$t0, $t0, -1
	addi.d	$t3, $t3, 1
	addi.d	$a7, $a7, 1
	move	$t6, $t7
	bnez	$t0, .LBB0_477
# %bb.478:                              # %SWscore.exit39.i
                                        #   in Loop: Header=BB0_471 Depth=2
	bltu	$t1, $a6, .LBB0_470
	b	.LBB0_481
	.p2align	4, , 16
.LBB0_479:                              # %SWscore.exit.thread.i
                                        #   in Loop: Header=BB0_471 Depth=2
	bltu	$t3, $t0, .LBB0_470
# %bb.480:                              # %.thread.i540
                                        #   in Loop: Header=BB0_471 Depth=2
	ld.d	$a7, $sp, 472                   # 8-byte Folded Reload
	ldx.bu	$a7, $a7, $a5
	ld.bu	$t0, $t1, 0
	xor	$a7, $a7, $t0
	sltui	$t1, $a7, 1
	bltu	$t1, $a6, .LBB0_470
.LBB0_481:                              #   in Loop: Header=BB0_471 Depth=2
	ld.h	$a4, $a4, 0
	st.h	$a4, $sp, 496
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	ldx.h	$a4, $a4, $a5
	st.h	$a4, $sp, 498
	beqz	$a0, .LBB0_470
# %bb.482:                              # %.lr.ph.i542.preheader
                                        #   in Loop: Header=BB0_471 Depth=2
	move	$a4, $zero
	move	$a5, $a1
	move	$a6, $a0
	.p2align	4, , 16
.LBB0_483:                              # %.lr.ph.i542
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_471 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a7, $a5, 0
	ld.w	$t0, $sp, 496
	beq	$t0, $a7, .LBB0_468
# %bb.484:                              #   in Loop: Header=BB0_483 Depth=3
	ld.w	$a7, $a5, 4
	ld.w	$t0, $sp, 496
	beq	$t0, $a7, .LBB0_486
# %bb.485:                              #   in Loop: Header=BB0_483 Depth=3
	lu52i.d	$a7, $zero, -16
	add.d	$a4, $a4, $a7
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 8
	bnez	$a6, .LBB0_483
	b	.LBB0_470
.LBB0_486:                              #   in Loop: Header=BB0_471 Depth=2
	addi.w	$a5, $zero, -1
	b	.LBB0_469
.LBB0_487:                              # %.preheader209.i
                                        #   in Loop: Header=BB0_6 Depth=1
	bltu	$a2, $s3, .LBB0_518
# %bb.488:                              # %.lr.ph228.i.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a4, $zero, 1
	b	.LBB0_491
	.p2align	4, , 16
.LBB0_489:                              # %.loopexit208.i
                                        #   in Loop: Header=BB0_491 Depth=2
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 16
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 376                   # 8-byte Folded Reload
.LBB0_490:                              #   in Loop: Header=BB0_491 Depth=2
	addi.d	$a4, $a4, 1
	bstrpick.d	$a0, $a2, 31, 0
	bgeu	$a4, $a0, .LBB0_518
.LBB0_491:                              # %.lr.ph228.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_496 Depth 3
                                        #         Child Loop BB0_498 Depth 4
                                        #         Child Loop BB0_501 Depth 4
                                        #         Child Loop BB0_507 Depth 4
                                        #       Child Loop BB0_516 Depth 3
	ld.d	$a0, $s5, 0
	alsl.d	$a1, $a4, $a0, 3
	slli.d	$a3, $a4, 3
	ldx.d	$a3, $a0, $a3
	ld.d	$s4, $a1, -8
	ld.w	$s0, $a3, 4
	ld.w	$fp, $s4, 12
	bltu	$fp, $s0, .LBB0_490
# %bb.492:                              #   in Loop: Header=BB0_491 Depth=2
	st.d	$a4, $sp, 376                   # 8-byte Folded Spill
	sub.d	$s1, $fp, $s0
	addi.w	$s2, $s1, 2
	bstrpick.d	$s5, $s2, 31, 0
	ori	$a0, $zero, 28
	mul.d	$a0, $s5, $a0
	st.d	$a3, $sp, 384                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 384                   # 8-byte Folded Reload
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	beqz	$s2, .LBB0_489
# %bb.493:                              # %.lr.ph221.i
                                        #   in Loop: Header=BB0_491 Depth=2
	move	$a2, $zero
	st.d	$zero, $sp, 400                 # 8-byte Folded Spill
	ld.w	$a1, $s4, 8
	st.d	$s4, $sp, 368                   # 8-byte Folded Spill
	ld.w	$a4, $s4, 12
	nor	$a5, $s1, $zero
	ld.d	$a6, $sp, 440                   # 8-byte Folded Reload
	ld.wu	$a3, $a6, 44
	add.w	$s2, $a1, $a5
	add.w	$s7, $a4, $a5
	ld.w	$a7, $a7, 0
	sub.d	$a0, $zero, $a3
	ld.wu	$a5, $a6, 16
	st.d	$a5, $sp, 424                   # 8-byte Folded Spill
	ld.d	$a5, $a6, 8
	st.d	$a5, $sp, 392                   # 8-byte Folded Spill
	ori	$a5, $zero, 1
	sub.d	$a5, $a5, $a3
	st.d	$a5, $sp, 432                   # 8-byte Folded Spill
	addi.d	$t0, $s0, -1
	add.d	$a1, $t0, $a1
	sub.w	$t3, $a1, $fp
	add.d	$a1, $t0, $a4
	sub.w	$t4, $a1, $fp
	addi.d	$a1, $a3, -1
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	move	$t6, $a7
	b	.LBB0_496
	.p2align	4, , 16
.LBB0_494:                              # %.loopexit.i512
                                        #   in Loop: Header=BB0_496 Depth=3
	st.w	$zero, $t7, 24
.LBB0_495:                              #   in Loop: Header=BB0_496 Depth=3
	addi.d	$a2, $a2, 1
	addi.w	$t3, $t3, 1
	addi.w	$t4, $t4, 1
	addi.w	$t6, $t6, 1
	beq	$a2, $s5, .LBB0_513
.LBB0_496:                              #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_491 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_498 Depth 4
                                        #         Child Loop BB0_501 Depth 4
                                        #         Child Loop BB0_507 Depth 4
	add.d	$a1, $s2, $a2
	ori	$a4, $zero, 28
	mul.d	$a4, $a2, $a4
	ld.d	$a5, $sp, 480                   # 8-byte Folded Reload
	add.d	$t7, $a5, $a4
	stx.w	$a1, $a5, $a4
	add.d	$a4, $s7, $a2
	st.w	$a4, $t7, 4
	add.w	$t1, $a7, $a2
	st.w	$t1, $t7, 8
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$t8, $s6, $a1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$a6, $sp, 488                   # 8-byte Folded Reload
	add.d	$s1, $a6, $a1
	ldx.bu	$fp, $t8, $a0
	ldx.bu	$a5, $s1, $a0
	xor	$a1, $fp, $a5
	sltui	$a1, $a1, 1
	addi.w	$s8, $a3, 0
	bltu	$a3, $s3, .LBB0_503
# %bb.497:                              # %.lr.ph.i.i.i.preheader
                                        #   in Loop: Header=BB0_496 Depth=3
	move	$s4, $s7
	move	$s7, $s2
	move	$s2, $zero
	move	$t0, $zero
	bstrpick.d	$a4, $t6, 31, 0
	add.d	$ra, $s6, $a4
	bstrpick.d	$a4, $t4, 31, 0
	ld.d	$t2, $sp, 464                   # 8-byte Folded Reload
	add.d	$s0, $t2, $a4
	bstrpick.d	$t2, $t3, 31, 0
	add.d	$t2, $s6, $t2
	add.d	$s3, $a6, $a4
	ld.d	$a4, $sp, 432                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_498:                              # %.lr.ph.i.i.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_491 Depth=2
                                        #       Parent Loop BB0_496 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.bu	$t5, $s3, $a4
	xor	$fp, $fp, $t5
	sltui	$fp, $fp, 1
	add.w	$s2, $s2, $fp
	slt	$a6, $a1, $s2
	ldx.bu	$fp, $t2, $a4
	maskeqz	$s2, $s2, $a6
	masknez	$a6, $a1, $a6
	or	$s2, $s2, $a6
	xor	$a5, $fp, $a5
	sltui	$a5, $a5, 1
	add.w	$a5, $t0, $a5
	slt	$a6, $a1, $a5
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $a1, $a6
	or	$t0, $a5, $a6
	slt	$a5, $t0, $s2
	masknez	$a6, $t0, $a5
	maskeqz	$a5, $s2, $a5
	or	$a5, $a5, $a6
	xor	$a6, $fp, $t5
	sltui	$a6, $a6, 1
	add.w	$a1, $a1, $a6
	slt	$a6, $a1, $a5
	addi.w	$a5, $a5, -1
	maskeqz	$a5, $a5, $a6
	masknez	$a1, $a1, $a6
	addi.d	$a4, $a4, 1
	or	$a1, $a5, $a1
	move	$a5, $t5
	bnez	$a4, .LBB0_498
# %bb.499:                              # %SWscore.exit.i.i
                                        #   in Loop: Header=BB0_496 Depth=3
	ori	$s3, $zero, 2
	move	$s2, $s7
	move	$s7, $s4
	bltu	$a1, $s8, .LBB0_494
# %bb.500:                              #   in Loop: Header=BB0_496 Depth=3
	bstrpick.d	$t1, $t1, 31, 0
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $t1
	ld.bu	$a4, $s1, 0
	move	$t2, $zero
	move	$t5, $zero
	xor	$a5, $a1, $a4
	sltui	$fp, $a5, 1
	ld.d	$t0, $sp, 408                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_501:                              # %.lr.ph.i30.i.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_491 Depth=2
                                        #       Parent Loop BB0_496 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$a5, $s0, 0
	xor	$a1, $a1, $a5
	sltui	$a1, $a1, 1
	add.w	$a6, $t2, $a1
	slt	$t2, $fp, $a6
	ld.bu	$a1, $ra, 0
	maskeqz	$a6, $a6, $t2
	masknez	$t2, $fp, $t2
	or	$t2, $a6, $t2
	xor	$a4, $a1, $a4
	sltui	$a4, $a4, 1
	add.w	$a4, $t5, $a4
	slt	$a6, $fp, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $fp, $a6
	or	$t5, $a4, $a6
	slt	$a4, $t5, $t2
	masknez	$a6, $t5, $a4
	maskeqz	$a4, $t2, $a4
	or	$a4, $a4, $a6
	xor	$a6, $a1, $a5
	sltui	$a6, $a6, 1
	add.w	$a6, $fp, $a6
	slt	$fp, $a6, $a4
	addi.w	$a4, $a4, -1
	maskeqz	$a4, $a4, $fp
	masknez	$a6, $a6, $fp
	or	$fp, $a4, $a6
	addi.d	$t0, $t0, -1
	addi.d	$ra, $ra, 1
	addi.d	$s0, $s0, 1
	move	$a4, $a5
	bnez	$t0, .LBB0_501
# %bb.502:                              # %SWscore.exit39.i.i
                                        #   in Loop: Header=BB0_496 Depth=3
	bltu	$fp, $s8, .LBB0_494
	b	.LBB0_505
	.p2align	4, , 16
.LBB0_503:                              # %SWscore.exit.thread.i.i
                                        #   in Loop: Header=BB0_496 Depth=3
	bltu	$a1, $a3, .LBB0_494
# %bb.504:                              # %.thread.i.i
                                        #   in Loop: Header=BB0_496 Depth=3
	bstrpick.d	$t1, $t1, 31, 0
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $t1
	ld.bu	$a4, $s1, 0
	xor	$a1, $a1, $a4
	sltui	$fp, $a1, 1
	bltu	$fp, $s8, .LBB0_494
.LBB0_505:                              #   in Loop: Header=BB0_496 Depth=3
	ld.h	$a1, $t8, 0
	st.h	$a1, $sp, 496
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	ldx.h	$a1, $a1, $t1
	st.h	$a1, $sp, 498
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	beqz	$a1, .LBB0_494
# %bb.506:                              # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB0_496 Depth=3
	move	$a1, $zero
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 424                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_507:                              # %.lr.ph.i.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_491 Depth=2
                                        #       Parent Loop BB0_496 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a5, $a4, 0
	ld.w	$a6, $sp, 496
	beq	$a6, $a5, .LBB0_510
# %bb.508:                              #   in Loop: Header=BB0_507 Depth=4
	ld.w	$a5, $a4, 4
	ld.w	$a6, $sp, 496
	beq	$a6, $a5, .LBB0_511
# %bb.509:                              #   in Loop: Header=BB0_507 Depth=4
	addi.d	$a1, $a1, 1
	addi.d	$t0, $t0, -1
	addi.d	$a4, $a4, 8
	bnez	$t0, .LBB0_507
	b	.LBB0_494
.LBB0_510:                              #   in Loop: Header=BB0_496 Depth=3
	ori	$a4, $zero, 1
	b	.LBB0_512
.LBB0_511:                              #   in Loop: Header=BB0_496 Depth=3
	addi.d	$a4, $zero, -1
.LBB0_512:                              #   in Loop: Header=BB0_496 Depth=3
	st.w	$a1, $t7, 12
	st.w	$a4, $t7, 24
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 400                   # 8-byte Folded Spill
	b	.LBB0_495
	.p2align	4, , 16
.LBB0_513:                              # %._crit_edge.i514
                                        #   in Loop: Header=BB0_491 Depth=2
	ori	$a1, $zero, 1
	ld.d	$a5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 368                   # 8-byte Folded Reload
	bne	$a2, $a1, .LBB0_489
# %bb.514:                              # %.lr.ph226.i
                                        #   in Loop: Header=BB0_491 Depth=2
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	addi.d	$a1, $a0, 12
	b	.LBB0_516
	.p2align	4, , 16
.LBB0_515:                              #   in Loop: Header=BB0_516 Depth=3
	addi.d	$s5, $s5, -1
	addi.d	$a1, $a1, 28
	beqz	$s5, .LBB0_489
.LBB0_516:                              #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_491 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $a1, 12
	beqz	$a2, .LBB0_515
# %bb.517:                              #   in Loop: Header=BB0_516 Depth=3
	ld.d	$a4, $sp, 456                   # 8-byte Folded Reload
	ld.w	$a3, $a4, 32
	add.d	$a3, $a3, $a2
	st.w	$a3, $a4, 32
	ld.d	$a3, $a6, 24
	bstrins.d	$a3, $a2, 33, 32
	st.d	$a3, $a6, 24
	ld.w	$a2, $a1, 0
	bstrins.d	$a3, $a2, 63, 56
	st.d	$a3, $a6, 24
	ld.d	$a2, $sp, 440                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 44
	slli.d	$a2, $a2, 1
	addi.d	$a2, $a2, 4
	bstrpick.d	$a2, $a2, 21, 1
	slli.d	$a2, $a2, 35
	bstrins.d	$a3, $zero, 55, 34
	or	$a2, $a2, $a3
	st.d	$a2, $a6, 24
	ld.w	$a2, $a1, -12
	st.w	$a2, $a6, 8
	ld.w	$a2, $a1, -8
	st.w	$a2, $a6, 12
	addi.d	$a2, $a2, 1
	st.w	$a2, $a5, 4
	ld.w	$a2, $a1, -4
	st.w	$a2, $a5, 0
	b	.LBB0_515
	.p2align	4, , 16
.LBB0_518:                              # %._crit_edge229.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.w	$a0, $s4, 32
	addi.d	$a5, $s4, 32
	bnez	$a0, .LBB0_549
# %bb.519:                              # %.preheader.i502
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.w	$a0, $a2, 0
	bltu	$a0, $s3, .LBB0_546
# %bb.520:                              # %.lr.ph244.i.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	st.d	$a5, $sp, 360                   # 8-byte Folded Spill
	move	$t0, $zero
	move	$a7, $zero
	ori	$t1, $zero, 1
                                        # implicit-def: $r4
                                        # kill: killed $r4
	ori	$a5, $zero, 1
	b	.LBB0_523
	.p2align	4, , 16
.LBB0_521:                              #   in Loop: Header=BB0_523 Depth=2
	bstrpick.d	$a0, $a3, 55, 34
	add.w	$t0, $a0, $t0
.LBB0_522:                              #   in Loop: Header=BB0_523 Depth=2
	addi.d	$t1, $t1, 1
	bstrpick.d	$a0, $a2, 31, 0
	bgeu	$t1, $a0, .LBB0_547
.LBB0_523:                              # %.lr.ph244.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_530 Depth 3
                                        #         Child Loop BB0_532 Depth 4
	ld.d	$a0, $s5, 0
	alsl.d	$a1, $t1, $a0, 3
	slli.d	$a3, $t1, 3
	ld.d	$s7, $a1, -8
	ldx.d	$s8, $a0, $a3
	ld.w	$a0, $s7, 12
	ld.w	$a1, $s8, 4
	addi.w	$a3, $a0, 1
	bltu	$a3, $a1, .LBB0_522
# %bb.524:                              #   in Loop: Header=BB0_523 Depth=2
	ld.d	$a3, $s7, 24
	slli.d	$a4, $a3, 30
	srai.d	$a4, $a4, 62
	bge	$a4, $a5, .LBB0_521
# %bb.525:                              #   in Loop: Header=BB0_523 Depth=2
	ld.d	$a6, $sp, 272                   # 8-byte Folded Reload
	bge	$a6, $a4, .LBB0_542
# %bb.526:                              #   in Loop: Header=BB0_523 Depth=2
	sub.d	$a0, $a0, $a1
	addi.w	$a1, $a0, 2
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	beqz	$a1, .LBB0_543
# %bb.527:                              # %.lr.ph236.i
                                        #   in Loop: Header=BB0_523 Depth=2
	st.d	$t1, $sp, 368                   # 8-byte Folded Spill
	st.d	$t0, $sp, 376                   # 8-byte Folded Spill
	st.d	$a7, $sp, 384                   # 8-byte Folded Spill
	move	$a4, $zero
	move	$a3, $zero
	move	$a2, $zero
	nor	$a0, $a0, $zero
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	st.d	$s7, $sp, 416                   # 8-byte Folded Spill
	st.d	$s8, $sp, 408                   # 8-byte Folded Spill
	b	.LBB0_530
	.p2align	4, , 16
.LBB0_528:                              #   in Loop: Header=BB0_530 Depth=3
	ld.d	$a4, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 464                   # 8-byte Folded Reload
.LBB0_529:                              # %splice_score_compare.exit.thread.i
                                        #   in Loop: Header=BB0_530 Depth=3
	addi.w	$a4, $a4, 1
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	beq	$a4, $a0, .LBB0_541
.LBB0_530:                              #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_523 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_532 Depth 4
	st.d	$a2, $sp, 464                   # 8-byte Folded Spill
	st.d	$a3, $sp, 480                   # 8-byte Folded Spill
	ld.w	$a0, $s7, 8
	ld.w	$a1, $s7, 12
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	add.d	$a2, $a4, $a2
	add.w	$fp, $a0, $a2
	st.w	$fp, $sp, 496
	add.w	$s0, $a1, $a2
	st.w	$s0, $sp, 500
	ld.w	$a0, $s8, 0
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	ld.w	$a1, $s2, 44
	st.d	$a4, $sp, 472                   # 8-byte Folded Spill
	add.w	$s1, $a0, $a4
	st.w	$s1, $sp, 504
	slli.d	$a0, $a1, 1
	addi.d	$a0, $a0, 4
	bstrpick.d	$a0, $a0, 31, 1
	slli.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 16
	move	$s2, $a0
	st.w	$zero, $sp, 516
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 508
	beqz	$a1, .LBB0_534
# %bb.531:                              # %.thread.us.us.i.preheader
                                        #   in Loop: Header=BB0_530 Depth=3
	move	$s5, $zero
	move	$s3, $zero
	ori	$s8, $zero, 4
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 488                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_532:                              # %.thread.us.us.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_523 Depth=2
                                        #       Parent Loop BB0_530 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $s4, 8
	add.d	$a0, $a0, $s8
	addi.d	$a0, $a0, -4
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 8
	addi.d	$a2, $sp, 496
	st.d	$a0, $sp, 0
	move	$a0, $s6
	move	$a1, $s7
	move	$a3, $s5
	move	$a4, $fp
	move	$a5, $s0
	move	$a6, $s1
	move	$a7, $s2
	pcaddu18i	$ra, %call36(compute_max_score_1)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 8
	add.d	$a0, $a0, $s8
	addi.w	$a1, $zero, -1
	st.d	$a1, $sp, 8
	addi.d	$a2, $sp, 496
	st.d	$a0, $sp, 0
	move	$a0, $s6
	move	$a1, $s7
	move	$a3, $s5
	move	$a4, $fp
	move	$a5, $s0
	move	$a6, $s1
	move	$a7, $s2
	pcaddu18i	$ra, %call36(compute_max_score_1)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s4, 16
	addi.d	$s3, $s3, 1
	addi.d	$s8, $s8, 8
	addi.w	$s5, $s5, 1
	bltu	$s3, $a0, .LBB0_532
# %bb.533:                              # %compute_max_score.exit.loopexit
                                        #   in Loop: Header=BB0_530 Depth=3
	ld.w	$fp, $sp, 512
	ori	$s3, $zero, 2
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 408                   # 8-byte Folded Reload
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 480                   # 8-byte Folded Reload
	bltu	$fp, $a3, .LBB0_528
	b	.LBB0_535
	.p2align	4, , 16
.LBB0_534:                              #   in Loop: Header=BB0_530 Depth=3
	move	$fp, $zero
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 480                   # 8-byte Folded Reload
	bltu	$fp, $a3, .LBB0_528
.LBB0_535:                              #   in Loop: Header=BB0_530 Depth=3
	ld.d	$a4, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 464                   # 8-byte Folded Reload
	bgeu	$a3, $fp, .LBB0_538
# %bb.536:                              # %.splice_score_compare.exit.thread198_crit_edge.i
                                        #   in Loop: Header=BB0_530 Depth=3
	ld.w	$a1, $sp, 508
	ld.w	$a0, $sp, 516
.LBB0_537:                              # %splice_score_compare.exit.thread198.i
                                        #   in Loop: Header=BB0_530 Depth=3
	ld.w	$a2, $sp, 520
	st.d	$a2, $sp, 392                   # 8-byte Folded Spill
	move	$a2, $a0
	move	$a3, $fp
	st.d	$a1, $sp, 400                   # 8-byte Folded Spill
	b	.LBB0_529
	.p2align	4, , 16
.LBB0_538:                              #   in Loop: Header=BB0_530 Depth=3
	ld.w	$a0, $sp, 516
	bltu	$a0, $a2, .LBB0_529
# %bb.539:                              #   in Loop: Header=BB0_530 Depth=3
	ld.w	$a1, $sp, 508
	bltu	$a2, $a0, .LBB0_537
# %bb.540:                              #   in Loop: Header=BB0_530 Depth=3
	ld.d	$a5, $sp, 400                   # 8-byte Folded Reload
	bgeu	$a1, $a5, .LBB0_529
	b	.LBB0_537
.LBB0_541:                              # %._crit_edge237.loopexit.i
                                        #   in Loop: Header=BB0_523 Depth=2
	ld.w	$a2, $s4, 16
	ori	$a5, $zero, 1
	ld.d	$a7, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 368                   # 8-byte Folded Reload
	b	.LBB0_544
.LBB0_542:                              #   in Loop: Header=BB0_523 Depth=2
	bstrpick.d	$a0, $a3, 55, 34
	b	.LBB0_545
.LBB0_543:                              #   in Loop: Header=BB0_523 Depth=2
	move	$a3, $zero
.LBB0_544:                              # %._crit_edge237.i
                                        #   in Loop: Header=BB0_523 Depth=2
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	slt	$a1, $zero, $a0
	maskeqz	$a1, $a3, $a1
	add.w	$t0, $a1, $t0
	srli.d	$a0, $a0, 31
	and	$a0, $a0, $a3
.LBB0_545:                              #   in Loop: Header=BB0_523 Depth=2
	add.w	$a7, $a0, $a7
	b	.LBB0_522
.LBB0_546:                              #   in Loop: Header=BB0_6 Depth=1
	move	$a7, $zero
	move	$t0, $zero
	b	.LBB0_548
.LBB0_547:                              #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a5, $sp, 360                   # 8-byte Folded Reload
.LBB0_548:                              # %._crit_edge245.i
                                        #   in Loop: Header=BB0_6 Depth=1
	sltu	$a0, $t0, $a7
	sub.d	$a0, $zero, $a0
	ori	$a0, $a0, 1
	st.w	$a0, $a5, 0
.LBB0_549:                              #   in Loop: Header=BB0_6 Depth=1
	addi.w	$a0, $a2, 0
	bltu	$a0, $s3, .LBB0_569
# %bb.550:                              # %.lr.ph271.i.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$fp, $zero, 1
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	b	.LBB0_554
.LBB0_551:                              # %._crit_edge258.loopexit.i
                                        #   in Loop: Header=BB0_554 Depth=2
	ld.wu	$a0, $s5, 24
	slli.d	$a2, $s3, 56
	bstrpick.d	$a1, $s4, 21, 0
	slli.d	$a1, $a1, 34
	ori	$s3, $zero, 2
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
.LBB0_552:                              # %._crit_edge258.i
                                        #   in Loop: Header=BB0_554 Depth=2
	ld.d	$a3, $sp, 432                   # 8-byte Folded Reload
	andi	$a3, $a3, 3
	bstrins.d	$a0, $a3, 63, 32
	or	$a0, $a0, $a2
	add.d	$a0, $a0, $a1
	st.d	$a0, $s5, 24
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	st.w	$a0, $s5, 8
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	st.w	$a0, $s5, 12
	addi.d	$a0, $a0, 1
	st.w	$a0, $s8, 4
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	st.w	$a0, $s8, 0
	ld.w	$a2, $s4, 16
.LBB0_553:                              #   in Loop: Header=BB0_554 Depth=2
	addi.d	$fp, $fp, 1
	bstrpick.d	$a0, $a2, 31, 0
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	bgeu	$fp, $a0, .LBB0_569
.LBB0_554:                              # %.lr.ph271.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_561 Depth 3
	ld.d	$a1, $s5, 0
	alsl.d	$a0, $fp, $a1, 3
	ld.d	$s5, $a0, -8
	slli.d	$a3, $fp, 3
	ld.d	$a0, $s5, 24
	ldx.d	$s8, $a1, $a3
	bltz	$a0, .LBB0_556
# %bb.555:                              #   in Loop: Header=BB0_554 Depth=2
	ld.w	$a1, $a5, 0
	slli.d	$a3, $a0, 30
	srai.d	$a3, $a3, 62
	mul.w	$a1, $a1, $a3
	bgtz	$a1, .LBB0_553
.LBB0_556:                              #   in Loop: Header=BB0_554 Depth=2
	ld.w	$a1, $s5, 12
	ld.w	$a3, $s8, 4
	addi.w	$a4, $a1, 1
	bltu	$a4, $a3, .LBB0_553
# %bb.557:                              #   in Loop: Header=BB0_554 Depth=2
	sub.w	$a2, $a1, $a3
	addi.w	$a4, $zero, -2
	beq	$a2, $a4, .LBB0_568
# %bb.558:                              # %.lr.ph257.i
                                        #   in Loop: Header=BB0_554 Depth=2
	move	$s4, $zero
	move	$s1, $zero
	addi.w	$s0, $zero, -1
	sub.d	$s2, $a3, $a1
	move	$s3, $s0
	b	.LBB0_561
	.p2align	4, , 16
.LBB0_559:                              #   in Loop: Header=BB0_561 Depth=3
	move	$a5, $s7
.LBB0_560:                              # %splice_score_compare.exit185.thread.i
                                        #   in Loop: Header=BB0_561 Depth=3
	addi.d	$s0, $s0, 1
	add.w	$a0, $s2, $s0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB0_551
.LBB0_561:                              #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_554 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $s5, 8
	ld.w	$a1, $s5, 12
	add.d	$a2, $s2, $s0
	add.d	$a0, $a2, $a0
	st.w	$a0, $sp, 496
	add.d	$a0, $a2, $a1
	st.w	$a0, $sp, 500
	ld.w	$a0, $s8, 0
	add.d	$a0, $s0, $a0
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 504
	move	$s7, $a5
	ld.w	$a3, $a5, 0
	addi.d	$a2, $sp, 496
	move	$a0, $s6
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(compute_max_score)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 512
	bltu	$a0, $s4, .LBB0_559
# %bb.562:                              #   in Loop: Header=BB0_561 Depth=3
	move	$a5, $s7
	bgeu	$s4, $a0, .LBB0_565
# %bb.563:                              # %.splice_score_compare.exit185.thread202_crit_edge.i
                                        #   in Loop: Header=BB0_561 Depth=3
	ld.w	$a2, $sp, 508
	ld.w	$a1, $sp, 516
.LBB0_564:                              # %splice_score_compare.exit185.thread202.i
                                        #   in Loop: Header=BB0_561 Depth=3
	ld.w	$a3, $sp, 496
	st.d	$a3, $sp, 480                   # 8-byte Folded Spill
	ld.w	$a3, $sp, 500
	st.d	$a3, $sp, 472                   # 8-byte Folded Spill
	ld.w	$a3, $sp, 504
	st.d	$a3, $sp, 464                   # 8-byte Folded Spill
	ld.w	$a3, $sp, 520
	st.d	$a3, $sp, 432                   # 8-byte Folded Spill
	move	$s1, $a1
	move	$s4, $a0
	move	$s3, $a2
	b	.LBB0_560
	.p2align	4, , 16
.LBB0_565:                              #   in Loop: Header=BB0_561 Depth=3
	ld.w	$a1, $sp, 516
	bltu	$a1, $s1, .LBB0_560
# %bb.566:                              #   in Loop: Header=BB0_561 Depth=3
	ld.w	$a2, $sp, 508
	bltu	$s1, $a1, .LBB0_564
# %bb.567:                              #   in Loop: Header=BB0_561 Depth=3
	bgeu	$a2, $s3, .LBB0_560
	b	.LBB0_564
.LBB0_568:                              #   in Loop: Header=BB0_554 Depth=2
	move	$a1, $zero
	lu52i.d	$a2, $zero, -16
	b	.LBB0_552
	.p2align	4, , 16
.LBB0_569:                              # %slide_intron.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$fp, $a0, 8
	ld.w	$a4, $a0, 16
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s0, $s2, 16
	ldptr.w	$a3, $s2, 4148
	st.d	$zero, $s4, 0
	addi.d	$a0, $a4, 1
	st.w	$a0, $sp, 496
	addi.d	$a0, $a3, 1
	st.w	$a0, $sp, 500
	addi.w	$a1, $a2, -1
	st.d	$zero, $sp, 504
	bltz	$a1, .LBB0_617
# %bb.570:                              # %.lr.ph265.preheader.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$s8, $zero, 2
	move	$a0, $zero
	move	$s2, $zero
	move	$s3, $zero
	move	$s6, $zero
	addi.d	$a2, $fp, -1
	st.d	$a2, $sp, 432                   # 8-byte Folded Spill
	addi.d	$a2, $s0, -1
	st.d	$a2, $sp, 424                   # 8-byte Folded Spill
	addi.d	$s7, $sp, 496
	st.d	$a4, $sp, 472                   # 8-byte Folded Spill
	st.d	$a4, $sp, 488                   # 8-byte Folded Spill
	st.d	$a3, $sp, 480                   # 8-byte Folded Spill
	st.d	$a3, $sp, 464                   # 8-byte Folded Spill
	b	.LBB0_573
	.p2align	4, , 16
.LBB0_571:                              #   in Loop: Header=BB0_573 Depth=2
	move	$a6, $zero
	move	$a3, $zero
.LBB0_572:                              # %._crit_edge.i527
                                        #   in Loop: Header=BB0_573 Depth=2
	ld.w	$a0, $s4, 8
	ld.w	$a4, $s4, 12
	add.d	$a1, $a2, $a1
	sub.d	$a1, $a3, $a1
	add.d	$a1, $a1, $a0
	add.d	$a1, $a1, $a4
	addi.d	$a1, $a1, 2
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	sub.d	$a2, $a1, $a6
	ld.d	$a3, $sp, 576
	ori	$a4, $zero, 100
	mul.w	$a2, $a2, $a4
	div.w	$a1, $a2, $a1
	st.w	$a1, $s4, 16
	st.d	$s3, $a3, 0
	ld.d	$s3, $sp, 584
	addi.d	$a1, $s5, -1
	move	$s7, $s4
	blez	$s5, .LBB0_618
.LBB0_573:                              # %.lr.ph265.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_603 Depth 3
                                        #         Child Loop BB0_611 Depth 4
                                        #         Child Loop BB0_614 Depth 4
	ld.d	$a2, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	move	$s5, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$s4, $a2, $a1
	ld.w	$a5, $s4, 12
	ld.w	$a1, $s7, 4
	addi.w	$a2, $a5, 1
	bne	$a1, $a2, .LBB0_577
# %bb.574:                              #   in Loop: Header=BB0_573 Depth=2
	ld.w	$a4, $s4, 8
	ld.w	$a1, $s7, 0
	nor	$a2, $a4, $zero
	add.w	$s1, $a1, $a2
	beqz	$s1, .LBB0_581
# %bb.575:                              #   in Loop: Header=BB0_573 Depth=2
	beqz	$a0, .LBB0_580
# %bb.576:                              #   in Loop: Header=BB0_573 Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 12
	st.w	$s1, $a0, 8
	st.d	$s3, $a0, 0
	ld.w	$a4, $s4, 8
	ld.w	$a5, $s4, 12
	move	$s3, $a0
	b	.LBB0_581
	.p2align	4, , 16
.LBB0_577:                              #   in Loop: Header=BB0_573 Depth=2
	beqz	$a0, .LBB0_579
# %bb.578:                              #   in Loop: Header=BB0_573 Depth=2
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a1, $a2, 0
	st.d	$a1, $a0, 0
	st.d	$a0, $a2, 0
	st.d	$s3, $a0, 8
	ld.w	$a1, $s7, 0
	st.w	$a1, $a0, 16
	ld.w	$a2, $s7, 4
	st.w	$a2, $a0, 20
	ld.d	$a3, $sp, 488                   # 8-byte Folded Reload
	sub.d	$a1, $a3, $a1
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 24
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 28
	st.w	$s2, $a0, 32
	ld.w	$a5, $s4, 12
	move	$s3, $zero
	move	$s2, $zero
.LBB0_579:                              #   in Loop: Header=BB0_573 Depth=2
	ld.w	$a4, $s4, 8
	st.d	$a5, $sp, 464                   # 8-byte Folded Spill
.LBB0_580:                              # %.critedge.i520
                                        #   in Loop: Header=BB0_573 Depth=2
	st.d	$a4, $sp, 488                   # 8-byte Folded Spill
.LBB0_581:                              # %.critedge.i520
                                        #   in Loop: Header=BB0_573 Depth=2
	ld.w	$a0, $s4, 4
	ld.w	$a1, $s4, 0
	sub.d	$a2, $a5, $a0
	addi.d	$a2, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	movgr2fr.d	$fa0, $a2
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	fld.d	$fa1, $a2, %pc_lo12(.LCPI0_1)
	ffint.d.l	$fa0, $fa0
	pcalau12i	$a2, %pc_hi20(.LCPI0_3)
	fld.d	$fa2, $a2, %pc_lo12(.LCPI0_3)
	fmul.d	$fa0, $fa0, $fa1
	addi.w	$a2, $a1, -1
	addi.w	$a3, $a0, -1
	fcmp.clt.d	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a6, $fa0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(align_get_dist)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_616
# %bb.582:                              #   in Loop: Header=BB0_573 Depth=2
	move	$s1, $a0
	ld.w	$a0, $s4, 0
	ld.w	$a1, $s4, 4
	ld.w	$a4, $s4, 8
	ld.w	$a5, $s4, 12
	addi.w	$a2, $a0, -1
	addi.w	$a3, $a1, -1
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	addi.d	$a7, $sp, 584
	addi.d	$a0, $sp, 576
	st.d	$a0, $sp, 0
	move	$a0, $fp
	move	$a1, $s0
	move	$a6, $s1
	pcaddu18i	$ra, %call36(align_path)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 576
	beqz	$a0, .LBB0_616
# %bb.583:                              #   in Loop: Header=BB0_573 Depth=2
	addi.d	$a0, $sp, 584
	addi.d	$a1, $sp, 576
	addi.d	$a2, $sp, 568
	pcaddu18i	$ra, %call36(Condense_both_Ends)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 8
	beqz	$a0, .LBB0_585
# %bb.584:                              #   in Loop: Header=BB0_573 Depth=2
	ori	$s7, $zero, 8
	b	.LBB0_590
	.p2align	4, , 16
.LBB0_585:                              #   in Loop: Header=BB0_573 Depth=2
	ld.d	$a0, $sp, 576
	ld.bu	$a1, $a0, 12
	ori	$a2, $zero, 1
	ori	$s7, $zero, 8
	vld	$vr8, $sp, 240                  # 16-byte Folded Reload
	bne	$a1, $a2, .LBB0_591
# %bb.586:                              #   in Loop: Header=BB0_573 Depth=2
	ld.w	$a1, $a0, 8
	ld.w	$a2, $s4, 8
	sub.d	$a2, $a2, $a1
	st.w	$a2, $s4, 8
	beqz	$s3, .LBB0_589
# %bb.587:                              #   in Loop: Header=BB0_573 Depth=2
	ld.bu	$a2, $s3, 12
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB0_589
# %bb.588:                              #   in Loop: Header=BB0_573 Depth=2
	ld.w	$a2, $s3, 8
	add.d	$a2, $a2, $a1
	st.w	$a2, $s3, 8
.LBB0_589:                              #   in Loop: Header=BB0_573 Depth=2
	sub.d	$s1, $s1, $a1
	ld.d	$a2, $sp, 488                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a1
	st.d	$a2, $sp, 488                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 568
	st.d	$zero, $a0, 0
	ld.d	$a0, $sp, 568
	st.d	$a0, $sp, 576
.LBB0_590:                              #   in Loop: Header=BB0_573 Depth=2
	vld	$vr8, $sp, 240                  # 16-byte Folded Reload
.LBB0_591:                              #   in Loop: Header=BB0_573 Depth=2
	ld.d	$a0, $sp, 584
	bnez	$s5, .LBB0_597
# %bb.592:                              #   in Loop: Header=BB0_573 Depth=2
	beqz	$a0, .LBB0_597
# %bb.593:                              #   in Loop: Header=BB0_573 Depth=2
	ld.bu	$a1, $a0, 12
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB0_599
# %bb.594:                              #   in Loop: Header=BB0_573 Depth=2
	ld.w	$a1, $a0, 8
	ld.w	$a2, $s4, 0
	add.d	$a2, $a2, $a1
	st.w	$a2, $s4, 0
	ld.d	$a2, $sp, 576
	ld.d	$s7, $a0, 0
	bne	$a2, $a0, .LBB0_596
# %bb.595:                              #   in Loop: Header=BB0_573 Depth=2
	st.d	$s7, $sp, 576
.LBB0_596:                              #   in Loop: Header=BB0_573 Depth=2
	sub.d	$s1, $s1, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$s7, $sp, 584
	vld	$vr8, $sp, 240                  # 16-byte Folded Reload
	ld.w	$a1, $s4, 0
	ld.w	$a2, $s4, 4
	add.d	$s2, $s1, $s2
	bnez	$s7, .LBB0_598
	b	.LBB0_571
	.p2align	4, , 16
.LBB0_597:                              #   in Loop: Header=BB0_573 Depth=2
	move	$s7, $a0
	ld.w	$a1, $s4, 0
	ld.w	$a2, $s4, 4
	add.d	$s2, $s1, $s2
	beqz	$s7, .LBB0_571
.LBB0_598:                              #   in Loop: Header=BB0_573 Depth=2
	move	$a0, $s7
	ori	$s7, $zero, 8
	b	.LBB0_600
	.p2align	4, , 16
.LBB0_599:                              # %.thread287.i
                                        #   in Loop: Header=BB0_573 Depth=2
	ld.w	$a1, $s4, 0
	ld.w	$a2, $s4, 4
	add.d	$s2, $s1, $s2
.LBB0_600:                              # %.lr.ph250.preheader.i
                                        #   in Loop: Header=BB0_573 Depth=2
	ori	$s1, $zero, 3
	move	$a3, $zero
	move	$a6, $zero
	bstrpick.d	$a4, $a2, 31, 0
	ld.d	$a5, $sp, 424                   # 8-byte Folded Reload
	add.d	$a4, $a5, $a4
	bstrpick.d	$a5, $a1, 31, 0
	ld.d	$a7, $sp, 432                   # 8-byte Folded Reload
	add.d	$a5, $a7, $a5
	b	.LBB0_603
	.p2align	4, , 16
.LBB0_601:                              #   in Loop: Header=BB0_603 Depth=3
	ld.w	$a7, $a0, 8
	add.w	$a3, $a7, $a3
	add.d	$a6, $a7, $a6
	add.d	$a4, $a4, $a7
.LBB0_602:                              # %.loopexit.i525
                                        #   in Loop: Header=BB0_603 Depth=3
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB0_572
.LBB0_603:                              # %.lr.ph250.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_573 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_611 Depth 4
                                        #         Child Loop BB0_614 Depth 4
	ld.bu	$a7, $a0, 12
	ori	$t0, $zero, 1
	beq	$a7, $t0, .LBB0_609
# %bb.604:                              # %.lr.ph250.i
                                        #   in Loop: Header=BB0_603 Depth=3
	beq	$a7, $s8, .LBB0_601
# %bb.605:                              # %.lr.ph250.i
                                        #   in Loop: Header=BB0_603 Depth=3
	bne	$a7, $s1, .LBB0_602
# %bb.606:                              # %.preheader.i524
                                        #   in Loop: Header=BB0_603 Depth=3
	ld.w	$a7, $a0, 8
	ori	$t0, $zero, 1
	blt	$a7, $t0, .LBB0_602
# %bb.607:                              # %.lr.ph.preheader.i530
                                        #   in Loop: Header=BB0_603 Depth=3
	bgeu	$a7, $s7, .LBB0_610
# %bb.608:                              #   in Loop: Header=BB0_603 Depth=3
	move	$t2, $zero
	move	$t0, $a4
	move	$t1, $a5
	b	.LBB0_613
	.p2align	4, , 16
.LBB0_609:                              #   in Loop: Header=BB0_603 Depth=3
	ld.w	$a7, $a0, 8
	add.w	$a3, $a7, $a3
	add.d	$a6, $a7, $a6
	add.d	$a5, $a5, $a7
	b	.LBB0_602
.LBB0_610:                              # %vector.ph
                                        #   in Loop: Header=BB0_603 Depth=3
	bstrpick.d	$t1, $a7, 30, 3
	slli.d	$t2, $t1, 3
	pcalau12i	$t0, %pc_hi20(.LCPI0_4)
	vld	$vr0, $t0, %pc_lo12(.LCPI0_4)
	alsl.d	$t0, $t1, $a4, 3
	alsl.d	$t1, $t1, $a5, 3
	vinsgr2vr.w	$vr2, $a6, 0
	vinsgr2vr.w	$vr3, $zero, 0
	vori.b	$vr1, $vr0, 0
	vshuf.w	$vr1, $vr3, $vr2
	vinsgr2vr.w	$vr2, $s6, 0
	vshuf.w	$vr0, $vr3, $vr2
	addi.d	$a6, $a5, 4
	addi.d	$t3, $a4, 4
	move	$t4, $t2
	vld	$vr2, $sp, 320                  # 16-byte Folded Reload
	vori.b	$vr3, $vr2, 0
	.p2align	4, , 16
.LBB0_611:                              # %vector.body
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_573 Depth=2
                                        #       Parent Loop BB0_603 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$t5, $a6, -4
	ld.w	$t6, $a6, 0
	ld.w	$t7, $t3, -4
	ld.w	$t8, $t3, 0
	vinsgr2vr.w	$vr4, $t5, 0
	vinsgr2vr.w	$vr5, $t6, 0
	vinsgr2vr.w	$vr6, $t7, 0
	vinsgr2vr.w	$vr7, $t8, 0
	vseq.b	$vr4, $vr4, $vr6
	vilvl.b	$vr6, $vr4, $vr4
	vilvl.h	$vr6, $vr6, $vr6
	vand.v	$vr6, $vr6, $vr8
	vseq.b	$vr5, $vr5, $vr7
	vilvl.b	$vr7, $vr5, $vr5
	vilvl.h	$vr7, $vr7, $vr7
	vand.v	$vr7, $vr7, $vr8
	vadd.w	$vr0, $vr0, $vr6
	vadd.w	$vr2, $vr2, $vr7
	vxori.b	$vr4, $vr4, 255
	vilvl.b	$vr4, $vr4, $vr4
	vilvl.h	$vr4, $vr4, $vr4
	vand.v	$vr4, $vr4, $vr8
	vxori.b	$vr5, $vr5, 255
	vilvl.b	$vr5, $vr5, $vr5
	vilvl.h	$vr5, $vr5, $vr5
	vand.v	$vr5, $vr5, $vr8
	vadd.w	$vr1, $vr1, $vr4
	vadd.w	$vr3, $vr3, $vr5
	addi.d	$t4, $t4, -8
	addi.d	$a6, $a6, 8
	addi.d	$t3, $t3, 8
	bnez	$t4, .LBB0_611
# %bb.612:                              # %middle.block
                                        #   in Loop: Header=BB0_603 Depth=3
	vadd.w	$vr1, $vr3, $vr1
	vshuf4i.w	$vr3, $vr1, 14
	vadd.w	$vr1, $vr1, $vr3
	vreplvei.w	$vr3, $vr1, 1
	vadd.w	$vr1, $vr1, $vr3
	vpickve2gr.w	$a6, $vr1, 0
	vadd.w	$vr0, $vr2, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$s6, $vr0, 0
	beq	$t2, $a7, .LBB0_615
.LBB0_613:                              # %.lr.ph.i531.preheader
                                        #   in Loop: Header=BB0_603 Depth=3
	sub.d	$t2, $a7, $t2
	.p2align	4, , 16
.LBB0_614:                              # %.lr.ph.i531
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_573 Depth=2
                                        #       Parent Loop BB0_603 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t3, $t1, 0
	ld.bu	$t4, $t0, 0
	xor	$t3, $t3, $t4
	sltu	$t4, $zero, $t3
	sltui	$t3, $t3, 1
	add.d	$s6, $s6, $t3
	add.d	$a6, $a6, $t4
	addi.d	$t1, $t1, 1
	addi.w	$t2, $t2, -1
	addi.d	$t0, $t0, 1
	bnez	$t2, .LBB0_614
.LBB0_615:                              # %.loopexit.loopexit.i
                                        #   in Loop: Header=BB0_603 Depth=3
	addi.w	$a7, $a7, -1
	add.d	$a4, $a4, $a7
	add.d	$a5, $a5, $a7
	addi.d	$a5, $a5, 1
	addi.d	$a4, $a4, 1
	b	.LBB0_602
	.p2align	4, , 16
.LBB0_616:                              # %pluri_align.exit.thread
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ori	$s3, $zero, 2
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	b	.LBB0_626
	.p2align	4, , 16
.LBB0_617:                              #   in Loop: Header=BB0_6 Depth=1
	move	$s6, $zero
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	b	.LBB0_625
.LBB0_618:                              # %._crit_edge266.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $s4, 4
	addi.w	$a0, $a0, -1
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_621
# %bb.619:                              # %._crit_edge266.i
                                        #   in Loop: Header=BB0_6 Depth=1
	beq	$a0, $a1, .LBB0_621
# %bb.620:                              #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a1, $a2, 0
	st.d	$a1, $a0, 0
	st.d	$a0, $a2, 0
	ld.w	$a1, $s4, 0
	st.w	$a1, $a0, 16
	ld.w	$a2, $s4, 4
	st.w	$a2, $a0, 20
	ld.d	$a3, $sp, 488                   # 8-byte Folded Reload
	sub.d	$a1, $a3, $a1
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 24
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	b	.LBB0_623
.LBB0_621:                              #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_624
# %bb.622:                              #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a1, $a2, 0
	st.d	$a1, $a0, 0
	st.d	$a0, $a2, 0
	ld.w	$a1, $s4, 0
	st.w	$a1, $a0, 16
	ori	$a2, $zero, 1
	st.w	$a2, $a0, 20
	ld.d	$a2, $sp, 488                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 24
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
.LBB0_623:                              # %.thread309.sink.split.i
                                        #   in Loop: Header=BB0_6 Depth=1
	st.w	$a1, $a0, 28
	st.d	$s3, $a0, 8
	st.w	$s2, $a0, 32
.LBB0_624:                              # %pluri_align.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ori	$s3, $zero, 2
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
.LBB0_625:                              # %pluri_align.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 20
	st.w	$s6, $s4, 36
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_5
.LBB0_626:                              #   in Loop: Header=BB0_6 Depth=1
	ld.d	$fp, $s4, 0
	beqz	$fp, .LBB0_4
	.p2align	4, , 16
.LBB0_627:                              # %.lr.ph.i534
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $fp, 0
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(Free_script)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$fp, $s0
	bnez	$s0, .LBB0_627
	b	.LBB0_4
.LBB0_628:                              # %.critedge2.split.loop.exit374.i
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s5, $s1
.LBB0_629:                              # %.critedge2.i.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 360                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_630:                              # %.critedge2.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $s5, 0
	alsl.d	$a1, $a4, $a0, 2
	slli.d	$a2, $a4, 2
	ldx.w	$a2, $a0, $a2
	ld.w	$a1, $a1, -4
	sub.w	$a1, $a2, $a1
	ori	$a2, $zero, 2
	blt	$a2, $a1, .LBB0_633
# %bb.631:                              #   in Loop: Header=BB0_630 Depth=2
	addi.d	$s5, $s5, -1
	blt	$s0, $a4, .LBB0_630
# %bb.632:                              #   in Loop: Header=BB0_6 Depth=1
	move	$s5, $zero
.LBB0_633:                              # %.critedge8.i
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.w	$a1, $s5, 0
	slli.d	$a1, $a1, 2
	ldx.w	$s0, $a0, $a1
	ld.d	$s7, $sp, 416                   # 8-byte Folded Reload
	ldx.w	$a2, $s7, $a1
	sub.d	$a1, $a3, $s3
	add.d	$a1, $a1, $s0
	add.d	$fp, $a1, $a2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s3, $s0
	b	.LBB0_235
.LBB0_634:                              # %._crit_edge702.loopexit
	ld.d	$fp, $sp, 536
	b	.LBB0_636
.LBB0_635:
	move	$fp, $zero
.LBB0_636:                              # %._crit_edge702
	ld.d	$a0, $sp, 552
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_637:
	fld.d	$fs2, $sp, 592                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 600                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 608                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 680                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 688                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 696                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 704
	ret
.Lfunc_end0:
	.size	SIM4, .Lfunc_end0-SIM4
                                        # -- End function
	.globl	init_col                        # -- Begin function init_col
	.p2align	5
	.type	init_col,@function
init_col:                               # @init_col
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	st.w	$a1, $a0, 12
	st.w	$zero, $a0, 8
	beqz	$a1, .LBB1_2
# %bb.1:
	bstrpick.d	$a0, $a1, 31, 0
	slli.d	$a0, $a0, 3
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	b	.LBB1_3
.LBB1_2:
	move	$a0, $zero
.LBB1_3:
	st.d	$a0, $fp, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	init_col, .Lfunc_end1-init_col
                                        # -- End function
	.p2align	5                               # -- Begin function exon_cores
	.type	exon_cores,@function
exon_cores:                             # @exon_cores
# %bb.0:
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$a0, $a0, 16
	st.d	$a7, $sp, 24                    # 8-byte Folded Spill
	move	$s8, $a6
	move	$s1, $a5
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s6, $a1
	add.d	$a0, $a2, $a0
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(xcalloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 96                    # 8-byte Folded Spill
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	beqz	$fp, .LBB2_39
# %bb.1:
	move	$a1, $a0
	ld.wu	$a0, $s0, 16
	move	$s7, $zero
	st.d	$a1, $sp, 0                     # 8-byte Folded Spill
	alsl.d	$s3, $a0, $a1, 2
	bstrpick.d	$s5, $fp, 31, 0
	add.d	$s2, $s6, $s5
	addi.d	$a0, $s6, -1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$a1, $zero, 2
	pcalau12i	$a0, %pc_hi20(encoding)
	addi.d	$a0, $a0, %pc_lo12(encoding)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$a6, $s6
	st.d	$s1, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
	st.d	$s2, $sp, 144                   # 8-byte Folded Spill
	ld.w	$a0, $s0, 36
	st.w	$zero, $sp, 160
	bltu	$a0, $a1, .LBB2_10
.LBB2_2:                                # %.critedge.i
	bgeu	$s7, $fp, .LBB2_10
# %bb.3:                                # %.lr.ph.i.preheader
	move	$a1, $zero
	move	$a2, $zero
	.p2align	4, , 16
.LBB2_4:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a6, 0
	slli.d	$a3, $a3, 2
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	ldx.w	$a4, $a4, $a3
	add.d	$a3, $s7, $a1
	addi.w	$a3, $a3, 1
	addi.d	$a6, $a6, 1
	ori	$a5, $zero, 3
	bltu	$a5, $a4, .LBB2_8
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	slli.d	$a2, $a2, 2
	or	$a2, $a4, $a2
	st.w	$a2, $sp, 160
	addi.w	$a4, $a1, 2
	addi.d	$a1, $a1, 1
	bgeu	$a4, $a0, .LBB2_7
# %bb.6:                                #   in Loop: Header=BB2_4 Depth=1
	bltu	$a3, $fp, .LBB2_4
.LBB2_7:                                # %.preheader.i.loopexit
	add.w	$s7, $s7, $a1
	b	.LBB2_10
	.p2align	4, , 16
.LBB2_8:                                # %.critedge.i.backedge.loopexit519
	move	$s7, $a3
.LBB2_9:                                # %.critedge.i
	ori	$a1, $zero, 2
	ld.w	$a0, $s0, 36
	st.w	$zero, $sp, 160
	bgeu	$a0, $a1, .LBB2_2
.LBB2_10:                               # %.preheader.i
	bgeu	$s7, $fp, .LBB2_38
# %bb.11:                               # %.lr.ph74.i.preheader
	addi.w	$a0, $s7, 1
	b	.LBB2_13
	.p2align	4, , 16
.LBB2_12:                               # %.loopexit.i
                                        #   in Loop: Header=BB2_13 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	beq	$s7, $fp, .LBB2_38
.LBB2_13:                               # %.lr.ph74.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_20 Depth 2
                                        #       Child Loop BB2_23 Depth 3
                                        #       Child Loop BB2_30 Depth 3
	move	$a3, $a0
	ld.bu	$a0, $a6, 0
	slli.d	$a0, $a0, 2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ldx.w	$a0, $a2, $a0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	add.d	$a2, $a2, $a3
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a6, $a6, 1
	addi.w	$s7, $s7, 1
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB2_9
# %bb.14:                               #   in Loop: Header=BB2_13 Depth=1
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a1, $sp, 160
	ld.w	$a2, $s0, 32
	and	$a1, $a2, $a1
	slli.d	$a1, $a1, 2
	ld.d	$a2, $s0, 0
	or	$a0, $a1, $a0
	st.w	$a0, $sp, 160
	bstrpick.d	$a0, $a0, 18, 0
	alsl.d	$a1, $a0, $a2, 3
	pcalau12i	$a0, %pc_hi20(hash_node_compare)
	addi.d	$a2, $a0, %pc_lo12(hash_node_compare)
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(tfind)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_12
# %bb.15:                               #   in Loop: Header=BB2_13 Depth=1
	ld.d	$a0, $a0, 0
	ld.w	$fp, $a0, 4
	bltz	$fp, .LBB2_12
# %bb.16:                               # %.lr.ph71.i
                                        #   in Loop: Header=BB2_13 Depth=1
	add.d	$ra, $s6, $s7
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	b	.LBB2_20
	.p2align	4, , 16
.LBB2_17:                               # %add_col_elt.exit.i.i
                                        #   in Loop: Header=BB2_20 Depth=2
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	slli.d	$a2, $a1, 3
	bstrpick.d	$a2, $a2, 34, 3
	slli.d	$a2, $a2, 3
	stx.d	$s7, $a0, $a2
	ld.d	$a0, $s8, 0
	ldx.d	$a3, $a0, $a2
	ld.d	$a0, $s0, 8
	ld.w	$a2, $s0, 36
	addi.d	$a1, $a1, 1
	st.w	$a1, $s8, 8
	st.w	$s2, $a3, 16
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
.LBB2_18:                               #   in Loop: Header=BB2_20 Depth=2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $s3, 2
	sub.d	$a0, $s4, $a0
	add.d	$a0, $a2, $a0
	st.w	$a0, $a1, 0
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
.LBB2_19:                               # %extend_hit.exit.i
                                        #   in Loop: Header=BB2_20 Depth=2
	ld.d	$a0, $s0, 24
	slli.d	$a1, $fp, 2
	ldx.w	$fp, $a0, $a1
	addi.w	$a0, $zero, -1
	bge	$a0, $fp, .LBB2_12
.LBB2_20:                               #   Parent Loop BB2_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_23 Depth 3
                                        #       Child Loop BB2_30 Depth 3
	sub.w	$a1, $s7, $fp
	slli.d	$a0, $a1, 2
	ldx.w	$a0, $s3, $a0
	blt	$fp, $a0, .LBB2_19
# %bb.21:                               #   in Loop: Header=BB2_20 Depth=2
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $s0, 8
	bstrpick.d	$fp, $fp, 31, 0
	add.d	$a3, $a0, $fp
	bge	$s7, $s5, .LBB2_26
# %bb.22:                               # %.lr.ph.i.i
                                        #   in Loop: Header=BB2_20 Depth=2
	pcalau12i	$a1, %got_pc_hi20(options)
	ld.d	$a1, $a1, %got_pc_lo12(options)
	ld.wu	$a7, $s0, 16
	ld.w	$a2, $a1, 64
	ld.w	$a4, $a1, 56
	ld.w	$a5, $a1, 48
	move	$a6, $zero
	move	$a1, $zero
	add.d	$a7, $a0, $a7
	move	$t0, $ra
	move	$t1, $a3
	move	$s4, $a3
	.p2align	4, , 16
.LBB2_23:                               #   Parent Loop BB2_13 Depth=1
                                        #     Parent Loop BB2_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bgeu	$t1, $a7, .LBB2_27
# %bb.24:                               #   in Loop: Header=BB2_23 Depth=3
	sub.w	$t2, $a1, $a2
	blt	$a6, $t2, .LBB2_27
# %bb.25:                               #   in Loop: Header=BB2_23 Depth=3
	ld.bu	$t2, $t0, 0
	ld.bu	$t3, $t1, 0
	addi.d	$t4, $t0, 1
	addi.d	$t1, $t1, 1
	xor	$t0, $t2, $t3
	sltui	$t0, $t0, 1
	masknez	$t2, $a5, $t0
	maskeqz	$t0, $a4, $t0
	or	$t0, $t0, $t2
	add.w	$a6, $t0, $a6
	slt	$t0, $a1, $a6
	masknez	$t2, $s4, $t0
	maskeqz	$t3, $t1, $t0
	or	$s4, $t3, $t2
	maskeqz	$t2, $a6, $t0
	masknez	$a1, $a1, $t0
	or	$a1, $t2, $a1
	move	$t0, $t4
	bltu	$t4, $s2, .LBB2_23
	b	.LBB2_27
	.p2align	4, , 16
.LBB2_26:                               #   in Loop: Header=BB2_20 Depth=2
	move	$a1, $zero
	move	$s4, $a3
.LBB2_27:                               # %.critedge.i.i
                                        #   in Loop: Header=BB2_20 Depth=2
	ld.wu	$a2, $s0, 36
	sub.d	$a4, $ra, $a2
	sub.d	$a3, $a3, $a2
	bgeu	$s6, $a4, .LBB2_37
# %bb.28:                               # %.critedge.i.i
                                        #   in Loop: Header=BB2_20 Depth=2
	bgeu	$a0, $a3, .LBB2_33
# %bb.29:                               # %.lr.ph110.i.i
                                        #   in Loop: Header=BB2_20 Depth=2
	pcalau12i	$a5, %got_pc_hi20(options)
	ld.d	$t1, $a5, %got_pc_lo12(options)
	move	$a6, $zero
	move	$a5, $zero
	ld.w	$a7, $t1, 64
	ld.w	$t0, $t1, 56
	ld.w	$t1, $t1, 48
	sub.d	$t2, $zero, $a2
	add.d	$t3, $a0, $fp
	addi.d	$t3, $t3, -1
	ld.d	$t4, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_30:                               #   Parent Loop BB2_13 Depth=1
                                        #     Parent Loop BB2_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	sub.w	$t5, $a5, $a7
	blt	$a6, $t5, .LBB2_34
# %bb.31:                               #   in Loop: Header=BB2_30 Depth=3
	ldx.bu	$t6, $t4, $t2
	ldx.bu	$t7, $t3, $t2
	add.d	$t8, $t4, $t2
	add.d	$t5, $t3, $t2
	xor	$t6, $t6, $t7
	sltui	$t6, $t6, 1
	masknez	$t7, $t1, $t6
	maskeqz	$t6, $t0, $t6
	or	$t6, $t6, $t7
	add.w	$a6, $t6, $a6
	slt	$t6, $a5, $a6
	maskeqz	$t7, $a6, $t6
	masknez	$a5, $a5, $t6
	or	$a5, $t7, $a5
	masknez	$a3, $a3, $t6
	maskeqz	$t7, $t5, $t6
	or	$a3, $t7, $a3
	masknez	$a4, $a4, $t6
	maskeqz	$t6, $t8, $t6
	or	$a4, $t6, $a4
	bgeu	$s6, $t8, .LBB2_34
# %bb.32:                               #   in Loop: Header=BB2_30 Depth=3
	addi.d	$t4, $t4, -1
	addi.d	$t3, $t3, -1
	bltu	$a0, $t5, .LBB2_30
	b	.LBB2_34
.LBB2_33:                               #   in Loop: Header=BB2_20 Depth=2
	move	$a5, $zero
.LBB2_34:                               # %.critedge2.i.i
                                        #   in Loop: Header=BB2_20 Depth=2
	add.d	$a1, $a2, $a1
	add.w	$s2, $a1, $a5
	blt	$s2, $s1, .LBB2_18
.LBB2_35:                               #   in Loop: Header=BB2_20 Depth=2
	sub.d	$s1, $a3, $a0
	sub.d	$s0, $a4, $s6
	nor	$a0, $a0, $zero
	add.d	$s3, $s4, $a0
	add.d	$a0, $s4, $s0
	nor	$a1, $a3, $zero
	add.d	$s5, $a0, $a1
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.w	$s1, $a0, 0
	st.w	$s0, $a0, 4
	st.w	$s3, $a0, 8
	st.w	$s5, $a0, 12
	ld.w	$a2, $s8, 12
	ld.w	$a1, $s8, 8
	ld.d	$a0, $s8, 0
	bltu	$a1, $a2, .LBB2_17
# %bb.36:                               #   in Loop: Header=BB2_20 Depth=2
	addi.d	$a1, $a2, 5
	st.w	$a1, $s8, 12
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(xrealloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s8, 8
	st.d	$a0, $s8, 0
	b	.LBB2_17
.LBB2_37:                               #   in Loop: Header=BB2_20 Depth=2
	move	$a5, $zero
	add.d	$a1, $a2, $a1
	add.w	$s2, $a1, $a5
	blt	$s2, $s1, .LBB2_18
	b	.LBB2_35
.LBB2_38:                               # %._crit_edge83.loopexit.i
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
.LBB2_39:                               # %search.exit
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ld.wu	$a1, $s8, 8
	pcalau12i	$a2, %pc_hi20(msp_rna_compare)
	addi.d	$a3, $a2, %pc_lo12(msp_rna_compare)
	ori	$a2, $zero, 8
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s8, 8
	beqz	$a2, .LBB2_55
# %bb.40:                               # %.lr.ph42.i.preheader
	move	$s1, $zero
	ori	$fp, $zero, 50
	ori	$s0, $zero, 20
	b	.LBB2_42
	.p2align	4, , 16
.LBB2_41:                               #   in Loop: Header=BB2_42 Depth=1
	move	$s1, $a0
	bgeu	$s1, $a2, .LBB2_54
.LBB2_42:                               # %.lr.ph42.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_45 Depth 2
                                        #     Child Loop BB2_51 Depth 2
	ld.d	$a1, $s8, 0
	bstrpick.d	$s3, $s1, 31, 0
	slli.d	$s2, $s3, 3
	ldx.d	$a0, $a1, $s2
	ld.w	$a3, $a0, 12
	ld.w	$a0, $a0, 4
	sub.w	$a4, $a3, $a0
	addi.w	$a0, $s1, 1
	bgeu	$a4, $fp, .LBB2_41
# %bb.43:                               #   in Loop: Header=BB2_42 Depth=1
	move	$s4, $a0
	bgeu	$a0, $a2, .LBB2_48
# %bb.44:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB2_42 Depth=1
	addi.w	$a3, $a3, 5
	bstrpick.d	$a4, $a0, 31, 0
	alsl.d	$a4, $a4, $a1, 3
	move	$s4, $a0
	.p2align	4, , 16
.LBB2_45:                               # %.lr.ph.i200
                                        #   Parent Loop BB2_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ld.w	$a5, $a5, 12
	bltu	$a3, $a5, .LBB2_48
# %bb.46:                               #   in Loop: Header=BB2_45 Depth=2
	addi.w	$s4, $s4, 1
	addi.d	$a4, $a4, 8
	bne	$a2, $s4, .LBB2_45
# %bb.47:                               #   in Loop: Header=BB2_42 Depth=1
	move	$s4, $a2
.LBB2_48:                               # %.critedge.i196
                                        #   in Loop: Header=BB2_42 Depth=1
	sub.w	$s5, $s4, $s1
	bltu	$s5, $s0, .LBB2_41
# %bb.49:                               # %.preheader.i197
                                        #   in Loop: Header=BB2_42 Depth=1
	bstrpick.d	$s6, $s4, 31, 0
	bgeu	$s1, $s4, .LBB2_53
# %bb.50:                               # %.lr.ph39.i.preheader
                                        #   in Loop: Header=BB2_42 Depth=1
	sub.d	$s7, $s6, $s3
	.p2align	4, , 16
.LBB2_51:                               # %.lr.ph39.i
                                        #   Parent Loop BB2_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s8, 0
	ldx.d	$a0, $a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, -1
	addi.d	$s2, $s2, 8
	bnez	$s7, .LBB2_51
# %bb.52:                               # %._crit_edge.loopexit.i
                                        #   in Loop: Header=BB2_42 Depth=1
	ld.d	$a1, $s8, 0
	ld.w	$a2, $s8, 8
.LBB2_53:                               # %._crit_edge.i
                                        #   in Loop: Header=BB2_42 Depth=1
	alsl.d	$a0, $s3, $a1, 3
	alsl.d	$a1, $s6, $a1, 3
	sub.d	$a2, $a2, $s4
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 8
	sub.w	$a2, $a0, $s5
	st.w	$a2, $s8, 8
	bltu	$s1, $a2, .LBB2_42
.LBB2_54:                               # %trim_small_repeated_msps.exit.loopexit
	bstrpick.d	$a1, $a2, 31, 0
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	b	.LBB2_56
.LBB2_55:
	move	$a1, $zero
.LBB2_56:                               # %trim_small_repeated_msps.exit
	ld.d	$s4, $sp, 256
	ld.d	$a0, $s8, 0
	pcalau12i	$a2, %pc_hi20(msp_compare)
	addi.d	$a3, $a2, %pc_lo12(msp_compare)
	ori	$a2, $zero, 8
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s8, 8
	beqz	$a2, .LBB2_76
# %bb.57:                               # %.lr.ph98.i.preheader
	move	$s1, $zero
	ori	$fp, $zero, 11
	ori	$s0, $zero, 1
	.p2align	4, , 16
.LBB2_58:                               # %.lr.ph98.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_60 Depth 2
	addi.w	$a0, $s1, 1
	bgeu	$a0, $a2, .LBB2_71
# %bb.59:                               # %.lr.ph.i205
                                        #   in Loop: Header=BB2_58 Depth=1
	ld.d	$a5, $s8, 0
	bstrpick.d	$a6, $s1, 31, 0
	slli.d	$a1, $a6, 3
	ldx.d	$a1, $a5, $a1
	ld.w	$a3, $a1, 12
	addi.w	$t0, $a3, 1
	addi.d	$t1, $a3, 2
	ld.w	$a4, $a1, 0
	addi.d	$a7, $a6, 1
	nor	$s3, $s1, $zero
	alsl.d	$a6, $a6, $a5, 3
	addi.d	$t2, $a6, 8
	.p2align	4, , 16
.LBB2_60:                               # %.backedge
                                        #   Parent Loop BB2_58 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $t2, 0
	ld.w	$t3, $a6, 4
	ld.w	$t4, $a6, 0
	sltu	$a6, $t0, $t3
	sub.w	$t3, $t1, $t3
	masknez	$t3, $t3, $a6
	bgeu	$a4, $t4, .LBB2_62
# %bb.61:                               #   in Loop: Header=BB2_60 Depth=2
	ld.w	$a6, $a1, 8
	addi.w	$t5, $a6, 1
	bgeu	$t5, $t4, .LBB2_65
.LBB2_62:                               # %.thr_comm.i
                                        #   in Loop: Header=BB2_60 Depth=2
	beqz	$t3, .LBB2_71
.LBB2_63:                               #   in Loop: Header=BB2_60 Depth=2
	add.w	$a6, $a2, $s3
	beq	$a6, $s0, .LBB2_71
# %bb.64:                               # %.backedge.backedge
                                        #   in Loop: Header=BB2_60 Depth=2
	addi.d	$a7, $a7, 1
	addi.w	$s3, $s3, -1
	addi.d	$t2, $t2, 8
	b	.LBB2_60
	.p2align	4, , 16
.LBB2_65:                               #   in Loop: Header=BB2_60 Depth=2
	sub.d	$t4, $a6, $t4
	addi.w	$t4, $t4, 2
	sltui	$t5, $t3, 1
	sltu	$t6, $zero, $t4
	beq	$t5, $t6, .LBB2_63
# %bb.66:                               #   in Loop: Header=BB2_60 Depth=2
	sub.w	$t4, $t3, $t4
	srai.d	$t5, $t4, 31
	xor	$t4, $t4, $t5
	sub.w	$t4, $t4, $t5
	bgeu	$t4, $fp, .LBB2_63
# %bb.67:                               #   in Loop: Header=BB2_58 Depth=1
	beqz	$t3, .LBB2_71
# %bb.68:                               #   in Loop: Header=BB2_58 Depth=1
	bstrpick.d	$s2, $a7, 31, 0
	slli.d	$a0, $s2, 3
	ldx.d	$a0, $a5, $a0
	ld.w	$a7, $a1, 16
	ld.w	$a5, $a0, 16
	add.w	$a5, $a5, $a7
	addi.w	$t0, $t3, 1
	ld.w	$t1, $a0, 0
	sub.d	$t0, $a5, $t0
	sltu	$a5, $a5, $t0
	masknez	$a5, $t0, $a5
	sltu	$t0, $a4, $t1
	masknez	$t1, $t1, $t0
	ld.w	$t2, $a1, 4
	ld.w	$t3, $a0, 4
	maskeqz	$a4, $a4, $t0
	or	$a4, $a4, $t1
	st.w	$a4, $a1, 0
	sltu	$a4, $t2, $t3
	masknez	$t0, $t3, $a4
	maskeqz	$a4, $t2, $a4
	ld.w	$t1, $a0, 8
	addi.w	$t2, $a5, 0
	or	$a4, $a4, $t0
	st.w	$a4, $a1, 4
	sltu	$a4, $t1, $a6
	masknez	$t0, $t1, $a4
	ld.w	$t1, $a0, 12
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $t0
	st.w	$a4, $a1, 8
	sltu	$a4, $t1, $a3
	masknez	$a6, $t1, $a4
	maskeqz	$a3, $a3, $a4
	or	$a3, $a3, $a6
	st.w	$a3, $a1, 12
	bgeu	$a7, $t2, .LBB2_70
# %bb.69:                               #   in Loop: Header=BB2_58 Depth=1
	st.w	$a5, $a1, 16
.LBB2_70:                               #   in Loop: Header=BB2_58 Depth=1
	addi.d	$a1, $a2, -1
	st.w	$a1, $s8, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ld.w	$a2, $s8, 8
	alsl.d	$a0, $s2, $a0, 3
	addi.d	$a1, $a0, 8
	add.d	$a2, $a2, $s3
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s8, 8
	bltu	$s1, $a2, .LBB2_58
	b	.LBB2_72
	.p2align	4, , 16
.LBB2_71:                               #   in Loop: Header=BB2_58 Depth=1
	move	$s1, $a0
	bltu	$s1, $a2, .LBB2_58
.LBB2_72:                               # %combine_msps.exit
	bnez	$s4, .LBB2_77
# %bb.73:                               # %.preheader
	beqz	$a2, .LBB2_81
# %bb.74:                               # %.lr.ph
	ld.d	$a0, $s8, 0
	ori	$a3, $zero, 8
	bstrpick.d	$a1, $a2, 31, 0
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	bgeu	$a2, $a3, .LBB2_82
# %bb.75:
	move	$a3, $zero
	move	$a2, $zero
	b	.LBB2_85
.LBB2_76:                               # %combine_msps.exit.thread
	move	$a2, $zero
	beqz	$s4, .LBB2_78
.LBB2_77:
	move	$a0, $s8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(link_msps)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$s2, $s4
	ld.w	$a0, $s2, 12
	sltu	$a3, $zero, $s4
	bnez	$a0, .LBB2_144
	b	.LBB2_140
.LBB2_78:
	ori	$a0, $zero, 1
	bnez	$a0, .LBB2_88
.LBB2_79:                               # %.lr.ph249.preheader
	move	$a0, $zero
	move	$a1, $zero
	sub.d	$a3, $a2, $fp
	addi.d	$a3, $a3, 1
	bstrpick.d	$a4, $a3, 31, 2
	add.w	$a3, $a4, $fp
	sltu	$a5, $a4, $a2
	maskeqz	$a4, $a4, $a5
	sub.w	$a2, $a2, $a4
	.p2align	4, , 16
.LBB2_80:                               # %.lr.ph249
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $s8, 0
	ldx.d	$a4, $a4, $a0
	ld.w	$a5, $a4, 4
	ld.d	$a6, $a4, 24
	sltu	$a5, $a5, $a3
	ld.w	$a7, $a4, 12
	slli.d	$a5, $a5, 1
	srli.d	$a6, $a6, 2
	bstrins.d	$a5, $a6, 63, 2
	sltu	$a6, $a2, $a7
	or	$a5, $a5, $a6
	st.d	$a5, $a4, 24
	ld.wu	$a4, $s8, 8
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 8
	bltu	$a1, $a4, .LBB2_80
	b	.LBB2_89
.LBB2_81:
	move	$a2, $zero
	ori	$a0, $zero, 1
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	bnez	$a0, .LBB2_88
	b	.LBB2_79
.LBB2_82:                               # %vector.ph
	bstrpick.d	$a2, $a1, 31, 3
	slli.d	$a3, $a2, 3
	vreplgr2vr.w	$vr1, $fp
	vrepli.b	$vr0, 0
	addi.d	$a2, $a0, 32
	move	$a4, $a3
	vori.b	$vr3, $vr1, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB2_83:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a2, -32
	ld.d	$a6, $a2, -24
	ld.d	$a7, $a2, -16
	ld.d	$t0, $a2, -8
	ld.d	$t1, $a2, 0
	ld.d	$t2, $a2, 8
	ld.d	$t3, $a2, 16
	ld.d	$t4, $a2, 24
	ld.w	$t5, $a5, 4
	ld.w	$t6, $a6, 4
	ld.w	$t7, $a7, 4
	ld.w	$t8, $t0, 4
	vinsgr2vr.w	$vr4, $t5, 0
	vinsgr2vr.w	$vr4, $t6, 1
	vinsgr2vr.w	$vr4, $t7, 2
	vinsgr2vr.w	$vr4, $t8, 3
	ld.w	$t5, $t1, 4
	ld.w	$t6, $t2, 4
	ld.w	$t7, $t3, 4
	ld.w	$t8, $t4, 4
	vinsgr2vr.w	$vr5, $t5, 0
	vinsgr2vr.w	$vr5, $t6, 1
	vinsgr2vr.w	$vr5, $t7, 2
	vinsgr2vr.w	$vr5, $t8, 3
	vmin.wu	$vr1, $vr4, $vr1
	vmin.wu	$vr3, $vr5, $vr3
	ld.w	$a5, $a5, 12
	ld.w	$a6, $a6, 12
	ld.w	$a7, $a7, 12
	ld.w	$t0, $t0, 12
	vinsgr2vr.w	$vr4, $a5, 0
	vinsgr2vr.w	$vr4, $a6, 1
	vinsgr2vr.w	$vr4, $a7, 2
	vinsgr2vr.w	$vr4, $t0, 3
	ld.w	$a5, $t1, 12
	ld.w	$a6, $t2, 12
	ld.w	$a7, $t3, 12
	ld.w	$t0, $t4, 12
	vinsgr2vr.w	$vr5, $a5, 0
	vinsgr2vr.w	$vr5, $a6, 1
	vinsgr2vr.w	$vr5, $a7, 2
	vinsgr2vr.w	$vr5, $t0, 3
	vmax.wu	$vr0, $vr4, $vr0
	vmax.wu	$vr2, $vr5, $vr2
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 64
	bnez	$a4, .LBB2_83
# %bb.84:                               # %middle.block
	vmin.wu	$vr1, $vr1, $vr3
	vshuf4i.w	$vr3, $vr1, 14
	vmin.wu	$vr1, $vr1, $vr3
	vreplvei.w	$vr3, $vr1, 1
	vmin.wu	$vr1, $vr1, $vr3
	vpickve2gr.w	$fp, $vr1, 0
	vmax.wu	$vr0, $vr0, $vr2
	vshuf4i.w	$vr1, $vr0, 14
	vmax.wu	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.wu	$vr0, $vr0, $vr1
	vpickve2gr.w	$a2, $vr0, 0
	beq	$a3, $a1, .LBB2_87
.LBB2_85:                               # %scalar.ph.preheader
	alsl.d	$a0, $a3, $a0, 3
	sub.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB2_86:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	ld.w	$a4, $a3, 4
	sltu	$a5, $a4, $fp
	ld.w	$a3, $a3, 12
	masknez	$a6, $fp, $a5
	maskeqz	$a4, $a4, $a5
	or	$fp, $a4, $a6
	sltu	$a4, $a2, $a3
	masknez	$a2, $a2, $a4
	maskeqz	$a3, $a3, $a4
	or	$a2, $a3, $a2
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB2_86
.LBB2_87:
	move	$a0, $zero
	beqz	$a0, .LBB2_79
.LBB2_88:
	move	$a4, $zero
.LBB2_89:                               # %._crit_edge250
	addi.w	$a2, $a4, 0
	move	$a0, $s8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(link_msps)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB2_148
# %bb.90:
	move	$a5, $a0
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	move	$s4, $s8
	ld.d	$a1, $s8, 0
	slli.d	$a0, $a0, 3
	pcalau12i	$a2, %got_pc_hi20(options)
	ld.d	$a2, $a2, %got_pc_lo12(options)
	ldx.d	$a0, $a1, $a0
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	ld.w	$a2, $a2, 72
	ld.w	$a0, $a0, 20
	ori	$a3, $zero, 50
	bltu	$a2, $a3, .LBB2_93
# %bb.91:
	mul.d	$a0, $a2, $a0
	bstrpick.d	$a0, $a0, 31, 0
	lu12i.w	$a2, 335544
	ori	$a2, $a2, 1311
	mul.d	$a0, $a0, $a2
	srli.d	$s8, $a0, 37
	ld.w	$a0, $s4, 8
	ori	$a2, $zero, 2
	bgeu	$a0, $a2, .LBB2_94
.LBB2_92:
	move	$s1, $zero
	move	$s8, $s4
	b	.LBB2_137
.LBB2_93:
	bstrpick.d	$a2, $a0, 31, 2
	sub.w	$s8, $a0, $a2
	ld.w	$a0, $s4, 8
	ori	$a2, $zero, 2
	bltu	$a0, $a2, .LBB2_92
.LBB2_94:                               # %.lr.ph261
	move	$a6, $zero
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	move	$a0, $zero
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	vinsgr2vr.w	$vr0, $a2, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	vinsgr2vr.w	$vr1, $a2, 0
	vpackev.w	$vr0, $vr1, $vr0
	vshuf4i.w	$vr1, $vr0, 68
	ori	$s1, $zero, 1
	vst	$vr1, $sp, 112                  # 16-byte Folded Spill
	b	.LBB2_97
	.p2align	4, , 16
.LBB2_95:                               #   in Loop: Header=BB2_97 Depth=1
	move	$s3, $s1
	move	$a2, $s4
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
.LBB2_96:                               # %.loopexit
                                        #   in Loop: Header=BB2_97 Depth=1
	ld.wu	$a2, $a2, 8
	addi.d	$s1, $s3, 1
	bgeu	$s1, $a2, .LBB2_135
.LBB2_97:                               # %.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_113 Depth 2
                                        #     Child Loop BB2_131 Depth 2
	alsl.d	$a2, $s1, $a1, 3
	ld.d	$a2, $a2, -8
	ld.d	$a3, $a2, 24
	slli.d	$s0, $s1, 3
	ldx.d	$fp, $a1, $s0
	andi	$a2, $a3, 1
	beqz	$a2, .LBB2_99
# %bb.98:                               #   in Loop: Header=BB2_97 Depth=1
	ld.bu	$a4, $fp, 24
	andi	$a4, $a4, 1
	beqz	$a4, .LBB2_103
.LBB2_99:                               #   in Loop: Header=BB2_97 Depth=1
	andi	$a3, $a3, 2
	bnez	$a3, .LBB2_101
# %bb.100:                              #   in Loop: Header=BB2_97 Depth=1
	ld.bu	$a3, $fp, 24
	andi	$a3, $a3, 2
	bnez	$a3, .LBB2_103
.LBB2_101:                              #   in Loop: Header=BB2_97 Depth=1
	beqz	$a2, .LBB2_95
# %bb.102:                              #   in Loop: Header=BB2_97 Depth=1
	ld.bu	$a2, $fp, 24
	andi	$a2, $a2, 2
	beqz	$a2, .LBB2_95
.LBB2_103:                              #   in Loop: Header=BB2_97 Depth=1
	addi.w	$s5, $s1, 0
	st.d	$a6, $sp, 144                   # 8-byte Folded Spill
	addi.w	$s7, $a6, 0
	move	$a0, $s4
	move	$a1, $s7
	move	$a2, $s5
	pcaddu18i	$ra, %call36(link_msps)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	move	$s6, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$s2, $a0, 20
	ld.w	$a2, $s4, 8
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(link_msps)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	move	$a5, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 72
	ld.w	$a0, $a0, 20
	ori	$a3, $zero, 50
	bltu	$a2, $a3, .LBB2_107
# %bb.104:                              #   in Loop: Header=BB2_97 Depth=1
	bltu	$s2, $s8, .LBB2_107
# %bb.105:                              #   in Loop: Header=BB2_97 Depth=1
	bltu	$a0, $s8, .LBB2_107
# %bb.106:                              #   in Loop: Header=BB2_97 Depth=1
	move	$s2, $a5
	move	$s3, $s1
	b	.LBB2_125
	.p2align	4, , 16
.LBB2_107:                              #   in Loop: Header=BB2_97 Depth=1
	ori	$a3, $zero, 49
	bltu	$a3, $a2, .LBB2_110
# %bb.108:                              #   in Loop: Header=BB2_97 Depth=1
	sltu	$a0, $a0, $s8
	sltu	$a2, $s2, $s8
	and	$a0, $a2, $a0
	bnez	$a0, .LBB2_110
# %bb.109:                              #   in Loop: Header=BB2_97 Depth=1
	move	$s2, $a5
	move	$s5, $s1
	move	$s3, $s1
	b	.LBB2_125
.LBB2_110:                              # %.thread314.peel
                                        #   in Loop: Header=BB2_97 Depth=1
	ld.wu	$a2, $s4, 8
	addi.d	$s3, $s1, 1
	bgeu	$s3, $a2, .LBB2_134
# %bb.111:                              # %.outer.peel.newph.preheader
                                        #   in Loop: Header=BB2_97 Depth=1
	addi.w	$s5, $s1, 1
	b	.LBB2_113
	.p2align	4, , 16
.LBB2_112:                              # %.thread314
                                        #   in Loop: Header=BB2_113 Depth=2
	ld.wu	$a2, $s4, 8
	addi.d	$s3, $s3, 1
	addi.d	$s0, $s0, 8
	addi.w	$s5, $s5, 1
	bgeu	$s3, $a2, .LBB2_134
.LBB2_113:                              # %.outer.peel.newph
                                        #   Parent Loop BB2_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a0, $a1, $s0
	ld.d	$a0, $a0, 24
	add.d	$a2, $a1, $s0
	ld.d	$fp, $a2, 8
	andi	$a2, $a0, 1
	beqz	$a2, .LBB2_115
# %bb.114:                              #   in Loop: Header=BB2_113 Depth=2
	ld.bu	$a3, $fp, 24
	andi	$a3, $a3, 1
	beqz	$a3, .LBB2_119
.LBB2_115:                              #   in Loop: Header=BB2_113 Depth=2
	andi	$a0, $a0, 2
	bnez	$a0, .LBB2_117
# %bb.116:                              #   in Loop: Header=BB2_113 Depth=2
	ld.bu	$a0, $fp, 24
	andi	$a0, $a0, 2
	bnez	$a0, .LBB2_119
.LBB2_117:                              #   in Loop: Header=BB2_113 Depth=2
	ori	$a0, $zero, 1
	beqz	$a2, .LBB2_133
# %bb.118:                              #   in Loop: Header=BB2_113 Depth=2
	ld.bu	$a2, $fp, 24
	andi	$a2, $a2, 2
	beqz	$a2, .LBB2_133
.LBB2_119:                              #   in Loop: Header=BB2_113 Depth=2
	move	$a0, $s4
	move	$a1, $s7
	move	$a2, $s5
	pcaddu18i	$ra, %call36(link_msps)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	move	$s6, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$s1, $a0, 20
	ld.w	$a2, $s4, 8
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(link_msps)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	move	$a5, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 72
	ld.w	$a0, $a0, 20
	ori	$a3, $zero, 50
	bltu	$a2, $a3, .LBB2_122
# %bb.120:                              #   in Loop: Header=BB2_113 Depth=2
	bltu	$s1, $s8, .LBB2_122
# %bb.121:                              #   in Loop: Header=BB2_113 Depth=2
	bgeu	$a0, $s8, .LBB2_124
.LBB2_122:                              #   in Loop: Header=BB2_113 Depth=2
	ori	$a3, $zero, 49
	bltu	$a3, $a2, .LBB2_112
# %bb.123:                              #   in Loop: Header=BB2_113 Depth=2
	sltu	$a0, $a0, $s8
	sltu	$a2, $s1, $s8
	and	$a0, $a2, $a0
	bnez	$a0, .LBB2_112
.LBB2_124:                              #   in Loop: Header=BB2_97 Depth=1
	move	$s2, $a5
	.p2align	4, , 16
.LBB2_125:                              # %.loopexit465
                                        #   in Loop: Header=BB2_97 Depth=1
	ori	$a0, $zero, 1
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(xcalloc)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a3, $a4, 12
	ld.w	$a1, $a4, 8
	ld.d	$a2, $a4, 0
	move	$s7, $a0
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	bltu	$a1, $a3, .LBB2_127
# %bb.126:                              #   in Loop: Header=BB2_97 Depth=1
	addi.d	$a0, $a3, 5
	st.w	$a0, $a4, 12
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 3
	move	$a0, $a2
	pcaddu18i	$ra, %call36(xrealloc)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a1, $a4, 8
	move	$a2, $a0
	st.d	$a0, $a4, 0
.LBB2_127:                              # %add_col_elt.exit
                                        #   in Loop: Header=BB2_97 Depth=1
	slli.d	$a0, $a1, 3
	bstrpick.d	$a0, $a0, 34, 3
	slli.d	$a3, $a0, 3
	stx.d	$s7, $a2, $a3
	ld.d	$a2, $a4, 0
	move	$a0, $zero
	ldx.d	$s0, $a2, $a3
	ld.w	$a2, $fp, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a4, 8
	st.w	$s1, $s0, 24
	sub.d	$a1, $a2, $s1
	st.w	$a1, $s0, 28
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	sub.w	$a1, $s5, $a2
	st.w	$a1, $s0, 20
	bstrpick.d	$a2, $a2, 31, 0
	st.w	$zero, $s0, 16
	beq	$s3, $a2, .LBB2_129
# %bb.128:                              #   in Loop: Header=BB2_97 Depth=1
	bstrpick.d	$a0, $a1, 31, 0
	slli.d	$a0, $a0, 3
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
.LBB2_129:                              # %init_col.exit
                                        #   in Loop: Header=BB2_97 Depth=1
	st.d	$a0, $s0, 8
	ld.d	$a0, $s4, 0
	addi.d	$s7, $s0, 8
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $zero
	pcaddu18i	$ra, %call36(msp2exons)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s0, 16
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	beqz	$a1, .LBB2_132
# %bb.130:                              # %.lr.ph253.preheader
                                        #   in Loop: Header=BB2_97 Depth=1
	move	$a0, $zero
	slli.d	$a1, $a1, 3
	.p2align	4, , 16
.LBB2_131:                              # %.lr.ph253
                                        #   Parent Loop BB2_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s7, 0
	ldx.d	$a2, $a2, $a0
	vld	$vr0, $a2, 0
	vadd.w	$vr0, $vr0, $vr1
	addi.d	$a0, $a0, 8
	vst	$vr0, $a2, 0
	bne	$a1, $a0, .LBB2_131
.LBB2_132:                              # %._crit_edge254
                                        #   in Loop: Header=BB2_97 Depth=1
	move	$a2, $s4
	ld.d	$a1, $s4, 0
	slli.d	$a0, $s6, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 8
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	move	$a0, $zero
	move	$a6, $s5
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	move	$a5, $s2
	b	.LBB2_96
.LBB2_133:                              #   in Loop: Header=BB2_97 Depth=1
	move	$a2, $s4
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	b	.LBB2_96
.LBB2_134:
	move	$s8, $s4
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	b	.LBB2_136
.LBB2_135:                              # %._crit_edge262
	move	$s8, $s4
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_137
.LBB2_136:                              # %._crit_edge262.thread324
	addi.w	$a1, $a6, 0
	addi.w	$a2, $a2, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(link_msps)
	jirl	$ra, $ra, 0
	move	$a5, $a0
.LBB2_137:                              # %._crit_edge262.thread
	move	$fp, $a5
	ori	$a0, $zero, 1
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(xcalloc)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a3, $a4, 12
	ld.w	$a1, $a4, 8
	ld.d	$a2, $a4, 0
	move	$s5, $a0
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	bltu	$a1, $a3, .LBB2_139
# %bb.138:
	addi.d	$a0, $a3, 5
	st.w	$a0, $a4, 12
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 3
	move	$a0, $a2
	pcaddu18i	$ra, %call36(xrealloc)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a1, $a4, 8
	move	$a2, $a0
	st.d	$a0, $a4, 0
.LBB2_139:
	slli.d	$a0, $a1, 3
	bstrpick.d	$a0, $a0, 34, 3
	slli.d	$a0, $a0, 3
	stx.d	$s5, $a2, $a0
	ld.d	$a2, $a4, 0
	ldx.d	$a0, $a2, $a0
	ld.w	$a2, $s0, 16
	addi.d	$a1, $a1, 1
	st.w	$a1, $a4, 8
	st.w	$s1, $a0, 24
	sub.d	$a1, $a2, $s1
	st.w	$a1, $a0, 28
	addi.d	$s2, $a0, 8
	move	$a1, $fp
	ld.w	$a0, $s2, 12
	sltu	$a3, $zero, $s4
	bnez	$a0, .LBB2_144
.LBB2_140:
	ld.w	$a0, $s8, 8
	st.w	$a0, $s2, 12
	st.w	$zero, $s2, 8
	beqz	$a0, .LBB2_142
# %bb.141:
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	move	$fp, $a3
	move	$s0, $a1
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	move	$a3, $fp
	b	.LBB2_143
.LBB2_142:
	move	$a0, $zero
.LBB2_143:                              # %init_col.exit223
	st.d	$a0, $s2, 0
.LBB2_144:
	ld.d	$a0, $s8, 0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(msp2exons)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s2, 8
	beqz	$a1, .LBB2_147
# %bb.145:                              # %.lr.ph270.preheader
	move	$a0, $zero
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	vinsgr2vr.w	$vr0, $a2, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	vinsgr2vr.w	$vr1, $a2, 0
	vpackev.w	$vr0, $vr1, $vr0
	vshuf4i.w	$vr0, $vr0, 68
	slli.d	$a1, $a1, 3
	.p2align	4, , 16
.LBB2_146:                              # %.lr.ph270
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s2, 0
	ldx.d	$a2, $a2, $a0
	vld	$vr1, $a2, 0
	vadd.w	$vr1, $vr1, $vr0
	addi.d	$a0, $a0, 8
	vst	$vr1, $a2, 0
	bne	$a1, $a0, .LBB2_146
.LBB2_147:                              # %._crit_edge271
	st.w	$zero, $s8, 8
.LBB2_148:                              # %.thread
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.Lfunc_end2:
	.size	exon_cores, .Lfunc_end2-exon_cores
                                        # -- End function
	.p2align	5                               # -- Begin function kill_polyA
	.type	kill_polyA,@function
kill_polyA:                             # @kill_polyA
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
	ld.w	$s2, $a0, 16
	beqz	$s2, .LBB3_42
# %bb.1:                                # %.lr.ph
	move	$fp, $a0
	move	$s1, $a2
	move	$s0, $a1
	ld.d	$s4, $a0, 8
	move	$s3, $zero
	bstrpick.d	$s5, $s2, 31, 0
	.p2align	4, , 16
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	ld.w	$a1, $a0, 12
	ld.w	$a0, $a0, 4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(is_polyAT_exon_p)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_5
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=1
	addi.w	$s3, $s3, 1
	addi.d	$s5, $s5, -1
	addi.d	$s4, $s4, 8
	bnez	$s5, .LBB3_2
# %bb.4:
	move	$s3, $s2
.LBB3_5:                                # %.critedge
	beqz	$s3, .LBB3_9
# %bb.6:                                # %.preheader.preheader
	move	$s4, $zero
	bstrpick.d	$s2, $s3, 31, 0
	slli.d	$s5, $s2, 3
	.p2align	4, , 16
.LBB3_7:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 8
	ldx.d	$a0, $a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 8
	bne	$s5, $s4, .LBB3_7
# %bb.8:
	ld.d	$a0, $fp, 8
	ld.w	$a2, $fp, 16
	alsl.d	$a1, $s2, $a0, 3
	sub.d	$a2, $a2, $s3
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	sub.w	$s2, $a0, $s3
	st.w	$s2, $fp, 16
.LBB3_9:
	beqz	$s2, .LBB3_42
# %bb.10:                               # %.lr.ph166
	ld.d	$s4, $fp, 8
	move	$s3, $zero
	bstrpick.d	$s5, $s2, 31, 0
	addi.w	$s6, $s2, -1
	.p2align	4, , 16
.LBB3_11:                               # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s6, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s4, $a0
	ld.w	$a1, $a0, 12
	ld.w	$a0, $a0, 4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(is_polyAT_exon_p)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_14
# %bb.12:                               #   in Loop: Header=BB3_11 Depth=1
	addi.w	$s3, $s3, 1
	addi.d	$s5, $s5, -1
	addi.w	$s6, $s6, -1
	bnez	$s5, .LBB3_11
# %bb.13:
	move	$s3, $s2
.LBB3_14:                               # %.critedge2
	beqz	$s3, .LBB3_20
# %bb.15:
	sub.w	$a0, $s2, $s3
	bltu	$s2, $s3, .LBB3_19
# %bb.16:                               # %.lr.ph173.preheader
	bstrpick.d	$s2, $a0, 31, 0
	slli.d	$s4, $s2, 3
	.p2align	4, , 16
.LBB3_17:                               # %.lr.ph173
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 8
	ldx.d	$a0, $a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 16
	addi.d	$s2, $s2, 1
	addi.d	$s4, $s4, 8
	bltu	$s2, $a0, .LBB3_17
# %bb.18:                               # %._crit_edge.loopexit
	sub.w	$a0, $a0, $s3
.LBB3_19:                               # %._crit_edge
	st.w	$a0, $fp, 16
	move	$s2, $a0
.LBB3_20:                               # %thread-pre-split
	beqz	$s2, .LBB3_42
# %bb.21:
	ld.d	$a2, $fp, 8
	addi.d	$a0, $s2, -1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a3, $a2, $a0
	ld.wu	$a0, $a3, 12
	ldx.bu	$t4, $s1, $a0
	beqz	$t4, .LBB3_40
# %bb.22:                               # %.lr.ph183.preheader
	move	$t3, $zero
	move	$a4, $zero
	move	$a5, $zero
	add.d	$a0, $a0, $s1
	addi.d	$a6, $a0, 1
	ori	$a7, $zero, 1
	ori	$t0, $zero, 78
	ori	$t1, $zero, 10
	ori	$t2, $zero, 65
                                        # implicit-def: $r5
                                        # implicit-def: $r4
	.p2align	4, , 16
.LBB3_23:                               # %.lr.ph183
                                        # =>This Inner Loop Header: Depth=1
	beq	$t4, $t0, .LBB3_28
# %bb.24:                               # %.lr.ph183
                                        #   in Loop: Header=BB3_23 Depth=1
	bne	$t4, $t2, .LBB3_27
# %bb.25:                               #   in Loop: Header=BB3_23 Depth=1
	addi.d	$a4, $a4, 1
	addi.w	$t4, $t3, 1
	bge	$t3, $a5, .LBB3_30
# %bb.26:                               #   in Loop: Header=BB3_23 Depth=1
	move	$t3, $t4
	ld.bu	$t4, $a6, 0
	bnez	$t4, .LBB3_29
	b	.LBB3_31
	.p2align	4, , 16
.LBB3_27:                               #   in Loop: Header=BB3_23 Depth=1
	addi.w	$t3, $t3, -2
.LBB3_28:                               #   in Loop: Header=BB3_23 Depth=1
	ld.bu	$t4, $a6, 0
	beqz	$t4, .LBB3_31
.LBB3_29:                               #   in Loop: Header=BB3_23 Depth=1
	sub.w	$t5, $a5, $t3
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 1
	blt	$t5, $t1, .LBB3_23
	b	.LBB3_31
.LBB3_30:                               #   in Loop: Header=BB3_23 Depth=1
	move	$a0, $a4
	move	$a5, $t4
	move	$a1, $a7
	move	$t3, $t4
	ld.bu	$t4, $a6, 0
	bnez	$t4, .LBB3_29
.LBB3_31:                               # %._crit_edge184
	ori	$a4, $zero, 1
	blt	$a5, $a4, .LBB3_41
# %bb.32:                               # %._crit_edge184
	addi.w	$a4, $a0, 0
	ori	$a5, $zero, 8
	bltu	$a4, $a5, .LBB3_41
# %bb.33:
	slli.d	$a4, $a0, 3
	alsl.w	$a6, $a0, $a4, 1
	addi.w	$a4, $a1, 0
	div.wu	$a6, $a6, $a4
	bltu	$a6, $a5, .LBB3_41
# %bb.34:
	ld.wu	$a7, $a3, 8
	ldx.bu	$a3, $s0, $a7
	beqz	$a3, .LBB3_41
# %bb.35:                               # %.lr.ph192.preheader
	move	$a5, $zero
	move	$a6, $zero
	add.d	$a7, $a7, $s0
	addi.d	$a7, $a7, 1
	.p2align	4, , 16
.LBB3_36:                               # %.lr.ph192
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$t0, $a3, -65
	ld.bu	$a3, $a7, 0
	addi.w	$a5, $a5, 1
	sltui	$t0, $t0, 1
	add.d	$a6, $a6, $t0
	beqz	$a3, .LBB3_38
# %bb.37:                               # %.lr.ph192
                                        #   in Loop: Header=BB3_36 Depth=1
	addi.d	$a7, $a7, 1
	bltu	$a5, $a4, .LBB3_36
.LBB3_38:
	slli.d	$a3, $a6, 3
	alsl.w	$a3, $a6, $a3, 1
	div.wu	$a3, $a3, $a5
	ori	$a4, $zero, 7
	bltu	$a4, $a3, .LBB3_41
# %bb.39:
	ori	$a3, $zero, 1
	st.w	$a3, $fp, 40
	b	.LBB3_41
.LBB3_40:
                                        # implicit-def: $r5
                                        # implicit-def: $r4
.LBB3_41:                               # %._crit_edge184.thread
	ld.d	$a2, $a2, 0
	ld.wu	$a5, $a2, 4
	add.d	$a3, $s1, $a5
	addi.d	$a3, $a3, -2
	bgeu	$a3, $s1, .LBB3_43
.LBB3_42:                               # %.thread
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
.LBB3_43:                               # %.lr.ph204.preheader
	move	$t2, $zero
	move	$a3, $zero
	move	$a4, $zero
	add.d	$a5, $a5, $s1
	addi.d	$a5, $a5, -3
	ori	$a6, $zero, 1
	ori	$a7, $zero, 78
	ori	$t0, $zero, 10
	ori	$t1, $zero, 84
	.p2align	4, , 16
.LBB3_44:                               # %.lr.ph204
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t3, $a5, 1
	beq	$t3, $a7, .LBB3_49
# %bb.45:                               # %.lr.ph204
                                        #   in Loop: Header=BB3_44 Depth=1
	bne	$t3, $t1, .LBB3_48
# %bb.46:                               #   in Loop: Header=BB3_44 Depth=1
	addi.d	$a3, $a3, 1
	addi.w	$t3, $t2, 1
	bge	$t2, $a4, .LBB3_51
# %bb.47:                               #   in Loop: Header=BB3_44 Depth=1
	move	$t2, $t3
	bgeu	$a5, $s1, .LBB3_50
	b	.LBB3_52
	.p2align	4, , 16
.LBB3_48:                               #   in Loop: Header=BB3_44 Depth=1
	addi.w	$t2, $t2, -2
.LBB3_49:                               #   in Loop: Header=BB3_44 Depth=1
	bltu	$a5, $s1, .LBB3_52
.LBB3_50:                               #   in Loop: Header=BB3_44 Depth=1
	sub.w	$t3, $a4, $t2
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 1
	blt	$t3, $t0, .LBB3_44
	b	.LBB3_52
.LBB3_51:                               #   in Loop: Header=BB3_44 Depth=1
	move	$a0, $a3
	move	$a4, $t3
	move	$a1, $a6
	move	$t2, $t3
	bgeu	$a5, $s1, .LBB3_50
.LBB3_52:                               # %._crit_edge205
	ori	$a3, $zero, 1
	blt	$a4, $a3, .LBB3_42
# %bb.53:                               # %._crit_edge205
	addi.w	$a4, $a0, 0
	ori	$a3, $zero, 8
	bltu	$a4, $a3, .LBB3_42
# %bb.54:
	slli.d	$a4, $a0, 3
	alsl.w	$a4, $a0, $a4, 1
	addi.w	$a0, $a1, 0
	div.wu	$a1, $a4, $a0
	bltu	$a1, $a3, .LBB3_42
# %bb.55:
	ld.wu	$a3, $a2, 0
	add.d	$a1, $s0, $a3
	addi.d	$a1, $a1, -2
	bltu	$a1, $s0, .LBB3_42
# %bb.56:                               # %.lr.ph213.preheader
	move	$a1, $zero
	move	$a2, $zero
	add.d	$a3, $a3, $s0
	addi.d	$a3, $a3, -3
	.p2align	4, , 16
.LBB3_57:                               # %.lr.ph213
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a3, 1
	addi.w	$a1, $a1, 1
	addi.d	$a4, $a4, -84
	sltui	$a4, $a4, 1
	add.d	$a2, $a2, $a4
	bltu	$a3, $s0, .LBB3_59
# %bb.58:                               # %.lr.ph213
                                        #   in Loop: Header=BB3_57 Depth=1
	addi.d	$a3, $a3, -1
	bltu	$a1, $a0, .LBB3_57
.LBB3_59:
	slli.d	$a0, $a2, 3
	alsl.w	$a0, $a2, $a0, 1
	div.wu	$a0, $a0, $a1
	ori	$a1, $zero, 7
	bltu	$a1, $a0, .LBB3_42
# %bb.60:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 44
	b	.LBB3_42
.Lfunc_end3:
	.size	kill_polyA, .Lfunc_end3-kill_polyA
                                        # -- End function
	.globl	init_hash_env                   # -- Begin function init_hash_env
	.p2align	5
	.type	init_hash_env,@function
init_hash_env:                          # @init_hash_env
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	st.w	$a1, $a0, 36
	st.d	$a2, $a0, 8
	st.w	$a3, $a0, 16
	slli.d	$a0, $a1, 1
	addi.d	$a0, $a0, -2
	bstrpick.d	$a0, $a0, 31, 1
	slli.d	$a0, $a0, 1
	addi.d	$a1, $zero, -1
	sll.w	$a0, $a1, $a0
	nor	$a0, $a0, $zero
	st.w	$a0, $fp, 32
	addi.d	$a0, $a3, 1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 24
	lu12i.w	$a0, 128
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(xcalloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	init_hash_env, .Lfunc_end4-init_hash_env
                                        # -- End function
	.globl	bld_table                       # -- Begin function bld_table
	.p2align	5
	.type	bld_table,@function
bld_table:                              # @bld_table
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
	move	$fp, $a0
	ld.w	$a0, $a0, 16
	beqz	$a0, .LBB5_18
# %bb.1:                                # %.preheader.lr.ph
	move	$s5, $zero
	ld.d	$s3, $fp, 8
	pcalau12i	$a0, %pc_hi20(encoding)
	addi.d	$s4, $a0, %pc_lo12(encoding)
	ori	$s6, $zero, 3
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_2:                                # %.loopexit
                                        #   in Loop: Header=BB5_3 Depth=1
	addi.w	$a0, $a0, 0
	bgeu	$s5, $a0, .LBB5_18
.LBB5_3:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_5 Depth 2
                                        #     Child Loop BB5_13 Depth 2
	ld.w	$a2, $fp, 36
	move	$s7, $zero
	ori	$a0, $zero, 2
	bltu	$a2, $a0, .LBB5_9
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a1, $fp, 16
	addi.d	$a0, $a2, -2
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a0, $s3, $a0
	addi.d	$a0, $a0, 1
	sltu	$a3, $a1, $s5
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $s5, $a3
	or	$a1, $a3, $a1
	addi.d	$a3, $a2, -1
	add.w	$a2, $a3, $s5
	.p2align	4, , 16
.LBB5_5:                                #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $s5, .LBB5_17
# %bb.6:                                #   in Loop: Header=BB5_5 Depth=2
	ld.bu	$a4, $s3, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s4, $a4
	addi.w	$s5, $s5, 1
	addi.d	$s3, $s3, 1
	bltu	$s6, $a4, .LBB5_3
# %bb.7:                                #   in Loop: Header=BB5_5 Depth=2
	slli.d	$a5, $s7, 2
	addi.w	$a3, $a3, -1
	or	$s7, $a4, $a5
	bnez	$a3, .LBB5_5
# %bb.8:                                #   in Loop: Header=BB5_3 Depth=1
	move	$s3, $a0
	move	$s5, $a2
	.p2align	4, , 16
.LBB5_9:                                # %.critedge
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a0, $fp, 16
	bgeu	$s5, $a0, .LBB5_2
.LBB5_10:                               # %.lr.ph86
                                        #   in Loop: Header=BB5_3 Depth=1
	bstrpick.d	$s8, $s5, 31, 0
	slli.d	$a0, $s8, 2
	addi.d	$s2, $a0, 4
	b	.LBB5_13
	.p2align	4, , 16
.LBB5_11:                               #   in Loop: Header=BB5_13 Depth=2
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ld.w	$a0, $a1, 4
.LBB5_12:                               #   in Loop: Header=BB5_13 Depth=2
	ld.d	$a2, $fp, 24
	addi.d	$s3, $s3, 1
	stx.w	$a0, $a2, $s2
	ld.wu	$a0, $fp, 16
	addi.d	$s8, $s8, 1
	addi.w	$s5, $s5, 1
	st.w	$s5, $a1, 4
	addi.d	$s2, $s2, 4
	bgeu	$s8, $a0, .LBB5_2
.LBB5_13:                               #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s3, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s4, $a0
	bltu	$s6, $a0, .LBB5_16
# %bb.14:                               #   in Loop: Header=BB5_13 Depth=2
	ld.w	$a1, $fp, 32
	and	$a1, $a1, $s7
	slli.d	$a1, $a1, 2
	or	$s7, $a1, $a0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s1, $a0
	st.w	$s7, $a0, 0
	bstrpick.d	$a0, $s7, 18, 0
	alsl.d	$a1, $a0, $a1, 3
	pcalau12i	$a0, %pc_hi20(hash_node_compare)
	addi.d	$a2, $a0, %pc_lo12(hash_node_compare)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(tsearch)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	bne	$a1, $s1, .LBB5_11
# %bb.15:                               #   in Loop: Header=BB5_13 Depth=2
	addi.d	$a0, $zero, -1
	b	.LBB5_12
	.p2align	4, , 16
.LBB5_16:                               # %.backedge.loopexit
                                        #   in Loop: Header=BB5_3 Depth=1
	addi.d	$s3, $s3, 1
	addi.w	$s5, $s5, 1
	b	.LBB5_3
.LBB5_17:                               #   in Loop: Header=BB5_3 Depth=1
	move	$s5, $a1
	ld.w	$a0, $fp, 16
	bgeu	$s5, $a0, .LBB5_2
	b	.LBB5_10
.LBB5_18:                               # %._crit_edge
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
.Lfunc_end5:
	.size	bld_table, .Lfunc_end5-bld_table
                                        # -- End function
	.globl	free_hash_env                   # -- Begin function free_hash_env
	.p2align	5
	.type	free_hash_env,@function
free_hash_env:                          # @free_hash_env
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(free)
	ld.d	$s0, $a0, %got_pc_lo12(free)
	move	$s1, $zero
	lu12i.w	$s2, 1024
	.p2align	4, , 16
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ldx.d	$a0, $a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(tdestroy)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 8
	bne	$s1, $s2, .LBB6_1
# %bb.2:
	ld.d	$a0, $fp, 0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end6:
	.size	free_hash_env, .Lfunc_end6-free_hash_env
                                        # -- End function
	.p2align	5                               # -- Begin function merge
	.type	merge,@function
merge:                                  # @merge
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a1
	ld.w	$a1, $a1, 8
	beqz	$a1, .LBB7_13
# %bb.1:
	move	$s0, $a3
	move	$s1, $a2
	move	$fp, $a0
	ld.w	$a2, $a0, 8
	ld.w	$a4, $a0, 12
	ld.d	$a0, $a0, 0
	add.w	$a3, $a2, $a1
	add.w	$s3, $a1, $s1
	bgeu	$a4, $a3, .LBB7_3
# %bb.2:
	st.w	$a3, $fp, 12
	bstrpick.d	$a1, $a3, 31, 0
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(xrealloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 8
	st.d	$a0, $fp, 0
.LBB7_3:
	bstrpick.d	$a1, $s3, 31, 0
	alsl.d	$a3, $a1, $a0, 3
	bstrpick.d	$s4, $s1, 31, 0
	alsl.d	$a1, $s4, $a0, 3
	sub.d	$a0, $a2, $s1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a2, $a0, 3
	move	$a0, $a3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.wu	$a2, $s2, 8
	ld.d	$a1, $s2, 0
	alsl.d	$a0, $s4, $a0, 3
	slli.d	$a2, $a2, 3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 8
	ld.w	$a1, $fp, 8
	add.w	$a0, $a1, $a0
	sltu	$a1, $s3, $a0
	add.w	$s2, $s3, $a1
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $s1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s1, $a2
	or	$s1, $a2, $a1
	st.w	$a0, $fp, 8
	bgeu	$s1, $s2, .LBB7_13
# %bb.4:                                # %.lr.ph
	addi.d	$s0, $s0, 1
	b	.LBB7_6
	.p2align	4, , 16
.LBB7_5:                                #   in Loop: Header=BB7_6 Depth=1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.w	$a2, $fp, 8
	alsl.d	$a1, $s4, $a0, 3
	addi.d	$a0, $a1, -8
	sub.d	$a2, $a2, $s1
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	addi.d	$a0, $a0, -1
	st.w	$a0, $fp, 8
	addi.w	$s2, $s2, -1
	bgeu	$s1, $s2, .LBB7_13
.LBB7_6:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 0
	addi.w	$s3, $s1, -1
	bstrpick.d	$a0, $s3, 31, 0
	slli.d	$a2, $a0, 3
	bstrpick.d	$s4, $s1, 31, 0
	slli.d	$a0, $s4, 3
	ldx.d	$a0, $a1, $a0
	ldx.d	$a1, $a1, $a2
	ld.w	$a5, $a0, 4
	ld.w	$a3, $a1, 4
	bgeu	$a3, $a5, .LBB7_5
# %bb.7:                                #   in Loop: Header=BB7_6 Depth=1
	ld.w	$a6, $a1, 12
	ld.w	$a2, $a0, 12
	bgeu	$a6, $a2, .LBB7_11
# %bb.8:                                #   in Loop: Header=BB7_6 Depth=1
	ld.w	$a4, $a1, 8
	ld.w	$a7, $a0, 0
	addi.w	$t0, $a4, 31
	bgeu	$a7, $t0, .LBB7_12
# %bb.9:                                #   in Loop: Header=BB7_6 Depth=1
	add.w	$a6, $s0, $a6
	bltu	$a6, $a5, .LBB7_12
# %bb.10:                               #   in Loop: Header=BB7_6 Depth=1
	ld.w	$a5, $a1, 0
	sltu	$a6, $a5, $a7
	masknez	$a7, $a7, $a6
	maskeqz	$a5, $a5, $a6
	ld.w	$a6, $a0, 8
	or	$a5, $a5, $a7
	st.w	$a5, $a1, 0
	st.w	$a3, $a1, 4
	sltu	$a3, $a4, $a6
	masknez	$a4, $a4, $a3
	maskeqz	$a3, $a6, $a3
	or	$a3, $a3, $a4
	st.w	$a3, $a1, 8
	st.w	$a2, $a1, 12
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	ld.d	$a1, $fp, 0
	addi.d	$a2, $a0, -1
	st.w	$a2, $fp, 8
	alsl.d	$a0, $s4, $a1, 3
	addi.d	$a1, $a0, 8
	sub.d	$a2, $a2, $s1
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, -1
	addi.w	$s1, $s3, 1
	bltu	$s1, $s2, .LBB7_6
	b	.LBB7_13
	.p2align	4, , 16
.LBB7_11:                               #   in Loop: Header=BB7_6 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	ld.d	$a1, $fp, 0
	addi.d	$a2, $a0, -1
	st.w	$a2, $fp, 8
	alsl.d	$a0, $s4, $a1, 3
	addi.d	$a1, $a0, 8
	sub.d	$a2, $a2, $s1
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, -1
	bltu	$s1, $s2, .LBB7_6
	b	.LBB7_13
.LBB7_12:                               #   in Loop: Header=BB7_6 Depth=1
	move	$s3, $s1
	addi.w	$s1, $s3, 1
	bltu	$s1, $s2, .LBB7_6
.LBB7_13:                               # %.loopexit
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end7:
	.size	merge, .Lfunc_end7-merge
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function is_polyAT_exon_p
.LCPI8_0:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	7                               # 0x7
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI8_1:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.p2align	5
	.type	is_polyAT_exon_p,@function
is_polyAT_exon_p:                       # @is_polyAT_exon_p
# %bb.0:
	addi.d	$sp, $sp, -320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 296                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 288                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 280                  # 8-byte Folded Spill
	addi.d	$fp, $sp, 320
	bstrins.d	$sp, $zero, 4, 0
	addi.w	$a4, $a1, 0
	addi.w	$a3, $a0, -1
	bgeu	$a3, $a4, .LBB8_3
# %bb.1:                                # %iter.check
	sub.w	$a5, $a1, $a0
	ori	$a6, $zero, 3
	bstrpick.d	$a4, $a3, 31, 0
	bgeu	$a5, $a6, .LBB8_15
# %bb.2:
	move	$t0, $zero
	move	$a6, $zero
	move	$t1, $zero
	move	$a7, $zero
	move	$t2, $zero
	move	$t3, $a4
	b	.LBB8_25
.LBB8_3:
	move	$t2, $zero
	move	$a7, $zero
	move	$t1, $zero
	move	$a6, $zero
	move	$t0, $zero
.LBB8_4:                                # %._crit_edge
	add.d	$a0, $a0, $t0
	sub.d	$a0, $a1, $a0
	addi.w	$a1, $a0, 1
	slli.d	$a0, $t2, 3
	alsl.w	$a0, $t2, $a0, 1
	ori	$a3, $zero, 29
	div.wu	$a2, $a0, $a1
	bltu	$a3, $a1, .LBB8_9
# %bb.5:
	ori	$a3, $zero, 6
	ori	$a0, $zero, 1
	bltu	$a3, $a2, .LBB8_14
# %bb.6:
	add.d	$a2, $t1, $t2
	slli.d	$a3, $a2, 3
	alsl.w	$a2, $a2, $a3, 1
	div.wu	$a2, $a2, $a1
	ori	$a3, $zero, 7
	bltu	$a3, $a2, .LBB8_14
# %bb.7:
	slli.d	$a2, $a6, 3
	alsl.w	$a2, $a6, $a2, 1
	div.wu	$a2, $a2, $a1
	ori	$a3, $zero, 6
	bltu	$a3, $a2, .LBB8_14
# %bb.8:
	add.d	$a2, $a6, $a7
	slli.d	$a3, $a2, 3
	alsl.w	$a2, $a2, $a3, 1
	div.wu	$a1, $a2, $a1
	ori	$a2, $zero, 7
	bgeu	$a2, $a1, .LBB8_13
	b	.LBB8_14
.LBB8_9:
	ori	$a3, $zero, 7
	ori	$a0, $zero, 1
	bltu	$a3, $a2, .LBB8_14
# %bb.10:
	add.d	$a2, $t1, $t2
	ori	$a3, $zero, 100
	mul.w	$a2, $a2, $a3
	div.wu	$a2, $a2, $a1
	ori	$a3, $zero, 94
	bltu	$a3, $a2, .LBB8_14
# %bb.11:
	slli.d	$a2, $a6, 3
	alsl.w	$a2, $a6, $a2, 1
	div.wu	$a2, $a2, $a1
	ori	$a3, $zero, 7
	bltu	$a3, $a2, .LBB8_14
# %bb.12:
	add.d	$a2, $a6, $a7
	ori	$a3, $zero, 100
	mul.w	$a2, $a2, $a3
	div.wu	$a1, $a2, $a1
	ori	$a2, $zero, 94
	bltu	$a2, $a1, .LBB8_14
.LBB8_13:
	move	$a0, $zero
.LBB8_14:
	addi.d	$sp, $fp, -320
	fld.d	$fs2, $sp, 280                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 288                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 296                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.LBB8_15:                               # %vector.main.loop.iter.check
	bstrpick.d	$a3, $a5, 31, 0
	addi.d	$a3, $a3, 1
	ori	$a6, $zero, 15
	vrepli.b	$vr0, 65
	vrepli.b	$vr1, 67
	vrepli.b	$vr2, 71
	vrepli.b	$vr3, 84
	vrepli.b	$vr4, -1
	bgeu	$a5, $a6, .LBB8_17
# %bb.16:
	move	$a5, $zero
	move	$t0, $zero
	move	$a6, $zero
	move	$t1, $zero
	move	$a7, $zero
	move	$t2, $zero
	b	.LBB8_21
.LBB8_17:                               # %vector.ph
	bstrpick.d	$a5, $a3, 32, 4
	slli.d	$a5, $a5, 4
	add.d	$a6, $a4, $a2
	pcalau12i	$a7, %pc_hi20(.LCPI8_0)
	xvld	$xr13, $a7, %pc_lo12(.LCPI8_0)
	addi.d	$a6, $a6, 8
	xvrepli.b	$xr14, 0
	xvrepli.w	$xr15, 1
	move	$a7, $a5
	xvori.b	$xr16, $xr14, 0
	xvori.b	$xr11, $xr14, 0
	xvori.b	$xr12, $xr14, 0
	xvori.b	$xr9, $xr14, 0
	xvori.b	$xr10, $xr14, 0
	xvori.b	$xr7, $xr14, 0
	xvori.b	$xr8, $xr14, 0
	xvori.b	$xr5, $xr14, 0
	xvori.b	$xr6, $xr14, 0
	.p2align	4, , 16
.LBB8_18:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a6, -8
	vinsgr2vr.d	$vr21, $t0, 0
	ld.d	$t0, $a6, 0
	vseq.b	$vr19, $vr21, $vr0
	vst	$vr19, $sp, 128
	xvld	$xr17, $sp, 128
	vinsgr2vr.d	$vr20, $t0, 0
	xvpermi.d	$xr18, $xr17, 68
	vseq.b	$vr17, $vr20, $vr0
	vst	$vr17, $sp, 0
	xvld	$xr22, $sp, 0
	xvshuf.b	$xr18, $xr0, $xr18, $xr13
	xvand.v	$xr18, $xr18, $xr15
	xvadd.w	$xr5, $xr5, $xr18
	xvpermi.d	$xr18, $xr22, 68
	vseq.b	$vr22, $vr21, $vr1
	vst	$vr22, $sp, 160
	xvld	$xr23, $sp, 160
	xvshuf.b	$xr18, $xr0, $xr18, $xr13
	xvand.v	$xr18, $xr18, $xr15
	xvadd.w	$xr6, $xr6, $xr18
	xvpermi.d	$xr23, $xr23, 68
	vseq.b	$vr18, $vr20, $vr1
	vst	$vr18, $sp, 32
	xvld	$xr24, $sp, 32
	xvshuf.b	$xr23, $xr0, $xr23, $xr13
	xvand.v	$xr23, $xr23, $xr15
	xvadd.w	$xr7, $xr7, $xr23
	xvpermi.d	$xr23, $xr24, 68
	vseq.b	$vr24, $vr21, $vr2
	vst	$vr24, $sp, 192
	xvld	$xr25, $sp, 192
	xvshuf.b	$xr23, $xr0, $xr23, $xr13
	xvand.v	$xr23, $xr23, $xr15
	xvadd.w	$xr8, $xr8, $xr23
	xvpermi.d	$xr23, $xr25, 68
	vseq.b	$vr25, $vr20, $vr2
	vst	$vr25, $sp, 64
	xvld	$xr26, $sp, 64
	xvshuf.b	$xr23, $xr0, $xr23, $xr13
	xvand.v	$xr23, $xr23, $xr15
	xvadd.w	$xr9, $xr9, $xr23
	xvpermi.d	$xr23, $xr26, 68
	vseq.b	$vr21, $vr21, $vr3
	vst	$vr21, $sp, 224
	xvld	$xr26, $sp, 224
	xvshuf.b	$xr23, $xr0, $xr23, $xr13
	xvand.v	$xr23, $xr23, $xr15
	xvadd.w	$xr10, $xr10, $xr23
	xvpermi.d	$xr23, $xr26, 68
	vseq.b	$vr20, $vr20, $vr3
	vst	$vr20, $sp, 96
	xvld	$xr26, $sp, 96
	xvshuf.b	$xr23, $xr0, $xr23, $xr13
	xvand.v	$xr23, $xr23, $xr15
	xvadd.w	$xr11, $xr11, $xr23
	xvpermi.d	$xr23, $xr26, 68
	xvshuf.b	$xr23, $xr0, $xr23, $xr13
	xvand.v	$xr23, $xr23, $xr15
	xvadd.w	$xr12, $xr12, $xr23
	vxor.v	$vr21, $vr21, $vr24
	vor.v	$vr21, $vr22, $vr21
	vor.v	$vr19, $vr19, $vr21
	vilvl.b	$vr19, $vr19, $vr19
	vxor.v	$vr19, $vr19, $vr4
	vpickve2gr.h	$t0, $vr19, 0
	xvinsgr2vr.w	$xr21, $t0, 0
	vpickve2gr.h	$t0, $vr19, 1
	xvinsgr2vr.w	$xr21, $t0, 1
	vpickve2gr.h	$t0, $vr19, 2
	xvinsgr2vr.w	$xr21, $t0, 2
	vpickve2gr.h	$t0, $vr19, 3
	xvinsgr2vr.w	$xr21, $t0, 3
	vpickve2gr.h	$t0, $vr19, 4
	xvinsgr2vr.w	$xr21, $t0, 4
	vpickve2gr.h	$t0, $vr19, 5
	xvinsgr2vr.w	$xr21, $t0, 5
	vpickve2gr.h	$t0, $vr19, 6
	xvinsgr2vr.w	$xr21, $t0, 6
	vpickve2gr.h	$t0, $vr19, 7
	xvinsgr2vr.w	$xr21, $t0, 7
	xvand.v	$xr19, $xr21, $xr15
	xvadd.w	$xr14, $xr14, $xr19
	vxor.v	$vr19, $vr20, $vr25
	vor.v	$vr18, $vr18, $vr19
	vor.v	$vr17, $vr17, $vr18
	vilvl.b	$vr17, $vr17, $vr17
	vxor.v	$vr17, $vr17, $vr4
	vpickve2gr.h	$t0, $vr17, 0
	xvinsgr2vr.w	$xr18, $t0, 0
	vpickve2gr.h	$t0, $vr17, 1
	xvinsgr2vr.w	$xr18, $t0, 1
	vpickve2gr.h	$t0, $vr17, 2
	xvinsgr2vr.w	$xr18, $t0, 2
	vpickve2gr.h	$t0, $vr17, 3
	xvinsgr2vr.w	$xr18, $t0, 3
	vpickve2gr.h	$t0, $vr17, 4
	xvinsgr2vr.w	$xr18, $t0, 4
	vpickve2gr.h	$t0, $vr17, 5
	xvinsgr2vr.w	$xr18, $t0, 5
	vpickve2gr.h	$t0, $vr17, 6
	xvinsgr2vr.w	$xr18, $t0, 6
	vpickve2gr.h	$t0, $vr17, 7
	xvinsgr2vr.w	$xr18, $t0, 7
	xvand.v	$xr17, $xr18, $xr15
	xvadd.w	$xr16, $xr16, $xr17
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 16
	bnez	$a7, .LBB8_18
# %bb.19:                               # %middle.block
	xvadd.w	$xr13, $xr16, $xr14
	xvpermi.d	$xr14, $xr13, 78
	xvshuf4i.w	$xr14, $xr14, 228
	xvadd.w	$xr13, $xr13, $xr14
	xvpermi.d	$xr14, $xr13, 68
	xvshuf4i.w	$xr14, $xr14, 14
	xvadd.w	$xr13, $xr13, $xr14
	xvpermi.d	$xr14, $xr13, 68
	xvrepl128vei.w	$xr14, $xr14, 1
	xvadd.w	$xr13, $xr13, $xr14
	xvpickve2gr.w	$t0, $xr13, 0
	xvadd.w	$xr11, $xr12, $xr11
	xvpermi.d	$xr12, $xr11, 78
	xvshuf4i.w	$xr12, $xr12, 228
	xvadd.w	$xr11, $xr11, $xr12
	xvpermi.d	$xr12, $xr11, 68
	xvshuf4i.w	$xr12, $xr12, 14
	xvadd.w	$xr11, $xr11, $xr12
	xvpermi.d	$xr12, $xr11, 68
	xvrepl128vei.w	$xr12, $xr12, 1
	xvadd.w	$xr11, $xr11, $xr12
	xvpickve2gr.w	$a6, $xr11, 0
	xvadd.w	$xr9, $xr10, $xr9
	xvpermi.d	$xr10, $xr9, 78
	xvshuf4i.w	$xr10, $xr10, 228
	xvadd.w	$xr9, $xr9, $xr10
	xvpermi.d	$xr10, $xr9, 68
	xvshuf4i.w	$xr10, $xr10, 14
	xvadd.w	$xr9, $xr9, $xr10
	xvpermi.d	$xr10, $xr9, 68
	xvrepl128vei.w	$xr10, $xr10, 1
	xvadd.w	$xr9, $xr9, $xr10
	xvpickve2gr.w	$t1, $xr9, 0
	xvadd.w	$xr7, $xr8, $xr7
	xvpermi.d	$xr8, $xr7, 78
	xvshuf4i.w	$xr8, $xr8, 228
	xvadd.w	$xr7, $xr7, $xr8
	xvpermi.d	$xr8, $xr7, 68
	xvshuf4i.w	$xr8, $xr8, 14
	xvadd.w	$xr7, $xr7, $xr8
	xvpermi.d	$xr8, $xr7, 68
	xvrepl128vei.w	$xr8, $xr8, 1
	xvadd.w	$xr7, $xr7, $xr8
	xvpickve2gr.w	$a7, $xr7, 0
	xvadd.w	$xr5, $xr6, $xr5
	xvpermi.d	$xr6, $xr5, 78
	xvshuf4i.w	$xr6, $xr6, 228
	xvadd.w	$xr5, $xr5, $xr6
	xvpermi.d	$xr6, $xr5, 68
	xvshuf4i.w	$xr6, $xr6, 14
	xvadd.w	$xr5, $xr5, $xr6
	xvpermi.d	$xr6, $xr5, 68
	xvrepl128vei.w	$xr6, $xr6, 1
	xvadd.w	$xr5, $xr5, $xr6
	xvpickve2gr.w	$t2, $xr5, 0
	beq	$a3, $a5, .LBB8_4
# %bb.20:                               # %vec.epilog.iter.check
	andi	$t3, $a3, 12
	beqz	$t3, .LBB8_24
.LBB8_21:                               # %vec.epilog.ph
	bstrpick.d	$t3, $a3, 32, 2
	pcalau12i	$t4, %pc_hi20(.LCPI8_1)
	vld	$vr5, $t4, %pc_lo12(.LCPI8_1)
	slli.d	$t4, $t3, 2
	alsl.d	$t3, $t3, $a4, 2
	vinsgr2vr.w	$vr6, $t0, 0
	vinsgr2vr.w	$vr10, $zero, 0
	vori.b	$vr9, $vr5, 0
	vshuf.w	$vr9, $vr10, $vr6
	vinsgr2vr.w	$vr6, $a6, 0
	vori.b	$vr8, $vr5, 0
	vshuf.w	$vr8, $vr10, $vr6
	vinsgr2vr.w	$vr6, $t1, 0
	vori.b	$vr7, $vr5, 0
	vshuf.w	$vr7, $vr10, $vr6
	vinsgr2vr.w	$vr11, $a7, 0
	vori.b	$vr6, $vr5, 0
	vshuf.w	$vr6, $vr10, $vr11
	vinsgr2vr.w	$vr11, $t2, 0
	vshuf.w	$vr5, $vr10, $vr11
	add.d	$a4, $a5, $a4
	add.d	$a4, $a2, $a4
	sub.d	$a5, $a5, $t4
	vrepli.w	$vr10, 1
	.p2align	4, , 16
.LBB8_22:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	vinsgr2vr.w	$vr11, $a6, 0
	vseq.b	$vr12, $vr11, $vr0
	vilvl.b	$vr13, $vr12, $vr12
	vilvl.h	$vr13, $vr13, $vr13
	vand.v	$vr13, $vr13, $vr10
	vadd.w	$vr5, $vr5, $vr13
	vseq.b	$vr13, $vr11, $vr1
	vilvl.b	$vr14, $vr13, $vr13
	vilvl.h	$vr14, $vr14, $vr14
	vand.v	$vr14, $vr14, $vr10
	vadd.w	$vr6, $vr6, $vr14
	vseq.b	$vr14, $vr11, $vr2
	vilvl.b	$vr15, $vr14, $vr14
	vilvl.h	$vr15, $vr15, $vr15
	vand.v	$vr15, $vr15, $vr10
	vadd.w	$vr7, $vr7, $vr15
	vseq.b	$vr11, $vr11, $vr3
	vilvl.b	$vr15, $vr11, $vr11
	vilvl.h	$vr15, $vr15, $vr15
	vand.v	$vr15, $vr15, $vr10
	vadd.w	$vr8, $vr8, $vr15
	vxor.v	$vr11, $vr11, $vr14
	vor.v	$vr11, $vr13, $vr11
	vor.v	$vr11, $vr12, $vr11
	vilvl.b	$vr11, $vr11, $vr11
	vilvl.h	$vr11, $vr11, $vr11
	vxor.v	$vr11, $vr11, $vr4
	vand.v	$vr11, $vr11, $vr10
	vadd.w	$vr9, $vr9, $vr11
	addi.d	$a5, $a5, 4
	addi.d	$a4, $a4, 4
	bnez	$a5, .LBB8_22
# %bb.23:                               # %vec.epilog.middle.block
	vshuf4i.w	$vr0, $vr9, 14
	vadd.w	$vr0, $vr9, $vr0
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t0, $vr0, 0
	vshuf4i.w	$vr0, $vr8, 14
	vadd.w	$vr0, $vr8, $vr0
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a6, $vr0, 0
	vshuf4i.w	$vr0, $vr7, 14
	vadd.w	$vr0, $vr7, $vr0
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t1, $vr0, 0
	vshuf4i.w	$vr0, $vr6, 14
	vadd.w	$vr0, $vr6, $vr0
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a7, $vr0, 0
	vshuf4i.w	$vr0, $vr5, 14
	vadd.w	$vr0, $vr5, $vr0
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t2, $vr0, 0
	beq	$a3, $t4, .LBB8_4
	b	.LBB8_25
.LBB8_24:
	add.d	$t3, $a5, $a4
.LBB8_25:                               # %.lr.ph.preheader
	add.d	$a2, $a2, $t3
	sub.d	$a3, $a1, $t3
	ori	$a4, $zero, 19
	pcalau12i	$a5, %pc_hi20(.LJTI8_0)
	addi.d	$a5, $a5, %pc_lo12(.LJTI8_0)
	b	.LBB8_28
	.p2align	4, , 16
.LBB8_26:                               #   in Loop: Header=BB8_28 Depth=1
	addi.d	$t1, $t1, 1
.LBB8_27:                               #   in Loop: Header=BB8_28 Depth=1
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, 1
	beqz	$a3, .LBB8_4
.LBB8_28:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t3, $a2, 0
	addi.d	$t3, $t3, -65
	bltu	$a4, $t3, .LBB8_33
# %bb.29:                               # %.lr.ph
                                        #   in Loop: Header=BB8_28 Depth=1
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $a5, $t3
	add.d	$t3, $a5, $t3
	jr	$t3
.LBB8_30:                               #   in Loop: Header=BB8_28 Depth=1
	addi.d	$t2, $t2, 1
	b	.LBB8_27
.LBB8_31:                               #   in Loop: Header=BB8_28 Depth=1
	addi.d	$a7, $a7, 1
	b	.LBB8_27
.LBB8_32:                               #   in Loop: Header=BB8_28 Depth=1
	addi.d	$a6, $a6, 1
	b	.LBB8_27
.LBB8_33:                               #   in Loop: Header=BB8_28 Depth=1
	addi.d	$t0, $t0, 1
	b	.LBB8_27
.Lfunc_end8:
	.size	is_polyAT_exon_p, .Lfunc_end8-is_polyAT_exon_p
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI8_0:
	.word	.LBB8_30-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_31-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_26-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_33-.LJTI8_0
	.word	.LBB8_32-.LJTI8_0
                                        # -- End function
	.text
	.globl	free_align                      # -- Begin function free_align
	.p2align	5
	.type	free_align,@function
free_align:                             # @free_align
# %bb.0:
	beqz	$a0, .LBB9_4
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	.p2align	4, , 16
.LBB9_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $fp, 0
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(Free_script)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$fp, $s0
	bnez	$s0, .LBB9_2
# %bb.3:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB9_4:                                # %._crit_edge
	ret
.Lfunc_end9:
	.size	free_align, .Lfunc_end9-free_align
                                        # -- End function
	.globl	init_encoding                   # -- Begin function init_encoding
	.p2align	5
	.type	init_encoding,@function
init_encoding:                          # @init_encoding
# %bb.0:                                # %vector.ph
	pcalau12i	$a0, %pc_hi20(encoding)
	addi.d	$a0, $a0, %pc_lo12(encoding)
	xvrepli.w	$xr0, 4
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	st.w	$zero, $a0, 260
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 268
	ori	$a1, $zero, 2
	st.w	$a1, $a0, 284
	ori	$a1, $zero, 3
	st.w	$a1, $a0, 336
	ret
.Lfunc_end10:
	.size	init_encoding, .Lfunc_end10-init_encoding
                                        # -- End function
	.globl	print_exons                     # -- Begin function print_exons
	.p2align	5
	.type	print_exons,@function
print_exons:                            # @print_exons
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
	move	$fp, $a0
	ld.w	$a0, $a0, 8
	addi.w	$a0, $a0, -1
	beqz	$a0, .LBB11_6
# %bb.1:                                # %.lr.ph
	bstrpick.d	$s3, $a0, 31, 0
	beqz	$a1, .LBB11_7
# %bb.2:                                # %.lr.ph.split.preheader
	move	$s4, $zero
	slt	$a0, $zero, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	maskeqz	$a0, $a2, $a0
	or	$s0, $a0, $a1
	slli.d	$s5, $s3, 3
	pcalau12i	$a0, %got_pc_hi20(options)
	ld.d	$s6, $a0, %got_pc_lo12(options)
	addi.w	$s7, $zero, -1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s1, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s2, $a0, %pc_lo12(.L.str.1)
	b	.LBB11_4
	.p2align	4, , 16
.LBB11_3:                               #   in Loop: Header=BB11_4 Depth=1
	ld.d	$a7, $s6, 8
	alsl.d	$a7, $a6, $a7, 3
	addi.d	$a6, $a7, 2
	bstrpick.d	$a0, $a0, 55, 34
	st.d	$a0, $sp, 8
	st.d	$a6, $sp, 0
	move	$a0, $s2
	move	$a6, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 8
	beq	$s5, $s4, .LBB11_9
.LBB11_4:                               # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ldx.d	$a1, $a0, $s4
	ld.d	$a0, $a1, 24
	ld.w	$a2, $a1, 0
	ld.w	$a7, $s6, 68
	ld.w	$t0, $a1, 8
	ld.w	$a3, $a1, 4
	ld.w	$a4, $a1, 12
	ld.w	$a5, $a1, 16
	srai.d	$a6, $a0, 56
	add.w	$a1, $a7, $a2
	add.w	$a2, $t0, $a7
	blt	$s7, $a6, .LBB11_3
# %bb.5:                                #   in Loop: Header=BB11_4 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 8
	bne	$s5, $s4, .LBB11_4
	b	.LBB11_9
.LBB11_6:
	move	$s3, $zero
	b	.LBB11_9
.LBB11_7:                               # %.lr.ph.split.us.preheader
	move	$s1, $zero
	pcalau12i	$a0, %got_pc_hi20(options)
	ld.d	$s2, $a0, %got_pc_lo12(options)
	slli.d	$s4, $s3, 3
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s0, $a0, %pc_lo12(.L.str)
	.p2align	4, , 16
.LBB11_8:                               # %.lr.ph.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ldx.d	$a0, $a0, $s1
	ld.w	$a1, $a0, 0
	ld.w	$a2, $s2, 68
	ld.w	$a6, $a0, 8
	ld.w	$a3, $a0, 4
	ld.w	$a4, $a0, 12
	ld.w	$a5, $a0, 16
	add.w	$a1, $a2, $a1
	add.w	$a2, $a6, $a2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 8
	bne	$s4, $s1, .LBB11_8
.LBB11_9:                               # %._crit_edge
	ld.d	$a0, $fp, 0
	slli.d	$a1, $s3, 3
	ldx.d	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(options)
	ld.d	$a1, $a1, %got_pc_lo12(options)
	ld.w	$a2, $a0, 0
	ld.w	$a6, $a1, 68
	add.w	$a1, $a6, $a2
	ld.w	$a2, $a0, 8
	ld.w	$a3, $a0, 4
	ld.w	$a4, $a0, 12
	ld.w	$a5, $a0, 16
	add.w	$a2, $a2, $a6
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
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
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end11:
	.size	print_exons, .Lfunc_end11-print_exons
                                        # -- End function
	.p2align	5                               # -- Begin function msp_rna_compare
	.type	msp_rna_compare,@function
msp_rna_compare:                        # @msp_rna_compare
# %bb.0:
	ld.d	$a2, $a0, 0
	ld.d	$a1, $a1, 0
	ld.w	$a3, $a2, 4
	ld.w	$a4, $a1, 4
	ori	$a0, $zero, 1
	bltu	$a4, $a3, .LBB12_4
# %bb.1:
	addi.w	$a0, $zero, -1
	bltu	$a3, $a4, .LBB12_4
# %bb.2:
	ld.w	$a2, $a2, 12
	ld.w	$a1, $a1, 12
	bltu	$a1, $a2, .LBB12_4
# %bb.3:
	sltu	$a0, $a2, $a1
.LBB12_4:
	ret
.Lfunc_end12:
	.size	msp_rna_compare, .Lfunc_end12-msp_rna_compare
                                        # -- End function
	.p2align	5                               # -- Begin function msp_compare
	.type	msp_compare,@function
msp_compare:                            # @msp_compare
# %bb.0:
	ld.d	$a2, $a0, 0
	ld.d	$a1, $a1, 0
	ld.w	$a3, $a2, 0
	ld.w	$a4, $a1, 0
	ori	$a0, $zero, 1
	bgeu	$a4, $a3, .LBB13_2
.LBB13_1:
	ret
.LBB13_2:
	bgeu	$a3, $a4, .LBB13_4
# %bb.3:
	addi.w	$a0, $zero, -1
	ret
.LBB13_4:
	ld.w	$a2, $a2, 4
	ld.w	$a1, $a1, 4
	bltu	$a1, $a2, .LBB13_1
# %bb.5:
	sltu	$a0, $a2, $a1
	sub.d	$a0, $zero, $a0
	ret
.Lfunc_end13:
	.size	msp_compare, .Lfunc_end13-msp_compare
                                        # -- End function
	.p2align	5                               # -- Begin function link_msps
	.type	link_msps,@function
link_msps:                              # @link_msps
# %bb.0:
	bgeu	$a1, $a2, .LBB14_26
# %bb.1:                                # %.preheader61.preheader
	addi.d	$sp, $sp, -16
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	st.d	$s0, $sp, 0                     # 8-byte Folded Spill
	bstrpick.d	$a3, $a1, 31, 0
	bstrpick.d	$a1, $a2, 31, 0
	slli.d	$a2, $a3, 3
	sub.d	$a4, $a1, $a3
	addi.w	$a5, $zero, -4
	lu32i.d	$a5, 0
	.p2align	4, , 16
.LBB14_2:                               # %.preheader61
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a0, 0
	ldx.d	$a6, $a6, $a2
	ld.d	$a7, $a6, 24
	st.w	$zero, $a6, 20
	or	$a7, $a7, $a5
	st.d	$a7, $a6, 24
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 8
	bnez	$a4, .LBB14_2
# %bb.3:                                # %.lr.ph67.preheader
	move	$a2, $zero
	move	$a4, $zero
	slli.d	$a5, $a3, 3
	addi.d	$a5, $a5, 8
	b	.LBB14_5
	.p2align	4, , 16
.LBB14_4:                               # %.loopexit
                                        #   in Loop: Header=BB14_5 Depth=1
	sltu	$a7, $a4, $t0
	maskeqz	$t0, $t0, $a7
	masknez	$a4, $a4, $a7
	or	$a4, $t0, $a4
	masknez	$a2, $a2, $a7
	maskeqz	$a6, $a6, $a7
	or	$a2, $a6, $a2
	addi.d	$a5, $a5, 8
	beq	$a3, $a1, .LBB14_27
.LBB14_5:                               # %.lr.ph67
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_8 Depth 2
	ld.d	$a7, $a0, 0
	move	$a6, $a3
	slli.d	$a3, $a3, 3
	ldx.d	$a7, $a7, $a3
	ld.w	$t0, $a7, 16
	ld.w	$t1, $a7, 20
	addi.d	$a3, $a6, 1
	add.w	$t0, $t1, $t0
	st.w	$t0, $a7, 20
	bgeu	$a3, $a1, .LBB14_4
# %bb.6:                                # %.lr.ph
                                        #   in Loop: Header=BB14_5 Depth=1
	slli.d	$t1, $a6, 2
	bstrpick.d	$t1, $t1, 31, 2
	slli.d	$t1, $t1, 2
	move	$t2, $a5
	move	$t3, $a3
	b	.LBB14_8
	.p2align	4, , 16
.LBB14_7:                               # %lies_after_p.exit.thread
                                        #   in Loop: Header=BB14_8 Depth=2
	addi.d	$t3, $t3, 1
	addi.d	$t2, $t2, 8
	bgeu	$t3, $a1, .LBB14_4
.LBB14_8:                               #   Parent Loop BB14_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t4, $a0, 0
	ldx.d	$t4, $t4, $t2
	ld.w	$t6, $t4, 0
	ld.w	$t7, $a7, 8
	ld.w	$t5, $t4, 4
	ld.w	$t8, $a7, 12
	bgeu	$t7, $t6, .LBB14_13
# %bb.9:                                #   in Loop: Header=BB14_8 Depth=2
	bgeu	$t8, $t5, .LBB14_20
.LBB14_10:                              # %lies_after_p.exit.thread56
                                        #   in Loop: Header=BB14_8 Depth=2
	ld.w	$t7, $a7, 20
	ld.w	$t8, $t4, 20
	bltu	$t7, $t8, .LBB14_7
# %bb.11:                               #   in Loop: Header=BB14_8 Depth=2
	ld.w	$t8, $a7, 0
	sub.d	$t6, $t6, $t8
	addi.w	$t8, $t6, 0
	srai.d	$t8, $t8, 31
	ld.w	$fp, $a7, 4
	xor	$t6, $t6, $t8
	sub.d	$t6, $t6, $t8
	bstrpick.d	$t6, $t6, 31, 15
	sub.d	$t5, $t5, $fp
	addi.w	$t8, $t5, 0
	srai.d	$t8, $t8, 31
	xor	$t5, $t5, $t8
	sub.d	$t5, $t5, $t8
	bstrpick.d	$t5, $t5, 31, 15
	add.d	$t5, $t5, $t6
	bgeu	$t5, $t7, .LBB14_7
# %bb.12:                               #   in Loop: Header=BB14_8 Depth=2
	ld.d	$t6, $t4, 24
	sub.d	$t5, $t7, $t5
	st.w	$t5, $t4, 20
	bstrins.d	$t6, $zero, 31, 2
	or	$t5, $t6, $t1
	st.d	$t5, $t4, 24
	b	.LBB14_7
	.p2align	4, , 16
.LBB14_13:                              #   in Loop: Header=BB14_8 Depth=2
	bgeu	$t8, $t5, .LBB14_7
# %bb.14:                               #   in Loop: Header=BB14_8 Depth=2
	ld.w	$t8, $a7, 0
	bltu	$t6, $t8, .LBB14_7
# %bb.15:                               #   in Loop: Header=BB14_8 Depth=2
	ld.w	$fp, $t4, 8
	bltu	$fp, $t7, .LBB14_7
# %bb.16:                               #   in Loop: Header=BB14_8 Depth=2
	sub.w	$t8, $t6, $t8
	sub.w	$s0, $t7, $t6
	bgeu	$s0, $t8, .LBB14_7
# %bb.17:                               #   in Loop: Header=BB14_8 Depth=2
	sub.w	$t7, $fp, $t7
	bgeu	$s0, $t7, .LBB14_7
# %bb.18:                               # %lies_after_p.exit
                                        #   in Loop: Header=BB14_8 Depth=2
	pcalau12i	$fp, %got_pc_hi20(options)
	ld.d	$fp, $fp, %got_pc_lo12(options)
	ld.w	$fp, $fp, 40
	bgeu	$fp, $t8, .LBB14_7
# %bb.19:                               # %lies_after_p.exit
                                        #   in Loop: Header=BB14_8 Depth=2
	bltu	$fp, $t7, .LBB14_10
	b	.LBB14_7
	.p2align	4, , 16
.LBB14_20:                              #   in Loop: Header=BB14_8 Depth=2
	ld.w	$t7, $a7, 4
	bltu	$t5, $t7, .LBB14_7
# %bb.21:                               #   in Loop: Header=BB14_8 Depth=2
	ld.w	$fp, $t4, 12
	bltu	$fp, $t8, .LBB14_7
# %bb.22:                               #   in Loop: Header=BB14_8 Depth=2
	sub.w	$t7, $t5, $t7
	sub.w	$s0, $t8, $t5
	bgeu	$s0, $t7, .LBB14_7
# %bb.23:                               #   in Loop: Header=BB14_8 Depth=2
	sub.w	$t8, $fp, $t8
	bgeu	$s0, $t8, .LBB14_7
# %bb.24:                               #   in Loop: Header=BB14_8 Depth=2
	pcalau12i	$fp, %got_pc_hi20(options)
	ld.d	$fp, $fp, %got_pc_lo12(options)
	ld.w	$fp, $fp, 40
	bgeu	$fp, $t7, .LBB14_7
# %bb.25:                               #   in Loop: Header=BB14_8 Depth=2
	bltu	$fp, $t8, .LBB14_10
	b	.LBB14_7
.LBB14_26:
	addi.d	$a2, $zero, -1
	addi.w	$a0, $a2, 0
	ret
.LBB14_27:
	ld.d	$s0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	addi.w	$a0, $a2, 0
	ret
.Lfunc_end14:
	.size	link_msps, .Lfunc_end14-link_msps
                                        # -- End function
	.p2align	5                               # -- Begin function msp2exons
	.type	msp2exons,@function
msp2exons:                              # @msp2exons
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	bltz	$a1, .LBB15_14
# %bb.1:                                # %.lr.ph
	move	$s0, $a0
	bstrpick.d	$a0, $a1, 31, 0
	beqz	$a3, .LBB15_6
# %bb.2:                                # %.lr.ph.split.preheader
	ld.w	$a1, $fp, 8
	addi.w	$s1, $zero, -1
	b	.LBB15_4
	.p2align	4, , 16
.LBB15_3:                               # %add_col_elt.exit
                                        #   in Loop: Header=BB15_4 Depth=1
	bstrpick.d	$a2, $a1, 31, 0
	addi.w	$a1, $a1, 1
	st.w	$a1, $fp, 8
	slli.d	$a2, $a2, 3
	stx.d	$s2, $a0, $a2
	ld.d	$a0, $s2, 24
	slli.d	$a0, $a0, 32
	srai.d	$a0, $a0, 34
	bge	$s1, $a0, .LBB15_14
.LBB15_4:                               # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $a0, 3
	ldx.d	$s2, $s0, $a0
	ld.w	$a2, $fp, 12
	ld.d	$a0, $fp, 0
	bltu	$a1, $a2, .LBB15_3
# %bb.5:                                #   in Loop: Header=BB15_4 Depth=1
	addi.d	$a1, $a2, 5
	st.w	$a1, $fp, 12
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(xrealloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	st.d	$a0, $fp, 0
	b	.LBB15_3
.LBB15_6:
	addi.w	$s2, $zero, -1
	b	.LBB15_8
	.p2align	4, , 16
.LBB15_7:                               # %add_col_elt.exit.us
                                        #   in Loop: Header=BB15_8 Depth=1
	addi.d	$a1, $a2, 1
	st.w	$a1, $fp, 8
	bstrpick.d	$a1, $a2, 31, 0
	slli.d	$a1, $a1, 3
	stx.d	$s1, $a0, $a1
	ld.d	$s3, $s1, 24
	slli.d	$a0, $s3, 32
	srai.d	$a0, $a0, 34
	bge	$s2, $a0, .LBB15_14
.LBB15_8:                               # %.lr.ph.split.us
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $a0, 3
	ldx.d	$s1, $s0, $a0
	ld.w	$a2, $fp, 8
	ld.d	$a0, $fp, 0
	beqz	$a2, .LBB15_12
# %bb.9:                                #   in Loop: Header=BB15_8 Depth=1
	addi.d	$a1, $a2, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a0, $a1
	ld.w	$a6, $s1, 8
	ld.w	$a3, $a1, 0
	addi.w	$a4, $a6, 30
	bgeu	$a3, $a4, .LBB15_12
# %bb.10:                               #   in Loop: Header=BB15_8 Depth=1
	ld.w	$a5, $s1, 12
	ld.w	$a4, $a1, 4
	addi.w	$a7, $a5, -1
	bgeu	$a7, $a4, .LBB15_12
# %bb.11:                               #   in Loop: Header=BB15_8 Depth=1
	ld.w	$a0, $a1, 8
	sltu	$a2, $a6, $a0
	masknez	$a6, $a6, $a2
	ld.w	$a7, $a1, 12
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a6
	st.w	$a0, $a1, 8
	sltu	$a0, $a5, $a7
	masknez	$a2, $a5, $a0
	ld.w	$a5, $s1, 0
	maskeqz	$a0, $a7, $a0
	or	$a0, $a0, $a2
	st.w	$a0, $a1, 12
	sltu	$a0, $a3, $a5
	masknez	$a2, $a5, $a0
	ld.w	$a5, $s1, 4
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	st.w	$a0, $a1, 0
	sltu	$a0, $a4, $a5
	masknez	$a2, $a5, $a0
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a2
	st.w	$a0, $a1, 4
	ld.d	$s3, $s1, 24
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s3, 32
	srai.d	$a0, $a0, 34
	blt	$s2, $a0, .LBB15_8
	b	.LBB15_14
	.p2align	4, , 16
.LBB15_12:                              # %.thread.us
                                        #   in Loop: Header=BB15_8 Depth=1
	ld.w	$a1, $fp, 12
	bltu	$a2, $a1, .LBB15_7
# %bb.13:                               #   in Loop: Header=BB15_8 Depth=1
	addi.d	$a1, $a1, 5
	st.w	$a1, $fp, 12
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(xrealloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 8
	st.d	$a0, $fp, 0
	b	.LBB15_7
.LBB15_14:                              # %._crit_edge
	ld.w	$a2, $fp, 8
	ori	$a0, $zero, 2
	bltu	$a2, $a0, .LBB15_17
# %bb.15:                               # %.lr.ph71.preheader
	move	$a0, $zero
	move	$a1, $zero
	addi.d	$a3, $a2, -1
	addi.w	$a2, $a2, -2
	bstrpick.d	$a3, $a3, 31, 0
	slli.d	$a3, $a3, 3
	.p2align	4, , 16
.LBB15_16:                              # %.lr.ph71
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $fp, 0
	ldx.d	$a5, $a4, $a3
	ldx.d	$a6, $a4, $a0
	stx.d	$a5, $a4, $a0
	ld.d	$a4, $fp, 0
	stx.d	$a6, $a4, $a3
	addi.d	$a1, $a1, 1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a0, $a0, 8
	addi.w	$a2, $a2, -1
	addi.d	$a3, $a3, -8
	bltu	$a1, $a4, .LBB15_16
.LBB15_17:                              # %.loopexit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end15:
	.size	msp2exons, .Lfunc_end15-msp2exons
                                        # -- End function
	.p2align	5                               # -- Begin function hash_node_compare
	.type	hash_node_compare,@function
hash_node_compare:                      # @hash_node_compare
# %bb.0:
	ld.w	$a0, $a0, 0
	ld.w	$a1, $a1, 0
	sltu	$a2, $a0, $a1
	sltu	$a0, $a1, $a0
	sub.d	$a0, $a0, $a2
	ret
.Lfunc_end16:
	.size	hash_node_compare, .Lfunc_end16-hash_node_compare
                                        # -- End function
	.p2align	5                               # -- Begin function compute_max_score
	.type	compute_max_score,@function
compute_max_score:                      # @compute_max_score
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
	pcalau12i	$a4, %got_pc_hi20(options)
	ld.d	$s7, $a4, %got_pc_lo12(options)
	move	$s6, $a3
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	ld.w	$a0, $s7, 44
	ld.w	$s3, $a2, 0
	ld.w	$s4, $a2, 4
	ld.w	$s2, $a2, 8
	slli.d	$a0, $a0, 1
	addi.d	$a0, $a0, 4
	bstrpick.d	$a0, $a0, 31, 1
	slli.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	addi.w	$a2, $zero, -1
	move	$a1, $a2
	lu32i.d	$a1, 0
	st.d	$a1, $fp, 12
	ld.w	$a1, $s7, 16
	move	$s5, $a0
	st.w	$zero, $fp, 20
	beqz	$a1, .LBB17_9
# %bb.1:                                # %.lr.ph
	move	$a0, $s2
	move	$s2, $s1
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	bge	$a2, $s6, .LBB17_5
# %bb.2:                                # %.lr.ph.split.us
	beqz	$s6, .LBB17_7
# %bb.3:                                # %.lr.ph.split.us.split.preheader
	move	$s0, $zero
	move	$s6, $zero
	move	$s8, $zero
	move	$s1, $a0
	.p2align	4, , 16
.LBB17_4:                               # %.lr.ph.split.us.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 8
	add.d	$a0, $a0, $s0
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 8
	st.d	$a0, $sp, 0
	move	$a0, $s2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $fp
	move	$a3, $s6
	move	$a4, $s3
	move	$a5, $s4
	move	$a6, $s1
	move	$a7, $s5
	pcaddu18i	$ra, %call36(compute_max_score_1)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s7, 16
	addi.d	$s8, $s8, 1
	addi.w	$s6, $s6, 1
	addi.d	$s0, $s0, 8
	bltu	$s8, $a0, .LBB17_4
	b	.LBB17_9
.LBB17_5:                               # %.thread.preheader
	move	$s6, $zero
	move	$s0, $zero
	ori	$s8, $zero, 4
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	move	$s1, $a0
	move	$s2, $a2
	.p2align	4, , 16
.LBB17_6:                               # %.thread
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 8
	add.d	$a0, $a0, $s8
	st.d	$s2, $sp, 8
	st.d	$a0, $sp, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $fp
	move	$a3, $s6
	move	$a4, $s3
	move	$a5, $s4
	move	$a6, $s1
	move	$a7, $s5
	pcaddu18i	$ra, %call36(compute_max_score_1)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s7, 16
	addi.d	$s0, $s0, 1
	addi.w	$s6, $s6, 1
	addi.d	$s8, $s8, 8
	bltu	$s0, $a0, .LBB17_6
	b	.LBB17_9
.LBB17_7:                               # %.thread.us.us.preheader
	move	$s6, $zero
	move	$s8, $zero
	ori	$s0, $zero, 4
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB17_8:                               # %.thread.us.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 8
	add.d	$a0, $a0, $s0
	addi.d	$a0, $a0, -4
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 8
	st.d	$a0, $sp, 0
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	move	$a0, $s2
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	move	$a1, $s1
	move	$a2, $fp
	move	$a3, $s6
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	move	$a4, $s3
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	move	$a5, $s4
	move	$s7, $fp
	move	$fp, $s5
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	move	$a6, $s5
	move	$a7, $fp
	pcaddu18i	$ra, %call36(compute_max_score_1)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	add.d	$a0, $a0, $s0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$a1, $sp, 8
	st.d	$a0, $sp, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s7
	move	$a3, $s6
	move	$a4, $s3
	move	$a5, $s4
	move	$a6, $s5
	move	$s5, $fp
	move	$fp, $s7
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	move	$a7, $s5
	pcaddu18i	$ra, %call36(compute_max_score_1)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s7, 16
	addi.d	$s8, $s8, 1
	addi.d	$s0, $s0, 8
	addi.w	$s6, $s6, 1
	bltu	$s8, $a0, .LBB17_8
.LBB17_9:                               # %._crit_edge
	move	$a0, $s5
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end17:
	.size	compute_max_score, .Lfunc_end17-compute_max_score
                                        # -- End function
	.p2align	5                               # -- Begin function compute_max_score_1
	.type	compute_max_score_1,@function
compute_max_score_1:                    # @compute_max_score_1
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
	pcalau12i	$t0, %got_pc_hi20(options)
	ld.d	$fp, $t0, %got_pc_lo12(options)
	ld.d	$t1, $sp, 368
	ld.wu	$t0, $fp, 44
	st.d	$t1, $sp, 128                   # 8-byte Folded Spill
	ld.w	$t1, $t1, 0
	st.d	$a7, $sp, 152                   # 8-byte Folded Spill
	stx.w	$t1, $a7, $t0
	ld.w	$t0, $fp, 36
	sub.w	$a7, $zero, $t0
	st.d	$a6, $sp, 144                   # 8-byte Folded Spill
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	st.d	$a4, $sp, 136                   # 8-byte Folded Spill
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	bge	$t0, $a7, .LBB18_2
.LBB18_1:                               # %._crit_edge
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
.LBB18_2:                               # %.lr.ph
	move	$s5, $a0
	ld.d	$a0, $sp, 376
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a0, $a2, 4
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a0, $a2, 2
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a3, $s5, $a0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.d	$a1, $a0, -3
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a1, $a0, -2
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a1, $a0, $s5
	addi.d	$s2, $a1, -3
	ld.w	$a0, $fp, 44
	addi.d	$a4, $a2, 1
	st.d	$a4, $sp, 184                   # 8-byte Folded Spill
	addi.d	$a2, $a2, 3
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a2, $a3, 1
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a2, $a1, -2
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a2, $a3, 2
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
                                        # implicit-def: $r31
                                        # implicit-def: $r5
                                        # kill: killed $r5
	st.d	$s2, $sp, 64                    # 8-byte Folded Spill
	st.d	$fp, $sp, 120                   # 8-byte Folded Spill
	b	.LBB18_5
	.p2align	4, , 16
.LBB18_3:                               # %splice_score_compare.exit82.thread111
                                        #   in Loop: Header=BB18_5 Depth=1
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	st.w	$a1, $a3, 16
	st.w	$a2, $a3, 20
	st.w	$s8, $a3, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a1, $a1, $s3
	st.w	$a1, $a3, 4
	st.w	$t8, $a3, 8
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.w	$a1, $a3, 12
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.w	$a1, $a3, 24
.LBB18_4:                               # %splice_score_compare.exit82.thread
                                        #   in Loop: Header=BB18_5 Depth=1
	st.d	$t8, $sp, 232                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a1, $fp, 36
	addi.d	$a7, $s3, 1
	bge	$s3, $a1, .LBB18_1
.LBB18_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_7 Depth 2
                                        #     Child Loop BB18_10 Depth 2
                                        #     Child Loop BB18_13 Depth 2
                                        #     Child Loop BB18_20 Depth 2
                                        #     Child Loop BB18_28 Depth 2
                                        #     Child Loop BB18_35 Depth 2
	move	$s3, $a7
	bstrpick.d	$a2, $a0, 31, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.d	$s6, $a0, $a7
	sub.d	$a1, $s6, $a2
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.wu	$a2, $fp, 44
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 44
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	sub.d	$a3, $a1, $a0
	add.d	$t4, $a3, $s3
	ld.bu	$t0, $s0, 0
	ld.bu	$a5, $t4, -1
	addi.w	$a2, $a0, 0
	addi.d	$a1, $a0, 2
	bstrpick.d	$ra, $a1, 31, 0
	xor	$a6, $a5, $t0
	addi.w	$a4, $zero, -3
	sltui	$s6, $a6, 1
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	bltu	$a4, $a2, .LBB18_8
# %bb.6:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB18_5 Depth=1
	move	$t2, $zero
	move	$t1, $zero
	addi.d	$a6, $ra, -1
	ld.d	$a7, $sp, 184                   # 8-byte Folded Reload
	move	$t3, $t0
	.p2align	4, , 16
.LBB18_7:                               # %.lr.ph.i
                                        #   Parent Loop BB18_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t5, $a7, 0
	xor	$a5, $a5, $t5
	sltui	$a5, $a5, 1
	add.w	$t2, $t2, $a5
	slt	$t6, $s6, $t2
	ldx.bu	$a5, $a3, $s3
	maskeqz	$t2, $t2, $t6
	masknez	$t6, $s6, $t6
	or	$t2, $t2, $t6
	xor	$t3, $a5, $t3
	sltui	$t3, $t3, 1
	add.w	$t1, $t1, $t3
	slt	$t3, $s6, $t1
	maskeqz	$t1, $t1, $t3
	masknez	$t3, $s6, $t3
	or	$t1, $t1, $t3
	slt	$t3, $t1, $t2
	masknez	$t6, $t1, $t3
	maskeqz	$t3, $t2, $t3
	or	$t3, $t3, $t6
	xor	$t6, $a5, $t5
	sltui	$t6, $t6, 1
	add.w	$t6, $s6, $t6
	slt	$t7, $t6, $t3
	addi.w	$t3, $t3, -1
	maskeqz	$t3, $t3, $t7
	masknez	$t6, $t6, $t7
	or	$s6, $t3, $t6
	addi.d	$a6, $a6, -1
	addi.d	$a3, $a3, 1
	addi.d	$a7, $a7, 1
	move	$t3, $t5
	bnez	$a6, .LBB18_7
.LBB18_8:                               # %SWscore.exit
                                        #   in Loop: Header=BB18_5 Depth=1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	add.w	$t7, $a1, $s3
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.bu	$a3, $a1, 0
	st.d	$a3, $sp, 248                   # 8-byte Folded Spill
	ld.bu	$a3, $a1, 1
	st.d	$a3, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	add.w	$t3, $a3, $s3
	ld.bu	$a3, $a1, 2
	st.d	$a3, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	add.w	$t2, $a3, $s3
	ld.bu	$a1, $a1, 3
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	add.d	$a5, $s2, $s3
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ldx.bu	$s7, $a1, $a0
	addi.w	$s8, $t7, -1
	bstrpick.d	$a3, $s8, 31, 0
	ldx.bu	$s4, $s5, $a3
	bstrpick.d	$a3, $t7, 31, 0
	ldx.bu	$s1, $s5, $a3
	addi.d	$a3, $t3, -1
	bstrpick.d	$a3, $a3, 31, 0
	ldx.bu	$a1, $s5, $a3
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	addi.d	$a3, $t2, -1
	st.d	$a5, $sp, 264                   # 8-byte Folded Spill
	ld.bu	$a5, $a5, -1
	bstrpick.d	$a3, $a3, 31, 0
	ldx.bu	$a1, $s5, $a3
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	xor	$a3, $a5, $s7
	sltui	$a3, $a3, 1
	bltu	$a4, $a2, .LBB18_11
# %bb.9:                                # %.lr.ph.i67.preheader
                                        #   in Loop: Header=BB18_5 Depth=1
	move	$t5, $zero
	move	$fp, $zero
	addi.d	$a6, $ra, -1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	add.d	$t8, $a1, $a0
	move	$s0, $s2
	move	$t6, $s7
	.p2align	4, , 16
.LBB18_10:                              # %.lr.ph.i67
                                        #   Parent Loop BB18_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a7, $t8, 0
	xor	$a5, $a5, $a7
	sltui	$a5, $a5, 1
	add.w	$t5, $t5, $a5
	slt	$s2, $a3, $t5
	ldx.bu	$a5, $s0, $s3
	maskeqz	$t5, $t5, $s2
	masknez	$s2, $a3, $s2
	or	$t5, $t5, $s2
	xor	$t6, $a5, $t6
	sltui	$t6, $t6, 1
	add.w	$t6, $fp, $t6
	slt	$fp, $a3, $t6
	maskeqz	$t6, $t6, $fp
	masknez	$fp, $a3, $fp
	or	$fp, $t6, $fp
	slt	$t6, $fp, $t5
	masknez	$s2, $fp, $t6
	maskeqz	$t6, $t5, $t6
	or	$t6, $t6, $s2
	xor	$s2, $a5, $a7
	sltui	$s2, $s2, 1
	add.w	$a3, $a3, $s2
	slt	$s2, $a3, $t6
	addi.w	$t6, $t6, -1
	maskeqz	$t6, $t6, $s2
	masknez	$a3, $a3, $s2
	or	$a3, $t6, $a3
	addi.d	$a6, $a6, -1
	addi.d	$s0, $s0, 1
	addi.d	$t8, $t8, 1
	move	$t6, $a7
	bnez	$a6, .LBB18_10
.LBB18_11:                              # %SWscore.exit76
                                        #   in Loop: Header=BB18_5 Depth=1
	addi.w	$a1, $t7, 1
	ld.bu	$a5, $t4, 0
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	bstrpick.d	$a6, $a1, 31, 0
	ldx.bu	$a1, $s5, $a6
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	sub.d	$a7, $zero, $a0
	xor	$a6, $a5, $t0
	sltui	$s0, $a6, 1
	move	$t1, $ra
	st.d	$a7, $sp, 160                   # 8-byte Folded Spill
	bltu	$a4, $a2, .LBB18_14
# %bb.12:                               # %.lr.ph.i.1.preheader
                                        #   in Loop: Header=BB18_5 Depth=1
	move	$t5, $zero
	move	$fp, $zero
	addi.d	$a6, $ra, -1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$ra, $a1, $a7
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	move	$t6, $t0
	.p2align	4, , 16
.LBB18_13:                              # %.lr.ph.i.1
                                        #   Parent Loop BB18_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a7, $s2, 0
	xor	$a5, $a5, $a7
	sltui	$a5, $a5, 1
	add.w	$t5, $t5, $a5
	slt	$t8, $s0, $t5
	ldx.bu	$a5, $ra, $s3
	maskeqz	$t5, $t5, $t8
	masknez	$t8, $s0, $t8
	or	$t5, $t5, $t8
	xor	$t6, $a5, $t6
	sltui	$t6, $t6, 1
	add.w	$t6, $fp, $t6
	slt	$t8, $s0, $t6
	maskeqz	$t6, $t6, $t8
	masknez	$t8, $s0, $t8
	or	$fp, $t6, $t8
	slt	$t6, $fp, $t5
	masknez	$t8, $fp, $t6
	maskeqz	$t6, $t5, $t6
	or	$t6, $t6, $t8
	xor	$t8, $a5, $a7
	sltui	$t8, $t8, 1
	add.w	$t8, $s0, $t8
	slt	$s0, $t8, $t6
	addi.w	$t6, $t6, -1
	maskeqz	$t6, $t6, $s0
	masknez	$t8, $t8, $s0
	or	$s0, $t6, $t8
	addi.d	$a6, $a6, -1
	addi.d	$ra, $ra, 1
	addi.d	$s2, $s2, 1
	move	$t6, $a7
	bnez	$a6, .LBB18_13
.LBB18_14:                              # %SWscore.exit.1
                                        #   in Loop: Header=BB18_5 Depth=1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	xor	$a5, $s4, $a1
	sltui	$a5, $a5, 1
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	xor	$a6, $s1, $a1
	sltui	$a6, $a6, 1
	addi.d	$a7, $a5, 1
	masknez	$t5, $a5, $a6
	maskeqz	$a7, $a7, $a6
	or	$a7, $a7, $t5
	sltu	$t5, $zero, $s6
	or	$a5, $a6, $a5
	or	$a6, $a5, $t5
	maskeqz	$a5, $a7, $a6
	move	$a1, $t1
	bltu	$s0, $s6, .LBB18_17
# %bb.15:                               #   in Loop: Header=BB18_5 Depth=1
	ld.d	$a7, $sp, 248                   # 8-byte Folded Reload
	xor	$a7, $s1, $a7
	sltui	$a7, $a7, 1
	ld.d	$t5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 224                   # 8-byte Folded Reload
	xor	$t5, $t6, $t5
	sltui	$t5, $t5, 1
	addi.d	$t6, $a7, 1
	masknez	$a7, $a7, $t5
	maskeqz	$t5, $t6, $t5
	or	$s1, $t5, $a7
	move	$s4, $t7
	bltu	$s6, $s0, .LBB18_18
# %bb.16:                               #   in Loop: Header=BB18_5 Depth=1
	bltu	$a5, $s1, .LBB18_18
.LBB18_17:                              # %splice_score_compare.exit.thread.1
                                        #   in Loop: Header=BB18_5 Depth=1
	ld.d	$a7, $sp, 200                   # 8-byte Folded Reload
	masknez	$a7, $a7, $a6
	maskeqz	$a6, $s8, $a6
	or	$s4, $a6, $a7
	move	$s0, $s6
	move	$s1, $a5
.LBB18_18:                              # %splice_score_compare.exit.1
                                        #   in Loop: Header=BB18_5 Depth=1
	bstrpick.d	$a5, $t3, 31, 0
	ldx.bu	$a5, $s5, $a5
	ld.d	$a6, $sp, 264                   # 8-byte Folded Reload
	ld.bu	$s6, $a6, 0
	bstrpick.d	$a6, $t2, 31, 0
	ldx.bu	$a6, $s5, $a6
	xor	$a7, $s6, $s7
	sltui	$s8, $a7, 1
	bltu	$a4, $a2, .LBB18_21
# %bb.19:                               # %.lr.ph.i67.1.preheader
                                        #   in Loop: Header=BB18_5 Depth=1
	move	$t6, $zero
	move	$t5, $zero
	addi.d	$ra, $a1, -1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	add.d	$s2, $a1, $a0
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	move	$a7, $s7
	.p2align	4, , 16
.LBB18_20:                              # %.lr.ph.i67.1
                                        #   Parent Loop BB18_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t8, $s2, 0
	xor	$s6, $s6, $t8
	sltui	$s6, $s6, 1
	add.w	$t6, $t6, $s6
	slt	$a1, $s8, $t6
	ldx.bu	$s6, $fp, $s3
	maskeqz	$t6, $t6, $a1
	masknez	$a1, $s8, $a1
	or	$t6, $t6, $a1
	xor	$a1, $s6, $a7
	sltui	$a1, $a1, 1
	add.w	$a1, $t5, $a1
	slt	$a7, $s8, $a1
	maskeqz	$a1, $a1, $a7
	masknez	$a7, $s8, $a7
	or	$t5, $a1, $a7
	slt	$a1, $t5, $t6
	masknez	$a7, $t5, $a1
	maskeqz	$a1, $t6, $a1
	or	$a1, $a1, $a7
	xor	$a7, $s6, $t8
	sltui	$a7, $a7, 1
	add.w	$a7, $s8, $a7
	slt	$s8, $a7, $a1
	addi.w	$a1, $a1, -1
	maskeqz	$a1, $a1, $s8
	masknez	$a7, $a7, $s8
	or	$s8, $a1, $a7
	addi.d	$ra, $ra, -1
	addi.d	$fp, $fp, 1
	addi.d	$s2, $s2, 1
	move	$a7, $t8
	bnez	$ra, .LBB18_20
.LBB18_21:                              # %SWscore.exit76.1
                                        #   in Loop: Header=BB18_5 Depth=1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	add.d	$s6, $a1, $s3
	ld.d	$s2, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	xor	$a1, $a1, $s2
	sltui	$a1, $a1, 1
	ld.d	$ra, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	xor	$a7, $a7, $ra
	sltui	$a7, $a7, 1
	addi.d	$t5, $a1, 1
	masknez	$t6, $a1, $a7
	maskeqz	$t5, $t5, $a7
	or	$t5, $t5, $t6
	sltu	$t6, $zero, $a3
	or	$a1, $a7, $a1
	or	$a1, $a1, $t6
	addi.d	$a7, $s6, -1
	ld.d	$t6, $sp, 232                   # 8-byte Folded Reload
	masknez	$t6, $t6, $a1
	maskeqz	$a7, $a7, $a1
	or	$t8, $a7, $t6
	maskeqz	$fp, $t5, $a1
	bgeu	$s8, $a3, .LBB18_23
# %bb.22:                               #   in Loop: Header=BB18_5 Depth=1
	move	$ra, $t1
	b	.LBB18_26
	.p2align	4, , 16
.LBB18_23:                              #   in Loop: Header=BB18_5 Depth=1
	xor	$a1, $a5, $s2
	sltui	$a1, $a1, 1
	xor	$a5, $a6, $ra
	sltui	$a5, $a5, 1
	addi.d	$a6, $a1, 1
	masknez	$a1, $a1, $a5
	maskeqz	$a5, $a6, $a5
	or	$a5, $a5, $a1
	move	$ra, $t1
	bltu	$a3, $s8, .LBB18_25
# %bb.24:                               #   in Loop: Header=BB18_5 Depth=1
	bgeu	$fp, $a5, .LBB18_26
.LBB18_25:                              # %splice_score_compare.exit79.1
                                        #   in Loop: Header=BB18_5 Depth=1
	move	$a3, $s8
	move	$t8, $s6
	move	$fp, $a5
.LBB18_26:                              # %splice_score_compare.exit79.thread.1
                                        #   in Loop: Header=BB18_5 Depth=1
	addi.d	$a1, $t7, 2
	ld.bu	$a6, $t4, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a5, $s5, $a1
	xor	$a1, $a6, $t0
	sltui	$t4, $a1, 1
	bltu	$a4, $a2, .LBB18_29
# %bb.27:                               # %.lr.ph.i.2.preheader
                                        #   in Loop: Header=BB18_5 Depth=1
	move	$t6, $zero
	move	$s8, $zero
	addi.d	$t7, $ra, -1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 160                   # 8-byte Folded Reload
	add.d	$s2, $a1, $a7
	ld.d	$t5, $sp, 184                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB18_28:                              # %.lr.ph.i.2
                                        #   Parent Loop BB18_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $t5, 0
	xor	$a6, $a6, $a1
	sltui	$a6, $a6, 1
	add.w	$a7, $t6, $a6
	slt	$t6, $t4, $a7
	ldx.bu	$a6, $s2, $s3
	maskeqz	$a7, $a7, $t6
	masknez	$t6, $t4, $t6
	or	$t6, $a7, $t6
	xor	$a7, $a6, $t0
	sltui	$a7, $a7, 1
	add.w	$a7, $s8, $a7
	slt	$t0, $t4, $a7
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $t4, $t0
	or	$s8, $a7, $t0
	slt	$a7, $s8, $t6
	masknez	$t0, $s8, $a7
	maskeqz	$a7, $t6, $a7
	or	$a7, $a7, $t0
	xor	$t0, $a6, $a1
	sltui	$t0, $t0, 1
	add.w	$t0, $t4, $t0
	slt	$t4, $t0, $a7
	addi.w	$a7, $a7, -1
	maskeqz	$a7, $a7, $t4
	masknez	$t0, $t0, $t4
	or	$t4, $a7, $t0
	addi.d	$t7, $t7, -1
	addi.d	$s2, $s2, 1
	addi.d	$t5, $t5, 1
	move	$t0, $a1
	bnez	$t7, .LBB18_28
.LBB18_29:                              # %SWscore.exit.2
                                        #   in Loop: Header=BB18_5 Depth=1
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	bltu	$t4, $s0, .LBB18_32
# %bb.30:                               #   in Loop: Header=BB18_5 Depth=1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	xor	$a1, $a6, $a1
	sltui	$a1, $a1, 1
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	xor	$a5, $a5, $a6
	sltui	$a5, $a5, 1
	addi.d	$a6, $a1, 1
	masknez	$a1, $a1, $a5
	maskeqz	$a5, $a6, $a5
	or	$t0, $a5, $a1
	bltu	$s0, $t4, .LBB18_46
# %bb.31:                               #   in Loop: Header=BB18_5 Depth=1
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	bltu	$s1, $t0, .LBB18_33
.LBB18_32:                              # %splice_score_compare.exit.thread.2
                                        #   in Loop: Header=BB18_5 Depth=1
	move	$s8, $s4
	move	$t4, $s0
	move	$t0, $s1
.LBB18_33:                              # %splice_score_compare.exit.2
                                        #   in Loop: Header=BB18_5 Depth=1
	addi.d	$a1, $t3, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a6, $s5, $a1
	addi.d	$a1, $t2, 1
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	ld.bu	$t2, $a5, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$t1, $s5, $a1
	xor	$a1, $t2, $s7
	sltui	$a5, $a1, 1
	bltu	$a4, $a2, .LBB18_37
# %bb.34:                               # %.lr.ph.i67.2.preheader
                                        #   in Loop: Header=BB18_5 Depth=1
	move	$t5, $zero
	move	$t3, $zero
	addi.d	$a1, $ra, -1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB18_35:                              # %.lr.ph.i67.2
                                        #   Parent Loop BB18_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a7, $a2, 0
	xor	$t2, $t2, $a7
	sltui	$t2, $t2, 1
	add.w	$t5, $t5, $t2
	slt	$t6, $a5, $t5
	ldx.bu	$t2, $a4, $s3
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a5, $t6
	or	$t5, $t5, $t6
	xor	$t6, $t2, $s7
	sltui	$t6, $t6, 1
	add.w	$t3, $t3, $t6
	slt	$t6, $a5, $t3
	maskeqz	$t3, $t3, $t6
	masknez	$t6, $a5, $t6
	or	$t3, $t3, $t6
	slt	$t6, $t3, $t5
	masknez	$t7, $t3, $t6
	maskeqz	$t6, $t5, $t6
	or	$t6, $t6, $t7
	xor	$t7, $t2, $a7
	sltui	$t7, $t7, 1
	add.w	$a5, $a5, $t7
	slt	$t7, $a5, $t6
	addi.w	$t6, $t6, -1
	maskeqz	$t6, $t6, $t7
	masknez	$a5, $a5, $t7
	or	$a5, $t6, $a5
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a2, 1
	move	$s7, $a7
	bnez	$a1, .LBB18_35
# %bb.36:                               # %SWscore.exit76.2
                                        #   in Loop: Header=BB18_5 Depth=1
	bgeu	$a5, $a3, .LBB18_38
	b	.LBB18_41
	.p2align	4, , 16
.LBB18_37:                              #   in Loop: Header=BB18_5 Depth=1
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	bltu	$a5, $a3, .LBB18_41
.LBB18_38:                              #   in Loop: Header=BB18_5 Depth=1
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	xor	$a1, $a6, $a1
	sltui	$a1, $a1, 1
	xor	$a2, $t1, $s0
	sltui	$a2, $a2, 1
	addi.d	$a4, $a1, 1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	bltu	$a3, $a5, .LBB18_40
# %bb.39:                               #   in Loop: Header=BB18_5 Depth=1
	bgeu	$fp, $a1, .LBB18_41
.LBB18_40:                              # %splice_score_compare.exit79.2
                                        #   in Loop: Header=BB18_5 Depth=1
	addi.d	$t8, $s6, 1
	move	$a3, $a5
	move	$fp, $a1
.LBB18_41:                              # %splice_score_compare.exit79.thread.2
                                        #   in Loop: Header=BB18_5 Depth=1
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a4, $a1, 16
	add.w	$a1, $t4, $a3
	bltu	$a1, $a4, .LBB18_4
# %bb.42:                               #   in Loop: Header=BB18_5 Depth=1
	add.d	$a2, $t0, $fp
	bltu	$a4, $a1, .LBB18_3
# %bb.43:                               #   in Loop: Header=BB18_5 Depth=1
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a3, $a3, 20
	bltu	$a2, $a3, .LBB18_4
# %bb.44:                               #   in Loop: Header=BB18_5 Depth=1
	bltu	$a3, $a2, .LBB18_3
# %bb.45:                               #   in Loop: Header=BB18_5 Depth=1
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a3, $a3, 12
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	bltu	$a4, $a3, .LBB18_3
	b	.LBB18_4
.LBB18_46:                              #   in Loop: Header=BB18_5 Depth=1
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	b	.LBB18_33
.Lfunc_end18:
	.size	compute_max_score_1, .Lfunc_end18-compute_max_score_1
                                        # -- End function
	.type	encoding,@object                # @encoding
	.bss
	.globl	encoding
	.p2align	5, 0x0
encoding:
	.space	512
	.size	encoding, 512

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%u-%u  (%u-%u)   %u%% ==\n"
	.size	.L.str, 26

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%u-%u  (%u-%u)   %u%% %s (%.2s/%.2s) %u\n"
	.size	.L.str.1, 41

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"->"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"<-"
	.size	.L.str.3, 3

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%u-%u  (%u-%u)   %u%%\n"
	.size	.L.str.4, 23

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym free
	.addrsig_sym msp_rna_compare
	.addrsig_sym msp_compare
	.addrsig_sym hash_node_compare
