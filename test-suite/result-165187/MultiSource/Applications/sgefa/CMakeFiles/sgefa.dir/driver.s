	.file	"driver.c"
	.text
	.globl	main                            # -- Begin function main
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
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2048
	sub.d	$sp, $sp, $a0
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 40
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 48
	addi.d	$a4, $sp, 32
	ori	$a5, $zero, 1
	ori	$a6, $zero, 40
	ori	$fp, $zero, 1
	pcaddu18i	$ra, %call36(matgen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_2
.LBB0_1:                                # %._crit_edge
	move	$a0, $zero
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2048
	add.d	$sp, $sp, $a1
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
.LBB0_2:                                # %.lr.ph
	addi.d	$s8, $sp, 72
	ori	$s2, $zero, 1000
	movgr2fr.d	$fs0, $zero
	movgr2fr.w	$fs1, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s0, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s1, $a0, %pc_lo12(.L.str.2)
	ori	$s3, $zero, 7
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s4, $a0, %pc_lo12(.L.str.5)
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_3:                                #   in Loop: Header=BB0_5 Depth=1
	ori	$a4, $zero, 2
	move	$a0, $a1
	move	$a1, $s7
	move	$a2, $s6
	move	$a3, $s7
	pcaddu18i	$ra, %call36(vexopy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 68
	ori	$a2, $zero, 1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(snrm2)
	jirl	$ra, $ra, 0
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=1
	addi.w	$fp, $fp, 1
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 40
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 48
	addi.d	$a4, $sp, 32
	ori	$a6, $zero, 40
	move	$a5, $fp
	pcaddu18i	$ra, %call36(matgen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_1
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_11 Depth 3
	ld.w	$a2, $sp, 68
	ld.w	$a3, $sp, 64
	blt	$s2, $a2, .LBB0_21
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	blt	$s2, $a3, .LBB0_21
# %bb.7:                                # %.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	fmov.d	$fa0, $fs0
	blez	$a3, .LBB0_14
# %bb.8:                                # %.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	fmov.d	$fa0, $fs0
	blez	$a2, .LBB0_14
# %bb.9:                                # %.lr.ph.us.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$a0, $zero
	fmov.s	$fa0, $fs1
	.p2align	4, , 16
.LBB0_10:                               # %.lr.ph.us
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s8, $a1
	move	$a4, $a2
	fmov.s	$fa1, $fs1
	.p2align	4, , 16
.LBB0_11:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.s	$fa2, $a1, 0
	fneg.s	$fa3, $fa2
	fcmp.clt.s	$fcc0, $fa2, $fs1
	fsel	$fa2, $fa2, $fa3, $fcc0
	fadd.s	$fa1, $fa1, $fa2
	addi.w	$a4, $a4, -1
	addi.d	$a1, $a1, 4
	bnez	$a4, .LBB0_11
# %bb.12:                               # %._crit_edge.us
                                        #   in Loop: Header=BB0_10 Depth=2
	fcmp.clt.s	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 1
	fsel	$fa0, $fa1, $fa0, $fcc0
	bne	$a0, $a3, .LBB0_10
# %bb.13:                               # %._crit_edge33.loopexit
                                        #   in Loop: Header=BB0_5 Depth=1
	fcvt.d.s	$fa0, $fa0
.LBB0_14:                               # %._crit_edge33
                                        #   in Loop: Header=BB0_5 Depth=1
	movfr2gr.d	$a1, $fa0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 32
	addi.d	$a0, $sp, 64
	move	$a1, $s5
	pcaddu18i	$ra, %call36(sgefa)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_4
# %bb.15:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$s7, $sp, 56
	addi.d	$a0, $sp, 64
	move	$a1, $s5
	move	$a2, $s7
	move	$a3, $zero
	pcaddu18i	$ra, %call36(sgesl)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 68
	ori	$a0, $zero, 8
	bge	$a1, $a0, .LBB0_18
# %bb.16:                               #   in Loop: Header=BB0_5 Depth=1
	addi.d	$a0, $sp, 64
	move	$a1, $s1
	pcaddu18i	$ra, %call36(matdump)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 68
	ld.d	$s6, $sp, 40
	blt	$s3, $a1, .LBB0_19
# %bb.17:                               #   in Loop: Header=BB0_5 Depth=1
	move	$a0, $s6
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fvecdump)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 68
	move	$a0, $s7
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fvecdump)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 68
	b	.LBB0_19
.LBB0_18:                               # %..thread_crit_edge
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$s6, $sp, 40
.LBB0_19:                               # %.thread
                                        #   in Loop: Header=BB0_5 Depth=1
	ori	$a4, $zero, 2
	move	$a0, $a1
	move	$a1, $s7
	move	$a2, $s6
	move	$a3, $s7
	pcaddu18i	$ra, %call36(vexopy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 68
	ori	$a2, $zero, 1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(snrm2)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 48
	addi.d	$a0, $sp, 64
	ori	$a3, $zero, 1
	move	$a1, $s5
	move	$a2, $s7
	pcaddu18i	$ra, %call36(sgesl)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 68
	blt	$s3, $a1, .LBB0_3
# %bb.20:                               #   in Loop: Header=BB0_5 Depth=1
	move	$a0, $s7
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fvecdump)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 68
	b	.LBB0_3
.LBB0_21:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function matgen
.LCPI1_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_1:
	.dword	0x47d2ced32a16a1b1              # double 9.9999999999999997E+37
	.text
	.globl	matgen
	.p2align	5
	.type	matgen,@function
matgen:                                 # @matgen
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	ori	$a7, $zero, 2
	move	$s4, $a6
	move	$s6, $a5
	move	$s5, $a4
	move	$s8, $a3
	move	$s7, $a2
	move	$s1, $a1
	move	$s2, $a0
	blt	$a5, $a7, .LBB1_5
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 4
	blez	$a0, .LBB1_4
# %bb.2:                                # %.lr.ph
	move	$fp, $zero
	addi.d	$s0, $s2, 8
	.p2align	4, , 16
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 4
	addi.d	$fp, $fp, 1
	addi.d	$s0, $s0, 8
	blt	$fp, $a0, .LBB1_3
.LBB1_4:                                # %._crit_edge
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_5:
	addi.d	$a0, $s6, -1
	ori	$a1, $zero, 13
	bltu	$a1, $a0, .LBB1_170
# %bb.6:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI1_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI1_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB1_7:
	mul.d	$a0, $s6, $s4
	alsl.w	$s3, $a0, $a0, 1
	alsl.d	$a0, $a0, $a0, 1
	st.w	$a0, $s2, 0
	st.w	$a0, $s2, 4
	move	$a0, $s3
	blez	$s3, .LBB1_12
# %bb.8:                                # %.lr.ph.i
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	move	$s4, $s3
	move	$s3, $s5
	move	$s5, $s1
	move	$s1, $s7
	move	$s0, $s8
	ori	$s8, $zero, 8
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$s7, $a0, %pc_lo12(.Lstr.5)
	move	$fp, $zero
	.p2align	4, , 16
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s2, $s8
	beqz	$a0, .LBB1_48
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=1
	ld.w	$a0, $s2, 4
	addi.d	$fp, $fp, 1
	addi.d	$s8, $s8, 8
	blt	$fp, $a0, .LBB1_9
# %bb.11:                               # %._crit_edge.i.loopexit
	ld.w	$a0, $s2, 0
	move	$s8, $s0
	move	$s7, $s1
	move	$s1, $s5
	move	$s5, $s3
	move	$s3, $s4
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
.LBB1_12:                               # %._crit_edge.i
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s1, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s7, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s8, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $s5, 0
	pcalau12i	$a2, %pc_hi20(.Lstr.4)
	move	$a3, $s7
	addi.d	$s7, $a2, %pc_lo12(.Lstr.4)
	beqz	$a1, .LBB1_48
# %bb.13:
	ld.d	$a1, $a3, 0
	beqz	$a1, .LBB1_48
# %bb.14:
	ld.d	$a1, $s8, 0
	beqz	$a1, .LBB1_48
# %bb.15:
	beqz	$a0, .LBB1_48
# %bb.16:
	move	$fp, $a3
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $s6
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	blez	$s3, .LBB1_171
# %bb.17:                               # %.lr.ph520
	move	$a0, $zero
	addi.d	$a1, $s2, 8
	bstrpick.d	$a3, $s3, 30, 2
	slli.d	$a2, $a3, 2
	slli.d	$a3, $a3, 4
	mul.d	$a4, $s4, $s6
	alsl.d	$a4, $a4, $a4, 1
	sub.d	$a4, $zero, $a4
	ori	$a5, $zero, 1
	ori	$a6, $zero, 4
	movgr2fr.w	$fa0, $zero
	vrepli.b	$vr1, 0
	move	$s7, $fp
	b	.LBB1_19
	.p2align	4, , 16
.LBB1_18:                               # %._crit_edge517
                                        #   in Loop: Header=BB1_19 Depth=1
	addi.d	$a5, $a5, 1
	beq	$a0, $s3, .LBB1_174
.LBB1_19:                               # %.lr.ph516
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_22 Depth 2
                                        #     Child Loop BB1_26 Depth 2
	slli.d	$a7, $a0, 3
	ldx.d	$t2, $a1, $a7
	addi.d	$a7, $a0, -3
	addi.d	$t0, $a0, 2
	addi.d	$a0, $a0, 1
	bgeu	$s3, $a6, .LBB1_21
# %bb.20:                               #   in Loop: Header=BB1_19 Depth=1
	move	$t3, $zero
	move	$t1, $t2
	b	.LBB1_24
	.p2align	4, , 16
.LBB1_21:                               # %vector.ph703
                                        #   in Loop: Header=BB1_19 Depth=1
	add.d	$t1, $t2, $a3
	pcalau12i	$t3, %pc_hi20(.LCPI1_0)
	vld	$vr2, $t3, %pc_lo12(.LCPI1_0)
	vreplgr2vr.d	$vr3, $a7
	vreplgr2vr.d	$vr4, $t0
	vreplgr2vr.w	$vr5, $a0
	move	$t3, $a2
	.p2align	4, , 16
.LBB1_22:                               # %vector.body712
                                        #   Parent Loop BB1_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vilvl.w	$vr6, $vr1, $vr2
	vilvh.w	$vr7, $vr1, $vr2
	vslt.d	$vr8, $vr7, $vr3
	vslt.d	$vr9, $vr6, $vr3
	vslt.du	$vr7, $vr4, $vr7
	vslt.du	$vr6, $vr4, $vr6
	vor.v	$vr6, $vr9, $vr6
	vor.v	$vr7, $vr8, $vr7
	vpickev.w	$vr6, $vr7, $vr6
	vadd.w	$vr7, $vr2, $vr5
	vffint.s.wu	$vr7, $vr7
	vfrecip.s	$vr7, $vr7
	vandn.v	$vr6, $vr6, $vr7
	vst	$vr6, $t2, 0
	vaddi.wu	$vr2, $vr2, 4
	addi.d	$t3, $t3, -4
	addi.d	$t2, $t2, 16
	bnez	$t3, .LBB1_22
# %bb.23:                               # %middle.block719
                                        #   in Loop: Header=BB1_19 Depth=1
	move	$t3, $a2
	beq	$a2, $s3, .LBB1_18
.LBB1_24:                               # %scalar.ph701.preheader
                                        #   in Loop: Header=BB1_19 Depth=1
	addi.w	$t2, $t3, 0
	add.w	$t4, $a4, $t3
	add.w	$t3, $t3, $a5
	b	.LBB1_26
	.p2align	4, , 16
.LBB1_25:                               #   in Loop: Header=BB1_26 Depth=2
	fst.s	$fa2, $t1, 0
	addi.d	$t1, $t1, 4
	addi.d	$t2, $t2, 1
	bstrpick.d	$t4, $t4, 31, 0
	addi.d	$t4, $t4, 1
	slli.d	$t5, $t4, 31
	addi.w	$t3, $t3, 1
	bltz	$t5, .LBB1_18
.LBB1_26:                               # %scalar.ph701
                                        #   Parent Loop BB1_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fmov.s	$fa2, $fa0
	blt	$t2, $a7, .LBB1_25
# %bb.27:                               # %scalar.ph701
                                        #   in Loop: Header=BB1_26 Depth=2
	fmov.s	$fa2, $fa0
	bltu	$t0, $t2, .LBB1_25
# %bb.28:                               #   in Loop: Header=BB1_26 Depth=2
	bstrpick.d	$t5, $t3, 31, 0
	movgr2fr.d	$fa2, $t5
	ffint.s.l	$fa2, $fa2
	frecip.s	$fa2, $fa2
	b	.LBB1_25
.LBB1_29:
	slli.d	$a0, $s4, 4
	sub.w	$s3, $a0, $s4
	st.w	$s3, $s2, 0
	st.w	$s3, $s2, 4
	move	$a0, $s3
	blez	$s4, .LBB1_34
# %bb.30:                               # %.lr.ph.i352
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	move	$s4, $s3
	move	$s3, $s5
	move	$s5, $s1
	move	$s1, $s7
	move	$s0, $s8
	ori	$s8, $zero, 8
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$s7, $a0, %pc_lo12(.Lstr.5)
	move	$fp, $zero
	.p2align	4, , 16
.LBB1_31:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s2, $s8
	beqz	$a0, .LBB1_48
# %bb.32:                               #   in Loop: Header=BB1_31 Depth=1
	ld.w	$a0, $s2, 4
	addi.d	$fp, $fp, 1
	addi.d	$s8, $s8, 8
	blt	$fp, $a0, .LBB1_31
# %bb.33:                               # %._crit_edge.i346.loopexit
	ld.w	$a0, $s2, 0
	move	$s8, $s0
	move	$s7, $s1
	move	$s1, $s5
	move	$s5, $s3
	move	$s3, $s4
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
.LBB1_34:                               # %._crit_edge.i346
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s1, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s7, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s8, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $s5, 0
	pcalau12i	$a2, %pc_hi20(.Lstr.4)
	move	$a3, $s7
	addi.d	$s7, $a2, %pc_lo12(.Lstr.4)
	beqz	$a1, .LBB1_48
# %bb.35:
	ld.d	$a1, $a3, 0
	beqz	$a1, .LBB1_48
# %bb.36:
	ld.d	$a1, $s8, 0
	beqz	$a1, .LBB1_48
# %bb.37:
	beqz	$a0, .LBB1_48
# %bb.38:
	move	$fp, $a3
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	move	$a1, $s6
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	blez	$s4, .LBB1_173
# %bb.39:                               # %.lr.ph512
	move	$a0, $zero
	addi.d	$a1, $s6, -7
	sltui	$a1, $a1, 1
	lu12i.w	$a2, 273536
	movgr2fr.w	$fa1, $a2
	vldi	$vr2, -1168
	movgr2cf	$fcc0, $a1
	addi.d	$a1, $s6, -8
	sltui	$a1, $a1, 1
	fsel	$fa0, $fa2, $fa1, $fcc0
	movgr2cf	$fcc0, $a1
	fsel	$fa1, $fa2, $fa1, $fcc0
	addi.d	$a1, $s2, 8
	ori	$a2, $zero, 1
	slt	$a3, $a2, $s3
	masknez	$a4, $a2, $a3
	maskeqz	$a3, $s3, $a3
	or	$a3, $a3, $a4
	addi.w	$a4, $zero, -1
	ori	$a5, $zero, 1
	move	$s7, $fp
	b	.LBB1_41
	.p2align	4, , 16
.LBB1_40:                               # %._crit_edge509
                                        #   in Loop: Header=BB1_41 Depth=1
	addi.d	$a5, $a5, 1
	addi.w	$a4, $a4, 1
	beq	$a0, $a3, .LBB1_174
.LBB1_41:                               # %.lr.ph508
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_45 Depth 2
	slli.d	$a6, $a0, 3
	ldx.d	$a6, $a1, $a6
	addi.d	$a0, $a0, 1
	move	$a7, $a4
	move	$t0, $a3
	move	$t1, $a5
	b	.LBB1_45
	.p2align	4, , 16
.LBB1_42:                               #   in Loop: Header=BB1_45 Depth=2
	vldi	$vr2, -1264
.LBB1_43:                               # %.sink.split
                                        #   in Loop: Header=BB1_45 Depth=2
	fst.s	$fa2, $a6, 0
.LBB1_44:                               #   in Loop: Header=BB1_45 Depth=2
	addi.d	$a6, $a6, 4
	addi.d	$t1, $t1, -1
	addi.w	$t0, $t0, -1
	addi.w	$a7, $a7, -1
	beqz	$t0, .LBB1_40
.LBB1_45:                               #   Parent Loop BB1_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$zero, $a6, 0
	beq	$t1, $a2, .LBB1_42
# %bb.46:                               #   in Loop: Header=BB1_45 Depth=2
	fmov.s	$fa2, $fa0
	beqz	$a7, .LBB1_43
# %bb.47:                               #   in Loop: Header=BB1_45 Depth=2
	fmov.s	$fa2, $fa1
	bnez	$t1, .LBB1_44
	b	.LBB1_43
.LBB1_48:                               # %get_space.exit
	move	$a0, $s7
	b	.LBB1_168
.LBB1_49:                               # %.lr.ph.i342
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $s2, 0
	ori	$s4, $zero, 8
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$s3, $a0, %pc_lo12(.Lstr.5)
	move	$fp, $zero
	.p2align	4, , 16
.LBB1_50:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s2, $s4
	beqz	$a0, .LBB1_57
# %bb.51:                               #   in Loop: Header=BB1_50 Depth=1
	ld.w	$a0, $s2, 4
	addi.d	$fp, $fp, 1
	addi.d	$s4, $s4, 8
	blt	$fp, $a0, .LBB1_50
# %bb.52:                               # %._crit_edge.i336
	ld.w	$a0, $s2, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s1, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s7, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s8, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $s5, 0
	pcalau12i	$a2, %pc_hi20(.Lstr.4)
	addi.d	$s3, $a2, %pc_lo12(.Lstr.4)
	beqz	$a1, .LBB1_57
# %bb.53:
	ld.d	$a1, $s7, 0
	beqz	$a1, .LBB1_57
# %bb.54:
	ld.d	$a1, $s8, 0
	beqz	$a1, .LBB1_57
# %bb.55:
	beqz	$a0, .LBB1_57
# %bb.56:                               # %.thread
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 1
	ori	$s3, $zero, 1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s6, -4
	sltui	$a0, $a0, 1
	ld.d	$a1, $s2, 8
	vldi	$vr0, -1272
	movgr2fr.w	$fa1, $zero
	movgr2cf	$fcc0, $a0
	fsel	$fa0, $fa1, $fa0, $fcc0
	fst.s	$fa0, $a1, 0
	b	.LBB1_172
.LBB1_57:                               # %get_space.exit345
	move	$a0, $s3
	b	.LBB1_168
.LBB1_58:
	slli.d	$a0, $s4, 2
	alsl.w	$s3, $s4, $a0, 1
	alsl.d	$a0, $s4, $a0, 1
	st.w	$a0, $s2, 0
	st.w	$a0, $s2, 4
	move	$a0, $s3
	blez	$s4, .LBB1_63
# %bb.59:                               # %.lr.ph.i392
	move	$s0, $s7
	ori	$s7, $zero, 8
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$s6, $a0, %pc_lo12(.Lstr.5)
	move	$fp, $zero
	.p2align	4, , 16
.LBB1_60:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s2, $s7
	beqz	$a0, .LBB1_167
# %bb.61:                               #   in Loop: Header=BB1_60 Depth=1
	ld.w	$a0, $s2, 4
	addi.d	$fp, $fp, 1
	addi.d	$s7, $s7, 8
	blt	$fp, $a0, .LBB1_60
# %bb.62:                               # %._crit_edge.i386.loopexit
	ld.w	$a0, $s2, 0
	move	$s7, $s0
.LBB1_63:                               # %._crit_edge.i386
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s1, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s7, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s8, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $s5, 0
	pcalau12i	$a2, %pc_hi20(.Lstr.4)
	addi.d	$s6, $a2, %pc_lo12(.Lstr.4)
	beqz	$a1, .LBB1_167
# %bb.64:
	ld.d	$a1, $s7, 0
	beqz	$a1, .LBB1_167
# %bb.65:
	ld.d	$a1, $s8, 0
	beqz	$a1, .LBB1_167
# %bb.66:
	beqz	$a0, .LBB1_167
# %bb.67:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 12
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	blez	$s4, .LBB1_174
# %bb.68:                               # %.lr.ph480
	move	$a0, $zero
	addi.d	$a1, $s2, 8
	ori	$a2, $zero, 1
	slt	$a3, $a2, $s3
	masknez	$a4, $a2, $a3
	maskeqz	$a3, $s3, $a3
	or	$a3, $a3, $a4
	bstrpick.d	$a5, $a3, 30, 2
	slli.d	$a4, $a5, 2
	slli.d	$a5, $a5, 4
	pcalau12i	$a6, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a6, %pc_lo12(.LCPI1_0)
	ori	$a6, $zero, 4
	movgr2fr.w	$fa1, $zero
	vrepli.b	$vr2, 0
	b	.LBB1_70
.LBB1_69:                               # %._crit_edge477
                                        #   in Loop: Header=BB1_70 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, -1
	beq	$a0, $a3, .LBB1_174
.LBB1_70:                               # %.lr.ph476
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_73 Depth 2
                                        #     Child Loop BB1_76 Depth 2
	slli.d	$a7, $a0, 3
	ldx.d	$t0, $a1, $a7
	bge	$s3, $a6, .LBB1_72
# %bb.71:                               #   in Loop: Header=BB1_70 Depth=1
	move	$t2, $zero
	move	$a7, $t0
	b	.LBB1_75
.LBB1_72:                               # %vector.ph645
                                        #   in Loop: Header=BB1_70 Depth=1
	add.d	$a7, $t0, $a5
	vreplgr2vr.d	$vr3, $a0
	vreplgr2vr.w	$vr4, $a0
	move	$t1, $a4
	vori.b	$vr5, $vr0, 0
	.p2align	4, , 16
.LBB1_73:                               # %vector.body652
                                        #   Parent Loop BB1_70 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vilvh.w	$vr6, $vr2, $vr5
	vilvl.w	$vr7, $vr2, $vr5
	vslt.du	$vr7, $vr7, $vr3
	vslt.du	$vr6, $vr6, $vr3
	vpickev.w	$vr6, $vr6, $vr7
	vsub.w	$vr7, $vr5, $vr4
	vaddi.wu	$vr7, $vr7, 1
	vffint.s.wu	$vr7, $vr7
	vandn.v	$vr6, $vr6, $vr7
	vst	$vr6, $t0, 0
	vaddi.wu	$vr5, $vr5, 4
	addi.d	$t1, $t1, -4
	addi.d	$t0, $t0, 16
	bnez	$t1, .LBB1_73
# %bb.74:                               # %middle.block659
                                        #   in Loop: Header=BB1_70 Depth=1
	move	$t2, $a4
	beq	$a4, $a3, .LBB1_69
.LBB1_75:                               # %scalar.ph643.preheader
                                        #   in Loop: Header=BB1_70 Depth=1
	addi.w	$t0, $t2, 0
	add.w	$t1, $t2, $a2
	sub.d	$t2, $a3, $t2
	.p2align	4, , 16
.LBB1_76:                               # %scalar.ph643
                                        #   Parent Loop BB1_70 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sltu	$t3, $t0, $a0
	bstrpick.d	$t4, $t1, 31, 0
	movgr2fr.d	$fa3, $t4
	ffint.s.l	$fa3, $fa3
	movgr2cf	$fcc0, $t3
	fsel	$fa3, $fa3, $fa1, $fcc0
	fst.s	$fa3, $a7, 0
	addi.d	$a7, $a7, 4
	addi.d	$t0, $t0, 1
	addi.w	$t2, $t2, -1
	addi.w	$t1, $t1, 1
	bnez	$t2, .LBB1_76
	b	.LBB1_69
.LBB1_77:
	alsl.w	$s3, $s4, $s4, 2
	alsl.d	$a0, $s4, $s4, 2
	st.w	$a0, $s2, 0
	st.w	$a0, $s2, 4
	move	$a0, $s3
	blez	$s4, .LBB1_82
# %bb.78:                               # %.lr.ph.i402
	move	$s0, $s7
	ori	$s7, $zero, 8
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$s6, $a0, %pc_lo12(.Lstr.5)
	move	$fp, $zero
	.p2align	4, , 16
.LBB1_79:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s2, $s7
	beqz	$a0, .LBB1_167
# %bb.80:                               #   in Loop: Header=BB1_79 Depth=1
	ld.w	$a0, $s2, 4
	addi.d	$fp, $fp, 1
	addi.d	$s7, $s7, 8
	blt	$fp, $a0, .LBB1_79
# %bb.81:                               # %._crit_edge.i396.loopexit
	ld.w	$a0, $s2, 0
	move	$s7, $s0
.LBB1_82:                               # %._crit_edge.i396
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s1, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s7, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s8, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $s5, 0
	pcalau12i	$a2, %pc_hi20(.Lstr.4)
	addi.d	$s6, $a2, %pc_lo12(.Lstr.4)
	beqz	$a1, .LBB1_167
# %bb.83:
	ld.d	$a1, $s7, 0
	beqz	$a1, .LBB1_167
# %bb.84:
	ld.d	$a1, $s8, 0
	beqz	$a1, .LBB1_167
# %bb.85:
	beqz	$a0, .LBB1_167
# %bb.86:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	lu12i.w	$a1, 172394
	ori	$a1, $a1, 433
	lu32i.d	$a1, 184019
	lu52i.d	$s5, $a1, 1149
	ori	$a1, $zero, 13
	move	$a2, $s3
	move	$a3, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	blez	$s4, .LBB1_174
# %bb.87:                               # %.lr.ph472
	move	$a0, $zero
	mul.d	$a1, $s3, $s3
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	addi.d	$a1, $s2, 8
	fcvt.d.s	$fa0, $fa0
	ori	$a2, $zero, 1
	slt	$a3, $a2, $s3
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s3, $a3
	or	$a2, $a3, $a2
	bstrpick.d	$a4, $a2, 30, 2
	slli.d	$a3, $a4, 2
	slli.d	$a4, $a4, 4
	vreplvei.d	$vr1, $vr0, 0
	pcalau12i	$a5, %pc_hi20(.LCPI1_1)
	fld.d	$fa2, $a5, %pc_lo12(.LCPI1_1)
	pcalau12i	$a5, %pc_hi20(.LCPI1_0)
	vld	$vr3, $a5, %pc_lo12(.LCPI1_0)
	ori	$a5, $zero, 4
	vrepli.b	$vr4, 0
	vreplgr2vr.d	$vr5, $s5
	b	.LBB1_89
.LBB1_88:                               # %._crit_edge469
                                        #   in Loop: Header=BB1_89 Depth=1
	move	$a0, $a6
	beq	$a6, $a2, .LBB1_174
.LBB1_89:                               # %.lr.ph468
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_92 Depth 2
                                        #     Child Loop BB1_95 Depth 2
	slli.d	$a6, $a0, 3
	ldx.d	$t0, $a1, $a6
	addi.d	$a6, $a0, 1
	srli.d	$a7, $a6, 1
	andi	$t1, $a6, 1
	or	$a7, $t1, $a7
	movgr2fr.d	$fa6, $a7
	ffint.s.l	$fa6, $fa6
	fadd.s	$fa6, $fa6, $fa6
	slti	$a7, $a6, 0
	movgr2fr.d	$fa7, $a6
	ffint.s.l	$fa7, $fa7
	movgr2cf	$fcc0, $a7
	fsel	$fa6, $fa7, $fa6, $fcc0
	bge	$s3, $a5, .LBB1_91
# %bb.90:                               #   in Loop: Header=BB1_89 Depth=1
	move	$t1, $zero
	move	$a7, $t0
	b	.LBB1_94
.LBB1_91:                               # %vector.ph621
                                        #   in Loop: Header=BB1_89 Depth=1
	add.d	$a7, $t0, $a4
	vreplgr2vr.d	$vr7, $a0
	vreplgr2vr.w	$vr8, $a6
	vreplvei.w	$vr9, $vr6, 0
	move	$t1, $a3
	vori.b	$vr10, $vr3, 0
	.p2align	4, , 16
.LBB1_92:                               # %vector.body632
                                        #   Parent Loop BB1_89 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vilvh.w	$vr11, $vr4, $vr10
	vilvl.w	$vr12, $vr4, $vr10
	vslt.du	$vr12, $vr7, $vr12
	vslt.du	$vr11, $vr7, $vr11
	vpickev.w	$vr11, $vr11, $vr12
	vaddi.wu	$vr12, $vr10, 1
	vbitsel.v	$vr11, $vr8, $vr12, $vr11
	vffint.s.wu	$vr11, $vr11
	vfdiv.s	$vr11, $vr9, $vr11
	vreplvei.w	$vr12, $vr11, 3
	fcvt.d.s	$ft4, $ft4
	vreplvei.w	$vr13, $vr11, 2
	fcvt.d.s	$ft5, $ft5
	vextrins.d	$vr13, $vr12, 16
	vreplvei.w	$vr12, $vr11, 1
	fcvt.d.s	$ft4, $ft4
	vreplvei.w	$vr11, $vr11, 0
	fcvt.d.s	$ft3, $ft3
	vextrins.d	$vr11, $vr12, 16
	vfmul.d	$vr11, $vr11, $vr5
	vfmul.d	$vr12, $vr13, $vr5
	vfdiv.d	$vr12, $vr12, $vr1
	vfdiv.d	$vr11, $vr11, $vr1
	vreplvei.d	$vr13, $vr11, 1
	fcvt.s.d	$ft5, $ft5
	vreplvei.d	$vr11, $vr11, 0
	fcvt.s.d	$ft3, $ft3
	vextrins.w	$vr11, $vr13, 16
	vreplvei.d	$vr13, $vr12, 0
	fcvt.s.d	$ft5, $ft5
	vextrins.w	$vr11, $vr13, 32
	vreplvei.d	$vr12, $vr12, 1
	fcvt.s.d	$ft4, $ft4
	vextrins.w	$vr11, $vr12, 48
	vst	$vr11, $t0, 0
	vaddi.wu	$vr10, $vr10, 4
	addi.d	$t1, $t1, -4
	addi.d	$t0, $t0, 16
	bnez	$t1, .LBB1_92
# %bb.93:                               # %middle.block639
                                        #   in Loop: Header=BB1_89 Depth=1
	move	$t1, $a3
	beq	$a3, $a2, .LBB1_88
.LBB1_94:                               # %scalar.ph619.preheader
                                        #   in Loop: Header=BB1_89 Depth=1
	addi.w	$t0, $t1, 0
	.p2align	4, , 16
.LBB1_95:                               # %scalar.ph619
                                        #   Parent Loop BB1_89 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sltu	$t2, $a0, $t0
	addi.w	$t1, $t1, 1
	masknez	$t3, $a6, $t2
	maskeqz	$t2, $t1, $t2
	or	$t2, $t2, $t3
	bstrpick.d	$t2, $t2, 31, 0
	movgr2fr.d	$fa7, $t2
	ffint.s.l	$fa7, $fa7
	fdiv.s	$fa7, $fa6, $fa7
	fcvt.d.s	$fa7, $fa7
	fmul.d	$fa7, $fa7, $fa2
	fdiv.d	$fa7, $fa7, $fa0
	fcvt.s.d	$fa7, $fa7
	fst.s	$fa7, $a7, 0
	addi.d	$a7, $a7, 4
	addi.d	$t0, $t0, 1
	bne	$a2, $t1, .LBB1_95
	b	.LBB1_88
.LBB1_96:
	slli.w	$s3, $s4, 2
	st.w	$s3, $s2, 0
	st.w	$s3, $s2, 4
	move	$a0, $s3
	blez	$s4, .LBB1_101
# %bb.97:                               # %.lr.ph.i372
	move	$s0, $s7
	ori	$s7, $zero, 8
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$s6, $a0, %pc_lo12(.Lstr.5)
	move	$fp, $zero
	.p2align	4, , 16
.LBB1_98:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s2, $s7
	beqz	$a0, .LBB1_167
# %bb.99:                               #   in Loop: Header=BB1_98 Depth=1
	ld.w	$a0, $s2, 4
	addi.d	$fp, $fp, 1
	addi.d	$s7, $s7, 8
	blt	$fp, $a0, .LBB1_98
# %bb.100:                              # %._crit_edge.i366.loopexit
	ld.w	$a0, $s2, 0
	move	$s7, $s0
.LBB1_101:                              # %._crit_edge.i366
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s1, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s7, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s8, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $s5, 0
	pcalau12i	$a2, %pc_hi20(.Lstr.4)
	addi.d	$s6, $a2, %pc_lo12(.Lstr.4)
	beqz	$a1, .LBB1_167
# %bb.102:
	ld.d	$a1, $s7, 0
	beqz	$a1, .LBB1_167
# %bb.103:
	ld.d	$a1, $s8, 0
	beqz	$a1, .LBB1_167
# %bb.104:
	beqz	$a0, .LBB1_167
# %bb.105:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	ori	$a1, $zero, 10
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	blez	$s4, .LBB1_174
# %bb.106:                              # %.lr.ph496
	move	$a0, $zero
	addi.d	$a1, $s2, 8
	ori	$a2, $zero, 1
	slt	$a3, $a2, $s3
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s3, $a3
	or	$a2, $a3, $a2
	bstrpick.d	$a4, $a2, 30, 2
	pcalau12i	$a3, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI1_0)
	slli.d	$a3, $a4, 2
	slli.d	$a4, $a4, 4
	ori	$a5, $zero, 4
	b	.LBB1_108
