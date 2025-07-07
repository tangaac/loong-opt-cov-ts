	.file	"crc16.le.c"
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
	lu12i.w	$a5, -6
	ori	$a4, $a5, 1
	xor	$a4, $a3, $a4
	st.d	$a4, $sp, 472                   # 8-byte Folded Spill
	lu12i.w	$t0, -1
	ori	$a4, $t0, 1
	xor	$a4, $a3, $a4
	st.d	$a4, $sp, 464                   # 8-byte Folded Spill
	lu12i.w	$t3, -3
	ori	$a4, $t3, 2049
	xor	$a4, $a3, $a4
	st.d	$a4, $sp, 456                   # 8-byte Folded Spill
	lu12i.w	$a7, 2
	ori	$a4, $a7, 2048
	xor	$a4, $a3, $a4
	st.d	$a4, $sp, 448                   # 8-byte Folded Spill
	lu12i.w	$a6, 7
	ori	$a4, $a6, 2048
	xor	$a4, $a3, $a4
	st.d	$a4, $sp, 440                   # 8-byte Folded Spill
	lu12i.w	$a4, -8
	ori	$t1, $a4, 2049
	xor	$t1, $a3, $t1
	st.d	$t1, $sp, 432                   # 8-byte Folded Spill
	lu12i.w	$s1, -4
	ori	$t1, $s1, 3073
	xor	$t1, $a3, $t1
	st.d	$t1, $sp, 424                   # 8-byte Folded Spill
	lu12i.w	$t8, 1
	ori	$t1, $t8, 1024
	xor	$t1, $a3, $t1
	st.d	$t1, $sp, 416                   # 8-byte Folded Spill
	lu12i.w	$t7, 3
	ori	$t1, $t7, 3072
	xor	$t1, $a3, $t1
	st.d	$t1, $sp, 408                   # 8-byte Folded Spill
	lu12i.w	$t6, -2
	ori	$t1, $t6, 1025
	xor	$t1, $a3, $t1
	st.d	$t1, $sp, 400                   # 8-byte Folded Spill
	lu12i.w	$t2, 6
	lu12i.w	$t5, 12
	ori	$t1, $t5, 385
	xvreplgr2vr.h	$xr0, $t1
	ori	$t1, $t2, 3072
	xor	$t1, $a3, $t1
	st.d	$t1, $sp, 392                   # 8-byte Folded Spill
	lu12i.w	$t1, -5
	ori	$t4, $t1, 1025
	xor	$t4, $a3, $t4
	st.d	$t4, $sp, 384                   # 8-byte Folded Spill
	lu12i.w	$t4, -7
	ori	$s0, $t4, 3073
	xor	$s0, $a3, $s0
	st.d	$s0, $sp, 376                   # 8-byte Folded Spill
	lu12i.w	$s0, 4
	ori	$s2, $s0, 1024
	xor	$s2, $a3, $s2
	st.d	$s2, $sp, 368                   # 8-byte Folded Spill
	ori	$s2, $s1, 1537
	xor	$s2, $a3, $s2
	st.d	$s2, $sp, 360                   # 8-byte Folded Spill
	ori	$s2, $t8, 3584
	xor	$s2, $a3, $s2
	st.d	$s2, $sp, 352                   # 8-byte Folded Spill
	ori	$s2, $t3, 513
	xor	$s2, $a3, $s2
	st.d	$s2, $sp, 344                   # 8-byte Folded Spill
	ori	$s2, $t7, 1536
	xor	$s2, $a3, $s2
	st.d	$s2, $sp, 336                   # 8-byte Folded Spill
	addi.d	$s2, $zero, -1535
	xor	$s2, $a3, $s2
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	ori	$s2, $t6, 3585
	xor	$s2, $a3, $s2
	st.d	$s2, $sp, 320                   # 8-byte Folded Spill
	ori	$s2, $a7, 512
	xor	$s2, $a3, $s2
	st.d	$s2, $sp, 312                   # 8-byte Folded Spill
	ori	$s2, $t2, 1536
	xor	$s2, $a3, $s2
	st.d	$s2, $sp, 304                   # 8-byte Folded Spill
	ori	$s2, $a5, 2561
	xor	$s2, $a3, $s2
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	ori	$s2, $t1, 3585
	xor	$s2, $a3, $s2
	st.d	$s2, $sp, 288                   # 8-byte Folded Spill
	ori	$s2, $a6, 512
	xor	$s2, $a3, $s2
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	ori	$s2, $t4, 1537
	xor	$s2, $a3, $s2
	st.d	$s2, $sp, 272                   # 8-byte Folded Spill
	lu12i.w	$s2, 5
	ori	$s3, $s2, 2560
	xor	$s3, $a3, $s3
	st.d	$s3, $sp, 264                   # 8-byte Folded Spill
	ori	$s3, $s0, 3584
	xor	$s3, $a3, $s3
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	ori	$s3, $a4, 513
	xor	$s3, $a3, $s3
	st.d	$s3, $sp, 248                   # 8-byte Folded Spill
	ori	$s3, $s1, 769
	xor	$s3, $a3, $s3
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	ori	$s1, $s1, 2305
	xor	$s1, $a3, $s1
	st.d	$s1, $sp, 232                   # 8-byte Folded Spill
	ori	$s1, $t8, 2816
	xor	$s1, $a3, $s1
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	ori	$s1, $t3, 3329
	xor	$s1, $a3, $s1
	st.d	$s1, $sp, 216                   # 8-byte Folded Spill
	ori	$t3, $t3, 1793
	xor	$t3, $a3, $t3
	st.d	$t3, $sp, 208                   # 8-byte Folded Spill
	ori	$t3, $t8, 256
	xor	$t3, $a3, $t3
	st.d	$t3, $sp, 200                   # 8-byte Folded Spill
	ori	$t3, $t7, 768
	xor	$t3, $a3, $t3
	st.d	$t3, $sp, 192                   # 8-byte Folded Spill
	ori	$t0, $t0, 1281
	xor	$t0, $a3, $t0
	st.d	$t0, $sp, 184                   # 8-byte Folded Spill
	addi.d	$t0, $zero, -255
	xor	$t0, $a3, $t0
	st.d	$t0, $sp, 176                   # 8-byte Folded Spill
	ori	$t0, $t7, 2304
	xor	$t0, $a3, $t0
	st.d	$t0, $sp, 168                   # 8-byte Folded Spill
	ori	$t0, $t6, 2817
	xor	$t0, $a3, $t0
	st.d	$t0, $sp, 160                   # 8-byte Folded Spill
	ori	$t0, $a7, 3328
	xor	$t0, $a3, $t0
	st.d	$t0, $sp, 152                   # 8-byte Folded Spill
	ori	$a7, $a7, 1792
	xor	$a7, $a3, $a7
	st.d	$a7, $sp, 144                   # 8-byte Folded Spill
	ori	$a7, $t6, 257
	xor	$a7, $a3, $a7
	st.d	$a7, $sp, 136                   # 8-byte Folded Spill
	ori	$a7, $t2, 768
	xor	$a7, $a3, $a7
	st.d	$a7, $sp, 128                   # 8-byte Folded Spill
	ori	$a7, $a5, 1281
	xor	$a7, $a3, $a7
	st.d	$a7, $sp, 120                   # 8-byte Folded Spill
	ori	$a5, $a5, 3841
	xor	$a5, $a3, $a5
	st.d	$a5, $sp, 112                   # 8-byte Folded Spill
	ori	$a5, $t2, 2304
	xor	$a5, $a3, $a5
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	ori	$a5, $t1, 2817
	xor	$a5, $a3, $a5
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	ori	$a5, $a6, 3328
	xor	$a5, $a3, $a5
	st.d	$a5, $sp, 88                    # 8-byte Folded Spill
	ori	$a5, $a6, 1792
	xor	$a5, $a3, $a5
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	ori	$a5, $t1, 257
	xor	$a5, $a3, $a5
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	ori	$a5, $t4, 769
	xor	$a5, $a3, $a5
	st.d	$a5, $sp, 64                    # 8-byte Folded Spill
	ori	$a5, $s2, 1280
	xor	$a5, $a3, $a5
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	xor	$a5, $a3, $s2
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	ori	$a5, $s2, 3840
	xor	$a5, $a3, $a5
	st.d	$a5, $sp, 40                    # 8-byte Folded Spill
	ori	$a5, $t4, 2305
	xor	$a5, $a3, $a5
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	ori	$a5, $s0, 2816
	xor	$a5, $a3, $a5
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	ori	$a5, $a4, 3329
	xor	$a5, $a3, $a5
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	ori	$a4, $a4, 1793
	xor	$t8, $a3, $a4
	ori	$a4, $s0, 256
	xor	$s0, $a3, $a4
	xori	$s1, $a3, 2560
	xori	$s2, $a3, 1280
	xori	$s3, $a3, 3840
	xvrepli.d	$xr1, 64
	xvrepli.d	$xr2, 32
	lu12i.w	$a3, 10
	ori	$s4, $a3, 1
	ori	$s5, $zero, 7
	ori	$s6, $zero, 512
	ori	$s7, $zero, 1
	ori	$s8, $zero, 8
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_1:                                # %crc_table.exit
                                        #   in Loop: Header=BB0_2 Depth=1
	xor	$a5, $ra, $a3
	andi	$a4, $a5, 255
	slli.d	$a4, $a4, 1
	ldx.hu	$a4, $a1, $a4
	srli.d	$a6, $a5, 8
	andi	$a7, $a4, 255
	xor	$a6, $a7, $a6
	slli.d	$a6, $a6, 1
	ldx.hu	$a6, $a1, $a6
	srli.d	$a4, $a4, 8
	xor	$a4, $a6, $a4
	srli.d	$a3, $a3, 1
	andi	$a5, $a5, 1
	sltui	$a5, $a5, 1
	xor	$a6, $a3, $s4
	masknez	$a6, $a6, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a6
	srli.d	$a5, $ra, 1
	xor	$a5, $a3, $a5
	srli.d	$a3, $a3, 1
	andi	$a5, $a5, 1
	sltui	$a5, $a5, 1
	xor	$a6, $a3, $s4
	masknez	$a6, $a6, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a6
	srli.d	$a5, $ra, 2
	xor	$a5, $a3, $a5
	srli.d	$a3, $a3, 1
	andi	$a5, $a5, 1
	sltui	$a5, $a5, 1
	xor	$a6, $a3, $s4
	masknez	$a6, $a6, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a6
	srli.d	$a5, $ra, 3
	xor	$a5, $a3, $a5
	srli.d	$a3, $a3, 1
	andi	$a5, $a5, 1
	sltui	$a5, $a5, 1
	xor	$a6, $a3, $s4
	masknez	$a6, $a6, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a6
	srli.d	$a5, $ra, 4
	xor	$a5, $a3, $a5
	srli.d	$a3, $a3, 1
	andi	$a5, $a5, 1
	sltui	$a5, $a5, 1
	xor	$a6, $a3, $s4
	masknez	$a6, $a6, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a6
	srli.d	$a5, $ra, 5
	xor	$a5, $a3, $a5
	srli.d	$a3, $a3, 1
	andi	$a5, $a5, 1
	sltui	$a5, $a5, 1
	xor	$a6, $a3, $s4
	masknez	$a6, $a6, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a6
	srli.d	$a5, $ra, 6
	xor	$a5, $a3, $a5
	srli.d	$a3, $a3, 1
	andi	$a5, $a5, 1
	sltui	$a5, $a5, 1
	xor	$a6, $a3, $s4
	masknez	$a6, $a6, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a6
	srli.d	$a5, $ra, 7
	xor	$a5, $a3, $a5
	srli.d	$a3, $a3, 1
	andi	$a5, $a5, 1
	sltui	$a5, $a5, 1
	xor	$a6, $a3, $s4
	masknez	$a6, $a6, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a6
	srli.d	$a5, $ra, 8
	xor	$a5, $a3, $a5
	srli.d	$a3, $a3, 1
	andi	$a5, $a5, 1
	sltui	$a5, $a5, 1
	xor	$a6, $a3, $s4
	masknez	$a6, $a6, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a6
	srli.d	$a5, $ra, 9
	xor	$a5, $a3, $a5
	srli.d	$a3, $a3, 1
	andi	$a5, $a5, 1
	sltui	$a5, $a5, 1
	xor	$a6, $a3, $s4
	masknez	$a6, $a6, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a6
	srli.d	$a5, $ra, 10
	xor	$a5, $a3, $a5
	srli.d	$a3, $a3, 1
	andi	$a5, $a5, 1
	sltui	$a5, $a5, 1
	xor	$a6, $a3, $s4
	masknez	$a6, $a6, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a6
	srli.d	$a5, $ra, 11
	xor	$a5, $a3, $a5
	srli.d	$a3, $a3, 1
	andi	$a5, $a5, 1
	sltui	$a5, $a5, 1
	xor	$a6, $a3, $s4
	masknez	$a6, $a6, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a6
	srli.d	$a5, $ra, 12
	xor	$a5, $a3, $a5
	srli.d	$a3, $a3, 1
	andi	$a5, $a5, 1
	sltui	$a5, $a5, 1
	xor	$a6, $a3, $s4
	masknez	$a6, $a6, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a6
	srli.d	$a5, $ra, 13
	xor	$a5, $a3, $a5
	srli.d	$a3, $a3, 1
	andi	$a5, $a5, 1
	sltui	$a5, $a5, 1
	xor	$a6, $a3, $s4
	masknez	$a6, $a6, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a6
	srli.d	$a5, $ra, 14
	xor	$a5, $a3, $a5
	srli.d	$a3, $a3, 1
	andi	$a5, $a5, 1
	sltui	$a5, $a5, 1
	xor	$a6, $a3, $s4
	masknez	$a6, $a6, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a6
	srli.d	$a5, $ra, 15
	srli.d	$a6, $a3, 1
	andi	$a3, $a3, 1
	xor	$a3, $a5, $a3
	sltui	$a3, $a3, 1
	xor	$a5, $a6, $s4
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $a6, $a3
	or	$a3, $a3, $a5
	xor	$a3, $a4, $a3
	sltui	$a3, $a3, 1
	masknez	$a4, $s7, $a3
	maskeqz	$a0, $a0, $a3
	addi.d	$a2, $a2, 1
	or	$a0, $a0, $a4
	beq	$a2, $s8, .LBB0_7
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
                                        #     Child Loop BB0_6 Depth 2
	slli.d	$a3, $a2, 2
	pcalau12i	$a4, %pc_hi20(main.sample)
	addi.d	$a4, $a4, %pc_lo12(main.sample)
	ldx.hu	$a3, $a4, $a3
	sub.d	$a5, $s5, $a2
	slli.d	$a5, $a5, 2
	ld.hu	$a6, $a1, 510
	ldx.hu	$ra, $a4, $a5
	bnez	$a6, .LBB0_1
