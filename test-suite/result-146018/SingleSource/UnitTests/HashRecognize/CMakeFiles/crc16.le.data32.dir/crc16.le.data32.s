	.file	"crc16.le.data32.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	48                              # 0x30
	.dword	52                              # 0x34
	.dword	56                              # 0x38
	.dword	60                              # 0x3c
.LCPI0_1:
	.dword	32                              # 0x20
	.dword	36                              # 0x24
	.dword	40                              # 0x28
	.dword	44                              # 0x2c
.LCPI0_2:
	.dword	16                              # 0x10
	.dword	20                              # 0x14
	.dword	24                              # 0x18
	.dword	28                              # 0x1c
.LCPI0_3:
	.dword	0                               # 0x0
	.dword	4                               # 0x4
	.dword	8                               # 0x8
	.dword	12                              # 0xc
.LCPI0_4:
	.dword	24                              # 0x18
	.dword	26                              # 0x1a
	.dword	28                              # 0x1c
	.dword	30                              # 0x1e
.LCPI0_5:
	.dword	16                              # 0x10
	.dword	18                              # 0x12
	.dword	20                              # 0x14
	.dword	22                              # 0x16
.LCPI0_6:
	.dword	8                               # 0x8
	.dword	10                              # 0xa
	.dword	12                              # 0xc
	.dword	14                              # 0xe
