	.file	"calcMetricsData.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function calcMetricsData
.LCPI0_0:
	.dword	0xc7efffffe091ff3d              # double -3.4028234699999998E+38
	.text
	.globl	calcMetricsData
	.p2align	5
	.type	calcMetricsData,@function
calcMetricsData:                        # @calcMetricsData
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(getTime)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 0
	ld.d	$a1, $fp, 32
	sub.d	$a0, $a0, $a2
	ori	$a2, $zero, 1
	st.d	$a0, $fp, 0
	blt	$a1, $a2, .LBB0_2
# %bb.1:
	fld.d	$fa1, $fp, 40
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	fld.d	$fa2, $fp, 48
	fdiv.d	$fa3, $fa1, $fa0
	fmul.d	$fa1, $fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	fsub.d	$fa1, $fa2, $fa1
	movgr2fr.d	$fa2, $zero
	fcmp.cule.d	$fcc0, $fa2, $fa1
	fst.d	$fa3, $fp, 72
	bcnez	$fcc0, .LBB0_3
.LBB0_2:
	lu12i.w	$a0, -128737
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI0_0)
	ori	$a0, $a0, 3901
	lu52i.d	$a0, $a0, -898
	st.d	$a0, $fp, 72
	ld.d	$a0, $fp, 96
	ori	$a1, $zero, 1
	fst.d	$fa0, $fp, 80
	bge	$a0, $a1, .LBB0_5
	b	.LBB0_6
.LBB0_3:
	fdiv.d	$fa1, $fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_13
# %bb.4:
	ld.d	$a0, $fp, 96
	ori	$a1, $zero, 1
	fst.d	$fa0, $fp, 80
	blt	$a0, $a1, .LBB0_6
.LBB0_5:
	fld.d	$fa1, $fp, 104
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fld.d	$fa2, $fp, 112
	fdiv.d	$fa3, $fa1, $fa0
	fmul.d	$fa1, $fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	fsub.d	$fa1, $fa2, $fa1
	movgr2fr.d	$fa2, $zero
	fcmp.cule.d	$fcc0, $fa2, $fa1
	fst.d	$fa3, $fp, 136
	bcnez	$fcc0, .LBB0_7
.LBB0_6:
	lu12i.w	$a0, -128737
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI0_0)
	ori	$a0, $a0, 3901
	lu52i.d	$a0, $a0, -898
	st.d	$a0, $fp, 136
	ld.d	$a0, $fp, 160
	ori	$a1, $zero, 1
	fst.d	$fa0, $fp, 144
	bge	$a0, $a1, .LBB0_9
	b	.LBB0_10
.LBB0_7:
	fdiv.d	$fa1, $fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_14
# %bb.8:
	ld.d	$a0, $fp, 160
	ori	$a1, $zero, 1
	fst.d	$fa0, $fp, 144
	blt	$a0, $a1, .LBB0_10
.LBB0_9:
	fld.d	$fa1, $fp, 168
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fld.d	$fa2, $fp, 176
	fdiv.d	$fa3, $fa1, $fa0
	fmul.d	$fa1, $fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	fsub.d	$fa1, $fa2, $fa1
	movgr2fr.d	$fa2, $zero
	fcmp.cule.d	$fcc0, $fa2, $fa1
	fst.d	$fa3, $fp, 200
	bcnez	$fcc0, .LBB0_11
.LBB0_10:
	lu12i.w	$a0, -128737
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI0_0)
	ori	$a0, $a0, 3901
	lu52i.d	$a0, $a0, -898
	st.d	$a0, $fp, 200
	b	.LBB0_12
.LBB0_11:
	fdiv.d	$fa1, $fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_15
.LBB0_12:
	fst.d	$fa0, $fp, 208
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB0_13:                               # %call.sqrt
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 96
	ori	$a1, $zero, 1
	fst.d	$fa0, $fp, 80
	bge	$a0, $a1, .LBB0_5
	b	.LBB0_6
.LBB0_14:                               # %call.sqrt61
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 160
	ori	$a1, $zero, 1
	fst.d	$fa0, $fp, 144
	bge	$a0, $a1, .LBB0_9
	b	.LBB0_10
.LBB0_15:                               # %call.sqrt63
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB0_12
.Lfunc_end0:
	.size	calcMetricsData, .Lfunc_end0-calcMetricsData
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
