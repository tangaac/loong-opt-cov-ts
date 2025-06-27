	.file	"pr36034-1.c"
	.text
	.globl	test                            # -- Begin function test
	.p2align	5
	.type	test,@function
test:                                   # @test
# %bb.0:
	pcalau12i	$a0, %pc_hi20(x)
	addi.d	$a0, $a0, %pc_lo12(x)
	vld	$vr0, $a0, 0
	pcalau12i	$a1, %pc_hi20(tmp)
	vld	$vr1, $a0, 16
	vld	$vr2, $a0, 32
	addi.d	$a1, $a1, %pc_lo12(tmp)
	vst	$vr0, $a1, 0
	vst	$vr1, $a1, 16
	vst	$vr2, $a1, 32
	vld	$vr0, $a0, 80
	vld	$vr1, $a0, 96
	vld	$vr2, $a0, 112
	vld	$vr3, $a0, 160
	vst	$vr0, $a1, 48
	vst	$vr1, $a1, 64
	vst	$vr2, $a1, 80
	vst	$vr3, $a1, 96
	vld	$vr0, $a0, 176
	vld	$vr1, $a0, 192
	vld	$vr2, $a0, 240
	vld	$vr3, $a0, 256
	vst	$vr0, $a1, 112
	vst	$vr1, $a1, 128
	vst	$vr2, $a1, 144
	vst	$vr3, $a1, 160
	vld	$vr0, $a0, 272
	vld	$vr1, $a0, 320
	vld	$vr2, $a0, 336
	vld	$vr3, $a0, 352
	vst	$vr0, $a1, 176
	vst	$vr1, $a1, 192
	vst	$vr2, $a1, 208
	vst	$vr3, $a1, 224
	ret
.Lfunc_end0:
	.size	test, .Lfunc_end0-test
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %.preheader
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(test)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(tmp)
	addi.d	$a0, $a0, %pc_lo12(tmp)
	vld	$vr0, $a0, 64
	vld	$vr2, $a0, 80
	vld	$vr3, $a0, 96
	vld	$vr4, $a0, 112
	vld	$vr5, $a0, 0
	vld	$vr6, $a0, 16
	vld	$vr7, $a0, 32
	vld	$vr8, $a0, 48
	lu52i.d	$a1, $zero, -1025
	vreplgr2vr.d	$vr9, $a1
	vfcmp.ceq.d	$vr1, $vr0, $vr9
	vfcmp.ceq.d	$vr0, $vr2, $vr9
	vpickev.w	$vr0, $vr0, $vr1
	vfcmp.ceq.d	$vr2, $vr3, $vr9
	vfcmp.ceq.d	$vr3, $vr4, $vr9
	vpickev.w	$vr2, $vr3, $vr2
	vpickev.h	$vr0, $vr2, $vr0
	vfcmp.ceq.d	$vr2, $vr5, $vr9
	vfcmp.ceq.d	$vr3, $vr6, $vr9
	vpickev.w	$vr2, $vr3, $vr2
	vfcmp.ceq.d	$vr3, $vr7, $vr9
	vfcmp.ceq.d	$vr4, $vr8, $vr9
	vpickev.w	$vr3, $vr4, $vr3
	vpickev.h	$vr2, $vr3, $vr2
	vpickve2gr.b	$a1, $vr2, 14
	vpickve2gr.b	$a2, $vr2, 12
	vpickve2gr.b	$a3, $vr2, 10
	vpickve2gr.b	$a4, $vr2, 8
	vpickve2gr.b	$a5, $vr2, 6
	vpickve2gr.b	$a6, $vr2, 4
	vpickve2gr.b	$a7, $vr2, 2
	vpickve2gr.b	$t0, $vr2, 0
	vld	$vr2, $a0, 128
	vld	$vr3, $a0, 144
	vld	$vr4, $a0, 160
	vld	$vr5, $a0, 176
	vfcmp.ceq.d	$vr2, $vr2, $vr9
	vfcmp.ceq.d	$vr3, $vr3, $vr9
	vpickev.w	$vr2, $vr3, $vr2
	vfcmp.ceq.d	$vr3, $vr4, $vr9
	vfcmp.ceq.d	$vr4, $vr5, $vr9
	vld	$vr5, $a0, 192
	vpickev.w	$vr3, $vr4, $vr3
	vld	$vr4, $a0, 208
	vpickev.h	$vr2, $vr3, $vr2
	vfcmp.ceq.d	$vr3, $vr5, $vr9
	fld.d	$fa5, $a0, 224
	vfcmp.ceq.d	$vr4, $vr4, $vr9
	vpickev.w	$vr3, $vr4, $vr3
	vldi	$vr4, -784
	fcmp.ceq.d	$fcc0, $fa5, $fa4
	vinsgr2vr.h	$vr4, $t0, 0
	vinsgr2vr.h	$vr4, $a7, 1
	vinsgr2vr.h	$vr4, $a6, 2
	vinsgr2vr.h	$vr4, $a5, 3
	vinsgr2vr.h	$vr4, $a4, 4
	vinsgr2vr.h	$vr4, $a3, 5
	vinsgr2vr.h	$vr4, $a2, 6
	vinsgr2vr.h	$vr4, $a1, 7
	vor.v	$vr2, $vr4, $vr2
	vpickve2gr.h	$a1, $vr2, 7
	vpickve2gr.h	$a2, $vr2, 6
	vpickve2gr.h	$a3, $vr2, 5
	vpickve2gr.h	$a4, $vr2, 4
	vpickve2gr.h	$a5, $vr2, 3
	vpickve2gr.h	$a6, $vr2, 2
	vpickve2gr.h	$a7, $vr2, 1
	vpickve2gr.h	$t0, $vr2, 0
	vinsgr2vr.w	$vr2, $t0, 0
	vinsgr2vr.w	$vr2, $a7, 1
	vinsgr2vr.w	$vr2, $a6, 2
	vinsgr2vr.w	$vr2, $a5, 3
	vor.v	$vr2, $vr2, $vr3
	vpickve2gr.w	$a5, $vr2, 3
	vpickve2gr.w	$a6, $vr2, 2
	vpickve2gr.w	$a7, $vr2, 0
	vpickve2gr.w	$t0, $vr2, 1
	andi	$t0, $t0, 1
	bstrins.d	$a7, $t0, 63, 1
	bstrins.d	$a7, $a6, 2, 2
	bstrins.d	$a7, $a5, 3, 3
	bstrins.d	$a7, $a4, 4, 4
	bstrins.d	$a7, $a3, 5, 5
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a2, $a7, $a2
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 7
	or	$a1, $a2, $a1
	vpickve2gr.b	$a2, $vr1, 0
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 8
	or	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr0, 2
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 9
	or	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr0, 4
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 10
	or	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr0, 6
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 11
	or	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr0, 8
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 12
	or	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr0, 10
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 13
	or	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr0, 12
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 14
	or	$a1, $a1, $a2
	vpickve2gr.b	$a2, $vr0, 14
	slli.d	$a2, $a2, 15
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	sltu	$a1, $zero, $a1
	movcf2gr	$a2, $fcc0
	or	$a1, $a1, $a2
	bnez	$a1, .LBB1_3
