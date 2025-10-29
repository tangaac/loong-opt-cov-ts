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
	.globl	encode_line                     # -- Begin function encode_line
	.p2align	5
	.type	encode_line,@function
encode_line:                            # @encode_line
# %bb.0:
	andi	$a4, $a2, 63
	addi.d	$a4, $a4, 32
	st.b	$a4, $a3, 0
	blez	$a2, .LBB1_5
# %bb.1:                                # %.lr.ph.preheader
	move	$a4, $zero
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a3, 4
	ori	$a5, $zero, 2
	.p2align	4, , 16
.LBB1_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	bgeu	$a5, $a2, .LBB1_6
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	ld.bu	$a6, $a0, -1
	srli.d	$a6, $a6, 2
	addi.d	$a6, $a6, 32
	add.d	$a7, $a1, $a4
	st.b	$a6, $a7, -3
	ld.b	$a6, $a0, -1
	ld.b	$t0, $a0, 0
	slli.d	$a6, $a6, 4
	srli.d	$t0, $t0, 4
	or	$a6, $t0, $a6
	andi	$a6, $a6, 63
	addi.d	$a6, $a6, 32
	st.b	$a6, $a7, -2
	ld.b	$a6, $a0, 0
	ld.b	$t0, $a0, 1
	slli.d	$a6, $a6, 2
	srli.d	$t0, $t0, 6
	or	$a6, $t0, $a6
	andi	$a6, $a6, 63
	addi.d	$a6, $a6, 32
	st.b	$a6, $a7, -1
	ld.bu	$a6, $a0, 1
	andi	$a6, $a6, 63
	addi.d	$a6, $a6, 32
	stx.b	$a6, $a1, $a4
	addi.w	$a2, $a2, -3
	addi.d	$a0, $a0, 3
	addi.d	$a4, $a4, 4
	bnez	$a2, .LBB1_2
# %bb.4:                                # %._crit_edge.loopexit.loopexit
	addi.d	$a0, $a4, 1
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 10
	stx.h	$a1, $a3, $a0
	ret
.LBB1_5:
	ori	$a0, $zero, 1
	ori	$a1, $zero, 10
	stx.h	$a1, $a3, $a0
	ret
.LBB1_6:
	ld.bu	$a1, $a0, -1
	srli.d	$a1, $a1, 2
	addi.d	$a5, $a1, 32
	add.d	$a1, $a3, $a4
	st.b	$a5, $a1, 1
	ld.b	$a5, $a0, -1
	ori	$a6, $zero, 1
	slli.d	$a5, $a5, 4
	bne	$a2, $a6, .LBB1_8
# %bb.7:
	andi	$a0, $a5, 48
	addi.d	$a0, $a0, 32
	st.b	$a0, $a1, 2
	ori	$a0, $zero, 61
	b	.LBB1_9
.LBB1_8:
	ld.b	$a2, $a0, 0
	srli.d	$a2, $a2, 4
	or	$a2, $a2, $a5
	andi	$a2, $a2, 63
	addi.d	$a2, $a2, 32
	st.b	$a2, $a1, 2
	ld.b	$a0, $a0, 0
	slli.d	$a0, $a0, 2
	andi	$a0, $a0, 60
	addi.d	$a0, $a0, 32
.LBB1_9:                                # %.thread
	st.b	$a0, $a1, 3
	ori	$a0, $zero, 61
	st.b	$a0, $a1, 4
	addi.d	$a0, $a4, 5
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 10
	stx.h	$a1, $a3, $a0
	ret
.Lfunc_end1:
	.size	encode_line, .Lfunc_end1-encode_line
                                        # -- End function
	.globl	encode                          # -- Begin function encode
	.p2align	5
	.type	encode,@function
encode:                                 # @encode
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	move	$fp, $a2
	blez	$a1, .LBB2_6
