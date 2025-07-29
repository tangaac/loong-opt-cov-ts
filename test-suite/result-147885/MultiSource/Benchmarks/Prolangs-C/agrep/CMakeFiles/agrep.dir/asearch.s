	.file	"asearch.c"
	.text
	.globl	asearch0                        # -- Begin function asearch0
	.p2align	5
	.type	asearch0,@function
asearch0:                               # @asearch0
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
	lu12i.w	$a3, 23
	ori	$a3, $a3, 2400
	sub.d	$sp, $sp, $a3
	move	$fp, $a2
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(D_endpos)
	ld.d	$a1, $a1, %got_pc_lo12(D_endpos)
	addi.w	$a4, $a0, 0
	lu12i.w	$a2, 11
	ori	$s4, $a2, 4095
	ld.w	$a5, $a1, 0
	addi.d	$a3, $sp, 167
	ori	$a1, $zero, 10
	ori	$a2, $zero, 2
	stx.b	$a1, $s4, $a3
	move	$s0, $a5
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	bltu	$a4, $a2, .LBB0_3
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a2, $a0, -1
	move	$s0, $a5
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a1, $s0, 1
	addi.w	$a2, $a2, -1
	or	$s0, $a1, $s0
	bnez	$a2, .LBB0_2
.LBB0_3:                                # %._crit_edge
	pcalau12i	$a2, %got_pc_hi20(Init1)
	pcalau12i	$a1, %got_pc_hi20(Init)
	ld.d	$a3, $a1, %got_pc_lo12(Init)
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a1, $a2, %got_pc_lo12(Init1)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(NO_ERR_MASK)
	ld.d	$a6, $a1, %got_pc_lo12(NO_ERR_MASK)
	ld.w	$a1, $a3, 0
	addi.w	$a3, $fp, 1
	bstrpick.d	$a7, $a3, 31, 0
	ori	$a2, $zero, 8
	bstrpick.d	$s2, $a7, 31, 3
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	bgeu	$a3, $a2, .LBB0_5
# %bb.4:
	move	$a2, $zero
	b	.LBB0_8
.LBB0_5:                                # %vector.ph
	lu12i.w	$a0, 24
	ori	$a0, $a0, 184
	add.d	$a3, $sp, $a0
	lu12i.w	$a0, 24
	ori	$a0, $a0, 224
	add.d	$a4, $sp, $a0
	slli.d	$a2, $s2, 3
	vreplgr2vr.w	$vr0, $a1
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a3, -16
	vst	$vr0, $a3, 0
	vst	$vr0, $a4, -16
	vst	$vr0, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	addi.d	$a3, $a3, 32
	bnez	$a5, .LBB0_6
# %bb.7:                                # %middle.block
	beq	$a2, $a7, .LBB0_10
.LBB0_8:                                # %scalar.ph.preheader
	lu12i.w	$a0, 24
	ori	$a0, $a0, 208
	add.d	$a3, $sp, $a0
	alsl.d	$a3, $a2, $a3, 2
	lu12i.w	$a0, 24
	ori	$a0, $a0, 168
	add.d	$a4, $sp, $a0
	alsl.d	$a4, $a2, $a4, 2
	sub.d	$a2, $a7, $a2
	.p2align	4, , 16
.LBB0_9:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a1, $a4, 0
	st.w	$a1, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 4
	bnez	$a2, .LBB0_9
.LBB0_10:                               # %.preheader
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$s3, $a0, 0
	ld.w	$s1, $a6, 0
	lu12i.w	$s5, 12
	addi.d	$a0, $sp, 167
	add.d	$a1, $a0, $s5
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	move	$a2, $s5
	st.d	$a7, $sp, 120                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	ld.d	$t7, $sp, 120                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	ld.d	$t3, $sp, 128                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB0_65
# %bb.11:                               # %.lr.ph220
	move	$s7, $a0
	move	$s6, $zero
	nor	$a0, $s0, $zero
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	bstrpick.d	$a0, $fp, 31, 0
	lu12i.w	$a1, 24
	ori	$a1, $a1, 208
	add.d	$a1, $sp, $a1
	alsl.d	$a1, $a0, $a1, 2
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	lu12i.w	$a1, 24
	ori	$a1, $a1, 168
	add.d	$a1, $sp, $a1
	alsl.d	$a0, $a0, $a1, 2
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	nor	$a0, $t3, $zero
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a0, $s2, 3
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	addi.d	$s2, $t7, -1
	move	$a1, $s5
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_12:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $s7
	add.d	$a1, $a2, $a1
	move	$a2, $s7
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	sub.w	$a0, $s5, $s7
	xor	$a1, $s7, $s5
	sltui	$a1, $a1, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s4, $a1, $a0
.LBB0_13:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a1, $s4
	move	$s4, $s5
	ld.d	$t3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 120                   # 8-byte Folded Reload
	blez	$a0, .LBB0_65
.LBB0_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_19 Depth 2
                                        #       Child Loop BB0_21 Depth 3
                                        #       Child Loop BB0_32 Depth 3
                                        #       Child Loop BB0_35 Depth 3
                                        #       Child Loop BB0_38 Depth 3
                                        #       Child Loop BB0_42 Depth 3
                                        #       Child Loop BB0_53 Depth 3
                                        #       Child Loop BB0_56 Depth 3
                                        #       Child Loop BB0_59 Depth 3
	add.w	$s0, $s7, $s5
	bstrpick.d	$a2, $s7, 31, 14
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$t8, $sp, 167
	ori	$a0, $zero, 2
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bltu	$a0, $a2, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	add.d	$a0, $t8, $s8
	move	$s5, $a1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	addi.d	$t8, $sp, 167
	ld.d	$t7, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 128                   # 8-byte Folded Reload
	move	$a1, $s5
	add.w	$s0, $s8, $t3
	bstrpick.d	$a0, $s0, 31, 0
	stx.b	$zero, $a0, $t8
.LBB0_16:                               #   in Loop: Header=BB0_14 Depth=1
	bgeu	$s4, $s0, .LBB0_60
# %bb.17:                               # %.lr.ph213
                                        #   in Loop: Header=BB0_14 Depth=1
	lu12i.w	$a0, 24
	ori	$a0, $a0, 168
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	lu12i.w	$a2, 11
	ori	$a2, $a2, 4095
	add.w	$a2, $s7, $a2
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 80                    # 8-byte Folded Reload
	ori	$ra, $zero, 1
	lu12i.w	$a2, 24
	ori	$a2, $a2, 212
	add.d	$t2, $sp, $a2
	b	.LBB0_19
	.p2align	4, , 16
