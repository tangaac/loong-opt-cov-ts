	.file	"wireratio.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function wireratio
.LCPI0_0:
	.dword	0x3f847ae147ae147b              # double 0.01
.LCPI0_1:
	.dword	0x400a666666666666              # double 3.2999999999999998
	.text
	.globl	wireratio
	.p2align	5
	.type	wireratio,@function
wireratio:                              # @wireratio
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 16                   # 8-byte Folded Spill
	fmov.d	$fs2, $fa2
	fmov.d	$fs1, $fa1
	fmov.d	$fs0, $fa0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	pcalau12i	$a1, %pc_hi20(N)
	fst.d	$fa0, $a1, %pc_lo12(N)
	vldi	$vr0, -912
	fcmp.cle.d	$fcc0, $fa0, $fs0
	fsel	$fa1, $fa0, $fs0, $fcc0
	ori	$a1, $zero, 2
	slt	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	addi.d	$fp, $a0, -1
	fcmp.cle.d	$fcc0, $fa0, $fa2
	fsel	$fa0, $fa0, $fa2, $fcc0
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$s0, $fa2
	ftintrz.w.d	$fa2, $fa0
	movfr2gr.s	$s1, $fa2
	movgr2fr.w	$fa2, $s0
	ffint.d.w	$fa2, $fa2
	fsub.d	$fs4, $fa1, $fa2
	movgr2fr.w	$fa1, $s1
	ffint.d.w	$fa1, $fa1
	fsub.d	$fs5, $fa0, $fa1
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(getptree)
	jirl	$ra, $ra, 0
	fmov.d	$fs3, $fa0
	addi.w	$s2, $s0, 1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(getptree)
	jirl	$ra, $ra, 0
	fsub.d	$fa0, $fa0, $fs3
	fmadd.d	$fs6, $fs4, $fa0, $fs3
	addi.w	$s1, $s1, 1
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(getptree)
	jirl	$ra, $ra, 0
	fmov.d	$fs3, $fa0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(getptree)
	jirl	$ra, $ra, 0
	fsub.d	$fa0, $fa0, $fs3
	fmadd.d	$fa0, $fs4, $fa0, $fs3
	fsub.d	$fa0, $fa0, $fs6
	fmadd.d	$fa0, $fs5, $fa0, $fs6
	pcalau12i	$fp, %pc_hi20(CC)
	fst.d	$fa0, $fp, %pc_lo12(CC)
	pcalau12i	$s0, %pc_hi20(bb)
	ori	$a0, $zero, 0
	lu32i.d	$a0, -458752
	lu52i.d	$a0, $a0, 1029
	st.d	$a0, $s0, %pc_lo12(bb)
	pcalau12i	$s1, %pc_hi20(a)
	lu12i.w	$a0, 293601
	ori	$a0, $a0, 1147
	lu32i.d	$a0, 293601
	lu52i.d	$a0, $a0, 1016
	st.d	$a0, $s1, %pc_lo12(a)
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(findratio)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 0
	fld.d	$fa1, $sp, 8
	vldi	$vr2, -892
	fadd.d	$fa2, $fs1, $fa2
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa3, $a0, %pc_lo12(.LCPI0_0)
	vldi	$vr4, -1020
	fadd.d	$fa4, $fa2, $fa4
	vldi	$vr5, -908
	fmadd.d	$fa4, $fa4, $fa5, $fa3
	movgr2fr.d	$fa5, $zero
	fcmp.clt.d	$fcc0, $fa5, $fa2
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_1)
	fsel	$fa3, $fa3, $fa4, $fcc0
	fst.d	$fa3, $s1, %pc_lo12(a)
	fsub.d	$fs3, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fs0
	vldi	$vr0, -988
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $s0, %pc_lo12(bb)
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(findratio)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$s0, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 77
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	movfr2gr.d	$a2, $fs2
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	movfr2gr.d	$a2, $fs1
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	movfr2gr.d	$a2, $fs0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $fp, %pc_lo12(CC)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 74
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 0
	fsub.d	$fa0, $fa0, $fs3
	fld.d	$fs6, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end0:
	.size	wireratio, .Lfunc_end0-wireratio
                                        # -- End function
	.globl	probtree                        # -- Begin function probtree
	.p2align	5
	.type	probtree,@function
probtree:                               # @probtree
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a0
	ftintrz.w.d	$fa2, $fa0
	movfr2gr.s	$s0, $fa2
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$s1, $fa2
	movgr2fr.w	$fa2, $s0
	ffint.d.w	$fa2, $fa2
	fsub.d	$fs1, $fa0, $fa2
	movgr2fr.w	$fa0, $s1
	ffint.d.w	$fa0, $fa0
	fsub.d	$fs2, $fa1, $fa0
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(getptree)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	addi.w	$s2, $s0, 1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(getptree)
	jirl	$ra, $ra, 0
	fsub.d	$fa0, $fa0, $fs0
	fmadd.d	$fs3, $fs1, $fa0, $fs0
	addi.w	$s1, $s1, 1
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(getptree)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(getptree)
	jirl	$ra, $ra, 0
	fsub.d	$fa0, $fa0, $fs0
	fmadd.d	$fa0, $fs1, $fa0, $fs0
	fsub.d	$fa0, $fa0, $fs3
	fmadd.d	$fa0, $fs2, $fa0, $fs3
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end1:
	.size	probtree, .Lfunc_end1-probtree
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function findratio
.LCPI2_0:
	.dword	0x412e848000000000              # double 1.0E+6
.LCPI2_1:
	.dword	0x4059000000000000              # double 100
.LCPI2_2:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
.LCPI2_3:
	.dword	0xbf847ae147ae147b              # double -0.01
.LCPI2_4:
	.dword	0x4040000000000000              # double 32
.LCPI2_5:
	.dword	0xc042000000000000              # double -36
.LCPI2_6:
	.dword	0x3fd999999999999a              # double 0.40000000000000002
.LCPI2_7:
	.dword	0x4044000000000000              # double 40
.LCPI2_8:
	.dword	0xc04e000000000000              # double -60
.LCPI2_9:
	.dword	0x404e000000000000              # double 60
.LCPI2_10:
	.dword	0xc056800000000000              # double -90
.LCPI2_11:
	.dword	0x3fe5555555555555              # double 0.66666666666666663
.LCPI2_12:
	.dword	0x3fc5555555555555              # double 0.16666666666666666
.LCPI2_14:
	.dword	0x3ff5555555555555              # double 1.3333333333333333
.LCPI2_15:
	.dword	0xbfe5555555555555              # double -0.66666666666666663
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_13:
	.dword	0                               # 0x0
	.dword	3                               # 0x3
.LCPI2_16:
	.dword	0xc000000000000000              # double -2
	.dword	0xc010000000000000              # double -4
.LCPI2_17:
	.dword	0xc010000000000000              # double -4
	.dword	0x4000000000000000              # double 2
.LCPI2_18:
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.text
	.globl	findratio
	.p2align	5
	.type	findratio,@function
findratio:                              # @findratio
# %bb.0:
	addi.d	$sp, $sp, -1216
	st.d	$ra, $sp, 1208                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1200                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1192                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1184                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1176                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1168                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1160                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1152                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1144                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1136                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1128                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1120                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1112                 # 8-byte Folded Spill
	fst.d	$fs7, $sp, 1104                 # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(N)
	fld.d	$fs0, $s0, %pc_lo12(N)
	fsqrt.d	$fa0, $fs0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	move	$fp, $a1
	bceqz	$fcc0, .LBB2_41
.LBB2_1:                                # %.split571
	move	$a2, $zero
	pcalau12i	$s1, %pc_hi20(rootN)
	fst.d	$fa0, $s1, %pc_lo12(rootN)
	vldi	$vr1, -784
	fadd.d	$ft12, $fa0, $fa1
	vldi	$vr2, -1000
	fmul.d	$fa3, $fs0, $fa2
	vldi	$vr2, -1024
	vldi	$vr4, -864
	fmadd.d	$fa5, $fa0, $fa4, $fa2
	vldi	$vr2, -856
	fmul.d	$fa2, $fa0, $fa2
	vldi	$vr4, -984
	fmadd.d	$fa2, $fs0, $fa4, $fa2
	fadd.d	$fa6, $fa2, $fa1
	vldi	$vr1, -880
	fmul.d	$fa1, $fa0, $fa1
	fmadd.d	$fa1, $fs0, $fa4, $fa1
	vldi	$vr2, -896
	fadd.d	$fa7, $fa1, $fa2
	pcalau12i	$a1, %pc_hi20(CC)
	fld.d	$fa1, $a1, %pc_lo12(CC)
	pcalau12i	$a3, %pc_hi20(.LCPI2_0)
	fld.d	$fa4, $a3, %pc_lo12(.LCPI2_0)
	pcalau12i	$a1, %pc_hi20(.LCPI2_2)
	fld.d	$ft0, $a1, %pc_lo12(.LCPI2_2)
	pcalau12i	$a1, %pc_hi20(.LCPI2_1)
	fld.d	$fa2, $a1, %pc_lo12(.LCPI2_1)
	movgr2fr.d	$fs1, $zero
	ori	$a6, $zero, 100
	lu12i.w	$a5, 244
	ori	$a7, $a5, 576
                                        # implicit-def: $r5
.LBB2_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
                                        #     Child Loop BB2_10 Depth 2
	bstrpick.d	$a4, $a2, 31, 0
	movgr2fr.d	$ft1, $a4
	ffint.d.l	$ft1, $ft1
	beqz	$a2, .LBB2_8
# %bb.3:                                # %.split.us.preheader
                                        #   in Loop: Header=BB2_2 Depth=1
	move	$a4, $zero
	addi.w	$t0, $a1, 0
	.p2align	4, , 16
.LBB2_4:                                # %.split.us
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t1, $a4, 31, 0
	movgr2fr.d	$ft2, $t1
	ffint.d.l	$ft2, $ft2
	fdiv.d	$ft2, $ft2, $fa2
	fadd.d	$ft11, $ft2, $ft1
	fcmp.clt.d	$fcc0, $ft12, $ft11
	bcnez	$fcc0, .LBB2_15
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=2
	fdiv.d	$ft2, $ft11, $fa3
	fmul.d	$ft3, $ft11, $ft11
	fmul.d	$ft4, $fa5, $ft3
	fmadd.d	$ft3, $ft3, $ft11, $ft4
	fmadd.d	$ft3, $fa6, $ft11, $ft3
	fadd.d	$ft3, $fa7, $ft3
	fmul.d	$ft2, $ft2, $ft3
	fcmp.cule.d	$fcc0, $ft2, $fa1
	movcf2gr	$t1, $fcc0
	sub.d	$t1, $zero, $t1
	ori	$t1, $t1, 1
	bne	$t1, $t0, .LBB2_18
# %bb.6:                                #   in Loop: Header=BB2_4 Depth=2
	fsub.d	$fa4, $ft2, $fa1
	fneg.d	$ft2, $fa4
	fcmp.cult.d	$fcc0, $fa4, $fs1
	addi.w	$a4, $a4, 1
	fsel	$fa4, $fa4, $ft2, $fcc0
	bne	$a4, $a6, .LBB2_4
# %bb.7:                                # %.loopexit228.loopexit405
                                        #   in Loop: Header=BB2_2 Depth=1
	addi.w	$a2, $a2, 1
	blt	$a2, $a7, .LBB2_2
	b	.LBB2_14
	.p2align	4, , 16
.LBB2_8:                                # %.split.peel
                                        #   in Loop: Header=BB2_2 Depth=1
	fadd.d	$ft11, $ft1, $ft0
	fcmp.clt.d	$fcc0, $ft12, $ft11
	ori	$t0, $zero, 1
	bcnez	$fcc0, .LBB2_40
# %bb.9:                                # %.split.peel.next
                                        #   in Loop: Header=BB2_2 Depth=1
	fdiv.d	$ft2, $ft11, $fa3
	fmul.d	$ft3, $ft11, $ft11
	fmul.d	$ft4, $fa5, $ft3
	fmadd.d	$ft3, $ft3, $ft11, $ft4
	fmadd.d	$ft3, $fa6, $ft11, $ft3
	fadd.d	$ft3, $fa7, $ft3
	fmul.d	$ft2, $ft2, $ft3
	fcmp.cule.d	$fcc0, $ft2, $fa1
	movcf2gr	$a1, $fcc0
	sub.d	$a1, $zero, $a1
	ori	$t1, $a1, 1
	ori	$a4, $zero, 11
	.p2align	4, , 16
.LBB2_10:                               # %.split
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a1, $a4, 31, 0
	movgr2fr.d	$ft2, $a1
	ffint.d.l	$ft2, $ft2
	fdiv.d	$ft2, $ft2, $fa2
	fadd.d	$ft11, $ft2, $ft1
	fcmp.clt.d	$fcc0, $ft12, $ft11
	bcnez	$fcc0, .LBB2_16
# %bb.11:                               #   in Loop: Header=BB2_10 Depth=2
	fdiv.d	$ft2, $ft11, $fa3
	fmul.d	$ft3, $ft11, $ft11
	fmul.d	$ft4, $fa5, $ft3
	fmadd.d	$ft3, $ft3, $ft11, $ft4
	fmadd.d	$ft3, $fa6, $ft11, $ft3
	fadd.d	$ft3, $fa7, $ft3
	fmul.d	$ft2, $ft2, $ft3
	fcmp.cule.d	$fcc0, $ft2, $fa1
	movcf2gr	$a1, $fcc0
	sub.d	$a1, $zero, $a1
	ori	$a1, $a1, 1
	addi.w	$a2, $t1, 0
	bne	$a1, $a2, .LBB2_17
# %bb.12:                               #   in Loop: Header=BB2_10 Depth=2
	fsub.d	$fa4, $ft2, $fa1
	fneg.d	$ft2, $fa4
	fcmp.cult.d	$fcc0, $fa4, $fs1
	addi.w	$a4, $a4, 1
	fsel	$fa4, $fa4, $ft2, $fcc0
	move	$t1, $a1
	bne	$a4, $a6, .LBB2_10
# %bb.13:                               #   in Loop: Header=BB2_2 Depth=1
	ori	$a2, $zero, 1
	blt	$a2, $a7, .LBB2_2
.LBB2_14:
	move	$t0, $zero
                                        # implicit-def: $r8
                                        # implicit-def: $r6
	bnez	$t0, .LBB2_19
	b	.LBB2_32
.LBB2_15:
	ori	$t0, $zero, 1
	bnez	$t0, .LBB2_19
	b	.LBB2_32
.LBB2_16:
	move	$a2, $zero
	move	$a1, $t1
	bnez	$t0, .LBB2_19
	b	.LBB2_32
.LBB2_17:
	move	$a1, $t1
.LBB2_18:                               # %.split255.us
	move	$t0, $zero
	fsub.d	$fa5, $ft2, $fa1
	pcalau12i	$a2, %pc_hi20(.LCPI2_3)
	fld.d	$fa6, $a2, %pc_lo12(.LCPI2_3)
	fneg.d	$fa7, $fa5
	fcmp.cult.d	$fcc0, $fa5, $fs1
	fsel	$fa5, $fa5, $fa7, $fcc0
	fadd.d	$fa6, $ft11, $fa6
	fcmp.cult.d	$fcc0, $fa5, $fa4
	fsel	$ft11, $fa6, $ft11, $fcc0
                                        # implicit-def: $r8
                                        # implicit-def: $r6
	beqz	$t0, .LBB2_32
.LBB2_19:                               # %.loopexit228.thread
	addi.w	$a6, $a2, 0
	ori	$a5, $a5, 575
	blt	$a5, $a6, .LBB2_32
# %bb.20:                               # %.lr.ph291
	frecip.d	$fa3, $fa3
	vldi	$vr4, -896
	vldi	$vr5, -992
	fmadd.d	$fa4, $fa0, $fa5, $fa4
	vldi	$vr5, -840
	fmul.d	$fa6, $fs0, $fa5
	vldi	$vr5, -984
	pcalau12i	$a7, %pc_hi20(.LCPI2_4)
	fld.d	$fa7, $a7, %pc_lo12(.LCPI2_4)
	fmadd.d	$fa5, $fa0, $fa5, $fa6
	vldi	$vr8, -912
	fadd.d	$fa5, $fa5, $ft0
	fmul.d	$ft4, $fs0, $fa7
	fmadd.d	$fa6, $ft4, $fa0, $fa6
	vldi	$vr11, -880
	fmadd.d	$fa7, $fa0, $ft3, $fa6
	vldi	$vr6, -1024
	fadd.d	$fa7, $fa7, $fa6
	fmul.d	$ft0, $ft12, $ft12
	fmul.d	$ft1, $ft12, $ft0
	pcalau12i	$a7, %pc_hi20(.LCPI2_5)
	fld.d	$ft5, $a7, %pc_lo12(.LCPI2_5)
	fmul.d	$ft2, $ft12, $ft1
	vldi	$vr14, -976
	fnmadd.d	$ft3, $fa0, $ft6, $ft3
	fmul.d	$ft6, $fs0, $ft5
	vldi	$vr13, -968
	fmadd.d	$ft5, $fa0, $ft5, $ft6
	fadd.d	$ft5, $ft5, $fa6
	fneg.d	$ft5, $ft5
	fmadd.d	$ft4, $ft4, $fa0, $ft6
	vldi	$vr14, -1008
	fadd.d	$ft6, $ft4, $ft6
	fld.d	$ft4, $a3, %pc_lo12(.LCPI2_0)
	fneg.d	$ft6, $ft6
	ori	$a3, $zero, 99
	addi.w	$a7, $a4, 0
.LBB2_21:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_23 Depth 2
                                        #     Child Loop BB2_28 Depth 2
	addi.w	$t0, $a2, 0
	slt	$t1, $a6, $t0
	masknez	$t1, $a4, $t1
	addi.w	$t1, $t1, 0
	blt	$a3, $t1, .LBB2_25
# %bb.22:                               # %.lr.ph
                                        #   in Loop: Header=BB2_21 Depth=1
	movgr2fr.w	$ft7, $a2
	ffint.d.w	$ft7, $ft7
	beq	$t0, $a6, .LBB2_28
	.p2align	4, , 16
.LBB2_23:                               # %.lr.ph.split.us
                                        #   Parent Loop BB2_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movgr2fr.w	$ft8, $t1
	ffint.d.w	$ft8, $ft8
	fdiv.d	$ft8, $ft8, $fa2
	fadd.d	$ft11, $ft8, $ft7
	fmul.d	$ft8, $ft11, $ft11
	fmul.d	$ft9, $ft11, $ft8
	fmul.d	$ft10, $fa4, $ft9
	fneg.d	$ft9, $ft9
	fmadd.d	$ft9, $ft9, $ft11, $ft10
	fmadd.d	$ft8, $fa5, $ft8, $ft9
	fmadd.d	$ft8, $fa7, $ft11, $ft8
	fmadd.d	$ft8, $ft2, $fa6, $ft8
	fmadd.d	$ft8, $ft3, $ft1, $ft8
	fmadd.d	$ft8, $ft5, $ft0, $ft8
	fmadd.d	$ft8, $ft6, $ft12, $ft8
	fmul.d	$ft8, $fa3, $ft8
	fcmp.cule.d	$fcc0, $ft8, $fa1
	movcf2gr	$a4, $fcc0
	sub.d	$a4, $zero, $a4
	ori	$a4, $a4, 1
	addi.w	$t2, $a1, 0
	bne	$a4, $t2, .LBB2_31
