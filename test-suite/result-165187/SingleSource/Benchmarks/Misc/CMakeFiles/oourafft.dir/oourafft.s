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
	.dword	0x3ddb7cdfd9d7bdbb              # double 1.0E-10
.LCPI0_4:
	.dword	0x3e112e0be826d695              # double 1.0000000000000001E-9
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
	move	$a2, $zero
	movgr2fr.d	$fa0, $zero
	ori	$a0, $zero, 1
	lu52i.d	$a1, $zero, -1035
	movgr2fr.d	$fa1, $a1
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
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_3)
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB0_20
# %bb.7:
	lu12i.w	$s4, 4
	move	$a0, $s3
	move	$a1, $zero
	move	$a2, $s4
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
	lu12i.w	$a0, -4
	ori	$a1, $s4, 8
	ori	$a2, $s4, 24
	.p2align	4, , 16
.LBB0_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s3, $a0
	fldx.d	$fa0, $a3, $a1
	fldx.d	$fa1, $a3, $a2
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fstx.d	$fa0, $a3, $a1
	addi.d	$a0, $a0, 32
	fstx.d	$fa1, $a3, $a2
	bnez	$a0, .LBB0_10
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
	pcalau12i	$a0, %pc_hi20(.LCPI0_4)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI0_4)
	lu12i.w	$s2, -4
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
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
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
	bstrpick.d	$a0, $s5, 31, 0
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
	addi.d	$s6, $s6, 2
	addi.d	$s3, $s3, -16
	addi.w	$s5, $s5, 2
	addi.d	$s4, $s4, 16
	bltu	$s6, $s2, .LBB2_3
# %bb.4:                                # %._crit_edge
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	pcaddu18i	$t8, %call36(bitrv2)
	jr	$t8
.LBB2_5:
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
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
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
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
	bne	$s1, $a0, .LBB4_42
.LBB4_4:                                # %cftbsub.exit.sink.split
	move	$a1, $fp
	move	$a2, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(cftfsub)
	jr	$t8
.LBB4_5:
	ori	$a0, $zero, 9
	st.w	$zero, $a3, 0
	bltu	$s1, $a0, .LBB4_16
# %bb.6:                                # %.lr.ph245.i.preheader
	ori	$a0, $zero, 1
	ori	$a1, $zero, 8
	move	$a2, $s1
	b	.LBB4_8
	.p2align	4, , 16
.LBB4_7:                                # %._crit_edge.i
                                        #   in Loop: Header=BB4_8 Depth=1
	slli.w	$a5, $a4, 4
	addi.w	$a6, $a2, 0
	slli.w	$a0, $a4, 1
	bge	$a5, $a6, .LBB4_17
.LBB4_8:                                # %.lr.ph245.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_12 Depth 2
                                        #     Child Loop BB4_15 Depth 2
	move	$a4, $a0
	bstrpick.d	$a2, $a2, 31, 1
	blez	$a0, .LBB4_7
# %bb.9:                                # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB4_8 Depth=1
	slli.d	$a0, $a4, 2
	bgeu	$a4, $a1, .LBB4_11
# %bb.10:                               #   in Loop: Header=BB4_8 Depth=1
	move	$a5, $zero
	b	.LBB4_14
	.p2align	4, , 16
.LBB4_11:                               # %vector.ph
                                        #   in Loop: Header=BB4_8 Depth=1
	bstrpick.d	$a5, $a4, 30, 3
	slli.d	$a5, $a5, 3
	vreplgr2vr.w	$vr0, $a2
	move	$a6, $a3
	move	$a7, $a5
	.p2align	4, , 16
.LBB4_12:                               # %vector.body
                                        #   Parent Loop BB4_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $a6, 0
	vld	$vr2, $a6, 16
	vadd.w	$vr1, $vr1, $vr0
	vadd.w	$vr2, $vr2, $vr0
	add.d	$t0, $a6, $a0
	vstx	$vr1, $a6, $a0
	vst	$vr2, $t0, 16
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB4_12
# %bb.13:                               # %middle.block
                                        #   in Loop: Header=BB4_8 Depth=1
	beq	$a5, $a4, .LBB4_7
.LBB4_14:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB4_8 Depth=1
	sub.d	$a6, $a4, $a5
	alsl.d	$a5, $a5, $a3, 2
	.p2align	4, , 16
.LBB4_15:                               # %.lr.ph.i
                                        #   Parent Loop BB4_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $a5, 0
	add.d	$a7, $a7, $a2
	stx.w	$a7, $a5, $a0
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 4
	bnez	$a6, .LBB4_15
	b	.LBB4_7
.LBB4_16:                               # %._crit_edge246.thread.i
	ori	$a1, $zero, 2
	ori	$a2, $zero, 8
	ori	$a0, $zero, 1
	beq	$s1, $a2, .LBB4_19
	b	.LBB4_26
.LBB4_17:                               # %._crit_edge246.i
	slli.d	$a1, $a4, 2
	bne	$a5, $a6, .LBB4_26
# %bb.18:                               # %.preheader238.i
	blez	$a0, .LBB4_31
.LBB4_19:                               # %.preheader.lr.ph.i
	move	$a2, $zero
	slli.d	$a4, $a0, 2
	bstrpick.d	$a5, $a1, 31, 0
	slli.d	$a5, $a5, 3
	b	.LBB4_22
	.p2align	4, , 16
.LBB4_20:                               #   in Loop: Header=BB4_22 Depth=1
	move	$a6, $zero
.LBB4_21:                               # %._crit_edge253.i
                                        #   in Loop: Header=BB4_22 Depth=1
	alsl.d	$a7, $a6, $fp, 3
	fld.d	$fa0, $a7, 8
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $a7, 8
	add.w	$a6, $a6, $a1
	add.w	$a7, $a6, $a1
	alsl.d	$t0, $a6, $fp, 3
	slli.d	$a6, $a6, 3
	fld.d	$fa0, $t0, 8
	alsl.d	$t1, $a7, $fp, 3
	slli.d	$t2, $a7, 3
	fld.d	$fa1, $t1, 8
	fldx.d	$fa2, $fp, $t2
	fldx.d	$fa3, $fp, $a6
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fstx.d	$fa2, $fp, $a6
	fst.d	$fa1, $t0, 8
	fstx.d	$fa3, $fp, $t2
	fst.d	$fa0, $t1, 8
	add.w	$a6, $a7, $a1
	alsl.d	$a6, $a6, $fp, 3
	fld.d	$fa0, $a6, 8
	fneg.d	$fa0, $fa0
	addi.d	$a2, $a2, 1
	fst.d	$fa0, $a6, 8
	beq	$a2, $a0, .LBB4_31
.LBB4_22:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_24 Depth 2
	beqz	$a2, .LBB4_20
# %bb.23:                               # %.lr.ph252.i
                                        #   in Loop: Header=BB4_22 Depth=1
	slli.d	$a6, $a2, 2
	ldx.w	$a6, $a3, $a6
	slli.d	$a7, $a2, 1
	alsl.d	$t0, $a6, $fp, 3
	move	$t1, $a3
	move	$t2, $a2
	.p2align	4, , 16
.LBB4_24:                               #   Parent Loop BB4_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t1, 0
	add.w	$t3, $t3, $a7
	fld.d	$fa0, $t0, 8
	alsl.d	$t4, $t3, $fp, 3
	slli.d	$t5, $t3, 3
	fld.d	$fa1, $t4, 8
	fldx.d	$fa2, $fp, $t5
	fld.d	$fa3, $t0, 0
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fst.d	$fa2, $t0, 0
	fst.d	$fa1, $t0, 8
	fstx.d	$fa3, $fp, $t5
	fst.d	$fa0, $t4, 8
	add.w	$t3, $t3, $a4
	add.d	$t4, $t0, $a5
	fld.d	$fa0, $t4, 8
	alsl.d	$t5, $t3, $fp, 3
	slli.d	$t6, $t3, 3
	fld.d	$fa1, $t5, 8
	fldx.d	$fa2, $fp, $t6
	fldx.d	$fa3, $t0, $a5
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fstx.d	$fa2, $t0, $a5
	fst.d	$fa1, $t4, 8
	fstx.d	$fa3, $fp, $t6
	fst.d	$fa0, $t5, 8
	sub.w	$t3, $t3, $a1
	add.d	$t5, $t4, $a5
	fld.d	$fa0, $t5, 8
	alsl.d	$t6, $t3, $fp, 3
	slli.d	$t7, $t3, 3
	fld.d	$fa1, $t6, 8
	fldx.d	$fa2, $fp, $t7
	fldx.d	$fa3, $t4, $a5
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fstx.d	$fa2, $t4, $a5
	fst.d	$fa1, $t5, 8
	fstx.d	$fa3, $fp, $t7
	fst.d	$fa0, $t6, 8
	add.w	$t3, $t3, $a4
	add.d	$t4, $t5, $a5
	fld.d	$fa0, $t4, 8
	alsl.d	$t6, $t3, $fp, 3
	slli.d	$t3, $t3, 3
	fld.d	$fa1, $t6, 8
	fldx.d	$fa2, $fp, $t3
	fldx.d	$fa3, $t5, $a5
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fstx.d	$fa2, $t5, $a5
	fst.d	$fa1, $t4, 8
	fstx.d	$fa3, $fp, $t3
	fst.d	$fa0, $t6, 8
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 4
	addi.d	$t0, $t0, 16
	bnez	$t2, .LBB4_24
# %bb.25:                               # %._crit_edge253.loopexit.i
                                        #   in Loop: Header=BB4_22 Depth=1
	add.w	$a6, $a6, $a7
	b	.LBB4_21
.LBB4_26:
	fld.d	$fa0, $fp, 8
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $fp, 8
	addi.w	$a4, $a1, 0
	alsl.d	$a2, $a4, $fp, 3
	fld.d	$fa0, $a2, 8
	fneg.d	$fa0, $fa0
	ori	$a5, $zero, 2
	fst.d	$fa0, $a2, 8
	blt	$a0, $a5, .LBB4_31
# %bb.27:                               # %.preheader239.preheader.i
	addi.d	$a2, $fp, 8
	slli.d	$a4, $a4, 3
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB4_28:                               # %.preheader239.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_29 Depth 2
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a3, $a6
	slli.d	$a7, $a5, 1
	alsl.d	$t0, $a6, $a2, 3
	move	$t1, $a3
	move	$t2, $a5
	.p2align	4, , 16
.LBB4_29:                               #   Parent Loop BB4_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t1, 0
	add.w	$t3, $t3, $a7
	fld.d	$fa0, $t0, 0
	alsl.d	$t4, $t3, $fp, 3
	slli.d	$t5, $t3, 3
	fld.d	$fa1, $t4, 8
	fldx.d	$fa2, $fp, $t5
	fld.d	$fa3, $t0, -8
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fst.d	$fa2, $t0, -8
	fst.d	$fa1, $t0, 0
	fstx.d	$fa3, $fp, $t5
	fst.d	$fa0, $t4, 8
	add.w	$t3, $t3, $a1
	add.d	$t4, $t0, $a4
	fldx.d	$fa0, $t0, $a4
	alsl.d	$t5, $t3, $fp, 3
	slli.d	$t3, $t3, 3
	fld.d	$fa1, $t5, 8
	fldx.d	$fa2, $fp, $t3
	fld.d	$fa3, $t4, -8
	fneg.d	$fa0, $fa0
	fneg.d	$fa1, $fa1
	fst.d	$fa2, $t4, -8
	fstx.d	$fa1, $t0, $a4
	fstx.d	$fa3, $fp, $t3
	fst.d	$fa0, $t5, 8
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 4
	addi.d	$t0, $t0, 16
	bnez	$t2, .LBB4_29
# %bb.30:                               #   in Loop: Header=BB4_28 Depth=1
	add.w	$a6, $a7, $a6
	alsl.d	$a7, $a6, $fp, 3
	fld.d	$fa0, $a7, 8
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $a7, 8
	add.w	$a6, $a6, $a1
	alsl.d	$a6, $a6, $fp, 3
	fld.d	$fa0, $a6, 8
	fneg.d	$fa0, $fa0
	addi.d	$a5, $a5, 1
	fst.d	$fa0, $a6, 8
	bne	$a5, $a0, .LBB4_28
.LBB4_31:                               # %bitrv2conj.exit
	ori	$a0, $zero, 9
	ori	$s2, $zero, 2
	bltu	$s1, $a0, .LBB4_35
# %bb.32:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cft1st)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 33
	ori	$s2, $zero, 8
	bltu	$s1, $a0, .LBB4_35
# %bb.33:                               # %.lr.ph.i22.preheader
	ori	$a1, $zero, 8
	ori	$a0, $zero, 32
	.p2align	4, , 16
