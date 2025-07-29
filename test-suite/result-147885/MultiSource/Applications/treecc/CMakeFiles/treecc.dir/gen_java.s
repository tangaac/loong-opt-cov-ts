	.file	"gen_java.c"
	.text
	.p2align	5                               # -- Begin function Java_GenStart
	.type	Java_GenStart,@function
Java_GenStart:                          # @Java_GenStart
# %bb.0:
	move	$a3, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 48
	ldx.hu	$a0, $a3, $a0
	andi	$a4, $a0, 1024
	move	$a0, $a1
	beqz	$a4, .LBB0_3
# %bb.1:
	ldptr.w	$a1, $a3, 8276
	ori	$a3, $zero, 3
	bne	$a1, $a3, .LBB0_3
# %bb.2:
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a4, $a1, %pc_lo12(.L.str)
	ld.d	$a3, $a2, 8
	bnez	$a3, .LBB0_4
	b	.LBB0_5
.LBB0_3:
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a4, $a1, %pc_lo12(.L.str.1)
	ld.d	$a3, $a2, 8
	beqz	$a3, .LBB0_5
.LBB0_4:
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $a4
	pcaddu18i	$t8, %call36(TreeCCStreamPrint)
	jr	$t8
.LBB0_5:
	ld.d	$a3, $a2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $a4
	pcaddu18i	$t8, %call36(TreeCCStreamPrint)
	jr	$t8
.Lfunc_end0:
	.size	Java_GenStart, .Lfunc_end0-Java_GenStart
                                        # -- End function
	.p2align	5                               # -- Begin function Java_GenEntry
	.type	Java_GenEntry,@function
Java_GenEntry:                          # @Java_GenEntry
# %bb.0:
	addi.w	$a3, $zero, -1
	pcaddu18i	$t8, %call36(JavaGenEntry)
	jr	$t8
.Lfunc_end1:
	.size	Java_GenEntry, .Lfunc_end1-Java_GenEntry
                                        # -- End function
	.p2align	5                               # -- Begin function Java_GenSplitEntry
	.type	Java_GenSplitEntry,@function
Java_GenSplitEntry:                     # @Java_GenSplitEntry
# %bb.0:
	pcaddu18i	$t8, %call36(JavaGenEntry)
	jr	$t8
.Lfunc_end2:
	.size	Java_GenSplitEntry, .Lfunc_end2-Java_GenSplitEntry
                                        # -- End function
	.p2align	5                               # -- Begin function Java_GenSwitchHead
	.type	Java_GenSwitchHead,@function
Java_GenSwitchHead:                     # @Java_GenSwitchHead
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
	move	$s2, $a4
	move	$s0, $a3
	move	$s1, $a2
	move	$fp, $a1
	slli.d	$a0, $a3, 1
	ori	$s6, $zero, 2
	alsl.w	$s5, $a3, $s6, 1
	ori	$a1, $zero, 1
	addi.d	$s4, $a0, 6
	move	$a0, $s5
	blt	$a3, $a1, .LBB3_4
# %bb.1:                                # %.lr.ph.i.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$s3, $a0, %pc_lo12(.L.str.16)
	ori	$s8, $zero, 7
	move	$s7, $s4
	.p2align	4, , 16
.LBB3_2:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	addi.w	$s7, $s7, -4
	bltu	$s8, $s7, .LBB3_2
# %bb.3:                                # %._crit_edge.i.loopexit
	addi.d	$a0, $s7, -4
.LBB3_4:                                # %._crit_edge.i
	addi.w	$a0, $a0, -1
	bltu	$s6, $a0, .LBB3_6
# %bb.5:                                # %switch.lookup
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.Lswitch.table.Java_GenEndSwitch.6)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table.Java_GenEndSwitch.6)
	ldx.d	$a1, $a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB3_6:                                # %Indent.exit
	sltui	$a0, $s2, 1
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.14)
	addi.d	$a2, $a2, %pc_lo12(.L.str.14)
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
	move	$a0, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB3_10
# %bb.7:                                # %.lr.ph.i13.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$s0, $a0, %pc_lo12(.L.str.16)
	ori	$s1, $zero, 7
	.p2align	4, , 16
.LBB3_8:                                # %.lr.ph.i13
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -4
	bltu	$s1, $s4, .LBB3_8
# %bb.9:                                # %._crit_edge.i9.loopexit
	addi.d	$s5, $s4, -4
.LBB3_10:                               # %._crit_edge.i9
	addi.w	$a0, $s5, -1
	ori	$a1, $zero, 2
	bltu	$a1, $a0, .LBB3_12
# %bb.11:                               # %switch.lookup20
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.Lswitch.table.Java_GenEndSwitch.6)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table.Java_GenEndSwitch.6)
	ldx.d	$a1, $a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB3_12:                               # %Indent.exit15
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(TreeCCStreamPrint)
	jr	$t8
.Lfunc_end3:
	.size	Java_GenSwitchHead, .Lfunc_end3-Java_GenSwitchHead
                                        # -- End function
	.p2align	5                               # -- Begin function Java_GenSelector
	.type	Java_GenSelector,@function
Java_GenSelector:                       # @Java_GenSelector
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a2
	ld.wu	$a0, $a2, 40
	andi	$a2, $a0, 16
	move	$fp, $a1
	bnez	$a2, .LBB4_8
# %bb.1:
	andi	$a0, $a0, 8
	bnez	$a0, .LBB4_14
# %bb.2:
	ori	$a0, $zero, 1
	blt	$a3, $a0, .LBB4_16
# %bb.3:                                # %.lr.ph.i14.preheader
	slli.d	$a0, $a3, 1
	addi.d	$s2, $a0, 7
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$s1, $a0, %pc_lo12(.L.str.16)
	ori	$s3, $zero, 7
	.p2align	4, , 16
.LBB4_4:                                # %.lr.ph.i14
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, -4
	bltu	$s3, $s2, .LBB4_4
# %bb.5:                                # %._crit_edge.i10.loopexit
	addi.d	$a0, $s2, -4
	addi.w	$a0, $a0, -1
	ori	$a1, $zero, 2
	bltu	$a1, $a0, .LBB4_7
.LBB4_6:                                # %switch.lookup21
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.Lswitch.table.Java_GenEndSwitch.6)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table.Java_GenEndSwitch.6)
	ldx.d	$a1, $a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB4_7:                                # %Indent.exit16
	ld.d	$a2, $s0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(TreeCCStreamPrint)
	jr	$t8
.LBB4_8:
	ori	$a0, $zero, 1
	blt	$a3, $a0, .LBB4_15
# %bb.9:                                # %.lr.ph.i.preheader
	slli.d	$a0, $a3, 1
	addi.d	$s2, $a0, 7
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$s1, $a0, %pc_lo12(.L.str.16)
	ori	$s3, $zero, 7
	.p2align	4, , 16
.LBB4_10:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, -4
	bltu	$s3, $s2, .LBB4_10
# %bb.11:                               # %._crit_edge.i.loopexit
	addi.d	$a0, $s2, -4
	addi.w	$a0, $a0, -1
	ori	$a1, $zero, 2
	bltu	$a1, $a0, .LBB4_13
.LBB4_12:                               # %switch.lookup
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.Lswitch.table.Java_GenEndSwitch.6)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table.Java_GenEndSwitch.6)
	ldx.d	$a1, $a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB4_13:                               # %Indent.exit
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 32
	ld.d	$a3, $s0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(TreeCCStreamPrint)
	jr	$t8
.LBB4_14:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB4_15:
	ori	$a0, $zero, 3
	alsl.w	$a0, $a3, $a0, 1
	addi.w	$a0, $a0, -1
	ori	$a1, $zero, 2
	bgeu	$a1, $a0, .LBB4_12
	b	.LBB4_13
.LBB4_16:
	ori	$a0, $zero, 3
	alsl.w	$a0, $a3, $a0, 1
	addi.w	$a0, $a0, -1
	ori	$a1, $zero, 2
	bgeu	$a1, $a0, .LBB4_6
	b	.LBB4_7
.Lfunc_end4:
	.size	Java_GenSelector, .Lfunc_end4-Java_GenSelector
                                        # -- End function
	.p2align	5                               # -- Begin function Java_GenEndSelectors
	.type	Java_GenEndSelectors,@function
Java_GenEndSelectors:                   # @Java_GenEndSelectors
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 1
	move	$fp, $a1
	blt	$a2, $a0, .LBB5_6
# %bb.1:                                # %.lr.ph.i.preheader
	slli.d	$a0, $a2, 1
	addi.d	$s1, $a0, 7
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$s0, $a0, %pc_lo12(.L.str.16)
	ori	$s2, $zero, 7
	.p2align	4, , 16
.LBB5_2:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, -4
	bltu	$s2, $s1, .LBB5_2
# %bb.3:                                # %._crit_edge.i.loopexit
	addi.d	$a0, $s1, -4
	addi.w	$a0, $a0, -1
	ori	$a1, $zero, 2
	bltu	$a1, $a0, .LBB5_5
.LBB5_4:                                # %switch.lookup
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.Lswitch.table.Java_GenEndSwitch.6)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table.Java_GenEndSwitch.6)
	ldx.d	$a1, $a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB5_5:                                # %Indent.exit
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(TreeCCStreamPrint)
	jr	$t8
.LBB5_6:
	ori	$a0, $zero, 3
	alsl.w	$a0, $a2, $a0, 1
	addi.w	$a0, $a0, -1
	ori	$a1, $zero, 2
	bgeu	$a1, $a0, .LBB5_4
	b	.LBB5_5
.Lfunc_end5:
	.size	Java_GenEndSelectors, .Lfunc_end5-Java_GenEndSelectors
                                        # -- End function
	.p2align	5                               # -- Begin function Java_GenCaseFunc
	.type	Java_GenCaseFunc,@function
Java_GenCaseFunc:                       # @Java_GenCaseFunc
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
	move	$s1, $a2
	ld.d	$a2, $a2, 16
	ld.d	$s3, $a2, 16
	move	$s2, $a3
	move	$fp, $a1
	move	$s0, $a0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(TreeCCNodeFind)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_3
# %bb.1:
	ld.bu	$a0, $a0, 40
	andi	$a0, $a0, 8
	beqz	$a0, .LBB6_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$s3, $a0, %pc_lo12(.L.str.12)
.LBB6_3:                                # %ConvertType.exit
	ld.d	$a0, $s1, 16
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	move	$a0, $fp
	move	$a2, $s3
	move	$a4, $s2
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a0, $s1, 16
	ld.d	$s3, $a0, 32
	beqz	$s3, .LBB6_34
# %bb.4:
	ld.bu	$a0, $s3, 16
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s7, $a1, 0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB6_6
# %bb.5:
	addi.d	$a0, $s3, 8
	b	.LBB6_7
