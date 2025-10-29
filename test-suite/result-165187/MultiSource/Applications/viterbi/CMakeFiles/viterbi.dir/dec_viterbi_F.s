	.file	"dec_viterbi_F.c"
	.text
	.globl	dec_viterbi_F                   # -- Begin function dec_viterbi_F
	.p2align	5
	.type	dec_viterbi_F,@function
dec_viterbi_F:                          # @dec_viterbi_F
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
	lu12i.w	$a6, 8
	ori	$a6, $a6, 2176
	sub.d	$sp, $sp, $a6
	move	$s1, $a2
	ld.d	$a2, $a2, 0
	move	$fp, $a5
	move	$s3, $a4
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	beqz	$a2, .LBB0_2
# %bb.1:
	ld.d	$a0, $s1, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $s1, 0
.LBB0_2:
	beqz	$fp, .LBB0_4
# %bb.3:                                # %.thread
	st.d	$fp, $s1, 0
	b	.LBB0_5
.LBB0_4:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	ld.d	$fp, $a0, 0
	st.d	$fp, $s1, 0
	beqz	$fp, .LBB0_37
.LBB0_5:
	ori	$a0, $zero, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$s0, $zero
.LBB0_6:                                # %bitvector_init.exit
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $s2, 0
	st.d	$fp, $s1, 8
	slli.d	$s7, $a0, 3
	move	$a0, $s7
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	move	$a0, $s7
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 8
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	move	$a0, $s4
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 4
	ori	$a2, $a0, 1920
	ori	$a0, $a0, 2200
	add.d	$a0, $sp, $a0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB0_8
# %bb.7:
	move	$s4, $zero
	b	.LBB0_36
.LBB0_8:                                # %.lr.ph225
	move	$s5, $zero
	move	$s2, $zero
	move	$s4, $zero
	addi.d	$a0, $s3, 24
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $s3, 48
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s3, 31
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $s3, 176
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s8, $s3, 8
	ori	$s6, $zero, 1
	st.d	$s1, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                # %._crit_edge221
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $s2, 40
	addi.d	$s4, $s4, 1
	ld.d	$a1, $s1, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	xor	$a0, $a2, $a0
	sltui	$a0, $a0, 1
	masknez	$s2, $a2, $a0
	bgeu	$s5, $a1, .LBB0_35
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_18 Depth 2
                                        #     Child Loop BB0_22 Depth 2
                                        #     Child Loop BB0_28 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_34 Depth 2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$fp, $a0, 3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ldx.bu	$a0, $a0, $s2
	bne	$a0, $s6, .LBB0_15
# %bb.11:                               # %.preheader193
                                        #   in Loop: Header=BB0_10 Depth=1
	beqz	$s8, .LBB0_14
# %bb.12:                               # %.lr.ph
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	slli.d	$a1, $s5, 3
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	move	$a5, $s8
	.p2align	4, , 16
.LBB0_13:                               #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a6, $a2, 0
	sub.d	$a7, $s6, $a6
	alsl.d	$a6, $a6, $a0, 4
	ld.d	$a6, $a6, 8
	ext.w.b	$a7, $a7
	alsl.d	$a7, $a7, $a0, 4
	ld.d	$a7, $a7, 8
	fld.d	$fa0, $a3, 0
	fldx.d	$fa1, $a6, $a1
	fld.d	$fa2, $a4, 0
	fldx.d	$fa3, $a7, $a1
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a3, 0
	fadd.d	$fa0, $fa2, $fa3
	fst.d	$fa0, $a4, 0
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, 1
	bnez	$a5, .LBB0_13
.LBB0_14:                               # %._crit_edge
                                        #   in Loop: Header=BB0_10 Depth=1
	addi.d	$s5, $s5, 1
.LBB0_15:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ldx.bu	$a0, $a0, $s2
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	bne	$a0, $s6, .LBB0_20
# %bb.16:                               # %.preheader192
                                        #   in Loop: Header=BB0_10 Depth=1
	beqz	$s8, .LBB0_19
# %bb.17:                               # %.lr.ph198
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	move	$a4, $s8
	.p2align	4, , 16
.LBB0_18:                               #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a5, $a1, 0
	sub.d	$a6, $s6, $a5
	fld.d	$fa0, $a2, 0
	alsl.d	$a5, $a5, $a0, 4
	ld.d	$a5, $a5, 8
	ext.w.b	$a6, $a6
	alsl.d	$a6, $a6, $a0, 4
	ld.d	$a6, $a6, 8
	slli.d	$a7, $s5, 3
	fldx.d	$fa1, $a5, $a7
	fld.d	$fa2, $a3, 0
	fldx.d	$fa3, $a6, $a7
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a2, 0
	fadd.d	$fa0, $fa2, $fa3
	fst.d	$fa0, $a3, 0
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 1
	bnez	$a4, .LBB0_18
.LBB0_19:                               # %._crit_edge199
                                        #   in Loop: Header=BB0_10 Depth=1
	addi.d	$s5, $s5, 1
.LBB0_20:                               #   in Loop: Header=BB0_10 Depth=1
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	srli.d	$a0, $s8, 1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ori	$a0, $zero, 2
	st.d	$s8, $sp, 96                    # 8-byte Folded Spill
	bltu	$s8, $a0, .LBB0_23
