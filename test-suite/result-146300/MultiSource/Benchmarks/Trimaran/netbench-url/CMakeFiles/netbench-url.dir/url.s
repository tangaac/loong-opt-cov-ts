	.file	"url.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function internet_checksum
.LCPI0_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.text
	.globl	internet_checksum
	.p2align	5
	.type	internet_checksum,@function
internet_checksum:                      # @internet_checksum
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 96
	bstrins.d	$sp, $zero, 4, 0
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB0_3
# %bb.1:                                # %.lr.ph.preheader
	addi.w	$a2, $a1, -2
	ori	$a3, $zero, 14
	bgeu	$a2, $a3, .LBB0_4
# %bb.2:
	move	$a5, $zero
	move	$a2, $a0
	b	.LBB0_7
.LBB0_3:
	move	$a5, $zero
	move	$a2, $a0
	b	.LBB0_9
.LBB0_4:                                # %vector.ph
	bstrpick.d	$a2, $a2, 31, 1
	addi.d	$a3, $a2, 1
	bstrpick.d	$a2, $a3, 31, 3
	slli.d	$a4, $a2, 3
	slli.d	$a5, $a2, 4
	sub.w	$a1, $a1, $a5
	alsl.d	$a2, $a2, $a0, 4
	addi.d	$a0, $a0, 8
	xvrepli.b	$xr0, 0
	xvrepli.b	$xr2, -1
	move	$a5, $a4
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB0_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a0, -8
	ld.d	$a7, $a0, 0
	vinsgr2vr.d	$vr3, $a6, 0
	vinsgr2vr.d	$vr4, $a7, 0
	st.h	$zero, $sp, 30
	st.w	$zero, $sp, 26
	st.h	$zero, $sp, 22
	st.w	$zero, $sp, 18
	st.h	$zero, $sp, 14
	st.w	$zero, $sp, 10
	st.h	$zero, $sp, 6
	st.w	$zero, $sp, 2
	xvstelm.h	$xr3, $sp, 24, 3
	xvstelm.h	$xr3, $sp, 16, 2
	xvstelm.h	$xr3, $sp, 8, 1
	xvstelm.h	$xr3, $sp, 0, 0
	xvld	$xr3, $sp, 0
	st.h	$zero, $sp, 62
	st.w	$zero, $sp, 58
	st.h	$zero, $sp, 54
	st.w	$zero, $sp, 50
	st.h	$zero, $sp, 46
	st.w	$zero, $sp, 42
	st.h	$zero, $sp, 38
	st.w	$zero, $sp, 34
	xvstelm.h	$xr4, $sp, 56, 3
	xvstelm.h	$xr4, $sp, 48, 2
	xvstelm.h	$xr4, $sp, 40, 1
	xvstelm.h	$xr4, $sp, 32, 0
	xvld	$xr4, $sp, 32
	xvxor.v	$xr3, $xr3, $xr2
	xvxor.v	$xr4, $xr4, $xr2
	xvadd.d	$xr0, $xr0, $xr3
	xvadd.d	$xr1, $xr1, $xr4
	addi.d	$a5, $a5, -8
	addi.d	$a0, $a0, 16
	bnez	$a5, .LBB0_5
# %bb.6:                                # %middle.block
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	xvld	$xr2, $a0, %pc_lo12(.LCPI0_0)
	xvadd.d	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvshuf.d	$xr2, $xr0, $xr1
	xvadd.d	$xr0, $xr0, $xr2
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvadd.d	$xr0, $xr0, $xr1
	xvpickve2gr.d	$a5, $xr0, 0
	beq	$a4, $a3, .LBB0_9
.LBB0_7:                                # %.lr.ph.preheader38
	move	$a3, $a2
	ori	$a0, $zero, 3
	.p2align	4, , 16
.LBB0_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a4, $a3, 0
	move	$a6, $a1
	addi.d	$a2, $a3, 2
	nor	$a1, $a4, $zero
	add.d	$a5, $a5, $a1
	addi.w	$a1, $a6, -2
	move	$a3, $a2
	bltu	$a0, $a6, .LBB0_8
.LBB0_9:                                # %._crit_edge
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB0_12
# %bb.10:
	ld.bu	$a0, $a2, 0
	add.d	$a5, $a5, $a0
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_11:                               # %.lr.ph23
                                        #   in Loop: Header=BB0_12 Depth=1
	srli.d	$a0, $a5, 16
	bstrpick.d	$a1, $a5, 15, 0
	add.d	$a5, $a1, $a0
.LBB0_12:                               # %.lr.ph23
                                        # =>This Inner Loop Header: Depth=1
	srli.d	$a0, $a5, 16
	bnez	$a0, .LBB0_11
# %bb.13:                               # %._crit_edge24
	srli.d	$a0, $a5, 8
	slli.d	$a1, $a5, 8
	bstrpick.d	$a1, $a1, 15, 8
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	addi.d	$sp, $fp, -96
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
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
