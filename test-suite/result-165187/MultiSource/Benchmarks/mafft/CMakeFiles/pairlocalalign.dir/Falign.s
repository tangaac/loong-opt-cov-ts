	.file	"Falign.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function Fgetlag
.LCPI0_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	Fgetlag
	.p2align	5
	.type	Fgetlag,@function
Fgetlag:                                # @Fgetlag
# %bb.0:
	addi.d	$sp, $sp, -384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	st.d	$s2, $sp, 344                   # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	st.d	$s4, $sp, 328                   # 8-byte Folded Spill
	st.d	$s5, $sp, 320                   # 8-byte Folded Spill
	st.d	$s6, $sp, 312                   # 8-byte Folded Spill
	st.d	$s7, $sp, 304                   # 8-byte Folded Spill
	st.d	$s8, $sp, 296                   # 8-byte Folded Spill
	move	$s0, $a0
	ld.d	$a0, $a0, 0
	move	$s1, $a6
	st.d	$a5, $sp, 176                   # 8-byte Folded Spill
	move	$s2, $a4
	st.d	$a3, $sp, 280                   # 8-byte Folded Spill
	st.d	$a2, $sp, 272                   # 8-byte Folded Spill
	move	$fp, $a1
	st.w	$zero, $sp, 288
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a1, $fp, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.w	$fp, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	addi.w	$a0, $a0, 0
	slt	$a1, $a0, $fp
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	move	$s6, $a1
	addi.w	$s8, $a1, 0
	slli.d	$a1, $a1, 1
	bge	$a0, $s8, .LBB0_1
# %bb.2:
	pcalau12i	$s4, %pc_hi20(Fgetlag.localalloclen)
	ld.w	$a0, $s4, %pc_lo12(Fgetlag.localalloclen)
	pcalau12i	$a1, %pc_hi20(Fgetlag.kouho)
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Fgetlag.cut1)
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Fgetlag.cut2)
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Fgetlag.tmpptr1)
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Fgetlag.tmpptr2)
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Fgetlag.result1)
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Fgetlag.result2)
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Fgetlag.segment)
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Fgetlag.segment1)
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Fgetlag.segment2)
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Fgetlag.sortedseg1)
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Fgetlag.sortedseg2)
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(n20or4or2)
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	st.d	$s2, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 240                   # 8-byte Folded Spill
	bnez	$a0, .LBB0_10
# %bb.3:
	ori	$a0, $zero, 20
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Fgetlag.kouho)
	lu12i.w	$a0, 24
	ori	$s2, $a0, 1696
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Fgetlag.cut1)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Fgetlag.cut2)
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(Fgetlag.tmpptr1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(Fgetlag.tmpptr2)
	move	$a0, $a1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(Fgetlag.result1)
	move	$a0, $a1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(Fgetlag.result2)
	move	$a0, $a1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	pcalau12i	$a2, %pc_hi20(Fgetlag.tmpres1)
	st.d	$a0, $a2, %pc_lo12(Fgetlag.tmpres1)
	move	$a0, $a1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(Fgetlag.tmpres2)
	st.d	$a0, $a1, %pc_lo12(Fgetlag.tmpres2)
	ori	$a1, $zero, 48
	move	$a0, $s2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.d	$fp, $a0, %pc_lo12(Fgetlag.segment)
	ori	$a1, $zero, 48
	move	$a0, $s2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	move	$s7, $a1
	st.d	$a1, $a0, %pc_lo12(Fgetlag.segment1)
	ori	$a1, $zero, 48
	move	$a0, $s2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	move	$s0, $a1
	st.d	$a1, $a0, %pc_lo12(Fgetlag.segment2)
	ori	$a1, $zero, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$s3, $a0, %pc_lo12(Fgetlag.sortedseg1)
	ori	$a1, $zero, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Fgetlag.sortedseg2)
	beqz	$fp, .LBB0_8
# %bb.4:
	beqz	$s7, .LBB0_8
# %bb.5:
	beqz	$s0, .LBB0_8
# %bb.6:
	beqz	$s3, .LBB0_8
# %bb.7:
	bnez	$a0, .LBB0_9
.LBB0_8:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB0_9:                                # %thread-pre-split
	pcalau12i	$a0, %got_pc_hi20(scoremtx)
	ld.d	$a0, $a0, %got_pc_lo12(scoremtx)
	ld.w	$a0, $a0, 0
	addi.d	$a0, $a0, 1
	sltui	$a1, $a0, 1
	pcalau12i	$a0, %got_pc_hi20(fftscore)
	ld.d	$a0, $a0, %got_pc_lo12(fftscore)
	ld.w	$a0, $a0, 0
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	ori	$a2, $zero, 20
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 2
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	masknez	$a2, $a0, $a1
	ori	$a3, $zero, 4
	ld.w	$a0, $s4, %pc_lo12(Fgetlag.localalloclen)
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.w	$a1, $a2, %pc_lo12(n20or4or2)
	ld.d	$s2, $sp, 256                   # 8-byte Folded Reload
.LBB0_10:
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Fgetlag.naisekiNoWa)
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Fgetlag.soukan)
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(Fgetlag.naiseki)
	bge	$a0, $s8, .LBB0_14
# %bb.11:
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_13
# %bb.12:
	pcalau12i	$a0, %pc_hi20(Fgetlag.seqVector1)
	ld.d	$a0, $a0, %pc_lo12(Fgetlag.seqVector1)
	pcaddu18i	$ra, %call36(FreeFukusosuuMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(Fgetlag.seqVector2)
	ld.d	$a0, $a0, %pc_lo12(Fgetlag.seqVector2)
	pcaddu18i	$ra, %call36(FreeFukusosuuMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(Fgetlag.naisekiNoWa)
	pcaddu18i	$ra, %call36(FreeFukusosuuVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(Fgetlag.naiseki)
	pcaddu18i	$ra, %call36(FreeFukusosuuMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Fgetlag.soukan)
	pcaddu18i	$ra, %call36(FreeDoubleVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(Fgetlag.tmpseq1)
	ld.d	$a0, $a0, %pc_lo12(Fgetlag.tmpseq1)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(Fgetlag.tmpseq2)
	ld.d	$a0, $a0, %pc_lo12(Fgetlag.tmpseq2)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
.LBB0_13:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	move	$a1, $s8
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	pcalau12i	$a2, %pc_hi20(Fgetlag.tmpseq1)
	st.d	$a0, $a2, %pc_lo12(Fgetlag.tmpseq1)
	move	$a0, $a1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(Fgetlag.tmpseq2)
	st.d	$a0, $a1, %pc_lo12(Fgetlag.tmpseq2)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateFukusosuuVec)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a1, $fp, %pc_lo12(n20or4or2)
	st.d	$a0, $s2, %pc_lo12(Fgetlag.naisekiNoWa)
	move	$a0, $a1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(AllocateFukusosuuMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(n20or4or2)
	st.d	$a0, $s5, %pc_lo12(Fgetlag.naiseki)
	addi.w	$a0, $a1, 1
	addi.w	$s3, $s6, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateFukusosuuMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(n20or4or2)
	pcalau12i	$a2, %pc_hi20(Fgetlag.seqVector1)
	st.d	$a0, $a2, %pc_lo12(Fgetlag.seqVector1)
	addi.w	$a0, $a1, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateFukusosuuMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(Fgetlag.seqVector2)
	st.d	$a0, $a1, %pc_lo12(Fgetlag.seqVector2)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateDoubleVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Fgetlag.soukan)
	st.w	$s6, $s4, %pc_lo12(Fgetlag.localalloclen)
	ld.d	$s2, $sp, 256                   # 8-byte Folded Reload
.LBB0_14:
	st.d	$s1, $sp, 168                   # 8-byte Folded Spill
	blez	$s2, .LBB0_17
# %bb.15:                               # %.lr.ph
	pcalau12i	$a0, %pc_hi20(Fgetlag.tmpseq1)
	ld.d	$fp, $a0, %pc_lo12(Fgetlag.tmpseq1)
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s1, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 8
	addi.d	$s2, $s2, -1
	addi.d	$fp, $fp, 8
	bnez	$s2, .LBB0_16
.LBB0_17:                               # %.preheader389
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	blez	$a0, .LBB0_20
# %bb.18:                               # %.lr.ph395
	pcalau12i	$a0, %pc_hi20(Fgetlag.tmpseq2)
	ld.d	$fp, $a0, %pc_lo12(Fgetlag.tmpseq2)
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 248                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s1, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 8
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	bnez	$s0, .LBB0_19
.LBB0_20:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(fftkeika)
	ld.d	$a0, $a0, %got_pc_lo12(fftkeika)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_22
# %bb.21:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 9
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB0_22:
	ld.w	$s4, $s2, %pc_lo12(n20or4or2)
	blez	$s4, .LBB0_26
# %bb.23:                               # %.lr.ph398
	beqz	$s8, .LBB0_26
# %bb.24:                               # %.lr.ph.preheader.i.preheader
	pcalau12i	$a0, %pc_hi20(Fgetlag.seqVector1)
	ld.d	$fp, $a0, %pc_lo12(Fgetlag.seqVector1)
	bstrpick.d	$a0, $s6, 31, 0
	slli.d	$s3, $a0, 4
	move	$s0, $s4
	.p2align	4, , 16
.LBB0_25:                               # %.lr.ph.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	bnez	$s0, .LBB0_25
.LBB0_26:                               # %._crit_edge399
	pcalau12i	$a0, %got_pc_hi20(fftscore)
	ld.d	$a0, $a0, %got_pc_lo12(fftscore)
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(scoremtx)
	ld.d	$s7, $a0, %got_pc_lo12(scoremtx)
	addi.w	$t6, $zero, -1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	beqz	$a1, .LBB0_41
# %bb.27:                               # %._crit_edge399
	ld.w	$a0, $s7, 0
	beq	$a0, $t6, .LBB0_41
# %bb.28:                               # %.preheader385
	ld.d	$t5, $sp, 256                   # 8-byte Folded Reload
	blez	$t5, .LBB0_50
# %bb.29:                               # %.lr.ph403
	pcalau12i	$a0, %pc_hi20(Fgetlag.seqVector1)
	ld.d	$a0, $a0, %pc_lo12(Fgetlag.seqVector1)
	ld.d	$a1, $a0, 0
	pcalau12i	$a2, %pc_hi20(Fgetlag.tmpseq1)
	ld.d	$a2, $a2, %pc_lo12(Fgetlag.tmpseq1)
	pcalau12i	$a3, %got_pc_hi20(amino_n)
	ld.d	$a3, $a3, %got_pc_lo12(amino_n)
	ori	$a4, $zero, 19
	pcalau12i	$a5, %got_pc_hi20(polarity)
	ld.d	$a5, $a5, %got_pc_lo12(polarity)
	pcalau12i	$a6, %got_pc_hi20(volume)
	ld.d	$a6, $a6, %got_pc_lo12(volume)
	move	$a7, $zero
	b	.LBB0_31
	.p2align	4, , 16
.LBB0_30:                               # %seq_vec_2.exit335
                                        #   in Loop: Header=BB0_31 Depth=1
	addi.d	$a7, $a7, 1
	beq	$a7, $t5, .LBB0_50
.LBB0_31:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_34 Depth 2
                                        #     Child Loop BB0_39 Depth 2
	slli.d	$t1, $a7, 3
	ldx.d	$t0, $a2, $t1
	ld.bu	$t4, $t0, 0
	beqz	$t4, .LBB0_30
# %bb.32:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB0_31 Depth=1
	ld.d	$t2, $sp, 272                   # 8-byte Folded Reload
	fldx.d	$fa0, $t2, $t1
	alsl.d	$t1, $a7, $t2, 3
	ori	$t2, $zero, 1
	move	$t3, $a1
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_33:                               #   in Loop: Header=BB0_34 Depth=2
	ldx.bu	$t4, $t0, $t2
	addi.d	$t3, $t3, 16
	addi.d	$t2, $t2, 1
	beqz	$t4, .LBB0_36
.LBB0_34:                               # %.lr.ph.i
                                        #   Parent Loop BB0_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$t4, $t4
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $a3, $t4
	bltu	$a4, $t4, .LBB0_33
# %bb.35:                               #   in Loop: Header=BB0_34 Depth=2
	slli.d	$t4, $t4, 3
	fldx.d	$fa1, $a5, $t4
	fld.d	$fa2, $t3, 0
	fmadd.d	$fa1, $fa0, $fa1, $fa2
	fst.d	$fa1, $t3, 0
	b	.LBB0_33
	.p2align	4, , 16
.LBB0_36:                               # %seq_vec_2.exit
                                        #   in Loop: Header=BB0_31 Depth=1
	ld.bu	$t2, $t0, 0
	beqz	$t2, .LBB0_30
# %bb.37:                               # %.lr.ph.i330.preheader
                                        #   in Loop: Header=BB0_31 Depth=1
	fld.d	$fa0, $t1, 0
	ld.d	$t1, $a0, 8
	addi.d	$t0, $t0, 1
	b	.LBB0_39
	.p2align	4, , 16
.LBB0_38:                               #   in Loop: Header=BB0_39 Depth=2
	ld.bu	$t2, $t0, 0
	addi.d	$t1, $t1, 16
	addi.d	$t0, $t0, 1
	beqz	$t2, .LBB0_30
.LBB0_39:                               # %.lr.ph.i330
                                        #   Parent Loop BB0_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$t2, $t2
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a3, $t2
	bltu	$a4, $t2, .LBB0_38
# %bb.40:                               #   in Loop: Header=BB0_39 Depth=2
	slli.d	$t2, $t2, 3
	fldx.d	$fa1, $a6, $t2
	fld.d	$fa2, $t1, 0
	fmadd.d	$fa1, $fa0, $fa1, $fa2
	fst.d	$fa1, $t1, 0
	b	.LBB0_38
.LBB0_41:                               # %.preheader387
	ld.d	$t0, $sp, 256                   # 8-byte Folded Reload
	blez	$t0, .LBB0_50
# %bb.42:                               # %.lr.ph401
	pcalau12i	$a0, %pc_hi20(Fgetlag.seqVector1)
	ld.d	$a0, $a0, %pc_lo12(Fgetlag.seqVector1)
	pcalau12i	$a1, %pc_hi20(Fgetlag.tmpseq1)
	ld.d	$a1, $a1, %pc_lo12(Fgetlag.tmpseq1)
	pcalau12i	$a2, %got_pc_hi20(amino_n)
	ld.d	$a2, $a2, %got_pc_lo12(amino_n)
	move	$a3, $zero
	b	.LBB0_44
	.p2align	4, , 16
.LBB0_43:                               # %seq_vec_3.exit
                                        #   in Loop: Header=BB0_44 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $t0, .LBB0_50
.LBB0_44:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_47 Depth 2
	slli.d	$a4, $a3, 3
	ldx.d	$a5, $a1, $a4
	ld.bu	$a6, $a5, 0
	beqz	$a6, .LBB0_43
# %bb.45:                               # %.lr.ph.i336.preheader
                                        #   in Loop: Header=BB0_44 Depth=1
	ld.d	$a7, $sp, 272                   # 8-byte Folded Reload
	fldx.d	$fa0, $a7, $a4
	move	$a4, $zero
	addi.d	$a5, $a5, 1
	b	.LBB0_47
	.p2align	4, , 16
.LBB0_46:                               #   in Loop: Header=BB0_47 Depth=2
	ld.bu	$a6, $a5, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 1
	beqz	$a6, .LBB0_43
.LBB0_47:                               # %.lr.ph.i336
                                        #   Parent Loop BB0_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$a6, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a2, $a6
	bltz	$a6, .LBB0_46
# %bb.48:                               # %.lr.ph.i336
                                        #   in Loop: Header=BB0_47 Depth=2
	bge	$a6, $s4, .LBB0_46
# %bb.49:                               #   in Loop: Header=BB0_47 Depth=2
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a0, $a6
	fldx.d	$fa1, $a6, $a4
	fadd.d	$fa1, $fa0, $fa1
	fstx.d	$fa1, $a6, $a4
	b	.LBB0_46
.LBB0_50:                               # %.loopexit386
	st.d	$t6, $sp, 112                   # 8-byte Folded Spill
	bstrpick.d	$s0, $s6, 31, 31
	blez	$s4, .LBB0_55
# %bb.51:                               # %.lr.ph406
	pcalau12i	$a0, %pc_hi20(Fgetlag.seqVector2)
	ld.d	$fp, $a0, %pc_lo12(Fgetlag.seqVector2)
	bstrpick.d	$a0, $s6, 31, 0
	slli.d	$s3, $a0, 4
	move	$s1, $s4
	b	.LBB0_53
	.p2align	4, , 16
.LBB0_52:                               # %vec_init.exit341
                                        #   in Loop: Header=BB0_53 Depth=1
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 8
	beqz	$s1, .LBB0_55
.LBB0_53:                               # =>This Inner Loop Header: Depth=1
	beqz	$s8, .LBB0_52
# %bb.54:                               # %.lr.ph.preheader.i340
                                        #   in Loop: Header=BB0_53 Depth=1
	ld.d	$a0, $fp, 0
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB0_52
.LBB0_55:                               # %._crit_edge407
	add.w	$a2, $s6, $s0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	beqz	$a0, .LBB0_70
# %bb.56:                               # %._crit_edge407
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_70
# %bb.57:                               # %.preheader382
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	blez	$fp, .LBB0_79
# %bb.58:                               # %.lr.ph411
	pcalau12i	$a0, %pc_hi20(Fgetlag.seqVector2)
	ld.d	$a0, $a0, %pc_lo12(Fgetlag.seqVector2)
	ld.d	$a1, $a0, 0
	pcalau12i	$a2, %pc_hi20(Fgetlag.tmpseq2)
	ld.d	$a2, $a2, %pc_lo12(Fgetlag.tmpseq2)
	pcalau12i	$a3, %got_pc_hi20(amino_n)
	ld.d	$a3, $a3, %got_pc_lo12(amino_n)
	ori	$a4, $zero, 19
	pcalau12i	$a5, %got_pc_hi20(polarity)
	ld.d	$a5, $a5, %got_pc_lo12(polarity)
	pcalau12i	$a6, %got_pc_hi20(volume)
	ld.d	$a6, $a6, %got_pc_lo12(volume)
	move	$a7, $zero
	b	.LBB0_60
	.p2align	4, , 16
.LBB0_59:                               # %seq_vec_2.exit355
                                        #   in Loop: Header=BB0_60 Depth=1
	addi.d	$a7, $a7, 1
	beq	$a7, $fp, .LBB0_79
.LBB0_60:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_63 Depth 2
                                        #     Child Loop BB0_68 Depth 2
	slli.d	$t1, $a7, 3
	ldx.d	$t0, $a2, $t1
	ld.bu	$t4, $t0, 0
	beqz	$t4, .LBB0_59
# %bb.61:                               # %.lr.ph.i343.preheader
                                        #   in Loop: Header=BB0_60 Depth=1
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	fldx.d	$fa0, $t2, $t1
	alsl.d	$t1, $a7, $t2, 3
	ori	$t2, $zero, 1
	move	$t3, $a1
	b	.LBB0_63
	.p2align	4, , 16
.LBB0_62:                               #   in Loop: Header=BB0_63 Depth=2
	ldx.bu	$t4, $t0, $t2
	addi.d	$t3, $t3, 16
	addi.d	$t2, $t2, 1
	beqz	$t4, .LBB0_65
.LBB0_63:                               # %.lr.ph.i343
                                        #   Parent Loop BB0_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$t4, $t4
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $a3, $t4
	bltu	$a4, $t4, .LBB0_62
# %bb.64:                               #   in Loop: Header=BB0_63 Depth=2
	slli.d	$t4, $t4, 3
	fldx.d	$fa1, $a5, $t4
	fld.d	$fa2, $t3, 0
	fmadd.d	$fa1, $fa0, $fa1, $fa2
	fst.d	$fa1, $t3, 0
	b	.LBB0_62
	.p2align	4, , 16
.LBB0_65:                               # %seq_vec_2.exit348
                                        #   in Loop: Header=BB0_60 Depth=1
	ld.bu	$t2, $t0, 0
	beqz	$t2, .LBB0_59
# %bb.66:                               # %.lr.ph.i350.preheader
                                        #   in Loop: Header=BB0_60 Depth=1
	fld.d	$fa0, $t1, 0
	ld.d	$t1, $a0, 8
	addi.d	$t0, $t0, 1
	b	.LBB0_68
	.p2align	4, , 16
.LBB0_67:                               #   in Loop: Header=BB0_68 Depth=2
	ld.bu	$t2, $t0, 0
	addi.d	$t1, $t1, 16
	addi.d	$t0, $t0, 1
	beqz	$t2, .LBB0_59
.LBB0_68:                               # %.lr.ph.i350
                                        #   Parent Loop BB0_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$t2, $t2
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a3, $t2
	bltu	$a4, $t2, .LBB0_67
# %bb.69:                               #   in Loop: Header=BB0_68 Depth=2
	slli.d	$t2, $t2, 3
	fldx.d	$fa1, $a6, $t2
	fld.d	$fa2, $t1, 0
	fmadd.d	$fa1, $fa0, $fa1, $fa2
	fst.d	$fa1, $t1, 0
	b	.LBB0_67
.LBB0_70:                               # %.preheader383
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	blez	$fp, .LBB0_79
# %bb.71:                               # %.lr.ph409
	pcalau12i	$a0, %pc_hi20(Fgetlag.seqVector2)
	ld.d	$a0, $a0, %pc_lo12(Fgetlag.seqVector2)
	pcalau12i	$a1, %pc_hi20(Fgetlag.tmpseq2)
	ld.d	$a1, $a1, %pc_lo12(Fgetlag.tmpseq2)
	pcalau12i	$a2, %got_pc_hi20(amino_n)
	ld.d	$a2, $a2, %got_pc_lo12(amino_n)
	move	$a3, $zero
	b	.LBB0_73
	.p2align	4, , 16
.LBB0_72:                               # %seq_vec_3.exit363
                                        #   in Loop: Header=BB0_73 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $fp, .LBB0_79
.LBB0_73:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_76 Depth 2
	slli.d	$a4, $a3, 3
	ldx.d	$a5, $a1, $a4
	ld.bu	$a6, $a5, 0
	beqz	$a6, .LBB0_72
# %bb.74:                               # %.lr.ph.i357.preheader
                                        #   in Loop: Header=BB0_73 Depth=1
	ld.d	$a7, $sp, 280                   # 8-byte Folded Reload
	fldx.d	$fa0, $a7, $a4
	move	$a4, $zero
	addi.d	$a5, $a5, 1
	b	.LBB0_76
	.p2align	4, , 16
.LBB0_75:                               #   in Loop: Header=BB0_76 Depth=2
	ld.bu	$a6, $a5, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 1
	beqz	$a6, .LBB0_72
.LBB0_76:                               # %.lr.ph.i357
                                        #   Parent Loop BB0_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$a6, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a2, $a6
	bltz	$a6, .LBB0_75
# %bb.77:                               # %.lr.ph.i357
                                        #   in Loop: Header=BB0_76 Depth=2
	bge	$a6, $s4, .LBB0_75
# %bb.78:                               #   in Loop: Header=BB0_76 Depth=2
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a0, $a6
	fldx.d	$fa1, $a6, $a4
	fadd.d	$fa1, $fa0, $fa1
	fstx.d	$fa1, $a6, $a4
	b	.LBB0_75
.LBB0_79:                               # %.loopexit
	blez	$s4, .LBB0_89
# %bb.80:                               # %.lr.ph414.preheader
	move	$s3, $zero
	move	$s7, $zero
	pcalau12i	$s0, %pc_hi20(Fgetlag.seqVector2)
	pcalau12i	$s1, %pc_hi20(Fgetlag.seqVector1)
	.p2align	4, , 16
.LBB0_81:                               # %.lr.ph414
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, %pc_lo12(Fgetlag.seqVector2)
	ldx.d	$a1, $a0, $s3
	sltui	$a2, $s7, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(fft)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(Fgetlag.seqVector1)
	ldx.d	$a1, $a0, $s3
	move	$a0, $s8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fft)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s2, %pc_lo12(n20or4or2)
	addi.d	$s7, $s7, 1
	addi.d	$s3, $s3, 8
	blt	$s7, $s4, .LBB0_81
# %bb.82:                               # %.preheader381
	blez	$s4, .LBB0_89
# %bb.83:                               # %.preheader380.lr.ph
	move	$s3, $zero
	bstrpick.d	$a0, $s6, 31, 0
	slli.d	$s7, $a0, 4
	b	.LBB0_85
	.p2align	4, , 16
.LBB0_84:                               # %._crit_edge417
                                        #   in Loop: Header=BB0_85 Depth=1
	addi.d	$s3, $s3, 1
	bge	$s3, $s4, .LBB0_89
.LBB0_85:                               # %.preheader380
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_87 Depth 2
	blez	$s8, .LBB0_84
# %bb.86:                               # %.lr.ph416.preheader
                                        #   in Loop: Header=BB0_85 Depth=1
	move	$s4, $zero
	slli.d	$fp, $s3, 3
	.p2align	4, , 16
.LBB0_87:                               # %.lr.ph416
                                        #   Parent Loop BB0_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s5, %pc_lo12(Fgetlag.naiseki)
	ld.d	$a1, $s1, %pc_lo12(Fgetlag.seqVector1)
	ld.d	$a2, $s0, %pc_lo12(Fgetlag.seqVector2)
	ldx.d	$a0, $a0, $fp
	ldx.d	$a1, $a1, $fp
	ldx.d	$a2, $a2, $fp
	add.d	$a0, $a0, $s4
	add.d	$a1, $a1, $s4
	add.d	$a2, $a2, $s4
	pcaddu18i	$ra, %call36(calcNaiseki)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 16
	bne	$s7, $s4, .LBB0_87
# %bb.88:                               # %._crit_edge417.loopexit
                                        #   in Loop: Header=BB0_85 Depth=1
	ld.w	$s4, $s2, %pc_lo12(n20or4or2)
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	b	.LBB0_84
.LBB0_89:                               # %.preheader379
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $s1, %pc_lo12(Fgetlag.naisekiNoWa)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	srai.d	$s0, $a0, 1
	blez	$s8, .LBB0_95
# %bb.90:                               # %.lr.ph426
	ld.d	$a0, $s5, %pc_lo12(Fgetlag.naiseki)
	move	$a2, $zero
	bstrpick.d	$a3, $s4, 31, 0
	vrepli.b	$vr0, 0
	b	.LBB0_92
	.p2align	4, , 16
.LBB0_91:                               # %._crit_edge423
                                        #   in Loop: Header=BB0_92 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $s8, .LBB0_95
.LBB0_92:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_94 Depth 2
	slli.d	$a4, $a2, 4
	vstx	$vr0, $a1, $a4
	blez	$s4, .LBB0_91
# %bb.93:                               # %.lr.ph422.preheader
                                        #   in Loop: Header=BB0_92 Depth=1
	alsl.d	$a5, $a2, $a1, 4
	move	$a6, $a3
	move	$a7, $a0
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB0_94:                               # %.lr.ph422
                                        #   Parent Loop BB0_92 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $a7, 0
	vldx	$vr2, $t0, $a4
	vfadd.d	$vr1, $vr2, $vr1
	vst	$vr1, $a5, 0
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 8
	bnez	$a6, .LBB0_94
	b	.LBB0_91
.LBB0_95:                               # %._crit_edge427
	sub.w	$a0, $zero, $s6
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fft)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(Fgetlag.soukan)
	addi.w	$a1, $zero, -2
	addi.d	$a0, $s0, 1
	bge	$a1, $s8, .LBB0_98
# %bb.96:                               # %.lr.ph431
	ld.d	$a3, $s1, %pc_lo12(Fgetlag.naisekiNoWa)
	bstrpick.d	$a1, $a0, 31, 0
	alsl.d	$a3, $s0, $a3, 4
	move	$a4, $a2
	.p2align	4, , 16
.LBB0_97:                               # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a3, 0
	fst.d	$fa0, $a4, 0
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 8
	bnez	$a1, .LBB0_97
.LBB0_98:                               # %.preheader378
	bge	$a0, $s8, .LBB0_101
# %bb.99:                               # %.lr.ph434
	ld.d	$a0, $s1, %pc_lo12(Fgetlag.naisekiNoWa)
	addi.w	$a1, $s6, -1
	alsl.d	$a3, $s0, $a2, 3
	addi.d	$a3, $a3, 8
	nor	$a4, $s0, $zero
	add.d	$a4, $a4, $s8
	.p2align	4, , 16
.LBB0_100:                              # =>This Inner Loop Header: Depth=1
	slli.d	$a5, $a1, 4
	fldx.d	$fa0, $a0, $a5
	fst.d	$fa0, $a3, 0
	addi.w	$a1, $a1, -1
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB0_100
.LBB0_101:                              # %._crit_edge435
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Fgetlag.kouho)
	ori	$a1, $zero, 20
	move	$a3, $s8
	pcaddu18i	$ra, %call36(getKouho)
	jirl	$ra, $ra, 0
	st.w	$zero, $sp, 292
	lu12i.w	$a0, 24
	ori	$s5, $a0, 1694
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s6, $a0, %pc_lo12(.L.str.2)
	move	$s8, $zero
	move	$s1, $zero
	ori	$s0, $zero, 48
	b	.LBB0_103
	.p2align	4, , 16
.LBB0_102:                              # %._crit_edge437
                                        #   in Loop: Header=BB0_103 Depth=1
	addi.d	$s1, $s1, 1
	ori	$a0, $zero, 20
	beq	$s1, $a0, .LBB0_110
.LBB0_103:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_109 Depth 2
                                        #     Child Loop BB0_108 Depth 2
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Fgetlag.kouho)
	slli.d	$a1, $s1, 2
	ldx.w	$s7, $a0, $a1
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a5, $s3, %pc_lo12(Fgetlag.tmpptr1)
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a6, $s2, %pc_lo12(Fgetlag.tmpptr2)
	move	$a0, $s7
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	move	$a1, $s4
	move	$a2, $fp
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(zurasu2)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s3, %pc_lo12(Fgetlag.tmpptr1)
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Fgetlag.segment)
	ld.d	$a3, $s2, %pc_lo12(Fgetlag.tmpptr2)
	slli.d	$a1, $s8, 5
	alsl.d	$a1, $s8, $a1, 4
	add.d	$a6, $a0, $a1
	move	$a0, $s4
	move	$a1, $fp
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(alignableReagion)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	add.w	$a0, $s8, $a0
	blt	$a0, $s5, .LBB0_105
# %bb.104:                              #   in Loop: Header=BB0_103 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB0_105:                              #   in Loop: Header=BB0_103 Depth=1
	beqz	$s3, .LBB0_110
# %bb.106:                              # %.preheader377
                                        #   in Loop: Header=BB0_103 Depth=1
	blez	$s3, .LBB0_102
# %bb.107:                              # %.lr.ph436
                                        #   in Loop: Header=BB0_103 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Fgetlag.segment)
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Fgetlag.segment1)
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Fgetlag.segment2)
	blez	$s7, .LBB0_109
	.p2align	4, , 16
.LBB0_108:                              # %.lr.ph436.split.us
                                        #   Parent Loop BB0_103 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mul.d	$a3, $s8, $s0
	ldx.w	$a4, $a0, $a3
	stx.w	$a4, $a1, $a3
	ld.w	$a3, $sp, 292
	mul.d	$a3, $a3, $s0
	add.d	$a4, $a0, $a3
	ld.w	$a4, $a4, 4
	add.d	$a3, $a1, $a3
	st.w	$a4, $a3, 4
	ld.w	$a3, $sp, 292
	mul.d	$a3, $a3, $s0
	add.d	$a4, $a0, $a3
	ld.w	$a4, $a4, 8
	add.d	$a3, $a1, $a3
	st.w	$a4, $a3, 8
	ld.w	$a3, $sp, 292
	mul.d	$a3, $a3, $s0
	ldx.w	$a4, $a0, $a3
	add.d	$a4, $a4, $s7
	stx.w	$a4, $a2, $a3
	ld.w	$a4, $sp, 292
	mul.d	$a4, $a4, $s0
	add.d	$a5, $a0, $a4
	ld.w	$a5, $a5, 4
	add.d	$a5, $a5, $s7
	add.d	$a4, $a2, $a4
	st.w	$a5, $a4, 4
	ld.w	$a4, $sp, 292
	mul.d	$a4, $a4, $s0
	add.d	$a5, $a0, $a4
	ld.w	$a5, $a5, 8
	add.d	$a6, $a0, $a3
	fld.d	$fa0, $a6, 16
	add.d	$a5, $a5, $s7
	add.d	$a4, $a2, $a4
	st.w	$a5, $a4, 8
	ld.w	$a4, $sp, 292
	add.d	$a3, $a1, $a3
	fst.d	$fa0, $a3, 16
	mul.d	$a3, $a4, $s0
	add.d	$a5, $a0, $a3
	fld.d	$fa0, $a5, 16
	add.d	$a5, $a2, $a3
	fst.d	$fa0, $a5, 16
	add.d	$a3, $a1, $a3
	st.d	$a5, $a3, 32
	st.d	$a3, $a5, 32
	addi.w	$s8, $a4, 1
	addi.w	$s3, $s3, -1
	st.w	$s8, $sp, 292
	bnez	$s3, .LBB0_108
	b	.LBB0_102
	.p2align	4, , 16
.LBB0_109:                              # %.lr.ph436.split
                                        #   Parent Loop BB0_103 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mul.d	$a3, $s8, $s0
	ldx.w	$a4, $a0, $a3
	sub.d	$a4, $a4, $s7
	stx.w	$a4, $a1, $a3
	ld.w	$a3, $sp, 292
	mul.d	$a3, $a3, $s0
	add.d	$a4, $a0, $a3
	ld.w	$a4, $a4, 4
	sub.d	$a4, $a4, $s7
	add.d	$a3, $a1, $a3
	st.w	$a4, $a3, 4
	ld.w	$a3, $sp, 292
	mul.d	$a3, $a3, $s0
	add.d	$a4, $a0, $a3
	ld.w	$a4, $a4, 8
	sub.d	$a4, $a4, $s7
	add.d	$a3, $a1, $a3
	st.w	$a4, $a3, 8
	ld.w	$a3, $sp, 292
	mul.d	$a3, $a3, $s0
	ldx.w	$a4, $a0, $a3
	stx.w	$a4, $a2, $a3
	ld.w	$a4, $sp, 292
	mul.d	$a4, $a4, $s0
	add.d	$a5, $a0, $a4
	ld.w	$a5, $a5, 4
	add.d	$a4, $a2, $a4
	st.w	$a5, $a4, 4
	ld.w	$a4, $sp, 292
	mul.d	$a4, $a4, $s0
	add.d	$a5, $a0, $a4
	ld.w	$a5, $a5, 8
	add.d	$a6, $a0, $a3
	fld.d	$fa0, $a6, 16
	add.d	$a4, $a2, $a4
	st.w	$a5, $a4, 8
	ld.w	$a4, $sp, 292
	add.d	$a3, $a1, $a3
	fst.d	$fa0, $a3, 16
	mul.d	$a3, $a4, $s0
	add.d	$a5, $a0, $a3
	fld.d	$fa0, $a5, 16
	add.d	$a5, $a2, $a3
	fst.d	$fa0, $a5, 16
	add.d	$a3, $a1, $a3
	st.d	$a5, $a3, 32
	st.d	$a3, $a5, 32
	addi.w	$s8, $a4, 1
	addi.w	$s3, $s3, -1
	st.w	$s8, $sp, 292
	bnez	$s3, .LBB0_109
	b	.LBB0_102
.LBB0_110:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	move	$a2, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	bnez	$s8, .LBB0_113
# %bb.111:
	pcalau12i	$a0, %got_pc_hi20(fftNoAnchStop)
	ld.d	$a0, $a0, %got_pc_lo12(fftNoAnchStop)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_113
