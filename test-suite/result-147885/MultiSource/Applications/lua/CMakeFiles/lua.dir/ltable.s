	.file	"ltable.c"
	.text
	.hidden	luaH_next                       # -- Begin function luaH_next
	.globl	luaH_next
	.p2align	5
	.type	luaH_next,@function
luaH_next:                              # @luaH_next
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
	move	$fp, $a2
	ld.w	$a2, $a2, 8
	ori	$a3, $zero, 4
	move	$s0, $a1
	move	$s1, $a0
	bltu	$a3, $a2, .LBB0_3
# %bb.1:
	slli.d	$a0, $a2, 2
	pcalau12i	$a1, %pc_hi20(.LJTI0_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a1, $a1, $a0
	addi.w	$a0, $zero, -1
	jr	$a1
.LBB0_2:
	ld.bu	$a0, $s0, 11
	ld.w	$a1, $fp, 0
	ld.d	$a2, $s0, 32
	addi.d	$a3, $zero, -1
	sll.w	$a0, $a3, $a0
	andn	$a0, $a1, $a0
	b	.LBB0_6
.LBB0_3:
	ld.bu	$a0, $s0, 11
	ld.d	$a1, $s0, 32
	ld.w	$a2, $fp, 0
	addi.d	$a3, $zero, -1
	sll.w	$a0, $a3, $a0
	ori	$a3, $zero, 1
	orn	$a0, $a3, $a0
	mod.wu	$a0, $a2, $a0
.LBB0_4:                                # %mainposition.exit.i.preheader
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a2, $a0, 5
	alsl.d	$a0, $a0, $a2, 3
	add.d	$s3, $a1, $a0
	b	.LBB0_7
.LBB0_5:
	ld.d	$a0, $fp, 0
	ld.bu	$a1, $s0, 11
	ld.w	$a0, $a0, 12
	ld.d	$a2, $s0, 32
	addi.d	$a3, $zero, -1
	sll.w	$a1, $a3, $a1
	andn	$a0, $a0, $a1
.LBB0_6:                                # %mainposition.exit.i.preheader
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	add.d	$s3, $a2, $a0
.LBB0_7:                                # %mainposition.exit.i.preheader
	ori	$s4, $zero, 11
	ori	$s5, $zero, 4
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_8:                                #   in Loop: Header=BB0_9 Depth=1
	ld.d	$s3, $s3, 32
	beqz	$s3, .LBB0_14
.LBB0_9:                                # %mainposition.exit.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s2, $s3, 16
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(luaO_rawequalObj)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_13
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	ld.w	$a0, $s3, 24
	bne	$a0, $s4, .LBB0_8
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	ld.w	$a0, $fp, 8
	blt	$a0, $s5, .LBB0_8
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $fp, 0
	bne	$a0, $a1, .LBB0_8
.LBB0_13:
	ld.d	$a0, $s0, 32
	sub.d	$a0, $s3, $a0
	srli.d	$a0, $a0, 3
	ld.w	$a1, $s0, 56
	lu12i.w	$a2, -209716
	ori	$a2, $a2, 3277
	mul.d	$a0, $a0, $a2
	add.w	$a0, $a1, $a0
	b	.LBB0_15
.LBB0_14:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(luaG_runerror)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB0_15:                               # %findindex.exit
	ld.w	$a1, $s0, 56
	addi.d	$a3, $a0, 1
	slli.d	$a0, $a0, 4
	move	$a2, $a3
	.p2align	4, , 16
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	bge	$a3, $a1, .LBB0_19
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=1
	ld.d	$a4, $s0, 24
	add.d	$a4, $a4, $a0
	ld.w	$a4, $a4, 24
	addi.w	$a2, $a2, 1
	addi.d	$a0, $a0, 16
	addi.d	$a3, $a3, 1
	beqz	$a4, .LBB0_16
# %bb.18:
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $fp, 0
	ld.d	$a1, $s0, 24
	ori	$a2, $zero, 3
	st.w	$a2, $fp, 8
	ldx.d	$a2, $a1, $a0
	add.d	$a0, $a1, $a0
	st.d	$a2, $fp, 16
	b	.LBB0_30
.LBB0_19:
	ld.bu	$a0, $s0, 11
	sub.w	$a1, $a2, $a1
	ori	$a2, $zero, 1
	sll.w	$a2, $a2, $a0
	bge	$a1, $a2, .LBB0_23
# %bb.20:                               # %.lr.ph
	ld.d	$a3, $s0, 32
	bstrpick.d	$a0, $a1, 31, 0
	slli.d	$a4, $a0, 5
	alsl.d	$a0, $a0, $a4, 3
	.p2align	4, , 16
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a3, $a0
	ld.w	$a5, $a4, 8
	bnez	$a5, .LBB0_29
# %bb.22:                               #   in Loop: Header=BB0_21 Depth=1
	addi.w	$a1, $a1, 1
	addi.d	$a0, $a0, 40
	blt	$a1, $a2, .LBB0_21
.LBB0_23:
	move	$a0, $zero
	b	.LBB0_31
.LBB0_24:
	fld.d	$fa0, $fp, 0
	ftintrz.w.d	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_27
# %bb.25:
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB0_27
# %bb.26:
	ld.w	$a1, $s0, 56
	bge	$a1, $a0, .LBB0_33
.LBB0_27:                               # %.thread27.i
	movgr2fr.d	$fa1, $zero
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB0_32
# %bb.28:
	ld.d	$s3, $s0, 32
	b	.LBB0_7
.LBB0_29:
	ld.d	$a1, $a4, 16
	st.d	$a1, $fp, 0
	ld.w	$a1, $a4, 24
	ld.d	$a2, $s0, 32
	st.w	$a1, $fp, 8
	ldx.d	$a1, $a2, $a0
	add.d	$a0, $a2, $a0
	st.d	$a1, $fp, 16
.LBB0_30:                               # %.loopexit.sink.split
	ld.w	$a0, $a0, 8
	st.w	$a0, $fp, 24
	ori	$a0, $zero, 1
.LBB0_31:                               # %.loopexit
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
.LBB0_32:                               # %.critedge.i.i.i
	movfr2gr.d	$a0, $fa0
	srli.d	$a1, $a0, 32
	ld.bu	$a2, $s0, 11
	add.w	$a0, $a1, $a0
	ld.d	$a1, $s0, 32
	addi.d	$a3, $zero, -1
	sll.w	$a2, $a3, $a2
	ori	$a3, $zero, 1
	orn	$a2, $a3, $a2
	mod.wu	$a0, $a0, $a2
	b	.LBB0_4
.LBB0_33:
	addi.w	$a0, $a0, -1
	b	.LBB0_15
.Lfunc_end0:
	.size	luaH_next, .Lfunc_end0-luaH_next
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_15-.LJTI0_0
	.word	.LBB0_2-.LJTI0_0
	.word	.LBB0_3-.LJTI0_0
	.word	.LBB0_24-.LJTI0_0
	.word	.LBB0_5-.LJTI0_0
                                        # -- End function
	.text
	.hidden	luaH_resizearray                # -- Begin function luaH_resizearray
	.globl	luaH_resizearray
	.p2align	5
	.type	luaH_resizearray,@function
luaH_resizearray:                       # @luaH_resizearray
# %bb.0:
	ld.d	$a3, $a1, 32
	pcalau12i	$a4, %pc_hi20(dummynode_)
	addi.d	$a4, $a4, %pc_lo12(dummynode_)
	beq	$a3, $a4, .LBB1_2
# %bb.1:
	ld.bu	$a3, $a1, 11
	ori	$a4, $zero, 1
	sll.w	$a3, $a4, $a3
	pcaddu18i	$t8, %call36(resize)
	jr	$t8
.LBB1_2:
	move	$a3, $zero
	pcaddu18i	$t8, %call36(resize)
	jr	$t8
.Lfunc_end1:
	.size	luaH_resizearray, .Lfunc_end1-luaH_resizearray
                                        # -- End function
	.p2align	5                               # -- Begin function resize
	.type	resize,@function
resize:                                 # @resize
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
	move	$s1, $a1
	ld.w	$s5, $a1, 56
	ld.bu	$s7, $a1, 11
	ld.d	$a1, $a1, 32
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	move	$s3, $a3
	move	$s2, $a2
	move	$s0, $a0
	addi.w	$s6, $zero, -1
	bge	$s5, $a2, .LBB2_12
# %bb.1:
	blt	$s2, $s6, .LBB2_3
# %bb.2:
	ld.d	$a1, $s1, 24
	slli.d	$a2, $s5, 4
	slli.d	$a3, $s2, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaM_realloc_)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s1, 56
	st.d	$a0, $s1, 24
	blt	$a4, $s2, .LBB2_4
	b	.LBB2_11
