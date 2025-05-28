	.file	"functs.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function speedup_test
.LCPI0_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
.LCPI0_1:
	.dword	0x4059000000000000              # double 100
	.text
	.globl	speedup_test
	.p2align	5
	.type	speedup_test,@function
speedup_test:                           # @speedup_test
# %bb.0:
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(rewind)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 244
	addi.d	$a3, $sp, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 69
	.p2align	4, , 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 144
	addi.d	$a1, $sp, 244
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 244
	ori	$a1, $zero, 100
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 244
	bne	$a0, $s0, .LBB0_1
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 144
	addi.d	$a2, $sp, 44
	addi.d	$a3, $sp, 32
	addi.d	$a4, $sp, 16
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	addi.d	$a0, $sp, 244
	addi.d	$a2, $sp, 44
	addi.d	$a3, $sp, 32
	addi.d	$a4, $sp, 8
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 24
	sub.d	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(loop_time)
	st.d	$a1, $a0, %pc_lo12(loop_time)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	pcalau12i	$a0, %pc_hi20(prog_time)
	st.d	$a1, $a0, %pc_lo12(prog_time)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 24
	sub.d	$a0, $a0, $a1
	srli.d	$a1, $a0, 32
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI0_0)
	lu52i.d	$a2, $zero, 1107
	or	$a1, $a1, $a2
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa1, $fa1, $fa0
	lu12i.w	$a1, 275200
	ld.d	$a3, $sp, 8
	bstrins.d	$a0, $a1, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa1, $fa2, $fa1
	srli.d	$a0, $a3, 32
	or	$a0, $a0, $a2
	movgr2fr.d	$fa2, $a0
	fsub.d	$fa0, $fa2, $fa0
	bstrins.d	$a3, $a1, 63, 32
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_1)
	movgr2fr.d	$fa3, $a3
	fadd.d	$fa0, $fa3, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa0, $fa2
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(rewind)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.Lfunc_end0:
	.size	speedup_test, .Lfunc_end0-speedup_test
                                        # -- End function
	.globl	imix_test                       # -- Begin function imix_test
	.p2align	5
	.type	imix_test,@function
imix_test:                              # @imix_test
# %bb.0:
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(rewind)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 236
	ori	$a1, $zero, 100
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 236
	addi.d	$a3, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	ori	$s1, $zero, 69
	.p2align	4, , 16
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $sp, 238
	addi.d	$a0, $a0, -58
	sltui	$a0, $a0, 1
	add.d	$s0, $s0, $a0
	addi.d	$a0, $sp, 136
	addi.d	$a1, $sp, 236
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 236
	ori	$a1, $zero, 100
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 236
	bne	$a0, $s1, .LBB1_1
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 136
	addi.d	$a2, $sp, 36
	addi.d	$a3, $sp, 24
	addi.d	$a4, $sp, 8
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(rewind)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.Lfunc_end1:
	.size	imix_test, .Lfunc_end1-imix_test
                                        # -- End function
	.globl	find_hard_raws                  # -- Begin function find_hard_raws
	.p2align	5
	.type	find_hard_raws,@function
find_hard_raws:                         # @find_hard_raws
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(hard_raw_list)
	ld.d	$a0, $a0, %got_pc_lo12(hard_raw_list)
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB2_4
.LBB2_1:                                # %._crit_edge
	ret
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph._crit_edge
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $a0, 0
.LBB2_3:                                #   in Loop: Header=BB2_4 Depth=1
	beqz	$a0, .LBB2_1
.LBB2_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 48
	ld.d	$a2, $a0, 32
	bgeu	$a2, $a1, .LBB2_2
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a1, $a0, 8
	ld.d	$a0, $a0, 0
	beqz	$a1, .LBB2_3
# %bb.6:                                #   in Loop: Header=BB2_4 Depth=1
	st.d	$a0, $a1, 0
	b	.LBB2_3
.Lfunc_end2:
	.size	find_hard_raws, .Lfunc_end2-find_hard_raws
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function specul_time_o
.LCPI3_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
	.text
	.globl	specul_time_o
	.p2align	5
	.type	specul_time_o,@function
specul_time_o:                          # @specul_time_o
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
	ori	$a6, $zero, 1
	move	$s1, $a5
	move	$s2, $a4
	move	$s0, $a3
	move	$fp, $a2
	move	$s3, $a1
	blt	$a1, $a6, .LBB3_8
# %bb.1:                                # %.lr.ph.preheader
	bne	$s3, $a6, .LBB3_3
# %bb.2:
	move	$a1, $zero
	b	.LBB3_6
.LBB3_3:                                # %vector.ph
	bstrpick.d	$a1, $s3, 30, 1
	slli.d	$a1, $a1, 1
	addi.d	$a2, $a0, 80
	move	$a3, $a1
	.p2align	4, , 16
.LBB3_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, -48
	ld.d	$a5, $a2, 8
	ld.d	$a6, $a2, -56
	ld.d	$a7, $a2, 0
	sub.d	$a4, $a4, $a6
	sub.d	$a5, $a5, $a7
	st.d	$a4, $a2, -40
	st.d	$a5, $a2, 16
	st.d	$zero, $a2, -32
	st.d	$zero, $a2, 24
	addi.d	$a3, $a3, -2
	addi.d	$a2, $a2, 112
	bnez	$a3, .LBB3_4
