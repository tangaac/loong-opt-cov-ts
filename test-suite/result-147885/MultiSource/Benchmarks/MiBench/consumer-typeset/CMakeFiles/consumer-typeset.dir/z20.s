	.file	"z20.c"
	.text
	.globl	FlushGalley                     # -- Begin function FlushGalley
	.p2align	5
	.type	FlushGalley,@function
FlushGalley:                            # @FlushGalley
# %bb.0:
	addi.d	$sp, $sp, -1568
	st.d	$ra, $sp, 1560                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1552                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1544                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1536                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1528                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1520                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1512                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1504                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1496                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1488                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1480                  # 8-byte Folded Spill
	move	$s1, $a0
	ld.bu	$a0, $a0, 43
	move	$s0, $zero
	andi	$a0, $a0, 1
	sltui	$a2, $a0, 1
	slli.d	$a1, $a2, 3
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	xori	$a0, $a0, 1
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ori	$a0, $zero, 19
	masknez	$a0, $a0, $a2
	ori	$a1, $zero, 17
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ori	$a0, $zero, 16
	masknez	$a0, $a0, $a2
	ori	$a1, $zero, 8
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s2, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(InputSym)
	ld.d	$a0, $a0, %got_pc_lo12(InputSym)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	lu12i.w	$a0, -393217
	ori	$a0, $a0, 4095
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	lu12i.w	$a0, 2047
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 144                  # 16-byte Folded Spill
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$s1, $sp, 312                   # 8-byte Folded Spill
	st.d	$s2, $sp, 320                   # 8-byte Folded Spill
.LBB0_1:                                # %.backedge
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #     Child Loop BB0_10 Depth 2
                                        #     Child Loop BB0_236 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_33 Depth 3
                                        #       Child Loop BB0_100 Depth 3
                                        #       Child Loop BB0_102 Depth 3
                                        #       Child Loop BB0_115 Depth 3
                                        #       Child Loop BB0_120 Depth 3
                                        #       Child Loop BB0_59 Depth 3
                                        #         Child Loop BB0_60 Depth 4
                                        #       Child Loop BB0_42 Depth 3
                                        #       Child Loop BB0_72 Depth 3
                                        #     Child Loop BB0_170 Depth 2
                                        #       Child Loop BB0_181 Depth 3
                                        #     Child Loop BB0_217 Depth 2
                                        #     Child Loop BB0_242 Depth 2
                                        #     Child Loop BB0_324 Depth 2
                                        #     Child Loop BB0_224 Depth 2
                                        #     Child Loop BB0_229 Depth 2
                                        #     Child Loop BB0_156 Depth 2
                                        #     Child Loop BB0_271 Depth 2
                                        #     Child Loop BB0_273 Depth 2
                                        #     Child Loop BB0_277 Depth 2
                                        #     Child Loop BB0_377 Depth 2
                                        #     Child Loop BB0_400 Depth 2
                                        #       Child Loop BB0_401 Depth 3
                                        #       Child Loop BB0_404 Depth 3
                                        #     Child Loop BB0_417 Depth 2
                                        #       Child Loop BB0_418 Depth 3
                                        #     Child Loop BB0_438 Depth 2
                                        #     Child Loop BB0_443 Depth 2
	ld.bu	$a0, $s1, 32
	ori	$a1, $zero, 8
	beq	$a0, $a1, .LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a4, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a5, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s6, $s1, 24
	bne	$s6, $s1, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a4, $s2, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s1, 24
	.p2align	4, , 16
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s6, $s6, 0
	ld.bu	$a0, $s6, 32
	beqz	$a0, .LBB0_5
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	ori	$a1, $zero, 119
	beq	$a0, $a1, .LBB0_474
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	ori	$a1, $zero, 122
	beq	$a0, $a1, .LBB0_15
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	ori	$a1, $zero, 120
	bne	$a0, $a1, .LBB0_16
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	addi.d	$a1, $sp, 1472
	addi.d	$a2, $sp, 1464
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AttachGalley)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s1, 24
	.p2align	4, , 16
.LBB0_10:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s6, $s6, 0
	ld.bu	$a1, $s6, 32
	beqz	$a1, .LBB0_10
# %bb.11:                               #   in Loop: Header=BB0_1 Depth=1
	ori	$a1, $zero, 5
	bltu	$a1, $a0, .LBB0_21
# %bb.12:                               #   in Loop: Header=BB0_1 Depth=1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI0_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 1472
	beqz	$a0, .LBB0_319
# %bb.14:                               #   in Loop: Header=BB0_1 Depth=1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(FlushInners)
	jirl	$ra, $ra, 0
	b	.LBB0_1
	.p2align	4, , 16
.LBB0_15:                               #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $s6, 80
	ld.d	$a0, $a0, 80
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	bne	$a0, $a1, .LBB0_22
	b	.LBB0_475
	.p2align	4, , 16
.LBB0_16:                               #   in Loop: Header=BB0_1 Depth=1
	move	$fp, $s0
	ld.d	$s0, $s2, 0
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a2, $a0, %pc_lo12(.L.str.7)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a5, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	move	$a3, $zero
	move	$a4, $s0
	move	$s0, $fp
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB0_22
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	ld.hu	$a0, $s1, 42
	lu12i.w	$a1, 1
	and	$a0, $a0, $a1
	bnez	$a0, .LBB0_235
# %bb.18:                               #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $s6, 80
	pcalau12i	$a1, %got_pc_hi20(ForceGalleySym)
	ld.d	$a1, $a1, %got_pc_lo12(ForceGalleySym)
	ld.d	$a0, $a0, 80
	ld.d	$a1, $a1, 0
	beq	$a0, $a1, .LBB0_235
# %bb.19:                               #   in Loop: Header=BB0_1 Depth=1
	ori	$fp, $zero, 1
	bnez	$s0, .LBB0_238
# %bb.20:                               #   in Loop: Header=BB0_1 Depth=1
	ld.hu	$a0, $s6, 42
	bstrpick.d	$fp, $a0, 5, 5
	b	.LBB0_238
.LBB0_21:                               #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a4, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a5, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB0_22:                               #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s4, $s6, 80
	ld.wu	$a0, $s4, 40
	lu12i.w	$a1, 393216
	and	$a1, $a0, $a1
	bnez	$a1, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_1 Depth=1
	lu12i.w	$a1, 131072
	or	$a0, $a0, $a1
	st.w	$a0, $s4, 40
.LBB0_24:                               #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s2, $s1, 8
	st.d	$zero, $sp, 1472
	beq	$s2, $s1, .LBB0_459
# %bb.25:                               # %.preheader1018.lr.ph
                                        #   in Loop: Header=BB0_1 Depth=1
	st.d	$zero, $sp, 256                 # 8-byte Folded Spill
	st.d	$zero, $sp, 232                 # 8-byte Folded Spill
	st.d	$zero, $sp, 240                 # 8-byte Folded Spill
	move	$s8, $zero
	srli.d	$a0, $a0, 16
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	and	$a0, $a1, $a0
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	addi.d	$s7, $s4, 24
	addi.d	$a0, $s4, 16
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	masknez	$a1, $s7, $a3
	maskeqz	$a2, $a0, $a3
	or	$a1, $a2, $a1
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $s7, $a3
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	b	.LBB0_29
	.p2align	4, , 16
.LBB0_26:                               # %.loopexit1015
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.hu	$a0, $s0, 44
	andi	$a0, $a0, 128
	beqz	$a0, .LBB0_330
.LBB0_27:                               #   in Loop: Header=BB0_29 Depth=2
	move	$s0, $s3
	move	$a2, $s8
	st.d	$s1, $sp, 264                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 312                   # 8-byte Folded Reload
.LBB0_28:                               # %.thread981
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$s2, $s2, 8
	move	$s8, $a2
	beq	$s2, $s1, .LBB0_452
.LBB0_29:                               # %.preheader1018
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_33 Depth 3
                                        #       Child Loop BB0_100 Depth 3
                                        #       Child Loop BB0_102 Depth 3
                                        #       Child Loop BB0_115 Depth 3
                                        #       Child Loop BB0_120 Depth 3
                                        #       Child Loop BB0_59 Depth 3
                                        #         Child Loop BB0_60 Depth 4
                                        #       Child Loop BB0_42 Depth 3
                                        #       Child Loop BB0_72 Depth 3
	move	$a0, $s2
	.p2align	4, , 16
.LBB0_30:                               #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_30
# %bb.31:                               #   in Loop: Header=BB0_29 Depth=2
	ori	$a2, $zero, 9
	bne	$a1, $a2, .LBB0_34
# %bb.32:                               #   in Loop: Header=BB0_29 Depth=2
	st.d	$a0, $sp, 1464
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	.p2align	4, , 16
.LBB0_33:                               #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_33
.LBB0_34:                               # %.loopexit1017
                                        #   in Loop: Header=BB0_29 Depth=2
	addi.d	$a2, $a1, -1
	st.d	$a0, $sp, 1464
	ori	$a3, $zero, 137
	bltu	$a3, $a2, .LBB0_94
# %bb.35:                               # %.loopexit1017
                                        #   in Loop: Header=BB0_29 Depth=2
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LJTI0_1)
	addi.d	$a3, $a3, %pc_lo12(.LJTI0_1)
	ldx.w	$a2, $a3, $a2
	add.d	$a3, $a3, $a2
	ori	$a2, $zero, 1
	jr	$a3
.LBB0_36:                               #   in Loop: Header=BB0_29 Depth=2
	ld.wu	$a2, $a0, 40
	ld.wu	$a3, $s4, 40
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	and	$a2, $a2, $a4
	srli.d	$a3, $a3, 29
	bstrins.d	$a2, $a3, 30, 29
	st.w	$a2, $a0, 40
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_58
.LBB0_37:                               #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_55
# %bb.38:                               #   in Loop: Header=BB0_29 Depth=2
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	bnez	$s1, .LBB0_54
# %bb.39:                               #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	beq	$a0, $a1, .LBB0_41
# %bb.40:                               #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a5, $a0, %pc_lo12(.L.str.11)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_41:                               #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $s7, 0
	move	$s1, $a0
	.p2align	4, , 16
.LBB0_42:                               #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s1, $s1, 0
	ld.bu	$a1, $s1, 32
	beqz	$a1, .LBB0_42
# %bb.43:                               #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	beq	$a1, $a2, .LBB0_45
# %bb.44:                               #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a5, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
.LBB0_45:                               #   in Loop: Header=BB0_29 Depth=2
	addi.d	$a2, $sp, 1416
	addi.d	$a3, $sp, 1408
	addi.d	$a4, $sp, 1400
	addi.d	$a5, $sp, 1392
	addi.d	$a6, $sp, 1428
	move	$a1, $zero
	pcaddu18i	$ra, %call36(SetNeighbours)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1416
	bnez	$a0, .LBB0_48
# %bb.46:                               #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 1464
	ld.bu	$a0, $a0, 32
	addi.d	$a0, $a0, -2
	ori	$a1, $zero, 7
	bltu	$a0, $a1, .LBB0_48
# %bb.47:                               #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a5, $a0, %pc_lo12(.L.str.13)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_48:                               #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 1400
	beqz	$a0, .LBB0_50
# %bb.49:                               #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a5, $a0, %pc_lo12(.L.str.14)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_50:                               #   in Loop: Header=BB0_29 Depth=2
	ld.w	$a0, $sp, 1428
	ori	$a1, $zero, 153
	beq	$a0, $a1, .LBB0_53
# %bb.51:                               #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 1464
	ld.bu	$a0, $a0, 32
	addi.d	$a0, $a0, -2
	ori	$a1, $zero, 7
	bltu	$a0, $a1, .LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a5, $a0, %pc_lo12(.L.str.15)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_53:                               #   in Loop: Header=BB0_29 Depth=2
	addi.d	$a0, $s1, 48
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	slli.d	$a1, $a2, 2
	ldx.w	$a3, $a0, $a1
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a3, $s1, 56
	ldx.w	$a1, $a3, $a1
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	slli.d	$a1, $fp, 2
	ldx.w	$a0, $a0, $a1
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ldx.w	$a0, $a3, $a1
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	addi.d	$a1, $sp, 1448
	addi.d	$a3, $sp, 1384
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 1432
	addi.d	$a3, $sp, 1384
	move	$a0, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1448
	ld.w	$a1, $sp, 1452
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	xor	$a0, $a0, $a4
	ld.w	$a2, $sp, 1456
	sltu	$a0, $zero, $a0
	xor	$a3, $a1, $a4
	sltu	$a3, $zero, $a3
	xor	$a2, $a2, $a4
	sltu	$a2, $zero, $a2
	maskeqz	$a2, $a1, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a1, $a3
	or	$a2, $a3, $a2
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
.LBB0_54:                               #   in Loop: Header=BB0_29 Depth=2
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1464
	ld.bu	$a1, $a0, 32
	addi.d	$a1, $a1, -2
	ori	$a2, $zero, 7
	bgeu	$a1, $a2, .LBB0_75
.LBB0_55:                               #   in Loop: Header=BB0_29 Depth=2
	ld.d	$s1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
.LBB0_56:                               #   in Loop: Header=BB0_29 Depth=2
	ori	$s3, $zero, 1
	beqz	$s0, .LBB0_70
# %bb.57:                               #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 1472
	bnez	$a0, .LBB0_71
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_58:                               # %.preheader1016
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a2, $s2, 8
	beq	$a2, $s1, .LBB0_66
.LBB0_59:                               # %.preheader
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_60 Depth 4
	move	$a3, $a2
	.p2align	4, , 16
.LBB0_60:                               #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        #       Parent Loop BB0_59 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a3, $a3, 16
	ld.bu	$a4, $a3, 32
	beqz	$a4, .LBB0_60
# %bb.61:                               #   in Loop: Header=BB0_59 Depth=3
	addi.d	$a5, $a4, -121
	ori	$a6, $zero, 2
	bltu	$a5, $a6, .LBB0_146
# %bb.62:                               #   in Loop: Header=BB0_59 Depth=3
	ori	$a5, $zero, 1
	bne	$a4, $a5, .LBB0_65
# %bb.63:                               #   in Loop: Header=BB0_59 Depth=3
	ld.hu	$a3, $a3, 44
	andi	$a3, $a3, 512
	bnez	$a3, .LBB0_65
# %bb.64:                               #   in Loop: Header=BB0_59 Depth=3
	ld.d	$a2, $s1, 0
.LBB0_65:                               # %.loopexit
                                        #   in Loop: Header=BB0_59 Depth=3
	ld.d	$a2, $a2, 8
	bne	$a2, $s1, .LBB0_59
.LBB0_66:                               # %._crit_edge
                                        #   in Loop: Header=BB0_29 Depth=2
	ori	$a2, $zero, 18
	bne	$a1, $a2, .LBB0_37
# %bb.67:                               #   in Loop: Header=BB0_29 Depth=2
	pcaddu18i	$ra, %call36(VerticalHyphenate)
	jirl	$ra, $ra, 0
	b	.LBB0_37
.LBB0_68:                               #   in Loop: Header=BB0_29 Depth=2
	ld.wu	$a1, $a0, 40
	ld.wu	$a2, $s4, 40
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	and	$a1, $a1, $a3
	srli.d	$a2, $a2, 29
	bstrins.d	$a1, $a2, 30, 29
	st.w	$a1, $a0, 40
.LBB0_69:                               # %.thread981
                                        #   in Loop: Header=BB0_29 Depth=2
	move	$a2, $s8
	b	.LBB0_28
.LBB0_70:                               #   in Loop: Header=BB0_29 Depth=2
	ld.hu	$a0, $s6, 42
	bstrpick.d	$s3, $a0, 5, 5
	ld.d	$a0, $sp, 1472
	beqz	$a0, .LBB0_27
.LBB0_71:                               #   in Loop: Header=BB0_29 Depth=2
	ld.d	$s0, $s2, 8
	ld.bu	$a0, $s0, 32
	bnez	$a0, .LBB0_331
	.p2align	4, , 16
.LBB0_72:                               # %.preheader1014
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB0_72
# %bb.73:                               # %.preheader1014
                                        #   in Loop: Header=BB0_29 Depth=2
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB0_26
# %bb.74:                               #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a5, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB0_26
.LBB0_75:                               #   in Loop: Header=BB0_29 Depth=2
	move	$s3, $s0
	ld.d	$a1, $sp, 1408
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a0, 2
	ld.w	$s0, $a0, 56
	ld.d	$a2, $sp, 1416
	alsl.d	$a1, $a3, $a1, 2
	ld.w	$s1, $a1, 56
	ld.w	$a1, $a0, 48
	addi.d	$a3, $a2, 44
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	add.d	$a0, $fp, $a0
	sub.w	$a5, $a0, $s1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	addi.w	$a4, $a0, 0
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(ActualGap)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 1416
	ld.hu	$a2, $a1, 44
	bstrpick.d	$a2, $a2, 12, 10
	slli.d	$a2, $a2, 10
	ori	$a3, $zero, 2048
	bne	$a2, $a3, .LBB0_78
# %bb.76:                               #   in Loop: Header=BB0_29 Depth=2
	ld.h	$a1, $a1, 46
	lu12i.w	$a2, 1
	blt	$a2, $a1, .LBB0_334
# %bb.77:                               #   in Loop: Header=BB0_29 Depth=2
	move	$a3, $fp
	ld.w	$a1, $sp, 1448
	addi.w	$a2, $fp, 0
	bge	$a1, $a2, .LBB0_79
	b	.LBB0_334
