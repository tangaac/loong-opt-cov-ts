	.file	"lsx-vmaddwev-3.c"
	.text
	.globl	check_lsx_out                   # -- Begin function check_lsx_out
	.p2align	5
	.type	check_lsx_out,@function
check_lsx_out:                          # @check_lsx_out
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s3, $a4
	move	$s4, $a3
	move	$s2, $a2
	move	$fp, $a1
	move	$s1, $a0
	slti	$a0, $a2, 16
	ori	$a1, $zero, 16
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$s0, $a0, $a1
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_6
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB0_7
# %bb.2:                                # %.lr.ph.preheader
	bstrpick.d	$s3, $s0, 31, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s2, $a0, %pc_lo12(.L.str.2)
	.p2align	4, , 16
.LBB0_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $s1, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 1
	bnez	$s3, .LBB0_3
# %bb.4:                                # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bstrpick.d	$s1, $s0, 31, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s0, $a0, %pc_lo12(.L.str.2)
	.p2align	4, , 16
.LBB0_5:                                # %.lr.ph20
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 1
	bnez	$s1, .LBB0_5
	b	.LBB0_8
.LBB0_6:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB0_7:                                # %._crit_edge21.critedge
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_8:                                # %._crit_edge21
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
.Lfunc_end0:
	.size	check_lsx_out, .Lfunc_end0-check_lsx_out
                                        # -- End function
	.globl	check_lsx_fp_out                # -- Begin function check_lsx_fp_out
	.p2align	5
	.type	check_lsx_fp_out,@function
check_lsx_fp_out:                       # @check_lsx_fp_out
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a5
	move	$s0, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	ori	$a1, $zero, 4
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 8
	maskeqz	$a2, $a2, $a0
	or	$s4, $a2, $a1
	move	$s7, $zero
	ori	$s8, $zero, 16
	bnez	$a0, .LBB1_2
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_1:                                #   in Loop: Header=BB1_2 Depth=1
	add.d	$s7, $s7, $s4
	bgeu	$s7, $s8, .LBB1_10
.LBB1_2:                                # %.split.us
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s3, $s7
	add.d	$s5, $s2, $s7
	move	$a0, $s6
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_1
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	fld.d	$fa0, $s6, 0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB1_9
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	fld.d	$fa0, $s5, 0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_1
	b	.LBB1_9
	.p2align	4, , 16
.LBB1_5:                                #   in Loop: Header=BB1_6 Depth=1
	add.d	$s7, $s7, $s4
	bgeu	$s7, $s8, .LBB1_10
.LBB1_6:                                # %.split
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s3, $s7
	add.d	$s5, $s2, $s7
	move	$a0, $s6
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_5
# %bb.7:                                # %.critedge
                                        #   in Loop: Header=BB1_6 Depth=1
	fld.s	$fa0, $s6, 0
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB1_9
# %bb.8:                                #   in Loop: Header=BB1_6 Depth=1
	fld.s	$fa0, $s5, 0
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB1_5
.LBB1_9:                                # %.split27.us
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s0
	move	$a4, $fp
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(check_lsx_out)
	jr	$t8
.LBB1_10:                               # %.loopexit
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end1:
	.size	check_lsx_fp_out, .Lfunc_end1-check_lsx_fp_out
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI2_0:
	.byte	9                               # 0x9
	.byte	0                               # 0x0
	.byte	205                             # 0xcd
	.byte	194                             # 0xc2
	.byte	1                               # 0x1
	.byte	12                              # 0xc
	.byte	192                             # 0xc0
	.byte	192                             # 0xc0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	192                             # 0xc0
	.byte	192                             # 0xc0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	192                             # 0xc0
	.byte	192                             # 0xc0
.LCPI2_1:
	.byte	0                               # 0x0
	.byte	247                             # 0xf7
	.byte	247                             # 0xf7
	.byte	0                               # 0x0
	.byte	247                             # 0xf7
	.byte	247                             # 0xf7
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	247                             # 0xf7
	.byte	247                             # 0xf7
	.byte	0                               # 0x0
	.byte	127                             # 0x7f
	.byte	120                             # 0x78
	.byte	120                             # 0x78
	.byte	127                             # 0x7f
