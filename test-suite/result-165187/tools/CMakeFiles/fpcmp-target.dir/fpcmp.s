	.file	"fpcmp.c"
	.text
	.globl	load_file                       # -- Begin function load_file
	.p2align	5
	.type	load_file,@function
load_file:                              # @load_file
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_10
# %bb.1:
	move	$s1, $a0
	ori	$a2, $zero, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(fseek)
	jirl	$ra, $ra, 0
	addi.w	$s3, $zero, -1
	beq	$a0, $s3, .LBB0_9
# %bb.2:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(ftell)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fseek)
	jirl	$ra, $ra, 0
	beq	$a0, $s3, .LBB0_9
# %bb.3:
	beqz	$s2, .LBB0_7
# %bb.4:
	addi.d	$a0, $s2, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_11
# %bb.5:
	move	$s3, $a0
	stx.b	$zero, $a0, $s2
	ori	$a2, $zero, 1
	ori	$s4, $zero, 1
	move	$a1, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	bne	$a0, $s4, .LBB0_12
# %bb.6:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	b	.LBB0_8
.LBB0_7:
	move	$s3, $zero
.LBB0_8:
	st.d	$s2, $s0, 0
	move	$a0, $s3
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB0_9:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(g_program)
	ld.d	$a2, $a1, %pc_lo12(g_program)
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_10:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(g_program)
	ld.d	$a2, $a1, %pc_lo12(g_program)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_11:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(g_program)
	ld.d	$a2, $a1, %pc_lo12(g_program)
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_12:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(g_program)
	ld.d	$a2, $a1, %pc_lo12(g_program)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	load_file, .Lfunc_end0-load_file
                                        # -- End function
	.globl	diff_file                       # -- Begin function diff_file
	.p2align	5
	.type	diff_file,@function
diff_file:                              # @diff_file
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
	fst.d	$fs0, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 112                  # 8-byte Folded Spill
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	move	$s2, $a2
	move	$s0, $a1
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(load_file)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.d	$a1, $sp, 80
	move	$a0, $s0
	pcaddu18i	$ra, %call36(load_file)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 88
	ld.d	$fp, $sp, 80
	move	$s0, $a0
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	bne	$s3, $fp, .LBB1_2
# %bb.1:
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_126
.LBB1_2:
	add.d	$s8, $s1, $s3
	add.d	$s7, $s0, $fp
	move	$s6, $s1
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	move	$s5, $s0
	blez	$s3, .LBB1_112
# %bb.3:                                # %.lr.ph266
	ori	$a4, $zero, 10
	ori	$a0, $zero, 0
	lu32i.d	$a0, 26624
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	movgr2fr.d	$fs4, $zero
	fcmp.ceq.d	$fcc0, $fs1, $fs4
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 40
	fcmp.ceq.d	$fcc0, $fs0, $fs4
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 32
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	move	$fp, $s1
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_4:                                # %.critedge
                                        #   in Loop: Header=BB1_8 Depth=1
	bgeu	$fp, $s8, .LBB1_121
.LBB1_5:                                #   in Loop: Header=BB1_8 Depth=1
	ld.bu	$a0, $fp, 0
	ld.bu	$a1, $s0, 0
	bne	$a0, $a1, .LBB1_121
.LBB1_6:                                #   in Loop: Header=BB1_8 Depth=1
	addi.d	$s6, $fp, 1
	addi.d	$s5, $s0, 1
.LBB1_7:                                # %.backedge
                                        #   in Loop: Header=BB1_8 Depth=1
	move	$s0, $s5
	move	$fp, $s6
	bgeu	$s6, $s8, .LBB1_112
.LBB1_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_21 Depth 2
                                        #     Child Loop BB1_32 Depth 2
                                        #     Child Loop BB1_27 Depth 2
                                        #     Child Loop BB1_46 Depth 2
                                        #     Child Loop BB1_40 Depth 2
                                        #     Child Loop BB1_50 Depth 2
                                        #     Child Loop BB1_62 Depth 2
                                        #     Child Loop BB1_71 Depth 2
                                        #     Child Loop BB1_76 Depth 2
                                        #     Child Loop BB1_87 Depth 2
	bgeu	$s0, $s7, .LBB1_117
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=1
	ld.bu	$s3, $fp, 0
	ld.bu	$s4, $s0, 0
	bne	$s3, $s4, .LBB1_14
# %bb.10:                               #   in Loop: Header=BB1_8 Depth=1
	beqz	$s2, .LBB1_6
