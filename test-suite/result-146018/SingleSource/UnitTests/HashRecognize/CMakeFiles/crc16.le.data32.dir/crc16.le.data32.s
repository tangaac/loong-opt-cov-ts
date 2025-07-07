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
	addi.d	$sp, $sp, -640
	st.d	$ra, $sp, 632                   # 8-byte Folded Spill
	st.d	$fp, $sp, 624                   # 8-byte Folded Spill
	st.d	$s0, $sp, 616                   # 8-byte Folded Spill
	st.d	$s1, $sp, 608                   # 8-byte Folded Spill
	st.d	$s2, $sp, 600                   # 8-byte Folded Spill
	st.d	$s3, $sp, 592                   # 8-byte Folded Spill
	st.d	$s4, $sp, 584                   # 8-byte Folded Spill
	st.d	$s5, $sp, 576                   # 8-byte Folded Spill
	st.d	$s6, $sp, 568                   # 8-byte Folded Spill
	st.d	$s7, $sp, 560                   # 8-byte Folded Spill
	st.d	$s8, $sp, 552                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 640
	bstrins.d	$sp, $zero, 4, 0
	pcalau12i	$a0, %pc_hi20(CRCTable)
	addi.d	$a1, $a0, %pc_lo12(CRCTable)
	ld.h	$a3, $a1, 0
	move	$a2, $zero
	move	$a0, $zero
	lu12i.w	$t1, -1
	ori	$a4, $t1, 1
	xor	$a4, $a3, $a4
	st.d	$a4, $sp, 472                   # 8-byte Folded Spill
	lu12i.w	$t4, -3
	ori	$a4, $t4, 2049
	xor	$a4, $a3, $a4
	st.d	$a4, $sp, 464                   # 8-byte Folded Spill
	lu12i.w	$a7, 2
	ori	$a4, $a7, 2048
	xor	$a4, $a3, $a4
	st.d	$a4, $sp, 456                   # 8-byte Folded Spill
	lu12i.w	$a5, 7
	ori	$a4, $a5, 2048
	xor	$a4, $a3, $a4
	st.d	$a4, $sp, 448                   # 8-byte Folded Spill
	lu12i.w	$a4, -8
	ori	$a6, $a4, 2049
	xor	$a6, $a3, $a6
	st.d	$a6, $sp, 440                   # 8-byte Folded Spill
	lu12i.w	$s0, -4
	ori	$a6, $s0, 3073
	xor	$a6, $a3, $a6
	st.d	$a6, $sp, 432                   # 8-byte Folded Spill
	lu12i.w	$t8, 1
	ori	$a6, $t8, 1024
	xor	$a6, $a3, $a6
	st.d	$a6, $sp, 424                   # 8-byte Folded Spill
	lu12i.w	$t7, 3
	ori	$a6, $t7, 3072
	xor	$a6, $a3, $a6
	st.d	$a6, $sp, 416                   # 8-byte Folded Spill
	lu12i.w	$t6, -2
	ori	$a6, $t6, 1025
	xor	$a6, $a3, $a6
	st.d	$a6, $sp, 408                   # 8-byte Folded Spill
	lu12i.w	$t3, 6
	ori	$a6, $t3, 3072
	xor	$a6, $a3, $a6
	st.d	$a6, $sp, 400                   # 8-byte Folded Spill
	lu12i.w	$t2, -5
	lu12i.w	$t5, 12
	ori	$a6, $t5, 385
	xvreplgr2vr.h	$xr0, $a6
	ori	$a6, $t2, 1025
	xor	$a6, $a3, $a6
	st.d	$a6, $sp, 392                   # 8-byte Folded Spill
	lu12i.w	$t0, -7
	ori	$a6, $t0, 3073
	xor	$a6, $a3, $a6
	st.d	$a6, $sp, 384                   # 8-byte Folded Spill
	lu12i.w	$a6, 4
	ori	$s1, $a6, 1024
	xor	$s1, $a3, $s1
	st.d	$s1, $sp, 376                   # 8-byte Folded Spill
	ori	$s1, $s0, 1537
	xor	$s1, $a3, $s1
	st.d	$s1, $sp, 368                   # 8-byte Folded Spill
	ori	$s1, $t8, 3584
	xor	$s1, $a3, $s1
	st.d	$s1, $sp, 360                   # 8-byte Folded Spill
	ori	$s1, $t4, 513
	xor	$s1, $a3, $s1
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	ori	$s1, $t7, 1536
	xor	$s1, $a3, $s1
	st.d	$s1, $sp, 344                   # 8-byte Folded Spill
	addi.d	$s1, $zero, -1535
	xor	$s1, $a3, $s1
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	ori	$s1, $t6, 3585
	xor	$s1, $a3, $s1
	st.d	$s1, $sp, 328                   # 8-byte Folded Spill
	ori	$s1, $a7, 512
	xor	$s1, $a3, $s1
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	ori	$s1, $t3, 1536
	xor	$s1, $a3, $s1
	st.d	$s1, $sp, 312                   # 8-byte Folded Spill
	lu12i.w	$s2, -6
	ori	$s1, $s2, 2561
	xor	$s1, $a3, $s1
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	ori	$s1, $t2, 3585
	xor	$s1, $a3, $s1
	st.d	$s1, $sp, 296                   # 8-byte Folded Spill
	ori	$s1, $a5, 512
	xor	$s1, $a3, $s1
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	ori	$s1, $t0, 1537
	xor	$s1, $a3, $s1
	st.d	$s1, $sp, 280                   # 8-byte Folded Spill
	lu12i.w	$s1, 5
	ori	$s3, $s1, 2560
	xor	$s3, $a3, $s3
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	ori	$s3, $a6, 3584
	xor	$s3, $a3, $s3
	st.d	$s3, $sp, 264                   # 8-byte Folded Spill
	ori	$s3, $a4, 513
	xor	$s3, $a3, $s3
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	ori	$s3, $s0, 769
	xor	$s3, $a3, $s3
	st.d	$s3, $sp, 248                   # 8-byte Folded Spill
	ori	$s0, $s0, 2305
	xor	$s0, $a3, $s0
	st.d	$s0, $sp, 240                   # 8-byte Folded Spill
	ori	$s0, $t8, 2816
	xor	$s0, $a3, $s0
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	ori	$s0, $t4, 3329
	xor	$s0, $a3, $s0
	st.d	$s0, $sp, 224                   # 8-byte Folded Spill
	ori	$t4, $t4, 1793
	xor	$t4, $a3, $t4
	st.d	$t4, $sp, 216                   # 8-byte Folded Spill
	ori	$t4, $t8, 256
	xor	$t4, $a3, $t4
	st.d	$t4, $sp, 208                   # 8-byte Folded Spill
	ori	$t4, $t7, 768
	xor	$t4, $a3, $t4
	st.d	$t4, $sp, 200                   # 8-byte Folded Spill
	ori	$t1, $t1, 1281
	xor	$t1, $a3, $t1
	st.d	$t1, $sp, 192                   # 8-byte Folded Spill
	addi.d	$t1, $zero, -255
	xor	$t1, $a3, $t1
	st.d	$t1, $sp, 184                   # 8-byte Folded Spill
	ori	$t1, $t7, 2304
	xor	$t1, $a3, $t1
	st.d	$t1, $sp, 176                   # 8-byte Folded Spill
	ori	$t1, $t6, 2817
	xor	$t1, $a3, $t1
	st.d	$t1, $sp, 168                   # 8-byte Folded Spill
	ori	$t1, $a7, 3328
	xor	$t1, $a3, $t1
	st.d	$t1, $sp, 160                   # 8-byte Folded Spill
	ori	$a7, $a7, 1792
	xor	$a7, $a3, $a7
	st.d	$a7, $sp, 152                   # 8-byte Folded Spill
	ori	$a7, $t6, 257
	xor	$a7, $a3, $a7
	st.d	$a7, $sp, 144                   # 8-byte Folded Spill
	ori	$a7, $t3, 768
	xor	$a7, $a3, $a7
	st.d	$a7, $sp, 136                   # 8-byte Folded Spill
	ori	$a7, $s2, 1281
	xor	$a7, $a3, $a7
	st.d	$a7, $sp, 128                   # 8-byte Folded Spill
	ori	$s8, $s2, 1
	ori	$a7, $s2, 3841
	xor	$a7, $a3, $a7
	st.d	$a7, $sp, 120                   # 8-byte Folded Spill
	ori	$a7, $t3, 2304
	xor	$a7, $a3, $a7
	st.d	$a7, $sp, 112                   # 8-byte Folded Spill
	ori	$a7, $t2, 2817
	xor	$a7, $a3, $a7
	st.d	$a7, $sp, 104                   # 8-byte Folded Spill
	ori	$a7, $a5, 3328
	xor	$a7, $a3, $a7
	st.d	$a7, $sp, 96                    # 8-byte Folded Spill
	ori	$a5, $a5, 1792
	xor	$a5, $a3, $a5
	st.d	$a5, $sp, 88                    # 8-byte Folded Spill
	ori	$a5, $t2, 257
	xor	$a5, $a3, $a5
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	ori	$a5, $t0, 769
	xor	$a5, $a3, $a5
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	ori	$a5, $s1, 1280
	xor	$a5, $a3, $a5
	st.d	$a5, $sp, 64                    # 8-byte Folded Spill
	xor	$a5, $a3, $s1
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	ori	$a5, $s1, 3840
	xor	$a5, $a3, $a5
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	ori	$a5, $t0, 2305
	xor	$a5, $a3, $a5
	st.d	$a5, $sp, 40                    # 8-byte Folded Spill
	ori	$a5, $a6, 2816
	xor	$a5, $a3, $a5
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	ori	$a5, $a4, 3329
	xor	$a5, $a3, $a5
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	ori	$a4, $a4, 1793
	xor	$a4, $a3, $a4
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	ori	$a4, $a6, 256
	xor	$a4, $a3, $a4
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	xor	$s1, $a3, $s8
	xori	$s2, $a3, 2560
	xori	$s3, $a3, 1280
	xori	$s4, $a3, 3840
	xvrepli.d	$xr1, 64
	xvrepli.d	$xr2, 32
	lu12i.w	$a3, 10
	ori	$s5, $a3, 1
	ori	$s6, $zero, 7
	ori	$s7, $zero, 512
	ori	$ra, $zero, 1
	ori	$a3, $zero, 8
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_1:                                # %crc_table.exit
                                        #   in Loop: Header=BB0_2 Depth=1
	xor	$t2, $a4, $a5
	andi	$a6, $t2, 255
	slli.d	$a6, $a6, 1
	ldx.h	$a6, $a1, $a6
	srli.d	$a7, $a5, 8
	xor	$a7, $a6, $a7
	bstrpick.d	$t1, $a4, 31, 8
	xor	$a7, $t1, $a7
	andi	$a7, $a7, 255
	slli.d	$a7, $a7, 1
	ldx.hu	$a7, $a1, $a7
	srli.d	$a6, $a6, 8
	xor	$a6, $a7, $a6
	bstrpick.d	$t0, $a4, 31, 16
	xor	$a6, $t0, $a6
	andi	$a6, $a6, 255
	slli.d	$a6, $a6, 1
	ldx.hu	$a6, $a1, $a6
	srli.d	$t3, $a7, 8
	bstrpick.d	$a7, $a4, 31, 24
	andi	$t4, $a6, 255
	xor	$t3, $t4, $t3
	xor	$t3, $a7, $t3
	slli.d	$t3, $t3, 1
	ldx.hu	$t3, $a1, $t3
	srli.d	$a6, $a6, 8
	xor	$a6, $t3, $a6
	bstrpick.d	$a5, $a5, 15, 1
	andi	$t2, $t2, 1
	sltui	$t2, $t2, 1
	xor	$t3, $a5, $s8
	masknez	$t3, $t3, $t2
	maskeqz	$a5, $a5, $t2
	or	$a5, $a5, $t3
	srli.d	$t2, $a4, 1
	xor	$t2, $a5, $t2
	bstrpick.d	$a5, $a5, 15, 1
	andi	$t2, $t2, 1
	sltui	$t2, $t2, 1
	xor	$t3, $a5, $s8
	masknez	$t3, $t3, $t2
	maskeqz	$a5, $a5, $t2
	or	$a5, $a5, $t3
	srli.d	$t2, $a4, 2
	xor	$t2, $a5, $t2
	bstrpick.d	$a5, $a5, 15, 1
	andi	$t2, $t2, 1
	sltui	$t2, $t2, 1
	xor	$t3, $a5, $s8
	masknez	$t3, $t3, $t2
	maskeqz	$a5, $a5, $t2
	or	$a5, $a5, $t3
	srli.d	$t2, $a4, 3
	xor	$t2, $a5, $t2
	bstrpick.d	$a5, $a5, 15, 1
	andi	$t2, $t2, 1
	sltui	$t2, $t2, 1
	xor	$t3, $a5, $s8
	masknez	$t3, $t3, $t2
	maskeqz	$a5, $a5, $t2
	or	$a5, $a5, $t3
	srli.d	$t2, $a4, 4
	xor	$t2, $a5, $t2
	bstrpick.d	$a5, $a5, 15, 1
	andi	$t2, $t2, 1
	sltui	$t2, $t2, 1
	xor	$t3, $a5, $s8
	masknez	$t3, $t3, $t2
	maskeqz	$a5, $a5, $t2
	or	$a5, $a5, $t3
	srli.d	$t2, $a4, 5
	xor	$t2, $a5, $t2
	bstrpick.d	$a5, $a5, 15, 1
	andi	$t2, $t2, 1
	sltui	$t2, $t2, 1
	xor	$t3, $a5, $s8
	masknez	$t3, $t3, $t2
	maskeqz	$a5, $a5, $t2
	or	$a5, $a5, $t3
	srli.d	$t2, $a4, 6
	xor	$t2, $a5, $t2
	bstrpick.d	$a5, $a5, 15, 1
	andi	$t2, $t2, 1
	sltui	$t2, $t2, 1
	xor	$t3, $a5, $s8
	masknez	$t3, $t3, $t2
	maskeqz	$a5, $a5, $t2
	or	$a5, $a5, $t3
	srli.d	$t2, $a4, 7
	xor	$t2, $a5, $t2
	bstrpick.d	$a5, $a5, 15, 1
	andi	$t2, $t2, 1
	sltui	$t2, $t2, 1
	xor	$t3, $a5, $s8
	masknez	$t3, $t3, $t2
	maskeqz	$a5, $a5, $t2
	or	$a5, $a5, $t3
	xor	$t1, $a5, $t1
	bstrpick.d	$a5, $a5, 15, 1
	andi	$t1, $t1, 1
	sltui	$t1, $t1, 1
	xor	$t2, $a5, $s8
	masknez	$t2, $t2, $t1
	maskeqz	$a5, $a5, $t1
	or	$a5, $a5, $t2
	srli.d	$t1, $a4, 9
	xor	$t1, $a5, $t1
	bstrpick.d	$a5, $a5, 15, 1
	andi	$t1, $t1, 1
	sltui	$t1, $t1, 1
	xor	$t2, $a5, $s8
	masknez	$t2, $t2, $t1
	maskeqz	$a5, $a5, $t1
	or	$a5, $a5, $t2
	srli.d	$t1, $a4, 10
	xor	$t1, $a5, $t1
	bstrpick.d	$a5, $a5, 15, 1
	andi	$t1, $t1, 1
	sltui	$t1, $t1, 1
	xor	$t2, $a5, $s8
	masknez	$t2, $t2, $t1
	maskeqz	$a5, $a5, $t1
	or	$a5, $a5, $t2
	srli.d	$t1, $a4, 11
	xor	$t1, $a5, $t1
	bstrpick.d	$a5, $a5, 15, 1
	andi	$t1, $t1, 1
	sltui	$t1, $t1, 1
	xor	$t2, $a5, $s8
	masknez	$t2, $t2, $t1
	maskeqz	$a5, $a5, $t1
	or	$a5, $a5, $t2
	srli.d	$t1, $a4, 12
	xor	$t1, $a5, $t1
	bstrpick.d	$a5, $a5, 15, 1
	andi	$t1, $t1, 1
	sltui	$t1, $t1, 1
	xor	$t2, $a5, $s8
	masknez	$t2, $t2, $t1
	maskeqz	$a5, $a5, $t1
	or	$a5, $a5, $t2
	srli.d	$t1, $a4, 13
	xor	$t1, $a5, $t1
	bstrpick.d	$a5, $a5, 15, 1
	andi	$t1, $t1, 1
	sltui	$t1, $t1, 1
	xor	$t2, $a5, $s8
	masknez	$t2, $t2, $t1
	maskeqz	$a5, $a5, $t1
	or	$a5, $a5, $t2
	srli.d	$t1, $a4, 14
	xor	$t1, $a5, $t1
	bstrpick.d	$a5, $a5, 15, 1
	andi	$t1, $t1, 1
	sltui	$t1, $t1, 1
	xor	$t2, $a5, $s8
	masknez	$t2, $t2, $t1
	maskeqz	$a5, $a5, $t1
	or	$a5, $a5, $t2
	bstrpick.d	$t1, $a4, 15, 15
	bstrpick.d	$t2, $a5, 15, 1
	andi	$a5, $a5, 1
	xor	$a5, $a5, $t1
	sltui	$a5, $a5, 1
	xor	$t1, $t2, $s8
	masknez	$t1, $t1, $a5
	maskeqz	$a5, $t2, $a5
	or	$a5, $a5, $t1
	xor	$t0, $a5, $t0
	bstrpick.d	$a5, $a5, 15, 1
	andi	$t0, $t0, 1
	sltui	$t0, $t0, 1
	xor	$t1, $a5, $s8
	masknez	$t1, $t1, $t0
	maskeqz	$a5, $a5, $t0
	or	$a5, $a5, $t1
	srli.d	$t0, $a4, 17
	xor	$t0, $a5, $t0
	bstrpick.d	$a5, $a5, 15, 1
	andi	$t0, $t0, 1
	sltui	$t0, $t0, 1
	xor	$t1, $a5, $s8
	masknez	$t1, $t1, $t0
	maskeqz	$a5, $a5, $t0
	or	$a5, $a5, $t1
	srli.d	$t0, $a4, 18
	xor	$t0, $a5, $t0
	bstrpick.d	$a5, $a5, 15, 1
	andi	$t0, $t0, 1
	sltui	$t0, $t0, 1
	xor	$t1, $a5, $s8
	masknez	$t1, $t1, $t0
	maskeqz	$a5, $a5, $t0
	or	$a5, $a5, $t1
	srli.d	$t0, $a4, 19
	xor	$t0, $a5, $t0
	bstrpick.d	$a5, $a5, 15, 1
	andi	$t0, $t0, 1
	sltui	$t0, $t0, 1
	xor	$t1, $a5, $s8
	masknez	$t1, $t1, $t0
	maskeqz	$a5, $a5, $t0
	or	$a5, $a5, $t1
	srli.d	$t0, $a4, 20
	xor	$t0, $a5, $t0
	bstrpick.d	$a5, $a5, 15, 1
	andi	$t0, $t0, 1
	sltui	$t0, $t0, 1
	xor	$t1, $a5, $s8
	masknez	$t1, $t1, $t0
	maskeqz	$a5, $a5, $t0
	or	$a5, $a5, $t1
	srli.d	$t0, $a4, 21
	xor	$t0, $a5, $t0
	bstrpick.d	$a5, $a5, 15, 1
	andi	$t0, $t0, 1
	sltui	$t0, $t0, 1
	xor	$t1, $a5, $s8
	masknez	$t1, $t1, $t0
	maskeqz	$a5, $a5, $t0
	or	$a5, $a5, $t1
	srli.d	$t0, $a4, 22
	xor	$t0, $a5, $t0
	bstrpick.d	$a5, $a5, 15, 1
	andi	$t0, $t0, 1
	sltui	$t0, $t0, 1
	xor	$t1, $a5, $s8
	masknez	$t1, $t1, $t0
	maskeqz	$a5, $a5, $t0
	or	$a5, $a5, $t1
	srli.d	$t0, $a4, 23
	xor	$t0, $a5, $t0
	bstrpick.d	$a5, $a5, 15, 1
	andi	$t0, $t0, 1
	sltui	$t0, $t0, 1
	xor	$t1, $a5, $s8
	masknez	$t1, $t1, $t0
	maskeqz	$a5, $a5, $t0
	or	$a5, $a5, $t1
	xor	$a7, $a5, $a7
	bstrpick.d	$a5, $a5, 15, 1
	andi	$a7, $a7, 1
	sltui	$a7, $a7, 1
	xor	$t0, $a5, $s8
	masknez	$t0, $t0, $a7
	maskeqz	$a5, $a5, $a7
	or	$a5, $a5, $t0
	srli.d	$a7, $a4, 25
	xor	$a7, $a5, $a7
	bstrpick.d	$a5, $a5, 15, 1
	andi	$a7, $a7, 1
	sltui	$a7, $a7, 1
	xor	$t0, $a5, $s8
	masknez	$t0, $t0, $a7
	maskeqz	$a5, $a5, $a7
	or	$a5, $a5, $t0
	srli.d	$a7, $a4, 26
	xor	$a7, $a5, $a7
	bstrpick.d	$a5, $a5, 15, 1
	andi	$a7, $a7, 1
	sltui	$a7, $a7, 1
	xor	$t0, $a5, $s8
	masknez	$t0, $t0, $a7
	maskeqz	$a5, $a5, $a7
	or	$a5, $a5, $t0
	srli.d	$a7, $a4, 27
	xor	$a7, $a5, $a7
	bstrpick.d	$a5, $a5, 15, 1
	andi	$a7, $a7, 1
	sltui	$a7, $a7, 1
	xor	$t0, $a5, $s8
	masknez	$t0, $t0, $a7
	maskeqz	$a5, $a5, $a7
	or	$a5, $a5, $t0
	srli.d	$a7, $a4, 28
	xor	$a7, $a5, $a7
	bstrpick.d	$a5, $a5, 15, 1
	andi	$a7, $a7, 1
	sltui	$a7, $a7, 1
	xor	$t0, $a5, $s8
	masknez	$t0, $t0, $a7
	maskeqz	$a5, $a5, $a7
	or	$a5, $a5, $t0
	srli.d	$a7, $a4, 29
	xor	$a7, $a5, $a7
	bstrpick.d	$a5, $a5, 15, 1
	andi	$a7, $a7, 1
	sltui	$a7, $a7, 1
	xor	$t0, $a5, $s8
	masknez	$t0, $t0, $a7
	maskeqz	$a5, $a5, $a7
	or	$a5, $a5, $t0
	srli.d	$a7, $a4, 30
	xor	$a7, $a5, $a7
	bstrpick.d	$a5, $a5, 15, 1
	andi	$a7, $a7, 1
	sltui	$a7, $a7, 1
	xor	$t0, $a5, $s8
	masknez	$t0, $t0, $a7
	maskeqz	$a5, $a5, $a7
	or	$a5, $a5, $t0
	bstrpick.d	$a4, $a4, 31, 31
	bstrpick.d	$a7, $a5, 15, 1
	andi	$a5, $a5, 1
	xor	$a4, $a5, $a4
	sltui	$a4, $a4, 1
	xor	$a5, $a7, $s5
	masknez	$a5, $a5, $a4
	maskeqz	$a4, $a7, $a4
	or	$a4, $a4, $a5
	xor	$a4, $a6, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $ra, $a4
	maskeqz	$a0, $a0, $a4
	addi.d	$a2, $a2, 1
	or	$a0, $a0, $a5
	beq	$a2, $a3, .LBB0_7
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
                                        #     Child Loop BB0_6 Depth 2
	slli.d	$a4, $a2, 2
	pcalau12i	$a5, %pc_hi20(main.sample)
	addi.d	$a6, $a5, %pc_lo12(main.sample)
	ldx.w	$a5, $a6, $a4
	sub.d	$a4, $s6, $a2
	slli.d	$a4, $a4, 2
	ld.hu	$a7, $a1, 510
	ldx.w	$a4, $a6, $a4
	bnez	$a7, .LBB0_1
