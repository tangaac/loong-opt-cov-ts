	.file	"oourafft.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	0x3ff0000000000000              # double 1
	.dword	0x0000000000000000              # double 0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_1:
	.dword	0x3f6921fb54442d18              # double 0.0030679615757712823
.LCPI0_2:
	.dword	0x3ed02e85c0898b71              # double 3.8580246913580248E-6
.LCPI0_3:
	.dword	0xbf50000000000000              # double -9.765625E-4
.LCPI0_4:
	.dword	0x3ddb7cdfd9d7bdbb              # double 1.0E-10
.LCPI0_6:
	.dword	0x3e112e0be826d695              # double 1.0000000000000001E-9
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI0_5:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 32                   # 8-byte Folded Spill
	addi.d	$a0, $sp, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 16
	ori	$a1, $zero, 128
	pcaddu18i	$ra, %call36(memalign)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	lu12i.w	$a1, 5
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memalign)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	move	$s0, $a0
	move	$s1, $zero
	vst	$vr0, $a0, 0
	lu12i.w	$a0, 419827
	ori	$a0, $a0, 3021
	lu32i.d	$a0, 434334
	lu52i.d	$a0, $a0, 1022
	vreplgr2vr.d	$vr0, $a0
	ori	$a0, $zero, 2048
	vstx	$vr0, $s0, $a0
	addi.d	$a0, $s0, 2047
	addi.d	$s2, $a0, 2041
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI0_1)
	addi.d	$s3, $s0, 24
	ori	$s4, $zero, 2
	ori	$s5, $zero, 254
	.p2align	4, , 16
.LBB0_1:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s4, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fmul.d	$fs0, $fa0, $fs2
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fst.d	$fs1, $s3, -8
	fst.d	$fa0, $s3, 0
	fst.d	$fa0, $s2, -8
	fst.d	$fs1, $s2, 0
	addi.d	$s1, $s1, 2
	addi.d	$s2, $s2, -16
	addi.d	$s3, $s3, 16
	addi.w	$s4, $s4, 2
	bltu	$s1, $s5, .LBB0_1
# %bb.2:                                # %makewt.exit
	ori	$a0, $zero, 512
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(bitrv2)
	jirl	$ra, $ra, 0
	lu12i.w	$s2, 4
	ori	$a0, $zero, 16
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memalign)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 16
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memalign)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memalign)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	move	$a1, $zero
	ori	$a0, $zero, 1
	lu12i.w	$a2, 1
	ori	$s5, $a2, 3045
	lu12i.w	$a2, 13
	ori	$s6, $a2, 1525
	lu12i.w	$a2, 8285
	ori	$s7, $a2, 185
	pcalau12i	$a2, %pc_hi20(.LCPI0_2)
	fld.d	$fs0, $a2, %pc_lo12(.LCPI0_2)
	lu12i.w	$a2, 63
	ori	$s8, $a2, 1152
	ori	$a2, $zero, 2048
	move	$a3, $s3
	.p2align	4, , 16
.LBB0_3:                                # %.lr.ph.i79
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a1, $a1, $s5
	add.d	$a1, $a1, $s6
	bstrpick.d	$a4, $a1, 31, 7
	mul.d	$a4, $a4, $s7
	srli.d	$a4, $a4, 36
	mul.d	$a4, $a4, $s8
	sub.w	$a1, $a1, $a4
	bstrpick.d	$a4, $a1, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs0
	fst.d	$fa0, $a3, 0
	bstrpick.d	$a4, $a0, 31, 0
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 8
	bne	$a4, $a2, .LBB0_3
# %bb.4:                                # %putdata.exit
	ori	$a0, $zero, 2048
	ori	$s4, $zero, 2048
	move	$a1, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(bitrv2)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2048
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cftfsub)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	ori	$a0, $zero, 2048
	move	$a2, $s3
	move	$a3, $fp
	move	$a4, $s0
	pcaddu18i	$ra, %call36(cdft)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_3)
	move	$a2, $zero
	movgr2fr.d	$fa0, $zero
	ori	$a0, $zero, 1
	move	$a1, $s3
	.p2align	4, , 16
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	mul.d	$a2, $a2, $s5
	add.d	$a2, $a2, $s6
	bstrpick.d	$a3, $a2, 31, 7
	mul.d	$a3, $a3, $s7
	srli.d	$a3, $a3, 36
	mul.d	$a3, $a3, $s8
	sub.w	$a2, $a2, $a3
	fld.d	$fa2, $a1, 0
	bstrpick.d	$a3, $a2, 31, 0
	movgr2fr.d	$fa3, $a3
	ffint.d.l	$fa3, $fa3
	fmul.d	$fa2, $fa2, $fa1
	fmadd.d	$fa2, $fa3, $fs0, $fa2
	fabs.d	$fa2, $fa2
	fcmp.clt.d	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	bstrpick.d	$a3, $a0, 31, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	bne	$a3, $s4, .LBB0_5
# %bb.6:                                # %errorcheck.exit
	pcalau12i	$a0, %pc_hi20(.LCPI0_4)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_4)
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB0_20
# %bb.7:
	lu12i.w	$a2, 4
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a3, $zero
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1024
	move	$a2, $s3
	.p2align	4, , 16
.LBB0_8:                                # %.lr.ph.i87
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a3, $a3, $s5
	add.d	$a3, $a3, $s6
	bstrpick.d	$a4, $a3, 31, 7
	mul.d	$a4, $a4, $s7
	srli.d	$a4, $a4, 36
	mul.d	$a4, $a4, $s8
	sub.w	$a3, $a3, $a4
	bstrpick.d	$a4, $a3, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs0
	fst.d	$fa0, $a2, 0
	bstrpick.d	$a4, $a0, 31, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 8
	bne	$a4, $a1, .LBB0_8
# %bb.9:                                # %putdata.exit93
	ori	$a0, $zero, 2048
	move	$a1, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(bitrv2)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2048
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cftfsub)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_5)
	xvld	$xr0, $a0, %pc_lo12(.LCPI0_5)
	addi.d	$a0, $s3, 8
	ori	$a1, $zero, 1024
	.p2align	4, , 16
.LBB0_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvslli.d	$xr1, $xr0, 4
	xvpickve2gr.d	$a2, $xr1, 0
	add.d	$a3, $a0, $a2
	xvpickve2gr.d	$a4, $xr1, 1
	add.d	$a5, $a0, $a4
	xvpickve2gr.d	$a6, $xr1, 2
	add.d	$a7, $a0, $a6
	xvpickve2gr.d	$t0, $xr1, 3
	fldx.d	$fa1, $a0, $a2
	fldx.d	$fa2, $a0, $a4
	fldx.d	$fa3, $a0, $a6
	fldx.d	$fa4, $a0, $t0
	add.d	$a2, $a0, $t0
	movfr2gr.d	$a4, $fa1
	xvinsgr2vr.d	$xr1, $a4, 0
	movfr2gr.d	$a4, $fa2
	xvinsgr2vr.d	$xr1, $a4, 1
	movfr2gr.d	$a4, $fa3
	xvinsgr2vr.d	$xr1, $a4, 2
	movfr2gr.d	$a4, $fa4
	xvinsgr2vr.d	$xr1, $a4, 3
	xvbitrevi.d	$xr1, $xr1, 63
	xvstelm.d	$xr1, $a3, 0, 0
	xvstelm.d	$xr1, $a5, 0, 1
	xvstelm.d	$xr1, $a7, 0, 2
	xvstelm.d	$xr1, $a2, 0, 3
	addi.d	$a1, $a1, -4
	xvaddi.du	$xr0, $xr0, 4
	bnez	$a1, .LBB0_10
# %bb.11:                               # %middle.block
	lu12i.w	$s4, 4
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a3, $zero
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1024
	.p2align	4, , 16
.LBB0_12:                               # %.lr.ph.i94
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a3, $a3, $s5
	add.d	$a3, $a3, $s6
	bstrpick.d	$a4, $a3, 31, 7
	mul.d	$a4, $a4, $s7
	srli.d	$a4, $a4, 36
	mul.d	$a4, $a4, $s8
	sub.w	$a3, $a3, $a4
	bstrpick.d	$a4, $a3, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs0
	fst.d	$fa0, $s2, 0
	bstrpick.d	$a4, $a0, 31, 0
	addi.d	$a0, $a0, 1
	addi.d	$s2, $s2, 8
	bne	$a4, $a1, .LBB0_12
# %bb.13:                               # %putdata.exit100
	addi.d	$a0, $sp, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	move	$s7, $zero
	lu12i.w	$s8, -4
	ori	$s6, $s4, 8
	addi.w	$s5, $zero, -1
	lu12i.w	$a0, 36
	ori	$s2, $a0, 2544
	.p2align	4, , 16
.LBB0_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
	move	$a0, $s1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2048
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(bitrv2)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2048
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cftfsub)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	.p2align	4, , 16
.LBB0_15:                               #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $s1, $a0
	fldx.d	$fa0, $a1, $s4
	add.d	$a2, $s3, $a0
	fldx.d	$fa1, $a2, $s6
	fldx.d	$fa2, $a1, $s6
	fldx.d	$fa3, $a2, $s4
	fneg.d	$fa4, $fa1
	fmul.d	$fa4, $fa2, $fa4
	fmadd.d	$fa4, $fa0, $fa3, $fa4
	fstx.d	$fa4, $a1, $s4
	fmul.d	$fa2, $fa3, $fa2
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	addi.d	$a0, $a0, 16
	fstx.d	$fa0, $a1, $s6
	bnez	$a0, .LBB0_15
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=1
	ori	$a0, $zero, 2048
	move	$a1, $s5
	move	$a2, $s1
	move	$a3, $fp
	move	$a4, $s0
	pcaddu18i	$ra, %call36(cdft)
	jirl	$ra, $ra, 0
	addi.w	$s7, $s7, 1
	bne	$s7, $s2, .LBB0_14
# %bb.17:
	addi.d	$a0, $sp, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	lu12i.w	$s2, -4
	pcalau12i	$a0, %pc_hi20(.LCPI0_6)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI0_6)
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s5, $a0, %pc_lo12(.L.str.1)
	.p2align	4, , 16
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	add.d	$a0, $s1, $s2
	fldx.d	$fa0, $a0, $s4
	fldx.d	$fa1, $a0, $s6
	fabs.d	$fa2, $fa0
	fcmp.clt.d	$fcc0, $fs0, $fa2
	fsel	$fa0, $fs1, $fa0, $fcc0
	fabs.d	$fa2, $fa1
	fcmp.clt.d	$fcc0, $fs0, $fa2
	fsel	$fa1, $fs1, $fa1, $fcc0
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 16
	bnez	$s2, .LBB0_18
# %bb.19:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
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
.LBB0_20:
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function get_time
.LCPI1_0:
	.dword	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
	.text
	.globl	get_time
	.p2align	5
	.type	get_time,@function
get_time:                               # @get_time
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	movgr2fr.d	$fa0, $a0
	ld.d	$a0, $sp, 16
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI1_0)
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa2, $a0
	ffint.d.l	$fa2, $fa2
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	get_time, .Lfunc_end1-get_time
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function makewt
.LCPI2_0:
	.dword	0x3fe921fb54442d18              # double 0.78539816339744828
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_1:
	.dword	0x3ff0000000000000              # double 1
	.dword	0x0000000000000000              # double 0
	.text
	.globl	makewt
	.p2align	5
	.type	makewt,@function
makewt:                                 # @makewt
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
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs2, $sp, 0                    # 8-byte Folded Spill
	ori	$a3, $zero, 3
	blt	$a0, $a3, .LBB2_5
# %bb.1:
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	bstrpick.d	$s2, $a0, 31, 1
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_1)
	movgr2fr.d	$fa2, $s2
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fs2, $fa0, $fa2
	vst	$vr1, $a2, 0
	fmul.d	$fa0, $fs2, $fa2
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s2, $fp, 3
	slli.d	$a1, $s2, 3
	fstx.d	$fa0, $fp, $a1
	ori	$a1, $zero, 6
	fst.d	$fa0, $a0, 8
	bltu	$s1, $a1, .LBB2_5
# %bb.2:                                # %.lr.ph.preheader
	addi.w	$s2, $s2, 0
	alsl.d	$a0, $s1, $fp, 3
	addi.d	$s3, $a0, -8
	addi.d	$s4, $fp, 24
	ori	$s5, $zero, 2
	ori	$s6, $zero, 2
	.p2align	4, , 16
.LBB2_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s6, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fmul.d	$fs0, $fs2, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fst.d	$fs1, $s4, -8
	fst.d	$fa0, $s4, 0
	fst.d	$fa0, $s3, -8
	fst.d	$fs1, $s3, 0
	addi.d	$s5, $s5, 2
	addi.d	$s3, $s3, -16
	addi.w	$s6, $s6, 2
	addi.d	$s4, $s4, 16
	bltu	$s5, $s2, .LBB2_3
# %bb.4:                                # %._crit_edge
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	fld.d	$fs2, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(bitrv2)
	jr	$t8
.LBB2_5:
	fld.d	$fs2, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
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
.Lfunc_end2:
	.size	makewt, .Lfunc_end2-makewt
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function putdata
.LCPI3_0:
	.dword	0x3ed02e85c0898b71              # double 3.8580246913580248E-6
	.text
	.globl	putdata
	.p2align	5
	.type	putdata,@function
putdata:                                # @putdata
# %bb.0:
	blt	$a1, $a0, .LBB3_3
# %bb.1:                                # %.lr.ph.preheader
	move	$a3, $zero
	alsl.d	$a2, $a0, $a2, 3
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3045
	lu12i.w	$a4, 13
	ori	$a4, $a4, 1525
	lu12i.w	$a5, 8285
	pcalau12i	$a6, %pc_hi20(.LCPI3_0)
	fld.d	$fa0, $a6, %pc_lo12(.LCPI3_0)
	ori	$a5, $a5, 185
	lu12i.w	$a6, 63
	ori	$a6, $a6, 1152
	.p2align	4, , 16
.LBB3_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a3, $a3, $a1
	add.d	$a3, $a3, $a4
	bstrpick.d	$a7, $a3, 31, 7
	mul.d	$a7, $a7, $a5
	srli.d	$a7, $a7, 36
	mul.d	$a7, $a7, $a6
	sub.w	$a3, $a3, $a7
	bstrpick.d	$a7, $a3, 31, 0
	movgr2fr.d	$fa1, $a7
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $a2, 0
	addi.w	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB3_2
.LBB3_3:                                # %._crit_edge
	ret
.Lfunc_end3:
	.size	putdata, .Lfunc_end3-putdata
                                        # -- End function
	.globl	cdft                            # -- Begin function cdft
	.p2align	5
	.type	cdft,@function
cdft:                                   # @cdft
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	st.d	$s5, $sp, 0                     # 8-byte Folded Spill
	ori	$a5, $zero, 5
	move	$s0, $a4
	move	$fp, $a2
	move	$s1, $a0
	blt	$a0, $a5, .LBB4_3
# %bb.1:
	bltz	$a1, .LBB4_5
# %bb.2:
	move	$a0, $s1
	move	$a1, $a3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(bitrv2)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	b	.LBB4_4
.LBB4_3:
	ori	$a0, $zero, 4
	bne	$s1, $a0, .LBB4_50
.LBB4_4:                                # %cftbsub.exit.sink.split
	move	$a1, $fp
	move	$a2, $s0
	ld.d	$s5, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(cftfsub)
	jr	$t8
.LBB4_5:
	ori	$a0, $zero, 9
	st.w	$zero, $a3, 0
	bltu	$s1, $a0, .LBB4_22
# %bb.6:                                # %.lr.ph245.i.preheader
	ori	$a1, $zero, 1
	ori	$a2, $zero, 4
	ori	$a5, $zero, 16
	ori	$a0, $zero, 1
	move	$a6, $s1
	b	.LBB4_8
	.p2align	4, , 16
.LBB4_7:                                # %._crit_edge.i
                                        #   in Loop: Header=BB4_8 Depth=1
	slli.w	$a7, $a4, 4
	addi.w	$t0, $a6, 0
	slli.w	$a0, $a4, 1
	bge	$a7, $t0, .LBB4_24
.LBB4_8:                                # %.lr.ph245.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_14 Depth 2
                                        #     Child Loop BB4_18 Depth 2
                                        #     Child Loop BB4_21 Depth 2
	move	$a4, $a0
	bstrpick.d	$a6, $a6, 31, 1
	blt	$a0, $a1, .LBB4_7
# %bb.9:                                # %iter.check
                                        #   in Loop: Header=BB4_8 Depth=1
	slli.d	$a0, $a4, 2
	bgeu	$a4, $a2, .LBB4_11
# %bb.10:                               #   in Loop: Header=BB4_8 Depth=1
	move	$a7, $zero
	b	.LBB4_20
	.p2align	4, , 16
.LBB4_11:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB4_8 Depth=1
	bgeu	$a4, $a5, .LBB4_13
# %bb.12:                               #   in Loop: Header=BB4_8 Depth=1
	move	$a7, $zero
	b	.LBB4_17
.LBB4_13:                               # %vector.ph
                                        #   in Loop: Header=BB4_8 Depth=1
	bstrpick.d	$a7, $a4, 30, 4
	slli.d	$a7, $a7, 4
	xvreplgr2vr.w	$xr0, $a6
	move	$t0, $a3
	move	$t1, $a7
	.p2align	4, , 16
.LBB4_14:                               # %vector.body
                                        #   Parent Loop BB4_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr1, $t0, 0
	xvld	$xr2, $t0, 32
	xvadd.w	$xr1, $xr1, $xr0
	xvadd.w	$xr2, $xr2, $xr0
	add.d	$t2, $t0, $a0
	xvstx	$xr1, $t0, $a0
	xvst	$xr2, $t2, 32
	addi.d	$t1, $t1, -16
	addi.d	$t0, $t0, 64
	bnez	$t1, .LBB4_14
# %bb.15:                               # %middle.block
                                        #   in Loop: Header=BB4_8 Depth=1
	beq	$a7, $a4, .LBB4_7
# %bb.16:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB4_8 Depth=1
	andi	$t0, $a4, 12
	beqz	$t0, .LBB4_20
.LBB4_17:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB4_8 Depth=1
	move	$t1, $a7
	bstrpick.d	$a7, $a4, 30, 2
	slli.d	$a7, $a7, 2
	vreplgr2vr.w	$vr0, $a6
	sub.d	$t0, $t1, $a7
	alsl.d	$t1, $t1, $a3, 2
	.p2align	4, , 16
.LBB4_18:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB4_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $t1, 0
	vadd.w	$vr1, $vr1, $vr0
	vstx	$vr1, $t1, $a0
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 16
	bnez	$t0, .LBB4_18
# %bb.19:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB4_8 Depth=1
	beq	$a7, $a4, .LBB4_7
.LBB4_20:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB4_8 Depth=1
	sub.d	$t0, $a4, $a7
	alsl.d	$a7, $a7, $a3, 2
	.p2align	4, , 16
.LBB4_21:                               # %.lr.ph.i
                                        #   Parent Loop BB4_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $a7, 0
	add.d	$t1, $t1, $a6
	stx.w	$t1, $a7, $a0
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 4
	bnez	$t0, .LBB4_21
	b	.LBB4_7
.LBB4_22:                               # %._crit_edge246.thread.i
	ori	$a1, $zero, 2
	ori	$a2, $zero, 8
	ori	$a0, $zero, 1
	bne	$s1, $a2, .LBB4_34
# %bb.23:
	ori	$a2, $zero, 4
	ori	$a4, $zero, 6
	b	.LBB4_27
.LBB4_24:                               # %._crit_edge246.i
	slli.d	$a1, $a4, 2
	bne	$a7, $t0, .LBB4_34
# %bb.25:                               # %.preheader238.i
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB4_39
# %bb.26:
	slli.d	$a2, $a4, 3
	alsl.w	$a4, $a4, $a2, 2
.LBB4_27:                               # %.preheader.lr.ph.i
	move	$a5, $zero
	addi.d	$a6, $fp, 8
	bstrpick.d	$a7, $a1, 31, 0
	slli.d	$a7, $a7, 3
	b	.LBB4_30
	.p2align	4, , 16
.LBB4_28:                               #   in Loop: Header=BB4_30 Depth=1
	move	$t0, $zero
.LBB4_29:                               # %._crit_edge261.i
                                        #   in Loop: Header=BB4_30 Depth=1
	slli.d	$t1, $t0, 3
	fldx.d	$fa0, $a6, $t1
	fneg.d	$fa0, $fa0
	fstx.d	$fa0, $a6, $t1
	add.w	$t1, $t0, $a1
	add.w	$t2, $t0, $a2
	alsl.d	$t3, $t1, $fp, 3
	slli.d	$t1, $t1, 3
	fld.d	$fa0, $t3, 8
	alsl.d	$t4, $t2, $fp, 3
	slli.d	$t2, $t2, 3
	fld.d	$fa1, $t4, 8
	fldx.d	$fa2, $fp, $t2
	fldx.d	$fa3, $fp, $t1
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fstx.d	$fa2, $fp, $t1
	fst.d	$fa1, $t3, 8
	fstx.d	$fa3, $fp, $t2
	fst.d	$fa0, $t4, 8
	add.w	$t0, $t0, $a4
	slli.d	$t0, $t0, 3
	fldx.d	$fa0, $a6, $t0
	fneg.d	$fa0, $fa0
	addi.d	$a5, $a5, 1
	fstx.d	$fa0, $a6, $t0
	beq	$a5, $a0, .LBB4_39
.LBB4_30:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_32 Depth 2
	beqz	$a5, .LBB4_28
# %bb.31:                               # %.lr.ph260.i
                                        #   in Loop: Header=BB4_30 Depth=1
	slli.d	$t0, $a5, 2
	ldx.w	$t0, $a3, $t0
	slli.d	$t1, $a5, 1
	alsl.w	$t2, $a5, $a2, 1
	add.w	$t3, $a4, $t0
	add.w	$t4, $a2, $t0
	alsl.d	$t5, $t0, $a6, 3
	move	$t6, $a3
	move	$t7, $a5
	.p2align	4, , 16