.LBB1_107:                              # %._crit_edge493
                                        #   in Loop: Header=BB1_108 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a2, .LBB1_174
.LBB1_108:                              # %.lr.ph492
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_111 Depth 2
                                        #     Child Loop BB1_113 Depth 2
	slli.d	$a6, $a0, 3
	ldx.d	$a7, $a1, $a6
	addi.d	$a6, $a0, -2
	movgr2fr.w	$fa1, $a6
	ffint.s.w	$fa1, $fa1
	bge	$s3, $a5, .LBB1_110
# %bb.109:                              #   in Loop: Header=BB1_108 Depth=1
	move	$t0, $zero
	move	$a6, $a7
	b	.LBB1_113
.LBB1_110:                              # %vector.ph685
                                        #   in Loop: Header=BB1_108 Depth=1
	add.d	$a6, $a7, $a4
	vreplvei.w	$vr2, $vr1, 0
	move	$t0, $a3
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB1_111:                              # %vector.body690
                                        #   Parent Loop BB1_108 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.wu	$vr4, $vr3, 1
	vffint.s.wu	$vr4, $vr4
	vfdiv.s	$vr4, $vr2, $vr4
	vst	$vr4, $a7, 0
	vaddi.wu	$vr3, $vr3, 4
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, 16
	bnez	$t0, .LBB1_111
