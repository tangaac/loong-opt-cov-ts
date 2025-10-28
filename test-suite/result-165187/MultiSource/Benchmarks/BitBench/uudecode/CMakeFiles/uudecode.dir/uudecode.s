	.file	"uudecode.c"
	.text
	.globl	skip_to_newline                 # -- Begin function skip_to_newline
	.p2align	5
	.type	skip_to_newline,@function
skip_to_newline:                        # @skip_to_newline
# %bb.0:
	add.d	$a0, $a0, $a1
	ori	$a2, $zero, 10
	.p2align	4, , 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a0, 0
	addi.w	$a1, $a1, 1
	addi.d	$a0, $a0, 1
	bne	$a3, $a2, .LBB0_1
# %bb.2:
	move	$a0, $a1
	ret
.Lfunc_end0:
	.size	skip_to_newline, .Lfunc_end0-skip_to_newline
                                        # -- End function
	.globl	decode_char                     # -- Begin function decode_char
	.p2align	5
	.type	decode_char,@function
decode_char:                            # @decode_char
# %bb.0:
	andi	$a0, $a0, 63
	xori	$a0, $a0, 32
	ret
.Lfunc_end1:
	.size	decode_char, .Lfunc_end1-decode_char
                                        # -- End function
	.globl	decode                          # -- Begin function decode
	.p2align	5
	.type	decode,@function
decode:                                 # @decode
# %bb.0:
	ldx.bu	$t2, $a0, $a1
	move	$a3, $zero
	ori	$a4, $zero, 32
	beq	$t2, $a4, .LBB2_13
# %bb.1:                                # %.lr.ph72.preheader
	addi.d	$a5, $a2, 1
	ori	$a6, $zero, 10
	addi.d	$a7, $zero, -126
	ori	$t0, $zero, 2
	ori	$t1, $zero, 1
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph72
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
                                        #     Child Loop BB2_11 Depth 2
	andi	$t3, $t2, 63
	addi.w	$a1, $a1, 1
	beq	$t3, $a4, .LBB2_10
# %bb.3:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB2_2 Depth=1
	move	$t2, $zero
	xori	$t4, $t3, 32
	addi.d	$a1, $a1, 2
	add.d	$t3, $a5, $a3
	.p2align	4, , 16
.LBB2_4:                                # %.lr.ph
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t5, $a0, $a1
	ld.b	$t7, $t5, -1
	ld.b	$t8, $t5, -2
	add.w	$t6, $t4, $t2
	srli.d	$t7, $t7, 4
	bstrins.d	$t7, $t8, 63, 2
	xor	$t7, $t7, $a7
	bgeu	$t0, $t6, .LBB2_7
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=2
	st.b	$t7, $t3, -1
	ldx.b	$t6, $a0, $a1
	ld.b	$t7, $t5, -1
	srli.d	$t6, $t6, 2
	bstrins.d	$t6, $t7, 63, 4
	xori	$t6, $t6, 8
	st.b	$t6, $t3, 0
	ldx.b	$t6, $a0, $a1
	ld.bu	$t5, $t5, 1
	bstrins.d	$t5, $t6, 63, 6
	xori	$t5, $t5, 32
	st.b	$t5, $t3, 1
	addi.d	$a1, $a1, 4
	addi.d	$t2, $t2, -3
	add.w	$t5, $t4, $t2
	addi.d	$t3, $t3, 3
	bnez	$t5, .LBB2_4
# %bb.6:                                # %._crit_edge.loopexit.loopexit
                                        #   in Loop: Header=BB2_2 Depth=1
	sub.w	$a3, $a3, $t2
	addi.w	$a1, $a1, -2
	b	.LBB2_10
	.p2align	4, , 16
.LBB2_7:                                #   in Loop: Header=BB2_2 Depth=1
	sub.d	$t2, $a3, $t2
	addi.w	$a3, $t2, 1
	st.b	$t7, $t3, -1
	beq	$t6, $t1, .LBB2_9
# %bb.8:                                #   in Loop: Header=BB2_2 Depth=1
	ldx.b	$t3, $a0, $a1
	ld.b	$t4, $t5, -1
	srli.d	$t3, $t3, 2
	bstrins.d	$t3, $t4, 63, 4
	xori	$t3, $t3, 8
	addi.w	$t2, $t2, 2
	stx.b	$t3, $a2, $a3
	move	$a3, $t2
