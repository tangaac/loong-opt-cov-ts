	.file	"calc.c"
	.text
	.globl	calcSetup                       # -- Begin function calcSetup
	.p2align	5
	.type	calcSetup,@function
calcSetup:                              # @calcSetup
# %bb.0:
	ret
.Lfunc_end0:
	.size	calcSetup, .Lfunc_end0-calcSetup
                                        # -- End function
	.globl	calc                            # -- Begin function calc
	.p2align	5
	.type	calc,@function
calc:                                   # @calc
# %bb.0:
	srli.d	$a2, $a0, 3
	bstrins.d	$a2, $a1, 63, 5
	bstrins.d	$a0, $a1, 63, 3
	bstrpick.d	$a1, $a2, 31, 0
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(lookupTable5B)
	addi.d	$a2, $a2, %pc_lo12(lookupTable5B)
	ldx.wu	$a4, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(lookupTable3B)
	addi.d	$a1, $a1, %pc_lo12(lookupTable3B)
	ldx.w	$a0, $a1, $a0
	slli.d	$a2, $a4, 47
	pcalau12i	$a1, %pc_hi20(disparity0)
	bltz	$a2, .LBB1_3
# %bb.1:
	ld.w	$a3, $a1, %pc_lo12(disparity0)
	bstrpick.d	$a2, $a4, 18, 18
	xor	$a2, $a3, $a2
	sltui	$a2, $a2, 1
	andi	$a5, $a4, 994
	xori	$a6, $a5, 994
	masknez	$a6, $a6, $a2
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a6
	lu12i.w	$a5, 128
	and	$a4, $a4, $a5
	sltui	$a4, $a4, 1
	xori	$a5, $a3, 1
	masknez	$a5, $a5, $a4
	maskeqz	$a3, $a3, $a4
	or	$a3, $a3, $a5
	pcalau12i	$a4, %pc_hi20(disparity1)
	slli.d	$a5, $a0, 47
	st.w	$a3, $a4, %pc_lo12(disparity1)
	bgez	$a5, .LBB1_4
.LBB1_2:
	andi	$a4, $a0, 29
	or	$a0, $a4, $a2
	st.w	$a3, $a1, %pc_lo12(disparity0)
	ret
.LBB1_3:
	ld.w	$a3, $a1, %pc_lo12(disparity0)
	andi	$a2, $a4, 994
	pcalau12i	$a4, %pc_hi20(disparity1)
	slli.d	$a5, $a0, 47
	st.w	$a3, $a4, %pc_lo12(disparity1)
	bltz	$a5, .LBB1_2
.LBB1_4:
	bstrpick.d	$a4, $a0, 18, 18
	xor	$a4, $a3, $a4
	sltui	$a4, $a4, 1
	andi	$a5, $a0, 29
	xori	$a6, $a5, 29
	masknez	$a6, $a6, $a4
	maskeqz	$a4, $a5, $a4
	or	$a4, $a4, $a6
	bstrpick.d	$a0, $a0, 19, 19
	xor	$a3, $a3, $a0
	or	$a0, $a4, $a2
	st.w	$a3, $a1, %pc_lo12(disparity0)
	ret
.Lfunc_end1:
	.size	calc, .Lfunc_end1-calc
                                        # -- End function
	.globl	bigTableCalc                    # -- Begin function bigTableCalc
	.p2align	5
	.type	bigTableCalc,@function
bigTableCalc:                           # @bigTableCalc
# %bb.0:
	pcalau12i	$a1, %pc_hi20(disparity0)
	ld.w	$a2, $a1, %pc_lo12(disparity0)
	slli.d	$a2, $a2, 9
	or	$a0, $a2, $a0
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %pc_hi20(bigTable)
	addi.d	$a2, $a2, %pc_lo12(bigTable)
	ldx.wu	$a0, $a2, $a0
	srli.d	$a2, $a0, 16
	andi	$a0, $a0, 1023
	st.w	$a2, $a1, %pc_lo12(disparity0)
	ret
.Lfunc_end2:
	.size	bigTableCalc, .Lfunc_end2-bigTableCalc
                                        # -- End function
	.globl	resetDisparity                  # -- Begin function resetDisparity
	.p2align	5
	.type	resetDisparity,@function
resetDisparity:                         # @resetDisparity
# %bb.0:
	pcalau12i	$a0, %pc_hi20(disparity0)
	st.w	$zero, $a0, %pc_lo12(disparity0)
	ret
