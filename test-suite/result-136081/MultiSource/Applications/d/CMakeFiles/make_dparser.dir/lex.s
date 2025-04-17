	.file	"lex.c"
	.text
	.globl	build_scanners                  # -- Begin function build_scanners
	.p2align	5
	.type	build_scanners,@function
build_scanners:                         # @build_scanners
# %bb.0:
	addi.d	$sp, $sp, -304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	st.d	$s5, $sp, 240                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 64
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $fp, 88
	move	$s3, $a0
	beqz	$a1, .LBB0_484
# %bb.1:                                # %.lr.ph114
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $fp, 96
	move	$a2, $zero
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                # %.preheader60._crit_edge
                                        #   in Loop: Header=BB0_4 Depth=1
	st.d	$a5, $a3, 400
.LBB0_3:                                # %.loopexit
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $a1, .LBB0_14
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #       Child Loop BB0_12 Depth 3
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a0, $a3
	ld.d	$a4, $a3, 400
	bnez	$a4, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	beqz	$a2, .LBB0_3
# %bb.6:                                # %.lr.ph111
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a4, $zero
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_7:                                # %.thread
                                        #   in Loop: Header=BB0_8 Depth=2
	addi.d	$a4, $a4, 1
	beq	$a4, $a2, .LBB0_3
.LBB0_8:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_12 Depth 3
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a0, $a5
	ld.d	$a6, $a5, 400
	bnez	$a6, .LBB0_7
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=2
	ld.w	$t0, $a5, 136
	ld.w	$a6, $a3, 136
	bne	$t0, $a6, .LBB0_7
# %bb.10:                               # %.preheader60
                                        #   in Loop: Header=BB0_8 Depth=2
	beqz	$t0, .LBB0_2
# %bb.11:                               # %.lr.ph
                                        #   in Loop: Header=BB0_8 Depth=2
	ld.d	$a6, $a3, 144
	ld.d	$a7, $a5, 144
	bstrpick.d	$t0, $t0, 31, 0
	.p2align	4, , 16
.LBB0_12:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t1, $a6, 0
	ld.d	$t2, $a7, 0
	ld.d	$t1, $t1, 8
	ld.d	$t2, $t2, 8
	bne	$t1, $t2, .LBB0_7
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=3
	addi.d	$a7, $a7, 8
	addi.d	$t0, $t0, -1
	addi.d	$a6, $a6, 8
	bnez	$t0, .LBB0_12
	b	.LBB0_2
.LBB0_14:                               # %.lr.ph116
	move	$s0, $zero
	move	$s4, $zero
	addi.d	$a0, $s3, 8
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a0, $s3, 24
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	lu12i.w	$s5, 2
	ori	$a0, $s5, 2176
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ori	$s6, $zero, 1
	ori	$s2, $zero, 2
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 0                    # 32-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 88
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$s3, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_15:                               #   in Loop: Header=BB0_17 Depth=1
	addi.d	$a0, $s1, 296
	addi.d	$a1, $a1, 296
	ori	$a2, $zero, 80
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.wu	$a0, $a1, 88
	addi.d	$s4, $s4, 1
	bgeu	$s4, $a0, .LBB0_485
.LBB0_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_23 Depth 2
                                        #       Child Loop BB0_81 Depth 3
                                        #       Child Loop BB0_37 Depth 3
                                        #     Child Loop BB0_191 Depth 2
                                        #     Child Loop BB0_249 Depth 2
                                        #       Child Loop BB0_254 Depth 3
                                        #         Child Loop BB0_256 Depth 4
                                        #     Child Loop BB0_266 Depth 2
                                        #       Child Loop BB0_323 Depth 3
                                        #       Child Loop BB0_272 Depth 3
                                        #         Child Loop BB0_275 Depth 4
                                        #       Child Loop BB0_282 Depth 3
                                        #         Child Loop BB0_287 Depth 4
                                        #           Child Loop BB0_289 Depth 5
                                        #       Child Loop BB0_302 Depth 3
                                        #         Child Loop BB0_304 Depth 4
                                        #       Child Loop BB0_310 Depth 3
                                        #     Child Loop BB0_329 Depth 2
                                        #     Child Loop BB0_340 Depth 2
                                        #       Child Loop BB0_342 Depth 3
                                        #       Child Loop BB0_347 Depth 3
                                        #         Child Loop BB0_351 Depth 4
                                        #         Child Loop BB0_354 Depth 4
                                        #       Child Loop BB0_357 Depth 3
                                        #         Child Loop BB0_361 Depth 4
                                        #     Child Loop BB0_372 Depth 2
                                        #     Child Loop BB0_380 Depth 2
                                        #     Child Loop BB0_383 Depth 2
                                        #       Child Loop BB0_385 Depth 3
                                        #     Child Loop BB0_393 Depth 2
                                        #     Child Loop BB0_397 Depth 2
                                        #       Child Loop BB0_400 Depth 3
                                        #         Child Loop BB0_405 Depth 4
                                        #           Child Loop BB0_406 Depth 5
                                        #             Child Loop BB0_409 Depth 6
                                        #         Child Loop BB0_424 Depth 4
                                        #         Child Loop BB0_433 Depth 4
                                        #           Child Loop BB0_435 Depth 5
                                        #             Child Loop BB0_436 Depth 6
                                        #     Child Loop BB0_461 Depth 2
                                        #     Child Loop BB0_464 Depth 2
                                        #     Child Loop BB0_469 Depth 2
                                        #       Child Loop BB0_471 Depth 3
	ld.d	$a0, $a1, 96
	slli.d	$a1, $s4, 3
	ldx.d	$s1, $a0, $a1
	ld.w	$a0, $s1, 136
	beqz	$a0, .LBB0_16
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	ld.d	$a1, $s1, 400
	bnez	$a1, .LBB0_15
# %bb.19:                               # %.lr.ph526.i
                                        #   in Loop: Header=BB0_17 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 0
	move	$s0, $zero
	move	$a4, $zero
	addi.d	$a2, $a1, 1
	st.w	$a2, $s3, 0
	st.w	$a1, $a0, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$a1, $s3, 16
	st.w	$s6, $s3, 8
	st.d	$a0, $s3, 24
	addi.d	$a1, $a0, 8
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 24
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s4, $sp, 48                    # 8-byte Folded Spill
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	b	.LBB0_23
.LBB0_20:                               #   in Loop: Header=BB0_23 Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ldx.wu	$a0, $s7, $a0
	stptr.d	$a3, $s7, 10296
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 10288
	slli.d	$a0, $a0, 3
	stx.d	$s8, $a3, $a0
.LBB0_21:                               #   in Loop: Header=BB0_23 Depth=2
	ori	$a4, $zero, 1
.LBB0_22:                               #   in Loop: Header=BB0_23 Depth=2
	ld.wu	$a1, $s1, 136
	addi.d	$s0, $s0, 1
	bgeu	$s0, $a1, .LBB0_187
.LBB0_23:                               #   Parent Loop BB0_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_81 Depth 3
                                        #       Child Loop BB0_37 Depth 3
	ld.d	$a1, $s1, 144
	slli.d	$a2, $s0, 3
	ldx.d	$s8, $a1, $a2
	ld.w	$a1, $s8, 0
	ori	$a2, $s5, 2096
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	beq	$a1, $s6, .LBB0_31
# %bb.24:                               #   in Loop: Header=BB0_23 Depth=2
	bnez	$a1, .LBB0_22
# %bb.25:                               #   in Loop: Header=BB0_23 Depth=2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 8
	ld.d	$fp, $a1, 16
	beqz	$a0, .LBB0_67
# %bb.26:                               #   in Loop: Header=BB0_23 Depth=2
	ld.d	$s7, $fp, 0
.LBB0_27:                               #   in Loop: Header=BB0_23 Depth=2
	ldptr.d	$a1, $s7, 10296
	ori	$a0, $s5, 2112
	add.d	$a3, $s7, $a0
	beqz	$a1, .LBB0_20
# %bb.28:                               #   in Loop: Header=BB0_23 Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	add.d	$a0, $s7, $a0
	ld.w	$a2, $a0, 0
	beq	$a1, $a3, .LBB0_73
# %bb.29:                               #   in Loop: Header=BB0_23 Depth=2
	andi	$a3, $a2, 7
	beqz	$a3, .LBB0_75
# %bb.30:                               #   in Loop: Header=BB0_23 Depth=2
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a3, 3
	stx.d	$s8, $a1, $a0
	b	.LBB0_21
	.p2align	4, , 16
.LBB0_31:                               #   in Loop: Header=BB0_23 Depth=2
	ld.d	$a1, $s8, 8
	ld.w	$a2, $a1, 0
	bnez	$a2, .LBB0_22
# %bb.32:                               #   in Loop: Header=BB0_23 Depth=2
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	ld.d	$s6, $a1, 24
	ld.bu	$a0, $a1, 36
	ld.bu	$s1, $s6, 0
	andi	$a0, $a0, 8
	bnez	$a0, .LBB0_76
# %bb.33:                               #   in Loop: Header=BB0_23 Depth=2
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	beqz	$s1, .LBB0_154
# %bb.34:                               # %.lr.ph522.i.preheader
                                        #   in Loop: Header=BB0_23 Depth=2
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	b	.LBB0_37
	.p2align	4, , 16
.LBB0_35:                               #   in Loop: Header=BB0_37 Depth=3
	ld.d	$s7, $s1, 0
.LBB0_36:                               #   in Loop: Header=BB0_37 Depth=3
	ld.bu	$s1, $s6, 1
	addi.d	$s6, $s6, 1
	beqz	$s1, .LBB0_154
.LBB0_37:                               # %.lr.ph522.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$fp, $s7, 8
	slli.d	$a0, $s1, 5
	alsl.d	$a0, $s1, $a0, 3
	add.d	$s0, $fp, $a0
	ldx.w	$a0, $fp, $a0
	ld.d	$s1, $s0, 8
	bnez	$a0, .LBB0_35
# %bb.38:                               #   in Loop: Header=BB0_37 Depth=3
	beqz	$s1, .LBB0_44
# %bb.39:                               #   in Loop: Header=BB0_37 Depth=3
	addi.d	$s2, $s0, 16
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 0
	move	$s7, $a0
	ld.d	$a0, $s3, 16
	addi.d	$a2, $a1, 1
	st.w	$a2, $s3, 0
	st.w	$a1, $s7, 0
	beq	$s1, $s2, .LBB0_48
# %bb.40:                               #   in Loop: Header=BB0_37 Depth=3
	beqz	$a0, .LBB0_52
# %bb.41:                               #   in Loop: Header=BB0_37 Depth=3
	ld.w	$a1, $s4, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ori	$s2, $zero, 2
	beq	$a0, $a2, .LBB0_54
# %bb.42:                               #   in Loop: Header=BB0_37 Depth=3
	andi	$a2, $a1, 7
	beqz	$a2, .LBB0_56
# %bb.43:                               #   in Loop: Header=BB0_37 Depth=3
	bstrpick.d	$a2, $a1, 31, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $s4, 0
	slli.d	$a1, $a2, 3
	stx.d	$s7, $a0, $a1
	b	.LBB0_57
.LBB0_44:                               #   in Loop: Header=BB0_37 Depth=3
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s3, 0
	ld.d	$a1, $s3, 16
	move	$s7, $a0
	addi.d	$a0, $a2, 1
	st.w	$a0, $s3, 0
	st.w	$a2, $s7, 0
	beqz	$a1, .LBB0_53
# %bb.45:                               #   in Loop: Header=BB0_37 Depth=3
	ld.w	$a0, $s4, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB0_58
# %bb.46:                               #   in Loop: Header=BB0_37 Depth=3
	andi	$a2, $a0, 7
	beqz	$a2, .LBB0_60
# %bb.47:                               #   in Loop: Header=BB0_37 Depth=3
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s4, 0
	slli.d	$a0, $a2, 3
	stx.d	$s7, $a1, $a0
	b	.LBB0_61
.LBB0_48:                               #   in Loop: Header=BB0_37 Depth=3
	beqz	$a0, .LBB0_62
# %bb.49:                               #   in Loop: Header=BB0_37 Depth=3
	ld.w	$a1, $s4, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ori	$s2, $zero, 2
	beq	$a0, $a2, .LBB0_63
# %bb.50:                               #   in Loop: Header=BB0_37 Depth=3
	andi	$a2, $a1, 7
	beqz	$a2, .LBB0_65
# %bb.51:                               #   in Loop: Header=BB0_37 Depth=3
	bstrpick.d	$a2, $a1, 31, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $s4, 0
	slli.d	$a1, $a2, 3
	stx.d	$s7, $a0, $a1
	b	.LBB0_66
.LBB0_52:                               #   in Loop: Header=BB0_37 Depth=3
	ld.wu	$a0, $s3, 8
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a2, $s3, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s3, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	ori	$s2, $zero, 2
	b	.LBB0_57
.LBB0_53:                               #   in Loop: Header=BB0_37 Depth=3
	ld.wu	$a0, $s3, 8
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a2, $s3, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s3, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	b	.LBB0_61
.LBB0_54:                               #   in Loop: Header=BB0_37 Depth=3
	bltu	$s2, $a1, .LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_37 Depth=3
	addi.d	$a2, $a1, 1
	st.w	$a2, $s4, 0
	slli.d	$a1, $a1, 3
	stx.d	$s7, $a0, $a1
	b	.LBB0_57
.LBB0_56:                               #   in Loop: Header=BB0_37 Depth=3
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB0_57:                               # %new_NFAState.exit377.i
                                        #   in Loop: Header=BB0_37 Depth=3
	move	$a0, $s0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	b	.LBB0_36
.LBB0_58:                               #   in Loop: Header=BB0_37 Depth=3
	bltu	$s2, $a0, .LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_37 Depth=3
	addi.d	$a2, $a0, 1
	st.w	$a2, $s4, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a1, $a0
	b	.LBB0_61
.LBB0_60:                               #   in Loop: Header=BB0_37 Depth=3
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB0_61:                               # %new_NFAState.exit369.i
                                        #   in Loop: Header=BB0_37 Depth=3
	ld.bu	$a0, $s6, 0
	ori	$a2, $zero, 40
	mul.d	$a0, $a0, $a2
	add.d	$a0, $fp, $a0
	addi.d	$a1, $a0, 16
	st.d	$a1, $a0, 8
	ld.bu	$a0, $s6, 0
	mul.d	$a0, $a0, $a2
	ldx.wu	$a2, $fp, $a0
	addi.d	$a3, $a2, 1
	stx.w	$a3, $fp, $a0
	slli.d	$a0, $a2, 3
	stx.d	$s7, $a1, $a0
	b	.LBB0_36
.LBB0_62:                               #   in Loop: Header=BB0_37 Depth=3
	ld.wu	$a0, $s3, 8
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a2, $s3, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s3, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	ori	$s2, $zero, 2
	b	.LBB0_66
.LBB0_63:                               #   in Loop: Header=BB0_37 Depth=3
	bltu	$s2, $a1, .LBB0_65
# %bb.64:                               #   in Loop: Header=BB0_37 Depth=3
	addi.d	$a2, $a1, 1
	st.w	$a2, $s4, 0
	slli.d	$a1, $a1, 3
	stx.d	$s7, $a0, $a1
	b	.LBB0_66
.LBB0_65:                               #   in Loop: Header=BB0_37 Depth=3
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB0_66:                               # %new_NFAState.exit373.i
                                        #   in Loop: Header=BB0_37 Depth=3
	ld.bu	$a0, $s6, 0
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	ldx.wu	$a1, $fp, $a0
	add.d	$a2, $fp, $a0
	ld.d	$a2, $a2, 8
	addi.d	$a3, $a1, 1
	stx.w	$a3, $fp, $a0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $a2, $a0
	b	.LBB0_36
.LBB0_67:                               #   in Loop: Header=BB0_23 Depth=2
	ori	$a0, $zero, 1
	beqz	$fp, .LBB0_158
# %bb.68:                               #   in Loop: Header=BB0_23 Depth=2
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 0
	move	$s7, $a0
	ld.d	$a0, $s3, 16
	addi.d	$a2, $a1, 1
	st.w	$a2, $s3, 0
	st.w	$a1, $s7, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	beq	$fp, $a1, .LBB0_163
# %bb.69:                               #   in Loop: Header=BB0_23 Depth=2
	beqz	$a0, .LBB0_172
# %bb.70:                               #   in Loop: Header=BB0_23 Depth=2
	ld.w	$a1, $s4, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	beq	$a0, $a2, .LBB0_174
# %bb.71:                               #   in Loop: Header=BB0_23 Depth=2
	andi	$a2, $a1, 7
	beqz	$a2, .LBB0_176
# %bb.72:                               #   in Loop: Header=BB0_23 Depth=2
	bstrpick.d	$a2, $a1, 31, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $s4, 0
	slli.d	$a1, $a2, 3
	stx.d	$s7, $a0, $a1
	b	.LBB0_177
.LBB0_73:                               #   in Loop: Header=BB0_23 Depth=2
	bltu	$s2, $a2, .LBB0_75
# %bb.74:                               #   in Loop: Header=BB0_23 Depth=2
	addi.d	$a3, $a2, 1
	st.w	$a3, $a0, 0
	slli.d	$a0, $a2, 3
	stx.d	$s8, $a1, $a0
	b	.LBB0_21
.LBB0_75:                               #   in Loop: Header=BB0_23 Depth=2
	move	$a1, $s8
	b	.LBB0_171
.LBB0_76:                               #   in Loop: Header=BB0_23 Depth=2
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	beqz	$s1, .LBB0_154
# %bb.77:                               # %.lr.ph.i
                                        #   in Loop: Header=BB0_23 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	b	.LBB0_81
.LBB0_78:                               #   in Loop: Header=BB0_81 Depth=3
	st.d	$a2, $a0, 8
	ld.bu	$a0, $s6, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a3, $a0
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	ldx.wu	$a1, $s8, $a0
.LBB0_79:                               #   in Loop: Header=BB0_81 Depth=3
	addi.d	$a3, $a1, 1
	stx.w	$a3, $s8, $a0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $a2, $a0
.LBB0_80:                               #   in Loop: Header=BB0_81 Depth=3
	ld.bu	$s1, $s6, 1
	addi.d	$s6, $s6, 1
	beqz	$s1, .LBB0_154
.LBB0_81:                               #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s5, 0
	slli.d	$a1, $s1, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	addi.d	$s8, $s7, 8
	bnez	$a0, .LBB0_89
# %bb.82:                               #   in Loop: Header=BB0_81 Depth=3
	slli.d	$a0, $s1, 5
	alsl.d	$a0, $s1, $a0, 3
	add.d	$s0, $s8, $a0
	ld.d	$a1, $s0, 8
	beqz	$a1, .LBB0_96
# %bb.83:                               #   in Loop: Header=BB0_81 Depth=3
	ld.w	$a0, $s0, 0
	addi.d	$a2, $s0, 16
	beq	$a1, $a2, .LBB0_104
