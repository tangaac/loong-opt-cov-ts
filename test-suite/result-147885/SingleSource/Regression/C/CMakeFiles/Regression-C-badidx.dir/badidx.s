	.file	"badidx.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI0_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_4
# %bb.1:
	ld.d	$a0, $a1, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.w	$fp, $a0, 0
	ori	$a1, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	blt	$fp, $a1, .LBB0_12
# %bb.2:                                # %.lr.ph.preheader
	bstrpick.d	$a1, $s0, 31, 0
	ori	$a2, $zero, 8
	bgeu	$a1, $a2, .LBB0_5
.LBB0_3:
	move	$a2, $zero
	b	.LBB0_8
.LBB0_4:                                # %.thread
	ori	$a0, $zero, 1
	ori	$a1, $zero, 4
	ori	$fp, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 1
	bstrpick.d	$a1, $s0, 31, 0
	ori	$a2, $zero, 8
	bltu	$a1, $a2, .LBB0_3
.LBB0_5:                                # %vector.ph
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI0_0)
	pcalau12i	$a2, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a2, %pc_lo12(.LCPI0_1)
	bstrpick.d	$a2, $s0, 31, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a0, 16
	move	$a4, $a2
	.p2align	4, , 16
.LBB0_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr2, $vr0, 4
	vaddi.du	$vr3, $vr1, 4
	vmul.d	$vr4, $vr1, $vr1
	vmul.d	$vr5, $vr0, $vr0
	vmul.d	$vr3, $vr3, $vr3
	vmul.d	$vr2, $vr2, $vr2
	vpickev.w	$vr4, $vr5, $vr4
	vpickev.w	$vr2, $vr2, $vr3
	vst	$vr4, $a3, -16
	vst	$vr2, $a3, 0
	vaddi.du	$vr1, $vr1, 8
	vaddi.du	$vr0, $vr0, 8
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB0_6
# %bb.7:                                # %middle.block
	beq	$a1, $a2, .LBB0_10
.LBB0_8:                                # %.lr.ph.preheader14
	alsl.d	$a3, $a2, $a0, 2
	.p2align	4, , 16
.LBB0_9:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a4, $a2, $a2
	st.w	$a4, $a3, 0
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 4
	bne	$a1, $a2, .LBB0_9
.LBB0_10:                               # %._crit_edge.loopexit
	alsl.d	$a0, $fp, $a0, 2
	ld.w	$a1, $a0, -4
.LBB0_11:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB0_12:
	move	$a1, $zero
	b	.LBB0_11
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d\n"
	.size	.L.str, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