# %bb.3:                                # %vector.ph12
                                        #   in Loop: Header=BB0_2 Depth=1
	move	$a6, $zero
	pcalau12i	$a7, %pc_hi20(.LCPI0_0)
	xvld	$xr3, $a7, %pc_lo12(.LCPI0_0)
	pcalau12i	$a7, %pc_hi20(.LCPI0_1)
	xvld	$xr4, $a7, %pc_lo12(.LCPI0_1)
	pcalau12i	$a7, %pc_hi20(.LCPI0_2)
	xvld	$xr5, $a7, %pc_lo12(.LCPI0_2)
	pcalau12i	$a7, %pc_hi20(.LCPI0_3)
	xvld	$xr6, $a7, %pc_lo12(.LCPI0_3)
	st.h	$s1, $a1, 256
	ld.d	$a7, $sp, 472                   # 8-byte Folded Reload
	st.h	$a7, $a1, 128
	ld.d	$a7, $sp, 56                    # 8-byte Folded Reload
	st.h	$a7, $a1, 384
	ld.d	$a7, $sp, 464                   # 8-byte Folded Reload
	st.h	$a7, $a1, 64
	ld.d	$a7, $sp, 456                   # 8-byte Folded Reload
	st.h	$a7, $a1, 192
	ld.d	$a7, $sp, 448                   # 8-byte Folded Reload
	st.h	$a7, $a1, 320
	ld.d	$a7, $sp, 440                   # 8-byte Folded Reload
	st.h	$a7, $a1, 448
	ld.d	$a7, $sp, 432                   # 8-byte Folded Reload
	st.h	$a7, $a1, 32
	ld.d	$a7, $sp, 424                   # 8-byte Folded Reload
	st.h	$a7, $a1, 96
	ld.d	$a7, $sp, 416                   # 8-byte Folded Reload
	st.h	$a7, $a1, 160
	ld.d	$a7, $sp, 408                   # 8-byte Folded Reload
	st.h	$a7, $a1, 224
	ld.d	$a7, $sp, 400                   # 8-byte Folded Reload
	st.h	$a7, $a1, 288
	ld.d	$a7, $sp, 392                   # 8-byte Folded Reload
	st.h	$a7, $a1, 352
	ld.d	$a7, $sp, 384                   # 8-byte Folded Reload
	st.h	$a7, $a1, 416
	ld.d	$a7, $sp, 376                   # 8-byte Folded Reload
	st.h	$a7, $a1, 480
	ld.d	$a7, $sp, 368                   # 8-byte Folded Reload
	st.h	$a7, $a1, 16
	st.h	$s2, $a1, 48
	ld.d	$a7, $sp, 360                   # 8-byte Folded Reload
	st.h	$a7, $a1, 80
	ld.d	$a7, $sp, 352                   # 8-byte Folded Reload
	st.h	$a7, $a1, 112
	ld.d	$a7, $sp, 344                   # 8-byte Folded Reload
	st.h	$a7, $a1, 144
	ld.d	$a7, $sp, 336                   # 8-byte Folded Reload
	st.h	$a7, $a1, 176
	ld.d	$a7, $sp, 328                   # 8-byte Folded Reload
	st.h	$a7, $a1, 208
	ld.d	$a7, $sp, 320                   # 8-byte Folded Reload
	st.h	$a7, $a1, 240
	ld.d	$a7, $sp, 312                   # 8-byte Folded Reload
	st.h	$a7, $a1, 272
	ld.d	$a7, $sp, 304                   # 8-byte Folded Reload
	st.h	$a7, $a1, 304
	ld.d	$a7, $sp, 296                   # 8-byte Folded Reload
	st.h	$a7, $a1, 336
	ld.d	$a7, $sp, 288                   # 8-byte Folded Reload
	st.h	$a7, $a1, 368
	ld.d	$a7, $sp, 280                   # 8-byte Folded Reload
	st.h	$a7, $a1, 400
	ld.d	$a7, $sp, 272                   # 8-byte Folded Reload
	st.h	$a7, $a1, 432
	ld.d	$a7, $sp, 264                   # 8-byte Folded Reload
	st.h	$a7, $a1, 464
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	st.h	$a7, $a1, 496
	ld.d	$a7, $sp, 248                   # 8-byte Folded Reload
	st.h	$a7, $a1, 8
	st.h	$s3, $a1, 24
	st.h	$s4, $a1, 40
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	st.h	$a7, $a1, 56
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	st.h	$a7, $a1, 72
	ld.d	$a7, $sp, 224                   # 8-byte Folded Reload
	st.h	$a7, $a1, 88
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	st.h	$a7, $a1, 104
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	st.h	$a7, $a1, 120
	ld.d	$a7, $sp, 200                   # 8-byte Folded Reload
	st.h	$a7, $a1, 136
	ld.d	$a7, $sp, 192                   # 8-byte Folded Reload
	st.h	$a7, $a1, 152
	ld.d	$a7, $sp, 184                   # 8-byte Folded Reload
	st.h	$a7, $a1, 168
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	st.h	$a7, $a1, 184
	ld.d	$a7, $sp, 168                   # 8-byte Folded Reload
	st.h	$a7, $a1, 200
	ld.d	$a7, $sp, 160                   # 8-byte Folded Reload
	st.h	$a7, $a1, 216
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
	st.h	$a7, $a1, 232
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
	st.h	$a7, $a1, 248
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	st.h	$a7, $a1, 264
	ld.d	$a7, $sp, 128                   # 8-byte Folded Reload
	st.h	$a7, $a1, 280
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	st.h	$a7, $a1, 296
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	st.h	$a7, $a1, 312
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	st.h	$a7, $a1, 328
	ld.d	$a7, $sp, 96                    # 8-byte Folded Reload
	st.h	$a7, $a1, 344
	ld.d	$a7, $sp, 88                    # 8-byte Folded Reload
	st.h	$a7, $a1, 360
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	st.h	$a7, $a1, 376
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	st.h	$a7, $a1, 392
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	st.h	$a7, $a1, 408
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	st.h	$a7, $a1, 424
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	st.h	$a7, $a1, 440
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	st.h	$a7, $a1, 456
	ld.d	$a7, $sp, 24                    # 8-byte Folded Reload
	st.h	$a7, $a1, 472
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	st.h	$a7, $a1, 488
	ld.d	$a7, $sp, 8                     # 8-byte Folded Reload
	st.h	$a7, $a1, 504
	.p2align	4, , 16