# %bb.84:                               #   in Loop: Header=BB0_81 Depth=3
	ld.w	$s1, $s3, 0
	ld.d	$fp, $s3, 16
	andi	$a0, $a0, 7
	beqz	$a0, .LBB0_109
# %bb.85:                               #   in Loop: Header=BB0_81 Depth=3
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.d	$a0, $s1, 1
	st.w	$a0, $s3, 0
	st.w	$s1, $s7, 0
	beqz	$fp, .LBB0_121
# %bb.86:                               #   in Loop: Header=BB0_81 Depth=3
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	beq	$fp, $a1, .LBB0_107
.LBB0_87:                               #   in Loop: Header=BB0_81 Depth=3
	andi	$a1, $a0, 7
	beqz	$a1, .LBB0_124
# %bb.88:                               #   in Loop: Header=BB0_81 Depth=3
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s4, 0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $fp, $a0
	b	.LBB0_125
	.p2align	4, , 16
.LBB0_89:                               #   in Loop: Header=BB0_81 Depth=3
	pcaddu18i	$ra, %call36(__ctype_toupper_loc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.d	$fp, $a0, 0
	slli.d	$a0, $s1, 2
	ldx.w	$a0, $fp, $a0
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	add.d	$s5, $s8, $a0
	ld.d	$a1, $s5, 8
	beqz	$a1, .LBB0_100
# %bb.90:                               #   in Loop: Header=BB0_81 Depth=3
	ld.w	$a0, $s5, 0
	addi.d	$a2, $s5, 16
	beq	$a1, $a2, .LBB0_113
# %bb.91:                               #   in Loop: Header=BB0_81 Depth=3
	ld.w	$s4, $s3, 0
	ld.d	$s1, $s3, 16
	andi	$a0, $a0, 7
	beqz	$a0, .LBB0_114
.LBB0_92:                               #   in Loop: Header=BB0_81 Depth=3
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.d	$a0, $s4, 1
	st.w	$a0, $s3, 0
	st.w	$s4, $s7, 0
	beqz	$s1, .LBB0_120
# %bb.93:                               #   in Loop: Header=BB0_81 Depth=3
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	beq	$s1, $a1, .LBB0_134
# %bb.94:                               #   in Loop: Header=BB0_81 Depth=3
	andi	$a1, $a0, 7
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	beqz	$a1, .LBB0_136
# %bb.95:                               #   in Loop: Header=BB0_81 Depth=3
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s4, 0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $s1, $a0
	b	.LBB0_137
.LBB0_96:                               #   in Loop: Header=BB0_81 Depth=3
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s3, 0
	ld.d	$a1, $s3, 16
	move	$s7, $a0
	addi.d	$a0, $a2, 1
	st.w	$a0, $s3, 0
	st.w	$a2, $s7, 0
	beqz	$a1, .LBB0_118
# %bb.97:                               #   in Loop: Header=BB0_81 Depth=3
	ld.w	$a0, $s4, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB0_126
# %bb.98:                               #   in Loop: Header=BB0_81 Depth=3
	andi	$a2, $a0, 7
	beqz	$a2, .LBB0_128
# %bb.99:                               #   in Loop: Header=BB0_81 Depth=3
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s4, 0
	slli.d	$a0, $a2, 3
	stx.d	$s7, $a1, $a0
	b	.LBB0_129
.LBB0_100:                              #   in Loop: Header=BB0_81 Depth=3
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s3, 0
	ld.d	$a1, $s3, 16
	move	$s7, $a0
	addi.d	$a0, $a2, 1
	st.w	$a0, $s3, 0
	st.w	$a2, $s7, 0
	beqz	$a1, .LBB0_119
# %bb.101:                              #   in Loop: Header=BB0_81 Depth=3
	ld.w	$a0, $s4, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB0_130
# %bb.102:                              #   in Loop: Header=BB0_81 Depth=3
	andi	$a2, $a0, 7
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	beqz	$a2, .LBB0_132
# %bb.103:                              #   in Loop: Header=BB0_81 Depth=3
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s4, 0
	slli.d	$a0, $a2, 3
	stx.d	$s7, $a1, $a0
	b	.LBB0_133
.LBB0_104:                              #   in Loop: Header=BB0_81 Depth=3
	ld.w	$s1, $s3, 0
	ld.d	$fp, $s3, 16
	bltu	$s2, $a0, .LBB0_109
# %bb.105:                              #   in Loop: Header=BB0_81 Depth=3
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.d	$a0, $s1, 1
	st.w	$a0, $s3, 0
	st.w	$s1, $s7, 0
	beqz	$fp, .LBB0_121
# %bb.106:                              #   in Loop: Header=BB0_81 Depth=3
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bne	$fp, $a1, .LBB0_87
.LBB0_107:                              #   in Loop: Header=BB0_81 Depth=3
	bltu	$s2, $a0, .LBB0_124
# %bb.108:                              #   in Loop: Header=BB0_81 Depth=3
	addi.d	$a1, $a0, 1
	st.w	$a1, $s4, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $fp, $a0
	b	.LBB0_125
.LBB0_109:                              #   in Loop: Header=BB0_81 Depth=3
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.d	$a0, $s1, 1
	st.w	$a0, $s3, 0
	st.w	$s1, $s7, 0
	beqz	$fp, .LBB0_122
# %bb.110:                              #   in Loop: Header=BB0_81 Depth=3
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	beq	$fp, $a1, .LBB0_138
# %bb.111:                              #   in Loop: Header=BB0_81 Depth=3
	andi	$a1, $a0, 7
	beqz	$a1, .LBB0_140
# %bb.112:                              #   in Loop: Header=BB0_81 Depth=3
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s4, 0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $fp, $a0
	b	.LBB0_141
.LBB0_113:                              #   in Loop: Header=BB0_81 Depth=3
	ld.w	$s4, $s3, 0
	ld.d	$s1, $s3, 16
	bgeu	$s2, $a0, .LBB0_92
.LBB0_114:                              #   in Loop: Header=BB0_81 Depth=3
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.d	$a0, $s4, 1
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	st.w	$a0, $s3, 0
	st.w	$s4, $s7, 0
	beqz	$s1, .LBB0_123
# %bb.115:                              #   in Loop: Header=BB0_81 Depth=3
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	beq	$s1, $a1, .LBB0_142
# %bb.116:                              #   in Loop: Header=BB0_81 Depth=3
	andi	$a1, $a0, 7
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	beqz	$a1, .LBB0_144
# %bb.117:                              #   in Loop: Header=BB0_81 Depth=3
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s4, 0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $s1, $a0
	b	.LBB0_145
.LBB0_118:                              #   in Loop: Header=BB0_81 Depth=3
	ld.wu	$a0, $s3, 8
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a2, $s3, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s3, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	b	.LBB0_129
.LBB0_119:                              #   in Loop: Header=BB0_81 Depth=3
	ld.wu	$a0, $s3, 8
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a2, $s3, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s3, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	b	.LBB0_133
.LBB0_120:                              #   in Loop: Header=BB0_81 Depth=3
	ld.wu	$a0, $s3, 8
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a2, $s3, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s3, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	b	.LBB0_137
.LBB0_121:                              #   in Loop: Header=BB0_81 Depth=3
	ld.wu	$a0, $s3, 8
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a2, $s3, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s3, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	b	.LBB0_125
.LBB0_122:                              #   in Loop: Header=BB0_81 Depth=3
	ld.wu	$a0, $s3, 8
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a2, $s3, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s3, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	b	.LBB0_141
.LBB0_123:                              #   in Loop: Header=BB0_81 Depth=3
	ld.wu	$a0, $s3, 8
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a2, $s3, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s3, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	b	.LBB0_145
.LBB0_124:                              #   in Loop: Header=BB0_81 Depth=3
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB0_125:                              # %new_NFAState.exit401.i
                                        #   in Loop: Header=BB0_81 Depth=3
	ld.bu	$a0, $s6, 0
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	ldx.wu	$a1, $s8, $a0
	add.d	$a2, $s8, $a0
	ld.d	$a2, $a2, 8
	b	.LBB0_79
.LBB0_126:                              #   in Loop: Header=BB0_81 Depth=3
	bltu	$s2, $a0, .LBB0_128
# %bb.127:                              #   in Loop: Header=BB0_81 Depth=3
	addi.d	$a2, $a0, 1
	st.w	$a2, $s4, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a1, $a0
	b	.LBB0_129
.LBB0_128:                              #   in Loop: Header=BB0_81 Depth=3
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB0_129:                              # %new_NFAState.exit397.i
                                        #   in Loop: Header=BB0_81 Depth=3
	ld.bu	$a0, $s6, 0
	ori	$a2, $zero, 40
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s8, $a0
	addi.d	$a1, $a0, 16
	st.d	$a1, $a0, 8
	ld.bu	$a0, $s6, 0
	mul.d	$a0, $a0, $a2
	ldx.wu	$a2, $s8, $a0
	addi.d	$a3, $a2, 1
	stx.w	$a3, $s8, $a0
	b	.LBB0_150
.LBB0_130:                              #   in Loop: Header=BB0_81 Depth=3
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	bltu	$s2, $a0, .LBB0_132
# %bb.131:                              #   in Loop: Header=BB0_81 Depth=3
	addi.d	$a2, $a0, 1
	st.w	$a2, $s4, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a1, $a0
	b	.LBB0_133
.LBB0_132:                              #   in Loop: Header=BB0_81 Depth=3
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s0, 0
.LBB0_133:                              # %new_NFAState.exit381.i
                                        #   in Loop: Header=BB0_81 Depth=3
	ld.bu	$a0, $s6, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $fp, $a0
	ori	$a2, $zero, 40
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s8, $a0
	addi.d	$a1, $a0, 16
	st.d	$a1, $a0, 8
	ld.bu	$a0, $s6, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $fp, $a0
	mul.d	$a0, $a0, $a2
	ldx.wu	$a2, $s8, $a0
	addi.d	$a3, $a2, 1
	stx.w	$a3, $s8, $a0
	slli.d	$a0, $a2, 3
	stx.d	$s7, $a1, $a0
	b	.LBB0_146
.LBB0_134:                              #   in Loop: Header=BB0_81 Depth=3
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	bltu	$s2, $a0, .LBB0_136
# %bb.135:                              #   in Loop: Header=BB0_81 Depth=3
	addi.d	$a1, $a0, 1
	st.w	$a1, $s4, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $s1, $a0
	b	.LBB0_137
.LBB0_136:                              #   in Loop: Header=BB0_81 Depth=3
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s0, 0
.LBB0_137:                              # %new_NFAState.exit385.i
                                        #   in Loop: Header=BB0_81 Depth=3
	ld.bu	$a0, $s6, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $fp, $a0
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	ldx.wu	$a1, $s8, $a0
	add.d	$a2, $s8, $a0
	ld.d	$a2, $a2, 8
	addi.d	$a3, $a1, 1
	stx.w	$a3, $s8, $a0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $a2, $a0
	b	.LBB0_146
.LBB0_138:                              #   in Loop: Header=BB0_81 Depth=3
	bltu	$s2, $a0, .LBB0_140
# %bb.139:                              #   in Loop: Header=BB0_81 Depth=3
	addi.d	$a1, $a0, 1
	st.w	$a1, $s4, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $fp, $a0
	b	.LBB0_141
.LBB0_140:                              #   in Loop: Header=BB0_81 Depth=3
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB0_141:                              # %new_NFAState.exit409.i
                                        #   in Loop: Header=BB0_81 Depth=3
	move	$a0, $s0
	b	.LBB0_153
.LBB0_142:                              #   in Loop: Header=BB0_81 Depth=3
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	bltu	$s2, $a0, .LBB0_144
# %bb.143:                              #   in Loop: Header=BB0_81 Depth=3
	addi.d	$a1, $a0, 1
	st.w	$a1, $s4, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $s1, $a0
	b	.LBB0_145
.LBB0_144:                              #   in Loop: Header=BB0_81 Depth=3
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB0_145:                              # %new_NFAState.exit393.i
                                        #   in Loop: Header=BB0_81 Depth=3
	move	$a0, $s5
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
.LBB0_146:                              #   in Loop: Header=BB0_81 Depth=3
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s6, 0
	ld.d	$a3, $a0, 0
	slli.d	$a0, $a1, 2
	ldx.w	$a0, $a3, $a0
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	add.d	$a0, $s8, $a0
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a0, 16
	beqz	$a1, .LBB0_78
# %bb.147:                              #   in Loop: Header=BB0_81 Depth=3
	ld.w	$a3, $a0, 0
	beq	$a1, $a2, .LBB0_151
# %bb.148:                              #   in Loop: Header=BB0_81 Depth=3
	andi	$a2, $a3, 7
	beqz	$a2, .LBB0_153
# %bb.149:                              #   in Loop: Header=BB0_81 Depth=3
	bstrpick.d	$a2, $a3, 31, 0
	addi.d	$a3, $a3, 1
	st.w	$a3, $a0, 0
.LBB0_150:                              #   in Loop: Header=BB0_81 Depth=3
	slli.d	$a0, $a2, 3
	stx.d	$s7, $a1, $a0
	b	.LBB0_80
.LBB0_151:                              #   in Loop: Header=BB0_81 Depth=3
	bltu	$s2, $a3, .LBB0_153
# %bb.152:                              #   in Loop: Header=BB0_81 Depth=3
	addi.d	$a2, $a3, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a3, 3
	stx.d	$s7, $a1, $a0
	b	.LBB0_80
	.p2align	4, , 16
.LBB0_153:                              #   in Loop: Header=BB0_81 Depth=3
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	b	.LBB0_80
.LBB0_154:                              # %.loopexit.i
                                        #   in Loop: Header=BB0_23 Depth=2
	ldptr.d	$a1, $s7, 10296
	lu12i.w	$s5, 2
	ori	$a0, $s5, 2112
	add.d	$a3, $s7, $a0
	beqz	$a1, .LBB0_162
# %bb.155:                              #   in Loop: Header=BB0_23 Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	add.d	$a0, $s7, $a0
	ld.w	$a2, $a0, 0
	ori	$s6, $zero, 1
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	beq	$a1, $a3, .LBB0_167
# %bb.156:                              #   in Loop: Header=BB0_23 Depth=2
	andi	$a3, $a2, 7
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a3, .LBB0_170
# %bb.157:                              #   in Loop: Header=BB0_23 Depth=2
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a3, 3
	b	.LBB0_169
.LBB0_158:                              #   in Loop: Header=BB0_23 Depth=2
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s3, 0
	ld.d	$a1, $s3, 16
	move	$s7, $a0
	addi.d	$a0, $a2, 1
	st.w	$a0, $s3, 0
	st.w	$a2, $s7, 0
	beqz	$a1, .LBB0_173
# %bb.159:                              #   in Loop: Header=BB0_23 Depth=2
	ld.w	$a0, $s4, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB0_178
# %bb.160:                              #   in Loop: Header=BB0_23 Depth=2
	andi	$a2, $a0, 7
	beqz	$a2, .LBB0_180
# %bb.161:                              #   in Loop: Header=BB0_23 Depth=2
	move	$a2, $zero
	bstrpick.d	$a3, $a0, 31, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s4, 0
	slli.d	$a0, $a3, 3
	stx.d	$s7, $a1, $a0
	b	.LBB0_181
.LBB0_162:                              #   in Loop: Header=BB0_23 Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ldx.wu	$a0, $s7, $a0
	stptr.d	$a3, $s7, 10296
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 10288
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	stx.d	$a1, $a3, $a0
	ori	$a4, $zero, 1
	ori	$s6, $zero, 1
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	b	.LBB0_22
.LBB0_163:                              #   in Loop: Header=BB0_23 Depth=2
	beqz	$a0, .LBB0_182
# %bb.164:                              #   in Loop: Header=BB0_23 Depth=2
	ld.w	$a2, $s4, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_183
# %bb.165:                              #   in Loop: Header=BB0_23 Depth=2
	andi	$a1, $a2, 7
	beqz	$a1, .LBB0_185
# %bb.166:                              #   in Loop: Header=BB0_23 Depth=2
	move	$a1, $zero
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $s4, 0
	slli.d	$a2, $a3, 3
	stx.d	$s7, $a0, $a2
	b	.LBB0_186
.LBB0_167:                              #   in Loop: Header=BB0_23 Depth=2
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	bltu	$s2, $a2, .LBB0_170
# %bb.168:                              #   in Loop: Header=BB0_23 Depth=2
	addi.d	$a3, $a2, 1
	st.w	$a3, $a0, 0
	slli.d	$a0, $a2, 3
.LBB0_169:                              #   in Loop: Header=BB0_23 Depth=2
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	stx.d	$a2, $a1, $a0
	b	.LBB0_21
.LBB0_170:                              #   in Loop: Header=BB0_23 Depth=2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
.LBB0_171:                              #   in Loop: Header=BB0_23 Depth=2
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	b	.LBB0_21
.LBB0_172:                              #   in Loop: Header=BB0_23 Depth=2
	ld.wu	$a0, $s3, 8
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a2, $s3, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s3, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	b	.LBB0_177
.LBB0_173:                              #   in Loop: Header=BB0_23 Depth=2
	ld.wu	$a0, $s3, 8
	move	$a2, $zero
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	st.d	$a3, $s3, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s3, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a3, $a0
	b	.LBB0_181
.LBB0_174:                              #   in Loop: Header=BB0_23 Depth=2
	bltu	$s2, $a1, .LBB0_176
# %bb.175:                              #   in Loop: Header=BB0_23 Depth=2
	addi.d	$a2, $a1, 1
	st.w	$a2, $s4, 0
	slli.d	$a1, $a1, 3
	stx.d	$s7, $a0, $a1
	b	.LBB0_177
.LBB0_176:                              #   in Loop: Header=BB0_23 Depth=2
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB0_177:                              # %new_NFAState.exit365.i
                                        #   in Loop: Header=BB0_23 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	b	.LBB0_27
.LBB0_178:                              #   in Loop: Header=BB0_23 Depth=2
	bltu	$s2, $a0, .LBB0_180
# %bb.179:                              #   in Loop: Header=BB0_23 Depth=2
	move	$a2, $zero
	addi.d	$a3, $a0, 1
	st.w	$a3, $s4, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a1, $a0
	b	.LBB0_181
.LBB0_180:                              #   in Loop: Header=BB0_23 Depth=2
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a2, $a0, 0
.LBB0_181:                              # %new_NFAState.exit357.i
                                        #   in Loop: Header=BB0_23 Depth=2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	st.d	$a3, $a1, 16
	addi.d	$a0, $a2, 1
	st.w	$a0, $a1, 8
	bstrpick.d	$a0, $a2, 31, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a3, $a0
	b	.LBB0_27
.LBB0_182:                              #   in Loop: Header=BB0_23 Depth=2
	ld.wu	$a0, $s3, 8
	move	$a1, $zero
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	st.d	$a3, $s3, 16
	addi.d	$a2, $a0, 1
	st.w	$a2, $s3, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a3, $a0
	b	.LBB0_186
.LBB0_183:                              #   in Loop: Header=BB0_23 Depth=2
	bltu	$s2, $a2, .LBB0_185
# %bb.184:                              #   in Loop: Header=BB0_23 Depth=2
	move	$a1, $zero
	addi.d	$a3, $a2, 1
	st.w	$a3, $s4, 0
	slli.d	$a2, $a2, 3
	stx.d	$s7, $a0, $a2
	b	.LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_23 Depth=2
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $a0, 16
	ld.w	$a1, $a0, 8
.LBB0_186:                              # %new_NFAState.exit361.i
                                        #   in Loop: Header=BB0_23 Depth=2
	addi.d	$a0, $a1, 1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	bstrpick.d	$a0, $a1, 31, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $fp, $a0
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_187:                              # %.preheader.i
                                        #   in Loop: Header=BB0_17 Depth=1
	ori	$s7, $s5, 2056
	ori	$a2, $s5, 2072
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	beqz	$a1, .LBB0_245
# %bb.188:                              # %.lr.ph530.i
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s8, $zero
	move	$s5, $zero
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	add.d	$a1, $a0, $s7
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	b	.LBB0_191
.LBB0_189:                              #   in Loop: Header=BB0_191 Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ldx.wu	$a0, $s0, $a0
	stptr.d	$a3, $s0, 10296
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 10288
	slli.d	$a0, $a0, 3
	stx.d	$s6, $a3, $a0
	ori	$a4, $zero, 1
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_190:                              #   in Loop: Header=BB0_191 Depth=2
	ld.wu	$a1, $s1, 136
	addi.d	$s5, $s5, 1
	addi.d	$s8, $s8, 8
	bgeu	$s5, $a1, .LBB0_245
.LBB0_191:                              #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s1, 144
	ldx.d	$s6, $a1, $s8
	ld.w	$a1, $s6, 0
	ori	$a3, $zero, 1
	bne	$a1, $a3, .LBB0_190
# %bb.192:                              #   in Loop: Header=BB0_191 Depth=2
	ld.d	$a1, $s6, 8
	ld.w	$a2, $a1, 0
	bne	$a2, $a3, .LBB0_190
# %bb.193:                              #   in Loop: Header=BB0_191 Depth=2
	ld.d	$a0, $a1, 24
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldptr.d	$fp, $a1, 10256
	st.d	$a0, $sp, 168
	beqz	$fp, .LBB0_200
# %bb.194:                              #   in Loop: Header=BB0_191 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beq	$fp, $a0, .LBB0_204
# %bb.195:                              #   in Loop: Header=BB0_191 Depth=2
	ld.w	$s0, $s3, 0
	ld.d	$s1, $s3, 16
	andi	$a0, $a1, 7
	beqz	$a0, .LBB0_210
# %bb.196:                              #   in Loop: Header=BB0_191 Depth=2
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.d	$a0, $s0, 1
	st.w	$a0, $s3, 0
	st.w	$s0, $s4, 0
	beqz	$s1, .LBB0_215
# %bb.197:                              #   in Loop: Header=BB0_191 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	beq	$s1, $a1, .LBB0_207
.LBB0_198:                              #   in Loop: Header=BB0_191 Depth=2
	andi	$a1, $a0, 7
	beqz	$a1, .LBB0_217
# %bb.199:                              #   in Loop: Header=BB0_191 Depth=2
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a0, $a0, 1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	slli.d	$a0, $a1, 3
	b	.LBB0_209
.LBB0_200:                              #   in Loop: Header=BB0_191 Depth=2
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s3, 0
	ld.d	$a1, $s3, 16
	move	$s4, $a0
	addi.d	$a0, $a2, 1
	st.w	$a0, $s3, 0
	st.w	$a2, $s4, 0
	beqz	$a1, .LBB0_214
# %bb.201:                              #   in Loop: Header=BB0_191 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB0_219
# %bb.202:                              #   in Loop: Header=BB0_191 Depth=2
	andi	$a2, $a0, 7
	beqz	$a2, .LBB0_221
# %bb.203:                              #   in Loop: Header=BB0_191 Depth=2
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a0, 1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a3, 0
	slli.d	$a0, $a2, 3
	stx.d	$s4, $a1, $a0
	b	.LBB0_222
.LBB0_204:                              #   in Loop: Header=BB0_191 Depth=2
	ld.w	$s0, $s3, 0
	ld.d	$s1, $s3, 16
	bltu	$s2, $a1, .LBB0_210
# %bb.205:                              #   in Loop: Header=BB0_191 Depth=2
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.d	$a0, $s0, 1
	st.w	$a0, $s3, 0
	st.w	$s0, $s4, 0
	beqz	$s1, .LBB0_215
# %bb.206:                              #   in Loop: Header=BB0_191 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bne	$s1, $a1, .LBB0_198
.LBB0_207:                              #   in Loop: Header=BB0_191 Depth=2
	bltu	$s2, $a0, .LBB0_217
# %bb.208:                              #   in Loop: Header=BB0_191 Depth=2
	addi.d	$a1, $a0, 1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.w	$a1, $a2, 0
	slli.d	$a0, $a0, 3
.LBB0_209:                              # %new_NFAState.exit417.i
                                        #   in Loop: Header=BB0_191 Depth=2
	stx.d	$s4, $s1, $a0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	b	.LBB0_218
.LBB0_210:                              #   in Loop: Header=BB0_191 Depth=2
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.d	$a0, $s0, 1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	st.w	$s0, $s4, 0
	beqz	$s1, .LBB0_216
# %bb.211:                              #   in Loop: Header=BB0_191 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	beq	$s1, $a1, .LBB0_223
# %bb.212:                              #   in Loop: Header=BB0_191 Depth=2
	andi	$a1, $a0, 7
	beqz	$a1, .LBB0_225
# %bb.213:                              #   in Loop: Header=BB0_191 Depth=2
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a0, $a0, 1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	slli.d	$a0, $a1, 3
	stx.d	$s4, $s1, $a0
	b	.LBB0_226
.LBB0_214:                              #   in Loop: Header=BB0_191 Depth=2
	ld.wu	$a0, $s3, 8
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a2, $s3, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s3, 8
	slli.d	$a0, $a0, 3
	stx.d	$s4, $a2, $a0
	b	.LBB0_222
.LBB0_215:                              #   in Loop: Header=BB0_191 Depth=2
	ld.wu	$a0, $s3, 8
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a2, $s3, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s3, 8
	slli.d	$a0, $a0, 3
	stx.d	$s4, $a2, $a0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	b	.LBB0_218
.LBB0_216:                              #   in Loop: Header=BB0_191 Depth=2
	ld.wu	$a0, $a2, 8
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	st.d	$a3, $a2, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $a2, 8
	slli.d	$a0, $a0, 3
	stx.d	$s4, $a3, $a0
	b	.LBB0_226
.LBB0_217:                              #   in Loop: Header=BB0_191 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	move	$a1, $s4
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ldptr.d	$fp, $a0, 10256
	ldx.w	$a2, $a0, $s7
.LBB0_218:                              # %new_NFAState.exit417.i
                                        #   in Loop: Header=BB0_191 Depth=2
	addi.d	$a0, $a2, 1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	bstrpick.d	$a0, $a2, 31, 0
	slli.d	$a0, $a0, 3
	stx.d	$s4, $fp, $a0
	b	.LBB0_227
.LBB0_219:                              #   in Loop: Header=BB0_191 Depth=2
	bltu	$s2, $a0, .LBB0_221
# %bb.220:                              #   in Loop: Header=BB0_191 Depth=2
	addi.d	$a2, $a0, 1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	slli.d	$a0, $a0, 3
	stx.d	$s4, $a1, $a0
	b	.LBB0_222
.LBB0_221:                              #   in Loop: Header=BB0_191 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	move	$a1, $s4
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB0_222:                              # %new_NFAState.exit413.i
                                        #   in Loop: Header=BB0_191 Depth=2
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ldx.wu	$a0, $a2, $s7
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	stptr.d	$a3, $a2, 10256
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a2, 10248
	slli.d	$a0, $a0, 3
	stx.d	$s4, $a3, $a0
	b	.LBB0_228
.LBB0_223:                              #   in Loop: Header=BB0_191 Depth=2
	bltu	$s2, $a0, .LBB0_225
# %bb.224:                              #   in Loop: Header=BB0_191 Depth=2
	addi.d	$a1, $a0, 1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.w	$a1, $a2, 0
	slli.d	$a0, $a0, 3
	stx.d	$s4, $s1, $a0
	b	.LBB0_226
.LBB0_225:                              #   in Loop: Header=BB0_191 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	move	$a1, $s4
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB0_226:                              # %new_NFAState.exit425.i
                                        #   in Loop: Header=BB0_191 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	move	$a1, $s4
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB0_227:                              #   in Loop: Header=BB0_191 Depth=2
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
.LBB0_228:                              #   in Loop: Header=BB0_191 Depth=2
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a2, $a3, 0
	ld.d	$a1, $a3, 16
	move	$s0, $a0
	addi.d	$a0, $a2, 1
	st.w	$a0, $a3, 0
	st.w	$a2, $s0, 0
	beqz	$a1, .LBB0_232
# %bb.229:                              #   in Loop: Header=BB0_191 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB0_233
# %bb.230:                              #   in Loop: Header=BB0_191 Depth=2
	andi	$a2, $a0, 7
	beqz	$a2, .LBB0_235
# %bb.231:                              #   in Loop: Header=BB0_191 Depth=2
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a0, 1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a3, 0
	slli.d	$a0, $a2, 3
	stx.d	$s0, $a1, $a0
	b	.LBB0_236
.LBB0_232:                              #   in Loop: Header=BB0_191 Depth=2
	ld.wu	$a0, $a3, 8
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a2, $a3, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $a3, 8
	slli.d	$a0, $a0, 3
	stx.d	$s0, $a2, $a0
	b	.LBB0_237
.LBB0_233:                              #   in Loop: Header=BB0_191 Depth=2
	bltu	$s2, $a0, .LBB0_235
# %bb.234:                              #   in Loop: Header=BB0_191 Depth=2
	addi.d	$a2, $a0, 1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	slli.d	$a0, $a0, 3
	stx.d	$s0, $a1, $a0
	b	.LBB0_236
.LBB0_235:                              #   in Loop: Header=BB0_191 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB0_236:                              # %new_NFAState.exit429.i
                                        #   in Loop: Header=BB0_191 Depth=2
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
.LBB0_237:                              # %new_NFAState.exit429.i
                                        #   in Loop: Header=BB0_191 Depth=2
	ld.d	$a0, $s6, 8
	ld.bu	$a0, $a0, 36
	bstrpick.d	$a0, $a0, 3, 3
	st.w	$a0, $a3, 56
	addi.d	$a1, $sp, 168
	move	$a0, $a3
	move	$a2, $s4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(build_regex_nfa)
	jirl	$ra, $ra, 0
	ldptr.d	$a1, $s0, 10296
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2112
	add.d	$a3, $s0, $a0
	beqz	$a1, .LBB0_189
# %bb.238:                              #   in Loop: Header=BB0_191 Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	add.d	$a0, $s0, $a0
	ld.w	$a2, $a0, 0
	beq	$a1, $a3, .LBB0_241
# %bb.239:                              #   in Loop: Header=BB0_191 Depth=2
	andi	$a3, $a2, 7
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	beqz	$a3, .LBB0_243
# %bb.240:                              #   in Loop: Header=BB0_191 Depth=2
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a3, 3
	stx.d	$s6, $a1, $a0
	b	.LBB0_244
.LBB0_241:                              #   in Loop: Header=BB0_191 Depth=2
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	bltu	$s2, $a2, .LBB0_243
# %bb.242:                              #   in Loop: Header=BB0_191 Depth=2
	addi.d	$a3, $a2, 1
	st.w	$a3, $a0, 0
	slli.d	$a0, $a2, 3
	stx.d	$s6, $a1, $a0
	b	.LBB0_244
.LBB0_243:                              #   in Loop: Header=BB0_191 Depth=2
	move	$a1, $s6
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB0_244:                              #   in Loop: Header=BB0_191 Depth=2
	ori	$a4, $zero, 1
	b	.LBB0_190
	.p2align	4, , 16
.LBB0_245:                              # %._crit_edge.i
                                        #   in Loop: Header=BB0_17 Depth=1
	beqz	$a4, .LBB0_466
# %bb.246:                              # %.preheader47.lr.ph.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2096
	ori	$s0, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$fp, $zero
	st.d	$zero, $sp, 208
	xvld	$xr0, $sp, 0                    # 32-byte Folded Reload
	xvst	$xr0, $sp, 176
	addi.d	$s1, $a0, 16
	st.d	$s1, $a0, 8
	st.w	$s0, $a0, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $s5, 16
	move	$a0, $s1
	ori	$s6, $zero, 1
	b	.LBB0_249
	.p2align	4, , 16
.LBB0_247:                              # %._crit_edge52.loopexit.i.i
                                        #   in Loop: Header=BB0_249 Depth=2
	ld.wu	$s0, $s5, 0
.LBB0_248:                              # %._crit_edge52.i.i
                                        #   in Loop: Header=BB0_249 Depth=2
	addi.d	$fp, $fp, 1
	bgeu	$fp, $s0, .LBB0_264
.LBB0_249:                              # %.preheader47.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_254 Depth 3
                                        #         Child Loop BB0_256 Depth 4
	slli.d	$s4, $fp, 3
	ldx.d	$a1, $a0, $s4
	ldptr.w	$a2, $a1, 10248
	beqz	$a2, .LBB0_248
# %bb.250:                              # %.preheader.i458.i.preheader
                                        #   in Loop: Header=BB0_249 Depth=2
	move	$s0, $zero
	b	.LBB0_254
	.p2align	4, , 16
.LBB0_251:                              # %._crit_edge.thread.i.i
                                        #   in Loop: Header=BB0_254 Depth=3
	ldptr.d	$a1, $a1, 10256
	ldx.d	$a1, $a1, $a3
	beq	$a0, $s1, .LBB0_261
.LBB0_252:                              # %.thread64.i.i
                                        #   in Loop: Header=BB0_254 Depth=3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 8
.LBB0_253:                              # %.loopexit.i464.i
                                        #   in Loop: Header=BB0_254 Depth=3
	ldx.d	$a1, $a0, $s4
	ldx.wu	$a2, $a1, $s7
	addi.d	$s0, $s0, 1
	bgeu	$s0, $a2, .LBB0_247
.LBB0_254:                              # %.preheader.i458.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_249 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_256 Depth 4
	ld.w	$a2, $s5, 0
	slli.d	$a3, $s0, 3
	beqz	$a2, .LBB0_251
# %bb.255:                              # %.lr.ph.i459.i
                                        #   in Loop: Header=BB0_254 Depth=3
	ldptr.d	$a1, $a1, 10256
	ldx.d	$a1, $a1, $a3
	move	$a5, $zero
	bstrpick.d	$a3, $a2, 31, 0
	slli.d	$a4, $a3, 3
	.p2align	4, , 16
.LBB0_256:                              #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_249 Depth=2
                                        #       Parent Loop BB0_254 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.d	$a6, $a0, $a5
	beq	$a1, $a6, .LBB0_253
# %bb.257:                              #   in Loop: Header=BB0_256 Depth=4
	addi.d	$a5, $a5, 8
	bne	$a4, $a5, .LBB0_256
# %bb.258:                              # %._crit_edge.i463.i
                                        #   in Loop: Header=BB0_254 Depth=3
	beq	$a0, $s1, .LBB0_262
# %bb.259:                              #   in Loop: Header=BB0_254 Depth=3
	andi	$a3, $a2, 7
	beqz	$a3, .LBB0_252
# %bb.260:                              #   in Loop: Header=BB0_254 Depth=3
	addi.d	$a2, $a2, 1
	st.w	$a2, $s5, 0
	stx.d	$a1, $a0, $a4
	b	.LBB0_253
.LBB0_261:                              #   in Loop: Header=BB0_254 Depth=3
	move	$a3, $zero
	b	.LBB0_263
.LBB0_262:                              #   in Loop: Header=BB0_254 Depth=3
	bltu	$s2, $a2, .LBB0_252
.LBB0_263:                              # %.thread.i.i
                                        #   in Loop: Header=BB0_254 Depth=3
	addi.d	$a2, $a2, 1
	st.w	$a2, $s5, 0
	slli.d	$a2, $a3, 3
	stx.d	$a1, $a0, $a2
	b	.LBB0_253
.LBB0_264:                              # %nfa_closure.exit.i
                                        #   in Loop: Header=BB0_17 Depth=1
	pcalau12i	$a1, %pc_hi20(nfacmp)
	addi.d	$a3, $a1, %pc_lo12(nfacmp)
	ori	$a2, $zero, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	move	$a2, $zero
	addi.d	$a0, $sp, 192
	st.d	$a0, $sp, 184
	ori	$s1, $zero, 1
	st.w	$s1, $sp, 176
	st.d	$s5, $sp, 192
	b	.LBB0_266
	.p2align	4, , 16
.LBB0_265:                              # %.split533.us.i
                                        #   in Loop: Header=BB0_266 Depth=2
	addi.d	$a2, $a2, 1
	bgeu	$a2, $s1, .LBB0_325
.LBB0_266:                              #   Parent Loop BB0_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_323 Depth 3
                                        #       Child Loop BB0_272 Depth 3
                                        #         Child Loop BB0_275 Depth 4
                                        #       Child Loop BB0_282 Depth 3
                                        #         Child Loop BB0_287 Depth 4
                                        #           Child Loop BB0_289 Depth 5
                                        #       Child Loop BB0_302 Depth 3
                                        #         Child Loop BB0_304 Depth 4
                                        #       Child Loop BB0_310 Depth 3
	ld.d	$a0, $sp, 184
	slli.d	$a1, $a2, 3
	ldx.d	$s5, $a0, $a1
	ld.wu	$a0, $s5, 0
	beqz	$a0, .LBB0_265
# %bb.267:                              # %.preheader105.i.i.preheader
                                        #   in Loop: Header=BB0_266 Depth=2
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	move	$s6, $zero
	addi.d	$a1, $s5, 40
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	bnez	$a0, .LBB0_269
	b	.LBB0_323
	.p2align	4, , 16
.LBB0_268:                              # %.preheader105.ithread-pre-split.i
                                        #   in Loop: Header=BB0_323 Depth=3
	ld.wu	$a0, $s5, 0
	beqz	$a0, .LBB0_323
.LBB0_269:                              # %.preheader.lr.ph.i.i
                                        #   in Loop: Header=BB0_266 Depth=2
	ld.d	$a1, $s5, 8
	move	$fp, $zero
	move	$s4, $zero
	slli.d	$a2, $s6, 5
	alsl.d	$s0, $s6, $a2, 3
	b	.LBB0_272
	.p2align	4, , 16
.LBB0_270:                              # %._crit_edge.loopexit.i.i
                                        #   in Loop: Header=BB0_272 Depth=3
	ld.wu	$a0, $s5, 0
.LBB0_271:                              # %._crit_edge.i.i
                                        #   in Loop: Header=BB0_272 Depth=3
	addi.d	$fp, $fp, 1
	bgeu	$fp, $a0, .LBB0_277
.LBB0_272:                              # %.preheader.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_266 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_275 Depth 4
	slli.d	$s1, $fp, 3
	ldx.d	$s2, $a1, $s1
	add.d	$a2, $s2, $s0
	ld.w	$a2, $a2, 8
	beqz	$a2, .LBB0_271
# %bb.273:                              # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB0_272 Depth=3
	move	$s8, $zero
	move	$s3, $zero
	b	.LBB0_275
	.p2align	4, , 16
.LBB0_274:                              #   in Loop: Header=BB0_275 Depth=4
	add.d	$a0, $s2, $s0
	ld.d	$a0, $a0, 16
	ldx.d	$a1, $a0, $s8
	move	$a0, $s4
	pcaddu18i	$ra, %call36(set_add)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 8
	ldx.d	$s2, $a1, $s1
	add.d	$a0, $s2, $s0
	ld.wu	$a0, $a0, 8
	addi.d	$s3, $s3, 1
	addi.d	$s8, $s8, 8
	bgeu	$s3, $a0, .LBB0_270
.LBB0_275:                              # %.lr.ph.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_266 Depth=2
                                        #       Parent Loop BB0_272 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bnez	$s4, .LBB0_274
# %bb.276:                              #   in Loop: Header=BB0_275 Depth=4
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2096
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	b	.LBB0_274
	.p2align	4, , 16
.LBB0_277:                              # %._crit_edge121.i.i
                                        #   in Loop: Header=BB0_266 Depth=2
	ori	$s2, $zero, 2
	beqz	$s4, .LBB0_323
# %bb.278:                              #   in Loop: Header=BB0_266 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(set_to_vec)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s4, 0
	addi.d	$fp, $s4, 16
	beqz	$a1, .LBB0_297
# %bb.279:                              # %.preheader47.lr.ph.i.i.i
                                        #   in Loop: Header=BB0_266 Depth=2
	ld.d	$a0, $s4, 8
	move	$s1, $zero
	b	.LBB0_282
	.p2align	4, , 16
.LBB0_280:                              # %._crit_edge52.loopexit.i.i.i
                                        #   in Loop: Header=BB0_282 Depth=3
	ld.wu	$a1, $s4, 0
.LBB0_281:                              # %._crit_edge52.i.i.i
                                        #   in Loop: Header=BB0_282 Depth=3
	addi.d	$s1, $s1, 1
	bgeu	$s1, $a1, .LBB0_298
.LBB0_282:                              # %.preheader47.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_266 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_287 Depth 4
                                        #           Child Loop BB0_289 Depth 5
	slli.d	$s0, $s1, 3
	ldx.d	$a3, $a0, $s0
	ldptr.w	$a2, $a3, 10248
	beqz	$a2, .LBB0_281
# %bb.283:                              # %.preheader.i.i.i.preheader
                                        #   in Loop: Header=BB0_282 Depth=3
	move	$s8, $zero
	b	.LBB0_287
	.p2align	4, , 16
.LBB0_284:                              # %._crit_edge.thread.i.i.i
                                        #   in Loop: Header=BB0_287 Depth=4
	ldptr.d	$a3, $a3, 10256
	ldx.d	$a1, $a3, $a1
	beq	$a0, $fp, .LBB0_294
.LBB0_285:                              # %.thread64.i.i.i
                                        #   in Loop: Header=BB0_287 Depth=4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 8
.LBB0_286:                              # %.loopexit.i.i.i
                                        #   in Loop: Header=BB0_287 Depth=4
	ldx.d	$a3, $a0, $s0
	ldx.wu	$a1, $a3, $s7
	addi.d	$s8, $s8, 1
	bgeu	$s8, $a1, .LBB0_280
.LBB0_287:                              # %.preheader.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_266 Depth=2
                                        #       Parent Loop BB0_282 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_289 Depth 5
	ld.w	$a2, $s4, 0
	slli.d	$a1, $s8, 3
	beqz	$a2, .LBB0_284
# %bb.288:                              # %.lr.ph.i.i.i
                                        #   in Loop: Header=BB0_287 Depth=4
	ldptr.d	$a3, $a3, 10256
	ldx.d	$a1, $a3, $a1
	move	$a5, $zero
	bstrpick.d	$a3, $a2, 31, 0
	slli.d	$a4, $a3, 3
	.p2align	4, , 16
.LBB0_289:                              #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_266 Depth=2
                                        #       Parent Loop BB0_282 Depth=3
                                        #         Parent Loop BB0_287 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ldx.d	$a6, $a0, $a5
	beq	$a1, $a6, .LBB0_286
# %bb.290:                              #   in Loop: Header=BB0_289 Depth=5
	addi.d	$a5, $a5, 8
	bne	$a4, $a5, .LBB0_289
# %bb.291:                              # %._crit_edge.i.i.i
                                        #   in Loop: Header=BB0_287 Depth=4
	beq	$a0, $fp, .LBB0_295
# %bb.292:                              #   in Loop: Header=BB0_287 Depth=4
	andi	$a3, $a2, 7
	beqz	$a3, .LBB0_285
# %bb.293:                              #   in Loop: Header=BB0_287 Depth=4
	addi.d	$a2, $a2, 1
	st.w	$a2, $s4, 0
	stx.d	$a1, $a0, $a4
	b	.LBB0_286
.LBB0_294:                              #   in Loop: Header=BB0_287 Depth=4
	move	$a3, $zero
	b	.LBB0_296
.LBB0_295:                              #   in Loop: Header=BB0_287 Depth=4
	bltu	$s2, $a2, .LBB0_285
.LBB0_296:                              # %.thread.i.i.i
                                        #   in Loop: Header=BB0_287 Depth=4
	addi.d	$a2, $a2, 1
	st.w	$a2, $s4, 0
	slli.d	$a2, $a3, 3
	stx.d	$a1, $a0, $a2
	b	.LBB0_286
	.p2align	4, , 16
.LBB0_297:                              # %.._crit_edge54_crit_edge.i.i.i
                                        #   in Loop: Header=BB0_266 Depth=2
	ld.d	$a0, $s4, 8
	move	$a1, $zero
.LBB0_298:                              # %nfa_closure.exit.i.i
                                        #   in Loop: Header=BB0_266 Depth=2
	pcalau12i	$a2, %pc_hi20(nfacmp)
	addi.d	$a3, $a2, %pc_lo12(nfacmp)
	ori	$a2, $zero, 8
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 176
	ld.d	$a2, $sp, 184
	bstrpick.d	$a3, $a1, 31, 0
	beqz	$a1, .LBB0_307
# %bb.299:                              # %.lr.ph124.i.i
                                        #   in Loop: Header=BB0_266 Depth=2
	ld.w	$a4, $s4, 0
	beqz	$a4, .LBB0_309
# %bb.300:                              # %.lr.ph124.split.i.i.preheader
                                        #   in Loop: Header=BB0_266 Depth=2
	move	$s0, $zero
	bstrpick.d	$a0, $a4, 31, 0
	slli.d	$a5, $a0, 3
	b	.LBB0_302
	.p2align	4, , 16
.LBB0_301:                              # %.loopexit.i.i
                                        #   in Loop: Header=BB0_302 Depth=3
	addi.d	$s0, $s0, 1
	beq	$s0, $a3, .LBB0_307
.LBB0_302:                              # %.lr.ph124.split.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_266 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_304 Depth 4
	slli.d	$a0, $s0, 3
	ldx.d	$a6, $a2, $a0
	ld.w	$a0, $a6, 0
	bne	$a4, $a0, .LBB0_301
# %bb.303:                              # %.preheader.i80.i.i
                                        #   in Loop: Header=BB0_302 Depth=3
	ld.d	$a0, $s4, 8
	ld.d	$a6, $a6, 8
	move	$a7, $zero
	.p2align	4, , 16
.LBB0_304:                              #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_266 Depth=2
                                        #       Parent Loop BB0_302 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.d	$t0, $a0, $a7
	ldx.d	$t1, $a6, $a7
	bne	$t0, $t1, .LBB0_301
# %bb.305:                              #   in Loop: Header=BB0_304 Depth=4
	addi.d	$a7, $a7, 8
	bne	$a5, $a7, .LBB0_304
# %bb.306:                              # %eq_dfa_state.exit.i.i
                                        #   in Loop: Header=BB0_266 Depth=2
	bnez	$a0, .LBB0_319
	b	.LBB0_321
	.p2align	4, , 16
.LBB0_307:                              # %._crit_edge125.i.i
                                        #   in Loop: Header=BB0_266 Depth=2
	bnez	$a2, .LBB0_312
# %bb.308:                              #   in Loop: Header=BB0_266 Depth=2
	addi.d	$a2, $sp, 192
	st.d	$a2, $sp, 184
	b	.LBB0_314
.LBB0_309:                              # %.lr.ph124.split.us.i.i.preheader
                                        #   in Loop: Header=BB0_266 Depth=2
	move	$s0, $zero
	move	$a0, $a2
	.p2align	4, , 16
.LBB0_310:                              # %.lr.ph124.split.us.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_266 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a0, 0
	ld.w	$a4, $a4, 0
	beqz	$a4, .LBB0_318
# %bb.311:                              #   in Loop: Header=BB0_310 Depth=3
	addi.d	$s0, $s0, 1
	addi.d	$a0, $a0, 8
	bne	$a3, $s0, .LBB0_310
.LBB0_312:                              # %._crit_edge125.thread.i.i
                                        #   in Loop: Header=BB0_266 Depth=2
	addi.d	$a0, $sp, 192
	beq	$a2, $a0, .LBB0_315
# %bb.313:                              #   in Loop: Header=BB0_266 Depth=2
	andi	$a0, $a1, 7
	beqz	$a0, .LBB0_317
.LBB0_314:                              #   in Loop: Header=BB0_266 Depth=2
	addi.d	$a0, $a1, 1
	st.w	$a0, $sp, 176
	slli.d	$a0, $a3, 3
	stx.d	$s4, $a2, $a0
	b	.LBB0_322
.LBB0_315:                              #   in Loop: Header=BB0_266 Depth=2
	bltu	$s2, $a1, .LBB0_317
# %bb.316:                              #   in Loop: Header=BB0_266 Depth=2
	addi.d	$a0, $a1, 1
	st.w	$a0, $sp, 176
	slli.d	$a0, $a1, 3
	stx.d	$s4, $a2, $a0
	b	.LBB0_322
.LBB0_317:                              #   in Loop: Header=BB0_266 Depth=2
	addi.d	$a0, $sp, 176
	move	$a1, $s4
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	b	.LBB0_322
.LBB0_318:                              # %eq_dfa_state.exit.loopexit140.i.i
                                        #   in Loop: Header=BB0_266 Depth=2
	ld.d	$a0, $s4, 8
	beqz	$a0, .LBB0_321
.LBB0_319:                              # %eq_dfa_state.exit.i.i
                                        #   in Loop: Header=BB0_266 Depth=2
	beq	$a0, $fp, .LBB0_321
# %bb.320:                              #   in Loop: Header=BB0_266 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_321:                              # %free_DFAState.exit.i.i
                                        #   in Loop: Header=BB0_266 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184
	slli.d	$a1, $s0, 3
	ldx.d	$s4, $a0, $a1
.LBB0_322:                              #   in Loop: Header=BB0_266 Depth=2
	slli.d	$a0, $s6, 3
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	stx.d	$s4, $a1, $a0
.LBB0_323:                              # %._crit_edge121.thread.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_266 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$s6, $s6, 1
	ori	$a0, $zero, 256
	bne	$s6, $a0, .LBB0_268
# %bb.324:                              # %.split533.us.loopexit541.i
                                        #   in Loop: Header=BB0_266 Depth=2
	ld.wu	$s1, $sp, 176
	ori	$s6, $zero, 1
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	b	.LBB0_265
.LBB0_325:                              # %._crit_edge134.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.d	$s8, $a0, 296
	st.w	$zero, $a0, 296
	st.d	$zero, $a0, 304
	ori	$s5, $zero, 2048
	beqz	$s1, .LBB0_375
# %bb.326:                              # %.lr.ph.i87.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$fp, $zero
	move	$s0, $zero
	move	$s4, $zero
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.d	$s5, $a0, 312
	b	.LBB0_329
	.p2align	4, , 16
.LBB0_327:                              #   in Loop: Header=BB0_329 Depth=2
	ld.wu	$a0, $a4, 296
	st.d	$s5, $a4, 304
	addi.d	$a2, $a0, 1
	st.w	$a2, $a4, 296
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s5, $a0
.LBB0_328:                              #   in Loop: Header=BB0_329 Depth=2
	addi.d	$s4, $s4, 1
	addi.d	$s0, $s0, 1
	addi.d	$fp, $fp, 8
	bgeu	$s4, $s1, .LBB0_336
.LBB0_329:                              #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 184
	ldx.d	$a3, $a1, $fp
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $a4, 304
	move	$a1, $a0
	stptr.d	$a0, $a3, 2088
	st.w	$s0, $a0, 0
	beqz	$a2, .LBB0_327
# %bb.330:                              #   in Loop: Header=BB0_329 Depth=2
	ld.w	$a0, $s8, 0
	beq	$a2, $s5, .LBB0_333
# %bb.331:                              #   in Loop: Header=BB0_329 Depth=2
	andi	$a3, $a0, 7
	beqz	$a3, .LBB0_335
# %bb.332:                              #   in Loop: Header=BB0_329 Depth=2
	bstrpick.d	$a3, $a0, 31, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s8, 0
	slli.d	$a0, $a3, 3
	stx.d	$a1, $a2, $a0
	b	.LBB0_328
	.p2align	4, , 16
.LBB0_333:                              #   in Loop: Header=BB0_329 Depth=2
	bltu	$s2, $a0, .LBB0_335
# %bb.334:                              #   in Loop: Header=BB0_329 Depth=2
	addi.d	$a3, $a0, 1
	st.w	$a3, $s8, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a2, $a0
	b	.LBB0_328
	.p2align	4, , 16
.LBB0_335:                              #   in Loop: Header=BB0_329 Depth=2
	move	$a0, $s8
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.wu	$s1, $sp, 176
	b	.LBB0_328
.LBB0_336:                              # %.preheader138.i.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	ori	$s5, $zero, 2048
	beqz	$s1, .LBB0_369
# %bb.337:                              # %.preheader137.lr.ph.i.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.d	$a2, $sp, 184
	move	$fp, $zero
	b	.LBB0_340
	.p2align	4, , 16
.LBB0_338:                              # %._crit_edge153.loopexit.i.i.i
                                        #   in Loop: Header=BB0_340 Depth=2
	ld.wu	$s1, $sp, 176
	ori	$s6, $zero, 1
	ori	$s5, $zero, 2048
.LBB0_339:                              # %._crit_edge153.i.i.i
                                        #   in Loop: Header=BB0_340 Depth=2
	addi.d	$fp, $fp, 1
	bgeu	$fp, $s1, .LBB0_369
.LBB0_340:                              # %.preheader137.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_342 Depth 3
                                        #       Child Loop BB0_347 Depth 3
                                        #         Child Loop BB0_351 Depth 4
                                        #         Child Loop BB0_354 Depth 4
                                        #       Child Loop BB0_357 Depth 3
                                        #         Child Loop BB0_361 Depth 4
	slli.d	$s0, $fp, 3
	ldx.d	$a0, $a2, $s0
	move	$a1, $zero
	b	.LBB0_342
	.p2align	4, , 16
.LBB0_341:                              #   in Loop: Header=BB0_342 Depth=3
	addi.d	$a1, $a1, 8
	beq	$a1, $s5, .LBB0_344
.LBB0_342:                              #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_340 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a3, $a0, $a1
	ld.d	$a3, $a3, 40
	beqz	$a3, .LBB0_341
# %bb.343:                              #   in Loop: Header=BB0_342 Depth=3
	ldptr.d	$a4, $a0, 2088
	ldptr.d	$a3, $a3, 2088
	add.d	$a4, $a4, $a1
	st.d	$a3, $a4, 8
	b	.LBB0_341
	.p2align	4, , 16
.LBB0_344:                              # %.preheader136.i.i.i
                                        #   in Loop: Header=BB0_340 Depth=2
	ld.wu	$a1, $a0, 0
	beqz	$a1, .LBB0_339
# %bb.345:                              # %.preheader134.lr.ph.i.i.i
                                        #   in Loop: Header=BB0_340 Depth=2
	ld.d	$a3, $a0, 8
	move	$a4, $zero
	lu12i.w	$s1, -524288
	ori	$s3, $zero, 8
	b	.LBB0_347
	.p2align	4, , 16
.LBB0_346:                              # %._crit_edge.i92.i.i
                                        #   in Loop: Header=BB0_347 Depth=3
	addi.d	$a4, $a4, 1
	beq	$a4, $a1, .LBB0_355
.LBB0_347:                              # %.preheader134.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_340 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_351 Depth 4
                                        #         Child Loop BB0_354 Depth 4
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a3, $a5
	ldptr.w	$a7, $a5, 10288
	beqz	$a7, .LBB0_346
# %bb.348:                              # %.lr.ph144.i.i.i
                                        #   in Loop: Header=BB0_347 Depth=3
	ldptr.d	$a5, $a5, 10296
	bstrpick.d	$a6, $a7, 31, 0
	bgeu	$a7, $s3, .LBB0_350
# %bb.349:                              #   in Loop: Header=BB0_347 Depth=3
	move	$a7, $zero
	b	.LBB0_353
	.p2align	4, , 16
.LBB0_350:                              # %vector.ph299
                                        #   in Loop: Header=BB0_347 Depth=3
	bstrpick.d	$a7, $a6, 31, 3
	slli.d	$a7, $a7, 3
	vreplgr2vr.w	$vr0, $s1
	addi.d	$t0, $a5, 32
	move	$t1, $a7
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB0_351:                              # %vector.body302
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_340 Depth=2
                                        #       Parent Loop BB0_347 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$t2, $t0, -32
	ld.d	$t3, $t0, -24
	ld.d	$t4, $t0, -16
	ld.d	$t5, $t0, -8
	ld.d	$t6, $t0, 0
	ld.d	$t7, $t0, 8
	ld.d	$t8, $t0, 16
	ld.d	$s1, $t0, 24
	ld.d	$t2, $t2, 8
	ld.d	$t3, $t3, 8
	ld.d	$t4, $t4, 8
	ld.d	$t5, $t5, 8
	ld.d	$t6, $t6, 8
	ld.d	$t7, $t7, 8
	ld.d	$t8, $t8, 8
	ld.d	$s1, $s1, 8
	ld.w	$t2, $t2, 8
	ld.w	$t3, $t3, 8
	ld.w	$t4, $t4, 8
	ld.w	$t5, $t5, 8
	vinsgr2vr.w	$vr2, $t2, 0
	vinsgr2vr.w	$vr2, $t3, 1
	vinsgr2vr.w	$vr2, $t4, 2
	vinsgr2vr.w	$vr2, $t5, 3
	ld.w	$t2, $t6, 8
	ld.w	$t3, $t7, 8
	ld.w	$t4, $t8, 8
	ld.w	$t5, $s1, 8
	vinsgr2vr.w	$vr3, $t2, 0
	vinsgr2vr.w	$vr3, $t3, 1
	vinsgr2vr.w	$vr3, $t4, 2
	vinsgr2vr.w	$vr3, $t5, 3
	vmax.w	$vr0, $vr0, $vr2
	vmax.w	$vr1, $vr1, $vr3
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, 64
	bnez	$t1, .LBB0_351
# %bb.352:                              # %middle.block308
                                        #   in Loop: Header=BB0_347 Depth=3
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.d	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$s1, $vr0, 0
	beq	$a7, $a6, .LBB0_346
.LBB0_353:                              # %scalar.ph297.preheader
                                        #   in Loop: Header=BB0_347 Depth=3
	sub.d	$a6, $a6, $a7
	alsl.d	$a5, $a7, $a5, 3
	.p2align	4, , 16
.LBB0_354:                              # %scalar.ph297
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_340 Depth=2
                                        #       Parent Loop BB0_347 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a7, $a5, 0
	ld.d	$a7, $a7, 8
	ld.w	$a7, $a7, 8
	slt	$t0, $a7, $s1
	masknez	$a7, $a7, $t0
	maskeqz	$t0, $s1, $t0
	or	$s1, $t0, $a7
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 8
	bnez	$a6, .LBB0_354
	b	.LBB0_346
	.p2align	4, , 16
.LBB0_355:                              # %.preheader.i93.i.i.preheader
                                        #   in Loop: Header=BB0_340 Depth=2
	move	$s4, $zero
	b	.LBB0_357
	.p2align	4, , 16
.LBB0_356:                              # %._crit_edge151.i.i.i
                                        #   in Loop: Header=BB0_357 Depth=3
	ldx.d	$a0, $a2, $s0
	ld.wu	$a1, $a0, 0
	addi.d	$s4, $s4, 1
	bgeu	$s4, $a1, .LBB0_338
.LBB0_357:                              # %.preheader.i93.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_340 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_361 Depth 4
	ld.d	$a1, $a0, 8
	slli.d	$s5, $s4, 3
	ldx.d	$a1, $a1, $s5
	ldptr.w	$a3, $a1, 10288
	beqz	$a3, .LBB0_356
# %bb.358:                              # %.lr.ph150.i.i.i.preheader
                                        #   in Loop: Header=BB0_357 Depth=3
	move	$s6, $zero
	move	$s7, $zero
	b	.LBB0_361
.LBB0_359:                              #   in Loop: Header=BB0_361 Depth=4
	ori	$a3, $zero, 2056
	ldx.wu	$a3, $a0, $a3
	stptr.d	$a5, $a0, 2064
	addi.d	$a4, $a3, 1
	stptr.w	$a4, $a0, 2056
	slli.d	$a0, $a3, 3
	stx.d	$a1, $a5, $a0
	.p2align	4, , 16
.LBB0_360:                              #   in Loop: Header=BB0_361 Depth=4
	ldx.d	$a0, $a2, $s0
	ld.d	$a1, $a0, 8
	ldx.d	$a1, $a1, $s5
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ldx.wu	$a3, $a1, $a3
	addi.d	$s7, $s7, 1
	addi.d	$s6, $s6, 8
	bgeu	$s7, $a3, .LBB0_356
.LBB0_361:                              # %.lr.ph150.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_340 Depth=2
                                        #       Parent Loop BB0_357 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldptr.d	$a1, $a1, 10296
	ldx.d	$a1, $a1, $s6
	ld.d	$a3, $a1, 8
	ld.w	$a3, $a3, 8
	bne	$a3, $s1, .LBB0_360
# %bb.362:                              #   in Loop: Header=BB0_361 Depth=4
	ldptr.d	$a0, $a0, 2088
	ldptr.d	$a3, $a0, 2064
	addi.d	$a4, $a0, 2047
	addi.d	$a5, $a4, 25
	beqz	$a3, .LBB0_359
# %bb.363:                              #   in Loop: Header=BB0_361 Depth=4
	addi.d	$a0, $a4, 9
	ld.w	$a4, $a0, 0
	beq	$a3, $a5, .LBB0_366
# %bb.364:                              #   in Loop: Header=BB0_361 Depth=4
	andi	$a5, $a4, 7
	beqz	$a5, .LBB0_368
# %bb.365:                              #   in Loop: Header=BB0_361 Depth=4
	bstrpick.d	$a5, $a4, 31, 0
	addi.d	$a4, $a4, 1
	st.w	$a4, $a0, 0
	slli.d	$a0, $a5, 3
	stx.d	$a1, $a3, $a0
	b	.LBB0_360
.LBB0_366:                              #   in Loop: Header=BB0_361 Depth=4
	bltu	$s2, $a4, .LBB0_368
# %bb.367:                              #   in Loop: Header=BB0_361 Depth=4
	addi.d	$a5, $a4, 1
	st.w	$a5, $a0, 0
	slli.d	$a0, $a4, 3
	stx.d	$a1, $a3, $a0
	b	.LBB0_360
.LBB0_368:                              #   in Loop: Header=BB0_361 Depth=4
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 184
	b	.LBB0_360
.LBB0_369:                              # %dfa_to_scanner.exit.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	beqz	$s1, .LBB0_375
# %bb.370:                              # %.lr.ph.i96.i.i.preheader
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$fp, $zero
	move	$s1, $zero
	b	.LBB0_372
	.p2align	4, , 16
.LBB0_371:                              # %free_DFAState.exit.i.i.i
                                        #   in Loop: Header=BB0_372 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $sp, 176
	addi.d	$s1, $s1, 1
	addi.d	$fp, $fp, 8
	bgeu	$s1, $a0, .LBB0_375
.LBB0_372:                              # %.lr.ph.i96.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 184
	ldx.d	$s0, $a0, $fp
	ld.d	$a0, $s0, 8
	beqz	$a0, .LBB0_371
# %bb.373:                              # %.lr.ph.i96.i.i
                                        #   in Loop: Header=BB0_372 Depth=2
	addi.d	$a1, $s0, 16
	beq	$a0, $a1, .LBB0_371
# %bb.374:                              #   in Loop: Header=BB0_372 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_371
.LBB0_375:                              # %._crit_edge.i99.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.d	$a0, $sp, 184
	beqz	$a0, .LBB0_378
# %bb.376:                              # %._crit_edge.i99.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.d	$a1, $sp, 192
	beq	$a0, $a1, .LBB0_378
# %bb.377:                              #   in Loop: Header=BB0_17 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_378:                              # %nfa_to_scanner.exit.i
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.w	$a0, $s8, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 336
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(trans_hash_fns+16)
	beqz	$a0, .LBB0_456
# %bb.379:                              # %.lr.ph.i.i430.i.preheader
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s0, $zero
	move	$s1, $zero
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_380:                              # %.lr.ph.i.i430.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 304
	ldx.d	$a0, $a0, $s0
	addi.d	$a1, $a0, 2047
	addi.d	$a0, $a1, 49
	addi.d	$a1, $a1, 9
	pcaddu18i	$ra, %call36(set_union)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s3, 296
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	bltu	$s1, $a0, .LBB0_380
# %bb.381:                              # %.preheader38.i.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	beqz	$a0, .LBB0_456
# %bb.382:                              # %.lr.ph44.i.i.i.preheader
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s1, $zero
	move	$s2, $zero
	.p2align	4, , 16
.LBB0_383:                              # %.lr.ph44.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_385 Depth 3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 304
	slli.d	$a1, $s1, 3
	ldx.d	$s4, $a0, $a1
	move	$s3, $zero
	addi.d	$a0, $s4, 2047
	addi.d	$s0, $a0, 49
	b	.LBB0_385
	.p2align	4, , 16
.LBB0_384:                              #   in Loop: Header=BB0_385 Depth=3
	addi.d	$s3, $s3, 8
	beq	$s3, $s5, .LBB0_388
.LBB0_385:                              #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_383 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a0, $s4, $s3
	ld.d	$a0, $a0, 8
	beqz	$a0, .LBB0_384
# %bb.386:                              #   in Loop: Header=BB0_385 Depth=3
	beq	$s4, $a0, .LBB0_384
# %bb.387:                              #   in Loop: Header=BB0_385 Depth=3
	addi.d	$a0, $a0, 2047
	addi.d	$a1, $a0, 49
	move	$a0, $s0
	pcaddu18i	$ra, %call36(set_union)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $s2, $a0
	or	$s2, $a0, $a1
	b	.LBB0_384
	.p2align	4, , 16
.LBB0_388:                              #   in Loop: Header=BB0_383 Depth=2
	ld.wu	$a0, $s8, 0
	addi.d	$s1, $s1, 1
	bltu	$s1, $a0, .LBB0_383
# %bb.389:                              # %.loopexit.i.i436.i
                                        #   in Loop: Header=BB0_383 Depth=2
	beqz	$s2, .LBB0_391
# %bb.390:                              # %.loopexit.i.i436.i
                                        #   in Loop: Header=BB0_383 Depth=2
	move	$s1, $zero
	move	$s2, $zero
	bnez	$a0, .LBB0_383
.LBB0_391:                              # %.preheader.i.i437.i
                                        #   in Loop: Header=BB0_17 Depth=1
	ori	$s2, $zero, 2
	beqz	$a0, .LBB0_456
# %bb.392:                              # %.lr.ph46.i.i.i.preheader
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s1, $zero
	move	$s2, $zero
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_393:                              # %.lr.ph46.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 304
	ldx.d	$a0, $a0, $s1
	addi.d	$a0, $a0, 2047
	addi.d	$s0, $a0, 49
	move	$a0, $s0
	pcaddu18i	$ra, %call36(set_to_vec)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(sort_VecAction)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s3, 296
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	bltu	$s2, $a0, .LBB0_393
# %bb.394:                              # %compute_liveness.exit.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	st.d	$s6, $fp, %pc_lo12(trans_hash_fns+16)
	ori	$s2, $zero, 2
	move	$s1, $s3
	beqz	$a0, .LBB0_457
# %bb.395:                              # %.lr.ph.i3.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$a1, $zero
	move	$s6, $zero
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	b	.LBB0_397
	.p2align	4, , 16
.LBB0_396:                              #   in Loop: Header=BB0_397 Depth=2
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.wu	$a0, $s8, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bgeu	$a1, $a0, .LBB0_457
.LBB0_397:                              #   Parent Loop BB0_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_400 Depth 3
                                        #         Child Loop BB0_405 Depth 4
                                        #           Child Loop BB0_406 Depth 5
                                        #             Child Loop BB0_409 Depth 6
                                        #         Child Loop BB0_424 Depth 4
                                        #         Child Loop BB0_433 Depth 4
                                        #           Child Loop BB0_435 Depth 5
                                        #             Child Loop BB0_436 Depth 6
	ld.d	$a0, $s1, 304
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	ldx.d	$s8, $a0, $a1
	move	$s4, $zero
	addi.d	$a0, $s8, 8
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a0, $s8, 2047
	addi.d	$a0, $a0, 89
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	b	.LBB0_400
	.p2align	4, , 16
.LBB0_398:                              #   in Loop: Header=BB0_400 Depth=3
	move	$s6, $zero
	ori	$s2, $zero, 2
.LBB0_399:                              #   in Loop: Header=BB0_400 Depth=3
	addi.d	$s4, $s4, 1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	stx.d	$s0, $a0, $a1
	ori	$a0, $zero, 256
	beq	$s4, $a0, .LBB0_396
.LBB0_400:                              #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_397 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_405 Depth 4
                                        #           Child Loop BB0_406 Depth 5
                                        #             Child Loop BB0_409 Depth 6
                                        #         Child Loop BB0_424 Depth 4
                                        #         Child Loop BB0_433 Depth 4
                                        #           Child Loop BB0_435 Depth 5
                                        #             Child Loop BB0_436 Depth 6
	ori	$s3, $zero, 2
	bnez	$s6, .LBB0_402
# %bb.401:                              #   in Loop: Header=BB0_400 Depth=3
	ori	$a0, $zero, 1
	ori	$a1, $zero, 88
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
.LBB0_402:                              #   in Loop: Header=BB0_400 Depth=3
	slli.d	$a1, $s4, 3
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ldx.d	$fp, $a0, $a1
	addi.d	$s2, $s6, 24
	addi.d	$a0, $s6, 64
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	beqz	$fp, .LBB0_448
# %bb.403:                              #   in Loop: Header=BB0_400 Depth=3
	ldptr.w	$a0, $s8, 2096
	addi.d	$s7, $s6, 8
	beqz	$a0, .LBB0_431
# %bb.404:                              # %.preheader76.lr.ph.i.i.i.i
                                        #   in Loop: Header=BB0_400 Depth=3
	move	$s5, $zero
	move	$s0, $zero
.LBB0_405:                              # %.preheader76.i.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_397 Depth=2
                                        #       Parent Loop BB0_400 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_406 Depth 5
                                        #             Child Loop BB0_409 Depth 6
	ldptr.w	$a1, $fp, 2096
	bgeu	$s5, $a1, .LBB0_420
.LBB0_406:                              # %.preheader74.i.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_397 Depth=2
                                        #       Parent Loop BB0_400 Depth=3
                                        #         Parent Loop BB0_405 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB0_409 Depth 6
	slli.d	$s1, $s0, 3
	b	.LBB0_409
	.p2align	4, , 16
.LBB0_407:                              #   in Loop: Header=BB0_409 Depth=6
	ld.wu	$a0, $s6, 8
	st.d	$s2, $s6, 16
	addi.d	$a2, $a0, 1
	st.w	$a2, $s6, 8
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s2, $a0
.LBB0_408:                              #   in Loop: Header=BB0_409 Depth=6
	ldptr.w	$a0, $s8, 2096
	addi.w	$s0, $s0, 1
	addi.d	$s1, $s1, 8
	bgeu	$s0, $a0, .LBB0_431
.LBB0_409:                              #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_397 Depth=2
                                        #       Parent Loop BB0_400 Depth=3
                                        #         Parent Loop BB0_405 Depth=4
                                        #           Parent Loop BB0_406 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ldptr.d	$a1, $s8, 2104
	ldptr.d	$a2, $fp, 2104
	ldx.d	$a1, $a1, $s1
	slli.d	$a3, $s5, 3
	ldx.d	$a3, $a2, $a3
	ld.w	$a2, $a1, 32
	ld.w	$a3, $a3, 32
	beq	$a2, $a3, .LBB0_419
# %bb.410:                              #   in Loop: Header=BB0_409 Depth=6
	bgeu	$a2, $a3, .LBB0_418
# %bb.411:                              #   in Loop: Header=BB0_409 Depth=6
	ld.d	$a0, $s6, 16
	beqz	$a0, .LBB0_407
# %bb.412:                              #   in Loop: Header=BB0_409 Depth=6
	ld.w	$a2, $s7, 0
	beq	$a0, $s2, .LBB0_415
# %bb.413:                              #   in Loop: Header=BB0_409 Depth=6
	andi	$a3, $a2, 7
	beqz	$a3, .LBB0_417
# %bb.414:                              #   in Loop: Header=BB0_409 Depth=6
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $s7, 0
	slli.d	$a2, $a3, 3
	stx.d	$a1, $a0, $a2
	b	.LBB0_408
	.p2align	4, , 16
.LBB0_415:                              #   in Loop: Header=BB0_409 Depth=6
	bltu	$s3, $a2, .LBB0_417
# %bb.416:                              #   in Loop: Header=BB0_409 Depth=6
	addi.d	$a3, $a2, 1
	st.w	$a3, $s7, 0
	slli.d	$a2, $a2, 3
	stx.d	$a1, $a0, $a2
	b	.LBB0_408
	.p2align	4, , 16
.LBB0_417:                              #   in Loop: Header=BB0_409 Depth=6
	move	$a0, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	b	.LBB0_408
	.p2align	4, , 16
.LBB0_418:                              #   in Loop: Header=BB0_406 Depth=5
	ldptr.w	$a1, $fp, 2096
	addi.d	$s5, $s5, 1
	addi.w	$a2, $s5, 0
	bltu	$a2, $a1, .LBB0_406
	b	.LBB0_420
	.p2align	4, , 16
.LBB0_419:                              #   in Loop: Header=BB0_405 Depth=4
	addi.w	$s0, $s0, 1
	addi.w	$s5, $s5, 1
	bltu	$s0, $a0, .LBB0_405
	b	.LBB0_431
.LBB0_420:                              # %.preheader.i.i.i.i
                                        #   in Loop: Header=BB0_400 Depth=3
	bgeu	$s0, $a0, .LBB0_431
# %bb.421:                              # %.lr.ph.i.i.i.i
                                        #   in Loop: Header=BB0_400 Depth=3
	slli.d	$fp, $s0, 3
	b	.LBB0_424
	.p2align	4, , 16
.LBB0_422:                              #   in Loop: Header=BB0_424 Depth=4
	ldptr.d	$a0, $s8, 2104
	ld.wu	$a1, $s6, 8
	ldx.d	$a0, $a0, $fp
	st.d	$s2, $s6, 16
	addi.d	$a2, $a1, 1
	st.w	$a2, $s6, 8
	slli.d	$a1, $a1, 3
	stx.d	$a0, $s2, $a1
.LBB0_423:                              #   in Loop: Header=BB0_424 Depth=4
	ldptr.w	$a0, $s8, 2096
	addi.w	$s0, $s0, 1
	addi.d	$fp, $fp, 8
	bgeu	$s0, $a0, .LBB0_431
.LBB0_424:                              #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_397 Depth=2
                                        #       Parent Loop BB0_400 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $s6, 16
	beqz	$a0, .LBB0_422
# %bb.425:                              #   in Loop: Header=BB0_424 Depth=4
	ld.w	$a1, $s7, 0
	beq	$a0, $s2, .LBB0_428
# %bb.426:                              #   in Loop: Header=BB0_424 Depth=4
	ldptr.d	$a2, $s8, 2104
	andi	$a3, $a1, 7
	beqz	$a3, .LBB0_430
# %bb.427:                              #   in Loop: Header=BB0_424 Depth=4
	bstrpick.d	$a3, $a1, 31, 0
	ldx.d	$a2, $a2, $fp
	addi.d	$a1, $a1, 1
	st.w	$a1, $s7, 0
	slli.d	$a1, $a3, 3
	stx.d	$a2, $a0, $a1
	b	.LBB0_423
	.p2align	4, , 16
.LBB0_428:                              #   in Loop: Header=BB0_424 Depth=4
	ldptr.d	$a2, $s8, 2104
	bltu	$s3, $a1, .LBB0_430
# %bb.429:                              #   in Loop: Header=BB0_424 Depth=4
	ldx.d	$a2, $a2, $fp
	addi.d	$a3, $a1, 1
	st.w	$a3, $s7, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $a0, $a1
	b	.LBB0_423
	.p2align	4, , 16
.LBB0_430:                              #   in Loop: Header=BB0_424 Depth=4
	ldx.d	$a1, $a2, $fp
	move	$a0, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	b	.LBB0_423
	.p2align	4, , 16
.LBB0_431:                              # %action_diff.exit.i.i.i
                                        #   in Loop: Header=BB0_400 Depth=3
	ldptr.w	$a0, $s8, 2056
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_448
# %bb.432:                              # %.preheader48.lr.ph.i.i.i.i
                                        #   in Loop: Header=BB0_400 Depth=3
	move	$fp, $zero
	move	$s5, $zero
	addi.d	$s0, $s6, 48
.LBB0_433:                              # %.preheader48.i.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_397 Depth=2
                                        #       Parent Loop BB0_400 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_435 Depth 5
                                        #             Child Loop BB0_436 Depth 6
	ld.w	$a2, $s7, 0
	bgeu	$fp, $a2, .LBB0_448
# %bb.434:                              # %.preheader.lr.ph.i.i.i.i
                                        #   in Loop: Header=BB0_433 Depth=4
	ldptr.d	$a3, $s8, 2064
	ld.d	$a4, $s6, 16
.LBB0_435:                              # %.preheader.i58.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_397 Depth=2
                                        #       Parent Loop BB0_400 Depth=3
                                        #         Parent Loop BB0_433 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB0_436 Depth 6
	slli.d	$a1, $fp, 3
	ldx.d	$a1, $a4, $a1
	ld.w	$a5, $a1, 32
	alsl.d	$a6, $s5, $a3, 3
	.p2align	4, , 16
.LBB0_436:                              #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_397 Depth=2
                                        #       Parent Loop BB0_400 Depth=3
                                        #         Parent Loop BB0_433 Depth=4
                                        #           Parent Loop BB0_435 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$a1, $a6, 0
	ld.w	$a7, $a1, 32
	beq	$a7, $a5, .LBB0_440
# %bb.437:                              #   in Loop: Header=BB0_436 Depth=6
	bgeu	$a7, $a5, .LBB0_439
# %bb.438:                              #   in Loop: Header=BB0_436 Depth=6
	addi.w	$s5, $s5, 1
	addi.d	$a6, $a6, 8
	bltu	$s5, $a0, .LBB0_436
	b	.LBB0_448
	.p2align	4, , 16
.LBB0_439:                              #   in Loop: Header=BB0_435 Depth=5
	addi.d	$fp, $fp, 1
	addi.w	$a1, $fp, 0
	bne	$a2, $a1, .LBB0_435
	b	.LBB0_448
	.p2align	4, , 16
.LBB0_440:                              #   in Loop: Header=BB0_433 Depth=4
	ld.d	$a0, $s6, 56
	beqz	$a0, .LBB0_444
# %bb.441:                              #   in Loop: Header=BB0_433 Depth=4
	ld.w	$a2, $s0, 0
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	beq	$a0, $a3, .LBB0_445
# %bb.442:                              #   in Loop: Header=BB0_433 Depth=4
	andi	$a3, $a2, 7
	beqz	$a3, .LBB0_447
# %bb.443:                              #   in Loop: Header=BB0_433 Depth=4
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $s0, 0
	slli.d	$a2, $a3, 3
	stx.d	$a1, $a0, $a2
	ldptr.w	$a0, $s8, 2056
	addi.w	$s5, $s5, 1
	addi.w	$fp, $fp, 1
	bltu	$s5, $a0, .LBB0_433
	b	.LBB0_448
.LBB0_444:                              #   in Loop: Header=BB0_433 Depth=4
	ld.wu	$a0, $s6, 48
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	st.d	$a3, $s6, 56
	addi.d	$a2, $a0, 1
	st.w	$a2, $s6, 48
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a3, $a0
	ldptr.w	$a0, $s8, 2056
	addi.w	$s5, $s5, 1
	addi.w	$fp, $fp, 1
	bltu	$s5, $a0, .LBB0_433
	b	.LBB0_448
.LBB0_445:                              #   in Loop: Header=BB0_433 Depth=4
	bltu	$s3, $a2, .LBB0_447
# %bb.446:                              #   in Loop: Header=BB0_433 Depth=4
	addi.d	$a3, $a2, 1
	st.w	$a3, $s0, 0
	slli.d	$a2, $a2, 3
	stx.d	$a1, $a0, $a2
	ldptr.w	$a0, $s8, 2056
	addi.w	$s5, $s5, 1
	addi.w	$fp, $fp, 1
	bltu	$s5, $a0, .LBB0_433
	b	.LBB0_448
.LBB0_447:                              #   in Loop: Header=BB0_433 Depth=4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $s8, 2056
	addi.w	$s5, $s5, 1
	addi.w	$fp, $fp, 1
	bltu	$s5, $a0, .LBB0_433
	.p2align	4, , 16
.LBB0_448:                              # %action_intersect.exit.i.i.i
                                        #   in Loop: Header=BB0_400 Depth=3
	pcalau12i	$a0, %pc_hi20(trans_hash_fns)
	addi.d	$a2, $a0, %pc_lo12(trans_hash_fns)
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $s6
	pcaddu18i	$ra, %call36(set_add_fn)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beq	$a0, $s6, .LBB0_398
# %bb.449:                              #   in Loop: Header=BB0_400 Depth=3
	ld.d	$a0, $s6, 16
	beqz	$a0, .LBB0_452
# %bb.450:                              #   in Loop: Header=BB0_400 Depth=3
	beq	$a0, $s2, .LBB0_452
# %bb.451:                              #   in Loop: Header=BB0_400 Depth=3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_452:                              #   in Loop: Header=BB0_400 Depth=3
	ld.d	$a0, $s6, 56
	st.w	$zero, $s6, 8
	st.d	$zero, $s6, 16
	ori	$s2, $zero, 2
	beqz	$a0, .LBB0_455
# %bb.453:                              #   in Loop: Header=BB0_400 Depth=3
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_455
# %bb.454:                              #   in Loop: Header=BB0_400 Depth=3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_455:                              #   in Loop: Header=BB0_400 Depth=3
	st.w	$zero, $s6, 48
	st.d	$zero, $s6, 56
	b	.LBB0_399
.LBB0_456:                              # %._crit_edge.i.sink.split.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	st.d	$s6, $fp, %pc_lo12(trans_hash_fns+16)
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
.LBB0_457:                              # %._crit_edge.i.i441.i
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(set_to_vec)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 336
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_465
# %bb.458:                              # %.lr.ph98.i.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.d	$a2, $s1, 344
	bstrpick.d	$a3, $a0, 31, 0
	ori	$a1, $zero, 8
	bgeu	$a0, $a1, .LBB0_460
# %bb.459:                              #   in Loop: Header=BB0_17 Depth=1
	move	$a1, $zero
	b	.LBB0_463
.LBB0_460:                              # %vector.ph
                                        #   in Loop: Header=BB0_17 Depth=1
	bstrpick.d	$a1, $a3, 31, 3
	slli.d	$a1, $a1, 3
	addi.d	$a4, $a2, 32
	ori	$a5, $zero, 7
	move	$a6, $a1
	.p2align	4, , 16
.LBB0_461:                              # %vector.body
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a5, -7
	addi.d	$t0, $a5, -6
	addi.d	$t1, $a5, -5
	addi.d	$t2, $a5, -4
	addi.d	$t3, $a5, -3
	xvld	$xr0, $a4, -32
	addi.d	$t4, $a5, -2
	addi.d	$t5, $a5, -1
	xvld	$xr1, $a4, 0
	xvpickve2gr.d	$t6, $xr0, 0
	st.w	$a7, $t6, 0
	xvpickve2gr.d	$a7, $xr0, 1
	st.w	$t0, $a7, 0
	xvpickve2gr.d	$a7, $xr0, 2
	st.w	$t1, $a7, 0
	xvpickve2gr.d	$a7, $xr0, 3
	st.w	$t2, $a7, 0
	xvpickve2gr.d	$a7, $xr1, 0
	st.w	$t3, $a7, 0
	xvpickve2gr.d	$a7, $xr1, 1
	st.w	$t4, $a7, 0
	xvpickve2gr.d	$a7, $xr1, 2
	st.w	$t5, $a7, 0
	xvpickve2gr.d	$a7, $xr1, 3
	st.w	$a5, $a7, 0
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 64
	bnez	$a6, .LBB0_461
# %bb.462:                              # %middle.block
                                        #   in Loop: Header=BB0_17 Depth=1
	beq	$a1, $a3, .LBB0_465
.LBB0_463:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_17 Depth=1
	sub.d	$a3, $a3, $a1
	alsl.d	$a2, $a1, $a2, 3
	.p2align	4, , 16
.LBB0_464:                              # %scalar.ph
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a2, 0
	st.w	$a1, $a4, 0
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB0_464
.LBB0_465:                              # %compute_transitions.exit.i
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.w	$a1, $s3, 48
	add.d	$a0, $a1, $a0
	st.w	$a0, $s3, 48
.LBB0_466:                              # %._crit_edge.thread.i
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.w	$a0, $s4, 0
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	lu12i.w	$s5, 2
	ori	$s6, $zero, 1
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_480
# %bb.467:                              # %.lr.ph.i445.i.preheader
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$fp, $zero
	b	.LBB0_469
	.p2align	4, , 16
.LBB0_468:                              # %free_NFAState.exit.i.i
                                        #   in Loop: Header=BB0_469 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.wu	$a0, $a0, 0
	addi.d	$fp, $fp, 1
	bgeu	$fp, $a0, .LBB0_480
.LBB0_469:                              # %.lr.ph.i445.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_471 Depth 3
	ld.d	$a0, $s3, 16
	slli.d	$a1, $fp, 3
	ldx.d	$s0, $a0, $a1
	addi.d	$s1, $s0, 24
	ori	$s2, $zero, 256
	b	.LBB0_471
	.p2align	4, , 16
.LBB0_470:                              #   in Loop: Header=BB0_471 Depth=3
	st.w	$zero, $s1, -16
	st.d	$zero, $s1, -8
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 40
	beqz	$s2, .LBB0_474
.LBB0_471:                              #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_469 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s1, -8
	beqz	$a0, .LBB0_470
# %bb.472:                              #   in Loop: Header=BB0_471 Depth=3
	beq	$s1, $a0, .LBB0_470
# %bb.473:                              #   in Loop: Header=BB0_471 Depth=3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_470
	.p2align	4, , 16
.LBB0_474:                              #   in Loop: Header=BB0_469 Depth=2
	ldptr.d	$a0, $s0, 10256
	beqz	$a0, .LBB0_477
# %bb.475:                              #   in Loop: Header=BB0_469 Depth=2
	add.d	$a1, $s0, $s7
	beq	$a0, $a1, .LBB0_477
# %bb.476:                              #   in Loop: Header=BB0_469 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_477:                              #   in Loop: Header=BB0_469 Depth=2
	ldptr.d	$a0, $s0, 10296
	stptr.w	$zero, $s0, 10248
	stptr.d	$zero, $s0, 10256
	ori	$s2, $zero, 2
	beqz	$a0, .LBB0_468
# %bb.478:                              #   in Loop: Header=BB0_469 Depth=2
	ori	$a1, $s5, 2112
	add.d	$a1, $s0, $a1
	beq	$a0, $a1, .LBB0_468
# %bb.479:                              #   in Loop: Header=BB0_469 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_468
	.p2align	4, , 16
.LBB0_480:                              # %._crit_edge.i453.i
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.d	$a0, $s3, 16
	beqz	$a0, .LBB0_483
# %bb.481:                              # %._crit_edge.i453.i
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_483
# %bb.482:                              #   in Loop: Header=BB0_17 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_483:                              # %build_state_scanner.exit
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.w	$a0, $s3, 52
	st.w	$zero, $s3, 8
	st.d	$zero, $s3, 16
	addi.w	$s0, $a0, 1
	st.w	$s0, $s3, 52
	b	.LBB0_16
.LBB0_484:
	move	$s0, $zero
.LBB0_485:                              # %._crit_edge117
	pcalau12i	$a0, %got_pc_hi20(verbose_level)
	ld.d	$a0, $a0, %got_pc_lo12(verbose_level)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_487
# %bb.486:
	ld.w	$a2, $s3, 48
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_487:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ret
.Lfunc_end0:
	.size	build_scanners, .Lfunc_end0-build_scanners
                                        # -- End function
	.p2align	5                               # -- Begin function build_regex_nfa
	.type	build_regex_nfa,@function
build_regex_nfa:                        # @build_regex_nfa
# %bb.0:
	addi.d	$sp, $sp, -480
	st.d	$ra, $sp, 472                   # 8-byte Folded Spill
	st.d	$fp, $sp, 464                   # 8-byte Folded Spill
	st.d	$s0, $sp, 456                   # 8-byte Folded Spill
	st.d	$s1, $sp, 448                   # 8-byte Folded Spill
	st.d	$s2, $sp, 440                   # 8-byte Folded Spill
	st.d	$s3, $sp, 432                   # 8-byte Folded Spill
	st.d	$s4, $sp, 424                   # 8-byte Folded Spill
	st.d	$s5, $sp, 416                   # 8-byte Folded Spill
	st.d	$s6, $sp, 408                   # 8-byte Folded Spill
	st.d	$s7, $sp, 400                   # 8-byte Folded Spill
	st.d	$s8, $sp, 392                   # 8-byte Folded Spill
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	move	$s8, $a2
	move	$s2, $a0
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ld.d	$fp, $a1, 0
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a0, $s2, 24
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$s3, $a0, 2056
	add.d	$a1, $a2, $s3
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ori	$a1, $a0, 2072
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ori	$a0, $a0, 2176
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$s5, $zero, 1
	addi.d	$s1, $sp, 128
	xvrepli.b	$xr0, 1
	xvst	$xr0, $sp, 48                   # 32-byte Folded Spill
	move	$s7, $a2
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	st.d	$s3, $sp, 88                    # 8-byte Folded Spill
	b	.LBB1_3
.LBB1_1:                                #   in Loop: Header=BB1_3 Depth=1
	ldx.wu	$a0, $s6, $s3
	stptr.d	$a3, $s6, 10256
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 10248
	slli.d	$a0, $a0, 3
	stx.d	$s8, $a3, $a0
.LBB1_2:                                #   in Loop: Header=BB1_3 Depth=1
	move	$fp, $s4
	move	$s7, $s6
.LBB1_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_27 Depth 2
                                        #       Child Loop BB1_42 Depth 3
                                        #       Child Loop BB1_40 Depth 3
                                        #     Child Loop BB1_136 Depth 2
	addi.d	$s4, $fp, 1
	st.d	$s4, $sp, 384
	ld.bu	$s0, $fp, 0
	addi.d	$a0, $s0, -40
	move	$s6, $s7
	ori	$a1, $zero, 52
	bltu	$a1, $a0, .LBB1_9
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI1_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI1_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	ori	$s7, $zero, 91
	jr	$a0
.LBB1_5:                                #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 0
	ld.d	$a1, $s2, 16
	move	$s7, $a0
	addi.d	$a0, $a2, 1
	st.w	$a0, $s2, 0
	st.w	$a2, $s7, 0
	beqz	$a1, .LBB1_71
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB1_90
# %bb.7:                                #   in Loop: Header=BB1_3 Depth=1
	andi	$a2, $a0, 7
	beqz	$a2, .LBB1_92
# %bb.8:                                #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a0, 1
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	st.w	$a0, $a3, 0
	slli.d	$a0, $a2, 3
	stx.d	$s7, $a1, $a0
	b	.LBB1_93
.LBB1_9:                                #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 124
	beq	$s0, $a0, .LBB1_52
# %bb.10:                               #   in Loop: Header=BB1_3 Depth=1
	bnez	$s0, .LBB1_12
	b	.LBB1_200
.LBB1_11:                               #   in Loop: Header=BB1_3 Depth=1
	addi.d	$s4, $fp, 2
	st.d	$s4, $sp, 384
	ld.bu	$s0, $fp, 1
	beqz	$s0, .LBB1_199
.LBB1_12:                               #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s2, 56
	beqz	$a0, .LBB1_14
# %bb.13:                               #   in Loop: Header=BB1_3 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s0, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_56
.LBB1_14:                               #   in Loop: Header=BB1_3 Depth=1
	slli.d	$a0, $s0, 5
	alsl.d	$a0, $s0, $a0, 3
	add.d	$a0, $s6, $a0
	ld.d	$a1, $a0, 16
	addi.d	$s8, $a0, 8
	addi.d	$fp, $s8, 16
	beqz	$a1, .LBB1_67
# %bb.15:                               #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s8, 0
	beq	$a1, $fp, .LBB1_74
# %bb.16:                               #   in Loop: Header=BB1_3 Depth=1
	ld.w	$s0, $s2, 0
	ld.d	$fp, $s2, 16
	andi	$a0, $a0, 7
	beqz	$a0, .LBB1_75
.LBB1_17:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.d	$a0, $s0, 1
	st.w	$a0, $s2, 0
	st.w	$s0, $s7, 0
	beqz	$fp, .LBB1_110
# %bb.18:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	beq	$fp, $a1, .LBB1_149
# %bb.19:                               #   in Loop: Header=BB1_3 Depth=1
	andi	$a1, $a0, 7
	beqz	$a1, .LBB1_151
# %bb.20:                               #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a0, $a0, 1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $fp, $a0
	b	.LBB1_152
.LBB1_21:                               #   in Loop: Header=BB1_3 Depth=1
	ld.bu	$s0, $s4, 0
	ori	$a0, $zero, 94
	bne	$s0, $a0, .LBB1_23
# %bb.22:                               #   in Loop: Header=BB1_3 Depth=1
	addi.d	$s4, $fp, 2
	st.d	$s4, $sp, 384
.LBB1_23:                               #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $sp, 128
	ori	$a2, $zero, 256
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 255
	ori	$t0, $zero, 92
	xvld	$xr0, $sp, 48                   # 32-byte Folded Reload
	b	.LBB1_27
	.p2align	4, , 16
.LBB1_24:                               #   in Loop: Header=BB1_27 Depth=2
	bne	$a1, $t0, .LBB1_32
# %bb.25:                               #   in Loop: Header=BB1_27 Depth=2
	ld.bu	$a1, $s4, 1
	addi.d	$fp, $s4, 2
.LBB1_26:                               #   in Loop: Header=BB1_27 Depth=2
	stx.b	$s5, $a1, $s1
	move	$s4, $fp
	move	$a0, $a1
.LBB1_27:                               #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_42 Depth 3
                                        #       Child Loop BB1_40 Depth 3
	ld.bu	$a1, $s4, 0
	addi.d	$fp, $s4, 1
	blt	$s7, $a1, .LBB1_24
# %bb.28:                               #   in Loop: Header=BB1_27 Depth=2
	ori	$a2, $zero, 45
	bne	$a1, $a2, .LBB1_33
# %bb.29:                               #   in Loop: Header=BB1_27 Depth=2
	ld.bu	$a1, $s4, 1
	beq	$a1, $t0, .LBB1_34
# %bb.30:                               #   in Loop: Header=BB1_27 Depth=2
	beqz	$a1, .LBB1_199
# %bb.31:                               #   in Loop: Header=BB1_27 Depth=2
	addi.d	$s4, $s4, 2
	bnez	$a1, .LBB1_35
	b	.LBB1_199
.LBB1_32:                               #   in Loop: Header=BB1_27 Depth=2
	ori	$a0, $zero, 93
	bne	$a1, $a0, .LBB1_26
	b	.LBB1_63
.LBB1_33:                               #   in Loop: Header=BB1_27 Depth=2
	bnez	$a1, .LBB1_26
	b	.LBB1_63
.LBB1_34:                               #   in Loop: Header=BB1_27 Depth=2
	ld.bu	$a1, $s4, 2
	addi.d	$s4, $s4, 3
	beqz	$a1, .LBB1_199
.LBB1_35:                               # %.preheader
                                        #   in Loop: Header=BB1_27 Depth=2
	andi	$a2, $a0, 255
	ori	$t0, $zero, 92
	bltu	$a1, $a2, .LBB1_27
# %bb.36:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB1_27 Depth=2
	addi.d	$a3, $a0, 1
	andi	$a3, $a3, 255
	addi.d	$a4, $a1, 1
	andi	$a4, $a4, 255
	sltu	$a5, $a4, $a3
	masknez	$a4, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a4, $a3, $a4
	nor	$a3, $a0, $zero
	add.d	$a3, $a4, $a3
	andi	$a3, $a3, 255
	ori	$a5, $zero, 63
	bltu	$a3, $a5, .LBB1_38
# %bb.37:                               # %vector.scevcheck
                                        #   in Loop: Header=BB1_27 Depth=2
	addi.d	$a4, $a4, -1
	andi	$a4, $a4, 255
	bgeu	$a4, $a2, .LBB1_41
.LBB1_38:                               #   in Loop: Header=BB1_27 Depth=2
	move	$a2, $a0
.LBB1_39:                               # %.lr.ph.preheader497
                                        #   in Loop: Header=BB1_27 Depth=2
	move	$a0, $a2
	.p2align	4, , 16
.LBB1_40:                               # %.lr.ph
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$a2, $a0, 255
	addi.d	$a0, $a0, 1
	andi	$a3, $a0, 255
	stx.b	$s5, $a2, $s1
	bgeu	$a1, $a3, .LBB1_40
	b	.LBB1_27
.LBB1_41:                               # %vector.ph
                                        #   in Loop: Header=BB1_27 Depth=2
	move	$a5, $zero
	addi.d	$a3, $a3, 1
	andi	$a4, $a3, 448
	add.d	$a2, $a0, $a4
	.p2align	4, , 16
.LBB1_42:                               # %vector.body
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a6, $a0, $a5
	andi	$a6, $a6, 255
	add.d	$a7, $s1, $a6
	xvstx	$xr0, $a6, $s1
	addi.w	$a5, $a5, 64
	xvst	$xr0, $a7, 32
	bne	$a4, $a5, .LBB1_42
# %bb.43:                               # %middle.block
                                        #   in Loop: Header=BB1_27 Depth=2
	move	$a0, $a2
	beq	$a3, $a4, .LBB1_27
	b	.LBB1_39
.LBB1_44:                               #   in Loop: Header=BB1_3 Depth=1
	ldptr.d	$a1, $s8, 10256
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	add.d	$a3, $s8, $a0
	beqz	$a1, .LBB1_72
# %bb.45:                               #   in Loop: Header=BB1_3 Depth=1
	add.d	$a0, $s8, $s3
	ld.w	$a2, $a0, 0
	beq	$a1, $a3, .LBB1_94
# %bb.46:                               #   in Loop: Header=BB1_3 Depth=1
	andi	$a3, $a2, 7
	beqz	$a3, .LBB1_97
# %bb.47:                               #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a3, 3
	b	.LBB1_96
.LBB1_48:                               #   in Loop: Header=BB1_3 Depth=1
	ldptr.d	$a1, $s8, 10256
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	add.d	$a3, $s8, $a0
	beqz	$a1, .LBB1_73
# %bb.49:                               #   in Loop: Header=BB1_3 Depth=1
	add.d	$a0, $s8, $s3
	ld.w	$a2, $a0, 0
	beq	$a1, $a3, .LBB1_98
# %bb.50:                               #   in Loop: Header=BB1_3 Depth=1
	andi	$a3, $a2, 7
	beqz	$a3, .LBB1_100
# %bb.51:                               #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a3, 3
	stx.d	$s6, $a1, $a0
	b	.LBB1_101
.LBB1_52:                               #   in Loop: Header=BB1_3 Depth=1
	ldptr.d	$a1, $s6, 10256
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	add.d	$a3, $s6, $a0
	beqz	$a1, .LBB1_79
# %bb.53:                               #   in Loop: Header=BB1_3 Depth=1
	add.d	$a0, $s6, $s3
	ld.w	$a2, $a0, 0
	beq	$a1, $a3, .LBB1_111
# %bb.54:                               #   in Loop: Header=BB1_3 Depth=1
	andi	$a3, $a2, 7
	beqz	$a3, .LBB1_118
# %bb.55:                               #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a3, 3
	b	.LBB1_113
.LBB1_56:                               #   in Loop: Header=BB1_3 Depth=1
	addi.d	$fp, $s6, 8
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ld.d	$a3, $a0, 0
	slli.d	$a0, $s0, 2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ldx.w	$a0, $a3, $a0
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	add.d	$s0, $fp, $a0
	ld.d	$a1, $s0, 8
	beqz	$a1, .LBB1_86
# %bb.57:                               #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s0, 0
	addi.d	$a2, $s0, 16
	beq	$a1, $a2, .LBB1_124
# %bb.58:                               #   in Loop: Header=BB1_3 Depth=1
	ld.w	$s3, $s2, 0
	ld.d	$a2, $s2, 16
	andi	$a0, $a0, 7
	beqz	$a0, .LBB1_125
.LBB1_59:                               #   in Loop: Header=BB1_3 Depth=1
	st.d	$a3, $sp, 0                     # 8-byte Folded Spill
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	move	$s0, $a2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.d	$a0, $s3, 1
	st.w	$a0, $s2, 0
	st.w	$s3, $s7, 0
	beqz	$s0, .LBB1_160
# %bb.60:                               #   in Loop: Header=BB1_3 Depth=1
	move	$a4, $s0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	beq	$a4, $a1, .LBB1_177
# %bb.61:                               #   in Loop: Header=BB1_3 Depth=1
	andi	$a1, $a0, 7
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 0                     # 8-byte Folded Reload
	beqz	$a1, .LBB1_179
# %bb.62:                               #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a0, $a0, 1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $a4, $a0
	b	.LBB1_180
.LBB1_63:                               #   in Loop: Header=BB1_3 Depth=1
	st.d	$fp, $sp, 384
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 0
	ld.d	$a1, $s2, 16
	move	$s7, $a0
	addi.d	$a0, $a2, 1
	st.w	$a0, $s2, 0
	st.w	$a2, $s7, 0
	beqz	$a1, .LBB1_108
# %bb.64:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB1_130
# %bb.65:                               #   in Loop: Header=BB1_3 Depth=1
	andi	$a2, $a0, 7
	beqz	$a2, .LBB1_132
# %bb.66:                               #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a0, 1
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	st.w	$a0, $a3, 0
	slli.d	$a0, $a2, 3
	stx.d	$s7, $a1, $a0
	b	.LBB1_133
.LBB1_67:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 0
	ld.d	$a1, $s2, 16
	move	$s7, $a0
	addi.d	$a0, $a2, 1
	st.w	$a0, $s2, 0
	st.w	$a2, $s7, 0
	beqz	$a1, .LBB1_109
# %bb.68:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB1_145
# %bb.69:                               #   in Loop: Header=BB1_3 Depth=1
	andi	$a2, $a0, 7
	beqz	$a2, .LBB1_147
# %bb.70:                               #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a0, 1
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	st.w	$a0, $a3, 0
	slli.d	$a0, $a2, 3
	stx.d	$s7, $a1, $a0
	b	.LBB1_148
.LBB1_71:                               #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $s2, 8
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $s2, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s2, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	b	.LBB1_93
.LBB1_72:                               #   in Loop: Header=BB1_3 Depth=1
	ldx.wu	$a0, $s8, $s3
	stptr.d	$a3, $s8, 10256
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s8, 10248
	slli.d	$a0, $a0, 3
	stx.d	$s6, $a3, $a0
	b	.LBB1_2
.LBB1_73:                               #   in Loop: Header=BB1_3 Depth=1
	ldx.wu	$a0, $s8, $s3
	stptr.d	$a3, $s8, 10256
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s8, 10248
	slli.d	$a0, $a0, 3
	stx.d	$s6, $a3, $a0
	b	.LBB1_101
.LBB1_74:                               #   in Loop: Header=BB1_3 Depth=1
	ld.w	$s0, $s2, 0
	ld.d	$fp, $s2, 16
	ori	$a1, $zero, 2
	bgeu	$a1, $a0, .LBB1_17
.LBB1_75:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.d	$a0, $s0, 1
	st.w	$a0, $s2, 0
	st.w	$s0, $s7, 0
	beqz	$fp, .LBB1_129
# %bb.76:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	beq	$fp, $a1, .LBB1_156
# %bb.77:                               #   in Loop: Header=BB1_3 Depth=1
	andi	$a1, $a0, 7
	beqz	$a1, .LBB1_158
# %bb.78:                               #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a0, $a0, 1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $fp, $a0
	b	.LBB1_159
.LBB1_79:                               #   in Loop: Header=BB1_3 Depth=1
	ldx.wu	$a0, $s6, $s3
	stptr.d	$a3, $s6, 10256
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 10248
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	stx.d	$a1, $a3, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ldptr.d	$fp, $a0, 10256
	beqz	$fp, .LBB1_114
.LBB1_80:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$s0, $a0, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beq	$fp, $a0, .LBB1_119
# %bb.81:                               #   in Loop: Header=BB1_3 Depth=1
	ld.w	$s6, $s2, 0
	ld.d	$s3, $s2, 16
	andi	$a0, $s0, 7
	beqz	$a0, .LBB1_120
.LBB1_82:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.d	$a0, $s6, 1
	st.w	$a0, $s2, 0
	st.w	$s6, $s7, 0
	beqz	$s3, .LBB1_154
# %bb.83:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	beq	$s3, $a1, .LBB1_167
# %bb.84:                               #   in Loop: Header=BB1_3 Depth=1
	andi	$a1, $a0, 7
	beqz	$a1, .LBB1_170
# %bb.85:                               #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a0, $a0, 1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	slli.d	$a0, $a1, 3
	b	.LBB1_169
.LBB1_86:                               #   in Loop: Header=BB1_3 Depth=1
	st.d	$a3, $sp, 0                     # 8-byte Folded Spill
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 0
	ld.d	$a1, $s2, 16
	move	$s7, $a0
	addi.d	$a0, $a2, 1
	st.w	$a0, $s2, 0
	st.w	$a2, $s7, 0
	beqz	$a1, .LBB1_155
# %bb.87:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB1_172
# %bb.88:                               #   in Loop: Header=BB1_3 Depth=1
	andi	$a2, $a0, 7
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	beqz	$a2, .LBB1_175
# %bb.89:                               #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a0, 1
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	st.w	$a0, $a3, 0
	slli.d	$a0, $a2, 3
	b	.LBB1_174
.LBB1_90:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$a2, $zero, 2
	bltu	$a2, $a0, .LBB1_92
# %bb.91:                               #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a2, $a0, 1
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a1, $a0
	b	.LBB1_93
.LBB1_92:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB1_93:                               # %new_NFAState.exit
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a1, $sp, 384
	move	$a0, $s2
	move	$a2, $s6
	move	$a3, $s7
	pcaddu18i	$ra, %call36(build_regex_nfa)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 384
	move	$s8, $s6
	b	.LBB1_3
.LBB1_94:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$a3, $zero, 2
	bltu	$a3, $a2, .LBB1_97
# %bb.95:                               #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a3, $a2, 1
	st.w	$a3, $a0, 0
	slli.d	$a0, $a2, 3
.LBB1_96:                               #   in Loop: Header=BB1_3 Depth=1
	stx.d	$s6, $a1, $a0
	b	.LBB1_2
.LBB1_97:                               #   in Loop: Header=BB1_3 Depth=1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	b	.LBB1_2
.LBB1_98:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$a3, $zero, 2
	bltu	$a3, $a2, .LBB1_100
# %bb.99:                               #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a3, $a2, 1
	st.w	$a3, $a0, 0
	slli.d	$a0, $a2, 3
	stx.d	$s6, $a1, $a0
	b	.LBB1_101
.LBB1_100:                              #   in Loop: Header=BB1_3 Depth=1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB1_101:                              #   in Loop: Header=BB1_3 Depth=1
	ldptr.d	$a1, $s6, 10256
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	add.d	$a3, $s6, $a0
	beqz	$a1, .LBB1_1
# %bb.102:                              #   in Loop: Header=BB1_3 Depth=1
	add.d	$a0, $s6, $s3
	ld.w	$a2, $a0, 0
	beq	$a1, $a3, .LBB1_105
# %bb.103:                              #   in Loop: Header=BB1_3 Depth=1
	andi	$a3, $a2, 7
	beqz	$a3, .LBB1_107
# %bb.104:                              #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a3, 3
	stx.d	$s8, $a1, $a0
	b	.LBB1_2
.LBB1_105:                              #   in Loop: Header=BB1_3 Depth=1
	ori	$a3, $zero, 2
	bltu	$a3, $a2, .LBB1_107
# %bb.106:                              #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a3, $a2, 1
	st.w	$a3, $a0, 0
	slli.d	$a0, $a2, 3
	stx.d	$s8, $a1, $a0
	b	.LBB1_2
.LBB1_107:                              #   in Loop: Header=BB1_3 Depth=1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	b	.LBB1_2
.LBB1_108:                              #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $s2, 8
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $s2, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s2, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	b	.LBB1_133
.LBB1_109:                              #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $s2, 8
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $s2, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s2, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	b	.LBB1_148
.LBB1_110:                              #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $s2, 8
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $s2, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s2, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	b	.LBB1_152
.LBB1_111:                              #   in Loop: Header=BB1_3 Depth=1
	ori	$a3, $zero, 2
	bltu	$a3, $a2, .LBB1_118
# %bb.112:                              #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a3, $a2, 1
	st.w	$a3, $a0, 0
	slli.d	$a0, $a2, 3
.LBB1_113:                              #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	stx.d	$a2, $a1, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ldptr.d	$fp, $a0, 10256
	bnez	$fp, .LBB1_80
.LBB1_114:                              #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 0
	ld.d	$a1, $s2, 16
	move	$s7, $a0
	addi.d	$a0, $a2, 1
	st.w	$a0, $s2, 0
	st.w	$a2, $s7, 0
	beqz	$a1, .LBB1_153
# %bb.115:                              #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB1_163
# %bb.116:                              #   in Loop: Header=BB1_3 Depth=1
	andi	$a2, $a0, 7
	beqz	$a2, .LBB1_165
# %bb.117:                              #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a0, 1
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	st.w	$a0, $a3, 0
	slli.d	$a0, $a2, 3
	stx.d	$s7, $a1, $a0
	b	.LBB1_166
.LBB1_118:                              #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ldptr.d	$fp, $a0, 10256
	bnez	$fp, .LBB1_80
	b	.LBB1_114
.LBB1_119:                              #   in Loop: Header=BB1_3 Depth=1
	ld.w	$s6, $s2, 0
	ld.d	$s3, $s2, 16
	ori	$a0, $zero, 2
	bgeu	$a0, $s0, .LBB1_82
.LBB1_120:                              #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.d	$a0, $s6, 1
	st.w	$a0, $s2, 0
	st.w	$s6, $s7, 0
	beqz	$s3, .LBB1_161
# %bb.121:                              #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	beq	$s3, $a1, .LBB1_181
# %bb.122:                              #   in Loop: Header=BB1_3 Depth=1
	andi	$a1, $a0, 7
	beqz	$a1, .LBB1_183
# %bb.123:                              #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a0, $a0, 1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $s3, $a0
	b	.LBB1_184
.LBB1_124:                              #   in Loop: Header=BB1_3 Depth=1
	ld.w	$s3, $s2, 0
	ld.d	$a2, $s2, 16
	ori	$a1, $zero, 2
	bgeu	$a1, $a0, .LBB1_59
.LBB1_125:                              #   in Loop: Header=BB1_3 Depth=1
	move	$s8, $a2
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.d	$a0, $s3, 1
	st.w	$a0, $s2, 0
	st.w	$s3, $s7, 0
	beqz	$s8, .LBB1_162
# %bb.126:                              #   in Loop: Header=BB1_3 Depth=1
	move	$a3, $s8
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	beq	$s8, $a1, .LBB1_185
# %bb.127:                              #   in Loop: Header=BB1_3 Depth=1
	andi	$a1, $a0, 7
	beqz	$a1, .LBB1_187
# %bb.128:                              #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a0, $a0, 1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $a3, $a0
	b	.LBB1_188
.LBB1_129:                              #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $s2, 8
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $s2, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s2, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	b	.LBB1_159
.LBB1_130:                              #   in Loop: Header=BB1_3 Depth=1
	ori	$a2, $zero, 2
	bltu	$a2, $a0, .LBB1_132
# %bb.131:                              #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a2, $a0, 1
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a1, $a0
	b	.LBB1_133
.LBB1_132:                              #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB1_133:                              # %new_NFAState.exit412
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$s3, $zero
	ori	$s4, $zero, 1
	b	.LBB1_136
.LBB1_134:                              #   in Loop: Header=BB1_136 Depth=2
	ld.wu	$a1, $a0, 0
	st.d	$a3, $a2, 56
	addi.d	$a2, $a1, 1
	st.w	$a2, $a0, 0
	alsl.d	$a0, $a1, $s6, 3
	add.d	$a0, $a0, $s3
	st.d	$s7, $a0, 64
	.p2align	4, , 16
.LBB1_135:                              #   in Loop: Header=BB1_136 Depth=2
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 40
	ori	$a0, $zero, 256
	beq	$s4, $a0, .LBB1_144
.LBB1_136:                              #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a0, $s4, $s1
	addi.d	$a1, $s0, -94
	sltui	$a1, $a1, 1
	sltui	$a0, $a0, 1
	xor	$a0, $a1, $a0
	bnez	$a0, .LBB1_135
# %bb.137:                              #   in Loop: Header=BB1_136 Depth=2
	add.d	$a2, $s6, $s3
	ld.d	$a1, $a2, 56
	addi.d	$a0, $a2, 48
	addi.d	$a3, $a2, 64
	beqz	$a1, .LBB1_134
# %bb.138:                              #   in Loop: Header=BB1_136 Depth=2
	ld.w	$a2, $a0, 0
	beq	$a3, $a1, .LBB1_141
# %bb.139:                              #   in Loop: Header=BB1_136 Depth=2
	andi	$a3, $a2, 7
	beqz	$a3, .LBB1_143
# %bb.140:                              #   in Loop: Header=BB1_136 Depth=2
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a3, 3
	stx.d	$s7, $a1, $a0
	b	.LBB1_135
.LBB1_141:                              #   in Loop: Header=BB1_136 Depth=2
	ori	$a3, $zero, 2
	bltu	$a3, $a2, .LBB1_143
# %bb.142:                              #   in Loop: Header=BB1_136 Depth=2
	addi.d	$a3, $a2, 1
	st.w	$a3, $a0, 0
	slli.d	$a0, $a2, 3
	stx.d	$s7, $a1, $a0
	b	.LBB1_135
.LBB1_143:                              #   in Loop: Header=BB1_136 Depth=2
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	b	.LBB1_135
.LBB1_144:                              #   in Loop: Header=BB1_3 Depth=1
	move	$s8, $s6
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	b	.LBB1_3
.LBB1_145:                              #   in Loop: Header=BB1_3 Depth=1
	ori	$a2, $zero, 2
	bltu	$a2, $a0, .LBB1_147
# %bb.146:                              #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a2, $a0, 1
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a1, $a0
	b	.LBB1_148
.LBB1_147:                              #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB1_148:                              # %new_NFAState.exit416
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $s8, 0
	st.d	$fp, $s8, 8
	addi.d	$a1, $a0, 1
	st.w	$a1, $s8, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $fp, $a0
	b	.LBB1_198
.LBB1_149:                              #   in Loop: Header=BB1_3 Depth=1
	ori	$a1, $zero, 2
	bltu	$a1, $a0, .LBB1_151
# %bb.150:                              #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a1, $a0, 1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.w	$a1, $a2, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $fp, $a0
	b	.LBB1_152
.LBB1_151:                              #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB1_152:                              # %new_NFAState.exit420
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $s8, 0
	ld.d	$a1, $s8, 8
	addi.d	$a2, $a0, 1
	st.w	$a2, $s8, 0
	slli.d	$a0, $a0, 3
	b	.LBB1_196
.LBB1_153:                              #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $s2, 8
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $s2, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s2, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	b	.LBB1_166
.LBB1_154:                              #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $s2, 8
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $s2, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s2, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	b	.LBB1_171
.LBB1_155:                              #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $s2, 8
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $s2, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s2, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	b	.LBB1_176
.LBB1_156:                              #   in Loop: Header=BB1_3 Depth=1
	ori	$a1, $zero, 2
	bltu	$a1, $a0, .LBB1_158
# %bb.157:                              #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a1, $a0, 1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.w	$a1, $a2, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $fp, $a0
	b	.LBB1_159
.LBB1_158:                              #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB1_159:                              # %new_NFAState.exit428
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$a0, $s8
	b	.LBB1_197
.LBB1_160:                              #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $s2, 8
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $s2, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s2, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 0                     # 8-byte Folded Reload
	b	.LBB1_180
.LBB1_161:                              #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $s2, 8
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $s2, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s2, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	b	.LBB1_184
.LBB1_162:                              #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $s2, 8
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $s2, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s2, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	b	.LBB1_188
.LBB1_163:                              #   in Loop: Header=BB1_3 Depth=1
	ori	$a2, $zero, 2
	bltu	$a2, $a0, .LBB1_165
# %bb.164:                              #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a2, $a0, 1
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a1, $a0
	b	.LBB1_166
.LBB1_165:                              #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB1_166:                              # %new_NFAState.exit396
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldx.wu	$a0, $a2, $s3
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	stptr.d	$a3, $a2, 10256
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a2, 10248
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a3, $a0
	move	$fp, $s4
	b	.LBB1_3
.LBB1_167:                              #   in Loop: Header=BB1_3 Depth=1
	ori	$a1, $zero, 2
	bltu	$a1, $a0, .LBB1_170
# %bb.168:                              #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a1, $a0, 1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.w	$a1, $a2, 0
	slli.d	$a0, $a0, 3
.LBB1_169:                              # %new_NFAState.exit400
                                        #   in Loop: Header=BB1_3 Depth=1
	stx.d	$s7, $s3, $a0
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	b	.LBB1_171
.LBB1_170:                              #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ldptr.d	$fp, $a0, 10256
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$s0, $a0, $s3
.LBB1_171:                              # %new_NFAState.exit400
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $s0, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	bstrpick.d	$a0, $s0, 31, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $fp, $a0
	move	$fp, $s4
	b	.LBB1_3
.LBB1_172:                              #   in Loop: Header=BB1_3 Depth=1
	ori	$a2, $zero, 2
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	bltu	$a2, $a0, .LBB1_175
# %bb.173:                              #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a2, $a0, 1
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	slli.d	$a0, $a0, 3
.LBB1_174:                              # %new_NFAState.exit432
                                        #   in Loop: Header=BB1_3 Depth=1
	stx.d	$s7, $a1, $a0
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	b	.LBB1_176
.LBB1_175:                              #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
.LBB1_176:                              # %new_NFAState.exit432
                                        #   in Loop: Header=BB1_3 Depth=1
	ldx.w	$a0, $a0, $s0
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	ldx.wu	$a1, $fp, $a0
	add.d	$a2, $fp, $a0
	addi.d	$a3, $a2, 16
	st.d	$a3, $a2, 8
	addi.d	$a2, $a1, 1
	stx.w	$a2, $fp, $a0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $a3, $a0
	b	.LBB1_189
.LBB1_177:                              #   in Loop: Header=BB1_3 Depth=1
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	ori	$a1, $zero, 2
	ld.d	$a3, $sp, 0                     # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB1_179
# %bb.178:                              #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a1, $a0, 1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.w	$a1, $a2, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a4, $a0
	b	.LBB1_180
.LBB1_179:                              #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s8, 0
.LBB1_180:                              # %new_NFAState.exit436
                                        #   in Loop: Header=BB1_3 Depth=1
	ldx.w	$a0, $a3, $s0
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	ldx.wu	$a1, $fp, $a0
	add.d	$a2, $fp, $a0
	ld.d	$a2, $a2, 8
	addi.d	$a3, $a1, 1
	stx.w	$a3, $fp, $a0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $a2, $a0
	b	.LBB1_189
.LBB1_181:                              #   in Loop: Header=BB1_3 Depth=1
	ori	$a1, $zero, 2
	bltu	$a1, $a0, .LBB1_183
# %bb.182:                              #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a1, $a0, 1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.w	$a1, $a2, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $s3, $a0
	b	.LBB1_184
.LBB1_183:                              #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB1_184:                              # %new_NFAState.exit408
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	move	$fp, $s4
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	b	.LBB1_3
.LBB1_185:                              #   in Loop: Header=BB1_3 Depth=1
	ori	$a1, $zero, 2
	bltu	$a1, $a0, .LBB1_187
# %bb.186:                              #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a1, $a0, 1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.w	$a1, $a2, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a3, $a0
	b	.LBB1_188
.LBB1_187:                              #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB1_188:                              # %new_NFAState.exit444
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$a0, $s0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
.LBB1_189:                              #   in Loop: Header=BB1_3 Depth=1
	pcaddu18i	$ra, %call36(__ctype_toupper_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	ldx.w	$a0, $a0, $s0
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	add.d	$a0, $fp, $a0
	ld.d	$a1, $a0, 8
	addi.d	$a3, $a0, 16
	beqz	$a1, .LBB1_193
# %bb.190:                              #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a2, $a0, 0
	beq	$a1, $a3, .LBB1_194
# %bb.191:                              #   in Loop: Header=BB1_3 Depth=1
	andi	$a3, $a2, 7
	beqz	$a3, .LBB1_197
# %bb.192:                              #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a3, 3
	b	.LBB1_196
.LBB1_193:                              #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a1, $a0, 0
	st.d	$a3, $a0, 8
	addi.d	$a2, $a1, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $a3, $a0
	b	.LBB1_198
.LBB1_194:                              #   in Loop: Header=BB1_3 Depth=1
	ori	$a3, $zero, 2
	bltu	$a3, $a2, .LBB1_197
# %bb.195:                              #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a3, $a2, 1
	st.w	$a3, $a0, 0
	slli.d	$a0, $a2, 3
.LBB1_196:                              #   in Loop: Header=BB1_3 Depth=1
	stx.d	$s7, $a1, $a0
	b	.LBB1_198
.LBB1_197:                              #   in Loop: Header=BB1_3 Depth=1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB1_198:                              #   in Loop: Header=BB1_3 Depth=1
	move	$fp, $s4
	move	$s8, $s6
	b	.LBB1_3
.LBB1_199:                              # %.loopexit447
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ld.d	$s8, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 464                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 480
	pcaddu18i	$t8, %call36(d_fail)
	jr	$t8
.LBB1_200:
	ldptr.d	$a1, $s6, 10256
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	add.d	$a3, $s6, $a0
	beqz	$a1, .LBB1_204
# %bb.201:
	add.d	$a0, $s6, $s3
	ld.w	$a2, $a0, 0
	beq	$a1, $a3, .LBB1_205
# %bb.202:
	andi	$a3, $a2, 7
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	beqz	$a3, .LBB1_208
# %bb.203:
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a3, 3
	b	.LBB1_207
.LBB1_204:
	ldx.wu	$a0, $s6, $s3
	stptr.d	$a3, $s6, 10256
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 10248
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	stx.d	$a1, $a3, $a0
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	b	.LBB1_209
.LBB1_205:
	ori	$a3, $zero, 2
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	bltu	$a3, $a2, .LBB1_208
# %bb.206:
	addi.d	$a3, $a2, 1
	st.w	$a3, $a0, 0
	slli.d	$a0, $a2, 3
.LBB1_207:
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	stx.d	$a2, $a1, $a0
	b	.LBB1_209
.LBB1_208:
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB1_209:
	st.d	$s4, $fp, 0
	ld.d	$s8, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 464                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 480
	ret
.Lfunc_end1:
	.size	build_regex_nfa, .Lfunc_end1-build_regex_nfa
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_200-.LJTI1_0
	.word	.LBB1_48-.LJTI1_0
	.word	.LBB1_101-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_44-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_11-.LJTI1_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function nfacmp
	.type	nfacmp,@function
nfacmp:                                 # @nfacmp
# %bb.0:
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.w	$a0, $a0, 0
	ld.w	$a1, $a1, 0
	sltu	$a2, $a0, $a1
	sltu	$a0, $a1, $a0
	sub.d	$a0, $a0, $a2
	ret
.Lfunc_end2:
	.size	nfacmp, .Lfunc_end2-nfacmp
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function trans_hash_fn
.LCPI3_0:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.p2align	5
	.type	trans_hash_fn,@function
trans_hash_fn:                          # @trans_hash_fn
# %bb.0:
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB3_5
.LBB3_1:
	move	$a1, $zero
.LBB3_2:                                # %.loopexit
	ld.w	$a3, $a0, 48
	beqz	$a3, .LBB3_13
# %bb.3:                                # %.lr.ph19
	ld.d	$a0, $a0, 56
	ori	$a4, $zero, 8
	bstrpick.d	$a2, $a3, 31, 0
	bgeu	$a3, $a4, .LBB3_8
# %bb.4:
	move	$a3, $zero
	b	.LBB3_11
.LBB3_5:                                # %.preheader
	ld.w	$a1, $a0, 8
	beqz	$a1, .LBB3_1
# %bb.6:                                # %.lr.ph
	ld.d	$a2, $a0, 16
	ori	$a4, $zero, 8
	bstrpick.d	$a3, $a1, 31, 0
	bgeu	$a1, $a4, .LBB3_14
# %bb.7:
	move	$a4, $zero
	move	$a1, $zero
	b	.LBB3_17
.LBB3_8:                                # %vector.ph34
	bstrpick.d	$a3, $a2, 31, 3
	pcalau12i	$a4, %pc_hi20(.LCPI3_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI3_0)
	slli.d	$a3, $a3, 3
	vinsgr2vr.w	$vr1, $a1, 0
	vinsgr2vr.w	$vr2, $zero, 0
	vshuf.w	$vr0, $vr2, $vr1
	addi.d	$a1, $a0, 32
	vrepli.b	$vr1, 0
	vrepli.w	$vr2, 3
	move	$a4, $a3
	.p2align	4, , 16
.LBB3_9:                                # %vector.body37
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, -32
	ld.d	$a6, $a1, -24
	ld.d	$a7, $a1, -16
	ld.d	$t0, $a1, -8
	ld.d	$t1, $a1, 0
	ld.d	$t2, $a1, 8
	ld.d	$t3, $a1, 16
	ld.d	$t4, $a1, 24
	ld.w	$a5, $a5, 32
	ld.w	$a6, $a6, 32
	ld.w	$a7, $a7, 32
	ld.w	$t0, $t0, 32
	vinsgr2vr.w	$vr3, $a5, 0
	vinsgr2vr.w	$vr3, $a6, 1
	vinsgr2vr.w	$vr3, $a7, 2
	vinsgr2vr.w	$vr3, $t0, 3
	ld.w	$a5, $t1, 32
	ld.w	$a6, $t2, 32
	ld.w	$a7, $t3, 32
	ld.w	$t0, $t4, 32
	vinsgr2vr.w	$vr4, $a5, 0
	vinsgr2vr.w	$vr4, $a6, 1
	vinsgr2vr.w	$vr4, $a7, 2
	vinsgr2vr.w	$vr4, $t0, 3
	vmadd.w	$vr0, $vr3, $vr2
	vmadd.w	$vr1, $vr4, $vr2
	addi.d	$a4, $a4, -8
	addi.d	$a1, $a1, 64
	bnez	$a4, .LBB3_9
# %bb.10:                               # %middle.block44
	vadd.w	$vr0, $vr1, $vr0
	vreplvei.d	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a1, $vr0, 0
	beq	$a3, $a2, .LBB3_13
.LBB3_11:                               # %scalar.ph32.preheader
	alsl.d	$a0, $a3, $a0, 3
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB3_12:                               # %scalar.ph32
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	ld.w	$a3, $a3, 32
	alsl.d	$a3, $a3, $a3, 1
	add.w	$a1, $a3, $a1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB3_12
.LBB3_13:                               # %._crit_edge
	move	$a0, $a1
	ret
.LBB3_14:                               # %vector.ph
	bstrpick.d	$a1, $a3, 31, 3
	slli.d	$a4, $a1, 3
	addi.d	$a1, $a2, 32
	vrepli.b	$vr0, 0
	vrepli.w	$vr1, 3
	move	$a5, $a4
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB3_15:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a1, -32
	ld.d	$a7, $a1, -24
	ld.d	$t0, $a1, -16
	ld.d	$t1, $a1, -8
	ld.d	$t2, $a1, 0
	ld.d	$t3, $a1, 8
	ld.d	$t4, $a1, 16
	ld.d	$t5, $a1, 24
	ld.w	$a6, $a6, 32
	ld.w	$a7, $a7, 32
	ld.w	$t0, $t0, 32
	ld.w	$t1, $t1, 32
	vinsgr2vr.w	$vr3, $a6, 0
	vinsgr2vr.w	$vr3, $a7, 1
	vinsgr2vr.w	$vr3, $t0, 2
	vinsgr2vr.w	$vr3, $t1, 3
	ld.w	$a6, $t2, 32
	ld.w	$a7, $t3, 32
	ld.w	$t0, $t4, 32
	ld.w	$t1, $t5, 32
	vinsgr2vr.w	$vr4, $a6, 0
	vinsgr2vr.w	$vr4, $a7, 1
	vinsgr2vr.w	$vr4, $t0, 2
	vinsgr2vr.w	$vr4, $t1, 3
	vmadd.w	$vr0, $vr3, $vr1
	vmadd.w	$vr2, $vr4, $vr1
	addi.d	$a5, $a5, -8
	addi.d	$a1, $a1, 64
	bnez	$a5, .LBB3_15
# %bb.16:                               # %middle.block
	vadd.w	$vr0, $vr2, $vr0
	vreplvei.d	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a1, $vr0, 0
	beq	$a4, $a3, .LBB3_2
.LBB3_17:                               # %scalar.ph.preheader
	alsl.d	$a2, $a4, $a2, 3
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB3_18:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	ld.w	$a4, $a4, 32
	alsl.d	$a4, $a4, $a4, 1
	add.w	$a1, $a4, $a1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB3_18
	b	.LBB3_2
.Lfunc_end3:
	.size	trans_hash_fn, .Lfunc_end3-trans_hash_fn
                                        # -- End function
	.p2align	5                               # -- Begin function trans_cmp_fn
	.type	trans_cmp_fn,@function
trans_cmp_fn:                           # @trans_cmp_fn
# %bb.0:
	ld.d	$a2, $a2, 16
	beqz	$a2, .LBB4_7
# %bb.1:                                # %.thread
	ld.w	$a3, $a0, 48
	ld.w	$a4, $a1, 48
	ori	$a2, $zero, 1
	bne	$a3, $a4, .LBB4_14
.LBB4_2:                                # %.thread27
	beqz	$a3, .LBB4_6
# %bb.3:                                # %.lr.ph31
	ld.d	$a0, $a0, 56
	ld.d	$a1, $a1, 56
	bstrpick.d	$a2, $a3, 31, 0
	.p2align	4, , 16
.LBB4_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a1, 0
	bne	$a3, $a4, .LBB4_13
# %bb.5:                                #   in Loop: Header=BB4_4 Depth=1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB4_4
.LBB4_6:
	move	$a0, $zero
	ret
.LBB4_7:
	ld.w	$a6, $a0, 8
	ld.w	$a3, $a1, 8
	ori	$a2, $zero, 1
	bne	$a6, $a3, .LBB4_14
# %bb.8:
	ld.w	$a3, $a0, 48
	ld.w	$a4, $a1, 48
	bne	$a3, $a4, .LBB4_14
# %bb.9:                                # %.preheader
	beqz	$a6, .LBB4_2
# %bb.10:                               # %.lr.ph
	ld.d	$a4, $a0, 16
	ld.d	$a5, $a1, 16
	bstrpick.d	$a6, $a6, 31, 0
	.p2align	4, , 16
.LBB4_11:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a4, 0
	ld.d	$t0, $a5, 0
	bne	$a7, $t0, .LBB4_14
# %bb.12:                               #   in Loop: Header=BB4_11 Depth=1
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, -1
	addi.d	$a4, $a4, 8
	bnez	$a6, .LBB4_11
	b	.LBB4_2
.LBB4_13:
	ori	$a2, $zero, 1
.LBB4_14:                               # %.loopexit
	move	$a0, $a2
	ret
.Lfunc_end4:
	.size	trans_cmp_fn, .Lfunc_end4-trans_cmp_fn
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d scanners %d transitions\n"
	.size	.L.str, 28

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"bad (part of) regex: %s\n"
	.size	.L.str.1, 25

	.type	trans_hash_fns,@object          # @trans_hash_fns
	.data
	.p2align	3, 0x0
trans_hash_fns:
	.dword	trans_hash_fn
	.dword	trans_cmp_fn
	.space	16
	.size	trans_hash_fns, 32

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nfacmp
	.addrsig_sym trans_hash_fn
	.addrsig_sym trans_cmp_fn
	.addrsig_sym trans_hash_fns
