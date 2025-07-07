	.file	"crc16.le.nodata.c"
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
	addi.d	$sp, $sp, -608
	st.d	$ra, $sp, 600                   # 8-byte Folded Spill
	st.d	$fp, $sp, 592                   # 8-byte Folded Spill
	st.d	$s0, $sp, 584                   # 8-byte Folded Spill
	st.d	$s1, $sp, 576                   # 8-byte Folded Spill
	st.d	$s2, $sp, 568                   # 8-byte Folded Spill
	st.d	$s3, $sp, 560                   # 8-byte Folded Spill
	st.d	$s4, $sp, 552                   # 8-byte Folded Spill
	st.d	$s5, $sp, 544                   # 8-byte Folded Spill
	st.d	$s6, $sp, 536                   # 8-byte Folded Spill
	st.d	$s7, $sp, 528                   # 8-byte Folded Spill
	st.d	$s8, $sp, 520                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 608
	bstrins.d	$sp, $zero, 4, 0
	pcalau12i	$a0, %pc_hi20(CRCTable)
	addi.d	$a0, $a0, %pc_lo12(CRCTable)
	ld.h	$s1, $a0, 0
	move	$a1, $zero
	lu12i.w	$a4, -1
	ori	$a2, $a4, 1
	xor	$a2, $s1, $a2
	st.d	$a2, $sp, 440                   # 8-byte Folded Spill
	lu12i.w	$a7, -3
	ori	$a2, $a7, 2049
	xor	$a2, $s1, $a2
	st.d	$a2, $sp, 432                   # 8-byte Folded Spill
	lu12i.w	$a2, 2
	ori	$a3, $a2, 2048
	xor	$a3, $s1, $a3
	st.d	$a3, $sp, 424                   # 8-byte Folded Spill
	lu12i.w	$a3, 7
	ori	$a5, $a3, 2048
	xor	$a5, $s1, $a5
	st.d	$a5, $sp, 416                   # 8-byte Folded Spill
	lu12i.w	$t4, -8
	ori	$a5, $t4, 2049
	xor	$a5, $s1, $a5
	st.d	$a5, $sp, 408                   # 8-byte Folded Spill
	lu12i.w	$t7, -4
	ori	$a5, $t7, 3073
	xor	$a5, $s1, $a5
	st.d	$a5, $sp, 400                   # 8-byte Folded Spill
	lu12i.w	$t3, 1
	ori	$a5, $t3, 1024
	xor	$a5, $s1, $a5
	st.d	$a5, $sp, 392                   # 8-byte Folded Spill
	lu12i.w	$t2, 3
	ori	$a5, $t2, 3072
	xor	$a5, $s1, $a5
	st.d	$a5, $sp, 384                   # 8-byte Folded Spill
	lu12i.w	$t0, -2
	ori	$a5, $t0, 1025
	xor	$a5, $s1, $a5
	st.d	$a5, $sp, 376                   # 8-byte Folded Spill
	lu12i.w	$a6, 6
	ori	$a5, $a6, 3072
	xor	$a5, $s1, $a5
	st.d	$a5, $sp, 368                   # 8-byte Folded Spill
	lu12i.w	$a5, -5
	ori	$t1, $a5, 1025
	xor	$t1, $s1, $t1
	st.d	$t1, $sp, 360                   # 8-byte Folded Spill
	lu12i.w	$t5, 12
	ori	$t1, $t5, 385
	xvreplgr2vr.h	$xr0, $t1
	lu12i.w	$t1, -7
	ori	$t6, $t1, 3073
	xor	$t6, $s1, $t6
	st.d	$t6, $sp, 352                   # 8-byte Folded Spill
	lu12i.w	$t6, 4
	ori	$t8, $t6, 1024
	xor	$t8, $s1, $t8
	st.d	$t8, $sp, 344                   # 8-byte Folded Spill
	ori	$t8, $t7, 1537
	xor	$t8, $s1, $t8
	st.d	$t8, $sp, 336                   # 8-byte Folded Spill
	ori	$t8, $t3, 3584
	xor	$t8, $s1, $t8
	st.d	$t8, $sp, 328                   # 8-byte Folded Spill
	ori	$t8, $a7, 513
	xor	$t8, $s1, $t8
	st.d	$t8, $sp, 320                   # 8-byte Folded Spill
	ori	$t8, $t2, 1536
	xor	$t8, $s1, $t8
	st.d	$t8, $sp, 312                   # 8-byte Folded Spill
	addi.d	$t8, $zero, -1535
	xor	$t8, $s1, $t8
	st.d	$t8, $sp, 304                   # 8-byte Folded Spill
	ori	$t8, $t0, 3585
	xor	$t8, $s1, $t8
	st.d	$t8, $sp, 296                   # 8-byte Folded Spill
	ori	$t8, $a2, 512
	xor	$t8, $s1, $t8
	st.d	$t8, $sp, 288                   # 8-byte Folded Spill
	ori	$t8, $a6, 1536
	xor	$t8, $s1, $t8
	st.d	$t8, $sp, 280                   # 8-byte Folded Spill
	lu12i.w	$s0, -6
	ori	$t8, $s0, 2561
	xor	$t8, $s1, $t8
	st.d	$t8, $sp, 272                   # 8-byte Folded Spill
	ori	$t8, $a5, 3585
	xor	$t8, $s1, $t8
	st.d	$t8, $sp, 264                   # 8-byte Folded Spill
	ori	$t8, $a3, 512
	xor	$t8, $s1, $t8
	st.d	$t8, $sp, 256                   # 8-byte Folded Spill
	ori	$t8, $t1, 1537
	xor	$t8, $s1, $t8
	st.d	$t8, $sp, 248                   # 8-byte Folded Spill
	lu12i.w	$t8, 5
	ori	$s2, $t8, 2560
	xor	$s2, $s1, $s2
	st.d	$s2, $sp, 240                   # 8-byte Folded Spill
	ori	$s2, $t6, 3584
	xor	$s2, $s1, $s2
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	ori	$s2, $t4, 513
	xor	$s2, $s1, $s2
	st.d	$s2, $sp, 224                   # 8-byte Folded Spill
	ori	$s2, $t7, 769
	xor	$s2, $s1, $s2
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	ori	$t7, $t7, 2305
	xor	$t7, $s1, $t7
	st.d	$t7, $sp, 208                   # 8-byte Folded Spill
	ori	$t7, $t3, 2816
	xor	$t7, $s1, $t7
	st.d	$t7, $sp, 200                   # 8-byte Folded Spill
	ori	$t7, $a7, 3329
	xor	$t7, $s1, $t7
	st.d	$t7, $sp, 192                   # 8-byte Folded Spill
	ori	$a7, $a7, 1793
	xor	$a7, $s1, $a7
	st.d	$a7, $sp, 184                   # 8-byte Folded Spill
	ori	$a7, $t3, 256
	xor	$a7, $s1, $a7
	st.d	$a7, $sp, 176                   # 8-byte Folded Spill
	ori	$a7, $t2, 768
	xor	$a7, $s1, $a7
	st.d	$a7, $sp, 168                   # 8-byte Folded Spill
	ori	$a4, $a4, 1281
	xor	$a4, $s1, $a4
	st.d	$a4, $sp, 160                   # 8-byte Folded Spill
	addi.d	$a4, $zero, -255
	xor	$a4, $s1, $a4
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	ori	$a4, $t2, 2304
	xor	$a4, $s1, $a4
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	ori	$a4, $t0, 2817
	xor	$a4, $s1, $a4
	st.d	$a4, $sp, 136                   # 8-byte Folded Spill
	ori	$a4, $a2, 3328
	xor	$a4, $s1, $a4
	st.d	$a4, $sp, 128                   # 8-byte Folded Spill
	ori	$a2, $a2, 1792
	xor	$a2, $s1, $a2
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	ori	$a2, $t0, 257
	xor	$a2, $s1, $a2
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	ori	$a2, $a6, 768
	xor	$a2, $s1, $a2
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	ori	$a2, $s0, 1281
	xor	$a2, $s1, $a2
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	ori	$s6, $s0, 1
	ori	$a2, $s0, 3841
	xor	$a2, $s1, $a2
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	ori	$a2, $a6, 2304
	xor	$a2, $s1, $a2
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	ori	$a2, $a5, 2817
	xor	$a2, $s1, $a2
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	ori	$a2, $a3, 3328
	xor	$a2, $s1, $a2
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	ori	$a3, $a3, 1792
	xor	$a2, $s1, $a3
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	ori	$a4, $a5, 257
	xor	$a2, $s1, $a4
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	ori	$a5, $t1, 769
	xor	$a2, $s1, $a5
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	ori	$a6, $t8, 1280
	xor	$a2, $s1, $a6
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	xor	$a2, $s1, $t8
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ori	$t0, $t8, 3840
	xor	$a2, $s1, $t0
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ori	$t1, $t1, 2305
	xor	$a2, $s1, $t1
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	ori	$t2, $t6, 2816
	xor	$t2, $s1, $t2
	ori	$t3, $t4, 3329
	xor	$t3, $s1, $t3
	ori	$t4, $t4, 1793
	xor	$t4, $s1, $t4
	ori	$t6, $t6, 256
	xor	$t6, $s1, $t6
	xor	$t7, $s1, $s6
	xori	$t8, $s1, 2560
	xori	$s0, $s1, 1280
	xori	$s1, $s1, 3840
	xvrepli.d	$xr1, 64
	xvrepli.d	$xr2, 32
	ori	$s2, $zero, 1
	ori	$s3, $zero, 512
	ori	$s4, $zero, 8
	.p2align	4, , 16
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #     Child Loop BB0_5 Depth 2
	slli.d	$s5, $a1, 1
	pcalau12i	$s7, %pc_hi20(main.crc_initval)
	addi.d	$s7, $s7, %pc_lo12(main.crc_initval)
	ld.hu	$s8, $a0, 510
	ldx.hu	$s5, $s7, $s5
	bnez	$s8, .LBB0_6
