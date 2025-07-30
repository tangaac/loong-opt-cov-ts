	.file	"lookup.c"
	.text
	.globl	linit                           # -- Begin function linit
	.p2align	5
	.type	linit,@function
linit:                                  # @linit
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
	pcalau12i	$s3, %pc_hi20(inited)
	ld.bu	$a0, $s3, %pc_lo12(inited)
	beqz	$a0, .LBB0_2
# %bb.1:
	move	$fp, $zero
	b	.LBB0_95
.LBB0_2:
	pcalau12i	$a0, %got_pc_hi20(hashname)
	ld.d	$s0, $a0, %got_pc_lo12(hashname)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	addi.w	$fp, $zero, -1
	bge	$fp, $a0, .LBB0_84
# %bb.3:
	move	$s1, $a0
	ori	$a1, $zero, 47
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s2, $a1, $a0
	pcalau12i	$a0, %got_pc_hi20(hashheader)
	ld.d	$s0, $a0, %got_pc_lo12(hashheader)
	ori	$a2, $zero, 3928
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(hashsize)
	ld.d	$s4, $a1, %got_pc_lo12(hashsize)
	bstrpick.d	$a1, $a0, 31, 3
	ori	$a2, $zero, 490
	st.w	$a0, $s4, 0
	bgeu	$a2, $a1, .LBB0_85
# %bb.4:
	ld.hu	$a4, $s0, 0
	lu12i.w	$a0, 9
	ori	$a3, $a0, 1538
	bne	$a4, $a3, .LBB0_87
# %bb.5:
	ori	$a0, $zero, 3924
	ldx.hu	$a4, $s0, $a0
	bne	$a4, $a3, .LBB0_88
# %bb.6:
	ld.hu	$a2, $s0, 2
	ld.hu	$a1, $s0, 4
	ld.hu	$a4, $s0, 6
	ori	$a0, $zero, 3
	bne	$a2, $a0, .LBB0_89
# %bb.7:
	ori	$a0, $zero, 100
	bne	$a1, $a0, .LBB0_89
# %bb.8:
	ori	$a0, $zero, 10
	bne	$a4, $a0, .LBB0_89
# %bb.9:
	pcalau12i	$a0, %got_pc_hi20(nodictflag)
	ld.d	$s7, $a0, %got_pc_lo12(nodictflag)
	ld.w	$s6, $s7, 0
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	beqz	$s6, .LBB0_12
# %bb.10:
	ori	$a0, $zero, 1
	st.w	$a0, $s4, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(hashtbl)
	ld.d	$a1, $a1, %got_pc_lo12(hashtbl)
	st.d	$a0, $a1, 0
	beqz	$a0, .LBB0_96
# %bb.11:
	ld.wu	$a1, $s0, 16
	st.d	$zero, $a0, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$s5, $zero
	b	.LBB0_13
.LBB0_12:
	ld.wu	$fp, $s0, 20
	slli.d	$a0, $fp, 4
	alsl.d	$a0, $fp, $a0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(hashtbl)
	ld.d	$a2, $a1, %got_pc_lo12(hashtbl)
	ld.wu	$a1, $s0, 12
	move	$s3, $a0
	st.d	$a0, $a2, 0
	st.w	$fp, $s4, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	sltui	$s5, $s3, 1
.LBB0_13:
	pcalau12i	$a0, %got_pc_hi20(hashstrings)
	ld.d	$s3, $a0, %got_pc_lo12(hashstrings)
	ld.w	$fp, $s0, 24
	pcalau12i	$a0, %got_pc_hi20(numsflags)
	ld.d	$a2, $a0, %got_pc_lo12(numsflags)
	ld.w	$a0, $s0, 28
	pcalau12i	$a1, %got_pc_hi20(numpflags)
	ld.d	$s8, $a1, %got_pc_lo12(numpflags)
	st.d	$s2, $s3, 0
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.w	$fp, $a2, 0
	st.w	$a0, $s8, 0
	add.w	$a0, $a0, $fp
	slli.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(sflaglist)
	ld.d	$a1, $a1, %got_pc_lo12(sflaglist)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $a1, 0
	beqz	$a0, .LBB0_90