# %bb.3:                                # %vector.ph12
                                        #   in Loop: Header=BB0_2 Depth=1
	move	$a4, $zero
	pcalau12i	$a5, %pc_hi20(.LCPI0_0)
	xvld	$xr3, $a5, %pc_lo12(.LCPI0_0)
	pcalau12i	$a5, %pc_hi20(.LCPI0_1)
	xvld	$xr4, $a5, %pc_lo12(.LCPI0_1)
	pcalau12i	$a5, %pc_hi20(.LCPI0_2)
	xvld	$xr5, $a5, %pc_lo12(.LCPI0_2)
	pcalau12i	$a5, %pc_hi20(.LCPI0_3)
	xvld	$xr6, $a5, %pc_lo12(.LCPI0_3)
	ld.d	$a5, $sp, 472                   # 8-byte Folded Reload
	st.h	$a5, $a1, 256
	ld.d	$a5, $sp, 464                   # 8-byte Folded Reload
	st.h	$a5, $a1, 128
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	st.h	$a5, $a1, 384
	ld.d	$a5, $sp, 456                   # 8-byte Folded Reload
	st.h	$a5, $a1, 64
	ld.d	$a5, $sp, 448                   # 8-byte Folded Reload
	st.h	$a5, $a1, 192
	ld.d	$a5, $sp, 440                   # 8-byte Folded Reload
	st.h	$a5, $a1, 320
	ld.d	$a5, $sp, 432                   # 8-byte Folded Reload
	st.h	$a5, $a1, 448
	ld.d	$a5, $sp, 424                   # 8-byte Folded Reload
	st.h	$a5, $a1, 32
	ld.d	$a5, $sp, 416                   # 8-byte Folded Reload
	st.h	$a5, $a1, 96
	ld.d	$a5, $sp, 408                   # 8-byte Folded Reload
	st.h	$a5, $a1, 160
	ld.d	$a5, $sp, 400                   # 8-byte Folded Reload
	st.h	$a5, $a1, 224
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	st.h	$a5, $a1, 288
	ld.d	$a5, $sp, 384                   # 8-byte Folded Reload
	st.h	$a5, $a1, 352
	ld.d	$a5, $sp, 376                   # 8-byte Folded Reload
	st.h	$a5, $a1, 416
	ld.d	$a5, $sp, 368                   # 8-byte Folded Reload
	st.h	$a5, $a1, 480
	ld.d	$a5, $sp, 360                   # 8-byte Folded Reload
	st.h	$a5, $a1, 16
	st.h	$s1, $a1, 48
	ld.d	$a5, $sp, 352                   # 8-byte Folded Reload
	st.h	$a5, $a1, 80
	ld.d	$a5, $sp, 344                   # 8-byte Folded Reload
	st.h	$a5, $a1, 112
	ld.d	$a5, $sp, 336                   # 8-byte Folded Reload
	st.h	$a5, $a1, 144
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	st.h	$a5, $a1, 176
	ld.d	$a5, $sp, 320                   # 8-byte Folded Reload
	st.h	$a5, $a1, 208
	ld.d	$a5, $sp, 312                   # 8-byte Folded Reload
	st.h	$a5, $a1, 240
	ld.d	$a5, $sp, 304                   # 8-byte Folded Reload
	st.h	$a5, $a1, 272
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	st.h	$a5, $a1, 304
	ld.d	$a5, $sp, 288                   # 8-byte Folded Reload
	st.h	$a5, $a1, 336
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	st.h	$a5, $a1, 368
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	st.h	$a5, $a1, 400
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	st.h	$a5, $a1, 432
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	st.h	$a5, $a1, 464
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	st.h	$a5, $a1, 496
	ld.d	$a5, $sp, 240                   # 8-byte Folded Reload
	st.h	$a5, $a1, 8
	st.h	$s2, $a1, 24
	st.h	$s3, $a1, 40
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	st.h	$a5, $a1, 56
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	st.h	$a5, $a1, 72
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	st.h	$a5, $a1, 88
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	st.h	$a5, $a1, 104
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	st.h	$a5, $a1, 120
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	st.h	$a5, $a1, 136
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	st.h	$a5, $a1, 152
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	st.h	$a5, $a1, 168
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	st.h	$a5, $a1, 184
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	st.h	$a5, $a1, 200
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	st.h	$a5, $a1, 216
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	st.h	$a5, $a1, 232
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	st.h	$a5, $a1, 248
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	st.h	$a5, $a1, 264
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	st.h	$a5, $a1, 280
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	st.h	$a5, $a1, 296
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	st.h	$a5, $a1, 312
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	st.h	$a5, $a1, 328
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	st.h	$a5, $a1, 344
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	st.h	$a5, $a1, 360
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	st.h	$a5, $a1, 376
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	st.h	$a5, $a1, 392
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	st.h	$a5, $a1, 408
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	st.h	$a5, $a1, 424
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	st.h	$a5, $a1, 440
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	st.h	$a5, $a1, 456
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	st.h	$a5, $a1, 472
	st.h	$t8, $a1, 488
	st.h	$s0, $a1, 504
	.p2align	4, , 16