# %bb.2:                                # %vector.ph14
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$s7, $zero
	pcalau12i	$s8, %pc_hi20(.LCPI0_0)
	xvld	$xr3, $s8, %pc_lo12(.LCPI0_0)
	pcalau12i	$s8, %pc_hi20(.LCPI0_1)
	xvld	$xr4, $s8, %pc_lo12(.LCPI0_1)
	pcalau12i	$s8, %pc_hi20(.LCPI0_2)
	xvld	$xr5, $s8, %pc_lo12(.LCPI0_2)
	pcalau12i	$s8, %pc_hi20(.LCPI0_3)
	xvld	$xr6, $s8, %pc_lo12(.LCPI0_3)
	st.h	$t7, $a0, 256
	ld.d	$a2, $sp, 440                   # 8-byte Folded Reload
	st.h	$a2, $a0, 128
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	st.h	$a2, $a0, 384
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	st.h	$a2, $a0, 64
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	st.h	$a2, $a0, 192
	ld.d	$a2, $sp, 416                   # 8-byte Folded Reload
	st.h	$a2, $a0, 320
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	st.h	$a2, $a0, 448
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	st.h	$a2, $a0, 32
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	st.h	$a2, $a0, 96
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	st.h	$a2, $a0, 160
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	st.h	$a2, $a0, 224
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	st.h	$a2, $a0, 288
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	st.h	$a2, $a0, 352
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	st.h	$a2, $a0, 416
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	st.h	$a2, $a0, 480
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	st.h	$a2, $a0, 16
	st.h	$t8, $a0, 48
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	st.h	$a2, $a0, 80
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	st.h	$a2, $a0, 112
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.h	$a2, $a0, 144
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	st.h	$a2, $a0, 176
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	st.h	$a2, $a0, 208
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	st.h	$a2, $a0, 240
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	st.h	$a2, $a0, 272
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	st.h	$a2, $a0, 304
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	st.h	$a2, $a0, 336
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	st.h	$a2, $a0, 368
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	st.h	$a2, $a0, 400
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	st.h	$a2, $a0, 432
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	st.h	$a2, $a0, 464
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	st.h	$a2, $a0, 496
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	st.h	$a2, $a0, 8
	st.h	$s0, $a0, 24
	st.h	$s1, $a0, 40
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	st.h	$a2, $a0, 56
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	st.h	$a2, $a0, 72
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	st.h	$a2, $a0, 88
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	st.h	$a2, $a0, 104
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	st.h	$a2, $a0, 120
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	st.h	$a2, $a0, 136
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	st.h	$a2, $a0, 152
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.h	$a2, $a0, 168
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	st.h	$a2, $a0, 184
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	st.h	$a2, $a0, 200
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	st.h	$a2, $a0, 216
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.h	$a2, $a0, 232
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.h	$a2, $a0, 248
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.h	$a2, $a0, 264
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.h	$a2, $a0, 280
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.h	$a2, $a0, 296
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.h	$a2, $a0, 312
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	st.h	$a2, $a0, 328
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.h	$a2, $a0, 344
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	st.h	$a2, $a0, 360
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.h	$a2, $a0, 376
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	st.h	$a2, $a0, 392
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	st.h	$a2, $a0, 408
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.h	$a2, $a0, 424
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	st.h	$a2, $a0, 440
	st.h	$t2, $a0, 456
	st.h	$t3, $a0, 472
	st.h	$t4, $a0, 488
	st.h	$t6, $a0, 504
	.p2align	4, , 16