# %bb.5:                                # %middle.block
	beq	$a1, $s3, .LBB3_8
.LBB3_6:                                # %.lr.ph.preheader130
	sub.d	$a2, $s3, $a1
	ori	$a3, $zero, 56
	mul.d	$a1, $a1, $a3
	add.d	$a1, $a1, $a0
	addi.d	$a1, $a1, 48
	.p2align	4, , 16
.LBB3_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, -16
	ld.d	$a4, $a1, -24
	sub.d	$a3, $a3, $a4
	st.d	$a3, $a1, -8
	st.d	$zero, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 56
	bnez	$a2, .LBB3_7
.LBB3_8:                                # %.preheader81
	pcalau12i	$a1, %got_pc_hi20(hard_raw_list)
	ld.d	$a1, $a1, %got_pc_lo12(hard_raw_list)
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB3_13
# %bb.9:                                # %.lr.ph87.preheader
	move	$s4, $zero
	ori	$a2, $zero, 56
	b	.LBB3_11
	.p2align	4, , 16
.LBB3_10:                               #   in Loop: Header=BB3_11 Depth=1
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB3_14
.LBB3_11:                               # %.lr.ph87
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 24
	ld.d	$a4, $a1, 32
	ld.w	$a5, $a1, 40
	mul.d	$a3, $a3, $a2
	add.d	$a3, $a0, $a3
	ld.d	$a6, $a3, 48
	mul.d	$a3, $a5, $a2
	add.d	$a3, $a0, $a3
	ld.d	$a5, $a3, 48
	add.d	$a4, $a6, $a4
	bgeu	$a5, $a4, .LBB3_10
# %bb.12:                               #   in Loop: Header=BB3_11 Depth=1
	addi.d	$a3, $a3, 48
	st.d	$a4, $a3, 0
	addi.d	$s4, $s4, 1
	b	.LBB3_10
.LBB3_13:
	move	$s4, $zero
.LBB3_14:                               # %.preheader
	ori	$a1, $zero, 1
	blt	$s3, $a1, .LBB3_17
# %bb.15:                               # %.lr.ph89.preheader
	bne	$s3, $a1, .LBB3_18
# %bb.16:
	move	$a1, $zero
	b	.LBB3_21
.LBB3_17:                               # %._crit_edge
	ld.d	$s5, $a0, 40
	b	.LBB3_30
.LBB3_18:                               # %vector.ph106
	bstrpick.d	$a1, $s3, 30, 1
	slli.d	$a1, $a1, 1
	addi.d	$a2, $a0, 96
	move	$a3, $a1
	.p2align	4, , 16
.LBB3_19:                               # %vector.body109
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, -56
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a2, -48
	ld.d	$a7, $a2, 8
	add.d	$a4, $a6, $a4
	add.d	$a5, $a7, $a5
	st.d	$a4, $a2, -56
	st.d	$a5, $a2, 0
	addi.d	$a3, $a3, -2
	addi.d	$a2, $a2, 112
	bnez	$a3, .LBB3_19
# %bb.20:                               # %middle.block112
	beq	$a1, $s3, .LBB3_23
.LBB3_21:                               # %.lr.ph89.preheader129
	ori	$a2, $zero, 56
	mul.d	$a2, $a1, $a2
	add.d	$a2, $a2, $a0
	addi.d	$a2, $a2, 40
	sub.d	$a1, $s3, $a1
	.p2align	4, , 16
.LBB3_22:                               # %.lr.ph89
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	ld.d	$a4, $a2, 8
	add.d	$a3, $a4, $a3
	st.d	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 56
	bnez	$a1, .LBB3_22
.LBB3_23:                               # %.lr.ph93.preheader
	ld.d	$s5, $a0, 40
	ori	$a1, $zero, 4
	bgeu	$s3, $a1, .LBB3_25
# %bb.24:
	move	$a1, $zero
	b	.LBB3_28
.LBB3_25:                               # %vector.ph117
	bstrpick.d	$a1, $s3, 30, 2
	slli.d	$a1, $a1, 2
	vreplgr2vr.d	$vr0, $s5
	addi.d	$a2, $a0, 152
	move	$a3, $a1
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB3_26:                               # %vector.body120
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, -112
	ld.d	$a5, $a2, -56
	ld.d	$a6, $a2, 0
	ld.d	$a7, $a2, 56
	vinsgr2vr.d	$vr2, $a4, 0
	vinsgr2vr.d	$vr2, $a5, 1
	vinsgr2vr.d	$vr3, $a6, 0
	vinsgr2vr.d	$vr3, $a7, 1
	vmax.du	$vr0, $vr2, $vr0
	vmax.du	$vr1, $vr3, $vr1
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 224
	bnez	$a3, .LBB3_26
# %bb.27:                               # %middle.block124
	vmax.du	$vr0, $vr0, $vr1
	vreplvei.d	$vr1, $vr0, 1
	vmax.du	$vr0, $vr0, $vr1
	vpickve2gr.d	$s5, $vr0, 0
	beq	$a1, $s3, .LBB3_30