.LBB0_4:                                # %vector.body13
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a5, $a1, $a4
	ldx.h	$a6, $a1, $a4
	ld.h	$a7, $a5, 8
	ld.h	$t0, $a5, 16
	ld.h	$t1, $a5, 24
	ld.h	$t2, $a5, 32
	ld.h	$t3, $a5, 40
	ld.h	$t4, $a5, 48
	ld.h	$t6, $a5, 56
	ld.h	$t7, $a5, 64
	vinsgr2vr.h	$vr7, $a6, 0
	vinsgr2vr.h	$vr7, $a7, 1
	vinsgr2vr.h	$vr7, $t0, 2
	vinsgr2vr.h	$vr7, $t1, 3
	vinsgr2vr.h	$vr7, $t2, 4
	vinsgr2vr.h	$vr7, $t3, 5
	vinsgr2vr.h	$vr7, $t4, 6
	vinsgr2vr.h	$vr7, $t6, 7
	ld.h	$a6, $a5, 72
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $t7, 0
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a7, $a5, 80
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a6, 1
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a6, $a5, 88
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a7, 2
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a7, $a5, 96
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a6, 3
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a6, $a5, 104
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a7, 4
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a7, $a5, 112
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a6, 5
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a5, $a5, 120
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a7, 6
	xvpermi.q	$xr7, $xr8, 2
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a5, 7
	xvpermi.q	$xr7, $xr8, 2
	xvxor.v	$xr7, $xr7, $xr0
	xvbitseti.d	$xr8, $xr5, 1
	xvbitseti.d	$xr9, $xr6, 1
	xvpickve2gr.d	$a5, $xr9, 0
	alsl.d	$a5, $a5, $a1, 1
	xvpickve2gr.d	$a6, $xr9, 1
	alsl.d	$a6, $a6, $a1, 1
	xvpickve2gr.d	$a7, $xr9, 2
	alsl.d	$a7, $a7, $a1, 1
	xvpickve2gr.d	$t0, $xr9, 3
	alsl.d	$t0, $t0, $a1, 1
	xvpickve2gr.d	$t1, $xr8, 0
	alsl.d	$t1, $t1, $a1, 1
	xvpickve2gr.d	$t2, $xr8, 1
	alsl.d	$t2, $t2, $a1, 1
	xvpickve2gr.d	$t3, $xr8, 2
	alsl.d	$t3, $t3, $a1, 1
	xvpickve2gr.d	$t4, $xr8, 3
	alsl.d	$t4, $t4, $a1, 1
	xvstelm.h	$xr7, $a5, 0, 0
	xvstelm.h	$xr7, $a6, 0, 1
	xvstelm.h	$xr7, $a7, 0, 2
	xvstelm.h	$xr7, $t0, 0, 3
	xvstelm.h	$xr7, $t1, 0, 4
	xvstelm.h	$xr7, $t2, 0, 5
	xvstelm.h	$xr7, $t3, 0, 6
	xvstelm.h	$xr7, $t4, 0, 7
	xvst	$xr7, $sp, 512
	ld.h	$a5, $sp, 528
	xvbitseti.d	$xr7, $xr4, 1
	xvpickve2gr.d	$a6, $xr7, 0
	slli.d	$a6, $a6, 1
	stx.h	$a5, $a1, $a6
	ld.h	$a5, $sp, 530
	xvpickve2gr.d	$a6, $xr7, 1
	slli.d	$a6, $a6, 1
	stx.h	$a5, $a1, $a6
	ld.h	$a5, $sp, 532
	xvpickve2gr.d	$a6, $xr7, 2
	slli.d	$a6, $a6, 1
	stx.h	$a5, $a1, $a6
	ld.h	$a5, $sp, 534
	xvpickve2gr.d	$a6, $xr7, 3
	slli.d	$a6, $a6, 1
	stx.h	$a5, $a1, $a6
	ld.h	$a5, $sp, 536
	xvbitseti.d	$xr7, $xr3, 1
	xvpickve2gr.d	$a6, $xr7, 0
	slli.d	$a6, $a6, 1
	stx.h	$a5, $a1, $a6
	ld.h	$a5, $sp, 538
	xvpickve2gr.d	$a6, $xr7, 1
	slli.d	$a6, $a6, 1
	stx.h	$a5, $a1, $a6
	ld.h	$a5, $sp, 540
	xvpickve2gr.d	$a6, $xr7, 2
	slli.d	$a6, $a6, 1
	stx.h	$a5, $a1, $a6
	ld.h	$a5, $sp, 542
	xvpickve2gr.d	$a6, $xr7, 3
	slli.d	$a6, $a6, 1
	stx.h	$a5, $a1, $a6
	xvadd.d	$xr6, $xr6, $xr1
	xvadd.d	$xr5, $xr5, $xr1
	xvadd.d	$xr4, $xr4, $xr1
	addi.d	$a4, $a4, 128
	xvadd.d	$xr3, $xr3, $xr1
	bne	$a4, $s6, .LBB0_4