.LBB0_78:                               #   in Loop: Header=BB0_29 Depth=2
	ld.w	$a1, $sp, 1448
	addi.w	$a2, $fp, 0
	move	$a3, $fp
	blt	$a1, $a2, .LBB0_334
.LBB0_79:                               #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	add.d	$a1, $s0, $a1
	ld.w	$a2, $sp, 1452
	sub.d	$a1, $a1, $s1
	add.w	$fp, $a1, $a0
	add.w	$a0, $fp, $a3
	blt	$a2, $a0, .LBB0_334
# %bb.80:                               #   in Loop: Header=BB0_29 Depth=2
	ld.w	$a0, $sp, 1456
	blt	$a0, $fp, .LBB0_334
# %bb.81:                               #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a2, 104
	beqz	$a0, .LBB0_83
# %bb.82:                               #   in Loop: Header=BB0_29 Depth=2
	ld.w	$a1, $a2, 160
	ori	$a3, $zero, 1
	blt	$a1, $a3, .LBB0_335
.LBB0_83:                               #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a1, $sp, 1464
	ld.hu	$a4, $a2, 42
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a1, 2
	ld.w	$a2, $a3, 48
	andi	$a4, $a4, 32
	bnez	$a4, .LBB0_85
# %bb.84:                               #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	addi.w	$a4, $a4, 0
	slt	$a5, $a2, $a4
	ld.w	$a3, $a3, 56
	masknez	$a2, $a2, $a5
	maskeqz	$a4, $a4, $a5
	or	$s1, $a4, $a2
	b	.LBB0_86
.LBB0_85:                               #   in Loop: Header=BB0_29 Depth=2
	ld.w	$a3, $a3, 56
	move	$s1, $zero
	add.w	$a3, $a3, $a2
.LBB0_86:                               #   in Loop: Header=BB0_29 Depth=2
	move	$s0, $s3
	ld.w	$a2, $sp, 1432
	blt	$a2, $s1, .LBB0_337
# %bb.87:                               #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 0
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	ld.w	$a5, $sp, 1436
	maskeqz	$a2, $a2, $a4
	or	$s5, $a2, $a3
	add.w	$a2, $s1, $s5
	blt	$a5, $a2, .LBB0_337
# %bb.88:                               #   in Loop: Header=BB0_29 Depth=2
	ld.w	$a2, $sp, 1440
	blt	$a2, $s5, .LBB0_337
# %bb.89:                               #   in Loop: Header=BB0_29 Depth=2
	st.d	$a1, $sp, 1408
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_56
# %bb.90:                               #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 160
	addi.d	$a0, $a0, -1
	st.w	$a0, $a1, 160
	b	.LBB0_56
.LBB0_91:                               #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 1472
	bnez	$a0, .LBB0_129
# %bb.92:                               #   in Loop: Header=BB0_29 Depth=2
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a0, 17
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a3, $a0, %got_pc_lo12(zz_size)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	st.w	$a2, $a3, 0
	beqz	$a0, .LBB0_127
# %bb.93:                               #   in Loop: Header=BB0_29 Depth=2
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a0, $a3, 0
	ld.d	$a3, $a0, 0
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a3, $a1, 0
	b	.LBB0_128
.LBB0_94:                               #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	move	$fp, $s0
	ld.d	$s0, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a2, $a0, %pc_lo12(.L.str.7)
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a5, $a0, %pc_lo12(.L.str.18)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	move	$a3, $zero
	move	$a4, $s0
	move	$s0, $fp
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB0_69
.LBB0_95:                               #   in Loop: Header=BB0_29 Depth=2
	ld.wu	$a1, $a0, 40
	ld.wu	$a2, $s4, 40
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	and	$a1, $a1, $a3
	srli.d	$a2, $a2, 29
	bstrins.d	$a1, $a2, 30, 29
	st.w	$a1, $a0, 40
	st.d	$a0, $sp, 1416
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	beqz	$a1, .LBB0_108
# %bb.96:                               #   in Loop: Header=BB0_29 Depth=2
	st.d	$s2, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
.LBB0_97:                               #   in Loop: Header=BB0_29 Depth=2
	ld.hu	$a0, $a0, 44
	andi	$a0, $a0, 512
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	bnez	$a0, .LBB0_69
# %bb.98:                               #   in Loop: Header=BB0_29 Depth=2
	ld.h	$a0, $s1, 42
	ori	$a0, $a0, 32
	st.h	$a0, $s1, 42
	b	.LBB0_69
.LBB0_99:                               #   in Loop: Header=BB0_29 Depth=2
	move	$fp, $s0
	ld.d	$a0, $a0, 8
	.p2align	4, , 16
.LBB0_100:                              #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_100
# %bb.101:                              #   in Loop: Header=BB0_29 Depth=2
	ld.d	$s0, $a0, 24
	ld.d	$a0, $a0, 16
	beq	$s0, $a0, .LBB0_111
	.p2align	4, , 16
.LBB0_102:                              # %.preheader1012
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s0, $s0, 0
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB0_102
# %bb.103:                              # %.preheader1012
                                        #   in Loop: Header=BB0_29 Depth=2
	ori	$a1, $zero, 124
	beq	$a0, $a1, .LBB0_105
# %bb.104:                              #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a5, $a0, %pc_lo12(.L.str.10)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_105:                              # %.loopexit1013
                                        #   in Loop: Header=BB0_29 Depth=2
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(CheckComponentOrder)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 157
	beq	$a0, $a1, .LBB0_113
# %bb.106:                              # %.loopexit1013
                                        #   in Loop: Header=BB0_29 Depth=2
	ori	$a1, $zero, 155
	beq	$a0, $a1, .LBB0_449
# %bb.107:                              # %.loopexit1013
                                        #   in Loop: Header=BB0_29 Depth=2
	move	$a2, $s8
	move	$s0, $fp
	ori	$a1, $zero, 156
	bne	$a0, $a1, .LBB0_28
	b	.LBB0_147
.LBB0_108:                              #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	beqz	$a1, .LBB0_97
# %bb.109:                              #   in Loop: Header=BB0_29 Depth=2
	ld.hu	$a1, $a0, 44
	andi	$a1, $a1, 128
	bnez	$a1, .LBB0_97
# %bb.110:                              #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 240                   # 8-byte Folded Spill
	b	.LBB0_97
.LBB0_111:                              #   in Loop: Header=BB0_29 Depth=2
	ld.d	$s2, $s2, 0
	ld.d	$a0, $s2, 8
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a3, $a1, %got_pc_lo12(xx_link)
	ld.d	$a4, $a0, 24
	st.d	$a0, $a3, 0
	beq	$a4, $a0, .LBB0_137
# %bb.112:                              #   in Loop: Header=BB0_29 Depth=2
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	ld.d	$a2, $a0, 16
	st.d	$a4, $a1, 0
	st.d	$a2, $a4, 16
	st.d	$a4, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB0_138
.LBB0_113:                              #   in Loop: Header=BB0_29 Depth=2
	pcalau12i	$a0, %got_pc_hi20(xx_hold)
	ld.d	$a0, $a0, %got_pc_lo12(xx_hold)
	ld.d	$a1, $s0, 24
	st.d	$s0, $a0, 0
	bne	$a1, $s0, .LBB0_115
	b	.LBB0_120
	.p2align	4, , 16
.LBB0_114:                              #   in Loop: Header=BB0_115 Depth=3
	ld.bu	$a3, $a1, 32
	pcalau12i	$a4, %got_pc_hi20(zz_lengths)
	ld.d	$a4, $a4, %got_pc_lo12(zz_lengths)
	addi.d	$a5, $a3, -11
	sltui	$a5, $a5, 2
	addi.d	$a6, $a1, 33
	add.d	$a3, $a4, $a3
	masknez	$a3, $a3, $a5
	maskeqz	$a4, $a6, $a5
	or	$a3, $a4, $a3
	ld.bu	$a3, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(zz_free)
	ld.d	$a4, $a4, %got_pc_lo12(zz_free)
	pcalau12i	$a5, %got_pc_hi20(zz_size)
	ld.d	$a5, $a5, %got_pc_lo12(zz_size)
	slli.d	$a6, $a3, 3
	ldx.d	$a6, $a4, $a6
	st.d	$a1, $a2, 0
	st.w	$a3, $a5, 0
	st.d	$a6, $a1, 0
	ld.w	$a1, $a5, 0
	ld.d	$a2, $a2, 0
	ld.d	$s0, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $a4, $a1
	ld.d	$a1, $s0, 24
	beq	$a1, $s0, .LBB0_120
.LBB0_115:                              # %.lr.ph
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	pcalau12i	$a2, %got_pc_hi20(xx_link)
	ld.d	$a3, $a2, %got_pc_lo12(xx_link)
	ld.d	$a2, $a1, 24
	st.d	$a1, $a3, 0
	beq	$a2, $a1, .LBB0_117
# %bb.116:                              #   in Loop: Header=BB0_115 Depth=3
	pcalau12i	$a4, %got_pc_hi20(zz_res)
	ld.d	$a4, $a4, %got_pc_lo12(zz_res)
	ld.d	$a5, $a1, 16
	st.d	$a2, $a4, 0
	st.d	$a5, $a2, 16
	st.d	$a2, $a5, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
.LBB0_117:                              #   in Loop: Header=BB0_115 Depth=3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	ld.d	$a4, $a1, 8
	st.d	$a1, $a2, 0
	beq	$a4, $a1, .LBB0_114
# %bb.118:                              #   in Loop: Header=BB0_115 Depth=3
	pcalau12i	$a5, %got_pc_hi20(zz_res)
	ld.d	$a5, $a5, %got_pc_lo12(zz_res)
	st.d	$a4, $a5, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a4, 0
	ld.d	$a4, $a2, 0
	ld.d	$a1, $a5, 0
	ld.d	$a5, $a4, 0
	st.d	$a1, $a5, 8
	st.d	$a4, $a4, 0
	ld.d	$a1, $a3, 0
	st.d	$a4, $a4, 8
	b	.LBB0_114
	.p2align	4, , 16
.LBB0_119:                              #   in Loop: Header=BB0_120 Depth=3
	ld.bu	$a3, $a1, 32
	pcalau12i	$a4, %got_pc_hi20(zz_lengths)
	ld.d	$a4, $a4, %got_pc_lo12(zz_lengths)
	addi.d	$a5, $a3, -11
	sltui	$a5, $a5, 2
	addi.d	$a6, $a1, 33
	add.d	$a3, $a4, $a3
	masknez	$a3, $a3, $a5
	maskeqz	$a4, $a6, $a5
	or	$a3, $a4, $a3
	ld.bu	$a3, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(zz_free)
	ld.d	$a4, $a4, %got_pc_lo12(zz_free)
	pcalau12i	$a5, %got_pc_hi20(zz_size)
	ld.d	$a5, $a5, %got_pc_lo12(zz_size)
	slli.d	$a6, $a3, 3
	ldx.d	$a6, $a4, $a6
	st.d	$a1, $a2, 0
	st.w	$a3, $a5, 0
	st.d	$a6, $a1, 0
	ld.w	$a1, $a5, 0
	ld.d	$a2, $a2, 0
	ld.d	$s0, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $a4, $a1
.LBB0_120:                              # %.preheader1011
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $s0, 8
	beq	$a1, $s0, .LBB0_125
# %bb.121:                              # %.lr.ph1181
                                        #   in Loop: Header=BB0_120 Depth=3
	pcalau12i	$a2, %got_pc_hi20(xx_link)
	ld.d	$a3, $a2, %got_pc_lo12(xx_link)
	ld.d	$a2, $a1, 24
	st.d	$a1, $a3, 0
	beq	$a2, $a1, .LBB0_123
# %bb.122:                              #   in Loop: Header=BB0_120 Depth=3
	pcalau12i	$a4, %got_pc_hi20(zz_res)
	ld.d	$a4, $a4, %got_pc_lo12(zz_res)
	ld.d	$a5, $a1, 16
	st.d	$a2, $a4, 0
	st.d	$a5, $a2, 16
	st.d	$a2, $a5, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
.LBB0_123:                              #   in Loop: Header=BB0_120 Depth=3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	ld.d	$a4, $a1, 8
	st.d	$a1, $a2, 0
	beq	$a4, $a1, .LBB0_119
# %bb.124:                              #   in Loop: Header=BB0_120 Depth=3
	pcalau12i	$a5, %got_pc_hi20(zz_res)
	ld.d	$a5, $a5, %got_pc_lo12(zz_res)
	st.d	$a4, $a5, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a4, 0
	ld.d	$a4, $a2, 0
	ld.d	$a1, $a5, 0
	ld.d	$a5, $a4, 0
	st.d	$a1, $a5, 8
	st.d	$a4, $a4, 0
	ld.d	$a1, $a3, 0
	st.d	$a4, $a4, 8
	b	.LBB0_119
.LBB0_125:                              # %._crit_edge1182
                                        #   in Loop: Header=BB0_29 Depth=2
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.bu	$a1, $s0, 32
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	pcalau12i	$a2, %got_pc_hi20(zz_lengths)
	ld.d	$a2, $a2, %got_pc_lo12(zz_lengths)
	addi.d	$a3, $a1, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $s0, 33
	add.d	$a1, $a2, $a1
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $a4, $a3
	or	$a1, $a3, $a1
	ld.bu	$a4, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$a1, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a3, %got_pc_hi20(zz_size)
	ld.d	$a3, $a3, %got_pc_lo12(zz_size)
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a1, $a5
	st.d	$s0, $a0, 0
	st.w	$a4, $a3, 0
	st.d	$a5, $s0, 0
	ld.w	$a4, $a3, 0
	ld.d	$a5, $a0, 0
	slli.d	$a4, $a4, 3
	stx.d	$a5, $a1, $a4
	ld.d	$s2, $s2, 0
	ld.d	$a4, $s2, 8
	pcalau12i	$a5, %got_pc_hi20(xx_link)
	ld.d	$a6, $a5, %got_pc_lo12(xx_link)
	ld.d	$a7, $a4, 24
	st.d	$a4, $a6, 0
	beq	$a7, $a4, .LBB0_141
# %bb.126:                              #   in Loop: Header=BB0_29 Depth=2
	pcalau12i	$a5, %got_pc_hi20(zz_res)
	ld.d	$a5, $a5, %got_pc_lo12(zz_res)
	ld.d	$t0, $a4, 16
	st.d	$a7, $a5, 0
	st.d	$t0, $a7, 16
	st.d	$a7, $t0, 24
	st.d	$a4, $a4, 24
	st.d	$a4, $a4, 16
	b	.LBB0_142
.LBB0_127:                              #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB0_128:                              #   in Loop: Header=BB0_29 Depth=2
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $sp, 1472
.LBB0_129:                              #   in Loop: Header=BB0_29 Depth=2
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a3, $a0, %got_pc_lo12(zz_size)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	st.w	$a2, $a3, 0
	beqz	$a0, .LBB0_131
# %bb.130:                              #   in Loop: Header=BB0_29 Depth=2
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a0, $a3, 0
	ld.d	$a3, $a0, 0
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a3, $a1, 0
	b	.LBB0_132
.LBB0_131:                              #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB0_132:                              #   in Loop: Header=BB0_29 Depth=2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a3, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	ld.d	$a4, $sp, 1472
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a0, 8
	st.d	$a0, $a3, 0
	st.d	$a0, $a1, 0
	st.d	$a4, $a2, 0
	beqz	$a4, .LBB0_134
# %bb.133:                              #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a5, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $a1, 0
	ld.d	$a4, $a2, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a6, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a4, $a1, 0
	ld.d	$a0, $a3, 0
	st.d	$a4, $a6, 8
.LBB0_134:                              #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a3, $sp, 1464
	st.d	$a0, $a1, 0
	st.d	$a3, $a2, 0
	beqz	$a3, .LBB0_69
# %bb.135:                              #   in Loop: Header=BB0_29 Depth=2
	beqz	$a0, .LBB0_69
# %bb.136:                              #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a1, $a3, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a4, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a4, $a3, 16
	st.d	$a3, $a4, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	b	.LBB0_69
.LBB0_137:                              #   in Loop: Header=BB0_29 Depth=2
	move	$a4, $zero
.LBB0_138:                              #   in Loop: Header=BB0_29 Depth=2
	move	$s0, $fp
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	ld.d	$a5, $a0, 8
	st.d	$a4, $a1, 0
	st.d	$a0, $a2, 0
	beq	$a5, $a0, .LBB0_140
# %bb.139:                              #   in Loop: Header=BB0_29 Depth=2
	pcalau12i	$a4, %got_pc_hi20(zz_res)
	ld.d	$a4, $a4, %got_pc_lo12(zz_res)
	st.d	$a5, $a4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a5, 0
	ld.d	$a5, $a2, 0
	ld.d	$a0, $a4, 0
	ld.d	$a4, $a5, 0
	st.d	$a0, $a4, 8
	st.d	$a5, $a5, 0
	ld.d	$a0, $a3, 0
	st.d	$a5, $a5, 8
