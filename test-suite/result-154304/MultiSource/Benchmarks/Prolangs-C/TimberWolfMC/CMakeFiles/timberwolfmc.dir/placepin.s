	.file	"placepin.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function placepin
.LCPI0_0:
	.dword	0x41dfffffffc00000              # double 2147483647
	.text
	.globl	placepin
	.p2align	5
	.type	placepin,@function
placepin:                               # @placepin
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
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$a0, $a0, %got_pc_lo12(numcells)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_120
# %bb.1:                                # %.lr.ph265
	pcalau12i	$a2, %got_pc_hi20(cellarray)
	ld.d	$a2, $a2, %got_pc_lo12(cellarray)
	ld.d	$t0, $a2, 0
	ori	$a3, $zero, 44
	ori	$a4, $zero, 2
	lu12i.w	$a2, 269412
	ori	$a5, $a2, 3693
	lu12i.w	$a2, 3
	ori	$a6, $a2, 57
	ori	$s0, $zero, 3
	vrepli.b	$vr0, 0
	xvrepli.b	$xr1, 0
	ori	$a2, $zero, 1
                                        # implicit-def: $r30
	st.d	$t0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(.LCPI0_0)
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                # %.loopexit195.loopexit
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a7, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 8                     # 8-byte Folded Reload
.LBB0_3:                                # %.loopexit195
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$a2, $a7, 1
	bge	$a7, $a0, .LBB0_120
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_41 Depth 3
                                        #       Child Loop BB0_54 Depth 3
                                        #       Child Loop BB0_91 Depth 3
                                        #       Child Loop BB0_94 Depth 3
                                        #       Child Loop BB0_33 Depth 3
                                        #       Child Loop BB0_46 Depth 3
                                        #       Child Loop BB0_58 Depth 3
                                        #       Child Loop BB0_37 Depth 3
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_63 Depth 3
                                        #       Child Loop BB0_72 Depth 3
                                        #       Child Loop BB0_77 Depth 3
                                        #       Child Loop BB0_81 Depth 3
                                        #       Child Loop BB0_84 Depth 3
                                        #       Child Loop BB0_98 Depth 3
                                        #         Child Loop BB0_100 Depth 4
                                        #       Child Loop BB0_107 Depth 3
                                        #         Child Loop BB0_111 Depth 4
                                        #         Child Loop BB0_114 Depth 4
                                        #       Child Loop BB0_116 Depth 3
                                        #       Child Loop BB0_119 Depth 3
	move	$a7, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$t3, $t0, $a2
	ld.w	$a2, $t3, 76
	beqz	$a2, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a2, $t3, 128
	beqz	$a2, .LBB0_3
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	ld.w	$fp, $t3, 132
	blt	$fp, $a1, .LBB0_3
# %bb.7:                                # %.lr.ph258
                                        #   in Loop: Header=BB0_4 Depth=1
	st.d	$a7, $sp, 24                    # 8-byte Folded Spill
	ld.d	$t5, $t3, 136
	ld.d	$t6, $t3, 144
	addi.d	$a0, $t5, 168
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $t5, 48
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $t5, 8
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$s1, $t6, 48
	addi.d	$s2, $t6, 4
	ori	$a0, $zero, 1
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$t6, $sp, 56                    # 8-byte Folded Spill
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_8:                                # %.loopexit191
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.d	$a0, $s3, 1
	bgeu	$s3, $fp, .LBB0_2
.LBB0_9:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_41 Depth 3
                                        #       Child Loop BB0_54 Depth 3
                                        #       Child Loop BB0_91 Depth 3
                                        #       Child Loop BB0_94 Depth 3
                                        #       Child Loop BB0_33 Depth 3
                                        #       Child Loop BB0_46 Depth 3
                                        #       Child Loop BB0_58 Depth 3
                                        #       Child Loop BB0_37 Depth 3
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_63 Depth 3
                                        #       Child Loop BB0_72 Depth 3
                                        #       Child Loop BB0_77 Depth 3
                                        #       Child Loop BB0_81 Depth 3
                                        #       Child Loop BB0_84 Depth 3
                                        #       Child Loop BB0_98 Depth 3
                                        #         Child Loop BB0_100 Depth 4
                                        #       Child Loop BB0_107 Depth 3
                                        #         Child Loop BB0_111 Depth 4
                                        #         Child Loop BB0_114 Depth 4
                                        #       Child Loop BB0_116 Depth 3
                                        #       Child Loop BB0_119 Depth 3
	move	$s3, $a0
	mul.d	$a0, $a0, $a3
	add.d	$s4, $t6, $a0
	ld.w	$s6, $s4, 28
	beqz	$s6, .LBB0_8
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	ld.w	$s8, $s4, 16
	beq	$s8, $a4, .LBB0_14
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=2
	bne	$s8, $a1, .LBB0_16
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=2
	ld.d	$a0, $t3, 216
	ld.w	$a2, $s4, 20
	alsl.d	$a7, $a2, $a0, 3
	slli.d	$a2, $a2, 3
	ldx.w	$ra, $a0, $a2
	ld.w	$s7, $a7, 4
	bge	$s7, $ra, .LBB0_20
# %bb.13:                               #   in Loop: Header=BB0_9 Depth=2
	move	$a0, $zero
	b	.LBB0_59
	.p2align	4, , 16
.LBB0_14:                               #   in Loop: Header=BB0_9 Depth=2
	ld.d	$s7, $t3, 216
	ld.w	$a0, $s4, 20
	alsl.d	$a2, $a0, $s7, 3
	slli.d	$a0, $a0, 3
	ldx.w	$t2, $s7, $a0
	ld.w	$s8, $a2, 4
	bge	$s8, $t2, .LBB0_22