# %bb.11:                               #   in Loop: Header=BB1_8 Depth=1
	addi.d	$a0, $s3, -48
	bltu	$a0, $a4, .LBB1_14
# %bb.12:                               # %isPossibleStartOfNumber.exit
                                        #   in Loop: Header=BB1_8 Depth=1
	ori	$a0, $zero, 46
	bltu	$a0, $s3, .LBB1_6
# %bb.13:                               # %isPossibleStartOfNumber.exit
                                        #   in Loop: Header=BB1_8 Depth=1
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $s3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	and	$a0, $a0, $a1
	beqz	$a0, .LBB1_6
	.p2align	4, , 16
.LBB1_14:                               # %isPossibleStartOfNumber.exit.thread
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_18
# %bb.15:                               # %.lr.ph.i87
                                        #   in Loop: Header=BB1_8 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s3, 1
	ldx.hu	$a1, $a0, $a1
	slli.d	$a1, $a1, 50
	bltz	$a1, .LBB1_25
# %bb.16:                               # %.lr.ph.i96.thread337
                                        #   in Loop: Header=BB1_8 Depth=1
	slli.d	$a1, $s4, 1
	ldx.hu	$a1, $a0, $a1
	slli.d	$a1, $a1, 50
	move	$s3, $fp
	move	$s4, $s0
	ori	$a4, $zero, 10
	ori	$a5, $zero, 9
	bgez	$a1, .LBB1_34
# %bb.17:                               #   in Loop: Header=BB1_8 Depth=1
	move	$s6, $fp
	b	.LBB1_45
	.p2align	4, , 16
.LBB1_18:                               #   in Loop: Header=BB1_8 Depth=1
	beqz	$s2, .LBB1_4
# %bb.19:                               # %.lr.ph.i105
                                        #   in Loop: Header=BB1_8 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s3, 1
	ldx.hu	$a1, $a0, $a1
	slli.d	$a1, $a1, 50
	move	$s3, $fp
	bgez	$a1, .LBB1_23
# %bb.20:                               #   in Loop: Header=BB1_8 Depth=1
	addi.d	$s3, $fp, 1
	beq	$s3, $s8, .LBB1_23
	.p2align	4, , 16
.LBB1_21:                               # %.peel.next.i108
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $s3, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	slli.d	$a1, $a1, 50
	bgez	$a1, .LBB1_23
# %bb.22:                               #   in Loop: Header=BB1_21 Depth=2
	addi.d	$s3, $s3, 1
	bne	$s3, $s8, .LBB1_21
.LBB1_23:                               # %.lr.ph.i114
                                        #   in Loop: Header=BB1_8 Depth=1
	slli.d	$a1, $s4, 1
	ldx.hu	$a1, $a0, $a1
	slli.d	$a1, $a1, 50
	ori	$a4, $zero, 10
	ori	$a5, $zero, 9
	bltz	$a1, .LBB1_31
# %bb.24:                               #   in Loop: Header=BB1_8 Depth=1
	move	$s4, $s0
	b	.LBB1_34
.LBB1_25:                               #   in Loop: Header=BB1_8 Depth=1
	addi.d	$s6, $fp, 1
	beq	$s6, $s8, .LBB1_44
# %bb.26:                               # %.peel.next.i90.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	ori	$a4, $zero, 10
	.p2align	4, , 16
.LBB1_27:                               # %.peel.next.i90
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $s6, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	slli.d	$a1, $a1, 50
	bgez	$a1, .LBB1_29
# %bb.28:                               #   in Loop: Header=BB1_27 Depth=2
	addi.d	$s6, $s6, 1
	bne	$s6, $s8, .LBB1_27
.LBB1_29:                               # %.lr.ph.i96
                                        #   in Loop: Header=BB1_8 Depth=1
	slli.d	$a1, $s4, 1
	ldx.hu	$a1, $a0, $a1
	slli.d	$a1, $a1, 50
	bltz	$a1, .LBB1_45
.LBB1_30:                               #   in Loop: Header=BB1_8 Depth=1
	move	$s5, $s0
	b	.LBB1_7
.LBB1_31:                               #   in Loop: Header=BB1_8 Depth=1
	addi.d	$s4, $s0, 1
	beq	$s4, $s7, .LBB1_34
	.p2align	4, , 16
.LBB1_32:                               # %.peel.next.i117
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $s4, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	slli.d	$a1, $a1, 50
	bgez	$a1, .LBB1_34
# %bb.33:                               #   in Loop: Header=BB1_32 Depth=2
	addi.d	$s4, $s4, 1
	bne	$s4, $s7, .LBB1_32
	.p2align	4, , 16