.LBB4_32:                               #   Parent Loop BB4_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t8, $t6, 0
	add.w	$s2, $t8, $t1
	fld.d	$fa0, $t5, 0
	alsl.d	$s3, $s2, $fp, 3
	slli.d	$s2, $s2, 3
	fld.d	$fa1, $s3, 8
	fldx.d	$fa2, $fp, $s2
	fld.d	$fa3, $t5, -8
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fst.d	$fa2, $t5, -8
	fst.d	$fa1, $t5, 0
	fstx.d	$fa3, $fp, $s2
	fst.d	$fa0, $s3, 8
	add.w	$t8, $t2, $t8
	add.d	$s2, $t5, $a7
	fldx.d	$fa0, $t5, $a7
	alsl.d	$s3, $t8, $fp, 3
	slli.d	$s4, $t8, 3
	fld.d	$fa1, $s3, 8
	fldx.d	$fa2, $fp, $s4
	fld.d	$fa3, $s2, -8
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fst.d	$fa2, $s2, -8
	fstx.d	$fa1, $t5, $a7
	fstx.d	$fa3, $fp, $s4
	fst.d	$fa0, $s3, 8
	sub.w	$t8, $t8, $a1
	alsl.d	$s2, $t4, $fp, 3
	slli.d	$s3, $t4, 3
	fld.d	$fa0, $s2, 8
	alsl.d	$s4, $t8, $fp, 3
	slli.d	$s5, $t8, 3
	fld.d	$fa1, $s4, 8
	fldx.d	$fa2, $fp, $s5
	fldx.d	$fa3, $fp, $s3
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fstx.d	$fa2, $fp, $s3
	fst.d	$fa1, $s2, 8
	fstx.d	$fa3, $fp, $s5
	fst.d	$fa0, $s4, 8
	add.w	$t8, $t8, $a2
	alsl.d	$s2, $t3, $fp, 3
	slli.d	$s3, $t3, 3
	fld.d	$fa0, $s2, 8
	alsl.d	$s4, $t8, $fp, 3
	slli.d	$t8, $t8, 3
	fld.d	$fa1, $s4, 8
	fldx.d	$fa2, $fp, $t8
	fldx.d	$fa3, $fp, $s3
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fstx.d	$fa2, $fp, $s3
	fst.d	$fa1, $s2, 8
	fstx.d	$fa3, $fp, $t8
	fst.d	$fa0, $s4, 8
	addi.d	$t7, $t7, -1
	addi.d	$t6, $t6, 4
	addi.w	$t3, $t3, 2
	addi.w	$t4, $t4, 2
	addi.d	$t5, $t5, 16
	bnez	$t7, .LBB4_32
# %bb.33:                               # %._crit_edge261.loopexit.i
                                        #   in Loop: Header=BB4_30 Depth=1
	add.w	$t0, $t0, $t1
	b	.LBB4_29
.LBB4_34:
	fld.d	$fa0, $fp, 8
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $fp, 8
	addi.w	$a2, $a1, 0
	alsl.d	$a2, $a2, $fp, 3
	fld.d	$fa0, $a2, 8
	fneg.d	$fa0, $fa0
	ori	$a4, $zero, 2
	fst.d	$fa0, $a2, 8
	blt	$a0, $a4, .LBB4_39
# %bb.35:                               # %.preheader239.preheader.i
	addi.d	$a2, $fp, 8
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB4_36:                               # %.preheader239.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_37 Depth 2
	slli.d	$a5, $a4, 2
	ldx.w	$a5, $a3, $a5
	slli.d	$a6, $a4, 1
	alsl.w	$a7, $a4, $a1, 1
	add.w	$t0, $a1, $a5
	alsl.d	$t1, $a5, $a2, 3
	move	$t2, $a3
	move	$t3, $a4
	.p2align	4, , 16
.LBB4_37:                               #   Parent Loop BB4_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $t2, 0
	add.w	$t5, $t4, $a6
	fld.d	$fa0, $t1, 0
	alsl.d	$t6, $t5, $fp, 3
	slli.d	$t5, $t5, 3
	fld.d	$fa1, $t6, 8
	fldx.d	$fa2, $fp, $t5
	fld.d	$fa3, $t1, -8
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fst.d	$fa2, $t1, -8
	fst.d	$fa1, $t1, 0
	fstx.d	$fa3, $fp, $t5
	fst.d	$fa0, $t6, 8
	add.w	$t4, $a7, $t4
	alsl.d	$t5, $t0, $fp, 3
	slli.d	$t6, $t0, 3
	fld.d	$fa0, $t5, 8
	alsl.d	$t7, $t4, $fp, 3
	slli.d	$t4, $t4, 3
	fld.d	$fa1, $t7, 8
	fldx.d	$fa2, $fp, $t4
	fldx.d	$fa3, $fp, $t6
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fstx.d	$fa2, $fp, $t6
	fst.d	$fa1, $t5, 8
	fstx.d	$fa3, $fp, $t4
	fst.d	$fa0, $t7, 8
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, 4
	addi.w	$t0, $t0, 2
	addi.d	$t1, $t1, 16
	bnez	$t3, .LBB4_37
# %bb.38:                               #   in Loop: Header=BB4_36 Depth=1
	add.w	$a5, $a6, $a5
	slli.d	$a6, $a5, 3
	fldx.d	$fa0, $a2, $a6
	fneg.d	$fa0, $fa0
	fstx.d	$fa0, $a2, $a6
	add.w	$a5, $a5, $a1
	slli.d	$a5, $a5, 3
	fldx.d	$fa0, $a2, $a5
	fneg.d	$fa0, $fa0
	addi.d	$a4, $a4, 1
	fstx.d	$fa0, $a2, $a5
	bne	$a4, $a0, .LBB4_36
.LBB4_39:                               # %bitrv2conj.exit
	ori	$a0, $zero, 9
	ori	$s2, $zero, 2
	bltu	$s1, $a0, .LBB4_43
# %bb.40:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cft1st)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 33
	ori	$s2, $zero, 8
	bltu	$s1, $a0, .LBB4_43
# %bb.41:                               # %.lr.ph.i24.preheader
	ori	$a1, $zero, 8
	ori	$a0, $zero, 32
	.p2align	4, , 16
.LBB4_42:                               # %.lr.ph.i24
                                        # =>This Inner Loop Header: Depth=1
	move	$s2, $a0
	move	$a0, $s1
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(cftmdl)
	jirl	$ra, $ra, 0
	slli.w	$a0, $s2, 2
	move	$a1, $s2
	blt	$a0, $s1, .LBB4_42
.LBB4_43:                               # %.loopexit120.i
	slli.w	$a0, $s2, 2
	bne	$a0, $s1, .LBB4_47
# %bb.44:                               # %.preheader.i21
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB4_50
# %bb.45:                               # %.lr.ph127.preheader.i
	move	$a0, $zero
	slli.w	$a1, $s2, 1
	alsl.w	$a2, $s2, $s2, 1
	slli.d	$a3, $s2, 3
	move	$a4, $fp
	.p2align	4, , 16
.LBB4_46:                               # %.lr.ph127.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a4, 0
	add.d	$a5, $a4, $a3
	fldx.d	$fa1, $a4, $a3
	fld.d	$fa2, $a4, 8
	fld.d	$fa3, $a5, 8
	fadd.d	$fa4, $fa0, $fa1
	fneg.d	$fa5, $fa2
	fsub.d	$fa5, $fa5, $fa3
	alsl.d	$a6, $a1, $fp, 3
	slli.d	$a7, $a1, 3
	fldx.d	$fa6, $fp, $a7
	alsl.d	$t0, $a2, $fp, 3
	slli.d	$t1, $a2, 3
	fldx.d	$fa7, $fp, $t1
	fld.d	$ft0, $a6, 8
	fld.d	$ft1, $t0, 8
	fsub.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa3, $fa2
	fadd.d	$fa2, $fa6, $fa7
	fadd.d	$fa3, $ft0, $ft1
	fsub.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $ft0, $ft1
	fadd.d	$ft0, $fa4, $fa2
	fst.d	$ft0, $a4, 0
	fsub.d	$ft0, $fa5, $fa3
	fst.d	$ft0, $a4, 8
	fsub.d	$fa2, $fa4, $fa2
	fstx.d	$fa2, $fp, $a7
	fadd.d	$fa2, $fa5, $fa3
	fst.d	$fa2, $a6, 8
	fsub.d	$fa2, $fa0, $fa7
	fstx.d	$fa2, $a4, $a3
	fsub.d	$fa2, $fa1, $fa6
	fst.d	$fa2, $a5, 8
	fadd.d	$fa0, $fa0, $fa7
	fstx.d	$fa0, $fp, $t1
	fadd.d	$fa0, $fa1, $fa6
	fst.d	$fa0, $t0, 8
	addi.d	$a0, $a0, 2
	addi.d	$a4, $a4, 16
	addi.w	$a2, $a2, 2
	addi.w	$a1, $a1, 2
	bltu	$a0, $s2, .LBB4_46
	b	.LBB4_50
.LBB4_47:                               # %.preheader118.i
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB4_50
# %bb.48:                               # %.lr.ph123.preheader.i
	move	$a0, $zero
	slli.d	$a1, $s2, 3
	.p2align	4, , 16
.LBB4_49:                               # %.lr.ph123.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $fp, 0
	add.d	$a2, $fp, $a1
	fldx.d	$fa1, $fp, $a1
	fld.d	$fa2, $fp, 8
	fld.d	$fa3, $a2, 8
	fsub.d	$fa4, $fa0, $fa1
	fsub.d	$fa5, $fa3, $fa2
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 0
	fneg.d	$fa0, $fa2
	fsub.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $fp, 8
	fstx.d	$fa4, $fp, $a1
	fst.d	$fa5, $a2, 8
	addi.d	$a0, $a0, 2
	addi.d	$fp, $fp, 16
	bltu	$a0, $s2, .LBB4_49
.LBB4_50:                               # %cftbsub.exit
	ld.d	$s5, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end4:
	.size	cdft, .Lfunc_end4-cdft
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function errorcheck
.LCPI5_0:
	.dword	0x3ed02e85c0898b71              # double 3.8580246913580248E-6
	.text
	.globl	errorcheck
	.p2align	5
	.type	errorcheck,@function
errorcheck:                             # @errorcheck
# %bb.0:
	bge	$a1, $a0, .LBB5_2
# %bb.1:
	movgr2fr.d	$fa0, $zero
	ret
.LBB5_2:                                # %.lr.ph
	move	$a3, $zero
	fneg.d	$fa1, $fa0
	alsl.d	$a2, $a0, $a2, 3
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 1
	movgr2fr.d	$fa0, $zero
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3045
	lu12i.w	$a4, 13
	ori	$a4, $a4, 1525
	lu12i.w	$a5, 8285
	pcalau12i	$a6, %pc_hi20(.LCPI5_0)
	fld.d	$fa2, $a6, %pc_lo12(.LCPI5_0)
	ori	$a5, $a5, 185
	lu12i.w	$a6, 63
	ori	$a6, $a6, 1152
	.p2align	4, , 16
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	mul.d	$a3, $a3, $a1
	add.d	$a3, $a3, $a4
	bstrpick.d	$a7, $a3, 31, 7
	mul.d	$a7, $a7, $a5
	srli.d	$a7, $a7, 36
	mul.d	$a7, $a7, $a6
	sub.w	$a3, $a3, $a7
	fld.d	$fa3, $a2, 0
	bstrpick.d	$a7, $a3, 31, 0
	movgr2fr.d	$fa4, $a7
	ffint.d.l	$fa4, $fa4
	fmul.d	$fa3, $fa3, $fa1
	fmadd.d	$fa3, $fa4, $fa2, $fa3
	fabs.d	$fa3, $fa3
	fcmp.clt.d	$fcc0, $fa3, $fa0
	fsel	$fa0, $fa3, $fa0, $fcc0
	addi.w	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB5_3
# %bb.4:                                # %._crit_edge
	ret
.Lfunc_end5:
	.size	errorcheck, .Lfunc_end5-errorcheck
                                        # -- End function
	.p2align	5                               # -- Begin function bitrv2
	.type	bitrv2,@function
bitrv2:                                 # @bitrv2
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	st.d	$s0, $sp, 0                     # 8-byte Folded Spill
	ori	$a3, $zero, 9
	st.w	$zero, $a1, 0
	bltu	$a0, $a3, .LBB6_17
# %bb.1:                                # %.lr.ph216.preheader
	ori	$a4, $zero, 1
	ori	$a5, $zero, 4
	ori	$a6, $zero, 16
	ori	$a3, $zero, 1
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_2:                                # %._crit_edge
                                        #   in Loop: Header=BB6_3 Depth=1
	slli.w	$t0, $a7, 4
	addi.w	$t1, $a0, 0
	slli.w	$a3, $a7, 1
	bge	$t0, $t1, .LBB6_19
.LBB6_3:                                # %.lr.ph216
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_9 Depth 2
                                        #     Child Loop BB6_13 Depth 2
                                        #     Child Loop BB6_16 Depth 2
	move	$a7, $a3
	bstrpick.d	$a0, $a0, 31, 1
	blt	$a3, $a4, .LBB6_2
# %bb.4:                                # %iter.check
                                        #   in Loop: Header=BB6_3 Depth=1
	slli.d	$a3, $a7, 2
	bgeu	$a7, $a5, .LBB6_6
# %bb.5:                                #   in Loop: Header=BB6_3 Depth=1
	move	$t0, $zero
	b	.LBB6_15
	.p2align	4, , 16
.LBB6_6:                                # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB6_3 Depth=1
	bgeu	$a7, $a6, .LBB6_8
# %bb.7:                                #   in Loop: Header=BB6_3 Depth=1
	move	$t0, $zero
	b	.LBB6_12
.LBB6_8:                                # %vector.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	bstrpick.d	$t0, $a7, 30, 4
	slli.d	$t0, $t0, 4
	xvreplgr2vr.w	$xr0, $a0
	move	$t1, $a1
	move	$t2, $t0
	.p2align	4, , 16
.LBB6_9:                                # %vector.body
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr1, $t1, 0
	xvld	$xr2, $t1, 32
	xvadd.w	$xr1, $xr1, $xr0
	xvadd.w	$xr2, $xr2, $xr0
	add.d	$t3, $t1, $a3
	xvstx	$xr1, $t1, $a3
	xvst	$xr2, $t3, 32
	addi.d	$t2, $t2, -16
	addi.d	$t1, $t1, 64
	bnez	$t2, .LBB6_9
# %bb.10:                               # %middle.block
                                        #   in Loop: Header=BB6_3 Depth=1
	beq	$t0, $a7, .LBB6_2
# %bb.11:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB6_3 Depth=1
	andi	$t1, $a7, 12
	beqz	$t1, .LBB6_15
.LBB6_12:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	move	$t2, $t0
	bstrpick.d	$t0, $a7, 30, 2
	slli.d	$t0, $t0, 2
	vreplgr2vr.w	$vr0, $a0
	sub.d	$t1, $t2, $t0
	alsl.d	$t2, $t2, $a1, 2
	.p2align	4, , 16
.LBB6_13:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $t2, 0
	vadd.w	$vr1, $vr1, $vr0
	vstx	$vr1, $t2, $a3
	addi.d	$t1, $t1, 4
	addi.d	$t2, $t2, 16
	bnez	$t1, .LBB6_13
# %bb.14:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB6_3 Depth=1
	beq	$t0, $a7, .LBB6_2
.LBB6_15:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	alsl.d	$t1, $t0, $a1, 2
	sub.d	$t0, $a7, $t0
	.p2align	4, , 16
.LBB6_16:                               # %.lr.ph
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t1, 0
	add.d	$t2, $t2, $a0
	stx.w	$t2, $t1, $a3
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, 4
	bnez	$t0, .LBB6_16
	b	.LBB6_2
.LBB6_17:                               # %._crit_edge217.thread
	ori	$a3, $zero, 8
	bne	$a0, $a3, .LBB6_32
# %bb.18:
	ori	$a0, $zero, 2
	ori	$a3, $zero, 1
	b	.LBB6_21
.LBB6_19:                               # %._crit_edge217
	slli.d	$a0, $a7, 2
	bne	$t0, $t1, .LBB6_27
# %bb.20:                               # %.preheader208
	ori	$a4, $zero, 1
	blt	$a3, $a4, .LBB6_32
.LBB6_21:                               # %.preheader.lr.ph
	move	$a4, $zero
	slli.d	$a5, $a3, 2
	alsl.w	$a6, $a3, $a5, 1
	bstrpick.d	$a7, $a0, 31, 0
	slli.d	$a7, $a7, 3
	b	.LBB6_24
	.p2align	4, , 16
.LBB6_22:                               #   in Loop: Header=BB6_24 Depth=1
	move	$t0, $zero
.LBB6_23:                               # %._crit_edge230
                                        #   in Loop: Header=BB6_24 Depth=1
	add.d	$t1, $a3, $a4
	alsl.w	$t2, $t1, $t0, 1
	alsl.d	$t0, $t1, $t0, 1
	add.w	$t0, $t0, $a0
	slli.d	$t0, $t0, 3
	vldx	$vr0, $a2, $t0
	slli.d	$t1, $t2, 3
	vldx	$vr1, $a2, $t1
	vstx	$vr0, $a2, $t1
	addi.d	$a4, $a4, 1
	vstx	$vr1, $a2, $t0
	beq	$a4, $a3, .LBB6_32
.LBB6_24:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_26 Depth 2
	beqz	$a4, .LBB6_22
# %bb.25:                               # %.lr.ph229
                                        #   in Loop: Header=BB6_24 Depth=1
	slli.d	$t0, $a4, 2
	ldx.w	$t0, $a1, $t0
	slli.d	$t1, $a4, 1
	alsl.w	$t2, $a4, $a5, 1
	alsl.d	$t3, $t0, $a2, 3
	add.w	$t4, $a6, $t0
	add.w	$t5, $a5, $t0
	move	$t6, $a4
	move	$t7, $a1
	.p2align	4, , 16
.LBB6_26:                               #   Parent Loop BB6_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t8, $t7, 0
	add.w	$fp, $t8, $t1
	slli.d	$fp, $fp, 3
	vldx	$vr0, $a2, $fp
	vld	$vr1, $t3, 0
	vst	$vr0, $t3, 0
	vstx	$vr1, $a2, $fp
	add.w	$t8, $t8, $t2
	slli.d	$fp, $t8, 3
	vldx	$vr0, $a2, $fp
	vldx	$vr1, $t3, $a7
	vstx	$vr0, $t3, $a7
	vstx	$vr1, $a2, $fp
	sub.w	$t8, $t8, $a0
	slli.d	$fp, $t5, 3
	slli.d	$s0, $t8, 3
	vldx	$vr0, $a2, $s0
	vldx	$vr1, $a2, $fp
	vstx	$vr0, $a2, $fp
	vstx	$vr1, $a2, $s0
	add.w	$t8, $t8, $a5
	slli.d	$fp, $t4, 3
	slli.d	$t8, $t8, 3
	vldx	$vr0, $a2, $t8
	vldx	$vr1, $a2, $fp
	vstx	$vr0, $a2, $fp
	vstx	$vr1, $a2, $t8
	addi.d	$t3, $t3, 16
	addi.w	$t4, $t4, 2
	addi.w	$t5, $t5, 2
	addi.d	$t6, $t6, -1
	addi.d	$t7, $t7, 4
	bnez	$t6, .LBB6_26
	b	.LBB6_23
.LBB6_27:                               # %.preheader210
	ori	$a4, $zero, 2
	blt	$a3, $a4, .LBB6_32
# %bb.28:                               # %.preheader209.preheader
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB6_29:                               # %.preheader209
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_30 Depth 2
	slli.d	$a5, $a4, 2
	ldx.w	$t0, $a1, $a5
	slli.d	$a5, $a4, 1
	alsl.d	$a6, $t0, $a2, 3
	alsl.w	$a7, $a4, $a0, 1
	add.w	$t0, $a0, $t0
	move	$t1, $a4
	move	$t2, $a1
	.p2align	4, , 16
.LBB6_30:                               #   Parent Loop BB6_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t2, 0
	add.w	$t4, $t3, $a5
	slli.d	$t4, $t4, 3
	vldx	$vr0, $a2, $t4
	vld	$vr1, $a6, 0
	vst	$vr0, $a6, 0
	vstx	$vr1, $a2, $t4
	add.w	$t3, $t3, $a7
	slli.d	$t4, $t0, 3
	slli.d	$t3, $t3, 3
	vldx	$vr0, $a2, $t3
	vldx	$vr1, $a2, $t4
	vstx	$vr0, $a2, $t4
	vstx	$vr1, $a2, $t3
	addi.d	$a6, $a6, 16
	addi.w	$t0, $t0, 2
	addi.d	$t1, $t1, -1
	addi.d	$t2, $t2, 4
	bnez	$t1, .LBB6_30
# %bb.31:                               #   in Loop: Header=BB6_29 Depth=1
	addi.d	$a4, $a4, 1
	bne	$a4, $a3, .LBB6_29
.LBB6_32:                               # %.loopexit
	ld.d	$s0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end6:
	.size	bitrv2, .Lfunc_end6-bitrv2
                                        # -- End function
	.p2align	5                               # -- Begin function cftfsub
	.type	cftfsub,@function
cftfsub:                                # @cftfsub
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	ori	$a0, $zero, 9
	ori	$s2, $zero, 2
	bltu	$s0, $a0, .LBB7_4
# %bb.1:
	move	$s1, $a2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cft1st)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 33
	ori	$s2, $zero, 8
	bltu	$s0, $a0, .LBB7_4
# %bb.2:                                # %.lr.ph.preheader
	ori	$a1, $zero, 8
	ori	$a0, $zero, 32
	.p2align	4, , 16
.LBB7_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$s2, $a0
	move	$a0, $s0
	move	$a2, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(cftmdl)
	jirl	$ra, $ra, 0
	slli.w	$a0, $s2, 2
	move	$a1, $s2
	blt	$a0, $s0, .LBB7_3
.LBB7_4:                                # %.loopexit118
	slli.w	$a0, $s2, 2
	bne	$a0, $s0, .LBB7_8
# %bb.5:                                # %.preheader
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB7_11
# %bb.6:                                # %.lr.ph125.preheader
	move	$a0, $zero
	slli.w	$a1, $s2, 1
	alsl.w	$a2, $s2, $s2, 1
	slli.d	$a3, $s2, 3
	move	$a4, $fp
	.p2align	4, , 16