# %bb.15:                               #   in Loop: Header=BB0_9 Depth=2
	move	$a0, $zero
	b	.LBB0_64
	.p2align	4, , 16
.LBB0_16:                               #   in Loop: Header=BB0_9 Depth=2
	blt	$s8, $s0, .LBB0_24
# %bb.17:                               # %.preheader194
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.d	$a0, $t3, 216
	ld.w	$a2, $t3, 64
	alsl.d	$a0, $a2, $a0, 3
	ld.w	$s7, $a0, 4
	blt	$s7, $a1, .LBB0_29
# %bb.18:                               # %iter.check
                                        #   in Loop: Header=BB0_9 Depth=2
	ori	$a0, $zero, 4
	bgeu	$s7, $a0, .LBB0_30
# %bb.19:                               #   in Loop: Header=BB0_9 Depth=2
	move	$a0, $zero
	ori	$a2, $zero, 1
	b	.LBB0_90
.LBB0_20:                               # %iter.check416
                                        #   in Loop: Header=BB0_9 Depth=2
	sub.w	$a0, $s7, $ra
	bgeu	$a0, $s0, .LBB0_25
# %bb.21:                               #   in Loop: Header=BB0_9 Depth=2
	move	$a0, $zero
	move	$a2, $ra
	b	.LBB0_57
.LBB0_22:                               # %iter.check488
                                        #   in Loop: Header=BB0_9 Depth=2
	sub.w	$a0, $s8, $t2
	bgeu	$a0, $s0, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_9 Depth=2
	move	$a0, $zero
	move	$a2, $t2
	b	.LBB0_62
.LBB0_24:                               #   in Loop: Header=BB0_9 Depth=2
	move	$a0, $s8
	bnez	$a0, .LBB0_96
	b	.LBB0_88
.LBB0_25:                               # %vector.main.loop.iter.check418
                                        #   in Loop: Header=BB0_9 Depth=2
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$s8, $a2, 1
	ori	$a2, $zero, 15
	bgeu	$a0, $a2, .LBB0_32
# %bb.26:                               #   in Loop: Header=BB0_9 Depth=2
	move	$t2, $zero
	move	$a0, $zero
	b	.LBB0_45
.LBB0_27:                               # %vector.main.loop.iter.check490
                                        #   in Loop: Header=BB0_9 Depth=2
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$ra, $a2, 1
	ori	$a2, $zero, 15
	bgeu	$a0, $a2, .LBB0_36
# %bb.28:                               #   in Loop: Header=BB0_9 Depth=2
	move	$t0, $zero
	move	$a0, $zero
	b	.LBB0_49
.LBB0_29:                               #   in Loop: Header=BB0_9 Depth=2
	move	$a0, $zero
	b	.LBB0_92
.LBB0_30:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB0_9 Depth=2
	ori	$a0, $zero, 16
	bgeu	$s7, $a0, .LBB0_40
# %bb.31:                               #   in Loop: Header=BB0_9 Depth=2
	move	$t1, $zero
	move	$a0, $zero
	b	.LBB0_53
.LBB0_32:                               # %vector.ph419
                                        #   in Loop: Header=BB0_9 Depth=2
	bstrpick.d	$a0, $s8, 32, 4
	slli.d	$t2, $a0, 4
	slli.d	$a0, $ra, 4
	alsl.d	$a0, $ra, $a0, 2
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	move	$t1, $t2
	xvori.b	$xr2, $xr1, 0
	xvori.b	$xr3, $xr1, 0
	.p2align	4, , 16
.LBB0_33:                               # %vector.body422
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $a0, -160
	ld.w	$a7, $a0, -140
	ld.w	$t0, $a0, -120
	ld.w	$t7, $a0, -100
	ld.w	$t8, $a0, -80
	ld.w	$s0, $a0, -60
	ld.w	$fp, $a0, -40
	ld.w	$t6, $a0, -20
	xvinsgr2vr.w	$xr4, $a2, 0
	xvinsgr2vr.w	$xr4, $a7, 1
	xvinsgr2vr.w	$xr4, $t0, 2
	xvinsgr2vr.w	$xr4, $t7, 3
	xvinsgr2vr.w	$xr4, $t8, 4
	xvinsgr2vr.w	$xr4, $s0, 5
	xvinsgr2vr.w	$xr4, $fp, 6
	xvinsgr2vr.w	$xr4, $t6, 7
	ld.w	$a2, $a0, 0
	ld.w	$a7, $a0, 20
	ld.w	$t0, $a0, 40
	ld.w	$t6, $a0, 60
	ld.w	$t7, $a0, 80
	ld.w	$t8, $a0, 100
	ld.w	$fp, $a0, 120
	ld.w	$s0, $a0, 140
	xvinsgr2vr.w	$xr5, $a2, 0
	xvinsgr2vr.w	$xr5, $a7, 1
	xvinsgr2vr.w	$xr5, $t0, 2
	xvinsgr2vr.w	$xr5, $t6, 3
	xvinsgr2vr.w	$xr5, $t7, 4
	xvinsgr2vr.w	$xr5, $t8, 5
	xvinsgr2vr.w	$xr5, $fp, 6
	xvinsgr2vr.w	$xr5, $s0, 7
	xvadd.w	$xr2, $xr4, $xr2
	xvadd.w	$xr3, $xr5, $xr3
	addi.d	$t1, $t1, -16
	addi.d	$a0, $a0, 320
	bnez	$t1, .LBB0_33
