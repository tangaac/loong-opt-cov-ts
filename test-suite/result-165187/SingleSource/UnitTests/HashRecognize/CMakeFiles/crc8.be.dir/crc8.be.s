	.file	"crc8.be.c"
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
	ld.b	$a2, $a1, 197
	addi.d	$a0, $a0, -196
	sltu	$a0, $zero, $a0
	andi	$a2, $a2, 255
	ld.b	$a3, $a1, 133
	addi.d	$a2, $a2, -92
	sltu	$a2, $zero, $a2
	ld.b	$a1, $a1, 145
	andi	$a3, $a3, 255
	addi.d	$a3, $a3, -79
	sltu	$a3, $zero, $a3
	andi	$a1, $a1, 255
	addi.d	$a1, $a1, -246
	sltu	$a1, $zero, $a1
	or	$a0, $a0, $a2
	or	$a0, $a0, $a3
	or	$a0, $a0, $a1
	ret
.LBB0_2:                                # %.split.preheader
	addi.d	$sp, $sp, -448
	st.d	$ra, $sp, 440                   # 8-byte Folded Spill
	st.d	$fp, $sp, 432                   # 8-byte Folded Spill
	st.d	$s0, $sp, 424                   # 8-byte Folded Spill
	st.d	$s1, $sp, 416                   # 8-byte Folded Spill
	st.d	$s2, $sp, 408                   # 8-byte Folded Spill
	st.d	$s3, $sp, 400                   # 8-byte Folded Spill
	st.d	$s4, $sp, 392                   # 8-byte Folded Spill
	st.d	$s5, $sp, 384                   # 8-byte Folded Spill
	st.d	$s6, $sp, 376                   # 8-byte Folded Spill
	st.d	$s7, $sp, 368                   # 8-byte Folded Spill
	st.d	$s8, $sp, 360                   # 8-byte Folded Spill
	ld.b	$s0, $a1, 0
	move	$a2, $zero
	move	$a0, $zero
	addi.d	$a3, $zero, -24
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 352                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -11
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 344                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -46
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 336                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -49
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 328                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -100
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 320                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -127
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 312                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -90
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 304                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -69
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 296                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -51
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 288                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -48
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 280                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -9
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 272                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -22
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 264                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -71
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 256                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -92
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 248                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -125
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 240                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -98
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 232                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -121
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 224                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -102
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 216                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -67
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -96
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 200                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -13
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -18
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 184                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -55
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -44
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -94
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -65
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -104
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -123
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -42
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -53
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -20
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a3, $zero, -15
	xor	$a3, $s0, $a3
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	xori	$a3, $s0, 29
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	xori	$a3, $s0, 58
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	xori	$a3, $s0, 39
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	xori	$a3, $s0, 116
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	xori	$a3, $s0, 105
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	xori	$a3, $s0, 78
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	xori	$a3, $s0, 83
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	xori	$a3, $s0, 37
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	xori	$a3, $s0, 56
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	xori	$a3, $s0, 31
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	xori	$a3, $s0, 2
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	xori	$s5, $s0, 81
	xori	$s6, $s0, 76
	xori	$s7, $s0, 107
	xori	$s8, $s0, 118
	xori	$ra, $s0, 111
	xori	$a3, $s0, 114
	xori	$a4, $s0, 85
	xori	$a5, $s0, 72
	xori	$a6, $s0, 27
	xori	$a7, $s0, 6
	xori	$t0, $s0, 33
	xori	$t1, $s0, 60
	xori	$t2, $s0, 74
	xori	$t3, $s0, 87
	xori	$t4, $s0, 112
	xori	$t5, $s0, 109
	xori	$t6, $s0, 62
	xori	$t7, $s0, 35
	xori	$t8, $s0, 4
	xori	$s0, $s0, 25
	ori	$fp, $zero, 28
	ori	$s1, $zero, 1
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %crc_table.exit
                                        #   in Loop: Header=BB0_4 Depth=1
	pcalau12i	$s2, %pc_hi20(main.sample)
	addi.d	$s2, $s2, %pc_lo12(main.sample)
	ldx.w	$s3, $s2, $a2
	ldx.w	$s2, $s2, $fp
	xor	$s2, $s2, $s3
	andi	$s2, $s2, 255
	ldx.bu	$s3, $a1, $s2
	pcalau12i	$s4, %pc_hi20(.L.crctable)
	addi.d	$s4, $s4, %pc_lo12(.L.crctable)
	ldx.bu	$s2, $s4, $s2
	xor	$s2, $s3, $s2
	sltui	$s2, $s2, 1
	masknez	$s3, $s1, $s2
	maskeqz	$a0, $a0, $s2
	or	$a0, $a0, $s3
	addi.d	$fp, $fp, -4
	addi.w	$s2, $zero, -4
	addi.d	$a2, $a2, 4
	beq	$fp, $s2, .LBB0_6
.LBB0_4:                                # %.split
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$s2, $a1, 255
	bnez	$s2, .LBB0_3
