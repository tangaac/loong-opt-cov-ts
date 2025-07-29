	.file	"queens.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
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
	move	$fp, $a1
	ld.d	$a1, $a1, 0
	move	$s0, $a0
	pcalau12i	$a2, %pc_hi20(progname)
	st.d	$a1, $a2, %pc_lo12(progname)
	pcalau12i	$s4, %pc_hi20(printing)
	st.w	$zero, $s4, %pc_lo12(printing)
	pcalau12i	$a0, %pc_hi20(queens)
	addi.d	$s1, $a0, %pc_lo12(queens)
	ori	$a1, $zero, 14
	st.w	$a1, $s1, 0
	pcalau12i	$s6, %pc_hi20(findall)
	ori	$s7, $zero, 1
	st.w	$s7, $s6, %pc_lo12(findall)
	bge	$s7, $s0, .LBB0_14
# %bb.1:                                # %.lr.ph.preheader
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	ori	$a1, $zero, 14
	ori	$a3, $zero, 45
	ori	$s5, $zero, 97
	ori	$s8, $zero, 99
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s2, $zero, 1
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                # %.preheader29
                                        #   in Loop: Header=BB0_4 Depth=1
	bnez	$a2, .LBB0_20
.LBB0_3:                                # %.loopexit
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$s2, $s2, 1
	beq	$s2, $s0, .LBB0_23
.LBB0_4:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
	slli.d	$a0, $s2, 3
	ldx.d	$s3, $fp, $a0
	ld.bu	$a0, $s3, 0
	bne	$a0, $a3, .LBB0_10
# %bb.5:                                # %.preheader29.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	ori	$a0, $zero, 1
	b	.LBB0_7
	.p2align	4, , 16
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=2
	st.w	$s7, $s6, %pc_lo12(findall)
	addi.d	$a0, $a0, 1
.LBB0_7:                                # %.preheader29
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a2, $s3, $a0
	beq	$a2, $s5, .LBB0_6
# %bb.8:                                # %.preheader29
                                        #   in Loop: Header=BB0_7 Depth=2
	bne	$a2, $s8, .LBB0_2
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=2
	st.w	$zero, $s4, %pc_lo12(printing)
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_10:                               #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $s3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	move	$a2, $s1
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	bne	$a0, $s7, .LBB0_25
# %bb.11:                               #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a1, $s1, 0
	blez	$a1, .LBB0_26
# %bb.12:                               #   in Loop: Header=BB0_4 Depth=1
	ori	$a3, $zero, 45
	ori	$a0, $zero, 101
	bltu	$a1, $a0, .LBB0_3
# %bb.13:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(progname)
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	ori	$a3, $zero, 100
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_14:                               # %.thread
	pcalau12i	$a0, %pc_hi20(files)
	st.w	$a1, $a0, %pc_lo12(files)
	pcalau12i	$a0, %pc_hi20(ranks)
	st.w	$a1, $a0, %pc_lo12(ranks)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a2, $a0, %pc_lo12(.L.str.8)