.LCPI2_2:
	.byte	13                              # 0xd
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_3:
	.dword	0                               # 0x0
	.dword	140738553774079                 # 0x80003f80ffff
.LCPI2_4:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	123                             # 0x7b
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_5:
	.byte	129                             # 0x81
	.byte	255                             # 0xff
	.byte	129                             # 0x81
	.byte	0                               # 0x0
	.byte	129                             # 0x81
	.byte	255                             # 0xff
	.byte	130                             # 0x82
	.byte	255                             # 0xff
	.byte	129                             # 0x81
	.byte	0                               # 0x0
	.byte	129                             # 0x81
	.byte	255                             # 0xff
	.byte	130                             # 0x82
	.byte	255                             # 0xff
	.byte	129                             # 0x81
	.byte	255                             # 0xff
.LCPI2_6:
	.dword	0                               # 0x0
	.dword	-32768                          # 0xffffffffffff8000
.LCPI2_7:
	.dword	8569501867152537819             # 0x76ecfc8b85ac78db
	.dword	0                               # 0x0
.LCPI2_8:
	.byte	196                             # 0xc4
	.byte	200                             # 0xc8
	.byte	147                             # 0x93
	.byte	229                             # 0xe5
	.byte	196                             # 0xc4
	.byte	200                             # 0xc8
	.byte	147                             # 0x93
	.byte	229                             # 0xe5
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	255                             # 0xff
.LCPI2_9:
	.byte	31                              # 0x1f
	.byte	128                             # 0x80
	.byte	143                             # 0x8f
	.byte	194                             # 0xc2
	.byte	15                              # 0xf
	.byte	0                               # 0x0
	.byte	31                              # 0x1f
	.byte	132                             # 0x84
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_10:
	.dword	66560                           # 0x10400
	.dword	0                               # 0x0
.LCPI2_11:
	.word	65523                           # 0xfff3
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_12:
	.dword	4295049120                      # 0x100013fa0
	.dword	7684159572                      # 0x1ca02f854
.LCPI2_13:
	.dword	-4611686006874613680            # 0xc0000002b0995850
	.dword	-281470196202135                # 0xffff00011cf0c569
.LCPI2_14:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	32768                           # 0x8000
	.half	127                             # 0x7f
	.half	22035                           # 0x5613
	.half	32768                           # 0x8000
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_15:
	.word	2962839632                      # 0xb0995850
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_16:
	.dword	71495743571425537               # 0xfe00fffe86f901
	.dword	0                               # 0x0
.LCPI2_17:
	.half	64770                           # 0xfd02
	.half	65025                           # 0xfe01
	.half	255                             # 0xff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_18:
	.half	32257                           # 0x7e01
	.half	65535                           # 0xffff
	.half	65280                           # 0xff00
	.half	65535                           # 0xffff
	.half	33278                           # 0x81fe
	.half	65535                           # 0xffff
	.half	255                             # 0xff
	.half	0                               # 0x0
.LCPI2_19:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_20:
	.word	0                               # 0x0
	.word	4294443072                      # 0xfff80040
	.word	16384                           # 0x4000
	.word	0                               # 0x0
.LCPI2_21:
	.dword	0                               # 0x0
	.dword	-4611756388245323778            # 0xbfffbfffbfffbffe
.LCPI2_22:
	.dword	-6397772433399808               # 0xffe9454286c0e000
	.dword	-870525680985047040             # 0xf3eb458161080000
.LCPI2_23:
	.word	4275527681                      # 0xfed76001
	.word	1806566687                      # 0x6bae051f
	.word	3622016640                      # 0xd7e39680
	.word	1515698891                      # 0x5a57bacb
.LCPI2_24:
	.word	314630144                       # 0x12c0e000
	.word	930840841                       # 0x377b8109
	.word	1293176832                      # 0x4d145000
	.word	2551478864                      # 0x98147a50
