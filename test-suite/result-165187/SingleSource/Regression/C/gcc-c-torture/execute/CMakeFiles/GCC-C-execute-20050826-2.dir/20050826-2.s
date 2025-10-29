	.file	"20050826-2.c"
	.text
	.globl	inet_check_attr                 # -- Begin function inet_check_attr
	.p2align	5
	.type	inet_check_attr,@function
inet_check_attr:                        # @inet_check_attr
# %bb.0:
	ld.d	$a0, $a1, 0
	beqz	$a0, .LBB0_4
# %bb.1:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_3
# %bb.2:
	addi.w	$a0, $zero, -22
	ret
.LBB0_3:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 0
.LBB0_4:
	ld.d	$a0, $a1, 8
	beqz	$a0, .LBB0_8
# %bb.5:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_7
# %bb.6:
	addi.w	$a0, $zero, -22
	ret
.LBB0_7:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 8
.LBB0_8:
	ld.d	$a0, $a1, 16
	beqz	$a0, .LBB0_12
# %bb.9:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_11
# %bb.10:
	addi.w	$a0, $zero, -22
	ret
.LBB0_11:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 16
.LBB0_12:
	ld.d	$a0, $a1, 24
	beqz	$a0, .LBB0_16
# %bb.13:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_15
# %bb.14:
	addi.w	$a0, $zero, -22
	ret
.LBB0_15:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 24
.LBB0_16:
	ld.d	$a0, $a1, 32
	beqz	$a0, .LBB0_20
# %bb.17:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_19
# %bb.18:
	addi.w	$a0, $zero, -22
	ret
.LBB0_19:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 32
.LBB0_20:
	ld.d	$a0, $a1, 40
	beqz	$a0, .LBB0_24
# %bb.21:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_23
# %bb.22:
	addi.w	$a0, $zero, -22
	ret
.LBB0_23:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 40
.LBB0_24:
	ld.d	$a0, $a1, 48
	beqz	$a0, .LBB0_28
# %bb.25:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_27
# %bb.26:
	addi.w	$a0, $zero, -22
	ret
.LBB0_27:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 48
.LBB0_28:
	ld.d	$a0, $a1, 56
	beqz	$a0, .LBB0_31
# %bb.29:
	ld.hu	$a0, $a0, 0
	bstrpick.d	$a0, $a0, 15, 2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 4
	bne	$a0, $a2, .LBB0_31
# %bb.30:
	addi.w	$a0, $zero, -22
	ret
.LBB0_31:
	ld.d	$a0, $a1, 64
	beqz	$a0, .LBB0_34
# %bb.32:
	ld.hu	$a0, $a0, 0
	bstrpick.d	$a0, $a0, 15, 2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 4
	bne	$a0, $a2, .LBB0_34
# %bb.33:
	addi.w	$a0, $zero, -22
	ret
.LBB0_34:
	ld.d	$a0, $a1, 72
	beqz	$a0, .LBB0_38
# %bb.35:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_37
# %bb.36:
	addi.w	$a0, $zero, -22
	ret
.LBB0_37:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 72
.LBB0_38:
	ld.d	$a0, $a1, 80
	beqz	$a0, .LBB0_42
# %bb.39:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_41
# %bb.40:
	addi.w	$a0, $zero, -22
	ret
.LBB0_41:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 80
.LBB0_42:
	ld.d	$a0, $a1, 88
	beqz	$a0, .LBB0_46
# %bb.43:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_45
# %bb.44:
	addi.w	$a0, $zero, -22
	ret
.LBB0_45:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 88
.LBB0_46:
	ld.d	$a0, $a1, 96
	beqz	$a0, .LBB0_50
# %bb.47:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_49
# %bb.48:
	addi.w	$a0, $zero, -22
	ret
.LBB0_49:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 96
.LBB0_50:
	ld.d	$a2, $a1, 104
	beqz	$a2, .LBB0_53
# %bb.51:
	ld.hu	$a0, $a2, 0
	bstrpick.d	$a0, $a0, 15, 2
	slli.d	$a0, $a0, 2
	ori	$a3, $zero, 4
	bne	$a0, $a3, .LBB0_54
# %bb.52:
	addi.w	$a0, $zero, -22
	ret
.LBB0_53:
	move	$a0, $zero
	ret
.LBB0_54:
	move	$a0, $zero
	addi.d	$a2, $a2, 4
	st.d	$a2, $a1, 104
	ret