.LBB0_140:                              #   in Loop: Header=BB0_29 Depth=2
	ld.bu	$a3, $a0, 32
	pcalau12i	$a4, %got_pc_hi20(zz_lengths)
	ld.d	$a4, $a4, %got_pc_lo12(zz_lengths)
	addi.d	$a5, $a3, -11
	sltui	$a5, $a5, 2
	addi.d	$a6, $a0, 33
	add.d	$a3, $a4, $a3
	masknez	$a3, $a3, $a5
	maskeqz	$a4, $a6, $a5
	or	$a3, $a4, $a3
	ld.bu	$a3, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(zz_free)
	ld.d	$a4, $a4, %got_pc_lo12(zz_free)
	pcalau12i	$a5, %got_pc_hi20(zz_size)
	ld.d	$a5, $a5, %got_pc_lo12(zz_size)
	slli.d	$a6, $a3, 3
	ldx.d	$a6, $a4, $a6
	st.d	$a0, $a2, 0
	st.w	$a3, $a5, 0
	st.d	$a6, $a0, 0
	ld.w	$a3, $a5, 0
	ld.d	$a2, $a2, 0
	ld.d	$a0, $a1, 0
	slli.d	$a1, $a3, 3
	stx.d	$a2, $a4, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB0_69
	b	.LBB0_145
.LBB0_141:                              #   in Loop: Header=BB0_29 Depth=2
	move	$a7, $zero
.LBB0_142:                              #   in Loop: Header=BB0_29 Depth=2
	move	$s0, $fp
	pcalau12i	$a5, %got_pc_hi20(xx_tmp)
	ld.d	$a5, $a5, %got_pc_lo12(xx_tmp)
	ld.d	$t0, $a4, 8
	st.d	$a7, $a5, 0
	st.d	$a4, $a0, 0
	beq	$t0, $a4, .LBB0_144
# %bb.143:                              #   in Loop: Header=BB0_29 Depth=2
	pcalau12i	$a7, %got_pc_hi20(zz_res)
	ld.d	$a7, $a7, %got_pc_lo12(zz_res)
	st.d	$t0, $a7, 0
	ld.d	$a4, $a4, 0
	st.d	$a4, $t0, 0
	ld.d	$t0, $a0, 0
	ld.d	$a4, $a7, 0
	ld.d	$a7, $t0, 0
	st.d	$a4, $a7, 8
	st.d	$t0, $t0, 0
	ld.d	$a4, $a6, 0
	st.d	$t0, $t0, 8
.LBB0_144:                              #   in Loop: Header=BB0_29 Depth=2
	ld.bu	$a6, $a4, 32
	addi.d	$a7, $a6, -11
	sltui	$a7, $a7, 2
	addi.d	$t0, $a4, 33
	add.d	$a2, $a2, $a6
	masknez	$a2, $a2, $a7
	maskeqz	$a6, $t0, $a7
	or	$a2, $a6, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a6, $a2, 3
	ldx.d	$a6, $a1, $a6
	st.d	$a4, $a0, 0
	st.w	$a2, $a3, 0
	st.d	$a6, $a4, 0
	ld.w	$a2, $a3, 0
	ld.d	$a3, $a0, 0
	ld.d	$a0, $a5, 0
	slli.d	$a2, $a2, 3
	stx.d	$a3, $a1, $a2
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB0_69
.LBB0_145:                              #   in Loop: Header=BB0_29 Depth=2
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	b	.LBB0_69
	.p2align	4, , 16
.LBB0_146:                              #   in Loop: Header=BB0_1 Depth=1
	st.d	$a3, $sp, 1464
.LBB0_147:                              # %.loopexit1028
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 1472
	beqz	$a0, .LBB0_149
.LBB0_148:                              #   in Loop: Header=BB0_1 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB0_149:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	beqz	$a1, .LBB0_152
# %bb.150:                              #   in Loop: Header=BB0_1 Depth=1
	ori	$a3, $zero, 1
	move	$a0, $s1
	move	$a2, $s6
	pcaddu18i	$ra, %call36(Promote)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB0_152
# %bb.151:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a1, $a0, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.w	$a2, $a0, 0
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	move	$a0, $fp
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a1, $a0, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a2, $a0, 0
	move	$a0, $fp
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
.LBB0_152:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 1464
	ld.bu	$a1, $a0, 32
	ori	$a2, $zero, 121
	bne	$a1, $a2, .LBB0_213
# %bb.153:                              #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a1, %got_pc_hi20(AllowCrossDb)
	ld.d	$a1, $a1, %got_pc_lo12(AllowCrossDb)
	ld.d	$a2, $s1, 96
	ld.w	$a1, $a1, 0
	beqz	$a2, .LBB0_163
# %bb.154:                              #   in Loop: Header=BB0_1 Depth=1
	beqz	$a1, .LBB0_163
# %bb.155:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s7, $a2, 8
	.p2align	4, , 16
.LBB0_156:                              #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s7, $s7, 16
	ld.bu	$a0, $s7, 32
	beqz	$a0, .LBB0_156
# %bb.157:                              #   in Loop: Header=BB0_1 Depth=1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(SwitchScope)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s7, 34
	ld.d	$a1, $s7, 40
	ld.w	$a2, $s7, 36
	addi.d	$s1, $s7, 34
	pcaddu18i	$ra, %call36(ReadFromFile)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(UnSwitchScope)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB0_159
# %bb.158:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $sp, 1464
	ld.hu	$a0, $s1, 0
	move	$fp, $s0
	addi.d	$s0, $a1, 32
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a2, $a0, %pc_lo12(.L.str.26)
	ori	$a0, $zero, 20
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	move	$a4, $s0
	move	$s0, $fp
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_159:                              #   in Loop: Header=BB0_1 Depth=1
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	ld.bu	$a0, $s3, 32
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB0_161
# %bb.160:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a4, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a5, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_161:                              #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s6, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s6, 120
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$fp, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s5, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a0, 3
	ldx.d	$s0, $fp, $a1
	st.w	$a0, $s5, 0
	beqz	$s0, .LBB0_246
# %bb.162:                              #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s0, $a1, 0
	ld.d	$a1, $s0, 0
	alsl.d	$a0, $a0, $fp, 3
	st.d	$a1, $a0, 0
	b	.LBB0_247
.LBB0_163:                              #   in Loop: Header=BB0_1 Depth=1
	ld.hu	$a2, $a0, 42
	andi	$a2, $a2, 64
	beqz	$a2, .LBB0_221
# %bb.164:                              #   in Loop: Header=BB0_1 Depth=1
	beqz	$a1, .LBB0_221
# %bb.165:                              #   in Loop: Header=BB0_1 Depth=1
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 80
	ld.d	$a0, $a0, 80
	addi.d	$a1, $sp, 352
	pcaddu18i	$ra, %call36(FirstExternTarget)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_211
# %bb.166:                              # %.lr.ph1246.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$s0, $a0
	b	.LBB0_170
	.p2align	4, , 16
.LBB0_167:                              # %.thread996
                                        #   in Loop: Header=BB0_170 Depth=2
	st.d	$s3, $s4, 0
	move	$a1, $a0
.LBB0_168:                              #   in Loop: Header=BB0_170 Depth=2
	ld.d	$a2, $s3, 16
	st.d	$a0, $s3, 16
	ld.d	$a0, $a1, 16
	st.d	$a2, $s1, 0
	st.d	$s3, $a0, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB0_169:                              #   in Loop: Header=BB0_170 Depth=2
	ld.d	$a0, $sp, 1464
	ld.d	$a0, $a0, 80
	ld.d	$a0, $a0, 80
	addi.d	$a1, $sp, 352
	pcaddu18i	$ra, %call36(NextExternTarget)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$a0, .LBB0_211
.LBB0_170:                              # %.lr.ph1246
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_181 Depth 3
	ld.d	$a0, $sp, 1464
	ld.d	$a0, $a0, 80
	addi.d	$a1, $a0, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(GallTargEval)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_lengths)
	ld.d	$s3, $a1, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $s3, 132
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$fp, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s7, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a2, 3
	ldx.d	$s2, $fp, $a1
	move	$s1, $a0
	st.w	$a2, $s7, 0
	beqz	$s2, .LBB0_172
# %bb.171:                              #   in Loop: Header=BB0_170 Depth=2
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s2, $a0, 0
	ld.d	$a0, $s2, 0
	stx.d	$a0, $fp, $a1
	b	.LBB0_173
	.p2align	4, , 16
.LBB0_172:                              #   in Loop: Header=BB0_170 Depth=2
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s2, $a0
	st.d	$a0, $a1, 0
.LBB0_173:                              #   in Loop: Header=BB0_170 Depth=2
	ori	$a0, $zero, 132
	st.b	$a0, $s2, 32
	st.d	$s2, $s2, 24
	st.d	$s2, $s2, 0
	ld.bu	$a2, $s3, 0
	st.d	$s2, $s2, 16
	st.d	$s2, $s2, 8
	st.d	$s1, $s2, 80
	slli.d	$a1, $a2, 3
	ldx.d	$a0, $fp, $a1
	st.w	$a2, $s7, 0
	beqz	$a0, .LBB0_175
# %bb.174:                              #   in Loop: Header=BB0_170 Depth=2
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	stx.d	$a2, $fp, $a1
	b	.LBB0_176
	.p2align	4, , 16
.LBB0_175:                              #   in Loop: Header=BB0_170 Depth=2
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB0_176:                              #   in Loop: Header=BB0_170 Depth=2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $sp, 1464
	ld.d	$s8, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s5, $a1, %got_pc_lo12(zz_res)
	ld.d	$a1, $a2, 24
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$s4, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $s8, 0
	st.d	$a0, $s5, 0
	st.d	$a1, $s4, 0
	beqz	$a1, .LBB0_178
# %bb.177:                              #   in Loop: Header=BB0_170 Depth=2
	ld.d	$a2, $a1, 0
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	st.d	$a2, $a3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s4, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s8, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s5, 0
	st.d	$s2, $s4, 0
	bnez	$a0, .LBB0_179
	b	.LBB0_180
	.p2align	4, , 16
.LBB0_178:                              # %.thread1530
                                        #   in Loop: Header=BB0_170 Depth=2
	st.d	$s2, $s4, 0
.LBB0_179:                              #   in Loop: Header=BB0_170 Depth=2
	ld.d	$a1, $s2, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $s2, 16
	st.d	$s2, $a3, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_180:                              #   in Loop: Header=BB0_170 Depth=2
	ld.d	$s1, $s1, 0
	.p2align	4, , 16
.LBB0_181:                              #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_170 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s1, $s1, 16
	ld.bu	$a0, $s1, 32
	beqz	$a0, .LBB0_181
# %bb.182:                              #   in Loop: Header=BB0_170 Depth=2
	addi.d	$a0, $a0, -11
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB0_184
# %bb.183:                              #   in Loop: Header=BB0_170 Depth=2
	ld.d	$a4, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a5, $a0, %pc_lo12(.L.str.28)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_184:                              # %.loopexit1005
                                        #   in Loop: Header=BB0_170 Depth=2
	pcalau12i	$a0, %got_pc_hi20(OldCrossDb)
	ld.d	$a0, $a0, %got_pc_lo12(OldCrossDb)
	ld.d	$a0, $a0, 0
	addi.d	$s1, $s1, 64
	ori	$a1, $zero, 1
	addi.d	$a4, $sp, 864
	addi.d	$a5, $sp, 350
	addi.d	$a6, $sp, 1376
	addi.d	$a7, $sp, 332
	addi.d	$a2, $sp, 336
	st.d	$a2, $sp, 0
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(DbRetrieve)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_169
# %bb.185:                              #   in Loop: Header=BB0_170 Depth=2
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 96
	bnez	$a0, .LBB0_190
# %bb.186:                              #   in Loop: Header=BB0_170 Depth=2
	ld.bu	$a2, $s3, 17
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $fp, $a0
	st.w	$a2, $s7, 0
	beqz	$a0, .LBB0_188
# %bb.187:                              #   in Loop: Header=BB0_170 Depth=2
	st.d	$a0, $s4, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $fp, 3
	st.d	$a1, $a2, 0
	b	.LBB0_189
.LBB0_188:                              #   in Loop: Header=BB0_170 Depth=2
	ld.d	$a1, $s2, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 0
.LBB0_189:                              #   in Loop: Header=BB0_170 Depth=2
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	st.d	$a0, $a1, 96
.LBB0_190:                              #   in Loop: Header=BB0_170 Depth=2
	st.d	$s3, $sp, 304                   # 8-byte Folded Spill
	ld.bu	$a0, $s3, 147
	slli.d	$a1, $a0, 3
	ldx.d	$s3, $fp, $a1
	st.w	$a0, $s7, 0
	beqz	$s3, .LBB0_192
# %bb.191:                              #   in Loop: Header=BB0_170 Depth=2
	st.d	$s3, $s4, 0
	ld.d	$a0, $s3, 0
	stx.d	$a0, $fp, $a1
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	b	.LBB0_193
	.p2align	4, , 16
.LBB0_192:                              #   in Loop: Header=BB0_170 Depth=2
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $s2, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$a0, $s4, 0
.LBB0_193:                              #   in Loop: Header=BB0_170 Depth=2
	ld.h	$a0, $sp, 350
	st.d	$s3, $s3, 0
	ld.d	$a1, $sp, 1376
	st.h	$a0, $s3, 34
	ld.w	$a0, $sp, 332
	st.d	$a1, $s3, 40
	ori	$a1, $zero, 147
	st.b	$a1, $s3, 32
	st.d	$s3, $s3, 24
	st.w	$a0, $s3, 36
	st.d	$s0, $s3, 56
	ld.d	$a0, $sp, 336
	ld.d	$a2, $s2, 0
	st.d	$s3, $s3, 16
	st.d	$s3, $s3, 8
	st.d	$a0, $s3, 48
	ori	$a0, $zero, 11
	move	$a1, $s1
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.bu	$a2, $a1, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a1, $fp, $a3
	move	$s0, $a0
	st.w	$a2, $s7, 0
	beqz	$a1, .LBB0_195
# %bb.194:                              #   in Loop: Header=BB0_170 Depth=2
	st.d	$a1, $s4, 0
	ld.d	$a0, $a1, 0
	stx.d	$a0, $fp, $a3
	b	.LBB0_196
	.p2align	4, , 16
.LBB0_195:                              #   in Loop: Header=BB0_170 Depth=2
	ld.d	$a1, $s2, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB0_196:                              #   in Loop: Header=BB0_170 Depth=2
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	st.d	$a1, $s8, 0
	st.d	$a1, $s5, 0
	st.d	$s3, $s4, 0
	ld.d	$a0, $s3, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$s1, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a0, $s1, 0
	ld.d	$a0, $a1, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s4, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s1, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s8, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s5, 0
	st.d	$s0, $s4, 0
	beqz	$s0, .LBB0_199
# %bb.197:                              #   in Loop: Header=BB0_170 Depth=2
	beqz	$a0, .LBB0_199
# %bb.198:                              #   in Loop: Header=BB0_170 Depth=2
	ld.d	$a1, $s0, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s1, 0
	st.d	$a2, $s0, 16
	st.d	$s0, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_199:                              #   in Loop: Header=BB0_170 Depth=2
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a2, $s2, 0
	ori	$a0, $zero, 11
	addi.d	$a1, $sp, 864
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.bu	$a2, $a1, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a1, $fp, $a3
	move	$s0, $a0
	st.w	$a2, $s7, 0
	beqz	$a1, .LBB0_201
# %bb.200:                              #   in Loop: Header=BB0_170 Depth=2
	st.d	$a1, $s4, 0
	ld.d	$a0, $a1, 0
	stx.d	$a0, $fp, $a3
	b	.LBB0_202
	.p2align	4, , 16
.LBB0_201:                              #   in Loop: Header=BB0_170 Depth=2
	ld.d	$a1, $s2, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB0_202:                              #   in Loop: Header=BB0_170 Depth=2
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	st.d	$a1, $s8, 0
	st.d	$a1, $s5, 0
	st.d	$s3, $s4, 0
	ld.d	$a0, $s3, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $a1, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s4, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s1, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s8, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s5, 0
	st.d	$s0, $s4, 0
	beqz	$s0, .LBB0_205
# %bb.203:                              #   in Loop: Header=BB0_170 Depth=2
	beqz	$a0, .LBB0_205
# %bb.204:                              #   in Loop: Header=BB0_170 Depth=2
	ld.d	$a1, $s0, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s1, 0
	st.d	$a2, $s0, 16
	st.d	$s0, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_205:                              #   in Loop: Header=BB0_170 Depth=2
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $fp, $a0
	st.w	$a2, $s7, 0
	beqz	$a0, .LBB0_207
# %bb.206:                              #   in Loop: Header=BB0_170 Depth=2
	st.d	$a0, $s4, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $fp, 3
	st.d	$a1, $a2, 0
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	b	.LBB0_208
	.p2align	4, , 16
.LBB0_207:                              #   in Loop: Header=BB0_170 Depth=2
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $s2, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB0_208:                              #   in Loop: Header=BB0_170 Depth=2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 96
	st.d	$a0, $s8, 0
	st.d	$a0, $s5, 0
	st.d	$a1, $s4, 0
	beqz	$a1, .LBB0_167
# %bb.209:                              #   in Loop: Header=BB0_170 Depth=2
	ld.d	$a2, $a1, 0
	st.d	$a2, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s4, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s1, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s8, 0
	st.d	$a0, $a3, 8
	st.d	$a1, $s5, 0
	st.d	$s3, $s4, 0
	beqz	$a1, .LBB0_169
# %bb.210:                              # %._crit_edge1458
                                        #   in Loop: Header=BB0_170 Depth=2
	ld.d	$a0, $a1, 16
	b	.LBB0_168