.LBB1_34:                               # %skip_whitespace.exit120
                                        #   in Loop: Header=BB1_8 Depth=1
	beqz	$s2, .LBB1_4
# %bb.35:                               #   in Loop: Header=BB1_8 Depth=1
	move	$a0, $s3
	bgeu	$s3, $s8, .LBB1_37
# %bb.36:                               #   in Loop: Header=BB1_8 Depth=1
	ld.bu	$a0, $s3, 0
	addi.d	$a1, $a0, -43
	sltui	$a1, $a1, 1
	addi.d	$a0, $a0, -45
	sltui	$a0, $a0, 1
	or	$a0, $a1, $a0
	add.d	$a0, $s3, $a0
.LBB1_37:                               #   in Loop: Header=BB1_8 Depth=1
	bgeu	$a0, $s8, .LBB1_53
# %bb.38:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.bu	$a1, $a0, 0
	addi.d	$a2, $a1, -48
	bltu	$a5, $a2, .LBB1_48
# %bb.39:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$a0, $a0, 1
	.p2align	4, , 16
.LBB1_40:                               # %.lr.ph
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s8, .LBB1_52
# %bb.41:                               # %.lr.ph.i121
                                        #   in Loop: Header=BB1_40 Depth=2
	ld.bu	$a1, $a0, 0
	addi.d	$a2, $a1, -48
	addi.d	$a0, $a0, 1
	bgeu	$a5, $a2, .LBB1_40
# %bb.42:                               # %.critedge.i.loopexit
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$s6, $a0, -1
	move	$a0, $s6
	ori	$a2, $zero, 46
	beq	$a1, $a2, .LBB1_49
.LBB1_43:                               # %.critedge2.i
                                        #   in Loop: Header=BB1_8 Depth=1
	bnez	$s6, .LBB1_55
	b	.LBB1_53
.LBB1_44:                               # %.lr.ph.i96.thread
                                        #   in Loop: Header=BB1_8 Depth=1
	slli.d	$a1, $s4, 1
	ldx.hu	$a1, $a0, $a1
	slli.d	$a1, $a1, 50
	ori	$a4, $zero, 10
	bgez	$a1, .LBB1_30
.LBB1_45:                               #   in Loop: Header=BB1_8 Depth=1
	addi.d	$s5, $s0, 1
	beq	$s5, $s7, .LBB1_7
	.p2align	4, , 16
.LBB1_46:                               # %.peel.next.i99
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $s5, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	slli.d	$a1, $a1, 50
	bgez	$a1, .LBB1_7
# %bb.47:                               #   in Loop: Header=BB1_46 Depth=2
	addi.d	$s5, $s5, 1
	bne	$s5, $s7, .LBB1_46
	b	.LBB1_7
.LBB1_48:                               #   in Loop: Header=BB1_8 Depth=1
	move	$s6, $zero
	ori	$a2, $zero, 46
	bne	$a1, $a2, .LBB1_43
.LBB1_49:                               # %.preheader.i.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$a1, $a0, 1
	.p2align	4, , 16
.LBB1_50:                               # %.preheader.i
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s6, $a1
	bgeu	$a1, $s8, .LBB1_54
# %bb.51:                               #   in Loop: Header=BB1_50 Depth=2
	ld.bu	$a0, $s6, 0
	addi.d	$a2, $a0, -48
	addi.d	$a1, $s6, 1
	move	$a0, $s6
	bltu	$a2, $a4, .LBB1_50
	b	.LBB1_55
.LBB1_52:                               #   in Loop: Header=BB1_8 Depth=1
	move	$a0, $s8
	move	$s6, $s8
	bnez	$s6, .LBB1_55
.LBB1_53:                               #   in Loop: Header=BB1_8 Depth=1
	move	$s6, $zero
	b	.LBB1_66
.LBB1_54:                               #   in Loop: Header=BB1_8 Depth=1
	move	$a0, $s6
.LBB1_55:                               # %.critedge2.thread.i
                                        #   in Loop: Header=BB1_8 Depth=1
	bgeu	$a0, $s8, .LBB1_66
# %bb.56:                               #   in Loop: Header=BB1_8 Depth=1
	ld.b	$a1, $a0, 0
	addi.d	$a1, $a1, -68
	andi	$a1, $a1, 222
	bnez	$a1, .LBB1_66
# %bb.57:                               #   in Loop: Header=BB1_8 Depth=1
	addi.d	$a1, $a0, 1
	bgeu	$a1, $s8, .LBB1_59