.LCPI2_25:
	.dword	8669581929788472542             # 0x78508ad4ec2ffcde
	.dword	-1012762422551940493            # 0xf1f1f1f149ed7273
.LCPI2_26:
	.word	2254333345                      # 0x865e65a1
	.word	4059165169                      # 0xf1f1f1f1
	.word	1240298099                      # 0x49ed7273
	.word	4059165169                      # 0xf1f1f1f1
.LCPI2_27:
	.word	4294939677                      # 0xffff941d
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_28:
	.dword	281535106252785                 # 0x1000dfffffff1
	.dword	281530811285490                 # 0x1000cfffffff2
.LCPI2_29:
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	13                              # 0xd
	.word	18                              # 0x12
.LCPI2_30:
	.dword	9223369842126487552             # 0x7ffffe0100000000
	.dword	3292092432639                   # 0x2fe800000ff
.LCPI2_31:
	.dword	9223372032559808511             # 0x7ffffffeffffffff
	.dword	-35747322042253313              # 0xff80ffffffffffff
.LCPI2_32:
	.dword	-108086391056891903             # 0xfe80000000000001
	.dword	0                               # 0x0
.LCPI2_33:
	.dword	-36028797018963968              # 0xff80000000000000
	.dword	0                               # 0x0
.LCPI2_34:
	.dword	1                               # 0x1
	.dword	9223372036854775807             # 0x7fffffffffffffff
.LCPI2_35:
	.dword	-72057594037927935              # 0xff00000000000001
	.dword	0                               # 0x0
.LCPI2_36:
	.dword	4294967295                      # 0xffffffff
	.dword	0                               # 0x0
