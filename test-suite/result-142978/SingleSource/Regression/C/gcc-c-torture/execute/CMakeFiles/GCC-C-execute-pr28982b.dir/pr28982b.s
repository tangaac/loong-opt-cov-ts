	.file	"pr28982b.c"
	.text
	.globl	bar                             # -- Begin function bar
	.p2align	5
	.type	bar,@function
bar:                                    # @bar
# %bb.0:
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(incs)
	ld.w	$a2, $a1, %pc_lo12(incs)
	add.d	$a0, $a2, $a0
	st.w	$a0, $a1, %pc_lo12(incs)
	ret
.Lfunc_end0:
	.size	bar, .Lfunc_end0-bar
                                        # -- End function
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
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
	lu12i.w	$a1, 63
	ori	$a1, $a1, 2320
	sub.d	$sp, $sp, $a1
	beqz	$a0, .LBB1_3
# %bb.1:                                # %.lr.ph
	pcalau12i	$a1, %pc_hi20(ptrs)
	addi.d	$s2, $a1, %pc_lo12(ptrs)
	ld.d	$a1, $s2, 152
	ld.d	$a2, $s2, 144
	ld.d	$a3, $s2, 136
	ld.d	$a4, $s2, 128
	ld.d	$a5, $s2, 120
	ld.d	$a6, $s2, 112
	ld.d	$a7, $s2, 104
	ld.d	$t0, $s2, 96
	ld.d	$t1, $s2, 88
	ld.d	$t2, $s2, 80
	ld.d	$t3, $s2, 72
	ld.d	$t4, $s2, 64
	ld.d	$t5, $s2, 56
	ld.d	$t6, $s2, 48
	ld.d	$t7, $s2, 40
	ld.d	$t8, $s2, 32
	ld.d	$fp, $s2, 24
	ld.d	$s0, $s2, 16
	ld.d	$s1, $s2, 8
	ld.d	$s2, $s2, 0
	pcalau12i	$s3, %pc_hi20(incs)
	addi.d	$s3, $s3, %pc_lo12(incs)
	ld.w	$s4, $s3, 76
	st.d	$s4, $sp, 160                   # 8-byte Folded Spill
	ld.w	$s5, $s3, 72
	ld.w	$s6, $s3, 68
	ld.w	$s7, $s3, 64
	ld.w	$s8, $s3, 60
	ld.w	$ra, $s3, 56
	ld.w	$s4, $s3, 52
	st.d	$s4, $sp, 112                   # 8-byte Folded Spill
	ld.w	$s4, $s3, 48
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	ld.w	$s4, $s3, 44
	st.d	$s4, $sp, 96                    # 8-byte Folded Spill
	ld.w	$s4, $s3, 40
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	ld.w	$s4, $s3, 36
	st.d	$s4, $sp, 80                    # 8-byte Folded Spill
	ld.w	$s4, $s3, 32
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	ld.w	$s4, $s3, 28
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	ld.w	$s4, $s3, 24
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	ld.w	$s4, $s3, 20
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	ld.w	$s4, $s3, 16
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	ld.w	$s4, $s3, 12
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	ld.w	$s4, $s3, 8
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	ld.w	$s4, $s3, 4
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	ld.w	$s3, $s3, 0
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	slli.d	$s3, $s3, 2
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	slli.d	$s3, $s5, 2
	st.d	$s3, $sp, 152                   # 8-byte Folded Spill
	slli.d	$s3, $s6, 2
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	slli.d	$s3, $s7, 2
	st.d	$s3, $sp, 136                   # 8-byte Folded Spill
	slli.d	$s3, $s8, 2
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	slli.d	$s3, $ra, 2
	st.d	$s3, $sp, 120                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	slli.d	$s3, $s3, 2
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	slli.d	$s3, $s3, 2
	st.d	$s3, $sp, 104                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	slli.d	$s3, $s3, 2
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	slli.d	$s3, $s3, 2
	st.d	$s3, $sp, 88                    # 8-byte Folded Spill
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	slli.d	$s3, $s3, 2
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	slli.d	$s3, $s3, 2
	st.d	$s3, $sp, 72                    # 8-byte Folded Spill
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	slli.d	$s3, $s3, 2
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	slli.d	$s3, $s3, 2
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	slli.d	$s3, $s3, 2
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	slli.d	$s4, $s4, 2
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	slli.d	$s5, $s5, 2
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	slli.d	$s6, $s6, 2
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	slli.d	$s7, $s7, 2
	vrepli.b	$vr0, 0
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	slli.d	$s8, $s8, 2
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	vori.b	$vr3, $vr0, 0
	vori.b	$vr4, $vr0, 0
	.p2align	4, , 16
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa5, $s2, 0
	fld.s	$fa6, $s1, 0
	fld.s	$fa7, $s0, 0
	fld.s	$ft0, $fp, 0
	movfr2gr.s	$ra, $fa5
	vinsgr2vr.w	$vr5, $ra, 0
	movfr2gr.s	$ra, $fa6
	vinsgr2vr.w	$vr5, $ra, 1
	movfr2gr.s	$ra, $fa7
	vinsgr2vr.w	$vr5, $ra, 2
	movfr2gr.s	$ra, $ft0
	fld.s	$fa6, $t8, 0
	fld.s	$fa7, $t7, 0
	fld.s	$ft0, $t6, 0
	fld.s	$ft1, $t5, 0
	vinsgr2vr.w	$vr5, $ra, 3
	movfr2gr.s	$ra, $fa6
	vinsgr2vr.w	$vr6, $ra, 0
	movfr2gr.s	$ra, $fa7
	vinsgr2vr.w	$vr6, $ra, 1
	movfr2gr.s	$ra, $ft0
	vinsgr2vr.w	$vr6, $ra, 2
	movfr2gr.s	$ra, $ft1
	fld.s	$fa7, $t4, 0
	fld.s	$ft0, $t3, 0
	fld.s	$ft1, $t2, 0
	fld.s	$ft2, $t1, 0
	vinsgr2vr.w	$vr6, $ra, 3
	movfr2gr.s	$ra, $fa7
	vinsgr2vr.w	$vr7, $ra, 0
	movfr2gr.s	$ra, $ft0
	vinsgr2vr.w	$vr7, $ra, 1
	movfr2gr.s	$ra, $ft1
	vinsgr2vr.w	$vr7, $ra, 2
	movfr2gr.s	$ra, $ft2
	fld.s	$ft0, $t0, 0
	fld.s	$ft1, $a7, 0
	fld.s	$ft2, $a6, 0
	fld.s	$ft3, $a5, 0
	vinsgr2vr.w	$vr7, $ra, 3
	movfr2gr.s	$ra, $ft0
	vinsgr2vr.w	$vr8, $ra, 0
	movfr2gr.s	$ra, $ft1
	vinsgr2vr.w	$vr8, $ra, 1
	movfr2gr.s	$ra, $ft2
	vinsgr2vr.w	$vr8, $ra, 2
	movfr2gr.s	$ra, $ft3
	fld.s	$ft1, $a4, 0
	fld.s	$ft2, $a3, 0
	fld.s	$ft3, $a2, 0
	fld.s	$ft4, $a1, 0
	vinsgr2vr.w	$vr8, $ra, 3
	movfr2gr.s	$ra, $ft1
	vinsgr2vr.w	$vr9, $ra, 0
	movfr2gr.s	$ra, $ft2
	vinsgr2vr.w	$vr9, $ra, 1
	movfr2gr.s	$ra, $ft3
	vinsgr2vr.w	$vr9, $ra, 2
	movfr2gr.s	$ra, $ft4
	vinsgr2vr.w	$vr9, $ra, 3
	vfadd.s	$vr0, $vr0, $vr5
	addi.w	$a0, $a0, -1
	vfadd.s	$vr1, $vr1, $vr6
	vfadd.s	$vr2, $vr2, $vr7
	vfadd.s	$vr3, $vr3, $vr8
	vfadd.s	$vr4, $vr4, $vr9
	ld.d	$ra, $sp, 160                   # 8-byte Folded Reload
	add.d	$a1, $a1, $ra
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	add.d	$a2, $a2, $ra
	ld.d	$ra, $sp, 144                   # 8-byte Folded Reload
	add.d	$a3, $a3, $ra
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	add.d	$a4, $a4, $ra
	ld.d	$ra, $sp, 128                   # 8-byte Folded Reload
	add.d	$a5, $a5, $ra
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	add.d	$a6, $a6, $ra
	ld.d	$ra, $sp, 112                   # 8-byte Folded Reload
	add.d	$a7, $a7, $ra
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	add.d	$t0, $t0, $ra
	ld.d	$ra, $sp, 96                    # 8-byte Folded Reload
	add.d	$t1, $t1, $ra
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	add.d	$t2, $t2, $ra
	ld.d	$ra, $sp, 80                    # 8-byte Folded Reload
	add.d	$t3, $t3, $ra
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	add.d	$t4, $t4, $ra
	ld.d	$ra, $sp, 64                    # 8-byte Folded Reload
	add.d	$t5, $t5, $ra
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	add.d	$t6, $t6, $ra
	add.d	$t7, $t7, $s3
	add.d	$t8, $t8, $s4
	add.d	$fp, $fp, $s5
	add.d	$s0, $s0, $s6
	add.d	$s1, $s1, $s7
	add.d	$s2, $s2, $s8
	bnez	$a0, .LBB1_2
	b	.LBB1_4
