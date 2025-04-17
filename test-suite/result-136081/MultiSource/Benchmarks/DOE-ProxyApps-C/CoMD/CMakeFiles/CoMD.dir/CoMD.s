	.file	"CoMD.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function main
.LCPI0_0:
	.word	0x3a800000                      # float 9.765625E-4
.LCPI0_1:
	.word	0x45b00000                      # float 5632
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI0_2:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_3:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	fst.d	$fs0, $sp, 1936                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1928                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1920                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1912                 # 8-byte Folded Spill
	lu12i.w	$a2, 1
	ori	$a2, $a2, 400
	sub.d	$sp, $sp, $a2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2284
	add.d	$a2, $sp, $a2
	st.w	$a0, $a2, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2272
	add.d	$a0, $sp, $a0
	st.d	$a1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2284
	add.d	$a0, $sp, $a0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2272
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(initParallel)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(profileStart)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(timestampBarrier)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s1, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(yamlAppInfo)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2284
	add.d	$a0, $sp, $a0
	ld.w	$a1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2272
	add.d	$a0, $sp, $a0
	ld.d	$a2, $a0, 0
	ori	$a0, $zero, 3224
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(parseCommandLine)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ori	$a1, $zero, 3224
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(printCmdYaml)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 80
	ori	$a1, $zero, 3224
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3144
	addi.d	$s0, $sp, 80
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3180
	add.d	$a1, $sp, $a1
	ldptr.d	$a1, $a1, 0
	ori	$a2, $zero, 3112
	fldx.d	$fa0, $a2, $s0
	move	$fp, $a0
	st.d	$a1, $a0, 0
	fst.d	$fa0, $a0, 8
	st.d	$zero, $a0, 72
	ori	$a0, $zero, 3152
	add.d	$a0, $sp, $a0
	ldptr.w	$a0, $a0, 0
	st.d	$zero, $fp, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 24
	vst	$vr0, $fp, 48
	beqz	$a0, .LBB0_2
# %bb.1:
	addi.d	$a0, $s0, 2047
	addi.d	$a2, $a0, 1
	addi.d	$a1, $sp, 1104
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(initEamPot)
	jirl	$ra, $ra, 0
	b	.LBB0_3
.LBB0_2:
	pcaddu18i	$ra, %call36(initLjPot)
	jirl	$ra, $ra, 0
.LBB0_3:                                # %initPotential.exit.i
	move	$s0, $a0
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 80
	ori	$a1, $zero, 3120
	fldx.d	$fs0, $a1, $a0
	movgr2fr.d	$fa0, $zero
	fcmp.cule.d	$fcc0, $fa0, $fs0
	st.d	$s0, $fp, 64
	bcnez	$fcc0, .LBB0_5
# %bb.4:
	fld.d	$fs0, $s0, 16
.LBB0_5:
	fld.d	$fs1, $s0, 0
	ori	$a1, $zero, 3076
	ldx.w	$s6, $a1, $a0
	ori	$a1, $zero, 3080
	ldx.w	$s3, $a1, $a0
	ori	$a1, $zero, 3084
	ori	$a2, $zero, 3088
	ldx.w	$s4, $a2, $a0
	ori	$a2, $zero, 3092
	ldx.w	$s8, $a2, $a0
	ori	$a2, $zero, 3096
	ldx.w	$s7, $a2, $a0
	ldx.w	$s5, $a1, $a0
	mul.d	$a0, $s8, $s4
	mul.w	$s1, $a0, $s7
	pcaddu18i	$ra, %call36(getNRanks)
	jirl	$ra, $ra, 0
	bne	$s1, $a0, .LBB0_7
# %bb.6:
	move	$s1, $zero
	b	.LBB0_10
.LBB0_7:
	pcaddu18i	$ra, %call36(printRank)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_9
# %bb.8:
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 54
	ori	$a2, $zero, 1
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB0_10
.LBB0_9:
	ori	$s1, $zero, 1
