	.file	"lasx-xvsubwev-2.c"
	.text
	.globl	check_lasx_out                  # -- Begin function check_lasx_out
	.p2align	5
	.type	check_lasx_out,@function
check_lasx_out:                         # @check_lasx_out
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
	slti	$a0, $a2, 32
	ori	$a1, $zero, 32
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
	blez	$s2, .LBB0_7
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
	.size	check_lasx_out, .Lfunc_end0-check_lasx_out
                                        # -- End function
	.globl	check_lasx_fp_out               # -- Begin function check_lasx_fp_out
	.p2align	5
	.type	check_lasx_fp_out,@function
check_lasx_fp_out:                      # @check_lasx_fp_out
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
	ori	$s8, $zero, 32
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
	pcaddu18i	$t8, %call36(check_lasx_out)
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
	.size	check_lasx_fp_out, .Lfunc_end1-check_lasx_fp_out
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI2_0:
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_1:
	.dword	-71495193840320386              # 0xff01ff800000007e
	.dword	-71495189561999488              # 0xff01ff80ff01ff80
	.dword	545460846719                    # 0x7f0000007f
	.dword	545460846719                    # 0x7f0000007f
.LCPI2_2:
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
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
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_3:
	.dword	-9851495337951183               # 0xffdd001dffe00031
	.dword	-9851495337951200               # 0xffdd001dffe00020
	.dword	-9851495337951183               # 0xffdd001dffe00031
	.dword	-9851495337951200               # 0xffdd001dffe00020
.LCPI2_4:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	67                              # 0x43
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	67                              # 0x43
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	67                              # 0x43
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	64                              # 0x40
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	67                              # 0x43
	.byte	0                               # 0x0
.LCPI2_5:
	.byte	49                              # 0x31
	.byte	100                             # 0x64
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	49                              # 0x31
	.byte	100                             # 0x64
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
.LCPI2_6:
	.dword	-8444382447271968               # 0xffe1ffe0ffe1ffe0
	.dword	71776260780392479               # 0xff0020ff1f001f
	.dword	-8444382447271968               # 0xffe1ffe0ffe1ffe0
	.dword	71776260780392479               # 0xff0020ff1f001f
.LCPI2_7:
	.byte	32                              # 0x20
	.byte	224                             # 0xe0
	.byte	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	224                             # 0xe0
	.byte	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	254                             # 0xfe
	.byte	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	224                             # 0xe0
	.byte	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	224                             # 0xe0
	.byte	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	254                             # 0xfe
	.byte	31                              # 0x1f
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_8:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	31                              # 0x1f
	.byte	254                             # 0xfe
	.byte	29                              # 0x1d
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	31                              # 0x1f
	.byte	254                             # 0xfe
	.byte	29                              # 0x1d
	.byte	0                               # 0x0
	.byte	32                              # 0x20
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI2_9:
	.dword	71777218572124346               # 0xff00fffff500ba
	.dword	0                               # 0x0
	.dword	71777218572124346               # 0xff00fffff500ba
	.dword	0                               # 0x0
.LCPI2_10:
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	249                             # 0xf9
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	249                             # 0xf9
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	0                               # 0x0
	.byte	128                             # 0x80
	.byte	0                               # 0x0
	.byte	128                             # 0x80
.LCPI2_11:
	.byte	186                             # 0xba
	.byte	0                               # 0x0
	.byte	238                             # 0xee
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	186                             # 0xba
	.byte	0                               # 0x0
	.byte	238                             # 0xee
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_12:
	.dword	65281                           # 0xff01
	.dword	280379776761856                 # 0xff0100ff0000
	.dword	65281                           # 0xff01
	.dword	280379776761856                 # 0xff0100ff0000
.LCPI2_13:
	.byte	255                             # 0xff
	.byte	255                             # 0xff
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
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	255                             # 0xff
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
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_14:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	71                              # 0x47
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	78                              # 0x4e
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	71                              # 0x47
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	254                             # 0xfe
	.byte	255                             # 0xff
	.byte	78                              # 0x4e
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_15:
	.dword	0                               # 0x0
	.dword	281457796907004                 # 0xfffc0000fffc
	.dword	0                               # 0x0
	.dword	281457796907004                 # 0xfffc0000fffc