# %bb.24:                               # %select.unfold.us
                                        #   in Loop: Header=BB2_23 Depth=2
	fsub.d	$ft4, $ft8, $fa1
	fneg.d	$ft8, $ft4
	fcmp.cult.d	$fcc0, $ft4, $fs1
	addi.w	$t1, $t1, 1
	ori	$a4, $zero, 100
	fsel	$ft4, $ft4, $ft8, $fcc0
	bne	$t1, $a4, .LBB2_23
	.p2align	4, , 16
.LBB2_25:                               #   in Loop: Header=BB2_21 Depth=1
	move	$t2, $a1
.LBB2_26:                               # %.loopexit
                                        #   in Loop: Header=BB2_21 Depth=1
	addi.w	$a2, $a2, 1
	move	$a1, $t2
	blt	$t0, $a5, .LBB2_21
	b	.LBB2_32
	.p2align	4, , 16
.LBB2_27:                               # %select.unfold
                                        #   in Loop: Header=BB2_28 Depth=2
	addi.w	$t1, $t1, 1
	ori	$a4, $zero, 100
	move	$a1, $t2
	beq	$t1, $a4, .LBB2_26
.LBB2_28:                               # %.lr.ph.split
                                        #   Parent Loop BB2_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movgr2fr.w	$ft8, $t1
	ffint.d.w	$ft8, $ft8
	fdiv.d	$ft8, $ft8, $fa2
	fadd.d	$ft11, $ft8, $ft7
	fmul.d	$ft8, $ft11, $ft11
	fmul.d	$ft9, $ft11, $ft8
	fmul.d	$ft10, $fa4, $ft9
	fneg.d	$ft9, $ft9
	fmadd.d	$ft9, $ft9, $ft11, $ft10
	fmadd.d	$ft8, $fa5, $ft8, $ft9
	fmadd.d	$ft8, $fa7, $ft11, $ft8
	fmadd.d	$ft8, $ft2, $fa6, $ft8
	fmadd.d	$ft8, $ft3, $ft1, $ft8
	fmadd.d	$ft8, $ft5, $ft0, $ft8
	fmadd.d	$ft8, $ft6, $ft12, $ft8
	fmul.d	$ft8, $fa3, $ft8
	fcmp.cule.d	$fcc0, $ft8, $fa1
	movcf2gr	$a4, $fcc0
	sub.d	$a4, $zero, $a4
	ori	$t2, $a4, 1
	beq	$a7, $t1, .LBB2_27
# %bb.29:                               #   in Loop: Header=BB2_28 Depth=2
	addi.w	$a1, $a1, 0
	bne	$t2, $a1, .LBB2_31
# %bb.30:                               #   in Loop: Header=BB2_28 Depth=2
	fsub.d	$ft4, $ft8, $fa1
	fneg.d	$ft8, $ft4
	fcmp.cult.d	$fcc0, $ft4, $fs1
	fsel	$ft4, $ft4, $ft8, $fcc0
	b	.LBB2_27
.LBB2_31:                               # %.loopexit.thread
	fsub.d	$fa2, $ft8, $fa1
	pcalau12i	$a1, %pc_hi20(.LCPI2_3)
	fld.d	$fa3, $a1, %pc_lo12(.LCPI2_3)
	fneg.d	$fa4, $fa2
	fcmp.cult.d	$fcc0, $fa2, $fs1
	fsel	$fa2, $fa2, $fa4, $fcc0
	fadd.d	$fa3, $ft11, $fa3
	fcmp.cult.d	$fcc0, $fa2, $ft4
	fsel	$ft11, $fa3, $ft11, $fcc0
.LBB2_32:                               # %.loopexit227
	fmul.d	$ft0, $ft11, $ft11
	fmul.d	$fa7, $ft11, $ft0
	fcmp.cult.d	$fcc0, $ft12, $ft11
	fmul.d	$fa2, $ft11, $fa7
	fst.d	$fa2, $sp, 1072                 # 8-byte Folded Spill
	vst	$vr8, $sp, 1040                 # 16-byte Folded Spill
	fst.d	$fa7, $sp, 1096                 # 8-byte Folded Spill
	bceqz	$fcc0, .LBB2_34
# %bb.33:
	fld.d	$fa5, $sp, 1072                 # 8-byte Folded Reload
	fmul.d	$fa2, $ft11, $fa5
	vldi	$vr3, -876
	vldi	$vr4, -978
	fmadd.d	$fa3, $fa0, $fa4, $fa3
	pcalau12i	$a1, %pc_hi20(.LCPI2_7)
	fld.d	$fa4, $a1, %pc_lo12(.LCPI2_7)
	fmul.d	$fa3, $fa3, $fa5
	vldi	$vr5, -896
	fmadd.d	$fa2, $fa2, $fa5, $fa3
	fmul.d	$fa3, $fs0, $fa4
	pcalau12i	$a1, %pc_hi20(.LCPI2_8)
	fld.d	$fa4, $a1, %pc_lo12(.LCPI2_8)
	vldi	$vr5, -962
	fmsub.d	$fa6, $fa0, $fa5, $fa3
	fmadd.d	$fa2, $fa6, $fa7, $fa2
	fmul.d	$fa4, $fs0, $fa4
	fmadd.d	$fa6, $fa3, $fa0, $fa4
	vldi	$vr7, -1004
	fmadd.d	$fa6, $fa0, $fa7, $fa6
	fadd.d	$fa6, $fa6, $fa7
	fmadd.d	$fa2, $fa6, $ft0, $fa2
	vldi	$vr6, -844
	fmul.d	$fa6, $fs0, $fa6
	fmadd.d	$fa6, $fa3, $fa0, $fa6
	vldi	$vr7, -860
	fmadd.d	$fa6, $fa0, $fa7, $fa6
	vldi	$vr8, -1024
	fadd.d	$fa6, $fa6, $ft0
	fmadd.d	$fa2, $fa6, $ft11, $fa2
	fmul.d	$fa6, $ft12, $ft12
	fmul.d	$ft0, $ft12, $fa6
	fmul.d	$ft1, $ft12, $ft0
	fmul.d	$ft2, $ft12, $ft1
	fmadd.d	$fa5, $fa0, $fa5, $fa7
	fneg.d	$ft1, $ft1
	fmul.d	$fa5, $fa5, $ft1
	vldi	$vr9, -1008
	pcalau12i	$a1, %pc_hi20(.LCPI2_9)
	fld.d	$ft3, $a1, %pc_lo12(.LCPI2_9)
	pcalau12i	$a1, %pc_hi20(.LCPI2_10)
	fld.d	$ft4, $a1, %pc_lo12(.LCPI2_10)
	fmadd.d	$fa5, $ft2, $ft1, $fa5
	fnmadd.d	$fa4, $fa0, $ft3, $fa4
	fmadd.d	$fa4, $fa4, $ft0, $fa5
	fmul.d	$fa5, $fs0, $ft4
	fmadd.d	$fa5, $fa3, $fa0, $fa5
	vldi	$vr8, -972
	fmadd.d	$fa5, $fa0, $ft0, $fa5
	vldi	$vr8, -988
	fadd.d	$fa5, $fa5, $ft0
	fneg.d	$fa5, $fa5
	fmadd.d	$fa4, $fa5, $fa6, $fa4
	vldi	$vr5, -834
	fmul.d	$fa5, $fs0, $fa5
	fmadd.d	$fa3, $fa3, $fa0, $fa5
	fmadd.d	$fa0, $fa0, $fa7, $fa3
	fadd.d	$fa0, $fa0, $ft1
	pcalau12i	$a1, %pc_hi20(.LCPI2_6)
	fld.d	$fa3, $a1, %pc_lo12(.LCPI2_6)
	fneg.d	$fa0, $fa0
	fmadd.d	$fa0, $fa0, $ft12, $fa4
	fadd.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa0, $fa3
	vldi	$vr2, -1000
	fmul.d	$fa1, $fa1, $fa2
	fmul.d	$fa1, $fs0, $fa1
	fdiv.d	$fs2, $fa0, $fa1
	b	.LBB2_35
.LBB2_34:
	vldi	$vr2, -1004
	vldi	$vr3, -850
	fmadd.d	$fa2, $fa0, $fa3, $fa2
	fmul.d	$fa2, $fa2, $fa7
	vldi	$vr4, -1024
	fld.d	$fa5, $sp, 1072                 # 8-byte Folded Reload
	fmadd.d	$fa2, $fa5, $fa4, $fa2
	vldi	$vr4, -834
	fmul.d	$fa4, $fa0, $fa4
	vldi	$vr5, -972
	fmadd.d	$fa4, $fs0, $fa5, $fa4
	fmadd.d	$fa2, $fa4, $ft0, $fa2
	fmul.d	$fa0, $fa0, $fa3
	vldi	$vr3, -962
	fmadd.d	$fa0, $fs0, $fa3, $fa0
	vldi	$vr3, -876
	fadd.d	$fa0, $fa0, $fa3
	fmadd.d	$fa0, $fa0, $ft11, $fa2
	vldi	$vr2, -896
	vldi	$vr3, -988
	fmadd.d	$fa2, $fs0, $fa3, $fa2
	fadd.d	$fa0, $fa2, $fa0
	vldi	$vr2, -1000
	fmul.d	$fa1, $fa1, $fa2
	pcalau12i	$a1, %pc_hi20(.LCPI2_6)
	fld.d	$fa2, $a1, %pc_lo12(.LCPI2_6)
	fmul.d	$fa1, $fs0, $fa1
	fdiv.d	$fa1, $fa1, $ft11
	fdiv.d	$fa0, $fa0, $fa1
	fmul.d	$fs2, $fa0, $fa2
.LBB2_35:
	fsqrt.d	$fa0, $fs0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	vst	$vr19, $sp, 1056                # 16-byte Folded Spill
	bceqz	$fcc0, .LBB2_42
.LBB2_36:                               # %.split572
	pcalau12i	$a1, %pc_hi20(.LCPI2_11)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI2_11)
	fst.d	$fa1, $sp, 1016                 # 8-byte Folded Spill
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 1032                 # 8-byte Folded Spill
	fdiv.d	$fa0, $fa0, $fs2
	fst.d	$fa0, $a0, 0
	pcalau12i	$s3, %pc_hi20(a)
	fld.d	$fs5, $s3, %pc_lo12(a)
	pcalau12i	$a0, %pc_hi20(bb)
	fld.d	$fa0, $a0, %pc_lo12(bb)
	fadd.d	$fs6, $fs5, $fa0
	pcalau12i	$s2, %pc_hi20(c)
	fst.d	$fs6, $s2, %pc_lo12(c)
	fneg.d	$fa0, $fs1
	fmul.d	$fs7, $fs5, $fa0
	fcmp.cule.d	$fcc0, $ft11, $ft12
	fmul.d	$fs3, $fs6, $fa0
	vldi	$vr0, -784
	bcnez	$fcc0, .LBB2_38