# %bb.112:                              # %middle.block697
                                        #   in Loop: Header=BB1_108 Depth=1
	move	$t0, $a3
	beq	$a3, $a2, .LBB1_107
	.p2align	4, , 16
.LBB1_113:                              # %scalar.ph683
                                        #   Parent Loop BB1_108 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t0, $t0, 1
	bstrpick.d	$a7, $t0, 31, 0
	movgr2fr.d	$fa2, $a7
	ffint.s.l	$fa2, $fa2
	fdiv.s	$fa2, $fa1, $fa2
	fst.s	$fa2, $a6, 0
	addi.d	$a6, $a6, 4
	bne	$a2, $t0, .LBB1_113
	b	.LBB1_107
.LBB1_114:
	alsl.w	$s3, $s4, $s4, 2
	alsl.d	$a0, $s4, $s4, 2
	st.w	$a0, $s2, 0
	st.w	$a0, $s2, 4
	move	$a0, $s3
	blez	$s4, .LBB1_119
# %bb.115:                              # %.lr.ph.i412
	move	$s0, $s7
	ori	$s7, $zero, 8
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$s6, $a0, %pc_lo12(.Lstr.5)
	move	$fp, $zero
	.p2align	4, , 16
.LBB1_116:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s2, $s7
	beqz	$a0, .LBB1_167
