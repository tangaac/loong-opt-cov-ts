	.file	"quantize.c"
	.text
	.globl	iteration_loop                  # -- Begin function iteration_loop
	.p2align	5
	.type	iteration_loop,@function
iteration_loop:                         # @iteration_loop
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
	st.d	$a7, $sp, 152                   # 8-byte Folded Spill
	move	$fp, $a5
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	move	$s3, $a0
	move	$a1, $a5
	st.d	$a6, $sp, 160                   # 8-byte Folded Spill
	move	$a2, $a6
	pcaddu18i	$ra, %call36(iteration_init)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 204
	addi.d	$a2, $sp, 200
	move	$a0, $s3
	pcaddu18i	$ra, %call36(getframebits)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 200
	ld.w	$a3, $sp, 204
	move	$a0, $s3
	st.d	$fp, $sp, 184                   # 8-byte Folded Spill
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ResvFrameBegin)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 200
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_20
# %bb.1:                                # %.lr.ph97
	move	$s5, $zero
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 48
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(convert_mdct)
	ld.d	$a0, $a0, %got_pc_lo12(convert_mdct)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(reduce_sidechannel)
	ld.d	$a0, $a0, %got_pc_lo12(reduce_sidechannel)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a0, -2
	ori	$a0, $a0, 3584
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$s6, $a0, 512
	movgr2fr.d	$fs0, $zero
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1024
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %._crit_edge
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a0, $s3, 200
	addi.d	$s5, $s5, 1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a1
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.d	$a1, $a1, $s6
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	bge	$s5, $a0, .LBB0_20
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_18 Depth 3
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	alsl.d	$fp, $s5, $s5, 3
	beqz	$a0, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	slli.d	$a0, $fp, 10
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	move	$a1, $a0
	pcaddu18i	$ra, %call36(ms_convert)
	jirl	$ra, $ra, 0
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a4, $sp, 200
	addi.d	$a3, $sp, 192
	move	$a0, $s3
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	move	$a5, $s5
	pcaddu18i	$ra, %call36(on_pe)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	slli.d	$a0, $s5, 3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	fldx.d	$fa0, $a1, $a0
	ld.w	$a1, $sp, 200
	addi.d	$a0, $sp, 192
	pcaddu18i	$ra, %call36(reduce_side)
	jirl	$ra, $ra, 0
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a0, $s3, 204
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_2
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	move	$s0, $zero
	ori	$a0, $zero, 240
	mul.d	$a0, $s5, $a0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a0, $fp, 10
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$a0, $zero, 488
	mul.d	$a0, $s5, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	slli.d	$a0, $fp, 9
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ori	$a0, $zero, 1952
	mul.d	$a0, $s5, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                #   in Loop: Header=BB0_10 Depth=2
	ld.w	$a0, $s3, 204
	addi.d	$s0, $s0, 1
	add.d	$fp, $fp, $s6
	addi.d	$a1, $s1, 2047
	addi.d	$s1, $a1, 257
	bge	$s0, $a0, .LBB0_2
.LBB0_10:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_18 Depth 3
	ori	$a0, $zero, 120
	mul.d	$a0, $s0, $a0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	add.d	$s8, $a1, $a0
	alsl.d	$s7, $s0, $s0, 3
	slli.d	$a0, $s7, 9
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	add.d	$s2, $a1, $a0
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s8
	pcaddu18i	$ra, %call36(init_outer_loop)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 244
	mul.d	$s4, $s0, $a1
	st.d	$s7, $sp, 168                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=2
	ori	$a0, $zero, 976
	mul.d	$a0, $s0, $a0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$a2, $a1, $a0
	ori	$a0, $zero, 488
	mul.d	$a0, $s0, $a0
	addi.d	$a1, $sp, 208
	add.d	$s5, $a1, $a0
	move	$a0, $s3
	move	$a1, $s2
	move	$a3, $s8
	move	$a4, $s5
	pcaddu18i	$ra, %call36(calc_xmin)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s0, 2
	addi.d	$a1, $sp, 192
	ldx.w	$a2, $a0, $a1
	slli.d	$a0, $s7, 8
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	add.d	$a5, $a1, $a0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.d	$a6, $a0, $s4
	addi.d	$a3, $sp, 1184
	st.d	$s0, $sp, 8
	move	$a0, $s3
	move	$a1, $s2
	move	$a4, $s5
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	move	$a7, $s8
	pcaddu18i	$ra, %call36(outer_loop)
	jirl	$ra, $ra, 0
	b	.LBB0_13
	.p2align	4, , 16
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s4
	ori	$a2, $zero, 244
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2304
	mul.d	$a0, $s0, $a0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ori	$a2, $zero, 2304
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_13:                               #   in Loop: Header=BB0_10 Depth=2
	addi.w	$s2, $s0, 0
	move	$a0, $s3
	move	$a1, $s5
	move	$a2, $s2
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(best_scalefac_store)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 276
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_16
# %bb.14:                               #   in Loop: Header=BB0_10 Depth=2
	ld.w	$a0, $s8, 24
	bnez	$a0, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 8
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	add.d	$a3, $a1, $a0
	move	$a0, $s5
	move	$a1, $s2
	move	$a2, $s8
	pcaddu18i	$ra, %call36(best_huffman_divide)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB0_16:                               #   in Loop: Header=BB0_10 Depth=2
	ld.w	$a3, $sp, 200
	move	$a0, $s3
	move	$a1, $s8
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ResvAdjust)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	b	.LBB0_18
	.p2align	4, , 16
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=3
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 4
	beqz	$a1, .LBB0_9
.LBB0_18:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $fp, $a1
	fldx.d	$fa0, $a2, $s6
	fcmp.cule.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB0_17
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=3
	ld.w	$a2, $a0, 0
	sub.d	$a2, $zero, $a2
	st.w	$a2, $a0, 0
	b	.LBB0_17
.LBB0_20:                               # %._crit_edge98
	ld.w	$a2, $sp, 200
	move	$a0, $s3
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ResvFrameEnd)
	jirl	$ra, $ra, 0
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
.Lfunc_end0:
	.size	iteration_loop, .Lfunc_end0-iteration_loop
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function init_outer_loop
.LCPI1_0:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	210                             # 0xd2
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_1:
	.dword	0x3d719799812dea11              # double 9.9999999999999998E-13
.LCPI1_2:
	.dword	0x3fe62e42fefa39ef              # double 0.69314718055994529
.LCPI1_3:
	.dword	0x2b617f7d4ed8c33e              # double 1.0E-99
	.text
	.globl	init_outer_loop
	.p2align	5
	.type	init_outer_loop,@function
init_outer_loop:                        # @init_outer_loop
# %bb.0:
	vrepli.b	$vr0, 0
	vst	$vr0, $a2, 104
	pcalau12i	$a3, %pc_hi20(.LCPI1_0)
	vld	$vr1, $a3, %pc_lo12(.LCPI1_0)
	pcalau12i	$a3, %got_pc_hi20(nr_of_sfb_block)
	ld.d	$a3, $a3, %got_pc_lo12(nr_of_sfb_block)
	st.d	$zero, $a2, 32
	vst	$vr0, $a2, 40
	vst	$vr0, $a2, 56
	vst	$vr1, $a2, 0
	st.d	$zero, $a2, 72
	ld.w	$a0, $a0, 84
	st.d	$a3, $a2, 96
	st.w	$zero, $a2, 16
	st.w	$zero, $a2, 88
	beqz	$a0, .LBB1_5
# %bb.1:
	ld.w	$a0, $a2, 24
	ori	$a3, $zero, 2
	bne	$a0, $a3, .LBB1_5
# %bb.2:                                # %.preheader86.preheader
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a2
	addi.d	$a0, $a1, 16
	movgr2fr.d	$fa1, $zero
	ori	$a1, $zero, 192
	.p2align	4, , 16
.LBB1_3:                                # %.preheader84
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a0, -16
	fld.d	$fa3, $a0, 0
	vfmadd.d	$vr0, $vr2, $vr2, $vr0
	fmadd.d	$fa1, $fa3, $fa3, $fa1
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 24
	bnez	$a1, .LBB1_3
# %bb.4:                                # %.preheader83.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI1_1)
	vreplvei.d	$vr3, $vr0, 0
	fcmp.clt.d	$fcc0, $fa3, $fa2
	fsel	$fa4, $fa3, $fa2, $fcc0
	vreplvei.d	$vr0, $vr0, 1
	fcmp.clt.d	$fcc0, $fa0, $fa4
	fsel	$fa4, $fa0, $fa4, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fa3
	fsel	$fa3, $fa2, $fa3, $fcc0
	fcmp.clt.d	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	movfr2gr.d	$a0, $fa4
	movfr2gr.d	$a1, $fa1
	vinsgr2vr.d	$vr4, $a1, 0
	vinsgr2vr.d	$vr4, $a0, 1
	vpackev.d	$vr1, $vr1, $vr2
	vfcmp.clt.d	$vr2, $vr1, $vr4
	vbitsel.v	$vr1, $vr1, $vr4, $vr2
	vreplvei.d	$vr2, $vr1, 1
	fdiv.d	$fs0, $fa3, $fa2
	fdiv.d	$fs1, $fa0, $fa2
	vreplvei.d	$vr0, $vr1, 0
	fdiv.d	$fs2, $fa0, $fa2
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	fld.d	$fs3, $a0, %pc_lo12(.LCPI1_2)
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fa0, $fs3
	fsub.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slti	$a1, $a0, 2
	maskeqz	$a0, $a0, $a1
	ori	$s0, $zero, 2
	masknez	$a1, $s0, $a1
	or	$a0, $a0, $a1
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	st.w	$a0, $fp, 44
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fa0, $fs3
	fsub.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slti	$a1, $a0, 2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$a0, $a0, $a1
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	st.w	$a0, $fp, 48
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fa0, $fs3
	fsub.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slti	$a1, $a0, 2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$a0, $a0, $a1
	srai.d	$a1, $a0, 63
	pcalau12i	$a2, %pc_hi20(.LCPI1_3)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI1_3)
	andn	$a0, $a0, $a1
	fadd.d	$fa1, $fs0, $fs1
	fadd.d	$fa1, $fa1, $fs2
	fcmp.clt.d	$fcc0, $fa0, $fa1
	st.w	$a0, $fp, 52
	movcf2gr	$a0, $fcc0
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB1_5:                                # %.thread.preheader
	lu12i.w	$a0, -2
	pcalau12i	$a2, %pc_hi20(.LCPI1_3)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI1_3)
	ori	$a0, $a0, 3584
	lu12i.w	$a2, 1
	ori	$a2, $a2, 512
	.p2align	4, , 16
.LBB1_6:                                # %.thread
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a1, $a0
	fldx.d	$fa1, $a3, $a2
	fabs.d	$fa1, $fa1
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB1_9
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=1
	addi.d	$a0, $a0, 8
	bnez	$a0, .LBB1_6
# %bb.8:
	move	$a0, $zero
	ret
.LBB1_9:
	ori	$a0, $zero, 1
	ret
.Lfunc_end1:
	.size	init_outer_loop, .Lfunc_end1-init_outer_loop
                                        # -- End function
	.globl	outer_loop                      # -- Begin function outer_loop
	.p2align	5
	.type	outer_loop,@function
outer_loop:                             # @outer_loop
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1936                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1928                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1920                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1912                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1904                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1896                 # 8-byte Folded Spill
	lu12i.w	$t0, 1
	ori	$t0, $t0, 2736
	sub.d	$sp, $sp, $t0
	lu12i.w	$t0, 2
	ori	$t0, $t0, 680
	add.d	$t0, $sp, $t0
	ld.d	$t0, $t0, 0
	move	$s0, $a7
	st.d	$a6, $sp, 72                    # 8-byte Folded Spill
	st.d	$a5, $sp, 64                    # 8-byte Folded Spill
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	move	$s4, $a2
	move	$s5, $a1
	move	$s6, $a0
	move	$s7, $zero
	move	$s3, $zero
	move	$s8, $zero
	pcalau12i	$a0, %pc_hi20(outer_loop.OldValue)
	addi.d	$a0, $a0, %pc_lo12(outer_loop.OldValue)
	alsl.d	$a0, $t0, $a0, 2
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$fp, $zero, 100
	movgr2fr.d	$fs0, $zero
	addi.d	$s2, $sp, 1448
	lu12i.w	$a0, -2
	ori	$a0, $a0, 3584
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$s1, $a0, 512
                                        # implicit-def: $f27_64
                                        # implicit-def: $f28_64
                                        # implicit-def: $f29_64
	fmov.d	$fs1, $fs0
	fmov.d	$fs2, $fs0
	.p2align	4, , 16