# %bb.37:
	fadd.d	$fa0, $ft12, $fa0
	fneg.d	$fs1, $fa0
	fmul.d	$fs2, $fs5, $fs1
	fst.d	$fs1, $sp, 872                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	vst	$vr20, $sp, 976                 # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	fmul.d	$fs1, $fs6, $fs1
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 976                  # 16-byte Folded Reload
	fmul.d	$fa2, $fa1, $fa1
	vst	$vr2, $sp, 944                  # 16-byte Folded Spill
	fmul.d	$fa2, $fa1, $fa2
	fst.d	$fa2, $sp, 1024                 # 8-byte Folded Spill
	fmul.d	$fa1, $fa1, $fa2
	vldi	$vr2, -1000
	fdiv.d	$fa2, $fa1, $fa2
	fst.d	$fa2, $sp, 968                  # 8-byte Folded Spill
	fdiv.d	$fa0, $fa0, $fs6
	fdiv.d	$fa1, $fs0, $fs5
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $sp, 704                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI2_12)
	fst.d	$fa2, $sp, 936                  # 8-byte Folded Spill
	fdiv.d	$fa0, $fa0, $fs6
	fdiv.d	$fa1, $fs0, $fs5
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fst.d	$fa0, $sp, 640                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fst.d	$fa0, $sp, 848                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 128                  # 8-byte Folded Spill
	fld.d	$fs0, $s1, %pc_lo12(rootN)
	fdiv.d	$fa2, $fa0, $fs6
	fdiv.d	$fa1, $fs4, $fs5
	fsub.d	$fa0, $fa2, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $sp, 832                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fst.d	$fa0, $sp, 112                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 104                  # 8-byte Folded Spill
	fdiv.d	$fa2, $fa0, $fs6
	fdiv.d	$fa1, $fs4, $fs5
	fsub.d	$fa0, $fa2, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 192                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s0, %pc_lo12(N)
	vst	$vr1, $sp, 992                  # 16-byte Folded Spill
	fst.d	$fa0, $sp, 56                   # 8-byte Folded Spill
	vldi	$vr0, -1016
	fmul.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $sp, 144                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 168                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 80                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 408                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 368                  # 8-byte Folded Spill
	vldi	$vr0, -1000
	fmul.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $sp, 464                  # 8-byte Folded Spill
	vld	$vr0, $sp, 992                  # 16-byte Folded Reload
	fadd.d	$fa0, $fa0, $fa0
	fst.d	$fa0, $sp, 880                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 344                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 312                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 360                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 320                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 328                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 296                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 1024                 # 8-byte Folded Reload
	vldi	$vr2, -1000
	fdiv.d	$fa1, $fa1, $fa2
	vst	$vr1, $sp, 176                  # 16-byte Folded Spill
	fdiv.d	$fa0, $fa0, $fs6
	fst.d	$fa0, $sp, 32                   # 8-byte Folded Spill
	fdiv.d	$fa0, $fs4, $fs5
	fst.d	$fa0, $sp, 40                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fa0, $fs6
	fdiv.d	$fa1, $fs4, $fs5
	fsub.d	$fa0, $fa0, $fa1
	fld.d	$fa1, $sp, 936                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 936                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fst.d	$fa0, $sp, 88                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 48                   # 8-byte Folded Spill
	fdiv.d	$fa2, $fa0, $fs6
	fdiv.d	$fa1, $fs4, $fs5
	fsub.d	$fa0, $fa2, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $sp, 224                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fst.d	$fa0, $sp, 232                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 216                  # 8-byte Folded Spill
	fdiv.d	$fa2, $fa0, $fs6
	fdiv.d	$fa1, $fs4, $fs5
	fsub.d	$fa0, $fa2, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $sp, 544                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 248                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 240                  # 8-byte Folded Spill
	vldi	$vr0, -896
	fmul.d	$fa0, $fs0, $fa0
	vst	$vr0, $sp, 256                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 288                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 280                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 336                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 304                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 528                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 488                  # 8-byte Folded Spill
	vld	$vr0, $sp, 1056                 # 16-byte Folded Reload
	vldi	$vr1, -784
	fadd.d	$fa0, $fa0, $fa1
	fneg.d	$fs0, $fa0
	fst.d	$fs0, $sp, 864                  # 8-byte Folded Spill
	fmul.d	$fs3, $fs5, $fs0
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmul.d	$fs7, $fs6, $fs0
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vldi	$vr2, -872
	fld.d	$fa1, $sp, 1072                 # 8-byte Folded Reload
	fdiv.d	$fa1, $fa1, $fa2
	fdiv.d	$fa0, $fa0, $fs6
	fdiv.d	$fa2, $fs4, $fs5
	fsub.d	$fa0, $fa0, $fa2
	fmul.d	$fs0, $fa1, $fa0
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fa0, $fs6
	fdiv.d	$fa1, $fs4, $fs5
	fsub.d	$fa0, $fa0, $fa1
	fld.d	$fa1, $sp, 968                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $sp, 808                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	fst.d	$fa0, $sp, 576                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 568                  # 8-byte Folded Spill
	fld.d	$fs4, $s1, %pc_lo12(rootN)
	fdiv.d	$fa3, $fa0, $fs6
	fdiv.d	$fa1, $fs0, $fs5
	fsub.d	$fa0, $fa3, $fa1
	fmul.d	$fa0, $fs4, $fa0
	fst.d	$fa0, $sp, 592                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	fst.d	$fa0, $sp, 512                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 504                  # 8-byte Folded Spill
	fdiv.d	$fa2, $fa0, $fs6
	fdiv.d	$fa1, $fs0, $fs5
	fsub.d	$fa0, $fa2, $fa1
	fmul.d	$fa0, $fs4, $fa0
	fst.d	$fa0, $sp, 520                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 784                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s0, %pc_lo12(N)
	vst	$vr1, $sp, 1072                 # 16-byte Folded Spill
	fst.d	$fa0, $sp, 752                  # 8-byte Folded Spill
	vldi	$vr0, -1016
	fmul.d	$fa0, $fs4, $fa0
	fst.d	$fs4, $sp, 968                  # 8-byte Folded Spill
	fst.d	$fa0, $sp, 776                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 768                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 736                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 440                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI2_14)
	fst.d	$fa0, $sp, 376                  # 8-byte Folded Spill
	vldi	$vr0, -1000
	fmul.d	$fa0, $fs4, $fa0
	fst.d	$fa0, $sp, 432                  # 8-byte Folded Spill
	vld	$vr0, $sp, 1072                 # 16-byte Folded Reload
	fmul.d	$fa0, $fa0, $fa1
	vst	$vr0, $sp, 672                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 496                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 448                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 912                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 904                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 928                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 920                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 1096                 # 8-byte Folded Reload
	vldi	$vr2, -872
	fdiv.d	$fa1, $fa1, $fa2
	vst	$vr1, $sp, 416                  # 16-byte Folded Spill
	fdiv.d	$fa0, $fa0, $fs6
	fdiv.d	$fa1, $fs4, $fs5
	fsub.d	$fa0, $fa0, $fa1
	vst	$vr0, $sp, 384                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fa0, $fs6
	fdiv.d	$fa1, $fs2, $fs5
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 352                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	fst.d	$fa0, $sp, 480                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 456                  # 8-byte Folded Spill
	fdiv.d	$fa2, $fa0, $fs6
	fld.d	$fs0, $s3, %pc_lo12(a)
	fdiv.d	$fa1, $fs2, $fs5
	fsub.d	$fa0, $fa2, $fa1
	fld.d	$fs3, $sp, 968                  # 8-byte Folded Reload
	fmul.d	$fa0, $fs3, $fa0
	fst.d	$fa0, $sp, 584                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 64                   # 8-byte Folded Spill
	fld.d	$fs5, $sp, 872                  # 8-byte Folded Reload
	fmul.d	$fs2, $fs0, $fs5
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	fst.d	$fa0, $sp, 624                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 616                  # 8-byte Folded Spill
	fdiv.d	$fa2, $fa0, $fs6
	fdiv.d	$fa1, $fs4, $fs0
	fsub.d	$fa0, $fa2, $fa1
	fmul.d	$fa0, $fs3, $fa0
	fst.d	$fa0, $sp, 632                  # 8-byte Folded Spill
	fld.d	$fs3, $sp, 864                  # 8-byte Folded Reload
	fmul.d	$fs1, $fs0, $fs3
	fst.d	$fs0, $sp, 728                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fs7, $s2, %pc_lo12(c)
	fst.d	$fa0, $sp, 664                  # 8-byte Folded Spill
	fmul.d	$fs3, $fs7, $fs3
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 656                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 744                  # 8-byte Folded Spill
	fmul.d	$fs4, $fs7, $fs5
	fst.d	$fs7, $sp, 760                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 696                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 824                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 816                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 872                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 864                  # 8-byte Folded Spill
	movfr2gr.d	$a1, $fs6
	fld.d	$fa0, $sp, 64                   # 8-byte Folded Reload
	movfr2gr.d	$a0, $fa0
	movfr2gr.d	$a2, $fs7
	vinsgr2vr.d	$vr0, $a2, 0
	vinsgr2vr.d	$vr0, $a1, 1
	vfmul.d	$vr5, $vr0, $vr0
	vori.b	$vr4, $vr0, 0
	vreplvei.d	$vr16, $vr5, 1
	fld.d	$fa0, $sp, 128                  # 8-byte Folded Reload
	fdiv.d	$fa0, $fa0, $ft8
	movfr2gr.d	$a3, $fs0
	vinsgr2vr.d	$vr1, $a3, 0
	vinsgr2vr.d	$vr1, $a0, 1
	vfmul.d	$vr31, $vr1, $vr1
	vori.b	$vr6, $vr1, 0
	vreplvei.d	$vr17, $vr31, 1
	fld.d	$fa1, $sp, 848                  # 8-byte Folded Reload
	fdiv.d	$fa1, $fa1, $ft9
	fsub.d	$fa0, $fa0, $fa1
	fld.d	$fa3, $sp, 1016                 # 8-byte Folded Reload
	fld.d	$fa1, $sp, 832                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa0, $fa3, $fa1
	fld.d	$fa0, $sp, 104                  # 8-byte Folded Reload
	fdiv.d	$fa0, $fa0, $ft8
	fld.d	$fa2, $sp, 112                  # 8-byte Folded Reload
	fdiv.d	$fa2, $fa2, $ft9
	fsub.d	$fa0, $fa0, $fa2
	fld.d	$fa2, $sp, 96                   # 8-byte Folded Reload
	fmadd.d	$fa0, $fa0, $fa3, $fa2
	fst.d	$fa0, $sp, 1016                 # 8-byte Folded Spill
	vori.b	$vr0, $vr5, 0
	vori.b	$vr15, $vr5, 0
	vinsgr2vr.d	$vr0, $a2, 0
	vst	$vr0, $sp, 848                  # 16-byte Folded Spill
	vori.b	$vr2, $vr31, 0
	vinsgr2vr.d	$vr2, $a3, 0
	vst	$vr2, $sp, 832                  # 16-byte Folded Spill
	vfmul.d	$vr12, $vr4, $vr0
	vori.b	$vr5, $vr4, 0
	vreplvei.d	$vr18, $vr12, 1
	vst	$vr12, $sp, 112                 # 16-byte Folded Spill
	fld.d	$ft2, $sp, 56                   # 8-byte Folded Reload
	fdiv.d	$fa0, $ft2, $ft10
	vfmul.d	$vr23, $vr6, $vr2
	vreplvei.d	$vr19, $vr23, 1
	fld.d	$ft1, $sp, 192                  # 8-byte Folded Reload
	fdiv.d	$fa2, $ft1, $ft11
	fsub.d	$fa0, $fa0, $fa2
	fdiv.d	$fa2, $ft2, $ft8
	fdiv.d	$fa3, $ft1, $ft9
	fsub.d	$fa2, $fa2, $fa3
	fneg.d	$fa2, $fa2
	fld.d	$ft3, $sp, 144                  # 8-byte Folded Reload
	fmul.d	$fa2, $ft3, $fa2
	vldi	$vr3, -1024
	fmadd.d	$fa0, $fa0, $fa3, $fa2
	fld.d	$ft0, $sp, 80                   # 8-byte Folded Reload
	fdiv.d	$fa2, $ft0, $ft10
	fld.d	$fa7, $sp, 168                  # 8-byte Folded Reload
	fdiv.d	$fa4, $fa7, $ft11
	fsub.d	$fa2, $fa2, $fa4
	fdiv.d	$fa4, $ft0, $ft8
	fdiv.d	$ft5, $fa7, $ft9
	fsub.d	$fa4, $fa4, $ft5
	fneg.d	$fa4, $fa4
	fmul.d	$fa4, $ft3, $fa4
	fmadd.d	$ft5, $fa2, $fa3, $fa4
	fld.d	$fa2, $sp, 704                  # 8-byte Folded Reload
	movfr2gr.d	$a4, $fa2
	fld.d	$fa2, $sp, 32                   # 8-byte Folded Reload
	movfr2gr.d	$a5, $fa2
	fld.d	$fa2, $sp, 640                  # 8-byte Folded Reload
	movfr2gr.d	$a6, $fa2
	fld.d	$fa2, $sp, 40                   # 8-byte Folded Reload
	movfr2gr.d	$a7, $fa2
	fld.d	$fa2, $sp, 1024                 # 8-byte Folded Reload
	fmul.d	$fa1, $fa2, $fa1
	vinsgr2vr.d	$vr2, $a5, 0
	vinsgr2vr.d	$vr2, $a4, 1
	vinsgr2vr.d	$vr3, $a7, 0
	vinsgr2vr.d	$vr3, $a6, 1
	pcalau12i	$a4, %pc_hi20(.LCPI2_13)
	vld	$vr4, $a4, %pc_lo12(.LCPI2_13)
	vst	$vr4, $sp, 144                  # 16-byte Folded Spill
	vfsub.d	$vr2, $vr2, $vr3
	movfr2gr.d	$a4, $fa1
	vld	$vr1, $sp, 176                  # 16-byte Folded Reload
	vori.b	$vr29, $vr1, 0
	vinsgr2vr.d	$vr29, $a4, 1
	vfmul.d	$vr1, $vr2, $vr1
	vfadd.d	$vr2, $vr2, $vr29
	vori.b	$vr3, $vr4, 0
	vshuf.d	$vr3, $vr2, $vr1
	vst	$vr3, $sp, 704                  # 16-byte Folded Spill
	fld.d	$fa1, $sp, 48                   # 8-byte Folded Reload
	movfr2gr.d	$a4, $fa1
	movfr2gr.d	$a5, $ft2
	fld.d	$fa1, $sp, 88                   # 8-byte Folded Reload
	movfr2gr.d	$a6, $fa1
	movfr2gr.d	$a7, $ft1
	vinsgr2vr.d	$vr1, $a4, 0
	vinsgr2vr.d	$vr1, $a5, 1
	vpackod.d	$vr3, $vr5, $vr15
	vori.b	$vr26, $vr15, 0
	vst	$vr15, $sp, 16                  # 16-byte Folded Spill
	vfdiv.d	$vr1, $vr1, $vr3
	vst	$vr3, $sp, 192                  # 16-byte Folded Spill
	vinsgr2vr.d	$vr2, $a6, 0
	vinsgr2vr.d	$vr2, $a7, 1
	vpackod.d	$vr4, $vr6, $vr31
	vfdiv.d	$vr2, $vr2, $vr4
	vst	$vr4, $sp, 176                  # 16-byte Folded Spill
	vfsub.d	$vr1, $vr1, $vr2
	movfr2gr.d	$a4, $fa0
	fld.d	$fa0, $sp, 224                  # 8-byte Folded Reload
	movfr2gr.d	$a5, $fa0
	vldi	$vr0, -928
	vld	$vr2, $sp, 992                  # 16-byte Folded Reload
	vpackev.d	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr2, $a5, 0
	vinsgr2vr.d	$vr2, $a4, 1
	vfmadd.d	$vr1, $vr0, $vr1, $vr2
	vst	$vr1, $sp, 640                  # 16-byte Folded Spill
	fld.d	$fa1, $sp, 216                  # 8-byte Folded Reload
	movfr2gr.d	$a4, $fa1
	movfr2gr.d	$a5, $ft0
	fld.d	$fa1, $sp, 232                  # 8-byte Folded Reload
	movfr2gr.d	$a6, $fa1
	movfr2gr.d	$a7, $fa7
	vinsgr2vr.d	$vr1, $a4, 0
	vinsgr2vr.d	$vr1, $a5, 1
	vfdiv.d	$vr1, $vr1, $vr3
	vinsgr2vr.d	$vr2, $a6, 0
	vinsgr2vr.d	$vr2, $a7, 1
	vfdiv.d	$vr2, $vr2, $vr4
	vfsub.d	$vr1, $vr1, $vr2
	movfr2gr.d	$a4, $ft5
	fld.d	$fa2, $sp, 544                  # 8-byte Folded Reload
	movfr2gr.d	$a5, $fa2
	vinsgr2vr.d	$vr2, $a5, 0
	vinsgr2vr.d	$vr2, $a4, 1
	vfmadd.d	$vr0, $vr0, $vr1, $vr2
	vst	$vr0, $sp, 544                  # 16-byte Folded Spill
	fld.d	$fs1, $sp, 368                  # 8-byte Folded Reload
	fdiv.d	$fa0, $fs1, $ft10
	fld.d	$fs0, $sp, 408                  # 8-byte Folded Reload
	fdiv.d	$fa1, $fs0, $ft11
	fsub.d	$fa0, $fa0, $fa1
	fld.d	$ft3, $sp, 312                  # 8-byte Folded Reload
	fdiv.d	$fa1, $ft3, $ft10
	fld.d	$fa7, $sp, 344                  # 8-byte Folded Reload
	fdiv.d	$fa2, $fa7, $ft11
	fsub.d	$fa1, $fa1, $fa2
	vori.b	$vr2, $vr12, 0
	vinsgr2vr.d	$vr2, $a2, 0
	vfmul.d	$vr20, $vr5, $vr2
	vori.b	$vr9, $vr5, 0
	vst	$vr5, $sp, 64                   # 16-byte Folded Spill
	vori.b	$vr2, $vr23, 0
	vinsgr2vr.d	$vr2, $a3, 0
	vfmul.d	$vr30, $vr6, $vr2
	vori.b	$vr8, $vr6, 0
	vst	$vr6, $sp, 128                  # 16-byte Folded Spill
	vreplvei.d	$vr28, $vr20, 1
	fld.d	$fa5, $sp, 320                  # 8-byte Folded Reload
	fdiv.d	$fa2, $fa5, $fs4
	vreplvei.d	$vr15, $vr30, 1
	fld.d	$ft5, $sp, 360                  # 8-byte Folded Reload
	fdiv.d	$fa3, $ft5, $ft7
	fsub.d	$fa2, $fa2, $fa3
	fld.d	$ft4, $sp, 296                  # 8-byte Folded Reload
	fdiv.d	$fa3, $ft4, $fs4
	fld.d	$ft6, $sp, 328                  # 8-byte Folded Reload
	fdiv.d	$fa4, $ft6, $ft7
	fsub.d	$fa3, $fa3, $fa4
	fneg.d	$fa0, $fa0
	fld.d	$fa6, $sp, 464                  # 8-byte Folded Reload
	fmul.d	$ft13, $fa6, $fa0
	fneg.d	$fa0, $fa1
	fmul.d	$ft2, $fa6, $fa0
	fneg.d	$fa1, $fa2
	fmul.d	$ft14, $fa6, $fa1
	fneg.d	$fa1, $fa3
	fmul.d	$fa0, $fa6, $fa1
	fst.d	$fa0, $sp, 232                  # 8-byte Folded Spill
	fld.d	$fa3, $sp, 240                  # 8-byte Folded Reload
	fdiv.d	$fa1, $fa3, $ft10
	fld.d	$fa0, $sp, 248                  # 8-byte Folded Reload
	fdiv.d	$fa2, $fa0, $ft11
	fsub.d	$fa1, $fa1, $fa2
	movfr2gr.d	$a2, $fa3
	movfr2gr.d	$a3, $fs1
	movfr2gr.d	$a4, $fa0
	movfr2gr.d	$a5, $fs0
	vinsgr2vr.d	$vr25, $a2, 0
	vinsgr2vr.d	$vr25, $a3, 1
	vinsgr2vr.d	$vr24, $a4, 0
	vinsgr2vr.d	$vr24, $a5, 1
	vpackod.d	$vr3, $vr20, $vr26
	vfdiv.d	$vr2, $vr25, $vr3
	vpackod.d	$vr4, $vr30, $vr31
	vfdiv.d	$vr26, $vr24, $vr4
	vfsub.d	$vr2, $vr2, $vr26
	vldi	$vr26, -1008
	vld	$vr0, $sp, 256                  # 16-byte Folded Reload
	vpackev.d	$vr27, $vr26, $vr0
	movfr2gr.d	$a2, $fa1
	movfr2gr.d	$a3, $ft13
	vinsgr2vr.d	$vr1, $a2, 0
	vinsgr2vr.d	$vr1, $a3, 1
	vfmadd.d	$vr26, $vr2, $vr27, $vr1
	fld.d	$fa0, $sp, 280                  # 8-byte Folded Reload
	fdiv.d	$fa1, $fa0, $ft10
	fld.d	$fa6, $sp, 288                  # 8-byte Folded Reload
	fdiv.d	$fa2, $fa6, $ft11
	fsub.d	$ft13, $fa1, $fa2
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $ft3
	movfr2gr.d	$a4, $fa6
	movfr2gr.d	$a5, $fa7
	vinsgr2vr.d	$vr7, $a2, 0
	vinsgr2vr.d	$vr7, $a3, 1
	vfdiv.d	$vr3, $vr7, $vr3
	vinsgr2vr.d	$vr6, $a4, 0
	vinsgr2vr.d	$vr6, $a5, 1
	vfdiv.d	$vr0, $vr6, $vr4
	vfsub.d	$vr0, $vr3, $vr0
	movfr2gr.d	$a2, $ft13
	movfr2gr.d	$a3, $ft2
	vinsgr2vr.d	$vr3, $a2, 0
	vinsgr2vr.d	$vr3, $a3, 1
	vfmadd.d	$vr11, $vr0, $vr27, $vr3
	fld.d	$fa2, $sp, 304                  # 8-byte Folded Reload
	fdiv.d	$fa0, $fa2, $fs4
	fld.d	$fa1, $sp, 336                  # 8-byte Folded Reload
	fdiv.d	$fa4, $fa1, $ft7
	fsub.d	$fa4, $fa0, $fa4
	movfr2gr.d	$a2, $fa2
	movfr2gr.d	$a3, $fa5
	movfr2gr.d	$a4, $fa1
	movfr2gr.d	$a5, $ft5
	vfmul.d	$vr21, $vr9, $vr20
	vinsgr2vr.d	$vr1, $a2, 0
	vinsgr2vr.d	$vr1, $a3, 1
	vfmul.d	$vr3, $vr8, $vr30
	vst	$vr3, $sp, 464                  # 16-byte Folded Spill
	vinsgr2vr.d	$vr30, $a4, 0
	vinsgr2vr.d	$vr30, $a5, 1
	vld	$vr20, $sp, 112                 # 16-byte Folded Reload
	vpackod.d	$vr2, $vr21, $vr20
	vfdiv.d	$vr0, $vr1, $vr2
	vori.b	$vr5, $vr23, 0
	vpackod.d	$vr3, $vr3, $vr23
	vfdiv.d	$vr13, $vr30, $vr3
	vfsub.d	$vr0, $vr0, $vr13
	movfr2gr.d	$a2, $fa4
	movfr2gr.d	$a3, $ft14
	vinsgr2vr.d	$vr4, $a2, 0
	vinsgr2vr.d	$vr4, $a3, 1
	vfmadd.d	$vr9, $vr0, $vr27, $vr4
	fld.d	$fa0, $sp, 488                  # 8-byte Folded Reload
	fdiv.d	$fa4, $fa0, $fs4
	fld.d	$ft5, $sp, 528                  # 8-byte Folded Reload
	fdiv.d	$ft0, $ft5, $ft7
	fsub.d	$fa4, $fa4, $ft0
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $ft4
	movfr2gr.d	$a4, $ft5
	movfr2gr.d	$a5, $ft6
	vinsgr2vr.d	$vr8, $a2, 0
	vinsgr2vr.d	$vr8, $a3, 1
	vfdiv.d	$vr2, $vr8, $vr2
	vinsgr2vr.d	$vr13, $a4, 0
	vinsgr2vr.d	$vr13, $a5, 1
	vfdiv.d	$vr3, $vr13, $vr3
	vfsub.d	$vr2, $vr2, $vr3
	movfr2gr.d	$a2, $fa4
	fld.d	$fa0, $sp, 232                  # 8-byte Folded Reload
	movfr2gr.d	$a3, $fa0
	vinsgr2vr.d	$vr3, $a2, 0
	vinsgr2vr.d	$vr3, $a3, 1
	vfmadd.d	$vr2, $vr2, $vr27, $vr3
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vori.b	$vr3, $vr0, 0
	vinsgr2vr.d	$vr3, $a1, 0
	vfdiv.d	$vr4, $vr25, $vr3
	vori.b	$vr25, $vr31, 0
	vinsgr2vr.d	$vr25, $a0, 0
	vfdiv.d	$vr23, $vr24, $vr25
	vfsub.d	$vr4, $vr4, $vr23
	vld	$vr10, $sp, 992                 # 16-byte Folded Reload
	movfr2gr.d	$a1, $ft2
	fld.d	$ft14, $sp, 880                 # 8-byte Folded Reload
	movfr2gr.d	$a2, $ft14
	vinsgr2vr.d	$vr24, $a1, 0
	vinsgr2vr.d	$vr24, $a2, 1
	vfmadd.d	$vr4, $vr24, $vr4, $vr26
	vst	$vr4, $sp, 528                  # 16-byte Folded Spill
	vfdiv.d	$vr3, $vr7, $vr3
	vfdiv.d	$vr4, $vr6, $vr25
	vfsub.d	$vr3, $vr3, $vr4
	vfmadd.d	$vr3, $vr24, $vr3, $vr11
	vst	$vr3, $sp, 992                  # 16-byte Folded Spill
	vpackod.d	$vr3, $vr20, $vr0
	vori.b	$vr11, $vr0, 0
	vori.b	$vr26, $vr20, 0
	vfdiv.d	$vr1, $vr1, $vr3
	vpackod.d	$vr4, $vr5, $vr31
	vori.b	$vr25, $vr5, 0
	vfdiv.d	$vr5, $vr30, $vr4
	vfsub.d	$vr1, $vr1, $vr5
	vfmadd.d	$vr0, $vr24, $vr1, $vr9
	vst	$vr0, $sp, 880                  # 16-byte Folded Spill
	vfdiv.d	$vr0, $vr8, $vr3
	vfdiv.d	$vr1, $vr13, $vr4
	vfsub.d	$vr0, $vr0, $vr1
	vfmadd.d	$vr27, $vr24, $vr0, $vr2
	pcalau12i	$a1, %pc_hi20(.LCPI2_15)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI2_15)
	fld.d	$fa1, $sp, 568                  # 8-byte Folded Reload
	fdiv.d	$fa1, $fa1, $ft8
	fld.d	$fa2, $sp, 576                  # 8-byte Folded Reload
	fdiv.d	$fa2, $fa2, $ft9
	fsub.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $sp, 592                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	fld.d	$fa2, $sp, 504                  # 8-byte Folded Reload
	fdiv.d	$fa2, $fa2, $ft8
	fld.d	$fa3, $sp, 512                  # 8-byte Folded Reload
	fdiv.d	$fa3, $fa3, $ft9
	fsub.d	$fa2, $fa2, $fa3
	fld.d	$fa3, $sp, 520                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa0, $fa3
	fld.d	$fa2, $sp, 1096                 # 8-byte Folded Reload
	fmul.d	$fa1, $fa2, $fa1
	fld.d	$ft15, $sp, 376                 # 8-byte Folded Reload
	vori.b	$vr14, $vr28, 0
	fdiv.d	$fa2, $ft15, $ft6
	fld.d	$ft14, $sp, 440                 # 8-byte Folded Reload
	fdiv.d	$fa3, $ft14, $ft7
	fsub.d	$fa2, $fa2, $fa3
	fdiv.d	$fa3, $ft15, $ft10
	fdiv.d	$fa4, $ft14, $ft11
	fsub.d	$fa3, $fa3, $fa4
	fld.d	$ft5, $sp, 432                  # 8-byte Folded Reload
	fmul.d	$fa3, $ft5, $fa3
	vldi	$vr4, -880
	fmadd.d	$fs6, $fa2, $fa4, $fa3
	fld.d	$ft0, $sp, 448                  # 8-byte Folded Reload
	fdiv.d	$fa2, $ft0, $ft6
	fld.d	$fa6, $sp, 496                  # 8-byte Folded Reload
	fdiv.d	$fa3, $fa6, $ft7
	fsub.d	$fa2, $fa2, $fa3
	fdiv.d	$fa3, $ft0, $ft10
	fdiv.d	$fa5, $fa6, $ft11
	fsub.d	$fa3, $fa3, $fa5
	fmul.d	$fa3, $ft5, $fa3
	fmadd.d	$fs0, $fa2, $fa4, $fa3
	fld.d	$fa2, $sp, 808                  # 8-byte Folded Reload
	movfr2gr.d	$a1, $fa2
	movfr2gr.d	$a2, $fa1
	vld	$vr2, $sp, 416                  # 16-byte Folded Reload
	vori.b	$vr1, $vr2, 0
	vinsgr2vr.d	$vr1, $a1, 1
	vld	$vr3, $sp, 384                  # 16-byte Folded Reload
	vfmul.d	$vr2, $vr2, $vr3
	vinsgr2vr.d	$vr3, $a2, 1
	vfadd.d	$vr1, $vr1, $vr3
	fld.d	$fa3, $sp, 352                  # 8-byte Folded Reload
	movfr2gr.d	$a1, $fa3
	fld.d	$fa3, $sp, 1024                 # 8-byte Folded Reload
	movfr2gr.d	$a2, $fa3
	movfr2gr.d	$a3, $fa0
	vinsgr2vr.d	$vr0, $a1, 0
	vinsgr2vr.d	$vr0, $a2, 1
	vinsgr2vr.d	$vr29, $a3, 1
	vfmul.d	$vr0, $vr0, $vr29
	vfsub.d	$vr1, $vr1, $vr0
	vfadd.d	$vr0, $vr2, $vr0
	vld	$vr20, $sp, 144                 # 16-byte Folded Reload
	vshuf.d	$vr20, $vr1, $vr0
	fld.d	$ft1, $sp, 752                  # 8-byte Folded Reload
	fdiv.d	$fa0, $ft1, $ft10
	fld.d	$fa7, $sp, 784                  # 8-byte Folded Reload
	fdiv.d	$fa1, $fa7, $ft11
	fsub.d	$fa0, $fa0, $fa1
	fdiv.d	$fa1, $ft1, $ft8
	fdiv.d	$fa2, $fa7, $ft9
	fsub.d	$fa1, $fa1, $fa2
	fld.d	$ft2, $sp, 776                  # 8-byte Folded Reload
	fmul.d	$fa1, $ft2, $fa1
	vldi	$vr4, -896
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	fld.d	$fa3, $sp, 736                  # 8-byte Folded Reload
	fdiv.d	$fa1, $fa3, $ft10
	fld.d	$fa5, $sp, 768                  # 8-byte Folded Reload
	fdiv.d	$fa2, $fa5, $ft11
	fsub.d	$fa1, $fa1, $fa2
	fdiv.d	$fa2, $fa3, $ft8
	fmov.d	$ft10, $fa3
	fdiv.d	$fa3, $fa5, $ft9
	fsub.d	$fa2, $fa2, $fa3
	fmul.d	$fa2, $ft2, $fa2
	fmadd.d	$fa1, $fa1, $fa4, $fa2
	vldi	$vr2, -896
	fld.d	$fa3, $sp, 968                  # 8-byte Folded Reload
	movfr2gr.d	$a1, $fa3
	vld	$vr3, $sp, 672                  # 16-byte Folded Reload
	vpackev.d	$vr2, $vr3, $vr2
	fld.d	$fa3, $sp, 456                  # 8-byte Folded Reload
	movfr2gr.d	$a2, $fa3
	movfr2gr.d	$a3, $ft1
	fld.d	$fa3, $sp, 480                  # 8-byte Folded Reload
	movfr2gr.d	$a4, $fa3
	movfr2gr.d	$a5, $fa7
	vinsgr2vr.d	$vr3, $a4, 0
	vinsgr2vr.d	$vr3, $a5, 1
	vld	$vr4, $sp, 176                  # 16-byte Folded Reload
	vfdiv.d	$vr3, $vr3, $vr4
	vinsgr2vr.d	$vr4, $a2, 0
	vinsgr2vr.d	$vr4, $a3, 1
	vld	$vr9, $sp, 192                  # 16-byte Folded Reload
	vfdiv.d	$vr4, $vr4, $vr9
	vfsub.d	$vr3, $vr4, $vr3
	movfr2gr.d	$a2, $fa0
	fld.d	$fa0, $sp, 584                  # 8-byte Folded Reload
	movfr2gr.d	$a3, $fa0
	vld	$vr7, $sp, 1072                 # 16-byte Folded Reload
	movfr2gr.d	$a4, $fa7
	vinsgr2vr.d	$vr0, $a4, 0
	vinsgr2vr.d	$vr0, $a1, 1
	vfmul.d	$vr17, $vr0, $vr2
	lu52i.d	$a1, $zero, -1026
	vreplgr2vr.d	$vr2, $a1
	vpackev.d	$vr2, $vr17, $vr2
	vinsgr2vr.d	$vr4, $a3, 0
	vinsgr2vr.d	$vr4, $a2, 1
	vfmadd.d	$vr16, $vr3, $vr2, $vr4
	fld.d	$fa3, $sp, 616                  # 8-byte Folded Reload
	movfr2gr.d	$a1, $fa3
	movfr2gr.d	$a2, $ft10
	vinsgr2vr.d	$vr3, $a1, 0
	vinsgr2vr.d	$vr3, $a2, 1
	vfdiv.d	$vr3, $vr3, $vr9
	fld.d	$fa4, $sp, 624                  # 8-byte Folded Reload
	movfr2gr.d	$a1, $fa4
	movfr2gr.d	$a2, $fa5
	vinsgr2vr.d	$vr4, $a1, 0
	vinsgr2vr.d	$vr4, $a2, 1
	vori.b	$vr5, $vr31, 0
	vinsgr2vr.d	$vr5, $a0, 1
	vfdiv.d	$vr4, $vr4, $vr5
	vfsub.d	$vr3, $vr3, $vr4
	movfr2gr.d	$a0, $fa1
	fld.d	$fa1, $sp, 632                  # 8-byte Folded Reload
	movfr2gr.d	$a1, $fa1
	vinsgr2vr.d	$vr1, $a1, 0
	vinsgr2vr.d	$vr1, $a0, 1
	vfmadd.d	$vr18, $vr3, $vr2, $vr1
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	vreplvei.d	$vr1, $vr21, 0
	fld.d	$ft2, $sp, 656                  # 8-byte Folded Reload
	fdiv.d	$fa3, $ft2, $fa1
	vld	$vr4, $a0, %pc_lo12(.LCPI2_17)
	vld	$vr12, $sp, 464                 # 16-byte Folded Reload
	vreplvei.d	$vr2, $vr12, 0
	fld.d	$ft1, $sp, 664                  # 8-byte Folded Reload
	fdiv.d	$fa5, $ft1, $fa2
	fsub.d	$fa3, $fa3, $fa5
	vfmul.d	$vr19, $vr0, $vr4
	movfr2gr.d	$a0, $ft2
	movfr2gr.d	$a1, $ft15
	movfr2gr.d	$a2, $ft1
	movfr2gr.d	$a3, $ft14
	fneg.d	$fa0, $fa3
	pcalau12i	$a4, %pc_hi20(.LCPI2_18)
	vinsgr2vr.d	$vr22, $a0, 0
	vinsgr2vr.d	$vr22, $a1, 1
	vinsgr2vr.d	$vr28, $a2, 0
	vinsgr2vr.d	$vr28, $a3, 1
	vld	$vr3, $a4, %pc_lo12(.LCPI2_18)
	vfdiv.d	$vr4, $vr22, $vr11
	vfdiv.d	$vr5, $vr28, $vr31
	vfsub.d	$vr4, $vr4, $vr5
	movfr2gr.d	$a0, $fs6
	movfr2gr.d	$a1, $fa0
	vshuf.d	$vr3, $vr0, $vr19
	vinsgr2vr.d	$vr0, $a1, 0
	vinsgr2vr.d	$vr0, $a0, 1
	vfmadd.d	$vr29, $vr3, $vr4, $vr0
	fld.d	$ft1, $sp, 696                  # 8-byte Folded Reload
	fdiv.d	$fa0, $ft1, $fa1
	fld.d	$fa5, $sp, 744                  # 8-byte Folded Reload
	fdiv.d	$fa4, $fa5, $fa2
	fsub.d	$fa4, $fa0, $fa4
	movfr2gr.d	$a0, $ft1
	movfr2gr.d	$a1, $ft0
	movfr2gr.d	$a2, $fa5
	movfr2gr.d	$a3, $fa6
	vinsgr2vr.d	$vr30, $a0, 0
	vinsgr2vr.d	$vr30, $a1, 1
	vfdiv.d	$vr5, $vr30, $vr11
	vinsgr2vr.d	$vr0, $a2, 0
	vinsgr2vr.d	$vr0, $a3, 1
	vfdiv.d	$vr6, $vr0, $vr31
	fneg.d	$fa4, $fa4
	vfsub.d	$vr5, $vr5, $vr6
	movfr2gr.d	$a0, $fs0
	movfr2gr.d	$a1, $fa4
	pcalau12i	$a2, %pc_hi20(.LCPI2_16)
	vld	$vr4, $a2, %pc_lo12(.LCPI2_16)
	vinsgr2vr.d	$vr6, $a1, 0
	vinsgr2vr.d	$vr6, $a0, 1
	vfmadd.d	$vr10, $vr3, $vr5, $vr6
	vreplvei.d	$vr3, $vr7, 0
	vfmul.d	$vr3, $vr3, $vr4
	fld.d	$ft0, $sp, 904                  # 8-byte Folded Reload
	fdiv.d	$fa4, $ft0, $ft6
	fld.d	$fa7, $sp, 912                  # 8-byte Folded Reload
	fdiv.d	$fa5, $fa7, $ft7
	fsub.d	$fa4, $fa4, $fa5
	fld.d	$fa5, $sp, 728                  # 8-byte Folded Reload
	fmul.d	$fa5, $fa5, $fa2
	fld.d	$fa2, $sp, 760                  # 8-byte Folded Reload
	fmul.d	$fa6, $fa2, $fa1
	fld.d	$ft3, $sp, 816                  # 8-byte Folded Reload
	fdiv.d	$fa1, $ft3, $fa6
	fld.d	$ft1, $sp, 824                  # 8-byte Folded Reload
	fdiv.d	$fa2, $ft1, $fa5
	fsub.d	$fa1, $fa1, $fa2
	movfr2gr.d	$a0, $ft3
	movfr2gr.d	$a1, $ft0
	movfr2gr.d	$a2, $ft1
	movfr2gr.d	$a3, $fa7
	fmul.d	$fa4, $ft5, $fa4
	fneg.d	$fa7, $fa1
	vinsgr2vr.d	$vr1, $a0, 0
	vinsgr2vr.d	$vr1, $a1, 1
	vinsgr2vr.d	$vr2, $a2, 0
	vinsgr2vr.d	$vr2, $a3, 1
	vfdiv.d	$vr8, $vr1, $vr21
	vfdiv.d	$vr11, $vr2, $vr12
	vfsub.d	$vr8, $vr8, $vr11
	movfr2gr.d	$a0, $fa7
	movfr2gr.d	$a1, $fa4
	lu52i.d	$a2, $zero, -1023
	vreplgr2vr.d	$vr4, $a2
	vpackod.d	$vr4, $vr4, $vr19
	vinsgr2vr.d	$vr7, $a0, 0
	vinsgr2vr.d	$vr7, $a1, 1
	vfmadd.d	$vr7, $vr8, $vr4, $vr7
	vfdiv.d	$vr8, $vr1, $vr26
	vfdiv.d	$vr11, $vr2, $vr25
	vfsub.d	$vr8, $vr8, $vr11
	vfmadd.d	$vr3, $vr3, $vr8, $vr7
	fld.d	$fs0, $sp, 920                  # 8-byte Folded Reload
	fdiv.d	$fa7, $fs0, $ft6
	fld.d	$ft3, $sp, 928                  # 8-byte Folded Reload
	fdiv.d	$ft0, $ft3, $ft7
	fsub.d	$fa7, $fa7, $ft0
	fmul.d	$fa7, $ft5, $fa7
	fld.d	$ft5, $sp, 864                  # 8-byte Folded Reload
	fdiv.d	$fa6, $ft5, $fa6
	fld.d	$ft0, $sp, 872                  # 8-byte Folded Reload
	fdiv.d	$fa5, $ft0, $fa5
	fsub.d	$fa5, $fa6, $fa5
	movfr2gr.d	$a0, $ft5
	movfr2gr.d	$a1, $fs0
	movfr2gr.d	$a2, $ft0
	movfr2gr.d	$a3, $ft3
	fneg.d	$fa5, $fa5
	vinsgr2vr.d	$vr6, $a0, 0
	vinsgr2vr.d	$vr6, $a1, 1
	vfdiv.d	$vr8, $vr6, $vr21
	vinsgr2vr.d	$vr11, $a2, 0
	vinsgr2vr.d	$vr11, $a3, 1
	vfdiv.d	$vr13, $vr11, $vr12
	vfsub.d	$vr8, $vr8, $vr13
	movfr2gr.d	$a0, $fa5
	movfr2gr.d	$a1, $fa7
	vinsgr2vr.d	$vr5, $a0, 0
	vinsgr2vr.d	$vr5, $a1, 1
	vfmadd.d	$vr4, $vr8, $vr4, $vr5
	vfdiv.d	$vr5, $vr6, $vr26
	vfdiv.d	$vr7, $vr11, $vr25
	vfsub.d	$vr5, $vr5, $vr7
	vpackev.d	$vr7, $vr19, $vr17
	vfmadd.d	$vr4, $vr7, $vr5, $vr4
	vld	$vr8, $sp, 64                   # 16-byte Folded Reload
	vfdiv.d	$vr5, $vr22, $vr8
	vld	$vr9, $sp, 128                  # 16-byte Folded Reload
	vfdiv.d	$vr7, $vr28, $vr9
	vfsub.d	$vr5, $vr5, $vr7
	vfmadd.d	$vr5, $vr17, $vr5, $vr29
	vfdiv.d	$vr7, $vr30, $vr8
	vfdiv.d	$vr0, $vr0, $vr9
	vfsub.d	$vr0, $vr7, $vr0
	vfmadd.d	$vr0, $vr17, $vr0, $vr10
	vld	$vr7, $sp, 848                  # 16-byte Folded Reload
	vfdiv.d	$vr1, $vr1, $vr7
	vld	$vr8, $sp, 832                  # 16-byte Folded Reload
	vfdiv.d	$vr2, $vr2, $vr8
	vfsub.d	$vr1, $vr1, $vr2
	vreplvei.d	$vr2, $vr17, 1
	vfmadd.d	$vr1, $vr2, $vr1, $vr3
	vfdiv.d	$vr3, $vr6, $vr7
	vfdiv.d	$vr6, $vr11, $vr8
	vfsub.d	$vr3, $vr3, $vr6
	vfmadd.d	$vr2, $vr2, $vr3, $vr4
	fld.d	$fa3, $sp, 1016                 # 8-byte Folded Reload
	movfr2gr.d	$a0, $fa3
	fld.d	$fa3, $sp, 936                  # 8-byte Folded Reload
	movfr2gr.d	$a1, $fa3
	vinsgr2vr.d	$vr3, $a1, 0
	vinsgr2vr.d	$vr3, $a0, 1
	vld	$vr4, $sp, 704                  # 16-byte Folded Reload
	vfsub.d	$vr3, $vr4, $vr3
	vld	$vr4, $sp, 944                  # 16-byte Folded Reload
	vreplvei.d	$vr4, $vr4, 0
	vld	$vr6, $sp, 640                  # 16-byte Folded Reload
	vfmul.d	$vr6, $vr4, $vr6
	vfadd.d	$vr3, $vr3, $vr6
	vld	$vr6, $sp, 544                  # 16-byte Folded Reload
	vfsub.d	$vr3, $vr3, $vr6
	vld	$vr6, $sp, 976                  # 16-byte Folded Reload
	vreplvei.d	$vr6, $vr6, 0
	vld	$vr7, $sp, 528                  # 16-byte Folded Reload
	vfmul.d	$vr7, $vr6, $vr7
	vfadd.d	$vr3, $vr3, $vr7
	vld	$vr7, $sp, 992                  # 16-byte Folded Reload
	vfsub.d	$vr3, $vr3, $vr7
	vld	$vr7, $sp, 880                  # 16-byte Folded Reload
	vfadd.d	$vr3, $vr3, $vr7
	vfsub.d	$vr3, $vr3, $vr27
	vld	$vr7, $sp, 1040                 # 16-byte Folded Reload
	vreplvei.d	$vr7, $vr7, 0
	vfmul.d	$vr7, $vr7, $vr16
	vfadd.d	$vr7, $vr20, $vr7
	vfmul.d	$vr4, $vr4, $vr18
	vfsub.d	$vr4, $vr7, $vr4
	vld	$vr7, $sp, 1056                 # 16-byte Folded Reload
	vreplvei.d	$vr7, $vr7, 0
	vfmul.d	$vr5, $vr7, $vr5
	vfadd.d	$vr4, $vr4, $vr5
	vfmul.d	$vr0, $vr6, $vr0
	vfsub.d	$vr0, $vr4, $vr0
	vfadd.d	$vr0, $vr0, $vr1
	vfsub.d	$vr0, $vr0, $vr2
	vfadd.d	$vr0, $vr3, $vr0
	b	.LBB2_39