# %bb.14:
	beqz	$s2, .LBB0_90
# %bb.15:
	bnez	$s5, .LBB0_90
# %bb.16:
	pcalau12i	$a1, %got_pc_hi20(pflaglist)
	ld.d	$a2, $a1, %got_pc_lo12(pflaglist)
	slli.d	$a1, $fp, 8
	add.d	$a0, $a0, $a1
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	st.d	$a0, $a2, 0
	beqz	$s6, .LBB0_19
# %bb.17:
	ld.wu	$a2, $s0, 16
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 16
	bne	$a0, $a1, .LBB0_83
# %bb.18:
	ld.w	$a1, $s0, 12
	ld.w	$a2, $s0, 20
	sub.d	$a0, $a1, $a0
	slli.d	$a1, $a2, 4
	alsl.d	$a1, $a2, $a1, 3
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	b	.LBB0_21
.LBB0_19:
	ld.wu	$a2, $s0, 12
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 12
	bne	$a0, $a1, .LBB0_83
# %bb.20:
	pcalau12i	$a0, %got_pc_hi20(hashtbl)
	ld.d	$a0, $a0, %got_pc_lo12(hashtbl)
	ld.wu	$a2, $s0, 20
	ld.d	$a1, $a0, 0
	ori	$fp, $zero, 24
	mul.d	$a2, $a2, $fp
	move	$a0, $s1
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 20
	mul.d	$a1, $a1, $fp
	bne	$a0, $a1, .LBB0_83
.LBB0_21:
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $fp, 0
	ld.w	$a2, $s8, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	add.d	$a0, $a2, $a0
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a2, $a0, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.w	$a2, $s8, 0
	add.w	$a1, $a2, $a1
	slli.d	$a1, $a1, 8
	bne	$a0, $a1, .LBB0_83
# %bb.22:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
	bnez	$a0, .LBB0_26
# %bb.23:
	ld.w	$a3, $s4, 0
	ori	$a0, $zero, 1
	blt	$a3, $a0, .LBB0_26
# %bb.24:                               # %.lr.ph.preheader
	pcalau12i	$a1, %got_pc_hi20(hashtbl)
	ld.d	$a1, $a1, %got_pc_lo12(hashtbl)
	ld.d	$a2, $a1, 0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 1
	ori	$a4, $zero, 24
	.p2align	4, , 16
.LBB0_25:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s3, 0
	addi.d	$a7, $a5, 1
	addi.w	$a5, $a5, 0
	add.d	$a5, $a6, $a5
	ld.d	$a6, $a2, -8
	sltui	$a7, $a7, 1
	masknez	$a5, $a5, $a7
	st.d	$a5, $a2, 0
	addi.d	$a5, $a6, 1
	ld.d	$a7, $a1, 0
	sltui	$a5, $a5, 1
	addi.w	$a6, $a6, 0
	mul.d	$a6, $a6, $a4
	add.d	$a6, $a7, $a6
	masknez	$a5, $a6, $a5
	st.d	$a5, $a2, -8
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, 24
	bltu	$a0, $a3, .LBB0_25
.LBB0_26:                               # %.loopexit180
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$s2, $a0, 0
	ld.w	$fp, $s8, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $a0, 0
	add.w	$a1, $fp, $s2
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB0_33
# %bb.27:                               # %.lr.ph184.preheader
	add.d	$a1, $s2, $fp
	addi.d	$a1, $a1, 1
	move	$a2, $s1
	b	.LBB0_29
	.p2align	4, , 16
.LBB0_28:                               #   in Loop: Header=BB0_29 Depth=1
	st.d	$zero, $a2, 8
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, 256
	bgeu	$a0, $a1, .LBB0_33
.LBB0_29:                               # %.lr.ph184
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a3, $a2, 18
	beqz	$a3, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_29 Depth=1
	ld.d	$a3, $s3, 0
	ld.w	$a4, $a2, 0
	add.d	$a3, $a3, $a4
	ld.hu	$a4, $a2, 20
	st.d	$a3, $a2, 0
	bnez	$a4, .LBB0_32
	b	.LBB0_28
	.p2align	4, , 16