.LBB2_3:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaM_toobig)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s1, 56
	st.d	$a0, $s1, 24
	bge	$a4, $s2, .LBB2_11
.LBB2_4:                                # %.lr.ph.preheader.i
	sub.d	$a2, $s2, $a4
	ori	$a1, $zero, 2
	bgeu	$a2, $a1, .LBB2_6
# %bb.5:
	move	$a1, $a4
	b	.LBB2_9
.LBB2_6:                                # %vector.ph
	move	$a3, $a2
	bstrins.d	$a3, $zero, 0, 0
	add.d	$a1, $a3, $a4
	alsl.d	$a4, $a4, $a0, 4
	addi.d	$a4, $a4, 24
	move	$a5, $a3
	.p2align	4, , 16
.LBB2_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a4, -16
	st.w	$zero, $a4, 0
	addi.d	$a5, $a5, -2
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB2_7
# %bb.8:                                # %middle.block
	beq	$a2, $a3, .LBB2_11
.LBB2_9:                                # %.lr.ph.i.preheader
	sub.d	$a2, $s2, $a1
	alsl.d	$a0, $a1, $a0, 4
	addi.d	$a0, $a0, 8
	.p2align	4, , 16
.LBB2_10:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a0, 0
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 16
	bnez	$a2, .LBB2_10
.LBB2_11:                               # %setarrayvector.exit
	st.w	$s2, $s1, 56
.LBB2_12:
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(setnodevector)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(luaO_nilobject_)
	addi.d	$s3, $a0, %pc_lo12(luaO_nilobject_)
	bge	$s2, $s5, .LBB2_31
# %bb.13:
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	st.w	$s2, $s1, 56
	ori	$s7, $zero, 3
	ori	$s8, $zero, 1
	move	$a0, $s2
	b	.LBB2_17
	.p2align	4, , 16
.LBB2_14:                               # %luaH_getnum.exit.thread
                                        #   in Loop: Header=BB2_17 Depth=1
	fst.d	$fa0, $sp, 24
	st.w	$s7, $sp, 32
	addi.d	$a2, $sp, 24
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(newkey)
	jirl	$ra, $ra, 0
.LBB2_15:                               # %luaH_setnum.exit
                                        #   in Loop: Header=BB2_17 Depth=1
	ld.d	$a1, $s4, 0
	st.d	$a1, $a0, 0
	ld.w	$a1, $s4, 8
	st.w	$a1, $a0, 8
.LBB2_16:                               # %._crit_edge72
                                        #   in Loop: Header=BB2_17 Depth=1
	addi.w	$a1, $fp, 0
	move	$a0, $fp
	beq	$s5, $a1, .LBB2_27
.LBB2_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_23 Depth 2
	ld.d	$a1, $s1, 24
	alsl.d	$s4, $a0, $a1, 4
	ld.w	$a1, $s4, 8
	addi.d	$fp, $a0, 1
	beqz	$a1, .LBB2_16
# %bb.18:                               #   in Loop: Header=BB2_17 Depth=1
	ld.w	$a1, $s1, 56
	addi.w	$a2, $a0, 0
	move	$a0, $s4
	bltu	$a2, $a1, .LBB2_25
# %bb.19:                               #   in Loop: Header=BB2_17 Depth=1
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa0, $fa0
	beqz	$fp, .LBB2_21
# %bb.20:                               # %.critedge.i.i
                                        #   in Loop: Header=BB2_17 Depth=1
	movfr2gr.d	$a0, $fa0
	ld.bu	$a1, $s1, 11
	srli.d	$a2, $a0, 32
	add.w	$a0, $a2, $a0
	ld.d	$a2, $s1, 32
	sll.w	$a1, $s6, $a1
	orn	$a1, $s8, $a1
	mod.wu	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	add.d	$a0, $a2, $a0
	b	.LBB2_23
.LBB2_21:                               #   in Loop: Header=BB2_17 Depth=1
	ld.d	$a0, $s1, 32
	b	.LBB2_23
	.p2align	4, , 16
.LBB2_22:                               #   in Loop: Header=BB2_23 Depth=2
	ld.d	$a0, $a0, 32
	beqz	$a0, .LBB2_14
.LBB2_23:                               # %hashnum.exit.i
                                        #   Parent Loop BB2_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $a0, 24
	bne	$a1, $s7, .LBB2_22
# %bb.24:                               #   in Loop: Header=BB2_23 Depth=2
	fld.d	$fa1, $a0, 16
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB2_22
.LBB2_25:                               # %luaH_getnum.exit
                                        #   in Loop: Header=BB2_17 Depth=1
	bne	$a0, $s3, .LBB2_15
# %bb.26:                               # %luaH_getnum.exit.luaH_getnum.exit.thread_crit_edge
                                        #   in Loop: Header=BB2_17 Depth=1
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa0, $fa0
	b	.LBB2_14
.LBB2_27:
	blt	$s2, $s6, .LBB2_29
# %bb.28:
	ld.d	$a1, $s1, 24
	slli.d	$a2, $s5, 4
	slli.d	$a3, $s2, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaM_realloc_)
	jirl	$ra, $ra, 0
	b	.LBB2_30
.LBB2_29:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaM_toobig)
	jirl	$ra, $ra, 0
.LBB2_30:
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	st.d	$a0, $s1, 24
.LBB2_31:
	ori	$s4, $zero, 1
	ori	$a0, $zero, 31
	sll.w	$fp, $s4, $s7
	bne	$s7, $a0, .LBB2_35
.LBB2_32:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(dummynode_)
	addi.d	$a0, $a0, %pc_lo12(dummynode_)
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB2_34
# %bb.33:
	slli.d	$a0, $fp, 5
	alsl.d	$a2, $fp, $a0, 3
	move	$a0, $s0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(luaM_realloc_)
	jirl	$ra, $ra, 0
.LBB2_34:
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
.LBB2_35:                               # %.lr.ph
	addi.d	$a0, $fp, -1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	addi.d	$s2, $a0, 16
	addi.d	$s5, $fp, 1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s6, $a0, %pc_lo12(.L.str)
	ori	$s7, $zero, 3
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s8, $a0, %pc_lo12(.L.str.1)
	b	.LBB2_40
.LBB2_36:                               # %.sink.split
                                        #   in Loop: Header=BB2_40 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaG_runerror)
	jirl	$ra, $ra, 0
.LBB2_37:                               #   in Loop: Header=BB2_40 Depth=1
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(newkey)
	jirl	$ra, $ra, 0
.LBB2_38:                               # %luaH_set.exit
                                        #   in Loop: Header=BB2_40 Depth=1
	ld.d	$a1, $s2, -16
	st.d	$a1, $a0, 0
	ld.w	$a1, $s2, -8
	st.w	$a1, $a0, 8
.LBB2_39:                               #   in Loop: Header=BB2_40 Depth=1
	addi.w	$s5, $s5, -1
	addi.d	$s2, $s2, -40
	bge	$s4, $s5, .LBB2_32
.LBB2_40:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, -8
	beqz	$a0, .LBB2_39
# %bb.41:                               #   in Loop: Header=BB2_40 Depth=1
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(luaH_get)
	jirl	$ra, $ra, 0
	st.b	$zero, $s1, 10
	bne	$a0, $s3, .LBB2_38
# %bb.42:                               #   in Loop: Header=BB2_40 Depth=1
	ld.w	$a0, $s2, 8
	move	$a1, $s6
	beqz	$a0, .LBB2_36
# %bb.43:                               #   in Loop: Header=BB2_40 Depth=1
	bne	$a0, $s7, .LBB2_37
# %bb.44:                               #   in Loop: Header=BB2_40 Depth=1
	fld.d	$fa0, $s2, 0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	move	$a1, $s8
	bcnez	$fcc0, .LBB2_37
	b	.LBB2_36
.Lfunc_end2:
	.size	resize, .Lfunc_end2-resize
                                        # -- End function
	.hidden	luaH_new                        # -- Begin function luaH_new
	.globl	luaH_new
	.p2align	5
	.type	luaH_new,@function
luaH_new:                               # @luaH_new
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s1, $a1
	move	$s0, $a0
	ori	$a3, $zero, 64
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(luaM_realloc_)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a2, $zero, 5
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(luaC_link)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 255
	st.h	$a0, $s2, 10
	vrepli.b	$vr0, 0
	vst	$vr0, $s2, 16
	st.w	$zero, $s2, 56
	pcalau12i	$a0, %pc_hi20(dummynode_)
	addi.d	$a0, $a0, %pc_lo12(dummynode_)
	addi.w	$a1, $zero, -1
	st.d	$a0, $s2, 32
	blt	$s1, $a1, .LBB3_2
