	.file	"tsp.c"
	.text
	.globl	tsp                             # -- Begin function tsp
	.p2align	5
	.type	tsp,@function
tsp:                                    # @tsp
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a3, $a0, 0
	bge	$a1, $a3, .LBB0_5
# %bb.1:
	ld.d	$a3, $a0, 24
	ld.d	$s0, $a0, 32
	bstrpick.d	$a4, $a2, 31, 31
	add.w	$a2, $a2, $a4
	srai.d	$s1, $a2, 1
	move	$s3, $a0
	move	$a0, $a3
	move	$s2, $a1
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tsp)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tsp)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s3, 8
	fld.d	$fa2, $fp, 8
	move	$a4, $s3
	fld.d	$fa1, $s3, 16
	fld.d	$fa4, $fp, 16
	move	$a1, $a0
	fsub.d	$fa3, $fa0, $fa2
	ld.d	$a2, $fp, 40
	fsub.d	$fa5, $fa1, $fa4
	fmul.d	$fa5, $fa5, $fa5
	fmadd.d	$fa3, $fa3, $fa3, $fa5
	fsqrt.d	$fa3, $fa3
	beq	$a2, $fp, .LBB0_15
# %bb.2:                                # %.lr.ph.i18.preheader
	move	$a3, $fp
	.p2align	4, , 16
.LBB0_3:                                # %.lr.ph.i18
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa2, $a2, 8
	fld.d	$fa4, $a2, 16
	fsub.d	$fa2, $fa2, $fa0
	fsub.d	$fa4, $fa4, $fa1
	fmul.d	$fa4, $fa4, $fa4
	fmadd.d	$fa2, $fa2, $fa2, $fa4
	fsqrt.d	$fa2, $fa2
	fcmp.clt.d	$fcc0, $fa2, $fa3
	movcf2gr	$a0, $fcc0
	maskeqz	$a5, $a2, $a0
	ld.d	$a2, $a2, 40
	fsel	$fa3, $fa3, $fa2, $fcc0
	masknez	$a0, $a3, $a0
	or	$a3, $a5, $a0
	bne	$a2, $fp, .LBB0_3
# %bb.4:                                # %._crit_edge.loopexit.i20
	ld.d	$a2, $a3, 40
	fld.d	$fa2, $a3, 8
	fld.d	$fa4, $a3, 16
	b	.LBB0_16
.LBB0_5:
	pcaddu18i	$ra, %call36(makelist)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 40
	st.d	$a0, $a0, 40
	st.d	$a0, $a0, 48
	beqz	$a1, .LBB0_34
# %bb.6:                                # %.lr.ph98.i
	fld.d	$fa0, $a0, 8
	fld.d	$fa1, $a0, 16
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	st.d	$a1, $a5, 40
	st.d	$a3, $a1, 40
	st.d	$a5, $a1, 48
	st.d	$a1, $a3, 48
	move	$a1, $a4
	beqz	$a4, .LBB0_34
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	fld.d	$fa2, $a1, 8
	ld.d	$a2, $a0, 40
	fld.d	$fa3, $a1, 16
	beq	$a2, $a0, .LBB0_12
# %bb.9:                                # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB0_8 Depth=1
	fsub.d	$fa4, $fa2, $fa0
	fsub.d	$fa5, $fa3, $fa1
	fmul.d	$fa5, $fa5, $fa5
	fmadd.d	$fa4, $fa4, $fa4, $fa5
	fsqrt.d	$fa4, $fa4
	move	$a3, $a0
	.p2align	4, , 16
.LBB0_10:                               # %.lr.ph.i
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa5, $a2, 8
	fld.d	$fa6, $a2, 16
	fsub.d	$fa5, $fa5, $fa2
	fsub.d	$fa6, $fa6, $fa3
	fmul.d	$fa6, $fa6, $fa6
	fmadd.d	$fa5, $fa5, $fa5, $fa6
	fsqrt.d	$fa5, $fa5
	fcmp.clt.d	$fcc0, $fa5, $fa4
	movcf2gr	$a4, $fcc0
	maskeqz	$a5, $a2, $a4
	ld.d	$a2, $a2, 40
	fsel	$fa4, $fa4, $fa5, $fcc0
	masknez	$a3, $a3, $a4
	or	$a3, $a5, $a3
	bne	$a2, $a0, .LBB0_10