.LBB2_38:
	fadd.d	$fa0, $ft11, $fa0
	fneg.d	$fs0, $fa0
	fmul.d	$fs2, $fs5, $fs0
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	fmul.d	$fs0, $fs6, $fs0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vldi	$vr2, -1000
	fld.d	$fa1, $sp, 1072                 # 8-byte Folded Reload
	fdiv.d	$fa1, $fa1, $fa2
	fdiv.d	$fa0, $fa0, $fs6
	fdiv.d	$fa2, $fs1, $fs5
	fsub.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 880                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI2_12)
	fst.d	$fa2, $sp, 992                  # 8-byte Folded Spill
	fdiv.d	$fa0, $fa0, $fs6
	fdiv.d	$fa1, $fs1, $fs5
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fst.d	$fa0, $sp, 816                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	fst.d	$fa0, $sp, 752                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 728                  # 8-byte Folded Spill
	fld.d	$fs4, $s1, %pc_lo12(rootN)
	fdiv.d	$fa2, $fa0, $fs6
	fdiv.d	$fa1, $fs1, $fs5
	fsub.d	$fa0, $fa2, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs4, $fa0
	fst.d	$fa0, $sp, 744                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	fst.d	$fa0, $sp, 672                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 664                  # 8-byte Folded Spill
	fdiv.d	$fa2, $fa0, $fs6
	fdiv.d	$fa1, $fs1, $fs5
	fsub.d	$fa0, $fa2, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs4, $fa0
	fst.d	$fa0, $sp, 656                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 640                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s0, %pc_lo12(N)
	vst	$vr1, $sp, 1072                 # 16-byte Folded Spill
	fst.d	$fa0, $sp, 616                  # 8-byte Folded Spill
	vldi	$vr0, -1016
	fmul.d	$fa0, $fs4, $fa0
	fst.d	$fa0, $sp, 624                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 632                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 584                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 968                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 936                  # 8-byte Folded Spill
	vldi	$vr0, -1000
	fmul.d	$fa0, $fs4, $fa0
	fst.d	$fa0, $sp, 976                  # 8-byte Folded Spill
	vld	$vr0, $sp, 1072                 # 16-byte Folded Reload
	fadd.d	$fa0, $fa0, $fa0
	fst.d	$fa0, $sp, 1024                 # 8-byte Folded Spill
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 928                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 904                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 912                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 864                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 848                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 832                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa2, $sp, 1096                 # 8-byte Folded Reload
	vldi	$vr1, -1000
	fdiv.d	$fa1, $fa2, $fa1
	vst	$vr1, $sp, 592                  # 16-byte Folded Spill
	fdiv.d	$fa0, $fa0, $fs6
	fst.d	$fa0, $sp, 528                  # 8-byte Folded Spill
	fdiv.d	$fa0, $fs1, $fs5
	fst.d	$fa0, $sp, 544                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fdiv.d	$fa0, $fa0, $fs6
	fdiv.d	$fa1, $fs1, $fs5
	fsub.d	$fa0, $fa0, $fa1
	fld.d	$fa1, $sp, 992                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 992                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	fst.d	$fa0, $sp, 576                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 568                  # 8-byte Folded Spill
	fdiv.d	$fa2, $fa0, $fs6
	fdiv.d	$fa1, $fs1, $fs5
	fsub.d	$fa0, $fa2, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs4, $fa0
	fst.d	$fa0, $sp, 704                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	fst.d	$fa0, $sp, 736                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 696                  # 8-byte Folded Spill
	fdiv.d	$fa2, $fa0, $fs6
	fdiv.d	$fa1, $fs1, $fs5
	fsub.d	$fa0, $fa2, $fa1
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fs4, $fa0
	fst.d	$fa0, $sp, 760                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 776                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 768                  # 8-byte Folded Spill
	vldi	$vr0, -896
	fmul.d	$fa0, $fs4, $fa0
	vst	$vr0, $sp, 784                  # 16-byte Folded Spill
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 824                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 808                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 944                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 920                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 872                  # 8-byte Folded Spill
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs7, $fa0
	fmul.d	$fa1, $fs6, $fs6
	fld.d	$fa0, $sp, 728                  # 8-byte Folded Reload
	fdiv.d	$fa3, $fa0, $fa1
	fmul.d	$fa2, $fs5, $fs5
	fld.d	$fa0, $sp, 752                  # 8-byte Folded Reload
	fdiv.d	$fa4, $fa0, $fa2
	fsub.d	$fa3, $fa3, $fa4
	fld.d	$fa6, $sp, 1016                 # 8-byte Folded Reload
	fld.d	$fa0, $sp, 744                  # 8-byte Folded Reload
	fmadd.d	$fa4, $fa3, $fa6, $fa0
	fld.d	$fa0, $sp, 664                  # 8-byte Folded Reload
	fdiv.d	$fa3, $fa0, $fa1
	fld.d	$fa0, $sp, 672                  # 8-byte Folded Reload
	fdiv.d	$fa5, $fa0, $fa2
	fsub.d	$fa3, $fa3, $fa5
	fld.d	$fa0, $sp, 656                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa6, $fa0
	fst.d	$fa0, $sp, 1016                 # 8-byte Folded Spill
	fmul.d	$fa5, $fs5, $fa2
	fmul.d	$fa6, $fs6, $fa1
	fld.d	$ft4, $sp, 616                  # 8-byte Folded Reload
	fdiv.d	$fa7, $ft4, $fa6
	fld.d	$fa0, $sp, 640                  # 8-byte Folded Reload
	fdiv.d	$ft0, $fa0, $fa5
	fsub.d	$fa7, $fa7, $ft0
	fdiv.d	$ft0, $ft4, $fa1
	fdiv.d	$ft1, $fa0, $fa2
	fsub.d	$ft0, $ft0, $ft1
	fneg.d	$ft0, $ft0
	fld.d	$fa3, $sp, 624                  # 8-byte Folded Reload
	fmul.d	$ft0, $fa3, $ft0
	vldi	$vr9, -1024
	fmadd.d	$fa7, $fa7, $ft1, $ft0
	fld.d	$ft6, $sp, 584                  # 8-byte Folded Reload
	fdiv.d	$ft0, $ft6, $fa6
	fld.d	$ft5, $sp, 632                  # 8-byte Folded Reload
	fdiv.d	$ft2, $ft5, $fa5
	fsub.d	$ft0, $ft0, $ft2
	fdiv.d	$ft2, $ft6, $fa1
	fdiv.d	$ft3, $ft5, $fa2
	fsub.d	$ft2, $ft2, $ft3
	fneg.d	$ft2, $ft2
	fmul.d	$ft2, $fa3, $ft2
	fmadd.d	$ft0, $ft0, $ft1, $ft2
	fld.d	$fa3, $sp, 1096                 # 8-byte Folded Reload
	fmul.d	$fa4, $fa3, $fa4
	fld.d	$ft1, $sp, 880                  # 8-byte Folded Reload
	movfr2gr.d	$a0, $ft1
	fld.d	$fa3, $sp, 528                  # 8-byte Folded Reload
	movfr2gr.d	$a1, $fa3
	fld.d	$fa3, $sp, 816                  # 8-byte Folded Reload
	movfr2gr.d	$a2, $fa3
	fld.d	$fa3, $sp, 544                  # 8-byte Folded Reload
	movfr2gr.d	$a3, $fa3
	vinsgr2vr.d	$vr9, $a1, 0
	vinsgr2vr.d	$vr9, $a0, 1
	vinsgr2vr.d	$vr10, $a3, 0
	vinsgr2vr.d	$vr10, $a2, 1
	vfsub.d	$vr9, $vr9, $vr10
	movfr2gr.d	$a0, $fa4
	pcalau12i	$a1, %pc_hi20(.LCPI2_13)
	vld	$vr3, $sp, 592                  # 16-byte Folded Reload
	vori.b	$vr10, $vr3, 0
	vld	$vr4, $a1, %pc_lo12(.LCPI2_13)
	vinsgr2vr.d	$vr10, $a0, 1
	vfadd.d	$vr10, $vr9, $vr10
	vfmul.d	$vr9, $vr9, $vr3
	vshuf.d	$vr4, $vr10, $vr9
	fld.d	$fa3, $sp, 568                  # 8-byte Folded Reload
	movfr2gr.d	$a0, $fa3
	movfr2gr.d	$a1, $ft4
	fld.d	$fa3, $sp, 576                  # 8-byte Folded Reload
	movfr2gr.d	$a2, $fa3
	movfr2gr.d	$a3, $fa0
	vinsgr2vr.d	$vr9, $a0, 0
	vinsgr2vr.d	$vr9, $a1, 1
	movfr2gr.d	$a0, $fs6
	vori.b	$vr10, $vr1, 0
	vinsgr2vr.d	$vr10, $a0, 1
	vfdiv.d	$vr9, $vr9, $vr10
	vinsgr2vr.d	$vr11, $a2, 0
	vinsgr2vr.d	$vr11, $a3, 1
	movfr2gr.d	$a1, $fs5
	vori.b	$vr12, $vr2, 0
	vinsgr2vr.d	$vr12, $a1, 1
	vfdiv.d	$vr11, $vr11, $vr12
	vfsub.d	$vr9, $vr9, $vr11
	movfr2gr.d	$a2, $fa7
	fld.d	$fa0, $sp, 704                  # 8-byte Folded Reload
	movfr2gr.d	$a3, $fa0
	vldi	$vr7, -928
	vld	$vr25, $sp, 1072                # 16-byte Folded Reload
	vpackev.d	$vr11, $vr25, $vr7
	vinsgr2vr.d	$vr7, $a3, 0
	vinsgr2vr.d	$vr7, $a2, 1
	vfmadd.d	$vr7, $vr11, $vr9, $vr7
	fld.d	$fa0, $sp, 696                  # 8-byte Folded Reload
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $ft6
	vinsgr2vr.d	$vr9, $a2, 0
	vinsgr2vr.d	$vr9, $a3, 1
	vfdiv.d	$vr9, $vr9, $vr10
	fld.d	$fa0, $sp, 736                  # 8-byte Folded Reload
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $ft5
	vinsgr2vr.d	$vr10, $a2, 0
	vinsgr2vr.d	$vr10, $a3, 1
	vfdiv.d	$vr10, $vr10, $vr12
	vfsub.d	$vr9, $vr9, $vr10
	movfr2gr.d	$a2, $ft0
	fld.d	$fa0, $sp, 760                  # 8-byte Folded Reload
	movfr2gr.d	$a3, $fa0
	vinsgr2vr.d	$vr8, $a3, 0
	vinsgr2vr.d	$vr8, $a2, 1
	vfmadd.d	$vr8, $vr11, $vr9, $vr8
	fld.d	$ft12, $sp, 936                 # 8-byte Folded Reload
	fdiv.d	$ft1, $ft12, $fa6
	fld.d	$ft10, $sp, 968                 # 8-byte Folded Reload
	fdiv.d	$ft2, $ft10, $fa5
	fsub.d	$ft1, $ft1, $ft2
	fld.d	$fs4, $sp, 904                  # 8-byte Folded Reload
	fdiv.d	$ft2, $fs4, $fa6
	fld.d	$ft14, $sp, 928                 # 8-byte Folded Reload
	fdiv.d	$ft3, $ft14, $fa5
	fsub.d	$ft4, $ft2, $ft3
	fmul.d	$ft2, $fs5, $fa5
	fmul.d	$ft3, $fs6, $fa6
	fld.d	$fs0, $sp, 864                  # 8-byte Folded Reload
	fdiv.d	$ft5, $fs0, $ft3
	fld.d	$ft15, $sp, 912                 # 8-byte Folded Reload
	fdiv.d	$ft6, $ft15, $ft2
	fsub.d	$ft5, $ft5, $ft6
	fld.d	$fs3, $sp, 832                  # 8-byte Folded Reload
	fdiv.d	$ft6, $fs3, $ft3
	fld.d	$fs2, $sp, 848                  # 8-byte Folded Reload
	fdiv.d	$ft7, $fs2, $ft2
	fsub.d	$ft6, $ft6, $ft7
	fneg.d	$ft1, $ft1
	fld.d	$ft7, $sp, 976                  # 8-byte Folded Reload
	fmul.d	$ft9, $ft7, $ft1
	fneg.d	$ft1, $ft4
	fmul.d	$ft11, $ft7, $ft1
	fneg.d	$ft1, $ft5
	fmul.d	$ft8, $ft7, $ft1
	fneg.d	$ft1, $ft6
	fmul.d	$ft1, $ft7, $ft1
	fld.d	$fa3, $sp, 768                  # 8-byte Folded Reload
	fdiv.d	$ft4, $fa3, $fa6
	fld.d	$fa0, $sp, 776                  # 8-byte Folded Reload
	fdiv.d	$ft5, $fa0, $fa5
	fsub.d	$ft6, $ft4, $ft5
	movfr2gr.d	$a2, $fa3
	movfr2gr.d	$a3, $ft12
	movfr2gr.d	$a4, $fa0
	movfr2gr.d	$a5, $ft10
	vinsgr2vr.d	$vr12, $a2, 0
	vinsgr2vr.d	$vr12, $a3, 1
	movfr2gr.d	$a2, $ft3
	vori.b	$vr18, $vr1, 0
	vinsgr2vr.d	$vr18, $a2, 1
	vinsgr2vr.d	$vr13, $a4, 0
	vinsgr2vr.d	$vr13, $a5, 1
	movfr2gr.d	$a2, $ft2
	vori.b	$vr20, $vr2, 0
	vinsgr2vr.d	$vr20, $a2, 1
	vfdiv.d	$vr15, $vr12, $vr18
	vfdiv.d	$vr21, $vr13, $vr20
	vfsub.d	$vr21, $vr15, $vr21
	vldi	$vr15, -1008
	vld	$vr0, $sp, 784                  # 16-byte Folded Reload
	vpackev.d	$vr15, $vr15, $vr0
	movfr2gr.d	$a2, $ft6
	movfr2gr.d	$a3, $ft9
	vinsgr2vr.d	$vr14, $a2, 0
	vinsgr2vr.d	$vr14, $a3, 1
	vfmadd.d	$vr14, $vr21, $vr15, $vr14
	fld.d	$fa0, $sp, 808                  # 8-byte Folded Reload
	fdiv.d	$ft9, $fa0, $fa6
	fmov.d	$fa3, $fs6
	fld.d	$fs6, $sp, 824                  # 8-byte Folded Reload
	fdiv.d	$ft13, $fs6, $fa5
	fsub.d	$ft13, $ft9, $ft13
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fs4
	movfr2gr.d	$a4, $fs6
	movfr2gr.d	$a5, $ft14
	vinsgr2vr.d	$vr17, $a2, 0
	vinsgr2vr.d	$vr17, $a3, 1
	vfdiv.d	$vr22, $vr17, $vr18
	vinsgr2vr.d	$vr18, $a4, 0
	vinsgr2vr.d	$vr18, $a5, 1
	vfdiv.d	$vr20, $vr18, $vr20
	vfsub.d	$vr20, $vr22, $vr20
	movfr2gr.d	$a2, $ft13
	movfr2gr.d	$a3, $ft11
	vinsgr2vr.d	$vr19, $a2, 0
	vinsgr2vr.d	$vr19, $a3, 1
	vfmadd.d	$vr19, $vr20, $vr15, $vr19
	fld.d	$fs4, $sp, 920                  # 8-byte Folded Reload
	fdiv.d	$ft12, $fs4, $ft3
	fld.d	$ft14, $sp, 944                 # 8-byte Folded Reload
	fdiv.d	$ft13, $ft14, $ft2
	fsub.d	$ft12, $ft12, $ft13
	movfr2gr.d	$a3, $fs4
	movfr2gr.d	$a4, $fs0
	movfr2gr.d	$a2, $fa6
	fmul.d	$fa6, $fa3, $ft3
	fmul.d	$ft13, $fs5, $ft2
	movfr2gr.d	$a5, $fa6
	vinsgr2vr.d	$vr6, $a3, 0
	vinsgr2vr.d	$vr6, $a4, 1
	movfr2gr.d	$a4, $ft14
	vinsgr2vr.d	$vr22, $a2, 0
	vinsgr2vr.d	$vr22, $a5, 1
	movfr2gr.d	$a5, $ft15
	vfdiv.d	$vr23, $vr6, $vr22
	movfr2gr.d	$a3, $fa5
	vinsgr2vr.d	$vr5, $a4, 0
	vinsgr2vr.d	$vr5, $a5, 1
	movfr2gr.d	$a4, $ft13
	vinsgr2vr.d	$vr21, $a3, 0
	vinsgr2vr.d	$vr21, $a4, 1
	vfdiv.d	$vr24, $vr5, $vr21
	vfsub.d	$vr23, $vr23, $vr24
	movfr2gr.d	$a4, $ft12
	movfr2gr.d	$a5, $ft8
	vinsgr2vr.d	$vr16, $a4, 0
	vinsgr2vr.d	$vr16, $a5, 1
	vfmadd.d	$vr16, $vr23, $vr15, $vr16
	fdiv.d	$ft3, $fs7, $ft3
	fld.d	$fa0, $sp, 872                  # 8-byte Folded Reload
	fdiv.d	$ft2, $fa0, $ft2
	fsub.d	$ft2, $ft3, $ft2
	movfr2gr.d	$a4, $fs7
	movfr2gr.d	$a5, $fs3
	movfr2gr.d	$a6, $fa0
	vinsgr2vr.d	$vr0, $a4, 0
	vinsgr2vr.d	$vr0, $a5, 1
	vfdiv.d	$vr11, $vr0, $vr22
	movfr2gr.d	$a4, $fs2
	vinsgr2vr.d	$vr20, $a6, 0
	vinsgr2vr.d	$vr20, $a4, 1
	vfdiv.d	$vr21, $vr20, $vr21
	vfsub.d	$vr11, $vr11, $vr21
	movfr2gr.d	$a4, $ft2
	movfr2gr.d	$a5, $ft1
	vinsgr2vr.d	$vr9, $a4, 0
	vinsgr2vr.d	$vr9, $a5, 1
	vfmadd.d	$vr9, $vr11, $vr15, $vr9
	vinsgr2vr.d	$vr10, $a0, 0
	movfr2gr.d	$a0, $fa1
	vinsgr2vr.d	$vr10, $a0, 1
	vfdiv.d	$vr11, $vr12, $vr10
	vinsgr2vr.d	$vr12, $a1, 0
	movfr2gr.d	$a0, $fa2
	vinsgr2vr.d	$vr12, $a0, 1
	vfdiv.d	$vr13, $vr13, $vr12
	vfsub.d	$vr11, $vr11, $vr13
	movfr2gr.d	$a0, $fs1
	fld.d	$ft5, $sp, 1024                 # 8-byte Folded Reload
	movfr2gr.d	$a1, $ft5
	vinsgr2vr.d	$vr13, $a0, 0
	vinsgr2vr.d	$vr13, $a1, 1
	vfmadd.d	$vr11, $vr13, $vr11, $vr14
	vfdiv.d	$vr10, $vr17, $vr10
	vfdiv.d	$vr12, $vr18, $vr12
	vfsub.d	$vr10, $vr10, $vr12
	vfmadd.d	$vr10, $vr13, $vr10, $vr19
	vinsgr2vr.d	$vr1, $a2, 1
	vfdiv.d	$vr6, $vr6, $vr1
	vinsgr2vr.d	$vr2, $a3, 1
	vfdiv.d	$vr5, $vr5, $vr2
	vfsub.d	$vr5, $vr6, $vr5
	vfmadd.d	$vr5, $vr13, $vr5, $vr16
	vfdiv.d	$vr0, $vr0, $vr1
	vfdiv.d	$vr1, $vr20, $vr2
	vfsub.d	$vr0, $vr0, $vr1
	vfmadd.d	$vr0, $vr13, $vr0, $vr9
	fld.d	$fa1, $sp, 1016                 # 8-byte Folded Reload
	movfr2gr.d	$a0, $fa1
	fld.d	$fa1, $sp, 992                  # 8-byte Folded Reload
	movfr2gr.d	$a1, $fa1
	vinsgr2vr.d	$vr1, $a1, 0
	vinsgr2vr.d	$vr1, $a0, 1
	vfsub.d	$vr1, $vr4, $vr1
	vld	$vr2, $sp, 1040                 # 16-byte Folded Reload
	vreplvei.d	$vr2, $vr2, 0
	vfmul.d	$vr2, $vr2, $vr7
	vfadd.d	$vr1, $vr1, $vr2
	vfsub.d	$vr1, $vr1, $vr8
	vld	$vr2, $sp, 1056                 # 16-byte Folded Reload
	vreplvei.d	$vr2, $vr2, 0
	vfmul.d	$vr2, $vr2, $vr11
	vfadd.d	$vr1, $vr1, $vr2
	vfsub.d	$vr1, $vr1, $vr10
	vfadd.d	$vr1, $vr1, $vr5
	vfsub.d	$vr0, $vr1, $vr0