.LBB0_31:                               #   in Loop: Header=BB0_29 Depth=1
	move	$a3, $zero
	ld.hu	$a4, $a2, 20
	st.d	$a3, $a2, 0
	beqz	$a4, .LBB0_28
.LBB0_32:                               #   in Loop: Header=BB0_29 Depth=1
	ld.d	$a3, $s3, 0
	ld.w	$a4, $a2, 8
	add.d	$a3, $a3, $a4
	st.d	$a3, $a2, 8
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, 256
	bltu	$a0, $a1, .LBB0_29
.LBB0_33:                               # %.preheader
	blt	$s2, $a0, .LBB0_55
# %bb.34:
	pcalau12i	$a0, %got_pc_hi20(sflagindex)
	ld.d	$s6, $a0, %got_pc_lo12(sflagindex)
	ori	$s4, $zero, 1
	b	.LBB0_38
	.p2align	4, , 16
.LBB0_35:                               # %.thread
                                        #   in Loop: Header=BB0_38 Depth=1
	st.d	$s1, $fp, 0
	ori	$a0, $zero, 1
.LBB0_36:                               # %.sink.split
                                        #   in Loop: Header=BB0_38 Depth=1
	st.w	$a0, $fp, 8
.LBB0_37:                               #   in Loop: Header=BB0_38 Depth=1
	move	$a0, $s2
	addi.w	$s2, $s2, -1
	addi.d	$s1, $s1, 256
	bge	$s4, $a0, .LBB0_54
.LBB0_38:                               # %.lr.ph195
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_42 Depth 2
	ld.h	$a1, $s1, 20
	beqz	$a1, .LBB0_46
# %bb.39:                               #   in Loop: Header=BB0_38 Depth=1
	ld.d	$a0, $s1, 8
	add.d	$a2, $a0, $a1
	ld.bu	$a1, $a2, -1
	alsl.d	$fp, $a1, $s6, 4
	ld.w	$a3, $fp, 8
	ori	$a1, $zero, 1
	bnez	$a3, .LBB0_47
# %bb.40:                               # %.lr.ph188.preheader
                                        #   in Loop: Header=BB0_38 Depth=1
	ld.d	$a3, $fp, 0
	beqz	$a3, .LBB0_52
# %bb.41:                               #   in Loop: Header=BB0_38 Depth=1
	addi.d	$a1, $a2, -1
	.p2align	4, , 16
.LBB0_42:                               # %.lr.ph228
                                        #   Parent Loop BB0_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $a0, .LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_42 Depth=2
	ld.bu	$a4, $a1, -1
	move	$a2, $zero
	addi.d	$a1, $a1, -1
	alsl.d	$fp, $a4, $a3, 4
	ld.w	$a3, $fp, 8
	beqz	$a3, .LBB0_45
	b	.LBB0_53
	.p2align	4, , 16
.LBB0_44:                               #   in Loop: Header=BB0_42 Depth=2
	ori	$a2, $zero, 1
	move	$fp, $a3
	move	$a1, $a0
	ld.w	$a3, $fp, 8
	bnez	$a3, .LBB0_53
.LBB0_45:                               # %.lr.ph188
                                        #   in Loop: Header=BB0_42 Depth=2
	ld.d	$a3, $fp, 0
	bnez	$a3, .LBB0_42
	b	.LBB0_53
	.p2align	4, , 16
.LBB0_46:                               #   in Loop: Header=BB0_38 Depth=1
	move	$a1, $zero
	move	$fp, $s6
.LBB0_47:                               # %.critedge
                                        #   in Loop: Header=BB0_38 Depth=1
	ld.w	$a0, $fp, 8
	beqz	$a0, .LBB0_35
.LBB0_48:                               #   in Loop: Header=BB0_38 Depth=1
	addi.d	$a2, $a0, 1
	slti	$a0, $a0, 3
	xori	$a1, $a1, 1
	or	$a0, $a1, $a0
	st.w	$a2, $fp, 8
	bnez	$a0, .LBB0_37
