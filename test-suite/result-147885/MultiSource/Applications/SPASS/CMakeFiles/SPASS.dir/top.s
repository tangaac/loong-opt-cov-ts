	.file	"top.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -576
	st.d	$ra, $sp, 568                   # 8-byte Folded Spill
	st.d	$fp, $sp, 560                   # 8-byte Folded Spill
	st.d	$s0, $sp, 552                   # 8-byte Folded Spill
	st.d	$s1, $sp, 544                   # 8-byte Folded Spill
	st.d	$s2, $sp, 536                   # 8-byte Folded Spill
	st.d	$s3, $sp, 528                   # 8-byte Folded Spill
	st.d	$s4, $sp, 520                   # 8-byte Folded Spill
	st.d	$s5, $sp, 512                   # 8-byte Folded Spill
	st.d	$s6, $sp, 504                   # 8-byte Folded Spill
	st.d	$s7, $sp, 496                   # 8-byte Folded Spill
	st.d	$s8, $sp, 488                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 480                  # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(clock_Init)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(clock_StartCounter)
	jirl	$ra, $ra, 0
	addi.w	$s3, $zero, -1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(memory_Init)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(memory_FreeAllMem)
	ld.d	$a0, $a0, %got_pc_lo12(memory_FreeAllMem)
	pcaddu18i	$ra, %call36(atexit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(symbol_Init)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stack_POINTER)
	ld.d	$a0, $a0, %got_pc_lo12(stack_POINTER)
	st.w	$zero, $a0, 0
	pcaddu18i	$ra, %call36(hash_Init)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(sort_Init)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(term_Init)
	jirl	$ra, $ra, 0
	lu12i.w	$s1, 3
	ori	$s2, $s1, 3712
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	lu12i.w	$a0, -4
	ori	$a0, $a0, 384
	vrepli.w	$vr0, -42
	ori	$s6, $s1, 3728
	.p2align	4, , 16
.LBB0_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $a2, $a0
	vstx	$vr0, $a1, $s2
	addi.d	$a0, $a0, 32
	vstx	$vr0, $a1, $s6
	bnez	$a0, .LBB0_1
# %bb.2:                                # %symbol_CreatePrecedence.exit
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	ori	$s1, $zero, 1
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	move	$a1, $a2
	pcaddu18i	$ra, %call36(fol_Init)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cont_Init)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(unify_Init)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(flag_Init)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(subs_Init)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(clause_Init)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(red_Init)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ren_Init)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(dp_Init)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(opts_Init)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(ana_FINITEMONADICPREDICATES)
	ld.d	$a0, $a0, %got_pc_lo12(ana_FINITEMONADICPREDICATES)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$zero, $a0, 0
	pcaddu18i	$ra, %call36(cc_Init)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(prfs_Create)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ori	$a0, $zero, 384
	ori	$s5, $zero, 384
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(flag_CLEAN)
	ld.d	$a1, $a1, %got_pc_lo12(flag_CLEAN)
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	st.w	$a1, $a0, 8
	st.w	$a1, $a0, 12
	st.w	$a1, $a0, 16
	st.w	$a1, $a0, 20
	st.w	$a1, $a0, 24
	st.w	$a1, $a0, 28
	st.w	$a1, $a0, 32
	st.w	$a1, $a0, 36
	st.w	$a1, $a0, 40
	st.w	$a1, $a0, 44
	st.w	$a1, $a0, 48
	st.w	$a1, $a0, 52
	st.w	$a1, $a0, 56
	st.w	$a1, $a0, 60
	st.w	$a1, $a0, 64
	st.w	$a1, $a0, 68
	st.w	$a1, $a0, 72
	st.w	$a1, $a0, 76
	st.w	$a1, $a0, 80
	st.w	$a1, $a0, 84
	st.w	$a1, $a0, 88
	st.w	$a1, $a0, 92
	st.w	$a1, $a0, 96
	st.w	$a1, $a0, 100
	st.w	$a1, $a0, 104
	st.w	$a1, $a0, 108
	st.w	$a1, $a0, 112
	st.w	$a1, $a0, 116
	st.w	$a1, $a0, 120
	st.w	$a1, $a0, 124
	st.w	$a1, $a0, 128
	st.w	$a1, $a0, 132
	st.w	$a1, $a0, 136
	st.w	$a1, $a0, 140
	st.w	$a1, $a0, 144
	st.w	$a1, $a0, 148
	st.w	$a1, $a0, 152
	st.w	$a1, $a0, 156
	st.w	$a1, $a0, 160
	st.w	$a1, $a0, 164
	st.w	$a1, $a0, 168
	st.w	$a1, $a0, 172
	st.w	$a1, $a0, 176
	st.w	$a1, $a0, 180
	st.w	$a1, $a0, 184
	st.w	$a1, $a0, 188
	st.w	$a1, $a0, 192
	st.w	$a1, $a0, 196
	st.w	$a1, $a0, 200
	st.w	$a1, $a0, 204
	st.w	$a1, $a0, 208
	st.w	$a1, $a0, 212
	st.w	$a1, $a0, 216
	st.w	$a1, $a0, 220
	st.w	$a1, $a0, 224
	st.w	$a1, $a0, 228
	st.w	$a1, $a0, 232
	st.w	$a1, $a0, 236
	st.w	$a1, $a0, 240
	st.w	$a1, $a0, 244
	st.w	$a1, $a0, 248
	st.w	$a1, $a0, 252
	st.w	$a1, $a0, 256
	st.w	$a1, $a0, 260
	st.w	$a1, $a0, 264
	st.w	$a1, $a0, 268
	st.w	$a1, $a0, 272
	st.w	$a1, $a0, 276
	st.w	$a1, $a0, 280
	st.w	$a1, $a0, 284
	st.w	$a1, $a0, 288
	st.w	$a1, $a0, 292
	st.w	$a1, $a0, 296
	st.w	$a1, $a0, 300
	st.w	$a1, $a0, 304
	st.w	$a1, $a0, 308
	st.w	$a1, $a0, 312
	st.w	$a1, $a0, 316
	st.w	$a1, $a0, 320
	st.w	$a1, $a0, 324
	st.w	$a1, $a0, 328
	st.w	$a1, $a0, 332
	st.w	$a1, $a0, 336
	st.w	$a1, $a0, 340
	st.w	$a1, $a0, 344
	st.w	$a1, $a0, 348
	st.w	$a1, $a0, 352
	st.w	$a1, $a0, 356
	st.w	$a1, $a0, 360
	st.w	$a1, $a0, 364
	st.w	$a1, $a0, 368
	st.w	$a1, $a0, 372
	st.w	$a1, $a0, 376
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	st.w	$a1, $a0, 380
	pcaddu18i	$ra, %call36(opts_DeclareSPASSFlagsAsOptions)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(opts_Declare)
	jirl	$ra, $ra, 0
	pcalau12i	$s4, %pc_hi20(top_RemoveFileOptId)
	st.w	$a0, $s4, %pc_lo12(top_RemoveFileOptId)
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(opts_Read)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_535
# %bb.3:                                # %.preheader565.preheader
	st.d	$s6, $sp, 80                    # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	move	$s3, $zero
	move	$s2, $zero
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_4:                                # %.preheader565
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(flag_DefaultStore)
	jirl	$ra, $ra, 0
	ldx.w	$a2, $a0, $s2
	move	$a0, $s6
	move	$a1, $s3
	pcaddu18i	$ra, %call36(flag_SetFlagValue)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 4
	addi.w	$s3, $s3, 1
	bne	$s2, $s5, .LBB0_4
# %bb.5:                                # %flag_InitStoreByDefaults.exit
	move	$a0, $s6
	pcaddu18i	$ra, %call36(opts_SetFlags)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(opts_Indicator)
	jirl	$ra, $ra, 0
	blt	$a0, $s0, .LBB0_7
# %bb.6:
	ld.w	$a0, $s6, 4
	beqz	$a0, .LBB0_58
.LBB0_7:
	st.d	$zero, $sp, 408
	st.d	$zero, $sp, 424
	st.d	$zero, $sp, 432
	st.d	$zero, $sp, 440
	st.d	$zero, $sp, 448
	ld.w	$a0, $s6, 4
	pcalau12i	$s1, %pc_hi20(top_InputFile)
	st.d	$s1, $sp, 72                    # 8-byte Folded Spill
	beqz	$a0, .LBB0_9
# %bb.8:
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$a0, $a0, %got_pc_lo12(stdin)
	ld.d	$s2, $a0, 0
	st.d	$zero, $s1, %pc_lo12(top_InputFile)
	b	.LBB0_10
.LBB0_9:
	pcaddu18i	$ra, %call36(opts_Indicator)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $fp, $a0
	st.d	$a0, $s1, %pc_lo12(top_InputFile)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(misc_OpenFile)
	jirl	$ra, $ra, 0
	move	$s2, $a0
.LBB0_10:
	ld.d	$s5, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(clock_StartCounter)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	st.w	$a0, $s1, 0
	st.w	$a0, $s1, 4
	st.w	$a0, $s1, 8
	st.w	$a0, $s1, 12
	st.w	$a0, $s1, 16
	st.w	$a0, $s1, 20
	st.w	$a0, $s1, 24
	st.w	$a0, $s1, 28
	st.w	$a0, $s1, 32
	st.w	$a0, $s1, 36
	st.w	$a0, $s1, 40
	st.w	$a0, $s1, 44
	st.w	$a0, $s1, 48
	st.w	$a0, $s1, 52
	st.w	$a0, $s1, 56
	st.w	$a0, $s1, 60
	st.w	$a0, $s1, 64
	st.w	$a0, $s1, 68
	st.w	$a0, $s1, 72
	st.w	$a0, $s1, 76
	st.w	$a0, $s1, 80
	st.w	$a0, $s1, 84
	st.w	$a0, $s1, 88
	st.w	$a0, $s1, 92
	st.w	$a0, $s1, 96
	st.w	$a0, $s1, 100
	st.w	$a0, $s1, 104
	st.w	$a0, $s1, 108
	st.w	$a0, $s1, 112
	st.w	$a0, $s1, 116
	st.w	$a0, $s1, 120
	st.w	$a0, $s1, 124
	st.w	$a0, $s1, 128
	st.w	$a0, $s1, 132
	st.w	$a0, $s1, 136
	st.w	$a0, $s1, 140
	st.w	$a0, $s1, 144
	st.w	$a0, $s1, 148
	st.w	$a0, $s1, 152
	st.w	$a0, $s1, 156
	st.w	$a0, $s1, 160
	st.w	$a0, $s1, 164
	st.w	$a0, $s1, 168
	st.w	$a0, $s1, 172
	st.w	$a0, $s1, 176
	st.w	$a0, $s1, 180
	st.w	$a0, $s1, 184
	st.w	$a0, $s1, 188
	st.w	$a0, $s1, 192
	st.w	$a0, $s1, 196
	st.w	$a0, $s1, 200
	st.w	$a0, $s1, 204
	st.w	$a0, $s1, 208
	st.w	$a0, $s1, 212
	st.w	$a0, $s1, 216
	st.w	$a0, $s1, 220
	st.w	$a0, $s1, 224
	st.w	$a0, $s1, 228
	st.w	$a0, $s1, 232
	st.w	$a0, $s1, 236
	st.w	$a0, $s1, 240
	st.w	$a0, $s1, 244
	st.w	$a0, $s1, 248
	st.w	$a0, $s1, 252
	st.w	$a0, $s1, 256
	st.w	$a0, $s1, 260
	st.w	$a0, $s1, 264
	st.w	$a0, $s1, 268
	st.w	$a0, $s1, 272
	st.w	$a0, $s1, 276
	st.w	$a0, $s1, 280
	st.w	$a0, $s1, 284
	st.w	$a0, $s1, 288
	st.w	$a0, $s1, 292
	st.w	$a0, $s1, 296
	st.w	$a0, $s1, 300
	st.w	$a0, $s1, 304
	st.w	$a0, $s1, 308
	st.w	$a0, $s1, 312
	st.w	$a0, $s1, 316
	st.w	$a0, $s1, 320
	st.w	$a0, $s1, 324
	st.w	$a0, $s1, 328
	st.w	$a0, $s1, 332
	st.w	$a0, $s1, 336
	st.w	$a0, $s1, 340
	st.w	$a0, $s1, 344
	st.w	$a0, $s1, 348
	st.w	$a0, $s1, 352
	st.w	$a0, $s1, 356
	st.w	$a0, $s1, 360
	st.w	$a0, $s1, 364
	st.w	$a0, $s1, 368
	st.w	$a0, $s1, 372
	st.w	$a0, $s1, 376
	st.w	$a0, $s1, 380
	addi.d	$a3, $sp, 448
	addi.d	$a4, $sp, 440
	addi.d	$a5, $sp, 432
	addi.d	$a6, $sp, 408
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	move	$a0, $s2
	move	$a1, $s1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(dfg_DFGParser)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 456
	move	$a0, $s1
	pcaddu18i	$ra, %call36(opts_SetFlags)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$a1, $s5, 112
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a1, $s5, 104
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	move	$s1, $zero
	move	$s2, $zero
	ori	$s3, $zero, 384
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_11:                               #   in Loop: Header=BB0_12 Depth=1
	addi.d	$s2, $s2, 4
	addi.w	$s1, $s1, 1
	beq	$s2, $s3, .LBB0_14
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $a0, $s2
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	beq	$a2, $a1, .LBB0_11
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	move	$a1, $s1
	pcaddu18i	$ra, %call36(flag_SetFlagValue)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	b	.LBB0_11
.LBB0_14:                               # %vector.memcheck
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	sub.d	$a1, $a0, $a3
	ori	$a0, $zero, 32
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	bgeu	$a1, $a0, .LBB0_17
# %bb.15:                               # %flag_TransferSetFlags.exit.preheader
	lu12i.w	$a0, -4
	ori	$a0, $a0, 384
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_16:                               # %flag_TransferSetFlags.exit
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $a3, $a0
	ldx.w	$a1, $a1, $a4
	add.d	$a2, $a5, $a0
	addi.d	$a0, $a0, 4
	stptr.w	$a1, $a2, 16000
	bnez	$a0, .LBB0_16
	b	.LBB0_19
.LBB0_17:                               # %vector.body710.preheader
	lu12i.w	$a0, -4
	ori	$a0, $a0, 384
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_18:                               # %vector.body710
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $a3, $a0
	vldx	$vr0, $a1, $a2
	vldx	$vr1, $a1, $s6
	add.d	$a1, $a4, $a0
	vstx	$vr0, $a1, $a2
	addi.d	$a0, $a0, 32
	vstx	$vr1, $a1, $s6
	bnez	$a0, .LBB0_18
.LBB0_19:                               # %symbol_TransferPrecedence.exit
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $s1, 8
	bnez	$a0, .LBB0_23
# %bb.20:                               # %symbol_TransferPrecedence.exit
	ld.d	$a0, $sp, 448
	bnez	$a0, .LBB0_23
# %bb.21:                               # %symbol_TransferPrecedence.exit
	ld.d	$a0, $sp, 440
	bnez	$a0, .LBB0_23
# %bb.22:                               # %symbol_TransferPrecedence.exit
	ld.d	$a0, $sp, 456
	beqz	$a0, .LBB0_89
.LBB0_23:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cnf_Init)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 8
	beqz	$a0, .LBB0_25
# %bb.24:
	ori	$a1, $zero, 9
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(flag_SetFlagValue)
	jirl	$ra, $ra, 0
.LBB0_25:
	ld.w	$a0, $s1, 36
	beqz	$a0, .LBB0_28