.LBB0_211:                              # %._crit_edge1247
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 1464
	ld.hu	$a1, $a0, 42
	lu12i.w	$a2, 15
	ori	$a2, $a2, 4031
	and	$a1, $a1, $a2
	st.h	$a1, $a0, 42
	ld.d	$s1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $s1, 96
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	bnez	$a1, .LBB0_1
# %bb.212:                              # %._crit_edge1247._crit_edge
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.bu	$a1, $a0, 32
	.p2align	4, , 16
.LBB0_213:                              #   in Loop: Header=BB0_1 Depth=1
	ori	$a2, $zero, 121
	beq	$a1, $a2, .LBB0_221
# %bb.214:                              #   in Loop: Header=BB0_1 Depth=1
	ori	$a2, $zero, 122
	bne	$a1, $a2, .LBB0_478
# %bb.215:                              #   in Loop: Header=BB0_1 Depth=1
	ld.hu	$a1, $a0, 42
	andi	$a2, $a1, 1
	beqz	$a2, .LBB0_479
# %bb.216:                              #   in Loop: Header=BB0_1 Depth=1
	move	$fp, $s0
	ld.d	$s0, $a0, 8
	beq	$s0, $a0, .LBB0_240
	.p2align	4, , 16
.LBB0_217:                              # %.preheader1023
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $s0, 16
	ld.bu	$a1, $s0, 32
	beqz	$a1, .LBB0_217
# %bb.218:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $s0, 104
	beqz	$a1, .LBB0_220
# %bb.219:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $a0, 80
	move	$a0, $s0
	pcaddu18i	$ra, %call36(GazumpOptimize)
	jirl	$ra, $ra, 0
.LBB0_220:                              #   in Loop: Header=BB0_1 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(DetachGalley)
	jirl	$ra, $ra, 0
	move	$s0, $fp
	b	.LBB0_1
.LBB0_221:                              # %.thread1531
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.hu	$a1, $a0, 42
	andi	$a2, $a1, 1
	beqz	$a2, .LBB0_479
# %bb.222:                              #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a1, %got_pc_hi20(xx_hold)
	ld.d	$a1, $a1, %got_pc_lo12(xx_hold)
	ld.d	$a2, $a0, 24
	st.d	$a0, $a1, 0
	bne	$a2, $a0, .LBB0_224
	b	.LBB0_229
	.p2align	4, , 16
.LBB0_223:                              #   in Loop: Header=BB0_224 Depth=2
	ld.bu	$a3, $a2, 32
	pcalau12i	$a4, %got_pc_hi20(zz_lengths)
	ld.d	$a4, $a4, %got_pc_lo12(zz_lengths)
	addi.d	$a5, $a3, -11
	sltui	$a5, $a5, 2
	addi.d	$a6, $a2, 33
	add.d	$a3, $a4, $a3
	masknez	$a3, $a3, $a5
	maskeqz	$a4, $a6, $a5
	or	$a3, $a4, $a3
	ld.bu	$a3, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(zz_free)
	ld.d	$a4, $a4, %got_pc_lo12(zz_free)
	pcalau12i	$a5, %got_pc_hi20(zz_size)
	ld.d	$a5, $a5, %got_pc_lo12(zz_size)
	slli.d	$a6, $a3, 3
	ldx.d	$a6, $a4, $a6
	st.d	$a2, $a0, 0
	st.w	$a3, $a5, 0
	st.d	$a6, $a2, 0
	ld.w	$a2, $a5, 0
	ld.d	$a3, $a0, 0
	ld.d	$a0, $a1, 0
	slli.d	$a2, $a2, 3
	stx.d	$a3, $a4, $a2
	ld.d	$a2, $a0, 24
	beq	$a2, $a0, .LBB0_229
.LBB0_224:                              # %.lr.ph1257
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$a3, $a0, %got_pc_lo12(xx_link)
	ld.d	$a0, $a2, 24
	st.d	$a2, $a3, 0
	beq	$a0, $a2, .LBB0_226
# %bb.225:                              #   in Loop: Header=BB0_224 Depth=2
	pcalau12i	$a4, %got_pc_hi20(zz_res)
	ld.d	$a4, $a4, %got_pc_lo12(zz_res)
	ld.d	$a5, $a2, 16
	st.d	$a0, $a4, 0
	st.d	$a5, $a0, 16
	st.d	$a0, $a5, 24
	st.d	$a2, $a2, 24
	st.d	$a2, $a2, 16
.LBB0_226:                              #   in Loop: Header=BB0_224 Depth=2
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.d	$a4, $a2, 8
	st.d	$a2, $a0, 0
	beq	$a4, $a2, .LBB0_223
# %bb.227:                              #   in Loop: Header=BB0_224 Depth=2
	pcalau12i	$a5, %got_pc_hi20(zz_res)
	ld.d	$a5, $a5, %got_pc_lo12(zz_res)
	st.d	$a4, $a5, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a4, 0
	ld.d	$a4, $a0, 0
	ld.d	$a2, $a5, 0
	ld.d	$a5, $a4, 0
	st.d	$a2, $a5, 8
	st.d	$a4, $a4, 0
	ld.d	$a2, $a3, 0
	st.d	$a4, $a4, 8
	b	.LBB0_223
	.p2align	4, , 16
.LBB0_228:                              #   in Loop: Header=BB0_229 Depth=2
	ld.bu	$a3, $a2, 32
	pcalau12i	$a4, %got_pc_hi20(zz_lengths)
	ld.d	$a4, $a4, %got_pc_lo12(zz_lengths)
	addi.d	$a5, $a3, -11
	sltui	$a5, $a5, 2
	addi.d	$a6, $a2, 33
	add.d	$a3, $a4, $a3
	masknez	$a3, $a3, $a5
	maskeqz	$a4, $a6, $a5
	or	$a3, $a4, $a3
	ld.bu	$a3, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(zz_free)
	ld.d	$a4, $a4, %got_pc_lo12(zz_free)
	pcalau12i	$a5, %got_pc_hi20(zz_size)
	ld.d	$a5, $a5, %got_pc_lo12(zz_size)
	slli.d	$a6, $a3, 3
	ldx.d	$a6, $a4, $a6
	st.d	$a2, $a0, 0
	st.w	$a3, $a5, 0
	st.d	$a6, $a2, 0
	ld.w	$a2, $a5, 0
	ld.d	$a3, $a0, 0
	ld.d	$a0, $a1, 0
	slli.d	$a2, $a2, 3
	stx.d	$a3, $a4, $a2
.LBB0_229:                              # %.preheader1021
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a0, 8
	beq	$a2, $a0, .LBB0_234
# %bb.230:                              # %.lr.ph1259
                                        #   in Loop: Header=BB0_229 Depth=2
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$a3, $a0, %got_pc_lo12(xx_link)
	ld.d	$a0, $a2, 24
	st.d	$a2, $a3, 0
	beq	$a0, $a2, .LBB0_232
# %bb.231:                              #   in Loop: Header=BB0_229 Depth=2
	pcalau12i	$a4, %got_pc_hi20(zz_res)
	ld.d	$a4, $a4, %got_pc_lo12(zz_res)
	ld.d	$a5, $a2, 16
	st.d	$a0, $a4, 0
	st.d	$a5, $a0, 16
	st.d	$a0, $a5, 24
	st.d	$a2, $a2, 24
	st.d	$a2, $a2, 16
.LBB0_232:                              #   in Loop: Header=BB0_229 Depth=2
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.d	$a4, $a2, 8
	st.d	$a2, $a0, 0
	beq	$a4, $a2, .LBB0_228
# %bb.233:                              #   in Loop: Header=BB0_229 Depth=2
	pcalau12i	$a5, %got_pc_hi20(zz_res)
	ld.d	$a5, $a5, %got_pc_lo12(zz_res)
	st.d	$a4, $a5, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a4, 0
	ld.d	$a4, $a0, 0
	ld.d	$a2, $a5, 0
	ld.d	$a5, $a4, 0
	st.d	$a2, $a5, 8
	st.d	$a4, $a4, 0
	ld.d	$a2, $a3, 0
	st.d	$a4, $a4, 8
	b	.LBB0_228
.LBB0_234:                              # %._crit_edge1260
                                        #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.bu	$a2, $a0, 32
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	pcalau12i	$a3, %got_pc_hi20(zz_lengths)
	ld.d	$a3, $a3, %got_pc_lo12(zz_lengths)
	addi.d	$a4, $a2, -11
	sltui	$a4, $a4, 2
	addi.d	$a5, $a0, 33
	add.d	$a2, $a3, $a2
	masknez	$a2, $a2, $a4
	maskeqz	$a3, $a5, $a4
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(zz_free)
	ld.d	$a3, $a3, %got_pc_lo12(zz_free)
	pcalau12i	$a4, %got_pc_hi20(zz_size)
	ld.d	$a4, $a4, %got_pc_lo12(zz_size)
	slli.d	$a5, $a2, 3
	ldx.d	$a5, $a3, $a5
	st.d	$a0, $a1, 0
	st.w	$a2, $a4, 0
	st.d	$a5, $a0, 0
	ld.w	$a0, $a4, 0
	ld.d	$a1, $a1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a3, $a0
	b	.LBB0_1
.LBB0_235:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $s6, 24
	move	$a0, $a1
	.p2align	4, , 16
.LBB0_236:                              #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 0
	ld.bu	$a2, $a0, 32
	beqz	$a2, .LBB0_236
# %bb.237:                              #   in Loop: Header=BB0_1 Depth=1
	ld.hu	$a2, $s6, 42
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	ld.d	$a4, $s1, 88
	masknez	$a3, $s0, $a2
	ori	$a5, $zero, 1
	maskeqz	$a2, $a5, $a2
	or	$fp, $a2, $a3
	addi.d	$a2, $sp, 1472
	move	$a3, $a1
	pcaddu18i	$ra, %call36(FreeGalley)
	jirl	$ra, $ra, 0
.LBB0_238:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 1472
	move	$s0, $fp
	beqz	$a0, .LBB0_1
# %bb.239:                              #   in Loop: Header=BB0_1 Depth=1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(FlushInners)
	jirl	$ra, $ra, 0
	move	$s0, $fp
	b	.LBB0_1
.LBB0_240:                              #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a1, %got_pc_hi20(xx_hold)
	ld.d	$a1, $a1, %got_pc_lo12(xx_hold)
	ld.d	$a2, $a0, 24
	st.d	$a0, $a1, 0
	bne	$a2, $a0, .LBB0_242
	b	.LBB0_321
	.p2align	4, , 16
.LBB0_241:                              #   in Loop: Header=BB0_242 Depth=2
	ld.bu	$a3, $a2, 32
	pcalau12i	$a4, %got_pc_hi20(zz_lengths)
	ld.d	$a4, $a4, %got_pc_lo12(zz_lengths)
	addi.d	$a5, $a3, -11
	sltui	$a5, $a5, 2
	addi.d	$a6, $a2, 33
	add.d	$a3, $a4, $a3
	masknez	$a3, $a3, $a5
	maskeqz	$a4, $a6, $a5
	or	$a3, $a4, $a3
	ld.bu	$a3, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(zz_free)
	ld.d	$a4, $a4, %got_pc_lo12(zz_free)
	pcalau12i	$a5, %got_pc_hi20(zz_size)
	ld.d	$a5, $a5, %got_pc_lo12(zz_size)
	slli.d	$a6, $a3, 3
	ldx.d	$a6, $a4, $a6
	st.d	$a2, $a0, 0
	st.w	$a3, $a5, 0
	st.d	$a6, $a2, 0
	ld.w	$a2, $a5, 0
	ld.d	$a3, $a0, 0
	ld.d	$a0, $a1, 0
	slli.d	$a2, $a2, 3
	stx.d	$a3, $a4, $a2
	ld.d	$a2, $a0, 24
	beq	$a2, $a0, .LBB0_320
.LBB0_242:                              # %.lr.ph1250
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$a3, $a0, %got_pc_lo12(xx_link)
	ld.d	$a0, $a2, 24
	st.d	$a2, $a3, 0
	beq	$a0, $a2, .LBB0_244
# %bb.243:                              #   in Loop: Header=BB0_242 Depth=2
	pcalau12i	$a4, %got_pc_hi20(zz_res)
	ld.d	$a4, $a4, %got_pc_lo12(zz_res)
	ld.d	$a5, $a2, 16
	st.d	$a0, $a4, 0
	st.d	$a5, $a0, 16
	st.d	$a0, $a5, 24
	st.d	$a2, $a2, 24
	st.d	$a2, $a2, 16
.LBB0_244:                              #   in Loop: Header=BB0_242 Depth=2
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.d	$a4, $a2, 8
	st.d	$a2, $a0, 0
	beq	$a4, $a2, .LBB0_241
# %bb.245:                              #   in Loop: Header=BB0_242 Depth=2
	pcalau12i	$a5, %got_pc_hi20(zz_res)
	ld.d	$a5, $a5, %got_pc_lo12(zz_res)
	st.d	$a4, $a5, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a4, 0
	ld.d	$a4, $a0, 0
	ld.d	$a2, $a5, 0
	ld.d	$a5, $a4, 0
	st.d	$a2, $a5, 8
	st.d	$a4, $a4, 0
	ld.d	$a2, $a3, 0
	st.d	$a4, $a4, 8
	b	.LBB0_241
.LBB0_246:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $s2, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s0, $a0
	st.d	$a0, $a1, 0
.LBB0_247:                              #   in Loop: Header=BB0_1 Depth=1
	ori	$a0, $zero, 120
	st.b	$a0, $s0, 32
	st.d	$s0, $s0, 8
	st.d	$s0, $s0, 0
	ld.bu	$a0, $s6, 8
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 16
	st.d	$zero, $s0, 88
	slli.d	$a1, $a0, 3
	ldx.d	$s1, $fp, $a1
	st.w	$a0, $s5, 0
	beqz	$s1, .LBB0_249
# %bb.248:                              #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s1, $a1, 0
	ld.d	$a1, $s1, 0
	alsl.d	$a0, $a0, $fp, 3
	st.d	$a1, $a0, 0
	b	.LBB0_250
.LBB0_249:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $s2, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s1, $a0
	st.d	$a0, $a1, 0
.LBB0_250:                              #   in Loop: Header=BB0_1 Depth=1
	ori	$a0, $zero, 8
	st.b	$a0, $s1, 32
	st.d	$s1, $s1, 24
	st.d	$s1, $s1, 16
	st.d	$s1, $s1, 8
	st.d	$s1, $s1, 0
	ld.h	$a0, $s3, 34
	st.h	$a0, $s1, 34
	ld.wu	$a0, $s3, 36
	ld.wu	$a1, $s1, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $s1, 36
	ld.wu	$a1, $s3, 36
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s1, 36
	ld.d	$a0, $s3, 80
	st.d	$a0, $s1, 80
	st.d	$zero, $s1, 128
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	vst	$vr0, $s1, 104
	ld.d	$a0, $s3, 80
	ld.hu	$a1, $s1, 42
	ld.b	$a0, $a0, 43
	lu12i.w	$a2, 15
	ori	$a2, $a2, 3709
	and	$a1, $a1, $a2
	bstrpick.d	$a0, $a0, 60, 5
	bstrins.d	$a1, $a0, 8, 8
	ld.bu	$a2, $s6, 0
	st.d	$zero, $s1, 96
	ori	$a0, $a1, 128
	st.h	$a0, $s1, 42
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $fp, $a0
	st.w	$a2, $s5, 0
	beqz	$a0, .LBB0_252
# %bb.251:                              #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $fp, 3
	st.d	$a1, $a2, 0
	b	.LBB0_253
.LBB0_252:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $s2, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB0_253:                              #   in Loop: Header=BB0_1 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s4, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a4, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s8, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
	st.d	$a0, $a4, 0
	st.d	$s0, $s8, 0
	ld.d	$a1, $s0, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a5, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $a5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $a4, 0
	ld.d	$a1, $s8, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $a4, 0
	ld.d	$a0, $s4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $a4, 0
	st.d	$s1, $s8, 0
	beqz	$a0, .LBB0_255
# %bb.254:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $s1, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $a5, 0
	st.d	$a2, $s1, 16
	st.d	$s1, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_255:                              #   in Loop: Header=BB0_1 Depth=1
	ld.bu	$a2, $s6, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $fp, $a0
	st.w	$a2, $s5, 0
	st.d	$a4, $sp, 200                   # 8-byte Folded Spill
	st.d	$a5, $sp, 176                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_257
# %bb.256:                              #   in Loop: Header=BB0_1 Depth=1
	st.d	$a0, $s8, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $fp, 3
	st.d	$a1, $a2, 0
	b	.LBB0_258
.LBB0_257:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $s2, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
.LBB0_258:                              #   in Loop: Header=BB0_1 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
	st.d	$a0, $a4, 0
	st.d	$s1, $s8, 0
	ld.d	$a1, $s1, 0
	st.d	$a1, $a5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $a4, 0
	ld.d	$a1, $s8, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $a4, 0
	ld.d	$a0, $s4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $a4, 0
	st.d	$s3, $s8, 0
	beqz	$a0, .LBB0_260
# %bb.259:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $s3, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $a5, 0
	st.d	$a2, $s3, 16
	st.d	$s3, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_260:                              #   in Loop: Header=BB0_1 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(SetTarget)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 80
	ori	$a1, $zero, 129
	st.b	$a1, $s1, 40
	ld.bu	$a0, $a0, 126
	andi	$a0, $a0, 32
	bnez	$a0, .LBB0_262
# %bb.261:                              #   in Loop: Header=BB0_1 Depth=1
	move	$a0, $zero
	b	.LBB0_263