.LBB3_28:                               # %.lr.ph93.preheader127
	ori	$a2, $zero, 56
	mul.d	$a2, $a1, $a2
	add.d	$a0, $a2, $a0
	addi.d	$a0, $a0, 40
	sub.d	$a1, $s3, $a1
	.p2align	4, , 16
.LBB3_29:                               # %.lr.ph93
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 0
	sltu	$a3, $s5, $a2
	masknez	$a4, $s5, $a3
	maskeqz	$a2, $a2, $a3
	or	$s5, $a2, $a4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 56
	bnez	$a1, .LBB3_29
.LBB3_30:                               # %._crit_edge94
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	add.d	$a0, $s4, $s3
	mul.d	$a0, $a0, $s2
	mul.w	$a1, $s1, $s3
	add.d	$a0, $a0, $a1
	add.d	$s1, $a0, $s5
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$s6, $s0
	bstrins.d	$s6, $zero, 1, 1
	ori	$a0, $zero, 1
	pcalau12i	$s4, %pc_hi20(loop_time)
	lu52i.d	$s3, $zero, 1107
	pcalau12i	$s5, %pc_hi20(.LCPI3_0)
	lu12i.w	$s2, 275200
	beq	$s6, $a0, .LBB3_33
# %bb.31:
	bstrins.d	$s0, $zero, 0, 0
	ori	$a0, $zero, 2
	beq	$s0, $a0, .LBB3_34
.LBB3_32:
	bnez	$fp, .LBB3_35
	b	.LBB3_39
.LBB3_33:
	ld.d	$a0, $s4, %pc_lo12(loop_time)
	fld.d	$fa0, $s5, %pc_lo12(.LCPI3_0)
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s3
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa1, $fa1, $fa0
	bstrins.d	$a0, $s2, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa1, $fa2, $fa1
	srli.d	$a0, $s1, 32
	or	$a0, $a0, $s3
	movgr2fr.d	$fa2, $a0
	fsub.d	$fa0, $fa2, $fa0
	move	$a0, $s1
	bstrins.d	$a0, $s2, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa0, $fa2, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bstrins.d	$s0, $zero, 0, 0
	ori	$a0, $zero, 2
	bne	$s0, $a0, .LBB3_32
.LBB3_34:
	pcalau12i	$a0, %pc_hi20(prog_time)
	ld.d	$a0, $a0, %pc_lo12(prog_time)
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s3
	movgr2fr.d	$fa0, $a1
	fld.d	$fa1, $s5, %pc_lo12(.LCPI3_0)
	add.d	$a1, $a0, $s1
	bstrins.d	$a0, $s2, 63, 32
	ld.d	$a2, $s4, %pc_lo12(loop_time)
	movgr2fr.d	$fa2, $a0
	fsub.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	sub.d	$a0, $a1, $a2
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s3
	movgr2fr.d	$fa2, $a1
	fsub.d	$fa1, $fa2, $fa1
	bstrins.d	$a0, $s2, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa1, $fa2, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB3_39
.LBB3_35:
	ori	$a0, $zero, 1
	bne	$s6, $a0, .LBB3_37
# %bb.36:
	ld.d	$a0, $s4, %pc_lo12(loop_time)
	fld.d	$fa0, $s5, %pc_lo12(.LCPI3_0)
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s3
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa1, $fa1, $fa0
	bstrins.d	$a0, $s2, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa1, $fa2, $fa1
	srli.d	$a0, $s1, 32
	or	$a0, $a0, $s3
	movgr2fr.d	$fa2, $a0
	fsub.d	$fa0, $fa2, $fa0
	move	$a0, $s1
	bstrins.d	$a0, $s2, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa0, $fa2, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB3_37:
	ori	$a0, $zero, 2
	bne	$s0, $a0, .LBB3_39
# %bb.38:
	pcalau12i	$a0, %pc_hi20(prog_time)
	ld.d	$a0, $a0, %pc_lo12(prog_time)
	fld.d	$fa0, $s5, %pc_lo12(.LCPI3_0)
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s3
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa1, $fa1, $fa0
	add.d	$a1, $a0, $s1
	ld.d	$a2, $s4, %pc_lo12(loop_time)
	bstrins.d	$a0, $s2, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa1, $fa2, $fa1
	sub.d	$a0, $a1, $a2
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s3
	movgr2fr.d	$fa2, $a1
	fsub.d	$fa0, $fa2, $fa0
	bstrins.d	$a0, $s2, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa0, $fa2, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.LBB3_39:
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
.Lfunc_end3:
	.size	specul_time_o, .Lfunc_end3-specul_time_o
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function specul_time_r
.LCPI4_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
	.text
	.globl	specul_time_r
	.p2align	5
	.type	specul_time_r,@function
specul_time_r:                          # @specul_time_r
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	move	$s0, $a6
	move	$s1, $a5
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	move	$fp, $a2
	move	$s4, $a1
	move	$s5, $a0
	beqz	$a2, .LBB4_4
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB4_12
# %bb.2:                                # %.lr.ph.preheader
	bne	$s4, $a0, .LBB4_7
# %bb.3:
	move	$a0, $zero
	b	.LBB4_10
.LBB4_4:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB4_56
# %bb.5:                                # %.lr.ph206.preheader
	bne	$s4, $a0, .LBB4_51
# %bb.6:
	move	$a0, $zero
	b	.LBB4_54
