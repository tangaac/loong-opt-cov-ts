	.file	"mode-dependent-address.c"
	.text
	.globl	f883b                           # -- Begin function f883b
	.p2align	5
	.type	f883b,@function
f883b:                                  # @f883b
# %bb.0:                                # %vector.ph
	move	$a4, $zero
	addi.d	$a1, $a1, 2
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 8
	ori	$a5, $zero, 1
	ori	$a6, $zero, 96
	.p2align	4, , 16
.LBB0_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a7, $a1, -2
	ld.h	$t0, $a1, 0
	slti	$t1, $a7, 1
	masknez	$t2, $a5, $t1
	maskeqz	$a7, $a7, $t1
	or	$a7, $a7, $t2
	slti	$t1, $t0, 1
	maskeqz	$t0, $t0, $t1
	ld.wu	$t2, $a2, -4
	ld.wu	$t3, $a2, 0
	masknez	$t1, $a5, $t1
	or	$t0, $t0, $t1
	sra.w	$a7, $a7, $t2
	sra.w	$t0, $t0, $t3
	addi.d	$a7, $a7, 32
	addi.d	$t0, $t0, 32
	srli.d	$a7, $a7, 7
	srli.d	$t0, $t0, 7
	ld.d	$t1, $a3, -8
	ld.d	$t2, $a3, 0
	ori	$a7, $a7, 251
	ori	$t0, $t0, 251
	and	$a7, $t1, $a7
	and	$t0, $t2, $t0
	add.d	$t1, $a0, $a4
	stx.b	$a7, $a0, $a4
	st.b	$t0, $t1, 1
	addi.d	$a4, $a4, 2
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 16
	bne	$a4, $a6, .LBB0_1
# %bb.2:                                # %middle.block
	ret
.Lfunc_end0:
	.size	f883b, .Lfunc_end0-f883b
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %vector.ph
	pcalau12i	$a0, %pc_hi20(arg1)
	addi.d	$a0, $a0, %pc_lo12(arg1)
	addi.d	$a1, $a0, 2
	pcalau12i	$a2, %pc_hi20(arg3)
	addi.d	$a3, $a2, %pc_lo12(arg3)
	addi.d	$a4, $a3, 8
	pcalau12i	$a2, %pc_hi20(arg2)
	addi.d	$a2, $a2, %pc_lo12(arg2)
	addi.d	$a5, $a2, 4
	pcalau12i	$a6, %pc_hi20(arg4)
	addi.d	$a6, $a6, %pc_lo12(arg4)
	move	$a7, $zero
	move	$t0, $zero
	ori	$t1, $zero, 96
	.p2align	4, , 16
.LBB1_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$t2, $t0, 1
	addi.d	$t3, $a7, 1
	ori	$t4, $t0, 1
	add.d	$t5, $a6, $t0
	stx.b	$t0, $a6, $t0
	st.b	$t4, $t5, 1
	st.h	$t0, $a1, -2
	st.h	$t4, $a1, 0
	st.w	$a7, $a5, -4
	st.w	$t3, $a5, 0
	st.d	$t0, $a4, -8
	st.d	$t2, $a4, 0
	addi.d	$t0, $t0, 2
	addi.d	$a7, $a7, 2
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 8
	bne	$t0, $t1, .LBB1_1
# %bb.2:                                # %middle.block
	addi.d	$a1, $a0, 2
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 8
	ori	$a4, $zero, 1
	pcalau12i	$a0, %pc_hi20(result)
	addi.d	$a0, $a0, %pc_lo12(result)
	move	$a5, $zero
	ori	$a6, $zero, 96
	.p2align	4, , 16
.LBB1_3:                                # %vector.body17
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a7, $a1, -2
	ld.h	$t0, $a1, 0
	slti	$t1, $a7, 1
	masknez	$t2, $a4, $t1
	maskeqz	$a7, $a7, $t1
	or	$a7, $a7, $t2
	slti	$t1, $t0, 1
	maskeqz	$t0, $t0, $t1
	ld.wu	$t2, $a2, -4
	ld.wu	$t3, $a2, 0
	masknez	$t1, $a4, $t1
	or	$t0, $t0, $t1
	sra.w	$a7, $a7, $t2
	sra.w	$t0, $t0, $t3
	addi.d	$a7, $a7, 32
	addi.d	$t0, $t0, 32
	srli.d	$a7, $a7, 7
	srli.d	$t0, $t0, 7
	ld.d	$t1, $a3, -8
	ld.d	$t2, $a3, 0
	ori	$a7, $a7, 251
	ori	$t0, $t0, 251
	and	$a7, $t1, $a7
	and	$t0, $t2, $t0
	add.d	$t1, $a0, $a5
	stx.b	$a7, $a0, $a5
	st.b	$t0, $t1, 1
	addi.d	$a5, $a5, 2
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 16
	bne	$a5, $a6, .LBB1_3
# %bb.4:                                # %f883b.exit.preheader.preheader
	pcalau12i	$a1, %pc_hi20(.L__const.main.correct)
	addi.d	$a1, $a1, %pc_lo12(.L__const.main.correct)
	move	$a2, $zero
	ori	$a3, $zero, 96
	.p2align	4, , 16
.LBB1_5:                                # %f883b.exit.preheader
                                        # =>This Inner Loop Header: Depth=1
	ldx.b	$a4, $a0, $a2
	ld.w	$a5, $a1, 0
	bne	$a5, $a4, .LBB1_8
# %bb.6:                                # %f883b.exit
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	bne	$a2, $a3, .LBB1_5
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