.LBB2_1:                                # %.thread
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
	andi	$a0, $s7, 1
	bnez	$a0, .LBB2_7
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 288
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 244
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_3:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $s5, $s7
	fldx.d	$fa0, $a0, $s1
	fabs.d	$fa0, $fa0
	fsqrt.d	$fa1, $fa0
	fmul.d	$fa1, $fa0, $fa1
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB2_5
# %bb.4:                                # %.split
                                        #   in Loop: Header=BB2_3 Depth=2
	add.d	$a0, $s2, $s7
	addi.d	$s7, $s7, 8
	fstx.d	$fa0, $a0, $s1
	bnez	$s7, .LBB2_3
	b	.LBB2_6
.LBB2_5:                                # %call.sqrt
                                        #   in Loop: Header=BB2_3 Depth=2
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	add.d	$a0, $s2, $s7
	addi.d	$s7, $s7, 8
	fstx.d	$fa0, $a0, $s1
	bnez	$s7, .LBB2_3
	.p2align	4, , 16
.LBB2_6:                                #   in Loop: Header=BB2_1 Depth=1
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a2, $s7, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1960
	add.d	$a3, $sp, $a0
	addi.d	$a4, $sp, 1448
	move	$a0, $s6
	move	$a1, $s4
	move	$a5, $s0
	pcaddu18i	$ra, %call36(bin_search_StepSize2)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 12
	move	$s8, $a0
	st.w	$a1, $s7, 0
.LBB2_7:                                #   in Loop: Header=BB2_1 Depth=1
	ld.w	$a0, $s0, 76
	sub.w	$a3, $s4, $a0
	bltz	$a3, .LBB2_25
# %bb.8:                                #   in Loop: Header=BB2_1 Depth=1
	bnez	$s3, .LBB2_11
# %bb.9:                                #   in Loop: Header=BB2_1 Depth=1
	move	$a0, $s8
	bge	$a3, $s8, .LBB2_12
# %bb.10:                               #   in Loop: Header=BB2_1 Depth=1
	ld.w	$a0, $s0, 12
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 12
.LBB2_11:                               # %.sink.split
                                        #   in Loop: Header=BB2_1 Depth=1
	addi.d	$a1, $sp, 1448
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1960
	add.d	$a2, $sp, $a0
	move	$a0, $s6
	move	$a4, $s0
	pcaddu18i	$ra, %call36(inner_loop)
	jirl	$ra, $ra, 0
.LBB2_12:                               #   in Loop: Header=BB2_1 Depth=1
	ld.w	$a1, $s6, 264
	st.w	$a0, $s0, 0
	beqz	$a1, .LBB2_14
# %bb.13:                               #   in Loop: Header=BB2_1 Depth=1
	addi.d	$a0, $sp, 1440
	st.d	$a0, $sp, 8
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1960
	add.d	$a1, $sp, $a0
	addi.d	$a3, $sp, 752
	addi.d	$a4, $sp, 80
	lu12i.w	$a0, 2
	ori	$a0, $a0, 288
	add.d	$a6, $sp, $a0
	addi.d	$a7, $sp, 1432
	addi.d	$a0, $sp, 1424
	st.d	$a0, $sp, 0
	move	$a0, $s5
	move	$a2, $s0
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calc_noise1)
	jirl	$ra, $ra, 0
	fld.d	$fs5, $sp, 1440
	fld.d	$fs4, $sp, 1432
	fld.d	$fs3, $sp, 1424
	move	$s7, $a0
	bnez	$s3, .LBB2_15
	b	.LBB2_16
	.p2align	4, , 16
.LBB2_14:                               #   in Loop: Header=BB2_1 Depth=1
	move	$s7, $zero
	beqz	$s3, .LBB2_16
.LBB2_15:                               #   in Loop: Header=BB2_1 Depth=1
	ld.w	$a0, $s6, 76
	move	$a1, $fp
	fmov.d	$fa0, $fs0
	fmov.d	$fa1, $fs1
	fmov.d	$fa2, $fs2
	move	$a2, $s7
	fmov.d	$fa3, $fs3
	fmov.d	$fa4, $fs4
	fmov.d	$fa5, $fs5
	pcaddu18i	$ra, %call36(quant_compare)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_17
.LBB2_16:                               # %.critedge
                                        #   in Loop: Header=BB2_1 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 288
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 244
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1960
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 2304
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 168
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 120
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$fp, $s7
	fmov.d	$fs2, $fs5
	fmov.d	$fs1, $fs4
	fmov.d	$fs0, $fs3
.LBB2_17:                               #   in Loop: Header=BB2_1 Depth=1
	ld.w	$a0, $s6, 268
	or	$a0, $a0, $s7
	beqz	$a0, .LBB2_25
# %bb.18:                               #   in Loop: Header=BB2_1 Depth=1
	addi.d	$a0, $sp, 1448
	lu12i.w	$a1, 2
	ori	$a1, $a1, 288
	add.d	$a2, $sp, $a1
	addi.d	$a3, $sp, 80
	move	$a1, $s0
	pcaddu18i	$ra, %call36(amp_scalefac_bands)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 288
	add.d	$a0, $sp, $a0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(loop_break)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_25
# %bb.19:                               #   in Loop: Header=BB2_1 Depth=1
	ld.w	$a0, $s6, 192
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB2_21
# %bb.20:                               #   in Loop: Header=BB2_1 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 288
	add.d	$a0, $sp, $a0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(scale_bitcount)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, 1
	sltui	$s7, $a0, 1
	bnez	$a0, .LBB2_22
	b	.LBB2_1
	.p2align	4, , 16
.LBB2_21:                               #   in Loop: Header=BB2_1 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 288
	add.d	$a0, $sp, $a0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(scale_bitcount_lsf)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, 1
	sltui	$s7, $a0, 1
	beqz	$a0, .LBB2_1
.LBB2_22:                               #   in Loop: Header=BB2_1 Depth=1
	ld.w	$a0, $s0, 68
	bnez	$a0, .LBB2_25
# %bb.23:                               #   in Loop: Header=BB2_1 Depth=1
	ld.w	$a0, $s6, 80
	beqz	$a0, .LBB2_25
# %bb.24:                               #   in Loop: Header=BB2_1 Depth=1
	move	$a0, $s6
	move	$a1, $s5
	move	$a2, $s0
	pcaddu18i	$ra, %call36(init_outer_loop)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 68
	b	.LBB2_1
.LBB2_25:                               # %.thread138
	lu12i.w	$a0, 2
	ori	$a0, $a0, 168
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 76
	ld.w	$a1, $s0, 0
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 0
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa0, $fa0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	fst.d	$fa0, $a0, 0
	fst.d	$fs2, $a0, 8
	fst.d	$fs1, $a0, 16
	fst.d	$fs0, $a0, 24
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2736
	add.d	$sp, $sp, $a0
	fld.d	$fs5, $sp, 1896                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1904                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1912                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1920                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1928                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1936                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end2:
	.size	outer_loop, .Lfunc_end2-outer_loop
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function set_masking_lower
.LCPI3_0:
	.dword	0x40a28e0000000000              # double 2375
	.text
	.globl	set_masking_lower
	.p2align	5
	.type	set_masking_lower,@function
set_masking_lower:                      # @set_masking_lower
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	addi.d	$a0, $a0, -6
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI3_0)
	addi.d	$a0, $a1, -125
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa2, $fa1
	fcvt.s.d	$fa1, $fa1
	vldi	$vr2, -1040
	fadd.s	$fa1, $fa1, $fa2
	vldi	$vr2, -1264
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa1, $fa0
	vldi	$vr1, -1244
	fdiv.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa1, $fa0
	vldi	$vr0, -988
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(masking_lower)
	ld.d	$a0, $a0, %got_pc_lo12(masking_lower)
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $a0, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	set_masking_lower, .Lfunc_end3-set_masking_lower
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function VBR_iteration_loop
.LCPI4_0:
	.dword	0x4091300000000000              # double 1100
.LCPI4_1:
	.dword	0x40a28e0000000000              # double 2375
.LCPI4_2:
	.dword	0x3fd51eb851eb851f              # double 0.33000000000000002
	.text
	.globl	VBR_iteration_loop
	.p2align	5
	.type	VBR_iteration_loop,@function
VBR_iteration_loop:                     # @VBR_iteration_loop
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1936                 # 8-byte Folded Spill
	addi.d	$sp, $sp, -1712
	st.d	$a7, $sp, 104                   # 8-byte Folded Spill
	move	$s7, $a5
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	move	$s2, $a2
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	move	$s3, $a0
	move	$a1, $a5
	st.d	$a6, $sp, 112                   # 8-byte Folded Spill
	move	$a2, $a6
	pcaddu18i	$ra, %call36(iteration_init)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 212
	ori	$s0, $zero, 1
	st.w	$s0, $s3, 220
	move	$fp, $zero
	blt	$a1, $s0, .LBB4_5
# %bb.1:                                # %.lr.ph
	addi.d	$s1, $sp, 260
	b	.LBB4_3
	.p2align	4, , 16
.LBB4_2:                                #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a3, $sp, 256
	move	$a0, $s3
	move	$a1, $s7
	pcaddu18i	$ra, %call36(ResvFrameBegin)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s3, 220
	ld.w	$a1, $s3, 212
	slli.d	$a3, $a2, 2
	stx.w	$a0, $a3, $s1
	addi.d	$a0, $a2, 1
	st.w	$a0, $s3, 220
	bge	$a2, $a1, .LBB4_5
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 256
	addi.d	$a2, $sp, 252
	move	$a0, $s3
	pcaddu18i	$ra, %call36(getframebits)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 220
	ld.w	$a1, $s3, 208
	ld.w	$a2, $sp, 252
	bne	$a0, $a1, .LBB4_2
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s3, 204
	div.w	$fp, $a2, $a0
	b	.LBB4_2
.LBB4_5:                                # %._crit_edge
	ld.w	$a0, $s3, 200
	st.w	$a1, $s3, 220
	pcalau12i	$a1, %pc_hi20(.LCPI4_1)
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	blt	$a0, $s0, .LBB4_33
# %bb.6:                                # %.lr.ph368
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	move	$s5, $zero
	move	$s4, $zero
	move	$s2, $zero
	addi.d	$a0, $s7, 48
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$a1, $zero, 125
	slt	$a0, $a1, $fp
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(reduce_sidechannel)
	ld.d	$a0, $a0, %got_pc_lo12(reduce_sidechannel)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(convert_mdct)
	ld.d	$a0, $a0, %got_pc_lo12(convert_mdct)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(masking_lower)
	ld.d	$a0, $a0, %got_pc_lo12(masking_lower)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	movgr2fr.d	$fs0, $zero
	b	.LBB4_9
	.p2align	4, , 16
.LBB4_7:                                #   in Loop: Header=BB4_9 Depth=1
	move	$fp, $s2
.LBB4_8:                                # %._crit_edge361
                                        #   in Loop: Header=BB4_9 Depth=1
	move	$s2, $fp
	ld.w	$a0, $s3, 200
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	addi.d	$s5, $s5, 1
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
	bge	$s5, $a0, .LBB4_29
.LBB4_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_14 Depth 2
                                        #       Child Loop BB4_20 Depth 3
	ld.w	$s0, $s3, 204
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.w	$s1, $a1, 0
	alsl.d	$fp, $s5, $s5, 3
	beqz	$a0, .LBB4_11
# %bb.10:                               #   in Loop: Header=BB4_9 Depth=1
	slli.d	$a0, $fp, 10
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	move	$a1, $a0
	pcaddu18i	$ra, %call36(ms_convert)
	jirl	$ra, $ra, 0
.LBB4_11:                               #   in Loop: Header=BB4_9 Depth=1
	sltui	$a0, $s1, 1
	ori	$a2, $zero, 1
	masknez	$a1, $a2, $a0
	maskeqz	$a0, $s0, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	blt	$a0, $a2, .LBB4_7
# %bb.12:                               # %.lr.ph360
                                        #   in Loop: Header=BB4_9 Depth=1
	move	$s0, $zero
	ori	$a0, $zero, 240
	mul.d	$a0, $s5, $a0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	slli.d	$a0, $fp, 10
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ori	$a0, $zero, 488
	mul.d	$a0, $s5, $a0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	slli.d	$a0, $fp, 9
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a0, $sp, 352
	alsl.d	$a0, $s5, $a0, 3
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$a0, $zero, 1952
	mul.d	$a0, $s5, $a0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$a0, $s5, $a0, 4
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	move	$fp, $s2
	b	.LBB4_14
	.p2align	4, , 16