# %bb.117:                              #   in Loop: Header=BB1_116 Depth=1
	ld.w	$a0, $s2, 4
	addi.d	$fp, $fp, 1
	addi.d	$s7, $s7, 8
	blt	$fp, $a0, .LBB1_116
# %bb.118:                              # %._crit_edge.i406.loopexit
	ld.w	$a0, $s2, 0
	move	$s7, $s0
.LBB1_119:                              # %._crit_edge.i406
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s1, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s7, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s8, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $s5, 0
	pcalau12i	$a2, %pc_hi20(.Lstr.4)
	addi.d	$s6, $a2, %pc_lo12(.Lstr.4)
	beqz	$a1, .LBB1_167
# %bb.120:
	ld.d	$a1, $s7, 0
	beqz	$a1, .LBB1_167
# %bb.121:
	ld.d	$a1, $s8, 0
	beqz	$a1, .LBB1_167
# %bb.122:
	beqz	$a0, .LBB1_167
# %bb.123:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	lu12i.w	$a1, -402777
	ori	$a1, $a1, 2276
	lu32i.d	$a1, -313093
	lu52i.d	$a3, $a1, 896
	ori	$a1, $zero, 14
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	blez	$s4, .LBB1_174
# %bb.124:                              # %.lr.ph464
	move	$a0, $zero
	mul.d	$a1, $s3, $s3
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	addi.d	$a1, $s2, 8
	ori	$a2, $zero, 1
	slt	$a3, $a2, $s3
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s3, $a3
	or	$a2, $a3, $a2
	bstrpick.d	$a4, $a2, 30, 2
	slli.d	$a3, $a4, 2
	slli.d	$a4, $a4, 4
	vreplvei.w	$vr1, $vr0, 0
	pcalau12i	$a5, %pc_hi20(.LCPI1_1)
	fld.d	$fa2, $a5, %pc_lo12(.LCPI1_1)
	pcalau12i	$a5, %pc_hi20(.LCPI1_0)
	vld	$vr3, $a5, %pc_lo12(.LCPI1_0)
	lu12i.w	$a5, 172394
	ori	$a5, $a5, 433
	lu32i.d	$a5, 184019
	lu52i.d	$a5, $a5, 1149
	vreplgr2vr.d	$vr4, $a5
	ori	$a5, $zero, 4
	vrepli.b	$vr5, 0
	b	.LBB1_126
.LBB1_125:                              # %._crit_edge461
                                        #   in Loop: Header=BB1_126 Depth=1
	move	$a0, $a6
	beq	$a6, $a2, .LBB1_174
.LBB1_126:                              # %.lr.ph460
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_129 Depth 2
                                        #     Child Loop BB1_132 Depth 2
	slli.d	$a6, $a0, 3
	ldx.d	$t0, $a1, $a6
	addi.d	$a6, $a0, 1
	srli.d	$a7, $a6, 1
	andi	$t1, $a6, 1
	or	$a7, $t1, $a7
	movgr2fr.d	$fa6, $a7
	ffint.s.l	$fa6, $fa6
	fadd.s	$fa6, $fa6, $fa6
	slti	$a7, $a6, 0
	movgr2fr.d	$fa7, $a6
	ffint.s.l	$fa7, $fa7
	movgr2cf	$fcc0, $a7
	fsel	$fa6, $fa7, $fa6, $fcc0
	bge	$s3, $a5, .LBB1_128
# %bb.127:                              #   in Loop: Header=BB1_126 Depth=1
	move	$t1, $zero
	move	$a7, $t0
	b	.LBB1_131
.LBB1_128:                              # %vector.ph
                                        #   in Loop: Header=BB1_126 Depth=1
	add.d	$a7, $t0, $a4
	vreplgr2vr.d	$vr7, $a0
	vreplgr2vr.w	$vr8, $a6
	vreplvei.w	$vr9, $vr6, 0
	move	$t1, $a3
	vori.b	$vr10, $vr3, 0
	.p2align	4, , 16
.LBB1_129:                              # %vector.body
                                        #   Parent Loop BB1_126 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vilvh.w	$vr11, $vr5, $vr10
	vilvl.w	$vr12, $vr5, $vr10
	vslt.du	$vr12, $vr7, $vr12
	vslt.du	$vr11, $vr7, $vr11
	vpickev.w	$vr11, $vr11, $vr12
	vaddi.wu	$vr12, $vr10, 1
	vbitsel.v	$vr11, $vr8, $vr12, $vr11
	vffint.s.wu	$vr11, $vr11
	vfdiv.s	$vr11, $vr11, $vr9
	vfmul.s	$vr11, $vr11, $vr1
	vreplvei.w	$vr12, $vr11, 1
	fcvt.d.s	$ft4, $ft4
	vreplvei.w	$vr13, $vr11, 0
	fcvt.d.s	$ft5, $ft5
	vextrins.d	$vr13, $vr12, 16
	vreplvei.w	$vr12, $vr11, 3
	fcvt.d.s	$ft4, $ft4
	vreplvei.w	$vr11, $vr11, 2
	fcvt.d.s	$ft3, $ft3
	vextrins.d	$vr11, $vr12, 16
	vfdiv.d	$vr11, $vr11, $vr4
	vfdiv.d	$vr12, $vr13, $vr4
	vreplvei.d	$vr13, $vr12, 1
	fcvt.s.d	$ft5, $ft5
	vreplvei.d	$vr12, $vr12, 0
	fcvt.s.d	$ft4, $ft4
	vextrins.w	$vr12, $vr13, 16
	vreplvei.d	$vr13, $vr11, 0
	fcvt.s.d	$ft5, $ft5
	vextrins.w	$vr12, $vr13, 32
	vreplvei.d	$vr11, $vr11, 1
	fcvt.s.d	$ft3, $ft3
	vextrins.w	$vr12, $vr11, 48
	vst	$vr12, $t0, 0
	vaddi.wu	$vr10, $vr10, 4
	addi.d	$t1, $t1, -4
	addi.d	$t0, $t0, 16
	bnez	$t1, .LBB1_129