# %bb.1:
	slli.d	$a3, $s1, 4
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(luaM_realloc_)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s2, 56
	st.d	$a0, $s2, 24
	blt	$a4, $s1, .LBB3_3
	b	.LBB3_10
.LBB3_2:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaM_toobig)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s2, 56
	st.d	$a0, $s2, 24
	bge	$a4, $s1, .LBB3_10
.LBB3_3:                                # %.lr.ph.preheader.i
	sub.d	$a2, $s1, $a4
	ori	$a1, $zero, 2
	bgeu	$a2, $a1, .LBB3_5
# %bb.4:
	move	$a1, $a4
	b	.LBB3_8
.LBB3_5:                                # %vector.ph
	move	$a3, $a2
	bstrins.d	$a3, $zero, 0, 0
	add.d	$a1, $a3, $a4
	alsl.d	$a4, $a4, $a0, 4
	addi.d	$a4, $a4, 24
	move	$a5, $a3
	.p2align	4, , 16
.LBB3_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a4, -16
	st.w	$zero, $a4, 0
	addi.d	$a5, $a5, -2
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB3_6
# %bb.7:                                # %middle.block
	beq	$a2, $a3, .LBB3_10
.LBB3_8:                                # %.lr.ph.i.preheader
	sub.d	$a2, $s1, $a1
	alsl.d	$a0, $a1, $a0, 4
	addi.d	$a0, $a0, 8
	.p2align	4, , 16
.LBB3_9:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a0, 0
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 16
	bnez	$a2, .LBB3_9
.LBB3_10:                               # %setarrayvector.exit
	st.w	$s1, $s2, 56
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $fp
	pcaddu18i	$ra, %call36(setnodevector)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	luaH_new, .Lfunc_end3-luaH_new
                                        # -- End function
	.p2align	5                               # -- Begin function setnodevector
	.type	setnodevector,@function
setnodevector:                          # @setnodevector
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	beqz	$a2, .LBB4_6
# %bb.1:
	move	$s0, $a0
	addi.w	$a0, $a2, -1
	pcaddu18i	$ra, %call36(luaO_log2)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 26
	addi.w	$s1, $a0, 1
	blt	$a0, $a1, .LBB4_4
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaG_runerror)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 31
	bne	$s1, $a0, .LBB4_4
# %bb.3:                                # %.thread30
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaM_toobig)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 32
	lu12i.w	$s2, -524288
	b	.LBB4_10
.LBB4_4:
	ori	$a0, $zero, 1
	sll.w	$s2, $a0, $s1
	slli.d	$a0, $s2, 5
	alsl.d	$a3, $s2, $a0, 3
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(luaM_realloc_)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 31
	st.d	$a0, $fp, 32
	bne	$s1, $a1, .LBB4_7
# %bb.5:
	lu12i.w	$s2, -524288
	b	.LBB4_10
.LBB4_6:
	move	$s1, $zero
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(dummynode_)
	addi.d	$a0, $a0, %pc_lo12(dummynode_)
	st.d	$a0, $fp, 32
	b	.LBB4_10
.LBB4_7:                                # %.lr.ph.preheader
	move	$a0, $zero
	move	$a1, $s2
	.p2align	4, , 16
.LBB4_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 32
	add.d	$a2, $a2, $a0
	st.d	$zero, $a2, 32
	st.w	$zero, $a2, 24
	st.w	$zero, $a2, 8
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 40
	bnez	$a1, .LBB4_8
# %bb.9:                                # %._crit_edge.loopexit
	ld.d	$a0, $fp, 32
.LBB4_10:
	st.b	$s1, $fp, 11
	alsl.d	$a1, $s2, $s2, 2
	slli.d	$a1, $a1, 3
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, 40
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end4:
	.size	setnodevector, .Lfunc_end4-setnodevector
                                        # -- End function
	.hidden	luaH_free                       # -- Begin function luaH_free
	.globl	luaH_free
	.p2align	5
	.type	luaH_free,@function
luaH_free:                              # @luaH_free
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	ld.d	$a1, $a1, 32
	pcalau12i	$a2, %pc_hi20(dummynode_)
	addi.d	$a2, $a2, %pc_lo12(dummynode_)
	move	$s0, $a0
	beq	$a1, $a2, .LBB5_2
# %bb.1:
	ld.bu	$a0, $fp, 11
	ori	$a2, $zero, 1
	sll.w	$a0, $a2, $a0
	slli.d	$a2, $a0, 5
	alsl.d	$a2, $a0, $a2, 3
	move	$a0, $s0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(luaM_realloc_)
	jirl	$ra, $ra, 0
.LBB5_2:
	ld.w	$a0, $fp, 56
	ld.d	$a1, $fp, 24
	slli.d	$a2, $a0, 4
	move	$a0, $s0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(luaM_realloc_)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 64
	move	$a0, $s0
	move	$a1, $fp
	move	$a3, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(luaM_realloc_)
	jr	$t8
.Lfunc_end5:
	.size	luaH_free, .Lfunc_end5-luaH_free
                                        # -- End function
	.hidden	luaH_getnum                     # -- Begin function luaH_getnum
	.globl	luaH_getnum
	.p2align	5
	.type	luaH_getnum,@function
luaH_getnum:                            # @luaH_getnum
# %bb.0:
	ld.w	$a3, $a0, 56
	addi.w	$a2, $a1, -1
	bgeu	$a2, $a3, .LBB6_2
# %bb.1:
	ld.d	$a0, $a0, 24
	alsl.d	$a0, $a2, $a0, 4
	ret
.LBB6_2:
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	beqz	$a1, .LBB6_4
# %bb.3:                                # %.critedge.i
	movfr2gr.d	$a1, $fa0
	srli.d	$a2, $a1, 32
	ld.bu	$a3, $a0, 11
	add.w	$a1, $a2, $a1
	ld.d	$a0, $a0, 32
	addi.d	$a2, $zero, -1
	sll.w	$a2, $a2, $a3
	ori	$a3, $zero, 1
	orn	$a2, $a3, $a2
	mod.wu	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a2, $a1, 5
	alsl.d	$a1, $a1, $a2, 3
	add.d	$a0, $a0, $a1
	b	.LBB6_5
.LBB6_4:
	ld.d	$a0, $a0, 32
.LBB6_5:                                # %hashnum.exit.preheader
	ori	$a1, $zero, 3
	pcalau12i	$a2, %pc_hi20(luaO_nilobject_)
	addi.d	$a2, $a2, %pc_lo12(luaO_nilobject_)
	b	.LBB6_7
	.p2align	4, , 16
.LBB6_6:                                #   in Loop: Header=BB6_7 Depth=1
	ld.d	$a0, $a0, 32
	beqz	$a0, .LBB6_10
.LBB6_7:                                # %hashnum.exit
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 24
	bne	$a3, $a1, .LBB6_6
# %bb.8:                                #   in Loop: Header=BB6_7 Depth=1
	fld.d	$fa1, $a0, 16
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB6_6
# %bb.9:                                # %.loopexit
	ret
.LBB6_10:
	move	$a0, $a2
	ret
.Lfunc_end6:
	.size	luaH_getnum, .Lfunc_end6-luaH_getnum
                                        # -- End function
	.hidden	luaH_getstr                     # -- Begin function luaH_getstr
	.globl	luaH_getstr
	.p2align	5
	.type	luaH_getstr,@function
luaH_getstr:                            # @luaH_getstr
# %bb.0:
	ld.bu	$a2, $a0, 11
	ld.w	$a3, $a1, 12
	ld.d	$a0, $a0, 32
	addi.d	$a4, $zero, -1
	sll.w	$a2, $a4, $a2
	andn	$a2, $a3, $a2
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 4
	pcalau12i	$a3, %pc_hi20(luaO_nilobject_)
	addi.d	$a3, $a3, %pc_lo12(luaO_nilobject_)
	b	.LBB7_2
	.p2align	4, , 16
.LBB7_1:                                #   in Loop: Header=BB7_2 Depth=1
	ld.d	$a0, $a0, 32
	beqz	$a0, .LBB7_5
.LBB7_2:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a0, 24
	bne	$a4, $a2, .LBB7_1
# %bb.3:                                #   in Loop: Header=BB7_2 Depth=1
	ld.d	$a4, $a0, 16
	bne	$a4, $a1, .LBB7_1
# %bb.4:
	ret
.LBB7_5:
	move	$a0, $a3
	ret
.Lfunc_end7:
	.size	luaH_getstr, .Lfunc_end7-luaH_getstr
                                        # -- End function
	.hidden	luaH_get                        # -- Begin function luaH_get
	.globl	luaH_get
	.p2align	5
	.type	luaH_get,@function