.LCPI2_37:
	.dword	0                               # 0x0
	.dword	128                             # 0x80
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_0)
	vrepli.b	$vr1, 0
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	vst	$vr1, $sp, 32
	vmaddwev.h.bu.b	$vr1, $vr1, $vr0
	vst	$vr1, $sp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$fp, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 24
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_1)
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vst	$vr1, $sp, 32
	vmaddwev.h.bu.b	$vr1, $vr0, $vr1
	vst	$vr1, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 31
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1024
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 32
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vmaddwev.h.bu.b	$vr0, $vr1, $vr1
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 38
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_2)
	vst	$vr1, $sp, 0                    # 16-byte Folded Spill
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 32
	vmaddwev.h.bu.b	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 45
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_3)
	vst	$vr0, $sp, 32
	ori	$s0, $zero, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 256
	lu52i.d	$a0, $a0, 1023
	vreplgr2vr.d	$vr1, $a0
	vrepli.w	$vr2, 32
	vmaddwev.h.bu.b	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 52
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_4)
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vst	$vr1, $sp, 32
	vmaddwev.h.bu.b	$vr1, $vr0, $vr1
	vst	$vr1, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 59
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_5)
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vst	$vr1, $sp, 32
	vmaddwev.h.bu.b	$vr1, $vr1, $vr0
	vst	$vr1, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 66
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 32
	vmaddwev.h.bu.b	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 73
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 8
	vst	$vr0, $sp, 32
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vmaddwev.h.bu.b	$vr0, $vr1, $vr1
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 80
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_6)
	vst	$vr0, $sp, 32
	ori	$a0, $zero, 0
	lu32i.d	$a0, 32768
	vreplgr2vr.d	$vr1, $a0
	vmaddwev.h.bu.b	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 87
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_7)
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_8)
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_9)
	vst	$vr0, $sp, 32
	vmaddwev.h.bu.b	$vr2, $vr2, $vr1
	vst	$vr2, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 94
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_10)
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_11)
	vst	$vr0, $sp, 32
	vrepli.d	$vr0, 1
	vld	$vr2, $sp, 0                    # 16-byte Folded Reload
	vmaddwev.w.hu.h	$vr1, $vr0, $vr2
	vst	$vr1, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 101
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 32
	vmaddwev.w.hu.h	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 108
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_12)
	vst	$vr0, $sp, 32
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vmaddwev.w.hu.h	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 115
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_13)
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_14)
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_15)
	vst	$vr0, $sp, 32
	vmaddwev.w.hu.h	$vr2, $vr1, $vr1
	vst	$vr2, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 122
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_16)
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_17)
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_18)
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	vld	$vr3, $a0, %pc_lo12(.LCPI2_19)
	vst	$vr0, $sp, 32
	vmaddwev.w.hu.h	$vr3, $vr2, $vr1
	vst	$vr3, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 129
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vst	$vr1, $sp, 32
	vmaddwev.d.wu.w	$vr1, $vr1, $vr1
	vst	$vr1, $sp, 0                    # 16-byte Folded Spill
	vst	$vr1, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 136
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_20)
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vst	$vr1, $sp, 32
	vmaddwev.d.wu.w	$vr1, $vr0, $vr1
	vst	$vr1, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 143
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 32
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 150
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_21)
	vst	$vr0, $sp, 32
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vmaddwev.d.wu.w	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 157
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 304
	lu32i.d	$a0, 196608
	lu52i.d	$a0, $a0, -3
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 32
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vmaddwev.d.wu.w	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 164
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -123008
	ori	$a0, $a0, 3844
	lu32i.d	$a0, 3842
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 32
	lu12i.w	$a0, 991
	ori	$a0, $a0, 4034
	vreplgr2vr.d	$vr0, $a0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	vreplgr2vr.d	$vr1, $a0
	vmaddwev.d.wu.w	$vr1, $vr0, $vr0
	vst	$vr1, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 171
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	vst	$vr0, $sp, 32
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vmaddwev.d.wu.w	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 178
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_22)
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_23)
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_24)
	vst	$vr0, $sp, 32
	lu32i.d	$s0, -65538
	vreplgr2vr.d	$vr0, $s0
	vmaddwev.d.wu.w	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 185
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -212546
	ori	$a0, $a0, 1468
	lu32i.d	$a0, -6562
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 32
	lu12i.w	$a0, 1296
	ori	$a0, $a0, 82
	vreplgr2vr.w	$vr0, $a0
	vrepli.h	$vr1, -82
	vld	$vr2, $sp, 16                   # 16-byte Folded Reload
	vmaddwev.d.wu.w	$vr2, $vr0, $vr1
	vst	$vr2, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 192
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_25)
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_26)
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_27)
	vst	$vr0, $sp, 32
	vmaddwev.d.wu.w	$vr1, $vr2, $vr1
	vst	$vr1, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 199
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_28)
	vst	$vr0, $sp, 32
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_29)
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 65535
	vreplgr2vr.d	$vr1, $a0
	vmaddwev.d.wu.w	$vr1, $vr1, $vr0
	vst	$vr1, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 206
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 0                    # 16-byte Folded Reload
	vst	$vr1, $sp, 32
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vmaddwev.q.du.d	$vr1, $vr1, $vr0
	vst	$vr1, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 213
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_30)
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_31)
	vst	$vr0, $sp, 32
	vrepli.w	$vr0, 511
	vmaddwev.q.du.d	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 220
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_32)
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_33)
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_34)
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	vld	$vr3, $a0, %pc_lo12(.LCPI2_35)
	vst	$vr0, $sp, 32
	vmaddwev.q.du.d	$vr3, $vr2, $vr1
	vst	$vr3, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 227
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_36)
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vst	$vr1, $sp, 32
	vmaddwev.q.du.d	$vr1, $vr0, $vr1
	vst	$vr1, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 234
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 32
	vmaddwev.q.du.d	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 241
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_37)
	vst	$vr0, $sp, 32
	vrepli.h	$vr1, 1
	vld	$vr2, $sp, 16                   # 16-byte Folded Reload
	vmaddwev.q.du.d	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 48
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 16
	ori	$a4, $zero, 248
	move	$a3, $fp
	pcaddu18i	$ra, %call36(check_lsx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s:%d: \n"
	.size	.L.str, 9

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"0x"
	.size	.L.str.1, 3

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	" %02x"
	.size	.L.str.2, 6

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/SingleSource/UnitTests/Vector/LSX/lsx-vmaddwev-3.c"
	.size	.L.str.5, 125

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