.LBB4_7:                                # %vector.ph
	bstrpick.d	$a0, $s4, 30, 1
	slli.d	$a0, $a0, 1
	addi.d	$a1, $s5, 80
	move	$a2, $a0
	.p2align	4, , 16
.LBB4_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, -48
	ld.d	$a4, $a1, 8
	ld.d	$a5, $a1, -56
	ld.d	$a6, $a1, 0
	sub.d	$a3, $a3, $a5
	sub.d	$a4, $a4, $a6
	st.d	$a3, $a1, -40
	st.d	$a4, $a1, 16
	st.d	$zero, $a1, -32
	st.d	$zero, $a1, 24
	addi.d	$a2, $a2, -2
	addi.d	$a1, $a1, 112
	bnez	$a2, .LBB4_8
# %bb.9:                                # %middle.block
	beq	$a0, $s4, .LBB4_12
.LBB4_10:                               # %.lr.ph.preheader362
	sub.d	$a1, $s4, $a0
	ori	$a2, $zero, 56
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a0, $s5
	addi.d	$a0, $a0, 48
	.p2align	4, , 16
.LBB4_11:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, -16
	ld.d	$a3, $a0, -24
	sub.d	$a2, $a2, $a3
	st.d	$a2, $a0, -8
	st.d	$zero, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 56
	bnez	$a1, .LBB4_11
.LBB4_12:                               # %.preheader181
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	bge	$fp, $s4, .LBB4_30
# %bb.13:                               # %.lr.ph190.preheader
	move	$a0, $zero
	move	$a1, $zero
	addi.d	$a2, $fp, 1
	addi.d	$a3, $s5, 152
	addi.d	$a4, $s5, 48
	ori	$a5, $zero, 56
	mul.d	$a6, $fp, $a5
	add.d	$a7, $a6, $s5
	addi.d	$s2, $a7, 104
	slli.d	$t0, $fp, 1
	sub.d	$t1, $zero, $fp
	ori	$t2, $zero, 1
	ori	$t3, $zero, 4
	ori	$t4, $zero, 2
	vrepli.b	$vr0, 0
	move	$t5, $a2
	move	$t6, $fp
	b	.LBB4_16
	.p2align	4, , 16
.LBB4_14:                               # %.preheader179
                                        #   in Loop: Header=BB4_16 Depth=1
	move	$s6, $t6
.LBB4_15:                               # %.loopexit180
                                        #   in Loop: Header=BB4_16 Depth=1
	add.w	$a1, $a1, $fp
	addi.d	$a0, $a0, 1
	add.d	$s2, $s2, $a6
	add.d	$t0, $t0, $fp
	add.d	$t5, $t5, $fp
	sub.d	$t1, $t1, $fp
	bge	$s6, $s4, .LBB4_30
.LBB4_16:                               # %.lr.ph190
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_20 Depth 2
                                        #     Child Loop BB4_23 Depth 2
                                        #     Child Loop BB4_26 Depth 2
                                        #     Child Loop BB4_29 Depth 2
	move	$t7, $t6
	add.d	$t6, $t6, $fp
	blt	$fp, $t2, .LBB4_14
# %bb.17:                               # %.lr.ph185.preheader
                                        #   in Loop: Header=BB4_16 Depth=1
	addi.d	$a7, $a1, 1
	slt	$t8, $a7, $t7
	masknez	$a7, $a7, $t8
	maskeqz	$t8, $t7, $t8
	or	$a7, $t8, $a7
	sub.d	$s7, $a7, $a1
	bgeu	$s7, $t3, .LBB4_19
# %bb.18:                               #   in Loop: Header=BB4_16 Depth=1
	move	$t8, $zero
	move	$s6, $a1
	b	.LBB4_22
	.p2align	4, , 16
.LBB4_19:                               # %vector.ph271
                                        #   in Loop: Header=BB4_16 Depth=1
	move	$t8, $s7
	bstrins.d	$t8, $zero, 1, 0
	mul.d	$a7, $a1, $a5
	add.d	$ra, $a3, $a7
	move	$s8, $s7
	bstrins.d	$s8, $zero, 1, 0
	add.d	$s6, $s8, $a1
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB4_20:                               # %vector.body274
                                        #   Parent Loop BB4_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $ra, -112
	ld.d	$s3, $ra, -56
	ld.d	$s0, $ra, 0
	ld.d	$s1, $ra, 56
	vinsgr2vr.d	$vr3, $a7, 0
	vinsgr2vr.d	$vr3, $s3, 1
	vinsgr2vr.d	$vr4, $s0, 0
	vinsgr2vr.d	$vr4, $s1, 1
	ld.d	$a7, $ra, -104
	ld.d	$s0, $ra, -48
	ld.d	$s1, $ra, 8
	ld.d	$s3, $ra, 64
	vinsgr2vr.d	$vr5, $a7, 0
	vinsgr2vr.d	$vr5, $s0, 1
	vinsgr2vr.d	$vr6, $s1, 0
	vinsgr2vr.d	$vr6, $s3, 1
	vadd.d	$vr3, $vr5, $vr3
	vadd.d	$vr4, $vr6, $vr4
	vmax.du	$vr1, $vr3, $vr1
	vmax.du	$vr2, $vr4, $vr2
	addi.d	$t8, $t8, -4
	addi.d	$ra, $ra, 224
	bnez	$t8, .LBB4_20
