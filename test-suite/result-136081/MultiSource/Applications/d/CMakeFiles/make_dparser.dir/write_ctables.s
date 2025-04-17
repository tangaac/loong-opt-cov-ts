	.file	"write_ctables.c"
	.text
	.p2align	5                               # -- Begin function scanner_block_hash_fn
	.type	scanner_block_hash_fn,@function
scanner_block_hash_fn:                  # @scanner_block_hash_fn
# %bb.0:
	ld.d	$a2, $a1, 16
	addi.w	$a1, $a2, 0
	ori	$a3, $zero, 1
	blt	$a1, $a3, .LBB0_6
# %bb.1:                                # %.lr.ph.preheader
	ld.d	$a1, $a0, 16
	move	$a0, $zero
	bstrpick.d	$a2, $a2, 30, 0
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a3, $a3, 0
	addi.d	$a3, $a3, 2
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	alsl.w	$a0, $a0, $a0, 4
	add.w	$a0, $a3, $a0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	beqz	$a2, .LBB0_7
.LBB0_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 0
	bnez	$a3, .LBB0_2
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	ori	$a3, $zero, 1
	b	.LBB0_3
.LBB0_6:
	move	$a0, $zero
.LBB0_7:                                # %._crit_edge
	ret
.Lfunc_end0:
	.size	scanner_block_hash_fn, .Lfunc_end0-scanner_block_hash_fn
                                        # -- End function
	.p2align	5                               # -- Begin function scanner_block_cmp_fn
	.type	scanner_block_cmp_fn,@function
scanner_block_cmp_fn:                   # @scanner_block_cmp_fn
# %bb.0:
	ld.d	$a3, $a2, 16
	addi.w	$a2, $a3, 0
	ori	$a4, $zero, 1
	blt	$a2, $a4, .LBB1_8
# %bb.1:                                # %.lr.ph.preheader
	ld.d	$a2, $a0, 16
	ld.d	$a1, $a1, 16
	bstrpick.d	$a3, $a3, 30, 0
	ori	$a0, $zero, 1
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	beqz	$a3, .LBB1_8
.LBB1_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	ld.d	$a5, $a1, 0
	beq	$a4, $a5, .LBB1_2
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	beqz	$a4, .LBB1_7
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	beqz	$a5, .LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a4, $a4, 0
	ld.w	$a5, $a5, 0
	beq	$a4, $a5, .LBB1_2
.LBB1_7:                                # %._crit_edge
	ret
.LBB1_8:
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	scanner_block_cmp_fn, .Lfunc_end1-scanner_block_cmp_fn
                                        # -- End function
	.p2align	5                               # -- Begin function trans_scanner_block_hash_fn
	.type	trans_scanner_block_hash_fn,@function
trans_scanner_block_hash_fn:            # @trans_scanner_block_hash_fn
# %bb.0:
	ld.d	$a2, $a1, 16
	addi.w	$a1, $a2, 0
	ori	$a3, $zero, 1
	blt	$a1, $a3, .LBB2_6
# %bb.1:                                # %.lr.ph.preheader
	ld.d	$a1, $a0, 24
	move	$a0, $zero
	bstrpick.d	$a2, $a2, 30, 0
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_2:                                #   in Loop: Header=BB2_4 Depth=1
	ld.w	$a3, $a3, 0
	addi.d	$a3, $a3, 1
.LBB2_3:                                #   in Loop: Header=BB2_4 Depth=1
	alsl.w	$a0, $a0, $a0, 1
	add.w	$a0, $a3, $a0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	beqz	$a2, .LBB2_7
.LBB2_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 0
	bnez	$a3, .LBB2_2
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	move	$a3, $zero
	b	.LBB2_3
.LBB2_6:
	move	$a0, $zero
.LBB2_7:                                # %._crit_edge
	ret
.Lfunc_end2:
	.size	trans_scanner_block_hash_fn, .Lfunc_end2-trans_scanner_block_hash_fn
                                        # -- End function
	.p2align	5                               # -- Begin function trans_scanner_block_cmp_fn
	.type	trans_scanner_block_cmp_fn,@function
trans_scanner_block_cmp_fn:             # @trans_scanner_block_cmp_fn
# %bb.0:
	ld.d	$a3, $a2, 16
	addi.w	$a2, $a3, 0
	ori	$a4, $zero, 1
	blt	$a2, $a4, .LBB3_8
# %bb.1:                                # %.lr.ph.preheader
	ld.d	$a2, $a0, 24
	ld.d	$a1, $a1, 24
	bstrpick.d	$a3, $a3, 30, 0
	ori	$a0, $zero, 1
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_2:                                #   in Loop: Header=BB3_3 Depth=1
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	beqz	$a3, .LBB3_8
.LBB3_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	ld.d	$a5, $a1, 0
	beq	$a4, $a5, .LBB3_2
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	beqz	$a4, .LBB3_7
# %bb.5:                                #   in Loop: Header=BB3_3 Depth=1
	beqz	$a5, .LBB3_7
# %bb.6:                                #   in Loop: Header=BB3_3 Depth=1
	ld.w	$a4, $a4, 0
	ld.w	$a5, $a5, 0
	beq	$a4, $a5, .LBB3_2
.LBB3_7:                                # %._crit_edge
	ret
.LBB3_8:
	move	$a0, $zero
	ret
.Lfunc_end3:
	.size	trans_scanner_block_cmp_fn, .Lfunc_end3-trans_scanner_block_cmp_fn
                                        # -- End function
	.p2align	5                               # -- Begin function shift_hash_fn
	.type	shift_hash_fn,@function
shift_hash_fn:                          # @shift_hash_fn
# %bb.0:
	ld.d	$a0, $a0, 8
	ld.w	$a0, $a0, 4
	ret
.Lfunc_end4:
	.size	shift_hash_fn, .Lfunc_end4-shift_hash_fn
                                        # -- End function
	.p2align	5                               # -- Begin function shift_cmp_fn
	.type	shift_cmp_fn,@function
shift_cmp_fn:                           # @shift_cmp_fn
# %bb.0:
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ld.w	$a0, $a0, 4
	ld.w	$a1, $a1, 4
	xor	$a0, $a0, $a1
	sltu	$a0, $zero, $a0
	ret
.Lfunc_end5:
	.size	shift_cmp_fn, .Lfunc_end5-shift_cmp_fn
                                        # -- End function
	.p2align	5                               # -- Begin function er_hint_hash_fn
	.type	er_hint_hash_fn,@function
er_hint_hash_fn:                        # @er_hint_hash_fn
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 256
	beqz	$a0, .LBB6_5
# %bb.1:                                # %.lr.ph
	ld.d	$a1, $fp, 264
	move	$s1, $zero
	move	$s2, $zero
	move	$s0, $zero
	lu12i.w	$a0, 2
	ori	$s3, $a0, 1815
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_2:                                #   in Loop: Header=BB6_3 Depth=1
	ld.wu	$a0, $fp, 256
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	bgeu	$s2, $a0, .LBB6_6
.LBB6_3:                                # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $a1, $s1
	ld.d	$a1, $a0, 16
	ld.w	$a2, $a1, 32
	ld.d	$a1, $a1, 40
	addi.d	$a2, $a2, -1
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	ld.d	$a1, $a1, 16
	ld.w	$a2, $a0, 0
	ld.d	$a0, $a1, 24
	ld.w	$a1, $a1, 32
	alsl.d	$a3, $a2, $a2, 1
	alsl.d	$s4, $a3, $a2, 2
	pcaddu18i	$ra, %call36(strhashl)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 264
	ldx.d	$a2, $a1, $s1
	ld.d	$a2, $a2, 16
	add.d	$a3, $s0, $s4
	add.d	$a0, $a3, $a0
	addi.w	$s0, $a0, 13
	beqz	$a2, .LBB6_2
# %bb.4:                                #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a0, $a2, 8
	ld.w	$a0, $a0, 56
	mul.d	$a0, $a0, $s3
	add.w	$s0, $a0, $s0
	b	.LBB6_2
.LBB6_5:
	move	$s0, $zero
.LBB6_6:                                # %._crit_edge
	move	$a0, $s0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end6:
	.size	er_hint_hash_fn, .Lfunc_end6-er_hint_hash_fn
                                        # -- End function
	.p2align	5                               # -- Begin function er_hint_cmp_fn
	.type	er_hint_cmp_fn,@function
er_hint_cmp_fn:                         # @er_hint_cmp_fn
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a2, $a0, 256
	ld.w	$a3, $a1, 256
	ori	$fp, $zero, 1
	bne	$a2, $a3, .LBB7_8
# %bb.1:                                # %.preheader
	beqz	$a2, .LBB7_7
# %bb.2:                                # %.lr.ph
	ld.d	$s0, $a0, 264
	ld.d	$s1, $a1, 264
	bstrpick.d	$s2, $a2, 31, 0
	.p2align	4, , 16
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $a0, 0
	ld.w	$a3, $a1, 0
	bne	$a2, $a3, .LBB7_8
# %bb.4:                                #   in Loop: Header=BB7_3 Depth=1
	ld.d	$s4, $a0, 16
	ld.d	$s3, $a1, 16
	ld.w	$a0, $s4, 32
	ld.w	$a1, $s3, 32
	ld.d	$a2, $s4, 40
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	ld.d	$a2, $s3, 40
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a1, 16
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_8
# %bb.5:                                #   in Loop: Header=BB7_3 Depth=1
	ld.d	$a0, $s4, 8
	ld.d	$a1, $s3, 8
	ld.w	$a0, $a0, 56
	ld.w	$a1, $a1, 56
	bne	$a0, $a1, .LBB7_8
# %bb.6:                                #   in Loop: Header=BB7_3 Depth=1
	addi.d	$s1, $s1, 8
	addi.d	$s2, $s2, -1
	addi.d	$s0, $s0, 8
	bnez	$s2, .LBB7_3
.LBB7_7:
	move	$fp, $zero
.LBB7_8:                                # %.loopexit
	move	$a0, $fp
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
	.size	er_hint_cmp_fn, .Lfunc_end7-er_hint_cmp_fn
                                        # -- End function
	.globl	write_parser_tables_as_C        # -- Begin function write_parser_tables_as_C
	.p2align	5
	.type	write_parser_tables_as_C,@function
write_parser_tables_as_C:               # @write_parser_tables_as_C
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -1296
	move	$s5, $a2
	move	$s2, $a1
	move	$fp, $a0
	st.w	$zero, $sp, 184
	st.d	$zero, $sp, 192
	addi.d	$a0, $sp, 224
	addi.d	$s1, $sp, 224
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 224
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	pcalau12i	$a2, %got_pc_hi20(stdout)
	ld.d	$a2, $a2, %got_pc_lo12(stdout)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ld.d	$a3, $a1, 0
	ld.w	$a1, $a1, 8
	ld.d	$s0, $a2, 0
	add.d	$a2, $s1, $a0
	stx.d	$a3, $a0, $s1
	st.w	$a1, $a2, 8
	move	$s3, $s0
	bnez	$s0, .LBB8_2
# %bb.1:                                # %.split68
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	addi.d	$a1, $sp, 224
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
	move	$s3, $zero
.LBB8_2:                                # %.split
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s5
	pcaddu18i	$ra, %call36(write_header_as_C)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(write_global_code_as_C)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 20
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB8_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	move	$a0, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB8_4:
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lookup_production)
	jirl	$ra, $ra, 0
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	beqz	$a0, .LBB8_8
# %bb.5:
	ld.d	$a0, $a0, 24
	ld.d	$s6, $a0, 0
	ld.d	$a0, $s6, 8
	ld.w	$a2, $a0, 56
	ld.w	$a3, $s6, 0
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s2, $a0, %pc_lo12(.L.str.52)
	move	$a0, $s0
	move	$a4, $s5
	move	$a5, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 8
	ld.w	$a2, $a0, 56
	ld.w	$a3, $s6, 0
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a1, $a0, %pc_lo12(.L.str.36)
	move	$a0, $s0
	move	$a4, $s5
	move	$a5, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 8
	ld.w	$a2, $a0, 56
	ld.w	$a3, $s6, 0
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	move	$a0, $s0
	move	$a4, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 112
	beqz	$a0, .LBB8_9
# %bb.6:                                # %.lr.ph.i.preheader
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$s3, $a0, %pc_lo12(.L.str.38)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s4, $a0, %pc_lo12(.L.str.52)
	.p2align	4, , 16
.LBB8_7:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 8
	ld.w	$a3, $a0, 56
	ld.w	$a4, $s6, 0
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s2
	move	$a5, $s5
	move	$a6, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 112
	addi.w	$s2, $s2, 1
	bltu	$s2, $a0, .LBB8_7
	b	.LBB8_9
.LBB8_8:
	move	$s6, $zero
.LBB8_9:                                # %.loopexit258.i
	ld.wu	$a0, $fp, 8
	pcalau12i	$a1, %pc_hi20(.L.str.43)
	addi.d	$a1, $a1, %pc_lo12(.L.str.43)
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a1, $a1, %pc_lo12(.L.str.23)
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	beqz	$a0, .LBB8_82
# %bb.10:                               # %.lr.ph284.i
	move	$t5, $zero
	b	.LBB8_13
	.p2align	4, , 16
.LBB8_11:                               # %._crit_edge281.loopexit.i
                                        #   in Loop: Header=BB8_13 Depth=1
	ld.wu	$a0, $fp, 8
	ld.d	$t5, $sp, 152                   # 8-byte Folded Reload
.LBB8_12:                               # %._crit_edge281.i
                                        #   in Loop: Header=BB8_13 Depth=1
	addi.d	$t5, $t5, 1
	bgeu	$t5, $a0, .LBB8_82
.LBB8_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_18 Depth 2
                                        #       Child Loop BB8_20 Depth 3
                                        #         Child Loop BB8_33 Depth 4
                                        #     Child Loop BB8_41 Depth 2
                                        #       Child Loop BB8_49 Depth 3
                                        #       Child Loop BB8_66 Depth 3
	ld.d	$a1, $fp, 16
	slli.d	$a2, $t5, 3
	ldx.d	$s8, $a1, $a2
	ld.w	$a1, $s8, 16
	addi.w	$a2, $a1, -1
	bltz	$a2, .LBB8_36
# %bb.14:                               # %.lr.ph270.i
                                        #   in Loop: Header=BB8_13 Depth=1
	beqz	$a2, .LBB8_37
# %bb.15:                               # %.lr.ph266.i.preheader
                                        #   in Loop: Header=BB8_13 Depth=1
	ld.d	$a3, $s8, 24
	b	.LBB8_18
.LBB8_16:                               # %.preheader._crit_edge.i
                                        #   in Loop: Header=BB8_18 Depth=2
	st.d	$a7, $a4, 160
	.p2align	4, , 16
.LBB8_17:                               # %.loopexit.i
                                        #   in Loop: Header=BB8_18 Depth=2
	addi.d	$a2, $a2, -1
	beqz	$a2, .LBB8_36
.LBB8_18:                               # %.lr.ph266.i
                                        #   Parent Loop BB8_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_20 Depth 3
                                        #         Child Loop BB8_33 Depth 4
	slli.d	$a4, $a2, 3
	ldx.d	$a4, $a3, $a4
	ld.w	$a5, $a4, 32
	move	$a6, $zero
	b	.LBB8_20
	.p2align	4, , 16
.LBB8_19:                               # %.thread.i
                                        #   in Loop: Header=BB8_20 Depth=3
	addi.d	$a6, $a6, 1
	beq	$a6, $a2, .LBB8_17
.LBB8_20:                               #   Parent Loop BB8_13 Depth=1
                                        #     Parent Loop BB8_18 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_33 Depth 4
	slli.d	$a7, $a6, 3
	ldx.d	$a7, $a3, $a7
	ld.w	$t0, $a7, 32
	bne	$a5, $t0, .LBB8_19
# %bb.21:                               #   in Loop: Header=BB8_20 Depth=3
	ld.d	$t0, $a4, 80
	ld.d	$t1, $a7, 80
	bne	$t0, $t1, .LBB8_19
# %bb.22:                               #   in Loop: Header=BB8_20 Depth=3
	ld.d	$t0, $a4, 96
	ld.d	$t1, $a7, 96
	bne	$t0, $t1, .LBB8_19
# %bb.23:                               #   in Loop: Header=BB8_20 Depth=3
	ld.w	$t0, $a4, 16
	ld.w	$t1, $a7, 16
	bne	$t0, $t1, .LBB8_19
# %bb.24:                               #   in Loop: Header=BB8_20 Depth=3
	ld.w	$t0, $a4, 20
	ld.w	$t1, $a7, 20
	bne	$t0, $t1, .LBB8_19
# %bb.25:                               #   in Loop: Header=BB8_20 Depth=3
	ld.w	$t0, $a4, 24
	ld.w	$t1, $a7, 24
	bne	$t0, $t1, .LBB8_19
# %bb.26:                               #   in Loop: Header=BB8_20 Depth=3
	ld.w	$t0, $a4, 28
	ld.w	$t1, $a7, 28
	bne	$t0, $t1, .LBB8_19
# %bb.27:                               #   in Loop: Header=BB8_20 Depth=3
	ld.w	$t0, $a4, 152
	ld.w	$t1, $a7, 152
	bne	$t0, $t1, .LBB8_19
# %bb.28:                               #   in Loop: Header=BB8_20 Depth=3
	ld.w	$t2, $a4, 112
	ld.w	$t0, $a7, 112
	bne	$t2, $t0, .LBB8_19
# %bb.29:                               # %.preheader.i
                                        #   in Loop: Header=BB8_20 Depth=3
	beqz	$t2, .LBB8_16
# %bb.30:                               # %.lr.ph262.i
                                        #   in Loop: Header=BB8_20 Depth=3
	ld.d	$t0, $a4, 120
	ld.d	$t1, $a7, 120
	bstrpick.d	$t2, $t2, 31, 0
	b	.LBB8_33
	.p2align	4, , 16
.LBB8_31:                               #   in Loop: Header=BB8_33 Depth=4
	bnez	$t3, .LBB8_19
.LBB8_32:                               #   in Loop: Header=BB8_33 Depth=4
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, 8
	beqz	$t2, .LBB8_16
.LBB8_33:                               #   Parent Loop BB8_13 Depth=1
                                        #     Parent Loop BB8_18 Depth=2
                                        #       Parent Loop BB8_20 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$t4, $t0, 0
	ld.d	$t3, $t1, 0
	beqz	$t4, .LBB8_31
# %bb.34:                               #   in Loop: Header=BB8_33 Depth=4
	beqz	$t3, .LBB8_19
# %bb.35:                               #   in Loop: Header=BB8_33 Depth=4
	ld.d	$t4, $t4, 0
	ld.d	$t3, $t3, 0
	beq	$t4, $t3, .LBB8_32
	b	.LBB8_19
	.p2align	4, , 16
.LBB8_36:                               # %.preheader257.i
                                        #   in Loop: Header=BB8_13 Depth=1
	beqz	$a1, .LBB8_12
.LBB8_37:                               # %.lr.ph280.i
                                        #   in Loop: Header=BB8_13 Depth=1
	st.d	$t5, $sp, 152                   # 8-byte Folded Spill
	move	$s7, $zero
	b	.LBB8_41
.LBB8_38:                               #   in Loop: Header=BB8_41 Depth=2
	ld.w	$a4, $s2, 152
.LBB8_39:                               #   in Loop: Header=BB8_41 Depth=2
	lu12i.w	$a5, 1
	ori	$a5, $a5, 224
	add.d	$a5, $sp, $a5
	st.d	$a5, $sp, 32
	st.d	$s4, $sp, 24
	st.d	$a4, $sp, 16
	st.d	$a1, $sp, 8
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$a1, $a1, %pc_lo12(.L.str.51)
	lu12i.w	$a4, 1
	ori	$a4, $a4, 480
	add.d	$a4, $sp, $a4
	lu12i.w	$a5, 1
	ori	$a5, $a5, 736
	add.d	$a5, $sp, $a5
	st.d	$a0, $sp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s8, 16
.LBB8_40:                               #   in Loop: Header=BB8_41 Depth=2
	addi.d	$s7, $s7, 1
	bstrpick.d	$a0, $a1, 31, 0
	bgeu	$s7, $a0, .LBB8_11
.LBB8_41:                               #   Parent Loop BB8_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_49 Depth 3
                                        #       Child Loop BB8_66 Depth 3
	ld.d	$a0, $s8, 24
	slli.d	$a2, $s7, 3
	ldx.d	$s2, $a0, $a2
	ld.d	$a0, $s2, 160
	bnez	$a0, .LBB8_40
# %bb.42:                               #   in Loop: Header=BB8_41 Depth=2
	ld.d	$a0, $s2, 80
	beqz	$a0, .LBB8_44
# %bb.43:                               #   in Loop: Header=BB8_41 Depth=2
	ld.d	$a0, $s2, 8
	ld.w	$a2, $a0, 56
	ld.w	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a1, $a0, %pc_lo12(.L.str.39)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a5, $a0, %pc_lo12(.L.str.52)
	move	$a0, $s0
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, 80
	ld.w	$a4, $s2, 88
	ld.d	$a5, $fp, 0
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(write_code_as_C)
	jirl	$ra, $ra, 0
.LBB8_44:                               #   in Loop: Header=BB8_41 Depth=2
	ld.d	$a0, $s2, 96
	beqz	$a0, .LBB8_46
# %bb.45:                               #   in Loop: Header=BB8_41 Depth=2
	ld.d	$a0, $s2, 8
	ld.w	$a2, $a0, 56
	ld.w	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a1, $a0, %pc_lo12(.L.str.40)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a5, $a0, %pc_lo12(.L.str.52)
	move	$a0, $s0
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, 96
	ld.w	$a4, $s2, 104
	ld.d	$a5, $fp, 0
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(write_code_as_C)
	jirl	$ra, $ra, 0