.LBB0_262:                              #   in Loop: Header=BB0_1 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(BuildEnclose)
	jirl	$ra, $ra, 0
.LBB0_263:                              #   in Loop: Header=BB0_1 Depth=1
	ld.bu	$a2, $s6, 0
	st.d	$a0, $s1, 136
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	vst	$vr0, $s1, 144
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $fp, $a0
	st.w	$a2, $s5, 0
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_265
# %bb.264:                              #   in Loop: Header=BB0_1 Depth=1
	st.d	$a0, $s8, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $fp, 3
	st.d	$a1, $a2, 0
	b	.LBB0_266
.LBB0_265:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $s2, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
.LBB0_266:                              #   in Loop: Header=BB0_1 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 0
	ld.d	$a1, $sp, 1464
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	ld.d	$a1, $a1, 24
	st.d	$a0, $s4, 0
	st.d	$a0, $a4, 0
	st.d	$a1, $s8, 0
	st.d	$fp, $sp, 136                   # 8-byte Folded Spill
	st.d	$s8, $sp, 112                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	beqz	$a1, .LBB0_268
# %bb.267:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a2, $a1, 0
	st.d	$a2, $a5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $a4, 0
	ld.d	$a1, $s8, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $a4, 0
	ld.d	$a0, $s4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $a4, 0
	st.d	$s0, $s8, 0
	bnez	$a0, .LBB0_269
	b	.LBB0_270
.LBB0_268:                              # %.thread1529
                                        #   in Loop: Header=BB0_1 Depth=1
	st.d	$s0, $s8, 0
.LBB0_269:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $s0, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $a5, 0
	st.d	$a2, $s0, 16
	st.d	$s0, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_270:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s5, $s7, 8
	addi.d	$s8, $s7, 40
	addi.d	$s3, $s7, 36
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_271:                              #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s5, $s5, 16
	ld.bu	$a0, $s5, 32
	beqz	$a0, .LBB0_271
# %bb.272:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$fp, $s7, 0
	.p2align	4, , 16
.LBB0_273:                              #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $fp, 16
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB0_273
# %bb.274:                              # %.preheader1020
                                        #   in Loop: Header=BB0_1 Depth=1
	addi.d	$a0, $s7, 48
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	addi.d	$a0, $s5, 64
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	addi.d	$s0, $fp, 64
	b	.LBB0_277
.LBB0_275:                              #   in Loop: Header=BB0_277 Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_276:                              #   in Loop: Header=BB0_277 Depth=2
	addi.d	$a0, $sp, 352
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_328
.LBB0_277:                              #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %got_pc_hi20(OldCrossDb)
	ld.d	$a0, $a0, %got_pc_lo12(OldCrossDb)
	ld.d	$a0, $a0, 0
	addi.d	$a1, $sp, 336
	addi.d	$a2, $sp, 1376
	addi.d	$a3, $sp, 864
	addi.d	$a4, $sp, 352
	ld.d	$a5, $sp, 304                   # 8-byte Folded Reload
	st.d	$a5, $sp, 0
	move	$a5, $s6
	move	$a6, $s8
	move	$a7, $s3
	pcaddu18i	$ra, %call36(DbRetrieveNext)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_307
# %bb.278:                              #   in Loop: Header=BB0_277 Depth=2
	ld.w	$a0, $sp, 336
	beqz	$a0, .LBB0_307
# %bb.279:                              #   in Loop: Header=BB0_277 Depth=2
	ld.d	$a0, $sp, 1376
	ld.d	$a1, $s7, 56
	bne	$a0, $a1, .LBB0_307
# %bb.280:                              #   in Loop: Header=BB0_277 Depth=2
	addi.d	$a0, $sp, 864
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_307
# %bb.281:                              #   in Loop: Header=BB0_277 Depth=2
	addi.d	$a0, $sp, 352
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_276
# %bb.282:                              #   in Loop: Header=BB0_277 Depth=2
	move	$a0, $zero
	pcaddu18i	$ra, %call36(SwitchScope)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s6, 0
	ld.d	$a1, $s8, 0
	ld.w	$a2, $s3, 0
	pcaddu18i	$ra, %call36(ReadFromFile)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(UnSwitchScope)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB0_285
# %bb.283:                              #   in Loop: Header=BB0_277 Depth=2
	ld.bu	$a0, $s2, 32
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_286
.LBB0_284:                              #   in Loop: Header=BB0_277 Depth=2
	ld.d	$a0, $s2, 80
	ld.bu	$a0, $a0, 126
	andi	$a0, $a0, 8
	beqz	$a0, .LBB0_275
	b	.LBB0_287
.LBB0_285:                              #   in Loop: Header=BB0_277 Depth=2
	ld.d	$a1, $sp, 1464
	ld.hu	$a0, $s6, 0
	addi.d	$s6, $a1, 32
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a2, $a0, %pc_lo12(.L.str.26)
	ori	$a0, $zero, 20
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	move	$a4, $s6
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s2, 32
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB0_284
.LBB0_286:                              #   in Loop: Header=BB0_277 Depth=2
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a5, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 80
	ld.bu	$a0, $a0, 126
	andi	$a0, $a0, 8
	beqz	$a0, .LBB0_275
.LBB0_287:                              #   in Loop: Header=BB0_277 Depth=2
	ld.bu	$a0, $s1, 32
	ori	$a1, $zero, 17
	bne	$a0, $a1, .LBB0_289
# %bb.288:                              #   in Loop: Header=BB0_277 Depth=2
	move	$s6, $s1
	ld.d	$a6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	b	.LBB0_301
.LBB0_289:                              #   in Loop: Header=BB0_277 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 17
	slli.d	$a1, $a0, 3
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ldx.d	$s6, $a2, $a1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	beqz	$s6, .LBB0_291
# %bb.290:                              #   in Loop: Header=BB0_277 Depth=2
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$s6, $a1, 0
	ld.d	$a1, $s6, 0
	alsl.d	$a0, $a0, $a2, 3
	st.d	$a1, $a0, 0
	b	.LBB0_292
.LBB0_291:                              #   in Loop: Header=BB0_277 Depth=2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	move	$s6, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$s6, $a0, 0
.LBB0_292:                              #   in Loop: Header=BB0_277 Depth=2
	ld.d	$a6, $sp, 200                   # 8-byte Folded Reload
	ori	$a0, $zero, 17
	st.b	$a0, $s6, 32
	st.d	$s6, $s6, 24
	st.d	$s6, $s6, 16
	st.d	$s6, $s6, 8
	st.d	$s6, $s6, 0
	ld.d	$a1, $s1, 24
	ld.d	$a2, $a1, 24
	ld.d	$a0, $a1, 16
	st.d	$a1, $s4, 0
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	beq	$a2, $a1, .LBB0_294
# %bb.293:                              #   in Loop: Header=BB0_277 Depth=2
	st.d	$a0, $a2, 16
	st.d	$a2, $a0, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	ld.d	$a3, $s6, 16
	move	$a0, $a1
	b	.LBB0_295
.LBB0_294:                              #   in Loop: Header=BB0_277 Depth=2
	move	$a3, $s6
.LBB0_295:                              # %._crit_edge1472
                                        #   in Loop: Header=BB0_277 Depth=2
	st.d	$a0, $s6, 16
	ld.d	$a0, $a1, 16
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.bu	$a2, $a2, 0
	st.d	$s6, $a0, 24
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	slli.d	$a0, $a2, 3
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	ldx.d	$a0, $a4, $a0
	st.d	$a1, $a6, 0
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	st.d	$s6, $s4, 0
	st.d	$a3, $a7, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_297
# %bb.296:                              #   in Loop: Header=BB0_277 Depth=2
	st.d	$a0, $s4, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $a4, 3
	st.d	$a1, $a2, 0
	b	.LBB0_298
.LBB0_297:                              #   in Loop: Header=BB0_277 Depth=2
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 200                   # 8-byte Folded Reload
.LBB0_298:                              #   in Loop: Header=BB0_277 Depth=2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a5, 0
	st.d	$a0, $a6, 0
	st.d	$s6, $s4, 0
	ld.d	$a1, $s6, 0
	st.d	$a1, $a7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	ld.d	$a0, $a6, 0
	ld.d	$a1, $s4, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a7, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $a6, 0
	move	$a4, $a5
	ld.d	$a0, $a5, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $a6, 0
	st.d	$s1, $s4, 0
	beqz	$a0, .LBB0_300
# %bb.299:                              #   in Loop: Header=BB0_277 Depth=2
	ld.d	$a1, $s1, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $a7, 0
	st.d	$a2, $s1, 16
	st.d	$s1, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_300:                              #   in Loop: Header=BB0_277 Depth=2
	move	$s4, $a4
.LBB0_301:                              #   in Loop: Header=BB0_277 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.d	$a0, $a3, $a0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_303
# %bb.302:                              #   in Loop: Header=BB0_277 Depth=2
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $a3, 3
	st.d	$a1, $a2, 0
	b	.LBB0_304
.LBB0_303:                              #   in Loop: Header=BB0_277 Depth=2
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
.LBB0_304:                              #   in Loop: Header=BB0_277 Depth=2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
	st.d	$a0, $a6, 0
	st.d	$s6, $a4, 0
	ld.d	$a1, $s6, 0
	st.d	$a1, $a7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	ld.d	$a0, $a6, 0
	ld.d	$a1, $a4, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a7, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $a6, 0
	ld.d	$a0, $s4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $a6, 0
	st.d	$s2, $a4, 0
	beqz	$a0, .LBB0_306
# %bb.305:                              #   in Loop: Header=BB0_277 Depth=2
	ld.d	$a1, $s2, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $a7, 0
	st.d	$a2, $s2, 16
	st.d	$s2, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_306:                              #   in Loop: Header=BB0_277 Depth=2
	move	$s1, $s6
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	b	.LBB0_276
.LBB0_307:                              # %.critedge842
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $s7, 24
	ld.d	$a2, $a0, 24
	st.d	$a0, $s4, 0
	beq	$a2, $a0, .LBB0_309
# %bb.308:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $a0, 16
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	st.d	$a2, $a4, 0
	st.d	$a1, $a2, 16
	st.d	$a2, $a1, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	b	.LBB0_310
.LBB0_309:                              #   in Loop: Header=BB0_1 Depth=1
	move	$a2, $zero
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
.LBB0_310:                              #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	ld.d	$a3, $a0, 8
	st.d	$a2, $a1, 0
	st.d	$a0, $s6, 0
	beq	$a3, $a0, .LBB0_312
# %bb.311:                              #   in Loop: Header=BB0_1 Depth=1
	st.d	$a3, $a4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	ld.d	$a2, $s6, 0
	ld.d	$a0, $a4, 0
	ld.d	$a3, $a2, 0
	st.d	$a0, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a0, $s4, 0
	st.d	$a2, $a2, 8
.LBB0_312:                              #   in Loop: Header=BB0_1 Depth=1
	ld.bu	$a2, $a0, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a0, 33
	add.d	$a2, $s5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $fp, $a3
	st.d	$a0, $s6, 0
	st.w	$a2, $s3, 0
	st.d	$a3, $a0, 0
	ld.w	$a2, $s3, 0
	ld.d	$a3, $s6, 0
	ld.d	$a0, $a1, 0
	slli.d	$a1, $a2, 3
	stx.d	$a3, $fp, $a1
	ld.d	$a1, $a0, 24
	beq	$a1, $a0, .LBB0_317
# %bb.313:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a4, 96
	ld.d	$a1, $a0, 8
	beq	$a1, $a0, .LBB0_318
.LBB0_314:                              #   in Loop: Header=BB0_1 Depth=1
	ld.bu	$a0, $s1, 32
	ori	$a1, $zero, 17
	bne	$a0, $a1, .LBB0_316
.LBB0_315:                              #   in Loop: Header=BB0_1 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(ConvertGalleyList)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB0_316:                              #   in Loop: Header=BB0_1 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FlushGalley)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 312                   # 8-byte Folded Reload
	b	.LBB0_1
.LBB0_317:                              #   in Loop: Header=BB0_1 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a4, 96
	ld.d	$a1, $a0, 8
	bne	$a1, $a0, .LBB0_314
.LBB0_318:                              #   in Loop: Header=BB0_1 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s5, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $fp, $a2
	st.d	$a0, $s6, 0
	st.w	$a1, $s3, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s3, 0
	ld.d	$a1, $s6, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $fp, $a0
	st.d	$zero, $a4, 96
	ld.bu	$a0, $s1, 32
	ori	$a1, $zero, 17
	beq	$a0, $a1, .LBB0_315
	b	.LBB0_316
.LBB0_319:                              #   in Loop: Header=BB0_1 Depth=1
	st.d	$zero, $sp, 240                 # 8-byte Folded Spill
	ld.d	$a0, $sp, 1472
	bnez	$a0, .LBB0_148
	b	.LBB0_149
.LBB0_320:                              # %.preheader1022.loopexit
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s0, $a0, 8
.LBB0_321:                              # %.preheader1022
                                        #   in Loop: Header=BB0_1 Depth=1
	bne	$s0, $a0, .LBB0_324
.LBB0_322:                              # %._crit_edge1253
                                        #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.bu	$a2, $a0, 32
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	pcalau12i	$a3, %got_pc_hi20(zz_lengths)
	ld.d	$a3, $a3, %got_pc_lo12(zz_lengths)
	addi.d	$a4, $a2, -11
	sltui	$a4, $a4, 2
	addi.d	$a5, $a0, 33
	add.d	$a2, $a3, $a2
	masknez	$a2, $a2, $a4
	maskeqz	$a3, $a5, $a4
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(zz_free)
	ld.d	$a3, $a3, %got_pc_lo12(zz_free)
	pcalau12i	$a4, %got_pc_hi20(zz_size)
	ld.d	$a4, $a4, %got_pc_lo12(zz_size)
	slli.d	$a5, $a2, 3
	ldx.d	$a5, $a3, $a5
	st.d	$a0, $a1, 0
	st.w	$a2, $a4, 0
	st.d	$a5, $a0, 0
	ld.w	$a0, $a4, 0
	ld.d	$a1, $a1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a3, $a0
	move	$s0, $fp
	b	.LBB0_1
	.p2align	4, , 16
.LBB0_323:                              #   in Loop: Header=BB0_324 Depth=2
	ld.bu	$a2, $s0, 32
	pcalau12i	$a3, %got_pc_hi20(zz_lengths)
	ld.d	$a3, $a3, %got_pc_lo12(zz_lengths)
	addi.d	$a4, $a2, -11
	sltui	$a4, $a4, 2
	addi.d	$a5, $s0, 33
	add.d	$a2, $a3, $a2
	masknez	$a2, $a2, $a4
	maskeqz	$a3, $a5, $a4
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(zz_free)
	ld.d	$a3, $a3, %got_pc_lo12(zz_free)
	pcalau12i	$a4, %got_pc_hi20(zz_size)
	ld.d	$a4, $a4, %got_pc_lo12(zz_size)
	slli.d	$a5, $a2, 3
	ldx.d	$a5, $a3, $a5
	st.d	$s0, $a0, 0
	st.w	$a2, $a4, 0
	st.d	$a5, $s0, 0
	ld.w	$a2, $a4, 0
	ld.d	$a4, $a0, 0
	ld.d	$a0, $a1, 0
	slli.d	$a2, $a2, 3
	stx.d	$a4, $a3, $a2
	ld.d	$s0, $a0, 8
	beq	$s0, $a0, .LBB0_322
.LBB0_324:                              # %.lr.ph1252
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$a2, $a0, %got_pc_lo12(xx_link)
	ld.d	$a0, $s0, 24
	st.d	$s0, $a2, 0
	beq	$a0, $s0, .LBB0_326
# %bb.325:                              #   in Loop: Header=BB0_324 Depth=2
	pcalau12i	$a3, %got_pc_hi20(zz_res)
	ld.d	$a3, $a3, %got_pc_lo12(zz_res)
	ld.d	$a4, $s0, 16
	st.d	$a0, $a3, 0
	st.d	$a4, $a0, 16
	st.d	$a0, $a4, 24
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 16
.LBB0_326:                              #   in Loop: Header=BB0_324 Depth=2
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.d	$a3, $s0, 8
	st.d	$s0, $a0, 0
	beq	$a3, $s0, .LBB0_323
# %bb.327:                              #   in Loop: Header=BB0_324 Depth=2
	pcalau12i	$a4, %got_pc_hi20(zz_res)
	ld.d	$a4, $a4, %got_pc_lo12(zz_res)
	st.d	$a3, $a4, 0
	ld.d	$a5, $s0, 0
	st.d	$a5, $a3, 0
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a4, 0
	ld.d	$a5, $a3, 0
	st.d	$a4, $a5, 8
	st.d	$a3, $a3, 0
	ld.d	$s0, $a2, 0
	st.d	$a3, $a3, 8
	b	.LBB0_323
.LBB0_328:                              # %.critedge
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $s5, 24
	ld.d	$a1, $a0, 24
	st.d	$a0, $s4, 0
	beq	$a1, $a0, .LBB0_341
# %bb.329:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a2, $a0, 16
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	st.d	$a1, $a4, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 112                   # 8-byte Folded Reload
	b	.LBB0_342