# %bb.21:                               # %middle.block279
                                        #   in Loop: Header=BB4_16 Depth=1
	vmax.du	$vr1, $vr1, $vr2
	vreplvei.d	$vr2, $vr1, 1
	vmax.du	$vr1, $vr1, $vr2
	vpickve2gr.d	$t8, $vr1, 0
	beq	$s7, $s8, .LBB4_24
.LBB4_22:                               # %.lr.ph185.preheader358
                                        #   in Loop: Header=BB4_16 Depth=1
	mul.d	$a7, $s6, $a5
	add.d	$s7, $a4, $a7
	.p2align	4, , 16
.LBB4_23:                               # %.lr.ph185
                                        #   Parent Loop BB4_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $s7, -8
	ld.d	$s0, $s7, 0
	add.d	$a7, $s0, $a7
	sltu	$s0, $t8, $a7
	maskeqz	$a7, $a7, $s0
	masknez	$t8, $t8, $s0
	or	$t8, $a7, $t8
	addi.d	$s6, $s6, 1
	addi.d	$s7, $s7, 56
	blt	$s6, $t7, .LBB4_23
.LBB4_24:                               # %.lr.ph187.preheader
                                        #   in Loop: Header=BB4_16 Depth=1
	mul.d	$a7, $a0, $fp
	addi.d	$s0, $a0, 2
	mul.d	$s0, $s0, $fp
	add.d	$a7, $a2, $a7
	slt	$s1, $a7, $s0
	masknez	$a7, $a7, $s1
	maskeqz	$s0, $s0, $s1
	or	$a7, $s0, $a7
	nor	$s0, $a0, $zero
	mul.d	$s0, $s0, $fp
	add.d	$s7, $a7, $s0
	add.d	$s6, $t7, $fp
	bltu	$s7, $t4, .LBB4_28
# %bb.25:                               # %vector.ph259
                                        #   in Loop: Header=BB4_16 Depth=1
	slt	$a7, $t5, $t0
	masknez	$s0, $t5, $a7
	maskeqz	$a7, $t0, $a7
	or	$a7, $a7, $s0
	add.d	$s8, $a7, $t1
	bstrins.d	$s8, $zero, 0, 0
	move	$ra, $s7
	bstrins.d	$ra, $zero, 0, 0
	add.d	$t7, $t7, $ra
	move	$a7, $s2
	.p2align	4, , 16
.LBB4_26:                               # %vector.body262
                                        #   Parent Loop BB4_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$t8, $a7, -56
	st.d	$t8, $a7, 0
	addi.d	$s8, $s8, -2
	addi.d	$a7, $a7, 112
	bnez	$s8, .LBB4_26
# %bb.27:                               # %middle.block265
                                        #   in Loop: Header=BB4_16 Depth=1
	beq	$s7, $ra, .LBB4_15
.LBB4_28:                               # %.lr.ph187.preheader357
                                        #   in Loop: Header=BB4_16 Depth=1
	mul.d	$a7, $t7, $a5
	add.d	$a7, $a4, $a7
	.p2align	4, , 16
.LBB4_29:                               # %.lr.ph187
                                        #   Parent Loop BB4_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$t8, $a7, 0
	addi.d	$t7, $t7, 1
	addi.d	$a7, $a7, 56
	blt	$t7, $s6, .LBB4_29
	b	.LBB4_15
.LBB4_30:                               # %.preheader178
	pcalau12i	$a0, %got_pc_hi20(hard_raw_list)
	ld.d	$a0, $a0, %got_pc_lo12(hard_raw_list)
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB4_35
# %bb.31:                               # %.lr.ph195.preheader
	move	$a0, $zero
	ori	$a2, $zero, 56
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	b	.LBB4_33
	.p2align	4, , 16
.LBB4_32:                               #   in Loop: Header=BB4_33 Depth=1
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB4_36
.LBB4_33:                               # %.lr.ph195
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 24
	ld.d	$a7, $a1, 32
	ld.w	$a5, $a1, 40
	mul.d	$a3, $a3, $a2
	add.d	$a4, $s5, $a3
	ld.d	$a3, $a4, 48
	mul.d	$a5, $a5, $a2
	add.d	$a6, $s5, $a5
	ld.d	$a5, $a6, 48
	add.d	$a7, $a3, $a7
	bgeu	$a5, $a7, .LBB4_32
# %bb.34:                               #   in Loop: Header=BB4_33 Depth=1
	ld.d	$a4, $a4, 40
	addi.d	$a6, $a6, 48
	add.d	$a3, $a5, $a3
	add.d	$a3, $a3, $a4
	st.d	$a3, $a6, 0
	addi.d	$a0, $a0, 1
	b	.LBB4_32
.LBB4_35:
	move	$a0, $zero
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
.LBB4_36:                               # %.preheader177
	ori	$a1, $zero, 1
	blt	$s4, $a1, .LBB4_65
# %bb.37:                               # %.lr.ph198.preheader
	bne	$s4, $a1, .LBB4_39
# %bb.38:
	move	$a1, $zero
	b	.LBB4_42
