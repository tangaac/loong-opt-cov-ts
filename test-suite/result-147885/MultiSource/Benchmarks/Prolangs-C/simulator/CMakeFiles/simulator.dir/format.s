	.file	"format.c"
	.text
	.globl	FORMAT2                         # -- Begin function FORMAT2
	.p2align	5
	.type	FORMAT2,@function
FORMAT2:                                # @FORMAT2
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(MEMORY)
	ld.d	$s1, $a2, %got_pc_lo12(MEMORY)
	pcalau12i	$a2, %got_pc_hi20(REGISTER)
	ld.d	$s2, $a2, %got_pc_lo12(REGISTER)
	ld.d	$a2, $s1, 0
	ld.w	$a3, $s2, 32
	add.d	$a2, $a2, $a3
	ld.b	$a2, $a2, 1
	move	$fp, $a1
	move	$s0, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 62, 59
	add.w	$a0, $a0, $a1
	srli.d	$a0, $a0, 4
	st.w	$a0, $s0, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $s2, 32
	add.d	$a0, $a0, $a1
	ld.b	$a0, $a0, 1
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	slli.d	$a1, $a1, 4
	sub.d	$a0, $a0, $a1
	st.w	$a0, $fp, 0
	ld.w	$a0, $s2, 32
	addi.d	$a0, $a0, 2
	st.w	$a0, $s2, 32
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	FORMAT2, .Lfunc_end0-FORMAT2
                                        # -- End function
	.globl	FORMAT3_4                       # -- Begin function FORMAT3_4
	.p2align	5
	.type	FORMAT3_4,@function
FORMAT3_4:                              # @FORMAT3_4
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(REGISTER)
	ld.d	$s4, $a2, %got_pc_lo12(REGISTER)
	ld.w	$a2, $s4, 32
	move	$fp, $a1
	lu12i.w	$s1, 255
	ori	$s2, $s1, 4093
	ori	$a1, $zero, 2
	blt	$s2, $a2, .LBB1_39
# %bb.1:
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(MEMORY)
	ld.d	$s3, $a0, %got_pc_lo12(MEMORY)
	ld.d	$a0, $s3, 0
	ldx.b	$a0, $a0, $a2
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 0
	ori	$s5, $zero, 1
	pcaddu18i	$ra, %call36(BYTES_TO_BITS)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.w	$a1, $s4, 32
	add.d	$a0, $a0, $a1
	ld.b	$a0, $a0, 1
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 32
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(BYTES_TO_BITS)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.w	$a1, $s4, 32
	add.d	$a0, $a0, $a1
	ld.b	$a0, $a0, 2
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 64
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(BYTES_TO_BITS)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 44
	ori	$a0, $zero, 3
	bne	$a1, $s5, .LBB1_6
# %bb.2:
	ld.w	$a1, $sp, 24
	ld.w	$a2, $sp, 28
	or	$a1, $a1, $a2
	beqz	$a1, .LBB1_6
# %bb.3:
	ld.w	$a0, $s4, 32
	ori	$a1, $s1, 4092
	bge	$a1, $a0, .LBB1_5
# %bb.4:
	ori	$a1, $zero, 2
	b	.LBB1_39
.LBB1_5:
	ld.d	$a1, $s3, 0
	add.d	$a0, $a1, $a0
	ld.b	$a0, $a0, 3
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 96
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(BYTES_TO_BITS)
	jirl	$ra, $ra, 0
	move	$s5, $zero
	ori	$a0, $zero, 4
.LBB1_6:
	ld.w	$a1, $s4, 32
	ld.w	$a2, $sp, 24
	ld.w	$a3, $sp, 28
	add.d	$a0, $a1, $a0
	or	$a1, $a2, $a3
	st.w	$a0, $s4, 32
	bnez	$a1, .LBB1_16
# %bb.7:
	addi.d	$a0, $sp, 48
	ori	$a1, $zero, 12
	pcaddu18i	$ra, %call36(BITS_TO_BYTE)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB1_8:
	ld.w	$a2, $sp, 24
	ld.w	$a1, $sp, 28
	ori	$a0, $zero, 1
	bne	$a2, $a0, .LBB1_22
# %bb.9:
	bne	$a1, $a0, .LBB1_22
# %bb.10:
	ori	$a0, $zero, 1
	bne	$s0, $a0, .LBB1_42
# %bb.11:
	bltu	$s2, $s1, .LBB1_38
# %bb.12:                               # %.preheader
	ori	$a0, $zero, 1
	blt	$fp, $a0, .LBB1_40
# %bb.13:                               # %.lr.ph84.preheader
	move	$a1, $zero
	.p2align	4, , 16
.LBB1_14:                               # %.lr.ph84
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ldx.b	$a0, $a0, $s1
	slli.d	$s0, $a1, 8
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	add.w	$a1, $a0, $s0
	addi.d	$fp, $fp, -1
	addi.d	$s1, $s1, 1
	bnez	$fp, .LBB1_14