# %bb.26:
	pcaddu18i	$ra, %call36(sharing_IndexCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 88
	ld.w	$a0, $s1, 36
	beqz	$a0, .LBB0_28
# %bb.27:
	pcaddu18i	$ra, %call36(hsh_Create)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(hsh_Create)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$s2, $sp, 440
	bnez	$s2, .LBB0_29
	b	.LBB0_31
.LBB0_28:
	st.d	$zero, $sp, 208                 # 8-byte Folded Spill
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
	ld.d	$s2, $sp, 440
	beqz	$s2, .LBB0_31
.LBB0_29:                               # %.lr.ph.preheader
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s3, $a0, %got_pc_lo12(fol_NOT)
	.p2align	4, , 16
.LBB0_30:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s5, $s2, 8
	ld.w	$s1, $s3, 0
	ld.d	$s6, $s5, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s6, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 0
	ld.d	$s2, $s2, 0
	bnez	$s2, .LBB0_30
.LBB0_31:                               # %._crit_edge
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(clock_StopPassedTime)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $s1, %pc_lo12(top_InputFile)
	beqz	$a1, .LBB0_34
# %bb.32:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(misc_CloseFile)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, %pc_lo12(top_RemoveFileOptId)
	pcaddu18i	$ra, %call36(opts_IsSet)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_34
# %bb.33:
	ld.d	$a0, $s1, %pc_lo12(top_InputFile)
	pcaddu18i	$ra, %call36(remove)
	jirl	$ra, $ra, 0
.LBB0_34:
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(clock_StartCounter)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 456
	ld.d	$s1, $sp, 448
	ld.d	$s5, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 224                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_40
# %bb.35:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(dfg_DeleteFormulaPairList)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 432
	pcaddu18i	$ra, %call36(dfg_DeleteFormulaPairList)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440
	pcaddu18i	$ra, %call36(dfg_DeleteFormulaPairList)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 204
	beqz	$a0, .LBB0_39
# %bb.36:
	ld.d	$a1, $sp, 456
	move	$a0, $s5
	pcaddu18i	$ra, %call36(def_ExtractDefsFromClauselist)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(def_FlattenDefinitionsDestructive)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s5, 0
	beqz	$s1, .LBB0_39
# %bb.37:                               # %.lr.ph580.preheader
	ld.d	$a2, $sp, 456
	.p2align	4, , 16
.LBB0_38:                               # %.lr.ph580
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 8
	ori	$a3, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(def_ApplyDefToClauselist)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	st.d	$a0, $sp, 456
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB0_38
.LBB0_39:
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	move	$s7, $zero
	b	.LBB0_68
.LBB0_40:                               # %.preheader563
	beqz	$s1, .LBB0_47
# %bb.41:                               # %.lr.ph585
	move	$s3, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$s4, $a0, %pc_lo12(.L.str.8)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$s5, $a0, %pc_lo12(.L.str.9)
	b	.LBB0_43
	.p2align	4, , 16
.LBB0_42:                               #   in Loop: Header=BB0_43 Depth=1
	ld.d	$s1, $s1, 0
	addi.w	$s3, $s3, 1
	beqz	$s1, .LBB0_47
.LBB0_43:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 8
	ld.d	$a0, $a0, 8
	bnez	$a0, .LBB0_42
# %bb.44:                               #   in Loop: Header=BB0_43 Depth=1
	addi.d	$a0, $sp, 304
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 304
	pcaddu18i	$ra, %call36(string_StringCopy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, 8
	move	$a1, $a0
	st.d	$a0, $a2, 8
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 36
	beqz	$a0, .LBB0_42
# %bb.45:                               #   in Loop: Header=BB0_43 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 100
	beqz	$a0, .LBB0_42
# %bb.46:                               #   in Loop: Header=BB0_43 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fol_PrettyPrintDFG)
	jirl	$ra, $ra, 0
	b	.LBB0_42
.LBB0_47:                               # %.preheader562
	ld.d	$s5, $sp, 432
	beqz	$s5, .LBB0_60
# %bb.48:                               # %.lr.ph590
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$s1, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$s3, $a0, %pc_lo12(.L.str.11)
	move	$a0, $zero
	b	.LBB0_50
	.p2align	4, , 16
.LBB0_49:                               #   in Loop: Header=BB0_50 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 8
	st.d	$s2, $a0, 0
	ld.d	$s5, $s5, 0
	beqz	$s5, .LBB0_53
.LBB0_50:                               # =>This Inner Loop Header: Depth=1
	move	$s2, $a0
	addi.d	$a0, $sp, 304
	move	$a1, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 304
	pcaddu18i	$ra, %call36(string_StringCopy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 8
	move	$s4, $a0
	st.d	$a0, $a1, 8
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 36
	beqz	$a0, .LBB0_49
# %bb.51:                               #   in Loop: Header=BB0_50 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 100
	beqz	$a0, .LBB0_49
# %bb.52:                               #   in Loop: Header=BB0_50 Depth=1
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 8
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fol_PrettyPrintDFG)
	jirl	$ra, $ra, 0
	b	.LBB0_49
.LBB0_53:                               # %._crit_edge591
	move	$s7, $a0
	ld.d	$a1, $sp, 448
	ld.d	$a0, $sp, 432
	beqz	$a1, .LBB0_61
# %bb.54:
	ld.d	$s5, $sp, 264                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_63
# %bb.55:                               # %.preheader.i.preheader
	move	$a3, $a1
	.p2align	4, , 16
.LBB0_56:                               # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB0_56
# %bb.57:
	st.d	$a0, $a2, 0
	b	.LBB0_63
.LBB0_58:
	ld.d	$a1, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 7
	slt	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	add.d	$a0, $fp, $a0
	addi.d	$a0, $a0, -7
	pcalau12i	$a1, %pc_hi20(.L.str.46)
	addi.d	$a1, $a1, %pc_lo12(.L.str.46)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_87
# %bb.59:
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 12
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.4)
	addi.d	$a2, $a2, %pc_lo12(.L.str.4)
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	b	.LBB0_88
.LBB0_60:                               # %._crit_edge591.thread
	ld.d	$a1, $sp, 448
	move	$s7, $zero
	b	.LBB0_62
.LBB0_61:
	move	$a1, $a0
.LBB0_62:                               # %list_Nconc.exit
	ld.d	$s5, $sp, 264                   # 8-byte Folded Reload
.LBB0_63:                               # %list_Nconc.exit
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $s1, 204
	ld.d	$a4, $sp, 440
	st.d	$a1, $sp, 448
	beqz	$a0, .LBB0_65
# %bb.64:
	move	$a0, $s5
	move	$a2, $a4
	pcaddu18i	$ra, %call36(def_ExtractDefsFromTermlist)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $sp, 440
	move	$a2, $s1
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	move	$a3, $s2
	pcaddu18i	$ra, %call36(def_ApplyDefinitionToTermList)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 448
	move	$a4, $a0
	st.d	$a0, $sp, 440
	b	.LBB0_66
.LBB0_65:
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
.LBB0_66:
	st.d	$zero, $sp, 416
	addi.d	$a0, $sp, 416
	addi.d	$a2, $sp, 456
	addi.d	$a3, $sp, 424
	st.d	$a0, $sp, 0
	move	$a0, $a1
	move	$a1, $a4
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	move	$a6, $s1
	move	$a7, $s2
	pcaddu18i	$ra, %call36(cnf_Flotter)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 456
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$a0, $a1
	pcaddu18i	$ra, %call36(clause_ListSortWeighed)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(clause_CLAUSECOUNTER)
	ld.d	$a1, $a1, %got_pc_lo12(clause_CLAUSECOUNTER)
	st.d	$a0, $sp, 456
	ori	$a2, $zero, 1
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_68
	.p2align	4, , 16
.LBB0_67:                               # %.lr.ph595
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	ld.d	$a3, $a0, 8
	addi.d	$a4, $a2, 1
	st.w	$a4, $a1, 0
	st.w	$a2, $a3, 0
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB0_67
.LBB0_68:                               # %.loopexit
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(clock_StopPassedTime)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 7
	slt	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	addi.d	$a0, $a0, -7
	pcalau12i	$a1, %pc_hi20(.L.str.46)
	addi.d	$a1, $a1, %pc_lo12(.L.str.46)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_70
# %bb.69:
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 12
	beqz	$a0, .LBB0_84
.LBB0_70:
	ld.d	$s4, $sp, 456
	pcaddu18i	$ra, %call36(opts_Indicator)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 2
	bge	$s0, $a0, .LBB0_72
# %bb.71:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$s3, $a0, 0
	b	.LBB0_73
.LBB0_72:
	pcaddu18i	$ra, %call36(opts_Indicator)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $a0, $fp, 3
	ld.d	$a0, $a0, 8
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
	pcaddu18i	$ra, %call36(misc_OpenFile)
	jirl	$ra, $ra, 0
	move	$s3, $a0
.LBB0_73:
	pcaddu18i	$ra, %call36(dfg_ProblemDescription)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	addi.w	$s1, $a0, 35
	move	$a0, $s1
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcaddu18i	$ra, %call36(dfg_ProblemDescription)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	slli.d	$a0, $s5, 32
	ori	$a2, $zero, 0
	lu32i.d	$a2, -3
	add.d	$a0, $a0, $a2
	srai.d	$a2, $a0, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	vld	$vr0, $a0, 0
	add.d	$a1, $s0, $s1
	vst	$vr0, $a1, -38
	vld	$vr0, $a0, 16
	ld.w	$a0, $a0, 32
	vst	$vr0, $a1, -22
	st.w	$a0, $a1, -6
	pcaddu18i	$ra, %call36(dfg_ProblemName)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	pcaddu18i	$ra, %call36(dfg_ProblemAuthor)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	pcaddu18i	$ra, %call36(dfg_ProblemStatusString)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	move	$a0, $s3
	move	$a1, $s5
	move	$a2, $s6
	move	$a4, $s0
	move	$a5, $s4
	pcaddu18i	$ra, %call36(clause_FPrintCnfDFGProblem)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s2, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(clock_PrintTime)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(clock_PrintTime)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	ori	$a1, $zero, 26
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	beq	$s3, $a0, .LBB0_75
# %bb.74:
	pcaddu18i	$ra, %call36(opts_Indicator)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $a0, $fp, 3
	ld.d	$a1, $a0, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(misc_CloseFile)
	jirl	$ra, $ra, 0
.LBB0_75:
	ori	$a0, $zero, 1024
	ld.d	$s5, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 224                   # 8-byte Folded Reload
	bgeu	$s1, $a0, .LBB0_77
# %bb.76:
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	slli.d	$a1, $s1, 3
	ldx.d	$a2, $a0, $a1
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a3, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a4, $a2, 32
	ld.d	$a5, $a3, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a3, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s0, 0
	ldx.d	$a0, $a0, $a1
	st.d	$s0, $a0, 0
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	b	.LBB0_83
.LBB0_77:
	pcalau12i	$a0, %got_pc_hi20(memory_ALIGN)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ALIGN)
	pcalau12i	$a1, %got_pc_hi20(memory_OFFSET)
	ld.d	$a1, $a1, %got_pc_lo12(memory_OFFSET)
	ld.w	$a0, $a0, 0
	ld.wu	$a1, $a1, 0
	mod.wu	$a4, $s1, $a0
	sltui	$a5, $a4, 1
	sub.d	$a1, $s0, $a1
	ld.d	$a3, $a1, -16
	ld.d	$a2, $a1, -8
	sub.d	$a0, $a0, $a4
	masknez	$a0, $a0, $a5
	add.w	$a0, $a0, $s1
	beqz	$a3, .LBB0_86
# %bb.78:
	st.d	$a2, $a3, 8
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	beqz	$a2, .LBB0_80
.LBB0_79:
	ld.d	$a1, $a1, -16
	st.d	$a1, $a2, 0
.LBB0_80:
	pcalau12i	$a1, %got_pc_hi20(memory_MARKSIZE)
	ld.d	$a1, $a1, %got_pc_lo12(memory_MARKSIZE)
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a1, %got_pc_lo12(memory_FREEDBYTES)
	pcalau12i	$a1, %got_pc_hi20(memory_MAXMEM)
	ld.d	$a1, $a1, %got_pc_lo12(memory_MAXMEM)
	add.d	$a2, $a0, $a2
	ld.d	$a4, $a3, 0
	ld.d	$a0, $a1, 0
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a2, $a2, 16
	add.d	$a4, $a2, $a4
	st.d	$a4, $a3, 0
	bltz	$a0, .LBB0_82
# %bb.81:
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 0
.LBB0_82:
	addi.d	$a0, $s0, -16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_83:                               # %top_Flotter.exit
	ori	$a1, $zero, 7
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(flag_SetFlagValue)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(flag_SetFlagValue)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 27
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(flag_SetFlagValue)
	jirl	$ra, $ra, 0
.LBB0_84:
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $fp, 24
	pcaddu18i	$ra, %call36(memory_Restrict)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(red_WORKEDOFF)
	ld.d	$a0, $a0, %got_pc_lo12(red_WORKEDOFF)
	pcalau12i	$a1, %got_pc_hi20(red_ALL)
	ld.d	$a1, $a1, %got_pc_lo12(red_ALL)
	ld.w	$s7, $a0, 0
	ld.w	$a0, $fp, 8
	ld.w	$a1, $a1, 0
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	st.d	$s7, $sp, 248                   # 8-byte Folded Spill
	bnez	$a0, .LBB0_90
# %bb.85:
	ld.d	$fp, $sp, 456
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	st.d	$zero, $sp, 456
	b	.LBB0_162
.LBB0_86:
	pcalau12i	$a3, %got_pc_hi20(memory_BIGBLOCKS)
	ld.d	$a3, $a3, %got_pc_lo12(memory_BIGBLOCKS)
	st.d	$a2, $a3, 0
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	bnez	$a2, .LBB0_79
	b	.LBB0_80
.LBB0_87:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
.LBB0_88:
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(opts_PrintSPASSNames)
	jirl	$ra, $ra, 0
	b	.LBB0_535
.LBB0_89:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(misc_UserErrorReport)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(misc_Error)
	jirl	$ra, $ra, 0
.LBB0_90:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	move	$a1, $s2
	pcaddu18i	$ra, %call36(ia_GetNextRequest)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_503
# %bb.91:                               # %.preheader561
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$s3, $a0, 0
	move	$s1, $zero
	beqz	$s3, .LBB0_111
# %bb.92:                               # %.lr.ph600.preheader
	move	$s0, $zero
	ori	$s4, $zero, 1
	ori	$s6, $zero, 4
	lu12i.w	$a0, -361578
	ori	$a0, $a0, 283
	lu32i.d	$a0, -289263
	lu52i.d	$s7, $a0, 423
	ori	$s8, $zero, 29
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 272                  # 16-byte Folded Spill
	b	.LBB0_95
	.p2align	4, , 16
.LBB0_93:                               #   in Loop: Header=BB0_95 Depth=1
	move	$s1, $s0
.LBB0_94:                               # %list_Nconc.exit378
                                        #   in Loop: Header=BB0_95 Depth=1
	ld.d	$s3, $s3, 0
	move	$s0, $s1
	beqz	$s3, .LBB0_111
.LBB0_95:                               # %.lr.ph600
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_98 Depth 2
                                        #     Child Loop BB0_101 Depth 2
                                        #     Child Loop BB0_103 Depth 2
                                        #     Child Loop BB0_109 Depth 2
	ld.d	$fp, $s3, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a2, $a0, 1
	sltu	$a0, $s4, $a2
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	bgeu	$a2, $s6, .LBB0_97
# %bb.96:                               #   in Loop: Header=BB0_95 Depth=1
	move	$a3, $zero
	move	$a1, $zero
	b	.LBB0_100
	.p2align	4, , 16
.LBB0_97:                               # %vector.ph728
                                        #   in Loop: Header=BB0_95 Depth=1
	move	$a1, $a0
	bstrins.d	$a1, $zero, 1, 0
	addi.d	$a3, $fp, 2
	move	$a4, $a1
	vld	$vr1, $sp, 272                  # 16-byte Folded Reload
	vori.b	$vr0, $vr1, 0
	.p2align	4, , 16
.LBB0_98:                               # %vector.body729
                                        #   Parent Loop BB0_95 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a5, $a3, -2
	ld.h	$a6, $a3, 0
	vinsgr2vr.h	$vr2, $a5, 0
	vinsgr2vr.h	$vr3, $a6, 0
	vilvl.b	$vr2, $vr2, $vr2
	vilvl.h	$vr2, $vr2, $vr2
	vilvl.w	$vr2, $vr2, $vr2
	vslli.d	$vr2, $vr2, 56
	vsrai.d	$vr2, $vr2, 56
	vilvl.b	$vr3, $vr3, $vr3
	vilvl.h	$vr3, $vr3, $vr3
	vilvl.w	$vr3, $vr3, $vr3
	vslli.d	$vr3, $vr3, 56
	vsrai.d	$vr3, $vr3, 56
	vadd.d	$vr0, $vr0, $vr2
	vadd.d	$vr1, $vr1, $vr3
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 4
	bnez	$a4, .LBB0_98
# %bb.99:                               # %middle.block735
                                        #   in Loop: Header=BB0_95 Depth=1
	vadd.d	$vr0, $vr1, $vr0
	vreplvei.d	$vr1, $vr0, 1
	vadd.d	$vr0, $vr0, $vr1
	vpickve2gr.d	$a3, $vr0, 0
	beq	$a2, $a1, .LBB0_102
.LBB0_100:                              # %scalar.ph727.preheader
                                        #   in Loop: Header=BB0_95 Depth=1
	sub.d	$a0, $a0, $a1
	add.d	$a1, $fp, $a1
	.p2align	4, , 16
.LBB0_101:                              # %scalar.ph727
                                        #   Parent Loop BB0_95 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a2, $a1, 0
	add.d	$a3, $a3, $a2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB0_101
.LBB0_102:                              # %hsh_StringHashKey.exit.i
                                        #   in Loop: Header=BB0_95 Depth=1
	mulh.du	$a0, $a3, $s7
	sub.d	$a1, $a3, $a0
	srli.d	$a1, $a1, 1
	add.d	$a0, $a1, $a0
	srli.d	$a0, $a0, 4
	mul.d	$a0, $a0, $s8
	sub.d	$a0, $a3, $a0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$s1, $a0, $a1, 3
	.p2align	4, , 16
.LBB0_103:                              #   Parent Loop BB0_95 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB0_106
# %bb.104:                              #   in Loop: Header=BB0_103 Depth=2
	ld.d	$s2, $s1, 8
	ld.d	$a0, $s2, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_103
# %bb.105:                              #   in Loop: Header=BB0_95 Depth=1
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(list_PointerDeleteDuplicates)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_107
	b	.LBB0_93
	.p2align	4, , 16
.LBB0_106:                              #   in Loop: Header=BB0_95 Depth=1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(list_PointerDeleteDuplicates)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_93
.LBB0_107:                              #   in Loop: Header=BB0_95 Depth=1
	move	$s1, $a0
	beqz	$s0, .LBB0_94
# %bb.108:                              # %.preheader.i373.preheader
                                        #   in Loop: Header=BB0_95 Depth=1
	move	$a1, $s1
	.p2align	4, , 16
.LBB0_109:                              # %.preheader.i373
                                        #   Parent Loop BB0_95 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB0_109
# %bb.110:                              #   in Loop: Header=BB0_95 Depth=1
	st.d	$s0, $a0, 0
	b	.LBB0_94
.LBB0_111:                              # %.preheader560
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	beqz	$s8, .LBB0_131
# %bb.112:
	ori	$s3, $zero, 1
	ori	$s4, $zero, 4
	lu12i.w	$a0, -361578
	ori	$a0, $a0, 283
	lu32i.d	$a0, -289263
	lu52i.d	$s6, $a0, 423
	ori	$s7, $zero, 29
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 272                  # 16-byte Folded Spill
	b	.LBB0_115
	.p2align	4, , 16
.LBB0_113:                              #   in Loop: Header=BB0_115 Depth=1
	move	$a2, $s1
.LBB0_114:                              # %list_Nconc.exit400
                                        #   in Loop: Header=BB0_115 Depth=1
	ld.d	$s8, $s8, 0
	move	$s1, $a2
	beqz	$s8, .LBB0_132
.LBB0_115:                              # %.lr.ph605
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_118 Depth 2
                                        #     Child Loop BB0_121 Depth 2
                                        #     Child Loop BB0_123 Depth 2
                                        #     Child Loop BB0_129 Depth 2
	ld.d	$fp, $s8, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a2, $a0, 1
	sltu	$a0, $s3, $a2
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	bgeu	$a2, $s4, .LBB0_117
# %bb.116:                              #   in Loop: Header=BB0_115 Depth=1
	move	$a3, $zero
	move	$a1, $zero
	b	.LBB0_120
	.p2align	4, , 16
.LBB0_117:                              # %vector.ph739
                                        #   in Loop: Header=BB0_115 Depth=1
	move	$a1, $a0
	bstrins.d	$a1, $zero, 1, 0
	addi.d	$a3, $fp, 2
	move	$a4, $a1
	vld	$vr1, $sp, 272                  # 16-byte Folded Reload
	vori.b	$vr0, $vr1, 0
	.p2align	4, , 16