.LBB0_18:                               # %.loopexit
                                        #   in Loop: Header=BB0_19 Depth=2
	bgeu	$s4, $s0, .LBB0_61
.LBB0_19:                               #   Parent Loop BB0_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_21 Depth 3
                                        #       Child Loop BB0_32 Depth 3
                                        #       Child Loop BB0_35 Depth 3
                                        #       Child Loop BB0_38 Depth 3
                                        #       Child Loop BB0_42 Depth 3
                                        #       Child Loop BB0_53 Depth 3
                                        #       Child Loop BB0_56 Depth 3
                                        #       Child Loop BB0_59 Depth 3
	bstrpick.d	$a2, $s4, 31, 0
	ldx.bu	$a2, $a2, $t8
	pcalau12i	$a3, %got_pc_hi20(Mask)
	ld.d	$s7, $a3, %got_pc_lo12(Mask)
	slli.d	$a2, $a2, 2
	ldx.w	$s5, $s7, $a2
	and	$a2, $a0, $s3
	bstrpick.d	$a3, $a0, 31, 1
	and	$a3, $a3, $s5
	or	$a2, $a3, $a2
	lu12i.w	$a3, 24
	ori	$a3, $a3, 208
	add.d	$a3, $sp, $a3
	st.w	$a2, $a3, 0
	beqz	$fp, .LBB0_22
# %bb.20:                               # %.lr.ph192.preheader
                                        #   in Loop: Header=BB0_19 Depth=2
	move	$a3, $s2
	lu12i.w	$a4, 24
	ori	$a4, $a4, 172
	add.d	$a4, $sp, $a4
	move	$a5, $t2
	move	$a6, $a2
	.p2align	4, , 16
.LBB0_21:                               # %.lr.ph192
                                        #   Parent Loop BB0_14 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.wu	$a7, $a4, 0
	and	$t0, $a7, $s3
	or	$a6, $a6, $a0
	bstrpick.d	$a6, $a6, 31, 1
	and	$a6, $a6, $s1
	srli.d	$t1, $a7, 1
	and	$t1, $t1, $s5
	or	$t0, $t0, $t1
	or	$a6, $t0, $a6
	or	$a6, $a6, $a0
	st.w	$a6, $a5, 0
	addi.d	$a5, $a5, 4
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 4
	move	$a0, $a7
	bnez	$a3, .LBB0_21
.LBB0_22:                               # %._crit_edge193
                                        #   in Loop: Header=BB0_19 Depth=2
	and	$a0, $a2, $t4
	addi.w	$a0, $a0, 0
	addi.w	$s8, $s4, 1
	beqz	$a0, .LBB0_40
# %bb.23:                               #   in Loop: Header=BB0_19 Depth=2
	pcalau12i	$a0, %got_pc_hi20(AND)
	ld.d	$a0, $a0, %got_pc_lo12(AND)
	pcalau12i	$a2, %got_pc_hi20(endposition)
	ld.d	$a2, $a2, %got_pc_lo12(endposition)
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a4, $a3, 0
	ld.w	$a0, $a0, 0
	ld.w	$a3, $a2, 0
	addi.w	$s6, $s6, 1
	and	$a2, $a3, $a4
	bne	$a0, $ra, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_19 Depth=2
	beq	$a2, $a3, .LBB0_26
.LBB0_25:                               # %._crit_edge248
                                        #   in Loop: Header=BB0_19 Depth=2
	pcalau12i	$a3, %got_pc_hi20(INVERSE)
	ld.d	$a3, $a3, %got_pc_lo12(INVERSE)
	ld.w	$a3, $a3, 0
	sltui	$a0, $a0, 1
	sltu	$a2, $zero, $a2
	and	$a0, $a0, $a2
	beq	$a3, $a0, .LBB0_29
.LBB0_26:                               #   in Loop: Header=BB0_19 Depth=2
	pcalau12i	$a0, %got_pc_hi20(FILENAMEONLY)
	ld.d	$a0, $a0, %got_pc_lo12(FILENAMEONLY)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_64
# %bb.27:                               #   in Loop: Header=BB0_19 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB0_29
# %bb.28:                               #   in Loop: Header=BB0_19 Depth=2
	sub.w	$a2, $s4, $t3
	addi.d	$a0, $sp, 167
	move	$a3, $s6
	pcaddu18i	$ra, %call36(output)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 24
	ori	$a0, $a0, 212
	add.d	$t2, $sp, $a0
	ori	$ra, $zero, 1
	addi.d	$t8, $sp, 167
	ld.d	$t7, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 128                   # 8-byte Folded Reload
.LBB0_29:                               #   in Loop: Header=BB0_19 Depth=2
	ld.w	$a0, $t5, 0
	ori	$a1, $zero, 8
	bgeu	$t6, $a1, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_19 Depth=2
	move	$a2, $zero
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_31:                               # %vector.ph270
                                        #   in Loop: Header=BB0_19 Depth=2
	vreplgr2vr.w	$vr0, $a0
	lu12i.w	$a1, 24
	ori	$a1, $a1, 184
	add.d	$a1, $sp, $a1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_32:                               # %vector.body275
                                        #   Parent Loop BB0_14 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vst	$vr0, $a1, -16
	vst	$vr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB0_32
# %bb.33:                               # %middle.block278
                                        #   in Loop: Header=BB0_19 Depth=2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	move	$a2, $a1
	beq	$a1, $t7, .LBB0_36
.LBB0_34:                               # %scalar.ph268.preheader
                                        #   in Loop: Header=BB0_19 Depth=2
	lu12i.w	$a1, 24
	ori	$a1, $a1, 168
	add.d	$a1, $sp, $a1
	alsl.d	$a1, $a2, $a1, 2
	sub.d	$a2, $t7, $a2
	.p2align	4, , 16
.LBB0_35:                               # %scalar.ph268
                                        #   Parent Loop BB0_14 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$a0, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB0_35
.LBB0_36:                               # %.loopexit282
                                        #   in Loop: Header=BB0_19 Depth=2
	lu12i.w	$a0, 24
	ori	$a0, $a0, 168
	add.d	$a0, $sp, $a0
	ld.wu	$a3, $a0, 0
	sub.w	$a1, $s8, $t3
	and	$a0, $a3, $s3
	srli.d	$a2, $a3, 1
	and	$a2, $a2, $s5
	or	$a0, $a2, $a0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	and	$a2, $a0, $a2
	lu12i.w	$a0, 24
	ori	$a0, $a0, 208
	add.d	$a0, $sp, $a0
	st.w	$a2, $a0, 0
	beqz	$fp, .LBB0_40
