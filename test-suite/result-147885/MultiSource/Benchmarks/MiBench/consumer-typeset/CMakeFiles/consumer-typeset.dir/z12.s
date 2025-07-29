	.file	"z12.c"
	.text
	.globl	SpannerAvailableSpace           # -- Begin function SpannerAvailableSpace
	.p2align	5
	.type	SpannerAvailableSpace,@function
SpannerAvailableSpace:                  # @SpannerAvailableSpace
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
	move	$fp, $a0
	ld.bu	$a0, $a0, 32
	addi.d	$a0, $a0, -13
	ori	$a4, $zero, 2
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	st.d	$a2, $sp, 0                     # 8-byte Folded Spill
	move	$s2, $a1
	bltu	$a0, $a4, .LBB0_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a5, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_2:
	ld.d	$s4, $fp, 24
	beq	$s4, $fp, .LBB0_41
# %bb.3:                                # %.preheader.lr.ph
	move	$s1, $zero
	sltui	$a0, $s2, 1
	addi.d	$s5, $a0, 15
	xori	$s6, $a0, 19
	ori	$a1, $zero, 16
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 24
	maskeqz	$a0, $a2, $a0
	or	$s8, $a0, $a1
                                        # implicit-def: $r23
                                        # implicit-def: $r4
                                        # kill: killed $r4
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_4:                                #   in Loop: Header=BB0_6 Depth=1
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	ori	$a0, $zero, 12
	ori	$a1, $zero, 14
	ori	$a3, $zero, 2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s4, $s4, 24
	beq	$s4, $fp, .LBB0_42
.LBB0_6:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #       Child Loop BB0_21 Depth 3
                                        #     Child Loop BB0_25 Depth 2
                                        #       Child Loop BB0_23 Depth 3
                                        #     Child Loop BB0_35 Depth 2
                                        #     Child Loop BB0_32 Depth 2
	move	$s7, $s1
	move	$a1, $s4
	.p2align	4, , 16
.LBB0_7:                                #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a1, 0
	ld.bu	$a0, $a1, 32
	beqz	$a0, .LBB0_7
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	ldx.d	$s1, $a1, $s8
	addi.d	$s3, $a1, 32
	.p2align	4, , 16
.LBB0_9:                                #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $s1, 0
	ld.bu	$a1, $s1, 32
	beqz	$a1, .LBB0_9
# %bb.10:                               #   in Loop: Header=BB0_6 Depth=1
	bne	$s5, $a1, .LBB0_4
# %bb.11:                               #   in Loop: Header=BB0_6 Depth=1
	ld.bu	$a0, $s1, 41
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a5, $a0, %pc_lo12(.L.str.2)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_13:                               #   in Loop: Header=BB0_6 Depth=1
	beqz	$s7, .LBB0_40
# %bb.14:                               #   in Loop: Header=BB0_6 Depth=1
	ldx.d	$a1, $s1, $s8
	move	$a0, $a1
	.p2align	4, , 16
.LBB0_15:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 0
	ld.bu	$a2, $a0, 32
	beqz	$a2, .LBB0_15
# %bb.16:                               # %.preheader51.i
                                        #   in Loop: Header=BB0_6 Depth=1
	alsl.d	$a4, $s2, $s7, 2
	alsl.d	$s0, $s2, $s1, 2
	beqz	$s2, .LBB0_25
	.p2align	4, , 16
.LBB0_17:                               # %.preheader51.split.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_21 Depth 3
	andi	$a3, $a2, 255
	bne	$s6, $a3, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=2
	ld.d	$s7, $a1, 0
	ld.bu	$a3, $s7, 32
	beqz	$a3, .LBB0_32
.LBB0_19:                               #   in Loop: Header=BB0_17 Depth=2
	ld.d	$a3, $a0, 24
	beq	$a3, $a0, .LBB0_28
# %bb.20:                               #   in Loop: Header=BB0_17 Depth=2
	ld.d	$a1, $a0, 16
	move	$a0, $a1
	.p2align	4, , 16
.LBB0_21:                               #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a0, 0
	ld.bu	$a2, $a0, 32
	beqz	$a2, .LBB0_21
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_22:                               #   in Loop: Header=BB0_25 Depth=2
	move	$a0, $a3
	.p2align	4, , 16
.LBB0_23:                               #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a0, 0
	ld.bu	$a2, $a0, 32
	beqz	$a2, .LBB0_23
# %bb.24:                               #   in Loop: Header=BB0_25 Depth=2
	move	$a1, $a3
.LBB0_25:                               # %.preheader51.split.us.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_23 Depth 3
	andi	$a3, $a2, 255
	bne	$s6, $a3, .LBB0_27
# %bb.26:                               #   in Loop: Header=BB0_25 Depth=2
	ld.d	$s7, $a1, 0
	ld.bu	$a3, $s7, 32
	beqz	$a3, .LBB0_32
.LBB0_27:                               #   in Loop: Header=BB0_25 Depth=2
	ld.d	$a3, $a0, 24
	bne	$a3, $a0, .LBB0_22
.LBB0_28:                               # %.critedge.thread47.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a3, $zero, 8
	bne	$a2, $a3, .LBB0_31
# %bb.29:                               #   in Loop: Header=BB0_6 Depth=1
	ld.bu	$a0, $a0, 43
	andi	$a0, $a0, 1
	bne	$s2, $a0, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s7, $a1, 0
	ld.bu	$a0, $s7, 32
	beqz	$a0, .LBB0_35
.LBB0_31:                               #   in Loop: Header=BB0_6 Depth=1
	ld.bu	$a0, $s3, 0
	move	$s7, $a4
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a2, $a0, %pc_lo12(.L.str.3)
	ori	$a0, $zero, 12
	ori	$a1, $zero, 13
	ori	$a3, $zero, 2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 56
	ld.w	$a1, $s0, 48
	ld.w	$s0, $s0, 56
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_32:                               # %.preheader.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s7, $s7, 16
	ld.bu	$a0, $s7, 32
	beqz	$a0, .LBB0_32
# %bb.33:                               # %.preheader.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB0_39
# %bb.34:                               #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	move	$s3, $a4
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a5, $a0, %pc_lo12(.L.str.46)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a4, $s3
	b	.LBB0_39
	.p2align	4, , 16
.LBB0_35:                               # %.preheader48.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s7, $s7, 16
	ld.bu	$a0, $s7, 32
	beqz	$a0, .LBB0_35
# %bb.36:                               # %.preheader48.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	move	$s3, $a4
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a5, $a0, %pc_lo12(.L.str.47)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a4, $s3
.LBB0_38:                               # %.loopexit49.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.h	$a0, $s7, 44
	ori	$a0, $a0, 128
	st.h	$a0, $s7, 44
.LBB0_39:                               # %.loopexit
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $a4, 56
	ld.w	$a1, $s0, 48
	ld.w	$a2, $s0, 56
	addi.d	$a3, $s7, 44
	pcaddu18i	$ra, %call36(MinGap)
	jirl	$ra, $ra, 0
	ld.w	$s0, $s0, 56
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a1, $a0, $a1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	b	.LBB0_5
.LBB0_40:                               #   in Loop: Header=BB0_6 Depth=1
	alsl.d	$a0, $s2, $s1, 2
	ld.w	$a1, $a0, 48
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ld.w	$s0, $a0, 56
	b	.LBB0_5
.LBB0_41:
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r23
.LBB0_42:                               # %._crit_edge
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$a1, $a0, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.w	$s0, $a0, 0
	lu12i.w	$a0, 2047
	ori	$a0, $a0, 4095
	st.w	$a0, $fp, 64
	add.d	$a1, $s0, $a1
	st.w	$a1, $fp, 68
	st.w	$a0, $fp, 72
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
.Lfunc_end0:
	.size	SpannerAvailableSpace, .Lfunc_end0-SpannerAvailableSpace
                                        # -- End function
	.globl	MinSize                         # -- Begin function MinSize
	.p2align	5
	.type	MinSize,@function
MinSize:                                # @MinSize
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
	move	$s4, $a0
	ld.bu	$a5, $a0, 32
	addi.d	$a0, $a5, -2
	ori	$a3, $zero, 97
	move	$s0, $a1
	bltu	$a3, $a0, .LBB1_71
# %bb.1:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI1_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI1_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	addi.d	$fp, $s4, 32
	st.d	$s4, $sp, 112                   # 8-byte Folded Spill
	jr	$a0
.LBB1_2:
	ld.d	$a0, $s4, 8
	.p2align	4, , 16
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_3
	b	.LBB1_123
.LBB1_4:
	ld.d	$a0, $s4, 0
	.p2align	4, , 16
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_5
	b	.LBB1_123
.LBB1_6:
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	bnez	$s0, .LBB1_373
# %bb.7:
	ori	$a0, $zero, 43
	beq	$a5, $a0, .LBB1_39
	b	.LBB1_373
.LBB1_8:
	ld.d	$a0, $s4, 8
	.p2align	4, , 16
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_9
# %bb.10:
	move	$a1, $s0
	move	$s5, $a2
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 0
	sltui	$a2, $s0, 1
	addi.d	$a1, $a1, -32
	sltu	$a1, $zero, $a1
	beq	$a2, $a1, .LBB1_67
# %bb.11:
	alsl.d	$a0, $s0, $s4, 2
	st.w	$zero, $a0, 56
	st.w	$zero, $a0, 48
	b	.LBB1_68
.LBB1_12:
	ori	$a0, $zero, 1
	beq	$s0, $a0, .LBB1_474
# %bb.13:
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$fp, $s4, 8
	.p2align	4, , 16
.LBB1_14:                               # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $fp, 16
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB1_14
# %bb.15:
	addi.d	$a3, $fp, 32
	addi.d	$a0, $fp, 64
	addi.d	$a2, $sp, 656
	addi.d	$a4, $sp, 632
	move	$a1, $a5
	pcaddu18i	$ra, %call36(OpenIncGraphicFile)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$s8, $zero
	sltui	$a1, $a0, 1
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$s3, $a0, %pc_lo12(.L.str.30)
	ori	$s0, $zero, 2
	ori	$s2, $zero, 37
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$s4, $a0, %pc_lo12(.L.str.32)
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$s5, $a0, %pc_lo12(.L.str.33)
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$s6, $a0, %pc_lo12(.L.str.34)
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$s7, $a0, %pc_lo12(.L.str.31)
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
.LBB1_16:                               # %select.unfold
                                        # =>This Inner Loop Header: Depth=1
	bnez	$a1, .LBB1_176
# %bb.17:                               #   in Loop: Header=BB1_16 Depth=1
	addi.d	$a2, $sp, 120
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 1
	bltu	$a0, $s0, .LBB1_317
# %bb.18:                               #   in Loop: Header=BB1_16 Depth=1
	andi	$a0, $s8, 1
	bnez	$a0, .LBB1_20
# %bb.19:                               #   in Loop: Header=BB1_16 Depth=1
	addi.d	$a0, $sp, 120
	move	$a1, $s7
	pcaddu18i	$ra, %call36(StringBeginsWith)
	jirl	$ra, $ra, 0
	move	$s8, $zero
	ori	$a1, $zero, 2
	beqz	$a0, .LBB1_16
.LBB1_20:                               #   in Loop: Header=BB1_16 Depth=1
	ld.bu	$a0, $sp, 120
	move	$a1, $zero
	ori	$s8, $zero, 1
	bne	$a0, $s2, .LBB1_16
# %bb.21:                               #   in Loop: Header=BB1_16 Depth=1
	addi.d	$a0, $sp, 120
	move	$a1, $s4
	pcaddu18i	$ra, %call36(StringBeginsWith)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	beqz	$a0, .LBB1_16
# %bb.22:                               #   in Loop: Header=BB1_16 Depth=1
	addi.d	$a0, $sp, 120
	move	$a1, $s5
	pcaddu18i	$ra, %call36(StringContains)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	bnez	$a0, .LBB1_16
# %bb.23:                               #   in Loop: Header=BB1_16 Depth=1
	addi.d	$a0, $sp, 120
	addi.d	$a2, $sp, 648
	addi.d	$a3, $sp, 644
	addi.d	$a4, $sp, 640
	addi.d	$a5, $sp, 636
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	ori	$a2, $zero, 4
	bne	$a0, $a2, .LBB1_16
# %bb.24:                               #   in Loop: Header=BB1_16 Depth=1
	fld.s	$fa0, $sp, 648
	fld.s	$fa1, $sp, 644
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	fld.s	$fa0, $sp, 640
	ftintrz.w.s	$fa1, $fa1
	fld.s	$fa2, $sp, 636
	movfr2gr.s	$a0, $fa1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ftintrz.w.s	$fa0, $fa2
	movfr2gr.s	$a0, $fa0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$a1, $zero, 4
	ori	$s8, $zero, 1
	b	.LBB1_16
.LBB1_25:
	alsl.d	$a0, $s0, $s4, 2
	st.w	$zero, $a0, 56
	st.w	$zero, $a0, 48
	ld.d	$a0, $s4, 8
	.p2align	4, , 16
.LBB1_26:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_26
# %bb.27:
	alsl.d	$a0, $s0, $a0, 2
	b	.LBB1_473
.LBB1_28:
	ld.d	$a0, $s4, 0
	.p2align	4, , 16
.LBB1_29:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_29
	b	.LBB1_123
.LBB1_30:
	ld.d	$a0, $s4, 8
	.p2align	4, , 16
.LBB1_31:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_31
# %bb.32:
	move	$a1, $s0
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 0
	sltui	$a2, $s0, 1
	addi.d	$a1, $a1, -30
	sltu	$a1, $zero, $a1
	beq	$a2, $a1, .LBB1_125
	b	.LBB1_472
.LBB1_33:
	ld.d	$a0, $s4, 8
	.p2align	4, , 16
.LBB1_34:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_34
# %bb.35:
	move	$a1, $s0
	move	$s5, $a2
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s0, $a0, 2
	ld.w	$a1, $a0, 48
	alsl.d	$a2, $s0, $s4, 2
	st.w	$a1, $a2, 48
	ld.w	$a0, $a0, 56
	ori	$a1, $zero, 1
	st.w	$a0, $a2, 56
	bne	$s0, $a1, .LBB1_474
# %bb.36:
	move	$s3, $s0
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s0, 138
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$fp, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s1, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a0, 3
	ldx.d	$s2, $fp, $a1
	st.w	$a0, $s1, 0
	beqz	$s2, .LBB1_182
# %bb.37:
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s2, $a1, 0
	ld.d	$a1, $s2, 0
	alsl.d	$a0, $a0, $fp, 3
	st.d	$a1, $a0, 0
	b	.LBB1_183
.LBB1_38:
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	bnez	$s0, .LBB1_373
.LBB1_39:
	ld.d	$s5, $s4, 8
	.p2align	4, , 16
.LBB1_40:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s5, $s5, 16
	ld.bu	$a0, $s5, 32
	beqz	$a0, .LBB1_40
# %bb.41:
	ld.d	$a0, $s5, 24
	ld.d	$a1, $s5, 16
	beq	$a0, $a1, .LBB1_43
# %bb.42:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a5, $a0, %pc_lo12(.L.str.49)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 24
.LBB1_43:
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	ld.d	$a1, $a0, 24
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	st.d	$a0, $a2, 0
	beq	$a1, $a0, .LBB1_45
# %bb.44:
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
.LBB1_45:
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s6, $a1, %got_pc_lo12(zz_hold)
	ld.d	$a1, $a0, 8
	st.d	$a0, $s6, 0
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB1_47
# %bb.46:
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a1, $a2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s6, 0
	ld.d	$a0, $a2, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a1, $a1, 8
.LBB1_47:
	ld.bu	$a1, $a0, 32
	pcalau12i	$a2, %got_pc_hi20(zz_lengths)
	ld.d	$a4, $a2, %got_pc_lo12(zz_lengths)
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_free)
	ld.d	$s1, $a2, %got_pc_lo12(zz_free)
	pcalau12i	$a2, %got_pc_hi20(zz_size)
	ld.d	$a3, $a2, %got_pc_lo12(zz_size)
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s1, $a2
	st.w	$a1, $a3, 0
	st.d	$a0, $s6, 0
	st.d	$a2, $a0, 0
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	ld.w	$a0, $a3, 0
	ld.d	$a1, $s6, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s1, $a0
	ld.bu	$a0, $s8, 0
	ori	$a1, $zero, 44
	st.d	$s8, $sp, 64                    # 8-byte Folded Spill
	beq	$a0, $a1, .LBB1_49
# %bb.48:
	ori	$a1, $zero, 42
	bne	$a0, $a1, .LBB1_179
.LBB1_49:
	ld.d	$a1, $s4, 24
	.p2align	4, , 16
.LBB1_50:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a1, 0
	ld.bu	$a2, $a1, 32
	beqz	$a2, .LBB1_50
# %bb.51:
	ori	$a1, $zero, 16
	bne	$a2, $a1, .LBB1_178
# %bb.52:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 13
	slli.d	$a1, $a0, 3
	ldx.d	$s3, $s1, $a1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	beqz	$s3, .LBB1_243
# %bb.53:
	st.d	$s3, $s6, 0
	ld.d	$a1, $s3, 0
	alsl.d	$a0, $a0, $s1, 3
	st.d	$a1, $a0, 0
	b	.LBB1_244
.LBB1_54:
	addi.d	$a0, $a5, -13
	sltui	$a0, $a0, 1
	sltu	$a1, $zero, $s0
	xor	$a0, $a1, $a0
	bnez	$a0, .LBB1_56
# %bb.55:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	move	$fp, $a2
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a5, $a0, %pc_lo12(.L.str.11)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a2, $fp
.LBB1_56:
	ld.d	$a0, $s4, 8
	.p2align	4, , 16
.LBB1_57:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_57
	b	.LBB1_123
.LBB1_58:
	ori	$a0, $zero, 1
	bne	$s0, $a0, .LBB1_472
# %bb.59:
	move	$s8, $a2
	move	$s7, $s0
	ld.bu	$a0, $s4, 41
	pcalau12i	$a1, %got_pc_hi20(zz_lengths)
	ld.d	$s0, $a1, %got_pc_lo12(zz_lengths)
	ldx.bu	$a0, $s0, $a0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$fp, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s1, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a0, 3
	ldx.d	$s2, $fp, $a1
	st.w	$a0, $s1, 0
	beqz	$s2, .LBB1_192
# %bb.60:
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s2, $a1, 0
	ld.d	$a1, $s2, 0
	alsl.d	$a0, $a0, $fp, 3
	st.d	$a1, $a0, 0
	b	.LBB1_193
.LBB1_61:
	ld.d	$a0, $s4, 8
	.p2align	4, , 16
.LBB1_62:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_62
# %bb.63:
	move	$a1, $s0
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 0
	sltui	$a2, $s0, 1
	addi.d	$a1, $a1, -28
	sltu	$a1, $zero, $a1
	move	$s1, $a0
	beq	$a2, $a1, .LBB1_175
# %bb.64:
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(FindShift)
	jirl	$ra, $ra, 0
	st.w	$a0, $sp, 656
	alsl.d	$a1, $s0, $s1, 2
	ld.w	$a2, $a1, 48
	add.w	$a2, $a2, $a0
	srai.d	$a3, $a2, 63
	andn	$a2, $a2, $a3
	lu12i.w	$a3, 2047
	ori	$a3, $a3, 4095
	slt	$a4, $a2, $a3
	maskeqz	$a2, $a2, $a4
	masknez	$a4, $a3, $a4
	or	$a2, $a2, $a4
	alsl.d	$a4, $s0, $s4, 2
	st.w	$a2, $a4, 48
	ld.w	$a1, $a1, 56
	sub.w	$a0, $a1, $a0
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slt	$a1, $a0, $a3
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a3, $a1
	or	$a0, $a0, $a1
	st.w	$a0, $a4, 56
	b	.LBB1_474
.LBB1_65:
	bnez	$s0, .LBB1_474
# %bb.66:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(FontWordSize)
	jirl	$ra, $ra, 0
	b	.LBB1_474
.LBB1_67:
	alsl.d	$a0, $s0, $a0, 2
	ld.w	$a1, $a0, 48
	alsl.d	$a2, $s0, $s4, 2
	st.w	$a1, $a2, 48
	ld.w	$a0, $a0, 56
	st.w	$a0, $a2, 56
.LBB1_68:
	ori	$a0, $zero, 1
	bne	$s0, $a0, .LBB1_474
# %bb.69:
	move	$s3, $s0
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s0, 137
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$fp, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s1, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a0, 3
	ldx.d	$s2, $fp, $a1
	st.w	$a0, $s1, 0
	beqz	$s2, .LBB1_181
# %bb.70:
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s2, $a1, 0
	ld.d	$a1, $s2, 0
	alsl.d	$a0, $a0, $fp, 3
	st.d	$a1, $a0, 0
	ori	$a0, $zero, 137
	b	.LBB1_184
.LBB1_71:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$s1, $a0, 0
	move	$a0, $a5
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a2, $a0, %pc_lo12(.L.str.42)
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a5, $a0, %pc_lo12(.L.str.43)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	move	$a3, $zero
	move	$a4, $s1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB1_474
.LBB1_72:
	ld.d	$a0, $s4, 0
	.p2align	4, , 16
.LBB1_73:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_73
# %bb.74:
	move	$a1, $s0
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB1_207
# %bb.75:
	addi.d	$a1, $a0, 48
	slli.d	$a2, $s0, 2
	ldx.w	$a1, $a1, $a2
	alsl.d	$a2, $s0, $s4, 2
	st.w	$a1, $a2, 48
	alsl.d	$a0, $s0, $a0, 2
	b	.LBB1_127