.LCPI0_7:
	.dword	0                               # 0x0
	.dword	2                               # 0x2
	.dword	4                               # 0x4
	.dword	6                               # 0x6
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -592
	st.d	$ra, $sp, 584                   # 8-byte Folded Spill
	st.d	$fp, $sp, 576                   # 8-byte Folded Spill
	st.d	$s0, $sp, 568                   # 8-byte Folded Spill
	st.d	$s1, $sp, 560                   # 8-byte Folded Spill
	st.d	$s2, $sp, 552                   # 8-byte Folded Spill
	st.d	$s3, $sp, 544                   # 8-byte Folded Spill
	st.d	$s4, $sp, 536                   # 8-byte Folded Spill
	st.d	$s5, $sp, 528                   # 8-byte Folded Spill
	st.d	$s6, $sp, 520                   # 8-byte Folded Spill
	st.d	$s7, $sp, 512                   # 8-byte Folded Spill
	st.d	$s8, $sp, 504                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(CRCTable)
	addi.d	$a1, $a0, %pc_lo12(CRCTable)
	ld.h	$s1, $a1, 0
	move	$a2, $zero
	move	$a0, $zero
	lu12i.w	$a6, -1
	ori	$a3, $a6, 1
	xor	$a3, $s1, $a3
	st.d	$a3, $sp, 496                   # 8-byte Folded Spill
	lu12i.w	$t1, -3
	ori	$a3, $t1, 2049
	xor	$a3, $s1, $a3
	st.d	$a3, $sp, 488                   # 8-byte Folded Spill
	lu12i.w	$a5, 2
	ori	$a3, $a5, 2048
	xor	$a3, $s1, $a3
	st.d	$a3, $sp, 480                   # 8-byte Folded Spill
	lu12i.w	$a4, 7
	ori	$a3, $a4, 2048
	xor	$a3, $s1, $a3
	st.d	$a3, $sp, 472                   # 8-byte Folded Spill
	lu12i.w	$a3, -8
	ori	$a7, $a3, 2049
	xor	$a7, $s1, $a7
	st.d	$a7, $sp, 464                   # 8-byte Folded Spill
	lu12i.w	$t8, -4
	ori	$a7, $t8, 3073
	xor	$a7, $s1, $a7
	st.d	$a7, $sp, 456                   # 8-byte Folded Spill
	lu12i.w	$t5, 1
	ori	$a7, $t5, 1024
	xor	$a7, $s1, $a7
	st.d	$a7, $sp, 448                   # 8-byte Folded Spill
	lu12i.w	$t4, 3
	ori	$a7, $t4, 3072
	xor	$a7, $s1, $a7
	st.d	$a7, $sp, 440                   # 8-byte Folded Spill
	lu12i.w	$t3, -2
	ori	$a7, $t3, 1025
	xor	$a7, $s1, $a7
	st.d	$a7, $sp, 432                   # 8-byte Folded Spill
	lu12i.w	$t0, 6
	ori	$a7, $t0, 3072
	xor	$a7, $s1, $a7
	st.d	$a7, $sp, 424                   # 8-byte Folded Spill
	lu12i.w	$a7, -5
	ori	$t2, $a7, 1025
	xor	$t2, $s1, $t2
	st.d	$t2, $sp, 416                   # 8-byte Folded Spill
	lu12i.w	$t6, 12
	ori	$t2, $t6, 385
	xvreplgr2vr.h	$xr0, $t2
	lu12i.w	$t2, -7
	ori	$t7, $t2, 3073
	xor	$t7, $s1, $t7
	st.d	$t7, $sp, 408                   # 8-byte Folded Spill
	lu12i.w	$t7, 4
	ori	$fp, $t7, 1024
	xor	$fp, $s1, $fp
	st.d	$fp, $sp, 400                   # 8-byte Folded Spill
	ori	$fp, $t8, 1537
	xor	$fp, $s1, $fp
	st.d	$fp, $sp, 392                   # 8-byte Folded Spill
	ori	$fp, $t5, 3584
	xor	$fp, $s1, $fp
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	ori	$fp, $t1, 513
	xor	$fp, $s1, $fp
	st.d	$fp, $sp, 376                   # 8-byte Folded Spill
	ori	$fp, $t4, 1536
	xor	$fp, $s1, $fp
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	addi.d	$fp, $zero, -1535
	xor	$fp, $s1, $fp
	st.d	$fp, $sp, 360                   # 8-byte Folded Spill
	ori	$fp, $t3, 3585
	xor	$fp, $s1, $fp
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	ori	$fp, $a5, 512
	xor	$fp, $s1, $fp
	st.d	$fp, $sp, 344                   # 8-byte Folded Spill
	ori	$fp, $t0, 1536
	xor	$fp, $s1, $fp
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	lu12i.w	$s0, -6
	ori	$fp, $s0, 2561
	xor	$fp, $s1, $fp
	st.d	$fp, $sp, 328                   # 8-byte Folded Spill
	ori	$fp, $a7, 3585
	xor	$fp, $s1, $fp
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	ori	$fp, $a4, 512
	xor	$fp, $s1, $fp
	st.d	$fp, $sp, 312                   # 8-byte Folded Spill
	ori	$fp, $t2, 1537
	xor	$fp, $s1, $fp
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	lu12i.w	$fp, 5
	ori	$s2, $fp, 2560
	xor	$s2, $s1, $s2
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	ori	$s2, $t7, 3584
	xor	$s2, $s1, $s2
	st.d	$s2, $sp, 288                   # 8-byte Folded Spill
	ori	$s2, $a3, 513
	xor	$s2, $s1, $s2
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	ori	$s2, $t8, 769
	xor	$s2, $s1, $s2
	st.d	$s2, $sp, 272                   # 8-byte Folded Spill
	ori	$t8, $t8, 2305
	xor	$t8, $s1, $t8
	st.d	$t8, $sp, 264                   # 8-byte Folded Spill
	ori	$t8, $t5, 2816
	xor	$t8, $s1, $t8
	st.d	$t8, $sp, 256                   # 8-byte Folded Spill
	ori	$t8, $t1, 3329
	xor	$t8, $s1, $t8
	st.d	$t8, $sp, 248                   # 8-byte Folded Spill
	ori	$t1, $t1, 1793
	xor	$t1, $s1, $t1
	st.d	$t1, $sp, 240                   # 8-byte Folded Spill
	ori	$t1, $t5, 256
	xor	$t1, $s1, $t1
	st.d	$t1, $sp, 232                   # 8-byte Folded Spill
	ori	$t1, $t4, 768
	xor	$t1, $s1, $t1
	st.d	$t1, $sp, 224                   # 8-byte Folded Spill
	ori	$a6, $a6, 1281
	xor	$a6, $s1, $a6
	st.d	$a6, $sp, 216                   # 8-byte Folded Spill
	addi.d	$a6, $zero, -255
	xor	$a6, $s1, $a6
	st.d	$a6, $sp, 208                   # 8-byte Folded Spill
	ori	$a6, $t4, 2304
	xor	$a6, $s1, $a6
	st.d	$a6, $sp, 200                   # 8-byte Folded Spill
	ori	$a6, $t3, 2817
	xor	$a6, $s1, $a6
	st.d	$a6, $sp, 192                   # 8-byte Folded Spill
	ori	$a6, $a5, 3328
	xor	$a6, $s1, $a6
	st.d	$a6, $sp, 184                   # 8-byte Folded Spill
	ori	$a5, $a5, 1792
	xor	$a5, $s1, $a5
	st.d	$a5, $sp, 176                   # 8-byte Folded Spill
	ori	$a5, $t3, 257
	xor	$a5, $s1, $a5
	st.d	$a5, $sp, 168                   # 8-byte Folded Spill
	ori	$a5, $t0, 768
	xor	$a5, $s1, $a5
	st.d	$a5, $sp, 160                   # 8-byte Folded Spill
	ori	$a5, $s0, 1281
	xor	$a5, $s1, $a5
	st.d	$a5, $sp, 152                   # 8-byte Folded Spill
	ori	$s6, $s0, 1
	ori	$a5, $s0, 3841
	xor	$a5, $s1, $a5
	st.d	$a5, $sp, 144                   # 8-byte Folded Spill
	ori	$a5, $t0, 2304
	xor	$a5, $s1, $a5
	st.d	$a5, $sp, 136                   # 8-byte Folded Spill
	ori	$a5, $a7, 2817
	xor	$a5, $s1, $a5
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	ori	$a5, $a4, 3328
	xor	$a5, $s1, $a5
	st.d	$a5, $sp, 120                   # 8-byte Folded Spill
	ori	$a4, $a4, 1792
	xor	$a4, $s1, $a4
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	ori	$a4, $a7, 257
	xor	$a4, $s1, $a4
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	ori	$a4, $t2, 769
	xor	$a4, $s1, $a4
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	ori	$a4, $fp, 1280
	xor	$a4, $s1, $a4
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	xor	$a4, $s1, $fp
	st.d	$a4, $sp, 80                    # 8-byte Folded Spill
	ori	$a4, $fp, 3840
	xor	$a4, $s1, $a4
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	ori	$a4, $t2, 2305
	xor	$a4, $s1, $a4
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	ori	$a4, $t7, 2816
	xor	$a4, $s1, $a4
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	ori	$a4, $a3, 3329
	xor	$a4, $s1, $a4
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	ori	$a3, $a3, 1793
	xor	$a3, $s1, $a3
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	ori	$a3, $t7, 256
	xor	$a3, $s1, $a3
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	xor	$a3, $s1, $s6
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	xori	$a3, $s1, 2560
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	xori	$a3, $s1, 1280
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	xori	$s1, $s1, 3840
	xvrepli.d	$xr1, 64
	xvrepli.d	$xr2, 32
	lu12i.w	$a3, 10
	ori	$s2, $a3, 1
	ori	$s3, $zero, 7
	ori	$s4, $zero, 512
	ori	$s5, $zero, 1
	ori	$s7, $zero, 8
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_1:                                # %crc_table.exit
                                        #   in Loop: Header=BB0_2 Depth=1
	slli.d	$a3, $a2, 2
	pcalau12i	$a4, %pc_hi20(main.sample)
	addi.d	$a4, $a4, %pc_lo12(main.sample)
	ldx.w	$a6, $a4, $a3
	sub.d	$a3, $s3, $a2
	slli.d	$a3, $a3, 2
	ldx.w	$s8, $a4, $a3
	xor	$a7, $s8, $a6
	andi	$a3, $a7, 255
	slli.d	$a3, $a3, 1
	ldx.h	$a3, $a1, $a3
	srli.d	$a4, $a6, 8
	xor	$a4, $a3, $a4
	bstrpick.d	$a5, $s8, 31, 8
	xor	$a4, $a5, $a4
	andi	$a4, $a4, 255
	slli.d	$a4, $a4, 1
	ldx.hu	$t0, $a1, $a4
	srli.d	$a3, $a3, 8
	xor	$a3, $t0, $a3
	bstrpick.d	$a4, $s8, 31, 16
	xor	$a3, $a4, $a3
	andi	$a3, $a3, 255
	slli.d	$a3, $a3, 1
	ldx.hu	$t1, $a1, $a3
	srli.d	$t0, $t0, 8
	bstrpick.d	$a3, $s8, 31, 24
	andi	$t2, $t1, 255
	xor	$t0, $t2, $t0
	xor	$t0, $a3, $t0
	slli.d	$t0, $t0, 1
	ldx.hu	$t0, $a1, $t0
	srli.d	$t1, $t1, 8
	xor	$ra, $t0, $t1
	bstrpick.d	$a6, $a6, 15, 1
	andi	$a7, $a7, 1
	sltui	$a7, $a7, 1
	xor	$t0, $a6, $s6
	masknez	$t0, $t0, $a7
	maskeqz	$a6, $a6, $a7
	or	$a6, $a6, $t0
	srli.d	$a7, $s8, 1
	xor	$a7, $a6, $a7
	bstrpick.d	$a6, $a6, 15, 1
	andi	$a7, $a7, 1
	sltui	$a7, $a7, 1
	xor	$t0, $a6, $s6
	masknez	$t0, $t0, $a7
	maskeqz	$a6, $a6, $a7
	or	$a6, $a6, $t0
	srli.d	$a7, $s8, 2
	xor	$a7, $a6, $a7
	bstrpick.d	$a6, $a6, 15, 1
	andi	$a7, $a7, 1
	sltui	$a7, $a7, 1
	xor	$t0, $a6, $s6
	masknez	$t0, $t0, $a7
	maskeqz	$a6, $a6, $a7
	or	$a6, $a6, $t0
	srli.d	$a7, $s8, 3
	xor	$a7, $a6, $a7
	bstrpick.d	$a6, $a6, 15, 1
	andi	$a7, $a7, 1
	sltui	$a7, $a7, 1
	xor	$t0, $a6, $s6
	masknez	$t0, $t0, $a7
	maskeqz	$a6, $a6, $a7
	or	$a6, $a6, $t0
	srli.d	$a7, $s8, 4
	xor	$a7, $a6, $a7
	bstrpick.d	$a6, $a6, 15, 1
	andi	$a7, $a7, 1
	sltui	$a7, $a7, 1
	xor	$t0, $a6, $s6
	masknez	$t0, $t0, $a7
	maskeqz	$a6, $a6, $a7
	or	$a6, $a6, $t0
	srli.d	$a7, $s8, 5
	xor	$a7, $a6, $a7
	bstrpick.d	$a6, $a6, 15, 1
	andi	$a7, $a7, 1
	sltui	$a7, $a7, 1
	xor	$t0, $a6, $s6
	masknez	$t0, $t0, $a7
	maskeqz	$a6, $a6, $a7
	or	$a6, $a6, $t0
	srli.d	$a7, $s8, 6
	xor	$a7, $a6, $a7
	bstrpick.d	$a6, $a6, 15, 1
	andi	$a7, $a7, 1
	sltui	$a7, $a7, 1
	xor	$t0, $a6, $s6
	masknez	$t0, $t0, $a7
	maskeqz	$a6, $a6, $a7
	or	$a6, $a6, $t0
	srli.d	$a7, $s8, 7
	xor	$a7, $a6, $a7
	bstrpick.d	$a6, $a6, 15, 1
	andi	$a7, $a7, 1
	sltui	$a7, $a7, 1
	xor	$t0, $a6, $s6
	masknez	$t0, $t0, $a7
	maskeqz	$a6, $a6, $a7
	or	$a6, $a6, $t0
	xor	$a5, $a6, $a5
	bstrpick.d	$a6, $a6, 15, 1
	andi	$a5, $a5, 1
	sltui	$a5, $a5, 1
	xor	$a7, $a6, $s6
	masknez	$a7, $a7, $a5
	maskeqz	$a5, $a6, $a5
	or	$a5, $a5, $a7
	srli.d	$a6, $s8, 9
	xor	$a6, $a5, $a6
	bstrpick.d	$a5, $a5, 15, 1
	andi	$a6, $a6, 1
	sltui	$a6, $a6, 1
	xor	$a7, $a5, $s6
	masknez	$a7, $a7, $a6
	maskeqz	$a5, $a5, $a6
	or	$a5, $a5, $a7
	srli.d	$a6, $s8, 10
	xor	$a6, $a5, $a6
	bstrpick.d	$a5, $a5, 15, 1
	andi	$a6, $a6, 1
	sltui	$a6, $a6, 1
	xor	$a7, $a5, $s6
	masknez	$a7, $a7, $a6
	maskeqz	$a5, $a5, $a6
	or	$a5, $a5, $a7
	srli.d	$a6, $s8, 11
	xor	$a6, $a5, $a6
	bstrpick.d	$a5, $a5, 15, 1
	andi	$a6, $a6, 1
	sltui	$a6, $a6, 1
	xor	$a7, $a5, $s6
	masknez	$a7, $a7, $a6
	maskeqz	$a5, $a5, $a6
	or	$a5, $a5, $a7
	srli.d	$a6, $s8, 12
	xor	$a6, $a5, $a6
	bstrpick.d	$a5, $a5, 15, 1
	andi	$a6, $a6, 1
	sltui	$a6, $a6, 1
	xor	$a7, $a5, $s6
	masknez	$a7, $a7, $a6
	maskeqz	$a5, $a5, $a6
	or	$a5, $a5, $a7
	srli.d	$a6, $s8, 13
	xor	$a6, $a5, $a6
	bstrpick.d	$a5, $a5, 15, 1
	andi	$a6, $a6, 1
	sltui	$a6, $a6, 1
	xor	$a7, $a5, $s6
	masknez	$a7, $a7, $a6
	maskeqz	$a5, $a5, $a6
	or	$a5, $a5, $a7
	srli.d	$a6, $s8, 14
	xor	$a6, $a5, $a6
	bstrpick.d	$a5, $a5, 15, 1
	andi	$a6, $a6, 1
	sltui	$a6, $a6, 1
	xor	$a7, $a5, $s6
	masknez	$a7, $a7, $a6
	maskeqz	$a5, $a5, $a6
	or	$a5, $a5, $a7
	bstrpick.d	$a6, $s8, 15, 15
	bstrpick.d	$a7, $a5, 15, 1
	andi	$a5, $a5, 1
	xor	$a5, $a5, $a6
	sltui	$a5, $a5, 1
	xor	$a6, $a7, $s6
	masknez	$a6, $a6, $a5
	maskeqz	$a5, $a7, $a5
	or	$a5, $a5, $a6
	xor	$a4, $a5, $a4
	bstrpick.d	$a5, $a5, 15, 1
	andi	$a4, $a4, 1
	sltui	$a4, $a4, 1
	xor	$a6, $a5, $s6
	masknez	$a6, $a6, $a4
	maskeqz	$a4, $a5, $a4
	or	$a4, $a4, $a6
	srli.d	$a5, $s8, 17
	xor	$a5, $a4, $a5
	bstrpick.d	$a4, $a4, 15, 1
	andi	$a5, $a5, 1
	sltui	$a5, $a5, 1
	xor	$a6, $a4, $s6
	masknez	$a6, $a6, $a5
	maskeqz	$a4, $a4, $a5
	or	$a4, $a4, $a6
	srli.d	$a5, $s8, 18
	xor	$a5, $a4, $a5
	bstrpick.d	$a4, $a4, 15, 1
	andi	$a5, $a5, 1
	sltui	$a5, $a5, 1
	xor	$a6, $a4, $s6
	masknez	$a6, $a6, $a5
	maskeqz	$a4, $a4, $a5
	or	$a4, $a4, $a6
	srli.d	$a5, $s8, 19
	xor	$a5, $a4, $a5
	bstrpick.d	$a4, $a4, 15, 1
	andi	$a5, $a5, 1
	sltui	$a5, $a5, 1
	xor	$a6, $a4, $s6
	masknez	$a6, $a6, $a5
	maskeqz	$a4, $a4, $a5
	or	$a4, $a4, $a6
	srli.d	$a5, $s8, 20
	xor	$a5, $a4, $a5
	bstrpick.d	$a4, $a4, 15, 1
	andi	$a5, $a5, 1
	sltui	$a5, $a5, 1
	xor	$a6, $a4, $s6
	masknez	$a6, $a6, $a5
	maskeqz	$a4, $a4, $a5
	or	$a4, $a4, $a6
	srli.d	$a5, $s8, 21
	xor	$a5, $a4, $a5
	bstrpick.d	$a4, $a4, 15, 1
	andi	$a5, $a5, 1
	sltui	$a5, $a5, 1
	xor	$a6, $a4, $s6
	masknez	$a6, $a6, $a5
	maskeqz	$a4, $a4, $a5
	or	$a4, $a4, $a6
	srli.d	$a5, $s8, 22
	xor	$a5, $a4, $a5
	bstrpick.d	$a4, $a4, 15, 1
	andi	$a5, $a5, 1
	sltui	$a5, $a5, 1
	xor	$a6, $a4, $s6
	masknez	$a6, $a6, $a5
	maskeqz	$a4, $a4, $a5
	or	$a4, $a4, $a6
	srli.d	$a5, $s8, 23
	xor	$a5, $a4, $a5
	bstrpick.d	$a4, $a4, 15, 1
	andi	$a5, $a5, 1
	sltui	$a5, $a5, 1
	xor	$a6, $a4, $s6
	masknez	$a6, $a6, $a5
	maskeqz	$a4, $a4, $a5
	or	$a4, $a4, $a6
	xor	$a3, $a4, $a3
	bstrpick.d	$a4, $a4, 15, 1
	andi	$a3, $a3, 1
	sltui	$a3, $a3, 1
	xor	$a5, $a4, $s6
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
	srli.d	$a4, $s8, 25
	xor	$a4, $a3, $a4
	bstrpick.d	$a3, $a3, 15, 1
	andi	$a4, $a4, 1
	sltui	$a4, $a4, 1
	xor	$a5, $a3, $s6
	masknez	$a5, $a5, $a4
	maskeqz	$a3, $a3, $a4
	or	$a3, $a3, $a5
	srli.d	$a4, $s8, 26
	xor	$a4, $a3, $a4
	bstrpick.d	$a3, $a3, 15, 1
	andi	$a4, $a4, 1
	sltui	$a4, $a4, 1
	xor	$a5, $a3, $s6
	masknez	$a5, $a5, $a4
	maskeqz	$a3, $a3, $a4
	or	$a3, $a3, $a5
	srli.d	$a4, $s8, 27
	xor	$a4, $a3, $a4
	bstrpick.d	$a3, $a3, 15, 1
	andi	$a4, $a4, 1
	sltui	$a4, $a4, 1
	xor	$a5, $a3, $s6
	masknez	$a5, $a5, $a4
	maskeqz	$a3, $a3, $a4
	or	$a3, $a3, $a5
	srli.d	$a4, $s8, 28
	xor	$a4, $a3, $a4
	bstrpick.d	$a3, $a3, 15, 1
	andi	$a4, $a4, 1
	sltui	$a4, $a4, 1
	xor	$a5, $a3, $s6
	masknez	$a5, $a5, $a4
	maskeqz	$a3, $a3, $a4
	or	$a3, $a3, $a5
	srli.d	$a4, $s8, 29
	xor	$a4, $a3, $a4
	bstrpick.d	$a3, $a3, 15, 1
	andi	$a4, $a4, 1
	sltui	$a4, $a4, 1
	xor	$a5, $a3, $s6
	masknez	$a5, $a5, $a4
	maskeqz	$a3, $a3, $a4
	or	$a3, $a3, $a5
	srli.d	$a4, $s8, 30
	xor	$a4, $a3, $a4
	bstrpick.d	$a3, $a3, 15, 1
	andi	$a4, $a4, 1
	sltui	$a4, $a4, 1
	xor	$a5, $a3, $s6
	masknez	$a5, $a5, $a4
	maskeqz	$a3, $a3, $a4
	or	$a3, $a3, $a5
	bstrpick.d	$a4, $s8, 31, 31
	bstrpick.d	$a5, $a3, 15, 1
	andi	$a3, $a3, 1
	xor	$a3, $a3, $a4
	sltui	$a3, $a3, 1
	xor	$a4, $a5, $s2
	masknez	$a4, $a4, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $a4
	xor	$a3, $ra, $a3
	sltui	$a3, $a3, 1
	masknez	$a4, $s5, $a3
	maskeqz	$a0, $a0, $a3
	addi.d	$a2, $a2, 1
	or	$a0, $a0, $a4
	beq	$a2, $s7, .LBB0_7
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
                                        #     Child Loop BB0_6 Depth 2
	ld.hu	$a3, $a1, 510
	bnez	$a3, .LBB0_1