# %bb.34:                               # %middle.block427
                                        #   in Loop: Header=BB0_9 Depth=2
	xvadd.w	$xr2, $xr3, $xr2
	xvhaddw.d.w	$xr2, $xr2, $xr2
	xvhaddw.q.d	$xr2, $xr2, $xr2
	xvpermi.d	$xr3, $xr2, 2
	xvadd.d	$xr2, $xr3, $xr2
	xvpickve2gr.d	$a0, $xr2, 0
	bne	$s8, $t2, .LBB0_44
# %bb.35:                               #   in Loop: Header=BB0_9 Depth=2
	ori	$s0, $zero, 3
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	b	.LBB0_59
.LBB0_36:                               # %vector.ph491
                                        #   in Loop: Header=BB0_9 Depth=2
	bstrpick.d	$a0, $ra, 32, 4
	slli.d	$t0, $a0, 4
	slli.d	$a0, $t2, 4
	alsl.d	$a0, $t2, $a0, 2
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	move	$t1, $t0
	xvori.b	$xr2, $xr1, 0
	xvori.b	$xr3, $xr1, 0
	.p2align	4, , 16
.LBB0_37:                               # %vector.body494
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $a0, -160
	ld.w	$a7, $a0, -140
	ld.w	$t6, $a0, -120
	ld.w	$t7, $a0, -100
	ld.w	$t8, $a0, -80
	ld.w	$fp, $a0, -60
	ld.w	$s0, $a0, -40
	ld.w	$t4, $a0, -20
	xvinsgr2vr.w	$xr4, $a2, 0
	xvinsgr2vr.w	$xr4, $a7, 1
	xvinsgr2vr.w	$xr4, $t6, 2
	xvinsgr2vr.w	$xr4, $t7, 3
	xvinsgr2vr.w	$xr4, $t8, 4
	xvinsgr2vr.w	$xr4, $fp, 5
	xvinsgr2vr.w	$xr4, $s0, 6
	xvinsgr2vr.w	$xr4, $t4, 7
	ld.w	$a2, $a0, 0
	ld.w	$a7, $a0, 20
	ld.w	$t4, $a0, 40
	ld.w	$t6, $a0, 60
	ld.w	$t7, $a0, 80
	ld.w	$t8, $a0, 100
	ld.w	$fp, $a0, 120
	ld.w	$s0, $a0, 140
	xvinsgr2vr.w	$xr5, $a2, 0
	xvinsgr2vr.w	$xr5, $a7, 1
	xvinsgr2vr.w	$xr5, $t4, 2
	xvinsgr2vr.w	$xr5, $t6, 3
	xvinsgr2vr.w	$xr5, $t7, 4
	xvinsgr2vr.w	$xr5, $t8, 5
	xvinsgr2vr.w	$xr5, $fp, 6
	xvinsgr2vr.w	$xr5, $s0, 7
	xvadd.w	$xr2, $xr4, $xr2
	xvadd.w	$xr3, $xr5, $xr3
	addi.d	$t1, $t1, -16
	addi.d	$a0, $a0, 320
	bnez	$t1, .LBB0_37
# %bb.38:                               # %middle.block499
                                        #   in Loop: Header=BB0_9 Depth=2
	xvadd.w	$xr2, $xr3, $xr2
	xvhaddw.d.w	$xr2, $xr2, $xr2
	xvhaddw.q.d	$xr2, $xr2, $xr2
	xvpermi.d	$xr3, $xr2, 2
	xvadd.d	$xr2, $xr3, $xr2
	xvpickve2gr.d	$a0, $xr2, 0
	bne	$ra, $t0, .LBB0_48
# %bb.39:                               #   in Loop: Header=BB0_9 Depth=2
	ori	$s0, $zero, 3
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	b	.LBB0_64
.LBB0_40:                               # %vector.ph395
                                        #   in Loop: Header=BB0_9 Depth=2
	bstrpick.d	$a0, $s7, 30, 4
	slli.d	$t1, $a0, 4
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$t0, $t1
	xvori.b	$xr2, $xr1, 0
	xvori.b	$xr3, $xr1, 0
	.p2align	4, , 16
.LBB0_41:                               # %vector.body398
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $a0, -140
	ld.w	$a7, $a0, -120
	ld.w	$t2, $a0, -100
	ld.w	$t4, $a0, -80
	ld.w	$t6, $a0, -60
	ld.w	$t7, $a0, -40
	ld.w	$t8, $a0, -20
	ld.w	$fp, $a0, 0
	xvinsgr2vr.w	$xr4, $a2, 0
	xvinsgr2vr.w	$xr4, $a7, 1
	xvinsgr2vr.w	$xr4, $t2, 2
	xvinsgr2vr.w	$xr4, $t4, 3
	xvinsgr2vr.w	$xr4, $t6, 4
	xvinsgr2vr.w	$xr4, $t7, 5
	xvinsgr2vr.w	$xr4, $t8, 6
	xvinsgr2vr.w	$xr4, $fp, 7
	ld.w	$a2, $a0, 20
	ld.w	$a7, $a0, 40
	ld.w	$t2, $a0, 60
	ld.w	$t4, $a0, 80
	ld.w	$t6, $a0, 100
	ld.w	$t7, $a0, 120
	ld.w	$t8, $a0, 140
	ld.w	$fp, $a0, 160
	xvinsgr2vr.w	$xr5, $a2, 0
	xvinsgr2vr.w	$xr5, $a7, 1
	xvinsgr2vr.w	$xr5, $t2, 2
	xvinsgr2vr.w	$xr5, $t4, 3
	xvinsgr2vr.w	$xr5, $t6, 4
	xvinsgr2vr.w	$xr5, $t7, 5
	xvinsgr2vr.w	$xr5, $t8, 6
	xvinsgr2vr.w	$xr5, $fp, 7
	xvadd.w	$xr2, $xr4, $xr2
	xvadd.w	$xr3, $xr5, $xr3
	addi.d	$t0, $t0, -16
	addi.d	$a0, $a0, 320
	bnez	$t0, .LBB0_41