.LBB1_76:
	ld.d	$a0, $s4, 8
	.p2align	4, , 16
.LBB1_77:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_77
# %bb.78:
	beqz	$s0, .LBB1_215
# %bb.79:
	move	$s2, $s0
	ld.d	$s1, $s4, 88
	ld.d	$fp, $s1, 8
	beq	$fp, $s1, .LBB1_84
# %bb.80:
	ld.bu	$a0, $fp, 32
	ld.d	$s0, $a2, 0
	beqz	$a0, .LBB1_82
# %bb.81:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a5, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_82:
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$fp, $a0, 0
	st.d	$s1, $a1, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a3, $a2, 0
	ld.d	$a3, $fp, 0
	st.d	$a3, $s1, 0
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a1, 0
	ld.d	$a5, $a3, 0
	ld.d	$a6, $a2, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a3, 0
	ld.d	$a3, $a0, 0
	st.d	$a3, $a6, 8
	st.d	$fp, $a0, 0
	st.d	$s0, $a1, 0
	beqz	$s0, .LBB1_84
# %bb.83:
	ld.d	$a3, $s0, 0
	st.d	$a3, $a2, 0
	ld.d	$a3, $fp, 0
	st.d	$a3, $s0, 0
	ld.d	$a3, $a0, 0
	ld.d	$a1, $a1, 0
	ld.d	$a4, $a3, 0
	ld.d	$a2, $a2, 0
	st.d	$a1, $a4, 8
	st.d	$a2, $a3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 8
.LBB1_84:
	ld.d	$a0, $s4, 88
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.bu	$a2, $a0, 32
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	pcalau12i	$a3, %got_pc_hi20(zz_lengths)
	ld.d	$a3, $a3, %got_pc_lo12(zz_lengths)
	addi.d	$a4, $a2, -11
	sltui	$a4, $a4, 2
	addi.d	$a5, $a0, 33
	add.d	$a2, $a3, $a2
	masknez	$a2, $a2, $a4
	maskeqz	$a3, $a5, $a4
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(zz_free)
	ld.d	$a3, $a3, %got_pc_lo12(zz_free)
	pcalau12i	$a4, %got_pc_hi20(zz_size)
	ld.d	$a4, $a4, %got_pc_lo12(zz_size)
	slli.d	$a5, $a2, 3
	ldx.d	$a5, $a3, $a5
	st.d	$a0, $a1, 0
	st.w	$a2, $a4, 0
	st.d	$a5, $a0, 0
	ld.w	$a0, $a4, 0
	ld.d	$a1, $a1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a3, $a0
	move	$s0, $s2
	b	.LBB1_474
.LBB1_85:
	ld.bu	$a0, $s4, 68
	andi	$a0, $a0, 12
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB1_571
# %bb.86:                               # %.preheader1794
	ld.d	$s6, $s4, 8
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	beq	$s6, $s4, .LBB1_221
# %bb.87:                               # %.preheader1792.preheader
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	ori	$a4, $zero, 17
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$a5, $a0, %got_pc_lo12(xx_link)
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	move	$s0, $s4
	ld.d	$s4, $a0, %got_pc_lo12(xx_tmp)
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$s5, $a0, %got_pc_lo12(zz_hold)
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$s7, $a0, %got_pc_lo12(zz_size)
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$s8, $a0, %got_pc_lo12(zz_free)
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$s2, $a0, %got_pc_lo12(zz_res)
	pcalau12i	$a0, %got_pc_hi20(zz_tmp)
	ld.d	$s3, $a0, %got_pc_lo12(zz_tmp)
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	b	.LBB1_90
.LBB1_88:                               #   in Loop: Header=BB1_90 Depth=1
	ld.d	$s0, $s0, 0
.LBB1_89:                               # %.loopexit1793
                                        #   in Loop: Header=BB1_90 Depth=1
	ld.d	$s0, $s0, 8
	ld.d	$s6, $s0, 8
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB1_220
.LBB1_90:                               # %.preheader1792
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_91 Depth 2
	move	$fp, $s6
	.p2align	4, , 16
.LBB1_91:                               #   Parent Loop BB1_90 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $fp, 16
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB1_91
# %bb.92:                               #   in Loop: Header=BB1_90 Depth=1
	bne	$a0, $a4, .LBB1_89
# %bb.93:                               #   in Loop: Header=BB1_90 Depth=1
	ld.d	$s1, $fp, 8
	beq	$s1, $fp, .LBB1_98
# %bb.94:                               #   in Loop: Header=BB1_90 Depth=1
	ld.bu	$a0, $s1, 32
	beqz	$a0, .LBB1_96
# %bb.95:                               #   in Loop: Header=BB1_90 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	ori	$a4, $zero, 17
.LBB1_96:                               #   in Loop: Header=BB1_90 Depth=1
	st.d	$s1, $s2, 0
	st.d	$fp, $s5, 0
	ld.d	$a0, $fp, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $s1, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s5, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s2, 0
	st.d	$a0, $a3, 8
	st.d	$s1, $s2, 0
	st.d	$s6, $s5, 0
	beqz	$s6, .LBB1_98
# %bb.97:                               #   in Loop: Header=BB1_90 Depth=1
	ld.d	$a0, $s6, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $s1, 0
	st.d	$a0, $s6, 0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s5, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s2, 0
	st.d	$a0, $a3, 8
.LBB1_98:                               #   in Loop: Header=BB1_90 Depth=1
	ld.d	$a0, $fp, 24
	ld.d	$a1, $a0, 24
	st.d	$a0, $a5, 0
	beq	$a1, $a0, .LBB1_103
# %bb.99:                               #   in Loop: Header=BB1_90 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s2, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	ld.d	$a2, $a0, 8
	st.d	$a1, $s4, 0
	st.d	$a0, $s5, 0
	beq	$a2, $a0, .LBB1_101
.LBB1_100:                              #   in Loop: Header=BB1_90 Depth=1
	st.d	$a2, $s2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $a5, 0
	st.d	$a1, $a1, 8
.LBB1_101:                              #   in Loop: Header=BB1_90 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	add.d	$a1, $a6, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s8, $a2
	st.d	$a0, $s5, 0
	st.w	$a1, $s7, 0
	st.d	$a2, $a0, 0
	ld.w	$a1, $s7, 0
	ld.d	$a2, $s5, 0
	ld.d	$a0, $s4, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s8, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB1_88
# %bb.102:                              #   in Loop: Header=BB1_90 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	ori	$a4, $zero, 17
	b	.LBB1_88
.LBB1_103:                              #   in Loop: Header=BB1_90 Depth=1
	move	$a1, $zero
	ld.d	$a2, $a0, 8
	st.d	$a1, $s4, 0
	st.d	$a0, $s5, 0
	bne	$a2, $a0, .LBB1_100
	b	.LBB1_101
.LBB1_104:
	ori	$a0, $zero, 1
	beq	$s0, $a0, .LBB1_106
# %bb.105:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	move	$fp, $a2
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a5, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a2, $fp
.LBB1_106:
	ld.bu	$a0, $s4, 41
	bnez	$a0, .LBB1_474
# %bb.107:
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	ld.d	$fp, $s4, 8
	bne	$fp, $s4, .LBB1_109
# %bb.108:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a5, $a0, %pc_lo12(.L.str.28)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s4, 8
.LBB1_109:
	move	$s8, $s0
	beq	$fp, $s4, .LBB1_398
# %bb.110:                              # %.preheader1772.preheader
	move	$s1, $zero
	move	$s0, $zero
	ori	$s5, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s6, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$s3, $a0, %pc_lo12(.L.str.29)
	ori	$s7, $zero, 4
	b	.LBB1_112
.LBB1_111:                              #   in Loop: Header=BB1_112 Depth=1
	ld.d	$fp, $fp, 8
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	beq	$fp, $s4, .LBB1_399
.LBB1_112:                              # %.preheader1772
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_113 Depth 2
	move	$s4, $fp
	.p2align	4, , 16
.LBB1_113:                              #   Parent Loop BB1_112 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s4, $s4, 16
	ld.bu	$a0, $s4, 32
	beqz	$a0, .LBB1_113
# %bb.114:                              #   in Loop: Header=BB1_112 Depth=1
	bne	$a0, $s5, .LBB1_116
# %bb.115:                              #   in Loop: Header=BB1_112 Depth=1
	ld.d	$a4, $s6, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s2
	move	$a3, $zero
	move	$a5, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 32
	addi.d	$a0, $a0, -43
	bltu	$a0, $s7, .LBB1_111
	b	.LBB1_117
.LBB1_116:                              # %.loopexit1773
                                        #   in Loop: Header=BB1_112 Depth=1
	addi.d	$a0, $a0, -43
	bltu	$a0, $s7, .LBB1_111
.LBB1_117:                              #   in Loop: Header=BB1_112 Depth=1
	move	$a0, $s4
	move	$a1, $s8
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s8, $a0, 2
	ld.w	$a1, $a0, 48
	slt	$a2, $a1, $s1
	ld.w	$a0, $a0, 56
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s1, $a2
	or	$s1, $a2, $a1
	slt	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s0, $a1, $a0
	b	.LBB1_111
.LBB1_118:
	ori	$a0, $zero, 1
	bne	$s0, $a0, .LBB1_149
# %bb.119:
	move	$s5, $a2
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s4, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s4, 5
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$fp, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s1, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a0, 3
	ldx.d	$s2, $fp, $a1
	st.w	$a0, $s1, 0
	beqz	$s2, .LBB1_322
# %bb.120:
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s2, $a1, 0
	ld.d	$a1, $s2, 0
	alsl.d	$a0, $a0, $fp, 3
	st.d	$a1, $a0, 0
	b	.LBB1_323
.LBB1_121:
	sltui	$a0, $s0, 1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s4, $a0
	.p2align	4, , 16
.LBB1_122:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_122
.LBB1_123:
	move	$a1, $s0
.LBB1_124:
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
.LBB1_125:
	alsl.d	$a0, $s0, $a0, 2
.LBB1_126:                              # %.thread1745
	ld.w	$a1, $a0, 48
	alsl.d	$a2, $s0, $s4, 2
	st.w	$a1, $a2, 48
.LBB1_127:                              # %.thread1745
	ld.w	$a0, $a0, 56
	st.w	$a0, $a2, 56
	b	.LBB1_474
.LBB1_128:
	beqz	$s0, .LBB1_130
# %bb.129:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	move	$fp, $a2
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a5, $a0, %pc_lo12(.L.str.24)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a2, $fp
.LBB1_130:
	ld.bu	$a0, $s4, 41
	bnez	$a0, .LBB1_474
# %bb.131:
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$s0, $s4, 8
	bne	$s0, $s4, .LBB1_133
# %bb.132:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	move	$fp, $a2
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a5, $a0, %pc_lo12(.L.str.25)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a2, $fp
	ld.d	$s0, $s4, 8
.LBB1_133:
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	beq	$s0, $s4, .LBB1_409
# %bb.134:                              # %.preheader1776.preheader
	move	$s1, $zero
	move	$fp, $zero
	ori	$s5, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s6, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$s3, $a0, %pc_lo12(.L.str.26)
	ori	$s7, $zero, 46
	ori	$s8, $zero, 0
	lu32i.d	$s8, 29696
	b	.LBB1_137
.LBB1_135:                              #   in Loop: Header=BB1_137 Depth=1
	move	$a0, $s4
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	move	$a1, $s4
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s4, $a0, 2
	ld.w	$a1, $a0, 48
	slt	$a2, $a1, $s1
	ld.w	$a0, $a0, 56
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s1, $a2
	or	$s1, $a2, $a1
	slt	$a1, $a0, $fp
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$fp, $a1, $a0
.LBB1_136:                              #   in Loop: Header=BB1_137 Depth=1
	ld.d	$s0, $s0, 8
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	beq	$s0, $s4, .LBB1_410
.LBB1_137:                              # %.preheader1776
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_138 Depth 2
	move	$s4, $s0
	.p2align	4, , 16
.LBB1_138:                              #   Parent Loop BB1_137 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s4, $s4, 16
	ld.bu	$a0, $s4, 32
	beqz	$a0, .LBB1_138
# %bb.139:                              #   in Loop: Header=BB1_137 Depth=1
	bne	$a0, $s5, .LBB1_141
# %bb.140:                              #   in Loop: Header=BB1_137 Depth=1
	ld.d	$a4, $s6, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s2
	move	$a3, $zero
	move	$a5, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 32
.LBB1_141:                              # %.loopexit1777
                                        #   in Loop: Header=BB1_137 Depth=1
	bltu	$s7, $a0, .LBB1_135
# %bb.142:                              # %.loopexit1777
                                        #   in Loop: Header=BB1_137 Depth=1
	sll.d	$a0, $s5, $a0
	and	$a0, $a0, $s8
	bnez	$a0, .LBB1_136
	b	.LBB1_135
.LBB1_143:
	ld.d	$a0, $s4, 80
	ld.hu	$a0, $a0, 41
	andi	$a0, $a0, 64
	beqz	$a0, .LBB1_145
# %bb.144:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	move	$fp, $a2
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a5, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a2, $fp
.LBB1_145:
	ori	$a0, $zero, 1
	bne	$s0, $a0, .LBB1_149
# %bb.146:
	ld.d	$a0, $s4, 80
	ld.hu	$a0, $a0, 41
	andi	$a1, $a0, 512
	bnez	$a1, .LBB1_306
# %bb.147:
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_421
# %bb.148:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a5, $a0, %pc_lo12(.L.str.7)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB1_472
.LBB1_149:
	ld.hu	$a0, $s4, 42
	lu12i.w	$a1, 15
	ori	$a1, $a1, 4071
	and	$a0, $a0, $a1
	st.h	$a0, $s4, 42
	b	.LBB1_472
.LBB1_150:
	ld.d	$a0, $s4, 8
	.p2align	4, , 16
.LBB1_151:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_151
# %bb.152:
	move	$a1, $s0
	move	$fp, $a2
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	.p2align	4, , 16
.LBB1_153:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_153
# %bb.154:
	move	$a1, $s0
	move	$a2, $fp
	b	.LBB1_124
.LBB1_155:
	ori	$a0, $zero, 1
	bne	$s0, $a0, .LBB1_472
# %bb.156:
	move	$s8, $a2
	move	$s7, $s0
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s0, 135
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$fp, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s1, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a0, 3
	ldx.d	$s2, $fp, $a1
	st.w	$a0, $s1, 0
	beqz	$s2, .LBB1_331
# %bb.157:
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s2, $a1, 0
	ld.d	$a1, $s2, 0
	alsl.d	$a0, $a0, $fp, 3
	st.d	$a1, $a0, 0
	ori	$a0, $zero, 135
	b	.LBB1_194
.LBB1_158:
	ld.d	$a0, $s4, 8
	.p2align	4, , 16
.LBB1_159:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_159
# %bb.160:
	move	$a1, $s0
	move	$s5, $a2
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB1_217
# %bb.161:
	addi.d	$a1, $a0, 48
	slli.d	$a2, $s0, 2
	ldx.w	$a1, $a1, $a2
	ld.w	$a2, $s4, 72
	mul.w	$a1, $a2, $a1
	bstrpick.d	$a2, $a1, 62, 56
	add.w	$a1, $a1, $a2
	srli.d	$a1, $a1, 7
	alsl.d	$a2, $s0, $s4, 2
	st.w	$a1, $a2, 48
	alsl.d	$a0, $s0, $a0, 2
	ld.w	$a0, $a0, 56
	ld.w	$a1, $s4, 72
	mul.w	$a0, $a1, $a0
	bstrpick.d	$a1, $a0, 62, 56
	add.w	$a0, $a0, $a1
	srli.d	$a0, $a0, 7
	st.w	$a0, $a2, 56
	ld.h	$a0, $s4, 42
	ori	$a0, $a0, 1
	st.h	$a0, $s4, 42
	b	.LBB1_474
.LBB1_162:
	ld.d	$a0, $s4, 8
	.p2align	4, , 16
.LBB1_163:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_163
# %bb.164:
	move	$a1, $s0
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB1_125
# %bb.165:
	addi.d	$s1, $s4, 64
	move	$a1, $s1
	pcaddu18i	$ra, %call36(BreakObject)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.w	$a0, $a0, 48
	ld.w	$a1, $s4, 64
	blt	$a1, $a0, .LBB1_168
# %bb.166:
	ld.w	$a1, $s2, 56
	ld.w	$a2, $s4, 68
	add.w	$a3, $a1, $a0
	blt	$a2, $a3, .LBB1_168
# %bb.167:
	ld.w	$a2, $s4, 72
	bge	$a2, $a1, .LBB1_169
.LBB1_168:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a5, $a0, %pc_lo12(.L.str.13)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 48
.LBB1_169:
	st.w	$a0, $s4, 48
	ld.w	$a2, $s2, 56
	addi.d	$a0, $s4, 48
	addi.d	$a1, $s4, 56
	st.w	$a2, $s4, 56
	move	$a2, $s1
	pcaddu18i	$ra, %call36(EnlargeToConstraint)
	jirl	$ra, $ra, 0
	b	.LBB1_474
.LBB1_170:
	ld.d	$a0, $s4, 8
	.p2align	4, , 16
.LBB1_171:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_171
# %bb.172:
	move	$a1, $s0
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s1, $a0
	bne	$s0, $a1, .LBB1_175
# %bb.173:
	ld.w	$a1, $s1, 52
	ld.w	$a0, $s4, 64
	addi.d	$s3, $s4, 64
	bge	$a0, $a1, .LBB1_308
# %bb.174:                              # %._crit_edge2055
	ld.w	$a0, $s4, 68
	b	.LBB1_310
.LBB1_175:
	alsl.d	$a0, $s0, $s1, 2
	b	.LBB1_126
.LBB1_176:                              # %select.unfold
	addi.d	$a0, $a1, -1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI1_1)
	addi.d	$a1, $a1, %pc_lo12(.LJTI1_1)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB1_177:
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$a0, $s4, 32
	addi.d	$a0, $a0, -94
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.37)
	addi.d	$a1, $a1, %pc_lo12(.L.str.37)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.36)
	ld.d	$a3, $sp, 656
	addi.d	$a2, $a2, %pc_lo12(.L.str.36)
	maskeqz	$a0, $a2, $a0
	or	$a5, $a0, $a1
	addi.d	$a6, $a3, 64
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a2, $a0, %pc_lo12(.L.str.35)
	ori	$a0, $zero, 12
	ori	$a1, $zero, 5
	ori	$a3, $zero, 2
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	st.b	$zero, $s4, 41
	vrepli.b	$vr0, 0
	vst	$vr0, $s4, 48
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	b	.LBB1_321
.LBB1_178:
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a2, $a0, %pc_lo12(.L.str.50)
	ori	$a0, $zero, 12
	ori	$a1, $zero, 10
	b	.LBB1_297
.LBB1_179:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB1_285
# %bb.180:
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a1, $a2, 0
	b	.LBB1_286
.LBB1_181:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s2, $a0
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 137
	b	.LBB1_184
.LBB1_182:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s2, $a0
	st.d	$a0, $a1, 0
.LBB1_183:
	ori	$a0, $zero, 138
.LBB1_184:
	st.b	$a0, $s2, 32
	st.d	$s2, $s2, 24
	st.d	$s2, $s2, 0
	ld.bu	$a2, $s0, 0
	st.d	$s2, $s2, 16
	st.d	$s2, $s2, 8
	st.d	$s4, $s2, 80
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $fp, $a0
	st.w	$a2, $s1, 0
	beqz	$a0, .LBB1_186
# %bb.185:
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $fp, 3
	st.d	$a1, $a2, 0
	b	.LBB1_187
.LBB1_186:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB1_187:
	move	$s0, $s3
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	st.d	$a0, $a1, 0
	ld.d	$a4, $s5, 0
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a4, $a3, 0
	beqz	$a4, .LBB1_190
# %bb.188:
	ld.d	$a5, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $a1, 0
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a6, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a0, $a6, 8
	st.d	$a2, $a1, 0
	st.d	$s2, $a3, 0
	beqz	$a2, .LBB1_474
# %bb.189:                              # %._crit_edge2069
	ld.d	$a0, $a2, 16
	b	.LBB1_191
.LBB1_190:                              # %.thread1740
	st.d	$a0, $a1, 0
	st.d	$s2, $a3, 0
	move	$a2, $a0
.LBB1_191:
	ld.d	$a1, $s2, 16
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	st.d	$a0, $s2, 16
	ld.d	$a0, $a2, 16
	st.d	$a1, $a3, 0
	st.d	$s2, $a0, 24
	st.d	$a1, $a2, 16
	st.d	$a2, $a1, 24
	b	.LBB1_474
.LBB1_192:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s2, $a0
	st.d	$a0, $a1, 0
.LBB1_193:
	ld.b	$a0, $s4, 41
.LBB1_194:
	st.b	$a0, $s2, 32
	st.d	$s2, $s2, 24
	st.d	$s2, $s2, 0
	ld.bu	$a2, $s0, 0
	st.d	$s2, $s2, 16
	st.d	$s2, $s2, 8
	st.d	$s4, $s2, 80
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $fp, $a0
	st.w	$a2, $s1, 0
	beqz	$a0, .LBB1_196