.LBB7_7:                                # %.lr.ph125
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a4, 0
	add.d	$a5, $a4, $a3
	fldx.d	$fa1, $a4, $a3
	fld.d	$fa2, $a4, 8
	fld.d	$fa3, $a5, 8
	fadd.d	$fa4, $fa0, $fa1
	fadd.d	$fa5, $fa2, $fa3
	alsl.d	$a6, $a1, $fp, 3
	slli.d	$a7, $a1, 3
	fldx.d	$fa6, $fp, $a7
	alsl.d	$t0, $a2, $fp, 3
	slli.d	$t1, $a2, 3
	fldx.d	$fa7, $fp, $t1
	fld.d	$ft0, $a6, 8
	fld.d	$ft1, $t0, 8
	fsub.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa3
	fadd.d	$fa2, $fa6, $fa7
	fadd.d	$fa3, $ft0, $ft1
	fsub.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $ft0, $ft1
	fadd.d	$ft0, $fa4, $fa2
	fst.d	$ft0, $a4, 0
	fadd.d	$ft0, $fa5, $fa3
	fst.d	$ft0, $a4, 8
	fsub.d	$fa2, $fa4, $fa2
	fstx.d	$fa2, $fp, $a7
	fsub.d	$fa2, $fa5, $fa3
	fst.d	$fa2, $a6, 8
	fsub.d	$fa2, $fa0, $fa7
	fstx.d	$fa2, $a4, $a3
	fadd.d	$fa2, $fa1, $fa6
	fst.d	$fa2, $a5, 8
	fadd.d	$fa0, $fa0, $fa7
	fstx.d	$fa0, $fp, $t1
	fsub.d	$fa0, $fa1, $fa6
	fst.d	$fa0, $t0, 8
	addi.d	$a0, $a0, 2
	addi.d	$a4, $a4, 16
	addi.w	$a2, $a2, 2
	addi.w	$a1, $a1, 2
	bltu	$a0, $s2, .LBB7_7
	b	.LBB7_11
.LBB7_8:                                # %.preheader116
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB7_11
# %bb.9:                                # %.lr.ph121.preheader
	move	$a0, $zero
	slli.d	$a1, $s2, 3
	.p2align	4, , 16
.LBB7_10:                               # %.lr.ph121
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $fp, 0
	vldx	$vr1, $fp, $a1
	vfadd.d	$vr2, $vr0, $vr1
	vst	$vr2, $fp, 0
	vfsub.d	$vr0, $vr0, $vr1
	vstx	$vr0, $fp, $a1
	addi.d	$a0, $a0, 2
	addi.d	$fp, $fp, 16
	bltu	$a0, $s2, .LBB7_10
.LBB7_11:                               # %.loopexit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end7:
	.size	cftfsub, .Lfunc_end7-cftfsub
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function cft1st
.LCPI8_0:
	.dword	0                               # 0x0
	.dword	2                               # 0x2
	.dword	4                               # 0x4
	.dword	6                               # 0x6
.LCPI8_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	0                               # 0x0
	.text
	.p2align	5
	.type	cft1st,@function
cft1st:                                 # @cft1st
# %bb.0:
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a1, 16
	fld.d	$fa2, $a1, 8
	fld.d	$fa3, $a1, 24
	fadd.d	$fa4, $fa0, $fa1
	fadd.d	$fa5, $fa2, $fa3
	fld.d	$fa6, $a1, 32
	fld.d	$fa7, $a1, 48
	fld.d	$ft0, $a1, 40
	fld.d	$ft1, $a1, 56
	fsub.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa3
	fadd.d	$fa2, $fa6, $fa7
	fadd.d	$fa3, $ft0, $ft1
	fsub.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $ft0, $ft1
	fadd.d	$ft0, $fa4, $fa2
	fst.d	$ft0, $a1, 0
	fadd.d	$ft0, $fa5, $fa3
	fst.d	$ft0, $a1, 8
	fsub.d	$fa2, $fa4, $fa2
	fst.d	$fa2, $a1, 32
	fsub.d	$fa2, $fa5, $fa3
	fst.d	$fa2, $a1, 40
	fsub.d	$fa2, $fa0, $fa7
	fst.d	$fa2, $a1, 16
	fadd.d	$fa2, $fa1, $fa6
	fst.d	$fa2, $a1, 24
	fadd.d	$fa0, $fa0, $fa7
	fst.d	$fa0, $a1, 48
	fsub.d	$fa0, $fa1, $fa6
	fld.d	$fa1, $a1, 64
	fld.d	$fa2, $a1, 80
	fld.d	$fa3, $a1, 72
	fld.d	$fa4, $a1, 88
	fst.d	$fa0, $a1, 56
	fld.d	$fa0, $a2, 16
	fadd.d	$fa5, $fa1, $fa2
	fadd.d	$fa6, $fa3, $fa4
	fld.d	$fa7, $a1, 96
	fld.d	$ft0, $a1, 112
	fld.d	$ft1, $a1, 104
	fld.d	$ft2, $a1, 120
	fsub.d	$fa1, $fa1, $fa2
	fsub.d	$fa2, $fa3, $fa4
	fadd.d	$fa3, $fa7, $ft0
	fadd.d	$fa4, $ft1, $ft2
	fsub.d	$fa7, $fa7, $ft0
	fsub.d	$ft0, $ft1, $ft2
	fadd.d	$ft1, $fa5, $fa3
	fst.d	$ft1, $a1, 64
	fadd.d	$ft1, $fa6, $fa4
	fst.d	$ft1, $a1, 72
	fsub.d	$fa4, $fa4, $fa6
	fst.d	$fa4, $a1, 96
	fsub.d	$fa3, $fa5, $fa3
	fst.d	$fa3, $a1, 104
	fsub.d	$fa3, $fa1, $ft0
	fadd.d	$fa4, $fa2, $fa7
	fsub.d	$fa5, $fa3, $fa4
	fmul.d	$fa5, $fa0, $fa5
	fst.d	$fa5, $a1, 80
	fadd.d	$fa3, $fa4, $fa3
	fmul.d	$fa3, $fa0, $fa3
	fst.d	$fa3, $a1, 88
	fadd.d	$fa1, $fa1, $ft0
	fsub.d	$fa2, $fa7, $fa2
	fsub.d	$fa3, $fa2, $fa1
	fmul.d	$fa3, $fa0, $fa3
	fst.d	$fa3, $a1, 112
	fadd.d	$fa1, $fa2, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ori	$a3, $zero, 17
	fst.d	$fa0, $a1, 120
	bltu	$a0, $a3, .LBB8_5
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a5, $a0, -17
	ori	$a4, $zero, 48
	ori	$a3, $zero, 16
	bgeu	$a5, $a4, .LBB8_6
# %bb.2:
	move	$a4, $zero
.LBB8_3:                                # %.lr.ph.preheader312
	alsl.d	$a1, $a3, $a1, 3
	addi.d	$a1, $a1, 64
	alsl.d	$a5, $a4, $a2, 3
	addi.d	$a5, $a5, 24
	alsl.d	$a2, $a4, $a2, 4
	addi.d	$a2, $a2, 56
	.p2align	4, , 16
.LBB8_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a5, 0
	fld.d	$fa0, $a5, -8
	fld.d	$fa2, $a2, -24
	fld.d	$fa3, $a2, -16
	fadd.d	$fa4, $fa1, $fa1
	fneg.d	$fa5, $fa4
	fld.d	$fa6, $a1, -64
	fld.d	$fa7, $a1, -48
	fld.d	$ft0, $a1, -56
	fld.d	$ft1, $a1, -40
	fmadd.d	$fa5, $fa5, $fa3, $fa2
	fmsub.d	$fa4, $fa4, $fa2, $fa3
	fadd.d	$ft2, $fa6, $fa7
	fadd.d	$ft3, $ft0, $ft1
	fld.d	$ft4, $a1, -32
	fld.d	$ft5, $a1, -16
	fld.d	$ft6, $a1, -24
	fld.d	$ft7, $a1, -8
	fsub.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $ft0, $ft1
	fadd.d	$ft0, $ft4, $ft5
	fadd.d	$ft1, $ft6, $ft7
	fsub.d	$ft4, $ft4, $ft5
	fsub.d	$ft5, $ft6, $ft7
	fadd.d	$ft6, $ft2, $ft0
	fst.d	$ft6, $a1, -64
	fadd.d	$ft6, $ft3, $ft1
	fst.d	$ft6, $a1, -56
	fsub.d	$ft0, $ft2, $ft0
	fsub.d	$ft1, $ft3, $ft1
	fneg.d	$ft2, $ft1
	fmul.d	$ft2, $fa1, $ft2
	fmadd.d	$ft2, $fa0, $ft0, $ft2
	fst.d	$ft2, $a1, -32
	fmul.d	$ft0, $fa1, $ft0
	fmadd.d	$ft0, $fa0, $ft1, $ft0
	fst.d	$ft0, $a1, -24
	fsub.d	$ft0, $fa6, $ft5
	fadd.d	$ft1, $fa7, $ft4
	fneg.d	$ft2, $ft1
	fmul.d	$ft2, $fa3, $ft2
	fmadd.d	$ft2, $fa2, $ft0, $ft2
	fst.d	$ft2, $a1, -48
	fmul.d	$fa3, $fa3, $ft0
	fmadd.d	$fa2, $fa2, $ft1, $fa3
	fst.d	$fa2, $a1, -40
	fadd.d	$fa2, $fa6, $ft5
	fsub.d	$fa3, $fa7, $ft4
	fneg.d	$fa6, $fa3
	fmul.d	$fa6, $fa4, $fa6
	fmadd.d	$fa6, $fa5, $fa2, $fa6
	fst.d	$fa6, $a1, -16
	fmul.d	$fa2, $fa4, $fa2
	fmadd.d	$fa2, $fa5, $fa3, $fa2
	fst.d	$fa2, $a1, -8
	fld.d	$fa2, $a2, -8
	fld.d	$fa3, $a2, 0
	fadd.d	$fa4, $fa0, $fa0
	fneg.d	$fa5, $fa4
	fld.d	$fa6, $a1, 0
	fld.d	$fa7, $a1, 16
	fld.d	$ft0, $a1, 8
	fld.d	$ft1, $a1, 24
	fmadd.d	$fa5, $fa5, $fa3, $fa2
	fmsub.d	$fa4, $fa4, $fa2, $fa3
	fadd.d	$ft2, $fa6, $fa7
	fadd.d	$ft3, $ft0, $ft1
	fld.d	$ft4, $a1, 32
	fld.d	$ft5, $a1, 48
	fld.d	$ft6, $a1, 40
	fld.d	$ft7, $a1, 56
	fsub.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $ft0, $ft1
	fadd.d	$ft0, $ft4, $ft5
	fadd.d	$ft1, $ft6, $ft7
	fsub.d	$ft4, $ft4, $ft5
	fsub.d	$ft5, $ft6, $ft7
	fadd.d	$ft6, $ft2, $ft0
	fst.d	$ft6, $a1, 0
	fadd.d	$ft6, $ft3, $ft1
	fst.d	$ft6, $a1, 8
	fsub.d	$ft0, $ft2, $ft0
	fsub.d	$ft1, $ft3, $ft1
	fneg.d	$fa1, $fa1
	fneg.d	$ft2, $ft1
	fmul.d	$ft2, $fa0, $ft2
	fmadd.d	$ft2, $fa1, $ft0, $ft2
	fst.d	$ft2, $a1, 32
	fmul.d	$fa0, $fa0, $ft0
	fmadd.d	$fa0, $fa1, $ft1, $fa0
	fst.d	$fa0, $a1, 40
	fsub.d	$fa0, $fa6, $ft5
	fadd.d	$fa1, $fa7, $ft4
	fneg.d	$ft0, $fa1
	fmul.d	$ft0, $fa3, $ft0
	fmadd.d	$ft0, $fa2, $fa0, $ft0
	fst.d	$ft0, $a1, 16
	fmul.d	$fa0, $fa3, $fa0
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fst.d	$fa0, $a1, 24
	fadd.d	$fa0, $fa6, $ft5
	fsub.d	$fa1, $fa7, $ft4
	fneg.d	$fa2, $fa1
	fmul.d	$fa2, $fa4, $fa2
	fmadd.d	$fa2, $fa5, $fa0, $fa2
	fst.d	$fa2, $a1, 48
	fmul.d	$fa0, $fa4, $fa0
	fmadd.d	$fa0, $fa5, $fa1, $fa0
	fst.d	$fa0, $a1, 56
	addi.d	$a3, $a3, 16
	addi.d	$a1, $a1, 128
	addi.d	$a5, $a5, 16
	addi.d	$a2, $a2, 32
	bltu	$a3, $a0, .LBB8_4
.LBB8_5:                                # %._crit_edge
	ret
.LBB8_6:                                # %vector.memcheck
	addi.d	$a6, $a1, 128
	addi.d	$a7, $a0, -17
	srli.d	$a4, $a7, 4
	slli.d	$t0, $a4, 7
	add.d	$t0, $a1, $t0
	addi.d	$t0, $t0, 256
	addi.d	$t1, $a2, 32
	slli.d	$a4, $a4, 5
	add.d	$a4, $a2, $a4
	addi.d	$a4, $a4, 64
	sltu	$a4, $a6, $a4
	sltu	$t2, $t1, $t0
	and	$t2, $a4, $t2
	move	$a4, $zero
	bnez	$t2, .LBB8_3
# %bb.7:                                # %vector.memcheck
	addi.d	$t2, $a2, 16
	bstrins.d	$a7, $zero, 3, 0
	add.d	$a7, $t1, $a7
	sltu	$a6, $a6, $a7
	sltu	$a7, $t2, $t0
	and	$a6, $a6, $a7
	bnez	$a6, .LBB8_3
# %bb.8:                                # %vector.ph
	addi.d	$a7, $a2, 24
	srli.d	$a3, $a5, 4
	addi.d	$a5, $a3, 1
	bstrpick.d	$a3, $a5, 60, 2
	slli.d	$a6, $a3, 2
	slli.d	$a4, $a3, 3
	slli.d	$a3, $a3, 6
	pcalau12i	$t0, %pc_hi20(.LCPI8_0)
	xvld	$xr0, $t0, %pc_lo12(.LCPI8_0)
	pcalau12i	$t0, %pc_hi20(.LCPI8_1)
	xvld	$xr1, $t0, %pc_lo12(.LCPI8_1)
	addi.d	$a3, $a3, 16
	addi.d	$a7, $a7, 48
	addi.d	$t0, $a1, 320
	move	$t1, $a6
	.p2align	4, , 16