.LBB0_15:                               # %vector.ph
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a3, $a1
	move	$a4, $a1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$fp, %pc_hi20(solutions)
	st.d	$zero, $fp, %pc_lo12(solutions)
	pcalau12i	$a0, %pc_hi20(file)
	addi.d	$a1, $a0, %pc_lo12(file)
	vrepli.w	$vr0, 101
	vst	$vr0, $a1, 0
	vst	$vr0, $a1, 16
	vst	$vr0, $a1, 32
	vst	$vr0, $a1, 48
	vst	$vr0, $a1, 64
	vst	$vr0, $a1, 80
	vst	$vr0, $a1, 96
	vst	$vr0, $a1, 112
	vst	$vr0, $a1, 128
	vst	$vr0, $a1, 144
	vst	$vr0, $a1, 160
	vst	$vr0, $a1, 176
	vst	$vr0, $a1, 192
	vst	$vr0, $a1, 208
	vst	$vr0, $a1, 224
	vst	$vr0, $a1, 240
	vst	$vr0, $a1, 256
	vst	$vr0, $a1, 272
	vst	$vr0, $a1, 288
	vst	$vr0, $a1, 304
	vst	$vr0, $a1, 320
	vst	$vr0, $a1, 336
	vst	$vr0, $a1, 352
	vst	$vr0, $a1, 368
	ori	$a0, $zero, 101
	ori	$a2, $zero, 101
	lu32i.d	$a2, 101
	st.d	$a2, $a1, 384
	st.d	$a2, $a1, 392
	pcalau12i	$a1, %pc_hi20(bakdiag)
	addi.d	$a1, $a1, %pc_lo12(bakdiag)
	vst	$vr0, $a1, 0
	vst	$vr0, $a1, 16
	pcalau12i	$a2, %pc_hi20(fordiag)
	addi.d	$a2, $a2, %pc_lo12(fordiag)
	vst	$vr0, $a2, 0
	vst	$vr0, $a2, 16
	vst	$vr0, $a1, 32
	vst	$vr0, $a1, 48
	vst	$vr0, $a2, 32
	vst	$vr0, $a2, 48
	vst	$vr0, $a1, 64
	vst	$vr0, $a1, 80
	vst	$vr0, $a2, 64
	vst	$vr0, $a2, 80
	vst	$vr0, $a1, 96
	vst	$vr0, $a1, 112
	vst	$vr0, $a2, 96
	vst	$vr0, $a2, 112
	vst	$vr0, $a1, 128
	vst	$vr0, $a1, 144
	vst	$vr0, $a2, 128
	vst	$vr0, $a2, 144
	vst	$vr0, $a1, 160
	vst	$vr0, $a1, 176
	vst	$vr0, $a2, 160
	vst	$vr0, $a2, 176
	vst	$vr0, $a1, 192
	vst	$vr0, $a1, 208
	vst	$vr0, $a2, 192
	vst	$vr0, $a2, 208
	vst	$vr0, $a1, 224
	vst	$vr0, $a1, 240
	vst	$vr0, $a2, 224
	vst	$vr0, $a2, 240
	vst	$vr0, $a1, 256
	vst	$vr0, $a1, 272
	vst	$vr0, $a2, 256
	vst	$vr0, $a2, 272
	vst	$vr0, $a1, 288
	vst	$vr0, $a1, 304
	vst	$vr0, $a2, 288
	vst	$vr0, $a2, 304
	vst	$vr0, $a1, 320
	vst	$vr0, $a1, 336
	vst	$vr0, $a2, 320
	vst	$vr0, $a2, 336
	vst	$vr0, $a1, 352
	vst	$vr0, $a1, 368
	vst	$vr0, $a2, 352
	vst	$vr0, $a2, 368
	vst	$vr0, $a1, 384
	vst	$vr0, $a1, 400
	vst	$vr0, $a2, 384
	vst	$vr0, $a2, 400
	vst	$vr0, $a1, 416
	vst	$vr0, $a1, 432
	vst	$vr0, $a2, 416
	vst	$vr0, $a2, 432
	vst	$vr0, $a1, 448
	vst	$vr0, $a1, 464
	vst	$vr0, $a2, 448
	vst	$vr0, $a2, 464
	vst	$vr0, $a1, 480
	vst	$vr0, $a1, 496
	vst	$vr0, $a2, 480
	vst	$vr0, $a2, 496
	vst	$vr0, $a1, 512
	vst	$vr0, $a1, 528
	vst	$vr0, $a2, 512
	vst	$vr0, $a2, 528
	vst	$vr0, $a1, 544
	vst	$vr0, $a1, 560
	vst	$vr0, $a2, 544
	vst	$vr0, $a2, 560
	vst	$vr0, $a1, 576
	vst	$vr0, $a1, 592
	vst	$vr0, $a2, 576
	vst	$vr0, $a2, 592
	vst	$vr0, $a1, 608
	vst	$vr0, $a1, 624
	vst	$vr0, $a2, 608
	vst	$vr0, $a2, 624
	vst	$vr0, $a1, 640
	vst	$vr0, $a1, 656
	vst	$vr0, $a2, 640
	vst	$vr0, $a2, 656
	vst	$vr0, $a1, 672
	vst	$vr0, $a1, 688
	vst	$vr0, $a2, 672
	vst	$vr0, $a2, 688
	vst	$vr0, $a1, 704
	vst	$vr0, $a1, 720
	vst	$vr0, $a2, 704
	vst	$vr0, $a2, 720
	vst	$vr0, $a1, 736
	vst	$vr0, $a1, 752
	vst	$vr0, $a2, 736
	vst	$vr0, $a2, 752
	st.w	$a0, $a1, 768
	st.w	$a0, $a2, 768
	st.w	$a0, $a1, 772
	st.w	$a0, $a2, 772
	st.w	$a0, $a1, 776
	st.w	$a0, $a2, 776
	st.w	$a0, $a1, 780
	st.w	$a0, $a2, 780
	st.w	$a0, $a1, 784
	st.w	$a0, $a2, 784
	st.w	$a0, $a1, 788
	st.w	$a0, $a2, 788
	st.w	$a0, $a1, 792
	st.w	$a0, $a2, 792
	move	$a0, $zero
	pcaddu18i	$ra, %call36(find)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, %pc_lo12(printing)
	ld.d	$a1, $fp, %pc_lo12(solutions)
	beqz	$a0, .LBB0_18
# %bb.16:                               # %vector.ph
	beqz	$a1, .LBB0_18