# %bb.58:                               #   in Loop: Header=BB1_8 Depth=1
	ld.bu	$a2, $a0, 1
	addi.d	$a3, $a2, -43
	sltui	$a3, $a3, 1
	addi.d	$a2, $a2, -45
	sltui	$a2, $a2, 1
	addi.d	$a0, $a0, 2
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
	masknez	$a1, $a1, $a3
	maskeqz	$a0, $a0, $a3
	or	$a1, $a0, $a1
.LBB1_59:                               #   in Loop: Header=BB1_8 Depth=1
	bgeu	$a1, $s8, .LBB1_66
# %bb.60:                               # %.lr.ph72.preheader.i
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.bu	$a0, $a1, 0
	addi.d	$a0, $a0, -48
	bltu	$a5, $a0, .LBB1_66
# %bb.61:                               # %.lr.ph247.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$a0, $a1, 1
	.p2align	4, , 16
.LBB1_62:                               # %.lr.ph247
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s8, .LBB1_65
# %bb.63:                               # %.lr.ph72.i
                                        #   in Loop: Header=BB1_62 Depth=2
	ld.bu	$a1, $a0, 0
	addi.d	$a1, $a1, -48
	addi.d	$a0, $a0, 1
	bltu	$a1, $a4, .LBB1_62
# %bb.64:                               # %AdvanceNumber.exit.loopexit
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$s6, $a0, -1
	b	.LBB1_66
.LBB1_65:                               #   in Loop: Header=BB1_8 Depth=1
	move	$s6, $s8
.LBB1_66:                               # %AdvanceNumber.exit
                                        #   in Loop: Header=BB1_8 Depth=1
	move	$a0, $s4
	bgeu	$s4, $s7, .LBB1_68
# %bb.67:                               #   in Loop: Header=BB1_8 Depth=1
	ld.bu	$a0, $s4, 0
	addi.d	$a1, $a0, -43
	sltui	$a1, $a1, 1
	addi.d	$a0, $a0, -45
	sltui	$a0, $a0, 1
	or	$a0, $a1, $a0
	add.d	$a0, $s4, $a0
.LBB1_68:                               #   in Loop: Header=BB1_8 Depth=1
	bgeu	$a0, $s7, .LBB1_5
# %bb.69:                               # %.lr.ph.preheader.i129
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.bu	$a1, $a0, 0
	addi.d	$a2, $a1, -48
	bltu	$a5, $a2, .LBB1_74
# %bb.70:                               # %.lr.ph253.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$a0, $a0, 1
	.p2align	4, , 16
.LBB1_71:                               # %.lr.ph253
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s7, .LBB1_78
# %bb.72:                               # %.lr.ph.i132
                                        #   in Loop: Header=BB1_71 Depth=2
	ld.bu	$a1, $a0, 0
	addi.d	$a2, $a1, -48
	addi.d	$a0, $a0, 1
	bgeu	$a5, $a2, .LBB1_71
# %bb.73:                               # %.critedge.i137.loopexit
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$s5, $a0, -1
	move	$a0, $s5
	ori	$a2, $zero, 46
	beq	$a1, $a2, .LBB1_75
	b	.LBB1_79
.LBB1_74:                               #   in Loop: Header=BB1_8 Depth=1
	move	$s5, $zero
	ori	$a2, $zero, 46
	bne	$a1, $a2, .LBB1_79
.LBB1_75:                               # %.preheader.i158.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$a1, $a0, 1
	.p2align	4, , 16
.LBB1_76:                               # %.preheader.i158
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s5, $a1
	bgeu	$a1, $s7, .LBB1_90
# %bb.77:                               #   in Loop: Header=BB1_76 Depth=2
	ld.bu	$a0, $s5, 0
	addi.d	$a2, $a0, -48
	addi.d	$a1, $s5, 1
	move	$a0, $s5
	bltu	$a2, $a4, .LBB1_76
	b	.LBB1_80
.LBB1_78:                               #   in Loop: Header=BB1_8 Depth=1
	move	$a0, $s7
	move	$s5, $s7
.LBB1_79:                               # %.critedge2.i138
                                        #   in Loop: Header=BB1_8 Depth=1
	beqz	$s5, .LBB1_5
.LBB1_80:                               # %.critedge2.thread.i142
                                        #   in Loop: Header=BB1_8 Depth=1
	bgeu	$a0, $s7, .LBB1_91