.LBB8_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr4, $xr0, 2
	xvpickve2gr.d	$t2, $xr4, 0
	slli.d	$t2, $t2, 3
	xvpickve2gr.d	$t3, $xr4, 1
	slli.d	$t3, $t3, 3
	xvpickve2gr.d	$t4, $xr4, 2
	slli.d	$t4, $t4, 3
	xvpickve2gr.d	$t5, $xr4, 3
	slli.d	$t5, $t5, 3
	fldx.d	$fa2, $a2, $t2
	fldx.d	$fa3, $a2, $t3
	fldx.d	$fa5, $a2, $t4
	fldx.d	$fa6, $a2, $t5
	movfr2gr.d	$t2, $fa2
	xvinsgr2vr.d	$xr2, $t2, 0
	movfr2gr.d	$t2, $fa3
	xvinsgr2vr.d	$xr2, $t2, 1
	movfr2gr.d	$t2, $fa5
	xvinsgr2vr.d	$xr2, $t2, 2
	movfr2gr.d	$t2, $fa6
	fld.d	$fa3, $a7, -48
	fld.d	$fa5, $a7, -32
	fld.d	$fa6, $a7, -16
	fld.d	$fa7, $a7, 0
	xvinsgr2vr.d	$xr2, $t2, 3
	movfr2gr.d	$t2, $fa3
	xvinsgr2vr.d	$xr3, $t2, 0
	movfr2gr.d	$t2, $fa5
	xvinsgr2vr.d	$xr3, $t2, 1
	movfr2gr.d	$t2, $fa6
	xvinsgr2vr.d	$xr3, $t2, 2
	movfr2gr.d	$t2, $fa7
	xvinsgr2vr.d	$xr3, $t2, 3
	xvslli.d	$xr4, $xr4, 4
	xvpickve2gr.d	$t5, $xr4, 0
	add.d	$t2, $a2, $t5
	xvpickve2gr.d	$t6, $xr4, 1
	add.d	$t3, $a2, $t6
	xvpickve2gr.d	$t7, $xr4, 2
	add.d	$t4, $a2, $t7
	xvpickve2gr.d	$t8, $xr4, 3
	fldx.d	$fa4, $a2, $t5
	fldx.d	$fa5, $a2, $t6
	fldx.d	$fa7, $a2, $t7
	fldx.d	$ft0, $a2, $t8
	add.d	$t5, $a2, $t8
	movfr2gr.d	$t6, $fa4
	xvinsgr2vr.d	$xr6, $t6, 0
	movfr2gr.d	$t6, $fa5
	xvinsgr2vr.d	$xr6, $t6, 1
	movfr2gr.d	$t6, $fa7
	xvinsgr2vr.d	$xr6, $t6, 2
	movfr2gr.d	$t6, $ft0
	fld.d	$fa4, $t2, 8
	fld.d	$fa5, $t3, 8
	fld.d	$ft0, $t4, 8
	fld.d	$ft1, $t5, 8
	xvinsgr2vr.d	$xr6, $t6, 3
	movfr2gr.d	$t6, $fa4
	xvinsgr2vr.d	$xr7, $t6, 0
	movfr2gr.d	$t6, $fa5
	xvinsgr2vr.d	$xr7, $t6, 1
	movfr2gr.d	$t6, $ft0
	xvinsgr2vr.d	$xr7, $t6, 2
	movfr2gr.d	$t6, $ft1
	xvinsgr2vr.d	$xr7, $t6, 3
	xvfadd.d	$xr5, $xr3, $xr3
	xvbitrevi.d	$xr4, $xr5, 63
	xvfmadd.d	$xr4, $xr4, $xr7, $xr6
	fld.d	$ft0, $t0, -192
	fld.d	$ft1, $t0, -64
	fld.d	$ft2, $t0, 64
	fld.d	$ft3, $t0, 192
	xvfmsub.d	$xr5, $xr5, $xr6, $xr7
	movfr2gr.d	$t6, $ft0
	xvinsgr2vr.d	$xr8, $t6, 0
	movfr2gr.d	$t6, $ft1
	xvinsgr2vr.d	$xr8, $t6, 1
	movfr2gr.d	$t6, $ft2
	xvinsgr2vr.d	$xr8, $t6, 2
	movfr2gr.d	$t6, $ft3
	fld.d	$ft1, $t0, -176
	fld.d	$ft2, $t0, -48
	fld.d	$ft3, $t0, 80
	fld.d	$ft4, $t0, 208
	xvinsgr2vr.d	$xr8, $t6, 3
	movfr2gr.d	$t6, $ft1
	xvinsgr2vr.d	$xr9, $t6, 0
	movfr2gr.d	$t6, $ft2
	xvinsgr2vr.d	$xr9, $t6, 1
	movfr2gr.d	$t6, $ft3
	xvinsgr2vr.d	$xr9, $t6, 2
	movfr2gr.d	$t6, $ft4
	xvinsgr2vr.d	$xr9, $t6, 3
	fld.d	$ft3, $t0, -184
	fld.d	$ft4, $t0, -56
	fld.d	$ft5, $t0, 72
	fld.d	$ft6, $t0, 200
	xvfadd.d	$xr10, $xr8, $xr9
	movfr2gr.d	$t6, $ft3
	xvinsgr2vr.d	$xr11, $t6, 0
	movfr2gr.d	$t6, $ft4
	xvinsgr2vr.d	$xr11, $t6, 1
	movfr2gr.d	$t6, $ft5
	xvinsgr2vr.d	$xr11, $t6, 2
	movfr2gr.d	$t6, $ft6
	fld.d	$ft4, $t0, -168
	fld.d	$ft5, $t0, -40
	fld.d	$ft6, $t0, 88
	fld.d	$ft7, $t0, 216
	xvinsgr2vr.d	$xr11, $t6, 3
	movfr2gr.d	$t6, $ft4
	xvinsgr2vr.d	$xr12, $t6, 0
	movfr2gr.d	$t6, $ft5
	xvinsgr2vr.d	$xr12, $t6, 1
	movfr2gr.d	$t6, $ft6
	xvinsgr2vr.d	$xr12, $t6, 2
	movfr2gr.d	$t6, $ft7
	xvinsgr2vr.d	$xr12, $t6, 3
	xvfadd.d	$xr13, $xr11, $xr12
	xvfsub.d	$xr8, $xr8, $xr9
	fld.d	$ft6, $t0, -160
	fld.d	$ft7, $t0, -32
	fld.d	$ft8, $t0, 96
	fld.d	$ft9, $t0, 224
	xvfsub.d	$xr9, $xr11, $xr12
	movfr2gr.d	$t6, $ft6
	xvinsgr2vr.d	$xr11, $t6, 0
	movfr2gr.d	$t6, $ft7
	xvinsgr2vr.d	$xr11, $t6, 1
	movfr2gr.d	$t6, $ft8
	xvinsgr2vr.d	$xr11, $t6, 2
	movfr2gr.d	$t6, $ft9
	fld.d	$ft4, $t0, -144
	fld.d	$ft6, $t0, -16
	fld.d	$ft7, $t0, 112
	fld.d	$ft8, $t0, 240
	xvinsgr2vr.d	$xr11, $t6, 3
	movfr2gr.d	$t6, $ft4
	xvinsgr2vr.d	$xr12, $t6, 0
	movfr2gr.d	$t6, $ft6
	xvinsgr2vr.d	$xr12, $t6, 1
	movfr2gr.d	$t6, $ft7
	xvinsgr2vr.d	$xr12, $t6, 2
	movfr2gr.d	$t6, $ft8
	xvinsgr2vr.d	$xr12, $t6, 3
	fld.d	$ft7, $t0, -152
	fld.d	$ft8, $t0, -24
	fld.d	$ft9, $t0, 104
	fld.d	$ft10, $t0, 232
	xvfadd.d	$xr14, $xr11, $xr12
	movfr2gr.d	$t6, $ft7
	xvinsgr2vr.d	$xr15, $t6, 0
	movfr2gr.d	$t6, $ft8
	xvinsgr2vr.d	$xr15, $t6, 1
	movfr2gr.d	$t6, $ft9
	xvinsgr2vr.d	$xr15, $t6, 2
	movfr2gr.d	$t6, $ft10
	fld.d	$ft8, $t0, -136
	fld.d	$ft9, $t0, -8
	fld.d	$ft10, $t0, 120
	fld.d	$ft11, $t0, 248
	xvinsgr2vr.d	$xr15, $t6, 3
	movfr2gr.d	$t6, $ft8
	xvinsgr2vr.d	$xr16, $t6, 0
	movfr2gr.d	$t6, $ft9
	xvinsgr2vr.d	$xr16, $t6, 1
	movfr2gr.d	$t6, $ft10
	xvinsgr2vr.d	$xr16, $t6, 2
	movfr2gr.d	$t6, $ft11
	xvinsgr2vr.d	$xr16, $t6, 3
	xvfadd.d	$xr19, $xr15, $xr16
	xvfsub.d	$xr17, $xr11, $xr12
	xvfadd.d	$xr11, $xr10, $xr14
	xvpickve2gr.d	$t6, $xr11, 1
	movgr2fr.d	$ft4, $t6
	xvfsub.d	$xr18, $xr15, $xr16
	movfr2gr.d	$t6, $ft4
	xvfadd.d	$xr12, $xr13, $xr19
	xvpickve2gr.d	$t7, $xr12, 1
	movgr2fr.d	$ft7, $t7
	vinsgr2vr.d	$vr16, $t6, 0
	movfr2gr.d	$t6, $ft7
	vinsgr2vr.d	$vr16, $t6, 1
	xvpickve2gr.d	$t6, $xr11, 2
	movgr2fr.d	$ft7, $t6
	vst	$vr16, $t0, -64
	movfr2gr.d	$t6, $ft7
	xvpickve2gr.d	$t7, $xr12, 2
	movgr2fr.d	$ft7, $t7
	vinsgr2vr.d	$vr16, $t6, 0
	movfr2gr.d	$t6, $ft7
	vinsgr2vr.d	$vr16, $t6, 1
	xvpickve2gr.d	$t6, $xr11, 3
	movgr2fr.d	$ft7, $t6
	vst	$vr16, $t0, 64
	movfr2gr.d	$t6, $ft7
	xvpickve2gr.d	$t7, $xr12, 3
	movgr2fr.d	$ft7, $t7
	vinsgr2vr.d	$vr16, $t6, 0
	movfr2gr.d	$t6, $ft7
	vinsgr2vr.d	$vr16, $t6, 1
	vst	$vr16, $t0, 192
	xvfsub.d	$xr14, $xr10, $xr14
	xvfsub.d	$xr13, $xr13, $xr19
	xvbitrevi.d	$xr10, $xr13, 63
	xvfmul.d	$xr10, $xr3, $xr10
	xvfmadd.d	$xr10, $xr2, $xr14, $xr10
	xvstelm.d	$xr10, $t0, -32, 1
	xvstelm.d	$xr10, $t0, 96, 2
	xvfmul.d	$xr14, $xr3, $xr14
	xvfmadd.d	$xr14, $xr2, $xr13, $xr14
	xvpickve2gr.d	$t6, $xr14, 1
	movgr2fr.d	$ft5, $t6
	xvstelm.d	$xr10, $t0, 224, 3
	movfr2gr.d	$t6, $ft5
	xvfadd.d	$xr16, $xr8, $xr18
	xvfsub.d	$xr13, $xr9, $xr17
	xvbitrevi.d	$xr15, $xr13, 63
	xvfmul.d	$xr15, $xr5, $xr15
	xvfmadd.d	$xr15, $xr4, $xr16, $xr15
	xvpickve2gr.d	$t7, $xr15, 1
	movgr2fr.d	$ft11, $t7
	vinsgr2vr.d	$vr20, $t6, 0
	movfr2gr.d	$t6, $ft11
	vinsgr2vr.d	$vr20, $t6, 1
	xvpickve2gr.d	$t6, $xr14, 2
	movgr2fr.d	$ft11, $t6
	vst	$vr20, $t0, -24
	movfr2gr.d	$t6, $ft11
	xvpickve2gr.d	$t7, $xr15, 2
	movgr2fr.d	$ft11, $t7
	vinsgr2vr.d	$vr20, $t6, 0
	movfr2gr.d	$t6, $ft11
	vinsgr2vr.d	$vr20, $t6, 1
	xvpickve2gr.d	$t6, $xr14, 3
	movgr2fr.d	$ft11, $t6
	vst	$vr20, $t0, 104
	movfr2gr.d	$t6, $ft11
	xvpickve2gr.d	$t7, $xr15, 3
	movgr2fr.d	$ft11, $t7
	vinsgr2vr.d	$vr20, $t6, 0
	movfr2gr.d	$t6, $ft11
	vinsgr2vr.d	$vr20, $t6, 1
	xvfsub.d	$xr8, $xr8, $xr18
	xvfadd.d	$xr9, $xr9, $xr17
	xvbitrevi.d	$xr17, $xr9, 63
	xvfmul.d	$xr17, $xr7, $xr17
	xvfmadd.d	$xr17, $xr6, $xr8, $xr17
	xvpickve2gr.d	$t6, $xr17, 1
	movgr2fr.d	$ft10, $t6
	vst	$vr20, $t0, 232
	movfr2gr.d	$t6, $ft10
	xvfmul.d	$xr7, $xr7, $xr8
	xvfmadd.d	$xr6, $xr6, $xr9, $xr7
	xvpickve2gr.d	$t7, $xr6, 1
	movgr2fr.d	$fa7, $t7
	vinsgr2vr.d	$vr8, $t6, 0
	movfr2gr.d	$t6, $fa7
	vinsgr2vr.d	$vr8, $t6, 1
	xvpickve2gr.d	$t6, $xr17, 2
	movgr2fr.d	$fa7, $t6
	vst	$vr8, $t0, -48
	movfr2gr.d	$t6, $fa7
	xvpickve2gr.d	$t7, $xr6, 2
	movgr2fr.d	$fa7, $t7
	vinsgr2vr.d	$vr8, $t6, 0
	movfr2gr.d	$t6, $fa7
	vinsgr2vr.d	$vr8, $t6, 1
	xvpickve2gr.d	$t6, $xr17, 3
	movgr2fr.d	$fa7, $t6
	vst	$vr8, $t0, 80
	movfr2gr.d	$t6, $fa7
	xvpickve2gr.d	$t7, $xr6, 3
	movgr2fr.d	$fa7, $t7
	vinsgr2vr.d	$vr8, $t6, 0
	movfr2gr.d	$t6, $fa7
	vinsgr2vr.d	$vr8, $t6, 1
	xvpermi.d	$xr7, $xr11, 68
	xvpermi.d	$xr9, $xr12, 68
	xvpackev.d	$xr7, $xr9, $xr7
	xvpermi.d	$xr7, $xr7, 68
	xvpermi.d	$xr9, $xr17, 68
	xvori.b	$xr11, $xr1, 0
	xvshuf.d	$xr11, $xr9, $xr7
	xvpickve2gr.d	$t6, $xr11, 0
	movgr2fr.d	$fa7, $t6
	vst	$vr8, $t0, 208
	movfr2gr.d	$t6, $fa7
	xvpickve2gr.d	$t7, $xr11, 1
	movgr2fr.d	$fa7, $t7
	xvinsgr2vr.d	$xr8, $t6, 0
	movfr2gr.d	$t6, $fa7
	xvpickve2gr.d	$t7, $xr11, 2
	movgr2fr.d	$fa7, $t7
	xvinsgr2vr.d	$xr8, $t6, 1
	movfr2gr.d	$t6, $fa7
	xvpickve2gr.d	$t7, $xr6, 0
	movgr2fr.d	$fa6, $t7
	xvinsgr2vr.d	$xr8, $t6, 2
	movfr2gr.d	$t6, $fa6
	xvinsgr2vr.d	$xr8, $t6, 3
	xvst	$xr8, $t0, -192
	xvfmul.d	$xr5, $xr5, $xr16
	xvpermi.d	$xr6, $xr14, 68
	xvpermi.d	$xr7, $xr10, 68
	xvpackev.d	$xr6, $xr6, $xr7
	xvpermi.d	$xr6, $xr6, 68
	xvpermi.d	$xr7, $xr15, 68
	xvori.b	$xr8, $xr1, 0
	xvshuf.d	$xr8, $xr7, $xr6
	xvpickve2gr.d	$t6, $xr8, 0
	movgr2fr.d	$fa6, $t6
	xvfmadd.d	$xr4, $xr4, $xr13, $xr5
	movfr2gr.d	$t6, $fa6
	xvpickve2gr.d	$t7, $xr8, 1
	movgr2fr.d	$fa5, $t7
	xvinsgr2vr.d	$xr6, $t6, 0
	movfr2gr.d	$t6, $fa5
	xvpickve2gr.d	$t7, $xr8, 2
	movgr2fr.d	$fa5, $t7
	xvinsgr2vr.d	$xr6, $t6, 1
	movfr2gr.d	$t6, $fa5
	xvpickve2gr.d	$t7, $xr4, 0
	movgr2fr.d	$fa5, $t7
	xvinsgr2vr.d	$xr6, $t6, 2
	movfr2gr.d	$t6, $fa5
	xvinsgr2vr.d	$xr6, $t6, 3
	xvst	$xr6, $t0, -160
	xvstelm.d	$xr4, $t0, -8, 1
	xvstelm.d	$xr4, $t0, 120, 2
	fld.d	$fa5, $t2, 16
	fld.d	$fa7, $t3, 16
	fld.d	$ft0, $t4, 16
	fld.d	$ft1, $t5, 16
	xvstelm.d	$xr4, $t0, 248, 3
	movfr2gr.d	$t6, $fa5
	xvinsgr2vr.d	$xr6, $t6, 0
	movfr2gr.d	$t6, $fa7
	xvinsgr2vr.d	$xr6, $t6, 1
	movfr2gr.d	$t6, $ft0
	xvinsgr2vr.d	$xr6, $t6, 2
	movfr2gr.d	$t6, $ft1
	fld.d	$fa4, $t2, 24
	fld.d	$fa5, $t3, 24
	fld.d	$ft0, $t4, 24
	fld.d	$ft1, $t5, 24
	xvinsgr2vr.d	$xr6, $t6, 3
	movfr2gr.d	$t2, $fa4
	xvinsgr2vr.d	$xr7, $t2, 0
	movfr2gr.d	$t2, $fa5
	xvinsgr2vr.d	$xr7, $t2, 1
	movfr2gr.d	$t2, $ft0
	xvinsgr2vr.d	$xr7, $t2, 2
	movfr2gr.d	$t2, $ft1
	xvinsgr2vr.d	$xr7, $t2, 3
	xvfadd.d	$xr5, $xr2, $xr2
	xvbitrevi.d	$xr4, $xr5, 63
	xvfmadd.d	$xr4, $xr4, $xr7, $xr6
	fld.d	$ft0, $t0, -128
	fld.d	$ft1, $t0, 0
	fld.d	$ft2, $t0, 128
	fld.d	$ft3, $t0, 256
	xvfmsub.d	$xr5, $xr5, $xr6, $xr7
	movfr2gr.d	$t2, $ft0
	xvinsgr2vr.d	$xr8, $t2, 0
	movfr2gr.d	$t2, $ft1
	xvinsgr2vr.d	$xr8, $t2, 1
	movfr2gr.d	$t2, $ft2
	xvinsgr2vr.d	$xr8, $t2, 2
	movfr2gr.d	$t2, $ft3
	fld.d	$ft1, $t0, -112
	fld.d	$ft2, $t0, 16
	fld.d	$ft3, $t0, 144
	fld.d	$ft4, $t0, 272
	xvinsgr2vr.d	$xr8, $t2, 3
	movfr2gr.d	$t2, $ft1
	xvinsgr2vr.d	$xr9, $t2, 0
	movfr2gr.d	$t2, $ft2
	xvinsgr2vr.d	$xr9, $t2, 1
	movfr2gr.d	$t2, $ft3
	xvinsgr2vr.d	$xr9, $t2, 2
	movfr2gr.d	$t2, $ft4
	xvinsgr2vr.d	$xr9, $t2, 3
	fld.d	$ft3, $t0, -120
	fld.d	$ft4, $t0, 8
	fld.d	$ft5, $t0, 136
	fld.d	$ft6, $t0, 264
	xvfadd.d	$xr10, $xr8, $xr9
	movfr2gr.d	$t2, $ft3
	xvinsgr2vr.d	$xr11, $t2, 0
	movfr2gr.d	$t2, $ft4
	xvinsgr2vr.d	$xr11, $t2, 1
	movfr2gr.d	$t2, $ft5
	xvinsgr2vr.d	$xr11, $t2, 2
	movfr2gr.d	$t2, $ft6
	fld.d	$ft4, $t0, -104
	fld.d	$ft5, $t0, 24
	fld.d	$ft6, $t0, 152
	fld.d	$ft7, $t0, 280
	xvinsgr2vr.d	$xr11, $t2, 3
	movfr2gr.d	$t2, $ft4
	xvinsgr2vr.d	$xr12, $t2, 0
	movfr2gr.d	$t2, $ft5
	xvinsgr2vr.d	$xr12, $t2, 1
	movfr2gr.d	$t2, $ft6
	xvinsgr2vr.d	$xr12, $t2, 2
	movfr2gr.d	$t2, $ft7
	xvinsgr2vr.d	$xr12, $t2, 3
	xvfadd.d	$xr13, $xr11, $xr12
	xvfsub.d	$xr8, $xr8, $xr9
	fld.d	$ft6, $t0, -96
	fld.d	$ft7, $t0, 32
	fld.d	$ft8, $t0, 160
	fld.d	$ft9, $t0, 288
	xvfsub.d	$xr9, $xr11, $xr12
	movfr2gr.d	$t2, $ft6
	xvinsgr2vr.d	$xr11, $t2, 0
	movfr2gr.d	$t2, $ft7
	xvinsgr2vr.d	$xr11, $t2, 1
	movfr2gr.d	$t2, $ft8
	xvinsgr2vr.d	$xr11, $t2, 2
	movfr2gr.d	$t2, $ft9
	fld.d	$ft4, $t0, -80
	fld.d	$ft6, $t0, 48
	fld.d	$ft7, $t0, 176
	fld.d	$ft8, $t0, 304
	xvinsgr2vr.d	$xr11, $t2, 3
	movfr2gr.d	$t2, $ft4
	xvinsgr2vr.d	$xr12, $t2, 0
	movfr2gr.d	$t2, $ft6
	xvinsgr2vr.d	$xr12, $t2, 1
	movfr2gr.d	$t2, $ft7
	xvinsgr2vr.d	$xr12, $t2, 2
	movfr2gr.d	$t2, $ft8
	xvinsgr2vr.d	$xr12, $t2, 3
	fld.d	$ft7, $t0, -88
	fld.d	$ft8, $t0, 40
	fld.d	$ft9, $t0, 168
	fld.d	$ft10, $t0, 296
	xvfadd.d	$xr14, $xr11, $xr12
	movfr2gr.d	$t2, $ft7
	xvinsgr2vr.d	$xr19, $t2, 0
	movfr2gr.d	$t2, $ft8
	xvinsgr2vr.d	$xr19, $t2, 1
	movfr2gr.d	$t2, $ft9
	xvinsgr2vr.d	$xr19, $t2, 2
	movfr2gr.d	$t2, $ft10
	fld.d	$ft7, $t0, -72
	fld.d	$ft8, $t0, 56
	fld.d	$ft9, $t0, 184
	fld.d	$ft10, $t0, 312
	xvinsgr2vr.d	$xr19, $t2, 3
	movfr2gr.d	$t2, $ft7
	xvinsgr2vr.d	$xr20, $t2, 0
	movfr2gr.d	$t2, $ft8
	xvinsgr2vr.d	$xr20, $t2, 1
	movfr2gr.d	$t2, $ft9
	xvinsgr2vr.d	$xr20, $t2, 2
	movfr2gr.d	$t2, $ft10
	xvinsgr2vr.d	$xr20, $t2, 3
	xvfadd.d	$xr17, $xr19, $xr20
	xvfsub.d	$xr15, $xr11, $xr12
	xvfadd.d	$xr11, $xr10, $xr14
	xvpickve2gr.d	$t2, $xr11, 1
	movgr2fr.d	$ft4, $t2
	xvfsub.d	$xr16, $xr19, $xr20
	movfr2gr.d	$t2, $ft4
	xvfadd.d	$xr12, $xr13, $xr17
	xvpickve2gr.d	$t3, $xr12, 1
	movgr2fr.d	$ft10, $t3
	vinsgr2vr.d	$vr19, $t2, 0
	movfr2gr.d	$t2, $ft10
	vinsgr2vr.d	$vr19, $t2, 1
	xvpickve2gr.d	$t2, $xr11, 2
	movgr2fr.d	$ft10, $t2
	vst	$vr19, $t0, 0
	movfr2gr.d	$t2, $ft10
	xvpickve2gr.d	$t3, $xr12, 2
	movgr2fr.d	$ft10, $t3
	vinsgr2vr.d	$vr19, $t2, 0
	movfr2gr.d	$t2, $ft10
	vinsgr2vr.d	$vr19, $t2, 1
	xvpickve2gr.d	$t2, $xr11, 3
	movgr2fr.d	$ft10, $t2
	vst	$vr19, $t0, 128
	movfr2gr.d	$t2, $ft10
	xvpickve2gr.d	$t3, $xr12, 3
	movgr2fr.d	$ft10, $t3
	vinsgr2vr.d	$vr19, $t2, 0
	movfr2gr.d	$t2, $ft10
	vinsgr2vr.d	$vr19, $t2, 1
	vst	$vr19, $t0, 256
	xvfsub.d	$xr10, $xr10, $xr14
	xvfsub.d	$xr13, $xr13, $xr17
	xvbitrevi.d	$xr14, $xr3, 63
	xvbitrevi.d	$xr3, $xr13, 63
	xvfmul.d	$xr3, $xr2, $xr3
	xvfmadd.d	$xr3, $xr14, $xr10, $xr3
	xvstelm.d	$xr3, $t0, 32, 1
	xvstelm.d	$xr3, $t0, 160, 2
	xvfmul.d	$xr2, $xr2, $xr10
	xvfmadd.d	$xr10, $xr14, $xr13, $xr2
	xvpickve2gr.d	$t2, $xr10, 1
	movgr2fr.d	$ft9, $t2
	xvfadd.d	$xr14, $xr8, $xr16
	xvfsub.d	$xr2, $xr9, $xr15
	xvbitrevi.d	$xr13, $xr2, 63
	xvfmul.d	$xr13, $xr5, $xr13
	xvfmadd.d	$xr13, $xr4, $xr14, $xr13
	xvpickve2gr.d	$t2, $xr13, 1
	movgr2fr.d	$ft10, $t2
	xvstelm.d	$xr3, $t0, 288, 3
	movfr2gr.d	$t2, $ft10
	movfr2gr.d	$t3, $ft9
	vinsgr2vr.d	$vr17, $t3, 0
	vinsgr2vr.d	$vr17, $t2, 1
	xvpickve2gr.d	$t2, $xr10, 2
	movgr2fr.d	$ft10, $t2
	xvpickve2gr.d	$t2, $xr13, 2
	movgr2fr.d	$ft11, $t2
	vst	$vr17, $t0, 40
	movfr2gr.d	$t2, $ft11
	movfr2gr.d	$t3, $ft10
	vinsgr2vr.d	$vr17, $t3, 0
	vinsgr2vr.d	$vr17, $t2, 1
	xvpickve2gr.d	$t2, $xr10, 3
	movgr2fr.d	$ft10, $t2
	xvpickve2gr.d	$t2, $xr13, 3
	movgr2fr.d	$ft11, $t2
	vst	$vr17, $t0, 168
	movfr2gr.d	$t2, $ft11
	movfr2gr.d	$t3, $ft10
	vinsgr2vr.d	$vr17, $t3, 0
	vinsgr2vr.d	$vr17, $t2, 1
	xvfsub.d	$xr8, $xr8, $xr16
	xvfadd.d	$xr9, $xr9, $xr15
	xvbitrevi.d	$xr15, $xr9, 63
	xvfmul.d	$xr15, $xr7, $xr15
	xvfmadd.d	$xr15, $xr6, $xr8, $xr15
	xvpickve2gr.d	$t2, $xr15, 1
	movgr2fr.d	$ft8, $t2
	vst	$vr17, $t0, 296
	movfr2gr.d	$t2, $ft8
	xvfmul.d	$xr7, $xr7, $xr8
	xvfmadd.d	$xr6, $xr6, $xr9, $xr7
	xvpickve2gr.d	$t3, $xr6, 1
	movgr2fr.d	$fa7, $t3
	vinsgr2vr.d	$vr8, $t2, 0
	movfr2gr.d	$t2, $fa7
	vinsgr2vr.d	$vr8, $t2, 1
	xvpickve2gr.d	$t2, $xr15, 2
	movgr2fr.d	$fa7, $t2
	vst	$vr8, $t0, 16
	movfr2gr.d	$t2, $fa7
	xvpickve2gr.d	$t3, $xr6, 2
	movgr2fr.d	$fa7, $t3
	vinsgr2vr.d	$vr8, $t2, 0
	movfr2gr.d	$t2, $fa7
	vinsgr2vr.d	$vr8, $t2, 1
	xvpickve2gr.d	$t2, $xr15, 3
	movgr2fr.d	$fa7, $t2
	vst	$vr8, $t0, 144
	movfr2gr.d	$t2, $fa7
	xvpickve2gr.d	$t3, $xr6, 3
	movgr2fr.d	$fa7, $t3
	vinsgr2vr.d	$vr8, $t2, 0
	movfr2gr.d	$t2, $fa7
	vinsgr2vr.d	$vr8, $t2, 1
	xvpermi.d	$xr7, $xr11, 68
	xvpermi.d	$xr9, $xr12, 68
	xvpackev.d	$xr7, $xr9, $xr7
	xvpermi.d	$xr7, $xr7, 68
	xvpermi.d	$xr9, $xr15, 68
	xvori.b	$xr11, $xr1, 0
	xvshuf.d	$xr11, $xr9, $xr7
	xvpickve2gr.d	$t2, $xr11, 0
	movgr2fr.d	$fa7, $t2
	vst	$vr8, $t0, 272
	movfr2gr.d	$t2, $fa7
	xvpickve2gr.d	$t3, $xr11, 1
	movgr2fr.d	$fa7, $t3
	xvinsgr2vr.d	$xr8, $t2, 0
	movfr2gr.d	$t2, $fa7
	xvpickve2gr.d	$t3, $xr11, 2
	movgr2fr.d	$fa7, $t3
	xvinsgr2vr.d	$xr8, $t2, 1
	movfr2gr.d	$t2, $fa7
	xvpickve2gr.d	$t3, $xr6, 0
	movgr2fr.d	$fa6, $t3
	xvinsgr2vr.d	$xr8, $t2, 2
	movfr2gr.d	$t2, $fa6
	xvinsgr2vr.d	$xr8, $t2, 3
	xvst	$xr8, $t0, -128
	xvfmul.d	$xr5, $xr5, $xr14
	xvpermi.d	$xr6, $xr10, 68
	xvpermi.d	$xr3, $xr3, 68
	xvpackev.d	$xr3, $xr6, $xr3
	xvpermi.d	$xr6, $xr13, 68
	xvpermi.d	$xr3, $xr3, 68
	xvori.b	$xr7, $xr1, 0
	xvshuf.d	$xr7, $xr6, $xr3
	xvpickve2gr.d	$t2, $xr7, 0
	movgr2fr.d	$fa3, $t2
	xvfmadd.d	$xr2, $xr4, $xr2, $xr5
	movfr2gr.d	$t2, $fa3
	xvpickve2gr.d	$t3, $xr7, 1
	movgr2fr.d	$fa3, $t3
	xvinsgr2vr.d	$xr4, $t2, 0
	movfr2gr.d	$t2, $fa3
	xvpickve2gr.d	$t3, $xr7, 2
	movgr2fr.d	$fa3, $t3
	xvinsgr2vr.d	$xr4, $t2, 1
	movfr2gr.d	$t2, $fa3
	xvpickve2gr.d	$t3, $xr2, 0
	movgr2fr.d	$fa3, $t3
	xvinsgr2vr.d	$xr4, $t2, 2
	movfr2gr.d	$t2, $fa3
	xvinsgr2vr.d	$xr4, $t2, 3
	xvst	$xr4, $t0, -96
	xvstelm.d	$xr2, $t0, 56, 1
	xvstelm.d	$xr2, $t0, 184, 2
	xvstelm.d	$xr2, $t0, 312, 3
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$t1, $t1, -4
	addi.d	$a7, $a7, 64
	addi.d	$t0, $t0, 512
	bnez	$t1, .LBB8_9
