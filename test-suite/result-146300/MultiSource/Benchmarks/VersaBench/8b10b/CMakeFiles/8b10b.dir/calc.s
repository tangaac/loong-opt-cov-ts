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
	ldx.wu	$a5, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(lookupTable3B)
	addi.d	$a1, $a1, %pc_lo12(lookupTable3B)
	ldx.w	$a0, $a1, $a0
	lu12i.w	$a4, 16
	and	$a2, $a5, $a4
	pcalau12i	$a1, %pc_hi20(disparity0)
	bnez	$a2, .LBB1_3
# %bb.1:
	ld.w	$a3, $a1, %pc_lo12(disparity0)
	bstrpick.d	$a2, $a5, 18, 18
	xor	$a2, $a3, $a2
	sltui	$a2, $a2, 1
	andi	$a6, $a5, 994
	xori	$a7, $a6, 994
	masknez	$a7, $a7, $a2
	maskeqz	$a2, $a6, $a2
	or	$a2, $a2, $a7
	lu12i.w	$a6, 128
	and	$a5, $a5, $a6
	sltui	$a5, $a5, 1
	xori	$a6, $a3, 1
	masknez	$a6, $a6, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a6
	pcalau12i	$a5, %pc_hi20(disparity1)
	and	$a4, $a0, $a4
	st.w	$a3, $a5, %pc_lo12(disparity1)
	beqz	$a4, .LBB1_4
.LBB1_2:
	andi	$a4, $a0, 29
	or	$a0, $a4, $a2
	st.w	$a3, $a1, %pc_lo12(disparity0)
	ret
.LBB1_3:
	ld.w	$a3, $a1, %pc_lo12(disparity0)
	andi	$a2, $a5, 994
	pcalau12i	$a5, %pc_hi20(disparity1)
	and	$a4, $a0, $a4
	st.w	$a3, $a5, %pc_lo12(disparity1)
	bnez	$a4, .LBB1_2
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
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function bigTableSetup
.LCPI4_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.text
	.globl	bigTableSetup
	.p2align	5
	.type	bigTableSetup,@function
bigTableSetup:                          # @bigTableSetup
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 64
	bstrins.d	$sp, $zero, 4, 0
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.LCPI4_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI4_0)
	lu12i.w	$a1, -1
	xvrepli.w	$xr1, 1
	xvrepli.w	$xr2, 7
	pcalau12i	$a2, %pc_hi20(lookupTable5B)
	addi.d	$a2, $a2, %pc_lo12(lookupTable5B)
	pcalau12i	$a3, %pc_hi20(lookupTable3B)
	addi.d	$a3, $a3, %pc_lo12(lookupTable3B)
	lu12i.w	$a4, 16
	xvrepli.b	$xr3, 0
	xvreplgr2vr.w	$xr4, $a4
	xvrepli.w	$xr5, 29
	pcalau12i	$a5, %pc_hi20(bigTable)
	addi.d	$a5, $a5, %pc_lo12(bigTable)
	lu12i.w	$a6, 1
	.p2align	4, , 16