.LBB4_34:                               # %.lr.ph.i22
                                        # =>This Inner Loop Header: Depth=1
	move	$s2, $a0
	move	$a0, $s1
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(cftmdl)
	jirl	$ra, $ra, 0
	slli.w	$a0, $s2, 2
	move	$a1, $s2
	blt	$a0, $s1, .LBB4_34
.LBB4_35:                               # %.loopexit120.i
	slli.w	$a0, $s2, 2
	bne	$a0, $s1, .LBB4_39
# %bb.36:                               # %.preheader.i21
	blez	$s2, .LBB4_42
# %bb.37:                               # %.lr.ph125.preheader.i
	move	$a0, $zero
	slli.d	$a1, $s2, 4
	addi.d	$a2, $fp, 8
	alsl.d	$a3, $s2, $a1, 3
	slli.d	$a4, $s2, 3
	.p2align	4, , 16
.LBB4_38:                               # %.lr.ph125.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a2, -8
	add.d	$a5, $a2, $a4
	fld.d	$fa1, $a5, -8
	fld.d	$fa2, $a2, 0
	fldx.d	$fa3, $a2, $a4
	fadd.d	$fa4, $fa0, $fa1
	fneg.d	$fa5, $fa2
	fsub.d	$fa5, $fa5, $fa3
	add.d	$a6, $a2, $a1
	fld.d	$fa6, $a6, -8
	add.d	$a7, $a2, $a3
	fld.d	$fa7, $a7, -8
	fldx.d	$ft0, $a2, $a1
	fldx.d	$ft1, $a2, $a3
	fsub.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa3, $fa2
	fadd.d	$fa2, $fa6, $fa7
	fadd.d	$fa3, $ft0, $ft1
	fsub.d	$fa6, $fa6, $fa7
	fsub.d	$fa7, $ft0, $ft1
	fadd.d	$ft0, $fa4, $fa2
	fst.d	$ft0, $a2, -8
	fsub.d	$ft0, $fa5, $fa3
	fst.d	$ft0, $a2, 0
	fsub.d	$fa2, $fa4, $fa2
	fst.d	$fa2, $a6, -8
	fadd.d	$fa2, $fa5, $fa3
	fstx.d	$fa2, $a2, $a1
	fsub.d	$fa2, $fa0, $fa7
	fst.d	$fa2, $a5, -8
	fsub.d	$fa2, $fa1, $fa6
	fstx.d	$fa2, $a2, $a4
	fadd.d	$fa0, $fa0, $fa7
	fst.d	$fa0, $a7, -8
	fadd.d	$fa0, $fa1, $fa6
	fstx.d	$fa0, $a2, $a3
	addi.d	$a0, $a0, 2
	addi.d	$a2, $a2, 16
	bltu	$a0, $s2, .LBB4_38
	b	.LBB4_42
.LBB4_39:                               # %.preheader118.i
	blez	$s2, .LBB4_42
# %bb.40:                               # %.lr.ph123.preheader.i
	move	$a0, $zero
	slli.d	$a1, $s2, 3
	.p2align	4, , 16
.LBB4_41:                               # %.lr.ph123.i
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
	bltu	$a0, $s2, .LBB4_41
.LBB4_42:                               # %cftbsub.exit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
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
	ori	$a3, $zero, 9
	st.w	$zero, $a1, 0
	bltu	$a0, $a3, .LBB6_11
# %bb.1:                                # %.lr.ph216.preheader
	ori	$a3, $zero, 1
	ori	$a4, $zero, 8
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_2:                                # %._crit_edge
                                        #   in Loop: Header=BB6_3 Depth=1
	slli.w	$a6, $a5, 4
	addi.w	$a7, $a0, 0
	slli.w	$a3, $a5, 1
	bge	$a6, $a7, .LBB6_13
.LBB6_3:                                # %.lr.ph216
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_7 Depth 2
                                        #     Child Loop BB6_10 Depth 2
	move	$a5, $a3
	bstrpick.d	$a0, $a0, 31, 1
	blez	$a3, .LBB6_2
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	slli.d	$a3, $a5, 2
	bgeu	$a5, $a4, .LBB6_6
# %bb.5:                                #   in Loop: Header=BB6_3 Depth=1
	move	$a6, $zero
	b	.LBB6_9
	.p2align	4, , 16
.LBB6_6:                                # %vector.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	bstrpick.d	$a6, $a5, 30, 3
	slli.d	$a6, $a6, 3
	vreplgr2vr.w	$vr0, $a0
	move	$a7, $a1
	move	$t0, $a6
	.p2align	4, , 16
.LBB6_7:                                # %vector.body
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $a7, 0
	vld	$vr2, $a7, 16
	vadd.w	$vr1, $vr1, $vr0
	vadd.w	$vr2, $vr2, $vr0
	add.d	$t1, $a7, $a3
	vstx	$vr1, $a7, $a3
	vst	$vr2, $t1, 16
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB6_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB6_3 Depth=1
	beq	$a6, $a5, .LBB6_2
.LBB6_9:                                # %.lr.ph.preheader269
                                        #   in Loop: Header=BB6_3 Depth=1
	alsl.d	$a7, $a6, $a1, 2
	sub.d	$a6, $a5, $a6
	.p2align	4, , 16
.LBB6_10:                               # %.lr.ph
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t0, $a7, 0
	add.d	$t0, $t0, $a0
	stx.w	$t0, $a7, $a3
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 4
	bnez	$a6, .LBB6_10
	b	.LBB6_2
.LBB6_11:                               # %._crit_edge217.thread
	ori	$a3, $zero, 8
	bne	$a0, $a3, .LBB6_26
# %bb.12:
	ori	$a0, $zero, 2
	ori	$a3, $zero, 1
	b	.LBB6_15
.LBB6_13:                               # %._crit_edge217
	slli.d	$a0, $a5, 2
	bne	$a6, $a7, .LBB6_21
# %bb.14:                               # %.preheader208
	blez	$a3, .LBB6_26
.LBB6_15:                               # %.preheader.lr.ph
	move	$a4, $zero
	slli.d	$a5, $a3, 2
	bstrpick.d	$a6, $a0, 31, 0
	slli.d	$a7, $a6, 4
	alsl.d	$t0, $a6, $a7, 3
	b	.LBB6_18
	.p2align	4, , 16
.LBB6_16:                               #   in Loop: Header=BB6_18 Depth=1
	move	$t1, $zero
.LBB6_17:                               # %._crit_edge224
                                        #   in Loop: Header=BB6_18 Depth=1
	add.d	$t2, $a3, $a4
	alsl.w	$t3, $t2, $t1, 1
	alsl.d	$t1, $t2, $t1, 1
	add.w	$t1, $t1, $a0
	slli.d	$t1, $t1, 3
	vldx	$vr0, $a2, $t1
	slli.d	$t2, $t3, 3
	vldx	$vr1, $a2, $t2
	vstx	$vr0, $a2, $t2
	addi.d	$a4, $a4, 1
	vstx	$vr1, $a2, $t1
	beq	$a4, $a3, .LBB6_26
.LBB6_18:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_20 Depth 2
	beqz	$a4, .LBB6_16
# %bb.19:                               # %.lr.ph223
                                        #   in Loop: Header=BB6_18 Depth=1
	slli.d	$t1, $a4, 2
	ldx.w	$t1, $a1, $t1
	slli.d	$t2, $a4, 1
	alsl.d	$t3, $t1, $a2, 3
	add.d	$t4, $a6, $t1
	alsl.d	$t4, $t4, $a2, 3
	move	$t5, $a4
	move	$t6, $a1
	.p2align	4, , 16
.LBB6_20:                               #   Parent Loop BB6_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t6, 0
	add.w	$t7, $t7, $t2
	slli.d	$t8, $t7, 3
	vldx	$vr0, $a2, $t8
	vld	$vr1, $t3, 0
	vst	$vr0, $t3, 0
	vstx	$vr1, $a2, $t8
	add.w	$t7, $t7, $a5
	slli.d	$t8, $t7, 3
	vldx	$vr0, $a2, $t8
	vld	$vr1, $t4, 0
	vst	$vr0, $t4, 0
	vstx	$vr1, $a2, $t8
	sub.w	$t7, $t7, $a0
	slli.d	$t8, $t7, 3
	vldx	$vr0, $a2, $t8
	vldx	$vr1, $t3, $a7
	vstx	$vr0, $t3, $a7
	vstx	$vr1, $a2, $t8
	add.w	$t7, $t7, $a5
	slli.d	$t7, $t7, 3
	vldx	$vr0, $a2, $t7
	vldx	$vr1, $t3, $t0
	vstx	$vr0, $t3, $t0
	vstx	$vr1, $a2, $t7
	addi.d	$t3, $t3, 16
	addi.d	$t4, $t4, 16
	addi.d	$t5, $t5, -1
	addi.d	$t6, $t6, 4
	bnez	$t5, .LBB6_20
	b	.LBB6_17
.LBB6_21:                               # %.preheader210
	ori	$a4, $zero, 2
	blt	$a3, $a4, .LBB6_26
# %bb.22:                               # %.preheader209.preheader
	addi.w	$a4, $a0, 0
	slli.d	$a4, $a4, 3
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB6_23:                               # %.preheader209
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_24 Depth 2
	slli.d	$a6, $a5, 2
	ldx.w	$a7, $a1, $a6
	slli.d	$a6, $a5, 1
	alsl.d	$a7, $a7, $a2, 3
	move	$t0, $a5
	move	$t1, $a1
	.p2align	4, , 16
.LBB6_24:                               #   Parent Loop BB6_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t1, 0
	add.w	$t2, $t2, $a6
	slli.d	$t3, $t2, 3
	vldx	$vr0, $a2, $t3
	vld	$vr1, $a7, 0
	vst	$vr0, $a7, 0
	vstx	$vr1, $a2, $t3
	add.w	$t2, $t2, $a0
	slli.d	$t2, $t2, 3
	vldx	$vr0, $a2, $t2
	vldx	$vr1, $a7, $a4
	vstx	$vr0, $a7, $a4
	vstx	$vr1, $a2, $t2
	addi.d	$a7, $a7, 16
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, 4
	bnez	$t0, .LBB6_24
# %bb.25:                               #   in Loop: Header=BB6_23 Depth=1
	addi.d	$a5, $a5, 1
	bne	$a5, $a3, .LBB6_23
.LBB6_26:                               # %.loopexit
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
	blez	$s2, .LBB7_11
# %bb.6:                                # %.lr.ph123.preheader
	move	$a0, $zero
	slli.d	$a1, $s2, 3
	slli.d	$a2, $s2, 4
	alsl.d	$a3, $s2, $a2, 3
	.p2align	4, , 16
.LBB7_7:                                # %.lr.ph123
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $fp, 0
	vldx	$vr1, $fp, $a1
	add.d	$a4, $fp, $a1
	add.d	$a5, $fp, $a3
	vfadd.d	$vr2, $vr0, $vr1
	vldx	$vr3, $fp, $a2
	vldx	$vr4, $fp, $a3
	vfsub.d	$vr0, $vr0, $vr1
	vreplvei.d	$vr1, $vr0, 0
	vreplvei.d	$vr0, $vr0, 1
	vfadd.d	$vr5, $vr3, $vr4
	vfsub.d	$vr3, $vr3, $vr4
	vreplvei.d	$vr4, $vr3, 0
	vreplvei.d	$vr3, $vr3, 1
	vfadd.d	$vr6, $vr2, $vr5
	vst	$vr6, $fp, 0
	vfsub.d	$vr2, $vr2, $vr5
	vstx	$vr2, $fp, $a2
	fsub.d	$fa2, $fa1, $fa3
	fstx.d	$fa2, $fp, $a1
	fadd.d	$fa2, $fa0, $fa4
	fst.d	$fa2, $a4, 8
	fadd.d	$fa1, $fa1, $fa3
	fstx.d	$fa1, $fp, $a3
	fsub.d	$fa0, $fa0, $fa4
	fst.d	$fa0, $a5, 8
	addi.d	$a0, $a0, 2
	addi.d	$fp, $fp, 16
	bltu	$a0, $s2, .LBB7_7
	b	.LBB7_11
.LBB7_8:                                # %.preheader116
	blez	$s2, .LBB7_11
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function cft1st
.LCPI8_0:
	.dword	0                               # 0x0
	.dword	2                               # 0x2
	.text
	.p2align	5
	.type	cft1st,@function