.LBB4_39:                               # %vector.ph284
	bstrpick.d	$a1, $s4, 30, 1
	slli.d	$a1, $a1, 1
	addi.d	$a2, $s5, 96
	move	$a3, $a1
	.p2align	4, , 16
.LBB4_40:                               # %vector.body287
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, -56
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a2, -48
	ld.d	$a7, $a2, 8
	add.d	$a4, $a6, $a4
	add.d	$a5, $a7, $a5
	st.d	$a4, $a2, -56
	st.d	$a5, $a2, 0
	addi.d	$a3, $a3, -2
	addi.d	$a2, $a2, 112
	bnez	$a3, .LBB4_40
# %bb.41:                               # %middle.block290
	beq	$a1, $s4, .LBB4_44
.LBB4_42:                               # %.lr.ph198.preheader356
	ori	$a2, $zero, 56
	mul.d	$a2, $a1, $a2
	add.d	$a2, $a2, $s5
	addi.d	$a2, $a2, 40
	sub.d	$a1, $s4, $a1
	.p2align	4, , 16
.LBB4_43:                               # %.lr.ph198
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	ld.d	$a4, $a2, 8
	add.d	$a3, $a4, $a3
	st.d	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 56
	bnez	$a1, .LBB4_43
.LBB4_44:                               # %.lr.ph202.preheader
	ld.d	$a1, $s5, 40
	ori	$a2, $zero, 4
	bgeu	$s4, $a2, .LBB4_46
# %bb.45:
	move	$a2, $zero
	b	.LBB4_49
.LBB4_46:                               # %vector.ph295
	bstrpick.d	$a2, $s4, 30, 2
	slli.d	$a2, $a2, 2
	vreplgr2vr.d	$vr0, $a1
	addi.d	$a1, $s5, 152
	move	$a3, $a2
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB4_47:                               # %vector.body298
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, -112
	ld.d	$a5, $a1, -56
	ld.d	$a6, $a1, 0
	ld.d	$a7, $a1, 56
	vinsgr2vr.d	$vr2, $a4, 0
	vinsgr2vr.d	$vr2, $a5, 1
	vinsgr2vr.d	$vr3, $a6, 0
	vinsgr2vr.d	$vr3, $a7, 1
	vmax.du	$vr0, $vr2, $vr0
	vmax.du	$vr1, $vr3, $vr1
	addi.d	$a3, $a3, -4
	addi.d	$a1, $a1, 224
	bnez	$a3, .LBB4_47
# %bb.48:                               # %middle.block303
	vmax.du	$vr0, $vr0, $vr1
	vreplvei.d	$vr1, $vr0, 1
	vmax.du	$vr0, $vr0, $vr1
	vpickve2gr.d	$a1, $vr0, 0
	beq	$a2, $s4, .LBB4_78
.LBB4_49:                               # %.lr.ph202.preheader352
	ori	$a3, $zero, 56
	mul.d	$a3, $a2, $a3
	add.d	$a3, $a3, $s5
	addi.d	$a3, $a3, 40
	sub.d	$a2, $s4, $a2
	.p2align	4, , 16
.LBB4_50:                               # %.lr.ph202
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	sltu	$a5, $a1, $a4
	masknez	$a1, $a1, $a5
	maskeqz	$a4, $a4, $a5
	or	$a1, $a4, $a1
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 56
	bnez	$a2, .LBB4_50
	b	.LBB4_78
.LBB4_51:                               # %vector.ph310
	bstrpick.d	$a0, $s4, 30, 1
	slli.d	$a0, $a0, 1
	addi.d	$a1, $s5, 80
	move	$a2, $a0
	.p2align	4, , 16
.LBB4_52:                               # %vector.body313
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, -48
	ld.d	$a4, $a1, 8
	ld.d	$a5, $a1, -56
	ld.d	$a6, $a1, 0
	sub.d	$a3, $a3, $a5
	sub.d	$a4, $a4, $a6
	st.d	$a3, $a1, -40
	st.d	$a4, $a1, 16
	st.d	$zero, $a1, -32
	st.d	$zero, $a1, 24
	addi.d	$a2, $a2, -2
	addi.d	$a1, $a1, 112
	bnez	$a2, .LBB4_52
# %bb.53:                               # %middle.block316
	beq	$a0, $s4, .LBB4_56
.LBB4_54:                               # %.lr.ph206.preheader351
	sub.d	$a1, $s4, $a0
	ori	$a2, $zero, 56
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a0, $s5
	addi.d	$a0, $a0, 48
	.p2align	4, , 16
.LBB4_55:                               # %.lr.ph206
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, -16
	ld.d	$a3, $a0, -24
	sub.d	$a2, $a2, $a3
	st.d	$a2, $a0, -8
	st.d	$zero, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 56
	bnez	$a1, .LBB4_55
.LBB4_56:                               # %.preheader175
	pcalau12i	$a0, %got_pc_hi20(hard_raw_list)
	ld.d	$a0, $a0, %got_pc_lo12(hard_raw_list)
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB4_61
# %bb.57:                               # %.lr.ph211.preheader
	move	$a0, $zero
	ori	$a2, $zero, 56
	b	.LBB4_59
	.p2align	4, , 16