.LCPI2_16:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65532                           # 0xfffc
	.half	65532                           # 0xfffc
	.half	65532                           # 0xfffc
	.half	65532                           # 0xfffc
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65532                           # 0xfffc
	.half	65532                           # 0xfffc
	.half	65532                           # 0xfffc
	.half	65532                           # 0xfffc
.LCPI2_17:
	.dword	-202632262100871                # 0xffff47b4ffff5879
	.dword	88304527553137                  # 0x504fffff3271
	.dword	-202632262100871                # 0xffff47b4ffff5879
	.dword	88304527553137                  # 0x504fffff3271
.LCPI2_18:
	.half	61680                           # 0xf0f0
	.half	61680                           # 0xf0f0
	.half	61680                           # 0xf0f0
	.half	61680                           # 0xf0f0
	.half	61680                           # 0xf0f0
	.half	61680                           # 0xf0f0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	61680                           # 0xf0f0
	.half	61680                           # 0xf0f0
	.half	61680                           # 0xf0f0
	.half	61680                           # 0xf0f0
	.half	61680                           # 0xf0f0
	.half	61680                           # 0xf0f0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI2_19:
	.half	18793                           # 0x4969
	.half	36663                           # 0x8f37
	.half	14500                           # 0x38a4
	.half	12339                           # 0x3033
	.half	9057                            # 0x2361
	.half	19531                           # 0x4c4b
	.half	20559                           # 0x504f
	.half	1                               # 0x1
	.half	18793                           # 0x4969
	.half	36663                           # 0x8f37
	.half	14500                           # 0x38a4
	.half	12339                           # 0x3033
	.half	9057                            # 0x2361
	.half	19531                           # 0x4c4b
	.half	20559                           # 0x504f
	.half	1                               # 0x1
.LCPI2_20:
	.half	1                               # 0x1
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	1                               # 0x1
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_21:
	.dword	0                               # 0x0
	.dword	240                             # 0xf0
	.dword	240                             # 0xf0
	.dword	0                               # 0x0
.LCPI2_22:
	.dword	281470681743360                 # 0xffff00000000
	.dword	281470681808895                 # 0xffff0000ffff
	.dword	281470681743360                 # 0xffff00000000
	.dword	281470681808895                 # 0xffff0000ffff
.LCPI2_23:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI2_24:
	.dword	2                               # 0x2
	.dword	2                               # 0x2
	.dword	776                             # 0x308
	.dword	6                               # 0x6
.LCPI2_25:
	.word	4294967292                      # 0xfffffffc
	.word	4294967295                      # 0xffffffff
	.word	4294967292                      # 0xfffffffc
	.word	4294967295                      # 0xffffffff
	.word	4294966260                      # 0xfffffbf4
	.word	4294967295                      # 0xffffffff
	.word	4294967288                      # 0xfffffff8
	.word	4294967295                      # 0xffffffff
.LCPI2_26:
	.word	4294967294                      # 0xfffffffe
	.word	4294967295                      # 0xffffffff
	.word	4294967294                      # 0xfffffffe
	.word	4294967295                      # 0xffffffff
	.word	4294967036                      # 0xfffffefc
	.word	4294967294                      # 0xfffffffe
	.word	4294967294                      # 0xfffffffe
	.word	4294967295                      # 0xffffffff
.LCPI2_27:
	.dword	4294967037                      # 0xfffffefd
	.dword	4294967295                      # 0xffffffff
	.dword	4294967037                      # 0xfffffefd
	.dword	4294967295                      # 0xffffffff
.LCPI2_28:
	.word	258                             # 0x102
	.word	257                             # 0x101
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	258                             # 0x102
	.word	257                             # 0x101
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_29:
	.dword	989760                          # 0xf1a40
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_30:
	.word	4293977088                      # 0xfff0e400
	.word	2147483648                      # 0x80000000
	.word	4294967295                      # 0xffffffff
	.word	2147483648                      # 0x80000000
	.word	4294937728                      # 0xffff8c80
	.word	2147483648                      # 0x80000000
	.word	4294967295                      # 0xffffffff
	.word	2147483648                      # 0x80000000
.LCPI2_31:
	.word	4294966848                      # 0xfffffe40
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4294937728                      # 0xffff8c80
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
.LCPI2_32:
	.word	4128737                         # 0x3effe1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4128737                         # 0x3effe1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_33:
	.word	65537                           # 0x10001
	.word	131070                          # 0x1fffe
	.word	65535                           # 0xffff
	.word	131070                          # 0x1fffe
	.word	65537                           # 0x10001
	.word	131070                          # 0x1fffe
	.word	65535                           # 0xffff
	.word	131070                          # 0x1fffe