.LBB0_4:                                # %vector.body13
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a7, $a1, $a6
	ldx.h	$t0, $a1, $a6
	ld.h	$t1, $a7, 8
	ld.h	$t2, $a7, 16
	ld.h	$t3, $a7, 24
	ld.h	$t4, $a7, 32
	ld.h	$t6, $a7, 40
	ld.h	$t7, $a7, 48
	ld.h	$t8, $a7, 56
	ld.h	$s0, $a7, 64
	vinsgr2vr.h	$vr7, $t0, 0
	vinsgr2vr.h	$vr7, $t1, 1
	vinsgr2vr.h	$vr7, $t2, 2
	vinsgr2vr.h	$vr7, $t3, 3
	vinsgr2vr.h	$vr7, $t4, 4
	vinsgr2vr.h	$vr7, $t6, 5
	vinsgr2vr.h	$vr7, $t7, 6
	vinsgr2vr.h	$vr7, $t8, 7
	ld.h	$t0, $a7, 72
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $s0, 0
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$t1, $a7, 80
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $t0, 1
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$t0, $a7, 88
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $t1, 2
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$t1, $a7, 96
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $t0, 3
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$t0, $a7, 104
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $t1, 4
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$t1, $a7, 112
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $t0, 5
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a7, $a7, 120
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $t1, 6
	xvpermi.q	$xr7, $xr8, 2
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a7, 7
	xvpermi.q	$xr7, $xr8, 2
	xvxor.v	$xr7, $xr7, $xr0
	xvbitseti.d	$xr8, $xr5, 1
	xvbitseti.d	$xr9, $xr6, 1
	xvpickve2gr.d	$a7, $xr9, 0
	alsl.d	$a7, $a7, $a1, 1
	xvpickve2gr.d	$t0, $xr9, 1
	alsl.d	$t0, $t0, $a1, 1
	xvpickve2gr.d	$t1, $xr9, 2
	alsl.d	$t1, $t1, $a1, 1
	xvpickve2gr.d	$t2, $xr9, 3
	alsl.d	$t2, $t2, $a1, 1
	xvpickve2gr.d	$t3, $xr8, 0
	alsl.d	$t3, $t3, $a1, 1
	xvpickve2gr.d	$t4, $xr8, 1
	alsl.d	$t4, $t4, $a1, 1
	xvpickve2gr.d	$t6, $xr8, 2
	alsl.d	$t6, $t6, $a1, 1
	xvpickve2gr.d	$t7, $xr8, 3
	alsl.d	$t7, $t7, $a1, 1
	xvstelm.h	$xr7, $a7, 0, 0
	xvstelm.h	$xr7, $t0, 0, 1
	xvstelm.h	$xr7, $t1, 0, 2
	xvstelm.h	$xr7, $t2, 0, 3
	xvstelm.h	$xr7, $t3, 0, 4
	xvstelm.h	$xr7, $t4, 0, 5
	xvstelm.h	$xr7, $t6, 0, 6
	xvstelm.h	$xr7, $t7, 0, 7
	xvst	$xr7, $sp, 512
	ld.h	$a7, $sp, 528
	xvbitseti.d	$xr7, $xr4, 1
	xvpickve2gr.d	$t0, $xr7, 0
	slli.d	$t0, $t0, 1
	stx.h	$a7, $a1, $t0
	ld.h	$a7, $sp, 530
	xvpickve2gr.d	$t0, $xr7, 1
	slli.d	$t0, $t0, 1
	stx.h	$a7, $a1, $t0
	ld.h	$a7, $sp, 532
	xvpickve2gr.d	$t0, $xr7, 2
	slli.d	$t0, $t0, 1
	stx.h	$a7, $a1, $t0
	ld.h	$a7, $sp, 534
	xvpickve2gr.d	$t0, $xr7, 3
	slli.d	$t0, $t0, 1
	stx.h	$a7, $a1, $t0
	ld.h	$a7, $sp, 536
	xvbitseti.d	$xr7, $xr3, 1
	xvpickve2gr.d	$t0, $xr7, 0
	slli.d	$t0, $t0, 1
	stx.h	$a7, $a1, $t0
	ld.h	$a7, $sp, 538
	xvpickve2gr.d	$t0, $xr7, 1
	slli.d	$t0, $t0, 1
	stx.h	$a7, $a1, $t0
	ld.h	$a7, $sp, 540
	xvpickve2gr.d	$t0, $xr7, 2
	slli.d	$t0, $t0, 1
	stx.h	$a7, $a1, $t0
	ld.h	$a7, $sp, 542
	xvpickve2gr.d	$t0, $xr7, 3
	slli.d	$t0, $t0, 1
	stx.h	$a7, $a1, $t0
	xvadd.d	$xr6, $xr6, $xr1
	xvadd.d	$xr5, $xr5, $xr1
	xvadd.d	$xr4, $xr4, $xr1
	addi.d	$a6, $a6, 128
	xvadd.d	$xr3, $xr3, $xr1
	bne	$a6, $s7, .LBB0_4