.LBB0_10:
	addi.d	$s2, $s0, 24
	fadd.d	$fa0, $fs1, $fs1
	movgr2fr.w	$fa1, $s4
	ffint.d.w	$fa1, $fa1
	fmul.d	$fs1, $fa0, $fa1
	movgr2fr.w	$fa1, $s8
	ffint.d.w	$fa1, $fa1
	fmul.d	$fs2, $fa0, $fa1
	movgr2fr.w	$fa1, $s6
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fs0, $fa1
	fcmp.clt.d	$fcc0, $fa1, $fs1
	movgr2fr.w	$fa1, $s7
	ffint.d.w	$fa1, $fa1
	fmul.d	$fs3, $fa0, $fa1
	bceqz	$fcc0, .LBB0_13
.LBB0_11:
	addi.d	$s1, $s1, 2
	pcaddu18i	$ra, %call36(printRank)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_16
# %bb.12:
	ld.d	$a0, $s4, 0
	movfr2gr.d	$a2, $fs1
	movfr2gr.d	$a3, $fs2
	movfr2gr.d	$a4, $fs3
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_16
.LBB0_13:
	movgr2fr.w	$fa0, $s3
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fa0, $fs2
	bcnez	$fcc0, .LBB0_11
# %bb.14:
	movgr2fr.w	$fa0, $s5
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fcmp.cule.d	$fcc0, $fs3, $fa0
	bceqz	$fcc0, .LBB0_11
# %bb.15:
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
.LBB0_16:
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_80
# %bb.17:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2288
	add.d	$a0, $sp, $a0
	st.w	$s1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2288
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 4
	move	$a2, $zero
	pcaddu18i	$ra, %call36(bcastParallel)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB0_83
# %bb.18:                               # %initSimulation.exit
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.d	$a1, $s0, 32
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 36
	st.w	$a0, $s1, 4
	fld.d	$fa0, $s0, 8
	ori	$a0, $zero, 3156
	add.d	$a0, $sp, $a0
	ldptr.w	$a0, $a0, 0
	fst.d	$fa0, $s1, 8
	st.d	$s1, $fp, 40
	movgr2fr.w	$fa0, $a0
	ori	$a0, $zero, 3160
	add.d	$a0, $sp, $a0
	ldptr.w	$a0, $a0, 0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2288
	add.d	$a1, $sp, $a1
	fst.d	$fa0, $a1, 0
	movgr2fr.w	$fa0, $a0
	ori	$a0, $zero, 3164
	add.d	$a0, $sp, $a0
	ldptr.w	$a0, $a0, 0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2296
	add.d	$a1, $sp, $a1
	fst.d	$fa0, $a1, 0
	movgr2fr.w	$fa0, $a0
	ori	$a0, $zero, 3168
	add.d	$a0, $sp, $a0
	ldptr.w	$a0, $a0, 0
	ori	$a1, $zero, 3172
	add.d	$a1, $sp, $a1
	ldptr.w	$a1, $a1, 0
	ori	$a2, $zero, 3176
	add.d	$a2, $sp, $a2
	ldptr.w	$a2, $a2, 0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	lu12i.w	$a3, 1
	ori	$a3, $a3, 2304
	add.d	$a3, $sp, $a3
	fst.d	$fa0, $a3, 0
	lu12i.w	$a3, 1
	ori	$a3, $a3, 2288
	add.d	$a3, $sp, $a3
	pcaddu18i	$ra, %call36(initDecomposition)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
	fld.d	$fa0, $s0, 0
	pcaddu18i	$ra, %call36(initLinkCells)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 24
	pcaddu18i	$ra, %call36(initAtoms)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3156
	add.d	$a1, $sp, $a1
	ldptr.w	$a3, $a1, 0
	ori	$a1, $zero, 3160
	add.d	$a1, $sp, $a1
	ldptr.w	$a1, $a1, 0
	ori	$a2, $zero, 3164
	add.d	$a2, $sp, $a2
	ldptr.w	$a2, $a2, 0
	st.d	$a0, $fp, 32
	move	$a0, $a3
	fmov.d	$fa0, $fs0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(createFccLattice)
	jirl	$ra, $ra, 0
	addi.d	$s0, $sp, 80
	ori	$a0, $zero, 3128
	fldx.d	$fa0, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(setTemperature)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3136
	fldx.d	$fa0, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(randomDisplacements)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 24
	pcaddu18i	$ra, %call36(initAtomHaloExchange)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 72
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(profileStart)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(redistributeAtoms)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(profileStop)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(profileStart)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(computeForce)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(profileStop)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(kineticEnergy)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s4, 0
	ld.d	$a0, $fp, 24
	pcaddu18i	$ra, %call36(maxOccupancy)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcaddu18i	$ra, %call36(printRank)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_20