# %bb.11:                               # %._crit_edge.loopexit.i
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a2, $a3, 40
	b	.LBB0_13
	.p2align	4, , 16
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	move	$a3, $a0
.LBB0_13:                               # %._crit_edge.i
                                        #   in Loop: Header=BB0_8 Depth=1
	fld.d	$fa4, $a3, 8
	fld.d	$fa5, $a3, 16
	fld.d	$fa6, $a2, 8
	fld.d	$fa7, $a2, 16
	ld.d	$a5, $a3, 48
	fsub.d	$ft0, $fa4, $fa6
	fsub.d	$ft1, $fa5, $fa7
	fmul.d	$ft1, $ft1, $ft1
	fmadd.d	$ft0, $ft0, $ft0, $ft1
	fld.d	$ft1, $a5, 8
	fld.d	$ft2, $a5, 16
	ld.d	$a4, $a1, 40
	fsqrt.d	$ft0, $ft0
	fsub.d	$fa4, $fa4, $ft1
	fsub.d	$fa5, $fa5, $ft2
	fmul.d	$fa5, $fa5, $fa5
	fmadd.d	$fa4, $fa4, $fa4, $fa5
	fsqrt.d	$fa4, $fa4
	fsub.d	$fa5, $fa2, $fa6
	fsub.d	$fa6, $fa3, $fa7
	fmul.d	$fa6, $fa6, $fa6
	fmadd.d	$fa5, $fa5, $fa5, $fa6
	fsqrt.d	$fa5, $fa5
	fsub.d	$fa2, $fa2, $ft1
	fsub.d	$fa3, $fa3, $ft2
	fmul.d	$fa3, $fa3, $fa3
	fmadd.d	$fa2, $fa2, $fa2, $fa3
	fsqrt.d	$fa2, $fa2
	fsub.d	$fa2, $fa2, $fa4
	fsub.d	$fa3, $fa5, $ft0
	fcmp.cule.d	$fcc0, $fa3, $fa2
	bceqz	$fcc0, .LBB0_7
# %bb.14:                               #   in Loop: Header=BB0_8 Depth=1
	st.d	$a1, $a2, 48
	st.d	$a2, $a1, 40
	st.d	$a1, $a3, 40
	st.d	$a3, $a1, 48
	move	$a1, $a4
	bnez	$a4, .LBB0_8
	b	.LBB0_34
.LBB0_15:
	move	$a3, $fp
.LBB0_16:                               # %._crit_edge.i23
	move	$a0, $a4
	fld.d	$fa5, $a2, 8
	fld.d	$fa6, $a2, 16
	ld.d	$a4, $a3, 48
	fsub.d	$fa7, $fa2, $fa5
	fsub.d	$ft0, $fa4, $fa6
	fmul.d	$ft0, $ft0, $ft0
	fld.d	$ft1, $a4, 8
	fld.d	$ft2, $a4, 16
	fmadd.d	$fa7, $fa7, $fa7, $ft0
	fsqrt.d	$fa7, $fa7
	fsub.d	$fa2, $fa2, $ft1
	fsub.d	$fa4, $fa4, $ft2
	fmul.d	$fa4, $fa4, $fa4
	fmadd.d	$fa2, $fa2, $fa2, $fa4
	fsqrt.d	$fa2, $fa2
	fsub.d	$fa4, $fa0, $fa5
	fsub.d	$fa5, $fa1, $fa6
	fmul.d	$fa5, $fa5, $fa5
	fmadd.d	$fa4, $fa4, $fa4, $fa5
	fsqrt.d	$fa4, $fa4
	fsub.d	$fa5, $fa0, $ft1
	fsub.d	$fa6, $fa1, $ft2
	fmul.d	$fa6, $fa6, $fa6
	fmadd.d	$fa5, $fa5, $fa5, $fa6
	fsqrt.d	$fa5, $fa5
	fsub.d	$fa2, $fa5, $fa2
	fsub.d	$fa6, $fa4, $fa7
	fcmp.clt.d	$fcc0, $fa2, $fa6
	fsel	$fa2, $fa4, $fa3, $fcc0
	fsel	$fa3, $fa3, $fa5, $fcc0
	movcf2gr	$a5, $fcc0
	masknez	$a2, $a2, $a5
	maskeqz	$a6, $a3, $a5
	or	$a2, $a6, $a2
	masknez	$a3, $a3, $a5
	fld.d	$fa5, $a1, 8
	maskeqz	$a4, $a4, $a5
	fld.d	$fa6, $a1, 16
	or	$a3, $a4, $a3
	fsub.d	$fa4, $fa0, $fa5
	ld.d	$a4, $a1, 40
	fsub.d	$fa7, $fa1, $fa6
	fmul.d	$fa7, $fa7, $fa7
	fmadd.d	$fa4, $fa4, $fa4, $fa7
	fsqrt.d	$fa4, $fa4
	beq	$a4, $a1, .LBB0_20
# %bb.17:                               # %.lr.ph267.i.preheader
	move	$a5, $a1
	.p2align	4, , 16