# %bb.5:                                # %vector.body.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	pcalau12i	$a6, %pc_hi20(.LCPI0_4)
	xvld	$xr3, $a6, %pc_lo12(.LCPI0_4)
	pcalau12i	$a6, %pc_hi20(.LCPI0_5)
	xvld	$xr4, $a6, %pc_lo12(.LCPI0_5)
	pcalau12i	$a6, %pc_hi20(.LCPI0_6)
	xvld	$xr5, $a6, %pc_lo12(.LCPI0_6)
	pcalau12i	$a6, %pc_hi20(.LCPI0_7)
	xvld	$xr6, $a6, %pc_lo12(.LCPI0_7)
	move	$a6, $zero
	.p2align	4, , 16
.LBB0_6:                                # %vector.body
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a7, $a1, $a6
	ldx.h	$t0, $a1, $a6
	ld.h	$t1, $a7, 4
	ld.h	$t2, $a7, 8
	ld.h	$t3, $a7, 12
	ld.h	$t4, $a7, 16
	ld.h	$t6, $a7, 20
	ld.h	$t7, $a7, 24
	ld.h	$t8, $a7, 28
	ld.h	$s0, $a7, 32
	vinsgr2vr.h	$vr7, $t0, 0
	vinsgr2vr.h	$vr7, $t1, 1
	vinsgr2vr.h	$vr7, $t2, 2
	vinsgr2vr.h	$vr7, $t3, 3
	vinsgr2vr.h	$vr7, $t4, 4
	vinsgr2vr.h	$vr7, $t6, 5
	vinsgr2vr.h	$vr7, $t7, 6
	vinsgr2vr.h	$vr7, $t8, 7
	ld.h	$t0, $a7, 36
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $s0, 0
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$t1, $a7, 40
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $t0, 1
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$t0, $a7, 44
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $t1, 2
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$t1, $a7, 48
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $t0, 3
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$t0, $a7, 52
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $t1, 4
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$t1, $a7, 56
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $t0, 5
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a7, $a7, 60
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $t1, 6
	xvpermi.q	$xr7, $xr8, 2
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a7, 7
	xvpermi.q	$xr7, $xr8, 2
	ori	$a7, $t5, 193
	xvreplgr2vr.h	$xr8, $a7
	xvxor.v	$xr7, $xr7, $xr8
	xvbitseti.d	$xr8, $xr5, 0
	xvbitseti.d	$xr9, $xr6, 0
	xvpickve2gr.d	$a7, $xr9, 0
	alsl.d	$a7, $a7, $a1, 1
	xvpickve2gr.d	$t0, $xr9, 1
	alsl.d	$t0, $t0, $a1, 1
	xvpickve2gr.d	$t1, $xr9, 2
	alsl.d	$t1, $t1, $a1, 1
	xvpickve2gr.d	$t2, $xr9, 3
	alsl.d	$t2, $t2, $a1, 1
	xvpickve2gr.d	$t3, $xr8, 0
	alsl.d	$t3, $t3, $a1, 1
	xvpickve2gr.d	$t4, $xr8, 1
	alsl.d	$t4, $t4, $a1, 1
	xvpickve2gr.d	$t6, $xr8, 2
	alsl.d	$t6, $t6, $a1, 1
	xvpickve2gr.d	$t7, $xr8, 3
	alsl.d	$t7, $t7, $a1, 1
	xvstelm.h	$xr7, $a7, 0, 0
	xvstelm.h	$xr7, $t0, 0, 1
	xvstelm.h	$xr7, $t1, 0, 2
	xvstelm.h	$xr7, $t2, 0, 3
	xvstelm.h	$xr7, $t3, 0, 4
	xvstelm.h	$xr7, $t4, 0, 5
	xvstelm.h	$xr7, $t6, 0, 6
	xvstelm.h	$xr7, $t7, 0, 7
	xvst	$xr7, $sp, 480
	ld.h	$a7, $sp, 496
	xvbitseti.d	$xr7, $xr4, 0
	xvpickve2gr.d	$t0, $xr7, 0
	slli.d	$t0, $t0, 1
	stx.h	$a7, $a1, $t0
	ld.h	$a7, $sp, 498
	xvpickve2gr.d	$t0, $xr7, 1
	slli.d	$t0, $t0, 1
	stx.h	$a7, $a1, $t0
	ld.h	$a7, $sp, 500
	xvpickve2gr.d	$t0, $xr7, 2
	slli.d	$t0, $t0, 1
	stx.h	$a7, $a1, $t0
	ld.h	$a7, $sp, 502
	xvpickve2gr.d	$t0, $xr7, 3
	slli.d	$t0, $t0, 1
	stx.h	$a7, $a1, $t0
	ld.h	$a7, $sp, 504
	xvbitseti.d	$xr7, $xr3, 0
	xvpickve2gr.d	$t0, $xr7, 0
	slli.d	$t0, $t0, 1
	stx.h	$a7, $a1, $t0
	ld.h	$a7, $sp, 506
	xvpickve2gr.d	$t0, $xr7, 1
	slli.d	$t0, $t0, 1
	stx.h	$a7, $a1, $t0
	ld.h	$a7, $sp, 508
	xvpickve2gr.d	$t0, $xr7, 2
	slli.d	$t0, $t0, 1
	stx.h	$a7, $a1, $t0
	ld.h	$a7, $sp, 510
	xvpickve2gr.d	$t0, $xr7, 3
	slli.d	$t0, $t0, 1
	stx.h	$a7, $a1, $t0
	xvadd.d	$xr6, $xr6, $xr2
	xvadd.d	$xr5, $xr5, $xr2
	xvadd.d	$xr4, $xr4, $xr2
	addi.d	$a6, $a6, 64
	xvadd.d	$xr3, $xr3, $xr2
	bne	$a6, $s7, .LBB0_6
	b	.LBB0_1
.LBB0_7:
	addi.d	$sp, $fp, -640
	ld.d	$s8, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 616                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 624                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 632                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 640
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