# %bb.112:                              # %.thread
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $s7, %pc_lo12(Fgetlag.sortedseg1)
	move	$s0, $zero
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	b	.LBB0_123
.LBB0_113:
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $s7, %pc_lo12(Fgetlag.sortedseg1)
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	blez	$s8, .LBB0_122
# %bb.114:                              # %.lr.ph441
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Fgetlag.segment1)
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(Fgetlag.segment2)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Fgetlag.sortedseg2)
	ori	$a5, $zero, 4
	move	$a4, $zero
	bltu	$s8, $a5, .LBB0_119
# %bb.115:                              # %.lr.ph441
	sub.d	$a5, $a0, $a2
	ori	$a6, $zero, 32
	bltu	$a5, $a6, .LBB0_119
# %bb.116:                              # %vector.ph
	move	$a5, $zero
	bstrpick.d	$a4, $s8, 30, 2
	slli.d	$a4, $a4, 2
	pcalau12i	$a6, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a6, %pc_lo12(.LCPI0_0)
	slli.d	$a6, $s8, 3
	bstrpick.d	$a6, $a6, 33, 5
	slli.d	$a6, $a6, 5
	vreplgr2vr.d	$vr1, $a1
	vrepli.d	$vr2, 48
	vrepli.d	$vr3, 96
	vreplgr2vr.d	$vr4, $a3
	.p2align	4, , 16
.LBB0_117:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vori.b	$vr5, $vr1, 0
	vmadd.d	$vr5, $vr0, $vr2
	vori.b	$vr6, $vr3, 0
	vmadd.d	$vr6, $vr0, $vr2
	vadd.d	$vr7, $vr1, $vr6
	add.d	$a7, $a2, $a5
	vstx	$vr5, $a2, $a5
	vst	$vr7, $a7, 16
	vori.b	$vr5, $vr4, 0
	vmadd.d	$vr5, $vr0, $vr2
	vadd.d	$vr6, $vr4, $vr6
	add.d	$a7, $a0, $a5
	vstx	$vr5, $a0, $a5
	vst	$vr6, $a7, 16
	addi.d	$a5, $a5, 32
	vaddi.du	$vr0, $vr0, 4
	bne	$a6, $a5, .LBB0_117
# %bb.118:                              # %middle.block
	ori	$s0, $zero, 1
	beq	$a4, $s8, .LBB0_123
.LBB0_119:                              # %scalar.ph.preheader
	slli.d	$a5, $a4, 3
	slli.d	$a6, $a4, 5
	alsl.d	$a6, $a4, $a6, 4
	add.d	$a3, $a3, $a6
	add.d	$a1, $a1, $a6
	sub.d	$a4, $s8, $a4
	.p2align	4, , 16
.LBB0_120:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	stx.d	$a1, $a2, $a5
	stx.d	$a3, $a0, $a5
	addi.d	$a5, $a5, 8
	addi.d	$a3, $a3, 48
	addi.d	$a4, $a4, -1
	addi.d	$a1, $a1, 48
	bnez	$a4, .LBB0_120
# %bb.121:
	ori	$s0, $zero, 1
	b	.LBB0_123
.LBB0_122:
	move	$s0, $zero
.LBB0_123:                              # %._crit_edge442
	addi.w	$s3, $s8, -1
	move	$a0, $zero
	move	$a1, $s3
	pcaddu18i	$ra, %call36(mymergesort)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(Fgetlag.sortedseg2)
	move	$a0, $zero
	move	$a1, $s3
	pcaddu18i	$ra, %call36(mymergesort)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB0_138
# %bb.124:                              # %.lr.ph446
	ld.d	$a3, $s7, %pc_lo12(Fgetlag.sortedseg1)
	bstrpick.d	$a0, $s8, 31, 0
	ori	$a2, $zero, 2
	bstrpick.d	$a1, $a0, 30, 1
	bgeu	$s8, $a2, .LBB0_126
# %bb.125:
	move	$a2, $zero
	b	.LBB0_129
.LBB0_126:                              # %vector.ph665
	slli.d	$a2, $a1, 1
	addi.d	$a4, $a3, 8
	ori	$a5, $zero, 1
	move	$a6, $a2
	.p2align	4, , 16
.LBB0_127:                              # %vector.body668
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a4, -8
	ld.d	$t0, $a4, 0
	addi.d	$t1, $a5, -1
	st.w	$t1, $a7, 40
	st.w	$a5, $t0, 40
	addi.d	$a4, $a4, 16
	addi.d	$a6, $a6, -2
	addi.d	$a5, $a5, 2
	bnez	$a6, .LBB0_127
# %bb.128:                              # %middle.block671
	beq	$a2, $a0, .LBB0_131
.LBB0_129:                              # %scalar.ph663.preheader
	alsl.d	$a3, $a2, $a3, 3
	sub.d	$a4, $a0, $a2
	.p2align	4, , 16
.LBB0_130:                              # %scalar.ph663
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, 0
	st.w	$a2, $a5, 40
	addi.d	$a2, $a2, 1
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB0_130
.LBB0_131:                              # %.lr.ph449
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Fgetlag.sortedseg2)
	ori	$a3, $zero, 2
	bgeu	$s8, $a3, .LBB0_133
# %bb.132:
	move	$a1, $zero
	b	.LBB0_136
.LBB0_133:                              # %vector.ph676
	slli.d	$a1, $a1, 1
	addi.d	$a3, $a2, 8
	ori	$a4, $zero, 1
	move	$a5, $a1
	.p2align	4, , 16
.LBB0_134:                              # %vector.body679
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a3, -8
	ld.d	$a7, $a3, 0
	addi.d	$t0, $a4, -1
	st.w	$t0, $a6, 40
	st.w	$a4, $a7, 40
	addi.d	$a3, $a3, 16
	addi.d	$a5, $a5, -2
	addi.d	$a4, $a4, 2
	bnez	$a5, .LBB0_134
# %bb.135:                              # %middle.block682
	beq	$a1, $a0, .LBB0_138
.LBB0_136:                              # %scalar.ph674.preheader
	alsl.d	$a2, $a1, $a2, 3
	sub.d	$a0, $a0, $a1
	.p2align	4, , 16
.LBB0_137:                              # %scalar.ph674
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	st.w	$a1, $a3, 40
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB0_137
.LBB0_138:                              # %._crit_edge450
	pcalau12i	$s1, %pc_hi20(Fgetlag.crossscoresize)
	ld.w	$a0, $s1, %pc_lo12(Fgetlag.crossscoresize)
	addi.w	$s3, $s8, 2
	blt	$a0, $s3, .LBB0_191
# %bb.139:                              # %._crit_edge450._crit_edge
	pcalau12i	$a0, %pc_hi20(Fgetlag.crossscore)
	ld.d	$s6, $a0, %pc_lo12(Fgetlag.crossscore)
	blt	$s8, $fp, .LBB0_142
.LBB0_140:                              # %.preheader375.lr.ph
	ori	$a0, $zero, 1
	slt	$a1, $a0, $s3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$fp, $a1, $a0
	slli.d	$s3, $fp, 3
	move	$s1, $s6
	.p2align	4, , 16
.LBB0_141:                              # %._crit_edge453
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, -1
	addi.d	$s1, $s1, 8
	bnez	$fp, .LBB0_141
.LBB0_142:                              # %.preheader374
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Fgetlag.cut1)
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Fgetlag.cut2)
	ld.d	$a2, $s7, %pc_lo12(Fgetlag.sortedseg1)
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Fgetlag.sortedseg2)
	beqz	$s0, .LBB0_145
# %bb.143:                              # %.lr.ph456
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a5, $a4, %pc_lo12(Fgetlag.segment1)
	move	$a4, $zero
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a1, 4
	addi.d	$a7, $a0, 4
	move	$t0, $a2
	move	$t1, $a3
	.p2align	4, , 16
.LBB0_144:                              # =>This Inner Loop Header: Depth=1
	ld.w	$t2, $a5, 8
	ld.d	$t3, $t0, 0
	alsl.d	$t2, $t2, $s6, 3
	ld.d	$t4, $a5, 0
	ld.d	$t2, $t2, 8
	ld.w	$t3, $t3, 8
	ld.d	$t5, $t1, 0
	ld.w	$t4, $t4, 40
	fld.d	$fa0, $a5, -16
	st.w	$t3, $a7, 0
	ld.w	$t3, $t5, 8
	alsl.d	$t2, $t4, $t2, 3
	fst.d	$fa0, $t2, 8
	addi.d	$a4, $a4, 1
	st.w	$t3, $a6, 0
	ld.w	$t2, $sp, 292
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, 8
	addi.d	$a5, $a5, 48
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 4
	blt	$a4, $t2, .LBB0_144
.LBB0_145:                              # %._crit_edge457
	st.w	$zero, $a0, 0
	st.w	$zero, $a1, 0
	ld.w	$a4, $sp, 292
	ld.d	$a5, $s6, 0
	ori	$a6, $zero, 0
	lu32i.d	$a6, 201424
	alsl.d	$a7, $a4, $a0, 2
	st.w	$s4, $a7, 4
	ld.w	$a7, $sp, 292
	slli.d	$a4, $a4, 3
	addi.d	$a4, $a4, 8
	ldx.d	$t0, $s6, $a4
	alsl.d	$a7, $a7, $a1, 2
	st.w	$s5, $a7, 4
	ld.w	$a7, $sp, 292
	lu52i.d	$a6, $a6, 1046
	st.d	$a6, $a5, 0
	stx.d	$a6, $t0, $a4
	addi.w	$fp, $a7, 2
	st.w	$fp, $sp, 292
	addi.d	$a5, $sp, 292
	move	$a4, $s6
	pcaddu18i	$ra, %call36(blockAlign2)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_147
# %bb.146:                              # %._crit_edge457
	ld.w	$a0, $sp, 292
	blt	$a0, $fp, .LBB0_189
.LBB0_147:
	blez	$s1, .LBB0_150
# %bb.148:                              # %.lr.ph460
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Fgetlag.result1)
	move	$a1, $s1
	.p2align	4, , 16
.LBB0_149:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 0
	st.b	$zero, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB0_149
.LBB0_150:                              # %.preheader373
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	blez	$fp, .LBB0_153
# %bb.151:                              # %.lr.ph462
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Fgetlag.result2)
	move	$a1, $fp
	.p2align	4, , 16
.LBB0_152:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 0
	st.b	$zero, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB0_152
.LBB0_153:                              # %.preheader372
	ld.w	$a0, $sp, 292
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB0_182
# %bb.154:                              # %.preheader371.lr.ph
	addi.d	$a0, $s1, -1
	sltui	$a0, $a0, 1
	addi.d	$a1, $fp, -1
	sltui	$a1, $a1, 1
	and	$a0, $a0, $a1
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	bstrpick.d	$a0, $s1, 31, 0
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	bstrpick.d	$a0, $fp, 31, 0
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(Fgetlag.tmpres1)
	pcalau12i	$s8, %pc_hi20(Fgetlag.tmpres2)
	pcalau12i	$a0, %got_pc_hi20(alg)
	ld.d	$a0, $a0, %got_pc_lo12(alg)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	move	$s0, $zero
	move	$s7, $zero
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 192                  # 16-byte Folded Spill
	b	.LBB0_156
	.p2align	4, , 16
.LBB0_155:                              # %._crit_edge473
                                        #   in Loop: Header=BB0_156 Depth=1
	ld.w	$a0, $sp, 292
	addi.d	$s0, $s0, 1
	addi.w	$a0, $a0, -1
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	bge	$s0, $a0, .LBB0_182
.LBB0_156:                              # %.preheader371
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_158 Depth 2
                                        #     Child Loop BB0_161 Depth 2
                                        #     Child Loop BB0_177 Depth 2
                                        #     Child Loop BB0_180 Depth 2
	blez	$s1, .LBB0_159
# %bb.157:                              # %.lr.ph464
                                        #   in Loop: Header=BB0_156 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Fgetlag.cut1)
	ld.d	$s1, $s5, %pc_lo12(Fgetlag.tmpres1)
	alsl.d	$s6, $s0, $a0, 2
	ld.d	$s3, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 240                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_158:                              #   Parent Loop BB0_156 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s4, 0
	ld.w	$a2, $s6, 0
	ld.w	$a3, $s6, 4
	ld.d	$a0, $s1, 0
	add.d	$a1, $a1, $a2
	sub.w	$a2, $a3, $a2
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 4
	ld.w	$a1, $s6, 0
	ld.d	$a2, $s1, 0
	sub.w	$a0, $a0, $a1
	stx.b	$zero, $a2, $a0
	addi.d	$s4, $s4, 8
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 8
	bnez	$s3, .LBB0_158
.LBB0_159:                              # %.preheader370
                                        #   in Loop: Header=BB0_156 Depth=1
	blez	$fp, .LBB0_162
# %bb.160:                              # %.lr.ph466
                                        #   in Loop: Header=BB0_156 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Fgetlag.cut2)
	ld.d	$s1, $s8, %pc_lo12(Fgetlag.tmpres2)
	alsl.d	$s6, $s0, $a0, 2
	ld.d	$s3, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_161:                              #   Parent Loop BB0_156 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s4, 0
	ld.w	$a2, $s6, 0
	ld.w	$a3, $s6, 4
	ld.d	$a0, $s1, 0
	add.d	$a1, $a1, $a2
	sub.w	$a2, $a3, $a2
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 4
	ld.w	$a1, $s6, 0
	ld.d	$a2, $s1, 0
	sub.w	$a0, $a0, $a1
	stx.b	$zero, $a2, $a0
	addi.d	$s4, $s4, 8
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 8
	bnez	$s3, .LBB0_161
.LBB0_162:                              # %._crit_edge467
                                        #   in Loop: Header=BB0_156 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a1, -65
	ld.d	$s2, $sp, 256                   # 8-byte Folded Reload
	ori	$a2, $zero, 32
	bltu	$a2, $a0, .LBB0_181
# %bb.163:                              # %._crit_edge467
                                        #   in Loop: Header=BB0_156 Depth=1
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %pc_hi20(.LJTI0_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a2, $a0
	add.d	$a0, $a2, $a0
	jr	$a0
.LBB0_164:                              #   in Loop: Header=BB0_156 Depth=1
	ld.d	$a0, $s5, %pc_lo12(Fgetlag.tmpres1)
	ld.d	$a1, $s8, %pc_lo12(Fgetlag.tmpres2)
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_170
# %bb.165:                              #   in Loop: Header=BB0_156 Depth=1
	vld	$vr0, $sp, 192                  # 16-byte Folded Reload
	vst	$vr0, $sp, 24
	vst	$vr0, $sp, 8
	addi.d	$a2, $sp, 288
	st.d	$a2, $sp, 0
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	move	$a4, $s2
	move	$a5, $fp
	move	$a6, $s1
	move	$a7, $zero
	pcaddu18i	$ra, %call36(A__align)
	jirl	$ra, $ra, 0
	b	.LBB0_173
.LBB0_166:                              #   in Loop: Header=BB0_156 Depth=1
	ld.d	$a0, $s5, %pc_lo12(Fgetlag.tmpres1)
	ld.d	$a1, $s8, %pc_lo12(Fgetlag.tmpres2)
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_170
# %bb.167:                              #   in Loop: Header=BB0_156 Depth=1
	vld	$vr0, $sp, 192                  # 16-byte Folded Reload
	vst	$vr0, $sp, 24
	vst	$vr0, $sp, 8
	addi.d	$a2, $sp, 288
	st.d	$a2, $sp, 0
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	move	$a4, $s2
	move	$a5, $fp
	move	$a6, $s1
	move	$a7, $zero
	pcaddu18i	$ra, %call36(H__align)
	jirl	$ra, $ra, 0
	b	.LBB0_173
.LBB0_168:                              #   in Loop: Header=BB0_156 Depth=1
	ld.d	$a0, $s5, %pc_lo12(Fgetlag.tmpres1)
	ld.d	$a1, $s8, %pc_lo12(Fgetlag.tmpres2)
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	move	$a4, $s2
	move	$a5, $fp
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	move	$a6, $s1
	pcaddu18i	$ra, %call36(Aalign)
	jirl	$ra, $ra, 0
	b	.LBB0_173
.LBB0_169:                              #   in Loop: Header=BB0_156 Depth=1
	ld.d	$a0, $s5, %pc_lo12(Fgetlag.tmpres1)
	ld.d	$a1, $s8, %pc_lo12(Fgetlag.tmpres2)
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	beqz	$a2, .LBB0_172
.LBB0_170:                              #   in Loop: Header=BB0_156 Depth=1
	move	$a2, $s1
	pcaddu18i	$ra, %call36(G__align11)
	jirl	$ra, $ra, 0
	b	.LBB0_173
.LBB0_171:                              #   in Loop: Header=BB0_156 Depth=1
	ld.d	$a0, $s5, %pc_lo12(Fgetlag.tmpres1)
	ld.d	$a1, $s8, %pc_lo12(Fgetlag.tmpres2)
	st.d	$zero, $sp, 16
	vld	$vr0, $sp, 192                  # 16-byte Folded Reload
	vst	$vr0, $sp, 0
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	move	$a4, $s2
	move	$a5, $fp
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	move	$a6, $s1
	move	$a7, $zero
	pcaddu18i	$ra, %call36(MSalignmm)
	jirl	$ra, $ra, 0
	b	.LBB0_173
.LBB0_172:                              #   in Loop: Header=BB0_156 Depth=1
	vld	$vr0, $sp, 192                  # 16-byte Folded Reload
	vst	$vr0, $sp, 24
	vst	$vr0, $sp, 8
	addi.d	$a2, $sp, 288
	st.d	$a2, $sp, 0
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	move	$a4, $s2
	move	$a5, $fp
	move	$a6, $s1
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Q__align)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB0_173:                              #   in Loop: Header=BB0_156 Depth=1
	ld.d	$a0, $s5, %pc_lo12(Fgetlag.tmpres1)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.w	$s7, $s7, $a0
	bge	$s1, $s7, .LBB0_175
# %bb.174:                              #   in Loop: Header=BB0_156 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB0_175:                              #   in Loop: Header=BB0_156 Depth=1
	blez	$s2, .LBB0_178
# %bb.176:                              # %.lr.ph470
                                        #   in Loop: Header=BB0_156 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(Fgetlag.result1)
	ld.d	$s1, $s5, %pc_lo12(Fgetlag.tmpres1)
	ld.d	$s3, $sp, 264                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_177:                              #   Parent Loop BB0_156 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s1, 0
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 8
	addi.d	$s3, $s3, -1
	addi.d	$fp, $fp, 8
	bnez	$s3, .LBB0_177
.LBB0_178:                              # %.preheader369
                                        #   in Loop: Header=BB0_156 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	blez	$a0, .LBB0_155
# %bb.179:                              # %.lr.ph472
                                        #   in Loop: Header=BB0_156 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(Fgetlag.result2)
	ld.d	$s1, $s8, %pc_lo12(Fgetlag.tmpres2)
	ld.d	$s3, $sp, 232                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_180:                              #   Parent Loop BB0_156 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s1, 0
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 8
	addi.d	$s3, $s3, -1
	addi.d	$fp, $fp, 8
	bnez	$s3, .LBB0_180
	b	.LBB0_155
.LBB0_181:                              #   in Loop: Header=BB0_156 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ext.w.b	$a2, $a1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	b	.LBB0_173
.LBB0_182:                              # %.preheader368
	ld.d	$s0, $sp, 240                   # 8-byte Folded Reload
	blez	$s1, .LBB0_185
# %bb.183:                              # %.lr.ph477
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(Fgetlag.result1)
	.p2align	4, , 16
.LBB0_184:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	bnez	$s1, .LBB0_184
.LBB0_185:                              # %.preheader
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 248                   # 8-byte Folded Reload
	blez	$s0, .LBB0_188
# %bb.186:                              # %.lr.ph479
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(Fgetlag.result2)
	.p2align	4, , 16
.LBB0_187:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	bnez	$s0, .LBB0_187
.LBB0_188:                              # %._crit_edge480
	movgr2fr.d	$fa0, $zero
	ld.d	$s8, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
	ret
.LBB0_189:
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(fftRepeatStop)
	ld.d	$a0, $a0, %got_pc_lo12(fftRepeatStop)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_147
# %bb.190:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_191:
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.w	$s3, $s1, %pc_lo12(Fgetlag.crossscoresize)
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$fp, %pc_hi20(Fgetlag.crossscore)
	ld.d	$a0, $fp, %pc_lo12(Fgetlag.crossscore)
	beqz	$a0, .LBB0_193
# %bb.192:
	pcaddu18i	$ra, %call36(FreeDoubleMtx)
	jirl	$ra, $ra, 0
.LBB0_193:
	ld.w	$a0, $s1, %pc_lo12(Fgetlag.crossscoresize)
	move	$a1, $a0
	pcaddu18i	$ra, %call36(AllocateDoubleMtx)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$a0, $fp, %pc_lo12(Fgetlag.crossscore)
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	bge	$s8, $fp, .LBB0_140
	b	.LBB0_142
.Lfunc_end0:
	.size	Fgetlag, .Lfunc_end0-Fgetlag
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_164-.LJTI0_0
	.word	.LBB0_181-.LJTI0_0
	.word	.LBB0_181-.LJTI0_0
	.word	.LBB0_181-.LJTI0_0
	.word	.LBB0_181-.LJTI0_0
	.word	.LBB0_181-.LJTI0_0
	.word	.LBB0_181-.LJTI0_0
	.word	.LBB0_166-.LJTI0_0
	.word	.LBB0_181-.LJTI0_0
	.word	.LBB0_181-.LJTI0_0
	.word	.LBB0_181-.LJTI0_0
	.word	.LBB0_181-.LJTI0_0
	.word	.LBB0_171-.LJTI0_0
	.word	.LBB0_181-.LJTI0_0
	.word	.LBB0_181-.LJTI0_0
	.word	.LBB0_181-.LJTI0_0
	.word	.LBB0_169-.LJTI0_0
	.word	.LBB0_181-.LJTI0_0
	.word	.LBB0_181-.LJTI0_0
	.word	.LBB0_181-.LJTI0_0
	.word	.LBB0_181-.LJTI0_0
	.word	.LBB0_181-.LJTI0_0
	.word	.LBB0_181-.LJTI0_0
	.word	.LBB0_181-.LJTI0_0
	.word	.LBB0_181-.LJTI0_0
	.word	.LBB0_181-.LJTI0_0
	.word	.LBB0_181-.LJTI0_0
	.word	.LBB0_181-.LJTI0_0
	.word	.LBB0_181-.LJTI0_0
	.word	.LBB0_181-.LJTI0_0
	.word	.LBB0_181-.LJTI0_0
	.word	.LBB0_181-.LJTI0_0
	.word	.LBB0_168-.LJTI0_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function mymergesort
	.type	mymergesort,@function
mymergesort:                            # @mymergesort
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(mymergesort.allo)
	ld.w	$a4, $a3, %pc_lo12(mymergesort.allo)
	move	$fp, $a2
	move	$s1, $a1
	move	$s0, $a0
	bge	$a4, $a1, .LBB1_4
# %bb.1:
	pcalau12i	$s2, %pc_hi20(mymergesort.work)
	ld.d	$a0, $s2, %pc_lo12(mymergesort.work)
	st.w	$s1, $a3, %pc_lo12(mymergesort.allo)
	beqz	$a0, .LBB1_3
# %bb.2:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_3:
	bstrpick.d	$a0, $s1, 31, 1
	addi.w	$a0, $a0, 1
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, %pc_lo12(mymergesort.work)
.LBB1_4:
	bge	$s0, $s1, .LBB1_24
# %bb.5:
	add.w	$a0, $s1, $s0
	bstrpick.d	$s3, $a0, 31, 1
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(mymergesort)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s3, 1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(mymergesort)
	jirl	$ra, $ra, 0
	bltu	$s3, $s0, .LBB1_24
# %bb.6:                                # %.lr.ph
	pcalau12i	$a0, %pc_hi20(mymergesort.work)
	ld.d	$a4, $a0, %pc_lo12(mymergesort.work)
	sub.d	$a1, $s3, $s0
	addi.d	$a1, $a1, 1
	ori	$a3, $zero, 4
	alsl.d	$a2, $s0, $fp, 3
	bltu	$a1, $a3, .LBB1_8
# %bb.7:                                # %vector.memcheck
	sub.d	$a3, $a4, $a2
	ori	$a5, $zero, 32
	bgeu	$a3, $a5, .LBB1_25
.LBB1_8:
	move	$a3, $zero
	move	$a5, $s0
.LBB1_9:                                # %scalar.ph.preheader
	alsl.d	$a4, $a3, $a4, 3
	alsl.d	$a6, $a5, $fp, 3
	sub.d	$a5, $s3, $a5
	addi.d	$a5, $a5, 1
	.p2align	4, , 16
.LBB1_10:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a6, 0
	addi.d	$a3, $a3, 1
	st.d	$a7, $a4, 0
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 8
	bnez	$a5, .LBB1_10
.LBB1_11:                               # %.loopexit87
	addi.w	$a4, $s3, 0
	bgeu	$a4, $s1, .LBB1_15
# %bb.12:                               # %.lr.ph34
	ld.d	$a5, $a0, %pc_lo12(mymergesort.work)
	move	$a4, $zero
	addi.w	$a6, $a3, 0
	.p2align	4, , 16
.LBB1_13:                               # =>This Inner Loop Header: Depth=1
	slli.d	$a7, $a4, 3
	ldx.d	$a7, $a5, $a7
	slli.d	$t0, $s2, 3
	ldx.d	$t0, $fp, $t0
	ld.w	$t1, $a7, 8
	ld.w	$t2, $t0, 8
	slt	$t1, $t2, $t1
	xori	$t2, $t1, 1
	addi.w	$s0, $s0, 1
	masknez	$t0, $t0, $t2
	maskeqz	$a7, $a7, $t2
	or	$a7, $a7, $t0
	add.w	$a4, $a4, $t2
	add.w	$s2, $s2, $t1
	st.d	$a7, $a2, 0
	blt	$s1, $s2, .LBB1_16
# %bb.14:                               #   in Loop: Header=BB1_13 Depth=1
	addi.d	$a2, $a2, 8
	blt	$a4, $a6, .LBB1_13
	b	.LBB1_16
.LBB1_15:
	move	$a4, $zero
.LBB1_16:                               # %.preheader
	addi.w	$a2, $a3, 0
	bge	$a4, $a2, .LBB1_24
# %bb.17:                               # %.lr.ph38
	ld.d	$a0, $a0, %pc_lo12(mymergesort.work)
	addi.w	$a1, $a1, 0
	sub.d	$a1, $a1, $a4
	ori	$a3, $zero, 6
	bltu	$a1, $a3, .LBB1_22
# %bb.18:                               # %vector.memcheck69
	alsl.d	$a3, $s0, $fp, 3
	alsl.d	$a5, $a4, $a0, 3
	sub.d	$a3, $a3, $a5
	ori	$a5, $zero, 32
	bltu	$a3, $a5, .LBB1_22
# %bb.19:                               # %vector.ph73
	slli.d	$a5, $s0, 3
	slli.d	$a6, $a4, 3
	move	$a3, $a1
	bstrins.d	$a3, $zero, 1, 0
	add.d	$s0, $a3, $s0
	add.d	$a4, $a3, $a4
	add.d	$a5, $a5, $fp
	addi.d	$a5, $a5, 16
	add.d	$a6, $a6, $a0
	addi.d	$a6, $a6, 16
	move	$a7, $a3
	.p2align	4, , 16
.LBB1_20:                               # %vector.body76
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, -16
	vld	$vr1, $a6, 0
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a5, $a5, 32
	addi.d	$a7, $a7, -4
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB1_20
# %bb.21:                               # %middle.block83
	beq	$a1, $a3, .LBB1_24
.LBB1_22:                               # %scalar.ph71.preheader
	alsl.d	$a1, $s0, $fp, 3
	alsl.d	$a0, $a4, $a0, 3
	sub.d	$a2, $a2, $a4
	.p2align	4, , 16
.LBB1_23:                               # %scalar.ph71
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	st.d	$a3, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB1_23
.LBB1_24:                               # %.loopexit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB1_25:                               # %vector.ph
	slli.d	$a6, $s0, 3
	move	$a3, $a1
	bstrins.d	$a3, $zero, 1, 0
	add.d	$a5, $a3, $s0
	add.d	$a6, $a6, $fp
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a4, 16
	move	$t0, $a3
	.p2align	4, , 16
.LBB1_26:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, -16
	vld	$vr1, $a6, 0
	vst	$vr0, $a7, -16
	vst	$vr1, $a7, 0
	addi.d	$a6, $a6, 32
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB1_26
# %bb.27:                               # %middle.block
	bne	$a1, $a3, .LBB1_9
	b	.LBB1_11
.Lfunc_end1:
	.size	mymergesort, .Lfunc_end1-mymergesort
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function Falign
.LCPI2_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	Falign
	.p2align	5
	.type	Falign,@function
Falign:                                 # @Falign
# %bb.0:
	addi.d	$sp, $sp, -400
	st.d	$ra, $sp, 392                   # 8-byte Folded Spill
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	st.d	$s0, $sp, 376                   # 8-byte Folded Spill
	st.d	$s1, $sp, 368                   # 8-byte Folded Spill
	st.d	$s2, $sp, 360                   # 8-byte Folded Spill
	st.d	$s3, $sp, 352                   # 8-byte Folded Spill
	st.d	$s4, $sp, 344                   # 8-byte Folded Spill
	st.d	$s5, $sp, 336                   # 8-byte Folded Spill
	st.d	$s6, $sp, 328                   # 8-byte Folded Spill
	st.d	$s7, $sp, 320                   # 8-byte Folded Spill
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 304                  # 8-byte Folded Spill
	move	$s7, $a0
	ld.d	$a0, $a0, 0
	st.d	$a7, $sp, 152                   # 8-byte Folded Spill
	move	$s4, $a6
	move	$fp, $a5
	move	$s2, $a4
	st.d	$a3, $sp, 216                   # 8-byte Folded Spill
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	move	$s0, $a1
	st.w	$zero, $sp, 296
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a1, $s0, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.w	$s0, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.w	$a1, $a0, 0
	slt	$a0, $a1, $s0
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	masknez	$a1, $a1, $a0
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	maskeqz	$a0, $s0, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	move	$s5, $a1
	addi.w	$s8, $a1, 0
	slli.d	$a1, $a1, 1
	bge	$a0, $s8, .LBB2_1
# %bb.2:
	pcalau12i	$s0, %pc_hi20(Falign.prevalloclen)
	ld.w	$a0, $s0, %pc_lo12(Falign.prevalloclen)
	pcalau12i	$s3, %pc_hi20(Falign.result2)
	pcalau12i	$a1, %pc_hi20(Falign.result1)
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(Falign.tmpres1)
	pcalau12i	$a1, %pc_hi20(Falign.tmpres2)
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s5, $sp, 248                   # 8-byte Folded Spill
	beq	$a0, $s4, .LBB2_6
# %bb.3:
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_5
# %bb.4:
	ld.d	$a0, $s5, %pc_lo12(Falign.result1)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(Falign.result2)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(Falign.tmpres1)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(Falign.tmpres2)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
.LBB2_5:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s1, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s1, 0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	st.d	$a0, $s5, %pc_lo12(Falign.result1)
	move	$a0, $a1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	st.d	$a0, $s3, %pc_lo12(Falign.result2)
	move	$a0, $a1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(Falign.tmpres1)
	move	$a0, $a1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(Falign.tmpres2)
	st.w	$s4, $s0, %pc_lo12(Falign.prevalloclen)
	ld.d	$s5, $sp, 248                   # 8-byte Folded Reload
.LBB2_6:
	st.d	$s4, $sp, 144                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$s4, %pc_hi20(Falign.localalloclen)
	ld.w	$a0, $s4, %pc_lo12(Falign.localalloclen)
	pcalau12i	$a1, %pc_hi20(Falign.kouho)
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	lu12i.w	$s6, 24
	pcalau12i	$s1, %pc_hi20(Falign.cut1)
	pcalau12i	$a1, %pc_hi20(Falign.cut2)
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Falign.tmpptr1)
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Falign.tmpptr2)
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Falign.segment)
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Falign.segment1)
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Falign.segment2)
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Falign.sortedseg1)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Falign.sortedseg2)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	beqz	$a0, .LBB2_15
# %bb.7:
	bge	$a0, $s8, .LBB2_22
.LBB2_8:
	beqz	$a0, .LBB2_12
# %bb.9:
	pcalau12i	$a0, %got_pc_hi20(kobetsubunkatsu)
	ld.d	$a0, $a0, %got_pc_lo12(kobetsubunkatsu)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB2_11