.LBB0_18:                               # %.lr.ph267.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa5, $a4, 8
	fld.d	$fa6, $a4, 16
	fsub.d	$fa5, $fa5, $fa0
	fsub.d	$fa6, $fa6, $fa1
	fmul.d	$fa6, $fa6, $fa6
	fmadd.d	$fa5, $fa5, $fa5, $fa6
	fsqrt.d	$fa5, $fa5
	fcmp.clt.d	$fcc0, $fa5, $fa4
	movcf2gr	$a6, $fcc0
	maskeqz	$a7, $a4, $a6
	ld.d	$a4, $a4, 40
	fsel	$fa4, $fa4, $fa5, $fcc0
	masknez	$a5, $a5, $a6
	or	$a5, $a7, $a5
	bne	$a4, $a1, .LBB0_18
# %bb.19:                               # %._crit_edge268.loopexit.i
	ld.d	$a4, $a5, 40
	fld.d	$fa5, $a5, 8
	fld.d	$fa6, $a5, 16
	b	.LBB0_21
.LBB0_20:
	move	$a5, $a1
.LBB0_21:                               # %._crit_edge268.i
	fld.d	$fa7, $a4, 8
	fld.d	$ft0, $a4, 16
	ld.d	$a6, $a5, 48
	fsub.d	$ft1, $fa5, $fa7
	fsub.d	$ft2, $fa6, $ft0
	fmul.d	$ft2, $ft2, $ft2
	fld.d	$ft3, $a6, 8
	fld.d	$ft4, $a6, 16
	fmadd.d	$ft1, $ft1, $ft1, $ft2
	fsqrt.d	$ft1, $ft1
	fsub.d	$fa5, $fa5, $ft3
	fsub.d	$fa6, $fa6, $ft4
	fmul.d	$fa6, $fa6, $fa6
	fmadd.d	$fa5, $fa5, $fa5, $fa6
	fsqrt.d	$fa5, $fa5
	fsub.d	$fa6, $fa0, $fa7
	fsub.d	$fa7, $fa1, $ft0
	fmul.d	$fa7, $fa7, $fa7
	fmadd.d	$fa6, $fa6, $fa6, $fa7
	fsqrt.d	$fa6, $fa6
	fsub.d	$fa0, $fa0, $ft3
	fsub.d	$fa1, $fa1, $ft4
	fmul.d	$fa1, $fa1, $fa1
	fmadd.d	$fa0, $fa0, $fa0, $fa1
	fsqrt.d	$fa0, $fa0
	fsub.d	$fa1, $fa0, $fa5
	fsub.d	$fa5, $fa6, $ft1
	fcmp.clt.d	$fcc0, $fa1, $fa5
	fsel	$fa1, $fa6, $fa4, $fcc0
	fsel	$fa0, $fa4, $fa0, $fcc0
	movcf2gr	$a7, $fcc0
	masknez	$a1, $a4, $a7
	maskeqz	$a4, $a5, $a7
	or	$a1, $a4, $a1
	masknez	$a4, $a5, $a7
	fld.d	$fa4, $a2, 8
	fld.d	$fa5, $a2, 16
	fld.d	$fa6, $a1, 8
	fld.d	$fa7, $a1, 16
	maskeqz	$a5, $a6, $a7
	or	$a4, $a5, $a4
	fsub.d	$ft0, $fa4, $fa6
	fsub.d	$ft1, $fa5, $fa7
	fld.d	$ft2, $a4, 8
	fld.d	$ft3, $a4, 16
	fmul.d	$ft1, $ft1, $ft1
	fmadd.d	$ft0, $ft0, $ft0, $ft1
	fsub.d	$fa4, $fa4, $ft2
	fsub.d	$fa5, $fa5, $ft3
	fmul.d	$fa5, $fa5, $fa5
	fmadd.d	$fa4, $fa4, $fa4, $fa5
	fld.d	$fa5, $a3, 8
	fld.d	$ft1, $a3, 16
	fsqrt.d	$ft0, $ft0
	fsqrt.d	$fa4, $fa4
	fsub.d	$fa6, $fa5, $fa6
	fsub.d	$fa7, $ft1, $fa7
	fmul.d	$fa7, $fa7, $fa7
	fmadd.d	$fa6, $fa6, $fa6, $fa7
	fsqrt.d	$fa6, $fa6
	fsub.d	$fa5, $fa5, $ft2
	fsub.d	$fa7, $ft1, $ft3
	fmul.d	$fa7, $fa7, $fa7
	fmadd.d	$fa5, $fa5, $fa5, $fa7
	fsqrt.d	$fa5, $fa5
	fadd.d	$fa7, $fa3, $fa0
	fadd.d	$fa7, $fa7, $ft0
	fadd.d	$fa3, $fa3, $fa1
	fadd.d	$fa3, $fa3, $fa4
	fcmp.clt.d	$fcc0, $fa3, $fa7
	fsel	$fa3, $fa7, $fa3, $fcc0
	movcf2gr	$a5, $fcc0
	addi.d	$a5, $a5, 1
	fadd.d	$fa0, $fa2, $fa0
	fadd.d	$fa0, $fa0, $fa6
	fcmp.clt.d	$fcc0, $fa0, $fa3
	fsel	$fa0, $fa3, $fa0, $fcc0
	movcf2gr	$a6, $fcc0
	masknez	$a5, $a5, $a6
	ori	$a7, $zero, 3
	maskeqz	$a6, $a7, $a6
	fadd.d	$fa1, $fa2, $fa1
	fadd.d	$fa1, $fa1, $fa5
	fcmp.clt.d	$fcc0, $fa1, $fa0
	or	$a5, $a6, $a5
	movcf2gr	$a6, $fcc0
	masknez	$a5, $a5, $a6
	ori	$a7, $zero, 4
	maskeqz	$a6, $a7, $a6
	or	$a5, $a6, $a5
	addi.d	$a5, $a5, -1
	slli.d	$a5, $a5, 2
	pcalau12i	$a6, %pc_hi20(.LJTI0_0)
	addi.d	$a6, $a6, %pc_lo12(.LJTI0_0)
	ldx.w	$a5, $a6, $a5
	add.d	$a5, $a6, $a5
	jr	$a5