cft1st:                                 # @cft1st
# %bb.0:
	vld	$vr0, $a1, 0
	vld	$vr1, $a1, 16
	vld	$vr2, $a1, 32
	vld	$vr3, $a1, 48
	vfadd.d	$vr4, $vr0, $vr1
	vfadd.d	$vr5, $vr2, $vr3
	vfadd.d	$vr6, $vr4, $vr5
	vst	$vr6, $a1, 0
	vfsub.d	$vr4, $vr4, $vr5
	vst	$vr4, $a1, 32
	vfsub.d	$vr0, $vr0, $vr1
	vfsub.d	$vr1, $vr2, $vr3
	vshuf4i.d	$vr1, $vr0, 1
	vfsub.d	$vr2, $vr0, $vr1
	vfadd.d	$vr0, $vr0, $vr1
	vori.b	$vr1, $vr2, 0
	vshuf4i.d	$vr1, $vr0, 12
	vst	$vr1, $a1, 16
	vld	$vr1, $a1, 64
	vld	$vr3, $a1, 80
	vshuf4i.d	$vr0, $vr2, 12
	vst	$vr0, $a1, 48
	fld.d	$fa0, $a2, 16
	vfadd.d	$vr2, $vr1, $vr3
	vld	$vr4, $a1, 96
	vld	$vr5, $a1, 112
	vfsub.d	$vr1, $vr1, $vr3
	vreplvei.d	$vr3, $vr1, 0
	vreplvei.d	$vr1, $vr1, 1
	vfadd.d	$vr6, $vr4, $vr5
	vfsub.d	$vr4, $vr4, $vr5
	vreplvei.d	$vr5, $vr4, 0
	vreplvei.d	$vr4, $vr4, 1
	vfadd.d	$vr7, $vr2, $vr6
	vst	$vr7, $a1, 64
	vfsub.d	$vr7, $vr6, $vr2
	vfsub.d	$vr2, $vr2, $vr6
	vshuf4i.d	$vr7, $vr2, 9
	vst	$vr7, $a1, 96
	fsub.d	$fa2, $fa3, $fa4
	fadd.d	$fa6, $fa1, $fa5
	fsub.d	$fa7, $fa2, $fa6
	fmul.d	$fa7, $fa0, $fa7
	fst.d	$fa7, $a1, 80
	fadd.d	$fa2, $fa6, $fa2
	fmul.d	$fa2, $fa0, $fa2
	fst.d	$fa2, $a1, 88
	fadd.d	$fa2, $fa3, $fa4
	fsub.d	$fa1, $fa5, $fa1
	fsub.d	$fa3, $fa1, $fa2
	fmul.d	$fa3, $fa0, $fa3
	fst.d	$fa3, $a1, 112
	fadd.d	$fa1, $fa1, $fa2
	fmul.d	$fa0, $fa0, $fa1
	ori	$a3, $zero, 17
	fst.d	$fa0, $a1, 120
	bltu	$a0, $a3, .LBB8_5
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a5, $a0, -17
	ori	$a3, $zero, 16
	bgeu	$a5, $a3, .LBB8_6
# %bb.2:
	move	$a4, $zero
.LBB8_3:                                # %.lr.ph.preheader347
	alsl.d	$a1, $a3, $a1, 3
	alsl.d	$a5, $a4, $a2, 4
	addi.d	$a5, $a5, 56
	alsl.d	$a2, $a4, $a2, 3
	addi.d	$a2, $a2, 24
	.p2align	4, , 16
.LBB8_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a2, 0
	fld.d	$fa0, $a2, -8
	fld.d	$fa2, $a5, -24
	fld.d	$fa3, $a5, -16
	fadd.d	$fa4, $fa1, $fa1
	vld	$vr5, $a1, 0
	vld	$vr6, $a1, 16
	fneg.d	$fa7, $fa4
	fmadd.d	$fa7, $fa7, $fa3, $fa2
	fmsub.d	$fa4, $fa4, $fa2, $fa3
	vfadd.d	$vr8, $vr5, $vr6
	vld	$vr9, $a1, 32
	vld	$vr10, $a1, 48
	vfsub.d	$vr5, $vr5, $vr6
	vreplvei.d	$vr6, $vr5, 0
	vreplvei.d	$vr5, $vr5, 1
	vfadd.d	$vr11, $vr9, $vr10
	vfsub.d	$vr9, $vr9, $vr10
	vreplvei.d	$vr10, $vr9, 0
	vreplvei.d	$vr9, $vr9, 1
	vfadd.d	$vr12, $vr8, $vr11
	vst	$vr12, $a1, 0
	vfsub.d	$vr8, $vr8, $vr11
	vreplvei.d	$vr11, $vr8, 0
	vreplvei.d	$vr8, $vr8, 1
	fneg.d	$ft4, $ft0
	fmul.d	$ft4, $fa1, $ft4
	fmadd.d	$ft4, $fa0, $ft3, $ft4
	fst.d	$ft4, $a1, 32
	fmul.d	$ft3, $fa1, $ft3
	fmadd.d	$ft0, $fa0, $ft0, $ft3
	fst.d	$ft0, $a1, 40
	fsub.d	$ft0, $fa6, $ft1
	fadd.d	$ft3, $fa5, $ft2
	fneg.d	$ft4, $ft3
	fmul.d	$ft4, $fa3, $ft4
	fmadd.d	$ft4, $fa2, $ft0, $ft4
	fst.d	$ft4, $a1, 16
	fmul.d	$fa3, $fa3, $ft0
	fmadd.d	$fa2, $fa2, $ft3, $fa3
	fst.d	$fa2, $a1, 24
	fadd.d	$fa2, $fa6, $ft1
	fsub.d	$fa3, $fa5, $ft2
	fneg.d	$fa5, $fa3
	fmul.d	$fa5, $fa4, $fa5
	fmadd.d	$fa5, $fa7, $fa2, $fa5
	fst.d	$fa5, $a1, 48
	fmul.d	$fa2, $fa4, $fa2
	fmadd.d	$fa2, $fa7, $fa3, $fa2
	fst.d	$fa2, $a1, 56
	fld.d	$fa2, $a5, -8
	fld.d	$fa3, $a5, 0
	fadd.d	$fa4, $fa0, $fa0
	vld	$vr5, $a1, 64
	vld	$vr6, $a1, 80
	fneg.d	$fa7, $fa4
	fmadd.d	$fa7, $fa7, $fa3, $fa2
	fmsub.d	$fa4, $fa4, $fa2, $fa3
	vfadd.d	$vr8, $vr5, $vr6
	vld	$vr9, $a1, 96
	vld	$vr10, $a1, 112
	vfsub.d	$vr5, $vr5, $vr6
	vreplvei.d	$vr6, $vr5, 0
	vreplvei.d	$vr5, $vr5, 1
	vfadd.d	$vr11, $vr9, $vr10
	vfsub.d	$vr9, $vr9, $vr10
	vreplvei.d	$vr10, $vr9, 0
	vreplvei.d	$vr9, $vr9, 1
	vfadd.d	$vr12, $vr8, $vr11
	vst	$vr12, $a1, 64
	vfsub.d	$vr8, $vr8, $vr11
	vreplvei.d	$vr11, $vr8, 0
	vreplvei.d	$vr8, $vr8, 1
	fneg.d	$fa1, $fa1
	fneg.d	$ft4, $ft0
	fmul.d	$ft4, $fa0, $ft4
	fmadd.d	$ft4, $fa1, $ft3, $ft4
	fst.d	$ft4, $a1, 96
	fmul.d	$fa0, $fa0, $ft3
	fmadd.d	$fa0, $fa1, $ft0, $fa0
	fst.d	$fa0, $a1, 104
	fsub.d	$fa0, $fa6, $ft1
	fadd.d	$fa1, $fa5, $ft2
	fneg.d	$ft0, $fa1
	fmul.d	$ft0, $fa3, $ft0
	fmadd.d	$ft0, $fa2, $fa0, $ft0
	fst.d	$ft0, $a1, 80
	fmul.d	$fa0, $fa3, $fa0
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fst.d	$fa0, $a1, 88
	fadd.d	$fa0, $fa6, $ft1
	fsub.d	$fa1, $fa5, $ft2
	fneg.d	$fa2, $fa1
	fmul.d	$fa2, $fa4, $fa2
	fmadd.d	$fa2, $fa7, $fa0, $fa2
	fst.d	$fa2, $a1, 112
	fmul.d	$fa0, $fa4, $fa0
	fmadd.d	$fa0, $fa7, $fa1, $fa0
	fst.d	$fa0, $a1, 120
	addi.d	$a3, $a3, 16
	addi.d	$a1, $a1, 128
	addi.d	$a5, $a5, 32
	addi.d	$a2, $a2, 16
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
	srli.d	$a3, $a5, 4
	addi.d	$a5, $a3, 1
	bstrpick.d	$a3, $a5, 60, 1
	slli.d	$a6, $a3, 1
	slli.d	$a4, $a3, 2
	slli.d	$a3, $a5, 4
	pcalau12i	$a7, %pc_hi20(.LCPI8_0)
	vld	$vr0, $a7, %pc_lo12(.LCPI8_0)
	ori	$a3, $a3, 16
	addi.d	$a7, $a2, 40
	addi.d	$t0, $a1, 192
	move	$t1, $a6
	.p2align	4, , 16