.LBB0_118:                              # %vector.body742
                                        #   Parent Loop BB0_115 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a5, $a3, -2
	ld.h	$a6, $a3, 0
	vinsgr2vr.h	$vr2, $a5, 0
	vinsgr2vr.h	$vr3, $a6, 0
	vilvl.b	$vr2, $vr2, $vr2
	vilvl.h	$vr2, $vr2, $vr2
	vilvl.w	$vr2, $vr2, $vr2
	vslli.d	$vr2, $vr2, 56
	vsrai.d	$vr2, $vr2, 56
	vilvl.b	$vr3, $vr3, $vr3
	vilvl.h	$vr3, $vr3, $vr3
	vilvl.w	$vr3, $vr3, $vr3
	vslli.d	$vr3, $vr3, 56
	vsrai.d	$vr3, $vr3, 56
	vadd.d	$vr0, $vr0, $vr2
	vadd.d	$vr1, $vr1, $vr3
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 4
	bnez	$a4, .LBB0_118
# %bb.119:                              # %middle.block749
                                        #   in Loop: Header=BB0_115 Depth=1
	vadd.d	$vr0, $vr1, $vr0
	vreplvei.d	$vr1, $vr0, 1
	vadd.d	$vr0, $vr0, $vr1
	vpickve2gr.d	$a3, $vr0, 0
	beq	$a2, $a1, .LBB0_122
.LBB0_120:                              # %scalar.ph737.preheader
                                        #   in Loop: Header=BB0_115 Depth=1
	sub.d	$a0, $a0, $a1
	add.d	$a1, $fp, $a1
	.p2align	4, , 16
.LBB0_121:                              # %scalar.ph737
                                        #   Parent Loop BB0_115 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a2, $a1, 0
	add.d	$a3, $a3, $a2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB0_121
.LBB0_122:                              # %hsh_StringHashKey.exit.i383
                                        #   in Loop: Header=BB0_115 Depth=1
	mulh.du	$a0, $a3, $s6
	sub.d	$a1, $a3, $a0
	srli.d	$a1, $a1, 1
	add.d	$a0, $a1, $a0
	srli.d	$a0, $a0, 4
	mul.d	$a0, $a0, $s7
	sub.d	$a0, $a3, $a0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$s0, $a0, $a1, 3
	.p2align	4, , 16
.LBB0_123:                              #   Parent Loop BB0_115 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $s0, 0
	beqz	$s0, .LBB0_126
# %bb.124:                              #   in Loop: Header=BB0_123 Depth=2
	ld.d	$s2, $s0, 8
	ld.d	$a0, $s2, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_123
# %bb.125:                              #   in Loop: Header=BB0_115 Depth=1
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(list_PointerDeleteDuplicates)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_127
	b	.LBB0_113
	.p2align	4, , 16
.LBB0_126:                              #   in Loop: Header=BB0_115 Depth=1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(list_PointerDeleteDuplicates)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_113
.LBB0_127:                              #   in Loop: Header=BB0_115 Depth=1
	move	$a2, $a0
	beqz	$s1, .LBB0_114
# %bb.128:                              # %.preheader.i395.preheader
                                        #   in Loop: Header=BB0_115 Depth=1
	move	$a1, $a2
	.p2align	4, , 16
.LBB0_129:                              # %.preheader.i395
                                        #   Parent Loop BB0_115 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB0_129
# %bb.130:                              #   in Loop: Header=BB0_115 Depth=1
	st.d	$s1, $a0, 0
	b	.LBB0_114
.LBB0_131:
	move	$a2, $s1
.LBB0_132:                              # %.preheader
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	beqz	$a2, .LBB0_156
# %bb.133:
	lu12i.w	$a0, -361578
	ori	$a0, $a0, 283
	lu32i.d	$a0, -289263
	lu52i.d	$fp, $a0, 423
	ori	$s0, $zero, 29
	pcalau12i	$a0, %pc_hi20(cnf_LabelEqual)
	addi.d	$s1, $a0, %pc_lo12(cnf_LabelEqual)
	move	$s7, $a2
	ld.d	$s6, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 256                   # 8-byte Folded Reload
	b	.LBB0_136
	.p2align	4, , 16
.LBB0_134:                              #   in Loop: Header=BB0_136 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$s4, $a0, 8
	st.d	$s3, $a0, 0
	ld.d	$s3, $s2, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s6, $a0, 8
	ld.d	$s6, $sp, 224                   # 8-byte Folded Reload
	st.d	$s3, $a0, 0
	st.d	$a0, $s2, 0
.LBB0_135:                              # %hsh_PutList.exit
                                        #   in Loop: Header=BB0_136 Depth=1
	ld.d	$s7, $s7, 0
	beqz	$s7, .LBB0_151
.LBB0_136:                              # %.lr.ph609
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_137 Depth 2
                                        #     Child Loop BB0_142 Depth 2
                                        #     Child Loop BB0_147 Depth 2
	ld.d	$s4, $s7, 8
	mulh.du	$a0, $s4, $fp
	sub.d	$a1, $s4, $a0
	srli.d	$a1, $a1, 1
	add.d	$a0, $a1, $a0
	srli.d	$a0, $a0, 4
	mul.d	$a0, $a0, $s0
	sub.d	$a0, $s4, $a0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 3
	.p2align	4, , 16
.LBB0_137:                              #   Parent Loop BB0_136 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB0_140
# %bb.138:                              #   in Loop: Header=BB0_137 Depth=2
	ld.d	$a1, $a0, 8
	ld.d	$a2, $a1, 8
	bne	$a2, $s4, .LBB0_137
# %bb.139:                              #   in Loop: Header=BB0_136 Depth=1
	ld.d	$a0, $a1, 0
	b	.LBB0_141
	.p2align	4, , 16
.LBB0_140:                              #   in Loop: Header=BB0_136 Depth=1
	move	$a0, $zero
.LBB0_141:                              # %hsh_Get.exit
                                        #   in Loop: Header=BB0_136 Depth=1
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(list_DeleteDuplicates)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	mulh.du	$a0, $a0, $fp
	sub.d	$a1, $s4, $a0
	srli.d	$a1, $a1, 1
	add.d	$a0, $a1, $a0
	srli.d	$a0, $a0, 4
	mul.d	$a0, $a0, $s0
	sub.d	$a0, $s4, $a0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$s2, $a0, $a1, 3
	st.d	$s4, $s7, 8
	move	$a1, $s2
	.p2align	4, , 16
.LBB0_142:                              #   Parent Loop BB0_136 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB0_134
# %bb.143:                              #   in Loop: Header=BB0_142 Depth=2
	ld.d	$a0, $a1, 8
	ld.d	$a2, $a0, 8
	bne	$a2, $s4, .LBB0_142
# %bb.144:                              #   in Loop: Header=BB0_136 Depth=1
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB0_150
# %bb.145:                              #   in Loop: Header=BB0_136 Depth=1
	beqz	$s3, .LBB0_149
# %bb.146:                              # %.preheader.i.i.preheader
                                        #   in Loop: Header=BB0_136 Depth=1
	move	$a3, $a1
	.p2align	4, , 16
.LBB0_147:                              # %.preheader.i.i
                                        #   Parent Loop BB0_136 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB0_147
# %bb.148:                              #   in Loop: Header=BB0_136 Depth=1
	st.d	$s3, $a2, 0
.LBB0_149:                              # %list_Nconc.exit.i
                                        #   in Loop: Header=BB0_136 Depth=1
	st.d	$a1, $a0, 0
	b	.LBB0_135
.LBB0_150:                              #   in Loop: Header=BB0_136 Depth=1
	st.d	$s3, $a0, 0
	b	.LBB0_135
.LBB0_151:                              # %._crit_edge610
	ld.d	$a1, $s8, 8
	addi.d	$a2, $sp, 416
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cnf_QueryFlotter)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	masknez	$a2, $a0, $a1
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	ld.d	$s7, $sp, 248                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_155
# %bb.152:
	move	$a1, $a0
	.p2align	4, , 16
.LBB0_153:                              # %.preheader.i410
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB0_153
# %bb.154:
	st.d	$a3, $a2, 0
	move	$a1, $a0
.LBB0_155:                              # %list_Nconc.exit415
	move	$s0, $a1
	ld.d	$fp, $s8, 0
	bnez	$fp, .LBB0_157
	b	.LBB0_161
.LBB0_156:                              # %._crit_edge610.thread
	ld.d	$s8, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $s8, 8
	addi.d	$a2, $sp, 416
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cnf_QueryFlotter)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$s6, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 248                   # 8-byte Folded Reload
	move	$s0, $a1
	ld.d	$fp, $s8, 0
	beqz	$fp, .LBB0_161
	.p2align	4, , 16
.LBB0_157:                              # %.lr.ph614
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(string_StringFree)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	bnez	$fp, .LBB0_157
# %bb.158:                              # %._crit_edge615
	ld.d	$a0, $s8, 0
	beqz	$a0, .LBB0_161
# %bb.159:                              # %.lr.ph.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB0_160:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB0_160
.LBB0_161:                              # %list_Delete.exit
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $a0, 128
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a3, $a1, 32
	ld.d	$a4, $a2, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s8, 0
	ld.d	$a0, $a0, 128
	st.d	$s8, $a0, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(clock_InitCounter)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(clock_StartCounter)
	jirl	$ra, $ra, 0
	move	$fp, $s0
.LBB0_162:
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 20
	st.w	$a0, $s5, 136
	ld.w	$a0, $a1, 44
	st.w	$a0, $s5, 148
	ld.d	$s0, $sp, 408
	st.d	$zero, $sp, 304
	ld.d	$s4, $s5, 112
	ld.d	$s1, $s5, 104
	st.w	$zero, $s5, 152
	move	$a0, $s6
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	st.w	$a0, $sp, 300
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(clock_InitCounter)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(clock_InitCounter)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(clock_InitCounter)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	st.d	$fp, $sp, 136                   # 8-byte Folded Spill
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ana_AnalyzeProblem)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	beqz	$a0, .LBB0_167
# %bb.163:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	move	$a0, $s5
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(prfs_InstallFiniteMonadicPredicates)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(ana_AutoConfiguration)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	move	$s3, $zero
	move	$fp, $zero
	ori	$s2, $zero, 384
	b	.LBB0_165
	.p2align	4, , 16
.LBB0_164:                              #   in Loop: Header=BB0_165 Depth=1
	addi.d	$fp, $fp, 4
	addi.w	$s3, $s3, 1
	beq	$fp, $s2, .LBB0_167
.LBB0_165:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $a0, $fp
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	beq	$a2, $a1, .LBB0_164
# %bb.166:                              #   in Loop: Header=BB0_165 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(flag_SetFlagValue)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	b	.LBB0_164
.LBB0_167:                              # %flag_TransferSetFlags.exit.i
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(symbol_RearrangePrecedence)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_170
# %bb.168:                              # %.lr.ph.i423.preheader
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_169:                              # %.lr.ph.i423
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $fp, 8
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(clause_OrientEqualities)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_Normalize)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(clause_SetMaxLitFlags)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(clause_ComputeWeight)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_UpdateMaxVar)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	bnez	$fp, .LBB0_169
.LBB0_170:                              # %._crit_edge.i
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(ana_AnalyzeSortStructure)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	beqz	$a0, .LBB0_175
# %bb.171:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(ana_ExploitSortAnalysis)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	move	$s0, $zero
	move	$fp, $zero
	ori	$s2, $zero, 384
	b	.LBB0_173
	.p2align	4, , 16
.LBB0_172:                              #   in Loop: Header=BB0_173 Depth=1
	addi.d	$fp, $fp, 4
	addi.w	$s0, $s0, 1
	beq	$fp, $s2, .LBB0_175
.LBB0_173:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $a0, $fp
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	beq	$a2, $a1, .LBB0_172
# %bb.174:                              #   in Loop: Header=BB0_173 Depth=1
	move	$a0, $s4
	move	$a1, $s0
	pcaddu18i	$ra, %call36(flag_SetFlagValue)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	b	.LBB0_172
.LBB0_175:                              # %flag_TransferSetFlags.exit258.i
	ld.w	$a0, $s4, 20
	st.w	$a0, $s5, 136
	ld.w	$a0, $s4, 196
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ld.w	$a0, $s4, 192
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.w	$a0, $s4, 108
	ld.w	$a1, $s4, 200
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.w	$a1, $sp, 300
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_177
# %bb.176:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a0, $a0, %pc_lo12(.L.str.55)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_ListPrint)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(ana_Print)
	jirl	$ra, $ra, 0
.LBB0_177:
	ld.w	$a0, $s4, 160
	beqz	$a0, .LBB0_182
# %bb.178:
	beqz	$fp, .LBB0_185
# %bb.179:                              # %.lr.ph404.i.preheader
	addi.d	$a0, $a0, -2
	sltui	$s0, $a0, 1
	.p2align	4, , 16
.LBB0_180:                              # %.lr.ph404.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 8
	move	$a1, $s0
	move	$a2, $s4
	move	$a3, $s1
	pcaddu18i	$ra, %call36(clause_SetSortConstraint)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	bnez	$fp, .LBB0_180
# %bb.181:                              # %.loopexit397.thread.i
	ld.w	$a0, $s4, 156
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_186
	b	.LBB0_184
.LBB0_182:                              # %.loopexit397.i
	ld.w	$a0, $s4, 156
	bnez	$a0, .LBB0_186
# %bb.183:                              # %.preheader395.i
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$fp, $a0
	beqz	$a0, .LBB0_189
	.p2align	4, , 16
.LBB0_184:                              # %.lr.ph407.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(prfs_InsertUsableClause)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	bnez	$fp, .LBB0_184
	b	.LBB0_189
.LBB0_185:                              # %.loopexit397.thread440.i
	ld.w	$a0, $s4, 156
	beqz	$a0, .LBB0_189
.LBB0_186:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(clock_StartCounter)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(red_ReduceInput)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $sp, 304
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(clock_StopAddPassedTime)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB0_189
# %bb.187:
	ld.w	$a0, $s4, 164
	beqz	$a0, .LBB0_189
# %bb.188:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(red_SatInput)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 304
.LBB0_189:                              # %.loopexit396.i
	pcalau12i	$a0, %got_pc_hi20(ana_SORTRES)
	ld.d	$a0, $a0, %got_pc_lo12(ana_SORTRES)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_421
.LBB0_190:
	ld.w	$a0, $s4, 356
	beqz	$a0, .LBB0_192
# %bb.191:
	ld.d	$a0, $s5, 56
	move	$a1, $s4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(sort_ApproxStaticSortTheory)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 64
.LBB0_192:
	pcaddu18i	$ra, %call36(sort_TheoryCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 80
.LBB0_193:
	ld.d	$fp, $s5, 56
	move	$a0, $zero
	beqz	$fp, .LBB0_198
	.p2align	4, , 16
.LBB0_194:                              # %.lr.ph412.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $fp, 8
	ld.d	$a1, $s5, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_MakeUnshared)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(clause_FixLiteralOrder)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 48
	ld.d	$a2, $s5, 112
	ld.d	$a3, $s5, 104
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_InsertIntoSharing)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	bnez	$fp, .LBB0_194
# %bb.195:                              # %.preheader394.i
	ld.d	$fp, $s5, 56
	move	$a0, $zero
	beqz	$fp, .LBB0_198
	.p2align	4, , 16
.LBB0_196:                              # %.lr.ph416.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(clause_CountSymbols)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	bnez	$fp, .LBB0_196
# %bb.197:                              # %._crit_edge417.loopexit.i
	ld.d	$a0, $s5, 56
.LBB0_198:                              # %._crit_edge417.i
	pcalau12i	$a1, %pc_hi20(clause_CompareAbstractLEQ)
	addi.d	$a1, $a1, %pc_lo12(clause_CompareAbstractLEQ)
	pcaddu18i	$ra, %call36(list_Sort)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 56
	ld.w	$a1, $s4, 16
	beqz	$a1, .LBB0_206
# %bb.199:
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_206
# %bb.200:                              # %.lr.ph421.i.preheader
	move	$s0, $a0
	move	$fp, $a0
	b	.LBB0_202
	.p2align	4, , 16
.LBB0_201:                              #   in Loop: Header=BB0_202 Depth=1
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB0_204
.LBB0_202:                              # %.lr.ph421.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 8
	ld.bu	$a0, $a1, 48
	andi	$a0, $a0, 8
	bnez	$a0, .LBB0_201
# %bb.203:                              #   in Loop: Header=BB0_202 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(prfs_MoveUsableWorkedOff)
	jirl	$ra, $ra, 0
	b	.LBB0_201
.LBB0_204:                              # %.lr.ph.i.i.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB0_205:                              # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s0, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s0, 0
	ld.d	$a2, $a0, 128
	st.d	$s0, $a2, 0
	move	$s0, $a5
	bnez	$a5, .LBB0_205
.LBB0_206:                              # %list_Delete.exit.i
	ld.w	$a0, $s4, 108
	beqz	$a0, .LBB0_208
# %bb.207:
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 40
	pcaddu18i	$ra, %call36(clause_ListPrint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 56
	pcaddu18i	$ra, %call36(clause_ListPrint)
	jirl	$ra, $ra, 0
.LBB0_208:
	move	$s1, $zero
	st.d	$zero, $sp, 200                 # 8-byte Folded Spill
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	addi.d	$a0, $a3, -2
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.65)
	addi.d	$a1, $a1, %pc_lo12(.L.str.65)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.64)
	addi.d	$a2, $a2, %pc_lo12(.L.str.64)
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	sltu	$a1, $zero, $a3
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a0, $a0, %pc_lo12(.L.str.63)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 256                   # 8-byte Folded Spill
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
.LBB0_209:                              # %.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_211 Depth 2
                                        #       Child Loop BB0_220 Depth 3
                                        #         Child Loop BB0_235 Depth 4
                                        #         Child Loop BB0_250 Depth 4
                                        #         Child Loop BB0_240 Depth 4
                                        #         Child Loop BB0_245 Depth 4
                                        #         Child Loop BB0_350 Depth 4
                                        #         Child Loop BB0_312 Depth 4
                                        #         Child Loop BB0_334 Depth 4
                                        #         Child Loop BB0_365 Depth 4
                                        #         Child Loop BB0_369 Depth 4
                                        #         Child Loop BB0_258 Depth 4
                                        #           Child Loop BB0_260 Depth 5
                                        #           Child Loop BB0_296 Depth 5
                                        #           Child Loop BB0_271 Depth 5
                                        #           Child Loop BB0_280 Depth 5
                                        #         Child Loop BB0_327 Depth 4
                                        #         Child Loop BB0_382 Depth 4
                                        #         Child Loop BB0_393 Depth 4
                                        #         Child Loop BB0_403 Depth 4
                                        #         Child Loop BB0_408 Depth 4
                                        #         Child Loop BB0_412 Depth 4
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	sltu	$a0, $zero, $a0
	and	$a0, $a0, $a1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	b	.LBB0_211
	.p2align	4, , 16