.LBB2_39:
	vreplvei.d	$vr1, $vr0, 0
	vreplvei.d	$vr0, $vr0, 1
	fdiv.d	$fa0, $fa0, $fa1
	fld.d	$fa1, $sp, 1032                 # 8-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $fp, 0
	fld.d	$fs7, $sp, 1104                 # 8-byte Folded Reload
	fld.d	$fs6, $sp, 1112                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1120                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1128                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1136                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1144                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1152                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1160                 # 8-byte Folded Reload
	ld.d	$s3, $sp, 1168                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1176                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1184                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1192                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1200                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1208                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1216
	ret
.LBB2_40:
	move	$a2, $zero
	ori	$a4, $zero, 10
	bnez	$t0, .LBB2_19
	b	.LBB2_32
.LBB2_41:                               # %call.sqrt
	fmov.d	$fa0, $fs0
	move	$s1, $a0
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	b	.LBB2_1
.LBB2_42:                               # %call.sqrt573
	fmov.d	$fa0, $fs0
	move	$s2, $a0
	vst	$vr20, $sp, 976                 # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vld	$vr20, $sp, 976                 # 16-byte Folded Reload
	vld	$vr19, $sp, 1056                # 16-byte Folded Reload
	move	$a0, $s2
	b	.LBB2_36