# %bb.10:
	pcalau12i	$a0, %pc_hi20(Falign.seqVector1)
	ld.d	$a0, $a0, %pc_lo12(Falign.seqVector1)
	pcaddu18i	$ra, %call36(FreeFukusosuuMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(Falign.seqVector2)
	ld.d	$a0, $a0, %pc_lo12(Falign.seqVector2)
	pcaddu18i	$ra, %call36(FreeFukusosuuMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(Falign.naisekiNoWa)
	ld.d	$a0, $a0, %pc_lo12(Falign.naisekiNoWa)
	pcaddu18i	$ra, %call36(FreeFukusosuuVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(Falign.naiseki)
	ld.d	$a0, $a0, %pc_lo12(Falign.naiseki)
	pcaddu18i	$ra, %call36(FreeFukusosuuMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(Falign.soukan)
	ld.d	$a0, $a0, %pc_lo12(Falign.soukan)
	pcaddu18i	$ra, %call36(FreeDoubleVec)
	jirl	$ra, $ra, 0
.LBB2_11:
	pcalau12i	$a0, %pc_hi20(Falign.tmpseq1)
	ld.d	$a0, $a0, %pc_lo12(Falign.tmpseq1)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(Falign.tmpseq2)
	ld.d	$a0, $a0, %pc_lo12(Falign.tmpseq2)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
.LBB2_12:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s0, 0
	move	$a1, $s8
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	pcalau12i	$a2, %pc_hi20(Falign.tmpseq1)
	st.d	$a0, $a2, %pc_lo12(Falign.tmpseq1)
	move	$a0, $a1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(Falign.tmpseq2)
	st.d	$a0, $a1, %pc_lo12(Falign.tmpseq2)
	pcalau12i	$a0, %got_pc_hi20(kobetsubunkatsu)
	ld.d	$a0, $a0, %got_pc_lo12(kobetsubunkatsu)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB2_14
# %bb.13:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateFukusosuuVec)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(n20or4or2)
	ld.w	$a1, $s0, %pc_lo12(n20or4or2)
	pcalau12i	$a2, %pc_hi20(Falign.naisekiNoWa)
	st.d	$a0, $a2, %pc_lo12(Falign.naisekiNoWa)
	move	$a0, $a1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(AllocateFukusosuuMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, %pc_lo12(n20or4or2)
	pcalau12i	$a2, %pc_hi20(Falign.naiseki)
	st.d	$a0, $a2, %pc_lo12(Falign.naiseki)
	addi.w	$a0, $a1, 1
	addi.w	$s3, $s5, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateFukusosuuMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, %pc_lo12(n20or4or2)
	pcalau12i	$a2, %pc_hi20(Falign.seqVector1)
	st.d	$a0, $a2, %pc_lo12(Falign.seqVector1)
	addi.w	$a0, $a1, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateFukusosuuMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(Falign.seqVector2)
	st.d	$a0, $a1, %pc_lo12(Falign.seqVector2)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateDoubleVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(Falign.soukan)
	st.d	$a0, $a1, %pc_lo12(Falign.soukan)
.LBB2_14:
	st.w	$s5, $s4, %pc_lo12(Falign.localalloclen)
	bgtz	$s2, .LBB2_23
	b	.LBB2_25
.LBB2_15:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	pcalau12i	$a2, %pc_hi20(Falign.sgap1)
	st.d	$a0, $a2, %pc_lo12(Falign.sgap1)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	pcalau12i	$a2, %pc_hi20(Falign.egap1)
	st.d	$a0, $a2, %pc_lo12(Falign.egap1)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	pcalau12i	$a2, %pc_hi20(Falign.sgap2)
	st.d	$a0, $a2, %pc_lo12(Falign.sgap2)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(Falign.egap2)
	st.d	$a0, $a1, %pc_lo12(Falign.egap2)
	ori	$a0, $zero, 20
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Falign.kouho)
	ori	$s3, $s6, 1696
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, %pc_lo12(Falign.cut1)
	move	$a0, $s3
	move	$s1, $s3
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(Falign.cut2)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(Falign.tmpptr1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Falign.tmpptr2)
	ori	$a1, $zero, 48
	move	$a0, $s3
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	st.d	$s0, $a0, %pc_lo12(Falign.segment)
	ori	$a1, $zero, 48
	move	$a0, $s3
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$s6, $a0, %pc_lo12(Falign.segment1)
	ori	$a1, $zero, 48
	move	$a0, $s3
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$s3, $a0, %pc_lo12(Falign.segment2)
	ori	$a1, $zero, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$s5, $a0, %pc_lo12(Falign.sortedseg1)
	ori	$a1, $zero, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Falign.sortedseg2)
	beqz	$s0, .LBB2_20
# %bb.16:
	beqz	$s6, .LBB2_20
# %bb.17:
	beqz	$s3, .LBB2_20
# %bb.18:
	beqz	$s5, .LBB2_20
# %bb.19:
	bnez	$a0, .LBB2_21
.LBB2_20:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB2_21:                               # %thread-pre-split
	pcalau12i	$a0, %got_pc_hi20(scoremtx)
	ld.d	$a0, $a0, %got_pc_lo12(scoremtx)
	ld.w	$a0, $a0, 0
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %got_pc_hi20(fftscore)
	ld.d	$a1, $a1, %got_pc_lo12(fftscore)
	ld.w	$a1, $a1, 0
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 1
	masknez	$a3, $a2, $a1
	ori	$a4, $zero, 20
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a3
	masknez	$a1, $a1, $a0
	maskeqz	$a2, $a2, $a0
	ld.w	$a0, $s4, %pc_lo12(Falign.localalloclen)
	or	$a1, $a2, $a1
	pcalau12i	$a2, %pc_hi20(n20or4or2)
	st.w	$a1, $a2, %pc_lo12(n20or4or2)
	ld.d	$s5, $sp, 248                   # 8-byte Folded Reload
	lu12i.w	$s6, 24
	blt	$a0, $s8, .LBB2_8
.LBB2_22:
	blez	$s2, .LBB2_25
.LBB2_23:                               # %.lr.ph
	pcalau12i	$a0, %pc_hi20(Falign.tmpseq1)
	ld.d	$s0, $a0, %pc_lo12(Falign.tmpseq1)
	move	$s1, $s2
	move	$s3, $s7
	.p2align	4, , 16
.LBB2_24:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s3, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 8
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	bnez	$s1, .LBB2_24
.LBB2_25:                               # %.preheader460
	blez	$fp, .LBB2_28
# %bb.26:                               # %.lr.ph467
	pcalau12i	$a0, %pc_hi20(Falign.tmpseq2)
	ld.d	$s0, $a0, %pc_lo12(Falign.tmpseq2)
	move	$s1, $fp
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_27:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s3, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 8
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	bnez	$s1, .LBB2_27
.LBB2_28:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(kobetsubunkatsu)
	ld.d	$a0, $a0, %got_pc_lo12(kobetsubunkatsu)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	st.d	$s7, $sp, 264                   # 8-byte Folded Spill
	beqz	$a0, .LBB2_30
# %bb.29:                               # %.thread
	st.w	$zero, $sp, 300
	b	.LBB2_103
.LBB2_30:
	pcalau12i	$a0, %got_pc_hi20(fftkeika)
	ld.d	$a0, $a0, %got_pc_lo12(fftkeika)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB2_232
.LBB2_31:
	pcalau12i	$s4, %pc_hi20(n20or4or2)
	ld.w	$s5, $s4, %pc_lo12(n20or4or2)
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	blez	$s5, .LBB2_36
# %bb.32:                               # %.lr.ph470
	pcalau12i	$a0, %pc_hi20(Falign.seqVector1)
	ld.d	$s0, $a0, %pc_lo12(Falign.seqVector1)
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	slli.d	$s3, $a0, 4
	move	$s1, $s5
	b	.LBB2_34
	.p2align	4, , 16
.LBB2_33:                               # %vec_init.exit
                                        #   in Loop: Header=BB2_34 Depth=1
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	beqz	$s1, .LBB2_36
.LBB2_34:                               # =>This Inner Loop Header: Depth=1
	beqz	$s8, .LBB2_33
# %bb.35:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB2_34 Depth=1
	ld.d	$a0, $s0, 0
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB2_33
.LBB2_36:                               # %._crit_edge471
	pcalau12i	$a0, %got_pc_hi20(fftscore)
	ld.d	$a0, $a0, %got_pc_lo12(fftscore)
	ld.w	$s1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(scoremtx)
	ld.d	$s0, $a0, %got_pc_lo12(scoremtx)
	beqz	$s1, .LBB2_46
# %bb.37:                               # %._crit_edge471
	ld.w	$a0, $s0, 0
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB2_46
# %bb.38:                               # %.preheader456
	blez	$s2, .LBB2_55
# %bb.39:                               # %.lr.ph475
	pcalau12i	$a0, %pc_hi20(Falign.seqVector1)
	ld.d	$a0, $a0, %pc_lo12(Falign.seqVector1)
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(Falign.tmpseq1)
	ld.d	$a0, $a0, %pc_lo12(Falign.tmpseq1)
	addi.d	$a1, $a1, 8
	pcalau12i	$a2, %got_pc_hi20(amino_n)
	ld.d	$a2, $a2, %got_pc_lo12(amino_n)
	ori	$a3, $zero, 20
	pcalau12i	$a4, %got_pc_hi20(polarity)
	ld.d	$a4, $a4, %got_pc_lo12(polarity)
	pcalau12i	$a5, %got_pc_hi20(volume)
	ld.d	$a5, $a5, %got_pc_lo12(volume)
	move	$a6, $zero
	b	.LBB2_41
	.p2align	4, , 16
.LBB2_40:                               # %seq_vec_5.exit
                                        #   in Loop: Header=BB2_41 Depth=1
	addi.d	$a6, $a6, 1
	beq	$a6, $s2, .LBB2_55
.LBB2_41:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_44 Depth 2
	slli.d	$t0, $a6, 3
	ldx.d	$a7, $a0, $t0
	ld.bu	$t1, $a7, 0
	beqz	$t1, .LBB2_40
# %bb.42:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB2_41 Depth=1
	ld.d	$t2, $sp, 208                   # 8-byte Folded Reload
	fldx.d	$fa0, $t2, $t0
	addi.d	$a7, $a7, 1
	move	$t0, $a1
	b	.LBB2_44
	.p2align	4, , 16
.LBB2_43:                               #   in Loop: Header=BB2_44 Depth=2
	ld.bu	$t1, $a7, 0
	addi.d	$t0, $t0, 16
	addi.d	$a7, $a7, 1
	beqz	$t1, .LBB2_40
.LBB2_44:                               # %.lr.ph.i
                                        #   Parent Loop BB2_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$t1, $t1
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a2, $t1
	blt	$a3, $t1, .LBB2_43
# %bb.45:                               #   in Loop: Header=BB2_44 Depth=2
	slli.d	$t1, $t1, 3
	fldx.d	$fa1, $a4, $t1
	fld.d	$fa2, $t0, -8
	fmadd.d	$fa1, $fa0, $fa1, $fa2
	fst.d	$fa1, $t0, -8
	fldx.d	$fa1, $a5, $t1
	fld.d	$fa2, $t0, 0
	fmadd.d	$fa1, $fa0, $fa1, $fa2
	fst.d	$fa1, $t0, 0
	b	.LBB2_43
.LBB2_46:                               # %.preheader458
	blez	$s2, .LBB2_55
# %bb.47:                               # %.lr.ph473
	pcalau12i	$a0, %pc_hi20(Falign.seqVector1)
	ld.d	$a0, $a0, %pc_lo12(Falign.seqVector1)
	pcalau12i	$a1, %pc_hi20(Falign.tmpseq1)
	ld.d	$a1, $a1, %pc_lo12(Falign.tmpseq1)
	pcalau12i	$a2, %got_pc_hi20(amino_n)
	ld.d	$a2, $a2, %got_pc_lo12(amino_n)
	move	$a3, $zero
	b	.LBB2_49
	.p2align	4, , 16
.LBB2_48:                               # %seq_vec_3.exit
                                        #   in Loop: Header=BB2_49 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $s2, .LBB2_55
.LBB2_49:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_52 Depth 2
	slli.d	$a4, $a3, 3
	ldx.d	$a5, $a1, $a4
	ld.bu	$a6, $a5, 0
	beqz	$a6, .LBB2_48
# %bb.50:                               # %.lr.ph.i412.preheader
                                        #   in Loop: Header=BB2_49 Depth=1
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	fldx.d	$fa0, $a7, $a4
	move	$a4, $zero
	addi.d	$a5, $a5, 1
	b	.LBB2_52
	.p2align	4, , 16
.LBB2_51:                               #   in Loop: Header=BB2_52 Depth=2
	ld.bu	$a6, $a5, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 1
	beqz	$a6, .LBB2_48
.LBB2_52:                               # %.lr.ph.i412
                                        #   Parent Loop BB2_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$a6, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a2, $a6
	bltz	$a6, .LBB2_51
# %bb.53:                               # %.lr.ph.i412
                                        #   in Loop: Header=BB2_52 Depth=2
	bge	$a6, $s5, .LBB2_51
# %bb.54:                               #   in Loop: Header=BB2_52 Depth=2
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a0, $a6
	fldx.d	$fa1, $a6, $a4
	fadd.d	$fa1, $fa0, $fa1
	fstx.d	$fa1, $a6, $a4
	b	.LBB2_51
.LBB2_55:                               # %.loopexit457
	st.d	$s4, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	bstrpick.d	$s4, $a0, 31, 31
	blez	$s5, .LBB2_60
# %bb.56:                               # %.lr.ph478
	pcalau12i	$a0, %pc_hi20(Falign.seqVector2)
	ld.d	$s6, $a0, %pc_lo12(Falign.seqVector2)
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	slli.d	$s3, $a0, 4
	move	$s7, $s5
	b	.LBB2_58
	.p2align	4, , 16
.LBB2_57:                               # %vec_init.exit416
                                        #   in Loop: Header=BB2_58 Depth=1
	addi.d	$s7, $s7, -1
	addi.d	$s6, $s6, 8
	beqz	$s7, .LBB2_60
.LBB2_58:                               # =>This Inner Loop Header: Depth=1
	beqz	$s8, .LBB2_57
# %bb.59:                               # %.lr.ph.preheader.i415
                                        #   in Loop: Header=BB2_58 Depth=1
	ld.d	$a0, $s6, 0
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB2_57
.LBB2_60:                               # %._crit_edge479
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	add.w	$a2, $a0, $s4
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	beqz	$s1, .LBB2_70
# %bb.61:                               # %._crit_edge479
	ld.w	$a0, $s0, 0
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB2_70
# %bb.62:                               # %.preheader452
	ld.d	$s7, $sp, 264                   # 8-byte Folded Reload
	blez	$fp, .LBB2_79
# %bb.63:                               # %.lr.ph483
	pcalau12i	$a0, %pc_hi20(Falign.seqVector2)
	ld.d	$a0, $a0, %pc_lo12(Falign.seqVector2)
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(Falign.tmpseq2)
	ld.d	$a0, $a0, %pc_lo12(Falign.tmpseq2)
	addi.d	$a1, $a1, 8
	pcalau12i	$a2, %got_pc_hi20(amino_n)
	ld.d	$a2, $a2, %got_pc_lo12(amino_n)
	ori	$a3, $zero, 20
	pcalau12i	$a4, %got_pc_hi20(polarity)
	ld.d	$a4, $a4, %got_pc_lo12(polarity)
	pcalau12i	$a5, %got_pc_hi20(volume)
	ld.d	$a5, $a5, %got_pc_lo12(volume)
	move	$a6, $zero
	b	.LBB2_65
	.p2align	4, , 16
.LBB2_64:                               # %seq_vec_5.exit422
                                        #   in Loop: Header=BB2_65 Depth=1
	addi.d	$a6, $a6, 1
	beq	$a6, $fp, .LBB2_79
.LBB2_65:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_68 Depth 2
	slli.d	$t0, $a6, 3
	ldx.d	$a7, $a0, $t0
	ld.bu	$t1, $a7, 0
	beqz	$t1, .LBB2_64
# %bb.66:                               # %.lr.ph.i418.preheader
                                        #   in Loop: Header=BB2_65 Depth=1
	ld.d	$t2, $sp, 216                   # 8-byte Folded Reload
	fldx.d	$fa0, $t2, $t0
	addi.d	$a7, $a7, 1
	move	$t0, $a1
	b	.LBB2_68
	.p2align	4, , 16
.LBB2_67:                               #   in Loop: Header=BB2_68 Depth=2
	ld.bu	$t1, $a7, 0
	addi.d	$t0, $t0, 16
	addi.d	$a7, $a7, 1
	beqz	$t1, .LBB2_64
.LBB2_68:                               # %.lr.ph.i418
                                        #   Parent Loop BB2_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$t1, $t1
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a2, $t1
	blt	$a3, $t1, .LBB2_67
# %bb.69:                               #   in Loop: Header=BB2_68 Depth=2
	slli.d	$t1, $t1, 3
	fldx.d	$fa1, $a4, $t1
	fld.d	$fa2, $t0, -8
	fmadd.d	$fa1, $fa0, $fa1, $fa2
	fst.d	$fa1, $t0, -8
	fldx.d	$fa1, $a5, $t1
	fld.d	$fa2, $t0, 0
	fmadd.d	$fa1, $fa0, $fa1, $fa2
	fst.d	$fa1, $t0, 0
	b	.LBB2_67
.LBB2_70:                               # %.preheader454
	ld.d	$s7, $sp, 264                   # 8-byte Folded Reload
	blez	$fp, .LBB2_79
# %bb.71:                               # %.lr.ph481
	pcalau12i	$a0, %pc_hi20(Falign.seqVector2)
	ld.d	$a0, $a0, %pc_lo12(Falign.seqVector2)
	pcalau12i	$a1, %pc_hi20(Falign.tmpseq2)
	ld.d	$a1, $a1, %pc_lo12(Falign.tmpseq2)
	pcalau12i	$a2, %got_pc_hi20(amino_n)
	ld.d	$a2, $a2, %got_pc_lo12(amino_n)
	move	$a3, $zero
	b	.LBB2_73
	.p2align	4, , 16
.LBB2_72:                               # %seq_vec_3.exit430
                                        #   in Loop: Header=BB2_73 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $fp, .LBB2_79
.LBB2_73:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_76 Depth 2
	slli.d	$a4, $a3, 3
	ldx.d	$a5, $a1, $a4
	ld.bu	$a6, $a5, 0
	beqz	$a6, .LBB2_72
# %bb.74:                               # %.lr.ph.i424.preheader
                                        #   in Loop: Header=BB2_73 Depth=1
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	fldx.d	$fa0, $a7, $a4
	move	$a4, $zero
	addi.d	$a5, $a5, 1
	b	.LBB2_76
	.p2align	4, , 16
.LBB2_75:                               #   in Loop: Header=BB2_76 Depth=2
	ld.bu	$a6, $a5, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 1
	beqz	$a6, .LBB2_72
.LBB2_76:                               # %.lr.ph.i424
                                        #   Parent Loop BB2_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$a6, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a2, $a6
	bltz	$a6, .LBB2_75
# %bb.77:                               # %.lr.ph.i424
                                        #   in Loop: Header=BB2_76 Depth=2
	bge	$a6, $s5, .LBB2_75
# %bb.78:                               #   in Loop: Header=BB2_76 Depth=2
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a0, $a6
	fldx.d	$fa1, $a6, $a4
	fadd.d	$fa1, $fa0, $fa1
	fstx.d	$fa1, $a6, $a4
	b	.LBB2_75
.LBB2_79:                               # %.loopexit453
	pcalau12i	$s0, %pc_hi20(Falign.naiseki)
	blez	$s5, .LBB2_90
# %bb.80:                               # %.lr.ph486.preheader
	move	$s3, $zero
	move	$s4, $zero
	pcalau12i	$s1, %pc_hi20(Falign.seqVector2)
	pcalau12i	$s6, %pc_hi20(Falign.seqVector1)
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_81:                               # %.lr.ph486
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, %pc_lo12(Falign.seqVector2)
	ldx.d	$a1, $a0, $s3
	sltui	$a2, $s4, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(fft)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(Falign.seqVector1)
	ldx.d	$a1, $a0, $s3
	move	$a0, $s8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fft)
	jirl	$ra, $ra, 0
	ld.w	$s5, $s7, %pc_lo12(n20or4or2)
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 8
	blt	$s4, $s5, .LBB2_81
# %bb.82:                               # %.preheader451
	blez	$s5, .LBB2_89
# %bb.83:                               # %.preheader450.lr.ph
	move	$s3, $zero
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	slli.d	$s4, $a0, 4
	ld.d	$s7, $sp, 264                   # 8-byte Folded Reload
	b	.LBB2_85
	.p2align	4, , 16
.LBB2_84:                               # %._crit_edge489
                                        #   in Loop: Header=BB2_85 Depth=1
	addi.d	$s3, $s3, 1
	bge	$s3, $s5, .LBB2_90
.LBB2_85:                               # %.preheader450
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_87 Depth 2
	blez	$s8, .LBB2_84
# %bb.86:                               # %.lr.ph488.preheader
                                        #   in Loop: Header=BB2_85 Depth=1
	move	$s5, $zero
	slli.d	$s7, $s3, 3
	.p2align	4, , 16
.LBB2_87:                               # %.lr.ph488
                                        #   Parent Loop BB2_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, %pc_lo12(Falign.naiseki)
	ld.d	$a1, $s6, %pc_lo12(Falign.seqVector1)
	ld.d	$a2, $s1, %pc_lo12(Falign.seqVector2)
	ldx.d	$a0, $a0, $s7
	ldx.d	$a1, $a1, $s7
	ldx.d	$a2, $a2, $s7
	add.d	$a0, $a0, $s5
	add.d	$a1, $a1, $s5
	add.d	$a2, $a2, $s5
	pcaddu18i	$ra, %call36(calcNaiseki)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 16
	bne	$s4, $s5, .LBB2_87
# %bb.88:                               # %._crit_edge489.loopexit
                                        #   in Loop: Header=BB2_85 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$s5, $a0, %pc_lo12(n20or4or2)
	ld.d	$s7, $sp, 264                   # 8-byte Folded Reload
	b	.LBB2_84
.LBB2_89:
	ld.d	$s7, $sp, 264                   # 8-byte Folded Reload
.LBB2_90:                               # %.preheader449
	pcalau12i	$s4, %pc_hi20(Falign.naisekiNoWa)
	ld.d	$a1, $s4, %pc_lo12(Falign.naisekiNoWa)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	srai.d	$s1, $a0, 1
	lu12i.w	$s6, 24
	blez	$s8, .LBB2_96
# %bb.91:                               # %.lr.ph498
	ld.d	$a0, $s0, %pc_lo12(Falign.naiseki)
	move	$a2, $zero
	bstrpick.d	$a3, $s5, 31, 0
	vrepli.b	$vr0, 0
	b	.LBB2_93
	.p2align	4, , 16
.LBB2_92:                               # %._crit_edge495
                                        #   in Loop: Header=BB2_93 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $s8, .LBB2_96
.LBB2_93:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_95 Depth 2
	slli.d	$a4, $a2, 4
	vstx	$vr0, $a1, $a4
	blez	$s5, .LBB2_92
# %bb.94:                               # %.lr.ph494.preheader
                                        #   in Loop: Header=BB2_93 Depth=1
	alsl.d	$a5, $a2, $a1, 4
	move	$a6, $a3
	move	$a7, $a0
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB2_95:                               # %.lr.ph494
                                        #   Parent Loop BB2_93 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $a7, 0
	vldx	$vr2, $t0, $a4
	vfadd.d	$vr1, $vr2, $vr1
	vst	$vr1, $a5, 0
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 8
	bnez	$a6, .LBB2_95
	b	.LBB2_92
.LBB2_96:                               # %._crit_edge499
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	sub.w	$a0, $zero, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fft)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(Falign.soukan)
	ld.d	$a2, $a0, %pc_lo12(Falign.soukan)
	addi.w	$a1, $zero, -2
	addi.d	$a0, $s1, 1
	bge	$a1, $s8, .LBB2_99
# %bb.97:                               # %.lr.ph503
	ld.d	$a3, $s4, %pc_lo12(Falign.naisekiNoWa)
	bstrpick.d	$a1, $a0, 31, 0
	alsl.d	$a3, $s1, $a3, 4
	move	$a4, $a2
	.p2align	4, , 16
.LBB2_98:                               # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a3, 0
	fst.d	$fa0, $a4, 0
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 8
	bnez	$a1, .LBB2_98
.LBB2_99:                               # %.preheader448
	bge	$a0, $s8, .LBB2_102
# %bb.100:                              # %.lr.ph506
	ld.d	$a0, $s4, %pc_lo12(Falign.naisekiNoWa)
	addi.w	$a1, $s0, -1
	alsl.d	$a3, $s1, $a2, 3
	addi.d	$a3, $a3, 8
	nor	$a4, $s1, $zero
	add.d	$a4, $a4, $s8
	.p2align	4, , 16
.LBB2_101:                              # =>This Inner Loop Header: Depth=1
	slli.d	$a5, $a1, 4
	fldx.d	$fa0, $a0, $a5
	fst.d	$fa0, $a3, 0
	addi.w	$a1, $a1, -1
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB2_101
.LBB2_102:                              # %._crit_edge507
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign.kouho)
	ori	$a1, $zero, 20
	ori	$s3, $zero, 20
	move	$a3, $s8
	pcaddu18i	$ra, %call36(getKouho)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	st.w	$zero, $sp, 300
	beqz	$a0, .LBB2_104
.LBB2_103:
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign.kouho)
	st.w	$zero, $a0, 0
	ori	$s3, $zero, 1
.LBB2_104:
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	sub.w	$a7, $zero, $a0
	ori	$a0, $s6, 1694
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	move	$s0, $zero
	ori	$s1, $zero, 48
	st.d	$s3, $sp, 168                   # 8-byte Folded Spill
	st.d	$a7, $sp, 128                   # 8-byte Folded Spill
	b	.LBB2_106
	.p2align	4, , 16
.LBB2_105:                              # %.loopexit447
                                        #   in Loop: Header=BB2_106 Depth=1
	addi.d	$s0, $s0, 1
	beq	$s0, $s3, .LBB2_115
.LBB2_106:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_114 Depth 2
                                        #     Child Loop BB2_113 Depth 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign.kouho)
	slli.d	$a1, $s0, 2
	ldx.w	$s6, $a0, $a1
	bge	$a7, $s6, .LBB2_105
# %bb.107:                              #   in Loop: Header=BB2_106 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	bge	$s6, $a0, .LBB2_105
# %bb.108:                              #   in Loop: Header=BB2_106 Depth=1
	move	$a3, $s7
	ld.d	$s8, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a5, $s8, %pc_lo12(Falign.tmpptr1)
	ld.d	$s3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a6, $s3, %pc_lo12(Falign.tmpptr2)
	move	$a0, $s6
	move	$a1, $s2
	move	$a2, $fp
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(zurasu2)
	jirl	$ra, $ra, 0
	ld.w	$s4, $sp, 300
	ld.d	$a2, $s8, %pc_lo12(Falign.tmpptr1)
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign.segment)
	ld.d	$a3, $s3, %pc_lo12(Falign.tmpptr2)
	slli.d	$a1, $s4, 5
	alsl.d	$a1, $s4, $a1, 4
	add.d	$a6, $a0, $a1
	move	$a0, $s2
	move	$s5, $fp
	move	$a1, $fp
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(alignableReagion)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	add.w	$a0, $s4, $a0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB2_110
# %bb.109:                              #   in Loop: Header=BB2_106 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB2_110:                              #   in Loop: Header=BB2_106 Depth=1
	beqz	$s8, .LBB2_116
# %bb.111:                              # %.preheader446
                                        #   in Loop: Header=BB2_106 Depth=1
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	move	$fp, $s5
	ld.d	$a7, $sp, 128                   # 8-byte Folded Reload
	blez	$s8, .LBB2_105
# %bb.112:                              # %.lr.ph508
                                        #   in Loop: Header=BB2_106 Depth=1
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign.segment)
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Falign.segment1)
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Falign.segment2)
	blez	$s6, .LBB2_114
	.p2align	4, , 16
.LBB2_113:                              # %.lr.ph508.split.us
                                        #   Parent Loop BB2_106 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mul.d	$a3, $s4, $s1
	ldx.w	$a4, $a0, $a3
	stx.w	$a4, $a1, $a3
	ld.w	$a3, $sp, 300
	mul.d	$a3, $a3, $s1
	add.d	$a4, $a0, $a3
	ld.w	$a4, $a4, 4
	add.d	$a3, $a1, $a3
	st.w	$a4, $a3, 4
	ld.w	$a3, $sp, 300
	mul.d	$a3, $a3, $s1
	add.d	$a4, $a0, $a3
	ld.w	$a4, $a4, 8
	add.d	$a3, $a1, $a3
	st.w	$a4, $a3, 8
	ld.w	$a3, $sp, 300
	mul.d	$a3, $a3, $s1
	ldx.w	$a4, $a0, $a3
	add.d	$a4, $a4, $s6
	stx.w	$a4, $a2, $a3
	ld.w	$a4, $sp, 300
	mul.d	$a4, $a4, $s1
	add.d	$a5, $a0, $a4
	ld.w	$a5, $a5, 4
	add.d	$a5, $a5, $s6
	add.d	$a4, $a2, $a4
	st.w	$a5, $a4, 4
	ld.w	$a4, $sp, 300
	mul.d	$a4, $a4, $s1
	add.d	$a5, $a0, $a4
	ld.w	$a5, $a5, 8
	add.d	$a6, $a0, $a3
	fld.d	$fa0, $a6, 16
	add.d	$a5, $a5, $s6
	add.d	$a4, $a2, $a4
	st.w	$a5, $a4, 8
	ld.w	$a4, $sp, 300
	add.d	$a3, $a1, $a3
	fst.d	$fa0, $a3, 16
	mul.d	$a3, $a4, $s1
	add.d	$a5, $a0, $a3
	fld.d	$fa0, $a5, 16
	add.d	$a5, $a2, $a3
	fst.d	$fa0, $a5, 16
	add.d	$a3, $a1, $a3
	st.d	$a5, $a3, 32
	st.d	$a3, $a5, 32
	addi.w	$s4, $a4, 1
	addi.w	$s8, $s8, -1
	st.w	$s4, $sp, 300
	bnez	$s8, .LBB2_113
	b	.LBB2_105
	.p2align	4, , 16
.LBB2_114:                              # %.lr.ph508.split
                                        #   Parent Loop BB2_106 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mul.d	$a3, $s4, $s1
	ldx.w	$a4, $a0, $a3
	sub.d	$a4, $a4, $s6
	stx.w	$a4, $a1, $a3
	ld.w	$a3, $sp, 300
	mul.d	$a3, $a3, $s1
	add.d	$a4, $a0, $a3
	ld.w	$a4, $a4, 4
	sub.d	$a4, $a4, $s6
	add.d	$a3, $a1, $a3
	st.w	$a4, $a3, 4
	ld.w	$a3, $sp, 300
	mul.d	$a3, $a3, $s1
	add.d	$a4, $a0, $a3
	ld.w	$a4, $a4, 8
	sub.d	$a4, $a4, $s6
	add.d	$a3, $a1, $a3
	st.w	$a4, $a3, 8
	ld.w	$a3, $sp, 300
	mul.d	$a3, $a3, $s1
	ldx.w	$a4, $a0, $a3
	stx.w	$a4, $a2, $a3
	ld.w	$a4, $sp, 300
	mul.d	$a4, $a4, $s1
	add.d	$a5, $a0, $a4
	ld.w	$a5, $a5, 4
	add.d	$a4, $a2, $a4
	st.w	$a5, $a4, 4
	ld.w	$a4, $sp, 300
	mul.d	$a4, $a4, $s1
	add.d	$a5, $a0, $a4
	ld.w	$a5, $a5, 8
	add.d	$a6, $a0, $a3
	fld.d	$fa0, $a6, 16
	add.d	$a4, $a2, $a4
	st.w	$a5, $a4, 8
	ld.w	$a4, $sp, 300
	add.d	$a3, $a1, $a3
	fst.d	$fa0, $a3, 16
	mul.d	$a3, $a4, $s1
	add.d	$a5, $a0, $a3
	fld.d	$fa0, $a5, 16
	add.d	$a5, $a2, $a3
	fst.d	$fa0, $a5, 16
	add.d	$a3, $a1, $a3
	st.d	$a5, $a3, 32
	st.d	$a3, $a5, 32
	addi.w	$s4, $a4, 1
	addi.w	$s8, $s8, -1
	st.w	$s4, $sp, 300
	bnez	$s8, .LBB2_114
	b	.LBB2_105
.LBB2_115:                              # %.loopexit447._crit_edge
	ld.w	$s4, $sp, 300
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	beqz	$s4, .LBB2_117
	b	.LBB2_119
.LBB2_116:
	move	$fp, $s5
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	bnez	$s4, .LBB2_119
.LBB2_117:                              # %split
	pcalau12i	$a0, %got_pc_hi20(fftNoAnchStop)
	ld.d	$a0, $a0, %got_pc_lo12(fftNoAnchStop)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB2_119
# %bb.118:                              # %.thread750
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, %pc_lo12(Falign.sortedseg1)
	b	.LBB2_128
.LBB2_119:
	ld.d	$a2, $s1, %pc_lo12(Falign.sortedseg1)
	blez	$s4, .LBB2_128
# %bb.120:                              # %.lr.ph512
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Falign.segment1)
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(Falign.segment2)
	ld.d	$a0, $s0, %pc_lo12(Falign.sortedseg2)
	ori	$a5, $zero, 4
	move	$a4, $zero
	bltu	$s4, $a5, .LBB2_125
# %bb.121:                              # %.lr.ph512
	sub.d	$a5, $a0, $a2
	ori	$a6, $zero, 32
	bltu	$a5, $a6, .LBB2_125
# %bb.122:                              # %vector.ph
	move	$a5, $zero
	bstrpick.d	$a4, $s4, 30, 2
	slli.d	$a4, $a4, 2
	pcalau12i	$a6, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a6, %pc_lo12(.LCPI2_0)
	slli.d	$a6, $s4, 3
	bstrpick.d	$a6, $a6, 33, 5
	slli.d	$a6, $a6, 5
	vreplgr2vr.d	$vr1, $a1
	vrepli.d	$vr2, 48
	vrepli.d	$vr3, 96
	vreplgr2vr.d	$vr4, $a3
	.p2align	4, , 16
.LBB2_123:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vori.b	$vr5, $vr1, 0
	vmadd.d	$vr5, $vr0, $vr2
	vori.b	$vr6, $vr3, 0
	vmadd.d	$vr6, $vr0, $vr2
	vadd.d	$vr7, $vr1, $vr6
	add.d	$a7, $a2, $a5
	vstx	$vr5, $a2, $a5
	vst	$vr7, $a7, 16
	vori.b	$vr5, $vr4, 0
	vmadd.d	$vr5, $vr0, $vr2
	vadd.d	$vr6, $vr4, $vr6
	add.d	$a7, $a0, $a5
	vstx	$vr5, $a0, $a5
	vst	$vr6, $a7, 16
	addi.d	$a5, $a5, 32
	vaddi.du	$vr0, $vr0, 4
	bne	$a6, $a5, .LBB2_123
# %bb.124:                              # %middle.block
	ori	$s8, $zero, 1
	beq	$a4, $s4, .LBB2_129
.LBB2_125:                              # %scalar.ph.preheader
	slli.d	$a5, $a4, 3
	slli.d	$a6, $a4, 5
	alsl.d	$a6, $a4, $a6, 4
	add.d	$a3, $a3, $a6
	add.d	$a1, $a1, $a6
	sub.d	$a4, $s4, $a4
	.p2align	4, , 16
.LBB2_126:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	stx.d	$a1, $a2, $a5
	stx.d	$a3, $a0, $a5
	addi.d	$a5, $a5, 8
	addi.d	$a3, $a3, 48
	addi.d	$a4, $a4, -1
	addi.d	$a1, $a1, 48
	bnez	$a4, .LBB2_126
# %bb.127:
	ori	$s8, $zero, 1
	b	.LBB2_129
.LBB2_128:
	move	$s8, $zero
.LBB2_129:                              # %._crit_edge513
	addi.w	$s3, $s4, -1
	move	$a0, $zero
	move	$a1, $s3
	pcaddu18i	$ra, %call36(mymergesort)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, %pc_lo12(Falign.sortedseg2)
	move	$a0, $zero
	move	$a1, $s3
	pcaddu18i	$ra, %call36(mymergesort)
	jirl	$ra, $ra, 0
	beqz	$s8, .LBB2_132
# %bb.130:                              # %.lr.ph517
	ld.d	$a2, $s1, %pc_lo12(Falign.sortedseg1)
	ori	$a1, $zero, 2
	bstrpick.d	$a0, $s4, 31, 0
	bgeu	$s4, $a1, .LBB2_134
# %bb.131:
	move	$a1, $zero
	b	.LBB2_137
.LBB2_132:                              # %._crit_edge521.thread
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB2_150
# %bb.133:                              # %.preheader444.thread
	ld.d	$a1, $s5, %pc_lo12(Falign.cut1)
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign.cut2)
	b	.LBB2_149
.LBB2_134:                              # %vector.ph773
	bstrpick.d	$a1, $a0, 30, 1
	slli.d	$a1, $a1, 1
	addi.d	$a3, $a2, 8
	ori	$a4, $zero, 1
	move	$a5, $a1
	.p2align	4, , 16
.LBB2_135:                              # %vector.body776
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a3, -8
	ld.d	$a7, $a3, 0
	addi.d	$t0, $a4, -1
	st.w	$t0, $a6, 40
	st.w	$a4, $a7, 40
	addi.d	$a3, $a3, 16
	addi.d	$a5, $a5, -2
	addi.d	$a4, $a4, 2
	bnez	$a5, .LBB2_135
# %bb.136:                              # %middle.block779
	beq	$a1, $a0, .LBB2_139
.LBB2_137:                              # %scalar.ph771.preheader
	alsl.d	$a2, $a1, $a2, 3
	sub.d	$a3, $a0, $a1
	.p2align	4, , 16
.LBB2_138:                              # %scalar.ph771
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	st.w	$a1, $a4, 40
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB2_138
.LBB2_139:                              # %.lr.ph520
	ld.d	$a2, $s0, %pc_lo12(Falign.sortedseg2)
	ori	$a1, $zero, 2
	bgeu	$s4, $a1, .LBB2_141
# %bb.140:
	move	$a1, $zero
	b	.LBB2_144
.LBB2_141:                              # %vector.ph784
	bstrpick.d	$a1, $a0, 30, 1
	slli.d	$a1, $a1, 1
	addi.d	$a3, $a2, 8
	ori	$a4, $zero, 1
	move	$a5, $a1
	.p2align	4, , 16
.LBB2_142:                              # %vector.body787
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a3, -8
	ld.d	$a7, $a3, 0
	addi.d	$t0, $a4, -1
	st.w	$t0, $a6, 40
	st.w	$a4, $a7, 40
	addi.d	$a3, $a3, 16
	addi.d	$a5, $a5, -2
	addi.d	$a4, $a4, 2
	bnez	$a5, .LBB2_142
# %bb.143:                              # %middle.block790
	beq	$a1, $a0, .LBB2_146
.LBB2_144:                              # %scalar.ph782.preheader
	alsl.d	$a2, $a1, $a2, 3
	sub.d	$a0, $a0, $a1
	.p2align	4, , 16