.LBB0_210:                              # %.critedge4.i
                                        #   in Loop: Header=BB0_211 Depth=2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_418
.LBB0_211:                              #   Parent Loop BB0_209 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_220 Depth 3
                                        #         Child Loop BB0_235 Depth 4
                                        #         Child Loop BB0_250 Depth 4
                                        #         Child Loop BB0_240 Depth 4
                                        #         Child Loop BB0_245 Depth 4
                                        #         Child Loop BB0_350 Depth 4
                                        #         Child Loop BB0_312 Depth 4
                                        #         Child Loop BB0_334 Depth 4
                                        #         Child Loop BB0_365 Depth 4
                                        #         Child Loop BB0_369 Depth 4
                                        #         Child Loop BB0_258 Depth 4
                                        #           Child Loop BB0_260 Depth 5
                                        #           Child Loop BB0_296 Depth 5
                                        #           Child Loop BB0_271 Depth 5
                                        #           Child Loop BB0_280 Depth 5
                                        #         Child Loop BB0_327 Depth 4
                                        #         Child Loop BB0_382 Depth 4
                                        #         Child Loop BB0_393 Depth 4
                                        #         Child Loop BB0_403 Depth 4
                                        #         Child Loop BB0_408 Depth 4
                                        #         Child Loop BB0_412 Depth 4
	ld.d	$a0, $sp, 304
	beqz	$a0, .LBB0_213
# %bb.212:                              #   in Loop: Header=BB0_211 Depth=2
	ld.d	$a1, $s5, 120
	beqz	$a1, .LBB0_424
.LBB0_213:                              #   in Loop: Header=BB0_211 Depth=2
	ld.w	$a1, $s5, 148
	beqz	$a1, .LBB0_424
# %bb.214:                              #   in Loop: Header=BB0_211 Depth=2
	ld.w	$a1, $sp, 300
	bne	$a1, $s6, .LBB0_216
# %bb.215:                              #   in Loop: Header=BB0_211 Depth=2
	ld.d	$a1, $s5, 56
	beqz	$a1, .LBB0_424
.LBB0_216:                              #   in Loop: Header=BB0_211 Depth=2
	ld.w	$a0, $s4, 28
	beq	$a0, $s6, .LBB0_218
# %bb.217:                              #   in Loop: Header=BB0_211 Depth=2
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fs0, $fa0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(clock_GetSeconds)
	jirl	$ra, $ra, 0
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB0_423
.LBB0_218:                              # %.critedge2.i
                                        #   in Loop: Header=BB0_211 Depth=2
	st.d	$zero, $sp, 464
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	st.w	$a0, $sp, 300
	b	.LBB0_220
	.p2align	4, , 16
.LBB0_219:                              #   in Loop: Header=BB0_220 Depth=3
	ld.w	$a0, $s5, 148
	addi.d	$a0, $a0, -1
	st.w	$a0, $s5, 148
.LBB0_220:                              #   Parent Loop BB0_209 Depth=1
                                        #     Parent Loop BB0_211 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_235 Depth 4
                                        #         Child Loop BB0_250 Depth 4
                                        #         Child Loop BB0_240 Depth 4
                                        #         Child Loop BB0_245 Depth 4
                                        #         Child Loop BB0_350 Depth 4
                                        #         Child Loop BB0_312 Depth 4
                                        #         Child Loop BB0_334 Depth 4
                                        #         Child Loop BB0_365 Depth 4
                                        #         Child Loop BB0_369 Depth 4
                                        #         Child Loop BB0_258 Depth 4
                                        #           Child Loop BB0_260 Depth 5
                                        #           Child Loop BB0_296 Depth 5
                                        #           Child Loop BB0_271 Depth 5
                                        #           Child Loop BB0_280 Depth 5
                                        #         Child Loop BB0_327 Depth 4
                                        #         Child Loop BB0_382 Depth 4
                                        #         Child Loop BB0_393 Depth 4
                                        #         Child Loop BB0_403 Depth 4
                                        #         Child Loop BB0_408 Depth 4
                                        #         Child Loop BB0_412 Depth 4
	ld.d	$a0, $sp, 304
	beqz	$a0, .LBB0_222
# %bb.221:                              #   in Loop: Header=BB0_220 Depth=3
	ld.d	$a1, $s5, 120
	beqz	$a1, .LBB0_210
.LBB0_222:                              #   in Loop: Header=BB0_220 Depth=3
	ld.w	$a1, $s5, 148
	beqz	$a1, .LBB0_210
# %bb.223:                              #   in Loop: Header=BB0_220 Depth=3
	ld.d	$a1, $s5, 56
	or	$a1, $a0, $a1
	beqz	$a1, .LBB0_210
# %bb.224:                              #   in Loop: Header=BB0_220 Depth=3
	ld.w	$a1, $s4, 28
	beq	$a1, $s6, .LBB0_227
# %bb.225:                              #   in Loop: Header=BB0_220 Depth=3
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fs0, $fa0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(clock_GetSeconds)
	jirl	$ra, $ra, 0
	fcmp.cule.s	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB0_210
# %bb.226:                              # %..critedge6_crit_edge.i
                                        #   in Loop: Header=BB0_220 Depth=3
	ld.d	$a0, $sp, 304
.LBB0_227:                              # %.critedge6.i
                                        #   in Loop: Header=BB0_220 Depth=3
	beqz	$a0, .LBB0_237
# %bb.228:                              #   in Loop: Header=BB0_220 Depth=3
	move	$a0, $zero
	pcaddu18i	$ra, %call36(clock_StartCounter)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 464
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(split_Backtrack)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(clock_StopAddPassedTime)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 152
	ld.d	$a2, $s5, 120
	ld.d	$s3, $sp, 304
	add.d	$a0, $a1, $a0
	st.w	$a0, $s5, 152
	beqz	$a2, .LBB0_247
# %bb.229:                              # %.preheader393.i
                                        #   in Loop: Header=BB0_220 Depth=3
	bnez	$s3, .LBB0_235
.LBB0_230:                              # %._crit_edge425.i
                                        #   in Loop: Header=BB0_220 Depth=3
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(prfs_InsertDocProofClause)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 36
	beqz	$a0, .LBB0_232
# %bb.231:                              #   in Loop: Header=BB0_220 Depth=3
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 8
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
.LBB0_232:                              #   in Loop: Header=BB0_220 Depth=3
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 40
	beqz	$a0, .LBB0_252
# %bb.233:                              #   in Loop: Header=BB0_220 Depth=3
	ld.w	$a1, $s5, 128
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB0_252
	.p2align	4, , 16
.LBB0_234:                              #   in Loop: Header=BB0_235 Depth=4
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $a0, 128
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a3, $a1, 32
	ld.d	$a4, $a2, 0
	ld.d	$a5, $s3, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s3, 0
	ld.d	$a0, $a0, 128
	st.d	$s3, $a0, 0
	st.d	$a5, $sp, 304
	move	$s3, $a5
	beqz	$a5, .LBB0_230
.LBB0_235:                              # %.lr.ph424.i
                                        #   Parent Loop BB0_209 Depth=1
                                        #     Parent Loop BB0_211 Depth=2
                                        #       Parent Loop BB0_220 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $s3, 8
	beq	$a0, $s1, .LBB0_234
# %bb.236:                              #   in Loop: Header=BB0_235 Depth=4
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 304
	b	.LBB0_234
	.p2align	4, , 16
.LBB0_237:                              #   in Loop: Header=BB0_220 Depth=3
	ld.w	$a0, $s4, 176
	beqz	$a0, .LBB0_254
# %bb.238:                              #   in Loop: Header=BB0_220 Depth=3
	ld.d	$s2, $s5, 112
	ld.d	$s0, $sp, 464
	ld.d	$a0, $s5, 104
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	beqz	$s0, .LBB0_242
# %bb.239:                              #   in Loop: Header=BB0_220 Depth=3
	ld.d	$a0, $s5, 56
	beqz	$a0, .LBB0_242
	.p2align	4, , 16
.LBB0_240:                              # %.lr.ph.i.i.i
                                        #   Parent Loop BB0_209 Depth=1
                                        #     Parent Loop BB0_211 Depth=2
                                        #       Parent Loop BB0_220 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $a0, 8
	beq	$s0, $a1, .LBB0_329
# %bb.241:                              #   in Loop: Header=BB0_240 Depth=4
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB0_240
.LBB0_242:                              # %list_PointerMember.exit.thread122.i.i
                                        #   in Loop: Header=BB0_220 Depth=3
	ld.w	$a0, $s5, 136
	st.d	$zero, $sp, 464
	beqz	$a0, .LBB0_306
# %bb.243:                              #   in Loop: Header=BB0_220 Depth=3
	addi.d	$a1, $sp, 476
	move	$a0, $s5
	pcaddu18i	$ra, %call36(top_GetPowerfulSplitClause)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_306
# %bb.244:                              #   in Loop: Header=BB0_220 Depth=3
	move	$s0, $a0
	ld.w	$a0, $sp, 476
	ld.d	$a1, $s0, 56
	slli.d	$a0, $a0, 3
	ldx.d	$fp, $a1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$fp, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s5
	move	$a1, $s0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(prfs_DoSplitting)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 464
	.p2align	4, , 16
.LBB0_245:                              # %.lr.ph.i92.i.i
                                        #   Parent Loop BB0_209 Depth=1
                                        #     Parent Loop BB0_211 Depth=2
                                        #       Parent Loop BB0_220 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $a0, 128
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a3, $a1, 32
	ld.d	$a4, $a2, 0
	ld.d	$a5, $s6, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s6, 0
	ld.d	$a0, $a0, 128
	st.d	$s6, $a0, 0
	move	$s6, $a5
	bnez	$a5, .LBB0_245
# %bb.246:                              # %list_Delete.exit.i.i
                                        #   in Loop: Header=BB0_220 Depth=3
	ld.d	$a0, $sp, 464
	ld.d	$s6, $sp, 224                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_372
	b	.LBB0_361
	.p2align	4, , 16
.LBB0_247:                              #   in Loop: Header=BB0_220 Depth=3
	beqz	$s3, .LBB0_252
# %bb.248:                              #   in Loop: Header=BB0_220 Depth=3
	beqz	$s4, .LBB0_253
# %bb.249:                              # %.preheader.i.i428.preheader
                                        #   in Loop: Header=BB0_220 Depth=3
	move	$a1, $s3
	.p2align	4, , 16
.LBB0_250:                              # %.preheader.i.i428
                                        #   Parent Loop BB0_209 Depth=1
                                        #     Parent Loop BB0_211 Depth=2
                                        #       Parent Loop BB0_220 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB0_250
# %bb.251:                              #   in Loop: Header=BB0_220 Depth=3
	st.d	$s4, $a0, 0
	b	.LBB0_253
	.p2align	4, , 16
.LBB0_252:                              # %list_Nconc.exit.i426
                                        #   in Loop: Header=BB0_220 Depth=3
	move	$s3, $s4
.LBB0_253:                              # %list_Nconc.exit.i426
                                        #   in Loop: Header=BB0_220 Depth=3
	move	$s1, $zero
	st.d	$zero, $sp, 304
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	b	.LBB0_400
.LBB0_254:                              #   in Loop: Header=BB0_220 Depth=3
	ld.d	$s4, $s5, 112
	ld.d	$a0, $s5, 104
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	b	.LBB0_258
.LBB0_255:                              #   in Loop: Header=BB0_258 Depth=4
	move	$s3, $s0
.LBB0_256:                              # %top_SelectClauseDepth.exit.i301.i
                                        #   in Loop: Header=BB0_258 Depth=4
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 248                   # 8-byte Folded Reload
.LBB0_257:                              #   in Loop: Header=BB0_258 Depth=4
	move	$a0, $s5
	move	$a1, $s3
	pcaddu18i	$ra, %call36(prfs_ExtractUsable)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(clock_StartCounter)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $s3
	move	$a2, $s7
	pcaddu18i	$ra, %call36(red_CompleteReductionOnDerivedClause)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(clock_StopAddPassedTime)
	jirl	$ra, $ra, 0
	bnez	$s6, .LBB0_318
.LBB0_258:                              #   Parent Loop BB0_209 Depth=1
                                        #     Parent Loop BB0_211 Depth=2
                                        #       Parent Loop BB0_220 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_260 Depth 5
                                        #           Child Loop BB0_296 Depth 5
                                        #           Child Loop BB0_271 Depth 5
                                        #           Child Loop BB0_280 Depth 5
	ld.d	$a0, $s5, 56
	beqz	$a0, .LBB0_316
# %bb.259:                              #   in Loop: Header=BB0_258 Depth=4
	ld.d	$s3, $sp, 464
	beqz	$s3, .LBB0_262
	.p2align	4, , 16
.LBB0_260:                              # %.lr.ph.i.i264.i
                                        #   Parent Loop BB0_209 Depth=1
                                        #     Parent Loop BB0_211 Depth=2
                                        #       Parent Loop BB0_220 Depth=3
                                        #         Parent Loop BB0_258 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a1, $a0, 8
	beq	$s3, $a1, .LBB0_275
# %bb.261:                              #   in Loop: Header=BB0_260 Depth=5
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB0_260
.LBB0_262:                              # %list_PointerMember.exit.thread133.i.i
                                        #   in Loop: Header=BB0_258 Depth=4
	ld.w	$a0, $s5, 136
	st.d	$zero, $sp, 464
	beqz	$a0, .LBB0_265
# %bb.263:                              #   in Loop: Header=BB0_258 Depth=4
	addi.d	$a1, $sp, 476
	move	$a0, $s5
	pcaddu18i	$ra, %call36(top_GetPowerfulSplitClause)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_265
# %bb.264:                              #   in Loop: Header=BB0_258 Depth=4
	move	$s3, $a0
	b	.LBB0_257
	.p2align	4, , 16
.LBB0_265:                              # %.thread.i284.i
                                        #   in Loop: Header=BB0_258 Depth=4
	ld.w	$a0, $s4, 168
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	mod.w	$a0, $a1, $a0
	beqz	$a0, .LBB0_276
# %bb.266:                              #   in Loop: Header=BB0_258 Depth=4
	ld.d	$fp, $s5, 56
	ld.d	$s0, $fp, 8
	ld.w	$s5, $s4, 172
	ld.w	$s7, $s0, 4
	ori	$a0, $zero, 1
	bne	$s5, $a0, .LBB0_290
# %bb.267:                              #   in Loop: Header=BB0_258 Depth=4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_NumberOfVarOccs)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB0_255
# %bb.268:                              # %.lr.ph.i114.i306.i.preheader
                                        #   in Loop: Header=BB0_258 Depth=4
	move	$s6, $a0
	move	$s3, $s0
	b	.LBB0_271
	.p2align	4, , 16
.LBB0_269:                              # %.sink.split.i.i317.i
                                        #   in Loop: Header=BB0_271 Depth=5
	ld.d	$s3, $fp, 8
	ld.w	$s7, $s3, 4
	move	$s6, $a0
.LBB0_270:                              #   in Loop: Header=BB0_271 Depth=5
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB0_256
.LBB0_271:                              # %.lr.ph.i114.i306.i
                                        #   Parent Loop BB0_209 Depth=1
                                        #     Parent Loop BB0_211 Depth=2
                                        #       Parent Loop BB0_220 Depth=3
                                        #         Parent Loop BB0_258 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a0, $fp, 8
	ld.w	$a1, $a0, 4
	bne	$a1, $s7, .LBB0_256
# %bb.272:                              #   in Loop: Header=BB0_271 Depth=5
	pcaddu18i	$ra, %call36(clause_NumberOfVarOccs)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 188
	beqz	$a1, .LBB0_274
# %bb.273:                              #   in Loop: Header=BB0_271 Depth=5
	bltu	$s6, $a0, .LBB0_269
	b	.LBB0_270
	.p2align	4, , 16
.LBB0_274:                              #   in Loop: Header=BB0_271 Depth=5
	bgeu	$a0, $s6, .LBB0_270
	b	.LBB0_269
	.p2align	4, , 16
.LBB0_275:                              # %list_PointerMember.exit.i346.i
                                        #   in Loop: Header=BB0_258 Depth=4
	st.d	$zero, $sp, 464
	b	.LBB0_257
.LBB0_276:                              #   in Loop: Header=BB0_258 Depth=4
	ld.d	$fp, $s5, 56
	ld.d	$s6, $fp, 8
	ld.w	$s8, $s6, 8
	ld.w	$s7, $s6, 4
	move	$a0, $s6
	pcaddu18i	$ra, %call36(clause_NumberOfVarOccs)
	jirl	$ra, $ra, 0
	ld.d	$s5, $fp, 0
	beqz	$s5, .LBB0_305
# %bb.277:                              # %.lr.ph.i103.i.i.preheader
                                        #   in Loop: Header=BB0_258 Depth=4
	move	$s0, $a0
	b	.LBB0_280
	.p2align	4, , 16
.LBB0_278:                              #   in Loop: Header=BB0_280 Depth=5
	move	$s3, $s6
	move	$s2, $s7
.LBB0_279:                              #   in Loop: Header=BB0_280 Depth=5
	ld.d	$s5, $s5, 0
	move	$s7, $s2
	move	$s6, $s3
	beqz	$s5, .LBB0_256
.LBB0_280:                              # %.lr.ph.i103.i.i
                                        #   Parent Loop BB0_209 Depth=1
                                        #     Parent Loop BB0_211 Depth=2
                                        #       Parent Loop BB0_220 Depth=3
                                        #         Parent Loop BB0_258 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$s3, $s5, 8
	ld.w	$fp, $s3, 8
	bltu	$s8, $fp, .LBB0_278
# %bb.281:                              #   in Loop: Header=BB0_280 Depth=5
	ld.w	$s2, $s3, 4
	bltu	$fp, $s8, .LBB0_286
