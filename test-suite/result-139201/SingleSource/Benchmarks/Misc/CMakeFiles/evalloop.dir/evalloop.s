	.file	"evalloop.c"
	.text
	.globl	execute                         # -- Begin function execute
	.p2align	5
	.type	execute,@function
execute:                                # @execute
# %bb.0:
	pcalau12i	$a1, %pc_hi20(sum)
	ld.w	$a2, $a1, %pc_lo12(sum)
	add.d	$a0, $a2, $a0
	st.w	$a0, $a1, %pc_lo12(sum)
	ret
.Lfunc_end0:
	.size	execute, .Lfunc_end0-execute
                                        # -- End function
	.globl	eval                            # -- Begin function eval
	.p2align	5
	.type	eval,@function
eval:                                   # @eval
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ori	$a1, $zero, 31
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a0, 0
	addi.d	$a0, $a0, 4
	bltu	$a1, $a2, .LBB1_1
# %bb.2:
	slli.d	$a1, $a2, 2
	pcalau12i	$a2, %pc_hi20(.LJTI1_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI1_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB1_3:                                # %.split98.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_4:                                # %.split170.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_5:                                # %.split137.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_6:                                # %.split131.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_7:                                # %.split122.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_8:                                # %.split101.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_9:                                # %.split125.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_10:                               # %.split116.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_11:                               # %.split164.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_12:                               # %.split161.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_13:                               # %.split134.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_14:                               # %.split.preheader.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_15:                               # %.split110.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_16:                               # %.split182.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_17:                               # %.split140.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_18:                               # %.split149.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_19:                               # %.split104.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_20:                               # %.split152.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_21:                               # %.split128.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_22:                               # %.split107.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_23:                               # %.split143.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_24:                               # %.split119.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_25:                               # %.split113.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_26:                               # %.split179.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_27:                               # %.split155.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_28:                               # %.split146.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_29:                               # %.split158.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_30:                               # %.split173.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_31:                               # %.split176.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_32:                               # %.split167.loopexit
	move	$a1, $zero
	b	.LBB1_34
	.p2align	4, , 16
.Ltmp0:                                 # Block address taken
.LBB1_33:                               # %.split
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 1
.LBB1_34:                               # %.split434
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(eval.dispatch)
	addi.d	$a1, $a1, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a1, $a0
	addi.d	$a0, $fp, 4
	jr	$a1
.Ltmp1:                                 # Block address taken
.LBB1_35:                               # %.split.preheader
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 2
	b	.LBB1_34
.Ltmp2:                                 # Block address taken
.LBB1_36:                               # %.split107
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 6
	b	.LBB1_34
.Ltmp3:                                 # Block address taken
.LBB1_37:                               # %.split140
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 17
	b	.LBB1_34
.Ltmp4:                                 # Block address taken
.LBB1_38:                               # %.split158
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 23
	b	.LBB1_34
.Ltmp5:                                 # Block address taken
.LBB1_39:                               # %.split167
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 26
	b	.LBB1_34
.Ltmp6:                                 # Block address taken
.LBB1_40:                               # %.split101
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 4
	b	.LBB1_34
.Ltmp7:                                 # Block address taken
.LBB1_41:                               # %.split98
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 3
	b	.LBB1_34
.Ltmp8:                                 # Block address taken
.LBB1_42:                               # %.split131
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 14
	b	.LBB1_34
.Ltmp9:                                 # Block address taken
.LBB1_43:                               # %.split143
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 18
	b	.LBB1_34
.Ltmp10:                                # Block address taken
.LBB1_44:                               # %.split119
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 10
	b	.LBB1_34
.Ltmp11:                                # Block address taken
.LBB1_45:                               # %.split173
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 28
	b	.LBB1_34
.Ltmp12:                                # Block address taken
.LBB1_46:                               # %.split146
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 19
	b	.LBB1_34
.Ltmp13:                                # Block address taken
.LBB1_47:                               # %.split179
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 30
	b	.LBB1_34
.Ltmp14:                                # Block address taken
.LBB1_48:                               # %.split122
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 11
	b	.LBB1_34
.Ltmp15:                                # Block address taken
.LBB1_49:                               # %.split182
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 31
	b	.LBB1_34
.Ltmp16:                                # Block address taken
.LBB1_50:                               # %.split134
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 15
	b	.LBB1_34
.Ltmp17:                                # Block address taken
.LBB1_51:                               # %.split116
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 9
	b	.LBB1_34
.Ltmp18:                                # Block address taken
.LBB1_52:                               # %.split125
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 12
	b	.LBB1_34
.Ltmp19:                                # Block address taken
.LBB1_53:                               # %.split170
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 27
	b	.LBB1_34
.Ltmp20:                                # Block address taken
.LBB1_54:                               # %.split176
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 29
	b	.LBB1_34
.Ltmp21:                                # Block address taken
.LBB1_55:                               # %.split113
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 8
	b	.LBB1_34
.Ltmp22:                                # Block address taken
.LBB1_56:                               # %.split161
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 24
	b	.LBB1_34
.Ltmp23:                                # Block address taken
.LBB1_57:                               # %.split164
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 25
	b	.LBB1_34
.Ltmp24:                                # Block address taken
.LBB1_58:                               # %.split104
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 5
	b	.LBB1_34
.Ltmp25:                                # Block address taken
.LBB1_59:                               # %.split110
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 7
	b	.LBB1_34
.Ltmp26:                                # Block address taken
.LBB1_60:                               # %.split137
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 16
	b	.LBB1_34
.Ltmp27:                                # Block address taken
.LBB1_61:                               # %.split155
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 22
	b	.LBB1_34
.Ltmp28:                                # Block address taken
.LBB1_62:                               # %.split128
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 13
	b	.LBB1_34
.Ltmp29:                                # Block address taken
.LBB1_63:                               # %.split152
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 21
	b	.LBB1_34
.Ltmp30:                                # Block address taken
.LBB1_64:                               # %.split149
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 20
	b	.LBB1_34
.Ltmp31:                                # Block address taken
.LBB1_65:                               # %.loopexit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	eval, .Lfunc_end1-eval
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_65-.LJTI1_0
	.word	.LBB1_14-.LJTI1_0
	.word	.LBB1_3-.LJTI1_0
	.word	.LBB1_3-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_19-.LJTI1_0
	.word	.LBB1_22-.LJTI1_0
	.word	.LBB1_15-.LJTI1_0
	.word	.LBB1_25-.LJTI1_0
	.word	.LBB1_10-.LJTI1_0
	.word	.LBB1_24-.LJTI1_0
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_9-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_6-.LJTI1_0
	.word	.LBB1_13-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_17-.LJTI1_0
	.word	.LBB1_23-.LJTI1_0
	.word	.LBB1_28-.LJTI1_0
	.word	.LBB1_18-.LJTI1_0
	.word	.LBB1_20-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_29-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_11-.LJTI1_0
	.word	.LBB1_32-.LJTI1_0
	.word	.LBB1_4-.LJTI1_0
	.word	.LBB1_30-.LJTI1_0
	.word	.LBB1_31-.LJTI1_0
	.word	.LBB1_26-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
                                        # -- End function
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2128
	sub.d	$sp, $sp, $a0
	lu12i.w	$a0, 16
	lu32i.d	$a0, 196610
	vreplgr2vr.d	$vr0, $a0
	lu12i.w	$a0, -2
	ori	$a0, $a0, 32
	lu12i.w	$a1, 135300
	ori	$a1, $a1, 529
	lu32i.d	$a1, 135300
	lu52i.d	$a1, $a1, 132
	vrepli.b	$vr1, 0
	addi.d	$a2, $sp, 48
	lu12i.w	$a4, 1
	ori	$a3, $a4, 4064
	ori	$a4, $a4, 4080
	.p2align	4, , 16
.LBB2_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.hu	$vr2, $vr0, 4
	vpickve2gr.h	$a5, $vr0, 3
	bstrpick.d	$a6, $a5, 15, 0
	mulh.du	$a6, $a6, $a1
	slli.d	$a7, $a6, 5
	sub.d	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	st.h	$a5, $sp, 22
	vpickve2gr.h	$a5, $vr0, 2
	bstrpick.d	$a6, $a5, 15, 0
	mulh.du	$a6, $a6, $a1
	slli.d	$a7, $a6, 5
	sub.d	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	st.h	$a5, $sp, 20
	vpickve2gr.h	$a5, $vr0, 1
	bstrpick.d	$a6, $a5, 15, 0
	mulh.du	$a6, $a6, $a1
	slli.d	$a7, $a6, 5
	sub.d	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	st.h	$a5, $sp, 18
	vpickve2gr.h	$a5, $vr0, 0
	bstrpick.d	$a5, $a5, 15, 0
	mulh.du	$a6, $a5, $a1
	slli.d	$a7, $a6, 5
	sub.d	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	st.h	$a5, $sp, 16
	vld	$vr3, $sp, 16
	vpickve2gr.h	$a5, $vr2, 3
	bstrpick.d	$a6, $a5, 15, 0
	mulh.du	$a6, $a6, $a1
	slli.d	$a7, $a6, 5
	sub.d	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	st.h	$a5, $sp, 38
	vpickve2gr.h	$a5, $vr2, 2
	bstrpick.d	$a6, $a5, 15, 0
	mulh.du	$a6, $a6, $a1
	slli.d	$a7, $a6, 5
	sub.d	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	st.h	$a5, $sp, 36
	vpickve2gr.h	$a5, $vr2, 1
	bstrpick.d	$a6, $a5, 15, 0
	mulh.du	$a6, $a6, $a1
	slli.d	$a7, $a6, 5
	sub.d	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	st.h	$a5, $sp, 34
	vpickve2gr.h	$a5, $vr2, 0
	bstrpick.d	$a5, $a5, 15, 0
	mulh.du	$a6, $a5, $a1
	slli.d	$a7, $a6, 5
	sub.d	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	st.h	$a5, $sp, 32
	vld	$vr2, $sp, 32
	vaddi.hu	$vr3, $vr3, 1
	vaddi.hu	$vr2, $vr2, 1
	vilvl.h	$vr3, $vr1, $vr3
	vilvl.h	$vr2, $vr1, $vr2
	add.d	$a5, $a2, $a0
	vstx	$vr3, $a5, $a3
	vstx	$vr2, $a5, $a4
	addi.d	$a0, $a0, 32
	vaddi.hu	$vr0, $vr0, 8
	bnez	$a0, .LBB2_1
# %bb.2:                                # %scalar.ph
	ori	$a0, $zero, 26
	lu32i.d	$a0, 27
	lu12i.w	$a1, 2
	ori	$a1, $a1, 16
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	ori	$a0, $zero, 28
	lu32i.d	$a0, 29
	lu12i.w	$a1, 2
	ori	$a1, $a1, 24
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	ori	$a0, $zero, 30
	lu32i.d	$a0, 31
	lu12i.w	$a1, 2
	ori	$a1, $a1, 32
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	ori	$a0, $zero, 1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 40
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	lu12i.w	$a0, 24
	ori	$fp, $a0, 1696
	.p2align	4, , 16
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(eval)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, -1
	bnez	$fp, .LBB2_3
# %bb.4:
	pcalau12i	$a0, %pc_hi20(sum)
	ld.w	$a1, $a0, %pc_lo12(sum)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2128
	add.d	$sp, $sp, $a1
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.type	sum,@object                     # @sum
	.bss
	.globl	sum
	.p2align	2, 0x0
sum:
	.word	0                               # 0x0
	.size	sum, 4

	.type	eval.dispatch,@object           # @eval.dispatch
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
eval.dispatch:
	.dword	.Ltmp31
	.dword	.Ltmp0
	.dword	.Ltmp1
	.dword	.Ltmp7
	.dword	.Ltmp6
	.dword	.Ltmp24
	.dword	.Ltmp2
	.dword	.Ltmp25
	.dword	.Ltmp21
	.dword	.Ltmp17
	.dword	.Ltmp10
	.dword	.Ltmp14
	.dword	.Ltmp18
	.dword	.Ltmp28
	.dword	.Ltmp8
	.dword	.Ltmp16
	.dword	.Ltmp26
	.dword	.Ltmp3
	.dword	.Ltmp9
	.dword	.Ltmp12
	.dword	.Ltmp30
	.dword	.Ltmp29
	.dword	.Ltmp27
	.dword	.Ltmp4
	.dword	.Ltmp22
	.dword	.Ltmp23
	.dword	.Ltmp5
	.dword	.Ltmp19
	.dword	.Ltmp11
	.dword	.Ltmp20
	.dword	.Ltmp13
	.dword	.Ltmp15
	.size	eval.dispatch, 256

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Sum: %u\n"
	.size	.L.str, 9

	.section	".note.GNU-stack","",@progbits
	.addrsig