# %bb.3:                                # %vector.ph12
                                        #   in Loop: Header=BB0_2 Depth=1
	move	$s8, $zero
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	xvld	$xr3, $a3, %pc_lo12(.LCPI0_0)
	pcalau12i	$a3, %pc_hi20(.LCPI0_1)
	xvld	$xr4, $a3, %pc_lo12(.LCPI0_1)
	pcalau12i	$a3, %pc_hi20(.LCPI0_2)
	xvld	$xr5, $a3, %pc_lo12(.LCPI0_2)
	pcalau12i	$a3, %pc_hi20(.LCPI0_3)
	xvld	$xr6, $a3, %pc_lo12(.LCPI0_3)
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	st.h	$a3, $a1, 256
	ld.d	$a3, $sp, 496                   # 8-byte Folded Reload
	st.h	$a3, $a1, 128
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	st.h	$a3, $a1, 384
	ld.d	$a3, $sp, 488                   # 8-byte Folded Reload
	st.h	$a3, $a1, 64
	ld.d	$a3, $sp, 480                   # 8-byte Folded Reload
	st.h	$a3, $a1, 192
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	st.h	$a3, $a1, 320
	ld.d	$a3, $sp, 464                   # 8-byte Folded Reload
	st.h	$a3, $a1, 448
	ld.d	$a3, $sp, 456                   # 8-byte Folded Reload
	st.h	$a3, $a1, 32
	ld.d	$a3, $sp, 448                   # 8-byte Folded Reload
	st.h	$a3, $a1, 96
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	st.h	$a3, $a1, 160
	ld.d	$a3, $sp, 432                   # 8-byte Folded Reload
	st.h	$a3, $a1, 224
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	st.h	$a3, $a1, 288
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	st.h	$a3, $a1, 352
	ld.d	$a3, $sp, 408                   # 8-byte Folded Reload
	st.h	$a3, $a1, 416
	ld.d	$a3, $sp, 400                   # 8-byte Folded Reload
	st.h	$a3, $a1, 480
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	st.h	$a3, $a1, 16
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	st.h	$a3, $a1, 48
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	st.h	$a3, $a1, 80
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	st.h	$a3, $a1, 112
	ld.d	$a3, $sp, 368                   # 8-byte Folded Reload
	st.h	$a3, $a1, 144
	ld.d	$a3, $sp, 360                   # 8-byte Folded Reload
	st.h	$a3, $a1, 176
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	st.h	$a3, $a1, 208
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	st.h	$a3, $a1, 240
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	st.h	$a3, $a1, 272
	ld.d	$a3, $sp, 328                   # 8-byte Folded Reload
	st.h	$a3, $a1, 304
	ld.d	$a3, $sp, 320                   # 8-byte Folded Reload
	st.h	$a3, $a1, 336
	ld.d	$a3, $sp, 312                   # 8-byte Folded Reload
	st.h	$a3, $a1, 368
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	st.h	$a3, $a1, 400
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	st.h	$a3, $a1, 432
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	st.h	$a3, $a1, 464
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	st.h	$a3, $a1, 496
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	st.h	$a3, $a1, 8
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	st.h	$a3, $a1, 24
	st.h	$s1, $a1, 40
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	st.h	$a3, $a1, 56
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	st.h	$a3, $a1, 72
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	st.h	$a3, $a1, 88
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	st.h	$a3, $a1, 104
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	st.h	$a3, $a1, 120
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	st.h	$a3, $a1, 136
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	st.h	$a3, $a1, 152
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	st.h	$a3, $a1, 168
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	st.h	$a3, $a1, 184
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	st.h	$a3, $a1, 200
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	st.h	$a3, $a1, 216
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	st.h	$a3, $a1, 232
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	st.h	$a3, $a1, 248
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	st.h	$a3, $a1, 264
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	st.h	$a3, $a1, 280
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	st.h	$a3, $a1, 296
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	st.h	$a3, $a1, 312
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	st.h	$a3, $a1, 328
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	st.h	$a3, $a1, 344
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	st.h	$a3, $a1, 360
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.h	$a3, $a1, 376
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	st.h	$a3, $a1, 392
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.h	$a3, $a1, 408
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	st.h	$a3, $a1, 424
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	st.h	$a3, $a1, 440
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	st.h	$a3, $a1, 456
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	st.h	$a3, $a1, 472
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	st.h	$a3, $a1, 488
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	st.h	$a3, $a1, 504
	.p2align	4, , 16