.LBB4_13:                               #   in Loop: Header=BB4_14 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	stx.w	$a0, $a1, $a2
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	add.w	$fp, $a0, $fp
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	addi.d	$s0, $s0, 1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_8
.LBB4_14:                               #   Parent Loop BB4_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_20 Depth 3
	ori	$a0, $zero, 120
	mul.d	$a0, $s0, $a0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	add.d	$s7, $a1, $a0
	alsl.d	$s2, $s0, $s0, 3
	slli.d	$a0, $s2, 9
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	add.d	$s8, $a1, $a0
	move	$a0, $s3
	move	$a1, $s8
	move	$a2, $s7
	pcaddu18i	$ra, %call36(init_outer_loop)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 244
	mul.d	$s6, $s0, $a1
	slli.d	$s1, $s0, 2
	beqz	$a0, .LBB4_28
# %bb.15:                               #   in Loop: Header=BB4_14 Depth=2
	ori	$a0, $zero, 3408
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 120
	move	$a1, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 92
	slli.d	$a0, $a0, 1
	addi.d	$a0, $a0, -6
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	vldi	$vr1, -1244
	fdiv.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa1, $fa0
	vldi	$vr0, -988
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fa0, $fa0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	fst.s	$fa0, $a0, 0
	ori	$a0, $zero, 976
	mul.d	$a0, $s0, $a0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.d	$a2, $a1, $a0
	addi.d	$a4, $sp, 368
	move	$a0, $s3
	move	$a1, $s8
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	move	$a3, $s7
	pcaddu18i	$ra, %call36(calc_xmin)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s7, 24
	sltui	$a1, $a0, 1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	masknez	$a0, $a0, $a1
	ori	$a3, $zero, 125
	maskeqz	$a3, $a3, $a1
	or	$a0, $a3, $a0
	ori	$a3, $zero, 2
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	bne	$a2, $a3, .LBB4_17
# %bb.16:                               #   in Loop: Header=BB4_14 Depth=2
	slli.d	$a2, $s0, 3
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	fldx.d	$fa0, $a3, $a2
	pcalau12i	$a2, %pc_hi20(.LCPI4_0)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI4_0)
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slti	$a2, $a0, 1800
	maskeqz	$a0, $a0, $a2
	ori	$a3, $zero, 1800
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
.LBB4_17:                               #   in Loop: Header=BB4_14 Depth=2
	ld.w	$a2, $s3, 212
	masknez	$a3, $s4, $a1
	slli.d	$a2, $a2, 2
	ld.w	$a4, $s3, 204
	ld.w	$a5, $s3, 200
	addi.d	$a6, $sp, 260
	ldx.w	$a2, $a2, $a6
	ori	$a6, $zero, 1
	maskeqz	$a1, $a6, $a1
	or	$a1, $a1, $a3
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	mul.w	$a1, $a5, $a4
	div.w	$a1, $a2, $a1
	slti	$a2, $a1, 1300
	maskeqz	$a1, $a1, $a2
	ori	$a3, $zero, 1300
	masknez	$a2, $a3, $a2
	or	$a1, $a1, $a2
	addi.w	$a1, $a1, 1200
	slt	$a2, $a0, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a0, $a2
	or	$a3, $a1, $a2
	sub.w	$a1, $a3, $a0
	bstrpick.d	$a2, $a1, 62, 61
	add.w	$a1, $a1, $a2
	srai.d	$s1, $a1, 2
	add.d	$a0, $a3, $a0
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$fp, $a0, 1
	st.d	$a3, $sp, 184                   # 8-byte Folded Spill
	addi.w	$s3, $a3, 1
	slli.d	$a0, $s2, 8
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	add.d	$s4, $a1, $a0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	add.d	$s6, $a0, $s6
	b	.LBB4_20
	.p2align	4, , 16
.LBB4_18:                               #   in Loop: Header=BB4_20 Depth=3
	ld.w	$s3, $s7, 0
	ori	$a0, $zero, 3160
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 244
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 856
	ori	$a2, $zero, 2304
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3528
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 120
	move	$a1, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_19:                               #   in Loop: Header=BB4_20 Depth=3
	sub.w	$fp, $fp, $s1
	addi.w	$a0, $s1, 0
	bstrpick.d	$s1, $s1, 31, 1
	ori	$a1, $zero, 21
	bge	$a1, $a0, .LBB4_26
.LBB4_20:                               #   Parent Loop BB4_9 Depth=1
                                        #     Parent Loop BB4_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$s2, $fp, 0
	bge	$s2, $s3, .LBB4_19
# %bb.21:                               #   in Loop: Header=BB4_20 Depth=3
	ori	$a0, $zero, 3408
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 120
	move	$a0, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a0, $s5, 92
	slli.d	$a0, $a0, 1
	addi.d	$a0, $a0, -6
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	fld.d	$fa1, $a0, %pc_lo12(.LCPI4_1)
	addi.d	$a0, $fp, -125
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa2, $fa1
	fcvt.s.d	$fa1, $fa1
	vldi	$vr2, -1040
	fadd.s	$fa1, $fa1, $fa2
	vldi	$vr2, -1264
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa1, $fa0
	vldi	$vr1, -1244
	fdiv.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa1, $fa0
	vldi	$vr0, -988
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fa0, $fa0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	fst.s	$fa0, $a0, 0
	addi.d	$a4, $sp, 368
	move	$a0, $s5
	move	$a1, $s8
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	move	$a3, $s7
	pcaddu18i	$ra, %call36(calc_xmin)
	jirl	$ra, $ra, 0
	addi.d	$a3, $sp, 320
	addi.d	$a4, $sp, 368
	st.d	$s0, $sp, 8
	move	$a0, $s5
	move	$a1, $s8
	move	$a2, $s2
	move	$a5, $s4
	move	$a6, $s6
	move	$a7, $s7
	pcaddu18i	$ra, %call36(outer_loop)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 320
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	bgtz	$a0, .LBB4_25
# %bb.22:                               #   in Loop: Header=BB4_20 Depth=3
	fld.d	$fa0, $sp, 336
	fcmp.cult.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB4_25
# %bb.23:                               #   in Loop: Header=BB4_20 Depth=3
	fld.d	$fa0, $sp, 344
	fcmp.cult.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB4_25
# %bb.24:                               #   in Loop: Header=BB4_20 Depth=3
	fld.d	$fa0, $sp, 328
	fcmp.cult.d	$fcc0, $fs0, $fa0
	bceqz	$fcc0, .LBB4_18
.LBB4_25:                               #   in Loop: Header=BB4_20 Depth=3
	add.w	$fp, $fp, $s1
	addi.w	$a0, $s1, 0
	bstrpick.d	$s1, $s1, 31, 1
	ori	$a1, $zero, 21
	blt	$a1, $a0, .LBB4_20
.LBB4_26:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	blt	$a0, $s3, .LBB4_13
# %bb.27:                               #   in Loop: Header=BB4_14 Depth=2
	ori	$a0, $zero, 3528
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 120
	move	$a0, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3160
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 244
	move	$a0, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 856
	ori	$a2, $zero, 2304
	move	$a0, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB4_13
	.p2align	4, , 16
.LBB4_28:                               #   in Loop: Header=BB4_14 Depth=2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s6
	ori	$a2, $zero, 244
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2304
	mul.d	$a0, $s0, $a0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ori	$a2, $zero, 2304
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	stx.w	$zero, $a0, $s1
	ori	$s4, $zero, 1
	addi.d	$s0, $s0, 1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	bne	$s0, $a0, .LBB4_14
	b	.LBB4_8
.LBB4_29:                               # %._crit_edge369
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	move	$fp, $s2
	beqz	$a1, .LBB4_39
# %bb.30:                               # %._crit_edge369
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB4_39
# %bb.31:                               # %.lr.ph376.preheader
	ori	$a1, $zero, 4
	bgeu	$a0, $a1, .LBB4_34
# %bb.32:
	move	$a1, $zero
	ld.d	$t1, $sp, 24                    # 8-byte Folded Reload
	b	.LBB4_37
.LBB4_33:
	move	$fp, $zero
	b	.LBB4_40
.LBB4_34:                               # %vector.ph
	bstrpick.d	$a1, $a0, 30, 2
	slli.d	$a1, $a1, 2
	vinsgr2vr.w	$vr0, $fp, 0
	vinsgr2vr.w	$vr1, $zero, 0
	vpackev.w	$vr0, $vr1, $vr0
	ld.d	$t1, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a2, $t1, 16
	vrepli.b	$vr1, 0
	addi.d	$a3, $sp, 368
	lu52i.d	$a4, $zero, 1022
	vreplgr2vr.d	$vr2, $a4
	lu12i.w	$a4, 335544
	ori	$a4, $a4, 1311
	lu32i.d	$a4, 335544
	lu52i.d	$a4, $a4, 1021
	vreplgr2vr.d	$vr3, $a4
	lu52i.d	$a4, $zero, 1023
	vreplgr2vr.d	$vr4, $a4
	vrepli.w	$vr5, 125
	move	$a4, $a1
	.p2align	4, , 16
.LBB4_35:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr6, $a2, -16
	vld	$vr7, $a2, 0
	vfsub.d	$vr6, $vr2, $vr6
	vfsub.d	$vr7, $vr2, $vr7
	vfmul.d	$vr6, $vr6, $vr3
	vfmul.d	$vr7, $vr7, $vr3
	vfadd.d	$vr6, $vr6, $vr6
	vfadd.d	$vr7, $vr7, $vr7
	vfsub.d	$vr8, $vr4, $vr6
	vfsub.d	$vr9, $vr4, $vr7
	vfadd.d	$vr6, $vr6, $vr4
	vfadd.d	$vr7, $vr7, $vr4
	vfdiv.d	$vr6, $vr8, $vr6
	ld.w	$a5, $a3, -16
	vfdiv.d	$vr7, $vr9, $vr7
	ld.w	$a6, $a3, -8
	ld.w	$a7, $a3, 0
	movgr2fr.w	$ft0, $a5
	ffint.d.w	$ft0, $ft0
	ld.w	$a5, $a3, 8
	movfr2gr.d	$t0, $ft0
	movgr2fr.w	$ft0, $a6
	ffint.d.w	$ft0, $ft0
	vinsgr2vr.d	$vr9, $t0, 0
	movfr2gr.d	$a6, $ft0
	movgr2fr.w	$ft0, $a7
	ffint.d.w	$ft0, $ft0
	vinsgr2vr.d	$vr9, $a6, 1
	movfr2gr.d	$a6, $ft0
	movgr2fr.w	$ft0, $a5
	ffint.d.w	$ft0, $ft0
	vinsgr2vr.d	$vr10, $a6, 0
	movfr2gr.d	$a5, $ft0
	vinsgr2vr.d	$vr10, $a5, 1
	vfmul.d	$vr6, $vr6, $vr9
	vfmul.d	$vr7, $vr7, $vr10
	vreplvei.d	$vr8, $vr6, 0
	ftintrz.w.d	$ft0, $ft0
	movfr2gr.s	$a5, $ft0
	vinsgr2vr.w	$vr8, $a5, 0
	vreplvei.d	$vr6, $vr6, 1
	ftintrz.w.d	$fa6, $fa6
	movfr2gr.s	$a5, $fa6
	vinsgr2vr.w	$vr6, $a5, 0
	vpackev.w	$vr6, $vr6, $vr8
	vreplvei.d	$vr8, $vr7, 0
	ftintrz.w.d	$ft0, $ft0
	movfr2gr.s	$a5, $ft0
	vinsgr2vr.w	$vr8, $a5, 0
	vreplvei.d	$vr7, $vr7, 1
	ftintrz.w.d	$fa7, $fa7
	movfr2gr.s	$a5, $fa7
	vinsgr2vr.w	$vr7, $a5, 0
	vpackev.w	$vr7, $vr7, $vr8
	vmax.w	$vr6, $vr6, $vr5
	vmax.w	$vr7, $vr7, $vr5
	vpickve2gr.w	$a5, $vr6, 0
	st.w	$a5, $a3, -12
	vpickve2gr.w	$a5, $vr6, 1
	st.w	$a5, $a3, -4
	vpickve2gr.w	$a5, $vr7, 0
	st.w	$a5, $a3, 4
	vpickve2gr.w	$a5, $vr7, 1
	st.w	$a5, $a3, 12
	vadd.w	$vr0, $vr6, $vr0
	vadd.w	$vr1, $vr7, $vr1
	addi.d	$a4, $a4, -4
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB4_35
# %bb.36:                               # %middle.block
	vadd.w	$vr0, $vr1, $vr0
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$fp, $vr0, 0
	beq	$a1, $a0, .LBB4_39
.LBB4_37:                               # %.lr.ph376.preheader523
	addi.d	$a2, $sp, 352
	alsl.d	$a2, $a1, $a2, 3
	addi.d	$a2, $a2, 4
	alsl.d	$a3, $a1, $t1, 3
	sub.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(.LCPI4_2)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI4_2)
	vldi	$vr1, -928
	vldi	$vr2, -912
	ori	$a1, $zero, 125
	.p2align	4, , 16