.LBB2_9:                                # %.thread
                                        #   in Loop: Header=BB2_2 Depth=1
	addi.w	$a1, $a1, 2
.LBB2_10:                               # %._crit_edge
                                        #   in Loop: Header=BB2_2 Depth=1
	add.d	$t2, $a0, $a1
	.p2align	4, , 16
.LBB2_11:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t3, $t2, 0
	addi.w	$a1, $a1, 1
	addi.d	$t2, $t2, 1
	bne	$t3, $a6, .LBB2_11
# %bb.12:                               # %skip_to_newline.exit
                                        #   in Loop: Header=BB2_2 Depth=1
	ldx.bu	$t2, $a0, $a1
	bne	$t2, $a4, .LBB2_2
.LBB2_13:                               # %.preheader
	slli.d	$a2, $a1, 32
	add.d	$a1, $a0, $a1
	ori	$a4, $zero, 0
	lu32i.d	$a4, 1
	ori	$a5, $zero, 10
	.p2align	4, , 16
.LBB2_14:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a6, $a1, 0
	add.d	$a2, $a2, $a4
	addi.d	$a1, $a1, 1
	bne	$a6, $a5, .LBB2_14
# %bb.15:                               # %skip_to_newline.exit63
	srai.d	$a1, $a2, 32
	ldx.bu	$a2, $a0, $a1
	ori	$a4, $zero, 101
	bne	$a2, $a4, .LBB2_19
# %bb.16:
	add.d	$a0, $a0, $a1
	ld.bu	$a1, $a0, 1
	ori	$a2, $zero, 110
	bne	$a1, $a2, .LBB2_19
# %bb.17:
	ld.bu	$a0, $a0, 2
	ori	$a1, $zero, 100
	bne	$a0, $a1, .LBB2_19
# %bb.18:
	move	$a0, $a3
	ret
.LBB2_19:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	decode, .Lfunc_end2-decode
                                        # -- End function
	.globl	do_decode                       # -- Begin function do_decode
	.p2align	5
	.type	do_decode,@function
do_decode:                              # @do_decode
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	move	$s1, $a2
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 12
	move	$a0, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB3_2
# %bb.1:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 12
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(decode)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB3_2:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	do_decode, .Lfunc_end3-do_decode
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	move	$s2, $a1
	move	$s1, $a0
	lu12i.w	$a0, 2441
	ori	$s0, $a0, 1664
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	move	$fp, $a0
	blt	$s1, $a1, .LBB4_3
# %bb.1:
	ld.d	$a0, $s2, 8
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_29
# %bb.2:
	ld.d	$a0, $s2, 8
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
	bne	$s1, $a0, .LBB4_30
.LBB4_4:
	ori	$a1, $zero, 1
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s0, $a0, %pc_lo12(.L.str)
	move	$s1, $zero
	ori	$s2, $zero, 2
	ori	$s3, $zero, 32
	ori	$s4, $zero, 0
	lu32i.d	$s4, 1
	ori	$s5, $zero, 10
	ori	$s8, $zero, 100
	lu12i.w	$a0, 349525
	ori	$s6, $a0, 1366
	lu12i.w	$a0, -349526
	ori	$s7, $a0, 2731
	.p2align	4, , 16
.LBB4_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
                                        #       Child Loop BB4_12 Depth 3
                                        #       Child Loop BB4_14 Depth 3
                                        #       Child Loop BB4_19 Depth 3
                                        #     Child Loop BB4_22 Depth 2
	addi.d	$a2, $sp, 132
	addi.d	$a3, $sp, 32
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB4_28
# %bb.6:                                # %do_decode.exit
                                        #   in Loop: Header=BB4_5 Depth=1
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 12
	ldx.bu	$a2, $fp, $a0
	bne	$a2, $s3, .LBB4_8
# %bb.7:                                #   in Loop: Header=BB4_5 Depth=1
	move	$a1, $zero
	b	.LBB4_21
	.p2align	4, , 16
.LBB4_8:                                # %.lr.ph72.i.preheader
                                        #   in Loop: Header=BB4_5 Depth=1
	move	$a1, $zero
	.p2align	4, , 16
.LBB4_9:                                # %.lr.ph72.i
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_12 Depth 3
                                        #       Child Loop BB4_14 Depth 3
                                        #       Child Loop BB4_19 Depth 3
	andi	$a2, $a2, 63
	addi.w	$a0, $a0, 1
	beq	$a2, $s3, .LBB4_18