# %bb.10:                               # %middle.block
	bne	$a5, $a6, .LBB8_3
	b	.LBB8_5
.Lfunc_end8:
	.size	cft1st, .Lfunc_end8-cft1st
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function cftmdl
.LCPI9_0:
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	6                               # 0x6
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI9_1:
	.dword	0                               # 0x0
	.dword	2                               # 0x2
	.dword	1                               # 0x1
	.dword	3                               # 0x3
.LCPI9_2:
	.dword	1                               # 0x1
	.dword	3                               # 0x3
	.dword	0                               # 0x0
	.dword	2                               # 0x2
	.text
	.p2align	5
	.type	cftmdl,@function
cftmdl:                                 # @cftmdl
# %bb.0:
	addi.d	$sp, $sp, -1312
	st.d	$ra, $sp, 1304                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1296                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1288                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1280                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1272                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1264                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1256                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1248                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1240                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1232                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1224                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1216                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1208                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1200                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1192                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1184                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1176                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1168                 # 8-byte Folded Spill
	fst.d	$fs7, $sp, 1160                 # 8-byte Folded Spill
	addi.d	$fp, $sp, 1312
	bstrins.d	$sp, $zero, 4, 0
	st.d	$a3, $sp, 296                   # 8-byte Folded Spill
	move	$s5, $a1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	slli.d	$a5, $a1, 2
	addi.w	$a7, $a5, 0
	slli.w	$a0, $a1, 1
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	alsl.w	$a0, $a1, $a1, 1
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	slli.d	$a6, $a1, 3
	blt	$a1, $a0, .LBB9_3
# %bb.1:                                # %.lr.ph.preheader
	move	$a0, $zero
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	move	$a4, $a2
	.p2align	4, , 16
.LBB9_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a4, 0
	add.d	$t0, $a4, $a6
	fldx.d	$fa1, $a4, $a6
	fld.d	$fa2, $a4, 8
	fld.d	$fa3, $t0, 8
	fadd.d	$fa4, $fa0, $fa1
	fadd.d	$fa5, $fa2, $fa3
	alsl.d	$t1, $a1, $a2, 3
	slli.d	$t2, $a1, 3
	fldx.d	$fa6, $a2, $t2
	alsl.d	$t3, $a3, $a2, 3
	slli.d	$t4, $a3, 3
	fldx.d	$fa7, $a2, $t4
	fld.d	$ft0, $t1, 8
	fld.d	$ft1, $t3, 8
	fsub.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa3
	fadd.d	$fa2, $fa6, $fa7
	fadd.d	$fa3, $ft0, $ft1
	fsub.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $ft0, $ft1
	fadd.d	$ft0, $fa4, $fa2
	fst.d	$ft0, $a4, 0
	fadd.d	$ft0, $fa5, $fa3
	fst.d	$ft0, $a4, 8
	fsub.d	$fa2, $fa4, $fa2
	fstx.d	$fa2, $a2, $t2
	fsub.d	$fa2, $fa5, $fa3
	fst.d	$fa2, $t1, 8
	fsub.d	$fa2, $fa0, $fa7
	fstx.d	$fa2, $a4, $a6
	fadd.d	$fa2, $fa1, $fa6
	fst.d	$fa2, $t0, 8
	fadd.d	$fa0, $fa0, $fa7
	fstx.d	$fa0, $a2, $t4
	fsub.d	$fa0, $fa1, $fa6
	fst.d	$fa0, $t3, 8
	addi.d	$a0, $a0, 2
	addi.d	$a4, $a4, 16
	addi.w	$a3, $a3, 2
	addi.w	$a1, $a1, 2
	bltu	$a0, $s5, .LBB9_2
.LBB9_3:                                # %._crit_edge
	alsl.w	$a0, $s5, $s5, 2
	pcalau12i	$a1, %pc_hi20(.LCPI9_0)
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(.LCPI9_1)
	pcalau12i	$s8, %pc_hi20(.LCPI9_2)
	st.d	$s5, $sp, 256                   # 8-byte Folded Spill
	st.d	$s7, $sp, 120                   # 8-byte Folded Spill
	st.d	$s8, $sp, 112                   # 8-byte Folded Spill
	bge	$a7, $a0, .LBB9_8
# %bb.4:                                # %.lr.ph406.preheader
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	fld.d	$fa0, $a1, 16
	nor	$a1, $a7, $zero
	add.d	$a3, $a1, $a0
	ori	$a1, $zero, 86
	slli.d	$a4, $s5, 3
	bgeu	$a3, $a1, .LBB9_99
.LBB9_5:
	move	$t2, $a7
.LBB9_6:                                # %.lr.ph406.preheader985
	alsl.d	$a1, $t2, $a2, 3
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	add.w	$a3, $a3, $t2
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	add.w	$a5, $a5, $t2
	.p2align	4, , 16
.LBB9_7:                                # %.lr.ph406
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a1, 0
	add.d	$t0, $a1, $a4
	fldx.d	$fa2, $a1, $a4
	fld.d	$fa3, $a1, 8
	fld.d	$fa4, $t0, 8
	fadd.d	$fa5, $fa1, $fa2
	fadd.d	$fa6, $fa3, $fa4
	alsl.d	$t1, $a3, $a2, 3
	slli.d	$t3, $a3, 3
	fldx.d	$fa7, $a2, $t3
	alsl.d	$t4, $a5, $a2, 3
	slli.d	$t5, $a5, 3
	fldx.d	$ft0, $a2, $t5
	fld.d	$ft1, $t1, 8
	fld.d	$ft2, $t4, 8
	fsub.d	$fa1, $fa1, $fa2
	fsub.d	$fa2, $fa3, $fa4
	fadd.d	$fa3, $fa7, $ft0
	fadd.d	$fa4, $ft1, $ft2
	fsub.d	$fa7, $fa7, $ft0
	fsub.d	$ft0, $ft1, $ft2
	fadd.d	$ft1, $fa5, $fa3
	fst.d	$ft1, $a1, 0
	fadd.d	$ft1, $fa6, $fa4
	fst.d	$ft1, $a1, 8
	fsub.d	$fa4, $fa4, $fa6
	fstx.d	$fa4, $a2, $t3
	fsub.d	$fa3, $fa5, $fa3
	fst.d	$fa3, $t1, 8
	fsub.d	$fa3, $fa1, $ft0
	fadd.d	$fa4, $fa2, $fa7
	fsub.d	$fa5, $fa3, $fa4
	fmul.d	$fa5, $fa0, $fa5
	fstx.d	$fa5, $a1, $a4
	fadd.d	$fa3, $fa4, $fa3
	fmul.d	$fa3, $fa0, $fa3
	fst.d	$fa3, $t0, 8
	fadd.d	$fa1, $fa1, $ft0
	fsub.d	$fa2, $fa7, $fa2
	fsub.d	$fa3, $fa2, $fa1
	fmul.d	$fa3, $fa0, $fa3
	fstx.d	$fa3, $a2, $t5
	fadd.d	$fa1, $fa2, $fa1
	fmul.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $t4, 8
	addi.d	$t2, $t2, 2
	addi.d	$a1, $a1, 16
	addi.w	$a3, $a3, 2
	addi.w	$a5, $a5, 2
	blt	$t2, $a0, .LBB9_7
.LBB9_8:                                # %._crit_edge407
	addi.w	$a5, $a6, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	bge	$a5, $a0, .LBB9_98
# %bb.9:                                # %.lr.ph427
	move	$t3, $zero
	move	$t0, $zero
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 24
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	move	$t2, $a5
	alsl.w	$t6, $s5, $a6, 2
	add.d	$a0, $a7, $s5
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	add.d	$a1, $s5, $a5
	add.d	$a3, $a1, $a7
	ori	$a0, $zero, 14
	mul.d	$a0, $s5, $a0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a5, 31, 0
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	addi.d	$a4, $a2, 8
	slli.d	$a0, $s5, 4
	sub.d	$a0, $a0, $s5
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a0, $a2, 16
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	alsl.d	$a0, $s5, $a2, 3
	st.d	$a4, $sp, 304                   # 8-byte Folded Spill
	alsl.d	$a4, $s5, $a4, 3
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a4, $a5, 2
	nor	$a7, $a5, $zero
	slli.d	$a0, $a5, 3
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	alsl.w	$a0, $s5, $a6, 1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.d	$a1, $sp, 360                   # 8-byte Folded Spill
	alsl.d	$a0, $s5, $s5, 2
	alsl.d	$a0, $a0, $s5, 1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	alsl.d	$t1, $a5, $a2, 3
	addi.d	$a0, $t1, 8
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a0, $t1, 16
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	alsl.d	$a1, $a1, $a2, 3
	addi.d	$a0, $a1, 8
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	vreplgr2vr.w	$vr0, $a0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	vreplgr2vr.w	$vr1, $a0
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 16
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$a4, $sp, 200                   # 8-byte Folded Spill
	st.d	$a4, $sp, 352                   # 8-byte Folded Spill
	st.d	$t1, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $t1, 56
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	st.d	$a3, $sp, 336                   # 8-byte Folded Spill
	st.d	$a7, $sp, 192                   # 8-byte Folded Spill
	st.d	$a7, $sp, 328                   # 8-byte Folded Spill
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	b	.LBB9_11
	.p2align	4, , 16
.LBB9_10:                               # %._crit_edge423
                                        #   in Loop: Header=BB9_11 Depth=1
	add.d	$t2, $t2, $a5
	add.w	$t6, $t6, $a5
	addi.d	$t3, $t3, 1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a5
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a5
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a5
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 344                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a5
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 320                   # 8-byte Folded Reload
	bge	$t2, $a0, .LBB9_98
.LBB9_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_58 Depth 2
                                        #     Child Loop BB9_14 Depth 2
                                        #     Child Loop BB9_96 Depth 2
                                        #     Child Loop BB9_18 Depth 2
	addi.w	$a1, $zero, -4
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	mul.d	$a1, $t3, $a5
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	slli.d	$a1, $t0, 3
	addi.d	$a4, $t0, 2
	slli.d	$a0, $a4, 3
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	fldx.d	$fa2, $a3, $a0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	fldx.d	$fa3, $a0, $a1
	addi.w	$s0, $zero, -16
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	mul.d	$a0, $t3, $a0
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	alsl.d	$a0, $a4, $a3, 4
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	st.d	$a4, $sp, 320                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	blt	$s5, $a0, .LBB9_15
# %bb.12:                               # %.lr.ph414.preheader
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 376                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a7
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a7
	slt	$a3, $a1, $a0
	masknez	$a1, $a1, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a7
	slli.d	$a3, $a4, 4
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	fldx.d	$fa4, $a4, $a3
	ld.d	$a3, $sp, 368                   # 8-byte Folded Reload
	fld.d	$fa5, $a3, 8
	add.d	$a0, $a0, $a1
	fadd.d	$fa7, $fa3, $fa3
	fneg.d	$fa6, $fa7
	fmadd.d	$fa6, $fa6, $fa5, $fa4
	fmsub.d	$fa7, $fa7, $fa4, $fa5
	move	$t5, $t2
	ori	$a1, $zero, 38
	bgeu	$a0, $a1, .LBB9_19
.LBB9_13:                               # %.lr.ph414.preheader984
                                        #   in Loop: Header=BB9_11 Depth=1
	add.d	$a0, $t2, $s5
	alsl.d	$a1, $t5, $a2, 3
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	add.w	$a3, $a3, $t5
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	add.w	$t0, $a4, $t5
	.p2align	4, , 16
.LBB9_14:                               # %.lr.ph414
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$ft0, $a1, 0
	add.d	$a4, $a1, $a6
	fldx.d	$ft1, $a1, $a6
	fld.d	$ft2, $a1, 8
	fld.d	$ft3, $a4, 8
	fadd.d	$ft4, $ft0, $ft1
	fadd.d	$ft5, $ft2, $ft3
	alsl.d	$a7, $a3, $a2, 3
	slli.d	$t1, $a3, 3
	fldx.d	$ft6, $a2, $t1
	alsl.d	$t4, $t0, $a2, 3
	slli.d	$t7, $t0, 3
	fldx.d	$ft7, $a2, $t7
	fld.d	$ft8, $a7, 8
	fld.d	$ft9, $t4, 8
	fsub.d	$ft0, $ft0, $ft1
	fsub.d	$ft1, $ft2, $ft3
	fadd.d	$ft2, $ft6, $ft7
	fadd.d	$ft3, $ft8, $ft9
	fsub.d	$ft6, $ft6, $ft7
	fsub.d	$ft7, $ft8, $ft9
	fadd.d	$ft8, $ft4, $ft2
	fst.d	$ft8, $a1, 0
	fadd.d	$ft8, $ft5, $ft3
	fst.d	$ft8, $a1, 8
	fsub.d	$ft2, $ft4, $ft2
	fsub.d	$ft3, $ft5, $ft3
	fneg.d	$ft4, $ft3
	fmul.d	$ft4, $fa3, $ft4
	fmadd.d	$ft4, $fa2, $ft2, $ft4
	fstx.d	$ft4, $a2, $t1
	fmul.d	$ft2, $fa3, $ft2
	fmadd.d	$ft2, $fa2, $ft3, $ft2
	fst.d	$ft2, $a7, 8
	fsub.d	$ft2, $ft0, $ft7
	fadd.d	$ft3, $ft1, $ft6
	fneg.d	$ft4, $ft3
	fmul.d	$ft4, $fa5, $ft4
	fmadd.d	$ft4, $fa4, $ft2, $ft4
	fstx.d	$ft4, $a1, $a6
	fmul.d	$ft2, $fa5, $ft2
	fmadd.d	$ft2, $fa4, $ft3, $ft2
	fst.d	$ft2, $a4, 8
	fadd.d	$ft0, $ft0, $ft7
	fsub.d	$ft1, $ft1, $ft6
	fneg.d	$ft2, $ft1
	fmul.d	$ft2, $fa7, $ft2
	fmadd.d	$ft2, $fa6, $ft0, $ft2
	fstx.d	$ft2, $a2, $t7
	fmul.d	$ft0, $fa7, $ft0
	fmadd.d	$ft0, $fa6, $ft1, $ft0
	fst.d	$ft0, $t4, 8
	addi.d	$t5, $t5, 2
	addi.d	$a1, $a1, 16
	addi.w	$a3, $a3, 2
	addi.w	$t0, $t0, 2
	blt	$t5, $a0, .LBB9_14
.LBB9_15:                               # %._crit_edge415
                                        #   in Loop: Header=BB9_11 Depth=1
	ori	$a0, $zero, 1
	blt	$s5, $a0, .LBB9_10
# %bb.16:                               # %.lr.ph422
                                        #   in Loop: Header=BB9_11 Depth=1
	addi.d	$t5, $t6, 2
	nor	$t4, $t6, $zero
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	slt	$a1, $t5, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $t5, $a1
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	fld.d	$fa4, $a1, 16
	fld.d	$fa5, $a1, 24
	add.d	$a7, $a0, $t4
	fadd.d	$fa7, $fa2, $fa2
	fneg.d	$fa6, $fa7
	fmadd.d	$fa6, $fa6, $fa5, $fa4
	fmsub.d	$fa7, $fa7, $fa4, $fa5
	fneg.d	$fa3, $fa3
	move	$a4, $t6
	ori	$a0, $zero, 30
	bgeu	$a7, $a0, .LBB9_60
.LBB9_17:                               # %scalar.ph750.preheader
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	add.d	$a0, $t2, $a0
	alsl.d	$a1, $a4, $a2, 3
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	add.w	$a3, $a3, $a4
	ld.d	$a7, $sp, 280                   # 8-byte Folded Reload
	add.w	$t0, $a7, $a4
	.p2align	4, , 16
.LBB9_18:                               # %scalar.ph750
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$ft0, $a1, 0
	add.d	$a7, $a1, $a6
	fldx.d	$ft1, $a1, $a6
	fld.d	$ft2, $a1, 8
	fld.d	$ft3, $a7, 8
	fadd.d	$ft4, $ft0, $ft1
	fadd.d	$ft5, $ft2, $ft3
	alsl.d	$t1, $a3, $a2, 3
	slli.d	$t4, $a3, 3
	fldx.d	$ft6, $a2, $t4
	alsl.d	$t5, $t0, $a2, 3
	slli.d	$t7, $t0, 3
	fldx.d	$ft7, $a2, $t7
	fld.d	$ft8, $t1, 8
	fld.d	$ft9, $t5, 8
	fsub.d	$ft0, $ft0, $ft1
	fsub.d	$ft1, $ft2, $ft3
	fadd.d	$ft2, $ft6, $ft7
	fadd.d	$ft3, $ft8, $ft9
	fsub.d	$ft6, $ft6, $ft7
	fsub.d	$ft7, $ft8, $ft9
	fadd.d	$ft8, $ft4, $ft2
	fst.d	$ft8, $a1, 0
	fadd.d	$ft8, $ft5, $ft3
	fst.d	$ft8, $a1, 8
	fsub.d	$ft2, $ft4, $ft2
	fsub.d	$ft3, $ft5, $ft3
	fneg.d	$ft4, $ft3
	fmul.d	$ft4, $fa2, $ft4
	fmadd.d	$ft4, $fa3, $ft2, $ft4
	fstx.d	$ft4, $a2, $t4
	fmul.d	$ft2, $fa2, $ft2
	fmadd.d	$ft2, $fa3, $ft3, $ft2
	fst.d	$ft2, $t1, 8
	fsub.d	$ft2, $ft0, $ft7
	fadd.d	$ft3, $ft1, $ft6
	fneg.d	$ft4, $ft3
	fmul.d	$ft4, $fa5, $ft4
	fmadd.d	$ft4, $fa4, $ft2, $ft4
	fstx.d	$ft4, $a1, $a6
	fmul.d	$ft2, $fa5, $ft2
	fmadd.d	$ft2, $fa4, $ft3, $ft2
	fst.d	$ft2, $a7, 8
	fadd.d	$ft0, $ft0, $ft7
	fsub.d	$ft1, $ft1, $ft6
	fneg.d	$ft2, $ft1
	fmul.d	$ft2, $fa7, $ft2
	fmadd.d	$ft2, $fa6, $ft0, $ft2
	fstx.d	$ft2, $a2, $t7
	fmul.d	$ft0, $fa7, $ft0
	fmadd.d	$ft0, $fa6, $ft1, $ft0
	fst.d	$ft0, $t5, 8
	addi.d	$a4, $a4, 2
	addi.d	$a1, $a1, 16
	addi.w	$a3, $a3, 2
	addi.w	$t0, $t0, 2
	blt	$a4, $a0, .LBB9_18
	b	.LBB9_10
	.p2align	4, , 16
.LBB9_19:                               # %vector.scevcheck783
                                        #   in Loop: Header=BB9_11 Depth=1
	srli.d	$t4, $a0, 1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 312                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a3
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$s2, $a1, $a3, 3
	alsl.d	$a3, $t4, $s2, 4
	move	$t5, $t2
	bltu	$a3, $s2, .LBB9_13
# %bb.20:                               # %vector.scevcheck783
                                        #   in Loop: Header=BB9_11 Depth=1
	alsl.w	$a3, $t4, $a1, 1
	move	$t5, $t2
	blt	$a3, $a1, .LBB9_13
# %bb.21:                               # %vector.scevcheck783
                                        #   in Loop: Header=BB9_11 Depth=1
	addi.w	$a7, $t4, 0
	move	$t5, $t2
	bltz	$a7, .LBB9_13
# %bb.22:                               # %vector.scevcheck783
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	mul.d	$t0, $a3, $t3
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	add.d	$s4, $a3, $t0
	alsl.d	$a3, $t4, $s4, 4
	move	$t5, $t2
	bltu	$a3, $s4, .LBB9_13
# %bb.23:                               # %vector.scevcheck783
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	add.d	$s6, $a3, $t0
	alsl.d	$a3, $t4, $s6, 4
	move	$t5, $t2
	bltu	$a3, $s6, .LBB9_13
# %bb.24:                               # %vector.scevcheck783
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 312                   # 8-byte Folded Reload
	add.w	$t1, $a3, $a4
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a3, $t1, $a3, 3
	alsl.d	$t7, $t4, $a3, 4
	move	$t5, $t2
	bltu	$t7, $a3, .LBB9_13
# %bb.25:                               # %vector.scevcheck783
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	add.d	$s8, $a4, $t0
	alsl.d	$t7, $t4, $s8, 4
	move	$t5, $t2
	bltu	$t7, $s8, .LBB9_13
# %bb.26:                               # %vector.scevcheck783
                                        #   in Loop: Header=BB9_11 Depth=1
	alsl.w	$t7, $t4, $t1, 1
	move	$t5, $t2
	blt	$t7, $t1, .LBB9_13
# %bb.27:                               # %vector.scevcheck783
                                        #   in Loop: Header=BB9_11 Depth=1
	move	$t5, $t2
	bltz	$a7, .LBB9_13
# %bb.28:                               # %vector.scevcheck783
                                        #   in Loop: Header=BB9_11 Depth=1
	srli.d	$a7, $a0, 33
	move	$t5, $t2
	bnez	$a7, .LBB9_13
# %bb.29:                               # %vector.memcheck813
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	add.d	$ra, $a4, $t0
	slli.d	$a0, $a0, 3
	and	$s3, $a0, $s0
	add.d	$a7, $s8, $s3
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	add.d	$a0, $a0, $t0
	add.d	$t8, $a0, $s3
	sltu	$a0, $ra, $t8
	sltu	$t5, $s8, $a7
	and	$a0, $a0, $t5
	move	$t5, $t2
	bnez	$a0, .LBB9_13