.LBB2_145:                              # %scalar.ph782
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	st.w	$a1, $a3, 40
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB2_145
.LBB2_146:                              # %._crit_edge521
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB2_150
# %bb.147:                              # %.preheader444
	ld.d	$a1, $s5, %pc_lo12(Falign.cut1)
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign.cut2)
	ld.d	$a2, $s1, %pc_lo12(Falign.sortedseg1)
	ld.d	$a3, $s0, %pc_lo12(Falign.sortedseg2)
	move	$a4, $zero
	ori	$a5, $zero, 4
	.p2align	4, , 16
.LBB2_148:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a2, 0
	ld.w	$a6, $a6, 8
	ld.d	$a7, $a3, 0
	stx.w	$a6, $a1, $a5
	ld.w	$a6, $a7, 8
	stx.w	$a6, $a0, $a5
	ld.w	$a6, $sp, 300
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, 8
	addi.d	$a5, $a5, 4
	blt	$a4, $a6, .LBB2_148
.LBB2_149:
	ld.d	$s8, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	st.w	$zero, $a1, 0
	st.w	$zero, $a0, 0
	ld.w	$a2, $sp, 300
	alsl.d	$a1, $a2, $a1, 2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.w	$a2, $a1, 4
	ld.w	$a1, $sp, 300
	alsl.d	$a0, $a1, $a0, 2
	st.w	$a3, $a0, 4
	ld.w	$a0, $sp, 300
	addi.d	$a0, $a0, 2
	st.w	$a0, $sp, 300
	b	.LBB2_167
.LBB2_150:
	pcalau12i	$s1, %pc_hi20(Falign.crossscoresize)
	ld.w	$a0, $s1, %pc_lo12(Falign.crossscoresize)
	addi.w	$s6, $s4, 2
	pcalau12i	$s0, %pc_hi20(Falign.crossscore)
	bge	$a0, $s6, .LBB2_155
# %bb.151:
	st.w	$s6, $s1, %pc_lo12(Falign.crossscoresize)
	pcalau12i	$a0, %got_pc_hi20(fftkeika)
	ld.d	$a0, $a0, %got_pc_lo12(fftkeika)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB2_233
# %bb.152:
	ld.d	$a0, $s0, %pc_lo12(Falign.crossscore)
	beqz	$a0, .LBB2_154
.LBB2_153:
	pcaddu18i	$ra, %call36(FreeDoubleMtx)
	jirl	$ra, $ra, 0
.LBB2_154:
	ld.w	$a0, $s1, %pc_lo12(Falign.crossscoresize)
	move	$a1, $a0
	pcaddu18i	$ra, %call36(AllocateDoubleMtx)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$a0, $s0, %pc_lo12(Falign.crossscore)
	addi.w	$a0, $zero, -1
	bge	$s4, $a0, .LBB2_156
	b	.LBB2_158
.LBB2_155:                              # %._crit_edge711
	ld.d	$s5, $s0, %pc_lo12(Falign.crossscore)
	addi.w	$a0, $zero, -1
	blt	$s4, $a0, .LBB2_158
.LBB2_156:                              # %.preheader443.lr.ph
	ori	$a0, $zero, 1
	slt	$a1, $a0, $s6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$s0, $a1, $a0
	slli.d	$s3, $s0, 3
	move	$s1, $s5
	.p2align	4, , 16
.LBB2_157:                              # %._crit_edge527
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	bnez	$s0, .LBB2_157
.LBB2_158:                              # %.preheader442
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign.cut1)
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Falign.cut2)
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Falign.sortedseg1)
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Falign.sortedseg2)
	beqz	$s8, .LBB2_161
# %bb.159:                              # %.lr.ph530
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a5, $a4, %pc_lo12(Falign.segment1)
	move	$a4, $zero
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a1, 4
	addi.d	$a7, $a0, 4
	move	$t0, $a2
	move	$t1, $a3
	.p2align	4, , 16
.LBB2_160:                              # =>This Inner Loop Header: Depth=1
	ld.w	$t2, $a5, 8
	ld.d	$t3, $t0, 0
	alsl.d	$t2, $t2, $s5, 3
	ld.d	$t4, $a5, 0
	ld.d	$t2, $t2, 8
	ld.w	$t3, $t3, 8
	ld.d	$t5, $t1, 0
	ld.w	$t4, $t4, 40
	fld.d	$fa0, $a5, -16
	st.w	$t3, $a7, 0
	ld.w	$t3, $t5, 8
	alsl.d	$t2, $t4, $t2, 3
	fst.d	$fa0, $t2, 8
	addi.d	$a4, $a4, 1
	st.w	$t3, $a6, 0
	ld.w	$t2, $sp, 300
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, 8
	addi.d	$a5, $a5, 48
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 4
	blt	$a4, $t2, .LBB2_160
.LBB2_161:                              # %._crit_edge531
	st.w	$zero, $a0, 0
	st.w	$zero, $a1, 0
	ld.w	$a4, $sp, 300
	ld.d	$a5, $s5, 0
	ori	$a6, $zero, 0
	lu32i.d	$a6, 201424
	alsl.d	$a7, $a4, $a0, 2
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	st.w	$t0, $a7, 4
	ld.w	$a7, $sp, 300
	slli.d	$a4, $a4, 3
	addi.d	$a4, $a4, 8
	ldx.d	$t0, $s5, $a4
	alsl.d	$a7, $a7, $a1, 2
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	st.w	$t1, $a7, 4
	ld.w	$a7, $sp, 300
	lu52i.d	$a6, $a6, 1046
	st.d	$a6, $a5, 0
	stx.d	$a6, $t0, $a4
	addi.w	$s0, $a7, 2
	st.w	$s0, $sp, 300
	addi.d	$a5, $sp, 300
	move	$a4, $s5
	pcaddu18i	$ra, %call36(blockAlign2)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(fftkeika)
	ld.d	$s1, $a0, %got_pc_lo12(fftkeika)
	ld.w	$a0, $s1, 0
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	bnez	$a1, .LBB2_164
# %bb.162:                              # %._crit_edge531
	ld.d	$s8, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_165
# %bb.163:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.w	$a2, $sp, 300
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	b	.LBB2_165
.LBB2_164:
	ld.d	$s8, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
.LBB2_165:
	beqz	$a0, .LBB2_167
# %bb.166:
	ld.w	$a0, $sp, 300
	blt	$a0, $s0, .LBB2_230
.LBB2_167:
	blez	$s2, .LBB2_170
# %bb.168:                              # %.lr.ph534
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign.result1)
	move	$a1, $s2
	.p2align	4, , 16
.LBB2_169:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 0
	st.b	$zero, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB2_169
.LBB2_170:                              # %.preheader441
	blez	$fp, .LBB2_173
# %bb.171:                              # %.lr.ph536
	ld.d	$a0, $s3, %pc_lo12(Falign.result2)
	move	$a1, $fp
	.p2align	4, , 16
.LBB2_172:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 0
	st.b	$zero, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB2_172
.LBB2_173:                              # %._crit_edge537
	ld.w	$a0, $sp, 300
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	ori	$a2, $zero, 2
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	st.w	$a1, $a3, 0
	blt	$a0, $a2, .LBB2_222
# %bb.174:                              # %.lr.ph564
	addi.d	$a0, $s2, -1
	sltui	$a0, $a0, 1
	addi.d	$a1, $fp, -1
	sltui	$a1, $a1, 1
	and	$a0, $a0, $a1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	bstrpick.d	$a0, $s2, 31, 0
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	bstrpick.d	$a0, $fp, 31, 0
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	movgr2fr.w	$fs0, $zero
	pcalau12i	$a0, %pc_hi20(Falign.sgap1)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Falign.sgap2)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Falign.egap1)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Falign.egap2)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fftkeika)
	ld.d	$a0, $a0, %got_pc_lo12(fftkeika)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(constraint)
	ld.d	$a0, $a0, %got_pc_lo12(constraint)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	move	$s3, $zero
	move	$s1, $zero
	b	.LBB2_176
	.p2align	4, , 16
.LBB2_175:                              # %.loopexit
                                        #   in Loop: Header=BB2_176 Depth=1
	ld.w	$a0, $sp, 300
	addi.w	$a0, $a0, -1
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	bge	$s3, $a0, .LBB2_223
.LBB2_176:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_190 Depth 2
                                        #     Child Loop BB2_196 Depth 2
                                        #     Child Loop BB2_216 Depth 2
                                        #     Child Loop BB2_219 Depth 2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 0
	move	$s0, $s3
	ld.d	$s4, $s5, %pc_lo12(Falign.cut1)
	addi.d	$a0, $a0, 1
	st.w	$a0, $a1, 0
	slli.d	$a0, $s3, 2
	ldx.w	$a0, $s4, $a0
	move	$s6, $s1
	beqz	$a0, .LBB2_178
# %bb.177:                              #   in Loop: Header=BB2_176 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign.sgap1)
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Falign.tmpres1)
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	addi.w	$s3, $a2, -1
	move	$a2, $s3
	move	$a3, $s2
	pcaddu18i	$ra, %call36(getkyokaigap)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign.sgap2)
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Falign.tmpres2)
	move	$a2, $s3
	move	$a3, $fp
	pcaddu18i	$ra, %call36(getkyokaigap)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s5, %pc_lo12(Falign.cut1)
	b	.LBB2_182
	.p2align	4, , 16
.LBB2_178:                              # %.preheader440
                                        #   in Loop: Header=BB2_176 Depth=1
	blez	$s2, .LBB2_180
# %bb.179:                              # %.lr.ph539
                                        #   in Loop: Header=BB2_176 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign.sgap1)
	ori	$a1, $zero, 111
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB2_180:                              # %.preheader438
                                        #   in Loop: Header=BB2_176 Depth=1
	blez	$fp, .LBB2_182
# %bb.181:                              # %.lr.ph541
                                        #   in Loop: Header=BB2_176 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign.sgap2)
	ori	$a1, $zero, 111
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB2_182:                              # %.loopexit439
                                        #   in Loop: Header=BB2_176 Depth=1
	addi.d	$s3, $s0, 1
	slli.d	$s1, $s3, 2
	ldx.w	$a2, $s4, $s1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bne	$a2, $a0, .LBB2_187
# %bb.183:                              # %.preheader437
                                        #   in Loop: Header=BB2_176 Depth=1
	blez	$s2, .LBB2_185
# %bb.184:                              # %.lr.ph543
                                        #   in Loop: Header=BB2_176 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign.egap1)
	ori	$a1, $zero, 111
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB2_185:                              # %.preheader435
                                        #   in Loop: Header=BB2_176 Depth=1
	blez	$fp, .LBB2_188
# %bb.186:                              # %.lr.ph545
                                        #   in Loop: Header=BB2_176 Depth=1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign.egap2)
	ori	$a1, $zero, 111
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB2_188
	.p2align	4, , 16
.LBB2_187:                              #   in Loop: Header=BB2_176 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign.egap1)
	move	$a1, $s7
	move	$a3, $s2
	pcaddu18i	$ra, %call36(getkyokaigap)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Falign.cut2)
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign.egap2)
	ldx.w	$a2, $a1, $s1
	move	$a1, $s8
	move	$a3, $fp
	pcaddu18i	$ra, %call36(getkyokaigap)
	jirl	$ra, $ra, 0
.LBB2_188:                              # %.loopexit436
                                        #   in Loop: Header=BB2_176 Depth=1
	blez	$s2, .LBB2_191
# %bb.189:                              # %.lr.ph548
                                        #   in Loop: Header=BB2_176 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign.cut1)
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s1, $a1, %pc_lo12(Falign.tmpres1)
	alsl.d	$s4, $s0, $a0, 2
	alsl.d	$s7, $s3, $a0, 2
	ld.d	$s8, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 264                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_190:                              #   Parent Loop BB2_176 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s5, 0
	ld.w	$a2, $s4, 0
	ld.w	$a3, $s7, 0
	ld.d	$a0, $s1, 0
	add.d	$a1, $a1, $a2
	sub.w	$a2, $a3, $a2
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
	ld.w	$a1, $s4, 0
	ld.d	$a2, $s1, 0
	sub.w	$a0, $a0, $a1
	stx.b	$zero, $a2, $a0
	addi.d	$s5, $s5, 8
	addi.d	$s8, $s8, -1
	addi.d	$s1, $s1, 8
	bnez	$s8, .LBB2_190
.LBB2_191:                              # %._crit_edge549
                                        #   in Loop: Header=BB2_176 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB2_194
# %bb.192:                              # %._crit_edge549
                                        #   in Loop: Header=BB2_176 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB2_194
# %bb.193:                              #   in Loop: Header=BB2_176 Depth=1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Falign.tmpres1)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(commongappick)
	jirl	$ra, $ra, 0
.LBB2_194:                              #   in Loop: Header=BB2_176 Depth=1
	ld.d	$s8, $sp, 256                   # 8-byte Folded Reload
	blez	$fp, .LBB2_197
# %bb.195:                              # %.lr.ph552
                                        #   in Loop: Header=BB2_176 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign.cut2)
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $a1, %pc_lo12(Falign.tmpres2)
	alsl.d	$s0, $s0, $a0, 2
	alsl.d	$s4, $s3, $a0, 2
	ld.d	$s7, $sp, 232                   # 8-byte Folded Reload
	move	$s5, $s8
	.p2align	4, , 16
.LBB2_196:                              #   Parent Loop BB2_176 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s5, 0
	ld.w	$a2, $s0, 0
	ld.w	$a3, $s4, 0
	ld.d	$a0, $s1, 0
	add.d	$a1, $a1, $a2
	sub.w	$a2, $a3, $a2
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	ld.w	$a1, $s0, 0
	ld.d	$a2, $s1, 0
	sub.w	$a0, $a0, $a1
	stx.b	$zero, $a2, $a0
	addi.d	$s5, $s5, 8
	addi.d	$s7, $s7, -1
	addi.d	$s1, $s1, 8
	bnez	$s7, .LBB2_196
.LBB2_197:                              # %._crit_edge553
                                        #   in Loop: Header=BB2_176 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_200
# %bb.198:                              # %._crit_edge553
                                        #   in Loop: Header=BB2_176 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB2_200
# %bb.199:                              #   in Loop: Header=BB2_176 Depth=1
	ld.d	$a1, $s4, %pc_lo12(Falign.tmpres2)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(commongappick)
	jirl	$ra, $ra, 0
.LBB2_200:                              #   in Loop: Header=BB2_176 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$s7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_234
# %bb.201:                              #   in Loop: Header=BB2_176 Depth=1
	pcalau12i	$a0, %got_pc_hi20(alg)
	ld.d	$a0, $a0, %got_pc_lo12(alg)
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a1, -65
	ori	$a2, $zero, 32
	bltu	$a2, $a0, .LBB2_221
# %bb.202:                              #   in Loop: Header=BB2_176 Depth=1
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %pc_hi20(.LJTI2_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI2_0)
	ldx.w	$a0, $a2, $a0
	add.d	$a0, $a2, $a0
	jr	$a0
.LBB2_203:                              #   in Loop: Header=BB2_176 Depth=1
	ld.d	$a0, $s1, %pc_lo12(Falign.tmpres1)
	ld.d	$a1, $s4, %pc_lo12(Falign.tmpres2)
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	bnez	$a2, .LBB2_209
# %bb.204:                              #   in Loop: Header=BB2_176 Depth=1
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Falign.sgap1)
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Falign.sgap2)
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Falign.egap1)
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Falign.egap2)
	st.d	$a5, $sp, 32
	st.d	$a4, $sp, 24
	st.d	$a3, $sp, 16
	st.d	$a2, $sp, 8
	addi.d	$a2, $sp, 296
	st.d	$a2, $sp, 0
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	move	$a4, $s2
	move	$a5, $fp
	move	$a6, $s0
	move	$a7, $zero
	pcaddu18i	$ra, %call36(A__align)
	jirl	$ra, $ra, 0
	b	.LBB2_212
.LBB2_205:                              #   in Loop: Header=BB2_176 Depth=1
	ld.d	$a0, $s1, %pc_lo12(Falign.tmpres1)
	ld.d	$a1, $s4, %pc_lo12(Falign.tmpres2)
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	bnez	$a2, .LBB2_209
# %bb.206:                              #   in Loop: Header=BB2_176 Depth=1
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Falign.sgap1)
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Falign.sgap2)
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Falign.egap1)
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Falign.egap2)
	st.d	$a5, $sp, 32
	st.d	$a4, $sp, 24
	st.d	$a3, $sp, 16
	st.d	$a2, $sp, 8
	addi.d	$a2, $sp, 296
	st.d	$a2, $sp, 0
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	move	$a4, $s2
	move	$a5, $fp
	move	$a6, $s0
	move	$a7, $zero
	pcaddu18i	$ra, %call36(H__align)
	jirl	$ra, $ra, 0
	b	.LBB2_212
.LBB2_207:                              #   in Loop: Header=BB2_176 Depth=1
	ld.d	$a0, $s1, %pc_lo12(Falign.tmpres1)
	ld.d	$a1, $s4, %pc_lo12(Falign.tmpres2)
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	move	$a4, $s2
	move	$a5, $fp
	move	$a6, $s0
	pcaddu18i	$ra, %call36(Aalign)
	jirl	$ra, $ra, 0
	b	.LBB2_212
.LBB2_208:                              #   in Loop: Header=BB2_176 Depth=1
	ld.d	$a0, $s1, %pc_lo12(Falign.tmpres1)
	ld.d	$a1, $s4, %pc_lo12(Falign.tmpres2)
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	beqz	$a2, .LBB2_211
.LBB2_209:                              #   in Loop: Header=BB2_176 Depth=1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(G__align11)
	jirl	$ra, $ra, 0
	b	.LBB2_212
.LBB2_210:                              #   in Loop: Header=BB2_176 Depth=1
	ld.d	$a0, $s1, %pc_lo12(Falign.tmpres1)
	ld.d	$a1, $s4, %pc_lo12(Falign.tmpres2)
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a7, $a2, %pc_lo12(Falign.sgap1)
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Falign.sgap2)
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Falign.egap1)
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Falign.egap2)
	st.d	$a4, $sp, 16
	st.d	$a3, $sp, 8
	st.d	$a2, $sp, 0
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	move	$a4, $s2
	move	$a5, $fp
	move	$a6, $s0
	pcaddu18i	$ra, %call36(MSalignmm)
	jirl	$ra, $ra, 0
	b	.LBB2_212
.LBB2_211:                              #   in Loop: Header=BB2_176 Depth=1
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Falign.sgap1)
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Falign.sgap2)
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Falign.egap1)
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Falign.egap2)
	st.d	$a5, $sp, 32
	st.d	$a4, $sp, 24
	st.d	$a3, $sp, 16
	st.d	$a2, $sp, 8
	addi.d	$a2, $sp, 296
	st.d	$a2, $sp, 0
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	move	$a4, $s2
	move	$a5, $fp
	move	$a6, $s0
	move	$a7, $zero
	pcaddu18i	$ra, %call36(Q__align)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB2_212:                              #   in Loop: Header=BB2_176 Depth=1
	fadd.s	$fs0, $fs0, $fa0
.LBB2_213:                              #   in Loop: Header=BB2_176 Depth=1
	ld.d	$a0, $s1, %pc_lo12(Falign.tmpres1)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.w	$s1, $s6, $a0
	blt	$s0, $s1, .LBB2_220
# %bb.214:                              #   in Loop: Header=BB2_176 Depth=1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	blez	$s2, .LBB2_217
.LBB2_215:                              # %.lr.ph556
                                        #   in Loop: Header=BB2_176 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(Falign.result1)
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(Falign.tmpres1)
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_216:                              #   Parent Loop BB2_176 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s4, 0
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 8
	addi.d	$s5, $s5, -1
	addi.d	$s0, $s0, 8
	bnez	$s5, .LBB2_216
.LBB2_217:                              # %.preheader434
                                        #   in Loop: Header=BB2_176 Depth=1
	blez	$fp, .LBB2_175
# %bb.218:                              # %.lr.ph558
                                        #   in Loop: Header=BB2_176 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(Falign.result2)
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(Falign.tmpres2)
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_219:                              #   Parent Loop BB2_176 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s4, 0
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 8
	addi.d	$s5, $s5, -1
	addi.d	$s0, $s0, 8
	bnez	$s5, .LBB2_219
	b	.LBB2_175
.LBB2_220:                              #   in Loop: Header=BB2_176 Depth=1
	move	$s4, $a0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	addi.w	$a3, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	move	$a2, $s6
	move	$a4, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	bgtz	$s2, .LBB2_215
	b	.LBB2_217
.LBB2_221:                              #   in Loop: Header=BB2_176 Depth=1
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ext.w.b	$a2, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	b	.LBB2_213
.LBB2_222:
	movgr2fr.w	$fs0, $zero
.LBB2_223:                              # %.preheader433
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	blez	$s2, .LBB2_226
# %bb.224:                              # %.lr.ph567
	ld.d	$s0, $a0, %pc_lo12(Falign.result1)
	.p2align	4, , 16
.LBB2_225:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s0, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$s2, $s2, -1
	addi.d	$s7, $s7, 8
	bnez	$s2, .LBB2_225
.LBB2_226:                              # %.preheader
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	blez	$fp, .LBB2_229
# %bb.227:                              # %.lr.ph569
	ld.d	$s0, $a0, %pc_lo12(Falign.result2)
	.p2align	4, , 16
.LBB2_228:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 0
	ld.d	$a1, $s0, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$fp, $fp, -1
	addi.d	$s8, $s8, 8
	bnez	$fp, .LBB2_228
.LBB2_229:                              # %._crit_edge570
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 304                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 400
	ret
.LBB2_230:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(fftRepeatStop)
	ld.d	$a0, $a0, %got_pc_lo12(fftRepeatStop)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB2_167
# %bb.231:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB2_232:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 9
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB2_31
.LBB2_233:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(Falign.crossscore)
	bnez	$a0, .LBB2_153
	b	.LBB2_154
.LBB2_234:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	Falign, .Lfunc_end2-Falign
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_203-.LJTI2_0
	.word	.LBB2_221-.LJTI2_0
	.word	.LBB2_221-.LJTI2_0
	.word	.LBB2_221-.LJTI2_0
	.word	.LBB2_221-.LJTI2_0
	.word	.LBB2_221-.LJTI2_0
	.word	.LBB2_221-.LJTI2_0
	.word	.LBB2_205-.LJTI2_0
	.word	.LBB2_221-.LJTI2_0
	.word	.LBB2_221-.LJTI2_0
	.word	.LBB2_221-.LJTI2_0
	.word	.LBB2_221-.LJTI2_0
	.word	.LBB2_210-.LJTI2_0
	.word	.LBB2_221-.LJTI2_0
	.word	.LBB2_221-.LJTI2_0
	.word	.LBB2_221-.LJTI2_0
	.word	.LBB2_208-.LJTI2_0
	.word	.LBB2_221-.LJTI2_0
	.word	.LBB2_221-.LJTI2_0
	.word	.LBB2_221-.LJTI2_0
	.word	.LBB2_221-.LJTI2_0
	.word	.LBB2_221-.LJTI2_0
	.word	.LBB2_221-.LJTI2_0
	.word	.LBB2_221-.LJTI2_0
	.word	.LBB2_221-.LJTI2_0
	.word	.LBB2_221-.LJTI2_0
	.word	.LBB2_221-.LJTI2_0
	.word	.LBB2_221-.LJTI2_0
	.word	.LBB2_221-.LJTI2_0
	.word	.LBB2_221-.LJTI2_0
	.word	.LBB2_221-.LJTI2_0
	.word	.LBB2_221-.LJTI2_0
	.word	.LBB2_207-.LJTI2_0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function Falign_noudp
.LCPI3_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	Falign_noudp
	.p2align	5
	.type	Falign_noudp,@function
Falign_noudp:                           # @Falign_noudp
# %bb.0:
	addi.d	$sp, $sp, -384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	st.d	$s2, $sp, 344                   # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	st.d	$s4, $sp, 328                   # 8-byte Folded Spill
	st.d	$s5, $sp, 320                   # 8-byte Folded Spill
	st.d	$s6, $sp, 312                   # 8-byte Folded Spill
	st.d	$s7, $sp, 304                   # 8-byte Folded Spill
	st.d	$s8, $sp, 296                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 288                  # 8-byte Folded Spill
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$a7, $sp, 80                    # 8-byte Folded Spill
	move	$s1, $a6
	move	$s4, $a5
	st.d	$a4, $sp, 256                   # 8-byte Folded Spill
	st.d	$a3, $sp, 224                   # 8-byte Folded Spill
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	move	$s0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.w	$fp, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.w	$a1, $a0, 0
	slt	$a0, $a1, $fp
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	masknez	$a1, $a1, $a0
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	move	$a2, $a1
	addi.w	$s8, $a1, 0
	slli.d	$a1, $a1, 1
	bge	$a0, $s8, .LBB3_1
# %bb.2:
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(Falign_noudp.prevalloclen)
	ld.w	$a0, $fp, %pc_lo12(Falign_noudp.prevalloclen)
	pcalau12i	$a1, %pc_hi20(Falign_noudp.tmpres1)
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(Falign_noudp.tmpres2)
	pcalau12i	$s5, %pc_hi20(Falign_noudp.result2)
	pcalau12i	$a1, %pc_hi20(Falign_noudp.result1)
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	beq	$a0, $s1, .LBB3_6
# %bb.3:
	move	$s3, $s2
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_5
# %bb.4:
	ld.d	$a0, $s2, %pc_lo12(Falign_noudp.result1)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(Falign_noudp.result2)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(Falign_noudp.tmpres1)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(Falign_noudp.tmpres2)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
.LBB3_5:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s1, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s1, 0
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	st.d	$a0, $s2, %pc_lo12(Falign_noudp.result1)
	move	$a0, $a1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	st.d	$a0, $s5, %pc_lo12(Falign_noudp.result2)
	move	$a0, $a1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	st.d	$a0, $s7, %pc_lo12(Falign_noudp.tmpres1)
	move	$a0, $a1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, %pc_lo12(Falign_noudp.tmpres2)
	st.w	$s6, $fp, %pc_lo12(Falign_noudp.prevalloclen)
	move	$s2, $s3
.LBB3_6:
	pcalau12i	$s7, %pc_hi20(Falign_noudp.localalloclen)
	ld.w	$a0, $s7, %pc_lo12(Falign_noudp.localalloclen)
	pcalau12i	$a1, %pc_hi20(Falign_noudp.sgap1)
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Falign_noudp.egap1)
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Falign_noudp.sgap2)
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Falign_noudp.egap2)
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Falign_noudp.kouho)
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	lu12i.w	$s6, 24
	pcalau12i	$s3, %pc_hi20(Falign_noudp.cut1)
	pcalau12i	$a1, %pc_hi20(Falign_noudp.cut2)
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Falign_noudp.tmpptr1)
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Falign_noudp.tmpptr2)
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Falign_noudp.segment)
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Falign_noudp.segment1)
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Falign_noudp.segment2)
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 136                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_15
# %bb.7:
	bge	$a0, $s8, .LBB3_22
.LBB3_8:
	beqz	$a0, .LBB3_12
# %bb.9:
	pcalau12i	$a0, %got_pc_hi20(kobetsubunkatsu)
	ld.d	$a0, $a0, %got_pc_lo12(kobetsubunkatsu)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB3_11
# %bb.10:
	pcalau12i	$a0, %pc_hi20(Falign_noudp.seqVector1)
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.seqVector1)
	pcaddu18i	$ra, %call36(FreeFukusosuuMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(Falign_noudp.seqVector2)
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.seqVector2)
	pcaddu18i	$ra, %call36(FreeFukusosuuMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(Falign_noudp.naisekiNoWa)
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.naisekiNoWa)
	pcaddu18i	$ra, %call36(FreeFukusosuuVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(Falign_noudp.naiseki)
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.naiseki)
	pcaddu18i	$ra, %call36(FreeFukusosuuMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(Falign_noudp.soukan)
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.soukan)
	pcaddu18i	$ra, %call36(FreeDoubleVec)
	jirl	$ra, $ra, 0
.LBB3_11:
	pcalau12i	$a0, %pc_hi20(Falign_noudp.tmpseq1)
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.tmpseq1)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(Falign_noudp.tmpseq2)
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.tmpseq2)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
.LBB3_12:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	move	$a1, $s8
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	pcalau12i	$a2, %pc_hi20(Falign_noudp.tmpseq1)
	st.d	$a0, $a2, %pc_lo12(Falign_noudp.tmpseq1)
	move	$a0, $a1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(Falign_noudp.tmpseq2)
	st.d	$a0, $a1, %pc_lo12(Falign_noudp.tmpseq2)
	pcalau12i	$a0, %got_pc_hi20(kobetsubunkatsu)
	ld.d	$a0, $a0, %got_pc_lo12(kobetsubunkatsu)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB3_14
# %bb.13:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateFukusosuuVec)
	jirl	$ra, $ra, 0
	pcalau12i	$fp, %pc_hi20(n20or4or2)
	ld.w	$a1, $fp, %pc_lo12(n20or4or2)
	pcalau12i	$a2, %pc_hi20(Falign_noudp.naisekiNoWa)
	st.d	$a0, $a2, %pc_lo12(Falign_noudp.naisekiNoWa)
	move	$a0, $a1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(AllocateFukusosuuMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(n20or4or2)
	pcalau12i	$a2, %pc_hi20(Falign_noudp.naiseki)
	st.d	$a0, $a2, %pc_lo12(Falign_noudp.naiseki)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.w	$s3, $a0, 1
	move	$a0, $a1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateFukusosuuMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(n20or4or2)
	pcalau12i	$a2, %pc_hi20(Falign_noudp.seqVector1)
	st.d	$a0, $a2, %pc_lo12(Falign_noudp.seqVector1)
	move	$a0, $a1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateFukusosuuMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(Falign_noudp.seqVector2)
	st.d	$a0, $a1, %pc_lo12(Falign_noudp.seqVector2)
	move	$a0, $s3
	lu12i.w	$s6, 24
	pcaddu18i	$ra, %call36(AllocateDoubleVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(Falign_noudp.soukan)
	st.d	$a0, $a1, %pc_lo12(Falign_noudp.soukan)
.LBB3_14:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.w	$a0, $s7, %pc_lo12(Falign_noudp.localalloclen)
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	bgtz	$s1, .LBB3_23
	b	.LBB3_25
.LBB3_15:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(Falign_noudp.sgap1)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(Falign_noudp.egap1)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(Falign_noudp.sgap2)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Falign_noudp.egap2)
	ori	$a0, $zero, 100
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Falign_noudp.kouho)
	ori	$s1, $s6, 1696
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, %pc_lo12(Falign_noudp.cut1)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(Falign_noudp.cut2)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(Falign_noudp.tmpptr1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Falign_noudp.tmpptr2)
	ori	$a1, $zero, 48
	move	$a0, $s1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.d	$s3, $a0, %pc_lo12(Falign_noudp.segment)
	ori	$a1, $zero, 48
	move	$a0, $s1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	st.d	$s4, $a0, %pc_lo12(Falign_noudp.segment1)
	ori	$a1, $zero, 48
	move	$a0, $s1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	st.d	$s5, $a0, %pc_lo12(Falign_noudp.segment2)
	ori	$a1, $zero, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	pcalau12i	$a0, %pc_hi20(Falign_noudp.sortedseg1)
	st.d	$s6, $a0, %pc_lo12(Falign_noudp.sortedseg1)
	ori	$a1, $zero, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(Falign_noudp.sortedseg2)
	st.d	$a0, $a1, %pc_lo12(Falign_noudp.sortedseg2)
	beqz	$s3, .LBB3_20
# %bb.16:
	beqz	$s4, .LBB3_20
# %bb.17:
	beqz	$s5, .LBB3_20
# %bb.18:
	beqz	$s6, .LBB3_20
# %bb.19:
	bnez	$a0, .LBB3_21
.LBB3_20:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB3_21:                               # %thread-pre-split
	pcalau12i	$a0, %got_pc_hi20(scoremtx)
	ld.d	$a0, $a0, %got_pc_lo12(scoremtx)
	ld.w	$a0, $a0, 0
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %got_pc_hi20(fftscore)
	ld.d	$a1, $a1, %got_pc_lo12(fftscore)
	ld.w	$a1, $a1, 0
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 1
	masknez	$a3, $a2, $a1
	ori	$a4, $zero, 20
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a3
	masknez	$a1, $a1, $a0
	maskeqz	$a2, $a2, $a0
	ld.w	$a0, $s7, %pc_lo12(Falign_noudp.localalloclen)
	or	$a1, $a2, $a1
	pcalau12i	$a2, %pc_hi20(n20or4or2)
	st.w	$a1, $a2, %pc_lo12(n20or4or2)
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	lu12i.w	$s6, 24
	blt	$a0, $s8, .LBB3_8
.LBB3_22:
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	blez	$s1, .LBB3_25
.LBB3_23:                               # %.lr.ph
	pcalau12i	$a0, %pc_hi20(Falign_noudp.tmpseq1)
	ld.d	$fp, $a0, %pc_lo12(Falign_noudp.tmpseq1)
	move	$s2, $s5
	.p2align	4, , 16
.LBB3_24:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s2, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 8
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 8
	bnez	$s1, .LBB3_24
.LBB3_25:                               # %.preheader511
	blez	$s4, .LBB3_28
# %bb.26:                               # %.lr.ph516
	pcalau12i	$a0, %pc_hi20(Falign_noudp.tmpseq2)
	ld.d	$fp, $a0, %pc_lo12(Falign_noudp.tmpseq2)
	move	$s1, $s4
	move	$s2, $s0
	.p2align	4, , 16
.LBB3_27:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s2, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 8
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 8
	bnez	$s1, .LBB3_27
.LBB3_28:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(kobetsubunkatsu)
	ld.d	$a0, $a0, %got_pc_lo12(kobetsubunkatsu)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB3_46
.LBB3_29:                               # %.thread836
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.kouho)
	st.w	$zero, $a0, 0
	ori	$s3, $zero, 1
.LBB3_30:                               # %.lr.ph567
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	sub.w	$s4, $zero, $a0
	ori	$a0, $s6, 1694
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	move	$s1, $zero
	move	$s2, $zero
	b	.LBB3_33
	.p2align	4, , 16
.LBB3_31:                               #   in Loop: Header=BB3_33 Depth=1
	move	$s2, $s8
.LBB3_32:                               # %.loopexit494
                                        #   in Loop: Header=BB3_33 Depth=1
	addi.d	$s1, $s1, 1
	beq	$s1, $s3, .LBB3_42
.LBB3_33:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_41 Depth 2
                                        #     Child Loop BB3_40 Depth 2
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.kouho)
	slli.d	$a1, $s1, 2
	ldx.w	$s5, $a0, $a1
	bge	$s4, $s5, .LBB3_32
# %bb.34:                               #   in Loop: Header=BB3_33 Depth=1
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	bge	$s5, $a0, .LBB3_32
# %bb.35:                               #   in Loop: Header=BB3_33 Depth=1
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a5, $fp, %pc_lo12(Falign_noudp.tmpptr1)
	move	$a4, $s0
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a6, $s0, %pc_lo12(Falign_noudp.tmpptr2)
	move	$a0, $s5
	ld.d	$s8, $sp, 256                   # 8-byte Folded Reload
	move	$a1, $s8
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $s6
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	move	$s7, $a4
	pcaddu18i	$ra, %call36(zurasu2)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, %pc_lo12(Falign_noudp.tmpptr1)
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.segment)
	ld.d	$a3, $s0, %pc_lo12(Falign_noudp.tmpptr2)
	slli.d	$a1, $s2, 5
	alsl.d	$fp, $s2, $a1, 4
	add.d	$a6, $a0, $fp
	move	$a0, $s8
	move	$a1, $s6
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(alignableReagion)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	add.w	$s8, $a0, $s2
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	blt	$s8, $a0, .LBB3_37
# %bb.36:                               #   in Loop: Header=BB3_33 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB3_37:                               #   in Loop: Header=BB3_33 Depth=1
	move	$s0, $s7
	beqz	$s6, .LBB3_42