# %bb.37:                               # %.lr.ph198
                                        #   in Loop: Header=BB0_19 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	move	$a4, $s2
	lu12i.w	$a5, 24
	ori	$a5, $a5, 172
	add.d	$a5, $sp, $a5
	move	$a6, $t2
	move	$a7, $a2
	.p2align	4, , 16
.LBB0_38:                               #   Parent Loop BB0_14 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.wu	$t0, $a5, 0
	and	$t1, $t0, $a0
	or	$a7, $a7, $a3
	bstrpick.d	$a7, $a7, 31, 1
	and	$a7, $a7, $s1
	srli.d	$t2, $t0, 1
	and	$t2, $t2, $s5
	or	$t1, $t1, $t2
	or	$a7, $t1, $a7
	or	$a7, $a7, $a3
	st.w	$a7, $a6, 0
	addi.d	$a6, $a6, 4
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 4
	move	$a3, $t0
	bnez	$a4, .LBB0_38
# %bb.39:                               #   in Loop: Header=BB0_19 Depth=2
	lu12i.w	$a0, 24
	ori	$a0, $a0, 212
	add.d	$t2, $sp, $a0
.LBB0_40:                               # %.loopexit180
                                        #   in Loop: Header=BB0_19 Depth=2
	bstrpick.d	$a0, $s8, 31, 0
	ldx.bu	$a0, $a0, $t8
	slli.d	$a0, $a0, 2
	ldx.w	$s5, $s7, $a0
	and	$a0, $a2, $s3
	bstrpick.d	$a3, $a2, 31, 1
	and	$a3, $a3, $s5
	or	$a0, $a3, $a0
	lu12i.w	$a3, 24
	ori	$a3, $a3, 168
	add.d	$a3, $sp, $a3
	st.w	$a0, $a3, 0
	beqz	$fp, .LBB0_43
# %bb.41:                               # %.lr.ph202.preheader
                                        #   in Loop: Header=BB0_19 Depth=2
	move	$a3, $s2
	move	$a4, $t2
	lu12i.w	$a5, 24
	ori	$a5, $a5, 172
	add.d	$a5, $sp, $a5
	move	$a6, $a0
	.p2align	4, , 16
.LBB0_42:                               # %.lr.ph202
                                        #   Parent Loop BB0_14 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.wu	$a7, $a4, 0
	and	$t0, $a7, $s3
	or	$a6, $a6, $a2
	bstrpick.d	$a6, $a6, 31, 1
	and	$a6, $a6, $s1
	srli.d	$t1, $a7, 1
	and	$t1, $t1, $s5
	or	$t0, $t0, $t1
	or	$a6, $t0, $a6
	or	$a6, $a6, $a2
	st.w	$a6, $a5, 0
	addi.d	$a5, $a5, 4
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 4
	move	$a2, $a7
	bnez	$a3, .LBB0_42
.LBB0_43:                               # %._crit_edge203
                                        #   in Loop: Header=BB0_19 Depth=2
	and	$a2, $a0, $t4
	addi.w	$a2, $a2, 0
	addi.w	$s4, $s4, 2
	beqz	$a2, .LBB0_18
# %bb.44:                               #   in Loop: Header=BB0_19 Depth=2
	pcalau12i	$a0, %got_pc_hi20(AND)
	ld.d	$a0, $a0, %got_pc_lo12(AND)
	pcalau12i	$a2, %got_pc_hi20(endposition)
	ld.d	$a2, $a2, %got_pc_lo12(endposition)
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a4, $a3, 0
	ld.w	$a0, $a0, 0
	ld.w	$a3, $a2, 0
	addi.w	$s6, $s6, 1
	and	$a2, $a3, $a4
	bne	$a0, $ra, .LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_19 Depth=2
	beq	$a2, $a3, .LBB0_47
.LBB0_46:                               # %._crit_edge249
                                        #   in Loop: Header=BB0_19 Depth=2
	pcalau12i	$a3, %got_pc_hi20(INVERSE)
	ld.d	$a3, $a3, %got_pc_lo12(INVERSE)
	ld.w	$a3, $a3, 0
	sltui	$a0, $a0, 1
	sltu	$a2, $zero, $a2
	and	$a0, $a0, $a2
	beq	$a3, $a0, .LBB0_50
.LBB0_47:                               #   in Loop: Header=BB0_19 Depth=2
	pcalau12i	$a0, %got_pc_hi20(FILENAMEONLY)
	ld.d	$a0, $a0, %got_pc_lo12(FILENAMEONLY)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_64
# %bb.48:                               #   in Loop: Header=BB0_19 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB0_50
# %bb.49:                               #   in Loop: Header=BB0_19 Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	add.w	$a2, $s4, $a0
	addi.d	$a0, $sp, 167
	move	$a3, $s6
	pcaddu18i	$ra, %call36(output)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 24
	ori	$a0, $a0, 212
	add.d	$t2, $sp, $a0
	ori	$ra, $zero, 1
	addi.d	$t8, $sp, 167
	ld.d	$t7, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 128                   # 8-byte Folded Reload
.LBB0_50:                               #   in Loop: Header=BB0_19 Depth=2
	ld.w	$a0, $t5, 0
	ori	$a1, $zero, 8
	bgeu	$t6, $a1, .LBB0_52
# %bb.51:                               #   in Loop: Header=BB0_19 Depth=2
	move	$a2, $zero
	b	.LBB0_55
	.p2align	4, , 16
.LBB0_52:                               # %vector.ph257
                                        #   in Loop: Header=BB0_19 Depth=2
	vreplgr2vr.w	$vr0, $a0
	lu12i.w	$a1, 24
	ori	$a1, $a1, 224
	add.d	$a1, $sp, $a1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_53:                               # %vector.body262
                                        #   Parent Loop BB0_14 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vst	$vr0, $a1, -16
	vst	$vr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB0_53
# %bb.54:                               # %middle.block265
                                        #   in Loop: Header=BB0_19 Depth=2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	move	$a2, $a1
	beq	$a1, $t7, .LBB0_57
.LBB0_55:                               # %scalar.ph255.preheader
                                        #   in Loop: Header=BB0_19 Depth=2
	lu12i.w	$a1, 24
	ori	$a1, $a1, 208
	add.d	$a1, $sp, $a1
	alsl.d	$a1, $a2, $a1, 2
	sub.d	$a2, $t7, $a2
	.p2align	4, , 16