.Lfunc_end0:
	.size	inet_check_attr, .Lfunc_end0-inet_check_attr
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	ori	$s0, $zero, 12
	ori	$a0, $zero, 12
	lu32i.d	$a0, 12
	st.d	$a0, $sp, 120
	addi.d	$s1, $sp, 120
	st.d	$s1, $sp, 8
	st.d	$s1, $sp, 16
	st.d	$s1, $sp, 24
	st.d	$s1, $sp, 32
	st.d	$s1, $sp, 40
	st.d	$s1, $sp, 48
	st.d	$s1, $sp, 56
	st.d	$s1, $sp, 64
	st.d	$s1, $sp, 72
	st.d	$s1, $sp, 80
	st.d	$s1, $sp, 88
	st.d	$s1, $sp, 96
	st.d	$s1, $sp, 104
	st.d	$s1, $sp, 112
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(inet_check_attr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_31
# %bb.1:                                # %.preheader30.preheader
	ld.d	$a0, $sp, 8
	addi.d	$fp, $sp, 124
	bne	$a0, $fp, .LBB1_31
# %bb.2:                                # %.preheader30.preheader
	ld.d	$a0, $sp, 16
	bne	$a0, $fp, .LBB1_31
# %bb.3:                                # %.preheader30.preheader
	ld.d	$a0, $sp, 24
	bne	$a0, $fp, .LBB1_31
# %bb.4:                                # %.preheader30.preheader
	ld.d	$a0, $sp, 32
	bne	$a0, $fp, .LBB1_31
# %bb.5:                                # %.preheader30.preheader
	ld.d	$a0, $sp, 40
	bne	$a0, $fp, .LBB1_31
# %bb.6:                                # %.preheader30.preheader
	ld.d	$a0, $sp, 48
	bne	$a0, $fp, .LBB1_31
# %bb.7:                                # %.preheader30.preheader
	ld.d	$a0, $sp, 56
	bne	$a0, $fp, .LBB1_31
# %bb.8:                                # %.preheader30.preheader
	ld.d	$a0, $sp, 64
	xor	$a0, $a0, $s1
	sltui	$a0, $a0, 1
	beqz	$a0, .LBB1_31
# %bb.9:                                # %.preheader30.preheader
	ld.d	$a0, $sp, 72
	xor	$a0, $a0, $s1
	sltui	$a0, $a0, 1
	beqz	$a0, .LBB1_31
# %bb.10:                               # %.preheader30.preheader
	ld.d	$a0, $sp, 80
	bne	$a0, $fp, .LBB1_31
# %bb.11:                               # %.preheader30.preheader
	ld.d	$a0, $sp, 88
	bne	$a0, $fp, .LBB1_31
# %bb.12:                               # %.preheader30.preheader
	ld.d	$a0, $sp, 96
	bne	$a0, $fp, .LBB1_31
# %bb.13:                               # %.preheader30.preheader
	ld.d	$a0, $sp, 104
	bne	$a0, $fp, .LBB1_31
# %bb.14:                               # %.preheader30.preheader
	ld.d	$a0, $sp, 112
	bne	$a0, $fp, .LBB1_31
# %bb.15:                               # %.preheader29.preheader
	addi.d	$a0, $sp, 120
	st.d	$a0, $sp, 8
	st.d	$a0, $sp, 24
	st.d	$a0, $sp, 32
	st.d	$a0, $sp, 40
	st.d	$a0, $sp, 56
	st.d	$a0, $sp, 64
	st.d	$a0, $sp, 72
	st.d	$a0, $sp, 80
	st.d	$a0, $sp, 88
	st.d	$a0, $sp, 96
	st.d	$a0, $sp, 104
	st.d	$a0, $sp, 112
	st.d	$zero, $sp, 16
	addi.d	$a0, $s0, -8
	st.h	$a0, $sp, 124
	st.d	$fp, $sp, 48
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(inet_check_attr)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -22
	bne	$a0, $a1, .LBB1_31
# %bb.16:                               # %.preheader
	ld.d	$a1, $sp, 16
	ld.d	$a0, $sp, 8
	bnez	$a1, .LBB1_31
# %bb.17:                               # %.preheader.split.us.preheader
	bne	$a0, $fp, .LBB1_31
# %bb.18:                               # %.preheader.split.us.preheader
	ld.d	$a0, $sp, 24
	bne	$a0, $fp, .LBB1_31
# %bb.19:                               # %.preheader.split.us.preheader
	ld.d	$a0, $sp, 32
	bne	$a0, $fp, .LBB1_31
# %bb.20:                               # %.preheader.split.us.preheader
	ld.d	$a0, $sp, 40
	bne	$a0, $fp, .LBB1_31
# %bb.21:                               # %.preheader.split.us.preheader
	ld.d	$a0, $sp, 48
	bne	$a0, $fp, .LBB1_31
# %bb.22:                               # %.thread.us.5
	ld.d	$a1, $sp, 56
	addi.d	$a0, $sp, 120
	bne	$a1, $a0, .LBB1_31
# %bb.23:                               # %.thread.us.5
	ld.d	$a1, $sp, 64
	xor	$a1, $a1, $a0
	sltui	$a1, $a1, 1
	beqz	$a1, .LBB1_31
# %bb.24:                               # %.thread.us.5
	ld.d	$a1, $sp, 72
	xor	$a1, $a1, $a0
	sltui	$a1, $a1, 1
	beqz	$a1, .LBB1_31
# %bb.25:                               # %.thread.us.5
	ld.d	$a1, $sp, 80
	xor	$a1, $a1, $a0
	sltui	$a1, $a1, 1
	beqz	$a1, .LBB1_31
# %bb.26:                               # %.thread.us.5
	ld.d	$a1, $sp, 88
	xor	$a1, $a1, $a0
	sltui	$a1, $a1, 1
	beqz	$a1, .LBB1_31
# %bb.27:                               # %.thread.us.5
	ld.d	$a1, $sp, 96
	xor	$a1, $a1, $a0
	sltui	$a1, $a1, 1
	beqz	$a1, .LBB1_31
# %bb.28:                               # %.thread.us.5
	ld.d	$a1, $sp, 104
	xor	$a1, $a1, $a0
	sltui	$a1, $a1, 1
	beqz	$a1, .LBB1_31
# %bb.29:                               # %.thread.us.5
	ld.d	$a1, $sp, 112
	xor	$a0, $a1, $a0
	sltui	$a0, $a0, 1
	beqz	$a0, .LBB1_31
# %bb.30:                               # %.split38.us
	move	$a0, $zero
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB1_31:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