# %bb.1:                                # %.lr.ph.preheader
	move	$s0, $a1
	move	$s1, $a0
	move	$s2, $zero
	ori	$s3, $zero, 45
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_2:                                #   in Loop: Header=BB2_4 Depth=1
	ori	$a2, $zero, 45
	addi.d	$a3, $sp, 17
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(encode_line)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, 45
.LBB2_3:                                #   in Loop: Header=BB2_4 Depth=1
	addi.d	$a1, $sp, 17
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
	addi.d	$a3, $sp, 17
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
	add.d	$a1, $fp, $a0
	pcalau12i	$a2, %pc_hi20(.L.str)
	addi.d	$a2, $a2, %pc_lo12(.L.str)
	ld.w	$a3, $a2, 0
	ld.h	$a2, $a2, 4
	stx.w	$a3, $fp, $a0
	st.h	$a2, $a1, 4
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
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
	move	$s0, $a2
	move	$fp, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ld.w	$a1, $a0, 7
	ld.d	$a0, $a0, 0
	st.w	$a1, $fp, 7
	st.d	$a0, $fp, 0
	move	$a0, $fp
	move	$a1, $a3
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $fp, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	ld.h	$a3, $a2, 0
	ld.b	$a2, $a2, 2
	stx.h	$a3, $fp, $a0
	st.b	$a2, $a1, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$s2, $fp, $a0
	blez	$s0, .LBB3_6
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
	add.d	$a1, $s2, $a0
	pcalau12i	$a2, %pc_hi20(.L.str)
	addi.d	$a2, $a2, %pc_lo12(.L.str)
	ld.w	$a3, $a2, 0
	ld.h	$a2, $a2, 4
	stx.w	$a3, $s2, $a0
	st.h	$a2, $a1, 4
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
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	move	$s3, $a1
	move	$s2, $a0
	lu12i.w	$a0, 244
	ori	$s0, $a0, 576
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
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
	bnez	$a0, .LBB4_25
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
	bne	$s2, $a0, .LBB4_26
.LBB4_4:
	ori	$a1, $zero, 1
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.d	$a0, $sp, 72
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s4, 0
	blez	$s3, .LBB4_27
# %bb.5:                                # %.lr.ph.i.i.preheader.us.preheader
	addi.d	$a0, $s1, 1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$s5, $sp, 92
	addi.d	$s6, $s1, 2
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
	move	$a3, $zero
	ld.h	$a1, $a0, 0
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ld.b	$a0, $a0, 2
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$s8, $zero, 44
	ori	$s7, $zero, 10
	ori	$s2, $zero, 2
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_6:                                # %do_encode.exit.loopexit.us
                                        #   in Loop: Header=BB4_7 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $s1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str)
	addi.d	$a2, $a2, %pc_lo12(.L.str)
	ld.w	$a3, $a2, 0
	ld.h	$a2, $a2, 4
	stx.w	$a3, $s1, $a0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	addi.w	$a3, $a3, 1
	st.h	$a2, $a1, 4
	ori	$a0, $zero, 1000
	beq	$a3, $a0, .LBB4_29
.LBB4_7:                                # %.lr.ph.i.i.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_11 Depth 2
                                        #       Child Loop BB4_17 Depth 3
                                        #       Child Loop BB4_13 Depth 3
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
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
	move	$s0, $zero
	add.d	$s1, $fp, $a0
	b	.LBB4_11
.LBB4_8:                                #   in Loop: Header=BB4_11 Depth=2
	ori	$a0, $zero, 1
.LBB4_9:                                # %encode_line.exit.us
                                        #   in Loop: Header=BB4_11 Depth=2
	addi.d	$a1, $sp, 88
	stx.h	$s7, $a0, $a1
	move	$s0, $s4
.LBB4_10:                               #   in Loop: Header=BB4_11 Depth=2
	addi.d	$a1, $sp, 88
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s0, 0
	add.d	$s1, $s1, $a0
	bge	$a1, $s3, .LBB4_6
.LBB4_11:                               # %.lr.ph.i.i.us
                                        #   Parent Loop BB4_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_17 Depth 3
                                        #       Child Loop BB4_13 Depth 3
	sub.w	$a1, $s4, $s0
	bge	$s8, $a1, .LBB4_15
# %bb.12:                               #   in Loop: Header=BB4_11 Depth=2
	ori	$a0, $zero, 77
	st.b	$a0, $sp, 88
	bstrpick.d	$a0, $s0, 31, 0
	add.d	$a0, $s6, $a0
	move	$a1, $s5
	addi.d	$a2, $zero, -45
	.p2align	4, , 16
.LBB4_13:                               #   Parent Loop BB4_7 Depth=1
                                        #     Parent Loop BB4_11 Depth=2
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
	bnez	$a2, .LBB4_13
# %bb.14:                               # %encode_line.exit40.us
                                        #   in Loop: Header=BB4_11 Depth=2
	st.h	$s7, $sp, 149
	addi.w	$s0, $s0, 45
	b	.LBB4_10
	.p2align	4, , 16
.LBB4_15:                               #   in Loop: Header=BB4_11 Depth=2
	andi	$a0, $a1, 63
	addi.d	$a0, $a0, 32
	st.b	$a0, $sp, 88
	blez	$a1, .LBB4_8
