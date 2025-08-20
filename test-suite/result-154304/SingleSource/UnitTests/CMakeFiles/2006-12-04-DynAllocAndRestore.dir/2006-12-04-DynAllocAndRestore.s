	.file	"2006-12-04-DynAllocAndRestore.cpp"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ori	$a0, $zero, 20
	st.w	$a0, $sp, 4
	addi.d	$a0, $sp, 4
	pcaddu18i	$ra, %call36(_ZN13BabyDebugTest4doitEv)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN13BabyDebugTest4doitEv
.LCPI1_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.section	.text._ZN13BabyDebugTest4doitEv,"axG",@progbits,_ZN13BabyDebugTest4doitEv,comdat
	.weak	_ZN13BabyDebugTest4doitEv
	.p2align	2
	.type	_ZN13BabyDebugTest4doitEv,@function
_ZN13BabyDebugTest4doitEv:              # @_ZN13BabyDebugTest4doitEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$fp, $sp, 16
	.cfi_def_cfa 22, 0
	ld.w	$a0, $a0, 0
	bstrpick.d	$a1, $a0, 31, 0
	slli.d	$a2, $a1, 2
	addi.d	$a2, $a2, 15
	bstrpick.d	$a2, $a2, 34, 4
	slli.d	$a2, $a2, 4
	sub.d	$a2, $sp, $a2
	move	$sp, $a2
	ori	$a3, $zero, 1
	blt	$a0, $a3, .LBB1_3
# %bb.1:                                # %.lr.ph.preheader
	ori	$a4, $zero, 8
	bstrpick.d	$a3, $a1, 30, 3
	bgeu	$a0, $a4, .LBB1_4
# %bb.2:
	move	$a4, $zero
	b	.LBB1_7
.LBB1_3:
	move	$a0, $zero
	b	.LBB1_16
.LBB1_4:                                # %vector.ph
	pcalau12i	$a4, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI1_0)
	slli.d	$a4, $a3, 3
	addi.d	$a5, $a2, 16
	move	$a6, $a4
	.p2align	4, , 16
.LBB1_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr1, $vr0, 4
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB1_5
# %bb.6:                                # %middle.block
	beq	$a4, $a1, .LBB1_9
.LBB1_7:                                # %.lr.ph.preheader42
	alsl.d	$a5, $a4, $a2, 2
	sub.d	$a6, $a1, $a4
	.p2align	4, , 16
.LBB1_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a4, $a5, 0
	addi.d	$a4, $a4, 1
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 4
	bnez	$a6, .LBB1_8
.LBB1_9:                                # %.lr.ph21.preheader
	ori	$a4, $zero, 8
	bgeu	$a0, $a4, .LBB1_11
# %bb.10:
	move	$a3, $zero
	move	$a0, $zero
	b	.LBB1_14
.LBB1_11:                               # %vector.ph28
	slli.d	$a3, $a3, 3
	vrepli.b	$vr0, 0
	addi.d	$a0, $a2, 16
	move	$a4, $a3
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB1_12:                               # %vector.body31
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a0, -16
	vld	$vr3, $a0, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	addi.d	$a4, $a4, -8
	addi.d	$a0, $a0, 32
	bnez	$a4, .LBB1_12
# %bb.13:                               # %middle.block36
	vadd.w	$vr0, $vr1, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a0, $vr0, 0
	beq	$a3, $a1, .LBB1_16
.LBB1_14:                               # %.lr.ph21.preheader39
	alsl.d	$a2, $a3, $a2, 2
	sub.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB1_15:                               # %.lr.ph21
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	add.w	$a0, $a3, $a0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB1_15
.LBB1_16:                               # %._crit_edge
	addi.d	$sp, $fp, -16
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	_ZN13BabyDebugTest4doitEv, .Lfunc_end1-_ZN13BabyDebugTest4doitEv
	.cfi_endproc
                                        # -- End function
	.type	_ZN13BabyDebugTest3dohE,@object # @_ZN13BabyDebugTest3dohE
	.bss
	.globl	_ZN13BabyDebugTest3dohE
	.p2align	2, 0x0
_ZN13BabyDebugTest3dohE:
	.word	0                               # 0x0
	.size	_ZN13BabyDebugTest3dohE, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
