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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI2_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI2_1:
	.word	1                               # 0x1
	.word	5                               # 0x5
	.word	0                               # 0x0
	.word	7                               # 0x7
	.text
	.globl	main
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
	move	$s3, $zero
	move	$s2, $zero
	lu12i.w	$s1, 4096
	.p2align	4, , 16
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(ReverseBits32)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$s3, $s3, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(ReverseBits64)
	jirl	$ra, $ra, 0
	add.d	$s2, $a0, $s2
	addi.d	$s0, $s0, 1
	addi.w	$fp, $fp, 1
	bne	$s0, $s1, .LBB2_1
# %bb.2:                                # %vector.ph
	vinsgr2vr.d	$vr0, $s3, 0
	vinsgr2vr.d	$vr2, $zero, 0
	vshuf4i.d	$vr0, $vr2, 8
	vinsgr2vr.d	$vr1, $s2, 0
	vshuf4i.d	$vr1, $vr2, 8
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	vld	$vr2, $a0, %pc_lo12(.LCPI2_0)
	ori	$a0, $zero, 0
	pcalau12i	$a1, %pc_hi20(.LCPI2_1)
	vld	$vr3, $a1, %pc_lo12(.LCPI2_1)
	lu32i.d	$a0, 1
	vrepli.b	$vr4, 0
	vreplgr2vr.d	$vr5, $a0
	vori.b	$vr7, $vr4, 0
	vori.b	$vr6, $vr4, 0
	.p2align	4, , 16
.LBB2_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr8, $vr2, 2
	vaddi.wu	$vr9, $vr5, 2
	vpickve2gr.d	$a0, $vr5, 0
	bitrev.d	$a0, $a0
	vinsgr2vr.d	$vr10, $a0, 0
	vpickve2gr.d	$a0, $vr9, 0
	bitrev.d	$a0, $a0
	vinsgr2vr.d	$vr9, $a0, 0
	vori.b	$vr11, $vr3, 0
	vshuf.w	$vr11, $vr4, $vr10
	vori.b	$vr10, $vr3, 0
	vshuf.w	$vr10, $vr4, $vr9
	vsub.d	$vr0, $vr0, $vr11
	vsub.d	$vr7, $vr7, $vr10
	vpickve2gr.d	$a0, $vr2, 0
	bitrev.d	$a0, $a0
	vinsgr2vr.d	$vr9, $a0, 0
	vpickve2gr.d	$a0, $vr2, 1
	bitrev.d	$a0, $a0
	vinsgr2vr.d	$vr9, $a0, 1
	vpickve2gr.d	$a0, $vr8, 0
	bitrev.d	$a0, $a0
	vinsgr2vr.d	$vr10, $a0, 0
	vpickve2gr.d	$a0, $vr8, 1
	bitrev.d	$a0, $a0
	vinsgr2vr.d	$vr10, $a0, 1
	vsub.d	$vr1, $vr1, $vr9
	vsub.d	$vr6, $vr6, $vr10
	vaddi.du	$vr2, $vr2, 4
	addi.d	$s1, $s1, -4
	vaddi.wu	$vr5, $vr5, 4
	bnez	$s1, .LBB2_3
# %bb.4:                                # %middle.block
	vadd.d	$vr0, $vr7, $vr0
	vreplvei.d	$vr2, $vr0, 1
	vadd.d	$vr0, $vr0, $vr2
	vpickve2gr.d	$fp, $vr0, 0
	vadd.d	$vr0, $vr6, $vr1
	vreplvei.d	$vr1, $vr0, 1
	vadd.d	$vr0, $vr0, $vr1
	vpickve2gr.d	$s0, $vr0, 0
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
	or	$a0, $fp, $s0
	sltu	$a0, $zero, $a0
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