.Lfunc_end2:
	.size	findratio, .Lfunc_end2-findratio
                                        # -- End function
	.globl	Nterm1                          # -- Begin function Nterm1
	.p2align	5
	.type	Nterm1,@function
Nterm1:                                 # @Nterm1
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs4, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs2, $a0, %pc_lo12(a)
	vldi	$vr0, -784
	fadd.d	$fa0, $fs0, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fa0, $fs2, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs4, $a0, %pc_lo12(c)
	fmov.d	$fs1, $fa0
	fmul.d	$fa0, $fs4, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs0, $fs0
	fmul.d	$fa1, $fs0, $fa1
	fmul.d	$fa1, $fs0, $fa1
	vldi	$vr2, -1000
	fdiv.d	$fa1, $fa1, $fa2
	fdiv.d	$fa0, $fa0, $fs4
	fdiv.d	$fa2, $fs1, $fs2
	fsub.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fs4, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	Nterm1, .Lfunc_end3-Nterm1
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Nterm2
.LCPI4_0:
	.dword	0x3fe5555555555555              # double 0.66666666666666663
	.text
	.globl	Nterm2
	.p2align	5
	.type	Nterm2,@function
Nterm2:                                 # @Nterm2
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs4, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs2, $a0, %pc_lo12(a)
	vldi	$vr0, -784
	fadd.d	$fa0, $fs0, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fa0, $fs2, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs4, $a0, %pc_lo12(c)
	fmov.d	$fs1, $fa0
	fmul.d	$fa0, $fs4, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs0, $fs0
	fmul.d	$fa1, $fs0, $fa1
	fmul.d	$fa2, $fs2, $fs2
	fmul.d	$fa3, $fs4, $fs4
	fdiv.d	$fa3, $fa0, $fa3
	fdiv.d	$fa2, $fs1, $fa2
	fsub.d	$fa2, $fa3, $fa2
	pcalau12i	$a0, %pc_hi20(rootN)
	fld.d	$fa3, $a0, %pc_lo12(rootN)
	fdiv.d	$fa0, $fa0, $fs4
	fdiv.d	$fa4, $fs1, $fs2
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.d	$fa5, $a0, %pc_lo12(.LCPI4_0)
	fsub.d	$fa0, $fa0, $fa4
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fa3, $fa0
	fmadd.d	$fa0, $fa2, $fa5, $fa0
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fs4, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end4:
	.size	Nterm2, .Lfunc_end4-Nterm2
                                        # -- End function
	.globl	Nterm3                          # -- Begin function Nterm3
	.p2align	5
	.type	Nterm3,@function
Nterm3:                                 # @Nterm3
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs4, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs2, $a0, %pc_lo12(a)
	vldi	$vr0, -784
	fadd.d	$fa0, $fs0, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fa0, $fs2, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs4, $a0, %pc_lo12(c)
	fmov.d	$fs1, $fa0
	fmul.d	$fa0, $fs4, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs0, $fs0
	fmul.d	$fa2, $fs2, $fs2
	fmul.d	$fa3, $fs2, $fa2
	fmul.d	$fa4, $fs4, $fs4
	fmul.d	$fa5, $fs4, $fa4
	fdiv.d	$fa5, $fa0, $fa5
	pcalau12i	$a0, %pc_hi20(rootN)
	fld.d	$fa6, $a0, %pc_lo12(rootN)
	fdiv.d	$fa3, $fs1, $fa3
	fsub.d	$fa3, $fa5, $fa3
	vldi	$vr5, -888
	fmul.d	$fa5, $fa6, $fa5
	fdiv.d	$fa4, $fa0, $fa4
	fdiv.d	$fa2, $fs1, $fa2
	fsub.d	$fa2, $fa4, $fa2
	fmul.d	$fa2, $fa5, $fa2
	vldi	$vr4, -1024
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	pcalau12i	$a0, %pc_hi20(N)
	fld.d	$fa3, $a0, %pc_lo12(N)
	fdiv.d	$fa0, $fa0, $fs4
	fdiv.d	$fa4, $fs1, $fs2
	fsub.d	$fa0, $fa0, $fa4
	fmadd.d	$fa0, $fa3, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fs4, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end5:
	.size	Nterm3, .Lfunc_end5-Nterm3
                                        # -- End function
	.globl	Nterm4                          # -- Begin function Nterm4
	.p2align	5
	.type	Nterm4,@function
Nterm4:                                 # @Nterm4
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs4, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs2, $a0, %pc_lo12(a)
	vldi	$vr0, -784
	fadd.d	$fa0, $fs0, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fa0, $fs2, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs4, $a0, %pc_lo12(c)
	fmov.d	$fs1, $fa0
	fmul.d	$fa0, $fs4, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs2, $fs2
	fmul.d	$fa2, $fs2, $fa1
	fmul.d	$fa3, $fs2, $fa2
	fmul.d	$fa4, $fs4, $fs4
	fmul.d	$fa5, $fs4, $fa4
	fmul.d	$fa6, $fs4, $fa5
	fdiv.d	$fa6, $fa0, $fa6
	pcalau12i	$a0, %pc_hi20(rootN)
	fld.d	$fa7, $a0, %pc_lo12(rootN)
	fdiv.d	$fa3, $fs1, $fa3
	fsub.d	$fa3, $fa6, $fa3
	vldi	$vr6, -872
	fmul.d	$fa6, $fa7, $fa6
	fdiv.d	$fa5, $fa0, $fa5
	fdiv.d	$fa2, $fs1, $fa2
	fsub.d	$fa2, $fa5, $fa2
	pcalau12i	$a0, %pc_hi20(N)
	fld.d	$fa5, $a0, %pc_lo12(N)
	fmul.d	$fa2, $fa6, $fa2
	vldi	$vr6, -1008
	fmadd.d	$fa2, $fa3, $fa6, $fa2
	fadd.d	$fa3, $fa5, $fa5
	fdiv.d	$fa0, $fa0, $fa4
	fdiv.d	$fa1, $fs1, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fmadd.d	$fa0, $fa3, $fa0, $fa2
	fmul.d	$fa0, $fs0, $fa0
	fld.d	$fs4, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end6:
	.size	Nterm4, .Lfunc_end6-Nterm4
                                        # -- End function
	.globl	Nterm5                          # -- Begin function Nterm5
	.p2align	5
	.type	Nterm5,@function
Nterm5:                                 # @Nterm5
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs1, $a0, %pc_lo12(a)
	vldi	$vr1, -784
	fadd.d	$fa0, $fa0, $fa1
	fneg.d	$fs2, $fa0
	fmul.d	$fa0, $fs1, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs3, $a0, %pc_lo12(c)
	fmov.d	$fs0, $fa0
	fmul.d	$fa0, $fs3, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs1, $fs1
	fmul.d	$fa1, $fs1, $fa1
	fmul.d	$fa2, $fs1, $fa1
	fmul.d	$fa3, $fs1, $fa2
	fmul.d	$fa4, $fs3, $fs3
	fmul.d	$fa4, $fs3, $fa4
	fmul.d	$fa5, $fs3, $fa4
	fmul.d	$fa6, $fs3, $fa5
	fdiv.d	$fa6, $fa0, $fa6
	pcalau12i	$a0, %pc_hi20(rootN)
	fld.d	$fa7, $a0, %pc_lo12(rootN)
	fdiv.d	$fa3, $fs0, $fa3
	fsub.d	$fa3, $fa6, $fa3
	vldi	$vr6, -872
	fmul.d	$fa6, $fa7, $fa6
	fdiv.d	$fa5, $fa0, $fa5
	fdiv.d	$fa2, $fs0, $fa2
	fsub.d	$fa2, $fa5, $fa2
	pcalau12i	$a0, %pc_hi20(N)
	fld.d	$fa5, $a0, %pc_lo12(N)
	fmul.d	$fa2, $fa6, $fa2
	vldi	$vr6, -1008
	fmadd.d	$fa2, $fa3, $fa6, $fa2
	fadd.d	$fa3, $fa5, $fa5
	fdiv.d	$fa0, $fa0, $fa4
	fdiv.d	$fa1, $fs0, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fmadd.d	$fa0, $fa3, $fa0, $fa2
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end7:
	.size	Nterm5, .Lfunc_end7-Nterm5
                                        # -- End function
	.globl	Dterm1                          # -- Begin function Dterm1
	.p2align	5
	.type	Dterm1,@function
Dterm1:                                 # @Dterm1
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs4, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs2, $a0, %pc_lo12(a)
	vldi	$vr0, -784
	fadd.d	$fa0, $fs0, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fa0, $fs2, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs4, $a0, %pc_lo12(c)
	fmov.d	$fs1, $fa0
	fmul.d	$fa0, $fs4, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs0, $fs0
	fmul.d	$fa1, $fs0, $fa1
	vldi	$vr2, -1000
	fdiv.d	$fa1, $fa1, $fa2
	fdiv.d	$fa0, $fa0, $fs4
	fdiv.d	$fa2, $fs1, $fs2
	fsub.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fs4, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end8:
	.size	Dterm1, .Lfunc_end8-Dterm1
                                        # -- End function
	.globl	Dterm2                          # -- Begin function Dterm2
	.p2align	5
	.type	Dterm2,@function
Dterm2:                                 # @Dterm2
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs4, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs2, $a0, %pc_lo12(a)
	vldi	$vr0, -784
	fadd.d	$fa0, $fs0, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fa0, $fs2, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs4, $a0, %pc_lo12(c)
	fmov.d	$fs1, $fa0
	fmul.d	$fa0, $fs4, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs0, $fs0
	fmul.d	$fa2, $fs2, $fs2
	fmul.d	$fa3, $fs4, $fs4
	fdiv.d	$fa3, $fa0, $fa3
	fdiv.d	$fa2, $fs1, $fa2
	fsub.d	$fa2, $fa3, $fa2
	pcalau12i	$a0, %pc_hi20(rootN)
	fld.d	$fa3, $a0, %pc_lo12(rootN)
	fdiv.d	$fa0, $fa0, $fs4
	fdiv.d	$fa4, $fs1, $fs2
	fsub.d	$fa0, $fa0, $fa4
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fa3, $fa0
	vldi	$vr3, -928
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fs4, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end9:
	.size	Dterm2, .Lfunc_end9-Dterm2
                                        # -- End function
	.globl	Dterm3                          # -- Begin function Dterm3
	.p2align	5
	.type	Dterm3,@function
Dterm3:                                 # @Dterm3
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs4, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs2, $a0, %pc_lo12(a)
	vldi	$vr0, -784
	fadd.d	$fa0, $fs0, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fa0, $fs2, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs4, $a0, %pc_lo12(c)
	fmov.d	$fs1, $fa0
	fmul.d	$fa0, $fs4, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs2, $fs2
	fmul.d	$fa2, $fs2, $fa1
	fmul.d	$fa3, $fs4, $fs4
	fmul.d	$fa4, $fs4, $fa3
	fdiv.d	$fa4, $fa0, $fa4
	fdiv.d	$fa2, $fs1, $fa2
	fsub.d	$fa2, $fa4, $fa2
	pcalau12i	$a0, %pc_hi20(rootN)
	fld.d	$fa4, $a0, %pc_lo12(rootN)
	fdiv.d	$fa3, $fa0, $fa3
	fdiv.d	$fa1, $fs1, $fa1
	fsub.d	$fa1, $fa3, $fa1
	vldi	$vr3, -896
	fmul.d	$fa3, $fa4, $fa3
	fmadd.d	$fa1, $fa3, $fa1, $fa2
	pcalau12i	$a0, %pc_hi20(N)
	fld.d	$fa2, $a0, %pc_lo12(N)
	fdiv.d	$fa0, $fa0, $fs4
	fdiv.d	$fa3, $fs1, $fs2
	fsub.d	$fa0, $fa0, $fa3
	fmadd.d	$fa0, $fa2, $fa0, $fa1
	fmul.d	$fa0, $fs0, $fa0
	fld.d	$fs4, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end10:
	.size	Dterm3, .Lfunc_end10-Dterm3
                                        # -- End function
	.globl	Dterm4                          # -- Begin function Dterm4
	.p2align	5
	.type	Dterm4,@function
Dterm4:                                 # @Dterm4
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs1, $a0, %pc_lo12(a)
	vldi	$vr1, -784
	fadd.d	$fa0, $fa0, $fa1
	fneg.d	$fs2, $fa0
	fmul.d	$fa0, $fs1, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs3, $a0, %pc_lo12(c)
	fmov.d	$fs0, $fa0
	fmul.d	$fa0, $fs3, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs1, $fs1
	fmul.d	$fa2, $fs1, $fa1
	fmul.d	$fa3, $fs1, $fa2
	fmul.d	$fa4, $fs3, $fs3
	fmul.d	$fa5, $fs3, $fa4
	fmul.d	$fa6, $fs3, $fa5
	fdiv.d	$fa6, $fa0, $fa6
	fdiv.d	$fa3, $fs0, $fa3
	fsub.d	$fa3, $fa6, $fa3
	pcalau12i	$a0, %pc_hi20(rootN)
	fld.d	$fa6, $a0, %pc_lo12(rootN)
	fdiv.d	$fa5, $fa0, $fa5
	fdiv.d	$fa2, $fs0, $fa2
	fsub.d	$fa2, $fa5, $fa2
	vldi	$vr5, -896
	fmul.d	$fa5, $fa6, $fa5
	fmadd.d	$fa2, $fa5, $fa2, $fa3
	pcalau12i	$a0, %pc_hi20(N)
	fld.d	$fa3, $a0, %pc_lo12(N)
	fdiv.d	$fa0, $fa0, $fa4
	fdiv.d	$fa1, $fs0, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fmadd.d	$fa0, $fa3, $fa0, $fa2
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end11:
	.size	Dterm4, .Lfunc_end11-Dterm4
                                        # -- End function
	.globl	NNterm1                         # -- Begin function NNterm1
	.p2align	5
	.type	NNterm1,@function
NNterm1:                                # @NNterm1
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs4, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs2, $a0, %pc_lo12(a)
	vldi	$vr0, -784
	fadd.d	$fa0, $fs0, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fa0, $fs2, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs4, $a0, %pc_lo12(c)
	fmov.d	$fs1, $fa0
	fmul.d	$fa0, $fs4, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs0, $fs0
	fmul.d	$fa1, $fs0, $fa1
	fmul.d	$fa1, $fs0, $fa1
	vldi	$vr2, -872
	fdiv.d	$fa1, $fa1, $fa2
	fdiv.d	$fa0, $fa0, $fs4
	fdiv.d	$fa2, $fs1, $fs2
	fsub.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fs4, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end12:
	.size	NNterm1, .Lfunc_end12-NNterm1
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function NNterm2
.LCPI13_0:
	.dword	0xbfe5555555555555              # double -0.66666666666666663
	.text
	.globl	NNterm2
	.p2align	5
	.type	NNterm2,@function
