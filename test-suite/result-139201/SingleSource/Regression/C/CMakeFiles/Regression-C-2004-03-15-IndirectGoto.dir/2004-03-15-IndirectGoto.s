	.file	"2004-03-15-IndirectGoto.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$s3, $zero
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$fp, $a0, %pc_lo12(.Lstr.1)
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$s0, $a0, %pc_lo12(.Lstr.2)
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$s1, $a0, %pc_lo12(.Lstr.3)
	pcalau12i	$a0, %pc_hi20(main.L)
	addi.d	$s2, $a0, %pc_lo12(main.L)
	b	.LBB0_2
	.p2align	4, , 16
.Ltmp0:                                 # Block address taken
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
.LBB0_2:                                # %.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_4 Depth 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB0_3:                                # %.split5
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_4 Depth 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB0_4:                                # %.split8
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s3, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s2, $a0
	addi.w	$s3, $s3, 1
	jr	$a0
.Ltmp1:                                 # Block address taken
.LBB0_5:                                #   in Loop: Header=BB0_4 Depth=3
	b	.LBB0_4
	.p2align	4, , 16
.Ltmp2:                                 # Block address taken
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_3
.Ltmp3:                                 # Block address taken
.LBB0_7:
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	main.L,@object                  # @main.L
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
main.L:
	.dword	.Ltmp0
	.dword	.Ltmp2
	.dword	.Ltmp1
	.dword	.Ltmp3
	.dword	0
	.size	main.L, 40

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"A"
	.size	.Lstr, 2

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"B"
	.size	.Lstr.1, 2

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"C"
	.size	.Lstr.2, 2

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"D"
	.size	.Lstr.3, 2

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"E"
	.size	.Lstr.4, 2

	.section	".note.GNU-stack","",@progbits
	.addrsig