.Lfunc_end3:
	.size	resetDisparity, .Lfunc_end3-resetDisparity
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function bigTableSetup
.LCPI4_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	bigTableSetup
	.p2align	5
	.type	bigTableSetup,@function
bigTableSetup:                          # @bigTableSetup
# %bb.0:                                # %vector.ph
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.LCPI4_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_0)
	lu12i.w	$a1, -1
	vrepli.w	$vr1, 1
	vrepli.w	$vr2, 7
	pcalau12i	$a2, %pc_hi20(lookupTable5B)
	addi.d	$a2, $a2, %pc_lo12(lookupTable5B)
	vrepli.b	$vr3, 0
	pcalau12i	$a3, %pc_hi20(lookupTable3B)
	addi.d	$a3, $a3, %pc_lo12(lookupTable3B)
	lu12i.w	$a4, 16
	vreplgr2vr.w	$vr4, $a4
	vrepli.w	$vr5, 29
	pcalau12i	$a5, %pc_hi20(bigTable)
	addi.d	$a5, $a5, %pc_lo12(bigTable)
	lu12i.w	$a6, 1
	.p2align	4, , 16
.LBB4_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vsrli.w	$vr6, $vr0, 9
	vsrli.w	$vr7, $vr0, 8
	vand.v	$vr8, $vr7, $vr1
	srli.d	$a7, $a0, 3
	vpickve2gr.w	$t0, $vr7, 0
	bstrins.d	$a7, $t0, 63, 5
	vand.v	$vr7, $vr0, $vr2
	vslli.w	$vr8, $vr8, 3
	vor.v	$vr7, $vr8, $vr7
	andi	$a7, $a7, 63
	slli.d	$a7, $a7, 2
	ldx.wu	$a7, $a2, $a7
	vilvh.w	$vr8, $vr3, $vr7
	vilvl.w	$vr7, $vr3, $vr7
	vpickve2gr.d	$t0, $vr7, 0
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr7, 1
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr8, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr8, 1
	slli.d	$t3, $t3, 2
	ldx.w	$t0, $a3, $t0
	ldx.w	$t1, $a3, $t1
	ldx.w	$t2, $a3, $t2
	ldx.w	$t3, $a3, $t3
	vinsgr2vr.w	$vr7, $t0, 0
	vinsgr2vr.w	$vr7, $t1, 1
	vinsgr2vr.w	$vr7, $t2, 2
	vinsgr2vr.w	$vr7, $t3, 3
	and	$t0, $a7, $a4
	sltui	$t0, $t0, 1
	vreplgr2vr.w	$vr8, $t0
	vslli.w	$vr8, $vr8, 31
	vsrai.w	$vr8, $vr8, 31
	andi	$t0, $a7, 994
	vreplgr2vr.w	$vr9, $t0
	bstrpick.d	$t1, $a7, 18, 18
	vreplgr2vr.w	$vr10, $t1
	vseq.w	$vr10, $vr6, $vr10
	xori	$t0, $t0, 994
	vreplgr2vr.w	$vr11, $t0
	vbitsel.v	$vr10, $vr11, $vr9, $vr10
	bstrpick.d	$a7, $a7, 19, 19
	vreplgr2vr.w	$vr11, $a7
	vand.v	$vr11, $vr8, $vr11
	vxor.v	$vr6, $vr6, $vr11
	vbitsel.v	$vr8, $vr9, $vr10, $vr8
	vand.v	$vr9, $vr7, $vr4
	vseqi.w	$vr9, $vr9, 0
	vand.v	$vr10, $vr7, $vr5
	vsrli.w	$vr11, $vr7, 18
	vand.v	$vr11, $vr11, $vr1
	vseq.w	$vr11, $vr6, $vr11
	vxor.v	$vr12, $vr10, $vr5
	vbitsel.v	$vr11, $vr12, $vr10, $vr11
	vsrli.w	$vr7, $vr7, 19
	vand.v	$vr7, $vr7, $vr9
	vand.v	$vr7, $vr7, $vr1
	vxor.v	$vr7, $vr6, $vr7
	vbitsel.v	$vr9, $vr10, $vr11, $vr9
	vor.v	$vr8, $vr8, $vr9
	vslli.w	$vr7, $vr7, 16
	vor.v	$vr7, $vr8, $vr7
	add.d	$a7, $a5, $a1
	vstx	$vr7, $a7, $a6
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a1, $a1, 16
	addi.w	$a0, $a0, 4
	bnez	$a1, .LBB4_1