.LBB8_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr3, $vr0, 2
	vpickve2gr.d	$t2, $vr3, 0
	vpickve2gr.d	$t3, $vr3, 1
	slli.d	$t2, $t2, 3
	slli.d	$t3, $t3, 3
	fldx.d	$fa1, $a2, $t2
	fldx.d	$fa5, $a2, $t3
	fld.d	$fa2, $a7, -16
	fld.d	$fa6, $a7, 0
	vslli.d	$vr3, $vr3, 4
	vpickve2gr.d	$t4, $vr3, 0
	vpickve2gr.d	$t5, $vr3, 1
	add.d	$t2, $a2, $t4
	add.d	$t3, $a2, $t5
	fldx.d	$fa3, $a2, $t4
	fldx.d	$fa7, $a2, $t5
	fld.d	$fa4, $t2, 8
	fld.d	$ft0, $t3, 8
	vextrins.d	$vr1, $vr5, 16
	vextrins.d	$vr2, $vr6, 16
	vextrins.d	$vr3, $vr7, 16
	vextrins.d	$vr4, $vr8, 16
	vfadd.d	$vr6, $vr2, $vr2
	fld.d	$fa7, $t0, -64
	fld.d	$ft0, $t0, 64
	vbitrevi.d	$vr5, $vr6, 63
	vfmadd.d	$vr5, $vr5, $vr4, $vr3
	vfmsub.d	$vr6, $vr6, $vr3, $vr4
	vextrins.d	$vr7, $vr8, 16
	fld.d	$ft0, $t0, -48
	fld.d	$ft1, $t0, 80
	fld.d	$ft2, $t0, -56
	fld.d	$ft3, $t0, 72
	fld.d	$ft4, $t0, -40
	fld.d	$ft5, $t0, 88
	vextrins.d	$vr8, $vr9, 16
	vfadd.d	$vr9, $vr7, $vr8
	vextrins.d	$vr10, $vr11, 16
	vextrins.d	$vr12, $vr13, 16
	fld.d	$ft3, $t0, -32
	fld.d	$ft5, $t0, 96
	vfadd.d	$vr14, $vr10, $vr12
	vfsub.d	$vr7, $vr7, $vr8
	vfsub.d	$vr8, $vr10, $vr12
	vextrins.d	$vr11, $vr13, 16
	fld.d	$ft2, $t0, -16
	fld.d	$ft4, $t0, 112
	fld.d	$ft5, $t0, -24
	fld.d	$ft7, $t0, 104
	fld.d	$ft8, $t0, -8
	fld.d	$ft9, $t0, 120
	vextrins.d	$vr10, $vr12, 16
	vfadd.d	$vr12, $vr11, $vr10
	vextrins.d	$vr13, $vr15, 16
	vextrins.d	$vr16, $vr17, 16
	vfadd.d	$vr15, $vr13, $vr16
	vfsub.d	$vr10, $vr11, $vr10
	vfsub.d	$vr11, $vr13, $vr16
	vfadd.d	$vr13, $vr9, $vr12
	vfadd.d	$vr16, $vr14, $vr15
	vpackev.d	$vr17, $vr16, $vr13
	vst	$vr17, $t0, -64
	vpackod.d	$vr13, $vr16, $vr13
	vst	$vr13, $t0, 64
	vfsub.d	$vr9, $vr9, $vr12
	vfsub.d	$vr12, $vr14, $vr15
	vbitrevi.d	$vr13, $vr12, 63
	vfmul.d	$vr13, $vr2, $vr13
	vfmadd.d	$vr13, $vr1, $vr9, $vr13
	vfmul.d	$vr9, $vr2, $vr9
	vfmadd.d	$vr9, $vr1, $vr12, $vr9
	vpackev.d	$vr12, $vr9, $vr13
	vst	$vr12, $t0, -32
	vpackod.d	$vr9, $vr9, $vr13
	vst	$vr9, $t0, 96
	vfsub.d	$vr9, $vr7, $vr11
	vfadd.d	$vr12, $vr8, $vr10
	vbitrevi.d	$vr13, $vr12, 63
	vfmul.d	$vr13, $vr4, $vr13
	vfmadd.d	$vr13, $vr3, $vr9, $vr13
	vfmul.d	$vr4, $vr4, $vr9
	vfmadd.d	$vr3, $vr3, $vr12, $vr4
	vpackev.d	$vr4, $vr3, $vr13
	vst	$vr4, $t0, -48
	vpackod.d	$vr3, $vr3, $vr13
	vst	$vr3, $t0, 80
	vfadd.d	$vr3, $vr7, $vr11
	vfsub.d	$vr4, $vr8, $vr10
	vbitrevi.d	$vr7, $vr4, 63
	vfmul.d	$vr7, $vr6, $vr7
	vfmadd.d	$vr7, $vr5, $vr3, $vr7
	vfmul.d	$vr3, $vr6, $vr3
	vfmadd.d	$vr5, $vr5, $vr4, $vr3
	vpackev.d	$vr3, $vr5, $vr7
	vst	$vr3, $t0, -16
	fld.d	$fa3, $t2, 16
	fld.d	$fa6, $t3, 16
	fld.d	$fa4, $t2, 24
	fld.d	$ft0, $t3, 24
	vpackod.d	$vr5, $vr5, $vr7
	vst	$vr5, $t0, 112
	vextrins.d	$vr3, $vr6, 16
	vextrins.d	$vr4, $vr8, 16
	vfadd.d	$vr6, $vr1, $vr1
	fld.d	$fa7, $t0, 0
	fld.d	$ft0, $t0, 128
	vbitrevi.d	$vr5, $vr6, 63
	vfmadd.d	$vr5, $vr5, $vr4, $vr3
	vfmsub.d	$vr6, $vr6, $vr3, $vr4
	vextrins.d	$vr7, $vr8, 16
	fld.d	$ft0, $t0, 16
	fld.d	$ft1, $t0, 144
	fld.d	$ft2, $t0, 8
	fld.d	$ft3, $t0, 136
	fld.d	$ft4, $t0, 24
	fld.d	$ft5, $t0, 152
	vextrins.d	$vr8, $vr9, 16
	vfadd.d	$vr9, $vr7, $vr8
	vextrins.d	$vr10, $vr11, 16
	vextrins.d	$vr12, $vr13, 16
	fld.d	$ft3, $t0, 32
	fld.d	$ft5, $t0, 160
	vfadd.d	$vr14, $vr10, $vr12
	vfsub.d	$vr7, $vr7, $vr8
	vfsub.d	$vr8, $vr10, $vr12
	vextrins.d	$vr11, $vr13, 16
	fld.d	$ft2, $t0, 48
	fld.d	$ft4, $t0, 176
	fld.d	$ft5, $t0, 40
	fld.d	$ft7, $t0, 168
	fld.d	$ft8, $t0, 56
	fld.d	$ft9, $t0, 184
	vextrins.d	$vr10, $vr12, 16
	vfadd.d	$vr12, $vr11, $vr10
	vextrins.d	$vr13, $vr15, 16
	vextrins.d	$vr16, $vr17, 16
	vfadd.d	$vr15, $vr13, $vr16
	vfsub.d	$vr10, $vr11, $vr10
	vfsub.d	$vr11, $vr13, $vr16
	vfadd.d	$vr13, $vr9, $vr12
	vfadd.d	$vr16, $vr14, $vr15
	vpackev.d	$vr17, $vr16, $vr13
	vst	$vr17, $t0, 0
	vpackod.d	$vr13, $vr16, $vr13
	vst	$vr13, $t0, 128
	vfsub.d	$vr9, $vr9, $vr12
	vfsub.d	$vr12, $vr14, $vr15
	vbitrevi.d	$vr2, $vr2, 63
	vbitrevi.d	$vr13, $vr12, 63
	vfmul.d	$vr13, $vr1, $vr13
	vfmadd.d	$vr13, $vr2, $vr9, $vr13
	vfmul.d	$vr1, $vr1, $vr9
	vfmadd.d	$vr1, $vr2, $vr12, $vr1
	vpackev.d	$vr2, $vr1, $vr13
	vst	$vr2, $t0, 32
	vpackod.d	$vr1, $vr1, $vr13
	vst	$vr1, $t0, 160
	vfsub.d	$vr1, $vr7, $vr11
	vfadd.d	$vr2, $vr8, $vr10
	vbitrevi.d	$vr9, $vr2, 63
	vfmul.d	$vr9, $vr4, $vr9
	vfmadd.d	$vr9, $vr3, $vr1, $vr9
	vfmul.d	$vr1, $vr4, $vr1
	vfmadd.d	$vr1, $vr3, $vr2, $vr1
	vpackev.d	$vr2, $vr1, $vr9
	vst	$vr2, $t0, 16
	vpackod.d	$vr1, $vr1, $vr9
	vst	$vr1, $t0, 144
	vfadd.d	$vr1, $vr7, $vr11
	vfsub.d	$vr2, $vr8, $vr10
	vbitrevi.d	$vr3, $vr2, 63
	vfmul.d	$vr3, $vr6, $vr3
	vfmadd.d	$vr3, $vr5, $vr1, $vr3
	vfmul.d	$vr1, $vr6, $vr1
	vfmadd.d	$vr1, $vr5, $vr2, $vr1
	vpackev.d	$vr2, $vr1, $vr3
	vst	$vr2, $t0, 48
	vpackod.d	$vr1, $vr1, $vr3
	vst	$vr1, $t0, 176
	vaddi.du	$vr0, $vr0, 4
	addi.d	$t1, $t1, -2
	addi.d	$a7, $a7, 32
	addi.d	$t0, $t0, 256
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
	.dword	0                               # 0x0
	.dword	2                               # 0x2
	.text
	.p2align	5
	.type	cftmdl,@function
cftmdl:                                 # @cftmdl
# %bb.0:
	addi.d	$sp, $sp, -416
	st.d	$ra, $sp, 408                   # 8-byte Folded Spill
	st.d	$fp, $sp, 400                   # 8-byte Folded Spill
	st.d	$s0, $sp, 392                   # 8-byte Folded Spill
	st.d	$s1, $sp, 384                   # 8-byte Folded Spill
	st.d	$s2, $sp, 376                   # 8-byte Folded Spill
	st.d	$s3, $sp, 368                   # 8-byte Folded Spill
	st.d	$s4, $sp, 360                   # 8-byte Folded Spill
	st.d	$s5, $sp, 352                   # 8-byte Folded Spill
	st.d	$s6, $sp, 344                   # 8-byte Folded Spill
	st.d	$s7, $sp, 336                   # 8-byte Folded Spill
	st.d	$s8, $sp, 328                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 320                  # 8-byte Folded Spill
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	move	$s6, $a1
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	slli.w	$a5, $a1, 2
	slli.d	$a6, $a1, 3
	slli.d	$t0, $a1, 4
	blez	$a1, .LBB9_3
# %bb.1:                                # %.lr.ph.preheader
	move	$a0, $zero
	alsl.d	$a1, $s6, $t0, 3
	move	$a3, $a2
	.p2align	4, , 16
.LBB9_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, 0
	vldx	$vr1, $a3, $a6
	add.d	$a4, $a3, $a6
	add.d	$a7, $a3, $a1
	vfadd.d	$vr2, $vr0, $vr1
	vldx	$vr3, $a3, $t0
	vldx	$vr4, $a3, $a1
	vfsub.d	$vr0, $vr0, $vr1
	vreplvei.d	$vr1, $vr0, 0
	vreplvei.d	$vr0, $vr0, 1
	vfadd.d	$vr5, $vr3, $vr4
	vfsub.d	$vr3, $vr3, $vr4
	vreplvei.d	$vr4, $vr3, 0
	vreplvei.d	$vr3, $vr3, 1
	vfadd.d	$vr6, $vr2, $vr5
	vst	$vr6, $a3, 0
	vfsub.d	$vr2, $vr2, $vr5
	vstx	$vr2, $a3, $t0
	fsub.d	$fa2, $fa1, $fa3
	fstx.d	$fa2, $a3, $a6
	fadd.d	$fa2, $fa0, $fa4
	fst.d	$fa2, $a4, 8
	fadd.d	$fa1, $fa1, $fa3
	fstx.d	$fa1, $a3, $a1
	fsub.d	$fa0, $fa0, $fa4
	fst.d	$fa0, $a7, 8
	addi.d	$a0, $a0, 2
	addi.d	$a3, $a3, 16
	bltu	$a0, $s6, .LBB9_2
.LBB9_3:                                # %._crit_edge
	st.d	$t0, $sp, 256                   # 8-byte Folded Spill
	alsl.w	$a7, $s6, $s6, 2
	pcalau12i	$a0, %pc_hi20(.LCPI9_0)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	bge	$a5, $a7, .LBB9_8
# %bb.4:                                # %.lr.ph400.preheader
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	fld.d	$fa0, $a0, 16
	nor	$a0, $a5, $zero
	add.d	$t3, $a0, $a7
	ori	$a0, $zero, 54
	slli.d	$t0, $s6, 4
	bgeu	$t3, $a0, .LBB9_87
.LBB9_5:
	move	$t1, $a5
.LBB9_6:                                # %.lr.ph400.preheader964
	slli.d	$a0, $t1, 3
	add.d	$a1, $t1, $s6
	slli.d	$a1, $a1, 3
	alsl.d	$a3, $t1, $t0, 3
	alsl.d	$a4, $s6, $a3, 3
	move	$t0, $a2
	.p2align	4, , 16
.LBB9_7:                                # %.lr.ph400
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr1, $t0, $a0
	vldx	$vr2, $t0, $a1
	add.d	$t2, $t0, $a1
	add.d	$t3, $t0, $a4
	vfadd.d	$vr3, $vr1, $vr2
	vldx	$vr4, $t0, $a3
	vldx	$vr5, $t0, $a4
	vfsub.d	$vr1, $vr1, $vr2
	vreplvei.d	$vr2, $vr1, 0
	vreplvei.d	$vr1, $vr1, 1
	vfadd.d	$vr6, $vr4, $vr5
	vfsub.d	$vr4, $vr4, $vr5
	vreplvei.d	$vr5, $vr4, 0
	vreplvei.d	$vr4, $vr4, 1
	vfadd.d	$vr7, $vr3, $vr6
	vstx	$vr7, $t0, $a0
	vfsub.d	$vr7, $vr6, $vr3
	vfsub.d	$vr3, $vr3, $vr6
	vshuf4i.d	$vr7, $vr3, 9
	vstx	$vr7, $t0, $a3
	fsub.d	$fa3, $fa2, $fa4
	fadd.d	$fa6, $fa1, $fa5
	fsub.d	$fa7, $fa3, $fa6
	fmul.d	$fa7, $fa0, $fa7
	fstx.d	$fa7, $t0, $a1
	fadd.d	$fa3, $fa6, $fa3
	fmul.d	$fa3, $fa0, $fa3
	fst.d	$fa3, $t2, 8
	fadd.d	$fa2, $fa2, $fa4
	fsub.d	$fa1, $fa5, $fa1
	fsub.d	$fa3, $fa1, $fa2
	fmul.d	$fa3, $fa0, $fa3
	fstx.d	$fa3, $t0, $a4
	fadd.d	$fa1, $fa1, $fa2
	fmul.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $t3, 8
	addi.d	$t1, $t1, 2
	addi.d	$t0, $t0, 16
	blt	$t1, $a7, .LBB9_7
.LBB9_8:                                # %._crit_edge401
	addi.w	$t2, $a6, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	bge	$t2, $a0, .LBB9_86