# %bb.38:                               # %.preheader493
                                        #   in Loop: Header=BB3_33 Depth=1
	blez	$s6, .LBB3_32
# %bb.39:                               # %.lr.ph562
                                        #   in Loop: Header=BB3_33 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.segment)
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Falign_noudp.segment1)
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Falign_noudp.segment2)
	blez	$s5, .LBB3_41
	.p2align	4, , 16
.LBB3_40:                               # %.lr.ph562.split.us
                                        #   Parent Loop BB3_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $a0, $fp
	ldx.w	$a4, $a0, $fp
	add.d	$a5, $a1, $fp
	ld.w	$a6, $a3, 4
	ld.w	$a7, $a3, 8
	fld.d	$fa0, $a3, 16
	stx.w	$a4, $a1, $fp
	st.w	$a6, $a5, 4
	st.w	$a7, $a5, 8
	fst.d	$fa0, $a5, 16
	add.d	$a3, $a4, $s5
	add.d	$a4, $a2, $fp
	stx.w	$a3, $a2, $fp
	add.d	$a3, $a6, $s5
	st.w	$a3, $a4, 4
	add.d	$a3, $a7, $s5
	st.w	$a3, $a4, 8
	fst.d	$fa0, $a4, 16
	st.d	$a4, $a5, 32
	st.d	$a5, $a4, 32
	addi.d	$a0, $a0, 48
	addi.w	$s6, $s6, -1
	addi.d	$a1, $a1, 48
	addi.d	$a2, $a2, 48
	bnez	$s6, .LBB3_40
	b	.LBB3_31
	.p2align	4, , 16
.LBB3_41:                               # %.lr.ph562.split
                                        #   Parent Loop BB3_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a3, $a0, $fp
	add.d	$a4, $a0, $fp
	sub.d	$a3, $a3, $s5
	ld.w	$a5, $a4, 4
	add.d	$a6, $a1, $fp
	stx.w	$a3, $a1, $fp
	ld.w	$a3, $a4, 8
	sub.d	$a5, $a5, $s5
	st.w	$a5, $a6, 4
	fld.d	$fa0, $a4, 16
	sub.d	$a3, $a3, $s5
	st.w	$a3, $a6, 8
	ldx.w	$a3, $a0, $fp
	fst.d	$fa0, $a6, 16
	ld.w	$a5, $a4, 4
	ld.w	$a4, $a4, 8
	stx.w	$a3, $a2, $fp
	add.d	$a3, $a2, $fp
	st.w	$a5, $a3, 4
	st.w	$a4, $a3, 8
	fst.d	$fa0, $a3, 16
	st.d	$a3, $a6, 32
	st.d	$a6, $a3, 32
	addi.w	$s6, $s6, -1
	addi.d	$a0, $a0, 48
	addi.d	$a1, $a1, 48
	addi.d	$a2, $a2, 48
	bnez	$s6, .LBB3_41
	b	.LBB3_31
.LBB3_42:                               # %._crit_edge568
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_148
# %bb.43:
	bnez	$s2, .LBB3_149
.LBB3_44:
	pcalau12i	$a0, %got_pc_hi20(fftNoAnchStop)
	ld.d	$a0, $a0, %got_pc_lo12(fftNoAnchStop)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB3_149
# %bb.45:                               # %.thread844
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(Falign_noudp.sortedseg1)
	ld.d	$a2, $a0, %pc_lo12(Falign_noudp.sortedseg1)
	b	.LBB3_166
.LBB3_46:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 9
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$s6, %pc_hi20(n20or4or2)
	ld.w	$s5, $s6, %pc_lo12(n20or4or2)
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	bstrpick.d	$a0, $s2, 31, 0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	blez	$s5, .LBB3_51
# %bb.47:                               # %.lr.ph519
	pcalau12i	$a0, %pc_hi20(Falign_noudp.seqVector1)
	ld.d	$fp, $a0, %pc_lo12(Falign_noudp.seqVector1)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	slli.d	$s3, $a0, 4
	move	$s1, $s5
	b	.LBB3_49
	.p2align	4, , 16
.LBB3_48:                               # %vec_init.exit
                                        #   in Loop: Header=BB3_49 Depth=1
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 8
	beqz	$s1, .LBB3_51
.LBB3_49:                               # =>This Inner Loop Header: Depth=1
	beqz	$s8, .LBB3_48
# %bb.50:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB3_49 Depth=1
	ld.d	$a0, $fp, 0
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB3_48
.LBB3_51:                               # %._crit_edge520
	st.d	$s6, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(scoremtx)
	ld.d	$a0, $a0, %got_pc_lo12(scoremtx)
	ld.w	$s7, $a0, 0
	addi.w	$s6, $zero, -1
	beq	$s7, $s6, .LBB3_61
# %bb.52:
	pcalau12i	$a0, %got_pc_hi20(fftscore)
	ld.d	$a0, $a0, %got_pc_lo12(fftscore)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB3_75
# %bb.53:                               # %.preheader509
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	blez	$a0, .LBB3_84
# %bb.54:                               # %.lr.ph522
	pcalau12i	$a0, %pc_hi20(Falign_noudp.seqVector1)
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.seqVector1)
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(Falign_noudp.tmpseq1)
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.tmpseq1)
	addi.d	$a1, $a1, 8
	pcalau12i	$a2, %got_pc_hi20(amino_n)
	ld.d	$a2, $a2, %got_pc_lo12(amino_n)
	ori	$a3, $zero, 20
	pcalau12i	$a4, %got_pc_hi20(polarity)
	ld.d	$a4, $a4, %got_pc_lo12(polarity)
	pcalau12i	$a5, %got_pc_hi20(volume)
	ld.d	$a5, $a5, %got_pc_lo12(volume)
	move	$a6, $zero
	b	.LBB3_56
	.p2align	4, , 16
.LBB3_55:                               # %seq_vec_5.exit
                                        #   in Loop: Header=BB3_56 Depth=1
	addi.d	$a6, $a6, 1
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	beq	$a6, $a7, .LBB3_84
.LBB3_56:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_59 Depth 2
	slli.d	$t0, $a6, 3
	ldx.d	$a7, $a0, $t0
	ld.bu	$t1, $a7, 0
	beqz	$t1, .LBB3_55
# %bb.57:                               # %.lr.ph.i452.preheader
                                        #   in Loop: Header=BB3_56 Depth=1
	ld.d	$t2, $sp, 216                   # 8-byte Folded Reload
	fldx.d	$fa0, $t2, $t0
	addi.d	$a7, $a7, 1
	move	$t0, $a1
	b	.LBB3_59
	.p2align	4, , 16
.LBB3_58:                               #   in Loop: Header=BB3_59 Depth=2
	ld.bu	$t1, $a7, 0
	addi.d	$t0, $t0, 16
	addi.d	$a7, $a7, 1
	beqz	$t1, .LBB3_55
.LBB3_59:                               # %.lr.ph.i452
                                        #   Parent Loop BB3_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$t1, $t1
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a2, $t1
	blt	$a3, $t1, .LBB3_58
# %bb.60:                               #   in Loop: Header=BB3_59 Depth=2
	slli.d	$t1, $t1, 3
	fldx.d	$fa1, $a4, $t1
	fld.d	$fa2, $t0, -8
	fmadd.d	$fa1, $fa0, $fa1, $fa2
	fst.d	$fa1, $t0, -8
	fldx.d	$fa1, $a5, $t1
	fld.d	$fa2, $t0, 0
	fmadd.d	$fa1, $fa0, $fa1, $fa2
	fst.d	$fa1, $t0, 0
	b	.LBB3_58
.LBB3_61:                               # %.preheader505
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	blez	$a0, .LBB3_84
# %bb.62:                               # %.lr.ph526
	pcalau12i	$a0, %pc_hi20(Falign_noudp.seqVector1)
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.seqVector1)
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(Falign_noudp.tmpseq1)
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.tmpseq1)
	addi.d	$a1, $a1, 8
	ori	$a2, $zero, 19
	pcalau12i	$a3, %pc_hi20(.LJTI3_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI3_0)
	move	$a4, $zero
	b	.LBB3_64
	.p2align	4, , 16
.LBB3_63:                               # %seq_vec_4.exit
                                        #   in Loop: Header=BB3_64 Depth=1
	addi.d	$a4, $a4, 1
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	beq	$a4, $a5, .LBB3_84
.LBB3_64:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_69 Depth 2
	slli.d	$a6, $a4, 3
	ldx.d	$a5, $a0, $a6
	ld.bu	$a7, $a5, 0
	beqz	$a7, .LBB3_63
# %bb.65:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB3_64 Depth=1
	ld.d	$t0, $sp, 216                   # 8-byte Folded Reload
	fldx.d	$fa0, $t0, $a6
	addi.d	$a5, $a5, 1
	move	$a6, $a1
	b	.LBB3_69
	.p2align	4, , 16
.LBB3_66:                               #   in Loop: Header=BB3_69 Depth=2
	fld.d	$fa1, $a6, 0
	fadd.d	$fa1, $fa0, $fa1
.LBB3_67:                               #   in Loop: Header=BB3_69 Depth=2
	fst.d	$fa1, $a6, 0
.LBB3_68:                               #   in Loop: Header=BB3_69 Depth=2
	ld.bu	$a7, $a5, 0
	addi.d	$a6, $a6, 16
	addi.d	$a5, $a5, 1
	beqz	$a7, .LBB3_63
.LBB3_69:                               # %.lr.ph.i
                                        #   Parent Loop BB3_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a7, -97
	bltu	$a2, $a7, .LBB3_68
# %bb.70:                               # %.lr.ph.i
                                        #   in Loop: Header=BB3_69 Depth=2
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a3, $a7
	add.d	$a7, $a3, $a7
	jr	$a7
.LBB3_71:                               #   in Loop: Header=BB3_69 Depth=2
	fld.d	$fa1, $a6, -8
	fadd.d	$fa1, $fa0, $fa1
	b	.LBB3_74
.LBB3_72:                               #   in Loop: Header=BB3_69 Depth=2
	fld.d	$fa1, $a6, 0
	fsub.d	$fa1, $fa1, $fa0
	b	.LBB3_67
.LBB3_73:                               #   in Loop: Header=BB3_69 Depth=2
	fld.d	$fa1, $a6, -8
	fsub.d	$fa1, $fa1, $fa0
.LBB3_74:                               #   in Loop: Header=BB3_69 Depth=2
	fst.d	$fa1, $a6, -8
	b	.LBB3_68
.LBB3_75:                               # %.preheader507
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	blez	$a0, .LBB3_84
# %bb.76:                               # %.lr.ph524
	pcalau12i	$a0, %pc_hi20(Falign_noudp.seqVector1)
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.seqVector1)
	pcalau12i	$a1, %pc_hi20(Falign_noudp.tmpseq1)
	ld.d	$a1, $a1, %pc_lo12(Falign_noudp.tmpseq1)
	pcalau12i	$a2, %got_pc_hi20(amino_n)
	ld.d	$a2, $a2, %got_pc_lo12(amino_n)
	move	$a3, $zero
	b	.LBB3_78
	.p2align	4, , 16
.LBB3_77:                               # %seq_vec_3.exit
                                        #   in Loop: Header=BB3_78 Depth=1
	addi.d	$a3, $a3, 1
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	beq	$a3, $a4, .LBB3_84
.LBB3_78:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_81 Depth 2
	slli.d	$a4, $a3, 3
	ldx.d	$a5, $a1, $a4
	ld.bu	$a6, $a5, 0
	beqz	$a6, .LBB3_77
# %bb.79:                               # %.lr.ph.i454.preheader
                                        #   in Loop: Header=BB3_78 Depth=1
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	fldx.d	$fa0, $a7, $a4
	move	$a4, $zero
	addi.d	$a5, $a5, 1
	b	.LBB3_81
	.p2align	4, , 16
.LBB3_80:                               #   in Loop: Header=BB3_81 Depth=2
	ld.bu	$a6, $a5, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 1
	beqz	$a6, .LBB3_77
.LBB3_81:                               # %.lr.ph.i454
                                        #   Parent Loop BB3_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$a6, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a2, $a6
	bltz	$a6, .LBB3_80
# %bb.82:                               # %.lr.ph.i454
                                        #   in Loop: Header=BB3_81 Depth=2
	bge	$a6, $s5, .LBB3_80
# %bb.83:                               #   in Loop: Header=BB3_81 Depth=2
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a0, $a6
	fldx.d	$fa1, $a6, $a4
	fadd.d	$fa1, $fa0, $fa1
	fstx.d	$fa1, $a6, $a4
	b	.LBB3_80
.LBB3_84:                               # %.loopexit506
	bstrpick.d	$fp, $s2, 31, 31
	blez	$s5, .LBB3_89
# %bb.85:                               # %.lr.ph529
	pcalau12i	$a0, %pc_hi20(Falign_noudp.seqVector2)
	ld.d	$s1, $a0, %pc_lo12(Falign_noudp.seqVector2)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	slli.d	$s3, $a0, 4
	move	$s2, $s5
	b	.LBB3_87
	.p2align	4, , 16
.LBB3_86:                               # %vec_init.exit458
                                        #   in Loop: Header=BB3_87 Depth=1
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 8
	beqz	$s2, .LBB3_89
.LBB3_87:                               # =>This Inner Loop Header: Depth=1
	beqz	$s8, .LBB3_86
# %bb.88:                               # %.lr.ph.preheader.i457
                                        #   in Loop: Header=BB3_87 Depth=1
	ld.d	$a0, $s1, 0
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB3_86
.LBB3_89:                               # %._crit_edge530
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.w	$a0, $a0, $fp
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	beq	$s7, $s6, .LBB3_99
# %bb.90:
	pcalau12i	$a0, %got_pc_hi20(fftscore)
	ld.d	$a0, $a0, %got_pc_lo12(fftscore)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB3_113
# %bb.91:                               # %.preheader503
	blez	$s4, .LBB3_122
# %bb.92:                               # %.lr.ph532
	pcalau12i	$a0, %pc_hi20(Falign_noudp.seqVector2)
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.seqVector2)
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(Falign_noudp.tmpseq2)
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.tmpseq2)
	addi.d	$a1, $a1, 8
	pcalau12i	$a2, %got_pc_hi20(amino_n)
	ld.d	$a2, $a2, %got_pc_lo12(amino_n)
	ori	$a3, $zero, 20
	pcalau12i	$a4, %got_pc_hi20(polarity)
	ld.d	$a4, $a4, %got_pc_lo12(polarity)
	pcalau12i	$a5, %got_pc_hi20(volume)
	ld.d	$a5, $a5, %got_pc_lo12(volume)
	move	$a6, $zero
	b	.LBB3_94
	.p2align	4, , 16
.LBB3_93:                               # %seq_vec_5.exit470
                                        #   in Loop: Header=BB3_94 Depth=1
	addi.d	$a6, $a6, 1
	beq	$a6, $s4, .LBB3_122
.LBB3_94:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_97 Depth 2
	slli.d	$t0, $a6, 3
	ldx.d	$a7, $a0, $t0
	ld.bu	$t1, $a7, 0
	beqz	$t1, .LBB3_93
# %bb.95:                               # %.lr.ph.i466.preheader
                                        #   in Loop: Header=BB3_94 Depth=1
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	fldx.d	$fa0, $t2, $t0
	addi.d	$a7, $a7, 1
	move	$t0, $a1
	b	.LBB3_97
	.p2align	4, , 16
.LBB3_96:                               #   in Loop: Header=BB3_97 Depth=2
	ld.bu	$t1, $a7, 0
	addi.d	$t0, $t0, 16
	addi.d	$a7, $a7, 1
	beqz	$t1, .LBB3_93
.LBB3_97:                               # %.lr.ph.i466
                                        #   Parent Loop BB3_94 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$t1, $t1
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a2, $t1
	blt	$a3, $t1, .LBB3_96
# %bb.98:                               #   in Loop: Header=BB3_97 Depth=2
	slli.d	$t1, $t1, 3
	fldx.d	$fa1, $a4, $t1
	fld.d	$fa2, $t0, -8
	fmadd.d	$fa1, $fa0, $fa1, $fa2
	fst.d	$fa1, $t0, -8
	fldx.d	$fa1, $a5, $t1
	fld.d	$fa2, $t0, 0
	fmadd.d	$fa1, $fa0, $fa1, $fa2
	fst.d	$fa1, $t0, 0
	b	.LBB3_96
.LBB3_99:                               # %.preheader499
	blez	$s4, .LBB3_122
# %bb.100:                              # %.lr.ph536
	pcalau12i	$a0, %pc_hi20(Falign_noudp.seqVector2)
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.seqVector2)
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(Falign_noudp.tmpseq2)
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.tmpseq2)
	addi.d	$a1, $a1, 8
	ori	$a2, $zero, 19
	pcalau12i	$a3, %pc_hi20(.LJTI3_1)
	addi.d	$a3, $a3, %pc_lo12(.LJTI3_1)
	move	$a4, $zero
	b	.LBB3_102
	.p2align	4, , 16
.LBB3_101:                              # %seq_vec_4.exit464
                                        #   in Loop: Header=BB3_102 Depth=1
	addi.d	$a4, $a4, 1
	beq	$a4, $s4, .LBB3_122
.LBB3_102:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_107 Depth 2
	slli.d	$a6, $a4, 3
	ldx.d	$a5, $a0, $a6
	ld.bu	$a7, $a5, 0
	beqz	$a7, .LBB3_101
# %bb.103:                              # %.lr.ph.i460.preheader
                                        #   in Loop: Header=BB3_102 Depth=1
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	fldx.d	$fa0, $t0, $a6
	addi.d	$a5, $a5, 1
	move	$a6, $a1
	b	.LBB3_107
	.p2align	4, , 16
.LBB3_104:                              #   in Loop: Header=BB3_107 Depth=2
	fld.d	$fa1, $a6, 0
	fadd.d	$fa1, $fa0, $fa1
.LBB3_105:                              #   in Loop: Header=BB3_107 Depth=2
	fst.d	$fa1, $a6, 0
.LBB3_106:                              #   in Loop: Header=BB3_107 Depth=2
	ld.bu	$a7, $a5, 0
	addi.d	$a6, $a6, 16
	addi.d	$a5, $a5, 1
	beqz	$a7, .LBB3_101
.LBB3_107:                              # %.lr.ph.i460
                                        #   Parent Loop BB3_102 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a7, -97
	bltu	$a2, $a7, .LBB3_106
# %bb.108:                              # %.lr.ph.i460
                                        #   in Loop: Header=BB3_107 Depth=2
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a3, $a7
	add.d	$a7, $a3, $a7
	jr	$a7
.LBB3_109:                              #   in Loop: Header=BB3_107 Depth=2
	fld.d	$fa1, $a6, -8
	fadd.d	$fa1, $fa0, $fa1
	b	.LBB3_112
.LBB3_110:                              #   in Loop: Header=BB3_107 Depth=2
	fld.d	$fa1, $a6, 0
	fsub.d	$fa1, $fa1, $fa0
	b	.LBB3_105
.LBB3_111:                              #   in Loop: Header=BB3_107 Depth=2
	fld.d	$fa1, $a6, -8
	fsub.d	$fa1, $fa1, $fa0
.LBB3_112:                              #   in Loop: Header=BB3_107 Depth=2
	fst.d	$fa1, $a6, -8
	b	.LBB3_106
.LBB3_113:                              # %.preheader501
	blez	$s4, .LBB3_122
# %bb.114:                              # %.lr.ph534
	pcalau12i	$a0, %pc_hi20(Falign_noudp.seqVector2)
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.seqVector2)
	pcalau12i	$a1, %pc_hi20(Falign_noudp.tmpseq2)
	ld.d	$a1, $a1, %pc_lo12(Falign_noudp.tmpseq2)
	pcalau12i	$a2, %got_pc_hi20(amino_n)
	ld.d	$a2, $a2, %got_pc_lo12(amino_n)
	move	$a3, $zero
	b	.LBB3_116
	.p2align	4, , 16
.LBB3_115:                              # %seq_vec_3.exit478
                                        #   in Loop: Header=BB3_116 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $s4, .LBB3_122
.LBB3_116:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_119 Depth 2
	slli.d	$a4, $a3, 3
	ldx.d	$a5, $a1, $a4
	ld.bu	$a6, $a5, 0
	beqz	$a6, .LBB3_115
# %bb.117:                              # %.lr.ph.i472.preheader
                                        #   in Loop: Header=BB3_116 Depth=1
	ld.d	$a7, $sp, 224                   # 8-byte Folded Reload
	fldx.d	$fa0, $a7, $a4
	move	$a4, $zero
	addi.d	$a5, $a5, 1
	b	.LBB3_119
	.p2align	4, , 16
.LBB3_118:                              #   in Loop: Header=BB3_119 Depth=2
	ld.bu	$a6, $a5, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 1
	beqz	$a6, .LBB3_115
.LBB3_119:                              # %.lr.ph.i472
                                        #   Parent Loop BB3_116 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$a6, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a2, $a6
	bltz	$a6, .LBB3_118
# %bb.120:                              # %.lr.ph.i472
                                        #   in Loop: Header=BB3_119 Depth=2
	bge	$a6, $s5, .LBB3_118
# %bb.121:                              #   in Loop: Header=BB3_119 Depth=2
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a0, $a6
	fldx.d	$fa1, $a6, $a4
	fadd.d	$fa1, $fa0, $fa1
	fstx.d	$fa1, $a6, $a4
	b	.LBB3_118
.LBB3_122:                              # %.loopexit500
	pcalau12i	$fp, %pc_hi20(Falign_noudp.naiseki)
	blez	$s5, .LBB3_132
# %bb.123:                              # %.lr.ph539.preheader
	move	$s3, $zero
	move	$s6, $zero
	pcalau12i	$s1, %pc_hi20(Falign_noudp.seqVector2)
	pcalau12i	$s2, %pc_hi20(Falign_noudp.seqVector1)
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_124:                              # %.lr.ph539
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, %pc_lo12(Falign_noudp.seqVector2)
	ldx.d	$a1, $a0, $s3
	sltui	$a2, $s6, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(fft)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(Falign_noudp.seqVector1)
	ldx.d	$a1, $a0, $s3
	move	$a0, $s8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fft)
	jirl	$ra, $ra, 0
	ld.w	$s5, $s7, %pc_lo12(n20or4or2)
	addi.d	$s6, $s6, 1
	addi.d	$s3, $s3, 8
	blt	$s6, $s5, .LBB3_124
# %bb.125:                              # %.preheader498
	blez	$s5, .LBB3_132
# %bb.126:                              # %.preheader497.lr.ph
	move	$s6, $zero
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	slli.d	$s3, $a0, 4
	b	.LBB3_128
	.p2align	4, , 16
.LBB3_127:                              # %._crit_edge542
                                        #   in Loop: Header=BB3_128 Depth=1
	addi.d	$s6, $s6, 1
	bge	$s6, $s5, .LBB3_132
.LBB3_128:                              # %.preheader497
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_130 Depth 2
	blez	$s8, .LBB3_127
# %bb.129:                              # %.lr.ph541.preheader
                                        #   in Loop: Header=BB3_128 Depth=1
	move	$s5, $zero
	slli.d	$s4, $s6, 3
	.p2align	4, , 16
.LBB3_130:                              # %.lr.ph541
                                        #   Parent Loop BB3_128 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, %pc_lo12(Falign_noudp.naiseki)
	ld.d	$a1, $s2, %pc_lo12(Falign_noudp.seqVector1)
	ld.d	$a2, $s1, %pc_lo12(Falign_noudp.seqVector2)
	ldx.d	$a0, $a0, $s4
	ldx.d	$a1, $a1, $s4
	ldx.d	$a2, $a2, $s4
	add.d	$a0, $a0, $s5
	add.d	$a1, $a1, $s5
	add.d	$a2, $a2, $s5
	pcaddu18i	$ra, %call36(calcNaiseki)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 16
	bne	$s3, $s5, .LBB3_130
# %bb.131:                              # %._crit_edge542.loopexit
                                        #   in Loop: Header=BB3_128 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$s5, $a0, %pc_lo12(n20or4or2)
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	b	.LBB3_127
.LBB3_132:                              # %.preheader496
	pcalau12i	$s2, %pc_hi20(Falign_noudp.naisekiNoWa)
	ld.d	$a1, $s2, %pc_lo12(Falign_noudp.naisekiNoWa)
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	srai.d	$s1, $a0, 1
	lu12i.w	$s6, 24
	blez	$s8, .LBB3_138
# %bb.133:                              # %.lr.ph551
	ld.d	$a0, $fp, %pc_lo12(Falign_noudp.naiseki)
	move	$a2, $zero
	bstrpick.d	$a3, $s5, 31, 0
	vrepli.b	$vr0, 0
	b	.LBB3_135
	.p2align	4, , 16
.LBB3_134:                              # %._crit_edge548
                                        #   in Loop: Header=BB3_135 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $s8, .LBB3_138
.LBB3_135:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_137 Depth 2
	slli.d	$a4, $a2, 4
	vstx	$vr0, $a1, $a4
	blez	$s5, .LBB3_134
# %bb.136:                              # %.lr.ph547.preheader
                                        #   in Loop: Header=BB3_135 Depth=1
	alsl.d	$a5, $a2, $a1, 4
	move	$a6, $a3
	move	$a7, $a0
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB3_137:                              # %.lr.ph547
                                        #   Parent Loop BB3_135 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $a7, 0
	vldx	$vr2, $t0, $a4
	vfadd.d	$vr1, $vr2, $vr1
	vst	$vr1, $a5, 0
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 8
	bnez	$a6, .LBB3_137
	b	.LBB3_134
.LBB3_138:                              # %._crit_edge552
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	sub.w	$a0, $zero, $a0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fft)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(Falign_noudp.soukan)
	ld.d	$a2, $a0, %pc_lo12(Falign_noudp.soukan)
	addi.w	$a1, $zero, -2
	addi.d	$a0, $s1, 1
	blt	$a1, $s8, .LBB3_140
# %bb.139:                              # %._crit_edge552..preheader495_crit_edge
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	b	.LBB3_142
.LBB3_140:                              # %.lr.ph556
	ld.d	$a3, $s2, %pc_lo12(Falign_noudp.naisekiNoWa)
	bstrpick.d	$a1, $a0, 31, 0
	alsl.d	$a3, $s1, $a3, 4
	move	$a4, $a2
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_141:                              # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a3, 0
	fst.d	$fa0, $a4, 0
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 8
	bnez	$a1, .LBB3_141
.LBB3_142:                              # %.preheader495
	bge	$a0, $s8, .LBB3_145
# %bb.143:                              # %.lr.ph559
	ld.d	$a0, $s2, %pc_lo12(Falign_noudp.naisekiNoWa)
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a1, $a1, -1
	alsl.d	$a3, $s1, $a2, 3
	addi.d	$a3, $a3, 8
	nor	$a4, $s1, $zero
	add.d	$a4, $a4, $s8
	.p2align	4, , 16
.LBB3_144:                              # =>This Inner Loop Header: Depth=1
	slli.d	$a5, $a1, 4
	fldx.d	$fa0, $a0, $a5
	fst.d	$fa0, $a3, 0
	addi.w	$a1, $a1, -1
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB3_144
.LBB3_145:                              # %._crit_edge560
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.kouho)
	ori	$a1, $zero, 100
	move	$a3, $s8
	pcaddu18i	$ra, %call36(getKouho)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bnez	$a1, .LBB3_29
# %bb.146:
	move	$s3, $a0
	bgtz	$a0, .LBB3_30
# %bb.147:
	move	$s2, $zero
.LBB3_148:                              # %._crit_edge568.thread
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB3_44
.LBB3_149:
	pcalau12i	$s4, %pc_hi20(Falign_noudp.sortedseg1)
	ld.d	$a2, $s4, %pc_lo12(Falign_noudp.sortedseg1)
	blez	$s2, .LBB3_165
# %bb.150:                              # %.lr.ph574
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.segment1)
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Falign_noudp.segment2)
	pcalau12i	$s5, %pc_hi20(Falign_noudp.sortedseg2)
	ld.d	$a3, $s5, %pc_lo12(Falign_noudp.sortedseg2)
	ori	$a5, $zero, 4
	move	$a4, $zero
	bltu	$s2, $a5, .LBB3_155
# %bb.151:                              # %.lr.ph574
	sub.d	$a5, $a3, $a2
	ori	$a6, $zero, 32
	bltu	$a5, $a6, .LBB3_155
# %bb.152:                              # %vector.ph
	bstrpick.d	$a4, $s2, 30, 2
	slli.d	$a4, $a4, 2
	addi.d	$a5, $a3, 16
	pcalau12i	$a6, %pc_hi20(.LCPI3_0)
	vld	$vr0, $a6, %pc_lo12(.LCPI3_0)
	addi.d	$a6, $a2, 16
	vreplgr2vr.d	$vr1, $a0
	vrepli.d	$vr2, 48
	vrepli.d	$vr3, 96
	vreplgr2vr.d	$vr4, $a1
	move	$a7, $a4
	.p2align	4, , 16
.LBB3_153:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vori.b	$vr5, $vr1, 0
	vmadd.d	$vr5, $vr0, $vr2
	vori.b	$vr6, $vr3, 0
	vmadd.d	$vr6, $vr0, $vr2
	vadd.d	$vr7, $vr1, $vr6
	vst	$vr5, $a6, -16
	vst	$vr7, $a6, 0
	vori.b	$vr5, $vr4, 0
	vmadd.d	$vr5, $vr0, $vr2
	vadd.d	$vr6, $vr4, $vr6
	vst	$vr5, $a5, -16
	vst	$vr6, $a5, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a7, $a7, -4
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB3_153
# %bb.154:                              # %middle.block
	beq	$a4, $s2, .LBB3_157
.LBB3_155:                              # %scalar.ph.preheader
	alsl.d	$a3, $a4, $a3, 3
	slli.d	$a5, $a4, 5
	alsl.d	$a6, $a4, $a5, 4
	add.d	$a1, $a1, $a6
	alsl.d	$a5, $a4, $a2, 3
	add.d	$a0, $a0, $a6
	sub.d	$a4, $s2, $a4
	.p2align	4, , 16
.LBB3_156:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $a5, 0
	st.d	$a1, $a3, 0
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 48
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, -1
	addi.d	$a0, $a0, 48
	bnez	$a4, .LBB3_156
.LBB3_157:                              # %._crit_edge575
	addi.w	$s3, $s2, -1
	move	$a0, $zero
	move	$a1, $s3
	pcaddu18i	$ra, %call36(mymergesort)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s5, %pc_lo12(Falign_noudp.sortedseg2)
	move	$a0, $zero
	move	$a1, $s3
	pcaddu18i	$ra, %call36(mymergesort)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s4, %pc_lo12(Falign_noudp.sortedseg1)
	move	$a1, $zero
	ori	$a3, $zero, 1
	bstrpick.d	$a0, $s2, 30, 1
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	beq	$s2, $a3, .LBB3_161
# %bb.158:                              # %vector.ph881
	slli.d	$a1, $a0, 1
	addi.d	$a4, $a2, 8
	move	$a5, $a1
	.p2align	4, , 16
.LBB3_159:                              # %vector.body884
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a4, -8
	ld.d	$a7, $a4, 0
	addi.d	$t0, $a3, -1
	st.w	$t0, $a6, 40
	st.w	$a3, $a7, 40
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, -2
	addi.d	$a3, $a3, 2
	bnez	$a5, .LBB3_159
# %bb.160:                              # %middle.block887
	beq	$a1, $s2, .LBB3_163
.LBB3_161:                              # %scalar.ph879.preheader
	alsl.d	$a2, $a1, $a2, 3
	sub.d	$a3, $s2, $a1
	.p2align	4, , 16
.LBB3_162:                              # %scalar.ph879
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	st.w	$a1, $a4, 40
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB3_162
.LBB3_163:                              # %.lr.ph580
	ld.d	$a1, $s5, %pc_lo12(Falign_noudp.sortedseg2)
	ori	$a2, $zero, 1
	bne	$s2, $a2, .LBB3_169
# %bb.164:
	move	$a0, $zero
	b	.LBB3_172
.LBB3_165:
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
.LBB3_166:                              # %._crit_edge581.thread.critedge
	addi.w	$s3, $s2, -1
	move	$a0, $zero
	move	$a1, $s3
	pcaddu18i	$ra, %call36(mymergesort)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(Falign_noudp.sortedseg2)
	ld.d	$a2, $a0, %pc_lo12(Falign_noudp.sortedseg2)
	move	$a0, $zero
	move	$a1, $s3
	pcaddu18i	$ra, %call36(mymergesort)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $s1, %pc_lo12(Falign_noudp.cut1)
	beqz	$a1, .LBB3_168
# %bb.167:                              # %.preheader491.thread
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Falign_noudp.cut2)
	b	.LBB3_178
.LBB3_168:                              # %.thread852
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Falign_noudp.cut2)
	move	$s2, $zero
	st.w	$zero, $a0, 0
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	b	.LBB3_179
.LBB3_169:                              # %vector.ph892
	slli.d	$a0, $a0, 1
	addi.d	$a3, $a1, 8
	move	$a4, $a0
	.p2align	4, , 16
.LBB3_170:                              # %vector.body895
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, -8
	ld.d	$a6, $a3, 0
	addi.d	$a7, $a2, -1
	st.w	$a7, $a5, 40
	st.w	$a2, $a6, 40
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, -2
	addi.d	$a2, $a2, 2
	bnez	$a4, .LBB3_170
# %bb.171:                              # %middle.block898
	beq	$a0, $s2, .LBB3_174
.LBB3_172:                              # %scalar.ph890.preheader
	alsl.d	$a1, $a0, $a1, 3
	sub.d	$a2, $s2, $a0
	.p2align	4, , 16
.LBB3_173:                              # %scalar.ph890
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 0
	st.w	$a0, $a3, 40
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB3_173
.LBB3_174:                              # %._crit_edge581
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	ld.d	$a0, $s1, %pc_lo12(Falign_noudp.cut1)
	beqz	$a1, .LBB3_235
# %bb.175:                              # %.preheader491
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Falign_noudp.cut2)
	ld.d	$a2, $s4, %pc_lo12(Falign_noudp.sortedseg1)
	ld.d	$a3, $s5, %pc_lo12(Falign_noudp.sortedseg2)
	ori	$a4, $zero, 4
	move	$a5, $s2
	.p2align	4, , 16
.LBB3_176:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a2, 0
	ld.w	$a6, $a6, 8
	ld.d	$a7, $a3, 0
	stx.w	$a6, $a0, $a4
	ld.w	$a6, $a7, 8
	stx.w	$a6, $a1, $a4
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, 8
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 4
	bnez	$a5, .LBB3_176
# %bb.177:
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
.LBB3_178:                              # %._crit_edge584
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	st.w	$zero, $a0, 0
.LBB3_179:                              # %._crit_edge589.sink.split
	st.w	$zero, $a1, 0
	move	$a2, $s2
	ld.d	$t2, $sp, 88                    # 8-byte Folded Reload
.LBB3_180:                              # %._crit_edge589
	slli.d	$a3, $a2, 2
	addi.d	$a3, $a3, 4
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	stx.w	$a4, $a0, $a3
	stx.w	$a5, $a1, $a3
	blez	$s5, .LBB3_183
# %bb.181:                              # %.lr.ph593
	ld.d	$a0, $t2, %pc_lo12(Falign_noudp.result1)
	move	$a1, $s5
	.p2align	4, , 16
.LBB3_182:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	st.b	$zero, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB3_182
.LBB3_183:                              # %.preheader490
	blez	$s4, .LBB3_186
# %bb.184:                              # %.lr.ph595
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.result2)
	move	$a1, $s4
	.p2align	4, , 16
.LBB3_185:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	st.b	$zero, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB3_185
.LBB3_186:                              # %._crit_edge596
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	bltz	$a2, .LBB3_227
# %bb.187:                              # %.lr.ph624
	addi.w	$a0, $a2, 1
	bstrpick.d	$a1, $s5, 31, 0
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	bstrpick.d	$a1, $s4, 31, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	slli.d	$s8, $a1, 3
	movgr2fr.w	$fs0, $zero
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fftkeika)
	ld.d	$a0, $a0, %got_pc_lo12(fftkeika)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(constraint)
	ld.d	$a0, $a0, %got_pc_lo12(constraint)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	move	$s6, $zero
	move	$fp, $zero