.LBB0_22:
	ld.d	$a5, $a1, 48
	st.d	$zero, $a5, 40
	ld.d	$a6, $a1, 40
	st.d	$zero, $a1, 48
	beqz	$a6, .LBB0_25
# %bb.23:                               # %.lr.ph.i.i.preheader
	move	$a7, $a1
	.p2align	4, , 16
.LBB0_24:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$t0, $a6
	ld.d	$a6, $a6, 40
	st.d	$a7, $t0, 40
	st.d	$t0, $a7, 48
	move	$a7, $t0
	bnez	$a6, .LBB0_24
.LBB0_25:                               # %reverse.exit.i
	st.d	$a1, $a5, 48
	st.d	$a0, $a3, 40
	st.d	$a3, $a0, 48
	st.d	$a4, $a0, 40
	st.d	$a0, $a4, 48
	st.d	$a2, $a1, 40
	b	.LBB0_33
.LBB0_26:
	st.d	$a0, $a4, 40
	st.d	$a4, $a0, 48
	st.d	$a2, $a0, 40
	st.d	$a0, $a2, 48
	st.d	$a1, $a3, 40
	move	$a2, $a1
	move	$a1, $a3
	b	.LBB0_33
.LBB0_27:
	ld.d	$a5, $a2, 48
	st.d	$zero, $a5, 40
	ld.d	$a6, $a2, 40
	st.d	$zero, $a2, 48
	beqz	$a6, .LBB0_30
# %bb.28:                               # %.lr.ph.i247.i.preheader
	move	$a7, $a2
	.p2align	4, , 16
.LBB0_29:                               # %.lr.ph.i247.i
                                        # =>This Inner Loop Header: Depth=1
	move	$t0, $a6
	ld.d	$a6, $a6, 40
	st.d	$a7, $t0, 40
	st.d	$t0, $a7, 48
	move	$a7, $t0
	bnez	$a6, .LBB0_29
.LBB0_30:                               # %reverse.exit252.i
	st.d	$a2, $a5, 48
	st.d	$a0, $a2, 40
	st.d	$a2, $a0, 48
	st.d	$a1, $a0, 40
	st.d	$a0, $a1, 48
	st.d	$a3, $a4, 40
	move	$a2, $a3
	b	.LBB0_32
.LBB0_31:
	st.d	$a0, $a3, 40
	st.d	$a3, $a0, 48
	st.d	$a1, $a0, 40
	st.d	$a0, $a1, 48
	st.d	$a2, $a4, 40
.LBB0_32:                               # %merge.exit
	move	$a1, $a4
.LBB0_33:                               # %merge.exit
	st.d	$a1, $a2, 48
.LBB0_34:                               # %conquer.exit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	tsp, .Lfunc_end0-tsp
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_22-.LJTI0_0
	.word	.LBB0_31-.LJTI0_0
	.word	.LBB0_26-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function makelist
	.type	makelist,@function
makelist:                               # @makelist
# %bb.0:
	beqz	$a0, .LBB1_6
# %bb.1:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(makelist)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 32
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(makelist)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	beqz	$a1, .LBB1_3
# %bb.2:
	ld.d	$a0, $fp, 32
	st.d	$fp, $a0, 40
	move	$a0, $a1
.LBB1_3:
	beqz	$s0, .LBB1_5
# %bb.4:
	sltui	$a0, $a1, 1
	ld.d	$a2, $fp, 24
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $a2, 40
	move	$a0, $s0
.LBB1_5:
	st.d	$zero, $fp, 40
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB1_6:
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	makelist, .Lfunc_end1-makelist
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