luaH_get:                               # @luaH_get
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	ld.w	$a1, $a1, 8
	pcalau12i	$a2, %pc_hi20(luaO_nilobject_)
	ori	$a3, $zero, 4
	addi.d	$fp, $a2, %pc_lo12(luaO_nilobject_)
	bltu	$a3, $a1, .LBB8_3
# %bb.1:
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI8_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI8_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB8_2:
	ld.bu	$a1, $a0, 11
	ld.w	$a2, $s0, 0
	ld.d	$a0, $a0, 32
	addi.d	$a3, $zero, -1
	sll.w	$a1, $a3, $a1
	andn	$a1, $a2, $a1
	b	.LBB8_5
.LBB8_3:
	ld.bu	$a1, $a0, 11
	ld.d	$a0, $a0, 32
	ld.w	$a2, $s0, 0
	addi.d	$a3, $zero, -1
	sll.w	$a1, $a3, $a1
	ori	$a3, $zero, 1
	orn	$a1, $a3, $a1
	mod.wu	$a1, $a2, $a1
.LBB8_4:                                # %mainposition.exit.preheader
	bstrpick.d	$a1, $a1, 31, 0
.LBB8_5:                                # %mainposition.exit.preheader
	slli.d	$a2, $a1, 5
	alsl.d	$a1, $a1, $a2, 3
	add.d	$s1, $a0, $a1
	.p2align	4, , 16
.LBB8_6:                                # %mainposition.exit
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $s1, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(luaO_rawequalObj)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_8
# %bb.7:                                #   in Loop: Header=BB8_6 Depth=1
	ld.d	$s1, $s1, 32
	bnez	$s1, .LBB8_6
	b	.LBB8_27
.LBB8_8:
	move	$fp, $s1
	b	.LBB8_27
.LBB8_9:
	ld.d	$a1, $s0, 0
	ld.bu	$a2, $a0, 11
	ld.w	$a3, $a1, 12
	ld.d	$a0, $a0, 32
	addi.d	$a4, $zero, -1
	sll.w	$a2, $a4, $a2
	andn	$a2, $a3, $a2
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 4
	b	.LBB8_11
	.p2align	4, , 16
.LBB8_10:                               #   in Loop: Header=BB8_11 Depth=1
	ld.d	$a0, $a0, 32
	beqz	$a0, .LBB8_27
.LBB8_11:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 24
	bne	$a3, $a2, .LBB8_10
# %bb.12:                               #   in Loop: Header=BB8_11 Depth=1
	ld.d	$a3, $a0, 16
	bne	$a3, $a1, .LBB8_10
	b	.LBB8_26
.LBB8_13:
	fld.d	$fa1, $s0, 0
	ftintrz.w.d	$fa0, $fa1
	movfr2gr.s	$a1, $fa0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fcmp.cune.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB8_16
# %bb.14:
	ld.w	$a3, $a0, 56
	addi.w	$a2, $a1, -1
	bgeu	$a2, $a3, .LBB8_18
# %bb.15:                               # %luaH_getnum.exit.thread32
	ld.d	$a0, $a0, 24
	alsl.d	$fp, $a2, $a0, 4
	b	.LBB8_27
.LBB8_16:                               # %.thread
	movgr2fr.d	$fa0, $zero
	fcmp.cune.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB8_20
# %bb.17:
	ld.d	$s1, $a0, 32
	b	.LBB8_6
.LBB8_18:
	beqz	$a1, .LBB8_21
# %bb.19:                               # %.critedge.i.i
	movfr2gr.d	$a1, $fa0
	srli.d	$a2, $a1, 32
	ld.bu	$a3, $a0, 11
	add.w	$a1, $a2, $a1
	ld.d	$a0, $a0, 32
	addi.d	$a2, $zero, -1
	sll.w	$a2, $a2, $a3
	ori	$a3, $zero, 1
	orn	$a2, $a3, $a2
	mod.wu	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a2, $a1, 5
	alsl.d	$a1, $a1, $a2, 3
	add.d	$a0, $a0, $a1
	b	.LBB8_22
.LBB8_20:                               # %.critedge.i.i26
	movfr2gr.d	$a1, $fa1
	srli.d	$a2, $a1, 32
	ld.bu	$a3, $a0, 11
	add.w	$a1, $a2, $a1
	ld.d	$a0, $a0, 32
	addi.d	$a2, $zero, -1
	sll.w	$a2, $a2, $a3
	ori	$a3, $zero, 1
	orn	$a2, $a3, $a2
	mod.wu	$a1, $a1, $a2
	b	.LBB8_4
.LBB8_21:
	ld.d	$a0, $a0, 32
.LBB8_22:                               # %hashnum.exit.i.preheader
	ori	$a1, $zero, 3
	b	.LBB8_24
	.p2align	4, , 16
.LBB8_23:                               #   in Loop: Header=BB8_24 Depth=1
	ld.d	$a0, $a0, 32
	beqz	$a0, .LBB8_27
.LBB8_24:                               # %hashnum.exit.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a0, 24
	bne	$a2, $a1, .LBB8_23
# %bb.25:                               #   in Loop: Header=BB8_24 Depth=1
	fld.d	$fa1, $a0, 16
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB8_23
.LBB8_26:
	move	$fp, $a0
.LBB8_27:                               # %luaH_getstr.exit
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end8:
	.size	luaH_get, .Lfunc_end8-luaH_get
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI8_0:
	.word	.LBB8_27-.LJTI8_0
	.word	.LBB8_2-.LJTI8_0
	.word	.LBB8_3-.LJTI8_0
	.word	.LBB8_13-.LJTI8_0
	.word	.LBB8_9-.LJTI8_0
                                        # -- End function
	.text
	.hidden	luaH_set                        # -- Begin function luaH_set
	.globl	luaH_set
	.p2align	5
	.type	luaH_set,@function
luaH_set:                               # @luaH_set
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	move	$a0, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(luaH_get)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(luaO_nilobject_)
	addi.d	$a1, $a1, %pc_lo12(luaO_nilobject_)
	st.b	$zero, $s0, 10
	beq	$a0, $a1, .LBB9_2
# %bb.1:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB9_2:
	ld.w	$a0, $fp, 8
	beqz	$a0, .LBB9_6
# %bb.3:
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB9_8
# %bb.4:
	fld.d	$fa0, $fp, 0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB9_8
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	b	.LBB9_7
.LBB9_6:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
.LBB9_7:                                # %.sink.split
	move	$a0, $s1
	pcaddu18i	$ra, %call36(luaG_runerror)
	jirl	$ra, $ra, 0
.LBB9_8:
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(newkey)
	jr	$t8
.Lfunc_end9:
	.size	luaH_set, .Lfunc_end9-luaH_set
                                        # -- End function
	.p2align	5                               # -- Begin function newkey
	.type	newkey,@function
newkey:                                 # @newkey
# %bb.0:
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 144                  # 8-byte Folded Spill
	move	$s1, $a2
	move	$fp, $a1
	move	$s6, $a0
	ori	$s4, $zero, 3
	addi.d	$s0, $zero, -1
	ori	$s3, $zero, 1
	pcalau12i	$a0, %pc_hi20(dummynode_)
	addi.d	$s2, $a0, %pc_lo12(dummynode_)
	addi.d	$s7, $sp, 32
	ori	$s8, $zero, 27
	ori	$s5, $zero, 7
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	movgr2fr.d	$fs0, $zero
.LBB10_1:                               # %tailrecurse
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_11 Depth 2
                                        #     Child Loop BB10_16 Depth 2
                                        #       Child Loop BB10_22 Depth 3
                                        #       Child Loop BB10_25 Depth 3
                                        #     Child Loop BB10_31 Depth 2
                                        #     Child Loop BB10_42 Depth 2
	ld.w	$a0, $s1, 8
	addi.d	$a0, $a0, -1
	bltu	$s4, $a0, .LBB10_4
# %bb.2:                                # %tailrecurse
                                        #   in Loop: Header=BB10_1 Depth=1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI10_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI10_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB10_3:                               #   in Loop: Header=BB10_1 Depth=1
	ld.bu	$a0, $fp, 11
	ld.w	$a2, $s1, 0
	ld.d	$a1, $fp, 32
	sll.w	$a0, $s0, $a0
	andn	$a0, $a2, $a0
	slli.d	$a2, $a0, 5
	alsl.d	$a0, $a0, $a2, 3
	add.d	$a0, $a1, $a0
	bne	$a0, $s2, .LBB10_9
	b	.LBB10_10
	.p2align	4, , 16