# %bb.19:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	ori	$a1, $zero, 18
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	ld.w	$a2, $a0, 4
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ld.d	$a4, $a0, 40
	ld.d	$a3, $a0, 32
	ld.d	$a2, $a0, 24
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ld.d	$a4, $a0, 64
	ld.d	$a3, $a0, 56
	ld.d	$a2, $a0, 48
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printSeparator)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	ori	$a1, $zero, 21
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ld.w	$a2, $a0, 0
	ld.w	$a3, $a0, 4
	ld.w	$a4, $a0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.w	$a2, $a0, 0
	ld.w	$a3, $a0, 4
	ld.w	$a4, $a0, 8
	mul.d	$a0, $a3, $a2
	mul.w	$a5, $a0, $a4
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a4, $a0, 88
	ld.d	$a3, $a0, 80
	ld.d	$a2, $a0, 72
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a1, $fp, 64
	fld.d	$fa0, $a0, 72
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a0, 80
	fld.d	$fa3, $a0, 88
	fdiv.d	$fa0, $fa0, $fa1
	fdiv.d	$fa2, $fa2, $fa1
	fdiv.d	$fa1, $fa3, $fa1
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa2
	movfr2gr.d	$a4, $fa1
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	ori	$a3, $zero, 64
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printSeparator)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 64
	ld.d	$a2, $a1, 48
	move	$a0, $s0
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 32
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 88
	mul.d	$a1, $a1, $a2
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	fld.s	$fa0, $a3, %pc_lo12(.LCPI0_0)
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	ld.w	$a0, $a0, 4
	fmul.s	$fa1, $fa1, $fa0
	fmul.s	$fs0, $fa1, $fa0
	ld.d	$a1, $fp, 24
	mul.d	$a0, $a0, $a2
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	ld.w	$a0, $a1, 0
	ld.w	$a2, $a1, 4
	ld.w	$a1, $a1, 8
	fmul.s	$fa1, $fa1, $fa0
	fmul.s	$fs1, $fa1, $fa0
	mul.d	$a3, $a2, $a0
	mul.d	$a3, $a3, $a1
	addi.d	$a0, $a0, 2
	addi.d	$a2, $a2, 2
	mul.d	$a0, $a2, $a0
	addi.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LCPI0_1)
	fld.s	$fa1, $a2, %pc_lo12(.LCPI0_1)
	mul.d	$a0, $a0, $a1
	movgr2fr.w	$fa2, $a3
	ffint.s.w	$fa2, $fa2
	fmul.s	$fa2, $fa2, $fa1
	fmul.s	$fa2, $fa2, $fa0
	fmul.s	$fs2, $fa2, $fa0
	movgr2fr.w	$fa2, $a0
	ffint.s.w	$fa2, $fa2
	fmul.s	$fa1, $fa2, $fa1
	fmul.s	$fa1, $fa1, $fa0
	fmul.s	$fs3, $fa1, $fa0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printSeparator)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
	ori	$a2, $zero, 88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	fcvt.d.s	$fa0, $fs1
	fcvt.d.s	$fa1, $fs0
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa1
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a1, $a0, %pc_lo12(.L.str.33)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	fcvt.d.s	$fa0, $fs2
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	fcvt.d.s	$fa0, $fs3
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.LBB0_20:                               # %printSimulationDataYaml.exit
	ld.d	$a0, $fp, 32
	st.w	$zero, $a0, 0
	ld.d	$a2, $fp, 24
	ld.w	$a1, $a2, 12
	ori	$a3, $zero, 1
	pcalau12i	$s5, %pc_hi20(.LCPI0_2)
	blt	$a1, $a3, .LBB0_27