.LBB4_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvsrli.w	$xr6, $xr0, 8
	xvand.v	$xr7, $xr6, $xr1
	xvpickve2gr.w	$a7, $xr6, 0
	move	$t0, $a0
	bstrins.d	$t0, $a7, 63, 5
	xvand.v	$xr6, $xr0, $xr2
	xvslli.w	$xr7, $xr7, 3
	xvor.v	$xr6, $xr7, $xr6
	andi	$a7, $t0, 63
	slli.d	$a7, $a7, 2
	ldx.wu	$a7, $a2, $a7
	xvst	$xr6, $sp, 0
	vld	$vr7, $sp, 16
	xvsrli.w	$xr6, $xr0, 9
	vpickve2gr.w	$t0, $vr7, 3
	andi	$t0, $t0, 15
	vpickve2gr.w	$t1, $vr7, 2
	andi	$t1, $t1, 15
	vpickve2gr.w	$t2, $vr7, 1
	vld	$vr8, $sp, 0
	andi	$t2, $t2, 15
	vpickve2gr.w	$t3, $vr7, 0
	andi	$t3, $t3, 15
	vpickve2gr.w	$t4, $vr8, 3
	andi	$t4, $t4, 15
	vpickve2gr.w	$t5, $vr8, 2
	andi	$t5, $t5, 15
	vpickve2gr.w	$t6, $vr8, 1
	andi	$t6, $t6, 15
	vpickve2gr.w	$t7, $vr8, 0
	andi	$t7, $t7, 15
	slli.d	$t7, $t7, 2
	slli.d	$t6, $t6, 2
	slli.d	$t5, $t5, 2
	slli.d	$t4, $t4, 2
	slli.d	$t3, $t3, 2
	slli.d	$t2, $t2, 2
	slli.d	$t1, $t1, 2
	slli.d	$t0, $t0, 2
	ldx.w	$t7, $a3, $t7
	ldx.w	$t6, $a3, $t6
	ldx.w	$t5, $a3, $t5
	ldx.w	$t4, $a3, $t4
	ldx.w	$t3, $a3, $t3
	ldx.w	$t2, $a3, $t2
	ldx.w	$t1, $a3, $t1
	ldx.w	$t0, $a3, $t0
	xvinsgr2vr.w	$xr7, $t7, 0
	xvinsgr2vr.w	$xr7, $t6, 1
	xvinsgr2vr.w	$xr7, $t5, 2
	xvinsgr2vr.w	$xr7, $t4, 3
	xvinsgr2vr.w	$xr7, $t3, 4
	xvinsgr2vr.w	$xr7, $t2, 5
	xvinsgr2vr.w	$xr7, $t1, 6
	xvinsgr2vr.w	$xr7, $t0, 7
	and	$t0, $a7, $a4
	sltui	$t0, $t0, 1
	xvreplgr2vr.w	$xr8, $t0
	xvslli.w	$xr8, $xr8, 31
	xvsrai.w	$xr8, $xr8, 31
	andi	$t0, $a7, 994
	xvreplgr2vr.w	$xr9, $t0
	bstrpick.d	$t1, $a7, 18, 18
	xvreplgr2vr.w	$xr10, $t1
	xvseq.w	$xr10, $xr6, $xr10
	xori	$t0, $t0, 994
	xvreplgr2vr.w	$xr11, $t0
	xvbitsel.v	$xr10, $xr11, $xr9, $xr10
	bstrpick.d	$a7, $a7, 19, 19
	xvreplgr2vr.w	$xr11, $a7
	xvbitsel.v	$xr11, $xr3, $xr11, $xr8
	xvxor.v	$xr6, $xr6, $xr11
	xvbitsel.v	$xr8, $xr9, $xr10, $xr8
	xvand.v	$xr9, $xr7, $xr4
	xvseqi.w	$xr9, $xr9, 0
	xvand.v	$xr10, $xr7, $xr5
	xvsrli.w	$xr11, $xr7, 18
	xvand.v	$xr11, $xr11, $xr1
	xvseq.w	$xr11, $xr6, $xr11
	xvxor.v	$xr12, $xr10, $xr5
	xvbitsel.v	$xr11, $xr12, $xr10, $xr11
	xvsrli.w	$xr7, $xr7, 19
	xvand.v	$xr7, $xr7, $xr1
	xvbitsel.v	$xr7, $xr3, $xr7, $xr9
	xvxor.v	$xr7, $xr6, $xr7
	xvbitsel.v	$xr9, $xr10, $xr11, $xr9
	xvor.v	$xr8, $xr8, $xr9
	xvslli.w	$xr7, $xr7, 16
	xvor.v	$xr7, $xr8, $xr7
	add.d	$a7, $a5, $a1
	xvstx	$xr7, $a7, $a6
	xvaddi.wu	$xr0, $xr0, 8
	addi.d	$a1, $a1, 32
	addi.w	$a0, $a0, 1
	bnez	$a1, .LBB4_1
# %bb.2:                                # %middle.block
	pcalau12i	$a0, %pc_hi20(disparity1)
	addi.d	$a0, $a0, %pc_lo12(disparity1)
	xvstelm.w	$xr6, $a0, 0, 7
	pcalau12i	$a0, %pc_hi20(disparity0)
	st.w	$zero, $a0, %pc_lo12(disparity0)
	addi.d	$sp, $fp, -64
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
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