.LBB6_6:
	ld.d	$a0, $s7, 0
	ld.bu	$a1, $a0, 40
	andi	$a1, $a1, 24
	sltui	$a1, $a1, 1
	addi.d	$a0, $a0, 32
	addi.d	$a2, $s3, 8
	ld.d	$s7, $s7, 8
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
.LBB6_7:
	ld.d	$s2, $a0, 0
	ld.d	$a3, $s3, 0
	lu12i.w	$a0, 2
	ori	$s8, $a0, 84
	ldx.w	$a0, $s0, $s8
	ori	$a1, $zero, 3
	beqz	$a3, .LBB6_14
# %bb.8:
	beq	$a0, $a1, .LBB6_13
# %bb.9:
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(TreeCCNodeFind)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_12
# %bb.10:
	ld.bu	$a0, $a0, 40
	andi	$a0, $a0, 8
	beqz	$a0, .LBB6_12
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$s2, $a0, %pc_lo12(.L.str.12)
.LBB6_12:                               # %ConvertType.exit64.peel
	ld.d	$a3, $s3, 0
.LBB6_13:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	move	$a0, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ori	$s2, $zero, 1
	ld.d	$s1, $s3, 24
	bnez	$s1, .LBB6_19
	b	.LBB6_34
.LBB6_14:
	beq	$a0, $a1, .LBB6_18
# %bb.15:
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(TreeCCNodeFind)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_18
# %bb.16:
	ld.bu	$a0, $a0, 40
	andi	$a0, $a0, 8
	beqz	$a0, .LBB6_18
# %bb.17:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$s2, $a0, %pc_lo12(.L.str.12)
.LBB6_18:
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	ori	$a3, $zero, 1
	move	$a0, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ori	$s2, $zero, 2
	ld.d	$s1, $s3, 24
	beqz	$s1, .LBB6_34
.LBB6_19:                               # %.peel.next.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s3, $a0, %pc_lo12(.L.str.5)
	ori	$s4, $zero, 3
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$s5, $a0, %pc_lo12(.L.str.23)
	b	.LBB6_21
	.p2align	4, , 16
.LBB6_20:                               #   in Loop: Header=BB6_21 Depth=1
	move	$a0, $fp
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 24
	beqz	$s1, .LBB6_34
.LBB6_21:                               # %.peel.next
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s1, 16
	andi	$a1, $a0, 1
	addi.d	$a0, $s1, 8
	beqz	$a1, .LBB6_23
# %bb.22:                               #   in Loop: Header=BB6_21 Depth=1
	ld.d	$a1, $s7, 0
	ld.bu	$a2, $a1, 40
	andi	$a2, $a2, 24
	sltui	$a2, $a2, 1
	addi.d	$a1, $a1, 32
	ld.d	$s7, $s7, 8
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
.LBB6_23:                               #   in Loop: Header=BB6_21 Depth=1
	ld.d	$s6, $a0, 0
	ld.d	$a3, $s1, 0
	ldx.w	$a0, $s0, $s8
	beqz	$a3, .LBB6_29
# %bb.24:                               #   in Loop: Header=BB6_21 Depth=1
	beq	$a0, $s4, .LBB6_20
# %bb.25:                               #   in Loop: Header=BB6_21 Depth=1
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(TreeCCNodeFind)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_27
# %bb.26:                               #   in Loop: Header=BB6_21 Depth=1
	ld.bu	$a0, $a0, 40
	andi	$a0, $a0, 8
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	bnez	$a0, .LBB6_28
.LBB6_27:                               #   in Loop: Header=BB6_21 Depth=1
	move	$a2, $s6
.LBB6_28:                               # %ConvertType.exit64
                                        #   in Loop: Header=BB6_21 Depth=1
	ld.d	$a3, $s1, 0
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 24
	bnez	$s1, .LBB6_21
	b	.LBB6_34
	.p2align	4, , 16
.LBB6_29:                               #   in Loop: Header=BB6_21 Depth=1
	beq	$a0, $s4, .LBB6_32
# %bb.30:                               #   in Loop: Header=BB6_21 Depth=1
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(TreeCCNodeFind)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_32
# %bb.31:                               #   in Loop: Header=BB6_21 Depth=1
	ld.bu	$a0, $a0, 40
	andi	$a0, $a0, 8
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	bnez	$a0, .LBB6_33
	.p2align	4, , 16
.LBB6_32:                               #   in Loop: Header=BB6_21 Depth=1
	move	$a2, $s6
.LBB6_33:                               # %ConvertType.exit68
                                        #   in Loop: Header=BB6_21 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	move	$a3, $s2
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, 1
	ld.d	$s1, $s1, 24
	bnez	$s1, .LBB6_21
.LBB6_34:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $s0, 8276
	ori	$a1, $zero, 3
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	bne	$a0, $a1, .LBB6_36
# %bb.35:
	ld.d	$a1, $s1, 56
	ld.d	$a2, $s1, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamLine)
	jirl	$ra, $ra, 0
.LBB6_36:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 8
	beqz	$a1, .LBB6_38
# %bb.37:
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamCodeIndent)
	jirl	$ra, $ra, 0
.LBB6_38:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $s0, 8276
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB6_40
# %bb.39:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamFixLine)
	jirl	$ra, $ra, 0
.LBB6_40:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(TreeCCStreamPrint)
	jr	$t8
.Lfunc_end6:
	.size	Java_GenCaseFunc, .Lfunc_end6-Java_GenCaseFunc
                                        # -- End function
	.p2align	5                               # -- Begin function Java_GenCaseCall
	.type	Java_GenCaseCall,@function
Java_GenCaseCall:                       # @Java_GenCaseCall
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
	move	$s1, $a3
	move	$s0, $a2
	move	$fp, $a1
	bltz	$a4, .LBB7_12
# %bb.1:                                # %.lr.ph.i.preheader
	slli.d	$a0, $a4, 1
	addi.d	$s3, $a0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$s2, $a0, %pc_lo12(.L.str.16)
	ori	$s4, $zero, 7
	.p2align	4, , 16
.LBB7_2:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, -4
	bltu	$s4, $s3, .LBB7_2
# %bb.3:                                # %._crit_edge.i.loopexit
	addi.d	$a0, $s3, -4
	addi.w	$a0, $a0, -1
	ori	$a1, $zero, 2
	bltu	$a1, $a0, .LBB7_5
.LBB7_4:                                # %switch.lookup
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.Lswitch.table.Java_GenEndSwitch.6)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table.Java_GenEndSwitch.6)
	ldx.d	$a1, $a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB7_5:                                # %Indent.exit
	ld.d	$s2, $s0, 16
	ld.d	$a0, $s2, 16
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_7
# %bb.6:
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 16
.LBB7_7:
	ld.d	$a2, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	move	$a0, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	ld.d	$s1, $a0, 32
	beqz	$s1, .LBB7_30
# %bb.8:                                # %.lr.ph.preheader._crit_edge
	ld.bu	$a0, $s1, 16
	ld.d	$s6, $s0, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB7_10
# %bb.9:
	ld.d	$a0, $s6, 0
	ld.bu	$a1, $a0, 40
	andi	$a1, $a1, 24
	beqz	$a1, .LBB7_13
.LBB7_10:
	ld.d	$a2, $s1, 0
	beqz	$a2, .LBB7_14
.LBB7_11:
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 1
	ld.bu	$a0, $s1, 16
	andi	$a0, $a0, 1
	bnez	$a0, .LBB7_15
	b	.LBB7_18
.LBB7_12:
	ori	$a0, $zero, 4
	alsl.w	$a0, $a4, $a0, 1
	addi.w	$a0, $a0, -1
	ori	$a1, $zero, 2
	bgeu	$a1, $a0, .LBB7_4
	b	.LBB7_5
.LBB7_13:
	ld.d	$a2, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, 0
	bnez	$a2, .LBB7_11
.LBB7_14:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 2
	ld.bu	$a0, $s1, 16
	andi	$a0, $a0, 1
	beqz	$a0, .LBB7_18
.LBB7_15:
	ld.d	$a0, $s6, 0
	ld.bu	$a0, $a0, 40
	andi	$a0, $a0, 24
	bnez	$a0, .LBB7_17
# %bb.16:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB7_17:
	ld.d	$s6, $s6, 8
.LBB7_18:
	ld.d	$s7, $s1, 24
	beqz	$s7, .LBB7_30
# %bb.19:                               # %.lr.ph.peel.next.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s1, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$s2, $a0, %pc_lo12(.L.str.8)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$s3, $a0, %pc_lo12(.L.str.9)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s4, $a0, %pc_lo12(.L.str.7)
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$s5, $a0, %pc_lo12(.L.str.31)
	b	.LBB7_22
	.p2align	4, , 16
.LBB7_20:                               #   in Loop: Header=BB7_22 Depth=1
	ld.d	$s6, $s6, 8
.LBB7_21:                               #   in Loop: Header=BB7_22 Depth=1
	ld.d	$s7, $s7, 24
	beqz	$s7, .LBB7_30
.LBB7_22:                               # %.lr.ph.peel.next
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s7, 16
	andi	$a0, $a0, 1
	beqz	$a0, .LBB7_24
# %bb.23:                               #   in Loop: Header=BB7_22 Depth=1
	ld.d	$a0, $s6, 0
	ld.bu	$a1, $a0, 40
	andi	$a1, $a1, 24
	beqz	$a1, .LBB7_26
.LBB7_24:                               #   in Loop: Header=BB7_22 Depth=1
	ld.d	$a2, $s7, 0
	beqz	$a2, .LBB7_27
.LBB7_25:                               #   in Loop: Header=BB7_22 Depth=1
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s7, 16
	andi	$a0, $a0, 1
	beqz	$a0, .LBB7_21
	b	.LBB7_28
.LBB7_26:                               #   in Loop: Header=BB7_22 Depth=1
	ld.d	$a2, $a0, 32
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s7, 0
	bnez	$a2, .LBB7_25
	.p2align	4, , 16
.LBB7_27:                               #   in Loop: Header=BB7_22 Depth=1
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, 1
	ld.bu	$a0, $s7, 16
	andi	$a0, $a0, 1
	beqz	$a0, .LBB7_21
.LBB7_28:                               #   in Loop: Header=BB7_22 Depth=1
	ld.d	$a0, $s6, 0
	ld.bu	$a0, $a0, 40
	andi	$a0, $a0, 24
	bnez	$a0, .LBB7_20
# %bb.29:                               #   in Loop: Header=BB7_22 Depth=1
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	b	.LBB7_20
.LBB7_30:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(TreeCCStreamPrint)
	jr	$t8
.Lfunc_end7:
	.size	Java_GenCaseCall, .Lfunc_end7-Java_GenCaseCall
                                        # -- End function
	.p2align	5                               # -- Begin function Java_GenCaseInline
	.type	Java_GenCaseInline,@function
Java_GenCaseInline:                     # @Java_GenCaseInline
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
	move	$s1, $a2
	ld.d	$a2, $a2, 16
	ld.d	$s7, $a2, 32
	move	$s2, $a3
	move	$fp, $a1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	slli.d	$a0, $a3, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	beqz	$s7, .LBB8_22