.LBB0_3:                                # %vector.body15
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s8, $a0, $s7
	ldx.h	$ra, $a0, $s7
	ld.h	$a2, $s8, 8
	ld.h	$a3, $s8, 16
	ld.h	$a4, $s8, 24
	ld.h	$a5, $s8, 32
	ld.h	$a6, $s8, 40
	ld.h	$a7, $s8, 48
	ld.h	$t0, $s8, 56
	ld.h	$t1, $s8, 64
	vinsgr2vr.h	$vr7, $ra, 0
	vinsgr2vr.h	$vr7, $a2, 1
	vinsgr2vr.h	$vr7, $a3, 2
	vinsgr2vr.h	$vr7, $a4, 3
	vinsgr2vr.h	$vr7, $a5, 4
	vinsgr2vr.h	$vr7, $a6, 5
	vinsgr2vr.h	$vr7, $a7, 6
	vinsgr2vr.h	$vr7, $t0, 7
	ld.h	$a2, $s8, 72
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $t1, 0
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a3, $s8, 80
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a2, 1
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a2, $s8, 88
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a3, 2
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a3, $s8, 96
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a2, 3
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a2, $s8, 104
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a3, 4
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a3, $s8, 112
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a2, 5
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a2, $s8, 120
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a3, 6
	xvpermi.q	$xr7, $xr8, 2
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a2, 7
	xvpermi.q	$xr7, $xr8, 2
	xvxor.v	$xr7, $xr7, $xr0
	xvbitseti.d	$xr8, $xr5, 1
	xvbitseti.d	$xr9, $xr6, 1
	xvpickve2gr.d	$a2, $xr9, 0
	alsl.d	$a2, $a2, $a0, 1
	xvpickve2gr.d	$a3, $xr9, 1
	alsl.d	$a3, $a3, $a0, 1
	xvpickve2gr.d	$a4, $xr9, 2
	alsl.d	$a4, $a4, $a0, 1
	xvpickve2gr.d	$a5, $xr9, 3
	alsl.d	$a5, $a5, $a0, 1
	xvpickve2gr.d	$a6, $xr8, 0
	alsl.d	$a6, $a6, $a0, 1
	xvpickve2gr.d	$a7, $xr8, 1
	alsl.d	$a7, $a7, $a0, 1
	xvpickve2gr.d	$t0, $xr8, 2
	alsl.d	$t0, $t0, $a0, 1
	xvpickve2gr.d	$t1, $xr8, 3
	alsl.d	$t1, $t1, $a0, 1
	xvstelm.h	$xr7, $a2, 0, 0
	xvstelm.h	$xr7, $a3, 0, 1
	xvstelm.h	$xr7, $a4, 0, 2
	xvstelm.h	$xr7, $a5, 0, 3
	xvstelm.h	$xr7, $a6, 0, 4
	xvstelm.h	$xr7, $a7, 0, 5
	xvstelm.h	$xr7, $t0, 0, 6
	xvstelm.h	$xr7, $t1, 0, 7
	xvst	$xr7, $sp, 480
	ld.h	$a2, $sp, 496
	xvbitseti.d	$xr7, $xr4, 1
	xvpickve2gr.d	$a3, $xr7, 0
	slli.d	$a3, $a3, 1
	stx.h	$a2, $a0, $a3
	ld.h	$a2, $sp, 498
	xvpickve2gr.d	$a3, $xr7, 1
	slli.d	$a3, $a3, 1
	stx.h	$a2, $a0, $a3
	ld.h	$a2, $sp, 500
	xvpickve2gr.d	$a3, $xr7, 2
	slli.d	$a3, $a3, 1
	stx.h	$a2, $a0, $a3
	ld.h	$a2, $sp, 502
	xvpickve2gr.d	$a3, $xr7, 3
	slli.d	$a3, $a3, 1
	stx.h	$a2, $a0, $a3
	ld.h	$a2, $sp, 504
	xvbitseti.d	$xr7, $xr3, 1
	xvpickve2gr.d	$a3, $xr7, 0
	slli.d	$a3, $a3, 1
	stx.h	$a2, $a0, $a3
	ld.h	$a2, $sp, 506
	xvpickve2gr.d	$a3, $xr7, 1
	slli.d	$a3, $a3, 1
	stx.h	$a2, $a0, $a3
	ld.h	$a2, $sp, 508
	xvpickve2gr.d	$a3, $xr7, 2
	slli.d	$a3, $a3, 1
	stx.h	$a2, $a0, $a3
	ld.h	$a2, $sp, 510
	xvpickve2gr.d	$a3, $xr7, 3
	slli.d	$a3, $a3, 1
	stx.h	$a2, $a0, $a3
	xvadd.d	$xr6, $xr6, $xr1
	xvadd.d	$xr5, $xr5, $xr1
	xvadd.d	$xr4, $xr4, $xr1
	addi.d	$s7, $s7, 128
	xvadd.d	$xr3, $xr3, $xr1
	bne	$s7, $s3, .LBB0_3