# %bb.5:                                # %vector.body.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	pcalau12i	$a4, %pc_hi20(.LCPI0_4)
	xvld	$xr3, $a4, %pc_lo12(.LCPI0_4)
	pcalau12i	$a4, %pc_hi20(.LCPI0_5)
	xvld	$xr4, $a4, %pc_lo12(.LCPI0_5)
	pcalau12i	$a4, %pc_hi20(.LCPI0_6)
	xvld	$xr5, $a4, %pc_lo12(.LCPI0_6)
	pcalau12i	$a4, %pc_hi20(.LCPI0_7)
	xvld	$xr6, $a4, %pc_lo12(.LCPI0_7)
	move	$a4, $zero
	.p2align	4, , 16
.LBB0_6:                                # %vector.body
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a5, $a1, $a4
	ldx.h	$a6, $a1, $a4
	ld.h	$a7, $a5, 4
	ld.h	$t0, $a5, 8
	ld.h	$t1, $a5, 12
	ld.h	$t2, $a5, 16
	ld.h	$t3, $a5, 20
	ld.h	$t4, $a5, 24
	ld.h	$t6, $a5, 28
	ld.h	$t7, $a5, 32
	vinsgr2vr.h	$vr7, $a6, 0
	vinsgr2vr.h	$vr7, $a7, 1
	vinsgr2vr.h	$vr7, $t0, 2
	vinsgr2vr.h	$vr7, $t1, 3
	vinsgr2vr.h	$vr7, $t2, 4
	vinsgr2vr.h	$vr7, $t3, 5
	vinsgr2vr.h	$vr7, $t4, 6
	vinsgr2vr.h	$vr7, $t6, 7
	ld.h	$a6, $a5, 36
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $t7, 0
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a7, $a5, 40
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a6, 1
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a6, $a5, 44
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a7, 2
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a7, $a5, 48
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a6, 3
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a6, $a5, 52
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a7, 4
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a7, $a5, 56
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a6, 5
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a5, $a5, 60
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a7, 6
	xvpermi.q	$xr7, $xr8, 2
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a5, 7
	xvpermi.q	$xr7, $xr8, 2
	ori	$a5, $t5, 193
	xvreplgr2vr.h	$xr8, $a5
	xvxor.v	$xr7, $xr7, $xr8
	xvbitseti.d	$xr8, $xr5, 0
	xvbitseti.d	$xr9, $xr6, 0
	xvpickve2gr.d	$a5, $xr9, 0
	alsl.d	$a5, $a5, $a1, 1
	xvpickve2gr.d	$a6, $xr9, 1
	alsl.d	$a6, $a6, $a1, 1
	xvpickve2gr.d	$a7, $xr9, 2
	alsl.d	$a7, $a7, $a1, 1
	xvpickve2gr.d	$t0, $xr9, 3
	alsl.d	$t0, $t0, $a1, 1
	xvpickve2gr.d	$t1, $xr8, 0
	alsl.d	$t1, $t1, $a1, 1
	xvpickve2gr.d	$t2, $xr8, 1
	alsl.d	$t2, $t2, $a1, 1
	xvpickve2gr.d	$t3, $xr8, 2
	alsl.d	$t3, $t3, $a1, 1
	xvpickve2gr.d	$t4, $xr8, 3
	alsl.d	$t4, $t4, $a1, 1
	xvstelm.h	$xr7, $a5, 0, 0
	xvstelm.h	$xr7, $a6, 0, 1
	xvstelm.h	$xr7, $a7, 0, 2
	xvstelm.h	$xr7, $t0, 0, 3
	xvstelm.h	$xr7, $t1, 0, 4
	xvstelm.h	$xr7, $t2, 0, 5
	xvstelm.h	$xr7, $t3, 0, 6
	xvstelm.h	$xr7, $t4, 0, 7
	xvst	$xr7, $sp, 480
	ld.h	$a5, $sp, 496
	xvbitseti.d	$xr7, $xr4, 0
	xvpickve2gr.d	$a6, $xr7, 0
	slli.d	$a6, $a6, 1
	stx.h	$a5, $a1, $a6
	ld.h	$a5, $sp, 498
	xvpickve2gr.d	$a6, $xr7, 1
	slli.d	$a6, $a6, 1
	stx.h	$a5, $a1, $a6
	ld.h	$a5, $sp, 500
	xvpickve2gr.d	$a6, $xr7, 2
	slli.d	$a6, $a6, 1
	stx.h	$a5, $a1, $a6
	ld.h	$a5, $sp, 502
	xvpickve2gr.d	$a6, $xr7, 3
	slli.d	$a6, $a6, 1
	stx.h	$a5, $a1, $a6
	ld.h	$a5, $sp, 504
	xvbitseti.d	$xr7, $xr3, 0
	xvpickve2gr.d	$a6, $xr7, 0
	slli.d	$a6, $a6, 1
	stx.h	$a5, $a1, $a6
	ld.h	$a5, $sp, 506
	xvpickve2gr.d	$a6, $xr7, 1
	slli.d	$a6, $a6, 1
	stx.h	$a5, $a1, $a6
	ld.h	$a5, $sp, 508
	xvpickve2gr.d	$a6, $xr7, 2
	slli.d	$a6, $a6, 1
	stx.h	$a5, $a1, $a6
	ld.h	$a5, $sp, 510
	xvpickve2gr.d	$a6, $xr7, 3
	slli.d	$a6, $a6, 1
	stx.h	$a5, $a1, $a6
	xvadd.d	$xr6, $xr6, $xr2
	xvadd.d	$xr5, $xr5, $xr2
	xvadd.d	$xr4, $xr4, $xr2
	addi.d	$a4, $a4, 64
	xvadd.d	$xr3, $xr3, $xr2
	bne	$a4, $s6, .LBB0_6
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