# %bb.1:                                # %.lr.ph
	ld.d	$s8, $s1, 0
	bltz	$s2, .LBB8_13
# %bb.2:                                # %.lr.ph.split.us.preheader
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.d	$s4, $a0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$s3, $a0, %pc_lo12(.L.str.16)
	ori	$s0, $zero, 7
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$s5, $a0, %pc_lo12(.L.str.33)
	b	.LBB8_6
.LBB8_3:                                # %Indent.exit.us
                                        #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a0, $s8, 0
	ld.d	$a2, $a0, 32
	ld.d	$a3, $s7, 0
	move	$a0, $fp
	move	$a1, $s5
	move	$a4, $a2
	move	$a5, $a3
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB8_4:                                #   in Loop: Header=BB8_6 Depth=1
	ld.d	$s8, $s8, 8
.LBB8_5:                                #   in Loop: Header=BB8_6 Depth=1
	ld.d	$s7, $s7, 24
	beqz	$s7, .LBB8_22
.LBB8_6:                                # %.lr.ph.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_10 Depth 2
	ld.bu	$a0, $s7, 16
	andi	$a0, $a0, 1
	beqz	$a0, .LBB8_5
# %bb.7:                                #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB8_4
# %bb.8:                                #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a0, $s8, 0
	ld.bu	$a0, $a0, 40
	andi	$a0, $a0, 24
	bnez	$a0, .LBB8_4
# %bb.9:                                # %.lr.ph.i.us.preheader
                                        #   in Loop: Header=BB8_6 Depth=1
	move	$s6, $s4
	.p2align	4, , 16
.LBB8_10:                               # %.lr.ph.i.us
                                        #   Parent Loop BB8_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	addi.w	$s6, $s6, -4
	bltu	$s0, $s6, .LBB8_10
# %bb.11:                               # %._crit_edge.i.loopexit.us
                                        #   in Loop: Header=BB8_6 Depth=1
	ori	$a0, $zero, 6
	bne	$s6, $a0, .LBB8_3
# %bb.12:                               # %.sink.split.i.us
                                        #   in Loop: Header=BB8_6 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	b	.LBB8_3
.LBB8_13:
	ori	$a0, $zero, 4
	alsl.w	$s0, $s2, $a0, 1
	ori	$s5, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$s3, $a0, %pc_lo12(.L.str.18)
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$s4, $a0, %pc_lo12(.L.str.33)
	b	.LBB8_17
.LBB8_14:                               # %Indent.exit
                                        #   in Loop: Header=BB8_17 Depth=1
	ld.d	$a2, $a0, 32
	move	$a0, $fp
	move	$a1, $s4
	move	$a4, $a2
	move	$a5, $a3
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB8_15:                               #   in Loop: Header=BB8_17 Depth=1
	ld.d	$s8, $s8, 8
.LBB8_16:                               #   in Loop: Header=BB8_17 Depth=1
	ld.d	$s7, $s7, 24
	beqz	$s7, .LBB8_22
.LBB8_17:                               # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s7, 16
	andi	$a0, $a0, 1
	beqz	$a0, .LBB8_16
# %bb.18:                               #   in Loop: Header=BB8_17 Depth=1
	ld.d	$a3, $s7, 0
	beqz	$a3, .LBB8_15
# %bb.19:                               #   in Loop: Header=BB8_17 Depth=1
	ld.d	$a0, $s8, 0
	ld.bu	$a1, $a0, 40
	andi	$a1, $a1, 24
	bnez	$a1, .LBB8_15
# %bb.20:                               # %._crit_edge.i
                                        #   in Loop: Header=BB8_17 Depth=1
	bne	$s0, $s5, .LBB8_14
# %bb.21:                               # %.sink.split.i
                                        #   in Loop: Header=BB8_17 Depth=1
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ld.d	$a3, $s7, 0
	b	.LBB8_14
.LBB8_22:                               # %._crit_edge
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	ldptr.w	$a0, $s5, 8276
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB8_24
# %bb.23:
	ld.d	$a1, $s1, 56
	ld.d	$a2, $s1, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamLine)
	jirl	$ra, $ra, 0
.LBB8_24:
	ori	$a0, $zero, 4
	alsl.w	$s3, $s2, $a0, 1
	move	$a0, $s3
	bltz	$s2, .LBB8_28
# %bb.25:                               # %.lr.ph.i39.preheader
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.d	$s0, $a0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$s2, $a0, %pc_lo12(.L.str.16)
	ori	$s4, $zero, 7
	.p2align	4, , 16
.LBB8_26:                               # %.lr.ph.i39
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, -4
	bltu	$s4, $s0, .LBB8_26
# %bb.27:                               # %._crit_edge.i35.loopexit
	addi.d	$a0, $s0, -4
.LBB8_28:                               # %._crit_edge.i35
	addi.w	$a0, $a0, -1
	ori	$a1, $zero, 2
	bltu	$a1, $a0, .LBB8_30
# %bb.29:                               # %switch.lookup
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.Lswitch.table.Java_GenEndSwitch.6)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table.Java_GenEndSwitch.6)
	ldx.d	$a1, $a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB8_30:                               # %Indent.exit41
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 8
	beqz	$a1, .LBB8_32
# %bb.31:
	move	$a0, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(TreeCCStreamCodeIndent)
	jirl	$ra, $ra, 0
.LBB8_32:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $s5, 8276
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB8_34
# %bb.33:
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(TreeCCStreamFixLine)
	jr	$t8
.LBB8_34:
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
.Lfunc_end8:
	.size	Java_GenCaseInline, .Lfunc_end8-Java_GenCaseInline
                                        # -- End function
	.p2align	5                               # -- Begin function Java_GenCaseSplit
	.type	Java_GenCaseSplit,@function
Java_GenCaseSplit:                      # @Java_GenCaseSplit
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
	move	$s1, $a3
	move	$s0, $a2
	move	$fp, $a1
	bltz	$a4, .LBB9_12
# %bb.1:                                # %.lr.ph.i.preheader
	slli.d	$a0, $a4, 1
	addi.d	$s3, $a0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$s2, $a0, %pc_lo12(.L.str.16)
	ori	$s4, $zero, 7
	.p2align	4, , 16
.LBB9_2:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, -4
	bltu	$s4, $s3, .LBB9_2
# %bb.3:                                # %._crit_edge.i.loopexit
	addi.d	$a0, $s3, -4
	addi.w	$a0, $a0, -1
	ori	$a1, $zero, 2
	bltu	$a1, $a0, .LBB9_5
.LBB9_4:                                # %switch.lookup
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.Lswitch.table.Java_GenEndSwitch.6)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table.Java_GenEndSwitch.6)
	ldx.d	$a1, $a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB9_5:                                # %Indent.exit
	ld.d	$s2, $s0, 16
	ld.d	$a0, $s2, 16
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_7
# %bb.6:
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 16
.LBB9_7:
	ld.d	$a2, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	move	$a0, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	ld.d	$s1, $a0, 32
	beqz	$s1, .LBB9_30
# %bb.8:                                # %.lr.ph.preheader._crit_edge
	ld.bu	$a0, $s1, 16
	ld.d	$s6, $s0, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB9_10
# %bb.9:
	ld.d	$a0, $s6, 0
	ld.bu	$a1, $a0, 40
	andi	$a1, $a1, 24
	beqz	$a1, .LBB9_13
.LBB9_10:
	ld.d	$a2, $s1, 0
	beqz	$a2, .LBB9_14
.LBB9_11:
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 1
	ld.bu	$a0, $s1, 16
	andi	$a0, $a0, 1
	bnez	$a0, .LBB9_15
	b	.LBB9_18
.LBB9_12:
	ori	$a0, $zero, 4
	alsl.w	$a0, $a4, $a0, 1
	addi.w	$a0, $a0, -1
	ori	$a1, $zero, 2
	bgeu	$a1, $a0, .LBB9_4
	b	.LBB9_5
.LBB9_13:
	ld.d	$a2, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, 0
	bnez	$a2, .LBB9_11
.LBB9_14:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 2
	ld.bu	$a0, $s1, 16
	andi	$a0, $a0, 1
	beqz	$a0, .LBB9_18
.LBB9_15:
	ld.d	$a0, $s6, 0
	ld.bu	$a0, $a0, 40
	andi	$a0, $a0, 24
	bnez	$a0, .LBB9_17
# %bb.16:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB9_17:
	ld.d	$s6, $s6, 8
.LBB9_18:
	ld.d	$s7, $s1, 24
	beqz	$s7, .LBB9_30
# %bb.19:                               # %.lr.ph.peel.next.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s1, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$s2, $a0, %pc_lo12(.L.str.8)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$s3, $a0, %pc_lo12(.L.str.9)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s4, $a0, %pc_lo12(.L.str.7)
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$s5, $a0, %pc_lo12(.L.str.31)
	b	.LBB9_22
	.p2align	4, , 16
.LBB9_20:                               #   in Loop: Header=BB9_22 Depth=1
	ld.d	$s6, $s6, 8
.LBB9_21:                               #   in Loop: Header=BB9_22 Depth=1
	ld.d	$s7, $s7, 24
	beqz	$s7, .LBB9_30
.LBB9_22:                               # %.lr.ph.peel.next
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s7, 16
	andi	$a0, $a0, 1
	beqz	$a0, .LBB9_24
# %bb.23:                               #   in Loop: Header=BB9_22 Depth=1
	ld.d	$a0, $s6, 0
	ld.bu	$a1, $a0, 40
	andi	$a1, $a1, 24
	beqz	$a1, .LBB9_26
.LBB9_24:                               #   in Loop: Header=BB9_22 Depth=1
	ld.d	$a2, $s7, 0
	beqz	$a2, .LBB9_27
.LBB9_25:                               #   in Loop: Header=BB9_22 Depth=1
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s7, 16
	andi	$a0, $a0, 1
	beqz	$a0, .LBB9_21
	b	.LBB9_28
.LBB9_26:                               #   in Loop: Header=BB9_22 Depth=1
	ld.d	$a2, $a0, 32
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s7, 0
	bnez	$a2, .LBB9_25
	.p2align	4, , 16
.LBB9_27:                               #   in Loop: Header=BB9_22 Depth=1
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, 1
	ld.bu	$a0, $s7, 16
	andi	$a0, $a0, 1
	beqz	$a0, .LBB9_21
.LBB9_28:                               #   in Loop: Header=BB9_22 Depth=1
	ld.d	$a0, $s6, 0
	ld.bu	$a0, $a0, 40
	andi	$a0, $a0, 24
	bnez	$a0, .LBB9_20
# %bb.29:                               #   in Loop: Header=BB9_22 Depth=1
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	b	.LBB9_20
.LBB9_30:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(TreeCCStreamPrint)
	jr	$t8