NNterm2:                                # @NNterm2
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs4, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs2, $a0, %pc_lo12(a)
	vldi	$vr0, -784
	fadd.d	$fa0, $fs0, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fa0, $fs2, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs4, $a0, %pc_lo12(c)
	fmov.d	$fs1, $fa0
	fmul.d	$fa0, $fs4, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs0, $fs0
	fmul.d	$fa1, $fs0, $fa1
	fmul.d	$fa2, $fs2, $fs2
	fmul.d	$fa3, $fs4, $fs4
	fdiv.d	$fa3, $fa0, $fa3
	fdiv.d	$fa2, $fs1, $fa2
	fsub.d	$fa2, $fa3, $fa2
	pcalau12i	$a0, %pc_hi20(rootN)
	fld.d	$fa3, $a0, %pc_lo12(rootN)
	fdiv.d	$fa0, $fa0, $fs4
	pcalau12i	$a0, %pc_hi20(.LCPI13_0)
	fld.d	$fa4, $a0, %pc_lo12(.LCPI13_0)
	fdiv.d	$fa5, $fs1, $fs2
	fsub.d	$fa0, $fa0, $fa5
	fmul.d	$fa0, $fa3, $fa0
	fmadd.d	$fa0, $fa2, $fa4, $fa0
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fs4, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end13:
	.size	NNterm2, .Lfunc_end13-NNterm2
                                        # -- End function
	.globl	NNterm3                         # -- Begin function NNterm3
	.p2align	5
	.type	NNterm3,@function
NNterm3:                                # @NNterm3
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs4, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs2, $a0, %pc_lo12(a)
	vldi	$vr0, -784
	fadd.d	$fa0, $fs0, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fa0, $fs2, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs4, $a0, %pc_lo12(c)
	fmov.d	$fs1, $fa0
	fmul.d	$fa0, $fs4, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs0, $fs0
	fmul.d	$fa2, $fs2, $fs2
	fmul.d	$fa3, $fs2, $fa2
	fmul.d	$fa4, $fs4, $fs4
	fmul.d	$fa5, $fs4, $fa4
	fdiv.d	$fa5, $fa0, $fa5
	pcalau12i	$a0, %pc_hi20(rootN)
	fld.d	$fa6, $a0, %pc_lo12(rootN)
	fdiv.d	$fa3, $fs1, $fa3
	fsub.d	$fa3, $fa5, $fa3
	vldi	$vr5, -1016
	fmul.d	$fa5, $fa6, $fa5
	fdiv.d	$fa4, $fa0, $fa4
	fdiv.d	$fa2, $fs1, $fa2
	fsub.d	$fa2, $fa4, $fa2
	fmul.d	$fa2, $fa5, $fa2
	vldi	$vr4, -896
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	pcalau12i	$a0, %pc_hi20(N)
	fld.d	$fa3, $a0, %pc_lo12(N)
	fdiv.d	$fa0, $fa0, $fs4
	fdiv.d	$fa5, $fs1, $fs2
	fsub.d	$fa0, $fa0, $fa5
	fmul.d	$fa3, $fa3, $fa4
	fmadd.d	$fa0, $fa3, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fs4, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end14:
	.size	NNterm3, .Lfunc_end14-NNterm3
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function NNterm4
.LCPI15_0:
	.dword	0x3ff5555555555555              # double 1.3333333333333333
	.text
	.globl	NNterm4
	.p2align	5
	.type	NNterm4,@function
NNterm4:                                # @NNterm4
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs4, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs2, $a0, %pc_lo12(a)
	vldi	$vr0, -784
	fadd.d	$fa0, $fs0, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fa0, $fs2, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs4, $a0, %pc_lo12(c)
	fmov.d	$fs1, $fa0
	fmul.d	$fa0, $fs4, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs2, $fs2
	fmul.d	$fa2, $fs2, $fa1
	fmul.d	$fa3, $fs2, $fa2
	fmul.d	$fa4, $fs4, $fs4
	fmul.d	$fa5, $fs4, $fa4
	fmul.d	$fa6, $fs4, $fa5
	fdiv.d	$fa6, $fa0, $fa6
	pcalau12i	$a0, %pc_hi20(rootN)
	fld.d	$fa7, $a0, %pc_lo12(rootN)
	fdiv.d	$fa3, $fs1, $fa3
	fsub.d	$fa3, $fa6, $fa3
	vldi	$vr6, -1000
	fmul.d	$fa6, $fa7, $fa6
	fdiv.d	$fa5, $fa0, $fa5
	fdiv.d	$fa2, $fs1, $fa2
	fsub.d	$fa2, $fa5, $fa2
	fmul.d	$fa2, $fa6, $fa2
	vldi	$vr5, -880
	fmadd.d	$fa2, $fa3, $fa5, $fa2
	pcalau12i	$a0, %pc_hi20(N)
	fld.d	$fa3, $a0, %pc_lo12(N)
	fdiv.d	$fa4, $fa0, $fa4
	fdiv.d	$fa1, $fs1, $fa1
	pcalau12i	$a0, %pc_hi20(.LCPI15_0)
	fld.d	$fa6, $a0, %pc_lo12(.LCPI15_0)
	fsub.d	$fa1, $fa4, $fa1
	fmul.d	$fa4, $fa3, $fa5
	fmadd.d	$fa1, $fa4, $fa1, $fa2
	fmul.d	$fa2, $fa3, $fa6
	fmul.d	$fa2, $fa7, $fa2
	fdiv.d	$fa0, $fa0, $fs4
	fdiv.d	$fa3, $fs1, $fs2
	fsub.d	$fa0, $fa0, $fa3
	fmadd.d	$fa0, $fa2, $fa0, $fa1
	fmul.d	$fa0, $fs0, $fa0
	fld.d	$fs4, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end15:
	.size	NNterm4, .Lfunc_end15-NNterm4
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function NNterm5
.LCPI16_0:
	.dword	0x3ff5555555555555              # double 1.3333333333333333
	.text
	.globl	NNterm5
	.p2align	5
	.type	NNterm5,@function
NNterm5:                                # @NNterm5
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs1, $a0, %pc_lo12(a)
	vldi	$vr1, -784
	fadd.d	$fa0, $fa0, $fa1
	fneg.d	$fs2, $fa0
	fmul.d	$fa0, $fs1, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs3, $a0, %pc_lo12(c)
	fmov.d	$fs0, $fa0
	fmul.d	$fa0, $fs3, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs1, $fs1
	fmul.d	$fa2, $fs1, $fa1
	fmul.d	$fa3, $fs1, $fa2
	fmul.d	$fa4, $fs1, $fa3
	fmul.d	$fa5, $fs3, $fs3
	fmul.d	$fa6, $fs3, $fa5
	fmul.d	$fa7, $fs3, $fa6
	fmul.d	$ft0, $fs3, $fa7
	fdiv.d	$ft0, $fa0, $ft0
	pcalau12i	$a0, %pc_hi20(rootN)
	fld.d	$ft1, $a0, %pc_lo12(rootN)
	fdiv.d	$fa4, $fs0, $fa4
	fsub.d	$fa4, $ft0, $fa4
	vldi	$vr8, -1000
	fmul.d	$ft0, $ft1, $ft0
	fdiv.d	$fa7, $fa0, $fa7
	fdiv.d	$fa3, $fs0, $fa3
	fsub.d	$fa3, $fa7, $fa3
	fmul.d	$fa3, $ft0, $fa3
	vldi	$vr7, -880
	fmadd.d	$fa3, $fa4, $fa7, $fa3
	pcalau12i	$a0, %pc_hi20(N)
	fld.d	$fa4, $a0, %pc_lo12(N)
	fdiv.d	$fa6, $fa0, $fa6
	fdiv.d	$fa2, $fs0, $fa2
	pcalau12i	$a0, %pc_hi20(.LCPI16_0)
	fld.d	$ft0, $a0, %pc_lo12(.LCPI16_0)
	fsub.d	$fa2, $fa6, $fa2
	fmul.d	$fa6, $fa4, $fa7
	fmadd.d	$fa2, $fa6, $fa2, $fa3
	fmul.d	$fa3, $fa4, $ft0
	fmul.d	$fa3, $ft1, $fa3
	fdiv.d	$fa0, $fa0, $fa5
	fdiv.d	$fa1, $fs0, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fmadd.d	$fa0, $fa3, $fa0, $fa2
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end16:
	.size	NNterm5, .Lfunc_end16-NNterm5
                                        # -- End function
	.globl	DDterm1                         # -- Begin function DDterm1
	.p2align	5
	.type	DDterm1,@function
DDterm1:                                # @DDterm1
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs4, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs2, $a0, %pc_lo12(a)
	vldi	$vr0, -784
	fadd.d	$fa0, $fs0, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fa0, $fs2, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs4, $a0, %pc_lo12(c)
	fmov.d	$fs1, $fa0
	fmul.d	$fa0, $fs4, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs0, $fs0
	fmul.d	$fa1, $fs0, $fa1
	vldi	$vr2, -872
	fdiv.d	$fa1, $fa1, $fa2
	fdiv.d	$fa0, $fa0, $fs4
	fdiv.d	$fa2, $fs1, $fs2
	fsub.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fs4, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end17:
	.size	DDterm1, .Lfunc_end17-DDterm1
                                        # -- End function
	.globl	DDterm2                         # -- Begin function DDterm2
	.p2align	5
	.type	DDterm2,@function
DDterm2:                                # @DDterm2
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs4, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs2, $a0, %pc_lo12(a)
	vldi	$vr0, -784
	fadd.d	$fa0, $fs0, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fa0, $fs2, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs4, $a0, %pc_lo12(c)
	fmov.d	$fs1, $fa0
	fmul.d	$fa0, $fs4, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs0, $fs0
	fmul.d	$fa2, $fs2, $fs2
	fmul.d	$fa3, $fs4, $fs4
	fdiv.d	$fa3, $fa0, $fa3
	fdiv.d	$fa2, $fs1, $fa2
	fsub.d	$fa2, $fa3, $fa2
	pcalau12i	$a0, %pc_hi20(rootN)
	fld.d	$fa3, $a0, %pc_lo12(rootN)
	fdiv.d	$fa0, $fa0, $fs4
	fdiv.d	$fa4, $fs1, $fs2
	fsub.d	$fa0, $fa0, $fa4
	fmul.d	$fa0, $fa3, $fa0
	vldi	$vr3, -800
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fs4, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end18:
	.size	DDterm2, .Lfunc_end18-DDterm2
                                        # -- End function
	.globl	DDterm3                         # -- Begin function DDterm3
	.p2align	5
	.type	DDterm3,@function
DDterm3:                                # @DDterm3
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs4, $sp, 0                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs2, $a0, %pc_lo12(a)
	vldi	$vr0, -784
	fadd.d	$fa0, $fs0, $fa0
	fneg.d	$fs3, $fa0
	fmul.d	$fa0, $fs2, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs4, $a0, %pc_lo12(c)
	fmov.d	$fs1, $fa0
	fmul.d	$fa0, $fs4, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs2, $fs2
	fmul.d	$fa2, $fs2, $fa1
	fmul.d	$fa3, $fs4, $fs4
	fmul.d	$fa4, $fs4, $fa3
	pcalau12i	$a0, %pc_hi20(rootN)
	fld.d	$fa5, $a0, %pc_lo12(rootN)
	fdiv.d	$fa4, $fa0, $fa4
	fdiv.d	$fa2, $fs1, $fa2
	fsub.d	$fa2, $fa4, $fa2
	fadd.d	$fa4, $fa5, $fa5
	fdiv.d	$fa3, $fa0, $fa3
	fdiv.d	$fa1, $fs1, $fa1
	fsub.d	$fa1, $fa3, $fa1
	fmsub.d	$fa1, $fa4, $fa1, $fa2
	pcalau12i	$a0, %pc_hi20(N)
	fld.d	$fa2, $a0, %pc_lo12(N)
	fdiv.d	$fa0, $fa0, $fs4
	fdiv.d	$fa3, $fs1, $fs2
	fsub.d	$fa0, $fa0, $fa3
	vldi	$vr3, -896
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa0, $fa2, $fa0, $fa1
	fmul.d	$fa0, $fs0, $fa0
	fld.d	$fs4, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end19:
	.size	DDterm3, .Lfunc_end19-DDterm3
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function DDterm4
.LCPI20_0:
	.dword	0x3ff5555555555555              # double 1.3333333333333333
	.text
	.globl	DDterm4
	.p2align	5
	.type	DDterm4,@function
DDterm4:                                # @DDterm4
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(a)
	fld.d	$fs1, $a0, %pc_lo12(a)
	vldi	$vr1, -784
	fadd.d	$fa0, $fa0, $fa1
	fneg.d	$fs2, $fa0
	fmul.d	$fa0, $fs1, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(c)
	fld.d	$fs3, $a0, %pc_lo12(c)
	fmov.d	$fs0, $fa0
	fmul.d	$fa0, $fs3, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs1, $fs1
	fmul.d	$fa2, $fs1, $fa1
	fmul.d	$fa3, $fs1, $fa2
	fmul.d	$fa4, $fs3, $fs3
	fmul.d	$fa5, $fs3, $fa4
	fmul.d	$fa6, $fs3, $fa5
	pcalau12i	$a0, %pc_hi20(rootN)
	fld.d	$fa7, $a0, %pc_lo12(rootN)
	fdiv.d	$fa6, $fa0, $fa6
	fdiv.d	$fa3, $fs0, $fa3
	fsub.d	$fa3, $fa6, $fa3
	fadd.d	$fa6, $fa7, $fa7
	fdiv.d	$fa5, $fa0, $fa5
	fdiv.d	$fa2, $fs0, $fa2
	fsub.d	$fa2, $fa5, $fa2
	fmsub.d	$fa2, $fa6, $fa2, $fa3
	pcalau12i	$a0, %pc_hi20(N)
	fld.d	$fa3, $a0, %pc_lo12(N)
	fdiv.d	$fa4, $fa0, $fa4
	fdiv.d	$fa1, $fs0, $fa1
	fsub.d	$fa1, $fa4, $fa1
	pcalau12i	$a0, %pc_hi20(.LCPI20_0)
	fld.d	$fa4, $a0, %pc_lo12(.LCPI20_0)
	vldi	$vr5, -896
	fmul.d	$fa5, $fa3, $fa5
	fmadd.d	$fa1, $fa5, $fa1, $fa2
	fmul.d	$fa2, $fa3, $fa4
	fmul.d	$fa2, $fa7, $fa2
	fdiv.d	$fa0, $fa0, $fs3
	fdiv.d	$fa3, $fs0, $fs1
	fsub.d	$fa0, $fa0, $fa3
	fmadd.d	$fa0, $fa2, $fa0, $fa1
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end20:
	.size	DDterm4, .Lfunc_end20-DDterm4
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function getptree
.LCPI21_0:
	.dword	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
	.text
	.globl	getptree
	.p2align	5
	.type	getptree,@function
getptree:                               # @getptree
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a0
	ori	$a0, $zero, 1
	addi.d	$s1, $s0, 1
	blt	$a1, $a0, .LBB21_9
# %bb.1:                                # %.lr.ph
	ori	$a2, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a1, $a2, .LBB21_5
# %bb.2:                                # %vector.ph
	bstrpick.d	$a0, $a1, 30, 3
	slli.w	$a2, $a0, 3
	srli.d	$a3, $a1, 3
	ori	$a0, $zero, 1
	bstrins.d	$a0, $a3, 30, 3
	vrepli.w	$vr0, 1
	vreplgr2vr.w	$vr1, $s1
	move	$a3, $a2
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB21_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vmul.w	$vr0, $vr0, $vr1
	addi.w	$a3, $a3, -8
	vmul.w	$vr2, $vr2, $vr1
	bnez	$a3, .LBB21_3
# %bb.4:                                # %middle.block
	vmul.w	$vr0, $vr2, $vr0
	vreplvei.d	$vr1, $vr0, 1
	vmul.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmul.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a3, $vr0, 0
	beq	$a1, $a2, .LBB21_7
.LBB21_5:                               # %scalar.ph.preheader
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 1
	.p2align	4, , 16
.LBB21_6:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a0, $a0, -1
	mul.d	$a3, $a3, $s1
	bnez	$a0, .LBB21_6
.LBB21_7:                               # %._crit_edge
	addi.w	$a0, $a3, -1
	ori	$a4, $zero, 1
	div.w	$s2, $a0, $s0
	bne	$a1, $a4, .LBB21_10
# %bb.8:
	move	$a0, $zero
	b	.LBB21_17
.LBB21_9:
	move	$s2, $zero
	move	$a0, $zero
	b	.LBB21_17
.LBB21_10:                              # %.lr.ph91
	ori	$a2, $zero, 9
	ori	$a0, $zero, 1
	bltu	$a1, $a2, .LBB21_14
# %bb.11:                               # %vector.ph168
	addi.w	$a2, $a1, -1
	move	$a3, $a2
	bstrins.d	$a3, $zero, 2, 0
	ori	$a4, $zero, 1
	move	$a0, $a2
	bstrins.d	$a0, $a4, 2, 0
	vrepli.w	$vr0, 1
	vreplgr2vr.w	$vr1, $s1
	move	$a4, $a3
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB21_12:                              # %vector.body173
                                        # =>This Inner Loop Header: Depth=1
	vmul.w	$vr0, $vr0, $vr1
	addi.w	$a4, $a4, -8
	vmul.w	$vr2, $vr2, $vr1
	bnez	$a4, .LBB21_12
# %bb.13:                               # %middle.block178
	vmul.w	$vr0, $vr2, $vr0
	vreplvei.d	$vr1, $vr0, 1
	vmul.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmul.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a4, $vr0, 0
	beq	$a2, $a3, .LBB21_16
.LBB21_14:                              # %scalar.ph166.preheader
	sub.d	$a0, $a1, $a0
	.p2align	4, , 16
.LBB21_15:                              # %scalar.ph166
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a0, $a0, -1
	mul.d	$a4, $a4, $s1
	bnez	$a0, .LBB21_15
.LBB21_16:                              # %._crit_edge92.loopexit
	addi.w	$a0, $a4, -1
.LBB21_17:                              # %._crit_edge92
	div.w	$s3, $a0, $s0
	addi.w	$a0, $s2, 1
	slli.d	$a0, $a0, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.w	$s0, $a0, 16
	lu52i.d	$a1, $zero, 1023
	ori	$a2, $zero, 1
	st.d	$a1, $a0, 24
	blt	$s3, $a2, .LBB21_51
# %bb.18:                               # %.lr.ph105
	bltz	$s0, .LBB21_51
# %bb.19:                               # %.lr.ph100.preheader
	addi.d	$a1, $s3, 1
	bstrpick.d	$a1, $a1, 31, 0
	ori	$a2, $zero, 1
	movgr2fr.d	$fa0, $zero
	ori	$a3, $zero, 1
	b	.LBB21_21
	.p2align	4, , 16
.LBB21_20:                              # %._crit_edge101
                                        #   in Loop: Header=BB21_21 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $a1, .LBB21_51