# %bb.195:
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $fp, 3
	st.d	$a1, $a2, 0
	b	.LBB1_197
.LBB1_196:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_197:
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s5, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s4, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s6, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a0, 0
	st.d	$a0, $s5, 0
	st.d	$a0, $s4, 0
	st.d	$s2, $s6, 0
	ld.d	$a1, $s2, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$s3, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $s3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s4, 0
	ld.d	$a0, $s5, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s4, 0
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	st.d	$a3, $s6, 0
	beqz	$a0, .LBB1_199
# %bb.198:
	ld.d	$a1, $a3, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s3, 0
	st.d	$a2, $a3, 16
	st.d	$a3, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB1_199:
	ld.bu	$a2, $s0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $fp, $a0
	st.w	$a2, $s1, 0
	beqz	$a0, .LBB1_201
# %bb.200:
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $fp, 3
	st.d	$a1, $a2, 0
	b	.LBB1_202
.LBB1_201:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, 0
.LBB1_202:
	move	$s0, $s7
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s5, 0
	st.d	$a0, $s4, 0
	ld.d	$a1, $s8, 0
	st.d	$a1, $s6, 0
	beqz	$a1, .LBB1_205
# %bb.203:
	ld.d	$a2, $a1, 0
	st.d	$a2, $s3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s5, 0
	st.d	$a0, $a3, 8
	st.d	$a1, $s4, 0
	st.d	$s2, $s6, 0
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	beqz	$a1, .LBB1_472
# %bb.204:                              # %._crit_edge2103
	ld.d	$a0, $a1, 16
	b	.LBB1_206
.LBB1_205:                              # %.thread
	st.d	$a0, $s4, 0
	st.d	$s2, $s6, 0
	move	$a1, $a0
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
.LBB1_206:
	ld.d	$a2, $s2, 16
	st.d	$a0, $s2, 16
	ld.d	$a0, $a1, 16
	st.d	$a2, $s3, 0
	st.d	$s2, $a0, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	b	.LBB1_472
.LBB1_207:
	ld.w	$a1, $a0, 48
	st.w	$a1, $s4, 48
	ld.w	$fp, $a0, 56
	ld.d	$a0, $s4, 8
	st.w	$fp, $s4, 56
	.p2align	4, , 16
.LBB1_208:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a2, $a0, 32
	beqz	$a2, .LBB1_208
# %bb.209:                              # %.preheader1785.preheader
	ori	$a1, $zero, 17
.LBB1_210:                              # %.preheader1785
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_212 Depth 2
	bne	$a2, $a1, .LBB1_213
# %bb.211:                              #   in Loop: Header=BB1_210 Depth=1
	ld.d	$a0, $a0, 8
	.p2align	4, , 16
.LBB1_212:                              #   Parent Loop BB1_210 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a2, $a0, 32
	beqz	$a2, .LBB1_212
	b	.LBB1_210
.LBB1_213:                              # %.preheader1785
	addi.d	$a1, $a2, -11
	move	$s3, $s0
	ori	$a2, $zero, 2
	bgeu	$a1, $a2, .LBB1_423
# %bb.214:
	ld.bu	$s1, $a0, 64
	b	.LBB1_424
.LBB1_215:
	move	$a1, $zero
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_lengths)
	ld.d	$a1, $a1, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a1, 17
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$a3, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$a4, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	st.w	$a2, $a4, 0
	beqz	$a1, .LBB1_396
# %bb.216:
	pcalau12i	$a4, %got_pc_hi20(zz_hold)
	ld.d	$a4, $a4, %got_pc_lo12(zz_hold)
	st.d	$a1, $a4, 0
	ld.d	$a4, $a1, 0
	alsl.d	$a2, $a2, $a3, 3
	st.d	$a4, $a2, 0
	b	.LBB1_397
.LBB1_217:
	ld.w	$a1, $a0, 48
	ld.w	$a2, $s4, 64
	mul.w	$a1, $a2, $a1
	bstrpick.d	$a3, $a1, 62, 56
	add.w	$a1, $a1, $a3
	srli.d	$a1, $a1, 7
	st.w	$a1, $s4, 48
	ld.w	$a0, $a0, 56
	mul.w	$a0, $a0, $a2
	bstrpick.d	$a1, $a0, 62, 56
	add.w	$a0, $a0, $a1
	srli.d	$a0, $a0, 7
	st.w	$a0, $s4, 56
	bnez	$a2, .LBB1_474
# %bb.218:
	move	$s3, $s0
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s0, 136
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$fp, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s1, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a0, 3
	ldx.d	$s2, $fp, $a1
	st.w	$a0, $s1, 0
	beqz	$s2, .LBB1_479
# %bb.219:
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s2, $a1, 0
	ld.d	$a1, $s2, 0
	alsl.d	$a0, $a0, $fp, 3
	st.d	$a1, $a0, 0
	b	.LBB1_480
.LBB1_220:                              # %._crit_edge.loopexit
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $s4, 8
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
.LBB1_221:                              # %._crit_edge
	beq	$s6, $s4, .LBB1_571
# %bb.222:                              # %.preheader1791.preheader
	ori	$fp, $zero, 1
	ori	$s0, $zero, 9
	ori	$s1, $zero, 91
	move	$s8, $a2
	b	.LBB1_225
.LBB1_223:                              #   in Loop: Header=BB1_225 Depth=1
	addi.d	$a0, $a1, -9
	bltu	$a0, $s1, .LBB1_230
.LBB1_224:                              # %.critedge
                                        #   in Loop: Header=BB1_225 Depth=1
	ld.d	$s6, $s6, 8
	beq	$s6, $s4, .LBB1_561
.LBB1_225:                              # %.preheader1791
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_226 Depth 2
	move	$a0, $s6
	.p2align	4, , 16
.LBB1_226:                              #   Parent Loop BB1_225 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_226
# %bb.227:                              #   in Loop: Header=BB1_225 Depth=1
	beq	$a1, $fp, .LBB1_224
# %bb.228:                              #   in Loop: Header=BB1_225 Depth=1
	bne	$a1, $s0, .LBB1_223
# %bb.229:                              #   in Loop: Header=BB1_225 Depth=1
	pcaddu18i	$ra, %call36(SplitIsDefinite)
	jirl	$ra, $ra, 0
	move	$a2, $s8
	beqz	$a0, .LBB1_224
.LBB1_230:
	ld.d	$s6, $s6, 8
	beq	$s6, $s4, .LBB1_493
# %bb.231:                              # %.preheader1789.preheader
	move	$s3, $zero
	ori	$fp, $zero, 1
	ori	$s0, $zero, 9
	ori	$s1, $zero, 90
	ori	$s2, $zero, 1
	b	.LBB1_235
.LBB1_232:                              #   in Loop: Header=BB1_235 Depth=1
	pcaddu18i	$ra, %call36(SplitIsDefinite)
	jirl	$ra, $ra, 0
	move	$a2, $s8
	bnez	$a0, .LBB1_490
.LBB1_233:                              #   in Loop: Header=BB1_235 Depth=1
	move	$a0, $s3
.LBB1_234:                              # %.critedge16
                                        #   in Loop: Header=BB1_235 Depth=1
	ld.d	$s6, $s6, 8
	move	$s3, $a0
	beq	$s6, $s4, .LBB1_494
.LBB1_235:                              # %.preheader1789
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_236 Depth 2
	move	$a0, $s6
	.p2align	4, , 16
.LBB1_236:                              #   Parent Loop BB1_235 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_236
# %bb.237:                              #   in Loop: Header=BB1_235 Depth=1
	beq	$a1, $s0, .LBB1_232
# %bb.238:                              #   in Loop: Header=BB1_235 Depth=1
	bne	$a1, $fp, .LBB1_241
# %bb.239:                              #   in Loop: Header=BB1_235 Depth=1
	beqz	$s2, .LBB1_242
# %bb.240:                              #   in Loop: Header=BB1_235 Depth=1
	ld.hu	$a1, $a0, 44
	bstrpick.d	$s2, $a1, 9, 9
	b	.LBB1_234
.LBB1_241:                              #   in Loop: Header=BB1_235 Depth=1
	addi.d	$a0, $a1, -9
	bltu	$s1, $a0, .LBB1_233
	b	.LBB1_490
.LBB1_242:                              #   in Loop: Header=BB1_235 Depth=1
	move	$s2, $zero
	b	.LBB1_234
.LBB1_243:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$a0, $s6, 0
.LBB1_244:
	ori	$a0, $zero, 13
	st.b	$a0, $s3, 32
	st.d	$s3, $s3, 24
	st.d	$s3, $s3, 16
	st.d	$s3, $s3, 8
	st.d	$s3, $s3, 0
	ld.h	$a0, $s4, 34
	st.h	$a0, $s3, 34
	ld.wu	$a0, $s4, 36
	ld.wu	$a1, $s3, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $s3, 36
	ld.wu	$a1, $s4, 36
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s3, 36
	ld.wu	$a0, $s3, 40
	lu12i.w	$a1, -1025
	ori	$a1, $a1, 4095
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a2, $a2, 0
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	st.w	$a0, $s3, 40
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB1_246
# %bb.245:
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a1, $a2, 0
	b	.LBB1_247
.LBB1_246:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_247:
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$fp, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$a0, $fp, 0
	st.d	$s4, $s6, 0
	ld.d	$a1, $s4, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$s7, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s7, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $fp, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $fp, 0
	st.d	$s3, $s6, 0
	beqz	$a0, .LBB1_249
# %bb.248:
	ld.d	$a1, $s3, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s7, 0
	st.d	$a2, $s3, 16
	st.d	$s3, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB1_249:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB1_251
# %bb.250:
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a1, $a2, 0
	b	.LBB1_252
.LBB1_251:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_252:
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$a0, $fp, 0
	st.d	$s3, $s6, 0
	ld.d	$a1, $s3, 0
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s7, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $fp, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $fp, 0
	st.d	$s5, $s6, 0
	beqz	$a0, .LBB1_254
# %bb.253:
	ld.d	$a1, $s5, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s7, 0
	st.d	$a2, $s5, 16
	st.d	$s5, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB1_254:
	ld.d	$s0, $s4, 16
	.p2align	4, , 16
.LBB1_255:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 0
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB1_255
# %bb.256:
	ori	$s2, $zero, 15
	beq	$a0, $s2, .LBB1_259
# %bb.257:
	ld.bu	$a0, $s8, 0
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a2, $a0, %pc_lo12(.L.str.51)
	ori	$a0, $zero, 12
	ori	$a1, $zero, 11
	ori	$a3, $zero, 1
	move	$a4, $s8
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 32
	beq	$a0, $s2, .LBB1_259
# %bb.258:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a5, $a0, %pc_lo12(.L.str.52)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_259:                              # %.thread.i
	ld.wu	$a0, $s3, 40
	lu12i.w	$a1, -130048
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	st.w	$a0, $s3, 40
	ld.d	$a0, $s4, 16
	ld.d	$s8, $a0, 8
	beq	$s8, $s0, .LBB1_268
# %bb.260:                              # %.preheader243.i.preheader
	ori	$a0, $zero, 3
	ori	$a1, $zero, 46
	ori	$a2, $zero, 45
	move	$a3, $s8
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
.LBB1_261:                              # %.preheader243.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_262 Depth 2
	move	$a5, $a3
.LBB1_262:                              #   Parent Loop BB1_261 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a5, 16
	ld.bu	$a4, $a5, 32
	beqz	$a4, .LBB1_262
# %bb.263:                              #   in Loop: Header=BB1_261 Depth=1
	addi.d	$a5, $a4, -42
	bltu	$a5, $a0, .LBB1_269
# %bb.264:                              #   in Loop: Header=BB1_261 Depth=1
	beq	$a4, $a1, .LBB1_269
# %bb.265:                              #   in Loop: Header=BB1_261 Depth=1
	bne	$a4, $a2, .LBB1_267
# %bb.266:                              #   in Loop: Header=BB1_261 Depth=1
	ld.d	$a3, $a3, 8
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	bne	$a3, $s0, .LBB1_261
	b	.LBB1_269
.LBB1_267:                              # %.loopexit244.loopexit.i
                                        #   in Loop: Header=BB1_261 Depth=1
	ld.d	$a3, $a3, 8
	bne	$a3, $s0, .LBB1_261
	b	.LBB1_269
.LBB1_268:
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
.LBB1_269:                              # %.loopexit245.i
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beq	$s8, $a0, .LBB1_288
# %bb.270:                              # %.preheader241.i.preheader
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$s2, $a0, %got_pc_lo12(xx_tmp)
	b	.LBB1_272
	.p2align	4, , 16
.LBB1_271:                              #   in Loop: Header=BB1_272 Depth=1
	ld.wu	$a0, $s3, 40
	addi.d	$a1, $a0, 1
	srli.d	$a0, $a0, 12
	bstrins.d	$a1, $a0, 63, 12
	st.w	$a1, $s3, 40
	ld.d	$s8, $s8, 8
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beq	$s8, $a0, .LBB1_288
.LBB1_272:                              # %.preheader241.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_273 Depth 2
	move	$a0, $s8
	.p2align	4, , 16
.LBB1_273:                              #   Parent Loop BB1_272 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_273
# %bb.274:                              #   in Loop: Header=BB1_272 Depth=1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a2, $a1, 45
	slli.d	$a1, $a2, 3
	ldx.d	$s4, $s1, $a1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$s4, .LBB1_276
# %bb.275:                              #   in Loop: Header=BB1_272 Depth=1
	st.d	$s4, $s6, 0
	ld.d	$a1, $s4, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a1, $a2, 0
	b	.LBB1_277
.LBB1_276:                              #   in Loop: Header=BB1_272 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	move	$s0, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s0
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
.LBB1_277:                              #   in Loop: Header=BB1_272 Depth=1
	ori	$a1, $zero, 45
	st.b	$a1, $s4, 32
	st.d	$s4, $s4, 24
	st.d	$s4, $s4, 16
	st.d	$s4, $s4, 8
	st.d	$s4, $s4, 0
	ld.h	$a1, $a0, 34
	st.h	$a1, $s4, 34
	ld.wu	$a1, $a0, 36
	ld.wu	$a2, $s4, 36
	srli.d	$a2, $a2, 20
	move	$a3, $a1
	bstrins.d	$a3, $a2, 63, 20
	st.w	$a3, $s4, 36
	ld.wu	$a2, $a0, 36
	srli.d	$a2, $a2, 20
	bstrins.d	$a1, $a2, 63, 20
	st.w	$a1, $s4, 36
	ld.d	$a1, $a0, 24
	beq	$a1, $a0, .LBB1_279
# %bb.278:                              #   in Loop: Header=BB1_272 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	ld.d	$a2, $a1, 16
	ld.d	$a3, $s4, 16
	st.d	$a2, $s7, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a2, $s4, 16
	st.d	$s4, $a2, 24
	b	.LBB1_280
.LBB1_279:                              #   in Loop: Header=BB1_272 Depth=1
	move	$a1, $zero
.LBB1_280:                              # %.thread234.i
                                        #   in Loop: Header=BB1_272 Depth=1
	st.d	$a1, $s2, 0
	st.d	$s4, $fp, 0
	st.d	$a1, $s6, 0
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB1_282
# %bb.281:                              #   in Loop: Header=BB1_272 Depth=1
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a1, $a2, 0
	b	.LBB1_283
.LBB1_282:                              #   in Loop: Header=BB1_272 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_283:                              #   in Loop: Header=BB1_272 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$a0, $fp, 0
	st.d	$s4, $s6, 0
	ld.d	$a1, $s4, 0
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s7, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $fp, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $fp, 0
	st.d	$s3, $s6, 0
	beqz	$a0, .LBB1_271
# %bb.284:                              #   in Loop: Header=BB1_272 Depth=1
	ld.d	$a1, $s3, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s7, 0
	st.d	$a2, $s3, 16
	st.d	$s3, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	b	.LBB1_271
.LBB1_285:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_286:
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a2, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a6, 0
	st.d	$a0, $a2, 0
	st.d	$s4, $s6, 0
	ld.d	$a3, $s4, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a3, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
	ld.d	$a0, $a2, 0
	ld.d	$a3, $s6, 0
	ld.d	$a4, $a0, 0
	ld.d	$a5, $a1, 0
	st.d	$a3, $a4, 8
	st.d	$a5, $a0, 0
	ld.d	$a3, $a2, 0
	ld.d	$a0, $a6, 0
	st.d	$a3, $a5, 8
	st.d	$a0, $a2, 0
	st.d	$s5, $s6, 0
	beqz	$a0, .LBB1_288
# %bb.287:
	ld.d	$a2, $s5, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $s5, 16
	st.d	$s5, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB1_288:                              # %.loopexit242.i
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	ld.bu	$a0, $s8, 0
	addi.d	$a1, $a0, -43
	ori	$a2, $zero, 1
	bltu	$a2, $a1, .LBB1_294
# %bb.289:
	ld.d	$a1, $s4, 16
	.p2align	4, , 16
.LBB1_290:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a1, 0
	ld.bu	$a2, $a1, 32
	beqz	$a2, .LBB1_290
# %bb.291:
	ori	$a1, $zero, 15
	bne	$a2, $a1, .LBB1_296
# %bb.292:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 14
	slli.d	$a1, $a0, 3
	ldx.d	$s3, $s1, $a1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	beqz	$s3, .LBB1_332
# %bb.293:
	st.d	$s3, $s6, 0
	ld.d	$a1, $s3, 0
	alsl.d	$a0, $a0, $s1, 3
	st.d	$a1, $a0, 0
	b	.LBB1_333
.LBB1_294:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB1_302
# %bb.295:
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a1, $a2, 0
	b	.LBB1_303
.LBB1_296:
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a2, $a0, %pc_lo12(.L.str.53)
	ori	$a0, $zero, 12
	ori	$a1, $zero, 12
.LBB1_297:                              # %BuildSpanner.exit
	ori	$a3, $zero, 2
	move	$a4, $s8
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 11
	move	$a2, $s8
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 24
	beq	$a1, $s4, .LBB1_300
# %bb.298:
	ld.d	$a2, $s4, 16
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	pcalau12i	$a2, %got_pc_hi20(xx_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(xx_tmp)
	pcalau12i	$a3, %got_pc_hi20(zz_res)
	ld.d	$a3, $a3, %got_pc_lo12(zz_res)
	st.d	$s4, $s4, 24
	st.d	$s4, $s4, 16
	st.d	$a1, $a2, 0
	st.d	$a0, $a3, 0
	st.d	$a1, $s6, 0
	beqz	$a0, .LBB1_301
# %bb.299:
	ld.d	$a2, $a1, 16
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	ld.d	$a4, $a0, 16
	st.d	$a2, $a3, 0
	st.d	$a4, $a1, 16
	st.d	$a1, $a4, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
	b	.LBB1_301
.LBB1_300:                              # %.thread1737
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$zero, $a1, 0
	st.d	$a0, $a2, 0
	st.d	$zero, $s6, 0
.LBB1_301:
	st.w	$zero, $a0, 56
	st.w	$zero, $a0, 48
	move	$s4, $a0
	b	.LBB1_474
.LBB1_302:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_303:
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a2, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a6, 0
	st.d	$a0, $a2, 0
	st.d	$s4, $s6, 0
	ld.d	$a3, $s4, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a3, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
	ld.d	$a0, $a2, 0
	ld.d	$a3, $s6, 0
	ld.d	$a4, $a0, 0
	ld.d	$a5, $a1, 0
	st.d	$a3, $a4, 8
	st.d	$a5, $a0, 0
	ld.d	$a3, $a2, 0
	ld.d	$a0, $a6, 0
	st.d	$a3, $a5, 8
	st.d	$a0, $a2, 0
	st.d	$s5, $s6, 0
	beqz	$s5, .LBB1_373
# %bb.304:
	beqz	$a0, .LBB1_373
# %bb.305:
	ld.d	$a2, $s5, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $s5, 16
	st.d	$s5, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
	b	.LBB1_373
.LBB1_306:
	move	$s5, $a2
	move	$s3, $s0
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s0, 121
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$fp, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s1, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a0, 3
	ldx.d	$s2, $fp, $a1
	st.w	$a0, $s1, 0
	beqz	$s2, .LBB1_462
# %bb.307:
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s2, $a1, 0
	ld.d	$a1, $s2, 0
	alsl.d	$a0, $a0, $fp, 3
	st.d	$a1, $a0, 0
	b	.LBB1_463
.LBB1_308:
	ld.w	$a2, $s1, 60
	ld.w	$a0, $s4, 68
	add.w	$a3, $a2, $a1
	blt	$a0, $a3, .LBB1_310
# %bb.309:
	ld.w	$a3, $s4, 72
	bge	$a3, $a2, .LBB1_311
.LBB1_310:
	pcaddu18i	$ra, %call36(EchoLength)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 52
	ld.w	$a2, $s1, 60
	move	$s4, $a0
	add.w	$a0, $a2, $a1
	pcaddu18i	$ra, %call36(EchoLength)
	jirl	$ra, $ra, 0
	move	$a7, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a2, $a0, %pc_lo12(.L.str.14)
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a5, $a0, %pc_lo12(.L.str.15)
	ori	$a0, $zero, 12
	ori	$a1, $zero, 1
	ori	$a3, $zero, 2
	move	$a4, $fp
	move	$a6, $s4
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2047
	ori	$a0, $a0, 4095
	st.w	$a0, $s4, 64
	ld.w	$a1, $s1, 52
	ld.w	$a2, $s1, 60
	add.d	$a1, $a2, $a1
	st.w	$a1, $s4, 68
	st.w	$a0, $s4, 72
	ld.w	$a1, $s1, 52
.LBB1_311:
	st.w	$a1, $s4, 52
	ld.w	$a2, $s1, 60
	addi.d	$a0, $s4, 52
	addi.d	$a1, $s4, 60
	st.w	$a2, $s4, 60
	move	$a2, $s3
	pcaddu18i	$ra, %call36(EnlargeToConstraint)
	jirl	$ra, $ra, 0
	b	.LBB1_474
.LBB1_312:
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$a0, $s4, 32
	addi.d	$a0, $a0, -94
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.37)
	addi.d	$a1, $a1, %pc_lo12(.L.str.37)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.36)
	ld.d	$a3, $sp, 656
	addi.d	$a2, $a2, %pc_lo12(.L.str.36)
	maskeqz	$a0, $a2, $a0
	or	$a5, $a0, $a1
	addi.d	$a6, $a3, 64
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a2, $a0, %pc_lo12(.L.str.41)
	ori	$a0, $zero, 12
	ori	$a1, $zero, 8
	b	.LBB1_318