.Lfunc_end9:
	.size	Java_GenCaseSplit, .Lfunc_end9-Java_GenCaseSplit
                                        # -- End function
	.p2align	5                               # -- Begin function Java_GenEndCase
	.type	Java_GenEndCase,@function
Java_GenEndCase:                        # @Java_GenEndCase
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	st.d	$s5, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a2
	move	$fp, $a1
	slli.d	$a0, $a2, 1
	ori	$a1, $zero, 3
	alsl.w	$s3, $a2, $a1, 1
	ori	$a1, $zero, 1
	addi.d	$s2, $a0, 7
	move	$a0, $s3
	blt	$a2, $a1, .LBB10_4
# %bb.1:                                # %.lr.ph.i.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$s1, $a0, %pc_lo12(.L.str.16)
	ori	$s5, $zero, 7
	move	$s4, $s2
	.p2align	4, , 16
.LBB10_2:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -4
	bltu	$s5, $s4, .LBB10_2
# %bb.3:                                # %._crit_edge.i.loopexit
	addi.d	$a0, $s4, -4
.LBB10_4:                               # %._crit_edge.i
	addi.w	$a0, $a0, -1
	ori	$a1, $zero, 2
	bltu	$a1, $a0, .LBB10_6
# %bb.5:                                # %switch.lookup
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.Lswitch.table.Java_GenEndSwitch.6)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table.Java_GenEndSwitch.6)
	ldx.d	$a1, $a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB10_6:                               # %Indent.exit
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB10_10
# %bb.7:                                # %.lr.ph.i9.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$s0, $a0, %pc_lo12(.L.str.16)
	ori	$s1, $zero, 7
	.p2align	4, , 16
.LBB10_8:                               # %.lr.ph.i9
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, -4
	bltu	$s1, $s2, .LBB10_8
# %bb.9:                                # %._crit_edge.i5.loopexit
	addi.d	$s3, $s2, -4
.LBB10_10:                              # %._crit_edge.i5
	addi.w	$a0, $s3, -1
	ori	$a1, $zero, 2
	bltu	$a1, $a0, .LBB10_12
# %bb.11:                               # %switch.lookup16
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.Lswitch.table.Java_GenEndSwitch.6)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table.Java_GenEndSwitch.6)
	ldx.d	$a1, $a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB10_12:                              # %Indent.exit11
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a1, $a0, %pc_lo12(.L.str.36)
	move	$a0, $fp
	ld.d	$s5, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(TreeCCStreamPrint)
	jr	$t8
.Lfunc_end10:
	.size	Java_GenEndCase, .Lfunc_end10-Java_GenEndCase
                                        # -- End function
	.p2align	5                               # -- Begin function Java_GenEndSwitch
	.type	Java_GenEndSwitch,@function
Java_GenEndSwitch:                      # @Java_GenEndSwitch
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a2
	move	$fp, $a1
	ori	$a0, $zero, 1
	slli.d	$s2, $a2, 1
	blt	$a2, $a0, .LBB11_11
# %bb.1:                                # %.lr.ph.i.preheader
	addi.d	$s3, $s2, 7
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$s1, $a0, %pc_lo12(.L.str.16)
	ori	$s4, $zero, 7
	.p2align	4, , 16
.LBB11_2:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, -4
	bltu	$s4, $s3, .LBB11_2
# %bb.3:                                # %._crit_edge.i.loopexit
	addi.d	$a0, $s3, -4
	addi.w	$a0, $a0, -1
	ori	$a1, $zero, 2
	bltu	$a1, $a0, .LBB11_5
.LBB11_4:                               # %switch.lookup
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.Lswitch.table.Java_GenEndSwitch.6)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table.Java_GenEndSwitch.6)
	ldx.d	$a1, $a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB11_5:                               # %Indent.exit
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB11_12
# %bb.6:                                # %.lr.ph.i9.preheader
	addi.d	$s1, $s2, 6
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$s0, $a0, %pc_lo12(.L.str.16)
	ori	$s2, $zero, 7
	.p2align	4, , 16
.LBB11_7:                               # %.lr.ph.i9
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, -4
	bltu	$s2, $s1, .LBB11_7
# %bb.8:                                # %._crit_edge.i5.loopexit
	addi.d	$a0, $s1, -4
	addi.w	$a0, $a0, -1
	ori	$a1, $zero, 2
	bltu	$a1, $a0, .LBB11_10
.LBB11_9:                               # %switch.lookup16
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.Lswitch.table.Java_GenEndSwitch.6)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table.Java_GenEndSwitch.6)
	ldx.d	$a1, $a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB11_10:                              # %Indent.exit11
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	move	$a0, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(TreeCCStreamPrint)
	jr	$t8
.LBB11_11:
	ori	$a0, $zero, 3
	alsl.w	$a0, $s0, $a0, 1
	addi.w	$a0, $a0, -1
	ori	$a1, $zero, 2
	bgeu	$a1, $a0, .LBB11_4
	b	.LBB11_5
.LBB11_12:
	addi.d	$a0, $s2, 2
	addi.w	$a0, $a0, -1
	ori	$a1, $zero, 2
	bgeu	$a1, $a0, .LBB11_9
	b	.LBB11_10
.Lfunc_end11:
	.size	Java_GenEndSwitch, .Lfunc_end11-Java_GenEndSwitch
                                        # -- End function
	.p2align	5                               # -- Begin function Java_GenExit
	.type	Java_GenExit,@function
Java_GenExit:                           # @Java_GenExit
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a2
	ld.d	$a0, $a2, 16
	move	$fp, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_4
# %bb.1:
	ld.d	$a2, $s0, 24
	beqz	$a2, .LBB12_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a1, $a0, %pc_lo12(.L.str.38)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	b	.LBB12_4
.LBB12_3:
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a1, $a0, %pc_lo12(.L.str.39)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB12_4:
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a1, $a0, %pc_lo12(.L.str.40)
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(TreeCCStreamPrint)
	jr	$t8
.Lfunc_end12:
	.size	Java_GenExit, .Lfunc_end12-Java_GenExit
                                        # -- End function
	.p2align	5                               # -- Begin function Java_GenEnd
	.type	Java_GenEnd,@function
Java_GenEnd:                            # @Java_GenEnd
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $s0, 8276
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB13_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(TreeCCStreamPrint)
	jr	$t8
.LBB13_2:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end13:
	.size	Java_GenEnd, .Lfunc_end13-Java_GenEnd
                                        # -- End function
	.globl	TreeCCGenerateJava              # -- Begin function TreeCCGenerateJava
	.p2align	5
	.type	TreeCCGenerateJava,@function
TreeCCGenerateJava:                     # @TreeCCGenerateJava
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ldptr.d	$a1, $a0, 8256
	pcaddu18i	$ra, %call36(TreeCCStreamGetJava)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(CreateNodeStreams)
	addi.d	$a1, $a0, %pc_lo12(CreateNodeStreams)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCNodeVisitAll)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(CreateNonVirtualStreams)
	addi.d	$a1, $a0, %pc_lo12(CreateNonVirtualStreams)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCOperationVisitAll)
	jirl	$ra, $ra, 0
	ldptr.d	$s0, $fp, 8200
	beqz	$s0, .LBB14_9
# %bb.1:                                # %.lr.ph.i
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s1, $a0, %pc_lo12(.L.str.27)
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$s2, $a0, %pc_lo12(.L.str.42)
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$s3, $a0, %pc_lo12(.L.str.41)
	b	.LBB14_3
	.p2align	4, , 16
.LBB14_2:                               #   in Loop: Header=BB14_3 Depth=1
	ld.d	$s0, $s0, 72
	beqz	$s0, .LBB14_9
.LBB14_3:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s0, 52
	andi	$a1, $a0, 4
	beqz	$a1, .LBB14_5
# %bb.4:                                #   in Loop: Header=BB14_3 Depth=1
	andi	$a1, $a0, 8
	beqz	$a1, .LBB14_2
	b	.LBB14_8
	.p2align	4, , 16
.LBB14_5:                               #   in Loop: Header=BB14_3 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamSourceTop)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ldptr.d	$a2, $fp, 8264
	beqz	$a2, .LBB14_7
# %bb.6:                                #   in Loop: Header=BB14_3 Depth=1
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB14_7:                               #   in Loop: Header=BB14_3 Depth=1
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 52
	andi	$a1, $a0, 8
	beqz	$a1, .LBB14_2
.LBB14_8:                               #   in Loop: Header=BB14_3 Depth=1
	andi	$a0, $a0, 239
	st.b	$a0, $s0, 52
	b	.LBB14_2
.LBB14_9:                               # %WriteJavaHeaders.exit
	pcalau12i	$a0, %pc_hi20(DeclareTypeDefs)
	addi.d	$a1, $a0, %pc_lo12(DeclareTypeDefs)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCNodeVisitAll)
	jirl	$ra, $ra, 0
	ldptr.d	$a1, $fp, 8256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamGetJava)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 2
	ori	$s1, $a1, 48
	ldx.hu	$a1, $fp, $s1
	move	$s0, $a0
	andi	$a0, $a1, 72
	addi.d	$a0, $a0, -72
	sltui	$a0, $a0, 1
	ldptr.d	$a2, $fp, 8256
	pcalau12i	$a1, %pc_hi20(.L.str.46)
	addi.d	$a1, $a1, %pc_lo12(.L.str.46)
	masknez	$a1, $a1, $a0
	pcalau12i	$a3, %pc_hi20(.L.str.45)
	addi.d	$a3, $a3, %pc_lo12(.L.str.45)
	maskeqz	$a0, $a3, $a0
	or	$a1, $a0, $a1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ldx.hu	$a0, $fp, $s1
	andi	$a0, $a0, 8
	bnez	$a0, .LBB14_11
# %bb.10:
	ldptr.d	$a2, $fp, 8256
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a1, $a0, %pc_lo12(.L.str.47)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ldptr.d	$a2, $fp, 8256
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a1, $a0, %pc_lo12(.L.str.48)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a1, $a0, %pc_lo12(.L.str.49)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ldptr.d	$a2, $fp, 8256
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a1, $a0, %pc_lo12(.L.str.51)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a1, $a0, %pc_lo12(.L.str.52)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ldx.hu	$a0, $fp, $s1
	andi	$a0, $a0, 8
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.53)
	addi.d	$a1, $a1, %pc_lo12(.L.str.53)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.54)
	addi.d	$a2, $a2, %pc_lo12(.L.str.54)
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
	b	.LBB14_12
.LBB14_11:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a1, $a0, %pc_lo12(.L.str.53)
.LBB14_12:
	ldptr.d	$a2, $fp, 8256
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ldx.hu	$a0, $fp, $s1
	andi	$a1, $a0, 8
	beqz	$a1, .LBB14_14
# %bb.13:
	pcalau12i	$a0, %pc_hi20(ImplementCreateFuncs)
	addi.d	$a1, $a0, %pc_lo12(ImplementCreateFuncs)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCNodeVisitAll)
	jirl	$ra, $ra, 0
	ldx.hu	$a0, $fp, $s1