.LBB0_4:                                # %vector.body13
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $a1, $s8
	ldx.h	$a4, $a1, $s8
	ld.h	$a5, $a3, 8
	ld.h	$ra, $a3, 16
	ld.h	$a6, $a3, 24
	ld.h	$a7, $a3, 32
	ld.h	$t0, $a3, 40
	ld.h	$t1, $a3, 48
	ld.h	$t2, $a3, 56
	ld.h	$t3, $a3, 64
	vinsgr2vr.h	$vr7, $a4, 0
	vinsgr2vr.h	$vr7, $a5, 1
	vinsgr2vr.h	$vr7, $ra, 2
	vinsgr2vr.h	$vr7, $a6, 3
	vinsgr2vr.h	$vr7, $a7, 4
	vinsgr2vr.h	$vr7, $t0, 5
	vinsgr2vr.h	$vr7, $t1, 6
	vinsgr2vr.h	$vr7, $t2, 7
	ld.h	$a4, $a3, 72
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $t3, 0
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a5, $a3, 80
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a4, 1
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a4, $a3, 88
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a5, 2
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a5, $a3, 96
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a4, 3
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a4, $a3, 104
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a5, 4
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a5, $a3, 112
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a4, 5
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a3, $a3, 120
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a5, 6
	xvpermi.q	$xr7, $xr8, 2
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a3, 7
	xvpermi.q	$xr7, $xr8, 2
	xvxor.v	$xr7, $xr7, $xr0
	xvbitseti.d	$xr8, $xr3, 1
	xvbitseti.d	$xr9, $xr4, 1
	xvbitseti.d	$xr10, $xr5, 1
	xvbitseti.d	$xr11, $xr6, 1
	xvpickve2gr.d	$a3, $xr11, 0
	alsl.d	$a3, $a3, $a1, 1
	xvpickve2gr.d	$a4, $xr11, 1
	alsl.d	$a4, $a4, $a1, 1
	xvpickve2gr.d	$a5, $xr11, 2
	alsl.d	$a5, $a5, $a1, 1
	xvpickve2gr.d	$a6, $xr11, 3
	alsl.d	$a6, $a6, $a1, 1
	xvpickve2gr.d	$a7, $xr10, 0
	alsl.d	$a7, $a7, $a1, 1
	xvpickve2gr.d	$t0, $xr10, 1
	alsl.d	$t0, $t0, $a1, 1
	xvpickve2gr.d	$t1, $xr10, 2
	alsl.d	$t1, $t1, $a1, 1
	xvpickve2gr.d	$t2, $xr10, 3
	alsl.d	$t2, $t2, $a1, 1
	xvpickve2gr.d	$t3, $xr9, 0
	alsl.d	$t3, $t3, $a1, 1
	xvpickve2gr.d	$ra, $xr9, 1
	alsl.d	$ra, $ra, $a1, 1
	xvpickve2gr.d	$t4, $xr9, 2
	alsl.d	$t4, $t4, $a1, 1
	xvpickve2gr.d	$t5, $xr9, 3
	alsl.d	$t5, $t5, $a1, 1
	xvpickve2gr.d	$t7, $xr8, 0
	alsl.d	$t7, $t7, $a1, 1
	xvpickve2gr.d	$t8, $xr8, 1
	alsl.d	$t8, $t8, $a1, 1
	xvpickve2gr.d	$fp, $xr8, 2
	alsl.d	$fp, $fp, $a1, 1
	xvpickve2gr.d	$s0, $xr8, 3
	alsl.d	$s0, $s0, $a1, 1
	xvstelm.h	$xr7, $a3, 0, 0
	xvstelm.h	$xr7, $a4, 0, 1
	xvstelm.h	$xr7, $a5, 0, 2
	xvstelm.h	$xr7, $a6, 0, 3
	xvstelm.h	$xr7, $a7, 0, 4
	xvstelm.h	$xr7, $t0, 0, 5
	xvstelm.h	$xr7, $t1, 0, 6
	xvstelm.h	$xr7, $t2, 0, 7
	xvstelm.h	$xr7, $t3, 0, 8
	xvstelm.h	$xr7, $ra, 0, 9
	xvstelm.h	$xr7, $t4, 0, 10
	xvstelm.h	$xr7, $t5, 0, 11
	xvstelm.h	$xr7, $t7, 0, 12
	xvstelm.h	$xr7, $t8, 0, 13
	xvstelm.h	$xr7, $fp, 0, 14
	xvstelm.h	$xr7, $s0, 0, 15
	xvadd.d	$xr6, $xr6, $xr1
	xvadd.d	$xr5, $xr5, $xr1
	xvadd.d	$xr4, $xr4, $xr1
	addi.d	$s8, $s8, 128
	xvadd.d	$xr3, $xr3, $xr1
	bne	$s8, $s4, .LBB0_4
