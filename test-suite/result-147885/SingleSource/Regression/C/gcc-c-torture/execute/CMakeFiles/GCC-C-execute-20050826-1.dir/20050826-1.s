	.file	"20050826-1.c"
	.text
	.globl	bar                             # -- Begin function bar
	.p2align	5
	.type	bar,@function
bar:                                    # @bar
# %bb.0:
	ld.d	$a1, $a0, 0
	lu12i.w	$a2, 312404
	ori	$a2, $a2, 2049
	lu32i.d	$a2, 85836
	bne	$a1, $a2, .LBB0_5
# %bb.1:                                # %.preheader
	move	$a1, $zero
	addi.d	$a0, $a0, 7
	ori	$a2, $zero, 2041
	.p2align	4, , 16
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	ldx.bu	$a3, $a0, $a1
	bnez	$a3, .LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	addi.d	$a1, $a1, 1
	bne	$a1, $a2, .LBB0_2
# %bb.4:
	ret
.LBB0_5:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	bar, .Lfunc_end0-bar
                                        # -- End function
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(a)
	addi.d	$fp, $a0, %pc_lo12(a)
	addi.d	$a0, $fp, 7
	ori	$a2, $zero, 2041
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ld.b	$a1, $a0, 4
	ld.w	$a0, $a0, 0
	ori	$a2, $zero, 1
	st.b	$a2, $fp, 0
	st.b	$a1, $fp, 5
	st.w	$a0, $fp, 1
	st.b	$a2, $fp, 6
	ld.d	$a0, $fp, 0
	lu12i.w	$a1, 312404
	ori	$a1, $a1, 2049
	lu32i.d	$a1, 85836
	bne	$a0, $a1, .LBB1_15
# %bb.1:                                # %vector.body.preheader
	ori	$a3, $zero, 7
	ori	$a0, $zero, 2023
	.p2align	4, , 16
.LBB1_2:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $fp, $a3
	vmsknz.b	$vr0, $vr0
	vpickve2gr.hu	$a2, $vr0, 0
	slli.d	$a2, $a2, 48
	bnez	$a2, .LBB1_4
# %bb.3:                                # %vector.body
                                        #   in Loop: Header=BB1_2 Depth=1
	move	$a1, $a3
	addi.d	$a3, $a3, 16
	bne	$a1, $a0, .LBB1_2
.LBB1_4:                                # %middle.split
	bnez	$a2, .LBB1_15
# %bb.5:                                # %.preheader.i
	ld.bu	$a0, $fp, 2039
	bnez	$a0, .LBB1_15
# %bb.6:                                # %.preheader.i
	ld.bu	$a0, $fp, 2040
	bnez	$a0, .LBB1_15
# %bb.7:                                # %.preheader.i
	ld.bu	$a0, $fp, 2041
	bnez	$a0, .LBB1_15
# %bb.8:                                # %.preheader.i
	ld.bu	$a0, $fp, 2042
	bnez	$a0, .LBB1_15
# %bb.9:                                # %.preheader.i
	ld.bu	$a0, $fp, 2043
	bnez	$a0, .LBB1_15
# %bb.10:                               # %.preheader.i
	ld.bu	$a0, $fp, 2044
	bnez	$a0, .LBB1_15
# %bb.11:                               # %.preheader.i
	ld.bu	$a0, $fp, 2045
	bnez	$a0, .LBB1_15
# %bb.12:                               # %.preheader.i
	ld.bu	$a0, $fp, 2046
	bnez	$a0, .LBB1_15
# %bb.13:                               # %.preheader.i
	ld.bu	$a0, $fp, 2047
	bnez	$a0, .LBB1_15
# %bb.14:                               # %bar.exit
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB1_15:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	foo, .Lfunc_end1-foo
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(a)
	addi.d	$fp, $a0, %pc_lo12(a)
	addi.d	$a0, $fp, 7
	ori	$a2, $zero, 2041
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ld.b	$a1, $a0, 4
	ld.w	$a0, $a0, 0
	ori	$a2, $zero, 1
	st.b	$a2, $fp, 0
	st.b	$a1, $fp, 5
	st.w	$a0, $fp, 1
	st.b	$a2, $fp, 6
	ld.d	$a0, $fp, 0
	lu12i.w	$a1, 312404
	ori	$a1, $a1, 2049
	lu32i.d	$a1, 85836
	bne	$a0, $a1, .LBB2_15
# %bb.1:                                # %vector.body.preheader
	ori	$a3, $zero, 7
	ori	$a0, $zero, 2023
	.p2align	4, , 16
.LBB2_2:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $fp, $a3
	vmsknz.b	$vr0, $vr0
	vpickve2gr.hu	$a2, $vr0, 0
	slli.d	$a2, $a2, 48
	bnez	$a2, .LBB2_4
# %bb.3:                                # %vector.body
                                        #   in Loop: Header=BB2_2 Depth=1
	move	$a1, $a3
	addi.d	$a3, $a3, 16
	bne	$a1, $a0, .LBB2_2
.LBB2_4:                                # %middle.split
	bnez	$a2, .LBB2_15
# %bb.5:                                # %.preheader.i.i
	ld.bu	$a0, $fp, 2039
	bnez	$a0, .LBB2_15
# %bb.6:                                # %.preheader.i.i
	ld.bu	$a0, $fp, 2040
	bnez	$a0, .LBB2_15
# %bb.7:                                # %.preheader.i.i
	ld.bu	$a0, $fp, 2041
	bnez	$a0, .LBB2_15
# %bb.8:                                # %.preheader.i.i
	ld.bu	$a0, $fp, 2042
	bnez	$a0, .LBB2_15
# %bb.9:                                # %.preheader.i.i
	ld.bu	$a0, $fp, 2043
	bnez	$a0, .LBB2_15
# %bb.10:                               # %.preheader.i.i
	ld.bu	$a0, $fp, 2044
	bnez	$a0, .LBB2_15
# %bb.11:                               # %.preheader.i.i
	ld.bu	$a0, $fp, 2045
	bnez	$a0, .LBB2_15
# %bb.12:                               # %.preheader.i.i
	ld.bu	$a0, $fp, 2046
	bnez	$a0, .LBB2_15
# %bb.13:                               # %.preheader.i.i
	ld.bu	$a0, $fp, 2047
	bnez	$a0, .LBB2_15
# %bb.14:                               # %foo.exit
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB2_15:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\001HELLO\001"
	.size	.L.str, 8

	.type	a,@object                       # @a
	.bss
	.globl	a
a:
	.space	2048
	.size	a, 2048

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"HELLO"
	.size	.L.str.1, 6

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym a
