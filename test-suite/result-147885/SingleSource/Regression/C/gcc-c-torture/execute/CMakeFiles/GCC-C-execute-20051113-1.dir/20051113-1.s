	.file	"20051113-1.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function Sum
.LCPI0_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	Sum
	.p2align	5
	.type	Sum,@function
Sum:                                    # @Sum
# %bb.0:
	ld.w	$a2, $a0, 0
	ori	$a1, $zero, 1
	blt	$a2, $a1, .LBB0_3
# %bb.1:                                # %.lr.ph
	ori	$a1, $zero, 4
	bgeu	$a2, $a1, .LBB0_4
# %bb.2:
	move	$a3, $zero
	move	$a1, $zero
	b	.LBB0_7
.LBB0_3:
	move	$a1, $zero
	move	$a0, $a1
	ret
.LBB0_4:                                # %vector.ph
	addi.d	$a1, $a0, 10
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI0_0)
	bstrpick.d	$a3, $a2, 30, 2
	slli.d	$a3, $a3, 2
	vrepli.b	$vr1, 0
	vrepli.d	$vr2, 30
	vrepli.d	$vr3, 60
	move	$a4, $a3
	vori.b	$vr4, $vr1, 0
	.p2align	4, , 16
.LBB0_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vmul.d	$vr5, $vr0, $vr2
	vori.b	$vr6, $vr3, 0
	vmadd.d	$vr6, $vr0, $vr2
	vpickve2gr.d	$a5, $vr5, 0
	vpickve2gr.d	$a6, $vr5, 1
	vpickve2gr.d	$a7, $vr6, 0
	vpickve2gr.d	$t0, $vr6, 1
	ldx.d	$a5, $a1, $a5
	ldx.d	$a6, $a1, $a6
	ldx.d	$a7, $a1, $a7
	ldx.d	$t0, $a1, $t0
	vinsgr2vr.d	$vr5, $a5, 0
	vinsgr2vr.d	$vr5, $a6, 1
	vinsgr2vr.d	$vr6, $a7, 0
	vinsgr2vr.d	$vr6, $t0, 1
	vadd.d	$vr1, $vr5, $vr1
	vadd.d	$vr4, $vr6, $vr4
	addi.d	$a4, $a4, -4
	vaddi.du	$vr0, $vr0, 4
	bnez	$a4, .LBB0_5
# %bb.6:                                # %middle.block
	vadd.d	$vr0, $vr4, $vr1
	vreplvei.d	$vr1, $vr0, 1
	vadd.d	$vr0, $vr0, $vr1
	vpickve2gr.d	$a1, $vr0, 0
	beq	$a3, $a2, .LBB0_9
.LBB0_7:                                # %scalar.ph.preheader
	ori	$a4, $zero, 30
	mul.d	$a4, $a3, $a4
	add.d	$a0, $a4, $a0
	addi.d	$a0, $a0, 10
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB0_8:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	add.d	$a1, $a3, $a1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 30
	bnez	$a2, .LBB0_8
.LBB0_9:                                # %._crit_edge
	move	$a0, $a1
	ret
.Lfunc_end0:
	.size	Sum, .Lfunc_end0-Sum
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function Sum2
.LCPI1_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	Sum2
	.p2align	5
	.type	Sum2,@function
Sum2:                                   # @Sum2
# %bb.0:
	ld.w	$a2, $a0, 0
	ori	$a1, $zero, 1
	blt	$a2, $a1, .LBB1_3
# %bb.1:                                # %.lr.ph
	ori	$a1, $zero, 4
	bgeu	$a2, $a1, .LBB1_4
# %bb.2:
	move	$a3, $zero
	move	$a1, $zero
	b	.LBB1_7
.LBB1_3:
	move	$a1, $zero
	move	$a0, $a1
	ret
.LBB1_4:                                # %vector.ph
	addi.d	$a1, $a0, 18
	pcalau12i	$a3, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI1_0)
	bstrpick.d	$a3, $a2, 30, 2
	slli.d	$a3, $a3, 2
	vrepli.b	$vr1, 0
	vrepli.d	$vr2, 30
	vrepli.d	$vr3, 60
	move	$a4, $a3
	vori.b	$vr4, $vr1, 0
	.p2align	4, , 16
.LBB1_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vmul.d	$vr5, $vr0, $vr2
	vori.b	$vr6, $vr3, 0
	vmadd.d	$vr6, $vr0, $vr2
	vpickve2gr.d	$a5, $vr5, 0
	vpickve2gr.d	$a6, $vr5, 1
	vpickve2gr.d	$a7, $vr6, 0
	vpickve2gr.d	$t0, $vr6, 1
	ldx.d	$a5, $a1, $a5
	ldx.d	$a6, $a1, $a6
	ldx.d	$a7, $a1, $a7
	ldx.d	$t0, $a1, $t0
	vinsgr2vr.d	$vr5, $a5, 0
	vinsgr2vr.d	$vr5, $a6, 1
	vinsgr2vr.d	$vr6, $a7, 0
	vinsgr2vr.d	$vr6, $t0, 1
	vadd.d	$vr1, $vr5, $vr1
	vadd.d	$vr4, $vr6, $vr4
	addi.d	$a4, $a4, -4
	vaddi.du	$vr0, $vr0, 4
	bnez	$a4, .LBB1_5
# %bb.6:                                # %middle.block
	vadd.d	$vr0, $vr4, $vr1
	vreplvei.d	$vr1, $vr0, 1
	vadd.d	$vr0, $vr0, $vr1
	vpickve2gr.d	$a1, $vr0, 0
	beq	$a3, $a2, .LBB1_9
.LBB1_7:                                # %scalar.ph.preheader
	ori	$a4, $zero, 30
	mul.d	$a4, $a3, $a4
	add.d	$a0, $a4, $a0
	addi.d	$a0, $a0, 18
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB1_8:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	add.d	$a1, $a3, $a1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 30
	bnez	$a2, .LBB1_8
.LBB1_9:                                # %._crit_edge
	move	$a0, $a1
	ret
.Lfunc_end1:
	.size	Sum2, .Lfunc_end1-Sum2
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 1
	ori	$a1, $zero, 94
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 0
	ori	$a0, $zero, 555
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $fp, 10
	ori	$a0, $zero, 999
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $fp, 40
	lu12i.w	$s0, 4112
	ori	$a0, $s0, 257
	lu32i.d	$a0, 1
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $fp, 70
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Sum)
	jirl	$ra, $ra, 0
	ori	$s0, $s0, 1811
	lu32i.d	$s0, 1
	bne	$a0, $s0, .LBB2_3
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Sum2)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB2_3
# %bb.2:
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB2_3:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
