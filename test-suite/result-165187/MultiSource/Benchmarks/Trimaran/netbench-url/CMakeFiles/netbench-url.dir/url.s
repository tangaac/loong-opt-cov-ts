	.file	"url.c"
	.text
	.globl	internet_checksum               # -- Begin function internet_checksum
	.p2align	5
	.type	internet_checksum,@function
internet_checksum:                      # @internet_checksum
# %bb.0:
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB0_3
# %bb.1:                                # %.lr.ph.preheader
	addi.w	$a3, $a1, -2
	bgeu	$a3, $a2, .LBB0_4
# %bb.2:
	move	$a2, $zero
	move	$a3, $a0
	b	.LBB0_7
.LBB0_3:
	move	$a2, $zero
	move	$a3, $a0
	b	.LBB0_9
.LBB0_4:                                # %vector.ph
	move	$a2, $zero
	move	$a6, $zero
	bstrpick.d	$a3, $a3, 31, 1
	addi.d	$a4, $a3, 1
	bstrpick.d	$a3, $a4, 31, 1
	slli.d	$a5, $a3, 1
	slli.d	$a7, $a3, 2
	sub.w	$a1, $a1, $a7
	alsl.d	$a3, $a3, $a0, 2
	addi.d	$a0, $a0, 2
	move	$a7, $a5
	.p2align	4, , 16
.LBB0_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$t0, $a0, -2
	ld.hu	$t1, $a0, 0
	nor	$t0, $t0, $zero
	nor	$t1, $t1, $zero
	add.d	$a2, $a2, $t0
	add.d	$a6, $a6, $t1
	addi.d	$a7, $a7, -2
	addi.d	$a0, $a0, 4
	bnez	$a7, .LBB0_5
# %bb.6:                                # %middle.block
	add.d	$a2, $a6, $a2
	beq	$a5, $a4, .LBB0_9
.LBB0_7:                                # %.lr.ph.preheader40
	ori	$a0, $zero, 3
	move	$a4, $a3
	.p2align	4, , 16
.LBB0_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a5, $a4, 0
	move	$a6, $a1
	addi.d	$a3, $a4, 2
	nor	$a1, $a5, $zero
	add.d	$a2, $a2, $a1
	addi.w	$a1, $a6, -2
	move	$a4, $a3
	bltu	$a0, $a6, .LBB0_8
.LBB0_9:                                # %._crit_edge
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB0_12
# %bb.10:
	ld.bu	$a0, $a3, 0
	add.d	$a2, $a2, $a0
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_11:                               # %.lr.ph23
                                        #   in Loop: Header=BB0_12 Depth=1
	srli.d	$a0, $a2, 16
	bstrpick.d	$a1, $a2, 15, 0
	add.d	$a2, $a1, $a0
.LBB0_12:                               # %.lr.ph23
                                        # =>This Inner Loop Header: Depth=1
	srli.d	$a0, $a2, 16
	bnez	$a0, .LBB0_11
# %bb.13:                               # %._crit_edge24
	srli.d	$a0, $a2, 8
	slli.d	$a1, $a2, 8
	bstrpick.d	$a1, $a1, 15, 8
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	ret
.Lfunc_end0:
	.size	internet_checksum, .Lfunc_end0-internet_checksum
                                        # -- End function
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
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB1_5
# %bb.1:
	move	$fp, $a1
	ld.d	$a0, $a1, 16
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	addi.w	$fp, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(db_init)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s2, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 43
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB1_4
# %bb.2:                                # %.lr.ph23.i27.preheader.preheader
	move	$s0, $zero
	.p2align	4, , 16
.LBB1_3:                                # %.lr.ph23.i27.preheader
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(get_next_packet)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.h	$zero, $a0, 10
	move	$a0, $s0
	pcaddu18i	$ra, %call36(packet_size)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(find_destination)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, 1
	bne	$fp, $s0, .LBB1_3
.LBB1_4:                                # %._crit_edge
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB1_5:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L__FUNCTION__.main)
	addi.d	$a1, $a1, %pc_lo12(.L__FUNCTION__.main)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a3, $a2, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 102
	pcaddu18i	$ra, %call36(_fatal)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Benchmarks/Trimaran/netbench-url/url.c"
	.size	.L.str, 125

	.type	.L__FUNCTION__.main,@object     # @__FUNCTION__.main
.L__FUNCTION__.main:
	.asciz	"main"
	.size	.L__FUNCTION__.main, 5

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Usage: url inputfilename #numberofpackets"
	.size	.L.str.1, 42

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"URL table initialized, reading packets... \n"
	.size	.L.str.2, 44

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"URL finished for %d packets\n"
	.size	.L.str.3, 29

	.type	tree_head,@object               # @tree_head
	.bss
	.globl	tree_head
	.p2align	3, 0x0
tree_head:
	.dword	0
	.size	tree_head, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