.LBB3_188:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_202 Depth 2
                                        #     Child Loop BB3_209 Depth 2
                                        #     Child Loop BB3_220 Depth 2
                                        #     Child Loop BB3_223 Depth 2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 0
	move	$s7, $s6
	ld.d	$s2, $s1, %pc_lo12(Falign_noudp.cut1)
	addi.d	$a0, $a0, 1
	st.w	$a0, $a1, 0
	slli.d	$s3, $s6, 2
	ldx.w	$a0, $s2, $s3
	st.d	$fp, $sp, 248                   # 8-byte Folded Spill
	bnez	$a0, .LBB3_193
# %bb.189:                              # %.preheader489
                                        #   in Loop: Header=BB3_188 Depth=1
	blez	$s5, .LBB3_191
# %bb.190:                              # %.lr.ph598
                                        #   in Loop: Header=BB3_188 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.sgap1)
	ori	$a1, $zero, 111
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB3_191:                              # %.preheader487
                                        #   in Loop: Header=BB3_188 Depth=1
	blez	$s4, .LBB3_194
# %bb.192:                              # %.lr.ph600
                                        #   in Loop: Header=BB3_188 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.sgap2)
	ori	$a1, $zero, 111
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB3_194
	.p2align	4, , 16
.LBB3_193:                              #   in Loop: Header=BB3_188 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.sgap1)
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Falign_noudp.tmpres1)
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	addi.w	$s6, $a2, -1
	move	$a2, $s6
	move	$a3, $s5
	pcaddu18i	$ra, %call36(getkyokaigap)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.sgap2)
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Falign_noudp.tmpres2)
	move	$a2, $s6
	move	$a3, $s4
	pcaddu18i	$ra, %call36(getkyokaigap)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s1, %pc_lo12(Falign_noudp.cut1)
.LBB3_194:                              # %.loopexit488
                                        #   in Loop: Header=BB3_188 Depth=1
	move	$s1, $s7
	addi.d	$s6, $s7, 1
	slli.d	$s7, $s6, 2
	ldx.w	$a2, $s2, $s7
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bne	$a2, $a0, .LBB3_199
# %bb.195:                              # %.preheader486
                                        #   in Loop: Header=BB3_188 Depth=1
	blez	$s5, .LBB3_197
# %bb.196:                              # %.lr.ph602
                                        #   in Loop: Header=BB3_188 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.egap1)
	ori	$a1, $zero, 111
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB3_197:                              # %.preheader484
                                        #   in Loop: Header=BB3_188 Depth=1
	blez	$s4, .LBB3_200
# %bb.198:                              # %.lr.ph604
                                        #   in Loop: Header=BB3_188 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.egap2)
	ori	$a1, $zero, 111
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB3_200
	.p2align	4, , 16
.LBB3_199:                              #   in Loop: Header=BB3_188 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.egap1)
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a3, $s5
	pcaddu18i	$ra, %call36(getkyokaigap)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Falign_noudp.cut2)
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.egap2)
	ldx.w	$a2, $a1, $s7
	move	$a1, $s0
	move	$a3, $s4
	pcaddu18i	$ra, %call36(getkyokaigap)
	jirl	$ra, $ra, 0
.LBB3_200:                              # %.loopexit485
                                        #   in Loop: Header=BB3_188 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	addi.w	$a2, $s6, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	blez	$s5, .LBB3_203
# %bb.201:                              # %.lr.ph607
                                        #   in Loop: Header=BB3_188 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_noudp.cut1)
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $a1, %pc_lo12(Falign_noudp.tmpres1)
	alsl.d	$s1, $s1, $a0, 2
	alsl.d	$s2, $s6, $a0, 2
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_202:                              #   Parent Loop BB3_188 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s5, 0
	ld.w	$a2, $s1, 0
	ld.w	$a3, $s2, 0
	ld.d	$a0, $fp, 0
	add.d	$a1, $a1, $a2
	sub.w	$a2, $a3, $a2
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	ld.w	$a1, $s1, 0
	ld.d	$a2, $fp, 0
	sub.w	$a0, $a0, $a1
	stx.b	$zero, $a2, $a0
	addi.d	$s5, $s5, 8
	addi.d	$s4, $s4, -1
	addi.d	$fp, $fp, 8
	bnez	$s4, .LBB3_202
.LBB3_203:                              # %._crit_edge608
                                        #   in Loop: Header=BB3_188 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_206
# %bb.204:                              # %._crit_edge608
                                        #   in Loop: Header=BB3_188 Depth=1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB3_206
# %bb.205:                              #   in Loop: Header=BB3_188 Depth=1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Falign_noudp.tmpres1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(commongappick)
	jirl	$ra, $ra, 0
.LBB3_206:                              #   in Loop: Header=BB3_188 Depth=1
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	blez	$s4, .LBB3_211
# %bb.207:                              # %.lr.ph611.preheader
                                        #   in Loop: Header=BB3_188 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(Falign_noudp.cut2)
	move	$fp, $zero
	b	.LBB3_209
	.p2align	4, , 16
.LBB3_208:                              #   in Loop: Header=BB3_209 Depth=2
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(Falign_noudp.tmpres2)
	ldx.d	$a1, $s0, $fp
	ldx.d	$a0, $s2, $fp
	add.d	$a1, $a1, $a3
	sub.w	$a2, $a2, $a3
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ldx.w	$a0, $s1, $s7
	ldx.w	$a1, $s1, $s3
	ldx.d	$a2, $s2, $fp
	sub.w	$a0, $a0, $a1
	addi.d	$fp, $fp, 8
	stx.b	$zero, $a2, $a0
	beq	$s8, $fp, .LBB3_211
.LBB3_209:                              # %.lr.ph611
                                        #   Parent Loop BB3_188 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a2, $s1, $s7
	ldx.w	$a3, $s1, $s3
	blt	$a3, $a2, .LBB3_208
# %bb.210:                              #   in Loop: Header=BB3_209 Depth=2
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(Falign_noudp.cut2)
	ldx.w	$a3, $s1, $s3
	ldx.w	$a2, $s1, $s7
	b	.LBB3_208
	.p2align	4, , 16
.LBB3_211:                              # %._crit_edge612
                                        #   in Loop: Header=BB3_188 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_214
# %bb.212:                              # %._crit_edge612
                                        #   in Loop: Header=BB3_188 Depth=1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB3_214
# %bb.213:                              #   in Loop: Header=BB3_188 Depth=1
	ld.d	$a1, $s2, %pc_lo12(Falign_noudp.tmpres2)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(commongappick)
	jirl	$ra, $ra, 0
.LBB3_214:                              #   in Loop: Header=BB3_188 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 168                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_252
# %bb.215:                              #   in Loop: Header=BB3_188 Depth=1
	pcalau12i	$a0, %got_pc_hi20(alg)
	ld.d	$a0, $a0, %got_pc_lo12(alg)
	ld.bu	$a1, $a0, 0
	ori	$a0, $zero, 77
	bne	$a1, $a0, .LBB3_225
# %bb.216:                              #   in Loop: Header=BB3_188 Depth=1
	ld.d	$a0, $fp, %pc_lo12(Falign_noudp.tmpres1)
	ld.d	$a1, $s2, %pc_lo12(Falign_noudp.tmpres2)
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a7, $a2, %pc_lo12(Falign_noudp.sgap1)
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Falign_noudp.sgap2)
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Falign_noudp.egap1)
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Falign_noudp.egap2)
	st.d	$a4, $sp, 16
	st.d	$a3, $sp, 8
	st.d	$a2, $sp, 0
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	move	$a4, $s5
	move	$a5, $s4
	move	$a6, $s1
	pcaddu18i	$ra, %call36(MSalignmm)
	jirl	$ra, $ra, 0
	fadd.s	$fs0, $fs0, $fa0
.LBB3_217:                              #   in Loop: Header=BB3_188 Depth=1
	ld.d	$a0, $fp, %pc_lo12(Falign_noudp.tmpres1)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	add.w	$fp, $a2, $a0
	blt	$s1, $fp, .LBB3_226
# %bb.218:                              #   in Loop: Header=BB3_188 Depth=1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	blez	$s5, .LBB3_221
.LBB3_219:                              # %.lr.ph615
                                        #   in Loop: Header=BB3_188 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(Falign_noudp.result1)
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(Falign_noudp.tmpres1)
	ld.d	$s3, $sp, 264                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_220:                              #   Parent Loop BB3_188 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s2, 0
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 8
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 8
	bnez	$s3, .LBB3_220
.LBB3_221:                              # %.preheader483
                                        #   in Loop: Header=BB3_188 Depth=1
	blez	$s4, .LBB3_224
# %bb.222:                              # %.lr.ph617
                                        #   in Loop: Header=BB3_188 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(Falign_noudp.result2)
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(Falign_noudp.tmpres2)
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_223:                              #   Parent Loop BB3_188 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s2, 0
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 8
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 8
	bnez	$s3, .LBB3_223
.LBB3_224:                              # %.loopexit
                                        #   in Loop: Header=BB3_188 Depth=1
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	bne	$s6, $a0, .LBB3_188
	b	.LBB3_228
.LBB3_225:                              #   in Loop: Header=BB3_188 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ext.w.b	$a2, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	b	.LBB3_217
.LBB3_226:                              #   in Loop: Header=BB3_188 Depth=1
	move	$s2, $a0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	addi.w	$a3, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	move	$a4, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	bgtz	$s5, .LBB3_219
	b	.LBB3_221
.LBB3_227:
	movgr2fr.w	$fs0, $zero
.LBB3_228:                              # %.preheader482
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	blez	$s5, .LBB3_231
# %bb.229:                              # %.lr.ph627
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(Falign_noudp.result1)
	.p2align	4, , 16
.LBB3_230:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s5, $s5, -1
	addi.d	$s1, $s1, 8
	bnez	$s5, .LBB3_230
.LBB3_231:                              # %.preheader
	blez	$s4, .LBB3_234
# %bb.232:                              # %.lr.ph629
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(Falign_noudp.result2)
	.p2align	4, , 16
.LBB3_233:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s4, $s4, -1
	addi.d	$s0, $s0, 8
	bnez	$s4, .LBB3_233
.LBB3_234:                              # %._crit_edge630
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 288                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
	ret
.LBB3_235:                              # %.lr.ph588
	ld.d	$a3, $s4, %pc_lo12(Falign_noudp.sortedseg1)
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Falign_noudp.cut2)
	ld.d	$a4, $a3, 0
	st.w	$zero, $a0, 0
	st.w	$zero, $a1, 0
	ld.w	$a2, $a4, 8
	ld.w	$a5, $a0, 0
	bge	$a5, $a2, .LBB3_248
# %bb.236:
	ld.d	$a4, $a4, 32
	ld.w	$a5, $a4, 8
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	blez	$a5, .LBB3_251
# %bb.237:
	st.w	$a2, $a0, 4
	ld.w	$a2, $a4, 8
	st.w	$a2, $a1, 4
	ori	$a2, $zero, 1
	ori	$a4, $zero, 1
	beq	$s2, $a4, .LBB3_249
.LBB3_238:                              # %.peel.next.preheader
	bstrpick.d	$a4, $s2, 31, 0
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, -1
	ld.d	$t2, $sp, 88                    # 8-byte Folded Reload
	b	.LBB3_242
	.p2align	4, , 16
.LBB3_239:                              #   in Loop: Header=BB3_242 Depth=1
	addi.d	$a6, $t0, 8
	addi.w	$a2, $a2, 1
	slli.d	$a7, $a2, 2
	stx.w	$a5, $a0, $a7
.LBB3_240:                              # %.sink.split
                                        #   in Loop: Header=BB3_242 Depth=1
	ld.w	$a5, $a6, 0
	slli.d	$a6, $a2, 2
	stx.w	$a5, $a1, $a6
.LBB3_241:                              #   in Loop: Header=BB3_242 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	beqz	$a4, .LBB3_250
.LBB3_242:                              # %.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a3, 0
	ld.w	$a5, $a6, 8
	slli.d	$a7, $a2, 2
	ldx.w	$t0, $a0, $a7
	bge	$t0, $a5, .LBB3_244
# %bb.243:                              #   in Loop: Header=BB3_242 Depth=1
	ld.d	$t0, $a6, 32
	ld.w	$t1, $t0, 8
	ldx.w	$a7, $a1, $a7
	blt	$a7, $t1, .LBB3_239
.LBB3_244:                              #   in Loop: Header=BB3_242 Depth=1
	ld.d	$a7, $a3, -8
	fld.d	$fa0, $a6, 16
	fld.d	$fa1, $a7, 16
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB3_241
# %bb.245:                              #   in Loop: Header=BB3_242 Depth=1
	addi.w	$a7, $a2, -1
	slli.d	$a7, $a7, 2
	ldx.w	$t0, $a0, $a7
	bge	$t0, $a5, .LBB3_241
# %bb.246:                              #   in Loop: Header=BB3_242 Depth=1
	ld.d	$a6, $a6, 32
	ld.w	$t0, $a6, 8
	ldx.w	$a7, $a1, $a7
	bge	$a7, $t0, .LBB3_241
# %bb.247:                              #   in Loop: Header=BB3_242 Depth=1
	alsl.d	$a7, $a2, $a0, 2
	addi.d	$a6, $a6, 8
	st.w	$a5, $a7, 0
	b	.LBB3_240
.LBB3_248:
	move	$a2, $zero
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ori	$a4, $zero, 1
	bne	$s2, $a4, .LBB3_238
.LBB3_249:
	ld.d	$t2, $sp, 88                    # 8-byte Folded Reload
.LBB3_250:
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	b	.LBB3_180
.LBB3_251:
	move	$a2, $zero
	ori	$a4, $zero, 1
	beq	$s2, $a4, .LBB3_249
	b	.LBB3_238
.LBB3_252:
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	Falign_noudp, .Lfunc_end3-Falign_noudp
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_71-.LJTI3_0
	.word	.LBB3_68-.LJTI3_0
	.word	.LBB3_72-.LJTI3_0
	.word	.LBB3_68-.LJTI3_0
	.word	.LBB3_68-.LJTI3_0
	.word	.LBB3_68-.LJTI3_0
	.word	.LBB3_66-.LJTI3_0
	.word	.LBB3_68-.LJTI3_0
	.word	.LBB3_68-.LJTI3_0
	.word	.LBB3_68-.LJTI3_0
	.word	.LBB3_68-.LJTI3_0
	.word	.LBB3_68-.LJTI3_0
	.word	.LBB3_68-.LJTI3_0
	.word	.LBB3_68-.LJTI3_0
	.word	.LBB3_68-.LJTI3_0
	.word	.LBB3_68-.LJTI3_0
	.word	.LBB3_68-.LJTI3_0
	.word	.LBB3_68-.LJTI3_0
	.word	.LBB3_68-.LJTI3_0
	.word	.LBB3_73-.LJTI3_0
.LJTI3_1:
	.word	.LBB3_109-.LJTI3_1
	.word	.LBB3_106-.LJTI3_1
	.word	.LBB3_110-.LJTI3_1
	.word	.LBB3_106-.LJTI3_1
	.word	.LBB3_106-.LJTI3_1
	.word	.LBB3_106-.LJTI3_1
	.word	.LBB3_104-.LJTI3_1
	.word	.LBB3_106-.LJTI3_1
	.word	.LBB3_106-.LJTI3_1
	.word	.LBB3_106-.LJTI3_1
	.word	.LBB3_106-.LJTI3_1
	.word	.LBB3_106-.LJTI3_1
	.word	.LBB3_106-.LJTI3_1
	.word	.LBB3_106-.LJTI3_1
	.word	.LBB3_106-.LJTI3_1
	.word	.LBB3_106-.LJTI3_1
	.word	.LBB3_106-.LJTI3_1
	.word	.LBB3_106-.LJTI3_1
	.word	.LBB3_106-.LJTI3_1
	.word	.LBB3_111-.LJTI3_1
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function Falign_udpari_long
.LCPI4_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	Falign_udpari_long
	.p2align	5
	.type	Falign_udpari_long,@function
Falign_udpari_long:                     # @Falign_udpari_long
# %bb.0:
	addi.d	$sp, $sp, -384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	st.d	$s2, $sp, 344                   # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	st.d	$s4, $sp, 328                   # 8-byte Folded Spill
	st.d	$s5, $sp, 320                   # 8-byte Folded Spill
	st.d	$s6, $sp, 312                   # 8-byte Folded Spill
	st.d	$s7, $sp, 304                   # 8-byte Folded Spill
	st.d	$s8, $sp, 296                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 288                  # 8-byte Folded Spill
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$a7, $sp, 88                    # 8-byte Folded Spill
	move	$fp, $a6
	move	$s6, $a5
	move	$s2, $a4
	st.d	$a3, $sp, 216                   # 8-byte Folded Spill
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	move	$s0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.w	$s1, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.w	$a1, $a0, 0
	slt	$a0, $a1, $s1
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	masknez	$a1, $a1, $a0
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	move	$s5, $a1
	addi.w	$s3, $a1, 0
	slli.d	$a1, $a1, 1
	bge	$a0, $s3, .LBB4_1
# %bb.2:
	pcalau12i	$s1, %pc_hi20(Falign_udpari_long.prevalloclen)
	ld.w	$a0, $s1, %pc_lo12(Falign_udpari_long.prevalloclen)
	pcalau12i	$s4, %pc_hi20(Falign_udpari_long.result2)
	pcalau12i	$s8, %pc_hi20(Falign_udpari_long.result1)
	pcalau12i	$a1, %pc_hi20(Falign_udpari_long.tmpres1)
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Falign_udpari_long.tmpres2)
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	beq	$a0, $fp, .LBB4_6
# %bb.3:
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 272                   # 8-byte Folded Reload
	beqz	$a0, .LBB4_5
# %bb.4:
	ld.d	$a0, $s8, %pc_lo12(Falign_udpari_long.result1)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, %pc_lo12(Falign_udpari_long.result2)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(Falign_udpari_long.tmpres1)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(Falign_udpari_long.tmpres2)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
.LBB4_5:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	st.d	$a0, $s8, %pc_lo12(Falign_udpari_long.result1)
	move	$a0, $a1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	st.d	$a0, $s4, %pc_lo12(Falign_udpari_long.result2)
	move	$a0, $a1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	st.d	$a0, $s5, %pc_lo12(Falign_udpari_long.tmpres1)
	move	$a0, $a1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, %pc_lo12(Falign_udpari_long.tmpres2)
	st.w	$s6, $s1, %pc_lo12(Falign_udpari_long.prevalloclen)
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
.LBB4_6:
	pcalau12i	$s1, %pc_hi20(Falign_udpari_long.localalloclen)
	ld.w	$a0, $s1, %pc_lo12(Falign_udpari_long.localalloclen)
	pcalau12i	$a1, %pc_hi20(Falign_udpari_long.kouho)
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	lu12i.w	$s7, 24
	pcalau12i	$a1, %pc_hi20(Falign_udpari_long.cut1)
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Falign_udpari_long.cut2)
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Falign_udpari_long.tmpptr1)
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Falign_udpari_long.tmpptr2)
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Falign_udpari_long.segment)
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Falign_udpari_long.segment1)
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Falign_udpari_long.segment2)
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Falign_udpari_long.sortedseg1)
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Falign_udpari_long.sortedseg2)
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	st.d	$s2, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	beqz	$a0, .LBB4_15
# %bb.7:
	bge	$a0, $s3, .LBB4_22
.LBB4_8:
	beqz	$a0, .LBB4_12
# %bb.9:
	pcalau12i	$a0, %got_pc_hi20(kobetsubunkatsu)
	ld.d	$a0, $a0, %got_pc_lo12(kobetsubunkatsu)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB4_11
# %bb.10:
	pcalau12i	$a0, %pc_hi20(Falign_udpari_long.seqVector1)
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.seqVector1)
	pcaddu18i	$ra, %call36(FreeFukusosuuMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(Falign_udpari_long.seqVector2)
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.seqVector2)
	pcaddu18i	$ra, %call36(FreeFukusosuuMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(Falign_udpari_long.naisekiNoWa)
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.naisekiNoWa)
	pcaddu18i	$ra, %call36(FreeFukusosuuVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(Falign_udpari_long.naiseki)
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.naiseki)
	pcaddu18i	$ra, %call36(FreeFukusosuuMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(Falign_udpari_long.soukan)
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.soukan)
	pcaddu18i	$ra, %call36(FreeDoubleVec)
	jirl	$ra, $ra, 0
.LBB4_11:
	pcalau12i	$a0, %pc_hi20(Falign_udpari_long.tmpseq1)
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.tmpseq1)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(Falign_udpari_long.tmpseq2)
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.tmpseq2)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
.LBB4_12:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	pcalau12i	$a2, %pc_hi20(Falign_udpari_long.tmpseq1)
	st.d	$a0, $a2, %pc_lo12(Falign_udpari_long.tmpseq1)
	move	$a0, $a1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(Falign_udpari_long.tmpseq2)
	st.d	$a0, $a1, %pc_lo12(Falign_udpari_long.tmpseq2)
	pcalau12i	$a0, %got_pc_hi20(kobetsubunkatsu)
	ld.d	$a0, $a0, %got_pc_lo12(kobetsubunkatsu)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB4_14
# %bb.13:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFukusosuuVec)
	jirl	$ra, $ra, 0
	pcalau12i	$fp, %pc_hi20(n20or4or2)
	ld.w	$a1, $fp, %pc_lo12(n20or4or2)
	pcalau12i	$a2, %pc_hi20(Falign_udpari_long.naisekiNoWa)
	st.d	$a0, $a2, %pc_lo12(Falign_udpari_long.naisekiNoWa)
	move	$a0, $a1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateFukusosuuMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(n20or4or2)
	pcalau12i	$a2, %pc_hi20(Falign_udpari_long.naiseki)
	st.d	$a0, $a2, %pc_lo12(Falign_udpari_long.naiseki)
	addi.w	$s4, $s5, 1
	move	$a0, $a1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(AllocateFukusosuuMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(n20or4or2)
	pcalau12i	$a2, %pc_hi20(Falign_udpari_long.seqVector1)
	st.d	$a0, $a2, %pc_lo12(Falign_udpari_long.seqVector1)
	move	$a0, $a1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(AllocateFukusosuuMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(Falign_udpari_long.seqVector2)
	st.d	$a0, $a1, %pc_lo12(Falign_udpari_long.seqVector2)
	move	$a0, $s4
	ld.d	$s2, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateDoubleVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(Falign_udpari_long.soukan)
	st.d	$a0, $a1, %pc_lo12(Falign_udpari_long.soukan)
.LBB4_14:
	st.w	$s5, $s1, %pc_lo12(Falign_udpari_long.localalloclen)
	bgtz	$s2, .LBB4_23
	b	.LBB4_25
.LBB4_15:
	move	$s2, $s1
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s1, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s1, 0
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	pcalau12i	$a2, %pc_hi20(Falign_udpari_long.sgap1)
	st.d	$a0, $a2, %pc_lo12(Falign_udpari_long.sgap1)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	pcalau12i	$a2, %pc_hi20(Falign_udpari_long.egap1)
	st.d	$a0, $a2, %pc_lo12(Falign_udpari_long.egap1)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	pcalau12i	$a2, %pc_hi20(Falign_udpari_long.sgap2)
	st.d	$a0, $a2, %pc_lo12(Falign_udpari_long.sgap2)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(Falign_udpari_long.egap2)
	st.d	$a0, $a1, %pc_lo12(Falign_udpari_long.egap2)
	ori	$a0, $zero, 100
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Falign_udpari_long.kouho)
	ori	$fp, $s7, 1696
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Falign_udpari_long.cut1)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(Falign_udpari_long.cut2)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(Falign_udpari_long.tmpptr1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Falign_udpari_long.tmpptr2)
	ori	$a1, $zero, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	st.d	$s4, $a0, %pc_lo12(Falign_udpari_long.segment)
	ori	$a1, $zero, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	st.d	$s5, $a0, %pc_lo12(Falign_udpari_long.segment1)
	ori	$a1, $zero, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	st.d	$s8, $a0, %pc_lo12(Falign_udpari_long.segment2)
	ori	$a1, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$s6, $a0, %pc_lo12(Falign_udpari_long.sortedseg1)
	ori	$a1, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Falign_udpari_long.sortedseg2)
	beqz	$s4, .LBB4_20
# %bb.16:
	beqz	$s5, .LBB4_20
# %bb.17:
	beqz	$s8, .LBB4_20
# %bb.18:
	beqz	$s6, .LBB4_20
# %bb.19:
	bnez	$a0, .LBB4_21
.LBB4_20:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB4_21:                               # %thread-pre-split
	pcalau12i	$a0, %got_pc_hi20(scoremtx)
	ld.d	$a0, $a0, %got_pc_lo12(scoremtx)
	ld.w	$a0, $a0, 0
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %got_pc_hi20(fftscore)
	ld.d	$a1, $a1, %got_pc_lo12(fftscore)
	ld.w	$a1, $a1, 0
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 1
	masknez	$a3, $a2, $a1
	ori	$a4, $zero, 20
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a3
	masknez	$a1, $a1, $a0
	maskeqz	$a2, $a2, $a0
	move	$s1, $s2
	ld.w	$a0, $s2, %pc_lo12(Falign_udpari_long.localalloclen)
	or	$a1, $a2, $a1
	pcalau12i	$a2, %pc_hi20(n20or4or2)
	st.w	$a1, $a2, %pc_lo12(n20or4or2)
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	blt	$a0, $s3, .LBB4_8
.LBB4_22:
	blez	$s2, .LBB4_25
.LBB4_23:                               # %.lr.ph
	pcalau12i	$a0, %pc_hi20(Falign_udpari_long.tmpseq1)
	ld.d	$fp, $a0, %pc_lo12(Falign_udpari_long.tmpseq1)
	move	$s1, $s2
	ld.d	$s2, $sp, 224                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_24:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s2, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 8
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 8
	bnez	$s1, .LBB4_24
.LBB4_25:                               # %.preheader452
	blez	$s6, .LBB4_28
# %bb.26:                               # %.lr.ph459
	pcalau12i	$a0, %pc_hi20(Falign_udpari_long.tmpseq2)
	ld.d	$fp, $a0, %pc_lo12(Falign_udpari_long.tmpseq2)
	move	$s1, $s6
	move	$s2, $s0
	.p2align	4, , 16
.LBB4_27:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s2, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 8
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 8
	bnez	$s1, .LBB4_27
.LBB4_28:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(kobetsubunkatsu)
	ld.d	$a0, $a0, %got_pc_lo12(kobetsubunkatsu)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB4_46
# %bb.29:                               # %.thread
	st.w	$zero, $sp, 284
.LBB4_30:                               # %.thread772
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.kouho)
	st.w	$zero, $a0, 0
	ori	$s6, $zero, 1
.LBB4_31:                               # %.lr.ph507
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	sub.w	$t0, $zero, $a0
	ori	$a0, $s7, 1694
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	move	$s4, $zero
	ori	$s1, $zero, 48
	st.d	$t0, $sp, 184                   # 8-byte Folded Spill
	b	.LBB4_33
	.p2align	4, , 16
.LBB4_32:                               # %.loopexit435
                                        #   in Loop: Header=BB4_33 Depth=1
	addi.d	$s4, $s4, 1
	beq	$s4, $s6, .LBB4_42
.LBB4_33:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_41 Depth 2
                                        #     Child Loop BB4_40 Depth 2
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.kouho)
	slli.d	$a1, $s4, 2
	ldx.w	$s5, $a0, $a1
	bge	$t0, $s5, .LBB4_32
# %bb.34:                               #   in Loop: Header=BB4_33 Depth=1
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	bge	$s5, $a0, .LBB4_32
# %bb.35:                               #   in Loop: Header=BB4_33 Depth=1
	move	$a4, $s0
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a5, $s0, %pc_lo12(Falign_udpari_long.tmpptr1)
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a6, $s3, %pc_lo12(Falign_udpari_long.tmpptr2)
	move	$a0, $s5
	ld.d	$s8, $sp, 240                   # 8-byte Folded Reload
	move	$a1, $s8
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $s2
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	move	$s7, $a4
	pcaddu18i	$ra, %call36(zurasu2)
	jirl	$ra, $ra, 0
	ld.w	$fp, $sp, 284
	ld.d	$a2, $s0, %pc_lo12(Falign_udpari_long.tmpptr1)
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.segment)
	ld.d	$a3, $s3, %pc_lo12(Falign_udpari_long.tmpptr2)
	slli.d	$a1, $fp, 5
	alsl.d	$a1, $fp, $a1, 4
	add.d	$a6, $a0, $a1
	move	$a0, $s8
	move	$a1, $s2
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(alignableReagion)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	add.w	$a0, $fp, $a0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB4_37
# %bb.36:                               #   in Loop: Header=BB4_33 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB4_37:                               #   in Loop: Header=BB4_33 Depth=1
	move	$s0, $s7
	ld.d	$t0, $sp, 184                   # 8-byte Folded Reload
	beqz	$s8, .LBB4_42
# %bb.38:                               # %.preheader434
                                        #   in Loop: Header=BB4_33 Depth=1
	blez	$s8, .LBB4_32
# %bb.39:                               # %.lr.ph504
                                        #   in Loop: Header=BB4_33 Depth=1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.segment)
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Falign_udpari_long.segment1)
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Falign_udpari_long.segment2)
	blez	$s5, .LBB4_41
	.p2align	4, , 16
.LBB4_40:                               # %.lr.ph504.split.us
                                        #   Parent Loop BB4_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mul.d	$a3, $fp, $s1
	ldx.w	$a4, $a0, $a3
	stx.w	$a4, $a1, $a3
	ld.w	$a3, $sp, 284
	mul.d	$a3, $a3, $s1
	add.d	$a4, $a0, $a3
	ld.w	$a4, $a4, 4
	add.d	$a3, $a1, $a3
	st.w	$a4, $a3, 4
	ld.w	$a3, $sp, 284
	mul.d	$a3, $a3, $s1
	add.d	$a4, $a0, $a3
	ld.w	$a4, $a4, 8
	add.d	$a3, $a1, $a3
	st.w	$a4, $a3, 8
	ld.w	$a3, $sp, 284
	mul.d	$a3, $a3, $s1
	ldx.w	$a4, $a0, $a3
	add.d	$a4, $a4, $s5
	stx.w	$a4, $a2, $a3
	ld.w	$a4, $sp, 284
	mul.d	$a4, $a4, $s1
	add.d	$a5, $a0, $a4
	ld.w	$a5, $a5, 4
	add.d	$a5, $a5, $s5
	add.d	$a4, $a2, $a4
	st.w	$a5, $a4, 4
	ld.w	$a4, $sp, 284
	mul.d	$a4, $a4, $s1
	add.d	$a5, $a0, $a4
	ld.w	$a5, $a5, 8
	add.d	$a6, $a0, $a3
	fld.d	$fa0, $a6, 16
	add.d	$a5, $a5, $s5
	add.d	$a4, $a2, $a4
	st.w	$a5, $a4, 8
	ld.w	$a4, $sp, 284
	add.d	$a3, $a1, $a3
	fst.d	$fa0, $a3, 16
	mul.d	$a3, $a4, $s1
	add.d	$a5, $a0, $a3
	fld.d	$fa0, $a5, 16
	add.d	$a5, $a2, $a3
	fst.d	$fa0, $a5, 16
	add.d	$a3, $a1, $a3
	st.d	$a5, $a3, 32
	st.d	$a3, $a5, 32
	addi.w	$fp, $a4, 1
	addi.w	$s8, $s8, -1
	st.w	$fp, $sp, 284
	bnez	$s8, .LBB4_40
	b	.LBB4_32
	.p2align	4, , 16
.LBB4_41:                               # %.lr.ph504.split
                                        #   Parent Loop BB4_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mul.d	$a3, $fp, $s1
	ldx.w	$a4, $a0, $a3
	sub.d	$a4, $a4, $s5
	stx.w	$a4, $a1, $a3
	ld.w	$a3, $sp, 284
	mul.d	$a3, $a3, $s1
	add.d	$a4, $a0, $a3
	ld.w	$a4, $a4, 4
	sub.d	$a4, $a4, $s5
	add.d	$a3, $a1, $a3
	st.w	$a4, $a3, 4
	ld.w	$a3, $sp, 284
	mul.d	$a3, $a3, $s1
	add.d	$a4, $a0, $a3
	ld.w	$a4, $a4, 8
	sub.d	$a4, $a4, $s5
	add.d	$a3, $a1, $a3
	st.w	$a4, $a3, 8
	ld.w	$a3, $sp, 284
	mul.d	$a3, $a3, $s1
	ldx.w	$a4, $a0, $a3
	stx.w	$a4, $a2, $a3
	ld.w	$a4, $sp, 284
	mul.d	$a4, $a4, $s1
	add.d	$a5, $a0, $a4
	ld.w	$a5, $a5, 4
	add.d	$a4, $a2, $a4
	st.w	$a5, $a4, 4
	ld.w	$a4, $sp, 284
	mul.d	$a4, $a4, $s1
	add.d	$a5, $a0, $a4
	ld.w	$a5, $a5, 8
	add.d	$a6, $a0, $a3
	fld.d	$fa0, $a6, 16
	add.d	$a4, $a2, $a4
	st.w	$a5, $a4, 8
	ld.w	$a4, $sp, 284
	add.d	$a3, $a1, $a3
	fst.d	$fa0, $a3, 16
	mul.d	$a3, $a4, $s1
	add.d	$a5, $a0, $a3
	fld.d	$fa0, $a5, 16
	add.d	$a5, $a2, $a3
	fst.d	$fa0, $a5, 16
	add.d	$a3, $a1, $a3
	st.d	$a5, $a3, 32
	st.d	$a3, $a5, 32
	addi.w	$fp, $a4, 1
	addi.w	$s8, $s8, -1
	st.w	$fp, $sp, 284
	bnez	$s8, .LBB4_41
	b	.LBB4_32
.LBB4_42:                               # %._crit_edge508thread-pre-split
	ld.w	$s3, $sp, 284
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB4_147
.LBB4_43:
	bnez	$s3, .LBB4_148
.LBB4_44:
	pcalau12i	$a0, %got_pc_hi20(fftNoAnchStop)
	ld.d	$a0, $a0, %got_pc_lo12(fftNoAnchStop)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB4_148
# %bb.45:                               # %.thread775
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(Falign_udpari_long.sortedseg1)
	b	.LBB4_157
.LBB4_46:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 9
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$s7, %pc_hi20(n20or4or2)
	ld.w	$s8, $s7, %pc_lo12(n20or4or2)
	bstrpick.d	$a0, $s5, 31, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	blez	$s8, .LBB4_51
# %bb.47:                               # %.lr.ph462
	pcalau12i	$a0, %pc_hi20(Falign_udpari_long.seqVector1)
	ld.d	$fp, $a0, %pc_lo12(Falign_udpari_long.seqVector1)
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	slli.d	$s4, $a0, 4
	move	$s1, $s8
	b	.LBB4_49
	.p2align	4, , 16
.LBB4_48:                               # %vec_init.exit
                                        #   in Loop: Header=BB4_49 Depth=1
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 8
	beqz	$s1, .LBB4_51
.LBB4_49:                               # =>This Inner Loop Header: Depth=1
	beqz	$s3, .LBB4_48
# %bb.50:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB4_49 Depth=1
	ld.d	$a0, $fp, 0
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB4_48
.LBB4_51:                               # %._crit_edge463
	pcalau12i	$a0, %got_pc_hi20(scoremtx)
	ld.d	$a0, $a0, %got_pc_lo12(scoremtx)
	ld.w	$a0, $a0, 0
	addi.w	$s6, $zero, -1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	beq	$a0, $s6, .LBB4_61
# %bb.52:
	pcalau12i	$a0, %got_pc_hi20(fftscore)
	ld.d	$a0, $a0, %got_pc_lo12(fftscore)
	ld.w	$a0, $a0, 0
	ld.d	$t2, $sp, 240                   # 8-byte Folded Reload
	beqz	$a0, .LBB4_75