.LBB1_3:
	vrepli.b	$vr0, 0
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	vori.b	$vr3, $vr0, 0
	vori.b	$vr4, $vr0, 0
.LBB1_4:                                # %._crit_edge
	pcalau12i	$a0, %pc_hi20(results)
	addi.d	$a0, $a0, %pc_lo12(results)
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	vst	$vr2, $a0, 32
	vst	$vr3, $a0, 48
	vst	$vr4, $a0, 64
	lu12i.w	$a2, 64
	addi.d	$a0, $sp, 168
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 168
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 63
	ori	$a0, $a0, 2320
	add.d	$sp, $sp, $a0
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
.Lfunc_end1:
	.size	foo, .Lfunc_end1-foo
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI2_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
.LCPI2_1:
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI2_2:
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
.LCPI2_3:
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
.LCPI2_4:
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
.LCPI2_5:
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
	.word	0x40000000                      # float 2
	.word	0x40400000                      # float 3
.LCPI2_6:
	.word	0x40800000                      # float 4
	.word	0x40a00000                      # float 5
	.word	0x40c00000                      # float 6
	.word	0x40e00000                      # float 7
.LCPI2_7:
	.word	0x41000000                      # float 8
	.word	0x41100000                      # float 9
	.word	0x41200000                      # float 10
	.word	0x41300000                      # float 11