.LBB8_46:                               #   in Loop: Header=BB8_41 Depth=2
	ld.wu	$a0, $s2, 112
	beqz	$a0, .LBB8_51
# %bb.47:                               # %.lr.ph273.i
                                        #   in Loop: Header=BB8_41 Depth=2
	move	$s3, $zero
	move	$s1, $zero
	move	$s4, $zero
	b	.LBB8_49
	.p2align	4, , 16
.LBB8_48:                               #   in Loop: Header=BB8_49 Depth=3
	addi.d	$s4, $s4, 1
	addi.d	$s1, $s1, 8
	addi.w	$s3, $s3, 1
	bgeu	$s4, $a0, .LBB8_51
.LBB8_49:                               #   Parent Loop BB8_13 Depth=1
                                        #     Parent Loop BB8_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $s2, 120
	ldx.d	$a1, $a1, $s1
	beqz	$a1, .LBB8_48
# %bb.50:                               #   in Loop: Header=BB8_49 Depth=3
	ld.d	$a0, $s2, 8
	ld.w	$a3, $a0, 56
	ld.w	$a4, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a1, $a0, %pc_lo12(.L.str.41)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a6, $a0, %pc_lo12(.L.str.52)
	move	$a0, $s0
	move	$a2, $s3
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 120
	ldx.d	$a0, $a0, $s1
	ld.d	$a3, $a0, 0
	ld.w	$a4, $a0, 8
	ld.d	$a5, $fp, 0
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(write_code_as_C)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s2, 112
	b	.LBB8_48
	.p2align	4, , 16
.LBB8_51:                               # %._crit_edge274.i
                                        #   in Loop: Header=BB8_41 Depth=2
	ld.d	$a0, $s2, 80
	beqz	$a0, .LBB8_53
# %bb.52:                               #   in Loop: Header=BB8_41 Depth=2
	ld.d	$a0, $s2, 8
	ld.w	$a2, $a0, 56
	ld.w	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a1, $a0, %pc_lo12(.L.str.42)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 480
	add.d	$a0, $sp, $a0
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $s2, 96
	bnez	$a0, .LBB8_57
	b	.LBB8_59
.LBB8_53:                               #   in Loop: Header=BB8_41 Depth=2
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	beqz	$s6, .LBB8_56
# %bb.54:                               #   in Loop: Header=BB8_41 Depth=2
	ld.d	$a0, $s6, 80
	beqz	$a0, .LBB8_56
# %bb.55:                               # %.thread313.i
                                        #   in Loop: Header=BB8_41 Depth=2
	ld.d	$a0, $s6, 8
	ld.w	$a2, $a0, 56
	ld.w	$a3, $s6, 0
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a1, $a0, %pc_lo12(.L.str.42)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 480
	add.d	$a0, $sp, $a0
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 96
	bnez	$a0, .LBB8_57
	b	.LBB8_60
.LBB8_56:                               #   in Loop: Header=BB8_41 Depth=2
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.b	$a0, $a1, 4
	ld.w	$a1, $a1, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 484
	add.d	$a2, $sp, $a2
	st.b	$a0, $a2, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 480
	add.d	$a0, $sp, $a0
	st.w	$a1, $a0, 0
	ld.d	$a0, $s2, 96
	beqz	$a0, .LBB8_59
.LBB8_57:                               #   in Loop: Header=BB8_41 Depth=2
	ld.d	$a0, $s2, 8
	ld.w	$a2, $a0, 56
	ld.w	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a1, $a0, %pc_lo12(.L.str.44)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 736
	add.d	$a0, $sp, $a0
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s2, 112
	beqz	$s4, .LBB8_76
.LBB8_58:                               #   in Loop: Header=BB8_41 Depth=2
	bnez	$s6, .LBB8_62
	b	.LBB8_63
.LBB8_59:                               #   in Loop: Header=BB8_41 Depth=2
	beqz	$s6, .LBB8_75
.LBB8_60:                               # %.thread315.i
                                        #   in Loop: Header=BB8_41 Depth=2
	ld.d	$a0, $s6, 96
	beqz	$a0, .LBB8_75
# %bb.61:                               # %.thread316.i
                                        #   in Loop: Header=BB8_41 Depth=2
	ld.d	$a0, $s6, 8
	ld.w	$a2, $a0, 56
	ld.w	$a3, $s6, 0
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a1, $a0, %pc_lo12(.L.str.44)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 736
	add.d	$a0, $sp, $a0
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s2, 112
	beqz	$s4, .LBB8_77
.LBB8_62:                               # %.thread319.i
                                        #   in Loop: Header=BB8_41 Depth=2
	ld.w	$a0, $s6, 112
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a0, $a0, $a1
	or	$s4, $a0, $a2
.LBB8_63:                               # %.thread248.i
                                        #   in Loop: Header=BB8_41 Depth=2
	ld.d	$a0, $s2, 8
	ld.w	$a2, $a0, 56
	ld.w	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a1, $a0, %pc_lo12(.L.str.45)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 224
	add.d	$a0, $sp, $a0
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a1, $a0, %pc_lo12(.L.str.46)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 224
	add.d	$a2, $sp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB8_74
# %bb.64:                               # %.lr.ph277.i
                                        #   in Loop: Header=BB8_41 Depth=2
	move	$s3, $zero
	addi.w	$s5, $s4, -1
	b	.LBB8_66
	.p2align	4, , 16
.LBB8_65:                               #   in Loop: Header=BB8_66 Depth=3
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s1, $a0
	or	$a2, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a1, $a0, %pc_lo12(.L.str.48)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 1
	beq	$s3, $s4, .LBB8_74
.LBB8_66:                               #   Parent Loop BB8_13 Depth=1
                                        #     Parent Loop BB8_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.wu	$a1, $s2, 112
	sltu	$a0, $s3, $s5
	bgeu	$s3, $a1, .LBB8_69
# %bb.67:                               #   in Loop: Header=BB8_66 Depth=3
	ld.d	$a1, $s2, 120
	slli.d	$a2, $s3, 3
	ldx.d	$a1, $a1, $a2
	beqz	$a1, .LBB8_69
# %bb.68:                               #   in Loop: Header=BB8_66 Depth=3
	ld.d	$a1, $s2, 8
	ld.w	$a3, $a1, 56
	ld.w	$a4, $s2, 0
	b	.LBB8_73
	.p2align	4, , 16
.LBB8_69:                               #   in Loop: Header=BB8_66 Depth=3
	beqz	$s6, .LBB8_65
# %bb.70:                               #   in Loop: Header=BB8_66 Depth=3
	ld.wu	$a1, $s6, 112
	bgeu	$s3, $a1, .LBB8_65
# %bb.71:                               #   in Loop: Header=BB8_66 Depth=3
	ld.d	$a1, $s6, 120
	slli.d	$a2, $s3, 3
	ldx.d	$a1, $a1, $a2
	beqz	$a1, .LBB8_65
# %bb.72:                               #   in Loop: Header=BB8_66 Depth=3
	ld.d	$a1, $s6, 8
	ld.w	$a3, $a1, 56
	ld.w	$a4, $s6, 0
.LBB8_73:                               #   in Loop: Header=BB8_66 Depth=3
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s1, $a0
	or	$a6, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a1, $a0, %pc_lo12(.L.str.47)
	move	$a0, $s0
	move	$a2, $s3
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 1
	bne	$s3, $s4, .LBB8_66
.LBB8_74:                               # %._crit_edge278.i
                                        #   in Loop: Header=BB8_41 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB8_80
.LBB8_75:                               #   in Loop: Header=BB8_41 Depth=2
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.b	$a0, $a1, 4
	ld.w	$a1, $a1, 0
	lu12i.w	$a2, 1
	ori	$a2, $a2, 740
	add.d	$a2, $sp, $a2
	st.b	$a0, $a2, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 736
	add.d	$a0, $sp, $a0
	st.w	$a1, $a0, 0
	ld.w	$s4, $s2, 112
	bnez	$s4, .LBB8_58
.LBB8_76:                               #   in Loop: Header=BB8_41 Depth=2
	beqz	$s6, .LBB8_79
.LBB8_77:                               # %.thread318.i
                                        #   in Loop: Header=BB8_41 Depth=2
	ld.w	$s4, $s6, 112
	beqz	$s4, .LBB8_79
# %bb.78:                               #   in Loop: Header=BB8_41 Depth=2
	ld.d	$a0, $s6, 8
	ld.w	$a2, $a0, 56
	ld.w	$a3, $s6, 0
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a1, $a0, %pc_lo12(.L.str.45)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 224
	add.d	$a0, $sp, $a0
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	b	.LBB8_80
.LBB8_79:                               #   in Loop: Header=BB8_41 Depth=2
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.b	$a0, $a1, 4
	ld.w	$a1, $a1, 0
	move	$s4, $zero
	lu12i.w	$a2, 1
	ori	$a2, $a2, 228
	add.d	$a2, $sp, $a2
	st.b	$a0, $a2, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 224
	add.d	$a0, $sp, $a0
	st.w	$a1, $a0, 0
.LBB8_80:                               #   in Loop: Header=BB8_41 Depth=2
	ld.w	$a2, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	move	$a0, $s0
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 8
	ld.w	$a2, $s2, 32
	ld.w	$a3, $a0, 56
	ld.w	$a6, $s2, 20
	ld.w	$a7, $s2, 28
	ld.bu	$a4, $a0, 60
	ld.w	$a0, $s2, 16
	ld.w	$a1, $s2, 24
	andi	$a4, $a4, 28
	beqz	$a4, .LBB8_38
# %bb.81:                               #   in Loop: Header=BB8_41 Depth=2
	addi.w	$a4, $zero, -1
	b	.LBB8_39
.LBB8_82:                               # %write_reductions_as_C.exit
	ld.w	$a0, $fp, 48
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	beqz	$a0, .LBB8_89
# %bb.83:                               # %.lr.ph.i79
	move	$s5, $zero
	move	$s2, $zero
	move	$s1, $zero
	lu12i.w	$a0, 1
	ori	$a0, $a0, 736
	add.d	$s6, $sp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$s3, $a0, %pc_lo12(.L.str.73)
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$s4, $a0, %pc_lo12(.L.str.42)
	b	.LBB8_86
	.p2align	4, , 16
.LBB8_84:                               #   in Loop: Header=BB8_86 Depth=1
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.b	$a1, $a2, 4
	ld.w	$a2, $a2, 0
	lu12i.w	$a3, 1
	ori	$a3, $a3, 740
	add.d	$a3, $sp, $a3
	st.b	$a1, $a3, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 736
	add.d	$a1, $sp, $a1
	st.w	$a2, $a1, 0
.LBB8_85:                               #   in Loop: Header=BB8_86 Depth=1
	ldx.d	$a0, $a0, $s5
	ld.w	$a1, $a0, 4
	ld.w	$a2, $fp, 8
	ld.bu	$a3, $a0, 36
	ld.w	$a6, $a0, 12
	ld.w	$a7, $a0, 16
	ld.w	$a0, $a0, 8
	add.w	$a4, $a2, $a1
	st.d	$s6, $sp, 8
	andi	$a5, $a3, 7
	st.d	$a0, $sp, 0
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s2
	move	$a3, $s7
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 48
	addi.d	$s1, $s1, 1
	addi.w	$s2, $s2, 1
	addi.d	$s5, $s5, 8
	bgeu	$s1, $a0, .LBB8_89
.LBB8_86:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a1, $a0, $s5
	ld.d	$a1, $a1, 40
	beqz	$a1, .LBB8_84
# %bb.87:                               #   in Loop: Header=BB8_86 Depth=1
	ld.d	$a2, $a1, 24
	ld.d	$a3, $a2, 0
	ld.d	$a2, $a3, 80
	beqz	$a2, .LBB8_84
# %bb.88:                               #   in Loop: Header=BB8_86 Depth=1
	ld.w	$a2, $a1, 56
	ld.w	$a3, $a3, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 736
	add.d	$a0, $sp, $a0
	move	$a1, $s4
	move	$a4, $s7
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	b	.LBB8_85
.LBB8_89:                               # %._crit_edge.i
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.wu	$s2, $fp, 88
	addi.w	$a0, $s2, 0
	beqz	$a0, .LBB8_92
# %bb.90:                               # %.lr.ph427.i
	ld.d	$a1, $fp, 96
	ld.w	$a0, $fp, 532
	ori	$a2, $zero, 8
	bgeu	$s2, $a2, .LBB8_93
# %bb.91:
	move	$a2, $zero
	move	$a3, $zero
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	b	.LBB8_96
.LBB8_92:
	move	$a3, $zero
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	b	.LBB8_98
.LBB8_93:                               # %vector.ph
	bstrpick.d	$a2, $s2, 31, 3
	slli.d	$a2, $a2, 3
	vreplgr2vr.w	$vr0, $a0
	vrepli.b	$vr1, 0
	addi.d	$a3, $a1, 32
	move	$a4, $a2
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB8_94:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, -32
	ld.d	$a6, $a3, -24
	ld.d	$a7, $a3, -16
	ld.d	$t0, $a3, -8
	ld.d	$t1, $a3, 0
	ld.d	$t2, $a3, 8
	ld.d	$t3, $a3, 16
	ld.d	$t4, $a3, 24
	ld.w	$a5, $a5, 296
	ld.w	$a6, $a6, 296
	ld.w	$a7, $a7, 296
	ld.w	$t0, $t0, 296
	vinsgr2vr.w	$vr3, $a5, 0
	vinsgr2vr.w	$vr3, $a6, 1
	vinsgr2vr.w	$vr3, $a7, 2
	vinsgr2vr.w	$vr3, $t0, 3
	ld.w	$a5, $t1, 296
	ld.w	$a6, $t2, 296
	ld.w	$a7, $t3, 296
	ld.w	$t0, $t4, 296
	vinsgr2vr.w	$vr4, $a5, 0
	vinsgr2vr.w	$vr4, $a6, 1
	vinsgr2vr.w	$vr4, $a7, 2
	vinsgr2vr.w	$vr4, $t0, 3
	vmadd.w	$vr1, $vr3, $vr0
	vmadd.w	$vr2, $vr4, $vr0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB8_94
# %bb.95:                               # %middle.block
	vadd.w	$vr0, $vr2, $vr1
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a3, $vr0, 0
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	beq	$a2, $s2, .LBB8_98
.LBB8_96:                               # %scalar.ph.preheader
	sub.d	$a4, $s2, $a2
	alsl.d	$a1, $a2, $a1, 3
	.p2align	4, , 16
.LBB8_97:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 0
	ld.w	$a2, $a2, 296
	mul.d	$a2, $a2, $a0
	add.w	$a3, $a2, $a3
	addi.d	$a4, $a4, -1
	addi.d	$a1, $a1, 8
	bnez	$a4, .LBB8_97
.LBB8_98:                               # %._crit_edge428.i
	ori	$a1, $zero, 1
	sltu	$a0, $a1, $a3
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a1
	slli.d	$a0, $a0, 5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 224
	add.d	$a0, $sp, $a0
	st.w	$zero, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 232
	add.d	$a0, $sp, $a0
	st.d	$zero, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1032
	add.d	$a0, $sp, $a0
	st.w	$zero, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1040
	add.d	$a0, $sp, $a0
	st.d	$zero, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 264
	add.d	$a0, $sp, $a0
	st.w	$zero, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 272
	add.d	$a0, $sp, $a0
	st.d	$zero, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1072
	add.d	$a0, $sp, $a0
	st.w	$zero, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1080
	add.d	$a0, $sp, $a0
	st.d	$zero, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 304
	add.d	$a0, $sp, $a0
	st.w	$zero, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 312
	add.d	$a0, $sp, $a0
	st.d	$zero, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1112
	add.d	$a0, $sp, $a0
	st.w	$zero, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1120
	add.d	$a0, $sp, $a0
	st.d	$zero, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 344
	add.d	$a0, $sp, $a0
	st.w	$zero, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 352
	add.d	$a0, $sp, $a0
	st.d	$zero, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1152
	add.d	$a0, $sp, $a0
	st.w	$zero, $a0, 0
	ld.w	$a0, $fp, 536
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1160
	add.d	$a1, $sp, $a1
	st.d	$zero, $a1, 0
	pcalau12i	$a1, %pc_hi20(scanner_block_fns)
	addi.d	$a1, $a1, %pc_lo12(scanner_block_fns)
	st.d	$a0, $a1, 16
	st.d	$fp, $a1, 24
	pcalau12i	$a1, %pc_hi20(trans_scanner_block_fns)
	addi.d	$a1, $a1, %pc_lo12(trans_scanner_block_fns)
	st.d	$a0, $a1, 16
	st.d	$fp, $a1, 24
	lu12i.w	$a0, 1
	ori	$a0, $a0, 992
	add.d	$a0, $sp, $a0
	st.w	$zero, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1000
	add.d	$a0, $sp, $a0
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a0, $a0, %pc_lo12(.L.str.82)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	beqz	$s2, .LBB8_250
# %bb.99:                               # %.lr.ph472.i
	move	$a2, $zero
	move	$s5, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.100)
	addi.d	$a0, $a0, %pc_lo12(.L.str.100)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.102)
	addi.d	$a0, $a0, %pc_lo12(.L.str.102)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a0, $a0, %pc_lo12(.L.str.101)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ori	$s2, $zero, 15
	ld.d	$s8, $sp, 176                   # 8-byte Folded Reload
	b	.LBB8_101
	.p2align	4, , 16
.LBB8_100:                              # %._crit_edge465.i
                                        #   in Loop: Header=BB8_101 Depth=1
	ld.wu	$a0, $fp, 88
	addi.d	$a2, $a2, 1
	bgeu	$a2, $a0, .LBB8_190
.LBB8_101:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_131 Depth 2
                                        #     Child Loop BB8_106 Depth 2
                                        #       Child Loop BB8_108 Depth 3
                                        #     Child Loop BB8_112 Depth 2
                                        #     Child Loop BB8_141 Depth 2
                                        #       Child Loop BB8_154 Depth 3
                                        #       Child Loop BB8_172 Depth 3
                                        #     Child Loop BB8_185 Depth 2
                                        #     Child Loop BB8_135 Depth 2
	ld.d	$a0, $fp, 96
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	slli.d	$a1, $a2, 3
	ldx.d	$s3, $a0, $a1
	ld.w	$a0, $s3, 136
	beqz	$a0, .LBB8_103
# %bb.102:                              #   in Loop: Header=BB8_101 Depth=1
	ld.d	$a0, $s3, 400
	beqz	$a0, .LBB8_129
.LBB8_103:                              #   in Loop: Header=BB8_101 Depth=1
	ld.w	$a0, $s3, 336
	beqz	$a0, .LBB8_114
.LBB8_104:                              # %.lr.ph440.i
                                        #   in Loop: Header=BB8_101 Depth=1
	move	$s4, $zero
	b	.LBB8_106
	.p2align	4, , 16
.LBB8_105:                              # %._crit_edge437.i
                                        #   in Loop: Header=BB8_106 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a0, $a0, %pc_lo12(.L.str.79)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s3, 336
	addi.d	$s4, $s4, 1
	bgeu	$s4, $a0, .LBB8_109
.LBB8_106:                              #   Parent Loop BB8_101 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_108 Depth 3
	ld.d	$a0, $s3, 344
	slli.d	$a1, $s4, 3
	ldx.d	$s1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a1, $a0, %pc_lo12(.L.str.77)
	move	$a0, $s0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	move	$a3, $s4
	move	$a4, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 48
	beqz	$a0, .LBB8_105
# %bb.107:                              # %.lr.ph436.i
                                        #   in Loop: Header=BB8_106 Depth=2
	move	$s6, $zero
	move	$s7, $zero
	.p2align	4, , 16
.LBB8_108:                              #   Parent Loop BB8_101 Depth=1
                                        #     Parent Loop BB8_106 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s1, 56
	ldx.d	$a0, $a0, $s6
	ld.d	$a0, $a0, 8
	ld.w	$a2, $a0, 4
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a1, $a0, %pc_lo12(.L.str.78)
	move	$a0, $s0
	move	$a3, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s1, 48
	addi.d	$s7, $s7, 1
	addi.d	$s6, $s6, 8
	bltu	$s7, $a0, .LBB8_108
	b	.LBB8_105
	.p2align	4, , 16
.LBB8_109:                              # %._crit_edge441.i
                                        #   in Loop: Header=BB8_101 Depth=1
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
	beqz	$a0, .LBB8_114
# %bb.110:                              #   in Loop: Header=BB8_101 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a1, $a0, %pc_lo12(.L.str.80)
	move	$a0, $s0
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	move	$a2, $s1
	move	$a3, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 336
	beqz	$a0, .LBB8_113
# %bb.111:                              # %.lr.ph445.i.preheader
                                        #   in Loop: Header=BB8_101 Depth=1
	move	$s4, $zero
	.p2align	4, , 16
.LBB8_112:                              # %.lr.ph445.i
                                        #   Parent Loop BB8_101 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a0, $a0, -1
	xor	$a0, $s4, $a0
	sltui	$a0, $a0, 1
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $s6, $a0
	or	$a5, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a1, $a0, %pc_lo12(.L.str.81)
	move	$a0, $s0
	move	$a2, $s1
	move	$a3, $s4
	move	$a4, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 336
	addi.w	$s4, $s4, 1
	bltu	$s4, $a0, .LBB8_112
.LBB8_113:                              # %._crit_edge446.i
                                        #   in Loop: Header=BB8_101 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB8_114:                              # %._crit_edge441.thread.i
                                        #   in Loop: Header=BB8_101 Depth=1
	ld.w	$a0, $s3, 296
	ori	$a1, $zero, 254
	bltu	$a1, $a0, .LBB8_117
# %bb.115:                              #   in Loop: Header=BB8_101 Depth=1
	ld.w	$a1, $s3, 336
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ori	$a3, $zero, 255
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	bgeu	$a1, $a3, .LBB8_119
# %bb.116:                              #   in Loop: Header=BB8_101 Depth=1
	move	$a1, $zero
	lu12i.w	$a3, 1
	ori	$a3, $a3, 224
	add.d	$a3, $sp, $a3
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	b	.LBB8_127
	.p2align	4, , 16