# %bb.2:                                # %middle.block
	pcalau12i	$a0, %pc_hi20(disparity1)
	addi.d	$a0, $a0, %pc_lo12(disparity1)
	vstelm.w	$vr6, $a0, 0, 3
	pcalau12i	$a0, %pc_hi20(disparity0)
	st.w	$zero, $a0, %pc_lo12(disparity0)
	ret
.Lfunc_end4:
	.size	bigTableSetup, .Lfunc_end4-bigTableSetup
                                        # -- End function
	.type	lookupTable5B,@object           # @lookupTable5B
	.data
	.globl	lookupTable5B
	.p2align	2, 0x0
lookupTable5B:
	.word	786816                          # 0xc0180
	.word	655778                          # 0xa01a2
	.word	786528                          # 0xc0060
	.word	786624                          # 0xc00c0
	.word	786592                          # 0xc00a0
	.word	65698                           # 0x100a2
	.word	65730                           # 0x100c2
	.word	65760                           # 0x100e0
	.word	786720                          # 0xc0120
	.word	65826                           # 0x10122
	.word	65858                           # 0x10142
	.word	65888                           # 0x10160
	.word	65922                           # 0x10182
	.word	65952                           # 0x101a0
	.word	65984                           # 0x101c0
	.word	655840                          # 0xa01e0
	.word	786976                          # 0xc0220
	.word	66082                           # 0x10222
	.word	66114                           # 0x10242
	.word	66144                           # 0x10260
	.word	66178                           # 0x10282
	.word	66208                           # 0x102a0
	.word	66240                           # 0x102c0
	.word	656096                          # 0xa02e0
	.word	66306                           # 0x10302
	.word	66336                           # 0x10320
	.word	66368                           # 0x10340
	.word	656224                          # 0xa0360
	.word	131968                          # 0x20380
	.word	656288                          # 0xa03a0
	.word	787072                          # 0xc0280
	.word	656034                          # 0xa02a2
	.word	786816                          # 0xc0180
	.word	655778                          # 0xa01a2
	.word	786528                          # 0xc0060
	.word	786624                          # 0xc00c0
	.word	786592                          # 0xc00a0
	.word	65698                           # 0x100a2
	.word	65730                           # 0x100c2
	.word	655586                          # 0xa00e2
	.word	786720                          # 0xc0120
	.word	65826                           # 0x10122
	.word	65858                           # 0x10142
	.word	65888                           # 0x10160
	.word	65922                           # 0x10182
	.word	65952                           # 0x101a0
	.word	65984                           # 0x101c0
	.word	655840                          # 0xa01e0
	.word	786976                          # 0xc0220
	.word	66082                           # 0x10222
	.word	66114                           # 0x10242
	.word	66144                           # 0x10260
	.word	66178                           # 0x10282
	.word	66208                           # 0x102a0
	.word	66240                           # 0x102c0
	.word	656096                          # 0xa02e0
	.word	66306                           # 0x10302
	.word	66336                           # 0x10320
	.word	66368                           # 0x10340
	.word	656224                          # 0xa0360
	.word	131968                          # 0x20380
	.word	656288                          # 0xa03a0
	.word	787072                          # 0xc0280
	.word	656034                          # 0xa02a2
	.size	lookupTable5B, 256

	.type	lookupTable3B,@object           # @lookupTable3B
	.globl	lookupTable3B
	.p2align	2, 0x0
lookupTable3B:
	.word	786440                          # 0xc0008
	.word	786436                          # 0xc0004
	.word	65545                           # 0x10009
	.word	65548                           # 0x1000c
	.word	65553                           # 0x10011
	.word	65556                           # 0x10014
	.word	131096                          # 0x20018
	.word	655388                          # 0xa001c
	.word	786440                          # 0xc0008
	.word	786436                          # 0xc0004
	.word	262153                          # 0x40009
	.word	262156                          # 0x4000c
	.word	262161                          # 0x40011
	.word	262164                          # 0x40014
	.word	131096                          # 0x20018
	.word	655373                          # 0xa000d
	.size	lookupTable3B, 64

	.type	disparity0,@object              # @disparity0
	.bss
	.globl	disparity0
	.p2align	2, 0x0
disparity0:
	.word	0                               # 0x0
	.size	disparity0, 4

	.type	disparity1,@object              # @disparity1
	.data
	.globl	disparity1
	.p2align	2, 0x0
disparity1:
	.word	1                               # 0x1
	.size	disparity1, 4

	.type	bigTable,@object                # @bigTable
	.bss
	.globl	bigTable
	.p2align	2, 0x0
bigTable:
	.space	4096
	.size	bigTable, 4096

	.section	".note.GNU-stack","",@progbits
	.addrsig