# %bb.49:                               #   in Loop: Header=BB0_38 Depth=1
	ld.d	$s5, $fp, 0
	ld.d	$a0, $s1, 8
	ld.d	$a1, $s5, 8
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_37
# %bb.50:                               #   in Loop: Header=BB0_38 Depth=1
	move	$s7, $s8
	ld.w	$a0, $s0, 36
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$s2, $a1, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s8, $a1, 0
	addi.d	$a0, $a0, 128
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	beqz	$a0, .LBB0_91
# %bb.51:                               #   in Loop: Header=BB0_38 Depth=1
	move	$a0, $zero
	addi.d	$s1, $s5, -256
	sub.d	$a1, $s1, $s8
	srli.d	$a1, $a1, 8
	sub.w	$s2, $s2, $a1
	move	$s8, $s7
	b	.LBB0_36
.LBB0_52:                               #   in Loop: Header=BB0_38 Depth=1
	move	$a2, $zero
.LBB0_53:                               # %.critedge.loopexit
                                        #   in Loop: Header=BB0_38 Depth=1
	sltui	$a1, $a2, 1
	ld.w	$a0, $fp, 8
	bnez	$a0, .LBB0_48
	b	.LBB0_35
.LBB0_54:                               # %._crit_edge.loopexit
	ld.w	$fp, $s8, 0
.LBB0_55:                               # %._crit_edge
	ori	$s1, $zero, 1
	blt	$fp, $s1, .LBB0_74
# %bb.56:                               # %.lr.ph209.preheader
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(pflagindex)
	ld.d	$s2, $a0, %got_pc_lo12(pflagindex)
	b	.LBB0_60
	.p2align	4, , 16
.LBB0_57:                               # %.thread222
                                        #   in Loop: Header=BB0_60 Depth=1
	st.d	$s4, $s6, 0
	ori	$a0, $zero, 1
.LBB0_58:                               # %.sink.split224
                                        #   in Loop: Header=BB0_60 Depth=1
	st.w	$a0, $s6, 8
.LBB0_59:                               #   in Loop: Header=BB0_60 Depth=1
	move	$a0, $fp
	addi.w	$fp, $fp, -1
	addi.d	$s4, $s4, 256
	bge	$s1, $a0, .LBB0_74
.LBB0_60:                               # %.lr.ph209
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_64 Depth 2
	ld.hu	$a0, $s4, 20
	beqz	$a0, .LBB0_66
# %bb.61:                               #   in Loop: Header=BB0_60 Depth=1
	ld.d	$a1, $s4, 8
	ld.bu	$a0, $a1, 0
	alsl.d	$s6, $a0, $s2, 4
	ld.w	$a2, $s6, 8
	ori	$a0, $zero, 1
	bnez	$a2, .LBB0_67
# %bb.62:                               # %.lr.ph200.preheader
                                        #   in Loop: Header=BB0_60 Depth=1
	ld.d	$a2, $s6, 0
	beqz	$a2, .LBB0_72
# %bb.63:                               # %.lr.ph234
                                        #   in Loop: Header=BB0_60 Depth=1
	addi.d	$a0, $a1, 1
	.p2align	4, , 16
.LBB0_64:                               #   Parent Loop BB0_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a3, $a0, 0
	alsl.d	$s6, $a3, $a2, 4
	ld.w	$a2, $s6, 8
	sltui	$a1, $a3, 1
	bnez	$a2, .LBB0_73
# %bb.65:                               # %.lr.ph200
                                        #   in Loop: Header=BB0_64 Depth=2
	ld.d	$a2, $s6, 0
	sltu	$a3, $zero, $a3
	add.d	$a0, $a0, $a3
	bnez	$a2, .LBB0_64
	b	.LBB0_73
	.p2align	4, , 16
.LBB0_66:                               #   in Loop: Header=BB0_60 Depth=1
	move	$a0, $zero
	move	$s6, $s2
.LBB0_67:                               # %.critedge11
                                        #   in Loop: Header=BB0_60 Depth=1
	ld.w	$a1, $s6, 8
	beqz	$a1, .LBB0_57
.LBB0_68:                               #   in Loop: Header=BB0_60 Depth=1
	addi.d	$a2, $a1, 1
	slti	$a1, $a1, 3
	xori	$a0, $a0, 1
	or	$a0, $a0, $a1
	st.w	$a2, $s6, 8
	bnez	$a0, .LBB0_59