# %bb.5:                                # %vector.ph20
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	st.b	$s2, $a1, 1
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	st.b	$s2, $a1, 2
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	st.b	$s2, $a1, 3
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	st.b	$s2, $a1, 4
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	st.b	$s2, $a1, 5
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	st.b	$s2, $a1, 6
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	st.b	$s2, $a1, 7
	ld.d	$s2, $sp, 352                   # 8-byte Folded Reload
	st.b	$s2, $a1, 8
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	st.b	$s2, $a1, 9
	ld.d	$s2, $sp, 336                   # 8-byte Folded Reload
	st.b	$s2, $a1, 10
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	st.b	$s2, $a1, 11
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	st.b	$s2, $a1, 12
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	st.b	$s2, $a1, 13
	ld.d	$s2, $sp, 304                   # 8-byte Folded Reload
	st.b	$s2, $a1, 14
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	st.b	$s2, $a1, 15
	ld.d	$s2, $sp, 288                   # 8-byte Folded Reload
	st.b	$s2, $a1, 16
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	st.b	$s2, $a1, 17
	ld.d	$s2, $sp, 272                   # 8-byte Folded Reload
	st.b	$s2, $a1, 18
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	st.b	$s2, $a1, 19
	ld.d	$s2, $sp, 256                   # 8-byte Folded Reload
	st.b	$s2, $a1, 20
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	st.b	$s2, $a1, 21
	ld.d	$s2, $sp, 240                   # 8-byte Folded Reload
	st.b	$s2, $a1, 22
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	st.b	$s2, $a1, 23
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	st.b	$s2, $a1, 24
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	st.b	$s2, $a1, 25
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	st.b	$s2, $a1, 26
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	st.b	$s2, $a1, 27
	st.b	$s5, $a1, 28
	st.b	$s6, $a1, 29
	st.b	$s7, $a1, 30
	st.b	$s8, $a1, 31
	ld.d	$s2, $sp, 224                   # 8-byte Folded Reload
	st.b	$s2, $a1, 32
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	st.b	$s2, $a1, 33
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	st.b	$s2, $a1, 34
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	st.b	$s2, $a1, 35
	ld.d	$s2, $sp, 192                   # 8-byte Folded Reload
	st.b	$s2, $a1, 36
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	st.b	$s2, $a1, 37
	ld.d	$s2, $sp, 176                   # 8-byte Folded Reload
	st.b	$s2, $a1, 38
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	st.b	$s2, $a1, 39
	st.b	$ra, $a1, 40
	st.b	$a3, $a1, 41
	st.b	$a4, $a1, 42
	st.b	$a5, $a1, 43
	st.b	$a6, $a1, 44
	st.b	$a7, $a1, 45
	st.b	$t0, $a1, 46
	st.b	$t1, $a1, 47
	st.b	$t2, $a1, 48
	st.b	$t3, $a1, 49
	st.b	$t4, $a1, 50
	st.b	$t5, $a1, 51
	st.b	$t6, $a1, 52
	st.b	$t7, $a1, 53
	st.b	$t8, $a1, 54
	st.b	$s0, $a1, 55
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
	st.b	$s2, $a1, 56
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	st.b	$s2, $a1, 57
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	st.b	$s2, $a1, 58
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	st.b	$s2, $a1, 59
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	st.b	$s2, $a1, 60
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	st.b	$s2, $a1, 61
	vld	$vr0, $a1, 0
	vld	$vr1, $a1, 16
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	st.b	$s2, $a1, 62
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	st.b	$s2, $a1, 63
	vxori.b	$vr2, $vr0, 19
	vxori.b	$vr3, $vr1, 19
	vld	$vr4, $a1, 32
	vld	$vr5, $a1, 48
	vst	$vr2, $a1, 64
	vst	$vr3, $a1, 80
	vxori.b	$vr2, $vr4, 19
	vxori.b	$vr3, $vr5, 19
	vst	$vr2, $a1, 96
	vst	$vr3, $a1, 112
	vxori.b	$vr2, $vr0, 38
	vxori.b	$vr3, $vr1, 38
	vst	$vr2, $a1, 128
	vst	$vr3, $a1, 144
	vxori.b	$vr2, $vr4, 38
	vxori.b	$vr3, $vr5, 38
	vst	$vr2, $a1, 160
	vst	$vr3, $a1, 176
	vxori.b	$vr0, $vr0, 53
	vxori.b	$vr1, $vr1, 53
	vst	$vr0, $a1, 192
	vst	$vr1, $a1, 208
	vxori.b	$vr0, $vr4, 53
	vxori.b	$vr1, $vr5, 53
	vst	$vr0, $a1, 224
	vst	$vr1, $a1, 240
	b	.LBB0_3
.LBB0_6:
	ld.d	$s8, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 432                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 440                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 448
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
	.comm	CRCTable,256,16
	.type	.L.crctable,@object             # @.crctable
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L.crctable:
	.ascii	"\000\035:'tiNS\350\365\322\317\234\201\246\273\315\320\367\352\271\244\203\236%8\037\002QLkv\207\232\275\240\363\356\311\324orUH\033\006!<JWpm>#\004\031\242\277\230\205\326\313\354\361\023\016)4gz]@\373\346\301\334\217\222\265\250\336\303\344\371\252\267\220\2156+\f\021B_xe\224\211\256\263\340\375\332\307|aF[\b\0252/YDc~-0\027\n\261\254\213\226\305\330\377\342&;\034\001ROhu\316\323\364\351\272\247\200\235\353\366\321\314\237\202\245\270\003\0369$wjMP\241\274\233\206\325\310\357\362ITsn= \007\032lqVK\030\005\"?\204\231\276\243\360\355\312\3275(\017\022A\\{f\335\300\347\372\251\264\223\216\370\345\302\337\214\221\266\253\020\r*7dy^C\262\257\210\225\306\333\374\341ZG`}.3\024\t\177bEX\013\0261,\227\212\255\260\343\376\331\304"
	.size	.L.crctable, 256

	.section	".note.GNU-stack","",@progbits
	.addrsig