# %bb.16:                               # %.lr.ph.preheader.i.us
                                        #   in Loop: Header=BB4_11 Depth=2
	bstrpick.d	$a0, $s0, 31, 0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	ori	$a0, $zero, 5
	.p2align	4, , 16
.LBB4_17:                               # %.lr.ph.i.us
                                        #   Parent Loop BB4_7 Depth=1
                                        #     Parent Loop BB4_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bgeu	$s2, $a1, .LBB4_20
# %bb.18:                               #   in Loop: Header=BB4_17 Depth=3
	ld.bu	$a3, $a2, -1
	srli.d	$a4, $a3, 2
	addi.d	$a4, $a4, 32
	ld.b	$a5, $a2, 0
	add.d	$a6, $s5, $a0
	st.b	$a4, $a6, -8
	slli.d	$a3, $a3, 4
	srli.d	$a4, $a5, 4
	or	$a3, $a4, $a3
	andi	$a3, $a3, 63
	ld.b	$a4, $a2, 1
	addi.d	$a3, $a3, 32
	st.b	$a3, $a6, -7
	slli.d	$a3, $a5, 2
	srli.d	$a5, $a4, 6
	or	$a3, $a5, $a3
	andi	$a3, $a3, 63
	addi.d	$a3, $a3, 32
	st.b	$a3, $a6, -6
	andi	$a3, $a4, 63
	addi.d	$a3, $a3, 32
	st.b	$a3, $a6, -5
	addi.w	$a1, $a1, -3
	addi.d	$a2, $a2, 3
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB4_17
# %bb.19:                               # %._crit_edge.loopexit.i.us.loopexit
                                        #   in Loop: Header=BB4_11 Depth=2
	addi.d	$a0, $a0, -4
	b	.LBB4_24
.LBB4_20:                               #   in Loop: Header=BB4_11 Depth=2
	ld.bu	$a4, $a2, -1
	srli.d	$a3, $a4, 2
	addi.d	$a5, $a3, 32
	add.d	$a3, $s5, $a0
	st.b	$a5, $a3, -8
	slli.d	$a4, $a4, 4
	ori	$a5, $zero, 1
	bne	$a1, $a5, .LBB4_22
# %bb.21:                               #   in Loop: Header=BB4_11 Depth=2
	andi	$a1, $a4, 48
	ori	$a2, $zero, 61
	b	.LBB4_23
.LBB4_22:                               #   in Loop: Header=BB4_11 Depth=2
	ld.b	$a2, $a2, 0
	srli.d	$a1, $a2, 4
	or	$a1, $a1, $a4
	andi	$a1, $a1, 63
	slli.d	$a2, $a2, 2
	andi	$a2, $a2, 60
	addi.d	$a2, $a2, 32
.LBB4_23:                               # %.thread.i.us
                                        #   in Loop: Header=BB4_11 Depth=2
	addi.d	$a1, $a1, 32
	st.b	$a1, $a3, -7
	st.b	$a2, $a3, -6
	ori	$a1, $zero, 61
	st.b	$a1, $a3, -5
.LBB4_24:                               # %._crit_edge.loopexit.i.us
                                        #   in Loop: Header=BB4_11 Depth=2
	bstrpick.d	$a0, $a0, 31, 0
	b	.LBB4_9
.LBB4_25:
	move	$a3, $a0
	addi.w	$s2, $s2, -1
	ori	$a0, $zero, 1
	beq	$s2, $a0, .LBB4_4
.LBB4_26:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB4_27:                               # %do_encode.exit.preheader
	ori	$s1, $zero, 1000
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ld.w	$a1, $a0, 7
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ld.d	$s3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ld.d	$s4, $a0, 0
	ld.w	$s5, $a0, 7
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ld.h	$s6, $a0, 0
	ld.b	$s7, $a0, 2
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.w	$s8, $a0, 0
	ld.h	$s2, $a0, 4
	.p2align	4, , 16
.LBB4_28:                               # %do_encode.exit
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.w	$a0, $fp, 7
	st.d	$s3, $fp, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $fp, $a0
	stx.d	$s4, $fp, $a0
	st.w	$s5, $a1, 7
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $fp, $a0
	stx.h	$s6, $fp, $a0
	st.b	$s7, $a1, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$s0, $fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $s0, $a0
	stx.w	$s8, $s0, $a0
	addi.w	$s1, $s1, -1
	st.h	$s2, $a1, 4
	bnez	$s1, .LBB4_28
.LBB4_29:                               # %.split50.us
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$a0, $sp, 88
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