# %bb.130:                              # %middle.block
                                        #   in Loop: Header=BB1_126 Depth=1
	move	$t1, $a3
	beq	$a3, $a2, .LBB1_125
.LBB1_131:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB1_126 Depth=1
	addi.w	$t0, $t1, 0
	.p2align	4, , 16
.LBB1_132:                              # %scalar.ph
                                        #   Parent Loop BB1_126 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sltu	$t2, $a0, $t0
	addi.w	$t1, $t1, 1
	masknez	$t3, $a6, $t2
	maskeqz	$t2, $t1, $t2
	or	$t2, $t2, $t3
	bstrpick.d	$t2, $t2, 31, 0
	movgr2fr.d	$fa7, $t2
	ffint.s.l	$fa7, $fa7
	fdiv.s	$fa7, $fa7, $fa6
	fmul.s	$fa7, $fa7, $fa0
	fcvt.d.s	$fa7, $fa7
	fdiv.d	$fa7, $fa7, $fa2
	fcvt.s.d	$fa7, $fa7
	fst.s	$fa7, $a7, 0
	addi.d	$a7, $a7, 4
	addi.d	$t0, $t0, 1
	bne	$a2, $t1, .LBB1_132
	b	.LBB1_125
.LBB1_133:
	slli.d	$a0, $s4, 2
	alsl.w	$s3, $s4, $a0, 1
	alsl.d	$a0, $s4, $a0, 1
	st.w	$a0, $s2, 0
	st.w	$a0, $s2, 4
	move	$a0, $s3
	blez	$s4, .LBB1_138
# %bb.134:                              # %.lr.ph.i382
	move	$s0, $s7
	ori	$s7, $zero, 8
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$s6, $a0, %pc_lo12(.Lstr.5)
	move	$fp, $zero
	.p2align	4, , 16
.LBB1_135:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s2, $s7
	beqz	$a0, .LBB1_167
# %bb.136:                              #   in Loop: Header=BB1_135 Depth=1
	ld.w	$a0, $s2, 4
	addi.d	$fp, $fp, 1
	addi.d	$s7, $s7, 8
	blt	$fp, $a0, .LBB1_135
# %bb.137:                              # %._crit_edge.i376.loopexit
	ld.w	$a0, $s2, 0
	move	$s7, $s0
.LBB1_138:                              # %._crit_edge.i376
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s1, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s7, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s8, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $s5, 0
	pcalau12i	$a2, %pc_hi20(.Lstr.4)
	addi.d	$s6, $a2, %pc_lo12(.Lstr.4)
	beqz	$a1, .LBB1_167
# %bb.139:
	ld.d	$a1, $s7, 0
	beqz	$a1, .LBB1_167
# %bb.140:
	ld.d	$a1, $s8, 0
	beqz	$a1, .LBB1_167
# %bb.141:
	beqz	$a0, .LBB1_167
# %bb.142:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 11
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	blez	$s4, .LBB1_174
# %bb.143:                              # %.lr.ph488
	move	$a0, $zero
	addi.d	$a1, $s2, 8
	ori	$a2, $zero, 1
	slt	$a3, $a2, $s3
	masknez	$a4, $a2, $a3
	maskeqz	$a3, $s3, $a3
	or	$a3, $a3, $a4
	bstrpick.d	$a5, $a3, 30, 2
	slli.d	$a4, $a5, 2
	slli.d	$a5, $a5, 4
	pcalau12i	$a6, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a6, %pc_lo12(.LCPI1_0)
	ori	$a6, $zero, 4
	movgr2fr.w	$fa1, $zero
	vrepli.b	$vr2, 0
	b	.LBB1_145
.LBB1_144:                              # %._crit_edge485
                                        #   in Loop: Header=BB1_145 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, -1
	beq	$a0, $a3, .LBB1_174
.LBB1_145:                              # %.lr.ph484
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_148 Depth 2
                                        #     Child Loop BB1_151 Depth 2
	slli.d	$a7, $a0, 3
	ldx.d	$t0, $a1, $a7
	bge	$s3, $a6, .LBB1_147
# %bb.146:                              #   in Loop: Header=BB1_145 Depth=1
	move	$t2, $zero
	move	$a7, $t0
	b	.LBB1_150
.LBB1_147:                              # %vector.ph665
                                        #   in Loop: Header=BB1_145 Depth=1
	add.d	$a7, $t0, $a5
	vreplgr2vr.d	$vr3, $a0
	vreplgr2vr.w	$vr4, $a0
	move	$t1, $a4
	vori.b	$vr5, $vr0, 0
	.p2align	4, , 16
.LBB1_148:                              # %vector.body672
                                        #   Parent Loop BB1_145 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vilvh.w	$vr6, $vr2, $vr5
	vilvl.w	$vr7, $vr2, $vr5
	vslt.du	$vr7, $vr3, $vr7
	vslt.du	$vr6, $vr3, $vr6
	vpickev.w	$vr6, $vr6, $vr7
	vsub.w	$vr7, $vr5, $vr4
	vaddi.wu	$vr7, $vr7, 1
	vffint.s.w	$vr7, $vr7
	vandn.v	$vr6, $vr6, $vr7
	vst	$vr6, $t0, 0
	vaddi.wu	$vr5, $vr5, 4
	addi.d	$t1, $t1, -4
	addi.d	$t0, $t0, 16
	bnez	$t1, .LBB1_148
# %bb.149:                              # %middle.block679
                                        #   in Loop: Header=BB1_145 Depth=1
	move	$t2, $a4
	beq	$a4, $a3, .LBB1_144
.LBB1_150:                              # %scalar.ph663.preheader
                                        #   in Loop: Header=BB1_145 Depth=1
	addi.w	$t0, $t2, 0
	add.w	$t1, $t2, $a2
	sub.d	$t2, $a3, $t2
	.p2align	4, , 16
.LBB1_151:                              # %scalar.ph663
                                        #   Parent Loop BB1_145 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sltu	$t3, $a0, $t0
	movgr2fr.w	$fa3, $t1
	ffint.s.w	$fa3, $fa3
	movgr2cf	$fcc0, $t3
	fsel	$fa3, $fa3, $fa1, $fcc0
	fst.s	$fa3, $a7, 0
	addi.d	$a7, $a7, 4
	addi.d	$t0, $t0, 1
	addi.w	$t2, $t2, -1
	addi.w	$t1, $t1, 1
	bnez	$t2, .LBB1_151
	b	.LBB1_144
.LBB1_152:
	alsl.w	$s3, $s4, $s4, 2
	alsl.d	$a0, $s4, $s4, 2
	st.w	$a0, $s2, 0
	st.w	$a0, $s2, 4
	move	$a0, $s3
	blez	$s4, .LBB1_157
# %bb.153:                              # %.lr.ph.i362
	move	$s0, $s7
	ori	$s7, $zero, 8
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$s6, $a0, %pc_lo12(.Lstr.5)
	move	$fp, $zero
	.p2align	4, , 16
.LBB1_154:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s2, $s7
	beqz	$a0, .LBB1_167
# %bb.155:                              #   in Loop: Header=BB1_154 Depth=1
	ld.w	$a0, $s2, 4
	addi.d	$fp, $fp, 1
	addi.d	$s7, $s7, 8
	blt	$fp, $a0, .LBB1_154
# %bb.156:                              # %._crit_edge.i356.loopexit
	ld.w	$a0, $s2, 0
	move	$s7, $s0
.LBB1_157:                              # %._crit_edge.i356
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s1, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s7, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	st.d	$a0, $s8, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $s5, 0
	pcalau12i	$a2, %pc_hi20(.Lstr.4)
	addi.d	$s6, $a2, %pc_lo12(.Lstr.4)
	beqz	$a1, .LBB1_167
# %bb.158:
	ld.d	$a1, $s7, 0
	beqz	$a1, .LBB1_167
# %bb.159:
	ld.d	$a1, $s8, 0
	beqz	$a1, .LBB1_167
# %bb.160:
	beqz	$a0, .LBB1_167
# %bb.161:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ori	$a1, $zero, 9
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	blez	$s4, .LBB1_174
# %bb.162:                              # %.lr.ph504
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $zero
	move	$s5, $zero
	addi.d	$s6, $s2, 8
	ori	$a0, $zero, 1
	slt	$a1, $a0, $s3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$s0, $a1, $a0
.LBB1_163:                              # %.lr.ph500.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_164 Depth 2
	slli.d	$a0, $s5, 3
	ldx.d	$s8, $s6, $a0
	move	$s4, $fp
	move	$s7, $s0
	.p2align	4, , 16
.LBB1_164:                              # %.lr.ph500
                                        #   Parent Loop BB1_163 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movgr2fr.w	$fa0, $s4
	ffint.d.w	$fa1, $fa0
	vldi	$vr0, -988
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $s8, 0
	addi.d	$s8, $s8, 4
	addi.w	$s7, $s7, -1
	addi.w	$s4, $s4, 1
	bnez	$s7, .LBB1_164
# %bb.165:                              # %._crit_edge501
                                        #   in Loop: Header=BB1_163 Depth=1
	addi.d	$s5, $s5, 1
	addi.w	$fp, $fp, -1
	bne	$s5, $s0, .LBB1_163
# %bb.166:
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	b	.LBB1_174
.LBB1_167:                              # %get_space.exit365
	move	$a0, $s6
.LBB1_168:                              # %.critedge
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
.LBB1_169:                              # %.critedge
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB1_170:
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	b	.LBB1_168
.LBB1_171:
	move	$s7, $fp
.LBB1_172:                              # %.thread441.sink.split
	ld.d	$a0, $s1, 0
	lu12i.w	$a1, 260096
	st.w	$a1, $a0, 0
	b	.LBB1_182
.LBB1_173:
	move	$s7, $fp
.LBB1_174:                              # %.loopexit
	ld.d	$a0, $s1, 0
	lu12i.w	$a2, 260096
	ori	$a1, $zero, 2
	st.w	$a2, $a0, 0
	blt	$s3, $a1, .LBB1_182