# %bb.4:                                # %vector.body.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a2, %pc_hi20(.LCPI0_4)
	xvld	$xr3, $a2, %pc_lo12(.LCPI0_4)
	pcalau12i	$a2, %pc_hi20(.LCPI0_5)
	xvld	$xr4, $a2, %pc_lo12(.LCPI0_5)
	pcalau12i	$a2, %pc_hi20(.LCPI0_6)
	xvld	$xr5, $a2, %pc_lo12(.LCPI0_6)
	pcalau12i	$a2, %pc_hi20(.LCPI0_7)
	xvld	$xr6, $a2, %pc_lo12(.LCPI0_7)
	move	$s7, $zero
	.p2align	4, , 16
.LBB0_5:                                # %vector.body
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s8, $a0, $s7
	ldx.h	$a2, $a0, $s7
	ld.h	$a3, $s8, 4
	ld.h	$a4, $s8, 8
	ld.h	$a5, $s8, 12
	ld.h	$a6, $s8, 16
	ld.h	$a7, $s8, 20
	ld.h	$t0, $s8, 24
	ld.h	$t1, $s8, 28
	ld.h	$ra, $s8, 32
	vinsgr2vr.h	$vr7, $a2, 0
	vinsgr2vr.h	$vr7, $a3, 1
	vinsgr2vr.h	$vr7, $a4, 2
	vinsgr2vr.h	$vr7, $a5, 3
	vinsgr2vr.h	$vr7, $a6, 4
	vinsgr2vr.h	$vr7, $a7, 5
	vinsgr2vr.h	$vr7, $t0, 6
	vinsgr2vr.h	$vr7, $t1, 7
	ld.h	$a2, $s8, 36
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $ra, 0
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a3, $s8, 40
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a2, 1
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a2, $s8, 44
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a3, 2
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a3, $s8, 48
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a2, 3
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a2, $s8, 52
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a3, 4
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a3, $s8, 56
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a2, 5
	xvpermi.q	$xr7, $xr8, 2
	ld.h	$a2, $s8, 60
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a3, 6
	xvpermi.q	$xr7, $xr8, 2
	xvori.b	$xr8, $xr7, 0
	xvpermi.q	$xr8, $xr7, 1
	vinsgr2vr.h	$vr8, $a2, 7
	xvpermi.q	$xr7, $xr8, 2
	ori	$a2, $t5, 193
	xvreplgr2vr.h	$xr8, $a2
	xvxor.v	$xr7, $xr7, $xr8
	xvbitseti.d	$xr8, $xr5, 0
	xvbitseti.d	$xr9, $xr6, 0
	xvpickve2gr.d	$a2, $xr9, 0
	alsl.d	$a2, $a2, $a0, 1
	xvpickve2gr.d	$a3, $xr9, 1
	alsl.d	$a3, $a3, $a0, 1
	xvpickve2gr.d	$a4, $xr9, 2
	alsl.d	$a4, $a4, $a0, 1
	xvpickve2gr.d	$a5, $xr9, 3
	alsl.d	$a5, $a5, $a0, 1
	xvpickve2gr.d	$a6, $xr8, 0
	alsl.d	$a6, $a6, $a0, 1
	xvpickve2gr.d	$a7, $xr8, 1
	alsl.d	$a7, $a7, $a0, 1
	xvpickve2gr.d	$t0, $xr8, 2
	alsl.d	$t0, $t0, $a0, 1
	xvpickve2gr.d	$t1, $xr8, 3
	alsl.d	$t1, $t1, $a0, 1
	xvstelm.h	$xr7, $a2, 0, 0
	xvstelm.h	$xr7, $a3, 0, 1
	xvstelm.h	$xr7, $a4, 0, 2
	xvstelm.h	$xr7, $a5, 0, 3
	xvstelm.h	$xr7, $a6, 0, 4
	xvstelm.h	$xr7, $a7, 0, 5
	xvstelm.h	$xr7, $t0, 0, 6
	xvstelm.h	$xr7, $t1, 0, 7
	xvst	$xr7, $sp, 448
	ld.h	$a2, $sp, 464
	xvbitseti.d	$xr7, $xr4, 0
	xvpickve2gr.d	$a3, $xr7, 0
	slli.d	$a3, $a3, 1
	stx.h	$a2, $a0, $a3
	ld.h	$a2, $sp, 466
	xvpickve2gr.d	$a3, $xr7, 1
	slli.d	$a3, $a3, 1
	stx.h	$a2, $a0, $a3
	ld.h	$a2, $sp, 468
	xvpickve2gr.d	$a3, $xr7, 2
	slli.d	$a3, $a3, 1
	stx.h	$a2, $a0, $a3
	ld.h	$a2, $sp, 470
	xvpickve2gr.d	$a3, $xr7, 3
	slli.d	$a3, $a3, 1
	stx.h	$a2, $a0, $a3
	ld.h	$a2, $sp, 472
	xvbitseti.d	$xr7, $xr3, 0
	xvpickve2gr.d	$a3, $xr7, 0
	slli.d	$a3, $a3, 1
	stx.h	$a2, $a0, $a3
	ld.h	$a2, $sp, 474
	xvpickve2gr.d	$a3, $xr7, 1
	slli.d	$a3, $a3, 1
	stx.h	$a2, $a0, $a3
	ld.h	$a2, $sp, 476
	xvpickve2gr.d	$a3, $xr7, 2
	slli.d	$a3, $a3, 1
	stx.h	$a2, $a0, $a3
	ld.h	$a2, $sp, 478
	xvpickve2gr.d	$a3, $xr7, 3
	slli.d	$a3, $a3, 1
	stx.h	$a2, $a0, $a3
	xvadd.d	$xr6, $xr6, $xr2
	xvadd.d	$xr5, $xr5, $xr2
	xvadd.d	$xr4, $xr4, $xr2
	addi.d	$s7, $s7, 64
	xvadd.d	$xr3, $xr3, $xr2
	bne	$s7, $s3, .LBB0_5