.LBB10_4:                               #   in Loop: Header=BB10_1 Depth=1
	ld.bu	$a0, $fp, 11
	ld.w	$a2, $s1, 0
	ld.d	$a1, $fp, 32
	sll.w	$a0, $s0, $a0
	orn	$a0, $s3, $a0
	mod.wu	$a0, $a2, $a0
.LBB10_5:                               # %mainposition.exit
                                        #   in Loop: Header=BB10_1 Depth=1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a2, $a0, 5
	alsl.d	$a0, $a0, $a2, 3
	add.d	$a0, $a1, $a0
	bne	$a0, $s2, .LBB10_9
	b	.LBB10_10
	.p2align	4, , 16
.LBB10_6:                               #   in Loop: Header=BB10_1 Depth=1
	fld.d	$fa0, $s1, 0
	fcmp.cune.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB10_53
# %bb.7:                                #   in Loop: Header=BB10_1 Depth=1
	ld.d	$a1, $fp, 32
	move	$a0, $a1
	bne	$a0, $s2, .LBB10_9
	b	.LBB10_10
	.p2align	4, , 16
.LBB10_8:                               #   in Loop: Header=BB10_1 Depth=1
	ld.d	$a0, $s1, 0
	ld.bu	$a2, $fp, 11
	ld.w	$a0, $a0, 12
	ld.d	$a1, $fp, 32
	sll.w	$a2, $s0, $a2
	andn	$a0, $a0, $a2
	slli.d	$a2, $a0, 5
	alsl.d	$a0, $a0, $a2, 3
	add.d	$a0, $a1, $a0
	beq	$a0, $s2, .LBB10_10
	.p2align	4, , 16
.LBB10_9:                               # %mainposition.exit
                                        #   in Loop: Header=BB10_1 Depth=1
	ld.w	$a2, $a0, 8
	beqz	$a2, .LBB10_67
.LBB10_10:                              #   in Loop: Header=BB10_1 Depth=1
	ld.d	$a3, $fp, 40
	.p2align	4, , 16
.LBB10_11:                              #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a2, $a3, -40
	st.d	$a2, $fp, 40
	bgeu	$a1, $a3, .LBB10_13
# %bb.12:                               #   in Loop: Header=BB10_11 Depth=2
	ld.w	$a4, $a3, -16
	move	$a3, $a2
	bnez	$a4, .LBB10_11
	b	.LBB10_54
	.p2align	4, , 16
.LBB10_13:                              # %rehash.exit
                                        #   in Loop: Header=BB10_1 Depth=1
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	addi.d	$a0, $sp, 32
	ori	$a2, $zero, 108
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 56
	move	$a1, $zero
	move	$s0, $zero
	ori	$a7, $zero, 1
	ori	$a2, $zero, 1
	b	.LBB10_16
	.p2align	4, , 16
.LBB10_14:                              #   in Loop: Header=BB10_16 Depth=2
	move	$t2, $zero
.LBB10_15:                              # %._crit_edge.i
                                        #   in Loop: Header=BB10_16 Depth=2
	slli.d	$a3, $a1, 2
	ldx.w	$a4, $a3, $s7
	add.d	$a4, $a4, $t2
	stx.w	$a4, $a3, $s7
	add.d	$s0, $t2, $s0
	addi.d	$a1, $a1, 1
	slli.w	$a2, $a2, 1
	beq	$a1, $s8, .LBB10_27
.LBB10_16:                              #   Parent Loop BB10_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_22 Depth 3
                                        #       Child Loop BB10_25 Depth 3
	move	$a4, $a2
	bge	$a0, $a2, .LBB10_18
# %bb.17:                               #   in Loop: Header=BB10_16 Depth=2
	move	$a4, $a0
	blt	$a0, $a7, .LBB10_27
.LBB10_18:                              #   in Loop: Header=BB10_16 Depth=2
	blt	$a4, $a7, .LBB10_14
# %bb.19:                               # %.lr.ph.i73
                                        #   in Loop: Header=BB10_16 Depth=2
	ld.d	$a5, $fp, 24
	sub.w	$a6, $a4, $a7
	addi.w	$a3, $a4, 1
	bgeu	$a6, $s5, .LBB10_21
# %bb.20:                               #   in Loop: Header=BB10_16 Depth=2
	move	$t2, $zero
	move	$a6, $a7
	b	.LBB10_24
	.p2align	4, , 16
.LBB10_21:                              # %vector.ph
                                        #   in Loop: Header=BB10_16 Depth=2
	bstrpick.d	$a6, $a6, 31, 0
	addi.d	$t0, $a6, 1
	bstrpick.d	$a6, $t0, 32, 3
	slli.d	$t1, $a6, 3
	alsl.d	$a6, $a6, $a7, 3
	alsl.d	$a7, $a7, $a5, 4
	addi.d	$a7, $a7, 56
	move	$t2, $t1
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vori.b	$vr0, $vr1, 0
	.p2align	4, , 16
.LBB10_22:                              # %vector.body
                                        #   Parent Loop BB10_1 Depth=1
                                        #     Parent Loop BB10_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t3, $a7, -64
	ld.w	$t4, $a7, -48
	ld.w	$t5, $a7, -32
	ld.w	$t6, $a7, -16
	vinsgr2vr.w	$vr2, $t3, 0
	vinsgr2vr.w	$vr2, $t4, 1
	vinsgr2vr.w	$vr2, $t5, 2
	vinsgr2vr.w	$vr2, $t6, 3
	ld.w	$t3, $a7, 0
	ld.w	$t4, $a7, 16
	ld.w	$t5, $a7, 32
	ld.w	$t6, $a7, 48
	vinsgr2vr.w	$vr3, $t3, 0
	vinsgr2vr.w	$vr3, $t4, 1
	vinsgr2vr.w	$vr3, $t5, 2
	vinsgr2vr.w	$vr3, $t6, 3
	vseqi.w	$vr2, $vr2, 0
	vseqi.w	$vr3, $vr3, 0
	vadd.w	$vr0, $vr0, $vr2
	vaddi.wu	$vr0, $vr0, 1
	vadd.w	$vr1, $vr1, $vr3
	vaddi.wu	$vr1, $vr1, 1
	addi.d	$t2, $t2, -8
	addi.d	$a7, $a7, 128
	bnez	$t2, .LBB10_22
# %bb.23:                               # %middle.block
                                        #   in Loop: Header=BB10_16 Depth=2
	vadd.w	$vr0, $vr1, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t2, $vr0, 0
	beq	$t0, $t1, .LBB10_26
.LBB10_24:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB10_16 Depth=2
	sub.d	$a4, $a4, $a6
	addi.d	$a4, $a4, 1
	alsl.d	$a5, $a6, $a5, 4
	addi.d	$a5, $a5, -8
	.p2align	4, , 16
.LBB10_25:                              # %scalar.ph
                                        #   Parent Loop BB10_1 Depth=1
                                        #     Parent Loop BB10_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a6, $a5, 0
	sltu	$a6, $zero, $a6
	add.d	$t2, $t2, $a6
	addi.w	$a4, $a4, -1
	addi.d	$a5, $a5, 16
	bnez	$a4, .LBB10_25
.LBB10_26:                              #   in Loop: Header=BB10_16 Depth=2
	move	$a7, $a3
	b	.LBB10_15
	.p2align	4, , 16
.LBB10_27:                              # %numusearray.exit
                                        #   in Loop: Header=BB10_1 Depth=1
	st.d	$s2, $sp, 0                     # 8-byte Folded Spill
	ld.bu	$a0, $fp, 11
	move	$s2, $zero
	move	$s3, $zero
	addi.d	$a1, $zero, -1
	sll.w	$a0, $a1, $a0
	nor	$a0, $a0, $zero
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 5
	alsl.d	$s6, $a0, $a1, 3
	b	.LBB10_31
	.p2align	4, , 16
.LBB10_28:                              #   in Loop: Header=BB10_31 Depth=2
	move	$a0, $zero
.LBB10_29:                              # %countint.exit.i
                                        #   in Loop: Header=BB10_31 Depth=2
	add.d	$s3, $a0, $s3
	addi.d	$s2, $s2, 1
.LBB10_30:                              #   in Loop: Header=BB10_31 Depth=2
	addi.d	$s6, $s6, -40
	addi.w	$a0, $zero, -40
	beq	$s6, $a0, .LBB10_36
.LBB10_31:                              #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 32
	add.d	$a0, $a0, $s6
	ld.w	$a1, $a0, 8
	beqz	$a1, .LBB10_30
# %bb.32:                               #   in Loop: Header=BB10_31 Depth=2
	ld.w	$a1, $a0, 24
	bne	$a1, $s4, .LBB10_28