.LBB14_14:
	andi	$a0, $a0, 2
	beqz	$a0, .LBB14_16
# %bb.15:
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a1, $a0, %pc_lo12(.L.str.55)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a1, $a0, %pc_lo12(.L.str.56)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB14_16:                              # %ImplementStateType.exit
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(BuildTypeDecls)
	addi.d	$a1, $a0, %pc_lo12(BuildTypeDecls)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCNodeVisitAll)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(TreeCCNonVirtualFuncsJava)
	addi.d	$a1, $a0, %pc_lo12(TreeCCNonVirtualFuncsJava)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCGenerateNonVirtuals)
	jirl	$ra, $ra, 0
	ldptr.d	$fp, $fp, 8200
	beqz	$fp, .LBB14_23
# %bb.17:                               # %.lr.ph.i14.preheader
	ori	$s0, $zero, 8
	b	.LBB14_20
	.p2align	4, , 16
.LBB14_18:                              #   in Loop: Header=BB14_20 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamClear)
	jirl	$ra, $ra, 0
.LBB14_19:                              #   in Loop: Header=BB14_20 Depth=1
	ld.d	$fp, $fp, 72
	beqz	$fp, .LBB14_23
.LBB14_20:                              # %.lr.ph.i14
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $fp, 52
	andi	$a1, $a0, 24
	beq	$a1, $s0, .LBB14_18
# %bb.21:                               #   in Loop: Header=BB14_20 Depth=1
	andi	$a0, $a0, 4
	bnez	$a0, .LBB14_19
# %bb.22:                               #   in Loop: Header=BB14_20 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamSourceBottom)
	jirl	$ra, $ra, 0
	b	.LBB14_19
.LBB14_23:                              # %WriteJavaFooters.exit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end14:
	.size	TreeCCGenerateJava, .Lfunc_end14-TreeCCGenerateJava
                                        # -- End function
	.p2align	5                               # -- Begin function CreateNodeStreams
	.type	CreateNodeStreams,@function
CreateNodeStreams:                      # @CreateNodeStreams
# %bb.0:
	ld.bu	$a2, $a1, 40
	andi	$a2, $a2, 16
	bnez	$a2, .LBB15_2
# %bb.1:
	ld.d	$a1, $a1, 32
	pcaddu18i	$t8, %call36(TreeCCStreamGetJava)
	jr	$t8
.LBB15_2:
	ret
.Lfunc_end15:
	.size	CreateNodeStreams, .Lfunc_end15-CreateNodeStreams
                                        # -- End function
	.p2align	5                               # -- Begin function CreateNonVirtualStreams
	.type	CreateNonVirtualStreams,@function
CreateNonVirtualStreams:                # @CreateNonVirtualStreams
# %bb.0:
	ld.bu	$a2, $a1, 40
	andi	$a2, $a2, 1
	bnez	$a2, .LBB16_3
# %bb.1:
	ld.d	$a2, $a1, 8
	beqz	$a2, .LBB16_4
# %bb.2:                                # %.sink.split
	move	$a1, $a2
	pcaddu18i	$t8, %call36(TreeCCStreamGetJava)
	jr	$t8
.LBB16_3:
	ret
.LBB16_4:
	ld.d	$a2, $a1, 0
	move	$a1, $a2
	pcaddu18i	$t8, %call36(TreeCCStreamGetJava)
	jr	$t8
.Lfunc_end16:
	.size	CreateNonVirtualStreams, .Lfunc_end16-CreateNonVirtualStreams
                                        # -- End function
	.p2align	5                               # -- Begin function DeclareTypeDefs
	.type	DeclareTypeDefs,@function
DeclareTypeDefs:                        # @DeclareTypeDefs
# %bb.0:
	ld.bu	$a2, $a1, 40
	andi	$a2, $a2, 8
	bnez	$a2, .LBB17_2
# %bb.1:
	ret
.LBB17_2:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a2, $a1, 32
	move	$s0, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(TreeCCStreamGetJava)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 32
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a1, $a0, %pc_lo12(.L.str.43)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 8
	beqz	$s2, .LBB17_7
# %bb.3:                                # %.lr.ph.preheader
	move	$s0, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$s1, $a0, %pc_lo12(.L.str.44)
	b	.LBB17_5
	.p2align	4, , 16
.LBB17_4:                               #   in Loop: Header=BB17_5 Depth=1
	ld.d	$s2, $s2, 24
	beqz	$s2, .LBB17_7
.LBB17_5:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s2, 40
	andi	$a0, $a0, 16
	beqz	$a0, .LBB17_4
# %bb.6:                                #   in Loop: Header=BB17_5 Depth=1
	ld.d	$a2, $s2, 32
	move	$a0, $fp
	move	$a1, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, 1
	b	.LBB17_4
.LBB17_7:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(TreeCCStreamPrint)
	jr	$t8
.Lfunc_end17:
	.size	DeclareTypeDefs, .Lfunc_end17-DeclareTypeDefs
                                        # -- End function
	.p2align	5                               # -- Begin function BuildTypeDecls
	.type	BuildTypeDecls,@function
BuildTypeDecls:                         # @BuildTypeDecls
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
	move	$fp, $a1
	ld.bu	$a1, $a1, 40
	andi	$a1, $a1, 24
	beqz	$a1, .LBB18_2
# %bb.1:
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
.LBB18_2:
	move	$s1, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(TreeCCNodeHasAbstracts)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 32
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(TreeCCStreamGetJava)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s0, $a0
	lu12i.w	$s4, 2
	beqz	$a1, .LBB18_5
# %bb.3:
	ld.d	$a2, $fp, 32
	ld.d	$a3, $a1, 32
	beqz	$s2, .LBB18_8
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a1, $a0, %pc_lo12(.L.str.60)
	b	.LBB18_9
.LBB18_5:
	ldptr.d	$a3, $s1, 8296
	ld.d	$a2, $fp, 32
	beqz	$s2, .LBB18_10
# %bb.6:
	beqz	$a3, .LBB18_13
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a1, $a0, %pc_lo12(.L.str.60)
	b	.LBB18_12
.LBB18_8:
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a1, $a0, %pc_lo12(.L.str.61)
.LBB18_9:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	b	.LBB18_21
.LBB18_10:
	beqz	$a3, .LBB18_14
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a1, $a0, %pc_lo12(.L.str.61)
.LBB18_12:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	b	.LBB18_16
.LBB18_13:
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a1, $a0, %pc_lo12(.L.str.62)
	b	.LBB18_15
.LBB18_14:
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a1, $a0, %pc_lo12(.L.str.63)
.LBB18_15:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB18_16:
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a1, $a0, %pc_lo12(.L.str.64)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ori	$s2, $s4, 48
	ldx.hu	$a0, $s1, $s2
	andi	$a0, $a0, 2
	beqz	$a0, .LBB18_18
# %bb.17:
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a1, $a0, %pc_lo12(.L.str.65)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a1, $a0, %pc_lo12(.L.str.66)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB18_18:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a1, $a0, %pc_lo12(.L.str.67)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ldx.hu	$a0, $s1, $s2
	andi	$a0, $a0, 2
	beqz	$a0, .LBB18_20
# %bb.19:
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a1, $a0, %pc_lo12(.L.str.68)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a1, $a0, %pc_lo12(.L.str.69)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a1, $a0, %pc_lo12(.L.str.70)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a1, $a0, %pc_lo12(.L.str.71)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB18_20:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB18_21:
	ld.w	$a2, $fp, 44
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a1, $a0, %pc_lo12(.L.str.72)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.d	$s5, $fp, 72
	beqz	$s5, .LBB18_28
# %bb.22:                               # %.lr.ph.i.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$s2, $a0, %pc_lo12(.L.str.94)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$s6, $a0, %pc_lo12(.L.str.12)
	b	.LBB18_25
	.p2align	4, , 16
.LBB18_23:                              #   in Loop: Header=BB18_25 Depth=1
	move	$a2, $s3
.LBB18_24:                              # %ConvertType.exit.i
                                        #   in Loop: Header=BB18_25 Depth=1
	ld.d	$a3, $s5, 0
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s5, 48
	beqz	$s5, .LBB18_27
.LBB18_25:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $s5, 8
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(TreeCCNodeFind)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_23
# %bb.26:                               #   in Loop: Header=BB18_25 Depth=1
	ld.bu	$a0, $a0, 40
	andi	$a0, $a0, 8
	move	$a2, $s6
	beqz	$a0, .LBB18_23
	b	.LBB18_24
.LBB18_27:                              # %DeclareFields.exit
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB18_28:
	ori	$s2, $s4, 48
	ldx.hu	$a0, $s1, $s2
	andi	$a1, $a0, 8
	bnez	$a1, .LBB18_30
# %bb.29:
	ld.bu	$a0, $fp, 40
	andi	$a0, $a0, 2
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.75)
	addi.d	$a1, $a1, %pc_lo12(.L.str.75)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.73)
	addi.d	$a2, $a2, %pc_lo12(.L.str.73)
	b	.LBB18_31
.LBB18_30:
	andi	$a0, $a0, 96
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.73)
	addi.d	$a1, $a1, %pc_lo12(.L.str.73)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.74)
	addi.d	$a2, $a2, %pc_lo12(.L.str.74)
.LBB18_31:
	maskeqz	$a0, $a2, $a0
	or	$a2, $a0, $a1
	ld.d	$a3, $fp, 32
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a1, $a0, %pc_lo12(.L.str.76)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ldx.hu	$a0, $s1, $s2
	andi	$a0, $a0, 8
	bnez	$a0, .LBB18_33
# %bb.32:
	move	$a3, $zero
	b	.LBB18_34
.LBB18_33:                              # %.split113
	ldptr.d	$a2, $s1, 8256
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a1, $a0, %pc_lo12(.L.str.77)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ori	$a3, $zero, 1
.LBB18_34:                              # %.split
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(CreateParams)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB18_39
# %bb.35:
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a1, $a0, %pc_lo12(.L.str.78)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ldx.hu	$a0, $s1, $s2
	andi	$a0, $a0, 8
	bnez	$a0, .LBB18_37
# %bb.36:
	move	$a2, $zero
	b	.LBB18_38
.LBB18_37:
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a1, $a0, %pc_lo12(.L.str.79)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
.LBB18_38:
	ld.d	$a1, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(InheritParamsSource)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB18_39:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a1, $a0, %pc_lo12(.L.str.80)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ldx.hu	$a0, $s1, $s2
	andi	$a1, $a0, 2
	beqz	$a1, .LBB18_44
# %bb.40:
	ld.d	$a1, $fp, 0
	bnez	$a1, .LBB18_44
# %bb.41:
	andi	$a0, $a0, 8
	bnez	$a0, .LBB18_43