# %bb.282:                              #   in Loop: Header=BB0_280 Depth=5
	bltu	$s2, $s7, .LBB0_286
# %bb.283:                              #   in Loop: Header=BB0_280 Depth=5
	bne	$s2, $s7, .LBB0_278
# %bb.284:                              #   in Loop: Header=BB0_280 Depth=5
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_NumberOfVarOccs)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 188
	beqz	$a1, .LBB0_288
# %bb.285:                              #   in Loop: Header=BB0_280 Depth=5
	move	$s3, $s6
	move	$s2, $s7
	bgeu	$s0, $a0, .LBB0_279
	b	.LBB0_289
	.p2align	4, , 16
.LBB0_286:                              # %._crit_edge70.i.i345.i
                                        #   in Loop: Header=BB0_280 Depth=5
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_NumberOfVarOccs)
	jirl	$ra, $ra, 0
.LBB0_287:                              #   in Loop: Header=BB0_280 Depth=5
	move	$s0, $a0
	move	$s8, $fp
	b	.LBB0_279
.LBB0_288:                              #   in Loop: Header=BB0_280 Depth=5
	move	$s3, $s6
	move	$s2, $s7
	bgeu	$a0, $s0, .LBB0_279
.LBB0_289:                              #   in Loop: Header=BB0_280 Depth=5
	ld.d	$s3, $s5, 8
	ld.w	$s2, $s3, 4
	b	.LBB0_287
.LBB0_290:                              #   in Loop: Header=BB0_258 Depth=4
	ld.bu	$a0, $s0, 48
	andi	$a0, $a0, 8
	beqz	$a0, .LBB0_292
# %bb.291:                              #   in Loop: Header=BB0_258 Depth=4
	div.wu	$s7, $s7, $s5
.LBB0_292:                              #   in Loop: Header=BB0_258 Depth=4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_NumberOfVarOccs)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB0_255
# %bb.293:                              # %.lr.ph.i108.i.i.preheader
                                        #   in Loop: Header=BB0_258 Depth=4
	move	$s6, $a0
	b	.LBB0_296
	.p2align	4, , 16
.LBB0_294:                              #   in Loop: Header=BB0_296 Depth=5
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_NumberOfVarOccs)
	jirl	$ra, $ra, 0
.LBB0_295:                              #   in Loop: Header=BB0_296 Depth=5
	ld.d	$fp, $fp, 0
	move	$s6, $a0
	move	$s0, $s3
	move	$s7, $s8
	beqz	$fp, .LBB0_256
.LBB0_296:                              # %.lr.ph.i108.i.i
                                        #   Parent Loop BB0_209 Depth=1
                                        #     Parent Loop BB0_211 Depth=2
                                        #       Parent Loop BB0_220 Depth=3
                                        #         Parent Loop BB0_258 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$s3, $fp, 8
	ld.bu	$a0, $s3, 48
	ld.w	$s8, $s3, 4
	andi	$a0, $a0, 8
	beqz	$a0, .LBB0_298
# %bb.297:                              #   in Loop: Header=BB0_296 Depth=5
	div.wu	$s8, $s8, $s5
.LBB0_298:                              #   in Loop: Header=BB0_296 Depth=5
	bltu	$s8, $s7, .LBB0_294
# %bb.299:                              #   in Loop: Header=BB0_296 Depth=5
	bne	$s8, $s7, .LBB0_304
# %bb.300:                              #   in Loop: Header=BB0_296 Depth=5
	move	$a0, $s3
	pcaddu18i	$ra, %call36(clause_NumberOfVarOccs)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 188
	beqz	$a1, .LBB0_303
# %bb.301:                              #   in Loop: Header=BB0_296 Depth=5
	bgeu	$s6, $a0, .LBB0_304
.LBB0_302:                              #   in Loop: Header=BB0_296 Depth=5
	ld.d	$s3, $fp, 8
	move	$s8, $s7
	b	.LBB0_295
.LBB0_303:                              #   in Loop: Header=BB0_296 Depth=5
	bltu	$a0, $s6, .LBB0_302
	.p2align	4, , 16
.LBB0_304:                              #   in Loop: Header=BB0_296 Depth=5
	move	$s8, $s7
	move	$s3, $s0
	move	$a0, $s6
	b	.LBB0_295
.LBB0_305:                              #   in Loop: Header=BB0_258 Depth=4
	move	$s3, $s6
	b	.LBB0_256
.LBB0_306:                              # %.thread.i.i
                                        #   in Loop: Header=BB0_220 Depth=3
	ld.w	$a0, $s2, 168
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	mod.w	$a0, $a1, $a0
	beqz	$a0, .LBB0_330
# %bb.307:                              #   in Loop: Header=BB0_220 Depth=3
	ld.d	$fp, $s5, 56
	ld.d	$s6, $fp, 8
	ld.w	$s5, $s2, 172
	ld.w	$s3, $s6, 4
	ori	$a0, $zero, 1
	bne	$s5, $a0, .LBB0_344
# %bb.308:                              #   in Loop: Header=BB0_220 Depth=3
	move	$a0, $s6
	pcaddu18i	$ra, %call36(clause_NumberOfVarOccs)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB0_359
# %bb.309:                              # %.lr.ph.i106.i.i
                                        #   in Loop: Header=BB0_220 Depth=3
	move	$s7, $a0
	move	$s0, $s6
	b	.LBB0_312
	.p2align	4, , 16
.LBB0_310:                              # %.sink.split.i.i.i
                                        #   in Loop: Header=BB0_312 Depth=4
	ld.d	$s0, $fp, 8
	ld.w	$s3, $s0, 4
	move	$s7, $a0
.LBB0_311:                              #   in Loop: Header=BB0_312 Depth=4
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB0_360
.LBB0_312:                              #   Parent Loop BB0_209 Depth=1
                                        #     Parent Loop BB0_211 Depth=2
                                        #       Parent Loop BB0_220 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $fp, 8
	ld.w	$a1, $a0, 4
	bne	$a1, $s3, .LBB0_360
# %bb.313:                              #   in Loop: Header=BB0_312 Depth=4
	pcaddu18i	$ra, %call36(clause_NumberOfVarOccs)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 188
	beqz	$a1, .LBB0_315
# %bb.314:                              #   in Loop: Header=BB0_312 Depth=4
	bltu	$s7, $a0, .LBB0_310
	b	.LBB0_311
	.p2align	4, , 16
.LBB0_315:                              #   in Loop: Header=BB0_312 Depth=4
	bgeu	$a0, $s7, .LBB0_311
	b	.LBB0_310
.LBB0_316:                              #   in Loop: Header=BB0_220 Depth=3
	move	$s3, $zero
.LBB0_317:                              # %top_LazyReductionSelectGivenComputeDerivables.exit.i
                                        #   in Loop: Header=BB0_220 Depth=3
	ld.d	$s6, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	b	.LBB0_400
.LBB0_318:                              # %.critedge92.i.i
                                        #   in Loop: Header=BB0_220 Depth=3
	ld.w	$a0, $s6, 68
	bnez	$a0, .LBB0_321
# %bb.319:                              #   in Loop: Header=BB0_220 Depth=3
	ld.w	$a0, $s6, 72
	bnez	$a0, .LBB0_321
# %bb.320:                              # %clause_IsEmptyClause.exit.i.i
                                        #   in Loop: Header=BB0_220 Depth=3
	ld.w	$a0, $s6, 64
	beqz	$a0, .LBB0_396
.LBB0_321:                              # %clause_IsEmptyClause.exit.thread.i.i
                                        #   in Loop: Header=BB0_220 Depth=3
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(clock_StartCounter)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(red_BackReduction)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(clock_StopAddPassedTime)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 96
	beqz	$a0, .LBB0_323
# %bb.322:                              #   in Loop: Header=BB0_220 Depth=3
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$fp, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.LBB0_323:                              #   in Loop: Header=BB0_220 Depth=3
	ld.w	$a0, $s5, 136
	beqz	$a0, .LBB0_383
# %bb.324:                              #   in Loop: Header=BB0_220 Depth=3
	move	$a0, $s6
	pcaddu18i	$ra, %call36(top_GetLiteralsForSplitting)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_386
# %bb.325:                              # %.lr.ph.i119.i.i
                                        #   in Loop: Header=BB0_220 Depth=3
	move	$s0, $a0
	addi.w	$s8, $zero, -1
	move	$s5, $s8
	lu32i.d	$s5, 0
	b	.LBB0_327
	.p2align	4, , 16
.LBB0_326:                              #   in Loop: Header=BB0_327 Depth=4
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$fp, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a0, $fp, 128
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s7, $a1, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s7, 0
	ld.d	$a3, $s0, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $fp, 128
	st.d	$s0, $a0, 0
	move	$s0, $a3
	beqz	$a3, .LBB0_380
.LBB0_327:                              #   Parent Loop BB0_209 Depth=1
                                        #     Parent Loop BB0_211 Depth=2
                                        #       Parent Loop BB0_220 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $s0, 8
	ld.d	$a1, $s6, 56
	slli.d	$a0, $a0, 32
	srai.d	$a0, $a0, 29
	ldx.d	$a1, $a1, $a0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	move	$a2, $zero
	pcaddu18i	$ra, %call36(prfs_GetNumberOfInstances)
	jirl	$ra, $ra, 0
	bgeu	$s8, $a0, .LBB0_326
# %bb.328:                              #   in Loop: Header=BB0_327 Depth=4
	ld.wu	$s5, $s0, 8
	move	$s8, $a0
	b	.LBB0_326
.LBB0_329:                              # %list_PointerMember.exit.i.i
                                        #   in Loop: Header=BB0_220 Depth=3
	st.d	$zero, $sp, 464
	ld.w	$a0, $s5, 136
	bnez	$a0, .LBB0_362
	b	.LBB0_372
.LBB0_330:                              #   in Loop: Header=BB0_220 Depth=3
	ld.d	$fp, $s5, 56
	ld.d	$s6, $fp, 8
	ld.w	$s4, $s6, 8
	ld.w	$s5, $s6, 4
	move	$a0, $s6
	pcaddu18i	$ra, %call36(clause_NumberOfVarOccs)
	jirl	$ra, $ra, 0
	ld.d	$s3, $fp, 0
	beqz	$s3, .LBB0_359
# %bb.331:                              # %.lr.ph.i94.i.i
                                        #   in Loop: Header=BB0_220 Depth=3
	move	$s7, $a0
	b	.LBB0_334
	.p2align	4, , 16
.LBB0_332:                              #   in Loop: Header=BB0_334 Depth=4
	move	$s0, $s6
	move	$s8, $s5
.LBB0_333:                              #   in Loop: Header=BB0_334 Depth=4
	ld.d	$s3, $s3, 0
	move	$s5, $s8
	move	$s6, $s0
	beqz	$s3, .LBB0_360
.LBB0_334:                              #   Parent Loop BB0_209 Depth=1
                                        #     Parent Loop BB0_211 Depth=2
                                        #       Parent Loop BB0_220 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$s0, $s3, 8
	ld.w	$fp, $s0, 8
	bltu	$s4, $fp, .LBB0_332
# %bb.335:                              #   in Loop: Header=BB0_334 Depth=4
	ld.w	$s8, $s0, 4
	bltu	$fp, $s4, .LBB0_340
# %bb.336:                              #   in Loop: Header=BB0_334 Depth=4
	bltu	$s8, $s5, .LBB0_340
# %bb.337:                              #   in Loop: Header=BB0_334 Depth=4
	bne	$s8, $s5, .LBB0_332
# %bb.338:                              #   in Loop: Header=BB0_334 Depth=4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_NumberOfVarOccs)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 188
	beqz	$a1, .LBB0_342
# %bb.339:                              #   in Loop: Header=BB0_334 Depth=4
	move	$s0, $s6
	move	$s8, $s5
	bgeu	$s7, $a0, .LBB0_333
	b	.LBB0_343
	.p2align	4, , 16
.LBB0_340:                              # %._crit_edge70.i.i.i
                                        #   in Loop: Header=BB0_334 Depth=4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_NumberOfVarOccs)
	jirl	$ra, $ra, 0
.LBB0_341:                              #   in Loop: Header=BB0_334 Depth=4
	move	$s7, $a0
	move	$s4, $fp
	b	.LBB0_333
.LBB0_342:                              #   in Loop: Header=BB0_334 Depth=4
	move	$s0, $s6
	move	$s8, $s5
	bgeu	$a0, $s7, .LBB0_333
.LBB0_343:                              #   in Loop: Header=BB0_334 Depth=4
	ld.d	$s0, $s3, 8
	ld.w	$s8, $s0, 4
	b	.LBB0_341
.LBB0_344:                              #   in Loop: Header=BB0_220 Depth=3
	ld.bu	$a0, $s6, 48
	andi	$a0, $a0, 8
	beqz	$a0, .LBB0_346
# %bb.345:                              #   in Loop: Header=BB0_220 Depth=3
	div.wu	$s3, $s3, $s5
.LBB0_346:                              #   in Loop: Header=BB0_220 Depth=3
	move	$a0, $s6
	pcaddu18i	$ra, %call36(clause_NumberOfVarOccs)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB0_359
# %bb.347:                              # %.lr.ph.i100.i.i
                                        #   in Loop: Header=BB0_220 Depth=3
	move	$s7, $a0
	b	.LBB0_350
	.p2align	4, , 16
.LBB0_348:                              #   in Loop: Header=BB0_350 Depth=4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_NumberOfVarOccs)
	jirl	$ra, $ra, 0
.LBB0_349:                              #   in Loop: Header=BB0_350 Depth=4
	ld.d	$fp, $fp, 0
	move	$s7, $a0
	move	$s6, $s0
	move	$s3, $s4
	beqz	$fp, .LBB0_360
.LBB0_350:                              #   Parent Loop BB0_209 Depth=1
                                        #     Parent Loop BB0_211 Depth=2
                                        #       Parent Loop BB0_220 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$s0, $fp, 8
	ld.bu	$a0, $s0, 48
	ld.w	$s4, $s0, 4
	andi	$a0, $a0, 8
	beqz	$a0, .LBB0_352
# %bb.351:                              #   in Loop: Header=BB0_350 Depth=4
	div.wu	$s4, $s4, $s5
.LBB0_352:                              #   in Loop: Header=BB0_350 Depth=4
	bltu	$s4, $s3, .LBB0_348
# %bb.353:                              #   in Loop: Header=BB0_350 Depth=4
	bne	$s4, $s3, .LBB0_358
# %bb.354:                              #   in Loop: Header=BB0_350 Depth=4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_NumberOfVarOccs)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 188
	beqz	$a1, .LBB0_357
# %bb.355:                              #   in Loop: Header=BB0_350 Depth=4
	bgeu	$s7, $a0, .LBB0_358
.LBB0_356:                              #   in Loop: Header=BB0_350 Depth=4
	ld.d	$s0, $fp, 8
	move	$s4, $s3
	b	.LBB0_349
.LBB0_357:                              #   in Loop: Header=BB0_350 Depth=4
	bltu	$a0, $s7, .LBB0_356
	.p2align	4, , 16
.LBB0_358:                              #   in Loop: Header=BB0_350 Depth=4
	move	$s4, $s3
	move	$s0, $s6
	move	$a0, $s7
	b	.LBB0_349
.LBB0_359:                              #   in Loop: Header=BB0_220 Depth=3
	move	$s0, $s6
.LBB0_360:                              # %top_SelectClauseDepth.exit.i.i
                                        #   in Loop: Header=BB0_220 Depth=3
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 464
	ld.d	$s6, $sp, 224                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_372
.LBB0_361:                              # %list_Delete.exit.thread.i.i
                                        #   in Loop: Header=BB0_220 Depth=3
	ld.w	$a0, $s5, 136
	beqz	$a0, .LBB0_372
.LBB0_362:                              #   in Loop: Header=BB0_220 Depth=3
	move	$s8, $s2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(top_GetLiteralsForSplitting)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_370
# %bb.363:                              # %.lr.ph.i109.i.i
                                        #   in Loop: Header=BB0_220 Depth=3
	move	$s6, $a0
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 224                   # 8-byte Folded Reload
	b	.LBB0_365
	.p2align	4, , 16
.LBB0_364:                              #   in Loop: Header=BB0_365 Depth=4
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$fp, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a0, $fp, 128
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s4, $a1, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s4, 0
	ld.d	$a3, $s6, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	ld.d	$a0, $fp, 128
	st.d	$s6, $a0, 0
	move	$s6, $a3
	beqz	$a3, .LBB0_367
.LBB0_365:                              #   Parent Loop BB0_209 Depth=1
                                        #     Parent Loop BB0_211 Depth=2
                                        #       Parent Loop BB0_220 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $s6, 8
	ld.d	$a1, $s0, 56
	slli.d	$a0, $a0, 32
	srai.d	$a0, $a0, 29
	ldx.d	$a1, $a1, $a0
	move	$a0, $s5
	move	$a2, $zero
	pcaddu18i	$ra, %call36(prfs_GetNumberOfInstances)
	jirl	$ra, $ra, 0
	bgeu	$s2, $a0, .LBB0_364
# %bb.366:                              #   in Loop: Header=BB0_365 Depth=4
	ld.wu	$s3, $s6, 8
	move	$s2, $a0
	b	.LBB0_364
.LBB0_367:                              # %top_GetOptimalSplitLiteralIndex.exit.i.i
                                        #   in Loop: Header=BB0_220 Depth=3
	addi.w	$a0, $s3, 0
	bltz	$a0, .LBB0_370
# %bb.368:                              #   in Loop: Header=BB0_220 Depth=3
	ld.d	$a0, $s0, 56
	slli.d	$a1, $s3, 3
	ldx.d	$s2, $a0, $a1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$s2, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s5
	move	$a1, $s0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(prfs_DoSplitting)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 464
	.p2align	4, , 16
.LBB0_369:                              # %.lr.ph.i114.i.i
                                        #   Parent Loop BB0_209 Depth=1
                                        #     Parent Loop BB0_211 Depth=2
                                        #       Parent Loop BB0_220 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $fp, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s4, 0
	ld.d	$a3, $s6, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	ld.d	$a0, $fp, 128
	st.d	$s6, $a0, 0
	move	$s6, $a3
	bnez	$a3, .LBB0_369
	b	.LBB0_371
.LBB0_370:                              # %top_GetOptimalSplitLiteralIndex.exit.thread.i.i
                                        #   in Loop: Header=BB0_220 Depth=3
	move	$a0, $s5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(prfs_PerformSplitting)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 464