.LBB8_117:                              #   in Loop: Header=BB8_101 Depth=1
	bstrpick.d	$a1, $a0, 31, 7
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ori	$a3, $zero, 252
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	bltu	$a3, $a1, .LBB8_120
# %bb.118:                              # %..thread_crit_edge.i.i
                                        #   in Loop: Header=BB8_101 Depth=1
	ld.w	$a1, $s3, 336
.LBB8_119:                              # %.thread.i.i
                                        #   in Loop: Header=BB8_101 Depth=1
	bstrpick.d	$a1, $a1, 31, 7
	move	$a3, $a2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 264
	add.d	$a2, $sp, $a2
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	move	$a2, $a3
	ori	$a3, $zero, 253
	bltu	$a1, $a3, .LBB8_121
.LBB8_120:                              #   in Loop: Header=BB8_101 Depth=1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 344
	add.d	$a1, $sp, $a1
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
.LBB8_121:                              # %scanner_size.exit.i
                                        #   in Loop: Header=BB8_101 Depth=1
	ori	$a1, $zero, 254
	bltu	$a1, $a0, .LBB8_124
# %bb.122:                              #   in Loop: Header=BB8_101 Depth=1
	ld.w	$a1, $s3, 336
	ori	$a3, $zero, 255
	bgeu	$a1, $a3, .LBB8_126
# %bb.123:                              #   in Loop: Header=BB8_101 Depth=1
	move	$a1, $zero
	b	.LBB8_127
	.p2align	4, , 16
.LBB8_124:                              #   in Loop: Header=BB8_101 Depth=1
	bstrpick.d	$a1, $a0, 31, 7
	ori	$a3, $zero, 252
	bltu	$a3, $a1, .LBB8_133
# %bb.125:                              # %..thread_crit_edge.i380.i
                                        #   in Loop: Header=BB8_101 Depth=1
	ld.w	$a1, $s3, 336
.LBB8_126:                              # %.thread.i383.i
                                        #   in Loop: Header=BB8_101 Depth=1
	bstrpick.d	$a1, $a1, 31, 7
	sltui	$a1, $a1, 253
	move	$a4, $a2
	ori	$a2, $zero, 3
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	move	$a2, $a4
.LBB8_127:                              # %scanner_size.exit384.i
                                        #   in Loop: Header=BB8_101 Depth=1
	beqz	$a0, .LBB8_100
# %bb.128:                              #   in Loop: Header=BB8_101 Depth=1
	slli.d	$a0, $a1, 3
	slli.d	$a1, $a1, 5
	or	$a0, $a1, $a0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1032
	add.d	$a1, $sp, $a1
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $s3, 400
	bnez	$a0, .LBB8_100
	b	.LBB8_134
	.p2align	4, , 16
.LBB8_129:                              #   in Loop: Header=BB8_101 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	move	$a0, $s0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	move	$a3, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 136
	beqz	$a0, .LBB8_132
# %bb.130:                              # %.lr.ph432.i
                                        #   in Loop: Header=BB8_101 Depth=1
	move	$s1, $zero
	move	$s4, $zero
	.p2align	4, , 16
.LBB8_131:                              #   Parent Loop BB8_101 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s3, 144
	ldx.d	$a1, $a1, $s1
	ld.d	$a1, $a1, 8
	ld.w	$a2, $a1, 4
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	xor	$a0, $s4, $a0
	sltui	$a0, $a0, 1
	masknez	$a1, $s6, $a0
	pcalau12i	$a3, %pc_hi20(.L.str.76)
	addi.d	$a3, $a3, %pc_lo12(.L.str.76)
	maskeqz	$a0, $a3, $a0
	or	$a4, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	move	$a0, $s0
	move	$a3, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s3, 136
	addi.d	$s4, $s4, 1
	addi.d	$s1, $s1, 8
	bltu	$s4, $a0, .LBB8_131
.LBB8_132:                              # %._crit_edge433.i
                                        #   in Loop: Header=BB8_101 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 336
	bnez	$a0, .LBB8_104
	b	.LBB8_114
.LBB8_133:                              #   in Loop: Header=BB8_101 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1152
	add.d	$a0, $sp, $a0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $s3, 400
	bnez	$a0, .LBB8_100
.LBB8_134:                              # %.lr.ph464.split.preheader.i
                                        #   in Loop: Header=BB8_101 Depth=1
	move	$a0, $zero
	move	$s1, $zero
	beqz	$a0, .LBB8_137
	.p2align	4, , 16
.LBB8_135:                              # %.loopexit.i87
                                        #   Parent Loop BB8_101 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.wu	$a0, $s3, 296
	addi.d	$s1, $s1, 1
	bgeu	$s1, $a0, .LBB8_100
# %bb.136:                              # %.lr.ph464.splitthread-pre-split.i
                                        #   in Loop: Header=BB8_135 Depth=2
	ld.d	$a0, $s3, 400
	bnez	$a0, .LBB8_135
.LBB8_137:                              # %.preheader420.i
                                        #   in Loop: Header=BB8_101 Depth=1
	ld.w	$a0, $fp, 532
	slli.d	$s4, $s1, 3
	ori	$a1, $zero, 1
	st.d	$s1, $sp, 152                   # 8-byte Folded Spill
	blt	$a0, $a1, .LBB8_177
# %bb.138:                              # %.lr.ph457.i
                                        #   in Loop: Header=BB8_101 Depth=1
	move	$s7, $zero
	addi.w	$s5, $s5, 0
	b	.LBB8_141
.LBB8_139:                              # %._crit_edge452.i
                                        #   in Loop: Header=BB8_141 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB8_140:                              #   in Loop: Header=BB8_141 Depth=2
	ld.w	$a0, $fp, 532
	addi.w	$s7, $s7, 1
	addi.d	$s5, $s5, 1
	bge	$s7, $a0, .LBB8_176
.LBB8_141:                              #   Parent Loop BB8_101 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_154 Depth 3
                                        #       Child Loop BB8_172 Depth 3
	ld.w	$a0, $s3, 0
	slli.d	$a1, $s5, 5
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	add.d	$s8, $a2, $a1
	stx.w	$a0, $a2, $a1
	st.w	$s1, $s8, 4
	st.w	$s7, $s8, 8
	ld.d	$a0, $s3, 304
	ld.w	$a1, $fp, 536
	ldx.d	$a0, $a0, $s4
	mul.w	$a1, $a1, $s7
	alsl.d	$a0, $a1, $a0, 3
	addi.d	$a1, $a0, 8
	st.d	$a1, $s8, 16
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 89
	st.d	$a0, $s8, 24
	pcalau12i	$a0, %pc_hi20(scanner_block_fns)
	addi.d	$a2, $a0, %pc_lo12(scanner_block_fns)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s8
	pcaddu18i	$ra, %call36(set_add_fn)
	jirl	$ra, $ra, 0
	beq	$s8, $a0, .LBB8_143
# %bb.142:                              #   in Loop: Header=BB8_141 Depth=2
	ld.bu	$a0, $s3, 376
	andi	$a0, $a0, 24
	ori	$a1, $zero, 8
	beq	$a0, $a1, .LBB8_140
	b	.LBB8_162
	.p2align	4, , 16
.LBB8_143:                              #   in Loop: Header=BB8_141 Depth=2
	ld.w	$a0, $s3, 296
	ori	$a1, $zero, 254
	bltu	$a1, $a0, .LBB8_146
# %bb.144:                              #   in Loop: Header=BB8_141 Depth=2
	ld.w	$a0, $s3, 336
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ori	$a1, $zero, 255
	bgeu	$a0, $a1, .LBB8_148
# %bb.145:                              #   in Loop: Header=BB8_141 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.100)
	addi.d	$a2, $a0, %pc_lo12(.L.str.100)
	b	.LBB8_151
.LBB8_146:                              #   in Loop: Header=BB8_141 Depth=2
	bstrpick.d	$a0, $a0, 31, 7
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ori	$a1, $zero, 252
	bltu	$a1, $a0, .LBB8_150
# %bb.147:                              # %..thread_crit_edge.i.i.i
                                        #   in Loop: Header=BB8_141 Depth=2
	ld.w	$a0, $s3, 336
.LBB8_148:                              # %.thread.i.i.i
                                        #   in Loop: Header=BB8_141 Depth=2
	bstrpick.d	$a0, $a0, 31, 7
	ori	$a1, $zero, 253
	bgeu	$a0, $a1, .LBB8_150
# %bb.149:                              #   in Loop: Header=BB8_141 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a2, $a0, %pc_lo12(.L.str.101)
	b	.LBB8_151
.LBB8_150:                              # %scanner_size.exit.i.i
                                        #   in Loop: Header=BB8_141 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.102)
	addi.d	$a2, $a0, %pc_lo12(.L.str.102)
.LBB8_151:                              # %scanner_type.exit.i
                                        #   in Loop: Header=BB8_141 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a1, $a0, %pc_lo12(.L.str.83)
	move	$a0, $s0
	move	$a4, $s1
	move	$a5, $s7
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 536
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB8_161
# %bb.152:                              # %.lr.ph448.i.preheader
                                        #   in Loop: Header=BB8_141 Depth=2
	move	$s1, $zero
	move	$s6, $zero
	b	.LBB8_154
	.p2align	4, , 16
.LBB8_153:                              #   in Loop: Header=BB8_154 Depth=3
	ld.w	$a0, $fp, 536
	addi.w	$s6, $s6, 1
	addi.d	$s1, $s1, 1
	bge	$s6, $a0, .LBB8_161
.LBB8_154:                              # %.lr.ph448.i
                                        #   Parent Loop BB8_101 Depth=1
                                        #     Parent Loop BB8_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $s3, 304
	ldx.d	$a1, $a1, $s4
	mul.w	$a0, $s7, $a0
	add.d	$a0, $s1, $a0
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a0, $a0, 8
	beqz	$a0, .LBB8_156
# %bb.155:                              #   in Loop: Header=BB8_154 Depth=3
	ld.w	$a0, $a0, 0
	addi.w	$a2, $a0, 1
	b	.LBB8_157
	.p2align	4, , 16
.LBB8_156:                              #   in Loop: Header=BB8_154 Depth=3
	move	$a2, $zero
.LBB8_157:                              #   in Loop: Header=BB8_154 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 536
	bne	$s6, $a0, .LBB8_159
# %bb.158:                              #   in Loop: Header=BB8_154 Depth=3
	andi	$a0, $s6, 15
	bne	$a0, $s2, .LBB8_153
	b	.LBB8_160
	.p2align	4, , 16
.LBB8_159:                              #   in Loop: Header=BB8_154 Depth=3
	ori	$a0, $zero, 44
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	andi	$a0, $s6, 15
	bne	$a0, $s2, .LBB8_153
.LBB8_160:                              #   in Loop: Header=BB8_154 Depth=3
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	b	.LBB8_153
	.p2align	4, , 16
.LBB8_161:                              # %._crit_edge449.i
                                        #   in Loop: Header=BB8_141 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	ld.bu	$a0, $s3, 376
	andi	$a0, $a0, 24
	ori	$a1, $zero, 8
	beq	$a0, $a1, .LBB8_140
.LBB8_162:                              #   in Loop: Header=BB8_141 Depth=2
	pcalau12i	$a0, %pc_hi20(trans_scanner_block_fns)
	addi.d	$a2, $a0, %pc_lo12(trans_scanner_block_fns)
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $s8
	pcaddu18i	$ra, %call36(set_add_fn)
	jirl	$ra, $ra, 0
	bne	$s8, $a0, .LBB8_140
# %bb.163:                              #   in Loop: Header=BB8_141 Depth=2
	ld.w	$a0, $s3, 296
	ori	$a1, $zero, 254
	bltu	$a1, $a0, .LBB8_166
# %bb.164:                              #   in Loop: Header=BB8_141 Depth=2
	ld.w	$a0, $s3, 336
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ori	$a1, $zero, 255
	bltu	$a0, $a1, .LBB8_169
# %bb.165:                              # %.thread.i.i390.i
                                        #   in Loop: Header=BB8_141 Depth=2
	bstrpick.d	$a0, $a0, 31, 7
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ori	$a1, $zero, 253
	bgeu	$a0, $a1, .LBB8_168
	b	.LBB8_169
.LBB8_166:                              #   in Loop: Header=BB8_141 Depth=2
	bstrpick.d	$a0, $a0, 31, 7
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ori	$a1, $zero, 252
	bltu	$a1, $a0, .LBB8_168
# %bb.167:                              # %..thread_crit_edge.i.i387.i
                                        #   in Loop: Header=BB8_141 Depth=2
	ld.w	$a0, $s3, 336
	bstrpick.d	$a0, $a0, 31, 7
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ori	$a1, $zero, 253
	bltu	$a0, $a1, .LBB8_169
.LBB8_168:                              # %scanner_size.exit.i385.i
                                        #   in Loop: Header=BB8_141 Depth=2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
.LBB8_169:                              # %scanner_type.exit391.i
                                        #   in Loop: Header=BB8_141 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a1, $a0, %pc_lo12(.L.str.85)
	move	$a0, $s0
	move	$a4, $s1
	move	$a5, $s7
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 536
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB8_139
# %bb.170:                              # %.lr.ph451.i.preheader
                                        #   in Loop: Header=BB8_141 Depth=2
	move	$s1, $zero
	move	$s6, $zero
	b	.LBB8_172
	.p2align	4, , 16
.LBB8_171:                              #   in Loop: Header=BB8_172 Depth=3
	ld.w	$a0, $fp, 536
	addi.w	$s6, $s6, 1
	addi.d	$s1, $s1, 1
	bge	$s6, $a0, .LBB8_139
.LBB8_172:                              # %.lr.ph451.i
                                        #   Parent Loop BB8_101 Depth=1
                                        #     Parent Loop BB8_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $s3, 304
	ldx.d	$a1, $a1, $s4
	mul.w	$a0, $s7, $a0
	add.d	$a0, $s1, $a0
	alsl.d	$a0, $a0, $a1, 3
	ldptr.d	$a0, $a0, 2136
	ld.w	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 536
	bne	$s6, $a0, .LBB8_174
# %bb.173:                              #   in Loop: Header=BB8_172 Depth=3
	andi	$a0, $s6, 15
	bne	$a0, $s2, .LBB8_171
	b	.LBB8_175
	.p2align	4, , 16
.LBB8_174:                              #   in Loop: Header=BB8_172 Depth=3
	ori	$a0, $zero, 44
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	andi	$a0, $s6, 15
	bne	$a0, $s2, .LBB8_171
.LBB8_175:                              #   in Loop: Header=BB8_172 Depth=3
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	b	.LBB8_171
	.p2align	4, , 16
.LBB8_176:                              # %._crit_edge458.loopexit.i
                                        #   in Loop: Header=BB8_101 Depth=1
	ld.d	$s8, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
.LBB8_177:                              # %._crit_edge458.i
                                        #   in Loop: Header=BB8_101 Depth=1
	ld.d	$a0, $s3, 304
	ldx.d	$a0, $a0, $s4
	ldptr.w	$a1, $a0, 2056
	beqz	$a1, .LBB8_135
# %bb.178:                              # %.lr.ph461.preheader.i
                                        #   in Loop: Header=BB8_101 Depth=1
	ldptr.d	$a0, $a0, 2064
	ld.d	$s7, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a1, $a0, %pc_lo12(.L.str.86)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 480
	add.d	$a0, $sp, $a0
	move	$a3, $s1
	move	$a4, $s8
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 304
	ldx.d	$a0, $a0, $s4
	ldptr.w	$a0, $a0, 2056
	pcalau12i	$a1, %pc_hi20(.L.str.88)
	addi.d	$a1, $a1, %pc_lo12(.L.str.88)
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB8_180
# %bb.179:                              #   in Loop: Header=BB8_101 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 480
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(strdup)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 40
	pcalau12i	$a0, %pc_hi20(shift_fns)
	addi.d	$a2, $a0, %pc_lo12(shift_fns)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 992
	add.d	$a0, $sp, $a0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(set_add_fn)
	jirl	$ra, $ra, 0
	bne	$a0, $s7, .LBB8_181
.LBB8_180:                              #   in Loop: Header=BB8_101 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a1, $a0, %pc_lo12(.L.str.87)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 480
	add.d	$a2, $sp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 304
	ldx.d	$a0, $a0, $s4
	ld.d	$a1, $s7, 8
	ldptr.w	$a0, $a0, 2056
	ld.w	$a2, $a1, 4
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	masknez	$a1, $s6, $a0
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	maskeqz	$a0, $a3, $a0
	or	$a4, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	move	$a0, $s0
	move	$a3, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB8_181:                              #   in Loop: Header=BB8_101 Depth=1
	ld.d	$a0, $s3, 304
	ldx.d	$a0, $a0, $s4
	ldptr.w	$a1, $a0, 2056
	ori	$a2, $zero, 2
	bltu	$a1, $a2, .LBB8_188
# %bb.182:                              # %.lr.ph461.i.preheader
                                        #   in Loop: Header=BB8_101 Depth=1
	ori	$s8, $zero, 1
	ori	$s1, $zero, 8
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	b	.LBB8_185
	.p2align	4, , 16
.LBB8_183:                              # %._crit_edge541.i
                                        #   in Loop: Header=BB8_185 Depth=2
	ld.d	$a1, $s7, 8
	ld.w	$a2, $a1, 4
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	xor	$a0, $s8, $a0
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	maskeqz	$a0, $a3, $a0
	or	$a4, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	move	$a0, $s0
	move	$a3, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB8_184:                              #   in Loop: Header=BB8_185 Depth=2
	ld.d	$a0, $s3, 304
	ldx.d	$a0, $a0, $s4
	ori	$a1, $zero, 2056
	ldx.wu	$a1, $a0, $a1
	addi.d	$s8, $s8, 1
	addi.d	$s1, $s1, 8
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	bgeu	$s8, $a1, .LBB8_189
.LBB8_185:                              # %.lr.ph461.i
                                        #   Parent Loop BB8_101 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldptr.d	$a0, $a0, 2064
	ldx.d	$s7, $a0, $s1
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a1, $a0, %pc_lo12(.L.str.86)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 480
	add.d	$a0, $sp, $a0
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	move	$a4, $s6
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 304
	ldx.d	$a0, $a0, $s4
	ldptr.w	$a0, $a0, 2056
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB8_183
# %bb.186:                              #   in Loop: Header=BB8_185 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 480
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(strdup)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 40
	pcalau12i	$a0, %pc_hi20(shift_fns)
	addi.d	$a2, $a0, %pc_lo12(shift_fns)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 992
	add.d	$a0, $sp, $a0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(set_add_fn)
	jirl	$ra, $ra, 0
	bne	$a0, $s7, .LBB8_184
# %bb.187:                              # %.._crit_edge541.i_crit_edge
                                        #   in Loop: Header=BB8_185 Depth=2
	ld.d	$a0, $s3, 304
	ldx.d	$a0, $a0, $s4
	ori	$a1, $zero, 2056
	ldx.w	$a0, $a0, $a1
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	b	.LBB8_183
	.p2align	4, , 16
.LBB8_188:                              #   in Loop: Header=BB8_101 Depth=1
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	b	.LBB8_135
	.p2align	4, , 16
.LBB8_189:                              #   in Loop: Header=BB8_101 Depth=1
	ld.d	$s8, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	b	.LBB8_135
.LBB8_190:                              # %.preheader418.i
	beqz	$a0, .LBB8_250
# %bb.191:                              # %.lr.ph488.i
	move	$s1, $zero
	ori	$s3, $zero, 254
	pcalau12i	$a0, %pc_hi20(.L.str.104)
	addi.d	$a0, $a0, %pc_lo12(.L.str.104)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$a0, $a0, %pc_lo12(.L.str.97)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.98)
	addi.d	$a0, $a0, %pc_lo12(.L.str.98)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(trans_scanner_block_fns)
	addi.d	$s8, $a0, %pc_lo12(trans_scanner_block_fns)
	pcalau12i	$a0, %pc_hi20(.L.str.99)
	addi.d	$s6, $a0, %pc_lo12(.L.str.99)
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$s4, $a0, %pc_lo12(.L.str.24)
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$a0, $a0, %pc_lo12(.L.str.94)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$a0, $a0, %pc_lo12(.L.str.96)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a0, $a0, %pc_lo12(.L.str.95)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.105)
	addi.d	$a0, $a0, %pc_lo12(.L.str.105)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	b	.LBB8_194
.LBB8_192:                              # %._crit_edge486.i
                                        #   in Loop: Header=BB8_194 Depth=1
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ori	$s3, $zero, 254
	.p2align	4, , 16
.LBB8_193:                              #   in Loop: Header=BB8_194 Depth=1
	ld.wu	$a0, $fp, 88
	addi.d	$s1, $s1, 1
	bgeu	$s1, $a0, .LBB8_250
.LBB8_194:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_213 Depth 2
                                        #       Child Loop BB8_220 Depth 3
                                        #     Child Loop BB8_242 Depth 2
                                        #       Child Loop BB8_245 Depth 3
	ld.d	$a0, $fp, 96
	slli.d	$a1, $s1, 3
	ldx.d	$s2, $a0, $a1
	ld.w	$a5, $s2, 296
	beqz	$a5, .LBB8_193
# %bb.195:                              #   in Loop: Header=BB8_194 Depth=1
	ld.d	$a0, $s2, 400
	bnez	$a0, .LBB8_193
# %bb.196:                              #   in Loop: Header=BB8_194 Depth=1
	bltu	$s3, $a5, .LBB8_199
# %bb.197:                              #   in Loop: Header=BB8_194 Depth=1
	ld.w	$a0, $s2, 336
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ori	$a1, $zero, 255
	bltu	$a0, $a1, .LBB8_203