# %bb.10:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB4_9 Depth=2
	xori	$a2, $a2, 32
	mul.d	$a3, $a2, $s6
	srli.d	$a3, $a3, 32
	mul.d	$a4, $a2, $s7
	addi.w	$a4, $a4, -1
	sltu	$a5, $a3, $a4
	masknez	$a4, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a4
	bltu	$a3, $s2, .LBB4_13
# %bb.11:                               # %vector.ph
                                        #   in Loop: Header=BB4_9 Depth=2
	andi	$a3, $a3, 30
	alsl.w	$a0, $a3, $a0, 2
	alsl.d	$a4, $a3, $a3, 1
	sub.d	$a2, $a2, $a4
	add.d	$a1, $a1, $a4
	.p2align	4, , 16
.LBB4_12:                               # %vector.body
                                        #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$a3, $a3, -2
	bnez	$a3, .LBB4_12
.LBB4_13:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB4_9 Depth=2
	move	$a3, $zero
	.p2align	4, , 16
.LBB4_14:                               # %.lr.ph.i
                                        #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.w	$a4, $a2, $a3
	bgeu	$s2, $a4, .LBB4_17
# %bb.15:                               #   in Loop: Header=BB4_14 Depth=3
	addi.d	$a3, $a3, -3
	add.w	$a4, $a2, $a3
	addi.w	$a0, $a0, 4
	bnez	$a4, .LBB4_14
# %bb.16:                               # %._crit_edge.i.loopexit
                                        #   in Loop: Header=BB4_9 Depth=2
	sub.w	$a1, $a1, $a3
	b	.LBB4_18
	.p2align	4, , 16
.LBB4_17:                               # %.thread.i
                                        #   in Loop: Header=BB4_9 Depth=2
	addi.d	$a2, $a4, -1
	sltui	$a2, $a2, 1
	sub.d	$a1, $a1, $a2
	sub.d	$a1, $a1, $a3
	addi.w	$a1, $a1, 2
	addi.w	$a0, $a0, 4
.LBB4_18:                               # %._crit_edge.i
                                        #   in Loop: Header=BB4_9 Depth=2
	add.d	$a2, $fp, $a0
	.p2align	4, , 16
.LBB4_19:                               #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a3, $a2, 0
	addi.w	$a0, $a0, 1
	addi.d	$a2, $a2, 1
	bne	$a3, $s5, .LBB4_19
# %bb.20:                               # %skip_to_newline.exit.i
                                        #   in Loop: Header=BB4_9 Depth=2
	ldx.bu	$a2, $fp, $a0
	bne	$a2, $s3, .LBB4_9
.LBB4_21:                               # %.preheader.i
                                        #   in Loop: Header=BB4_5 Depth=1
	slli.d	$a2, $a0, 32
	add.d	$a0, $fp, $a0
	.p2align	4, , 16
.LBB4_22:                               #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a3, $a0, 0
	add.d	$a2, $a2, $s4
	addi.d	$a0, $a0, 1
	bne	$a3, $s5, .LBB4_22
# %bb.23:                               # %skip_to_newline.exit63.i
                                        #   in Loop: Header=BB4_5 Depth=1
	srai.d	$a0, $a2, 32
	ldx.bu	$a2, $fp, $a0
	ori	$a3, $zero, 101
	bne	$a2, $a3, .LBB4_28
# %bb.24:                               #   in Loop: Header=BB4_5 Depth=1
	add.d	$a0, $fp, $a0
	ld.bu	$a2, $a0, 1
	ori	$a3, $zero, 110
	bne	$a2, $a3, .LBB4_28
# %bb.25:                               #   in Loop: Header=BB4_5 Depth=1
	ld.bu	$a0, $a0, 2
	bne	$a0, $s8, .LBB4_28
# %bb.26:                               # %decode.exit
                                        #   in Loop: Header=BB4_5 Depth=1
	addi.w	$s1, $s1, 1
	bne	$s1, $s8, .LBB4_5
# %bb.27:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB4_28:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB4_29:
	move	$a3, $a0
	addi.w	$s1, $s1, -1
	ori	$a0, $zero, 1
	beq	$s1, $a0, .LBB4_4
.LBB4_30:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"begin %o %s \n"
	.size	.L.str, 14

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%d\n"
	.size	.L.str.3, 4

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Usage: uudecode [infile]"
	.size	.Lstr, 25

	.section	".note.GNU-stack","",@progbits
	.addrsig