# %bb.42:
	ldptr.d	$a2, $s1, 8256
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a1, $a0, %pc_lo12(.L.str.83)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ldptr.d	$a2, $s1, 8256
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a1, $a0, %pc_lo12(.L.str.84)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	b	.LBB18_44
.LBB18_43:
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a1, $a0, %pc_lo12(.L.str.81)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a1, $a0, %pc_lo12(.L.str.82)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB18_44:
	ld.d	$s3, $fp, 72
	beqz	$s3, .LBB18_52
# %bb.45:                               # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$s2, $a0, %pc_lo12(.L.str.85)
	b	.LBB18_49
	.p2align	4, , 16
.LBB18_46:                              #   in Loop: Header=BB18_49 Depth=1
	ld.d	$a2, $s3, 0
	move	$a0, $s0
	move	$a1, $s2
	move	$a3, $a2
.LBB18_47:                              #   in Loop: Header=BB18_49 Depth=1
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB18_48:                              #   in Loop: Header=BB18_49 Depth=1
	ld.d	$s3, $s3, 48
	beqz	$s3, .LBB18_52
.LBB18_49:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s3, 24
	andi	$a0, $a0, 1
	beqz	$a0, .LBB18_46
# %bb.50:                               #   in Loop: Header=BB18_49 Depth=1
	ld.d	$a3, $s3, 16
	beqz	$a3, .LBB18_48
# %bb.51:                               #   in Loop: Header=BB18_49 Depth=1
	ld.d	$a2, $s3, 0
	move	$a0, $s0
	move	$a1, $s2
	b	.LBB18_47
.LBB18_52:                              # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s2, $a0, %pc_lo12(.L.str.52)
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $fp
	pcaddu18i	$ra, %call36(ImplementVirtuals)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a1, $a0, %pc_lo12(.L.str.86)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$s1, $a0, %pc_lo12(.L.str.11)
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a1, $a0, %pc_lo12(.L.str.87)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a1, $a0, %pc_lo12(.L.str.88)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a1, $a0, %pc_lo12(.L.str.89)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.90)
	addi.d	$a1, $a1, %pc_lo12(.L.str.90)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.91)
	addi.d	$a2, $a2, %pc_lo12(.L.str.91)
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a1, $a0, %pc_lo12(.L.str.92)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 32
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a1, $a0, %pc_lo12(.L.str.93)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a1, $a0, %pc_lo12(.L.str.40)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	move	$a0, $s0
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
	pcaddu18i	$t8, %call36(TreeCCStreamPrint)
	jr	$t8
.Lfunc_end18:
	.size	BuildTypeDecls, .Lfunc_end18-BuildTypeDecls
                                        # -- End function
	.p2align	5                               # -- Begin function JavaGenEntry
	.type	JavaGenEntry,@function
JavaGenEntry:                           # @JavaGenEntry
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
	move	$s1, $a2
	ld.d	$a2, $a2, 16
	ld.d	$a4, $s1, 0
	addi.w	$a6, $zero, -1
	move	$fp, $a1
	move	$s0, $a0
	beq	$a3, $a6, .LBB19_2
# %bb.1:
	move	$a5, $a3
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	move	$a0, $fp
	move	$a3, $a4
	move	$a4, $a5
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s1, 32
	bnez	$s2, .LBB19_3
	b	.LBB19_26
.LBB19_2:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	move	$a0, $fp
	move	$a3, $a4
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s1, 32
	beqz	$s2, .LBB19_26
.LBB19_3:
	ldptr.w	$a0, $s0, 8276
	ld.d	$s1, $s2, 8
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB19_7
# %bb.4:
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(TreeCCNodeFind)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_7
# %bb.5:
	ld.bu	$a0, $a0, 40
	andi	$a0, $a0, 8
	beqz	$a0, .LBB19_7
# %bb.6:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$s1, $a0, %pc_lo12(.L.str.12)
.LBB19_7:                               # %ConvertType.exit.peel
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	move	$a0, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 0
	beqz	$a2, .LBB19_9
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	ld.bu	$a0, $s2, 16
	andi	$a0, $a0, 1
	bnez	$a0, .LBB19_10
	b	.LBB19_13
.LBB19_9:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 2
	ld.bu	$a0, $s2, 16
	andi	$a0, $a0, 1
	beqz	$a0, .LBB19_13
.LBB19_10:
	ld.d	$a1, $s2, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCNodeFindByType)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_12
# %bb.11:
	ld.bu	$a0, $a0, 40
	andi	$a0, $a0, 8
	bnez	$a0, .LBB19_13
.LBB19_12:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB19_13:                              # %IsEnumType.exit.peel
	ld.d	$s8, $s2, 24
	beqz	$s8, .LBB19_26
# %bb.14:                               # %.peel.next.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s2, $a0, %pc_lo12(.L.str.5)
	ori	$s5, $zero, 3
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s3, $a0, %pc_lo12(.L.str.6)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$s4, $a0, %pc_lo12(.L.str.8)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s6, $a0, %pc_lo12(.L.str.7)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	b	.LBB19_17
	.p2align	4, , 16
.LBB19_15:                              #   in Loop: Header=BB19_17 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB19_16:                              # %IsEnumType.exit
                                        #   in Loop: Header=BB19_17 Depth=1
	ld.d	$s8, $s8, 24
	beqz	$s8, .LBB19_26
.LBB19_17:                              # %.peel.next
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $s0, 8276
	ld.d	$s7, $s8, 8
	beq	$a0, $s5, .LBB19_20
# %bb.18:                               #   in Loop: Header=BB19_17 Depth=1
	move	$a0, $s0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(TreeCCNodeFind)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_20
# %bb.19:                               #   in Loop: Header=BB19_17 Depth=1
	ld.bu	$a0, $a0, 40
	andi	$a0, $a0, 8
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	bnez	$a0, .LBB19_21
	.p2align	4, , 16
.LBB19_20:                              #   in Loop: Header=BB19_17 Depth=1
	move	$a2, $s7
.LBB19_21:                              # %ConvertType.exit
                                        #   in Loop: Header=BB19_17 Depth=1
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s8, 0
	beqz	$a2, .LBB19_23
# %bb.22:                               #   in Loop: Header=BB19_17 Depth=1
	move	$a0, $fp
	move	$a1, $s6
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s8, 16
	andi	$a0, $a0, 1
	beqz	$a0, .LBB19_16
	b	.LBB19_24
	.p2align	4, , 16
.LBB19_23:                              #   in Loop: Header=BB19_17 Depth=1
	move	$a0, $fp
	move	$a1, $s4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, 1
	ld.bu	$a0, $s8, 16
	andi	$a0, $a0, 1
	beqz	$a0, .LBB19_16
.LBB19_24:                              #   in Loop: Header=BB19_17 Depth=1
	ld.d	$a1, $s8, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCNodeFindByType)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_15
# %bb.25:                               #   in Loop: Header=BB19_17 Depth=1
	ld.bu	$a0, $a0, 40
	andi	$a0, $a0, 8
	beqz	$a0, .LBB19_15
	b	.LBB19_16
.LBB19_26:                              # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(TreeCCStreamPrint)
	jr	$t8
.Lfunc_end19:
	.size	JavaGenEntry, .Lfunc_end19-JavaGenEntry
                                        # -- End function
	.p2align	5                               # -- Begin function ImplementCreateFuncs
	.type	ImplementCreateFuncs,@function
ImplementCreateFuncs:                   # @ImplementCreateFuncs
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	ld.bu	$a1, $a1, 40
	andi	$a1, $a1, 26
	beqz	$a1, .LBB20_2
# %bb.1:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB20_2:
	ldptr.d	$a1, $a0, 8256
	move	$s1, $a0
	pcaddu18i	$ra, %call36(TreeCCStreamGetJava)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 2
	ori	$s2, $a1, 48
	ldx.hu	$a1, $s1, $s2
	move	$fp, $a0
	andi	$a0, $a1, 64
	sltui	$a0, $a0, 1
	ld.d	$a2, $s0, 32
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	masknez	$a1, $a1, $a0
	pcalau12i	$a3, %pc_hi20(.L.str.58)
	addi.d	$a3, $a3, %pc_lo12(.L.str.58)
	maskeqz	$a0, $a3, $a0
	or	$a1, $a0, $a1
	move	$a0, $fp
	move	$a3, $a2
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(FactoryCreateParams)
	jirl	$ra, $ra, 0
	ldx.hu	$a0, $s1, $s2
	andi	$a0, $a0, 64
	bnez	$a0, .LBB20_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a1, $a0, %pc_lo12(.L.str.59)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(FactoryInvokeParams)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a1, $a0, %pc_lo12(.L.str.52)
	b	.LBB20_5
.LBB20_4:
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
.LBB20_5:                               # %.sink.split
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(TreeCCStreamPrint)
	jr	$t8
.Lfunc_end20:
	.size	ImplementCreateFuncs, .Lfunc_end20-ImplementCreateFuncs
                                        # -- End function
	.p2align	5                               # -- Begin function FactoryCreateParams
	.type	FactoryCreateParams,@function
FactoryCreateParams:                    # @FactoryCreateParams
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	st.d	$s5, $sp, 0                     # 8-byte Folded Spill
	move	$s1, $a2
	ld.d	$a2, $a2, 0
	move	$fp, $a1
	move	$s0, $a0
	beqz	$a2, .LBB21_2
# %bb.1:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(FactoryCreateParams)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s1, 72
	bnez	$s4, .LBB21_3
	b	.LBB21_12
.LBB21_2:
	move	$a0, $zero
	ld.d	$s4, $s1, 72
	beqz	$s4, .LBB21_12
.LBB21_3:                               # %.lr.ph.preheader
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$s1, $a1, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.12)
	addi.d	$s5, $a1, %pc_lo12(.L.str.12)
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$s2, $a1, %pc_lo12(.L.str.5)
	b	.LBB21_7
	.p2align	4, , 16
.LBB21_4:                               #   in Loop: Header=BB21_7 Depth=1
	move	$a2, $s3
.LBB21_5:                               # %ConvertType.exit
                                        #   in Loop: Header=BB21_7 Depth=1
	ld.d	$a3, $s4, 0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
.LBB21_6:                               #   in Loop: Header=BB21_7 Depth=1
	ld.d	$s4, $s4, 48
	beqz	$s4, .LBB21_12
.LBB21_7:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $s4, 24
	andi	$a1, $a1, 1
	bnez	$a1, .LBB21_6
# %bb.8:                                #   in Loop: Header=BB21_7 Depth=1
	beqz	$a0, .LBB21_10
# %bb.9:                                #   in Loop: Header=BB21_7 Depth=1
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB21_10:                              #   in Loop: Header=BB21_7 Depth=1
	ld.d	$s3, $s4, 8
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(TreeCCNodeFind)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB21_4
# %bb.11:                               #   in Loop: Header=BB21_7 Depth=1
	ld.bu	$a0, $a0, 40
	andi	$a0, $a0, 8
	move	$a2, $s5
	beqz	$a0, .LBB21_4
	b	.LBB21_5