.LBB1_81:                               #   in Loop: Header=BB1_8 Depth=1
	ld.b	$a1, $a0, 0
	addi.d	$a1, $a1, -68
	andi	$a1, $a1, 222
	bnez	$a1, .LBB1_91
# %bb.82:                               #   in Loop: Header=BB1_8 Depth=1
	addi.d	$a1, $a0, 1
	bgeu	$a1, $s7, .LBB1_84
# %bb.83:                               #   in Loop: Header=BB1_8 Depth=1
	ld.bu	$a2, $a0, 1
	addi.d	$a3, $a2, -43
	sltui	$a3, $a3, 1
	addi.d	$a2, $a2, -45
	sltui	$a2, $a2, 1
	addi.d	$a0, $a0, 2
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
	masknez	$a1, $a1, $a3
	maskeqz	$a0, $a0, $a3
	or	$a1, $a0, $a1
.LBB1_84:                               #   in Loop: Header=BB1_8 Depth=1
	bgeu	$a1, $s7, .LBB1_91
# %bb.85:                               # %.lr.ph72.preheader.i148
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.bu	$a0, $a1, 0
	addi.d	$a0, $a0, -48
	bltu	$a5, $a0, .LBB1_91
# %bb.86:                               # %.lr.ph260.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$a0, $a1, 1
	.p2align	4, , 16
.LBB1_87:                               # %.lr.ph260
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s7, .LBB1_111
# %bb.88:                               # %.lr.ph72.i151
                                        #   in Loop: Header=BB1_87 Depth=2
	ld.bu	$a1, $a0, 0
	addi.d	$a1, $a1, -48
	addi.d	$a0, $a0, 1
	bltu	$a1, $a4, .LBB1_87
# %bb.89:                               # %AdvanceNumber.exit166.loopexit
                                        #   in Loop: Header=BB1_8 Depth=1
	addi.d	$s5, $a0, -1
	bnez	$s6, .LBB1_92
	b	.LBB1_5
.LBB1_90:                               #   in Loop: Header=BB1_8 Depth=1
	move	$a0, $s5
	bltu	$a0, $s7, .LBB1_81
.LBB1_91:                               # %AdvanceNumber.exit166
                                        #   in Loop: Header=BB1_8 Depth=1
	beqz	$s6, .LBB1_5
.LBB1_92:                               # %AdvanceNumber.exit166
                                        #   in Loop: Header=BB1_8 Depth=1
	beqz	$s5, .LBB1_5
# %bb.93:                               #   in Loop: Header=BB1_8 Depth=1
	sub.d	$fp, $s6, $s3
	sub.d	$s0, $s5, $s4
	bne	$fp, $s0, .LBB1_95
# %bb.94:                               #   in Loop: Header=BB1_8 Depth=1
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	ori	$a4, $zero, 10
	beqz	$a0, .LBB1_7
.LBB1_95:                               #   in Loop: Header=BB1_8 Depth=1
	addi.d	$a1, $sp, 104
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	addi.d	$a1, $sp, 96
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 104
	ld.bu	$a0, $a2, 0
	ori	$a0, $a0, 32
	fmov.d	$fs3, $fa0
	ori	$a1, $zero, 100
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	bne	$a0, $a1, .LBB1_97
# %bb.96:                               #   in Loop: Header=BB1_8 Depth=1
	move	$s1, $s0
	addi.d	$s0, $fp, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a1, $s3
	move	$a2, $s0
	move	$s0, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $s3
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 101
	stx.b	$a1, $fp, $a0
	addi.d	$a1, $sp, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	fmov.d	$fs2, $fa0
	sub.d	$a0, $a0, $fp
	add.d	$a0, $s3, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_97:                               #   in Loop: Header=BB1_8 Depth=1
	ld.d	$s1, $sp, 96
	ld.bu	$a0, $s1, 0
	ori	$a0, $a0, 32
	ori	$a1, $zero, 100
	bne	$a0, $a1, .LBB1_99
# %bb.98:                               #   in Loop: Header=BB1_8 Depth=1
	addi.d	$s0, $s0, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	sub.d	$a0, $s1, $s4
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 101
	stx.b	$a1, $fp, $a0
	addi.d	$a1, $sp, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	fmov.d	$fs3, $fa0
	sub.d	$a0, $a0, $fp
	add.d	$s1, $s4, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_99:                               #   in Loop: Header=BB1_8 Depth=1
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ori	$a4, $zero, 10
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beq	$a0, $s3, .LBB1_132
# %bb.100:                              #   in Loop: Header=BB1_8 Depth=1
	beq	$s1, $s4, .LBB1_132