.LBB0_56:                               # %scalar.ph255
                                        #   Parent Loop BB0_14 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$a0, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB0_56
.LBB0_57:                               # %.loopexit281
                                        #   in Loop: Header=BB0_19 Depth=2
	lu12i.w	$a0, 24
	ori	$a0, $a0, 208
	add.d	$a0, $sp, $a0
	ld.wu	$a3, $a0, 0
	sub.w	$a1, $s4, $t3
	and	$a0, $a3, $s3
	srli.d	$a2, $a3, 1
	and	$a2, $a2, $s5
	or	$a0, $a2, $a0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	and	$a0, $a0, $a2
	lu12i.w	$a2, 24
	ori	$a2, $a2, 168
	add.d	$a2, $sp, $a2
	st.w	$a0, $a2, 0
	beqz	$fp, .LBB0_18
# %bb.58:                               # %.lr.ph208.preheader
                                        #   in Loop: Header=BB0_19 Depth=2
	move	$a2, $s2
	move	$a4, $t2
	lu12i.w	$a5, 24
	ori	$a5, $a5, 172
	add.d	$a5, $sp, $a5
	move	$a6, $a0
	.p2align	4, , 16
.LBB0_59:                               # %.lr.ph208
                                        #   Parent Loop BB0_14 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.wu	$a7, $a4, 0
	and	$t0, $a7, $s3
	or	$a6, $a6, $a3
	bstrpick.d	$a6, $a6, 31, 1
	and	$a6, $a6, $s1
	srli.d	$t1, $a7, 1
	and	$t1, $t1, $s5
	or	$t0, $t0, $t1
	or	$a6, $t0, $a6
	or	$a6, $a6, $a3
	st.w	$a6, $a5, 0
	addi.d	$a5, $a5, 4
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 4
	move	$a3, $a7
	bnez	$a2, .LBB0_59
	b	.LBB0_18
	.p2align	4, , 16
.LBB0_60:                               #   in Loop: Header=BB0_14 Depth=1
	ori	$ra, $zero, 1
.LBB0_61:                               # %._crit_edge214
                                        #   in Loop: Header=BB0_14 Depth=1
	lu12i.w	$s5, 12
	move	$s4, $s5
	ori	$a0, $zero, 3
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	bltu	$a2, $a0, .LBB0_13
# %bb.62:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	sub.w	$s7, $a0, $a1
	ori	$a0, $s5, 1
	addi.d	$a2, $sp, 167
	blt	$s7, $a0, .LBB0_12
# %bb.63:                               #   in Loop: Header=BB0_14 Depth=1
	pcalau12i	$a0, %got_pc_hi20(TRUNCATE)
	ld.d	$a0, $a0, %got_pc_lo12(TRUNCATE)
	st.w	$ra, $a0, 0
	move	$s7, $s5
	b	.LBB0_12
.LBB0_64:                               # %.loopexit181.sink.split
	pcalau12i	$a0, %got_pc_hi20(num_of_matched)
	ld.d	$a0, $a0, %got_pc_lo12(num_of_matched)
	ld.w	$a1, $a0, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(CurrentFileName)
	ld.d	$a0, $a0, %got_pc_lo12(CurrentFileName)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB0_65:                               # %.loopexit181
	lu12i.w	$a0, 23
	ori	$a0, $a0, 2400
	add.d	$sp, $sp, $a0
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
.Lfunc_end0:
	.size	asearch0, .Lfunc_end0-asearch0
                                        # -- End function
	.globl	asearch                         # -- Begin function asearch
	.p2align	5
	.type	asearch,@function
asearch:                                # @asearch
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
	lu12i.w	$a3, 23
	ori	$a3, $a3, 2416
	sub.d	$sp, $sp, $a3
	pcalau12i	$a3, %got_pc_hi20(I)
	ld.d	$a3, $a3, %got_pc_lo12(I)
	ld.w	$a3, $a3, 0
	move	$fp, $a2
	move	$s7, $a1
	beqz	$a3, .LBB1_3
# %bb.1:
	ori	$a1, $zero, 5
	bltu	$fp, $a1, .LBB1_4
.LBB1_2:
	move	$a1, $s7
	move	$a2, $fp
	lu12i.w	$a3, 23
	ori	$a3, $a3, 2416
	add.d	$sp, $sp, $a3
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
	pcaddu18i	$t8, %call36(asearch0)
	jr	$t8
.LBB1_3:
	pcalau12i	$a1, %got_pc_hi20(Init1)
	ld.d	$a2, $a1, %got_pc_lo12(Init1)
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $a2, 0
	ori	$a1, $zero, 5
	bgeu	$fp, $a1, .LBB1_2
.LBB1_4:
	lu12i.w	$a1, 11
	ori	$a2, $a1, 4095
	addi.d	$a1, $sp, 191
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	add.d	$s0, $a1, $a2
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(D_endpos)
	ld.d	$a1, $a1, %got_pc_lo12(D_endpos)
	ld.w	$a3, $a1, 0
	addi.w	$a4, $a0, 0
	ori	$a2, $zero, 10
	ori	$a1, $zero, 2
	st.b	$a2, $s0, 0
	move	$s3, $a3
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	bltu	$a4, $a1, .LBB1_7
# %bb.5:                                # %.lr.ph.preheader
	addi.d	$a2, $a0, -1
	move	$s3, $a3
	.p2align	4, , 16
.LBB1_6:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a1, $s3, 1
	addi.w	$a2, $a2, -1
	or	$s3, $a1, $s3
	bnez	$a2, .LBB1_6
.LBB1_7:                                # %._crit_edge
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(Init1)
	ld.d	$a2, $a0, %got_pc_lo12(Init1)
	pcalau12i	$a0, %got_pc_hi20(NO_ERR_MASK)
	ld.d	$a1, $a0, %got_pc_lo12(NO_ERR_MASK)
	pcalau12i	$a0, %got_pc_hi20(Init)
	ld.d	$a3, $a0, %got_pc_lo12(Init)
	move	$a0, $zero
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	ld.w	$a2, $a2, 0
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	ld.w	$s1, $a1, 0
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	ld.w	$s2, $a3, 0
	addi.w	$a3, $fp, 1
	lu12i.w	$a1, 24
	ori	$a1, $a1, 192
	add.d	$a1, $sp, $a1
	lu12i.w	$a2, 24
	ori	$a2, $a2, 228
	add.d	$a2, $sp, $a2
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	stx.w	$s2, $a0, $a1
	stx.w	$s2, $a0, $a2
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 4
	bnez	$a3, .LBB1_8