.LBB0_330:                              # %.loopexit1015..critedge839_crit_edge
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s0, $s2, 8
.LBB0_331:                              # %.critedge839
                                        #   in Loop: Header=BB0_1 Depth=1
	ori	$a3, $zero, 1
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	move	$a1, $s0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(Promote)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_333
# %bb.332:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a1, $a0, 0
	addi.w	$a2, $fp, 0
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
	move	$a0, $s0
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s1, 0
	addi.w	$a2, $s5, 0
	move	$a0, $s0
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
.LBB0_333:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 1472
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(FlushInners)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 264                   # 8-byte Folded Spill
	move	$s1, $s0
	move	$s0, $s3
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	b	.LBB0_1
.LBB0_334:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $s1, 104
	beqz	$a0, .LBB0_365
.LBB0_335:                              # %.thread
                                        #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s5, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s5, 26
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$fp, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s1, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a0, 3
	ldx.d	$s0, $fp, $a1
	st.w	$a0, $s1, 0
	beqz	$s0, .LBB0_366
# %bb.336:                              #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s0, $a1, 0
	ld.d	$a1, $s0, 0
	alsl.d	$a0, $a0, $fp, 3
	st.d	$a1, $a0, 0
	b	.LBB0_367
.LBB0_337:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s1, $sp, 312                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_339
# %bb.338:                              #   in Loop: Header=BB0_1 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	st.d	$zero, $s1, 104
.LBB0_339:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_387
# %bb.340:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 1464
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a2, $a0, %pc_lo12(.L.str.16)
	ori	$a0, $zero, 20
	ori	$a1, $zero, 3
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB0_387
.LBB0_341:                              #   in Loop: Header=BB0_1 Depth=1
	move	$a1, $zero
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
.LBB0_342:                              #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a2, %got_pc_hi20(xx_tmp)
	ld.d	$s0, $a2, %got_pc_lo12(xx_tmp)
	ld.d	$a2, $a0, 8
	st.d	$a1, $s0, 0
	st.d	$a0, $s8, 0
	beq	$a2, $a0, .LBB0_344
# %bb.343:                              #   in Loop: Header=BB0_1 Depth=1
	st.d	$a2, $a4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a1, $s8, 0
	ld.d	$a0, $a4, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $s4, 0
	st.d	$a1, $a1, 8
.LBB0_344:                              #   in Loop: Header=BB0_1 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s6, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s3, $a2
	st.d	$a0, $s8, 0
	st.w	$a1, $s5, 0
	st.d	$a2, $a0, 0
	ld.w	$a1, $s5, 0
	ld.d	$a2, $s8, 0
	ld.d	$a0, $s0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s3, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB0_346
# %bb.345:                              #   in Loop: Header=BB0_1 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
.LBB0_346:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $fp, 24
	ld.d	$a1, $a0, 24
	st.d	$a0, $s4, 0
	beq	$a1, $a0, .LBB0_353
# %bb.347:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $a4, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	ld.d	$a2, $a0, 8
	st.d	$a1, $s0, 0
	st.d	$a0, $s8, 0
	beq	$a2, $a0, .LBB0_349
.LBB0_348:                              #   in Loop: Header=BB0_1 Depth=1
	st.d	$a2, $a4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a1, $s8, 0
	ld.d	$a0, $a4, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $s4, 0
	st.d	$a1, $a1, 8
.LBB0_349:                              #   in Loop: Header=BB0_1 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s6, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s3, $a2
	st.d	$a0, $s8, 0
	st.w	$a1, $s5, 0
	st.d	$a2, $a0, 0
	ld.w	$a1, $s5, 0
	ld.d	$a2, $s8, 0
	ld.d	$a0, $s0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s3, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB0_351
# %bb.350:                              #   in Loop: Header=BB0_1 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB0_351:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a2, $s2, 0
	ori	$a0, $zero, 11
	addi.d	$a1, $sp, 864
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 0
	move	$fp, $s2
	move	$s2, $a0
	ori	$a0, $zero, 11
	addi.d	$a1, $sp, 352
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s6, 0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s3, $a1
	move	$s0, $a0
	st.w	$a2, $s5, 0
	beqz	$a1, .LBB0_354
# %bb.352:                              #   in Loop: Header=BB0_1 Depth=1
	st.d	$a1, $s8, 0
	ld.d	$a0, $a1, 0
	alsl.d	$a2, $a2, $s3, 3
	st.d	$a0, $a2, 0
	b	.LBB0_355
.LBB0_353:                              #   in Loop: Header=BB0_1 Depth=1
	move	$a1, $zero
	ld.d	$a2, $a0, 8
	st.d	$a1, $s0, 0
	st.d	$a0, $s8, 0
	bne	$a2, $a0, .LBB0_348
	b	.LBB0_349
.LBB0_354:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $fp, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB0_355:                              #   in Loop: Header=BB0_1 Depth=1
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	st.d	$a1, $s4, 0
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	st.d	$a1, $a4, 0
	st.d	$s7, $s8, 0
	ld.d	$a0, $s7, 0
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $a5, 0
	ld.d	$a0, $a1, 0
	st.d	$a0, $s7, 0
	ld.d	$a0, $a4, 0
	ld.d	$a1, $s8, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $a4, 0
	ld.d	$a0, $s4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $a4, 0
	st.d	$s2, $s8, 0
	beqz	$s2, .LBB0_358
# %bb.356:                              #   in Loop: Header=BB0_1 Depth=1
	beqz	$a0, .LBB0_358
# %bb.357:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $s2, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $a5, 0
	st.d	$a2, $s2, 16
	st.d	$s2, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_358:                              #   in Loop: Header=BB0_1 Depth=1
	ld.bu	$a2, $s6, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s3, $a0
	st.w	$a2, $s5, 0
	beqz	$a0, .LBB0_360
# %bb.359:                              #   in Loop: Header=BB0_1 Depth=1
	st.d	$a0, $s8, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s3, 3
	st.d	$a1, $a2, 0
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	b	.LBB0_361
.LBB0_360:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $s2, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
.LBB0_361:                              #   in Loop: Header=BB0_1 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
	st.d	$a0, $a4, 0
	st.d	$s7, $s8, 0
	ld.d	$a1, $s7, 0
	st.d	$a1, $a5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s7, 0
	ld.d	$a0, $a4, 0
	ld.d	$a1, $s8, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $a4, 0
	ld.d	$a0, $s4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $a4, 0
	st.d	$s0, $s8, 0
	beqz	$s0, .LBB0_364
# %bb.362:                              #   in Loop: Header=BB0_1 Depth=1
	beqz	$a0, .LBB0_364
# %bb.363:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $s0, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $a5, 0
	st.d	$a2, $s0, 16
	st.d	$s0, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_364:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.bu	$a0, $s1, 32
	ori	$a1, $zero, 17
	beq	$a0, $a1, .LBB0_315
	b	.LBB0_316
.LBB0_365:                              #   in Loop: Header=BB0_1 Depth=1
	move	$s0, $s3
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	b	.LBB0_387
.LBB0_366:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s0, $a0
	st.d	$a0, $a1, 0
.LBB0_367:                              #   in Loop: Header=BB0_1 Depth=1
	ori	$a0, $zero, 26
	st.b	$a0, $s0, 32
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 8
	st.d	$s0, $s0, 0
	ld.w	$a0, $sp, 1448
	ld.d	$a1, $sp, 1452
	ld.bu	$a2, $s5, 0
	st.d	$s0, $s0, 16
	st.w	$a0, $s0, 64
	st.d	$a1, $s0, 68
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $fp, $a0
	st.w	$a2, $s1, 0
	beqz	$a0, .LBB0_369
# %bb.368:                              #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $fp, 3
	st.d	$a1, $a2, 0
	b	.LBB0_370
.LBB0_369:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB0_370:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a3, $a1, %got_pc_lo12(zz_res)
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $a1, 112
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	st.d	$a0, $a3, 0
	st.d	$a4, $a1, 0
	beqz	$a4, .LBB0_372
# %bb.371:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a5, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $a3, 0
	ld.d	$a4, $a1, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a6, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a4, $a3, 0
	ld.d	$a0, $a2, 0
	st.d	$a4, $a6, 8
	st.d	$a0, $a3, 0
	st.d	$s0, $a1, 0
	bnez	$a0, .LBB0_373
	b	.LBB0_374
.LBB0_372:                              # %.thread1485
                                        #   in Loop: Header=BB0_1 Depth=1
	st.d	$s0, $a1, 0
.LBB0_373:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a4, $s0, 16
	pcalau12i	$a5, %got_pc_hi20(zz_tmp)
	ld.d	$a5, $a5, %got_pc_lo12(zz_tmp)
	ld.d	$a6, $a0, 16
	st.d	$a4, $a5, 0
	st.d	$a6, $s0, 16
	st.d	$s0, $a6, 24
	st.d	$a4, $a0, 16
	st.d	$a0, $a4, 24
.LBB0_374:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 120
	beqz	$a4, .LBB0_380
# %bb.375:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $a4, 8
	beq	$a0, $a4, .LBB0_380
# %bb.376:                              # %.preheader1027.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$s0, $s3
	.p2align	4, , 16
.LBB0_377:                              # %.preheader1027
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a4, $a0, 32
	beqz	$a4, .LBB0_377
# %bb.378:                              #   in Loop: Header=BB0_1 Depth=1
	ld.w	$a4, $a0, 48
	ld.d	$a6, $sp, 312                   # 8-byte Folded Reload
	ld.w	$a5, $a6, 160
	add.d	$a4, $a4, $a5
	addi.d	$a4, $a4, -1
	st.w	$a4, $a6, 160
	ld.d	$a0, $a0, 24
	ld.d	$a5, $a0, 24
	st.d	$a0, $a2, 0
	beq	$a5, $a0, .LBB0_381
# %bb.379:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a4, $a0, 16
	st.d	$a5, $a3, 0
	st.d	$a4, $a5, 16
	st.d	$a5, $a4, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB0_382
.LBB0_380:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.w	$a0, $s1, 160
	move	$s0, $s3
	b	.LBB0_387
.LBB0_381:                              #   in Loop: Header=BB0_1 Depth=1
	move	$a5, $zero
.LBB0_382:                              #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a4, %got_pc_hi20(xx_tmp)
	ld.d	$a4, $a4, %got_pc_lo12(xx_tmp)
	ld.d	$a6, $a0, 8
	st.d	$a5, $a4, 0
	st.d	$a0, $a1, 0
	beq	$a6, $a0, .LBB0_384
# %bb.383:                              #   in Loop: Header=BB0_1 Depth=1
	st.d	$a6, $a3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a6, 0
	ld.d	$a5, $a1, 0
	ld.d	$a0, $a3, 0
	ld.d	$a3, $a5, 0
	st.d	$a0, $a3, 8
	st.d	$a5, $a5, 0
	ld.d	$a0, $a2, 0
	st.d	$a5, $a5, 8
.LBB0_384:                              #   in Loop: Header=BB0_1 Depth=1
	ld.bu	$a2, $a0, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a5, $a0, 33
	add.d	$a2, $s5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a5, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $fp, $a3
	st.d	$a0, $a1, 0
	st.w	$a2, $s1, 0
	st.d	$a3, $a0, 0
	ld.w	$a2, $s1, 0
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a4, 0
	slli.d	$a2, $a2, 3
	stx.d	$a1, $fp, $a2
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB0_386
# %bb.385:                              #   in Loop: Header=BB0_1 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB0_386:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s1, $sp, 312                   # 8-byte Folded Reload
.LBB0_387:                              #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a0, %got_pc_hi20(PrintSym)
	ld.d	$a0, $a0, %got_pc_lo12(PrintSym)
	ld.d	$a1, $s4, 80
	ld.d	$a0, $a0, 0
	bne	$a1, $a0, .LBB0_389
# %bb.388:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a5, $a0, %pc_lo12(.L.str.19)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_389:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 1472
	beqz	$a0, .LBB0_391
# %bb.390:                              #   in Loop: Header=BB0_1 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB0_391:                              #   in Loop: Header=BB0_1 Depth=1
	beqz	$s7, .LBB0_394
# %bb.392:                              #   in Loop: Header=BB0_1 Depth=1
	ori	$a3, $zero, 1
	move	$a0, $s1
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(Promote)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_394
# %bb.393:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a1, $a0, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.w	$a2, $a0, 0
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	move	$a0, $fp
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a1, $a0, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a2, $a0, 0
	move	$a0, $fp
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
.LBB0_394:                              #   in Loop: Header=BB0_1 Depth=1
	move	$s3, $s0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_409
# %bb.395:                              #   in Loop: Header=BB0_1 Depth=1
	beqz	$s8, .LBB0_409
# %bb.396:                              # %.preheader1025
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $s1, 8
	beq	$a0, $s2, .LBB0_409
# %bb.397:                              # %.preheader1009.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$fp, $s1
	b	.LBB0_400
	.p2align	4, , 16
.LBB0_398:                              #   in Loop: Header=BB0_400 Depth=2
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(HandleHeader)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB0_399:                              #   in Loop: Header=BB0_400 Depth=2
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	beq	$a0, $s2, .LBB0_409
.LBB0_400:                              # %.preheader1009
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_401 Depth 3
                                        #       Child Loop BB0_404 Depth 3
	move	$a1, $a0
	.p2align	4, , 16
.LBB0_401:                              #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_400 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $a1, 16
	ld.bu	$a2, $a1, 32
	beqz	$a2, .LBB0_401
# %bb.402:                              #   in Loop: Header=BB0_400 Depth=2
	ori	$a3, $zero, 9
	bne	$a2, $a3, .LBB0_406
# %bb.403:                              #   in Loop: Header=BB0_400 Depth=2
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	ldx.d	$s0, $a1, $a2
	.p2align	4, , 16
.LBB0_404:                              #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_400 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s0, $s0, 16
	ld.bu	$a2, $s0, 32
	beqz	$a2, .LBB0_404
# %bb.405:                              # %.loopexit1008
                                        #   in Loop: Header=BB0_400 Depth=2
	andi	$a2, $a2, 252
	ori	$a3, $zero, 20
	bne	$a2, $a3, .LBB0_399
	b	.LBB0_407
	.p2align	4, , 16
.LBB0_406:                              # %.loopexit1008.loopexit2483
                                        #   in Loop: Header=BB0_400 Depth=2
	move	$s0, $a1
	andi	$a2, $a2, 252
	ori	$a3, $zero, 20
	bne	$a2, $a3, .LBB0_399
.LBB0_407:                              #   in Loop: Header=BB0_400 Depth=2
	beq	$a1, $s0, .LBB0_398
# %bb.408:                              #   in Loop: Header=BB0_400 Depth=2
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a5, $a0, %pc_lo12(.L.str.20)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB0_398
.LBB0_409:                              # %.loopexit1026
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $s1, 144
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_432
# %bb.410:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $a0, 8
	beq	$a1, $a0, .LBB0_413
# %bb.411:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$fp, $s1, 8
	beq	$fp, $s1, .LBB0_414
.LBB0_412:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $s1, 144
	ld.d	$s0, $a0, 8
	bne	$s0, $a0, .LBB0_415
	b	.LBB0_432
.LBB0_413:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a4, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a5, $a0, %pc_lo12(.L.str.21)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s1, 8
	bne	$fp, $s1, .LBB0_412
.LBB0_414:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a4, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a5, $a0, %pc_lo12(.L.str.22)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 144
	ld.d	$s0, $a0, 8
	beq	$s0, $a0, .LBB0_432
.LBB0_415:                              # %.preheader1006.lr.ph
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$a0, $zero
	b	.LBB0_417
	.p2align	4, , 16
.LBB0_416:                              #   in Loop: Header=BB0_417 Depth=2
	ld.d	$s0, $s0, 8
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 144
	addi.d	$a0, $s1, 1
	beq	$s0, $a1, .LBB0_430
.LBB0_417:                              # %.preheader1006
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_418 Depth 3
	move	$s1, $a0
	move	$a0, $s0
	.p2align	4, , 16
.LBB0_418:                              #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_417 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_418
# %bb.419:                              #   in Loop: Header=BB0_417 Depth=2
	addi.d	$a1, $a1, -15
	ori	$a2, $zero, 1
	bltu	$a2, $a1, .LBB0_421
# %bb.420:                              #   in Loop: Header=BB0_417 Depth=2
	ld.d	$a4, $s2, 0
	st.d	$a0, $sp, 1464
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a5, $a0, %pc_lo12(.L.str.23)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB0_422
	.p2align	4, , 16
.LBB0_421:                              # %.loopexit1007
                                        #   in Loop: Header=BB0_417 Depth=2
	st.d	$a0, $sp, 1464
.LBB0_422:                              #   in Loop: Header=BB0_417 Depth=2
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a3, $a0, %got_pc_lo12(zz_size)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	st.w	$a2, $a3, 0
	beqz	$a0, .LBB0_424
# %bb.423:                              #   in Loop: Header=BB0_417 Depth=2
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a0, $a3, 0
	ld.d	$a3, $a0, 0
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a3, $a1, 0
	b	.LBB0_425
	.p2align	4, , 16
.LBB0_424:                              #   in Loop: Header=BB0_417 Depth=2
	ld.d	$a1, $s2, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB0_425:                              #   in Loop: Header=BB0_417 Depth=2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a3, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	st.d	$a0, $a1, 0
	st.d	$fp, $a2, 0
	beqz	$fp, .LBB0_427
# %bb.426:                              #   in Loop: Header=BB0_417 Depth=2
	ld.d	$a4, $fp, 0
	pcalau12i	$a5, %got_pc_hi20(zz_tmp)
	ld.d	$a5, $a5, %got_pc_lo12(zz_tmp)
	st.d	$a4, $a5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $a1, 0
	ld.d	$a4, $a2, 0
	ld.d	$a6, $a0, 0
	ld.d	$a5, $a5, 0
	st.d	$a4, $a6, 8
	st.d	$a5, $a0, 0
	ld.d	$a4, $a1, 0
	ld.d	$a0, $a3, 0
	st.d	$a4, $a5, 8