.LBB4_38:                               # %.lr.ph376
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa3, $a3, 0
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa0
	fadd.d	$fa3, $fa3, $fa3
	ld.w	$a4, $a2, -4
	fsub.d	$fa4, $fa2, $fa3
	fadd.d	$fa3, $fa3, $fa2
	fdiv.d	$fa3, $fa4, $fa3
	movgr2fr.w	$fa4, $a4
	ffint.d.w	$fa4, $fa4
	fmul.d	$fa3, $fa3, $fa4
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a4, $fa3
	slt	$a5, $a1, $a4
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $a1, $a5
	or	$a4, $a4, $a5
	st.w	$a4, $a2, 0
	add.w	$fp, $a4, $fp
	addi.d	$a2, $a2, 8
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 8
	bnez	$a0, .LBB4_38
.LBB4_39:                               # %.loopexit348
	ori	$a0, $zero, 1
	bnez	$s4, .LBB4_41
.LBB4_40:                               # %.loopexit348.thread
	ld.w	$a0, $s3, 208
.LBB4_41:
	ld.w	$a1, $s3, 212
	bge	$a0, $a1, .LBB4_46
# %bb.42:                               # %.lr.ph380.preheader
	addi.d	$a2, $sp, 260
	alsl.d	$a2, $a0, $a2, 2
	.p2align	4, , 16
.LBB4_43:                               # %.lr.ph380
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	bge	$a3, $fp, .LBB4_46
# %bb.44:                               #   in Loop: Header=BB4_43 Depth=1
	addi.w	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	bne	$a1, $a0, .LBB4_43
# %bb.45:
	move	$a0, $a1
.LBB4_46:                               # %._crit_edge381
	st.w	$a0, $s3, 220
	addi.d	$a1, $sp, 256
	addi.d	$a2, $sp, 252
	move	$a0, $s3
	pcaddu18i	$ra, %call36(getframebits)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 252
	ld.w	$a3, $sp, 256
	move	$a0, $s3
	move	$a1, $s7
	pcaddu18i	$ra, %call36(ResvFrameBegin)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 200
	move	$s5, $a0
	bge	$a0, $fp, .LBB4_58
# %bb.47:                               # %.preheader346
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB4_104
# %bb.48:                               # %.preheader345.lr.ph
	ld.w	$a0, $s3, 204
	blt	$a0, $a2, .LBB4_59
# %bb.49:                               # %.preheader345.lr.ph.split.us
	ld.w	$a2, $s3, 220
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 260
	ldx.w	$a2, $a2, $a3
	move	$a3, $zero
	bstrpick.d	$a4, $a0, 30, 3
	slli.d	$a4, $a4, 3
	vreplgr2vr.w	$vr0, $a2
	vreplgr2vr.w	$vr1, $fp
	addi.d	$a5, $sp, 352
	addi.d	$a6, $sp, 368
	ori	$a7, $zero, 8
	b	.LBB4_51
	.p2align	4, , 16
.LBB4_50:                               # %._crit_edge387.us
                                        #   in Loop: Header=BB4_51 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	bgeu	$a3, $a1, .LBB4_59
.LBB4_51:                               # %.preheader345.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_54 Depth 2
                                        #     Child Loop BB4_57 Depth 2
	bgeu	$a0, $a7, .LBB4_53
# %bb.52:                               #   in Loop: Header=BB4_51 Depth=1
	move	$t1, $zero
	b	.LBB4_56
	.p2align	4, , 16
.LBB4_53:                               # %vector.body510.preheader
                                        #   in Loop: Header=BB4_51 Depth=1
	move	$t0, $a6
	move	$t1, $a4
	.p2align	4, , 16
.LBB4_54:                               # %vector.body510
                                        #   Parent Loop BB4_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $t0, -16
	vld	$vr3, $t0, 0
	vmul.w	$vr2, $vr0, $vr2
	vmul.w	$vr3, $vr0, $vr3
	vdiv.w	$vr2, $vr2, $vr1
	vdiv.w	$vr3, $vr3, $vr1
	vst	$vr2, $t0, -16
	vst	$vr3, $t0, 0
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB4_54
# %bb.55:                               # %middle.block515
                                        #   in Loop: Header=BB4_51 Depth=1
	move	$t1, $a4
	beq	$a4, $a0, .LBB4_50
.LBB4_56:                               # %scalar.ph503.preheader
                                        #   in Loop: Header=BB4_51 Depth=1
	alsl.d	$t0, $t1, $a5, 2
	sub.d	$t1, $a0, $t1
	.p2align	4, , 16
.LBB4_57:                               # %scalar.ph503
                                        #   Parent Loop BB4_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t0, 0
	mul.w	$t2, $a2, $t2
	div.w	$t2, $t2, $fp
	st.w	$t2, $t0, 0
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 4
	bnez	$t1, .LBB4_57
	b	.LBB4_50
.LBB4_58:                               # %.loopexit
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB4_104
.LBB4_59:                               # %.preheader342.lr.ph
	ld.w	$a0, $s3, 204
	addi.d	$s6, $s7, 48
	ori	$a3, $zero, 1
	lu12i.w	$a2, 1
	blt	$a0, $a3, .LBB4_83
# %bb.60:                               # %.preheader342.preheader
	move	$s1, $zero
	addi.d	$a4, $s7, 288
	move	$a3, $a2
	lu12i.w	$a2, 2
	ori	$a5, $a2, 1024
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.d	$a5, $sp, 144                   # 8-byte Folded Spill
	add.d	$s8, $a2, $a5
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a5, $a2, 488
	ori	$a3, $a3, 512
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	add.d	$a6, $a2, $a3
	addi.d	$a7, $sp, 360
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	addi.d	$t0, $a2, 1952
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	fld.d	$fs0, $a2, %pc_lo12(.LCPI4_1)
	pcalau12i	$a2, %got_pc_hi20(masking_lower)
	ld.d	$a2, $a2, %got_pc_lo12(masking_lower)
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$a3, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s5, $sp, 200                   # 8-byte Folded Spill
	b	.LBB4_63
	.p2align	4, , 16
.LBB4_61:                               # %._crit_edge399.loopexit
                                        #   in Loop: Header=BB4_63 Depth=1
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a1, $s3, 200
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 152                   # 8-byte Folded Reload
.LBB4_62:                               # %._crit_edge399
                                        #   in Loop: Header=BB4_63 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$a4, $a4, 240
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	add.d	$s8, $s8, $a2
	addi.d	$a5, $a5, 488
	add.d	$a6, $a6, $a3
	addi.d	$a7, $a7, 8
	addi.d	$t0, $t0, 1952
	bge	$s1, $a1, .LBB4_82
.LBB4_63:                               # %.preheader342
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_79 Depth 2
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB4_62
# %bb.64:                               # %.lr.ph398
                                        #   in Loop: Header=BB4_63 Depth=1
	st.d	$t0, $sp, 152                   # 8-byte Folded Spill
	st.d	$a7, $sp, 160                   # 8-byte Folded Spill
	st.d	$a6, $sp, 168                   # 8-byte Folded Spill
	st.d	$a5, $sp, 176                   # 8-byte Folded Spill
	st.d	$a4, $sp, 192                   # 8-byte Folded Spill
	ori	$a0, $zero, 240
	mul.d	$a0, $s1, $a0
	add.d	$s2, $s6, $a0
	st.d	$s1, $sp, 216                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	bge	$s5, $fp, .LBB4_67
# %bb.65:                               #   in Loop: Header=BB4_63 Depth=1
	alsl.d	$s0, $s1, $s1, 3
	slli.d	$a0, $s0, 10
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	add.d	$s4, $a1, $a0
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(init_outer_loop)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_70
# %bb.66:                               #   in Loop: Header=BB4_63 Depth=1
	ld.w	$a0, $s3, 92
	slli.d	$a1, $s1, 3
	slli.d	$a0, $a0, 1
	addi.d	$a2, $sp, 352
	ldx.w	$s6, $a1, $a2
	addi.d	$a0, $a0, -6
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	addi.d	$a0, $s6, -125
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fs0
	fcvt.s.d	$fa1, $fa1
	vldi	$vr2, -1040
	fadd.s	$fa1, $fa1, $fa2
	vldi	$vr2, -1264
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa1, $fa0
	vldi	$vr1, -1244
	fdiv.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa1, $fa0
	vldi	$vr0, -988
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fa0, $fa0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	fst.s	$fa0, $a0, 0
	ori	$a0, $zero, 1952
	mul.d	$a0, $s1, $a0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	add.d	$a2, $a1, $a0
	addi.d	$a4, $sp, 368
	move	$a0, $s3
	move	$a1, $s4
	move	$a3, $s2
	pcaddu18i	$ra, %call36(calc_xmin)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s0, 9
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	add.d	$a5, $a1, $a0
	ori	$a0, $zero, 488
	mul.d	$a0, $s1, $a0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$a6, $a1, $a0
	addi.d	$a3, $sp, 320
	addi.d	$a4, $sp, 368
	st.d	$zero, $sp, 8
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s6
	move	$a7, $s2
	pcaddu18i	$ra, %call36(outer_loop)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 204
	ori	$a1, $zero, 1
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB4_61
	b	.LBB4_71
	.p2align	4, , 16
.LBB4_67:                               # %.thread
                                        #   in Loop: Header=BB4_63 Depth=1
	ld.w	$a0, $s3, 204
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB4_61
# %bb.68:                               # %.peel.next.thread
                                        #   in Loop: Header=BB4_63 Depth=1
	pcalau12i	$a0, %got_pc_hi20(reduce_sidechannel)
	ld.d	$a0, $a0, %got_pc_lo12(reduce_sidechannel)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB4_71
	.p2align	4, , 16
# %bb.69:                               #   in Loop: Header=BB4_63 Depth=1
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 204
	ori	$a1, $zero, 3
	blt	$a0, $a1, .LBB4_61
	b	.LBB4_75
.LBB4_70:                               #   in Loop: Header=BB4_63 Depth=1
	ori	$a0, $zero, 488
	mul.d	$a0, $s1, $a0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ori	$a2, $zero, 244
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s0, 9
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ori	$a2, $zero, 2304
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 204
	ori	$a1, $zero, 1
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB4_61
.LBB4_71:                               # %.peel.next
                                        #   in Loop: Header=BB4_63 Depth=1
	addi.d	$s2, $s2, 120
	ld.d	$s7, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$s0, $s7, $s7, 3
	slli.d	$a0, $s0, 10
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	add.d	$s4, $a0, $a3
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(init_outer_loop)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 488
	mul.d	$s1, $s7, $a1
	beqz	$a0, .LBB4_73
# %bb.72:                               #   in Loop: Header=BB4_63 Depth=1
	ld.w	$a0, $s3, 92
	addi.d	$a1, $sp, 352
	alsl.d	$a1, $s7, $a1, 3
	slli.d	$a0, $a0, 1
	ld.w	$s6, $a1, 4
	addi.d	$a0, $a0, -6
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	addi.d	$a0, $s6, -125
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fs0
	fcvt.s.d	$fa1, $fa1
	vldi	$vr2, -1040
	fadd.s	$fa1, $fa1, $fa2
	vldi	$vr2, -1264
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa1, $fa0
	vldi	$vr1, -1244
	fdiv.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa1, $fa0
	vldi	$vr0, -988
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fa0, $fa0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	fst.s	$fa0, $a0, 0
	ori	$a0, $zero, 1952
	mul.d	$a0, $s7, $a0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	addi.d	$a2, $a0, 976
	addi.d	$a4, $sp, 368
	move	$a0, $s3
	move	$a1, $s4
	move	$a3, $s2
	pcaddu18i	$ra, %call36(calc_xmin)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s0, 9
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 2047
	addi.d	$a5, $a0, 257
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s1
	addi.d	$a6, $a0, 244
	addi.d	$a3, $sp, 320
	addi.d	$a4, $sp, 368
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 8
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s6
	move	$a7, $s2
	pcaddu18i	$ra, %call36(outer_loop)
	jirl	$ra, $ra, 0
	b	.LBB4_74
.LBB4_73:                               #   in Loop: Header=BB4_63 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s1
	addi.d	$a0, $a0, 244
	ori	$a2, $zero, 244
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s0, 9
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ori	$a1, $zero, 2304
	add.d	$a0, $a0, $a1
	ori	$a2, $zero, 2304
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB4_74:                               #   in Loop: Header=BB4_63 Depth=1
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 204
	ori	$a1, $zero, 3
	blt	$a0, $a1, .LBB4_61