# %bb.175:
	ld.d	$a2, $s8, 0
	st.w	$zero, $a2, 0
	bne	$s3, $a1, .LBB1_177
# %bb.176:
	ori	$s3, $zero, 2
	b	.LBB1_182
.LBB1_177:                              # %.lr.ph524.preheader
	addi.w	$a3, $s3, -2
	ori	$a2, $zero, 2
	addi.d	$a1, $a0, 8
	bltu	$a3, $a2, .LBB1_181
# %bb.178:                              # %vector.ph725
	bstrpick.d	$a3, $a3, 31, 0
	bstrpick.d	$a2, $a3, 31, 1
	slli.d	$a4, $a2, 1
	ld.d	$a5, $a0, 0
	alsl.d	$a1, $a2, $a1, 3
	ori	$a6, $zero, 2
	alsl.w	$a2, $a2, $a6, 1
	vinsgr2vr.d	$vr0, $a5, 0
	ori	$a5, $zero, 8
	move	$a6, $a4
	.p2align	4, , 16
.LBB1_179:                              # %vector.body728
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a7, $a0, $a5
	vbitrevi.w	$vr0, $vr0, 31
	vstelm.d	$vr0, $a7, 0, 0
	addi.d	$a6, $a6, -2
	addi.d	$a5, $a5, 8
	bnez	$a6, .LBB1_179
# %bb.180:                              # %middle.block733
	beq	$a4, $a3, .LBB1_182
	.p2align	4, , 16
.LBB1_181:                              # %.lr.ph524
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, -8
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $a1, 0
	addi.w	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	bne	$s3, $a2, .LBB1_181
.LBB1_182:                              # %.thread441
	ld.w	$a1, $s2, 0
	blez	$a1, .LBB1_197
# %bb.183:
	ld.wu	$a3, $s2, 4
	addi.w	$a2, $a3, 0
	blez	$a2, .LBB1_197
# %bb.184:
	ld.d	$a4, $s7, 0
	ld.d	$t2, $s2, 8
	ori	$a5, $zero, 12
	addi.d	$t0, $a3, -1
	addi.d	$a7, $a0, 4
	bgeu	$a3, $a5, .LBB1_198
# %bb.185:
	move	$t1, $zero
.LBB1_186:
	move	$a5, $t2
	move	$a6, $a4
.LBB1_187:                              # %.lr.ph.i416.preheader
	sub.d	$t1, $a3, $t1
	.p2align	4, , 16
.LBB1_188:                              # %.lr.ph.i416
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a5, 0
	fld.s	$fa1, $a0, 0
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a6, 0
	addi.d	$a6, $a6, 4
	addi.w	$t1, $t1, -1
	addi.d	$a5, $a5, 4
	bnez	$t1, .LBB1_188
.LBB1_189:                              # %.preheader.i
	ori	$a6, $zero, 1
	addi.d	$a5, $s2, 8
	bne	$a1, $a6, .LBB1_203
.LBB1_190:                              # %.thread446
	ld.d	$a3, $s8, 0
	move	$a4, $zero
	movgr2fr.w	$fa0, $zero
	.p2align	4, , 16
.LBB1_191:                              # %.lr.ph.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_192 Depth 2
	slli.d	$a6, $a4, 3
	ldx.d	$a6, $a5, $a6
	st.w	$zero, $a3, 0
	move	$a7, $a1
	fmov.s	$fa1, $fa0
	move	$t0, $a0
	.p2align	4, , 16
.LBB1_192:                              #   Parent Loop BB1_191 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa2, $a6, 0
	fld.s	$fa3, $t0, 0
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	fst.s	$fa1, $a3, 0
	addi.d	$t0, $t0, 4
	addi.w	$a7, $a7, -1
	addi.d	$a6, $a6, 4
	bnez	$a7, .LBB1_192
# %bb.193:                              # %._crit_edge.us.i
                                        #   in Loop: Header=BB1_191 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, 4
	bne	$a4, $a2, .LBB1_191
# %bb.194:                              # %matvec.exit420
	ori	$a0, $zero, 7
	blt	$a0, $s3, .LBB1_196
# %bb.195:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(matdump)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a2, $a1, %pc_lo12(.L.str.19)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fvecdump)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	pcalau12i	$a1, %pc_hi20(.L.str.20)
	addi.d	$a2, $a1, %pc_lo12(.L.str.20)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fvecdump)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a2, $a1, %pc_lo12(.L.str.21)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fvecdump)
	jirl	$ra, $ra, 0
.LBB1_196:                              # %.critedge
	move	$a0, $zero
	b	.LBB1_169
.LBB1_197:                              # %matvec.exit
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	b	.LBB1_168
.LBB1_198:                              # %vector.memcheck
	bstrpick.d	$a5, $t0, 31, 0
	slli.d	$a5, $a5, 2
	addi.d	$a6, $a5, 4
	add.d	$a5, $a4, $a6
	add.d	$a6, $t2, $a6
	sltu	$a6, $a4, $a6
	sltu	$t1, $t2, $a5
	and	$a6, $a6, $t1
	move	$t1, $zero
	bnez	$a6, .LBB1_186
# %bb.199:                              # %vector.memcheck
	sltu	$a6, $a4, $a7
	sltu	$a5, $a0, $a5
	and	$a5, $a6, $a5
	bnez	$a5, .LBB1_186
# %bb.200:                              # %vector.ph744
	bstrpick.d	$a5, $a2, 30, 3
	slli.d	$t1, $a5, 3
	slli.d	$a6, $a5, 5
	add.d	$a5, $t2, $a6
	vldrepl.w	$vr0, $a0, 0
	add.d	$a6, $a4, $a6
	addi.d	$t3, $a4, 16
	addi.d	$t2, $t2, 16
	move	$t4, $t1
	.p2align	4, , 16
.LBB1_201:                              # %vector.body748
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $t2, -16
	vld	$vr2, $t2, 0
	vfmul.s	$vr1, $vr1, $vr0
	vfmul.s	$vr2, $vr2, $vr0
	vst	$vr1, $t3, -16
	vst	$vr2, $t3, 0
	addi.d	$t3, $t3, 32
	addi.d	$t4, $t4, -8
	addi.d	$t2, $t2, 32
	bnez	$t4, .LBB1_201
# %bb.202:                              # %middle.block759
	bne	$t1, $a2, .LBB1_187
	b	.LBB1_189
.LBB1_203:                              # %.lr.ph71.us.preheader.i
	bstrpick.d	$t0, $t0, 31, 0
	slli.d	$t0, $t0, 2
	addi.d	$t0, $t0, 4
	add.d	$t1, $a4, $t0
	alsl.d	$t2, $a1, $a0, 2
	sltu	$t2, $a4, $t2
	sltu	$a7, $a7, $t1
	and	$a7, $t2, $a7
	bstrpick.d	$t3, $a3, 30, 3
	slli.d	$t2, $t3, 3
	slli.d	$t3, $t3, 5
	add.d	$t4, $a4, $t3
	addi.d	$t5, $a4, 16
	ori	$t6, $zero, 8
	b	.LBB1_205
	.p2align	4, , 16
.LBB1_204:                              # %._crit_edge.us74.i
                                        #   in Loop: Header=BB1_205 Depth=1
	addi.d	$a6, $a6, 1
	beq	$a6, $a1, .LBB1_190
.LBB1_205:                              # %.lr.ph71.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_211 Depth 2
                                        #     Child Loop BB1_209 Depth 2
	slli.d	$t7, $a6, 3
	ldx.d	$s4, $a5, $t7
	alsl.d	$t7, $a6, $a0, 2
	bltu	$a3, $t6, .LBB1_207
# %bb.206:                              # %vector.memcheck764
                                        #   in Loop: Header=BB1_205 Depth=1
	add.d	$t8, $s4, $t0
	sltu	$t8, $a4, $t8
	sltu	$fp, $s4, $t1
	and	$t8, $t8, $fp
	or	$t8, $t8, $a7
	beqz	$t8, .LBB1_210
.LBB1_207:                              #   in Loop: Header=BB1_205 Depth=1
	move	$fp, $zero
	move	$t8, $s4
	move	$s4, $a4
.LBB1_208:                              # %scalar.ph776.preheader
                                        #   in Loop: Header=BB1_205 Depth=1
	sub.d	$fp, $a3, $fp
	.p2align	4, , 16
.LBB1_209:                              # %scalar.ph776
                                        #   Parent Loop BB1_205 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $t8, 0
	fld.s	$fa1, $t7, 0
	fld.s	$fa2, $s4, 0
	fmadd.s	$fa0, $fa0, $fa1, $fa2
	fst.s	$fa0, $s4, 0
	addi.d	$s4, $s4, 4
	addi.w	$fp, $fp, -1
	addi.d	$t8, $t8, 4
	bnez	$fp, .LBB1_209
	b	.LBB1_204
.LBB1_210:                              # %vector.ph778
                                        #   in Loop: Header=BB1_205 Depth=1
	vldrepl.w	$vr0, $t7, 0
	add.d	$t8, $s4, $t3
	addi.d	$fp, $s4, 16
	move	$s0, $t2
	move	$s4, $t5
	.p2align	4, , 16
.LBB1_211:                              # %vector.body782
                                        #   Parent Loop BB1_205 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $fp, -16
	vld	$vr2, $fp, 0
	vld	$vr3, $s4, -16
	vld	$vr4, $s4, 0
	vfmadd.s	$vr1, $vr1, $vr0, $vr3
	vfmadd.s	$vr2, $vr2, $vr0, $vr4
	vst	$vr1, $s4, -16
	vst	$vr2, $s4, 0
	addi.d	$s4, $s4, 32
	addi.d	$s0, $s0, -8
	addi.d	$fp, $fp, 32
	bnez	$s0, .LBB1_211
# %bb.212:                              # %middle.block795
                                        #   in Loop: Header=BB1_205 Depth=1
	move	$s4, $t4
	move	$fp, $t2
	beq	$t2, $a3, .LBB1_204
	b	.LBB1_208
.Lfunc_end1:
	.size	matgen, .Lfunc_end1-matgen
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_49-.LJTI1_0
	.word	.LBB1_49-.LJTI1_0
	.word	.LBB1_29-.LJTI1_0
	.word	.LBB1_29-.LJTI1_0
	.word	.LBB1_29-.LJTI1_0
	.word	.LBB1_152-.LJTI1_0
	.word	.LBB1_96-.LJTI1_0
	.word	.LBB1_133-.LJTI1_0
	.word	.LBB1_58-.LJTI1_0
	.word	.LBB1_77-.LJTI1_0
	.word	.LBB1_114-.LJTI1_0
                                        # -- End function
	.text
	.globl	get_space                       # -- Begin function get_space
	.p2align	5
	.type	get_space,@function