# %bb.198:                              # %.thread.i.i397.i
                                        #   in Loop: Header=BB8_194 Depth=1
	bstrpick.d	$a0, $a0, 31, 7
	ori	$a1, $zero, 253
	bltu	$a0, $a1, .LBB8_201
	b	.LBB8_202
.LBB8_199:                              #   in Loop: Header=BB8_194 Depth=1
	bstrpick.d	$a0, $a5, 31, 7
	ori	$a1, $zero, 252
	bltu	$a1, $a0, .LBB8_202
# %bb.200:                              # %..thread_crit_edge.i.i394.i
                                        #   in Loop: Header=BB8_194 Depth=1
	ld.w	$a0, $s2, 336
	bstrpick.d	$a0, $a0, 31, 7
	ori	$a1, $zero, 253
	bgeu	$a0, $a1, .LBB8_202
.LBB8_201:                              #   in Loop: Header=BB8_194 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.105)
	addi.d	$a2, $a0, %pc_lo12(.L.str.105)
	b	.LBB8_203
.LBB8_202:                              # %scanner_size.exit.i392.i
                                        #   in Loop: Header=BB8_194 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$a2, $a0, %pc_lo12(.L.str.106)
.LBB8_203:                              # %scanner_u_type.exit.i
                                        #   in Loop: Header=BB8_194 Depth=1
	move	$a0, $s0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	move	$a3, $s1
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 296
	st.d	$s1, $sp, 136                   # 8-byte Folded Spill
	bltu	$s3, $a0, .LBB8_205
# %bb.204:                              #   in Loop: Header=BB8_194 Depth=1
	ld.w	$a1, $s2, 336
	lu12i.w	$a2, 1
	ori	$a2, $a2, 224
	add.d	$s7, $sp, $a2
	ori	$a2, $zero, 255
	bgeu	$a1, $a2, .LBB8_207
	b	.LBB8_209
.LBB8_205:                              #   in Loop: Header=BB8_194 Depth=1
	bstrpick.d	$a1, $a0, 31, 7
	ori	$a2, $zero, 252
	bltu	$a2, $a1, .LBB8_208
# %bb.206:                              # %..thread_crit_edge.i399.i
                                        #   in Loop: Header=BB8_194 Depth=1
	ld.w	$a1, $s2, 336
.LBB8_207:                              # %.thread.i402.i
                                        #   in Loop: Header=BB8_194 Depth=1
	bstrpick.d	$a1, $a1, 31, 7
	lu12i.w	$a2, 1
	ori	$a2, $a2, 264
	add.d	$s7, $sp, $a2
	ori	$a2, $zero, 253
	bltu	$a1, $a2, .LBB8_209
.LBB8_208:                              #   in Loop: Header=BB8_194 Depth=1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 344
	add.d	$s7, $sp, $a1
.LBB8_209:                              # %scanner_size.exit403.i
                                        #   in Loop: Header=BB8_194 Depth=1
	beqz	$a0, .LBB8_225
# %bb.210:                              # %.lr.ph478.i
                                        #   in Loop: Header=BB8_194 Depth=1
	move	$s3, $zero
	b	.LBB8_213
	.p2align	4, , 16
.LBB8_211:                              #   in Loop: Header=BB8_213 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$a0, $a0, %pc_lo12(.L.str.96)
	ori	$a1, $zero, 3
.LBB8_212:                              #   in Loop: Header=BB8_213 Depth=2
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s2, 296
	addi.d	$s3, $s3, 1
	bgeu	$s3, $a0, .LBB8_225
.LBB8_213:                              #   Parent Loop BB8_194 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_220 Depth 3
	ld.d	$a0, $s2, 304
	slli.d	$s5, $s3, 3
	ldx.d	$a0, $a0, $s5
	ldptr.w	$a1, $a0, 2056
	beqz	$a1, .LBB8_216
# %bb.214:                              #   in Loop: Header=BB8_213 Depth=2
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB8_217
# %bb.215:                              #   in Loop: Header=BB8_213 Depth=2
	ldptr.d	$a0, $a0, 2064
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(shift_fns)
	addi.d	$a2, $a0, %pc_lo12(shift_fns)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 992
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(set_add_fn)
	jirl	$ra, $ra, 0
	ld.d	$a2, $a0, 40
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a1, $a0, %pc_lo12(.L.str.90)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 532
	ori	$a1, $zero, 1
	bge	$a0, $a1, .LBB8_218
	b	.LBB8_223
	.p2align	4, , 16
.LBB8_216:                              #   in Loop: Header=BB8_213 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	ori	$a1, $zero, 9
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 532
	ori	$a1, $zero, 1
	bge	$a0, $a1, .LBB8_218
	b	.LBB8_223
	.p2align	4, , 16
.LBB8_217:                              #   in Loop: Header=BB8_213 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a1, $a0, %pc_lo12(.L.str.91)
	move	$a0, $s0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	move	$a3, $s3
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 532
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB8_223
.LBB8_218:                              # %.lr.ph475.preheader.i
                                        #   in Loop: Header=BB8_213 Depth=2
	move	$s1, $zero
	b	.LBB8_220
	.p2align	4, , 16
.LBB8_219:                              #   in Loop: Header=BB8_220 Depth=3
	ld.w	$a0, $fp, 532
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB8_223
.LBB8_220:                              # %.lr.ph475.i
                                        #   Parent Loop BB8_194 Depth=1
                                        #     Parent Loop BB8_213 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $s2, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 480
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $s2, 304
	lu12i.w	$a1, 1
	ori	$a1, $a1, 484
	add.d	$a1, $sp, $a1
	st.w	$s3, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 488
	add.d	$a1, $sp, $a1
	st.w	$s1, $a1, 0
	ld.w	$a1, $fp, 536
	ldx.d	$a0, $a0, $s5
	mul.w	$a1, $a1, $s1
	alsl.d	$a0, $a1, $a0, 3
	addi.d	$a1, $a0, 8
	lu12i.w	$a2, 1
	ori	$a2, $a2, 496
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 89
	lu12i.w	$a1, 1
	ori	$a1, $a1, 504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(scanner_block_fns)
	addi.d	$a2, $a0, %pc_lo12(scanner_block_fns)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 480
	add.d	$a1, $sp, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(set_add_fn)
	jirl	$ra, $ra, 0
	ld.w	$a2, $a0, 0
	ld.w	$a3, $a0, 4
	ld.w	$a4, $a0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a1, $a0, %pc_lo12(.L.str.93)
	move	$a0, $s0
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 532
	addi.w	$a0, $a0, -1
	beq	$s1, $a0, .LBB8_219
# %bb.221:                              #   in Loop: Header=BB8_220 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	andi	$a0, $s1, 1
	beqz	$a0, .LBB8_219
# %bb.222:                              #   in Loop: Header=BB8_220 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$a0, $a0, %pc_lo12(.L.str.94)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB8_219
	.p2align	4, , 16
.LBB8_223:                              # %._crit_edge476.i
                                        #   in Loop: Header=BB8_213 Depth=2
	ld.w	$a0, $s2, 296
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	beq	$s3, $a0, .LBB8_211
# %bb.224:                              #   in Loop: Header=BB8_213 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a0, $a0, %pc_lo12(.L.str.95)
	ori	$a1, $zero, 4
	b	.LBB8_212
	.p2align	4, , 16
.LBB8_225:                              # %._crit_edge479.i
                                        #   in Loop: Header=BB8_194 Depth=1
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s2, 376
	andi	$a0, $a0, 24
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ori	$s3, $zero, 254
	ori	$a1, $zero, 8
	beq	$a0, $a1, .LBB8_193
# %bb.226:                              #   in Loop: Header=BB8_194 Depth=1
	ld.w	$a5, $s2, 296
	bltu	$s3, $a5, .LBB8_229
# %bb.227:                              #   in Loop: Header=BB8_194 Depth=1
	ld.w	$a0, $s2, 336
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ori	$a1, $zero, 255
	bltu	$a0, $a1, .LBB8_232
# %bb.228:                              # %.thread.i.i409.i
                                        #   in Loop: Header=BB8_194 Depth=1
	bstrpick.d	$a0, $a0, 31, 7
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ori	$a1, $zero, 253
	bgeu	$a0, $a1, .LBB8_231
	b	.LBB8_232
.LBB8_229:                              #   in Loop: Header=BB8_194 Depth=1
	bstrpick.d	$a0, $a5, 31, 7
	ori	$a1, $zero, 252
	bltu	$a1, $a0, .LBB8_231
# %bb.230:                              # %..thread_crit_edge.i.i406.i
                                        #   in Loop: Header=BB8_194 Depth=1
	ld.w	$a0, $s2, 336
	bstrpick.d	$a0, $a0, 31, 7
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ori	$a1, $zero, 253
	bltu	$a0, $a1, .LBB8_232
.LBB8_231:                              # %scanner_size.exit.i404.i
                                        #   in Loop: Header=BB8_194 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$a2, $a0, %pc_lo12(.L.str.106)
.LBB8_232:                              # %scanner_u_type.exit410.i
                                        #   in Loop: Header=BB8_194 Depth=1
	move	$a0, $s0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	move	$a3, $s1
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 296
	bltu	$s3, $a0, .LBB8_234
# %bb.233:                              #   in Loop: Header=BB8_194 Depth=1
	ld.w	$a1, $s2, 336
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1032
	add.d	$s3, $sp, $a2
	ori	$a2, $zero, 255
	bgeu	$a1, $a2, .LBB8_236
	b	.LBB8_238
.LBB8_234:                              #   in Loop: Header=BB8_194 Depth=1
	bstrpick.d	$a1, $a0, 31, 7
	ori	$a2, $zero, 252
	bltu	$a2, $a1, .LBB8_237
# %bb.235:                              # %..thread_crit_edge.i412.i
                                        #   in Loop: Header=BB8_194 Depth=1
	ld.w	$a1, $s2, 336
.LBB8_236:                              # %.thread.i415.i
                                        #   in Loop: Header=BB8_194 Depth=1
	bstrpick.d	$a1, $a1, 31, 7
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1072
	add.d	$s3, $sp, $a2
	ori	$a2, $zero, 253
	bltu	$a1, $a2, .LBB8_238
.LBB8_237:                              #   in Loop: Header=BB8_194 Depth=1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1152
	add.d	$s3, $sp, $a1
.LBB8_238:                              # %scanner_size.exit416.i
                                        #   in Loop: Header=BB8_194 Depth=1
	beqz	$a0, .LBB8_192
# %bb.239:                              # %.lr.ph485.i
                                        #   in Loop: Header=BB8_194 Depth=1
	move	$s5, $zero
	b	.LBB8_242
	.p2align	4, , 16
.LBB8_240:                              #   in Loop: Header=BB8_242 Depth=2
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
.LBB8_241:                              #   in Loop: Header=BB8_242 Depth=2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s2, 296
	addi.d	$s5, $s5, 1
	bgeu	$s5, $a0, .LBB8_192
.LBB8_242:                              #   Parent Loop BB8_194 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_245 Depth 3
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 532
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB8_248
# %bb.243:                              # %.lr.ph482.i
                                        #   in Loop: Header=BB8_242 Depth=2
	move	$s1, $zero
	slli.d	$s7, $s5, 3
	b	.LBB8_245
	.p2align	4, , 16
.LBB8_244:                              #   in Loop: Header=BB8_245 Depth=3
	ld.w	$a0, $fp, 532
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB8_248
.LBB8_245:                              #   Parent Loop BB8_194 Depth=1
                                        #     Parent Loop BB8_242 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $s2, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 480
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $s2, 304
	lu12i.w	$a1, 1
	ori	$a1, $a1, 484
	add.d	$a1, $sp, $a1
	st.w	$s5, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 488
	add.d	$a1, $sp, $a1
	st.w	$s1, $a1, 0
	ld.w	$a1, $fp, 536
	ldx.d	$a0, $a0, $s7
	mul.w	$a1, $a1, $s1
	alsl.d	$a0, $a1, $a0, 3
	addi.d	$a1, $a0, 8
	lu12i.w	$a2, 1
	ori	$a2, $a2, 496
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 89
	lu12i.w	$a1, 1
	ori	$a1, $a1, 504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 480
	add.d	$a1, $sp, $a0
	move	$a0, $s3
	move	$a2, $s8
	pcaddu18i	$ra, %call36(set_add_fn)
	jirl	$ra, $ra, 0
	ld.w	$a2, $a0, 0
	ld.w	$a3, $a0, 4
	ld.w	$a4, $a0, 8
	move	$a0, $s0
	move	$a1, $s6
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 532
	addi.w	$a0, $a0, -1
	beq	$s1, $a0, .LBB8_244
# %bb.246:                              #   in Loop: Header=BB8_245 Depth=3
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $s4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	andi	$a0, $s1, 1
	beqz	$a0, .LBB8_244
# %bb.247:                              #   in Loop: Header=BB8_245 Depth=3
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB8_244
	.p2align	4, , 16
.LBB8_248:                              # %._crit_edge483.i
                                        #   in Loop: Header=BB8_242 Depth=2
	ld.w	$a0, $s2, 296
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	beq	$s5, $a0, .LBB8_240
# %bb.249:                              #   in Loop: Header=BB8_242 Depth=2
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	b	.LBB8_241
.LBB8_250:                              # %.preheader.i85
	lu12i.w	$a0, 1
	ori	$a0, $a0, 232
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB8_253
# %bb.251:                              # %.preheader.i85
	lu12i.w	$a1, 1
	ori	$a1, $a1, 240
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB8_253
# %bb.252:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB8_253:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 272
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 224
	add.d	$a1, $sp, $a1
	st.w	$zero, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 232
	add.d	$a1, $sp, $a1
	st.d	$zero, $a1, 0
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	beqz	$a0, .LBB8_256
# %bb.254:
	lu12i.w	$a1, 1
	ori	$a1, $a1, 280
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB8_256
# %bb.255:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB8_256:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 312
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 264
	add.d	$a1, $sp, $a1
	st.w	$zero, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 272
	add.d	$a1, $sp, $a1
	st.d	$zero, $a1, 0
	beqz	$a0, .LBB8_259
# %bb.257:
	lu12i.w	$a1, 1
	ori	$a1, $a1, 320
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB8_259
# %bb.258:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB8_259:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 352
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 304
	add.d	$a1, $sp, $a1
	st.w	$zero, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 312
	add.d	$a1, $sp, $a1
	st.d	$zero, $a1, 0
	ld.d	$s8, $sp, 176                   # 8-byte Folded Reload
	beqz	$a0, .LBB8_262
# %bb.260:
	lu12i.w	$a1, 1
	ori	$a1, $a1, 360
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB8_262
# %bb.261:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB8_262:                              # %write_scanner_data_as_C.exit
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 88
	beqz	$a0, .LBB8_279
# %bb.263:                              # %.lr.ph37.i
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.111)
	addi.d	$a0, $a0, %pc_lo12(.L.str.111)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ori	$s4, $zero, 1
	ori	$s3, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$a0, $a0, %pc_lo12(.L.str.107)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a0, $a0, %pc_lo12(.L.str.108)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.110)
	addi.d	$s7, $a0, %pc_lo12(.L.str.110)
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$a0, $a0, %pc_lo12(.L.str.109)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	b	.LBB8_265
	.p2align	4, , 16
.LBB8_264:                              #   in Loop: Header=BB8_265 Depth=1
	ld.wu	$a0, $fp, 88
	addi.d	$s2, $s2, 1
	bgeu	$s2, $a0, .LBB8_278
.LBB8_265:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_270 Depth 2
	ld.d	$a0, $fp, 96
	slli.d	$a1, $s2, 3
	ldx.d	$s6, $a0, $a1
	ld.wu	$a0, $s6, 136
	beqz	$a0, .LBB8_276
# %bb.266:                              # %.lr.ph.i88
                                        #   in Loop: Header=BB8_265 Depth=1
	move	$s5, $zero
	move	$s8, $zero
	b	.LBB8_270
.LBB8_267:                              #   in Loop: Header=BB8_270 Depth=2
	move	$a0, $s0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB8_268:                              #   in Loop: Header=BB8_270 Depth=2
	ld.d	$a0, $s1, 8
	ld.w	$a1, $a0, 4
	ld.w	$a2, $fp, 8
	ld.w	$a3, $a0, 8
	add.w	$a2, $a2, $a1
	move	$a0, $s0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s6, 136
	ori	$s3, $zero, 2
.LBB8_269:                              #   in Loop: Header=BB8_270 Depth=2
	addi.d	$s8, $s8, 1
	addi.d	$s5, $s5, 8
	bgeu	$s8, $a0, .LBB8_276
.LBB8_270:                              #   Parent Loop BB8_265 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s6, 144
	ldx.d	$s1, $a1, $s5
	ld.w	$a1, $s1, 0
	bne	$a1, $s4, .LBB8_269
# %bb.271:                              #   in Loop: Header=BB8_270 Depth=2
	ld.d	$a1, $s1, 8
	ld.w	$a1, $a1, 0
	bne	$a1, $s3, .LBB8_269
# %bb.272:                              #   in Loop: Header=BB8_270 Depth=2
	ld.bu	$a0, $s6, 376
	andi	$a1, $a0, 2
	bnez	$a1, .LBB8_274
# %bb.273:                              #   in Loop: Header=BB8_270 Depth=2
	addi.d	$a0, $a0, 2
	st.b	$a0, $s6, 376
	move	$a0, $s0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	move	$a2, $s2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB8_274:                              #   in Loop: Header=BB8_270 Depth=2
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	ld.d	$s3, $a0, 24
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 32
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	srai.d	$a1, $a0, 32
	ldx.bu	$a0, $s3, $a1
	ori	$a2, $zero, 41
	bne	$a0, $a2, .LBB8_267
# %bb.275:                              #   in Loop: Header=BB8_270 Depth=2
	ori	$a2, $zero, 1
	move	$a0, $s3
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB8_268
	.p2align	4, , 16
.LBB8_276:                              # %._crit_edge.i91
                                        #   in Loop: Header=BB8_265 Depth=1
	ld.bu	$a0, $s6, 376
	andi	$a0, $a0, 2
	beqz	$a0, .LBB8_264
# %bb.277:                              #   in Loop: Header=BB8_265 Depth=1
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB8_264
.LBB8_278:                              # %write_scanner_code_as_C.exit.loopexit
	sltui	$s1, $a0, 1
	ld.d	$s8, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	b	.LBB8_280
.LBB8_279:
	ori	$s1, $zero, 1
.LBB8_280:                              # %write_scanner_code_as_C.exit
	ld.w	$a0, $fp, 8
	ld.w	$a1, $fp, 48
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 7
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	bstrpick.d	$s7, $a0, 31, 3
	move	$a0, $s7
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 736
	add.d	$a0, $sp, $a0
	st.w	$zero, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 744
	add.d	$a0, $sp, $a0
	st.d	$zero, $a0, 0
	bnez	$s1, .LBB8_332
# %bb.281:                              # %.lr.ph190.i
	move	$a2, $zero
	lu12i.w	$a0, 1
	ori	$a0, $a0, 752
	add.d	$s8, $sp, $a0
	addi.w	$a0, $s7, 0
	addi.d	$a1, $s7, -1
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ori	$a5, $zero, 1
	sltu	$a1, $a5, $a0
	masknez	$a3, $a5, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a3
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	bstrins.d	$a0, $a0, 32, 31
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.116)
	addi.d	$a0, $a0, %pc_lo12(.L.str.116)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$a6, $zero, 3
	pcalau12i	$a0, %pc_hi20(.L.str.117)
	addi.d	$a0, $a0, %pc_lo12(.L.str.117)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$a0, $a0, %pc_lo12(.L.str.114)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.d	$s7, $sp, 152                   # 8-byte Folded Spill
	b	.LBB8_284
	.p2align	4, , 16
.LBB8_282:                              # %._crit_edge187.i
                                        #   in Loop: Header=BB8_284 Depth=1
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ori	$a5, $zero, 1
	ori	$a6, $zero, 3
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
.LBB8_283:                              #   in Loop: Header=BB8_284 Depth=1
	ld.wu	$a0, $fp, 88
	addi.d	$a2, $a2, 1
	bgeu	$a2, $a0, .LBB8_324
.LBB8_284:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_287 Depth 2
                                        #     Child Loop BB8_292 Depth 2
                                        #     Child Loop BB8_294 Depth 2
                                        #       Child Loop BB8_295 Depth 3
                                        #         Child Loop BB8_300 Depth 4
                                        #       Child Loop BB8_308 Depth 3
                                        #     Child Loop BB8_313 Depth 2
                                        #     Child Loop BB8_318 Depth 2
                                        #     Child Loop BB8_323 Depth 2
	ld.d	$a0, $fp, 96
	slli.d	$a1, $a2, 3
	ldx.d	$s4, $a0, $a1
	ld.wu	$a3, $s4, 96
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	beqz	$a3, .LBB8_315
# %bb.285:                              # %.lr.ph.i95
                                        #   in Loop: Header=BB8_284 Depth=1
	ld.d	$a0, $s4, 104
	move	$a1, $zero
	slli.d	$a2, $a3, 3
	b	.LBB8_287
	.p2align	4, , 16
.LBB8_286:                              #   in Loop: Header=BB8_287 Depth=2
	addi.d	$a1, $a1, 8
	beq	$a2, $a1, .LBB8_290
.LBB8_287:                              #   Parent Loop BB8_284 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a3, $a0, $a1
	ld.d	$a3, $a3, 0
	ld.w	$a4, $a3, 0
	bne	$a4, $a5, .LBB8_286
# %bb.288:                              #   in Loop: Header=BB8_287 Depth=2
	ld.d	$a3, $a3, 16
	ld.w	$a3, $a3, 0
	bne	$a3, $a6, .LBB8_286