.LCPI2_8:
	.word	0x41400000                      # float 12
	.word	0x41500000                      # float 13
	.word	0x41600000                      # float 14
	.word	0x41700000                      # float 15
.LCPI2_9:
	.word	0x41800000                      # float 16
	.word	0x41880000                      # float 17
	.word	0x41900000                      # float 18
	.word	0x41980000                      # float 19
.LCPI2_10:
	.word	0x41a00000                      # float 20
	.word	0x41a80000                      # float 21
	.word	0x41b00000                      # float 22
	.word	0x41b80000                      # float 23
.LCPI2_11:
	.word	0x41c00000                      # float 24
	.word	0x41c80000                      # float 25
	.word	0x41d00000                      # float 26
	.word	0x41d80000                      # float 27
.LCPI2_12:
	.word	0x41e00000                      # float 28
	.word	0x41e80000                      # float 29
	.word	0x41f00000                      # float 30
	.word	0x41f80000                      # float 31
.LCPI2_13:
	.word	0x42000000                      # float 32
	.word	0x42040000                      # float 33
	.word	0x42080000                      # float 34
	.word	0x420c0000                      # float 35
.LCPI2_14:
	.word	0x42100000                      # float 36
	.word	0x42140000                      # float 37
	.word	0x42180000                      # float 38
	.word	0x421c0000                      # float 39
.LCPI2_15:
	.word	0x42200000                      # float 40
	.word	0x42240000                      # float 41
	.word	0x42280000                      # float 42
	.word	0x422c0000                      # float 43
.LCPI2_16:
	.word	0x42300000                      # float 44
	.word	0x42340000                      # float 45
	.word	0x42380000                      # float 46
	.word	0x423c0000                      # float 47