# %bb.30:                               # %vector.memcheck813
                                        #   in Loop: Header=BB9_11 Depth=1
	alsl.d	$a0, $t1, $a2, 3
	alsl.d	$t1, $t1, $s3, 3
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	add.d	$t7, $a4, $t1
	sltu	$t5, $ra, $t7
	sltu	$s1, $a0, $a7
	and	$s1, $t5, $s1
	move	$t5, $t2
	bnez	$s1, .LBB9_13
# %bb.31:                               # %vector.memcheck813
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	add.d	$t1, $a4, $t1
	sltu	$t5, $ra, $t1
	sltu	$s1, $a3, $a7
	and	$s1, $t5, $s1
	move	$t5, $t2
	bnez	$s1, .LBB9_13
# %bb.32:                               # %vector.memcheck813
                                        #   in Loop: Header=BB9_11 Depth=1
	add.d	$s7, $s4, $s3
	sltu	$t5, $ra, $s7
	sltu	$s1, $s6, $a7
	and	$s1, $t5, $s1
	move	$t5, $t2
	bnez	$s1, .LBB9_13
# %bb.33:                               # %vector.memcheck813
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	add.d	$t0, $a4, $t0
	add.d	$t0, $t0, $s3
	sltu	$t5, $ra, $t0
	sltu	$s1, $s4, $a7
	and	$s1, $t5, $s1
	move	$t5, $t2
	bnez	$s1, .LBB9_13
# %bb.34:                               # %vector.memcheck813
                                        #   in Loop: Header=BB9_11 Depth=1
	alsl.d	$s1, $a1, $a2, 3
	alsl.d	$a1, $a1, $s3, 3
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	add.d	$s3, $a4, $a1
	sltu	$t5, $ra, $s3
	sltu	$a4, $s1, $a7
	and	$a4, $t5, $a4
	move	$t5, $t2
	bnez	$a4, .LBB9_13
# %bb.35:                               # %vector.memcheck813
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	sltu	$a4, $ra, $a1
	sltu	$a7, $s2, $a7
	and	$a4, $a4, $a7
	move	$t5, $t2
	bnez	$a4, .LBB9_13
# %bb.36:                               # %vector.memcheck813
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a4, $s8, $t7
	sltu	$a7, $a0, $t8
	and	$a4, $a4, $a7
	move	$t5, $t2
	bnez	$a4, .LBB9_13
# %bb.37:                               # %vector.memcheck813
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a4, $s8, $t1
	sltu	$a7, $a3, $t8
	and	$a4, $a4, $a7
	move	$t5, $t2
	bnez	$a4, .LBB9_13
# %bb.38:                               # %vector.memcheck813
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a4, $s8, $s7
	sltu	$a7, $s6, $t8
	and	$a4, $a4, $a7
	move	$t5, $t2
	bnez	$a4, .LBB9_13
# %bb.39:                               # %vector.memcheck813
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a4, $s8, $t0
	sltu	$a7, $s4, $t8
	and	$a4, $a4, $a7
	move	$t5, $t2
	bnez	$a4, .LBB9_13
# %bb.40:                               # %vector.memcheck813
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a4, $s8, $s3
	sltu	$a7, $s1, $t8
	and	$a4, $a4, $a7
	move	$t5, $t2
	bnez	$a4, .LBB9_13
# %bb.41:                               # %vector.memcheck813
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a4, $s8, $a1
	sltu	$a7, $s2, $t8
	and	$a4, $a4, $a7
	move	$t5, $t2
	bnez	$a4, .LBB9_13
# %bb.42:                               # %vector.memcheck813
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a4, $a0, $t1
	sltu	$a7, $a3, $t7
	and	$a4, $a4, $a7
	move	$t5, $t2
	bnez	$a4, .LBB9_13
# %bb.43:                               # %vector.memcheck813
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a4, $a0, $s7
	sltu	$a7, $s6, $t7
	and	$a4, $a4, $a7
	move	$t5, $t2
	bnez	$a4, .LBB9_13
# %bb.44:                               # %vector.memcheck813
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a4, $a0, $t0
	sltu	$a7, $s4, $t7
	and	$a4, $a4, $a7
	move	$t5, $t2
	bnez	$a4, .LBB9_13
# %bb.45:                               # %vector.memcheck813
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a4, $a0, $s3
	sltu	$a7, $s1, $t7
	and	$a4, $a4, $a7
	move	$t5, $t2
	bnez	$a4, .LBB9_13
# %bb.46:                               # %vector.memcheck813
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $a0, $a1
	sltu	$a4, $s2, $t7
	and	$a0, $a0, $a4
	move	$t5, $t2
	bnez	$a0, .LBB9_13
# %bb.47:                               # %vector.memcheck813
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $a3, $s7
	sltu	$a4, $s6, $t1
	and	$a0, $a0, $a4
	move	$t5, $t2
	bnez	$a0, .LBB9_13
# %bb.48:                               # %vector.memcheck813
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $a3, $t0
	sltu	$a4, $s4, $t1
	and	$a0, $a0, $a4
	move	$t5, $t2
	bnez	$a0, .LBB9_13
# %bb.49:                               # %vector.memcheck813
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $a3, $s3
	sltu	$a4, $s1, $t1
	and	$a0, $a0, $a4
	move	$t5, $t2
	bnez	$a0, .LBB9_13
# %bb.50:                               # %vector.memcheck813
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $a3, $a1
	sltu	$a3, $s2, $t1
	and	$a0, $a0, $a3
	move	$t5, $t2
	bnez	$a0, .LBB9_13
# %bb.51:                               # %vector.memcheck813
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $s6, $t0
	sltu	$a3, $s4, $s7
	and	$a0, $a0, $a3
	move	$t5, $t2
	bnez	$a0, .LBB9_13
# %bb.52:                               # %vector.memcheck813
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $s6, $s3
	sltu	$a3, $s1, $s7
	and	$a0, $a0, $a3
	move	$t5, $t2
	bnez	$a0, .LBB9_13
# %bb.53:                               # %vector.memcheck813
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $s6, $a1
	sltu	$a3, $s2, $s7
	and	$a0, $a0, $a3
	move	$t5, $t2
	bnez	$a0, .LBB9_13
# %bb.54:                               # %vector.memcheck813
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $s4, $s3
	sltu	$a3, $s1, $t0
	and	$a0, $a0, $a3
	move	$t5, $t2
	bnez	$a0, .LBB9_13
# %bb.55:                               # %vector.memcheck813
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $s4, $a1
	sltu	$a3, $s2, $t0
	and	$a0, $a0, $a3
	move	$t5, $t2
	bnez	$a0, .LBB9_13
# %bb.56:                               # %vector.memcheck813
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $s1, $a1
	sltu	$a1, $s2, $s3
	and	$a0, $a0, $a1
	move	$t5, $t2
	bnez	$a0, .LBB9_13
# %bb.57:                               # %vector.ph953
                                        #   in Loop: Header=BB9_11 Depth=1
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$t3, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	slt	$a0, $a1, $a3
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 1
	addi.d	$a0, $a0, 1
	addi.d	$a3, $t4, 1
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	and	$s2, $a0, $a1
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	bstrins.d	$a3, $zero, 1, 0
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	alsl.d	$t5, $a3, $t2, 1
	xvreplve0.d	$xr8, $xr3
	xvreplve0.d	$xr9, $xr2
	xvreplve0.d	$xr10, $xr5
	xvreplve0.d	$xr11, $xr4
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	vld	$vr14, $a0, %pc_lo12(.LCPI9_0)
	xvreplve0.d	$xr12, $xr7
	xvreplve0.d	$xr13, $xr6
	vreplgr2vr.w	$vr15, $t2
	vor.v	$vr14, $vr15, $vr14
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 112                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB9_58:                               # %vector.body975
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vadd.w	$vr21, $vr0, $vr14
	fld.d	$ft7, $s4, -56
	fld.d	$ft8, $s4, -40
	fld.d	$ft9, $s4, -24
	fld.d	$ft10, $s4, -8
	vadd.w	$vr22, $vr1, $vr14
	movfr2gr.d	$a0, $ft7
	xvinsgr2vr.d	$xr15, $a0, 0
	movfr2gr.d	$a0, $ft8
	xvinsgr2vr.d	$xr15, $a0, 1
	movfr2gr.d	$a0, $ft9
	xvinsgr2vr.d	$xr15, $a0, 2
	movfr2gr.d	$a0, $ft10
	add.d	$s6, $s4, $a6
	fld.d	$ft8, $s6, -56
	fld.d	$ft10, $s6, -40
	fld.d	$ft11, $s6, -24
	fld.d	$ft12, $s6, -8
	xvinsgr2vr.d	$xr15, $a0, 3
	movfr2gr.d	$a0, $ft8
	xvinsgr2vr.d	$xr17, $a0, 0
	movfr2gr.d	$a0, $ft10
	xvinsgr2vr.d	$xr17, $a0, 1
	movfr2gr.d	$a0, $ft11
	xvinsgr2vr.d	$xr17, $a0, 2
	movfr2gr.d	$a0, $ft12
	xvinsgr2vr.d	$xr17, $a0, 3
	fld.d	$ft10, $s4, -48
	fld.d	$ft11, $s4, -32
	fld.d	$ft12, $s4, -16
	fld.d	$ft15, $s4, 0
	xvfadd.d	$xr16, $xr15, $xr17
	movfr2gr.d	$a0, $ft10
	xvinsgr2vr.d	$xr18, $a0, 0
	movfr2gr.d	$a0, $ft11
	xvinsgr2vr.d	$xr18, $a0, 1
	movfr2gr.d	$a0, $ft12
	xvinsgr2vr.d	$xr18, $a0, 2
	movfr2gr.d	$a0, $ft15
	fld.d	$ft11, $s6, -48
	fld.d	$ft12, $s6, -32
	fld.d	$ft15, $s6, -16
	fldx.d	$fs0, $s4, $a6
	xvinsgr2vr.d	$xr18, $a0, 3
	movfr2gr.d	$a0, $ft11
	xvinsgr2vr.d	$xr19, $a0, 0
	movfr2gr.d	$a0, $ft12
	xvinsgr2vr.d	$xr19, $a0, 1
	movfr2gr.d	$a0, $ft15
	xvinsgr2vr.d	$xr19, $a0, 2
	movfr2gr.d	$a0, $fs0
	xvinsgr2vr.d	$xr19, $a0, 3
	xvfadd.d	$xr20, $xr18, $xr19
	vpickve2gr.w	$a0, $vr21, 3
	vpickve2gr.w	$a3, $vr21, 2
	vpickve2gr.w	$a1, $vr21, 1
	vpickve2gr.w	$a4, $vr21, 0
	alsl.d	$a7, $a4, $a2, 3
	slli.d	$t1, $a4, 3
	alsl.d	$a4, $a1, $a2, 3
	slli.d	$a1, $a1, 3
	alsl.d	$t7, $a3, $a2, 3
	slli.d	$t0, $a3, 3
	slli.d	$s1, $a0, 3
	fldx.d	$ft13, $a2, $t1
	fldx.d	$ft15, $a2, $a1
	fldx.d	$fs0, $a2, $t0
	fldx.d	$fs1, $a2, $s1
	alsl.d	$a0, $a0, $a2, 3
	movfr2gr.d	$a3, $ft13
	xvinsgr2vr.d	$xr21, $a3, 0
	movfr2gr.d	$a3, $ft15
	xvinsgr2vr.d	$xr21, $a3, 1
	movfr2gr.d	$a3, $fs0
	xvinsgr2vr.d	$xr21, $a3, 2
	movfr2gr.d	$a3, $fs1
	xvinsgr2vr.d	$xr21, $a3, 3
	vpickve2gr.w	$t8, $vr22, 3
	vpickve2gr.w	$t4, $vr22, 2
	vpickve2gr.w	$s3, $vr22, 1
	vpickve2gr.w	$a3, $vr22, 0
	alsl.d	$s8, $a3, $a2, 3
	slli.d	$a3, $a3, 3
	alsl.d	$ra, $s3, $a2, 3
	slli.d	$s3, $s3, 3
	alsl.d	$s0, $t4, $a2, 3
	slli.d	$s7, $t4, 3
	slli.d	$t4, $t8, 3
	fldx.d	$ft14, $a2, $a3
	fldx.d	$ft15, $a2, $s3
	fldx.d	$fs0, $a2, $s7
	fldx.d	$fs1, $a2, $t4
	alsl.d	$t8, $t8, $a2, 3
	movfr2gr.d	$s5, $ft14
	xvinsgr2vr.d	$xr22, $s5, 0
	movfr2gr.d	$s5, $ft15
	xvinsgr2vr.d	$xr22, $s5, 1
	movfr2gr.d	$s5, $fs0
	xvinsgr2vr.d	$xr22, $s5, 2
	movfr2gr.d	$s5, $fs1
	xvinsgr2vr.d	$xr22, $s5, 3
	fld.d	$fs0, $a7, 8
	fld.d	$fs1, $a4, 8
	fld.d	$fs2, $t7, 8
	fld.d	$fs3, $a0, 8
	xvfadd.d	$xr23, $xr21, $xr22
	movfr2gr.d	$a0, $fs0
	xvinsgr2vr.d	$xr24, $a0, 0
	movfr2gr.d	$a0, $fs1
	xvinsgr2vr.d	$xr24, $a0, 1
	movfr2gr.d	$a0, $fs2
	xvinsgr2vr.d	$xr24, $a0, 2
	movfr2gr.d	$a0, $fs3
	fld.d	$fs1, $s8, 8
	fld.d	$fs2, $ra, 8
	fld.d	$fs3, $s0, 8
	fld.d	$fs4, $t8, 8
	xvinsgr2vr.d	$xr24, $a0, 3
	movfr2gr.d	$a0, $fs1
	xvinsgr2vr.d	$xr25, $a0, 0
	movfr2gr.d	$a0, $fs2
	xvinsgr2vr.d	$xr25, $a0, 1
	movfr2gr.d	$a0, $fs3
	xvinsgr2vr.d	$xr25, $a0, 2
	movfr2gr.d	$a0, $fs4
	xvinsgr2vr.d	$xr25, $a0, 3
	xvfadd.d	$xr26, $xr24, $xr25
	xvfadd.d	$xr27, $xr16, $xr23
	xvpickve2gr.d	$a0, $xr27, 1
	xvld	$xr28, $a5, %pc_lo12(.LCPI9_1)
	xvfadd.d	$xr29, $xr20, $xr26
	xvpermi.d	$xr30, $xr27, 238
	xvpermi.d	$xr31, $xr29, 238
	xvshuf.d	$xr28, $xr31, $xr30
	movgr2fr.d	$fs6, $a0
	xvpickve2gr.d	$a0, $xr29, 1
	movgr2fr.d	$fs7, $a0
	xvfsub.d	$xr15, $xr15, $xr17
	movfr2gr.d	$a0, $fs6
	movfr2gr.d	$a4, $fs7
	vinsgr2vr.d	$vr17, $a0, 0
	vinsgr2vr.d	$vr17, $a4, 1
	vst	$vr17, $s4, -40
	xvst	$xr28, $s4, -24
	xvst	$xr27, $sp, 640
	xvst	$xr29, $sp, 672
	vld	$vr27, $sp, 640
	vld	$vr28, $sp, 672
	xvfsub.d	$xr17, $xr18, $xr19
	xvfsub.d	$xr18, $xr21, $xr22
	xvfsub.d	$xr19, $xr24, $xr25
	vpackev.d	$vr21, $vr28, $vr27
	vst	$vr21, $s4, -56
	xvfsub.d	$xr16, $xr16, $xr23
	xvfsub.d	$xr20, $xr20, $xr26
	xvbitrevi.d	$xr21, $xr20, 63
	xvfmul.d	$xr21, $xr8, $xr21
	xvfmadd.d	$xr21, $xr9, $xr16, $xr21
	xvpickve2gr.d	$a0, $xr21, 1
	movgr2fr.d	$ft14, $a0
	xvpickve2gr.d	$a0, $xr21, 2
	xvfmul.d	$xr16, $xr8, $xr16
	xvfmadd.d	$xr16, $xr9, $xr20, $xr16
	xvst	$xr16, $sp, 704
	xvst	$xr21, $sp, 864
	vld	$vr20, $sp, 704
	vld	$vr23, $sp, 864
	movgr2fr.d	$fs0, $a0
	xvpickve2gr.d	$a0, $xr21, 3
	movgr2fr.d	$ft13, $a0
	vpackev.d	$vr20, $vr20, $vr23
	vstx	$vr20, $a2, $t1
	movfr2gr.d	$a0, $ft14
	xvpickve2gr.d	$a4, $xr16, 1
	movgr2fr.d	$ft12, $a4
	vinsgr2vr.d	$vr22, $a0, 0
	movfr2gr.d	$a0, $ft12
	vinsgr2vr.d	$vr22, $a0, 1
	vstx	$vr22, $a2, $a1
	movfr2gr.d	$a0, $fs0
	xvpickve2gr.d	$a1, $xr16, 2
	movgr2fr.d	$ft12, $a1
	vinsgr2vr.d	$vr22, $a0, 0
	movfr2gr.d	$a0, $ft12
	vinsgr2vr.d	$vr22, $a0, 1
	vstx	$vr22, $a2, $t0
	movfr2gr.d	$a0, $ft13
	xvpickve2gr.d	$a1, $xr16, 3
	movgr2fr.d	$ft8, $a1
	vinsgr2vr.d	$vr20, $a0, 0
	movfr2gr.d	$a0, $ft8
	vinsgr2vr.d	$vr20, $a0, 1
	vstx	$vr20, $a2, $s1
	xvfsub.d	$xr16, $xr15, $xr19
	xvfadd.d	$xr20, $xr17, $xr18
	xvbitrevi.d	$xr21, $xr20, 63
	xvfmul.d	$xr21, $xr10, $xr21
	xvld	$xr22, $t3, %pc_lo12(.LCPI9_2)
	xvfmadd.d	$xr21, $xr11, $xr16, $xr21
	xvfmul.d	$xr16, $xr10, $xr16
	xvfmadd.d	$xr16, $xr11, $xr20, $xr16
	xvshuf.d	$xr22, $xr16, $xr21
	xvpickve2gr.d	$a0, $xr21, 3
	movgr2fr.d	$ft12, $a0
	xvst	$xr22, $s6, -40
	movfr2gr.d	$a0, $ft12
	xvpickve2gr.d	$a1, $xr16, 3
	movgr2fr.d	$ft12, $a1
	vinsgr2vr.d	$vr22, $a0, 0
	movfr2gr.d	$a0, $ft12
	vinsgr2vr.d	$vr22, $a0, 1
	vst	$vr22, $s6, -8
	xvst	$xr16, $sp, 768
	xvst	$xr21, $sp, 832
	vld	$vr16, $sp, 768
	vld	$vr20, $sp, 832
	vpackev.d	$vr16, $vr16, $vr20
	vst	$vr16, $s6, -56
	xvfadd.d	$xr15, $xr15, $xr19
	xvfsub.d	$xr16, $xr17, $xr18
	xvbitrevi.d	$xr17, $xr16, 63
	xvfmul.d	$xr17, $xr12, $xr17
	xvfmadd.d	$xr17, $xr13, $xr15, $xr17
	xvpickve2gr.d	$a0, $xr17, 1
	movgr2fr.d	$ft10, $a0
	xvpickve2gr.d	$a0, $xr17, 2
	xvfmul.d	$xr15, $xr12, $xr15
	xvfmadd.d	$xr15, $xr13, $xr16, $xr15
	xvst	$xr15, $sp, 736
	xvst	$xr17, $sp, 800
	vld	$vr16, $sp, 736
	vld	$vr19, $sp, 800
	movgr2fr.d	$ft12, $a0
	xvpickve2gr.d	$a0, $xr17, 3
	movgr2fr.d	$ft9, $a0
	vpackev.d	$vr16, $vr16, $vr19
	vstx	$vr16, $a2, $a3
	movfr2gr.d	$a0, $ft10
	xvpickve2gr.d	$a1, $xr15, 1
	movgr2fr.d	$ft8, $a1
	vinsgr2vr.d	$vr18, $a0, 0
	movfr2gr.d	$a0, $ft8
	vinsgr2vr.d	$vr18, $a0, 1
	vstx	$vr18, $a2, $s3
	movfr2gr.d	$a0, $ft12
	xvpickve2gr.d	$a1, $xr15, 2
	movgr2fr.d	$ft8, $a1
	vinsgr2vr.d	$vr18, $a0, 0
	movfr2gr.d	$a0, $ft8
	vinsgr2vr.d	$vr18, $a0, 1
	vstx	$vr18, $a2, $s7
	movfr2gr.d	$a0, $ft9
	xvpickve2gr.d	$a1, $xr15, 3
	movgr2fr.d	$ft7, $a1
	vinsgr2vr.d	$vr16, $a0, 0
	movfr2gr.d	$a0, $ft7
	vinsgr2vr.d	$vr16, $a0, 1
	vstx	$vr16, $a2, $t4
	vaddi.wu	$vr14, $vr14, 8
	addi.d	$s2, $s2, -4
	addi.d	$s4, $s4, 64
	bnez	$s2, .LBB9_58
# %bb.59:                               # %middle.block981
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB9_13
	b	.LBB9_15
	.p2align	4, , 16
.LBB9_60:                               # %vector.scevcheck590
                                        #   in Loop: Header=BB9_11 Depth=1
	srli.d	$s2, $a7, 1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	add.w	$a1, $a0, $a1
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$s4, $a1, $a0, 3
	alsl.d	$a0, $s2, $s4, 4
	move	$a4, $t6
	bltu	$a0, $s4, .LBB9_17
# %bb.61:                               # %vector.scevcheck590
                                        #   in Loop: Header=BB9_11 Depth=1
	alsl.w	$a0, $s2, $a1, 1
	move	$a4, $t6
	blt	$a0, $a1, .LBB9_17
# %bb.62:                               # %vector.scevcheck590
                                        #   in Loop: Header=BB9_11 Depth=1
	addi.w	$a0, $s2, 0
	move	$a4, $t6
	bltz	$a0, .LBB9_17
# %bb.63:                               # %vector.scevcheck590
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 312                   # 8-byte Folded Reload
	add.w	$t0, $a3, $a4
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a3, $t0, $a3, 3
	alsl.d	$t1, $s2, $a3, 4
	move	$a4, $t6
	bltu	$t1, $a3, .LBB9_17
# %bb.64:                               # %vector.scevcheck590
                                        #   in Loop: Header=BB9_11 Depth=1
	alsl.w	$t1, $s2, $t0, 1
	move	$a4, $t6
	blt	$t1, $t0, .LBB9_17