# %bb.289:                              #   in Loop: Header=BB8_287 Depth=2
	ld.b	$a3, $s4, 376
	ori	$a3, $a3, 4
	st.b	$a3, $s4, 376
	b	.LBB8_286
	.p2align	4, , 16
.LBB8_290:                              # %._crit_edge.i99
                                        #   in Loop: Header=BB8_284 Depth=1
	ori	$s2, $zero, 1
	ld.d	$s1, $a0, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$a1, $zero
	move	$a2, $s7
	move	$s3, $a0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(elem_symbol)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	bstrpick.d	$a0, $a0, 62, 60
	add.w	$a0, $s5, $a0
	srai.d	$a1, $a0, 3
	ldx.b	$a2, $s3, $a1
	ld.w	$a0, $s4, 96
	andi	$a3, $s5, 7
	sll.w	$a3, $s2, $a3
	or	$a2, $a2, $a3
	stx.b	$a2, $s3, $a1
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB8_293
# %bb.291:                              # %.lr.ph165.i.preheader
                                        #   in Loop: Header=BB8_284 Depth=1
	ori	$s1, $zero, 1
	ori	$s2, $zero, 8
	ori	$s7, $zero, 1
	.p2align	4, , 16
.LBB8_292:                              # %.lr.ph165.i
                                        #   Parent Loop BB8_284 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s4, 104
	ldx.d	$a0, $a0, $s2
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(elem_symbol)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 62, 60
	add.w	$a1, $a0, $a1
	srai.d	$a1, $a1, 3
	ldx.b	$a2, $s3, $a1
	andi	$a3, $a0, 7
	sll.w	$a3, $s7, $a3
	or	$a2, $a2, $a3
	stx.b	$a2, $s3, $a1
	slt	$a1, $a0, $s5
	maskeqz	$a2, $a0, $a1
	ld.wu	$a0, $s4, 96
	masknez	$a1, $s5, $a1
	or	$s5, $a2, $a1
	addi.d	$s1, $s1, 1
	addi.d	$s2, $s2, 8
	bltu	$s1, $a0, .LBB8_292
.LBB8_293:                              # %.preheader158.i
                                        #   in Loop: Header=BB8_284 Depth=1
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB8_311
.LBB8_294:                              # %.lr.ph171.preheader.i
                                        #   Parent Loop BB8_284 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_295 Depth 3
                                        #         Child Loop BB8_300 Depth 4
                                        #       Child Loop BB8_308 Depth 3
	ld.d	$a0, $s4, 104
	move	$s3, $zero
	ori	$s7, $zero, 1
	addi.w	$s2, $zero, -8
	.p2align	4, , 16
.LBB8_295:                              # %.lr.ph171.i
                                        #   Parent Loop BB8_284 Depth=1
                                        #     Parent Loop BB8_294 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_300 Depth 4
	slli.d	$s6, $s3, 3
	ldx.d	$a0, $a0, $s6
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(elem_symbol)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 736
	add.d	$a1, $sp, $a1
	ld.w	$a1, $a1, 0
	sub.w	$s1, $a0, $s5
	bgeu	$s1, $a1, .LBB8_300
.LBB8_296:                              # %._crit_edge169.i
                                        #   in Loop: Header=BB8_295 Depth=3
	lu12i.w	$a0, 1
	ori	$a0, $a0, 744
	add.d	$a0, $sp, $a0
	ld.d	$a1, $a0, 0
	slli.d	$a0, $s1, 3
	ldx.d	$a0, $a1, $a0
	bnez	$a0, .LBB8_307
# %bb.297:                              #   in Loop: Header=BB8_295 Depth=3
	ld.d	$a0, $s4, 104
	ldx.d	$a2, $a0, $s6
	ld.d	$a2, $a2, 8
	ld.w	$a2, $a2, 0
	alsl.d	$a1, $s1, $a1, 3
	addi.d	$a2, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a2, $a1, 0
	ld.wu	$a1, $s4, 96
	addi.d	$s3, $s3, 1
	addi.d	$s7, $s7, 1
	addi.d	$s2, $s2, 8
	bltu	$s3, $a1, .LBB8_295
	b	.LBB8_310
	.p2align	4, , 16
.LBB8_298:                              #   in Loop: Header=BB8_300 Depth=4
	lu12i.w	$a0, 1
	ori	$a0, $a0, 744
	add.d	$a0, $sp, $a0
	st.d	$s8, $a0, 0
	bstrpick.d	$a0, $a1, 31, 0
	addi.w	$a1, $a1, 1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 736
	add.d	$a2, $sp, $a2
	st.w	$a1, $a2, 0
	slli.d	$a0, $a0, 3
	stx.d	$zero, $s8, $a0
.LBB8_299:                              #   in Loop: Header=BB8_300 Depth=4
	bltu	$s1, $a1, .LBB8_296
.LBB8_300:                              # %.lr.ph168.i
                                        #   Parent Loop BB8_284 Depth=1
                                        #     Parent Loop BB8_294 Depth=2
                                        #       Parent Loop BB8_295 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	lu12i.w	$a0, 1
	ori	$a0, $a0, 744
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB8_298
# %bb.301:                              #   in Loop: Header=BB8_300 Depth=4
	beq	$a0, $s8, .LBB8_304
# %bb.302:                              #   in Loop: Header=BB8_300 Depth=4
	andi	$a2, $a1, 7
	beqz	$a2, .LBB8_306
# %bb.303:                              #   in Loop: Header=BB8_300 Depth=4
	bstrpick.d	$a2, $a1, 31, 0
	addi.w	$a1, $a1, 1
	lu12i.w	$a3, 1
	ori	$a3, $a3, 736
	add.d	$a3, $sp, $a3
	st.w	$a1, $a3, 0
	slli.d	$a2, $a2, 3
	stx.d	$zero, $a0, $a2
	b	.LBB8_299
	.p2align	4, , 16
.LBB8_304:                              #   in Loop: Header=BB8_300 Depth=4
	ori	$a2, $zero, 2
	bltu	$a2, $a1, .LBB8_306
# %bb.305:                              #   in Loop: Header=BB8_300 Depth=4
	slli.d	$a2, $a1, 3
	addi.w	$a1, $a1, 1
	lu12i.w	$a3, 1
	ori	$a3, $a3, 736
	add.d	$a3, $sp, $a3
	st.w	$a1, $a3, 0
	stx.d	$zero, $a0, $a2
	b	.LBB8_299
	.p2align	4, , 16
.LBB8_306:                              #   in Loop: Header=BB8_300 Depth=4
	lu12i.w	$a0, 1
	ori	$a0, $a0, 736
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 736
	add.d	$a0, $sp, $a0
	ld.w	$a1, $a0, 0
	b	.LBB8_299
	.p2align	4, , 16
.LBB8_307:                              # %.preheader.i100
                                        #   in Loop: Header=BB8_294 Depth=2
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ori	$s1, $zero, 1
	beqz	$s3, .LBB8_309
	.p2align	4, , 16
.LBB8_308:                              # %.lr.ph173.i
                                        #   Parent Loop BB8_284 Depth=1
                                        #     Parent Loop BB8_294 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s4, 104
	ldx.d	$a0, $a0, $s2
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(elem_symbol)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 744
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	sub.w	$a0, $a0, $s5
	slli.d	$a0, $a0, 3
	stx.d	$zero, $a1, $a0
	addi.d	$s7, $s7, -1
	addi.d	$s2, $s2, -8
	blt	$s1, $s7, .LBB8_308
.LBB8_309:                              # %.loopexit.i101
                                        #   in Loop: Header=BB8_294 Depth=2
	ld.w	$a0, $s4, 96
	addi.d	$s5, $s5, -1
	bnez	$a0, .LBB8_294
	b	.LBB8_311
	.p2align	4, , 16
.LBB8_310:                              #   in Loop: Header=BB8_284 Depth=1
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
.LBB8_311:                              # %.split.us.i
                                        #   in Loop: Header=BB8_284 Depth=1
	st.w	$s5, $s4, 392
	pcalau12i	$a0, %pc_hi20(.L.str.112)
	addi.d	$a1, $a0, %pc_lo12(.L.str.112)
	move	$a0, $s0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ori	$a1, $zero, 8
	bltu	$a0, $a1, .LBB8_314
# %bb.312:                              # %.lr.ph178.i.preheader
                                        #   in Loop: Header=BB8_284 Depth=1
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB8_313:                              # %.lr.ph178.i
                                        #   Parent Loop BB8_284 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $s1, 0
	sltui	$a0, $s2, 1
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s6, $a0
	or	$a3, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a1, $a0, %pc_lo12(.L.str.113)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 1
	bnez	$s3, .LBB8_313
.LBB8_314:                              # %._crit_edge179.i
                                        #   in Loop: Header=BB8_284 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ori	$a5, $zero, 1
	ori	$a6, $zero, 3
	ld.w	$a0, $s4, 176
	bnez	$a0, .LBB8_316
	b	.LBB8_320
	.p2align	4, , 16
.LBB8_315:                              #   in Loop: Header=BB8_284 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.w	$a0, $s4, 392
	ld.w	$a0, $s4, 176
	beqz	$a0, .LBB8_320
.LBB8_316:                              #   in Loop: Header=BB8_284 Depth=1
	move	$a0, $s0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	move	$a3, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 176
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	beqz	$a0, .LBB8_319
# %bb.317:                              # %.lr.ph182.i
                                        #   in Loop: Header=BB8_284 Depth=1
	move	$s1, $zero
	move	$s2, $zero
	.p2align	4, , 16
.LBB8_318:                              #   Parent Loop BB8_284 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s4, 184
	ldx.d	$a1, $a1, $s1
	ld.d	$a1, $a1, 16
	ld.d	$a2, $a1, 160
	sltui	$a3, $a2, 1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	ld.w	$a2, $a1, 0
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	xor	$a0, $s2, $a0
	sltui	$a0, $a0, 1
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s6, $a0
	or	$a4, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.115)
	addi.d	$a1, $a0, %pc_lo12(.L.str.115)
	move	$a0, $s0
	move	$a3, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s4, 176
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	bltu	$s2, $a0, .LBB8_318
.LBB8_319:                              # %._crit_edge183.i
                                        #   in Loop: Header=BB8_284 Depth=1
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ori	$a5, $zero, 1
	ori	$a6, $zero, 3
.LBB8_320:                              #   in Loop: Header=BB8_284 Depth=1
	ld.w	$a0, $s4, 216
	beqz	$a0, .LBB8_283
# %bb.321:                              #   in Loop: Header=BB8_284 Depth=1
	move	$a0, $s0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	move	$a3, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 216
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 104                   # 8-byte Folded Reload
	beqz	$a0, .LBB8_282
# %bb.322:                              # %.lr.ph186.i
                                        #   in Loop: Header=BB8_284 Depth=1
	move	$s1, $zero
	move	$s2, $zero
	.p2align	4, , 16
.LBB8_323:                              #   Parent Loop BB8_284 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s4, 224
	ldx.d	$a1, $a1, $s1
	ld.d	$a4, $a1, 16
	ld.d	$a3, $a1, 8
	ld.d	$a5, $a4, 160
	ld.w	$a2, $a1, 0
	ld.w	$a3, $a3, 0
	sltui	$a1, $a5, 1
	masknez	$a5, $a5, $a1
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a5
	ld.w	$a4, $a1, 0
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	xor	$a0, $s2, $a0
	sltui	$a0, $a0, 1
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s6, $a0
	or	$a6, $a0, $a1
	move	$a0, $s0
	move	$a1, $s7
	move	$a5, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s4, 216
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	bltu	$s2, $a0, .LBB8_323
	b	.LBB8_282
.LBB8_324:                              # %._crit_edge191.i
	lu12i.w	$a0, 1
	ori	$a0, $a0, 736
	add.d	$a0, $sp, $a0
	ld.w	$a3, $a0, 0
	ld.d	$s8, $sp, 176                   # 8-byte Folded Reload
	beqz	$a3, .LBB8_332
# %bb.325:
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a1, $a0, %pc_lo12(.L.str.118)
	move	$a0, $s0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 736
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB8_333
# %bb.326:                              # %.lr.ph194.i.preheader
	move	$s1, $zero
	move	$s3, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$s2, $a0, %pc_lo12(.L.str.30)
	ori	$s4, $zero, 15
	b	.LBB8_328
	.p2align	4, , 16
.LBB8_327:                              #   in Loop: Header=BB8_328 Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 736
	add.d	$a0, $sp, $a0
	ld.wu	$a0, $a0, 0
	addi.d	$s3, $s3, 1
	addi.d	$s1, $s1, 8
	bgeu	$s3, $a0, .LBB8_333
.LBB8_328:                              # %.lr.ph194.i
                                        # =>This Inner Loop Header: Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 744
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ldx.d	$a2, $a0, $s1
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 736
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	beq	$s3, $a0, .LBB8_330
# %bb.329:                              #   in Loop: Header=BB8_328 Depth=1
	ori	$a0, $zero, 44
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB8_330:                              #   in Loop: Header=BB8_328 Depth=1
	andi	$a0, $s3, 15
	bne	$a0, $s4, .LBB8_327
# %bb.331:                              #   in Loop: Header=BB8_328 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	b	.LBB8_327
.LBB8_332:                              # %._crit_edge191.thread.i
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a1, $a0, %pc_lo12(.L.str.119)
	move	$a0, $s0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 88
	bnez	$a0, .LBB8_334
	b	.LBB8_342
.LBB8_333:                              # %._crit_edge195.i
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 88
	beqz	$a0, .LBB8_342
.LBB8_334:                              # %.lr.ph36.i
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(er_hint_hash_fns)
	addi.d	$s1, $a0, %pc_lo12(er_hint_hash_fns)
	pcalau12i	$a0, %pc_hi20(.L.str.120)
	addi.d	$a0, $a0, %pc_lo12(.L.str.120)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.121)
	addi.d	$s6, $a0, %pc_lo12(.L.str.121)
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	b	.LBB8_337
	.p2align	4, , 16
.LBB8_335:                              # %._crit_edge.i112
                                        #   in Loop: Header=BB8_337 Depth=1
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
.LBB8_336:                              #   in Loop: Header=BB8_337 Depth=1
	ld.wu	$a0, $fp, 88
	addi.d	$s2, $s2, 1
	bgeu	$s2, $a0, .LBB8_342
.LBB8_337:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_341 Depth 2
	ld.d	$a0, $fp, 96
	slli.d	$a1, $s2, 3
	ldx.d	$s7, $a0, $a1
	ld.w	$a0, $s7, 256
	beqz	$a0, .LBB8_336
# %bb.338:                              #   in Loop: Header=BB8_337 Depth=1
	addi.d	$a0, $sp, 184
	move	$a1, $s7
	move	$a2, $s1
	pcaddu18i	$ra, %call36(set_add_fn)
	jirl	$ra, $ra, 0
	bne	$a0, $s7, .LBB8_336
# %bb.339:                              #   in Loop: Header=BB8_337 Depth=1
	ld.w	$a0, $s7, 256
	ori	$a1, $zero, 1
	sltu	$a0, $a1, $a0
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	masknez	$a1, $s5, $a0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a4, $a0, $a1
	move	$a0, $s0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	move	$a2, $s2
	move	$a3, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 256
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	beqz	$a0, .LBB8_335
# %bb.340:                              # %.lr.ph.i109
                                        #   in Loop: Header=BB8_337 Depth=1
	move	$s1, $zero
	move	$s4, $zero
	.p2align	4, , 16
.LBB8_341:                              #   Parent Loop BB8_337 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s7, 264
	ldx.d	$a0, $a0, $s1
	ld.d	$a0, $a0, 16
	ld.w	$a1, $a0, 32
	ld.d	$a0, $a0, 40
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(escape_string)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 264
	ldx.d	$a1, $a1, $s1
	ld.d	$a2, $a1, 16
	ld.d	$a3, $a2, 8
	ld.w	$a4, $s7, 256
	move	$s8, $a0
	ld.w	$a2, $a1, 0
	ld.w	$a3, $a3, 56
	addi.d	$a0, $a4, -1
	bstrpick.d	$a0, $a0, 31, 0
	xor	$a0, $s4, $a0
	sltui	$a0, $a0, 1
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s5, $a0
	or	$a5, $a0, $a1
	move	$a0, $s0
	move	$a1, $s6
	move	$a4, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s7, 256
	addi.d	$s4, $s4, 1
	addi.d	$s1, $s1, 8
	bltu	$s4, $a0, .LBB8_341
	b	.LBB8_335
.LBB8_342:                              # %write_error_data_as_C.exit
	pcalau12i	$a0, %pc_hi20(.L.str.122)
	addi.d	$a1, $a0, %pc_lo12(.L.str.122)
	move	$a0, $s0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 88
	beqz	$a0, .LBB8_396
# %bb.343:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 88
	beqz	$a0, .LBB8_395
# %bb.344:                              # %.lr.ph.i114
	move	$s8, $zero
	move	$s2, $zero
	move	$s7, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.123)
	addi.d	$s1, $a0, %pc_lo12(.L.str.123)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$s4, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.126)
	addi.d	$s6, $a0, %pc_lo12(.L.str.126)
	pcalau12i	$a0, %pc_hi20(.L.str.130)
	addi.d	$a0, $a0, %pc_lo12(.L.str.130)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.131)
	addi.d	$a0, $a0, %pc_lo12(.L.str.131)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.100)
	addi.d	$a0, $a0, %pc_lo12(.L.str.100)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.133)
	addi.d	$a0, $a0, %pc_lo12(.L.str.133)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a0, $a0, %pc_lo12(.L.str.134)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.135)
	addi.d	$a0, $a0, %pc_lo12(.L.str.135)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(scan_kind_strings)
	addi.d	$a0, $a0, %pc_lo12(scan_kind_strings)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.139)
	addi.d	$a0, $a0, %pc_lo12(.L.str.139)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a0, $a0, %pc_lo12(.L.str.84)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.140)
	addi.d	$s3, $a0, %pc_lo12(.L.str.140)
	b	.LBB8_347
	.p2align	4, , 16
.LBB8_345:                              #   in Loop: Header=BB8_347 Depth=1
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB8_346:                              #   in Loop: Header=BB8_347 Depth=1
	ld.w	$a0, $fp, 88
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	xor	$a0, $s7, $a0
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a2, $a0, $a1
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 88
	addi.d	$s7, $s7, 1
	addi.w	$s2, $s2, 1
	addi.d	$s8, $s8, 8
	bgeu	$s7, $a0, .LBB8_395
.LBB8_347:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 96
	ldx.d	$s5, $a0, $s8
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 96
	beqz	$a0, .LBB8_349
# %bb.348:                              #   in Loop: Header=BB8_347 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.124)
	addi.d	$a1, $a0, %pc_lo12(.L.str.124)
	move	$a0, $s0
	move	$a2, $s2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB8_350
	.p2align	4, , 16
.LBB8_349:                              #   in Loop: Header=BB8_347 Depth=1
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	move	$a0, $s4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB8_350:                              #   in Loop: Header=BB8_347 Depth=1
	ld.w	$a2, $s5, 392
	move	$a0, $s0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s5, 176
	beqz	$a2, .LBB8_359
# %bb.351:                              #   in Loop: Header=BB8_347 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.125)
	addi.d	$a1, $a0, %pc_lo12(.L.str.125)
	move	$a0, $s0
	move	$a3, $s2
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s5, 216
	beqz	$a2, .LBB8_360
.LBB8_352:                              #   in Loop: Header=BB8_347 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.127)
	addi.d	$a1, $a0, %pc_lo12(.L.str.127)
	move	$a0, $s0
	move	$a3, $s2
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 256
	beqz	$a0, .LBB8_361
.LBB8_353:                              #   in Loop: Header=BB8_347 Depth=1
	pcalau12i	$a0, %pc_hi20(er_hint_hash_fns)
	addi.d	$a2, $a0, %pc_lo12(er_hint_hash_fns)
	addi.d	$a0, $sp, 184
	move	$a1, $s5
	pcaddu18i	$ra, %call36(set_add_fn)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s5, 256
	ld.w	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.128)
	addi.d	$a1, $a0, %pc_lo12(.L.str.128)
	move	$a0, $s0
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 136
	beqz	$a0, .LBB8_362
.LBB8_354:                              #   in Loop: Header=BB8_347 Depth=1
	ld.d	$a0, $s5, 400
	move	$a2, $s2
	beqz	$a0, .LBB8_356
# %bb.355:                              #   in Loop: Header=BB8_347 Depth=1
	ld.w	$a2, $a0, 0
.LBB8_356:                              #   in Loop: Header=BB8_347 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.129)
	addi.d	$a1, $a0, %pc_lo12(.L.str.129)
	move	$a0, $s0
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 128
	ld.bu	$a0, $s5, 376
	beqz	$a2, .LBB8_369
.LBB8_357:                              #   in Loop: Header=BB8_347 Depth=1
	andi	$a0, $a0, 4
	bnez	$a0, .LBB8_366
# %bb.358:                              #   in Loop: Header=BB8_347 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	b	.LBB8_371
	.p2align	4, , 16
.LBB8_359:                              #   in Loop: Header=BB8_347 Depth=1
	ori	$a1, $zero, 12
	ori	$a2, $zero, 1
	move	$a0, $s6
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s5, 216
	bnez	$a2, .LBB8_352
.LBB8_360:                              #   in Loop: Header=BB8_347 Depth=1
	ori	$a1, $zero, 12
	ori	$a2, $zero, 1
	move	$a0, $s6
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 256
	bnez	$a0, .LBB8_353
.LBB8_361:                              #   in Loop: Header=BB8_347 Depth=1
	ori	$a1, $zero, 12
	ori	$a2, $zero, 1
	move	$a0, $s6
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 136
	bnez	$a0, .LBB8_354
.LBB8_362:                              #   in Loop: Header=BB8_347 Depth=1
	ld.bu	$a0, $s5, 376
	andi	$a1, $a0, 2
	bnez	$a1, .LBB8_365