.LCPI2_17:
	.word	0x42400000                      # float 48
	.word	0x42440000                      # float 49
	.word	0x42480000                      # float 50
	.word	0x424c0000                      # float 51
.LCPI2_18:
	.word	0x42500000                      # float 52
	.word	0x42540000                      # float 53
	.word	0x42580000                      # float 54
	.word	0x425c0000                      # float 55
.LCPI2_19:
	.word	0x42600000                      # float 56
	.word	0x42640000                      # float 57
	.word	0x42680000                      # float 58
	.word	0x426c0000                      # float 59
.LCPI2_20:
	.word	0x42700000                      # float 60
	.word	0x42740000                      # float 61
	.word	0x42780000                      # float 62
	.word	0x427c0000                      # float 63
.LCPI2_21:
	.word	0x42800000                      # float 64
	.word	0x42820000                      # float 65
	.word	0x42840000                      # float 66
	.word	0x42860000                      # float 67
.LCPI2_22:
	.word	0x42880000                      # float 68
	.word	0x428a0000                      # float 69
	.word	0x428c0000                      # float 70
	.word	0x428e0000                      # float 71
.LCPI2_23:
	.word	0x42900000                      # float 72
	.word	0x42920000                      # float 73
	.word	0x42940000                      # float 74
	.word	0x42960000                      # float 75
.LCPI2_24:
	.word	0x42980000                      # float 76
	.word	0x429a0000                      # float 77
	.word	0x429c0000                      # float 78
	.word	0x429e0000                      # float 79
.LCPI2_25:
	.word	0x00000000                      # float 0
	.word	0x41200000                      # float 10
	.word	0x41a00000                      # float 20
	.word	0x41f00000                      # float 30
.LCPI2_26:
	.word	0x42200000                      # float 40
	.word	0x42480000                      # float 50
	.word	0x42700000                      # float 60
	.word	0x428c0000                      # float 70
.LCPI2_27:
	.word	0x42a00000                      # float 80
	.word	0x42b40000                      # float 90
	.word	0x42c80000                      # float 100
	.word	0x42dc0000                      # float 110
.LCPI2_28:
	.word	0x42f00000                      # float 120
	.word	0x43020000                      # float 130
	.word	0x430c0000                      # float 140
	.word	0x43160000                      # float 150
.LCPI2_29:
	.word	0x43200000                      # float 160
	.word	0x432a0000                      # float 170
	.word	0x43340000                      # float 180
	.word	0x433e0000                      # float 190