# %bb.9:                                # %.preheader322
	lu12i.w	$a2, 12
	addi.d	$a0, $sp, 191
	add.d	$a1, $a0, $a2
	move	$a0, $s7
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	ori	$t6, $zero, 1
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	blt	$a0, $t6, .LBB1_66
# %bb.10:                               # %.lr.ph399
	move	$a3, $a0
	move	$t7, $zero
	move	$a0, $zero
	nor	$a2, $s3, $zero
	nor	$a1, $t2, $zero
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	bstrpick.d	$a1, $t2, 30, 0
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a1, $s0, 1
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	addi.d	$a1, $a1, -1
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	lu12i.w	$a1, 12
	move	$a7, $s2
	move	$t1, $s2
	move	$t0, $s2
	move	$s6, $s2
	move	$s5, $s2
	move	$s8, $s2
	move	$s4, $s2
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	b	.LBB1_13
	.p2align	4, , 16
.LBB1_11:                               #   in Loop: Header=BB1_13 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $s7
	add.d	$a1, $a3, $a1
	move	$a2, $s7
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ori	$a3, $zero, 1
	lu12i.w	$a2, 12
	sub.w	$a0, $a2, $s7
	xor	$a1, $s7, $a2
	sltui	$a1, $a1, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s0, $a1, $a0
.LBB1_12:                               #   in Loop: Header=BB1_13 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	ori	$t6, $zero, 1
	move	$a3, $a0
	ori	$a0, $zero, 1
	move	$a1, $s0
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	move	$t7, $s3
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 128                   # 8-byte Folded Reload
	blez	$a3, .LBB1_66
.LBB1_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_60 Depth 2
                                        #     Child Loop BB1_20 Depth 2
                                        #       Child Loop BB1_32 Depth 3
                                        #       Child Loop BB1_35 Depth 3
                                        #       Child Loop BB1_49 Depth 3
                                        #       Child Loop BB1_52 Depth 3
	andi	$a0, $a0, 1
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	beqz	$a0, .LBB1_58
# %bb.14:                               #   in Loop: Header=BB1_13 Depth=1
	lu12i.w	$a2, 12
	move	$s7, $a2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 96                    # 8-byte Folded Reload
	addi.d	$t5, $sp, 191
	add.w	$ra, $a3, $a2
	st.d	$ra, $sp, 64                    # 8-byte Folded Spill
	blt	$a0, $a3, .LBB1_16
.LBB1_15:                               #   in Loop: Header=BB1_13 Depth=1
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $t5, $s0
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	move	$s3, $t7
	st.d	$a7, $sp, 176                   # 8-byte Folded Spill
	st.d	$t0, $sp, 168                   # 8-byte Folded Spill
	st.d	$t1, $sp, 128                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	move	$t7, $s3
	ori	$t6, $zero, 1
	addi.d	$t5, $sp, 191
	ld.d	$t4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	add.w	$ra, $s0, $t2
	bstrpick.d	$a0, $ra, 31, 0
	stx.b	$zero, $a0, $t5
.LBB1_16:                               #   in Loop: Header=BB1_13 Depth=1
	bgeu	$s7, $ra, .LBB1_55
# %bb.17:                               # %.lr.ph376
                                        #   in Loop: Header=BB1_13 Depth=1
	lu12i.w	$a0, 11
	ori	$a0, $a0, 4095
	add.w	$a0, $a3, $a0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	b	.LBB1_20
	.p2align	4, , 16
.LBB1_18:                               # %._crit_edge363
                                        #   in Loop: Header=BB1_20 Depth=2
	lu12i.w	$a0, 24
	ori	$a0, $a0, 196
	add.d	$a0, $sp, $a0
	ld.w	$s8, $a0, 0
	lu12i.w	$a0, 24
	ori	$a0, $a0, 236
	add.d	$a0, $sp, $a0
	ld.w	$s5, $a0, 0
	lu12i.w	$a0, 24
	ori	$a0, $a0, 200
	add.d	$a0, $sp, $a0
	ld.w	$s6, $a0, 0
	lu12i.w	$a0, 24
	ori	$a0, $a0, 240
	add.d	$a0, $sp, $a0
	ld.w	$t0, $a0, 0
	lu12i.w	$a0, 24
	ori	$a0, $a0, 204
	add.d	$a0, $sp, $a0
	ld.w	$t1, $a0, 0
	lu12i.w	$a0, 24
	ori	$a0, $a0, 244
	add.d	$a0, $sp, $a0
	ld.w	$a7, $a0, 0
	lu12i.w	$a0, 24
	ori	$a0, $a0, 208
	add.d	$a0, $sp, $a0
	ld.w	$s2, $a0, 0
	sub.w	$a1, $s7, $t2
.LBB1_19:                               #   in Loop: Header=BB1_20 Depth=2
	bgeu	$s7, $ra, .LBB1_55
.LBB1_20:                               #   Parent Loop BB1_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_32 Depth 3
                                        #       Child Loop BB1_35 Depth 3
                                        #       Child Loop BB1_49 Depth 3
                                        #       Child Loop BB1_52 Depth 3
	bstrpick.d	$a0, $s7, 31, 0
	ldx.bu	$a0, $a0, $t5
	pcalau12i	$a2, %got_pc_hi20(Mask)
	ld.d	$s0, $a2, %got_pc_lo12(Mask)
	slli.d	$a0, $a0, 2
	ldx.wu	$s3, $s0, $a0
	bstrpick.d	$a0, $s4, 31, 1
	and	$a0, $s3, $a0
	and	$a2, $s8, $t4
	or	$a3, $a0, $s4
	bstrpick.d	$a3, $a3, 31, 1
	and	$a3, $a3, $s1
	bstrpick.d	$a4, $s8, 31, 1
	and	$a4, $s3, $a4
	or	$a2, $a2, $a4
	or	$a2, $a2, $a3
	or	$a2, $a2, $s4
	beq	$fp, $t6, .LBB1_24
# %bb.21:                               #   in Loop: Header=BB1_20 Depth=2
	and	$a3, $s6, $t4
	or	$a4, $a2, $s8
	bstrpick.d	$a4, $a4, 31, 1
	and	$a4, $a4, $s1
	bstrpick.d	$a5, $s6, 31, 1
	and	$a5, $s3, $a5
	or	$a3, $a3, $a5
	or	$a3, $a3, $a4
	or	$s5, $a3, $s8
	ori	$a3, $zero, 2
	beq	$fp, $a3, .LBB1_24