# %bb.363:                              #   in Loop: Header=BB8_347 Depth=1
	andi	$a0, $a0, 4
	beqz	$a0, .LBB8_367
# %bb.364:                              #   in Loop: Header=BB8_347 Depth=1
	ld.d	$a0, $fp, 128
	beqz	$a0, .LBB8_367
.LBB8_365:                              #   in Loop: Header=BB8_347 Depth=1
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	b	.LBB8_368
	.p2align	4, , 16
.LBB8_366:                              #   in Loop: Header=BB8_347 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 296
	bnez	$a0, .LBB8_372
	b	.LBB8_378
.LBB8_367:                              #   in Loop: Header=BB8_347 Depth=1
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	move	$a0, $s4
.LBB8_368:                              #   in Loop: Header=BB8_347 Depth=1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 128
	ld.bu	$a0, $s5, 376
	bnez	$a2, .LBB8_357
.LBB8_369:                              #   in Loop: Header=BB8_347 Depth=1
	andi	$a0, $a0, 2
	bnez	$a0, .LBB8_377
# %bb.370:                              #   in Loop: Header=BB8_347 Depth=1
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	move	$a0, $s4
.LBB8_371:                              #   in Loop: Header=BB8_347 Depth=1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 296
	beqz	$a0, .LBB8_378
.LBB8_372:                              #   in Loop: Header=BB8_347 Depth=1
	ld.d	$a0, $s5, 400
	move	$a2, $s2
	beqz	$a0, .LBB8_374
# %bb.373:                              #   in Loop: Header=BB8_347 Depth=1
	ld.w	$a2, $a0, 0
.LBB8_374:                              #   in Loop: Header=BB8_347 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.132)
	addi.d	$a1, $a0, %pc_lo12(.L.str.132)
	move	$a0, $s0
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 296
	ori	$a1, $zero, 254
	bltu	$a1, $a0, .LBB8_379
.LBB8_375:                              #   in Loop: Header=BB8_347 Depth=1
	ld.w	$a0, $s5, 336
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ori	$a1, $zero, 255
	bltu	$a0, $a1, .LBB8_383
# %bb.376:                              # %.thread.i.i.i123
                                        #   in Loop: Header=BB8_347 Depth=1
	bstrpick.d	$a0, $a0, 31, 7
	ori	$a1, $zero, 253
	bltu	$a0, $a1, .LBB8_381
	b	.LBB8_382
.LBB8_377:                              #   in Loop: Header=BB8_347 Depth=1
	move	$a0, $s0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $s2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 296
	bnez	$a0, .LBB8_372
	.p2align	4, , 16
.LBB8_378:                              #   in Loop: Header=BB8_347 Depth=1
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	move	$a0, $s4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 296
	ori	$a1, $zero, 254
	bgeu	$a1, $a0, .LBB8_375
.LBB8_379:                              #   in Loop: Header=BB8_347 Depth=1
	bstrpick.d	$a0, $a0, 31, 7
	ori	$a1, $zero, 252
	bltu	$a1, $a0, .LBB8_382
# %bb.380:                              # %..thread_crit_edge.i.i.i121
                                        #   in Loop: Header=BB8_347 Depth=1
	ld.w	$a0, $s5, 336
	bstrpick.d	$a0, $a0, 31, 7
	ori	$a1, $zero, 253
	bgeu	$a0, $a1, .LBB8_382
.LBB8_381:                              #   in Loop: Header=BB8_347 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a2, $a0, %pc_lo12(.L.str.101)
	b	.LBB8_383
	.p2align	4, , 16
.LBB8_382:                              # %scanner_size.exit.i.i116
                                        #   in Loop: Header=BB8_347 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.102)
	addi.d	$a2, $a0, %pc_lo12(.L.str.102)
.LBB8_383:                              # %scanner_type.exit.i117
                                        #   in Loop: Header=BB8_347 Depth=1
	move	$a0, $s0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s5, 376
	andi	$a0, $a0, 1
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s5, 376
	andi	$a0, $a0, 24
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a2, $a1, $a0
	move	$a0, $s0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s5, 376
	andi	$a0, $a0, 24
	ori	$a1, $zero, 8
	beq	$a0, $a1, .LBB8_388
# %bb.384:                              #   in Loop: Header=BB8_347 Depth=1
	ld.w	$a0, $s5, 296
	beqz	$a0, .LBB8_388
# %bb.385:                              #   in Loop: Header=BB8_347 Depth=1
	ld.d	$a0, $s5, 400
	move	$a2, $s2
	beqz	$a0, .LBB8_387
# %bb.386:                              #   in Loop: Header=BB8_347 Depth=1
	ld.w	$a2, $a0, 0
.LBB8_387:                              #   in Loop: Header=BB8_347 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.136)
	addi.d	$a1, $a0, %pc_lo12(.L.str.136)
	move	$a0, $s0
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s5, 376
	andi	$a0, $a0, 24
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB8_389
	b	.LBB8_393
	.p2align	4, , 16
.LBB8_388:                              #   in Loop: Header=BB8_347 Depth=1
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	move	$a0, $s4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s5, 376
	andi	$a0, $a0, 24
	ori	$a1, $zero, 8
	beq	$a0, $a1, .LBB8_393
.LBB8_389:                              #   in Loop: Header=BB8_347 Depth=1
	ld.w	$a0, $s5, 296
	beqz	$a0, .LBB8_393
# %bb.390:                              #   in Loop: Header=BB8_347 Depth=1
	ld.d	$a0, $s5, 400
	move	$a2, $s2
	beqz	$a0, .LBB8_392
# %bb.391:                              #   in Loop: Header=BB8_347 Depth=1
	ld.w	$a2, $a0, 0
.LBB8_392:                              #   in Loop: Header=BB8_347 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.137)
	addi.d	$a1, $a0, %pc_lo12(.L.str.137)
	move	$a0, $s0
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 408
	bnez	$a0, .LBB8_394
	b	.LBB8_345
	.p2align	4, , 16
.LBB8_393:                              #   in Loop: Header=BB8_347 Depth=1
	ori	$a1, $zero, 18
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 408
	beqz	$a0, .LBB8_345
.LBB8_394:                              #   in Loop: Header=BB8_347 Depth=1
	ld.w	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB8_346
.LBB8_395:                              # %._crit_edge.i120
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 176                   # 8-byte Folded Reload
	b	.LBB8_397
.LBB8_396:
	pcalau12i	$a0, %pc_hi20(.L.str.141)
	addi.d	$a0, $a0, %pc_lo12(.L.str.141)
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB8_397:                              # %write_state_data_as_C.exit
	pcalau12i	$a0, %pc_hi20(.L.str.145)
	addi.d	$a1, $a0, %pc_lo12(.L.str.145)
	move	$a0, $s0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	beqz	$a0, .LBB8_400
# %bb.398:                              # %.lr.ph.i125
	move	$s1, $zero
	move	$s3, $zero
	pcalau12i	$a0, %pc_hi20(d_internal)
	addi.d	$s4, $a0, %pc_lo12(d_internal)
	pcalau12i	$a0, %pc_hi20(.L.str.146)
	addi.d	$s2, $a0, %pc_lo12(.L.str.146)
	.p2align	4, , 16
.LBB8_399:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$a0, $a0, $s1
	ld.bu	$a1, $a0, 60
	andi	$a1, $a1, 28
	sltu	$a1, $zero, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$a2, $s4, $a1
	ld.d	$a3, $a0, 0
	ld.w	$a4, $a0, 8
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 8
	addi.d	$s3, $s3, 1
	addi.d	$s1, $s1, 8
	bltu	$s3, $a0, .LBB8_399
.LBB8_400:                              # %.preheader.i129
	ld.w	$a0, $fp, 48
	beqz	$a0, .LBB8_403
# %bb.401:                              # %.lr.ph27.i
	move	$s1, $zero
	move	$s6, $zero
	pcalau12i	$a0, %pc_hi20(d_symbol)
	addi.d	$s7, $a0, %pc_lo12(d_symbol)
	pcalau12i	$a0, %pc_hi20(.L.str.146)
	addi.d	$s2, $a0, %pc_lo12(.L.str.146)
	.p2align	4, , 16
.LBB8_402:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s1
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(escape_string)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcaddu18i	$ra, %call36(escape_string)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 56
	ldx.d	$a1, $a1, $s1
	ld.wu	$a1, $a1, 0
	slli.d	$a1, $a1, 3
	ldx.d	$s4, $s7, $a1
	move	$s5, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a4, $a0, 0
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s4
	move	$a3, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 48
	addi.d	$s6, $s6, 1
	addi.d	$s1, $s1, 8
	bltu	$s6, $a0, .LBB8_402
.LBB8_403:                              # %write_symbol_data_as_C.exit
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 200
	beqz	$a0, .LBB8_408
# %bb.404:
	pcalau12i	$a0, %pc_hi20(.L.str.153)
	addi.d	$a1, $a0, %pc_lo12(.L.str.153)
	move	$a0, $s0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 200
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	beqz	$a0, .LBB8_407
# %bb.405:                              # %.lr.ph.i132
	move	$s1, $zero
	move	$s3, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.154)
	addi.d	$s2, $a1, %pc_lo12(.L.str.154)
	.p2align	4, , 16
.LBB8_406:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 208
	ldx.d	$a1, $a1, $s1
	ld.d	$a2, $a1, 0
	ld.w	$a3, $a1, 8
	ld.w	$a4, $a1, 12
	ld.w	$a5, $a1, 16
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	sltu	$a0, $s3, $a0
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s4, $a0
	or	$a6, $a0, $a1
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 200
	addi.d	$s3, $s3, 1
	addi.d	$s1, $s1, 8
	bltu	$s3, $a0, .LBB8_406
.LBB8_407:                              # %._crit_edge.i135
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB8_408:                              # %write_passes_as_C.exit
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 10
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lookup_production)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_410
# %bb.409:
	ld.d	$a0, $a0, 200
	ld.w	$s2, $a0, 0
	b	.LBB8_411
.LBB8_410:
	move	$s2, $zero
.LBB8_411:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	move	$a0, $s0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 88
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s3, $a0, %pc_lo12(.L.str.7)
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	move	$a0, $s0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $s0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	ld.w	$a1, $fp, 48
	add.w	$a2, $a1, $a0
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	move	$a0, $s0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 240
	beqz	$a2, .LBB8_413
# %bb.412:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB8_414
.LBB8_413:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB8_414:
	ld.w	$a2, $fp, 200
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 200
	beqz	$a0, .LBB8_416
# %bb.415:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	move	$a0, $s0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB8_417
.LBB8_416:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB8_417:
	ld.w	$a0, $fp, 272
	sltui	$a0, $a0, 1
	xori	$a0, $a0, 49
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 1312
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end8:
	.size	write_parser_tables_as_C, .Lfunc_end8-write_parser_tables_as_C
                                        # -- End function
	.p2align	5                               # -- Begin function write_header_as_C
	.type	write_header_as_C,@function
write_header_as_C:                      # @write_header_as_C
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -128
	move	$fp, $a0
	ld.w	$a3, $a0, 48
	move	$s1, $a2
	move	$s0, $a1
	beqz	$a3, .LBB9_3
# %bb.1:                                # %.lr.ph
	ld.d	$a0, $fp, 56
	ori	$a2, $zero, 8
	bstrpick.d	$a1, $a3, 31, 0
	bgeu	$a3, $a2, .LBB9_4
# %bb.2:
	move	$a2, $zero
	move	$s4, $zero
	b	.LBB9_7
.LBB9_3:
	move	$s4, $zero
	b	.LBB9_9
.LBB9_4:                                # %vector.ph
	bstrpick.d	$a2, $a1, 31, 3
	slli.d	$a2, $a2, 3
	vrepli.b	$vr0, 0
	addi.d	$a3, $a0, 32
	move	$a4, $a2
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB9_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, -32
	ld.d	$a6, $a3, -24
	ld.d	$a7, $a3, -16
	ld.d	$t0, $a3, -8
	ld.w	$a5, $a5, 0
	ld.w	$a6, $a6, 0
	ld.w	$a7, $a7, 0
	ld.w	$t0, $t0, 0
	vinsgr2vr.w	$vr2, $a5, 0
	vinsgr2vr.w	$vr2, $a6, 1
	vinsgr2vr.w	$vr2, $a7, 2
	vinsgr2vr.w	$vr2, $t0, 3
	ld.d	$a5, $a3, 0
	ld.d	$a6, $a3, 8
	ld.d	$a7, $a3, 16
	ld.d	$t0, $a3, 24
	ld.w	$a5, $a5, 0
	ld.w	$a6, $a6, 0
	ld.w	$a7, $a7, 0
	ld.w	$t0, $t0, 0
	vinsgr2vr.w	$vr3, $a5, 0
	vinsgr2vr.w	$vr3, $a6, 1
	vinsgr2vr.w	$vr3, $a7, 2
	vinsgr2vr.w	$vr3, $t0, 3
	vseqi.w	$vr2, $vr2, 3
	vseqi.w	$vr3, $vr3, 3
	vor.v	$vr0, $vr0, $vr2
	vor.v	$vr1, $vr1, $vr3
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB9_5
# %bb.6:                                # %middle.block
	vor.v	$vr0, $vr1, $vr0
	vpickve2gr.w	$a3, $vr0, 0
	vpickve2gr.w	$a4, $vr0, 1
	andi	$a4, $a4, 1
	bstrins.d	$a3, $a4, 63, 1
	vpickve2gr.w	$a4, $vr0, 2
	bstrins.d	$a3, $a4, 2, 2
	vpickve2gr.w	$a4, $vr0, 3
	slli.d	$a4, $a4, 3
	or	$a3, $a3, $a4
	andi	$a3, $a3, 15
	sltu	$s4, $zero, $a3
	beq	$a2, $a1, .LBB9_9
.LBB9_7:                                # %scalar.ph.preheader
	alsl.d	$a0, $a2, $a0, 3
	sub.d	$a1, $a1, $a2
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB9_8:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	ld.w	$a3, $a3, 0
	addi.d	$a3, $a3, -3
	sltui	$a3, $a3, 1
	masknez	$a4, $s4, $a3
	maskeqz	$a3, $a2, $a3
	or	$s4, $a3, $a4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB9_8
.LBB9_9:                                # %._crit_edge
	ld.w	$a0, $fp, 260
	ori	$s3, $zero, 1
	bnez	$a0, .LBB9_13
# %bb.10:                               # %.preheader90
	ld.w	$a0, $fp, 8
	beqz	$a0, .LBB9_39
# %bb.11:                               # %.lr.ph96.preheader
	move	$s3, $zero
	move	$s2, $zero
	ori	$s5, $zero, 1
	.p2align	4, , 16
.LBB9_12:                               # %.lr.ph96
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(state_for_declaration)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	ld.w	$a1, $fp, 8
	masknez	$a2, $s5, $a0
	maskeqz	$a0, $s3, $a0
	addi.w	$s2, $s2, 1
	or	$s3, $a0, $a2
	bltu	$s2, $a1, .LBB9_12
.LBB9_13:                               # %.loopexit91
	ld.w	$a0, $fp, 544
	blez	$a0, .LBB9_40
.LBB9_14:
	addi.d	$a0, $sp, 24
	addi.d	$s2, $sp, 24
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	pcalau12i	$a2, %got_pc_hi20(stdout)
	ld.d	$a2, $a2, %got_pc_lo12(stdout)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	ld.d	$a3, $a1, 0
	ld.w	$a1, $a1, 8
	ld.d	$s0, $a2, 0
	add.d	$a2, $s2, $a0
	stx.d	$a3, $a0, $s2
	st.w	$a1, $a2, 8
	bnez	$s0, .LBB9_16
# %bb.15:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	addi.d	$a1, $sp, 24
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
.LBB9_16:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB9_26
# %bb.17:
	ld.w	$a0, $fp, 548
	beqz	$a0, .LBB9_34
# %bb.18:
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 48
	beqz	$a0, .LBB9_25
# %bb.19:                               # %.lr.ph101
	move	$s2, $zero
	move	$s4, $zero
	move	$s6, $zero
	ori	$s5, $zero, 3
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$s7, $a1, %pc_lo12(.L.str.24)
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$s8, $a1, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$s1, $a1, %pc_lo12(.L.str.22)
	b	.LBB9_22
	.p2align	4, , 16
.LBB9_20:                               #   in Loop: Header=BB9_22 Depth=1
	ld.w	$a3, $a1, 4
	ld.w	$a4, $fp, 8
	ld.d	$a2, $a1, 24
	add.w	$a3, $a4, $a3
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	xor	$a0, $s4, $a0
	sltui	$a0, $a0, 1
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $s8, $a0
	or	$a4, $a0, $a1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 48
.LBB9_21:                               #   in Loop: Header=BB9_22 Depth=1
	addi.d	$s4, $s4, 1
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$s2, $s2, 8
	bgeu	$s4, $a1, .LBB9_25
.LBB9_22:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 56
	ldx.d	$a1, $a1, $s2
	ld.w	$a2, $a1, 0
	bne	$a2, $s5, .LBB9_21
# %bb.23:                               #   in Loop: Header=BB9_22 Depth=1
	ld.w	$a2, $a1, 32
	add.d	$a2, $s6, $a2
	addi.w	$s6, $a2, 7
	ori	$a2, $zero, 71
	blt	$s6, $a2, .LBB9_20
# %bb.24:                               #   in Loop: Header=BB9_22 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ldx.d	$a1, $a0, $s2
	ld.w	$a0, $fp, 48
	move	$s6, $zero
	b	.LBB9_20
.LBB9_25:                               # %._crit_edge102
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB9_26:                               # %.loopexit89
	beqz	$s3, .LBB9_33
# %bb.27:                               # %.preheader
	ld.wu	$a0, $fp, 8
	beqz	$a0, .LBB9_33
# %bb.28:                               # %.lr.ph106
	move	$s2, $zero
	move	$s3, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$s1, $a1, %pc_lo12(.L.str.26)
	b	.LBB9_30
	.p2align	4, , 16
.LBB9_29:                               #   in Loop: Header=BB9_30 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	bgeu	$s3, $a0, .LBB9_33
.LBB9_30:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 16
	ldx.d	$a1, $a1, $s2
	ld.bu	$a2, $a1, 60
	andi	$a2, $a2, 28
	bnez	$a2, .LBB9_29
# %bb.31:                               #   in Loop: Header=BB9_30 Depth=1
	ld.d	$a2, $a1, 208
	beqz	$a2, .LBB9_29
# %bb.32:                               #   in Loop: Header=BB9_30 Depth=1
	ld.d	$a0, $a1, 200
	ld.d	$a2, $a1, 0
	ld.w	$a3, $a0, 0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 8
	b	.LBB9_29
.LBB9_33:                               # %.loopexit
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB9_43
.LBB9_34:                               # %.preheader88
	ld.wu	$a0, $fp, 48
	beqz	$a0, .LBB9_26
# %bb.35:                               # %.lr.ph104
	move	$s2, $zero
	move	$s4, $zero
	ori	$s5, $zero, 3
	pcalau12i	$a1, %pc_hi20(.L.str.20)
	addi.d	$s1, $a1, %pc_lo12(.L.str.20)
	b	.LBB9_37
	.p2align	4, , 16
.LBB9_36:                               #   in Loop: Header=BB9_37 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s2, $s2, 8
	bgeu	$s4, $a0, .LBB9_26
.LBB9_37:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 56
	ldx.d	$a1, $a1, $s2
	ld.w	$a2, $a1, 0
	bne	$a2, $s5, .LBB9_36
# %bb.38:                               #   in Loop: Header=BB9_37 Depth=1
	ld.w	$a0, $a1, 4
	ld.w	$a3, $fp, 8
	ld.d	$a2, $a1, 24
	add.w	$a3, $a3, $a0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 48
	b	.LBB9_36
.LBB9_39:
	move	$s3, $zero
	ld.w	$a0, $fp, 544
	bgtz	$a0, .LBB9_14
.LBB9_40:
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB9_42
# %bb.41:
	or	$a0, $s4, $s3
	bnez	$a0, .LBB9_14
.LBB9_42:
	move	$fp, $zero
.LBB9_43:
	move	$a0, $fp
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 144
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end9:
	.size	write_header_as_C, .Lfunc_end9-write_header_as_C
                                        # -- End function
	.p2align	5                               # -- Begin function write_global_code_as_C
	.type	write_global_code_as_C,@function
write_global_code_as_C:                 # @write_global_code_as_C
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
	move	$s3, $a1
	ld.w	$a1, $a1, 152
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB10_55
# %bb.1:                                # %.lr.ph
	move	$s5, $a0
	move	$s0, $zero
	ori	$s6, $zero, 36
	ori	$s4, $zero, 123
	addi.w	$a0, $zero, -2
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	b	.LBB10_3
	.p2align	4, , 16
.LBB10_2:                               #   in Loop: Header=BB10_3 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 152
	addi.d	$s0, $s0, 1
	bge	$s0, $a0, .LBB10_55
.LBB10_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_7 Depth 2
                                        #       Child Loop BB10_12 Depth 3
                                        #       Child Loop BB10_16 Depth 3
                                        #       Child Loop BB10_23 Depth 3
                                        #       Child Loop BB10_29 Depth 3
                                        #       Child Loop BB10_39 Depth 3
	ld.w	$a0, $s3, 540
	beqz	$a0, .LBB10_5
# %bb.4:                                #   in Loop: Header=BB10_3 Depth=1
	ld.d	$a0, $s3, 144
	alsl.d	$a0, $s0, $a0, 4
	ld.w	$s1, $a0, 8
	ld.d	$s2, $s3, 0
	ori	$a1, $zero, 47
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s2, $a1
	or	$a3, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	move	$a0, $s5
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB10_5:                               #   in Loop: Header=BB10_3 Depth=1
	ld.d	$a0, $s3, 144
	slli.d	$a1, $s0, 4
	ldx.d	$fp, $a0, $a1
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB10_7
	.p2align	4, , 16
