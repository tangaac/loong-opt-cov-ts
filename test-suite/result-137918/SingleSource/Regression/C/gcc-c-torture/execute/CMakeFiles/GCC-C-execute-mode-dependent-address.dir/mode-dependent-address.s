	.file	"mode-dependent-address.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function f883b
.LCPI0_0:
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI0_1:
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.text
	.globl	f883b
	.p2align	5
	.type	f883b,@function
f883b:                                  # @f883b
# %bb.0:                                # %vector.ph
	pcalau12i	$a4, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI0_0)
	pcalau12i	$a4, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a4, %pc_lo12(.LCPI0_1)
	move	$a4, $zero
	vrepli.w	$vr2, 32
	ori	$a5, $zero, 96
	.p2align	4, , 16
.LBB0_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, 0
	vinsgr2vr.w	$vr3, $a6, 0
	vmini.h	$vr3, $vr3, 1
	ld.d	$a6, $a2, 0
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vinsgr2vr.d	$vr4, $a6, 0
	vld	$vr5, $a3, 0
	vsra.w	$vr3, $vr3, $vr4
	vadd.w	$vr3, $vr3, $vr2
	vsrli.w	$vr3, $vr3, 7
	vshuf.b	$vr4, $vr0, $vr5, $vr0
	vshuf.b	$vr3, $vr0, $vr3, $vr1
	vori.b	$vr3, $vr3, 251
	vand.v	$vr3, $vr3, $vr4
	vpickve2gr.h	$a6, $vr3, 0
	stx.h	$a6, $a0, $a4
	addi.d	$a4, $a4, 2
	addi.d	$a3, $a3, 16
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 4
	bne	$a4, $a5, .LBB0_1
# %bb.2:                                # %middle.block
	ret
.Lfunc_end0:
	.size	f883b, .Lfunc_end0-f883b
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI1_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI1_1:
	.byte	0                               # 0x0
	.byte	8                               # 0x8
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI1_2:
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %vector.ph
	lu12i.w	$a0, 16
	vreplgr2vr.w	$vr0, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_0)
	pcalau12i	$a0, %pc_hi20(arg4+2)
	addi.d	$a3, $a0, %pc_lo12(arg4+2)
	pcalau12i	$a0, %pc_hi20(arg3)
	addi.d	$a0, $a0, %pc_lo12(arg3)
	addi.d	$a4, $a0, 16
	pcalau12i	$a1, %pc_hi20(arg2)
	addi.d	$a1, $a1, %pc_lo12(arg2)
	addi.d	$a5, $a1, 8
	ori	$a2, $zero, 0
	lu32i.d	$a2, 1
	vreplgr2vr.d	$vr3, $a2
	vrepli.h	$vr2, 256
	ori	$a6, $zero, 4
	pcalau12i	$a2, %pc_hi20(arg1)
	addi.d	$a2, $a2, %pc_lo12(arg1)
	ori	$a7, $zero, 196
	.p2align	4, , 16
.LBB1_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr4, $vr1, 2
	vaddi.wu	$vr5, $vr3, 2
	vaddi.bu	$vr6, $vr2, 2
	vaddi.hu	$vr7, $vr0, 2
	vpickve2gr.h	$t0, $vr2, 0
	st.h	$t0, $a3, -2
	vpickve2gr.h	$t0, $vr6, 0
	st.h	$t0, $a3, 0
	add.d	$t0, $a2, $a6
	vpickve2gr.w	$t1, $vr0, 0
	st.w	$t1, $t0, -4
	vpickve2gr.w	$t0, $vr7, 0
	stx.w	$t0, $a2, $a6
	vaddi.wu	$vr6, $vr3, 4
	vshuf4i.d	$vr3, $vr5, 8
	vst	$vr3, $a5, -8
	vst	$vr1, $a4, -16
	vst	$vr4, $a4, 0
	vaddi.du	$vr1, $vr1, 4
	vaddi.bu	$vr2, $vr2, 4
	vaddi.hu	$vr0, $vr0, 4
	addi.d	$a6, $a6, 8
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 16
	vori.b	$vr3, $vr6, 0
	bne	$a6, $a7, .LBB1_1
# %bb.2:                                # %middle.block
	move	$a4, $zero
	vrepli.w	$vr0, 32
	pcalau12i	$a3, %pc_hi20(.LCPI1_1)
	vld	$vr1, $a3, %pc_lo12(.LCPI1_1)
	pcalau12i	$a3, %pc_hi20(.LCPI1_2)
	vld	$vr2, $a3, %pc_lo12(.LCPI1_2)
	pcalau12i	$a3, %pc_hi20(result)
	addi.d	$a3, $a3, %pc_lo12(result)
	ori	$a5, $zero, 96
	.p2align	4, , 16