.LBB4_75:                               # %.peel.next444.preheader
                                        #   in Loop: Header=BB4_63 Depth=1
	ori	$s1, $zero, 2
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 192                   # 8-byte Folded Reload
	ori	$s0, $zero, 2
	b	.LBB4_79
	.p2align	4, , 16
.LBB4_76:                               #   in Loop: Header=BB4_79 Depth=2
	ld.w	$a0, $fp, 92
	slli.d	$a0, $a0, 1
	ld.w	$s5, $s3, 0
	addi.d	$a0, $a0, -6
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	addi.d	$a0, $s5, -125
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fs0
	fcvt.s.d	$fa1, $fa1
	vldi	$vr2, -1040
	fadd.s	$fa1, $fa1, $fa2
	vldi	$vr2, -1264
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa1, $fa0
	vldi	$vr1, -1244
	fdiv.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa1, $fa0
	vldi	$vr0, -988
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fcvt.s.d	$fa0, $fa0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	fst.s	$fa0, $a0, 0
	addi.d	$a4, $sp, 368
	move	$a0, $fp
	move	$a1, $s8
	move	$a2, $s4
	move	$a3, $s2
	pcaddu18i	$ra, %call36(calc_xmin)
	jirl	$ra, $ra, 0
	addi.d	$a3, $sp, 320
	addi.d	$a4, $sp, 368
	st.d	$s1, $sp, 8
	move	$a0, $fp
	move	$a1, $s8
	move	$a2, $s5
	ld.d	$s5, $sp, 200                   # 8-byte Folded Reload
	move	$a5, $s6
	move	$a6, $s7
	move	$a7, $s2
	pcaddu18i	$ra, %call36(outer_loop)
	jirl	$ra, $ra, 0
.LBB4_77:                               #   in Loop: Header=BB4_79 Depth=2
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
.LBB4_78:                               #   in Loop: Header=BB4_79 Depth=2
	addi.d	$s0, $s0, 1
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 204
	addi.w	$s1, $s1, 1
	addi.d	$s2, $s2, 120
	add.d	$s8, $s8, $a3
	addi.d	$s7, $s7, 244
	addi.d	$a1, $s6, 2047
	addi.d	$s6, $a1, 257
	addi.d	$s3, $s3, 4
	addi.d	$s4, $s4, 976
	bge	$s0, $a0, .LBB4_61
.LBB4_79:                               # %.peel.next444
                                        #   Parent Loop BB4_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bge	$s5, $fp, .LBB4_78
# %bb.80:                               #   in Loop: Header=BB4_79 Depth=2
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	move	$a0, $fp
	move	$a1, $s8
	move	$a2, $s2
	pcaddu18i	$ra, %call36(init_outer_loop)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_76
# %bb.81:                               #   in Loop: Header=BB4_79 Depth=2
	ori	$a2, $zero, 244
	move	$a0, $s7
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 2304
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB4_77
.LBB4_82:                               # %.preheader341
	ori	$a0, $zero, 1
	lu12i.w	$a2, 1
	blt	$a1, $a0, .LBB4_104
.LBB4_83:                               # %.preheader340.lr.ph
	ld.w	$a0, $s3, 204
	ori	$a3, $zero, 1
	blt	$a0, $a3, .LBB4_93
# %bb.84:                               # %.preheader340.preheader
	move	$s2, $zero
	ori	$s0, $a2, 512
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	b	.LBB4_87
	.p2align	4, , 16
.LBB4_85:                               # %._crit_edge403.loopexit
                                        #   in Loop: Header=BB4_87 Depth=1
	ld.w	$a1, $s8, 200
	move	$s3, $s8
	lu12i.w	$a2, 1
	move	$s6, $fp
.LBB4_86:                               # %._crit_edge403
                                        #   in Loop: Header=BB4_87 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s6, $s6, 240
	add.d	$s1, $s1, $s0
	bge	$s2, $a1, .LBB4_92
.LBB4_87:                               # %.preheader340
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_90 Depth 2
	ori	$a3, $zero, 1
	blt	$a0, $a3, .LBB4_86
# %bb.88:                               # %.lr.ph402
                                        #   in Loop: Header=BB4_87 Depth=1
	move	$s4, $zero
	move	$s8, $s3
	move	$s3, $zero
	move	$s5, $s1
	move	$fp, $s6
	b	.LBB4_90
	.p2align	4, , 16
.LBB4_89:                               #   in Loop: Header=BB4_90 Depth=2
	ld.w	$a3, $sp, 252
	move	$a0, $s8
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(ResvAdjust)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 1
	ld.w	$a0, $s8, 204
	addi.w	$s4, $s4, 1
	addi.d	$s6, $s6, 120
	addi.d	$a1, $s5, 2047
	addi.d	$s5, $a1, 257
	bge	$s3, $a0, .LBB4_85
.LBB4_90:                               #   Parent Loop BB4_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s8
	move	$a1, $s2
	move	$a2, $s4
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	move	$a4, $s7
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(best_scalefac_store)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 24
	bnez	$a0, .LBB4_89
# %bb.91:                               #   in Loop: Header=BB4_90 Depth=2
	move	$a0, $s2
	move	$a1, $s4
	move	$a2, $s6
	move	$a3, $s5
	pcaddu18i	$ra, %call36(best_huffman_divide)
	jirl	$ra, $ra, 0
	b	.LBB4_89
.LBB4_92:                               # %.preheader339
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB4_104
.LBB4_93:                               # %.preheader338.lr.ph
	ld.w	$a6, $s3, 204
	ori	$a0, $zero, 1
	blt	$a6, $a0, .LBB4_104
# %bb.94:                               # %.preheader338.preheader
	move	$a4, $a2
	move	$a2, $zero
	lu12i.w	$a3, -2
	ori	$a3, $a3, 3584
	ori	$a4, $a4, 512
	movgr2fr.d	$fa0, $zero
	lu12i.w	$a5, 2
	ori	$a5, $a5, 1024
	b	.LBB4_97
	.p2align	4, , 16
.LBB4_95:                               # %._crit_edge407.loopexit
                                        #   in Loop: Header=BB4_97 Depth=1
	ld.w	$a1, $s3, 200
.LBB4_96:                               # %._crit_edge407
                                        #   in Loop: Header=BB4_97 Depth=1
	addi.d	$a2, $a2, 1
	ld.d	$a7, $sp, 88                    # 8-byte Folded Reload
	add.d	$a7, $a7, $a5
	st.d	$a7, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	add.d	$a7, $a7, $a4
	st.d	$a7, $sp, 112                   # 8-byte Folded Spill
	bge	$a2, $a1, .LBB4_104
.LBB4_97:                               # %.preheader338
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_100 Depth 2
                                        #       Child Loop BB4_102 Depth 3
	blt	$a6, $a0, .LBB4_96
# %bb.98:                               # %.preheader.preheader
                                        #   in Loop: Header=BB4_97 Depth=1
	move	$a1, $zero
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 88                    # 8-byte Folded Reload
	b	.LBB4_100
	.p2align	4, , 16
.LBB4_99:                               #   in Loop: Header=BB4_100 Depth=2
	ld.w	$a6, $s3, 204
	addi.d	$a1, $a1, 1
	add.d	$t0, $t0, $a4
	addi.d	$a7, $a7, 2047
	addi.d	$a7, $a7, 257
	bge	$a1, $a6, .LBB4_95
.LBB4_100:                              # %.preheader
                                        #   Parent Loop BB4_97 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_102 Depth 3
	move	$a6, $a7
	move	$t1, $a3
	b	.LBB4_102
	.p2align	4, , 16
.LBB4_101:                              #   in Loop: Header=BB4_102 Depth=3
	addi.d	$t1, $t1, 8
	addi.d	$a6, $a6, 4
	beqz	$t1, .LBB4_99
.LBB4_102:                              #   Parent Loop BB4_97 Depth=1
                                        #     Parent Loop BB4_100 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t2, $t0, $t1
	fldx.d	$fa1, $t2, $a4
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB4_101
# %bb.103:                              #   in Loop: Header=BB4_102 Depth=3
	ld.w	$t2, $a6, 0
	sub.d	$t2, $zero, $t2
	st.w	$t2, $a6, 0
	b	.LBB4_101
.LBB4_104:                              # %._crit_edge409
	ld.w	$a2, $sp, 252
	move	$a0, $s3
	move	$a1, $s7
	pcaddu18i	$ra, %call36(ResvFrameEnd)
	jirl	$ra, $ra, 0
	addi.d	$sp, $sp, 1712
	fld.d	$fs0, $sp, 1936                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end4:
	.size	VBR_iteration_loop, .Lfunc_end4-VBR_iteration_loop
                                        # -- End function
	.globl	VBR_compare                     # -- Begin function VBR_compare
	.p2align	5
	.type	VBR_compare,@function
VBR_compare:                            # @VBR_compare
# %bb.0:
	slt	$a0, $a0, $a1
	fcmp.cle.d	$fcc0, $fa4, $fa1
	xori	$a0, $a0, 1
	movcf2gr	$a1, $fcc0
	fcmp.cle.d	$fcc0, $fa3, $fa0
	fcmp.cle.d	$fcc1, $fa5, $fa2
	and	$a0, $a0, $a1
	movcf2gr	$a1, $fcc0
	movcf2gr	$a2, $fcc1
	and	$a1, $a1, $a2
	and	$a0, $a0, $a1
	ret
.Lfunc_end5:
	.size	VBR_compare, .Lfunc_end5-VBR_compare
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function calc_noise1
.LCPI6_0:
	.dword	0x3f50624dd2f1a9fc              # double 0.001
	.text
	.globl	calc_noise1
	.p2align	5
	.type	calc_noise1,@function
calc_noise1:                            # @calc_noise1
# %bb.0:
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 160                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 152                  # 8-byte Folded Spill
	ld.d	$s8, $sp, 256
	st.d	$a6, $sp, 88                    # 8-byte Folded Spill
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$s7, $sp, 264
	st.d	$a7, $sp, 128                   # 8-byte Folded Spill
	st.d	$zero, $a7, 0
	st.d	$zero, $s8, 0
	ori	$a0, $zero, 0
	ld.wu	$a3, $a2, 80
	lu32i.d	$a0, -51200
	lu52i.d	$a0, $a0, -1016
	st.d	$a0, $s7, 0
	addi.w	$a0, $a3, 0
	pcalau12i	$a1, %pc_hi20(.LCPI6_0)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	beqz	$a0, .LBB6_10
# %bb.1:                                # %.lr.ph157
	move	$a0, $zero
	move	$s1, $zero
	ld.w	$s3, $a2, 64
	ld.w	$a1, $a2, 12
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	ld.w	$a1, $a2, 68
	pcalau12i	$a2, %got_pc_hi20(pow20)
	ld.d	$s5, $a2, %got_pc_lo12(pow20)
	pcalau12i	$a2, %got_pc_hi20(scalefac_band)
	ld.d	$s6, $a2, %got_pc_lo12(scalefac_band)
	pcalau12i	$a2, %got_pc_hi20(pow43)
	ld.d	$fp, $a2, %got_pc_lo12(pow43)
	addi.d	$s4, $a1, 1
	movgr2fr.d	$fs0, $zero
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_2:                                #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	fld.d	$fa1, $s8, 0
	fadd.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $s8, 0
	fld.d	$fa1, $s7, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	fst.d	$fa0, $s7, 0
	move	$a0, $s0
	beq	$s0, $a3, .LBB6_11
.LBB6_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_7 Depth 2
	slli.d	$a1, $a0, 2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$a2, $a2, $a1
	beqz	$s3, .LBB6_5
# %bb.4:                                #   in Loop: Header=BB6_3 Depth=1
	pcalau12i	$a3, %got_pc_hi20(pretab)
	ld.d	$a3, $a3, %got_pc_lo12(pretab)
	ldx.w	$a3, $a3, $a1
	add.d	$a2, $a3, $a2
.LBB6_5:                                #   in Loop: Header=BB6_3 Depth=1
	ldx.w	$a3, $s6, $a1
	addi.d	$s0, $a0, 1
	slli.d	$a1, $s0, 2
	ldx.w	$a4, $s6, $a1
	sub.d	$a1, $a4, $a3
	fmov.d	$fa0, $fs0
	bge	$a3, $a4, .LBB6_8
# %bb.6:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	sll.w	$a2, $a2, $s4
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	sub.w	$a2, $a4, $a2
	slli.d	$a2, $a2, 3
	fldx.d	$fa1, $s5, $a2
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a3, $a3, $a4, 2
	move	$a4, $a1
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB6_7:                                # %.lr.ph
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a3, 0
	fld.d	$fa2, $a2, 0
	slli.d	$a5, $a5, 3
	fldx.d	$fa3, $fp, $a5
	fabs.d	$fa2, $fa2
	fneg.d	$fa3, $fa3
	fmadd.d	$fa2, $fa3, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa2, $fa0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	bnez	$a4, .LBB6_7