# %bb.9:                                # %.lr.ph413.preheader
	move	$a7, $zero
	st.d	$zero, $sp, 296                 # 8-byte Folded Spill
	alsl.w	$t0, $s6, $a6, 2
	alsl.d	$t1, $s6, $a2, 3
	add.d	$a0, $a5, $s6
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	addi.d	$a0, $a2, 8
	add.d	$t4, $s6, $t2
	add.d	$t5, $t4, $a5
	addi.d	$a3, $a2, 16
	alsl.d	$a1, $s6, $a2, 4
	addi.d	$a4, $a1, 8
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a1, $a1, 16
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$a5, $s6, $a1, 3
	add.d	$a6, $a2, $a5
	add.d	$a0, $a0, $a5
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	st.d	$a6, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a0, $a6, 16
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.d	$s5, $t2, 2
	nor	$a6, $t2, $zero
	slli.d	$a0, $t2, 3
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	st.d	$a5, $sp, 248                   # 8-byte Folded Spill
	alsl.d	$a0, $t2, $a5, 3
	alsl.d	$a1, $t2, $a1, 3
	alsl.d	$a5, $t2, $a2, 3
	addi.d	$t3, $a5, 8
	st.d	$t3, $sp, 88                    # 8-byte Folded Spill
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a5, $a5, 16
	st.d	$a5, $sp, 64                    # 8-byte Folded Spill
	add.d	$a1, $a2, $a1
	addi.d	$a5, $a1, 8
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a1, $a1, 16
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	alsl.d	$a1, $t4, $a2, 3
	addi.d	$a5, $a1, 8
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	add.d	$a0, $a2, $a0
	vreplgr2vr.d	$vr0, $s6
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a1, $a1, 16
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a1, $a0, 8
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a4, $sp, 184                   # 8-byte Folded Spill
	alsl.d	$a0, $t2, $a4, 3
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	alsl.d	$a0, $t2, $a3, 3
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	st.d	$t5, $sp, 192                   # 8-byte Folded Spill
	st.d	$a6, $sp, 176                   # 8-byte Folded Spill
	st.d	$a6, $sp, 304                   # 8-byte Folded Spill
	st.d	$t4, $sp, 200                   # 8-byte Folded Spill
	move	$fp, $t2
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	b	.LBB9_11
	.p2align	4, , 16
.LBB9_10:                               # %._crit_edge409
                                        #   in Loop: Header=BB9_11 Depth=1
	add.d	$fp, $fp, $t2
	add.w	$t0, $t0, $t2
	addi.d	$a7, $a7, 1
	add.d	$t4, $t4, $t2
	add.d	$s5, $s5, $t2
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $t2
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	add.d	$t5, $t5, $t2
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	bge	$fp, $a0, .LBB9_86
.LBB9_11:                               # %.lr.ph413
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_53 Depth 2
                                        #     Child Loop BB9_14 Depth 2
                                        #     Child Loop BB9_84 Depth 2
                                        #     Child Loop BB9_17 Depth 2
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	addi.d	$a0, $a1, 2
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	blez	$s6, .LBB9_10
# %bb.12:                               # %.lr.ph404.preheader
                                        #   in Loop: Header=BB9_11 Depth=1
	addi.w	$a0, $zero, -2
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	mul.d	$a5, $a7, $t2
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a5
	addi.d	$a3, $t2, 2
	add.d	$a3, $a3, $a5
	slt	$a4, $a3, $a0
	masknez	$a3, $a3, $a4
	maskeqz	$a0, $a0, $a4
	or	$a0, $a0, $a3
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	st.d	$a5, $sp, 280                   # 8-byte Folded Spill
	sub.d	$a3, $a3, $a5
	add.d	$a0, $a0, $a3
	addi.w	$a3, $zero, -16
	st.d	$a3, $sp, 224                   # 8-byte Folded Spill
	addi.d	$a5, $a1, 2
	slli.d	$a3, $a5, 3
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a4, 3
	fld.d	$fa2, $a1, 24
	slli.d	$a1, $a5, 4
	fldx.d	$fa3, $a4, $a1
	alsl.d	$a1, $a5, $a4, 4
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	fld.d	$fa4, $a1, 8
	fldx.d	$fa1, $a4, $a3
	fadd.d	$fa6, $fa2, $fa2
	fneg.d	$fa5, $fa6
	fmadd.d	$fa5, $fa5, $fa4, $fa3
	fmsub.d	$fa6, $fa6, $fa3, $fa4
	move	$a6, $fp
	ori	$a1, $zero, 30
	bgeu	$a0, $a1, .LBB9_18
.LBB9_13:                               # %.lr.ph404.preheader963
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	add.d	$a0, $fp, $a3
	slli.d	$a1, $a6, 3
	add.d	$a3, $a3, $a6
	slli.d	$a3, $a3, 3
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a4, $a6, $a4, 3
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$t3, $a6, $a5, 3
	move	$t6, $a2
	.p2align	4, , 16
.LBB9_14:                               # %.lr.ph404
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vldx	$vr7, $t6, $a1
	vldx	$vr8, $t6, $a3
	add.d	$a5, $t6, $a3
	add.d	$t7, $t6, $t3
	add.d	$t8, $t6, $a4
	vfadd.d	$vr9, $vr7, $vr8
	vldx	$vr10, $t6, $t3
	vldx	$vr11, $t6, $a4
	vfsub.d	$vr7, $vr7, $vr8
	vreplvei.d	$vr8, $vr7, 0
	vreplvei.d	$vr7, $vr7, 1
	vfadd.d	$vr12, $vr10, $vr11
	vfsub.d	$vr10, $vr10, $vr11
	vreplvei.d	$vr11, $vr10, 0
	vreplvei.d	$vr10, $vr10, 1
	vfadd.d	$vr13, $vr9, $vr12
	vstx	$vr13, $t6, $a1
	vfsub.d	$vr9, $vr9, $vr12
	vreplvei.d	$vr12, $vr9, 0
	vreplvei.d	$vr9, $vr9, 1
	fneg.d	$ft5, $ft1
	fmul.d	$ft5, $fa2, $ft5
	fmadd.d	$ft5, $fa1, $ft4, $ft5
	fstx.d	$ft5, $t6, $t3
	fmul.d	$ft4, $fa2, $ft4
	fmadd.d	$ft1, $fa1, $ft1, $ft4
	fst.d	$ft1, $t7, 8
	fsub.d	$ft1, $ft0, $ft2
	fadd.d	$ft4, $fa7, $ft3
	fneg.d	$ft5, $ft4
	fmul.d	$ft5, $fa4, $ft5
	fmadd.d	$ft5, $fa3, $ft1, $ft5
	fstx.d	$ft5, $t6, $a3
	fmul.d	$ft1, $fa4, $ft1
	fmadd.d	$ft1, $fa3, $ft4, $ft1
	fst.d	$ft1, $a5, 8
	fadd.d	$ft0, $ft0, $ft2
	fsub.d	$fa7, $fa7, $ft3
	fneg.d	$ft1, $fa7
	fmul.d	$ft1, $fa6, $ft1
	fmadd.d	$ft1, $fa5, $ft0, $ft1
	fstx.d	$ft1, $t6, $a4
	fmul.d	$ft0, $fa6, $ft0
	fmadd.d	$fa7, $fa5, $fa7, $ft0
	fst.d	$fa7, $t8, 8
	addi.d	$a6, $a6, 2
	addi.d	$t6, $t6, 16
	blt	$a6, $a0, .LBB9_14
.LBB9_15:                               # %._crit_edge405
                                        #   in Loop: Header=BB9_11 Depth=1
	addi.d	$a4, $t0, 2
	nor	$a3, $t0, $zero
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	slt	$a1, $a4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a4, $a1
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	fld.d	$fa3, $a1, 16
	fld.d	$fa4, $a1, 24
	st.d	$a3, $sp, 280                   # 8-byte Folded Spill
	add.d	$t6, $a0, $a3
	fadd.d	$fa6, $fa1, $fa1
	fneg.d	$fa5, $fa6
	fmadd.d	$fa5, $fa5, $fa4, $fa3
	fmsub.d	$fa6, $fa6, $fa3, $fa4
	fneg.d	$fa2, $fa2
	move	$a6, $t0
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ori	$a0, $zero, 14
	bgeu	$t6, $a0, .LBB9_55
.LBB9_16:                               # %scalar.ph706.preheader
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	add.d	$a0, $fp, $a0
	slli.d	$a1, $a6, 3
	add.d	$a3, $s6, $a6
	slli.d	$a3, $a3, 3
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a4, $a6, $a4, 3
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$t3, $a6, $a5, 3
	move	$t6, $a2
	.p2align	4, , 16
.LBB9_17:                               # %scalar.ph706
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vldx	$vr7, $t6, $a1
	vldx	$vr8, $t6, $a3
	add.d	$a5, $t6, $a3
	add.d	$t7, $t6, $t3
	add.d	$t8, $t6, $a4
	vfadd.d	$vr9, $vr7, $vr8
	vldx	$vr10, $t6, $t3
	vldx	$vr11, $t6, $a4
	vfsub.d	$vr7, $vr7, $vr8
	vreplvei.d	$vr8, $vr7, 0
	vreplvei.d	$vr7, $vr7, 1
	vfadd.d	$vr12, $vr10, $vr11
	vfsub.d	$vr10, $vr10, $vr11
	vreplvei.d	$vr11, $vr10, 0
	vreplvei.d	$vr10, $vr10, 1
	vfadd.d	$vr13, $vr9, $vr12
	vstx	$vr13, $t6, $a1
	vfsub.d	$vr9, $vr9, $vr12
	vreplvei.d	$vr12, $vr9, 0
	vreplvei.d	$vr9, $vr9, 1
	fneg.d	$ft5, $ft1
	fmul.d	$ft5, $fa1, $ft5
	fmadd.d	$ft5, $fa2, $ft4, $ft5
	fstx.d	$ft5, $t6, $t3
	fmul.d	$ft4, $fa1, $ft4
	fmadd.d	$ft1, $fa2, $ft1, $ft4
	fst.d	$ft1, $t7, 8
	fsub.d	$ft1, $ft0, $ft2
	fadd.d	$ft4, $fa7, $ft3
	fneg.d	$ft5, $ft4
	fmul.d	$ft5, $fa4, $ft5
	fmadd.d	$ft5, $fa3, $ft1, $ft5
	fstx.d	$ft5, $t6, $a3
	fmul.d	$ft1, $fa4, $ft1
	fmadd.d	$ft1, $fa3, $ft4, $ft1
	fst.d	$ft1, $a5, 8
	fadd.d	$ft0, $ft0, $ft2
	fsub.d	$fa7, $fa7, $ft3
	fneg.d	$ft1, $fa7
	fmul.d	$ft1, $fa6, $ft1
	fmadd.d	$ft1, $fa5, $ft0, $ft1
	fstx.d	$ft1, $t6, $a4
	fmul.d	$ft0, $fa6, $ft0
	fmadd.d	$fa7, $fa5, $fa7, $ft0
	fst.d	$fa7, $t8, 8
	addi.d	$a6, $a6, 2
	addi.d	$t6, $t6, 16
	blt	$a6, $a0, .LBB9_17
	b	.LBB9_10
	.p2align	4, , 16
.LBB9_18:                               # %vector.scevcheck
                                        #   in Loop: Header=BB9_11 Depth=1
	srli.d	$a3, $a0, 1
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	mul.d	$s2, $a1, $a7
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	add.d	$s3, $a1, $s2
	st.d	$a3, $sp, 240                   # 8-byte Folded Spill
	alsl.d	$a1, $a3, $s3, 4
	move	$a6, $fp
	bltu	$a1, $s3, .LBB9_13
# %bb.19:                               # %vector.scevcheck
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$s0, $a1, $s2
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $s0, 4
	move	$a6, $fp
	bltu	$a1, $s0, .LBB9_13
# %bb.20:                               # %vector.scevcheck
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.d	$s4, $a1, $s2
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $s4, 4
	move	$a6, $fp
	bltu	$a1, $s4, .LBB9_13
# %bb.21:                               # %vector.scevcheck
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	add.d	$a1, $a1, $s2
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$a3, $a3, $a1, 4
	move	$a6, $fp
	bltu	$a3, $a1, .LBB9_13
# %bb.22:                               # %vector.scevcheck
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	add.d	$a3, $a3, $s2
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$a4, $a4, $a3, 4
	move	$a6, $fp
	bltu	$a4, $a3, .LBB9_13
# %bb.23:                               # %vector.scevcheck
                                        #   in Loop: Header=BB9_11 Depth=1
	srli.d	$a3, $a0, 61
	move	$a6, $fp
	bnez	$a3, .LBB9_13
# %bb.24:                               # %vector.memcheck755
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	add.d	$t3, $a3, $s2
	slli.d	$a0, $a0, 3
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	and	$t8, $a0, $a3
	add.d	$a5, $a1, $t8
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $a0, $s2
	add.d	$t6, $a0, $t8
	sltu	$a0, $t3, $t6
	sltu	$a3, $a1, $a5
	and	$a0, $a0, $a3
	move	$a6, $fp
	bnez	$a0, .LBB9_13
# %bb.25:                               # %vector.memcheck755
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	add.d	$a4, $a0, $s2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	add.d	$s7, $a0, $s2
	add.d	$t7, $s7, $t8
	sltu	$a0, $t3, $t7
	sltu	$a3, $a4, $a5
	and	$a0, $a0, $a3
	move	$a6, $fp
	bnez	$a0, .LBB9_13
