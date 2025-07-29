	.file	"LzmaEnc.c"
	.text
	.globl	LzmaEncProps_Init               # -- Begin function LzmaEncProps_Init
	.p2align	5
	.type	LzmaEncProps_Init,@function
LzmaEncProps_Init:                      # @LzmaEncProps_Init
# %bb.0:
	ori	$a1, $zero, 5
	st.d	$a1, $a0, 0
	addi.w	$a1, $zero, -1
	st.d	$a1, $a0, 8
	st.d	$a1, $a0, 16
	st.d	$a1, $a0, 24
	lu32i.d	$a1, 0
	st.d	$a1, $a0, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	st.d	$a1, $a0, 40
	ret
.Lfunc_end0:
	.size	LzmaEncProps_Init, .Lfunc_end0-LzmaEncProps_Init
                                        # -- End function
	.globl	LzmaEncProps_Normalize          # -- Begin function LzmaEncProps_Normalize
	.p2align	5
	.type	LzmaEncProps_Normalize,@function
LzmaEncProps_Normalize:                 # @LzmaEncProps_Normalize
# %bb.0:
	ld.w	$a1, $a0, 0
	slti	$a2, $a1, 0
	masknez	$a3, $a1, $a2
	ld.w	$a4, $a0, 4
	ori	$a1, $zero, 5
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	st.w	$a2, $a0, 0
	beqz	$a4, .LBB1_11
# %bb.1:
	ld.w	$a3, $a0, 8
	addi.w	$a1, $zero, -1
	bge	$a1, $a3, .LBB1_15
.LBB1_2:
	ld.w	$a3, $a0, 12
	bge	$a1, $a3, .LBB1_16
.LBB1_3:
	ld.w	$a3, $a0, 16
	bge	$a1, $a3, .LBB1_17
.LBB1_4:
	ld.w	$a3, $a0, 20
	bge	$a1, $a3, .LBB1_18
.LBB1_5:
	ld.w	$a4, $a0, 24
	bge	$a1, $a4, .LBB1_19
.LBB1_6:
	ld.w	$a2, $a0, 28
	bge	$a1, $a2, .LBB1_20
.LBB1_7:
	ld.w	$a5, $a0, 32
	bge	$a1, $a5, .LBB1_21
.LBB1_8:
	ld.w	$a5, $a0, 36
	beqz	$a5, .LBB1_22
.LBB1_9:
	ld.w	$a4, $a0, 44
	bge	$a1, $a4, .LBB1_23
.LBB1_10:
	ret
.LBB1_11:
	blt	$a1, $a2, .LBB1_13
# %bb.12:
	slli.d	$a1, $a2, 1
	addi.d	$a1, $a1, 14
	bstrpick.d	$a1, $a1, 31, 1
	slli.d	$a1, $a1, 1
	ori	$a3, $zero, 1
	sll.w	$a1, $a3, $a1
	b	.LBB1_14
.LBB1_13:
	addi.d	$a1, $a2, -6
	sltui	$a1, $a1, 1
	lu12i.w	$a3, 16384
	masknez	$a3, $a3, $a1
	lu12i.w	$a4, 8192
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a3
.LBB1_14:
	st.w	$a1, $a0, 4
	ld.w	$a3, $a0, 8
	addi.w	$a1, $zero, -1
	blt	$a1, $a3, .LBB1_2
.LBB1_15:
	ori	$a3, $zero, 3
	st.w	$a3, $a0, 8
	ld.w	$a3, $a0, 12
	blt	$a1, $a3, .LBB1_3
.LBB1_16:
	st.w	$zero, $a0, 12
	ld.w	$a3, $a0, 16
	blt	$a1, $a3, .LBB1_4
.LBB1_17:
	ori	$a3, $zero, 2
	st.w	$a3, $a0, 16
	ld.w	$a3, $a0, 20
	blt	$a1, $a3, .LBB1_5
.LBB1_18:
	ori	$a3, $zero, 4
	slt	$a3, $a3, $a2
	st.w	$a3, $a0, 20
	ld.w	$a4, $a0, 24
	blt	$a1, $a4, .LBB1_6
.LBB1_19:
	slti	$a2, $a2, 7
	ori	$a4, $zero, 64
	masknez	$a4, $a4, $a2
	ori	$a5, $zero, 32
	maskeqz	$a2, $a5, $a2
	or	$a4, $a2, $a4
	st.w	$a4, $a0, 24
	ld.w	$a2, $a0, 28
	blt	$a1, $a2, .LBB1_7
.LBB1_20:
	sltu	$a2, $zero, $a3
	st.w	$a2, $a0, 28
	ld.w	$a5, $a0, 32
	blt	$a1, $a5, .LBB1_8
.LBB1_21:
	ori	$a5, $zero, 4
	st.w	$a5, $a0, 32
	ld.w	$a5, $a0, 36
	bnez	$a5, .LBB1_9
.LBB1_22:
	bstrpick.d	$a4, $a4, 31, 1
	addi.d	$a4, $a4, 16
	sltui	$a5, $a2, 1
	srl.w	$a4, $a4, $a5
	st.w	$a4, $a0, 36
	ld.w	$a4, $a0, 44
	blt	$a1, $a4, .LBB1_10
.LBB1_23:
	sltui	$a1, $a2, 1
	sltui	$a2, $a3, 1
	or	$a1, $a1, $a2
	ori	$a2, $zero, 2
	sub.d	$a1, $a2, $a1
	st.w	$a1, $a0, 44
	ret
.Lfunc_end1:
	.size	LzmaEncProps_Normalize, .Lfunc_end1-LzmaEncProps_Normalize
                                        # -- End function
	.globl	LzmaEncProps_GetDictSize        # -- Begin function LzmaEncProps_GetDictSize
	.p2align	5
	.type	LzmaEncProps_GetDictSize,@function
LzmaEncProps_GetDictSize:               # @LzmaEncProps_GetDictSize
# %bb.0:
	move	$a1, $a0
	ld.w	$a0, $a0, 4
	beqz	$a0, .LBB2_2
# %bb.1:                                # %LzmaEncProps_Normalize.exit
	ret
.LBB2_2:
	ld.w	$a0, $a1, 0
	slti	$a1, $a0, 0
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 5
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	blt	$a2, $a0, .LBB2_4
# %bb.3:
	slli.d	$a0, $a0, 1
	addi.d	$a0, $a0, 14
	bstrpick.d	$a0, $a0, 31, 1
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 1
	sll.w	$a0, $a1, $a0
	ret
.LBB2_4:
	addi.d	$a0, $a0, -6
	sltui	$a0, $a0, 1
	lu12i.w	$a1, 16384
	masknez	$a1, $a1, $a0
	lu12i.w	$a2, 8192
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ret
.Lfunc_end2:
	.size	LzmaEncProps_GetDictSize, .Lfunc_end2-LzmaEncProps_GetDictSize
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function LzmaEnc_FastPosInit
.LCPI3_0:
	.dword	578721382704613384              # 0x808080808080808
	.dword	651061555542690057              # 0x909090909090909
	.text
	.globl	LzmaEnc_FastPosInit
	.p2align	5
	.type	LzmaEnc_FastPosInit,@function
LzmaEnc_FastPosInit:                    # @LzmaEnc_FastPosInit
# %bb.0:                                # %vector.ph
	lu12i.w	$a1, 12320
	ori	$a1, $a1, 256
	lu32i.d	$a1, 328708
	lu52i.d	$a1, $a1, 80
	st.d	$a1, $a0, 0
	lu12i.w	$a1, 24672
	ori	$a1, $a1, 1542
	pcalau12i	$a2, %pc_hi20(.LCPI3_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI3_0)
	lu32i.d	$a1, 460551
	lu52i.d	$a1, $a1, 112
	st.d	$a1, $a0, 8
	vst	$vr0, $a0, 16
	lu12i.w	$a1, 41120
	ori	$a1, $a1, 2570
	bstrins.d	$a1, $a1, 59, 32
	st.d	$a1, $a0, 32
	st.d	$a1, $a0, 40
	lu12i.w	$a1, 45232
	ori	$a1, $a1, 2827
	bstrins.d	$a1, $a1, 59, 32
	st.d	$a1, $a0, 48
	st.d	$a1, $a0, 56
	lu12i.w	$a1, 49344
	ori	$a1, $a1, 3084
	bstrins.d	$a1, $a1, 59, 32
	st.d	$a1, $a0, 64
	st.d	$a1, $a0, 72
	st.d	$a1, $a0, 80
	st.d	$a1, $a0, 88
	lu12i.w	$a1, 53456
	ori	$a1, $a1, 3341
	bstrins.d	$a1, $a1, 59, 32
	st.d	$a1, $a0, 120
	st.d	$a1, $a0, 112
	st.d	$a1, $a0, 104
	st.d	$a1, $a0, 96
	lu12i.w	$a1, 57568
	ori	$a1, $a1, 3598
	bstrins.d	$a1, $a1, 59, 32
	st.d	$a1, $a0, 128
	st.d	$a1, $a0, 136
	st.d	$a1, $a0, 144
	st.d	$a1, $a0, 152
	st.d	$a1, $a0, 160
	st.d	$a1, $a0, 168
	st.d	$a1, $a0, 176
	vrepli.b	$vr0, 16
	vst	$vr0, $a0, 256
	vst	$vr0, $a0, 272
	vst	$vr0, $a0, 288
	vst	$vr0, $a0, 304
	vst	$vr0, $a0, 320
	vst	$vr0, $a0, 336
	vst	$vr0, $a0, 352
	vst	$vr0, $a0, 368
	vrepli.b	$vr0, 17
	vst	$vr0, $a0, 384
	vst	$vr0, $a0, 400
	vst	$vr0, $a0, 416
	vst	$vr0, $a0, 432
	vst	$vr0, $a0, 448
	vst	$vr0, $a0, 464
	vst	$vr0, $a0, 480
	vst	$vr0, $a0, 496
	vrepli.b	$vr0, 18
	vst	$vr0, $a0, 512
	vst	$vr0, $a0, 528
	vst	$vr0, $a0, 544
	vst	$vr0, $a0, 560
	vst	$vr0, $a0, 576
	vst	$vr0, $a0, 592
	vst	$vr0, $a0, 608
	vst	$vr0, $a0, 624
	vst	$vr0, $a0, 640
	vst	$vr0, $a0, 656
	vst	$vr0, $a0, 672
	vst	$vr0, $a0, 688
	vst	$vr0, $a0, 704
	vst	$vr0, $a0, 720
	vst	$vr0, $a0, 736
	vst	$vr0, $a0, 752
	vrepli.b	$vr0, 19
	vst	$vr0, $a0, 768
	vst	$vr0, $a0, 784
	vst	$vr0, $a0, 800
	vst	$vr0, $a0, 816
	vst	$vr0, $a0, 832
	vst	$vr0, $a0, 848
	vst	$vr0, $a0, 864
	vst	$vr0, $a0, 880
	vst	$vr0, $a0, 896
	vst	$vr0, $a0, 912
	vst	$vr0, $a0, 928
	vst	$vr0, $a0, 944
	vst	$vr0, $a0, 960
	vst	$vr0, $a0, 976
	vst	$vr0, $a0, 992
	vst	$vr0, $a0, 1008
	vrepli.b	$vr0, 20
	vst	$vr0, $a0, 1024
	vst	$vr0, $a0, 1040
	vst	$vr0, $a0, 1056
	vst	$vr0, $a0, 1072
	vst	$vr0, $a0, 1088
	vst	$vr0, $a0, 1104
	vst	$vr0, $a0, 1120
	vst	$vr0, $a0, 1136
	vst	$vr0, $a0, 1152
	vst	$vr0, $a0, 1168
	vst	$vr0, $a0, 1184
	vst	$vr0, $a0, 1200
	vst	$vr0, $a0, 1216
	vst	$vr0, $a0, 1232
	vst	$vr0, $a0, 1248
	vst	$vr0, $a0, 1264
	vst	$vr0, $a0, 1280
	vst	$vr0, $a0, 1296
	vst	$vr0, $a0, 1312
	vst	$vr0, $a0, 1328
	vst	$vr0, $a0, 1344
	vst	$vr0, $a0, 1360
	vst	$vr0, $a0, 1376
	vst	$vr0, $a0, 1392
	vst	$vr0, $a0, 1408
	vst	$vr0, $a0, 1424
	vst	$vr0, $a0, 1440
	vst	$vr0, $a0, 1456
	vst	$vr0, $a0, 1472
	vst	$vr0, $a0, 1488
	vst	$vr0, $a0, 1504
	vst	$vr0, $a0, 1520
	vrepli.b	$vr0, 21
	vst	$vr0, $a0, 1536
	vst	$vr0, $a0, 1552
	vst	$vr0, $a0, 1568
	vst	$vr0, $a0, 1584
	vst	$vr0, $a0, 1600
	vst	$vr0, $a0, 1616
	vst	$vr0, $a0, 1632
	vst	$vr0, $a0, 1648
	vst	$vr0, $a0, 1664
	vst	$vr0, $a0, 1680
	vst	$vr0, $a0, 1696
	vst	$vr0, $a0, 1712
	vst	$vr0, $a0, 1728
	vst	$vr0, $a0, 1744
	vst	$vr0, $a0, 1760
	vst	$vr0, $a0, 1776
	vst	$vr0, $a0, 1792
	vst	$vr0, $a0, 1808
	vst	$vr0, $a0, 1824
	vst	$vr0, $a0, 1840
	vst	$vr0, $a0, 1856
	vst	$vr0, $a0, 1872
	vst	$vr0, $a0, 1888
	vst	$vr0, $a0, 1904
	vst	$vr0, $a0, 1920
	vst	$vr0, $a0, 1936
	vst	$vr0, $a0, 1952
	vst	$vr0, $a0, 1968
	vst	$vr0, $a0, 1984
	vst	$vr0, $a0, 2000
	vst	$vr0, $a0, 2016
	vst	$vr0, $a0, 2032
	vrepli.b	$vr0, 22
	ori	$a2, $zero, 2048
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2064
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2080
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2096
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2112
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2128
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2144
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2160
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2176
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2192
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2208
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2224
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2240
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2256
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2272
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2288
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2304
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2320
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2336
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2352
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2368
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2384
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2400
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2416
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2432
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2448
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2464
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2480
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2496
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2512
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2528
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2544
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2560
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2576
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2592
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2608
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2624
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2640
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2656
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2672
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2688
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2704
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2720
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2736
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2752
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2768
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2784
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2800
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2816
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2832
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2848
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2864
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2880
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2896
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2912
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2928
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2944
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2960
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2976
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 2992
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3008
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3024
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3040
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3056
	vstx	$vr0, $a0, $a2
	vrepli.b	$vr0, 23
	ori	$a2, $zero, 3072
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3088
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3104
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3120
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3136
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3152
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3168
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3184
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3200
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3216
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3232
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3248
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3264
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3280
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3296
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3312
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3328
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3344
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3360
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3376
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3392
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3408
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3424
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3440
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3456
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3472
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3488
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3504
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3520
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3536
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3552
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3568
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3584
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3600
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3616
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3632
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3648
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3664
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3680
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3696
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3712
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3728
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3744
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3760
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3776
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3792
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3808
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3824
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3840
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3856
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3872
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3888
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3904
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3920
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3936
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3952
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3968
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 4064
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 4048
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 4032
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 4016
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 4000
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 3984
	vstx	$vr0, $a0, $a2
	ori	$a2, $zero, 4080
	vstx	$vr0, $a0, $a2
	vrepli.b	$vr0, 24
	st.d	$a1, $a0, 184
	lu12i.w	$a1, 1
	ori	$a2, $a1, 16
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 32
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 48
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 64
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 80
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 96
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 112
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 128
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 144
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 160
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 176
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 192
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 208
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 224
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 240
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 256
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 272
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 288
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 304
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 320
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 336
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 352
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 368
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 384
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 400
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 416
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 432
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 448
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 464
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 480
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 496
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 512
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 528
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 544
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 560
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 576
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 592
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 608
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 624
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 640
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 656
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 672
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 688
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 704
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 720
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 736
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 752
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 768
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 784
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 800
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 816
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 832
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 848
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 864
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 880
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 896
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 912
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 928
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 944
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 960
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 976
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 992
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1008
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1024
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1040
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1056
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1072
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1088
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1104
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1120
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1136
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1152
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1168
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1184
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1200
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1216
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1232
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1248
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1264
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1280
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1296
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1312
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1328
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1344
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1360
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1376
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1392
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1408
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1424
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1440
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1456
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1472
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1488
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1504
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1520
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1536
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1552
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1568
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1584
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1600
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1616
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1632
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1648
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1664
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1680
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1696
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1712
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1728
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1744
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1760
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1776
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1792
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1808
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1824
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1840
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1856
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1872
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1888
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1904
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1920
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1936
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1952
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1968
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 1984
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2000
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2016
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2032
	vstx	$vr0, $a0, $a2
	lu12i.w	$a2, 61680
	ori	$a2, $a2, 3855
	bstrins.d	$a2, $a2, 59, 32
	st.d	$a2, $a0, 248
	st.d	$a2, $a0, 240
	st.d	$a2, $a0, 232
	st.d	$a2, $a0, 224
	st.d	$a2, $a0, 216
	st.d	$a2, $a0, 208
	st.d	$a2, $a0, 200
	vstx	$vr0, $a0, $a1
	vrepli.b	$vr0, 25
	st.d	$a2, $a0, 192
	ori	$a2, $a1, 2048
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2064
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2080
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2096
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2112
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2128
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2144
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2160
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2176
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2192
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2208
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2224
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2240
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2256
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2272
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2288
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2304
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2320
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2336
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2352
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2368
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2384
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2400
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2416
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2432
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2448
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2464
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2480
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2496
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2512
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2528
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2544
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2560
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2576
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2592
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2608
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2624
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2640
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2656
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2672
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2688
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2704
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2720
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2736
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2752
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2768
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2784
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2800
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2816
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2832
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2848
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2864
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2880
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2896
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2912
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2928
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2944
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2960
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2976
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 2992
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3008
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3024
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3040
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3056
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3072
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3088
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3104
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3120
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3136
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3152
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3168
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3184
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3200
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3216
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3232
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3248
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3264
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3280
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3296
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3312
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3328
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3344
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3360
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3376
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3392
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3408
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3424
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3440
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3456
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3472
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3488
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3504
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3520
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3536
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3552
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3568
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3584
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3600
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3616
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3632
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3648
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3664
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3680
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3696
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3712
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3728
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3744
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3760
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3776
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3792
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3808
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3824
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3840
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3856
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3872
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3888
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3904
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3920
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3936
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3952
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3968
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 3984
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 4000
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 4016
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 4032
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 4048
	vstx	$vr0, $a0, $a2
	ori	$a2, $a1, 4064
	vstx	$vr0, $a0, $a2
	ori	$a1, $a1, 4080
	vstx	$vr0, $a0, $a1
	ret
.Lfunc_end3:
	.size	LzmaEnc_FastPosInit, .Lfunc_end3-LzmaEnc_FastPosInit
                                        # -- End function
	.globl	LzmaEnc_SaveState               # -- Begin function LzmaEnc_SaveState
	.p2align	5
	.type	LzmaEnc_SaveState,@function
LzmaEnc_SaveState:                      # @LzmaEnc_SaveState
# %bb.0:                                # %.preheader
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	lu12i.w	$s7, 61
	ori	$s1, $s7, 2372
	add.d	$s2, $a0, $s1
	lu12i.w	$s4, 51
	ori	$s8, $s4, 1512
	add.d	$s3, $a0, $s8
	lu12i.w	$s5, 62
	ori	$a0, $s5, 52
	add.d	$a0, $fp, $a0
	lu12i.w	$s6, 52
	ori	$a1, $s6, 2228
	add.d	$a1, $fp, $a1
	lu12i.w	$a2, 4
	ori	$s0, $a2, 2120
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 66
	ori	$a0, $a0, 2172
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, 57
	ori	$a1, $a1, 252
	add.d	$a1, $fp, $a1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $s7, 2512
	add.d	$a1, $fp, $a0
	ori	$a2, $s6, 592
	add.d	$a3, $fp, $a2
	vldx	$vr0, $fp, $a2
	vld	$vr1, $a3, 16
	ori	$a2, $s6, 1072
	add.d	$a3, $fp, $a2
	vstx	$vr0, $fp, $a0
	vst	$vr1, $a1, 16
	vldx	$vr0, $fp, $a2
	vld	$vr1, $a3, 16
	ori	$a0, $s7, 2992
	add.d	$a1, $fp, $a0
	vstx	$vr0, $fp, $a0
	vst	$vr1, $a1, 16
	ori	$a0, $s6, 624
	add.d	$a1, $fp, $a0
	vldx	$vr0, $fp, $a0
	vld	$vr1, $a1, 16
	ori	$a0, $s7, 2544
	add.d	$a1, $fp, $a0
	vstx	$vr0, $fp, $a0
	vst	$vr1, $a1, 16
	ori	$a0, $s6, 1104
	add.d	$a1, $fp, $a0
	vldx	$vr0, $fp, $a0
	vld	$vr1, $a1, 16
	ori	$a0, $s7, 3024
	add.d	$a1, $fp, $a0
	vstx	$vr0, $fp, $a0
	vst	$vr1, $a1, 16
	ori	$a0, $s6, 656
	add.d	$a1, $fp, $a0
	vldx	$vr0, $fp, $a0
	vld	$vr1, $a1, 16
	ori	$a0, $s7, 2576
	add.d	$a1, $fp, $a0
	vstx	$vr0, $fp, $a0
	vst	$vr1, $a1, 16
	ori	$a0, $s6, 1136
	add.d	$a1, $fp, $a0
	vldx	$vr0, $fp, $a0
	vld	$vr1, $a1, 16
	ori	$a0, $s7, 3056
	add.d	$a1, $fp, $a0
	vstx	$vr0, $fp, $a0
	vst	$vr1, $a1, 16
	ori	$a0, $s6, 688
	add.d	$a1, $fp, $a0
	vldx	$vr0, $fp, $a0
	vld	$vr1, $a1, 16
	ori	$a0, $s7, 2608
	add.d	$a1, $fp, $a0
	vstx	$vr0, $fp, $a0
	vst	$vr1, $a1, 16
	ori	$a0, $s6, 1168
	add.d	$a1, $fp, $a0
	vldx	$vr0, $fp, $a0
	vld	$vr1, $a1, 16
	ori	$a0, $s7, 3088
	add.d	$a1, $fp, $a0
	vstx	$vr0, $fp, $a0
	vst	$vr1, $a1, 16
	ori	$a0, $s6, 720
	add.d	$a1, $fp, $a0
	vldx	$vr0, $fp, $a0
	vld	$vr1, $a1, 16
	ori	$a0, $s7, 2640
	add.d	$a1, $fp, $a0
	vstx	$vr0, $fp, $a0
	vst	$vr1, $a1, 16
	ori	$a0, $s6, 1200
	add.d	$a1, $fp, $a0
	vldx	$vr0, $fp, $a0
	vld	$vr1, $a1, 16
	ori	$a0, $s7, 3120
	add.d	$a1, $fp, $a0
	vstx	$vr0, $fp, $a0
	vst	$vr1, $a1, 16
	ori	$a0, $s6, 752
	add.d	$a1, $fp, $a0
	vldx	$vr0, $fp, $a0
	vld	$vr1, $a1, 16
	ori	$a0, $s7, 2672
	add.d	$a1, $fp, $a0
	vstx	$vr0, $fp, $a0
	vst	$vr1, $a1, 16
	ori	$a0, $s6, 1232
	add.d	$a1, $fp, $a0
	vldx	$vr0, $fp, $a0
	vld	$vr1, $a1, 16
	ori	$a0, $s7, 3152
	add.d	$a1, $fp, $a0
	vstx	$vr0, $fp, $a0
	vst	$vr1, $a1, 16
	ori	$a0, $s6, 784
	add.d	$a1, $fp, $a0
	vldx	$vr0, $fp, $a0
	vld	$vr1, $a1, 16
	ori	$a0, $s7, 2704
	add.d	$a1, $fp, $a0
	vstx	$vr0, $fp, $a0
	vst	$vr1, $a1, 16
	ori	$a0, $s6, 1264
	add.d	$a1, $fp, $a0
	vldx	$vr0, $fp, $a0
	vld	$vr1, $a1, 16
	ori	$a0, $s7, 3184
	add.d	$a1, $fp, $a0
	vstx	$vr0, $fp, $a0
	vst	$vr1, $a1, 16
	ori	$a0, $s6, 816
	add.d	$a1, $fp, $a0
	vldx	$vr0, $fp, $a0
	vld	$vr1, $a1, 16
	ori	$a0, $s7, 2736
	add.d	$a1, $fp, $a0
	vstx	$vr0, $fp, $a0
	vst	$vr1, $a1, 16
	ori	$a0, $s6, 1296
	add.d	$a1, $fp, $a0
	vldx	$vr0, $fp, $a0
	vld	$vr1, $a1, 16
	ori	$a0, $s7, 3216
	add.d	$a1, $fp, $a0
	vstx	$vr0, $fp, $a0
	vst	$vr1, $a1, 16
	ori	$a0, $s6, 848
	add.d	$a1, $fp, $a0
	vldx	$vr0, $fp, $a0
	vld	$vr1, $a1, 16
	ori	$a0, $s7, 2768
	add.d	$a1, $fp, $a0
	vstx	$vr0, $fp, $a0
	vst	$vr1, $a1, 16
	ori	$a0, $s6, 1328
	add.d	$a1, $fp, $a0
	vldx	$vr0, $fp, $a0
	vld	$vr1, $a1, 16
	ori	$a0, $s7, 3248
	add.d	$a1, $fp, $a0
	vstx	$vr0, $fp, $a0
	vst	$vr1, $a1, 16
	ori	$a0, $s6, 880
	add.d	$a1, $fp, $a0
	vldx	$vr0, $fp, $a0
	vld	$vr1, $a1, 16
	ori	$a0, $s7, 2800
	add.d	$a1, $fp, $a0
	vstx	$vr0, $fp, $a0
	vst	$vr1, $a1, 16
	ori	$a0, $s6, 1360
	add.d	$a1, $fp, $a0
	vldx	$vr0, $fp, $a0
	vld	$vr1, $a1, 16
	ori	$a0, $s7, 3280
	add.d	$a1, $fp, $a0
	vstx	$vr0, $fp, $a0
	vst	$vr1, $a1, 16
	ori	$a0, $s6, 912
	add.d	$a1, $fp, $a0
	vldx	$vr0, $fp, $a0
	vld	$vr1, $a1, 16
	ori	$a0, $s7, 2832
	add.d	$a1, $fp, $a0
	vstx	$vr0, $fp, $a0
	vst	$vr1, $a1, 16
	ori	$a0, $s6, 1392
	add.d	$a1, $fp, $a0
	vldx	$vr0, $fp, $a0
	vld	$vr1, $a1, 16
	ori	$a0, $s7, 3312
	add.d	$a1, $fp, $a0
	vstx	$vr0, $fp, $a0
	vst	$vr1, $a1, 16
	ori	$a0, $s6, 944
	vldx	$vr0, $fp, $a0
	ori	$a1, $s7, 2864
	add.d	$a0, $fp, $a0
	vld	$vr1, $a0, 16
	vstx	$vr0, $fp, $a1
	ldx.w	$a0, $fp, $s8
	add.d	$a1, $fp, $a1
	vst	$vr1, $a1, 16
	ori	$a1, $s6, 1424
	vldx	$vr0, $fp, $a1
	lu12i.w	$s0, 71
	ori	$a2, $s7, 3344
	add.d	$a1, $fp, $a1
	vstx	$vr0, $fp, $a2
	vld	$vr0, $a1, 16
	ori	$a1, $s0, 212
	stx.w	$a0, $fp, $a1
	add.d	$a0, $fp, $a2
	vst	$vr0, $a0, 16
	ori	$a0, $s7, 3376
	add.d	$a0, $fp, $a0
	ori	$a1, $s6, 1456
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 128
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $s7, 3504
	add.d	$a0, $fp, $a0
	ori	$a1, $s6, 1584
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 128
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $s7, 3632
	add.d	$a0, $fp, $a0
	ori	$a1, $s6, 1712
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 128
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $s7, 3760
	add.d	$a0, $fp, $a0
	ori	$a1, $s6, 1840
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 128
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $s6, 976
	add.d	$a1, $fp, $a0
	vld	$vr0, $a1, 8
	ori	$a1, $s7, 2896
	add.d	$a2, $fp, $a1
	ldx.d	$a0, $fp, $a0
	vst	$vr0, $a2, 8
	ori	$a2, $s7, 2920
	ori	$a3, $s6, 1000
	vldx	$vr0, $fp, $a3
	add.d	$a3, $fp, $a3
	vld	$vr1, $a3, 16
	add.d	$a3, $fp, $a2
	vstx	$vr0, $fp, $a2
	ori	$a2, $s6, 1032
	vldx	$vr0, $fp, $a2
	vst	$vr1, $a3, 16
	stx.d	$a0, $fp, $a1
	ori	$a0, $s7, 2952
	vstx	$vr0, $fp, $a0
	ori	$a0, $s6, 1048
	add.d	$a1, $fp, $a0
	vldx	$vr0, $fp, $a0
	ld.d	$a0, $a1, 16
	ori	$a1, $s7, 2968
	add.d	$a2, $fp, $a1
	vstx	$vr0, $fp, $a1
	st.d	$a0, $a2, 16
	ori	$a0, $s7, 3888
	add.d	$a0, $fp, $a0
	ori	$a1, $s6, 1968
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 228
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $s6, 2196
	vldx	$vr0, $fp, $a0
	add.d	$a0, $fp, $a0
	vld	$vr1, $a0, 16
	ori	$a0, $s5, 20
	vstx	$vr0, $fp, $a0
	add.d	$a0, $fp, $a0
	vst	$vr1, $a0, 16
	ori	$a0, $s4, 1496
	vldx	$vr0, $fp, $a0
	ori	$a3, $s0, 196
	ldx.wu	$a2, $fp, $s1
	ld.d	$a0, $s2, 132
	ldptr.d	$a1, $s3, 3168
	ori	$a4, $zero, 768
	sll.w	$a2, $a4, $a2
	slli.d	$a2, $a2, 1
	vstx	$vr0, $fp, $a3
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(memcpy)
	jr	$t8
.Lfunc_end4:
	.size	LzmaEnc_SaveState, .Lfunc_end4-LzmaEnc_SaveState
                                        # -- End function
	.globl	LzmaEnc_RestoreState            # -- Begin function LzmaEnc_RestoreState
	.p2align	5
	.type	LzmaEnc_RestoreState,@function
LzmaEnc_RestoreState:                   # @LzmaEnc_RestoreState
# %bb.0:                                # %.preheader
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	lu12i.w	$s7, 61
	ori	$s2, $s7, 2372
	add.d	$s1, $a0, $s2
	lu12i.w	$s4, 51
	ori	$s8, $s4, 1512
	add.d	$s3, $a0, $s8
	lu12i.w	$s5, 52
	ori	$a0, $s5, 2228
	add.d	$a0, $fp, $a0
	lu12i.w	$s6, 62
	ori	$a1, $s6, 52
	add.d	$a1, $fp, $a1
	lu12i.w	$a2, 4
	ori	$s0, $a2, 2120
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 57
	ori	$a0, $a0, 252
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, 66
	ori	$a1, $a1, 2172
	add.d	$a1, $fp, $a1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	lu12i.w	$s0, 71
	ori	$a0, $s0, 212
	ldx.w	$a0, $fp, $a0
	ori	$a1, $s5, 592
	add.d	$a2, $fp, $a1
	ori	$a3, $s7, 2512
	add.d	$a4, $fp, $a3
	vldx	$vr0, $fp, $a3
	vld	$vr1, $a4, 16
	ori	$a3, $s7, 2992
	add.d	$a4, $fp, $a3
	vstx	$vr0, $fp, $a1
	vst	$vr1, $a2, 16
	vldx	$vr0, $fp, $a3
	vld	$vr1, $a4, 16
	ori	$a1, $s5, 1072
	add.d	$a2, $fp, $a1
	vstx	$vr0, $fp, $a1
	vst	$vr1, $a2, 16
	ori	$a1, $s7, 2544
	add.d	$a2, $fp, $a1
	vldx	$vr0, $fp, $a1
	vld	$vr1, $a2, 16
	ori	$a1, $s5, 624
	add.d	$a2, $fp, $a1
	vstx	$vr0, $fp, $a1
	vst	$vr1, $a2, 16
	ori	$a1, $s7, 3024
	add.d	$a2, $fp, $a1
	vldx	$vr0, $fp, $a1
	vld	$vr1, $a2, 16
	ori	$a1, $s5, 1104
	add.d	$a2, $fp, $a1
	vstx	$vr0, $fp, $a1
	vst	$vr1, $a2, 16
	ori	$a1, $s7, 2576
	add.d	$a2, $fp, $a1
	vldx	$vr0, $fp, $a1
	vld	$vr1, $a2, 16
	ori	$a1, $s5, 656
	add.d	$a2, $fp, $a1
	vstx	$vr0, $fp, $a1
	vst	$vr1, $a2, 16
	ori	$a1, $s7, 3056
	add.d	$a2, $fp, $a1
	vldx	$vr0, $fp, $a1
	vld	$vr1, $a2, 16
	ori	$a1, $s5, 1136
	add.d	$a2, $fp, $a1
	vstx	$vr0, $fp, $a1
	vst	$vr1, $a2, 16
	ori	$a1, $s7, 2608
	add.d	$a2, $fp, $a1
	vldx	$vr0, $fp, $a1
	vld	$vr1, $a2, 16
	ori	$a1, $s5, 688
	add.d	$a2, $fp, $a1
	vstx	$vr0, $fp, $a1
	vst	$vr1, $a2, 16
	ori	$a1, $s7, 3088
	add.d	$a2, $fp, $a1
	vldx	$vr0, $fp, $a1
	vld	$vr1, $a2, 16
	ori	$a1, $s5, 1168
	add.d	$a2, $fp, $a1
	vstx	$vr0, $fp, $a1
	vst	$vr1, $a2, 16
	ori	$a1, $s7, 2640
	add.d	$a2, $fp, $a1
	vldx	$vr0, $fp, $a1
	vld	$vr1, $a2, 16
	ori	$a1, $s5, 720
	add.d	$a2, $fp, $a1
	vstx	$vr0, $fp, $a1
	vst	$vr1, $a2, 16
	ori	$a1, $s7, 3120
	add.d	$a2, $fp, $a1
	vldx	$vr0, $fp, $a1
	vld	$vr1, $a2, 16
	ori	$a1, $s5, 1200
	add.d	$a2, $fp, $a1
	vstx	$vr0, $fp, $a1
	vst	$vr1, $a2, 16
	ori	$a1, $s7, 2672
	add.d	$a2, $fp, $a1
	vldx	$vr0, $fp, $a1
	vld	$vr1, $a2, 16
	ori	$a1, $s5, 752
	add.d	$a2, $fp, $a1
	vstx	$vr0, $fp, $a1
	vst	$vr1, $a2, 16
	ori	$a1, $s7, 3152
	add.d	$a2, $fp, $a1
	vldx	$vr0, $fp, $a1
	vld	$vr1, $a2, 16
	ori	$a1, $s5, 1232
	add.d	$a2, $fp, $a1
	vstx	$vr0, $fp, $a1
	vst	$vr1, $a2, 16
	ori	$a1, $s7, 2704
	add.d	$a2, $fp, $a1
	vldx	$vr0, $fp, $a1
	vld	$vr1, $a2, 16
	ori	$a1, $s5, 784
	add.d	$a2, $fp, $a1
	vstx	$vr0, $fp, $a1
	vst	$vr1, $a2, 16
	ori	$a1, $s7, 3184
	add.d	$a2, $fp, $a1
	vldx	$vr0, $fp, $a1
	vld	$vr1, $a2, 16
	ori	$a1, $s5, 1264
	add.d	$a2, $fp, $a1
	vstx	$vr0, $fp, $a1
	vst	$vr1, $a2, 16
	ori	$a1, $s7, 2736
	add.d	$a2, $fp, $a1
	vldx	$vr0, $fp, $a1
	vld	$vr1, $a2, 16
	ori	$a1, $s5, 816
	add.d	$a2, $fp, $a1
	vstx	$vr0, $fp, $a1
	vst	$vr1, $a2, 16
	ori	$a1, $s7, 3216
	add.d	$a2, $fp, $a1
	vldx	$vr0, $fp, $a1
	vld	$vr1, $a2, 16
	ori	$a1, $s5, 1296
	add.d	$a2, $fp, $a1
	vstx	$vr0, $fp, $a1
	vst	$vr1, $a2, 16
	ori	$a1, $s7, 2768
	add.d	$a2, $fp, $a1
	vldx	$vr0, $fp, $a1
	vld	$vr1, $a2, 16
	ori	$a1, $s5, 848
	add.d	$a2, $fp, $a1
	vstx	$vr0, $fp, $a1
	vst	$vr1, $a2, 16
	ori	$a1, $s7, 3248
	add.d	$a2, $fp, $a1
	vldx	$vr0, $fp, $a1
	vld	$vr1, $a2, 16
	ori	$a1, $s5, 1328
	add.d	$a2, $fp, $a1
	vstx	$vr0, $fp, $a1
	vst	$vr1, $a2, 16
	ori	$a1, $s7, 2800
	add.d	$a2, $fp, $a1
	vldx	$vr0, $fp, $a1
	vld	$vr1, $a2, 16
	ori	$a1, $s5, 880
	add.d	$a2, $fp, $a1
	vstx	$vr0, $fp, $a1
	vst	$vr1, $a2, 16
	ori	$a1, $s7, 3280
	add.d	$a2, $fp, $a1
	vldx	$vr0, $fp, $a1
	vld	$vr1, $a2, 16
	ori	$a1, $s5, 1360
	add.d	$a2, $fp, $a1
	vstx	$vr0, $fp, $a1
	vst	$vr1, $a2, 16
	ori	$a1, $s7, 2832
	add.d	$a2, $fp, $a1
	vldx	$vr0, $fp, $a1
	vld	$vr1, $a2, 16
	ori	$a1, $s5, 912
	add.d	$a2, $fp, $a1
	vstx	$vr0, $fp, $a1
	vst	$vr1, $a2, 16
	ori	$a1, $s7, 3312
	add.d	$a2, $fp, $a1
	vldx	$vr0, $fp, $a1
	vld	$vr1, $a2, 16
	ori	$a1, $s5, 1392
	add.d	$a2, $fp, $a1
	vstx	$vr0, $fp, $a1
	vst	$vr1, $a2, 16
	ori	$a1, $s7, 2864
	add.d	$a2, $fp, $a1
	vldx	$vr0, $fp, $a1
	vld	$vr1, $a2, 16
	ori	$a1, $s5, 944
	add.d	$a2, $fp, $a1
	vstx	$vr0, $fp, $a1
	vst	$vr1, $a2, 16
	ori	$a1, $s7, 3344
	vldx	$vr0, $fp, $a1
	ori	$a2, $s5, 1424
	add.d	$a1, $fp, $a1
	vld	$vr1, $a1, 16
	vstx	$vr0, $fp, $a2
	stx.w	$a0, $fp, $s8
	add.d	$a0, $fp, $a2
	vst	$vr1, $a0, 16
	ori	$a0, $s5, 1456
	add.d	$a0, $fp, $a0
	ori	$a1, $s7, 3376
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 512
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $s7, 2896
	add.d	$a1, $fp, $a0
	vld	$vr0, $a1, 8
	ori	$a1, $s5, 976
	add.d	$a2, $fp, $a1
	ldx.d	$a0, $fp, $a0
	vst	$vr0, $a2, 8
	ori	$a2, $s5, 1000
	ori	$a3, $s7, 2920
	vldx	$vr0, $fp, $a3
	add.d	$a3, $fp, $a3
	vld	$vr1, $a3, 16
	add.d	$a3, $fp, $a2
	vstx	$vr0, $fp, $a2
	ori	$a2, $s7, 2952
	vldx	$vr0, $fp, $a2
	vst	$vr1, $a3, 16
	stx.d	$a0, $fp, $a1
	ori	$a0, $s5, 1032
	vstx	$vr0, $fp, $a0
	ori	$a0, $s7, 2968
	add.d	$a1, $fp, $a0
	vldx	$vr0, $fp, $a0
	ld.d	$a0, $a1, 16
	ori	$a1, $s5, 1048
	add.d	$a2, $fp, $a1
	vstx	$vr0, $fp, $a1
	st.d	$a0, $a2, 16
	ori	$a0, $s5, 1968
	add.d	$a0, $fp, $a0
	ori	$a1, $s7, 3888
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 228
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $s6, 20
	vldx	$vr0, $fp, $a0
	add.d	$a0, $fp, $a0
	vld	$vr1, $a0, 16
	ori	$a0, $s5, 2196
	vstx	$vr0, $fp, $a0
	add.d	$a0, $fp, $a0
	vst	$vr1, $a0, 16
	ori	$a0, $s0, 196
	vldx	$vr0, $fp, $a0
	ori	$a3, $s4, 1496
	ldx.wu	$a2, $fp, $s2
	ldptr.d	$a0, $s3, 3168
	ld.d	$a1, $s1, 132
	ori	$a4, $zero, 768
	sll.w	$a2, $a4, $a2
	slli.d	$a2, $a2, 1
	vstx	$vr0, $fp, $a3
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(memcpy)
	jr	$t8
.Lfunc_end5:
	.size	LzmaEnc_RestoreState, .Lfunc_end5-LzmaEnc_RestoreState
                                        # -- End function
	.globl	LzmaEnc_SetProps                # -- Begin function LzmaEnc_SetProps
	.p2align	5
	.type	LzmaEnc_SetProps,@function
LzmaEnc_SetProps:                       # @LzmaEnc_SetProps
# %bb.0:
	ld.w	$t0, $a1, 0
	ld.w	$a4, $a1, 4
	ld.w	$a5, $a1, 8
	ld.w	$a7, $a1, 20
	ld.w	$a6, $a1, 24
	ld.w	$a2, $a1, 28
	ld.w	$a3, $a1, 36
	slti	$t1, $t0, 0
	masknez	$t2, $t0, $t1
	ori	$t0, $zero, 5
	maskeqz	$t1, $t0, $t1
	or	$t1, $t1, $t2
	bnez	$a4, .LBB6_4
# %bb.1:
	blt	$t0, $t1, .LBB6_3
# %bb.2:
	slli.d	$a4, $t1, 1
	addi.d	$a4, $a4, 14
	bstrpick.d	$a4, $a4, 31, 1
	slli.d	$a4, $a4, 1
	ori	$t0, $zero, 1
	sll.w	$a4, $t0, $a4
	b	.LBB6_4
.LBB6_3:
	addi.d	$a4, $t1, -6
	sltui	$a4, $a4, 1
	lu12i.w	$t0, 16384
	masknez	$t0, $t0, $a4
	lu12i.w	$t2, 8192
	maskeqz	$a4, $t2, $a4
	or	$a4, $a4, $t0
.LBB6_4:
	slti	$t0, $a5, 0
	masknez	$a5, $a5, $t0
	ori	$t2, $zero, 3
	maskeqz	$t0, $t2, $t0
	or	$a5, $t0, $a5
	slti	$t0, $a7, 0
	ori	$t2, $zero, 4
	slt	$t2, $t2, $t1
	masknez	$a7, $a7, $t0
	maskeqz	$t0, $t2, $t0
	or	$t0, $t0, $a7
	slti	$a7, $a6, 0
	slti	$t1, $t1, 7
	ori	$t2, $zero, 64
	masknez	$t2, $t2, $t1
	ori	$t3, $zero, 32
	maskeqz	$t1, $t3, $t1
	or	$t1, $t1, $t2
	maskeqz	$t1, $t1, $a7
	masknez	$a6, $a6, $a7
	or	$a7, $t1, $a6
	slti	$a6, $a2, 0
	sltu	$t1, $zero, $t0
	maskeqz	$t1, $t1, $a6
	masknez	$a2, $a2, $a6
	or	$a6, $t1, $a2
	bnez	$a3, .LBB6_6
# %bb.5:
	bstrpick.d	$a2, $a7, 31, 1
	addi.d	$a2, $a2, 16
	sltui	$a3, $a6, 1
	srl.w	$a3, $a2, $a3
.LBB6_6:                                # %LzmaEncProps_Normalize.exit
	ori	$t1, $zero, 8
	ori	$a2, $zero, 5
	bltu	$t1, $a5, .LBB6_11
# %bb.7:                                # %LzmaEncProps_Normalize.exit
	ld.w	$t2, $a1, 12
	ori	$t3, $zero, 4
	blt	$t3, $t2, .LBB6_11
# %bb.8:                                # %LzmaEncProps_Normalize.exit
	ld.w	$t1, $a1, 16
	slti	$t4, $t1, 0
	ori	$t5, $zero, 2
	masknez	$t1, $t1, $t4
	maskeqz	$t4, $t5, $t4
	or	$t1, $t4, $t1
	bltu	$t3, $t1, .LBB6_11
# %bb.9:                                # %LzmaEncProps_Normalize.exit
	lu12i.w	$t3, 262144
	bltu	$t3, $a4, .LBB6_11
# %bb.10:
	addi.d	$sp, $sp, -16
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	st.d	$s0, $sp, 0                     # 8-byte Folded Spill
	move	$a2, $zero
	lu12i.w	$t3, 61
	lu12i.w	$t4, 51
	ori	$t3, $t3, 2376
	ori	$t4, $t4, 1488
	srai.d	$t5, $t2, 63
	add.d	$t3, $a0, $t3
	add.d	$t4, $a0, $t4
	ld.w	$t6, $a1, 44
	ld.w	$t7, $a1, 32
	ld.w	$a1, $a1, 40
	andn	$t2, $t2, $t5
	slti	$t5, $t6, 0
	sltui	$t8, $a6, 1
	sltui	$t0, $t0, 1
	andi	$fp, $t0, 1
	ori	$s0, $zero, 2
	masknez	$fp, $s0, $fp
	masknez	$fp, $fp, $t8
	masknez	$t6, $t6, $t5
	maskeqz	$t5, $fp, $t5
	slti	$fp, $t7, 0
	or	$t5, $t5, $t6
	st.w	$a4, $t3, 112
	st.w	$a3, $t3, 116
	ori	$a4, $zero, 5
	sltu	$t6, $a4, $a7
	masknez	$a4, $a4, $t6
	maskeqz	$a7, $a7, $t6
	or	$a4, $a7, $a4
	sltui	$a7, $a4, 273
	maskeqz	$a4, $a4, $a7
	ori	$t6, $zero, 273
	masknez	$a7, $t6, $a7
	or	$a4, $a4, $a7
	st.w	$a4, $t4, 0
	stptr.w	$a5, $t4, 3172
	stptr.w	$t2, $t4, 3176
	stptr.w	$t1, $t4, 3180
	st.w	$t0, $t3, 0
	st.w	$a6, $a0, 1672
	sltu	$a4, $s0, $t7
	masknez	$a5, $s0, $a4
	maskeqz	$a4, $t7, $a4
	or	$a4, $a4, $a5
	sltui	$a5, $a4, 4
	maskeqz	$a4, $a4, $a5
	ori	$a6, $zero, 4
	masknez	$a5, $a6, $a5
	or	$a4, $a4, $a5
	masknez	$a4, $a4, $fp
	maskeqz	$a5, $a6, $fp
	or	$a4, $a5, $a4
	masknez	$a4, $a4, $t8
	maskeqz	$a5, $a6, $t8
	or	$a4, $a5, $a4
	st.w	$a4, $a0, 1656
	st.w	$a3, $a0, 1620
	st.w	$a1, $t3, 80
	ori	$a0, $zero, 1
	sltu	$a0, $a0, $t5
	st.w	$a0, $t3, 104
	ld.d	$s0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB6_11:
	move	$a0, $a2
	ret
.Lfunc_end6:
	.size	LzmaEnc_SetProps, .Lfunc_end6-LzmaEnc_SetProps
                                        # -- End function
	.globl	LzmaEnc_InitPriceTables         # -- Begin function LzmaEnc_InitPriceTables
	.p2align	5
	.type	LzmaEnc_InitPriceTables,@function
LzmaEnc_InitPriceTables:                # @LzmaEnc_InitPriceTables
# %bb.0:
	ori	$a5, $zero, 8
	ori	$a1, $zero, 161
	addi.w	$a2, $zero, -4
	lu52i.d	$a2, $a2, 1023
	ori	$a3, $zero, 2032
	b	.LBB7_2
	.p2align	4, , 16
.LBB7_1:                                # %._crit_edge.3
                                        #   in Loop: Header=BB7_2 Depth=1
	sub.d	$a5, $a1, $a5
	srli.d	$a6, $a4, 2
	and	$a6, $a6, $a2
	stx.w	$a5, $a0, $a6
	addi.d	$a5, $a4, 16
	bgeu	$a4, $a3, .LBB7_14
.LBB7_2:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
                                        #     Child Loop BB7_7 Depth 2
                                        #     Child Loop BB7_10 Depth 2
                                        #     Child Loop BB7_13 Depth 2
	move	$a4, $a5
	mul.d	$a6, $a5, $a5
	srli.d	$a5, $a6, 16
	beqz	$a5, .LBB7_6
# %bb.3:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB7_2 Depth=1
	move	$a5, $zero
	move	$a7, $a6
	.p2align	4, , 16
.LBB7_4:                                # %.lr.ph
                                        #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a6, $a7, 31, 1
	bstrpick.d	$t0, $a7, 31, 17
	addi.d	$a5, $a5, 2
	move	$a7, $a6
	bnez	$t0, .LBB7_4
# %bb.5:                                # %._crit_edge
                                        #   in Loop: Header=BB7_2 Depth=1
	mul.d	$a6, $a6, $a6
	bstrpick.d	$a7, $a6, 31, 16
	bnez	$a7, .LBB7_7
	b	.LBB7_9
	.p2align	4, , 16
.LBB7_6:                                #   in Loop: Header=BB7_2 Depth=1
	move	$a5, $zero
	mul.d	$a6, $a6, $a6
	bstrpick.d	$a7, $a6, 31, 16
	beqz	$a7, .LBB7_9
	.p2align	4, , 16
.LBB7_7:                                # %.lr.ph.1
                                        #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a7, $a6, 31, 1
	bstrpick.d	$t0, $a6, 31, 17
	addi.d	$a5, $a5, 1
	move	$a6, $a7
	bnez	$t0, .LBB7_7
# %bb.8:                                # %._crit_edge.1
                                        #   in Loop: Header=BB7_2 Depth=1
	mul.d	$a6, $a7, $a7
	bstrpick.d	$a7, $a6, 31, 16
	slli.d	$a5, $a5, 1
	bnez	$a7, .LBB7_10
	b	.LBB7_12
	.p2align	4, , 16
.LBB7_9:                                #   in Loop: Header=BB7_2 Depth=1
	move	$a7, $a6
	mul.d	$a6, $a7, $a7
	bstrpick.d	$a7, $a6, 31, 16
	slli.d	$a5, $a5, 1
	beqz	$a7, .LBB7_12
	.p2align	4, , 16
.LBB7_10:                               # %.lr.ph.2
                                        #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a7, $a6, 31, 1
	bstrpick.d	$t0, $a6, 31, 17
	addi.d	$a5, $a5, 1
	move	$a6, $a7
	bnez	$t0, .LBB7_10
# %bb.11:                               # %._crit_edge.2
                                        #   in Loop: Header=BB7_2 Depth=1
	mul.d	$a6, $a7, $a7
	bstrpick.d	$a7, $a6, 31, 16
	slli.d	$a5, $a5, 1
	bnez	$a7, .LBB7_13
	b	.LBB7_1
	.p2align	4, , 16
.LBB7_12:                               #   in Loop: Header=BB7_2 Depth=1
	move	$a7, $a6
	mul.d	$a6, $a7, $a7
	bstrpick.d	$a7, $a6, 31, 16
	slli.d	$a5, $a5, 1
	beqz	$a7, .LBB7_1
	.p2align	4, , 16
.LBB7_13:                               # %.lr.ph.3
                                        #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a7, $a6, 31, 17
	bstrpick.d	$a6, $a6, 31, 1
	addi.d	$a5, $a5, 1
	bnez	$a7, .LBB7_13
	b	.LBB7_1
.LBB7_14:
	ret
.Lfunc_end7:
	.size	LzmaEnc_InitPriceTables, .Lfunc_end7-LzmaEnc_InitPriceTables
                                        # -- End function
	.globl	LzmaEnc_Construct               # -- Begin function LzmaEnc_Construct
	.p2align	5
	.type	LzmaEnc_Construct,@function
LzmaEnc_Construct:                      # @LzmaEnc_Construct
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	move	$fp, $a0
	lu12i.w	$a0, 61
	ori	$a1, $a0, 2504
	add.d	$s1, $fp, $a1
	lu12i.w	$a1, 52
	ori	$a1, $a1, 584
	add.d	$s2, $fp, $a1
	vrepli.b	$vr0, 0
	ori	$a0, $a0, 2424
	vstx	$vr0, $fp, $a0
	addi.d	$s0, $fp, 1560
	move	$a0, $s0
	pcaddu18i	$ra, %call36(MatchFinder_Construct)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 64
	pcaddu18i	$ra, %call36(MatchFinderMt_Construct)
	jirl	$ra, $ra, 0
	st.d	$s0, $fp, 1552
	ori	$a0, $zero, 5
	st.d	$a0, $sp, 8
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 16
	st.d	$a0, $sp, 24
	st.d	$a0, $sp, 32
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 40
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 48
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(LzmaEnc_SetProps)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 48
	ori	$a0, $a0, 2876
	add.d	$a0, $fp, $a0
	pcaddu18i	$ra, %call36(LzmaEnc_FastPosInit)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 50
	ori	$a0, $a0, 2876
	add.d	$a0, $fp, $a0
	ori	$a4, $zero, 8
	ori	$a1, $zero, 161
	ori	$a2, $zero, 2032
	b	.LBB8_2
	.p2align	4, , 16
.LBB8_1:                                # %._crit_edge.3.i
                                        #   in Loop: Header=BB8_2 Depth=1
	sub.d	$a4, $a1, $a4
	srli.d	$a5, $a3, 2
	addi.w	$a6, $zero, -4
	lu52i.d	$a6, $a6, 1023
	and	$a5, $a5, $a6
	stx.w	$a4, $a0, $a5
	addi.d	$a4, $a3, 16
	bgeu	$a3, $a2, .LBB8_14
.LBB8_2:                                # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_4 Depth 2
                                        #     Child Loop BB8_7 Depth 2
                                        #     Child Loop BB8_10 Depth 2
                                        #     Child Loop BB8_13 Depth 2
	move	$a3, $a4
	mul.d	$a5, $a4, $a4
	srli.d	$a4, $a5, 16
	beqz	$a4, .LBB8_6
# %bb.3:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB8_2 Depth=1
	move	$a4, $zero
	move	$a6, $a5
	.p2align	4, , 16
.LBB8_4:                                # %.lr.ph.i
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a5, $a6, 31, 1
	bstrpick.d	$a7, $a6, 31, 17
	addi.d	$a4, $a4, 2
	move	$a6, $a5
	bnez	$a7, .LBB8_4
# %bb.5:                                # %._crit_edge.i
                                        #   in Loop: Header=BB8_2 Depth=1
	mul.d	$a5, $a5, $a5
	bstrpick.d	$a6, $a5, 31, 16
	bnez	$a6, .LBB8_7
	b	.LBB8_9
	.p2align	4, , 16
.LBB8_6:                                #   in Loop: Header=BB8_2 Depth=1
	move	$a4, $zero
	mul.d	$a5, $a5, $a5
	bstrpick.d	$a6, $a5, 31, 16
	beqz	$a6, .LBB8_9
	.p2align	4, , 16
.LBB8_7:                                # %.lr.ph.1.i
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a6, $a5, 31, 1
	bstrpick.d	$a7, $a5, 31, 17
	addi.d	$a4, $a4, 1
	move	$a5, $a6
	bnez	$a7, .LBB8_7
# %bb.8:                                # %._crit_edge.1.i
                                        #   in Loop: Header=BB8_2 Depth=1
	mul.d	$a5, $a6, $a6
	bstrpick.d	$a6, $a5, 31, 16
	slli.d	$a4, $a4, 1
	bnez	$a6, .LBB8_10
	b	.LBB8_12
	.p2align	4, , 16
.LBB8_9:                                #   in Loop: Header=BB8_2 Depth=1
	move	$a6, $a5
	mul.d	$a5, $a6, $a6
	bstrpick.d	$a6, $a5, 31, 16
	slli.d	$a4, $a4, 1
	beqz	$a6, .LBB8_12
	.p2align	4, , 16
.LBB8_10:                               # %.lr.ph.2.i
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a6, $a5, 31, 1
	bstrpick.d	$a7, $a5, 31, 17
	addi.d	$a4, $a4, 1
	move	$a5, $a6
	bnez	$a7, .LBB8_10
# %bb.11:                               # %._crit_edge.2.i
                                        #   in Loop: Header=BB8_2 Depth=1
	mul.d	$a5, $a6, $a6
	bstrpick.d	$a6, $a5, 31, 16
	slli.d	$a4, $a4, 1
	bnez	$a6, .LBB8_13
	b	.LBB8_1
	.p2align	4, , 16
.LBB8_12:                               #   in Loop: Header=BB8_2 Depth=1
	move	$a6, $a5
	mul.d	$a5, $a6, $a6
	bstrpick.d	$a6, $a5, 31, 16
	slli.d	$a4, $a4, 1
	beqz	$a6, .LBB8_1
	.p2align	4, , 16
.LBB8_13:                               # %.lr.ph.3.i
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a6, $a5, 31, 17
	bstrpick.d	$a5, $a5, 31, 1
	addi.d	$a4, $a4, 1
	bnez	$a6, .LBB8_13
	b	.LBB8_1
.LBB8_14:                               # %LzmaEnc_InitPriceTables.exit
	st.d	$zero, $s2, 0
	st.d	$zero, $s1, 0
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end8:
	.size	LzmaEnc_Construct, .Lfunc_end8-LzmaEnc_Construct
                                        # -- End function
	.globl	LzmaEnc_Create                  # -- Begin function LzmaEnc_Create
	.p2align	5
	.type	LzmaEnc_Create,@function
LzmaEnc_Create:                         # @LzmaEnc_Create
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a2, $a0, 0
	lu12i.w	$a1, 71
	ori	$a1, $a1, 216
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB9_2
# %bb.1:
	move	$fp, $a0
	pcaddu18i	$ra, %call36(LzmaEnc_Construct)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB9_2:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end9:
	.size	LzmaEnc_Create, .Lfunc_end9-LzmaEnc_Create
                                        # -- End function
	.globl	LzmaEnc_FreeLits                # -- Begin function LzmaEnc_FreeLits
	.p2align	5
	.type	LzmaEnc_FreeLits,@function
LzmaEnc_FreeLits:                       # @LzmaEnc_FreeLits
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	ld.d	$a2, $a1, 8
	lu12i.w	$a0, 52
	ori	$s1, $a0, 584
	ldx.d	$a1, $s0, $s1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a2, $fp, 8
	lu12i.w	$a0, 61
	ori	$s2, $a0, 2504
	ldx.d	$a1, $s0, $s2
	move	$a0, $fp
	jirl	$ra, $a2, 0
	stx.d	$zero, $s0, $s1
	stx.d	$zero, $s0, $s2
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end10:
	.size	LzmaEnc_FreeLits, .Lfunc_end10-LzmaEnc_FreeLits
                                        # -- End function
	.globl	LzmaEnc_Destruct                # -- Begin function LzmaEnc_Destruct
	.p2align	5
	.type	LzmaEnc_Destruct,@function
LzmaEnc_Destruct:                       # @LzmaEnc_Destruct
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	lu12i.w	$a0, 61
	ori	$s2, $a0, 2424
	add.d	$s3, $s1, $s2
	addi.d	$a0, $s1, 64
	move	$a1, $a2
	pcaddu18i	$ra, %call36(MatchFinderMt_Destruct)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s1, 1560
	move	$a1, $fp
	pcaddu18i	$ra, %call36(MatchFinder_Free)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 8
	lu12i.w	$a0, 52
	ori	$fp, $a0, 584
	ldx.d	$a1, $s1, $fp
	move	$a0, $s0
	jirl	$ra, $a2, 0
	ld.d	$a2, $s0, 8
	ld.d	$a1, $s3, 80
	move	$a0, $s0
	jirl	$ra, $a2, 0
	ld.d	$a2, $s0, 8
	ldx.d	$a1, $s1, $s2
	stx.d	$zero, $s1, $fp
	st.d	$zero, $s3, 80
	move	$a0, $s0
	jirl	$ra, $a2, 0
	stx.d	$zero, $s1, $s2
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end11:
	.size	LzmaEnc_Destruct, .Lfunc_end11-LzmaEnc_Destruct
                                        # -- End function
	.globl	LzmaEnc_Destroy                 # -- Begin function LzmaEnc_Destroy
	.p2align	5
	.type	LzmaEnc_Destroy,@function
LzmaEnc_Destroy:                        # @LzmaEnc_Destroy
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	lu12i.w	$a0, 61
	ori	$s2, $a0, 2424
	add.d	$s3, $s1, $s2
	addi.d	$a0, $s1, 64
	move	$a1, $a2
	pcaddu18i	$ra, %call36(MatchFinderMt_Destruct)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s1, 1560
	move	$a1, $fp
	pcaddu18i	$ra, %call36(MatchFinder_Free)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 8
	lu12i.w	$a0, 52
	ori	$fp, $a0, 584
	ldx.d	$a1, $s1, $fp
	move	$a0, $s0
	jirl	$ra, $a2, 0
	ld.d	$a2, $s0, 8
	ld.d	$a1, $s3, 80
	move	$a0, $s0
	jirl	$ra, $a2, 0
	ld.d	$a2, $s0, 8
	ldx.d	$a1, $s1, $s2
	stx.d	$zero, $s1, $fp
	st.d	$zero, $s3, 80
	move	$a0, $s0
	jirl	$ra, $a2, 0
	ld.d	$a2, $s0, 8
	stx.d	$zero, $s1, $s2
	move	$a0, $s0
	move	$a1, $s1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	jr	$a2
.Lfunc_end12:
	.size	LzmaEnc_Destroy, .Lfunc_end12-LzmaEnc_Destroy
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function LzmaEnc_Init
.LCPI13_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	LzmaEnc_Init
	.p2align	5
	.type	LzmaEnc_Init,@function
LzmaEnc_Init:                           # @LzmaEnc_Init
# %bb.0:                                # %.preheader71
	lu12i.w	$a1, 61
	ori	$a6, $a1, 2384
	add.d	$a7, $a0, $a6
	lu12i.w	$a1, 57
	ori	$a1, $a1, 254
	add.d	$a3, $a0, $a1
	lu12i.w	$a1, 52
	ori	$a2, $a1, 3032
	add.d	$a5, $a0, $a2
	ori	$t1, $a1, 978
	add.d	$a2, $a0, $t1
	lu12i.w	$a4, 51
	ori	$a1, $a4, 1492
	add.d	$a1, $a0, $a1
	ori	$a4, $a4, 1496
	add.d	$t0, $a0, $a4
	vrepli.b	$vr0, 0
	vstx	$vr0, $a0, $a4
	addi.w	$a4, $zero, -1
	st.w	$zero, $t0, 16
	move	$t0, $a4
	pcalau12i	$t2, %pc_hi20(.LCPI13_0)
	vld	$vr0, $t2, %pc_lo12(.LCPI13_0)
	lu32i.d	$t0, 0
	ld.d	$t2, $a7, 40
	stx.w	$t0, $a0, $a6
	vst	$vr0, $a7, 8
	st.b	$zero, $a7, 4
	st.d	$t2, $a7, 24
	st.d	$zero, $a7, 56
	st.w	$zero, $a7, 64
	ori	$a6, $zero, 1024
	vreplgr2vr.h	$vr0, $a6
	ori	$a7, $zero, 3196
	vstx	$vr0, $a1, $a7
	vst	$vr0, $a2, 94
	ori	$a7, $zero, 3212
	vstx	$vr0, $a1, $a7
	vst	$vr0, $a2, 110
	ori	$a7, $zero, 3580
	stx.h	$a6, $a1, $a7
	st.h	$a6, $a2, 22
	st.h	$a6, $a2, 46
	st.h	$a6, $a2, 70
	ori	$a7, $zero, 3228
	vstx	$vr0, $a1, $a7
	vst	$vr0, $a2, 126
	ori	$a7, $zero, 3244
	vstx	$vr0, $a1, $a7
	vst	$vr0, $a2, 142
	lu12i.w	$a7, 16384
	ori	$t0, $a7, 1024
	stx.w	$t0, $a0, $t1
	st.w	$t0, $a2, 24
	st.w	$t0, $a2, 48
	st.w	$t0, $a2, 72
	ori	$a7, $zero, 3260
	vstx	$vr0, $a1, $a7
	vst	$vr0, $a2, 158
	ori	$a7, $zero, 3276
	vstx	$vr0, $a1, $a7
	vst	$vr0, $a2, 174
	ori	$a7, $zero, 3292
	vstx	$vr0, $a1, $a7
	vst	$vr0, $a2, 190
	ori	$a7, $zero, 3308
	vstx	$vr0, $a1, $a7
	vst	$vr0, $a2, 206
	st.h	$a6, $a2, 4
	st.h	$a6, $a2, 28
	st.h	$a6, $a2, 52
	st.h	$a6, $a2, 76
	ori	$a7, $zero, 3324
	vstx	$vr0, $a1, $a7
	vst	$vr0, $a2, 222
	ori	$a7, $zero, 3340
	vstx	$vr0, $a1, $a7
	vst	$vr0, $a2, 238
	st.w	$t0, $a2, 6
	st.w	$t0, $a2, 30
	st.w	$t0, $a2, 54
	st.w	$t0, $a2, 78
	ori	$a7, $zero, 3356
	vstx	$vr0, $a1, $a7
	vst	$vr0, $a2, 254
	ori	$a7, $zero, 3372
	vstx	$vr0, $a1, $a7
	vst	$vr0, $a2, 270
	ori	$a7, $zero, 3388
	vstx	$vr0, $a1, $a7
	vst	$vr0, $a2, 286
	ori	$a7, $zero, 3404
	vstx	$vr0, $a1, $a7
	vst	$vr0, $a2, 302
	st.h	$a6, $a2, 10
	st.h	$a6, $a2, 34
	st.h	$a6, $a2, 58
	st.h	$a6, $a2, 82
	ori	$a7, $zero, 3420
	vstx	$vr0, $a1, $a7
	vst	$vr0, $a2, 318
	ori	$a7, $zero, 3436
	vstx	$vr0, $a1, $a7
	vst	$vr0, $a2, 334
	st.h	$a6, $a2, 12
	st.h	$a6, $a2, 36
	st.h	$a6, $a2, 60
	st.h	$a6, $a2, 84
	ori	$a7, $zero, 3452
	vstx	$vr0, $a1, $a7
	vst	$vr0, $a2, 350
	ori	$a7, $zero, 3468
	vstx	$vr0, $a1, $a7
	vst	$vr0, $a2, 366
	st.h	$a6, $a2, 14
	st.h	$a6, $a2, 38
	st.h	$a6, $a2, 62
	st.h	$a6, $a2, 86
	ori	$a7, $zero, 3484
	vstx	$vr0, $a1, $a7
	vst	$vr0, $a2, 382
	ori	$a7, $zero, 3500
	vstx	$vr0, $a1, $a7
	vst	$vr0, $a2, 398
	st.h	$a6, $a2, 16
	st.h	$a6, $a2, 40
	st.h	$a6, $a2, 64
	st.h	$a6, $a2, 88
	ori	$a7, $zero, 3516
	vstx	$vr0, $a1, $a7
	vst	$vr0, $a2, 414
	ori	$a7, $zero, 3532
	vstx	$vr0, $a1, $a7
	vst	$vr0, $a2, 430
	st.h	$a6, $a2, 18
	st.h	$a6, $a2, 42
	st.h	$a6, $a2, 66
	st.h	$a6, $a2, 90
	ori	$a7, $zero, 3548
	vstx	$vr0, $a1, $a7
	vst	$vr0, $a2, 446
	ori	$a7, $zero, 3564
	vstx	$vr0, $a1, $a7
	vst	$vr0, $a2, 462
	ori	$a7, $zero, 3172
	ldx.w	$a7, $a1, $a7
	ori	$t1, $zero, 3168
	ldx.w	$t1, $a1, $t1
	st.h	$a6, $a2, 20
	st.h	$a6, $a2, 44
	st.h	$a6, $a2, 68
	add.w	$t1, $t1, $a7
	ori	$t2, $zero, 23
	st.h	$a6, $a2, 92
	bltu	$t2, $t1, .LBB13_6
# %bb.1:                                # %iter.check
	ori	$t2, $zero, 768
	sll.w	$t2, $t2, $t1
	ldptr.d	$t1, $a1, 3188
	ori	$t3, $zero, 1
	sltu	$t4, $t3, $t2
	maskeqz	$t2, $t2, $t4
	masknez	$t3, $t3, $t4
	or	$t3, $t2, $t3
	bstrpick.d	$t2, $t3, 31, 0
	bstrpick.d	$t3, $t3, 31, 8
	slli.d	$t3, $t3, 8
	addi.d	$t4, $t1, 16
	move	$t5, $t3
	.p2align	4, , 16
.LBB13_2:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $t4, -16
	vst	$vr0, $t4, 0
	addi.d	$t5, $t5, -16
	addi.d	$t4, $t4, 32
	bnez	$t5, .LBB13_2
# %bb.3:                                # %middle.block
	beq	$t2, $t3, .LBB13_6
# %bb.4:                                # %vec.epilog.scalar.ph.preheader
	slli.d	$t4, $t2, 1
	bstrins.d	$t4, $zero, 8, 0
	add.d	$t1, $t1, $t4
	sub.d	$t2, $t2, $t3
	ori	$t3, $zero, 1024
	.p2align	4, , 16
.LBB13_5:                               # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.h	$t3, $t1, 0
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 2
	bnez	$t2, .LBB13_5
.LBB13_6:                               # %iter.check189
	vst	$vr0, $a2, 478
	vst	$vr0, $a2, 494
	vst	$vr0, $a2, 510
	vst	$vr0, $a2, 526
	vst	$vr0, $a2, 542
	vst	$vr0, $a2, 558
	vst	$vr0, $a2, 574
	vst	$vr0, $a2, 590
	vst	$vr0, $a2, 606
	vst	$vr0, $a2, 622
	vst	$vr0, $a2, 638
	vst	$vr0, $a2, 654
	vst	$vr0, $a2, 670
	vst	$vr0, $a2, 686
	vst	$vr0, $a2, 702
	vst	$vr0, $a2, 718
	vst	$vr0, $a2, 734
	vst	$vr0, $a2, 750
	vst	$vr0, $a2, 766
	vst	$vr0, $a2, 782
	vst	$vr0, $a2, 798
	vst	$vr0, $a2, 814
	vst	$vr0, $a2, 830
	vst	$vr0, $a2, 846
	vst	$vr0, $a2, 862
	vst	$vr0, $a2, 878
	vst	$vr0, $a2, 894
	vst	$vr0, $a2, 910
	vst	$vr0, $a2, 926
	vst	$vr0, $a2, 942
	vst	$vr0, $a2, 958
	vst	$vr0, $a2, 974
	vst	$vr0, $a2, 990
	vst	$vr0, $a2, 1006
	vst	$vr0, $a2, 1022
	vst	$vr0, $a2, 1038
	vst	$vr0, $a2, 1054
	vst	$vr0, $a2, 1070
	vst	$vr0, $a2, 1086
	vst	$vr0, $a2, 1102
	vst	$vr0, $a2, 1118
	vst	$vr0, $a2, 1134
	vst	$vr0, $a2, 1150
	vst	$vr0, $a2, 1166
	vst	$vr0, $a2, 1182
	vst	$vr0, $a2, 1198
	st.w	$t0, $a2, 1214
	st.h	$a6, $a2, 1252
	st.h	$a6, $a2, 1250
	vst	$vr0, $a2, 1254
	vst	$vr0, $a2, 1270
	vst	$vr0, $a2, 1286
	vst	$vr0, $a2, 1302
	vst	$vr0, $a2, 1318
	vst	$vr0, $a2, 1334
	vst	$vr0, $a2, 1350
	vst	$vr0, $a2, 1366
	vst	$vr0, $a2, 1382
	vst	$vr0, $a2, 1398
	vst	$vr0, $a2, 1414
	vst	$vr0, $a2, 1430
	vst	$vr0, $a2, 1446
	vst	$vr0, $a2, 1462
	vst	$vr0, $a2, 1478
	vst	$vr0, $a2, 1494
	vst	$vr0, $a2, 1510
	vst	$vr0, $a2, 1526
	vst	$vr0, $a2, 1542
	vst	$vr0, $a2, 1558
	vst	$vr0, $a2, 1574
	vst	$vr0, $a2, 1590
	vst	$vr0, $a2, 1606
	vst	$vr0, $a2, 1622
	vst	$vr0, $a2, 1638
	vst	$vr0, $a2, 1654
	vst	$vr0, $a2, 1670
	vst	$vr0, $a2, 1686
	vst	$vr0, $a2, 1702
	vst	$vr0, $a2, 1718
	vst	$vr0, $a2, 1734
	vst	$vr0, $a2, 1750
	vst	$vr0, $a2, 1766
	vst	$vr0, $a2, 1782
	vst	$vr0, $a2, 1798
	vst	$vr0, $a2, 1814
	vst	$vr0, $a2, 1830
	vst	$vr0, $a2, 1846
	vst	$vr0, $a2, 1862
	vst	$vr0, $a2, 1878
	vst	$vr0, $a2, 1894
	vst	$vr0, $a2, 1910
	vst	$vr0, $a2, 1926
	vst	$vr0, $a2, 1942
	vst	$vr0, $a2, 1958
	vst	$vr0, $a2, 1974
	vst	$vr0, $a2, 1990
	vst	$vr0, $a2, 2006
	vst	$vr0, $a2, 2022
	vst	$vr0, $a2, 2038
	vst	$vr0, $a5, 0
	vst	$vr0, $a5, 16
	vst	$vr0, $a5, 32
	vst	$vr0, $a5, 48
	vst	$vr0, $a5, 64
	vst	$vr0, $a5, 80
	vst	$vr0, $a5, 96
	vst	$vr0, $a5, 112
	vst	$vr0, $a5, 128
	vst	$vr0, $a5, 144
	vst	$vr0, $a5, 160
	vst	$vr0, $a5, 176
	vst	$vr0, $a5, 192
	vst	$vr0, $a5, 208
	st.h	$a6, $a3, 0
	lu12i.w	$t0, 4
	ori	$t0, $t0, 1316
	stx.h	$a6, $a5, $t0
	vst	$vr0, $a3, 2
	vst	$vr0, $a3, 18
	vst	$vr0, $a3, 34
	vst	$vr0, $a3, 50
	vst	$vr0, $a3, 66
	vst	$vr0, $a3, 82
	vst	$vr0, $a3, 98
	vst	$vr0, $a3, 114
	vst	$vr0, $a3, 130
	vst	$vr0, $a3, 146
	vst	$vr0, $a3, 162
	vst	$vr0, $a3, 178
	vst	$vr0, $a3, 194
	vst	$vr0, $a3, 210
	vst	$vr0, $a3, 226
	vst	$vr0, $a3, 242
	vst	$vr0, $a3, 258
	vst	$vr0, $a3, 274
	vst	$vr0, $a3, 290
	vst	$vr0, $a3, 306
	vst	$vr0, $a3, 322
	vst	$vr0, $a3, 338
	vst	$vr0, $a3, 354
	vst	$vr0, $a3, 370
	vst	$vr0, $a3, 386
	vst	$vr0, $a3, 402
	vst	$vr0, $a3, 418
	vst	$vr0, $a3, 434
	vst	$vr0, $a3, 450
	vst	$vr0, $a3, 466
	vst	$vr0, $a3, 482
	vst	$vr0, $a3, 498
	vst	$vr0, $a3, 514
	vst	$vr0, $a3, 530
	vst	$vr0, $a3, 546
	vst	$vr0, $a3, 562
	vst	$vr0, $a3, 578
	vst	$vr0, $a3, 594
	vst	$vr0, $a3, 610
	vst	$vr0, $a3, 626
	vst	$vr0, $a3, 642
	vst	$vr0, $a3, 658
	vst	$vr0, $a3, 674
	vst	$vr0, $a3, 690
	vst	$vr0, $a3, 706
	vst	$vr0, $a3, 722
	vst	$vr0, $a3, 738
	vst	$vr0, $a3, 754
	vst	$vr0, $a3, 770
	vst	$vr0, $a3, 786
	vst	$vr0, $a3, 802
	vst	$vr0, $a3, 818
	vst	$vr0, $a3, 834
	vst	$vr0, $a3, 850
	vst	$vr0, $a3, 866
	vst	$vr0, $a3, 882
	vst	$vr0, $a3, 898
	vst	$vr0, $a3, 914
	vst	$vr0, $a3, 930
	vst	$vr0, $a3, 946
	vst	$vr0, $a3, 962
	vst	$vr0, $a3, 978
	vst	$vr0, $a3, 994
	vst	$vr0, $a3, 1010
	vst	$vr0, $a2, 1218
	ori	$a3, $zero, 3176
	ldx.wu	$a3, $a1, $a3
	vst	$vr0, $a2, 1234
	stptr.d	$zero, $a0, 2856
	st.w	$zero, $a1, 0
	sll.w	$a0, $a4, $a3
	nor	$a0, $a0, $zero
	stptr.w	$a0, $a1, 3184
	sll.w	$a0, $a4, $a7
	nor	$a0, $a0, $zero
	stptr.w	$a0, $a1, 3180
	ret
.Lfunc_end13:
	.size	LzmaEnc_Init, .Lfunc_end13-LzmaEnc_Init
                                        # -- End function
	.globl	LzmaEnc_InitPrices              # -- Begin function LzmaEnc_InitPrices
	.p2align	5
	.type	LzmaEnc_InitPrices,@function
LzmaEnc_InitPrices:                     # @LzmaEnc_InitPrices
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	lu12i.w	$s3, 57
	ori	$a0, $s3, 184
	add.d	$s0, $fp, $a0
	lu12i.w	$s2, 52
	ldptr.w	$a0, $s0, 18576
	lu12i.w	$a1, 51
	ori	$a1, $a1, 1488
	add.d	$s4, $fp, $a1
	lu12i.w	$s5, 50
	bnez	$a0, .LBB14_4
# %bb.1:
	ori	$a0, $s2, 2198
	add.d	$s1, $fp, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FillDistancesPrices)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	move	$a1, $zero
	ori	$a2, $s2, 2196
	add.d	$a2, $fp, $a2
	ori	$a3, $s5, 2876
	add.d	$a3, $fp, $a3
	ori	$a4, $s2, 492
	add.d	$a4, $fp, $a4
	ld.hu	$a5, $s1, 0
	lu12i.w	$a6, 3
	ori	$a6, $a6, 4092
	ori	$a7, $zero, 64
	.p2align	4, , 16
.LBB14_2:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	andi	$t0, $a0, 1
	sub.d	$t0, $zero, $t0
	srli.d	$t1, $a0, 1
	andi	$t0, $t0, 2032
	xor	$t0, $t0, $a5
	srli.d	$t0, $t0, 2
	and	$t0, $t0, $a6
	ldx.w	$t0, $a3, $t0
	bstrpick.d	$t2, $a0, 1, 1
	ori	$t3, $zero, 4
	bstrins.d	$t3, $a0, 1, 1
	ldx.h	$t4, $a2, $t3
	sub.d	$t2, $zero, $t2
	srli.d	$t5, $a0, 2
	andi	$t2, $t2, 2032
	xor	$t2, $t2, $t4
	srli.d	$t2, $t2, 2
	and	$t2, $t2, $a6
	ldx.w	$t2, $a3, $t2
	bstrins.d	$t3, $t1, 0, 0
	slli.d	$t1, $t3, 1
	ldx.h	$t1, $a2, $t1
	bstrpick.d	$t4, $a0, 2, 2
	sub.d	$t4, $zero, $t4
	andi	$t4, $t4, 2032
	xor	$t1, $t4, $t1
	srli.d	$t1, $t1, 2
	and	$t1, $t1, $a6
	ldx.w	$t1, $a3, $t1
	bstrins.d	$t5, $t3, 63, 1
	slli.d	$t3, $t5, 1
	ldx.h	$t3, $a2, $t3
	slli.d	$t4, $a0, 60
	srai.d	$t4, $t4, 63
	andi	$t4, $t4, 2032
	xor	$t3, $t4, $t3
	srli.d	$t3, $t3, 2
	and	$t3, $t3, $a6
	ldx.w	$t3, $a3, $t3
	add.d	$t0, $t2, $t0
	add.d	$t0, $t0, $t1
	add.d	$t0, $t0, $t3
	stx.w	$t0, $a4, $a1
	addi.d	$a1, $a1, 4
	addi.w	$a0, $a0, 1
	bne	$a1, $a7, .LBB14_2
# %bb.3:                                # %FillAlignPrices.exit
	stptr.w	$zero, $s4, 3164
.LBB14_4:
	ld.w	$a0, $s4, 0
	move	$s1, $zero
	addi.d	$a0, $a0, -1
	stptr.w	$a0, $s0, 18504
	ori	$a1, $s2, 2228
	ori	$a2, $zero, 3180
	ldx.wu	$a2, $s4, $a2
	add.d	$s2, $fp, $a1
	st.w	$a0, $s0, 0
	ori	$a0, $zero, 1
	sll.w	$s6, $a0, $a2
	ori	$a0, $s5, 2876
	add.d	$s0, $fp, $a0
	.p2align	4, , 16
.LBB14_5:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(LenPriceEnc_UpdateTable)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, 1
	bne	$s6, $s1, .LBB14_5
# %bb.6:                                # %LenPriceEnc_UpdateTables.exit
	move	$s1, $zero
	ori	$a0, $zero, 3180
	ldx.wu	$a0, $s4, $a0
	ori	$a1, $s3, 252
	add.d	$fp, $fp, $a1
	ori	$a1, $zero, 1
	sll.w	$s2, $a1, $a0
	.p2align	4, , 16
.LBB14_7:                               # %.lr.ph.i13
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(LenPriceEnc_UpdateTable)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, 1
	bne	$s2, $s1, .LBB14_7
# %bb.8:                                # %LenPriceEnc_UpdateTables.exit16
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end14:
	.size	LzmaEnc_InitPrices, .Lfunc_end14-LzmaEnc_InitPrices
                                        # -- End function
	.p2align	5                               # -- Begin function FillDistancesPrices
	.type	FillDistancesPrices,@function
FillDistancesPrices:                    # @FillDistancesPrices
# %bb.0:
	addi.d	$sp, $sp, -544
	st.d	$fp, $sp, 536                   # 8-byte Folded Spill
	st.d	$s0, $sp, 528                   # 8-byte Folded Spill
	st.d	$s1, $sp, 520                   # 8-byte Folded Spill
	lu12i.w	$a1, 61
	ori	$a1, $a1, 2472
	add.d	$a1, $a0, $a1
	lu12i.w	$a3, 48
	ori	$a2, $a3, 2880
	add.d	$a2, $a0, $a2
	ori	$a3, $a3, 2876
	add.d	$a7, $a0, $a3
	lu12i.w	$a6, 52
	ori	$a3, $a6, 1968
	add.d	$t0, $a0, $a3
	lu12i.w	$a3, 50
	ori	$a3, $a3, 2876
	add.d	$a4, $a0, $a3
	ori	$t1, $zero, 4
	ori	$t2, $zero, 1
	addi.d	$t3, $sp, 8
	ori	$t4, $zero, 128
	lu12i.w	$a3, 3
	ori	$a5, $a3, 4092
	b	.LBB15_2
	.p2align	4, , 16
.LBB15_1:                               # %RcTree_ReverseGetPrice.exit
                                        #   in Loop: Header=BB15_2 Depth=1
	slli.d	$t5, $t1, 2
	addi.d	$t1, $t1, 1
	stx.w	$t6, $t5, $t3
	beq	$t1, $t4, .LBB15_5
.LBB15_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_4 Depth 2
	ldx.bu	$t7, $a7, $t1
	srli.d	$t5, $t7, 1
	move	$t6, $zero
	addi.d	$t5, $t5, -1
	beqz	$t5, .LBB15_1
# %bb.3:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB15_2 Depth=1
	slli.d	$t8, $t7, 1
	bstrins.d	$t7, $t2, 63, 1
	sll.w	$fp, $t7, $t5
	bstrpick.d	$t7, $fp, 31, 0
	alsl.d	$t7, $t7, $t0, 1
	sub.d	$t7, $t7, $t8
	addi.d	$t7, $t7, -2
	sub.w	$fp, $t1, $fp
	ori	$t8, $zero, 1
	.p2align	4, , 16
.LBB15_4:                               # %.lr.ph.i
                                        #   Parent Loop BB15_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$s0, $t8, 31, 0
	slli.d	$s0, $s0, 1
	ldx.h	$s0, $t7, $s0
	andi	$s1, $fp, 1
	sub.d	$s1, $zero, $s1
	andi	$s1, $s1, 2032
	xor	$s0, $s1, $s0
	srli.d	$s0, $s0, 2
	and	$s0, $s0, $a5
	ldx.w	$s0, $a4, $s0
	bstrpick.d	$s1, $fp, 31, 1
	bstrins.d	$fp, $t8, 63, 1
	addi.w	$t5, $t5, -1
	add.d	$t6, $s0, $t6
	move	$t8, $fp
	move	$fp, $s1
	bnez	$t5, .LBB15_4
	b	.LBB15_1
.LBB15_5:                               # %.preheader58
	ldptr.w	$t2, $a2, 14064
	lu12i.w	$a7, 2
	ori	$t0, $a7, 2732
	add.d	$t1, $a2, $t0
	beqz	$t2, .LBB15_13
# %bb.6:                                # %.lr.ph.preheader
	move	$t3, $zero
	ori	$t2, $a6, 1456
	add.d	$t4, $a0, $t2
	ori	$t5, $zero, 1
	ori	$t2, $a3, 1776
	.p2align	4, , 16
.LBB15_7:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_8 Depth 2
	move	$t6, $zero
	ori	$t7, $t3, 64
	.p2align	4, , 16
.LBB15_8:                               # %.lr.ph.i55
                                        #   Parent Loop BB15_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t8, $t7, 31, 1
	slli.d	$fp, $t8, 1
	ldx.h	$fp, $t4, $fp
	andi	$t7, $t7, 1
	sub.d	$t7, $zero, $t7
	andi	$t7, $t7, 2032
	xor	$t7, $t7, $fp
	srli.d	$t7, $t7, 2
	and	$t7, $t7, $a5
	ldx.w	$t7, $a4, $t7
	add.d	$t6, $t7, $t6
	move	$t7, $t8
	bne	$t8, $t5, .LBB15_8
# %bb.9:                                # %RcTree_GetPrice.exit
                                        #   in Loop: Header=BB15_7 Depth=1
	slli.d	$t7, $t3, 2
	stx.w	$t6, $t1, $t7
	ldx.wu	$t6, $a2, $t2
	addi.d	$t3, $t3, 1
	bltu	$t3, $t6, .LBB15_7
# %bb.10:                               # %.preheader57
	ori	$t3, $zero, 15
	bltu	$t6, $t3, .LBB15_13
# %bb.11:                               # %.lr.ph64.preheader
	ori	$t3, $a7, 2788
	add.d	$t3, $a2, $t3
	ori	$t4, $zero, 14
	ori	$t5, $zero, 112
	.p2align	4, , 16
.LBB15_12:                              # %.lr.ph64
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t6, $t3, 0
	bstrpick.d	$t7, $t5, 31, 4
	alsl.d	$t6, $t7, $t6, 4
	addi.d	$t6, $t6, -80
	st.w	$t6, $t3, 0
	ldx.wu	$t6, $a2, $t2
	addi.d	$t4, $t4, 1
	addi.d	$t3, $t3, 4
	addi.w	$t5, $t5, 8
	bltu	$t4, $t6, .LBB15_12
.LBB15_13:                              # %.lr.ph67.preheader
	vldx	$vr0, $a2, $t0
	move	$t2, $zero
	ori	$t0, $a7, 3756
	vstx	$vr0, $a2, $t0
	lu12i.w	$t0, 51
	ori	$t3, $t0, 2556
	add.d	$t3, $a0, $t3
	addi.d	$t4, $sp, 8
	ori	$t5, $zero, 496
	move	$t6, $a2
	.p2align	4, , 16
.LBB15_14:                              # %.lr.ph67
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t7, $t6, 0
	slli.d	$t7, $t7, 2
	ldx.w	$t7, $t1, $t7
	add.d	$t8, $t4, $t2
	ld.w	$t8, $t8, 16
	add.d	$t7, $t8, $t7
	stx.w	$t7, $t3, $t2
	addi.d	$t2, $t2, 4
	addi.d	$t6, $t6, 1
	bne	$t2, $t5, .LBB15_14
# %bb.15:                               # %._crit_edge68
	ldptr.w	$t3, $a2, 14064
	ori	$t2, $a7, 2988
	add.d	$t1, $a2, $t2
	beqz	$t3, .LBB15_23
# %bb.16:                               # %.lr.ph.1.preheader
	move	$t4, $zero
	ori	$t3, $a6, 1584
	add.d	$t5, $a0, $t3
	ori	$t6, $zero, 1
	ori	$t3, $a3, 1776
	.p2align	4, , 16
.LBB15_17:                              # %.lr.ph.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_18 Depth 2
	move	$t7, $zero
	ori	$t8, $t4, 64
	.p2align	4, , 16
.LBB15_18:                              # %.lr.ph.i55.1
                                        #   Parent Loop BB15_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$fp, $t8, 31, 1
	slli.d	$s0, $fp, 1
	ldx.h	$s0, $t5, $s0
	andi	$t8, $t8, 1
	sub.d	$t8, $zero, $t8
	andi	$t8, $t8, 2032
	xor	$t8, $t8, $s0
	srli.d	$t8, $t8, 2
	and	$t8, $t8, $a5
	ldx.w	$t8, $a4, $t8
	add.d	$t7, $t8, $t7
	move	$t8, $fp
	bne	$fp, $t6, .LBB15_18
# %bb.19:                               # %RcTree_GetPrice.exit.1
                                        #   in Loop: Header=BB15_17 Depth=1
	slli.d	$t8, $t4, 2
	stx.w	$t7, $t1, $t8
	ldx.wu	$t7, $a2, $t3
	addi.d	$t4, $t4, 1
	bltu	$t4, $t7, .LBB15_17
# %bb.20:                               # %.preheader57.1
	ori	$t4, $zero, 15
	bltu	$t7, $t4, .LBB15_23
# %bb.21:                               # %.lr.ph64.1.preheader
	ori	$t4, $a7, 3044
	add.d	$t4, $a2, $t4
	ori	$t5, $zero, 14
	ori	$t6, $zero, 112
	.p2align	4, , 16
.LBB15_22:                              # %.lr.ph64.1
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t7, $t4, 0
	bstrpick.d	$t8, $t6, 31, 4
	alsl.d	$t7, $t8, $t7, 4
	addi.d	$t7, $t7, -80
	st.w	$t7, $t4, 0
	ldx.wu	$t7, $a2, $t3
	addi.d	$t5, $t5, 1
	addi.d	$t4, $t4, 4
	addi.w	$t6, $t6, 8
	bltu	$t5, $t7, .LBB15_22
.LBB15_23:                              # %.lr.ph67.preheader.1
	vldx	$vr0, $a2, $t2
	move	$t2, $zero
	ori	$t3, $a3, 172
	vstx	$vr0, $a2, $t3
	ori	$t3, $t0, 3068
	add.d	$t3, $a0, $t3
	addi.d	$t4, $sp, 8
	ori	$t5, $zero, 496
	move	$t6, $a2
	.p2align	4, , 16
.LBB15_24:                              # %.lr.ph67.1
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t7, $t6, 0
	slli.d	$t7, $t7, 2
	ldx.w	$t7, $t1, $t7
	add.d	$t8, $t4, $t2
	ld.w	$t8, $t8, 16
	add.d	$t7, $t8, $t7
	stx.w	$t7, $t3, $t2
	addi.d	$t2, $t2, 4
	addi.d	$t6, $t6, 1
	bne	$t2, $t5, .LBB15_24
# %bb.25:                               # %._crit_edge68.1
	ldptr.w	$t3, $a2, 14064
	ori	$t2, $a7, 3244
	add.d	$t1, $a2, $t2
	beqz	$t3, .LBB15_33
# %bb.26:                               # %.lr.ph.2.preheader
	move	$t4, $zero
	ori	$t3, $a6, 1712
	add.d	$t5, $a0, $t3
	ori	$t6, $zero, 1
	ori	$t3, $a3, 1776
	.p2align	4, , 16
.LBB15_27:                              # %.lr.ph.2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_28 Depth 2
	move	$t7, $zero
	ori	$t8, $t4, 64
	.p2align	4, , 16
.LBB15_28:                              # %.lr.ph.i55.2
                                        #   Parent Loop BB15_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$fp, $t8, 31, 1
	slli.d	$s0, $fp, 1
	ldx.h	$s0, $t5, $s0
	andi	$t8, $t8, 1
	sub.d	$t8, $zero, $t8
	andi	$t8, $t8, 2032
	xor	$t8, $t8, $s0
	srli.d	$t8, $t8, 2
	and	$t8, $t8, $a5
	ldx.w	$t8, $a4, $t8
	add.d	$t7, $t8, $t7
	move	$t8, $fp
	bne	$fp, $t6, .LBB15_28
# %bb.29:                               # %RcTree_GetPrice.exit.2
                                        #   in Loop: Header=BB15_27 Depth=1
	slli.d	$t8, $t4, 2
	stx.w	$t7, $t1, $t8
	ldx.wu	$t7, $a2, $t3
	addi.d	$t4, $t4, 1
	bltu	$t4, $t7, .LBB15_27
# %bb.30:                               # %.preheader57.2
	ori	$t4, $zero, 15
	bltu	$t7, $t4, .LBB15_33
# %bb.31:                               # %.lr.ph64.2.preheader
	ori	$t4, $a7, 3300
	add.d	$t4, $a2, $t4
	ori	$t5, $zero, 14
	ori	$t6, $zero, 112
	.p2align	4, , 16
.LBB15_32:                              # %.lr.ph64.2
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t7, $t4, 0
	bstrpick.d	$t8, $t6, 31, 4
	alsl.d	$t7, $t8, $t7, 4
	addi.d	$t7, $t7, -80
	st.w	$t7, $t4, 0
	ldx.wu	$t7, $a2, $t3
	addi.d	$t5, $t5, 1
	addi.d	$t4, $t4, 4
	addi.w	$t6, $t6, 8
	bltu	$t5, $t7, .LBB15_32
.LBB15_33:                              # %.lr.ph67.preheader.2
	vldx	$vr0, $a2, $t2
	move	$t2, $zero
	ori	$t3, $a3, 684
	vstx	$vr0, $a2, $t3
	ori	$t3, $t0, 3580
	add.d	$t3, $a0, $t3
	addi.d	$t4, $sp, 8
	ori	$t5, $zero, 496
	move	$t6, $a2
	.p2align	4, , 16
.LBB15_34:                              # %.lr.ph67.2
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t7, $t6, 0
	slli.d	$t7, $t7, 2
	ldx.w	$t7, $t1, $t7
	add.d	$t8, $t4, $t2
	ld.w	$t8, $t8, 16
	add.d	$t7, $t8, $t7
	stx.w	$t7, $t3, $t2
	addi.d	$t2, $t2, 4
	addi.d	$t6, $t6, 1
	bne	$t2, $t5, .LBB15_34
# %bb.35:                               # %._crit_edge68.2
	ldptr.w	$t3, $a2, 14064
	ori	$t2, $a7, 3500
	add.d	$t1, $a2, $t2
	beqz	$t3, .LBB15_43
# %bb.36:                               # %.lr.ph.3.preheader
	move	$t3, $zero
	ori	$a6, $a6, 1840
	add.d	$t4, $a0, $a6
	ori	$t5, $zero, 1
	ori	$a6, $a3, 1776
	.p2align	4, , 16
.LBB15_37:                              # %.lr.ph.3
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_38 Depth 2
	move	$t6, $zero
	ori	$t7, $t3, 64
	.p2align	4, , 16
.LBB15_38:                              # %.lr.ph.i55.3
                                        #   Parent Loop BB15_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t8, $t7, 31, 1
	slli.d	$fp, $t8, 1
	ldx.h	$fp, $t4, $fp
	andi	$t7, $t7, 1
	sub.d	$t7, $zero, $t7
	andi	$t7, $t7, 2032
	xor	$t7, $t7, $fp
	srli.d	$t7, $t7, 2
	and	$t7, $t7, $a5
	ldx.w	$t7, $a4, $t7
	add.d	$t6, $t7, $t6
	move	$t7, $t8
	bne	$t8, $t5, .LBB15_38
# %bb.39:                               # %RcTree_GetPrice.exit.3
                                        #   in Loop: Header=BB15_37 Depth=1
	slli.d	$t7, $t3, 2
	stx.w	$t6, $t1, $t7
	ldx.wu	$t6, $a2, $a6
	addi.d	$t3, $t3, 1
	bltu	$t3, $t6, .LBB15_37
# %bb.40:                               # %.preheader57.3
	ori	$a4, $zero, 15
	bltu	$t6, $a4, .LBB15_43
# %bb.41:                               # %.lr.ph64.3.preheader
	ori	$a4, $a7, 3556
	add.d	$a4, $a2, $a4
	ori	$a5, $zero, 14
	ori	$a7, $zero, 112
	.p2align	4, , 16
.LBB15_42:                              # %.lr.ph64.3
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t3, $a4, 0
	bstrpick.d	$t4, $a7, 31, 4
	alsl.d	$t3, $t4, $t3, 4
	addi.d	$t3, $t3, -80
	st.w	$t3, $a4, 0
	ldx.wu	$t3, $a2, $a6
	addi.d	$a5, $a5, 1
	addi.d	$a4, $a4, 4
	addi.w	$a7, $a7, 8
	bltu	$a5, $t3, .LBB15_42
.LBB15_43:                              # %.lr.ph67.preheader.3
	vldx	$vr0, $a2, $t2
	move	$a4, $zero
	ori	$a3, $a3, 1196
	vstx	$vr0, $a2, $a3
	ori	$a3, $t0, 4092
	add.d	$a0, $a0, $a3
	addi.d	$a3, $sp, 8
	ori	$a5, $zero, 496
	.p2align	4, , 16
.LBB15_44:                              # %.lr.ph67.3
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a6, $a2, 0
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $t1, $a6
	add.d	$a7, $a3, $a4
	ld.w	$a7, $a7, 16
	add.d	$a6, $a7, $a6
	stx.w	$a6, $a0, $a4
	addi.d	$a4, $a4, 4
	addi.d	$a2, $a2, 1
	bne	$a4, $a5, .LBB15_44
# %bb.45:                               # %._crit_edge68.3
	st.w	$zero, $a1, 0
	ld.d	$s1, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 528                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 536                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 544
	ret
.Lfunc_end15:
	.size	FillDistancesPrices, .Lfunc_end15-FillDistancesPrices
                                        # -- End function
	.globl	LzmaEnc_PrepareForLzma2         # -- Begin function LzmaEnc_PrepareForLzma2
	.p2align	5
	.type	LzmaEnc_PrepareForLzma2,@function
LzmaEnc_PrepareForLzma2:                # @LzmaEnc_PrepareForLzma2
# %bb.0:
	st.d	$a1, $a0, 1632
	lu12i.w	$a1, 61
	ori	$a1, $a1, 2496
	ori	$a5, $zero, 1
	stx.w	$a5, $a0, $a1
	move	$a1, $a2
	move	$a2, $a3
	move	$a3, $a4
	pcaddu18i	$t8, %call36(LzmaEnc_AllocAndInit)
	jr	$t8
.Lfunc_end16:
	.size	LzmaEnc_PrepareForLzma2, .Lfunc_end16-LzmaEnc_PrepareForLzma2
                                        # -- End function
	.p2align	5                               # -- Begin function LzmaEnc_AllocAndInit
	.type	LzmaEnc_AllocAndInit,@function
LzmaEnc_AllocAndInit:                   # @LzmaEnc_AllocAndInit
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a3
	move	$s2, $a2
	move	$s1, $a1
	move	$fp, $a0
	lu12i.w	$a0, 61
	ori	$a0, $a0, 2372
	add.d	$s4, $fp, $a0
	ld.w	$a0, $s4, 116
	lu12i.w	$a1, 51
	ori	$a2, $a1, 1488
	ori	$a1, $zero, 2
	add.d	$s5, $fp, $a2
	bltu	$a0, $a1, .LBB17_31
# %bb.1:
	beq	$a0, $a1, .LBB17_32
# %bb.2:
	ori	$a2, $zero, 5
	ori	$a1, $zero, 4
	bltu	$a0, $a2, .LBB17_32
# %bb.3:
	ori	$a2, $zero, 9
	ori	$a1, $zero, 6
	bltu	$a0, $a2, .LBB17_32
# %bb.4:
	ori	$a2, $zero, 17
	ori	$a1, $zero, 8
	bltu	$a0, $a2, .LBB17_32
# %bb.5:
	ori	$a2, $zero, 33
	ori	$a1, $zero, 10
	bltu	$a0, $a2, .LBB17_32
# %bb.6:
	ori	$a2, $zero, 65
	ori	$a1, $zero, 12
	bltu	$a0, $a2, .LBB17_32
# %bb.7:
	ori	$a2, $zero, 129
	ori	$a1, $zero, 14
	bltu	$a0, $a2, .LBB17_32
# %bb.8:
	ori	$a2, $zero, 257
	ori	$a1, $zero, 16
	bltu	$a0, $a2, .LBB17_32
# %bb.9:
	ori	$a2, $zero, 513
	ori	$a1, $zero, 18
	bltu	$a0, $a2, .LBB17_32
# %bb.10:
	ori	$a2, $zero, 1025
	ori	$a1, $zero, 20
	bltu	$a0, $a2, .LBB17_32
# %bb.11:
	ori	$a2, $zero, 2049
	ori	$a1, $zero, 22
	bltu	$a0, $a2, .LBB17_32
# %bb.12:
	lu12i.w	$a1, 1
	ori	$a2, $a1, 1
	ori	$a1, $zero, 24
	bltu	$a0, $a2, .LBB17_32
# %bb.13:
	lu12i.w	$a1, 2
	ori	$a2, $a1, 1
	ori	$a1, $zero, 26
	bltu	$a0, $a2, .LBB17_32
# %bb.14:
	lu12i.w	$a1, 4
	ori	$a2, $a1, 1
	ori	$a1, $zero, 28
	bltu	$a0, $a2, .LBB17_32
# %bb.15:
	lu12i.w	$a1, 8
	ori	$a2, $a1, 1
	ori	$a1, $zero, 30
	bltu	$a0, $a2, .LBB17_32
# %bb.16:
	lu12i.w	$a1, 16
	ori	$a2, $a1, 1
	ori	$a1, $zero, 32
	bltu	$a0, $a2, .LBB17_32
# %bb.17:
	lu12i.w	$a1, 32
	ori	$a2, $a1, 1
	ori	$a1, $zero, 34
	bltu	$a0, $a2, .LBB17_32
# %bb.18:
	lu12i.w	$a1, 64
	ori	$a2, $a1, 1
	ori	$a1, $zero, 36
	bltu	$a0, $a2, .LBB17_32
# %bb.19:
	lu12i.w	$a1, 128
	ori	$a2, $a1, 1
	ori	$a1, $zero, 38
	bltu	$a0, $a2, .LBB17_32
# %bb.20:
	lu12i.w	$a1, 256
	ori	$a2, $a1, 1
	ori	$a1, $zero, 40
	bltu	$a0, $a2, .LBB17_32
# %bb.21:
	lu12i.w	$a1, 512
	ori	$a2, $a1, 1
	ori	$a1, $zero, 42
	bltu	$a0, $a2, .LBB17_32
# %bb.22:
	lu12i.w	$a1, 1024
	ori	$a2, $a1, 1
	ori	$a1, $zero, 44
	bltu	$a0, $a2, .LBB17_32
# %bb.23:
	lu12i.w	$a1, 2048
	ori	$a2, $a1, 1
	ori	$a1, $zero, 46
	bltu	$a0, $a2, .LBB17_32
# %bb.24:
	lu12i.w	$a1, 4096
	ori	$a2, $a1, 1
	ori	$a1, $zero, 48
	bltu	$a0, $a2, .LBB17_32
# %bb.25:
	lu12i.w	$a1, 8192
	ori	$a2, $a1, 1
	ori	$a1, $zero, 50
	bltu	$a0, $a2, .LBB17_32
# %bb.26:
	lu12i.w	$a1, 16384
	ori	$a2, $a1, 1
	ori	$a1, $zero, 52
	bltu	$a0, $a2, .LBB17_32
# %bb.27:
	lu12i.w	$a1, 32768
	ori	$a2, $a1, 1
	ori	$a1, $zero, 54
	bltu	$a0, $a2, .LBB17_32
# %bb.28:
	lu12i.w	$a1, 65536
	ori	$a2, $a1, 1
	ori	$a1, $zero, 56
	bltu	$a0, $a2, .LBB17_32
# %bb.29:
	lu12i.w	$a1, 131072
	ori	$a2, $a1, 1
	ori	$a1, $zero, 58
	bltu	$a0, $a2, .LBB17_32
# %bb.30:
	lu12i.w	$a1, 262144
	sltu	$a0, $a1, $a0
	ori	$a1, $zero, 60
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 62
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
	b	.LBB17_32
.LBB17_31:
	move	$a1, $zero
.LBB17_32:
	ld.d	$a0, $s4, 52
	stptr.w	$a1, $s5, 3168
	st.w	$zero, $s4, 104
	st.w	$zero, $s4, 112
	beqz	$a0, .LBB17_35
# %bb.33:
	ld.w	$a0, $s4, 108
	beqz	$a0, .LBB17_37
.LBB17_34:
	ld.w	$a0, $fp, 1672
	ld.w	$a1, $s4, 4
	sltu	$a0, $zero, $a0
	sltui	$a1, $a1, 1
	and	$a0, $a1, $a0
	b	.LBB17_38
.LBB17_35:
	ld.d	$a2, $s2, 0
	lu12i.w	$a1, 16
	move	$a0, $s2
	jirl	$ra, $a2, 0
	st.d	$a0, $s4, 52
	beqz	$a0, .LBB17_48
# %bb.36:
	addu16i.d	$a0, $a0, 1
	st.d	$a0, $s4, 44
	ld.w	$a0, $s4, 108
	bnez	$a0, .LBB17_34
.LBB17_37:
	move	$a0, $zero
.LBB17_38:
	ori	$a1, $zero, 3172
	ldx.w	$a2, $s5, $a1
	ori	$a1, $zero, 3176
	ldx.w	$a3, $s5, $a1
	ldptr.d	$a1, $s5, 3192
	st.w	$a0, $fp, 56
	add.w	$s6, $a3, $a2
	beqz	$a1, .LBB17_41
# %bb.39:
	ld.d	$a2, $s4, 132
	beqz	$a2, .LBB17_41
# %bb.40:
	ld.w	$a2, $s4, 0
	beq	$a2, $s6, .LBB17_44
.LBB17_41:
	ld.d	$a2, $s2, 8
	move	$a0, $s2
	jirl	$ra, $a2, 0
	ld.d	$a2, $s2, 8
	ld.d	$a1, $s4, 132
	move	$a0, $s2
	jirl	$ra, $a2, 0
	stptr.d	$zero, $s5, 3192
	st.d	$zero, $s4, 132
	ld.d	$a2, $s2, 0
	ori	$a0, $zero, 768
	sll.w	$a0, $a0, $s6
	slli.d	$s3, $a0, 1
	move	$a0, $s2
	move	$a1, $s3
	jirl	$ra, $a2, 0
	ld.d	$a2, $s2, 0
	stptr.d	$a0, $s5, 3192
	move	$a0, $s2
	move	$a1, $s3
	jirl	$ra, $a2, 0
	ldptr.d	$a1, $s5, 3192
	st.d	$a0, $s4, 132
	beqz	$a1, .LBB17_47
# %bb.42:
	beqz	$a0, .LBB17_47
# %bb.43:
	ld.w	$a0, $fp, 56
	st.w	$s6, $s4, 0
.LBB17_44:
	ld.w	$a1, $s4, 116
	lu12i.w	$a2, 4096
	sltu	$a2, $a2, $a1
	st.w	$a2, $fp, 1676
	lu12i.w	$a2, 1
	add.w	$a3, $a1, $a2
	sltu	$a3, $a3, $s1
	sub.w	$a4, $s1, $a1
	maskeqz	$a4, $a4, $a3
	masknez	$a2, $a2, $a3
	or	$a2, $a4, $a2
	beqz	$a0, .LBB17_49
# %bb.45:
	ld.w	$a3, $s5, 0
	addi.d	$s1, $fp, 64
	ori	$a4, $zero, 273
	move	$a0, $s1
	move	$a5, $s0
	pcaddu18i	$ra, %call36(MatchFinderMt_Create)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB17_52
# %bb.46:
	st.d	$s1, $fp, 48
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(MatchFinderMt_CreateVTable)
	jirl	$ra, $ra, 0
	b	.LBB17_51
.LBB17_47:                              # %.critedge.i
	ld.d	$a2, $s2, 8
	move	$a0, $s2
	jirl	$ra, $a2, 0
	ld.d	$a2, $s2, 8
	ld.d	$a1, $s4, 132
	move	$a0, $s2
	jirl	$ra, $a2, 0
	stptr.d	$zero, $s5, 3192
	st.d	$zero, $s4, 132
.LBB17_48:
	ori	$a0, $zero, 2
	b	.LBB17_52
.LBB17_49:
	ld.w	$a3, $s5, 0
	addi.d	$s1, $fp, 1560
	ori	$a4, $zero, 273
	move	$a0, $s1
	move	$a5, $s0
	pcaddu18i	$ra, %call36(MatchFinder_Create)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_48
# %bb.50:
	st.d	$s1, $fp, 48
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(MatchFinder_CreateVTable)
	jirl	$ra, $ra, 0
.LBB17_51:                              # %LzmaEnc_Alloc.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(LzmaEnc_Init)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(LzmaEnc_InitPrices)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	st.d	$zero, $s4, 92
.LBB17_52:                              # %LzmaEnc_Alloc.exit.thread
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end17:
	.size	LzmaEnc_AllocAndInit, .Lfunc_end17-LzmaEnc_AllocAndInit
                                        # -- End function
	.globl	LzmaEnc_MemPrepare              # -- Begin function LzmaEnc_MemPrepare
	.p2align	5
	.type	LzmaEnc_MemPrepare,@function
LzmaEnc_MemPrepare:                     # @LzmaEnc_MemPrepare
# %bb.0:
	ori	$a6, $zero, 1
	st.w	$a6, $a0, 1660
	st.d	$a1, $a0, 1624
	st.d	$a2, $a0, 1664
	lu12i.w	$a1, 61
	ori	$a1, $a1, 2496
	stx.w	$a6, $a0, $a1
	move	$a1, $a3
	move	$a2, $a4
	move	$a3, $a5
	pcaddu18i	$t8, %call36(LzmaEnc_AllocAndInit)
	jr	$t8
.Lfunc_end18:
	.size	LzmaEnc_MemPrepare, .Lfunc_end18-LzmaEnc_MemPrepare
                                        # -- End function
	.globl	LzmaEnc_Finish                  # -- Begin function LzmaEnc_Finish
	.p2align	5
	.type	LzmaEnc_Finish,@function
LzmaEnc_Finish:                         # @LzmaEnc_Finish
# %bb.0:
	ld.w	$a1, $a0, 56
	beqz	$a1, .LBB19_2
# %bb.1:
	addi.d	$a0, $a0, 64
	pcaddu18i	$t8, %call36(MatchFinderMt_ReleaseStream)
	jr	$t8
.LBB19_2:
	ret
.Lfunc_end19:
	.size	LzmaEnc_Finish, .Lfunc_end19-LzmaEnc_Finish
                                        # -- End function
	.globl	LzmaEnc_GetNumAvailableBytes    # -- Begin function LzmaEnc_GetNumAvailableBytes
	.p2align	5
	.type	LzmaEnc_GetNumAvailableBytes,@function
LzmaEnc_GetNumAvailableBytes:           # @LzmaEnc_GetNumAvailableBytes
# %bb.0:
	ld.d	$a1, $a0, 16
	ld.d	$a0, $a0, 48
	jr	$a1
.Lfunc_end20:
	.size	LzmaEnc_GetNumAvailableBytes, .Lfunc_end20-LzmaEnc_GetNumAvailableBytes
                                        # -- End function
	.globl	LzmaEnc_GetCurBuf               # -- Begin function LzmaEnc_GetCurBuf
	.p2align	5
	.type	LzmaEnc_GetCurBuf,@function
LzmaEnc_GetCurBuf:                      # @LzmaEnc_GetCurBuf
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a1, $a0, 24
	ld.d	$a0, $a0, 48
	jirl	$ra, $a1, 0
	lu12i.w	$a1, 51
	ori	$a1, $a1, 1492
	ldx.wu	$a1, $fp, $a1
	sub.d	$a0, $a0, $a1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end21:
	.size	LzmaEnc_GetCurBuf, .Lfunc_end21-LzmaEnc_GetCurBuf
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function LzmaEnc_CodeOneMemBlock
.LCPI22_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	LzmaEnc_CodeOneMemBlock
	.p2align	5
	.type	LzmaEnc_CodeOneMemBlock,@function
LzmaEnc_CodeOneMemBlock:                # @LzmaEnc_CodeOneMemBlock
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	move	$s0, $a5
	move	$s1, $a4
	move	$fp, $a3
	move	$s2, $a0
	lu12i.w	$a0, 61
	pcalau12i	$a3, %pc_hi20(MyWrite)
	addi.d	$a3, $a3, %pc_lo12(MyWrite)
	st.d	$a3, $sp, 8
	ld.d	$a3, $fp, 0
	ori	$a0, $a0, 2384
	add.d	$s3, $s2, $a0
	st.d	$a2, $sp, 16
	st.d	$a3, $sp, 24
	st.w	$zero, $sp, 32
	st.w	$zero, $s3, 72
	st.w	$zero, $s3, 92
	st.w	$zero, $s3, 100
	beqz	$a1, .LBB22_2
# %bb.1:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(LzmaEnc_Init)
	jirl	$ra, $ra, 0
.LBB22_2:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(LzmaEnc_InitPrices)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $s3, 0
	ld.d	$a0, $s3, 40
	pcalau12i	$a1, %pc_hi20(.LCPI22_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI22_0)
	ld.d	$s4, $s3, 80
	st.d	$a0, $s3, 24
	st.w	$zero, $s3, 64
	addi.d	$a0, $sp, 8
	st.d	$a0, $s3, 48
	ld.w	$a3, $s0, 0
	vst	$vr0, $s3, 8
	st.b	$zero, $s3, 4
	st.d	$zero, $s3, 56
	ori	$a1, $zero, 1
	move	$a0, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(LzmaEnc_CodeOneBlock)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 80
	ld.d	$a2, $sp, 24
	ld.d	$a3, $fp, 0
	ld.w	$a4, $sp, 32
	sub.d	$a1, $a1, $s4
	st.w	$a1, $s0, 0
	sub.d	$a1, $a3, $a2
	sltui	$a2, $a4, 1
	maskeqz	$a0, $a0, $a2
	ori	$a3, $zero, 7
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	st.d	$a1, $fp, 0
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end22:
	.size	LzmaEnc_CodeOneMemBlock, .Lfunc_end22-LzmaEnc_CodeOneMemBlock
                                        # -- End function
	.p2align	5                               # -- Begin function MyWrite
	.type	MyWrite,@function
MyWrite:                                # @MyWrite
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	move	$s0, $a2
	bgeu	$a0, $a2, .LBB23_2
# %bb.1:
	ori	$a2, $zero, 1
	st.w	$a2, $fp, 24
	move	$s0, $a0
.LBB23_2:
	ld.d	$a0, $fp, 8
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 8
	sub.d	$a0, $a0, $s0
	st.d	$a0, $fp, 16
	add.d	$a0, $a1, $s0
	st.d	$a0, $fp, 8
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end23:
	.size	MyWrite, .Lfunc_end23-MyWrite
                                        # -- End function
	.p2align	5                               # -- Begin function LzmaEnc_CodeOneBlock
	.type	LzmaEnc_CodeOneBlock,@function
LzmaEnc_CodeOneBlock:                   # @LzmaEnc_CodeOneBlock
# %bb.0:
	addi.d	$sp, $sp, -720
	st.d	$ra, $sp, 712                   # 8-byte Folded Spill
	st.d	$fp, $sp, 704                   # 8-byte Folded Spill
	st.d	$s0, $sp, 696                   # 8-byte Folded Spill
	st.d	$s1, $sp, 688                   # 8-byte Folded Spill
	st.d	$s2, $sp, 680                   # 8-byte Folded Spill
	st.d	$s3, $sp, 672                   # 8-byte Folded Spill
	st.d	$s4, $sp, 664                   # 8-byte Folded Spill
	st.d	$s5, $sp, 656                   # 8-byte Folded Spill
	st.d	$s6, $sp, 648                   # 8-byte Folded Spill
	st.d	$s7, $sp, 640                   # 8-byte Folded Spill
	st.d	$s8, $sp, 632                   # 8-byte Folded Spill
	move	$s3, $a0
	lu12i.w	$a0, 61
	ori	$a0, $a0, 2376
	add.d	$s4, $s3, $a0
	ld.w	$a0, $s4, 120
	move	$s7, $a3
	move	$s6, $a2
	move	$s1, $a1
	beqz	$a0, .LBB24_2
# %bb.1:
	ld.d	$a1, $s3, 0
	ld.d	$a0, $s3, 48
	jirl	$ra, $a1, 0
	st.w	$zero, $s4, 120
.LBB24_2:
	ld.w	$a1, $s4, 100
	ld.w	$a0, $s4, 108
	or	$a1, $a1, $a0
	bnez	$a1, .LBB24_8
# %bb.3:
	ld.w	$a0, $s4, 72
	beqz	$a0, .LBB24_5
.LBB24_4:                               # %.thread15.i
	ld.w	$a1, $s3, 1696
	ori	$a0, $zero, 9
	st.w	$a0, $s4, 108
	bnez	$a1, .LBB24_6
	b	.LBB24_7
.LBB24_5:
	ld.w	$a0, $s3, 1696
	beqz	$a0, .LBB24_9
.LBB24_6:                               # %.thread.i
	ori	$a0, $zero, 8
	st.w	$a0, $s4, 108
.LBB24_7:                               # %.thread19.i
	ori	$a1, $zero, 1
	st.w	$a1, $s4, 100
.LBB24_8:                               # %CheckErrors.exit.thread
	ld.d	$s8, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 680                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 688                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 696                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 704                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 712                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 720
	ret
.LBB24_9:                               # %CheckErrors.exit
	lu12i.w	$fp, 52
	lu12i.w	$s0, 51
	ld.d	$a1, $s4, 88
	ori	$a0, $s0, 1488
	add.d	$a0, $s3, $a0
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(kLiteralNextStates)
	addi.d	$a0, $a0, %pc_lo12(kLiteralNextStates)
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	move	$s2, $a1
	st.d	$s3, $sp, 328                   # 8-byte Folded Spill
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	bnez	$a1, .LBB24_24
# %bb.10:
	ld.d	$a1, $s3, 16
	ld.d	$a0, $s3, 48
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB24_577
# %bb.11:
	move	$s8, $s1
	ld.d	$a1, $s3, 16
	ld.d	$a0, $s3, 48
	jirl	$ra, $a1, 0
	stptr.w	$a0, $s3, 2872
	ld.d	$a2, $s3, 32
	ld.d	$a0, $s3, 48
	lu12i.w	$a1, 50
	ori	$a1, $a1, 3388
	add.d	$s2, $s3, $a1
	move	$a1, $s2
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB24_14
# %bb.12:
	addi.d	$a0, $a0, -2
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s2, $a0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB24_14
# %bb.13:
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 48
	jirl	$ra, $a1, 0
.LBB24_14:                              # %ReadMatchDistances.exit
	ld.d	$s5, $sp, 360                   # 8-byte Folded Reload
	ld.w	$a1, $s5, 4
	ld.wu	$a0, $s5, 24
	addi.d	$a1, $a1, 1
	slli.d	$a2, $a0, 5
	add.d	$a3, $s3, $a2
	ori	$a4, $fp, 592
	ld.wu	$a2, $s4, 8
	ldx.hu	$a5, $a3, $a4
	st.w	$a1, $s5, 4
	addi.d	$s2, $s4, 8
	srli.d	$a2, $a2, 11
	mul.d	$a2, $a2, $a5
	ori	$s1, $zero, 2048
	sub.d	$a6, $s1, $a5
	srli.d	$a6, $a6, 5
	st.w	$a2, $s4, 8
	add.d	$a5, $a5, $a6
	bstrpick.d	$a6, $a2, 31, 24
	stx.h	$a5, $a3, $a4
	bnez	$a6, .LBB24_16
# %bb.15:
	slli.d	$a0, $a2, 8
	st.w	$a0, $s2, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s5, 24
	ld.w	$a1, $s5, 4
.LBB24_16:                              # %RangeEnc_EncodeBit.exit
	slli.d	$a0, $a0, 2
	ld.d	$a2, $sp, 488                   # 8-byte Folded Reload
	ldx.w	$a2, $a2, $a0
	ld.d	$a3, $s3, 8
	ld.d	$a0, $s3, 48
	st.w	$a2, $s5, 24
	sub.w	$a1, $zero, $a1
	jirl	$ra, $a3, 0
	ldptr.d	$s3, $s5, 3192
	addi.d	$s5, $a0, 256
	b	.LBB24_18
	.p2align	4, , 16
.LBB24_17:                              # %RangeEnc_EncodeBit.exit.i
                                        #   in Loop: Header=BB24_18 Depth=1
	bstrpick.d	$a0, $s5, 31, 15
	slli.d	$s5, $s5, 1
	bnez	$a0, .LBB24_23
.LBB24_18:                              # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s5, 31, 8
	slli.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 56, 1
	ld.wu	$a3, $s2, 0
	slli.d	$a1, $a0, 1
	ldx.hu	$a2, $s3, $a1
	srli.d	$a1, $a3, 11
	andi	$a4, $s5, 128
	mul.d	$a1, $a1, $a2
	bnez	$a4, .LBB24_20
# %bb.19:                               #   in Loop: Header=BB24_18 Depth=1
	sub.d	$a3, $s1, $a2
	bstrpick.d	$a3, $a3, 31, 5
	add.d	$a2, $a3, $a2
	b	.LBB24_21
	.p2align	4, , 16
.LBB24_20:                              #   in Loop: Header=BB24_18 Depth=1
	ld.d	$a4, $s4, 16
	bstrpick.d	$a5, $a1, 31, 0
	add.d	$a4, $a4, $a5
	st.d	$a4, $s4, 16
	sub.w	$a1, $a3, $a1
	srli.d	$a3, $a2, 5
	sub.d	$a2, $a2, $a3
.LBB24_21:                              #   in Loop: Header=BB24_18 Depth=1
	alsl.d	$a0, $a0, $s3, 1
	st.w	$a1, $s2, 0
	bstrpick.d	$a3, $a1, 31, 24
	st.h	$a2, $a0, 0
	bnez	$a3, .LBB24_17
# %bb.22:                               #   in Loop: Header=BB24_18 Depth=1
	slli.d	$a0, $a1, 8
	st.w	$a0, $s2, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	b	.LBB24_17
.LBB24_23:
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 4
	addi.d	$a0, $a0, -1
	st.w	$a0, $a1, 4
	ori	$s2, $zero, 1
	ld.d	$s3, $sp, 328                   # 8-byte Folded Reload
	move	$s1, $s8
.LBB24_24:
	ld.d	$a1, $s3, 16
	ld.d	$a0, $s3, 48
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB24_575
# %bb.25:                               # %.preheader
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s7, $sp, 264                   # 8-byte Folded Spill
	ori	$a0, $fp, 2198
	add.d	$a0, $s3, $a0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	lu12i.w	$a0, 50
	ori	$a1, $a0, 3388
	add.d	$s5, $s3, $a1
	addi.d	$a1, $s3, 2047
	addi.d	$s1, $a1, 829
	addi.d	$a2, $a1, 833
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	ori	$a2, $a0, 2876
	add.d	$a2, $s3, $a2
	st.d	$a2, $sp, 536                   # 8-byte Folded Spill
	ori	$a2, $fp, 592
	add.d	$a2, $s3, $a2
	st.d	$a2, $sp, 552                   # 8-byte Folded Spill
	ori	$a2, $fp, 976
	add.d	$a2, $s3, $a2
	st.d	$a2, $sp, 496                   # 8-byte Folded Spill
	ori	$a2, $fp, 1000
	add.d	$a2, $s3, $a2
	st.d	$a2, $sp, 456                   # 8-byte Folded Spill
	ori	$a2, $fp, 1072
	add.d	$a2, $s3, $a2
	st.d	$a2, $sp, 432                   # 8-byte Folded Spill
	addi.d	$a2, $a1, 861
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	ori	$a2, $fp, 1024
	add.d	$a2, $s3, $a2
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	ori	$a2, $fp, 1048
	add.d	$a2, $s3, $a2
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	lu12i.w	$a2, 57
	ori	$a3, $a2, 1280
	add.d	$a3, $s3, $a3
	st.d	$a3, $sp, 424                   # 8-byte Folded Spill
	ori	$a3, $fp, 3256
	add.d	$a3, $s3, $a3
	st.d	$a3, $sp, 448                   # 8-byte Folded Spill
	lu12i.w	$a3, 48
	ori	$a3, $a3, 2876
	add.d	$a3, $s3, $a3
	st.d	$a3, $sp, 312                   # 8-byte Folded Spill
	ori	$a3, $fp, 492
	add.d	$a3, $s3, $a3
	st.d	$a3, $sp, 528                   # 8-byte Folded Spill
	ori	$a3, $s0, 1516
	add.d	$a3, $s3, $a3
	st.d	$a3, $sp, 592                   # 8-byte Folded Spill
	ori	$a3, $s0, 2540
	add.d	$a3, $s3, $a3
	st.d	$a3, $sp, 584                   # 8-byte Folded Spill
	ori	$a3, $fp, 2228
	add.d	$a3, $s3, $a3
	st.d	$a3, $sp, 232                   # 8-byte Folded Spill
	ori	$a3, $fp, 1456
	add.d	$a3, $s3, $a3
	st.d	$a3, $sp, 224                   # 8-byte Folded Spill
	ori	$a3, $fp, 2196
	add.d	$a3, $s3, $a3
	st.d	$a3, $sp, 512                   # 8-byte Folded Spill
	ori	$a3, $fp, 1968
	add.d	$a3, $s3, $a3
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	ori	$a3, $a2, 252
	add.d	$a3, $s3, $a3
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	bstrpick.d	$a3, $s6, 31, 0
	st.d	$a3, $sp, 248                   # 8-byte Folded Spill
	ori	$a0, $a0, 3376
	add.d	$a0, $s3, $a0
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	ori	$a0, $a2, 1272
	add.d	$a0, $s3, $a0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $a1, 925
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 877
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	lu12i.w	$a0, 8191
	ori	$a0, $a0, 4094
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 4092
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, 3
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 300
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$s6, $sp, 360                   # 8-byte Folded Reload
	addi.d	$a0, $s6, 8
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	addi.d	$s7, $s4, 8
	ori	$t6, $zero, 1
	st.d	$s5, $sp, 560                   # 8-byte Folded Spill
	b	.LBB24_27
.LBB24_26:                              #   in Loop: Header=BB24_27 Depth=1
	bstrpick.d	$a0, $a1, 31, 15
	bnez	$a0, .LBB24_578
	.p2align	4, , 16
.LBB24_27:                              # %CheckErrors.exit346
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_37 Depth 2
                                        #     Child Loop BB24_49 Depth 2
                                        #     Child Loop BB24_59 Depth 2
                                        #     Child Loop BB24_69 Depth 2
                                        #     Child Loop BB24_78 Depth 2
                                        #     Child Loop BB24_87 Depth 2
                                        #     Child Loop BB24_112 Depth 2
                                        #     Child Loop BB24_325 Depth 2
                                        #     Child Loop BB24_333 Depth 2
                                        #     Child Loop BB24_338 Depth 2
                                        #     Child Loop BB24_349 Depth 2
                                        #     Child Loop BB24_96 Depth 2
                                        #     Child Loop BB24_129 Depth 2
                                        #     Child Loop BB24_136 Depth 2
                                        #     Child Loop BB24_145 Depth 2
                                        #     Child Loop BB24_154 Depth 2
                                        #     Child Loop BB24_301 Depth 2
                                        #     Child Loop BB24_355 Depth 2
                                        #     Child Loop BB24_358 Depth 2
                                        #     Child Loop BB24_554 Depth 2
                                        #     Child Loop BB24_558 Depth 2
                                        #     Child Loop BB24_562 Depth 2
                                        #     Child Loop BB24_566 Depth 2
                                        #     Child Loop BB24_365 Depth 2
                                        #     Child Loop BB24_367 Depth 2
                                        #     Child Loop BB24_377 Depth 2
                                        #       Child Loop BB24_381 Depth 3
                                        #       Child Loop BB24_413 Depth 3
                                        #       Child Loop BB24_411 Depth 3
                                        #       Child Loop BB24_428 Depth 3
                                        #       Child Loop BB24_436 Depth 3
                                        #       Child Loop BB24_439 Depth 3
                                        #       Child Loop BB24_449 Depth 3
                                        #         Child Loop BB24_453 Depth 4
                                        #         Child Loop BB24_460 Depth 4
                                        #         Child Loop BB24_463 Depth 4
                                        #         Child Loop BB24_472 Depth 4
                                        #         Child Loop BB24_476 Depth 4
                                        #         Child Loop BB24_481 Depth 4
                                        #         Child Loop BB24_487 Depth 4
                                        #         Child Loop BB24_491 Depth 4
                                        #       Child Loop BB24_498 Depth 3
                                        #       Child Loop BB24_506 Depth 3
                                        #       Child Loop BB24_509 Depth 3
                                        #       Child Loop BB24_511 Depth 3
                                        #       Child Loop BB24_513 Depth 3
                                        #         Child Loop BB24_514 Depth 4
                                        #           Child Loop BB24_516 Depth 5
                                        #           Child Loop BB24_523 Depth 5
                                        #           Child Loop BB24_528 Depth 5
                                        #           Child Loop BB24_535 Depth 5
                                        #           Child Loop BB24_538 Depth 5
                                        #     Child Loop BB24_549 Depth 2
                                        #     Child Loop BB24_571 Depth 2
                                        #     Child Loop BB24_249 Depth 2
                                        #     Child Loop BB24_234 Depth 2
                                        #     Child Loop BB24_198 Depth 2
                                        #     Child Loop BB24_176 Depth 2
                                        #     Child Loop BB24_293 Depth 2
	ld.w	$a0, $s4, 0
	st.d	$s2, $sp, 568                   # 8-byte Folded Spill
	beqz	$a0, .LBB24_30
# %bb.28:                               #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a0, $s6, 4
	beqz	$a0, .LBB24_33
# %bb.29:                               #   in Loop: Header=BB24_27 Depth=1
	ori	$a0, $zero, 2864
	ldx.w	$s5, $s3, $a0
	ori	$a0, $zero, 2868
	ldx.w	$s8, $s3, $a0
	ori	$fp, $zero, 2
	b	.LBB24_44
	.p2align	4, , 16
.LBB24_30:                              #   in Loop: Header=BB24_27 Depth=1
	ldptr.w	$a1, $s3, 2856
	ldptr.w	$a0, $s3, 2860
	bne	$a1, $a0, .LBB24_40
# %bb.31:                               #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a0, $s6, 4
	stptr.d	$zero, $s3, 2856
	ori	$fp, $zero, 2
	beqz	$a0, .LBB24_92
# %bb.32:                               #   in Loop: Header=BB24_27 Depth=1
	ori	$a0, $zero, 2864
	ldx.w	$a5, $s3, $a0
	ori	$a0, $zero, 2868
	ldx.w	$s0, $s3, $a0
	b	.LBB24_124
	.p2align	4, , 16
.LBB24_33:                              #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a1, $s3, 16
	ld.d	$a0, $s3, 48
	jirl	$ra, $a1, 0
	ld.d	$a2, $s3, 32
	ld.d	$a1, $s3, 48
	stptr.w	$a0, $s3, 2872
	move	$a0, $a1
	move	$a1, $s5
	jirl	$ra, $a2, 0
	move	$s8, $a0
	ori	$fp, $zero, 2
	beqz	$a0, .LBB24_41
# %bb.34:                               #   in Loop: Header=BB24_27 Depth=1
	addi.d	$a0, $s8, -2
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	ldx.w	$s5, $s5, $a0
	ld.w	$a0, $s6, 0
	bne	$s5, $a0, .LBB24_42
# %bb.35:                               #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 48
	jirl	$ra, $a1, 0
	ldptr.w	$a1, $s3, 2872
	sltui	$a2, $a1, 273
	ori	$a3, $zero, 273
	masknez	$a3, $a3, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	bgeu	$s5, $a1, .LBB24_42
# %bb.36:                               # %.lr.ph.preheader.i.i
                                        #   in Loop: Header=BB24_27 Depth=1
	addi.d	$a2, $s8, -1
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 2
	ld.d	$a3, $sp, 560                   # 8-byte Folded Reload
	ldx.w	$a2, $a3, $a2
	addi.d	$a2, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	sub.d	$a2, $zero, $a2
	add.d	$a0, $a0, $s5
	addi.d	$a0, $a0, -1
	ori	$t6, $zero, 1
	.p2align	4, , 16
.LBB24_37:                              # %.lr.ph.i.i
                                        #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a3, $a0, 0
	ldx.bu	$a4, $a0, $a2
	bne	$a3, $a4, .LBB24_43
# %bb.38:                               #   in Loop: Header=BB24_37 Depth=2
	addi.w	$s5, $s5, 1
	addi.d	$a0, $a0, 1
	bne	$a1, $s5, .LBB24_37
# %bb.39:                               #   in Loop: Header=BB24_27 Depth=1
	move	$s5, $a1
	b	.LBB24_43
.LBB24_40:                              #   in Loop: Header=BB24_27 Depth=1
	bstrpick.d	$a1, $a0, 31, 0
	slli.d	$a2, $a1, 5
	alsl.d	$a1, $a1, $a2, 4
	add.d	$a1, $s1, $a1
	ld.w	$a2, $a1, 24
	ld.w	$t3, $a1, 28
	sub.w	$a0, $a2, $a0
	st.d	$a0, $sp, 576                   # 8-byte Folded Spill
	stptr.w	$a2, $s3, 2860
	b	.LBB24_169
.LBB24_41:                              #   in Loop: Header=BB24_27 Depth=1
	move	$s5, $zero
.LBB24_42:                              #   in Loop: Header=BB24_27 Depth=1
	ori	$t6, $zero, 1
.LBB24_43:                              # %ReadMatchDistances.exit.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a0, $s6, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, 4
.LBB24_44:                              #   in Loop: Header=BB24_27 Depth=1
	ldptr.w	$s0, $s3, 2872
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 576                   # 8-byte Folded Spill
	addi.w	$t3, $zero, -1
	bltu	$s0, $fp, .LBB24_169
# %bb.45:                               #   in Loop: Header=BB24_27 Depth=1
	st.d	$t3, $sp, 544                   # 8-byte Folded Spill
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 48
	jirl	$ra, $a1, 0
	addi.d	$a3, $a0, -1
	ld.bu	$a2, $a0, -1
	ori	$a5, $zero, 3
	sltu	$a1, $a5, $s0
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	ld.w	$a4, $a4, 0
	masknez	$a5, $a5, $a1
	maskeqz	$a1, $s0, $a1
	or	$a1, $a1, $a5
	addi.d	$a4, $a4, 1
	bstrpick.d	$a4, $a4, 31, 0
	sub.d	$a5, $a3, $a4
	ld.bu	$a5, $a5, 0
	sltui	$a6, $a1, 273
	maskeqz	$a1, $a1, $a6
	ori	$a7, $zero, 273
	masknez	$a6, $a7, $a6
	or	$a1, $a1, $a6
	bne	$a2, $a5, .LBB24_54
# %bb.46:                               #   in Loop: Header=BB24_27 Depth=1
	sub.d	$a5, $zero, $a4
	ld.bu	$a4, $a0, 0
	ldx.bu	$a6, $a0, $a5
	bne	$a4, $a6, .LBB24_54
# %bb.47:                               # %.preheader.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ori	$a4, $zero, 2
	ori	$t6, $zero, 1
	beq	$s0, $a4, .LBB24_52
# %bb.48:                               # %.lr.ph.preheader.i225
                                        #   in Loop: Header=BB24_27 Depth=1
	bstrpick.d	$a4, $a1, 31, 0
	addi.d	$a6, $a4, -2
	addi.d	$a7, $a0, 1
	ori	$a4, $zero, 2
	.p2align	4, , 16
.LBB24_49:                              # %.lr.ph.i226
                                        #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t0, $a7, 0
	ldx.bu	$t1, $a7, $a5
	bne	$t0, $t1, .LBB24_52
# %bb.50:                               #   in Loop: Header=BB24_49 Depth=2
	addi.w	$a4, $a4, 1
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 1
	bnez	$a6, .LBB24_49
# %bb.51:                               #   in Loop: Header=BB24_27 Depth=1
	move	$a4, $a1
.LBB24_52:                              # %.critedge.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a5, $s6, 0
	ld.d	$t3, $sp, 544                   # 8-byte Folded Reload
	bgeu	$a4, $a5, .LBB24_115
# %bb.53:                               #   in Loop: Header=BB24_27 Depth=1
	move	$fp, $a4
	b	.LBB24_55
	.p2align	4, , 16
.LBB24_54:                              #   in Loop: Header=BB24_27 Depth=1
	move	$fp, $zero
	ori	$t6, $zero, 1
	ld.d	$t3, $sp, 544                   # 8-byte Folded Reload
.LBB24_55:                              #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a4, $s6, 12
	addi.d	$a4, $a4, 1
	bstrpick.d	$a4, $a4, 31, 0
	sub.d	$a5, $a3, $a4
	ld.bu	$a5, $a5, 0
	bne	$a2, $a5, .LBB24_64
# %bb.56:                               #   in Loop: Header=BB24_27 Depth=1
	sub.d	$a5, $zero, $a4
	ld.bu	$a4, $a0, 0
	ldx.bu	$a6, $a0, $a5
	bne	$a4, $a6, .LBB24_64
# %bb.57:                               # %.preheader.1.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ori	$a4, $zero, 2
	beq	$s0, $a4, .LBB24_62
# %bb.58:                               # %.lr.ph.preheader.1.i
                                        #   in Loop: Header=BB24_27 Depth=1
	bstrpick.d	$a4, $a1, 31, 0
	addi.d	$a6, $a4, -2
	addi.d	$a7, $a0, 1
	ori	$a4, $zero, 2
	.p2align	4, , 16
.LBB24_59:                              # %.lr.ph.1.i
                                        #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t0, $a7, 0
	ldx.bu	$t1, $a7, $a5
	bne	$t0, $t1, .LBB24_62
# %bb.60:                               #   in Loop: Header=BB24_59 Depth=2
	addi.w	$a4, $a4, 1
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 1
	bnez	$a6, .LBB24_59
# %bb.61:                               #   in Loop: Header=BB24_27 Depth=1
	move	$a4, $a1
.LBB24_62:                              # %.critedge.1.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a6, $s6, 0
	ori	$a5, $zero, 1
	bgeu	$a4, $a6, .LBB24_116
# %bb.63:                               #   in Loop: Header=BB24_27 Depth=1
	sltu	$t4, $fp, $a4
	masknez	$a5, $fp, $t4
	maskeqz	$a4, $a4, $t4
	or	$fp, $a4, $a5
	b	.LBB24_65
.LBB24_64:                              #   in Loop: Header=BB24_27 Depth=1
	move	$t4, $zero
.LBB24_65:                              #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a4, $s6, 16
	addi.d	$a4, $a4, 1
	bstrpick.d	$a4, $a4, 31, 0
	sub.d	$a5, $a3, $a4
	ld.bu	$a5, $a5, 0
	bne	$a2, $a5, .LBB24_74
# %bb.66:                               #   in Loop: Header=BB24_27 Depth=1
	sub.d	$a6, $zero, $a4
	ld.bu	$a4, $a0, 0
	ldx.bu	$a5, $a0, $a6
	bne	$a4, $a5, .LBB24_74
# %bb.67:                               # %.preheader.2.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ori	$a5, $zero, 2
	ori	$a4, $zero, 2
	beq	$s0, $a5, .LBB24_72
# %bb.68:                               # %.lr.ph.preheader.2.i
                                        #   in Loop: Header=BB24_27 Depth=1
	bstrpick.d	$a4, $a1, 31, 0
	addi.d	$a7, $a4, -2
	addi.d	$t0, $a0, 1
	ori	$a4, $zero, 2
	.p2align	4, , 16
.LBB24_69:                              # %.lr.ph.2.i
                                        #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t1, $t0, 0
	ldx.bu	$t2, $t0, $a6
	bne	$t1, $t2, .LBB24_72
# %bb.70:                               #   in Loop: Header=BB24_69 Depth=2
	addi.w	$a4, $a4, 1
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 1
	bnez	$a7, .LBB24_69
# %bb.71:                               #   in Loop: Header=BB24_27 Depth=1
	move	$a4, $a1
.LBB24_72:                              # %.critedge.2.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a6, $s6, 0
	bgeu	$a4, $a6, .LBB24_116
# %bb.73:                               #   in Loop: Header=BB24_27 Depth=1
	sltu	$a5, $fp, $a4
	masknez	$a6, $fp, $a5
	maskeqz	$a4, $a4, $a5
	or	$fp, $a4, $a6
	masknez	$a4, $t4, $a5
	ori	$a6, $zero, 2
	maskeqz	$a5, $a6, $a5
	or	$t4, $a5, $a4
.LBB24_74:                              #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a4, $s6, 20
	addi.d	$a4, $a4, 1
	bstrpick.d	$a4, $a4, 31, 0
	sub.d	$a3, $a3, $a4
	ld.bu	$a3, $a3, 0
	bne	$a2, $a3, .LBB24_83
# %bb.75:                               #   in Loop: Header=BB24_27 Depth=1
	sub.d	$a2, $zero, $a4
	ld.bu	$a3, $a0, 0
	ldx.bu	$a4, $a0, $a2
	bne	$a3, $a4, .LBB24_83
# %bb.76:                               # %.preheader.3.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ori	$a4, $zero, 2
	beq	$s0, $a4, .LBB24_81
# %bb.77:                               # %.lr.ph.preheader.3.i
                                        #   in Loop: Header=BB24_27 Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	addi.d	$a3, $a3, -2
	addi.d	$a0, $a0, 1
	ori	$a4, $zero, 2
	.p2align	4, , 16
.LBB24_78:                              # %.lr.ph.3.i
                                        #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a5, $a0, 0
	ldx.bu	$a6, $a0, $a2
	bne	$a5, $a6, .LBB24_81
# %bb.79:                               #   in Loop: Header=BB24_78 Depth=2
	addi.w	$a4, $a4, 1
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 1
	bnez	$a3, .LBB24_78
# %bb.80:                               #   in Loop: Header=BB24_27 Depth=1
	move	$a4, $a1
.LBB24_81:                              # %.critedge.3.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a0, $s6, 0
	ori	$a5, $zero, 3
	bgeu	$a4, $a0, .LBB24_116
# %bb.82:                               #   in Loop: Header=BB24_27 Depth=1
	sltu	$a0, $fp, $a4
	masknez	$a1, $fp, $a0
	maskeqz	$a2, $a4, $a0
	or	$fp, $a2, $a1
	masknez	$a1, $t4, $a0
	ori	$a2, $zero, 3
	maskeqz	$a0, $a2, $a0
	or	$t4, $a0, $a1
.LBB24_83:                              #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a0, $s6, 0
	bgeu	$s5, $a0, .LBB24_91
# %bb.84:                               #   in Loop: Header=BB24_27 Depth=1
	ori	$a0, $zero, 2
	bltu	$s5, $a0, .LBB24_99
# %bb.85:                               #   in Loop: Header=BB24_27 Depth=1
	addi.d	$a0, $s8, -1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 560                   # 8-byte Folded Reload
	ldx.w	$a5, $a1, $a0
	addi.w	$a0, $s8, 0
	ori	$a1, $zero, 3
	bltu	$a0, $a1, .LBB24_90
# %bb.86:                               # %.lr.ph237.preheader.i
                                        #   in Loop: Header=BB24_27 Depth=1
	bstrpick.d	$a1, $s8, 31, 0
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 2
	addi.w	$a2, $zero, -4
	lu32i.d	$a2, 0
	add.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB24_87:                              # %.lr.ph237.i
                                        #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a2, $a1, 31, 0
	slli.d	$a2, $a2, 2
	ld.d	$a3, $sp, 560                   # 8-byte Folded Reload
	ldx.w	$a2, $a3, $a2
	addi.w	$a3, $a2, 1
	bne	$s5, $a3, .LBB24_90
# %bb.88:                               #   in Loop: Header=BB24_87 Depth=2
	ld.w	$a3, $a0, 0
	bstrpick.d	$a4, $a5, 31, 7
	bgeu	$a3, $a4, .LBB24_90
# %bb.89:                               #   in Loop: Header=BB24_87 Depth=2
	addi.w	$s8, $s8, -2
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, -2
	move	$a5, $a3
	move	$s5, $a2
	ori	$a2, $zero, 3
	bgeu	$s8, $a2, .LBB24_87
.LBB24_90:                              # %.critedge2.i
                                        #   in Loop: Header=BB24_27 Depth=1
	addi.d	$a0, $s5, -2
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 127
	sltu	$a1, $a1, $a5
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $t6, $a1
	or	$a1, $a1, $a2
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s5, $a0
	or	$s5, $a1, $a0
	ori	$a0, $zero, 2
	bgeu	$fp, $a0, .LBB24_100
	b	.LBB24_106
.LBB24_91:                              #   in Loop: Header=BB24_27 Depth=1
	addi.d	$a0, $s8, -1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 560                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.w	$t4, $a0, 4
	addi.w	$a1, $s5, -1
	move	$fp, $s5
	move	$t3, $t4
	bnez	$a1, .LBB24_118
	b	.LBB24_169
.LBB24_92:                              #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a1, $s3, 16
	ld.d	$a0, $s3, 48
	jirl	$ra, $a1, 0
	ld.d	$a2, $s3, 32
	ld.d	$a1, $s3, 48
	stptr.w	$a0, $s3, 2872
	move	$a0, $a1
	move	$a1, $s5
	jirl	$ra, $a2, 0
	move	$s0, $a0
	beqz	$a0, .LBB24_121
# %bb.93:                               #   in Loop: Header=BB24_27 Depth=1
	addi.d	$a0, $s0, -2
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a5, $s5, $a0
	ld.w	$a0, $s6, 0
	bne	$a5, $a0, .LBB24_122
# %bb.94:                               #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 48
	move	$s8, $a5
	jirl	$ra, $a1, 0
	move	$a5, $s8
	ldptr.w	$a1, $s3, 2872
	sltui	$a2, $a1, 273
	ori	$a3, $zero, 273
	masknez	$a3, $a3, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	bgeu	$s8, $a1, .LBB24_122
# %bb.95:                               # %.lr.ph.preheader.i.i273
                                        #   in Loop: Header=BB24_27 Depth=1
	addi.d	$a2, $s0, -1
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $s5, $a2
	addi.d	$a2, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	sub.d	$a2, $zero, $a2
	add.d	$a0, $a0, $a5
	addi.d	$a0, $a0, -1
	ori	$t6, $zero, 1
.LBB24_96:                              # %.lr.ph.i.i274
                                        #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a3, $a0, 0
	ldx.bu	$a4, $a0, $a2
	bne	$a3, $a4, .LBB24_123
# %bb.97:                               #   in Loop: Header=BB24_96 Depth=2
	addi.w	$a5, $a5, 1
	addi.d	$a0, $a0, 1
	bne	$a1, $a5, .LBB24_96
# %bb.98:                               #   in Loop: Header=BB24_27 Depth=1
	move	$a5, $a1
	b	.LBB24_123
.LBB24_99:                              #   in Loop: Header=BB24_27 Depth=1
	move	$a5, $zero
	ori	$a0, $zero, 2
	bltu	$fp, $a0, .LBB24_106
.LBB24_100:                             #   in Loop: Header=BB24_27 Depth=1
	addi.w	$a0, $fp, 1
	bgeu	$a0, $s5, .LBB24_105
# %bb.101:                              #   in Loop: Header=BB24_27 Depth=1
	addi.w	$a0, $fp, 2
	bltu	$a0, $s5, .LBB24_103
# %bb.102:                              #   in Loop: Header=BB24_27 Depth=1
	ori	$a0, $zero, 511
	bltu	$a0, $a5, .LBB24_105
.LBB24_103:                             #   in Loop: Header=BB24_27 Depth=1
	addi.w	$a0, $fp, 3
	bltu	$a0, $s5, .LBB24_106
# %bb.104:                              #   in Loop: Header=BB24_27 Depth=1
	bstrpick.d	$a0, $a5, 31, 15
	beqz	$a0, .LBB24_106
.LBB24_105:                             # %MovePos.exit177.i
                                        #   in Loop: Header=BB24_27 Depth=1
	addi.w	$a1, $fp, -1
	b	.LBB24_118
.LBB24_106:                             #   in Loop: Header=BB24_27 Depth=1
	ori	$a0, $zero, 2
	beq	$s0, $a0, .LBB24_169
# %bb.107:                              #   in Loop: Header=BB24_27 Depth=1
	bltu	$s5, $a0, .LBB24_169
# %bb.108:                              #   in Loop: Header=BB24_27 Depth=1
	move	$s8, $a5
	ld.d	$a1, $s3, 16
	ld.d	$a0, $s3, 48
	jirl	$ra, $a1, 0
	ld.d	$a2, $s3, 32
	ld.d	$a1, $s3, 48
	stptr.w	$a0, $s3, 2872
	move	$a0, $a1
	ld.d	$fp, $sp, 560                   # 8-byte Folded Reload
	move	$a1, $fp
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB24_302
# %bb.109:                              #   in Loop: Header=BB24_27 Depth=1
	addi.d	$a1, $a0, -2
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	ldx.w	$fp, $fp, $a1
	ld.w	$a1, $s6, 0
	addi.d	$s0, $a0, -1
	bne	$fp, $a1, .LBB24_312
# %bb.110:                              #   in Loop: Header=BB24_27 Depth=1
	move	$s2, $a0
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 48
	jirl	$ra, $a1, 0
	ldptr.w	$a1, $s3, 2872
	sltui	$a2, $a1, 273
	ori	$a3, $zero, 273
	masknez	$a3, $a3, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	bgeu	$fp, $a1, .LBB24_311
# %bb.111:                              # %.lr.ph.preheader.i181.i
                                        #   in Loop: Header=BB24_27 Depth=1
	bstrpick.d	$a2, $s0, 31, 0
	slli.d	$a2, $a2, 2
	ld.d	$a3, $sp, 560                   # 8-byte Folded Reload
	ldx.w	$a2, $a3, $a2
	addi.d	$a2, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	sub.d	$a2, $zero, $a2
	add.d	$a0, $a0, $fp
	addi.d	$a3, $a0, -1
	move	$a0, $s2
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ori	$t6, $zero, 1
	ld.d	$t3, $sp, 544                   # 8-byte Folded Reload
.LBB24_112:                             # %.lr.ph.i182.i
                                        #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a4, $a3, 0
	ldx.bu	$a5, $a3, $a2
	bne	$a4, $a5, .LBB24_313
# %bb.113:                              #   in Loop: Header=BB24_112 Depth=2
	addi.w	$fp, $fp, 1
	addi.d	$a3, $a3, 1
	bne	$a1, $fp, .LBB24_112
# %bb.114:                              #   in Loop: Header=BB24_27 Depth=1
	move	$fp, $a1
	b	.LBB24_313
.LBB24_115:                             #   in Loop: Header=BB24_27 Depth=1
	move	$a5, $zero
.LBB24_116:                             #   in Loop: Header=BB24_27 Depth=1
	addi.w	$a1, $a4, -1
	beqz	$a1, .LBB24_119
# %bb.117:                              #   in Loop: Header=BB24_27 Depth=1
	move	$t4, $a5
	move	$fp, $a4
.LBB24_118:                             # %MovePos.exit.sink.split.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a2, $s6, 4
	ld.d	$a3, $s3, 40
	ld.d	$a0, $s3, 48
	add.d	$a2, $a2, $a1
	st.w	$a2, $s6, 4
	move	$s0, $t4
	jirl	$ra, $a3, 0
	ori	$t6, $zero, 1
	move	$t3, $s0
	st.d	$fp, $sp, 576                   # 8-byte Folded Spill
	b	.LBB24_169
.LBB24_119:                             #   in Loop: Header=BB24_27 Depth=1
	ori	$s0, $zero, 1
	ori	$a0, $zero, 1
.LBB24_120:                             # %GetOptimumFast.exit.thread
                                        #   in Loop: Header=BB24_27 Depth=1
	st.d	$a0, $sp, 576                   # 8-byte Folded Spill
	ori	$a0, $zero, 3188
	ldx.w	$a0, $s6, $a0
	and	$fp, $a0, $s2
	move	$t3, $a5
	b	.LBB24_181
.LBB24_121:                             #   in Loop: Header=BB24_27 Depth=1
	move	$a5, $zero
.LBB24_122:                             #   in Loop: Header=BB24_27 Depth=1
	ori	$t6, $zero, 1
.LBB24_123:                             # %ReadMatchDistances.exit.i270
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a0, $s6, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, 4
.LBB24_124:                             #   in Loop: Header=BB24_27 Depth=1
	ldptr.w	$a2, $s3, 2872
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 576                   # 8-byte Folded Spill
	addi.w	$t3, $zero, -1
	bltu	$a2, $fp, .LBB24_169
# %bb.125:                              #   in Loop: Header=BB24_27 Depth=1
	st.d	$t3, $sp, 480                   # 8-byte Folded Spill
	st.d	$a5, $sp, 544                   # 8-byte Folded Spill
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 48
	move	$s5, $a2
	jirl	$ra, $a1, 0
	move	$t1, $s5
	move	$s8, $zero
	addi.d	$t0, $a0, -1
	ld.bu	$a1, $a0, -1
	ori	$a3, $zero, 3
	sltu	$a2, $a3, $s5
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $s5, $a2
	ld.d	$a6, $sp, 440                   # 8-byte Folded Reload
	ld.w	$a4, $a6, 0
	or	$a2, $a2, $a3
	sltui	$a5, $a2, 273
	vld	$vr0, $a6, 0
	addi.d	$a3, $a4, 1
	bstrpick.d	$a3, $a3, 31, 0
	sub.d	$a4, $t0, $a3
	ld.bu	$a4, $a4, 0
	maskeqz	$a2, $a2, $a5
	ori	$a6, $zero, 273
	masknez	$a5, $a6, $a5
	or	$a2, $a2, $a5
	vst	$vr0, $sp, 616
	bne	$a1, $a4, .LBB24_132
# %bb.126:                              #   in Loop: Header=BB24_27 Depth=1
	sub.d	$a3, $zero, $a3
	ld.bu	$a4, $a0, 0
	ldx.bu	$a5, $a0, $a3
	xor	$a6, $a4, $a5
	sltui	$a6, $a6, 1
	slli.d	$s8, $a6, 1
	beq	$t1, $fp, .LBB24_132
# %bb.127:                              #   in Loop: Header=BB24_27 Depth=1
	bne	$a4, $a5, .LBB24_132
# %bb.128:                              # %.lr.ph.preheader.i262
                                        #   in Loop: Header=BB24_27 Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a4, $a4, -2
	addi.d	$a5, $a0, 1
	ori	$s8, $zero, 2
	.p2align	4, , 16
.LBB24_129:                             # %.lr.ph.i264
                                        #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a6, $a5, 0
	ldx.bu	$a7, $a5, $a3
	bne	$a6, $a7, .LBB24_132
# %bb.130:                              #   in Loop: Header=BB24_129 Depth=2
	addi.w	$s8, $s8, 1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	bnez	$a4, .LBB24_129
# %bb.131:                              #   in Loop: Header=BB24_27 Depth=1
	move	$s8, $a2
.LBB24_132:                             # %.critedge.i232
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a3, $s6, 12
	addi.d	$a3, $a3, 1
	bstrpick.d	$a3, $a3, 31, 0
	sub.d	$a4, $t0, $a3
	ld.bu	$a4, $a4, 0
	st.w	$s8, $sp, 600
	ori	$t6, $zero, 1
	bne	$a1, $a4, .LBB24_140
# %bb.133:                              #   in Loop: Header=BB24_27 Depth=1
	sub.d	$a3, $zero, $a3
	ld.bu	$a4, $a0, 0
	ldx.bu	$a5, $a0, $a3
	bne	$a4, $a5, .LBB24_140
# %bb.134:                              # %.preheader980.1.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ori	$s5, $zero, 2
	beq	$t1, $s5, .LBB24_139
# %bb.135:                              # %.lr.ph.preheader.1.i254
                                        #   in Loop: Header=BB24_27 Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a4, $a4, -2
	addi.d	$a5, $a0, 1
	ori	$s5, $zero, 2
.LBB24_136:                             # %.lr.ph.1.i256
                                        #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a6, $a5, 0
	ldx.bu	$a7, $a5, $a3
	bne	$a6, $a7, .LBB24_139
# %bb.137:                              #   in Loop: Header=BB24_136 Depth=2
	addi.w	$s5, $s5, 1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	bnez	$a4, .LBB24_136
# %bb.138:                              #   in Loop: Header=BB24_27 Depth=1
	move	$s5, $a2
.LBB24_139:                             # %.critedge.1.i258
                                        #   in Loop: Header=BB24_27 Depth=1
	st.w	$s5, $sp, 604
	addi.w	$a3, $s8, 0
	sltu	$t3, $a3, $s5
	b	.LBB24_141
.LBB24_140:                             #   in Loop: Header=BB24_27 Depth=1
	move	$s5, $zero
	move	$t3, $zero
	st.w	$zero, $sp, 604
.LBB24_141:                             #   in Loop: Header=BB24_27 Depth=1
	st.d	$s0, $sp, 504                   # 8-byte Folded Spill
	ld.w	$a3, $s6, 16
	addi.d	$a3, $a3, 1
	bstrpick.d	$a3, $a3, 31, 0
	sub.d	$a4, $t0, $a3
	ld.bu	$a4, $a4, 0
	bne	$a1, $a4, .LBB24_149
# %bb.142:                              #   in Loop: Header=BB24_27 Depth=1
	sub.d	$a3, $zero, $a3
	ld.bu	$a4, $a0, 0
	ldx.bu	$a5, $a0, $a3
	bne	$a4, $a5, .LBB24_149
# %bb.143:                              # %.preheader980.2.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ori	$s0, $zero, 2
	beq	$t1, $s0, .LBB24_148
# %bb.144:                              # %.lr.ph.preheader.2.i246
                                        #   in Loop: Header=BB24_27 Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a4, $a4, -2
	addi.d	$a5, $a0, 1
	ori	$s0, $zero, 2
.LBB24_145:                             # %.lr.ph.2.i248
                                        #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a6, $a5, 0
	ldx.bu	$a7, $a5, $a3
	bne	$a6, $a7, .LBB24_148
# %bb.146:                              #   in Loop: Header=BB24_145 Depth=2
	addi.w	$s0, $s0, 1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	bnez	$a4, .LBB24_145
# %bb.147:                              #   in Loop: Header=BB24_27 Depth=1
	move	$s0, $a2
.LBB24_148:                             # %.critedge.2.i250
                                        #   in Loop: Header=BB24_27 Depth=1
	slli.d	$a3, $t3, 2
	addi.d	$a4, $sp, 600
	ldx.w	$a3, $a3, $a4
	st.w	$s0, $sp, 608
	sltu	$a3, $a3, $s0
	masknez	$a4, $t3, $a3
	maskeqz	$a3, $fp, $a3
	or	$t3, $a3, $a4
	b	.LBB24_150
.LBB24_149:                             #   in Loop: Header=BB24_27 Depth=1
	move	$s0, $zero
	st.w	$zero, $sp, 608
.LBB24_150:                             #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a3, $s6, 20
	addi.d	$a3, $a3, 1
	bstrpick.d	$a3, $a3, 31, 0
	sub.d	$a4, $t0, $a3
	ld.bu	$a4, $a4, 0
	bne	$a1, $a4, .LBB24_158
# %bb.151:                              #   in Loop: Header=BB24_27 Depth=1
	sub.d	$a3, $zero, $a3
	ld.bu	$a4, $a0, 0
	ldx.bu	$a5, $a0, $a3
	bne	$a4, $a5, .LBB24_158
# %bb.152:                              # %.preheader980.3.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ori	$fp, $zero, 2
	beq	$t1, $fp, .LBB24_157
# %bb.153:                              # %.lr.ph.preheader.3.i238
                                        #   in Loop: Header=BB24_27 Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a4, $a4, -2
	addi.d	$a5, $a0, 1
	ori	$fp, $zero, 2
.LBB24_154:                             # %.lr.ph.3.i240
                                        #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a6, $a5, 0
	ldx.bu	$a7, $a5, $a3
	bne	$a6, $a7, .LBB24_157
# %bb.155:                              #   in Loop: Header=BB24_154 Depth=2
	addi.w	$fp, $fp, 1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	bnez	$a4, .LBB24_154
# %bb.156:                              #   in Loop: Header=BB24_27 Depth=1
	move	$fp, $a2
.LBB24_157:                             # %.critedge.3.i242
                                        #   in Loop: Header=BB24_27 Depth=1
	st.w	$fp, $sp, 612
	slli.d	$a2, $t3, 2
	addi.d	$a3, $sp, 600
	ldx.w	$a2, $a2, $a3
	sltu	$a2, $a2, $fp
	masknez	$a3, $t3, $a2
	ori	$a4, $zero, 3
	maskeqz	$a2, $a4, $a2
	or	$t3, $a2, $a3
	b	.LBB24_159
.LBB24_158:                             #   in Loop: Header=BB24_27 Depth=1
	move	$fp, $zero
	st.w	$zero, $sp, 612
.LBB24_159:                             #   in Loop: Header=BB24_27 Depth=1
	slli.d	$a2, $t3, 2
	addi.d	$a3, $sp, 600
	ldx.w	$t1, $a2, $a3
	ld.w	$a2, $s6, 0
	bgeu	$t1, $a2, .LBB24_164
# %bb.160:                              #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a3, $sp, 544                   # 8-byte Folded Reload
	bgeu	$a3, $a2, .LBB24_166
# %bb.161:                              #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a2, $sp, 616
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a2, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	sub.d	$a2, $t0, $a2
	ld.bu	$t0, $a2, 0
	or	$a4, $t1, $a3
	ori	$a3, $zero, 1
	ori	$a2, $zero, 1
	st.d	$a2, $sp, 576                   # 8-byte Folded Spill
	bltu	$a3, $a4, .LBB24_299
# %bb.162:                              #   in Loop: Header=BB24_27 Depth=1
	beq	$a1, $t0, .LBB24_299
# %bb.163:                              #   in Loop: Header=BB24_27 Depth=1
	ld.d	$t3, $sp, 480                   # 8-byte Folded Reload
	b	.LBB24_169
.LBB24_164:                             #   in Loop: Header=BB24_27 Depth=1
	addi.w	$a1, $t1, -1
	beqz	$a1, .LBB24_169
# %bb.165:                              #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a2, $s6, 4
	ld.d	$a3, $s3, 40
	ld.d	$a0, $s3, 48
	add.d	$a2, $a2, $a1
	st.w	$a2, $s6, 4
	move	$fp, $t3
	move	$s0, $t1
	b	.LBB24_168
.LBB24_166:                             #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 560                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.w	$a1, $a3, -1
	addi.w	$t3, $a0, 4
	beqz	$a1, .LBB24_169
# %bb.167:                              #   in Loop: Header=BB24_27 Depth=1
	move	$s0, $a3
	ld.w	$a2, $s6, 4
	ld.d	$a3, $s3, 40
	ld.d	$a0, $s3, 48
	add.d	$a2, $a2, $a1
	st.w	$a2, $s6, 4
	move	$fp, $t3
.LBB24_168:                             # %GetOptimum.exit
                                        #   in Loop: Header=BB24_27 Depth=1
	jirl	$ra, $a3, 0
	move	$t3, $fp
	ori	$t6, $zero, 1
	st.d	$s0, $sp, 576                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB24_169:                             # %GetOptimumFast.exit
                                        #   in Loop: Header=BB24_27 Depth=1
	ori	$a0, $zero, 3188
	ldx.w	$a0, $s6, $a0
	and	$fp, $a0, $s2
	ld.d	$a1, $sp, 576                   # 8-byte Folded Reload
	addi.d	$a0, $a1, -1
	sltui	$s0, $a0, 1
	bne	$a1, $t6, .LBB24_181
# %bb.170:                              # %GetOptimumFast.exit
                                        #   in Loop: Header=BB24_27 Depth=1
	addi.w	$a0, $zero, -1
	bne	$t3, $a0, .LBB24_181
# %bb.171:                              #   in Loop: Header=BB24_27 Depth=1
	ld.wu	$a0, $s6, 24
	bstrpick.d	$a1, $fp, 31, 0
	slli.d	$a0, $a0, 5
	ld.d	$a2, $sp, 552                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	slli.d	$a1, $a1, 1
	ld.wu	$a0, $s7, 0
	ldx.hu	$a3, $a2, $a1
	srli.d	$a0, $a0, 11
	mul.d	$a0, $a0, $a3
	ori	$a4, $zero, 2048
	sub.d	$a4, $a4, $a3
	srli.d	$a4, $a4, 5
	st.w	$a0, $s7, 0
	add.d	$a3, $a3, $a4
	bstrpick.d	$a4, $a0, 31, 24
	stx.h	$a3, $a2, $a1
	ld.d	$s8, $sp, 528                   # 8-byte Folded Reload
	bnez	$a4, .LBB24_173
# %bb.172:                              #   in Loop: Header=BB24_27 Depth=1
	slli.d	$a0, $a0, 8
	st.w	$a0, $s7, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
.LBB24_173:                             # %RangeEnc_EncodeBit.exit281
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 48
	jirl	$ra, $a1, 0
	ld.wu	$a1, $s6, 4
	sub.d	$a1, $a0, $a1
	ld.bu	$a0, $a1, 0
	ori	$a2, $zero, 3184
	ldx.w	$a2, $s6, $a2
	ori	$a3, $zero, 3172
	ldx.wu	$a3, $s6, $a3
	ldptr.d	$a4, $s6, 3192
	ld.bu	$a5, $a1, -1
	and	$a2, $a2, $s2
	sll.w	$a2, $a2, $a3
	ori	$a6, $zero, 8
	sub.d	$a3, $a6, $a3
	srl.w	$a3, $a5, $a3
	add.d	$a2, $a3, $a2
	alsl.d	$a2, $a2, $a2, 1
	ld.w	$a3, $s6, 24
	slli.d	$a2, $a2, 8
	bstrpick.d	$a2, $a2, 31, 8
	slli.d	$a2, $a2, 9
	add.d	$fp, $a4, $a2
	ori	$a2, $zero, 6
	bltu	$a2, $a3, .LBB24_196
# %bb.174:                              #   in Loop: Header=BB24_27 Depth=1
	addi.d	$s0, $a0, 256
	ori	$t6, $zero, 1
	b	.LBB24_176
	.p2align	4, , 16
.LBB24_175:                             # %RangeEnc_EncodeBit.exit.i285
                                        #   in Loop: Header=BB24_176 Depth=2
	bstrpick.d	$a0, $s0, 31, 15
	slli.d	$s0, $s0, 1
	bnez	$a0, .LBB24_203
.LBB24_176:                             #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a0, $s0, 31, 8
	slli.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 56, 1
	ld.wu	$a3, $s7, 0
	slli.d	$a1, $a0, 1
	ldx.hu	$a2, $fp, $a1
	srli.d	$a1, $a3, 11
	andi	$a4, $s0, 128
	mul.d	$a1, $a1, $a2
	bnez	$a4, .LBB24_178
# %bb.177:                              #   in Loop: Header=BB24_176 Depth=2
	ori	$a3, $zero, 2048
	sub.d	$a3, $a3, $a2
	bstrpick.d	$a3, $a3, 31, 5
	add.d	$a2, $a3, $a2
	b	.LBB24_179
	.p2align	4, , 16
.LBB24_178:                             #   in Loop: Header=BB24_176 Depth=2
	ld.d	$a4, $s4, 16
	bstrpick.d	$a5, $a1, 31, 0
	add.d	$a4, $a4, $a5
	st.d	$a4, $s4, 16
	sub.w	$a1, $a3, $a1
	srli.d	$a3, $a2, 5
	sub.d	$a2, $a2, $a3
.LBB24_179:                             #   in Loop: Header=BB24_176 Depth=2
	alsl.d	$a0, $a0, $fp, 1
	st.w	$a1, $s7, 0
	bstrpick.d	$a3, $a1, 31, 24
	st.h	$a2, $a0, 0
	bnez	$a3, .LBB24_175
# %bb.180:                              #   in Loop: Header=BB24_176 Depth=2
	slli.d	$a0, $a1, 8
	st.w	$a0, $s7, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ori	$t6, $zero, 1
	b	.LBB24_175
	.p2align	4, , 16
.LBB24_181:                             #   in Loop: Header=BB24_27 Depth=1
	ld.wu	$a0, $s6, 24
	bstrpick.d	$s5, $fp, 31, 0
	slli.d	$a0, $a0, 5
	ld.d	$a1, $sp, 552                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	slli.d	$s8, $s5, 1
	ld.wu	$a0, $s4, 8
	ldx.hu	$a2, $a1, $s8
	ld.d	$a3, $s4, 16
	srli.d	$a4, $a0, 11
	mul.d	$a4, $a4, $a2
	bstrpick.d	$a5, $a4, 31, 0
	add.d	$a3, $a3, $a5
	st.d	$a3, $s4, 16
	sub.w	$a0, $a0, $a4
	srli.d	$a3, $a2, 5
	sub.d	$a2, $a2, $a3
	st.w	$a0, $s4, 8
	bstrpick.d	$a3, $a0, 31, 24
	stx.h	$a2, $a1, $s8
	move	$s2, $t3
	bnez	$a3, .LBB24_183
# %bb.182:                              #   in Loop: Header=BB24_27 Depth=1
	slli.d	$a0, $a0, 8
	st.w	$a0, $s7, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	move	$t3, $s2
	ori	$t6, $zero, 1
.LBB24_183:                             # %RangeEnc_EncodeBit.exit292
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.wu	$a0, $s6, 24
	slli.d	$a1, $a0, 1
	ld.wu	$a4, $s7, 0
	ld.d	$a2, $sp, 496                   # 8-byte Folded Reload
	ldx.hu	$a3, $a2, $a1
	alsl.d	$a1, $a0, $a2, 1
	srli.d	$a2, $a4, 11
	mul.d	$a2, $a2, $a3
	ori	$a5, $zero, 3
	bltu	$a5, $t3, .LBB24_192
# %bb.184:                              #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a0, $s4, 16
	bstrpick.d	$a5, $a2, 31, 0
	add.d	$a0, $a0, $a5
	st.d	$a0, $s4, 16
	sub.w	$a0, $a4, $a2
	srli.d	$a2, $a3, 5
	sub.d	$a2, $a3, $a2
	st.w	$a0, $s4, 8
	bstrpick.d	$a3, $a0, 31, 24
	st.h	$a2, $a1, 0
	bnez	$a3, .LBB24_186
# %bb.185:                              #   in Loop: Header=BB24_27 Depth=1
	slli.d	$a0, $a0, 8
	st.w	$a0, $s7, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	move	$t3, $s2
	ori	$t6, $zero, 1
.LBB24_186:                             # %RangeEnc_EncodeBit.exit294
                                        #   in Loop: Header=BB24_27 Depth=1
	beqz	$t3, .LBB24_239
# %bb.187:                              #   in Loop: Header=BB24_27 Depth=1
	ld.wu	$a0, $s6, 24
	slli.d	$a1, $t3, 2
	slli.d	$a2, $a0, 1
	ld.wu	$a0, $s4, 8
	ld.d	$a6, $sp, 456                   # 8-byte Folded Reload
	ldx.hu	$a3, $a6, $a2
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	ldx.w	$s5, $a4, $a1
	ld.d	$a1, $s4, 16
	srli.d	$a4, $a0, 11
	mul.d	$a4, $a4, $a3
	bstrpick.d	$a5, $a4, 31, 0
	add.d	$a1, $a1, $a5
	st.d	$a1, $s4, 16
	sub.w	$a0, $a0, $a4
	srli.d	$a1, $a3, 5
	sub.d	$a1, $a3, $a1
	st.w	$a0, $s4, 8
	bstrpick.d	$a3, $a0, 31, 24
	stx.h	$a1, $a6, $a2
	bnez	$a3, .LBB24_189
# %bb.188:                              #   in Loop: Header=BB24_27 Depth=1
	slli.d	$a0, $a0, 8
	st.w	$a0, $s7, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	move	$t3, $s2
	ori	$t6, $zero, 1
.LBB24_189:                             # %RangeEnc_EncodeBit.exit301
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.wu	$a0, $s6, 24
	slli.d	$a1, $a0, 1
	ld.wu	$a4, $s7, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ldx.hu	$a3, $a2, $a1
	alsl.d	$a1, $a0, $a2, 1
	srli.d	$a2, $a4, 11
	mul.d	$a2, $a2, $a3
	ld.d	$s8, $sp, 528                   # 8-byte Folded Reload
	bne	$t3, $t6, .LBB24_243
# %bb.190:                              #   in Loop: Header=BB24_27 Depth=1
	ori	$a0, $zero, 2048
	sub.d	$a0, $a0, $a3
	srli.d	$a0, $a0, 5
	st.w	$a2, $s7, 0
	add.d	$a0, $a3, $a0
	bstrpick.d	$a3, $a2, 31, 24
	st.h	$a0, $a1, 0
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	bnez	$a3, .LBB24_264
# %bb.191:                              #   in Loop: Header=BB24_27 Depth=1
	slli.d	$a0, $a2, 8
	st.w	$a0, $s7, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ori	$t6, $zero, 1
	b	.LBB24_264
	.p2align	4, , 16
.LBB24_192:                             #   in Loop: Header=BB24_27 Depth=1
	ori	$a4, $zero, 2048
	sub.d	$a4, $a4, $a3
	srli.d	$a4, $a4, 5
	st.w	$a2, $s7, 0
	add.d	$a3, $a3, $a4
	bstrpick.d	$a4, $a2, 31, 24
	st.h	$a3, $a1, 0
	bnez	$a4, .LBB24_194
# %bb.193:                              #   in Loop: Header=BB24_27 Depth=1
	slli.d	$a0, $a2, 8
	st.w	$a0, $s7, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s6, 24
.LBB24_194:                             # %RangeEnc_EncodeBit.exit313
                                        #   in Loop: Header=BB24_27 Depth=1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(kMatchNextStates)
	addi.d	$a1, $a1, %pc_lo12(kMatchNextStates)
	ldx.w	$a0, $a1, $a0
	ld.w	$a1, $s4, 0
	st.w	$a0, $s6, 24
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	addi.w	$s5, $a0, -2
	sltui	$a4, $a1, 1
	addi.w	$a3, $fp, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s5
	ld.d	$a5, $sp, 536                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(LenEnc_Encode2)
	jirl	$ra, $ra, 0
	addi.w	$a3, $s2, -4
	ori	$a0, $zero, 127
	bltu	$a0, $a3, .LBB24_204
# %bb.195:                              #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ldx.bu	$fp, $a0, $a3
	b	.LBB24_205
	.p2align	4, , 16
.LBB24_196:                             #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a2, $sp, 440                   # 8-byte Folded Reload
	ld.wu	$a2, $a2, 0
	nor	$a2, $a2, $zero
	ldx.bu	$s0, $a2, $a1
	addi.d	$s5, $a0, 256
	ori	$s2, $zero, 256
	ori	$t6, $zero, 1
	b	.LBB24_198
	.p2align	4, , 16
.LBB24_197:                             # %RangeEnc_EncodeBit.exit.i290
                                        #   in Loop: Header=BB24_198 Depth=2
	bstrpick.d	$a0, $s5, 31, 15
	slli.d	$s5, $s5, 1
	xor	$a1, $s5, $s0
	andn	$s2, $s2, $a1
	bnez	$a0, .LBB24_203
.LBB24_198:                             #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$s0, $s0, 1
	and	$a0, $s0, $s2
	bstrpick.d	$a1, $s5, 31, 8
	add.d	$a1, $s2, $a1
	add.w	$a0, $a1, $a0
	ld.wu	$a3, $s7, 0
	slli.d	$a1, $a0, 1
	ldx.hu	$a2, $fp, $a1
	srli.d	$a1, $a3, 11
	andi	$a4, $s5, 128
	mul.d	$a1, $a1, $a2
	bnez	$a4, .LBB24_200
# %bb.199:                              #   in Loop: Header=BB24_198 Depth=2
	ori	$a3, $zero, 2048
	sub.d	$a3, $a3, $a2
	bstrpick.d	$a3, $a3, 31, 5
	add.d	$a2, $a3, $a2
	b	.LBB24_201
	.p2align	4, , 16
.LBB24_200:                             #   in Loop: Header=BB24_198 Depth=2
	ld.d	$a4, $s4, 16
	bstrpick.d	$a5, $a1, 31, 0
	add.d	$a4, $a4, $a5
	st.d	$a4, $s4, 16
	sub.w	$a1, $a3, $a1
	srli.d	$a3, $a2, 5
	sub.d	$a2, $a2, $a3
.LBB24_201:                             #   in Loop: Header=BB24_198 Depth=2
	alsl.d	$a0, $a0, $fp, 1
	st.w	$a1, $s7, 0
	bstrpick.d	$a3, $a1, 31, 24
	st.h	$a2, $a0, 0
	bnez	$a3, .LBB24_197
# %bb.202:                              #   in Loop: Header=BB24_198 Depth=2
	slli.d	$a0, $a1, 8
	st.w	$a0, $s7, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ori	$t6, $zero, 1
	b	.LBB24_197
	.p2align	4, , 16
.LBB24_203:                             # %LitEnc_Encode.exit286
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.wu	$a0, $s6, 24
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	st.w	$a0, $s6, 24
	ori	$a2, $zero, 1
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 560                   # 8-byte Folded Reload
	b	.LBB24_287
.LBB24_204:                             #   in Loop: Header=BB24_27 Depth=1
	addu16i.d	$a0, $s2, -8
	addi.w	$a0, $a0, -4
	slti	$a0, $a0, 0
	ori	$a1, $zero, 18
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 6
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	srl.w	$a1, $a3, $a0
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	alsl.d	$fp, $a0, $a1, 1
.LBB24_205:                             #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	sltui	$a0, $a0, 5
	ori	$a1, $zero, 3
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s5, $a0
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 7
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	add.d	$s0, $a1, $a0
	ld.wu	$a2, $s7, 0
	ld.hu	$a0, $s0, 2
	bstrpick.d	$s2, $fp, 5, 5
	srli.d	$a1, $a2, 11
	mul.d	$a1, $a1, $a0
	st.d	$a3, $sp, 544                   # 8-byte Folded Spill
	bnez	$s2, .LBB24_207
# %bb.206:                              #   in Loop: Header=BB24_27 Depth=1
	ori	$a2, $zero, 2048
	sub.d	$a2, $a2, $a0
	bstrpick.d	$a2, $a2, 31, 5
	add.d	$a0, $a2, $a0
	bstrpick.d	$a2, $a1, 31, 24
	st.h	$a0, $s0, 2
	beqz	$a2, .LBB24_208
	b	.LBB24_209
.LBB24_207:                             #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a3, $s4, 16
	bstrpick.d	$a4, $a1, 31, 0
	add.d	$a3, $a3, $a4
	st.d	$a3, $s4, 16
	sub.w	$a1, $a2, $a1
	srli.d	$a2, $a0, 5
	sub.d	$a0, $a0, $a2
	bstrpick.d	$a2, $a1, 31, 24
	st.h	$a0, $s0, 2
	bnez	$a2, .LBB24_209
.LBB24_208:                             #   in Loop: Header=BB24_27 Depth=1
	slli.d	$a0, $a1, 8
	st.w	$a0, $s7, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 0
.LBB24_209:                             # %RangeEnc_EncodeBit.exit.i316
                                        #   in Loop: Header=BB24_27 Depth=1
	ori	$s2, $s2, 2
	slli.d	$a0, $s2, 1
	ldx.hu	$a2, $s0, $a0
	bstrpick.d	$s5, $fp, 4, 4
	bstrpick.d	$a0, $a1, 31, 11
	mul.d	$a0, $a0, $a2
	bnez	$s5, .LBB24_211
# %bb.210:                              #   in Loop: Header=BB24_27 Depth=1
	ori	$a1, $zero, 2048
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 31, 5
	add.d	$a1, $a1, $a2
	alsl.d	$a2, $s2, $s0, 1
	bstrpick.d	$a3, $a0, 31, 24
	st.h	$a1, $a2, 0
	beqz	$a3, .LBB24_212
	b	.LBB24_213
.LBB24_211:                             #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a3, $s4, 16
	bstrpick.d	$a4, $a0, 31, 0
	add.d	$a3, $a3, $a4
	st.d	$a3, $s4, 16
	sub.w	$a0, $a1, $a0
	srli.d	$a1, $a2, 5
	sub.d	$a1, $a2, $a1
	alsl.d	$a2, $s2, $s0, 1
	bstrpick.d	$a3, $a0, 31, 24
	st.h	$a1, $a2, 0
	bnez	$a3, .LBB24_213
.LBB24_212:                             #   in Loop: Header=BB24_27 Depth=1
	slli.d	$a0, $a0, 8
	st.w	$a0, $s7, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
.LBB24_213:                             # %RangeEnc_EncodeBit.exit.i316.1
                                        #   in Loop: Header=BB24_27 Depth=1
	slli.w	$a1, $s2, 1
	or	$s2, $s5, $a1
	slli.d	$a1, $s2, 1
	ldx.hu	$a2, $s0, $a1
	bstrpick.d	$s5, $fp, 3, 3
	bstrpick.d	$a1, $a0, 31, 11
	mul.d	$a1, $a1, $a2
	bnez	$s5, .LBB24_215
# %bb.214:                              #   in Loop: Header=BB24_27 Depth=1
	ori	$a0, $zero, 2048
	sub.d	$a0, $a0, $a2
	bstrpick.d	$a0, $a0, 31, 5
	add.d	$a0, $a0, $a2
	alsl.d	$a2, $s2, $s0, 1
	bstrpick.d	$a3, $a1, 31, 24
	st.h	$a0, $a2, 0
	beqz	$a3, .LBB24_216
	b	.LBB24_217
.LBB24_215:                             #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a3, $s4, 16
	bstrpick.d	$a4, $a1, 31, 0
	add.d	$a3, $a3, $a4
	st.d	$a3, $s4, 16
	sub.w	$a1, $a0, $a1
	srli.d	$a0, $a2, 5
	sub.d	$a0, $a2, $a0
	alsl.d	$a2, $s2, $s0, 1
	bstrpick.d	$a3, $a1, 31, 24
	st.h	$a0, $a2, 0
	bnez	$a3, .LBB24_217
.LBB24_216:                             #   in Loop: Header=BB24_27 Depth=1
	slli.d	$a0, $a1, 8
	st.w	$a0, $s7, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 0
.LBB24_217:                             # %RangeEnc_EncodeBit.exit.i316.2
                                        #   in Loop: Header=BB24_27 Depth=1
	slli.w	$a0, $s2, 1
	or	$s2, $s5, $a0
	slli.d	$a0, $s2, 1
	ldx.hu	$a2, $s0, $a0
	bstrpick.d	$s5, $fp, 2, 2
	bstrpick.d	$a0, $a1, 31, 11
	mul.d	$a0, $a0, $a2
	bnez	$s5, .LBB24_219
# %bb.218:                              #   in Loop: Header=BB24_27 Depth=1
	ori	$a1, $zero, 2048
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 31, 5
	add.d	$a1, $a1, $a2
	alsl.d	$a2, $s2, $s0, 1
	bstrpick.d	$a3, $a0, 31, 24
	st.h	$a1, $a2, 0
	beqz	$a3, .LBB24_220
	b	.LBB24_221
.LBB24_219:                             #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a3, $s4, 16
	bstrpick.d	$a4, $a0, 31, 0
	add.d	$a3, $a3, $a4
	st.d	$a3, $s4, 16
	sub.w	$a0, $a1, $a0
	srli.d	$a1, $a2, 5
	sub.d	$a1, $a2, $a1
	alsl.d	$a2, $s2, $s0, 1
	bstrpick.d	$a3, $a0, 31, 24
	st.h	$a1, $a2, 0
	bnez	$a3, .LBB24_221
.LBB24_220:                             #   in Loop: Header=BB24_27 Depth=1
	slli.d	$a0, $a0, 8
	st.w	$a0, $s7, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
.LBB24_221:                             # %RangeEnc_EncodeBit.exit.i316.3
                                        #   in Loop: Header=BB24_27 Depth=1
	slli.w	$a1, $s2, 1
	or	$s2, $s5, $a1
	slli.d	$a1, $s2, 1
	ldx.hu	$a2, $s0, $a1
	bstrpick.d	$s5, $fp, 1, 1
	bstrpick.d	$a1, $a0, 31, 11
	mul.d	$a1, $a1, $a2
	bnez	$s5, .LBB24_223
# %bb.222:                              #   in Loop: Header=BB24_27 Depth=1
	ori	$a0, $zero, 2048
	sub.d	$a0, $a0, $a2
	bstrpick.d	$a0, $a0, 31, 5
	add.d	$a0, $a0, $a2
	alsl.d	$a2, $s2, $s0, 1
	bstrpick.d	$a3, $a1, 31, 24
	st.h	$a0, $a2, 0
	beqz	$a3, .LBB24_224
	b	.LBB24_225
.LBB24_223:                             #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a3, $s4, 16
	bstrpick.d	$a4, $a1, 31, 0
	add.d	$a3, $a3, $a4
	st.d	$a3, $s4, 16
	sub.w	$a1, $a0, $a1
	srli.d	$a0, $a2, 5
	sub.d	$a0, $a2, $a0
	alsl.d	$a2, $s2, $s0, 1
	bstrpick.d	$a3, $a1, 31, 24
	st.h	$a0, $a2, 0
	bnez	$a3, .LBB24_225
.LBB24_224:                             #   in Loop: Header=BB24_27 Depth=1
	slli.d	$a0, $a1, 8
	st.w	$a0, $s7, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 0
.LBB24_225:                             # %RangeEnc_EncodeBit.exit.i316.4
                                        #   in Loop: Header=BB24_27 Depth=1
	slli.w	$a0, $s2, 1
	or	$a2, $s5, $a0
	slli.d	$a0, $a2, 1
	ldx.hu	$a3, $s0, $a0
	andi	$s5, $fp, 1
	bstrpick.d	$a0, $a1, 31, 11
	mul.d	$a0, $a0, $a3
	bnez	$s5, .LBB24_227
# %bb.226:                              #   in Loop: Header=BB24_27 Depth=1
	ori	$a1, $zero, 2048
	sub.d	$a1, $a1, $a3
	bstrpick.d	$a1, $a1, 31, 5
	add.d	$a1, $a1, $a3
	b	.LBB24_228
.LBB24_227:                             #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a4, $s4, 16
	bstrpick.d	$a5, $a0, 31, 0
	add.d	$a4, $a4, $a5
	st.d	$a4, $s4, 16
	sub.w	$a0, $a1, $a0
	srli.d	$a1, $a3, 5
	sub.d	$a1, $a3, $a1
.LBB24_228:                             #   in Loop: Header=BB24_27 Depth=1
	alsl.d	$a2, $a2, $s0, 1
	st.w	$a0, $s7, 0
	bstrpick.d	$a3, $a0, 31, 24
	st.h	$a1, $a2, 0
	bnez	$a3, .LBB24_230
# %bb.229:                              #   in Loop: Header=BB24_27 Depth=1
	slli.d	$a0, $a0, 8
	st.w	$a0, $s7, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
.LBB24_230:                             # %RangeEnc_EncodeBit.exit.i316.5
                                        #   in Loop: Header=BB24_27 Depth=1
	ori	$t6, $zero, 1
	ori	$a0, $zero, 4
	bltu	$fp, $a0, .LBB24_285
# %bb.231:                              #   in Loop: Header=BB24_27 Depth=1
	srli.d	$a0, $fp, 1
	addi.d	$s2, $a0, -1
	addi.d	$a1, $s5, 2
	sll.w	$a1, $a1, $s2
	ld.d	$a2, $sp, 544                   # 8-byte Folded Reload
	sub.w	$s0, $a2, $a1
	ori	$a2, $zero, 13
	bltu	$a2, $fp, .LBB24_247
# %bb.232:                              #   in Loop: Header=BB24_27 Depth=1
	bstrpick.d	$a0, $a1, 31, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 1
	slli.d	$a1, $fp, 1
	sub.d	$a0, $a0, $a1
	addi.d	$fp, $a0, -2
	ori	$s5, $zero, 1
	b	.LBB24_234
	.p2align	4, , 16
.LBB24_233:                             # %RangeEnc_EncodeBit.exit.i321
                                        #   in Loop: Header=BB24_234 Depth=2
	slli.d	$a0, $s5, 1
	or	$s5, $a0, $s8
	addi.w	$s2, $s2, -1
	bstrpick.d	$s0, $s0, 31, 1
	beqz	$s2, .LBB24_285
.LBB24_234:                             #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a1, $s5, 31, 0
	slli.d	$a0, $a1, 1
	ld.wu	$a3, $s7, 0
	ldx.hu	$a2, $fp, $a0
	andi	$s8, $s0, 1
	srli.d	$a0, $a3, 11
	mul.d	$a0, $a0, $a2
	bnez	$s8, .LBB24_236
# %bb.235:                              #   in Loop: Header=BB24_234 Depth=2
	ori	$a3, $zero, 2048
	sub.d	$a3, $a3, $a2
	bstrpick.d	$a3, $a3, 31, 5
	add.d	$a2, $a3, $a2
	b	.LBB24_237
	.p2align	4, , 16
.LBB24_236:                             #   in Loop: Header=BB24_234 Depth=2
	ld.d	$a4, $s4, 16
	bstrpick.d	$a5, $a0, 31, 0
	add.d	$a4, $a4, $a5
	st.d	$a4, $s4, 16
	sub.w	$a0, $a3, $a0
	srli.d	$a3, $a2, 5
	sub.d	$a2, $a2, $a3
.LBB24_237:                             #   in Loop: Header=BB24_234 Depth=2
	alsl.d	$a1, $a1, $fp, 1
	st.w	$a0, $s7, 0
	bstrpick.d	$a3, $a0, 31, 24
	st.h	$a2, $a1, 0
	bnez	$a3, .LBB24_233
# %bb.238:                              #   in Loop: Header=BB24_234 Depth=2
	slli.d	$a0, $a0, 8
	st.w	$a0, $s7, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ori	$t6, $zero, 1
	b	.LBB24_233
.LBB24_239:                             #   in Loop: Header=BB24_27 Depth=1
	ld.wu	$a1, $s6, 24
	slli.d	$a2, $a1, 1
	ld.wu	$a0, $s7, 0
	ld.d	$a5, $sp, 456                   # 8-byte Folded Reload
	ldx.hu	$a3, $a5, $a2
	srli.d	$a0, $a0, 11
	mul.d	$a0, $a0, $a3
	ori	$a4, $zero, 2048
	sub.d	$a4, $a4, $a3
	srli.d	$a4, $a4, 5
	add.d	$a3, $a3, $a4
	bstrpick.d	$a4, $a0, 31, 24
	stx.h	$a3, $a5, $a2
	bnez	$a4, .LBB24_241
# %bb.240:                              #   in Loop: Header=BB24_27 Depth=1
	slli.d	$a0, $a0, 8
	st.w	$a0, $s7, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ori	$t6, $zero, 1
	ld.wu	$a1, $s6, 24
	ld.w	$a0, $s7, 0
.LBB24_241:                             # %RangeEnc_EncodeBit.exit296
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 5
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a1
	ldx.hu	$a3, $a2, $s8
	bstrpick.d	$a1, $a0, 31, 11
	mul.d	$a1, $a1, $a3
	beqz	$s0, .LBB24_253
# %bb.242:                              #   in Loop: Header=BB24_27 Depth=1
	ori	$a0, $zero, 2048
	sub.d	$a0, $a0, $a3
	bstrpick.d	$a0, $a0, 31, 5
	add.d	$a0, $a0, $a3
	b	.LBB24_254
.LBB24_243:                             #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a5, $s4, 16
	bstrpick.d	$a6, $a2, 31, 0
	add.d	$a5, $a5, $a6
	st.d	$a5, $s4, 16
	sub.w	$a2, $a4, $a2
	srli.d	$a4, $a3, 5
	sub.d	$a3, $a3, $a4
	bstrpick.d	$a4, $a2, 31, 24
	st.h	$a3, $a1, 0
	bnez	$a4, .LBB24_245
# %bb.244:                              #   in Loop: Header=BB24_27 Depth=1
	slli.d	$a0, $a2, 8
	st.w	$a0, $s7, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	move	$t3, $s2
	ld.wu	$a0, $s6, 24
	ld.w	$a2, $s7, 0
.LBB24_245:                             # %RangeEnc_EncodeBit.exit307
                                        #   in Loop: Header=BB24_27 Depth=1
	slli.d	$a1, $a0, 1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	ldx.hu	$a3, $a3, $a1
	bstrpick.d	$a1, $a2, 31, 11
	mul.d	$a1, $a1, $a3
	ori	$a4, $zero, 2
	bne	$t3, $a4, .LBB24_258
# %bb.246:                              #   in Loop: Header=BB24_27 Depth=1
	ori	$a2, $zero, 2048
	sub.d	$a2, $a2, $a3
	bstrpick.d	$a2, $a2, 31, 5
	add.d	$a2, $a2, $a3
	b	.LBB24_259
.LBB24_247:                             #   in Loop: Header=BB24_27 Depth=1
	bstrpick.d	$fp, $s0, 31, 4
	addi.d	$s2, $a0, -6
	b	.LBB24_249
	.p2align	4, , 16
.LBB24_248:                             #   in Loop: Header=BB24_249 Depth=2
	addi.w	$s2, $s2, -1
	addi.w	$a0, $zero, -1
	beq	$s2, $a0, .LBB24_251
.LBB24_249:                             #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.wu	$a1, $s4, 8
	srli.d	$a0, $a1, 1
	st.w	$a0, $s4, 8
	srl.w	$a2, $fp, $s2
	ld.d	$a3, $s4, 16
	andi	$a2, $a2, 1
	sub.d	$a2, $zero, $a2
	and	$a2, $a2, $a0
	add.d	$a2, $a3, $a2
	srli.d	$a1, $a1, 25
	st.d	$a2, $s4, 16
	bnez	$a1, .LBB24_248
# %bb.250:                              #   in Loop: Header=BB24_249 Depth=2
	slli.d	$a0, $a0, 8
	st.w	$a0, $s7, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	b	.LBB24_248
.LBB24_251:                             # %RangeEnc_EncodeDirectBits.exit
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.wu	$a2, $s7, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.hu	$a0, $a0, 0
	andi	$fp, $s0, 1
	srli.d	$a1, $a2, 11
	mul.d	$a1, $a1, $a0
	bnez	$fp, .LBB24_266
# %bb.252:                              #   in Loop: Header=BB24_27 Depth=1
	ori	$a2, $zero, 2048
	sub.d	$a2, $a2, $a0
	bstrpick.d	$a2, $a2, 31, 5
	add.d	$a0, $a2, $a0
	b	.LBB24_267
.LBB24_253:                             #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a4, $s4, 16
	bstrpick.d	$a5, $a1, 31, 0
	add.d	$a4, $a4, $a5
	st.d	$a4, $s4, 16
	sub.w	$a1, $a0, $a1
	srli.d	$a0, $a3, 5
	sub.d	$a0, $a3, $a0
.LBB24_254:                             #   in Loop: Header=BB24_27 Depth=1
	ld.d	$s8, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$a2, $s5, $a2, 1
	st.w	$a1, $s7, 0
	bstrpick.d	$a3, $a1, 31, 24
	st.h	$a0, $a2, 0
	bnez	$a3, .LBB24_256
# %bb.255:                              #   in Loop: Header=BB24_27 Depth=1
	slli.d	$a0, $a1, 8
	st.w	$a0, $s7, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ori	$t6, $zero, 1
	.p2align	4, , 16
.LBB24_256:                             # %RangeEnc_EncodeBit.exit298
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.d	$s5, $sp, 560                   # 8-byte Folded Reload
	beqz	$s0, .LBB24_265
.LBB24_257:                             #   in Loop: Header=BB24_27 Depth=1
	ld.wu	$a0, $s6, 24
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(kShortRepNextStates)
	addi.d	$a1, $a1, %pc_lo12(kShortRepNextStates)
	ldx.w	$a0, $a1, $a0
	st.w	$a0, $s6, 24
	b	.LBB24_286
.LBB24_258:                             #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a4, $s4, 16
	bstrpick.d	$a5, $a1, 31, 0
	add.d	$a4, $a4, $a5
	st.d	$a4, $s4, 16
	sub.w	$a1, $a2, $a1
	srli.d	$a2, $a3, 5
	sub.d	$a2, $a3, $a2
.LBB24_259:                             #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a3, 1
	st.w	$a1, $s7, 0
	bstrpick.d	$a3, $a1, 31, 24
	st.h	$a2, $a0, 0
	bnez	$a3, .LBB24_261
# %bb.260:                              #   in Loop: Header=BB24_27 Depth=1
	slli.d	$a0, $a1, 8
	st.w	$a0, $s7, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	move	$t3, $s2
.LBB24_261:                             # %RangeEnc_EncodeBit.exit310
                                        #   in Loop: Header=BB24_27 Depth=1
	ori	$a0, $zero, 3
	ori	$t6, $zero, 1
	bne	$t3, $a0, .LBB24_263
# %bb.262:                              #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a0, $s6, 16
	st.w	$a0, $s6, 20
.LBB24_263:                             #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a0, $s6, 12
	st.w	$a0, $s6, 16
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
.LBB24_264:                             # %RangeEnc_EncodeBit.exit304
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a0, $s6, 8
	st.w	$a0, $s6, 12
	st.w	$s5, $s6, 8
	ld.d	$s5, $sp, 560                   # 8-byte Folded Reload
	bnez	$s0, .LBB24_257
.LBB24_265:                             #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a0, $s4, 0
	ld.d	$s0, $sp, 576                   # 8-byte Folded Reload
	addi.w	$a2, $s0, -2
	sltui	$a4, $a0, 1
	addi.w	$a3, $fp, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $s7
	ld.d	$a5, $sp, 536                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(LenEnc_Encode2)
	jirl	$ra, $ra, 0
	move	$a2, $s0
	ori	$t6, $zero, 1
	ld.wu	$a0, $s6, 24
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(kRepNextStates)
	addi.d	$a1, $a1, %pc_lo12(kRepNextStates)
	ldx.w	$a0, $a1, $a0
	st.w	$a0, $s6, 24
	b	.LBB24_287
.LBB24_266:                             #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a3, $s4, 16
	bstrpick.d	$a4, $a1, 31, 0
	add.d	$a3, $a3, $a4
	st.d	$a3, $s4, 16
	sub.w	$a1, $a2, $a1
	srli.d	$a2, $a0, 5
	sub.d	$a0, $a0, $a2
.LBB24_267:                             #   in Loop: Header=BB24_27 Depth=1
	bstrpick.d	$a2, $a1, 31, 24
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	st.h	$a0, $a3, 0
	bnez	$a2, .LBB24_269
# %bb.268:                              #   in Loop: Header=BB24_27 Depth=1
	slli.d	$a0, $a1, 8
	st.w	$a0, $s7, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 0
.LBB24_269:                             # %RangeEnc_EncodeBit.exit.i330
                                        #   in Loop: Header=BB24_27 Depth=1
	addi.d	$a2, $fp, 2
	slli.d	$fp, $a2, 1
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	ldx.hu	$a3, $a0, $fp
	bstrpick.d	$s2, $s0, 1, 1
	bstrpick.d	$a0, $a1, 31, 11
	mul.d	$a0, $a0, $a3
	bnez	$s2, .LBB24_271
# %bb.270:                              #   in Loop: Header=BB24_27 Depth=1
	ori	$a1, $zero, 2048
	sub.d	$a1, $a1, $a3
	bstrpick.d	$a1, $a1, 31, 5
	add.d	$a1, $a1, $a3
	b	.LBB24_272
.LBB24_271:                             #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a4, $s4, 16
	bstrpick.d	$a5, $a0, 31, 0
	add.d	$a4, $a4, $a5
	st.d	$a4, $s4, 16
	sub.w	$a0, $a1, $a0
	srli.d	$a1, $a3, 5
	sub.d	$a1, $a3, $a1
.LBB24_272:                             #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a3, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 1
	bstrpick.d	$a3, $a0, 31, 24
	st.h	$a1, $a2, 0
	bnez	$a3, .LBB24_274
# %bb.273:                              #   in Loop: Header=BB24_27 Depth=1
	slli.d	$a0, $a0, 8
	st.w	$a0, $s7, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
.LBB24_274:                             # %RangeEnc_EncodeBit.exit.i330.1
                                        #   in Loop: Header=BB24_27 Depth=1
	or	$fp, $fp, $s2
	addi.w	$a2, $fp, 0
	slli.d	$a1, $a2, 1
	ld.d	$a3, $sp, 512                   # 8-byte Folded Reload
	ldx.hu	$a3, $a3, $a1
	bstrpick.d	$s2, $s0, 2, 2
	bstrpick.d	$a1, $a0, 31, 11
	mul.d	$a1, $a1, $a3
	bnez	$s2, .LBB24_276
# %bb.275:                              #   in Loop: Header=BB24_27 Depth=1
	ori	$a0, $zero, 2048
	sub.d	$a0, $a0, $a3
	bstrpick.d	$a0, $a0, 31, 5
	add.d	$a0, $a0, $a3
	b	.LBB24_277
.LBB24_276:                             #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a4, $s4, 16
	bstrpick.d	$a5, $a1, 31, 0
	add.d	$a4, $a4, $a5
	st.d	$a4, $s4, 16
	sub.w	$a1, $a0, $a1
	srli.d	$a0, $a3, 5
	sub.d	$a0, $a3, $a0
.LBB24_277:                             #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a3, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 1
	bstrpick.d	$a3, $a1, 31, 24
	st.h	$a0, $a2, 0
	bnez	$a3, .LBB24_279
# %bb.278:                              #   in Loop: Header=BB24_27 Depth=1
	slli.d	$a0, $a1, 8
	st.w	$a0, $s7, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 0
.LBB24_279:                             # %RangeEnc_EncodeBit.exit.i330.2
                                        #   in Loop: Header=BB24_27 Depth=1
	slli.w	$a0, $fp, 1
	or	$a2, $a0, $s2
	slli.d	$a0, $a2, 1
	ld.d	$a6, $sp, 512                   # 8-byte Folded Reload
	ldx.hu	$a3, $a6, $a0
	bstrpick.d	$a0, $a1, 31, 11
	andi	$a4, $s0, 8
	mul.d	$a0, $a0, $a3
	bnez	$a4, .LBB24_281
# %bb.280:                              #   in Loop: Header=BB24_27 Depth=1
	ori	$a1, $zero, 2048
	sub.d	$a1, $a1, $a3
	bstrpick.d	$a1, $a1, 31, 5
	add.d	$a1, $a1, $a3
	b	.LBB24_282
.LBB24_281:                             #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a4, $s4, 16
	bstrpick.d	$a5, $a0, 31, 0
	add.d	$a4, $a4, $a5
	st.d	$a4, $s4, 16
	sub.w	$a0, $a1, $a0
	srli.d	$a1, $a3, 5
	sub.d	$a1, $a3, $a1
.LBB24_282:                             #   in Loop: Header=BB24_27 Depth=1
	alsl.d	$a2, $a2, $a6, 1
	st.w	$a0, $s7, 0
	bstrpick.d	$a3, $a0, 31, 24
	st.h	$a1, $a2, 0
	bnez	$a3, .LBB24_284
# %bb.283:                              #   in Loop: Header=BB24_27 Depth=1
	slli.d	$a0, $a0, 8
	st.w	$a0, $s7, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
.LBB24_284:                             # %RangeEnc_EncodeBit.exit.i330.3
                                        #   in Loop: Header=BB24_27 Depth=1
	ori	$a0, $zero, 3164
	ldx.w	$a0, $s6, $a0
	addi.d	$a0, $a0, 1
	stptr.w	$a0, $s6, 3164
	ori	$t6, $zero, 1
.LBB24_285:                             # %RcTree_ReverseEncode.exit
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a0, $s6, 16
	ld.d	$a1, $s6, 8
	ld.w	$a2, $s4, 96
	st.w	$a0, $s6, 20
	st.d	$a1, $s6, 12
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	st.w	$a0, $s6, 8
	addi.d	$a0, $a2, 1
	st.w	$a0, $s4, 96
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 528                   # 8-byte Folded Reload
.LBB24_286:                             #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a2, $sp, 576                   # 8-byte Folded Reload
.LBB24_287:                             #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a0, $s6, 4
	sub.d	$a1, $a0, $a2
	st.w	$a1, $s6, 4
	add.w	$s2, $a2, $s2
	ld.d	$fp, $sp, 512                   # 8-byte Folded Reload
	bne	$a0, $a2, .LBB24_27
# %bb.288:                              #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a0, $s4, 0
	bnez	$a0, .LBB24_295
# %bb.289:                              #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a0, $s4, 96
	ori	$a1, $zero, 128
	bltu	$a0, $a1, .LBB24_291
# %bb.290:                              #   in Loop: Header=BB24_27 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(FillDistancesPrices)
	jirl	$ra, $ra, 0
.LBB24_291:                             #   in Loop: Header=BB24_27 Depth=1
	ldptr.w	$a0, $s6, 3164
	ori	$a1, $zero, 16
	bltu	$a0, $a1, .LBB24_295
# %bb.292:                              #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.hu	$a0, $a0, 0
	move	$a1, $zero
	move	$a2, $zero
	ld.d	$t1, $sp, 536                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 520                   # 8-byte Folded Reload
	ori	$t3, $zero, 64
	.p2align	4, , 16
.LBB24_293:                             # %.lr.ph.i.i334
                                        #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$a3, $a1, 1
	sub.d	$a3, $zero, $a3
	srli.d	$a4, $a1, 1
	andi	$a3, $a3, 2032
	xor	$a3, $a3, $a0
	srli.d	$a3, $a3, 2
	and	$a3, $a3, $t2
	ldx.w	$a3, $t1, $a3
	bstrpick.d	$a5, $a1, 1, 1
	ori	$a6, $zero, 4
	bstrins.d	$a6, $a1, 1, 1
	ldx.h	$a7, $fp, $a6
	sub.d	$a5, $zero, $a5
	srli.d	$t0, $a1, 2
	andi	$a5, $a5, 2032
	xor	$a5, $a5, $a7
	srli.d	$a5, $a5, 2
	and	$a5, $a5, $t2
	ldx.w	$a5, $t1, $a5
	bstrins.d	$a6, $a4, 0, 0
	slli.d	$a4, $a6, 1
	ldx.h	$a4, $fp, $a4
	bstrpick.d	$a7, $a1, 2, 2
	sub.d	$a7, $zero, $a7
	andi	$a7, $a7, 2032
	xor	$a4, $a7, $a4
	srli.d	$a4, $a4, 2
	and	$a4, $a4, $t2
	ldx.w	$a4, $t1, $a4
	bstrins.d	$t0, $a6, 63, 1
	slli.d	$a6, $t0, 1
	ldx.h	$a6, $fp, $a6
	slli.d	$a7, $a1, 60
	srai.d	$a7, $a7, 63
	andi	$a7, $a7, 2032
	xor	$a6, $a7, $a6
	srli.d	$a6, $a6, 2
	and	$a6, $a6, $t2
	ldx.w	$a6, $t1, $a6
	add.d	$a3, $a5, $a3
	add.d	$a3, $a3, $a4
	add.d	$a3, $a3, $a6
	stx.w	$a3, $s8, $a2
	addi.d	$a2, $a2, 4
	addi.w	$a1, $a1, 1
	bne	$a2, $t3, .LBB24_293
# %bb.294:                              # %FillAlignPrices.exit
                                        #   in Loop: Header=BB24_27 Depth=1
	stptr.w	$zero, $s6, 3164
	.p2align	4, , 16
.LBB24_295:                             #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a1, $s3, 16
	ld.d	$a0, $s3, 48
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB24_575
# %bb.296:                              #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	sub.w	$a1, $s2, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ori	$t6, $zero, 1
	beqz	$a0, .LBB24_26
# %bb.297:                              #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	add.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	bgeu	$a0, $a1, .LBB24_575
# %bb.298:                              #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a0, $s4, 64
	ld.d	$a1, $s4, 32
	ld.d	$a2, $s4, 48
	ld.d	$a3, $s4, 24
	add.d	$a0, $a0, $a1
	sub.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a3
	lu12i.w	$a1, 2
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	bltu	$a0, $a1, .LBB24_27
	b	.LBB24_575
.LBB24_299:                             #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a7, $s6, 24
	ori	$a2, $zero, 3188
	ldx.w	$a2, $s6, $a2
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.w	$a7, $a3, 0
	and	$a2, $a2, $s2
	ori	$a3, $zero, 3184
	ldx.w	$a3, $s6, $a3
	ori	$a4, $zero, 3172
	ldx.wu	$a4, $s6, $a4
	ldptr.d	$a5, $s6, 3192
	ld.bu	$a0, $a0, -2
	and	$a3, $a3, $s2
	sll.w	$a3, $a3, $a4
	ori	$a6, $zero, 8
	sub.d	$a4, $a6, $a4
	srl.w	$a0, $a0, $a4
	bstrpick.d	$t2, $a7, 31, 0
	bstrpick.d	$t8, $a2, 31, 0
	slli.d	$t5, $t2, 5
	ld.d	$a2, $sp, 552                   # 8-byte Folded Reload
	add.d	$a2, $a2, $t5
	slli.d	$t7, $t8, 1
	ldx.hu	$a2, $a2, $t7
	add.d	$a0, $a0, $a3
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 8
	srli.d	$t4, $a2, 4
	slli.d	$a2, $t4, 2
	ld.d	$s2, $sp, 536                   # 8-byte Folded Reload
	ldx.w	$ra, $s2, $a2
	bstrpick.d	$a0, $a0, 31, 8
	slli.d	$a0, $a0, 9
	add.d	$a0, $a5, $a0
	ori	$a2, $zero, 7
	bgeu	$a7, $a2, .LBB24_303
# %bb.300:                              #   in Loop: Header=BB24_27 Depth=1
	move	$a7, $zero
	addi.d	$a2, $a1, 256
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 520                   # 8-byte Folded Reload
.LBB24_301:                             #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli.d	$a3, $a2, 7
	and	$a3, $a3, $a5
	ldx.h	$a3, $a0, $a3
	slli.d	$a4, $a2, 56
	srai.d	$a4, $a4, 63
	andi	$a4, $a4, 2032
	xor	$a3, $a4, $a3
	srli.d	$a3, $a3, 2
	and	$a3, $a3, $a6
	ldx.w	$a3, $s2, $a3
	bstrpick.d	$a4, $a2, 31, 15
	slli.d	$a2, $a2, 1
	add.d	$a7, $a3, $a7
	beqz	$a4, .LBB24_301
	b	.LBB24_304
.LBB24_302:                             # %ReadMatchDistances.exit188.thread.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a0, $s6, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, 4
	stptr.d	$zero, $s3, 2864
	b	.LBB24_321
.LBB24_303:                             #   in Loop: Header=BB24_27 Depth=1
	move	$a2, $t0
	move	$a3, $s2
	st.d	$a1, $sp, 480                   # 8-byte Folded Spill
	st.d	$t5, $sp, 472                   # 8-byte Folded Spill
	st.d	$t7, $sp, 464                   # 8-byte Folded Spill
	st.d	$t8, $sp, 416                   # 8-byte Folded Spill
	st.d	$t1, $sp, 408                   # 8-byte Folded Spill
	st.d	$t0, $sp, 400                   # 8-byte Folded Spill
	st.d	$t2, $sp, 392                   # 8-byte Folded Spill
	st.d	$t4, $sp, 384                   # 8-byte Folded Spill
	st.d	$ra, $sp, 368                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(LitEnc_GetPriceMatched)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 416                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 464                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	ori	$t6, $zero, 1
	move	$a7, $a0
.LBB24_304:                             # %LitEnc_GetPrice.exit.i
                                        #   in Loop: Header=BB24_27 Depth=1
	addi.w	$t3, $zero, -1
	add.w	$a2, $a7, $ra
	move	$a4, $t3
	lu32i.d	$a4, 0
	slli.d	$a3, $t2, 1
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	ldx.hu	$a5, $a0, $a3
	xori	$a0, $t4, 127
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s2, $a0
	srli.d	$a5, $a5, 4
	slli.d	$t4, $a5, 2
	xori	$a5, $t4, 508
	ldx.w	$a5, $s2, $a5
	stptr.w	$a4, $s3, 2952
	stptr.w	$a2, $s3, 2924
	stptr.w	$zero, $s3, 2932
	add.d	$a4, $a5, $a0
	beq	$a1, $t0, .LBB24_306
# %bb.305:                              #   in Loop: Header=BB24_27 Depth=1
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	b	.LBB24_308
.LBB24_306:                             #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a5, $sp, 456                   # 8-byte Folded Reload
	ldx.hu	$a5, $a5, $a3
	ld.d	$a6, $sp, 432                   # 8-byte Folded Reload
	add.d	$a6, $a6, $t5
	ldx.hu	$a6, $a6, $t7
	srli.d	$a5, $a5, 2
	ld.d	$a7, $sp, 520                   # 8-byte Folded Reload
	and	$a5, $a5, $a7
	ldx.w	$a5, $s2, $a5
	srli.d	$a6, $a6, 2
	and	$a6, $a6, $a7
	ldx.w	$a6, $s2, $a6
	add.d	$a5, $a5, $a4
	add.w	$a5, $a5, $a6
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	bgeu	$a5, $a2, .LBB24_308
# %bb.307:                              #   in Loop: Header=BB24_27 Depth=1
	move	$t3, $zero
	stptr.w	$a5, $s3, 2924
	stptr.w	$zero, $s3, 2952
.LBB24_308:                             #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a6, $sp, 544                   # 8-byte Folded Reload
	sltu	$a2, $t1, $a6
	masknez	$a5, $t1, $a2
	maskeqz	$a2, $a6, $a2
	or	$t1, $a2, $a5
	ori	$a2, $zero, 2
	bltu	$t1, $a2, .LBB24_169
# %bb.309:                              # %.preheader979.preheader.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a2, $sp, 440                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	stptr.w	$zero, $s3, 2948
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	vst	$vr0, $a2, 0
	bstrpick.d	$t0, $t1, 31, 0
	ori	$a2, $zero, 2
	bne	$t1, $a2, .LBB24_354
# %bb.310:                              #   in Loop: Header=BB24_27 Depth=1
	move	$a5, $t0
	move	$t3, $t1
	move	$a2, $t1
	lu12i.w	$t2, 262144
	b	.LBB24_357
.LBB24_311:                             #   in Loop: Header=BB24_27 Depth=1
	move	$a0, $s2
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
.LBB24_312:                             #   in Loop: Header=BB24_27 Depth=1
	ori	$t6, $zero, 1
	ld.d	$t3, $sp, 544                   # 8-byte Folded Reload
.LBB24_313:                             # %ReadMatchDistances.exit188.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a1, $s6, 4
	addi.d	$a1, $a1, 1
	st.w	$a1, $s6, 4
	stptr.w	$a0, $s3, 2868
	stptr.w	$fp, $s3, 2864
	ori	$a0, $zero, 2
	bltu	$fp, $a0, .LBB24_321
# %bb.314:                              #   in Loop: Header=BB24_27 Depth=1
	bstrpick.d	$a0, $s0, 31, 0
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 560                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	move	$a3, $s8
	bltu	$fp, $s5, .LBB24_316
# %bb.315:                              #   in Loop: Header=BB24_27 Depth=1
	bltu	$a0, $a3, .LBB24_169
.LBB24_316:                             #   in Loop: Header=BB24_27 Depth=1
	addi.w	$a1, $s5, 1
	bltu	$a1, $fp, .LBB24_169
# %bb.317:                              #   in Loop: Header=BB24_27 Depth=1
	xor	$a1, $fp, $a1
	sltui	$a1, $a1, 1
	bstrpick.d	$a2, $a0, 31, 7
	sltu	$a2, $a3, $a2
	xori	$a2, $a2, 1
	and	$a1, $a1, $a2
	bnez	$a1, .LBB24_169
# %bb.318:                              #   in Loop: Header=BB24_27 Depth=1
	ori	$a1, $zero, 3
	bltu	$s5, $a1, .LBB24_321
# %bb.319:                              #   in Loop: Header=BB24_27 Depth=1
	addi.w	$a1, $fp, 1
	bltu	$a1, $s5, .LBB24_321
# %bb.320:                              #   in Loop: Header=BB24_27 Depth=1
	bstrpick.d	$a1, $s8, 31, 7
	addi.w	$a1, $a1, 0
	bltu	$a0, $a1, .LBB24_169
.LBB24_321:                             #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 48
	jirl	$ra, $a1, 0
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	ld.w	$a3, $a1, 0
	addi.d	$a2, $a0, -1
	ld.bu	$a1, $a0, -1
	addi.d	$a3, $a3, 1
	bstrpick.d	$a4, $a3, 31, 0
	sub.d	$a3, $a2, $a4
	ld.bu	$a5, $a3, 0
	addi.w	$a3, $s5, -1
	sub.d	$a4, $zero, $a4
	ori	$a6, $zero, 2
	bgeu	$a6, $a3, .LBB24_327
# %bb.322:                              # %.split.us.preheader.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ori	$t6, $zero, 1
	ld.d	$t3, $sp, 544                   # 8-byte Folded Reload
	bne	$a1, $a5, .LBB24_330
# %bb.323:                              #   in Loop: Header=BB24_27 Depth=1
	ld.bu	$a5, $a0, 0
	ldx.bu	$a6, $a0, $a4
	bne	$a5, $a6, .LBB24_330
# %bb.324:                              # %.lr.ph247.us.preheader.i
                                        #   in Loop: Header=BB24_27 Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a5, $a5, -2
	addi.d	$a6, $a0, 1
.LBB24_325:                             # %.lr.ph247.us.i
                                        #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a7, $a6, 0
	ldx.bu	$t0, $a6, $a4
	bne	$a7, $t0, .LBB24_330
# %bb.326:                              #   in Loop: Header=BB24_325 Depth=2
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 1
	bnez	$a5, .LBB24_325
	b	.LBB24_169
.LBB24_327:                             # %.split.preheader.i
                                        #   in Loop: Header=BB24_27 Depth=1
	bne	$a1, $a5, .LBB24_340
# %bb.328:                              #   in Loop: Header=BB24_27 Depth=1
	ld.bu	$a3, $a0, 0
	ldx.bu	$a4, $a0, $a4
	bne	$a3, $a4, .LBB24_340
# %bb.329:                              #   in Loop: Header=BB24_27 Depth=1
	ori	$t6, $zero, 1
	ld.d	$t3, $sp, 544                   # 8-byte Folded Reload
	b	.LBB24_169
.LBB24_330:                             # %select.unfold.us.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a4, $s6, 12
	addi.d	$a4, $a4, 1
	bstrpick.d	$a4, $a4, 31, 0
	sub.d	$a5, $a2, $a4
	ld.bu	$a5, $a5, 0
	bne	$a1, $a5, .LBB24_335
# %bb.331:                              #   in Loop: Header=BB24_27 Depth=1
	sub.d	$a4, $zero, $a4
	ld.bu	$a5, $a0, 0
	ldx.bu	$a6, $a0, $a4
	bne	$a5, $a6, .LBB24_335
# %bb.332:                              # %.lr.ph247.us.preheader.1.i
                                        #   in Loop: Header=BB24_27 Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a5, $a5, -2
	addi.d	$a6, $a0, 1
.LBB24_333:                             # %.lr.ph247.us.1.i
                                        #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a7, $a6, 0
	ldx.bu	$t0, $a6, $a4
	bne	$a7, $t0, .LBB24_335
# %bb.334:                              #   in Loop: Header=BB24_333 Depth=2
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 1
	bnez	$a5, .LBB24_333
	b	.LBB24_169
.LBB24_335:                             # %select.unfold.us.1.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a4, $s6, 16
	addi.d	$a4, $a4, 1
	bstrpick.d	$a4, $a4, 31, 0
	sub.d	$a5, $a2, $a4
	ld.bu	$a5, $a5, 0
	bne	$a1, $a5, .LBB24_346
# %bb.336:                              #   in Loop: Header=BB24_27 Depth=1
	sub.d	$a4, $zero, $a4
	ld.bu	$a5, $a0, 0
	ldx.bu	$a6, $a0, $a4
	bne	$a5, $a6, .LBB24_346
# %bb.337:                              # %.lr.ph247.us.preheader.2.i
                                        #   in Loop: Header=BB24_27 Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a5, $a5, -2
	addi.d	$a6, $a0, 1
.LBB24_338:                             # %.lr.ph247.us.2.i
                                        #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a7, $a6, 0
	ldx.bu	$t0, $a6, $a4
	bne	$a7, $t0, .LBB24_346
# %bb.339:                              #   in Loop: Header=BB24_338 Depth=2
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 1
	bnez	$a5, .LBB24_338
	b	.LBB24_169
.LBB24_340:                             # %select.unfold.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a3, $s6, 12
	addi.d	$a3, $a3, 1
	bstrpick.d	$a3, $a3, 31, 0
	sub.d	$a4, $a2, $a3
	ld.bu	$a4, $a4, 0
	ori	$t6, $zero, 1
	ld.d	$t3, $sp, 544                   # 8-byte Folded Reload
	bne	$a1, $a4, .LBB24_342
# %bb.341:                              #   in Loop: Header=BB24_27 Depth=1
	sub.d	$a3, $zero, $a3
	ld.bu	$a4, $a0, 0
	ldx.bu	$a3, $a0, $a3
	beq	$a4, $a3, .LBB24_169
.LBB24_342:                             # %select.unfold.1.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a3, $s6, 16
	addi.d	$a3, $a3, 1
	bstrpick.d	$a3, $a3, 31, 0
	sub.d	$a4, $a2, $a3
	ld.bu	$a4, $a4, 0
	bne	$a1, $a4, .LBB24_344
# %bb.343:                              #   in Loop: Header=BB24_27 Depth=1
	sub.d	$a3, $zero, $a3
	ld.bu	$a4, $a0, 0
	ldx.bu	$a3, $a0, $a3
	beq	$a4, $a3, .LBB24_169
.LBB24_344:                             # %select.unfold.2.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a3, $s6, 20
	addi.d	$a3, $a3, 1
	bstrpick.d	$a3, $a3, 31, 0
	sub.d	$a2, $a2, $a3
	ld.bu	$a2, $a2, 0
	bne	$a1, $a2, .LBB24_351
# %bb.345:                              #   in Loop: Header=BB24_27 Depth=1
	sub.d	$a1, $zero, $a3
	ld.bu	$a2, $a0, 0
	ldx.bu	$a0, $a0, $a1
	beq	$a2, $a0, .LBB24_169
	b	.LBB24_351
.LBB24_346:                             # %select.unfold.us.2.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.w	$a4, $s6, 20
	addi.d	$a4, $a4, 1
	bstrpick.d	$a4, $a4, 31, 0
	sub.d	$a2, $a2, $a4
	ld.bu	$a2, $a2, 0
	bne	$a1, $a2, .LBB24_351
# %bb.347:                              #   in Loop: Header=BB24_27 Depth=1
	sub.d	$a1, $zero, $a4
	ld.bu	$a2, $a0, 0
	ldx.bu	$a4, $a0, $a1
	bne	$a2, $a4, .LBB24_351
# %bb.348:                              # %.lr.ph247.us.preheader.3.i
                                        #   in Loop: Header=BB24_27 Depth=1
	bstrpick.d	$a2, $a3, 31, 0
	addi.d	$a2, $a2, -2
	addi.d	$a0, $a0, 1
.LBB24_349:                             # %.lr.ph247.us.3.i
                                        #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a3, $a0, 0
	ldx.bu	$a4, $a0, $a1
	bne	$a3, $a4, .LBB24_351
# %bb.350:                              #   in Loop: Header=BB24_349 Depth=2
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB24_349
	b	.LBB24_169
.LBB24_351:                             # %.split251.us.i
                                        #   in Loop: Header=BB24_27 Depth=1
	addi.w	$a1, $s5, -2
	addi.w	$a5, $s8, 4
	beqz	$a1, .LBB24_353
# %bb.352:                              #   in Loop: Header=BB24_27 Depth=1
	move	$t4, $a5
	move	$fp, $s5
	b	.LBB24_118
.LBB24_353:                             #   in Loop: Header=BB24_27 Depth=1
	move	$s0, $zero
	ori	$a0, $zero, 2
	b	.LBB24_120
.LBB24_354:                             # %vector.ph636
                                        #   in Loop: Header=BB24_27 Depth=1
	addi.d	$a2, $t1, -1
	bstrpick.d	$a6, $a2, 31, 0
	bstrpick.d	$a2, $a6, 31, 1
	slli.d	$a7, $a2, 1
	sub.d	$a5, $t0, $a7
	move	$t3, $t1
	sub.d	$a2, $t1, $a7
	slli.d	$t1, $t0, 5
	alsl.d	$t0, $t0, $t1, 4
	add.d	$t0, $s1, $t0
	move	$t1, $a7
	lu12i.w	$t2, 262144
.LBB24_355:                             # %vector.body639
                                        #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$t2, $t0, 0
	st.w	$t2, $t0, -48
	addi.d	$t1, $t1, -2
	addi.d	$t0, $t0, -96
	bnez	$t1, .LBB24_355
# %bb.356:                              # %middle.block643
                                        #   in Loop: Header=BB24_27 Depth=1
	beq	$a7, $a6, .LBB24_359
.LBB24_357:                             # %.preheader979.i.preheader
                                        #   in Loop: Header=BB24_27 Depth=1
	slli.d	$a6, $a5, 5
	alsl.d	$a5, $a5, $a6, 4
	add.d	$a5, $s1, $a5
.LBB24_358:                             # %.preheader979.i
                                        #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a2, $a2, -1
	st.w	$t2, $a5, 0
	addi.d	$a5, $a5, -48
	bltu	$t6, $a2, .LBB24_358
.LBB24_359:                             # %.preheader978.i
                                        #   in Loop: Header=BB24_27 Depth=1
	addi.w	$a5, $s8, 0
	alsl.d	$a2, $t8, $t8, 4
	ori	$a6, $zero, 2
	bgeu	$a5, $a6, .LBB24_552
.LBB24_360:                             # %.loopexit977.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ori	$a6, $zero, 2
	move	$s8, $t3
	bgeu	$s5, $a6, .LBB24_556
.LBB24_361:                             # %.loopexit977.1.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.d	$s5, $sp, 560                   # 8-byte Folded Reload
	ori	$a6, $zero, 2
	bgeu	$s0, $a6, .LBB24_560
.LBB24_362:                             # %.loopexit977.2.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ori	$a6, $zero, 2
	ld.d	$t3, $sp, 504                   # 8-byte Folded Reload
	bgeu	$fp, $a6, .LBB24_564
.LBB24_363:                             # %.loopexit977.3.i
                                        #   in Loop: Header=BB24_27 Depth=1
	sltu	$a3, $t6, $a5
	masknez	$a4, $t6, $a3
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $a4
	addi.w	$a3, $a3, 1
	ld.d	$a4, $sp, 544                   # 8-byte Folded Reload
	bltu	$a4, $a3, .LBB24_374
# %bb.364:                              # %.preheader976.i.preheader
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a4, $sp, 536                   # 8-byte Folded Reload
	ldx.w	$a1, $a4, $t4
	add.d	$a0, $a1, $a0
	addi.d	$a1, $zero, -2
.LBB24_365:                             # %.preheader976.i
                                        #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a1, $a1, 2
	bstrpick.d	$a4, $a1, 31, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s5, $a4
	bltu	$a4, $a3, .LBB24_365
	b	.LBB24_367
.LBB24_366:                             #   in Loop: Header=BB24_367 Depth=2
	xor	$a5, $a3, $a5
	sltu	$a5, $zero, $a5
	masknez	$a4, $a4, $a5
	maskeqz	$a1, $a1, $a5
	or	$a1, $a1, $a4
	addi.w	$a3, $a3, 1
.LBB24_367:                             # %.preheader974.i
                                        #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a4, $a1, 1
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s5, $a4
	addi.w	$a5, $a3, -2
	sltui	$a6, $a3, 5
	ori	$a7, $zero, 3
	masknez	$a7, $a7, $a6
	maskeqz	$a6, $a5, $a6
	or	$a6, $a6, $a7
	ori	$a7, $zero, 127
	bltu	$a7, $a4, .LBB24_369
# %bb.368:                              #   in Loop: Header=BB24_367 Depth=2
	bstrpick.d	$a6, $a6, 31, 0
	slli.d	$a6, $a6, 9
	ld.d	$a7, $sp, 584                   # 8-byte Folded Reload
	add.d	$a6, $a7, $a6
	slli.d	$a7, $a4, 2
	ldx.w	$a6, $a6, $a7
	b	.LBB24_370
.LBB24_369:                             #   in Loop: Header=BB24_367 Depth=2
	addu16i.d	$a7, $a4, -8
	addi.w	$a7, $a7, 0
	slti	$a7, $a7, 0
	ori	$t0, $zero, 18
	masknez	$t0, $t0, $a7
	ori	$t1, $zero, 6
	maskeqz	$a7, $t1, $a7
	or	$a7, $a7, $t0
	srl.w	$t0, $a4, $a7
	bstrpick.d	$t0, $t0, 31, 0
	ld.d	$t1, $sp, 312                   # 8-byte Folded Reload
	ldx.bu	$t0, $t1, $t0
	alsl.d	$a7, $a7, $t0, 1
	andi	$t0, $a4, 15
	slli.d	$t0, $t0, 2
	ld.d	$t1, $sp, 528                   # 8-byte Folded Reload
	ldx.w	$t0, $t1, $t0
	bstrpick.d	$a6, $a6, 31, 0
	slli.d	$a7, $a7, 2
	slli.d	$a6, $a6, 8
	ld.d	$t1, $sp, 592                   # 8-byte Folded Reload
	add.d	$a6, $t1, $a6
	ldx.w	$a6, $a6, $a7
	add.d	$a6, $a6, $t0
.LBB24_370:                             #   in Loop: Header=BB24_367 Depth=2
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a7, $a2, 6
	ld.d	$t0, $sp, 448                   # 8-byte Folded Reload
	add.d	$a7, $t0, $a7
	slli.d	$a5, $a5, 2
	ldx.w	$a7, $a7, $a5
	bstrpick.d	$a5, $a3, 31, 0
	slli.d	$t0, $a5, 5
	alsl.d	$a5, $a5, $t0, 4
	ldx.w	$t0, $s1, $a5
	add.d	$a7, $a0, $a7
	add.w	$a6, $a7, $a6
	bgeu	$a6, $t0, .LBB24_372
# %bb.371:                              #   in Loop: Header=BB24_367 Depth=2
	add.d	$a5, $s1, $a5
	st.w	$a6, $a5, 0
	st.w	$zero, $a5, 24
	addi.d	$a4, $a4, 4
	st.w	$a4, $a5, 28
	st.w	$zero, $a5, 8
.LBB24_372:                             #   in Loop: Header=BB24_367 Depth=2
	bstrpick.d	$a4, $a1, 31, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $s5, $a4
	addi.w	$a4, $a1, 2
	bne	$a3, $a5, .LBB24_366
# %bb.373:                              #   in Loop: Header=BB24_367 Depth=2
	addi.w	$a6, $t3, 0
	bne	$a4, $a6, .LBB24_366
.LBB24_374:                             # %.lr.ph1070.i.preheader
                                        #   in Loop: Header=BB24_27 Depth=1
	st.d	$zero, $sp, 480                 # 8-byte Folded Spill
	ori	$fp, $zero, 1
	ori	$a0, $zero, 4094
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s4, $sp, 288                   # 8-byte Folded Spill
	b	.LBB24_377
.LBB24_375:                             #   in Loop: Header=BB24_377 Depth=2
	ori	$t6, $zero, 1
.LBB24_376:                             # %.thread950.i
                                        #   in Loop: Header=BB24_377 Depth=2
	addi.w	$fp, $fp, 1
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	beq	$fp, $s8, .LBB24_568
.LBB24_377:                             # %.lr.ph1070.i
                                        #   Parent Loop BB24_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB24_381 Depth 3
                                        #       Child Loop BB24_413 Depth 3
                                        #       Child Loop BB24_411 Depth 3
                                        #       Child Loop BB24_428 Depth 3
                                        #       Child Loop BB24_436 Depth 3
                                        #       Child Loop BB24_439 Depth 3
                                        #       Child Loop BB24_449 Depth 3
                                        #         Child Loop BB24_453 Depth 4
                                        #         Child Loop BB24_460 Depth 4
                                        #         Child Loop BB24_463 Depth 4
                                        #         Child Loop BB24_472 Depth 4
                                        #         Child Loop BB24_476 Depth 4
                                        #         Child Loop BB24_481 Depth 4
                                        #         Child Loop BB24_487 Depth 4
                                        #         Child Loop BB24_491 Depth 4
                                        #       Child Loop BB24_498 Depth 3
                                        #       Child Loop BB24_506 Depth 3
                                        #       Child Loop BB24_509 Depth 3
                                        #       Child Loop BB24_511 Depth 3
                                        #       Child Loop BB24_513 Depth 3
                                        #         Child Loop BB24_514 Depth 4
                                        #           Child Loop BB24_516 Depth 5
                                        #           Child Loop BB24_523 Depth 5
                                        #           Child Loop BB24_528 Depth 5
                                        #           Child Loop BB24_535 Depth 5
                                        #           Child Loop BB24_538 Depth 5
	ld.d	$a1, $s3, 16
	ld.d	$a0, $s3, 48
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	st.d	$a2, $sp, 344                   # 8-byte Folded Spill
	jirl	$ra, $a1, 0
	ld.d	$a2, $s3, 32
	ld.d	$a1, $s3, 48
	stptr.w	$a0, $s3, 2872
	move	$a0, $a1
	move	$a1, $s5
	jirl	$ra, $a2, 0
	move	$a6, $a0
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	beqz	$a0, .LBB24_384
# %bb.378:                              #   in Loop: Header=BB24_377 Depth=2
	addi.d	$a0, $a6, -2
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a7, $s5, $a0
	ld.w	$a0, $s6, 0
	bne	$a7, $a0, .LBB24_385
# %bb.379:                              #   in Loop: Header=BB24_377 Depth=2
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 48
	move	$s0, $a7
	jirl	$ra, $a1, 0
	move	$a7, $s0
	ldptr.w	$a1, $s3, 2872
	sltui	$a2, $a1, 273
	ori	$a3, $zero, 273
	masknez	$a3, $a3, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	bgeu	$s0, $a1, .LBB24_402
# %bb.380:                              # %.lr.ph.preheader.i853.i
                                        #   in Loop: Header=BB24_377 Depth=2
	ld.d	$a6, $sp, 352                   # 8-byte Folded Reload
	addi.d	$a2, $a6, -1
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $s5, $a2
	addi.d	$a2, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	sub.d	$a2, $zero, $a2
	add.d	$a0, $a0, $a7
	addi.d	$a0, $a0, -1
	ori	$t6, $zero, 1
	.p2align	4, , 16
.LBB24_381:                             # %.lr.ph.i854.i
                                        #   Parent Loop BB24_27 Depth=1
                                        #     Parent Loop BB24_377 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a3, $a0, 0
	ldx.bu	$a4, $a0, $a2
	bne	$a3, $a4, .LBB24_386
# %bb.382:                              #   in Loop: Header=BB24_381 Depth=3
	addi.w	$a7, $a7, 1
	addi.d	$a0, $a0, 1
	bne	$a1, $a7, .LBB24_381
# %bb.383:                              #   in Loop: Header=BB24_377 Depth=2
	move	$a7, $a1
	b	.LBB24_386
.LBB24_384:                             #   in Loop: Header=BB24_377 Depth=2
	move	$a7, $zero
.LBB24_385:                             #   in Loop: Header=BB24_377 Depth=2
	ori	$t6, $zero, 1
.LBB24_386:                             # %ReadMatchDistances.exit860.i
                                        #   in Loop: Header=BB24_377 Depth=2
	ld.w	$a0, $s6, 4
	ld.w	$a1, $s6, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, 4
	bstrpick.d	$a0, $fp, 31, 0
	bgeu	$a7, $a1, .LBB24_546
# %bb.387:                              #   in Loop: Header=BB24_377 Depth=2
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 4
	add.d	$s0, $s1, $a0
	ld.w	$a1, $s0, 8
	ld.wu	$a0, $s0, 24
	st.d	$a7, $sp, 80                    # 8-byte Folded Spill
	beqz	$a1, .LBB24_391
# %bb.388:                              #   in Loop: Header=BB24_377 Depth=2
	ld.w	$a2, $s0, 12
	addi.w	$a1, $a0, -1
	beqz	$a2, .LBB24_394
# %bb.389:                              # %.thread.i233
                                        #   in Loop: Header=BB24_377 Depth=2
	ld.wu	$a0, $s0, 16
	ld.w	$s2, $s0, 20
	slli.d	$a2, $a0, 5
	alsl.d	$a0, $a0, $a2, 4
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ldx.wu	$a2, $a2, $a0
	sltui	$a4, $s2, 4
	pcalau12i	$a3, %pc_hi20(kMatchNextStates)
	addi.d	$a3, $a3, %pc_lo12(kMatchNextStates)
	masknez	$a5, $a3, $a4
	pcalau12i	$a3, %pc_hi20(kRepNextStates)
	addi.d	$a3, $a3, %pc_lo12(kRepNextStates)
	maskeqz	$a4, $a3, $a4
	or	$a4, $a4, $a5
	slli.d	$a2, $a2, 2
	ldx.wu	$a2, $a4, $a2
	slli.d	$a2, $a2, 2
	ld.d	$a4, $sp, 488                   # 8-byte Folded Reload
	ldx.wu	$a2, $a4, $a2
	ld.d	$a4, $sp, 480                   # 8-byte Folded Reload
	beq	$a1, $a4, .LBB24_392
# %bb.390:                              # %.thread911.i
                                        #   in Loop: Header=BB24_377 Depth=2
	slli.d	$a1, $a2, 2
	ldx.wu	$a3, $a3, $a1
	ori	$a1, $zero, 4
	bltu	$s2, $a1, .LBB24_397
	b	.LBB24_404
.LBB24_391:                             #   in Loop: Header=BB24_377 Depth=2
	slli.d	$a1, $a0, 5
	alsl.d	$a1, $a0, $a1, 4
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ldx.wu	$a2, $a2, $a1
	addi.w	$a1, $a0, 0
	ld.d	$a3, $sp, 480                   # 8-byte Folded Reload
	bne	$a1, $a3, .LBB24_395
.LBB24_392:                             #   in Loop: Header=BB24_377 Depth=2
	ld.w	$a1, $s0, 28
	slli.d	$a0, $a2, 2
	beqz	$a1, .LBB24_400
# %bb.393:                              #   in Loop: Header=BB24_377 Depth=2
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	b	.LBB24_401
.LBB24_394:                             # %.thread.thread.i
                                        #   in Loop: Header=BB24_377 Depth=2
	bstrpick.d	$a0, $a1, 31, 0
	slli.d	$a2, $a0, 5
	alsl.d	$a2, $a0, $a2, 4
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ldx.wu	$a2, $a3, $a2
	slli.d	$a2, $a2, 2
	ld.d	$a3, $sp, 488                   # 8-byte Folded Reload
	ldx.wu	$a2, $a3, $a2
	ld.d	$a3, $sp, 480                   # 8-byte Folded Reload
	beq	$a1, $a3, .LBB24_392
.LBB24_395:                             # %.thread911.thread.i
                                        #   in Loop: Header=BB24_377 Depth=2
	ld.w	$s2, $s0, 28
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 4
	slli.d	$a1, $a2, 2
	ori	$a2, $zero, 3
	bltu	$a2, $s2, .LBB24_403
# %bb.396:                              # %.thread918.i
                                        #   in Loop: Header=BB24_377 Depth=2
	pcalau12i	$a2, %pc_hi20(kRepNextStates)
	addi.d	$a2, $a2, %pc_lo12(kRepNextStates)
	ldx.wu	$a3, $a2, $a1
.LBB24_397:                             #   in Loop: Header=BB24_377 Depth=2
	st.d	$a3, $sp, 216                   # 8-byte Folded Spill
	st.d	$s8, $sp, 464                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$s5, $a1, $a0
	slli.d	$a3, $s2, 2
	ldx.w	$a0, $s5, $a3
	st.w	$a0, $sp, 616
	beqz	$s2, .LBB24_405
# %bb.398:                              # %.preheader972.i
                                        #   in Loop: Header=BB24_377 Depth=2
	move	$s8, $a0
	addi.d	$a0, $sp, 620
	move	$a1, $s5
	st.d	$a3, $sp, 576                   # 8-byte Folded Spill
	move	$a2, $a3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	bltu	$a0, $s2, .LBB24_407
# %bb.399:                              #   in Loop: Header=BB24_377 Depth=2
	addi.d	$a0, $s2, 1
	ld.d	$a3, $sp, 576                   # 8-byte Folded Reload
	b	.LBB24_406
.LBB24_400:                             #   in Loop: Header=BB24_377 Depth=2
	pcalau12i	$a1, %pc_hi20(kShortRepNextStates)
	addi.d	$a1, $a1, %pc_lo12(kShortRepNextStates)
.LBB24_401:                             # %.loopexit.i
                                        #   in Loop: Header=BB24_377 Depth=2
	ldx.wu	$a3, $a1, $a0
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	b	.LBB24_409
.LBB24_402:                             #   in Loop: Header=BB24_377 Depth=2
	ori	$t6, $zero, 1
	ld.d	$a6, $sp, 352                   # 8-byte Folded Reload
	b	.LBB24_386
.LBB24_403:                             # %.thread925.i
                                        #   in Loop: Header=BB24_377 Depth=2
	pcalau12i	$a2, %pc_hi20(kMatchNextStates)
	addi.d	$a2, $a2, %pc_lo12(kMatchNextStates)
	ldx.wu	$a3, $a2, $a1
.LBB24_404:                             # %.loopexit.loopexit1075.i
                                        #   in Loop: Header=BB24_377 Depth=2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a0
	ldx.d	$a0, $a2, $a0
	ld.w	$a1, $a1, 8
	addi.w	$s2, $s2, -4
	st.w	$s2, $sp, 616
	addi.d	$a2, $sp, 620
	st.d	$a0, $a2, 0
	st.w	$a1, $a2, 8
	b	.LBB24_409
.LBB24_405:                             #   in Loop: Header=BB24_377 Depth=2
	ori	$a0, $zero, 1
.LBB24_406:                             # %.lr.ph1008.preheader.i
                                        #   in Loop: Header=BB24_377 Depth=2
	slli.w	$a1, $a0, 2
	addi.d	$a0, $sp, 616
	add.d	$a0, $a0, $a1
	add.d	$a1, $s5, $a1
	ori	$a2, $zero, 12
	sub.w	$a2, $a2, $a3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$s2, $sp, 616
	b	.LBB24_408
.LBB24_407:                             #   in Loop: Header=BB24_377 Depth=2
	move	$s2, $s8
.LBB24_408:                             # %.loopexit.i
                                        #   in Loop: Header=BB24_377 Depth=2
	ld.d	$s8, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
.LBB24_409:                             # %.loopexit.i
                                        #   in Loop: Header=BB24_377 Depth=2
	st.d	$a3, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	addi.w	$s5, $a0, 1
	st.w	$a3, $s0, 4
	ld.w	$a1, $sp, 620
	ld.d	$a2, $sp, 624
	ld.w	$a0, $s0, 0
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	ld.d	$a3, $s3, 24
	ld.d	$a0, $s3, 48
	st.w	$s2, $s0, 32
	st.w	$a1, $s0, 36
	st.d	$a2, $s0, 40
	jirl	$ra, $a3, 0
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	move	$t1, $a0
	ori	$a0, $zero, 3188
	ldx.w	$a1, $s6, $a0
	addi.d	$a7, $t1, -1
	ld.bu	$t4, $t1, -1
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $s2, 1
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	and	$a2, $a1, $s5
	bstrpick.d	$a5, $a2, 31, 0
	slli.d	$a4, $s0, 5
	ld.d	$a1, $sp, 552                   # 8-byte Folded Reload
	add.d	$a2, $a1, $a4
	slli.d	$a3, $a5, 1
	ldx.hu	$a6, $a2, $a3
	bstrpick.d	$t3, $a0, 31, 0
	st.d	$a7, $sp, 576                   # 8-byte Folded Spill
	sub.d	$a0, $a7, $t3
	ld.bu	$a2, $a0, 0
	srli.d	$a7, $a6, 4
	slli.d	$a0, $a7, 2
	ld.d	$a1, $sp, 536                   # 8-byte Folded Reload
	ldx.w	$t0, $a1, $a0
	ori	$a0, $zero, 3184
	ldx.w	$a6, $s6, $a0
	ori	$a0, $zero, 3172
	ldx.wu	$t5, $s6, $a0
	ldptr.d	$t2, $s6, 3192
	st.d	$t1, $sp, 304                   # 8-byte Folded Spill
	ld.bu	$a0, $t1, -2
	st.d	$s5, $sp, 296                   # 8-byte Folded Spill
	st.d	$a6, $sp, 200                   # 8-byte Folded Spill
	and	$a6, $a6, $s5
	sll.w	$a6, $a6, $t5
	ori	$t1, $zero, 8
	st.d	$t5, $sp, 192                   # 8-byte Folded Spill
	sub.d	$t1, $t1, $t5
	st.d	$t1, $sp, 184                   # 8-byte Folded Spill
	srl.w	$a0, $a0, $t1
	add.d	$a0, $a0, $a6
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 8
	bstrpick.d	$a0, $a0, 31, 8
	slli.d	$a0, $a0, 9
	st.d	$t2, $sp, 384                   # 8-byte Folded Spill
	add.d	$a6, $t2, $a0
	move	$t1, $zero
	ori	$a0, $zero, 7
	bgeu	$s0, $a0, .LBB24_412
# %bb.410:                              #   in Loop: Header=BB24_377 Depth=2
	addi.d	$t2, $t4, 256
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 520                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB24_411:                             #   Parent Loop BB24_27 Depth=1
                                        #     Parent Loop BB24_377 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	srli.d	$a0, $t2, 7
	and	$a0, $a0, $t6
	ldx.h	$a0, $a6, $a0
	slli.d	$t5, $t2, 56
	srai.d	$t5, $t5, 63
	andi	$t5, $t5, 2032
	xor	$a0, $t5, $a0
	srli.d	$a0, $a0, 2
	and	$a0, $a0, $t7
	ldx.w	$a0, $a1, $a0
	bstrpick.d	$t5, $t2, 31, 15
	slli.d	$t2, $t2, 1
	add.d	$t1, $a0, $t1
	beqz	$t5, .LBB24_411
	b	.LBB24_414
.LBB24_412:                             #   in Loop: Header=BB24_377 Depth=2
	addi.d	$t6, $t4, 256
	ori	$t2, $zero, 256
	move	$t5, $a2
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 520                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB24_413:                             #   Parent Loop BB24_27 Depth=1
                                        #     Parent Loop BB24_377 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$t5, $t5, 1
	and	$a0, $t2, $t5
	bstrpick.d	$t7, $t6, 31, 8
	add.d	$t7, $t2, $t7
	add.w	$a0, $t7, $a0
	slli.d	$a0, $a0, 1
	ldx.h	$a0, $a6, $a0
	slli.d	$t7, $t6, 56
	srai.d	$t7, $t7, 63
	andi	$t7, $t7, 2032
	xor	$a0, $t7, $a0
	srli.d	$a0, $a0, 2
	and	$a0, $a0, $t8
	ldx.w	$a0, $a1, $a0
	add.d	$t1, $a0, $t1
	bstrpick.d	$a0, $t6, 31, 15
	slli.d	$t6, $t6, 1
	xor	$t7, $t5, $t6
	andn	$t2, $t2, $t7
	beqz	$a0, .LBB24_413
.LBB24_414:                             # %LitEnc_GetPriceMatched.exit.i
                                        #   in Loop: Header=BB24_377 Depth=2
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	addi.w	$a6, $a0, 2
	bstrpick.d	$a0, $a6, 31, 0
	slli.d	$t2, $a0, 5
	alsl.d	$a0, $a0, $t2, 4
	ldx.w	$t6, $s1, $a0
	ld.d	$t7, $sp, 544                   # 8-byte Folded Reload
	add.d	$t0, $t0, $t7
	add.w	$t2, $t0, $t1
	add.d	$t0, $s1, $a0
	bgeu	$t2, $t6, .LBB24_416
# %bb.415:                              #   in Loop: Header=BB24_377 Depth=2
	st.w	$t2, $t0, 0
	st.w	$fp, $t0, 24
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $t0, 28
	st.w	$zero, $t0, 8
	ori	$t5, $zero, 1
	move	$t6, $t2
	b	.LBB24_417
.LBB24_416:                             #   in Loop: Header=BB24_377 Depth=2
	move	$t5, $zero
.LBB24_417:                             #   in Loop: Header=BB24_377 Depth=2
	ld.d	$t8, $sp, 304                   # 8-byte Folded Reload
	slli.d	$t1, $s0, 1
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	ldx.hu	$a0, $a0, $t1
	xori	$a7, $a7, 127
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a1, $a7
	srli.d	$a0, $a0, 4
	slli.d	$ra, $a0, 2
	xori	$a0, $ra, 508
	ldx.w	$a0, $a1, $a0
	add.d	$t7, $a7, $t7
	add.d	$a0, $a0, $t7
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	bne	$a2, $t4, .LBB24_422
# %bb.418:                              #   in Loop: Header=BB24_377 Depth=2
	ld.w	$a0, $t0, 24
	ld.d	$s5, $sp, 560                   # 8-byte Folded Reload
	bgeu	$a0, $fp, .LBB24_420
# %bb.419:                              #   in Loop: Header=BB24_377 Depth=2
	ld.w	$a0, $t0, 28
	beqz	$a0, .LBB24_423
.LBB24_420:                             #   in Loop: Header=BB24_377 Depth=2
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	ldx.hu	$a0, $a0, $t1
	ld.d	$a7, $sp, 432                   # 8-byte Folded Reload
	add.d	$a7, $a7, $a4
	ldx.hu	$a3, $a7, $a3
	srli.d	$a0, $a0, 2
	ld.d	$a7, $sp, 520                   # 8-byte Folded Reload
	and	$a0, $a0, $a7
	ldx.w	$a0, $a1, $a0
	srli.d	$a3, $a3, 2
	and	$a3, $a3, $a7
	ldx.w	$a3, $a1, $a3
	ld.d	$a7, $sp, 472                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a7
	add.w	$a0, $a0, $a3
	bltu	$t6, $a0, .LBB24_423
# %bb.421:                              #   in Loop: Header=BB24_377 Depth=2
	st.w	$a0, $t0, 0
	st.w	$fp, $t0, 24
	st.w	$zero, $t0, 28
	st.w	$zero, $t0, 8
	ori	$t5, $zero, 1
	b	.LBB24_423
.LBB24_422:                             #   in Loop: Header=BB24_377 Depth=2
	ld.d	$s5, $sp, 560                   # 8-byte Folded Reload
.LBB24_423:                             #   in Loop: Header=BB24_377 Depth=2
	ldptr.w	$a7, $s3, 2872
	ori	$a0, $zero, 4094
	ld.d	$a3, $sp, 480                   # 8-byte Folded Reload
	sub.w	$a0, $a0, $a3
	sltu	$a3, $a0, $a7
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a7, $a3
	or	$a3, $a0, $a3
	ori	$a0, $zero, 2
	st.d	$a3, $sp, 504                   # 8-byte Folded Spill
	bltu	$a3, $a0, .LBB24_375
# %bb.424:                              #   in Loop: Header=BB24_377 Depth=2
	ld.w	$a0, $s6, 0
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	bstrpick.d	$t0, $a0, 31, 0
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	bstrpick.d	$t1, $a7, 31, 0
	ori	$t6, $zero, 1
	st.d	$t7, $sp, 16                    # 8-byte Folded Spill
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	beq	$a2, $t4, .LBB24_445
# %bb.425:                              #   in Loop: Header=BB24_377 Depth=2
	bnez	$t5, .LBB24_445
# %bb.426:                              #   in Loop: Header=BB24_377 Depth=2
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	addi.w	$a2, $a0, 1
	ld.d	$a3, $sp, 504                   # 8-byte Folded Reload
	sltu	$a0, $a2, $a3
	masknez	$a3, $a3, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a3
	ori	$a3, $zero, 2
	bltu	$a0, $a3, .LBB24_445
# %bb.427:                              # %.lr.ph1010.preheader.i
                                        #   in Loop: Header=BB24_377 Depth=2
	sub.d	$a3, $zero, $t3
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 64                    # 8-byte Folded Reload
	sltu	$a0, $t3, $a7
	masknez	$a7, $a7, $a0
	maskeqz	$a0, $t3, $a0
	or	$a0, $a0, $a7
	sltu	$a7, $a0, $a2
	maskeqz	$a0, $a0, $a7
	masknez	$a7, $a2, $a7
	or	$a7, $a0, $a7
	sltu	$a0, $t1, $t0
	masknez	$t3, $t0, $a0
	maskeqz	$a0, $t1, $a0
	or	$a0, $a0, $t3
	bstrpick.d	$a2, $a2, 31, 0
	sltu	$t3, $a0, $a2
	maskeqz	$a0, $a0, $t3
	masknez	$a2, $a2, $t3
	or	$a0, $a0, $a2
	addi.d	$t3, $a0, -1
	ori	$a2, $zero, 1
	move	$t4, $t8
.LBB24_428:                             # %.lr.ph1010.i
                                        #   Parent Loop BB24_27 Depth=1
                                        #     Parent Loop BB24_377 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a0, $t4, 0
	ldx.bu	$t5, $t4, $a3
	bne	$a0, $t5, .LBB24_431
# %bb.429:                              #   in Loop: Header=BB24_428 Depth=3
	addi.w	$a2, $a2, 1
	addi.d	$t3, $t3, -1
	addi.d	$t4, $t4, 1
	bnez	$t3, .LBB24_428
# %bb.430:                              #   in Loop: Header=BB24_377 Depth=2
	move	$a2, $a7
.LBB24_431:                             # %.critedge2.i236
                                        #   in Loop: Header=BB24_377 Depth=2
	addi.w	$t8, $a2, -1
	ori	$a0, $zero, 2
	bltu	$t8, $a0, .LBB24_444
# %bb.432:                              #   in Loop: Header=BB24_377 Depth=2
	slli.d	$a0, $s0, 2
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	ldx.wu	$a0, $a1, $a0
	ld.d	$a1, $sp, 536                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 2
	ld.d	$a7, $sp, 408                   # 8-byte Folded Reload
	and	$a3, $a7, $a3
	bstrpick.d	$t5, $a3, 31, 0
	slli.d	$a3, $a0, 5
	ld.d	$a7, $sp, 552                   # 8-byte Folded Reload
	add.d	$t3, $a7, $a3
	slli.d	$a7, $t5, 1
	ldx.hu	$t3, $t3, $a7
	srli.d	$t3, $t3, 2
	slli.d	$t6, $a0, 1
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	ldx.hu	$a0, $a0, $t6
	ld.d	$t4, $sp, 520                   # 8-byte Folded Reload
	and	$t3, $t3, $t4
	xori	$t3, $t3, 508
	ldx.w	$t3, $a1, $t3
	srli.d	$a0, $a0, 2
	and	$a0, $a0, $t4
	xori	$a0, $a0, 508
	ldx.w	$t4, $a1, $a0
	add.w	$t8, $t8, $a6
	bgeu	$s8, $t8, .LBB24_441
# %bb.433:                              # %.lr.ph1015.preheader.i
                                        #   in Loop: Header=BB24_377 Depth=2
	bstrpick.d	$a0, $s8, 31, 0
	add.d	$s0, $a2, $fp
	addi.w	$t7, $s0, 0
	st.d	$t7, $sp, 464                   # 8-byte Folded Spill
	bstrpick.d	$t7, $t7, 31, 0
	sub.d	$s5, $t7, $a0
	ori	$t7, $zero, 2
	bgeu	$s5, $t7, .LBB24_435
# %bb.434:                              #   in Loop: Header=BB24_377 Depth=2
	move	$s2, $a0
	b	.LBB24_438
.LBB24_435:                             # %vector.ph624
                                        #   in Loop: Header=BB24_377 Depth=2
	addi.w	$s6, $zero, -2
	and	$s8, $s5, $s6
	add.d	$s2, $s8, $a0
	slli.d	$t7, $a0, 5
	alsl.d	$t7, $a0, $t7, 4
	ld.d	$ra, $sp, 208                   # 8-byte Folded Reload
	add.d	$t7, $ra, $t7
	bstrpick.d	$ra, $s0, 31, 0
	sub.d	$a0, $ra, $a0
	and	$a0, $a0, $s6
	lu12i.w	$s6, 262144
.LBB24_436:                             # %vector.body627
                                        #   Parent Loop BB24_27 Depth=1
                                        #     Parent Loop BB24_377 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$s6, $t7, -48
	st.w	$s6, $t7, 0
	addi.d	$a0, $a0, -2
	addi.d	$t7, $t7, 96
	bnez	$a0, .LBB24_436
# %bb.437:                              # %middle.block631
                                        #   in Loop: Header=BB24_377 Depth=2
	ld.d	$s6, $sp, 360                   # 8-byte Folded Reload
	beq	$s5, $s8, .LBB24_440
.LBB24_438:                             # %.lr.ph1015.i.preheader
                                        #   in Loop: Header=BB24_377 Depth=2
	bstrpick.d	$a0, $s0, 31, 0
	sub.d	$a0, $a0, $s2
	slli.d	$t7, $s2, 5
	alsl.d	$t7, $s2, $t7, 4
	ld.d	$s0, $sp, 320                   # 8-byte Folded Reload
	add.d	$t7, $s0, $t7
	lu12i.w	$s0, 262144
.LBB24_439:                             # %.lr.ph1015.i
                                        #   Parent Loop BB24_27 Depth=1
                                        #     Parent Loop BB24_377 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$s0, $t7, 0
	addi.d	$a0, $a0, -1
	addi.d	$t7, $t7, 48
	bnez	$a0, .LBB24_439
.LBB24_440:                             #   in Loop: Header=BB24_377 Depth=2
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 464                   # 8-byte Folded Reload
.LBB24_441:                             # %._crit_edge.i
                                        #   in Loop: Header=BB24_377 Depth=2
	bstrpick.d	$a0, $t8, 31, 0
	addi.d	$a2, $a2, -3
	bstrpick.d	$a2, $a2, 31, 0
	alsl.d	$t5, $t5, $t5, 4
	slli.d	$t5, $t5, 6
	ld.d	$t7, $sp, 424                   # 8-byte Folded Reload
	add.d	$t5, $t7, $t5
	slli.d	$a2, $a2, 2
	ld.d	$t7, $sp, 456                   # 8-byte Folded Reload
	ldx.hu	$t6, $t7, $t6
	ldx.w	$a2, $t5, $a2
	ld.d	$t5, $sp, 432                   # 8-byte Folded Reload
	add.d	$a3, $t5, $a3
	ldx.hu	$a3, $a3, $a7
	srli.d	$a7, $t6, 2
	ld.d	$t5, $sp, 520                   # 8-byte Folded Reload
	and	$a7, $a7, $t5
	ldx.w	$a7, $a1, $a7
	srli.d	$a3, $a3, 2
	and	$a3, $a3, $t5
	xori	$a3, $a3, 508
	ldx.w	$a3, $a1, $a3
	add.d	$t2, $t3, $t2
	add.d	$t2, $t2, $t4
	slli.d	$t3, $a0, 5
	alsl.d	$a0, $a0, $t3, 4
	ldx.w	$t3, $s1, $a0
	add.d	$a2, $t2, $a2
	add.d	$a2, $a2, $a7
	add.w	$a2, $a2, $a3
	bgeu	$a2, $t3, .LBB24_443
# %bb.442:                              #   in Loop: Header=BB24_377 Depth=2
	add.d	$a0, $s1, $a0
	st.w	$a2, $a0, 0
	st.w	$a6, $a0, 24
	st.w	$zero, $a0, 28
	ori	$t6, $zero, 1
	st.d	$t6, $a0, 8
	b	.LBB24_444
.LBB24_443:                             #   in Loop: Header=BB24_377 Depth=2
	ori	$t6, $zero, 1
.LBB24_444:                             # %.critedge2.thread.i
                                        #   in Loop: Header=BB24_377 Depth=2
	ld.d	$t8, $sp, 304                   # 8-byte Folded Reload
.LBB24_445:                             # %.critedge2.thread.i
                                        #   in Loop: Header=BB24_377 Depth=2
	move	$ra, $zero
	ld.d	$a7, $sp, 416                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a7, 31, 0
	ld.d	$a6, $sp, 504                   # 8-byte Folded Reload
	sltu	$a2, $a6, $a7
	masknez	$a3, $a7, $a2
	maskeqz	$a2, $a6, $a2
	or	$a6, $a2, $a3
	ld.d	$a2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 1
	st.d	$a2, $sp, 400                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 1
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 1
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a4
	alsl.d	$a2, $a5, $a2, 1
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(kRepNextStates)
	addi.d	$a2, $a2, %pc_lo12(kRepNextStates)
	alsl.d	$a2, $a3, $a2, 2
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	sltu	$a2, $a4, $a7
	masknez	$a3, $a7, $a2
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	sltu	$a3, $a2, $a4
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a4, $a3
	or	$a2, $a2, $a3
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	sltu	$a2, $t1, $t0
	masknez	$a3, $t0, $a2
	maskeqz	$a2, $t1, $a2
	or	$a2, $a2, $a3
	st.d	$a2, $sp, 368                   # 8-byte Folded Spill
	sltu	$a2, $a0, $t1
	masknez	$a3, $t1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a3
	sltu	$a2, $a0, $t0
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $t0, $a2
	or	$a0, $a0, $a2
	addi.d	$a0, $a0, -2
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a0, $t8, 1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	alsl.d	$a0, $a5, $a5, 4
	slli.d	$a5, $a0, 6
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a5
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	ori	$t7, $zero, 2
	st.d	$a6, $sp, 464                   # 8-byte Folded Spill
	b	.LBB24_449
.LBB24_446:                             #   in Loop: Header=BB24_449 Depth=3
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	move	$s8, $t8
	ld.d	$t8, $sp, 304                   # 8-byte Folded Reload
.LBB24_447:                             #   in Loop: Header=BB24_449 Depth=3
	ld.d	$a6, $sp, 464                   # 8-byte Folded Reload
.LBB24_448:                             #   in Loop: Header=BB24_449 Depth=3
	addi.d	$ra, $ra, 1
	ori	$a0, $zero, 4
	beq	$ra, $a0, .LBB24_496
.LBB24_449:                             #   Parent Loop BB24_27 Depth=1
                                        #     Parent Loop BB24_377 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB24_453 Depth 4
                                        #         Child Loop BB24_460 Depth 4
                                        #         Child Loop BB24_463 Depth 4
                                        #         Child Loop BB24_472 Depth 4
                                        #         Child Loop BB24_476 Depth 4
                                        #         Child Loop BB24_481 Depth 4
                                        #         Child Loop BB24_487 Depth 4
                                        #         Child Loop BB24_491 Depth 4
	slli.d	$a0, $ra, 2
	addi.d	$a2, $sp, 616
	ldx.w	$a0, $a0, $a2
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a2, $sp, 576                   # 8-byte Folded Reload
	sub.d	$t0, $a2, $a0
	ld.bu	$a2, $a2, 0
	ld.bu	$a3, $t0, 0
	bne	$a2, $a3, .LBB24_448
# %bb.450:                              #   in Loop: Header=BB24_449 Depth=3
	ld.bu	$a2, $t8, 0
	ld.bu	$a3, $t0, 1
	bne	$a2, $a3, .LBB24_448
# %bb.451:                              # %.preheader.i235
                                        #   in Loop: Header=BB24_449 Depth=3
	sub.d	$a2, $zero, $a0
	ori	$t1, $zero, 2
	ori	$a0, $zero, 3
	bltu	$a6, $a0, .LBB24_456
# %bb.452:                              # %.lr.ph1018.i.preheader
                                        #   in Loop: Header=BB24_449 Depth=3
	ori	$t1, $zero, 2
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB24_453:                             # %.lr.ph1018.i
                                        #   Parent Loop BB24_27 Depth=1
                                        #     Parent Loop BB24_377 Depth=2
                                        #       Parent Loop BB24_449 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$a4, $a3, 0
	ldx.bu	$a6, $a3, $a2
	bne	$a4, $a6, .LBB24_456
# %bb.454:                              #   in Loop: Header=BB24_453 Depth=4
	addi.w	$t1, $t1, 1
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 1
	bnez	$a0, .LBB24_453
# %bb.455:                              #   in Loop: Header=BB24_449 Depth=3
	ld.d	$t1, $sp, 72                    # 8-byte Folded Reload
.LBB24_456:                             # %.critedge4.i
                                        #   in Loop: Header=BB24_449 Depth=3
	add.w	$s0, $t1, $fp
	bgeu	$s8, $s0, .LBB24_465
# %bb.457:                              # %.lr.ph1023.preheader.i
                                        #   in Loop: Header=BB24_449 Depth=3
	bstrpick.d	$a0, $s8, 31, 0
	bstrpick.d	$a3, $s0, 31, 0
	sub.d	$a6, $a3, $a0
	add.d	$a3, $fp, $t1
	ori	$a4, $zero, 2
	bgeu	$a6, $a4, .LBB24_459
# %bb.458:                              #   in Loop: Header=BB24_449 Depth=3
	move	$a4, $a0
	b	.LBB24_462
.LBB24_459:                             # %vector.ph612
                                        #   in Loop: Header=BB24_449 Depth=3
	addi.w	$t3, $zero, -2
	and	$a7, $a6, $t3
	add.d	$a4, $a7, $a0
	slli.d	$t2, $a0, 5
	alsl.d	$t2, $a0, $t2, 4
	ld.d	$t4, $sp, 208                   # 8-byte Folded Reload
	add.d	$t2, $t4, $t2
	bstrpick.d	$t4, $a3, 31, 0
	sub.d	$a0, $t4, $a0
	and	$a0, $a0, $t3
	lu12i.w	$t3, 262144
	.p2align	4, , 16
.LBB24_460:                             # %vector.body615
                                        #   Parent Loop BB24_27 Depth=1
                                        #     Parent Loop BB24_377 Depth=2
                                        #       Parent Loop BB24_449 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.w	$t3, $t2, -48
	st.w	$t3, $t2, 0
	addi.d	$a0, $a0, -2
	addi.d	$t2, $t2, 96
	bnez	$a0, .LBB24_460
# %bb.461:                              # %middle.block619
                                        #   in Loop: Header=BB24_449 Depth=3
	move	$s8, $s0
	beq	$a6, $a7, .LBB24_465
.LBB24_462:                             # %.lr.ph1023.i.preheader
                                        #   in Loop: Header=BB24_449 Depth=3
	bstrpick.d	$a0, $a3, 31, 0
	sub.d	$a0, $a0, $a4
	slli.d	$a3, $a4, 5
	alsl.d	$a3, $a4, $a3, 4
	ld.d	$a4, $sp, 320                   # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	lu12i.w	$a4, 262144
	.p2align	4, , 16
.LBB24_463:                             # %.lr.ph1023.i
                                        #   Parent Loop BB24_27 Depth=1
                                        #     Parent Loop BB24_377 Depth=2
                                        #       Parent Loop BB24_449 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.w	$a4, $a3, 0
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 48
	bnez	$a0, .LBB24_463
# %bb.464:                              #   in Loop: Header=BB24_449 Depth=3
	move	$s8, $s0
.LBB24_465:                             # %._crit_edge1024.i
                                        #   in Loop: Header=BB24_449 Depth=3
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.hu	$a0, $a0, 0
	srli.d	$a0, $a0, 4
	beqz	$ra, .LBB24_468
# %bb.466:                              #   in Loop: Header=BB24_449 Depth=3
	xori	$a0, $a0, 127
	slli.d	$a0, $a0, 2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	ld.hu	$a4, $a3, 0
	ldx.w	$a3, $a1, $a0
	srli.d	$a0, $a4, 4
	bne	$ra, $t6, .LBB24_469
# %bb.467:                              #   in Loop: Header=BB24_449 Depth=3
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a0, $a3
	b	.LBB24_470
.LBB24_468:                             #   in Loop: Header=BB24_449 Depth=3
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.hu	$a3, $a3, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	srli.d	$a3, $a3, 2
	ld.d	$a4, $sp, 520                   # 8-byte Folded Reload
	and	$a3, $a3, $a4
	xori	$a3, $a3, 508
	ldx.w	$a3, $a1, $a3
	add.d	$a0, $a3, $a0
	b	.LBB24_470
.LBB24_469:                             #   in Loop: Header=BB24_449 Depth=3
	xori	$a0, $a0, 127
	slli.d	$a0, $a0, 2
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	ld.h	$a4, $a4, 0
	ldx.w	$a0, $a1, $a0
	ori	$a6, $zero, 2
	sub.d	$a6, $a6, $ra
	andi	$a6, $a6, 2032
	xor	$a4, $a6, $a4
	srli.d	$a4, $a4, 2
	ld.d	$a6, $sp, 520                   # 8-byte Folded Reload
	and	$a4, $a4, $a6
	ldx.w	$a4, $a1, $a4
	add.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a4
.LBB24_470:                             # %GetPureRepPrice.exit884.i
                                        #   in Loop: Header=BB24_449 Depth=3
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	add.d	$t2, $a0, $a3
	bstrpick.d	$t5, $t1, 31, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a3, $t5, $a0, 2
	move	$a4, $t1
	b	.LBB24_472
	.p2align	4, , 16
.LBB24_471:                             #   in Loop: Header=BB24_472 Depth=4
	addi.w	$a4, $a4, -1
	addi.d	$a3, $a3, -4
	bgeu	$t6, $a4, .LBB24_474
.LBB24_472:                             #   Parent Loop BB24_27 Depth=1
                                        #     Parent Loop BB24_377 Depth=2
                                        #       Parent Loop BB24_449 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a6, $a3, 0
	add.d	$a0, $fp, $a4
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a7, $a0, 5
	alsl.d	$a0, $a0, $a7, 4
	ldx.w	$a7, $s1, $a0
	add.w	$a6, $a6, $t2
	bgeu	$a6, $a7, .LBB24_471
# %bb.473:                              #   in Loop: Header=BB24_472 Depth=4
	add.d	$a0, $s1, $a0
	st.w	$a6, $a0, 0
	st.w	$fp, $a0, 24
	st.w	$ra, $a0, 28
	st.w	$zero, $a0, 8
	b	.LBB24_471
	.p2align	4, , 16
.LBB24_474:                             #   in Loop: Header=BB24_449 Depth=3
	addi.w	$a3, $t1, 1
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	add.w	$a0, $a3, $a0
	ld.d	$a7, $sp, 504                   # 8-byte Folded Reload
	sltu	$a4, $a0, $a7
	maskeqz	$a6, $a0, $a4
	masknez	$a4, $a7, $a4
	or	$a4, $a6, $a4
	move	$a7, $a3
	bgeu	$a3, $a4, .LBB24_479
# %bb.475:                              # %.lr.ph1029.preheader.i
                                        #   in Loop: Header=BB24_449 Depth=3
	bstrpick.d	$a7, $a3, 31, 0
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a6, $sp, 368                   # 8-byte Folded Reload
	sltu	$a4, $a6, $a0
	masknez	$a0, $a0, $a4
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $a0
	sub.d	$a6, $a4, $a7
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	add.d	$t3, $a0, $a7
	move	$a7, $a3
	.p2align	4, , 16
.LBB24_476:                             # %.lr.ph1029.i
                                        #   Parent Loop BB24_27 Depth=1
                                        #     Parent Loop BB24_377 Depth=2
                                        #       Parent Loop BB24_449 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$a0, $t3, 0
	ldx.bu	$t4, $t3, $a2
	bne	$a0, $t4, .LBB24_479
# %bb.477:                              #   in Loop: Header=BB24_476 Depth=4
	addi.w	$a7, $a7, 1
	addi.d	$a6, $a6, -1
	addi.d	$t3, $t3, 1
	bnez	$a6, .LBB24_476
# %bb.478:                              #   in Loop: Header=BB24_449 Depth=3
	move	$a7, $a4
.LBB24_479:                             # %.critedge6.i
                                        #   in Loop: Header=BB24_449 Depth=3
	sltui	$a0, $ra, 1
	masknez	$a4, $t7, $a0
	maskeqz	$a0, $a3, $a0
	sub.w	$a2, $a7, $a3
	or	$t7, $a0, $a4
	ori	$a0, $zero, 2
	bltu	$a2, $a0, .LBB24_447
# %bb.480:                              #   in Loop: Header=BB24_449 Depth=3
	move	$t8, $s8
	move	$t4, $zero
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.wu	$a4, $a0, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	add.d	$a0, $t1, $a0
	addi.w	$a3, $a0, 0
	ld.d	$a6, $sp, 408                   # 8-byte Folded Reload
	and	$a0, $a0, $a6
	addi.d	$a6, $t1, -2
	bstrpick.d	$a6, $a6, 31, 0
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$t3, $a4, 5
	ld.d	$t6, $sp, 552                   # 8-byte Folded Reload
	add.d	$t3, $t6, $t3
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $t3, $a0
	ld.d	$t3, $sp, 424                   # 8-byte Folded Reload
	add.d	$t3, $t3, $a5
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $t3, $a6
	st.d	$a6, $sp, 280                   # 8-byte Folded Spill
	srli.d	$a0, $a0, 2
	ld.d	$t6, $sp, 520                   # 8-byte Folded Reload
	and	$a0, $a0, $t6
	addi.d	$a6, $t1, -1
	bstrpick.d	$a6, $a6, 31, 0
	ld.d	$t1, $sp, 576                   # 8-byte Folded Reload
	ldx.bu	$a6, $t1, $a6
	ldx.w	$a0, $a1, $a0
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	and	$a0, $a3, $a0
	ld.d	$t3, $sp, 192                   # 8-byte Folded Reload
	sll.w	$a0, $a0, $t3
	ld.d	$t3, $sp, 184                   # 8-byte Folded Reload
	srl.w	$a6, $a6, $t3
	add.d	$a0, $a6, $a0
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 8
	bstrpick.d	$a0, $a0, 31, 8
	ldx.bu	$a6, $t1, $t5
	slli.d	$a0, $a0, 9
	ldx.bu	$t0, $t0, $t5
	ld.d	$t1, $sp, 384                   # 8-byte Folded Reload
	add.d	$t3, $t1, $a0
	addi.d	$s2, $a6, 256
	ori	$t5, $zero, 256
	.p2align	4, , 16
.LBB24_481:                             #   Parent Loop BB24_27 Depth=1
                                        #     Parent Loop BB24_377 Depth=2
                                        #       Parent Loop BB24_449 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$t0, $t0, 1
	and	$a0, $t5, $t0
	bstrpick.d	$a6, $s2, 31, 8
	add.d	$a6, $t5, $a6
	add.w	$a0, $a6, $a0
	slli.d	$a0, $a0, 1
	ldx.h	$a0, $t3, $a0
	slli.d	$a6, $s2, 56
	srai.d	$a6, $a6, 63
	andi	$a6, $a6, 2032
	xor	$a0, $a6, $a0
	srli.d	$a0, $a0, 2
	and	$a0, $a0, $t6
	ldx.w	$a0, $a1, $a0
	add.d	$t4, $a0, $t4
	bstrpick.d	$a0, $s2, 31, 15
	slli.d	$s2, $s2, 1
	xor	$a6, $t0, $s2
	andn	$t5, $t5, $a6
	beqz	$a0, .LBB24_481
# %bb.482:                              # %LitEnc_GetPriceMatched.exit891.i
                                        #   in Loop: Header=BB24_449 Depth=3
	slli.d	$a0, $a4, 2
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	ldx.wu	$a0, $a1, $a0
	ld.d	$a1, $sp, 536                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	ld.d	$a4, $sp, 408                   # 8-byte Folded Reload
	and	$a3, $a3, $a4
	bstrpick.d	$s8, $a3, 31, 0
	slli.d	$a4, $a0, 5
	ld.d	$a3, $sp, 552                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a4
	slli.d	$t5, $s8, 1
	ldx.hu	$a3, $a3, $t5
	srli.d	$a3, $a3, 2
	slli.d	$s2, $a0, 1
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	ldx.hu	$a0, $a0, $s2
	and	$a3, $a3, $t6
	xori	$a3, $a3, 508
	ldx.w	$a3, $a1, $a3
	srli.d	$a0, $a0, 2
	and	$a0, $a0, $t6
	xori	$a0, $a0, 508
	ldx.w	$t3, $a1, $a0
	addi.d	$t0, $s0, 1
	add.w	$s0, $a2, $t0
	bgeu	$t8, $s0, .LBB24_485
# %bb.483:                              # %.lr.ph1034.preheader.i
                                        #   in Loop: Header=BB24_449 Depth=3
	st.d	$t7, $sp, 544                   # 8-byte Folded Spill
	bstrpick.d	$a6, $t8, 31, 0
	add.d	$a7, $fp, $a7
	addi.w	$a0, $a7, 0
	move	$t8, $a0
	bstrpick.d	$a0, $a0, 31, 0
	sub.d	$s5, $a0, $a6
	ori	$a0, $zero, 2
	bgeu	$s5, $a0, .LBB24_486
# %bb.484:                              #   in Loop: Header=BB24_449 Depth=3
	move	$a0, $a6
	b	.LBB24_490
.LBB24_485:                             #   in Loop: Header=BB24_449 Depth=3
	ori	$t6, $zero, 1
	b	.LBB24_494
.LBB24_486:                             # %vector.ph600
                                        #   in Loop: Header=BB24_449 Depth=3
	addi.w	$s6, $zero, -2
	and	$t7, $s5, $s6
	add.d	$a0, $t7, $a6
	slli.d	$t6, $a6, 5
	alsl.d	$t6, $a6, $t6, 4
	ld.d	$t1, $sp, 208                   # 8-byte Folded Reload
	add.d	$t6, $t1, $t6
	bstrpick.d	$t1, $a7, 31, 0
	sub.d	$a6, $t1, $a6
	and	$a6, $a6, $s6
	lu12i.w	$t1, 262144
	.p2align	4, , 16
.LBB24_487:                             # %vector.body603
                                        #   Parent Loop BB24_27 Depth=1
                                        #     Parent Loop BB24_377 Depth=2
                                        #       Parent Loop BB24_449 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.w	$t1, $t6, -48
	st.w	$t1, $t6, 0
	addi.d	$a6, $a6, -2
	addi.d	$t6, $t6, 96
	bnez	$a6, .LBB24_487
# %bb.488:                              # %middle.block607
                                        #   in Loop: Header=BB24_449 Depth=3
	ld.d	$s6, $sp, 360                   # 8-byte Folded Reload
	bne	$s5, $t7, .LBB24_490
# %bb.489:                              #   in Loop: Header=BB24_449 Depth=3
	ld.d	$s5, $sp, 560                   # 8-byte Folded Reload
	ori	$t6, $zero, 1
	b	.LBB24_493
.LBB24_490:                             # %.lr.ph1034.i.preheader
                                        #   in Loop: Header=BB24_449 Depth=3
	bstrpick.d	$a6, $a7, 31, 0
	sub.d	$a6, $a6, $a0
	slli.d	$a7, $a0, 5
	alsl.d	$a0, $a0, $a7, 4
	ld.d	$a7, $sp, 320                   # 8-byte Folded Reload
	add.d	$a0, $a7, $a0
	lu12i.w	$a7, 262144
	ori	$t6, $zero, 1
	.p2align	4, , 16
.LBB24_491:                             # %.lr.ph1034.i
                                        #   Parent Loop BB24_27 Depth=1
                                        #     Parent Loop BB24_377 Depth=2
                                        #       Parent Loop BB24_449 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.w	$a7, $a0, 0
	addi.d	$a6, $a6, -1
	addi.d	$a0, $a0, 48
	bnez	$a6, .LBB24_491
# %bb.492:                              #   in Loop: Header=BB24_449 Depth=3
	ld.d	$s5, $sp, 560                   # 8-byte Folded Reload
.LBB24_493:                             # %._crit_edge1035.i
                                        #   in Loop: Header=BB24_449 Depth=3
	ld.d	$t7, $sp, 544                   # 8-byte Folded Reload
.LBB24_494:                             # %._crit_edge1035.i
                                        #   in Loop: Header=BB24_449 Depth=3
	bstrpick.d	$a0, $s0, 31, 0
	addi.d	$a2, $a2, -2
	bstrpick.d	$a2, $a2, 31, 0
	alsl.d	$a6, $s8, $s8, 4
	slli.d	$a6, $a6, 6
	ld.d	$a7, $sp, 424                   # 8-byte Folded Reload
	add.d	$a6, $a7, $a6
	slli.d	$a2, $a2, 2
	ld.d	$a7, $sp, 456                   # 8-byte Folded Reload
	ldx.hu	$a7, $a7, $s2
	ldx.w	$a2, $a6, $a2
	ld.d	$a6, $sp, 432                   # 8-byte Folded Reload
	add.d	$a4, $a6, $a4
	ldx.hu	$a4, $a4, $t5
	srli.d	$a6, $a7, 2
	ld.d	$a7, $sp, 520                   # 8-byte Folded Reload
	and	$a6, $a6, $a7
	ldx.w	$a6, $a1, $a6
	srli.d	$a4, $a4, 2
	and	$a4, $a4, $a7
	xori	$a4, $a4, 508
	ldx.w	$a4, $a1, $a4
	ld.d	$a7, $sp, 280                   # 8-byte Folded Reload
	add.d	$a7, $a7, $t2
	ld.d	$t1, $sp, 272                   # 8-byte Folded Reload
	add.d	$a7, $a7, $t1
	add.d	$a7, $a7, $t4
	add.d	$a3, $a7, $a3
	add.d	$a3, $a3, $t3
	slli.d	$a7, $a0, 5
	alsl.d	$a0, $a0, $a7, 4
	ldx.w	$a7, $s1, $a0
	add.d	$a2, $a3, $a2
	add.d	$a2, $a2, $a6
	add.w	$a2, $a2, $a4
	bgeu	$a2, $a7, .LBB24_446
# %bb.495:                              #   in Loop: Header=BB24_449 Depth=3
	add.d	$a0, $s1, $a0
	st.w	$a2, $a0, 0
	st.w	$t0, $a0, 24
	st.w	$zero, $a0, 28
	ori	$a2, $zero, 1
	lu32i.d	$a2, 1
	st.d	$a2, $a0, 8
	st.w	$fp, $a0, 16
	st.w	$ra, $a0, 20
	b	.LBB24_446
.LBB24_496:                             #   in Loop: Header=BB24_377 Depth=2
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	move	$a2, $a4
	ld.d	$ra, $sp, 352                   # 8-byte Folded Reload
	bgeu	$a6, $a4, .LBB24_500
# %bb.497:                              # %.preheader970.i.preheader
                                        #   in Loop: Header=BB24_377 Depth=2
	move	$ra, $zero
	.p2align	4, , 16
.LBB24_498:                             # %.preheader970.i
                                        #   Parent Loop BB24_27 Depth=1
                                        #     Parent Loop BB24_377 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$a0, $ra, 31, 0
	slli.d	$a2, $a0, 2
	ldx.w	$a2, $s5, $a2
	addi.w	$ra, $ra, 2
	bltu	$a2, $a6, .LBB24_498
# %bb.499:                              #   in Loop: Header=BB24_377 Depth=2
	alsl.d	$a0, $a0, $s5, 2
	st.w	$a6, $a0, 0
	move	$a2, $a6
.LBB24_500:                             #   in Loop: Header=BB24_377 Depth=2
	bltu	$a2, $t7, .LBB24_376
# %bb.501:                              #   in Loop: Header=BB24_377 Depth=2
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	add.w	$a2, $a2, $fp
	bgeu	$s8, $a2, .LBB24_504
# %bb.502:                              # %.lr.ph1043.preheader.i
                                        #   in Loop: Header=BB24_377 Depth=2
	bstrpick.d	$a6, $s8, 31, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	sltu	$a2, $a4, $a1
	masknez	$a3, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	sltu	$a3, $a2, $a1
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a1, $a3
	or	$a2, $a2, $a3
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	sltu	$a3, $a2, $a1
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a1, $a3
	or	$a2, $a2, $a3
	add.d	$a2, $a2, $fp
	addi.w	$s8, $a2, 0
	bstrpick.d	$a3, $s8, 31, 0
	sub.d	$a4, $a3, $a6
	ori	$a1, $zero, 2
	bgeu	$a4, $a1, .LBB24_505
# %bb.503:                              #   in Loop: Header=BB24_377 Depth=2
	move	$a3, $a6
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	b	.LBB24_508
.LBB24_504:                             #   in Loop: Header=BB24_377 Depth=2
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	b	.LBB24_510
.LBB24_505:                             # %vector.ph588
                                        #   in Loop: Header=BB24_377 Depth=2
	addi.w	$t1, $zero, -2
	and	$a7, $a4, $t1
	add.d	$a3, $a7, $a6
	slli.d	$t0, $a6, 5
	alsl.d	$t0, $a6, $t0, 4
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	add.d	$t0, $a1, $t0
	bstrpick.d	$t2, $a2, 31, 0
	sub.d	$a6, $t2, $a6
	and	$a6, $a6, $t1
	lu12i.w	$a1, 262144
.LBB24_506:                             # %vector.body591
                                        #   Parent Loop BB24_27 Depth=1
                                        #     Parent Loop BB24_377 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$a1, $t0, -48
	st.w	$a1, $t0, 0
	addi.d	$a6, $a6, -2
	addi.d	$t0, $t0, 96
	bnez	$a6, .LBB24_506
# %bb.507:                              # %middle.block595
                                        #   in Loop: Header=BB24_377 Depth=2
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	beq	$a4, $a7, .LBB24_510
.LBB24_508:                             # %.lr.ph1043.i.preheader
                                        #   in Loop: Header=BB24_377 Depth=2
	bstrpick.d	$a2, $a2, 31, 0
	sub.d	$a2, $a2, $a3
	slli.d	$a4, $a3, 5
	alsl.d	$a3, $a3, $a4, 4
	ld.d	$a4, $sp, 320                   # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	lu12i.w	$a4, 262144
	.p2align	4, , 16
.LBB24_509:                             # %.lr.ph1043.i
                                        #   Parent Loop BB24_27 Depth=1
                                        #     Parent Loop BB24_377 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 48
	bnez	$a2, .LBB24_509
.LBB24_510:                             # %.preheader969.i
                                        #   in Loop: Header=BB24_377 Depth=2
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	addi.d	$a3, $zero, -2
	.p2align	4, , 16
.LBB24_511:                             #   Parent Loop BB24_27 Depth=1
                                        #     Parent Loop BB24_377 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$a3, $a3, 2
	bstrpick.d	$a2, $a3, 31, 0
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $s5, $a2
	bltu	$a2, $t7, .LBB24_511
# %bb.512:                              #   in Loop: Header=BB24_377 Depth=2
	addi.d	$a2, $a3, 1
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 2
	ldx.w	$s0, $s5, $a2
	addu16i.d	$a2, $s0, -8
	addi.w	$a2, $a2, 0
	slti	$a2, $a2, 0
	ori	$a4, $zero, 18
	masknez	$a4, $a4, $a2
	ori	$a6, $zero, 6
	maskeqz	$a2, $a6, $a2
	or	$a2, $a2, $a4
	srl.w	$a4, $s0, $a2
	bstrpick.d	$a4, $a4, 31, 0
	ld.d	$a6, $sp, 312                   # 8-byte Folded Reload
	ldx.bu	$a4, $a6, $a4
	alsl.d	$a4, $a2, $a4, 1
	ld.w	$a2, $s6, 0
	st.d	$a2, $sp, 472                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(kMatchNextStates)
	addi.d	$a2, $a2, %pc_lo12(kMatchNextStates)
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a2, $a6, $a2, 2
	st.d	$a2, $sp, 304                   # 8-byte Folded Spill
	move	$a2, $t7
	st.d	$ra, $sp, 352                   # 8-byte Folded Spill
.LBB24_513:                             # %.thread932.i.outer.outer
                                        #   Parent Loop BB24_27 Depth=1
                                        #     Parent Loop BB24_377 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB24_514 Depth 4
                                        #           Child Loop BB24_516 Depth 5
                                        #           Child Loop BB24_523 Depth 5
                                        #           Child Loop BB24_528 Depth 5
                                        #           Child Loop BB24_535 Depth 5
                                        #           Child Loop BB24_538 Depth 5
	addi.w	$a4, $a4, 0
	slli.d	$t1, $a4, 2
	move	$t2, $a3
	.p2align	4, , 16
.LBB24_514:                             # %.thread932.i.outer
                                        #   Parent Loop BB24_27 Depth=1
                                        #     Parent Loop BB24_377 Depth=2
                                        #       Parent Loop BB24_513 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB24_516 Depth 5
                                        #           Child Loop BB24_523 Depth 5
                                        #           Child Loop BB24_528 Depth 5
                                        #           Child Loop BB24_535 Depth 5
                                        #           Child Loop BB24_538 Depth 5
	st.d	$t7, $sp, 544                   # 8-byte Folded Spill
	move	$t3, $zero
	andi	$a3, $s0, 15
	ld.d	$a4, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$a4, $a3, $a4, 2
	addi.d	$t4, $s0, 4
	bstrpick.d	$a3, $t2, 31, 0
	alsl.d	$a7, $a3, $s5, 2
	addi.w	$t0, $a2, 1
	addi.d	$t5, $a2, -1
	ld.d	$a3, $sp, 480                   # 8-byte Folded Reload
	add.w	$t8, $a3, $a2
	slli.d	$t6, $s0, 2
	move	$a6, $t0
	b	.LBB24_516
	.p2align	4, , 16
.LBB24_515:                             #   in Loop: Header=BB24_516 Depth=5
	ld.w	$s2, $a7, 0
	addi.w	$t3, $t3, 1
	add.w	$s5, $t5, $t3
	addi.w	$a6, $a3, 1
	beq	$s5, $s2, .LBB24_521
.LBB24_516:                             # %.thread932.i
                                        #   Parent Loop BB24_27 Depth=1
                                        #     Parent Loop BB24_377 Depth=2
                                        #       Parent Loop BB24_513 Depth=3
                                        #         Parent Loop BB24_514 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	move	$a3, $a6
	add.w	$t7, $a2, $t3
	add.d	$a6, $t0, $t3
	addi.w	$s2, $a6, -3
	bstrpick.d	$a6, $s2, 31, 0
	add.d	$s5, $a1, $a5
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $s5, $a6
	sltui	$t7, $t7, 5
	maskeqz	$s2, $s2, $t7
	ori	$s5, $zero, 3
	masknez	$t7, $s5, $t7
	or	$t7, $s2, $t7
	bstrpick.d	$t7, $t7, 31, 0
	ori	$s2, $zero, 127
	bltu	$s2, $s0, .LBB24_518
# %bb.517:                              #   in Loop: Header=BB24_516 Depth=5
	slli.d	$t7, $t7, 9
	ld.d	$s2, $sp, 584                   # 8-byte Folded Reload
	add.d	$t7, $s2, $t7
	ldx.w	$t7, $t7, $t6
	b	.LBB24_519
	.p2align	4, , 16
.LBB24_518:                             #   in Loop: Header=BB24_516 Depth=5
	slli.d	$t7, $t7, 8
	ld.d	$s2, $sp, 592                   # 8-byte Folded Reload
	add.d	$t7, $s2, $t7
	ldx.w	$t7, $t7, $t1
	ld.w	$s2, $a4, 0
	add.d	$t7, $s2, $t7
.LBB24_519:                             #   in Loop: Header=BB24_516 Depth=5
	add.d	$s2, $t8, $t3
	addi.d	$s2, $s2, 1
	bstrpick.d	$s2, $s2, 31, 0
	slli.d	$s5, $s2, 5
	alsl.d	$s2, $s2, $s5, 4
	ldx.w	$s5, $s1, $s2
	add.d	$a6, $a0, $a6
	add.w	$t7, $a6, $t7
	bgeu	$t7, $s5, .LBB24_515
# %bb.520:                              #   in Loop: Header=BB24_516 Depth=5
	add.d	$a6, $s1, $s2
	st.w	$t7, $a6, 0
	st.w	$fp, $a6, 24
	st.w	$t4, $a6, 28
	st.w	$zero, $a6, 8
	b	.LBB24_515
	.p2align	4, , 16
.LBB24_521:                             #   in Loop: Header=BB24_514 Depth=4
	add.d	$t5, $a2, $t3
	addi.w	$t6, $t5, 0
	addi.d	$a4, $s0, 1
	bstrpick.d	$a4, $a4, 31, 0
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	add.w	$a6, $t5, $a1
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	sltu	$a7, $a6, $a1
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $a1, $a7
	or	$a7, $a6, $a7
	ld.d	$a1, $sp, 576                   # 8-byte Folded Reload
	sub.d	$a4, $a1, $a4
	move	$s5, $t6
	bgeu	$t6, $a7, .LBB24_526
# %bb.522:                              # %.lr.ph1047.preheader.i
                                        #   in Loop: Header=BB24_514 Depth=4
	bstrpick.d	$a6, $t6, 31, 0
	bstrpick.d	$a7, $a7, 31, 0
	ld.d	$t0, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	add.d	$t0, $s0, $t0
	add.d	$t0, $t0, $t3
	bstrpick.d	$t0, $t0, 31, 0
	ld.d	$s2, $sp, 368                   # 8-byte Folded Reload
	sltu	$s0, $s2, $t0
	masknez	$t0, $t0, $s0
	maskeqz	$s0, $s2, $s0
	or	$s5, $s0, $t0
	.p2align	4, , 16
.LBB24_523:                             # %.lr.ph1047.i
                                        #   Parent Loop BB24_27 Depth=1
                                        #     Parent Loop BB24_377 Depth=2
                                        #       Parent Loop BB24_513 Depth=3
                                        #         Parent Loop BB24_514 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ldx.bu	$t0, $a1, $a6
	ldx.bu	$s0, $a4, $a6
	bne	$t0, $s0, .LBB24_525
# %bb.524:                              #   in Loop: Header=BB24_523 Depth=5
	addi.d	$a6, $a6, 1
	addi.w	$a3, $a3, 1
	bltu	$a6, $a7, .LBB24_523
	b	.LBB24_526
.LBB24_525:                             #   in Loop: Header=BB24_514 Depth=4
	move	$s5, $a3
.LBB24_526:                             # %.critedge8.i
                                        #   in Loop: Header=BB24_514 Depth=4
	sub.d	$a2, $s5, $a2
	sub.d	$a2, $a2, $t3
	addi.w	$t0, $a2, 0
	ori	$a1, $zero, 2
	bltu	$t0, $a1, .LBB24_532
# %bb.527:                              #   in Loop: Header=BB24_514 Depth=4
	st.d	$a2, $sp, 416                   # 8-byte Folded Spill
	st.d	$s8, $sp, 464                   # 8-byte Folded Spill
	ori	$a1, $zero, 3188
	ldx.w	$a3, $s6, $a1
	move	$s0, $zero
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.wu	$s2, $a1, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	add.w	$a6, $t5, $a1
	and	$a7, $a3, $a6
	move	$a1, $s6
	bstrpick.d	$s6, $a7, 31, 0
	slli.d	$s6, $s6, 1
	slli.d	$s8, $s2, 5
	ld.d	$s3, $sp, 552                   # 8-byte Folded Reload
	add.d	$s8, $s3, $s8
	ldx.hu	$s6, $s8, $s6
	ori	$s3, $zero, 3184
	ldx.w	$s8, $a1, $s3
	ori	$s3, $zero, 3172
	ldx.wu	$ra, $a1, $s3
	addi.d	$s3, $t5, -2
	bstrpick.d	$s3, $s3, 31, 0
	ld.d	$a2, $sp, 576                   # 8-byte Folded Reload
	ldx.bu	$s3, $a2, $s3
	and	$a6, $s8, $a6
	sll.w	$a6, $a6, $ra
	ori	$a1, $zero, 8
	sub.d	$s8, $a1, $ra
	srl.w	$s3, $s3, $s8
	addi.w	$s8, $t5, -1
	srli.d	$s6, $s6, 2
	ld.d	$s4, $sp, 520                   # 8-byte Folded Reload
	and	$s6, $s6, $s4
	ld.d	$a1, $sp, 536                   # 8-byte Folded Reload
	ldx.w	$s6, $a1, $s6
	st.d	$s6, $sp, 408                   # 8-byte Folded Spill
	add.d	$a6, $s3, $a6
	alsl.d	$a6, $a6, $a6, 1
	slli.d	$a6, $a6, 8
	bstrpick.d	$a6, $a6, 31, 8
	bstrpick.d	$s3, $s8, 31, 0
	ldx.bu	$s6, $a2, $s3
	slli.d	$a6, $a6, 9
	ldx.bu	$a4, $a4, $s3
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	add.d	$s8, $a2, $a6
	addi.d	$a6, $s6, 256
	ori	$ra, $zero, 256
	.p2align	4, , 16
.LBB24_528:                             #   Parent Loop BB24_27 Depth=1
                                        #     Parent Loop BB24_377 Depth=2
                                        #       Parent Loop BB24_513 Depth=3
                                        #         Parent Loop BB24_514 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	slli.d	$a4, $a4, 1
	and	$s3, $ra, $a4
	bstrpick.d	$s6, $a6, 31, 8
	add.d	$s6, $ra, $s6
	add.w	$s3, $s6, $s3
	slli.d	$s3, $s3, 1
	ldx.h	$s3, $s8, $s3
	slli.d	$s6, $a6, 56
	srai.d	$s6, $s6, 63
	andi	$s6, $s6, 2032
	xor	$s3, $s6, $s3
	srli.d	$s3, $s3, 2
	and	$s3, $s3, $s4
	ldx.w	$s3, $a1, $s3
	add.d	$s0, $s3, $s0
	bstrpick.d	$s3, $a6, 31, 15
	slli.d	$a6, $a6, 1
	xor	$s6, $a4, $a6
	andn	$ra, $ra, $s6
	beqz	$s3, .LBB24_528
# %bb.529:                              # %LitEnc_GetPriceMatched.exit898.i
                                        #   in Loop: Header=BB24_514 Depth=4
	slli.d	$a4, $s2, 2
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	ldx.wu	$a4, $a1, $a4
	ld.d	$a1, $sp, 536                   # 8-byte Folded Reload
	addi.d	$a6, $a7, 1
	and	$a3, $a6, $a3
	bstrpick.d	$ra, $a3, 31, 0
	slli.d	$a3, $a4, 5
	ld.d	$a6, $sp, 552                   # 8-byte Folded Reload
	add.d	$a6, $a6, $a3
	slli.d	$a7, $ra, 1
	ldx.hu	$a6, $a6, $a7
	srli.d	$a6, $a6, 2
	slli.d	$s2, $a4, 1
	ld.d	$a4, $sp, 496                   # 8-byte Folded Reload
	ldx.hu	$a4, $a4, $s2
	and	$a6, $a6, $s4
	xori	$a6, $a6, 508
	ldx.w	$a2, $a1, $a6
	st.d	$a2, $sp, 400                   # 8-byte Folded Spill
	srli.d	$a4, $a4, 2
	and	$a4, $a4, $s4
	xori	$a4, $a4, 508
	ldx.w	$a1, $a1, $a4
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	add.d	$a4, $t8, $t3
	addi.d	$t8, $a4, 1
	add.w	$t0, $t0, $t8
	ld.d	$s8, $sp, 464                   # 8-byte Folded Reload
	bgeu	$s8, $t0, .LBB24_533
# %bb.530:                              # %.lr.ph1052.preheader.i
                                        #   in Loop: Header=BB24_514 Depth=4
	bstrpick.d	$a6, $s8, 31, 0
	add.d	$s5, $fp, $s5
	addi.w	$s8, $s5, 0
	bstrpick.d	$a4, $s8, 31, 0
	sub.d	$a4, $a4, $a6
	ori	$a1, $zero, 2
	bgeu	$a4, $a1, .LBB24_534
# %bb.531:                              #   in Loop: Header=BB24_514 Depth=4
	move	$s6, $a6
	ld.d	$s3, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 416                   # 8-byte Folded Reload
	b	.LBB24_537
	.p2align	4, , 16
.LBB24_532:                             #   in Loop: Header=BB24_514 Depth=4
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 560                   # 8-byte Folded Reload
	b	.LBB24_543
.LBB24_533:                             #   in Loop: Header=BB24_514 Depth=4
	ld.d	$s3, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 416                   # 8-byte Folded Reload
	b	.LBB24_540
.LBB24_534:                             # %vector.ph
                                        #   in Loop: Header=BB24_514 Depth=4
	st.d	$s8, $sp, 464                   # 8-byte Folded Spill
	addi.w	$s3, $zero, -2
	and	$a1, $a4, $s3
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	add.d	$s6, $a1, $a6
	slli.d	$s8, $a6, 5
	alsl.d	$s8, $a6, $s8, 4
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	add.d	$s8, $a1, $s8
	bstrpick.d	$a1, $s5, 31, 0
	sub.d	$a1, $a1, $a6
	and	$a6, $a1, $s3
	lu12i.w	$a1, 262144
	.p2align	4, , 16
.LBB24_535:                             # %vector.body
                                        #   Parent Loop BB24_27 Depth=1
                                        #     Parent Loop BB24_377 Depth=2
                                        #       Parent Loop BB24_513 Depth=3
                                        #         Parent Loop BB24_514 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	st.w	$a1, $s8, -48
	st.w	$a1, $s8, 0
	addi.d	$a6, $a6, -2
	addi.d	$s8, $s8, 96
	bnez	$a6, .LBB24_535
# %bb.536:                              # %middle.block
                                        #   in Loop: Header=BB24_514 Depth=4
	ld.d	$s3, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	beq	$a4, $a1, .LBB24_539
.LBB24_537:                             # %.lr.ph1052.i.preheader
                                        #   in Loop: Header=BB24_514 Depth=4
	bstrpick.d	$a1, $s5, 31, 0
	sub.d	$a4, $a1, $s6
	slli.d	$a1, $s6, 5
	alsl.d	$a1, $s6, $a1, 4
	ld.d	$a6, $sp, 320                   # 8-byte Folded Reload
	add.d	$a6, $a6, $a1
	lu12i.w	$a1, 262144
	.p2align	4, , 16
.LBB24_538:                             # %.lr.ph1052.i
                                        #   Parent Loop BB24_27 Depth=1
                                        #     Parent Loop BB24_377 Depth=2
                                        #       Parent Loop BB24_513 Depth=3
                                        #         Parent Loop BB24_514 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	st.w	$a1, $a6, 0
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, 48
	bnez	$a4, .LBB24_538
.LBB24_539:                             #   in Loop: Header=BB24_514 Depth=4
	ld.d	$s6, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 560                   # 8-byte Folded Reload
.LBB24_540:                             # %._crit_edge1053.i
                                        #   in Loop: Header=BB24_514 Depth=4
	bstrpick.d	$a1, $t0, 31, 0
	addi.d	$a2, $a2, -2
	bstrpick.d	$a2, $a2, 31, 0
	alsl.d	$a4, $ra, $ra, 4
	slli.d	$a4, $a4, 6
	ld.d	$a6, $sp, 424                   # 8-byte Folded Reload
	add.d	$a4, $a6, $a4
	slli.d	$a2, $a2, 2
	ld.d	$a6, $sp, 456                   # 8-byte Folded Reload
	ldx.hu	$a6, $a6, $s2
	ldx.w	$a4, $a4, $a2
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ldx.hu	$a2, $a2, $a7
	srli.d	$a3, $a6, 2
	ld.d	$a7, $sp, 520                   # 8-byte Folded Reload
	and	$a3, $a3, $a7
	ld.d	$a6, $sp, 536                   # 8-byte Folded Reload
	ldx.w	$a3, $a6, $a3
	srli.d	$a2, $a2, 2
	and	$a2, $a2, $a7
	xori	$a2, $a2, 508
	ldx.w	$a6, $a6, $a2
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	add.d	$a2, $a2, $t7
	add.d	$a2, $a2, $s0
	ld.d	$a7, $sp, 400                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a7
	ld.d	$a7, $sp, 392                   # 8-byte Folded Reload
	add.d	$a7, $a2, $a7
	slli.d	$a2, $a1, 5
	alsl.d	$a2, $a1, $a2, 4
	ldx.w	$a1, $s1, $a2
	add.d	$a4, $a7, $a4
	add.d	$a3, $a4, $a3
	add.w	$a3, $a3, $a6
	bgeu	$a3, $a1, .LBB24_542
# %bb.541:                              #   in Loop: Header=BB24_514 Depth=4
	add.d	$a1, $s1, $a2
	st.w	$a3, $a1, 0
	st.w	$t8, $a1, 24
	st.w	$zero, $a1, 28
	ori	$a2, $zero, 1
	lu32i.d	$a2, 1
	st.d	$a2, $a1, 8
	st.w	$fp, $a1, 16
	st.w	$t4, $a1, 20
.LBB24_542:                             #   in Loop: Header=BB24_514 Depth=4
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 352                   # 8-byte Folded Reload
.LBB24_543:                             #   in Loop: Header=BB24_514 Depth=4
	ld.d	$t7, $sp, 544                   # 8-byte Folded Reload
	addi.w	$a3, $t2, 2
	beq	$a3, $ra, .LBB24_375
# %bb.544:                              #   in Loop: Header=BB24_514 Depth=4
	addi.d	$a1, $t2, 3
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	ldx.w	$s0, $s5, $a1
	add.w	$t7, $t7, $t3
	move	$a2, $t6
	move	$t2, $a3
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	ori	$a4, $zero, 128
	bltu	$s0, $a4, .LBB24_514
# %bb.545:                              #   in Loop: Header=BB24_513 Depth=3
	addu16i.d	$a1, $s0, -8
	addi.w	$a1, $a1, 0
	slti	$a1, $a1, 0
	ori	$a2, $zero, 18
	masknez	$a2, $a2, $a1
	ori	$a4, $zero, 6
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a2
	srl.w	$a2, $s0, $a1
	bstrpick.d	$a2, $a2, 31, 0
	ld.d	$a4, $sp, 312                   # 8-byte Folded Reload
	ldx.bu	$a2, $a4, $a2
	alsl.d	$a4, $a1, $a2, 1
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	addi.w	$a2, $t5, 0
	b	.LBB24_513
.LBB24_546:                             #   in Loop: Header=BB24_27 Depth=1
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 4
	add.d	$a0, $s1, $a0
	ld.w	$a1, $a0, 24
	ld.w	$a0, $a0, 28
	stptr.w	$a6, $s3, 2868
	stptr.w	$a7, $s3, 2864
	stptr.w	$fp, $s3, 2856
	ori	$t0, $zero, 48
	b	.LBB24_549
.LBB24_547:                             # %._crit_edge.i870.i
                                        #   in Loop: Header=BB24_549 Depth=2
	ld.w	$a4, $a3, 28
	ld.w	$a1, $a3, 24
.LBB24_548:                             #   in Loop: Header=BB24_549 Depth=2
	st.w	$a0, $a3, 28
	st.w	$a2, $a3, 24
	move	$a0, $a4
	beqz	$fp, .LBB24_574
.LBB24_549:                             #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a2, $fp
	bstrpick.d	$a3, $fp, 31, 0
	mul.d	$a3, $a3, $t0
	add.d	$a5, $s1, $a3
	ld.w	$a4, $a5, 8
	move	$fp, $a1
	bstrpick.d	$a1, $a1, 31, 0
	mul.d	$a1, $a1, $t0
	add.d	$a3, $s1, $a1
	beqz	$a4, .LBB24_547
# %bb.550:                              #   in Loop: Header=BB24_549 Depth=2
	ld.w	$a6, $a5, 12
	st.w	$zero, $a3, 8
	addi.w	$a1, $fp, -1
	addi.d	$a4, $zero, -1
	beqz	$a6, .LBB24_548
# %bb.551:                              #   in Loop: Header=BB24_549 Depth=2
	bstrpick.d	$a6, $a1, 31, 0
	slli.d	$a7, $a6, 5
	ld.d	$a5, $a5, 16
	alsl.d	$a6, $a6, $a7, 4
	add.d	$a6, $s1, $a6
	st.w	$zero, $a6, 8
	st.d	$a5, $a6, 24
	b	.LBB24_548
.LBB24_552:                             # %GetPureRepPrice.exit.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a6, $sp, 432                   # 8-byte Folded Reload
	add.d	$a6, $a6, $t5
	ldx.hu	$a6, $a6, $t7
	srli.d	$a6, $a6, 2
	ld.d	$a7, $sp, 456                   # 8-byte Folded Reload
	ldx.hu	$a7, $a7, $a3
	ld.d	$t1, $sp, 520                   # 8-byte Folded Reload
	and	$a6, $a6, $t1
	xori	$a6, $a6, 508
	ld.d	$t0, $sp, 536                   # 8-byte Folded Reload
	ldx.w	$a6, $t0, $a6
	srli.d	$a7, $a7, 2
	and	$a7, $a7, $t1
	ldx.w	$a7, $t0, $a7
	add.d	$a6, $a6, $a4
	add.d	$a6, $a6, $a7
	bstrpick.d	$t0, $s8, 31, 0
	slli.d	$a7, $a2, 6
	alsl.d	$a7, $t0, $a7, 2
	ld.d	$t1, $sp, 48                    # 8-byte Folded Reload
	add.d	$a7, $t1, $a7
	slli.d	$t1, $t0, 5
	alsl.d	$t0, $t0, $t1, 4
	add.d	$t0, $s1, $t0
	b	.LBB24_554
.LBB24_553:                             #   in Loop: Header=BB24_554 Depth=2
	addi.w	$s8, $s8, -1
	addi.d	$a7, $a7, -4
	addi.d	$t0, $t0, -48
	bgeu	$t6, $s8, .LBB24_360
.LBB24_554:                             #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $a7, 0
	ld.w	$t2, $t0, 0
	add.w	$t1, $a6, $t1
	bgeu	$t1, $t2, .LBB24_553
# %bb.555:                              #   in Loop: Header=BB24_554 Depth=2
	st.w	$t1, $t0, 0
	st.d	$zero, $t0, 24
	st.w	$zero, $t0, 8
	b	.LBB24_553
.LBB24_556:                             # %GetPureRepPrice.exit.1.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ldx.hu	$a6, $a6, $a3
	ld.d	$a7, $sp, 456                   # 8-byte Folded Reload
	ldx.hu	$a7, $a7, $a3
	srli.d	$a6, $a6, 2
	ld.d	$t1, $sp, 520                   # 8-byte Folded Reload
	and	$a6, $a6, $t1
	ld.d	$t0, $sp, 536                   # 8-byte Folded Reload
	ldx.w	$a6, $t0, $a6
	srli.d	$a7, $a7, 2
	and	$a7, $a7, $t1
	xori	$a7, $a7, 508
	ldx.w	$a7, $t0, $a7
	add.d	$a6, $a6, $a4
	add.d	$a6, $a6, $a7
	bstrpick.d	$t0, $s5, 31, 0
	slli.d	$a7, $a2, 6
	alsl.d	$a7, $t0, $a7, 2
	ld.d	$t1, $sp, 48                    # 8-byte Folded Reload
	add.d	$a7, $t1, $a7
	slli.d	$t1, $t0, 5
	alsl.d	$t0, $t0, $t1, 4
	add.d	$t0, $s1, $t0
	b	.LBB24_558
.LBB24_557:                             #   in Loop: Header=BB24_558 Depth=2
	addi.w	$s5, $s5, -1
	addi.d	$a7, $a7, -4
	addi.d	$t0, $t0, -48
	bgeu	$t6, $s5, .LBB24_361
.LBB24_558:                             #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $a7, 0
	ld.w	$t2, $t0, 0
	add.w	$t1, $a6, $t1
	bgeu	$t1, $t2, .LBB24_557
# %bb.559:                              #   in Loop: Header=BB24_558 Depth=2
	st.w	$t1, $t0, 0
	ori	$t1, $zero, 0
	lu32i.d	$t1, 1
	st.d	$t1, $t0, 24
	st.w	$zero, $t0, 8
	b	.LBB24_557
.LBB24_560:                             # %GetPureRepPrice.exit.2.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ldx.hu	$a6, $a6, $a3
	srli.d	$a6, $a6, 2
	ld.d	$a7, $sp, 456                   # 8-byte Folded Reload
	ldx.hu	$a7, $a7, $a3
	ld.d	$t2, $sp, 520                   # 8-byte Folded Reload
	and	$a6, $a6, $t2
	xori	$a6, $a6, 508
	ld.d	$t1, $sp, 536                   # 8-byte Folded Reload
	ldx.w	$a6, $t1, $a6
	srli.d	$a7, $a7, 2
	ld.d	$t0, $sp, 152                   # 8-byte Folded Reload
	ldx.hu	$t0, $t0, $a3
	and	$a7, $a7, $t2
	xori	$a7, $a7, 508
	ldx.w	$a7, $t1, $a7
	srli.d	$t0, $t0, 2
	and	$t0, $t0, $t2
	ldx.w	$t0, $t1, $t0
	add.d	$a6, $a6, $a4
	add.d	$a6, $a6, $a7
	add.d	$a6, $a6, $t0
	bstrpick.d	$t0, $s0, 31, 0
	slli.d	$a7, $a2, 6
	alsl.d	$a7, $t0, $a7, 2
	ld.d	$t1, $sp, 48                    # 8-byte Folded Reload
	add.d	$a7, $t1, $a7
	slli.d	$t1, $t0, 5
	alsl.d	$t0, $t0, $t1, 4
	add.d	$t0, $s1, $t0
	b	.LBB24_562
.LBB24_561:                             #   in Loop: Header=BB24_562 Depth=2
	addi.w	$s0, $s0, -1
	addi.d	$a7, $a7, -4
	addi.d	$t0, $t0, -48
	bgeu	$t6, $s0, .LBB24_362
.LBB24_562:                             #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $a7, 0
	ld.w	$t2, $t0, 0
	add.w	$t1, $a6, $t1
	bgeu	$t1, $t2, .LBB24_561
# %bb.563:                              #   in Loop: Header=BB24_562 Depth=2
	st.w	$t1, $t0, 0
	ori	$t1, $zero, 0
	lu32i.d	$t1, 2
	st.d	$t1, $t0, 24
	st.w	$zero, $t0, 8
	b	.LBB24_561
.LBB24_564:                             # %GetPureRepPrice.exit.3.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ldx.hu	$a6, $a6, $a3
	srli.d	$a6, $a6, 2
	ld.d	$a7, $sp, 456                   # 8-byte Folded Reload
	ldx.hu	$a7, $a7, $a3
	ld.d	$t2, $sp, 520                   # 8-byte Folded Reload
	and	$a6, $a6, $t2
	xori	$a6, $a6, 508
	ld.d	$t0, $sp, 536                   # 8-byte Folded Reload
	ldx.w	$a6, $t0, $a6
	srli.d	$a7, $a7, 2
	ld.d	$t1, $sp, 152                   # 8-byte Folded Reload
	ldx.hu	$a3, $t1, $a3
	and	$a7, $a7, $t2
	xori	$a7, $a7, 508
	ldx.w	$a7, $t0, $a7
	srli.d	$a3, $a3, 2
	and	$a3, $a3, $t2
	xori	$a3, $a3, 508
	ldx.w	$a3, $t0, $a3
	add.d	$a4, $a6, $a4
	add.d	$a4, $a4, $a7
	add.d	$a3, $a4, $a3
	bstrpick.d	$a6, $fp, 31, 0
	slli.d	$a4, $a2, 6
	alsl.d	$a4, $a6, $a4, 2
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	add.d	$a4, $a7, $a4
	slli.d	$a7, $a6, 5
	alsl.d	$a6, $a6, $a7, 4
	add.d	$a6, $s1, $a6
	b	.LBB24_566
.LBB24_565:                             #   in Loop: Header=BB24_566 Depth=2
	addi.w	$fp, $fp, -1
	addi.d	$a4, $a4, -4
	addi.d	$a6, $a6, -48
	bgeu	$t6, $fp, .LBB24_363
.LBB24_566:                             #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $a4, 0
	ld.w	$t0, $a6, 0
	add.w	$a7, $a3, $a7
	bgeu	$a7, $t0, .LBB24_565
# %bb.567:                              #   in Loop: Header=BB24_566 Depth=2
	st.w	$a7, $a6, 0
	ld.d	$a7, $sp, 24                    # 8-byte Folded Reload
	st.d	$a7, $a6, 24
	st.w	$zero, $a6, 8
	b	.LBB24_565
.LBB24_568:                             # %._crit_edge1071.i
                                        #   in Loop: Header=BB24_27 Depth=1
	bstrpick.d	$a0, $fp, 31, 0
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 4
	add.d	$a0, $s1, $a0
	ld.w	$a2, $a0, 24
	ld.w	$a0, $a0, 28
	stptr.w	$fp, $s3, 2856
	ori	$t0, $zero, 48
	b	.LBB24_571
.LBB24_569:                             # %._crit_edge.i.i
                                        #   in Loop: Header=BB24_571 Depth=2
	ld.w	$a4, $a3, 28
	ld.w	$a2, $a3, 24
.LBB24_570:                             #   in Loop: Header=BB24_571 Depth=2
	st.w	$a0, $a3, 28
	st.w	$a1, $a3, 24
	move	$a0, $a4
	beqz	$fp, .LBB24_574
.LBB24_571:                             #   Parent Loop BB24_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $fp
	bstrpick.d	$a3, $fp, 31, 0
	mul.d	$a3, $a3, $t0
	add.d	$a5, $s1, $a3
	ld.w	$a4, $a5, 8
	move	$fp, $a2
	bstrpick.d	$a2, $a2, 31, 0
	mul.d	$a2, $a2, $t0
	add.d	$a3, $s1, $a2
	beqz	$a4, .LBB24_569
# %bb.572:                              #   in Loop: Header=BB24_571 Depth=2
	ld.w	$a6, $a5, 12
	st.w	$zero, $a3, 8
	addi.w	$a2, $fp, -1
	addi.d	$a4, $zero, -1
	beqz	$a6, .LBB24_570
# %bb.573:                              #   in Loop: Header=BB24_571 Depth=2
	bstrpick.d	$a6, $a2, 31, 0
	slli.d	$a7, $a6, 5
	ld.d	$a5, $a5, 16
	alsl.d	$a6, $a6, $a7, 4
	add.d	$a6, $s1, $a6
	st.w	$zero, $a6, 8
	st.d	$a5, $a6, 24
	b	.LBB24_570
.LBB24_574:                             # %Backward.exit.i
                                        #   in Loop: Header=BB24_27 Depth=1
	ori	$a0, $zero, 2900
	ldx.w	$a1, $s3, $a0
	ori	$a0, $zero, 2904
	ldx.w	$t3, $s3, $a0
	st.d	$a1, $sp, 576                   # 8-byte Folded Spill
	stptr.w	$a1, $s3, 2860
	b	.LBB24_169
.LBB24_575:                             # %CheckErrors.exit346.thread377
	ld.d	$a0, $s4, 88
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	sub.d	$a1, $s2, $a1
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$a0, $a0, $a1
	addi.w	$a1, $s2, 0
	st.d	$a0, $s4, 88
.LBB24_576:                             # %.thread
	move	$a0, $s3
	ld.d	$s8, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 680                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 688                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 696                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 704                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 712                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 720
	pcaddu18i	$t8, %call36(Flush)
	jr	$t8
.LBB24_577:                             # %.thread
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	addi.w	$a1, $a0, 0
	b	.LBB24_576
.LBB24_578:
	ld.d	$a2, $s4, 88
	ld.w	$a0, $s4, 108
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s4, 88
	bnez	$a0, .LBB24_8
# %bb.579:
	ld.w	$a0, $s4, 72
	bnez	$a0, .LBB24_4
# %bb.580:
	ld.w	$a0, $s3, 1696
	bnez	$a0, .LBB24_6
# %bb.581:
	move	$a0, $zero
	b	.LBB24_8
.Lfunc_end24:
	.size	LzmaEnc_CodeOneBlock, .Lfunc_end24-LzmaEnc_CodeOneBlock
                                        # -- End function
	.globl	LzmaEnc_Encode                  # -- Begin function LzmaEnc_Encode
	.p2align	5
	.type	LzmaEnc_Encode,@function
LzmaEnc_Encode:                         # @LzmaEnc_Encode
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a0
	lu12i.w	$a0, 61
	ori	$a0, $a0, 2432
	add.d	$a3, $s0, $a0
	st.d	$a2, $s0, 1632
	ori	$a2, $zero, 1
	st.w	$a2, $a3, 64
	stx.d	$a1, $s0, $a0
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $a4
	move	$a3, $a5
	pcaddu18i	$ra, %call36(LzmaEnc_AllocAndInit)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB25_2
# %bb.1:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB25_2:
	move	$a0, $s0
	move	$a1, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(LzmaEnc_Encode2)
	jr	$t8
.Lfunc_end25:
	.size	LzmaEnc_Encode, .Lfunc_end25-LzmaEnc_Encode
                                        # -- End function
	.p2align	5                               # -- Begin function LzmaEnc_Encode2
	.type	LzmaEnc_Encode2,@function
LzmaEnc_Encode2:                        # @LzmaEnc_Encode2
# %bb.0:                                # %.preheader
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(LzmaEnc_CodeOneBlock)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB26_4
.LBB26_1:                               # %._crit_edge
	ld.w	$a1, $fp, 56
	beqz	$a1, .LBB26_3
# %bb.2:
	addi.d	$a1, $fp, 64
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(MatchFinderMt_ReleaseStream)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB26_3:                               # %LzmaEnc_Finish.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB26_4:                               # %.lr.ph
	lu12i.w	$a0, 61
	ori	$a0, $a0, 2400
	add.d	$s1, $fp, $a0
	beqz	$s0, .LBB26_9
	.p2align	4, , 16
.LBB26_5:                               # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s1, 76
	bnez	$a0, .LBB26_10
# %bb.6:                                #   in Loop: Header=BB26_5 Depth=1
	ld.d	$a3, $s0, 0
	ld.d	$a0, $s1, 40
	ld.d	$a2, $s1, 8
	ld.d	$a4, $s1, 24
	ld.d	$a5, $s1, 0
	ld.d	$a1, $s1, 64
	add.d	$a0, $a0, $a2
	sub.d	$a0, $a0, $a4
	add.d	$a2, $a0, $a5
	move	$a0, $s0
	jirl	$ra, $a3, 0
	bnez	$a0, .LBB26_11
# %bb.7:                                #   in Loop: Header=BB26_5 Depth=1
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(LzmaEnc_CodeOneBlock)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB26_5
	b	.LBB26_1
	.p2align	4, , 16
.LBB26_8:                               #   in Loop: Header=BB26_9 Depth=1
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(LzmaEnc_CodeOneBlock)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB26_1
.LBB26_9:                               # %.lr.ph.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s1, 76
	beqz	$a0, .LBB26_8
.LBB26_10:
	move	$a0, $zero
	b	.LBB26_1
.LBB26_11:
	ori	$a0, $zero, 10
	b	.LBB26_1
.Lfunc_end26:
	.size	LzmaEnc_Encode2, .Lfunc_end26-LzmaEnc_Encode2
                                        # -- End function
	.globl	LzmaEnc_WriteProperties         # -- Begin function LzmaEnc_WriteProperties
	.p2align	5
	.type	LzmaEnc_WriteProperties,@function
LzmaEnc_WriteProperties:                # @LzmaEnc_WriteProperties
# %bb.0:
	ld.d	$a4, $a2, 0
	ori	$a3, $zero, 5
	bltu	$a4, $a3, .LBB27_41
# %bb.1:
	lu12i.w	$a3, 52
	ori	$a3, $a3, 564
	add.d	$a3, $a0, $a3
	lu12i.w	$a4, 61
	ori	$a4, $a4, 2488
	ori	$a5, $zero, 5
	st.d	$a5, $a2, 0
	ld.w	$a2, $a3, 8
	ld.w	$a5, $a3, 4
	ldx.w	$a0, $a0, $a4
	ld.w	$a3, $a3, 0
	alsl.d	$a2, $a2, $a2, 2
	add.d	$a2, $a2, $a5
	alsl.d	$a2, $a2, $a2, 3
	add.d	$a3, $a2, $a3
	lu12i.w	$a2, 1
	st.b	$a3, $a1, 0
	bgeu	$a2, $a0, .LBB27_40
# %bb.2:
	ori	$a2, $a2, 2048
	bgeu	$a2, $a0, .LBB27_40
# %bb.3:
	lu12i.w	$a2, 2
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.4:
	lu12i.w	$a2, 3
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.5:
	lu12i.w	$a2, 4
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.6:
	lu12i.w	$a2, 6
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.7:
	lu12i.w	$a2, 8
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.8:
	lu12i.w	$a2, 12
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.9:
	lu12i.w	$a2, 16
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.10:
	lu12i.w	$a2, 24
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.11:
	lu12i.w	$a2, 32
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.12:
	lu12i.w	$a2, 48
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.13:
	lu12i.w	$a2, 64
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.14:
	lu12i.w	$a2, 96
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.15:
	lu12i.w	$a2, 128
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.16:
	lu12i.w	$a2, 192
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.17:
	lu12i.w	$a2, 256
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.18:
	lu12i.w	$a2, 384
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.19:
	lu12i.w	$a2, 512
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.20:
	lu12i.w	$a2, 768
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.21:
	lu12i.w	$a2, 1024
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.22:
	lu12i.w	$a2, 1536
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.23:
	lu12i.w	$a2, 2048
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.24:
	lu12i.w	$a2, 3072
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.25:
	lu12i.w	$a2, 4096
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.26:
	lu12i.w	$a2, 6144
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.27:
	lu12i.w	$a2, 8192
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.28:
	lu12i.w	$a2, 12288
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.29:
	lu12i.w	$a2, 16384
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.30:
	lu12i.w	$a2, 24576
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.31:
	lu12i.w	$a2, 32768
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.32:
	lu12i.w	$a2, 49152
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.33:
	lu12i.w	$a2, 65536
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.34:
	lu12i.w	$a2, 98304
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.35:
	lu12i.w	$a2, 131072
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.36:
	lu12i.w	$a2, 196608
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.37:
	lu12i.w	$a2, 262144
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.38:
	lu12i.w	$a2, 393216
	ori	$a3, $a2, 1
	bltu	$a0, $a3, .LBB27_40
# %bb.39:
	lu12i.w	$a2, -524288
	sltu	$a3, $a2, $a0
	lu12i.w	$a4, -262144
	sltu	$a5, $a4, $a0
	masknez	$a4, $a4, $a5
	maskeqz	$a0, $a0, $a5
	or	$a0, $a0, $a4
	maskeqz	$a0, $a0, $a3
	masknez	$a2, $a2, $a3
	or	$a2, $a0, $a2
.LBB27_40:                              # %.loopexit.loopexit
	move	$a3, $zero
	st.w	$a2, $a1, 1
.LBB27_41:                              # %.loopexit
	move	$a0, $a3
	ret
.Lfunc_end27:
	.size	LzmaEnc_WriteProperties, .Lfunc_end27-LzmaEnc_WriteProperties
                                        # -- End function
	.globl	LzmaEnc_MemEncode               # -- Begin function LzmaEnc_MemEncode
	.p2align	5
	.type	LzmaEnc_MemEncode,@function
LzmaEnc_MemEncode:                      # @LzmaEnc_MemEncode
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	move	$s0, $a6
	move	$fp, $a2
	move	$s1, $a0
	ld.d	$a6, $sp, 64
	lu12i.w	$a0, 61
	ori	$a0, $a0, 2432
	st.d	$a4, $s1, 1664
	pcalau12i	$a2, %pc_hi20(MyWrite)
	addi.d	$a2, $a2, %pc_lo12(MyWrite)
	ld.d	$t0, $fp, 0
	st.d	$a2, $sp, 0
	add.d	$a2, $s1, $a0
	st.d	$a1, $sp, 8
	st.d	$t0, $sp, 16
	st.w	$zero, $sp, 24
	st.w	$a5, $a2, 24
	addi.d	$a1, $sp, 0
	stx.d	$a1, $s1, $a0
	ori	$a0, $zero, 1
	st.w	$a0, $s1, 1660
	st.d	$a3, $s1, 1624
	st.d	$a4, $s1, 1664
	st.w	$a0, $a2, 64
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $a7
	move	$a3, $a6
	pcaddu18i	$ra, %call36(LzmaEnc_AllocAndInit)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB28_2
# %bb.1:
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(LzmaEnc_Encode2)
	jirl	$ra, $ra, 0
.LBB28_2:
	ld.d	$a1, $sp, 16
	ld.d	$a2, $fp, 0
	ld.w	$a3, $sp, 24
	sub.d	$a1, $a2, $a1
	sltui	$a2, $a3, 1
	ori	$a3, $zero, 7
	masknez	$a3, $a3, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a3
	st.d	$a1, $fp, 0
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end28:
	.size	LzmaEnc_MemEncode, .Lfunc_end28-LzmaEnc_MemEncode
                                        # -- End function
	.globl	LzmaEncode                      # -- Begin function LzmaEncode
	.p2align	5
	.type	LzmaEncode,@function
LzmaEncode:                             # @LzmaEncode
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	ld.d	$fp, $sp, 152
	ld.d	$t0, $fp, 0
	move	$s5, $a7
	move	$s7, $a6
	move	$s8, $a5
	move	$s2, $a4
	move	$s3, $a3
	move	$s4, $a2
	move	$s1, $a1
	move	$s6, $a0
	lu12i.w	$a0, 71
	ori	$a1, $a0, 216
	move	$a0, $fp
	jirl	$ra, $t0, 0
	beqz	$a0, .LBB29_5
# %bb.1:
	move	$s0, $a0
	st.d	$s4, $sp, 0                     # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s1, $sp, 160
	lu12i.w	$a0, 61
	ori	$a0, $a0, 2424
	add.d	$s4, $s0, $a0
	lu12i.w	$a0, 52
	ori	$a0, $a0, 584
	add.d	$a0, $s0, $a0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(LzmaEnc_Construct)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(LzmaEnc_SetProps)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB29_3
# %bb.2:
	move	$a0, $s0
	move	$a1, $s8
	move	$a2, $s7
	pcaddu18i	$ra, %call36(LzmaEnc_WriteProperties)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB29_7
.LBB29_3:
	move	$s2, $a0
.LBB29_4:
	addi.d	$a0, $s0, 64
	move	$a1, $s1
	pcaddu18i	$ra, %call36(MatchFinderMt_Destruct)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s0, 1560
	move	$a1, $s1
	pcaddu18i	$ra, %call36(MatchFinder_Free)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 8
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $s1, 0
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a2, $fp, 8
	ld.d	$a1, $s4, 80
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a2, $fp, 8
	ld.d	$a1, $s4, 0
	st.d	$zero, $s1, 0
	st.d	$zero, $s4, 80
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a2, $fp, 8
	st.d	$zero, $s4, 0
	move	$a0, $fp
	move	$a1, $s0
	jirl	$ra, $a2, 0
	move	$a0, $s2
	b	.LBB29_6
.LBB29_5:
	ori	$a0, $zero, 2
.LBB29_6:                               # %LzmaEnc_Create.exit.thread
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB29_7:
	st.d	$s3, $s0, 1664
	pcalau12i	$a0, %pc_hi20(MyWrite)
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $s2, 0
	addi.d	$a0, $a0, %pc_lo12(MyWrite)
	st.d	$a0, $sp, 24
	st.d	$s6, $sp, 32
	st.d	$a1, $sp, 40
	st.w	$zero, $sp, 48
	st.w	$s5, $s4, 32
	addi.d	$a0, $sp, 24
	st.d	$a0, $s4, 8
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 1660
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	st.d	$a1, $s0, 1624
	st.d	$s3, $s0, 1664
	st.w	$a0, $s4, 72
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(LzmaEnc_AllocAndInit)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB29_9
# %bb.8:
	ld.d	$a1, $sp, 144
	move	$a0, $s0
	pcaddu18i	$ra, %call36(LzmaEnc_Encode2)
	jirl	$ra, $ra, 0
.LBB29_9:                               # %LzmaEnc_MemEncode.exit
	ld.d	$a1, $sp, 40
	ld.d	$a2, $s2, 0
	ld.w	$a3, $sp, 48
	sub.d	$a1, $a2, $a1
	st.d	$a1, $s2, 0
	sltui	$a1, $a3, 1
	ori	$a2, $zero, 7
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$s2, $a0, $a2
	b	.LBB29_4
.Lfunc_end29:
	.size	LzmaEncode, .Lfunc_end29-LzmaEncode
                                        # -- End function
	.p2align	5                               # -- Begin function LenPriceEnc_UpdateTable
	.type	LenPriceEnc_UpdateTable,@function
LenPriceEnc_UpdateTable:                # @LenPriceEnc_UpdateTable
# %bb.0:
	ldptr.w	$a6, $a0, 18436
	bstrpick.d	$a3, $a1, 31, 0
	beqz	$a6, .LBB30_22
# %bb.1:                                # %.lr.ph.i.i
	addi.d	$sp, $sp, -16
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	st.d	$s0, $sp, 0                     # 8-byte Folded Spill
	alsl.d	$a4, $a3, $a3, 4
	ld.hu	$a5, $a0, 0
	slli.d	$a4, $a4, 6
	add.d	$a4, $a0, $a4
	addi.d	$a4, $a4, 1028
	srli.d	$a7, $a5, 2
	lu12i.w	$a5, 3
	ori	$a5, $a5, 4092
	and	$a7, $a7, $a5
	ld.hu	$t0, $a0, 2
	ldx.w	$t2, $a2, $a7
	xori	$a7, $a7, 508
	ldx.w	$a7, $a2, $a7
	srli.d	$t0, $t0, 2
	slli.d	$a1, $a1, 3
	bstrpick.d	$t1, $a1, 31, 3
	alsl.d	$a1, $t1, $a0, 4
	addi.d	$t3, $a1, 4
	ld.hu	$a1, $t3, 8
	and	$t4, $t0, $a5
	ldx.w	$t0, $a2, $t4
	xori	$t5, $t4, 508
	srli.d	$t7, $a1, 4
	ld.hu	$a1, $t3, 4
	slli.d	$t4, $t7, 2
	ldx.w	$t8, $a2, $t4
	ld.hu	$t4, $t3, 2
	srli.d	$t6, $a1, 4
	slli.d	$a1, $t6, 2
	ldx.w	$fp, $a2, $a1
	srli.d	$t4, $t4, 4
	slli.d	$a1, $t4, 2
	ldx.w	$s0, $a2, $a1
	ldx.w	$a1, $a2, $t5
	add.d	$t5, $t8, $t2
	add.d	$t5, $t5, $fp
	add.d	$t5, $t5, $s0
	ori	$t8, $zero, 1
	st.w	$t5, $a4, 0
	beq	$a6, $t8, .LBB30_21
# %bb.2:                                # %.lr.ph.i.1.i
	alsl.d	$t8, $t6, $a2, 2
	alsl.d	$t5, $t4, $a2, 2
	xori	$t7, $t7, 127
	slli.d	$t7, $t7, 2
	ldx.w	$t7, $a2, $t7
	ld.w	$t8, $t8, 0
	ld.w	$fp, $t5, 0
	add.d	$t7, $t7, $t2
	add.d	$t7, $t7, $t8
	add.d	$t7, $t7, $fp
	ori	$t8, $zero, 2
	st.w	$t7, $a4, 4
	beq	$a6, $t8, .LBB30_21
# %bb.3:                                # %.lr.ph.i.2.i
	ld.hu	$t7, $t3, 10
	srli.d	$t7, $t7, 4
	slli.d	$t8, $t7, 2
	ldx.w	$t8, $a2, $t8
	xori	$t6, $t6, 127
	slli.d	$fp, $t6, 2
	ldx.w	$fp, $a2, $fp
	ld.w	$s0, $t5, 0
	add.d	$t8, $t8, $t2
	add.d	$t8, $t8, $fp
	add.d	$t8, $t8, $s0
	ori	$fp, $zero, 3
	st.w	$t8, $a4, 8
	beq	$a6, $fp, .LBB30_21
# %bb.4:                                # %.lr.ph.i.3.i
	alsl.d	$t6, $t6, $a2, 2
	xori	$t7, $t7, 127
	slli.d	$t7, $t7, 2
	ldx.w	$t7, $a2, $t7
	ld.w	$t6, $t6, 0
	ld.w	$t5, $t5, 0
	add.d	$t7, $t7, $t2
	add.d	$t6, $t7, $t6
	add.d	$t5, $t6, $t5
	ori	$t6, $zero, 4
	st.w	$t5, $a4, 12
	beq	$a6, $t6, .LBB30_21
# %bb.5:                                # %.lr.ph.i.4.i
	ld.hu	$t5, $t3, 12
	ld.hu	$t7, $t3, 6
	srli.d	$t6, $t5, 4
	slli.d	$t5, $t6, 2
	ldx.w	$t8, $a2, $t5
	srli.d	$t5, $t7, 4
	slli.d	$t7, $t5, 2
	ldx.w	$t7, $a2, $t7
	xori	$t4, $t4, 127
	slli.d	$fp, $t4, 2
	ldx.w	$fp, $a2, $fp
	add.d	$t8, $t8, $t2
	add.d	$t7, $t8, $t7
	add.d	$t7, $t7, $fp
	ori	$t8, $zero, 5
	st.w	$t7, $a4, 16
	beq	$a6, $t8, .LBB30_21
# %bb.6:                                # %.lr.ph.i.5.i
	alsl.d	$t7, $t5, $a2, 2
	alsl.d	$t4, $t4, $a2, 2
	xori	$t6, $t6, 127
	slli.d	$t6, $t6, 2
	ldx.w	$t6, $a2, $t6
	ld.w	$t7, $t7, 0
	ld.w	$t8, $t4, 0
	add.d	$t6, $t6, $t2
	add.d	$t6, $t6, $t7
	add.d	$t6, $t6, $t8
	ori	$t7, $zero, 6
	st.w	$t6, $a4, 20
	beq	$a6, $t7, .LBB30_21
# %bb.7:                                # %.lr.ph.i.6.i
	ld.hu	$t3, $t3, 14
	srli.d	$t3, $t3, 4
	slli.d	$t6, $t3, 2
	ldx.w	$t6, $a2, $t6
	xori	$t5, $t5, 127
	slli.d	$t7, $t5, 2
	ldx.w	$t7, $a2, $t7
	ld.w	$t8, $t4, 0
	add.d	$t6, $t6, $t2
	add.d	$t6, $t6, $t7
	add.d	$t6, $t6, $t8
	ori	$t7, $zero, 7
	st.w	$t6, $a4, 24
	beq	$a6, $t7, .LBB30_21
# %bb.8:                                # %.lr.ph.i
	alsl.d	$t5, $t5, $a2, 2
	xori	$t3, $t3, 127
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $a2, $t3
	ld.w	$t5, $t5, 0
	ld.w	$t4, $t4, 0
	add.d	$t2, $t3, $t2
	add.d	$t2, $t2, $t5
	add.d	$t2, $t2, $t4
	ori	$t3, $zero, 9
	st.w	$t2, $a4, 28
	bltu	$a6, $t3, .LBB30_21
# %bb.9:                                # %.lr.ph.i41.i
	slli.d	$t1, $t1, 3
	alsl.d	$t1, $t1, $a0, 1
	addi.d	$t1, $t1, 260
	ld.hu	$t2, $t1, 8
	srli.d	$t5, $t2, 4
	ld.hu	$t2, $t1, 4
	slli.d	$t4, $t5, 2
	ldx.w	$t6, $a2, $t4
	ld.hu	$t7, $t1, 2
	srli.d	$t4, $t2, 4
	slli.d	$t2, $t4, 2
	ldx.w	$t8, $a2, $t2
	srli.d	$t2, $t7, 4
	slli.d	$t7, $t2, 2
	ldx.w	$t7, $a2, $t7
	add.d	$t0, $t0, $a7
	add.d	$t6, $t6, $t0
	add.d	$t6, $t6, $t8
	add.d	$t6, $t6, $t7
	st.w	$t6, $a4, 32
	beq	$a6, $t3, .LBB30_21
# %bb.10:                               # %.lr.ph.i41.1.i
	alsl.d	$t6, $t4, $a2, 2
	alsl.d	$t3, $t2, $a2, 2
	xori	$t5, $t5, 127
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $a2, $t5
	ld.w	$t6, $t6, 0
	ld.w	$t7, $t3, 0
	add.d	$t5, $t5, $t0
	add.d	$t5, $t5, $t6
	add.d	$t5, $t5, $t7
	ori	$t6, $zero, 10
	st.w	$t5, $a4, 36
	beq	$a6, $t6, .LBB30_21
# %bb.11:                               # %.lr.ph.i41.2.i
	ld.hu	$t5, $t1, 10
	srli.d	$t5, $t5, 4
	slli.d	$t6, $t5, 2
	ldx.w	$t6, $a2, $t6
	xori	$t4, $t4, 127
	slli.d	$t7, $t4, 2
	ldx.w	$t7, $a2, $t7
	ld.w	$t8, $t3, 0
	add.d	$t6, $t6, $t0
	add.d	$t6, $t6, $t7
	add.d	$t6, $t6, $t8
	ori	$t7, $zero, 11
	st.w	$t6, $a4, 40
	beq	$a6, $t7, .LBB30_21
# %bb.12:                               # %.lr.ph.i41.3.i
	alsl.d	$t4, $t4, $a2, 2
	xori	$t5, $t5, 127
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $a2, $t5
	ld.w	$t4, $t4, 0
	ld.w	$t3, $t3, 0
	add.d	$t5, $t5, $t0
	add.d	$t4, $t5, $t4
	add.d	$t3, $t4, $t3
	ori	$t4, $zero, 12
	st.w	$t3, $a4, 44
	beq	$a6, $t4, .LBB30_21
# %bb.13:                               # %.lr.ph.i41.4.i
	ld.hu	$t3, $t1, 12
	ld.hu	$t5, $t1, 6
	srli.d	$t4, $t3, 4
	slli.d	$t3, $t4, 2
	ldx.w	$t6, $a2, $t3
	srli.d	$t3, $t5, 4
	slli.d	$t5, $t3, 2
	ldx.w	$t5, $a2, $t5
	xori	$t2, $t2, 127
	slli.d	$t7, $t2, 2
	ldx.w	$t7, $a2, $t7
	add.d	$t6, $t6, $t0
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $t7
	ori	$t6, $zero, 13
	st.w	$t5, $a4, 48
	beq	$a6, $t6, .LBB30_21
# %bb.14:                               # %.lr.ph.i41.5.i
	alsl.d	$t5, $t3, $a2, 2
	alsl.d	$t2, $t2, $a2, 2
	xori	$t4, $t4, 127
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $a2, $t4
	ld.w	$t5, $t5, 0
	ld.w	$t6, $t2, 0
	add.d	$t4, $t4, $t0
	add.d	$t4, $t4, $t5
	add.d	$t4, $t4, $t6
	ori	$t5, $zero, 14
	st.w	$t4, $a4, 52
	beq	$a6, $t5, .LBB30_21
# %bb.15:                               # %.lr.ph.i41.6.i
	ld.hu	$t1, $t1, 14
	srli.d	$t1, $t1, 4
	slli.d	$t4, $t1, 2
	ldx.w	$t4, $a2, $t4
	xori	$t3, $t3, 127
	slli.d	$t5, $t3, 2
	ldx.w	$t5, $a2, $t5
	ld.w	$t6, $t2, 0
	add.d	$t4, $t4, $t0
	add.d	$t4, $t4, $t5
	add.d	$t4, $t4, $t6
	ori	$t5, $zero, 15
	st.w	$t4, $a4, 56
	beq	$a6, $t5, .LBB30_21
# %bb.16:                               # %.preheader.i
	alsl.d	$t3, $t3, $a2, 2
	xori	$t1, $t1, 127
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a2, $t1
	ld.w	$t3, $t3, 0
	ld.w	$t2, $t2, 0
	add.d	$t0, $t1, $t0
	add.d	$t0, $t0, $t3
	add.d	$t0, $t0, $t2
	ori	$t1, $zero, 17
	st.w	$t0, $a4, 60
	bltu	$a6, $t1, .LBB30_21
# %bb.17:                               # %.lr.ph61.i
	add.d	$a1, $a1, $a7
	bstrpick.d	$a6, $a6, 31, 0
	addi.d	$a7, $a0, 516
	ori	$t0, $zero, 16
	ori	$t1, $zero, 1
.LBB30_18:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_19 Depth 2
	move	$t2, $zero
	addi.w	$t3, $t0, -16
	ori	$t3, $t3, 256
.LBB30_19:                              # %.lr.ph.i46.i
                                        #   Parent Loop BB30_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t4, $t3, 31, 1
	slli.d	$t5, $t4, 1
	ldx.h	$t5, $a7, $t5
	andi	$t3, $t3, 1
	sub.d	$t3, $zero, $t3
	andi	$t3, $t3, 2032
	xor	$t3, $t3, $t5
	srli.d	$t3, $t3, 2
	and	$t3, $t3, $a5
	ldx.w	$t3, $a2, $t3
	add.d	$t2, $t3, $t2
	move	$t3, $t4
	bne	$t4, $t1, .LBB30_19
# %bb.20:                               # %RcTree_GetPrice.exit50.i
                                        #   in Loop: Header=BB30_18 Depth=1
	add.d	$t2, $a1, $t2
	slli.d	$t3, $t0, 2
	addi.d	$t0, $t0, 1
	stx.w	$t2, $a4, $t3
	bne	$t0, $a6, .LBB30_18
.LBB30_21:
	ld.d	$s0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB30_22:                              # %LenEnc_SetPrices.exit
	lu12i.w	$a1, 4
	ori	$a1, $a1, 2052
	ldx.w	$a1, $a0, $a1
	alsl.d	$a0, $a3, $a0, 2
	stptr.w	$a1, $a0, 18440
	ret
.Lfunc_end30:
	.size	LenPriceEnc_UpdateTable, .Lfunc_end30-LenPriceEnc_UpdateTable
                                        # -- End function
	.p2align	5                               # -- Begin function Flush
	.type	Flush,@function
Flush:                                  # @Flush
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	st.d	$s7, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	lu12i.w	$s4, 61
	ori	$a0, $s4, 2376
	add.d	$s2, $fp, $a0
	ld.w	$a0, $s2, 80
	ori	$a2, $s4, 2408
	add.d	$s3, $fp, $a2
	ori	$a2, $zero, 1
	st.w	$a2, $s2, 100
	beqz	$a0, .LBB31_29
# %bb.1:
	lu12i.w	$a0, 51
	ori	$a0, $a0, 1512
	add.d	$s7, $fp, $a0
	ori	$a0, $zero, 3164
	ldx.w	$a2, $s7, $a0
	ld.wu	$a0, $s7, 0
	lu12i.w	$s5, 52
	ori	$s6, $s5, 1458
	and	$s1, $a2, $a1
	slli.d	$a1, $a0, 5
	add.d	$a1, $fp, $a1
	bstrpick.d	$a2, $s1, 31, 0
	alsl.d	$a2, $a2, $a1, 1
	ori	$a3, $s5, 592
	ld.wu	$a1, $s2, 8
	ldx.hu	$a4, $a2, $a3
	addi.d	$s0, $s2, 8
	ld.d	$a5, $s2, 16
	srli.d	$a6, $a1, 11
	mul.d	$a6, $a6, $a4
	bstrpick.d	$a7, $a6, 31, 0
	add.d	$a5, $a5, $a7
	st.d	$a5, $s2, 16
	sub.w	$a1, $a1, $a6
	srli.d	$a5, $a4, 5
	sub.d	$a4, $a4, $a5
	bstrpick.d	$a5, $a1, 31, 24
	stx.h	$a4, $a2, $a3
	bnez	$a5, .LBB31_3
# %bb.2:
	slli.d	$a0, $a1, 8
	st.w	$a0, $s0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s7, 0
	ld.w	$a1, $s0, 0
.LBB31_3:                               # %RangeEnc_EncodeBit.exit.i
	alsl.d	$a2, $a0, $fp, 1
	ori	$a3, $s5, 976
	ldx.hu	$a4, $a2, $a3
	add.d	$s6, $fp, $s6
	bstrpick.d	$a1, $a1, 31, 11
	mul.d	$a1, $a1, $a4
	ori	$a5, $zero, 2048
	sub.d	$a5, $a5, $a4
	srli.d	$a5, $a5, 5
	st.w	$a1, $s0, 0
	add.d	$a4, $a4, $a5
	bstrpick.d	$a5, $a1, 31, 24
	stx.h	$a4, $a2, $a3
	bnez	$a5, .LBB31_5
# %bb.4:
	slli.d	$a0, $a1, 8
	st.w	$a0, $s0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s7, 0
.LBB31_5:
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(kMatchNextStates)
	addi.d	$a1, $a1, %pc_lo12(kMatchNextStates)
	ldx.w	$a0, $a1, $a0
	ld.w	$a1, $s2, 0
	st.w	$a0, $s7, 0
	ori	$a0, $s5, 2228
	add.d	$a0, $fp, $a0
	sltui	$a4, $a1, 1
	lu12i.w	$a1, 50
	ori	$a1, $a1, 2876
	add.d	$a5, $fp, $a1
	move	$a1, $s0
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(LenEnc_Encode2)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s2, 8
	ld.hu	$a2, $s6, 0
	ld.d	$a1, $s2, 16
	srli.d	$a3, $a0, 11
	mul.d	$a3, $a3, $a2
	bstrpick.d	$a4, $a3, 31, 0
	add.d	$a1, $a1, $a4
	st.d	$a1, $s2, 16
	sub.w	$a0, $a0, $a3
	srli.d	$a3, $a2, 5
	sub.d	$a2, $a2, $a3
	bstrpick.d	$a3, $a0, 31, 24
	st.h	$a2, $s6, 0
	bnez	$a3, .LBB31_7
# %bb.6:
	slli.d	$a0, $a0, 8
	st.w	$a0, $s2, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 8
	ld.d	$a1, $s2, 16
.LBB31_7:
	ld.hu	$a2, $s6, 4
	bstrpick.d	$a3, $a0, 31, 11
	mul.d	$a3, $a3, $a2
	bstrpick.d	$a4, $a3, 31, 0
	add.d	$a1, $a1, $a4
	st.d	$a1, $s2, 16
	sub.w	$a0, $a0, $a3
	srli.d	$a3, $a2, 5
	sub.d	$a2, $a2, $a3
	bstrpick.d	$a3, $a0, 31, 24
	st.h	$a2, $s6, 4
	bnez	$a3, .LBB31_9
# %bb.8:
	slli.d	$a0, $a0, 8
	st.w	$a0, $s2, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 8
	ld.d	$a1, $s2, 16
.LBB31_9:
	ld.hu	$a2, $s6, 12
	bstrpick.d	$a3, $a0, 31, 11
	mul.d	$a3, $a3, $a2
	bstrpick.d	$a4, $a3, 31, 0
	add.d	$a1, $a1, $a4
	st.d	$a1, $s2, 16
	sub.w	$a0, $a0, $a3
	srli.d	$a3, $a2, 5
	sub.d	$a2, $a2, $a3
	bstrpick.d	$a3, $a0, 31, 24
	st.h	$a2, $s6, 12
	bnez	$a3, .LBB31_11
# %bb.10:
	slli.d	$a0, $a0, 8
	st.w	$a0, $s2, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 8
	ld.d	$a1, $s2, 16
.LBB31_11:
	ld.hu	$a2, $s6, 28
	bstrpick.d	$a3, $a0, 31, 11
	mul.d	$a3, $a3, $a2
	bstrpick.d	$a4, $a3, 31, 0
	add.d	$a1, $a1, $a4
	st.d	$a1, $s2, 16
	sub.w	$a0, $a0, $a3
	srli.d	$a3, $a2, 5
	sub.d	$a2, $a2, $a3
	bstrpick.d	$a3, $a0, 31, 24
	st.h	$a2, $s6, 28
	bnez	$a3, .LBB31_13
# %bb.12:
	slli.d	$a0, $a0, 8
	st.w	$a0, $s2, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 8
	ld.d	$a1, $s2, 16
.LBB31_13:
	ld.hu	$a2, $s6, 60
	bstrpick.d	$a3, $a0, 31, 11
	mul.d	$a3, $a3, $a2
	bstrpick.d	$a4, $a3, 31, 0
	add.d	$a1, $a1, $a4
	st.d	$a1, $s2, 16
	sub.w	$a0, $a0, $a3
	srli.d	$a3, $a2, 5
	sub.d	$a2, $a2, $a3
	bstrpick.d	$a3, $a0, 31, 24
	st.h	$a2, $s6, 60
	bnez	$a3, .LBB31_15
# %bb.14:
	slli.d	$a0, $a0, 8
	st.w	$a0, $s2, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 8
	ld.d	$a1, $s2, 16
.LBB31_15:
	ld.hu	$a2, $s6, 124
	ori	$s1, $s5, 2198
	bstrpick.d	$a3, $a0, 31, 11
	mul.d	$a3, $a3, $a2
	bstrpick.d	$a4, $a3, 31, 0
	add.d	$a1, $a1, $a4
	st.d	$a1, $s2, 16
	sub.w	$a0, $a0, $a3
	srli.d	$a1, $a2, 5
	sub.d	$a1, $a2, $a1
	st.w	$a0, $s2, 8
	bstrpick.d	$a2, $a0, 31, 24
	st.h	$a1, $s6, 124
	bnez	$a2, .LBB31_17
# %bb.16:
	slli.d	$a0, $a0, 8
	st.w	$a0, $s0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
.LBB31_17:                              # %RcTree_Encode.exit.i.preheader
	add.d	$s1, $fp, $s1
	addi.w	$s6, $zero, -26
	ori	$s5, $zero, 0
	lu32i.d	$s5, 1
	b	.LBB31_19
	.p2align	4, , 16
.LBB31_18:                              #   in Loop: Header=BB31_19 Depth=1
	bstrpick.d	$a0, $s6, 31, 0
	addi.d	$s6, $a0, 1
	and	$a0, $s6, $s5
	bnez	$a0, .LBB31_21
.LBB31_19:                              # %RcTree_Encode.exit.i
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a1, $s2, 8
	ld.d	$a2, $s2, 16
	srli.d	$a0, $a1, 1
	st.w	$a0, $s2, 8
	add.d	$a2, $a2, $a0
	srli.d	$a1, $a1, 25
	st.d	$a2, $s2, 16
	bnez	$a1, .LBB31_18
# %bb.20:                               #   in Loop: Header=BB31_19 Depth=1
	slli.d	$a0, $a0, 8
	st.w	$a0, $s0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	b	.LBB31_18
.LBB31_21:
	ld.wu	$a0, $s2, 8
	ld.hu	$a2, $s1, 0
	ld.d	$a1, $s2, 16
	srli.d	$a3, $a0, 11
	mul.d	$a3, $a3, $a2
	bstrpick.d	$a4, $a3, 31, 0
	add.d	$a1, $a1, $a4
	st.d	$a1, $s2, 16
	sub.w	$a0, $a0, $a3
	srli.d	$a3, $a2, 5
	sub.d	$a2, $a2, $a3
	bstrpick.d	$a3, $a0, 31, 24
	st.h	$a2, $s1, 0
	bnez	$a3, .LBB31_23
# %bb.22:
	slli.d	$a0, $a0, 8
	st.w	$a0, $s2, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 8
	ld.d	$a1, $s2, 16
.LBB31_23:
	ld.hu	$a2, $s1, 4
	bstrpick.d	$a3, $a0, 31, 11
	mul.d	$a3, $a3, $a2
	bstrpick.d	$a4, $a3, 31, 0
	add.d	$a1, $a1, $a4
	st.d	$a1, $s2, 16
	sub.w	$a0, $a0, $a3
	srli.d	$a3, $a2, 5
	sub.d	$a2, $a2, $a3
	bstrpick.d	$a3, $a0, 31, 24
	st.h	$a2, $s1, 4
	bnez	$a3, .LBB31_25
# %bb.24:
	slli.d	$a0, $a0, 8
	st.w	$a0, $s2, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 8
	ld.d	$a1, $s2, 16
.LBB31_25:
	ld.hu	$a2, $s1, 12
	bstrpick.d	$a3, $a0, 31, 11
	mul.d	$a3, $a3, $a2
	bstrpick.d	$a4, $a3, 31, 0
	add.d	$a1, $a1, $a4
	st.d	$a1, $s2, 16
	sub.w	$a0, $a0, $a3
	srli.d	$a3, $a2, 5
	sub.d	$a2, $a2, $a3
	bstrpick.d	$a3, $a0, 31, 24
	st.h	$a2, $s1, 12
	bnez	$a3, .LBB31_27
# %bb.26:
	slli.d	$a0, $a0, 8
	st.w	$a0, $s2, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 8
	ld.d	$a1, $s2, 16
.LBB31_27:
	ld.hu	$a2, $s1, 28
	bstrpick.d	$a3, $a0, 31, 11
	mul.d	$a3, $a3, $a2
	bstrpick.d	$a4, $a3, 31, 0
	add.d	$a1, $a1, $a4
	st.d	$a1, $s2, 16
	sub.w	$a0, $a0, $a3
	srli.d	$a1, $a2, 5
	sub.d	$a1, $a2, $a1
	st.w	$a0, $s2, 8
	bstrpick.d	$a2, $a0, 31, 24
	st.h	$a1, $s1, 28
	bnez	$a2, .LBB31_29
# %bb.28:
	slli.d	$a0, $a0, 8
	st.w	$a0, $s0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
.LBB31_29:                              # %WriteEndMarker.exit
	ori	$a0, $s4, 2384
	add.d	$s0, $fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 40
	beqz	$a0, .LBB31_31
# %bb.30:                               # %RangeEnc_FlushStream.exit
	ld.w	$a0, $s3, 76
	bnez	$a0, .LBB31_39
	b	.LBB31_34
.LBB31_31:
	ld.d	$a0, $s3, 24
	ld.d	$a2, $s3, 0
	ld.d	$a1, $s3, 16
	ld.d	$a3, $a0, 0
	sub.d	$s0, $a2, $a1
	move	$a2, $s0
	jirl	$ra, $a3, 0
	beq	$s0, $a0, .LBB31_33
# %bb.32:
	ori	$a0, $zero, 9
	st.w	$a0, $s3, 40
.LBB31_33:
	ld.d	$a0, $s3, 32
	ld.d	$a1, $s3, 16
	add.d	$a0, $a0, $s0
	st.d	$a0, $s3, 32
	st.d	$a1, $s3, 0
	ld.w	$a0, $s3, 76
	bnez	$a0, .LBB31_39
.LBB31_34:
	ld.w	$a0, $s3, 40
	beqz	$a0, .LBB31_36
# %bb.35:                               # %.thread15.i
	ld.w	$a1, $fp, 1696
	ori	$a0, $zero, 9
	st.w	$a0, $s3, 76
	bnez	$a1, .LBB31_37
	b	.LBB31_38
.LBB31_36:
	ld.w	$a0, $fp, 1696
	beqz	$a0, .LBB31_40
.LBB31_37:                              # %.thread.i
	ori	$a0, $zero, 8
	st.w	$a0, $s3, 76
.LBB31_38:                              # %.thread19.i
	ori	$a1, $zero, 1
	st.w	$a1, $s2, 100
.LBB31_39:                              # %CheckErrors.exit
	ld.d	$s7, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB31_40:
	move	$a0, $zero
	b	.LBB31_39
.Lfunc_end31:
	.size	Flush, .Lfunc_end31-Flush
                                        # -- End function
	.p2align	5                               # -- Begin function LenEnc_Encode2
	.type	LenEnc_Encode2,@function
LenEnc_Encode2:                         # @LenEnc_Encode2
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a1
	ld.wu	$a7, $a1, 0
	move	$fp, $a0
	ld.hu	$a6, $a0, 0
	move	$s0, $a5
	move	$s3, $a4
	move	$s1, $a3
	move	$s4, $a2
	srli.d	$a0, $a7, 11
	ori	$a2, $zero, 7
	mul.d	$a1, $a0, $a6
	bltu	$a2, $s4, .LBB32_5
# %bb.1:
	ori	$a0, $zero, 2048
	sub.d	$a0, $a0, $a6
	srli.d	$a0, $a0, 5
	add.d	$a0, $a6, $a0
	bstrpick.d	$a2, $a1, 31, 24
	st.h	$a0, $fp, 0
	bnez	$a2, .LBB32_3
# %bb.2:
	slli.d	$a0, $a1, 8
	st.w	$a0, $s2, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
.LBB32_3:                               # %RangeEnc_EncodeBit.exit.i
	slli.d	$a0, $s1, 4
	bstrpick.d	$a0, $a0, 32, 4
	alsl.d	$a0, $a0, $fp, 4
	ld.hu	$a2, $a0, 6
	addi.d	$s5, $a0, 4
	bstrpick.d	$a0, $a1, 31, 11
	ori	$a3, $zero, 3
	mul.d	$a0, $a0, $a2
	bltu	$a3, $s4, .LBB32_11
.LBB32_4:
	ori	$a1, $zero, 2048
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 31, 5
	add.d	$a1, $a1, $a2
	bstrpick.d	$s6, $s4, 31, 2
	bstrpick.d	$a2, $a0, 31, 24
	st.h	$a1, $s5, 2
	beqz	$a2, .LBB32_12
	b	.LBB32_13
.LBB32_5:
	ld.d	$a0, $s2, 8
	bstrpick.d	$a2, $a1, 31, 0
	add.d	$a0, $a0, $a2
	st.d	$a0, $s2, 8
	sub.w	$a0, $a7, $a1
	srli.d	$a1, $a6, 5
	sub.d	$a1, $a6, $a1
	bstrpick.d	$a2, $a0, 31, 24
	st.h	$a1, $fp, 0
	bnez	$a2, .LBB32_7
# %bb.6:
	slli.d	$a0, $a0, 8
	st.w	$a0, $s2, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
.LBB32_7:                               # %RangeEnc_EncodeBit.exit20.i
	ld.hu	$a2, $fp, 2
	bstrpick.d	$a1, $a0, 31, 11
	ori	$a3, $zero, 15
	mul.d	$a1, $a1, $a2
	bltu	$a3, $s4, .LBB32_25
# %bb.8:
	ori	$a0, $zero, 2048
	sub.d	$a0, $a0, $a2
	srli.d	$a0, $a0, 5
	add.d	$a0, $a2, $a0
	bstrpick.d	$a2, $a1, 31, 24
	st.h	$a0, $fp, 2
	bnez	$a2, .LBB32_10
# %bb.9:
	slli.d	$a0, $a1, 8
	st.w	$a0, $s2, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
.LBB32_10:                              # %RangeEnc_EncodeBit.exit21.i
	slli.d	$a0, $s1, 4
	bstrpick.d	$a0, $a0, 32, 4
	alsl.d	$a0, $a0, $fp, 4
	ld.hu	$a2, $a0, 262
	addi.d	$s5, $a0, 260
	bstrpick.d	$a0, $a1, 31, 11
	andi	$a3, $s4, 4
	mul.d	$a0, $a0, $a2
	beqz	$a3, .LBB32_4
.LBB32_11:
	ld.d	$a3, $s2, 8
	bstrpick.d	$a4, $a0, 31, 0
	add.d	$a3, $a3, $a4
	st.d	$a3, $s2, 8
	sub.w	$a0, $a1, $a0
	srli.d	$a1, $a2, 5
	sub.d	$a1, $a2, $a1
	bstrpick.d	$s6, $s4, 31, 2
	bstrpick.d	$a2, $a0, 31, 24
	st.h	$a1, $s5, 2
	bnez	$a2, .LBB32_13
.LBB32_12:
	slli.d	$a0, $a0, 8
	st.w	$a0, $s2, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
.LBB32_13:                              # %RangeEnc_EncodeBit.exit.i.i
	ori	$s6, $s6, 2
	addi.w	$a1, $s6, 0
	slli.d	$a2, $a1, 1
	ldx.hu	$a3, $s5, $a2
	bstrpick.d	$s7, $s4, 1, 1
	alsl.d	$a2, $a1, $s5, 1
	bstrpick.d	$a1, $a0, 31, 11
	mul.d	$a1, $a1, $a3
	bnez	$s7, .LBB32_15
# %bb.14:
	ori	$a0, $zero, 2048
	sub.d	$a0, $a0, $a3
	bstrpick.d	$a0, $a0, 31, 5
	add.d	$a0, $a0, $a3
	bstrpick.d	$a3, $a1, 31, 24
	st.h	$a0, $a2, 0
	beqz	$a3, .LBB32_16
	b	.LBB32_17
.LBB32_15:
	ld.d	$a4, $s2, 8
	bstrpick.d	$a5, $a1, 31, 0
	add.d	$a4, $a4, $a5
	st.d	$a4, $s2, 8
	sub.w	$a1, $a0, $a1
	srli.d	$a0, $a3, 5
	sub.d	$a0, $a3, $a0
	bstrpick.d	$a3, $a1, 31, 24
	st.h	$a0, $a2, 0
	bnez	$a3, .LBB32_17
.LBB32_16:
	slli.d	$a0, $a1, 8
	st.w	$a0, $s2, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
.LBB32_17:                              # %RangeEnc_EncodeBit.exit.i.1.i
	slli.w	$a0, $s6, 1
	or	$a0, $a0, $s7
	slli.d	$a2, $a0, 1
	ldx.hu	$a3, $s5, $a2
	andi	$a4, $s4, 1
	alsl.d	$a2, $a0, $s5, 1
	bstrpick.d	$a0, $a1, 31, 11
	mul.d	$a0, $a0, $a3
	bnez	$a4, .LBB32_19
# %bb.18:
	ori	$a1, $zero, 2048
	sub.d	$a1, $a1, $a3
	bstrpick.d	$a1, $a1, 31, 5
	add.d	$a1, $a1, $a3
	b	.LBB32_20
.LBB32_19:
	ld.d	$a4, $s2, 8
	bstrpick.d	$a5, $a0, 31, 0
	add.d	$a4, $a4, $a5
	st.d	$a4, $s2, 8
	sub.w	$a0, $a1, $a0
	srli.d	$a1, $a3, 5
	sub.d	$a1, $a3, $a1
.LBB32_20:
	st.w	$a0, $s2, 0
	bstrpick.d	$a3, $a0, 31, 24
	st.h	$a1, $a2, 0
	bnez	$a3, .LBB32_22
.LBB32_21:                              # %RcTree_Encode.exit.sink.split.i
	slli.d	$a0, $a0, 8
	st.w	$a0, $s2, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
.LBB32_22:                              # %LenEnc_Encode.exit
	beqz	$s3, .LBB32_24
# %bb.23:
	bstrpick.d	$a0, $s1, 31, 0
	alsl.d	$a0, $a0, $fp, 2
	lu12i.w	$a1, 4
	ori	$a1, $a1, 2056
	ldx.w	$a1, $a0, $a1
	addi.w	$a1, $a1, -1
	stptr.w	$a1, $a0, 18440
	beqz	$a1, .LBB32_29
.LBB32_24:
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB32_25:
	ld.d	$a3, $s2, 8
	bstrpick.d	$a4, $a1, 31, 0
	add.d	$a3, $a3, $a4
	st.d	$a3, $s2, 8
	sub.w	$a1, $a0, $a1
	srli.d	$a0, $a2, 5
	sub.d	$a0, $a2, $a0
	bstrpick.d	$a2, $a1, 31, 24
	st.h	$a0, $fp, 2
	bnez	$a2, .LBB32_27
# %bb.26:
	slli.d	$a0, $a1, 8
	st.w	$a0, $s2, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
.LBB32_27:                              # %RangeEnc_EncodeBit.exit29.i
	ld.hu	$a3, $fp, 518
	addi.d	$a2, $s4, -16
	bstrpick.d	$s7, $a2, 7, 7
	bstrpick.d	$a0, $a1, 31, 11
	mul.d	$a0, $a0, $a3
	bnez	$s7, .LBB32_30
# %bb.28:
	ori	$a1, $zero, 2048
	sub.d	$a1, $a1, $a3
	bstrpick.d	$a1, $a1, 31, 5
	add.d	$a1, $a1, $a3
	b	.LBB32_31
.LBB32_29:
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(LenPriceEnc_UpdateTable)
	jr	$t8
.LBB32_30:
	ld.d	$a4, $s2, 8
	bstrpick.d	$a5, $a0, 31, 0
	add.d	$a4, $a4, $a5
	st.d	$a4, $s2, 8
	sub.w	$a0, $a1, $a0
	srli.d	$a1, $a3, 5
	sub.d	$a1, $a3, $a1
.LBB32_31:
	addi.d	$s5, $fp, 516
	addi.w	$s6, $a2, 0
	bstrpick.d	$a2, $a0, 31, 24
	st.h	$a1, $fp, 518
	bnez	$a2, .LBB32_33
# %bb.32:
	slli.d	$a0, $a0, 8
	st.w	$a0, $s2, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
.LBB32_33:                              # %RangeEnc_EncodeBit.exit.i34.i
	ori	$s7, $s7, 2
	slli.d	$a1, $s7, 1
	ldx.hu	$a3, $s5, $a1
	bstrpick.d	$s8, $s6, 6, 6
	alsl.d	$a2, $s7, $s5, 1
	bstrpick.d	$a1, $a0, 31, 11
	mul.d	$a1, $a1, $a3
	bnez	$s8, .LBB32_35
# %bb.34:
	ori	$a0, $zero, 2048
	sub.d	$a0, $a0, $a3
	bstrpick.d	$a0, $a0, 31, 5
	add.d	$a0, $a0, $a3
	bstrpick.d	$a3, $a1, 31, 24
	st.h	$a0, $a2, 0
	beqz	$a3, .LBB32_36
	b	.LBB32_37
.LBB32_35:
	ld.d	$a4, $s2, 8
	bstrpick.d	$a5, $a1, 31, 0
	add.d	$a4, $a4, $a5
	st.d	$a4, $s2, 8
	sub.w	$a1, $a0, $a1
	srli.d	$a0, $a3, 5
	sub.d	$a0, $a3, $a0
	bstrpick.d	$a3, $a1, 31, 24
	st.h	$a0, $a2, 0
	bnez	$a3, .LBB32_37
.LBB32_36:
	slli.d	$a0, $a1, 8
	st.w	$a0, $s2, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
.LBB32_37:                              # %RangeEnc_EncodeBit.exit.i34.1.i
	slli.w	$a0, $s7, 1
	or	$s7, $a0, $s8
	slli.d	$a0, $s7, 1
	ldx.hu	$a3, $s5, $a0
	bstrpick.d	$s8, $s6, 5, 5
	alsl.d	$a2, $s7, $s5, 1
	bstrpick.d	$a0, $a1, 31, 11
	mul.d	$a0, $a0, $a3
	bnez	$s8, .LBB32_39
# %bb.38:
	ori	$a1, $zero, 2048
	sub.d	$a1, $a1, $a3
	bstrpick.d	$a1, $a1, 31, 5
	add.d	$a1, $a1, $a3
	bstrpick.d	$a3, $a0, 31, 24
	st.h	$a1, $a2, 0
	beqz	$a3, .LBB32_40
	b	.LBB32_41
.LBB32_39:
	ld.d	$a4, $s2, 8
	bstrpick.d	$a5, $a0, 31, 0
	add.d	$a4, $a4, $a5
	st.d	$a4, $s2, 8
	sub.w	$a0, $a1, $a0
	srli.d	$a1, $a3, 5
	sub.d	$a1, $a3, $a1
	bstrpick.d	$a3, $a0, 31, 24
	st.h	$a1, $a2, 0
	bnez	$a3, .LBB32_41
.LBB32_40:
	slli.d	$a0, $a0, 8
	st.w	$a0, $s2, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
.LBB32_41:                              # %RangeEnc_EncodeBit.exit.i34.2.i
	slli.w	$a1, $s7, 1
	or	$s7, $a1, $s8
	slli.d	$a1, $s7, 1
	ldx.hu	$a3, $s5, $a1
	bstrpick.d	$s6, $s6, 4, 4
	alsl.d	$a2, $s7, $s5, 1
	bstrpick.d	$a1, $a0, 31, 11
	mul.d	$a1, $a1, $a3
	bnez	$s6, .LBB32_43
# %bb.42:
	ori	$a0, $zero, 2048
	sub.d	$a0, $a0, $a3
	bstrpick.d	$a0, $a0, 31, 5
	add.d	$a0, $a0, $a3
	bstrpick.d	$a3, $a1, 31, 24
	st.h	$a0, $a2, 0
	beqz	$a3, .LBB32_44
	b	.LBB32_45
.LBB32_43:
	ld.d	$a4, $s2, 8
	bstrpick.d	$a5, $a1, 31, 0
	add.d	$a4, $a4, $a5
	st.d	$a4, $s2, 8
	sub.w	$a1, $a0, $a1
	srli.d	$a0, $a3, 5
	sub.d	$a0, $a3, $a0
	bstrpick.d	$a3, $a1, 31, 24
	st.h	$a0, $a2, 0
	bnez	$a3, .LBB32_45
.LBB32_44:
	slli.d	$a0, $a1, 8
	st.w	$a0, $s2, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
.LBB32_45:                              # %RangeEnc_EncodeBit.exit.i34.3.i
	slli.w	$a0, $s7, 1
	or	$s6, $a0, $s6
	slli.d	$a0, $s6, 1
	ldx.hu	$a3, $s5, $a0
	bstrpick.d	$s7, $s4, 3, 3
	alsl.d	$a2, $s6, $s5, 1
	bstrpick.d	$a0, $a1, 31, 11
	mul.d	$a0, $a0, $a3
	bnez	$s7, .LBB32_47
# %bb.46:
	ori	$a1, $zero, 2048
	sub.d	$a1, $a1, $a3
	bstrpick.d	$a1, $a1, 31, 5
	add.d	$a1, $a1, $a3
	bstrpick.d	$a3, $a0, 31, 24
	st.h	$a1, $a2, 0
	beqz	$a3, .LBB32_48
	b	.LBB32_49
.LBB32_47:
	ld.d	$a4, $s2, 8
	bstrpick.d	$a5, $a0, 31, 0
	add.d	$a4, $a4, $a5
	st.d	$a4, $s2, 8
	sub.w	$a0, $a1, $a0
	srli.d	$a1, $a3, 5
	sub.d	$a1, $a3, $a1
	bstrpick.d	$a3, $a0, 31, 24
	st.h	$a1, $a2, 0
	bnez	$a3, .LBB32_49
.LBB32_48:
	slli.d	$a0, $a0, 8
	st.w	$a0, $s2, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
.LBB32_49:                              # %RangeEnc_EncodeBit.exit.i34.4.i
	slli.w	$a1, $s6, 1
	or	$s6, $a1, $s7
	slli.d	$a1, $s6, 1
	ldx.hu	$a3, $s5, $a1
	bstrpick.d	$s7, $s4, 2, 2
	alsl.d	$a2, $s6, $s5, 1
	bstrpick.d	$a1, $a0, 31, 11
	mul.d	$a1, $a1, $a3
	bnez	$s7, .LBB32_51
# %bb.50:
	ori	$a0, $zero, 2048
	sub.d	$a0, $a0, $a3
	bstrpick.d	$a0, $a0, 31, 5
	add.d	$a0, $a0, $a3
	bstrpick.d	$a3, $a1, 31, 24
	st.h	$a0, $a2, 0
	beqz	$a3, .LBB32_52
	b	.LBB32_53
.LBB32_51:
	ld.d	$a4, $s2, 8
	bstrpick.d	$a5, $a1, 31, 0
	add.d	$a4, $a4, $a5
	st.d	$a4, $s2, 8
	sub.w	$a1, $a0, $a1
	srli.d	$a0, $a3, 5
	sub.d	$a0, $a3, $a0
	bstrpick.d	$a3, $a1, 31, 24
	st.h	$a0, $a2, 0
	bnez	$a3, .LBB32_53
.LBB32_52:
	slli.d	$a0, $a1, 8
	st.w	$a0, $s2, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
.LBB32_53:                              # %RangeEnc_EncodeBit.exit.i34.5.i
	slli.w	$a0, $s6, 1
	or	$s6, $a0, $s7
	slli.d	$a0, $s6, 1
	ldx.hu	$a3, $s5, $a0
	bstrpick.d	$s7, $s4, 1, 1
	alsl.d	$a0, $s6, $s5, 1
	bstrpick.d	$a2, $a1, 31, 11
	mul.d	$a2, $a2, $a3
	bnez	$s7, .LBB32_55
# %bb.54:
	ori	$a1, $zero, 2048
	sub.d	$a1, $a1, $a3
	bstrpick.d	$a1, $a1, 31, 5
	add.d	$a1, $a1, $a3
	bstrpick.d	$a3, $a2, 31, 24
	st.h	$a1, $a0, 0
	beqz	$a3, .LBB32_56
	b	.LBB32_57
.LBB32_55:
	ld.d	$a4, $s2, 8
	bstrpick.d	$a5, $a2, 31, 0
	add.d	$a4, $a4, $a5
	st.d	$a4, $s2, 8
	sub.w	$a2, $a1, $a2
	srli.d	$a1, $a3, 5
	sub.d	$a1, $a3, $a1
	bstrpick.d	$a3, $a2, 31, 24
	st.h	$a1, $a0, 0
	bnez	$a3, .LBB32_57
.LBB32_56:
	slli.d	$a0, $a2, 8
	st.w	$a0, $s2, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(RangeEnc_ShiftLow)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 0
.LBB32_57:                              # %RangeEnc_EncodeBit.exit.i34.6.i
	slli.w	$a0, $s6, 1
	or	$a0, $a0, $s7
	slli.d	$a1, $a0, 1
	ldx.hu	$a3, $s5, $a1
	andi	$a4, $s4, 1
	alsl.d	$a1, $a0, $s5, 1
	bstrpick.d	$a0, $a2, 31, 11
	mul.d	$a0, $a0, $a3
	bnez	$a4, .LBB32_59
# %bb.58:
	ori	$a2, $zero, 2048
	sub.d	$a2, $a2, $a3
	bstrpick.d	$a2, $a2, 31, 5
	add.d	$a2, $a2, $a3
	st.w	$a0, $s2, 0
	bstrpick.d	$a3, $a0, 31, 24
	st.h	$a2, $a1, 0
	beqz	$a3, .LBB32_21
	b	.LBB32_22
.LBB32_59:
	ld.d	$a4, $s2, 8
	bstrpick.d	$a5, $a0, 31, 0
	add.d	$a4, $a4, $a5
	st.d	$a4, $s2, 8
	sub.w	$a0, $a2, $a0
	srli.d	$a2, $a3, 5
	sub.d	$a2, $a3, $a2
	st.w	$a0, $s2, 0
	bstrpick.d	$a3, $a0, 31, 24
	st.h	$a2, $a1, 0
	beqz	$a3, .LBB32_21
	b	.LBB32_22
.Lfunc_end32:
	.size	LenEnc_Encode2, .Lfunc_end32-LenEnc_Encode2
                                        # -- End function
	.p2align	5                               # -- Begin function RangeEnc_ShiftLow
	.type	RangeEnc_ShiftLow,@function
RangeEnc_ShiftLow:                      # @RangeEnc_ShiftLow
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	srli.d	$a1, $a0, 24
	ori	$a2, $zero, 255
	bne	$a1, $a2, .LBB33_2
# %bb.1:                                # %._crit_edge
	ld.d	$a1, $fp, 16
	addi.d	$a1, $a1, 1
	b	.LBB33_16
.LBB33_2:                               # %.peel.begin
	ld.b	$a1, $fp, 4
	ld.d	$a2, $fp, 24
	srli.d	$a0, $a0, 32
	add.d	$a0, $a1, $a0
	st.b	$a0, $a2, 0
	ld.d	$a0, $fp, 32
	addi.d	$a2, $a2, 1
	st.d	$a2, $fp, 24
	bne	$a2, $a0, .LBB33_7
# %bb.3:
	ld.w	$a0, $fp, 64
	bnez	$a0, .LBB33_7
# %bb.4:
	ld.d	$a0, $fp, 48
	ld.d	$a1, $fp, 40
	ld.d	$a3, $a0, 0
	sub.d	$s0, $a2, $a1
	move	$a2, $s0
	jirl	$ra, $a3, 0
	beq	$s0, $a0, .LBB33_6
# %bb.5:
	ori	$a0, $zero, 9
	st.w	$a0, $fp, 64
.LBB33_6:
	ld.d	$a0, $fp, 56
	ld.d	$a2, $fp, 40
	add.d	$a0, $a0, $s0
	st.d	$a0, $fp, 56
	st.d	$a2, $fp, 24
.LBB33_7:                               # %RangeEnc_FlushStream.exit.peel
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 16
	beqz	$a0, .LBB33_15
# %bb.8:                                # %.peel.next.preheader
	ori	$s1, $zero, 9
	b	.LBB33_11
.LBB33_9:                               #   in Loop: Header=BB33_11 Depth=1
	ld.d	$a0, $fp, 56
	ld.d	$a2, $fp, 40
	add.d	$a0, $a0, $s0
	st.d	$a0, $fp, 56
	st.d	$a2, $fp, 24
	.p2align	4, , 16
.LBB33_10:                              # %RangeEnc_FlushStream.exit
                                        #   in Loop: Header=BB33_11 Depth=1
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 16
	beqz	$a0, .LBB33_15
.LBB33_11:                              # %.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a0, $fp, 12
	addi.d	$a0, $a0, -1
	st.b	$a0, $a2, 0
	ld.d	$a0, $fp, 32
	addi.d	$a2, $a2, 1
	st.d	$a2, $fp, 24
	bne	$a2, $a0, .LBB33_10
# %bb.12:                               #   in Loop: Header=BB33_11 Depth=1
	ld.w	$a0, $fp, 64
	bnez	$a0, .LBB33_10
# %bb.13:                               #   in Loop: Header=BB33_11 Depth=1
	ld.d	$a0, $fp, 48
	ld.d	$a1, $fp, 40
	ld.d	$a3, $a0, 0
	sub.d	$s0, $a2, $a1
	move	$a2, $s0
	jirl	$ra, $a3, 0
	beq	$s0, $a0, .LBB33_9
# %bb.14:                               #   in Loop: Header=BB33_11 Depth=1
	st.w	$s1, $fp, 64
	b	.LBB33_9
.LBB33_15:                              # %.loopexit
	ld.d	$a0, $fp, 8
	srli.d	$a1, $a0, 24
	st.b	$a1, $fp, 4
	ori	$a1, $zero, 1
.LBB33_16:
	st.d	$a1, $fp, 16
	slli.d	$a0, $a0, 8
	bstrpick.d	$a0, $a0, 31, 8
	slli.d	$a0, $a0, 8
	st.d	$a0, $fp, 8
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end33:
	.size	RangeEnc_ShiftLow, .Lfunc_end33-RangeEnc_ShiftLow
                                        # -- End function
	.p2align	5                               # -- Begin function LitEnc_GetPriceMatched
	.type	LitEnc_GetPriceMatched,@function
LitEnc_GetPriceMatched:                 # @LitEnc_GetPriceMatched
# %bb.0:
	move	$a4, $zero
	ori	$a6, $a1, 256
	ori	$a1, $zero, 256
	lu12i.w	$a5, 3
	ori	$a5, $a5, 4092
	.p2align	4, , 16
.LBB34_1:                               # =>This Inner Loop Header: Depth=1
	slli.d	$a2, $a2, 1
	and	$a7, $a1, $a2
	bstrpick.d	$t0, $a6, 31, 8
	add.d	$t0, $a1, $t0
	add.w	$a7, $t0, $a7
	slli.d	$a7, $a7, 1
	ldx.h	$a7, $a0, $a7
	slli.d	$t0, $a6, 56
	srai.d	$t0, $t0, 63
	andi	$t0, $t0, 2032
	xor	$a7, $t0, $a7
	srli.d	$a7, $a7, 2
	and	$a7, $a7, $a5
	ldx.w	$a7, $a3, $a7
	add.w	$a4, $a7, $a4
	bstrpick.d	$a7, $a6, 31, 15
	slli.d	$a6, $a6, 1
	xor	$t0, $a2, $a6
	andn	$a1, $a1, $t0
	beqz	$a7, .LBB34_1
# %bb.2:
	move	$a0, $a4
	ret
.Lfunc_end34:
	.size	LitEnc_GetPriceMatched, .Lfunc_end34-LitEnc_GetPriceMatched
                                        # -- End function
	.type	kLiteralNextStates,@object      # @kLiteralNextStates
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
kLiteralNextStates:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	4                               # 0x4
	.word	5                               # 0x5
	.size	kLiteralNextStates, 48

	.type	kShortRepNextStates,@object     # @kShortRepNextStates
	.p2align	2, 0x0
kShortRepNextStates:
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	11                              # 0xb
	.word	11                              # 0xb
	.word	11                              # 0xb
	.word	11                              # 0xb
	.word	11                              # 0xb
	.size	kShortRepNextStates, 48

	.type	kRepNextStates,@object          # @kRepNextStates
	.p2align	2, 0x0
kRepNextStates:
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	11                              # 0xb
	.word	11                              # 0xb
	.word	11                              # 0xb
	.word	11                              # 0xb
	.word	11                              # 0xb
	.size	kRepNextStates, 48

	.type	kMatchNextStates,@object        # @kMatchNextStates
	.p2align	2, 0x0
kMatchNextStates:
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	10                              # 0xa
	.size	kMatchNextStates, 48

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym MyWrite