.LBB6_8:                                # %._crit_edge
                                        #   in Loop: Header=BB6_3 Depth=1
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	slli.d	$s2, $a0, 3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $s2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	fldx.d	$fa1, $a0, $s2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	fld.d	$fa2, $a0, %pc_lo12(.LCPI6_0)
	fdiv.d	$fa0, $fa0, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fa2
	fsel	$fa0, $fa0, $fa2, $fcc0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	vldi	$vr1, -988
	fmul.d	$fa0, $fa0, $fa1
	fcmp.cule.d	$fcc0, $fa0, $fs0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $s2
	bcnez	$fcc0, .LBB6_2
# %bb.9:                                #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	fld.d	$fa1, $a0, 0
	addi.w	$s1, $s1, 1
	fadd.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $a0, 0
	b	.LBB6_2
.LBB6_10:
	move	$s1, $zero
.LBB6_11:                               # %.preheader
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.w	$s0, $a2, 84
	ori	$a0, $zero, 11
	bgeu	$a0, $s0, .LBB6_16
# %bb.12:                               # %.split.us
	addi.w	$a1, $a3, 0
	ori	$a0, $zero, 2
	bge	$a1, $a0, .LBB6_38
.LBB6_13:
	blt	$s1, $a0, .LBB6_15
.LBB6_14:
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	fld.d	$fa0, $a1, 0
	bstrpick.d	$a0, $s1, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a1, 0
.LBB6_15:
	move	$a0, $s1
	fld.d	$fs1, $sp, 152                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 160                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.LBB6_16:                               # %.preheader.split.us
	ld.w	$a0, $a2, 68
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 88
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 176
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.w	$a0, $a2, 12
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.w	$a0, $a2, 44
	pcalau12i	$a1, %got_pc_hi20(scalefac_band)
	ld.d	$s3, $a1, %got_pc_lo12(scalefac_band)
	alsl.d	$a1, $s0, $s0, 1
	sub.d	$a1, $zero, $a1
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	alsl.d	$a0, $s0, $s3, 2
	ld.w	$s2, $a0, 92
	pcalau12i	$a0, %got_pc_hi20(pow20)
	ld.d	$a0, $a0, %got_pc_lo12(pow20)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(pow43)
	ld.d	$s6, $a0, %got_pc_lo12(pow43)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	fld.d	$fs0, $a0, %pc_lo12(.LCPI6_0)
	movgr2fr.d	$fs1, $zero
	move	$a0, $s2
	move	$s4, $s0
	b	.LBB6_18
	.p2align	4, , 16
.LBB6_17:                               #   in Loop: Header=BB6_18 Depth=1
	fld.d	$fa1, $s8, 0
	fadd.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $s8, 0
	fld.d	$fa1, $s7, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	fst.d	$fa0, $s7, 0
	move	$a0, $s5
	move	$s4, $fp
	ori	$a1, $zero, 12
	beq	$fp, $a1, .LBB6_23
.LBB6_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_20 Depth 2
	addi.d	$fp, $s4, 1
	alsl.d	$a1, $fp, $s3, 2
	ld.w	$s5, $a1, 92
	fmov.d	$fa1, $fs1
	bge	$a0, $s5, .LBB6_21
# %bb.19:                               # %.lr.ph163.us.preheader
                                        #   in Loop: Header=BB6_18 Depth=1
	slli.d	$a1, $s4, 3
	alsl.d	$a1, $s4, $a1, 2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ldx.w	$a1, $a2, $a1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	sll.w	$a1, $a1, $a2
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	sub.w	$a1, $a2, $a1
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	fldx.d	$fa0, $a2, $a1
	slli.d	$a1, $a0, 3
	alsl.d	$a1, $a0, $a1, 2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	slli.d	$a2, $a0, 4
	alsl.d	$a2, $a0, $a2, 3
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	sub.d	$a3, $s5, $a0
	fmov.d	$fa1, $fs1
	.p2align	4, , 16
.LBB6_20:                               # %.lr.ph163.us
                                        #   Parent Loop BB6_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a1, 0
	fld.d	$fa2, $a2, 0
	slli.d	$a4, $a4, 3
	fldx.d	$fa3, $s6, $a4
	fabs.d	$fa2, $fa2
	fneg.d	$fa3, $fa3
	fmadd.d	$fa2, $fa3, $fa0, $fa2
	fmadd.d	$fa1, $fa2, $fa2, $fa1
	addi.d	$a1, $a1, 12
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 24
	bnez	$a3, .LBB6_20
.LBB6_21:                               # %._crit_edge164.us
                                        #   in Loop: Header=BB6_18 Depth=1
	sub.d	$a0, $s5, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a0, $s4, $a0, 3
	fst.d	$fa0, $a0, 168
	slli.d	$a0, $s4, 4
	alsl.d	$a0, $s4, $a0, 3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	fldx.d	$fa1, $a1, $a0
	fdiv.d	$fa0, $fa0, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fs0
	fsel	$fa0, $fa0, $fs0, $fcc0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	vldi	$vr1, -988
	fmul.d	$fa0, $fa0, $fa1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$a0, $s4, $a0, 3
	fcmp.cule.d	$fcc0, $fa0, $fs1
	fst.d	$fa0, $a0, 168
	bcnez	$fcc0, .LBB6_17
# %bb.22:                               #   in Loop: Header=BB6_18 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	fld.d	$fa1, $a0, 0
	addi.w	$s1, $s1, 1
	fadd.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $a0, 0
	b	.LBB6_17
.LBB6_23:                               # %._crit_edge171.us
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 48
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 92
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 184
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 4
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	movgr2fr.d	$fs1, $zero
	move	$a0, $s2
	move	$s4, $s0
	b	.LBB6_25
	.p2align	4, , 16
.LBB6_24:                               #   in Loop: Header=BB6_25 Depth=1
	fld.d	$fa1, $s8, 0
	fadd.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $s8, 0
	fld.d	$fa1, $s7, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	fst.d	$fa0, $s7, 0
	move	$a0, $s5
	move	$s4, $fp
	ori	$a1, $zero, 12
	beq	$fp, $a1, .LBB6_30
.LBB6_25:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_27 Depth 2
	addi.d	$fp, $s4, 1
	alsl.d	$a1, $fp, $s3, 2
	ld.w	$s5, $a1, 92
	fmov.d	$fa1, $fs1
	bge	$a0, $s5, .LBB6_28
# %bb.26:                               # %.lr.ph163.us.preheader.1
                                        #   in Loop: Header=BB6_25 Depth=1
	slli.d	$a1, $s4, 3
	alsl.d	$a1, $s4, $a1, 2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ldx.w	$a1, $a2, $a1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	sll.w	$a1, $a1, $a2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	sub.w	$a1, $a2, $a1
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	fldx.d	$fa0, $a2, $a1
	sub.d	$a1, $s5, $a0
	slli.d	$a2, $a0, 3
	alsl.d	$a2, $a0, $a2, 2
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	slli.d	$a3, $a0, 4
	alsl.d	$a3, $a0, $a3, 3
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	fmov.d	$fa1, $fs1
	.p2align	4, , 16
.LBB6_27:                               # %.lr.ph163.us.1
                                        #   Parent Loop BB6_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a2, 0
	fld.d	$fa2, $a3, 0
	slli.d	$a4, $a4, 3
	fldx.d	$fa3, $s6, $a4
	fabs.d	$fa2, $fa2
	fneg.d	$fa3, $fa3
	fmadd.d	$fa2, $fa3, $fa0, $fa2
	fmadd.d	$fa1, $fa2, $fa2, $fa1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 12
	addi.d	$a3, $a3, 24
	bnez	$a1, .LBB6_27
.LBB6_28:                               # %._crit_edge164.us.1
                                        #   in Loop: Header=BB6_25 Depth=1
	sub.d	$a0, $s5, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a0, $s4, $a0, 3
	fst.d	$fa0, $a0, 336
	slli.d	$a0, $s4, 4
	alsl.d	$a0, $s4, $a0, 3
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	fldx.d	$fa1, $a1, $a0
	fdiv.d	$fa0, $fa0, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fs0
	fsel	$fa0, $fa0, $fs0, $fcc0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	vldi	$vr1, -988
	fmul.d	$fa0, $fa0, $fa1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$a0, $s4, $a0, 3
	fcmp.cule.d	$fcc0, $fa0, $fs1
	fst.d	$fa0, $a0, 336
	bcnez	$fcc0, .LBB6_24
# %bb.29:                               #   in Loop: Header=BB6_25 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	fld.d	$fa1, $a0, 0
	addi.w	$s1, $s1, 1
	fadd.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $a0, 0
	b	.LBB6_24
.LBB6_30:                               # %._crit_edge171.us.1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 52
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 96
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.d	$fp, $a0, 192
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	movgr2fr.d	$fs1, $zero
	b	.LBB6_32
	.p2align	4, , 16
.LBB6_31:                               #   in Loop: Header=BB6_32 Depth=1
	fld.d	$fa1, $s8, 0
	fadd.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $s8, 0
	fld.d	$fa1, $s7, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	fst.d	$fa0, $s7, 0
	move	$s2, $s4
	move	$s0, $s5
	ori	$a0, $zero, 12
	beq	$s5, $a0, .LBB6_37
.LBB6_32:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_34 Depth 2
	addi.d	$s5, $s0, 1
	alsl.d	$a0, $s5, $s3, 2
	ld.w	$s4, $a0, 92
	fmov.d	$fa1, $fs1
	bge	$s2, $s4, .LBB6_35
# %bb.33:                               # %.lr.ph163.us.preheader.2
                                        #   in Loop: Header=BB6_32 Depth=1
	slli.d	$a0, $s0, 3
	alsl.d	$a0, $s0, $a0, 2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	sll.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	sub.w	$a0, $a1, $a0
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	fldx.d	$fa0, $a1, $a0
	sub.d	$a0, $s4, $s2
	slli.d	$a1, $s2, 3
	alsl.d	$a1, $s2, $a1, 2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	slli.d	$a2, $s2, 4
	alsl.d	$a2, $s2, $a2, 3
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	fmov.d	$fa1, $fs1
	.p2align	4, , 16
.LBB6_34:                               # %.lr.ph163.us.2
                                        #   Parent Loop BB6_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a1, 0
	fld.d	$fa2, $a2, 0
	slli.d	$a3, $a3, 3
	fldx.d	$fa3, $s6, $a3
	fabs.d	$fa2, $fa2
	fneg.d	$fa3, $fa3
	fmadd.d	$fa2, $fa3, $fa0, $fa2
	fmadd.d	$fa1, $fa2, $fa2, $fa1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 12
	addi.d	$a2, $a2, 24
	bnez	$a0, .LBB6_34
.LBB6_35:                               # %._crit_edge164.us.2
                                        #   in Loop: Header=BB6_32 Depth=1
	sub.d	$a0, $s4, $s2
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a0, $s0, $a0, 3
	fst.d	$fa0, $a0, 504
	slli.d	$a0, $s0, 4
	alsl.d	$a0, $s0, $a0, 3
	fldx.d	$fa1, $fp, $a0
	fdiv.d	$fa0, $fa0, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fs0
	fsel	$fa0, $fa0, $fs0, $fcc0
	pcaddu18i	$ra, %call36(log10)
	jirl	$ra, $ra, 0
	vldi	$vr1, -988
	fmul.d	$fa0, $fa0, $fa1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$a0, $s0, $a0, 3
	fcmp.cule.d	$fcc0, $fa0, $fs1
	fst.d	$fa0, $a0, 504
	bcnez	$fcc0, .LBB6_31
# %bb.36:                               #   in Loop: Header=BB6_32 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	fld.d	$fa1, $a0, 0
	addi.w	$s1, $s1, 1
	fadd.d	$fa1, $fa0, $fa1
	fst.d	$fa1, $a0, 0
	b	.LBB6_31
.LBB6_37:                               # %._crit_edge171.us.2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	addi.w	$a3, $a0, 36
	addi.w	$a1, $a3, 0
	ori	$a0, $zero, 2
	blt	$a1, $a0, .LBB6_13
.LBB6_38:
	fld.d	$fa0, $s8, 0
	bstrpick.d	$a1, $a3, 31, 0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s8, 0
	bge	$s1, $a0, .LBB6_14
	b	.LBB6_15
.Lfunc_end6:
	.size	calc_noise1, .Lfunc_end6-calc_noise1
                                        # -- End function
	.globl	quant_compare                   # -- Begin function quant_compare
	.p2align	5
	.type	quant_compare,@function
quant_compare:                          # @quant_compare
# %bb.0:
	beqz	$a0, .LBB7_5