.LBB1_313:
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $s4, 8
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
.LBB1_314:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_314
# %bb.315:
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.w	$a1, $a0, 48
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.w	$a2, $a0, 56
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	st.w	$a4, $a0, 52
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	st.w	$a5, $a0, 60
	sub.d	$a0, $a2, $a1
	ori	$a1, $zero, 20
	mul.w	$a0, $a0, $a1
	srai.d	$a2, $a0, 63
	andn	$a0, $a0, $a2
	lu12i.w	$a2, 2047
	ori	$a2, $a2, 4095
	slt	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	srli.d	$a0, $a0, 1
	st.w	$a0, $s4, 56
	st.w	$a0, $s4, 48
	sub.d	$a0, $a5, $a4
	mul.w	$a0, $a0, $a1
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slt	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	st.w	$a0, $sp, 652
	srli.d	$a0, $a0, 1
	st.w	$a0, $s4, 60
	st.w	$a0, $s4, 52
	ori	$a0, $zero, 1
	st.b	$a0, $s4, 41
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 632
	bnez	$a0, .LBB1_320
	b	.LBB1_321
.LBB1_316:
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$a0, $s4, 32
	addi.d	$a0, $a0, -94
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.37)
	addi.d	$a1, $a1, %pc_lo12(.L.str.37)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.36)
	ld.d	$a3, $sp, 656
	addi.d	$a2, $a2, %pc_lo12(.L.str.36)
	maskeqz	$a0, $a2, $a0
	or	$a5, $a0, $a1
	addi.d	$a6, $a3, 64
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a2, $a0, %pc_lo12(.L.str.40)
	ori	$a0, $zero, 12
	ori	$a1, $zero, 7
	ori	$a3, $zero, 2
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	st.b	$zero, $s4, 41
	vrepli.b	$vr0, 0
	vst	$vr0, $s4, 48
	b	.LBB1_319
.LBB1_317:
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$a0, $s4, 32
	addi.d	$a0, $a0, -94
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.37)
	addi.d	$a1, $a1, %pc_lo12(.L.str.37)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.36)
	ld.d	$a3, $sp, 656
	addi.d	$a2, $a2, %pc_lo12(.L.str.36)
	maskeqz	$a0, $a2, $a0
	or	$a5, $a0, $a1
	addi.d	$a6, $a3, 64
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a2, $a0, %pc_lo12(.L.str.38)
	ori	$a0, $zero, 12
	ori	$a1, $zero, 6
.LBB1_318:
	ori	$a3, $zero, 2
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 48
	vst	$vr0, $s4, 48
	ori	$a0, $zero, 1
	st.b	$a0, $s4, 41
.LBB1_319:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 632
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_321
.LBB1_320:
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	pcaddu18i	$ra, %call36(remove)
	jirl	$ra, $ra, 0
.LBB1_321:
	ld.d	$a0, $sp, 656
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	b	.LBB1_474
.LBB1_322:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s2, $a0
.LBB1_323:
	ori	$a0, $zero, 5
	st.b	$a0, $s2, 32
	st.d	$s2, $s2, 24
	st.d	$s2, $s2, 16
	st.d	$s2, $s2, 8
	st.d	$s2, $s2, 0
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	ld.h	$a0, $a6, 34
	st.h	$a0, $s2, 34
	ld.wu	$a0, $a6, 36
	ld.wu	$a1, $s2, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $s2, 36
	ld.wu	$a1, $a6, 36
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s2, 36
	ld.d	$a0, $a6, 24
	beq	$a0, $a6, .LBB1_325