# %bb.21:                               # %iter.check
	ld.d	$a2, $a2, 120
	ori	$a3, $zero, 4
	bltu	$a1, $a3, .LBB0_24
# %bb.22:                               # %vector.memcheck
	alsl.d	$a3, $a1, $a2, 2
	bgeu	$a0, $a3, .LBB0_62
# %bb.23:                               # %vector.memcheck
	addi.d	$a3, $a0, 4
	bgeu	$a2, $a3, .LBB0_62
.LBB0_24:
	move	$a3, $zero
	move	$a4, $zero
.LBB0_25:                               # %vec.epilog.scalar.ph.preheader
	sub.d	$a1, $a1, $a3
	alsl.d	$a2, $a3, $a2, 2
	.p2align	4, , 16
.LBB0_26:                               # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	add.d	$a4, $a3, $a4
	st.w	$a4, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB0_26
.LBB0_27:                               # %sumAtoms.exit.i
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(profileStart)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	addi.d	$a1, $a0, 4
	ori	$a2, $zero, 1
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(addIntParallel)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(profileStop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	fld.d	$fa0, $fp, 48
	fld.d	$fa1, $fp, 56
	ld.w	$s0, $a0, 4
	fadd.d	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $s0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fs0, $fa0, $fa1
	pcaddu18i	$ra, %call36(printRank)
	jirl	$ra, $ra, 0
	movfr2gr.d	$s2, $fs0
	beqz	$a0, .LBB0_29
# %bb.28:
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(printSeparator)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB0_29:                               # %initValidate.exit
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(timestampBarrier)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(timestampBarrier)
	jirl	$ra, $ra, 0
	ld.w	$s6, $fp, 0
	ld.w	$s3, $fp, 4
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(profileStart)
	jirl	$ra, $ra, 0
	move	$s2, $zero
	blt	$s6, $s1, .LBB0_48
# %bb.30:                               # %.lr.ph.preheader
	ori	$s7, $zero, 1
	ori	$s8, $zero, 4
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_3)
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	ori	$s1, $zero, 16
	vinsgr2vr.w	$vr0, $zero, 0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 16                   # 32-byte Folded Spill
	b	.LBB0_32
	.p2align	4, , 16
.LBB0_31:                               # %sumAtoms.exit
                                        #   in Loop: Header=BB0_32 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(profileStart)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	addi.d	$a1, $a0, 4
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(addIntParallel)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(profileStop)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(profileStop)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(getElapsedTime)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(printThings)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(profileStart)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, 8
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(timestep)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(profileStop)
	jirl	$ra, $ra, 0
	add.w	$s2, $s2, $s3
	bge	$s2, $s6, .LBB0_48
.LBB0_32:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_42 Depth 2
                                        #     Child Loop BB0_46 Depth 2
                                        #     Child Loop BB0_38 Depth 2
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(profileStart)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	st.w	$zero, $a0, 0
	ld.d	$a2, $fp, 24
	ld.w	$a1, $a2, 12
	blt	$a1, $s7, .LBB0_31
# %bb.33:                               # %iter.check47
                                        #   in Loop: Header=BB0_32 Depth=1
	ld.d	$a2, $a2, 120
	bltu	$a1, $s8, .LBB0_36
# %bb.34:                               # %vector.memcheck39
                                        #   in Loop: Header=BB0_32 Depth=1
	alsl.d	$a3, $a1, $a2, 2
	bgeu	$a0, $a3, .LBB0_39
# %bb.35:                               # %vector.memcheck39
                                        #   in Loop: Header=BB0_32 Depth=1
	addi.d	$a3, $a0, 4
	bgeu	$a2, $a3, .LBB0_39
.LBB0_36:                               #   in Loop: Header=BB0_32 Depth=1
	move	$a3, $zero
	move	$a4, $zero
.LBB0_37:                               # %vec.epilog.scalar.ph65.preheader
                                        #   in Loop: Header=BB0_32 Depth=1
	sub.d	$a1, $a1, $a3
	alsl.d	$a2, $a3, $a2, 2
	.p2align	4, , 16