# %bb.42:                               # %middle.block402
                                        #   in Loop: Header=BB0_9 Depth=2
	xvadd.w	$xr2, $xr3, $xr2
	xvhaddw.d.w	$xr2, $xr2, $xr2
	xvhaddw.q.d	$xr2, $xr2, $xr2
	xvpermi.d	$xr3, $xr2, 2
	xvadd.d	$xr2, $xr3, $xr2
	xvpickve2gr.d	$a0, $xr2, 0
	bne	$t1, $s7, .LBB0_52
# %bb.43:                               #   in Loop: Header=BB0_9 Depth=2
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	b	.LBB0_92
.LBB0_44:                               # %vec.epilog.iter.check434
                                        #   in Loop: Header=BB0_9 Depth=2
	andi	$a2, $s8, 12
	ori	$s0, $zero, 3
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	beqz	$a2, .LBB0_56
.LBB0_45:                               # %vec.epilog.ph433
                                        #   in Loop: Header=BB0_9 Depth=2
	bstrpick.d	$a2, $s8, 32, 2
	slli.d	$t0, $a2, 2
	alsl.d	$a2, $a2, $ra, 2
	vori.b	$vr2, $vr0, 0
	vinsgr2vr.w	$vr2, $a0, 0
	sub.d	$a0, $t2, $t0
	add.d	$a7, $t2, $ra
	slli.d	$t1, $a7, 4
	alsl.d	$a7, $a7, $t1, 2
	ld.d	$t1, $sp, 48                    # 8-byte Folded Reload
	add.d	$t1, $t1, $a7
	.p2align	4, , 16
.LBB0_46:                               # %vec.epilog.vector.body439
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a7, $t1, -40
	ld.w	$t2, $t1, -20
	ld.w	$t6, $t1, 0
	ld.w	$t7, $t1, 20
	vinsgr2vr.w	$vr3, $a7, 0
	vinsgr2vr.w	$vr3, $t2, 1
	vinsgr2vr.w	$vr3, $t6, 2
	vinsgr2vr.w	$vr3, $t7, 3
	vadd.w	$vr2, $vr3, $vr2
	addi.d	$a0, $a0, 4
	addi.d	$t1, $t1, 80
	bnez	$a0, .LBB0_46
# %bb.47:                               # %vec.epilog.middle.block444
                                        #   in Loop: Header=BB0_9 Depth=2
	vhaddw.d.w	$vr2, $vr2, $vr2
	vhaddw.q.d	$vr2, $vr2, $vr2
	vpickve2gr.d	$a0, $vr2, 0
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	bne	$s8, $t0, .LBB0_57
	b	.LBB0_59
.LBB0_48:                               # %vec.epilog.iter.check506
                                        #   in Loop: Header=BB0_9 Depth=2
	andi	$a2, $ra, 12
	ori	$s0, $zero, 3
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	beqz	$a2, .LBB0_61
.LBB0_49:                               # %vec.epilog.ph505
                                        #   in Loop: Header=BB0_9 Depth=2
	bstrpick.d	$a2, $ra, 32, 2
	slli.d	$t1, $a2, 2
	alsl.d	$a2, $a2, $t2, 2
	vori.b	$vr2, $vr0, 0
	vinsgr2vr.w	$vr2, $a0, 0
	sub.d	$a0, $t0, $t1
	add.d	$a7, $t0, $t2
	slli.d	$t0, $a7, 4
	alsl.d	$a7, $a7, $t0, 2
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	add.d	$t0, $t0, $a7
	.p2align	4, , 16
.LBB0_50:                               # %vec.epilog.vector.body511
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a7, $t0, -40
	ld.w	$t2, $t0, -20
	ld.w	$t4, $t0, 0
	ld.w	$t6, $t0, 20
	vinsgr2vr.w	$vr3, $a7, 0
	vinsgr2vr.w	$vr3, $t2, 1
	vinsgr2vr.w	$vr3, $t4, 2
	vinsgr2vr.w	$vr3, $t6, 3
	vadd.w	$vr2, $vr3, $vr2
	addi.d	$a0, $a0, 4
	addi.d	$t0, $t0, 80
	bnez	$a0, .LBB0_50
# %bb.51:                               # %vec.epilog.middle.block516
                                        #   in Loop: Header=BB0_9 Depth=2
	vhaddw.d.w	$vr2, $vr2, $vr2
	vhaddw.q.d	$vr2, $vr2, $vr2
	vpickve2gr.d	$a0, $vr2, 0
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	bne	$ra, $t1, .LBB0_62
	b	.LBB0_64
