	.file	"crc8.le.data16.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	pcalau12i	$a0, %pc_hi20(CRCTable)
	addi.d	$a1, $a0, %pc_lo12(CRCTable)
	ld.bu	$a0, $a1, 255
	beqz	$a0, .LBB0_2
# %bb.1:                                # %crc_table.exit.us.preheader
	ld.bu	$a2, $a1, 197
	ldx.bu	$a0, $a1, $a0
	ldx.b	$a2, $a1, $a2
	addi.d	$a0, $a0, -3
	ld.bu	$a3, $a1, 133
	sltu	$a0, $zero, $a0
	andi	$a2, $a2, 255
	ld.bu	$a4, $a1, 145
	ldx.b	$a3, $a1, $a3
	addi.d	$a2, $a2, -15
	sltu	$a2, $zero, $a2
	ldx.b	$a1, $a1, $a4
	andi	$a3, $a3, 255
	addi.d	$a3, $a3, -30
	sltu	$a3, $zero, $a3
	andi	$a1, $a1, 255
	addi.d	$a1, $a1, -2
	sltu	$a1, $zero, $a1
	or	$a0, $a0, $a2
	or	$a0, $a0, $a3
	or	$a0, $a0, $a1
	ret
.LBB0_2:                                # %.split.preheader
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	ld.bu	$a2, $a1, 0
	move	$a3, $zero
	move	$a0, $zero
	xori	$a4, $a2, 24
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	xori	$a4, $a2, 18
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	xori	$a4, $a2, 12
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	xori	$a4, $a2, 6
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	xori	$a4, $a2, 11
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	xori	$a4, $a2, 1
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	xori	$a4, $a2, 31
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	xori	$a2, $a2, 21
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	ori	$a2, $zero, 7
	ori	$t4, $zero, 256
	ori	$a4, $zero, 1
	ori	$a5, $zero, 8
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %crc_table.exit
                                        #   in Loop: Header=BB0_4 Depth=1
	slli.d	$t7, $a3, 2
	pcalau12i	$t8, %pc_hi20(main.sample)
	addi.d	$t8, $t8, %pc_lo12(main.sample)
	ldx.w	$t7, $t8, $t7
	sub.d	$fp, $a2, $a3
	slli.d	$fp, $fp, 2
	ldx.w	$t8, $t8, $fp
	xor	$t7, $t8, $t7
	andi	$t7, $t7, 255
	ldx.b	$fp, $a1, $t7
	srli.d	$t8, $t8, 8
	xor	$fp, $fp, $t8
	andi	$fp, $fp, 255
	ldx.bu	$fp, $a1, $fp
	pcalau12i	$s0, %pc_hi20(.L.crctable)
	addi.d	$s0, $s0, %pc_lo12(.L.crctable)
	ldx.b	$t7, $s0, $t7
	xor	$t7, $t7, $t8
	andi	$t7, $t7, 255
	ldx.bu	$t7, $s0, $t7
	xor	$t7, $fp, $t7
	sltui	$t7, $t7, 1
	masknez	$t8, $a4, $t7
	maskeqz	$a0, $a0, $t7
	addi.d	$a3, $a3, 1
	or	$a0, $a0, $t8
	beq	$a3, $a5, .LBB0_9
.LBB0_4:                                # %.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #     Child Loop BB0_8 Depth 2
	ld.bu	$t7, $a1, 255
	bnez	$t7, .LBB0_3
