	.file	"revertBits.c"
	.text
	.globl	ReverseBits32                   # -- Begin function ReverseBits32
	.p2align	5
	.type	ReverseBits32,@function
ReverseBits32:                          # @ReverseBits32
# %bb.0:
	bitrev.w	$a0, $a0
	ret
.Lfunc_end0:
	.size	ReverseBits32, .Lfunc_end0-ReverseBits32
                                        # -- End function
	.globl	ReverseBits64                   # -- Begin function ReverseBits64
	.p2align	5
	.type	ReverseBits64,@function
ReverseBits64:                          # @ReverseBits64
# %bb.0:
	bitrev.d	$a0, $a0
	ret
.Lfunc_end1:
	.size	ReverseBits64, .Lfunc_end1-ReverseBits64
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
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $zero
	move	$s0, $zero
	move	$s2, $zero
	move	$s1, $zero
	lu12i.w	$s3, 4096
	.p2align	4, , 16
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(ReverseBits32)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$s2, $s2, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(ReverseBits64)
	jirl	$ra, $ra, 0
	add.d	$s1, $a0, $s1
	addi.d	$s0, $s0, 1
	addi.w	$fp, $fp, 1
	bne	$s0, $s3, .LBB2_1
# %bb.2:                                # %vector.body.preheader
	move	$a0, $zero
	move	$s0, $zero
	move	$fp, $zero
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB2_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $a0, 1
	addi.d	$a3, $a1, -1
	bitrev.w	$a3, $a3
	bitrev.w	$a4, $a1
	bstrpick.d	$a4, $a4, 31, 0
	sub.d	$s2, $s2, $a3
	sub.d	$s0, $s0, $a4
	bitrev.d	$a3, $a0
	bitrev.d	$a2, $a2
	sub.d	$s1, $s1, $a3
	sub.d	$fp, $fp, $a2
	addi.d	$a0, $a0, 2
	addi.d	$a1, $a1, 2
	bne	$a0, $s3, .LBB2_3
# %bb.4:                                # %middle.block
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	lu12i.w	$a1, 74565
	ori	$a1, $a1, 1656
	lu12i.w	$a2, 124578
	ori	$a2, $a2, 3144
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	lu12i.w	$a1, -487406
	ori	$a1, $a1, 837
	lu32i.d	$a1, 214375
	lu52i.d	$a1, $a1, 18
	lu12i.w	$a2, -103892
	ori	$a2, $a2, 1152
	lu32i.d	$a2, 295057
	lu52i.d	$a2, $a2, -1492
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	sub.d	$a0, $zero, $s2
	xor	$a0, $s0, $a0
	sltu	$a0, $zero, $a0
	sub.d	$a1, $zero, $s1
	xor	$a1, $fp, $a1
	sltu	$a1, $zero, $a1
	or	$a0, $a0, $a1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"0x%x -> 0x%x\n"
	.size	.L.str.2, 14

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"0x%llx -> 0x%llx\n"
	.size	.L.str.3, 18

	.section	".note.GNU-stack","",@progbits
	.addrsig