# %bb.26:                               # %vector.memcheck755
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $a0, $s2
	add.d	$a3, $a0, $t8
	sltu	$a0, $t3, $a3
	sltu	$a6, $s7, $a5
	and	$a0, $a0, $a6
	move	$a6, $fp
	bnez	$a0, .LBB9_13
# %bb.27:                               # %vector.memcheck755
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	add.d	$s8, $a0, $s2
	add.d	$s1, $s4, $t8
	sltu	$a0, $t3, $s1
	sltu	$a6, $s8, $a5
	and	$a0, $a0, $a6
	move	$a6, $fp
	bnez	$a0, .LBB9_13
# %bb.28:                               # %vector.memcheck755
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	add.d	$a0, $a0, $s2
	add.d	$ra, $a0, $t8
	sltu	$a0, $t3, $ra
	sltu	$a6, $s4, $a5
	and	$a0, $a0, $a6
	move	$a6, $fp
	bnez	$a0, .LBB9_13
# %bb.29:                               # %vector.memcheck755
                                        #   in Loop: Header=BB9_11 Depth=1
	add.d	$a0, $s3, $t8
	sltu	$a6, $t3, $a0
	sltu	$s6, $s0, $a5
	and	$s6, $a6, $s6
	move	$a6, $fp
	bnez	$s6, .LBB9_13
# %bb.30:                               # %vector.memcheck755
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	add.d	$a6, $a6, $s2
	add.d	$s2, $a6, $t8
	sltu	$a6, $t3, $s2
	sltu	$a5, $s3, $a5
	and	$a5, $a6, $a5
	move	$a6, $fp
	bnez	$a5, .LBB9_13
# %bb.31:                               # %vector.memcheck755
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a5, $a1, $t7
	sltu	$a6, $a4, $t6
	and	$a5, $a5, $a6
	move	$a6, $fp
	bnez	$a5, .LBB9_13
# %bb.32:                               # %vector.memcheck755
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a5, $a1, $a3
	sltu	$a6, $s7, $t6
	and	$a5, $a5, $a6
	move	$a6, $fp
	bnez	$a5, .LBB9_13
# %bb.33:                               # %vector.memcheck755
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a5, $a1, $s1
	sltu	$a6, $s8, $t6
	and	$a5, $a5, $a6
	move	$a6, $fp
	bnez	$a5, .LBB9_13
# %bb.34:                               # %vector.memcheck755
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a5, $a1, $ra
	sltu	$a6, $s4, $t6
	and	$a5, $a5, $a6
	move	$a6, $fp
	bnez	$a5, .LBB9_13
# %bb.35:                               # %vector.memcheck755
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a5, $a1, $a0
	sltu	$a6, $s0, $t6
	and	$a5, $a5, $a6
	move	$a6, $fp
	bnez	$a5, .LBB9_13
# %bb.36:                               # %vector.memcheck755
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $a1, $s2
	sltu	$a5, $s3, $t6
	and	$a1, $a1, $a5
	move	$a6, $fp
	bnez	$a1, .LBB9_13
# %bb.37:                               # %vector.memcheck755
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $a4, $a3
	sltu	$a5, $s7, $t7
	and	$a1, $a1, $a5
	move	$a6, $fp
	bnez	$a1, .LBB9_13
# %bb.38:                               # %vector.memcheck755
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $a4, $s1
	sltu	$a5, $s8, $t7
	and	$a1, $a1, $a5
	move	$a6, $fp
	bnez	$a1, .LBB9_13
# %bb.39:                               # %vector.memcheck755
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $a4, $ra
	sltu	$a5, $s4, $t7
	and	$a1, $a1, $a5
	move	$a6, $fp
	bnez	$a1, .LBB9_13
# %bb.40:                               # %vector.memcheck755
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $a4, $a0
	sltu	$a5, $s0, $t7
	and	$a1, $a1, $a5
	move	$a6, $fp
	bnez	$a1, .LBB9_13
# %bb.41:                               # %vector.memcheck755
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $a4, $s2
	sltu	$a4, $s3, $t7
	and	$a1, $a1, $a4
	move	$a6, $fp
	bnez	$a1, .LBB9_13
# %bb.42:                               # %vector.memcheck755
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $s7, $s1
	sltu	$a4, $s8, $a3
	and	$a1, $a1, $a4
	move	$a6, $fp
	bnez	$a1, .LBB9_13
# %bb.43:                               # %vector.memcheck755
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $s7, $ra
	sltu	$a4, $s4, $a3
	and	$a1, $a1, $a4
	move	$a6, $fp
	bnez	$a1, .LBB9_13
# %bb.44:                               # %vector.memcheck755
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $s7, $a0
	sltu	$a4, $s0, $a3
	and	$a1, $a1, $a4
	move	$a6, $fp
	bnez	$a1, .LBB9_13
# %bb.45:                               # %vector.memcheck755
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $s7, $s2
	sltu	$a3, $s3, $a3
	and	$a1, $a1, $a3
	move	$a6, $fp
	bnez	$a1, .LBB9_13
# %bb.46:                               # %vector.memcheck755
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $s8, $ra
	sltu	$a3, $s4, $s1
	and	$a1, $a1, $a3
	move	$a6, $fp
	bnez	$a1, .LBB9_13
# %bb.47:                               # %vector.memcheck755
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $s8, $a0
	sltu	$a3, $s0, $s1
	and	$a1, $a1, $a3
	move	$a6, $fp
	bnez	$a1, .LBB9_13
# %bb.48:                               # %vector.memcheck755
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $s8, $s2
	sltu	$a3, $s3, $s1
	and	$a1, $a1, $a3
	move	$a6, $fp
	bnez	$a1, .LBB9_13
# %bb.49:                               # %vector.memcheck755
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $s4, $a0
	sltu	$a3, $s0, $ra
	and	$a1, $a1, $a3
	move	$a6, $fp
	bnez	$a1, .LBB9_13
# %bb.50:                               # %vector.memcheck755
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $s4, $s2
	sltu	$a3, $s3, $ra
	and	$a1, $a1, $a3
	move	$a6, $fp
	bnez	$a1, .LBB9_13
# %bb.51:                               # %vector.memcheck755
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $s0, $s2
	sltu	$a0, $s3, $a0
	and	$a0, $a1, $a0
	move	$a6, $fp
	bnez	$a0, .LBB9_13
# %bb.52:                               # %vector.ph891
                                        #   in Loop: Header=BB9_11 Depth=1
	slt	$a0, $s5, $t4
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $t4, $a0
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 1
	addi.d	$a0, $a0, 1
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	addi.d	$t3, $a1, 1
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	and	$s3, $a0, $a1
	move	$s0, $t3
	bstrins.d	$s0, $zero, 0, 0
	alsl.d	$a6, $s0, $fp, 1
	vreplvei.d	$vr7, $vr2, 0
	vreplvei.d	$vr8, $vr1, 0
	vreplvei.d	$vr9, $vr4, 0
	vreplvei.d	$vr10, $vr3, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	vld	$vr13, $a0, %pc_lo12(.LCPI9_0)
	vreplvei.d	$vr11, $vr6, 0
	vreplvei.d	$vr12, $vr5, 0
	vreplgr2vr.d	$vr14, $fp
	vor.v	$vr13, $vr14, $vr13
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB9_53:                               # %vector.body911
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vadd.d	$vr14, $vr13, $vr0
	vpickve2gr.d	$a3, $vr14, 0
	vpickve2gr.d	$a4, $vr14, 1
	fld.d	$ft7, $a0, -16
	fld.d	$ft8, $a0, 0
	vadd.d	$vr14, $vr14, $vr0
	vpickve2gr.d	$a5, $vr14, 0
	vpickve2gr.d	$t6, $vr14, 1
	vextrins.d	$vr15, $vr16, 16
	alsl.d	$a1, $a3, $a2, 3
	slli.d	$t7, $a3, 3
	alsl.d	$a3, $a4, $a2, 3
	slli.d	$a4, $a4, 3
	fldx.d	$ft6, $a2, $t7
	fldx.d	$ft8, $a2, $a4
	fld.d	$ft9, $a0, -8
	fld.d	$ft10, $a0, 8
	fld.d	$ft11, $a1, 8
	fld.d	$ft12, $a3, 8
	vextrins.d	$vr14, $vr16, 16
	vfadd.d	$vr16, $vr15, $vr14
	vextrins.d	$vr17, $vr18, 16
	vextrins.d	$vr19, $vr20, 16
	vfadd.d	$vr18, $vr17, $vr19
	vfsub.d	$vr14, $vr15, $vr14
	slli.d	$t7, $a5, 3
	slli.d	$t8, $t6, 3
	fldx.d	$ft7, $a2, $t7
	fldx.d	$ft12, $a2, $t8
	vfsub.d	$vr17, $vr17, $vr19
	alsl.d	$s1, $a5, $a2, 3
	alsl.d	$s2, $t6, $a2, 3
	vextrins.d	$vr15, $vr20, 16
	alsl.d	$a4, $a5, $t1, 3
	alsl.d	$t6, $t6, $t1, 3
	fldx.d	$ft11, $t1, $t7
	fldx.d	$ft12, $t1, $t8
	fld.d	$ft13, $s1, 8
	fld.d	$ft14, $s2, 8
	fld.d	$ft15, $a4, 8
	fld.d	$fs0, $t6, 8
	vextrins.d	$vr19, $vr20, 16
	vfadd.d	$vr20, $vr15, $vr19
	vextrins.d	$vr21, $vr22, 16
	vextrins.d	$vr23, $vr24, 16
	vfadd.d	$vr22, $vr21, $vr23
	vfsub.d	$vr15, $vr15, $vr19
	vfsub.d	$vr19, $vr21, $vr23
	vfadd.d	$vr21, $vr16, $vr20
	vfadd.d	$vr23, $vr18, $vr22
	vpackev.d	$vr24, $vr23, $vr21
	vst	$vr24, $a0, -16
	vpackod.d	$vr21, $vr23, $vr21
	vst	$vr21, $a0, 0
	vfsub.d	$vr16, $vr16, $vr20
	vfsub.d	$vr18, $vr18, $vr22
	vbitrevi.d	$vr20, $vr18, 63
	vfmul.d	$vr20, $vr7, $vr20
	vfmadd.d	$vr20, $vr8, $vr16, $vr20
	vstelm.d	$vr20, $s1, 0, 0
	vstelm.d	$vr20, $s2, 0, 1
	vfmul.d	$vr16, $vr7, $vr16
	vfmadd.d	$vr16, $vr8, $vr18, $vr16
	vstelm.d	$vr16, $s1, 8, 0
	vstelm.d	$vr16, $s2, 8, 1
	vfsub.d	$vr16, $vr14, $vr19
	vfadd.d	$vr18, $vr17, $vr15
	vbitrevi.d	$vr20, $vr18, 63
	vfmul.d	$vr20, $vr9, $vr20
	vfmadd.d	$vr20, $vr10, $vr16, $vr20
	vstelm.d	$vr20, $a1, 0, 0
	vstelm.d	$vr20, $a3, 0, 1
	vfmul.d	$vr16, $vr9, $vr16
	vfmadd.d	$vr16, $vr10, $vr18, $vr16
	vstelm.d	$vr16, $a1, 8, 0
	vstelm.d	$vr16, $a3, 8, 1
	vfadd.d	$vr14, $vr14, $vr19
	vfsub.d	$vr15, $vr17, $vr15
	vbitrevi.d	$vr16, $vr15, 63
	vfmul.d	$vr16, $vr11, $vr16
	vfmadd.d	$vr16, $vr12, $vr14, $vr16
	vstelm.d	$vr16, $a4, 0, 0
	vstelm.d	$vr16, $t6, 0, 1
	vfmul.d	$vr14, $vr11, $vr14
	vfmadd.d	$vr14, $vr12, $vr15, $vr14
	vstelm.d	$vr14, $a4, 8, 0
	vstelm.d	$vr14, $t6, 8, 1
	vaddi.du	$vr13, $vr13, 4
	addi.d	$s3, $s3, -2
	addi.d	$a0, $a0, 32
	bnez	$s3, .LBB9_53
# %bb.54:                               # %middle.block917
                                        #   in Loop: Header=BB9_11 Depth=1
	bne	$t3, $s0, .LBB9_13
	b	.LBB9_15
	.p2align	4, , 16
.LBB9_55:                               # %vector.memcheck563
                                        #   in Loop: Header=BB9_11 Depth=1
	alsl.d	$t3, $t0, $a2, 3
	slli.d	$a0, $t6, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	and	$a0, $a0, $a1
	alsl.d	$a3, $t0, $a0, 3
	addi.d	$a1, $a2, 8
	add.d	$a5, $a1, $a3
	alsl.d	$a1, $t0, $a1, 3
	addi.d	$a4, $a2, 16
	add.d	$s3, $a4, $a3
	sltu	$a4, $t3, $s3
	sltu	$a6, $a1, $a5
	and	$a4, $a4, $a6
	move	$a6, $t0
	bnez	$a4, .LBB9_16