.LBB10_6:                               #   in Loop: Header=BB10_7 Depth=2
	ld.d	$a0, $s3, 144
	alsl.d	$a0, $s0, $a0, 4
	ld.w	$a0, $a0, 8
	addi.d	$fp, $fp, 1
	add.w	$a1, $a0, $s0
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
.LBB10_7:                               #   Parent Loop BB10_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_12 Depth 3
                                        #       Child Loop BB10_16 Depth 3
                                        #       Child Loop BB10_23 Depth 3
                                        #       Child Loop BB10_29 Depth 3
                                        #       Child Loop BB10_39 Depth 3
	ld.bu	$a0, $fp, 0
	beq	$a0, $s6, .LBB10_10
# %bb.8:                                #   in Loop: Header=BB10_7 Depth=2
	beqz	$a0, .LBB10_2
# %bb.9:                                #   in Loop: Header=BB10_7 Depth=2
	ext.w.b	$a0, $a0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 1
	b	.LBB10_7
	.p2align	4, , 16
.LBB10_10:                              #   in Loop: Header=BB10_7 Depth=2
	ld.bu	$a0, $fp, 1
	bne	$a0, $s4, .LBB10_6
# %bb.11:                               #   in Loop: Header=BB10_7 Depth=2
	move	$s5, $zero
	addi.d	$s7, $fp, 2
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	sub.d	$s4, $a0, $fp
	addi.d	$s8, $fp, 3
	move	$s1, $s7
	move	$s6, $s4
	lu12i.w	$s0, 2
	ori	$a1, $zero, 125
	ldx.b	$fp, $s7, $s5
	andi	$s3, $fp, 255
	beqz	$s3, .LBB10_15
	.p2align	4, , 16
.LBB10_12:                              #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$s3, $a1, .LBB10_15
# %bb.13:                               #   in Loop: Header=BB10_12 Depth=3
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 1
	ldx.hu	$a0, $a0, $a1
	ori	$a1, $zero, 125
	and	$a0, $a0, $s0
	bnez	$a0, .LBB10_15
# %bb.14:                               #   in Loop: Header=BB10_12 Depth=3
	addi.d	$s5, $s5, 1
	addi.d	$s6, $s6, -1
	addi.d	$s1, $s1, 1
	addi.d	$s4, $s4, -1
	addi.d	$s8, $s8, 1
	ldx.b	$fp, $s7, $s5
	andi	$s3, $fp, 255
	bnez	$s3, .LBB10_12
.LBB10_15:                              # %.critedge
                                        #   in Loop: Header=BB10_7 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 125
	ld.d	$s0, $a0, 0
	slli.d	$a0, $fp, 1
	ldx.h	$a0, $s0, $a0
	bstrpick.d	$s2, $a0, 13, 13
	add.d	$fp, $s7, $s5
	sub.d	$s4, $s4, $s2
	ldx.bu	$a0, $s1, $s2
	beqz	$a0, .LBB10_18
	.p2align	4, , 16
.LBB10_16:                              #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$a0, $a1, .LBB10_18
# %bb.17:                               #   in Loop: Header=BB10_16 Depth=3
	addi.d	$s6, $s6, -1
	addi.d	$s1, $s1, 1
	addi.d	$s4, $s4, -1
	addi.d	$s8, $s8, 1
	ldx.bu	$a0, $s1, $s2
	bnez	$a0, .LBB10_16
.LBB10_18:                              # %.critedge2
                                        #   in Loop: Header=BB10_7 Depth=2
	add.d	$s1, $s1, $s2
	ori	$a0, $zero, 6
	beq	$s5, $a0, .LBB10_25
# %bb.19:                               # %.critedge2
                                        #   in Loop: Header=BB10_7 Depth=2
	ori	$a0, $zero, 5
	bne	$s5, $a0, .LBB10_26
# %bb.20:                               #   in Loop: Header=BB10_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 5
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_26
# %bb.21:                               #   in Loop: Header=BB10_7 Depth=2
	move	$a2, $s1
	beqz	$s3, .LBB10_31
# %bb.22:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB10_7 Depth=2
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_23:                              # %.lr.ph.i
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ext.w.b	$a0, $s3
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s0, $a0
	lu12i.w	$a1, 2
	and	$a0, $a0, $a1
	beqz	$a0, .LBB10_48
# %bb.24:                               #   in Loop: Header=BB10_23 Depth=3
	ld.bu	$s3, $fp, 1
	addi.d	$a1, $fp, 1
	move	$fp, $a1
	bnez	$s3, .LBB10_23
	b	.LBB10_32
.LBB10_25:                              #   in Loop: Header=BB10_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	ori	$a2, $zero, 6
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_28
.LBB10_26:                              #   in Loop: Header=BB10_7 Depth=2
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s3, 144
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a0, $s0, $a0, 4
	ld.w	$a0, $a0, 8
	add.w	$a1, $a0, $s0
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
	add.d	$fp, $s8, $s2
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
.LBB10_27:                              #   in Loop: Header=BB10_7 Depth=2
	ori	$s6, $zero, 36
	ori	$s4, $zero, 123
	b	.LBB10_7
.LBB10_28:                              #   in Loop: Header=BB10_7 Depth=2
	move	$a3, $s1
	beqz	$s3, .LBB10_35
	.p2align	4, , 16
.LBB10_29:                              # %.lr.ph.i70
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ext.w.b	$a0, $s3
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s0, $a0
	lu12i.w	$a1, 2
	and	$a0, $a0, $a1
	beqz	$a0, .LBB10_51
# %bb.30:                               #   in Loop: Header=BB10_29 Depth=3
	ld.bu	$s3, $fp, 1
	addi.d	$s1, $fp, 1
	move	$fp, $s1
	bnez	$s3, .LBB10_29
	b	.LBB10_36
.LBB10_31:                              #   in Loop: Header=BB10_7 Depth=2
	move	$a1, $fp
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
.LBB10_32:                              # %.critedge.i
                                        #   in Loop: Header=BB10_7 Depth=2
	addi.w	$s1, $zero, -1
	ori	$s6, $zero, 36
	bgeu	$a1, $a2, .LBB10_49
.LBB10_33:                              #   in Loop: Header=BB10_7 Depth=2
	add.d	$a0, $a1, $s4
	sub.w	$a2, $zero, $a0
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	move	$a0, $s3
	pcaddu18i	$ra, %call36(lookup_production)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB10_50
# %bb.34:                               #   in Loop: Header=BB10_7 Depth=2
	ld.w	$s1, $a0, 56
	b	.LBB10_50
.LBB10_35:                              #   in Loop: Header=BB10_7 Depth=2
	move	$s1, $fp
.LBB10_36:                              # %.critedge.i74
                                        #   in Loop: Header=BB10_7 Depth=2
	addi.w	$a2, $zero, -1
	bgeu	$s1, $a3, .LBB10_52
.LBB10_37:                              #   in Loop: Header=BB10_7 Depth=2
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.wu	$fp, $s3, 48
	beqz	$fp, .LBB10_53
# %bb.38:                               # %.lr.ph62.i
                                        #   in Loop: Header=BB10_7 Depth=2
	move	$s0, $zero
	move	$s4, $zero
	move	$s5, $zero
	sub.d	$a0, $s2, $s1
	sub.d	$a0, $a0, $s6
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	.p2align	4, , 16
.LBB10_39:                              #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $s3, 56
	ldx.d	$a1, $a1, $s0
	ld.w	$a2, $a1, 0
	move	$s7, $a0
	bnez	$a2, .LBB10_44
# %bb.40:                               #   in Loop: Header=BB10_39 Depth=3
	ld.w	$a0, $a1, 32
	add.d	$a0, $s1, $a0
	sub.d	$a0, $s2, $a0
	bne	$a0, $s6, .LBB10_44
# %bb.41:                               #   in Loop: Header=BB10_39 Depth=3
	ld.d	$s3, $a1, 24
	move	$a0, $s1
	move	$a1, $s3
	ld.d	$a2, $sp, 0                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_44
# %bb.42:                               #   in Loop: Header=BB10_39 Depth=3
	move	$a0, $s4
	ori	$a1, $zero, 1
	blt	$s7, $a1, .LBB10_45
# %bb.43:                               #   in Loop: Header=BB10_39 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.wu	$fp, $a0, 48
	.p2align	4, , 16
.LBB10_44:                              #   in Loop: Header=BB10_39 Depth=3
	move	$a0, $s7
.LBB10_45:                              #   in Loop: Header=BB10_39 Depth=3
	addi.d	$s5, $s5, 1
	addi.w	$s4, $s4, 1
	addi.d	$s0, $s0, 8
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	bltu	$s5, $fp, .LBB10_39
# %bb.46:                               # %._crit_edge.i
                                        #   in Loop: Header=BB10_7 Depth=2
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB10_54
# %bb.47:                               #   in Loop: Header=BB10_7 Depth=2
	ld.w	$a1, $s3, 8
	add.w	$a2, $a1, $a0
	b	.LBB10_53
.LBB10_48:                              #   in Loop: Header=BB10_7 Depth=2
	move	$a1, $fp
	addi.w	$s1, $zero, -1
	ori	$s6, $zero, 36
	bltu	$a1, $a2, .LBB10_33
.LBB10_49:                              #   in Loop: Header=BB10_7 Depth=2
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
.LBB10_50:                              # %find_symbol.exit
                                        #   in Loop: Header=BB10_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	move	$a0, $s5
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	add.d	$fp, $s8, $s2
	ori	$s4, $zero, 123
	b	.LBB10_7
.LBB10_51:                              #   in Loop: Header=BB10_7 Depth=2
	move	$s1, $fp
	addi.w	$a2, $zero, -1
	bltu	$s1, $a3, .LBB10_37
.LBB10_52:                              #   in Loop: Header=BB10_7 Depth=2
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
.LBB10_53:                              # %find_symbol.exit77
                                        #   in Loop: Header=BB10_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	move	$a0, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	add.d	$fp, $s8, $s2
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	b	.LBB10_27
.LBB10_54:                              #   in Loop: Header=BB10_7 Depth=2
	addi.w	$a2, $zero, -1
	b	.LBB10_53
.LBB10_55:                              # %._crit_edge
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
	ret
.Lfunc_end10:
	.size	write_global_code_as_C, .Lfunc_end10-write_global_code_as_C
                                        # -- End function
	.globl	write_ctables                   # -- Begin function write_ctables
	.p2align	5
	.type	write_ctables,@function
write_ctables:                          # @write_ctables
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 532
	ori	$a2, $zero, 256
	div.w	$a1, $a2, $a1
	ld.bu	$a2, $a0, 276
	st.w	$a1, $a0, 536
	ld.d	$a1, $a0, 0
	addi.d	$a3, $a0, 276
	sltui	$a2, $a2, 1
	masknez	$a2, $a3, $a2
	pcaddu18i	$ra, %call36(write_parser_tables_as_C)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end11:
	.size	write_ctables, .Lfunc_end11-write_ctables
                                        # -- End function
	.p2align	5                               # -- Begin function write_code_as_C
	.type	write_code_as_C,@function
write_code_as_C:                        # @write_code_as_C
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
	move	$s3, $a5
	move	$s4, $a4
	move	$s5, $a3
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $s0, 540
	beqz	$a0, .LBB12_2
# %bb.1:
	ori	$a1, $zero, 47
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$a3, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	move	$a0, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB12_2:
	ori	$s8, $zero, 36
	ori	$s3, $zero, 102
	ori	$s0, $zero, 35
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	b	.LBB12_5
.LBB12_3:                               #   in Loop: Header=BB12_5 Depth=1
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
.LBB12_4:                               #   in Loop: Header=BB12_5 Depth=1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 2
.LBB12_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_37 Depth 2
                                        #     Child Loop BB12_33 Depth 2
                                        #     Child Loop BB12_19 Depth 2
                                        #     Child Loop BB12_23 Depth 2
                                        #     Child Loop BB12_44 Depth 2
                                        #     Child Loop BB12_69 Depth 2
                                        #     Child Loop BB12_49 Depth 2
	ld.bu	$a0, $s5, 0
	beq	$a0, $s8, .LBB12_8
# %bb.6:                                #   in Loop: Header=BB12_5 Depth=1
	beqz	$a0, .LBB12_85
# %bb.7:                                #   in Loop: Header=BB12_5 Depth=1
	ext.w.b	$a0, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 1
	b	.LBB12_5
	.p2align	4, , 16
.LBB12_8:                               #   in Loop: Header=BB12_5 Depth=1
	ld.b	$s2, $s5, 1
	andi	$s1, $s2, 255
	blt	$s3, $s1, .LBB12_12
# %bb.9:                                #   in Loop: Header=BB12_5 Depth=1
	beq	$s1, $s0, .LBB12_3
# %bb.10:                               #   in Loop: Header=BB12_5 Depth=1
	bne	$s1, $s8, .LBB12_16
# %bb.11:                               #   in Loop: Header=BB12_5 Depth=1
	ori	$a1, $zero, 26
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	b	.LBB12_4
	.p2align	4, , 16
.LBB12_12:                              #   in Loop: Header=BB12_5 Depth=1
	ori	$a0, $zero, 103
	beq	$s1, $a0, .LBB12_31
# %bb.13:                               #   in Loop: Header=BB12_5 Depth=1
	ori	$a0, $zero, 110
	bne	$s1, $a0, .LBB12_16
# %bb.14:                               #   in Loop: Header=BB12_5 Depth=1
	addi.d	$s7, $s5, 2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ld.b	$a0, $s5, 2
	ld.d	$a1, $s6, 0
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $a1, $a0
	andi	$a0, $a0, 2048
	bnez	$a0, .LBB12_34
# %bb.15:                               #   in Loop: Header=BB12_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$s5, $s7
	b	.LBB12_5
.LBB12_16:                              #   in Loop: Header=BB12_5 Depth=1
	addi.d	$s6, $s5, 1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ld.d	$s0, $a0, 0
	slli.d	$a0, $s2, 1
	ldx.hu	$a0, $s0, $a0
	andi	$a0, $a0, 2048
	bnez	$a0, .LBB12_32
# %bb.17:                               #   in Loop: Header=BB12_5 Depth=1
	ori	$a0, $zero, 123
	bne	$s1, $a0, .LBB12_38
# %bb.18:                               #   in Loop: Header=BB12_5 Depth=1
	move	$a1, $zero
	addi.d	$s7, $s5, 2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a2, $a0, $s5
	addi.d	$s6, $s5, 3
	move	$a0, $s7
	move	$s4, $a2
	lu12i.w	$a5, 2
	ldx.b	$a3, $s7, $a1
	andi	$s2, $a3, 255
	beqz	$s2, .LBB12_22
	.p2align	4, , 16
.LBB12_19:                              #   Parent Loop BB12_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a4, $zero, 125
	beq	$s2, $a4, .LBB12_22
# %bb.20:                               #   in Loop: Header=BB12_19 Depth=2
	slli.d	$a4, $a3, 1
	ldx.hu	$a4, $s0, $a4
	and	$a4, $a4, $a5
	bnez	$a4, .LBB12_22
# %bb.21:                               #   in Loop: Header=BB12_19 Depth=2
	addi.d	$a1, $a1, 1
	addi.d	$s4, $s4, -1
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, -1
	addi.d	$s6, $s6, 1
	ldx.b	$a3, $s7, $a1
	andi	$s2, $a3, 255
	bnez	$s2, .LBB12_19
.LBB12_22:                              # %.critedge
                                        #   in Loop: Header=BB12_5 Depth=1
	slli.d	$a3, $a3, 1
	ldx.h	$a3, $s0, $a3
	bstrpick.d	$s1, $a3, 13, 13
	add.d	$s5, $s7, $a1
	sub.d	$s3, $a2, $s1
	ldx.bu	$a2, $a0, $s1
	beqz	$a2, .LBB12_25
	.p2align	4, , 16
.LBB12_23:                              #   Parent Loop BB12_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a3, $zero, 125
	beq	$a2, $a3, .LBB12_25
# %bb.24:                               #   in Loop: Header=BB12_23 Depth=2
	addi.d	$s4, $s4, -1
	addi.d	$a0, $a0, 1
	addi.d	$s3, $s3, -1
	addi.d	$s6, $s6, 1
	ldx.bu	$a2, $a0, $s1
	bnez	$a2, .LBB12_23
.LBB12_25:                              # %.critedge2
                                        #   in Loop: Header=BB12_5 Depth=1
	addi.d	$a1, $a1, -4
	ori	$a2, $zero, 6
	bltu	$a2, $a1, .LBB12_55
# %bb.26:                               # %.critedge2
                                        #   in Loop: Header=BB12_5 Depth=1
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI12_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI12_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	add.d	$a0, $a0, $s1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	jr	$a1
.LBB12_27:                              #   in Loop: Header=BB12_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a1, $a0, %pc_lo12(.L.str.69)
	ori	$a2, $zero, 4
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_55
# %bb.28:                               #   in Loop: Header=BB12_5 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s5
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	move	$a2, $s0
	pcaddu18i	$ra, %call36(find_pass)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	bnez	$a0, .LBB12_30
# %bb.29:                               #   in Loop: Header=BB12_5 Depth=1
	move	$a0, $s5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(dup_str)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a0, $a0, %pc_lo12(.L.str.70)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
.LBB12_30:                              #   in Loop: Header=BB12_5 Depth=1
	ld.w	$a2, $s7, 16
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB12_56
.LBB12_31:                              #   in Loop: Header=BB12_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a0, $a0, %pc_lo12(.L.str.55)
	ori	$a1, $zero, 29
	ori	$a2, $zero, 1
	b	.LBB12_4
.LBB12_32:                              #   in Loop: Header=BB12_5 Depth=1
	ori	$a2, $zero, 10
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a1, $a0, %pc_lo12(.L.str.60)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	move	$a1, $s5
	ori	$s0, $zero, 35
	.p2align	4, , 16
.LBB12_33:                              #   Parent Loop BB12_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a2, $a1, 1
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a0, $a2
	addi.d	$s5, $a1, 1
	andi	$a2, $a2, 2048
	move	$a1, $s5
	bnez	$a2, .LBB12_33
	b	.LBB12_5
.LBB12_34:                              #   in Loop: Header=BB12_5 Depth=1
	ori	$a2, $zero, 10
	move	$a0, $s7
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$s7, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a1, $a0, %pc_lo12(.L.str.56)
	move	$a0, $fp
	move	$a2, $s7
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 32
	addi.w	$a0, $a0, -1
	bgeu	$a0, $s7, .LBB12_36
# %bb.35:                               #   in Loop: Header=BB12_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
.LBB12_36:                              #   in Loop: Header=BB12_5 Depth=1
	ld.d	$a0, $s6, 0
	addi.d	$a1, $s5, 1
	.p2align	4, , 16
.LBB12_37:                              #   Parent Loop BB12_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a2, $a1, 1
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a0, $a2
	addi.d	$s5, $a1, 1
	andi	$a2, $a2, 2048
	move	$a1, $s5
	bnez	$a2, .LBB12_37
	b	.LBB12_5
.LBB12_38:                              #   in Loop: Header=BB12_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
	move	$s5, $s6
	ori	$s0, $zero, 35
	b	.LBB12_5
.LBB12_39:                              #   in Loop: Header=BB12_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a1, $a0, %pc_lo12(.L.str.61)
	ori	$a2, $zero, 6
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_57
# %bb.40:                               #   in Loop: Header=BB12_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a1, $a0, %pc_lo12(.L.str.67)
	ori	$a2, $zero, 6
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_60
# %bb.41:                               # %.thread142
                                        #   in Loop: Header=BB12_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	ori	$a2, $zero, 6
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_55
# %bb.42:                               #   in Loop: Header=BB12_5 Depth=1
	beqz	$s2, .LBB12_63
# %bb.43:                               # %.lr.ph.i128.preheader
                                        #   in Loop: Header=BB12_5 Depth=1
	lu12i.w	$a1, 2
	.p2align	4, , 16
.LBB12_44:                              # %.lr.ph.i128
                                        #   Parent Loop BB12_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$a0, $s2
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s0, $a0
	and	$a0, $a0, $a1
	beqz	$a0, .LBB12_63
# %bb.45:                               #   in Loop: Header=BB12_44 Depth=2
	ld.bu	$s2, $s5, 1
	addi.d	$s7, $s5, 1
	move	$s5, $s7
	bnez	$s2, .LBB12_44
	b	.LBB12_64
.LBB12_46:                              #   in Loop: Header=BB12_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a1, $a0, %pc_lo12(.L.str.65)
	ori	$a2, $zero, 5
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_58
# %bb.47:                               #   in Loop: Header=BB12_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 5
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_55
# %bb.48:                               #   in Loop: Header=BB12_5 Depth=1
	beqz	$s2, .LBB12_75
	.p2align	4, , 16
.LBB12_49:                              # %.lr.ph.i
                                        #   Parent Loop BB12_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$a0, $s2
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s0, $a0
	lu12i.w	$a1, 2
	and	$a0, $a0, $a1
	beqz	$a0, .LBB12_78
# %bb.50:                               #   in Loop: Header=BB12_49 Depth=2
	ld.bu	$s2, $s5, 1
	addi.d	$a1, $s5, 1
	move	$s5, $a1
	bnez	$s2, .LBB12_49
# %bb.51:                               # %.critedge.i
                                        #   in Loop: Header=BB12_5 Depth=1
	addi.w	$s5, $zero, -1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB12_76
.LBB12_52:                              #   in Loop: Header=BB12_5 Depth=1
	add.d	$a0, $a1, $s3
	sub.w	$a2, $zero, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(lookup_production)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ori	$s3, $zero, 102
	ori	$s0, $zero, 35
	beqz	$a0, .LBB12_77
# %bb.53:                               #   in Loop: Header=BB12_5 Depth=1
	ld.w	$s5, $a0, 56
	b	.LBB12_77