.LBB0_38:                               # %vec.epilog.scalar.ph65
                                        #   Parent Loop BB0_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a2, 0
	add.d	$a4, $a3, $a4
	st.w	$a4, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB0_38
	b	.LBB0_31
.LBB0_39:                               # %vector.main.loop.iter.check49
                                        #   in Loop: Header=BB0_32 Depth=1
	bgeu	$a1, $s1, .LBB0_41
# %bb.40:                               #   in Loop: Header=BB0_32 Depth=1
	move	$a3, $zero
	move	$a4, $zero
	b	.LBB0_45
.LBB0_41:                               # %vector.ph50
                                        #   in Loop: Header=BB0_32 Depth=1
	bstrpick.d	$a3, $a1, 30, 4
	slli.d	$a3, $a3, 4
	addi.d	$a4, $a2, 32
	move	$a5, $a3
	xvld	$xr1, $sp, 16                   # 32-byte Folded Reload
	xvori.b	$xr0, $xr1, 0
	.p2align	4, , 16
.LBB0_42:                               # %vector.body53
                                        #   Parent Loop BB0_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr2, $a4, -32
	xvld	$xr3, $a4, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB0_42
# %bb.43:                               # %middle.block60
                                        #   in Loop: Header=BB0_32 Depth=1
	xvld	$xr2, $s5, %pc_lo12(.LCPI0_2)
	xvadd.w	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvshuf.d	$xr2, $xr0, $xr1
	xvadd.w	$xr0, $xr0, $xr2
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a4, $xr0, 0
	st.w	$a4, $a0, 0
	beq	$a3, $a1, .LBB0_31
# %bb.44:                               # %vec.epilog.iter.check67
                                        #   in Loop: Header=BB0_32 Depth=1
	andi	$a5, $a1, 12
	beqz	$a5, .LBB0_37
.LBB0_45:                               # %vec.epilog.ph66
                                        #   in Loop: Header=BB0_32 Depth=1
	move	$a5, $a3
	bstrpick.d	$a3, $a1, 30, 2
	slli.d	$a3, $a3, 2
	vinsgr2vr.w	$vr1, $a4, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vld	$vr2, $sp, 48                   # 16-byte Folded Reload
	vshuf.w	$vr0, $vr2, $vr1
	sub.d	$a4, $a5, $a3
	alsl.d	$a5, $a5, $a2, 2
	.p2align	4, , 16
.LBB0_46:                               # %vec.epilog.vector.body72
                                        #   Parent Loop BB0_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $a5, 0
	vadd.w	$vr0, $vr1, $vr0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 16
	bnez	$a4, .LBB0_46
# %bb.47:                               # %vec.epilog.middle.block77
                                        #   in Loop: Header=BB0_32 Depth=1
	vreplvei.d	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a4, $vr0, 0
	st.w	$a4, $a0, 0
	beq	$a3, $a1, .LBB0_31
	b	.LBB0_37