.LCPI2_30:
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %.preheader.preheader
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(input)
	addi.d	$a0, $a0, %pc_lo12(input)
	pcalau12i	$a1, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI2_0)
	pcalau12i	$a1, %pc_hi20(incs)
	addi.d	$a1, $a1, %pc_lo12(incs)
	pcalau12i	$a2, %pc_hi20(.LCPI2_1)
	vld	$vr1, $a2, %pc_lo12(.LCPI2_1)
	vst	$vr0, $a1, 0
	pcalau12i	$a2, %pc_hi20(.LCPI2_2)
	vld	$vr0, $a2, %pc_lo12(.LCPI2_2)
	vst	$vr1, $a1, 16
	pcalau12i	$a2, %pc_hi20(.LCPI2_3)
	vld	$vr1, $a2, %pc_lo12(.LCPI2_3)
	vst	$vr0, $a1, 32
	pcalau12i	$a2, %pc_hi20(.LCPI2_4)
	vld	$vr0, $a2, %pc_lo12(.LCPI2_4)
	vst	$vr1, $a1, 48
	pcalau12i	$a2, %pc_hi20(.LCPI2_5)
	vld	$vr1, $a2, %pc_lo12(.LCPI2_5)
	vst	$vr0, $a1, 64
	pcalau12i	$a1, %pc_hi20(.LCPI2_6)
	vld	$vr0, $a1, %pc_lo12(.LCPI2_6)
	vst	$vr1, $a0, 0
	pcalau12i	$a1, %pc_hi20(.LCPI2_7)
	vld	$vr1, $a1, %pc_lo12(.LCPI2_7)
	vst	$vr0, $a0, 16
	pcalau12i	$a1, %pc_hi20(.LCPI2_8)
	vld	$vr0, $a1, %pc_lo12(.LCPI2_8)
	vst	$vr1, $a0, 32
	pcalau12i	$a1, %pc_hi20(.LCPI2_9)
	vld	$vr1, $a1, %pc_lo12(.LCPI2_9)
	vst	$vr0, $a0, 48
	pcalau12i	$a1, %pc_hi20(.LCPI2_10)
	vld	$vr0, $a1, %pc_lo12(.LCPI2_10)
	vst	$vr1, $a0, 64
	pcalau12i	$a1, %pc_hi20(.LCPI2_11)
	vld	$vr1, $a1, %pc_lo12(.LCPI2_11)
	vst	$vr0, $a0, 80
	pcalau12i	$a1, %pc_hi20(ptrs)
	addi.d	$a1, $a1, %pc_lo12(ptrs)
	vst	$vr1, $a0, 96
	pcalau12i	$a2, %pc_hi20(.LCPI2_12)
	vld	$vr0, $a2, %pc_lo12(.LCPI2_12)
	st.d	$a0, $a1, 0
	addi.d	$a2, $a0, 4
	st.d	$a2, $a1, 8
	vst	$vr0, $a0, 112
	pcalau12i	$a2, %pc_hi20(.LCPI2_13)
	vld	$vr0, $a2, %pc_lo12(.LCPI2_13)
	addi.d	$a2, $a0, 8
	st.d	$a2, $a1, 16
	addi.d	$a2, $a0, 12
	vst	$vr0, $a0, 128
	pcalau12i	$a3, %pc_hi20(.LCPI2_14)
	vld	$vr0, $a3, %pc_lo12(.LCPI2_14)
	st.d	$a2, $a1, 24
	addi.d	$a2, $a0, 16
	st.d	$a2, $a1, 32
	vst	$vr0, $a0, 144
	pcalau12i	$a2, %pc_hi20(.LCPI2_15)
	vld	$vr0, $a2, %pc_lo12(.LCPI2_15)
	addi.d	$a2, $a0, 20
	st.d	$a2, $a1, 40
	addi.d	$a2, $a0, 24
	vst	$vr0, $a0, 160
	pcalau12i	$a3, %pc_hi20(.LCPI2_16)
	vld	$vr0, $a3, %pc_lo12(.LCPI2_16)
	st.d	$a2, $a1, 48
	addi.d	$a2, $a0, 28
	st.d	$a2, $a1, 56
	vst	$vr0, $a0, 176
	pcalau12i	$a2, %pc_hi20(.LCPI2_17)
	vld	$vr0, $a2, %pc_lo12(.LCPI2_17)
	addi.d	$a2, $a0, 32
	st.d	$a2, $a1, 64
	addi.d	$a2, $a0, 36
	vst	$vr0, $a0, 192
	pcalau12i	$a3, %pc_hi20(.LCPI2_18)
	vld	$vr0, $a3, %pc_lo12(.LCPI2_18)
	st.d	$a2, $a1, 72
	addi.d	$a2, $a0, 40
	st.d	$a2, $a1, 80
	vst	$vr0, $a0, 208
	pcalau12i	$a2, %pc_hi20(.LCPI2_19)
	vld	$vr0, $a2, %pc_lo12(.LCPI2_19)
	addi.d	$a2, $a0, 44
	st.d	$a2, $a1, 88
	addi.d	$a2, $a0, 48
	vst	$vr0, $a0, 224
	pcalau12i	$a3, %pc_hi20(.LCPI2_20)
	vld	$vr0, $a3, %pc_lo12(.LCPI2_20)
	st.d	$a2, $a1, 96
	addi.d	$a2, $a0, 52
	st.d	$a2, $a1, 104
	vst	$vr0, $a0, 240
	pcalau12i	$a2, %pc_hi20(.LCPI2_21)
	vld	$vr0, $a2, %pc_lo12(.LCPI2_21)
	addi.d	$a2, $a0, 56
	st.d	$a2, $a1, 112
	addi.d	$a2, $a0, 60
	vst	$vr0, $a0, 256
	pcalau12i	$a3, %pc_hi20(.LCPI2_22)
	vld	$vr0, $a3, %pc_lo12(.LCPI2_22)
	st.d	$a2, $a1, 120
	addi.d	$a2, $a0, 64
	st.d	$a2, $a1, 128
	vst	$vr0, $a0, 272
	pcalau12i	$a2, %pc_hi20(.LCPI2_23)
	vld	$vr0, $a2, %pc_lo12(.LCPI2_23)
	addi.d	$a2, $a0, 68
	st.d	$a2, $a1, 136
	addi.d	$a2, $a0, 72
	vst	$vr0, $a0, 288
	pcalau12i	$a3, %pc_hi20(.LCPI2_24)
	vld	$vr0, $a3, %pc_lo12(.LCPI2_24)
	st.d	$a2, $a1, 144
	addi.d	$a2, $a0, 76
	st.d	$a2, $a1, 152
	vst	$vr0, $a0, 304
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(results)
	addi.d	$a0, $a0, %pc_lo12(results)
	vld	$vr0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.LCPI2_25)
	vld	$vr1, $a1, %pc_lo12(.LCPI2_25)
	vld	$vr2, $a0, 16
	vld	$vr3, $a0, 32
	vfcmp.cune.s	$vr0, $vr0, $vr1
	pcalau12i	$a1, %pc_hi20(.LCPI2_26)
	vld	$vr1, $a1, %pc_lo12(.LCPI2_26)
	pcalau12i	$a1, %pc_hi20(.LCPI2_27)
	vld	$vr4, $a1, %pc_lo12(.LCPI2_27)
	vld	$vr5, $a0, 48
	vfcmp.cune.s	$vr1, $vr2, $vr1
	vpickev.h	$vr0, $vr1, $vr0
	vfcmp.cune.s	$vr1, $vr3, $vr4
	pcalau12i	$a1, %pc_hi20(.LCPI2_28)
	vld	$vr2, $a1, %pc_lo12(.LCPI2_28)
	vpickve2gr.b	$a1, $vr0, 6
	vld	$vr3, $a0, 64
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	vld	$vr4, $a0, %pc_lo12(.LCPI2_29)
	vpickve2gr.b	$a0, $vr0, 4
	vpickve2gr.b	$a2, $vr0, 2
	vpickve2gr.b	$a3, $vr0, 0
	vfcmp.cune.s	$vr3, $vr3, $vr4
	vinsgr2vr.w	$vr4, $a3, 0
	vinsgr2vr.w	$vr4, $a2, 1
	vinsgr2vr.w	$vr4, $a0, 2
	vinsgr2vr.w	$vr4, $a1, 3
	vor.v	$vr3, $vr4, $vr3
	vpickve2gr.w	$a0, $vr3, 3
	st.b	$a0, $sp, 3
	vpickve2gr.w	$a0, $vr3, 2
	st.b	$a0, $sp, 2
	vpickve2gr.w	$a0, $vr3, 1
	st.b	$a0, $sp, 1
	vpickve2gr.w	$a0, $vr3, 0
	st.b	$a0, $sp, 0
	vld	$vr3, $sp, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	vld	$vr4, $a0, %pc_lo12(.LCPI2_30)
	vfcmp.cune.s	$vr2, $vr5, $vr2
	vpickev.h	$vr1, $vr2, $vr1
	vpickev.b	$vr0, $vr1, $vr0
	vshuf.w	$vr4, $vr0, $vr3
	vslli.b	$vr0, $vr4, 7
	vsrai.b	$vr0, $vr0, 7
	vmskltz.b	$vr0, $vr0
	vpickve2gr.hu	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	sltu	$a0, $zero, $a0
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.type	incs,@object                    # @incs
	.bss
	.globl	incs
	.p2align	4, 0x0
incs:
	.space	80
	.size	incs, 80

	.type	ptrs,@object                    # @ptrs
	.globl	ptrs
	.p2align	3, 0x0
ptrs:
	.space	160
	.size	ptrs, 160

	.type	results,@object                 # @results
	.globl	results
	.p2align	6, 0x0
results:
	.space	80
	.size	results, 80

	.type	input,@object                   # @input
	.globl	input
	.p2align	4, 0x0
input:
	.space	320
	.size	input, 320

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym input