# %bb.324:
	ld.d	$a1, $a6, 16
	st.d	$a1, $a0, 16
	pcalau12i	$a2, %got_pc_hi20(xx_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(xx_tmp)
	st.d	$a0, $a1, 24
	st.d	$a6, $a6, 24
	st.d	$a6, $a6, 16
	st.d	$a0, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	ld.d	$a3, $a0, 16
	pcalau12i	$a4, %got_pc_hi20(zz_tmp)
	ld.d	$a4, $a4, %got_pc_lo12(zz_tmp)
	ld.d	$a5, $s2, 16
	st.d	$s2, $a1, 0
	st.d	$a0, $a2, 0
	st.d	$a3, $a4, 0
	st.d	$a5, $a0, 16
	st.d	$a0, $a5, 24
	st.d	$a3, $s2, 16
	st.d	$s2, $a3, 24
	b	.LBB1_326
.LBB1_325:                              # %.thread1726
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$a0, $a0, %got_pc_lo12(xx_tmp)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$zero, $a0, 0
	st.d	$s2, $a1, 0
	st.d	$zero, $a2, 0
.LBB1_326:
	ld.d	$a0, $a6, 80
	ld.hu	$a0, $a0, 41
	lu12i.w	$a1, 4
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_329
# %bb.327:
	ld.bu	$a0, $s4, 120
	slli.d	$a1, $a0, 3
	ldx.d	$s3, $fp, $a1
	st.w	$a0, $s1, 0
	beqz	$s3, .LBB1_435
# %bb.328:
	move	$a2, $s5
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s3, $a1, 0
	ld.d	$a1, $s3, 0
	alsl.d	$a0, $a0, $fp, 3
	st.d	$a1, $a0, 0
	b	.LBB1_436
.LBB1_329:
	ld.bu	$a0, $a6, 40
	ldx.bu	$a0, $s4, $a0
	slli.d	$a1, $a0, 3
	ldx.d	$s3, $fp, $a1
	st.w	$a0, $s1, 0
	beqz	$s3, .LBB1_438
# %bb.330:
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s3, $a1, 0
	ld.d	$a1, $s3, 0
	alsl.d	$a0, $a0, $fp, 3
	st.d	$a1, $a0, 0
	b	.LBB1_439
.LBB1_331:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s2, $a0
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 135
	b	.LBB1_194
.LBB1_332:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$a0, $s6, 0
.LBB1_333:
	ori	$a0, $zero, 14
	st.b	$a0, $s3, 32
	st.d	$s3, $s3, 24
	st.d	$s3, $s3, 16
	st.d	$s3, $s3, 8
	st.d	$s3, $s3, 0
	ld.h	$a0, $s4, 34
	st.h	$a0, $s3, 34
	ld.wu	$a0, $s4, 36
	ld.wu	$a1, $s3, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $s3, 36
	ld.wu	$a1, $s4, 36
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s3, 36
	ld.wu	$a0, $s3, 40
	lu12i.w	$a1, -1025
	ori	$a1, $a1, 4095
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a2, $a2, 0
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	st.w	$a0, $s3, 40
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB1_335
# %bb.334:
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a1, $a2, 0
	b	.LBB1_336
.LBB1_335:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_336:
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$fp, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$a0, $fp, 0
	st.d	$s4, $s6, 0
	ld.d	$a1, $s4, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$s7, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s7, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $fp, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $fp, 0
	st.d	$s3, $s6, 0
	beqz	$a0, .LBB1_338
# %bb.337:
	ld.d	$a1, $s3, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s7, 0
	st.d	$a2, $s3, 16
	st.d	$s3, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB1_338:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB1_340
# %bb.339:
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a1, $a2, 0
	b	.LBB1_341
.LBB1_340:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_341:
	move	$s2, $s0
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$a0, $fp, 0
	st.d	$s3, $s6, 0
	ld.d	$a1, $s3, 0
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s7, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $fp, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $fp, 0
	st.d	$s5, $s6, 0
	beqz	$s5, .LBB1_344
# %bb.342:
	beqz	$a0, .LBB1_344
# %bb.343:
	ld.d	$a1, $s5, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s7, 0
	st.d	$a2, $s5, 16
	st.d	$s5, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB1_344:
	ld.d	$s0, $s4, 24
.LBB1_345:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 0
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB1_345
# %bb.346:
	ori	$a1, $zero, 16
	beq	$a0, $a1, .LBB1_348
# %bb.347:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a5, $a0, %pc_lo12(.L.str.52)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_348:                              # %.loopexit240.i
	ld.wu	$a0, $s3, 40
	lu12i.w	$a1, -130048
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	st.w	$a0, $s3, 40
	ld.d	$a0, $s4, 24
	ld.d	$s8, $a0, 8
	beq	$s8, $s0, .LBB1_356
# %bb.349:                              # %.preheader236.i.preheader
	ori	$a0, $zero, 4
	ori	$a1, $zero, 46
	move	$a2, $s8
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
.LBB1_350:                              # %.preheader236.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_351 Depth 2
	move	$a4, $a2
.LBB1_351:                              #   Parent Loop BB1_350 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a4, 16
	ld.bu	$a3, $a4, 32
	beqz	$a3, .LBB1_351
# %bb.352:                              #   in Loop: Header=BB1_350 Depth=1
	addi.d	$a4, $a3, -42
	bltu	$a4, $a0, .LBB1_357
# %bb.353:                              #   in Loop: Header=BB1_350 Depth=1
	bne	$a3, $a1, .LBB1_355
# %bb.354:                              #   in Loop: Header=BB1_350 Depth=1
	ld.d	$a2, $a2, 8
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	bne	$a2, $s0, .LBB1_350
	b	.LBB1_357
.LBB1_355:                              # %.loopexit237.loopexit.i
                                        #   in Loop: Header=BB1_350 Depth=1
	ld.d	$a2, $a2, 8
	bne	$a2, $s0, .LBB1_350
	b	.LBB1_357
.LBB1_356:
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
.LBB1_357:                              # %.loopexit238.i
	move	$s0, $s2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beq	$s8, $a0, .LBB1_373
# %bb.358:                              # %.preheader.i.preheader
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(xx_tmp)
	ld.d	$s2, $a0, %got_pc_lo12(xx_tmp)
	b	.LBB1_360
.LBB1_359:                              #   in Loop: Header=BB1_360 Depth=1
	ld.wu	$a0, $s3, 40
	addi.d	$a1, $a0, 1
	srli.d	$a0, $a0, 12
	bstrins.d	$a1, $a0, 63, 12
	st.w	$a1, $s3, 40
	ld.d	$s8, $s8, 8
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beq	$s8, $a0, .LBB1_373
.LBB1_360:                              # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_361 Depth 2
	move	$s5, $s8
	.p2align	4, , 16
.LBB1_361:                              #   Parent Loop BB1_360 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s5, $s5, 16
	ld.bu	$a0, $s5, 32
	beqz	$a0, .LBB1_361
# %bb.362:                              #   in Loop: Header=BB1_360 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 46
	slli.d	$a1, $a0, 3
	ldx.d	$s4, $s1, $a1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	beqz	$s4, .LBB1_364
# %bb.363:                              #   in Loop: Header=BB1_360 Depth=1
	st.d	$s4, $s6, 0
	ld.d	$a1, $s4, 0
	alsl.d	$a0, $a0, $s1, 3
	st.d	$a1, $a0, 0
	b	.LBB1_365
.LBB1_364:                              #   in Loop: Header=BB1_360 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s4, $a0
.LBB1_365:                              #   in Loop: Header=BB1_360 Depth=1
	ori	$a0, $zero, 46
	st.b	$a0, $s4, 32
	st.d	$s4, $s4, 24
	st.d	$s4, $s4, 16
	st.d	$s4, $s4, 8
	st.d	$s4, $s4, 0
	ld.h	$a0, $s5, 34
	st.h	$a0, $s4, 34
	ld.wu	$a0, $s5, 36
	ld.wu	$a1, $s4, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $s4, 36
	ld.wu	$a1, $s5, 36
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s4, 36
	ld.d	$a0, $s5, 24
	beq	$a0, $s5, .LBB1_367
# %bb.366:                              #   in Loop: Header=BB1_360 Depth=1
	ld.d	$a1, $s5, 16
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	st.d	$s5, $s5, 24
	st.d	$s5, $s5, 16
	ld.d	$a1, $a0, 16
	ld.d	$a2, $s4, 16
	st.d	$a1, $s7, 0
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
	st.d	$a1, $s4, 16
	st.d	$s4, $a1, 24
	b	.LBB1_368
.LBB1_367:                              #   in Loop: Header=BB1_360 Depth=1
	move	$a0, $zero
.LBB1_368:                              # %.thread235.i
                                        #   in Loop: Header=BB1_360 Depth=1
	st.d	$a0, $s2, 0
	st.d	$s4, $fp, 0
	st.d	$a0, $s6, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB1_370
# %bb.369:                              #   in Loop: Header=BB1_360 Depth=1
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a1, $a2, 0
	b	.LBB1_371
.LBB1_370:                              #   in Loop: Header=BB1_360 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_371:                              #   in Loop: Header=BB1_360 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$a0, $fp, 0
	st.d	$s4, $s6, 0
	ld.d	$a1, $s4, 0
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s7, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $fp, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $fp, 0
	st.d	$s3, $s6, 0
	beqz	$a0, .LBB1_359
# %bb.372:                              #   in Loop: Header=BB1_360 Depth=1
	ld.d	$a1, $s3, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s7, 0
	st.d	$a2, $s3, 16
	st.d	$s3, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	b	.LBB1_359
.LBB1_373:                              # %BuildSpanner.exit.thread
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.bu	$a0, $fp, 0
	ori	$a1, $zero, 44
	bne	$a0, $a1, .LBB1_375
# %bb.374:
	ori	$a0, $zero, 1
	beq	$s0, $a0, .LBB1_377
	b	.LBB1_382
.LBB1_375:
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB1_382
# %bb.376:
	ori	$a1, $zero, 42
	bne	$a0, $a1, .LBB1_382
.LBB1_377:
	ld.d	$s3, $s4, 8
	.p2align	4, , 16
.LBB1_378:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $s3, 16
	ld.bu	$a0, $s3, 32
	beqz	$a0, .LBB1_378
# %bb.379:
	ori	$a1, $zero, 13
	beq	$a0, $a1, .LBB1_381
# %bb.380:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a5, $a0, %pc_lo12(.L.str.9)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_381:                              # %.loopexit1795
	addi.d	$a2, $sp, 652
	addi.d	$a3, $sp, 656
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(SpannerAvailableSpace)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 652
	ld.w	$a1, $sp, 656
	lu12i.w	$a2, 2047
	ori	$a2, $a2, 4095
	st.w	$a2, $sp, 120
	add.d	$a0, $a1, $a0
	st.w	$a0, $sp, 124
	st.w	$a2, $sp, 128
	addi.d	$a1, $sp, 120
	move	$a0, $s3
	pcaddu18i	$ra, %call36(BreakObject)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 40
	lu12i.w	$a2, 1024
	or	$a1, $a1, $a2
	st.w	$a1, $a0, 40
.LBB1_382:
	sltui	$a1, $s0, 1
	slli.d	$a0, $a1, 3
	ldx.d	$s3, $s4, $a0
	.p2align	4, , 16
.LBB1_383:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $s3, 16
	ld.bu	$a5, $s3, 32
	beqz	$a5, .LBB1_383
# %bb.384:
	ld.bu	$a0, $fp, 0
	ori	$a3, $zero, 13
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	beq	$a5, $a3, .LBB1_386
# %bb.385:
	ori	$a3, $zero, 45
	beq	$a0, $a3, .LBB1_388
.LBB1_386:
	ori	$a3, $zero, 14
	beq	$a5, $a3, .LBB1_390
# %bb.387:
	ori	$a3, $zero, 46
	bne	$a0, $a3, .LBB1_390
.LBB1_388:
	bnez	$s0, .LBB1_472
# %bb.389:
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	ori	$a0, $zero, 12
	ori	$a1, $zero, 15
	ori	$a3, $zero, 2
	move	$a4, $fp
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB1_472
.LBB1_390:
	addi.d	$a3, $a0, -45
	sltui	$a3, $a3, 1
	addi.d	$a4, $s0, -1
	sltui	$a4, $a4, 1
	and	$a3, $a4, $a3
	bnez	$a3, .LBB1_472
# %bb.391:
	addi.d	$a0, $a0, -46
	sltui	$a0, $a0, 1
	and	$a0, $a1, $a0
	bnez	$a0, .LBB1_472
# %bb.392:
	addi.d	$a0, $a5, -13
	ori	$a1, $zero, 2
	bgeu	$a0, $a1, .LBB1_395
# %bb.393:
	ld.wu	$a0, $s3, 40
	srli.d	$a1, $a0, 12
	addi.d	$a1, $a1, 1
	andi	$a4, $a1, 1023
	lu12i.w	$a3, -1024
	ori	$a3, $a3, 4095
	lu32i.d	$a3, 0
	and	$a3, $a0, $a3
	bstrins.d	$a3, $a1, 21, 12
	andi	$a0, $a0, 4095
	st.w	$a3, $s3, 40
	bne	$a4, $a0, .LBB1_472
# %bb.394:
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 652
	addi.d	$a3, $sp, 656
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(SpannerAvailableSpace)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s0, $s4, 2
	st.w	$zero, $a0, 48
	alsl.d	$a1, $s0, $s3, 2
	ld.w	$a2, $a1, 48
	ld.w	$a1, $a1, 56
	ld.w	$a3, $sp, 652
	add.d	$a1, $a1, $a2
	sub.d	$a1, $a1, $a3
	slli.d	$a2, $a1, 32
	srai.d	$a2, $a2, 63
	andn	$a1, $a1, $a2
	st.w	$a1, $a0, 56
	b	.LBB1_474
.LBB1_395:
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s0, $s3, 2
	b	.LBB1_126
.LBB1_396:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a1, %got_pc_lo12(zz_hold)
	move	$a1, $a0
	move	$a0, $fp
	st.d	$a1, $a2, 0
.LBB1_397:
	ori	$a2, $zero, 17
	st.b	$a2, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	addi.d	$a2, $s4, 88
	st.d	$a1, $s4, 88
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	move	$a4, $a0
	addi.d	$a0, $s4, 48
	ld.w	$a5, $s4, 76
	addi.d	$a1, $s4, 56
	addi.d	$a2, $s4, 52
	addi.d	$a3, $s4, 60
	pcaddu18i	$ra, %call36(RotateSize)
	jirl	$ra, $ra, 0
	b	.LBB1_474
.LBB1_398:
	move	$s0, $zero
	move	$s1, $zero
.LBB1_399:                              # %._crit_edge1968
	alsl.d	$a0, $s8, $s4, 2
	st.w	$s1, $a0, 48
	st.w	$s0, $a0, 56
	ld.d	$fp, $s4, 8
	st.w	$s1, $sp, 652
	st.w	$s0, $sp, 656
	ori	$s0, $zero, 1
	st.b	$s0, $s4, 41
	beq	$fp, $s4, .LBB1_408
# %bb.400:                              # %.preheader.preheader
	addi.d	$s1, $a0, 48
	addi.d	$s5, $a0, 56
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s6, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$s3, $a0, %pc_lo12(.L.str.29)
	ori	$s7, $zero, 3
	b	.LBB1_402
.LBB1_401:                              #   in Loop: Header=BB1_402 Depth=1
	ld.d	$fp, $fp, 8
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	beq	$fp, $s4, .LBB1_408
.LBB1_402:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_403 Depth 2
	move	$s4, $fp
	.p2align	4, , 16
.LBB1_403:                              #   Parent Loop BB1_402 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s4, $s4, 16
	ld.bu	$a0, $s4, 32
	beqz	$a0, .LBB1_403
# %bb.404:                              #   in Loop: Header=BB1_402 Depth=1
	bne	$a0, $s0, .LBB1_406
# %bb.405:                              #   in Loop: Header=BB1_402 Depth=1
	ld.d	$a4, $s6, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s2
	move	$a3, $zero
	move	$a5, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 32
	addi.d	$a0, $a0, -43
	bltu	$s7, $a0, .LBB1_401
	b	.LBB1_407
.LBB1_406:                              # %.loopexit
                                        #   in Loop: Header=BB1_402 Depth=1
	addi.d	$a0, $a0, -43
	bltu	$s7, $a0, .LBB1_401
.LBB1_407:                              #   in Loop: Header=BB1_402 Depth=1
	move	$a0, $s4
	move	$a1, $s8
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	alsl.d	$a0, $s8, $a0, 2
	ld.w	$a2, $a0, 48
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	st.w	$a1, $s1, 0
	ld.w	$a1, $s5, 0
	ld.w	$a0, $a0, 56
	slt	$a2, $a0, $a1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	st.w	$a0, $s5, 0
	b	.LBB1_401
.LBB1_408:
	move	$s0, $s8
	b	.LBB1_474
.LBB1_409:
	move	$fp, $zero
	move	$s1, $zero
.LBB1_410:                              # %._crit_edge1941
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $s4, 2
	st.w	$s1, $a0, 48
	st.w	$fp, $a0, 56
	ld.d	$s6, $s4, 8
	addi.d	$a1, $a0, 48
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 56
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$s7, $zero, 1
	st.b	$s7, $s4, 41
	beq	$s6, $s4, .LBB1_420
# %bb.411:                              # %.preheader1774.preheader
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s8, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$s3, $a0, %pc_lo12(.L.str.26)
	ori	$s0, $zero, 46
	ori	$s5, $zero, 0
	lu32i.d	$s5, 29696
	b	.LBB1_413
.LBB1_412:                              #   in Loop: Header=BB1_413 Depth=1
	ld.d	$s6, $s6, 8
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	beq	$s6, $s4, .LBB1_420
.LBB1_413:                              # %.preheader1774
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_414 Depth 2
	move	$s4, $s6
	.p2align	4, , 16
.LBB1_414:                              #   Parent Loop BB1_413 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s4, $s4, 16
	ld.bu	$a0, $s4, 32
	beqz	$a0, .LBB1_414
# %bb.415:                              #   in Loop: Header=BB1_413 Depth=1
	bne	$a0, $s7, .LBB1_417
# %bb.416:                              #   in Loop: Header=BB1_413 Depth=1
	ld.d	$a4, $s8, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s2
	move	$a3, $zero
	move	$a5, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 32
.LBB1_417:                              # %.loopexit1775
                                        #   in Loop: Header=BB1_413 Depth=1
	bltu	$s0, $a0, .LBB1_412
# %bb.418:                              # %.loopexit1775
                                        #   in Loop: Header=BB1_413 Depth=1
	sll.d	$a0, $s7, $a0
	and	$a0, $a0, $s5
	beqz	$a0, .LBB1_412
# %bb.419:                              #   in Loop: Header=BB1_413 Depth=1
	move	$a0, $s4
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	move	$a1, $s4
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s4, $a0, 2
	ld.w	$a1, $a0, 48
	slt	$a2, $a1, $s1
	ld.w	$a0, $a0, 56
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s1, $a2
	or	$s1, $a2, $a1
	slt	$a1, $a0, $fp
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$fp, $a1, $a0
	b	.LBB1_412
.LBB1_420:                              # %._crit_edge1954
	st.w	$s1, $sp, 652
	st.w	$fp, $sp, 656
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.w	$s1, $a0, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.w	$fp, $a0, 0
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	b	.LBB1_474
.LBB1_421:
	move	$s5, $a2
	move	$s3, $s0
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s0, 123
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$fp, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s1, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a0, 3
	ldx.d	$s2, $fp, $a1
	st.w	$a0, $s1, 0
	beqz	$s2, .LBB1_489
# %bb.422:
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s2, $a1, 0
	ld.d	$a1, $s2, 0
	alsl.d	$a0, $a0, $fp, 3
	st.d	$a1, $a0, 0
	ori	$a0, $zero, 123
	b	.LBB1_464
.LBB1_423:                              # %.loopexit1786.loopexit
	move	$s1, $zero
.LBB1_424:                              # %.loopexit1786
	ld.d	$s0, $s4, 0
	.p2align	4, , 16
.LBB1_425:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 16
	ld.bu	$a1, $s0, 32
	beqz	$a1, .LBB1_425
# %bb.426:                              # %.preheader1782.preheader
	ori	$a0, $zero, 17
.LBB1_427:                              # %.preheader1782
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_429 Depth 2
	bne	$a1, $a0, .LBB1_430
# %bb.428:                              #   in Loop: Header=BB1_427 Depth=1
	ld.d	$s0, $s0, 0
	.p2align	4, , 16
.LBB1_429:                              #   Parent Loop BB1_427 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $s0, 16
	ld.bu	$a1, $s0, 32
	beqz	$a1, .LBB1_429
	b	.LBB1_427
.LBB1_430:                              # %.preheader1782
	addi.d	$a0, $a1, -11
	ori	$a1, $zero, 2
	bgeu	$a0, $a1, .LBB1_434
# %bb.431:
	addi.d	$s2, $s0, 64
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $a0, $s2
	ld.bu	$a1, $a0, -1
	beqz	$a1, .LBB1_434
# %bb.432:
	beqz	$s1, .LBB1_434
# %bb.433:
	ld.wu	$a0, $s0, 40
	andi	$a0, $a0, 4095
	move	$a2, $s1
	pcaddu18i	$ra, %call36(KernLength)
	jirl	$ra, $ra, 0
	add.d	$a0, $a0, $fp
	st.w	$a0, $s4, 56
.LBB1_434:                              # %.thread1745.loopexit2517
	move	$s0, $s3
	b	.LBB1_474
.LBB1_435:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a2, $s5
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s3, $a0
	st.d	$a0, $a1, 0
.LBB1_436:
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	ori	$a0, $zero, 120
	st.b	$a0, $s3, 32
	st.d	$s3, $s3, 0
	ld.bu	$a2, $s4, 0
	st.d	$s3, $s3, 24
	st.d	$s3, $s3, 16
	st.d	$s3, $s3, 8
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $fp, $a0
	st.w	$a2, $s1, 0
	move	$s8, $s0
	beqz	$a0, .LBB1_443
# %bb.437:
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $fp, 3
	st.d	$a1, $a2, 0
	b	.LBB1_444
.LBB1_438:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s3, $a0
	st.d	$a0, $a1, 0
.LBB1_439:
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 40
	st.b	$a2, $s3, 32
	st.d	$s3, $s3, 24
	st.d	$s3, $s3, 16
	st.d	$s3, $s3, 8
	st.d	$s3, $s3, 0
	st.d	$s2, $s3, 88
	ld.d	$a1, $a0, 8
.LBB1_440:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a1, 16
	ld.bu	$a0, $a1, 32
	beqz	$a0, .LBB1_440
# %bb.441:
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 88
	pcaddu18i	$ra, %call36(CrossMake)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s4, 0
	st.d	$a0, $s3, 80
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $fp, $a0
	st.w	$a2, $s1, 0
	move	$s1, $s5
	beqz	$a0, .LBB1_448
# %bb.442:
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $fp, 3
	st.d	$a1, $a2, 0
	b	.LBB1_449
.LBB1_443:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_444:
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s6, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s5, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s7, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	st.d	$a0, $s5, 0
	st.d	$s3, $s7, 0
	ld.d	$a1, $s3, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$s0, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $s0, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s7, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s0, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s6, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s5, 0
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	st.d	$a3, $s7, 0
	beqz	$a0, .LBB1_446
# %bb.445:
	ld.d	$a1, $a3, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s0, 0
	st.d	$a2, $a3, 16
	st.d	$a3, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB1_446:
	ld.bu	$a2, $s4, 0
	st.d	$s2, $s3, 88
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $fp, $a0
	st.w	$a2, $s1, 0
	beqz	$a0, .LBB1_452
# %bb.447:
	st.d	$a0, $s7, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $fp, 3
	st.d	$a1, $a2, 0
	b	.LBB1_453
.LBB1_448:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB1_449:
	move	$s8, $s0
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	st.d	$a0, $a1, 0
	ld.d	$a4, $s1, 0
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a4, $a3, 0
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	beqz	$a4, .LBB1_456
# %bb.450:
	ld.d	$a5, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $a1, 0
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a6, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a0, $a6, 8
	st.d	$a2, $a1, 0
	st.d	$s3, $a3, 0
	beqz	$a2, .LBB1_458
# %bb.451:                              # %._crit_edge2094
	ld.d	$a0, $a2, 16
	b	.LBB1_457
.LBB1_452:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 0
.LBB1_453:
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	st.d	$a0, $s5, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$a1, $s7, 0
	beqz	$a1, .LBB1_459
# %bb.454:
	ld.d	$a2, $a1, 0
	st.d	$a2, $s0, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s7, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s0, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s6, 0
	st.d	$a0, $a3, 8
	st.d	$a1, $s5, 0
	st.d	$s3, $s7, 0
	beqz	$a1, .LBB1_461
# %bb.455:                              # %._crit_edge2097
	ld.d	$a0, $a1, 16
	b	.LBB1_460
.LBB1_456:                              # %.thread1728
	st.d	$a0, $a1, 0
	st.d	$s3, $a3, 0
	move	$a2, $a0
.LBB1_457:
	ld.d	$a1, $s3, 16
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	st.d	$a0, $s3, 16
	ld.d	$a0, $a2, 16
	st.d	$a1, $a3, 0
	st.d	$s3, $a0, 24
	st.d	$a1, $a2, 16
	st.d	$a2, $a1, 24
.LBB1_458:
	move	$a0, $a7
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	b	.LBB1_461
.LBB1_459:                              # %.thread1730
	st.d	$a0, $s5, 0
	st.d	$s3, $s7, 0
	move	$a1, $a0
.LBB1_460:
	ld.d	$a2, $s3, 16
	st.d	$a0, $s3, 16
	ld.d	$a0, $a1, 16
	st.d	$a2, $s0, 0
	st.d	$s3, $a0, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB1_461:
	st.w	$zero, $s2, 56
	st.w	$zero, $s2, 48
	move	$s4, $s2
	move	$s0, $s8
	alsl.d	$a0, $s8, $s2, 2
	b	.LBB1_473
.LBB1_462:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s2, $a0
	st.d	$a0, $a1, 0
.LBB1_463:
	ori	$a0, $zero, 121
.LBB1_464:
	st.b	$a0, $s2, 32
	st.d	$s2, $s2, 24
	st.d	$s2, $s2, 0
	ld.bu	$a2, $s0, 0
	st.d	$s2, $s2, 16
	st.d	$s2, $s2, 8
	st.d	$s4, $s2, 80
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $fp, $a0
	st.w	$a2, $s1, 0
	beqz	$a0, .LBB1_466
# %bb.465:
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $fp, 3
	st.d	$a1, $a2, 0
	b	.LBB1_467
.LBB1_466:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB1_467:
	move	$s0, $s3
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	st.d	$a0, $a1, 0
	ld.d	$a4, $s5, 0
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a4, $a3, 0
	beqz	$a4, .LBB1_470
# %bb.468:
	ld.d	$a5, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $a1, 0
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a6, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a0, $a6, 8
	st.d	$a2, $a1, 0
	st.d	$s2, $a3, 0
	beqz	$a2, .LBB1_472
# %bb.469:                              # %._crit_edge2088
	ld.d	$a0, $a2, 16
	b	.LBB1_471
.LBB1_470:                              # %.thread1732
	st.d	$a0, $a1, 0
	st.d	$s2, $a3, 0
	move	$a2, $a0
.LBB1_471:
	ld.d	$a1, $s2, 16
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	st.d	$a0, $s2, 16
	ld.d	$a0, $a2, 16
	st.d	$a1, $a3, 0
	st.d	$s2, $a0, 24
	st.d	$a1, $a2, 16
	st.d	$a2, $a1, 24
.LBB1_472:
	alsl.d	$a0, $s0, $s4, 2
.LBB1_473:                              # %.thread1745
	st.w	$zero, $a0, 56
	st.w	$zero, $a0, 48
.LBB1_474:                              # %.thread1745
	alsl.d	$a0, $s0, $s4, 2
	ld.w	$a0, $a0, 48
	addi.w	$fp, $zero, -1
	bge	$fp, $a0, .LBB1_477
# %bb.475:
	alsl.d	$a0, $s0, $s4, 2
	ld.w	$a0, $a0, 56
	bge	$fp, $a0, .LBB1_478
.LBB1_476:
	move	$a0, $s4
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
.LBB1_477:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a5, $a0, %pc_lo12(.L.str.44)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s0, $s4, 2
	ld.w	$a0, $a0, 56
	blt	$fp, $a0, .LBB1_476
.LBB1_478:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a5, $a0, %pc_lo12(.L.str.45)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB1_476
.LBB1_479:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s2, $a0
	st.d	$a0, $a1, 0
.LBB1_480:
	ori	$a0, $zero, 136
	st.b	$a0, $s2, 32
	st.d	$s2, $s2, 24
	st.d	$s2, $s2, 0
	ld.bu	$a2, $s0, 0
	st.d	$s2, $s2, 16
	st.d	$s2, $s2, 8
	st.d	$s4, $s2, 80
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $fp, $a0
	st.w	$a2, $s1, 0
	beqz	$a0, .LBB1_482
# %bb.481:
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $fp, 3
	st.d	$a1, $a2, 0
	b	.LBB1_483
.LBB1_482:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB1_483:
	move	$s0, $s3
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	st.d	$a0, $a1, 0
	ld.d	$a4, $s5, 0
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a4, $a3, 0
	beqz	$a4, .LBB1_486
# %bb.484:
	ld.d	$a5, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $a1, 0
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a6, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a0, $a6, 8
	st.d	$a2, $a1, 0
	st.d	$s2, $a3, 0
	beqz	$a2, .LBB1_488
# %bb.485:                              # %._crit_edge2063
	ld.d	$a0, $a2, 16
	b	.LBB1_487
.LBB1_486:                              # %.thread1744
	st.d	$a0, $a1, 0
	st.d	$s2, $a3, 0
	move	$a2, $a0
.LBB1_487:
	ld.d	$a1, $s2, 16
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	st.d	$a0, $s2, 16
	ld.d	$a0, $a2, 16
	st.d	$a1, $a3, 0
	st.d	$s2, $a0, 24
	st.d	$a1, $a2, 16
	st.d	$a2, $a1, 24
.LBB1_488:
	ld.hu	$a0, $s4, 42
	bstrpick.d	$a0, $a0, 15, 1
	slli.d	$a0, $a0, 1
	st.h	$a0, $s4, 42
	b	.LBB1_474
.LBB1_489:
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s2, $a0
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 123
	b	.LBB1_464
.LBB1_490:
	beqz	$s3, .LBB1_492
# %bb.491:
	move	$a0, $s3
	b	.LBB1_494
.LBB1_492:
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a5, $a0, %pc_lo12(.L.str.16)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a2, $s8
.LBB1_493:                              # %.loopexit1790
	move	$a0, $zero
.LBB1_494:                              # %.loopexit1790
	beq	$s6, $s4, .LBB1_561
# %bb.495:                              # %.lr.ph
	move	$s2, $zero
	ori	$s7, $zero, 9
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ori	$s3, $zero, 1
	ori	$s5, $zero, 90
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(zz_lengths)
	ld.d	$a1, $a1, %got_pc_lo12(zz_lengths)
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$a1, $a1, %got_pc_lo12(zz_size)
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s1, $a1, %got_pc_lo12(zz_free)
	lu12i.w	$a1, 15
	ori	$a1, $a1, 2047
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a1, -262145
	ori	$a1, $a1, 4095
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a1, -393217
	ori	$a1, $a1, 4095
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	b	.LBB1_499
.LBB1_496:                              #   in Loop: Header=BB1_499 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_497:                              #   in Loop: Header=BB1_499 Depth=1
	move	$a0, $zero
.LBB1_498:                              # %.loopexit1788
                                        #   in Loop: Header=BB1_499 Depth=1
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	beq	$s6, $s4, .LBB1_562
.LBB1_499:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_551 Depth 2
                                        #       Child Loop BB1_552 Depth 3
	ld.hu	$a1, $a0, 44
	srli.d	$a2, $a1, 13
	beqz	$a2, .LBB1_546
# %bb.500:                              #   in Loop: Header=BB1_499 Depth=1
	ld.bu	$a2, $a0, 42
	beqz	$a2, .LBB1_504
.LBB1_501:                              #   in Loop: Header=BB1_499 Depth=1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	bnez	$s2, .LBB1_510
# %bb.502:                              #   in Loop: Header=BB1_499 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$a2, $a1, 19
	slli.d	$a1, $a2, 3
	ldx.d	$s2, $s1, $a1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$s2, .LBB1_506
# %bb.503:                              #   in Loop: Header=BB1_499 Depth=1
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s2, $a1, 0
	ld.d	$a1, $s2, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a1, $a2, 0
	b	.LBB1_507
.LBB1_504:                              #   in Loop: Header=BB1_499 Depth=1
	bstrpick.d	$a1, $a1, 12, 10
	slli.d	$a1, $a1, 10
	ori	$a2, $zero, 2048
	bne	$a1, $a2, .LBB1_546
# %bb.505:                              #   in Loop: Header=BB1_499 Depth=1
	ld.h	$a1, $a0, 46
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	bge	$a1, $a2, .LBB1_501
	b	.LBB1_546
.LBB1_506:                              #   in Loop: Header=BB1_499 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
.LBB1_507:                              #   in Loop: Header=BB1_499 Depth=1
	ori	$a1, $zero, 19
	st.b	$a1, $s2, 32
	st.d	$s2, $s2, 24
	ld.hu	$a1, $s2, 42
	st.d	$s2, $s2, 16
	st.d	$s2, $s2, 8
	st.d	$s2, $s2, 0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	and	$a1, $a1, $a2
	st.h	$a1, $s2, 42
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	ld.d	$a2, $s4, 24
	st.d	$s4, $a1, 0
	beq	$a2, $s4, .LBB1_509
# %bb.508:                              #   in Loop: Header=BB1_499 Depth=1
	ld.d	$a3, $s4, 16
	st.d	$a3, $a2, 16
	pcalau12i	$a4, %got_pc_hi20(xx_tmp)
	ld.d	$a4, $a4, %got_pc_lo12(xx_tmp)
	st.d	$a2, $a3, 24
	st.d	$s4, $s4, 24
	st.d	$s4, $s4, 16
	st.d	$a2, $a4, 0
	pcalau12i	$a3, %got_pc_hi20(zz_res)
	ld.d	$a3, $a3, %got_pc_lo12(zz_res)
	ld.d	$a4, $a2, 16
	pcalau12i	$a5, %got_pc_hi20(zz_tmp)
	ld.d	$a5, $a5, %got_pc_lo12(zz_tmp)
	ld.d	$a6, $s2, 16
	st.d	$s2, $a3, 0
	st.d	$a2, $a1, 0
	st.d	$a4, $a5, 0
	st.d	$a6, $a2, 16
	st.d	$a2, $a6, 24
	st.d	$a4, $s2, 16
	st.d	$s2, $a4, 24
	b	.LBB1_510
.LBB1_509:                              # %.thread1748
                                        #   in Loop: Header=BB1_499 Depth=1
	pcalau12i	$a2, %got_pc_hi20(xx_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(xx_tmp)
	pcalau12i	$a3, %got_pc_hi20(zz_res)
	ld.d	$a3, $a3, %got_pc_lo12(zz_res)
	st.d	$zero, $a2, 0
	st.d	$s2, $a3, 0
	st.d	$zero, $a1, 0
.LBB1_510:                              #   in Loop: Header=BB1_499 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$a2, $a1, 17
	slli.d	$a1, $a2, 3
	ldx.d	$s5, $s1, $a1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	beqz	$s5, .LBB1_512
# %bb.511:                              #   in Loop: Header=BB1_499 Depth=1
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$s5, $a2, 0
	ld.d	$a2, $s5, 0
	stx.d	$a2, $s1, $a1
	b	.LBB1_513
.LBB1_512:                              #   in Loop: Header=BB1_499 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s5, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$s5, $a1, 0
.LBB1_513:                              #   in Loop: Header=BB1_499 Depth=1
	ori	$a1, $zero, 17
	st.b	$a1, $s5, 32
	st.d	$s5, $s5, 24
	st.d	$s5, $s5, 16
	st.d	$s5, $s5, 8
	st.d	$s5, $s5, 0
	ld.d	$fp, $s4, 8
	ld.d	$s0, $a0, 24
	beq	$fp, $s0, .LBB1_519
# %bb.514:                              #   in Loop: Header=BB1_499 Depth=1
	ld.bu	$a1, $fp, 32
	beqz	$a1, .LBB1_516
# %bb.515:                              #   in Loop: Header=BB1_499 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a5, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
.LBB1_516:                              #   in Loop: Header=BB1_499 Depth=1
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$fp, $a1, 0
	st.d	$s0, $a2, 0
	beqz	$s0, .LBB1_518
# %bb.517:                              #   in Loop: Header=BB1_499 Depth=1
	ld.d	$a3, $s0, 0
	pcalau12i	$a4, %got_pc_hi20(zz_tmp)
	ld.d	$a4, $a4, %got_pc_lo12(zz_tmp)
	st.d	$a3, $a4, 0
	ld.d	$a3, $fp, 0
	st.d	$a3, $s0, 0
	ld.d	$a3, $a1, 0
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a3, 0
	ld.d	$a4, $a4, 0
	st.d	$a5, $a6, 8
	st.d	$a4, $a3, 0
	ld.d	$a3, $a1, 0
	st.d	$a3, $a4, 8
.LBB1_518:                              #   in Loop: Header=BB1_499 Depth=1
	st.d	$fp, $a1, 0
	st.d	$s5, $a2, 0
	ld.d	$a3, $s5, 0
	pcalau12i	$a4, %got_pc_hi20(zz_tmp)
	ld.d	$a4, $a4, %got_pc_lo12(zz_tmp)
	st.d	$a3, $a4, 0
	ld.d	$a3, $fp, 0
	st.d	$a3, $s5, 0
	ld.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	ld.d	$a5, $a3, 0
	ld.d	$a4, $a4, 0
	st.d	$a2, $a5, 8
	st.d	$a4, $a3, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a4, 8
.LBB1_519:                              #   in Loop: Header=BB1_499 Depth=1
	ld.hu	$a2, $s4, 64
	ld.h	$a1, $s5, 64
	bstrpick.d	$a2, $a2, 7, 7
	bstrins.d	$a1, $a2, 7, 7
	st.h	$a1, $s5, 64
	ld.hu	$a2, $s4, 64
	bstrpick.d	$a2, $a2, 8, 8
	move	$a3, $a1
	bstrins.d	$a3, $a2, 8, 8
	st.h	$a3, $s5, 64
	ld.hu	$a2, $s4, 64
	bstrpick.d	$a2, $a2, 9, 9
	bstrins.d	$a3, $a2, 9, 9
	st.h	$a3, $s5, 64
	ld.hu	$a2, $s4, 64
	bstrpick.d	$a2, $a2, 12, 10
	bstrins.d	$a3, $a2, 12, 10
	st.h	$a3, $s5, 64
	ld.hu	$a2, $s4, 64
	srli.d	$a2, $a2, 13
	bstrins.d	$a3, $a2, 63, 13
	st.h	$a3, $s5, 64
	ld.h	$a2, $s4, 66
	st.h	$a2, $s5, 66
	ld.bu	$a2, $s4, 68
	ld.b	$a3, $s5, 68
	andi	$a2, $a2, 3
	bstrins.d	$a3, $a2, 1, 0
	st.b	$a3, $s5, 68
	ld.bu	$a2, $s4, 68
	bstrpick.d	$a2, $a2, 3, 2
	bstrins.d	$a3, $a2, 3, 2
	st.b	$a3, $s5, 68
	ld.bu	$a2, $s4, 68
	andi	$a3, $a3, 143
	srli.d	$a2, $a2, 4
	bstrins.d	$a3, $a2, 6, 4
	st.b	$a3, $s5, 68
	ld.bu	$a2, $s4, 64
	bstrpick.d	$a2, $a2, 3, 3
	bstrins.d	$a1, $a2, 3, 3
	st.b	$a1, $s5, 64
	ld.hu	$a2, $s4, 68
	ld.h	$a3, $s5, 68
	bstrpick.d	$a2, $a2, 7, 7
	bstrins.d	$a3, $a2, 7, 7
	st.h	$a3, $s5, 68
	ld.hu	$a2, $s4, 68
	bstrpick.d	$a2, $a2, 8, 8
	bstrins.d	$a3, $a2, 8, 8
	st.h	$a3, $s5, 68
	ld.hu	$a2, $s4, 68
	bstrpick.d	$a2, $a2, 9, 9
	bstrins.d	$a3, $a2, 9, 9
	st.h	$a3, $s5, 68
	ld.hu	$a2, $s4, 68
	bstrpick.d	$a2, $a2, 12, 10
	bstrins.d	$a3, $a2, 12, 10
	st.h	$a3, $s5, 68
	ld.hu	$a2, $s4, 68
	srli.d	$a2, $a2, 13
	bstrins.d	$a3, $a2, 63, 13
	st.h	$a3, $s5, 68
	ld.h	$a2, $s4, 70
	st.h	$a2, $s5, 70
	ld.wu	$a2, $s4, 76
	ld.w	$a3, $s5, 76
	andi	$a2, $a2, 4095
	bstrins.d	$a3, $a2, 11, 0
	st.w	$a3, $s5, 76
	ld.wu	$a2, $s4, 76
	bstrpick.d	$a2, $a2, 21, 12
	bstrins.d	$a3, $a2, 21, 12
	st.w	$a3, $s5, 76
	ld.wu	$a2, $s4, 76
	bstrpick.d	$a2, $a2, 23, 22
	bstrins.d	$a3, $a2, 23, 22
	st.w	$a3, $s5, 76
	ld.wu	$a2, $s4, 76
	bstrpick.d	$a2, $a2, 29, 24
	bstrins.d	$a3, $a2, 29, 24
	st.w	$a3, $s5, 76
	ld.w	$a2, $s4, 76
	srli.d	$a2, $a2, 31
	bstrins.d	$a3, $a2, 63, 31
	st.w	$a3, $s5, 76
	ld.wu	$a2, $s4, 76
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	and	$a3, $a3, $a4
	srli.d	$a2, $a2, 30
	bstrins.d	$a3, $a2, 30, 30
	st.w	$a3, $s5, 76
	ld.bu	$a2, $s4, 64
	srli.d	$a1, $a1, 1
	bstrins.d	$a2, $a1, 63, 1
	st.b	$a2, $s5, 64
	ld.bu	$a1, $s4, 64
	bstrpick.d	$a1, $a1, 1, 1
	bstrins.d	$a2, $a1, 1, 1
	st.b	$a2, $s5, 64
	ld.bu	$a1, $s4, 64
	bstrpick.d	$a1, $a1, 2, 2
	bstrins.d	$a2, $a1, 2, 2
	st.b	$a2, $s5, 64
	ld.bu	$a1, $s4, 64
	andi	$a2, $a2, 143
	srli.d	$a1, $a1, 4
	bstrins.d	$a2, $a1, 6, 4
	st.b	$a2, $s5, 64
	ld.h	$a1, $s4, 72
	st.h	$a1, $s5, 72
	ld.h	$a1, $s4, 74
	ld.hu	$a2, $s5, 42
	st.h	$a1, $s5, 74
	ld.b	$a1, $s4, 64
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	and	$a3, $a2, $a3
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$a2, $a2, 0
	bstrpick.d	$a1, $a1, 54, 2
	bstrins.d	$a3, $a1, 11, 11
	st.h	$a3, $s5, 42
	slli.d	$a3, $a2, 3
	ldx.d	$a1, $s1, $a3
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a4, 0
	beqz	$a1, .LBB1_521
# %bb.520:                              #   in Loop: Header=BB1_499 Depth=1
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a1, $a2, 0
	ld.d	$a2, $a1, 0
	stx.d	$a2, $s1, $a3
	b	.LBB1_522
.LBB1_521:                              #   in Loop: Header=BB1_499 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
.LBB1_522:                              #   in Loop: Header=BB1_499 Depth=1
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	pcalau12i	$a2, %got_pc_hi20(xx_link)
	ld.d	$s8, $a2, %got_pc_lo12(xx_link)
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$fp, $a2, %got_pc_lo12(zz_res)
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$s4, $a2, %got_pc_lo12(zz_hold)
	st.d	$a1, $a1, 0
	st.d	$a1, $s8, 0
	st.d	$a1, $fp, 0
	st.d	$s2, $s4, 0
	ld.d	$a2, $s2, 0
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$s1, $a3, %got_pc_lo12(zz_tmp)
	st.d	$a2, $s1, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s2, 0
	ld.d	$a1, $fp, 0
	ld.d	$a2, $s4, 0
	ld.d	$a3, $a1, 0
	ld.d	$a4, $s1, 0
	st.d	$a2, $a3, 8
	st.d	$a4, $a1, 0
	ld.d	$a2, $fp, 0
	ld.d	$a1, $s8, 0
	st.d	$a2, $a4, 8
	st.d	$a1, $fp, 0
	st.d	$s5, $s4, 0
	beqz	$a1, .LBB1_524
# %bb.523:                              #   in Loop: Header=BB1_499 Depth=1
	ld.d	$a2, $s5, 16
	ld.d	$a3, $a1, 16
	st.d	$a2, $s1, 0
	st.d	$a3, $s5, 16
	st.d	$s5, $a3, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB1_524:                              #   in Loop: Header=BB1_499 Depth=1
	ld.bu	$a1, $a0, 41
	beqz	$a1, .LBB1_541
# %bb.525:                              #   in Loop: Header=BB1_499 Depth=1
	addi.d	$a2, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.wu	$a0, $a2, 76
	ld.w	$a1, $s5, 40
	andi	$a0, $a0, 4095
	bstrins.d	$a1, $a0, 11, 0
	st.w	$a1, $s5, 40
	ld.wu	$a0, $a2, 76
	bstrpick.d	$a0, $a0, 21, 12
	bstrins.d	$a1, $a0, 21, 12
	st.w	$a1, $s5, 40
	ld.wu	$a0, $a2, 76
	bstrpick.d	$a0, $a0, 22, 22
	bstrins.d	$a1, $a0, 22, 22
	st.w	$a1, $s5, 40
	ld.w	$a0, $a2, 76
	bstrpick.d	$a0, $a0, 29, 24
	bstrins.d	$a1, $a0, 28, 23
	st.w	$a1, $s5, 40
	ld.bu	$a0, $a2, 68
	andi	$a0, $a0, 3
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	slli.d	$a0, $a0, 31
	bstrins.d	$a0, $a1, 28, 0
	lu12i.w	$a1, 131072
	or	$a1, $a0, $a1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	st.w	$a1, $s5, 40
	st.w	$zero, $s5, 56
	st.w	$zero, $s5, 48
	slli.d	$a2, $a0, 3
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$a1, $a3, $a2
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	st.w	$a0, $a4, 0
	beqz	$a1, .LBB1_527
# %bb.526:                              #   in Loop: Header=BB1_499 Depth=1
	st.d	$a1, $s4, 0
	ld.d	$a0, $a1, 0
	stx.d	$a0, $a3, $a2
	b	.LBB1_528
.LBB1_527:                              #   in Loop: Header=BB1_499 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB1_528:                              #   in Loop: Header=BB1_499 Depth=1
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 8
	st.d	$a1, $s8, 0
	st.d	$a1, $fp, 0
	st.d	$a2, $s4, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beqz	$a2, .LBB1_530
# %bb.529:                              #   in Loop: Header=BB1_499 Depth=1
	ld.d	$a3, $a2, 0
	st.d	$a3, $s1, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a2, 0
	ld.d	$a1, $fp, 0
	ld.d	$a2, $s4, 0
	ld.d	$a3, $a1, 0
	ld.d	$a4, $s1, 0
	st.d	$a2, $a3, 8
	st.d	$a4, $a1, 0
	ld.d	$a2, $fp, 0
	ld.d	$a1, $s8, 0
	st.d	$a2, $a4, 8
	st.d	$a1, $fp, 0
	st.d	$s5, $s4, 0
	bnez	$a1, .LBB1_531
	b	.LBB1_532
.LBB1_530:                              # %.thread2112
                                        #   in Loop: Header=BB1_499 Depth=1
	st.d	$s5, $s4, 0
.LBB1_531:                              #   in Loop: Header=BB1_499 Depth=1
	ld.d	$a2, $s5, 16
	ld.d	$a3, $a1, 16
	st.d	$a2, $s1, 0
	st.d	$a3, $s5, 16
	st.d	$s5, $a3, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB1_532:                              #   in Loop: Header=BB1_499 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$a2, $a1, 1
	slli.d	$a1, $a2, 3
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$s5, $s0, $a1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	beqz	$s5, .LBB1_534
# %bb.533:                              #   in Loop: Header=BB1_499 Depth=1
	st.d	$s5, $s4, 0
	ld.d	$a2, $s5, 0
	stx.d	$a2, $s0, $a1
	b	.LBB1_535
.LBB1_534:                              #   in Loop: Header=BB1_499 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$s5, $s4, 0
.LBB1_535:                              #   in Loop: Header=BB1_499 Depth=1
	st.b	$s3, $s5, 32
	st.d	$s5, $s5, 24
	st.d	$s5, $s5, 16
	st.d	$s5, $s5, 8
	st.d	$s5, $s5, 0
	ld.b	$a1, $a0, 41
	st.b	$a1, $s5, 41
	st.b	$zero, $s5, 42
	ld.wu	$a1, $s5, 40
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	and	$a2, $a1, $a2
	lu12i.w	$a3, 131072
	or	$a2, $a2, $a3
	st.w	$a2, $s5, 40
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	ld.hu	$a2, $a4, 68
	ld.h	$a3, $s5, 44
	bstrpick.d	$a2, $a2, 7, 7
	bstrins.d	$a3, $a2, 7, 7
	st.h	$a3, $s5, 44
	ld.hu	$a2, $a4, 68
	bstrpick.d	$a2, $a2, 8, 8
	bstrins.d	$a3, $a2, 8, 8
	st.h	$a3, $s5, 44
	ld.hu	$a2, $a4, 68
	bstrpick.d	$a2, $a2, 9, 9
	bstrins.d	$a3, $a2, 9, 9
	st.h	$a3, $s5, 44
	ld.hu	$a2, $a4, 68
	bstrpick.d	$a2, $a2, 12, 10
	bstrins.d	$a3, $a2, 12, 10
	st.h	$a3, $s5, 44
	ld.hu	$a2, $a4, 68
	srli.d	$a2, $a2, 13
	bstrins.d	$a3, $a2, 63, 13
	st.h	$a3, $s5, 44
	ld.h	$a3, $a4, 70
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$a2, $a2, 0
	bstrpick.d	$a1, $a1, 15, 8
	mul.d	$a1, $a3, $a1
	st.h	$a1, $s5, 46
	slli.d	$a3, $a2, 3
	ldx.d	$a1, $s0, $a3
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a4, 0
	beqz	$a1, .LBB1_537
# %bb.536:                              #   in Loop: Header=BB1_499 Depth=1
	st.d	$a1, $s4, 0
	ld.d	$a2, $a1, 0
	stx.d	$a2, $s0, $a3
	b	.LBB1_538
.LBB1_537:                              #   in Loop: Header=BB1_499 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
.LBB1_538:                              #   in Loop: Header=BB1_499 Depth=1
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 8
	ld.d	$a2, $a2, 8
	st.d	$a1, $s8, 0
	st.d	$a1, $fp, 0
	st.d	$a2, $s4, 0
	beqz	$a2, .LBB1_540
# %bb.539:                              #   in Loop: Header=BB1_499 Depth=1
	ld.d	$a3, $a2, 0
	st.d	$a3, $s1, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a2, 0
	ld.d	$a1, $fp, 0
	ld.d	$a2, $s4, 0
	ld.d	$a3, $a1, 0
	ld.d	$a4, $s1, 0
	st.d	$a2, $a3, 8
	st.d	$a4, $a1, 0
	ld.d	$a2, $fp, 0
	ld.d	$a1, $s8, 0
	st.d	$a2, $a4, 8
	beqz	$a1, .LBB1_541
.LBB1_540:                              # %.thread2113
                                        #   in Loop: Header=BB1_499 Depth=1
	ld.d	$a2, $s5, 16
	ld.d	$a3, $a1, 16
	st.d	$a2, $s1, 0
	st.d	$a3, $s5, 16
	st.d	$s5, $a3, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB1_541:                              #   in Loop: Header=BB1_499 Depth=1
	ld.d	$a1, $a0, 24
	ld.d	$a2, $a1, 8
	st.d	$a1, $s8, 0
	st.d	$a1, $s4, 0
	beq	$a2, $a1, .LBB1_543
# %bb.542:                              #   in Loop: Header=BB1_499 Depth=1
	st.d	$a2, $fp, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a2, 0
	ld.d	$a2, $s4, 0
	ld.d	$a1, $fp, 0
	ld.d	$a3, $a2, 0
	st.d	$a1, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a1, $s8, 0
	st.d	$a2, $a2, 8
	st.d	$a1, $fp, 0
	st.d	$s2, $s4, 0
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ori	$s5, $zero, 90
	bnez	$a1, .LBB1_544
	b	.LBB1_545
.LBB1_543:                              # %.thread1750
                                        #   in Loop: Header=BB1_499 Depth=1
	st.d	$a1, $fp, 0
	st.d	$s2, $s4, 0
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ori	$s5, $zero, 90
.LBB1_544:                              #   in Loop: Header=BB1_499 Depth=1
	ld.d	$a2, $s2, 0
	st.d	$a2, $s1, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s2, 0
	ld.d	$a1, $fp, 0
	ld.d	$a2, $s4, 0
	ld.d	$a3, $a1, 0
	ld.d	$a4, $s1, 0
	st.d	$a2, $a3, 8
	st.d	$a4, $a1, 0
	ld.d	$a1, $fp, 0
	st.d	$a1, $a4, 8
.LBB1_545:                              #   in Loop: Header=BB1_499 Depth=1
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	ld.hu	$a1, $s4, 64
	ld.h	$a2, $a0, 44
	bstrpick.d	$a1, $a1, 7, 7
	bstrins.d	$a2, $a1, 7, 7
	st.h	$a2, $a0, 44
	ld.hu	$a1, $s4, 64
	bstrpick.d	$a1, $a1, 8, 8
	bstrins.d	$a2, $a1, 8, 8
	st.h	$a2, $a0, 44
	ld.hu	$a1, $s4, 64
	bstrpick.d	$a1, $a1, 9, 9
	bstrins.d	$a2, $a1, 9, 9
	st.h	$a2, $a0, 44
	ld.hu	$a1, $s4, 64
	bstrpick.d	$a1, $a1, 12, 10
	bstrins.d	$a2, $a1, 12, 10
	st.h	$a2, $a0, 44
	ld.hu	$a1, $s4, 64
	srli.d	$a1, $a1, 13
	ld.bu	$a3, $a0, 42
	bstrins.d	$a2, $a1, 63, 13
	st.h	$a2, $a0, 44
	ld.h	$a1, $s4, 66
	sltu	$a2, $s3, $a3
	masknez	$a4, $s3, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	mul.d	$a1, $a1, $a2
	st.h	$a1, $a0, 46
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
.LBB1_546:                              #   in Loop: Header=BB1_499 Depth=1
	ld.d	$s6, $s6, 8
	beq	$s6, $s4, .LBB1_497
# %bb.547:                              # %.preheader1787.preheader
                                        #   in Loop: Header=BB1_499 Depth=1
	move	$s0, $zero
	ori	$fp, $zero, 1
	b	.LBB1_551
.LBB1_548:                              #   in Loop: Header=BB1_551 Depth=2
	pcaddu18i	$ra, %call36(SplitIsDefinite)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_559
.LBB1_549:                              #   in Loop: Header=BB1_551 Depth=2
	move	$a0, $s0
.LBB1_550:                              # %.critedge18
                                        #   in Loop: Header=BB1_551 Depth=2
	ld.d	$s6, $s6, 8
	move	$s0, $a0
	beq	$s6, $s4, .LBB1_498
.LBB1_551:                              # %.preheader1787
                                        #   Parent Loop BB1_499 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_552 Depth 3
	move	$a0, $s6
	.p2align	4, , 16
.LBB1_552:                              #   Parent Loop BB1_499 Depth=1
                                        #     Parent Loop BB1_551 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_552
# %bb.553:                              #   in Loop: Header=BB1_551 Depth=2
	beq	$a1, $s7, .LBB1_548
# %bb.554:                              #   in Loop: Header=BB1_551 Depth=2
	bne	$a1, $s3, .LBB1_557
# %bb.555:                              #   in Loop: Header=BB1_551 Depth=2
	beqz	$fp, .LBB1_558
# %bb.556:                              #   in Loop: Header=BB1_551 Depth=2
	ld.hu	$a1, $a0, 44
	bstrpick.d	$fp, $a1, 9, 9
	b	.LBB1_550
.LBB1_557:                              #   in Loop: Header=BB1_551 Depth=2
	addi.d	$a0, $a1, -9
	bltu	$s5, $a0, .LBB1_549
	b	.LBB1_559
.LBB1_558:                              #   in Loop: Header=BB1_551 Depth=2
	move	$fp, $zero
	b	.LBB1_550
.LBB1_559:                              #   in Loop: Header=BB1_499 Depth=1
	beqz	$s0, .LBB1_496
# %bb.560:                              #   in Loop: Header=BB1_499 Depth=1
	move	$a0, $s0
	b	.LBB1_498
.LBB1_561:
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	b	.LBB1_571
.LBB1_562:                              # %._crit_edge1906
	beqz	$s2, .LBB1_570
# %bb.563:
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB1_565
# %bb.564:
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s1, 3
	st.d	$a1, $a2, 0
	b	.LBB1_566
.LBB1_565:
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_566:
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a3, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a4, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	st.d	$a0, $a3, 0
	st.d	$s2, $a4, 0
	ld.d	$a5, $s2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $a3, 0
	ld.d	$a5, $a4, 0
	ld.d	$a6, $a0, 0
	ld.d	$a7, $a1, 0
	st.d	$a5, $a6, 8
	st.d	$a7, $a0, 0
	ld.d	$a5, $a3, 0
	ld.d	$a0, $a2, 0
	st.d	$a5, $a7, 8
	st.d	$a0, $a3, 0
	st.d	$s4, $a4, 0
	beqz	$s4, .LBB1_569
# %bb.567:
	beqz	$a0, .LBB1_569
# %bb.568:
	ld.d	$a2, $s4, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $s4, 16
	st.d	$s4, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB1_569:                              # %.critedge1586
	move	$s4, $s2
.LBB1_570:                              # %.critedge1586
	move	$a2, $s8
.LBB1_571:                              # %.critedge1586
	ld.bu	$a0, $s4, 32
	addi.d	$a1, $s0, -1
	sltui	$a1, $a1, 1
	addi.d	$a0, $a0, -19
	sltu	$a0, $zero, $a0
	xor	$a0, $a1, $a0
	st.d	$s4, $sp, 112                   # 8-byte Folded Spill
	beqz	$a0, .LBB1_668
# %bb.572:
	ld.hu	$a0, $s4, 42
	ld.d	$s7, $s4, 8
	lu12i.w	$a3, 15
	ori	$a1, $a3, 3967
	and	$a0, $a0, $a1
	st.h	$a0, $s4, 42
	beq	$s7, $s4, .LBB1_713
# %bb.573:                              # %.preheader1778.lr.ph
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	move	$s3, $zero
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	ori	$fp, $zero, 19
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$s1, $a0, %got_pc_lo12(xx_link)
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$s6, $a0, %got_pc_lo12(zz_hold)
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$s5, $a0, %got_pc_lo12(zz_res)
	pcalau12i	$a0, %got_pc_hi20(zz_tmp)
	ld.d	$s8, $a0, %got_pc_lo12(zz_tmp)
	ori	$a0, $a3, 3328
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1024
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, -393217
	ori	$a0, $a0, 4095
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1024
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	lu12i.w	$a0, 14
	ori	$a0, $a0, 1023
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a0, 12
	ori	$a0, $a0, 1024
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	b	.LBB1_576
.LBB1_574:                              #   in Loop: Header=BB1_576 Depth=1
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_575:                              # %.critedge1595
                                        #   in Loop: Header=BB1_576 Depth=1
	ld.d	$s7, $s7, 8
	beq	$s7, $s4, .LBB1_707
.LBB1_576:                              # %.preheader1778
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_577 Depth 2
	move	$s2, $s7
	.p2align	4, , 16
.LBB1_577:                              #   Parent Loop BB1_576 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $s2, 16
	ld.bu	$a0, $s2, 32
	beqz	$a0, .LBB1_577
# %bb.578:                              #   in Loop: Header=BB1_576 Depth=1
	addi.d	$a1, $a0, -119
	bltu	$fp, $a1, .LBB1_585
# %bb.579:                              #   in Loop: Header=BB1_576 Depth=1
	ori	$a0, $zero, 1
	bne	$s0, $a0, .LBB1_575
# %bb.580:                              #   in Loop: Header=BB1_576 Depth=1
	ld.d	$s7, $s7, 0
	ld.d	$a0, $s7, 8
	ld.d	$a1, $a0, 8
	st.d	$a0, $s1, 0
	st.d	$a0, $s6, 0
	beq	$a1, $a0, .LBB1_582
# %bb.581:                              #   in Loop: Header=BB1_576 Depth=1
	st.d	$a1, $s5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s6, 0
	ld.d	$a0, $s5, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $s1, 0
	st.d	$a1, $a1, 8
.LBB1_582:                              #   in Loop: Header=BB1_576 Depth=1
	st.d	$a0, $s5, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$a1, $s6, 0
	beqz	$a1, .LBB1_575
# %bb.583:                              #   in Loop: Header=BB1_576 Depth=1
	beqz	$a0, .LBB1_575
# %bb.584:                              #   in Loop: Header=BB1_576 Depth=1
	ld.d	$a2, $a1, 0
	st.d	$a2, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s8, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s5, 0
	st.d	$a0, $a3, 8
	b	.LBB1_575
	.p2align	4, , 16
.LBB1_585:                              #   in Loop: Header=BB1_576 Depth=1
	ld.bu	$a1, $s4, 32
	bne	$a0, $a1, .LBB1_593
# %bb.586:                              #   in Loop: Header=BB1_576 Depth=1
	move	$s4, $s0
	ld.d	$fp, $s2, 8
	ld.d	$s7, $s7, 0
	beq	$fp, $s2, .LBB1_591
# %bb.587:                              #   in Loop: Header=BB1_576 Depth=1
	ld.bu	$a0, $fp, 32
	ld.d	$s0, $s7, 8
	beqz	$a0, .LBB1_589
# %bb.588:                              #   in Loop: Header=BB1_576 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a5, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_589:                              #   in Loop: Header=BB1_576 Depth=1
	st.d	$fp, $s5, 0
	st.d	$s2, $s6, 0
	ld.d	$a0, $s2, 0
	st.d	$a0, $s8, 0
	ld.d	$a0, $fp, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s8, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s5, 0
	st.d	$a0, $a3, 8
	st.d	$fp, $s5, 0
	st.d	$s0, $s6, 0
	beqz	$s0, .LBB1_591
# %bb.590:                              #   in Loop: Header=BB1_576 Depth=1
	ld.d	$a0, $s0, 0
	st.d	$a0, $s8, 0
	ld.d	$a0, $fp, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s8, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s5, 0
	st.d	$a0, $a3, 8
.LBB1_591:                              #   in Loop: Header=BB1_576 Depth=1
	ld.d	$a0, $s2, 24
	ld.d	$a2, $a0, 24
	st.d	$a0, $s1, 0
	beq	$a2, $a0, .LBB1_611
# %bb.592:                              #   in Loop: Header=BB1_576 Depth=1
	ld.d	$a1, $a0, 16
	st.d	$a2, $s5, 0
	st.d	$a1, $a2, 16
	st.d	$a2, $a1, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB1_612
.LBB1_593:                              #   in Loop: Header=BB1_576 Depth=1
	addi.d	$a2, $a0, -11
	ori	$a3, $zero, 2
	bgeu	$a2, $a3, .LBB1_604
# %bb.594:                              #   in Loop: Header=BB1_576 Depth=1
	bnez	$s0, .LBB1_598
# %bb.595:                              #   in Loop: Header=BB1_576 Depth=1
	beqz	$s3, .LBB1_597
# %bb.596:                              #   in Loop: Header=BB1_576 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.hu	$a0, $a0, 46
	beqz	$a0, .LBB1_628
.LBB1_597:                              #   in Loop: Header=BB1_576 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(FontWordSize)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 19
.LBB1_598:                              #   in Loop: Header=BB1_576 Depth=1
	ld.bu	$a0, $s2, 32
	addi.d	$a0, $a0, -2
	ori	$a1, $zero, 6
	bltu	$a1, $a0, .LBB1_606
.LBB1_599:                              #   in Loop: Header=BB1_576 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beqz	$a0, .LBB1_616
# %bb.600:                              #   in Loop: Header=BB1_576 Depth=1
	ld.hu	$a0, $a0, 44
	andi	$a1, $a0, 256
	addi.d	$s2, $s2, 32
	beqz	$a1, .LBB1_602
# %bb.601:                              #   in Loop: Header=BB1_576 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a2, $a0, %pc_lo12(.L.str.18)
	ori	$a0, $zero, 12
	ori	$a1, $zero, 3
	ori	$a3, $zero, 2
	move	$a4, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.hu	$a0, $a2, 44
	lu12i.w	$a1, 15
	ori	$a1, $a1, 3839
	and	$a0, $a0, $a1
	st.h	$a0, $a2, 44
.LBB1_602:                              #   in Loop: Header=BB1_576 Depth=1
	bstrpick.d	$a0, $a0, 12, 10
	slli.d	$a0, $a0, 10
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB1_575
# %bb.603:                              #   in Loop: Header=BB1_576 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a2, $a0, %pc_lo12(.L.str.19)
	ori	$a0, $zero, 12
	ori	$a1, $zero, 4
	ori	$a3, $zero, 2
	ori	$a5, $zero, 119
	move	$a4, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.hu	$a0, $a1, 44
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	and	$a0, $a0, $a2
	addi.d	$a0, $a0, 1024
	st.h	$a0, $a1, 44
	st.h	$zero, $a1, 46
	b	.LBB1_575
.LBB1_604:                              #   in Loop: Header=BB1_576 Depth=1
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_574
# %bb.605:                              #   in Loop: Header=BB1_576 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.bu	$a0, $s2, 32
	addi.d	$a0, $a0, -2
	ori	$a1, $zero, 6
	bgeu	$a1, $a0, .LBB1_599
.LBB1_606:                              #   in Loop: Header=BB1_576 Depth=1
	beqz	$s3, .LBB1_617
# %bb.607:                              #   in Loop: Header=BB1_576 Depth=1
	alsl.d	$a0, $s0, $s3, 2
	ld.w	$a0, $a0, 56
	alsl.d	$fp, $s0, $s2, 2
	ld.w	$a1, $fp, 48
	ld.w	$a2, $fp, 56
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	addi.d	$s4, $s3, 44
	move	$a3, $s4
	pcaddu18i	$ra, %call36(MinGap)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $s3, 44
	srli.d	$a2, $a1, 13
	move	$s3, $a0
	bnez	$a2, .LBB1_609
# %bb.608:                              #   in Loop: Header=BB1_576 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a5, $a0, %pc_lo12(.L.str.20)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $s4, 0
.LBB1_609:                              #   in Loop: Header=BB1_576 Depth=1
	bstrpick.d	$a0, $a1, 15, 10
	slli.d	$a0, $a0, 10
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	bne	$a0, $a2, .LBB1_618
# %bb.610:                              #   in Loop: Header=BB1_576 Depth=1
	addi.d	$a0, $fp, 48
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.h	$a2, $a2, 46
	ld.w	$a0, $a0, 0
	ld.w	$a3, $sp, 656
	add.w	$a0, $a0, $a2
	add.w	$a2, $a3, $s3
	slt	$a3, $a2, $a0
	masknez	$a2, $a2, $a3
	maskeqz	$a0, $a0, $a3
	or	$fp, $a0, $a2
	b	.LBB1_619
.LBB1_611:                              #   in Loop: Header=BB1_576 Depth=1
	move	$a2, $zero
.LBB1_612:                              #   in Loop: Header=BB1_576 Depth=1
	ori	$fp, $zero, 19
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	ld.d	$a3, $a0, 8
	st.d	$a2, $a1, 0
	st.d	$a0, $s6, 0
	move	$s0, $s4
	beq	$a3, $a0, .LBB1_614
# %bb.613:                              #   in Loop: Header=BB1_576 Depth=1
	st.d	$a3, $s5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	ld.d	$a2, $s6, 0
	ld.d	$a0, $s5, 0
	ld.d	$a3, $a2, 0
	st.d	$a0, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a0, $s1, 0
	st.d	$a2, $a2, 8
.LBB1_614:                              #   in Loop: Header=BB1_576 Depth=1
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 32
	pcalau12i	$a3, %got_pc_hi20(zz_lengths)
	ld.d	$a3, $a3, %got_pc_lo12(zz_lengths)
	addi.d	$a4, $a2, -11
	sltui	$a4, $a4, 2
	addi.d	$a5, $a0, 33
	add.d	$a2, $a3, $a2
	masknez	$a2, $a2, $a4
	maskeqz	$a3, $a5, $a4
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(zz_free)
	ld.d	$a3, $a3, %got_pc_lo12(zz_free)
	pcalau12i	$a4, %got_pc_hi20(zz_size)
	ld.d	$a4, $a4, %got_pc_lo12(zz_size)
	slli.d	$a5, $a2, 3
	ldx.d	$a5, $a3, $a5
	st.d	$a0, $s6, 0
	st.w	$a2, $a4, 0
	st.d	$a5, $a0, 0
	ld.w	$a2, $a4, 0
	ld.d	$a4, $s6, 0
	ld.d	$a0, $a1, 0
	slli.d	$a1, $a2, 3
	stx.d	$a4, $a3, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB1_575
# %bb.615:                              #   in Loop: Header=BB1_576 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	b	.LBB1_575
.LBB1_616:                              #   in Loop: Header=BB1_576 Depth=1
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	b	.LBB1_575
.LBB1_617:                              #   in Loop: Header=BB1_576 Depth=1
	alsl.d	$a0, $s0, $s2, 2
	ld.w	$a0, $a0, 48
	st.w	$a0, $sp, 652
	st.w	$zero, $sp, 656
	move	$s3, $s2
	b	.LBB1_575
.LBB1_618:                              #   in Loop: Header=BB1_576 Depth=1
	ld.w	$a0, $sp, 656
	add.d	$fp, $a0, $s3
.LBB1_619:                              #   in Loop: Header=BB1_576 Depth=1
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a1, 12, 10
	slli.d	$a0, $a0, 10
	st.w	$fp, $sp, 656
	ori	$a2, $zero, 2048
	bne	$a0, $a2, .LBB1_621
# %bb.620:                              # %.thread1751
                                        #   in Loop: Header=BB1_576 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.h	$a0, $a0, 46
	lu12i.w	$a2, 1
	slt	$a0, $a2, $a0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	b	.LBB1_624
.LBB1_621:                              #   in Loop: Header=BB1_576 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3328
	and	$a0, $a1, $a0
	ori	$a2, $zero, 3328
	bne	$a0, $a2, .LBB1_624
# %bb.622:                              #   in Loop: Header=BB1_576 Depth=1
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	ld.h	$a0, $s3, 46
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB1_624
# %bb.623:                              #   in Loop: Header=BB1_576 Depth=1
	addi.d	$a4, $s3, 32
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a2, $a0, %pc_lo12(.L.str.21)
	ori	$a0, $zero, 12
	ori	$a1, $zero, 9
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $s3, 44
.LBB1_624:                              #   in Loop: Header=BB1_576 Depth=1
	andi	$a0, $a1, 256
	beqz	$a0, .LBB1_626
# %bb.625:                              #   in Loop: Header=BB1_576 Depth=1
	ld.w	$a0, $sp, 652
	add.d	$a0, $a0, $fp
	st.w	$a0, $sp, 652
	st.w	$zero, $sp, 656
.LBB1_626:                              # %.critedge1595
                                        #   in Loop: Header=BB1_576 Depth=1
	move	$s3, $s2
.LBB1_627:                              # %.critedge1595
                                        #   in Loop: Header=BB1_576 Depth=1
	ori	$fp, $zero, 19
	b	.LBB1_575
.LBB1_628:                              #   in Loop: Header=BB1_576 Depth=1
	ori	$a0, $zero, 17
	bne	$a1, $a0, .LBB1_597
# %bb.629:                              #   in Loop: Header=BB1_576 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.hu	$a0, $a0, 44
	andi	$a1, $a0, 128
	beqz	$a1, .LBB1_597
# %bb.630:                              #   in Loop: Header=BB1_576 Depth=1
	ld.bu	$fp, $s3, 32
	addi.d	$a1, $fp, -11
	ori	$a2, $zero, 1
	bltu	$a2, $a1, .LBB1_597
# %bb.631:                              #   in Loop: Header=BB1_576 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	and	$a0, $a0, $a1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB1_597
# %bb.632:                              #   in Loop: Header=BB1_576 Depth=1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a0, $a1, 42
	ld.bu	$a1, $a1, 41
	or	$a0, $a1, $a0
	bnez	$a0, .LBB1_597
# %bb.633:                              #   in Loop: Header=BB1_576 Depth=1
	ld.w	$a0, $s3, 40
	ld.w	$a1, $s2, 40
	xor	$a0, $a1, $a0
	bstrpick.d	$a0, $a0, 30, 0
	bnez	$a0, .LBB1_597
# %bb.634:                              #   in Loop: Header=BB1_576 Depth=1
	ld.d	$a0, $s3, 24
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 8
	bne	$a0, $s7, .LBB1_597
# %bb.635:                              #   in Loop: Header=BB1_576 Depth=1
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	addi.d	$s0, $s3, 32
	addi.d	$a0, $s3, 64
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.d	$a0, $s2, 64
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $a0, $s4
	ori	$a1, $zero, 512
	bltu	$a0, $a1, .LBB1_637
# %bb.636:                              #   in Loop: Header=BB1_576 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a2, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 12
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	move	$a4, $s0
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$fp, $s0, 0
.LBB1_637:                              #   in Loop: Header=BB1_576 Depth=1
	ori	$a0, $zero, 12
	beq	$fp, $a0, .LBB1_639
# %bb.638:                              #   in Loop: Header=BB1_576 Depth=1
	ld.bu	$a0, $s2, 32
	addi.d	$a0, $a0, -12
	sltui	$a0, $a0, 1
	addi.d	$a0, $a0, 11
.LBB1_639:                              #   in Loop: Header=BB1_576 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	move	$a3, $s0
	pcaddu18i	$ra, %call36(MakeWordTwo)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.wu	$a0, $s3, 40
	ld.w	$a1, $s2, 40
	andi	$a0, $a0, 4095
	bstrins.d	$a1, $a0, 11, 0
	st.w	$a1, $s2, 40
	ld.wu	$a0, $s3, 40
	bstrpick.d	$a0, $a0, 21, 12
	bstrins.d	$a1, $a0, 21, 12
	st.w	$a1, $s2, 40
	ld.wu	$a0, $s3, 40
	bstrpick.d	$a0, $a0, 22, 22
	bstrins.d	$a1, $a0, 22, 22
	st.w	$a1, $s2, 40
	ld.wu	$a0, $s3, 40
	bstrpick.d	$a0, $a0, 28, 23
	bstrins.d	$a1, $a0, 28, 23
	st.w	$a1, $s2, 40
	ld.w	$a0, $s3, 40
	srli.d	$a0, $a0, 31
	bstrins.d	$a1, $a0, 63, 31
	st.w	$a1, $s2, 40
	ld.wu	$a0, $s3, 40
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	and	$a1, $a1, $a2
	srli.d	$a0, $a0, 29
	bstrins.d	$a1, $a0, 30, 29
	st.w	$a1, $s2, 40
	move	$a0, $s2
	pcaddu18i	$ra, %call36(FontWordSize)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	move	$s0, $a0
	ld.bu	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$fp, $a0, %got_pc_lo12(zz_free)
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$s4, $a0, %got_pc_lo12(zz_size)
	slli.d	$a1, $a2, 3
	ldx.d	$a0, $fp, $a1
	st.w	$a2, $s4, 0
	beqz	$a0, .LBB1_641
# %bb.640:                              #   in Loop: Header=BB1_576 Depth=1
	st.d	$a0, $s6, 0
	ld.d	$a2, $a0, 0
	stx.d	$a2, $fp, $a1
	b	.LBB1_642
.LBB1_641:                              #   in Loop: Header=BB1_576 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_642:                              #   in Loop: Header=BB1_576 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $s3, 24
	st.d	$a0, $s1, 0
	st.d	$a0, $s5, 0
	st.d	$a1, $s6, 0
	beqz	$a1, .LBB1_644
# %bb.643:                              #   in Loop: Header=BB1_576 Depth=1
	ld.d	$a2, $a1, 0
	st.d	$a2, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s8, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s1, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s5, 0
	bnez	$a0, .LBB1_645
	b	.LBB1_646
.LBB1_644:                              # %.thread2116
                                        #   in Loop: Header=BB1_576 Depth=1
	st.d	$s2, $s6, 0
.LBB1_645:                              #   in Loop: Header=BB1_576 Depth=1
	ld.d	$a1, $s2, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s8, 0
	st.d	$a2, $s2, 16
	st.d	$s2, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB1_646:                              #   in Loop: Header=BB1_576 Depth=1
	ld.d	$a0, $s3, 24
	ld.d	$a1, $a0, 24
	st.d	$a0, $s1, 0
	beq	$a1, $a0, .LBB1_648
# %bb.647:                              #   in Loop: Header=BB1_576 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s5, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB1_649
.LBB1_648:                              #   in Loop: Header=BB1_576 Depth=1
	move	$a1, $zero
.LBB1_649:                              #   in Loop: Header=BB1_576 Depth=1
	pcalau12i	$a2, %got_pc_hi20(xx_tmp)
	ld.d	$s3, $a2, %got_pc_lo12(xx_tmp)
	ld.d	$a2, $a0, 8
	st.d	$a1, $s3, 0
	st.d	$a0, $s6, 0
	beq	$a2, $a0, .LBB1_651
# %bb.650:                              #   in Loop: Header=BB1_576 Depth=1
	st.d	$a2, $s5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a1, $s6, 0
	ld.d	$a0, $s5, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $s1, 0
	st.d	$a1, $a1, 8
.LBB1_651:                              #   in Loop: Header=BB1_576 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $fp, $a2
	st.d	$a0, $s6, 0
	st.w	$a1, $s4, 0
	st.d	$a2, $a0, 0
	ld.w	$a1, $s4, 0
	ld.d	$a2, $s6, 0
	ld.d	$a0, $s3, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $fp, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB1_653
# %bb.652:                              #   in Loop: Header=BB1_576 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB1_653:                              #   in Loop: Header=BB1_576 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a0, 24
	st.d	$a0, $s1, 0
	beq	$a1, $a0, .LBB1_655
# %bb.654:                              #   in Loop: Header=BB1_576 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s5, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB1_656
.LBB1_655:                              #   in Loop: Header=BB1_576 Depth=1
	move	$a1, $zero
.LBB1_656:                              #   in Loop: Header=BB1_576 Depth=1
	ld.d	$a2, $a0, 8
	st.d	$a1, $s3, 0
	st.d	$a0, $s6, 0
	beq	$a2, $a0, .LBB1_658
# %bb.657:                              #   in Loop: Header=BB1_576 Depth=1
	st.d	$a2, $s5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a1, $s6, 0
	ld.d	$a0, $s5, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $s1, 0
	st.d	$a1, $a1, 8
.LBB1_658:                              #   in Loop: Header=BB1_576 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $fp, $a2
	st.d	$a0, $s6, 0
	st.w	$a1, $s4, 0
	st.d	$a2, $a0, 0
	ld.w	$a1, $s4, 0
	ld.d	$a2, $s6, 0
	ld.d	$a0, $s3, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $fp, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB1_660
# %bb.659:                              #   in Loop: Header=BB1_576 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB1_660:                              #   in Loop: Header=BB1_576 Depth=1
	ld.d	$a0, $s7, 24
	st.d	$s7, $s1, 0
	beq	$a0, $s7, .LBB1_662
# %bb.661:                              #   in Loop: Header=BB1_576 Depth=1
	ld.d	$a1, $s7, 16
	st.d	$a0, $s5, 0
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	st.d	$s7, $s7, 24
	st.d	$s7, $s7, 16
	b	.LBB1_663
.LBB1_662:                              #   in Loop: Header=BB1_576 Depth=1
	move	$a0, $zero
.LBB1_663:                              #   in Loop: Header=BB1_576 Depth=1
	ld.d	$a1, $s7, 8
	st.d	$a0, $s3, 0
	st.d	$s7, $s6, 0
	beq	$a1, $s7, .LBB1_665
# %bb.664:                              #   in Loop: Header=BB1_576 Depth=1
	st.d	$a1, $s5, 0
	ld.d	$a0, $s7, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s5, 0
	ld.d	$a2, $a0, 0
	st.d	$a1, $a2, 8
	st.d	$a0, $a0, 0
	ld.d	$s7, $s1, 0
	st.d	$a0, $a0, 8
.LBB1_665:                              #   in Loop: Header=BB1_576 Depth=1
	ld.bu	$a0, $s7, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $s7, 33
	add.d	$a0, $s0, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $fp, $a1
	st.d	$s7, $s6, 0
	st.w	$a0, $s4, 0
	st.d	$a1, $s7, 0
	ld.w	$a1, $s4, 0
	ld.d	$a2, $s6, 0
	ld.d	$a0, $s3, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $fp, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB1_667
# %bb.666:                              #   in Loop: Header=BB1_576 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB1_667:                              #   in Loop: Header=BB1_576 Depth=1
	ld.d	$s7, $s2, 24
	move	$s3, $s2
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	b	.LBB1_627
.LBB1_668:                              # %.preheader1780
	ld.d	$s3, $s4, 8
	beq	$s3, $s4, .LBB1_718
# %bb.669:                              # %.preheader1779.lr.ph
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	ld.w	$s6, $sp, 656
	ld.w	$a0, $sp, 652
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$fp, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$s7, $a0, %got_pc_lo12(xx_link)
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$s8, $a0, %got_pc_lo12(zz_hold)
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$s1, $a0, %got_pc_lo12(zz_res)
	pcalau12i	$a0, %got_pc_hi20(zz_tmp)
	ld.d	$s5, $a0, %got_pc_lo12(zz_tmp)
	ori	$a6, $zero, 19
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
.LBB1_670:                              # %.preheader1779.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_673 Depth 2
                                        #       Child Loop BB1_674 Depth 3
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	b	.LBB1_673
.LBB1_671:                              #   in Loop: Header=BB1_673 Depth=2
	ld.w	$s6, $a1, 56
	st.w	$a0, $sp, 652
	st.w	$s6, $sp, 656
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_672:                              #   in Loop: Header=BB1_673 Depth=2
	ld.d	$s3, $s3, 8
	beq	$s3, $s4, .LBB1_709
.LBB1_673:                              # %.preheader1779
                                        #   Parent Loop BB1_670 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_674 Depth 3
	move	$s2, $s3
	.p2align	4, , 16
.LBB1_674:                              #   Parent Loop BB1_670 Depth=1
                                        #     Parent Loop BB1_673 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s2, $s2, 16
	ld.bu	$a0, $s2, 32
	beqz	$a0, .LBB1_674
# %bb.675:                              #   in Loop: Header=BB1_673 Depth=2
	addi.d	$a1, $a0, -119
	bltu	$a6, $a1, .LBB1_682
# %bb.676:                              #   in Loop: Header=BB1_673 Depth=2
	bne	$s0, $fp, .LBB1_672
# %bb.677:                              #   in Loop: Header=BB1_673 Depth=2
	ld.d	$s3, $s3, 0
	ld.d	$a0, $s3, 8
	ld.d	$a1, $a0, 8
	st.d	$a0, $s7, 0
	st.d	$a0, $s8, 0
	beq	$a1, $a0, .LBB1_679
# %bb.678:                              #   in Loop: Header=BB1_673 Depth=2
	st.d	$a1, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s8, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $s7, 0
	st.d	$a1, $a1, 8
.LBB1_679:                              #   in Loop: Header=BB1_673 Depth=2
	st.d	$a0, $s1, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$a1, $s8, 0
	beqz	$a1, .LBB1_672
# %bb.680:                              #   in Loop: Header=BB1_673 Depth=2
	beqz	$a0, .LBB1_672
# %bb.681:                              #   in Loop: Header=BB1_673 Depth=2
	ld.d	$a2, $a1, 0
	st.d	$a2, $s5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s8, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s1, 0
	st.d	$a0, $a3, 8
	b	.LBB1_672
	.p2align	4, , 16
.LBB1_682:                              #   in Loop: Header=BB1_673 Depth=2
	ld.bu	$a1, $s4, 32
	bne	$a0, $a1, .LBB1_690
# %bb.683:                              #   in Loop: Header=BB1_673 Depth=2
	move	$s4, $s0
	ld.d	$s0, $s2, 8
	ld.d	$s3, $s3, 0
	beq	$s0, $s2, .LBB1_688
# %bb.684:                              #   in Loop: Header=BB1_673 Depth=2
	ld.bu	$a0, $s0, 32
	ld.d	$fp, $s3, 8
	beqz	$a0, .LBB1_686
# %bb.685:                              #   in Loop: Header=BB1_673 Depth=2
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a5, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ori	$a6, $zero, 19
.LBB1_686:                              #   in Loop: Header=BB1_673 Depth=2
	st.d	$s0, $s1, 0
	st.d	$s2, $s8, 0
	ld.d	$a0, $s2, 0
	st.d	$a0, $s5, 0
	ld.d	$a0, $s0, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s8, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s1, 0
	st.d	$a0, $a3, 8
	st.d	$s0, $s1, 0
	st.d	$fp, $s8, 0
	beqz	$fp, .LBB1_688
# %bb.687:                              #   in Loop: Header=BB1_673 Depth=2
	ld.d	$a0, $fp, 0
	st.d	$a0, $s5, 0
	ld.d	$a0, $s0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s8, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s1, 0
	st.d	$a0, $a3, 8
.LBB1_688:                              #   in Loop: Header=BB1_673 Depth=2
	ld.d	$a0, $s2, 24
	ld.d	$a2, $a0, 24
	st.d	$a0, $s7, 0
	beq	$a2, $a0, .LBB1_697
# %bb.689:                              #   in Loop: Header=BB1_673 Depth=2
	ld.d	$a1, $a0, 16
	st.d	$a2, $s1, 0
	st.d	$a1, $a2, 16
	st.d	$a2, $a1, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB1_698
.LBB1_690:                              #   in Loop: Header=BB1_673 Depth=2
	addi.d	$a1, $a0, -11
	ori	$a2, $zero, 2
	bgeu	$a1, $a2, .LBB1_693
# %bb.691:                              #   in Loop: Header=BB1_673 Depth=2
	bnez	$s0, .LBB1_703
# %bb.692:                              #   in Loop: Header=BB1_673 Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(FontWordSize)
	jirl	$ra, $ra, 0
	ori	$a6, $zero, 19
	b	.LBB1_703
.LBB1_693:                              #   in Loop: Header=BB1_673 Depth=2
	bne	$a0, $fp, .LBB1_702
# %bb.694:                              #   in Loop: Header=BB1_673 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	bnez	$a0, .LBB1_696
# %bb.695:                              #   in Loop: Header=BB1_673 Depth=2
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a5, $a0, %pc_lo12(.L.str.22)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ori	$a6, $zero, 19
.LBB1_696:                              #   in Loop: Header=BB1_673 Depth=2
	ld.hu	$a0, $s2, 44
	andi	$a0, $a0, 512
	bnez	$a0, .LBB1_672
	b	.LBB1_705
.LBB1_697:                              #   in Loop: Header=BB1_673 Depth=2
	move	$a2, $zero
.LBB1_698:                              #   in Loop: Header=BB1_673 Depth=2
	move	$s0, $s4
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	ld.d	$a3, $a0, 8
	st.d	$a2, $a1, 0
	st.d	$a0, $s8, 0
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	beq	$a3, $a0, .LBB1_700
# %bb.699:                              #   in Loop: Header=BB1_673 Depth=2
	st.d	$a3, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	ld.d	$a2, $s8, 0
	ld.d	$a0, $s1, 0
	ld.d	$a3, $a2, 0
	st.d	$a0, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a0, $s7, 0
	st.d	$a2, $a2, 8
.LBB1_700:                              #   in Loop: Header=BB1_673 Depth=2
	ori	$fp, $zero, 1
	ld.bu	$a2, $a0, 32
	pcalau12i	$a3, %got_pc_hi20(zz_lengths)
	ld.d	$a3, $a3, %got_pc_lo12(zz_lengths)
	addi.d	$a4, $a2, -11
	sltui	$a4, $a4, 2
	addi.d	$a5, $a0, 33
	add.d	$a2, $a3, $a2
	masknez	$a2, $a2, $a4
	maskeqz	$a3, $a5, $a4
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(zz_free)
	ld.d	$a3, $a3, %got_pc_lo12(zz_free)
	pcalau12i	$a4, %got_pc_hi20(zz_size)
	ld.d	$a4, $a4, %got_pc_lo12(zz_size)
	slli.d	$a5, $a2, 3
	ldx.d	$a5, $a3, $a5
	st.d	$a0, $s8, 0
	st.w	$a2, $a4, 0
	st.d	$a5, $a0, 0
	ld.w	$a2, $a4, 0
	ld.d	$a4, $s8, 0
	ld.d	$a0, $a1, 0
	slli.d	$a1, $a2, 3
	stx.d	$a4, $a3, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB1_672
# %bb.701:                              #   in Loop: Header=BB1_673 Depth=2
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ori	$a6, $zero, 19
	b	.LBB1_672
.LBB1_702:                              #   in Loop: Header=BB1_673 Depth=2
	move	$a0, $s2
	move	$a1, $s0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	ori	$a6, $zero, 19
	move	$s2, $a0
.LBB1_703:                              #   in Loop: Header=BB1_673 Depth=2
	alsl.d	$a1, $s0, $s2, 2
	ld.w	$a0, $a1, 48
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	beqz	$a2, .LBB1_671
# %bb.704:                              #   in Loop: Header=BB1_673 Depth=2
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	slt	$a2, $a0, $a3
	masknez	$a0, $a0, $a2
	ld.w	$a1, $a1, 56
	maskeqz	$a2, $a3, $a2
	or	$a0, $a2, $a0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.w	$a0, $sp, 652
	slt	$a0, $a1, $s6
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s6, $a0
	or	$s6, $a0, $a1
	st.w	$s6, $sp, 656
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	b	.LBB1_672
.LBB1_705:                              # %.thread2128
                                        #   in Loop: Header=BB1_670 Depth=1
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.w	$a0, $s6, $a0
	ld.d	$s3, $s3, 8
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	slt	$a1, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	bne	$s3, $s4, .LBB1_670
# %bb.706:                              # %._crit_edge1916.thread.thread2146
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a5, $a0, %pc_lo12(.L.str.23)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB1_712
.LBB1_707:                              # %._crit_edge1928
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	sltu	$a0, $zero, $a0
	beqz	$s3, .LBB1_714
# %bb.708:
	alsl.d	$a1, $s0, $s3, 2
	ld.w	$a1, $a1, 56
	ld.w	$a3, $sp, 656
	ld.w	$a2, $sp, 652
	add.d	$a1, $a3, $a1
	b	.LBB1_715
.LBB1_709:                              # %._crit_edge1916
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	bnez	$a0, .LBB1_711
# %bb.710:                              # %._crit_edge1916.thread
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a5, $a0, %pc_lo12(.L.str.23)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_711:
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	bnez	$a0, .LBB1_719
.LBB1_712:
	alsl.d	$a0, $s0, $s4, 2
	st.w	$zero, $a0, 48
	ld.w	$a1, $sp, 652
	ld.w	$a2, $sp, 656
	add.w	$a1, $a2, $a1
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	slt	$a2, $a1, $a3
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	lu12i.w	$a2, 2047
	ori	$a2, $a2, 4095
	slt	$a3, $a1, $a2
	maskeqz	$a1, $a1, $a3
	masknez	$a2, $a2, $a3
	or	$a1, $a1, $a2
	st.w	$a1, $a0, 56
	b	.LBB1_474
.LBB1_713:
	move	$a0, $zero
.LBB1_714:                              # %._crit_edge1928.thread
	move	$a2, $zero
	move	$a1, $zero
	st.w	$zero, $sp, 652
.LBB1_715:
	st.w	$a1, $sp, 656
	lu12i.w	$a1, 2047
	ori	$a1, $a1, 4095
	slt	$a3, $a2, $a1
	masknez	$a4, $a1, $a3
	maskeqz	$a2, $a2, $a3
	or	$a2, $a2, $a4
	alsl.d	$a3, $s0, $s4, 2
	st.w	$a2, $a3, 48
	ld.w	$a2, $sp, 656
	slli.d	$a3, $s0, 2
	slt	$a4, $a2, $a1
	masknez	$a5, $a1, $a4
	maskeqz	$a2, $a2, $a4
	or	$a4, $a2, $a5
	addi.d	$a2, $s4, 56
	stx.w	$a4, $a2, $a3
	ld.bu	$a3, $s4, 32
	ori	$a4, $zero, 17
	bne	$a3, $a4, .LBB1_474
# %bb.716:
	beqz	$a0, .LBB1_474
# %bb.717:
	st.w	$a1, $a2, 0
	b	.LBB1_474
.LBB1_718:                              # %._crit_edge1916.thread.thread
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a5, $a0, %pc_lo12(.L.str.23)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_719:
	ld.w	$a0, $sp, 652
	alsl.d	$a1, $s0, $s4, 2
	st.w	$a0, $a1, 48
	ld.w	$a0, $sp, 656
	st.w	$a0, $a1, 56
	b	.LBB1_474
.Lfunc_end1:
	.size	MinSize, .Lfunc_end1-MinSize
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_143-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_155-.LJTI1_0
	.word	.LBB1_472-.LJTI1_0
	.word	.LBB1_58-.LJTI1_0
	.word	.LBB1_58-.LJTI1_0
	.word	.LBB1_118-.LJTI1_0
	.word	.LBB1_121-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_65-.LJTI1_0
	.word	.LBB1_65-.LJTI1_0
	.word	.LBB1_54-.LJTI1_0
	.word	.LBB1_54-.LJTI1_0
	.word	.LBB1_104-.LJTI1_0
	.word	.LBB1_128-.LJTI1_0
	.word	.LBB1_85-.LJTI1_0
	.word	.LBB1_571-.LJTI1_0
	.word	.LBB1_571-.LJTI1_0
	.word	.LBB1_28-.LJTI1_0
	.word	.LBB1_25-.LJTI1_0
	.word	.LBB1_28-.LJTI1_0
	.word	.LBB1_25-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_162-.LJTI1_0
	.word	.LBB1_170-.LJTI1_0
	.word	.LBB1_61-.LJTI1_0
	.word	.LBB1_61-.LJTI1_0
	.word	.LBB1_30-.LJTI1_0
	.word	.LBB1_30-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_158-.LJTI1_0
	.word	.LBB1_72-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_38-.LJTI1_0
	.word	.LBB1_6-.LJTI1_0
	.word	.LBB1_38-.LJTI1_0
	.word	.LBB1_6-.LJTI1_0
	.word	.LBB1_6-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_76-.LJTI1_0
	.word	.LBB1_150-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_4-.LJTI1_0
	.word	.LBB1_4-.LJTI1_0
	.word	.LBB1_4-.LJTI1_0
	.word	.LBB1_4-.LJTI1_0
.LJTI1_1:
	.word	.LBB1_177-.LJTI1_1
	.word	.LBB1_316-.LJTI1_1
	.word	.LBB1_312-.LJTI1_1
	.word	.LBB1_313-.LJTI1_1
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function KernLength
	.type	KernLength,@function
KernLength:                             # @KernLength
# %bb.0:
	pcalau12i	$a3, %got_pc_hi20(finfo)
	ld.d	$a3, $a3, %got_pc_lo12(finfo)
	ld.d	$a3, $a3, 0
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $a3, $a0
	ld.d	$a3, $a0, 40
	ld.bu	$a3, $a3, 60
	pcalau12i	$a4, %got_pc_hi20(MapTable)
	ld.d	$a4, $a4, %got_pc_lo12(MapTable)
	andi	$a3, $a3, 127
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a4, $a3
	addi.d	$a3, $a3, 2047
	addi.d	$a3, $a3, 898
	ldx.bu	$a1, $a3, $a1
	ld.d	$a4, $a0, 64
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a4, $a1
	beqz	$a1, .LBB2_5
# %bb.1:
	ldx.bu	$a2, $a3, $a2
	ld.d	$a3, $a0, 72
	.p2align	4, , 16
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	ldx.bu	$a4, $a3, $a1
	addi.d	$a1, $a1, 1
	bltu	$a2, $a4, .LBB2_2
# %bb.3:
	bne	$a4, $a2, .LBB2_5
# %bb.4:
	ld.d	$a2, $a0, 80
	add.d	$a1, $a2, $a1
	ld.bu	$a1, $a1, -1
	ld.d	$a0, $a0, 88
	slli.d	$a1, $a1, 1
	ldx.h	$a0, $a0, $a1
	ret
.LBB2_5:
	move	$a0, $zero
	ret
.Lfunc_end2:
	.size	KernLength, .Lfunc_end2-KernLength
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"SpannerAvail!"
	.size	.L.str.1, 14

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"SpannerAvailableSpace: thr_state!"
	.size	.L.str.2, 34

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"search for gap preceding %s failed, using zero"
	.size	.L.str.3, 47

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%s deleted (out of place)"
	.size	.L.str.4, 26

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"MinSize: CLOSURE has target!"
	.size	.L.str.6, 29

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"MinSize: definite non-recursive closure"
	.size	.L.str.7, 40

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.space	1
	.size	.L.str.8, 1

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"MinSize/SPAN: type(t) != HSPANNER!"
	.size	.L.str.9, 35

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"%s replaced by empty object (out of place)"
	.size	.L.str.10, 43

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"MinSize: SPANNER!"
	.size	.L.str.11, 18

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"TransferLinks: start_link!"
	.size	.L.str.12, 27

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"MinSize: BreakObject failed to fit!"
	.size	.L.str.13, 36

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"forced to enlarge %s from %s to %s"
	.size	.L.str.14, 35

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"@High"
	.size	.L.str.15, 6

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"NextDefiniteWithGap: g == nilobj!"
	.size	.L.str.16, 34

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"word %s%s is too long"
	.size	.L.str.17, 22

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"^ deleted (it may not precede this object)"
	.size	.L.str.18, 43

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"gap replaced by 0i (%c unit not allowed here)"
	.size	.L.str.19, 46

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"MinSize: NO_MODE!"
	.size	.L.str.20, 18

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"mark alignment incompatible with centring or right justification"
	.size	.L.str.21, 65

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"MinSize/VCAT/perp: !found!"
	.size	.L.str.22, 27

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"MinSize/VCAT/perp: !found (2)!"
	.size	.L.str.23, 31

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"MinSize/COL_THR: dim!"
	.size	.L.str.24, 22

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"MinSize/COL_THR: Down(x)!"
	.size	.L.str.25, 26

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"MinSize/COL_THR: GAP_OBJ!"
	.size	.L.str.26, 26

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"MinSize/ROW_THR: dim!"
	.size	.L.str.27, 22

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"MinSize/ROW_THR: Down(x)!"
	.size	.L.str.28, 26

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"MinSize/ROW_THR: GAP_OBJ!"
	.size	.L.str.29, 26

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"%[^\n\r]%*c"
	.size	.L.str.30, 10

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"%!"
	.size	.L.str.31, 3

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"%%BoundingBox:"
	.size	.L.str.32, 15

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"(atend)"
	.size	.L.str.33, 8

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"%%%%BoundingBox: %f %f %f %f"
	.size	.L.str.34, 29

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"%s deleted (cannot open file %s)"
	.size	.L.str.35, 33

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"@IncludeGraphic"
	.size	.L.str.36, 16

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"@SysIncludeGraphic"
	.size	.L.str.37, 19

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"%s given zero size (no BoundingBox line in file %s)"
	.size	.L.str.38, 52

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"lout.eps"
	.size	.L.str.39, 9

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"%s deleted (bad first line in file %s)"
	.size	.L.str.40, 39

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"%s given zero size (bad BoundingBox line in file %s)"
	.size	.L.str.41, 53

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"assert failed in %s %s"
	.size	.L.str.42, 23

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"MinSize"
	.size	.L.str.43, 8

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"MinSize: back(x, dim) < 0!"
	.size	.L.str.44, 27

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"MinSize: fwd(x, dim) < 0!"
	.size	.L.str.45, 26

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"FindSpannerGap: type(*res)!"
	.size	.L.str.46, 28

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"FindSpannerGap (HEAD): type(*res)!"
	.size	.L.str.47, 35

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"BuildSpanner: spanobj!"
	.size	.L.str.49, 23

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"%s deleted (not in column)"
	.size	.L.str.50, 27

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"%s symbol out of place"
	.size	.L.str.51, 23

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"BuildSpanner: type(prnt)!"
	.size	.L.str.52, 26

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"%s deleted (not in row)"
	.size	.L.str.53, 24

	.section	".note.GNU-stack","",@progbits
	.addrsig