.LBB0_371:                              # %list_Delete.exit118.i.i
                                        #   in Loop: Header=BB0_220 Depth=3
	ld.d	$s6, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	move	$s2, $s8
.LBB0_372:                              # %list_Delete.exit118.i.i
                                        #   in Loop: Header=BB0_220 Depth=3
	move	$a0, $s5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(prfs_ExtractUsable)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 96
	beqz	$a0, .LBB0_374
# %bb.373:                              #   in Loop: Header=BB0_220 Depth=3
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$fp, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.LBB0_374:                              #   in Loop: Header=BB0_220 Depth=3
	ld.d	$fp, $sp, 464
	beqz	$fp, .LBB0_376
# %bb.375:                              #   in Loop: Header=BB0_220 Depth=3
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$fp, $a0, 8
	st.d	$zero, $a0, 0
	b	.LBB0_399
.LBB0_376:                              #   in Loop: Header=BB0_220 Depth=3
	ld.w	$a0, $s2, 348
	beqz	$a0, .LBB0_379
# %bb.377:                              #   in Loop: Header=BB0_220 Depth=3
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(clock_StartCounter)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 348
	ld.d	$a2, $s5, 32
	ld.d	$a3, $s5, 48
	move	$a0, $s0
	move	$a4, $s2
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(red_Terminator)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(clock_StopAddPassedTime)
	jirl	$ra, $ra, 0
	beqz	$s6, .LBB0_379
# %bb.378:                              #   in Loop: Header=BB0_220 Depth=3
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$s6, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(prfs_InsertUsableClause)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 224                   # 8-byte Folded Reload
	b	.LBB0_399
.LBB0_379:                              # %.thread130.i.i
                                        #   in Loop: Header=BB0_220 Depth=3
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(clause_SelectLiteral)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(prfs_InsertWorkedOffClause)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(clock_StartCounter)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(inf_DerivableClauses)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(clock_StopAddPassedTime)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 224                   # 8-byte Folded Reload
	b	.LBB0_399
.LBB0_380:                              # %top_GetOptimalSplitLiteralIndex.exit.i277.i
                                        #   in Loop: Header=BB0_220 Depth=3
	addi.w	$a0, $s5, 0
	bltz	$a0, .LBB0_386
# %bb.381:                              #   in Loop: Header=BB0_220 Depth=3
	ld.d	$a0, $s6, 56
	slli.d	$a1, $s5, 3
	ldx.d	$s2, $a0, $a1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s2, $a0, 8
	st.d	$zero, $a0, 0
	ld.d	$s5, $sp, 264                   # 8-byte Folded Reload
	move	$a0, $s5
	move	$a1, $s6
	move	$a2, $s0
	pcaddu18i	$ra, %call36(prfs_DoSplitting)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 464
	.p2align	4, , 16
.LBB0_382:                              # %.lr.ph.i124.i.i
                                        #   Parent Loop BB0_209 Depth=1
                                        #     Parent Loop BB0_211 Depth=2
                                        #       Parent Loop BB0_220 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $fp, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s7, 0
	ld.d	$a3, $s0, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $fp, 128
	st.d	$s0, $a0, 0
	move	$s0, $a3
	bnez	$a3, .LBB0_382
.LBB0_383:                              # %list_Delete.exitthread-pre-split.i.i
                                        #   in Loop: Header=BB0_220 Depth=3
	ld.d	$s0, $sp, 464
	beqz	$s0, .LBB0_387
.LBB0_384:                              #   in Loop: Header=BB0_220 Depth=3
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	st.d	$s3, $a0, 0
	move	$s3, $a0
.LBB0_385:                              #   in Loop: Header=BB0_220 Depth=3
	ld.d	$s6, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	b	.LBB0_399
.LBB0_386:                              # %top_GetOptimalSplitLiteralIndex.exit.thread.i278.i
                                        #   in Loop: Header=BB0_220 Depth=3
	ld.d	$s5, $sp, 264                   # 8-byte Folded Reload
	move	$a0, $s5
	move	$a1, $s6
	pcaddu18i	$ra, %call36(prfs_PerformSplitting)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $sp, 464
	bnez	$s0, .LBB0_384
.LBB0_387:                              #   in Loop: Header=BB0_220 Depth=3
	ld.w	$a1, $s4, 348
	beqz	$a1, .LBB0_390
# %bb.388:                              #   in Loop: Header=BB0_220 Depth=3
	ld.d	$a2, $s5, 32
	ld.d	$a3, $s5, 48
	move	$a0, $s6
	move	$a4, $s4
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(red_Terminator)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_390
# %bb.389:                              #   in Loop: Header=BB0_220 Depth=3
	move	$s0, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$s0, $a0, 8
	st.d	$s3, $a0, 0
	move	$a0, $s5
	move	$a1, $s6
	pcaddu18i	$ra, %call36(prfs_InsertUsableClause)
	jirl	$ra, $ra, 0
	move	$s3, $s4
	b	.LBB0_385
.LBB0_390:                              #   in Loop: Header=BB0_220 Depth=3
	move	$a0, $s6
	move	$a1, $s4
	pcaddu18i	$ra, %call36(clause_SelectLiteral)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $s6
	pcaddu18i	$ra, %call36(prfs_InsertWorkedOffClause)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(clock_StartCounter)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $s6
	pcaddu18i	$ra, %call36(inf_DerivableClauses)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB0_395
# %bb.391:                              #   in Loop: Header=BB0_220 Depth=3
	ld.d	$s6, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_397
# %bb.392:                              # %.preheader.i.i.i.preheader
                                        #   in Loop: Header=BB0_220 Depth=3
	move	$a2, $s3
	ld.d	$s7, $sp, 248                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_393:                              # %.preheader.i.i.i
                                        #   Parent Loop BB0_209 Depth=1
                                        #     Parent Loop BB0_211 Depth=2
                                        #       Parent Loop BB0_220 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB0_393
# %bb.394:                              #   in Loop: Header=BB0_220 Depth=3
	st.d	$a0, $a1, 0
	b	.LBB0_398
.LBB0_395:                              #   in Loop: Header=BB0_220 Depth=3
	move	$s3, $a0
	ld.d	$s6, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	b	.LBB0_398
.LBB0_396:                              #   in Loop: Header=BB0_220 Depth=3
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$s6, $a0, 8
	st.d	$zero, $a0, 0
	b	.LBB0_317
.LBB0_397:                              #   in Loop: Header=BB0_220 Depth=3
	ld.d	$s7, $sp, 248                   # 8-byte Folded Reload
.LBB0_398:                              # %list_Nconc.exit.i.i
                                        #   in Loop: Header=BB0_220 Depth=3
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(clock_StopAddPassedTime)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB0_399:                              #   in Loop: Header=BB0_220 Depth=3
	move	$a0, $s3
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 144
	add.d	$a0, $a1, $a0
	st.w	$a0, $s5, 144
.LBB0_400:                              #   in Loop: Header=BB0_220 Depth=3
	ld.w	$a0, $s4, 92
	beqz	$a0, .LBB0_404
# %bb.401:                              #   in Loop: Header=BB0_220 Depth=3
	beqz	$s3, .LBB0_404
# %bb.402:                              # %.lr.ph428.i.preheader
                                        #   in Loop: Header=BB0_220 Depth=3
	move	$fp, $s3
	.p2align	4, , 16
.LBB0_403:                              # %.lr.ph428.i
                                        #   Parent Loop BB0_209 Depth=1
                                        #     Parent Loop BB0_211 Depth=2
                                        #       Parent Loop BB0_220 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	bnez	$fp, .LBB0_403
.LBB0_404:                              # %.loopexit.i
                                        #   in Loop: Header=BB0_220 Depth=3
	addi.d	$a1, $sp, 304
	move	$a0, $s3
	pcaddu18i	$ra, %call36(split_ExtractEmptyClauses)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(clock_StartCounter)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 176
	ld.d	$fp, $sp, 304
	addi.d	$a5, $sp, 300
	beqz	$a0, .LBB0_409
# %bb.405:                              #   in Loop: Header=BB0_220 Depth=3
	move	$a0, $s5
	move	$a1, $s0
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(red_CompleteReductionOnDerivedClauses)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB0_414
# %bb.406:                              #   in Loop: Header=BB0_220 Depth=3
	beqz	$a0, .LBB0_415
# %bb.407:                              # %.preheader.i349.i.preheader
                                        #   in Loop: Header=BB0_220 Depth=3
	move	$a2, $fp
	.p2align	4, , 16
.LBB0_408:                              # %.preheader.i349.i
                                        #   Parent Loop BB0_209 Depth=1
                                        #     Parent Loop BB0_211 Depth=2
                                        #       Parent Loop BB0_220 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB0_408
	b	.LBB0_413
	.p2align	4, , 16
.LBB0_409:                              #   in Loop: Header=BB0_220 Depth=3
	move	$a0, $s5
	move	$a1, $s0
	move	$a2, $s7
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(red_CompleteReductionOnDerivedClauses)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB0_414
# %bb.410:                              #   in Loop: Header=BB0_220 Depth=3
	beqz	$a0, .LBB0_415
# %bb.411:                              # %.preheader.i357.i.preheader
                                        #   in Loop: Header=BB0_220 Depth=3
	move	$a2, $fp
	.p2align	4, , 16
.LBB0_412:                              # %.preheader.i357.i
                                        #   Parent Loop BB0_209 Depth=1
                                        #     Parent Loop BB0_211 Depth=2
                                        #       Parent Loop BB0_220 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB0_412
.LBB0_413:                              #   in Loop: Header=BB0_220 Depth=3
	st.d	$a0, $a1, 0
	b	.LBB0_415
	.p2align	4, , 16
.LBB0_414:                              #   in Loop: Header=BB0_220 Depth=3
	move	$fp, $a0
.LBB0_415:                              # %list_Nconc.exit354.i
                                        #   in Loop: Header=BB0_220 Depth=3
	st.d	$fp, $sp, 304
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(clock_StopAddPassedTime)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304
	beqz	$a0, .LBB0_219
# %bb.416:                              #   in Loop: Header=BB0_220 Depth=3
	pcaddu18i	$ra, %call36(split_SmallestSplitLevelClause)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 112
	move	$s1, $a0
	beqz	$a1, .LBB0_219
# %bb.417:                              #   in Loop: Header=BB0_220 Depth=3
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(clause_Print)
	jirl	$ra, $ra, 0
	b	.LBB0_219
	.p2align	4, , 16
.LBB0_418:                              #   in Loop: Header=BB0_209 Depth=1
	ld.w	$a0, $sp, 300
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	addi.w	$a1, $a1, -1
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	sltui	$a1, $a1, 1
	masknez	$a2, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$a1, $a1, $a2
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	beq	$a0, $s6, .LBB0_209
# %bb.419:                              #   in Loop: Header=BB0_209 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(prfs_SwapIndexes)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $s4, 144
	beqz	$a0, .LBB0_209
# %bb.420:                              #   in Loop: Header=BB0_209 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	b	.LBB0_209
.LBB0_421:
	pcalau12i	$a0, %got_pc_hi20(ana_USORTRES)
	ld.d	$a0, $a0, %got_pc_lo12(ana_USORTRES)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_193
# %bb.422:
	ld.w	$a0, $s4, 160
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB0_190
	b	.LBB0_193
.LBB0_423:                              # %..critedge_crit_edge.i
	ld.d	$a0, $sp, 304
.LBB0_424:                              # %top_ProofSearch.exit
	st.d	$a0, $s5, 8
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $s5, 16
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 28
	beq	$a0, $s6, .LBB0_426
# %bb.425:
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fs0, $fa0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(clock_GetSeconds)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	move	$s3, $zero
	move	$s4, $zero
	fcmp.cule.s	$fcc0, $fs0, $fa0
	ori	$s0, $zero, 2
	bcnez	$fcc0, .LBB0_430
.LBB0_426:
	ld.w	$a0, $s5, 148
	ori	$s0, $zero, 2
	beqz	$a0, .LBB0_431
# %bb.427:
	ld.w	$a1, $sp, 300
	ld.d	$a0, $s5, 8
	beq	$a1, $s6, .LBB0_429
# %bb.428:
	move	$s1, $zero
	move	$s3, $zero
	move	$s4, $zero
	beqz	$a0, .LBB0_430
.LBB0_429:
	sltu	$s1, $zero, $a0
	sltui	$s3, $a0, 1
	ori	$s4, $zero, 1
	move	$s0, $s3
.LBB0_430:
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 28
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	bnez	$a0, .LBB0_432
	b	.LBB0_481
.LBB0_431:
	move	$s1, $zero
	move	$s3, $zero
	move	$s4, $zero
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 28
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_481
.LBB0_432:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$fp, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB0_436
# %bb.433:
	ori	$a0, $zero, 2
	bne	$s0, $a0, .LBB0_437
# %bb.434:
	ld.w	$a0, $s5, 148
	ld.d	$a3, $fp, 0
	beqz	$a0, .LBB0_438
# %bb.435:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ori	$a1, $zero, 16
	b	.LBB0_439
.LBB0_436:
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	ori	$a1, $zero, 12
	b	.LBB0_439
.LBB0_437:
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	ori	$a1, $zero, 17
	b	.LBB0_439
.LBB0_438:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ori	$a1, $zero, 33
.LBB0_439:
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(top_InputFile)
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	beqz	$s0, .LBB0_441
# %bb.440:
	ori	$a1, $zero, 47
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$a1, $a1, $a0
.LBB0_441:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 116
	beqz	$a0, .LBB0_443
# %bb.442:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(clock_StopPassedTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 144
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 152
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 140
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(clock_PrintTime)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	ori	$a1, $zero, 19
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(clock_PrintTime)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	ori	$a1, $zero, 18
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(clock_PrintTime)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	ori	$a1, $zero, 36
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(clock_PrintTime)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	ori	$a1, $zero, 19
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(clock_PrintTime)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	ori	$a1, $zero, 25
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(clock_PrintTime)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB0_443:
	bnez	$s1, .LBB0_452
# %bb.444:
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 120
	beqz	$a0, .LBB0_452
# %bb.445:
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(top_InputFile)
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	pcalau12i	$a2, %pc_hi20(.L.str.31)
	addi.d	$a2, $a2, %pc_lo12(.L.str.31)
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a0
	addi.d	$a0, $sp, 304
	addi.d	$s0, $sp, 304
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 304
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s0, $a0
	beqz	$s3, .LBB0_447
# %bb.446:
	pcalau12i	$a1, %pc_hi20(.L.str.32)
	addi.d	$a1, $a1, %pc_lo12(.L.str.32)
	ld.w	$a2, $a1, 3
	ld.w	$a1, $a1, 0
	st.w	$a2, $a0, 3
	st.w	$a1, $a0, 0
	b	.LBB0_448
.LBB0_447:
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	ld.b	$a2, $a1, 8
	ld.d	$a1, $a1, 0
	st.b	$a2, $a0, 8
	st.d	$a1, $a0, 0
.LBB0_448:
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	addi.d	$a0, $sp, 304
	pcaddu18i	$ra, %call36(misc_OpenFile)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a1, $s2, 120
	move	$s0, $a0
	addi.d	$a0, $a1, -2
	sltui	$s1, $a0, 1
	pcaddu18i	$ra, %call36(dfg_ProblemDescription)
	jirl	$ra, $ra, 0
	ld.d	$a6, $s5, 40
	move	$a5, $a0
	beqz	$s3, .LBB0_450
# %bb.449:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a2, $a0, %pc_lo12(.L.str.35)
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a3, $a0, %pc_lo12(.L.str.30)
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a4, $a0, %pc_lo12(.L.str.36)
	st.d	$s2, $sp, 0
	move	$a0, $s0
	move	$a1, $s1
	move	$a7, $zero
	pcaddu18i	$ra, %call36(clause_FPrintCnfFormulasDFGProblem)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$s1, $a0, %pc_lo12(.L.str.39)
	b	.LBB0_451
.LBB0_450:
	ld.d	$a7, $s5, 56
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a2, $a0, %pc_lo12(.L.str.37)
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a3, $a0, %pc_lo12(.L.str.30)
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a4, $a0, %pc_lo12(.L.str.38)
	st.d	$s2, $sp, 0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(clause_FPrintCnfFormulasDFGProblem)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$s1, $a0, %pc_lo12(.L.str.40)
.LBB0_451:
	addi.d	$a1, $sp, 304
	move	$a0, $s0
	pcaddu18i	$ra, %call36(misc_CloseFile)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 304
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_452:
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 36
	sltui	$a0, $a0, 1
	xori	$a1, $s4, 1
	or	$a0, $a1, $a0
	bnez	$a0, .LBB0_481
# %bb.453:
	beqz	$s3, .LBB0_455
# %bb.454:
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 40
	pcaddu18i	$ra, %call36(clause_ListPrint)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	bnez	$a4, .LBB0_482
	b	.LBB0_491
.LBB0_455:
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(top_InputFile)
	bnez	$a2, .LBB0_457
# %bb.456:
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a2, $a0, %pc_lo12(.L.str.31)
	st.d	$a2, $a1, %pc_lo12(top_InputFile)
.LBB0_457:
	ld.d	$a1, $s5, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(dp_PrintProof)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	beqz	$a0, .LBB0_474
# %bb.458:                              # %.lr.ph620.preheader
	move	$s0, $a0
	move	$s1, $zero
	ori	$s4, $zero, 16
	lu12i.w	$a0, -361578
	ori	$a0, $a0, 283
	lu32i.d	$a0, -289263
	lu52i.d	$s5, $a0, 423
	ori	$s6, $zero, 29
	pcalau12i	$a0, %pc_hi20(cnf_LabelEqual)
	addi.d	$s3, $a0, %pc_lo12(cnf_LabelEqual)
	move	$s7, $s0
	b	.LBB0_461
.LBB0_459:                              #   in Loop: Header=BB0_461 Depth=1
	move	$s1, $a0
	.p2align	4, , 16
.LBB0_460:                              # %list_Nconc.exit449
                                        #   in Loop: Header=BB0_461 Depth=1
	ld.d	$s7, $s7, 0
	beqz	$s7, .LBB0_471
.LBB0_461:                              # %.lr.ph620
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_463 Depth 2
                                        #     Child Loop BB0_469 Depth 2
	ld.d	$a0, $s7, 8
	ld.w	$a1, $a0, 76
	bne	$a1, $s4, .LBB0_460