# %bb.101:                              #   in Loop: Header=BB1_8 Depth=1
	fcmp.ceq.d	$fcc0, $fs2, $fs3
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	bcnez	$fcc0, .LBB1_7
# %bb.102:                              #   in Loop: Header=BB1_8 Depth=1
	ld.d	$a0, $sp, 40
	movgr2cf	$fcc0, $a0
	bcnez	$fcc0, .LBB1_104
# %bb.103:                              #   in Loop: Header=BB1_8 Depth=1
	fsub.d	$fa0, $fs2, $fs3
	fabs.d	$fa0, $fa0
	fcmp.cule.d	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB1_7
.LBB1_104:                              #   in Loop: Header=BB1_8 Depth=1
	fcmp.ceq.d	$fcc0, $fs3, $fs4
	bcnez	$fcc0, .LBB1_106
# %bb.105:                              #   in Loop: Header=BB1_8 Depth=1
	fdiv.d	$fa0, $fs2, $fs3
	b	.LBB1_108
.LBB1_106:                              #   in Loop: Header=BB1_8 Depth=1
	fcmp.ceq.d	$fcc0, $fs2, $fs4
	fmov.d	$fa0, $fs4
	bcnez	$fcc0, .LBB1_109
# %bb.107:                              #   in Loop: Header=BB1_8 Depth=1
	fdiv.d	$fa0, $fs3, $fs2
.LBB1_108:                              #   in Loop: Header=BB1_8 Depth=1
	vldi	$vr1, -784
	fadd.d	$fa0, $fa0, $fa1
	fabs.d	$fa0, $fa0
.LBB1_109:                              #   in Loop: Header=BB1_8 Depth=1
	ld.d	$a0, $sp, 32
	movgr2cf	$fcc0, $a0
	bcnez	$fcc0, .LBB1_133
# %bb.110:                              #   in Loop: Header=BB1_8 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB1_7
	b	.LBB1_133
.LBB1_111:                              #   in Loop: Header=BB1_8 Depth=1
	move	$s5, $s7
	bnez	$s6, .LBB1_92
	b	.LBB1_5
.LBB1_112:                              # %.thread
	move	$s0, $s5
	move	$fp, $s6
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_121
.LBB1_113:                              # %skip_whitespace.exit
	bgeu	$s0, $s7, .LBB1_121
# %bb.114:                              # %.lr.ph.i78
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s0, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	slli.d	$a1, $a1, 50
	bgez	$a1, .LBB1_121
	.p2align	4, , 16
.LBB1_115:                              # =>This Inner Loop Header: Depth=1
	addi.d	$s0, $s0, 1
	beq	$s0, $s7, .LBB1_121
# %bb.116:                              # %.peel.next.i81
                                        #   in Loop: Header=BB1_115 Depth=1
	ld.bu	$a1, $s0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	slli.d	$a1, $a1, 50
	bltz	$a1, .LBB1_115
	b	.LBB1_121
.LBB1_117:
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_121
# %bb.118:                              # %.lr.ph.i
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	slli.d	$a1, $a1, 50
	bgez	$a1, .LBB1_113
	.p2align	4, , 16
.LBB1_119:                              # =>This Inner Loop Header: Depth=1
	addi.d	$fp, $fp, 1
	beq	$fp, $s8, .LBB1_113
# %bb.120:                              # %.peel.next.i
                                        #   in Loop: Header=BB1_119 Depth=1
	ld.bu	$a1, $fp, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	slli.d	$a1, $a1, 50
	bltz	$a1, .LBB1_119
	b	.LBB1_113
.LBB1_121:                              # %skip_whitespace.exit84
	bgeu	$fp, $s8, .LBB1_123
# %bb.122:                              # %skip_whitespace.exit84
	bltu	$s0, $s7, .LBB1_127
.LBB1_123:
	bltu	$fp, $s8, .LBB1_128
# %bb.124:
	bltu	$s0, $s7, .LBB1_128
# %bb.125:
	move	$s1, $zero
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	b	.LBB1_131
.LBB1_126:
	move	$s1, $zero
	b	.LBB1_131
.LBB1_127:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(g_program)
	ld.d	$a2, $a1, %pc_lo12(g_program)
	ld.b	$a3, $fp, 0
	ld.b	$a4, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB1_129
.LBB1_128:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(g_program)
	ld.d	$a2, $a1, %pc_lo12(g_program)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB1_129:
	move	$a0, $s1
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(dump_inputs)
	jirl	$ra, $ra, 0