# %bb.53:                               # %.preheader450
	blez	$t2, .LBB4_84
# %bb.54:                               # %.lr.ph465
	pcalau12i	$a0, %pc_hi20(Falign_udpari_long.seqVector1)
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.seqVector1)
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(Falign_udpari_long.tmpseq1)
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.tmpseq1)
	addi.d	$a1, $a1, 8
	pcalau12i	$a2, %got_pc_hi20(amino_n)
	ld.d	$a2, $a2, %got_pc_lo12(amino_n)
	ori	$a3, $zero, 20
	pcalau12i	$a4, %got_pc_hi20(polarity)
	ld.d	$a4, $a4, %got_pc_lo12(polarity)
	pcalau12i	$a5, %got_pc_hi20(volume)
	ld.d	$a5, $a5, %got_pc_lo12(volume)
	move	$a6, $zero
	b	.LBB4_56
	.p2align	4, , 16
.LBB4_55:                               # %seq_vec_5.exit
                                        #   in Loop: Header=BB4_56 Depth=1
	addi.d	$a6, $a6, 1
	beq	$a6, $t2, .LBB4_84
.LBB4_56:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_59 Depth 2
	slli.d	$t0, $a6, 3
	ldx.d	$a7, $a0, $t0
	ld.bu	$t1, $a7, 0
	beqz	$t1, .LBB4_55
# %bb.57:                               # %.lr.ph.i391.preheader
                                        #   in Loop: Header=BB4_56 Depth=1
	ld.d	$t3, $sp, 208                   # 8-byte Folded Reload
	fldx.d	$fa0, $t3, $t0
	addi.d	$a7, $a7, 1
	move	$t0, $a1
	b	.LBB4_59
	.p2align	4, , 16
.LBB4_58:                               #   in Loop: Header=BB4_59 Depth=2
	ld.bu	$t1, $a7, 0
	addi.d	$t0, $t0, 16
	addi.d	$a7, $a7, 1
	beqz	$t1, .LBB4_55
.LBB4_59:                               # %.lr.ph.i391
                                        #   Parent Loop BB4_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$t1, $t1
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a2, $t1
	blt	$a3, $t1, .LBB4_58
# %bb.60:                               #   in Loop: Header=BB4_59 Depth=2
	slli.d	$t1, $t1, 3
	fldx.d	$fa1, $a4, $t1
	fld.d	$fa2, $t0, -8
	fmadd.d	$fa1, $fa0, $fa1, $fa2
	fst.d	$fa1, $t0, -8
	fldx.d	$fa1, $a5, $t1
	fld.d	$fa2, $t0, 0
	fmadd.d	$fa1, $fa0, $fa1, $fa2
	fst.d	$fa1, $t0, 0
	b	.LBB4_58
.LBB4_61:                               # %.preheader446
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
	blez	$t0, .LBB4_84
# %bb.62:                               # %.lr.ph469
	pcalau12i	$a0, %pc_hi20(Falign_udpari_long.seqVector1)
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.seqVector1)
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(Falign_udpari_long.tmpseq1)
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.tmpseq1)
	addi.d	$a1, $a1, 8
	ori	$a2, $zero, 19
	pcalau12i	$a3, %pc_hi20(.LJTI4_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI4_0)
	move	$a4, $zero
	b	.LBB4_64
	.p2align	4, , 16
.LBB4_63:                               # %seq_vec_4.exit
                                        #   in Loop: Header=BB4_64 Depth=1
	addi.d	$a4, $a4, 1
	beq	$a4, $t0, .LBB4_84
.LBB4_64:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_69 Depth 2
	slli.d	$a6, $a4, 3
	ldx.d	$a5, $a0, $a6
	ld.bu	$a7, $a5, 0
	beqz	$a7, .LBB4_63
# %bb.65:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB4_64 Depth=1
	ld.d	$t1, $sp, 208                   # 8-byte Folded Reload
	fldx.d	$fa0, $t1, $a6
	addi.d	$a5, $a5, 1
	move	$a6, $a1
	b	.LBB4_69
	.p2align	4, , 16
.LBB4_66:                               #   in Loop: Header=BB4_69 Depth=2
	fld.d	$fa1, $a6, 0
	fadd.d	$fa1, $fa0, $fa1
.LBB4_67:                               #   in Loop: Header=BB4_69 Depth=2
	fst.d	$fa1, $a6, 0
.LBB4_68:                               #   in Loop: Header=BB4_69 Depth=2
	ld.bu	$a7, $a5, 0
	addi.d	$a6, $a6, 16
	addi.d	$a5, $a5, 1
	beqz	$a7, .LBB4_63
.LBB4_69:                               # %.lr.ph.i
                                        #   Parent Loop BB4_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a7, -97
	bltu	$a2, $a7, .LBB4_68
# %bb.70:                               # %.lr.ph.i
                                        #   in Loop: Header=BB4_69 Depth=2
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a3, $a7
	add.d	$a7, $a3, $a7
	jr	$a7
.LBB4_71:                               #   in Loop: Header=BB4_69 Depth=2
	fld.d	$fa1, $a6, -8
	fadd.d	$fa1, $fa0, $fa1
	b	.LBB4_74
.LBB4_72:                               #   in Loop: Header=BB4_69 Depth=2
	fld.d	$fa1, $a6, 0
	fsub.d	$fa1, $fa1, $fa0
	b	.LBB4_67
.LBB4_73:                               #   in Loop: Header=BB4_69 Depth=2
	fld.d	$fa1, $a6, -8
	fsub.d	$fa1, $fa1, $fa0
.LBB4_74:                               #   in Loop: Header=BB4_69 Depth=2
	fst.d	$fa1, $a6, -8
	b	.LBB4_68
.LBB4_75:                               # %.preheader448
	blez	$t2, .LBB4_84
# %bb.76:                               # %.lr.ph467
	pcalau12i	$a0, %pc_hi20(Falign_udpari_long.seqVector1)
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.seqVector1)
	pcalau12i	$a1, %pc_hi20(Falign_udpari_long.tmpseq1)
	ld.d	$a1, $a1, %pc_lo12(Falign_udpari_long.tmpseq1)
	pcalau12i	$a2, %got_pc_hi20(amino_n)
	ld.d	$a2, $a2, %got_pc_lo12(amino_n)
	move	$a3, $zero
	b	.LBB4_78
	.p2align	4, , 16
.LBB4_77:                               # %seq_vec_3.exit
                                        #   in Loop: Header=BB4_78 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $t2, .LBB4_84
.LBB4_78:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_81 Depth 2
	slli.d	$a4, $a3, 3
	ldx.d	$a5, $a1, $a4
	ld.bu	$a6, $a5, 0
	beqz	$a6, .LBB4_77
# %bb.79:                               # %.lr.ph.i393.preheader
                                        #   in Loop: Header=BB4_78 Depth=1
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	fldx.d	$fa0, $a7, $a4
	move	$a4, $zero
	addi.d	$a5, $a5, 1
	b	.LBB4_81
	.p2align	4, , 16
.LBB4_80:                               #   in Loop: Header=BB4_81 Depth=2
	ld.bu	$a6, $a5, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 1
	beqz	$a6, .LBB4_77
.LBB4_81:                               # %.lr.ph.i393
                                        #   Parent Loop BB4_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$a6, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a2, $a6
	bltz	$a6, .LBB4_80
# %bb.82:                               # %.lr.ph.i393
                                        #   in Loop: Header=BB4_81 Depth=2
	bge	$a6, $s8, .LBB4_80
# %bb.83:                               #   in Loop: Header=BB4_81 Depth=2
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a0, $a6
	fldx.d	$fa1, $a6, $a4
	fadd.d	$fa1, $fa0, $fa1
	fstx.d	$fa1, $a6, $a4
	b	.LBB4_80
.LBB4_84:                               # %.loopexit447
	bstrpick.d	$fp, $s5, 31, 31
	blez	$s8, .LBB4_89
# %bb.85:                               # %.lr.ph472
	pcalau12i	$a0, %pc_hi20(Falign_udpari_long.seqVector2)
	ld.d	$s1, $a0, %pc_lo12(Falign_udpari_long.seqVector2)
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	slli.d	$s4, $a0, 4
	move	$s2, $s8
	b	.LBB4_87
	.p2align	4, , 16
.LBB4_86:                               # %vec_init.exit397
                                        #   in Loop: Header=BB4_87 Depth=1
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 8
	beqz	$s2, .LBB4_89
.LBB4_87:                               # =>This Inner Loop Header: Depth=1
	beqz	$s3, .LBB4_86
# %bb.88:                               # %.lr.ph.preheader.i396
                                        #   in Loop: Header=BB4_87 Depth=1
	ld.d	$a0, $s1, 0
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB4_86
.LBB4_89:                               # %._crit_edge473
	add.w	$a0, $s5, $fp
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	beq	$a1, $s6, .LBB4_99
# %bb.90:
	pcalau12i	$a0, %got_pc_hi20(fftscore)
	ld.d	$a0, $a0, %got_pc_lo12(fftscore)
	ld.w	$a0, $a0, 0
	move	$s2, $s7
	beqz	$a0, .LBB4_113
# %bb.91:                               # %.preheader444
	ld.d	$t3, $sp, 232                   # 8-byte Folded Reload
	blez	$t3, .LBB4_122
# %bb.92:                               # %.lr.ph475
	pcalau12i	$a0, %pc_hi20(Falign_udpari_long.seqVector2)
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.seqVector2)
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(Falign_udpari_long.tmpseq2)
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.tmpseq2)
	addi.d	$a1, $a1, 8
	pcalau12i	$a2, %got_pc_hi20(amino_n)
	ld.d	$a2, $a2, %got_pc_lo12(amino_n)
	ori	$a3, $zero, 20
	pcalau12i	$a4, %got_pc_hi20(polarity)
	ld.d	$a4, $a4, %got_pc_lo12(polarity)
	pcalau12i	$a5, %got_pc_hi20(volume)
	ld.d	$a5, $a5, %got_pc_lo12(volume)
	move	$a6, $zero
	b	.LBB4_94
	.p2align	4, , 16
.LBB4_93:                               # %seq_vec_5.exit409
                                        #   in Loop: Header=BB4_94 Depth=1
	addi.d	$a6, $a6, 1
	beq	$a6, $t3, .LBB4_122
.LBB4_94:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_97 Depth 2
	slli.d	$t0, $a6, 3
	ldx.d	$a7, $a0, $t0
	ld.bu	$t1, $a7, 0
	beqz	$t1, .LBB4_93
# %bb.95:                               # %.lr.ph.i405.preheader
                                        #   in Loop: Header=BB4_94 Depth=1
	ld.d	$t2, $sp, 216                   # 8-byte Folded Reload
	fldx.d	$fa0, $t2, $t0
	addi.d	$a7, $a7, 1
	move	$t0, $a1
	b	.LBB4_97
	.p2align	4, , 16
.LBB4_96:                               #   in Loop: Header=BB4_97 Depth=2
	ld.bu	$t1, $a7, 0
	addi.d	$t0, $t0, 16
	addi.d	$a7, $a7, 1
	beqz	$t1, .LBB4_93
.LBB4_97:                               # %.lr.ph.i405
                                        #   Parent Loop BB4_94 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$t1, $t1
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a2, $t1
	blt	$a3, $t1, .LBB4_96
# %bb.98:                               #   in Loop: Header=BB4_97 Depth=2
	slli.d	$t1, $t1, 3
	fldx.d	$fa1, $a4, $t1
	fld.d	$fa2, $t0, -8
	fmadd.d	$fa1, $fa0, $fa1, $fa2
	fst.d	$fa1, $t0, -8
	fldx.d	$fa1, $a5, $t1
	fld.d	$fa2, $t0, 0
	fmadd.d	$fa1, $fa0, $fa1, $fa2
	fst.d	$fa1, $t0, 0
	b	.LBB4_96
.LBB4_99:                               # %.preheader440
	ld.d	$t1, $sp, 232                   # 8-byte Folded Reload
	move	$s2, $s7
	blez	$t1, .LBB4_122
# %bb.100:                              # %.lr.ph479
	pcalau12i	$a0, %pc_hi20(Falign_udpari_long.seqVector2)
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.seqVector2)
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(Falign_udpari_long.tmpseq2)
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.tmpseq2)
	addi.d	$a1, $a1, 8
	ori	$a2, $zero, 19
	pcalau12i	$a3, %pc_hi20(.LJTI4_1)
	addi.d	$a3, $a3, %pc_lo12(.LJTI4_1)
	move	$a4, $zero
	b	.LBB4_102
	.p2align	4, , 16
.LBB4_101:                              # %seq_vec_4.exit403
                                        #   in Loop: Header=BB4_102 Depth=1
	addi.d	$a4, $a4, 1
	beq	$a4, $t1, .LBB4_122
.LBB4_102:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_107 Depth 2
	slli.d	$a6, $a4, 3
	ldx.d	$a5, $a0, $a6
	ld.bu	$a7, $a5, 0
	beqz	$a7, .LBB4_101
# %bb.103:                              # %.lr.ph.i399.preheader
                                        #   in Loop: Header=BB4_102 Depth=1
	ld.d	$t0, $sp, 216                   # 8-byte Folded Reload
	fldx.d	$fa0, $t0, $a6
	addi.d	$a5, $a5, 1
	move	$a6, $a1
	b	.LBB4_107
	.p2align	4, , 16
.LBB4_104:                              #   in Loop: Header=BB4_107 Depth=2
	fld.d	$fa1, $a6, 0
	fadd.d	$fa1, $fa0, $fa1
.LBB4_105:                              #   in Loop: Header=BB4_107 Depth=2
	fst.d	$fa1, $a6, 0
.LBB4_106:                              #   in Loop: Header=BB4_107 Depth=2
	ld.bu	$a7, $a5, 0
	addi.d	$a6, $a6, 16
	addi.d	$a5, $a5, 1
	beqz	$a7, .LBB4_101
.LBB4_107:                              # %.lr.ph.i399
                                        #   Parent Loop BB4_102 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a7, -97
	bltu	$a2, $a7, .LBB4_106
# %bb.108:                              # %.lr.ph.i399
                                        #   in Loop: Header=BB4_107 Depth=2
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a3, $a7
	add.d	$a7, $a3, $a7
	jr	$a7
.LBB4_109:                              #   in Loop: Header=BB4_107 Depth=2
	fld.d	$fa1, $a6, -8
	fadd.d	$fa1, $fa0, $fa1
	b	.LBB4_112
.LBB4_110:                              #   in Loop: Header=BB4_107 Depth=2
	fld.d	$fa1, $a6, 0
	fsub.d	$fa1, $fa1, $fa0
	b	.LBB4_105
.LBB4_111:                              #   in Loop: Header=BB4_107 Depth=2
	fld.d	$fa1, $a6, -8
	fsub.d	$fa1, $fa1, $fa0
.LBB4_112:                              #   in Loop: Header=BB4_107 Depth=2
	fst.d	$fa1, $a6, -8
	b	.LBB4_106
.LBB4_113:                              # %.preheader442
	ld.d	$t0, $sp, 232                   # 8-byte Folded Reload
	blez	$t0, .LBB4_122
# %bb.114:                              # %.lr.ph477
	pcalau12i	$a0, %pc_hi20(Falign_udpari_long.seqVector2)
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.seqVector2)
	pcalau12i	$a1, %pc_hi20(Falign_udpari_long.tmpseq2)
	ld.d	$a1, $a1, %pc_lo12(Falign_udpari_long.tmpseq2)
	pcalau12i	$a2, %got_pc_hi20(amino_n)
	ld.d	$a2, $a2, %got_pc_lo12(amino_n)
	move	$a3, $zero
	b	.LBB4_116
	.p2align	4, , 16
.LBB4_115:                              # %seq_vec_3.exit417
                                        #   in Loop: Header=BB4_116 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $t0, .LBB4_122
.LBB4_116:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_119 Depth 2
	slli.d	$a4, $a3, 3
	ldx.d	$a5, $a1, $a4
	ld.bu	$a6, $a5, 0
	beqz	$a6, .LBB4_115
# %bb.117:                              # %.lr.ph.i411.preheader
                                        #   in Loop: Header=BB4_116 Depth=1
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	fldx.d	$fa0, $a7, $a4
	move	$a4, $zero
	addi.d	$a5, $a5, 1
	b	.LBB4_119
	.p2align	4, , 16
.LBB4_118:                              #   in Loop: Header=BB4_119 Depth=2
	ld.bu	$a6, $a5, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 1
	beqz	$a6, .LBB4_115
.LBB4_119:                              # %.lr.ph.i411
                                        #   Parent Loop BB4_116 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$a6, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a2, $a6
	bltz	$a6, .LBB4_118
# %bb.120:                              # %.lr.ph.i411
                                        #   in Loop: Header=BB4_119 Depth=2
	bge	$a6, $s8, .LBB4_118
# %bb.121:                              #   in Loop: Header=BB4_119 Depth=2
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a0, $a6
	fldx.d	$fa1, $a6, $a4
	fadd.d	$fa1, $fa0, $fa1
	fstx.d	$fa1, $a6, $a4
	b	.LBB4_118
.LBB4_122:                              # %.loopexit441
	pcalau12i	$s1, %pc_hi20(Falign_udpari_long.naiseki)
	blez	$s8, .LBB4_132
# %bb.123:                              # %.lr.ph482.preheader
	move	$fp, $zero
	move	$s5, $zero
	pcalau12i	$s6, %pc_hi20(Falign_udpari_long.seqVector2)
	pcalau12i	$s4, %pc_hi20(Falign_udpari_long.seqVector1)
	.p2align	4, , 16
.LBB4_124:                              # %.lr.ph482
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, %pc_lo12(Falign_udpari_long.seqVector2)
	ldx.d	$a1, $a0, $fp
	sltui	$a2, $s5, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fft)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, %pc_lo12(Falign_udpari_long.seqVector1)
	ldx.d	$a1, $a0, $fp
	move	$a0, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fft)
	jirl	$ra, $ra, 0
	ld.w	$s8, $s2, %pc_lo12(n20or4or2)
	addi.d	$s5, $s5, 1
	addi.d	$fp, $fp, 8
	blt	$s5, $s8, .LBB4_124
# %bb.125:                              # %.preheader439
	blez	$s8, .LBB4_132
# %bb.126:                              # %.preheader438.lr.ph
	move	$fp, $zero
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	slli.d	$s5, $a0, 4
	b	.LBB4_128
	.p2align	4, , 16
.LBB4_127:                              # %._crit_edge485
                                        #   in Loop: Header=BB4_128 Depth=1
	addi.d	$fp, $fp, 1
	bge	$fp, $s8, .LBB4_132
.LBB4_128:                              # %.preheader438
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_130 Depth 2
	blez	$s3, .LBB4_127
# %bb.129:                              # %.lr.ph484.preheader
                                        #   in Loop: Header=BB4_128 Depth=1
	move	$s8, $zero
	slli.d	$s2, $fp, 3
	.p2align	4, , 16
.LBB4_130:                              # %.lr.ph484
                                        #   Parent Loop BB4_128 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s1, %pc_lo12(Falign_udpari_long.naiseki)
	ld.d	$a1, $s4, %pc_lo12(Falign_udpari_long.seqVector1)
	ld.d	$a2, $s6, %pc_lo12(Falign_udpari_long.seqVector2)
	ldx.d	$a0, $a0, $s2
	ldx.d	$a1, $a1, $s2
	ldx.d	$a2, $a2, $s2
	add.d	$a0, $a0, $s8
	add.d	$a1, $a1, $s8
	add.d	$a2, $a2, $s8
	pcaddu18i	$ra, %call36(calcNaiseki)
	jirl	$ra, $ra, 0
	addi.d	$s8, $s8, 16
	bne	$s5, $s8, .LBB4_130
# %bb.131:                              # %._crit_edge485.loopexit
                                        #   in Loop: Header=BB4_128 Depth=1
	ld.w	$s8, $s7, %pc_lo12(n20or4or2)
	b	.LBB4_127
.LBB4_132:                              # %.preheader437
	pcalau12i	$s5, %pc_hi20(Falign_udpari_long.naisekiNoWa)
	ld.d	$a1, $s5, %pc_lo12(Falign_udpari_long.naisekiNoWa)
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	srai.d	$s4, $a0, 1
	lu12i.w	$s7, 24
	blez	$s3, .LBB4_138
# %bb.133:                              # %.lr.ph494
	ld.d	$a0, $s1, %pc_lo12(Falign_udpari_long.naiseki)
	move	$a2, $zero
	bstrpick.d	$a3, $s8, 31, 0
	vrepli.b	$vr0, 0
	b	.LBB4_135
	.p2align	4, , 16
.LBB4_134:                              # %._crit_edge491
                                        #   in Loop: Header=BB4_135 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $s3, .LBB4_138
.LBB4_135:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_137 Depth 2
	slli.d	$a4, $a2, 4
	vstx	$vr0, $a1, $a4
	blez	$s8, .LBB4_134
# %bb.136:                              # %.lr.ph490.preheader
                                        #   in Loop: Header=BB4_135 Depth=1
	alsl.d	$a5, $a2, $a1, 4
	move	$a6, $a3
	move	$a7, $a0
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB4_137:                              # %.lr.ph490
                                        #   Parent Loop BB4_135 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $a7, 0
	vldx	$vr2, $t0, $a4
	vfadd.d	$vr1, $vr2, $vr1
	vst	$vr1, $a5, 0
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 8
	bnez	$a6, .LBB4_137
	b	.LBB4_134
.LBB4_138:                              # %._crit_edge495
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	sub.w	$a0, $zero, $a0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fft)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(Falign_udpari_long.soukan)
	ld.d	$a2, $a0, %pc_lo12(Falign_udpari_long.soukan)
	addi.w	$a1, $zero, -2
	addi.d	$a0, $s4, 1
	bge	$a1, $s3, .LBB4_141
# %bb.139:                              # %.lr.ph499
	ld.d	$a3, $s5, %pc_lo12(Falign_udpari_long.naisekiNoWa)
	bstrpick.d	$a1, $a0, 31, 0
	alsl.d	$a3, $s4, $a3, 4
	move	$a4, $a2
	.p2align	4, , 16
.LBB4_140:                              # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a3, 0
	fst.d	$fa0, $a4, 0
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 8
	bnez	$a1, .LBB4_140
.LBB4_141:                              # %.preheader436
	bge	$a0, $s3, .LBB4_144
# %bb.142:                              # %.lr.ph502
	ld.d	$a0, $s5, %pc_lo12(Falign_udpari_long.naisekiNoWa)
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	addi.w	$a1, $a1, -1
	alsl.d	$a3, $s4, $a2, 3
	addi.d	$a3, $a3, 8
	nor	$a4, $s4, $zero
	add.d	$a4, $a4, $s3
	.p2align	4, , 16
.LBB4_143:                              # =>This Inner Loop Header: Depth=1
	slli.d	$a5, $a1, 4
	fldx.d	$fa0, $a0, $a5
	fst.d	$fa0, $a3, 0
	addi.w	$a1, $a1, -1
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB4_143
.LBB4_144:                              # %._crit_edge503
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.kouho)
	ori	$a1, $zero, 100
	move	$a3, $s3
	pcaddu18i	$ra, %call36(getKouho)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	st.w	$zero, $sp, 284
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	bnez	$a1, .LBB4_30
# %bb.145:
	move	$s6, $a0
	bgtz	$a0, .LBB4_31
# %bb.146:
	move	$s3, $zero
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB4_43
.LBB4_147:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB4_44
.LBB4_148:
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(Falign_udpari_long.sortedseg1)
	blez	$s3, .LBB4_157
# %bb.149:                              # %.lr.ph512
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Falign_udpari_long.segment1)
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(Falign_udpari_long.segment2)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.sortedseg2)
	ori	$a5, $zero, 4
	move	$a4, $zero
	bltu	$s3, $a5, .LBB4_154
# %bb.150:                              # %.lr.ph512
	sub.d	$a5, $a0, $a2
	ori	$a6, $zero, 32
	bltu	$a5, $a6, .LBB4_154
# %bb.151:                              # %vector.ph
	move	$a5, $zero
	bstrpick.d	$a4, $s3, 30, 2
	slli.d	$a4, $a4, 2
	pcalau12i	$a6, %pc_hi20(.LCPI4_0)
	vld	$vr0, $a6, %pc_lo12(.LCPI4_0)
	slli.d	$a6, $s3, 3
	bstrpick.d	$a6, $a6, 33, 5
	slli.d	$a6, $a6, 5
	vreplgr2vr.d	$vr1, $a1
	vrepli.d	$vr2, 48
	vrepli.d	$vr3, 96
	vreplgr2vr.d	$vr4, $a3
	.p2align	4, , 16
.LBB4_152:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vori.b	$vr5, $vr1, 0
	vmadd.d	$vr5, $vr0, $vr2
	vori.b	$vr6, $vr3, 0
	vmadd.d	$vr6, $vr0, $vr2
	vadd.d	$vr7, $vr1, $vr6
	add.d	$a7, $a2, $a5
	vstx	$vr5, $a2, $a5
	vst	$vr7, $a7, 16
	vori.b	$vr5, $vr4, 0
	vmadd.d	$vr5, $vr0, $vr2
	vadd.d	$vr6, $vr4, $vr6
	add.d	$a7, $a0, $a5
	vstx	$vr5, $a0, $a5
	vst	$vr6, $a7, 16
	addi.d	$a5, $a5, 32
	vaddi.du	$vr0, $vr0, 4
	bne	$a6, $a5, .LBB4_152
# %bb.153:                              # %middle.block
	ori	$s6, $zero, 1
	beq	$a4, $s3, .LBB4_158
.LBB4_154:                              # %scalar.ph.preheader
	slli.d	$a5, $a4, 3
	slli.d	$a6, $a4, 5
	alsl.d	$a6, $a4, $a6, 4
	add.d	$a3, $a3, $a6
	add.d	$a1, $a1, $a6
	sub.d	$a4, $s3, $a4
	.p2align	4, , 16
.LBB4_155:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	stx.d	$a1, $a2, $a5
	stx.d	$a3, $a0, $a5
	addi.d	$a5, $a5, 8
	addi.d	$a3, $a3, 48
	addi.d	$a4, $a4, -1
	addi.d	$a1, $a1, 48
	bnez	$a4, .LBB4_155
# %bb.156:
	ori	$s6, $zero, 1
	b	.LBB4_158
.LBB4_157:
	move	$s6, $zero
.LBB4_158:                              # %._crit_edge513
	addi.w	$s4, $s3, -1
	move	$a0, $zero
	move	$a1, $s4
	pcaddu18i	$ra, %call36(mymergesort)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(Falign_udpari_long.sortedseg2)
	move	$a0, $zero
	move	$a1, $s4
	pcaddu18i	$ra, %call36(mymergesort)
	jirl	$ra, $ra, 0
	beqz	$s6, .LBB4_161
# %bb.159:                              # %.lr.ph517
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(Falign_udpari_long.sortedseg1)
	bstrpick.d	$a0, $s3, 31, 0
	ori	$a2, $zero, 2
	bstrpick.d	$a1, $a0, 30, 1
	ld.d	$s4, $sp, 240                   # 8-byte Folded Reload
	bgeu	$s3, $a2, .LBB4_163
# %bb.160:
	move	$a2, $zero
	b	.LBB4_166
.LBB4_161:                              # %._crit_edge521.thread
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$s4, $sp, 240                   # 8-byte Folded Reload
	beqz	$a0, .LBB4_179
# %bb.162:                              # %.preheader432.thread
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $s2, %pc_lo12(Falign_udpari_long.cut1)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.cut2)
	b	.LBB4_178
.LBB4_163:                              # %vector.ph800
	slli.d	$a2, $a1, 1
	addi.d	$a4, $a3, 8
	ori	$a5, $zero, 1
	move	$a6, $a2
	.p2align	4, , 16
.LBB4_164:                              # %vector.body803
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a4, -8
	ld.d	$t0, $a4, 0
	addi.d	$t1, $a5, -1
	st.w	$t1, $a7, 40
	st.w	$a5, $t0, 40
	addi.d	$a4, $a4, 16
	addi.d	$a6, $a6, -2
	addi.d	$a5, $a5, 2
	bnez	$a6, .LBB4_164
# %bb.165:                              # %middle.block806
	beq	$a2, $a0, .LBB4_168
.LBB4_166:                              # %scalar.ph798.preheader
	alsl.d	$a3, $a2, $a3, 3
	sub.d	$a4, $a0, $a2
	.p2align	4, , 16
.LBB4_167:                              # %scalar.ph798
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, 0
	st.w	$a2, $a5, 40
	addi.d	$a2, $a2, 1
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB4_167
.LBB4_168:                              # %.lr.ph520
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Falign_udpari_long.sortedseg2)
	ori	$a3, $zero, 2
	bgeu	$s3, $a3, .LBB4_170
# %bb.169:
	move	$a1, $zero
	b	.LBB4_173
.LBB4_170:                              # %vector.ph811
	slli.d	$a1, $a1, 1
	addi.d	$a3, $a2, 8
	ori	$a4, $zero, 1
	move	$a5, $a1
	.p2align	4, , 16
.LBB4_171:                              # %vector.body814
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a3, -8
	ld.d	$a7, $a3, 0
	addi.d	$t0, $a4, -1
	st.w	$t0, $a6, 40
	st.w	$a4, $a7, 40
	addi.d	$a3, $a3, 16
	addi.d	$a5, $a5, -2
	addi.d	$a4, $a4, 2
	bnez	$a5, .LBB4_171
# %bb.172:                              # %middle.block817
	beq	$a1, $a0, .LBB4_175
.LBB4_173:                              # %scalar.ph809.preheader
	alsl.d	$a2, $a1, $a2, 3
	sub.d	$a0, $a0, $a1
	.p2align	4, , 16
.LBB4_174:                              # %scalar.ph809
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	st.w	$a1, $a3, 40
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB4_174
.LBB4_175:                              # %._crit_edge521
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB4_179
# %bb.176:                              # %.preheader432
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $s2, %pc_lo12(Falign_udpari_long.cut1)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.cut2)
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Falign_udpari_long.sortedseg1)
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Falign_udpari_long.sortedseg2)
	move	$a4, $zero
	ori	$a5, $zero, 4
	.p2align	4, , 16
.LBB4_177:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a2, 0
	ld.w	$a6, $a6, 8
	ld.d	$a7, $a3, 0
	stx.w	$a6, $a1, $a5
	ld.w	$a6, $a7, 8
	stx.w	$a6, $a0, $a5
	ld.w	$a6, $sp, 284
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, 8
	addi.d	$a5, $a5, 4
	blt	$a4, $a6, .LBB4_177
.LBB4_178:
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	st.w	$zero, $a1, 0
	st.w	$zero, $a0, 0
	ld.w	$a2, $sp, 284
	alsl.d	$a1, $a2, $a1, 2
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.w	$a2, $a1, 4
	ld.w	$a1, $sp, 284
	alsl.d	$a0, $a1, $a0, 2
	st.w	$a3, $a0, 4
	ld.w	$a0, $sp, 284
	addi.d	$a0, $a0, 2
	st.w	$a0, $sp, 284
	b	.LBB4_196
.LBB4_179:
	pcalau12i	$fp, %pc_hi20(Falign_udpari_long.crossscoresize)
	ld.w	$a0, $fp, %pc_lo12(Falign_udpari_long.crossscoresize)
	addi.w	$s5, $s3, 2
	bge	$a0, $s5, .LBB4_184
# %bb.180:
	st.w	$s5, $fp, %pc_lo12(Falign_udpari_long.crossscoresize)
	pcalau12i	$a0, %got_pc_hi20(fftkeika)
	ld.d	$a0, $a0, %got_pc_lo12(fftkeika)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB4_253
# %bb.181:
	pcalau12i	$s1, %pc_hi20(Falign_udpari_long.crossscore)
	ld.d	$a0, $s1, %pc_lo12(Falign_udpari_long.crossscore)
	beqz	$a0, .LBB4_183
.LBB4_182:
	pcaddu18i	$ra, %call36(FreeDoubleMtx)
	jirl	$ra, $ra, 0
.LBB4_183:
	ld.w	$a0, $fp, %pc_lo12(Falign_udpari_long.crossscoresize)
	move	$a1, $a0
	pcaddu18i	$ra, %call36(AllocateDoubleMtx)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$a0, $s1, %pc_lo12(Falign_udpari_long.crossscore)
	addi.w	$a0, $zero, -1
	bge	$s3, $a0, .LBB4_185
	b	.LBB4_187
.LBB4_184:                              # %._crit_edge726
	pcalau12i	$a0, %pc_hi20(Falign_udpari_long.crossscore)
	ld.d	$s4, $a0, %pc_lo12(Falign_udpari_long.crossscore)
	addi.w	$a0, $zero, -1
	blt	$s3, $a0, .LBB4_187
.LBB4_185:                              # %.preheader431.lr.ph
	ori	$a0, $zero, 1
	slt	$a1, $a0, $s5
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s5, $a1
	or	$fp, $a1, $a0
	slli.d	$s3, $fp, 3
	move	$s1, $s4
	.p2align	4, , 16
.LBB4_186:                              # %._crit_edge527
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, -1
	addi.d	$s1, $s1, 8
	bnez	$fp, .LBB4_186
.LBB4_187:                              # %.preheader430
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $s2, %pc_lo12(Falign_udpari_long.cut1)
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Falign_udpari_long.cut2)
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Falign_udpari_long.sortedseg1)
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Falign_udpari_long.sortedseg2)
	beqz	$s6, .LBB4_190
# %bb.188:                              # %.lr.ph530
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a5, $a4, %pc_lo12(Falign_udpari_long.segment1)
	move	$a4, $zero
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a1, 4
	addi.d	$a7, $a0, 4
	move	$t0, $a2
	move	$t1, $a3
	.p2align	4, , 16
.LBB4_189:                              # =>This Inner Loop Header: Depth=1
	ld.w	$t2, $a5, 8
	ld.d	$t3, $t0, 0
	alsl.d	$t2, $t2, $s4, 3
	ld.d	$t4, $a5, 0
	ld.d	$t2, $t2, 8
	ld.w	$t3, $t3, 8
	ld.d	$t5, $t1, 0
	ld.w	$t4, $t4, 40
	fld.d	$fa0, $a5, -16
	st.w	$t3, $a7, 0
	ld.w	$t3, $t5, 8
	alsl.d	$t2, $t4, $t2, 3
	fst.d	$fa0, $t2, 8
	addi.d	$a4, $a4, 1
	st.w	$t3, $a6, 0
	ld.w	$t2, $sp, 284
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, 8
	addi.d	$a5, $a5, 48
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 4
	blt	$a4, $t2, .LBB4_189
.LBB4_190:                              # %._crit_edge531
	st.w	$zero, $a0, 0
	st.w	$zero, $a1, 0
	ld.w	$a4, $sp, 284
	ld.d	$a5, $s4, 0
	ori	$a6, $zero, 0
	lu32i.d	$a6, 201424
	alsl.d	$a7, $a4, $a0, 2
	ld.d	$t0, $sp, 64                    # 8-byte Folded Reload
	st.w	$t0, $a7, 4
	ld.w	$a7, $sp, 284
	slli.d	$a4, $a4, 3
	addi.d	$a4, $a4, 8
	ldx.d	$t0, $s4, $a4
	alsl.d	$a7, $a7, $a1, 2
	ld.d	$t1, $sp, 40                    # 8-byte Folded Reload
	st.w	$t1, $a7, 4
	ld.w	$a7, $sp, 284
	lu52i.d	$a6, $a6, 1046
	st.d	$a6, $a5, 0
	stx.d	$a6, $t0, $a4
	addi.w	$fp, $a7, 2
	st.w	$fp, $sp, 284
	addi.d	$a5, $sp, 284
	move	$a4, $s4
	pcaddu18i	$ra, %call36(blockAlign2)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(fftkeika)
	ld.d	$s1, $a0, %got_pc_lo12(fftkeika)
	ld.w	$a0, $s1, 0
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	bnez	$a1, .LBB4_193
# %bb.191:                              # %._crit_edge531
	ld.d	$s4, $sp, 240                   # 8-byte Folded Reload
	beqz	$a0, .LBB4_194