# %bb.65:                               # %vector.scevcheck590
                                        #   in Loop: Header=BB9_11 Depth=1
	move	$a4, $t6
	bltz	$a0, .LBB9_17
# %bb.66:                               # %vector.scevcheck590
                                        #   in Loop: Header=BB9_11 Depth=1
	srli.d	$a0, $a7, 33
	move	$a4, $t6
	bnez	$a0, .LBB9_17
# %bb.67:                               # %vector.memcheck607
                                        #   in Loop: Header=BB9_11 Depth=1
	alsl.d	$a0, $t6, $a2, 3
	slli.d	$a4, $a7, 3
	and	$s5, $a4, $s0
	alsl.d	$s1, $t6, $s5, 3
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	add.d	$a7, $a4, $s1
	alsl.d	$ra, $t6, $a4, 3
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	add.d	$t8, $a4, $s1
	sltu	$a4, $a0, $t8
	sltu	$t1, $ra, $a7
	and	$t1, $a4, $t1
	move	$a4, $t6
	bnez	$t1, .LBB9_17
# %bb.68:                               # %vector.memcheck607
                                        #   in Loop: Header=BB9_11 Depth=1
	alsl.d	$s8, $t0, $a2, 3
	alsl.d	$t0, $t0, $s5, 3
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	add.d	$t7, $a4, $t0
	sltu	$a4, $a0, $t7
	sltu	$t1, $s8, $a7
	and	$t1, $a4, $t1
	move	$a4, $t6
	bnez	$t1, .LBB9_17
# %bb.69:                               # %vector.memcheck607
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	add.d	$t1, $a4, $t0
	sltu	$a4, $a0, $t1
	sltu	$t0, $a3, $a7
	and	$t0, $a4, $t0
	move	$a4, $t6
	bnez	$t0, .LBB9_17
# %bb.70:                               # %vector.memcheck607
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$s6, $t6, $a4, 3
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	add.d	$s7, $a4, $s1
	sltu	$a4, $a0, $s7
	sltu	$t0, $s6, $a7
	and	$t0, $a4, $t0
	move	$a4, $t6
	bnez	$t0, .LBB9_17
# %bb.71:                               # %vector.memcheck607
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$t0, $t6, $a4, 3
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	add.d	$s1, $a4, $s1
	sltu	$a4, $a0, $s1
	sltu	$s0, $t0, $a7
	and	$s0, $a4, $s0
	move	$a4, $t6
	bnez	$s0, .LBB9_17
# %bb.72:                               # %vector.memcheck607
                                        #   in Loop: Header=BB9_11 Depth=1
	alsl.d	$s3, $a1, $a2, 3
	alsl.d	$a1, $a1, $s5, 3
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	add.d	$s5, $a4, $a1
	sltu	$a4, $a0, $s5
	sltu	$s0, $s3, $a7
	and	$s0, $a4, $s0
	move	$a4, $t6
	bnez	$s0, .LBB9_17
# %bb.73:                               # %vector.memcheck607
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	sltu	$a4, $a0, $a1
	sltu	$a7, $s4, $a7
	and	$a7, $a4, $a7
	move	$a4, $t6
	bnez	$a7, .LBB9_17
# %bb.74:                               # %vector.memcheck607
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a4, $ra, $t7
	sltu	$a7, $s8, $t8
	and	$a7, $a4, $a7
	move	$a4, $t6
	bnez	$a7, .LBB9_17
# %bb.75:                               # %vector.memcheck607
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a4, $ra, $t1
	sltu	$a7, $a3, $t8
	and	$a7, $a4, $a7
	move	$a4, $t6
	bnez	$a7, .LBB9_17
# %bb.76:                               # %vector.memcheck607
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a4, $ra, $s7
	sltu	$a7, $s6, $t8
	and	$a7, $a4, $a7
	move	$a4, $t6
	bnez	$a7, .LBB9_17
# %bb.77:                               # %vector.memcheck607
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a4, $ra, $s1
	sltu	$a7, $t0, $t8
	and	$a7, $a4, $a7
	move	$a4, $t6
	bnez	$a7, .LBB9_17
# %bb.78:                               # %vector.memcheck607
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a4, $ra, $s5
	sltu	$a7, $s3, $t8
	and	$a7, $a4, $a7
	move	$a4, $t6
	bnez	$a7, .LBB9_17
# %bb.79:                               # %vector.memcheck607
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a4, $ra, $a1
	sltu	$a7, $s4, $t8
	and	$a7, $a4, $a7
	move	$a4, $t6
	bnez	$a7, .LBB9_17
# %bb.80:                               # %vector.memcheck607
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a4, $s8, $t1
	sltu	$a7, $a3, $t7
	and	$a7, $a4, $a7
	move	$a4, $t6
	bnez	$a7, .LBB9_17
# %bb.81:                               # %vector.memcheck607
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a4, $s8, $s7
	sltu	$a7, $s6, $t7
	and	$a7, $a4, $a7
	move	$a4, $t6
	bnez	$a7, .LBB9_17
# %bb.82:                               # %vector.memcheck607
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a4, $s8, $s1
	sltu	$a7, $t0, $t7
	and	$a7, $a4, $a7
	move	$a4, $t6
	bnez	$a7, .LBB9_17
# %bb.83:                               # %vector.memcheck607
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a4, $s8, $s5
	sltu	$a7, $s3, $t7
	and	$a7, $a4, $a7
	move	$a4, $t6
	bnez	$a7, .LBB9_17
# %bb.84:                               # %vector.memcheck607
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a4, $s8, $a1
	sltu	$a7, $s4, $t7
	and	$a7, $a4, $a7
	move	$a4, $t6
	bnez	$a7, .LBB9_17
# %bb.85:                               # %vector.memcheck607
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a4, $a3, $s7
	sltu	$a7, $s6, $t1
	and	$a7, $a4, $a7
	move	$a4, $t6
	bnez	$a7, .LBB9_17
# %bb.86:                               # %vector.memcheck607
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a4, $a3, $s1
	sltu	$a7, $t0, $t1
	and	$a7, $a4, $a7
	move	$a4, $t6
	bnez	$a7, .LBB9_17
# %bb.87:                               # %vector.memcheck607
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a4, $a3, $s5
	sltu	$a7, $s3, $t1
	and	$a7, $a4, $a7
	move	$a4, $t6
	bnez	$a7, .LBB9_17
# %bb.88:                               # %vector.memcheck607
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a3, $a3, $a1
	sltu	$a4, $s4, $t1
	and	$a3, $a3, $a4
	move	$a4, $t6
	bnez	$a3, .LBB9_17
# %bb.89:                               # %vector.memcheck607
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a3, $s6, $s1
	sltu	$a4, $t0, $s7
	and	$a3, $a3, $a4
	move	$a4, $t6
	bnez	$a3, .LBB9_17
# %bb.90:                               # %vector.memcheck607
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a3, $s6, $s5
	sltu	$a4, $s3, $s7
	and	$a3, $a3, $a4
	move	$a4, $t6
	bnez	$a3, .LBB9_17
# %bb.91:                               # %vector.memcheck607
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a3, $s6, $a1
	sltu	$a4, $s4, $s7
	and	$a3, $a3, $a4
	move	$a4, $t6
	bnez	$a3, .LBB9_17
# %bb.92:                               # %vector.memcheck607
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a3, $t0, $s5
	sltu	$a4, $s3, $s1
	and	$a3, $a3, $a4
	move	$a4, $t6
	bnez	$a3, .LBB9_17
# %bb.93:                               # %vector.memcheck607
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a3, $t0, $a1
	sltu	$a4, $s4, $s1
	and	$a3, $a3, $a4
	move	$a4, $t6
	bnez	$a3, .LBB9_17
# %bb.94:                               # %vector.memcheck607
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $s3, $a1
	sltu	$a3, $s4, $s5
	and	$a1, $a1, $a3
	move	$a4, $t6
	bnez	$a1, .LBB9_17
# %bb.95:                               # %vector.ph752
                                        #   in Loop: Header=BB9_11 Depth=1
	st.d	$t3, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	slt	$a1, $t5, $a4
	masknez	$a3, $t5, $a1
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a3
	add.d	$a1, $t4, $a1
	srli.d	$a1, $a1, 1
	addi.d	$a1, $a1, 1
	addi.d	$a4, $s2, 1
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	and	$s1, $a1, $a3
	st.d	$a4, $sp, 376                   # 8-byte Folded Spill
	bstrins.d	$a4, $zero, 1, 0
	st.d	$a4, $sp, 368                   # 8-byte Folded Spill
	alsl.d	$a4, $a4, $t6, 1
	xvreplve0.d	$xr8, $xr3
	xvreplve0.d	$xr9, $xr2
	xvreplve0.d	$xr10, $xr5
	xvreplve0.d	$xr11, $xr4
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	vld	$vr14, $a1, %pc_lo12(.LCPI9_0)
	xvreplve0.d	$xr12, $xr7
	xvreplve0.d	$xr13, $xr6
	vreplgr2vr.w	$vr15, $t6
	vadd.w	$vr14, $vr15, $vr14
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 112                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB9_96:                               # %vector.body774
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vadd.w	$vr21, $vr0, $vr14
	fld.d	$ft7, $a0, 0
	fld.d	$ft8, $a0, 16
	fld.d	$ft9, $a0, 32
	fld.d	$ft10, $a0, 48
	vadd.w	$vr22, $vr1, $vr14
	movfr2gr.d	$a1, $ft7
	xvinsgr2vr.d	$xr15, $a1, 0
	movfr2gr.d	$a1, $ft8
	xvinsgr2vr.d	$xr15, $a1, 1
	movfr2gr.d	$a1, $ft9
	xvinsgr2vr.d	$xr15, $a1, 2
	movfr2gr.d	$a1, $ft10
	add.d	$s2, $a0, $a6
	fldx.d	$ft8, $a0, $a6
	fld.d	$ft10, $s2, 16
	fld.d	$ft11, $s2, 32
	fld.d	$ft12, $s2, 48
	xvinsgr2vr.d	$xr15, $a1, 3
	movfr2gr.d	$a1, $ft8
	xvinsgr2vr.d	$xr17, $a1, 0
	movfr2gr.d	$a1, $ft10
	xvinsgr2vr.d	$xr17, $a1, 1
	movfr2gr.d	$a1, $ft11
	xvinsgr2vr.d	$xr17, $a1, 2
	movfr2gr.d	$a1, $ft12
	xvinsgr2vr.d	$xr17, $a1, 3
	fld.d	$ft10, $a0, 8
	fld.d	$ft11, $a0, 24
	fld.d	$ft12, $a0, 40
	fld.d	$ft15, $a0, 56
	xvfadd.d	$xr16, $xr15, $xr17
	movfr2gr.d	$a1, $ft10
	xvinsgr2vr.d	$xr18, $a1, 0
	movfr2gr.d	$a1, $ft11
	xvinsgr2vr.d	$xr18, $a1, 1
	movfr2gr.d	$a1, $ft12
	xvinsgr2vr.d	$xr18, $a1, 2
	movfr2gr.d	$a1, $ft15
	fld.d	$ft11, $s2, 8
	fld.d	$ft12, $s2, 24
	fld.d	$ft15, $s2, 40
	fld.d	$fs0, $s2, 56
	xvinsgr2vr.d	$xr18, $a1, 3
	movfr2gr.d	$a1, $ft11
	xvinsgr2vr.d	$xr19, $a1, 0
	movfr2gr.d	$a1, $ft12
	xvinsgr2vr.d	$xr19, $a1, 1
	movfr2gr.d	$a1, $ft15
	xvinsgr2vr.d	$xr19, $a1, 2
	movfr2gr.d	$a1, $fs0
	xvinsgr2vr.d	$xr19, $a1, 3
	xvfadd.d	$xr20, $xr18, $xr19
	vpickve2gr.w	$a3, $vr21, 3
	vpickve2gr.w	$a7, $vr21, 2
	vpickve2gr.w	$a1, $vr21, 1
	vpickve2gr.w	$t0, $vr21, 0
	alsl.d	$t7, $t0, $a2, 3
	slli.d	$t1, $t0, 3
	alsl.d	$t8, $a1, $a2, 3
	slli.d	$a1, $a1, 3
	alsl.d	$s0, $a7, $a2, 3
	slli.d	$t0, $a7, 3
	slli.d	$s6, $a3, 3
	fldx.d	$ft13, $a2, $t1
	fldx.d	$ft15, $a2, $a1
	fldx.d	$fs0, $a2, $t0
	fldx.d	$fs1, $a2, $s6
	alsl.d	$a7, $a3, $a2, 3
	movfr2gr.d	$a3, $ft13
	xvinsgr2vr.d	$xr21, $a3, 0
	movfr2gr.d	$a3, $ft15
	xvinsgr2vr.d	$xr21, $a3, 1
	movfr2gr.d	$a3, $fs0
	xvinsgr2vr.d	$xr21, $a3, 2
	movfr2gr.d	$a3, $fs1
	xvinsgr2vr.d	$xr21, $a3, 3
	vpickve2gr.w	$s7, $vr22, 3
	vpickve2gr.w	$s4, $vr22, 2
	vpickve2gr.w	$s3, $vr22, 1
	vpickve2gr.w	$a3, $vr22, 0
	alsl.d	$s8, $a3, $a2, 3
	slli.d	$a3, $a3, 3
	alsl.d	$ra, $s3, $a2, 3
	slli.d	$s3, $s3, 3
	alsl.d	$t5, $s4, $a2, 3
	slli.d	$s5, $s4, 3
	slli.d	$s4, $s7, 3
	fldx.d	$ft14, $a2, $a3
	fldx.d	$ft15, $a2, $s3
	fldx.d	$fs0, $a2, $s5
	fldx.d	$fs1, $a2, $s4
	alsl.d	$s7, $s7, $a2, 3
	movfr2gr.d	$t4, $ft14
	xvinsgr2vr.d	$xr22, $t4, 0
	movfr2gr.d	$t4, $ft15
	xvinsgr2vr.d	$xr22, $t4, 1
	movfr2gr.d	$t4, $fs0
	xvinsgr2vr.d	$xr22, $t4, 2
	movfr2gr.d	$t4, $fs1
	xvinsgr2vr.d	$xr22, $t4, 3
	fld.d	$fs0, $t7, 8
	fld.d	$fs1, $t8, 8
	fld.d	$fs2, $s0, 8
	fld.d	$fs3, $a7, 8
	xvfadd.d	$xr23, $xr21, $xr22
	movfr2gr.d	$a7, $fs0
	xvinsgr2vr.d	$xr24, $a7, 0
	movfr2gr.d	$a7, $fs1
	xvinsgr2vr.d	$xr24, $a7, 1
	movfr2gr.d	$a7, $fs2
	xvinsgr2vr.d	$xr24, $a7, 2
	movfr2gr.d	$a7, $fs3
	fld.d	$fs1, $s8, 8
	fld.d	$fs2, $ra, 8
	fld.d	$fs3, $t5, 8
	fld.d	$fs4, $s7, 8
	xvinsgr2vr.d	$xr24, $a7, 3
	movfr2gr.d	$a7, $fs1
	xvinsgr2vr.d	$xr25, $a7, 0
	movfr2gr.d	$a7, $fs2
	xvinsgr2vr.d	$xr25, $a7, 1
	movfr2gr.d	$a7, $fs3
	xvinsgr2vr.d	$xr25, $a7, 2
	movfr2gr.d	$a7, $fs4
	xvinsgr2vr.d	$xr25, $a7, 3
	xvfadd.d	$xr26, $xr24, $xr25
	xvfadd.d	$xr27, $xr16, $xr23
	xvpickve2gr.d	$a7, $xr27, 1
	xvld	$xr28, $a5, %pc_lo12(.LCPI9_1)
	xvfadd.d	$xr29, $xr20, $xr26
	xvpermi.d	$xr30, $xr27, 238
	xvpermi.d	$xr31, $xr29, 238
	xvshuf.d	$xr28, $xr31, $xr30
	movgr2fr.d	$fs6, $a7
	xvpickve2gr.d	$a7, $xr29, 1
	movgr2fr.d	$fs7, $a7
	xvfsub.d	$xr15, $xr15, $xr17
	movfr2gr.d	$a7, $fs6
	movfr2gr.d	$t4, $fs7
	vinsgr2vr.d	$vr17, $a7, 0
	vinsgr2vr.d	$vr17, $t4, 1
	vst	$vr17, $a0, 16
	xvst	$xr28, $a0, 32
	xvst	$xr27, $sp, 384
	xvst	$xr29, $sp, 416
	vld	$vr27, $sp, 384
	vld	$vr28, $sp, 416
	xvfsub.d	$xr17, $xr18, $xr19
	xvfsub.d	$xr18, $xr21, $xr22
	xvfsub.d	$xr19, $xr24, $xr25
	vpackev.d	$vr21, $vr28, $vr27
	vst	$vr21, $a0, 0
	xvfsub.d	$xr16, $xr16, $xr23
	xvfsub.d	$xr20, $xr20, $xr26
	xvbitrevi.d	$xr21, $xr20, 63
	xvfmul.d	$xr21, $xr9, $xr21
	xvfmadd.d	$xr21, $xr8, $xr16, $xr21
	xvpickve2gr.d	$a7, $xr21, 1
	movgr2fr.d	$ft14, $a7
	xvpickve2gr.d	$a7, $xr21, 2
	xvfmul.d	$xr16, $xr9, $xr16
	xvfmadd.d	$xr16, $xr8, $xr20, $xr16
	xvst	$xr16, $sp, 448
	xvst	$xr21, $sp, 608
	vld	$vr20, $sp, 448
	vld	$vr23, $sp, 608
	movgr2fr.d	$fs0, $a7
	xvpickve2gr.d	$a7, $xr21, 3
	movgr2fr.d	$ft13, $a7
	vpackev.d	$vr20, $vr20, $vr23
	vstx	$vr20, $a2, $t1
	movfr2gr.d	$a7, $ft14
	xvpickve2gr.d	$t1, $xr16, 1
	movgr2fr.d	$ft12, $t1
	vinsgr2vr.d	$vr22, $a7, 0
	movfr2gr.d	$a7, $ft12
	vinsgr2vr.d	$vr22, $a7, 1
	vstx	$vr22, $a2, $a1
	movfr2gr.d	$a1, $fs0
	xvpickve2gr.d	$a7, $xr16, 2
	movgr2fr.d	$ft12, $a7
	vinsgr2vr.d	$vr22, $a1, 0
	movfr2gr.d	$a1, $ft12
	vinsgr2vr.d	$vr22, $a1, 1
	vstx	$vr22, $a2, $t0
	movfr2gr.d	$a1, $ft13
	xvpickve2gr.d	$a7, $xr16, 3
	movgr2fr.d	$ft8, $a7
	vinsgr2vr.d	$vr20, $a1, 0
	movfr2gr.d	$a1, $ft8
	vinsgr2vr.d	$vr20, $a1, 1
	vstx	$vr20, $a2, $s6
	xvfsub.d	$xr16, $xr15, $xr19
	xvfadd.d	$xr20, $xr17, $xr18
	xvbitrevi.d	$xr21, $xr20, 63
	xvfmul.d	$xr21, $xr10, $xr21
	xvld	$xr22, $t3, %pc_lo12(.LCPI9_2)
	xvfmadd.d	$xr21, $xr11, $xr16, $xr21
	xvfmul.d	$xr16, $xr10, $xr16
	xvfmadd.d	$xr16, $xr11, $xr20, $xr16
	xvshuf.d	$xr22, $xr16, $xr21
	xvpickve2gr.d	$a1, $xr21, 3
	movgr2fr.d	$ft12, $a1
	xvst	$xr22, $s2, 16
	movfr2gr.d	$a1, $ft12
	xvpickve2gr.d	$a7, $xr16, 3
	movgr2fr.d	$ft12, $a7
	vinsgr2vr.d	$vr22, $a1, 0
	movfr2gr.d	$a1, $ft12
	vinsgr2vr.d	$vr22, $a1, 1
	vst	$vr22, $s2, 48
	xvst	$xr16, $sp, 512
	xvst	$xr21, $sp, 576
	vld	$vr16, $sp, 512
	vld	$vr20, $sp, 576
	vpackev.d	$vr16, $vr16, $vr20
	vstx	$vr16, $a0, $a6
	xvfadd.d	$xr15, $xr15, $xr19
	xvfsub.d	$xr16, $xr17, $xr18
	xvbitrevi.d	$xr17, $xr16, 63
	xvfmul.d	$xr17, $xr12, $xr17
	xvfmadd.d	$xr17, $xr13, $xr15, $xr17
	xvpickve2gr.d	$a1, $xr17, 1
	movgr2fr.d	$ft10, $a1
	xvpickve2gr.d	$a1, $xr17, 2
	xvfmul.d	$xr15, $xr12, $xr15
	xvfmadd.d	$xr15, $xr13, $xr16, $xr15
	xvst	$xr15, $sp, 480
	xvst	$xr17, $sp, 544
	vld	$vr16, $sp, 480
	vld	$vr19, $sp, 544
	movgr2fr.d	$ft12, $a1
	xvpickve2gr.d	$a1, $xr17, 3
	movgr2fr.d	$ft9, $a1
	vpackev.d	$vr16, $vr16, $vr19
	vstx	$vr16, $a2, $a3
	movfr2gr.d	$a1, $ft10
	xvpickve2gr.d	$a3, $xr15, 1
	movgr2fr.d	$ft8, $a3
	vinsgr2vr.d	$vr18, $a1, 0
	movfr2gr.d	$a1, $ft8
	vinsgr2vr.d	$vr18, $a1, 1
	vstx	$vr18, $a2, $s3
	movfr2gr.d	$a1, $ft12
	xvpickve2gr.d	$a3, $xr15, 2
	movgr2fr.d	$ft8, $a3
	vinsgr2vr.d	$vr18, $a1, 0
	movfr2gr.d	$a1, $ft8
	vinsgr2vr.d	$vr18, $a1, 1
	vstx	$vr18, $a2, $s5
	movfr2gr.d	$a1, $ft9
	xvpickve2gr.d	$a3, $xr15, 3
	movgr2fr.d	$ft7, $a3
	vinsgr2vr.d	$vr16, $a1, 0
	movfr2gr.d	$a1, $ft7
	vinsgr2vr.d	$vr16, $a1, 1
	vstx	$vr16, $a2, $s4
	vaddi.wu	$vr14, $vr14, 8
	addi.d	$s1, $s1, -4
	addi.d	$a0, $a0, 64
	bnez	$s1, .LBB9_96