# %bb.1:                                # %.preheader
	fld.d	$fa0, $a0, 232
	vldi	$vr1, -784
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_3
# %bb.2:
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB1_3:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	x,@object                       # @x
	.data
	.globl	x
	.p2align	4, 0x0
x:
	.dword	0x4024000000000000              # double 10
	.dword	0x4026000000000000              # double 11
	.dword	0x4028000000000000              # double 12
	.dword	0x402a000000000000              # double 13
	.dword	0x402c000000000000              # double 14
	.dword	0x402e000000000000              # double 15
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0x4035000000000000              # double 21
	.dword	0x4036000000000000              # double 22
	.dword	0x4037000000000000              # double 23
	.dword	0x4038000000000000              # double 24
	.dword	0x4039000000000000              # double 25
	.dword	0x403a000000000000              # double 26
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0x4040000000000000              # double 32
	.dword	0x4040800000000000              # double 33
	.dword	0x4041000000000000              # double 34
	.dword	0x4041800000000000              # double 35
	.dword	0x4042000000000000              # double 36
	.dword	0x4042800000000000              # double 37
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0x4045800000000000              # double 43
	.dword	0x4046000000000000              # double 44
	.dword	0x4046800000000000              # double 45
	.dword	0x4047000000000000              # double 46
	.dword	0x4047800000000000              # double 47
	.dword	0x4048000000000000              # double 48
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0x404b000000000000              # double 54
	.dword	0x404b800000000000              # double 55
	.dword	0x404c000000000000              # double 56
	.dword	0x404c800000000000              # double 57
	.dword	0x404d000000000000              # double 58
	.dword	0x404d800000000000              # double 59
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.dword	0xbff0000000000000              # double -1
	.size	x, 400

	.type	tmp,@object                     # @tmp
	.bss
	.globl	tmp
	.p2align	7, 0x0
tmp:
	.space	240
	.size	tmp, 240

	.section	".note.GNU-stack","",@progbits
	.addrsig