get_space:                              # @get_space
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$s3, $a0
	ld.w	$a0, $a0, 4
	move	$s1, $a4
	move	$fp, $a3
	move	$s0, $a2
	move	$s2, $a1
	blez	$a0, .LBB2_4
# %bb.1:                                # %.lr.ph
	ori	$s5, $zero, 8
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$s4, $a0, %pc_lo12(.Lstr.5)
	move	$s6, $zero
	.p2align	4, , 16
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s3, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s3, $s5
	beqz	$a0, .LBB2_9
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	ld.w	$a0, $s3, 4
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 8
	blt	$s6, $a0, .LBB2_2
.LBB2_4:                                # %._crit_edge
	ld.w	$a0, $s3, 0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 0
	st.d	$a0, $s2, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 0
	st.d	$a0, $s0, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 0
	st.d	$a0, $fp, 0
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	st.d	$a0, $s1, 0
	pcalau12i	$a2, %pc_hi20(.Lstr.4)
	addi.d	$s4, $a2, %pc_lo12(.Lstr.4)
	beqz	$a1, .LBB2_9
# %bb.5:
	ld.d	$a1, $s0, 0
	beqz	$a1, .LBB2_9
# %bb.6:
	ld.d	$a1, $fp, 0
	beqz	$a1, .LBB2_9
# %bb.7:
	beqz	$a0, .LBB2_9
# %bb.8:
	move	$a0, $zero
	b	.LBB2_10
.LBB2_9:                                # %.sink.split
	move	$a0, $s4
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
.LBB2_10:
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end2:
	.size	get_space, .Lfunc_end2-get_space
                                        # -- End function
	.globl	matvec                          # -- Begin function matvec
	.p2align	5
	.type	matvec,@function
matvec:                                 # @matvec
# %bb.0:
	move	$a4, $a0
	ld.w	$a5, $a0, 0
	ori	$a0, $zero, 1
	blez	$a5, .LBB3_14
# %bb.1:
	ld.w	$a6, $a4, 4
	blez	$a6, .LBB3_14
# %bb.2:
	addi.d	$sp, $sp, -32
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	addi.d	$a0, $a4, 8
	beqz	$a3, .LBB3_7
# %bb.3:                                # %.lr.ph.us.preheader
	move	$a3, $zero
	movgr2fr.w	$fa0, $zero
	.p2align	4, , 16
.LBB3_4:                                # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a0, $a4
	st.w	$zero, $a2, 0
	move	$a7, $a5
	fmov.s	$fa1, $fa0
	move	$t0, $a1
	.p2align	4, , 16
.LBB3_5:                                #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa2, $a4, 0
	fld.s	$fa3, $t0, 0
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	fst.s	$fa1, $a2, 0
	addi.d	$t0, $t0, 4
	addi.w	$a7, $a7, -1
	addi.d	$a4, $a4, 4
	bnez	$a7, .LBB3_5
# %bb.6:                                # %._crit_edge.us
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 4
	bne	$a3, $a6, .LBB3_4
	b	.LBB3_13
.LBB3_7:                                # %.lr.ph.preheader
	ld.d	$t0, $a0, 0
	ori	$a3, $zero, 12
	bgeu	$a6, $a3, .LBB3_15
# %bb.8:
	move	$a7, $zero
.LBB3_9:
	move	$a3, $t0
	move	$a4, $a2
.LBB3_10:                               # %.lr.ph.preheader135
	sub.d	$a7, $a6, $a7
	.p2align	4, , 16
.LBB3_11:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a1, 0
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a4, 0
	addi.d	$a4, $a4, 4
	addi.w	$a7, $a7, -1
	addi.d	$a3, $a3, 4
	bnez	$a7, .LBB3_11
.LBB3_12:                               # %.preheader
	ori	$a3, $zero, 1
	bne	$a5, $a3, .LBB3_20
.LBB3_13:
	move	$a0, $zero
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB3_14:                               # %.loopexit
	ret
.LBB3_15:                               # %vector.memcheck
	addi.d	$a3, $a6, -1
	bstrpick.d	$a3, $a3, 31, 0
	slli.d	$a3, $a3, 2
	addi.d	$a4, $a3, 4
	add.d	$a3, $a2, $a4
	add.d	$a4, $t0, $a4
	sltu	$a4, $a2, $a4
	sltu	$a7, $t0, $a3
	and	$a4, $a4, $a7
	move	$a7, $zero
	bnez	$a4, .LBB3_9
# %bb.16:                               # %vector.memcheck
	addi.d	$a4, $a1, 4
	sltu	$a4, $a2, $a4
	sltu	$a3, $a1, $a3
	and	$a3, $a4, $a3
	bnez	$a3, .LBB3_9
# %bb.17:                               # %vector.ph
	bstrpick.d	$a3, $a6, 30, 3
	slli.d	$a7, $a3, 3
	slli.d	$a4, $a3, 5
	add.d	$a3, $t0, $a4
	vldrepl.w	$vr0, $a1, 0
	add.d	$a4, $a2, $a4
	addi.d	$t1, $a2, 16
	addi.d	$t0, $t0, 16
	move	$t2, $a7
	.p2align	4, , 16
.LBB3_18:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $t0, -16
	vld	$vr2, $t0, 0
	vfmul.s	$vr1, $vr1, $vr0
	vfmul.s	$vr2, $vr2, $vr0
	vst	$vr1, $t1, -16
	vst	$vr2, $t1, 0
	addi.d	$t1, $t1, 32
	addi.d	$t2, $t2, -8
	addi.d	$t0, $t0, 32
	bnez	$t2, .LBB3_18
# %bb.19:                               # %middle.block
	bne	$a7, $a6, .LBB3_10
	b	.LBB3_12
.LBB3_20:                               # %.lr.ph71.us.preheader
	bstrpick.d	$a4, $a6, 31, 0
	addi.d	$a7, $a6, -1
	bstrpick.d	$a7, $a7, 31, 0
	slli.d	$a7, $a7, 2
	addi.d	$a7, $a7, 4
	add.d	$t0, $a2, $a7
	addi.d	$t1, $a1, 4
	alsl.d	$t2, $a5, $a1, 2
	sltu	$t2, $a2, $t2
	sltu	$t1, $t1, $t0
	and	$t1, $t2, $t1
	bstrpick.d	$t3, $a4, 30, 3
	slli.d	$t2, $t3, 3
	slli.d	$t3, $t3, 5
	add.d	$t4, $a2, $t3
	addi.d	$t5, $a2, 16
	ori	$t6, $zero, 8
	b	.LBB3_22
	.p2align	4, , 16
.LBB3_21:                               # %._crit_edge.us74
                                        #   in Loop: Header=BB3_22 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $a5, .LBB3_13
.LBB3_22:                               # %.lr.ph71.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_28 Depth 2
                                        #     Child Loop BB3_26 Depth 2
	slli.d	$t7, $a3, 3
	ldx.d	$fp, $a0, $t7
	alsl.d	$t7, $a3, $a1, 2
	bltu	$a6, $t6, .LBB3_24
# %bb.23:                               # %vector.memcheck100
                                        #   in Loop: Header=BB3_22 Depth=1
	add.d	$t8, $fp, $a7
	sltu	$t8, $a2, $t8
	sltu	$s0, $fp, $t0
	and	$t8, $t8, $s0
	or	$t8, $t8, $t1
	beqz	$t8, .LBB3_27
.LBB3_24:                               #   in Loop: Header=BB3_22 Depth=1
	move	$s0, $zero
	move	$t8, $fp
	move	$fp, $a2
.LBB3_25:                               # %scalar.ph112.preheader
                                        #   in Loop: Header=BB3_22 Depth=1
	sub.d	$s0, $a6, $s0
	.p2align	4, , 16
.LBB3_26:                               # %scalar.ph112
                                        #   Parent Loop BB3_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $t8, 0
	fld.s	$fa1, $t7, 0
	fld.s	$fa2, $fp, 0
	fmadd.s	$fa0, $fa0, $fa1, $fa2
	fst.s	$fa0, $fp, 0
	addi.d	$fp, $fp, 4
	addi.w	$s0, $s0, -1
	addi.d	$t8, $t8, 4
	bnez	$s0, .LBB3_26
	b	.LBB3_21
	.p2align	4, , 16
.LBB3_27:                               # %vector.ph114
                                        #   in Loop: Header=BB3_22 Depth=1
	vldrepl.w	$vr0, $t7, 0
	add.d	$t8, $fp, $t3
	addi.d	$fp, $fp, 16
	move	$s0, $t2
	move	$s1, $t5
	.p2align	4, , 16
.LBB3_28:                               # %vector.body117
                                        #   Parent Loop BB3_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $fp, -16
	vld	$vr2, $fp, 0
	vld	$vr3, $s1, -16
	vld	$vr4, $s1, 0
	vfmadd.s	$vr1, $vr1, $vr0, $vr3
	vfmadd.s	$vr2, $vr2, $vr0, $vr4
	vst	$vr1, $s1, -16
	vst	$vr2, $s1, 0
	addi.d	$s1, $s1, 32
	addi.d	$s0, $s0, -8
	addi.d	$fp, $fp, 32
	bnez	$s0, .LBB3_28
# %bb.29:                               # %middle.block130
                                        #   in Loop: Header=BB3_22 Depth=1
	move	$fp, $t4
	move	$s0, $t2
	beq	$t2, $a4, .LBB3_21
	b	.LBB3_25
.Lfunc_end3:
	.size	matvec, .Lfunc_end3-matvec
                                        # -- End function
	.globl	matdump                         # -- Begin function matdump
	.p2align	5
	.type	matdump,@function
matdump:                                # @matdump
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
	move	$fp, $a0
	ld.w	$s0, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	blez	$a0, .LBB4_23
# %bb.1:                                # %.lr.ph39
	lu12i.w	$a0, 174762
	ori	$a0, $a0, 2731
	mul.d	$a0, $s0, $a0
	srli.d	$a1, $a0, 63
	srli.d	$a0, $a0, 32
	add.d	$a0, $a0, $a1
	addi.d	$a1, $zero, -6
	mul.d	$a1, $a0, $a1
	add.w	$s6, $a1, $s0
	ori	$a1, $zero, 6
	addi.d	$s4, $fp, 8
	blt	$s0, $a1, .LBB4_11