.LBB0_6:                                # %crc_table.exit
                                        #   in Loop: Header=BB0_1 Depth=1
	srli.d	$a2, $s5, 1
	sll.d	$a3, $s2, $a1
	andi	$a3, $a3, 137
	sltui	$a3, $a3, 1
	xor	$a4, $a2, $s6
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	bstrpick.d	$a3, $a2, 15, 1
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	xor	$a4, $a3, $s6
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	bstrpick.d	$a3, $a2, 15, 1
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	xor	$a4, $a3, $s6
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	bstrpick.d	$a3, $a2, 15, 1
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	xor	$a4, $a3, $s6
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	bstrpick.d	$a3, $a2, 15, 1
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	xor	$a4, $a3, $s6
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	bstrpick.d	$a3, $a2, 15, 1
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	xor	$a4, $a3, $s6
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	bstrpick.d	$a3, $a2, 15, 1
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	xor	$a4, $a3, $s6
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	bstrpick.d	$a3, $a2, 15, 1
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	xor	$a4, $a3, $s6
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	bstrpick.d	$a3, $a2, 15, 1
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	xor	$a4, $a3, $s6
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	bstrpick.d	$a3, $a2, 15, 1
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	xor	$a4, $a3, $s6
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	bstrpick.d	$a3, $a2, 15, 1
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	xor	$a4, $a3, $s6
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	bstrpick.d	$a3, $a2, 15, 1
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	xor	$a4, $a3, $s6
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	bstrpick.d	$a3, $a2, 15, 1
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	xor	$a4, $a3, $s6
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	bstrpick.d	$a3, $a2, 15, 1
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	xor	$a4, $a3, $s6
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	bstrpick.d	$a3, $a2, 15, 1
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	xor	$a4, $a3, $s6
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	bstrpick.d	$a3, $a2, 15, 1
	andi	$a4, $s5, 255
	slli.d	$a4, $a4, 1
	ldx.hu	$a4, $a0, $a4
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	srli.d	$a5, $s5, 8
	andi	$a6, $a4, 255
	xor	$a5, $a6, $a5
	xor	$a6, $a3, $s6
	masknez	$a6, $a6, $a2
	slli.d	$a5, $a5, 1
	ldx.hu	$a5, $a0, $a5
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a6
	srli.d	$a3, $a4, 8
	xor	$a3, $a5, $a3
	bstrpick.d	$a2, $a2, 15, 0
	bne	$a2, $a3, .LBB0_9
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	addi.d	$a1, $a1, 1
	bne	$a1, $s4, .LBB0_1
# %bb.8:
	move	$a0, $zero
	b	.LBB0_10
.LBB0_9:
	ori	$a0, $zero, 1
.LBB0_10:
	addi.d	$sp, $fp, -608
	ld.d	$s8, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 584                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 592                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 600                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 608
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	main.crc_initval,@object        # @main.crc_initval
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	1, 0x0
main.crc_initval:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	11                              # 0xb
	.half	16                              # 0x10
	.half	129                             # 0x81
	.half	255                             # 0xff
	.half	4129                            # 0x1021
	.half	16384                           # 0x4000
	.size	main.crc_initval, 16

	.type	CRCTable,@object                # @CRCTable
	.local	CRCTable
	.comm	CRCTable,512,2
	.section	".note.GNU-stack","",@progbits
	.addrsig