# %bb.17:
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, %pc_lo12(solutions)
.LBB0_18:
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB0_22
# %bb.19:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_20:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $s0, %pc_lo12(progname)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	move	$a3, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_21:
	ld.d	$a0, $fp, 0
	ld.d	$a2, $s0, %pc_lo12(progname)
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_22:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_23:                               # %._crit_edge
	bnez	$a1, .LBB0_27
# %bb.24:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $s0, %pc_lo12(progname)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_21
.LBB0_25:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(progname)
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	move	$a3, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_26:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(progname)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_27:
	pcalau12i	$a0, %pc_hi20(files)
	st.w	$a1, $a0, %pc_lo12(files)
	pcalau12i	$a0, %pc_hi20(ranks)
	st.w	$a1, $a0, %pc_lo12(ranks)
	addi.d	$a0, $a1, -1
	sltui	$a0, $a0, 1
	pcalau12i	$a2, %pc_hi20(.L.str.8)
	addi.d	$a2, $a2, %pc_lo12(.L.str.8)
	masknez	$a2, $a2, $a0
	pcalau12i	$a3, %pc_hi20(.L.str.9)
	addi.d	$a3, $a3, %pc_lo12(.L.str.9)
	maskeqz	$a0, $a3, $a0
	or	$a2, $a0, $a2
	b	.LBB0_15
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.globl	find                            # -- Begin function find
	.p2align	5
	.type	find,@function
find:                                   # @find
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
	pcalau12i	$a1, %pc_hi20(queens)
	ld.w	$a1, $a1, %pc_lo12(queens)
	bne	$a0, $a1, .LBB1_5
# %bb.1:
	pcalau12i	$a0, %pc_hi20(solutions)
	ld.d	$a1, $a0, %pc_lo12(solutions)
	pcalau12i	$a2, %pc_hi20(printing)
	ld.w	$a2, $a2, %pc_lo12(printing)
	addi.d	$a1, $a1, 1
	st.d	$a1, $a0, %pc_lo12(solutions)
	beqz	$a2, .LBB1_3
# %bb.2:
	pcaddu18i	$ra, %call36(pboard)
	jirl	$ra, $ra, 0
.LBB1_3:
	pcalau12i	$a0, %pc_hi20(findall)
	ld.w	$a0, $a0, %pc_lo12(findall)
	bnez	$a0, .LBB1_12
# %bb.4:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB1_5:
	move	$fp, $a0
	pcalau12i	$s1, %pc_hi20(files)
	ld.w	$a0, $s1, %pc_lo12(files)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB1_12
# %bb.6:                                # %.lr.ph
	move	$s2, $zero
	add.d	$a1, $fp, $a0
	addi.w	$a1, $a1, -1
	pcalau12i	$a2, %pc_hi20(bakdiag)
	addi.d	$a2, $a2, %pc_lo12(bakdiag)
	alsl.d	$s3, $a1, $a2, 2
	pcalau12i	$a1, %pc_hi20(fordiag)
	addi.d	$a1, $a1, %pc_lo12(fordiag)
	alsl.d	$s4, $fp, $a1, 2
	pcalau12i	$a1, %pc_hi20(queen)
	addi.d	$a1, $a1, %pc_lo12(queen)
	alsl.d	$s5, $fp, $a1, 2
	addi.w	$s0, $fp, 1
	pcalau12i	$a1, %pc_hi20(file)
	addi.d	$s6, $a1, %pc_lo12(file)
	ori	$s7, $zero, 101
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_7:                                #   in Loop: Header=BB1_8 Depth=1
	addi.w	$s2, $s2, 1
	addi.d	$s6, $s6, 4
	addi.d	$s4, $s4, 4
	addi.d	$s3, $s3, -4
	bge	$s2, $a0, .LBB1_12
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s6, 0
	blt	$a1, $fp, .LBB1_7
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=1
	ld.w	$a1, $s4, 0
	blt	$a1, $fp, .LBB1_7
# %bb.10:                               #   in Loop: Header=BB1_8 Depth=1
	ld.w	$a1, $s3, 0
	blt	$a1, $fp, .LBB1_7
# %bb.11:                               #   in Loop: Header=BB1_8 Depth=1
	st.w	$s2, $s5, 0
	st.w	$fp, $s3, 0
	st.w	$fp, $s4, 0
	st.w	$fp, $s6, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(find)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(files)
	st.w	$s7, $s3, 0
	st.w	$s7, $s4, 0
	st.w	$s7, $s6, 0
	b	.LBB1_7
.LBB1_12:                               # %.loopexit
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
.Lfunc_end1:
	.size	find, .Lfunc_end1-find
                                        # -- End function
	.globl	pboard                          # -- Begin function pboard
	.p2align	5
	.type	pboard,@function