# %bb.69:                               #   in Loop: Header=BB0_60 Depth=1
	ld.d	$s5, $s6, 0
	ld.d	$a0, $s4, 8
	ld.d	$a1, $s5, 8
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_59
# %bb.70:                               #   in Loop: Header=BB0_60 Depth=1
	ld.w	$fp, $s8, 0
	ld.w	$a0, $s0, 36
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s7, $a1, 0
	addi.w	$a0, $a0, 128
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, 0
	beqz	$a0, .LBB0_91
# %bb.71:                               #   in Loop: Header=BB0_60 Depth=1
	move	$a0, $zero
	addi.d	$s4, $s5, -256
	sub.d	$a1, $s4, $s7
	srli.d	$a1, $a1, 8
	sub.w	$fp, $fp, $a1
	b	.LBB0_58
.LBB0_72:                               #   in Loop: Header=BB0_60 Depth=1
	move	$a1, $zero
.LBB0_73:                               # %.critedge11.loopexit
                                        #   in Loop: Header=BB0_60 Depth=1
	xori	$a0, $a1, 1
	ld.w	$a1, $s6, 8
	bnez	$a1, .LBB0_68
	b	.LBB0_57
.LBB0_74:                               # %._crit_edge210
	ld.w	$fp, $s0, 40
	beqz	$fp, .LBB0_81
# %bb.75:
	slli.d	$a0, $fp, 4
	alsl.d	$a0, $fp, $a0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(chartypes)
	ld.d	$a1, $a1, %got_pc_lo12(chartypes)
	st.d	$a0, $a1, 0
	beqz	$a0, .LBB0_91
# %bb.76:
	move	$s1, $a0
	ori	$a0, $zero, 1
	blt	$fp, $a0, .LBB0_82
# %bb.77:                               # %.lr.ph220
	ld.w	$s4, $s0, 44
	ld.d	$s0, $s3, 0
	move	$s2, $zero
	b	.LBB0_79
	.p2align	4, , 16
.LBB0_78:                               # %._crit_edge215
                                        #   in Loop: Header=BB0_79 Depth=1
	addi.d	$s2, $s2, 1
	addi.w	$s4, $s3, 1
	beq	$s2, $fp, .LBB0_82
.LBB0_79:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_80 Depth 2
	add.d	$a0, $s0, $s4
	slli.d	$a1, $s2, 4
	alsl.d	$a1, $s2, $a1, 3
	add.d	$s5, $s1, $a1
	stx.d	$a0, $s1, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s4, $a0
	addi.w	$s3, $a0, 1
	add.d	$a0, $s0, $s3
	st.d	$a0, $s5, 8
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s3, $a0
	addi.w	$s3, $a0, 1
	add.d	$a0, $s0, $s3
	st.d	$a0, $s5, 16
	ldx.bu	$a1, $s0, $s3
	beqz	$a1, .LBB0_78
	.p2align	4, , 16
.LBB0_80:                               # %.lr.ph214
                                        #   Parent Loop BB0_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s3, $a0
	addi.w	$s3, $a0, 1
	ldx.bu	$a1, $s0, $s3
	add.d	$a0, $s0, $s3
	bnez	$a1, .LBB0_80
	b	.LBB0_78
.LBB0_81:
	pcalau12i	$a0, %got_pc_hi20(chartypes)
	ld.d	$a0, $a0, %got_pc_lo12(chartypes)
	st.d	$zero, $a0, 0
.LBB0_82:                               # %.loopexit
	move	$fp, $zero
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.b	$a0, $a1, %pc_lo12(inited)
	b	.LBB0_95
.LBB0_83:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 27
	b	.LBB0_92
.LBB0_84:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(hashname)
	ld.d	$a2, $a1, %got_pc_lo12(hashname)
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_95
.LBB0_85:
	pcalau12i	$a1, %got_pc_hi20(stderr)
	ld.d	$a1, $a1, %got_pc_lo12(stderr)
	move	$a2, $a0
	ld.d	$a0, $a1, 0
	addi.w	$a3, $a2, 0
	bnez	$a3, .LBB0_93