.LBB0_52:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB0_9 Depth=2
	andi	$a2, $s7, 12
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	beqz	$a2, .LBB0_89
.LBB0_53:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB0_9 Depth=2
	bstrpick.d	$a2, $s7, 30, 2
	slli.d	$t0, $a2, 2
	srli.d	$a7, $s7, 2
	ori	$a2, $zero, 1
	bstrins.d	$a2, $a7, 30, 2
	vori.b	$vr2, $vr0, 0
	vinsgr2vr.w	$vr2, $a0, 0
	sub.d	$a0, $t1, $t0
	slli.d	$a7, $t1, 4
	alsl.d	$a7, $t1, $a7, 2
	ld.d	$t1, $sp, 48                    # 8-byte Folded Reload
	add.d	$t1, $t1, $a7
	.p2align	4, , 16
.LBB0_54:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a7, $t1, -20
	ld.w	$t2, $t1, 0
	ld.w	$t4, $t1, 20
	ld.w	$t6, $t1, 40
	vinsgr2vr.w	$vr3, $a7, 0
	vinsgr2vr.w	$vr3, $t2, 1
	vinsgr2vr.w	$vr3, $t4, 2
	vinsgr2vr.w	$vr3, $t6, 3
	vadd.w	$vr2, $vr3, $vr2
	addi.d	$a0, $a0, 4
	addi.d	$t1, $t1, 80
	bnez	$a0, .LBB0_54
# %bb.55:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB0_9 Depth=2
	vhaddw.d.w	$vr2, $vr2, $vr2
	vhaddw.q.d	$vr2, $vr2, $vr2
	vpickve2gr.d	$a0, $vr2, 0
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	bne	$t0, $s7, .LBB0_90
	b	.LBB0_92
.LBB0_56:                               #   in Loop: Header=BB0_9 Depth=2
	add.d	$a2, $t2, $ra
.LBB0_57:                               # %.lr.ph225.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	slli.d	$a7, $a2, 4
	alsl.d	$a7, $a2, $a7, 2
	ld.d	$t0, $sp, 64                    # 8-byte Folded Reload
	add.d	$a7, $t0, $a7
	sub.d	$a2, $s7, $a2
	addi.d	$a2, $a2, 1
	.p2align	4, , 16
.LBB0_58:                               # %.lr.ph225
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t0, $a7, 0
	add.d	$a0, $t0, $a0
	addi.w	$a2, $a2, -1
	addi.d	$a7, $a7, 20
	bnez	$a2, .LBB0_58
.LBB0_59:                               # %._crit_edge226
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.w	$a0, $a0, 0
	blt	$a0, $s6, .LBB0_121
# %bb.60:                               # %thread-pre-split.thread
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.w	$s7, $s4, 20
	b	.LBB0_96
.LBB0_61:                               #   in Loop: Header=BB0_9 Depth=2
	add.d	$a2, $t0, $t2
.LBB0_62:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	slli.d	$a7, $a2, 4
	alsl.d	$a7, $a2, $a7, 2
	ld.d	$t0, $sp, 64                    # 8-byte Folded Reload
	add.d	$a7, $t0, $a7
	sub.d	$a2, $s8, $a2
	addi.d	$a2, $a2, 1
	.p2align	4, , 16
.LBB0_63:                               # %.lr.ph
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t0, $a7, 0
	add.d	$a0, $t0, $a0
	addi.w	$a2, $a2, -1
	addi.d	$a7, $a7, 20
	bnez	$a2, .LBB0_63
.LBB0_64:                               # %._crit_edge
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.w	$a0, $a0, 0
	blt	$a0, $s6, .LBB0_121
# %bb.65:                               #   in Loop: Header=BB0_9 Depth=2
	ld.w	$a0, $s4, 24
	alsl.d	$a2, $a0, $s7, 3
	slli.d	$a0, $a0, 3
	ldx.w	$t2, $s7, $a0
	ld.w	$s7, $a2, 4
	bge	$s7, $t2, .LBB0_67
# %bb.66:                               #   in Loop: Header=BB0_9 Depth=2
	move	$a0, $zero
	b	.LBB0_82
.LBB0_67:                               # %iter.check452
                                        #   in Loop: Header=BB0_9 Depth=2
	sub.w	$a0, $s7, $t2
	bgeu	$a0, $s0, .LBB0_69
# %bb.68:                               #   in Loop: Header=BB0_9 Depth=2
	move	$a0, $zero
	move	$a2, $t2
	b	.LBB0_80
.LBB0_69:                               # %vector.main.loop.iter.check454
                                        #   in Loop: Header=BB0_9 Depth=2
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$s8, $a2, 1
	ori	$a2, $zero, 15
	bgeu	$a0, $a2, .LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_9 Depth=2
	move	$t1, $zero
	move	$a0, $zero
	b	.LBB0_76
.LBB0_71:                               # %vector.ph455
                                        #   in Loop: Header=BB0_9 Depth=2
	bstrpick.d	$a0, $s8, 32, 4
	slli.d	$t1, $a0, 4
	slli.d	$a0, $t2, 4
	alsl.d	$a0, $t2, $a0, 2
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	move	$t0, $t1
	xvori.b	$xr2, $xr1, 0
	xvori.b	$xr3, $xr1, 0
	.p2align	4, , 16