# %bb.462:                              #   in Loop: Header=BB0_461 Depth=1
	mulh.du	$a1, $a0, $s5
	sub.d	$a2, $a0, $a1
	srli.d	$a2, $a2, 1
	add.d	$a1, $a2, $a1
	srli.d	$a1, $a1, 4
	mul.d	$a1, $a1, $s6
	sub.d	$a1, $a0, $a1
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	.p2align	4, , 16
.LBB0_463:                              #   Parent Loop BB0_461 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB0_466
# %bb.464:                              #   in Loop: Header=BB0_463 Depth=2
	ld.d	$a2, $a1, 8
	ld.d	$a3, $a2, 8
	bne	$a3, $a0, .LBB0_463
# %bb.465:                              #   in Loop: Header=BB0_461 Depth=1
	ld.d	$a0, $a2, 0
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(list_DeleteDuplicates)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB0_467
	b	.LBB0_459
	.p2align	4, , 16
.LBB0_466:                              #   in Loop: Header=BB0_461 Depth=1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(list_DeleteDuplicates)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB0_459
.LBB0_467:                              #   in Loop: Header=BB0_461 Depth=1
	beqz	$a0, .LBB0_460
# %bb.468:                              # %.preheader.i444.preheader
                                        #   in Loop: Header=BB0_461 Depth=1
	move	$a2, $s1
	.p2align	4, , 16
.LBB0_469:                              # %.preheader.i444
                                        #   Parent Loop BB0_461 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB0_469
# %bb.470:                              #   in Loop: Header=BB0_461 Depth=1
	st.d	$a0, $a1, 0
	b	.LBB0_460
.LBB0_471:                              # %.lr.ph.i451.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB0_472:                              # %.lr.ph.i451
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s0, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s0, 0
	ld.d	$a2, $a0, 128
	st.d	$s0, $a2, 0
	move	$s0, $a5
	bnez	$a5, .LBB0_472
# %bb.473:
	ld.d	$s5, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
.LBB0_474:                              # %list_Delete.exit456
	pcalau12i	$a0, %pc_hi20(cnf_LabelEqual)
	addi.d	$a1, $a0, %pc_lo12(cnf_LabelEqual)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(list_DeleteDuplicates)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a0, $a0, %pc_lo12(.L.str.42)
	ori	$a1, $zero, 29
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB0_490
# %bb.475:
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$s1, $a0, %pc_lo12(.L.str.43)
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$s3, $a0, %pc_lo12(.L.str.44)
	move	$s2, $s0
	b	.LBB0_477
	.p2align	4, , 16
.LBB0_476:                              #   in Loop: Header=BB0_477 Depth=1
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB0_479
.LBB0_477:                              # %.lr.ph625
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s4, $s2, 8
	ori	$a2, $zero, 6
	move	$a0, $s4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_476
# %bb.478:                              #   in Loop: Header=BB0_477 Depth=1
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB0_476
.LBB0_479:                              # %._crit_edge626
	ld.d	$a1, $fp, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB0_480:                              # %.lr.ph.i458
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s0, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s0, 0
	ld.d	$a2, $a0, 128
	st.d	$s0, $a2, 0
	move	$s0, $a5
	bnez	$a5, .LBB0_480
.LBB0_481:                              # %list_Delete.exit463
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	beqz	$a4, .LBB0_491
.LBB0_482:                              # %.lr.ph629.preheader
	lu12i.w	$a0, -361578
	ori	$a0, $a0, 283
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$fp, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s0, $a1, %got_pc_lo12(memory_FREEDBYTES)
	lu32i.d	$a0, -289263
	lu52i.d	$s1, $a0, 423
	ori	$s3, $zero, 29
	b	.LBB0_485
	.p2align	4, , 16
.LBB0_483:                              # %list_Delete.exit.i473
                                        #   in Loop: Header=BB0_485 Depth=1
	ld.d	$a0, $fp, 128
	ld.w	$a2, $a0, 32
	ld.d	$a3, $s0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s0, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, 128
	st.d	$a1, $a0, 0
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 0
	move	$a4, $s2
.LBB0_484:                              # %hsh_DelItem.exit
                                        #   in Loop: Header=BB0_485 Depth=1
	ld.d	$a4, $a4, 0
	beqz	$a4, .LBB0_491
.LBB0_485:                              # %.lr.ph629
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_486 Depth 2
                                        #     Child Loop BB0_489 Depth 2
	ld.d	$a0, $a4, 8
	mulh.du	$a1, $a0, $s1
	sub.d	$a2, $a0, $a1
	srli.d	$a2, $a2, 1
	add.d	$a1, $a2, $a1
	srli.d	$a1, $a1, 4
	mul.d	$a1, $a1, $s3
	sub.d	$a1, $a0, $a1
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$s4, $a1, $a2, 3
	move	$a2, $s4
	.p2align	4, , 16
.LBB0_486:                              #   Parent Loop BB0_485 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a2, 0
	beqz	$a2, .LBB0_484
# %bb.487:                              #   in Loop: Header=BB0_486 Depth=2
	ld.d	$a1, $a2, 8
	ld.d	$a3, $a1, 8
	bne	$a3, $a0, .LBB0_486
# %bb.488:                              #   in Loop: Header=BB0_485 Depth=1
	move	$s2, $a4
	ld.d	$a0, $a1, 0
	beqz	$a0, .LBB0_483
	.p2align	4, , 16
.LBB0_489:                              # %.lr.ph.i.i469
                                        #   Parent Loop BB0_485 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $fp, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $s0, 0
	ld.d	$a5, $a0, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $s0, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a0, 0
	ld.d	$a2, $fp, 128
	st.d	$a0, $a2, 0
	move	$a0, $a5
	bnez	$a5, .LBB0_489
	b	.LBB0_483
.LBB0_490:                              # %._crit_edge626.thread
	ld.d	$a1, $fp, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	bnez	$a4, .LBB0_482
.LBB0_491:                              # %._crit_edge630
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	beqz	$a6, .LBB0_494
# %bb.492:                              # %.lr.ph.i476.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB0_493:                              # %.lr.ph.i476
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $a6, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a6, 0
	ld.d	$a2, $a0, 128
	st.d	$a6, $a2, 0
	move	$a6, $a5
	bnez	$a5, .LBB0_493
.LBB0_494:                              # %list_Delete.exit481
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$fp, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s5, 0
	st.d	$zero, $s5, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(prfs_Clean)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 32
	st.d	$s0, $s5, 0
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB0_497
# %bb.495:                              # %scalar.ph718.preheader
	lu12i.w	$a0, -4
	ori	$a0, $a0, 384
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_496:                              # %scalar.ph718
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $a3, $a0
	ldx.w	$a1, $a1, $s1
	add.d	$a2, $s3, $a0
	addi.d	$a0, $a0, 4
	stptr.w	$a1, $a2, 16000
	bnez	$a0, .LBB0_496
	b	.LBB0_499
.LBB0_497:                              # %vector.body720.preheader
	lu12i.w	$a0, -4
	ori	$a0, $a0, 384
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_498:                              # %vector.body720
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $a2, $a0
	vldx	$vr0, $a1, $s1
	vldx	$vr1, $a1, $s6
	add.d	$a1, $s3, $a0
	vstx	$vr0, $a1, $s1
	addi.d	$a0, $a0, 32
	vstx	$vr1, $a1, $s6
	bnez	$a0, .LBB0_498
.LBB0_499:                              # %symbol_TransferPrecedence.exit485
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $s2, 108
	beqz	$a0, .LBB0_501
# %bb.500:
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	ori	$a1, $zero, 67
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB0_501:
	ld.w	$a0, $s2, 8
	beqz	$a0, .LBB0_503
# %bb.502:
	ld.w	$a0, $s2, 28
	bnez	$a0, .LBB0_90
.LBB0_503:                              # %.critedge
	ld.d	$s0, $sp, 456
	beqz	$s0, .LBB0_505
	.p2align	4, , 16
.LBB0_504:                              # %.lr.ph634
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $s0, 8
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(clause_OrientEqualities)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_Normalize)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(clause_SetMaxLitFlags)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(clause_ComputeWeight)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(clause_UpdateMaxVar)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB0_504
.LBB0_505:                              # %._crit_edge635
	ld.w	$a0, $s2, 8
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_512
# %bb.506:
	ld.w	$a1, $s2, 36
	ld.d	$a0, $sp, 416
	beqz	$a1, .LBB0_537
# %bb.507:
	beqz	$a0, .LBB0_510
# %bb.508:                              # %.lr.ph.i487.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB0_509:                              # %.lr.ph.i487
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB0_509
.LBB0_510:                              # %list_Delete.exit492
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_512
.LBB0_511:
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(prfs_Delete)
	jirl	$ra, $ra, 0
.LBB0_512:
	ld.w	$a0, $s2, 128
	beqz	$a0, .LBB0_514
# %bb.513:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(flag_Print)
	jirl	$ra, $ra, 0
.LBB0_514:
	ld.w	$a0, $s2, 36
	beqz	$a0, .LBB0_516
# %bb.515:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hsh_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hsh_Delete)
	jirl	$ra, $ra, 0
.LBB0_516:
	ld.d	$fp, $sp, 424
	beqz	$fp, .LBB0_521
	.p2align	4, , 16
.LBB0_517:                              # %.lr.ph640
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(string_StringFree)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	bnez	$fp, .LBB0_517
# %bb.518:                              # %._crit_edge641
	ld.d	$a0, $sp, 424
	beqz	$a0, .LBB0_521
# %bb.519:                              # %.lr.ph.i494.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB0_520:                              # %.lr.ph.i494
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB0_520
.LBB0_521:                              # %list_Delete.exit499
	beqz	$s0, .LBB0_524
# %bb.522:                              # %.lr.ph.i501.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB0_523:                              # %.lr.ph.i501
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s0, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s0, 0
	ld.d	$a2, $a0, 128
	st.d	$s0, $a2, 0
	move	$s0, $a5
	bnez	$a5, .LBB0_523
.LBB0_524:                              # %list_Delete.exit506
	ld.d	$a0, $sp, 408
	beqz	$a0, .LBB0_527
# %bb.525:                              # %.lr.ph.i508.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB0_526:                              # %.lr.ph.i508
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB0_526
.LBB0_527:                              # %list_Delete.exit513
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cnf_Free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(prfs_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 456
	pcaddu18i	$ra, %call36(clause_DeleteClauseList)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$fp, $a0, %got_pc_lo12(memory_ARRAY)
	ldptr.d	$a0, $fp, 3072
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s0, $a1, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s0, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s0, 0
	ld.d	$a0, $a0, 0
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	pcalau12i	$a0, %got_pc_hi20(memory_ALIGN)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ALIGN)
	ldptr.d	$a1, $fp, 3072
	pcalau12i	$a2, %got_pc_hi20(memory_OFFSET)
	ld.d	$a2, $a2, %got_pc_lo12(memory_OFFSET)
	ld.w	$a0, $a0, 0
	st.d	$a3, $a1, 0
	ld.wu	$a1, $a2, 0
	mod.wu	$a2, $s1, $a0
	sltui	$a3, $a2, 1
	sub.d	$a2, $a0, $a2
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	sub.d	$a0, $a5, $a1
	ld.d	$a4, $a0, -16
	ld.d	$a1, $a0, -8
	add.w	$a2, $a2, $s1
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s1, $a3
	beqz	$a4, .LBB0_536
# %bb.528:
	st.d	$a1, $a4, 8
	or	$a2, $a3, $a2
	beqz	$a1, .LBB0_530
.LBB0_529:
	ld.d	$a0, $a0, -16
	st.d	$a0, $a1, 0
.LBB0_530:
	pcalau12i	$a0, %got_pc_hi20(memory_MARKSIZE)
	ld.d	$a0, $a0, %got_pc_lo12(memory_MARKSIZE)
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(memory_MAXMEM)
	ld.d	$a0, $a0, %got_pc_lo12(memory_MAXMEM)
	add.d	$a2, $a1, $a2
	ld.d	$a3, $s0, 0
	ld.d	$a1, $a0, 0
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a2, $a2, 16
	add.d	$a3, $a2, $a3
	st.d	$a3, $s0, 0
	bltz	$a1, .LBB0_532
# %bb.531:
	add.d	$a1, $a1, $a2
	st.d	$a1, $a0, 0
.LBB0_532:                              # %symbol_DeletePrecedence.exit
	addi.d	$a0, $a5, -16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cc_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB0_534
	.p2align	4, , 16
.LBB0_533:                              # %.lr.ph.i.i519
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s0, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s0, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $fp, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB0_533
.LBB0_534:                              # %ana_Free.exit
	pcaddu18i	$ra, %call36(sort_Free)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(unify_Free)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cont_Free)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(fol_Free)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(symbol_FreeAllSymbols)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(dfg_Free)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(opts_Free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$s1, $zero
.LBB0_535:
	move	$a0, $s1
	fld.d	$fs0, $sp, 480                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 552                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 560                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 568                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 576
	ret
.LBB0_536:
	pcalau12i	$a4, %got_pc_hi20(memory_BIGBLOCKS)
	ld.d	$a4, $a4, %got_pc_lo12(memory_BIGBLOCKS)
	st.d	$a1, $a4, 0
	or	$a2, $a3, $a2
	bnez	$a1, .LBB0_529
	b	.LBB0_530
.LBB0_537:
	pcalau12i	$a1, %got_pc_hi20(symbol_Delete)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_Delete)
	pcaddu18i	$ra, %call36(list_DeleteWithElement)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	bnez	$a0, .LBB0_511
	b	.LBB0_512
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	5                               # -- Begin function misc_Error
	.type	misc_Error,@function
misc_Error:                             # @misc_Error
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	misc_Error, .Lfunc_end1-misc_Error
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function flag_SetFlagValue
	.type	flag_SetFlagValue,@function
flag_SetFlagValue:                      # @flag_SetFlagValue
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
	pcaddu18i	$ra, %call36(flag_Minimum)
	jirl	$ra, $ra, 0
	bge	$a0, $fp, .LBB2_3
# %bb.1:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(flag_Maximum)
	jirl	$ra, $ra, 0
	bge	$fp, $a0, .LBB2_4
# %bb.2:                                # %flag_CheckFlagValueInRange.exit
	slli.d	$a0, $s0, 2
	stx.w	$fp, $s1, $a0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB2_3:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(flag_Name)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a0, $a0, %pc_lo12(.L.str.47)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(misc_UserErrorReport)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(misc_Error)
	jirl	$ra, $ra, 0
.LBB2_4:
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(flag_Name)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(misc_UserErrorReport)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(misc_Error)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	flag_SetFlagValue, .Lfunc_end2-flag_SetFlagValue
                                        # -- End function
	.p2align	5                               # -- Begin function cnf_LabelEqual
	.type	cnf_LabelEqual,@function
cnf_LabelEqual:                         # @cnf_LabelEqual
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	cnf_LabelEqual, .Lfunc_end3-cnf_LabelEqual
                                        # -- End function
	.p2align	5                               # -- Begin function clause_CompareAbstractLEQ
	.type	clause_CompareAbstractLEQ,@function
clause_CompareAbstractLEQ:              # @clause_CompareAbstractLEQ
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(clause_CompareAbstract)
	jirl	$ra, $ra, 0
	slti	$a0, $a0, 1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	clause_CompareAbstractLEQ, .Lfunc_end4-clause_CompareAbstractLEQ
                                        # -- End function
	.p2align	5                               # -- Begin function top_GetPowerfulSplitClause
	.type	top_GetPowerfulSplitClause,@function
top_GetPowerfulSplitClause:             # @top_GetPowerfulSplitClause
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
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $a0
	addi.w	$s2, $zero, -1
	lu32i.d	$s2, 0
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	st.w	$s2, $a1, 0
	ld.d	$s1, $a0, 32
	lu12i.w	$a0, 13
	ori	$a0, $a0, 2768
	ldx.w	$a0, $s1, $a0
	pcaddu18i	$ra, %call36(term_StampOverflow)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_2
# %bb.1:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(sharing_ResetAllTermStamps)
	jirl	$ra, $ra, 0
.LBB5_2:
	pcalau12i	$a0, %got_pc_hi20(term_STAMP)
	ld.d	$s5, $a0, %got_pc_lo12(term_STAMP)
	ld.w	$a0, $s5, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, 0
	ld.d	$s6, $s0, 56
	beqz	$s6, .LBB5_19
# %bb.3:                                # %.lr.ph80.preheader
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s7, $a0, %got_pc_lo12(fol_NOT)
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s8, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s4, $a0, %got_pc_lo12(memory_FREEDBYTES)
	move	$fp, $zero
	move	$s1, $zero
	b	.LBB5_5
	.p2align	4, , 16
.LBB5_4:                                # %.loopexit
                                        #   in Loop: Header=BB5_5 Depth=1
	ld.d	$s6, $s6, 0
	beqz	$s6, .LBB5_18