# %bb.22:                               #   in Loop: Header=BB1_20 Depth=2
	and	$a3, $t1, $t4
	or	$a4, $s5, $s6
	bstrpick.d	$a4, $a4, 31, 1
	and	$a4, $a4, $s1
	bstrpick.d	$a5, $t1, 31, 1
	and	$a5, $s3, $a5
	or	$a3, $a3, $a5
	or	$a3, $a3, $a4
	or	$t0, $a3, $s6
	ori	$a3, $zero, 3
	beq	$fp, $a3, .LBB1_24
# %bb.23:                               #   in Loop: Header=BB1_20 Depth=2
	and	$a3, $s2, $t4
	or	$a4, $t0, $t1
	bstrpick.d	$a4, $a4, 31, 1
	and	$a4, $a4, $s1
	bstrpick.d	$a5, $s2, 31, 1
	and	$a5, $s3, $a5
	or	$a3, $a3, $a5
	or	$a3, $a3, $a4
	or	$a7, $a3, $t1
	.p2align	4, , 16
.LBB1_24:                               #   in Loop: Header=BB1_20 Depth=2
	and	$a3, $s4, $t4
	or	$a0, $a0, $a3
	addi.w	$s4, $s7, 1
	and	$a3, $a0, $t3
	addi.w	$a3, $a3, 0
	addi.d	$s8, $fp, -4
	addi.d	$a5, $fp, -3
	addi.d	$a6, $fp, -2
	addi.d	$t8, $fp, -1
	st.d	$a5, $sp, 176                   # 8-byte Folded Spill
	st.d	$a6, $sp, 168                   # 8-byte Folded Spill
	beqz	$a3, .LBB1_37
# %bb.25:                               #   in Loop: Header=BB1_20 Depth=2
	sltui	$a4, $s8, 1
	sltui	$a3, $a5, 1
	sltui	$a5, $a6, 1
	sltui	$a6, $t8, 1
	addi.w	$t7, $t7, 1
	masknez	$a0, $a0, $a6
	maskeqz	$a2, $a2, $a6
	or	$a0, $a2, $a0
	masknez	$a0, $a0, $a5
	maskeqz	$a2, $s5, $a5
	or	$a0, $a2, $a0
	masknez	$a0, $a0, $a3
	maskeqz	$a2, $t0, $a3
	pcalau12i	$a3, %got_pc_hi20(AND)
	pcalau12i	$a5, %got_pc_hi20(endposition)
	ld.d	$a5, $a5, %got_pc_lo12(endposition)
	ld.d	$a6, $a3, %got_pc_lo12(AND)
	or	$a0, $a2, $a0
	masknez	$a2, $a0, $a4
	ld.w	$a3, $a5, 0
	ld.w	$a0, $a6, 0
	maskeqz	$a4, $a7, $a4
	or	$a2, $a4, $a2
	and	$a2, $a3, $a2
	addi.w	$a2, $a2, 0
	move	$s5, $t8
	bne	$a0, $t6, .LBB1_27
# %bb.26:                               #   in Loop: Header=BB1_20 Depth=2
	beq	$a2, $a3, .LBB1_28
.LBB1_27:                               # %._crit_edge423
                                        #   in Loop: Header=BB1_20 Depth=2
	pcalau12i	$a3, %got_pc_hi20(INVERSE)
	ld.d	$a3, $a3, %got_pc_lo12(INVERSE)
	ld.w	$a3, $a3, 0
	sltui	$a0, $a0, 1
	sltu	$a2, $zero, $a2
	and	$a0, $a0, $a2
	beq	$a3, $a0, .LBB1_31
.LBB1_28:                               #   in Loop: Header=BB1_20 Depth=2
	pcalau12i	$a0, %got_pc_hi20(FILENAMEONLY)
	ld.d	$a0, $a0, %got_pc_lo12(FILENAMEONLY)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB1_65
# %bb.29:                               #   in Loop: Header=BB1_20 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB1_31
# %bb.30:                               #   in Loop: Header=BB1_20 Depth=2
	sub.w	$a2, $s7, $t2
	addi.d	$a0, $sp, 191
	move	$a3, $t7
	move	$s2, $t7
	pcaddu18i	$ra, %call36(output)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	move	$t7, $s2
	ori	$t6, $zero, 1
	addi.d	$t5, $sp, 191
	ld.d	$t4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
.LBB1_31:                               # %scalar.ph444
                                        #   in Loop: Header=BB1_20 Depth=2
	pcalau12i	$a0, %got_pc_hi20(TRUNCATE)
	ld.d	$a1, $a0, %got_pc_lo12(TRUNCATE)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	st.w	$zero, $a1, 0
	lu12i.w	$a1, 24
	ori	$a1, $a1, 192
	add.d	$a1, $sp, $a1
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_32:                               #   Parent Loop BB1_13 Depth=1
                                        #     Parent Loop BB1_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$a0, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB1_32
# %bb.33:                               # %.loopexit458
                                        #   in Loop: Header=BB1_20 Depth=2
	move	$t8, $s5
	lu12i.w	$a0, 24
	ori	$a0, $a0, 192
	add.d	$a0, $sp, $a0
	ld.wu	$a2, $a0, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.wu	$a1, $a0, 0
	and	$a0, $a1, $a2
	srli.d	$a3, $a2, 1
	and	$a3, $a3, $s3
	or	$a0, $a3, $a0
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	and	$a0, $a0, $a3
	lu12i.w	$a3, 24
	ori	$a3, $a3, 228
	add.d	$a3, $sp, $a3
	st.w	$a0, $a3, 0
	beqz	$fp, .LBB1_36
# %bb.34:                               # %.lr.ph356.preheader
                                        #   in Loop: Header=BB1_20 Depth=2
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	lu12i.w	$a4, 24
	ori	$a4, $a4, 196
	add.d	$a4, $sp, $a4
	lu12i.w	$a5, 24
	ori	$a5, $a5, 232
	add.d	$a5, $sp, $a5
	move	$a6, $a0
	.p2align	4, , 16
.LBB1_35:                               # %.lr.ph356
                                        #   Parent Loop BB1_13 Depth=1
                                        #     Parent Loop BB1_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.wu	$a7, $a4, 0
	and	$t0, $a7, $a1
	or	$a6, $a6, $a2
	bstrpick.d	$a6, $a6, 31, 1
	and	$a6, $a6, $s1
	srli.d	$t1, $a7, 1
	and	$t1, $t1, $s3
	or	$t0, $t0, $t1
	or	$a6, $t0, $a6
	or	$a6, $a6, $a2
	st.w	$a6, $a5, 0
	addi.d	$a5, $a5, 4
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 4
	move	$a2, $a7
	bnez	$a3, .LBB1_35