# %bb.33:                               #   in Loop: Header=BB10_31 Depth=2
	fld.d	$fa0, $a0, 16
	ftintrz.w.d	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB10_28
# %bb.34:                               # %arrayindex.exit.i.i
                                        #   in Loop: Header=BB10_31 Depth=2
	addi.w	$a0, $a0, -1
	bstrpick.d	$a1, $a0, 31, 26
	bnez	$a1, .LBB10_28
# %bb.35:                               #   in Loop: Header=BB10_31 Depth=2
	pcaddu18i	$ra, %call36(luaO_log2)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 2
	addi.d	$a2, $sp, 36
	ldx.w	$a1, $a2, $a0
	addi.d	$a1, $a1, 1
	stx.w	$a1, $a2, $a0
	ori	$a0, $zero, 1
	b	.LBB10_29
	.p2align	4, , 16
.LBB10_36:                              # %numusehash.exit
                                        #   in Loop: Header=BB10_1 Depth=1
	ld.w	$a0, $s1, 8
	bne	$a0, $s4, .LBB10_40
# %bb.37:                               #   in Loop: Header=BB10_1 Depth=1
	fld.d	$fa0, $s1, 0
	ftintrz.w.d	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fcmp.cune.d	$fcc0, $fa0, $fa1
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	bcnez	$fcc0, .LBB10_44
# %bb.38:                               # %arrayindex.exit.i
                                        #   in Loop: Header=BB10_1 Depth=1
	addi.w	$a0, $a0, -1
	bstrpick.d	$a1, $a0, 31, 26
	bnez	$a1, .LBB10_44
# %bb.39:                               #   in Loop: Header=BB10_1 Depth=1
	pcaddu18i	$ra, %call36(luaO_log2)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 2
	addi.d	$a2, $sp, 36
	ldx.w	$a1, $a2, $a0
	addi.d	$a1, $a1, 1
	stx.w	$a1, $a2, $a0
	ori	$a0, $zero, 1
	add.d	$a1, $s3, $s0
	add.w	$a1, $a1, $a0
	ori	$s3, $zero, 1
	bge	$a1, $s3, .LBB10_41
	b	.LBB10_45
	.p2align	4, , 16
.LBB10_40:                              #   in Loop: Header=BB10_1 Depth=1
	move	$a0, $zero
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	add.d	$a1, $s3, $s0
	add.w	$a1, $a1, $a0
	ori	$s3, $zero, 1
	blt	$a1, $s3, .LBB10_45
.LBB10_41:                              # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB10_1 Depth=1
	move	$a6, $zero
	move	$a0, $zero
	move	$a2, $zero
	move	$a3, $zero
	ori	$a5, $zero, 1
	addi.d	$a4, $sp, 32
	.p2align	4, , 16
.LBB10_42:                              # %.lr.ph.i
                                        #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $a4, 0
	slt	$t0, $zero, $a7
	add.w	$a7, $a7, $a3
	slt	$a6, $a6, $a7
	maskeqz	$t1, $a7, $t0
	masknez	$a3, $a3, $t0
	or	$a3, $t1, $a3
	and	$a6, $t0, $a6
	masknez	$a2, $a2, $a6
	maskeqz	$a7, $a7, $a6
	or	$a2, $a7, $a2
	masknez	$a0, $a0, $a6
	maskeqz	$a6, $a5, $a6
	or	$a0, $a6, $a0
	beq	$a3, $a1, .LBB10_46
# %bb.43:                               #   in Loop: Header=BB10_42 Depth=2
	bstrpick.d	$a6, $a5, 30, 0
	slli.d	$a5, $a5, 1
	addi.d	$a4, $a4, 4
	bltu	$a6, $a1, .LBB10_42
	b	.LBB10_46
.LBB10_44:                              #   in Loop: Header=BB10_1 Depth=1
	move	$a0, $zero
	add.d	$a1, $s3, $s0
	add.w	$a1, $a1, $a0
	ori	$s3, $zero, 1
	bge	$a1, $s3, .LBB10_41
.LBB10_45:                              #   in Loop: Header=BB10_1 Depth=1
	move	$a2, $zero
	move	$a0, $zero
.LBB10_46:                              # %computesizes.exit
                                        #   in Loop: Header=BB10_1 Depth=1
	add.d	$a1, $s0, $s2
	sub.d	$a1, $a1, $a2
	addi.w	$a3, $a1, 1
	addi.w	$a2, $a0, 0
	move	$a0, $s6
	move	$a1, $fp
	pcaddu18i	$ra, %call36(resize)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(luaH_get)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(luaO_nilobject_)
	addi.d	$a1, $a1, %pc_lo12(luaO_nilobject_)
	st.b	$zero, $fp, 10
	bne	$a0, $a1, .LBB10_71
# %bb.47:                               #   in Loop: Header=BB10_1 Depth=1
	ld.w	$a0, $s1, 8
	beqz	$a0, .LBB10_51
# %bb.48:                               #   in Loop: Header=BB10_1 Depth=1
	addi.d	$s0, $zero, -1
	ld.d	$s2, $sp, 0                     # 8-byte Folded Reload
	bne	$a0, $s4, .LBB10_1
# %bb.49:                               #   in Loop: Header=BB10_1 Depth=1
	fld.d	$fa0, $s1, 0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB10_1
# %bb.50:                               #   in Loop: Header=BB10_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	b	.LBB10_52
.LBB10_51:                              #   in Loop: Header=BB10_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$s0, $zero, -1
	ld.d	$s2, $sp, 0                     # 8-byte Folded Reload
.LBB10_52:                              # %.sink.split
                                        #   in Loop: Header=BB10_1 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(luaG_runerror)
	jirl	$ra, $ra, 0
	b	.LBB10_1
.LBB10_53:                              # %.critedge.i.i
                                        #   in Loop: Header=BB10_1 Depth=1
	movfr2gr.d	$a0, $fa0
	ld.bu	$a2, $fp, 11
	srli.d	$a1, $a0, 32
	add.w	$a0, $a1, $a0
	ld.d	$a1, $fp, 32
	sll.w	$a2, $s0, $a2
	orn	$a2, $s3, $a2
	mod.wu	$a0, $a0, $a2
	b	.LBB10_5
.LBB10_54:                              # %getfreepos.exit
	ld.w	$a3, $a0, 24
	addi.d	$a3, $a3, -1
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB10_57
# %bb.55:                               # %getfreepos.exit
	slli.d	$a3, $a3, 2
	pcalau12i	$a4, %pc_hi20(.LJTI10_1)
	addi.d	$a4, $a4, %pc_lo12(.LJTI10_1)
	ldx.w	$a3, $a4, $a3
	add.d	$a3, $a4, $a3
	jr	$a3
.LBB10_56:
	ld.bu	$a3, $fp, 11
	ld.w	$a4, $a0, 16
	sll.w	$a3, $s0, $a3
	andn	$a3, $a4, $a3
	b	.LBB10_62
.LBB10_57:
	ld.bu	$a3, $fp, 11
	ld.w	$a4, $a0, 16
.LBB10_58:                              # %mainposition.exit67
	sll.w	$a3, $s0, $a3
	ori	$a5, $zero, 1
	orn	$a3, $a5, $a3
	mod.wu	$a3, $a4, $a3
	bstrpick.d	$a3, $a3, 31, 0
	b	.LBB10_62
.LBB10_59:
	fld.d	$fa0, $a0, 16
	fcmp.ceq.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB10_63
# %bb.60:                               # %.critedge.i.i62
	ld.bu	$a3, $fp, 11
	movfr2gr.d	$a4, $fa0
	srli.d	$a5, $a4, 32
	add.w	$a4, $a5, $a4
	b	.LBB10_58
.LBB10_61:
	ld.d	$a3, $a0, 16
	ld.bu	$a4, $fp, 11
	ld.w	$a3, $a3, 12
	sll.w	$a4, $s0, $a4
	andn	$a3, $a3, $a4
.LBB10_62:                              # %mainposition.exit67
	slli.d	$a4, $a3, 5
	alsl.d	$a3, $a3, $a4, 3
	add.d	$a1, $a1, $a3
.LBB10_63:                              # %mainposition.exit67
	beq	$a1, $a0, .LBB10_66
	.p2align	4, , 16
.LBB10_64:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	move	$a3, $a1
	ld.d	$a1, $a1, 32
	bne	$a1, $a0, .LBB10_64
# %bb.65:
	st.d	$a2, $a3, 32
	ld.d	$a1, $a0, 32
	st.d	$a1, $a2, 32
	vld	$vr0, $a0, 16
	vst	$vr0, $a2, 16
	vld	$vr0, $a0, 0
	vst	$vr0, $a2, 0
	st.d	$zero, $a0, 32
	st.w	$zero, $a0, 8
	b	.LBB10_67