.LBB1_130:
	ori	$s1, $zero, 1
.LBB1_131:
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	fld.d	$fs4, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
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
.LBB1_132:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(g_program)
	ld.d	$a2, $a1, %pc_lo12(g_program)
	ld.b	$a3, $s3, 0
	ld.b	$a4, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB1_130
.LBB1_133:                              # %.critedge.i168
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(g_program)
	ld.d	$a2, $a1, %pc_lo12(g_program)
	fsub.d	$fa1, $fs2, $fs3
	movfr2gr.d	$a1, $fa1
	fst.d	$fs1, $sp, 0
	bstrpick.d	$a5, $a1, 62, 0
	movfr2gr.d	$a3, $fs2
	movfr2gr.d	$a4, $fs3
	movfr2gr.d	$a6, $fa0
	movfr2gr.d	$a7, $fs0
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	b	.LBB1_131
.Lfunc_end1:
	.size	diff_file, .Lfunc_end1-diff_file
                                        # -- End function
	.p2align	5                               # -- Begin function dump_inputs
	.type	dump_inputs,@function
dump_inputs:                            # @dump_inputs
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_4
# %bb.1:                                # %.lr.ph.i.i
	move	$s1, $a0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 6
	move	$a2, $s0
	.p2align	4, , 16
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	ld.b	$a3, $a2, 0
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a0, $a3
	and	$a3, $a3, $a1
	beqz	$a3, .LBB2_5
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	addi.d	$s1, $s1, -1
	addi.d	$a2, $a2, 1
	bnez	$s1, .LBB2_2
.LBB2_4:                                # %.loopexit.i
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	pcalau12i	$a2, %pc_hi20(.L.str.15)
	addi.d	$a2, $a2, %pc_lo12(.L.str.15)
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_6
	b	.LBB2_9
.LBB2_5:                                # %contains_non_printable_characters.exit.i
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	pcalau12i	$a2, %pc_hi20(.L.str.15)
	addi.d	$a2, $a2, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_9
.LBB2_6:                                # %.lr.ph.i.i3
	move	$s0, $a0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 6
	move	$a2, $fp
	.p2align	4, , 16
.LBB2_7:                                # =>This Inner Loop Header: Depth=1
	ld.b	$a3, $a2, 0
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a0, $a3
	and	$a3, $a3, $a1
	beqz	$a3, .LBB2_10
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=1
	addi.d	$s0, $s0, -1
	addi.d	$a2, $a2, 1
	bnez	$s0, .LBB2_7
.LBB2_9:                                # %.loopexit.i7
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	pcalau12i	$a2, %pc_hi20(.L.str.16)
	addi.d	$a2, $a2, %pc_lo12(.L.str.16)
	move	$a3, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.LBB2_10:                               # %contains_non_printable_characters.exit.i8
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	pcalau12i	$a2, %pc_hi20(.L.str.16)
	addi.d	$a2, $a2, %pc_lo12(.L.str.16)
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.Lfunc_end2:
	.size	dump_inputs, .Lfunc_end2-dump_inputs
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.globl	usage                           # -- Begin function usage
	.p2align	5
	.type	usage,@function
usage:                                  # @usage
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(g_program)
	ld.d	$a2, $a1, %pc_lo12(g_program)
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 247
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	usage, .Lfunc_end3-usage
                                        # -- End function
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	move	$fp, $a1
	ld.d	$a1, $a1, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(g_program)
	ori	$s2, $zero, 1
	st.d	$a1, $a0, %pc_lo12(g_program)
	bne	$s0, $s2, .LBB4_2
# %bb.1:
	movgr2fr.d	$fs1, $zero
	move	$s4, $zero
	move	$s3, $zero
	fmov.d	$fs0, $fs1
	b	.LBB4_14
.LBB4_2:                                # %.lr.ph.preheader
	move	$s3, $zero
	move	$s4, $zero
	ori	$s2, $zero, 1
	movgr2fr.d	$fs0, $zero
	ori	$s5, $zero, 45
	ori	$s6, $zero, 2
	ori	$s7, $zero, 114
	ori	$s8, $zero, 105
	fmov.d	$fs1, $fs0
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_3:                                #   in Loop: Header=BB4_4 Depth=1
	ori	$s3, $zero, 1
	addi.w	$s2, $s2, 1
	beq	$s2, $s0, .LBB4_13
.LBB4_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $s2, 3
	ldx.d	$s1, $fp, $a0
	ld.bu	$a0, $s1, 0
	bne	$a0, $s5, .LBB4_14