# %bb.1:
	fcmp.clt.d	$fcc0, $fa5, $fa2
	addi.d	$a1, $a0, -3
	ori	$a2, $zero, 3
	fcmp.clt.d	$fcc1, $fa3, $fa0
	bltu	$a2, $a1, .LBB7_14
# %bb.2:
	slli.d	$a0, $a1, 2
	pcalau12i	$a1, %pc_hi20(.LJTI7_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI7_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB7_3:                                # %.thread
	vldi	$vr0, -1024
	fadd.d	$fa0, $fa2, $fa0
	fcmp.clt.d	$fcc0, $fa5, $fa0
.LBB7_4:                                # %.thread110
	movcf2gr	$a0, $fcc1
	movcf2gr	$a1, $fcc0
	and	$a0, $a0, $a1
	ret
.LBB7_5:                                # %.thread115
	slt	$a0, $a2, $a1
	xor	$a1, $a2, $a1
	fcmp.cle.d	$fcc0, $fa4, $fa1
	sltui	$a1, $a1, 1
	movcf2gr	$a2, $fcc0
	and	$a1, $a1, $a2
	or	$a0, $a0, $a1
	ret
.LBB7_6:
	fcmp.ceq.d	$fcc0, $fa4, $fa1
	fcmp.clt.d	$fcc2, $fa4, $fa1
	movcf2gr	$a0, $fcc1
	movcf2gr	$a1, $fcc0
	and	$a0, $a0, $a1
	movcf2gr	$a1, $fcc2
	or	$a0, $a1, $a0
	ret
.LBB7_7:
	fcmp.clt.d	$fcc1, $fa4, $fa1
	ori	$a0, $zero, 1
	bcnez	$fcc1, .LBB7_13
# %bb.8:
	fcmp.ceq.d	$fcc1, $fa4, $fa1
	fcmp.cune.d	$fcc2, $fa4, $fa1
	movcf2gr	$a0, $fcc1
	bcnez	$fcc2, .LBB7_13
# %bb.9:
	bcnez	$fcc0, .LBB7_13
# %bb.10:
	fcmp.ceq.d	$fcc0, $fa5, $fa2
	fcmp.cle.d	$fcc1, $fa3, $fa0
	b	.LBB7_4
.LBB7_11:
	vldi	$vr6, -1024
	fcmp.cule.d	$fcc0, $fa2, $fa6
	ori	$a0, $zero, 1
	bcnez	$fcc0, .LBB7_15
# %bb.12:
	movgr2fr.d	$fa6, $zero
	fcmp.cle.d	$fcc0, $fa5, $fa6
	bceqz	$fcc0, .LBB7_15
.LBB7_13:                               # %.thread110
	ret
.LBB7_14:
	addi.d	$a1, $a0, -1
	sltui	$a1, $a1, 1
	movcf2gr	$a2, $fcc0
	and	$a1, $a1, $a2
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	movcf2gr	$a2, $fcc1
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$a0, $a2, $a0
	ret
.LBB7_15:
	vldi	$vr6, -1024
	fadd.d	$fa6, $fa2, $fa6
	fcmp.cule.d	$fcc1, $fa0, $fa3
	fcmp.cule.d	$fcc0, $fa6, $fa5
	bcnez	$fcc1, .LBB7_19
# %bb.16:
	bcnez	$fcc0, .LBB7_19
# %bb.17:
	movgr2fr.d	$fa6, $zero
	fcmp.cule.d	$fcc1, $fa6, $fa2
	bcnez	$fcc1, .LBB7_19
# %bb.18:
	fcmp.cle.d	$fcc1, $fa5, $fa6
	bcnez	$fcc1, .LBB7_13
.LBB7_19:
	fadd.d	$fa0, $fa0, $fa1
	movgr2fr.d	$fa6, $zero
	bcnez	$fcc0, .LBB7_23
# %bb.20:
	fcmp.cule.d	$fcc0, $fa2, $fa6
	bcnez	$fcc0, .LBB7_23
# %bb.21:
	fcmp.cule.d	$fcc0, $fa0, $fa3
	bcnez	$fcc0, .LBB7_23
# %bb.22:
	fcmp.cle.d	$fcc0, $fa5, $fa6
	bcnez	$fcc0, .LBB7_13
.LBB7_23:
	fcmp.cule.d	$fcc0, $fa5, $fa6
	fadd.d	$fa3, $fa3, $fa4
	bcnez	$fcc0, .LBB7_27
# %bb.24:
	fcmp.cule.d	$fcc1, $fa0, $fa3
	bcnez	$fcc1, .LBB7_27
# %bb.25:
	vldi	$vr6, -800
	fcmp.cule.d	$fcc1, $fa2, $fa6
	bcnez	$fcc1, .LBB7_27
# %bb.26:
	vldi	$vr6, -912
	fadd.d	$fa6, $fa2, $fa6
	fcmp.clt.d	$fcc1, $fa5, $fa6
	bcnez	$fcc1, .LBB7_13
.LBB7_27:
	move	$a0, $zero
	bcnez	$fcc0, .LBB7_13
# %bb.28:
	vldi	$vr6, -784
	fcmp.cule.d	$fcc0, $fa2, $fa6
	bcnez	$fcc0, .LBB7_13
# %bb.29:
	vldi	$vr6, -904
	fadd.d	$fa2, $fa2, $fa6
	fcmp.cule.d	$fcc0, $fa2, $fa5
	bcnez	$fcc0, .LBB7_13
# %bb.30:
	fadd.d	$fa2, $fa4, $fa3
	fadd.d	$fa0, $fa1, $fa0
	fcmp.clt.d	$fcc0, $fa2, $fa0
	movcf2gr	$a0, $fcc0
	ret
.Lfunc_end7:
	.size	quant_compare, .Lfunc_end7-quant_compare
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI7_0:
	.word	.LBB7_3-.LJTI7_0
	.word	.LBB7_11-.LJTI7_0
	.word	.LBB7_6-.LJTI7_0
	.word	.LBB7_7-.LJTI7_0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0                          # -- Begin function amp_scalefac_bands
.LCPI8_0:
	.dword	0x3ffae89f995ad3ae              # double 1.6817928305074292
	.dword	0x3ff4bfdad5362a27              # double 1.2968395546510096
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI8_1:
	.dword	0xc08c200000000000              # double -900
.LCPI8_2:
	.dword	0x3ff0cccccccccccd              # double 1.05
	.text
	.globl	amp_scalefac_bands
	.p2align	5
	.type	amp_scalefac_bands,@function
amp_scalefac_bands:                     # @amp_scalefac_bands
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a5, $a1, 68
	ld.w	$a4, $a1, 80
	sltui	$a6, $a5, 1
	pcalau12i	$a5, %pc_hi20(.LCPI8_1)
	fld.d	$fa1, $a5, %pc_lo12(.LCPI8_1)
	beqz	$a4, .LBB8_3
# %bb.1:                                # %.lr.ph.preheader
	bstrpick.d	$a5, $a4, 31, 0
	move	$a7, $a3
	.p2align	4, , 16
.LBB8_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a7, 0
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fsel	$fa1, $fa1, $fa0, $fcc0
	addi.d	$a5, $a5, -1
	addi.d	$a7, $a7, 8
	bnez	$a5, .LBB8_2
.LBB8_3:                                # %._crit_edge
	ld.w	$a5, $a1, 84
	slli.d	$a6, $a6, 3
	pcalau12i	$a7, %pc_hi20(.LCPI8_0)
	ori	$t0, $zero, 11
	addi.d	$a7, $a7, %pc_lo12(.LCPI8_0)
	bltu	$t0, $a5, .LBB8_6
# %bb.4:                                # %.preheader74.preheader
	alsl.d	$t0, $a5, $a3, 3
	addi.d	$t0, $t0, 336
	addi.d	$t1, $a5, 1
	ori	$t2, $zero, 12
	.p2align	4, , 16
.LBB8_5:                                # %.preheader74
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $t0, -168
	fld.d	$fa2, $t0, 0
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fld.d	$fa3, $t0, 168
	fsel	$fa0, $fa1, $fa0, $fcc0
	fcmp.clt.d	$fcc0, $fa0, $fa2
	fsel	$fa0, $fa0, $fa2, $fcc0
	fcmp.clt.d	$fcc0, $fa0, $fa3
	fsel	$fa1, $fa0, $fa3, $fcc0
	bstrpick.d	$t3, $t1, 31, 0
	addi.d	$t0, $t0, 8
	addi.d	$t1, $t1, 1
	bne	$t3, $t2, .LBB8_5
.LBB8_6:                                # %._crit_edge81
	pcalau12i	$t0, %pc_hi20(.LCPI8_2)
	fld.d	$fa2, $t0, %pc_lo12(.LCPI8_2)
	fldx.d	$fa0, $a7, $a6
	fmul.d	$fa1, $fa1, $fa2
	movgr2fr.d	$fa2, $zero
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa2, $fa1, $fcc0
	beqz	$a4, .LBB8_20
# %bb.7:                                # %.lr.ph88.preheader
	move	$a4, $zero
	pcalau12i	$a5, %got_pc_hi20(scalefac_band)
	ld.d	$a5, $a5, %got_pc_lo12(scalefac_band)
	vreplvei.d	$vr2, $vr0, 0
	addi.d	$a6, $a0, 16
	ori	$a7, $zero, 4
	b	.LBB8_10
	.p2align	4, , 16
.LBB8_8:                                # %.lr.ph88..loopexit73_crit_edge
                                        #   in Loop: Header=BB8_10 Depth=1
	addi.d	$a4, $a4, 1
.LBB8_9:                                # %.loopexit73
                                        #   in Loop: Header=BB8_10 Depth=1
	ld.wu	$t0, $a1, 80
	bgeu	$a4, $t0, .LBB8_19
.LBB8_10:                               # %.lr.ph88
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_15 Depth 2
                                        #     Child Loop BB8_18 Depth 2
	slli.d	$t0, $a4, 3
	fldx.d	$fa3, $a3, $t0
	fcmp.clt.d	$fcc0, $fa1, $fa3
	bceqz	$fcc0, .LBB8_8
# %bb.11:                               #   in Loop: Header=BB8_10 Depth=1
	slli.d	$t0, $a4, 2
	ldx.w	$t1, $a2, $t0
	addi.d	$t1, $t1, 1
	stx.w	$t1, $a2, $t0
	ldx.w	$t4, $a5, $t0
	addi.d	$a4, $a4, 1
	slli.d	$t0, $a4, 2
	ldx.w	$t0, $a5, $t0
	bge	$t4, $t0, .LBB8_9
# %bb.12:                               # %.lr.ph85.preheader
                                        #   in Loop: Header=BB8_10 Depth=1
	sub.d	$t2, $t0, $t4
	bgeu	$t2, $a7, .LBB8_14
# %bb.13:                               #   in Loop: Header=BB8_10 Depth=1
	move	$t1, $t4
	b	.LBB8_17
.LBB8_14:                               # %vector.ph
                                        #   in Loop: Header=BB8_10 Depth=1
	move	$t3, $t2
	bstrins.d	$t3, $zero, 1, 0
	add.d	$t1, $t3, $t4
	alsl.d	$t4, $t4, $a6, 3
	move	$t5, $t3
	.p2align	4, , 16
.LBB8_15:                               # %vector.body
                                        #   Parent Loop BB8_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $t4, -16
	vld	$vr4, $t4, 0
	vfmul.d	$vr3, $vr2, $vr3
	vfmul.d	$vr4, $vr2, $vr4
	vst	$vr3, $t4, -16
	vst	$vr4, $t4, 0
	addi.d	$t5, $t5, -4
	addi.d	$t4, $t4, 32
	bnez	$t5, .LBB8_15
# %bb.16:                               # %middle.block
                                        #   in Loop: Header=BB8_10 Depth=1
	beq	$t2, $t3, .LBB8_9
.LBB8_17:                               # %.lr.ph85.preheader189
                                        #   in Loop: Header=BB8_10 Depth=1
	alsl.d	$t2, $t1, $a0, 3
	sub.d	$t0, $t0, $t1
	.p2align	4, , 16
.LBB8_18:                               # %.lr.ph85
                                        #   Parent Loop BB8_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa3, $t2, 0
	fmul.d	$fa3, $fa0, $fa3
	fst.d	$fa3, $t2, 0
	addi.d	$t0, $t0, -1
	addi.d	$t2, $t2, 8
	bnez	$t0, .LBB8_18
	b	.LBB8_9
.LBB8_19:                               # %.preheader.loopexit
	ld.w	$a5, $a1, 84
.LBB8_20:                               # %.preheader
	ori	$a6, $zero, 12
	bgeu	$a5, $a6, .LBB8_61
# %bb.21:                               # %.lr.ph94
	pcalau12i	$a4, %got_pc_hi20(scalefac_band)
	ld.d	$a4, $a4, %got_pc_lo12(scalefac_band)
	addi.d	$a7, $a3, 168
	addi.d	$t0, $a2, 88
	addi.d	$a4, $a4, 92
	ori	$t1, $zero, 2
	b	.LBB8_24
	.p2align	4, , 16
.LBB8_22:                               # %..loopexit_crit_edge
                                        #   in Loop: Header=BB8_24 Depth=1
	addi.d	$a5, $a5, 1
.LBB8_23:                               # %.loopexit
                                        #   in Loop: Header=BB8_24 Depth=1
	beq	$a5, $a6, .LBB8_33
.LBB8_24:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_29 Depth 2
                                        #     Child Loop BB8_32 Depth 2
	slli.d	$t2, $a5, 3
	fldx.d	$fa2, $a7, $t2
	fcmp.clt.d	$fcc0, $fa1, $fa2
	bceqz	$fcc0, .LBB8_22
# %bb.25:                               #   in Loop: Header=BB8_24 Depth=1
	alsl.d	$t2, $a5, $t2, 2
	ldx.w	$t3, $t0, $t2
	addi.d	$t3, $t3, 1
	stx.w	$t3, $t0, $t2
	slli.d	$t2, $a5, 2
	ldx.w	$t6, $a4, $t2
	addi.d	$a5, $a5, 1
	slli.d	$t2, $a5, 2
	ldx.w	$t2, $a4, $t2
	bge	$t6, $t2, .LBB8_23
# %bb.26:                               # %.lr.ph91.preheader
                                        #   in Loop: Header=BB8_24 Depth=1
	sub.d	$t4, $t2, $t6
	bgeu	$t4, $t1, .LBB8_28
# %bb.27:                               #   in Loop: Header=BB8_24 Depth=1
	move	$t3, $t6
	b	.LBB8_31
.LBB8_28:                               # %vector.ph147
                                        #   in Loop: Header=BB8_24 Depth=1
	move	$t5, $t4
	bstrins.d	$t5, $zero, 0, 0
	add.d	$t3, $t5, $t6
	slli.d	$t7, $t6, 4
	alsl.d	$t6, $t6, $t7, 3
	add.d	$t6, $a0, $t6
	move	$t7, $t5
	.p2align	4, , 16
.LBB8_29:                               # %vector.body150
                                        #   Parent Loop BB8_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $t6, 0
	fld.d	$fa3, $t6, 24
	fmul.d	$fa2, $fa0, $fa2
	fmul.d	$fa3, $fa0, $fa3
	fst.d	$fa2, $t6, 0
	fst.d	$fa3, $t6, 24
	addi.d	$t7, $t7, -2
	addi.d	$t6, $t6, 48
	bnez	$t7, .LBB8_29
# %bb.30:                               # %middle.block154
                                        #   in Loop: Header=BB8_24 Depth=1
	beq	$t4, $t5, .LBB8_23
.LBB8_31:                               # %.lr.ph91.preheader188
                                        #   in Loop: Header=BB8_24 Depth=1
	slli.d	$t4, $t3, 4
	alsl.d	$t4, $t3, $t4, 3
	add.d	$t4, $a0, $t4
	sub.d	$t2, $t2, $t3
	.p2align	4, , 16
.LBB8_32:                               # %.lr.ph91
                                        #   Parent Loop BB8_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $t4, 0
	fmul.d	$fa2, $fa0, $fa2
	fst.d	$fa2, $t4, 0
	addi.d	$t2, $t2, -1
	addi.d	$t4, $t4, 24
	bnez	$t2, .LBB8_32
	b	.LBB8_23
.LBB8_33:                               # %._crit_edge95
	ld.w	$a5, $a1, 84
	ori	$a6, $zero, 11
	bltu	$a6, $a5, .LBB8_61
# %bb.34:                               # %.lr.ph94.1
	addi.d	$a6, $a3, 336
	addi.d	$a7, $a2, 92
	addi.d	$t0, $a0, 8
	addi.d	$t1, $a0, 32
	ori	$t2, $zero, 2
	ori	$t3, $zero, 24
	ori	$t4, $zero, 12
	b	.LBB8_37
	.p2align	4, , 16
.LBB8_35:                               # %..loopexit.1_crit_edge
                                        #   in Loop: Header=BB8_37 Depth=1
	addi.d	$a5, $a5, 1
.LBB8_36:                               # %.loopexit.1
                                        #   in Loop: Header=BB8_37 Depth=1
	beq	$a5, $t4, .LBB8_47
.LBB8_37:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_45 Depth 2
                                        #     Child Loop BB8_41 Depth 2
	slli.d	$t5, $a5, 3
	fldx.d	$fa2, $a6, $t5
	fcmp.clt.d	$fcc0, $fa1, $fa2
	bceqz	$fcc0, .LBB8_35
# %bb.38:                               #   in Loop: Header=BB8_37 Depth=1
	alsl.d	$t5, $a5, $t5, 2
	ldx.w	$t6, $a7, $t5
	addi.d	$t6, $t6, 1
	stx.w	$t6, $a7, $t5
	slli.d	$t5, $a5, 2
	ldx.w	$t5, $a4, $t5
	addi.d	$a5, $a5, 1
	slli.d	$t6, $a5, 2
	ldx.w	$t6, $a4, $t6
	bge	$t5, $t6, .LBB8_36
# %bb.39:                               # %.lr.ph91.preheader.1
                                        #   in Loop: Header=BB8_37 Depth=1
	sub.d	$t7, $t6, $t5
	bgeu	$t7, $t2, .LBB8_42
.LBB8_40:                               # %.lr.ph91.1.preheader
                                        #   in Loop: Header=BB8_37 Depth=1
	slli.d	$t7, $t5, 4
	alsl.d	$t7, $t5, $t7, 3
	add.d	$t7, $t0, $t7
	sub.d	$t5, $t6, $t5
	.p2align	4, , 16
.LBB8_41:                               # %.lr.ph91.1
                                        #   Parent Loop BB8_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $t7, 0
	fmul.d	$fa2, $fa0, $fa2
	fst.d	$fa2, $t7, 0
	addi.d	$t5, $t5, -1
	addi.d	$t7, $t7, 24
	bnez	$t5, .LBB8_41
	b	.LBB8_36
.LBB8_42:                               # %vector.scevcheck
                                        #   in Loop: Header=BB8_37 Depth=1
	nor	$t8, $t5, $zero
	add.d	$t8, $t8, $t6
	mul.d	$fp, $t5, $t3
	add.d	$s0, $t0, $fp
	mul.d	$s1, $t8, $t3
	add.d	$s1, $s0, $s1
	bltu	$s1, $s0, .LBB8_40
# %bb.43:                               # %vector.scevcheck
                                        #   in Loop: Header=BB8_37 Depth=1
	mulh.du	$t8, $t8, $t3
	sltu	$t8, $zero, $t8
	bnez	$t8, .LBB8_40
# %bb.44:                               # %vector.ph160
                                        #   in Loop: Header=BB8_37 Depth=1
	move	$t8, $t7
	bstrins.d	$t8, $zero, 0, 0
	add.d	$t5, $t8, $t5
	add.d	$fp, $t1, $fp
	move	$s0, $t8
	.p2align	4, , 16
.LBB8_45:                               # %vector.body163
                                        #   Parent Loop BB8_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $fp, -24
	fld.d	$fa3, $fp, 0
	fmul.d	$fa2, $fa0, $fa2
	fmul.d	$fa3, $fa0, $fa3
	fst.d	$fa2, $fp, -24
	fst.d	$fa3, $fp, 0
	addi.d	$s0, $s0, -2
	addi.d	$fp, $fp, 48
	bnez	$s0, .LBB8_45
# %bb.46:                               # %middle.block167
                                        #   in Loop: Header=BB8_37 Depth=1
	beq	$t7, $t8, .LBB8_36
	b	.LBB8_40
.LBB8_47:                               # %._crit_edge95.1
	ld.w	$a1, $a1, 84
	ori	$a5, $zero, 11
	bltu	$a5, $a1, .LBB8_61
# %bb.48:                               # %.lr.ph94.2
	addi.d	$a3, $a3, 504
	addi.d	$a2, $a2, 96
	addi.d	$a5, $a0, 16
	addi.d	$a0, $a0, 40
	ori	$a6, $zero, 2
	ori	$a7, $zero, 24
	ori	$t0, $zero, 12
	b	.LBB8_51
	.p2align	4, , 16
.LBB8_49:                               # %..loopexit.2_crit_edge
                                        #   in Loop: Header=BB8_51 Depth=1
	addi.d	$a1, $a1, 1
.LBB8_50:                               # %.loopexit.2
                                        #   in Loop: Header=BB8_51 Depth=1
	beq	$a1, $t0, .LBB8_61
.LBB8_51:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_59 Depth 2
                                        #     Child Loop BB8_55 Depth 2
	slli.d	$t1, $a1, 3
	fldx.d	$fa2, $a3, $t1
	fcmp.clt.d	$fcc0, $fa1, $fa2
	bceqz	$fcc0, .LBB8_49
# %bb.52:                               #   in Loop: Header=BB8_51 Depth=1
	alsl.d	$t1, $a1, $t1, 2
	ldx.w	$t2, $a2, $t1
	addi.d	$t2, $t2, 1
	stx.w	$t2, $a2, $t1
	slli.d	$t1, $a1, 2
	ldx.w	$t1, $a4, $t1
	addi.d	$a1, $a1, 1
	slli.d	$t2, $a1, 2
	ldx.w	$t2, $a4, $t2
	bge	$t1, $t2, .LBB8_50
# %bb.53:                               # %.lr.ph91.preheader.2
                                        #   in Loop: Header=BB8_51 Depth=1
	sub.d	$t3, $t2, $t1
	bgeu	$t3, $a6, .LBB8_56
.LBB8_54:                               # %.lr.ph91.2.preheader
                                        #   in Loop: Header=BB8_51 Depth=1
	slli.d	$t3, $t1, 4
	alsl.d	$t3, $t1, $t3, 3
	add.d	$t3, $a5, $t3
	sub.d	$t1, $t2, $t1
	.p2align	4, , 16
.LBB8_55:                               # %.lr.ph91.2
                                        #   Parent Loop BB8_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $t3, 0
	fmul.d	$fa2, $fa0, $fa2
	fst.d	$fa2, $t3, 0
	addi.d	$t1, $t1, -1
	addi.d	$t3, $t3, 24
	bnez	$t1, .LBB8_55
	b	.LBB8_50
.LBB8_56:                               # %vector.scevcheck170
                                        #   in Loop: Header=BB8_51 Depth=1
	nor	$t4, $t1, $zero
	add.d	$t4, $t4, $t2
	mul.d	$t5, $t1, $a7
	add.d	$t6, $a5, $t5
	mul.d	$t7, $t4, $a7
	add.d	$t7, $t6, $t7
	bltu	$t7, $t6, .LBB8_54
# %bb.57:                               # %vector.scevcheck170
                                        #   in Loop: Header=BB8_51 Depth=1
	mulh.du	$t4, $t4, $a7
	sltu	$t4, $zero, $t4
	bnez	$t4, .LBB8_54
# %bb.58:                               # %vector.ph178
                                        #   in Loop: Header=BB8_51 Depth=1
	move	$t4, $t3
	bstrins.d	$t4, $zero, 0, 0
	add.d	$t1, $t4, $t1
	add.d	$t5, $a0, $t5
	move	$t6, $t4
	.p2align	4, , 16
.LBB8_59:                               # %vector.body181
                                        #   Parent Loop BB8_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $t5, -24
	fld.d	$fa3, $t5, 0
	fmul.d	$fa2, $fa0, $fa2
	fmul.d	$fa3, $fa0, $fa3
	fst.d	$fa2, $t5, -24
	fst.d	$fa3, $t5, 0
	addi.d	$t6, $t6, -2
	addi.d	$t5, $t5, 48
	bnez	$t6, .LBB8_59
# %bb.60:                               # %middle.block185
                                        #   in Loop: Header=BB8_51 Depth=1
	beq	$t3, $t4, .LBB8_50
	b	.LBB8_54
.LBB8_61:                               # %.split.us
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end8:
	.size	amp_scalefac_bands, .Lfunc_end8-amp_scalefac_bands
                                        # -- End function
	.type	outer_loop.OldValue,@object     # @outer_loop.OldValue
	.data
	.p2align	2, 0x0
outer_loop.OldValue:
	.word	180                             # 0xb4
	.word	180                             # 0xb4
	.size	outer_loop.OldValue, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nr_of_sfb_block
