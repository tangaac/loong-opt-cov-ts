	.file	"atop.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function atop
.LCPI0_0:
	.word	10                              # 0xa
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
.LCPI0_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	atop
	.p2align	5
	.type	atop,@function
atop:                                   # @atop
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$zero, $sp, 8
	st.d	$zero, $sp, 0
	beqz	$a0, .LBB0_31
# %bb.1:                                # %.preheader37
	move	$s0, $a0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	addi.d	$s1, $s0, -1
	lu12i.w	$a1, 2
	.p2align	4, , 16
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	ld.b	$a2, $s1, 1
	slli.d	$a3, $a2, 1
	ldx.hu	$a3, $a0, $a3
	and	$a3, $a3, $a1
	addi.d	$s1, $s1, 1
	bnez	$a3, .LBB0_2
# %bb.3:
	andi	$s2, $a2, 255
	addi.d	$a1, $s2, -45
	sltui	$a1, $a1, 1
	addi.d	$a2, $s2, -43
	sltui	$a2, $a2, 1
	or	$s3, $a1, $a2
	ldx.bu	$s0, $s1, $s3
	slli.d	$a1, $s0, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 2048
	beqz	$a0, .LBB0_28
# %bb.4:
	pcalau12i	$a0, %got_pc_hi20(pzero)
	ld.d	$a0, $a0, %got_pc_lo12(pzero)
	ld.d	$a1, $a0, 0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(psetq)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 244140
	ori	$a0, $a0, 2560
	pcaddu18i	$ra, %call36(utop)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(psetq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	add.d	$a1, $s1, $s3
	addi.d	$s3, $a1, 5
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $s3, -4
	slli.d	$a1, $a2, 1
	ldx.hu	$a1, $a0, $a1
	andi	$a1, $a1, 2048
	addi.w	$s0, $s0, -48
	beqz	$a1, .LBB0_14
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	ld.bu	$a1, $s3, -3
	slli.d	$a3, $a1, 1
	ldx.hu	$a3, $a0, $a3
	slli.d	$a4, $s0, 3
	alsl.d	$a4, $s0, $a4, 1
	add.d	$a2, $a4, $a2
	andi	$a3, $a3, 2048
	addi.w	$s0, $a2, -48
	beqz	$a3, .LBB0_15
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	ld.bu	$a2, $s3, -2
	slli.d	$a3, $a2, 1
	ldx.hu	$a3, $a0, $a3
	slli.d	$a4, $s0, 3
	alsl.d	$a4, $s0, $a4, 1
	add.d	$a1, $a4, $a1
	andi	$a3, $a3, 2048
	addi.w	$s0, $a1, -48
	beqz	$a3, .LBB0_16
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=1
	ld.bu	$a1, $s3, -1
	slli.d	$a3, $a1, 1
	ldx.hu	$a3, $a0, $a3
	slli.d	$a4, $s0, 3
	alsl.d	$a4, $s0, $a4, 1
	add.d	$a2, $a4, $a2
	andi	$a3, $a3, 2048
	addi.w	$s0, $a2, -48
	beqz	$a3, .LBB0_17
# %bb.9:                                #   in Loop: Header=BB0_5 Depth=1
	ld.bu	$a2, $s3, 0
	slli.d	$a3, $a2, 1
	ldx.hu	$a3, $a0, $a3
	slli.d	$a4, $s0, 3
	alsl.d	$a4, $s0, $a4, 1
	add.d	$a1, $a4, $a1
	andi	$a3, $a3, 2048
	addi.w	$s0, $a1, -48
	beqz	$a3, .LBB0_18
# %bb.10:                               #   in Loop: Header=BB0_5 Depth=1
	ld.bu	$a1, $s3, 1
	slli.d	$a3, $a1, 1
	ldx.hu	$a3, $a0, $a3
	slli.d	$a4, $s0, 3
	alsl.d	$a4, $s0, $a4, 1
	add.d	$a2, $a4, $a2
	andi	$a3, $a3, 2048
	addi.w	$s0, $a2, -48
	beqz	$a3, .LBB0_19
# %bb.11:                               #   in Loop: Header=BB0_5 Depth=1
	ld.bu	$a2, $s3, 2
	slli.d	$a3, $a2, 1
	ldx.hu	$a3, $a0, $a3
	slli.d	$a4, $s0, 3
	alsl.d	$a4, $s0, $a4, 1
	add.d	$a1, $a4, $a1
	andi	$a3, $a3, 2048
	addi.w	$s0, $a1, -48
	beqz	$a3, .LBB0_20
# %bb.12:                               #   in Loop: Header=BB0_5 Depth=1
	ld.bu	$a3, $s3, 3
	slli.d	$a1, $a3, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a1, $s0, 3
	alsl.d	$a1, $s0, $a1, 1
	add.d	$a1, $a1, $a2
	andi	$a0, $a0, 2048
	addi.w	$s0, $a1, -48
	beqz	$a0, .LBB0_21
# %bb.13:                               #   in Loop: Header=BB0_5 Depth=1
	slli.d	$a2, $s0, 3
	ld.d	$a0, $sp, 8
	ld.d	$a1, $sp, 0
	alsl.d	$a2, $s0, $a2, 1
	add.d	$a2, $a2, $a3
	addi.w	$s0, $a2, -48
	pcaddu18i	$ra, %call36(pmul)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(utop)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(padd)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(psetq)
	jirl	$ra, $ra, 0
	ld.bu	$s0, $s3, 4
	ld.d	$a0, $fp, 0
	slli.d	$a1, $s0, 1
	ldx.hu	$a1, $a0, $a1
	andi	$a1, $a1, 2048
	addi.d	$s3, $s3, 9
	bnez	$a1, .LBB0_5
	b	.LBB0_26
.LBB0_14:
	ori	$a0, $zero, 10
	b	.LBB0_25
.LBB0_15:
	ori	$a0, $zero, 1
	b	.LBB0_22
.LBB0_16:
	ori	$a0, $zero, 2
	b	.LBB0_22
.LBB0_17:
	ori	$a0, $zero, 3
	b	.LBB0_22
.LBB0_18:
	ori	$a0, $zero, 4
	b	.LBB0_22
.LBB0_19:
	ori	$a0, $zero, 5
	b	.LBB0_22
.LBB0_20:
	ori	$a0, $zero, 6
	b	.LBB0_22
.LBB0_21:
	ori	$a0, $zero, 7
.LBB0_22:                               # %vector.ph
	move	$a1, $zero
	addi.d	$a2, $a0, 3
	andi	$a2, $a2, 12
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	vld	$vr1, $a3, %pc_lo12(.LCPI0_0)
	addi.d	$a0, $a0, -1
	vreplgr2vr.w	$vr0, $a0
	vrepli.w	$vr3, 10
	.p2align	4, , 16
.LBB0_23:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vori.b	$vr2, $vr1, 0
	addi.w	$a1, $a1, 4
	vmul.w	$vr1, $vr1, $vr3
	bne	$a2, $a1, .LBB0_23
# %bb.24:                               # %middle.block
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	vld	$vr3, $a0, %pc_lo12(.LCPI0_1)
	addi.d	$a0, $a1, -4
	vreplgr2vr.w	$vr4, $a0
	vor.v	$vr3, $vr4, $vr3
	vslt.wu	$vr0, $vr0, $vr3
	vbitsel.v	$vr0, $vr1, $vr2, $vr0
	vreplvei.d	$vr1, $vr0, 1
	vmul.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmul.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a0, $vr0, 0
.LBB0_25:                               # %._crit_edge
	ld.d	$fp, $sp, 8
	pcaddu18i	$ra, %call36(utop)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pmul)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(utop)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(padd)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(psetq)
	jirl	$ra, $ra, 0
.LBB0_26:                               # %.loopexit
	ori	$a0, $zero, 45
	bne	$s2, $a0, .LBB0_28
# %bb.27:
	ld.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(pneg)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(psetq)
	jirl	$ra, $ra, 0
.LBB0_28:
	ld.d	$a0, $sp, 0
	beqz	$a0, .LBB0_31
# %bb.29:
	ld.h	$a1, $a0, 0
	addi.d	$a1, $a1, -1
	bstrpick.d	$a2, $a1, 15, 0
	st.h	$a1, $a0, 0
	bnez	$a2, .LBB0_31
# %bb.30:
	pcaddu18i	$ra, %call36(pfree)
	jirl	$ra, $ra, 0
.LBB0_31:                               # %.thread
	ld.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(presult)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end0:
	.size	atop, .Lfunc_end0-atop
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