.LBB1_36:                               # %._crit_edge357
                                        #   in Loop: Header=BB1_20 Depth=2
	move	$s3, $s8
	lu12i.w	$a1, 24
	ori	$a1, $a1, 232
	add.d	$a1, $sp, $a1
	ld.w	$a2, $a1, 0
	lu12i.w	$a1, 24
	ori	$a1, $a1, 236
	add.d	$a1, $sp, $a1
	ld.w	$s5, $a1, 0
	lu12i.w	$a1, 24
	ori	$a1, $a1, 200
	add.d	$a1, $sp, $a1
	ld.w	$s6, $a1, 0
	lu12i.w	$a1, 24
	ori	$a1, $a1, 240
	add.d	$a1, $sp, $a1
	ld.w	$t0, $a1, 0
	lu12i.w	$a1, 24
	ori	$a1, $a1, 204
	add.d	$a1, $sp, $a1
	ld.w	$t1, $a1, 0
	lu12i.w	$a1, 24
	ori	$a1, $a1, 244
	add.d	$a1, $sp, $a1
	ld.w	$a7, $a1, 0
	lu12i.w	$a1, 24
	ori	$a1, $a1, 208
	add.d	$a1, $sp, $a1
	ld.w	$s2, $a1, 0
	sub.w	$a1, $s4, $t2
	b	.LBB1_38
	.p2align	4, , 16
.LBB1_37:                               #   in Loop: Header=BB1_20 Depth=2
	move	$s3, $s8
.LBB1_38:                               #   in Loop: Header=BB1_20 Depth=2
	bstrpick.d	$a3, $s4, 31, 0
	ldx.bu	$a3, $a3, $t5
	slli.d	$a3, $a3, 2
	ldx.wu	$s0, $s0, $a3
	bstrpick.d	$a3, $a0, 31, 1
	and	$a3, $s0, $a3
	and	$a4, $a2, $t4
	or	$a5, $a3, $a0
	bstrpick.d	$a5, $a5, 31, 1
	and	$a5, $a5, $s1
	bstrpick.d	$a6, $a2, 31, 1
	and	$a6, $s0, $a6
	or	$a4, $a4, $a6
	or	$a4, $a4, $a5
	or	$s8, $a4, $a0
	beq	$fp, $t6, .LBB1_40
# %bb.39:                               #   in Loop: Header=BB1_20 Depth=2
	and	$a4, $s5, $t4
	or	$a5, $s8, $a2
	bstrpick.d	$a5, $a5, 31, 1
	and	$a5, $a5, $s1
	bstrpick.d	$a6, $s5, 31, 1
	and	$a6, $s0, $a6
	or	$a4, $a4, $a6
	or	$a4, $a4, $a5
	or	$s6, $a4, $a2
	ori	$a2, $zero, 2
	bne	$fp, $a2, .LBB1_53
.LBB1_40:                               #   in Loop: Header=BB1_20 Depth=2
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
.LBB1_41:                               #   in Loop: Header=BB1_20 Depth=2
	and	$a0, $a0, $t4
	or	$s4, $a3, $a0
	and	$a0, $s4, $t3
	addi.w	$a0, $a0, 0
	addi.w	$s7, $s7, 2
	beqz	$a0, .LBB1_19
# %bb.42:                               #   in Loop: Header=BB1_20 Depth=2
	sltui	$a2, $s3, 1
	sltui	$a0, $a6, 1
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	sltui	$a3, $a3, 1
	sltui	$a4, $t8, 1
	addi.w	$t7, $t7, 1
	masknez	$a5, $s4, $a4
	maskeqz	$a4, $s8, $a4
	or	$a4, $a4, $a5
	masknez	$a4, $a4, $a3
	maskeqz	$a3, $s6, $a3
	or	$a3, $a3, $a4
	masknez	$a3, $a3, $a0
	maskeqz	$a0, $t1, $a0
	pcalau12i	$a4, %got_pc_hi20(AND)
	pcalau12i	$a5, %got_pc_hi20(endposition)
	ld.d	$a5, $a5, %got_pc_lo12(endposition)
	ld.d	$a4, $a4, %got_pc_lo12(AND)
	or	$a0, $a0, $a3
	masknez	$a6, $a0, $a2
	ld.w	$a3, $a5, 0
	ld.w	$a0, $a4, 0
	maskeqz	$a2, $s2, $a2
	or	$a2, $a2, $a6
	and	$a2, $a3, $a2
	addi.w	$a2, $a2, 0
	bne	$a0, $t6, .LBB1_44
# %bb.43:                               #   in Loop: Header=BB1_20 Depth=2
	beq	$a2, $a3, .LBB1_45
.LBB1_44:                               # %._crit_edge424
                                        #   in Loop: Header=BB1_20 Depth=2
	pcalau12i	$a3, %got_pc_hi20(INVERSE)
	ld.d	$a3, $a3, %got_pc_lo12(INVERSE)
	ld.w	$a3, $a3, 0
	sltui	$a0, $a0, 1
	sltu	$a2, $zero, $a2
	and	$a0, $a0, $a2
	beq	$a3, $a0, .LBB1_48
.LBB1_45:                               #   in Loop: Header=BB1_20 Depth=2
	pcalau12i	$a0, %got_pc_hi20(FILENAMEONLY)
	ld.d	$a0, $a0, %got_pc_lo12(FILENAMEONLY)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB1_65
# %bb.46:                               #   in Loop: Header=BB1_20 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB1_48
# %bb.47:                               #   in Loop: Header=BB1_20 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.w	$a2, $s7, $a0
	addi.d	$a0, $sp, 191
	move	$a3, $t7
	move	$s2, $t7
	pcaddu18i	$ra, %call36(output)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	move	$t7, $s2
	ori	$t6, $zero, 1
	addi.d	$t5, $sp, 191
	ld.d	$t4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
.LBB1_48:                               # %scalar.ph431
                                        #   in Loop: Header=BB1_20 Depth=2
	pcalau12i	$a0, %got_pc_hi20(TRUNCATE)
	ld.d	$a1, $a0, %got_pc_lo12(TRUNCATE)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	st.w	$zero, $a1, 0
	lu12i.w	$a1, 24
	ori	$a1, $a1, 228
	add.d	$a1, $sp, $a1
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_49:                               #   Parent Loop BB1_13 Depth=1
                                        #     Parent Loop BB1_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$a0, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB1_49