.LBB21_12:                              # %._crit_edge
	ld.d	$s5, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end21:
	.size	FactoryCreateParams, .Lfunc_end21-FactoryCreateParams
                                        # -- End function
	.p2align	5                               # -- Begin function FactoryInvokeParams
	.type	FactoryInvokeParams,@function
FactoryInvokeParams:                    # @FactoryInvokeParams
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	ld.d	$a1, $a1, 0
	move	$fp, $a0
	beqz	$a1, .LBB22_2
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FactoryInvokeParams)
	jirl	$ra, $ra, 0
.LBB22_2:
	ld.d	$s2, $s0, 72
	beqz	$s2, .LBB22_7
# %bb.3:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s1, $a0, %pc_lo12(.L.str.7)
	b	.LBB22_5
	.p2align	4, , 16
.LBB22_4:                               #   in Loop: Header=BB22_5 Depth=1
	ld.d	$s2, $s2, 48
	beqz	$s2, .LBB22_7
.LBB22_5:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s2, 24
	andi	$a0, $a0, 1
	bnez	$a0, .LBB22_4
# %bb.6:                                #   in Loop: Header=BB22_5 Depth=1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	b	.LBB22_4
.LBB22_7:                               # %._crit_edge
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end22:
	.size	FactoryInvokeParams, .Lfunc_end22-FactoryInvokeParams
                                        # -- End function
	.p2align	5                               # -- Begin function CreateParams
	.type	CreateParams,@function
CreateParams:                           # @CreateParams
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	st.d	$s5, $sp, 0                     # 8-byte Folded Spill
	move	$s1, $a2
	ld.d	$a2, $a2, 0
	move	$fp, $a1
	move	$s0, $a0
	beqz	$a2, .LBB23_2
# %bb.1:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(CreateParams)
	jirl	$ra, $ra, 0
	move	$a3, $a0
.LBB23_2:
	ld.d	$s4, $s1, 72
	beqz	$s4, .LBB23_12
# %bb.3:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$s1, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$s5, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s2, $a0, %pc_lo12(.L.str.5)
	b	.LBB23_7
	.p2align	4, , 16
.LBB23_4:                               #   in Loop: Header=BB23_7 Depth=1
	move	$a2, $s3
.LBB23_5:                               # %ConvertType.exit
                                        #   in Loop: Header=BB23_7 Depth=1
	ld.d	$a3, $s4, 0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ori	$a3, $zero, 1
.LBB23_6:                               #   in Loop: Header=BB23_7 Depth=1
	ld.d	$s4, $s4, 48
	beqz	$s4, .LBB23_12
.LBB23_7:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s4, 24
	andi	$a0, $a0, 1
	bnez	$a0, .LBB23_6
# %bb.8:                                #   in Loop: Header=BB23_7 Depth=1
	beqz	$a3, .LBB23_10
# %bb.9:                                #   in Loop: Header=BB23_7 Depth=1
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB23_10:                              #   in Loop: Header=BB23_7 Depth=1
	ld.d	$s3, $s4, 8
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(TreeCCNodeFind)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB23_4
# %bb.11:                               #   in Loop: Header=BB23_7 Depth=1
	ld.bu	$a0, $a0, 40
	andi	$a0, $a0, 8
	move	$a2, $s5
	beqz	$a0, .LBB23_4
	b	.LBB23_5
.LBB23_12:                              # %._crit_edge
	move	$a0, $a3
	ld.d	$s5, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end23:
	.size	CreateParams, .Lfunc_end23-CreateParams
                                        # -- End function
	.p2align	5                               # -- Begin function InheritParamsSource
	.type	InheritParamsSource,@function
InheritParamsSource:                    # @InheritParamsSource
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	ld.d	$a1, $a1, 0
	move	$fp, $a0
	beqz	$a1, .LBB24_2
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(InheritParamsSource)
	jirl	$ra, $ra, 0
	move	$a2, $a0
.LBB24_2:
	ld.d	$s2, $s0, 72
	beqz	$s2, .LBB24_9
# %bb.3:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s0, $a0, %pc_lo12(.L.str.7)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s1, $a0, %pc_lo12(.L.str.5)
	b	.LBB24_6
	.p2align	4, , 16
.LBB24_4:                               #   in Loop: Header=BB24_6 Depth=1
	ld.d	$a2, $s2, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
.LBB24_5:                               #   in Loop: Header=BB24_6 Depth=1
	ld.d	$s2, $s2, 48
	beqz	$s2, .LBB24_9
.LBB24_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s2, 24
	andi	$a0, $a0, 1
	bnez	$a0, .LBB24_5
# %bb.7:                                #   in Loop: Header=BB24_6 Depth=1
	beqz	$a2, .LBB24_4
# %bb.8:                                #   in Loop: Header=BB24_6 Depth=1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	b	.LBB24_4
.LBB24_9:                               # %._crit_edge
	move	$a0, $a2
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end24:
	.size	InheritParamsSource, .Lfunc_end24-InheritParamsSource
                                        # -- End function
	.p2align	5                               # -- Begin function ImplementVirtuals
	.type	ImplementVirtuals,@function
ImplementVirtuals:                      # @ImplementVirtuals
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	move	$s2, $a2
	ld.d	$a2, $a2, 0
	move	$fp, $a3
	move	$s0, $a1
	move	$s1, $a0
	beqz	$a2, .LBB25_2
# %bb.1:
	move	$a0, $s1
	move	$a1, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(ImplementVirtuals)
	jirl	$ra, $ra, 0
.LBB25_2:
	ld.d	$s4, $s2, 80
	beqz	$s4, .LBB25_38
# %bb.3:                                # %.lr.ph127
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a0, $a0, %pc_lo12(.L.str.95)
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.100)
	addi.d	$a0, $a0, %pc_lo12(.L.str.100)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.99)
	addi.d	$a0, $a0, %pc_lo12(.L.str.99)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$a0, $a0, %pc_lo12(.L.str.97)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.98)
	addi.d	$a0, $a0, %pc_lo12(.L.str.98)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s8, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$s2, $a0, %pc_lo12(.L.str.23)
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	b	.LBB25_7
	.p2align	4, , 16
.LBB25_4:                               #   in Loop: Header=BB25_7 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 8
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamCodeIndent)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
.LBB25_5:                               # %.loopexit.sink.split
                                        #   in Loop: Header=BB25_7 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB25_6:                               # %.loopexit
                                        #   in Loop: Header=BB25_7 Depth=1
	ld.d	$s4, $s4, 32
	beqz	$s4, .LBB25_38
.LBB25_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_13 Depth 2
                                        #     Child Loop BB25_29 Depth 2
	ld.d	$a2, $s4, 0
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(TreeCCOperationFindCase)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	beqz	$a0, .LBB25_12
# %bb.8:                                #   in Loop: Header=BB25_7 Depth=1
	ld.d	$s3, $s4, 8
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(TreeCCNodeFind)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB25_11
# %bb.9:                                #   in Loop: Header=BB25_7 Depth=1
	ld.bu	$a0, $a0, 40
	andi	$a0, $a0, 8
	beqz	$a0, .LBB25_11
# %bb.10:                               #   in Loop: Header=BB25_7 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$s3, $a0, %pc_lo12(.L.str.12)
.LBB25_11:                              # %ConvertType.exit96
                                        #   in Loop: Header=BB25_7 Depth=1
	ld.d	$a3, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$a1, $a0, %pc_lo12(.L.str.96)
	move	$a0, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	st.d	$s6, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $s4, 24
	ld.d	$a0, $a0, 32
	bnez	$a0, .LBB25_19
	b	.LBB25_34
	.p2align	4, , 16
.LBB25_12:                              # %.preheader.preheader
                                        #   in Loop: Header=BB25_7 Depth=1
	move	$s3, $fp
	.p2align	4, , 16
.LBB25_13:                              # %.preheader
                                        #   Parent Loop BB25_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s3, $s3, 0
	beqz	$s3, .LBB25_15
# %bb.14:                               #   in Loop: Header=BB25_13 Depth=2
	ld.d	$a2, $s4, 0
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(TreeCCOperationFindCase)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB25_13
	b	.LBB25_6
.LBB25_15:                              #   in Loop: Header=BB25_7 Depth=1
	ld.d	$s3, $s4, 8
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(TreeCCNodeFind)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB25_17
# %bb.16:                               #   in Loop: Header=BB25_7 Depth=1
	ld.bu	$a0, $a0, 40
	andi	$a0, $a0, 8
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	bnez	$a0, .LBB25_18
.LBB25_17:                              #   in Loop: Header=BB25_7 Depth=1
	move	$a2, $s3
.LBB25_18:                              # %ConvertType.exit
                                        #   in Loop: Header=BB25_7 Depth=1
	ld.d	$a3, $s4, 0
	move	$a0, $s0
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	ld.d	$a0, $s4, 24
	ld.d	$a0, $a0, 32
	beqz	$a0, .LBB25_34
.LBB25_19:                              #   in Loop: Header=BB25_7 Depth=1
	ld.d	$s7, $a0, 24
	beqz	$s7, .LBB25_34
# %bb.20:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB25_7 Depth=1
	ld.d	$a0, $a0, 0
	ld.d	$fp, $s7, 0
	ld.d	$s3, $s7, 8
	sltui	$a0, $a0, 1
	addi.d	$s5, $a0, 1
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(TreeCCNodeFind)
	jirl	$ra, $ra, 0
	bnez	$fp, .LBB25_25
# %bb.21:                               #   in Loop: Header=BB25_7 Depth=1
	beqz	$a0, .LBB25_23
# %bb.22:                               #   in Loop: Header=BB25_7 Depth=1
	ld.bu	$a0, $a0, 40
	andi	$a0, $a0, 8
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	bnez	$a0, .LBB25_24
.LBB25_23:                              #   in Loop: Header=BB25_7 Depth=1
	move	$a2, $s3
.LBB25_24:                              # %ConvertType.exit104.peel
                                        #   in Loop: Header=BB25_7 Depth=1
	move	$a0, $s0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	move	$a3, $s5
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 1
	ld.d	$s7, $s7, 24
	bnez	$s7, .LBB25_29
	b	.LBB25_34
	.p2align	4, , 16
.LBB25_25:                              #   in Loop: Header=BB25_7 Depth=1
	beqz	$a0, .LBB25_27
# %bb.26:                               #   in Loop: Header=BB25_7 Depth=1
	ld.bu	$a0, $a0, 40
	andi	$a0, $a0, 8
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	bnez	$a0, .LBB25_28
.LBB25_27:                              #   in Loop: Header=BB25_7 Depth=1
	move	$a2, $s3
.LBB25_28:                              # %ConvertType.exit100.peel
                                        #   in Loop: Header=BB25_7 Depth=1
	ld.d	$a3, $s7, 0
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s7, 24
	beqz	$s7, .LBB25_34
.LBB25_29:                              # %.lr.ph
                                        #   Parent Loop BB25_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s0
	move	$a1, $s8
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s7, 0
	ld.d	$s3, $s7, 8
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(TreeCCNodeFind)
	jirl	$ra, $ra, 0
	bnez	$fp, .LBB25_25