.LBB0_72:                               # %vector.body458
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $a0, -160
	ld.w	$a7, $a0, -140
	ld.w	$t4, $a0, -120
	ld.w	$t6, $a0, -100
	ld.w	$t7, $a0, -80
	ld.w	$t8, $a0, -60
	ld.w	$fp, $a0, -40
	ld.w	$s0, $a0, -20
	xvinsgr2vr.w	$xr4, $a2, 0
	xvinsgr2vr.w	$xr4, $a7, 1
	xvinsgr2vr.w	$xr4, $t4, 2
	xvinsgr2vr.w	$xr4, $t6, 3
	xvinsgr2vr.w	$xr4, $t7, 4
	xvinsgr2vr.w	$xr4, $t8, 5
	xvinsgr2vr.w	$xr4, $fp, 6
	xvinsgr2vr.w	$xr4, $s0, 7
	ld.w	$a2, $a0, 0
	ld.w	$a7, $a0, 20
	ld.w	$t4, $a0, 40
	ld.w	$t6, $a0, 60
	ld.w	$t7, $a0, 80
	ld.w	$t8, $a0, 100
	ld.w	$fp, $a0, 120
	ld.w	$s0, $a0, 140
	xvinsgr2vr.w	$xr5, $a2, 0
	xvinsgr2vr.w	$xr5, $a7, 1
	xvinsgr2vr.w	$xr5, $t4, 2
	xvinsgr2vr.w	$xr5, $t6, 3
	xvinsgr2vr.w	$xr5, $t7, 4
	xvinsgr2vr.w	$xr5, $t8, 5
	xvinsgr2vr.w	$xr5, $fp, 6
	xvinsgr2vr.w	$xr5, $s0, 7
	xvadd.w	$xr2, $xr4, $xr2
	xvadd.w	$xr3, $xr5, $xr3
	addi.d	$t0, $t0, -16
	addi.d	$a0, $a0, 320
	bnez	$t0, .LBB0_72
# %bb.73:                               # %middle.block463
                                        #   in Loop: Header=BB0_9 Depth=2
	xvadd.w	$xr2, $xr3, $xr2
	xvhaddw.d.w	$xr2, $xr2, $xr2
	xvhaddw.q.d	$xr2, $xr2, $xr2
	xvpermi.d	$xr3, $xr2, 2
	xvadd.d	$xr2, $xr3, $xr2
	xvpickve2gr.d	$a0, $xr2, 0
	bne	$s8, $t1, .LBB0_75
# %bb.74:                               #   in Loop: Header=BB0_9 Depth=2
	ori	$s0, $zero, 3
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	b	.LBB0_82
.LBB0_75:                               # %vec.epilog.iter.check470
                                        #   in Loop: Header=BB0_9 Depth=2
	andi	$a2, $s8, 12
	ori	$s0, $zero, 3
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	beqz	$a2, .LBB0_79
.LBB0_76:                               # %vec.epilog.ph469
                                        #   in Loop: Header=BB0_9 Depth=2
	bstrpick.d	$a2, $s8, 32, 2
	slli.d	$t0, $a2, 2
	alsl.d	$a2, $a2, $t2, 2
	vori.b	$vr2, $vr0, 0
	vinsgr2vr.w	$vr2, $a0, 0
	sub.d	$a0, $t1, $t0
	add.d	$a7, $t1, $t2
	slli.d	$t1, $a7, 4
	alsl.d	$a7, $a7, $t1, 2
	ld.d	$t1, $sp, 48                    # 8-byte Folded Reload
	add.d	$t1, $t1, $a7
	.p2align	4, , 16
.LBB0_77:                               # %vec.epilog.vector.body475
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a7, $t1, -40
	ld.w	$t2, $t1, -20
	ld.w	$t4, $t1, 0
	ld.w	$t6, $t1, 20
	vinsgr2vr.w	$vr3, $a7, 0
	vinsgr2vr.w	$vr3, $t2, 1
	vinsgr2vr.w	$vr3, $t4, 2
	vinsgr2vr.w	$vr3, $t6, 3
	vadd.w	$vr2, $vr3, $vr2
	addi.d	$a0, $a0, 4
	addi.d	$t1, $t1, 80
	bnez	$a0, .LBB0_77
# %bb.78:                               # %vec.epilog.middle.block480
                                        #   in Loop: Header=BB0_9 Depth=2
	vhaddw.d.w	$vr2, $vr2, $vr2
	vhaddw.q.d	$vr2, $vr2, $vr2
	vpickve2gr.d	$a0, $vr2, 0
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	bne	$s8, $t0, .LBB0_80
	b	.LBB0_82
.LBB0_79:                               #   in Loop: Header=BB0_9 Depth=2
	add.d	$a2, $t1, $t2
.LBB0_80:                               # %.lr.ph218.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	slli.d	$a7, $a2, 4
	alsl.d	$a7, $a2, $a7, 2
	ld.d	$t0, $sp, 64                    # 8-byte Folded Reload
	add.d	$a7, $t0, $a7
	sub.d	$a2, $s7, $a2
	addi.d	$a2, $a2, 1
	.p2align	4, , 16
.LBB0_81:                               # %.lr.ph218
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t0, $a7, 0
	add.d	$a0, $t0, $a0
	addi.w	$a2, $a2, -1
	addi.d	$a7, $a7, 20
	bnez	$a2, .LBB0_81
.LBB0_82:                               # %._crit_edge219
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.w	$a0, $a0, 0
	blt	$a0, $s6, .LBB0_121
# %bb.83:                               # %.preheader193.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	pcalau12i	$a0, %got_pc_hi20(randVar)
	ld.d	$a2, $a0, %got_pc_lo12(randVar)
	ld.w	$t0, $a2, 0
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB0_84:                               # %.preheader193
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movgr2fr.w	$fa2, $a7
	ffint.d.w	$fa2, $fa2
	mul.d	$a0, $t0, $a5
	add.w	$t0, $a0, $a6
	st.w	$t0, $a2, 0
	fld.d	$fa3, $s5, %pc_lo12(.LCPI0_0)
	bstrpick.d	$a0, $t0, 30, 0
	movgr2fr.w	$fa4, $a0
	ffint.d.w	$fa4, $fa4
	fdiv.d	$fa3, $fa4, $fa3
	ld.w	$a0, $s4, 16
	fmul.d	$fa2, $fa3, $fa2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a7, $fa2
	beq	$a0, $a7, .LBB0_84