# %bb.50:                               # %.loopexit457
                                        #   in Loop: Header=BB1_20 Depth=2
	lu12i.w	$a0, 24
	ori	$a0, $a0, 228
	add.d	$a0, $sp, $a0
	ld.wu	$a1, $a0, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.wu	$a0, $a0, 0
	and	$a2, $a0, $a1
	srli.d	$a3, $a1, 1
	and	$a3, $a3, $s0
	or	$a2, $a3, $a2
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	and	$s4, $a2, $a3
	lu12i.w	$a2, 24
	ori	$a2, $a2, 192
	add.d	$a2, $sp, $a2
	st.w	$s4, $a2, 0
	beqz	$fp, .LBB1_18
# %bb.51:                               # %.lr.ph362.preheader
                                        #   in Loop: Header=BB1_20 Depth=2
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	lu12i.w	$a3, 24
	ori	$a3, $a3, 232
	add.d	$a3, $sp, $a3
	lu12i.w	$a4, 24
	ori	$a4, $a4, 196
	add.d	$a4, $sp, $a4
	move	$a5, $s4
	.p2align	4, , 16
.LBB1_52:                               # %.lr.ph362
                                        #   Parent Loop BB1_13 Depth=1
                                        #     Parent Loop BB1_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.wu	$a6, $a3, 0
	and	$a7, $a6, $a0
	or	$a5, $a5, $a1
	bstrpick.d	$a5, $a5, 31, 1
	and	$a5, $a5, $s1
	srli.d	$t0, $a6, 1
	and	$t0, $t0, $s0
	or	$a7, $a7, $t0
	or	$a5, $a7, $a5
	or	$a5, $a5, $a1
	st.w	$a5, $a4, 0
	addi.d	$a4, $a4, 4
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	move	$a1, $a6
	bnez	$a2, .LBB1_52
	b	.LBB1_18
	.p2align	4, , 16
.LBB1_53:                               #   in Loop: Header=BB1_20 Depth=2
	and	$a2, $t0, $t4
	or	$a4, $s6, $s5
	bstrpick.d	$a4, $a4, 31, 1
	and	$a4, $a4, $s1
	bstrpick.d	$a5, $t0, 31, 1
	and	$a5, $s0, $a5
	or	$a2, $a2, $a5
	or	$a2, $a2, $a4
	or	$t1, $a2, $s5
	ori	$a2, $zero, 3
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	beq	$fp, $a2, .LBB1_41
# %bb.54:                               #   in Loop: Header=BB1_20 Depth=2
	and	$a2, $a7, $t4
	or	$a4, $t1, $t0
	bstrpick.d	$a4, $a4, 31, 1
	and	$a4, $a4, $s1
	bstrpick.d	$a5, $a7, 31, 1
	and	$a5, $s0, $a5
	or	$a2, $a2, $a5
	or	$a2, $a2, $a4
	or	$s2, $a2, $t0
	b	.LBB1_41
	.p2align	4, , 16
.LBB1_55:                               # %._crit_edge377
                                        #   in Loop: Header=BB1_13 Depth=1
	st.d	$t1, $sp, 128                   # 8-byte Folded Spill
	st.d	$t0, $sp, 168                   # 8-byte Folded Spill
	st.d	$a7, $sp, 176                   # 8-byte Folded Spill
	move	$s3, $t7
	lu12i.w	$a2, 12
	move	$s0, $a2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	blt	$a0, $a2, .LBB1_12
# %bb.56:                               #   in Loop: Header=BB1_13 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	sub.w	$s7, $a0, $a1
	ori	$a0, $a2, 1
	addi.d	$a3, $sp, 191
	blt	$s7, $a0, .LBB1_11
# %bb.57:                               #   in Loop: Header=BB1_13 Depth=1
	pcalau12i	$a0, %got_pc_hi20(TRUNCATE)
	ld.d	$a0, $a0, %got_pc_lo12(TRUNCATE)
	st.w	$t6, $a0, 0
	move	$s7, $a2
	b	.LBB1_11
	.p2align	4, , 16
.LBB1_58:                               #   in Loop: Header=BB1_13 Depth=1
	pcalau12i	$a0, %got_pc_hi20(DELIMITER)
	ld.d	$a0, $a0, %got_pc_lo12(DELIMITER)
	ld.w	$a0, $a0, 0
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 96                    # 8-byte Folded Reload
	addi.d	$t5, $sp, 191
	beqz	$a0, .LBB1_62
# %bb.59:                               # %.preheader
                                        #   in Loop: Header=BB1_13 Depth=1
	addi.d	$a0, $zero, -1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	blt	$a5, $t6, .LBB1_64
	.p2align	4, , 16
.LBB1_60:                               # %.lr.ph347
                                        #   Parent Loop BB1_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a5, $a3, 0
	ld.bu	$a6, $a4, 0
	bne	$a5, $a6, .LBB1_63
# %bb.61:                               #   in Loop: Header=BB1_60 Depth=2
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB1_60
	b	.LBB1_64
.LBB1_62:                               #   in Loop: Header=BB1_13 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$s7, $a0
	lu12i.w	$a2, 12
	add.w	$ra, $a3, $a2
	st.d	$ra, $sp, 64                    # 8-byte Folded Spill
	bge	$a0, $a3, .LBB1_15
	b	.LBB1_16
.LBB1_63:                               #   in Loop: Header=BB1_13 Depth=1
	move	$a0, $zero
.LBB1_64:                               # %._crit_edge348
                                        #   in Loop: Header=BB1_13 Depth=1
	add.d	$t7, $a0, $t7
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$s7, $a0
	lu12i.w	$a2, 12
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	add.w	$ra, $a3, $a2
	st.d	$ra, $sp, 64                    # 8-byte Folded Spill
	blt	$a0, $a3, .LBB1_16
	b	.LBB1_15
.LBB1_65:
	pcalau12i	$a0, %got_pc_hi20(num_of_matched)
	ld.d	$a0, $a0, %got_pc_lo12(num_of_matched)
	ld.w	$a1, $a0, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(CurrentFileName)
	ld.d	$a0, $a0, %got_pc_lo12(CurrentFileName)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB1_66:                               # %.loopexit
	lu12i.w	$a0, 23
	ori	$a0, $a0, 2416
	add.d	$sp, $sp, $a0
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
.Lfunc_end1:
	.size	asearch, .Lfunc_end1-asearch
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym CurrentFileName