.LBB0_427:                              #   in Loop: Header=BB0_417 Depth=2
	ld.d	$a3, $sp, 1464
	st.d	$a0, $a1, 0
	st.d	$a3, $a2, 0
	beqz	$a3, .LBB0_416
# %bb.428:                              #   in Loop: Header=BB0_417 Depth=2
	beqz	$a0, .LBB0_416
# %bb.429:                              #   in Loop: Header=BB0_417 Depth=2
	ld.d	$a1, $a3, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a4, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a4, $a3, 16
	st.d	$a3, $a4, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	b	.LBB0_416
.LBB0_430:                              # %._crit_edge1234
                                        #   in Loop: Header=BB0_1 Depth=1
	andi	$a0, $s1, 1
	ld.d	$s1, $sp, 312                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_432
# %bb.431:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a4, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a5, $a0, %pc_lo12(.L.str.24)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_432:                              # %._crit_edge1234.thread
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(DetachGalley)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s6, 32
	ori	$a1, $zero, 122
	beq	$a0, $a1, .LBB0_434
# %bb.433:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a4, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a5, $a0, %pc_lo12(.L.str.25)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_434:                              #   in Loop: Header=BB0_1 Depth=1
	ori	$a0, $zero, 1
	bnez	$s3, .LBB0_436
# %bb.435:                              #   in Loop: Header=BB0_1 Depth=1
	ld.hu	$a0, $s6, 42
	bstrpick.d	$a0, $a0, 5, 5
.LBB0_436:                              #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a1, %got_pc_hi20(xx_hold)
	ld.d	$a1, $a1, %got_pc_lo12(xx_hold)
	ld.d	$a2, $s6, 24
	st.d	$s6, $a1, 0
	bne	$a2, $s6, .LBB0_438
	b	.LBB0_443
	.p2align	4, , 16
.LBB0_437:                              #   in Loop: Header=BB0_438 Depth=2
	ld.bu	$a4, $a2, 32
	pcalau12i	$a5, %got_pc_hi20(zz_lengths)
	ld.d	$a5, $a5, %got_pc_lo12(zz_lengths)
	addi.d	$a6, $a4, -11
	sltui	$a6, $a6, 2
	addi.d	$a7, $a2, 33
	add.d	$a4, $a5, $a4
	masknez	$a4, $a4, $a6
	maskeqz	$a5, $a7, $a6
	or	$a4, $a5, $a4
	ld.bu	$a4, $a4, 0
	pcalau12i	$a5, %got_pc_hi20(zz_free)
	ld.d	$a5, $a5, %got_pc_lo12(zz_free)
	pcalau12i	$a6, %got_pc_hi20(zz_size)
	ld.d	$a6, $a6, %got_pc_lo12(zz_size)
	slli.d	$a7, $a4, 3
	ldx.d	$a7, $a5, $a7
	st.d	$a2, $a3, 0
	st.w	$a4, $a6, 0
	st.d	$a7, $a2, 0
	ld.w	$a2, $a6, 0
	ld.d	$a3, $a3, 0
	ld.d	$s6, $a1, 0
	slli.d	$a2, $a2, 3
	stx.d	$a3, $a5, $a2
	ld.d	$a2, $s6, 24
	beq	$a2, $s6, .LBB0_443
.LBB0_438:                              # %.lr.ph1238
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a3, %got_pc_hi20(xx_link)
	ld.d	$a4, $a3, %got_pc_lo12(xx_link)
	ld.d	$a3, $a2, 24
	st.d	$a2, $a4, 0
	beq	$a3, $a2, .LBB0_440
# %bb.439:                              #   in Loop: Header=BB0_438 Depth=2
	pcalau12i	$a5, %got_pc_hi20(zz_res)
	ld.d	$a5, $a5, %got_pc_lo12(zz_res)
	ld.d	$a6, $a2, 16
	st.d	$a3, $a5, 0
	st.d	$a6, $a3, 16
	st.d	$a3, $a6, 24
	st.d	$a2, $a2, 24
	st.d	$a2, $a2, 16
.LBB0_440:                              #   in Loop: Header=BB0_438 Depth=2
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	ld.d	$a5, $a2, 8
	st.d	$a2, $a3, 0
	beq	$a5, $a2, .LBB0_437
# %bb.441:                              #   in Loop: Header=BB0_438 Depth=2
	pcalau12i	$a6, %got_pc_hi20(zz_res)
	ld.d	$a6, $a6, %got_pc_lo12(zz_res)
	st.d	$a5, $a6, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a5, 0
	ld.d	$a5, $a3, 0
	ld.d	$a2, $a6, 0
	ld.d	$a6, $a5, 0
	st.d	$a2, $a6, 8
	st.d	$a5, $a5, 0
	ld.d	$a2, $a4, 0
	st.d	$a5, $a5, 8
	b	.LBB0_437
	.p2align	4, , 16
.LBB0_442:                              #   in Loop: Header=BB0_443 Depth=2
	ld.bu	$a4, $a2, 32
	pcalau12i	$a5, %got_pc_hi20(zz_lengths)
	ld.d	$a5, $a5, %got_pc_lo12(zz_lengths)
	addi.d	$a6, $a4, -11
	sltui	$a6, $a6, 2
	addi.d	$a7, $a2, 33
	add.d	$a4, $a5, $a4
	masknez	$a4, $a4, $a6
	maskeqz	$a5, $a7, $a6
	or	$a4, $a5, $a4
	ld.bu	$a4, $a4, 0
	pcalau12i	$a5, %got_pc_hi20(zz_free)
	ld.d	$a5, $a5, %got_pc_lo12(zz_free)
	pcalau12i	$a6, %got_pc_hi20(zz_size)
	ld.d	$a6, $a6, %got_pc_lo12(zz_size)
	slli.d	$a7, $a4, 3
	ldx.d	$a7, $a5, $a7
	st.d	$a2, $a3, 0
	st.w	$a4, $a6, 0
	st.d	$a7, $a2, 0
	ld.w	$a2, $a6, 0
	ld.d	$a3, $a3, 0
	ld.d	$s6, $a1, 0
	slli.d	$a2, $a2, 3
	stx.d	$a3, $a5, $a2
.LBB0_443:                              # %.preheader1024
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s6, 8
	beq	$a2, $s6, .LBB0_448
# %bb.444:                              # %.lr.ph1240
                                        #   in Loop: Header=BB0_443 Depth=2
	pcalau12i	$a3, %got_pc_hi20(xx_link)
	ld.d	$a4, $a3, %got_pc_lo12(xx_link)
	ld.d	$a3, $a2, 24
	st.d	$a2, $a4, 0
	beq	$a3, $a2, .LBB0_446
# %bb.445:                              #   in Loop: Header=BB0_443 Depth=2
	pcalau12i	$a5, %got_pc_hi20(zz_res)
	ld.d	$a5, $a5, %got_pc_lo12(zz_res)
	ld.d	$a6, $a2, 16
	st.d	$a3, $a5, 0
	st.d	$a6, $a3, 16
	st.d	$a3, $a6, 24
	st.d	$a2, $a2, 24
	st.d	$a2, $a2, 16
.LBB0_446:                              #   in Loop: Header=BB0_443 Depth=2
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	ld.d	$a5, $a2, 8
	st.d	$a2, $a3, 0
	beq	$a5, $a2, .LBB0_442
# %bb.447:                              #   in Loop: Header=BB0_443 Depth=2
	pcalau12i	$a6, %got_pc_hi20(zz_res)
	ld.d	$a6, $a6, %got_pc_lo12(zz_res)
	st.d	$a5, $a6, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a5, 0
	ld.d	$a5, $a3, 0
	ld.d	$a2, $a6, 0
	ld.d	$a6, $a5, 0
	st.d	$a2, $a6, 8
	st.d	$a5, $a5, 0
	ld.d	$a2, $a4, 0
	st.d	$a5, $a5, 8
	b	.LBB0_442
.LBB0_448:                              # %._crit_edge1241
                                        #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.bu	$a2, $s6, 32
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	pcalau12i	$a3, %got_pc_hi20(zz_lengths)
	ld.d	$a3, $a3, %got_pc_lo12(zz_lengths)
	addi.d	$a4, $a2, -11
	sltui	$a4, $a4, 2
	addi.d	$a5, $s6, 33
	add.d	$a2, $a3, $a2
	masknez	$a2, $a2, $a4
	maskeqz	$a3, $a5, $a4
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(zz_free)
	ld.d	$a3, $a3, %got_pc_lo12(zz_free)
	pcalau12i	$a4, %got_pc_hi20(zz_size)
	ld.d	$a4, $a4, %got_pc_lo12(zz_size)
	slli.d	$a5, $a2, 3
	ldx.d	$a5, $a3, $a5
	st.d	$s6, $a1, 0
	st.w	$a2, $a4, 0
	st.d	$a5, $s6, 0
	ld.w	$a2, $a4, 0
	ld.d	$a1, $a1, 0
	slli.d	$a2, $a2, 3
	stx.d	$a1, $a3, $a2
	move	$s0, $a0
	b	.LBB0_1
.LBB0_449:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $s1, 104
	move	$s0, $fp
	beqz	$a0, .LBB0_451
# %bb.450:                              #   in Loop: Header=BB0_1 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	st.d	$zero, $s1, 104
.LBB0_451:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	b	.LBB0_387
.LBB0_452:                              # %._crit_edge1206
	ld.d	$a0, $sp, 1472
	beqz	$a0, .LBB0_454
# %bb.453:
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB0_454:
	ld.d	$a0, $s1, 8
	beq	$a0, $s1, .LBB0_457
# %bb.455:
	move	$s3, $s0
	ori	$a3, $zero, 1
	move	$a0, $s1
	move	$a1, $s1
	move	$a2, $s6
	pcaddu18i	$ra, %call36(Promote)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_458
# %bb.456:
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a1, $a0, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	addi.w	$a2, $a0, 0
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	move	$a0, $fp
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	addi.w	$a1, $a0, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	addi.w	$a2, $a0, 0
	move	$a0, $fp
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 104
	bnez	$a0, .LBB0_462
	b	.LBB0_472
.LBB0_457:
	move	$s3, $s0
.LBB0_458:
	ld.d	$a0, $s1, 104
	bnez	$a0, .LBB0_462
	b	.LBB0_472
.LBB0_459:                              # %.thread1501
	move	$s3, $s0
	ld.d	$a0, $s1, 8
	beq	$a0, $s1, .LBB0_461
# %bb.460:                              # %.thread1519
	ori	$a3, $zero, 1
	move	$a0, $s1
	move	$a1, $s1
	move	$a2, $s6
	pcaddu18i	$ra, %call36(Promote)
	jirl	$ra, $ra, 0
.LBB0_461:
	st.d	$zero, $sp, 256                 # 8-byte Folded Spill
	ld.d	$a0, $s1, 104
	beqz	$a0, .LBB0_472
.LBB0_462:
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s1, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s1, 26
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$fp, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s2, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a0, 3
	ldx.d	$s0, $fp, $a1
	st.w	$a0, $s2, 0
	beqz	$s0, .LBB0_464
# %bb.463:
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s0, $a1, 0
	ld.d	$a1, $s0, 0
	alsl.d	$a0, $a0, $fp, 3
	st.d	$a1, $a0, 0
	b	.LBB0_465
.LBB0_464:
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s0, $a0
	st.d	$a0, $a1, 0
.LBB0_465:
	ori	$a0, $zero, 26
	st.b	$a0, $s0, 32
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 16
	st.d	$s0, $s0, 8
	st.d	$s0, $s0, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	sltui	$a0, $a0, 1
	ld.w	$a1, $sp, 1448
	ld.w	$a2, $sp, 1452
	ld.w	$a3, $sp, 1456
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	maskeqz	$a4, $a4, $a0
	masknez	$a1, $a1, $a0
	or	$a1, $a4, $a1
	masknez	$a2, $a2, $a0
	or	$a5, $a4, $a2
	masknez	$a0, $a3, $a0
	or	$a0, $a4, $a0
	ld.bu	$a2, $s1, 0
	st.w	$a1, $s0, 64
	st.w	$a5, $s0, 68
	st.w	$a0, $s0, 72
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $fp, $a0
	st.w	$a2, $s2, 0
	beqz	$a0, .LBB0_467
# %bb.466:
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $fp, 3
	st.d	$a1, $a2, 0
	b	.LBB0_468
.LBB0_467:
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB0_468:
	ld.d	$s1, $sp, 312                   # 8-byte Folded Reload
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a1, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	ld.d	$a4, $s1, 112
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	st.d	$a0, $a2, 0
	st.d	$a4, $a3, 0
	beqz	$a4, .LBB0_470
# %bb.469:
	ld.d	$a5, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $a2, 0
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a6, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a4, $a2, 0
	ld.d	$a0, $a1, 0
	st.d	$a4, $a6, 8
	st.d	$a0, $a2, 0
	st.d	$s0, $a3, 0
	bnez	$a0, .LBB0_471
	b	.LBB0_472
.LBB0_470:                              # %.thread1527
	st.d	$s0, $a3, 0
.LBB0_471:
	ld.d	$a1, $s0, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $s0, 16
	st.d	$s0, $a3, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_472:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(DetachGalley)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(KillGalley)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	move	$a0, $s3
	move	$a1, $s6
.LBB0_473:                              # %ParentFlush.exit976
	pcaddu18i	$ra, %call36(ParentFlush)
	jirl	$ra, $ra, 0
.LBB0_474:                              # %ParentFlush.exit976
	ld.d	$s8, $sp, 1480                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1488                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1496                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1504                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1512                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1520                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1528                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1536                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1544                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1552                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1560                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1568
	ret
.LBB0_475:
	beqz	$s0, .LBB0_474
# %bb.476:
	ld.d	$a0, $s6, 24
	.p2align	4, , 16
.LBB0_477:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 0
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_477
	b	.LBB0_482
.LBB0_478:                              # %..thread997_crit_edge
	ld.hu	$a1, $a0, 42
.LBB0_479:                              # %.thread997
	ori	$a1, $a1, 32
	st.h	$a1, $a0, 42
	beqz	$s0, .LBB0_474
# %bb.480:
	ld.d	$a0, $s6, 24
	.p2align	4, , 16
.LBB0_481:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 0
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_481
.LBB0_482:
	pcaddu18i	$ra, %call36(FlushGalley)
	jirl	$ra, $ra, 0
	b	.LBB0_474
.LBB0_483:
	beqz	$s0, .LBB0_487
# %bb.484:
	ld.d	$a0, $s6, 24
.LBB0_485:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 0
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_485
# %bb.486:
	pcaddu18i	$ra, %call36(FlushGalley)
	jirl	$ra, $ra, 0
.LBB0_487:                              # %ParentFlush.exit
	ld.d	$a0, $sp, 1472
	beqz	$a0, .LBB0_474
# %bb.488:
	ld.d	$a4, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a5, $a0, %pc_lo12(.L.str.4)
	b	.LBB0_499
.LBB0_489:
	move	$fp, $s0
	ld.d	$a0, $s6, 80
	ld.d	$a2, $a0, 80
	ld.d	$a4, $s1, 88
	ld.hu	$a0, $s1, 42
	xor	$a1, $a2, $a4
	lu12i.w	$a3, 1
	and	$a0, $a0, $a3
	sltui	$s0, $a1, 1
	bnez	$a0, .LBB0_500
# %bb.490:
	ld.hu	$a0, $s6, 42
	bstrpick.d	$a0, $a0, 5, 5
	masknez	$a1, $fp, $s0
	ori	$a2, $zero, 1
	maskeqz	$a2, $a2, $s0
	or	$a1, $a2, $a1
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $fp, $a0
	or	$fp, $a1, $a0
	b	.LBB0_506
.LBB0_491:
	ld.d	$a0, $sp, 1472
	beqz	$a0, .LBB0_474
# %bb.492:
	ld.d	$a4, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a5, $a0, %pc_lo12(.L.str.3)
	b	.LBB0_499
.LBB0_493:
	beqz	$s0, .LBB0_497
# %bb.494:
	ld.d	$a0, $s6, 24
.LBB0_495:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 0
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_495
# %bb.496:
	pcaddu18i	$ra, %call36(FlushGalley)
	jirl	$ra, $ra, 0
.LBB0_497:                              # %ParentFlush.exit972
	ld.d	$a0, $sp, 1472
	beqz	$a0, .LBB0_474
# %bb.498:
	ld.d	$a4, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a5, $a0, %pc_lo12(.L.str.5)
.LBB0_499:                              # %ParentFlush.exit976
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB0_474
.LBB0_500:
	ld.d	$a1, $s6, 24
	move	$a0, $a1
.LBB0_501:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 0
	ld.bu	$a3, $a0, 32
	beqz	$a3, .LBB0_501
# %bb.502:
	ld.hu	$a3, $s6, 42
	andi	$a5, $a3, 1
	bnez	$a5, .LBB0_505
# %bb.503:
	bne	$a2, $a4, .LBB0_505
# %bb.504:
	addi.d	$a2, $a3, 1
	st.h	$a2, $s6, 42
	ld.d	$a4, $s1, 88
	ori	$fp, $zero, 1
.LBB0_505:
	addi.d	$a2, $sp, 1472
	move	$a3, $a1
	pcaddu18i	$ra, %call36(FreeGalley)
	jirl	$ra, $ra, 0