# %bb.5:                                # %vector.ph17
                                        #   in Loop: Header=BB0_4 Depth=1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	move	$t7, $zero
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	xori	$t8, $a3, 29
	st.d	$t8, $sp, 104                   # 8-byte Folded Spill
	st.b	$t8, $a1, 128
	xori	$fp, $a3, 19
	st.d	$fp, $sp, 120                   # 8-byte Folded Spill
	st.b	$fp, $a1, 64
	xori	$s0, $a3, 14
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	st.b	$s0, $a1, 192
	xori	$s1, $a3, 20
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.b	$s1, $a1, 32
	xori	$s2, $a3, 7
	st.d	$s2, $sp, 96                    # 8-byte Folded Spill
	st.b	$s2, $a1, 96
	xori	$s3, $a3, 9
	st.b	$s3, $a1, 160
	xori	$s4, $a3, 26
	st.b	$s4, $a1, 224
	xori	$s5, $a3, 10
	st.b	$s5, $a1, 16
	xori	$s6, $a3, 30
	st.d	$s6, $sp, 112                   # 8-byte Folded Spill
	st.b	$s6, $a1, 48
	xori	$s7, $a3, 25
	st.d	$s7, $sp, 88                    # 8-byte Folded Spill
	st.b	$s7, $a1, 80
	xori	$s8, $a3, 13
	st.b	$s8, $a1, 112
	xori	$ra, $a3, 23
	st.b	$ra, $a1, 144
	xori	$s1, $a3, 3
	st.b	$s1, $a1, 176
	xori	$s0, $a3, 4
	st.b	$s0, $a1, 208
	xori	$t8, $a3, 16
	st.b	$t8, $a1, 240
	xori	$s7, $a3, 5
	st.b	$s7, $a1, 8
	xori	$fp, $a3, 15
	st.b	$fp, $a1, 24
	xori	$s2, $a3, 17
	st.b	$s2, $a1, 40
	xori	$s6, $a3, 27
	st.b	$s6, $a1, 56
	xori	$t3, $a3, 22
	st.b	$t3, $a1, 72
	xori	$t5, $a3, 28
	st.b	$t5, $a1, 88
	xori	$t6, $a3, 2
	st.b	$t6, $a1, 104
	xori	$t2, $a3, 8
	st.b	$t2, $a1, 120
	ld.d	$t0, $sp, 64                    # 8-byte Folded Reload
	st.b	$t0, $a1, 136
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	st.b	$t1, $a1, 152
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	st.b	$a6, $a1, 168
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	st.b	$a7, $a1, 184
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	st.b	$a4, $a1, 200
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	st.b	$a5, $a1, 216
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.b	$a0, $a1, 232
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	st.b	$a2, $a1, 248
	st.b	$a0, $a1, 4
	st.b	$s4, $a1, 12
	st.b	$a2, $a1, 20
	st.b	$t8, $a1, 28
	st.b	$a4, $a1, 36
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.b	$a0, $a1, 44
	st.b	$a5, $a1, 52
	st.b	$s0, $a1, 60
	st.b	$a6, $a1, 68
	st.b	$s3, $a1, 76
	st.b	$a7, $a1, 84
	st.b	$s1, $a1, 92
	st.b	$t0, $a1, 100
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.b	$a0, $a1, 108
	st.b	$t1, $a1, 116
	st.b	$ra, $a1, 124
	st.b	$t6, $a1, 132
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.b	$a0, $a1, 140
	st.b	$t2, $a1, 148
	st.b	$s8, $a1, 156
	st.b	$t3, $a1, 164
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.b	$a0, $a1, 172
	st.b	$t5, $a1, 180
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.b	$a0, $a1, 188
	st.b	$s2, $a1, 196
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.b	$a0, $a1, 204
	st.b	$s6, $a1, 212
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.b	$a0, $a1, 220
	st.b	$s7, $a1, 228
	st.b	$a3, $a1, 236
	st.b	$fp, $a1, 244
	st.b	$s5, $a1, 252
	.p2align	4, , 16
.LBB0_6:                                # %vector.body18
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t8, $a1, $t7
	ldx.b	$fp, $a1, $t7
	ld.b	$s0, $t8, 4
	xori	$fp, $fp, 18
	xori	$s0, $s0, 18
	st.b	$fp, $t8, 2
	addi.d	$t7, $t7, 8
	st.b	$s0, $t8, 6
	bne	$t7, $t4, .LBB0_6
# %bb.7:                                # %vector.body.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$t7, $zero
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ori	$a2, $zero, 7
	ori	$a4, $zero, 1
	ori	$a5, $zero, 8
	.p2align	4, , 16
.LBB0_8:                                # %vector.body
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t8, $a1, $t7
	ldx.b	$fp, $a1, $t7
	ld.b	$s0, $t8, 2
	xori	$fp, $fp, 9
	xori	$s0, $s0, 9
	st.b	$fp, $t8, 1
	addi.d	$t7, $t7, 4
	st.b	$s0, $t8, 3
	bne	$t7, $t4, .LBB0_8
	b	.LBB0_3
.LBB0_9:
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	main.sample,@object             # @main.sample
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	2, 0x0
main.sample:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	11                              # 0xb
	.word	16                              # 0x10
	.word	129                             # 0x81
	.word	142                             # 0x8e
	.word	196                             # 0xc4
	.word	255                             # 0xff
	.size	main.sample, 32

	.type	CRCTable,@object                # @CRCTable
	.local	CRCTable
	.comm	CRCTable,256,1
	.type	.L.crctable,@object             # @.crctable
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L.crctable:
	.ascii	"\000\t\022\033\037\026\r\004\005\f\027\036\032\023\b\001\n\003\030\021\025\034\007\016\017\006\035\024\020\031\002\013\024\035\006\017\013\002\031\020\021\030\003\n\016\007\034\025\036\027\f\005\001\b\023\032\033\022\t\000\004\r\026\037\023\032\001\b\f\005\036\027\026\037\004\r\t\000\033\022\031\020\013\002\006\017\024\035\034\025\016\007\003\n\021\030\007\016\025\034\030\021\n\003\002\013\020\031\035\024\017\006\r\004\037\026\022\033\000\t\b\001\032\023\027\036\005\f\035\024\017\006\002\013\020\031\030\021\n\003\007\016\025\034\027\036\005\f\b\001\032\023\022\033\000\t\r\004\037\026\t\000\033\022\026\037\004\r\f\005\036\027\023\032\001\b\003\n\021\030\034\025\016\007\006\017\024\035\031\020\013\002\016\007\034\025\021\030\003\n\013\002\031\020\024\035\006\017\004\r\026\037\033\022\t\000\001\b\023\032\036\027\f\005\032\023\b\001\005\f\027\036\037\026\r\004\000\t\022\033\020\031\002\013\017\006\035\024\025\034\007\016\n\003\030\021"
	.size	.L.crctable, 256

	.section	".note.GNU-stack","",@progbits
	.addrsig