# %bb.5:                                #   in Loop: Header=BB4_4 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s6, .LBB4_16
# %bb.6:                                #   in Loop: Header=BB4_4 Depth=1
	ld.bu	$a0, $s1, 1
	beq	$a0, $s7, .LBB4_9
# %bb.7:                                #   in Loop: Header=BB4_4 Depth=1
	beq	$a0, $s8, .LBB4_3
# %bb.8:                                #   in Loop: Header=BB4_4 Depth=1
	ori	$a1, $zero, 97
	bne	$a0, $a1, .LBB4_16
.LBB4_9:                                #   in Loop: Header=BB4_4 Depth=1
	addi.w	$s2, $s2, 1
	beq	$s2, $s0, .LBB4_18
# %bb.10:                               #   in Loop: Header=BB4_4 Depth=1
	slli.d	$a0, $s2, 3
	ldx.d	$a0, $fp, $a0
	st.d	$zero, $sp, 16
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB4_17
# %bb.11:                               #   in Loop: Header=BB4_4 Depth=1
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB4_17
# %bb.12:                               #   in Loop: Header=BB4_4 Depth=1
	ld.bu	$a0, $s1, 1
	addi.d	$a0, $a0, -97
	sltui	$a0, $a0, 1
	movgr2cf	$fcc0, $a0
	fsel	$fs1, $fs1, $fa0, $fcc0
	fsel	$fs0, $fa0, $fs0, $fcc0
	ori	$s4, $zero, 1
	addi.w	$s2, $s2, 1
	bne	$s2, $s0, .LBB4_4
.LBB4_13:
	move	$s2, $s0
.LBB4_14:                               # %._crit_edge
	addi.w	$a0, $s2, 2
	bne	$a0, $s0, .LBB4_19
# %bb.15:
	alsl.d	$a1, $s2, $fp, 3
	slli.d	$a0, $s2, 3
	ldx.d	$a0, $fp, $a0
	ld.d	$a1, $a1, 8
	andi	$a2, $s4, 1
	andi	$a3, $s3, 1
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(diff_file)
	jr	$t8
.LBB4_16:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(usage)
	jirl	$ra, $ra, 0
.LBB4_17:
	alsl.d	$a1, $s2, $fp, 3
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a3, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(usage)
	jirl	$ra, $ra, 0
.LBB4_18:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(usage)
	jirl	$ra, $ra, 0
.LBB4_19:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 36
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(usage)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rb"
	.size	.L.str, 3

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%s: error: unable to open '%s'\n"
	.size	.L.str.1, 32

	.type	g_program,@object               # @g_program
	.bss
	.globl	g_program
	.p2align	3, 0x0
g_program:
	.dword	0
	.size	g_program, 8

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%s: error: unable to seek '%s'\n"
	.size	.L.str.2, 32

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%s: error: unable to allocate buffer for '%s'\n"
	.size	.L.str.3, 47

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%s: error: unable to read data for '%s'\n"
	.size	.L.str.4, 41

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%s: Comparison failed, textual difference between '%c' and '%c'\n"
	.size	.L.str.5, 65

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%s: Comparison failed, unexpected end of one of the files\n"
	.size	.L.str.6, 59

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"usage: %s [-a VALUE] [-r VALUE] [-i] <path-A> <path-B>\n\n"
	.size	.L.str.7, 57

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Search two text files for differences.\nIf either -a or -r is specified (even if zero), floating numbers are parsed and considered equal if neither the absolute nor relative tolerance is exceeded.\nThe -i switch also ignores whitespace differences.\n"
	.size	.L.str.8, 248

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"error: invalid argument '%s'\n\n"
	.size	.L.str.9, 31

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"error: missing argument to '%s'\n\n"
	.size	.L.str.10, 34

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"error: invalid argument to '%s': '%s'\n\n"
	.size	.L.str.11, 40

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"error: invalid number of arguments\n\n"
	.size	.L.str.12, 37

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"%s: FP Comparison failed, not a numeric difference between '%c' and '%c'\n"
	.size	.L.str.13, 74

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"%s: Compared: %e and %e\nabs. diff = %e rel.diff = %e\nOut of tolerance: rel/abs: %e/%e\n"
	.size	.L.str.14, 87

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Input 1"
	.size	.L.str.15, 8

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Input 2"
	.size	.L.str.16, 8

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"\n%s: Contains binary data.\n"
	.size	.L.str.17, 28

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"\n%s:\n%s"
	.size	.L.str.18, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