# %bb.5:                                # %vector.body.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	pcalau12i	$a3, %pc_hi20(.LCPI0_4)
	xvld	$xr3, $a3, %pc_lo12(.LCPI0_4)
	pcalau12i	$a3, %pc_hi20(.LCPI0_5)
	xvld	$xr4, $a3, %pc_lo12(.LCPI0_5)
	pcalau12i	$a3, %pc_hi20(.LCPI0_6)
	xvld	$xr5, $a3, %pc_lo12(.LCPI0_6)
	pcalau12i	$a3, %pc_hi20(.LCPI0_7)
	xvld	$xr6, $a3, %pc_lo12(.LCPI0_7)
	move	$a3, $zero
	.p2align	4, , 16
.LBB0_6:                                # %vector.body
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a4, $a1, $a3
	ldx.h	$a5, $a1, $a3
	ld.h	$a6, $a4, 4
	ld.h	$a7, $a4, 8
	ld.h	$t0, $a4, 12
	ld.h	$t1, $a4, 16
	ld.h	$t2, $a4, 20
	ld.h	$t3, $a4, 24
	ld.h	$t4, $a4, 28
	ld.h	$t5, $a4, 32
	vinsgr2vr.h	$vr7, $a5, 0
	vinsgr2vr.h	$vr7, $a6, 1
	vinsgr2vr.h	$vr7, $a7, 2
	vinsgr2vr.h	$vr7, $t0, 3
	vinsgr2vr.h	$vr7, $t1, 4
	vinsgr2vr.h	$vr7, $t2, 5
	vinsgr2vr.h	$vr7, $t3, 6
	vinsgr2vr.h	$vr7, $t4, 7
	ld.h	$a5, $a4, 36
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $t5, 0
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a6, $a4, 40
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a5, 1
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a5, $a4, 44
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a6, 2
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a6, $a4, 48
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a5, 3
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a5, $a4, 52
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a6, 4
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a6, $a4, 56
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a5, 5
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a4, $a4, 60
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a6, 6
	xvpermi.q	$xr7, $xr8, 2
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a4, 7
	xvpermi.q	$xr7, $xr8, 2
	ori	$a4, $t6, 193
	xvreplgr2vr.h	$xr8, $a4
	xvxor.v	$xr7, $xr7, $xr8
	xvbitseti.d	$xr8, $xr3, 0
	xvbitseti.d	$xr9, $xr4, 0
	xvbitseti.d	$xr10, $xr5, 0
	xvbitseti.d	$xr11, $xr6, 0
	xvpickve2gr.d	$a4, $xr11, 0
	alsl.d	$a4, $a4, $a1, 1
	xvpickve2gr.d	$a5, $xr11, 1
	alsl.d	$a5, $a5, $a1, 1
	xvpickve2gr.d	$a6, $xr11, 2
	alsl.d	$a6, $a6, $a1, 1
	xvpickve2gr.d	$a7, $xr11, 3
	alsl.d	$a7, $a7, $a1, 1
	xvpickve2gr.d	$t0, $xr10, 0
	alsl.d	$t0, $t0, $a1, 1
	xvpickve2gr.d	$t1, $xr10, 1
	alsl.d	$t1, $t1, $a1, 1
	xvpickve2gr.d	$t2, $xr10, 2
	alsl.d	$t2, $t2, $a1, 1
	xvpickve2gr.d	$t3, $xr10, 3
	alsl.d	$t3, $t3, $a1, 1
	xvpickve2gr.d	$t4, $xr9, 0
	alsl.d	$t4, $t4, $a1, 1
	xvpickve2gr.d	$t5, $xr9, 1
	alsl.d	$t5, $t5, $a1, 1
	xvpickve2gr.d	$t7, $xr9, 2
	alsl.d	$t7, $t7, $a1, 1
	xvpickve2gr.d	$t8, $xr9, 3
	alsl.d	$t8, $t8, $a1, 1
	xvpickve2gr.d	$fp, $xr8, 0
	alsl.d	$fp, $fp, $a1, 1
	xvpickve2gr.d	$s0, $xr8, 1
	alsl.d	$s0, $s0, $a1, 1
	xvpickve2gr.d	$s8, $xr8, 2
	alsl.d	$s8, $s8, $a1, 1
	xvpickve2gr.d	$ra, $xr8, 3
	alsl.d	$ra, $ra, $a1, 1
	xvstelm.h	$xr7, $a4, 0, 0
	xvstelm.h	$xr7, $a5, 0, 1
	xvstelm.h	$xr7, $a6, 0, 2
	xvstelm.h	$xr7, $a7, 0, 3
	xvstelm.h	$xr7, $t0, 0, 4
	xvstelm.h	$xr7, $t1, 0, 5
	xvstelm.h	$xr7, $t2, 0, 6
	xvstelm.h	$xr7, $t3, 0, 7
	xvstelm.h	$xr7, $t4, 0, 8
	xvstelm.h	$xr7, $t5, 0, 9
	xvstelm.h	$xr7, $t7, 0, 10
	xvstelm.h	$xr7, $t8, 0, 11
	xvstelm.h	$xr7, $fp, 0, 12
	xvstelm.h	$xr7, $s0, 0, 13
	xvstelm.h	$xr7, $s8, 0, 14
	xvstelm.h	$xr7, $ra, 0, 15
	xvadd.d	$xr6, $xr6, $xr2
	xvadd.d	$xr5, $xr5, $xr2
	xvadd.d	$xr4, $xr4, $xr2
	addi.d	$a3, $a3, 64
	xvadd.d	$xr3, $xr3, $xr2
	bne	$a3, $s4, .LBB0_6
	b	.LBB0_1
.LBB0_7:
	ld.d	$s8, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 568                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 576                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 584                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 592
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
	.comm	CRCTable,512,2
	.section	".note.GNU-stack","",@progbits
	.addrsig