.LCPI2_34:
	.dword	4294967287                      # 0xfffffff7
	.dword	4294967295                      # 0xffffffff
	.dword	4294967287                      # 0xfffffff7
	.dword	4294967295                      # 0xffffffff
.LCPI2_35:
	.word	8                               # 0x8
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	8                               # 0x8
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_36:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI2_37:
	.dword	4294901760                      # 0xffff0000
	.dword	0                               # 0x0
	.dword	4294901760                      # 0xffff0000
	.dword	0                               # 0x0
.LCPI2_38:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	2147483647                      # 0x7fffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	2147483647                      # 0x7fffffff
.LCPI2_39:
	.word	4294901760                      # 0xffff0000
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294901760                      # 0xffff0000
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI2_40:
	.dword	0                               # 0x0
	.dword	6710540059694637217             # 0x5d20a0a15d20a0a1
	.dword	0                               # 0x0
	.dword	6710540059694637217             # 0x5d20a0a15d20a0a1
.LCPI2_41:
	.dword	1099511627777                   # 0x10000000001
	.dword	-1                              # 0xffffffffffffffff
	.dword	1                               # 0x1
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_42:
	.dword	-1095216660481                  # 0xffffff00ffffffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_43:
	.dword	4294967296                      # 0x100000000
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI2_44:
	.dword	4294967552                      # 0x100000100
	.dword	-1                              # 0xffffffffffffffff
	.dword	4294967552                      # 0x100000100
	.dword	-1                              # 0xffffffffffffffff
.LCPI2_45:
	.dword	-4294967552                     # 0xfffffffeffffff00
	.dword	2025524839466146844             # 0x1c1c1c1c1c1c1c1c
	.dword	-4294967552                     # 0xfffffffeffffff00
	.dword	2025524839466146844             # 0x1c1c1c1c1c1c1c1c
.LCPI2_46:
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
.LCPI2_47:
	.dword	2                               # 0x2
	.dword	0                               # 0x0
	.dword	2                               # 0x2
	.dword	0                               # 0x0
