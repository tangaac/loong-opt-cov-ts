	.file	"endgame.c"
	.text
	.globl	endgame                         # -- Begin function endgame
	.p2align	5
	.type	endgame,@function
endgame:                                # @endgame
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
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.5)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	addi.d	$a1, $sp, 30
	pcaddu18i	$ra, %call36(__isoc99_scanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	addi.d	$a0, $sp, 30
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_6
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a0, %got_pc_hi20(p)
	ld.d	$s2, $a0, %got_pc_lo12(p)
	pcalau12i	$a0, %got_pc_hi20(mymove)
	ld.d	$s3, $a0, %got_pc_lo12(mymove)
	pcalau12i	$a0, %got_pc_hi20(mk)
	ld.d	$s4, $a0, %got_pc_lo12(mk)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$fp, $a0, %pc_lo12(.L.str.8)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	pcalau12i	$a1, %got_pc_hi20(umove)
	ld.d	$s5, $a1, %got_pc_lo12(umove)
	pcalau12i	$a1, %got_pc_hi20(uk)
	ld.d	$s6, $a1, %got_pc_lo12(uk)
	addi.d	$s0, $a0, %pc_lo12(.L.str.9)
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$s1, $a0, %pc_lo12(.L.str.10)
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                # %.sink.split
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a3, $a2, 0
	stx.b	$zero, $a1, $a0
	addi.d	$a0, $a3, 1
	st.w	$a0, $a2, 0
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	pcaddu18i	$ra, %call36(showboard)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 30
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__isoc99_scanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 30
	ori	$a2, $zero, 5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_6
.LBB0_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 30
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 20
	pcaddu18i	$ra, %call36(getij)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 24
	ld.w	$a0, $sp, 20
	alsl.d	$a2, $a1, $a1, 3
	alsl.d	$a1, $a2, $a1, 1
	add.d	$a1, $s2, $a1
	ldx.bu	$a3, $a1, $a0
	ld.w	$a4, $s3, 0
	move	$a2, $s4
	beq	$a4, $a3, .LBB0_2
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a4, $s5, 0
	move	$a2, $s6
	beq	$a4, $a3, .LBB0_2
	b	.LBB0_3
.LBB0_6:                                # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.6)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.6)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.7)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.7)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	addi.d	$a1, $sp, 30
	pcaddu18i	$ra, %call36(__isoc99_scanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	addi.d	$a0, $sp, 30
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_9
# %bb.7:
	pcalau12i	$a0, %got_pc_hi20(umove)
	ld.d	$s3, $a0, %got_pc_lo12(umove)
	ori	$s4, $zero, 19
	pcalau12i	$a0, %got_pc_hi20(p)
	ld.d	$s5, $a0, %got_pc_lo12(p)
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$fp, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$s0, $a0, %pc_lo12(.L.str.9)
	pcalau12i	$a0, %got_pc_hi20(mymove)
	ld.d	$s6, $a0, %got_pc_lo12(mymove)
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$s1, $a0, %pc_lo12(.L.str.14)
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$s2, $a0, %pc_lo12(.L.str.10)
	.p2align	4, , 16
.LBB0_8:                                # %.lr.ph38
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 30
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 20
	pcaddu18i	$ra, %call36(getij)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 24
	ld.b	$a1, $s3, 0
	ld.w	$a2, $sp, 20
	mul.d	$a0, $a0, $s4
	add.d	$a0, $s5, $a0
	stx.b	$a1, $a0, $a2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 30
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__isoc99_scanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 30
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 20
	pcaddu18i	$ra, %call36(getij)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 24
	ld.b	$a1, $s6, 0
	ld.w	$a2, $sp, 20
	mul.d	$a0, $a0, $s4
	add.d	$a0, $s5, $a0
	stx.b	$a1, $a0, $a2
	pcaddu18i	$ra, %call36(showboard)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 30
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__isoc99_scanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 30
	ori	$a2, $zero, 5
	move	$a1, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_8
.LBB0_9:                                # %.critedge31.preheader
	pcalau12i	$a0, %got_pc_hi20(p)
	ld.d	$s1, $a0, %got_pc_lo12(p)
	move	$a0, $zero
	st.w	$zero, $sp, 24
	ori	$fp, $zero, 18
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_10:                               # %.critedge31
                                        #   in Loop: Header=BB0_11 Depth=1
	addi.w	$a0, $a2, 1
	st.w	$a0, $sp, 24
	bge	$a2, $fp, .LBB0_15
.LBB0_11:                               # %.preheader33
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
	move	$a1, $zero
	st.w	$zero, $sp, 20
	move	$a2, $a0
	b	.LBB0_13
	.p2align	4, , 16
.LBB0_12:                               #   in Loop: Header=BB0_13 Depth=2
	move	$a0, $a1
	addi.w	$a1, $a1, 1
	st.w	$a1, $sp, 20
	bge	$a0, $fp, .LBB0_10
.LBB0_13:                               #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$a0, $a2, $a2, 3
	alsl.d	$a0, $a0, $a2, 1
	add.d	$a0, $s1, $a0
	ldx.bu	$a0, $a0, $a1
	bnez	$a0, .LBB0_12
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(findcolor)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 24
	ld.w	$a1, $sp, 20
	alsl.d	$a3, $a2, $a2, 3
	alsl.d	$a3, $a3, $a2, 1
	add.d	$a3, $s1, $a3
	stx.b	$a0, $a3, $a1
	b	.LBB0_12
.LBB0_15:                               # %.preheader32
	pcalau12i	$a0, %got_pc_hi20(mymove)
	ld.d	$a0, $a0, %got_pc_lo12(mymove)
	pcalau12i	$a1, %got_pc_hi20(umove)
	ld.d	$a1, $a1, %got_pc_lo12(umove)
	ld.w	$a0, $a0, 0
	ld.w	$a1, $a1, 0
	move	$a2, $zero
	vreplgr2vr.w	$vr0, $a0
	vreplgr2vr.w	$vr1, $a1
	vrepli.b	$vr2, 0
	vrepli.b	$vr3, -1
	ori	$a3, $zero, 304
	vori.b	$vr6, $vr2, 0
	vori.b	$vr7, $vr2, 0
	vori.b	$vr4, $vr2, 0
	vori.b	$vr5, $vr2, 0
	.p2align	4, , 16
.LBB0_16:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $s1, $a2
	ldx.b	$a5, $s1, $a2
	ld.b	$a6, $a4, 19
	ld.b	$a7, $a4, 38
	ld.b	$t0, $a4, 57
	vinsgr2vr.b	$vr8, $a5, 0
	vinsgr2vr.b	$vr8, $a6, 1
	vinsgr2vr.b	$vr8, $a7, 2
	vinsgr2vr.b	$vr8, $t0, 3
	ld.b	$a5, $a4, 76
	ld.b	$a6, $a4, 95
	ld.b	$a7, $a4, 114
	ld.b	$t0, $a4, 133
	vinsgr2vr.b	$vr9, $a5, 0
	vinsgr2vr.b	$vr9, $a6, 1
	vinsgr2vr.b	$vr9, $a7, 2
	vinsgr2vr.b	$vr9, $t0, 3
	vilvl.b	$vr8, $vr2, $vr8
	vilvl.h	$vr8, $vr2, $vr8
	vilvl.b	$vr9, $vr2, $vr9
	vilvl.h	$vr9, $vr2, $vr9
	vseq.w	$vr10, $vr0, $vr8
	vxor.v	$vr11, $vr10, $vr3
	vseq.w	$vr12, $vr0, $vr9
	vxor.v	$vr13, $vr12, $vr3
	vseq.w	$vr8, $vr1, $vr8
	vseq.w	$vr9, $vr1, $vr9
	vsub.w	$vr4, $vr4, $vr10
	vsub.w	$vr5, $vr5, $vr12
	vand.v	$vr8, $vr11, $vr8
	vand.v	$vr9, $vr13, $vr9
	vsub.w	$vr6, $vr6, $vr8
	vsub.w	$vr7, $vr7, $vr9
	ld.b	$a5, $a4, 1
	ld.b	$a6, $a4, 20
	ld.b	$a7, $a4, 39
	ld.b	$t0, $a4, 58
	vinsgr2vr.b	$vr8, $a5, 0
	vinsgr2vr.b	$vr8, $a6, 1
	vinsgr2vr.b	$vr8, $a7, 2
	vinsgr2vr.b	$vr8, $t0, 3
	ld.b	$a5, $a4, 77
	ld.b	$a6, $a4, 96
	ld.b	$a7, $a4, 115
	ld.b	$t0, $a4, 134
	vinsgr2vr.b	$vr9, $a5, 0
	vinsgr2vr.b	$vr9, $a6, 1
	vinsgr2vr.b	$vr9, $a7, 2
	vinsgr2vr.b	$vr9, $t0, 3
	vilvl.b	$vr8, $vr2, $vr8
	vilvl.h	$vr8, $vr2, $vr8
	vilvl.b	$vr9, $vr2, $vr9
	vilvl.h	$vr9, $vr2, $vr9
	vseq.w	$vr10, $vr0, $vr8
	vxor.v	$vr11, $vr10, $vr3
	vseq.w	$vr12, $vr0, $vr9
	vxor.v	$vr13, $vr12, $vr3
	vseq.w	$vr8, $vr1, $vr8
	vseq.w	$vr9, $vr1, $vr9
	vsub.w	$vr4, $vr4, $vr10
	vsub.w	$vr5, $vr5, $vr12
	vand.v	$vr8, $vr11, $vr8
	vand.v	$vr9, $vr13, $vr9
	vsub.w	$vr6, $vr6, $vr8
	vsub.w	$vr7, $vr7, $vr9
	ld.b	$a5, $a4, 2
	ld.b	$a6, $a4, 21
	ld.b	$a7, $a4, 40
	ld.b	$t0, $a4, 59
	vinsgr2vr.b	$vr8, $a5, 0
	vinsgr2vr.b	$vr8, $a6, 1
	vinsgr2vr.b	$vr8, $a7, 2
	vinsgr2vr.b	$vr8, $t0, 3
	ld.b	$a5, $a4, 78
	ld.b	$a6, $a4, 97
	ld.b	$a7, $a4, 116
	ld.b	$t0, $a4, 135
	vinsgr2vr.b	$vr9, $a5, 0
	vinsgr2vr.b	$vr9, $a6, 1
	vinsgr2vr.b	$vr9, $a7, 2
	vinsgr2vr.b	$vr9, $t0, 3
	vilvl.b	$vr8, $vr2, $vr8
	vilvl.h	$vr8, $vr2, $vr8
	vilvl.b	$vr9, $vr2, $vr9
	vilvl.h	$vr9, $vr2, $vr9
	vseq.w	$vr10, $vr0, $vr8
	vxor.v	$vr11, $vr10, $vr3
	vseq.w	$vr12, $vr0, $vr9
	vxor.v	$vr13, $vr12, $vr3
	vseq.w	$vr8, $vr1, $vr8
	vseq.w	$vr9, $vr1, $vr9
	vsub.w	$vr4, $vr4, $vr10
	vsub.w	$vr5, $vr5, $vr12
	vand.v	$vr8, $vr11, $vr8
	vand.v	$vr9, $vr13, $vr9
	vsub.w	$vr6, $vr6, $vr8
	vsub.w	$vr7, $vr7, $vr9
	ld.b	$a5, $a4, 3
	ld.b	$a6, $a4, 22
	ld.b	$a7, $a4, 41
	ld.b	$t0, $a4, 60
	vinsgr2vr.b	$vr8, $a5, 0
	vinsgr2vr.b	$vr8, $a6, 1
	vinsgr2vr.b	$vr8, $a7, 2
	vinsgr2vr.b	$vr8, $t0, 3
	ld.b	$a5, $a4, 79
	ld.b	$a6, $a4, 98
	ld.b	$a7, $a4, 117
	ld.b	$t0, $a4, 136
	vinsgr2vr.b	$vr9, $a5, 0
	vinsgr2vr.b	$vr9, $a6, 1
	vinsgr2vr.b	$vr9, $a7, 2
	vinsgr2vr.b	$vr9, $t0, 3
	vilvl.b	$vr8, $vr2, $vr8
	vilvl.h	$vr8, $vr2, $vr8
	vilvl.b	$vr9, $vr2, $vr9
	vilvl.h	$vr9, $vr2, $vr9
	vseq.w	$vr10, $vr0, $vr8
	vxor.v	$vr11, $vr10, $vr3
	vseq.w	$vr12, $vr0, $vr9
	vxor.v	$vr13, $vr12, $vr3
	vseq.w	$vr8, $vr1, $vr8
	vseq.w	$vr9, $vr1, $vr9
	vsub.w	$vr4, $vr4, $vr10
	vsub.w	$vr5, $vr5, $vr12
	vand.v	$vr8, $vr11, $vr8
	vand.v	$vr9, $vr13, $vr9
	vsub.w	$vr6, $vr6, $vr8
	vsub.w	$vr7, $vr7, $vr9
	ld.b	$a5, $a4, 4
	ld.b	$a6, $a4, 23
	ld.b	$a7, $a4, 42
	ld.b	$t0, $a4, 61
	vinsgr2vr.b	$vr8, $a5, 0
	vinsgr2vr.b	$vr8, $a6, 1
	vinsgr2vr.b	$vr8, $a7, 2
	vinsgr2vr.b	$vr8, $t0, 3
	ld.b	$a5, $a4, 80
	ld.b	$a6, $a4, 99
	ld.b	$a7, $a4, 118
	ld.b	$t0, $a4, 137
	vinsgr2vr.b	$vr9, $a5, 0
	vinsgr2vr.b	$vr9, $a6, 1
	vinsgr2vr.b	$vr9, $a7, 2
	vinsgr2vr.b	$vr9, $t0, 3
	vilvl.b	$vr8, $vr2, $vr8
	vilvl.h	$vr8, $vr2, $vr8
	vilvl.b	$vr9, $vr2, $vr9
	vilvl.h	$vr9, $vr2, $vr9
	vseq.w	$vr10, $vr0, $vr8
	vxor.v	$vr11, $vr10, $vr3
	vseq.w	$vr12, $vr0, $vr9
	vxor.v	$vr13, $vr12, $vr3
	vseq.w	$vr8, $vr1, $vr8
	vseq.w	$vr9, $vr1, $vr9
	vsub.w	$vr4, $vr4, $vr10
	vsub.w	$vr5, $vr5, $vr12
	vand.v	$vr8, $vr11, $vr8
	vand.v	$vr9, $vr13, $vr9
	vsub.w	$vr6, $vr6, $vr8
	vsub.w	$vr7, $vr7, $vr9
	ld.b	$a5, $a4, 5
	ld.b	$a6, $a4, 24
	ld.b	$a7, $a4, 43
	ld.b	$t0, $a4, 62
	vinsgr2vr.b	$vr8, $a5, 0
	vinsgr2vr.b	$vr8, $a6, 1
	vinsgr2vr.b	$vr8, $a7, 2
	vinsgr2vr.b	$vr8, $t0, 3
	ld.b	$a5, $a4, 81
	ld.b	$a6, $a4, 100
	ld.b	$a7, $a4, 119
	ld.b	$t0, $a4, 138
	vinsgr2vr.b	$vr9, $a5, 0
	vinsgr2vr.b	$vr9, $a6, 1
	vinsgr2vr.b	$vr9, $a7, 2
	vinsgr2vr.b	$vr9, $t0, 3
	vilvl.b	$vr8, $vr2, $vr8
	vilvl.h	$vr8, $vr2, $vr8
	vilvl.b	$vr9, $vr2, $vr9
	vilvl.h	$vr9, $vr2, $vr9
	vseq.w	$vr10, $vr0, $vr8
	vxor.v	$vr11, $vr10, $vr3
	vseq.w	$vr12, $vr0, $vr9
	vxor.v	$vr13, $vr12, $vr3
	vseq.w	$vr8, $vr1, $vr8
	vseq.w	$vr9, $vr1, $vr9
	vsub.w	$vr4, $vr4, $vr10
	vsub.w	$vr5, $vr5, $vr12
	vand.v	$vr8, $vr11, $vr8
	vand.v	$vr9, $vr13, $vr9
	vsub.w	$vr6, $vr6, $vr8
	vsub.w	$vr7, $vr7, $vr9
	ld.b	$a5, $a4, 6
	ld.b	$a6, $a4, 25
	ld.b	$a7, $a4, 44
	ld.b	$t0, $a4, 63
	vinsgr2vr.b	$vr8, $a5, 0
	vinsgr2vr.b	$vr8, $a6, 1
	vinsgr2vr.b	$vr8, $a7, 2
	vinsgr2vr.b	$vr8, $t0, 3
	ld.b	$a5, $a4, 82
	ld.b	$a6, $a4, 101
	ld.b	$a7, $a4, 120
	ld.b	$t0, $a4, 139
	vinsgr2vr.b	$vr9, $a5, 0
	vinsgr2vr.b	$vr9, $a6, 1
	vinsgr2vr.b	$vr9, $a7, 2
	vinsgr2vr.b	$vr9, $t0, 3
	vilvl.b	$vr8, $vr2, $vr8
	vilvl.h	$vr8, $vr2, $vr8
	vilvl.b	$vr9, $vr2, $vr9
	vilvl.h	$vr9, $vr2, $vr9
	vseq.w	$vr10, $vr0, $vr8
	vxor.v	$vr11, $vr10, $vr3
	vseq.w	$vr12, $vr0, $vr9
	vxor.v	$vr13, $vr12, $vr3
	vseq.w	$vr8, $vr1, $vr8
	vseq.w	$vr9, $vr1, $vr9
	vsub.w	$vr4, $vr4, $vr10
	vsub.w	$vr5, $vr5, $vr12
	vand.v	$vr8, $vr11, $vr8
	vand.v	$vr9, $vr13, $vr9
	vsub.w	$vr6, $vr6, $vr8
	vsub.w	$vr7, $vr7, $vr9
	ld.b	$a5, $a4, 7
	ld.b	$a6, $a4, 26
	ld.b	$a7, $a4, 45
	ld.b	$t0, $a4, 64
	vinsgr2vr.b	$vr8, $a5, 0
	vinsgr2vr.b	$vr8, $a6, 1
	vinsgr2vr.b	$vr8, $a7, 2
	vinsgr2vr.b	$vr8, $t0, 3
	ld.b	$a5, $a4, 83
	ld.b	$a6, $a4, 102
	ld.b	$a7, $a4, 121
	ld.b	$t0, $a4, 140
	vinsgr2vr.b	$vr9, $a5, 0
	vinsgr2vr.b	$vr9, $a6, 1
	vinsgr2vr.b	$vr9, $a7, 2
	vinsgr2vr.b	$vr9, $t0, 3
	vilvl.b	$vr8, $vr2, $vr8
	vilvl.h	$vr8, $vr2, $vr8
	vilvl.b	$vr9, $vr2, $vr9
	vilvl.h	$vr9, $vr2, $vr9
	vseq.w	$vr10, $vr0, $vr8
	vxor.v	$vr11, $vr10, $vr3
	vseq.w	$vr12, $vr0, $vr9
	vxor.v	$vr13, $vr12, $vr3
	vseq.w	$vr8, $vr1, $vr8
	vseq.w	$vr9, $vr1, $vr9
	vsub.w	$vr4, $vr4, $vr10
	vsub.w	$vr5, $vr5, $vr12
	vand.v	$vr8, $vr11, $vr8
	vand.v	$vr9, $vr13, $vr9
	vsub.w	$vr6, $vr6, $vr8
	vsub.w	$vr7, $vr7, $vr9
	ld.b	$a5, $a4, 8
	ld.b	$a6, $a4, 27
	ld.b	$a7, $a4, 46
	ld.b	$t0, $a4, 65
	vinsgr2vr.b	$vr8, $a5, 0
	vinsgr2vr.b	$vr8, $a6, 1
	vinsgr2vr.b	$vr8, $a7, 2
	vinsgr2vr.b	$vr8, $t0, 3
	ld.b	$a5, $a4, 84
	ld.b	$a6, $a4, 103
	ld.b	$a7, $a4, 122
	ld.b	$t0, $a4, 141
	vinsgr2vr.b	$vr9, $a5, 0
	vinsgr2vr.b	$vr9, $a6, 1
	vinsgr2vr.b	$vr9, $a7, 2
	vinsgr2vr.b	$vr9, $t0, 3
	vilvl.b	$vr8, $vr2, $vr8
	vilvl.h	$vr8, $vr2, $vr8
	vilvl.b	$vr9, $vr2, $vr9
	vilvl.h	$vr9, $vr2, $vr9
	vseq.w	$vr10, $vr0, $vr8
	vxor.v	$vr11, $vr10, $vr3
	vseq.w	$vr12, $vr0, $vr9
	vxor.v	$vr13, $vr12, $vr3
	vseq.w	$vr8, $vr1, $vr8
	vseq.w	$vr9, $vr1, $vr9
	vsub.w	$vr4, $vr4, $vr10
	vsub.w	$vr5, $vr5, $vr12
	vand.v	$vr8, $vr11, $vr8
	vand.v	$vr9, $vr13, $vr9
	vsub.w	$vr6, $vr6, $vr8
	vsub.w	$vr7, $vr7, $vr9
	ld.b	$a5, $a4, 9
	ld.b	$a6, $a4, 28
	ld.b	$a7, $a4, 47
	ld.b	$t0, $a4, 66
	vinsgr2vr.b	$vr8, $a5, 0
	vinsgr2vr.b	$vr8, $a6, 1
	vinsgr2vr.b	$vr8, $a7, 2
	vinsgr2vr.b	$vr8, $t0, 3
	ld.b	$a5, $a4, 85
	ld.b	$a6, $a4, 104
	ld.b	$a7, $a4, 123
	ld.b	$t0, $a4, 142
	vinsgr2vr.b	$vr9, $a5, 0
	vinsgr2vr.b	$vr9, $a6, 1
	vinsgr2vr.b	$vr9, $a7, 2
	vinsgr2vr.b	$vr9, $t0, 3
	vilvl.b	$vr8, $vr2, $vr8
	vilvl.h	$vr8, $vr2, $vr8
	vilvl.b	$vr9, $vr2, $vr9
	vilvl.h	$vr9, $vr2, $vr9
	vseq.w	$vr10, $vr0, $vr8
	vxor.v	$vr11, $vr10, $vr3
	vseq.w	$vr12, $vr0, $vr9
	vxor.v	$vr13, $vr12, $vr3
	vseq.w	$vr8, $vr1, $vr8
	vseq.w	$vr9, $vr1, $vr9
	vsub.w	$vr4, $vr4, $vr10
	vsub.w	$vr5, $vr5, $vr12
	vand.v	$vr8, $vr11, $vr8
	vand.v	$vr9, $vr13, $vr9
	vsub.w	$vr6, $vr6, $vr8
	vsub.w	$vr7, $vr7, $vr9
	ld.b	$a5, $a4, 10
	ld.b	$a6, $a4, 29
	ld.b	$a7, $a4, 48
	ld.b	$t0, $a4, 67
	vinsgr2vr.b	$vr8, $a5, 0
	vinsgr2vr.b	$vr8, $a6, 1
	vinsgr2vr.b	$vr8, $a7, 2
	vinsgr2vr.b	$vr8, $t0, 3
	ld.b	$a5, $a4, 86
	ld.b	$a6, $a4, 105
	ld.b	$a7, $a4, 124
	ld.b	$t0, $a4, 143
	vinsgr2vr.b	$vr9, $a5, 0
	vinsgr2vr.b	$vr9, $a6, 1
	vinsgr2vr.b	$vr9, $a7, 2
	vinsgr2vr.b	$vr9, $t0, 3
	vilvl.b	$vr8, $vr2, $vr8
	vilvl.h	$vr8, $vr2, $vr8
	vilvl.b	$vr9, $vr2, $vr9
	vilvl.h	$vr9, $vr2, $vr9
	vseq.w	$vr10, $vr0, $vr8
	vxor.v	$vr11, $vr10, $vr3
	vseq.w	$vr12, $vr0, $vr9
	vxor.v	$vr13, $vr12, $vr3
	vseq.w	$vr8, $vr1, $vr8
	vseq.w	$vr9, $vr1, $vr9
	vsub.w	$vr4, $vr4, $vr10
	vsub.w	$vr5, $vr5, $vr12
	vand.v	$vr8, $vr11, $vr8
	vand.v	$vr9, $vr13, $vr9
	vsub.w	$vr6, $vr6, $vr8
	vsub.w	$vr7, $vr7, $vr9
	ld.b	$a5, $a4, 11
	ld.b	$a6, $a4, 30
	ld.b	$a7, $a4, 49
	ld.b	$t0, $a4, 68
	vinsgr2vr.b	$vr8, $a5, 0
	vinsgr2vr.b	$vr8, $a6, 1
	vinsgr2vr.b	$vr8, $a7, 2
	vinsgr2vr.b	$vr8, $t0, 3
	ld.b	$a5, $a4, 87
	ld.b	$a6, $a4, 106
	ld.b	$a7, $a4, 125
	ld.b	$t0, $a4, 144
	vinsgr2vr.b	$vr9, $a5, 0
	vinsgr2vr.b	$vr9, $a6, 1
	vinsgr2vr.b	$vr9, $a7, 2
	vinsgr2vr.b	$vr9, $t0, 3
	vilvl.b	$vr8, $vr2, $vr8
	vilvl.h	$vr8, $vr2, $vr8
	vilvl.b	$vr9, $vr2, $vr9
	vilvl.h	$vr9, $vr2, $vr9
	vseq.w	$vr10, $vr0, $vr8
	vxor.v	$vr11, $vr10, $vr3
	vseq.w	$vr12, $vr0, $vr9
	vxor.v	$vr13, $vr12, $vr3
	vseq.w	$vr8, $vr1, $vr8
	vseq.w	$vr9, $vr1, $vr9
	vsub.w	$vr4, $vr4, $vr10
	vsub.w	$vr5, $vr5, $vr12
	vand.v	$vr8, $vr11, $vr8
	vand.v	$vr9, $vr13, $vr9
	vsub.w	$vr6, $vr6, $vr8
	vsub.w	$vr7, $vr7, $vr9
	ld.b	$a5, $a4, 12
	ld.b	$a6, $a4, 31
	ld.b	$a7, $a4, 50
	ld.b	$t0, $a4, 69
	vinsgr2vr.b	$vr8, $a5, 0
	vinsgr2vr.b	$vr8, $a6, 1
	vinsgr2vr.b	$vr8, $a7, 2
	vinsgr2vr.b	$vr8, $t0, 3
	ld.b	$a5, $a4, 88
	ld.b	$a6, $a4, 107
	ld.b	$a7, $a4, 126
	ld.b	$t0, $a4, 145
	vinsgr2vr.b	$vr9, $a5, 0
	vinsgr2vr.b	$vr9, $a6, 1
	vinsgr2vr.b	$vr9, $a7, 2
	vinsgr2vr.b	$vr9, $t0, 3
	vilvl.b	$vr8, $vr2, $vr8
	vilvl.h	$vr8, $vr2, $vr8
	vilvl.b	$vr9, $vr2, $vr9
	vilvl.h	$vr9, $vr2, $vr9
	vseq.w	$vr10, $vr0, $vr8
	vxor.v	$vr11, $vr10, $vr3
	vseq.w	$vr12, $vr0, $vr9
	vxor.v	$vr13, $vr12, $vr3
	vseq.w	$vr8, $vr1, $vr8
	vseq.w	$vr9, $vr1, $vr9
	vsub.w	$vr4, $vr4, $vr10
	vsub.w	$vr5, $vr5, $vr12
	vand.v	$vr8, $vr11, $vr8
	vand.v	$vr9, $vr13, $vr9
	vsub.w	$vr6, $vr6, $vr8
	vsub.w	$vr7, $vr7, $vr9
	ld.b	$a5, $a4, 13
	ld.b	$a6, $a4, 32
	ld.b	$a7, $a4, 51
	ld.b	$t0, $a4, 70
	vinsgr2vr.b	$vr8, $a5, 0
	vinsgr2vr.b	$vr8, $a6, 1
	vinsgr2vr.b	$vr8, $a7, 2
	vinsgr2vr.b	$vr8, $t0, 3
	ld.b	$a5, $a4, 89
	ld.b	$a6, $a4, 108
	ld.b	$a7, $a4, 127
	ld.b	$t0, $a4, 146
	vinsgr2vr.b	$vr9, $a5, 0
	vinsgr2vr.b	$vr9, $a6, 1
	vinsgr2vr.b	$vr9, $a7, 2
	vinsgr2vr.b	$vr9, $t0, 3
	vilvl.b	$vr8, $vr2, $vr8
	vilvl.h	$vr8, $vr2, $vr8
	vilvl.b	$vr9, $vr2, $vr9
	vilvl.h	$vr9, $vr2, $vr9
	vseq.w	$vr10, $vr0, $vr8
	vxor.v	$vr11, $vr10, $vr3
	vseq.w	$vr12, $vr0, $vr9
	vxor.v	$vr13, $vr12, $vr3
	vseq.w	$vr8, $vr1, $vr8
	vseq.w	$vr9, $vr1, $vr9
	vsub.w	$vr4, $vr4, $vr10
	vsub.w	$vr5, $vr5, $vr12
	vand.v	$vr8, $vr11, $vr8
	vand.v	$vr9, $vr13, $vr9
	vsub.w	$vr6, $vr6, $vr8
	vsub.w	$vr7, $vr7, $vr9
	ld.b	$a5, $a4, 14
	ld.b	$a6, $a4, 33
	ld.b	$a7, $a4, 52
	ld.b	$t0, $a4, 71
	vinsgr2vr.b	$vr8, $a5, 0
	vinsgr2vr.b	$vr8, $a6, 1
	vinsgr2vr.b	$vr8, $a7, 2
	vinsgr2vr.b	$vr8, $t0, 3
	ld.b	$a5, $a4, 90
	ld.b	$a6, $a4, 109
	ld.b	$a7, $a4, 128
	ld.b	$t0, $a4, 147
	vinsgr2vr.b	$vr9, $a5, 0
	vinsgr2vr.b	$vr9, $a6, 1
	vinsgr2vr.b	$vr9, $a7, 2
	vinsgr2vr.b	$vr9, $t0, 3
	vilvl.b	$vr8, $vr2, $vr8
	vilvl.h	$vr8, $vr2, $vr8
	vilvl.b	$vr9, $vr2, $vr9
	vilvl.h	$vr9, $vr2, $vr9
	vseq.w	$vr10, $vr0, $vr8
	vxor.v	$vr11, $vr10, $vr3
	vseq.w	$vr12, $vr0, $vr9
	vxor.v	$vr13, $vr12, $vr3
	vseq.w	$vr8, $vr1, $vr8
	vseq.w	$vr9, $vr1, $vr9
	vsub.w	$vr4, $vr4, $vr10
	vsub.w	$vr5, $vr5, $vr12
	vand.v	$vr8, $vr11, $vr8
	vand.v	$vr9, $vr13, $vr9
	vsub.w	$vr6, $vr6, $vr8
	vsub.w	$vr7, $vr7, $vr9
	ld.b	$a5, $a4, 15
	ld.b	$a6, $a4, 34
	ld.b	$a7, $a4, 53
	ld.b	$t0, $a4, 72
	vinsgr2vr.b	$vr8, $a5, 0
	vinsgr2vr.b	$vr8, $a6, 1
	vinsgr2vr.b	$vr8, $a7, 2
	vinsgr2vr.b	$vr8, $t0, 3
	ld.b	$a5, $a4, 91
	ld.b	$a6, $a4, 110
	ld.b	$a7, $a4, 129
	ld.b	$t0, $a4, 148
	vinsgr2vr.b	$vr9, $a5, 0
	vinsgr2vr.b	$vr9, $a6, 1
	vinsgr2vr.b	$vr9, $a7, 2
	vinsgr2vr.b	$vr9, $t0, 3
	vilvl.b	$vr8, $vr2, $vr8
	vilvl.h	$vr8, $vr2, $vr8
	vilvl.b	$vr9, $vr2, $vr9
	vilvl.h	$vr9, $vr2, $vr9
	vseq.w	$vr10, $vr0, $vr8
	vxor.v	$vr11, $vr10, $vr3
	vseq.w	$vr12, $vr0, $vr9
	vxor.v	$vr13, $vr12, $vr3
	vseq.w	$vr8, $vr1, $vr8
	vseq.w	$vr9, $vr1, $vr9
	vsub.w	$vr4, $vr4, $vr10
	vsub.w	$vr5, $vr5, $vr12
	vand.v	$vr8, $vr11, $vr8
	vand.v	$vr9, $vr13, $vr9
	vsub.w	$vr6, $vr6, $vr8
	vsub.w	$vr7, $vr7, $vr9
	ld.b	$a5, $a4, 16
	ld.b	$a6, $a4, 35
	ld.b	$a7, $a4, 54
	ld.b	$t0, $a4, 73
	vinsgr2vr.b	$vr8, $a5, 0
	vinsgr2vr.b	$vr8, $a6, 1
	vinsgr2vr.b	$vr8, $a7, 2
	vinsgr2vr.b	$vr8, $t0, 3
	ld.b	$a5, $a4, 92
	ld.b	$a6, $a4, 111
	ld.b	$a7, $a4, 130
	ld.b	$t0, $a4, 149
	vinsgr2vr.b	$vr9, $a5, 0
	vinsgr2vr.b	$vr9, $a6, 1
	vinsgr2vr.b	$vr9, $a7, 2
	vinsgr2vr.b	$vr9, $t0, 3
	vilvl.b	$vr8, $vr2, $vr8
	vilvl.h	$vr8, $vr2, $vr8
	vilvl.b	$vr9, $vr2, $vr9
	vilvl.h	$vr9, $vr2, $vr9
	vseq.w	$vr10, $vr0, $vr8
	vxor.v	$vr11, $vr10, $vr3
	vseq.w	$vr12, $vr0, $vr9
	vxor.v	$vr13, $vr12, $vr3
	vseq.w	$vr8, $vr1, $vr8
	vseq.w	$vr9, $vr1, $vr9
	vsub.w	$vr4, $vr4, $vr10
	vsub.w	$vr5, $vr5, $vr12
	vand.v	$vr8, $vr11, $vr8
	vand.v	$vr9, $vr13, $vr9
	vsub.w	$vr6, $vr6, $vr8
	vsub.w	$vr7, $vr7, $vr9
	ld.b	$a5, $a4, 17
	ld.b	$a6, $a4, 36
	ld.b	$a7, $a4, 55
	ld.b	$t0, $a4, 74
	vinsgr2vr.b	$vr8, $a5, 0
	vinsgr2vr.b	$vr8, $a6, 1
	vinsgr2vr.b	$vr8, $a7, 2
	vinsgr2vr.b	$vr8, $t0, 3
	ld.b	$a5, $a4, 93
	ld.b	$a6, $a4, 112
	ld.b	$a7, $a4, 131
	ld.b	$t0, $a4, 150
	vinsgr2vr.b	$vr9, $a5, 0
	vinsgr2vr.b	$vr9, $a6, 1
	vinsgr2vr.b	$vr9, $a7, 2
	vinsgr2vr.b	$vr9, $t0, 3
	vilvl.b	$vr8, $vr2, $vr8
	vilvl.h	$vr8, $vr2, $vr8
	vilvl.b	$vr9, $vr2, $vr9
	vilvl.h	$vr9, $vr2, $vr9
	vseq.w	$vr10, $vr0, $vr8
	vxor.v	$vr11, $vr10, $vr3
	vseq.w	$vr12, $vr0, $vr9
	vxor.v	$vr13, $vr12, $vr3
	vseq.w	$vr8, $vr1, $vr8
	vseq.w	$vr9, $vr1, $vr9
	vsub.w	$vr4, $vr4, $vr10
	vsub.w	$vr5, $vr5, $vr12
	vand.v	$vr8, $vr11, $vr8
	vand.v	$vr9, $vr13, $vr9
	vsub.w	$vr6, $vr6, $vr8
	vsub.w	$vr7, $vr7, $vr9
	ld.b	$a5, $a4, 18
	ld.b	$a6, $a4, 37
	ld.b	$a7, $a4, 56
	ld.b	$t0, $a4, 75
	vinsgr2vr.b	$vr8, $a5, 0
	vinsgr2vr.b	$vr8, $a6, 1
	vinsgr2vr.b	$vr8, $a7, 2
	vinsgr2vr.b	$vr8, $t0, 3
	ld.b	$a5, $a4, 94
	ld.b	$a6, $a4, 113
	ld.b	$a7, $a4, 132
	ld.b	$a4, $a4, 151
	vinsgr2vr.b	$vr9, $a5, 0
	vinsgr2vr.b	$vr9, $a6, 1
	vinsgr2vr.b	$vr9, $a7, 2
	vinsgr2vr.b	$vr9, $a4, 3
	vilvl.b	$vr8, $vr2, $vr8
	vilvl.h	$vr8, $vr2, $vr8
	vilvl.b	$vr9, $vr2, $vr9
	vilvl.h	$vr9, $vr2, $vr9
	vseq.w	$vr10, $vr0, $vr8
	vxor.v	$vr11, $vr10, $vr3
	vseq.w	$vr12, $vr0, $vr9
	vxor.v	$vr13, $vr12, $vr3
	vseq.w	$vr8, $vr1, $vr8
	vseq.w	$vr9, $vr1, $vr9
	vsub.w	$vr4, $vr4, $vr10
	vsub.w	$vr5, $vr5, $vr12
	vand.v	$vr8, $vr11, $vr8
	vand.v	$vr9, $vr13, $vr9
	vsub.w	$vr6, $vr6, $vr8
	addi.d	$a2, $a2, 152
	vsub.w	$vr7, $vr7, $vr9
	bne	$a2, $a3, .LBB0_16
# %bb.17:                               # %middle.block
	move	$a2, $zero
	vadd.w	$vr0, $vr7, $vr6
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$s0, $vr0, 0
	vadd.w	$vr0, $vr5, $vr4
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$fp, $vr0, 0
	ori	$a3, $zero, 57
	.p2align	4, , 16
.LBB0_18:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $s1, $a2
	ld.b	$a5, $a4, 304
	andi	$a5, $a5, 255
	xor	$a6, $a0, $a5
	sltu	$a7, $zero, $a6
	sltui	$a6, $a6, 1
	xor	$a5, $a1, $a5
	add.d	$a6, $fp, $a6
	ld.b	$t0, $a4, 305
	sltui	$a5, $a5, 1
	and	$a5, $a7, $a5
	add.d	$a5, $s0, $a5
	andi	$a7, $t0, 255
	xor	$t0, $a0, $a7
	sltu	$t1, $zero, $t0
	sltui	$t0, $t0, 1
	xor	$a7, $a1, $a7
	add.d	$a6, $a6, $t0
	ld.b	$t0, $a4, 306
	sltui	$a7, $a7, 1
	and	$a7, $t1, $a7
	add.d	$a5, $a5, $a7
	andi	$a7, $t0, 255
	xor	$t0, $a0, $a7
	sltu	$t1, $zero, $t0
	sltui	$t0, $t0, 1
	xor	$a7, $a1, $a7
	add.d	$a6, $a6, $t0
	ld.b	$t0, $a4, 307
	sltui	$a7, $a7, 1
	and	$a7, $t1, $a7
	add.d	$a5, $a5, $a7
	andi	$a7, $t0, 255
	xor	$t0, $a0, $a7
	sltu	$t1, $zero, $t0
	sltui	$t0, $t0, 1
	xor	$a7, $a1, $a7
	add.d	$a6, $a6, $t0
	ld.b	$t0, $a4, 308
	sltui	$a7, $a7, 1
	and	$a7, $t1, $a7
	add.d	$a5, $a5, $a7
	andi	$a7, $t0, 255
	xor	$t0, $a0, $a7
	sltu	$t1, $zero, $t0
	sltui	$t0, $t0, 1
	xor	$a7, $a1, $a7
	add.d	$a6, $a6, $t0
	ld.b	$t0, $a4, 309
	sltui	$a7, $a7, 1
	and	$a7, $t1, $a7
	add.d	$a5, $a5, $a7
	andi	$a7, $t0, 255
	xor	$t0, $a0, $a7
	sltu	$t1, $zero, $t0
	sltui	$t0, $t0, 1
	xor	$a7, $a1, $a7
	add.d	$a6, $a6, $t0
	ld.b	$t0, $a4, 310
	sltui	$a7, $a7, 1
	and	$a7, $t1, $a7
	add.d	$a5, $a5, $a7
	andi	$a7, $t0, 255
	xor	$t0, $a0, $a7
	sltu	$t1, $zero, $t0
	sltui	$t0, $t0, 1
	xor	$a7, $a1, $a7
	add.d	$a6, $a6, $t0
	ld.b	$t0, $a4, 311
	sltui	$a7, $a7, 1
	and	$a7, $t1, $a7
	add.d	$a5, $a5, $a7
	andi	$a7, $t0, 255
	xor	$t0, $a0, $a7
	sltu	$t1, $zero, $t0
	sltui	$t0, $t0, 1
	xor	$a7, $a1, $a7
	add.d	$a6, $a6, $t0
	ld.b	$t0, $a4, 312
	sltui	$a7, $a7, 1
	and	$a7, $t1, $a7
	add.d	$a5, $a5, $a7
	andi	$a7, $t0, 255
	xor	$t0, $a0, $a7
	sltu	$t1, $zero, $t0
	sltui	$t0, $t0, 1
	xor	$a7, $a1, $a7
	add.d	$a6, $a6, $t0
	ld.b	$t0, $a4, 313
	sltui	$a7, $a7, 1
	and	$a7, $t1, $a7
	add.d	$a5, $a5, $a7
	andi	$a7, $t0, 255
	xor	$t0, $a0, $a7
	sltu	$t1, $zero, $t0
	sltui	$t0, $t0, 1
	xor	$a7, $a1, $a7
	add.d	$a6, $a6, $t0
	ld.b	$t0, $a4, 314
	sltui	$a7, $a7, 1
	and	$a7, $t1, $a7
	add.d	$a5, $a5, $a7
	andi	$a7, $t0, 255
	xor	$t0, $a0, $a7
	sltu	$t1, $zero, $t0
	sltui	$t0, $t0, 1
	xor	$a7, $a1, $a7
	add.d	$a6, $a6, $t0
	ld.b	$t0, $a4, 315
	sltui	$a7, $a7, 1
	and	$a7, $t1, $a7
	add.d	$a5, $a5, $a7
	andi	$a7, $t0, 255
	xor	$t0, $a0, $a7
	sltu	$t1, $zero, $t0
	sltui	$t0, $t0, 1
	xor	$a7, $a1, $a7
	add.d	$a6, $a6, $t0
	ld.b	$t0, $a4, 316
	sltui	$a7, $a7, 1
	and	$a7, $t1, $a7
	add.d	$a5, $a5, $a7
	andi	$a7, $t0, 255
	xor	$t0, $a0, $a7
	sltu	$t1, $zero, $t0
	sltui	$t0, $t0, 1
	xor	$a7, $a1, $a7
	add.d	$a6, $a6, $t0
	ld.b	$t0, $a4, 317
	sltui	$a7, $a7, 1
	and	$a7, $t1, $a7
	add.d	$a5, $a5, $a7
	andi	$a7, $t0, 255
	xor	$t0, $a0, $a7
	sltu	$t1, $zero, $t0
	sltui	$t0, $t0, 1
	xor	$a7, $a1, $a7
	add.d	$a6, $a6, $t0
	ld.b	$t0, $a4, 318
	sltui	$a7, $a7, 1
	and	$a7, $t1, $a7
	add.d	$a5, $a5, $a7
	andi	$a7, $t0, 255
	xor	$t0, $a0, $a7
	sltu	$t1, $zero, $t0
	sltui	$t0, $t0, 1
	xor	$a7, $a1, $a7
	add.d	$a6, $a6, $t0
	ld.b	$t0, $a4, 319
	sltui	$a7, $a7, 1
	and	$a7, $t1, $a7
	add.d	$a5, $a5, $a7
	andi	$a7, $t0, 255
	xor	$t0, $a0, $a7
	sltu	$t1, $zero, $t0
	sltui	$t0, $t0, 1
	xor	$a7, $a1, $a7
	add.d	$a6, $a6, $t0
	ld.b	$t0, $a4, 320
	sltui	$a7, $a7, 1
	and	$a7, $t1, $a7
	add.d	$a5, $a5, $a7
	andi	$a7, $t0, 255
	xor	$t0, $a0, $a7
	sltu	$t1, $zero, $t0
	sltui	$t0, $t0, 1
	xor	$a7, $a1, $a7
	add.d	$a6, $a6, $t0
	ld.b	$t0, $a4, 321
	sltui	$a7, $a7, 1
	and	$a7, $t1, $a7
	add.d	$a5, $a5, $a7
	andi	$a7, $t0, 255
	xor	$t0, $a0, $a7
	sltu	$t1, $zero, $t0
	sltui	$t0, $t0, 1
	xor	$a7, $a1, $a7
	sltui	$a7, $a7, 1
	ld.b	$a4, $a4, 322
	add.d	$a6, $a6, $t0
	and	$a7, $t1, $a7
	add.d	$a5, $a5, $a7
	andi	$a4, $a4, 255
	xor	$a7, $a0, $a4
	sltu	$t0, $zero, $a7
	sltui	$a7, $a7, 1
	xor	$a4, $a1, $a4
	sltui	$a4, $a4, 1
	add.w	$fp, $a6, $a7
	and	$a4, $t0, $a4
	addi.d	$a2, $a2, 19
	add.w	$s0, $a5, $a4
	bne	$a2, $a3, .LBB0_18
# %bb.19:
	ori	$a0, $zero, 19
	st.w	$a0, $sp, 24
	st.w	$a0, $sp, 20
	pcaddu18i	$ra, %call36(showboard)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
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
.Lfunc_end0:
	.size	endgame, .Lfunc_end0-endgame
                                        # -- End function
	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Second, I need you to fill in neutral territories with "
	.size	.L.str.2, 56

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"\nFirst, you should enter the dead pieces (blank and white) to"
	.size	.L.str.5, 62

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Dead piece? "
	.size	.L.str.8, 13

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"%s"
	.size	.L.str.9, 3

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"stop"
	.size	.L.str.10, 5

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Next, you need to fill in pieces (black and white) in all neutral"
	.size	.L.str.11, 66

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Your piece? "
	.size	.L.str.14, 13

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"My piece? "
	.size	.L.str.15, 11

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Your total number of pieces %d\n"
	.size	.L.str.16, 32

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"My total number of pieces %d\n"
	.size	.L.str.17, 30

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"\nTo count score, we need the following steps:"
	.size	.Lstr, 46

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"First, I need you to remove all dead pieces on the board."
	.size	.Lstr.1, 58

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"pieces."
	.size	.Lstr.2, 8

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"Last, I will fill in all pieces and anounce the winner."
	.size	.Lstr.3, 56

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	" be removed.  Enter"
	.size	.Lstr.4, 20

	.type	.Lstr.5,@object                 # @str.5
.Lstr.5:
	.asciz	" 'stop' when you have finished."
	.size	.Lstr.5, 32

	.type	.Lstr.6,@object                 # @str.6
.Lstr.6:
	.asciz	" territories."
	.size	.Lstr.6, 14

	.type	.Lstr.7,@object                 # @str.7
.Lstr.7:
	.asciz	"Enter your and my pieces alternately and enter 'stop' when finish"
	.size	.Lstr.7, 66

	.section	".note.GNU-stack","",@progbits
	.addrsig