# %bb.30:                               #   in Loop: Header=BB25_29 Depth=2
	beqz	$a0, .LBB25_32
# %bb.31:                               #   in Loop: Header=BB25_29 Depth=2
	ld.bu	$a0, $a0, 40
	andi	$a0, $a0, 8
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	bnez	$a0, .LBB25_33
.LBB25_32:                              #   in Loop: Header=BB25_29 Depth=2
	move	$a2, $s3
.LBB25_33:                              # %ConvertType.exit104
                                        #   in Loop: Header=BB25_29 Depth=2
	addi.w	$a3, $s5, 0
	move	$a0, $s0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 1
	ld.d	$s7, $s7, 24
	bnez	$s7, .LBB25_29
	.p2align	4, , 16
.LBB25_34:                              # %._crit_edge
                                        #   in Loop: Header=BB25_7 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	beqz	$s6, .LBB25_5
# %bb.35:                               #   in Loop: Header=BB25_7 Depth=1
	move	$a0, $s0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 24
	ld.d	$a0, $a0, 32
	ld.d	$s3, $a0, 0
	beqz	$s3, .LBB25_4
# %bb.36:                               #   in Loop: Header=BB25_7 Depth=1
	move	$a0, $s3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB25_4
# %bb.37:                               #   in Loop: Header=BB25_7 Depth=1
	ld.d	$a2, $fp, 32
	move	$a0, $s0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	move	$a3, $s3
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	b	.LBB25_4
.LBB25_38:                              # %._crit_edge128
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end25:
	.size	ImplementVirtuals, .Lfunc_end25-ImplementVirtuals
                                        # -- End function
	.type	TreeCCNonVirtualFuncsJava,@object # @TreeCCNonVirtualFuncsJava
	.section	.data.rel.ro,"aw",@progbits
	.globl	TreeCCNonVirtualFuncsJava
	.p2align	3, 0x0
TreeCCNonVirtualFuncsJava:
	.dword	Java_GenStart
	.dword	Java_GenEntry
	.dword	Java_GenSplitEntry
	.dword	Java_GenSwitchHead
	.dword	Java_GenSelector
	.dword	Java_GenEndSelectors
	.dword	Java_GenCaseFunc
	.dword	Java_GenCaseCall
	.dword	Java_GenCaseInline
	.dword	Java_GenCaseSplit
	.dword	Java_GenEndCase
	.dword	Java_GenEndSwitch
	.dword	Java_GenExit
	.dword	Java_GenEnd
	.size	TreeCCNonVirtualFuncsJava, 112

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"internal"
	.size	.L.str, 9

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"public"
	.size	.L.str.1, 7

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%s class %s\n{\n"
	.size	.L.str.2, 15

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"\tprivate static %s %s_split_%d__("
	.size	.L.str.3, 34

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"\tpublic static %s %s("
	.size	.L.str.4, 22

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	", "
	.size	.L.str.5, 3

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%s "
	.size	.L.str.6, 4

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%s"
	.size	.L.str.7, 3

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"P%d__"
	.size	.L.str.8, 6

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"__"
	.size	.L.str.9, 3

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	")\n"
	.size	.L.str.10, 3

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"\t{\n"
	.size	.L.str.11, 4

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"int"
	.size	.L.str.12, 4

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"switch(%s)\n"
	.size	.L.str.13, 12

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"switch(%s__.getKind())\n"
	.size	.L.str.14, 24

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"{\n"
	.size	.L.str.15, 3

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"\t\t\t\t"
	.size	.L.str.16, 5

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"\t"
	.size	.L.str.17, 2

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"\t\t"
	.size	.L.str.18, 3

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"\t\t\t"
	.size	.L.str.19, 4

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"case %s.%s:\n"
	.size	.L.str.20, 13

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"case %s.KIND:\n"
	.size	.L.str.21, 15

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"\tprivate static %s %s_%d__("
	.size	.L.str.22, 28

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"%s %s"
	.size	.L.str.23, 6

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"%s P%d__"
	.size	.L.str.24, 9

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"\t{"
	.size	.L.str.25, 3

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"}\n"
	.size	.L.str.26, 3

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"\n"
	.size	.L.str.27, 2

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"void"
	.size	.L.str.28, 5

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"return "
	.size	.L.str.29, 8

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"%s_%d__("
	.size	.L.str.30, 9

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"(%s)"
	.size	.L.str.31, 5

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	");\n"
	.size	.L.str.32, 4

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"%s %s = (%s)%s__;\n"
	.size	.L.str.33, 19

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"{"
	.size	.L.str.34, 2

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"%s_split_%d__("
	.size	.L.str.35, 15

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"break;\n\n"
	.size	.L.str.36, 9

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"default: break;\n"
	.size	.L.str.37, 17

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"\treturn (%s);\n"
	.size	.L.str.38, 15

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"\treturn 0;\n"
	.size	.L.str.39, 12

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"\t}\n"
	.size	.L.str.40, 4

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"package %s;\n\n"
	.size	.L.str.41, 14

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"import java.lang.*;\n\n"
	.size	.L.str.42, 22

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"public class %s\n"
	.size	.L.str.43, 17

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"\tpublic static final int %s = %d;\n"
	.size	.L.str.44, 35

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"public abstract class %s\n{\n\n"
	.size	.L.str.45, 29

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"public class %s\n{\n\n"
	.size	.L.str.46, 20

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"\tprivate static %s state__;\n\n"
	.size	.L.str.47, 30

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"\tpublic static %s getState()\n"
	.size	.L.str.48, 30

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"\t\tif(state__ != null) return state__;\n"
	.size	.L.str.49, 39

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"\t\tstate__ = new %s();\n"
	.size	.L.str.50, 23

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"\t\treturn state__;\n"
	.size	.L.str.51, 19

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"\t}\n\n"
	.size	.L.str.52, 5

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"\tpublic %s() {}\n\n"
	.size	.L.str.53, 18

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"\tpublic %s() { state__ = this; }\n\n"
	.size	.L.str.54, 35

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"\tpublic String currFilename() { return null; }\n"
	.size	.L.str.55, 48

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"\tpublic long currLinenum() { return 0; }\n\n"
	.size	.L.str.56, 43

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"\tpublic abstract %s %sCreate("
	.size	.L.str.57, 30

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"\tpublic %s %sCreate("
	.size	.L.str.58, 21

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"\t\treturn new %s(this"
	.size	.L.str.59, 21

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"public abstract class %s extends %s\n{\n"
	.size	.L.str.60, 39

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"public class %s extends %s\n{\n"
	.size	.L.str.61, 30

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"public abstract class %s\n{\n"
	.size	.L.str.62, 28

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"public class %s\n{\n"
	.size	.L.str.63, 19

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"\tprotected int kind__;\n"
	.size	.L.str.64, 24

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"\tprotected String filename__;\n"
	.size	.L.str.65, 31

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"\tprotected long linenum__;\n"
	.size	.L.str.66, 28

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"\tpublic int getKind() { return kind__; }\n"
	.size	.L.str.67, 42

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"\tpublic String getFilename() { return filename__; }\n"
	.size	.L.str.68, 53

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"\tpublic long getLinenum() { return linenum__; }\n"
	.size	.L.str.69, 49

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"\tpublic void setFilename(String filename) { filename__ = filename; }\n"
	.size	.L.str.70, 70

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"\tpublic void setLinenum(long linenum) { linenum__ = linenum; }\n"
	.size	.L.str.71, 64

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"\tpublic static final int KIND = %d;\n\n"
	.size	.L.str.72, 38

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"public "
	.size	.L.str.73, 8

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.space	1
	.size	.L.str.74, 1

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"protected "
	.size	.L.str.75, 11

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"\t%s%s("
	.size	.L.str.76, 7

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"%s state__"
	.size	.L.str.77, 11

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"\t\tsuper("
	.size	.L.str.78, 9

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"state__"
	.size	.L.str.79, 8

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"\t\tthis.kind__ = KIND;\n"
	.size	.L.str.80, 23

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"\t\tthis.filename__ = state__.currFilename();\n"
	.size	.L.str.81, 45

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"\t\tthis.linenum__ = state__.currLinenum();\n"
	.size	.L.str.82, 43

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"\t\tthis.filename__ = %s.getState().currFilename();\n"
	.size	.L.str.83, 51

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"\t\tthis.linenum__ = %s.getState().currLinenum();\n"
	.size	.L.str.84, 49

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"\t\tthis.%s = %s;\n"
	.size	.L.str.85, 17

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"\tpublic int isA(int kind)\n"
	.size	.L.str.86, 27

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"\t\tif(kind == KIND)\n"
	.size	.L.str.87, 20

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"\t\t\treturn 1;\n"
	.size	.L.str.88, 14

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"\t\telse\n"
	.size	.L.str.89, 8

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"\t\t\treturn super.isA(kind);\n"
	.size	.L.str.90, 28

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"\t\t\treturn 0;\n"
	.size	.L.str.91, 14

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"\tpublic String getKindName()\n"
	.size	.L.str.92, 30

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"\t\treturn \"%s\";\n"
	.size	.L.str.93, 16

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"\tpublic %s %s;\n"
	.size	.L.str.94, 16

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"\tpublic abstract %s %s("
	.size	.L.str.95, 24

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"\tpublic %s %s("
	.size	.L.str.96, 15

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"this"
	.size	.L.str.97, 5

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"\t\t%s %s = this;\n"
	.size	.L.str.98, 17

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"}\n\n"
	.size	.L.str.99, 4

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	");\n\n"
	.size	.L.str.100, 5

	.type	.Lswitch.table.Java_GenEndSwitch.6,@object # @switch.table.Java_GenEndSwitch.6
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.Lswitch.table.Java_GenEndSwitch.6:
	.dword	.L.str.17
	.dword	.L.str.18
	.dword	.L.str.19
	.size	.Lswitch.table.Java_GenEndSwitch.6, 24

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym Java_GenStart
	.addrsig_sym Java_GenEntry
	.addrsig_sym Java_GenSplitEntry
	.addrsig_sym Java_GenSwitchHead
	.addrsig_sym Java_GenSelector
	.addrsig_sym Java_GenEndSelectors
	.addrsig_sym Java_GenCaseFunc
	.addrsig_sym Java_GenCaseCall
	.addrsig_sym Java_GenCaseInline
	.addrsig_sym Java_GenCaseSplit
	.addrsig_sym Java_GenEndCase
	.addrsig_sym Java_GenEndSwitch
	.addrsig_sym Java_GenExit
	.addrsig_sym Java_GenEnd
	.addrsig_sym CreateNodeStreams
	.addrsig_sym CreateNonVirtualStreams
	.addrsig_sym DeclareTypeDefs
	.addrsig_sym BuildTypeDecls
	.addrsig_sym ImplementCreateFuncs
	.addrsig_sym TreeCCNonVirtualFuncsJava