# %bb.56:                               # %vector.memcheck563
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a4, $t0, $a4, 3
	ld.d	$a6, $sp, 184                   # 8-byte Folded Reload
	add.d	$t7, $a6, $a3
	sltu	$a6, $t3, $t7
	sltu	$t8, $a4, $a5
	and	$t8, $a6, $t8
	move	$a6, $t0
	bnez	$t8, .LBB9_16
# %bb.57:                               # %vector.memcheck563
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a6, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$s7, $t0, $a6, 3
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	add.d	$s8, $a6, $a3
	sltu	$a6, $t3, $s8
	sltu	$t8, $s7, $a5
	and	$t8, $a6, $t8
	move	$a6, $t0
	bnez	$t8, .LBB9_16
# %bb.58:                               # %vector.memcheck563
                                        #   in Loop: Header=BB9_11 Depth=1
	add.d	$t8, $s6, $t0
	alsl.d	$s4, $t8, $a2, 3
	alsl.d	$a0, $t8, $a0, 3
	addi.d	$a6, $a2, 8
	add.d	$ra, $a6, $a0
	sltu	$a6, $t3, $ra
	sltu	$s0, $s4, $a5
	and	$s0, $a6, $s0
	move	$a6, $t0
	bnez	$s0, .LBB9_16
# %bb.59:                               # %vector.memcheck563
                                        #   in Loop: Header=BB9_11 Depth=1
	addi.d	$a6, $a2, 8
	alsl.d	$t8, $t8, $a6, 3
	addi.d	$a6, $a2, 16
	add.d	$s0, $a6, $a0
	sltu	$a0, $t3, $s0
	sltu	$a6, $t8, $a5
	and	$a0, $a0, $a6
	move	$a6, $t0
	bnez	$a0, .LBB9_16
# %bb.60:                               # %vector.memcheck563
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a0, $t0, $a0, 3
	ld.d	$a6, $sp, 168                   # 8-byte Folded Reload
	add.d	$s2, $a6, $a3
	sltu	$a6, $t3, $s2
	sltu	$s1, $a0, $a5
	and	$s1, $a6, $s1
	move	$a6, $t0
	bnez	$s1, .LBB9_16
# %bb.61:                               # %vector.memcheck563
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a6, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$s1, $t0, $a6, 3
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	add.d	$a3, $a6, $a3
	sltu	$a6, $t3, $a3
	sltu	$a5, $s1, $a5
	and	$a5, $a6, $a5
	move	$a6, $t0
	bnez	$a5, .LBB9_16
# %bb.62:                               # %vector.memcheck563
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a5, $a1, $t7
	sltu	$a6, $a4, $s3
	and	$a5, $a5, $a6
	move	$a6, $t0
	bnez	$a5, .LBB9_16
# %bb.63:                               # %vector.memcheck563
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a5, $a1, $s8
	sltu	$a6, $s7, $s3
	and	$a5, $a5, $a6
	move	$a6, $t0
	bnez	$a5, .LBB9_16
# %bb.64:                               # %vector.memcheck563
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a5, $a1, $ra
	sltu	$a6, $s4, $s3
	and	$a5, $a5, $a6
	move	$a6, $t0
	bnez	$a5, .LBB9_16
# %bb.65:                               # %vector.memcheck563
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a5, $a1, $s0
	sltu	$a6, $t8, $s3
	and	$a5, $a5, $a6
	move	$a6, $t0
	bnez	$a5, .LBB9_16
# %bb.66:                               # %vector.memcheck563
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a5, $a1, $s2
	sltu	$a6, $a0, $s3
	and	$a5, $a5, $a6
	move	$a6, $t0
	bnez	$a5, .LBB9_16
# %bb.67:                               # %vector.memcheck563
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $a1, $a3
	sltu	$a5, $s1, $s3
	and	$a1, $a1, $a5
	move	$a6, $t0
	bnez	$a1, .LBB9_16
# %bb.68:                               # %vector.memcheck563
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $a4, $s8
	sltu	$a5, $s7, $t7
	and	$a1, $a1, $a5
	move	$a6, $t0
	bnez	$a1, .LBB9_16
# %bb.69:                               # %vector.memcheck563
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $a4, $ra
	sltu	$a5, $s4, $t7
	and	$a1, $a1, $a5
	move	$a6, $t0
	bnez	$a1, .LBB9_16
# %bb.70:                               # %vector.memcheck563
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $a4, $s0
	sltu	$a5, $t8, $t7
	and	$a1, $a1, $a5
	move	$a6, $t0
	bnez	$a1, .LBB9_16
# %bb.71:                               # %vector.memcheck563
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $a4, $s2
	sltu	$a5, $a0, $t7
	and	$a1, $a1, $a5
	move	$a6, $t0
	bnez	$a1, .LBB9_16
# %bb.72:                               # %vector.memcheck563
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $a4, $a3
	sltu	$a4, $s1, $t7
	and	$a1, $a1, $a4
	move	$a6, $t0
	bnez	$a1, .LBB9_16
# %bb.73:                               # %vector.memcheck563
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $s7, $ra
	sltu	$a4, $s4, $s8
	and	$a1, $a1, $a4
	move	$a6, $t0
	bnez	$a1, .LBB9_16
# %bb.74:                               # %vector.memcheck563
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $s7, $s0
	sltu	$a4, $t8, $s8
	and	$a1, $a1, $a4
	move	$a6, $t0
	bnez	$a1, .LBB9_16
# %bb.75:                               # %vector.memcheck563
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $s7, $s2
	sltu	$a4, $a0, $s8
	and	$a1, $a1, $a4
	move	$a6, $t0
	bnez	$a1, .LBB9_16
# %bb.76:                               # %vector.memcheck563
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $s7, $a3
	sltu	$a4, $s1, $s8
	and	$a1, $a1, $a4
	move	$a6, $t0
	bnez	$a1, .LBB9_16
# %bb.77:                               # %vector.memcheck563
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $s4, $s0
	sltu	$a4, $t8, $ra
	and	$a1, $a1, $a4
	move	$a6, $t0
	bnez	$a1, .LBB9_16
# %bb.78:                               # %vector.memcheck563
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $s4, $s2
	sltu	$a4, $a0, $ra
	and	$a1, $a1, $a4
	move	$a6, $t0
	bnez	$a1, .LBB9_16
# %bb.79:                               # %vector.memcheck563
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $s4, $a3
	sltu	$a4, $s1, $ra
	and	$a1, $a1, $a4
	move	$a6, $t0
	bnez	$a1, .LBB9_16
# %bb.80:                               # %vector.memcheck563
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $t8, $s2
	sltu	$a4, $a0, $s0
	and	$a1, $a1, $a4
	move	$a6, $t0
	bnez	$a1, .LBB9_16
# %bb.81:                               # %vector.memcheck563
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a1, $t8, $a3
	sltu	$a4, $s1, $s0
	and	$a1, $a1, $a4
	move	$a6, $t0
	bnez	$a1, .LBB9_16
# %bb.82:                               # %vector.memcheck563
                                        #   in Loop: Header=BB9_11 Depth=1
	sltu	$a0, $a0, $a3
	sltu	$a1, $s1, $s2
	and	$a0, $a0, $a1
	move	$a6, $t0
	bnez	$a0, .LBB9_16
# %bb.83:                               # %vector.ph708
                                        #   in Loop: Header=BB9_11 Depth=1
	addi.d	$a0, $a2, 16
	alsl.d	$t8, $t0, $a0, 3
	addi.d	$a1, $t0, 2
	slt	$a0, $a1, $t5
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $t5, $a0
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	srli.d	$a0, $a0, 1
	addi.d	$a0, $a0, 1
	srli.d	$a1, $t6, 1
	addi.d	$t3, $a1, 1
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	and	$s0, $a0, $a1
	move	$t6, $t3
	bstrins.d	$t6, $zero, 0, 0
	alsl.d	$a6, $t6, $t0, 1
	vreplvei.d	$vr7, $vr2, 0
	vreplvei.d	$vr8, $vr1, 0
	vreplvei.d	$vr9, $vr4, 0
	vreplvei.d	$vr10, $vr3, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	vld	$vr13, $a0, %pc_lo12(.LCPI9_0)
	vreplvei.d	$vr11, $vr6, 0
	vreplvei.d	$vr12, $vr5, 0
	vreplgr2vr.d	$vr14, $t0
	vor.v	$vr13, $vr14, $vr13
	.p2align	4, , 16
.LBB9_84:                               # %vector.body728
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vadd.d	$vr14, $vr13, $vr0
	vpickve2gr.d	$a1, $vr14, 0
	vpickve2gr.d	$a3, $vr14, 1
	fld.d	$ft7, $t8, -16
	fld.d	$ft8, $t8, 0
	vadd.d	$vr14, $vr14, $vr0
	vpickve2gr.d	$a4, $vr14, 0
	vpickve2gr.d	$a5, $vr14, 1
	vextrins.d	$vr15, $vr16, 16
	alsl.d	$a0, $a1, $a2, 3
	slli.d	$t7, $a1, 3
	alsl.d	$a1, $a3, $a2, 3
	slli.d	$a3, $a3, 3
	fldx.d	$ft6, $a2, $t7
	fldx.d	$ft8, $a2, $a3
	fld.d	$ft9, $t8, -8
	fld.d	$ft10, $t8, 8
	fld.d	$ft11, $a0, 8
	fld.d	$ft12, $a1, 8
	vextrins.d	$vr14, $vr16, 16
	vfadd.d	$vr16, $vr15, $vr14
	vextrins.d	$vr17, $vr18, 16
	vextrins.d	$vr19, $vr20, 16
	vfadd.d	$vr18, $vr17, $vr19
	vfsub.d	$vr14, $vr15, $vr14
	slli.d	$t7, $a4, 3
	slli.d	$s1, $a5, 3
	fldx.d	$ft7, $a2, $t7
	fldx.d	$ft12, $a2, $s1
	vfsub.d	$vr17, $vr17, $vr19
	alsl.d	$s2, $a4, $a2, 3
	alsl.d	$s3, $a5, $a2, 3
	vextrins.d	$vr15, $vr20, 16
	alsl.d	$a3, $a4, $t1, 3
	alsl.d	$a4, $a5, $t1, 3
	fldx.d	$ft11, $t1, $t7
	fldx.d	$ft12, $t1, $s1
	fld.d	$ft13, $s2, 8
	fld.d	$ft14, $s3, 8
	fld.d	$ft15, $a3, 8
	fld.d	$fs0, $a4, 8
	vextrins.d	$vr19, $vr20, 16
	vfadd.d	$vr20, $vr15, $vr19
	vextrins.d	$vr21, $vr22, 16
	vextrins.d	$vr23, $vr24, 16
	vfadd.d	$vr22, $vr21, $vr23
	vfsub.d	$vr15, $vr15, $vr19
	vfsub.d	$vr19, $vr21, $vr23
	vfadd.d	$vr21, $vr16, $vr20
	vfadd.d	$vr23, $vr18, $vr22
	vpackev.d	$vr24, $vr23, $vr21
	vst	$vr24, $t8, -16
	vpackod.d	$vr21, $vr23, $vr21
	vst	$vr21, $t8, 0
	vfsub.d	$vr16, $vr16, $vr20
	vfsub.d	$vr18, $vr18, $vr22
	vbitrevi.d	$vr20, $vr18, 63
	vfmul.d	$vr20, $vr8, $vr20
	vfmadd.d	$vr20, $vr7, $vr16, $vr20
	vstelm.d	$vr20, $s2, 0, 0
	vstelm.d	$vr20, $s3, 0, 1
	vfmul.d	$vr16, $vr8, $vr16
	vfmadd.d	$vr16, $vr7, $vr18, $vr16
	vstelm.d	$vr16, $s2, 8, 0
	vstelm.d	$vr16, $s3, 8, 1
	vfsub.d	$vr16, $vr14, $vr19
	vfadd.d	$vr18, $vr17, $vr15
	vbitrevi.d	$vr20, $vr18, 63
	vfmul.d	$vr20, $vr9, $vr20
	vfmadd.d	$vr20, $vr10, $vr16, $vr20
	vstelm.d	$vr20, $a0, 0, 0
	vstelm.d	$vr20, $a1, 0, 1
	vfmul.d	$vr16, $vr9, $vr16
	vfmadd.d	$vr16, $vr10, $vr18, $vr16
	vstelm.d	$vr16, $a0, 8, 0
	vstelm.d	$vr16, $a1, 8, 1
	vfadd.d	$vr14, $vr14, $vr19
	vfsub.d	$vr15, $vr17, $vr15
	vbitrevi.d	$vr16, $vr15, 63
	vfmul.d	$vr16, $vr11, $vr16
	vfmadd.d	$vr16, $vr12, $vr14, $vr16
	vstelm.d	$vr16, $a3, 0, 0
	vstelm.d	$vr16, $a4, 0, 1
	vfmul.d	$vr14, $vr11, $vr14
	vfmadd.d	$vr14, $vr12, $vr15, $vr14
	vstelm.d	$vr14, $a3, 8, 0
	vstelm.d	$vr14, $a4, 8, 1
	vaddi.du	$vr13, $vr13, 4
	addi.d	$s0, $s0, -2
	addi.d	$t8, $t8, 32
	bnez	$s0, .LBB9_84