.LBB0_48:                               # %._crit_edge
	ori	$a0, $zero, 1
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(profileStop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	st.w	$zero, $a0, 0
	ld.d	$a2, $fp, 24
	ld.w	$a1, $a2, 12
	blt	$a1, $s1, .LBB0_55
# %bb.49:                               # %iter.check89
	ld.d	$a2, $a2, 120
	ori	$a3, $zero, 4
	bltu	$a1, $a3, .LBB0_52
# %bb.50:                               # %vector.memcheck81
	alsl.d	$a3, $a1, $a2, 2
	bgeu	$a0, $a3, .LBB0_64
# %bb.51:                               # %vector.memcheck81
	addi.d	$a3, $a0, 4
	bgeu	$a2, $a3, .LBB0_64
.LBB0_52:
	move	$a3, $zero
	move	$a4, $zero
.LBB0_53:                               # %vec.epilog.scalar.ph107.preheader
	sub.d	$a1, $a1, $a3
	alsl.d	$a2, $a3, $a2, 2
	.p2align	4, , 16
.LBB0_54:                               # %vec.epilog.scalar.ph107
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	add.d	$a4, $a3, $a4
	st.w	$a4, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB0_54
.LBB0_55:                               # %sumAtoms.exit14
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(profileStart)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	addi.d	$a1, $a0, 4
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(addIntParallel)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(profileStop)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(getElapsedTime)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(printThings)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(timestampBarrier)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(printRank)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_59
# %bb.56:
	ld.d	$a0, $fp, 32
	fld.d	$fa0, $fp, 48
	fld.d	$fa1, $fp, 56
	ld.w	$s1, $a0, 4
	fadd.d	$fa0, $fa0, $fa1
	ld.d	$a1, $s4, 0
	movgr2fr.w	$fa1, $s1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fs1, $fa0, $fa1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.12)
	addi.d	$a1, $a1, %pc_lo12(.L.str.12)
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	movfr2gr.d	$a2, $fs1
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	fdiv.d	$fa0, $fs1, $fs0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	bne	$s1, $s0, .LBB0_58
# %bb.57:
	ld.d	$a1, $fp, 32
	ld.d	$a0, $s4, 0
	ld.w	$a2, $a1, 4
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a1, $a1, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_59
.LBB0_58:
	ld.d	$a3, $s4, 0
	sub.w	$s0, $s1, $s0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$s1, $a0, %pc_lo12(.L.str.16)
	ori	$a1, $zero, 30
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s4, 0
	ori	$a1, $zero, 30
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB0_59:
	addi.d	$s0, $fp, 72
	addi.d	$s1, $fp, 24
	move	$a0, $zero
	pcaddu18i	$ra, %call36(profileStop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	st.d	$a0, $sp, 80
	beqz	$a0, .LBB0_61
# %bb.60:
	ld.d	$a1, $a0, 56
	addi.d	$a0, $sp, 80
	jirl	$ra, $a1, 0
.LBB0_61:                               # %destroySimulation.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(destroyLinkCells)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(destroyAtoms)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(destroyHaloExchange)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(timestampBarrier)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(destroyParallel)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	lu12i.w	$a1, 1
	ori	$a1, $a1, 400
	add.d	$sp, $sp, $a1
	fld.d	$fs3, $sp, 1912                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1920                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1928                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1936                 # 8-byte Folded Reload
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
.LBB0_62:                               # %vector.main.loop.iter.check
	ori	$a3, $zero, 16
	bgeu	$a1, $a3, .LBB0_66
# %bb.63:
	move	$a3, $zero
	move	$a4, $zero
	b	.LBB0_70
.LBB0_64:                               # %vector.main.loop.iter.check91
	ori	$a3, $zero, 16
	bgeu	$a1, $a3, .LBB0_73
# %bb.65:
	move	$a3, $zero
	move	$a4, $zero
	b	.LBB0_77
.LBB0_66:                               # %vector.ph
	bstrpick.d	$a3, $a1, 30, 4
	slli.d	$a3, $a3, 4
	xvrepli.b	$xr0, 0
	addi.d	$a4, $a2, 32
	move	$a5, $a3
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB0_67:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a4, -32
	xvld	$xr3, $a4, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB0_67
# %bb.68:                               # %middle.block
	xvld	$xr2, $s5, %pc_lo12(.LCPI0_2)
	xvadd.w	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvshuf.d	$xr2, $xr0, $xr1
	xvadd.w	$xr0, $xr0, $xr2
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a4, $xr0, 0
	st.w	$a4, $a0, 0
	beq	$a3, $a1, .LBB0_27
# %bb.69:                               # %vec.epilog.iter.check
	andi	$a5, $a1, 12
	beqz	$a5, .LBB0_25
.LBB0_70:                               # %vec.epilog.ph
	move	$a5, $a3
	bstrpick.d	$a3, $a1, 30, 2
	pcalau12i	$a6, %pc_hi20(.LCPI0_3)
	vld	$vr0, $a6, %pc_lo12(.LCPI0_3)
	slli.d	$a3, $a3, 2
	vinsgr2vr.w	$vr1, $a4, 0
	vinsgr2vr.w	$vr2, $zero, 0
	vshuf.w	$vr0, $vr2, $vr1
	sub.d	$a4, $a5, $a3
	alsl.d	$a5, $a5, $a2, 2
	.p2align	4, , 16
.LBB0_71:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a5, 0
	vadd.w	$vr0, $vr1, $vr0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 16
	bnez	$a4, .LBB0_71
# %bb.72:                               # %vec.epilog.middle.block
	vreplvei.d	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a4, $vr0, 0
	st.w	$a4, $a0, 0
	bne	$a3, $a1, .LBB0_25
	b	.LBB0_27
.LBB0_73:                               # %vector.ph92
	bstrpick.d	$a3, $a1, 30, 4
	slli.d	$a3, $a3, 4
	xvrepli.b	$xr0, 0
	addi.d	$a4, $a2, 32
	move	$a5, $a3
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB0_74:                               # %vector.body95
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a4, -32
	xvld	$xr3, $a4, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB0_74
# %bb.75:                               # %middle.block102
	xvld	$xr2, $s5, %pc_lo12(.LCPI0_2)
	xvadd.w	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvshuf.d	$xr2, $xr0, $xr1
	xvadd.w	$xr0, $xr0, $xr2
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a4, $xr0, 0
	st.w	$a4, $a0, 0
	beq	$a3, $a1, .LBB0_55
# %bb.76:                               # %vec.epilog.iter.check109
	andi	$a5, $a1, 12
	beqz	$a5, .LBB0_53
.LBB0_77:                               # %vec.epilog.ph108
	move	$a5, $a3
	bstrpick.d	$a3, $a1, 30, 2
	pcalau12i	$a6, %pc_hi20(.LCPI0_3)
	vld	$vr0, $a6, %pc_lo12(.LCPI0_3)
	slli.d	$a3, $a3, 2
	vinsgr2vr.w	$vr1, $a4, 0
	vinsgr2vr.w	$vr2, $zero, 0
	vshuf.w	$vr0, $vr2, $vr1
	sub.d	$a4, $a5, $a3
	alsl.d	$a5, $a5, $a2, 2
	.p2align	4, , 16
.LBB0_78:                               # %vec.epilog.vector.body114
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a5, 0
	vadd.w	$vr0, $vr1, $vr0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 16
	bnez	$a4, .LBB0_78
# %bb.79:                               # %vec.epilog.middle.block119
	vreplvei.d	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a4, $vr0, 0
	st.w	$a4, $a0, 0
	bne	$a3, $a1, .LBB0_53
	b	.LBB0_55
.LBB0_80:
	addi.d	$s1, $s1, 4
	pcaddu18i	$ra, %call36(printRank)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_82
# %bb.81:
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_82:                               # %.thread.i.i
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2288
	add.d	$a0, $sp, $a0
	st.w	$s1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2288
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 4
	move	$a2, $zero
	pcaddu18i	$ra, %call36(bcastParallel)
	jirl	$ra, $ra, 0
.LBB0_83:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function printThings
.LCPI1_0:
	.dword	0x3f20f13ed339f07f              # double 1.2925998599999999E-4
	.text
	.p2align	5
	.type	printThings,@function
printThings:                            # @printThings
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(printRank)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_4
# %bb.1:
	pcalau12i	$a0, %pc_hi20(printThings.firstCall)
	ld.bu	$a1, $a0, %pc_lo12(printThings.firstCall)
	bnez	$a1, .LBB1_3
# %bb.2:
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$s1, $a1, %got_pc_lo12(stdout)
	ld.d	$a3, $s1, 0
	ori	$a1, $zero, 1
	st.b	$a1, $a0, %pc_lo12(printThings.firstCall)
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	ori	$a1, $zero, 215
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.LBB1_3:
	movgr2fr.w	$fa0, $fp
	fld.d	$fa1, $s0, 8
	fld.d	$fa2, $s0, 48
	fld.d	$fa3, $s0, 56
	ld.d	$a0, $s0, 32
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	fadd.d	$fa1, $fa2, $fa3
	ld.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fa4, $a0, %pc_lo12(.LCPI1_0)
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	movgr2fr.w	$fa5, $a1
	ffint.d.w	$fa5, $fa5
	fdiv.d	$fa1, $fa1, $fa5
	ld.d	$a0, $a0, 0
	fdiv.d	$fa3, $fa3, $fa5
	fdiv.d	$fa2, $fa2, $fa5
	fdiv.d	$fa4, $fa3, $fa4
	st.d	$a1, $sp, 8
	movfr2gr.d	$a3, $fa0
	movfr2gr.d	$a4, $fa1
	movfr2gr.d	$a5, $fa2
	movfr2gr.d	$a6, $fa3
	movfr2gr.d	$a7, $fa4
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a1, $a1, %pc_lo12(.L.str.19)
	st.d	$zero, $sp, 0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB1_4:
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	printThings, .Lfunc_end1-printThings
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Starting Initialization\n"
	.size	.L.str, 25

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Initialization Finished\n"
	.size	.L.str.1, 25

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Starting simulation\n"
	.size	.L.str.2, 21

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Ending simulation\n"
	.size	.L.str.3, 19

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"CoMD Ending\n"
	.size	.L.str.4, 13

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"\nNumber of MPI ranks must match xproc * yproc * zproc\n"
	.size	.L.str.5, 55

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"\nSimulation too small.\n  Increase the number of unit cells to make the simulation\n  at least (%3.2f, %3.2f. %3.2f) Ansgstroms in size\n"
	.size	.L.str.6, 135

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"FCC"
	.size	.L.str.7, 4

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"\nOnly FCC Lattice type supported, not %s. Fatal Error.\n"
	.size	.L.str.8, 56

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Initial energy : %14.12f, atom count : %d \n"
	.size	.L.str.10, 44

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Simulation Validation:\n"
	.size	.L.str.11, 24

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"  Initial energy  : %14.12f\n"
	.size	.L.str.12, 29

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"  Final energy    : %14.12f\n"
	.size	.L.str.13, 29

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"  eFinal/eInitial : %f\n"
	.size	.L.str.14, 24

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"  Final atom count : %d, no atoms lost\n"
	.size	.L.str.15, 40

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"#############################\n"
	.size	.L.str.16, 31

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"# WARNING: %6d atoms lost #\n"
	.size	.L.str.17, 29

	.type	printThings.firstCall,@object   # @printThings.firstCall
	.local	printThings.firstCall
	.comm	printThings.firstCall,1,4
	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"#                                                                                         Performance\n#  Loop   Time(fs)       Total Energy   Potential Energy     Kinetic Energy  Temperature   (us/atom)     # Atoms\n"
	.size	.L.str.18, 216

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	" %6d %10.2f %18.12f %18.12f %18.12f %12.4f %10.4f %12d\n"
	.size	.L.str.19, 56

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Simulation data: \n"
	.size	.L.str.20, 19

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"  Total atoms        : %d\n"
	.size	.L.str.21, 27

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"  Min global bounds  : [ %14.10f, %14.10f, %14.10f ]\n"
	.size	.L.str.22, 54

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"  Max global bounds  : [ %14.10f, %14.10f, %14.10f ]\n"
	.size	.L.str.23, 54

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"Decomposition data: \n"
	.size	.L.str.24, 22

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"  Processors         : %6d,%6d,%6d\n"
	.size	.L.str.25, 36

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"  Local boxes        : %6d,%6d,%6d = %8d\n"
	.size	.L.str.26, 42

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"  Box size           : [ %14.10f, %14.10f, %14.10f ]\n"
	.size	.L.str.27, 54

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"  Box factor         : [ %14.10f, %14.10f, %14.10f ] \n"
	.size	.L.str.28, 55

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"  Max Link Cell Occupancy: %d of %d\n"
	.size	.L.str.29, 37

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"Potential data: \n"
	.size	.L.str.30, 18

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"Memory data: \n"
	.size	.L.str.31, 15

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"  Intrinsic atom footprint = %4d B/atom \n"
	.size	.L.str.32, 42

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"  Total atom footprint     = %7.3f MB (%6.2f MB/node)\n"
	.size	.L.str.33, 55

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"  Link cell atom footprint = %7.3f MB/node\n"
	.size	.L.str.34, 44

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"  Link cell atom footprint = %7.3f MB/node (including halo cell data\n"
	.size	.L.str.35, 70

	.section	".note.GNU-stack","",@progbits
	.addrsig