.LCPI2_48:
	.dword	3                               # 0x3
	.dword	18014398509481987               # 0x40000000000003
	.dword	3                               # 0x3
	.dword	18014398509481987               # 0x40000000000003
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 160
	bstrins.d	$sp, $zero, 4, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	xvrepli.b	$xr1, 0
	xvst	$xr1, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr1, $sp, 64
	xvsubwev.h.bu	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 96
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 26
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_1)
	xvst	$xr0, $sp, 64
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_2)
	lu12i.w	$a0, 7
	ori	$a0, $a0, 3967
	xvreplgr2vr.w	$xr1, $a0
	xvsubwev.h.bu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 35
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_3)
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_4)
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_5)
	xvst	$xr0, $sp, 64
	xvsubwev.h.bu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 44
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_6)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_6)
	pcalau12i	$a0, %pc_hi20(.LCPI2_7)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_7)
	pcalau12i	$a0, %pc_hi20(.LCPI2_8)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_8)
	xvst	$xr0, $sp, 64
	xvsubwev.h.bu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 53
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_9)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_9)
	pcalau12i	$a0, %pc_hi20(.LCPI2_10)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_10)
	pcalau12i	$a0, %pc_hi20(.LCPI2_11)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_11)
	xvst	$xr0, $sp, 64
	xvsubwev.h.bu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 62
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_12)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_12)
	pcalau12i	$a0, %pc_hi20(.LCPI2_13)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_13)
	pcalau12i	$a0, %pc_hi20(.LCPI2_14)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_14)
	xvst	$xr0, $sp, 64
	xvsubwev.h.bu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 71
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvrepli.h	$xr0, -255
	xvst	$xr0, $sp, 64
	xvrepli.b	$xr0, -1
	xvst	$xr0, $sp, 0                    # 32-byte Folded Spill
	xvld	$xr1, $sp, 32                   # 32-byte Folded Reload
	xvsubwev.h.bu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 80
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 64
	xvsubwev.w.hu	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 89
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_15)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_15)
	pcalau12i	$a0, %pc_hi20(.LCPI2_16)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_16)
	xvst	$xr0, $sp, 64
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvsubwev.w.hu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 98
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_17)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_17)
	pcalau12i	$a0, %pc_hi20(.LCPI2_18)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_18)
	pcalau12i	$a0, %pc_hi20(.LCPI2_19)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_19)
	xvst	$xr0, $sp, 64
	xvsubwev.w.hu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 107
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_20)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_20)
	xvld	$xr1, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 64
	xvsubwev.w.hu	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 116
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_21)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_21)
	xvst	$xr0, $sp, 64
	lu52i.d	$a0, $zero, 1024
	xvreplgr2vr.d	$xr1, $a0
	xvsubwev.w.hu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 125
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_22)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_22)
	pcalau12i	$a0, %pc_hi20(.LCPI2_23)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_23)
	xvst	$xr0, $sp, 64
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvsubwev.w.hu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 134
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_24)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_24)
	pcalau12i	$a0, %pc_hi20(.LCPI2_25)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_25)
	pcalau12i	$a0, %pc_hi20(.LCPI2_26)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_26)
	xvst	$xr0, $sp, 64
	xvsubwev.d.wu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 143
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_27)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_27)
	pcalau12i	$a0, %pc_hi20(.LCPI2_28)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_28)
	xvst	$xr0, $sp, 64
	xvld	$xr0, $sp, 0                    # 32-byte Folded Reload
	xvsubwev.d.wu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 152
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_29)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_29)
	pcalau12i	$a0, %pc_hi20(.LCPI2_30)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_30)
	pcalau12i	$a0, %pc_hi20(.LCPI2_31)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_31)
	xvst	$xr0, $sp, 64
	xvsubwev.d.wu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 161
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_32)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_32)
	xvld	$xr1, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 64
	xvsubwev.d.wu	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 170
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_33)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_33)
	xvld	$xr1, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 64
	xvsubwev.d.wu	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 179
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_34)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_34)
	pcalau12i	$a0, %pc_hi20(.LCPI2_35)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_35)
	xvst	$xr0, $sp, 64
	xvld	$xr0, $sp, 0                    # 32-byte Folded Reload
	xvsubwev.d.wu	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 188
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -16
	ori	$a0, $a0, 2
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 64
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4094
	xvreplgr2vr.d	$xr0, $a0
	xvld	$xr1, $sp, 32                   # 32-byte Folded Reload
	xvsubwev.d.wu	$xr0, $xr1, $xr0
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 197
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_36)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_36)
	xvld	$xr1, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 64
	xvsubwev.d.wu	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 206
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_37)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_37)
	pcalau12i	$a0, %pc_hi20(.LCPI2_38)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_38)
	pcalau12i	$a0, %pc_hi20(.LCPI2_39)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_39)
	xvst	$xr0, $sp, 64
	xvsubwev.d.wu	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 215
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 64
	xvsubwev.q.du	$xr0, $xr0, $xr0
	xvst	$xr0, $sp, 0                    # 32-byte Folded Spill
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 224
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 64
	xvld	$xr0, $sp, 0                    # 32-byte Folded Reload
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 233
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_40)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_40)
	xvld	$xr1, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr1, $sp, 64
	xvsubwev.q.du	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 242
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_41)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_41)
	pcalau12i	$a0, %pc_hi20(.LCPI2_42)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_42)
	pcalau12i	$a0, %pc_hi20(.LCPI2_43)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_43)
	xvst	$xr0, $sp, 64
	xvsubwev.q.du	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 251
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_44)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_44)
	pcalau12i	$a0, %pc_hi20(.LCPI2_45)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_45)
	xvst	$xr0, $sp, 64
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvsubwev.q.du	$xr0, $xr0, $xr1
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 260
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_46)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_46)
	pcalau12i	$a0, %pc_hi20(.LCPI2_47)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_47)
	pcalau12i	$a0, %pc_hi20(.LCPI2_48)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_48)
	xvst	$xr0, $sp, 64
	xvsubwev.q.du	$xr0, $xr2, $xr1
	xvst	$xr0, $sp, 96
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 32
	ori	$a4, $zero, 269
	move	$a3, $s0
	pcaddu18i	$ra, %call36(check_lasx_out)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$sp, $fp, -160
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
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
	.asciz	"/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/SingleSource/UnitTests/Vector/LASX/lasx-xvsubwev-2.c"
	.size	.L.str.5, 127

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	" != "
	.size	.Lstr, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