pboard:                                 # @pboard
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
	pcalau12i	$a0, %pc_hi20(findall)
	ld.w	$a0, $a0, %pc_lo12(findall)
	beqz	$a0, .LBB2_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(solutions)
	ld.d	$a1, $a0, %pc_lo12(solutions)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_2:
	pcalau12i	$fp, %pc_hi20(ranks)
	ld.w	$a0, $fp, %pc_lo12(ranks)
	ori	$s0, $zero, 1
	blt	$a0, $s0, .LBB2_8
# %bb.3:                                # %.preheader.preheader
	move	$s1, $zero
	pcalau12i	$s2, %pc_hi20(files)
	pcalau12i	$a0, %pc_hi20(queen)
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$s3, $a1, %got_pc_lo12(stdout)
	addi.d	$s4, $a0, %pc_lo12(queen)
	ori	$s5, $zero, 45
	ori	$s6, $zero, 81
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_4:                                # %._crit_edge
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(ranks)
	addi.d	$s1, $s1, 1
	bge	$s1, $a0, .LBB2_8
.LBB2_5:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
	ld.w	$a0, $s2, %pc_lo12(files)
	blt	$a0, $s0, .LBB2_4
# %bb.6:                                # %.lr.ph
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$s7, $zero
	alsl.d	$s8, $s1, $s4, 2
	.p2align	4, , 16
.LBB2_7:                                #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 0
	xor	$a0, $s7, $a0
	sltui	$a0, $a0, 1
	ld.d	$a1, $s3, 0
	masknez	$a2, $s5, $a0
	maskeqz	$a0, $s6, $a0
	or	$a0, $a0, $a2
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(files)
	addi.w	$s7, $s7, 1
	blt	$s7, $a0, .LBB2_7
	b	.LBB2_4
.LBB2_8:                                # %._crit_edge9
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
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
	pcaddu18i	$t8, %call36(fflush)
	jr	$t8
.Lfunc_end2:
	.size	pboard, .Lfunc_end2-pboard
                                        # -- End function
	.type	printing,@object                # @printing
	.data
	.globl	printing
	.p2align	2, 0x0
printing:
	.word	1                               # 0x1
	.size	printing, 4

	.type	findall,@object                 # @findall
	.bss
	.globl	findall
	.p2align	2, 0x0
findall:
	.word	0                               # 0x0
	.size	findall, 4

	.type	solutions,@object               # @solutions
	.globl	solutions
	.p2align	3, 0x0
solutions:
	.dword	0                               # 0x0
	.size	solutions, 8

	.type	progname,@object                # @progname
	.globl	progname
	.p2align	3, 0x0
progname:
	.dword	0
	.size	progname, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Usage:  %s [-ac] n\n\tn\tNumber of queens (rows and columns). An integer from 1 to 100.\n\t-a\tFind and print all solutions.\n\t-c\tCount all solutions, but do not print them.\n"
	.size	.L.str, 168

	.type	queens,@object                  # @queens
	.bss
	.globl	queens
	.p2align	2, 0x0
queens:
	.word	0                               # 0x0
	.size	queens, 4

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%s: Illegal option '%s'\n"
	.size	.L.str.1, 25

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%d"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%s: Non-integer argument '%s'\n"
	.size	.L.str.3, 31

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%s: n must be positive integer\n"
	.size	.L.str.4, 32

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%s: Can't have more than %d queens\n"
	.size	.L.str.5, 36

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%s: Missing n argument\n"
	.size	.L.str.6, 24

	.type	files,@object                   # @files
	.bss
	.globl	files
	.p2align	2, 0x0
files:
	.word	0                               # 0x0
	.size	files, 4

	.type	ranks,@object                   # @ranks
	.globl	ranks
	.p2align	2, 0x0
ranks:
	.word	0                               # 0x0
	.size	ranks, 4

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"%d queen%s on a %dx%d board...\n"
	.size	.L.str.7, 32

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"s"
	.size	.L.str.8, 2

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.space	1
	.size	.L.str.9, 1

	.type	file,@object                    # @file
	.bss
	.globl	file
	.p2align	4, 0x0
file:
	.space	400
	.size	file, 400

	.type	bakdiag,@object                 # @bakdiag
	.globl	bakdiag
	.p2align	4, 0x0
bakdiag:
	.space	796
	.size	bakdiag, 796

	.type	fordiag,@object                 # @fordiag
	.globl	fordiag
	.p2align	4, 0x0
fordiag:
	.space	796
	.size	fordiag, 796

	.type	.L.str.11,@object               # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"...there are %ld solutions\n"
	.size	.L.str.11, 28

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"\nSolution #%lu:\n"
	.size	.L.str.12, 17

	.type	queen,@object                   # @queen
	.bss
	.globl	queen
	.p2align	2, 0x0
queen:
	.space	400
	.size	queen, 400

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"...there is 1 solution"
	.size	.Lstr, 23

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym queens