# %bb.85:                               #   in Loop: Header=BB0_9 Depth=2
	beqz	$a7, .LBB0_87
# %bb.86:                               #   in Loop: Header=BB0_9 Depth=2
	ld.w	$s7, $s4, 24
	bnez	$a0, .LBB0_96
	b	.LBB0_88
.LBB0_87:                               #   in Loop: Header=BB0_9 Depth=2
	ld.w	$s7, $s4, 20
	bnez	$a0, .LBB0_96
.LBB0_88:                               #   in Loop: Header=BB0_9 Depth=2
	ld.w	$t1, $s4, 20
	vldi	$vr2, -912
	move	$a0, $t1
	b	.LBB0_97
.LBB0_89:                               #   in Loop: Header=BB0_9 Depth=2
	addi.d	$a2, $t1, 1
.LBB0_90:                               # %.lr.ph231.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.d	$a7, $s7, 1
	bstrpick.d	$t0, $a7, 31, 0
	slli.d	$a7, $a2, 4
	alsl.d	$a7, $a2, $a7, 2
	ld.d	$t1, $sp, 64                    # 8-byte Folded Reload
	add.d	$a7, $t1, $a7
	sub.d	$a2, $t0, $a2
	.p2align	4, , 16
.LBB0_91:                               # %.lr.ph231
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t0, $a7, 0
	add.d	$a0, $t0, $a0
	addi.d	$a2, $a2, -1
	addi.d	$a7, $a7, 20
	bnez	$a2, .LBB0_91
.LBB0_92:                               # %._crit_edge232
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.w	$a0, $a0, 0
	blt	$a0, $s6, .LBB0_121
# %bb.93:                               # %.preheader.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	pcalau12i	$a0, %got_pc_hi20(randVar)
	ld.d	$a2, $a0, %got_pc_lo12(randVar)
	ld.w	$t0, $a2, 0
	.p2align	4, , 16
.LBB0_94:                               # %.preheader
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movgr2fr.w	$fa2, $s8
	ffint.d.w	$fa2, $fa2
	mul.d	$a0, $t0, $a5
	add.w	$t0, $a0, $a6
	st.w	$t0, $a2, 0
	fld.d	$fa3, $s5, %pc_lo12(.LCPI0_0)
	bstrpick.d	$a0, $t0, 30, 0
	movgr2fr.w	$fa4, $a0
	ffint.d.w	$fa4, $fa4
	fdiv.d	$fa3, $fa4, $fa3
	ld.w	$a0, $s4, 16
	fmul.d	$fa2, $fa3, $fa2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$s8, $fa2
	beq	$a0, $s8, .LBB0_94
# %bb.95:                               # %.loopexit192
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.d	$s7, $s8, 1
	beqz	$a0, .LBB0_88
	.p2align	4, , 16
.LBB0_96:                               #   in Loop: Header=BB0_9 Depth=2
	ld.d	$a0, $t3, 216
	addi.w	$a2, $s7, 0
	alsl.d	$a7, $a2, $a0, 3
	slli.d	$a2, $a2, 3
	ldx.w	$t1, $a0, $a2
	ld.w	$a0, $a7, 4
	sub.d	$a2, $a0, $t1
	addi.d	$a2, $a2, 1
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa2, $fa2
.LBB0_97:                               #   in Loop: Header=BB0_9 Depth=2
	pcalau12i	$a2, %got_pc_hi20(randVar)
	ld.d	$t0, $a2, %got_pc_lo12(randVar)
	ld.w	$t7, $t0, 0
	addi.w	$a2, $a0, 1
.LBB0_98:                               # %.critedge
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_100 Depth 4
	mul.d	$a7, $t7, $a5
	add.w	$t7, $a7, $a6
	fld.d	$fa3, $s5, %pc_lo12(.LCPI0_0)
	bstrpick.d	$a7, $t7, 30, 0
	movgr2fr.w	$fa4, $a7
	ffint.d.w	$fa4, $fa4
	fdiv.d	$fa3, $fa4, $fa3
	fmul.d	$fa3, $fa2, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t2, $fa3
	add.w	$t8, $t1, $t2
	st.w	$t7, $t0, 0
	blt	$a0, $t8, .LBB0_98
# %bb.99:                               # %.lr.ph237
                                        #   in Loop: Header=BB0_98 Depth=3
	move	$a7, $zero
	ld.w	$s8, $s4, 28
	add.d	$t2, $t1, $t2
	slli.d	$t4, $t2, 4
	alsl.d	$t4, $t2, $t4, 2
	add.d	$ra, $t5, $t4
	move	$s6, $t8
	.p2align	4, , 16
.LBB0_100:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_98 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$t4, $ra, 8
	add.w	$a7, $t4, $a7
	bge	$a7, $s8, .LBB0_102
# %bb.101:                              #   in Loop: Header=BB0_100 Depth=4
	addi.w	$s6, $s6, 1
	addi.d	$ra, $ra, 20
	bne	$a2, $s6, .LBB0_100
	b	.LBB0_98
	.p2align	4, , 16