.LBB4_58:                               #   in Loop: Header=BB4_59 Depth=1
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB4_62
.LBB4_59:                               # %.lr.ph211
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 24
	ld.d	$a6, $a1, 32
	ld.w	$a5, $a1, 40
	mul.d	$a3, $a3, $a2
	add.d	$a4, $s5, $a3
	ld.d	$a3, $a4, 48
	mul.d	$a5, $a5, $a2
	add.d	$a5, $s5, $a5
	ld.d	$a7, $a5, 48
	add.d	$a6, $a3, $a6
	bgeu	$a7, $a6, .LBB4_58
# %bb.60:                               #   in Loop: Header=BB4_59 Depth=1
	ld.d	$a4, $a4, 40
	addi.d	$a5, $a5, 48
	add.d	$a3, $a4, $a3
	st.d	$a3, $a5, 0
	addi.d	$a0, $a0, 1
	b	.LBB4_58
.LBB4_61:
	move	$a0, $zero
.LBB4_62:                               # %.preheader
	ori	$a1, $zero, 1
	blt	$s4, $a1, .LBB4_65
# %bb.63:                               # %.lr.ph214.preheader
	bne	$s4, $a1, .LBB4_66
# %bb.64:
	move	$a1, $zero
	b	.LBB4_69
.LBB4_65:                               # %.loopexit.sink.split
	ld.d	$a1, $s5, 40
	b	.LBB4_78
.LBB4_66:                               # %vector.ph321
	bstrpick.d	$a1, $s4, 30, 1
	slli.d	$a1, $a1, 1
	addi.d	$a2, $s5, 96
	move	$a3, $a1
	.p2align	4, , 16
.LBB4_67:                               # %vector.body324
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, -56
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a2, -48
	ld.d	$a7, $a2, 8
	add.d	$a4, $a6, $a4
	add.d	$a5, $a7, $a5
	st.d	$a4, $a2, -56
	st.d	$a5, $a2, 0
	addi.d	$a3, $a3, -2
	addi.d	$a2, $a2, 112
	bnez	$a3, .LBB4_67
# %bb.68:                               # %middle.block327
	beq	$a1, $s4, .LBB4_71
.LBB4_69:                               # %.lr.ph214.preheader350
	ori	$a2, $zero, 56
	mul.d	$a2, $a1, $a2
	add.d	$a2, $a2, $s5
	addi.d	$a2, $a2, 40
	sub.d	$a1, $s4, $a1
	.p2align	4, , 16
.LBB4_70:                               # %.lr.ph214
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	ld.d	$a4, $a2, 8
	add.d	$a3, $a4, $a3
	st.d	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 56
	bnez	$a1, .LBB4_70
.LBB4_71:                               # %.lr.ph219.preheader
	ld.d	$a1, $s5, 40
	ori	$a2, $zero, 4
	bgeu	$s4, $a2, .LBB4_73
# %bb.72:
	move	$a2, $zero
	b	.LBB4_76
.LBB4_73:                               # %vector.ph332
	bstrpick.d	$a2, $s4, 30, 2
	slli.d	$a2, $a2, 2
	vreplgr2vr.d	$vr0, $a1
	addi.d	$a1, $s5, 152
	move	$a3, $a2
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB4_74:                               # %vector.body335
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, -112
	ld.d	$a5, $a1, -56
	ld.d	$a6, $a1, 0
	ld.d	$a7, $a1, 56
	vinsgr2vr.d	$vr2, $a4, 0
	vinsgr2vr.d	$vr2, $a5, 1
	vinsgr2vr.d	$vr3, $a6, 0
	vinsgr2vr.d	$vr3, $a7, 1
	vmax.du	$vr0, $vr2, $vr0
	vmax.du	$vr1, $vr3, $vr1
	addi.d	$a3, $a3, -4
	addi.d	$a1, $a1, 224
	bnez	$a3, .LBB4_74
# %bb.75:                               # %middle.block342
	vmax.du	$vr0, $vr0, $vr1
	vreplvei.d	$vr1, $vr0, 1
	vmax.du	$vr0, $vr0, $vr1
	vpickve2gr.d	$a1, $vr0, 0
	beq	$a2, $s4, .LBB4_78
.LBB4_76:                               # %.lr.ph219.preheader348
	ori	$a3, $zero, 56
	mul.d	$a3, $a2, $a3
	add.d	$a3, $a3, $s5
	addi.d	$a3, $a3, 40
	sub.d	$a2, $s4, $a2
	.p2align	4, , 16
.LBB4_77:                               # %.lr.ph219
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	sltu	$a5, $a1, $a4
	masknez	$a1, $a1, $a5
	maskeqz	$a4, $a4, $a5
	or	$a1, $a4, $a1
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 56
	bnez	$a2, .LBB4_77
.LBB4_78:                               # %.loopexit
	add.d	$a0, $a0, $s4
	mul.d	$a0, $a0, $s1
	mul.w	$a2, $s0, $s4
	add.d	$a1, $a1, $a2
	add.d	$s2, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	move	$s7, $a4
	bstrins.d	$s7, $zero, 1, 1
	ori	$a0, $zero, 1
	pcalau12i	$s5, %pc_hi20(loop_time)
	lu52i.d	$s4, $zero, 1107
	pcalau12i	$s6, %pc_hi20(.LCPI4_0)
	lu12i.w	$s3, 275200
	beq	$s7, $a0, .LBB4_81