# %bb.2:                                # %.lr.ph39.split.us
	addi.w	$a1, $s0, -6
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $a0, -1
	blez	$s6, .LBB4_16
# %bb.3:                                # %.lr.ph.us.us.preheader.preheader
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s0, $fp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s1, $a0, %pc_lo12(.L.str.27)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$s2, $a0, %pc_lo12(.L.str.26)
	move	$s3, $zero
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	.p2align	4, , 16
.LBB4_4:                                # %.lr.ph.us.us.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_6 Depth 2
                                        #     Child Loop BB4_9 Depth 2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	slli.d	$s8, $s3, 2
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ori	$s7, $zero, 6
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bltu	$a0, $s7, .LBB4_8
# %bb.5:                                # %.peel.next69.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$s6, $s0
	ori	$s7, $zero, 6
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_6:                                # %.peel.next69
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s7, 3
	ldx.d	$a0, $s4, $a0
	fldx.s	$fa0, $a0, $s8
	alsl.d	$s0, $s7, $s4, 3
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 24
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$s7, $s7, 6
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.w	$s5, $s5, -1
	bnez	$s5, .LBB4_6
# %bb.7:                                # %..preheader_crit_edge.us.us.loopexit
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$s0, $s6
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
.LBB4_8:                                # %..preheader_crit_edge.us.us.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	alsl.d	$s5, $s7, $s0, 3
	move	$s7, $s6
	.p2align	4, , 16
.LBB4_9:                                # %..preheader_crit_edge.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s5, 0
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$s7, $s7, -1
	addi.d	$s5, $s5, 8
	bnez	$s7, .LBB4_9
# %bb.10:                               # %._crit_edge.us.us
                                        #   in Loop: Header=BB4_4 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	addi.d	$s3, $s3, 1
	blt	$s3, $a0, .LBB4_4
	b	.LBB4_23
.LBB4_11:                               # %.lr.ph39.split
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$s0, $a0, %pc_lo12(.L.str.25)
	blez	$s6, .LBB4_21
# %bb.12:                               # %.preheader.us41.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s1, $a0, %pc_lo12(.L.str.27)
	move	$s2, $zero
	.p2align	4, , 16
.LBB4_13:                               # %.preheader.us41
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_14 Depth 2
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	slli.d	$s3, $s2, 2
	move	$s5, $s6
	move	$s7, $s4
	.p2align	4, , 16
.LBB4_14:                               #   Parent Loop BB4_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s7, 0
	fldx.s	$fa0, $a0, $s3
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, -1
	addi.d	$s7, $s7, 8
	bnez	$s5, .LBB4_14
# %bb.15:                               # %._crit_edge.us47
                                        #   in Loop: Header=BB4_13 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	addi.d	$s2, $s2, 1
	blt	$s2, $a0, .LBB4_13
	b	.LBB4_23
.LBB4_16:                               # %.lr.ph.us.preheader.preheader
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$s0, $a0, %pc_lo12(.L.str.25)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s1, $a0, %pc_lo12(.L.str.27)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$s2, $a0, %pc_lo12(.L.str.26)
	move	$s3, $zero
	b	.LBB4_18
	.p2align	4, , 16
.LBB4_17:                               # %..preheader_crit_edge.us
                                        #   in Loop: Header=BB4_18 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	addi.d	$s3, $s3, 1
	bge	$s3, $a0, .LBB4_23
.LBB4_18:                               # %.lr.ph.us.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_20 Depth 2
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	slli.d	$s8, $s3, 2
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ori	$a1, $zero, 6
	bltu	$a0, $a1, .LBB4_17
# %bb.19:                               # %.peel.next.preheader
                                        #   in Loop: Header=BB4_18 Depth=1
	ori	$s5, $zero, 6
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_20:                               # %.peel.next
                                        #   Parent Loop BB4_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s5, 3
	ldx.d	$a0, $s4, $a0
	fldx.s	$fa0, $a0, $s8
	alsl.d	$s7, $s5, $s4, 3
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 8
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 16
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 24
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 32
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 40
	fldx.s	$fa0, $a0, $s8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$s5, $s5, 6
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.w	$s6, $s6, -1
	bnez	$s6, .LBB4_20
	b	.LBB4_17
.LBB4_21:                               # %.preheader.preheader
	move	$s1, $zero
	.p2align	4, , 16
.LBB4_22:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	addi.w	$s1, $s1, 1
	blt	$s1, $a0, .LBB4_22
.LBB4_23:                               # %._crit_edge40
	ori	$a0, $zero, 10
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
	pcaddu18i	$t8, %call36(putchar)
	jr	$t8
.Lfunc_end4:
	.size	matdump, .Lfunc_end4-matdump
                                        # -- End function
	.globl	fvecdump                        # -- Begin function fvecdump
	.p2align	5
	.type	fvecdump,@function
fvecdump:                               # @fvecdump
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	lu12i.w	$a0, 174762
	ori	$a0, $a0, 2731
	mul.d	$a0, $a1, $a0
	srli.d	$a1, $a0, 63
	srli.d	$a0, $a0, 32
	add.d	$s4, $a0, $a1
	addi.d	$a0, $zero, -6
	mul.d	$a0, $s4, $a0
	add.w	$s3, $a0, $s0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 6
	blt	$s0, $a0, .LBB5_4
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$s1, $a0, %pc_lo12(.L.str.25)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s2, $a0, %pc_lo12(.L.str.27)
	move	$s0, $zero
	.p2align	4, , 16
.LBB5_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 4
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 12
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 16
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 20
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 24
	addi.w	$s0, $s0, 6
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -1
	bnez	$s4, .LBB5_2
# %bb.3:                                # %._crit_edge
	bnez	$s3, .LBB5_5
	b	.LBB5_9
.LBB5_4:
	move	$s0, $zero
	beqz	$s3, .LBB5_9
.LBB5_5:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	blez	$s3, .LBB5_8
# %bb.6:                                # %.lr.ph37.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s0, $a0, %pc_lo12(.L.str.27)
	.p2align	4, , 16
.LBB5_7:                                # %.lr.ph37
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $fp, 0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, -1
	addi.d	$fp, $fp, 4
	bnez	$s3, .LBB5_7
.LBB5_8:                                # %._crit_edge38
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
.LBB5_9:
	ori	$a0, $zero, 10
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(putchar)
	jr	$t8
.Lfunc_end5:
	.size	fvecdump, .Lfunc_end5-fvecdump
                                        # -- End function
	.globl	ivecdump                        # -- Begin function ivecdump
	.p2align	5
	.type	ivecdump,@function
ivecdump:                               # @ivecdump
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	lu12i.w	$a0, 233016
	ori	$a0, $a0, 3641
	mul.d	$a0, $a1, $a0
	srli.d	$a1, $a0, 63
	srai.d	$a0, $a0, 33
	add.d	$s4, $a0, $a1
	addi.d	$a0, $zero, -6
	mul.d	$a0, $s4, $a0
	add.w	$s3, $a0, $s0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 9
	blt	$s0, $a0, .LBB6_4
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$s1, $a0, %pc_lo12(.L.str.25)
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$s2, $a0, %pc_lo12(.L.str.29)
	move	$s0, $zero
	.p2align	4, , 16
.LBB6_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 4
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 20
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 24
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 28
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 36
	addi.w	$s0, $s0, 9
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -1
	bnez	$s4, .LBB6_2
# %bb.3:                                # %._crit_edge
	bnez	$s3, .LBB6_5
	b	.LBB6_9
.LBB6_4:
	move	$s0, $zero
	beqz	$s3, .LBB6_9
.LBB6_5:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	blez	$s3, .LBB6_8
# %bb.6:                                # %.lr.ph37.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$s0, $a0, %pc_lo12(.L.str.29)
	.p2align	4, , 16
.LBB6_7:                                # %.lr.ph37
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, -1
	addi.d	$fp, $fp, 4
	bnez	$s3, .LBB6_7
.LBB6_8:                                # %._crit_edge38
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
.LBB6_9:
	ori	$a0, $zero, 10
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(putchar)
	jr	$t8
.Lfunc_end6:
	.size	ivecdump, .Lfunc_end6-ivecdump
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Matrix row dim (%d) or column dim (%d) too big.\n"
	.size	.L.str, 49

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"One-Norm(A) ---------- %E.\n"
	.size	.L.str.1, 28

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"FACTORED MATRIX FOLLOWS"
	.size	.L.str.2, 24

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"True Solution"
	.size	.L.str.3, 14

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Solution"
	.size	.L.str.4, 9

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Solution to transposed system"
	.size	.L.str.5, 30

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Hilbert Slice.  Test case %d of size %d.\n"
	.size	.L.str.7, 42

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Monoelemental.  Test case %d of size %d.\n"
	.size	.L.str.8, 42

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Tridiagional.  Test case %d of size %d.\n"
	.size	.L.str.9, 41

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Rank One.  Test case %d of size %d.\n"
	.size	.L.str.10, 37

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Zero Column.  Test case %d of size %d.\n"
	.size	.L.str.11, 40

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Upper Triangular.  Test case %d of size %d.\n"
	.size	.L.str.12, 45

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Lower Triangular.  Test case %d of size %d.\n"
	.size	.L.str.13, 45

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Near Overflow.  Test case %d of size %d. BIG = %e\n"
	.size	.L.str.14, 51

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Near Underflow.  Test case %d of size %d. SMALL = %e\n"
	.size	.L.str.15, 54

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"MATRIX FOLLOWS"
	.size	.L.str.18, 15

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"SOLUTION"
	.size	.L.str.19, 9

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"RIGHT HAND SIDE"
	.size	.L.str.20, 16

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"TRANSPOSE RIGHT HAND SIDE"
	.size	.L.str.21, 26

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"%3d|"
	.size	.L.str.25, 5

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"    "
	.size	.L.str.26, 5

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"%12.4e"
	.size	.L.str.27, 7

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"%8d"
	.size	.L.str.29, 4

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"\n\n**********************************************************************"
	.size	.Lstr, 73

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"MATGEN: Error in matvec."
	.size	.Lstr.2, 25

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"MATGEN: All tests complete."
	.size	.Lstr.3, 28

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"GET_SPACE: Can't get enouph space for vectors..."
	.size	.Lstr.4, 49

	.type	.Lstr.5,@object                 # @str.5
.Lstr.5:
	.asciz	"GET_SPACE: Can't get enouph space for matricies..."
	.size	.Lstr.5, 51

	.section	".note.GNU-stack","",@progbits
	.addrsig