.LBB10_66:
	ld.d	$a1, $a0, 32
	st.d	$a1, $a2, 32
	st.d	$a2, $a0, 32
	move	$a0, $a2
.LBB10_67:                              # %luaH_set.exit
	ld.d	$a1, $s1, 0
	st.d	$a1, $a0, 16
	ld.w	$a1, $s1, 8
	ori	$a2, $zero, 4
	st.w	$a1, $a0, 24
	blt	$a1, $a2, .LBB10_71
# %bb.68:
	ld.d	$a1, $s1, 0
	ld.bu	$a1, $a1, 9
	andi	$a1, $a1, 3
	beqz	$a1, .LBB10_71
# %bb.69:
	ld.bu	$a1, $fp, 9
	andi	$a1, $a1, 4
	beqz	$a1, .LBB10_71
# %bb.70:
	move	$s0, $a0
	move	$a0, $s6
	move	$a1, $fp
	pcaddu18i	$ra, %call36(luaC_barrierback)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB10_71:                              # %luaH_set.exit.thread
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.Lfunc_end10:
	.size	newkey, .Lfunc_end10-newkey
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI10_0:
	.word	.LBB10_3-.LJTI10_0
	.word	.LBB10_4-.LJTI10_0
	.word	.LBB10_6-.LJTI10_0
	.word	.LBB10_8-.LJTI10_0
.LJTI10_1:
	.word	.LBB10_56-.LJTI10_1
	.word	.LBB10_57-.LJTI10_1
	.word	.LBB10_59-.LJTI10_1
	.word	.LBB10_61-.LJTI10_1
                                        # -- End function
	.text
	.hidden	luaH_setnum                     # -- Begin function luaH_setnum
	.globl	luaH_setnum
	.p2align	5
	.type	luaH_setnum,@function
luaH_setnum:                            # @luaH_setnum
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a4, $a1, 56
	addi.w	$a3, $a2, -1
	bgeu	$a3, $a4, .LBB11_2
# %bb.1:
	ld.d	$a4, $a1, 24
	alsl.d	$a3, $a3, $a4, 4
	b	.LBB11_9
.LBB11_2:
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	beqz	$a2, .LBB11_4
# %bb.3:                                # %.critedge.i.i
	movfr2gr.d	$a3, $fa0
	srli.d	$a4, $a3, 32
	ld.bu	$a5, $a1, 11
	add.w	$a3, $a4, $a3
	ld.d	$a4, $a1, 32
	addi.d	$a6, $zero, -1
	sll.w	$a5, $a6, $a5
	ori	$a6, $zero, 1
	orn	$a5, $a6, $a5
	mod.wu	$a3, $a3, $a5
	bstrpick.d	$a3, $a3, 31, 0
	slli.d	$a5, $a3, 5
	alsl.d	$a3, $a3, $a5, 3
	add.d	$a3, $a4, $a3
	b	.LBB11_5
.LBB11_4:
	ld.d	$a3, $a1, 32
.LBB11_5:                               # %hashnum.exit.i.preheader
	ori	$a4, $zero, 3
	b	.LBB11_7
	.p2align	4, , 16
.LBB11_6:                               #   in Loop: Header=BB11_7 Depth=1
	ld.d	$a3, $a3, 32
	beqz	$a3, .LBB11_12
.LBB11_7:                               # %hashnum.exit.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 24
	bne	$a5, $a4, .LBB11_6
# %bb.8:                                #   in Loop: Header=BB11_7 Depth=1
	fld.d	$fa1, $a3, 16
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB11_6
.LBB11_9:                               # %luaH_getnum.exit
	pcalau12i	$a4, %pc_hi20(luaO_nilobject_)
	addi.d	$a4, $a4, %pc_lo12(luaO_nilobject_)
	beq	$a3, $a4, .LBB11_11
# %bb.10:
	move	$a0, $a3
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB11_11:                              # %luaH_getnum.exit.luaH_getnum.exit.thread_crit_edge
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
.LBB11_12:                              # %luaH_getnum.exit.thread
	fst.d	$fa0, $sp, 8
	ori	$a2, $zero, 3
	st.w	$a2, $sp, 16
	addi.d	$a2, $sp, 8
	pcaddu18i	$ra, %call36(newkey)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	move	$a0, $a3
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end11:
	.size	luaH_setnum, .Lfunc_end11-luaH_setnum
                                        # -- End function
	.hidden	luaH_setstr                     # -- Begin function luaH_setstr
	.globl	luaH_setstr
	.p2align	5
	.type	luaH_setstr,@function
luaH_setstr:                            # @luaH_setstr
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	ld.bu	$a3, $a1, 11
	ld.w	$a4, $a2, 12
	ld.d	$a5, $a1, 32
	addi.d	$a6, $zero, -1
	sll.w	$a3, $a6, $a3
	andn	$a3, $a4, $a3
	slli.d	$a4, $a3, 5
	alsl.d	$a3, $a3, $a4, 3
	add.d	$a3, $a5, $a3
	ori	$a4, $zero, 4
	b	.LBB12_2
	.p2align	4, , 16
.LBB12_1:                               #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a3, $a3, 32
	beqz	$a3, .LBB12_6
.LBB12_2:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 24
	bne	$a5, $a4, .LBB12_1
# %bb.3:                                #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a5, $a3, 16
	bne	$a5, $a2, .LBB12_1
# %bb.4:                                # %luaH_getstr.exit
	pcalau12i	$a4, %pc_hi20(luaO_nilobject_)
	addi.d	$a4, $a4, %pc_lo12(luaO_nilobject_)
	beq	$a3, $a4, .LBB12_6
# %bb.5:
	move	$a0, $a3
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB12_6:                               # %luaH_getstr.exit.thread
	st.d	$a2, $sp, 8
	ori	$a2, $zero, 4
	st.w	$a2, $sp, 16
	addi.d	$a2, $sp, 8
	pcaddu18i	$ra, %call36(newkey)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	move	$a0, $a3
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end12:
	.size	luaH_setstr, .Lfunc_end12-luaH_setstr
                                        # -- End function
	.hidden	luaH_getn                       # -- Begin function luaH_getn
	.globl	luaH_getn
	.p2align	5
	.type	luaH_getn,@function
luaH_getn:                              # @luaH_getn
# %bb.0:
	ld.w	$a1, $a0, 56
	beqz	$a1, .LBB13_2
# %bb.1:
	ld.d	$a3, $a0, 24
	addi.d	$a2, $a1, -1
	bstrpick.d	$a2, $a2, 31, 0
	alsl.d	$a2, $a2, $a3, 4
	ld.w	$a2, $a2, 8
	beqz	$a2, .LBB13_36
.LBB13_2:
	ld.d	$a3, $a0, 32
	pcalau12i	$a2, %pc_hi20(dummynode_)
	addi.d	$a2, $a2, %pc_lo12(dummynode_)
	beq	$a3, $a2, .LBB13_24
# %bb.3:
	addi.w	$t2, $a1, 1
	lu12i.w	$a2, 524287
	ori	$a6, $a2, 4094
	ori	$a7, $zero, 3
	pcalau12i	$a2, %pc_hi20(luaO_nilobject_)
	addi.d	$t0, $a2, %pc_lo12(luaO_nilobject_)
	addi.d	$a4, $zero, -1
	ori	$t1, $zero, 1
	move	$a2, $a1
	.p2align	4, , 16
.LBB13_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_9 Depth 2
	move	$a5, $t2
	addi.w	$t2, $t2, -1
	bgeu	$t2, $a1, .LBB13_6
# %bb.5:                                #   in Loop: Header=BB13_4 Depth=1
	ld.d	$t3, $a0, 24
	alsl.d	$t2, $t2, $t3, 4
	b	.LBB13_12
	.p2align	4, , 16
.LBB13_6:                               #   in Loop: Header=BB13_4 Depth=1
	movgr2fr.w	$fa0, $a5
	addi.w	$t3, $a5, 0
	ffint.d.w	$fa0, $fa0
	move	$t2, $a3
	beqz	$t3, .LBB13_9
# %bb.7:                                # %.critedge.i.i.i
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.bu	$t2, $a0, 11
	movfr2gr.d	$t3, $fa0
	srli.d	$t4, $t3, 32
	add.w	$t3, $t4, $t3
	sll.w	$t2, $a4, $t2
	orn	$t2, $t1, $t2
	mod.wu	$t2, $t3, $t2
	bstrpick.d	$t2, $t2, 31, 0
	slli.d	$t3, $t2, 5
	alsl.d	$t2, $t2, $t3, 3
	add.d	$t2, $a3, $t2
	b	.LBB13_9
	.p2align	4, , 16