# %bb.97:                               # %middle.block780
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB9_10
	b	.LBB9_17
.LBB9_98:                               # %._crit_edge428
	addi.d	$sp, $fp, -1312
	fld.d	$fs7, $sp, 1160                 # 8-byte Folded Reload
	fld.d	$fs6, $sp, 1168                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1176                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1184                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1192                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1200                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1208                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1216                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1224                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1232                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1240                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1248                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1256                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1264                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1272                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1280                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1288                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1296                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1304                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1312
	ret
.LBB9_99:                               # %vector.scevcheck
	srai.d	$t4, $a3, 1
	sub.w	$t7, $a4, $s5
	alsl.d	$t2, $t7, $a2, 3
	addi.d	$t3, $t2, 8
	alsl.d	$a1, $t4, $t3, 4
	bltu	$a1, $t3, .LBB9_5
# %bb.100:                              # %vector.scevcheck
	sub.d	$a1, $a7, $a0
	addi.d	$t0, $zero, -2
	andn	$t5, $t0, $a1
	add.w	$a1, $t7, $t5
	blt	$a1, $t7, .LBB9_5
# %bb.101:                              # %vector.scevcheck
	bltz	$t4, .LBB9_5
# %bb.102:                              # %vector.scevcheck
	alsl.w	$t1, $s5, $a5, 1
	alsl.d	$t0, $t1, $a2, 3
	addi.d	$a1, $t0, 8
	alsl.d	$t6, $t4, $a1, 4
	bltu	$t6, $a1, .LBB9_5
# %bb.103:                              # %vector.scevcheck
	alsl.d	$a5, $s5, $a5, 1
	add.w	$a5, $a5, $t5
	blt	$a5, $t1, .LBB9_5
# %bb.104:                              # %vector.scevcheck
	bltz	$t4, .LBB9_5
# %bb.105:                              # %vector.scevcheck
	srli.d	$a5, $a3, 33
	bnez	$a5, .LBB9_5
# %bb.106:                              # %vector.memcheck
	alsl.d	$a5, $a7, $a2, 3
	slli.d	$s0, $a3, 3
	bstrins.d	$s0, $zero, 3, 0
	alsl.d	$t4, $a7, $s0, 3
	add.d	$t5, $a2, $t4
	addi.d	$s4, $t5, 8
	addi.d	$s2, $a5, 8
	addi.d	$s3, $t5, 16
	sltu	$t5, $a5, $s3
	sltu	$t6, $s2, $s4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB9_5
# %bb.107:                              # %vector.memcheck
	alsl.d	$t1, $t1, $s0, 3
	add.d	$t1, $a2, $t1
	addi.d	$s1, $t1, 8
	sltu	$t5, $a5, $s1
	sltu	$t6, $t0, $s4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB9_5
# %bb.108:                              # %vector.memcheck
	addi.d	$t8, $t1, 16
	sltu	$t1, $a5, $t8
	sltu	$t5, $a1, $s4
	and	$t1, $t1, $t5
	bnez	$t1, .LBB9_5
# %bb.109:                              # %vector.memcheck
	alsl.d	$t1, $a7, $a4, 3
	add.d	$t5, $a2, $t1
	alsl.d	$t1, $s5, $t4, 3
	add.d	$t4, $a2, $t1
	addi.d	$t6, $t4, 8
	sltu	$t1, $a5, $t6
	sltu	$s5, $t5, $s4
	and	$t1, $t1, $s5
	bnez	$t1, .LBB9_137
# %bb.110:                              # %vector.memcheck
	addi.d	$t1, $t5, 8
	addi.d	$t4, $t4, 16
	sltu	$s5, $a5, $t4
	sltu	$s6, $t1, $s4
	and	$s5, $s5, $s6
	bnez	$s5, .LBB9_137
# %bb.111:                              # %vector.memcheck
	alsl.d	$t7, $t7, $s0, 3
	add.d	$s0, $a2, $t7
	addi.d	$t7, $s0, 8
	sltu	$s5, $a5, $t7
	sltu	$s6, $t2, $s4
	and	$s5, $s5, $s6
	bnez	$s5, .LBB9_137
# %bb.112:                              # %vector.memcheck
	addi.d	$s0, $s0, 16
	sltu	$s5, $a5, $s0
	sltu	$s4, $t3, $s4
	and	$s4, $s5, $s4
	bnez	$s4, .LBB9_137
# %bb.113:                              # %vector.memcheck
	sltu	$s4, $s2, $s1
	sltu	$s5, $t0, $s3
	and	$s4, $s4, $s5
	bnez	$s4, .LBB9_137
# %bb.114:                              # %vector.memcheck
	sltu	$s4, $s2, $t8
	sltu	$s5, $a1, $s3
	and	$s4, $s4, $s5
	bnez	$s4, .LBB9_137
# %bb.115:                              # %vector.memcheck
	sltu	$s4, $s2, $t6
	sltu	$s5, $t5, $s3
	and	$s4, $s4, $s5
	bnez	$s4, .LBB9_137
# %bb.116:                              # %vector.memcheck
	sltu	$s4, $s2, $t4
	sltu	$s5, $t1, $s3
	and	$s4, $s4, $s5
	bnez	$s4, .LBB9_137
# %bb.117:                              # %vector.memcheck
	sltu	$s4, $s2, $t7
	sltu	$s5, $t2, $s3
	and	$s4, $s4, $s5
	bnez	$s4, .LBB9_137
# %bb.118:                              # %vector.memcheck
	sltu	$s2, $s2, $s0
	sltu	$s3, $t3, $s3
	and	$s2, $s2, $s3
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	bnez	$s2, .LBB9_5
# %bb.119:                              # %vector.memcheck
	sltu	$s2, $t0, $t8
	sltu	$s3, $a1, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB9_5
# %bb.120:                              # %vector.memcheck
	sltu	$s2, $t0, $t6
	sltu	$s3, $t5, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB9_5
# %bb.121:                              # %vector.memcheck
	sltu	$s2, $t0, $t4
	sltu	$s3, $t1, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB9_5
# %bb.122:                              # %vector.memcheck
	sltu	$s2, $t0, $t7
	sltu	$s3, $t2, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB9_5
# %bb.123:                              # %vector.memcheck
	sltu	$t0, $t0, $s0
	sltu	$s1, $t3, $s1
	and	$t0, $t0, $s1
	bnez	$t0, .LBB9_5
# %bb.124:                              # %vector.memcheck
	sltu	$t0, $a1, $t6
	sltu	$s1, $t5, $t8
	and	$t0, $t0, $s1
	bnez	$t0, .LBB9_5
# %bb.125:                              # %vector.memcheck
	sltu	$t0, $a1, $t4
	sltu	$s1, $t1, $t8
	and	$t0, $t0, $s1
	bnez	$t0, .LBB9_5
# %bb.126:                              # %vector.memcheck
	sltu	$t0, $a1, $t7
	sltu	$s1, $t2, $t8
	and	$t0, $t0, $s1
	bnez	$t0, .LBB9_5
# %bb.127:                              # %vector.memcheck
	sltu	$a1, $a1, $s0
	sltu	$t0, $t3, $t8
	and	$a1, $a1, $t0
	bnez	$a1, .LBB9_5
# %bb.128:                              # %vector.memcheck
	sltu	$a1, $t5, $t4
	sltu	$t0, $t1, $t6
	and	$a1, $a1, $t0
	bnez	$a1, .LBB9_5
# %bb.129:                              # %vector.memcheck
	sltu	$a1, $t5, $t7
	sltu	$t0, $t2, $t6
	and	$a1, $a1, $t0
	bnez	$a1, .LBB9_5
# %bb.130:                              # %vector.memcheck
	sltu	$a1, $t5, $s0
	sltu	$t0, $t3, $t6
	and	$a1, $a1, $t0
	bnez	$a1, .LBB9_5
# %bb.131:                              # %vector.memcheck
	sltu	$a1, $t1, $t7
	sltu	$t0, $t2, $t4
	and	$a1, $a1, $t0
	bnez	$a1, .LBB9_5
# %bb.132:                              # %vector.memcheck
	sltu	$a1, $t1, $s0
	sltu	$t0, $t3, $t4
	and	$a1, $a1, $t0
	bnez	$a1, .LBB9_5
# %bb.133:                              # %vector.memcheck
	sltu	$a1, $t2, $s0
	sltu	$t0, $t3, $t7
	and	$a1, $a1, $t0
	move	$t2, $a7
	bnez	$a1, .LBB9_6
# %bb.134:                              # %vector.ph
	srli.d	$a1, $a3, 1
	addi.d	$t4, $a1, 1
	st.d	$t4, $sp, 376                   # 8-byte Folded Spill
	bstrins.d	$t4, $zero, 1, 0
	alsl.d	$t2, $t4, $a7, 1
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	vreplgr2vr.w	$vr1, $a1
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	vreplgr2vr.w	$vr2, $a1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	vld	$vr5, $a1, %pc_lo12(.LCPI9_0)
	xvld	$xr3, $s7, %pc_lo12(.LCPI9_1)
	xvld	$xr4, $s8, %pc_lo12(.LCPI9_2)
	vreplgr2vr.w	$vr6, $a7
	vadd.w	$vr5, $vr6, $vr5
	xvreplve0.d	$xr6, $xr0
	move	$t5, $t4
	.p2align	4, , 16
.LBB9_135:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vadd.w	$vr13, $vr1, $vr5
	fld.d	$fa7, $a5, 0
	fld.d	$ft0, $a5, 16
	fld.d	$ft1, $a5, 32
	fld.d	$ft2, $a5, 48
	vadd.w	$vr14, $vr2, $vr5
	movfr2gr.d	$a1, $fa7
	xvinsgr2vr.d	$xr7, $a1, 0
	movfr2gr.d	$a1, $ft0
	xvinsgr2vr.d	$xr7, $a1, 1
	movfr2gr.d	$a1, $ft1
	xvinsgr2vr.d	$xr7, $a1, 2
	movfr2gr.d	$a1, $ft2
	add.d	$t6, $a5, $a4
	fldx.d	$ft0, $a5, $a4
	fld.d	$ft2, $t6, 16
	fld.d	$ft3, $t6, 32
	fld.d	$ft4, $t6, 48
	xvinsgr2vr.d	$xr7, $a1, 3
	movfr2gr.d	$a1, $ft0
	xvinsgr2vr.d	$xr9, $a1, 0
	movfr2gr.d	$a1, $ft2
	xvinsgr2vr.d	$xr9, $a1, 1
	movfr2gr.d	$a1, $ft3
	xvinsgr2vr.d	$xr9, $a1, 2
	movfr2gr.d	$a1, $ft4
	xvinsgr2vr.d	$xr9, $a1, 3
	fld.d	$ft2, $a5, 8
	fld.d	$ft3, $a5, 24
	fld.d	$ft4, $a5, 40
	fld.d	$ft7, $a5, 56
	xvfadd.d	$xr8, $xr7, $xr9
	movfr2gr.d	$a1, $ft2
	xvinsgr2vr.d	$xr10, $a1, 0
	movfr2gr.d	$a1, $ft3
	xvinsgr2vr.d	$xr10, $a1, 1
	movfr2gr.d	$a1, $ft4
	xvinsgr2vr.d	$xr10, $a1, 2
	movfr2gr.d	$a1, $ft7
	fld.d	$ft3, $t6, 8
	fld.d	$ft4, $t6, 24
	fld.d	$ft7, $t6, 40
	fld.d	$ft8, $t6, 56
	xvinsgr2vr.d	$xr10, $a1, 3
	movfr2gr.d	$a1, $ft3
	xvinsgr2vr.d	$xr11, $a1, 0
	movfr2gr.d	$a1, $ft4
	xvinsgr2vr.d	$xr11, $a1, 1
	movfr2gr.d	$a1, $ft7
	xvinsgr2vr.d	$xr11, $a1, 2
	movfr2gr.d	$a1, $ft8
	xvinsgr2vr.d	$xr11, $a1, 3
	xvfadd.d	$xr12, $xr10, $xr11
	vpickve2gr.w	$a3, $vr13, 3
	vpickve2gr.w	$a1, $vr13, 2
	vpickve2gr.w	$t0, $vr13, 1
	vpickve2gr.w	$t1, $vr13, 0
	alsl.d	$s2, $t1, $a2, 3
	slli.d	$s1, $t1, 3
	alsl.d	$s3, $t0, $a2, 3
	slli.d	$t1, $t0, 3
	alsl.d	$s4, $a1, $a2, 3
	slli.d	$a1, $a1, 3
	slli.d	$t0, $a3, 3
	fldx.d	$ft5, $a2, $s1
	fldx.d	$ft7, $a2, $t1
	fldx.d	$ft8, $a2, $a1
	fldx.d	$ft9, $a2, $t0
	alsl.d	$s5, $a3, $a2, 3
	movfr2gr.d	$a3, $ft5
	xvinsgr2vr.d	$xr13, $a3, 0
	movfr2gr.d	$a3, $ft7
	xvinsgr2vr.d	$xr13, $a3, 1
	movfr2gr.d	$a3, $ft8
	xvinsgr2vr.d	$xr13, $a3, 2
	movfr2gr.d	$a3, $ft9
	xvinsgr2vr.d	$xr13, $a3, 3
	vpickve2gr.w	$s6, $vr14, 3
	vpickve2gr.w	$a3, $vr14, 2
	vpickve2gr.w	$t7, $vr14, 1
	vpickve2gr.w	$t8, $vr14, 0
	alsl.d	$s7, $t8, $a2, 3
	slli.d	$s0, $t8, 3
	alsl.d	$s8, $t7, $a2, 3
	slli.d	$t8, $t7, 3
	alsl.d	$ra, $a3, $a2, 3
	slli.d	$a3, $a3, 3
	slli.d	$t7, $s6, 3
	fldx.d	$ft6, $a2, $s0
	fldx.d	$ft7, $a2, $t8
	fldx.d	$ft8, $a2, $a3
	fldx.d	$ft9, $a2, $t7
	alsl.d	$s6, $s6, $a2, 3
	movfr2gr.d	$t3, $ft6
	xvinsgr2vr.d	$xr14, $t3, 0
	movfr2gr.d	$t3, $ft7
	xvinsgr2vr.d	$xr14, $t3, 1
	movfr2gr.d	$t3, $ft8
	xvinsgr2vr.d	$xr14, $t3, 2
	movfr2gr.d	$t3, $ft9
	xvinsgr2vr.d	$xr14, $t3, 3
	fld.d	$ft8, $s2, 8
	fld.d	$ft9, $s3, 8
	fld.d	$ft10, $s4, 8
	fld.d	$ft11, $s5, 8
	xvfadd.d	$xr15, $xr13, $xr14
	movfr2gr.d	$t3, $ft8
	xvinsgr2vr.d	$xr16, $t3, 0
	movfr2gr.d	$t3, $ft9
	xvinsgr2vr.d	$xr16, $t3, 1
	movfr2gr.d	$t3, $ft10
	xvinsgr2vr.d	$xr16, $t3, 2
	movfr2gr.d	$t3, $ft11
	fld.d	$ft9, $s7, 8
	fld.d	$ft10, $s8, 8
	fld.d	$ft11, $ra, 8
	fld.d	$ft12, $s6, 8
	xvinsgr2vr.d	$xr16, $t3, 3
	movfr2gr.d	$t3, $ft9
	xvinsgr2vr.d	$xr17, $t3, 0
	movfr2gr.d	$t3, $ft10
	xvinsgr2vr.d	$xr17, $t3, 1
	movfr2gr.d	$t3, $ft11
	xvinsgr2vr.d	$xr17, $t3, 2
	movfr2gr.d	$t3, $ft12
	xvinsgr2vr.d	$xr17, $t3, 3
	xvfadd.d	$xr18, $xr16, $xr17
	xvfadd.d	$xr19, $xr8, $xr15
	xvpickve2gr.d	$t3, $xr19, 1
	xvfadd.d	$xr20, $xr12, $xr18
	xvpermi.d	$xr21, $xr19, 238
	xvpermi.d	$xr22, $xr20, 238
	xvori.b	$xr23, $xr3, 0
	xvshuf.d	$xr23, $xr22, $xr21
	movgr2fr.d	$ft13, $t3
	xvpickve2gr.d	$t3, $xr20, 1
	movgr2fr.d	$ft14, $t3
	xvfsub.d	$xr7, $xr7, $xr9
	movfr2gr.d	$t3, $ft13
	movfr2gr.d	$s2, $ft14
	vinsgr2vr.d	$vr9, $t3, 0
	vinsgr2vr.d	$vr9, $s2, 1
	vst	$vr9, $a5, 16
	xvst	$xr23, $a5, 32
	xvst	$xr19, $sp, 928
	xvst	$xr20, $sp, 992
	vld	$vr19, $sp, 928
	vld	$vr20, $sp, 992
	xvfsub.d	$xr9, $xr10, $xr11
	xvfsub.d	$xr10, $xr13, $xr14
	xvfsub.d	$xr11, $xr16, $xr17
	vpackev.d	$vr13, $vr20, $vr19
	vst	$vr13, $a5, 0
	xvfsub.d	$xr12, $xr18, $xr12
	xvpickve2gr.d	$t3, $xr12, 1
	movgr2fr.d	$ft5, $t3
	xvpickve2gr.d	$t3, $xr12, 2
	xvfsub.d	$xr8, $xr8, $xr15
	xvst	$xr12, $sp, 960
	xvst	$xr8, $sp, 896
	vld	$vr14, $sp, 960
	vld	$vr15, $sp, 896
	movgr2fr.d	$ft8, $t3
	xvpickve2gr.d	$t3, $xr12, 3
	movgr2fr.d	$ft4, $t3
	vpackev.d	$vr14, $vr15, $vr14
	vstx	$vr14, $a2, $s1
	movfr2gr.d	$t3, $ft5
	xvpickve2gr.d	$s1, $xr8, 1
	movgr2fr.d	$ft5, $s1
	vinsgr2vr.d	$vr14, $t3, 0
	movfr2gr.d	$t3, $ft5
	vinsgr2vr.d	$vr14, $t3, 1
	vstx	$vr14, $a2, $t1
	movfr2gr.d	$t1, $ft8
	xvpickve2gr.d	$t3, $xr8, 2
	movgr2fr.d	$ft5, $t3
	vinsgr2vr.d	$vr14, $t1, 0
	movfr2gr.d	$t1, $ft5
	vinsgr2vr.d	$vr14, $t1, 1
	vstx	$vr14, $a2, $a1
	movfr2gr.d	$a1, $ft4
	xvpickve2gr.d	$t1, $xr8, 3
	movgr2fr.d	$ft0, $t1
	vinsgr2vr.d	$vr12, $a1, 0
	movfr2gr.d	$a1, $ft0
	vinsgr2vr.d	$vr12, $a1, 1
	vstx	$vr12, $a2, $t0
	xvfsub.d	$xr8, $xr7, $xr11
	xvfadd.d	$xr12, $xr9, $xr10
	xvfsub.d	$xr13, $xr8, $xr12
	xvfmul.d	$xr13, $xr6, $xr13
	xvfadd.d	$xr8, $xr12, $xr8
	xvfmul.d	$xr8, $xr6, $xr8
	xvori.b	$xr12, $xr4, 0
	xvshuf.d	$xr12, $xr8, $xr13
	xvpickve2gr.d	$a1, $xr13, 3
	movgr2fr.d	$ft6, $a1
	xvst	$xr12, $t6, 16
	movfr2gr.d	$a1, $ft6
	xvpickve2gr.d	$t0, $xr8, 3
	movgr2fr.d	$ft4, $t0
	vinsgr2vr.d	$vr14, $a1, 0
	movfr2gr.d	$a1, $ft4
	vinsgr2vr.d	$vr14, $a1, 1
	vst	$vr14, $t6, 48
	xvst	$xr13, $sp, 1120
	xvst	$xr8, $sp, 1088
	vld	$vr8, $sp, 1120
	vld	$vr12, $sp, 1088
	vpackev.d	$vr8, $vr12, $vr8
	vstx	$vr8, $a5, $a4
	xvfadd.d	$xr7, $xr7, $xr11
	xvfsub.d	$xr8, $xr10, $xr9
	xvfsub.d	$xr9, $xr8, $xr7
	xvfmul.d	$xr9, $xr6, $xr9
	xvpickve2gr.d	$a1, $xr9, 1
	movgr2fr.d	$ft2, $a1
	xvpickve2gr.d	$a1, $xr9, 2
	xvfadd.d	$xr7, $xr8, $xr7
	xvfmul.d	$xr7, $xr6, $xr7
	xvst	$xr9, $sp, 1056
	xvst	$xr7, $sp, 1024
	vld	$vr8, $sp, 1056
	vld	$vr11, $sp, 1024
	movgr2fr.d	$ft4, $a1
	xvpickve2gr.d	$a1, $xr9, 3
	movgr2fr.d	$ft1, $a1
	vpackev.d	$vr8, $vr11, $vr8
	vstx	$vr8, $a2, $s0
	movfr2gr.d	$a1, $ft2
	xvpickve2gr.d	$t0, $xr7, 1
	movgr2fr.d	$ft0, $t0
	vinsgr2vr.d	$vr10, $a1, 0
	movfr2gr.d	$a1, $ft0
	vinsgr2vr.d	$vr10, $a1, 1
	vstx	$vr10, $a2, $t8
	movfr2gr.d	$a1, $ft4
	xvpickve2gr.d	$t0, $xr7, 2
	movgr2fr.d	$ft0, $t0
	vinsgr2vr.d	$vr10, $a1, 0
	movfr2gr.d	$a1, $ft0
	vinsgr2vr.d	$vr10, $a1, 1
	vstx	$vr10, $a2, $a3
	movfr2gr.d	$a1, $ft1
	xvpickve2gr.d	$a3, $xr7, 3
	movgr2fr.d	$fa7, $a3
	vinsgr2vr.d	$vr8, $a1, 0
	movfr2gr.d	$a1, $fa7
	vinsgr2vr.d	$vr8, $a1, 1
	vstx	$vr8, $a2, $t7
	vaddi.wu	$vr5, $vr5, 8
	addi.d	$t5, $t5, -4
	addi.d	$a5, $a5, 64
	bnez	$t5, .LBB9_135
# %bb.136:                              # %middle.block
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	bne	$a1, $t4, .LBB9_6
	b	.LBB9_8
.LBB9_137:
	move	$t2, $a7
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	b	.LBB9_6
.Lfunc_end9:
	.size	cftmdl, .Lfunc_end9-cftmdl
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"FFT sanity check failed! Difference is: %le\n"
	.size	.L.str, 45

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%e %e\n"
	.size	.L.str.1, 7

	.section	".note.GNU-stack","",@progbits
	.addrsig