# %bb.79:
	bstrins.d	$a4, $zero, 0, 0
	ori	$a0, $zero, 2
	beq	$a4, $a0, .LBB4_82
.LBB4_80:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bnez	$a0, .LBB4_83
	b	.LBB4_87
.LBB4_81:
	ld.d	$a0, $s5, %pc_lo12(loop_time)
	fld.d	$fa0, $s6, %pc_lo12(.LCPI4_0)
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s4
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa1, $fa1, $fa0
	bstrins.d	$a0, $s3, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa1, $fa2, $fa1
	srli.d	$a0, $s2, 32
	or	$a0, $a0, $s4
	movgr2fr.d	$fa2, $a0
	fsub.d	$fa0, $fa2, $fa0
	move	$a0, $s2
	bstrins.d	$a0, $s3, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa0, $fa2, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	bstrins.d	$a4, $zero, 0, 0
	ori	$a0, $zero, 2
	bne	$a4, $a0, .LBB4_80
.LBB4_82:
	pcalau12i	$a0, %pc_hi20(prog_time)
	ld.d	$a0, $a0, %pc_lo12(prog_time)
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s4
	movgr2fr.d	$fa0, $a1
	fld.d	$fa1, $s6, %pc_lo12(.LCPI4_0)
	add.d	$a1, $a0, $s2
	bstrins.d	$a0, $s3, 63, 32
	ld.d	$a2, $s5, %pc_lo12(loop_time)
	movgr2fr.d	$fa2, $a0
	fsub.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	sub.d	$a0, $a1, $a2
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s4
	movgr2fr.d	$fa2, $a1
	fsub.d	$fa1, $fa2, $fa1
	bstrins.d	$a0, $s3, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa1, $fa2, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	move	$s0, $a4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a4, $s0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB4_87
.LBB4_83:
	ori	$a0, $zero, 1
	bne	$s7, $a0, .LBB4_85
# %bb.84:
	ld.d	$a0, $s5, %pc_lo12(loop_time)
	fld.d	$fa0, $s6, %pc_lo12(.LCPI4_0)
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s4
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa1, $fa1, $fa0
	bstrins.d	$a0, $s3, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa1, $fa2, $fa1
	srli.d	$a0, $s2, 32
	or	$a0, $a0, $s4
	movgr2fr.d	$fa2, $a0
	fsub.d	$fa0, $fa2, $fa0
	move	$a0, $s2
	bstrins.d	$a0, $s3, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa0, $fa2, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a2, $fp
	move	$s0, $a4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a4, $s0
.LBB4_85:
	ori	$a0, $zero, 2
	bne	$a4, $a0, .LBB4_87
# %bb.86:
	pcalau12i	$a0, %pc_hi20(prog_time)
	ld.d	$a0, $a0, %pc_lo12(prog_time)
	fld.d	$fa0, $s6, %pc_lo12(.LCPI4_0)
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s4
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa1, $fa1, $fa0
	add.d	$a1, $a0, $s2
	ld.d	$a2, $s5, %pc_lo12(loop_time)
	bstrins.d	$a0, $s3, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa1, $fa2, $fa1
	sub.d	$a0, $a1, $a2
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s4
	movgr2fr.d	$fa2, $a1
	fsub.d	$fa0, $fa2, $fa0
	bstrins.d	$a0, $s3, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa0, $fa2, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a2, $fp
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.LBB4_87:
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end4:
	.size	specul_time_r, .Lfunc_end4-specul_time_r
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s %lu"
	.size	.L.str, 7

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%s %lx %lu"
	.size	.L.str.1, 11

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%s %lu %lu"
	.size	.L.str.2, 11

	.type	loop_time,@object               # @loop_time
	.bss
	.globl	loop_time
	.p2align	3, 0x0
loop_time:
	.dword	0                               # 0x0
	.size	loop_time, 8

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"Time for loop: %lu issues\n"
	.size	.L.str.3, 27

	.type	prog_time,@object               # @prog_time
	.bss
	.globl	prog_time
	.p2align	3, 0x0
prog_time:
	.dword	0                               # 0x0
	.size	prog_time, 8

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"Time for program: %lu issues\n"
	.size	.L.str.4, 30

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Loop is %0.3g %% of program\n"
	.size	.L.str.5, 29

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Time for speculative loop is %lu issues\n"
	.size	.L.str.7, 41

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Potential speedup for loop: %0.3g times\n"
	.size	.L.str.8, 41

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Potential speedup for program: %0.3g times\n"
	.size	.L.str.9, 44

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"optloop: %0.3g\n"
	.size	.L.str.10, 16

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"optprog: %0.3g\n"
	.size	.L.str.11, 16

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"REALISTIC RESTART RESULTS -- %d CPUs\n"
	.size	.L.str.13, 38

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"realloop: %d %0.3g\n"
	.size	.L.str.14, 20

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"realprog: %d %0.3g\n"
	.size	.L.str.15, 20

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"OPTIMUM RESTART RESULTS"
	.size	.Lstr, 24

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"REALISTIC RESTART RESULTS -- Unlimited amount of CPUs"
	.size	.Lstr.1, 54

	.section	".note.GNU-stack","",@progbits
	.addrsig
