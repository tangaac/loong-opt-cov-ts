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
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _ZN13BabyDebugTest4doitEv
.LCPI1_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_1:
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
# %bb.1:                                # %iter.check
	ori	$a3, $zero, 4
	bgeu	$a0, $a3, .LBB1_4
# %bb.2:
	move	$a3, $zero
	b	.LBB1_13
.LBB1_3:
	move	$a0, $zero
	b	.LBB1_28
.LBB1_4:                                # %vector.main.loop.iter.check
	ori	$a3, $zero, 16
	bgeu	$a0, $a3, .LBB1_6
# %bb.5:
	move	$a3, $zero
	b	.LBB1_10
.LBB1_6:                                # %vector.ph
	pcalau12i	$a3, %pc_hi20(.LCPI1_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI1_0)
	bstrpick.d	$a3, $a1, 30, 4
	slli.d	$a3, $a3, 4
	addi.d	$a4, $a2, 32
	move	$a5, $a3
	.p2align	4, , 16
.LBB1_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.wu	$xr1, $xr0, 8
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB1_7
# %bb.8:                                # %middle.block
	beq	$a3, $a1, .LBB1_15
# %bb.9:                                # %vec.epilog.iter.check
	andi	$a4, $a1, 12
	beqz	$a4, .LBB1_13
.LBB1_10:                               # %vec.epilog.ph
	move	$a5, $a3
	pcalau12i	$a3, %pc_hi20(.LCPI1_1)
	vld	$vr0, $a3, %pc_lo12(.LCPI1_1)
	bstrpick.d	$a3, $a1, 30, 2
	slli.d	$a3, $a3, 2
	vreplgr2vr.w	$vr1, $a5
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a4, $a5, $a3
	alsl.d	$a5, $a5, $a2, 2
	.p2align	4, , 16
.LBB1_11:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a5, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 16
	bnez	$a4, .LBB1_11
# %bb.12:                               # %vec.epilog.middle.block
	beq	$a3, $a1, .LBB1_15
.LBB1_13:                               # %.lr.ph.preheader
	alsl.d	$a4, $a3, $a2, 2
	sub.d	$a5, $a1, $a3
	.p2align	4, , 16
.LBB1_14:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a3, $a4, 0
	addi.d	$a3, $a3, 1
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 4
	bnez	$a5, .LBB1_14
.LBB1_15:                               # %iter.check37
	ori	$a3, $zero, 3
	bltu	$a3, $a0, .LBB1_17
# %bb.16:
	move	$a3, $zero
	move	$a0, $zero
	b	.LBB1_26
.LBB1_17:                               # %vector.main.loop.iter.check39
	ori	$a3, $zero, 16
	bgeu	$a0, $a3, .LBB1_19
# %bb.18:
	move	$a3, $zero
	move	$a0, $zero
	b	.LBB1_23
.LBB1_19:                               # %vector.ph40
	bstrpick.d	$a0, $a1, 30, 4
	slli.d	$a3, $a0, 4
	xvrepli.b	$xr0, 0
	addi.d	$a0, $a2, 32
	move	$a4, $a3
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB1_20:                               # %vector.body43
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a0, -32
	xvld	$xr3, $a0, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	addi.d	$a4, $a4, -16
	addi.d	$a0, $a0, 64
	bnez	$a4, .LBB1_20
# %bb.21:                               # %middle.block48
	xvadd.w	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a0, $xr0, 0
	beq	$a3, $a1, .LBB1_28
# %bb.22:                               # %vec.epilog.iter.check52
	andi	$a4, $a1, 12
	beqz	$a4, .LBB1_26
.LBB1_23:                               # %vec.epilog.ph51
	move	$a4, $a3
	bstrpick.d	$a3, $a1, 30, 2
	slli.d	$a3, $a3, 2
	vrepli.b	$vr0, 0
	vinsgr2vr.w	$vr0, $a0, 0
	sub.d	$a0, $a4, $a3
	alsl.d	$a4, $a4, $a2, 2
	.p2align	4, , 16
.LBB1_24:                               # %vec.epilog.vector.body57
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, 0
	vadd.w	$vr0, $vr1, $vr0
	addi.d	$a0, $a0, 4
	addi.d	$a4, $a4, 16
	bnez	$a0, .LBB1_24
# %bb.25:                               # %vec.epilog.middle.block62
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a0, $vr0, 0
	beq	$a3, $a1, .LBB1_28
.LBB1_26:                               # %.lr.ph21.preheader
	alsl.d	$a2, $a3, $a2, 2
	sub.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB1_27:                               # %.lr.ph21
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	add.w	$a0, $a3, $a0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB1_27
.LBB1_28:                               # %._crit_edge
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