.LBB0_102:                              # %.loopexit
                                        #   in Loop: Header=BB0_9 Depth=2
	move	$s4, $zero
	move	$t1, $s3
	blt	$t8, $s6, .LBB0_107
.LBB0_103:                              # %._crit_edge247
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.w	$a2, $ra, 0
	sub.w	$a0, $s8, $s4
	add.d	$a2, $a2, $a0
	st.w	$a2, $ra, 0
	blt	$a0, $a1, .LBB0_8
# %bb.104:                              # %.lr.ph252.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	add.w	$a0, $t1, $a0
	addi.w	$t1, $t1, 0
	addi.d	$a2, $t1, 1
	slt	$a7, $a0, $a2
	masknez	$t0, $a0, $a7
	maskeqz	$a2, $a2, $a7
	or	$a2, $a2, $t0
	sub.d	$t0, $a2, $t1
	bgeu	$t0, $a4, .LBB0_115
# %bb.105:                              #   in Loop: Header=BB0_9 Depth=2
	move	$a2, $t1
	b	.LBB0_118
	.p2align	4, , 16
.LBB0_106:                              # %._crit_edge241
                                        #   in Loop: Header=BB0_107 Depth=3
	addi.d	$t2, $t2, 1
	add.d	$s4, $a0, $s4
	beq	$t2, $s6, .LBB0_103
.LBB0_107:                              # %.lr.ph246
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_111 Depth 4
                                        #         Child Loop BB0_114 Depth 4
	slli.d	$a0, $t2, 4
	alsl.d	$a7, $t2, $a0, 2
	add.d	$a0, $t5, $a7
	ld.w	$a0, $a0, 8
	ldx.w	$t0, $t5, $a7
	move	$a2, $t1
	add.d	$t0, $t0, $a0
	stx.w	$t0, $t5, $a7
	add.w	$t1, $a0, $t1
	blt	$a0, $a1, .LBB0_106
# %bb.108:                              # %.lr.ph240.preheader
                                        #   in Loop: Header=BB0_107 Depth=3
	addi.w	$t7, $a2, 0
	addi.d	$a2, $t7, 1
	slt	$a7, $t1, $a2
	masknez	$t0, $t1, $a7
	maskeqz	$a2, $a2, $a7
	or	$a2, $a2, $t0
	sub.d	$t0, $a2, $t7
	bgeu	$t0, $a4, .LBB0_110
# %bb.109:                              #   in Loop: Header=BB0_107 Depth=3
	move	$a2, $t7
	b	.LBB0_113
	.p2align	4, , 16
.LBB0_110:                              # %vector.ph381
                                        #   in Loop: Header=BB0_107 Depth=3
	move	$a7, $t0
	bstrins.d	$a7, $zero, 0, 0
	add.d	$a2, $a7, $t7
	mul.d	$t4, $t7, $a3
	add.d	$t7, $s1, $t4
	move	$t8, $a7
	.p2align	4, , 16
.LBB0_111:                              # %vector.body384
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_107 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.w	$t2, $t7, -44
	st.w	$t2, $t7, 0
	addi.d	$t8, $t8, -2
	addi.d	$t7, $t7, 88
	bnez	$t8, .LBB0_111
# %bb.112:                              # %middle.block388
                                        #   in Loop: Header=BB0_107 Depth=3
	beq	$t0, $a7, .LBB0_106
.LBB0_113:                              # %.lr.ph240.preheader521
                                        #   in Loop: Header=BB0_107 Depth=3
	mul.d	$a7, $a2, $a3
	add.d	$a7, $s2, $a7
	.p2align	4, , 16
.LBB0_114:                              # %.lr.ph240
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_107 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.w	$t2, $a7, 0
	addi.d	$a2, $a2, 1
	addi.d	$a7, $a7, 44
	blt	$a2, $t1, .LBB0_114
	b	.LBB0_106
.LBB0_115:                              # %vector.ph
                                        #   in Loop: Header=BB0_9 Depth=2
	move	$a7, $t0
	bstrins.d	$a7, $zero, 0, 0
	add.d	$a2, $a7, $t1
	mul.d	$t1, $t1, $a3
	add.d	$t1, $s1, $t1
	move	$t2, $a7
	.p2align	4, , 16
.LBB0_116:                              # %vector.body
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$s6, $t1, -44
	st.w	$s6, $t1, 0
	addi.d	$t2, $t2, -2
	addi.d	$t1, $t1, 88
	bnez	$t2, .LBB0_116
# %bb.117:                              # %middle.block
                                        #   in Loop: Header=BB0_9 Depth=2
	beq	$t0, $a7, .LBB0_8
.LBB0_118:                              # %.lr.ph252.preheader522
                                        #   in Loop: Header=BB0_9 Depth=2
	mul.d	$a7, $a2, $a3
	add.d	$a7, $s2, $a7
	.p2align	4, , 16
.LBB0_119:                              # %.lr.ph252
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$s6, $a7, 0
	addi.d	$a2, $a2, 1
	addi.d	$a7, $a7, 44
	blt	$a2, $a0, .LBB0_119
	b	.LBB0_8
.LBB0_120:                              # %._crit_edge266
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
.LBB0_121:
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$fp, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 35
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 35
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	placepin, .Lfunc_end0-placepin
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"DEATH: Sequence was specified which"
	.size	.L.str, 36

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	" required more capacity than given\n"
	.size	.L.str.1, 36

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"sides could hanlde. Problem cell:%d\n"
	.size	.L.str.2, 37

	.section	".note.GNU-stack","",@progbits
	.addrsig
