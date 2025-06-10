	.file	"pr36034-1.c"
	.text
	.globl	test                            # -- Begin function test
	.p2align	5
	.type	test,@function
test:                                   # @test
# %bb.0:
	pcalau12i	$a0, %pc_hi20(x)
	addi.d	$a0, $a0, %pc_lo12(x)
	xvld	$xr0, $a0, 0
	vld	$vr1, $a0, 32
	pcalau12i	$a1, %pc_hi20(tmp)
	addi.d	$a1, $a1, %pc_lo12(tmp)
	xvst	$xr0, $a1, 0
	vst	$vr1, $a1, 32
	xvld	$xr0, $a0, 80
	vld	$vr1, $a0, 112
	xvld	$xr2, $a0, 160
	vld	$vr3, $a0, 192
	xvst	$xr0, $a1, 48
	vst	$vr1, $a1, 80
	xvst	$xr2, $a1, 96
	vst	$vr3, $a1, 128
	xvld	$xr0, $a0, 240
	vld	$vr1, $a0, 272
	xvld	$xr2, $a0, 320
	vld	$vr3, $a0, 352
	xvst	$xr0, $a1, 144
	vst	$vr1, $a1, 176
	xvst	$xr2, $a1, 192
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
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(test)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(tmp)
	addi.d	$a0, $a0, %pc_lo12(tmp)
	xvld	$xr0, $a0, 32
	xvld	$xr1, $a0, 0
	xvld	$xr2, $a0, 96
	xvld	$xr3, $a0, 64
	lu52i.d	$a1, $zero, -1025
	xvreplgr2vr.d	$xr4, $a1
	xvfcmp.ceq.d	$xr0, $xr0, $xr4
	xvpickve2gr.d	$a1, $xr0, 3
	st.b	$a1, $sp, 7
	xvpickve2gr.d	$a1, $xr0, 2
	st.b	$a1, $sp, 6
	xvpickve2gr.d	$a1, $xr0, 1
	st.b	$a1, $sp, 5
	xvpickve2gr.d	$a1, $xr0, 0
	st.b	$a1, $sp, 4
	xvfcmp.ceq.d	$xr0, $xr1, $xr4
	xvpickve2gr.d	$a1, $xr0, 3
	st.b	$a1, $sp, 3
	xvpickve2gr.d	$a1, $xr0, 2
	st.b	$a1, $sp, 2
	xvpickve2gr.d	$a1, $xr0, 1
	st.b	$a1, $sp, 1
	xvpickve2gr.d	$a1, $xr0, 0
	st.b	$a1, $sp, 0
	xvfcmp.ceq.d	$xr0, $xr2, $xr4
	xvpickve2gr.d	$a1, $xr0, 3
	xvpickve2gr.d	$a2, $xr0, 2
	xvpickve2gr.d	$a3, $xr0, 1
	xvpickve2gr.d	$a4, $xr0, 0
	xvfcmp.ceq.d	$xr0, $xr3, $xr4
	xvpickve2gr.d	$a5, $xr0, 3
	xvpickve2gr.d	$a6, $xr0, 2
	xvpickve2gr.d	$a7, $xr0, 1
	xvld	$xr1, $a0, 128
	xvpickve2gr.d	$t0, $xr0, 0
	vld	$vr0, $sp, 0
	xvld	$xr2, $a0, 160
	xvfcmp.ceq.d	$xr3, $xr1, $xr4
	xvpickve2gr.d	$t1, $xr3, 0
	vinsgr2vr.h	$vr1, $t1, 0
	xvpickve2gr.d	$t1, $xr3, 1
	vinsgr2vr.h	$vr1, $t1, 1
	xvpickve2gr.d	$t1, $xr3, 2
	vinsgr2vr.h	$vr1, $t1, 2
	xvpickve2gr.d	$t1, $xr3, 3
	vinsgr2vr.h	$vr1, $t1, 3
	xvfcmp.ceq.d	$xr2, $xr2, $xr4
	xvpickve2gr.d	$t1, $xr2, 0
	vinsgr2vr.h	$vr1, $t1, 4
	xvpickve2gr.d	$t1, $xr2, 1
	vinsgr2vr.h	$vr1, $t1, 5
	xvpickve2gr.d	$t1, $xr2, 2
	xvld	$xr3, $a0, 192
	vinsgr2vr.h	$vr1, $t1, 6
	xvpickve2gr.d	$t1, $xr2, 3
	vinsgr2vr.h	$vr1, $t1, 7
	xvfcmp.ceq.d	$xr2, $xr3, $xr4
	xvpickve2gr.d	$t1, $xr2, 0
	vinsgr2vr.w	$vr3, $t1, 0
	xvpickve2gr.d	$t1, $xr2, 1
	vinsgr2vr.w	$vr3, $t1, 1
	xvpickve2gr.d	$t1, $xr2, 2
	vinsgr2vr.w	$vr3, $t1, 2
	fld.d	$fa4, $a0, 224
	xvpickve2gr.d	$t1, $xr2, 3
	vinsgr2vr.w	$vr3, $t1, 3
	vldi	$vr2, -784
	fcmp.ceq.d	$fcc0, $fa4, $fa2
	vpickve2gr.b	$t1, $vr0, 0
	vinsgr2vr.h	$vr2, $t1, 0
	vpickve2gr.b	$t1, $vr0, 1
	vinsgr2vr.h	$vr2, $t1, 1
	vpickve2gr.b	$t1, $vr0, 2
	vinsgr2vr.h	$vr2, $t1, 2
	vpickve2gr.b	$t1, $vr0, 3
	vinsgr2vr.h	$vr2, $t1, 3
	vpickve2gr.b	$t1, $vr0, 4
	vinsgr2vr.h	$vr2, $t1, 4
	vpickve2gr.b	$t1, $vr0, 5
	vinsgr2vr.h	$vr2, $t1, 5
	vpickve2gr.b	$t1, $vr0, 6
	vinsgr2vr.h	$vr2, $t1, 6
	vpickve2gr.b	$t1, $vr0, 7
	vinsgr2vr.h	$vr2, $t1, 7
	vor.v	$vr0, $vr2, $vr1
	vpickve2gr.h	$t1, $vr0, 7
	vpickve2gr.h	$t2, $vr0, 6
	vpickve2gr.h	$t3, $vr0, 5
	vpickve2gr.h	$t4, $vr0, 4
	vpickve2gr.h	$t5, $vr0, 3
	vpickve2gr.h	$t6, $vr0, 2
	vpickve2gr.h	$t7, $vr0, 1
	vpickve2gr.h	$t8, $vr0, 0
	vinsgr2vr.w	$vr0, $t8, 0
	vinsgr2vr.w	$vr0, $t7, 1
	vinsgr2vr.w	$vr0, $t6, 2
	vinsgr2vr.w	$vr0, $t5, 3
	vor.v	$vr0, $vr0, $vr3
	vpickve2gr.w	$t5, $vr0, 3
	vpickve2gr.w	$t6, $vr0, 2
	vpickve2gr.w	$t7, $vr0, 0
	vpickve2gr.w	$t8, $vr0, 1
	andi	$t8, $t8, 1
	bstrins.d	$t7, $t8, 63, 1
	bstrins.d	$t7, $t6, 2, 2
	bstrins.d	$t7, $t5, 3, 3
	bstrins.d	$t7, $t4, 4, 4
	bstrins.d	$t7, $t3, 5, 5
	andi	$t2, $t2, 1
	slli.d	$t2, $t2, 6
	or	$t2, $t7, $t2
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 7
	or	$t1, $t2, $t1
	andi	$t0, $t0, 1
	slli.d	$t0, $t0, 8
	or	$t0, $t1, $t0
	andi	$a7, $a7, 1
	slli.d	$a7, $a7, 9
	or	$a7, $t0, $a7
	andi	$a6, $a6, 1
	slli.d	$a6, $a6, 10
	or	$a6, $a7, $a6
	andi	$a5, $a5, 1
	slli.d	$a5, $a5, 11
	or	$a5, $a6, $a5
	andi	$a4, $a4, 1
	slli.d	$a4, $a4, 12
	or	$a4, $a5, $a4
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 13
	or	$a3, $a4, $a3
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 14
	or	$a2, $a3, $a2
	slli.d	$a1, $a1, 15
	or	$a1, $a2, $a1
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
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
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
	.p2align	5, 0x0
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