# %bb.86:
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_95
.LBB0_87:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	b	.LBB0_94
.LBB0_88:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	b	.LBB0_94
.LBB0_89:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ext.w.h	$a3, $a1
	ext.w.h	$a4, $a4
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	ori	$a5, $zero, 3
	ori	$a6, $zero, 100
	ori	$a7, $zero, 10
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_95
.LBB0_90:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ori	$a1, $zero, 40
	b	.LBB0_92
.LBB0_91:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 45
.LBB0_92:
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	b	.LBB0_95
.LBB0_93:
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a4, $zero, 3928
.LBB0_94:
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_95:
	move	$a0, $fp
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
.LBB0_96:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ori	$a1, $zero, 40
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB0_95
.Lfunc_end0:
	.size	linit, .Lfunc_end0-linit
                                        # -- End function
	.globl	lookup                          # -- Begin function lookup
	.p2align	5
	.type	lookup,@function
lookup:                                 # @lookup
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(hashtbl)
	ld.d	$a2, $a2, %got_pc_lo12(hashtbl)
	pcalau12i	$a3, %got_pc_hi20(hashsize)
	ld.d	$a3, $a3, %got_pc_lo12(hashsize)
	ld.d	$s2, $a2, 0
	ld.w	$a2, $a3, 0
	move	$s0, $a1
	move	$fp, $a0
	move	$a1, $a2
	pcaddu18i	$ra, %call36(hash)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 120
	ori	$a3, $zero, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ichartostr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_13
# %bb.1:
	beqz	$s2, .LBB1_9
.LBB1_2:                                # %.lr.ph26
	slli.d	$a0, $s1, 4
	ld.bu	$s3, $sp, 8
	alsl.d	$a0, $s1, $a0, 3
	add.d	$s1, $s2, $a0
	addi.d	$s2, $sp, 9
	.p2align	4, , 16
.LBB1_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
	ld.d	$a0, $s1, 8
	beqz	$a0, .LBB1_7
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	ld.bu	$a1, $a0, 0
	bne	$a1, $s3, .LBB1_7
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $a0, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_7
	b	.LBB1_12
	.p2align	4, , 16
.LBB1_6:                                # %.lr.ph
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.d	$s1, $s1, 0
.LBB1_7:                                # %.lr.ph
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s1, 19
	andi	$a0, $a0, 64
	bnez	$a0, .LBB1_6
# %bb.8:                                # %._crit_edge
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB1_3
.LBB1_9:                                # %._crit_edge27
	beqz	$s0, .LBB1_11
# %bb.10:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(treelookup)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	b	.LBB1_12
.LBB1_11:
	move	$s1, $zero
.LBB1_12:                               # %.loopexit
	move	$a0, $s1
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB1_13:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	pcalau12i	$a2, %pc_hi20(.L.str.11)
	addi.d	$a4, $a2, %pc_lo12(.L.str.11)
	addi.d	$a2, $sp, 8
	ori	$a3, $zero, 475
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB1_2
	b	.LBB1_9
.Lfunc_end1:
	.size	lookup, .Lfunc_end1-lookup
                                        # -- End function
	.type	inited,@object                  # @inited
	.local	inited
	.comm	inited,1,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Can't open %s\r\n"
	.size	.L.str, 16

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Null hash table %s\r\n"
	.size	.L.str.2, 21

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Truncated hash table %s:  got %d bytes, expected %d\r\n"
	.size	.L.str.3, 54

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Illegal format hash table %s - expected magic 0x%x, got 0x%x\r\n"
	.size	.L.str.4, 63

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Illegal format hash table %s - expected magic2 0x%x, got 0x%x\r\n"
	.size	.L.str.5, 64

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Hash table options don't agree with buildhash - 0x%x/%d/%d vs. 0x%x/%d/%d\r\n"
	.size	.L.str.6, 76

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Couldn't allocate space for hash table\r\n"
	.size	.L.str.7, 41

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Illegal format hash table\r\n"
	.size	.L.str.8, 28

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Couldn't allocate space for language tables\r\n"
	.size	.L.str.9, 46

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"\r\nWord '%s' too long at line %d of %s, truncated\r\n"
	.size	.L.str.10, 51

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/lookup.c"
	.size	.L.str.11, 128

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym hashname
	.addrsig_sym hashheader