# %bb.85:                               # %middle.block734
                                        #   in Loop: Header=BB9_11 Depth=1
	beq	$t3, $t6, .LBB9_10
	b	.LBB9_16
.LBB9_86:                               # %._crit_edge414
	fld.d	$fs0, $sp, 320                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 400                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 416
	ret
.LBB9_87:                               # %vector.memcheck
	alsl.d	$t2, $a5, $a2, 3
	slli.d	$t4, $t3, 3
	bstrins.d	$t4, $zero, 3, 0
	alsl.d	$a0, $a5, $t4, 3
	add.d	$a1, $a2, $a0
	addi.d	$s3, $a1, 8
	addi.d	$s1, $t2, 8
	addi.d	$s2, $a1, 16
	sltu	$a1, $t2, $s2
	sltu	$a3, $s1, $s3
	and	$a1, $a1, $a3
	bnez	$a1, .LBB9_5
# %bb.88:                               # %vector.memcheck
	alsl.d	$t1, $a5, $t0, 3
	add.d	$fp, $a2, $t1
	alsl.d	$a0, $s6, $a0, 4
	add.d	$a0, $a2, $a0
	addi.d	$s0, $a0, 8
	sltu	$a1, $t2, $s0
	sltu	$a3, $fp, $s3
	and	$a1, $a1, $a3
	bnez	$a1, .LBB9_5
# %bb.89:                               # %vector.memcheck
	addi.d	$t5, $fp, 8
	addi.d	$t6, $a0, 16
	sltu	$a0, $t2, $t6
	sltu	$a1, $t5, $s3
	and	$a0, $a0, $a1
	bnez	$a0, .LBB9_5
# %bb.90:                               # %vector.memcheck
	add.d	$a0, $s6, $a5
	alsl.d	$a3, $a0, $a2, 3
	alsl.d	$a0, $a0, $t4, 3
	add.d	$a1, $a2, $a0
	addi.d	$a4, $a1, 8
	sltu	$a0, $t2, $a4
	sltu	$t7, $a3, $s3
	and	$a0, $a0, $t7
	bnez	$a0, .LBB9_5
# %bb.91:                               # %vector.memcheck
	addi.d	$a0, $a3, 8
	addi.d	$a1, $a1, 16
	sltu	$t7, $t2, $a1
	sltu	$t8, $a0, $s3
	and	$t7, $t7, $t8
	bnez	$t7, .LBB9_5
# %bb.92:                               # %vector.memcheck
	alsl.d	$t7, $s6, $t1, 3
	add.d	$t1, $a2, $t7
	add.d	$t4, $t7, $t4
	add.d	$t8, $a2, $t4
	addi.d	$t4, $t8, 8
	sltu	$t7, $t2, $t4
	sltu	$s4, $t1, $s3
	and	$t7, $t7, $s4
	bnez	$t7, .LBB9_5
# %bb.93:                               # %vector.memcheck
	addi.d	$t7, $t1, 8
	addi.d	$t8, $t8, 16
	sltu	$s4, $t2, $t8
	sltu	$s3, $t7, $s3
	and	$s3, $s4, $s3
	bnez	$s3, .LBB9_5
# %bb.94:                               # %vector.memcheck
	sltu	$s3, $s1, $s0
	sltu	$s4, $fp, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB9_5
# %bb.95:                               # %vector.memcheck
	sltu	$s3, $s1, $t6
	sltu	$s4, $t5, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB9_5
# %bb.96:                               # %vector.memcheck
	sltu	$s3, $s1, $a4
	sltu	$s4, $a3, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB9_5
# %bb.97:                               # %vector.memcheck
	sltu	$s3, $s1, $a1
	sltu	$s4, $a0, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB9_5
# %bb.98:                               # %vector.memcheck
	sltu	$s3, $s1, $t4
	sltu	$s4, $t1, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB9_5
# %bb.99:                               # %vector.memcheck
	sltu	$s1, $s1, $t8
	sltu	$s2, $t7, $s2
	and	$s1, $s1, $s2
	bnez	$s1, .LBB9_5
# %bb.100:                              # %vector.memcheck
	sltu	$s1, $fp, $t6
	sltu	$s2, $t5, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB9_5
# %bb.101:                              # %vector.memcheck
	sltu	$s1, $fp, $a4
	sltu	$s2, $a3, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB9_5
# %bb.102:                              # %vector.memcheck
	sltu	$s1, $fp, $a1
	sltu	$s2, $a0, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB9_5
# %bb.103:                              # %vector.memcheck
	sltu	$s1, $fp, $t4
	sltu	$s2, $t1, $s0
	and	$s1, $s1, $s2
	bnez	$s1, .LBB9_5
# %bb.104:                              # %vector.memcheck
	sltu	$fp, $fp, $t8
	sltu	$s0, $t7, $s0
	and	$fp, $fp, $s0
	bnez	$fp, .LBB9_5
# %bb.105:                              # %vector.memcheck
	sltu	$fp, $t5, $a4
	sltu	$s0, $a3, $t6
	and	$fp, $fp, $s0
	bnez	$fp, .LBB9_5
# %bb.106:                              # %vector.memcheck
	sltu	$fp, $t5, $a1
	sltu	$s0, $a0, $t6
	and	$fp, $fp, $s0
	bnez	$fp, .LBB9_5
# %bb.107:                              # %vector.memcheck
	sltu	$fp, $t5, $t4
	sltu	$s0, $t1, $t6
	and	$fp, $fp, $s0
	bnez	$fp, .LBB9_5
# %bb.108:                              # %vector.memcheck
	sltu	$t5, $t5, $t8
	sltu	$t6, $t7, $t6
	and	$t5, $t5, $t6
	bnez	$t5, .LBB9_5
# %bb.109:                              # %vector.memcheck
	sltu	$t5, $a3, $a1
	sltu	$t6, $a0, $a4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB9_5
# %bb.110:                              # %vector.memcheck
	sltu	$t5, $a3, $t4
	sltu	$t6, $t1, $a4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB9_5
# %bb.111:                              # %vector.memcheck
	sltu	$a3, $a3, $t8
	sltu	$a4, $t7, $a4
	and	$a3, $a3, $a4
	bnez	$a3, .LBB9_5
# %bb.112:                              # %vector.memcheck
	sltu	$a3, $a0, $t4
	sltu	$a4, $t1, $a1
	and	$a3, $a3, $a4
	bnez	$a3, .LBB9_5
# %bb.113:                              # %vector.memcheck
	sltu	$a0, $a0, $t8
	sltu	$a1, $t7, $a1
	and	$a0, $a0, $a1
	bnez	$a0, .LBB9_5
# %bb.114:                              # %vector.memcheck
	sltu	$a0, $t1, $t8
	sltu	$a1, $t7, $t4
	and	$a0, $a0, $a1
	move	$t1, $a5
	bnez	$a0, .LBB9_6
# %bb.115:                              # %vector.ph
	srli.d	$a0, $t3, 1
	addi.d	$a0, $a0, 1
	alsl.d	$t3, $s6, $a2, 3
	move	$a3, $a0
	bstrins.d	$a3, $zero, 0, 0
	alsl.d	$t1, $a3, $a5, 1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	vld	$vr3, $a1, %pc_lo12(.LCPI9_0)
	vreplgr2vr.d	$vr1, $s6
	vreplvei.d	$vr2, $vr0, 0
	vreplgr2vr.d	$vr4, $a5
	vor.v	$vr3, $vr4, $vr3
	addi.d	$t2, $t2, 16
	move	$t4, $a3
	.p2align	4, , 16
.LBB9_116:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vadd.d	$vr4, $vr3, $vr1
	vpickve2gr.d	$a4, $vr4, 0
	vpickve2gr.d	$t5, $vr4, 1
	fld.d	$fa5, $t2, -16
	fld.d	$fa6, $t2, 0
	vadd.d	$vr4, $vr4, $vr1
	vpickve2gr.d	$t6, $vr4, 0
	vpickve2gr.d	$t7, $vr4, 1
	vextrins.d	$vr5, $vr6, 16
	alsl.d	$a1, $a4, $a2, 3
	slli.d	$t8, $a4, 3
	alsl.d	$a4, $t5, $a2, 3
	slli.d	$t5, $t5, 3
	fldx.d	$fa4, $a2, $t8
	fldx.d	$fa6, $a2, $t5
	fld.d	$fa7, $t2, -8
	fld.d	$ft0, $t2, 8
	fld.d	$ft1, $a1, 8
	fld.d	$ft2, $a4, 8
	vextrins.d	$vr4, $vr6, 16
	vfadd.d	$vr6, $vr5, $vr4
	vextrins.d	$vr7, $vr8, 16
	vextrins.d	$vr9, $vr10, 16
	vfadd.d	$vr8, $vr7, $vr9
	vfsub.d	$vr4, $vr5, $vr4
	slli.d	$t8, $t6, 3
	slli.d	$fp, $t7, 3
	fldx.d	$fa5, $a2, $t8
	fldx.d	$ft2, $a2, $fp
	vfsub.d	$vr7, $vr7, $vr9
	alsl.d	$s0, $t6, $a2, 3
	alsl.d	$s1, $t7, $a2, 3
	vextrins.d	$vr5, $vr10, 16
	alsl.d	$t5, $t6, $t3, 3
	alsl.d	$t6, $t7, $t3, 3
	fldx.d	$ft1, $t3, $t8
	fldx.d	$ft2, $t3, $fp
	fld.d	$ft3, $s0, 8
	fld.d	$ft4, $s1, 8
	fld.d	$ft5, $t5, 8
	fld.d	$ft6, $t6, 8
	vextrins.d	$vr9, $vr10, 16
	vfadd.d	$vr10, $vr5, $vr9
	vextrins.d	$vr11, $vr12, 16
	vextrins.d	$vr13, $vr14, 16
	vfadd.d	$vr12, $vr11, $vr13
	vfsub.d	$vr5, $vr5, $vr9
	vfsub.d	$vr9, $vr11, $vr13
	vfadd.d	$vr11, $vr6, $vr10
	vfadd.d	$vr13, $vr8, $vr12
	vpackev.d	$vr14, $vr13, $vr11
	vst	$vr14, $t2, -16
	vpackod.d	$vr11, $vr13, $vr11
	vst	$vr11, $t2, 0
	vfsub.d	$vr8, $vr12, $vr8
	vstelm.d	$vr8, $s0, 0, 0
	vstelm.d	$vr8, $s1, 0, 1
	vfsub.d	$vr6, $vr6, $vr10
	vstelm.d	$vr6, $s0, 8, 0
	vstelm.d	$vr6, $s1, 8, 1
	vfsub.d	$vr6, $vr4, $vr9
	vfadd.d	$vr8, $vr7, $vr5
	vfsub.d	$vr10, $vr6, $vr8
	vfmul.d	$vr10, $vr2, $vr10
	vstelm.d	$vr10, $a1, 0, 0
	vstelm.d	$vr10, $a4, 0, 1
	vfadd.d	$vr6, $vr8, $vr6
	vfmul.d	$vr6, $vr2, $vr6
	vstelm.d	$vr6, $a1, 8, 0
	vstelm.d	$vr6, $a4, 8, 1
	vfadd.d	$vr4, $vr4, $vr9
	vfsub.d	$vr5, $vr5, $vr7
	vfsub.d	$vr6, $vr5, $vr4
	vfmul.d	$vr6, $vr2, $vr6
	vstelm.d	$vr6, $t5, 0, 0
	vstelm.d	$vr6, $t6, 0, 1
	vfadd.d	$vr4, $vr5, $vr4
	vfmul.d	$vr4, $vr2, $vr4
	vstelm.d	$vr4, $t5, 8, 0
	vstelm.d	$vr4, $t6, 8, 1
	vaddi.du	$vr3, $vr3, 4
	addi.d	$t4, $t4, -2
	addi.d	$t2, $t2, 32
	bnez	$t4, .LBB9_116
# %bb.117:                              # %middle.block
	bne	$a0, $a3, .LBB9_6
	b	.LBB9_8
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