.LBB5_5:                                # %.lr.ph80
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_11 Depth 2
	ld.d	$s2, $s6, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(clause_HasSolvedConstraint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_4
# %bb.6:                                #   in Loop: Header=BB5_5 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(clause_IsHornClause)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_4
# %bb.7:                                #   in Loop: Header=BB5_5 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(top_GetLiteralsForSplitting)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_4
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB5_5 Depth=1
	move	$s3, $a0
	b	.LBB5_11
	.p2align	4, , 16
.LBB5_9:                                #   in Loop: Header=BB5_11 Depth=2
	ld.d	$a1, $s3, 8
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.w	$a1, $a2, 0
	move	$s1, $s2
	move	$fp, $a0
.LBB5_10:                               #   in Loop: Header=BB5_11 Depth=2
	ld.d	$a0, $s8, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s4, 0
	ld.d	$a3, $s3, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $s8, 128
	st.d	$s3, $a0, 0
	move	$s3, $a3
	beqz	$a3, .LBB5_4
.LBB5_11:                               #   Parent Loop BB5_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 8
	ld.d	$a1, $s2, 56
	slli.d	$a0, $a0, 32
	srai.d	$a0, $a0, 29
	ldx.d	$a1, $a1, $a0
	ld.d	$a0, $a1, 24
	ld.w	$a2, $a0, 0
	ld.w	$a3, $s7, 0
	bne	$a2, $a3, .LBB5_13
# %bb.12:                               #   in Loop: Header=BB5_11 Depth=2
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
.LBB5_13:                               # %clause_LiteralAtom.exit
                                        #   in Loop: Header=BB5_11 Depth=2
	ld.w	$a3, $a0, 24
	ld.w	$a2, $s5, 0
	beq	$a3, $a2, .LBB5_10
# %bb.14:                               #   in Loop: Header=BB5_11 Depth=2
	st.w	$a2, $a0, 24
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(prfs_GetNumberOfInstances)
	jirl	$ra, $ra, 0
	bltu	$fp, $a0, .LBB5_9
# %bb.15:                               #   in Loop: Header=BB5_11 Depth=2
	beqz	$s1, .LBB5_9
# %bb.16:                               #   in Loop: Header=BB5_11 Depth=2
	bne	$a0, $fp, .LBB5_10
# %bb.17:                               #   in Loop: Header=BB5_11 Depth=2
	ld.w	$a1, $s2, 64
	ld.w	$a2, $s2, 68
	ld.w	$a3, $s2, 72
	ld.w	$a4, $s1, 64
	ld.w	$a5, $s1, 68
	ld.w	$a6, $s1, 72
	add.d	$a1, $a2, $a1
	add.w	$a1, $a1, $a3
	add.d	$a2, $a5, $a4
	add.w	$a2, $a2, $a6
	blt	$a1, $a2, .LBB5_9
	b	.LBB5_10
.LBB5_18:                               # %._crit_edge
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	bnez	$fp, .LBB5_20
.LBB5_19:                               # %._crit_edge.thread
	move	$s1, $zero
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.w	$s2, $a0, 0
.LBB5_20:
	move	$a0, $s1
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
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
.Lfunc_end5:
	.size	top_GetPowerfulSplitClause, .Lfunc_end5-top_GetPowerfulSplitClause
                                        # -- End function
	.p2align	5                               # -- Begin function top_GetLiteralsForSplitting
	.type	top_GetLiteralsForSplitting,@function
top_GetLiteralsForSplitting:            # @top_GetLiteralsForSplitting
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
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	move	$s1, $a0
	pcaddu18i	$ra, %call36(clause_IsHornClause)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_3
.LBB6_1:
	move	$s6, $zero
.LBB6_2:                                # %list_Delete.exit104
	move	$a0, $s6
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
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
.LBB6_3:
	ld.w	$a2, $s1, 52
	ld.w	$a0, $s1, 64
	ld.w	$a1, $s1, 68
	beqz	$a2, .LBB6_11
# %bb.4:
	ld.w	$a2, $s1, 72
	add.d	$a0, $a1, $a0
	add.d	$a0, $a0, $a2
	slli.w	$a0, $a0, 3
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 64
	ld.w	$a2, $s1, 68
	ld.w	$a3, $s1, 72
	add.d	$a4, $a1, $a2
	add.d	$a4, $a4, $a3
	addi.w	$s4, $a4, -1
	move	$s3, $a0
	bltz	$s4, .LBB6_9
# %bb.5:                                # %.lr.ph
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$fp, $a0, %got_pc_lo12(fol_NOT)
	move	$s0, $zero
	addi.w	$s2, $zero, -1
	b	.LBB6_7
	.p2align	4, , 16
.LBB6_6:                                # %clause_GetLiteralAtom.exit
                                        #   in Loop: Header=BB6_7 Depth=1
	pcaddu18i	$ra, %call36(term_VariableSymbols)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s3, $s0
	ld.w	$a1, $s1, 64
	ld.w	$a2, $s1, 68
	ld.w	$a3, $s1, 72
	add.d	$a0, $a1, $a2
	add.d	$a0, $a0, $a3
	addi.w	$s4, $a0, -1
	addi.d	$s2, $s2, 1
	addi.d	$s0, $s0, 8
	bge	$s2, $s4, .LBB6_9
.LBB6_7:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 56
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 0
	ld.w	$a2, $fp, 0
	bne	$a1, $a2, .LBB6_6
# %bb.8:                                #   in Loop: Header=BB6_7 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	b	.LBB6_6
.LBB6_9:                                # %.preheader110
	add.w	$a4, $a2, $a1
	bge	$s4, $a4, .LBB6_14
# %bb.10:
	move	$s2, $zero
	move	$s6, $zero
	add.d	$a0, $a4, $a3
	addi.w	$a0, $a0, -1
	bgez	$a0, .LBB6_31
	b	.LBB6_36
.LBB6_11:
	ld.w	$a2, $s1, 72
	add.w	$a1, $a1, $a0
	add.d	$a0, $a1, $a2
	addi.w	$a0, $a0, -1
	blt	$a0, $a1, .LBB6_1
# %bb.12:                               # %.lr.ph149.preheader
	move	$fp, $zero
	.p2align	4, , 16
.LBB6_13:                               # %.lr.ph149
                                        # =>This Inner Loop Header: Depth=1
	move	$s0, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$s0, $a0, 8
	st.d	$fp, $a0, 0
	ld.w	$a0, $s1, 64
	ld.w	$a1, $s1, 68
	add.w	$a1, $a1, $a0
	addi.d	$a0, $s0, -1
	move	$fp, $s6
	blt	$a1, $s0, .LBB6_13
	b	.LBB6_2
.LBB6_14:                               # %.lr.ph130.preheader
	move	$s6, $zero
	move	$s2, $zero
	move	$a0, $s4
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	b	.LBB6_17
	.p2align	4, , 16
.LBB6_15:                               # %list_PointerMember.exit.sink.split
                                        #   in Loop: Header=BB6_17 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s5, $a0, 8
	st.d	$s6, $a0, 0
	move	$s6, $a0
.LBB6_16:                               # %list_PointerMember.exit
                                        #   in Loop: Header=BB6_17 Depth=1
	ld.w	$a1, $s1, 64
	ld.w	$a2, $s1, 68
	addi.d	$a0, $s5, -1
	add.w	$a4, $a2, $a1
	addi.w	$s4, $s4, -1
	bge	$a4, $s5, .LBB6_30
.LBB6_17:                               # %.lr.ph130
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_20 Depth 2
                                        #     Child Loop BB6_24 Depth 2
	move	$s5, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s3, $a0
	beqz	$a0, .LBB6_15
# %bb.18:                               #   in Loop: Header=BB6_17 Depth=1
	beqz	$s2, .LBB6_22
# %bb.19:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB6_17 Depth=1
	move	$a0, $s2
	.p2align	4, , 16
.LBB6_20:                               # %.lr.ph.i
                                        #   Parent Loop BB6_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a0, 8
	beq	$a3, $s5, .LBB6_16
# %bb.21:                               #   in Loop: Header=BB6_20 Depth=2
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB6_20
.LBB6_22:                               # %.loopexit
                                        #   in Loop: Header=BB6_17 Depth=1
	ld.w	$a0, $s1, 72
	add.d	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	addi.w	$a0, $a0, -1
	bltz	$a0, .LBB6_15
# %bb.23:                               # %.lr.ph121.preheader
                                        #   in Loop: Header=BB6_17 Depth=1
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	move	$a0, $zero
	bstrpick.d	$s6, $s4, 31, 0
	alsl.d	$s7, $s5, $s3, 3
	move	$s8, $s3
	.p2align	4, , 16
.LBB6_24:                               # %.lr.ph121
                                        #   Parent Loop BB6_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$fp, $a0
	ori	$s0, $zero, 1
	beq	$s6, $a0, .LBB6_27
# %bb.25:                               #   in Loop: Header=BB6_24 Depth=2
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s8, 0
	pcaddu18i	$ra, %call36(list_HasIntersection)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_27
# %bb.26:                               #   in Loop: Header=BB6_24 Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$s5, $a0, 8
	st.d	$s2, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$s0, $zero
	st.d	$fp, $a0, 8
	st.d	$s3, $a0, 0
.LBB6_27:                               #   in Loop: Header=BB6_24 Depth=2
	beqz	$s0, .LBB6_29
# %bb.28:                               #   in Loop: Header=BB6_24 Depth=2
	ld.w	$a1, $s1, 64
	ld.w	$a2, $s1, 68
	ld.w	$a3, $s1, 72
	addi.d	$a0, $fp, 1
	add.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	addi.w	$a1, $a1, -1
	addi.d	$s8, $s8, 8
	blt	$fp, $a1, .LBB6_24
.LBB6_29:                               # %._crit_edge
                                        #   in Loop: Header=BB6_17 Depth=1
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	bnez	$s0, .LBB6_15
	b	.LBB6_16
.LBB6_30:                               # %.preheader.loopexit
	ld.w	$a3, $s1, 72
	add.d	$a0, $a4, $a3
	addi.w	$a0, $a0, -1
	bltz	$a0, .LBB6_36
.LBB6_31:                               # %.lr.ph138.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a4, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a5, $a4, %got_pc_lo12(memory_FREEDBYTES)
	move	$a7, $zero
	b	.LBB6_33
	.p2align	4, , 16
.LBB6_32:                               # %list_Delete.exit
                                        #   in Loop: Header=BB6_33 Depth=1
	add.d	$a4, $a2, $a1
	add.d	$a7, $a4, $a3
	addi.w	$t0, $a7, -1
	addi.d	$a7, $a6, 1
	bge	$a6, $t0, .LBB6_36
.LBB6_33:                               # %.lr.ph138
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_34 Depth 2
	move	$a6, $a7
	slli.d	$a4, $a7, 3
	ldx.d	$a4, $s3, $a4
	beqz	$a4, .LBB6_32
	.p2align	4, , 16
.LBB6_34:                               # %.lr.ph.i93
                                        #   Parent Loop BB6_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a0, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $a5, 0
	ld.d	$a7, $a4, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $a5, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a4, 0
	ld.d	$a1, $a0, 128
	st.d	$a4, $a1, 0
	move	$a4, $a7
	bnez	$a7, .LBB6_34
# %bb.35:                               # %list_Delete.exit.loopexit
                                        #   in Loop: Header=BB6_33 Depth=1
	ld.w	$a1, $s1, 64
	ld.w	$a2, $s1, 68
	ld.w	$a3, $s1, 72
	b	.LBB6_32
.LBB6_36:                               # %._crit_edge139
	add.d	$a0, $a4, $a3
	slli.w	$a0, $a0, 3
	ori	$a1, $zero, 1024
	bgeu	$a0, $a1, .LBB6_38
# %bb.37:
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	slli.d	$a0, $a0, 3
	ldx.d	$a2, $a1, $a0
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a3, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a4, $a2, 32
	ld.d	$a5, $a3, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a3, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s3, 0
	ldx.d	$a0, $a1, $a0
	st.d	$s3, $a0, 0
	bnez	$s2, .LBB6_44
	b	.LBB6_2
.LBB6_38:
	pcalau12i	$a1, %got_pc_hi20(memory_ALIGN)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ALIGN)
	pcalau12i	$a2, %got_pc_hi20(memory_OFFSET)
	ld.d	$a2, $a2, %got_pc_lo12(memory_OFFSET)
	ld.w	$a4, $a1, 0
	ld.wu	$a1, $a2, 0
	mod.wu	$a5, $a0, $a4
	sltui	$a6, $a5, 1
	sub.d	$a1, $s3, $a1
	ld.d	$a3, $a1, -16
	ld.d	$a2, $a1, -8
	sub.d	$a4, $a4, $a5
	masknez	$a4, $a4, $a6
	add.w	$a0, $a4, $a0
	beqz	$a3, .LBB6_46
# %bb.39:
	st.d	$a2, $a3, 8
	beqz	$a2, .LBB6_41
.LBB6_40:
	ld.d	$a1, $a1, -16
	st.d	$a1, $a2, 0
.LBB6_41:
	pcalau12i	$a1, %got_pc_hi20(memory_MARKSIZE)
	ld.d	$a1, $a1, %got_pc_lo12(memory_MARKSIZE)
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a1, %got_pc_lo12(memory_FREEDBYTES)
	pcalau12i	$a1, %got_pc_hi20(memory_MAXMEM)
	ld.d	$a1, $a1, %got_pc_lo12(memory_MAXMEM)
	add.d	$a2, $a0, $a2
	ld.d	$a4, $a3, 0
	ld.d	$a0, $a1, 0
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a2, $a2, 16
	add.d	$a4, $a2, $a4
	st.d	$a4, $a3, 0
	bltz	$a0, .LBB6_43
# %bb.42:
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 0
.LBB6_43:
	addi.d	$a0, $s3, -16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB6_2
.LBB6_44:                               # %.lr.ph.i100.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB6_45:                               # %.lr.ph.i100
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s2, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s2, 0
	ld.d	$a2, $a0, 128
	st.d	$s2, $a2, 0
	move	$s2, $a5
	bnez	$a5, .LBB6_45
	b	.LBB6_2
.LBB6_46:
	pcalau12i	$a3, %got_pc_hi20(memory_BIGBLOCKS)
	ld.d	$a3, $a3, %got_pc_lo12(memory_BIGBLOCKS)
	st.d	$a2, $a3, 0
	bnez	$a2, .LBB6_40
	b	.LBB6_41
.Lfunc_end6:
	.size	top_GetLiteralsForSplitting, .Lfunc_end6-top_GetLiteralsForSplitting
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rf"
	.size	.L.str, 3

	.type	top_RemoveFileOptId,@object     # @top_RemoveFileOptId
	.local	top_RemoveFileOptId
	.comm	top_RemoveFileOptId,4,4
	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\n\t          %s %s"
	.size	.L.str.1, 18

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"V 2.1"
	.size	.L.str.2, 6

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"\n\t       Usage: FLOTTER [options] [<input-file>] [<output-file>]\n"
	.size	.L.str.3, 66

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"\n\t       Usage: SPASS [options] [<input-file>] \n"
	.size	.L.str.4, 49

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Possible options:\n"
	.size	.L.str.5, 19

	.type	top_InputFile,@object           # @top_InputFile
	.local	top_InputFile
	.comm	top_InputFile,8,8
	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"r"
	.size	.L.str.6, 2

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"\n No formulae and clauses found in input file!\n"
	.size	.L.str.7, 48

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"axiom%d"
	.size	.L.str.8, 8

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"\nAdded label %s for axiom \n"
	.size	.L.str.9, 28

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"declaration%d"
	.size	.L.str.10, 14

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"\nAdded label %s for declaration \n"
	.size	.L.str.11, 34

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"\nSPASS %s "
	.size	.L.str.12, 11

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"\nSPASS beiseite: "
	.size	.L.str.13, 18

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Ran out of time."
	.size	.L.str.14, 17

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Maximal number of loops exceeded."
	.size	.L.str.15, 34

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Proof found."
	.size	.L.str.16, 13

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Completion found."
	.size	.L.str.17, 18

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"\nProblem: %s "
	.size	.L.str.18, 14

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Read from stdin."
	.size	.L.str.19, 17

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"\nSPASS derived %d clauses,"
	.size	.L.str.20, 27

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	" backtracked %d clauses"
	.size	.L.str.21, 24

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	" and kept %d clauses."
	.size	.L.str.22, 22

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"\nSPASS spent\t"
	.size	.L.str.23, 14

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	" on the problem.\n\t\t"
	.size	.L.str.24, 20

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	" for the input.\n\t\t"
	.size	.L.str.25, 19

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	" for the FLOTTER CNF translation.\n\t\t"
	.size	.L.str.26, 37

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	" for inferences.\n\t\t"
	.size	.L.str.27, 20

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	" for the backtracking.\n\t\t"
	.size	.L.str.28, 26

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	" for the reduction."
	.size	.L.str.29, 20

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"{*SPASS V 2.1 *}"
	.size	.L.str.30, 17

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"SPASS"
	.size	.L.str.31, 6

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	".model"
	.size	.L.str.32, 7

	.type	.L.str.33,@object               # @.str.33
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.33:
	.asciz	".clauses"
	.size	.L.str.33, 9

	.type	.L.str.34,@object               # @.str.34
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.34:
	.asciz	"w"
	.size	.L.str.34, 2

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"{*Completion_by_SPASS*}"
	.size	.L.str.35, 24

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"satisfiable"
	.size	.L.str.36, 12

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"{*Clauses_generated_by_SPASS*}"
	.size	.L.str.37, 31

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"unknown"
	.size	.L.str.38, 8

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"\nCompletion printed to: %s\n"
	.size	.L.str.39, 28

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"\nClauses printed to: %s\n"
	.size	.L.str.40, 25

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"\n\n The saturated set of worked-off clauses is :"
	.size	.L.str.41, 48

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"\nFormulae used in the proof :"
	.size	.L.str.42, 30

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"_SORT_"
	.size	.L.str.43, 7

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	" %s"
	.size	.L.str.44, 4

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"\n--------------------------SPASS-STOP------------------------------"
	.size	.L.str.45, 68

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"FLOTTER"
	.size	.L.str.46, 8

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"\n Error: Flag value %d is too small for flag %s.\n"
	.size	.L.str.47, 50

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"\n Error: Flag value %d is too large for flag %s.\n"
	.size	.L.str.48, 50

	.type	.L.str.49,@object               # @.str.49
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.49:
	.asciz	"\n\tCNF generated by FLOTTER V 2.1 *}"
	.size	.L.str.49, 36

	.type	.L.str.50,@object               # @.str.50
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.50:
	.asciz	"\nFLOTTER needed\t"
	.size	.L.str.50, 17

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	" for the input."
	.size	.L.str.51, 16

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"\t\t"
	.size	.L.str.52, 3

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	" for the  CNF translation."
	.size	.L.str.53, 27

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"--------------------------SPASS-START-----------------------------"
	.size	.L.str.55, 67

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"Input Problem:"
	.size	.L.str.56, 15

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"\nProcessed Problem:"
	.size	.L.str.57, 20

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"\nWorked Off Clauses:"
	.size	.L.str.58, 21

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"\nUsable Clauses:"
	.size	.L.str.59, 17

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"\n\t Split Backtracking level %d:"
	.size	.L.str.60, 32

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"\nDerived: "
	.size	.L.str.61, 11

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"\nEmptyClause: "
	.size	.L.str.62, 15

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"\n\n\t ---- New Clause %s Bound: %2d ----\n"
	.size	.L.str.63, 40

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"Term Depth"
	.size	.L.str.64, 11

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"Weight"
	.size	.L.str.65, 7

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"\n\tGiven clause: "
	.size	.L.str.66, 17

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym memory_FreeAllMem
	.addrsig_sym cnf_LabelEqual
	.addrsig_sym clause_CompareAbstractLEQ
	.addrsig_sym symbol_Delete