.LBB1_3:                                # %vector.body27
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a2, 0
	vinsgr2vr.w	$vr3, $a6, 0
	vmini.h	$vr3, $vr3, 1
	ld.d	$a6, $a1, 0
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vinsgr2vr.d	$vr4, $a6, 0
	vld	$vr5, $a0, 0
	vsra.w	$vr3, $vr3, $vr4
	vadd.w	$vr3, $vr3, $vr0
	vsrli.w	$vr3, $vr3, 7
	vshuf.b	$vr4, $vr0, $vr5, $vr1
	vshuf.b	$vr3, $vr0, $vr3, $vr2
	vori.b	$vr3, $vr3, 251
	vand.v	$vr3, $vr3, $vr4
	vpickve2gr.h	$a6, $vr3, 0
	stx.h	$a6, $a3, $a4
	addi.d	$a4, $a4, 2
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 4
	bne	$a4, $a5, .LBB1_3
# %bb.4:                                # %f883b.exit.preheader.preheader
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.L__const.main.correct)
	addi.d	$a1, $a1, %pc_lo12(.L__const.main.correct)
	ori	$a2, $zero, 96
	.p2align	4, , 16
.LBB1_5:                                # %f883b.exit.preheader
                                        # =>This Inner Loop Header: Depth=1
	ldx.b	$a4, $a3, $a0
	ld.w	$a5, $a1, 0
	bne	$a5, $a4, .LBB1_8
# %bb.6:                                # %f883b.exit
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 4
	bne	$a0, $a2, .LBB1_5
# %bb.7:
	move	$a0, $zero
	ret
.LBB1_8:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	.L__const.main.correct,@object  # @__const.main.correct
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.L__const.main.correct:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	27                              # 0x1b
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	27                              # 0x1b
	.word	32                              # 0x20
	.word	33                              # 0x21
	.word	34                              # 0x22
	.word	35                              # 0x23
	.word	32                              # 0x20
	.word	33                              # 0x21
	.word	34                              # 0x22
	.word	35                              # 0x23
	.word	40                              # 0x28
	.word	41                              # 0x29
	.word	42                              # 0x2a
	.word	43                              # 0x2b
	.word	40                              # 0x28
	.word	41                              # 0x29
	.word	42                              # 0x2a
	.word	43                              # 0x2b
	.word	48                              # 0x30
	.word	49                              # 0x31
	.word	50                              # 0x32
	.word	51                              # 0x33
	.word	48                              # 0x30
	.word	49                              # 0x31
	.word	50                              # 0x32
	.word	51                              # 0x33
	.word	56                              # 0x38
	.word	57                              # 0x39
	.word	58                              # 0x3a
	.word	59                              # 0x3b
	.word	56                              # 0x38
	.word	57                              # 0x39
	.word	58                              # 0x3a
	.word	59                              # 0x3b
	.word	64                              # 0x40
	.word	65                              # 0x41
	.word	66                              # 0x42
	.word	67                              # 0x43
	.word	64                              # 0x40
	.word	65                              # 0x41
	.word	66                              # 0x42
	.word	67                              # 0x43
	.word	72                              # 0x48
	.word	73                              # 0x49
	.word	74                              # 0x4a
	.word	75                              # 0x4b
	.word	72                              # 0x48
	.word	73                              # 0x49
	.word	74                              # 0x4a
	.word	75                              # 0x4b
	.word	80                              # 0x50
	.word	81                              # 0x51
	.word	82                              # 0x52
	.word	83                              # 0x53
	.word	80                              # 0x50
	.word	81                              # 0x51
	.word	82                              # 0x52
	.word	83                              # 0x53
	.word	88                              # 0x58
	.word	89                              # 0x59
	.word	90                              # 0x5a
	.word	91                              # 0x5b
	.word	88                              # 0x58
	.word	89                              # 0x59
	.word	90                              # 0x5a
	.word	91                              # 0x5b
	.size	.L__const.main.correct, 384

	.type	arg4,@object                    # @arg4
	.bss
	.globl	arg4
arg4:
	.space	96
	.size	arg4, 96

	.type	arg1,@object                    # @arg1
	.globl	arg1
	.p2align	1, 0x0
arg1:
	.space	192
	.size	arg1, 192

	.type	arg2,@object                    # @arg2
	.globl	arg2
	.p2align	2, 0x0
arg2:
	.space	384
	.size	arg2, 384

	.type	arg3,@object                    # @arg3
	.globl	arg3
	.p2align	3, 0x0
arg3:
	.space	768
	.size	arg3, 768

	.type	result,@object                  # @result
	.globl	result
result:
	.space	96
	.size	result, 96

	.section	".note.GNU-stack","",@progbits
	.addrsig