.LBB13_8:                               #   in Loop: Header=BB13_9 Depth=2
	ld.d	$t2, $t2, 32
	beqz	$t2, .LBB13_11
.LBB13_9:                               # %hashnum.exit.i.i
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t2, 24
	bne	$t3, $a7, .LBB13_8
# %bb.10:                               #   in Loop: Header=BB13_9 Depth=2
	fld.d	$fa1, $t2, 16
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB13_8
	b	.LBB13_12
	.p2align	4, , 16
.LBB13_11:                              #   in Loop: Header=BB13_4 Depth=1
	move	$t2, $t0
.LBB13_12:                              # %luaH_getnum.exit.i
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.w	$t2, $t2, 8
	beqz	$t2, .LBB13_25
# %bb.13:                               #   in Loop: Header=BB13_4 Depth=1
	slli.d	$t2, $a5, 1
	addi.w	$t3, $t2, 0
	move	$a2, $a5
	bltu	$t3, $a6, .LBB13_4
# %bb.14:                               # %.preheader46.i.preheader
	ori	$a5, $zero, 1
	ori	$a6, $zero, 3
	pcalau12i	$a2, %pc_hi20(luaO_nilobject_)
	addi.d	$a7, $a2, %pc_lo12(luaO_nilobject_)
	ori	$t0, $zero, 1
	b	.LBB13_17
	.p2align	4, , 16
.LBB13_15:                              #   in Loop: Header=BB13_17 Depth=1
	ld.d	$t1, $a0, 24
	alsl.d	$t1, $a2, $t1, 4
.LBB13_16:                              # %luaH_getnum.exit35.i
                                        #   in Loop: Header=BB13_17 Depth=1
	ld.w	$t1, $t1, 8
	addi.w	$t0, $t0, 1
	beqz	$t1, .LBB13_38
.LBB13_17:                              # %.preheader46.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_21 Depth 2
	addi.w	$a2, $t0, -1
	bltu	$a2, $a1, .LBB13_15
# %bb.18:                               #   in Loop: Header=BB13_17 Depth=1
	movgr2fr.w	$fa0, $t0
	ffint.d.w	$fa0, $fa0
	move	$t1, $a3
	beqz	$t0, .LBB13_21
# %bb.19:                               # %.critedge.i.i26.i
                                        #   in Loop: Header=BB13_17 Depth=1
	ld.bu	$t1, $a0, 11
	movfr2gr.d	$t2, $fa0
	srli.d	$t3, $t2, 32
	add.w	$t2, $t3, $t2
	sll.w	$t1, $a4, $t1
	orn	$t1, $a5, $t1
	mod.wu	$t1, $t2, $t1
	bstrpick.d	$t1, $t1, 31, 0
	slli.d	$t2, $t1, 5
	alsl.d	$t1, $t1, $t2, 3
	add.d	$t1, $a3, $t1
	b	.LBB13_21
	.p2align	4, , 16
.LBB13_20:                              #   in Loop: Header=BB13_21 Depth=2
	ld.d	$t1, $t1, 32
	beqz	$t1, .LBB13_23
.LBB13_21:                              # %hashnum.exit.i30.i
                                        #   Parent Loop BB13_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t1, 24
	bne	$t2, $a6, .LBB13_20
# %bb.22:                               #   in Loop: Header=BB13_21 Depth=2
	fld.d	$fa1, $t1, 16
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB13_20
	b	.LBB13_16
	.p2align	4, , 16
.LBB13_23:                              #   in Loop: Header=BB13_17 Depth=1
	move	$t1, $a7
	b	.LBB13_16
.LBB13_24:
	addi.w	$a0, $a1, 0
	ret
.LBB13_25:                              # %.preheader.i
	sub.w	$a7, $a5, $a2
	ori	$a6, $zero, 2
	bltu	$a7, $a6, .LBB13_38
# %bb.26:
	ori	$a7, $zero, 1
	ori	$t0, $zero, 3
	pcalau12i	$t1, %pc_hi20(luaO_nilobject_)
	addi.d	$t1, $t1, %pc_lo12(luaO_nilobject_)
	b	.LBB13_29
	.p2align	4, , 16
.LBB13_27:                              #   in Loop: Header=BB13_29 Depth=1
	ld.d	$t4, $a0, 24
	addi.w	$t3, $t3, 0
	alsl.d	$t3, $t3, $t4, 4
.LBB13_28:                              # %luaH_getnum.exit45.i
                                        #   in Loop: Header=BB13_29 Depth=1
	ld.w	$t3, $t3, 8
	sltui	$t3, $t3, 1
	masknez	$a5, $a5, $t3
	maskeqz	$t4, $t2, $t3
	or	$a5, $t4, $a5
	masknez	$t2, $t2, $t3
	maskeqz	$a2, $a2, $t3
	or	$a2, $a2, $t2
	sub.w	$t2, $a5, $a2
	bgeu	$a7, $t2, .LBB13_38
.LBB13_29:                              # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_33 Depth 2
	add.w	$t4, $a5, $a2
	bstrpick.d	$t2, $t4, 31, 1
	addi.d	$t3, $t2, -1
	bltu	$t3, $a1, .LBB13_27
# %bb.30:                               #   in Loop: Header=BB13_29 Depth=1
	bstrpick.d	$t3, $t2, 31, 0
	movgr2fr.d	$fa0, $t3
	ffint.d.l	$fa0, $fa0
	move	$t3, $a3
	bltu	$t4, $a6, .LBB13_33
# %bb.31:                               # %.critedge.i.i36.i
                                        #   in Loop: Header=BB13_29 Depth=1
	ld.bu	$t3, $a0, 11
	movfr2gr.d	$t4, $fa0
	srli.d	$t5, $t4, 32
	add.w	$t4, $t5, $t4
	sll.w	$t3, $a4, $t3
	orn	$t3, $a7, $t3
	mod.wu	$t3, $t4, $t3
	bstrpick.d	$t3, $t3, 31, 0
	slli.d	$t4, $t3, 5
	alsl.d	$t3, $t3, $t4, 3
	add.d	$t3, $a3, $t3
	b	.LBB13_33
	.p2align	4, , 16
.LBB13_32:                              #   in Loop: Header=BB13_33 Depth=2
	ld.d	$t3, $t3, 32
	beqz	$t3, .LBB13_35
.LBB13_33:                              # %hashnum.exit.i40.i
                                        #   Parent Loop BB13_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $t3, 24
	bne	$t4, $t0, .LBB13_32
# %bb.34:                               #   in Loop: Header=BB13_33 Depth=2
	fld.d	$fa1, $t3, 16
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB13_32
	b	.LBB13_28
	.p2align	4, , 16
.LBB13_35:                              #   in Loop: Header=BB13_29 Depth=1
	move	$t3, $t1
	b	.LBB13_28
.LBB13_36:                              # %.preheader
	move	$a2, $zero
	ori	$a0, $zero, 1
	beq	$a1, $a0, .LBB13_38
	.p2align	4, , 16
.LBB13_37:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a2, $a1
	bstrpick.d	$a4, $a4, 31, 1
	addi.d	$a5, $a4, -1
	bstrpick.d	$a5, $a5, 31, 0
	alsl.d	$a5, $a5, $a3, 4
	ld.w	$a5, $a5, 8
	sltui	$a5, $a5, 1
	maskeqz	$a6, $a4, $a5
	masknez	$a1, $a1, $a5
	or	$a1, $a6, $a1
	masknez	$a4, $a4, $a5
	maskeqz	$a2, $a2, $a5
	or	$a2, $a2, $a4
	sub.w	$a4, $a1, $a2
	bltu	$a0, $a4, .LBB13_37
.LBB13_38:                              # %unbound_search.exit
	addi.w	$a0, $a2, 0
	ret
.Lfunc_end13:
	.size	luaH_getn, .Lfunc_end13-luaH_getn
                                        # -- End function
	.hidden	luaO_nilobject_
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"table index is nil"
	.size	.L.str, 19

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"table index is NaN"
	.size	.L.str.1, 19

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"invalid key to 'next'"
	.size	.L.str.2, 22

	.type	dummynode_,@object              # @dummynode_
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
dummynode_:
	.space	40
	.size	dummynode_, 40

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"table overflow"
	.size	.L.str.4, 15

	.hidden	luaM_realloc_
	.hidden	luaC_link
	.hidden	luaO_rawequalObj
	.hidden	luaG_runerror
	.hidden	luaM_toobig
	.hidden	luaO_log2
	.hidden	luaC_barrierback
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym luaO_nilobject_
	.addrsig_sym dummynode_