.LBB0_506:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(DetachGalley)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(KillGalley)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1472
	beqz	$a0, .LBB0_508
# %bb.507:
	move	$a1, $zero
	pcaddu18i	$ra, %call36(FlushInners)
	jirl	$ra, $ra, 0
	b	.LBB0_474
.LBB0_508:
	move	$a0, $fp
	move	$a1, $s6
	move	$a2, $s0
	b	.LBB0_473
.Lfunc_end0:
	.size	FlushGalley, .Lfunc_end0-FlushGalley
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_491-.LJTI0_0
	.word	.LBB0_483-.LJTI0_0
	.word	.LBB0_493-.LJTI0_0
	.word	.LBB0_13-.LJTI0_0
	.word	.LBB0_489-.LJTI0_0
	.word	.LBB0_17-.LJTI0_0
.LJTI0_1:
	.word	.LBB0_95-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_28-.LJTI0_1
	.word	.LBB0_28-.LJTI0_1
	.word	.LBB0_28-.LJTI0_1
	.word	.LBB0_28-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_91-.LJTI0_1
	.word	.LBB0_147-.LJTI0_1
	.word	.LBB0_147-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_91-.LJTI0_1
	.word	.LBB0_99-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_68-.LJTI0_1
	.word	.LBB0_68-.LJTI0_1
	.word	.LBB0_68-.LJTI0_1
	.word	.LBB0_68-.LJTI0_1
	.word	.LBB0_68-.LJTI0_1
	.word	.LBB0_68-.LJTI0_1
	.word	.LBB0_68-.LJTI0_1
	.word	.LBB0_68-.LJTI0_1
	.word	.LBB0_68-.LJTI0_1
	.word	.LBB0_68-.LJTI0_1
	.word	.LBB0_68-.LJTI0_1
	.word	.LBB0_68-.LJTI0_1
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function ParentFlush
	.type	ParentFlush,@function
ParentFlush:                            # @ParentFlush
# %bb.0:
	beqz	$a0, .LBB1_20
# %bb.1:
	ld.d	$a3, $a1, 24
	move	$a0, $a3
	.p2align	4, , 16
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 0
	ld.bu	$a4, $a0, 32
	beqz	$a4, .LBB1_2
# %bb.3:
	beqz	$a2, .LBB1_19
# %bb.4:
	pcalau12i	$a2, %got_pc_hi20(xx_hold)
	ld.d	$a2, $a2, %got_pc_lo12(xx_hold)
	st.d	$a1, $a2, 0
	beq	$a3, $a1, .LBB1_11
# %bb.5:
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a4, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a5, $a1, %got_pc_lo12(zz_hold)
	pcalau12i	$a1, %got_pc_hi20(zz_lengths)
	ld.d	$a6, $a1, %got_pc_lo12(zz_lengths)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$a7, $a1, %got_pc_lo12(zz_size)
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$t0, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$t1, $a1, %got_pc_lo12(zz_res)
	b	.LBB1_7
	.p2align	4, , 16
.LBB1_6:                                #   in Loop: Header=BB1_7 Depth=1
	ld.bu	$a1, $a3, 32
	addi.d	$t2, $a1, -11
	sltui	$t2, $t2, 2
	addi.d	$t3, $a3, 33
	add.d	$a1, $a6, $a1
	masknez	$a1, $a1, $t2
	maskeqz	$t2, $t3, $t2
	or	$a1, $t2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$t2, $a1, 3
	ldx.d	$t2, $t0, $t2
	st.d	$a3, $a5, 0
	st.w	$a1, $a7, 0
	st.d	$t2, $a3, 0
	ld.w	$a3, $a7, 0
	ld.d	$t2, $a5, 0
	ld.d	$a1, $a2, 0
	slli.d	$a3, $a3, 3
	stx.d	$t2, $t0, $a3
	ld.d	$a3, $a1, 24
	beq	$a3, $a1, .LBB1_11
.LBB1_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a3, 24
	st.d	$a3, $a4, 0
	beq	$a1, $a3, .LBB1_9
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=1
	ld.d	$t2, $a3, 16
	st.d	$a1, $t1, 0
	st.d	$t2, $a1, 16
	st.d	$a1, $t2, 24
	st.d	$a3, $a3, 24
	st.d	$a3, $a3, 16
.LBB1_9:                                #   in Loop: Header=BB1_7 Depth=1
	ld.d	$a1, $a3, 8
	st.d	$a3, $a5, 0
	beq	$a1, $a3, .LBB1_6
# %bb.10:                               #   in Loop: Header=BB1_7 Depth=1
	st.d	$a1, $t1, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a1, 0
	ld.d	$a1, $a5, 0
	ld.d	$a3, $t1, 0
	ld.d	$t2, $a1, 0
	st.d	$a3, $t2, 8
	st.d	$a1, $a1, 0
	ld.d	$a3, $a4, 0
	st.d	$a1, $a1, 8
	b	.LBB1_6
.LBB1_11:                               # %.preheader49
	ld.d	$t1, $a1, 8
	beq	$t1, $a1, .LBB1_18
# %bb.12:
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a3, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a4, $a1, %got_pc_lo12(zz_hold)
	pcalau12i	$a1, %got_pc_hi20(zz_lengths)
	ld.d	$a5, $a1, %got_pc_lo12(zz_lengths)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$a6, $a1, %got_pc_lo12(zz_size)
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$a7, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$t0, $a1, %got_pc_lo12(zz_res)
	b	.LBB1_14
	.p2align	4, , 16
.LBB1_13:                               #   in Loop: Header=BB1_14 Depth=1
	ld.bu	$a1, $t1, 32
	addi.d	$t2, $a1, -11
	sltui	$t2, $t2, 2
	addi.d	$t3, $t1, 33
	add.d	$a1, $a5, $a1
	masknez	$a1, $a1, $t2
	maskeqz	$t2, $t3, $t2
	or	$a1, $t2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$t2, $a1, 3
	ldx.d	$t2, $a7, $t2
	st.d	$t1, $a4, 0
	st.w	$a1, $a6, 0
	st.d	$t2, $t1, 0
	ld.w	$t1, $a6, 0
	ld.d	$t2, $a4, 0
	ld.d	$a1, $a2, 0
	slli.d	$t1, $t1, 3
	stx.d	$t2, $a7, $t1
	ld.d	$t1, $a1, 8
	beq	$t1, $a1, .LBB1_18
.LBB1_14:                               # %.lr.ph53
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $t1, 24
	st.d	$t1, $a3, 0
	beq	$a1, $t1, .LBB1_16
# %bb.15:                               #   in Loop: Header=BB1_14 Depth=1
	ld.d	$t2, $t1, 16
	st.d	$a1, $t0, 0
	st.d	$t2, $a1, 16
	st.d	$a1, $t2, 24
	st.d	$t1, $t1, 24
	st.d	$t1, $t1, 16
.LBB1_16:                               #   in Loop: Header=BB1_14 Depth=1
	ld.d	$a1, $t1, 8
	st.d	$t1, $a4, 0
	beq	$a1, $t1, .LBB1_13
# %bb.17:                               #   in Loop: Header=BB1_14 Depth=1
	st.d	$a1, $t0, 0
	ld.d	$t1, $t1, 0
	st.d	$t1, $a1, 0
	ld.d	$a1, $a4, 0
	ld.d	$t1, $t0, 0
	ld.d	$t2, $a1, 0
	st.d	$t1, $t2, 8
	st.d	$a1, $a1, 0
	ld.d	$t1, $a3, 0
	st.d	$a1, $a1, 8
	b	.LBB1_13
.LBB1_18:                               # %._crit_edge
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.bu	$a3, $a1, 32
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	pcalau12i	$a4, %got_pc_hi20(zz_lengths)
	ld.d	$a4, $a4, %got_pc_lo12(zz_lengths)
	addi.d	$a5, $a3, -11
	sltui	$a5, $a5, 2
	addi.d	$a6, $a1, 33
	add.d	$a3, $a4, $a3
	masknez	$a3, $a3, $a5
	maskeqz	$a4, $a6, $a5
	or	$a3, $a4, $a3
	ld.bu	$a3, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(zz_free)
	ld.d	$a4, $a4, %got_pc_lo12(zz_free)
	pcalau12i	$a5, %got_pc_hi20(zz_size)
	ld.d	$a5, $a5, %got_pc_lo12(zz_size)
	slli.d	$a6, $a3, 3
	ldx.d	$a6, $a4, $a6
	st.d	$a1, $a2, 0
	st.w	$a3, $a5, 0
	st.d	$a6, $a1, 0
	ld.w	$a1, $a5, 0
	ld.d	$a2, $a2, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $a4, $a1
.LBB1_19:
	pcaddu18i	$t8, %call36(FlushGalley)
	jr	$t8
.LBB1_20:
	beqz	$a2, .LBB1_36
# %bb.21:
	pcalau12i	$a0, %got_pc_hi20(xx_hold)
	ld.d	$a0, $a0, %got_pc_lo12(xx_hold)
	ld.d	$t0, $a1, 24
	st.d	$a1, $a0, 0
	beq	$t0, $a1, .LBB1_28
# %bb.22:
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a1, %got_pc_lo12(zz_hold)
	pcalau12i	$a1, %got_pc_hi20(zz_lengths)
	ld.d	$a4, $a1, %got_pc_lo12(zz_lengths)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$a5, $a1, %got_pc_lo12(zz_size)
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$a6, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a7, $a1, %got_pc_lo12(zz_res)
	b	.LBB1_24
	.p2align	4, , 16
.LBB1_23:                               #   in Loop: Header=BB1_24 Depth=1
	ld.bu	$a1, $t0, 32
	addi.d	$t1, $a1, -11
	sltui	$t1, $t1, 2
	addi.d	$t2, $t0, 33
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $t1
	maskeqz	$t1, $t2, $t1
	or	$a1, $t1, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$t1, $a1, 3
	ldx.d	$t1, $a6, $t1
	st.d	$t0, $a3, 0
	st.w	$a1, $a5, 0
	st.d	$t1, $t0, 0
	ld.w	$t0, $a5, 0
	ld.d	$t1, $a3, 0
	ld.d	$a1, $a0, 0
	slli.d	$t0, $t0, 3
	stx.d	$t1, $a6, $t0
	ld.d	$t0, $a1, 24
	beq	$t0, $a1, .LBB1_28
.LBB1_24:                               # %.lr.ph56
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $t0, 24
	st.d	$t0, $a2, 0
	beq	$a1, $t0, .LBB1_26
# %bb.25:                               #   in Loop: Header=BB1_24 Depth=1
	ld.d	$t1, $t0, 16
	st.d	$a1, $a7, 0
	st.d	$t1, $a1, 16
	st.d	$a1, $t1, 24
	st.d	$t0, $t0, 24
	st.d	$t0, $t0, 16
.LBB1_26:                               #   in Loop: Header=BB1_24 Depth=1
	ld.d	$a1, $t0, 8
	st.d	$t0, $a3, 0
	beq	$a1, $t0, .LBB1_23
# %bb.27:                               #   in Loop: Header=BB1_24 Depth=1
	st.d	$a1, $a7, 0
	ld.d	$t0, $t0, 0
	st.d	$t0, $a1, 0
	ld.d	$a1, $a3, 0
	ld.d	$t0, $a7, 0
	ld.d	$t1, $a1, 0
	st.d	$t0, $t1, 8
	st.d	$a1, $a1, 0
	ld.d	$t0, $a2, 0
	st.d	$a1, $a1, 8
	b	.LBB1_23
.LBB1_28:                               # %.preheader
	ld.d	$t0, $a1, 8
	beq	$t0, $a1, .LBB1_35
# %bb.29:
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a1, %got_pc_lo12(zz_hold)
	pcalau12i	$a1, %got_pc_hi20(zz_lengths)
	ld.d	$a4, $a1, %got_pc_lo12(zz_lengths)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$a5, $a1, %got_pc_lo12(zz_size)
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$a6, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a7, $a1, %got_pc_lo12(zz_res)
	b	.LBB1_31
	.p2align	4, , 16
.LBB1_30:                               #   in Loop: Header=BB1_31 Depth=1
	ld.bu	$a1, $t0, 32
	addi.d	$t1, $a1, -11
	sltui	$t1, $t1, 2
	addi.d	$t2, $t0, 33
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $t1
	maskeqz	$t1, $t2, $t1
	or	$a1, $t1, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$t1, $a1, 3
	ldx.d	$t1, $a6, $t1
	st.d	$t0, $a3, 0
	st.w	$a1, $a5, 0
	st.d	$t1, $t0, 0
	ld.w	$t0, $a5, 0
	ld.d	$t1, $a3, 0
	ld.d	$a1, $a0, 0
	slli.d	$t0, $t0, 3
	stx.d	$t1, $a6, $t0
	ld.d	$t0, $a1, 8
	beq	$t0, $a1, .LBB1_35
.LBB1_31:                               # %.lr.ph58
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $t0, 24
	st.d	$t0, $a2, 0
	beq	$a1, $t0, .LBB1_33
# %bb.32:                               #   in Loop: Header=BB1_31 Depth=1
	ld.d	$t1, $t0, 16
	st.d	$a1, $a7, 0
	st.d	$t1, $a1, 16
	st.d	$a1, $t1, 24
	st.d	$t0, $t0, 24
	st.d	$t0, $t0, 16
.LBB1_33:                               #   in Loop: Header=BB1_31 Depth=1
	ld.d	$a1, $t0, 8
	st.d	$t0, $a3, 0
	beq	$a1, $t0, .LBB1_30
# %bb.34:                               #   in Loop: Header=BB1_31 Depth=1
	st.d	$a1, $a7, 0
	ld.d	$t0, $t0, 0
	st.d	$t0, $a1, 0
	ld.d	$a1, $a3, 0
	ld.d	$t0, $a7, 0
	ld.d	$t1, $a1, 0
	st.d	$t0, $t1, 8
	st.d	$a1, $a1, 0
	ld.d	$t0, $a2, 0
	st.d	$a1, $a1, 8
	b	.LBB1_30
.LBB1_35:                               # %._crit_edge59
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.bu	$a2, $a1, 32
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	pcalau12i	$a3, %got_pc_hi20(zz_lengths)
	ld.d	$a3, $a3, %got_pc_lo12(zz_lengths)
	addi.d	$a4, $a2, -11
	sltui	$a4, $a4, 2
	addi.d	$a5, $a1, 33
	add.d	$a2, $a3, $a2
	masknez	$a2, $a2, $a4
	maskeqz	$a3, $a5, $a4
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(zz_free)
	ld.d	$a3, $a3, %got_pc_lo12(zz_free)
	pcalau12i	$a4, %got_pc_hi20(zz_size)
	ld.d	$a4, $a4, %got_pc_lo12(zz_size)
	slli.d	$a5, $a2, 3
	ldx.d	$a5, $a3, $a5
	st.d	$a1, $a0, 0
	st.w	$a2, $a4, 0
	st.d	$a5, $a1, 0
	ld.w	$a1, $a4, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a0, $a3, $a1
.LBB1_36:
	ret
.Lfunc_end1:
	.size	ParentFlush, .Lfunc_end1-ParentFlush
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"FlushGalley: type(hd) != HEAD!"
	.size	.L.str.1, 31

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"FlushGalley: resume found no parent to hd!"
	.size	.L.str.2, 43

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"FlushGalley/ATTACH_KILLED: inners!=nilobj!"
	.size	.L.str.3, 43

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"FlushGalley/ATTACH_INPUT: inners!=nilobj!"
	.size	.L.str.4, 42

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"FlushGalley/ATTACH_NOTARG: inners!=nilobj!"
	.size	.L.str.5, 43

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"FlushGalley: attach_status"
	.size	.L.str.6, 27

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"assert failed in %s %s"
	.size	.L.str.7, 23

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"FlushGalley: dest_index"
	.size	.L.str.8, 24

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Flush: PRECEDES!"
	.size	.L.str.10, 17

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"FlushG: UpDims!"
	.size	.L.str.11, 16

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"FlushGalley: dest != VCAT or ACAT!"
	.size	.L.str.12, 35

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"FlushGalley: prec_gap == nilobj && !is_indefinite(type(y))!"
	.size	.L.str.13, 60

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"FlushGalley: succ_gap != nilobj!"
	.size	.L.str.14, 33

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"FlushGalley: dest_side != FWD || !is_indefinite(type(y))!"
	.size	.L.str.15, 58

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"component too wide for available space"
	.size	.L.str.16, 39

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"FlushGalley:  tgp!"
	.size	.L.str.17, 19

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"FlushGalley:"
	.size	.L.str.18, 13

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"FlushGalley: reject print!"
	.size	.L.str.19, 27

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"FlushGalley: header under SPLIT!"
	.size	.L.str.20, 33

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"FlushGalley/REJECT: headers!"
	.size	.L.str.21, 29

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"FlushGalley/REJECT: first_link!"
	.size	.L.str.22, 32

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"FlushGalley/REJECT THR!"
	.size	.L.str.23, 24

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"FlushGalley/REJECT: headers_count!"
	.size	.L.str.24, 35

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"FlushGalley/REJECT: dest_index!"
	.size	.L.str.25, 32

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"error in database file %s"
	.size	.L.str.26, 26

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"AttachG: db CLOSURE!"
	.size	.L.str.27, 21

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"FlushGalley: cr is_word(type(tag))!"
	.size	.L.str.28, 36

	.section	".note.GNU-stack","",@progbits
	.addrsig