.LBB21_21:                              # %.lr.ph100
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_26 Depth 2
                                        #       Child Loop BB21_35 Depth 3
                                        #       Child Loop BB21_37 Depth 3
                                        #       Child Loop BB21_30 Depth 3
                                        #       Child Loop BB21_32 Depth 3
                                        #       Child Loop BB21_46 Depth 3
                                        #       Child Loop BB21_49 Depth 3
                                        #       Child Loop BB21_42 Depth 3
                                        #       Child Loop BB21_44 Depth 3
	move	$t3, $zero
	mul.d	$a4, $s1, $a3
	slli.d	$a5, $a3, 4
	ldx.w	$t0, $a0, $a5
	sub.d	$a4, $a4, $s0
	alsl.d	$a5, $a3, $a0, 4
	ori	$a6, $zero, 1
	move	$a7, $fp
	move	$t1, $s0
	b	.LBB21_26
.LBB21_22:                              #   in Loop: Header=BB21_26 Depth=2
	vldi	$vr4, -912
.LBB21_23:                              # %factorial.exit31.i14.i
                                        #   in Loop: Header=BB21_26 Depth=2
	fdiv.d	$fa3, $fa3, $fa4
.LBB21_24:                              # %combination.exit37.i
                                        #   in Loop: Header=BB21_26 Depth=2
	fmul.d	$fa2, $fa2, $fa3
.LBB21_25:                              # %probability.exit
                                        #   in Loop: Header=BB21_26 Depth=2
	alsl.d	$t3, $a4, $a0, 4
	fmul.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $t3, 8
	addi.w	$t3, $t2, 1
	addi.d	$t1, $t1, -1
	addi.w	$a7, $a7, -1
	addi.d	$a6, $a6, 1
	beq	$s0, $t2, .LBB21_20
.LBB21_26:                              #   Parent Loop BB21_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB21_35 Depth 3
                                        #       Child Loop BB21_37 Depth 3
                                        #       Child Loop BB21_30 Depth 3
                                        #       Child Loop BB21_32 Depth 3
                                        #       Child Loop BB21_46 Depth 3
                                        #       Child Loop BB21_49 Depth 3
                                        #       Child Loop BB21_42 Depth 3
                                        #       Child Loop BB21_44 Depth 3
	move	$t2, $t3
	addi.w	$a4, $a4, 1
	add.d	$t0, $t0, $t3
	slli.d	$t3, $a4, 4
	stx.w	$t0, $a0, $t3
	ld.w	$t0, $a5, 0
	fld.d	$fa1, $a5, 8
	add.w	$t3, $t0, $t2
	fmov.d	$fa2, $fa0
	blt	$fp, $t3, .LBB21_25
# %bb.27:                               #   in Loop: Header=BB21_26 Depth=2
	sub.w	$t3, $s0, $t2
	vldi	$vr2, -912
	sub.w	$t4, $t0, $t3
	bge	$t3, $t4, .LBB21_33
# %bb.28:                               # %.preheader.i.i
                                        #   in Loop: Header=BB21_26 Depth=2
	blt	$t3, $a2, .LBB21_39
# %bb.29:                               # %.lr.ph40.i.i.preheader
                                        #   in Loop: Header=BB21_26 Depth=2
	move	$t4, $t0
	move	$t5, $t1
	.p2align	4, , 16
.LBB21_30:                              # %.lr.ph40.i.i
                                        #   Parent Loop BB21_21 Depth=1
                                        #     Parent Loop BB21_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movgr2fr.w	$fa3, $t4
	ffint.d.w	$fa3, $fa3
	fmul.d	$fa2, $fa2, $fa3
	addi.w	$t5, $t5, -1
	addi.w	$t4, $t4, -1
	bnez	$t5, .LBB21_30
# %bb.31:                               # %.lr.ph.i.i.i.preheader
                                        #   in Loop: Header=BB21_26 Depth=2
	vldi	$vr3, -912
	.p2align	4, , 16
.LBB21_32:                              # %.lr.ph.i.i.i
                                        #   Parent Loop BB21_21 Depth=1
                                        #     Parent Loop BB21_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$t4, $t3
	bstrpick.d	$t3, $t3, 31, 0
	movgr2fr.d	$fa4, $t3
	ffint.d.l	$fa4, $fa4
	fmul.d	$fa3, $fa3, $fa4
	addi.w	$t3, $t4, -1
	bltu	$a2, $t4, .LBB21_32
	b	.LBB21_38
	.p2align	4, , 16
.LBB21_33:                              # %.preheader32.i.i
                                        #   in Loop: Header=BB21_26 Depth=2
	bge	$t3, $t0, .LBB21_36
# %bb.34:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB21_26 Depth=2
	move	$t5, $t0
	.p2align	4, , 16
.LBB21_35:                              # %.lr.ph.i.i
                                        #   Parent Loop BB21_21 Depth=1
                                        #     Parent Loop BB21_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movgr2fr.w	$fa3, $t5
	ffint.d.w	$fa3, $fa3
	addi.w	$t5, $t5, -1
	fmul.d	$fa2, $fa2, $fa3
	blt	$t3, $t5, .LBB21_35
.LBB21_36:                              # %._crit_edge.i.i
                                        #   in Loop: Header=BB21_26 Depth=2
	vldi	$vr3, -912
	blt	$t4, $a2, .LBB21_38
	.p2align	4, , 16
.LBB21_37:                              # %.lr.ph.i28.i.i
                                        #   Parent Loop BB21_21 Depth=1
                                        #     Parent Loop BB21_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$t3, $t4
	bstrpick.d	$t4, $t4, 31, 0
	movgr2fr.d	$fa4, $t4
	ffint.d.l	$fa4, $fa4
	fmul.d	$fa3, $fa3, $fa4
	addi.w	$t4, $t3, -1
	bltu	$a2, $t3, .LBB21_37
.LBB21_38:                              # %factorial.exit31.i.i
                                        #   in Loop: Header=BB21_26 Depth=2
	fdiv.d	$fa2, $fa2, $fa3
.LBB21_39:                              # %combination.exit.i
                                        #   in Loop: Header=BB21_26 Depth=2
	sub.w	$t3, $fp, $t0
	sub.w	$t4, $t3, $t2
	bge	$t2, $t4, .LBB21_45
# %bb.40:                               # %.preheader.i24.i
                                        #   in Loop: Header=BB21_26 Depth=2
	beqz	$t2, .LBB21_50
# %bb.41:                               # %.lr.ph40.i29.i.preheader
                                        #   in Loop: Header=BB21_26 Depth=2
	move	$t4, $zero
	vldi	$vr3, -912
	.p2align	4, , 16
.LBB21_42:                              # %.lr.ph40.i29.i
                                        #   Parent Loop BB21_21 Depth=1
                                        #     Parent Loop BB21_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t5, $t3, $t4
	movgr2fr.w	$fa4, $t5
	ffint.d.w	$fa4, $fa4
	addi.w	$t4, $t4, -1
	add.w	$t5, $t2, $t4
	fmul.d	$fa3, $fa3, $fa4
	bnez	$t5, .LBB21_42
# %bb.43:                               # %.lr.ph.i.i34.i.preheader
                                        #   in Loop: Header=BB21_26 Depth=2
	vldi	$vr4, -912
	move	$t3, $a6
	.p2align	4, , 16
.LBB21_44:                              # %.lr.ph.i.i34.i
                                        #   Parent Loop BB21_21 Depth=1
                                        #     Parent Loop BB21_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$t3, $t3, -1
	bstrpick.d	$t4, $t3, 31, 0
	movgr2fr.d	$fa5, $t4
	ffint.d.l	$fa5, $fa5
	fmul.d	$fa4, $fa4, $fa5
	bltu	$a2, $t3, .LBB21_44
	b	.LBB21_23
	.p2align	4, , 16
.LBB21_45:                              # %.preheader32.i10.i
                                        #   in Loop: Header=BB21_26 Depth=2
	vldi	$vr3, -912
	bge	$t2, $t3, .LBB21_47
	.p2align	4, , 16
.LBB21_46:                              # %.lr.ph.i20.i
                                        #   Parent Loop BB21_21 Depth=1
                                        #     Parent Loop BB21_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movgr2fr.w	$fa4, $t3
	ffint.d.w	$fa4, $fa4
	addi.w	$t3, $t3, -1
	fmul.d	$fa3, $fa3, $fa4
	blt	$t2, $t3, .LBB21_46
.LBB21_47:                              # %._crit_edge.i12.i
                                        #   in Loop: Header=BB21_26 Depth=2
	blt	$t4, $a2, .LBB21_22
# %bb.48:                               # %.lr.ph.i28.i17.i.preheader
                                        #   in Loop: Header=BB21_26 Depth=2
	sub.w	$t3, $zero, $t0
	vldi	$vr4, -912
	.p2align	4, , 16
.LBB21_49:                              # %.lr.ph.i28.i17.i
                                        #   Parent Loop BB21_21 Depth=1
                                        #     Parent Loop BB21_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t4, $a7, $t3
	bstrpick.d	$t4, $t4, 31, 0
	movgr2fr.d	$fa5, $t4
	ffint.d.l	$fa5, $fa5
	addi.w	$t3, $t3, -1
	add.d	$t4, $a7, $t3
	addi.w	$t4, $t4, 1
	fmul.d	$fa4, $fa4, $fa5
	bltu	$a2, $t4, .LBB21_49
	b	.LBB21_23
.LBB21_50:                              #   in Loop: Header=BB21_26 Depth=2
	vldi	$vr3, -912
	b	.LBB21_24
.LBB21_51:                              # %.preheader77
	movgr2fr.d	$fs0, $zero
	fmov.d	$fs1, $fs0
	fmov.d	$fs2, $fs0
	bge	$s3, $s2, .LBB21_56
# %bb.52:                               # %.lr.ph109.preheader
	alsl.d	$a2, $s3, $a0, 4
	addi.d	$a3, $a2, 24
	sub.d	$a1, $s2, $s3
	movgr2fr.d	$fs1, $zero
	move	$a4, $a1
	.p2align	4, , 16
.LBB21_53:                              # %.lr.ph109
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, -8
	fld.d	$fa0, $a3, 0
	movgr2fr.w	$fa1, $a5
	ffint.d.w	$fa1, $fa1
	fmadd.d	$fs1, $fa1, $fa0, $fs1
	addi.w	$a4, $a4, -1
	addi.d	$a3, $a3, 16
	bnez	$a4, .LBB21_53
# %bb.54:                               # %.lr.ph114.preheader
	addi.d	$a2, $a2, 24
	movgr2fr.d	$fs2, $zero
	.p2align	4, , 16
.LBB21_55:                              # %.lr.ph114
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a2, 0
	fadd.d	$fs2, $fs2, $fa0
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, 16
	bnez	$a1, .LBB21_55
.LBB21_56:                              # %._crit_edge115
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI21_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI21_0)
	fdiv.d	$fa1, $fs1, $fs2
	fcmp.clt.d	$fcc0, $fs1, $fa0
	fsel	$fa0, $fa1, $fs0, $fcc0
	fld.d	$fs2, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end21:
	.size	getptree, .Lfunc_end21-getptree
                                        # -- End function
	.globl	probability                     # -- Begin function probability
	.p2align	5
	.type	probability,@function
probability:                            # @probability
# %bb.0:
	add.w	$a4, $a2, $a0
	bge	$a3, $a4, .LBB22_2
# %bb.1:
	movgr2fr.d	$fa0, $zero
	ret
.LBB22_2:
	sub.w	$a1, $a1, $a2
	vldi	$vr0, -912
	sub.w	$a4, $a0, $a1
	bge	$a1, $a4, .LBB22_8
# %bb.3:                                # %.preheader.i
	ori	$a4, $zero, 1
	blt	$a1, $a4, .LBB22_14
# %bb.4:                                # %.lr.ph40.i.preheader
	move	$a4, $a0
	move	$a5, $a1
	.p2align	4, , 16
.LBB22_5:                               # %.lr.ph40.i
                                        # =>This Inner Loop Header: Depth=1
	movgr2fr.w	$fa1, $a4
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	addi.w	$a5, $a5, -1
	addi.w	$a4, $a4, -1
	bnez	$a5, .LBB22_5
# %bb.6:                                # %.lr.ph.i.i.preheader
	vldi	$vr1, -912
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB22_7:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a5, $a1
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa2, $a1
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa1, $fa1, $fa2
	addi.w	$a1, $a5, -1
	bltu	$a4, $a5, .LBB22_7
	b	.LBB22_13
.LBB22_8:                               # %.preheader32.i
	bge	$a1, $a0, .LBB22_11
# %bb.9:                                # %.lr.ph.i.preheader
	move	$a5, $a0
	.p2align	4, , 16
.LBB22_10:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	movgr2fr.w	$fa1, $a5
	ffint.d.w	$fa1, $fa1
	addi.w	$a5, $a5, -1
	fmul.d	$fa0, $fa0, $fa1
	blt	$a1, $a5, .LBB22_10
.LBB22_11:                              # %._crit_edge.i
	vldi	$vr1, -912
	ori	$a1, $zero, 1
	blt	$a4, $a1, .LBB22_13
	.p2align	4, , 16
.LBB22_12:                              # %.lr.ph.i28.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a5, $a4
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa2, $a4
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa1, $fa1, $fa2
	addi.w	$a4, $a5, -1
	bltu	$a1, $a5, .LBB22_12
.LBB22_13:                              # %factorial.exit31.i
	fdiv.d	$fa0, $fa0, $fa1
.LBB22_14:                              # %combination.exit
	sub.w	$a0, $a3, $a0
	vldi	$vr1, -912
	sub.w	$a1, $a0, $a2
	bge	$a2, $a1, .LBB22_20
# %bb.15:                               # %.preheader.i24
	ori	$a1, $zero, 1
	blt	$a2, $a1, .LBB22_25
# %bb.16:                               # %.lr.ph40.i29.preheader
	move	$a1, $a2
	.p2align	4, , 16
.LBB22_17:                              # %.lr.ph40.i29
                                        # =>This Inner Loop Header: Depth=1
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa1, $fa1, $fa2
	addi.w	$a1, $a1, -1
	addi.w	$a0, $a0, -1
	bnez	$a1, .LBB22_17
# %bb.18:                               # %.lr.ph.i.i34.preheader
	vldi	$vr2, -912
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB22_19:                              # %.lr.ph.i.i34
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	bstrpick.d	$a2, $a2, 31, 0
	movgr2fr.d	$fa3, $a2
	ffint.d.l	$fa3, $fa3
	fmul.d	$fa2, $fa2, $fa3
	addi.w	$a2, $a1, -1
	bltu	$a0, $a1, .LBB22_19
	b	.LBB22_24
.LBB22_20:                              # %.preheader32.i10
	bge	$a2, $a0, .LBB22_22
	.p2align	4, , 16
.LBB22_21:                              # %.lr.ph.i20
                                        # =>This Inner Loop Header: Depth=1
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	addi.w	$a0, $a0, -1
	fmul.d	$fa1, $fa1, $fa2
	blt	$a2, $a0, .LBB22_21
.LBB22_22:                              # %._crit_edge.i12
	vldi	$vr2, -912
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB22_24
	.p2align	4, , 16
.LBB22_23:                              # %.lr.ph.i28.i17
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a1
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa3, $a1
	ffint.d.l	$fa3, $fa3
	fmul.d	$fa2, $fa2, $fa3
	addi.w	$a1, $a2, -1
	bltu	$a0, $a2, .LBB22_23
.LBB22_24:                              # %factorial.exit31.i14
	fdiv.d	$fa1, $fa1, $fa2
.LBB22_25:                              # %combination.exit37
	fmul.d	$fa0, $fa0, $fa1
	ret
.Lfunc_end22:
	.size	probability, .Lfunc_end22-probability
                                        # -- End function
	.globl	combination                     # -- Begin function combination
	.p2align	5
	.type	combination,@function
combination:                            # @combination
# %bb.0:
	vldi	$vr0, -912
	sub.w	$a2, $a0, $a1
	bge	$a1, $a2, .LBB23_6
# %bb.1:                                # %.preheader
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB23_11
# %bb.2:                                # %.lr.ph40.preheader
	move	$a2, $a1
	.p2align	4, , 16
.LBB23_3:                               # %.lr.ph40
                                        # =>This Inner Loop Header: Depth=1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	addi.w	$a2, $a2, -1
	addi.w	$a0, $a0, -1
	bnez	$a2, .LBB23_3
# %bb.4:                                # %.lr.ph.i.preheader
	vldi	$vr1, -912
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB23_5:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a1
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa2, $a1
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa1, $fa1, $fa2
	addi.w	$a1, $a2, -1
	bltu	$a0, $a2, .LBB23_5
	b	.LBB23_10
.LBB23_6:                               # %.preheader32
	bge	$a1, $a0, .LBB23_8
	.p2align	4, , 16
.LBB23_7:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	addi.w	$a0, $a0, -1
	fmul.d	$fa0, $fa0, $fa1
	blt	$a1, $a0, .LBB23_7
.LBB23_8:                               # %._crit_edge
	vldi	$vr1, -912
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB23_10
	.p2align	4, , 16
.LBB23_9:                               # %.lr.ph.i28
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	bstrpick.d	$a2, $a2, 31, 0
	movgr2fr.d	$fa2, $a2
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa1, $fa1, $fa2
	addi.w	$a2, $a1, -1
	bltu	$a0, $a1, .LBB23_9
.LBB23_10:                              # %factorial.exit31
	fdiv.d	$fa0, $fa0, $fa1
.LBB23_11:                              # %factorial.exit
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	ret
.Lfunc_end23:
	.size	combination, .Lfunc_end23-combination
                                        # -- End function
	.globl	factorial                       # -- Begin function factorial
	.p2align	5
	.type	factorial,@function
factorial:                              # @factorial
# %bb.0:
	vldi	$vr0, -912
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB24_2
	.p2align	4, , 16
.LBB24_1:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a0
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	addi.w	$a0, $a2, -1
	bltu	$a1, $a2, .LBB24_1
.LBB24_2:                               # %._crit_edge
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	ret
.Lfunc_end24:
	.size	factorial, .Lfunc_end24-factorial
                                        # -- End function
	.type	N,@object                       # @N
	.comm	N,8,8
	.type	CC,@object                      # @CC
	.comm	CC,8,8
	.type	bb,@object                      # @bb
	.comm	bb,8,8
	.type	a,@object                       # @a
	.comm	a,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\n\n_________________________________________________________________________\n\n"
	.size	.L.str, 78

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"DISTINCT NETS PER CELL ---------------- : %.2f\n"
	.size	.L.str.1, 48

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"NETS PER DISTINCT NET  ---------------- : %.2f\n"
	.size	.L.str.2, 48

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"CELLS PER DISTINCT NET ---------------- : %.2f\n"
	.size	.L.str.3, 48

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"AVE. # CELLS CONNECTED TO A CELL ------ : %.2f\n"
	.size	.L.str.4, 48

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"_________________________________________________________________________\n"
	.size	.L.str.5, 75

	.type	rootN,@object                   # @rootN
	.comm	rootN,8,8
	.type	c,@object                       # @c
	.comm	c,8,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