# %bb.192:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.w	$a2, $sp, 284
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	b	.LBB4_194
.LBB4_193:
	ld.d	$s4, $sp, 240                   # 8-byte Folded Reload
.LBB4_194:
	beqz	$a0, .LBB4_196
# %bb.195:
	ld.w	$a0, $sp, 284
	blt	$a0, $fp, .LBB4_251
.LBB4_196:
	blez	$s4, .LBB4_199
# %bb.197:                              # %.lr.ph534
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.result1)
	move	$a1, $s4
	.p2align	4, , 16
.LBB4_198:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 0
	st.b	$zero, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB4_198
.LBB4_199:                              # %.preheader429
	blez	$s5, .LBB4_202
# %bb.200:                              # %.lr.ph536
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.result2)
	move	$a1, $s5
	.p2align	4, , 16
.LBB4_201:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 0
	st.b	$zero, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB4_201
.LBB4_202:                              # %._crit_edge537
	ld.w	$a0, $sp, 284
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	ori	$a2, $zero, 2
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.w	$a1, $a3, 0
	blt	$a0, $a2, .LBB4_243
# %bb.203:                              # %.lr.ph564
	bstrpick.d	$a0, $s4, 31, 0
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	bstrpick.d	$a0, $s5, 31, 0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	slli.d	$s6, $a0, 3
	movgr2fr.w	$fs0, $zero
	pcalau12i	$s7, %pc_hi20(Falign_udpari_long.sgap1)
	pcalau12i	$a0, %pc_hi20(Falign_udpari_long.sgap2)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Falign_udpari_long.egap1)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Falign_udpari_long.egap2)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fftkeika)
	ld.d	$a0, $a0, %got_pc_lo12(fftkeika)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(constraint)
	ld.d	$a0, $a0, %got_pc_lo12(constraint)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	move	$s8, $zero
	move	$s1, $zero
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
.LBB4_204:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_218 Depth 2
                                        #     Child Loop BB4_225 Depth 2
                                        #     Child Loop BB4_236 Depth 2
                                        #     Child Loop BB4_239 Depth 2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 0
	ld.d	$fp, $s2, %pc_lo12(Falign_udpari_long.cut1)
	addi.d	$a0, $a0, 1
	st.w	$a0, $a1, 0
	slli.d	$s3, $s8, 2
	ldx.w	$a0, $fp, $s3
	st.d	$s1, $sp, 184                   # 8-byte Folded Spill
	bnez	$a0, .LBB4_209
# %bb.205:                              # %.preheader428
                                        #   in Loop: Header=BB4_204 Depth=1
	blez	$s4, .LBB4_207
# %bb.206:                              # %.lr.ph539
                                        #   in Loop: Header=BB4_204 Depth=1
	ld.d	$a0, $s7, %pc_lo12(Falign_udpari_long.sgap1)
	ori	$a1, $zero, 111
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB4_207:                              # %.preheader426
                                        #   in Loop: Header=BB4_204 Depth=1
	blez	$s5, .LBB4_210
# %bb.208:                              # %.lr.ph541
                                        #   in Loop: Header=BB4_204 Depth=1
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.sgap2)
	ori	$a1, $zero, 111
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB4_210
	.p2align	4, , 16
.LBB4_209:                              #   in Loop: Header=BB4_204 Depth=1
	ld.d	$a0, $s7, %pc_lo12(Falign_udpari_long.sgap1)
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Falign_udpari_long.tmpres1)
	move	$a3, $s4
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	addi.w	$s4, $a2, -1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(getkyokaigap)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.sgap2)
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Falign_udpari_long.tmpres2)
	move	$a2, $s4
	move	$a3, $s5
	pcaddu18i	$ra, %call36(getkyokaigap)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s2, %pc_lo12(Falign_udpari_long.cut1)
.LBB4_210:                              # %.loopexit427
                                        #   in Loop: Header=BB4_204 Depth=1
	addi.d	$s2, $s8, 1
	slli.d	$s1, $s2, 2
	ldx.w	$a2, $fp, $s1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bne	$a2, $a0, .LBB4_215
# %bb.211:                              # %.preheader425
                                        #   in Loop: Header=BB4_204 Depth=1
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	blez	$fp, .LBB4_213
# %bb.212:                              # %.lr.ph543
                                        #   in Loop: Header=BB4_204 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.egap1)
	ori	$a1, $zero, 111
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB4_213:                              # %.preheader423
                                        #   in Loop: Header=BB4_204 Depth=1
	blez	$s5, .LBB4_216
# %bb.214:                              # %.lr.ph545
                                        #   in Loop: Header=BB4_204 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.egap2)
	ori	$a1, $zero, 111
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB4_216
	.p2align	4, , 16
.LBB4_215:                              #   in Loop: Header=BB4_204 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.egap1)
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	move	$a3, $fp
	pcaddu18i	$ra, %call36(getkyokaigap)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Falign_udpari_long.cut2)
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.egap2)
	ldx.w	$a2, $a1, $s1
	move	$a1, $s0
	move	$a3, $s5
	pcaddu18i	$ra, %call36(getkyokaigap)
	jirl	$ra, $ra, 0
.LBB4_216:                              # %.loopexit424
                                        #   in Loop: Header=BB4_204 Depth=1
	ld.w	$a1, $sp, 284
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	addi.w	$a3, $a1, -1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	blez	$fp, .LBB4_219
# %bb.217:                              # %.lr.ph548
                                        #   in Loop: Header=BB4_204 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Falign_udpari_long.cut1)
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $a1, %pc_lo12(Falign_udpari_long.tmpres1)
	alsl.d	$s7, $s8, $a0, 2
	alsl.d	$s8, $s2, $a0, 2
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 224                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_218:                              #   Parent Loop BB4_204 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s4, 0
	ld.w	$a2, $s7, 0
	ld.w	$a3, $s8, 0
	ld.d	$a0, $fp, 0
	add.d	$a1, $a1, $a2
	sub.w	$a2, $a3, $a2
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 0
	ld.w	$a1, $s7, 0
	ld.d	$a2, $fp, 0
	sub.w	$a0, $a0, $a1
	stx.b	$zero, $a2, $a0
	addi.d	$s4, $s4, 8
	addi.d	$s5, $s5, -1
	addi.d	$fp, $fp, 8
	bnez	$s5, .LBB4_218
.LBB4_219:                              # %._crit_edge549
                                        #   in Loop: Header=BB4_204 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$s4, $sp, 240                   # 8-byte Folded Reload
	beqz	$a0, .LBB4_222
# %bb.220:                              # %._crit_edge549
                                        #   in Loop: Header=BB4_204 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB4_222
# %bb.221:                              #   in Loop: Header=BB4_204 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Falign_udpari_long.tmpres1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(commongappick)
	jirl	$ra, $ra, 0
.LBB4_222:                              #   in Loop: Header=BB4_204 Depth=1
	move	$s8, $s2
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	blez	$s5, .LBB4_227
# %bb.223:                              # %.lr.ph552.preheader
                                        #   in Loop: Header=BB4_204 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(Falign_udpari_long.cut2)
	move	$fp, $zero
	b	.LBB4_225
	.p2align	4, , 16
.LBB4_224:                              #   in Loop: Header=BB4_225 Depth=2
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(Falign_udpari_long.tmpres2)
	ldx.d	$a1, $s0, $fp
	ldx.d	$a0, $s2, $fp
	add.d	$a1, $a1, $a3
	sub.w	$a2, $a2, $a3
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ldx.w	$a0, $s7, $s1
	ldx.w	$a1, $s7, $s3
	ldx.d	$a2, $s2, $fp
	sub.w	$a0, $a0, $a1
	addi.d	$fp, $fp, 8
	stx.b	$zero, $a2, $a0
	beq	$s6, $fp, .LBB4_227
.LBB4_225:                              # %.lr.ph552
                                        #   Parent Loop BB4_204 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a2, $s7, $s1
	ldx.w	$a3, $s7, $s3
	blt	$a3, $a2, .LBB4_224
# %bb.226:                              #   in Loop: Header=BB4_225 Depth=2
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(Falign_udpari_long.cut2)
	ldx.w	$a3, $s7, $s3
	ldx.w	$a2, $s7, $s1
	b	.LBB4_224
	.p2align	4, , 16
.LBB4_227:                              # %._crit_edge553
                                        #   in Loop: Header=BB4_204 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$s2, $sp, 272                   # 8-byte Folded Reload
	beqz	$a0, .LBB4_230
# %bb.228:                              # %._crit_edge553
                                        #   in Loop: Header=BB4_204 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB4_230
# %bb.229:                              #   in Loop: Header=BB4_204 Depth=1
	ld.d	$a1, $s2, %pc_lo12(Falign_udpari_long.tmpres2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(commongappick)
	jirl	$ra, $ra, 0
.LBB4_230:                              #   in Loop: Header=BB4_204 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	bnez	$a0, .LBB4_254
# %bb.231:                              #   in Loop: Header=BB4_204 Depth=1
	pcalau12i	$a0, %got_pc_hi20(alg)
	ld.d	$a0, $a0, %got_pc_lo12(alg)
	ld.bu	$a1, $a0, 0
	ori	$a0, $zero, 77
	bne	$a1, $a0, .LBB4_241
# %bb.232:                              #   in Loop: Header=BB4_204 Depth=1
	ld.d	$a0, $s1, %pc_lo12(Falign_udpari_long.tmpres1)
	ld.d	$a1, $s2, %pc_lo12(Falign_udpari_long.tmpres2)
	ld.d	$a7, $s7, %pc_lo12(Falign_udpari_long.sgap1)
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Falign_udpari_long.sgap2)
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Falign_udpari_long.egap1)
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Falign_udpari_long.egap2)
	st.d	$a4, $sp, 16
	st.d	$a3, $sp, 8
	st.d	$a2, $sp, 0
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	move	$a4, $s4
	move	$a5, $s5
	move	$a6, $fp
	pcaddu18i	$ra, %call36(MSalignmm)
	jirl	$ra, $ra, 0
	fadd.s	$fs0, $fs0, $fa0
.LBB4_233:                              #   in Loop: Header=BB4_204 Depth=1
	ld.d	$a0, $s1, %pc_lo12(Falign_udpari_long.tmpres1)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	add.w	$s1, $a2, $a0
	blt	$fp, $s1, .LBB4_242
# %bb.234:                              #   in Loop: Header=BB4_204 Depth=1
	blez	$s4, .LBB4_237
.LBB4_235:                              # %.lr.ph556
                                        #   in Loop: Header=BB4_204 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(Falign_udpari_long.result1)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(Falign_udpari_long.tmpres1)
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_236:                              #   Parent Loop BB4_204 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s2, 0
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 8
	addi.d	$s3, $s3, -1
	addi.d	$fp, $fp, 8
	bnez	$s3, .LBB4_236
.LBB4_237:                              # %.preheader422
                                        #   in Loop: Header=BB4_204 Depth=1
	blez	$s5, .LBB4_240
# %bb.238:                              # %.lr.ph558
                                        #   in Loop: Header=BB4_204 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(Falign_udpari_long.result2)
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(Falign_udpari_long.tmpres2)
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_239:                              #   Parent Loop BB4_204 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s2, 0
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 8
	addi.d	$s3, $s3, -1
	addi.d	$fp, $fp, 8
	bnez	$s3, .LBB4_239
.LBB4_240:                              # %.loopexit
                                        #   in Loop: Header=BB4_204 Depth=1
	ld.w	$a0, $sp, 284
	addi.w	$a0, $a0, -1
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	blt	$s8, $a0, .LBB4_204
	b	.LBB4_244
.LBB4_241:                              #   in Loop: Header=BB4_204 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ext.w.b	$a2, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	b	.LBB4_233
.LBB4_242:                              #   in Loop: Header=BB4_204 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	addi.w	$a3, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	move	$a4, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	bgtz	$s4, .LBB4_235
	b	.LBB4_237
.LBB4_243:
	movgr2fr.w	$fs0, $zero
.LBB4_244:                              # %.preheader421
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	blez	$s4, .LBB4_247
# %bb.245:                              # %.lr.ph567
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(Falign_udpari_long.result1)
	.p2align	4, , 16
.LBB4_246:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s4, $s4, -1
	addi.d	$s1, $s1, 8
	bnez	$s4, .LBB4_246
.LBB4_247:                              # %.preheader
	blez	$s5, .LBB4_250
# %bb.248:                              # %.lr.ph569
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(Falign_udpari_long.result2)
	.p2align	4, , 16
.LBB4_249:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s5, $s5, -1
	addi.d	$s0, $s0, 8
	bnez	$s5, .LBB4_249
.LBB4_250:                              # %._crit_edge570
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 288                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
	ret
.LBB4_251:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(fftRepeatStop)
	ld.d	$a0, $a0, %got_pc_lo12(fftRepeatStop)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB4_196
# %bb.252:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB4_253:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(Falign_udpari_long.crossscore)
	ld.d	$a0, $s1, %pc_lo12(Falign_udpari_long.crossscore)
	bnez	$a0, .LBB4_182
	b	.LBB4_183
.LBB4_254:
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	Falign_udpari_long, .Lfunc_end4-Falign_udpari_long
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI4_0:
	.word	.LBB4_71-.LJTI4_0
	.word	.LBB4_68-.LJTI4_0
	.word	.LBB4_72-.LJTI4_0
	.word	.LBB4_68-.LJTI4_0
	.word	.LBB4_68-.LJTI4_0
	.word	.LBB4_68-.LJTI4_0
	.word	.LBB4_66-.LJTI4_0
	.word	.LBB4_68-.LJTI4_0
	.word	.LBB4_68-.LJTI4_0
	.word	.LBB4_68-.LJTI4_0
	.word	.LBB4_68-.LJTI4_0
	.word	.LBB4_68-.LJTI4_0
	.word	.LBB4_68-.LJTI4_0
	.word	.LBB4_68-.LJTI4_0
	.word	.LBB4_68-.LJTI4_0
	.word	.LBB4_68-.LJTI4_0
	.word	.LBB4_68-.LJTI4_0
	.word	.LBB4_68-.LJTI4_0
	.word	.LBB4_68-.LJTI4_0
	.word	.LBB4_73-.LJTI4_0
.LJTI4_1:
	.word	.LBB4_109-.LJTI4_1
	.word	.LBB4_106-.LJTI4_1
	.word	.LBB4_110-.LJTI4_1
	.word	.LBB4_106-.LJTI4_1
	.word	.LBB4_106-.LJTI4_1
	.word	.LBB4_106-.LJTI4_1
	.word	.LBB4_104-.LJTI4_1
	.word	.LBB4_106-.LJTI4_1
	.word	.LBB4_106-.LJTI4_1
	.word	.LBB4_106-.LJTI4_1
	.word	.LBB4_106-.LJTI4_1
	.word	.LBB4_106-.LJTI4_1
	.word	.LBB4_106-.LJTI4_1
	.word	.LBB4_106-.LJTI4_1
	.word	.LBB4_106-.LJTI4_1
	.word	.LBB4_106-.LJTI4_1
	.word	.LBB4_106-.LJTI4_1
	.word	.LBB4_106-.LJTI4_1
	.word	.LBB4_106-.LJTI4_1
	.word	.LBB4_111-.LJTI4_1
                                        # -- End function
	.type	Fgetlag.crossscoresize,@object  # @Fgetlag.crossscoresize
	.local	Fgetlag.crossscoresize
	.comm	Fgetlag.crossscoresize,4,4
	.type	Fgetlag.tmpseq1,@object         # @Fgetlag.tmpseq1
	.local	Fgetlag.tmpseq1
	.comm	Fgetlag.tmpseq1,8,8
	.type	Fgetlag.tmpseq2,@object         # @Fgetlag.tmpseq2
	.local	Fgetlag.tmpseq2
	.comm	Fgetlag.tmpseq2,8,8
	.type	Fgetlag.tmpptr1,@object         # @Fgetlag.tmpptr1
	.local	Fgetlag.tmpptr1
	.comm	Fgetlag.tmpptr1,8,8
	.type	Fgetlag.tmpptr2,@object         # @Fgetlag.tmpptr2
	.local	Fgetlag.tmpptr2
	.comm	Fgetlag.tmpptr2,8,8
	.type	Fgetlag.tmpres1,@object         # @Fgetlag.tmpres1
	.local	Fgetlag.tmpres1
	.comm	Fgetlag.tmpres1,8,8
	.type	Fgetlag.tmpres2,@object         # @Fgetlag.tmpres2
	.local	Fgetlag.tmpres2
	.comm	Fgetlag.tmpres2,8,8
	.type	Fgetlag.result1,@object         # @Fgetlag.result1
	.local	Fgetlag.result1
	.comm	Fgetlag.result1,8,8
	.type	Fgetlag.result2,@object         # @Fgetlag.result2
	.local	Fgetlag.result2
	.comm	Fgetlag.result2,8,8
	.type	Fgetlag.seqVector1,@object      # @Fgetlag.seqVector1
	.local	Fgetlag.seqVector1
	.comm	Fgetlag.seqVector1,8,8
	.type	Fgetlag.seqVector2,@object      # @Fgetlag.seqVector2
	.local	Fgetlag.seqVector2
	.comm	Fgetlag.seqVector2,8,8
	.type	Fgetlag.naiseki,@object         # @Fgetlag.naiseki
	.local	Fgetlag.naiseki
	.comm	Fgetlag.naiseki,8,8
	.type	Fgetlag.naisekiNoWa,@object     # @Fgetlag.naisekiNoWa
	.local	Fgetlag.naisekiNoWa
	.comm	Fgetlag.naisekiNoWa,8,8
	.type	Fgetlag.soukan,@object          # @Fgetlag.soukan
	.local	Fgetlag.soukan
	.comm	Fgetlag.soukan,8,8
	.type	Fgetlag.crossscore,@object      # @Fgetlag.crossscore
	.local	Fgetlag.crossscore
	.comm	Fgetlag.crossscore,8,8
	.type	Fgetlag.kouho,@object           # @Fgetlag.kouho
	.local	Fgetlag.kouho
	.comm	Fgetlag.kouho,8,8
	.type	Fgetlag.segment,@object         # @Fgetlag.segment
	.local	Fgetlag.segment
	.comm	Fgetlag.segment,8,8
	.type	Fgetlag.segment1,@object        # @Fgetlag.segment1
	.local	Fgetlag.segment1
	.comm	Fgetlag.segment1,8,8
	.type	Fgetlag.segment2,@object        # @Fgetlag.segment2
	.local	Fgetlag.segment2
	.comm	Fgetlag.segment2,8,8
	.type	Fgetlag.sortedseg1,@object      # @Fgetlag.sortedseg1
	.local	Fgetlag.sortedseg1
	.comm	Fgetlag.sortedseg1,8,8
	.type	Fgetlag.sortedseg2,@object      # @Fgetlag.sortedseg2
	.local	Fgetlag.sortedseg2
	.comm	Fgetlag.sortedseg2,8,8
	.type	Fgetlag.cut1,@object            # @Fgetlag.cut1
	.local	Fgetlag.cut1
	.comm	Fgetlag.cut1,8,8
	.type	Fgetlag.cut2,@object            # @Fgetlag.cut2
	.local	Fgetlag.cut2
	.comm	Fgetlag.cut2,8,8
	.type	Fgetlag.localalloclen,@object   # @Fgetlag.localalloclen
	.local	Fgetlag.localalloclen
	.comm	Fgetlag.localalloclen,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Allocation error\n"
	.size	.L.str, 18

	.type	n20or4or2,@object               # @n20or4or2
	.local	n20or4or2
	.comm	n20or4or2,4,4
	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	" FFT ... "
	.size	.L.str.1, 10

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"TOO MANY SEGMENTS.\n"
	.size	.L.str.2, 20

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"done. (%d anchors)\r"
	.size	.L.str.3, 20

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Cannot detect anchor!"
	.size	.L.str.4, 22

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"####################################################################################################################################allocating crossscore, size = %d\n"
	.size	.L.str.5, 166

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"REPEAT!? \n"
	.size	.L.str.6, 11

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"alg = %c\n"
	.size	.L.str.7, 10

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"ERROR IN SOURCE FILE Falign.c"
	.size	.L.str.8, 30

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"LENGTH OVER in Falign\n "
	.size	.L.str.9, 24

	.type	Falign.prevalloclen,@object     # @Falign.prevalloclen
	.local	Falign.prevalloclen
	.comm	Falign.prevalloclen,4,4
	.type	Falign.crossscoresize,@object   # @Falign.crossscoresize
	.local	Falign.crossscoresize
	.comm	Falign.crossscoresize,4,4
	.type	Falign.tmpseq1,@object          # @Falign.tmpseq1
	.local	Falign.tmpseq1
	.comm	Falign.tmpseq1,8,8
	.type	Falign.tmpseq2,@object          # @Falign.tmpseq2
	.local	Falign.tmpseq2
	.comm	Falign.tmpseq2,8,8
	.type	Falign.tmpptr1,@object          # @Falign.tmpptr1
	.local	Falign.tmpptr1
	.comm	Falign.tmpptr1,8,8
	.type	Falign.tmpptr2,@object          # @Falign.tmpptr2
	.local	Falign.tmpptr2
	.comm	Falign.tmpptr2,8,8
	.type	Falign.tmpres1,@object          # @Falign.tmpres1
	.local	Falign.tmpres1
	.comm	Falign.tmpres1,8,8
	.type	Falign.tmpres2,@object          # @Falign.tmpres2
	.local	Falign.tmpres2
	.comm	Falign.tmpres2,8,8
	.type	Falign.result1,@object          # @Falign.result1
	.local	Falign.result1
	.comm	Falign.result1,8,8
	.type	Falign.result2,@object          # @Falign.result2
	.local	Falign.result2
	.comm	Falign.result2,8,8
	.type	Falign.seqVector1,@object       # @Falign.seqVector1
	.local	Falign.seqVector1
	.comm	Falign.seqVector1,8,8
	.type	Falign.seqVector2,@object       # @Falign.seqVector2
	.local	Falign.seqVector2
	.comm	Falign.seqVector2,8,8
	.type	Falign.naiseki,@object          # @Falign.naiseki
	.local	Falign.naiseki
	.comm	Falign.naiseki,8,8
	.type	Falign.naisekiNoWa,@object      # @Falign.naisekiNoWa
	.local	Falign.naisekiNoWa
	.comm	Falign.naisekiNoWa,8,8
	.type	Falign.soukan,@object           # @Falign.soukan
	.local	Falign.soukan
	.comm	Falign.soukan,8,8
	.type	Falign.crossscore,@object       # @Falign.crossscore
	.local	Falign.crossscore
	.comm	Falign.crossscore,8,8
	.type	Falign.kouho,@object            # @Falign.kouho
	.local	Falign.kouho
	.comm	Falign.kouho,8,8
	.type	Falign.segment,@object          # @Falign.segment
	.local	Falign.segment
	.comm	Falign.segment,8,8
	.type	Falign.segment1,@object         # @Falign.segment1
	.local	Falign.segment1
	.comm	Falign.segment1,8,8
	.type	Falign.segment2,@object         # @Falign.segment2
	.local	Falign.segment2
	.comm	Falign.segment2,8,8
	.type	Falign.sortedseg1,@object       # @Falign.sortedseg1
	.local	Falign.sortedseg1
	.comm	Falign.sortedseg1,8,8
	.type	Falign.sortedseg2,@object       # @Falign.sortedseg2
	.local	Falign.sortedseg2
	.comm	Falign.sortedseg2,8,8
	.type	Falign.cut1,@object             # @Falign.cut1
	.local	Falign.cut1
	.comm	Falign.cut1,8,8
	.type	Falign.cut2,@object             # @Falign.cut2
	.local	Falign.cut2
	.comm	Falign.cut2,8,8
	.type	Falign.sgap1,@object            # @Falign.sgap1
	.local	Falign.sgap1
	.comm	Falign.sgap1,8,8
	.type	Falign.egap1,@object            # @Falign.egap1
	.local	Falign.egap1
	.comm	Falign.egap1,8,8
	.type	Falign.sgap2,@object            # @Falign.sgap2
	.local	Falign.sgap2
	.comm	Falign.sgap2,8,8
	.type	Falign.egap2,@object            # @Falign.egap2
	.local	Falign.egap2
	.comm	Falign.egap2,8,8
	.type	Falign.localalloclen,@object    # @Falign.localalloclen
	.local	Falign.localalloclen
	.comm	Falign.localalloclen,4,4
	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"######allocating crossscore, size = %d\n"
	.size	.L.str.10, 40

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"%d anchors found\n"
	.size	.L.str.11, 18

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Not supported\n"
	.size	.L.str.12, 15

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"totallen=%d +  nlen=%d > alloclen = %d\n"
	.size	.L.str.13, 40

	.type	Falign_noudp.prevalloclen,@object # @Falign_noudp.prevalloclen
	.local	Falign_noudp.prevalloclen
	.comm	Falign_noudp.prevalloclen,4,4
	.type	Falign_noudp.tmpseq1,@object    # @Falign_noudp.tmpseq1
	.local	Falign_noudp.tmpseq1
	.comm	Falign_noudp.tmpseq1,8,8
	.type	Falign_noudp.tmpseq2,@object    # @Falign_noudp.tmpseq2
	.local	Falign_noudp.tmpseq2
	.comm	Falign_noudp.tmpseq2,8,8
	.type	Falign_noudp.tmpptr1,@object    # @Falign_noudp.tmpptr1
	.local	Falign_noudp.tmpptr1
	.comm	Falign_noudp.tmpptr1,8,8
	.type	Falign_noudp.tmpptr2,@object    # @Falign_noudp.tmpptr2
	.local	Falign_noudp.tmpptr2
	.comm	Falign_noudp.tmpptr2,8,8
	.type	Falign_noudp.tmpres1,@object    # @Falign_noudp.tmpres1
	.local	Falign_noudp.tmpres1
	.comm	Falign_noudp.tmpres1,8,8
	.type	Falign_noudp.tmpres2,@object    # @Falign_noudp.tmpres2
	.local	Falign_noudp.tmpres2
	.comm	Falign_noudp.tmpres2,8,8
	.type	Falign_noudp.result1,@object    # @Falign_noudp.result1
	.local	Falign_noudp.result1
	.comm	Falign_noudp.result1,8,8
	.type	Falign_noudp.result2,@object    # @Falign_noudp.result2
	.local	Falign_noudp.result2
	.comm	Falign_noudp.result2,8,8
	.type	Falign_noudp.seqVector1,@object # @Falign_noudp.seqVector1
	.local	Falign_noudp.seqVector1
	.comm	Falign_noudp.seqVector1,8,8
	.type	Falign_noudp.seqVector2,@object # @Falign_noudp.seqVector2
	.local	Falign_noudp.seqVector2
	.comm	Falign_noudp.seqVector2,8,8
	.type	Falign_noudp.naiseki,@object    # @Falign_noudp.naiseki
	.local	Falign_noudp.naiseki
	.comm	Falign_noudp.naiseki,8,8
	.type	Falign_noudp.naisekiNoWa,@object # @Falign_noudp.naisekiNoWa
	.local	Falign_noudp.naisekiNoWa
	.comm	Falign_noudp.naisekiNoWa,8,8
	.type	Falign_noudp.soukan,@object     # @Falign_noudp.soukan
	.local	Falign_noudp.soukan
	.comm	Falign_noudp.soukan,8,8
	.type	Falign_noudp.kouho,@object      # @Falign_noudp.kouho
	.local	Falign_noudp.kouho
	.comm	Falign_noudp.kouho,8,8
	.type	Falign_noudp.segment,@object    # @Falign_noudp.segment
	.local	Falign_noudp.segment
	.comm	Falign_noudp.segment,8,8
	.type	Falign_noudp.segment1,@object   # @Falign_noudp.segment1
	.local	Falign_noudp.segment1
	.comm	Falign_noudp.segment1,8,8
	.type	Falign_noudp.segment2,@object   # @Falign_noudp.segment2
	.local	Falign_noudp.segment2
	.comm	Falign_noudp.segment2,8,8
	.type	Falign_noudp.sortedseg1,@object # @Falign_noudp.sortedseg1
	.local	Falign_noudp.sortedseg1
	.comm	Falign_noudp.sortedseg1,8,8
	.type	Falign_noudp.sortedseg2,@object # @Falign_noudp.sortedseg2
	.local	Falign_noudp.sortedseg2
	.comm	Falign_noudp.sortedseg2,8,8
	.type	Falign_noudp.cut1,@object       # @Falign_noudp.cut1
	.local	Falign_noudp.cut1
	.comm	Falign_noudp.cut1,8,8
	.type	Falign_noudp.cut2,@object       # @Falign_noudp.cut2
	.local	Falign_noudp.cut2
	.comm	Falign_noudp.cut2,8,8
	.type	Falign_noudp.sgap1,@object      # @Falign_noudp.sgap1
	.local	Falign_noudp.sgap1
	.comm	Falign_noudp.sgap1,8,8
	.type	Falign_noudp.egap1,@object      # @Falign_noudp.egap1
	.local	Falign_noudp.egap1
	.comm	Falign_noudp.egap1,8,8
	.type	Falign_noudp.sgap2,@object      # @Falign_noudp.sgap2
	.local	Falign_noudp.sgap2
	.comm	Falign_noudp.sgap2,8,8
	.type	Falign_noudp.egap2,@object      # @Falign_noudp.egap2
	.local	Falign_noudp.egap2
	.comm	Falign_noudp.egap2,8,8
	.type	Falign_noudp.localalloclen,@object # @Falign_noudp.localalloclen
	.local	Falign_noudp.localalloclen
	.comm	Falign_noudp.localalloclen,4,4
	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"done. (%d anchors) "
	.size	.L.str.14, 20

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"DP %05d / %05d \b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"
	.size	.L.str.15, 33

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"### cut2[i+1]=%d, cut2[i]=%d\n"
	.size	.L.str.16, 30

	.type	Falign_udpari_long.prevalloclen,@object # @Falign_udpari_long.prevalloclen
	.local	Falign_udpari_long.prevalloclen
	.comm	Falign_udpari_long.prevalloclen,4,4
	.type	Falign_udpari_long.crossscoresize,@object # @Falign_udpari_long.crossscoresize
	.local	Falign_udpari_long.crossscoresize
	.comm	Falign_udpari_long.crossscoresize,4,4
	.type	Falign_udpari_long.tmpseq1,@object # @Falign_udpari_long.tmpseq1
	.local	Falign_udpari_long.tmpseq1
	.comm	Falign_udpari_long.tmpseq1,8,8
	.type	Falign_udpari_long.tmpseq2,@object # @Falign_udpari_long.tmpseq2
	.local	Falign_udpari_long.tmpseq2
	.comm	Falign_udpari_long.tmpseq2,8,8
	.type	Falign_udpari_long.tmpptr1,@object # @Falign_udpari_long.tmpptr1
	.local	Falign_udpari_long.tmpptr1
	.comm	Falign_udpari_long.tmpptr1,8,8
	.type	Falign_udpari_long.tmpptr2,@object # @Falign_udpari_long.tmpptr2
	.local	Falign_udpari_long.tmpptr2
	.comm	Falign_udpari_long.tmpptr2,8,8
	.type	Falign_udpari_long.tmpres1,@object # @Falign_udpari_long.tmpres1
	.local	Falign_udpari_long.tmpres1
	.comm	Falign_udpari_long.tmpres1,8,8
	.type	Falign_udpari_long.tmpres2,@object # @Falign_udpari_long.tmpres2
	.local	Falign_udpari_long.tmpres2
	.comm	Falign_udpari_long.tmpres2,8,8
	.type	Falign_udpari_long.result1,@object # @Falign_udpari_long.result1
	.local	Falign_udpari_long.result1
	.comm	Falign_udpari_long.result1,8,8
	.type	Falign_udpari_long.result2,@object # @Falign_udpari_long.result2
	.local	Falign_udpari_long.result2
	.comm	Falign_udpari_long.result2,8,8
	.type	Falign_udpari_long.seqVector1,@object # @Falign_udpari_long.seqVector1
	.local	Falign_udpari_long.seqVector1
	.comm	Falign_udpari_long.seqVector1,8,8
	.type	Falign_udpari_long.seqVector2,@object # @Falign_udpari_long.seqVector2
	.local	Falign_udpari_long.seqVector2
	.comm	Falign_udpari_long.seqVector2,8,8
	.type	Falign_udpari_long.naiseki,@object # @Falign_udpari_long.naiseki
	.local	Falign_udpari_long.naiseki
	.comm	Falign_udpari_long.naiseki,8,8
	.type	Falign_udpari_long.naisekiNoWa,@object # @Falign_udpari_long.naisekiNoWa
	.local	Falign_udpari_long.naisekiNoWa
	.comm	Falign_udpari_long.naisekiNoWa,8,8
	.type	Falign_udpari_long.soukan,@object # @Falign_udpari_long.soukan
	.local	Falign_udpari_long.soukan
	.comm	Falign_udpari_long.soukan,8,8
	.type	Falign_udpari_long.crossscore,@object # @Falign_udpari_long.crossscore
	.local	Falign_udpari_long.crossscore
	.comm	Falign_udpari_long.crossscore,8,8
	.type	Falign_udpari_long.kouho,@object # @Falign_udpari_long.kouho
	.local	Falign_udpari_long.kouho
	.comm	Falign_udpari_long.kouho,8,8
	.type	Falign_udpari_long.segment,@object # @Falign_udpari_long.segment
	.local	Falign_udpari_long.segment
	.comm	Falign_udpari_long.segment,8,8
	.type	Falign_udpari_long.segment1,@object # @Falign_udpari_long.segment1
	.local	Falign_udpari_long.segment1
	.comm	Falign_udpari_long.segment1,8,8
	.type	Falign_udpari_long.segment2,@object # @Falign_udpari_long.segment2
	.local	Falign_udpari_long.segment2
	.comm	Falign_udpari_long.segment2,8,8
	.type	Falign_udpari_long.sortedseg1,@object # @Falign_udpari_long.sortedseg1
	.local	Falign_udpari_long.sortedseg1
	.comm	Falign_udpari_long.sortedseg1,8,8
	.type	Falign_udpari_long.sortedseg2,@object # @Falign_udpari_long.sortedseg2
	.local	Falign_udpari_long.sortedseg2
	.comm	Falign_udpari_long.sortedseg2,8,8
	.type	Falign_udpari_long.cut1,@object # @Falign_udpari_long.cut1
	.local	Falign_udpari_long.cut1
	.comm	Falign_udpari_long.cut1,8,8
	.type	Falign_udpari_long.cut2,@object # @Falign_udpari_long.cut2
	.local	Falign_udpari_long.cut2
	.comm	Falign_udpari_long.cut2,8,8
	.type	Falign_udpari_long.sgap1,@object # @Falign_udpari_long.sgap1
	.local	Falign_udpari_long.sgap1
	.comm	Falign_udpari_long.sgap1,8,8
	.type	Falign_udpari_long.egap1,@object # @Falign_udpari_long.egap1
	.local	Falign_udpari_long.egap1
	.comm	Falign_udpari_long.egap1,8,8
	.type	Falign_udpari_long.sgap2,@object # @Falign_udpari_long.sgap2
	.local	Falign_udpari_long.sgap2
	.comm	Falign_udpari_long.sgap2,8,8
	.type	Falign_udpari_long.egap2,@object # @Falign_udpari_long.egap2
	.local	Falign_udpari_long.egap2
	.comm	Falign_udpari_long.egap2,8,8
	.type	Falign_udpari_long.localalloclen,@object # @Falign_udpari_long.localalloclen
	.local	Falign_udpari_long.localalloclen
	.comm	Falign_udpari_long.localalloclen,4,4
	.type	mymergesort.allo,@object        # @mymergesort.allo
	.local	mymergesort.allo
	.comm	mymergesort.allo,4,4
	.type	mymergesort.work,@object        # @mymergesort.work
	.local	mymergesort.work
	.comm	mymergesort.work,8,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