# %bb.21:                               # %.lr.ph212.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	slli.d	$a0, $s0, 7
	alsl.d	$s5, $s0, $a0, 4
	slli.d	$s6, $s0, 3
	addi.d	$s4, $sp, 152
	lu12i.w	$a0, 4
	ori	$a0, $a0, 2200
	add.d	$s1, $sp, $a0
	ld.d	$s8, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_22:                               # %.lr.ph212
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $s4, $s5
	vld	$vr0, $s7, 0
	addi.d	$fp, $a0, 1
	addi.d	$s3, $s1, 143
	addi.d	$a0, $s4, 1
	vreplvei.d	$vr1, $vr0, 0
	vreplvei.d	$vr0, $vr0, 1
	fcmp.cult.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa1, $fa0, $fcc0
	movcf2gr	$a2, $fcc0
	masknez	$a1, $s1, $a2
	maskeqz	$a3, $s3, $a2
	or	$a1, $a3, $a1
	fst.d	$fa0, $s2, 0
	st.b	$a2, $s4, 0
	ori	$a2, $zero, 143
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	vld	$vr0, $s8, 0
	vreplvei.d	$vr1, $vr0, 0
	vreplvei.d	$vr0, $vr0, 1
	fcmp.cult.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa1, $fa0, $fcc0
	movcf2gr	$a0, $fcc0
	masknez	$a1, $s1, $a0
	maskeqz	$a2, $s3, $a0
	or	$a1, $a2, $a1
	fstx.d	$fa0, $s2, $s6
	stx.b	$a0, $s4, $s5
	ori	$a2, $zero, 143
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 8
	addi.d	$s4, $s4, 144
	addi.d	$s1, $s1, 286
	addi.d	$s0, $s0, -1
	addi.d	$s7, $s7, 16
	addi.d	$s8, $s8, 16
	bnez	$s0, .LBB0_22
.LBB0_23:                               # %.preheader191
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a7, $sp, 96                    # 8-byte Folded Reload
	beqz	$a7, .LBB0_26
# %bb.24:                               # %.preheader191
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ori	$s6, $zero, 1
	bne	$a7, $s6, .LBB0_27
# %bb.25:                               #   in Loop: Header=BB0_10 Depth=1
	move	$a0, $zero
	move	$a1, $zero
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_26:                               #   in Loop: Header=BB0_10 Depth=1
	move	$a1, $a7
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ori	$s6, $zero, 1
	b	.LBB0_32
	.p2align	4, , 16
.LBB0_27:                               # %vector.ph
                                        #   in Loop: Header=BB0_10 Depth=1
	move	$a0, $a7
	bstrins.d	$a0, $zero, 0, 0
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $a0
	addi.d	$a4, $sp, 439
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_28:                               # %vector.body
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a5, $a4, -144
	ld.bu	$a6, $a4, 0
	sltui	$a5, $a5, 1
	sltui	$a6, $a6, 1
	add.d	$a1, $a1, $a5
	add.d	$a2, $a2, $a6
	addi.d	$a3, $a3, -2
	addi.d	$a4, $a4, 288
	bnez	$a3, .LBB0_28
# %bb.29:                               # %middle.block
                                        #   in Loop: Header=BB0_10 Depth=1
	add.d	$a1, $a2, $a1
	beq	$a7, $a0, .LBB0_32
.LBB0_30:                               # %.lr.ph216.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	sub.d	$a2, $a7, $a0
	slli.d	$a3, $a0, 7
	alsl.d	$a0, $a0, $a3, 4
	addi.d	$a3, $sp, 295
	add.d	$a0, $a3, $a0
	.p2align	4, , 16
.LBB0_31:                               # %.lr.ph216
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a3, $a0, 0
	sltui	$a3, $a3, 1
	add.d	$a1, $a1, $a3
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 144
	bnez	$a2, .LBB0_31
.LBB0_32:                               # %._crit_edge217
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $s1, 8
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	sltu	$a1, $a1, $a2
	stx.b	$a1, $a0, $s4
	ld.d	$s8, $s2, 8
	beqz	$s8, .LBB0_9
# %bb.33:                               # %.preheader.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	addi.d	$fp, $sp, 152
	lu12i.w	$a0, 4
	ori	$a0, $a0, 2200
	add.d	$s7, $sp, $a0
	move	$s0, $s8
	.p2align	4, , 16
.LBB0_34:                               # %.preheader
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a2, $zero, 143
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 144
	addi.d	$s0, $s0, -1
	addi.d	$s7, $s7, 143
	bnez	$s0, .LBB0_34
	b	.LBB0_9
.LBB0_35:                               # %._crit_edge226.loopexit
	ld.d	$fp, $s1, 8
.LBB0_36:                               # %._crit_edge226
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 8
	st.d	$a0, $s1, 8
	st.d	$s4, $s1, 0
	slli.d	$a2, $a2, 3
	move	$a0, $a1
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 4
	ori	$a0, $a0, 2200
	add.d	$a1, $sp, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	lu12i.w	$a1, 8
	ori	$a1, $a1, 2176
	add.d	$sp, $sp, $a1
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB0_37:
	move	$fp, $zero
	ori	$s0, $zero, 1
	b	.LBB0_6
.Lfunc_end0:
	.size	dec_viterbi_F, .Lfunc_end0-dec_viterbi_F
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