# %bb.15:                               # %._crit_edge85
	lu12i.w	$a0, 4095
	ori	$a0, $a0, 4095
	slt	$a0, $a0, $a1
	masknez	$a0, $a1, $a0
	b	.LBB1_41
.LBB1_16:
	beqz	$s5, .LBB1_31
# %bb.17:
	addi.d	$a0, $sp, 48
	ori	$a1, $zero, 12
	pcaddu18i	$ra, %call36(BITS_TO_BYTE)
	jirl	$ra, $ra, 0
	ld.w	$a3, $sp, 36
	ld.w	$a1, $sp, 40
	ori	$a2, $zero, 1
	bne	$a3, $a2, .LBB1_19
# %bb.18:
	beq	$a1, $a2, .LBB1_38
.LBB1_19:
	ld.w	$a4, $sp, 32
	addi.d	$a3, $a3, -1
	sltui	$a3, $a3, 1
	ld.w	$a5, $s4, 4
	addi.d	$a4, $a4, -1
	ld.w	$a6, $s4, 12
	sltui	$a4, $a4, 1
	maskeqz	$a4, $a5, $a4
	add.d	$a0, $a4, $a0
	maskeqz	$a3, $a6, $a3
	add.w	$s1, $a0, $a3
	bne	$a1, $a2, .LBB1_8
# %bb.20:
	ori	$a0, $zero, 2048
	blt	$s1, $a0, .LBB1_43
# %bb.21:
	ld.w	$a0, $s4, 32
	add.d	$a0, $s1, $a0
	addi.d	$a0, $a0, -2048
	addi.w	$s1, $a0, -2048
	b	.LBB1_8
.LBB1_22:
	bne	$a2, $a0, .LBB1_35
# %bb.23:
	bnez	$a1, .LBB1_35
# %bb.24:
	bltu	$s2, $s1, .LBB1_38
# %bb.25:
	ld.d	$a0, $s3, 0
	ldx.b	$a0, $a0, $s1
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	add.d	$a1, $a1, $s1
	ld.b	$a1, $a1, 1
	move	$s2, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	add.d	$a1, $a1, $s1
	ld.b	$a1, $a1, 2
	slli.d	$a2, $s2, 16
	slli.d	$a0, $a0, 8
	add.d	$s1, $a0, $a2
	move	$a0, $a1
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	add.w	$a0, $s1, $a0
	bne	$s0, $a1, .LBB1_41
# %bb.26:
	lu12i.w	$a2, 256
	ori	$a1, $zero, 2
	blt	$a2, $a0, .LBB1_39
# %bb.27:                               # %.preheader79
	ori	$a1, $zero, 1
	blt	$fp, $a1, .LBB1_40
# %bb.28:                               # %.lr.ph.preheader
	move	$a2, $zero
	.p2align	4, , 16
.LBB1_29:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s3, 0
	ldx.b	$a1, $a1, $a0
	slli.d	$s1, $a2, 8
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(INT)
	jirl	$ra, $ra, 0
	add.w	$a2, $a0, $s1
	addi.d	$fp, $fp, -1
	addi.d	$a0, $s0, 1
	bnez	$fp, .LBB1_29
# %bb.30:                               # %._crit_edge
	lu12i.w	$a0, 4095
	ori	$a0, $a0, 4095
	slt	$a0, $a0, $a2
	masknez	$a0, $a2, $a0
	b	.LBB1_41
.LBB1_31:
	ld.w	$a2, $sp, 36
	ori	$a0, $zero, 1
	move	$a1, $zero
	beq	$a2, $a0, .LBB1_39
# %bb.32:
	ld.w	$a2, $sp, 40
	beq	$a2, $a0, .LBB1_39
# %bb.33:
	addi.d	$a0, $sp, 48
	ori	$a1, $zero, 20
	pcaddu18i	$ra, %call36(BITS_TO_BYTE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 32
	ori	$a2, $zero, 1
	move	$s1, $a0
	bne	$a1, $a2, .LBB1_8
# %bb.34:
	ld.w	$a0, $s4, 4
	b	.LBB1_44
.LBB1_35:
	move	$a0, $zero
	bnez	$a2, .LBB1_41
# %bb.36:
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB1_41
# %bb.37:
	lu12i.w	$a1, 4096
	move	$a0, $s1
	blt	$s1, $a1, .LBB1_41
.LBB1_38:
	move	$a1, $zero
.LBB1_39:                               # %._crit_edge85.thread.sink.split
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
.LBB1_40:                               # %._crit_edge85.thread
	move	$a0, $zero
.LBB1_41:                               # %._crit_edge85.thread
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB1_42:
	move	$a0, $s1
	b	.LBB1_41
.LBB1_43:
	ld.w	$a0, $s4, 32
.LBB1_44:
	add.w	$s1, $a0, $s1
	b	.LBB1_8
.Lfunc_end1:
	.size	FORMAT3_4, .Lfunc_end1-FORMAT3_4
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