.LBB12_54:                              #   in Loop: Header=BB12_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a1, $a0, %pc_lo12(.L.str.63)
	ori	$a2, $zero, 10
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_59
.LBB12_55:                              # %.thread148
                                        #   in Loop: Header=BB12_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	move	$a1, $s4
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
.LBB12_56:                              #   in Loop: Header=BB12_5 Depth=1
	add.d	$s5, $s6, $s1
	b	.LBB12_62
.LBB12_57:                              #   in Loop: Header=BB12_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	ori	$a1, $zero, 11
	b	.LBB12_61
.LBB12_58:                              #   in Loop: Header=BB12_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	ori	$a1, $zero, 27
	b	.LBB12_61
.LBB12_59:                              #   in Loop: Header=BB12_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	ori	$a1, $zero, 53
	b	.LBB12_61
.LBB12_60:                              #   in Loop: Header=BB12_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	ori	$a1, $zero, 7
.LBB12_61:                              #   in Loop: Header=BB12_5 Depth=1
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	add.d	$s5, $s6, $s1
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
.LBB12_62:                              #   in Loop: Header=BB12_5 Depth=1
	ori	$s3, $zero, 102
	ori	$s0, $zero, 35
	b	.LBB12_5
.LBB12_63:                              #   in Loop: Header=BB12_5 Depth=1
	move	$s7, $s5
.LBB12_64:                              # %.critedge.i132
                                        #   in Loop: Header=BB12_5 Depth=1
	addi.w	$a2, $zero, -1
	ori	$s3, $zero, 102
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bgeu	$s7, $a0, .LBB12_83
# %bb.65:                               #   in Loop: Header=BB12_5 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.wu	$a3, $a0, 48
	ori	$s0, $zero, 35
	beqz	$a3, .LBB12_84
# %bb.66:                               # %.lr.ph62.i
                                        #   in Loop: Header=BB12_5 Depth=1
	move	$s2, $zero
	move	$s3, $zero
	move	$s5, $zero
	sub.d	$a0, $s1, $s7
	sub.d	$a0, $a0, $s4
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	b	.LBB12_69
	.p2align	4, , 16
.LBB12_67:                              #   in Loop: Header=BB12_69 Depth=2
	move	$a0, $s0
.LBB12_68:                              #   in Loop: Header=BB12_69 Depth=2
	addi.d	$s5, $s5, 1
	addi.w	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	bgeu	$s5, $a3, .LBB12_79
.LBB12_69:                              #   Parent Loop BB12_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 56
	ldx.d	$a1, $a1, $s2
	ld.w	$a2, $a1, 0
	move	$s0, $a0
	bnez	$a2, .LBB12_67
# %bb.70:                               #   in Loop: Header=BB12_69 Depth=2
	ld.w	$a0, $a1, 32
	add.d	$a0, $s7, $a0
	sub.d	$a0, $s1, $a0
	bne	$a0, $s4, .LBB12_67
# %bb.71:                               #   in Loop: Header=BB12_69 Depth=2
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a1, $a1, 24
	move	$a0, $s7
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a2, $sp, 0                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_73
# %bb.72:                               #   in Loop: Header=BB12_69 Depth=2
	move	$a0, $s0
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	b	.LBB12_68
.LBB12_73:                              #   in Loop: Header=BB12_69 Depth=2
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	move	$a0, $s3
	ori	$a1, $zero, 1
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	blt	$s0, $a1, .LBB12_68
# %bb.74:                               #   in Loop: Header=BB12_69 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	move	$a1, $a2
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.wu	$a3, $a0, 48
	b	.LBB12_67
.LBB12_75:                              #   in Loop: Header=BB12_5 Depth=1
	move	$a1, $s5
	addi.w	$s5, $zero, -1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB12_52
.LBB12_76:                              #   in Loop: Header=BB12_5 Depth=1
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ori	$s3, $zero, 102
	ori	$s0, $zero, 35
.LBB12_77:                              # %find_symbol.exit
                                        #   in Loop: Header=BB12_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	move	$a0, $fp
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	add.d	$s5, $s6, $s1
	b	.LBB12_5
.LBB12_78:                              #   in Loop: Header=BB12_5 Depth=1
	move	$a1, $s5
	addi.w	$s5, $zero, -1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB12_52
	b	.LBB12_76
.LBB12_79:                              # %._crit_edge.i
                                        #   in Loop: Header=BB12_5 Depth=1
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB12_81
# %bb.80:                               #   in Loop: Header=BB12_5 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 8
	add.w	$a2, $a1, $a0
	b	.LBB12_82
.LBB12_81:                              #   in Loop: Header=BB12_5 Depth=1
	addi.w	$a2, $zero, -1
.LBB12_82:                              # %find_symbol.exit135
                                        #   in Loop: Header=BB12_5 Depth=1
	ori	$s3, $zero, 102
.LBB12_83:                              # %find_symbol.exit135
                                        #   in Loop: Header=BB12_5 Depth=1
	ori	$s0, $zero, 35
.LBB12_84:                              # %find_symbol.exit135
                                        #   in Loop: Header=BB12_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	add.d	$s5, $s6, $s1
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	b	.LBB12_5
.LBB12_85:
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	ori	$a1, $zero, 11
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a3, $fp
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
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end12:
	.size	write_code_as_C, .Lfunc_end12-write_code_as_C
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI12_0:
	.word	.LBB12_27-.LJTI12_0
	.word	.LBB12_46-.LJTI12_0
	.word	.LBB12_39-.LJTI12_0
	.word	.LBB12_55-.LJTI12_0
	.word	.LBB12_55-.LJTI12_0
	.word	.LBB12_55-.LJTI12_0
	.word	.LBB12_54-.LJTI12_0
                                        # -- End function
	.type	scanner_block_fns,@object       # @scanner_block_fns
	.data
	.globl	scanner_block_fns
	.p2align	3, 0x0
scanner_block_fns:
	.dword	scanner_block_hash_fn
	.dword	scanner_block_cmp_fn
	.space	16
	.size	scanner_block_fns, 32

	.type	trans_scanner_block_fns,@object # @trans_scanner_block_fns
	.globl	trans_scanner_block_fns
	.p2align	3, 0x0
trans_scanner_block_fns:
	.dword	trans_scanner_block_hash_fn
	.dword	trans_scanner_block_cmp_fn
	.space	16
	.size	trans_scanner_block_fns, 32

	.type	shift_fns,@object               # @shift_fns
	.globl	shift_fns
	.p2align	3, 0x0
shift_fns:
	.dword	shift_hash_fn
	.dword	shift_cmp_fn
	.space	16
	.size	shift_fns, 32

	.type	er_hint_hash_fns,@object        # @er_hint_hash_fns
	.globl	er_hint_hash_fns
	.p2align	3, 0x0
er_hint_hash_fns:
	.dword	er_hint_hash_fn
	.dword	er_hint_cmp_fn
	.space	16
	.size	er_hint_hash_fns, 32

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str:
	.asciz	".d_parser.c"
	.size	.L.str, 12

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"unable to open `%s` for write\n"
	.size	.L.str.1, 31

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"#include \"dparse.h\"\n"
	.size	.L.str.2, 21

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"#include \"%s.d_parser.h\"\n"
	.size	.L.str.3, 26

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"\n"
	.size	.L.str.4, 2

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"whitespace"
	.size	.L.str.5, 11

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"D_ParserTables parser_tables_%s = {\n"
	.size	.L.str.6, 37

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%d, "
	.size	.L.str.7, 5

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"d_states_%s, "
	.size	.L.str.8, 14

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"d_gotos_%s, "
	.size	.L.str.9, 13

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"d_symbols_%s, "
	.size	.L.str.10, 15

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"%s, "
	.size	.L.str.11, 5

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"NULL, "
	.size	.L.str.12, 7

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"d_passes_%s, "
	.size	.L.str.13, 14

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"};\n"
	.size	.L.str.16, 4

	.type	.L.str.17,@object               # @.str.17
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.17:
	.asciz	".d_parser.h"
	.size	.L.str.17, 12

	.type	.L.str.18,@object               # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"#ifndef _%s_h\n"
	.size	.L.str.18, 15

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"#define _%s_h\n"
	.size	.L.str.19, 15

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"#define %s \t%d\n"
	.size	.L.str.20, 16

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"enum D_Tokens_%s {\n"
	.size	.L.str.21, 20

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"%s = %d%s"
	.size	.L.str.22, 10

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.space	1
	.size	.L.str.23, 1

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	", "
	.size	.L.str.24, 3

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"\n};\n"
	.size	.L.str.25, 5

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"#define D_START_STATE_%s \t%d\n"
	.size	.L.str.26, 30

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"#endif\n"
	.size	.L.str.27, 8

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"#line %d \"%s\"\n"
	.size	.L.str.28, 15

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"nterm"
	.size	.L.str.29, 6

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"%d"
	.size	.L.str.30, 3

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"string"
	.size	.L.str.31, 7

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"bad $ escape in code line %u\n"
	.size	.L.str.32, 30

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"attempt to find symbol for non-unique string '%s'\n"
	.size	.L.str.33, 51

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"_"
	.size	.L.str.34, 2

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"int d_speculative_reduction_code_%d_%d_%s%s;\n"
	.size	.L.str.35, 46

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"int d_final_reduction_code_%d_%d_%s%s;\n"
	.size	.L.str.36, 40

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"extern D_ReductionCode d_pass_code_%d_%d_%s[];\n"
	.size	.L.str.37, 48

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"int d_pass_code_%d_%d_%d_%s%s;\n"
	.size	.L.str.38, 32

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"int d_speculative_reduction_code_%d_%d_%s%s "
	.size	.L.str.39, 45

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"int d_final_reduction_code_%d_%d_%s%s "
	.size	.L.str.40, 39

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"int d_pass_code_%d_%d_%d_%s%s "
	.size	.L.str.41, 31

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"d_speculative_reduction_code_%d_%d_%s"
	.size	.L.str.42, 38

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"NULL"
	.size	.L.str.43, 5

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"d_final_reduction_code_%d_%d_%s"
	.size	.L.str.44, 32

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"d_pass_code_%d_%d_%s"
	.size	.L.str.45, 21

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"D_ReductionCode %s[] = {"
	.size	.L.str.46, 25

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"d_pass_code_%d_%d_%d_%s%s"
	.size	.L.str.47, 26

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"NULL%s"
	.size	.L.str.48, 7

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"};\n\n"
	.size	.L.str.49, 5

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"D_Reduction d_reduction_%d_%s = "
	.size	.L.str.50, 33

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"{%d, %d, %s, %s, %d, %d, %d, %d, %d, %d, %s};\n"
	.size	.L.str.51, 47

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"(void *_ps, void **_children, int _n_children, int _offset, D_Parser *_parser)"
	.size	.L.str.52, 79

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"{\n"
	.size	.L.str.53, 3

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"(_n_children)"
	.size	.L.str.54, 14

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"(D_PN(_ps, _offset)->globals)"
	.size	.L.str.55, 30

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"(*(D_PN(_children[%d], _offset)))"
	.size	.L.str.56, 34

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"$nXXXX greater than number of children at line %d"
	.size	.L.str.57, 50

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"(*(D_PN(_ps, _offset)))"
	.size	.L.str.58, 24

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"(D_PN(_ps, _offset)->user)"
	.size	.L.str.59, 27

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"(D_PN(_children[%d], _offset)->user)"
	.size	.L.str.60, 37

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"reject"
	.size	.L.str.61, 7

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	" return -1 "
	.size	.L.str.62, 12

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"free_below"
	.size	.L.str.63, 11

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	" free_D_ParseTreeBelow(_parser, (D_PN(_ps, _offset)))"
	.size	.L.str.64, 54

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"scope"
	.size	.L.str.65, 6

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"(D_PN(_ps, _offset)->scope)"
	.size	.L.str.66, 28

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"parser"
	.size	.L.str.67, 7

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"_parser"
	.size	.L.str.68, 8

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"pass"
	.size	.L.str.69, 5

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"unknown pass '%s' line %d"
	.size	.L.str.70, 26

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"  return 0;"
	.size	.L.str.71, 12

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"}\n\n"
	.size	.L.str.72, 4

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"D_Shift d_shift_%d_%s = { %d, %d, %d, %d, %d, %s };\n"
	.size	.L.str.73, 53

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"D_Shift *d_shifts_%d_%s[] = {\n"
	.size	.L.str.74, 31

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"&d_shift_%d_%s%s"
	.size	.L.str.75, 17

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	", NULL"
	.size	.L.str.76, 7

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"D_Shift *d_accepts_diff_%d_%d_%s[] = {"
	.size	.L.str.77, 39

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"&d_shift_%d_%s,"
	.size	.L.str.78, 16

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"0};\n"
	.size	.L.str.79, 5

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"D_Shift **d_accepts_diff_%d_%s[] = {\n"
	.size	.L.str.80, 38

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"d_accepts_diff_%d_%d_%s%s"
	.size	.L.str.81, 26

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	",\n"
	.size	.L.str.82, 3

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"%s d_scanner_%d_%d_%d_%s[SCANNER_BLOCK_SIZE] = {\n"
	.size	.L.str.83, 50

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	","
	.size	.L.str.84, 2

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"%s d_accepts_diff_%d_%d_%d_%s[SCANNER_BLOCK_SIZE] = {\n"
	.size	.L.str.85, 55

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"d_shift_%d_%d_%s"
	.size	.L.str.86, 17

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"D_Shift *%s[] = { "
	.size	.L.str.87, 19

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	", NULL};\n\n"
	.size	.L.str.88, 11

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"SB_%s d_scanner_%d_%s[%d] = {\n"
	.size	.L.str.89, 31

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"{ %s, {"
	.size	.L.str.90, 8

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"{ d_shift_%d_%d_%s, {"
	.size	.L.str.91, 22

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"{ NULL, {"
	.size	.L.str.92, 10

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"d_scanner_%d_%d_%d_%s"
	.size	.L.str.93, 22

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"\n  "
	.size	.L.str.94, 4

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"}},\n"
	.size	.L.str.95, 5

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"}}\n"
	.size	.L.str.96, 4

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"SB_trans_%s d_transition_%d_%s[%d] = {\n"
	.size	.L.str.97, 40

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"{{ "
	.size	.L.str.98, 4

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"d_accepts_diff_%d_%d_%d_%s"
	.size	.L.str.99, 27

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"unsigned char"
	.size	.L.str.100, 14

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"unsigned short"
	.size	.L.str.101, 15

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"unsigned int"
	.size	.L.str.102, 13

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"uint8"
	.size	.L.str.104, 6

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"uint16"
	.size	.L.str.105, 7

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"uint32"
	.size	.L.str.106, 7

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"int d_scan_code_%d_%s(char **as, int *col, int *line,unsigned short *symbol, int *term_priority,unsigned char *op_assoc, int *op_priority) {\n  int res;\n"
	.size	.L.str.107, 153

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"  if ((res = "
	.size	.L.str.108, 14

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"%s("
	.size	.L.str.109, 4

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"as, col, line, op_assoc, op_priority))) {\n    *symbol = %d;\n    *term_priority = %d;\n    return res;\n  }\n"
	.size	.L.str.110, 106

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"  return 0;\n}\n\n"
	.size	.L.str.111, 16

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"unsigned char d_goto_valid_%d_%s[] = {\n"
	.size	.L.str.112, 40

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	"0x%x%s"
	.size	.L.str.113, 7

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"D_Reduction *d_reductions_%d_%s[] = {"
	.size	.L.str.114, 38

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"&d_reduction_%d_%s%s"
	.size	.L.str.115, 21

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"D_RightEpsilonHint d_right_epsilon_hints_%d_%s[] = {"
	.size	.L.str.116, 53

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"{ %d, %d, &d_reduction_%d_%s}%s"
	.size	.L.str.117, 32

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"unsigned short d_gotos_%s[%d] = {\n"
	.size	.L.str.118, 35

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"unsigned short d_gotos_%s[1] = {0};\n"
	.size	.L.str.119, 37

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"D_ErrorRecoveryHint d_error_recovery_hints_%d_%s[] = {%s"
	.size	.L.str.120, 57

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"{ %d, %d, \"%s\"}%s"
	.size	.L.str.121, 18

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	"\nD_State d_states_%s[] = "
	.size	.L.str.122, 26

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	"{ "
	.size	.L.str.123, 3

	.type	.L.str.124,@object              # @.str.124
.L.str.124:
	.asciz	"d_goto_valid_%d_%s, "
	.size	.L.str.124, 21

	.type	.L.str.125,@object              # @.str.125
.L.str.125:
	.asciz	"{ %d, d_reductions_%d_%s}, "
	.size	.L.str.125, 28

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	"{ 0, NULL}, "
	.size	.L.str.126, 13

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"{ %d, d_right_epsilon_hints_%d_%s}, "
	.size	.L.str.127, 37

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"{ %d, d_error_recovery_hints_%d_%s}, "
	.size	.L.str.128, 38

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	"d_shifts_%d_%s, "
	.size	.L.str.129, 17

	.type	.L.str.130,@object              # @.str.130
.L.str.130:
	.asciz	"D_SHIFTS_CODE, "
	.size	.L.str.130, 16

	.type	.L.str.131,@object              # @.str.131
.L.str.131:
	.asciz	"d_scan_code_%d_%s, "
	.size	.L.str.131, 20

	.type	.L.str.132,@object              # @.str.132
.L.str.132:
	.asciz	"(void*)d_scanner_%d_%s, "
	.size	.L.str.132, 25

	.type	.L.str.133,@object              # @.str.133
.L.str.133:
	.asciz	"sizeof(%s), "
	.size	.L.str.133, 13

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"1, "
	.size	.L.str.134, 4

	.type	.L.str.135,@object              # @.str.135
.L.str.135:
	.asciz	"0, "
	.size	.L.str.135, 4

	.type	scan_kind_strings,@object       # @scan_kind_strings
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
scan_kind_strings:
	.dword	.L.str.142
	.dword	.L.str.143
	.dword	.L.str.144
	.dword	0
	.size	scan_kind_strings, 32

	.type	.L.str.136,@object              # @.str.136
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.136:
	.asciz	"(void*)d_transition_%d_%s, "
	.size	.L.str.136, 28

	.type	.L.str.137,@object              # @.str.137
.L.str.137:
	.asciz	"d_accepts_diff_%d_%s, "
	.size	.L.str.137, 23

	.type	.L.str.138,@object              # @.str.138
.L.str.138:
	.asciz	"(D_Shift***)NULL, "
	.size	.L.str.138, 19

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	"-1"
	.size	.L.str.139, 3

	.type	.L.str.140,@object              # @.str.140
.L.str.140:
	.asciz	"}%s\n"
	.size	.L.str.140, 5

	.type	.L.str.141,@object              # @.str.141
.L.str.141:
	.asciz	"{{0, {0, NULL}, 0, NULL}};\n\n"
	.size	.L.str.141, 29

	.type	.L.str.142,@object              # @.str.142
.L.str.142:
	.asciz	"D_SCAN_ALL"
	.size	.L.str.142, 11

	.type	.L.str.143,@object              # @.str.143
.L.str.143:
	.asciz	"D_SCAN_LONGEST"
	.size	.L.str.143, 15

	.type	.L.str.144,@object              # @.str.144
.L.str.144:
	.asciz	"D_SCAN_MIXED"
	.size	.L.str.144, 13

	.type	.L.str.145,@object              # @.str.145
.L.str.145:
	.asciz	"D_Symbol d_symbols_%s[] = {\n"
	.size	.L.str.145, 29

	.type	.L.str.146,@object              # @.str.146
.L.str.146:
	.asciz	"{%s, \"%s\", %d},\n"
	.size	.L.str.146, 17

	.type	d_internal,@object              # @d_internal
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
d_internal:
	.dword	.L.str.147
	.dword	.L.str.148
	.size	d_internal, 16

	.type	d_symbol,@object                # @d_symbol
	.p2align	3, 0x0
d_symbol:
	.dword	.L.str.149
	.dword	.L.str.150
	.dword	.L.str.151
	.dword	.L.str.152
	.size	d_symbol, 32

	.type	.L.str.147,@object              # @.str.147
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.147:
	.asciz	"D_SYMBOL_NTERM"
	.size	.L.str.147, 15

	.type	.L.str.148,@object              # @.str.148
.L.str.148:
	.asciz	"D_SYMBOL_INTERNAL"
	.size	.L.str.148, 18

	.type	.L.str.149,@object              # @.str.149
.L.str.149:
	.asciz	"D_SYMBOL_STRING"
	.size	.L.str.149, 16

	.type	.L.str.150,@object              # @.str.150
.L.str.150:
	.asciz	"D_SYMBOL_REGEX"
	.size	.L.str.150, 15

	.type	.L.str.151,@object              # @.str.151
.L.str.151:
	.asciz	"D_SYMBOL_CODE"
	.size	.L.str.151, 14

	.type	.L.str.152,@object              # @.str.152
.L.str.152:
	.asciz	"D_SYMBOL_TOKEN"
	.size	.L.str.152, 15

	.type	.L.str.153,@object              # @.str.153
.L.str.153:
	.asciz	"D_Pass d_passes_%s[] = {\n"
	.size	.L.str.153, 26

	.type	.L.str.154,@object              # @.str.154
.L.str.154:
	.asciz	"{\"%s\", %d, 0x%X, %d}%s\n"
	.size	.L.str.154, 24

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym scanner_block_hash_fn
	.addrsig_sym scanner_block_cmp_fn
	.addrsig_sym trans_scanner_block_hash_fn
	.addrsig_sym trans_scanner_block_cmp_fn
	.addrsig_sym shift_hash_fn
	.addrsig_sym shift_cmp_fn
	.addrsig_sym er_hint_hash_fn
	.addrsig_sym er_hint_cmp_fn
	.addrsig_sym scanner_block_fns
	.addrsig_sym trans_scanner_block_fns
	.addrsig_sym shift_fns
	.addrsig_sym er_hint_hash_fns
