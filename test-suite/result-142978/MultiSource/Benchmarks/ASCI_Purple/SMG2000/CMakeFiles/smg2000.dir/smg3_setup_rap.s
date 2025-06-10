	.file	"smg3_setup_rap.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function hypre_SMG3CreateRAPOp
.LCPI0_0:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
.LCPI0_1:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
.LCPI0_2:
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
.LCPI0_3:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
.LCPI0_5:
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI0_6:
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
.LCPI0_7:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
.LCPI0_8:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	0                               # 0x0
.LCPI0_9:
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	1                               # 0x1
.LCPI0_10:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
.LCPI0_12:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
.LCPI0_13:
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_4:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
.LCPI0_11:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.text
	.globl	hypre_SMG3CreateRAPOp
	.p2align	5
	.type	hypre_SMG3CreateRAPOp,@function
hypre_SMG3CreateRAPOp:                  # @hypre_SMG3CreateRAPOp
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L__const.hypre_SMG3CreateRAPOp.RAP_num_ghost)
	addi.d	$a0, $a0, %pc_lo12(.L__const.hypre_SMG3CreateRAPOp.RAP_num_ghost)
	ld.d	$a2, $a0, 16
	vld	$vr0, $a0, 0
	move	$fp, $a1
	ld.d	$a0, $a1, 24
	st.d	$a2, $sp, 24
	vst	$vr0, $sp, 8
	ld.w	$a1, $a1, 72
	ld.w	$a0, $a0, 8
	move	$s0, $a3
	beqz	$a1, .LBB0_3
# %bb.1:
	ori	$a1, $zero, 15
	blt	$a1, $a0, .LBB0_5
# %bb.2:                                # %.loopexit.loopexit158
	ori	$a0, $zero, 8
	ori	$a1, $zero, 12
	ori	$s1, $zero, 8
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_5)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_5)
	pcalau12i	$a1, %pc_hi20(.LCPI0_6)
	xvld	$xr1, $a1, %pc_lo12(.LCPI0_6)
	move	$a2, $a0
	xvst	$xr0, $a0, 0
	xvst	$xr1, $a0, 32
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.d	$a0, $a2, 64
	st.w	$a0, $a2, 72
	vrepli.b	$vr0, 0
	vst	$vr0, $a2, 76
	st.w	$zero, $a2, 92
	b	.LBB0_7
.LBB0_3:
	ori	$s1, $zero, 15
	blt	$s1, $a0, .LBB0_6
# %bb.4:                                # %.loopexit.loopexit
	ori	$a0, $zero, 15
	ori	$a1, $zero, 12
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_5)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_5)
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI0_6)
	xvld	$xr1, $a0, %pc_lo12(.LCPI0_6)
	xvst	$xr0, $a2, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_12)
	xvld	$xr0, $a0, %pc_lo12(.LCPI0_12)
	xvst	$xr1, $a2, 32
	vrepli.b	$vr1, 0
	vst	$vr1, $a2, 76
	xvst	$xr0, $a2, 96
	pcalau12i	$a0, %pc_hi20(.LCPI0_13)
	xvld	$xr0, $a0, %pc_lo12(.LCPI0_13)
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.d	$a0, $a2, 64
	st.w	$a0, $a2, 72
	st.w	$zero, $a2, 92
	xvst	$xr0, $a2, 128
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $a2, 160
	ori	$a0, $zero, 1
	st.w	$a0, $a2, 176
	b	.LBB0_7
.LBB0_5:                                # %.split133.us.1
	ori	$a0, $zero, 14
	ori	$a1, $zero, 12
	ori	$s1, $zero, 14
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_0)
	move	$a2, $a0
	xvst	$xr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	xvld	$xr0, $a0, %pc_lo12(.LCPI0_1)
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	xvld	$xr1, $a0, %pc_lo12(.LCPI0_2)
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	xvld	$xr2, $a0, %pc_lo12(.LCPI0_3)
	pcalau12i	$a0, %pc_hi20(.LCPI0_4)
	vld	$vr3, $a0, %pc_lo12(.LCPI0_4)
	xvst	$xr0, $a2, 32
	xvst	$xr1, $a2, 64
	xvst	$xr2, $a2, 96
	vst	$vr3, $a2, 128
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $a2, 144
	vrepli.b	$vr0, 0
	vst	$vr0, $a2, 148
	st.w	$zero, $a2, 164
	b	.LBB0_7
.LBB0_6:                                # %.preheader114
	ori	$a0, $zero, 27
	ori	$a1, $zero, 12
	ori	$s1, $zero, 27
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_0)
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI0_1)
	xvst	$xr0, $a2, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	xvld	$xr0, $a0, %pc_lo12(.LCPI0_2)
	xvst	$xr1, $a2, 32
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	xvld	$xr1, $a0, %pc_lo12(.LCPI0_3)
	xvst	$xr0, $a2, 64
	pcalau12i	$a0, %pc_hi20(.LCPI0_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_4)
	xvst	$xr1, $a2, 96
	pcalau12i	$a0, %pc_hi20(.LCPI0_7)
	xvld	$xr1, $a0, %pc_lo12(.LCPI0_7)
	vst	$vr0, $a2, 128
	vrepli.b	$vr0, 0
	vst	$vr0, $a2, 148
	xvst	$xr1, $a2, 168
	pcalau12i	$a0, %pc_hi20(.LCPI0_8)
	xvld	$xr0, $a0, %pc_lo12(.LCPI0_8)
	pcalau12i	$a0, %pc_hi20(.LCPI0_9)
	xvld	$xr1, $a0, %pc_lo12(.LCPI0_9)
	pcalau12i	$a0, %pc_hi20(.LCPI0_10)
	xvld	$xr2, $a0, %pc_lo12(.LCPI0_10)
	xvst	$xr0, $a2, 200
	xvst	$xr1, $a2, 232
	addi.w	$a0, $zero, -1
	xvst	$xr2, $a2, 264
	pcalau12i	$a1, %pc_hi20(.LCPI0_11)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_11)
	lu32i.d	$a0, 0
	st.w	$a0, $a2, 144
	st.w	$zero, $a2, 164
	vst	$vr0, $a2, 296
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	st.d	$a1, $a2, 312
	st.w	$a0, $a2, 320
.LBB0_7:                                # %.loopexit
	ori	$a0, $zero, 3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructStencilCreate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	move	$s1, $a0
	move	$a0, $a1
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixCreate)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_StructStencilDestroy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 72
	st.w	$a0, $s0, 72
	beqz	$a0, .LBB0_9
# %bb.8:
	st.w	$zero, $sp, 12
	st.w	$zero, $sp, 20
	st.w	$zero, $sp, 28
.LBB0_9:
	addi.d	$a1, $sp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixSetNumGhost)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end0:
	.size	hypre_SMG3CreateRAPOp, .Lfunc_end0-hypre_SMG3CreateRAPOp
                                        # -- End function
	.globl	hypre_SMG3BuildRAPSym           # -- Begin function hypre_SMG3BuildRAPSym
	.p2align	5
	.type	hypre_SMG3BuildRAPSym,@function
hypre_SMG3BuildRAPSym:                  # @hypre_SMG3BuildRAPSym
# %bb.0:                                # %.split
	addi.d	$sp, $sp, -1392
	st.d	$ra, $sp, 1384                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1376                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1368                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1360                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1352                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1344                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1336                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1328                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1320                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1312                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1304                  # 8-byte Folded Spill
	move	$s6, $a3
	ld.d	$a3, $a3, 8
	ld.d	$a7, $a3, 8
	ld.w	$a6, $a7, 8
	ori	$s5, $zero, 1
	st.d	$a5, $sp, 112                   # 8-byte Folded Spill
	st.d	$a4, $sp, 80                    # 8-byte Folded Spill
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	blt	$a6, $s5, .LBB1_56
# %bb.1:                                # %.preheader2462.lr.ph
	move	$s2, $a0
	ld.d	$a0, $a0, 24
	ld.d	$a1, $s2, 8
	move	$s3, $zero
	move	$a4, $zero
	ld.w	$a2, $a0, 8
	ld.d	$a0, $a1, 16
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $a3, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
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
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %.loopexit2458
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a7, 8
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	addi.d	$s3, $s3, 1
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ori	$s5, $zero, 1
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	bge	$s3, $a0, .LBB1_56
.LBB1_3:                                # %.preheader2462
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
                                        #     Child Loop BB1_50 Depth 2
                                        #       Child Loop BB1_51 Depth 3
                                        #         Child Loop BB1_52 Depth 4
                                        #     Child Loop BB1_20 Depth 2
                                        #       Child Loop BB1_21 Depth 3
                                        #         Child Loop BB1_22 Depth 4
                                        #     Child Loop BB1_30 Depth 2
                                        #       Child Loop BB1_31 Depth 3
                                        #         Child Loop BB1_32 Depth 4
                                        #     Child Loop BB1_40 Depth 2
                                        #       Child Loop BB1_41 Depth 3
                                        #         Child Loop BB1_42 Depth 4
	slli.d	$a0, $s3, 2
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.d	$fp, $a4, -1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a1, $a4, $a1, 2
	slli.d	$a2, $a4, 4
	alsl.d	$a2, $a4, $a2, 3
	addi.d	$a3, $a4, -1
	addi.d	$s4, $a2, -12
	.p2align	4, , 16
.LBB1_4:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	addi.w	$a3, $a3, 1
	addi.w	$fp, $fp, 1
	addi.d	$a1, $a1, 4
	addi.d	$s4, $s4, 24
	bne	$a2, $a0, .LBB1_4
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $a7, 0
	slli.d	$a1, $s3, 4
	alsl.d	$a1, $s3, $a1, 3
	st.d	$a1, $sp, 1192                  # 8-byte Folded Spill
	add.d	$a0, $a0, $a1
	addi.d	$a3, $sp, 1280
	st.d	$a0, $sp, 1216                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMapCoarseToFine)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 40
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $s1, 40
	ld.d	$a3, $a0, 0
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $s0, 40
	ld.d	$a2, $s6, 40
	ld.d	$a4, $a1, 0
	st.d	$a3, $sp, 1232                  # 8-byte Folded Spill
	add.d	$a1, $a3, $s4
	st.d	$a1, $sp, 1224                  # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1256                  # 8-byte Folded Spill
	ld.d	$a0, $a2, 0
	st.d	$a0, $sp, 1184                  # 8-byte Folded Spill
	st.d	$a4, $sp, 1208                  # 8-byte Folded Spill
	add.d	$a0, $a4, $s4
	st.d	$a0, $sp, 1200                  # 8-byte Folded Spill
	st.d	$zero, $sp, 1292
	st.w	$s5, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 976                   # 8-byte Folded Spill
	addi.w	$s7, $zero, -1
	st.d	$zero, $sp, 1292
	st.d	$s7, $sp, 1240                  # 8-byte Folded Spill
	ori	$s5, $zero, 1
	lu32i.d	$s7, 0
	st.w	$s7, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 968                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1292
	st.w	$s5, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 704                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1292
	st.w	$s7, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 696                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 736                   # 8-byte Folded Spill
	st.d	$s7, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 728                   # 8-byte Folded Spill
	st.d	$s5, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$s8, $zero, 0
	lu32i.d	$s8, -1
	st.d	$s8, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 752                   # 8-byte Folded Spill
	ori	$s0, $zero, 0
	lu32i.d	$s0, 1
	st.d	$s0, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1160                  # 8-byte Folded Spill
	st.d	$zero, $sp, 1292
	st.w	$s5, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 720                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1292
	st.w	$s7, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 712                   # 8-byte Folded Spill
	ori	$a0, $zero, 8
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$s3, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 1168                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1248                  # 8-byte Folded Spill
	blt	$a1, $a0, .LBB1_9
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=1
	st.d	$s7, $sp, 1292
	st.w	$s5, $sp, 1300
	move	$s1, $a1
	addi.d	$a2, $sp, 1292
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 624                   # 8-byte Folded Spill
	st.d	$s8, $sp, 1292
	st.w	$s5, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 616                   # 8-byte Folded Spill
	st.d	$s7, $sp, 1292
	st.w	$s7, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 608                   # 8-byte Folded Spill
	st.d	$s5, $sp, 1292
	st.w	$s7, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 600                   # 8-byte Folded Spill
	st.d	$s8, $sp, 1292
	st.w	$s7, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 592                   # 8-byte Folded Spill
	st.d	$s0, $sp, 1292
	st.w	$s7, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 584                   # 8-byte Folded Spill
	ori	$a0, $zero, 16
	bltu	$s1, $a0, .LBB1_9
# %bb.7:                                #   in Loop: Header=BB1_3 Depth=1
	move	$s5, $s1
	ld.d	$s7, $sp, 1240                  # 8-byte Folded Reload
	st.d	$s7, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	move	$s1, $s7
	lu32i.d	$s1, 1
	st.d	$s1, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 20
	bltu	$s5, $a0, .LBB1_55
# %bb.8:                                #   in Loop: Header=BB1_3 Depth=1
	st.d	$s7, $sp, 1292
	ori	$s5, $zero, 1
	st.w	$s5, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	move	$s3, $s2
	ori	$s2, $zero, 1
	lu32i.d	$s2, -1
	st.d	$s2, $sp, 1292
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 1176                  # 8-byte Folded Spill
	st.w	$s5, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	st.d	$s7, $sp, 1292
	ld.d	$s5, $sp, 1248                  # 8-byte Folded Reload
	st.w	$s5, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	st.d	$s2, $sp, 1292
	st.w	$s5, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s1, $sp, 1292
	st.w	$s5, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 1292
	st.w	$s5, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s3
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	move	$s5, $s7
	b	.LBB1_10
	.p2align	4, , 16
.LBB1_9:                                #   in Loop: Header=BB1_3 Depth=1
	st.d	$zero, $sp, 1176                # 8-byte Folded Spill
	ld.d	$s5, $sp, 1240                  # 8-byte Folded Reload
.LBB1_10:                               # %.thread2380
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$s7, $zero, 1
	ld.d	$a0, $sp, 1256                  # 8-byte Folded Reload
	add.d	$s2, $a0, $s4
	ld.d	$a0, $sp, 1192                  # 8-byte Folded Reload
	ld.d	$a1, $sp, 1184                  # 8-byte Folded Reload
	add.d	$s1, $a1, $a0
	st.d	$zero, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s6
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 688                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 1248                  # 8-byte Folded Reload
	st.d	$fp, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s6
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 680                   # 8-byte Folded Spill
	st.d	$s8, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s6
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 672                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1292
	st.w	$fp, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s6
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 664                   # 8-byte Folded Spill
	st.d	$fp, $sp, 1292
	st.w	$fp, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s6
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 656                   # 8-byte Folded Spill
	st.d	$s7, $sp, 1292
	st.w	$fp, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s6
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 648                   # 8-byte Folded Spill
	st.d	$s8, $sp, 1292
	st.w	$fp, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s6
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 640                   # 8-byte Folded Spill
	st.d	$s0, $sp, 1292
	st.w	$fp, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s6
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 632                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1176                  # 8-byte Folded Reload
	beqz	$a0, .LBB1_12
# %bb.11:                               #   in Loop: Header=BB1_3 Depth=1
	st.d	$s5, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s6
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 576                   # 8-byte Folded Spill
	move	$s0, $fp
	ori	$fp, $zero, 1
	lu32i.d	$fp, -1
	st.d	$fp, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s6
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 568                   # 8-byte Folded Spill
	st.d	$s5, $sp, 1292
	st.w	$s0, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s6
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 560                   # 8-byte Folded Spill
	st.d	$fp, $sp, 1292
	st.w	$s0, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s6
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 552                   # 8-byte Folded Spill
	move	$a0, $s5
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 1292
	st.w	$s0, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s6
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 1292
	st.w	$s0, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s6
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 536                   # 8-byte Folded Spill
.LBB1_12:                               #   in Loop: Header=BB1_3 Depth=1
	st.d	$zero, $sp, 1292
	st.w	$s7, $sp, 1300
	ld.d	$s0, $sp, 1224                  # 8-byte Folded Reload
	ld.w	$a0, $s0, 4
	ld.w	$a1, $s0, -8
	sub.w	$a0, $a0, $a1
	slt	$a1, $s5, $a0
	maskeqz	$a0, $a0, $a1
	ld.d	$s6, $sp, 1232                  # 8-byte Folded Reload
	ldx.w	$a2, $s6, $s4
	ld.w	$a3, $s0, -12
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	sub.w	$a1, $a2, $a3
	slt	$a2, $s5, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s5, $a2
	ori	$a5, $zero, 1
	ld.d	$s7, $sp, 1200                  # 8-byte Folded Reload
	ld.w	$a3, $s7, 4
	ld.w	$a4, $s7, -8
	or	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	mulw.d.w	$a0, $a1, $a0
	st.d	$a0, $sp, 1248                  # 8-byte Folded Spill
	sub.w	$a0, $a3, $a4
	slt	$a1, $s5, $a0
	ld.d	$s8, $sp, 1208                  # 8-byte Folded Reload
	ldx.w	$a2, $s8, $s4
	ld.w	$a3, $s7, -12
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
	sub.w	$a1, $a2, $a3
	slt	$a2, $s5, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s5, $a2
	or	$a1, $a1, $a2
	st.d	$a5, $sp, 1296
	ldx.w	$a2, $s8, $s4
	ld.w	$a3, $s7, -12
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	mulw.d.w	$a0, $a1, $a0
	st.d	$a0, $sp, 1192                  # 8-byte Folded Spill
	sub.w	$a0, $a2, $a3
	slt	$a1, $s5, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 1240                  # 8-byte Folded Spill
	st.d	$a5, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a1, $sp, 1268
	ld.d	$fp, $sp, 1216                  # 8-byte Folded Reload
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	ld.w	$a2, $s7, -12
	ld.w	$a1, $fp, 4
	ld.w	$a3, $s7, -8
	ld.w	$a5, $fp, 8
	ld.w	$a4, $s7, -4
	ld.w	$a6, $s7, 4
	sub.d	$a7, $a0, $a2
	sub.d	$t0, $a1, $a3
	sub.d	$a4, $a5, $a4
	sub.w	$a3, $a6, $a3
	slt	$a6, $s5, $a3
	maskeqz	$a3, $a3, $a6
	masknez	$a6, $s5, $a6
	or	$a3, $a3, $a6
	ldx.w	$a6, $s8, $s4
	addi.d	$t1, $a3, 1
	mul.d	$a3, $t1, $a4
	add.d	$a3, $t0, $a3
	sub.w	$a2, $a6, $a2
	slt	$a4, $s5, $a2
	maskeqz	$a2, $a2, $a4
	masknez	$a4, $s5, $a4
	or	$s7, $a2, $a4
	addi.d	$t2, $s7, 1
	mul.d	$a2, $a3, $t2
	add.w	$a3, $a7, $a2
	ld.w	$a2, $s2, -12
	ld.w	$a4, $s2, -8
	ld.w	$a6, $s2, -4
	ld.w	$a7, $s2, 4
	sub.d	$t0, $a0, $a2
	sub.d	$t3, $a1, $a4
	sub.d	$a6, $a5, $a6
	sub.w	$a4, $a7, $a4
	slt	$a7, $s5, $a4
	maskeqz	$a4, $a4, $a7
	masknez	$a7, $s5, $a7
	or	$a4, $a4, $a7
	ld.d	$a7, $sp, 1256                  # 8-byte Folded Reload
	ldx.w	$a7, $a7, $s4
	addi.d	$t6, $a4, 1
	mul.d	$a4, $t6, $a6
	add.d	$a4, $t3, $a4
	sub.w	$a2, $a7, $a2
	slt	$a6, $s5, $a2
	maskeqz	$a2, $a2, $a6
	masknez	$a6, $s5, $a6
	or	$a7, $a2, $a6
	addi.d	$t7, $a7, 1
	mul.d	$a2, $a4, $t7
	add.w	$a4, $t0, $a2
	ld.w	$a2, $sp, 1280
	ld.w	$a6, $s0, -12
	ld.w	$t0, $sp, 1284
	ld.w	$t3, $s0, -8
	ld.w	$t4, $sp, 1288
	ld.w	$t5, $s0, -4
	ld.w	$t8, $s0, 4
	sub.d	$s0, $a2, $a6
	sub.d	$a2, $t0, $t3
	sub.d	$t4, $t4, $t5
	sub.w	$t0, $t8, $t3
	slt	$t3, $s5, $t0
	maskeqz	$t0, $t0, $t3
	masknez	$t3, $s5, $t3
	or	$t0, $t0, $t3
	ldx.w	$t3, $s6, $s4
	addi.d	$t0, $t0, 1
	mul.d	$t4, $t0, $t4
	add.d	$t4, $a2, $t4
	sub.w	$a2, $t3, $a6
	slt	$a6, $s5, $a2
	maskeqz	$a2, $a2, $a6
	masknez	$a6, $s5, $a6
	or	$a2, $a2, $a6
	addi.d	$a2, $a2, 1
	mul.d	$a6, $t4, $a2
	add.w	$t5, $s0, $a6
	ld.w	$a6, $s1, 0
	ld.w	$t3, $s1, 4
	ld.w	$t4, $s1, 8
	ld.w	$t8, $s1, 16
	sub.d	$s0, $a0, $a6
	sub.d	$a0, $a1, $t3
	sub.d	$a1, $a5, $t4
	sub.w	$a5, $t8, $t3
	slt	$t3, $s5, $a5
	maskeqz	$a5, $a5, $t3
	masknez	$t3, $s5, $t3
	or	$a5, $a5, $t3
	ld.w	$t4, $s1, 12
	addi.d	$t3, $a5, 1
	mul.d	$a1, $t3, $a1
	add.d	$a1, $a0, $a1
	sub.w	$a0, $t4, $a6
	slt	$a5, $s5, $a0
	maskeqz	$a0, $a0, $a5
	masknez	$a5, $s5, $a5
	or	$a0, $a0, $a5
	addi.d	$t4, $a0, 1
	mul.d	$a5, $a1, $t4
	ld.w	$a1, $sp, 1268
	ld.w	$t8, $sp, 1272
	add.w	$s2, $s0, $a5
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a5, $a5, 0
	st.d	$a5, $sp, 1256                  # 8-byte Folded Spill
	ld.w	$s0, $sp, 1276
	slt	$a5, $a1, $t8
	masknez	$a6, $a1, $a5
	st.d	$t8, $sp, 744                   # 8-byte Folded Spill
	maskeqz	$a5, $t8, $a5
	or	$a5, $a5, $a6
	slt	$a6, $a5, $s0
	masknez	$a5, $a5, $a6
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	maskeqz	$a6, $s0, $a6
	or	$a5, $a6, $a5
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	ori	$t8, $zero, 19
	beq	$a6, $t8, .LBB1_35
# %bb.13:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$t8, $zero, 15
	beq	$a6, $t8, .LBB1_25
# %bb.14:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$t8, $zero, 7
	ori	$fp, $zero, 1
	bne	$a6, $t8, .LBB1_45
# %bb.15:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$t8, $zero, 1
	blt	$a5, $fp, .LBB1_2
# %bb.16:                               # %.preheader2452.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	blt	$a5, $t8, .LBB1_2
# %bb.17:                               # %.preheader2452.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a5, $sp, 744                   # 8-byte Folded Reload
	blt	$a5, $t8, .LBB1_2
# %bb.18:                               # %.preheader2452.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	blt	$a1, $t8, .LBB1_2
# %bb.19:                               # %.preheader2448.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a5, $a6, 4
	move	$fp, $zero
	mul.d	$s0, $a5, $a2
	st.d	$s0, $sp, 1072                  # 8-byte Folded Spill
	ld.w	$a6, $a6, 8
	ld.d	$s1, $sp, 1256                  # 8-byte Folded Reload
	mul.d	$s0, $a1, $s1
	st.d	$s0, $sp, 1064                  # 8-byte Folded Spill
	ld.d	$s0, $sp, 744                   # 8-byte Folded Reload
	sub.d	$t1, $t1, $s0
	mul.d	$t1, $t1, $t2
	sub.d	$t2, $t6, $s0
	mul.d	$t2, $t2, $t7
	sub.d	$t3, $t3, $s0
	mul.d	$t3, $t3, $t4
	ld.d	$t4, $sp, 1248                  # 8-byte Folded Reload
	addi.w	$t7, $t4, 0
	ld.d	$t4, $sp, 1192                  # 8-byte Folded Reload
	addi.w	$t4, $t4, 0
	sub.w	$a1, $zero, $a1
	st.d	$a1, $sp, 1096                  # 8-byte Folded Spill
	add.d	$a1, $t2, $a7
	nor	$a1, $a1, $zero
	st.d	$a1, $sp, 1048                  # 8-byte Folded Spill
	nor	$a1, $a7, $zero
	st.d	$a1, $sp, 1040                  # 8-byte Folded Spill
	ld.d	$t6, $sp, 1240                  # 8-byte Folded Reload
	slli.d	$a1, $t6, 3
	ld.d	$a7, $sp, 968                   # 8-byte Folded Reload
	sub.d	$a7, $a7, $a1
	st.d	$a7, $sp, 1032                  # 8-byte Folded Spill
	ld.d	$t2, $sp, 976                   # 8-byte Folded Reload
	sub.d	$a7, $t2, $a1
	st.d	$a7, $sp, 1024                  # 8-byte Folded Spill
	slli.d	$a7, $t4, 3
	sub.d	$a1, $a1, $a7
	add.d	$a1, $t2, $a1
	st.d	$a1, $sp, 1016                  # 8-byte Folded Spill
	mul.d	$a1, $a6, $t0
	sub.d	$a6, $t8, $s0
	mul.d	$a5, $a5, $a6
	add.d	$a1, $a1, $a5
	mul.d	$a1, $a1, $a2
	st.d	$a1, $sp, 872                   # 8-byte Folded Spill
	sub.d	$a1, $t2, $a7
	st.d	$a1, $sp, 1008                  # 8-byte Folded Spill
	add.d	$a1, $t4, $t6
	sub.d	$a1, $zero, $a1
	st.d	$a1, $sp, 1000                  # 8-byte Folded Spill
	add.d	$a1, $t1, $s7
	nor	$a1, $a1, $zero
	st.d	$a1, $sp, 992                   # 8-byte Folded Spill
	nor	$a1, $s7, $zero
	st.d	$a1, $sp, 984                   # 8-byte Folded Spill
	add.d	$a1, $t3, $a0
	nor	$a1, $a1, $zero
	st.d	$a1, $sp, 960                   # 8-byte Folded Spill
	nor	$a0, $a0, $zero
	st.d	$a0, $sp, 952                   # 8-byte Folded Spill
	slli.d	$a0, $s1, 3
	st.d	$a0, $sp, 944                   # 8-byte Folded Spill
	st.d	$t7, $sp, 1056                  # 8-byte Folded Spill
	slli.d	$a0, $t7, 3
	ld.d	$a1, $sp, 752                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 936                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 728                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 928                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 736                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 920                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 912                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 1168                  # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 904                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 1160                  # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 896                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 720                   # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	st.d	$a0, $sp, 888                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_20:                               # %.preheader2448.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_21 Depth 3
                                        #         Child Loop BB1_22 Depth 4
	st.d	$fp, $sp, 880                   # 8-byte Folded Spill
	move	$a1, $zero
	move	$a2, $s2
	.p2align	4, , 16
.LBB1_21:                               # %.preheader2444.us.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_20 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_22 Depth 4
	st.d	$a1, $sp, 1088                  # 8-byte Folded Spill
	move	$s0, $zero
	move	$t1, $zero
	move	$a7, $zero
	move	$fp, $t5
	ld.d	$a0, $sp, 696                   # 8-byte Folded Reload
	alsl.d	$t5, $a4, $a0, 3
	ld.d	$a0, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$t4, $a4, $a0, 3
	ld.d	$a0, $sp, 1048                  # 8-byte Folded Reload
	sub.d	$t8, $a0, $a4
	ld.d	$a0, $sp, 1040                  # 8-byte Folded Reload
	sub.d	$a4, $a0, $a4
	ld.d	$a0, $sp, 968                   # 8-byte Folded Reload
	alsl.d	$t6, $a3, $a0, 3
	ld.d	$a1, $sp, 976                   # 8-byte Folded Reload
	alsl.d	$a5, $a3, $a1, 3
	ld.d	$a0, $sp, 1032                  # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a0, 3
	st.d	$a0, $sp, 1248                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 1024                  # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a0, 3
	st.d	$a0, $sp, 1240                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 1016                  # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a0, 3
	st.d	$a0, $sp, 1232                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 1008                  # 8-byte Folded Reload
	alsl.d	$s1, $a3, $a0, 3
	ld.d	$a0, $sp, 1000                  # 8-byte Folded Reload
	add.d	$a0, $a0, $a3
	alsl.d	$a0, $a0, $a1, 3
	st.d	$a0, $sp, 1224                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 992                   # 8-byte Folded Reload
	sub.d	$t2, $a0, $a3
	ld.d	$a0, $sp, 984                   # 8-byte Folded Reload
	sub.d	$a3, $a0, $a3
	ld.d	$a0, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 3
	st.d	$a0, $sp, 1216                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 3
	st.d	$a0, $sp, 1208                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 3
	st.d	$a0, $sp, 1200                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 3
	st.d	$a0, $sp, 1192                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 3
	st.d	$a0, $sp, 1184                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 3
	st.d	$a0, $sp, 1176                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 3
	st.d	$a0, $sp, 1168                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 3
	st.d	$a0, $sp, 1160                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 960                   # 8-byte Folded Reload
	sub.d	$t3, $a0, $a2
	ld.d	$a0, $sp, 952                   # 8-byte Folded Reload
	sub.d	$s5, $a0, $a2
	ld.d	$a0, $sp, 1056                  # 8-byte Folded Reload
	add.d	$a0, $a0, $fp
	ld.d	$a6, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a6, 3
	st.d	$a1, $sp, 1152                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a2, 3
	st.d	$a1, $sp, 1144                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t0, $a0, $a1, 3
	st.d	$t0, $sp, 1136                  # 8-byte Folded Spill
	ld.d	$t0, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $t0, 3
	st.d	$a0, $sp, 1128                  # 8-byte Folded Spill
	alsl.d	$a0, $fp, $t0, 3
	alsl.d	$a6, $fp, $a6, 3
	st.d	$a6, $sp, 1120                  # 8-byte Folded Spill
	alsl.d	$a2, $fp, $a2, 3
	st.d	$a2, $sp, 1112                  # 8-byte Folded Spill
	alsl.d	$a1, $fp, $a1, 3
	st.d	$a1, $sp, 1104                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$s7, $fp, $a1, 3
	ld.d	$a1, $sp, 936                   # 8-byte Folded Reload
	alsl.d	$s8, $fp, $a1, 3
	ld.d	$a1, $sp, 928                   # 8-byte Folded Reload
	alsl.d	$ra, $fp, $a1, 3
	ld.d	$a1, $sp, 920                   # 8-byte Folded Reload
	alsl.d	$a2, $fp, $a1, 3
	ld.d	$a1, $sp, 912                   # 8-byte Folded Reload
	alsl.d	$a6, $fp, $a1, 3
	ld.d	$a1, $sp, 904                   # 8-byte Folded Reload
	alsl.d	$a1, $fp, $a1, 3
	ld.d	$t0, $sp, 896                   # 8-byte Folded Reload
	alsl.d	$t0, $fp, $t0, 3
	ld.d	$t7, $sp, 888                   # 8-byte Folded Reload
	st.d	$fp, $sp, 1080                  # 8-byte Folded Spill
	alsl.d	$t7, $fp, $t7, 3
	ld.d	$s2, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1256                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 944                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_22:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_20 Depth=2
                                        #       Parent Loop BB1_21 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $t5, $a7
	fldx.d	$fa1, $s8, $s0
	ld.d	$fp, $sp, 1224                  # 8-byte Folded Reload
	fldx.d	$fa2, $fp, $a7
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$fp, $sp, 1216                  # 8-byte Folded Reload
	fstx.d	$fa0, $fp, $a7
	fldx.d	$fa0, $t5, $a7
	fldx.d	$fa1, $ra, $s0
	add.d	$fp, $s1, $a7
	fld.d	$fa2, $fp, -8
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$s6, $sp, 1208                  # 8-byte Folded Reload
	fstx.d	$fa0, $s6, $a7
	fldx.d	$fa0, $t5, $a7
	fldx.d	$fa1, $a2, $s0
	fldx.d	$fa2, $s1, $a7
	fldx.d	$fa3, $a0, $s0
	fldx.d	$fa4, $a6, $s0
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	ld.d	$s6, $sp, 1200                  # 8-byte Folded Reload
	fstx.d	$fa0, $s6, $a7
	fldx.d	$fa0, $t5, $a7
	fldx.d	$fa1, $a1, $s0
	fld.d	$fa2, $fp, 8
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$fp, $sp, 1192                  # 8-byte Folded Reload
	fstx.d	$fa0, $fp, $a7
	fldx.d	$fa0, $t5, $a7
	fldx.d	$fa1, $t0, $s0
	ld.d	$fp, $sp, 1232                  # 8-byte Folded Reload
	fldx.d	$fa2, $fp, $a7
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$fp, $sp, 1184                  # 8-byte Folded Reload
	fstx.d	$fa0, $fp, $a7
	ld.d	$fp, $sp, 1120                  # 8-byte Folded Reload
	fldx.d	$fa0, $fp, $s0
	fldx.d	$fa1, $t5, $a7
	fldx.d	$fa2, $s8, $s0
	ld.d	$fp, $sp, 1248                  # 8-byte Folded Reload
	fldx.d	$fa3, $fp, $a7
	fldx.d	$fa4, $t4, $a7
	ld.d	$fp, $sp, 1152                  # 8-byte Folded Reload
	fldx.d	$fa5, $fp, $s0
	ld.d	$fp, $sp, 1240                  # 8-byte Folded Reload
	fldx.d	$fa6, $fp, $a7
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa1, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	ld.d	$fp, $sp, 1176                  # 8-byte Folded Reload
	fstx.d	$fa0, $fp, $a7
	ld.d	$fp, $sp, 1112                  # 8-byte Folded Reload
	fldx.d	$fa0, $fp, $s0
	fldx.d	$fa1, $t5, $a7
	fldx.d	$fa2, $ra, $s0
	add.d	$fp, $t6, $a7
	fld.d	$fa3, $fp, -8
	fldx.d	$fa4, $t4, $a7
	ld.d	$fp, $sp, 1144                  # 8-byte Folded Reload
	fldx.d	$fa5, $fp, $s0
	add.d	$fp, $a5, $a7
	fld.d	$fa6, $fp, -8
	ld.d	$fp, $sp, 1096                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa1, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	ld.d	$s6, $sp, 1168                  # 8-byte Folded Reload
	fstx.d	$fa0, $s6, $a7
	ld.d	$s6, $sp, 1104                  # 8-byte Folded Reload
	fldx.d	$fa0, $s6, $s0
	fldx.d	$fa1, $t5, $a7
	fldx.d	$fa2, $a2, $s0
	fldx.d	$fa3, $t6, $a7
	fldx.d	$fa4, $t4, $a7
	ld.d	$s6, $sp, 1136                  # 8-byte Folded Reload
	fldx.d	$fa5, $s6, $s0
	fldx.d	$fa6, $a5, $a7
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fldx.d	$fa2, $t7, $s0
	ld.d	$s6, $sp, 1128                  # 8-byte Folded Reload
	fldx.d	$fa5, $s6, $s0
	fldx.d	$fa7, $a0, $s0
	fldx.d	$ft0, $s7, $s0
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmadd.d	$fa0, $fa4, $fa5, $fa0
	fmadd.d	$fa0, $fa7, $fa3, $fa0
	fmadd.d	$fa0, $ft0, $fa6, $fa0
	ld.d	$s6, $sp, 1160                  # 8-byte Folded Reload
	fstx.d	$fa0, $s6, $a7
	addi.d	$a7, $a7, 8
	addi.d	$t8, $t8, -1
	addi.d	$a4, $a4, -1
	addi.w	$t1, $t1, -1
	sub.d	$s2, $s2, $s3
	addi.d	$t2, $t2, -1
	addi.d	$a3, $a3, -1
	addi.d	$t3, $t3, -1
	addi.d	$s5, $s5, -1
	add.d	$s0, $s0, $s4
	bne	$fp, $t1, .LBB1_22
# %bb.23:                               # %._crit_edge.us.us.us.us.us.us2784
                                        #   in Loop: Header=BB1_21 Depth=3
	sub.w	$a3, $fp, $a3
	sub.w	$a4, $fp, $a4
	ld.d	$a0, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$a5, $sp, 1080                  # 8-byte Folded Reload
	add.d	$a0, $a0, $a5
	sub.w	$t5, $a0, $s2
	ld.d	$a1, $sp, 1088                  # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	sub.w	$a2, $fp, $s5
	ld.d	$a0, $sp, 744                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB1_21
# %bb.24:                               # %._crit_edge2719.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB1_20 Depth=2
	sub.w	$a3, $fp, $t2
	sub.w	$a4, $fp, $t8
	ld.d	$a0, $sp, 872                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a5
	sub.w	$t5, $a0, $s2
	move	$a0, $fp
	ld.d	$fp, $sp, 880                   # 8-byte Folded Reload
	addi.w	$fp, $fp, 1
	sub.w	$s2, $a0, $t3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bne	$fp, $a0, .LBB1_20
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_25:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$t8, $zero, 1
	ori	$a6, $zero, 1
	blt	$a5, $a6, .LBB1_2
# %bb.26:                               # %.preheader2454.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	blt	$a5, $t8, .LBB1_2
# %bb.27:                               # %.preheader2454.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a5, $sp, 744                   # 8-byte Folded Reload
	blt	$a5, $t8, .LBB1_2
# %bb.28:                               # %.preheader2454.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	blt	$a1, $t8, .LBB1_2
# %bb.29:                               # %.preheader2449.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a5, $a6, 4
	move	$fp, $zero
	mul.d	$s0, $a5, $a2
	st.d	$s0, $sp, 944                   # 8-byte Folded Spill
	ld.w	$a6, $a6, 8
	ld.d	$s1, $sp, 1256                  # 8-byte Folded Reload
	mul.d	$s0, $a1, $s1
	st.d	$s0, $sp, 936                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 744                   # 8-byte Folded Reload
	sub.d	$t1, $t1, $s0
	mul.d	$t1, $t1, $t2
	sub.d	$t2, $t6, $s0
	mul.d	$t2, $t2, $t7
	sub.d	$t3, $t3, $s0
	mul.d	$t3, $t3, $t4
	ld.d	$t4, $sp, 1248                  # 8-byte Folded Reload
	addi.w	$t7, $t4, 0
	ld.d	$t4, $sp, 1192                  # 8-byte Folded Reload
	addi.w	$t4, $t4, 0
	sub.w	$s3, $zero, $a1
	add.d	$a1, $t2, $a7
	nor	$a1, $a1, $zero
	st.d	$a1, $sp, 920                   # 8-byte Folded Spill
	nor	$a1, $a7, $zero
	st.d	$a1, $sp, 912                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 1240                  # 8-byte Folded Reload
	slli.d	$a1, $t6, 3
	ld.d	$a7, $sp, 968                   # 8-byte Folded Reload
	sub.d	$a7, $a7, $a1
	st.d	$a7, $sp, 904                   # 8-byte Folded Spill
	ld.d	$t2, $sp, 976                   # 8-byte Folded Reload
	sub.d	$a7, $t2, $a1
	st.d	$a7, $sp, 896                   # 8-byte Folded Spill
	slli.d	$a7, $t4, 3
	sub.d	$a1, $a1, $a7
	add.d	$a1, $t2, $a1
	st.d	$a1, $sp, 888                   # 8-byte Folded Spill
	mul.d	$a1, $a6, $t0
	sub.d	$a6, $t8, $s0
	mul.d	$a5, $a5, $a6
	add.d	$a1, $a1, $a5
	mul.d	$a1, $a1, $a2
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	sub.d	$a1, $t2, $a7
	st.d	$a1, $sp, 880                   # 8-byte Folded Spill
	add.d	$a1, $t4, $t6
	sub.d	$a1, $zero, $a1
	st.d	$a1, $sp, 872                   # 8-byte Folded Spill
	add.d	$a1, $t1, $s7
	nor	$a1, $a1, $zero
	st.d	$a1, $sp, 864                   # 8-byte Folded Spill
	nor	$a1, $s7, $zero
	st.d	$a1, $sp, 856                   # 8-byte Folded Spill
	add.d	$a1, $t3, $a0
	nor	$a1, $a1, $zero
	st.d	$a1, $sp, 848                   # 8-byte Folded Spill
	nor	$a0, $a0, $zero
	st.d	$a0, $sp, 840                   # 8-byte Folded Spill
	st.d	$t7, $sp, 928                   # 8-byte Folded Spill
	slli.d	$a0, $t7, 3
	ld.d	$a1, $sp, 752                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 832                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 824                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 728                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 816                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 608                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 808                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 736                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 800                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 792                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 1168                  # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 784                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 600                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 776                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 1160                  # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 768                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 584                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 760                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 616                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 512                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 624                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 504                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 720                   # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	slli.d	$a0, $s1, 3
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	st.d	$s3, $sp, 1248                  # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_30:                               # %.preheader2449.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_31 Depth 3
                                        #         Child Loop BB1_32 Depth 4
	st.d	$fp, $sp, 432                   # 8-byte Folded Spill
	move	$a2, $zero
	.p2align	4, , 16
.LBB1_31:                               # %.preheader2445.us.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_30 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_32 Depth 4
	st.d	$a2, $sp, 960                   # 8-byte Folded Spill
	move	$fp, $zero
	move	$t0, $zero
	move	$s3, $zero
	move	$t6, $t5
	ld.d	$a0, $sp, 696                   # 8-byte Folded Reload
	alsl.d	$a6, $a4, $a0, 3
	ld.d	$a0, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$s8, $a4, $a0, 3
	ld.d	$a0, $sp, 920                   # 8-byte Folded Reload
	sub.d	$t8, $a0, $a4
	ld.d	$a0, $sp, 912                   # 8-byte Folded Reload
	sub.d	$a4, $a0, $a4
	ld.d	$a0, $sp, 968                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a0, 3
	ld.d	$a2, $sp, 976                   # 8-byte Folded Reload
	alsl.d	$s6, $a3, $a2, 3
	ld.d	$a1, $sp, 904                   # 8-byte Folded Reload
	alsl.d	$a1, $a3, $a1, 3
	st.d	$a1, $sp, 1240                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 896                   # 8-byte Folded Reload
	alsl.d	$a1, $a3, $a1, 3
	st.d	$a1, $sp, 1232                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 888                   # 8-byte Folded Reload
	alsl.d	$a1, $a3, $a1, 3
	st.d	$a1, $sp, 1224                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 880                   # 8-byte Folded Reload
	alsl.d	$ra, $a3, $a1, 3
	ld.d	$a1, $sp, 872                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a3
	alsl.d	$a1, $a1, $a2, 3
	st.d	$a1, $sp, 1216                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 864                   # 8-byte Folded Reload
	sub.d	$s0, $a1, $a3
	ld.d	$a1, $sp, 856                   # 8-byte Folded Reload
	sub.d	$a3, $a1, $a3
	ld.d	$a1, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a1, 3
	st.d	$a1, $sp, 1208                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a1, 3
	st.d	$a1, $sp, 1200                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a1, 3
	st.d	$a1, $sp, 1192                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 648                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a1, 3
	st.d	$a1, $sp, 1184                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a1, 3
	st.d	$a1, $sp, 1176                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a1, 3
	st.d	$a1, $sp, 1168                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a1, 3
	st.d	$a1, $sp, 1160                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a1, 3
	st.d	$a1, $sp, 1152                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 848                   # 8-byte Folded Reload
	sub.d	$s4, $a1, $s2
	ld.d	$a1, $sp, 840                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $s2
	ld.d	$a2, $sp, 928                   # 8-byte Folded Reload
	add.d	$a2, $a2, $t5
	ld.d	$t5, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$a5, $a2, $t5, 3
	st.d	$a5, $sp, 1144                  # 8-byte Folded Spill
	ld.d	$a7, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a5, $a2, $a7, 3
	st.d	$a5, $sp, 1136                  # 8-byte Folded Spill
	ld.d	$t2, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$a5, $a2, $t2, 3
	st.d	$a5, $sp, 1128                  # 8-byte Folded Spill
	ld.d	$a5, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$t1, $a2, $a5, 3
	st.d	$t1, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$t1, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t3, $a2, $t1, 3
	st.d	$t3, $sp, 1112                  # 8-byte Folded Spill
	ld.d	$t4, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $t4, 3
	st.d	$a2, $sp, 1104                  # 8-byte Folded Spill
	alsl.d	$t3, $t6, $a7, 3
	alsl.d	$s2, $t6, $a5, 3
	alsl.d	$t4, $t6, $t4, 3
	ld.d	$a2, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	st.d	$a2, $sp, 1096                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	st.d	$a2, $sp, 1088                  # 8-byte Folded Spill
	alsl.d	$a2, $t6, $t5, 3
	st.d	$a2, $sp, 1080                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	st.d	$a2, $sp, 1072                  # 8-byte Folded Spill
	alsl.d	$a2, $t6, $t2, 3
	st.d	$a2, $sp, 1064                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	st.d	$a2, $sp, 1056                  # 8-byte Folded Spill
	alsl.d	$a2, $t6, $t1, 3
	st.d	$a2, $sp, 1048                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	st.d	$a2, $sp, 1040                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$s7, $t6, $a2, 3
	ld.d	$a2, $sp, 824                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	st.d	$a2, $sp, 1032                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 816                   # 8-byte Folded Reload
	alsl.d	$t5, $t6, $a2, 3
	ld.d	$a2, $sp, 808                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	st.d	$a2, $sp, 1024                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 800                   # 8-byte Folded Reload
	alsl.d	$t7, $t6, $a2, 3
	ld.d	$a2, $sp, 792                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	st.d	$a2, $sp, 1016                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	st.d	$a2, $sp, 1008                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 776                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	st.d	$a2, $sp, 1000                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 768                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	st.d	$a2, $sp, 992                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 760                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	st.d	$a2, $sp, 984                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$a5, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$t1, $t6, $a5, 3
	ld.d	$a5, $sp, 448                   # 8-byte Folded Reload
	st.d	$t6, $sp, 952                   # 8-byte Folded Spill
	alsl.d	$t2, $t6, $a5, 3
	ld.d	$t6, $sp, 936                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 1256                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 440                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_32:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_30 Depth=2
                                        #       Parent Loop BB1_31 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $a6, $s3
	fldx.d	$fa1, $s7, $fp
	ld.d	$a7, $sp, 1032                  # 8-byte Folded Reload
	fldx.d	$fa2, $a7, $fp
	ld.d	$a7, $sp, 1216                  # 8-byte Folded Reload
	fldx.d	$fa3, $a7, $s3
	fldx.d	$fa4, $t3, $fp
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a7, $sp, 1208                  # 8-byte Folded Reload
	fstx.d	$fa0, $a7, $s3
	fldx.d	$fa0, $a6, $s3
	fldx.d	$fa1, $t5, $fp
	add.d	$a7, $ra, $s3
	ld.d	$s5, $sp, 1024                  # 8-byte Folded Reload
	fldx.d	$fa2, $s5, $fp
	fld.d	$fa3, $a7, -8
	fldx.d	$fa4, $s2, $fp
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$s5, $sp, 1200                  # 8-byte Folded Reload
	fstx.d	$fa0, $s5, $s3
	fldx.d	$fa0, $a6, $s3
	fldx.d	$fa1, $t7, $fp
	fldx.d	$fa2, $ra, $s3
	fldx.d	$fa3, $t4, $fp
	ld.d	$s5, $sp, 1016                  # 8-byte Folded Reload
	fldx.d	$fa4, $s5, $fp
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	ld.d	$s5, $sp, 1192                  # 8-byte Folded Reload
	fstx.d	$fa0, $s5, $s3
	fldx.d	$fa0, $a6, $s3
	ld.d	$s5, $sp, 1008                  # 8-byte Folded Reload
	fldx.d	$fa1, $s5, $fp
	ld.d	$s5, $sp, 1000                  # 8-byte Folded Reload
	fldx.d	$fa2, $s5, $fp
	fld.d	$fa3, $a7, 8
	ld.d	$a7, $sp, 1096                  # 8-byte Folded Reload
	fldx.d	$fa4, $a7, $fp
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a7, $sp, 1184                  # 8-byte Folded Reload
	fstx.d	$fa0, $a7, $s3
	fldx.d	$fa0, $a6, $s3
	ld.d	$a7, $sp, 992                   # 8-byte Folded Reload
	fldx.d	$fa1, $a7, $fp
	ld.d	$a7, $sp, 984                   # 8-byte Folded Reload
	fldx.d	$fa2, $a7, $fp
	ld.d	$a7, $sp, 1224                  # 8-byte Folded Reload
	fldx.d	$fa3, $a7, $s3
	ld.d	$a7, $sp, 1088                  # 8-byte Folded Reload
	fldx.d	$fa4, $a7, $fp
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a7, $sp, 1176                  # 8-byte Folded Reload
	fstx.d	$fa0, $a7, $s3
	ld.d	$a7, $sp, 1080                  # 8-byte Folded Reload
	fldx.d	$fa0, $a7, $fp
	fldx.d	$fa1, $a6, $s3
	fldx.d	$fa2, $s7, $fp
	ld.d	$a7, $sp, 1240                  # 8-byte Folded Reload
	fldx.d	$fa3, $a7, $s3
	fldx.d	$fa4, $s8, $s3
	ld.d	$a7, $sp, 1144                  # 8-byte Folded Reload
	fldx.d	$fa5, $a7, $fp
	ld.d	$a7, $sp, 1232                  # 8-byte Folded Reload
	fldx.d	$fa6, $a7, $s3
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fldx.d	$fa2, $t3, $fp
	ld.d	$a7, $sp, 1072                  # 8-byte Folded Reload
	fldx.d	$fa5, $a7, $fp
	fldx.d	$fa7, $a2, $fp
	ld.d	$a7, $sp, 1136                  # 8-byte Folded Reload
	fldx.d	$ft0, $a7, $fp
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$a7, $sp, 1168                  # 8-byte Folded Reload
	fstx.d	$fa0, $a7, $s3
	ld.d	$a7, $sp, 1064                  # 8-byte Folded Reload
	fldx.d	$fa0, $a7, $fp
	fldx.d	$fa1, $a6, $s3
	fldx.d	$fa2, $t5, $fp
	add.d	$a7, $a0, $s3
	fld.d	$fa3, $a7, -8
	fldx.d	$fa4, $s8, $s3
	ld.d	$a7, $sp, 1128                  # 8-byte Folded Reload
	fldx.d	$fa5, $a7, $fp
	add.d	$a7, $s6, $s3
	fld.d	$fa6, $a7, -8
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fldx.d	$fa2, $s2, $fp
	ld.d	$a7, $sp, 1056                  # 8-byte Folded Reload
	fldx.d	$fa5, $a7, $fp
	fldx.d	$fa7, $t1, $fp
	ld.d	$a7, $sp, 1120                  # 8-byte Folded Reload
	fldx.d	$ft0, $a7, $fp
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$a7, $sp, 1160                  # 8-byte Folded Reload
	fstx.d	$fa0, $a7, $s3
	ld.d	$a7, $sp, 1048                  # 8-byte Folded Reload
	fldx.d	$fa0, $a7, $fp
	fldx.d	$fa1, $a6, $s3
	fldx.d	$fa2, $t7, $fp
	fldx.d	$fa3, $a0, $s3
	fldx.d	$fa4, $s8, $s3
	ld.d	$a7, $sp, 1112                  # 8-byte Folded Reload
	fldx.d	$fa5, $a7, $fp
	fldx.d	$fa6, $s6, $s3
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fldx.d	$fa2, $t2, $fp
	ld.d	$a7, $sp, 1104                  # 8-byte Folded Reload
	fldx.d	$fa5, $a7, $fp
	fldx.d	$fa7, $t4, $fp
	ld.d	$a7, $sp, 1040                  # 8-byte Folded Reload
	fldx.d	$ft0, $a7, $fp
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmadd.d	$fa0, $fa4, $fa5, $fa0
	fmadd.d	$fa0, $fa7, $fa3, $fa0
	fmadd.d	$fa0, $ft0, $fa6, $fa0
	ld.d	$a7, $sp, 1152                  # 8-byte Folded Reload
	fstx.d	$fa0, $a7, $s3
	addi.d	$s3, $s3, 8
	addi.d	$t8, $t8, -1
	addi.d	$a4, $a4, -1
	addi.w	$t0, $t0, -1
	sub.d	$t6, $t6, $a5
	addi.d	$s0, $s0, -1
	addi.d	$a3, $a3, -1
	addi.d	$s4, $s4, -1
	addi.d	$a1, $a1, -1
	add.d	$fp, $fp, $s1
	ld.d	$a7, $sp, 1248                  # 8-byte Folded Reload
	bne	$a7, $t0, .LBB1_32
# %bb.33:                               # %._crit_edge.us.us.us.us.us.us2661
                                        #   in Loop: Header=BB1_31 Depth=3
	ld.d	$s3, $sp, 1248                  # 8-byte Folded Reload
	sub.w	$a3, $s3, $a3
	sub.w	$a4, $s3, $a4
	ld.d	$a0, $sp, 944                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 952                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a5
	sub.w	$t5, $a0, $t6
	ld.d	$a2, $sp, 960                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	sub.w	$s2, $s3, $a1
	ld.d	$a0, $sp, 744                   # 8-byte Folded Reload
	bne	$a2, $a0, .LBB1_31
# %bb.34:                               # %._crit_edge2596.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB1_30 Depth=2
	sub.w	$a3, $s3, $s0
	sub.w	$a4, $s3, $t8
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a5
	sub.w	$t5, $a0, $t6
	ld.d	$fp, $sp, 432                   # 8-byte Folded Reload
	addi.w	$fp, $fp, 1
	sub.w	$s2, $s3, $s4
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bne	$fp, $a0, .LBB1_30
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_35:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$t8, $zero, 1
	ori	$a6, $zero, 1
	blt	$a5, $a6, .LBB1_2
# %bb.36:                               # %.preheader2456.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	blt	$a5, $t8, .LBB1_2
# %bb.37:                               # %.preheader2456.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a5, $sp, 744                   # 8-byte Folded Reload
	blt	$a5, $t8, .LBB1_2
# %bb.38:                               # %.preheader2456.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	blt	$a1, $t8, .LBB1_2
# %bb.39:                               # %.preheader2450.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a5, $a6, 4
	move	$s3, $zero
	mul.d	$fp, $a5, $a2
	st.d	$fp, $sp, 848                   # 8-byte Folded Spill
	ld.w	$a6, $a6, 8
	ld.d	$s1, $sp, 1256                  # 8-byte Folded Reload
	mul.d	$fp, $a1, $s1
	st.d	$fp, $sp, 840                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 744                   # 8-byte Folded Reload
	sub.d	$t1, $t1, $s0
	mul.d	$t1, $t1, $t2
	sub.d	$t2, $t6, $s0
	mul.d	$t2, $t2, $t7
	sub.d	$t3, $t3, $s0
	mul.d	$t3, $t3, $t4
	ld.d	$t4, $sp, 1248                  # 8-byte Folded Reload
	addi.w	$t6, $t4, 0
	ld.d	$t4, $sp, 1192                  # 8-byte Folded Reload
	addi.w	$t4, $t4, 0
	sub.w	$t7, $zero, $a1
	add.d	$a1, $t2, $a7
	nor	$a1, $a1, $zero
	st.d	$a1, $sp, 824                   # 8-byte Folded Spill
	nor	$a1, $a7, $zero
	st.d	$a1, $sp, 816                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 968                   # 8-byte Folded Reload
	addi.d	$t2, $a1, -8
	ld.d	$a7, $sp, 976                   # 8-byte Folded Reload
	addi.d	$fp, $a7, -8
	mul.d	$a1, $a6, $t0
	sub.d	$a6, $t8, $s0
	mul.d	$a5, $a5, $a6
	add.d	$a1, $a1, $a5
	mul.d	$a1, $a1, $a2
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	st.d	$t6, $sp, 832                   # 8-byte Folded Spill
	slli.d	$a1, $t6, 3
	ld.d	$a2, $sp, 720                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a1
	st.d	$a2, $sp, 792                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 624                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a1
	st.d	$a2, $sp, 784                   # 8-byte Folded Spill
	ld.d	$a6, $sp, 1240                  # 8-byte Folded Reload
	slli.d	$a2, $a6, 3
	st.d	$t2, $sp, 808                   # 8-byte Folded Spill
	sub.d	$a5, $t2, $a2
	st.d	$a5, $sp, 776                   # 8-byte Folded Spill
	sub.d	$a5, $fp, $a2
	st.d	$a5, $sp, 768                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 616                   # 8-byte Folded Reload
	sub.d	$a5, $a5, $a1
	st.d	$a5, $sp, 760                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a5, $a5, $a1
	st.d	$a5, $sp, 512                   # 8-byte Folded Spill
	slli.d	$a5, $t4, 3
	sub.d	$a2, $a2, $a5
	st.d	$fp, $sp, 800                   # 8-byte Folded Spill
	add.d	$a2, $fp, $a2
	st.d	$a2, $sp, 504                   # 8-byte Folded Spill
	sub.d	$a2, $a7, $a5
	st.d	$a2, $sp, 448                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 584                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a1
	st.d	$a2, $sp, 440                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 1160                  # 8-byte Folded Reload
	sub.d	$a2, $a2, $a1
	st.d	$a2, $sp, 432                   # 8-byte Folded Spill
	add.d	$a2, $t4, $a6
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a5, $a5, $a1
	st.d	$a5, $sp, 424                   # 8-byte Folded Spill
	sub.d	$a2, $zero, $a2
	st.d	$a2, $sp, 416                   # 8-byte Folded Spill
	add.d	$a2, $t1, $s7
	nor	$a2, $a2, $zero
	st.d	$a2, $sp, 408                   # 8-byte Folded Spill
	nor	$a2, $s7, $zero
	st.d	$a2, $sp, 400                   # 8-byte Folded Spill
	add.d	$a2, $t3, $a0
	nor	$a2, $a2, $zero
	st.d	$a2, $sp, 392                   # 8-byte Folded Spill
	nor	$a0, $a0, $zero
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1168                  # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 752                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 728                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 736                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 712                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	slli.d	$a0, $s1, 3
	st.d	$a0, $sp, 872                   # 8-byte Folded Spill
	st.d	$t7, $sp, 1248                  # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_40:                               # %.preheader2450.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_41 Depth 3
                                        #         Child Loop BB1_42 Depth 4
	st.d	$s3, $sp, 296                   # 8-byte Folded Spill
	move	$a1, $zero
	.p2align	4, , 16
.LBB1_41:                               # %.preheader2446.us.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_40 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_42 Depth 4
	st.d	$a1, $sp, 864                   # 8-byte Folded Spill
	move	$s5, $zero
	move	$s6, $zero
	move	$t2, $zero
	ld.d	$a0, $sp, 696                   # 8-byte Folded Reload
	alsl.d	$a6, $a4, $a0, 3
	ld.d	$a0, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$t4, $a4, $a0, 3
	ld.d	$a0, $sp, 824                   # 8-byte Folded Reload
	sub.d	$s1, $a0, $a4
	ld.d	$a0, $sp, 816                   # 8-byte Folded Reload
	sub.d	$a4, $a0, $a4
	ld.d	$a0, $sp, 808                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a0, 3
	st.d	$a0, $sp, 1240                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 800                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a1, 3
	st.d	$a0, $sp, 1152                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 776                   # 8-byte Folded Reload
	alsl.d	$s4, $a3, $a0, 3
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	alsl.d	$ra, $a3, $a0, 3
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$s8, $a3, $a0, 3
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a0, 3
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a3
	alsl.d	$t8, $a0, $a1, 3
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	sub.d	$s7, $a0, $a3
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	sub.d	$a3, $a0, $a3
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a0, 3
	st.d	$a0, $sp, 1232                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a0, 3
	st.d	$a0, $sp, 1224                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a0, 3
	st.d	$a0, $sp, 1216                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a0, 3
	st.d	$a0, $sp, 1208                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a0, 3
	st.d	$a0, $sp, 1200                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a0, 3
	st.d	$a0, $sp, 1192                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a0, 3
	st.d	$a0, $sp, 1184                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a0, 3
	st.d	$a0, $sp, 1176                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a0, 3
	st.d	$a0, $sp, 1168                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a0, 3
	st.d	$a0, $sp, 1160                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a0, 3
	st.d	$a0, $sp, 1144                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 568                   # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a0, 3
	st.d	$a0, $sp, 1136                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a0, 3
	st.d	$a0, $sp, 1128                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a0, 3
	st.d	$a0, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	sub.d	$fp, $a0, $s2
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	sub.d	$s0, $a0, $s2
	ld.d	$a0, $sp, 832                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t5
	ld.d	$a1, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$a5, $a0, $a1, 3
	st.d	$a5, $sp, 1112                  # 8-byte Folded Spill
	ld.d	$a5, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$a5, $a0, $a5, 3
	st.d	$a5, $sp, 1104                  # 8-byte Folded Spill
	ld.d	$a7, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a5, $a0, $a7, 3
	st.d	$a5, $sp, 1096                  # 8-byte Folded Spill
	ld.d	$a5, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$t0, $a0, $a5, 3
	st.d	$t0, $sp, 1088                  # 8-byte Folded Spill
	ld.d	$t3, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$t0, $a0, $t3, 3
	st.d	$t0, $sp, 1080                  # 8-byte Folded Spill
	ld.d	$t0, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$t1, $a0, $t0, 3
	st.d	$t1, $sp, 1072                  # 8-byte Folded Spill
	ld.d	$t1, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t6, $a0, $t1, 3
	st.d	$t6, $sp, 1064                  # 8-byte Folded Spill
	ld.d	$t7, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $t7, 3
	st.d	$a0, $sp, 1056                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 792                   # 8-byte Folded Reload
	alsl.d	$a0, $t5, $a0, 3
	st.d	$a0, $sp, 1048                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$a0, $t5, $a0, 3
	st.d	$a0, $sp, 1040                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	alsl.d	$a0, $t5, $a0, 3
	st.d	$a0, $sp, 1032                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a0, $t5, $a0, 3
	st.d	$a0, $sp, 1024                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a0, $t5, $a0, 3
	st.d	$a0, $sp, 1016                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$a0, $t5, $a0, 3
	st.d	$a0, $sp, 1008                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a0, $t5, $a0, 3
	st.d	$a0, $sp, 1000                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$a0, $t5, $a0, 3
	st.d	$a0, $sp, 992                   # 8-byte Folded Spill
	alsl.d	$a7, $t5, $a7, 3
	alsl.d	$s3, $t5, $t0, 3
	alsl.d	$s2, $t5, $t7, 3
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$a0, $t5, $a0, 3
	st.d	$a0, $sp, 984                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$a0, $t5, $a0, 3
	st.d	$a0, $sp, 976                   # 8-byte Folded Spill
	alsl.d	$a0, $t5, $a1, 3
	st.d	$a0, $sp, 968                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$a0, $t5, $a0, 3
	st.d	$a0, $sp, 960                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$a0, $t5, $a0, 3
	st.d	$a0, $sp, 952                   # 8-byte Folded Spill
	alsl.d	$a0, $t5, $a5, 3
	st.d	$a0, $sp, 944                   # 8-byte Folded Spill
	alsl.d	$a0, $t5, $t3, 3
	st.d	$a0, $sp, 936                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$a0, $t5, $a0, 3
	st.d	$a0, $sp, 928                   # 8-byte Folded Spill
	alsl.d	$a0, $t5, $t1, 3
	st.d	$a0, $sp, 920                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$a0, $t5, $a0, 3
	st.d	$a0, $sp, 912                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$t3, $t5, $a0, 3
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a1, $t5, $a0, 3
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$a0, $t5, $a0, 3
	st.d	$a0, $sp, 904                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$t7, $t5, $a0, 3
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$t1, $t5, $a0, 3
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$a0, $t5, $a0, 3
	st.d	$a0, $sp, 896                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$a0, $t5, $a0, 3
	ld.d	$a5, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a5, $t5, $a5, 3
	st.d	$a5, $sp, 888                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 376                   # 8-byte Folded Reload
	st.d	$t5, $sp, 856                   # 8-byte Folded Spill
	alsl.d	$a5, $t5, $a5, 3
	st.d	$a5, $sp, 880                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 840                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_42:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_40 Depth=2
                                        #       Parent Loop BB1_41 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $a6, $t2
	fldx.d	$fa1, $t3, $s5
	fldx.d	$fa2, $t8, $t2
	fmul.d	$fa0, $fa0, $fa1
	add.d	$a5, $t8, $t2
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$t5, $sp, 1232                  # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $t2
	fldx.d	$fa0, $a6, $t2
	fldx.d	$fa1, $a1, $s5
	ld.d	$t5, $sp, 904                   # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s5
	fld.d	$fa3, $a5, 8
	fldx.d	$fa4, $a7, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t5, $sp, 1224                  # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $t2
	fldx.d	$fa0, $a6, $t2
	fldx.d	$fa1, $t7, $s5
	fld.d	$fa2, $a5, 16
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$a5, $sp, 1216                  # 8-byte Folded Reload
	fstx.d	$fa0, $a5, $t2
	fldx.d	$fa0, $a6, $t2
	fldx.d	$fa1, $t1, $s5
	add.d	$a5, $a2, $t2
	ld.d	$t5, $sp, 896                   # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s5
	fld.d	$fa3, $a5, -8
	fldx.d	$fa4, $s3, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t5, $sp, 1208                  # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $t2
	fldx.d	$fa0, $a6, $t2
	fldx.d	$fa1, $a0, $s5
	fldx.d	$fa2, $a2, $t2
	fldx.d	$fa3, $s2, $s5
	ld.d	$t5, $sp, 888                   # 8-byte Folded Reload
	fldx.d	$fa4, $t5, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	ld.d	$t5, $sp, 1200                  # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $t2
	fldx.d	$fa0, $a6, $t2
	ld.d	$t5, $sp, 880                   # 8-byte Folded Reload
	fldx.d	$fa1, $t5, $s5
	ld.d	$t5, $sp, 992                   # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s5
	fld.d	$fa3, $a5, 8
	ld.d	$a5, $sp, 984                   # 8-byte Folded Reload
	fldx.d	$fa4, $a5, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a5, $sp, 1192                  # 8-byte Folded Reload
	fstx.d	$fa0, $a5, $t2
	fldx.d	$fa0, $a6, $t2
	ld.d	$a5, $sp, 1000                  # 8-byte Folded Reload
	fldx.d	$fa1, $a5, $s5
	fldx.d	$fa2, $s8, $t2
	fmul.d	$fa0, $fa0, $fa1
	add.d	$a5, $s8, $t2
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$t5, $sp, 1184                  # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $t2
	fldx.d	$fa0, $a6, $t2
	ld.d	$t5, $sp, 1008                  # 8-byte Folded Reload
	fldx.d	$fa1, $t5, $s5
	ld.d	$t5, $sp, 1016                  # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s5
	fld.d	$fa3, $a5, 8
	ld.d	$t5, $sp, 976                   # 8-byte Folded Reload
	fldx.d	$fa4, $t5, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t5, $sp, 1176                  # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $t2
	fldx.d	$fa0, $a6, $t2
	ld.d	$t5, $sp, 1024                  # 8-byte Folded Reload
	fldx.d	$fa1, $t5, $s5
	fld.d	$fa2, $a5, 16
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$a5, $sp, 1168                  # 8-byte Folded Reload
	fstx.d	$fa0, $a5, $t2
	fldx.d	$fa0, $a6, $t2
	fldx.d	$fa1, $t3, $s5
	ld.d	$a5, $sp, 968                   # 8-byte Folded Reload
	fldx.d	$fa2, $a5, $s5
	fmul.d	$fa0, $fa0, $fa1
	fldx.d	$fa1, $s4, $t2
	fldx.d	$fa3, $t4, $t2
	ld.d	$a5, $sp, 1112                  # 8-byte Folded Reload
	fldx.d	$fa4, $a5, $s5
	add.d	$a5, $s4, $t2
	fldx.d	$fa5, $ra, $t2
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fmul.d	$fa1, $fa3, $fa4
	add.d	$t5, $ra, $t2
	fmadd.d	$fa0, $fa1, $fa5, $fa0
	ld.d	$t6, $sp, 1160                  # 8-byte Folded Reload
	fstx.d	$fa0, $t6, $t2
	ld.d	$t6, $sp, 960                   # 8-byte Folded Reload
	fldx.d	$fa0, $t6, $s5
	fldx.d	$fa1, $a6, $t2
	fldx.d	$fa2, $a1, $s5
	fld.d	$fa3, $a5, 8
	fldx.d	$fa4, $t4, $t2
	ld.d	$t6, $sp, 1104                  # 8-byte Folded Reload
	fldx.d	$fa5, $t6, $s5
	fld.d	$fa6, $t5, 8
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fldx.d	$fa2, $a7, $s5
	ld.d	$t6, $sp, 952                   # 8-byte Folded Reload
	fldx.d	$fa5, $t6, $s5
	ld.d	$t6, $sp, 1032                  # 8-byte Folded Reload
	fldx.d	$fa7, $t6, $s5
	ld.d	$t6, $sp, 1096                  # 8-byte Folded Reload
	fldx.d	$ft0, $t6, $s5
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$t6, $sp, 1144                  # 8-byte Folded Reload
	fstx.d	$fa0, $t6, $t2
	fld.d	$fa0, $a5, 16
	ld.d	$a5, $sp, 944                   # 8-byte Folded Reload
	fldx.d	$fa1, $a5, $s5
	fldx.d	$fa2, $a6, $t2
	fldx.d	$fa3, $t7, $s5
	fldx.d	$fa4, $t4, $t2
	ld.d	$a5, $sp, 1088                  # 8-byte Folded Reload
	fldx.d	$fa5, $a5, $s5
	fld.d	$fa6, $t5, 16
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa0, $fa2, $fa0, $fa1
	fmul.d	$fa1, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	ld.d	$a5, $sp, 1136                  # 8-byte Folded Reload
	fstx.d	$fa0, $a5, $t2
	fldx.d	$fa0, $a6, $t2
	fldx.d	$fa1, $t1, $s5
	ld.d	$a5, $sp, 936                   # 8-byte Folded Reload
	fldx.d	$fa2, $a5, $s5
	fmul.d	$fa1, $fa0, $fa1
	ld.d	$a5, $sp, 1240                  # 8-byte Folded Reload
	fldx.d	$fa3, $a5, $t2
	fldx.d	$fa4, $t4, $t2
	ld.d	$t5, $sp, 1080                  # 8-byte Folded Reload
	fldx.d	$fa5, $t5, $s5
	ld.d	$t5, $sp, 1152                  # 8-byte Folded Reload
	fldx.d	$fa6, $t5, $t2
	add.d	$a5, $a5, $t2
	fmadd.d	$fa1, $fa1, $fa3, $fa2
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa1, $fa2, $fa6, $fa1
	fldx.d	$fa2, $s3, $s5
	ld.d	$t6, $sp, 928                   # 8-byte Folded Reload
	fldx.d	$fa5, $t6, $s5
	ld.d	$t6, $sp, 1040                  # 8-byte Folded Reload
	fldx.d	$fa7, $t6, $s5
	ld.d	$t6, $sp, 1072                  # 8-byte Folded Reload
	fldx.d	$ft0, $t6, $s5
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fmadd.d	$fa1, $fa5, $fa6, $fa1
	fmadd.d	$fa0, $fa0, $fa7, $fa1
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$t6, $sp, 1128                  # 8-byte Folded Reload
	fstx.d	$fa0, $t6, $t2
	fld.d	$fa0, $a5, 8
	add.d	$a5, $t5, $t2
	ld.d	$t5, $sp, 920                   # 8-byte Folded Reload
	fldx.d	$fa1, $t5, $s5
	fldx.d	$fa2, $a6, $t2
	fldx.d	$fa3, $a0, $s5
	fldx.d	$fa4, $t4, $t2
	ld.d	$t5, $sp, 1064                  # 8-byte Folded Reload
	fldx.d	$fa5, $t5, $s5
	fld.d	$fa6, $a5, 8
	fmul.d	$fa3, $fa2, $fa3
	fmadd.d	$fa1, $fa3, $fa0, $fa1
	fmul.d	$fa3, $fa4, $fa5
	fmadd.d	$fa1, $fa3, $fa6, $fa1
	ld.d	$a5, $sp, 1048                  # 8-byte Folded Reload
	fldx.d	$fa3, $a5, $s5
	ld.d	$a5, $sp, 1056                  # 8-byte Folded Reload
	fldx.d	$fa5, $a5, $s5
	fldx.d	$fa7, $s2, $s5
	ld.d	$a5, $sp, 912                   # 8-byte Folded Reload
	fldx.d	$ft0, $a5, $s5
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fmadd.d	$fa1, $fa4, $fa5, $fa1
	fmadd.d	$fa0, $fa7, $fa0, $fa1
	fmadd.d	$fa0, $ft0, $fa6, $fa0
	ld.d	$a5, $sp, 1120                  # 8-byte Folded Reload
	fstx.d	$fa0, $a5, $t2
	addi.d	$t2, $t2, 8
	addi.d	$s1, $s1, -1
	addi.d	$a4, $a4, -1
	addi.w	$s6, $s6, -1
	ld.d	$a5, $sp, 1256                  # 8-byte Folded Reload
	sub.d	$t0, $t0, $a5
	ld.d	$a5, $sp, 872                   # 8-byte Folded Reload
	add.d	$s5, $s5, $a5
	addi.d	$s7, $s7, -1
	addi.d	$a3, $a3, -1
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, -1
	ld.d	$a5, $sp, 1248                  # 8-byte Folded Reload
	bne	$a5, $s6, .LBB1_42
# %bb.43:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB1_41 Depth=3
	ld.d	$t7, $sp, 1248                  # 8-byte Folded Reload
	sub.w	$a3, $t7, $a3
	sub.w	$a4, $t7, $a4
	ld.d	$a0, $sp, 848                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 856                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	sub.w	$t5, $a0, $t0
	ld.d	$a1, $sp, 864                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	sub.w	$s2, $t7, $s0
	ld.d	$a0, $sp, 744                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB1_41
# %bb.44:                               # %._crit_edge2477.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB1_40 Depth=2
	sub.w	$a3, $t7, $s7
	sub.w	$a4, $t7, $s1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	sub.w	$t5, $a0, $t0
	ld.d	$s3, $sp, 296                   # 8-byte Folded Reload
	addi.w	$s3, $s3, 1
	sub.w	$s2, $t7, $fp
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bne	$s3, $a0, .LBB1_40
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_45:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$t8, $zero, 1
	blt	$a5, $fp, .LBB1_2
# %bb.46:                               # %.preheader2451.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	blt	$a5, $t8, .LBB1_2
# %bb.47:                               # %.preheader2451.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a5, $sp, 744                   # 8-byte Folded Reload
	blt	$a5, $t8, .LBB1_2
# %bb.48:                               # %.preheader2451.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	blt	$a1, $t8, .LBB1_2
# %bb.49:                               # %.preheader2447.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a5, $a6, 4
	move	$s3, $zero
	mul.d	$fp, $a5, $a2
	st.d	$fp, $sp, 448                   # 8-byte Folded Spill
	ld.w	$a6, $a6, 8
	ld.d	$s1, $sp, 1256                  # 8-byte Folded Reload
	mul.d	$fp, $a1, $s1
	st.d	$fp, $sp, 440                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 744                   # 8-byte Folded Reload
	sub.d	$t1, $t1, $s0
	mul.d	$t1, $t1, $t2
	sub.d	$t2, $t6, $s0
	mul.d	$t2, $t2, $t7
	sub.d	$t3, $t3, $s0
	mul.d	$t3, $t3, $t4
	ld.d	$t4, $sp, 1248                  # 8-byte Folded Reload
	addi.w	$t6, $t4, 0
	ld.d	$t4, $sp, 1192                  # 8-byte Folded Reload
	addi.w	$t4, $t4, 0
	sub.w	$t7, $zero, $a1
	add.d	$a1, $t2, $a7
	nor	$a1, $a1, $zero
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	nor	$a1, $a7, $zero
	st.d	$a1, $sp, 416                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 968                   # 8-byte Folded Reload
	addi.d	$t2, $a1, -8
	ld.d	$a7, $sp, 976                   # 8-byte Folded Reload
	addi.d	$fp, $a7, -8
	mul.d	$a1, $a6, $t0
	sub.d	$a6, $t8, $s0
	mul.d	$a5, $a5, $a6
	add.d	$a1, $a1, $a5
	mul.d	$a1, $a1, $a2
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	st.d	$t6, $sp, 432                   # 8-byte Folded Spill
	slli.d	$a1, $t6, 3
	ld.d	$a2, $sp, 720                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a1
	st.d	$a2, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 624                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a1
	st.d	$a2, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a6, $sp, 1240                  # 8-byte Folded Reload
	slli.d	$a2, $a6, 3
	st.d	$t2, $sp, 408                   # 8-byte Folded Spill
	sub.d	$a5, $t2, $a2
	st.d	$a5, $sp, 376                   # 8-byte Folded Spill
	sub.d	$a5, $fp, $a2
	st.d	$a5, $sp, 368                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 488                   # 8-byte Folded Reload
	sub.d	$a5, $a5, $a1
	st.d	$a5, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 616                   # 8-byte Folded Reload
	sub.d	$a5, $a5, $a1
	st.d	$a5, $sp, 352                   # 8-byte Folded Spill
	slli.d	$a5, $t4, 3
	sub.d	$a2, $a2, $a5
	st.d	$fp, $sp, 400                   # 8-byte Folded Spill
	add.d	$a2, $fp, $a2
	st.d	$a2, $sp, 344                   # 8-byte Folded Spill
	sub.d	$a2, $a7, $a5
	st.d	$a2, $sp, 336                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 496                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a1
	st.d	$a2, $sp, 328                   # 8-byte Folded Spill
	add.d	$a2, $t4, $a6
	ld.d	$a5, $sp, 456                   # 8-byte Folded Reload
	sub.d	$a5, $a5, $a1
	st.d	$a5, $sp, 320                   # 8-byte Folded Spill
	sub.d	$a2, $zero, $a2
	st.d	$a2, $sp, 312                   # 8-byte Folded Spill
	add.d	$a2, $t1, $s7
	nor	$a2, $a2, $zero
	st.d	$a2, $sp, 304                   # 8-byte Folded Spill
	nor	$a2, $s7, $zero
	st.d	$a2, $sp, 296                   # 8-byte Folded Spill
	add.d	$a2, $t3, $a0
	nor	$a2, $a2, $zero
	st.d	$a2, $sp, 288                   # 8-byte Folded Spill
	nor	$a0, $a0, $zero
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1168                  # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1160                  # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 752                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 728                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 736                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 712                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a0, $s1, 3
	st.d	$a0, $sp, 760                   # 8-byte Folded Spill
	st.d	$t7, $sp, 1248                  # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_50:                               # %.preheader2447.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_51 Depth 3
                                        #         Child Loop BB1_52 Depth 4
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	move	$a2, $zero
	move	$a1, $s2
	.p2align	4, , 16
.LBB1_51:                               # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_50 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_52 Depth 4
	st.d	$a2, $sp, 512                   # 8-byte Folded Spill
	move	$s3, $zero
	move	$t1, $zero
	move	$t2, $zero
	move	$s7, $t5
	ld.d	$a0, $sp, 696                   # 8-byte Folded Reload
	alsl.d	$a6, $a4, $a0, 3
	ld.d	$a0, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$s8, $a4, $a0, 3
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	sub.d	$s0, $a0, $a4
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	sub.d	$a4, $a0, $a4
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a0, 3
	st.d	$a0, $sp, 1240                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a2, 3
	st.d	$a0, $sp, 1232                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a0, 3
	st.d	$a0, $sp, 1224                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a0, 3
	st.d	$a0, $sp, 1136                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$ra, $a3, $a0, 3
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$t8, $a3, $a0, 3
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a3
	alsl.d	$a2, $a0, $a2, 3
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	sub.d	$s2, $a0, $a3
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	sub.d	$a3, $a0, $a3
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1216                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1208                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1200                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1192                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1184                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1176                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1168                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1160                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1152                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1144                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1128                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 568                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1112                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 1104                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.d	$fp, $a0, $a1
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	sub.d	$a5, $a0, $a1
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t5
	ld.d	$t4, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $t4, 3
	st.d	$a1, $sp, 1096                  # 8-byte Folded Spill
	ld.d	$a7, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a7, 3
	st.d	$a1, $sp, 1088                  # 8-byte Folded Spill
	ld.d	$s5, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $s5, 3
	st.d	$a1, $sp, 1080                  # 8-byte Folded Spill
	ld.d	$t3, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $t3, 3
	st.d	$a1, $sp, 1072                  # 8-byte Folded Spill
	ld.d	$t5, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $t5, 3
	st.d	$a1, $sp, 1064                  # 8-byte Folded Spill
	ld.d	$t6, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $t6, 3
	st.d	$a1, $sp, 1056                  # 8-byte Folded Spill
	ld.d	$s1, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $s1, 3
	st.d	$a1, $sp, 1048                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$t0, $a0, $a1, 3
	st.d	$t0, $sp, 1040                  # 8-byte Folded Spill
	ld.d	$t7, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t0, $a0, $t7, 3
	st.d	$t0, $sp, 1032                  # 8-byte Folded Spill
	ld.d	$s6, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $s6, 3
	st.d	$a0, $sp, 1024                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 1016                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 1008                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 1000                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 992                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 984                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 976                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 968                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 960                   # 8-byte Folded Spill
	alsl.d	$t0, $s7, $a7, 3
	alsl.d	$a7, $s7, $t3, 3
	alsl.d	$t3, $s7, $t6, 3
	alsl.d	$a1, $s7, $a1, 3
	alsl.d	$s6, $s7, $s6, 3
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 952                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 944                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 936                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 928                   # 8-byte Folded Spill
	alsl.d	$a0, $s7, $t4, 3
	st.d	$a0, $sp, 920                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 912                   # 8-byte Folded Spill
	alsl.d	$a0, $s7, $s5, 3
	st.d	$a0, $sp, 904                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 896                   # 8-byte Folded Spill
	alsl.d	$a0, $s7, $t5, 3
	st.d	$a0, $sp, 888                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 880                   # 8-byte Folded Spill
	alsl.d	$a0, $s7, $s1, 3
	st.d	$a0, $sp, 872                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 864                   # 8-byte Folded Spill
	alsl.d	$a0, $s7, $t7, 3
	st.d	$a0, $sp, 856                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 848                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$s1, $s7, $a0, 3
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 840                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$t7, $s7, $a0, 3
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 832                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$s5, $s7, $a0, 3
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 824                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	ld.d	$t4, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$t4, $s7, $t4, 3
	st.d	$t4, $sp, 816                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$t4, $s7, $t4, 3
	ld.d	$t5, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$t5, $s7, $t5, 3
	st.d	$t5, $sp, 808                   # 8-byte Folded Spill
	ld.d	$t5, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$t5, $s7, $t5, 3
	st.d	$t5, $sp, 800                   # 8-byte Folded Spill
	ld.d	$t5, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$t5, $s7, $t5, 3
	st.d	$t5, $sp, 792                   # 8-byte Folded Spill
	ld.d	$t5, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$t5, $s7, $t5, 3
	st.d	$t5, $sp, 784                   # 8-byte Folded Spill
	ld.d	$t5, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$t5, $s7, $t5, 3
	st.d	$t5, $sp, 776                   # 8-byte Folded Spill
	ld.d	$t5, $sp, 264                   # 8-byte Folded Reload
	st.d	$s7, $sp, 504                   # 8-byte Folded Spill
	alsl.d	$t5, $s7, $t5, 3
	st.d	$t5, $sp, 768                   # 8-byte Folded Spill
	ld.d	$s7, $sp, 440                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_52:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_50 Depth=2
                                        #       Parent Loop BB1_51 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $a6, $t2
	fldx.d	$fa1, $s1, $s3
	fmul.d	$fa1, $fa0, $fa1
	ld.d	$t5, $sp, 840                   # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s3
	fldx.d	$fa3, $a2, $t2
	fldx.d	$fa4, $t0, $s3
	add.d	$t5, $a2, $t2
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t6, $sp, 1216                  # 8-byte Folded Reload
	fstx.d	$fa0, $t6, $t2
	fldx.d	$fa0, $a6, $t2
	fldx.d	$fa1, $t7, $s3
	ld.d	$t6, $sp, 832                   # 8-byte Folded Reload
	fldx.d	$fa2, $t6, $s3
	fld.d	$fa3, $t5, 8
	fldx.d	$fa4, $a7, $s3
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t6, $sp, 1208                  # 8-byte Folded Reload
	fstx.d	$fa0, $t6, $t2
	fldx.d	$fa0, $a6, $t2
	fldx.d	$fa1, $s5, $s3
	ld.d	$t6, $sp, 824                   # 8-byte Folded Reload
	fldx.d	$fa2, $t6, $s3
	fld.d	$fa3, $t5, 16
	fldx.d	$fa4, $t3, $s3
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t5, $sp, 1200                  # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $t2
	fldx.d	$fa0, $a6, $t2
	fldx.d	$fa1, $a0, $s3
	add.d	$t5, $t8, $t2
	ld.d	$t6, $sp, 816                   # 8-byte Folded Reload
	fldx.d	$fa2, $t6, $s3
	fld.d	$fa3, $t5, -8
	fldx.d	$fa4, $a1, $s3
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t6, $sp, 1192                  # 8-byte Folded Reload
	fstx.d	$fa0, $t6, $t2
	fldx.d	$fa0, $a6, $t2
	fldx.d	$fa1, $t4, $s3
	fldx.d	$fa2, $t8, $t2
	fldx.d	$fa3, $s6, $s3
	ld.d	$t6, $sp, 808                   # 8-byte Folded Reload
	fldx.d	$fa4, $t6, $s3
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	ld.d	$t6, $sp, 1184                  # 8-byte Folded Reload
	fstx.d	$fa0, $t6, $t2
	fldx.d	$fa0, $a6, $t2
	ld.d	$t6, $sp, 800                   # 8-byte Folded Reload
	fldx.d	$fa1, $t6, $s3
	ld.d	$t6, $sp, 792                   # 8-byte Folded Reload
	fldx.d	$fa2, $t6, $s3
	fld.d	$fa3, $t5, 8
	ld.d	$t5, $sp, 952                   # 8-byte Folded Reload
	fldx.d	$fa4, $t5, $s3
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t5, $sp, 1176                  # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $t2
	fldx.d	$fa0, $a6, $t2
	ld.d	$t5, $sp, 784                   # 8-byte Folded Reload
	fldx.d	$fa1, $t5, $s3
	fmul.d	$fa1, $fa0, $fa1
	ld.d	$t5, $sp, 776                   # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s3
	fldx.d	$fa3, $ra, $t2
	ld.d	$t5, $sp, 944                   # 8-byte Folded Reload
	fldx.d	$fa4, $t5, $s3
	add.d	$t5, $ra, $t2
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t6, $sp, 1168                  # 8-byte Folded Reload
	fstx.d	$fa0, $t6, $t2
	fldx.d	$fa0, $a6, $t2
	ld.d	$t6, $sp, 768                   # 8-byte Folded Reload
	fldx.d	$fa1, $t6, $s3
	ld.d	$t6, $sp, 960                   # 8-byte Folded Reload
	fldx.d	$fa2, $t6, $s3
	fld.d	$fa3, $t5, 8
	ld.d	$t6, $sp, 936                   # 8-byte Folded Reload
	fldx.d	$fa4, $t6, $s3
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t6, $sp, 1160                  # 8-byte Folded Reload
	fstx.d	$fa0, $t6, $t2
	fldx.d	$fa0, $a6, $t2
	ld.d	$t6, $sp, 968                   # 8-byte Folded Reload
	fldx.d	$fa1, $t6, $s3
	ld.d	$t6, $sp, 976                   # 8-byte Folded Reload
	fldx.d	$fa2, $t6, $s3
	fld.d	$fa3, $t5, 16
	ld.d	$t5, $sp, 928                   # 8-byte Folded Reload
	fldx.d	$fa4, $t5, $s3
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t5, $sp, 1152                  # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $t2
	fldx.d	$fa0, $a6, $t2
	fldx.d	$fa1, $s1, $s3
	ld.d	$t5, $sp, 920                   # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s3
	fmul.d	$fa1, $fa0, $fa1
	ld.d	$t5, $sp, 1224                  # 8-byte Folded Reload
	fldx.d	$fa3, $t5, $t2
	fldx.d	$fa4, $s8, $t2
	ld.d	$t6, $sp, 1096                  # 8-byte Folded Reload
	fldx.d	$fa5, $t6, $s3
	add.d	$t5, $t5, $t2
	ld.d	$t6, $sp, 1136                  # 8-byte Folded Reload
	fldx.d	$fa6, $t6, $t2
	fmadd.d	$fa1, $fa1, $fa3, $fa2
	fmul.d	$fa2, $fa4, $fa5
	add.d	$t6, $t6, $t2
	fmadd.d	$fa1, $fa2, $fa6, $fa1
	fldx.d	$fa2, $t0, $s3
	ld.d	$s4, $sp, 912                   # 8-byte Folded Reload
	fldx.d	$fa5, $s4, $s3
	ld.d	$s4, $sp, 984                   # 8-byte Folded Reload
	fldx.d	$fa7, $s4, $s3
	ld.d	$s4, $sp, 1088                  # 8-byte Folded Reload
	fldx.d	$ft0, $s4, $s3
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fmadd.d	$fa1, $fa5, $fa6, $fa1
	fmadd.d	$fa0, $fa0, $fa7, $fa1
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$s4, $sp, 1144                  # 8-byte Folded Reload
	fstx.d	$fa0, $s4, $t2
	ld.d	$s4, $sp, 904                   # 8-byte Folded Reload
	fldx.d	$fa0, $s4, $s3
	fldx.d	$fa1, $a6, $t2
	fldx.d	$fa2, $t7, $s3
	fld.d	$fa3, $t5, 8
	fldx.d	$fa4, $s8, $t2
	ld.d	$s4, $sp, 1080                  # 8-byte Folded Reload
	fldx.d	$fa5, $s4, $s3
	fld.d	$fa6, $t6, 8
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fldx.d	$fa2, $a7, $s3
	ld.d	$s4, $sp, 896                   # 8-byte Folded Reload
	fldx.d	$fa5, $s4, $s3
	ld.d	$s4, $sp, 992                   # 8-byte Folded Reload
	fldx.d	$fa7, $s4, $s3
	ld.d	$s4, $sp, 1072                  # 8-byte Folded Reload
	fldx.d	$ft0, $s4, $s3
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$s4, $sp, 1128                  # 8-byte Folded Reload
	fstx.d	$fa0, $s4, $t2
	fld.d	$fa0, $t5, 16
	ld.d	$t5, $sp, 888                   # 8-byte Folded Reload
	fldx.d	$fa1, $t5, $s3
	fldx.d	$fa2, $a6, $t2
	fldx.d	$fa3, $s5, $s3
	fldx.d	$fa4, $s8, $t2
	ld.d	$t5, $sp, 1064                  # 8-byte Folded Reload
	fldx.d	$fa5, $t5, $s3
	fld.d	$fa6, $t6, 16
	fmul.d	$fa3, $fa2, $fa3
	fmadd.d	$fa1, $fa3, $fa0, $fa1
	fmul.d	$fa3, $fa4, $fa5
	fmadd.d	$fa1, $fa3, $fa6, $fa1
	fldx.d	$fa3, $t3, $s3
	ld.d	$t5, $sp, 880                   # 8-byte Folded Reload
	fldx.d	$fa5, $t5, $s3
	ld.d	$t5, $sp, 1000                  # 8-byte Folded Reload
	fldx.d	$fa7, $t5, $s3
	ld.d	$t5, $sp, 1056                  # 8-byte Folded Reload
	fldx.d	$ft0, $t5, $s3
	fmadd.d	$fa0, $fa3, $fa0, $fa1
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa2, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$t5, $sp, 1120                  # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $t2
	fldx.d	$fa0, $a6, $t2
	fldx.d	$fa1, $a0, $s3
	ld.d	$t5, $sp, 872                   # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s3
	fmul.d	$fa1, $fa0, $fa1
	ld.d	$t5, $sp, 1240                  # 8-byte Folded Reload
	fldx.d	$fa3, $t5, $t2
	fldx.d	$fa4, $s8, $t2
	ld.d	$t6, $sp, 1048                  # 8-byte Folded Reload
	fldx.d	$fa5, $t6, $s3
	ld.d	$t6, $sp, 1232                  # 8-byte Folded Reload
	fldx.d	$fa6, $t6, $t2
	add.d	$t5, $t5, $t2
	fmadd.d	$fa1, $fa1, $fa3, $fa2
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa1, $fa2, $fa6, $fa1
	fldx.d	$fa2, $a1, $s3
	ld.d	$s4, $sp, 864                   # 8-byte Folded Reload
	fldx.d	$fa5, $s4, $s3
	ld.d	$s4, $sp, 1008                  # 8-byte Folded Reload
	fldx.d	$fa7, $s4, $s3
	ld.d	$s4, $sp, 1040                  # 8-byte Folded Reload
	fldx.d	$ft0, $s4, $s3
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fmadd.d	$fa1, $fa5, $fa6, $fa1
	fmadd.d	$fa0, $fa0, $fa7, $fa1
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$s4, $sp, 1112                  # 8-byte Folded Reload
	fstx.d	$fa0, $s4, $t2
	fld.d	$fa0, $t5, 8
	add.d	$t5, $t6, $t2
	ld.d	$t6, $sp, 856                   # 8-byte Folded Reload
	fldx.d	$fa1, $t6, $s3
	fldx.d	$fa2, $a6, $t2
	fldx.d	$fa3, $t4, $s3
	fldx.d	$fa4, $s8, $t2
	ld.d	$t6, $sp, 1032                  # 8-byte Folded Reload
	fldx.d	$fa5, $t6, $s3
	fld.d	$fa6, $t5, 8
	fmul.d	$fa3, $fa2, $fa3
	fmadd.d	$fa1, $fa3, $fa0, $fa1
	fmul.d	$fa3, $fa4, $fa5
	fmadd.d	$fa1, $fa3, $fa6, $fa1
	ld.d	$t5, $sp, 1016                  # 8-byte Folded Reload
	fldx.d	$fa3, $t5, $s3
	ld.d	$t5, $sp, 1024                  # 8-byte Folded Reload
	fldx.d	$fa5, $t5, $s3
	fldx.d	$fa7, $s6, $s3
	ld.d	$t5, $sp, 848                   # 8-byte Folded Reload
	fldx.d	$ft0, $t5, $s3
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fmadd.d	$fa1, $fa4, $fa5, $fa1
	fmadd.d	$fa0, $fa7, $fa0, $fa1
	fmadd.d	$fa0, $ft0, $fa6, $fa0
	ld.d	$t5, $sp, 1104                  # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $t2
	addi.d	$t2, $t2, 8
	addi.d	$s0, $s0, -1
	addi.d	$a4, $a4, -1
	addi.w	$t1, $t1, -1
	ld.d	$t5, $sp, 1256                  # 8-byte Folded Reload
	sub.d	$s7, $s7, $t5
	ld.d	$t5, $sp, 760                   # 8-byte Folded Reload
	add.d	$s3, $s3, $t5
	addi.d	$s2, $s2, -1
	addi.d	$a3, $a3, -1
	addi.d	$fp, $fp, -1
	addi.d	$a5, $a5, -1
	ld.d	$t5, $sp, 1248                  # 8-byte Folded Reload
	bne	$t5, $t1, .LBB1_52
# %bb.53:                               # %._crit_edge.us.us.us.us.us.us2907
                                        #   in Loop: Header=BB1_51 Depth=3
	ld.d	$t7, $sp, 1248                  # 8-byte Folded Reload
	sub.w	$a3, $t7, $a3
	sub.w	$a4, $t7, $a4
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 504                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a6
	sub.w	$t5, $a0, $s7
	ld.d	$a2, $sp, 512                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	sub.w	$a1, $t7, $a5
	ld.d	$a0, $sp, 744                   # 8-byte Folded Reload
	bne	$a2, $a0, .LBB1_51
# %bb.54:                               # %._crit_edge2842.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB1_50 Depth=2
	sub.w	$a3, $t7, $s2
	sub.w	$a4, $t7, $s0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a6
	sub.w	$t5, $a0, $s7
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	addi.w	$s3, $s3, 1
	sub.w	$s2, $t7, $fp
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bne	$s3, $a0, .LBB1_50
	b	.LBB1_2
.LBB1_55:                               #   in Loop: Header=BB1_3 Depth=1
	move	$s5, $s7
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 1176                  # 8-byte Folded Spill
	b	.LBB1_10
.LBB1_56:                               # %._crit_edge
	move	$a0, $zero
	ld.d	$s8, $sp, 1304                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1312                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1320                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1328                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1336                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1344                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1352                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1360                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1368                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1376                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1384                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1392
	ret
.Lfunc_end1:
	.size	hypre_SMG3BuildRAPSym, .Lfunc_end1-hypre_SMG3BuildRAPSym
                                        # -- End function
	.globl	hypre_SMG3BuildRAPNoSym         # -- Begin function hypre_SMG3BuildRAPNoSym
	.p2align	5
	.type	hypre_SMG3BuildRAPNoSym,@function
hypre_SMG3BuildRAPNoSym:                # @hypre_SMG3BuildRAPNoSym
# %bb.0:                                # %.split
	addi.d	$sp, $sp, -1280
	st.d	$ra, $sp, 1272                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1264                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1256                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1248                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1240                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1232                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1224                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1216                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1208                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1200                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1192                  # 8-byte Folded Spill
	move	$s4, $a3
	ld.d	$a3, $a3, 8
	ld.d	$a7, $a3, 8
	ld.w	$a6, $a7, 8
	ori	$s5, $zero, 1
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	blt	$a6, $s5, .LBB2_56
# %bb.1:                                # %.preheader2330.lr.ph
	move	$s6, $a0
	ld.d	$a0, $a0, 24
	ld.d	$a1, $s6, 8
	move	$s8, $zero
	move	$a4, $zero
	ld.w	$s2, $a0, 8
	ld.d	$a0, $a1, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $a3, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
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
	st.d	$s4, $sp, 48                    # 8-byte Folded Spill
	st.d	$a7, $sp, 40                    # 8-byte Folded Spill
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 80                    # 8-byte Folded Spill
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %.loopexit2326
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a7, 8
	ld.d	$s8, $sp, 96                    # 8-byte Folded Reload
	addi.d	$s8, $s8, 1
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	ori	$s5, $zero, 1
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	bge	$s8, $a0, .LBB2_56
.LBB2_3:                                # %.preheader2330
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
                                        #     Child Loop BB2_50 Depth 2
                                        #       Child Loop BB2_51 Depth 3
                                        #         Child Loop BB2_52 Depth 4
                                        #     Child Loop BB2_20 Depth 2
                                        #       Child Loop BB2_21 Depth 3
                                        #         Child Loop BB2_22 Depth 4
                                        #     Child Loop BB2_30 Depth 2
                                        #       Child Loop BB2_31 Depth 3
                                        #         Child Loop BB2_32 Depth 4
                                        #     Child Loop BB2_40 Depth 2
                                        #       Child Loop BB2_41 Depth 3
                                        #         Child Loop BB2_42 Depth 4
	slli.d	$a0, $s8, 2
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.d	$s1, $a4, -1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a1, $a4, $a1, 2
	slli.d	$a2, $a4, 4
	alsl.d	$a2, $a4, $a2, 3
	addi.d	$a3, $a4, -1
	addi.d	$s3, $a2, -12
	.p2align	4, , 16
.LBB2_4:                                #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	addi.w	$a3, $a3, 1
	addi.w	$s1, $s1, 1
	addi.d	$a1, $a1, 4
	addi.d	$s3, $s3, 24
	bne	$a2, $a0, .LBB2_4
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=1
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $a7, 0
	slli.d	$a1, $s8, 4
	alsl.d	$a1, $s8, $a1, 3
	st.d	$a1, $sp, 1088                  # 8-byte Folded Spill
	add.d	$a0, $a0, $a1
	addi.d	$a3, $sp, 1168
	st.d	$a0, $sp, 1112                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMapCoarseToFine)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 40
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $s0, 40
	ld.d	$a3, $a0, 0
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $fp, 40
	ld.d	$a2, $s4, 40
	ld.d	$a4, $a1, 0
	st.d	$a3, $sp, 1128                  # 8-byte Folded Spill
	add.d	$a1, $a3, $s3
	st.d	$a1, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1144                  # 8-byte Folded Spill
	ld.d	$a0, $a2, 0
	st.d	$a0, $sp, 1080                  # 8-byte Folded Spill
	st.d	$a4, $sp, 1104                  # 8-byte Folded Spill
	add.d	$a0, $a4, $s3
	st.d	$a0, $sp, 1096                  # 8-byte Folded Spill
	st.d	$zero, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	addi.w	$s7, $zero, -1
	st.d	$zero, $sp, 1180
	st.d	$s7, $sp, 1136                  # 8-byte Folded Spill
	lu32i.d	$s7, 0
	st.w	$s7, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 664                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 632                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1180
	st.w	$s7, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $fp
	move	$fp, $s7
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 624                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 616                   # 8-byte Folded Spill
	st.d	$s7, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 608                   # 8-byte Folded Spill
	st.d	$s5, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 704                   # 8-byte Folded Spill
	ori	$s0, $zero, 0
	lu32i.d	$s0, -1
	st.d	$s0, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 600                   # 8-byte Folded Spill
	ori	$s7, $zero, 0
	lu32i.d	$s7, 1
	st.d	$s7, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 696                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 688                   # 8-byte Folded Spill
	ori	$a0, $zero, 8
	blt	$s2, $a0, .LBB2_9
# %bb.6:                                #   in Loop: Header=BB2_3 Depth=1
	st.d	$fp, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 680                   # 8-byte Folded Spill
	st.d	$s5, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	st.d	$s0, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	st.d	$s7, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	st.d	$s5, $sp, 1180
	st.w	$fp, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 672                   # 8-byte Folded Spill
	st.d	$s7, $sp, 1180
	st.w	$fp, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	ori	$a0, $zero, 16
	bltu	$s2, $a0, .LBB2_9
# %bb.7:                                #   in Loop: Header=BB2_3 Depth=1
	st.d	$s0, $sp, 1064                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1072                  # 8-byte Folded Spill
	ld.d	$s0, $sp, 1136                  # 8-byte Folded Reload
	st.d	$s0, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	move	$fp, $s0
	lu32i.d	$fp, 1
	st.d	$fp, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 536                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 712                   # 8-byte Folded Spill
	ori	$a0, $zero, 20
	bltu	$s2, $a0, .LBB2_55
# %bb.8:                                #   in Loop: Header=BB2_3 Depth=1
	st.d	$s0, $sp, 1180
	ori	$s0, $zero, 1
	st.w	$s0, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 1180
	st.w	$s0, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 1180
	st.w	$s0, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ori	$s2, $zero, 1
	lu32i.d	$s2, 1
	st.d	$s2, $sp, 1180
	st.w	$s0, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 1180
	ld.d	$fp, $sp, 1072                  # 8-byte Folded Reload
	st.w	$fp, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 1180
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	st.w	$fp, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$a2, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1064                  # 8-byte Folded Reload
	b	.LBB2_10
	.p2align	4, , 16
.LBB2_9:                                #   in Loop: Header=BB2_3 Depth=1
	move	$s1, $zero
	ld.d	$a1, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$a2, $sp, 1080                  # 8-byte Folded Reload
.LBB2_10:                               # %.thread2248
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 1144                  # 8-byte Folded Reload
	add.d	$a0, $a0, $s3
	st.d	$a0, $sp, 1080                  # 8-byte Folded Spill
	add.d	$a0, $a2, $a1
	st.d	$a0, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 592                   # 8-byte Folded Spill
	st.d	$s7, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 584                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 576                   # 8-byte Folded Spill
	st.d	$fp, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 568                   # 8-byte Folded Spill
	st.d	$s5, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 560                   # 8-byte Folded Spill
	st.d	$s0, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 552                   # 8-byte Folded Spill
	st.d	$s7, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	ld.d	$s6, $sp, 1136                  # 8-byte Folded Reload
	beqz	$s1, .LBB2_12
# %bb.11:                               #   in Loop: Header=BB2_3 Depth=1
	move	$s0, $s6
	lu32i.d	$s0, 1
	st.d	$s0, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	ori	$s2, $zero, 1
	lu32i.d	$s2, 1
	st.d	$s2, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	st.d	$s6, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	st.d	$s0, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	st.d	$s2, $sp, 1180
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
.LBB2_12:                               #   in Loop: Header=BB2_3 Depth=1
	st.d	$zero, $sp, 1180
	st.w	$s5, $sp, 1188
	ld.d	$s4, $sp, 1120                  # 8-byte Folded Reload
	ld.w	$a0, $s4, 4
	ld.w	$a1, $s4, -8
	sub.w	$a0, $a0, $a1
	slt	$a1, $s6, $a0
	maskeqz	$a0, $a0, $a1
	ld.d	$s0, $sp, 1128                  # 8-byte Folded Reload
	ldx.w	$a2, $s0, $s3
	ld.w	$a3, $s4, -12
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	sub.w	$a1, $a2, $a3
	slt	$a2, $s6, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s6, $a2
	ld.d	$fp, $sp, 1096                  # 8-byte Folded Reload
	ld.w	$a3, $fp, 4
	ld.w	$a4, $fp, -8
	or	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	mulw.d.w	$a0, $a1, $a0
	st.d	$a0, $sp, 1072                  # 8-byte Folded Spill
	sub.w	$a0, $a3, $a4
	slt	$a1, $s6, $a0
	move	$s1, $s2
	ld.d	$s2, $sp, 1104                  # 8-byte Folded Reload
	ldx.w	$a2, $s2, $s3
	ld.w	$a3, $fp, -12
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	sub.w	$a1, $a2, $a3
	slt	$a2, $s6, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s6, $a2
	or	$a1, $a1, $a2
	st.d	$s5, $sp, 1184
	ldx.w	$a2, $s2, $s3
	ld.w	$a3, $fp, -12
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	mulw.d.w	$a0, $a1, $a0
	st.d	$a0, $sp, 1064                  # 8-byte Folded Spill
	sub.w	$a0, $a2, $a3
	slt	$a1, $s6, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 648                   # 8-byte Folded Spill
	st.d	$s5, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a1, $sp, 1156
	ld.d	$s7, $sp, 1112                  # 8-byte Folded Reload
	move	$a0, $s7
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 0
	ld.w	$a0, $fp, -12
	ld.w	$a3, $s7, 4
	ld.w	$a2, $fp, -8
	ld.w	$a7, $s7, 8
	ld.w	$a4, $fp, -4
	ld.w	$a5, $fp, 4
	sub.d	$a6, $a1, $a0
	sub.d	$t0, $a3, $a2
	sub.d	$a4, $a7, $a4
	sub.w	$a2, $a5, $a2
	slt	$a5, $s6, $a2
	maskeqz	$a2, $a2, $a5
	masknez	$a5, $s6, $a5
	or	$a2, $a2, $a5
	ldx.w	$a5, $s2, $s3
	addi.d	$t5, $a2, 1
	mul.d	$a2, $t5, $a4
	add.d	$a2, $t0, $a2
	sub.w	$a0, $a5, $a0
	slt	$a4, $s6, $a0
	maskeqz	$a0, $a0, $a4
	masknez	$a4, $s6, $a4
	or	$s7, $a0, $a4
	addi.d	$t6, $s7, 1
	mul.d	$a0, $a2, $t6
	add.w	$a4, $a6, $a0
	ld.d	$a6, $sp, 1080                  # 8-byte Folded Reload
	ld.w	$a0, $a6, -12
	ld.w	$a2, $a6, -8
	ld.w	$a5, $a6, -4
	ld.w	$a6, $a6, 4
	sub.d	$t1, $a1, $a0
	sub.d	$t0, $a3, $a2
	sub.d	$a5, $a7, $a5
	sub.w	$a2, $a6, $a2
	slt	$a6, $s6, $a2
	maskeqz	$a2, $a2, $a6
	masknez	$a6, $s6, $a6
	or	$a2, $a2, $a6
	ld.d	$a6, $sp, 1144                  # 8-byte Folded Reload
	ldx.w	$a6, $a6, $s3
	addi.d	$a2, $a2, 1
	mul.d	$a5, $a2, $a5
	add.d	$a5, $t0, $a5
	sub.w	$a0, $a6, $a0
	slt	$a6, $s6, $a0
	maskeqz	$a0, $a0, $a6
	masknez	$a6, $s6, $a6
	or	$t0, $a0, $a6
	addi.d	$a0, $t0, 1
	mul.d	$a5, $a5, $a0
	add.w	$a5, $t1, $a5
	ld.w	$a6, $sp, 1168
	ld.w	$t1, $s4, -12
	ld.w	$t2, $sp, 1172
	ld.w	$t3, $s4, -8
	ld.w	$t4, $sp, 1176
	ld.w	$t7, $s4, -4
	ld.w	$t8, $s4, 4
	sub.d	$a6, $a6, $t1
	sub.d	$t2, $t2, $t3
	sub.d	$t4, $t4, $t7
	sub.w	$t3, $t8, $t3
	slt	$t7, $s6, $t3
	maskeqz	$t3, $t3, $t7
	masknez	$t7, $s6, $t7
	or	$t3, $t3, $t7
	ldx.w	$t7, $s0, $s3
	addi.d	$s4, $t3, 1
	mul.d	$t3, $s4, $t4
	add.d	$t2, $t2, $t3
	sub.w	$t1, $t7, $t1
	slt	$t3, $s6, $t1
	maskeqz	$t1, $t1, $t3
	masknez	$t3, $s6, $t3
	or	$t1, $t1, $t3
	addi.d	$s3, $t1, 1
	mul.d	$t1, $t2, $s3
	add.w	$a6, $a6, $t1
	ld.d	$t7, $sp, 1088                  # 8-byte Folded Reload
	ld.w	$t2, $t7, 0
	ld.w	$t1, $t7, 4
	ld.w	$t3, $t7, 8
	ld.w	$t4, $t7, 16
	sub.d	$a1, $a1, $t2
	sub.d	$a3, $a3, $t1
	sub.d	$a7, $a7, $t3
	sub.w	$t1, $t4, $t1
	slt	$t3, $s6, $t1
	maskeqz	$t1, $t1, $t3
	masknez	$t3, $s6, $t3
	or	$t1, $t1, $t3
	ld.w	$t3, $t7, 12
	addi.d	$t1, $t1, 1
	mul.d	$a7, $t1, $a7
	add.d	$a3, $a3, $a7
	sub.w	$a7, $t3, $t2
	slt	$t2, $s6, $a7
	maskeqz	$a7, $a7, $t2
	masknez	$t2, $s6, $t2
	or	$t3, $a7, $t2
	addi.d	$t7, $t3, 1
	mul.d	$a3, $a3, $t7
	ld.w	$t8, $sp, 1156
	st.d	$t8, $sp, 488                   # 8-byte Folded Spill
	ld.w	$t2, $sp, 1160
	add.w	$a7, $a1, $a3
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	st.d	$a1, $sp, 640                   # 8-byte Folded Spill
	ld.w	$t4, $sp, 1164
	slt	$a1, $t8, $t2
	masknez	$a3, $t8, $a1
	st.d	$t2, $sp, 656                   # 8-byte Folded Spill
	maskeqz	$a1, $t2, $a1
	or	$a1, $a1, $a3
	slt	$a3, $a1, $t4
	masknez	$a1, $a1, $a3
	st.d	$t4, $sp, 152                   # 8-byte Folded Spill
	maskeqz	$a3, $t4, $a3
	or	$a1, $a3, $a1
	ori	$a3, $zero, 19
	st.d	$s8, $sp, 96                    # 8-byte Folded Spill
	beq	$s1, $a3, .LBB2_35
# %bb.13:                               #   in Loop: Header=BB2_3 Depth=1
	ori	$a3, $zero, 15
	ld.d	$ra, $sp, 528                   # 8-byte Folded Reload
	ori	$t4, $zero, 1
	beq	$s1, $a3, .LBB2_25
# %bb.14:                               #   in Loop: Header=BB2_3 Depth=1
	ori	$a3, $zero, 7
	bne	$s1, $a3, .LBB2_45
# %bb.15:                               #   in Loop: Header=BB2_3 Depth=1
	blt	$a1, $s5, .LBB2_2
# %bb.16:                               # %.preheader2320.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	blt	$a1, $t4, .LBB2_2
# %bb.17:                               # %.preheader2320.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $sp, 656                   # 8-byte Folded Reload
	blt	$a1, $t4, .LBB2_2
# %bb.18:                               # %.preheader2320.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	blt	$a1, $t4, .LBB2_2
# %bb.19:                               # %.preheader2316.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a1, $a3, 4
	move	$s1, $zero
	mul.d	$t2, $a1, $s3
	st.d	$t2, $sp, 1016                  # 8-byte Folded Spill
	ld.w	$a3, $a3, 8
	ld.d	$fp, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 488                   # 8-byte Folded Reload
	mul.d	$t2, $s0, $fp
	st.d	$t2, $sp, 1008                  # 8-byte Folded Spill
	ld.d	$t8, $sp, 656                   # 8-byte Folded Reload
	sub.d	$t2, $t5, $t8
	mul.d	$t2, $t2, $t6
	sub.d	$a2, $a2, $t8
	mul.d	$a0, $a2, $a0
	sub.d	$a2, $t1, $t8
	mul.d	$a2, $a2, $t7
	ld.d	$t1, $sp, 1072                  # 8-byte Folded Reload
	addi.w	$t5, $t1, 0
	ld.d	$t1, $sp, 1064                  # 8-byte Folded Reload
	addi.w	$t1, $t1, 0
	sub.w	$t6, $zero, $s0
	add.d	$a0, $a0, $t0
	nor	$a0, $a0, $zero
	st.d	$a0, $sp, 984                   # 8-byte Folded Spill
	nor	$a0, $t0, $zero
	st.d	$a0, $sp, 976                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 648                   # 8-byte Folded Reload
	alsl.d	$t7, $t0, $a0, 3
	st.d	$t7, $sp, 968                   # 8-byte Folded Spill
	sub.d	$t0, $t1, $t0
	st.d	$t0, $sp, 960                   # 8-byte Folded Spill
	st.d	$t1, $sp, 992                   # 8-byte Folded Spill
	alsl.d	$a0, $t1, $a0, 3
	st.d	$a0, $sp, 952                   # 8-byte Folded Spill
	add.d	$a0, $t2, $s7
	nor	$a0, $a0, $zero
	st.d	$a0, $sp, 944                   # 8-byte Folded Spill
	nor	$a0, $s7, $zero
	st.d	$a0, $sp, 936                   # 8-byte Folded Spill
	add.d	$a0, $a2, $t3
	nor	$a0, $a0, $zero
	st.d	$a0, $sp, 928                   # 8-byte Folded Spill
	nor	$a0, $t3, $zero
	st.d	$a0, $sp, 920                   # 8-byte Folded Spill
	mul.d	$a0, $a3, $s4
	move	$s4, $t6
	sub.d	$a2, $t4, $t8
	mul.d	$a1, $a1, $a2
	slli.d	$s5, $fp, 3
	add.d	$a0, $a0, $a1
	st.d	$t5, $sp, 1000                  # 8-byte Folded Spill
	slli.d	$a1, $t5, 3
	mul.d	$a0, $a0, $s3
	st.d	$a0, $sp, 888                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 696                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 912                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 704                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 904                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB2_20:                               # %.preheader2316.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_21 Depth 3
                                        #         Child Loop BB2_22 Depth 4
	st.d	$s1, $sp, 896                   # 8-byte Folded Spill
	move	$a1, $zero
	.p2align	4, , 16
.LBB2_21:                               # %.preheader2312.us.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_20 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_22 Depth 4
	st.d	$a1, $sp, 1032                  # 8-byte Folded Spill
	move	$s8, $zero
	move	$ra, $zero
	move	$a1, $zero
	move	$t5, $a6
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a6, $a5, $a0, 3
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$t2, $a5, $a0, 3
	ld.d	$a0, $sp, 984                   # 8-byte Folded Reload
	sub.d	$s7, $a0, $a5
	ld.d	$a0, $sp, 976                   # 8-byte Folded Reload
	sub.d	$a5, $a0, $a5
	ld.d	$a3, $sp, 968                   # 8-byte Folded Reload
	alsl.d	$a0, $a4, $a3, 3
	st.d	$a0, $sp, 1144                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a4
	ld.d	$a2, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a2, 3
	st.d	$a0, $sp, 1136                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 992                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a4
	alsl.d	$a0, $a0, $a3, 3
	st.d	$a0, $sp, 1128                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 960                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a4
	ld.d	$a3, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a3, 3
	st.d	$a0, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 952                   # 8-byte Folded Reload
	alsl.d	$t6, $a4, $a0, 3
	ld.d	$a0, $sp, 944                   # 8-byte Folded Reload
	sub.d	$s2, $a0, $a4
	ld.d	$a0, $sp, 936                   # 8-byte Folded Reload
	sub.d	$t7, $a0, $a4
	alsl.d	$a0, $a4, $a3, 3
	st.d	$a0, $sp, 1112                  # 8-byte Folded Spill
	alsl.d	$a0, $a4, $a2, 3
	st.d	$a0, $sp, 1104                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1096                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1088                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1080                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 568                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1072                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1064                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1056                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1048                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 928                   # 8-byte Folded Reload
	sub.d	$a3, $a0, $a7
	ld.d	$a0, $sp, 920                   # 8-byte Folded Reload
	sub.d	$a7, $a0, $a7
	ld.d	$a0, $sp, 1000                  # 8-byte Folded Reload
	add.d	$a4, $a0, $t5
	ld.d	$fp, $sp, 696                   # 8-byte Folded Reload
	alsl.d	$s1, $a4, $fp, 3
	ld.d	$t3, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$t1, $a4, $t3, 3
	ld.d	$a0, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$a0, $a4, $a0, 3
	st.d	$a0, $sp, 1040                  # 8-byte Folded Spill
	ld.d	$t8, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$a2, $a4, $t8, 3
	ld.d	$t0, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$t4, $a4, $t0, 3
	ld.d	$t0, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$t0, $a4, $t0, 3
	alsl.d	$t8, $t5, $t8, 3
	alsl.d	$a4, $t5, $fp, 3
	alsl.d	$fp, $t5, $t3, 3
	ld.d	$t3, $sp, 912                   # 8-byte Folded Reload
	alsl.d	$s0, $t5, $t3, 3
	ld.d	$t3, $sp, 904                   # 8-byte Folded Reload
	st.d	$t5, $sp, 1024                  # 8-byte Folded Spill
	alsl.d	$s3, $t5, $t3, 3
	ld.d	$t3, $sp, 1008                  # 8-byte Folded Reload
	ld.d	$t5, $sp, 640                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_22:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_20 Depth=2
                                        #       Parent Loop BB2_21 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $a6, $a1
	fldx.d	$fa1, $s1, $s8
	ld.d	$s6, $sp, 1128                  # 8-byte Folded Reload
	fldx.d	$fa2, $s6, $a1
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$s6, $sp, 1096                  # 8-byte Folded Reload
	fstx.d	$fa0, $s6, $a1
	fldx.d	$fa0, $a6, $a1
	fldx.d	$fa1, $t1, $s8
	move	$s6, $s5
	move	$s5, $s4
	add.d	$s4, $t6, $a1
	fld.d	$fa2, $s4, 8
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$a0, $sp, 1088                  # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a1
	fldx.d	$fa0, $a6, $a1
	ld.d	$a0, $sp, 1040                  # 8-byte Folded Reload
	fldx.d	$fa1, $a0, $s8
	fldx.d	$fa2, $t6, $a1
	fldx.d	$fa3, $t8, $s8
	fldx.d	$fa4, $a2, $s8
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	ld.d	$a0, $sp, 1080                  # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a1
	fldx.d	$fa0, $a6, $a1
	fldx.d	$fa1, $t4, $s8
	fld.d	$fa2, $s4, -8
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$a0, $sp, 1072                  # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a1
	fldx.d	$fa0, $a6, $a1
	fldx.d	$fa1, $t0, $s8
	ld.d	$s4, $sp, 1120                  # 8-byte Folded Reload
	fldx.d	$fa2, $s4, $a1
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$a0, $sp, 1064                  # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a1
	fldx.d	$fa0, $a4, $s8
	fldx.d	$fa1, $t2, $a1
	fldx.d	$fa2, $s0, $s8
	ld.d	$s4, $sp, 1144                  # 8-byte Folded Reload
	fldx.d	$fa3, $s4, $a1
	fldx.d	$fa4, $a6, $a1
	fldx.d	$fa5, $s1, $s8
	ld.d	$s4, $sp, 1136                  # 8-byte Folded Reload
	fldx.d	$fa6, $s4, $a1
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa1, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	ld.d	$a0, $sp, 1056                  # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a1
	fldx.d	$fa0, $fp, $s8
	fldx.d	$fa1, $t2, $a1
	fldx.d	$fa2, $s3, $s8
	ld.d	$s4, $sp, 1112                  # 8-byte Folded Reload
	add.d	$s4, $s4, $a1
	fld.d	$fa3, $s4, 8
	fldx.d	$fa4, $a6, $a1
	fldx.d	$fa5, $t1, $s8
	ld.d	$s4, $sp, 1104                  # 8-byte Folded Reload
	add.d	$s4, $s4, $a1
	fld.d	$fa6, $s4, 8
	move	$s4, $s5
	move	$s5, $s6
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa1, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	ld.d	$a0, $sp, 1048                  # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a1
	addi.d	$a1, $a1, 8
	addi.d	$s7, $s7, -1
	addi.d	$a5, $a5, -1
	addi.w	$ra, $ra, -1
	addi.d	$s2, $s2, -1
	addi.d	$t7, $t7, -1
	addi.d	$a3, $a3, -1
	addi.d	$a7, $a7, -1
	add.d	$s8, $s8, $s6
	sub.d	$t3, $t3, $t5
	bne	$s4, $ra, .LBB2_22
# %bb.23:                               # %._crit_edge.us.us.us.us.us.us2653
                                        #   in Loop: Header=BB2_21 Depth=3
	sub.w	$a4, $s4, $t7
	sub.w	$a5, $s4, $a5
	ld.d	$a0, $sp, 1016                  # 8-byte Folded Reload
	ld.d	$a2, $sp, 1024                  # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	sub.w	$a6, $a0, $t3
	ld.d	$a1, $sp, 1032                  # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	sub.w	$a7, $s4, $a7
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB2_21
# %bb.24:                               # %._crit_edge2588.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_20 Depth=2
	sub.w	$a4, $s4, $s2
	sub.w	$a5, $s4, $s7
	ld.d	$a0, $sp, 888                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	sub.w	$a6, $a0, $t3
	ld.d	$s1, $sp, 896                   # 8-byte Folded Reload
	addi.w	$s1, $s1, 1
	sub.w	$a7, $s4, $a3
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bne	$s1, $a0, .LBB2_20
	b	.LBB2_2
	.p2align	4, , 16
.LBB2_25:                               #   in Loop: Header=BB2_3 Depth=1
	blt	$a1, $s5, .LBB2_2
# %bb.26:                               # %.preheader2322.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	blt	$a1, $t4, .LBB2_2
# %bb.27:                               # %.preheader2322.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $sp, 656                   # 8-byte Folded Reload
	blt	$a1, $t4, .LBB2_2
# %bb.28:                               # %.preheader2322.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	blt	$a1, $t4, .LBB2_2
# %bb.29:                               # %.preheader2317.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a1, $a3, 4
	move	$s1, $zero
	mul.d	$t2, $a1, $s3
	st.d	$t2, $sp, 904                   # 8-byte Folded Spill
	ld.w	$a3, $a3, 8
	ld.d	$fp, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 488                   # 8-byte Folded Reload
	mul.d	$t2, $s0, $fp
	st.d	$t2, $sp, 896                   # 8-byte Folded Spill
	ld.d	$t8, $sp, 656                   # 8-byte Folded Reload
	sub.d	$t2, $t5, $t8
	mul.d	$t2, $t2, $t6
	sub.d	$a2, $a2, $t8
	mul.d	$a0, $a2, $a0
	sub.d	$a2, $t1, $t8
	mul.d	$a2, $a2, $t7
	ld.d	$t1, $sp, 1072                  # 8-byte Folded Reload
	addi.w	$t5, $t1, 0
	ld.d	$t1, $sp, 1064                  # 8-byte Folded Reload
	addi.w	$t1, $t1, 0
	sub.w	$t6, $zero, $s0
	add.d	$a0, $a0, $t0
	nor	$a0, $a0, $zero
	st.d	$a0, $sp, 872                   # 8-byte Folded Spill
	nor	$a0, $t0, $zero
	st.d	$a0, $sp, 864                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 648                   # 8-byte Folded Reload
	alsl.d	$t7, $t0, $a0, 3
	st.d	$t7, $sp, 856                   # 8-byte Folded Spill
	sub.d	$t0, $t1, $t0
	st.d	$t0, $sp, 848                   # 8-byte Folded Spill
	st.d	$t1, $sp, 880                   # 8-byte Folded Spill
	alsl.d	$a0, $t1, $a0, 3
	st.d	$a0, $sp, 840                   # 8-byte Folded Spill
	add.d	$a0, $t2, $s7
	nor	$a0, $a0, $zero
	st.d	$a0, $sp, 832                   # 8-byte Folded Spill
	nor	$a0, $s7, $zero
	st.d	$a0, $sp, 824                   # 8-byte Folded Spill
	add.d	$a0, $a2, $t3
	nor	$a0, $a0, $zero
	st.d	$a0, $sp, 816                   # 8-byte Folded Spill
	nor	$a0, $t3, $zero
	st.d	$a0, $sp, 808                   # 8-byte Folded Spill
	slli.d	$a0, $fp, 3
	st.d	$a0, $sp, 800                   # 8-byte Folded Spill
	st.d	$t5, $sp, 888                   # 8-byte Folded Spill
	slli.d	$a0, $t5, 3
	mul.d	$a2, $a3, $s4
	sub.d	$a3, $t4, $t8
	mul.d	$a1, $a1, $a3
	ld.d	$a3, $sp, 696                   # 8-byte Folded Reload
	sub.d	$a3, $a3, $a0
	st.d	$a3, $sp, 792                   # 8-byte Folded Spill
	add.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 512                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a0
	st.d	$a2, $sp, 784                   # 8-byte Folded Spill
	mul.d	$a1, $a1, $s3
	st.d	$a1, $sp, 752                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 704                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 776                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	st.d	$a0, $sp, 768                   # 8-byte Folded Spill
	st.d	$t6, $sp, 1144                  # 8-byte Folded Spill
	.p2align	4, , 16
.LBB2_30:                               # %.preheader2317.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_31 Depth 3
                                        #         Child Loop BB2_32 Depth 4
	st.d	$s1, $sp, 760                   # 8-byte Folded Spill
	move	$a2, $zero
	ld.d	$a1, $sp, 664                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_31:                               # %.preheader2313.us.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_30 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_32 Depth 4
	st.d	$a2, $sp, 920                   # 8-byte Folded Spill
	move	$s5, $zero
	move	$s6, $zero
	move	$t4, $zero
	move	$s2, $a6
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a6, $a5, $a0, 3
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$t6, $a5, $a0, 3
	ld.d	$a0, $sp, 872                   # 8-byte Folded Reload
	sub.d	$s4, $a0, $a5
	ld.d	$a0, $sp, 864                   # 8-byte Folded Reload
	sub.d	$a5, $a0, $a5
	ld.d	$a2, $sp, 856                   # 8-byte Folded Reload
	alsl.d	$a0, $a4, $a2, 3
	st.d	$a0, $sp, 1136                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a4
	alsl.d	$a0, $a0, $ra, 3
	st.d	$a0, $sp, 1128                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 880                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a4
	alsl.d	$a0, $a0, $a2, 3
	st.d	$a0, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 848                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a4
	alsl.d	$a0, $a0, $a1, 3
	st.d	$a0, $sp, 1112                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 840                   # 8-byte Folded Reload
	alsl.d	$s3, $a4, $a0, 3
	ld.d	$a0, $sp, 832                   # 8-byte Folded Reload
	sub.d	$s8, $a0, $a4
	ld.d	$a0, $sp, 824                   # 8-byte Folded Reload
	sub.d	$s7, $a0, $a4
	alsl.d	$a0, $a4, $a1, 3
	st.d	$a0, $sp, 1104                  # 8-byte Folded Spill
	alsl.d	$a0, $a4, $ra, 3
	st.d	$a0, $sp, 1096                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1088                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1080                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1072                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 568                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1064                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1056                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1048                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1040                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 816                   # 8-byte Folded Reload
	sub.d	$t5, $a0, $a7
	ld.d	$a0, $sp, 808                   # 8-byte Folded Reload
	sub.d	$a7, $a0, $a7
	ld.d	$a0, $sp, 888                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s2
	ld.d	$s1, $sp, 696                   # 8-byte Folded Reload
	alsl.d	$fp, $a0, $s1, 3
	ld.d	$t0, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $t0, 3
	st.d	$a1, $sp, 1032                  # 8-byte Folded Spill
	ld.d	$s0, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$a3, $a0, $s0, 3
	ld.d	$a2, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a2, 3
	st.d	$a1, $sp, 1024                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 1016                  # 8-byte Folded Spill
	ld.d	$t7, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $t7, 3
	st.d	$a1, $sp, 1008                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 1000                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a1, 3
	st.d	$a4, $sp, 992                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 3
	st.d	$a4, $sp, 984                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$t1, $a0, $a4, 3
	st.d	$t1, $sp, 976                   # 8-byte Folded Spill
	ld.d	$t3, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$t1, $a0, $t3, 3
	st.d	$t1, $sp, 968                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $t1, 3
	st.d	$a0, $sp, 960                   # 8-byte Folded Spill
	alsl.d	$t2, $s2, $t0, 3
	alsl.d	$t8, $s2, $a2, 3
	alsl.d	$a0, $s2, $t7, 3
	st.d	$a0, $sp, 952                   # 8-byte Folded Spill
	alsl.d	$a0, $s2, $a1, 3
	st.d	$a0, $sp, 944                   # 8-byte Folded Spill
	alsl.d	$a0, $s2, $a4, 3
	st.d	$a0, $sp, 936                   # 8-byte Folded Spill
	alsl.d	$a0, $s2, $s1, 3
	st.d	$a0, $sp, 928                   # 8-byte Folded Spill
	alsl.d	$s1, $s2, $t3, 3
	alsl.d	$ra, $s2, $s0, 3
	alsl.d	$a4, $s2, $t1, 3
	ld.d	$a0, $sp, 792                   # 8-byte Folded Reload
	alsl.d	$t3, $s2, $a0, 3
	ld.d	$a0, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a0, 3
	ld.d	$a1, $sp, 776                   # 8-byte Folded Reload
	alsl.d	$t1, $s2, $a1, 3
	ld.d	$a1, $sp, 768                   # 8-byte Folded Reload
	st.d	$s2, $sp, 912                   # 8-byte Folded Spill
	alsl.d	$s0, $s2, $a1, 3
	ld.d	$s2, $sp, 896                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 640                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 800                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_32:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_30 Depth=2
                                        #       Parent Loop BB2_31 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $a6, $t4
	fldx.d	$fa1, $fp, $s5
	ld.d	$a1, $sp, 1032                  # 8-byte Folded Reload
	fldx.d	$fa2, $a1, $s5
	ld.d	$a1, $sp, 1120                  # 8-byte Folded Reload
	fldx.d	$fa3, $a1, $t4
	fldx.d	$fa4, $t2, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a1, $sp, 1088                  # 8-byte Folded Reload
	fstx.d	$fa0, $a1, $t4
	fldx.d	$fa0, $a6, $t4
	fldx.d	$fa1, $a3, $s5
	add.d	$a1, $s3, $t4
	ld.d	$t0, $sp, 1024                  # 8-byte Folded Reload
	fldx.d	$fa2, $t0, $s5
	fld.d	$fa3, $a1, 8
	fldx.d	$fa4, $t8, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t0, $sp, 1080                  # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $t4
	fldx.d	$fa0, $a6, $t4
	ld.d	$t0, $sp, 1016                  # 8-byte Folded Reload
	fldx.d	$fa1, $t0, $s5
	fldx.d	$fa2, $s3, $t4
	ld.d	$t0, $sp, 952                   # 8-byte Folded Reload
	fldx.d	$fa3, $t0, $s5
	ld.d	$t0, $sp, 1008                  # 8-byte Folded Reload
	fldx.d	$fa4, $t0, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	ld.d	$t0, $sp, 1072                  # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $t4
	fldx.d	$fa0, $a6, $t4
	ld.d	$t0, $sp, 1000                  # 8-byte Folded Reload
	fldx.d	$fa1, $t0, $s5
	ld.d	$t0, $sp, 992                   # 8-byte Folded Reload
	fldx.d	$fa2, $t0, $s5
	fld.d	$fa3, $a1, -8
	ld.d	$a1, $sp, 944                   # 8-byte Folded Reload
	fldx.d	$fa4, $a1, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a1, $sp, 1064                  # 8-byte Folded Reload
	fstx.d	$fa0, $a1, $t4
	fldx.d	$fa0, $a6, $t4
	ld.d	$a1, $sp, 984                   # 8-byte Folded Reload
	fldx.d	$fa1, $a1, $s5
	ld.d	$a1, $sp, 976                   # 8-byte Folded Reload
	fldx.d	$fa2, $a1, $s5
	ld.d	$a1, $sp, 1112                  # 8-byte Folded Reload
	fldx.d	$fa3, $a1, $t4
	ld.d	$a1, $sp, 936                   # 8-byte Folded Reload
	fldx.d	$fa4, $a1, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a1, $sp, 1056                  # 8-byte Folded Reload
	fstx.d	$fa0, $a1, $t4
	ld.d	$a1, $sp, 928                   # 8-byte Folded Reload
	fldx.d	$fa0, $a1, $s5
	fldx.d	$fa1, $t6, $t4
	fldx.d	$fa2, $t3, $s5
	ld.d	$a1, $sp, 1136                  # 8-byte Folded Reload
	fldx.d	$fa3, $a1, $t4
	fldx.d	$fa4, $a6, $t4
	fldx.d	$fa5, $fp, $s5
	ld.d	$a1, $sp, 1128                  # 8-byte Folded Reload
	fldx.d	$fa6, $a1, $t4
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fldx.d	$fa2, $s1, $s5
	fldx.d	$fa5, $t2, $s5
	fldx.d	$fa7, $a0, $s5
	ld.d	$a1, $sp, 968                   # 8-byte Folded Reload
	fldx.d	$ft0, $a1, $s5
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$a1, $sp, 1048                  # 8-byte Folded Reload
	fstx.d	$fa0, $a1, $t4
	fldx.d	$fa0, $ra, $s5
	fldx.d	$fa1, $t6, $t4
	fldx.d	$fa2, $t1, $s5
	ld.d	$a1, $sp, 1104                  # 8-byte Folded Reload
	add.d	$a1, $a1, $t4
	fld.d	$fa3, $a1, 8
	fldx.d	$fa4, $a6, $t4
	fldx.d	$fa5, $a3, $s5
	ld.d	$a1, $sp, 1096                  # 8-byte Folded Reload
	add.d	$a1, $a1, $t4
	fld.d	$fa6, $a1, 8
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fldx.d	$fa2, $a4, $s5
	fldx.d	$fa5, $t8, $s5
	fldx.d	$fa7, $s0, $s5
	ld.d	$a1, $sp, 960                   # 8-byte Folded Reload
	fldx.d	$ft0, $a1, $s5
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$a1, $sp, 1040                  # 8-byte Folded Reload
	fstx.d	$fa0, $a1, $t4
	addi.d	$t4, $t4, 8
	addi.d	$s4, $s4, -1
	addi.d	$a5, $a5, -1
	addi.w	$s6, $s6, -1
	addi.d	$s8, $s8, -1
	addi.d	$s7, $s7, -1
	addi.d	$t5, $t5, -1
	addi.d	$a7, $a7, -1
	add.d	$s5, $s5, $t7
	sub.d	$s2, $s2, $a2
	ld.d	$a1, $sp, 1144                  # 8-byte Folded Reload
	bne	$a1, $s6, .LBB2_32
# %bb.33:                               # %._crit_edge.us.us.us.us.us.us2530
                                        #   in Loop: Header=BB2_31 Depth=3
	ld.d	$t6, $sp, 1144                  # 8-byte Folded Reload
	sub.w	$a4, $t6, $s7
	sub.w	$a5, $t6, $a5
	ld.d	$a0, $sp, 904                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 912                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a3
	sub.w	$a6, $a0, $s2
	ld.d	$a2, $sp, 920                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	sub.w	$a7, $t6, $a7
	ld.d	$ra, $sp, 528                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 664                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	bne	$a2, $a0, .LBB2_31
# %bb.34:                               # %._crit_edge2465.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_30 Depth=2
	sub.w	$a4, $t6, $s8
	sub.w	$a5, $t6, $s4
	ld.d	$a0, $sp, 752                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a3
	sub.w	$a6, $a0, $s2
	ld.d	$s1, $sp, 760                   # 8-byte Folded Reload
	addi.w	$s1, $s1, 1
	sub.w	$a7, $t6, $t5
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bne	$s1, $a0, .LBB2_30
	b	.LBB2_2
	.p2align	4, , 16
.LBB2_35:                               #   in Loop: Header=BB2_3 Depth=1
	ori	$t4, $zero, 1
	ld.d	$ra, $sp, 528                   # 8-byte Folded Reload
	blt	$a1, $s5, .LBB2_2
# %bb.36:                               # %.preheader2324.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	blt	$a1, $t4, .LBB2_2
# %bb.37:                               # %.preheader2324.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $sp, 656                   # 8-byte Folded Reload
	blt	$a1, $t4, .LBB2_2
# %bb.38:                               # %.preheader2324.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	blt	$a1, $t4, .LBB2_2
# %bb.39:                               # %.preheader2318.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a1, $a3, 4
	move	$s1, $zero
	mul.d	$t2, $a1, $s3
	st.d	$t2, $sp, 784                   # 8-byte Folded Spill
	ld.w	$a3, $a3, 8
	ld.d	$fp, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 488                   # 8-byte Folded Reload
	mul.d	$t2, $s0, $fp
	st.d	$t2, $sp, 776                   # 8-byte Folded Spill
	ld.d	$t8, $sp, 656                   # 8-byte Folded Reload
	sub.d	$t2, $t5, $t8
	mul.d	$t2, $t2, $t6
	sub.d	$a2, $a2, $t8
	mul.d	$a0, $a2, $a0
	sub.d	$a2, $t1, $t8
	mul.d	$a2, $a2, $t7
	ld.d	$t1, $sp, 1072                  # 8-byte Folded Reload
	addi.w	$t5, $t1, 0
	ld.d	$t1, $sp, 1064                  # 8-byte Folded Reload
	addi.w	$t6, $t1, 0
	add.d	$a0, $t0, $a0
	sub.d	$a0, $a0, $s0
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	sub.d	$a0, $t0, $s0
	st.d	$a0, $sp, 752                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 664                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 648                   # 8-byte Folded Reload
	alsl.d	$a0, $t1, $t0, 3
	st.d	$a0, $sp, 744                   # 8-byte Folded Spill
	addi.d	$a0, $t0, 8
	st.d	$a0, $sp, 736                   # 8-byte Folded Spill
	alsl.d	$a0, $t1, $a0, 3
	st.d	$a0, $sp, 728                   # 8-byte Folded Spill
	mul.d	$a0, $a3, $s4
	sub.d	$a3, $t4, $t8
	mul.d	$a1, $a1, $a3
	add.d	$a0, $a0, $a1
	mul.d	$a0, $a0, $s3
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	sub.d	$a0, $t6, $t1
	st.d	$a0, $sp, 720                   # 8-byte Folded Spill
	st.d	$t5, $sp, 768                   # 8-byte Folded Spill
	slli.d	$a0, $t5, 3
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	slli.d	$a1, $fp, 3
	st.d	$a1, $sp, 400                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 704                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	st.d	$t6, $sp, 760                   # 8-byte Folded Spill
	alsl.d	$a1, $t6, $t0, 3
	st.d	$a1, $sp, 384                   # 8-byte Folded Spill
	add.d	$a1, $s7, $t2
	sub.d	$a1, $a1, $s0
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	sub.d	$a1, $s7, $s0
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	add.d	$a1, $t3, $a2
	sub.d	$a1, $a1, $s0
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	sub.d	$a1, $t3, $s0
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 696                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 536                   # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB2_40:                               # %.preheader2318.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_41 Depth 3
                                        #         Child Loop BB2_42 Depth 4
	st.d	$s1, $sp, 280                   # 8-byte Folded Spill
	move	$a1, $zero
	.p2align	4, , 16
.LBB2_41:                               # %.preheader2314.us.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_40 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_42 Depth 4
	st.d	$a1, $sp, 824                   # 8-byte Folded Spill
	move	$s5, $zero
	move	$s6, $zero
	move	$a3, $zero
	move	$t0, $a4
	move	$t5, $a7
	move	$t3, $a6
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a4, $a5, $a0, 3
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	st.d	$a5, $sp, 808                   # 8-byte Folded Spill
	alsl.d	$a5, $a5, $a0, 3
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t0
	alsl.d	$a0, $a0, $ra, 3
	st.d	$a0, $sp, 1144                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t0
	ld.d	$a1, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$a7, $a0, $a1, 3
	ld.d	$a0, $sp, 720                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t0
	ld.d	$a1, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$s8, $a0, $a1, 3
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a6
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	st.d	$a1, $sp, 712                   # 8-byte Folded Spill
	alsl.d	$t6, $a0, $a1, 3
	ld.d	$s4, $sp, 696                   # 8-byte Folded Reload
	alsl.d	$t7, $a0, $s4, 3
	ld.d	$t8, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $t8, 3
	st.d	$a1, $sp, 1136                  # 8-byte Folded Spill
	ld.d	$fp, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$s3, $a0, $fp, 3
	ld.d	$s2, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$t2, $a0, $s2, 3
	ld.d	$t4, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $t4, 3
	st.d	$a1, $sp, 1128                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$s7, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $s7, 3
	st.d	$a1, $sp, 1112                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 1104                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a1, 3
	st.d	$a2, $sp, 1096                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	st.d	$a2, $sp, 1088                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	st.d	$a2, $sp, 1080                  # 8-byte Folded Spill
	ld.d	$s1, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $s1, 3
	st.d	$a2, $sp, 1072                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	st.d	$a2, $sp, 1064                  # 8-byte Folded Spill
	ld.d	$s0, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $s0, 3
	st.d	$a2, $sp, 1056                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a2, 3
	st.d	$a0, $sp, 1048                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t0
	st.d	$a0, $sp, 1040                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$a0, $t0, $a0, 3
	st.d	$a0, $sp, 1032                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a0, $a6, $a0, 3
	st.d	$a0, $sp, 1024                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a0, $a6, $a0, 3
	st.d	$a0, $sp, 1016                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a6, $t0, $a0, 3
	ld.d	$t1, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$a0, $t0, $t1, 3
	st.d	$a0, $sp, 1008                  # 8-byte Folded Spill
	st.d	$t0, $sp, 792                   # 8-byte Folded Spill
	alsl.d	$a0, $t0, $ra, 3
	st.d	$a0, $sp, 1000                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$a0, $t5, $a0, 3
	st.d	$a0, $sp, 992                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a0, $t5, $a0, 3
	st.d	$a0, $sp, 984                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a0, $t5, $a0, 3
	st.d	$a0, $sp, 976                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$a0, $t5, $a0, 3
	st.d	$a0, $sp, 968                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a0, $t5, $a0, 3
	st.d	$a0, $sp, 960                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 568                   # 8-byte Folded Reload
	alsl.d	$a0, $t5, $a0, 3
	st.d	$a0, $sp, 952                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$a0, $t5, $a0, 3
	st.d	$a0, $sp, 944                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$a0, $t5, $a0, 3
	st.d	$a0, $sp, 936                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$a0, $t5, $a0, 3
	st.d	$a0, $sp, 928                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	alsl.d	$a0, $t5, $a0, 3
	st.d	$a0, $sp, 920                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$a0, $t5, $a0, 3
	st.d	$a0, $sp, 912                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$a0, $t5, $a0, 3
	st.d	$a0, $sp, 904                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	st.d	$t5, $sp, 816                   # 8-byte Folded Spill
	alsl.d	$a0, $t5, $a0, 3
	st.d	$a0, $sp, 896                   # 8-byte Folded Spill
	alsl.d	$t8, $t3, $t8, 3
	alsl.d	$t5, $t3, $t4, 3
	alsl.d	$a0, $t3, $s7, 3
	st.d	$a0, $sp, 888                   # 8-byte Folded Spill
	alsl.d	$a0, $t3, $a1, 3
	st.d	$a0, $sp, 880                   # 8-byte Folded Spill
	alsl.d	$a0, $t3, $s1, 3
	st.d	$a0, $sp, 872                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$a0, $t3, $a0, 3
	st.d	$a0, $sp, 864                   # 8-byte Folded Spill
	alsl.d	$a0, $t3, $s4, 3
	st.d	$a0, $sp, 856                   # 8-byte Folded Spill
	alsl.d	$a0, $t3, $s0, 3
	st.d	$a0, $sp, 848                   # 8-byte Folded Spill
	alsl.d	$a0, $t3, $fp, 3
	st.d	$a0, $sp, 840                   # 8-byte Folded Spill
	alsl.d	$a0, $t3, $s2, 3
	st.d	$a0, $sp, 832                   # 8-byte Folded Spill
	alsl.d	$s2, $t3, $a2, 3
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$s4, $t3, $a0, 3
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a1, $t3, $a0, 3
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$s0, $t3, $a0, 3
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	st.d	$t3, $sp, 800                   # 8-byte Folded Spill
	alsl.d	$a0, $t3, $a0, 3
	ld.d	$s1, $sp, 776                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 640                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 400                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_42:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_40 Depth=2
                                        #       Parent Loop BB2_41 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $a4, $s6
	fldx.d	$fa1, $t6, $s5
	fldx.d	$fa2, $a7, $s6
	fmul.d	$fa0, $fa0, $fa1
	add.d	$a2, $a7, $s6
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$t0, $sp, 992                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $s6
	fldx.d	$fa0, $a4, $s6
	fldx.d	$fa1, $t7, $s5
	ld.d	$t0, $sp, 1136                  # 8-byte Folded Reload
	fldx.d	$fa2, $t0, $s5
	fld.d	$fa3, $a2, -8
	fldx.d	$fa4, $t8, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t0, $sp, 984                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $s6
	fldx.d	$fa0, $a4, $s6
	fldx.d	$fa1, $s3, $s5
	fld.d	$fa2, $a2, -16
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$a2, $sp, 976                   # 8-byte Folded Reload
	fstx.d	$fa0, $a2, $s6
	fldx.d	$fa0, $a4, $s6
	fldx.d	$fa1, $t2, $s5
	add.d	$a2, $a6, $s6
	ld.d	$t0, $sp, 1128                  # 8-byte Folded Reload
	fldx.d	$fa2, $t0, $s5
	fld.d	$fa3, $a2, 8
	fldx.d	$fa4, $t5, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t0, $sp, 968                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $s6
	fldx.d	$fa0, $a4, $s6
	ld.d	$t0, $sp, 1120                  # 8-byte Folded Reload
	fldx.d	$fa1, $t0, $s5
	fldx.d	$fa2, $a6, $s6
	ld.d	$t0, $sp, 888                   # 8-byte Folded Reload
	fldx.d	$fa3, $t0, $s5
	ld.d	$t0, $sp, 1112                  # 8-byte Folded Reload
	fldx.d	$fa4, $t0, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	ld.d	$t0, $sp, 960                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $s6
	fldx.d	$fa0, $a4, $s6
	ld.d	$t0, $sp, 1104                  # 8-byte Folded Reload
	fldx.d	$fa1, $t0, $s5
	ld.d	$t0, $sp, 1096                  # 8-byte Folded Reload
	fldx.d	$fa2, $t0, $s5
	fld.d	$fa3, $a2, -8
	ld.d	$a2, $sp, 880                   # 8-byte Folded Reload
	fldx.d	$fa4, $a2, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a2, $sp, 952                   # 8-byte Folded Reload
	fstx.d	$fa0, $a2, $s6
	fldx.d	$fa0, $a4, $s6
	ld.d	$a2, $sp, 1088                  # 8-byte Folded Reload
	fldx.d	$fa1, $a2, $s5
	fldx.d	$fa2, $s8, $s6
	fmul.d	$fa0, $fa0, $fa1
	add.d	$a2, $s8, $s6
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$t0, $sp, 944                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $s6
	fldx.d	$fa0, $a4, $s6
	ld.d	$t0, $sp, 1080                  # 8-byte Folded Reload
	fldx.d	$fa1, $t0, $s5
	ld.d	$t0, $sp, 1072                  # 8-byte Folded Reload
	fldx.d	$fa2, $t0, $s5
	fld.d	$fa3, $a2, -8
	ld.d	$t0, $sp, 872                   # 8-byte Folded Reload
	fldx.d	$fa4, $t0, $s5
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t0, $sp, 936                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $s6
	fldx.d	$fa0, $a4, $s6
	ld.d	$t0, $sp, 1064                  # 8-byte Folded Reload
	fldx.d	$fa1, $t0, $s5
	fld.d	$fa2, $a2, -16
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$a2, $sp, 928                   # 8-byte Folded Reload
	fstx.d	$fa0, $a2, $s6
	ld.d	$a2, $sp, 1040                  # 8-byte Folded Reload
	add.w	$a2, $a2, $a3
	addi.w	$t0, $a2, 2
	ld.d	$fp, $sp, 864                   # 8-byte Folded Reload
	fldx.d	$fa0, $fp, $s5
	fldx.d	$fa1, $a5, $s6
	fldx.d	$fa2, $s4, $s5
	slli.d	$t0, $t0, 3
	fldx.d	$fa3, $t1, $t0
	fldx.d	$fa4, $a4, $s6
	fldx.d	$fa5, $t6, $s5
	fldx.d	$fa6, $ra, $t0
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa1, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	ld.d	$t0, $sp, 920                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $s6
	ld.d	$t0, $sp, 856                   # 8-byte Folded Reload
	fldx.d	$fa0, $t0, $s5
	fldx.d	$fa1, $a5, $s6
	fldx.d	$fa2, $a1, $s5
	ld.d	$t0, $sp, 1032                  # 8-byte Folded Reload
	fldx.d	$fa3, $t0, $s6
	fldx.d	$fa4, $a4, $s6
	fldx.d	$fa5, $t7, $s5
	ld.d	$t0, $sp, 1144                  # 8-byte Folded Reload
	fldx.d	$fa6, $t0, $s6
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	ld.d	$t0, $sp, 848                   # 8-byte Folded Reload
	fldx.d	$fa2, $t0, $s5
	fldx.d	$fa5, $t8, $s5
	fldx.d	$fa7, $s0, $s5
	ld.d	$t0, $sp, 1056                  # 8-byte Folded Reload
	fldx.d	$ft0, $t0, $s5
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$t0, $sp, 912                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $s6
	ld.d	$t0, $sp, 840                   # 8-byte Folded Reload
	fldx.d	$fa0, $t0, $s5
	fldx.d	$fa1, $a5, $s6
	fldx.d	$fa2, $a0, $s5
	slli.d	$a2, $a2, 3
	fldx.d	$fa3, $t1, $a2
	fldx.d	$fa4, $a4, $s6
	fldx.d	$fa5, $s3, $s5
	fldx.d	$fa6, $ra, $a2
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa1, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	ld.d	$a2, $sp, 904                   # 8-byte Folded Reload
	fstx.d	$fa0, $a2, $s6
	ld.d	$a2, $sp, 832                   # 8-byte Folded Reload
	fldx.d	$fa0, $a2, $s5
	fldx.d	$fa1, $a5, $s6
	ld.d	$a2, $sp, 1016                  # 8-byte Folded Reload
	fldx.d	$fa2, $a2, $s5
	ld.d	$a2, $sp, 1008                  # 8-byte Folded Reload
	add.d	$a2, $a2, $s6
	fld.d	$fa3, $a2, 8
	fldx.d	$fa4, $a4, $s6
	fldx.d	$fa5, $t2, $s5
	ld.d	$a2, $sp, 1000                  # 8-byte Folded Reload
	add.d	$a2, $a2, $s6
	fld.d	$fa6, $a2, 8
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fldx.d	$fa2, $s2, $s5
	fldx.d	$fa5, $t5, $s5
	ld.d	$a2, $sp, 1024                  # 8-byte Folded Reload
	fldx.d	$fa7, $a2, $s5
	ld.d	$a2, $sp, 1048                  # 8-byte Folded Reload
	fldx.d	$ft0, $a2, $s5
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$a2, $sp, 896                   # 8-byte Folded Reload
	fstx.d	$fa0, $a2, $s6
	addi.w	$a3, $a3, 1
	addi.d	$s6, $s6, 8
	sub.d	$s1, $s1, $t3
	add.d	$s5, $s5, $s7
	bne	$t4, $a3, .LBB2_42
# %bb.43:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_41 Depth=3
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 792                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t2
	add.d	$a0, $a0, $a3
	addi.w	$a4, $a0, 1
	ld.d	$a0, $sp, 752                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 808                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t0
	add.d	$a0, $a0, $a3
	addi.w	$a5, $a0, 1
	ld.d	$a0, $sp, 784                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 800                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t1
	sub.w	$a6, $a0, $s1
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 816                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a3
	ld.d	$a1, $sp, 824                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	addi.w	$a7, $a0, 1
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB2_41
# %bb.44:                               # %._crit_edge2346.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_40 Depth=2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t2
	add.w	$a4, $a0, $a3
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t0
	add.w	$a5, $a0, $a3
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t1
	sub.w	$a6, $a0, $s1
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	ld.d	$s1, $sp, 280                   # 8-byte Folded Reload
	addi.w	$s1, $s1, 1
	add.w	$a7, $a0, $a3
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bne	$s1, $a0, .LBB2_40
	b	.LBB2_2
	.p2align	4, , 16
.LBB2_45:                               #   in Loop: Header=BB2_3 Depth=1
	blt	$a1, $s5, .LBB2_2
# %bb.46:                               # %.preheader2319.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	blt	$a1, $t4, .LBB2_2
# %bb.47:                               # %.preheader2319.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $sp, 656                   # 8-byte Folded Reload
	blt	$a1, $t4, .LBB2_2
# %bb.48:                               # %.preheader2319.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	blt	$a1, $t4, .LBB2_2
# %bb.49:                               # %.preheader2315.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a1, $a3, 4
	move	$s1, $zero
	mul.d	$t2, $a1, $s3
	st.d	$t2, $sp, 320                   # 8-byte Folded Spill
	ld.w	$a3, $a3, 8
	ld.d	$fp, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 488                   # 8-byte Folded Reload
	mul.d	$t2, $s0, $fp
	st.d	$t2, $sp, 312                   # 8-byte Folded Spill
	ld.d	$t8, $sp, 656                   # 8-byte Folded Reload
	sub.d	$t2, $t5, $t8
	mul.d	$t2, $t2, $t6
	sub.d	$a2, $a2, $t8
	mul.d	$a0, $a2, $a0
	sub.d	$a2, $t1, $t8
	mul.d	$a2, $a2, $t7
	ld.d	$t1, $sp, 1072                  # 8-byte Folded Reload
	addi.w	$t5, $t1, 0
	ld.d	$t1, $sp, 1064                  # 8-byte Folded Reload
	addi.w	$t6, $t1, 0
	add.d	$a0, $t0, $a0
	sub.d	$a0, $a0, $s0
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	sub.d	$a0, $t0, $s0
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 664                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 648                   # 8-byte Folded Reload
	alsl.d	$a0, $t1, $t0, 3
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	addi.d	$a0, $t0, 8
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	alsl.d	$a0, $t1, $a0, 3
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	mul.d	$a0, $a3, $s4
	sub.d	$a3, $t4, $t8
	mul.d	$a1, $a1, $a3
	add.d	$a0, $a0, $a1
	mul.d	$a0, $a0, $s3
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	sub.d	$a0, $t6, $t1
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	st.d	$t5, $sp, 304                   # 8-byte Folded Spill
	slli.d	$a0, $t5, 3
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	slli.d	$a1, $fp, 3
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 704                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	st.d	$t6, $sp, 296                   # 8-byte Folded Spill
	alsl.d	$a1, $t6, $t0, 3
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	add.d	$a1, $s7, $t2
	sub.d	$a1, $a1, $s0
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	sub.d	$a1, $s7, $s0
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	add.d	$a1, $t3, $a2
	sub.d	$a1, $a1, $s0
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	sub.d	$a1, $t3, $s0
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 696                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 536                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB2_50:                               # %.preheader2315.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_51 Depth 3
                                        #         Child Loop BB2_52 Depth 4
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	move	$a2, $zero
	.p2align	4, , 16
.LBB2_51:                               # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_50 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_52 Depth 4
	st.d	$a2, $sp, 408                   # 8-byte Folded Spill
	move	$t1, $zero
	move	$t2, $zero
	move	$a0, $zero
	move	$t0, $a5
	move	$t5, $a4
	ld.d	$a1, $sp, 648                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a4
	alsl.d	$a1, $a1, $ra, 3
	st.d	$a1, $sp, 1144                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a4
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a5, $a1, $a2, 3
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a4
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$t4, $a1, $a2, 3
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a6
	ld.d	$a2, $sp, 712                   # 8-byte Folded Reload
	st.d	$a2, $sp, 712                   # 8-byte Folded Spill
	alsl.d	$s4, $a1, $a2, 3
	ld.d	$fp, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $fp, 3
	st.d	$a2, $sp, 1136                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 696                   # 8-byte Folded Reload
	alsl.d	$t3, $a1, $a2, 3
	ld.d	$s6, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $s6, 3
	st.d	$a2, $sp, 1128                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 536                   # 8-byte Folded Reload
	st.d	$a2, $sp, 536                   # 8-byte Folded Spill
	alsl.d	$t6, $a1, $a2, 3
	ld.d	$s2, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $s2, 3
	st.d	$a2, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$t8, $a1, $a2, 3
	ld.d	$ra, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $ra, 3
	st.d	$a2, $sp, 1112                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	st.d	$a2, $sp, 1104                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	st.d	$a2, $sp, 1096                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	st.d	$a2, $sp, 1088                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 680                   # 8-byte Folded Reload
	st.d	$a2, $sp, 680                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $a2, 3
	st.d	$a2, $sp, 1080                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a3, 3
	st.d	$a2, $sp, 1072                  # 8-byte Folded Spill
	ld.d	$s3, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $s3, 3
	st.d	$a2, $sp, 1064                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a3, 3
	st.d	$a2, $sp, 1056                  # 8-byte Folded Spill
	ld.d	$t7, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$a3, $a1, $t7, 3
	st.d	$a3, $sp, 1048                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a3, 3
	st.d	$a3, $sp, 1040                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a4, $a1, $a3, 3
	st.d	$a4, $sp, 1032                  # 8-byte Folded Spill
	ld.d	$s1, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$a4, $a1, $s1, 3
	st.d	$a4, $sp, 1024                  # 8-byte Folded Spill
	ld.d	$s7, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$a4, $a1, $s7, 3
	st.d	$a4, $sp, 1016                  # 8-byte Folded Spill
	ld.d	$s8, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a4, $a1, $s8, 3
	st.d	$a4, $sp, 1008                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 672                   # 8-byte Folded Reload
	st.d	$a2, $sp, 672                   # 8-byte Folded Spill
	alsl.d	$a1, $a1, $a2, 3
	st.d	$a1, $sp, 1000                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a4, $t0, $a1, 3
	ld.d	$a1, $sp, 624                   # 8-byte Folded Reload
	st.d	$t0, $sp, 392                   # 8-byte Folded Spill
	alsl.d	$s0, $t0, $a1, 3
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t5
	st.d	$a1, $sp, 992                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$a1, $t5, $a1, 3
	st.d	$a1, $sp, 984                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	st.d	$a1, $sp, 976                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	st.d	$a1, $sp, 968                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$s5, $t5, $a1, 3
	ld.d	$t0, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$a1, $t5, $t0, 3
	st.d	$a1, $sp, 960                   # 8-byte Folded Spill
	st.d	$t5, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$a1, $t5, $a2, 3
	st.d	$a1, $sp, 952                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 944                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 936                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 928                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 920                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 912                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 568                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 904                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 896                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 888                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 880                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 872                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 864                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 856                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	st.d	$a7, $sp, 400                   # 8-byte Folded Spill
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 848                   # 8-byte Folded Spill
	alsl.d	$fp, $a6, $fp, 3
	alsl.d	$s6, $a6, $s6, 3
	alsl.d	$s2, $a6, $s2, 3
	move	$t5, $a2
	alsl.d	$ra, $a6, $ra, 3
	ld.d	$a1, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	st.d	$a1, $sp, 840                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	st.d	$a1, $sp, 832                   # 8-byte Folded Spill
	alsl.d	$a1, $a6, $s3, 3
	st.d	$a1, $sp, 824                   # 8-byte Folded Spill
	alsl.d	$a1, $a6, $t7, 3
	st.d	$a1, $sp, 816                   # 8-byte Folded Spill
	alsl.d	$a1, $a6, $a3, 3
	st.d	$a1, $sp, 808                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	st.d	$a1, $sp, 800                   # 8-byte Folded Spill
	alsl.d	$a1, $a6, $s1, 3
	st.d	$a1, $sp, 792                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 696                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	st.d	$a1, $sp, 784                   # 8-byte Folded Spill
	alsl.d	$a1, $a6, $s7, 3
	st.d	$a1, $sp, 776                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	st.d	$a1, $sp, 768                   # 8-byte Folded Spill
	alsl.d	$a1, $a6, $s8, 3
	st.d	$a1, $sp, 760                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	st.d	$a1, $sp, 752                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	st.d	$a1, $sp, 744                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	st.d	$a1, $sp, 736                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	st.d	$a1, $sp, 728                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	st.d	$a1, $sp, 720                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$a2, $a6, $a1, 3
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	st.d	$a6, $sp, 384                   # 8-byte Folded Spill
	alsl.d	$a6, $a6, $a3, 3
	ld.d	$s7, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 488                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_52:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_50 Depth=2
                                        #       Parent Loop BB2_51 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $a4, $t2
	fldx.d	$fa1, $s4, $t1
	fmul.d	$fa1, $fa0, $fa1
	ld.d	$t7, $sp, 1136                  # 8-byte Folded Reload
	fldx.d	$fa2, $t7, $t1
	fldx.d	$fa3, $a5, $t2
	fldx.d	$fa4, $fp, $t1
	add.d	$t7, $a5, $t2
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$s3, $sp, 944                   # 8-byte Folded Reload
	fstx.d	$fa0, $s3, $t2
	fldx.d	$fa0, $a4, $t2
	fldx.d	$fa1, $t3, $t1
	ld.d	$s3, $sp, 1128                  # 8-byte Folded Reload
	fldx.d	$fa2, $s3, $t1
	fld.d	$fa3, $t7, -8
	fldx.d	$fa4, $s6, $t1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$s3, $sp, 936                   # 8-byte Folded Reload
	fstx.d	$fa0, $s3, $t2
	fldx.d	$fa0, $a4, $t2
	fldx.d	$fa1, $t6, $t1
	ld.d	$s3, $sp, 1120                  # 8-byte Folded Reload
	fldx.d	$fa2, $s3, $t1
	fld.d	$fa3, $t7, -16
	fldx.d	$fa4, $s2, $t1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t7, $sp, 928                   # 8-byte Folded Reload
	fstx.d	$fa0, $t7, $t2
	fldx.d	$fa0, $a4, $t2
	fldx.d	$fa1, $t8, $t1
	add.d	$t7, $s5, $t2
	ld.d	$s3, $sp, 1112                  # 8-byte Folded Reload
	fldx.d	$fa2, $s3, $t1
	fld.d	$fa3, $t7, 8
	fldx.d	$fa4, $ra, $t1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$s3, $sp, 920                   # 8-byte Folded Reload
	fstx.d	$fa0, $s3, $t2
	fldx.d	$fa0, $a4, $t2
	ld.d	$s3, $sp, 1104                  # 8-byte Folded Reload
	fldx.d	$fa1, $s3, $t1
	fldx.d	$fa2, $s5, $t2
	ld.d	$s3, $sp, 840                   # 8-byte Folded Reload
	fldx.d	$fa3, $s3, $t1
	ld.d	$s3, $sp, 1096                  # 8-byte Folded Reload
	fldx.d	$fa4, $s3, $t1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	ld.d	$s3, $sp, 912                   # 8-byte Folded Reload
	fstx.d	$fa0, $s3, $t2
	fldx.d	$fa0, $a4, $t2
	ld.d	$s3, $sp, 1088                  # 8-byte Folded Reload
	fldx.d	$fa1, $s3, $t1
	ld.d	$s3, $sp, 1080                  # 8-byte Folded Reload
	fldx.d	$fa2, $s3, $t1
	fld.d	$fa3, $t7, -8
	ld.d	$t7, $sp, 832                   # 8-byte Folded Reload
	fldx.d	$fa4, $t7, $t1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t7, $sp, 904                   # 8-byte Folded Reload
	fstx.d	$fa0, $t7, $t2
	fldx.d	$fa0, $a4, $t2
	ld.d	$t7, $sp, 1072                  # 8-byte Folded Reload
	fldx.d	$fa1, $t7, $t1
	fmul.d	$fa1, $fa0, $fa1
	ld.d	$t7, $sp, 1064                  # 8-byte Folded Reload
	fldx.d	$fa2, $t7, $t1
	fldx.d	$fa3, $t4, $t2
	ld.d	$t7, $sp, 824                   # 8-byte Folded Reload
	fldx.d	$fa4, $t7, $t1
	add.d	$t7, $t4, $t2
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$s3, $sp, 896                   # 8-byte Folded Reload
	fstx.d	$fa0, $s3, $t2
	fldx.d	$fa0, $a4, $t2
	ld.d	$s3, $sp, 1056                  # 8-byte Folded Reload
	fldx.d	$fa1, $s3, $t1
	ld.d	$s3, $sp, 1048                  # 8-byte Folded Reload
	fldx.d	$fa2, $s3, $t1
	fld.d	$fa3, $t7, -8
	ld.d	$s3, $sp, 816                   # 8-byte Folded Reload
	fldx.d	$fa4, $s3, $t1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$s3, $sp, 888                   # 8-byte Folded Reload
	fstx.d	$fa0, $s3, $t2
	fldx.d	$fa0, $a4, $t2
	ld.d	$s3, $sp, 1040                  # 8-byte Folded Reload
	fldx.d	$fa1, $s3, $t1
	ld.d	$s3, $sp, 1032                  # 8-byte Folded Reload
	fldx.d	$fa2, $s3, $t1
	fld.d	$fa3, $t7, -16
	ld.d	$t7, $sp, 808                   # 8-byte Folded Reload
	fldx.d	$fa4, $t7, $t1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t7, $sp, 880                   # 8-byte Folded Reload
	fstx.d	$fa0, $t7, $t2
	ld.d	$t7, $sp, 992                   # 8-byte Folded Reload
	add.w	$t7, $t7, $a0
	addi.w	$s3, $t7, 2
	ld.d	$a7, $sp, 800                   # 8-byte Folded Reload
	fldx.d	$fa0, $a7, $t1
	fldx.d	$fa1, $s0, $t2
	ld.d	$a7, $sp, 736                   # 8-byte Folded Reload
	fldx.d	$fa2, $a7, $t1
	slli.d	$s3, $s3, 3
	fldx.d	$fa3, $t0, $s3
	fldx.d	$fa4, $a4, $t2
	fldx.d	$fa5, $s4, $t1
	fldx.d	$fa6, $t5, $s3
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	ld.d	$a7, $sp, 792                   # 8-byte Folded Reload
	fldx.d	$fa2, $a7, $t1
	fldx.d	$fa5, $fp, $t1
	ld.d	$a7, $sp, 728                   # 8-byte Folded Reload
	fldx.d	$fa7, $a7, $t1
	ld.d	$s3, $sp, 1024                  # 8-byte Folded Reload
	fldx.d	$ft0, $s3, $t1
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$s3, $sp, 872                   # 8-byte Folded Reload
	fstx.d	$fa0, $s3, $t2
	ld.d	$a7, $sp, 784                   # 8-byte Folded Reload
	fldx.d	$fa0, $a7, $t1
	fldx.d	$fa1, $s0, $t2
	ld.d	$a7, $sp, 720                   # 8-byte Folded Reload
	fldx.d	$fa2, $a7, $t1
	ld.d	$s3, $sp, 984                   # 8-byte Folded Reload
	fldx.d	$fa3, $s3, $t2
	fldx.d	$fa4, $a4, $t2
	fldx.d	$fa5, $t3, $t1
	ld.d	$s3, $sp, 1144                  # 8-byte Folded Reload
	fldx.d	$fa6, $s3, $t2
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	ld.d	$a7, $sp, 776                   # 8-byte Folded Reload
	fldx.d	$fa2, $a7, $t1
	fldx.d	$fa5, $s6, $t1
	fldx.d	$fa7, $a2, $t1
	ld.d	$s3, $sp, 1016                  # 8-byte Folded Reload
	fldx.d	$ft0, $s3, $t1
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$s3, $sp, 864                   # 8-byte Folded Reload
	fstx.d	$fa0, $s3, $t2
	ld.d	$a7, $sp, 768                   # 8-byte Folded Reload
	fldx.d	$fa0, $a7, $t1
	fldx.d	$fa1, $s0, $t2
	fldx.d	$fa2, $a1, $t1
	slli.d	$t7, $t7, 3
	fldx.d	$fa3, $t0, $t7
	fldx.d	$fa4, $a4, $t2
	fldx.d	$fa5, $t6, $t1
	fldx.d	$fa6, $t5, $t7
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	ld.d	$a7, $sp, 760                   # 8-byte Folded Reload
	fldx.d	$fa2, $a7, $t1
	fldx.d	$fa5, $s2, $t1
	fldx.d	$fa7, $a6, $t1
	ld.d	$t7, $sp, 1008                  # 8-byte Folded Reload
	fldx.d	$ft0, $t7, $t1
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$t7, $sp, 856                   # 8-byte Folded Reload
	fstx.d	$fa0, $t7, $t2
	ld.d	$a7, $sp, 752                   # 8-byte Folded Reload
	fldx.d	$fa0, $a7, $t1
	fldx.d	$fa1, $s0, $t2
	ld.d	$t7, $sp, 968                   # 8-byte Folded Reload
	fldx.d	$fa2, $t7, $t1
	ld.d	$t7, $sp, 960                   # 8-byte Folded Reload
	add.d	$t7, $t7, $t2
	fld.d	$fa3, $t7, 8
	fldx.d	$fa4, $a4, $t2
	fldx.d	$fa5, $t8, $t1
	ld.d	$t7, $sp, 952                   # 8-byte Folded Reload
	add.d	$t7, $t7, $t2
	fld.d	$fa6, $t7, 8
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	ld.d	$a7, $sp, 744                   # 8-byte Folded Reload
	fldx.d	$fa2, $a7, $t1
	fldx.d	$fa5, $ra, $t1
	ld.d	$t7, $sp, 976                   # 8-byte Folded Reload
	fldx.d	$fa7, $t7, $t1
	ld.d	$t7, $sp, 1000                  # 8-byte Folded Reload
	fldx.d	$ft0, $t7, $t1
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$t7, $sp, 848                   # 8-byte Folded Reload
	fstx.d	$fa0, $t7, $t2
	addi.w	$a0, $a0, 1
	addi.d	$t2, $t2, 8
	sub.d	$s7, $s7, $s1
	add.d	$t1, $t1, $a3
	bne	$s8, $a0, .LBB2_52
# %bb.53:                               # %._crit_edge.us.us.us.us.us.us2779
                                        #   in Loop: Header=BB2_51 Depth=3
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 376                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t2
	add.d	$a1, $a1, $a0
	addi.w	$a4, $a1, 1
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 392                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t0
	add.d	$a1, $a1, $a0
	addi.w	$a5, $a1, 1
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 384                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t1
	sub.w	$a6, $a1, $s7
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 400                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a3
	add.d	$a1, $a1, $a0
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	addi.w	$a7, $a1, 1
	move	$ra, $t5
	ld.d	$a1, $sp, 656                   # 8-byte Folded Reload
	bne	$a2, $a1, .LBB2_51
# %bb.54:                               # %._crit_edge2713.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_50 Depth=2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t2
	add.w	$a4, $a1, $a0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t0
	add.w	$a5, $a1, $a0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t1
	sub.w	$a6, $a1, $s7
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a3
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	addi.w	$s1, $s1, 1
	add.w	$a7, $a1, $a0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bne	$s1, $a0, .LBB2_50
	b	.LBB2_2
.LBB2_55:                               #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$a2, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1064                  # 8-byte Folded Reload
	ori	$s1, $zero, 1
	b	.LBB2_10
.LBB2_56:                               # %._crit_edge
	move	$a0, $zero
	ld.d	$s8, $sp, 1192                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1200                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1208                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1216                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1224                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1232                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1240                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1248                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1256                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1264                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1272                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1280
	ret
.Lfunc_end2:
	.size	hypre_SMG3BuildRAPNoSym, .Lfunc_end2-hypre_SMG3BuildRAPNoSym
                                        # -- End function
	.globl	hypre_SMG3RAPPeriodicSym        # -- Begin function hypre_SMG3RAPPeriodicSym
	.p2align	5
	.type	hypre_SMG3RAPPeriodicSym,@function
hypre_SMG3RAPPeriodicSym:               # @hypre_SMG3RAPPeriodicSym
# %bb.0:
	addi.d	$sp, $sp, -496
	st.d	$ra, $sp, 488                   # 8-byte Folded Spill
	st.d	$fp, $sp, 480                   # 8-byte Folded Spill
	st.d	$s0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s1, $sp, 464                   # 8-byte Folded Spill
	st.d	$s2, $sp, 456                   # 8-byte Folded Spill
	st.d	$s3, $sp, 448                   # 8-byte Folded Spill
	st.d	$s4, $sp, 440                   # 8-byte Folded Spill
	st.d	$s5, $sp, 432                   # 8-byte Folded Spill
	st.d	$s6, $sp, 424                   # 8-byte Folded Spill
	st.d	$s7, $sp, 416                   # 8-byte Folded Spill
	st.d	$s8, $sp, 408                   # 8-byte Folded Spill
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a2, $a0, 8
	ld.w	$a1, $a2, 64
	ori	$fp, $zero, 1
	bne	$a1, $fp, .LBB3_107
# %bb.1:                                # %.split
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 24
	ld.w	$a1, $a1, 8
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	ld.d	$s0, $a2, 8
	pcaddu18i	$ra, %call36(hypre_StructMatrixAssemble)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 8
	blt	$a0, $fp, .LBB3_107
# %bb.2:                                # %.lr.ph
	move	$a1, $s0
	move	$s0, $zero
	ori	$a0, $zero, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, 1
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	addi.w	$a2, $zero, -1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	lu32i.d	$a2, 0
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	xvrepli.b	$xr5, 0
	ori	$s7, $zero, 16
	lu52i.d	$a0, $zero, 1024
	xvreplgr2vr.d	$xr7, $a0
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r26
                                        # implicit-def: $r27
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	xvst	$xr5, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr7, $sp, 0                    # 32-byte Folded Spill
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %.loopexit718
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 8
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	addi.d	$s0, $s0, 1
	bge	$s0, $a0, .LBB3_107
.LBB3_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_12 Depth 2
                                        #       Child Loop BB3_13 Depth 3
                                        #         Child Loop BB3_38 Depth 4
                                        #         Child Loop BB3_17 Depth 4
                                        #     Child Loop BB3_55 Depth 2
                                        #       Child Loop BB3_57 Depth 3
                                        #         Child Loop BB3_60 Depth 4
                                        #         Child Loop BB3_63 Depth 4
                                        #     Child Loop BB3_71 Depth 2
                                        #       Child Loop BB3_72 Depth 3
                                        #         Child Loop BB3_89 Depth 4
                                        #         Child Loop BB3_75 Depth 4
                                        #     Child Loop BB3_98 Depth 2
                                        #       Child Loop BB3_100 Depth 3
                                        #         Child Loop BB3_103 Depth 4
                                        #         Child Loop BB3_106 Depth 4
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $fp, 40
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	slli.d	$a1, $s0, 4
	alsl.d	$a2, $s0, $a1, 3
	add.d	$a1, $a0, $a2
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	st.d	$s2, $sp, 396
	st.w	$zero, $sp, 404
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ld.w	$a1, $a1, 12
	st.d	$a1, $sp, 328                   # 8-byte Folded Spill
	st.d	$a2, $sp, 352                   # 8-byte Folded Spill
	ldx.w	$a0, $a0, $a2
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	st.d	$s1, $sp, 400
	addi.d	$a2, $sp, 396
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	st.d	$s6, $sp, 396
	st.w	$s6, $sp, 404
	addi.d	$a2, $sp, 396
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 396
	st.w	$s6, $sp, 404
	addi.d	$a2, $sp, 396
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 396
	st.w	$s6, $sp, 404
	addi.d	$a2, $sp, 396
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s2, $sp, 396
	st.w	$s6, $sp, 404
	addi.d	$a2, $sp, 396
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$zero, $sp, 396
	st.w	$zero, $sp, 404
	addi.d	$a2, $sp, 396
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s6, $sp, 396
	st.w	$zero, $sp, 404
	addi.d	$a2, $sp, 396
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	st.d	$s1, $sp, 396
	st.w	$zero, $sp, 404
	addi.d	$a2, $sp, 396
	move	$a0, $fp
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ori	$a1, $zero, 27
	bne	$a0, $a1, .LBB3_6
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	st.d	$s2, $sp, 396
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	st.w	$s4, $sp, 404
	addi.d	$a2, $sp, 396
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	move	$a0, $s0
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ori	$fp, $zero, 1
	lu32i.d	$fp, -1
	st.d	$fp, $sp, 396
	st.w	$s4, $sp, 404
	addi.d	$a2, $sp, 396
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	move	$a0, $s2
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 396
	st.w	$s4, $sp, 404
	addi.d	$a2, $sp, 396
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 396
	st.w	$s4, $sp, 404
	addi.d	$a2, $sp, 396
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$s2, $sp, 396
	st.w	$zero, $sp, 404
	addi.d	$a2, $sp, 396
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 396
	st.w	$zero, $sp, 404
	addi.d	$a2, $sp, 396
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
.LBB3_6:                                #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	add.d	$a3, $a0, $a1
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	sub.w	$a0, $a0, $a1
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	addi.d	$a1, $sp, 384
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	move	$a0, $a3
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 384
	ld.w	$s6, $sp, 388
	ld.w	$a1, $sp, 392
	slt	$a2, $a0, $s6
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	maskeqz	$a3, $a1, $a3
	or	$a2, $a3, $a2
	ori	$a1, $zero, 1
	xvld	$xr5, $sp, 64                   # 32-byte Folded Reload
	vldi	$vr6, -1024
	xvld	$xr7, $sp, 0                    # 32-byte Folded Reload
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 344                   # 8-byte Folded Reload
	blt	$a2, $a1, .LBB3_64
# %bb.7:                                # %.preheader715.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	blt	$a2, $a1, .LBB3_64
# %bb.8:                                # %.preheader715.lr.ph.split.us
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a2, $a1, 0
	ld.d	$t1, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a3, $t1, 0
	ld.w	$a4, $a1, 8
	ld.w	$a5, $t1, 8
	ld.w	$a6, $a1, 4
	ld.w	$a7, $t1, 4
	ld.w	$t0, $t1, 16
	sub.d	$a4, $a4, $a5
	sub.d	$a2, $a2, $a3
	sub.d	$a5, $a6, $a7
	sub.w	$a6, $t0, $a7
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	slt	$a7, $a1, $a6
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $a1, $a7
	or	$a6, $a6, $a7
	ld.w	$a7, $t1, 12
	addi.d	$t0, $a6, 1
	mul.d	$a4, $t0, $a4
	add.d	$a4, $a5, $a4
	sub.w	$a3, $a7, $a3
	slt	$a5, $a1, $a3
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $a1, $a5
	or	$a3, $a3, $a5
	addi.d	$a5, $a3, 1
	mul.d	$a3, $a4, $a5
	add.w	$a6, $a3, $a2
	sub.d	$a3, $a5, $a0
	sub.d	$a2, $t0, $s6
	mul.d	$a1, $a5, $a2
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ori	$a1, $zero, 1
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 336                   # 8-byte Folded Reload
	blt	$s6, $a1, .LBB3_51
# %bb.9:                                # %.preheader715.lr.ph.split.us
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB3_51
# %bb.10:                               # %.preheader709.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$t1, $zero
	addi.d	$a1, $ra, -8
	st.d	$a1, $sp, 352                   # 8-byte Folded Spill
	addi.d	$a2, $a0, -1
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	nor	$a1, $a1, $zero
	bstrpick.d	$a4, $a2, 31, 0
	alsl.d	$a5, $a4, $s0, 3
	addi.d	$a5, $a5, 8
	st.d	$a5, $sp, 280                   # 8-byte Folded Spill
	alsl.d	$a5, $a4, $t0, 3
	addi.d	$a5, $a5, 8
	st.d	$a5, $sp, 272                   # 8-byte Folded Spill
	alsl.d	$a5, $a4, $a7, 3
	addi.d	$a5, $a5, 8
	st.d	$a5, $sp, 256                   # 8-byte Folded Spill
	alsl.d	$a5, $a4, $s8, 3
	addi.d	$a5, $a5, 8
	st.d	$a5, $sp, 248                   # 8-byte Folded Spill
	alsl.d	$a5, $a4, $s2, 3
	addi.d	$a5, $a5, 8
	st.d	$a5, $sp, 240                   # 8-byte Folded Spill
	addi.d	$a5, $ra, -8
	st.d	$a5, $sp, 232                   # 8-byte Folded Spill
	alsl.d	$a5, $a4, $ra, 3
	st.d	$a5, $sp, 224                   # 8-byte Folded Spill
	alsl.d	$a5, $a4, $s1, 3
	addi.d	$a5, $a5, 8
	st.d	$a5, $sp, 208                   # 8-byte Folded Spill
	alsl.d	$a4, $a4, $s5, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 200                   # 8-byte Folded Spill
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	add.d	$a1, $a1, $a2
	st.d	$a1, $sp, 328                   # 8-byte Folded Spill
	bstrpick.d	$a2, $a0, 30, 2
	slli.d	$a1, $a2, 2
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	move	$a5, $a6
	st.d	$a3, $sp, 216                   # 8-byte Folded Spill
	b	.LBB3_12
	.p2align	4, , 16
.LBB3_11:                               # %._crit_edge725.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_12 Depth=2
	ld.d	$t1, $sp, 160                   # 8-byte Folded Reload
	addi.w	$t1, $t1, 1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	add.w	$a5, $a5, $a1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	beq	$t1, $a1, .LBB3_51
.LBB3_12:                               # %.preheader709.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_13 Depth 3
                                        #         Child Loop BB3_38 Depth 4
                                        #         Child Loop BB3_17 Depth 4
	st.d	$t1, $sp, 160                   # 8-byte Folded Spill
	move	$t1, $zero
	.p2align	4, , 16
.LBB3_13:                               # %.preheader705.us.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_12 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_38 Depth 4
                                        #         Child Loop BB3_17 Depth 4
	bltu	$a0, $s7, .LBB3_15
# %bb.14:                               # %vector.scevcheck1475
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	add.w	$t3, $a5, $a1
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	add.w	$a2, $a5, $a1
	bge	$a2, $t3, .LBB3_19
.LBB3_15:                               #   in Loop: Header=BB3_13 Depth=3
	move	$a2, $zero
.LBB3_16:                               # %scalar.ph1580.preheader
                                        #   in Loop: Header=BB3_13 Depth=3
	slli.d	$a4, $a5, 3
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	add.w	$t2, $a1, $a5
	sub.d	$a2, $a0, $a2
	move	$t3, $a7
	move	$t4, $s1
	move	$t5, $t0
	ld.d	$t6, $sp, 352                   # 8-byte Folded Reload
	move	$t7, $s2
	move	$t8, $s0
	move	$fp, $s8
	.p2align	4, , 16
.LBB3_17:                               # %scalar.ph1580
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_12 Depth=2
                                        #       Parent Loop BB3_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $fp, $a4
	fldx.d	$fa1, $t8, $a4
	fmadd.d	$fa0, $fa0, $fa6, $fa1
	fstx.d	$fa0, $t8, $a4
	fldx.d	$fa0, $t7, $a4
	fldx.d	$fa1, $t6, $a4
	fldx.d	$fa2, $t5, $a4
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t5, $a4
	fldx.d	$fa0, $t4, $a4
	slli.d	$a1, $t2, 3
	fldx.d	$fa1, $s5, $a1
	fldx.d	$fa2, $t3, $a4
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t3, $a4
	addi.d	$a5, $a5, 1
	addi.d	$fp, $fp, 8
	addi.d	$t8, $t8, 8
	addi.d	$t7, $t7, 8
	addi.d	$t6, $t6, 8
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 8
	addi.w	$a2, $a2, -1
	addi.w	$t2, $t2, 1
	bnez	$a2, .LBB3_17
.LBB3_18:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_13 Depth=3
	addi.w	$t1, $t1, 1
	add.w	$a5, $a3, $a5
	bne	$t1, $s6, .LBB3_13
	b	.LBB3_11
	.p2align	4, , 16
.LBB3_19:                               # %vector.memcheck1476
                                        #   in Loop: Header=BB3_13 Depth=3
	alsl.d	$t4, $a5, $s0, 3
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$a7, $a5, $a1, 3
	alsl.d	$t5, $a5, $t0, 3
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$t2, $a5, $a1, 3
	sltu	$a2, $t4, $t2
	sltu	$a4, $t5, $a7
	and	$a4, $a2, $a4
	move	$a2, $zero
	bnez	$a4, .LBB3_49
# %bb.20:                               # %vector.memcheck1476
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$t6, $a5, $a1, 3
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$a4, $a5, $a1, 3
	sltu	$t7, $t4, $a4
	sltu	$t8, $t6, $a7
	and	$t7, $t7, $t8
	bnez	$t7, .LBB3_49
# %bb.21:                               # %vector.memcheck1476
                                        #   in Loop: Header=BB3_13 Depth=3
	move	$t0, $s6
	alsl.d	$t7, $a5, $s8, 3
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$s6, $a5, $a1, 3
	sltu	$t8, $t4, $s6
	sltu	$fp, $t7, $a7
	and	$t8, $t8, $fp
	bnez	$t8, .LBB3_50
# %bb.22:                               # %vector.memcheck1476
                                        #   in Loop: Header=BB3_13 Depth=3
	alsl.d	$t8, $a5, $s2, 3
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$s1, $a5, $a1, 3
	sltu	$fp, $t4, $s1
	sltu	$s0, $t8, $a7
	and	$fp, $fp, $s0
	bnez	$fp, .LBB3_48
# %bb.23:                               # %vector.memcheck1476
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$ra, $a5, $a1, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$s2, $a5, $a1, 3
	sltu	$fp, $t4, $s2
	sltu	$s0, $ra, $a7
	and	$fp, $fp, $s0
	bnez	$fp, .LBB3_47
# %bb.24:                               # %vector.memcheck1476
                                        #   in Loop: Header=BB3_13 Depth=3
	move	$a3, $s8
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$fp, $a5, $a1, 3
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$s7, $a5, $a1, 3
	sltu	$s0, $t4, $s7
	sltu	$s8, $fp, $a7
	and	$s0, $s0, $s8
	bnez	$s0, .LBB3_43
# %bb.25:                               # %vector.memcheck1476
                                        #   in Loop: Header=BB3_13 Depth=3
	alsl.d	$s8, $t3, $s5, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$s0, $t3, $a1, 3
	sltu	$a1, $t4, $s0
	sltu	$a7, $s8, $a7
	and	$a1, $a1, $a7
	bnez	$a1, .LBB3_43
# %bb.26:                               # %vector.memcheck1476
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t5, $a4
	sltu	$a7, $t6, $t2
	and	$a1, $a1, $a7
	bnez	$a1, .LBB3_43
# %bb.27:                               # %vector.memcheck1476
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t5, $s6
	sltu	$a7, $t7, $t2
	and	$a1, $a1, $a7
	bnez	$a1, .LBB3_43
# %bb.28:                               # %vector.memcheck1476
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t5, $s1
	sltu	$a7, $t8, $t2
	and	$a1, $a1, $a7
	bnez	$a1, .LBB3_43
# %bb.29:                               # %vector.memcheck1476
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t5, $s2
	sltu	$a7, $ra, $t2
	and	$a1, $a1, $a7
	bnez	$a1, .LBB3_43
# %bb.30:                               # %vector.memcheck1476
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t5, $s7
	sltu	$a7, $fp, $t2
	and	$a1, $a1, $a7
	bnez	$a1, .LBB3_43
# %bb.31:                               # %vector.memcheck1476
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t5, $s0
	sltu	$a7, $s8, $t2
	and	$a1, $a1, $a7
	bnez	$a1, .LBB3_43
# %bb.32:                               # %vector.memcheck1476
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t6, $s6
	sltu	$a7, $t7, $a4
	and	$a1, $a1, $a7
	bnez	$a1, .LBB3_43
# %bb.33:                               # %vector.memcheck1476
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t6, $s1
	sltu	$a7, $t8, $a4
	and	$a1, $a1, $a7
	move	$s6, $t0
	bnez	$a1, .LBB3_42
# %bb.34:                               # %vector.memcheck1476
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t6, $s2
	sltu	$a7, $ra, $a4
	and	$a1, $a1, $a7
	ld.d	$s1, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 304                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_41
# %bb.35:                               # %vector.memcheck1476
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t6, $s7
	sltu	$a7, $fp, $a4
	and	$a1, $a1, $a7
	bnez	$a1, .LBB3_41
# %bb.36:                               # %vector.memcheck1476
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t6, $s0
	sltu	$a4, $s8, $a4
	and	$a1, $a1, $a4
	ld.d	$a7, $sp, 336                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_40
# %bb.37:                               # %vector.ph1582
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	add.d	$a5, $a2, $a5
	ori	$s7, $zero, 16
	move	$s8, $a3
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_38:                               # %vector.body1585
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_12 Depth=2
                                        #       Parent Loop BB3_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvld	$xr0, $t7, 0
	xvld	$xr1, $t4, 0
	xvld	$xr2, $t8, 0
	xvld	$xr3, $ra, 0
	xvfmadd.d	$xr0, $xr0, $xr7, $xr1
	xvst	$xr0, $t4, 0
	xvfadd.d	$xr0, $xr2, $xr3
	xvld	$xr1, $t5, 0
	xvld	$xr2, $fp, 0
	slli.d	$a1, $t3, 3
	xvldx	$xr3, $s5, $a1
	xvld	$xr4, $t6, 0
	xvfadd.d	$xr0, $xr1, $xr0
	xvst	$xr0, $t5, 0
	xvfadd.d	$xr0, $xr2, $xr3
	xvfadd.d	$xr0, $xr4, $xr0
	xvst	$xr0, $t6, 0
	addi.w	$t3, $t3, 4
	addi.d	$a2, $a2, -4
	addi.d	$t6, $t6, 32
	addi.d	$fp, $fp, 32
	addi.d	$t5, $t5, 32
	addi.d	$ra, $ra, 32
	addi.d	$t8, $t8, 32
	addi.d	$t4, $t4, 32
	addi.d	$t7, $t7, 32
	bnez	$a2, .LBB3_38
# %bb.39:                               # %middle.block1598
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	move	$a2, $a1
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB3_16
	b	.LBB3_18
.LBB3_40:                               #   in Loop: Header=BB3_13 Depth=3
	ori	$s7, $zero, 16
	move	$s8, $a3
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	b	.LBB3_16
.LBB3_41:                               #   in Loop: Header=BB3_13 Depth=3
	ori	$s7, $zero, 16
	move	$s8, $a3
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 336                   # 8-byte Folded Reload
	b	.LBB3_16
.LBB3_42:                               #   in Loop: Header=BB3_13 Depth=3
	ori	$s7, $zero, 16
	move	$s8, $a3
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 344                   # 8-byte Folded Reload
	b	.LBB3_44
.LBB3_43:                               #   in Loop: Header=BB3_13 Depth=3
	ori	$s7, $zero, 16
	move	$s8, $a3
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 344                   # 8-byte Folded Reload
	move	$s6, $t0
.LBB3_44:                               # %scalar.ph1580.preheader
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
.LBB3_45:                               # %scalar.ph1580.preheader
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
.LBB3_46:                               # %scalar.ph1580.preheader
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$t0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 336                   # 8-byte Folded Reload
	b	.LBB3_16
.LBB3_47:                               #   in Loop: Header=BB3_13 Depth=3
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
.LBB3_48:                               #   in Loop: Header=BB3_13 Depth=3
	ld.d	$s1, $sp, 344                   # 8-byte Folded Reload
	move	$s6, $t0
	b	.LBB3_45
.LBB3_49:                               #   in Loop: Header=BB3_13 Depth=3
	ld.d	$a7, $sp, 336                   # 8-byte Folded Reload
	b	.LBB3_16
.LBB3_50:                               #   in Loop: Header=BB3_13 Depth=3
	move	$s6, $t0
	b	.LBB3_46
	.p2align	4, , 16
.LBB3_51:                               # %.preheader713.lr.ph.split.us
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a1, $zero, 1
	blt	$s6, $a1, .LBB3_64
# %bb.52:                               # %.preheader713.lr.ph.split.us
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB3_64
# %bb.53:                               # %.preheader708.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a2, $zero
	sub.d	$a1, $s2, $s8
	sub.d	$a4, $ra, $s8
	sub.d	$a5, $s1, $s8
	sub.d	$a7, $s5, $s8
	sub.d	$t0, $ra, $s2
	sub.d	$t1, $s1, $s2
	sub.d	$t2, $s5, $s2
	sub.d	$t3, $s1, $ra
	sub.d	$t4, $s5, $ra
	sltui	$a1, $a1, 64
	sltui	$a4, $a4, 64
	or	$a1, $a1, $a4
	sub.d	$a4, $s5, $s1
	sltui	$a5, $a5, 64
	or	$a1, $a1, $a5
	sltui	$a5, $a7, 64
	or	$a1, $a1, $a5
	sltui	$a5, $t0, 64
	or	$a1, $a1, $a5
	sltui	$a5, $t1, 64
	or	$a1, $a1, $a5
	sltui	$a5, $t2, 64
	or	$a1, $a1, $a5
	sltui	$a5, $t3, 64
	or	$a1, $a1, $a5
	sltui	$a5, $t4, 64
	or	$a1, $a1, $a5
	sltui	$a4, $a4, 64
	or	$a4, $a1, $a4
	bstrpick.d	$a1, $a0, 30, 3
	slli.d	$a5, $a1, 3
	addi.d	$a7, $s8, 32
	addi.d	$t0, $s5, 32
	addi.d	$t1, $s2, 32
	addi.d	$t2, $s1, 32
	addi.d	$t3, $ra, 32
	b	.LBB3_55
	.p2align	4, , 16
.LBB3_54:                               # %._crit_edge827.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_55 Depth=2
	addi.w	$a2, $a2, 1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	add.w	$a6, $a6, $a1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	beq	$a2, $a1, .LBB3_64
.LBB3_55:                               # %.preheader708.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_57 Depth 3
                                        #         Child Loop BB3_60 Depth 4
                                        #         Child Loop BB3_63 Depth 4
	move	$t4, $zero
	b	.LBB3_57
	.p2align	4, , 16
.LBB3_56:                               # %._crit_edge.us.us.us.us.us.us861
                                        #   in Loop: Header=BB3_57 Depth=3
	addi.w	$t4, $t4, 1
	add.w	$a6, $a3, $t5
	beq	$t4, $s6, .LBB3_54
.LBB3_57:                               # %.preheader704.us.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_55 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_60 Depth 4
                                        #         Child Loop BB3_63 Depth 4
	sltui	$a1, $a0, 12
	or	$a1, $a1, $a4
	andi	$a1, $a1, 1
	beqz	$a1, .LBB3_59
# %bb.58:                               #   in Loop: Header=BB3_57 Depth=3
	move	$s0, $zero
	move	$t5, $a6
	b	.LBB3_62
	.p2align	4, , 16
.LBB3_59:                               # %vector.ph1464
                                        #   in Loop: Header=BB3_57 Depth=3
	add.d	$t5, $a5, $a6
	alsl.d	$t6, $a6, $a7, 3
	alsl.d	$t7, $a6, $t0, 3
	alsl.d	$t8, $a6, $t1, 3
	alsl.d	$fp, $a6, $t2, 3
	alsl.d	$a6, $a6, $t3, 3
	move	$s0, $a5
	.p2align	4, , 16
.LBB3_60:                               # %vector.body1467
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_55 Depth=2
                                        #       Parent Loop BB3_57 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvst	$xr5, $t6, -32
	xvst	$xr5, $t6, 0
	xvst	$xr5, $t8, -32
	xvst	$xr5, $t8, 0
	xvst	$xr5, $a6, -32
	xvst	$xr5, $a6, 0
	xvst	$xr5, $fp, -32
	xvst	$xr5, $fp, 0
	xvst	$xr5, $t7, -32
	xvst	$xr5, $t7, 0
	addi.d	$s0, $s0, -8
	addi.d	$t6, $t6, 64
	addi.d	$t7, $t7, 64
	addi.d	$t8, $t8, 64
	addi.d	$fp, $fp, 64
	addi.d	$a6, $a6, 64
	bnez	$s0, .LBB3_60
# %bb.61:                               # %middle.block1471
                                        #   in Loop: Header=BB3_57 Depth=3
	move	$s0, $a5
	beq	$a5, $a0, .LBB3_56
.LBB3_62:                               # %scalar.ph1462.preheader
                                        #   in Loop: Header=BB3_57 Depth=3
	alsl.d	$a6, $t5, $s8, 3
	alsl.d	$t6, $t5, $s2, 3
	alsl.d	$t7, $t5, $ra, 3
	alsl.d	$t8, $t5, $s1, 3
	alsl.d	$fp, $t5, $s5, 3
	sub.d	$s0, $a0, $s0
	.p2align	4, , 16
.LBB3_63:                               # %scalar.ph1462
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_55 Depth=2
                                        #       Parent Loop BB3_57 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.d	$zero, $a6, 0
	st.d	$zero, $t6, 0
	st.d	$zero, $t7, 0
	st.d	$zero, $t8, 0
	st.d	$zero, $fp, 0
	addi.d	$t5, $t5, 1
	addi.d	$a6, $a6, 8
	addi.d	$t6, $t6, 8
	addi.d	$t7, $t7, 8
	addi.d	$t8, $t8, 8
	addi.w	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	bnez	$s0, .LBB3_63
	b	.LBB3_56
	.p2align	4, , 16
.LBB3_64:                               # %._crit_edge
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ori	$a1, $zero, 27
	bne	$a0, $a1, .LBB3_3
# %bb.65:                               #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a1, $sp, 384
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	xvld	$xr5, $sp, 64                   # 32-byte Folded Reload
	ld.w	$a0, $sp, 384
	ld.w	$a1, $sp, 388
	ld.w	$s1, $sp, 392
	slt	$a2, $a0, $a1
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	slt	$a3, $a2, $s1
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s1, $a3
	or	$a2, $a3, $a2
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB3_3
# %bb.66:                               # %.preheader711.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a2, $zero, 1
	blt	$s1, $a2, .LBB3_3
# %bb.67:                               # %.preheader711.lr.ph.split.us
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a2, $a6, 0
	ld.d	$t1, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a3, $t1, 0
	ld.w	$a4, $a6, 8
	ld.w	$a5, $t1, 8
	ld.w	$a6, $a6, 4
	ld.w	$a7, $t1, 4
	ld.w	$t0, $t1, 16
	sub.d	$a4, $a4, $a5
	sub.d	$a2, $a2, $a3
	sub.d	$a5, $a6, $a7
	sub.w	$a6, $t0, $a7
	ld.d	$t0, $sp, 144                   # 8-byte Folded Reload
	slt	$a7, $t0, $a6
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $t0, $a7
	or	$a6, $a6, $a7
	ld.w	$a7, $t1, 12
	addi.d	$a6, $a6, 1
	mul.d	$a4, $a6, $a4
	add.d	$a4, $a5, $a4
	sub.w	$a3, $a7, $a3
	slt	$a5, $t0, $a3
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $t0, $a5
	or	$a3, $a3, $a5
	addi.d	$a7, $a3, 1
	mul.d	$a3, $a4, $a7
	add.w	$a5, $a3, $a2
	sub.d	$a3, $a7, $a0
	sub.d	$a2, $a6, $a1
	mul.d	$s2, $a7, $a2
	ori	$a2, $zero, 1
	ori	$t5, $zero, 12
	ld.d	$t3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	blt	$a1, $a2, .LBB3_94
# %bb.68:                               # %.preheader711.lr.ph.split.us
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB3_94
# %bb.69:                               # %.preheader707.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a6, $zero
	addi.w	$a7, $a0, -1
	bstrpick.d	$a2, $a7, 31, 0
	alsl.d	$a4, $a2, $t3, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 376                   # 8-byte Folded Spill
	alsl.d	$a4, $a2, $t1, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 352                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$a4, $a2, $a4, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 344                   # 8-byte Folded Spill
	alsl.d	$a4, $a2, $s4, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 336                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$a4, $a2, $a4, 3
	addi.d	$t4, $a4, 8
	alsl.d	$a2, $a2, $s3, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 328                   # 8-byte Folded Spill
	addi.d	$t6, $a0, -3
	bstrpick.d	$a2, $a0, 30, 2
	slli.d	$t7, $a2, 2
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	sub.d	$t8, $zero, $a2
	move	$fp, $a5
	st.d	$s1, $sp, 312                   # 8-byte Folded Spill
	st.d	$s2, $sp, 304                   # 8-byte Folded Spill
	b	.LBB3_71
	.p2align	4, , 16
.LBB3_70:                               # %._crit_edge974.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_71 Depth=2
	ld.d	$a6, $sp, 320                   # 8-byte Folded Reload
	addi.w	$a6, $a6, 1
	ld.d	$s2, $sp, 304                   # 8-byte Folded Reload
	add.w	$fp, $fp, $s2
	ld.d	$s1, $sp, 312                   # 8-byte Folded Reload
	beq	$a6, $s1, .LBB3_94
.LBB3_71:                               # %.preheader707.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_72 Depth 3
                                        #         Child Loop BB3_89 Depth 4
                                        #         Child Loop BB3_75 Depth 4
	st.d	$a6, $sp, 320                   # 8-byte Folded Spill
	move	$s0, $zero
	.p2align	4, , 16
.LBB3_72:                               # %.preheader703.us.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_71 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_89 Depth 4
                                        #         Child Loop BB3_75 Depth 4
	bgeu	$a0, $t5, .LBB3_77
# %bb.73:                               #   in Loop: Header=BB3_72 Depth=3
	move	$s2, $zero
.LBB3_74:                               # %scalar.ph1423.preheader
                                        #   in Loop: Header=BB3_72 Depth=3
	add.w	$s1, $t8, $fp
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$s5, $fp, $a2, 3
	alsl.d	$s6, $fp, $t3, 3
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$s7, $fp, $a2, 3
	alsl.d	$s8, $fp, $t1, 3
	sub.d	$s2, $a0, $s2
	.p2align	4, , 16
.LBB3_75:                               # %scalar.ph1423
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_71 Depth=2
                                        #       Parent Loop BB3_72 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.w	$a2, $s1, -2
	fld.d	$fa0, $s5, 0
	slli.d	$a2, $a2, 3
	fldx.d	$fa1, $s4, $a2
	fld.d	$fa2, $s6, 0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $s6, 0
	fld.d	$fa0, $s7, 0
	slli.d	$a2, $s1, 3
	fldx.d	$fa1, $s3, $a2
	fld.d	$fa2, $s8, 0
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$fp, $fp, 1
	fadd.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $s8, 0
	addi.w	$s1, $s1, 1
	addi.d	$s5, $s5, 8
	addi.d	$s6, $s6, 8
	addi.d	$s7, $s7, 8
	addi.w	$s2, $s2, -1
	addi.d	$s8, $s8, 8
	bnez	$s2, .LBB3_75
.LBB3_76:                               # %._crit_edge971.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_72 Depth=3
	addi.w	$s0, $s0, 1
	add.w	$fp, $a3, $fp
	bne	$s0, $a1, .LBB3_72
	b	.LBB3_70
	.p2align	4, , 16
.LBB3_77:                               # %vector.scevcheck
                                        #   in Loop: Header=BB3_72 Depth=3
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	sub.w	$s1, $fp, $a2
	addi.w	$s8, $s1, -2
	add.w	$a2, $s1, $t6
	move	$s2, $zero
	blt	$a2, $s8, .LBB3_74
# %bb.78:                               # %vector.scevcheck
                                        #   in Loop: Header=BB3_72 Depth=3
	add.w	$a2, $s1, $a7
	blt	$a2, $s1, .LBB3_74
# %bb.79:                               # %vector.memcheck1367
                                        #   in Loop: Header=BB3_72 Depth=3
	alsl.d	$s5, $fp, $t3, 3
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a4, $fp, $a2, 3
	alsl.d	$s6, $fp, $t1, 3
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$ra, $fp, $a2, 3
	sltu	$a2, $s5, $ra
	sltu	$a6, $s6, $a4
	and	$a2, $a2, $a6
	move	$s2, $zero
	bnez	$a2, .LBB3_74
# %bb.80:                               # %vector.memcheck1367
                                        #   in Loop: Header=BB3_72 Depth=3
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$s7, $fp, $a2, 3
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$a2, $fp, $a2, 3
	sltu	$a6, $s5, $a2
	sltu	$t0, $s7, $a4
	and	$a6, $a6, $t0
	bnez	$a6, .LBB3_74
# %bb.81:                               # %vector.memcheck1367
                                        #   in Loop: Header=BB3_72 Depth=3
	alsl.d	$a6, $s8, $s4, 3
	ld.d	$t0, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$t0, $s8, $t0, 3
	sltu	$t1, $s5, $t0
	sltu	$t2, $a6, $a4
	and	$t1, $t1, $t2
	bnez	$t1, .LBB3_93
# %bb.82:                               # %vector.memcheck1367
                                        #   in Loop: Header=BB3_72 Depth=3
	ld.d	$t1, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$s8, $fp, $t1, 3
	alsl.d	$t1, $fp, $t4, 3
	sltu	$t2, $s5, $t1
	sltu	$t3, $s8, $a4
	and	$t2, $t2, $t3
	bnez	$t2, .LBB3_92
# %bb.83:                               # %vector.memcheck1367
                                        #   in Loop: Header=BB3_72 Depth=3
	alsl.d	$t2, $s1, $s3, 3
	ld.d	$t3, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$t3, $s1, $t3, 3
	sltu	$t5, $s5, $t3
	sltu	$a4, $t2, $a4
	and	$a4, $t5, $a4
	bnez	$a4, .LBB3_91
# %bb.84:                               # %vector.memcheck1367
                                        #   in Loop: Header=BB3_72 Depth=3
	sltu	$a2, $s6, $a2
	sltu	$a4, $s7, $ra
	and	$a2, $a2, $a4
	ori	$t5, $zero, 12
	bnez	$a2, .LBB3_92
# %bb.85:                               # %vector.memcheck1367
                                        #   in Loop: Header=BB3_72 Depth=3
	sltu	$a2, $s6, $t0
	sltu	$a4, $a6, $ra
	and	$a2, $a2, $a4
	bnez	$a2, .LBB3_92
# %bb.86:                               # %vector.memcheck1367
                                        #   in Loop: Header=BB3_72 Depth=3
	sltu	$a2, $s6, $t1
	sltu	$a4, $s8, $ra
	and	$a2, $a2, $a4
	bnez	$a2, .LBB3_92
# %bb.87:                               # %vector.memcheck1367
                                        #   in Loop: Header=BB3_72 Depth=3
	sltu	$a2, $s6, $t3
	sltu	$a4, $t2, $ra
	and	$a2, $a2, $a4
	bnez	$a2, .LBB3_92
# %bb.88:                               # %vector.ph1425
                                        #   in Loop: Header=BB3_72 Depth=3
	add.d	$fp, $t7, $fp
	move	$s2, $t7
	ld.d	$t3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_89:                               # %vector.body1428
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_71 Depth=2
                                        #       Parent Loop BB3_72 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.w	$a2, $s1, -2
	xvld	$xr0, $s7, 0
	slli.d	$a2, $a2, 3
	xvldx	$xr1, $s4, $a2
	xvfadd.d	$xr0, $xr0, $xr1
	xvld	$xr1, $s5, 0
	xvld	$xr2, $s8, 0
	slli.d	$a2, $s1, 3
	xvldx	$xr3, $s3, $a2
	xvld	$xr4, $s6, 0
	xvfadd.d	$xr0, $xr1, $xr0
	xvst	$xr0, $s5, 0
	xvfadd.d	$xr0, $xr2, $xr3
	xvfadd.d	$xr0, $xr4, $xr0
	xvst	$xr0, $s6, 0
	addi.w	$s1, $s1, 4
	addi.d	$s2, $s2, -4
	addi.d	$s6, $s6, 32
	addi.d	$s8, $s8, 32
	addi.d	$s5, $s5, 32
	addi.d	$s7, $s7, 32
	bnez	$s2, .LBB3_89
# %bb.90:                               # %middle.block1438
                                        #   in Loop: Header=BB3_72 Depth=3
	move	$s2, $t7
	bne	$t7, $a0, .LBB3_74
	b	.LBB3_76
.LBB3_91:                               #   in Loop: Header=BB3_72 Depth=3
	ori	$t5, $zero, 12
.LBB3_92:                               #   in Loop: Header=BB3_72 Depth=3
	ld.d	$t3, $sp, 184                   # 8-byte Folded Reload
.LBB3_93:                               #   in Loop: Header=BB3_72 Depth=3
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	b	.LBB3_74
.LBB3_94:                               # %.preheader710.lr.ph.split.us
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a2, $zero, 1
	ori	$s7, $zero, 16
	blt	$a1, $a2, .LBB3_3
# %bb.95:                               # %.preheader710.lr.ph.split.us
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB3_3
# %bb.96:                               # %.preheader706.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a6, $zero
	ld.d	$t3, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 360                   # 8-byte Folded Reload
	sub.d	$a2, $t4, $t3
	sub.d	$a4, $s3, $t3
	sub.d	$a7, $s4, $t3
	sub.d	$t0, $s3, $t4
	sub.d	$t1, $s4, $t4
	sub.d	$t2, $s4, $s3
	sltui	$a2, $a2, 64
	sltui	$a4, $a4, 64
	or	$a2, $a2, $a4
	sltui	$a4, $a7, 64
	or	$a2, $a2, $a4
	sltui	$a4, $t0, 64
	or	$a2, $a2, $a4
	sltui	$a4, $t1, 64
	or	$a2, $a2, $a4
	sltui	$a4, $t2, 64
	or	$a7, $a2, $a4
	bstrpick.d	$a2, $a0, 30, 3
	slli.d	$t0, $a2, 3
	addi.d	$t1, $t3, 32
	addi.d	$t2, $s4, 32
	addi.d	$t3, $t4, 32
	addi.d	$t4, $s3, 32
	b	.LBB3_98
	.p2align	4, , 16
.LBB3_97:                               # %._crit_edge1125.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_98 Depth=2
	addi.w	$a6, $a6, 1
	add.w	$a5, $a5, $s2
	beq	$a6, $s1, .LBB3_3
.LBB3_98:                               # %.preheader706.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_100 Depth 3
                                        #         Child Loop BB3_103 Depth 4
                                        #         Child Loop BB3_106 Depth 4
	move	$t5, $zero
	b	.LBB3_100
	.p2align	4, , 16
.LBB3_99:                               # %._crit_edge1122.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_100 Depth=3
	addi.w	$t5, $t5, 1
	add.w	$a5, $a3, $t6
	beq	$t5, $a1, .LBB3_97
.LBB3_100:                              # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_98 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_103 Depth 4
                                        #         Child Loop BB3_106 Depth 4
	sltui	$a2, $a0, 8
	or	$a2, $a2, $a7
	andi	$a2, $a2, 1
	beqz	$a2, .LBB3_102
# %bb.101:                              #   in Loop: Header=BB3_100 Depth=3
	move	$a2, $zero
	move	$t6, $a5
	b	.LBB3_105
	.p2align	4, , 16
.LBB3_102:                              # %vector.ph
                                        #   in Loop: Header=BB3_100 Depth=3
	add.d	$t6, $t0, $a5
	alsl.d	$t7, $a5, $t1, 3
	alsl.d	$a4, $a5, $t2, 3
	alsl.d	$t8, $a5, $t3, 3
	alsl.d	$a5, $a5, $t4, 3
	move	$a2, $t0
	.p2align	4, , 16
.LBB3_103:                              # %vector.body
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_98 Depth=2
                                        #       Parent Loop BB3_100 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvst	$xr5, $t7, -32
	xvst	$xr5, $t7, 0
	xvst	$xr5, $t8, -32
	xvst	$xr5, $t8, 0
	xvst	$xr5, $a5, -32
	xvst	$xr5, $a5, 0
	xvst	$xr5, $a4, -32
	xvst	$xr5, $a4, 0
	addi.d	$a2, $a2, -8
	addi.d	$t7, $t7, 64
	addi.d	$a4, $a4, 64
	addi.d	$t8, $t8, 64
	addi.d	$a5, $a5, 64
	bnez	$a2, .LBB3_103
# %bb.104:                              # %middle.block
                                        #   in Loop: Header=BB3_100 Depth=3
	move	$a2, $t0
	beq	$t0, $a0, .LBB3_99
.LBB3_105:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB3_100 Depth=3
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$a5, $t6, $a4, 3
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$t7, $t6, $a4, 3
	alsl.d	$t8, $t6, $s3, 3
	alsl.d	$fp, $t6, $s4, 3
	sub.d	$s0, $a0, $a2
	.p2align	4, , 16
.LBB3_106:                              # %scalar.ph
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_98 Depth=2
                                        #       Parent Loop BB3_100 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.d	$zero, $a5, 0
	st.d	$zero, $t7, 0
	st.d	$zero, $t8, 0
	st.d	$zero, $fp, 0
	addi.d	$t6, $t6, 1
	addi.d	$a5, $a5, 8
	addi.d	$t7, $t7, 8
	addi.d	$t8, $t8, 8
	addi.w	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	bnez	$s0, .LBB3_106
	b	.LBB3_99
.LBB3_107:                              # %.loopexit720
	move	$a0, $zero
	ld.d	$s8, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 480                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 488                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 496
	ret
.Lfunc_end3:
	.size	hypre_SMG3RAPPeriodicSym, .Lfunc_end3-hypre_SMG3RAPPeriodicSym
                                        # -- End function
	.globl	hypre_SMG3RAPPeriodicNoSym      # -- Begin function hypre_SMG3RAPPeriodicNoSym
	.p2align	5
	.type	hypre_SMG3RAPPeriodicNoSym,@function
hypre_SMG3RAPPeriodicNoSym:             # @hypre_SMG3RAPPeriodicNoSym
# %bb.0:
	addi.d	$sp, $sp, -928
	st.d	$ra, $sp, 920                   # 8-byte Folded Spill
	st.d	$fp, $sp, 912                   # 8-byte Folded Spill
	st.d	$s0, $sp, 904                   # 8-byte Folded Spill
	st.d	$s1, $sp, 896                   # 8-byte Folded Spill
	st.d	$s2, $sp, 888                   # 8-byte Folded Spill
	st.d	$s3, $sp, 880                   # 8-byte Folded Spill
	st.d	$s4, $sp, 872                   # 8-byte Folded Spill
	st.d	$s5, $sp, 864                   # 8-byte Folded Spill
	st.d	$s6, $sp, 856                   # 8-byte Folded Spill
	st.d	$s7, $sp, 848                   # 8-byte Folded Spill
	st.d	$s8, $sp, 840                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 832                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 824                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 816                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 808                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 800                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 792                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 784                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 776                  # 8-byte Folded Spill
	addi.d	$fp, $sp, 928
	bstrins.d	$sp, $zero, 4, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 8
	ld.w	$a2, $a0, 64
	ori	$a1, $zero, 1
	bne	$a2, $a1, .LBB4_89
# %bb.1:                                # %.preheader490.split
	ld.d	$a2, $a0, 8
	ld.w	$a0, $a2, 8
	blt	$a0, $a1, .LBB4_89
# %bb.2:                                # %.lr.ph
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 24
	move	$s3, $zero
	addi.w	$a1, $zero, -1
	ld.w	$a0, $a0, 8
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
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
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_3:                                # %.loopexit489
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a2, 8
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	addi.d	$s3, $s3, 1
	bge	$s3, $a0, .LBB4_89
.LBB4_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_12 Depth 2
                                        #       Child Loop BB4_14 Depth 3
                                        #         Child Loop BB4_59 Depth 4
                                        #         Child Loop BB4_66 Depth 4
                                        #     Child Loop BB4_76 Depth 2
                                        #       Child Loop BB4_78 Depth 3
                                        #         Child Loop BB4_84 Depth 4
                                        #         Child Loop BB4_88 Depth 4
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $s2, 40
	ld.d	$a1, $a2, 0
	slli.d	$a2, $s3, 4
	alsl.d	$s0, $s3, $a2, 3
	ld.d	$s1, $a0, 0
	add.d	$a0, $a1, $s0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	st.d	$zero, $sp, 764
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	st.w	$s4, $sp, 772
	addi.d	$a2, $sp, 764
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	st.d	$s4, $sp, 764
	st.w	$s4, $sp, 772
	addi.d	$a2, $sp, 764
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ori	$s5, $zero, 1
	st.d	$s5, $sp, 764
	st.w	$s4, $sp, 772
	addi.d	$a2, $sp, 764
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	st.d	$s7, $sp, 764
	st.w	$s4, $sp, 772
	addi.d	$a2, $sp, 764
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	st.d	$s6, $sp, 764
	st.w	$s4, $sp, 772
	addi.d	$a2, $sp, 764
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 560                   # 8-byte Folded Spill
	st.d	$zero, $sp, 764
	st.w	$zero, $sp, 772
	addi.d	$a2, $sp, 764
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	st.d	$s4, $sp, 764
	st.w	$zero, $sp, 772
	addi.d	$a2, $sp, 764
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 764
	st.w	$zero, $sp, 772
	addi.d	$a2, $sp, 764
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	st.d	$s7, $sp, 764
	st.w	$zero, $sp, 772
	addi.d	$a2, $sp, 764
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s6, $sp, 764
	st.w	$zero, $sp, 772
	addi.d	$a2, $sp, 764
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 552                   # 8-byte Folded Spill
	st.d	$zero, $sp, 764
	st.w	$s5, $sp, 772
	addi.d	$a2, $sp, 764
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 764
	ori	$s4, $zero, 1
	st.w	$s4, $sp, 772
	addi.d	$a2, $sp, 764
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	st.d	$s4, $sp, 764
	st.w	$s4, $sp, 772
	addi.d	$a2, $sp, 764
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 536                   # 8-byte Folded Spill
	st.d	$s7, $sp, 764
	st.w	$s4, $sp, 772
	addi.d	$a2, $sp, 764
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	st.d	$s6, $sp, 764
	st.w	$s4, $sp, 772
	addi.d	$a2, $sp, 764
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ori	$a1, $zero, 27
	st.d	$s8, $sp, 264                   # 8-byte Folded Spill
	bne	$a0, $a1, .LBB4_6
# %bb.5:                                #   in Loop: Header=BB4_4 Depth=1
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	st.d	$s6, $sp, 764
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	st.w	$s7, $sp, 772
	addi.d	$a2, $sp, 764
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	move	$a0, $s5
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	ori	$s2, $zero, 1
	lu32i.d	$s2, -1
	st.d	$s2, $sp, 764
	st.w	$s7, $sp, 772
	addi.d	$a2, $sp, 764
	move	$a0, $s5
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	move	$s3, $s6
	lu32i.d	$s3, 1
	st.d	$s3, $sp, 764
	st.w	$s7, $sp, 772
	addi.d	$a2, $sp, 764
	move	$a0, $s5
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	ori	$s8, $zero, 1
	ori	$s4, $zero, 1
	lu32i.d	$s4, 1
	st.d	$s4, $sp, 764
	st.w	$s7, $sp, 772
	addi.d	$a2, $sp, 764
	move	$a0, $s5
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	st.d	$s6, $sp, 764
	st.w	$zero, $sp, 772
	addi.d	$a2, $sp, 764
	move	$a0, $s5
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	st.d	$s2, $sp, 764
	st.w	$zero, $sp, 772
	addi.d	$a2, $sp, 764
	move	$a0, $s5
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	st.d	$s3, $sp, 764
	st.w	$zero, $sp, 772
	addi.d	$a2, $sp, 764
	move	$a0, $s5
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s4, $sp, 764
	st.w	$zero, $sp, 772
	addi.d	$a2, $sp, 764
	move	$a0, $s5
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	st.d	$s6, $sp, 764
	st.w	$s8, $sp, 772
	addi.d	$a2, $sp, 764
	move	$a0, $s5
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s2, $sp, 764
	st.w	$s8, $sp, 772
	addi.d	$a2, $sp, 764
	move	$a0, $s5
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	st.d	$s3, $sp, 764
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	st.w	$s8, $sp, 772
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	addi.d	$a2, $sp, 764
	move	$a0, $s5
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s4, $sp, 764
	ori	$s4, $zero, 1
	st.w	$s4, $sp, 772
	addi.d	$a2, $sp, 764
	move	$a0, $s5
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
.LBB4_6:                                #   in Loop: Header=BB4_4 Depth=1
	add.d	$a0, $s1, $s0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a1, $sp, 752
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 752
	ld.w	$a2, $sp, 756
	ld.w	$a3, $sp, 760
	slt	$a0, $a1, $a2
	st.d	$a1, $sp, 632                   # 8-byte Folded Spill
	masknez	$a1, $a1, $a0
	st.d	$a2, $sp, 448                   # 8-byte Folded Spill
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	slt	$a1, $a0, $a3
	masknez	$a0, $a0, $a1
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	xvrepli.b	$xr27, 0
	ld.d	$s7, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 272                   # 8-byte Folded Reload
	blt	$a0, $s4, .LBB4_69
# %bb.7:                                # %.preheader487.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB4_69
# %bb.8:                                # %.preheader487.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB4_69
# %bb.9:                                # %.preheader487.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 632                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB4_69
# %bb.10:                               # %.preheader485.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$t0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $t0, 4
	ld.w	$a1, $t0, 16
	move	$t2, $zero
	ld.w	$a2, $t0, 0
	sub.w	$a1, $a1, $a0
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	slt	$a3, $a5, $a1
	maskeqz	$a1, $a1, $a3
	ld.w	$a4, $t0, 12
	masknez	$a3, $a5, $a3
	or	$a1, $a1, $a3
	addi.d	$a1, $a1, 1
	sub.w	$a3, $a4, $a2
	slt	$a4, $a5, $a3
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a5, $a4
	or	$a3, $a3, $a4
	addi.d	$a3, $a3, 1
	ld.d	$t1, $sp, 632                   # 8-byte Folded Reload
	sub.d	$a4, $a3, $t1
	st.d	$a4, $sp, 432                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 448                   # 8-byte Folded Reload
	sub.d	$a4, $a1, $a4
	ld.d	$a7, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a5, $a7, 0
	ld.w	$a6, $a7, 4
	ld.w	$a7, $a7, 8
	ld.w	$t0, $t0, 8
	mulw.d.w	$a4, $a3, $a4
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	sub.d	$a2, $a5, $a2
	sub.d	$a0, $a6, $a0
	sub.d	$a4, $a7, $t0
	mul.d	$a1, $a1, $a4
	add.d	$a0, $a0, $a1
	mul.d	$a0, $a0, $a3
	add.w	$a6, $a2, $a0
	addi.d	$a0, $t1, -1
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s7, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $ra, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s8, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s5, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s2, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s6, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s3, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 3
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	bstrpick.d	$a0, $t1, 30, 2
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	slli.d	$a0, $t1, 3
	bstrpick.d	$a0, $a0, 33, 5
	slli.d	$a0, $a0, 5
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	b	.LBB4_12
	.p2align	4, , 16
.LBB4_11:                               # %._crit_edge496.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$t2, $sp, 120                   # 8-byte Folded Reload
	addi.w	$t2, $t2, 1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	add.w	$a6, $a6, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$t2, $a0, .LBB4_69
.LBB4_12:                               # %.preheader485.us.us.us.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_14 Depth 3
                                        #         Child Loop BB4_59 Depth 4
                                        #         Child Loop BB4_66 Depth 4
	st.d	$t2, $sp, 120                   # 8-byte Folded Spill
	move	$a1, $zero
	b	.LBB4_14
	.p2align	4, , 16
.LBB4_13:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$a1, $sp, 624                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	add.w	$a6, $a0, $a6
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB4_11
.LBB4_14:                               # %.preheader483.us.us.us.us.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_12 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_59 Depth 4
                                        #         Child Loop BB4_66 Depth 4
	st.d	$a1, $sp, 624                   # 8-byte Folded Spill
	ori	$a0, $zero, 40
	ld.d	$a1, $sp, 632                   # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB4_16
# %bb.15:                               #   in Loop: Header=BB4_14 Depth=3
	move	$s4, $zero
	b	.LBB4_65
	.p2align	4, , 16
.LBB4_16:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	alsl.d	$t3, $a6, $ra, 3
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$s4, $a6, $a0, 3
	alsl.d	$t4, $a6, $s1, 3
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$s7, $a6, $a0, 3
	alsl.d	$t5, $a6, $s8, 3
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$s1, $a6, $a0, 3
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$t6, $a6, $a0, 3
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$s8, $a6, $a0, 3
	alsl.d	$t7, $a6, $s5, 3
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	move	$a1, $s6
	alsl.d	$s6, $a6, $a0, 3
	alsl.d	$t8, $a6, $s2, 3
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a4, $a6, $a0, 3
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$ra, $a6, $a0, 3
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$s0, $a6, $a0, 3
	alsl.d	$a5, $a6, $a1, 3
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$a0, $a6, $a0, 3
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	alsl.d	$a2, $a6, $s3, 3
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$s5, $a6, $a0, 3
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$a3, $a6, $a0, 3
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$t1, $a6, $a0, 3
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$a7, $a6, $a0, 3
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$t2, $a6, $a0, 3
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$t0, $a6, $a0, 3
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$s3, $a6, $a0, 3
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a0, 3
	xvinsgr2vr.d	$xr5, $a3, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$s2, $a6, $a0, 3
	xvori.b	$xr2, $xr5, 0
	xvinsgr2vr.d	$xr2, $t5, 1
	xvinsgr2vr.d	$xr2, $t0, 2
	xvinsgr2vr.d	$xr6, $t8, 0
	xvinsgr2vr.d	$xr2, $t5, 3
	xvori.b	$xr4, $xr6, 0
	xvinsgr2vr.d	$xr4, $t5, 1
	xvinsgr2vr.d	$xr4, $a5, 2
	xvinsgr2vr.d	$xr4, $t5, 3
	xvinsgr2vr.d	$xr8, $t0, 0
	xvinsgr2vr.d	$xr8, $t4, 1
	xvinsgr2vr.d	$xr8, $t6, 2
	xvinsgr2vr.d	$xr8, $t5, 3
	xvinsgr2vr.d	$xr11, $a5, 0
	xvinsgr2vr.d	$xr11, $t4, 1
	xvinsgr2vr.d	$xr11, $a3, 2
	xvinsgr2vr.d	$xr1, $t6, 0
	xvinsgr2vr.d	$xr11, $t4, 3
	xvori.b	$xr13, $xr1, 0
	xvinsgr2vr.d	$xr13, $t4, 1
	xvinsgr2vr.d	$xr13, $t8, 2
	xvinsgr2vr.d	$xr9, $t3, 0
	xvinsgr2vr.d	$xr13, $t4, 3
	xvori.b	$xr15, $xr9, 0
	xvinsgr2vr.d	$xr15, $t0, 1
	xvinsgr2vr.d	$xr15, $t3, 2
	xvinsgr2vr.d	$xr15, $t4, 3
	xvori.b	$xr17, $xr9, 0
	xvinsgr2vr.d	$xr17, $a5, 1
	xvinsgr2vr.d	$xr17, $t3, 2
	xvinsgr2vr.d	$xr17, $a3, 3
	xvinsgr2vr.d	$xr9, $t6, 1
	xvinsgr2vr.d	$xr9, $t3, 2
	xvinsgr2vr.d	$xr18, $s1, 0
	xvinsgr2vr.d	$xr9, $t8, 3
	xvori.b	$xr7, $xr18, 0
	xvinsgr2vr.d	$xr7, $t2, 1
	xvinsgr2vr.d	$xr7, $s1, 2
	xvinsgr2vr.d	$xr7, $s2, 3
	xvori.b	$xr10, $xr18, 0
	xvinsgr2vr.d	$xr10, $s0, 1
	xvinsgr2vr.d	$xr10, $s1, 2
	xvinsgr2vr.d	$xr16, $s7, 0
	xvinsgr2vr.d	$xr10, $s5, 3
	xvori.b	$xr12, $xr16, 0
	xvinsgr2vr.d	$xr12, $s2, 1
	xvinsgr2vr.d	$xr12, $s1, 2
	xvinsgr2vr.d	$xr12, $s6, 3
	xvori.b	$xr14, $xr16, 0
	xvinsgr2vr.d	$xr14, $s5, 1
	xvinsgr2vr.d	$xr14, $s7, 2
	xvinsgr2vr.d	$xr14, $t2, 3
	xvinsgr2vr.d	$xr16, $s6, 1
	xvinsgr2vr.d	$xr16, $s7, 2
	xvinsgr2vr.d	$xr3, $t2, 0
	xvinsgr2vr.d	$xr16, $s0, 3
	xvori.b	$xr19, $xr3, 0
	xvinsgr2vr.d	$xr19, $s4, 1
	xvinsgr2vr.d	$xr19, $s2, 2
	xvinsgr2vr.d	$xr0, $s0, 0
	xvinsgr2vr.d	$xr19, $s1, 3
	xvori.b	$xr20, $xr0, 0
	xvinsgr2vr.d	$xr20, $s4, 1
	xvinsgr2vr.d	$xr20, $s5, 2
	xvinsgr2vr.d	$xr20, $s4, 3
	xvinsgr2vr.d	$xr18, $s4, 1
	xvinsgr2vr.d	$xr18, $s6, 2
	xvinsgr2vr.d	$xr18, $s4, 3
	xvslt.du	$xr18, $xr9, $xr18
	xvpickve2gr.d	$a0, $xr18, 0
	vinsgr2vr.b	$vr9, $a0, 0
	xvpickve2gr.d	$a0, $xr18, 1
	vinsgr2vr.b	$vr9, $a0, 1
	xvpickve2gr.d	$a0, $xr18, 2
	vinsgr2vr.b	$vr9, $a0, 2
	xvpickve2gr.d	$a0, $xr18, 3
	vinsgr2vr.b	$vr9, $a0, 3
	xvslt.du	$xr17, $xr17, $xr20
	xvpickve2gr.d	$a0, $xr17, 0
	vinsgr2vr.b	$vr9, $a0, 4
	xvpickve2gr.d	$a0, $xr17, 1
	vinsgr2vr.b	$vr9, $a0, 5
	xvpickve2gr.d	$a0, $xr17, 2
	vinsgr2vr.b	$vr9, $a0, 6
	xvpickve2gr.d	$a0, $xr17, 3
	vinsgr2vr.b	$vr9, $a0, 7
	xvslt.du	$xr15, $xr15, $xr19
	xvpickve2gr.d	$a0, $xr15, 0
	vinsgr2vr.b	$vr9, $a0, 8
	xvpickve2gr.d	$a0, $xr15, 1
	vinsgr2vr.b	$vr9, $a0, 9
	xvpickve2gr.d	$a0, $xr15, 2
	vinsgr2vr.b	$vr9, $a0, 10
	xvpickve2gr.d	$a0, $xr15, 3
	vinsgr2vr.b	$vr9, $a0, 11
	xvslt.du	$xr13, $xr13, $xr16
	xvpickve2gr.d	$a0, $xr13, 0
	vinsgr2vr.b	$vr9, $a0, 12
	xvpickve2gr.d	$a0, $xr13, 1
	vinsgr2vr.b	$vr9, $a0, 13
	xvpickve2gr.d	$a0, $xr13, 2
	vinsgr2vr.b	$vr9, $a0, 14
	xvpickve2gr.d	$a0, $xr13, 3
	vinsgr2vr.b	$vr9, $a0, 15
	xvslt.du	$xr11, $xr11, $xr14
	xvpickve2gr.d	$a0, $xr11, 0
	xvori.b	$xr13, $xr9, 0
	xvpermi.q	$xr13, $xr9, 1
	vinsgr2vr.b	$vr13, $a0, 0
	xvpermi.q	$xr9, $xr13, 2
	xvpickve2gr.d	$a0, $xr11, 1
	xvori.b	$xr13, $xr9, 0
	xvpermi.q	$xr13, $xr9, 1
	vinsgr2vr.b	$vr13, $a0, 1
	xvpermi.q	$xr9, $xr13, 2
	xvpickve2gr.d	$a0, $xr11, 2
	xvori.b	$xr13, $xr9, 0
	xvpermi.q	$xr13, $xr9, 1
	vinsgr2vr.b	$vr13, $a0, 2
	xvpermi.q	$xr9, $xr13, 2
	xvpickve2gr.d	$a0, $xr11, 3
	xvori.b	$xr11, $xr9, 0
	xvpermi.q	$xr11, $xr9, 1
	vinsgr2vr.b	$vr11, $a0, 3
	xvpermi.q	$xr9, $xr11, 2
	xvslt.du	$xr8, $xr8, $xr12
	xvpickve2gr.d	$a0, $xr8, 0
	xvori.b	$xr11, $xr9, 0
	xvpermi.q	$xr11, $xr9, 1
	vinsgr2vr.b	$vr11, $a0, 4
	xvpermi.q	$xr9, $xr11, 2
	xvpickve2gr.d	$a0, $xr8, 1
	xvori.b	$xr11, $xr9, 0
	xvpermi.q	$xr11, $xr9, 1
	vinsgr2vr.b	$vr11, $a0, 5
	xvpermi.q	$xr9, $xr11, 2
	xvpickve2gr.d	$a0, $xr8, 2
	xvori.b	$xr11, $xr9, 0
	xvpermi.q	$xr11, $xr9, 1
	vinsgr2vr.b	$vr11, $a0, 6
	xvpermi.q	$xr9, $xr11, 2
	xvpickve2gr.d	$a0, $xr8, 3
	xvori.b	$xr8, $xr9, 0
	xvpermi.q	$xr8, $xr9, 1
	vinsgr2vr.b	$vr8, $a0, 7
	xvpermi.q	$xr9, $xr8, 2
	xvslt.du	$xr4, $xr4, $xr10
	xvpickve2gr.d	$a0, $xr4, 0
	xvori.b	$xr8, $xr9, 0
	xvpermi.q	$xr8, $xr9, 1
	vinsgr2vr.b	$vr8, $a0, 8
	xvpermi.q	$xr9, $xr8, 2
	xvpickve2gr.d	$a0, $xr4, 1
	xvori.b	$xr8, $xr9, 0
	xvpermi.q	$xr8, $xr9, 1
	vinsgr2vr.b	$vr8, $a0, 9
	xvpermi.q	$xr9, $xr8, 2
	xvpickve2gr.d	$a0, $xr4, 2
	xvori.b	$xr8, $xr9, 0
	xvpermi.q	$xr8, $xr9, 1
	vinsgr2vr.b	$vr8, $a0, 10
	xvpermi.q	$xr9, $xr8, 2
	xvpickve2gr.d	$a0, $xr4, 3
	xvori.b	$xr4, $xr9, 0
	xvpermi.q	$xr4, $xr9, 1
	vinsgr2vr.b	$vr4, $a0, 11
	xvpermi.q	$xr9, $xr4, 2
	xvslt.du	$xr2, $xr2, $xr7
	xvpickve2gr.d	$a0, $xr2, 0
	xvori.b	$xr4, $xr9, 0
	xvpermi.q	$xr4, $xr9, 1
	vinsgr2vr.b	$vr4, $a0, 12
	xvpermi.q	$xr9, $xr4, 2
	xvpickve2gr.d	$a0, $xr2, 1
	xvori.b	$xr4, $xr9, 0
	xvpermi.q	$xr4, $xr9, 1
	vinsgr2vr.b	$vr4, $a0, 13
	xvpermi.q	$xr9, $xr4, 2
	xvpickve2gr.d	$a0, $xr2, 2
	xvori.b	$xr4, $xr9, 0
	xvpermi.q	$xr4, $xr9, 1
	vinsgr2vr.b	$vr4, $a0, 14
	xvpermi.q	$xr9, $xr4, 2
	xvpickve2gr.d	$a0, $xr2, 3
	xvori.b	$xr2, $xr9, 0
	xvpermi.q	$xr2, $xr9, 1
	vinsgr2vr.b	$vr2, $a0, 15
	xvinsgr2vr.d	$xr14, $t5, 0
	xvpermi.q	$xr9, $xr2, 2
	xvori.b	$xr11, $xr14, 0
	xvinsgr2vr.d	$xr11, $a7, 1
	xvinsgr2vr.d	$xr11, $t5, 2
	xvinsgr2vr.d	$xr11, $a1, 3
	xvori.b	$xr12, $xr14, 0
	xvinsgr2vr.d	$xr12, $ra, 1
	xvinsgr2vr.d	$xr12, $t5, 2
	xvinsgr2vr.d	$xr18, $t4, 0
	xvinsgr2vr.d	$xr12, $a2, 3
	xvori.b	$xr15, $xr18, 0
	xvinsgr2vr.d	$xr15, $a1, 1
	xvinsgr2vr.d	$xr15, $t5, 2
	xvinsgr2vr.d	$xr15, $t7, 3
	xvori.b	$xr17, $xr18, 0
	xvinsgr2vr.d	$xr17, $a2, 1
	xvinsgr2vr.d	$xr17, $t4, 2
	xvinsgr2vr.d	$xr17, $a7, 3
	xvinsgr2vr.d	$xr18, $t7, 1
	xvinsgr2vr.d	$xr18, $t4, 2
	xvinsgr2vr.d	$xr2, $a7, 0
	xvinsgr2vr.d	$xr18, $ra, 3
	xvori.b	$xr20, $xr2, 0
	xvinsgr2vr.d	$xr20, $t3, 1
	xvinsgr2vr.d	$xr20, $a1, 2
	xvinsgr2vr.d	$xr4, $ra, 0
	xvinsgr2vr.d	$xr20, $t5, 3
	xvori.b	$xr22, $xr4, 0
	xvinsgr2vr.d	$xr22, $t3, 1
	xvinsgr2vr.d	$xr22, $a2, 2
	xvinsgr2vr.d	$xr22, $t3, 3
	xvinsgr2vr.d	$xr14, $t3, 1
	xvinsgr2vr.d	$xr14, $t7, 2
	xvinsgr2vr.d	$xr7, $t1, 0
	xvinsgr2vr.d	$xr14, $t3, 3
	xvori.b	$xr13, $xr7, 0
	xvinsgr2vr.d	$xr13, $s1, 1
	xvinsgr2vr.d	$xr13, $s3, 2
	xvinsgr2vr.d	$xr8, $a4, 0
	xvinsgr2vr.d	$xr13, $s1, 3
	xvori.b	$xr16, $xr8, 0
	xvinsgr2vr.d	$xr16, $s1, 1
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	xvinsgr2vr.d	$xr16, $a0, 2
	xvinsgr2vr.d	$xr16, $s1, 3
	xvinsgr2vr.d	$xr19, $s3, 0
	xvinsgr2vr.d	$xr19, $s7, 1
	xvinsgr2vr.d	$xr19, $s8, 2
	st.d	$s1, $sp, 416                   # 8-byte Folded Spill
	xvinsgr2vr.d	$xr19, $s1, 3
	move	$s1, $s6
	move	$s6, $a0
	xvinsgr2vr.d	$xr21, $a0, 0
	xvinsgr2vr.d	$xr21, $s7, 1
	xvinsgr2vr.d	$xr21, $t1, 2
	xvinsgr2vr.d	$xr10, $s8, 0
	xvinsgr2vr.d	$xr21, $s7, 3
	xvori.b	$xr23, $xr10, 0
	xvinsgr2vr.d	$xr23, $s7, 1
	xvinsgr2vr.d	$xr23, $a4, 2
	xvinsgr2vr.d	$xr24, $s4, 0
	xvinsgr2vr.d	$xr23, $s7, 3
	xvori.b	$xr25, $xr24, 0
	xvinsgr2vr.d	$xr25, $s3, 1
	xvinsgr2vr.d	$xr25, $s4, 2
	st.d	$s7, $sp, 608                   # 8-byte Folded Spill
	xvinsgr2vr.d	$xr25, $s7, 3
	xvori.b	$xr26, $xr24, 0
	xvinsgr2vr.d	$xr26, $a0, 1
	xvinsgr2vr.d	$xr26, $s4, 2
	xvinsgr2vr.d	$xr26, $t1, 3
	xvinsgr2vr.d	$xr24, $s8, 1
	st.d	$s4, $sp, 616                   # 8-byte Folded Spill
	xvinsgr2vr.d	$xr24, $s4, 2
	xvinsgr2vr.d	$xr24, $a4, 3
	xvslt.du	$xr24, $xr14, $xr24
	xvpickve2gr.d	$a0, $xr24, 0
	vinsgr2vr.b	$vr14, $a0, 0
	xvpickve2gr.d	$a0, $xr24, 1
	vinsgr2vr.b	$vr14, $a0, 1
	xvpickve2gr.d	$a0, $xr24, 2
	vinsgr2vr.b	$vr14, $a0, 2
	xvpickve2gr.d	$a0, $xr24, 3
	vinsgr2vr.b	$vr14, $a0, 3
	xvslt.du	$xr22, $xr22, $xr26
	xvpickve2gr.d	$a0, $xr22, 0
	vinsgr2vr.b	$vr14, $a0, 4
	xvpickve2gr.d	$a0, $xr22, 1
	vinsgr2vr.b	$vr14, $a0, 5
	xvpickve2gr.d	$a0, $xr22, 2
	vinsgr2vr.b	$vr14, $a0, 6
	xvpickve2gr.d	$a0, $xr22, 3
	vinsgr2vr.b	$vr14, $a0, 7
	xvslt.du	$xr20, $xr20, $xr25
	xvpickve2gr.d	$a0, $xr20, 0
	vinsgr2vr.b	$vr14, $a0, 8
	xvpickve2gr.d	$a0, $xr20, 1
	vinsgr2vr.b	$vr14, $a0, 9
	xvpickve2gr.d	$a0, $xr20, 2
	vinsgr2vr.b	$vr14, $a0, 10
	xvpickve2gr.d	$a0, $xr20, 3
	vinsgr2vr.b	$vr14, $a0, 11
	xvslt.du	$xr18, $xr18, $xr23
	xvpickve2gr.d	$a0, $xr18, 0
	vinsgr2vr.b	$vr14, $a0, 12
	xvpickve2gr.d	$a0, $xr18, 1
	vinsgr2vr.b	$vr14, $a0, 13
	xvpickve2gr.d	$a0, $xr18, 2
	vinsgr2vr.b	$vr14, $a0, 14
	xvpickve2gr.d	$a0, $xr18, 3
	vinsgr2vr.b	$vr14, $a0, 15
	xvslt.du	$xr17, $xr17, $xr21
	xvpickve2gr.d	$a0, $xr17, 0
	xvori.b	$xr18, $xr14, 0
	xvpermi.q	$xr18, $xr14, 1
	vinsgr2vr.b	$vr18, $a0, 0
	xvpermi.q	$xr14, $xr18, 2
	xvpickve2gr.d	$a0, $xr17, 1
	xvori.b	$xr18, $xr14, 0
	xvpermi.q	$xr18, $xr14, 1
	vinsgr2vr.b	$vr18, $a0, 1
	xvpermi.q	$xr14, $xr18, 2
	xvpickve2gr.d	$a0, $xr17, 2
	xvori.b	$xr18, $xr14, 0
	xvpermi.q	$xr18, $xr14, 1
	vinsgr2vr.b	$vr18, $a0, 2
	xvpermi.q	$xr14, $xr18, 2
	xvpickve2gr.d	$a0, $xr17, 3
	xvori.b	$xr17, $xr14, 0
	xvpermi.q	$xr17, $xr14, 1
	vinsgr2vr.b	$vr17, $a0, 3
	xvpermi.q	$xr14, $xr17, 2
	xvslt.du	$xr15, $xr15, $xr19
	xvpickve2gr.d	$a0, $xr15, 0
	xvori.b	$xr17, $xr14, 0
	xvpermi.q	$xr17, $xr14, 1
	vinsgr2vr.b	$vr17, $a0, 4
	xvpermi.q	$xr14, $xr17, 2
	xvpickve2gr.d	$a0, $xr15, 1
	xvori.b	$xr17, $xr14, 0
	xvpermi.q	$xr17, $xr14, 1
	vinsgr2vr.b	$vr17, $a0, 5
	xvpermi.q	$xr14, $xr17, 2
	xvpickve2gr.d	$a0, $xr15, 2
	xvori.b	$xr17, $xr14, 0
	xvpermi.q	$xr17, $xr14, 1
	vinsgr2vr.b	$vr17, $a0, 6
	xvpermi.q	$xr14, $xr17, 2
	xvpickve2gr.d	$a0, $xr15, 3
	xvori.b	$xr15, $xr14, 0
	xvpermi.q	$xr15, $xr14, 1
	vinsgr2vr.b	$vr15, $a0, 7
	xvpermi.q	$xr14, $xr15, 2
	xvslt.du	$xr12, $xr12, $xr16
	xvpickve2gr.d	$a0, $xr12, 0
	xvori.b	$xr15, $xr14, 0
	xvpermi.q	$xr15, $xr14, 1
	vinsgr2vr.b	$vr15, $a0, 8
	xvpermi.q	$xr14, $xr15, 2
	xvpickve2gr.d	$a0, $xr12, 1
	xvori.b	$xr15, $xr14, 0
	xvpermi.q	$xr15, $xr14, 1
	vinsgr2vr.b	$vr15, $a0, 9
	xvpermi.q	$xr14, $xr15, 2
	xvpickve2gr.d	$a0, $xr12, 2
	xvori.b	$xr15, $xr14, 0
	xvpermi.q	$xr15, $xr14, 1
	vinsgr2vr.b	$vr15, $a0, 10
	xvpermi.q	$xr14, $xr15, 2
	xvpickve2gr.d	$a0, $xr12, 3
	xvori.b	$xr12, $xr14, 0
	xvpermi.q	$xr12, $xr14, 1
	vinsgr2vr.b	$vr12, $a0, 11
	xvpermi.q	$xr14, $xr12, 2
	xvslt.du	$xr11, $xr11, $xr13
	xvpickve2gr.d	$a0, $xr11, 0
	xvori.b	$xr12, $xr14, 0
	xvpermi.q	$xr12, $xr14, 1
	vinsgr2vr.b	$vr12, $a0, 12
	xvpermi.q	$xr14, $xr12, 2
	xvpickve2gr.d	$a0, $xr11, 1
	xvori.b	$xr12, $xr14, 0
	xvpermi.q	$xr12, $xr14, 1
	vinsgr2vr.b	$vr12, $a0, 13
	xvpermi.q	$xr14, $xr12, 2
	xvpickve2gr.d	$a0, $xr11, 2
	xvori.b	$xr12, $xr14, 0
	xvpermi.q	$xr12, $xr14, 1
	vinsgr2vr.b	$vr12, $a0, 14
	xvpermi.q	$xr14, $xr12, 2
	xvpickve2gr.d	$a0, $xr11, 3
	xvori.b	$xr11, $xr14, 0
	xvpermi.q	$xr11, $xr14, 1
	vinsgr2vr.b	$vr11, $a0, 15
	xvpermi.q	$xr14, $xr11, 2
	xvand.v	$xr9, $xr9, $xr14
	xvori.b	$xr11, $xr4, 0
	xvinsgr2vr.d	$xr11, $a5, 1
	xvinsgr2vr.d	$xr11, $a3, 2
	xvinsgr2vr.d	$xr11, $a5, 3
	xvori.b	$xr12, $xr4, 0
	xvinsgr2vr.d	$xr12, $a3, 1
	xvinsgr2vr.d	$xr12, $ra, 2
	xvinsgr2vr.d	$xr12, $t0, 3
	xvori.b	$xr14, $xr6, 0
	xvinsgr2vr.d	$xr14, $t0, 1
	xvinsgr2vr.d	$xr14, $t8, 2
	xvinsgr2vr.d	$xr14, $a5, 3
	xvori.b	$xr16, $xr6, 0
	xvinsgr2vr.d	$xr16, $a5, 1
	xvinsgr2vr.d	$xr16, $t8, 2
	xvinsgr2vr.d	$xr16, $a3, 3
	xvori.b	$xr17, $xr5, 0
	xvinsgr2vr.d	$xr17, $t7, 1
	xvinsgr2vr.d	$xr17, $t0, 2
	xvinsgr2vr.d	$xr17, $t7, 3
	xvori.b	$xr19, $xr6, 0
	xvinsgr2vr.d	$xr19, $t7, 1
	xvinsgr2vr.d	$xr19, $a5, 2
	xvinsgr2vr.d	$xr19, $t7, 3
	xvinsgr2vr.d	$xr5, $t6, 1
	xvinsgr2vr.d	$xr5, $t0, 2
	xvinsgr2vr.d	$xr5, $t6, 3
	xvinsgr2vr.d	$xr6, $t6, 1
	xvinsgr2vr.d	$xr6, $a5, 2
	xvinsgr2vr.d	$xr6, $t6, 3
	xvinsgr2vr.d	$xr13, $s2, 0
	xvinsgr2vr.d	$xr13, $s5, 1
	xvinsgr2vr.d	$xr13, $s6, 2
	xvinsgr2vr.d	$xr13, $t2, 3
	xvinsgr2vr.d	$xr15, $s5, 0
	xvinsgr2vr.d	$xr15, $s0, 1
	xvinsgr2vr.d	$xr15, $t2, 2
	xvinsgr2vr.d	$xr15, $s0, 3
	xvinsgr2vr.d	$xr3, $a4, 1
	xvinsgr2vr.d	$xr3, $s2, 2
	xvinsgr2vr.d	$xr3, $s0, 3
	xvori.b	$xr18, $xr0, 0
	xvinsgr2vr.d	$xr18, $a4, 1
	xvinsgr2vr.d	$xr18, $s5, 2
	xvinsgr2vr.d	$xr21, $s1, 0
	xvinsgr2vr.d	$xr18, $a4, 3
	xvori.b	$xr20, $xr21, 0
	xvinsgr2vr.d	$xr20, $t2, 1
	xvinsgr2vr.d	$xr20, $s1, 2
	xvinsgr2vr.d	$xr20, $s2, 3
	xvinsgr2vr.d	$xr21, $s0, 1
	xvinsgr2vr.d	$xr21, $s1, 2
	xvinsgr2vr.d	$xr21, $s5, 3
	xvori.b	$xr22, $xr10, 0
	xvinsgr2vr.d	$xr22, $t2, 1
	xvinsgr2vr.d	$xr22, $s8, 2
	st.d	$s2, $sp, 584                   # 8-byte Folded Spill
	xvinsgr2vr.d	$xr22, $s2, 3
	xvinsgr2vr.d	$xr10, $s0, 1
	xvinsgr2vr.d	$xr10, $s8, 2
	st.d	$s5, $sp, 504                   # 8-byte Folded Spill
	xvinsgr2vr.d	$xr10, $s5, 3
	xvslt.du	$xr10, $xr6, $xr10
	xvpickve2gr.d	$a0, $xr10, 0
	vinsgr2vr.b	$vr6, $a0, 0
	xvpickve2gr.d	$a0, $xr10, 1
	vinsgr2vr.b	$vr6, $a0, 1
	xvpickve2gr.d	$a0, $xr10, 2
	vinsgr2vr.b	$vr6, $a0, 2
	xvpickve2gr.d	$a0, $xr10, 3
	vinsgr2vr.b	$vr6, $a0, 3
	xvslt.du	$xr5, $xr5, $xr22
	xvpickve2gr.d	$a0, $xr5, 0
	vinsgr2vr.b	$vr6, $a0, 4
	xvpickve2gr.d	$a0, $xr5, 1
	vinsgr2vr.b	$vr6, $a0, 5
	xvpickve2gr.d	$a0, $xr5, 2
	vinsgr2vr.b	$vr6, $a0, 6
	xvpickve2gr.d	$a0, $xr5, 3
	vinsgr2vr.b	$vr6, $a0, 7
	xvslt.du	$xr5, $xr19, $xr21
	xvpickve2gr.d	$a0, $xr5, 0
	vinsgr2vr.b	$vr6, $a0, 8
	xvpickve2gr.d	$a0, $xr5, 1
	vinsgr2vr.b	$vr6, $a0, 9
	xvpickve2gr.d	$a0, $xr5, 2
	vinsgr2vr.b	$vr6, $a0, 10
	xvpickve2gr.d	$a0, $xr5, 3
	vinsgr2vr.b	$vr6, $a0, 11
	xvslt.du	$xr5, $xr17, $xr20
	xvpickve2gr.d	$a0, $xr5, 0
	vinsgr2vr.b	$vr6, $a0, 12
	xvpickve2gr.d	$a0, $xr5, 1
	vinsgr2vr.b	$vr6, $a0, 13
	xvpickve2gr.d	$a0, $xr5, 2
	vinsgr2vr.b	$vr6, $a0, 14
	xvpickve2gr.d	$a0, $xr5, 3
	vinsgr2vr.b	$vr6, $a0, 15
	xvslt.du	$xr5, $xr16, $xr18
	xvpickve2gr.d	$a0, $xr5, 0
	xvori.b	$xr10, $xr6, 0
	xvpermi.q	$xr10, $xr6, 1
	vinsgr2vr.b	$vr10, $a0, 0
	xvpermi.q	$xr6, $xr10, 2
	xvpickve2gr.d	$a0, $xr5, 1
	xvori.b	$xr10, $xr6, 0
	xvpermi.q	$xr10, $xr6, 1
	vinsgr2vr.b	$vr10, $a0, 1
	xvpermi.q	$xr6, $xr10, 2
	xvpickve2gr.d	$a0, $xr5, 2
	xvori.b	$xr10, $xr6, 0
	xvpermi.q	$xr10, $xr6, 1
	vinsgr2vr.b	$vr10, $a0, 2
	xvpermi.q	$xr6, $xr10, 2
	xvpickve2gr.d	$a0, $xr5, 3
	xvori.b	$xr5, $xr6, 0
	xvpermi.q	$xr5, $xr6, 1
	vinsgr2vr.b	$vr5, $a0, 3
	xvpermi.q	$xr6, $xr5, 2
	xvslt.du	$xr3, $xr14, $xr3
	xvpickve2gr.d	$a0, $xr3, 0
	xvori.b	$xr5, $xr6, 0
	xvpermi.q	$xr5, $xr6, 1
	vinsgr2vr.b	$vr5, $a0, 4
	xvpermi.q	$xr6, $xr5, 2
	xvpickve2gr.d	$a0, $xr3, 1
	xvori.b	$xr5, $xr6, 0
	xvpermi.q	$xr5, $xr6, 1
	vinsgr2vr.b	$vr5, $a0, 5
	xvpermi.q	$xr6, $xr5, 2
	xvpickve2gr.d	$a0, $xr3, 2
	xvori.b	$xr5, $xr6, 0
	xvpermi.q	$xr5, $xr6, 1
	vinsgr2vr.b	$vr5, $a0, 6
	xvpermi.q	$xr6, $xr5, 2
	xvpickve2gr.d	$a0, $xr3, 3
	xvori.b	$xr3, $xr6, 0
	xvpermi.q	$xr3, $xr6, 1
	vinsgr2vr.b	$vr3, $a0, 7
	xvpermi.q	$xr6, $xr3, 2
	xvslt.du	$xr3, $xr12, $xr15
	xvpickve2gr.d	$a0, $xr3, 0
	xvori.b	$xr5, $xr6, 0
	xvpermi.q	$xr5, $xr6, 1
	vinsgr2vr.b	$vr5, $a0, 8
	xvpermi.q	$xr6, $xr5, 2
	xvpickve2gr.d	$a0, $xr3, 1
	xvori.b	$xr5, $xr6, 0
	xvpermi.q	$xr5, $xr6, 1
	vinsgr2vr.b	$vr5, $a0, 9
	xvpermi.q	$xr6, $xr5, 2
	xvpickve2gr.d	$a0, $xr3, 2
	xvori.b	$xr5, $xr6, 0
	xvpermi.q	$xr5, $xr6, 1
	vinsgr2vr.b	$vr5, $a0, 10
	xvpermi.q	$xr6, $xr5, 2
	xvpickve2gr.d	$a0, $xr3, 3
	xvori.b	$xr3, $xr6, 0
	xvpermi.q	$xr3, $xr6, 1
	vinsgr2vr.b	$vr3, $a0, 11
	xvpermi.q	$xr6, $xr3, 2
	xvslt.du	$xr3, $xr11, $xr13
	xvpickve2gr.d	$a0, $xr3, 0
	xvori.b	$xr5, $xr6, 0
	xvpermi.q	$xr5, $xr6, 1
	vinsgr2vr.b	$vr5, $a0, 12
	xvpermi.q	$xr6, $xr5, 2
	xvpickve2gr.d	$a0, $xr3, 1
	xvori.b	$xr5, $xr6, 0
	xvpermi.q	$xr5, $xr6, 1
	vinsgr2vr.b	$vr5, $a0, 13
	xvpermi.q	$xr6, $xr5, 2
	xvpickve2gr.d	$a0, $xr3, 2
	xvori.b	$xr5, $xr6, 0
	xvpermi.q	$xr5, $xr6, 1
	vinsgr2vr.b	$vr5, $a0, 14
	xvpermi.q	$xr6, $xr5, 2
	xvpickve2gr.d	$a0, $xr3, 3
	xvori.b	$xr3, $xr6, 0
	xvpermi.q	$xr3, $xr6, 1
	vinsgr2vr.b	$vr3, $a0, 15
	xvpermi.q	$xr6, $xr3, 2
	xvinsgr2vr.d	$xr3, $a1, 0
	xvinsgr2vr.d	$xr3, $a2, 1
	xvinsgr2vr.d	$xr3, $a5, 2
	xvinsgr2vr.d	$xr3, $a7, 3
	xvinsgr2vr.d	$xr5, $a2, 0
	xvinsgr2vr.d	$xr5, $ra, 1
	xvinsgr2vr.d	$xr5, $a7, 2
	xvinsgr2vr.d	$xr5, $ra, 3
	xvinsgr2vr.d	$xr2, $t8, 1
	xvinsgr2vr.d	$xr2, $a1, 2
	xvinsgr2vr.d	$xr2, $ra, 3
	xvinsgr2vr.d	$xr4, $t8, 1
	xvinsgr2vr.d	$xr4, $a2, 2
	xvinsgr2vr.d	$xr13, $t7, 0
	xvinsgr2vr.d	$xr4, $t8, 3
	xvori.b	$xr12, $xr13, 0
	xvinsgr2vr.d	$xr12, $a7, 1
	xvinsgr2vr.d	$xr12, $t7, 2
	xvinsgr2vr.d	$xr12, $a1, 3
	xvinsgr2vr.d	$xr13, $ra, 1
	xvinsgr2vr.d	$xr13, $t7, 2
	xvinsgr2vr.d	$xr13, $a2, 3
	xvori.b	$xr16, $xr1, 0
	xvinsgr2vr.d	$xr16, $a7, 1
	xvinsgr2vr.d	$xr16, $t6, 2
	xvinsgr2vr.d	$xr16, $a1, 3
	xvinsgr2vr.d	$xr1, $ra, 1
	xvinsgr2vr.d	$xr1, $t6, 2
	xvinsgr2vr.d	$xr1, $a2, 3
	xvori.b	$xr10, $xr0, 0
	xvinsgr2vr.d	$xr10, $s6, 1
	xvinsgr2vr.d	$xr10, $t1, 2
	xvinsgr2vr.d	$xr10, $s6, 3
	xvinsgr2vr.d	$xr0, $t1, 1
	st.d	$s0, $sp, 568                   # 8-byte Folded Spill
	xvinsgr2vr.d	$xr0, $s0, 2
	xvinsgr2vr.d	$xr0, $s3, 3
	xvori.b	$xr11, $xr8, 0
	xvinsgr2vr.d	$xr11, $s3, 1
	xvinsgr2vr.d	$xr11, $a4, 2
	xvinsgr2vr.d	$xr11, $s6, 3
	xvori.b	$xr14, $xr8, 0
	xvinsgr2vr.d	$xr14, $s6, 1
	st.d	$a4, $sp, 576                   # 8-byte Folded Spill
	xvinsgr2vr.d	$xr14, $a4, 2
	st.d	$t1, $sp, 592                   # 8-byte Folded Spill
	xvinsgr2vr.d	$xr14, $t1, 3
	xvori.b	$xr15, $xr7, 0
	xvinsgr2vr.d	$xr15, $s1, 1
	xvinsgr2vr.d	$xr15, $s3, 2
	xvinsgr2vr.d	$xr15, $s1, 3
	xvori.b	$xr17, $xr8, 0
	xvinsgr2vr.d	$xr17, $s1, 1
	xvinsgr2vr.d	$xr17, $s6, 2
	xvinsgr2vr.d	$xr17, $s1, 3
	xvinsgr2vr.d	$xr7, $s8, 1
	xvinsgr2vr.d	$xr7, $s3, 2
	xvinsgr2vr.d	$xr7, $s8, 3
	xvinsgr2vr.d	$xr8, $s8, 1
	xvinsgr2vr.d	$xr8, $s6, 2
	st.d	$s8, $sp, 600                   # 8-byte Folded Spill
	xvinsgr2vr.d	$xr8, $s8, 3
	xvslt.du	$xr8, $xr1, $xr8
	xvpickve2gr.d	$a0, $xr8, 0
	vinsgr2vr.b	$vr1, $a0, 0
	xvpickve2gr.d	$a0, $xr8, 1
	vinsgr2vr.b	$vr1, $a0, 1
	xvpickve2gr.d	$a0, $xr8, 2
	vinsgr2vr.b	$vr1, $a0, 2
	xvpickve2gr.d	$a0, $xr8, 3
	vinsgr2vr.b	$vr1, $a0, 3
	xvslt.du	$xr7, $xr16, $xr7
	xvpickve2gr.d	$a0, $xr7, 0
	vinsgr2vr.b	$vr1, $a0, 4
	xvpickve2gr.d	$a0, $xr7, 1
	vinsgr2vr.b	$vr1, $a0, 5
	xvpickve2gr.d	$a0, $xr7, 2
	vinsgr2vr.b	$vr1, $a0, 6
	xvpickve2gr.d	$a0, $xr7, 3
	vinsgr2vr.b	$vr1, $a0, 7
	xvslt.du	$xr7, $xr13, $xr17
	xvpickve2gr.d	$a0, $xr7, 0
	vinsgr2vr.b	$vr1, $a0, 8
	xvpickve2gr.d	$a0, $xr7, 1
	vinsgr2vr.b	$vr1, $a0, 9
	xvpickve2gr.d	$a0, $xr7, 2
	vinsgr2vr.b	$vr1, $a0, 10
	xvpickve2gr.d	$a0, $xr7, 3
	vinsgr2vr.b	$vr1, $a0, 11
	xvslt.du	$xr7, $xr12, $xr15
	xvpickve2gr.d	$a0, $xr7, 0
	vinsgr2vr.b	$vr1, $a0, 12
	xvpickve2gr.d	$a0, $xr7, 1
	vinsgr2vr.b	$vr1, $a0, 13
	xvpickve2gr.d	$a0, $xr7, 2
	vinsgr2vr.b	$vr1, $a0, 14
	xvpickve2gr.d	$a0, $xr7, 3
	vinsgr2vr.b	$vr1, $a0, 15
	xvslt.du	$xr4, $xr4, $xr14
	xvpickve2gr.d	$a0, $xr4, 0
	xvori.b	$xr7, $xr1, 0
	xvpermi.q	$xr7, $xr1, 1
	vinsgr2vr.b	$vr7, $a0, 0
	xvpermi.q	$xr1, $xr7, 2
	xvpickve2gr.d	$a0, $xr4, 1
	xvori.b	$xr7, $xr1, 0
	xvpermi.q	$xr7, $xr1, 1
	vinsgr2vr.b	$vr7, $a0, 1
	xvpermi.q	$xr1, $xr7, 2
	xvpickve2gr.d	$a0, $xr4, 2
	xvori.b	$xr7, $xr1, 0
	xvpermi.q	$xr7, $xr1, 1
	vinsgr2vr.b	$vr7, $a0, 2
	xvpermi.q	$xr1, $xr7, 2
	xvpickve2gr.d	$a0, $xr4, 3
	xvori.b	$xr4, $xr1, 0
	xvpermi.q	$xr4, $xr1, 1
	vinsgr2vr.b	$vr4, $a0, 3
	xvpermi.q	$xr1, $xr4, 2
	xvslt.du	$xr2, $xr2, $xr11
	xvpickve2gr.d	$a0, $xr2, 0
	xvori.b	$xr4, $xr1, 0
	xvpermi.q	$xr4, $xr1, 1
	vinsgr2vr.b	$vr4, $a0, 4
	xvpermi.q	$xr1, $xr4, 2
	xvpickve2gr.d	$a0, $xr2, 1
	xvori.b	$xr4, $xr1, 0
	xvpermi.q	$xr4, $xr1, 1
	vinsgr2vr.b	$vr4, $a0, 5
	xvpermi.q	$xr1, $xr4, 2
	xvpickve2gr.d	$a0, $xr2, 2
	xvori.b	$xr4, $xr1, 0
	xvpermi.q	$xr4, $xr1, 1
	vinsgr2vr.b	$vr4, $a0, 6
	xvpermi.q	$xr1, $xr4, 2
	xvpickve2gr.d	$a0, $xr2, 3
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $a0, 7
	xvpermi.q	$xr1, $xr2, 2
	xvslt.du	$xr0, $xr5, $xr0
	xvpickve2gr.d	$a0, $xr0, 0
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $a0, 8
	xvpermi.q	$xr1, $xr2, 2
	xvpickve2gr.d	$a0, $xr0, 1
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $a0, 9
	xvpermi.q	$xr1, $xr2, 2
	xvpickve2gr.d	$a0, $xr0, 2
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $a0, 10
	xvpermi.q	$xr1, $xr2, 2
	xvpickve2gr.d	$a0, $xr0, 3
	xvori.b	$xr0, $xr1, 0
	xvpermi.q	$xr0, $xr1, 1
	vinsgr2vr.b	$vr0, $a0, 11
	xvpermi.q	$xr1, $xr0, 2
	xvslt.du	$xr0, $xr3, $xr10
	xvpickve2gr.d	$a0, $xr0, 0
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $a0, 12
	xvpermi.q	$xr1, $xr2, 2
	xvpickve2gr.d	$a0, $xr0, 1
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $a0, 13
	xvpermi.q	$xr1, $xr2, 2
	xvpickve2gr.d	$a0, $xr0, 2
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $a0, 14
	xvpermi.q	$xr1, $xr2, 2
	xvpickve2gr.d	$a0, $xr0, 3
	xvori.b	$xr0, $xr1, 0
	xvpermi.q	$xr0, $xr1, 1
	vinsgr2vr.b	$vr0, $a0, 15
	xvpermi.q	$xr1, $xr0, 2
	xvand.v	$xr0, $xr6, $xr1
	xvor.v	$xr0, $xr9, $xr0
	vpickve2gr.b	$a0, $vr0, 1
	andi	$a0, $a0, 1
	vpickve2gr.b	$t1, $vr0, 0
	bstrins.d	$t1, $a0, 63, 1
	vpickve2gr.b	$a0, $vr0, 2
	bstrins.d	$t1, $a0, 2, 2
	vpickve2gr.b	$a0, $vr0, 3
	bstrins.d	$t1, $a0, 3, 3
	vpickve2gr.b	$a0, $vr0, 4
	bstrins.d	$t1, $a0, 4, 4
	vpickve2gr.b	$a0, $vr0, 5
	bstrins.d	$t1, $a0, 5, 5
	vpickve2gr.b	$a0, $vr0, 6
	andi	$a0, $a0, 1
	slli.d	$a0, $a0, 6
	or	$a0, $t1, $a0
	vpickve2gr.b	$t1, $vr0, 7
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 7
	or	$a0, $a0, $t1
	vpickve2gr.b	$t1, $vr0, 8
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 8
	or	$a0, $a0, $t1
	vpickve2gr.b	$t1, $vr0, 9
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 9
	or	$a0, $a0, $t1
	vpickve2gr.b	$t1, $vr0, 10
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 10
	or	$a0, $a0, $t1
	vpickve2gr.b	$t1, $vr0, 11
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 11
	or	$a0, $a0, $t1
	vpickve2gr.b	$t1, $vr0, 12
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 12
	or	$a0, $a0, $t1
	vpickve2gr.b	$t1, $vr0, 13
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 13
	or	$a0, $a0, $t1
	vpickve2gr.b	$t1, $vr0, 14
	andi	$t1, $t1, 1
	slli.d	$t1, $t1, 14
	or	$a0, $a0, $t1
	xvst	$xr0, $sp, 704
	vpickve2gr.b	$t1, $vr0, 15
	andi	$t1, $t1, 1
	ld.bu	$s2, $sp, 720
	slli.d	$t1, $t1, 15
	or	$a0, $a0, $t1
	ld.bu	$t1, $sp, 721
	andi	$s2, $s2, 1
	slli.d	$s2, $s2, 16
	or	$a0, $a0, $s2
	andi	$t1, $t1, 1
	ld.bu	$s2, $sp, 722
	slli.d	$t1, $t1, 17
	or	$a0, $a0, $t1
	ld.bu	$t1, $sp, 723
	andi	$s2, $s2, 1
	slli.d	$s2, $s2, 18
	or	$a0, $a0, $s2
	andi	$t1, $t1, 1
	ld.bu	$s2, $sp, 724
	slli.d	$t1, $t1, 19
	or	$a0, $a0, $t1
	ld.bu	$t1, $sp, 725
	andi	$s2, $s2, 1
	slli.d	$s2, $s2, 20
	or	$a0, $a0, $s2
	andi	$t1, $t1, 1
	ld.bu	$s2, $sp, 726
	slli.d	$t1, $t1, 21
	or	$a0, $a0, $t1
	ld.bu	$t1, $sp, 727
	andi	$s2, $s2, 1
	slli.d	$s2, $s2, 22
	or	$a0, $a0, $s2
	andi	$t1, $t1, 1
	ld.bu	$s2, $sp, 728
	slli.d	$t1, $t1, 23
	or	$a0, $a0, $t1
	ld.bu	$t1, $sp, 729
	andi	$s2, $s2, 1
	slli.d	$s2, $s2, 24
	or	$a0, $a0, $s2
	andi	$t1, $t1, 1
	ld.bu	$s2, $sp, 730
	slli.d	$t1, $t1, 25
	or	$a0, $a0, $t1
	ld.bu	$t1, $sp, 731
	andi	$s2, $s2, 1
	slli.d	$s2, $s2, 26
	or	$a0, $a0, $s2
	andi	$t1, $t1, 1
	ld.bu	$s2, $sp, 732
	slli.d	$t1, $t1, 27
	or	$a0, $a0, $t1
	ld.bu	$t1, $sp, 733
	andi	$s2, $s2, 1
	slli.d	$s2, $s2, 28
	or	$a0, $a0, $s2
	andi	$t1, $t1, 1
	ld.bu	$s2, $sp, 734
	slli.d	$t1, $t1, 29
	or	$a0, $a0, $t1
	ld.b	$t1, $sp, 735
	andi	$s2, $s2, 1
	slli.d	$s2, $s2, 30
	or	$a0, $a0, $s2
	slli.d	$t1, $t1, 31
	or	$a0, $a0, $t1
	st.w	$a0, $sp, 748
	ld.w	$a0, $sp, 748
	move	$s4, $zero
	bnez	$a0, .LBB4_68
# %bb.17:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a0, $a6, $a0, 3
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$s8, $a6, $t1, 3
	ld.d	$t1, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$s2, $a6, $t1, 3
	ld.d	$t1, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$t1, $a6, $t1, 3
	sltu	$s7, $a0, $t1
	sltu	$s0, $s2, $s8
	and	$s0, $s7, $s0
	bnez	$s0, .LBB4_62
# %bb.18:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s0, $sp, 616                   # 8-byte Folded Reload
	sltu	$s0, $a0, $s0
	sltu	$s7, $t3, $s8
	and	$s0, $s0, $s7
	bnez	$s0, .LBB4_62
# %bb.19:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s0, $sp, 608                   # 8-byte Folded Reload
	sltu	$s0, $a0, $s0
	sltu	$s7, $t4, $s8
	and	$s0, $s0, $s7
	bnez	$s0, .LBB4_62
# %bb.20:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	move	$s5, $s3
	move	$s3, $t2
	ld.d	$t2, $sp, 416                   # 8-byte Folded Reload
	sltu	$s0, $a0, $t2
	sltu	$s7, $t5, $s8
	and	$s0, $s0, $s7
	bnez	$s0, .LBB4_62
# %bb.21:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s0, $sp, 600                   # 8-byte Folded Reload
	sltu	$s0, $a0, $s0
	sltu	$s7, $t6, $s8
	and	$s0, $s0, $s7
	bnez	$s0, .LBB4_62
# %bb.22:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$s0, $a0, $s1
	sltu	$s7, $t7, $s8
	and	$s0, $s0, $s7
	bnez	$s0, .LBB4_62
# %bb.23:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$a4, $sp, 576                   # 8-byte Folded Reload
	sltu	$s0, $a0, $a4
	sltu	$s7, $t8, $s8
	and	$s0, $s0, $s7
	bnez	$s0, .LBB4_62
# %bb.24:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s0, $sp, 568                   # 8-byte Folded Reload
	sltu	$s0, $a0, $s0
	sltu	$s7, $ra, $s8
	and	$s0, $s0, $s7
	bnez	$s0, .LBB4_62
# %bb.25:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$s0, $a0, $s6
	sltu	$s7, $a5, $s8
	and	$s0, $s0, $s7
	bnez	$s0, .LBB4_62
# %bb.26:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$a4, $sp, 504                   # 8-byte Folded Reload
	sltu	$s0, $a0, $a4
	sltu	$s7, $a2, $s8
	and	$s0, $s0, $s7
	bnez	$s0, .LBB4_62
# %bb.27:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s0, $sp, 592                   # 8-byte Folded Reload
	sltu	$s0, $a0, $s0
	sltu	$s7, $a3, $s8
	and	$s0, $s0, $s7
	bnez	$s0, .LBB4_62
# %bb.28:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$s0, $a0, $s3
	sltu	$s7, $a7, $s8
	and	$s0, $s0, $s7
	bnez	$s0, .LBB4_62
# %bb.29:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$s0, $a0, $s5
	sltu	$s7, $t0, $s8
	and	$s0, $s0, $s7
	bnez	$s0, .LBB4_62
# %bb.30:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s0, $sp, 584                   # 8-byte Folded Reload
	sltu	$s0, $a0, $s0
	sltu	$s7, $a1, $s8
	and	$s0, $s0, $s7
	bnez	$s0, .LBB4_62
# %bb.31:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s0, $sp, 616                   # 8-byte Folded Reload
	sltu	$s0, $s2, $s0
	sltu	$s7, $t3, $t1
	and	$s0, $s0, $s7
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	bnez	$s0, .LBB4_67
# %bb.32:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s0, $sp, 608                   # 8-byte Folded Reload
	sltu	$s0, $s2, $s0
	sltu	$s7, $t4, $t1
	and	$s0, $s0, $s7
	bnez	$s0, .LBB4_67
# %bb.33:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t2, $s2, $t2
	sltu	$s0, $t5, $t1
	and	$t2, $t2, $s0
	ld.d	$s7, $sp, 440                   # 8-byte Folded Reload
	bnez	$t2, .LBB4_63
# %bb.34:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$t2, $sp, 600                   # 8-byte Folded Reload
	sltu	$t2, $s2, $t2
	sltu	$s0, $t6, $t1
	and	$t2, $t2, $s0
	bnez	$t2, .LBB4_63
# %bb.35:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t2, $s2, $s1
	sltu	$s0, $t7, $t1
	and	$t2, $t2, $s0
	bnez	$t2, .LBB4_63
# %bb.36:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$a4, $sp, 576                   # 8-byte Folded Reload
	sltu	$t2, $s2, $a4
	sltu	$s0, $t8, $t1
	and	$t2, $t2, $s0
	bnez	$t2, .LBB4_63
# %bb.37:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$t2, $sp, 568                   # 8-byte Folded Reload
	sltu	$t2, $s2, $t2
	sltu	$s0, $ra, $t1
	and	$t2, $t2, $s0
	bnez	$t2, .LBB4_63
# %bb.38:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t2, $s2, $s6
	sltu	$s0, $a5, $t1
	and	$t2, $t2, $s0
	bnez	$t2, .LBB4_63
# %bb.39:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$a4, $sp, 504                   # 8-byte Folded Reload
	sltu	$t2, $s2, $a4
	sltu	$s0, $a2, $t1
	and	$t2, $t2, $s0
	bnez	$t2, .LBB4_63
# %bb.40:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$t2, $sp, 592                   # 8-byte Folded Reload
	sltu	$t2, $s2, $t2
	sltu	$s0, $a3, $t1
	and	$t2, $t2, $s0
	bnez	$t2, .LBB4_63
# %bb.41:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t2, $s2, $s3
	sltu	$s0, $a7, $t1
	and	$t2, $t2, $s0
	bnez	$t2, .LBB4_63
# %bb.42:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t2, $s2, $s5
	sltu	$s0, $t0, $t1
	and	$t2, $t2, $s0
	bnez	$t2, .LBB4_63
# %bb.43:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$t2, $sp, 584                   # 8-byte Folded Reload
	sltu	$t2, $s2, $t2
	sltu	$t1, $a1, $t1
	and	$t1, $t2, $t1
	bnez	$t1, .LBB4_63
# %bb.44:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$t1, $sp, 608                   # 8-byte Folded Reload
	sltu	$t1, $t3, $t1
	ld.d	$t2, $sp, 616                   # 8-byte Folded Reload
	sltu	$t2, $t4, $t2
	and	$t1, $t1, $t2
	bnez	$t1, .LBB4_63
# %bb.45:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t1, $t6, $s1
	ld.d	$t2, $sp, 600                   # 8-byte Folded Reload
	sltu	$t2, $t7, $t2
	and	$t1, $t1, $t2
	bnez	$t1, .LBB4_63
# %bb.46:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t1, $a5, $s5
	sltu	$t2, $t0, $s6
	and	$t1, $t1, $t2
	bnez	$t1, .LBB4_63
# %bb.47:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s1, $sp, 584                   # 8-byte Folded Reload
	sltu	$t1, $a5, $s1
	sltu	$t2, $a1, $s6
	and	$t1, $t1, $t2
	bnez	$t1, .LBB4_63
# %bb.48:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s0, $sp, 592                   # 8-byte Folded Reload
	sltu	$t1, $a2, $s0
	sltu	$t2, $a3, $a4
	and	$t1, $t1, $t2
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	bnez	$t1, .LBB4_61
# %bb.49:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t1, $a2, $s3
	sltu	$t2, $a7, $a4
	and	$t1, $t1, $t2
	bnez	$t1, .LBB4_61
# %bb.50:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t1, $a2, $s5
	sltu	$t2, $t0, $a4
	and	$t1, $t1, $t2
	bnez	$t1, .LBB4_61
# %bb.51:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t1, $a2, $s1
	sltu	$t2, $a1, $a4
	and	$t1, $t1, $t2
	bnez	$t1, .LBB4_61
# %bb.52:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t1, $a3, $s3
	sltu	$t2, $a7, $s0
	and	$t1, $t1, $t2
	bnez	$t1, .LBB4_61
# %bb.53:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t1, $a3, $s5
	sltu	$t2, $t0, $s0
	and	$t1, $t1, $t2
	bnez	$t1, .LBB4_61
# %bb.54:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t1, $a3, $s1
	sltu	$t2, $a1, $s0
	and	$t1, $t1, $t2
	bnez	$t1, .LBB4_61
# %bb.55:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t1, $a7, $s5
	sltu	$t2, $t0, $s3
	and	$t1, $t1, $t2
	bnez	$t1, .LBB4_61
# %bb.56:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t1, $a7, $s1
	sltu	$t2, $a1, $s3
	and	$t1, $t1, $t2
	bnez	$t1, .LBB4_61
# %bb.57:                               # %vector.memcheck943
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t1, $t0, $s1
	sltu	$a4, $a1, $s5
	and	$a4, $t1, $a4
	bnez	$a4, .LBB4_61
# %bb.58:                               # %vector.ph1425
                                        #   in Loop: Header=BB4_14 Depth=3
	move	$a4, $zero
	ld.d	$t1, $sp, 152                   # 8-byte Folded Reload
	add.d	$a6, $t1, $a6
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_59:                               # %vector.body1428
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_12 Depth=2
                                        #       Parent Loop BB4_14 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvldx	$xr0, $s2, $a4
	xvldx	$xr1, $t3, $a4
	xvldx	$xr2, $a0, $a4
	xvfadd.d	$xr0, $xr0, $xr1
	xvldx	$xr1, $t5, $a4
	xvldx	$xr3, $t6, $a4
	xvfadd.d	$xr0, $xr2, $xr0
	xvstx	$xr0, $a0, $a4
	xvldx	$xr0, $t4, $a4
	xvfadd.d	$xr1, $xr1, $xr3
	xvldx	$xr2, $t8, $a4
	xvldx	$xr3, $ra, $a4
	xvfadd.d	$xr0, $xr0, $xr1
	xvstx	$xr0, $t4, $a4
	xvldx	$xr0, $t7, $a4
	xvfadd.d	$xr1, $xr2, $xr3
	xvldx	$xr2, $a2, $a4
	xvldx	$xr3, $a3, $a4
	xvfadd.d	$xr0, $xr0, $xr1
	xvstx	$xr0, $t7, $a4
	xvldx	$xr0, $a5, $a4
	xvfadd.d	$xr1, $xr2, $xr3
	xvstx	$xr27, $s2, $a4
	xvstx	$xr27, $t3, $a4
	xvfadd.d	$xr0, $xr0, $xr1
	xvstx	$xr0, $a5, $a4
	xvldx	$xr0, $t0, $a4
	xvldx	$xr1, $a1, $a4
	xvstx	$xr27, $t5, $a4
	xvstx	$xr27, $t6, $a4
	xvstx	$xr27, $t8, $a4
	xvfadd.d	$xr0, $xr0, $xr1
	xvldx	$xr1, $a7, $a4
	xvstx	$xr27, $ra, $a4
	xvstx	$xr27, $a2, $a4
	xvstx	$xr27, $a3, $a4
	xvfadd.d	$xr0, $xr1, $xr0
	xvstx	$xr0, $a7, $a4
	xvstx	$xr27, $t0, $a4
	xvstx	$xr27, $a1, $a4
	addi.d	$a4, $a4, 32
	bne	$t1, $a4, .LBB4_59
# %bb.60:                               # %middle.block1447
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	move	$s4, $a1
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB4_13
	b	.LBB4_65
.LBB4_61:                               #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	b	.LBB4_64
.LBB4_62:                               #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s7, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
.LBB4_63:                               #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
.LBB4_64:                               # %scalar.ph1423.preheader
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$ra, $sp, 272                   # 8-byte Folded Reload
.LBB4_65:                               # %scalar.ph1423.preheader
                                        #   in Loop: Header=BB4_14 Depth=3
	slli.d	$a0, $a6, 3
	ld.d	$a1, $sp, 632                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $s4
	ld.d	$a2, $sp, 552                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 520                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 560                   # 8-byte Folded Reload
	move	$a5, $s6
	ld.d	$a7, $sp, 528                   # 8-byte Folded Reload
	move	$t0, $s3
	move	$t1, $s5
	ld.d	$t2, $sp, 536                   # 8-byte Folded Reload
	move	$t3, $s2
	move	$t4, $s1
	ld.d	$t5, $sp, 544                   # 8-byte Folded Reload
	move	$t6, $s8
	ld.d	$t7, $sp, 512                   # 8-byte Folded Reload
	move	$t8, $ra
	move	$s0, $s7
	.p2align	4, , 16
.LBB4_66:                               # %scalar.ph1423
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_12 Depth=2
                                        #       Parent Loop BB4_14 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $s0, $a0
	fldx.d	$fa1, $t8, $a0
	fldx.d	$fa2, $t7, $a0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t7, $a0
	stx.d	$zero, $s0, $a0
	stx.d	$zero, $t8, $a0
	fldx.d	$fa0, $t6, $a0
	fldx.d	$fa1, $t5, $a0
	fldx.d	$fa2, $t4, $a0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t4, $a0
	stx.d	$zero, $t6, $a0
	stx.d	$zero, $t5, $a0
	fldx.d	$fa0, $t3, $a0
	fldx.d	$fa1, $t2, $a0
	fldx.d	$fa2, $t1, $a0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t1, $a0
	stx.d	$zero, $t3, $a0
	stx.d	$zero, $t2, $a0
	fldx.d	$fa0, $t0, $a0
	fldx.d	$fa1, $a7, $a0
	fldx.d	$fa2, $a5, $a0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $a5, $a0
	stx.d	$zero, $t0, $a0
	stx.d	$zero, $a7, $a0
	fldx.d	$fa0, $a4, $a0
	fldx.d	$fa1, $a3, $a0
	fldx.d	$fa2, $a2, $a0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $a2, $a0
	stx.d	$zero, $a4, $a0
	stx.d	$zero, $a3, $a0
	addi.d	$a6, $a6, 1
	addi.d	$s0, $s0, 8
	addi.d	$t8, $t8, 8
	addi.d	$t7, $t7, 8
	addi.d	$t6, $t6, 8
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 8
	addi.d	$t2, $t2, 8
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, 8
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB4_66
	b	.LBB4_13
.LBB4_67:                               #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s7, $sp, 440                   # 8-byte Folded Reload
	b	.LBB4_63
.LBB4_68:                               #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 440                   # 8-byte Folded Reload
	b	.LBB4_65
	.p2align	4, , 16
.LBB4_69:                               # %._crit_edge
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ori	$a1, $zero, 27
	bne	$a0, $a1, .LBB4_3
# %bb.70:                               #   in Loop: Header=BB4_4 Depth=1
	addi.d	$a1, $sp, 752
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	xvst	$xr27, $sp, 448                 # 32-byte Folded Spill
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	xvld	$xr31, $sp, 448                 # 32-byte Folded Reload
	ld.w	$a0, $sp, 752
	ld.w	$s0, $sp, 756
	ld.w	$a3, $sp, 760
	slt	$a1, $a0, $s0
	masknez	$a2, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$a1, $a1, $a2
	slt	$a2, $a1, $a3
	masknez	$a1, $a1, $a2
	st.d	$a3, $sp, 512                   # 8-byte Folded Spill
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB4_3
# %bb.71:                               # %.preheader486.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 512                   # 8-byte Folded Reload
	blt	$a2, $a1, .LBB4_3
# %bb.72:                               # %.preheader486.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	ori	$a1, $zero, 1
	blt	$s0, $a1, .LBB4_3
# %bb.73:                               # %.preheader486.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB4_3
# %bb.74:                               # %.preheader484.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$t2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a1, $t2, 4
	ld.w	$a2, $t2, 16
	move	$t3, $zero
	ld.w	$a3, $t2, 0
	sub.w	$a2, $a2, $a1
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	slt	$a4, $a6, $a2
	maskeqz	$a2, $a2, $a4
	ld.w	$a5, $t2, 12
	masknez	$a4, $a6, $a4
	or	$a2, $a2, $a4
	addi.d	$a2, $a2, 1
	sub.w	$a4, $a5, $a3
	slt	$a5, $a6, $a4
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $a6, $a5
	or	$a4, $a4, $a5
	addi.d	$a5, $a4, 1
	sub.d	$a4, $a5, $a0
	sub.d	$a6, $a2, $s0
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a7, $t1, 0
	ld.w	$t0, $t1, 4
	ld.w	$t1, $t1, 8
	ld.w	$t2, $t2, 8
	mulw.d.w	$a6, $a5, $a6
	st.d	$a6, $sp, 504                   # 8-byte Folded Spill
	sub.d	$a3, $a7, $a3
	sub.d	$a1, $t0, $a1
	sub.d	$a6, $t1, $t2
	mul.d	$a2, $a2, $a6
	add.d	$a1, $a1, $a2
	mul.d	$a1, $a1, $a5
	add.w	$a6, $a3, $a1
	addi.d	$a1, $a0, -1
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 624                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 616                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 608                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 600                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 592                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 584                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 576                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 568                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 560                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 552                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 544                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 536                   # 8-byte Folded Spill
	bstrpick.d	$a1, $a0, 30, 2
	slli.d	$a1, $a1, 2
	st.d	$a1, $sp, 528                   # 8-byte Folded Spill
	slli.d	$a1, $a0, 3
	bstrpick.d	$a1, $a1, 33, 5
	slli.d	$s3, $a1, 5
	st.d	$a4, $sp, 632                   # 8-byte Folded Spill
	b	.LBB4_76
	.p2align	4, , 16
.LBB4_75:                               # %._crit_edge542.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_76 Depth=2
	ld.d	$t3, $sp, 520                   # 8-byte Folded Reload
	addi.w	$t3, $t3, 1
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	add.w	$a6, $a6, $a1
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	beq	$t3, $a1, .LBB4_3
.LBB4_76:                               # %.preheader484.us.us.us.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_78 Depth 3
                                        #         Child Loop BB4_84 Depth 4
                                        #         Child Loop BB4_88 Depth 4
	st.d	$t3, $sp, 520                   # 8-byte Folded Spill
	move	$s4, $zero
	b	.LBB4_78
	.p2align	4, , 16
.LBB4_77:                               # %._crit_edge539.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_78 Depth=3
	addi.w	$s4, $s4, 1
	add.w	$a6, $a4, $a6
	beq	$s4, $s0, .LBB4_75
.LBB4_78:                               # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_76 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_84 Depth 4
                                        #         Child Loop BB4_88 Depth 4
	ori	$a1, $zero, 32
	bgeu	$a0, $a1, .LBB4_80
# %bb.79:                               #   in Loop: Header=BB4_78 Depth=3
	move	$t5, $zero
	b	.LBB4_87
	.p2align	4, , 16
.LBB4_80:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_78 Depth=3
	move	$a4, $s0
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$s5, $a6, $a1, 3
	ld.d	$a1, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$s6, $a6, $a2, 3
	ld.d	$a2, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$s0, $a6, $a2, 3
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$s7, $a6, $a2, 3
	ld.d	$a2, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$t7, $a6, $a2, 3
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$s8, $a6, $a2, 3
	ld.d	$a2, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$t1, $a6, $a2, 3
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$ra, $a6, $a2, 3
	ld.d	$a2, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$t5, $a6, $a2, 3
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a5, $a6, $a2, 3
	ld.d	$a2, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$t8, $a6, $a2, 3
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$a2, $a6, $a2, 3
	ld.d	$a3, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$t2, $a6, $a3, 3
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a3, $a6, $a3, 3
	ld.d	$a7, $sp, 568                   # 8-byte Folded Reload
	alsl.d	$s1, $a6, $a7, 3
	ld.d	$a7, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$a7, $a6, $a7, 3
	ld.d	$t0, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$t6, $a6, $t0, 3
	ld.d	$t0, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$s2, $a6, $t0, 3
	ld.d	$t0, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$t0, $a6, $t0, 3
	xvinsgr2vr.d	$xr3, $t0, 0
	ld.d	$t3, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$t3, $a6, $t3, 3
	xvori.b	$xr6, $xr3, 0
	xvinsgr2vr.d	$xr6, $s7, 1
	xvinsgr2vr.d	$xr6, $ra, 2
	xvinsgr2vr.d	$xr4, $a2, 0
	xvinsgr2vr.d	$xr6, $s8, 3
	xvori.b	$xr7, $xr4, 0
	xvinsgr2vr.d	$xr7, $s7, 1
	xvinsgr2vr.d	$xr7, $a7, 2
	xvinsgr2vr.d	$xr15, $s6, 0
	xvinsgr2vr.d	$xr7, $s7, 3
	xvori.b	$xr11, $xr15, 0
	xvinsgr2vr.d	$xr11, $s7, 1
	xvinsgr2vr.d	$xr11, $ra, 2
	xvinsgr2vr.d	$xr11, $s7, 3
	xvori.b	$xr13, $xr15, 0
	xvinsgr2vr.d	$xr13, $a7, 1
	xvinsgr2vr.d	$xr13, $s6, 2
	xvinsgr2vr.d	$xr13, $t0, 3
	xvori.b	$xr17, $xr15, 0
	xvinsgr2vr.d	$xr17, $ra, 1
	xvinsgr2vr.d	$xr17, $s6, 2
	xvinsgr2vr.d	$xr2, $s5, 0
	xvinsgr2vr.d	$xr17, $a2, 3
	xvori.b	$xr18, $xr2, 0
	xvinsgr2vr.d	$xr18, $t0, 1
	xvinsgr2vr.d	$xr18, $s5, 2
	xvinsgr2vr.d	$xr18, $s7, 3
	xvori.b	$xr20, $xr2, 0
	xvinsgr2vr.d	$xr20, $a2, 1
	xvinsgr2vr.d	$xr20, $s5, 2
	xvinsgr2vr.d	$xr20, $a7, 3
	xvinsgr2vr.d	$xr2, $s7, 1
	xvinsgr2vr.d	$xr2, $s5, 2
	xvinsgr2vr.d	$xr12, $t7, 0
	xvinsgr2vr.d	$xr2, $ra, 3
	xvori.b	$xr8, $xr12, 0
	xvinsgr2vr.d	$xr8, $t3, 1
	xvinsgr2vr.d	$xr8, $t1, 2
	xvinsgr2vr.d	$xr8, $t8, 3
	xvinsgr2vr.d	$xr12, $s1, 1
	xvinsgr2vr.d	$xr12, $t7, 2
	xvinsgr2vr.d	$xr10, $t3, 0
	xvinsgr2vr.d	$xr12, $s2, 3
	xvori.b	$xr14, $xr10, 0
	xvinsgr2vr.d	$xr14, $t1, 1
	xvinsgr2vr.d	$xr14, $t7, 2
	xvinsgr2vr.d	$xr0, $s1, 0
	xvinsgr2vr.d	$xr14, $t8, 3
	xvori.b	$xr19, $xr0, 0
	xvinsgr2vr.d	$xr19, $s0, 1
	xvinsgr2vr.d	$xr19, $s2, 2
	xvinsgr2vr.d	$xr1, $t1, 0
	xvinsgr2vr.d	$xr19, $s0, 3
	xvori.b	$xr21, $xr1, 0
	xvinsgr2vr.d	$xr21, $s0, 1
	xvinsgr2vr.d	$xr21, $t8, 2
	xvinsgr2vr.d	$xr5, $s2, 0
	xvinsgr2vr.d	$xr21, $s0, 3
	xvori.b	$xr22, $xr5, 0
	xvinsgr2vr.d	$xr22, $a1, 1
	xvinsgr2vr.d	$xr22, $t3, 2
	xvinsgr2vr.d	$xr9, $t8, 0
	xvinsgr2vr.d	$xr22, $s0, 3
	xvori.b	$xr23, $xr9, 0
	xvinsgr2vr.d	$xr23, $a1, 1
	xvinsgr2vr.d	$xr23, $s1, 2
	xvinsgr2vr.d	$xr16, $s0, 0
	xvinsgr2vr.d	$xr23, $a1, 3
	xvori.b	$xr24, $xr16, 0
	xvinsgr2vr.d	$xr24, $a1, 1
	xvinsgr2vr.d	$xr24, $t1, 2
	xvinsgr2vr.d	$xr24, $a1, 3
	xvslt.du	$xr24, $xr2, $xr24
	xvpickve2gr.d	$t4, $xr24, 0
	vinsgr2vr.b	$vr2, $t4, 0
	xvpickve2gr.d	$t4, $xr24, 1
	vinsgr2vr.b	$vr2, $t4, 1
	xvpickve2gr.d	$t4, $xr24, 2
	vinsgr2vr.b	$vr2, $t4, 2
	xvpickve2gr.d	$t4, $xr24, 3
	vinsgr2vr.b	$vr2, $t4, 3
	xvslt.du	$xr20, $xr20, $xr23
	xvpickve2gr.d	$t4, $xr20, 0
	vinsgr2vr.b	$vr2, $t4, 4
	xvpickve2gr.d	$t4, $xr20, 1
	vinsgr2vr.b	$vr2, $t4, 5
	xvpickve2gr.d	$t4, $xr20, 2
	vinsgr2vr.b	$vr2, $t4, 6
	xvpickve2gr.d	$t4, $xr20, 3
	vinsgr2vr.b	$vr2, $t4, 7
	xvslt.du	$xr18, $xr18, $xr22
	xvpickve2gr.d	$t4, $xr18, 0
	vinsgr2vr.b	$vr2, $t4, 8
	xvpickve2gr.d	$t4, $xr18, 1
	vinsgr2vr.b	$vr2, $t4, 9
	xvpickve2gr.d	$t4, $xr18, 2
	vinsgr2vr.b	$vr2, $t4, 10
	xvpickve2gr.d	$t4, $xr18, 3
	vinsgr2vr.b	$vr2, $t4, 11
	xvslt.du	$xr17, $xr17, $xr21
	xvpickve2gr.d	$t4, $xr17, 0
	vinsgr2vr.b	$vr2, $t4, 12
	xvpickve2gr.d	$t4, $xr17, 1
	vinsgr2vr.b	$vr2, $t4, 13
	xvpickve2gr.d	$t4, $xr17, 2
	vinsgr2vr.b	$vr2, $t4, 14
	xvpickve2gr.d	$t4, $xr17, 3
	vinsgr2vr.b	$vr2, $t4, 15
	xvslt.du	$xr13, $xr13, $xr19
	xvpickve2gr.d	$t4, $xr13, 0
	xvori.b	$xr17, $xr2, 0
	xvpermi.q	$xr17, $xr2, 1
	vinsgr2vr.b	$vr17, $t4, 0
	xvpermi.q	$xr2, $xr17, 2
	xvpickve2gr.d	$t4, $xr13, 1
	xvori.b	$xr17, $xr2, 0
	xvpermi.q	$xr17, $xr2, 1
	vinsgr2vr.b	$vr17, $t4, 1
	xvpermi.q	$xr2, $xr17, 2
	xvpickve2gr.d	$t4, $xr13, 2
	xvori.b	$xr17, $xr2, 0
	xvpermi.q	$xr17, $xr2, 1
	vinsgr2vr.b	$vr17, $t4, 2
	xvpermi.q	$xr2, $xr17, 2
	xvpickve2gr.d	$t4, $xr13, 3
	xvori.b	$xr13, $xr2, 0
	xvpermi.q	$xr13, $xr2, 1
	vinsgr2vr.b	$vr13, $t4, 3
	xvpermi.q	$xr2, $xr13, 2
	xvslt.du	$xr11, $xr11, $xr14
	xvpickve2gr.d	$t4, $xr11, 0
	xvori.b	$xr13, $xr2, 0
	xvpermi.q	$xr13, $xr2, 1
	vinsgr2vr.b	$vr13, $t4, 4
	xvpermi.q	$xr2, $xr13, 2
	xvpickve2gr.d	$t4, $xr11, 1
	xvori.b	$xr13, $xr2, 0
	xvpermi.q	$xr13, $xr2, 1
	vinsgr2vr.b	$vr13, $t4, 5
	xvpermi.q	$xr2, $xr13, 2
	xvpickve2gr.d	$t4, $xr11, 2
	xvori.b	$xr13, $xr2, 0
	xvpermi.q	$xr13, $xr2, 1
	vinsgr2vr.b	$vr13, $t4, 6
	xvpermi.q	$xr2, $xr13, 2
	xvpickve2gr.d	$t4, $xr11, 3
	xvori.b	$xr11, $xr2, 0
	xvpermi.q	$xr11, $xr2, 1
	vinsgr2vr.b	$vr11, $t4, 7
	xvpermi.q	$xr2, $xr11, 2
	xvslt.du	$xr7, $xr7, $xr12
	xvpickve2gr.d	$t4, $xr7, 0
	xvori.b	$xr11, $xr2, 0
	xvpermi.q	$xr11, $xr2, 1
	vinsgr2vr.b	$vr11, $t4, 8
	xvpermi.q	$xr2, $xr11, 2
	xvpickve2gr.d	$t4, $xr7, 1
	xvori.b	$xr11, $xr2, 0
	xvpermi.q	$xr11, $xr2, 1
	vinsgr2vr.b	$vr11, $t4, 9
	xvpermi.q	$xr2, $xr11, 2
	xvpickve2gr.d	$t4, $xr7, 2
	xvori.b	$xr11, $xr2, 0
	xvpermi.q	$xr11, $xr2, 1
	vinsgr2vr.b	$vr11, $t4, 10
	xvpermi.q	$xr2, $xr11, 2
	xvpickve2gr.d	$t4, $xr7, 3
	xvori.b	$xr7, $xr2, 0
	xvpermi.q	$xr7, $xr2, 1
	vinsgr2vr.b	$vr7, $t4, 11
	xvpermi.q	$xr2, $xr7, 2
	xvslt.du	$xr6, $xr6, $xr8
	xvpickve2gr.d	$t4, $xr6, 0
	xvori.b	$xr7, $xr2, 0
	xvpermi.q	$xr7, $xr2, 1
	vinsgr2vr.b	$vr7, $t4, 12
	xvpermi.q	$xr2, $xr7, 2
	xvpickve2gr.d	$t4, $xr6, 1
	xvori.b	$xr7, $xr2, 0
	xvpermi.q	$xr7, $xr2, 1
	vinsgr2vr.b	$vr7, $t4, 13
	xvpermi.q	$xr2, $xr7, 2
	xvpickve2gr.d	$t4, $xr6, 2
	xvori.b	$xr7, $xr2, 0
	xvpermi.q	$xr7, $xr2, 1
	vinsgr2vr.b	$vr7, $t4, 14
	xvpermi.q	$xr2, $xr7, 2
	xvpickve2gr.d	$t4, $xr6, 3
	xvori.b	$xr11, $xr2, 0
	xvpermi.q	$xr11, $xr2, 1
	vinsgr2vr.b	$vr11, $t4, 15
	ld.d	$t4, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$t4, $a6, $t4, 3
	xvori.b	$xr22, $xr16, 0
	xvori.b	$xr23, $xr16, 0
	xvinsgr2vr.d	$xr23, $t6, 1
	xvinsgr2vr.d	$xr23, $s0, 2
	xvinsgr2vr.d	$xr16, $t5, 1
	xvinsgr2vr.d	$xr16, $s0, 2
	ld.d	$s0, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$s0, $a6, $s0, 3
	xvinsgr2vr.d	$xr6, $s0, 0
	xvinsgr2vr.d	$xr20, $s7, 0
	xvori.b	$xr18, $xr6, 0
	xvinsgr2vr.d	$xr8, $t2, 0
	xvinsgr2vr.d	$xr18, $t7, 1
	xvori.b	$xr21, $xr8, 0
	xvinsgr2vr.d	$xr21, $t7, 1
	xvinsgr2vr.d	$xr21, $t6, 2
	xvinsgr2vr.d	$xr21, $t7, 3
	xvinsgr2vr.d	$xr22, $t7, 1
	xvinsgr2vr.d	$xr22, $t5, 2
	xvinsgr2vr.d	$xr29, $a1, 0
	xvinsgr2vr.d	$xr22, $t7, 3
	xvori.b	$xr26, $xr29, 0
	xvinsgr2vr.d	$xr26, $s0, 1
	xvinsgr2vr.d	$xr26, $a1, 2
	xvinsgr2vr.d	$xr26, $t7, 3
	xvori.b	$xr28, $xr29, 0
	xvinsgr2vr.d	$xr29, $t7, 1
	ld.d	$t7, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$t7, $a6, $t7, 3
	xvori.b	$xr19, $xr20, 0
	xvinsgr2vr.d	$xr19, $t7, 1
	xvinsgr2vr.d	$xr19, $s8, 2
	xvinsgr2vr.d	$xr19, $a5, 3
	xvinsgr2vr.d	$xr20, $a3, 1
	xvinsgr2vr.d	$xr20, $s7, 2
	xvinsgr2vr.d	$xr13, $t7, 0
	xvinsgr2vr.d	$xr20, $t4, 3
	xvori.b	$xr24, $xr13, 0
	xvinsgr2vr.d	$xr24, $s8, 1
	xvinsgr2vr.d	$xr24, $s7, 2
	xvinsgr2vr.d	$xr14, $a3, 0
	xvinsgr2vr.d	$xr24, $a5, 3
	xvori.b	$xr25, $xr14, 0
	xvinsgr2vr.d	$xr25, $s6, 1
	xvinsgr2vr.d	$xr25, $t4, 2
	xvinsgr2vr.d	$xr17, $s8, 0
	xvinsgr2vr.d	$xr25, $s6, 3
	xvori.b	$xr27, $xr17, 0
	xvinsgr2vr.d	$xr27, $s6, 1
	xvinsgr2vr.d	$xr27, $a5, 2
	xvinsgr2vr.d	$xr7, $t4, 0
	xvinsgr2vr.d	$xr27, $s6, 3
	xvori.b	$xr30, $xr7, 0
	xvinsgr2vr.d	$xr30, $s5, 1
	xvinsgr2vr.d	$xr30, $t7, 2
	xvinsgr2vr.d	$xr30, $s6, 3
	xvinsgr2vr.d	$xr12, $a5, 0
	xvinsgr2vr.d	$xr15, $s5, 1
	xvinsgr2vr.d	$xr15, $s8, 2
	xvinsgr2vr.d	$xr15, $s5, 3
	xvinsgr2vr.d	$xr28, $t2, 1
	xvinsgr2vr.d	$xr28, $a1, 2
	xvinsgr2vr.d	$xr29, $a1, 2
	xvinsgr2vr.d	$xr29, $t5, 3
	xvslt.du	$xr29, $xr15, $xr29
	xvpickve2gr.d	$a1, $xr29, 0
	vinsgr2vr.b	$vr15, $a1, 0
	xvpickve2gr.d	$a1, $xr29, 1
	vinsgr2vr.b	$vr15, $a1, 1
	xvpickve2gr.d	$a1, $xr29, 2
	vinsgr2vr.b	$vr15, $a1, 2
	xvpickve2gr.d	$a1, $xr29, 3
	xvori.b	$xr29, $xr12, 0
	xvinsgr2vr.d	$xr29, $s5, 1
	xvinsgr2vr.d	$xr29, $a3, 2
	xvinsgr2vr.d	$xr29, $s5, 3
	xvinsgr2vr.d	$xr18, $t5, 2
	xvinsgr2vr.d	$xr18, $t1, 3
	xvinsgr2vr.d	$xr23, $s0, 3
	xvinsgr2vr.d	$xr16, $t2, 3
	xvinsgr2vr.d	$xr28, $t6, 3
	vinsgr2vr.b	$vr15, $a1, 3
	xvslt.du	$xr28, $xr29, $xr28
	xvpickve2gr.d	$a1, $xr28, 0
	vinsgr2vr.b	$vr15, $a1, 4
	xvpickve2gr.d	$a1, $xr28, 1
	vinsgr2vr.b	$vr15, $a1, 5
	xvpickve2gr.d	$a1, $xr28, 2
	vinsgr2vr.b	$vr15, $a1, 6
	xvpickve2gr.d	$a1, $xr28, 3
	vinsgr2vr.b	$vr15, $a1, 7
	xvslt.du	$xr26, $xr30, $xr26
	xvpickve2gr.d	$a1, $xr26, 0
	vinsgr2vr.b	$vr15, $a1, 8
	xvpickve2gr.d	$a1, $xr26, 1
	vinsgr2vr.b	$vr15, $a1, 9
	xvpickve2gr.d	$a1, $xr26, 2
	vinsgr2vr.b	$vr15, $a1, 10
	xvpickve2gr.d	$a1, $xr26, 3
	vinsgr2vr.b	$vr15, $a1, 11
	xvslt.du	$xr16, $xr27, $xr16
	xvpickve2gr.d	$a1, $xr16, 0
	vinsgr2vr.b	$vr15, $a1, 12
	xvpickve2gr.d	$a1, $xr16, 1
	vinsgr2vr.b	$vr15, $a1, 13
	xvpickve2gr.d	$a1, $xr16, 2
	vinsgr2vr.b	$vr15, $a1, 14
	xvpickve2gr.d	$a1, $xr16, 3
	vinsgr2vr.b	$vr15, $a1, 15
	xvslt.du	$xr16, $xr25, $xr23
	xvpickve2gr.d	$a1, $xr16, 0
	xvori.b	$xr23, $xr15, 0
	xvpermi.q	$xr23, $xr15, 1
	vinsgr2vr.b	$vr23, $a1, 0
	xvpermi.q	$xr15, $xr23, 2
	xvpickve2gr.d	$a1, $xr16, 1
	xvori.b	$xr23, $xr15, 0
	xvpermi.q	$xr23, $xr15, 1
	vinsgr2vr.b	$vr23, $a1, 1
	xvpermi.q	$xr15, $xr23, 2
	xvpickve2gr.d	$a1, $xr16, 2
	xvori.b	$xr23, $xr15, 0
	xvpermi.q	$xr23, $xr15, 1
	vinsgr2vr.b	$vr23, $a1, 2
	xvpermi.q	$xr15, $xr23, 2
	xvpickve2gr.d	$a1, $xr16, 3
	xvori.b	$xr16, $xr15, 0
	xvpermi.q	$xr16, $xr15, 1
	vinsgr2vr.b	$vr16, $a1, 3
	xvpermi.q	$xr15, $xr16, 2
	xvslt.du	$xr16, $xr24, $xr22
	xvpickve2gr.d	$a1, $xr16, 0
	xvori.b	$xr22, $xr15, 0
	xvpermi.q	$xr22, $xr15, 1
	vinsgr2vr.b	$vr22, $a1, 4
	xvpermi.q	$xr15, $xr22, 2
	xvpickve2gr.d	$a1, $xr16, 1
	xvori.b	$xr22, $xr15, 0
	xvpermi.q	$xr22, $xr15, 1
	vinsgr2vr.b	$vr22, $a1, 5
	xvpermi.q	$xr15, $xr22, 2
	xvpickve2gr.d	$a1, $xr16, 2
	xvori.b	$xr22, $xr15, 0
	xvpermi.q	$xr22, $xr15, 1
	vinsgr2vr.b	$vr22, $a1, 6
	xvpermi.q	$xr15, $xr22, 2
	xvpickve2gr.d	$a1, $xr16, 3
	xvori.b	$xr16, $xr15, 0
	xvpermi.q	$xr16, $xr15, 1
	vinsgr2vr.b	$vr16, $a1, 7
	xvpermi.q	$xr15, $xr16, 2
	xvslt.du	$xr16, $xr20, $xr21
	xvpickve2gr.d	$a1, $xr16, 0
	xvori.b	$xr20, $xr15, 0
	xvpermi.q	$xr20, $xr15, 1
	vinsgr2vr.b	$vr20, $a1, 8
	xvpermi.q	$xr15, $xr20, 2
	xvpickve2gr.d	$a1, $xr16, 1
	xvori.b	$xr20, $xr15, 0
	xvpermi.q	$xr20, $xr15, 1
	vinsgr2vr.b	$vr20, $a1, 9
	xvpermi.q	$xr15, $xr20, 2
	xvpickve2gr.d	$a1, $xr16, 2
	xvori.b	$xr20, $xr15, 0
	xvpermi.q	$xr20, $xr15, 1
	vinsgr2vr.b	$vr20, $a1, 10
	xvpermi.q	$xr15, $xr20, 2
	xvpickve2gr.d	$a1, $xr16, 3
	xvori.b	$xr16, $xr15, 0
	xvpermi.q	$xr16, $xr15, 1
	vinsgr2vr.b	$vr16, $a1, 11
	xvpermi.q	$xr15, $xr16, 2
	xvslt.du	$xr16, $xr19, $xr18
	xvpickve2gr.d	$a1, $xr16, 0
	xvori.b	$xr18, $xr15, 0
	xvpermi.q	$xr18, $xr15, 1
	vinsgr2vr.b	$vr18, $a1, 12
	xvpermi.q	$xr15, $xr18, 2
	xvpickve2gr.d	$a1, $xr16, 1
	xvori.b	$xr18, $xr15, 0
	xvpermi.q	$xr18, $xr15, 1
	vinsgr2vr.b	$vr18, $a1, 13
	xvpermi.q	$xr15, $xr18, 2
	xvpickve2gr.d	$a1, $xr16, 2
	xvori.b	$xr18, $xr15, 0
	xvpermi.q	$xr18, $xr15, 1
	vinsgr2vr.b	$vr18, $a1, 14
	xvpermi.q	$xr15, $xr18, 2
	xvpickve2gr.d	$a1, $xr16, 3
	xvori.b	$xr19, $xr15, 0
	xvpermi.q	$xr19, $xr15, 1
	vinsgr2vr.b	$vr19, $a1, 15
	xvori.b	$xr20, $xr3, 0
	xvinsgr2vr.d	$xr20, $a7, 1
	xvinsgr2vr.d	$xr20, $t0, 2
	xvinsgr2vr.d	$xr20, $t4, 3
	xvori.b	$xr21, $xr14, 0
	xvinsgr2vr.d	$xr21, $t0, 1
	xvinsgr2vr.d	$xr21, $a3, 2
	xvinsgr2vr.d	$xr21, $a7, 3
	xvori.b	$xr23, $xr4, 0
	xvinsgr2vr.d	$xr23, $t0, 1
	xvinsgr2vr.d	$xr23, $a2, 2
	xvinsgr2vr.d	$xr23, $a7, 3
	xvinsgr2vr.d	$xr3, $a5, 1
	xvinsgr2vr.d	$xr3, $a2, 2
	xvinsgr2vr.d	$xr3, $a7, 3
	xvinsgr2vr.d	$xr4, $a5, 1
	xvinsgr2vr.d	$xr4, $a7, 2
	xvinsgr2vr.d	$xr16, $a7, 0
	xvinsgr2vr.d	$xr4, $a5, 3
	xvori.b	$xr26, $xr16, 0
	xvinsgr2vr.d	$xr26, $ra, 1
	xvinsgr2vr.d	$xr26, $t0, 2
	xvinsgr2vr.d	$xr26, $ra, 3
	xvori.b	$xr27, $xr17, 0
	xvinsgr2vr.d	$xr27, $ra, 1
	xvinsgr2vr.d	$xr27, $a2, 2
	xvinsgr2vr.d	$xr27, $ra, 3
	xvinsgr2vr.d	$xr17, $a7, 1
	xvinsgr2vr.d	$xr17, $s8, 2
	xvinsgr2vr.d	$xr18, $t6, 0
	xvinsgr2vr.d	$xr17, $t0, 3
	xvori.b	$xr22, $xr18, 0
	xvinsgr2vr.d	$xr22, $t3, 1
	xvinsgr2vr.d	$xr22, $s2, 2
	xvinsgr2vr.d	$xr22, $t3, 3
	xvori.b	$xr24, $xr5, 0
	xvinsgr2vr.d	$xr24, $s1, 1
	xvinsgr2vr.d	$xr24, $t3, 2
	xvinsgr2vr.d	$xr24, $s2, 3
	xvinsgr2vr.d	$xr5, $t2, 1
	xvinsgr2vr.d	$xr5, $t3, 2
	xvinsgr2vr.d	$xr5, $s1, 3
	xvori.b	$xr25, $xr9, 0
	xvinsgr2vr.d	$xr25, $t3, 1
	xvinsgr2vr.d	$xr25, $s1, 2
	xvinsgr2vr.d	$xr25, $t2, 3
	xvinsgr2vr.d	$xr9, $s1, 1
	xvinsgr2vr.d	$xr9, $t8, 2
	xvinsgr2vr.d	$xr9, $s2, 3
	xvinsgr2vr.d	$xr28, $t5, 0
	xvinsgr2vr.d	$xr28, $s2, 1
	xvinsgr2vr.d	$xr28, $t5, 2
	xvinsgr2vr.d	$xr28, $t3, 3
	xvinsgr2vr.d	$xr10, $t8, 1
	xvinsgr2vr.d	$xr10, $t5, 2
	xvinsgr2vr.d	$xr10, $s1, 3
	xvori.b	$xr29, $xr0, 0
	xvinsgr2vr.d	$xr29, $t1, 1
	xvinsgr2vr.d	$xr29, $s2, 2
	xvinsgr2vr.d	$xr29, $t1, 3
	xvslt.du	$xr29, $xr17, $xr29
	xvpickve2gr.d	$a1, $xr29, 0
	vinsgr2vr.b	$vr17, $a1, 0
	xvpickve2gr.d	$a1, $xr29, 1
	vinsgr2vr.b	$vr17, $a1, 1
	xvpickve2gr.d	$a1, $xr29, 2
	vinsgr2vr.b	$vr17, $a1, 2
	xvpickve2gr.d	$a1, $xr29, 3
	vinsgr2vr.b	$vr17, $a1, 3
	xvslt.du	$xr10, $xr27, $xr10
	xvpickve2gr.d	$a1, $xr10, 0
	vinsgr2vr.b	$vr17, $a1, 4
	xvpickve2gr.d	$a1, $xr10, 1
	vinsgr2vr.b	$vr17, $a1, 5
	xvpickve2gr.d	$a1, $xr10, 2
	vinsgr2vr.b	$vr17, $a1, 6
	xvpickve2gr.d	$a1, $xr10, 3
	vinsgr2vr.b	$vr17, $a1, 7
	xvslt.du	$xr10, $xr26, $xr28
	xvpickve2gr.d	$a1, $xr10, 0
	vinsgr2vr.b	$vr17, $a1, 8
	xvpickve2gr.d	$a1, $xr10, 1
	vinsgr2vr.b	$vr17, $a1, 9
	xvpickve2gr.d	$a1, $xr10, 2
	vinsgr2vr.b	$vr17, $a1, 10
	xvpickve2gr.d	$a1, $xr10, 3
	vinsgr2vr.b	$vr17, $a1, 11
	xvslt.du	$xr4, $xr4, $xr9
	xvpickve2gr.d	$a1, $xr4, 0
	vinsgr2vr.b	$vr17, $a1, 12
	xvpickve2gr.d	$a1, $xr4, 1
	vinsgr2vr.b	$vr17, $a1, 13
	xvpickve2gr.d	$a1, $xr4, 2
	vinsgr2vr.b	$vr17, $a1, 14
	xvpickve2gr.d	$a1, $xr4, 3
	vinsgr2vr.b	$vr17, $a1, 15
	xvslt.du	$xr3, $xr3, $xr25
	xvpickve2gr.d	$a1, $xr3, 0
	xvori.b	$xr4, $xr17, 0
	xvpermi.q	$xr4, $xr17, 1
	vinsgr2vr.b	$vr4, $a1, 0
	xvpermi.q	$xr17, $xr4, 2
	xvpickve2gr.d	$a1, $xr3, 1
	xvori.b	$xr4, $xr17, 0
	xvpermi.q	$xr4, $xr17, 1
	vinsgr2vr.b	$vr4, $a1, 1
	xvpermi.q	$xr17, $xr4, 2
	xvpickve2gr.d	$a1, $xr3, 2
	xvori.b	$xr4, $xr17, 0
	xvpermi.q	$xr4, $xr17, 1
	vinsgr2vr.b	$vr4, $a1, 2
	xvpermi.q	$xr17, $xr4, 2
	xvpickve2gr.d	$a1, $xr3, 3
	xvori.b	$xr3, $xr17, 0
	xvpermi.q	$xr3, $xr17, 1
	vinsgr2vr.b	$vr3, $a1, 3
	xvpermi.q	$xr17, $xr3, 2
	xvslt.du	$xr3, $xr23, $xr5
	xvpickve2gr.d	$a1, $xr3, 0
	xvori.b	$xr4, $xr17, 0
	xvpermi.q	$xr4, $xr17, 1
	vinsgr2vr.b	$vr4, $a1, 4
	xvpermi.q	$xr17, $xr4, 2
	xvpickve2gr.d	$a1, $xr3, 1
	xvori.b	$xr4, $xr17, 0
	xvpermi.q	$xr4, $xr17, 1
	vinsgr2vr.b	$vr4, $a1, 5
	xvpermi.q	$xr17, $xr4, 2
	xvpickve2gr.d	$a1, $xr3, 2
	xvori.b	$xr4, $xr17, 0
	xvpermi.q	$xr4, $xr17, 1
	vinsgr2vr.b	$vr4, $a1, 6
	xvpermi.q	$xr17, $xr4, 2
	xvpickve2gr.d	$a1, $xr3, 3
	xvori.b	$xr3, $xr17, 0
	xvpermi.q	$xr3, $xr17, 1
	vinsgr2vr.b	$vr3, $a1, 7
	xvpermi.q	$xr17, $xr3, 2
	xvslt.du	$xr3, $xr21, $xr24
	xvpickve2gr.d	$a1, $xr3, 0
	xvori.b	$xr4, $xr17, 0
	xvpermi.q	$xr4, $xr17, 1
	vinsgr2vr.b	$vr4, $a1, 8
	xvpermi.q	$xr17, $xr4, 2
	xvpickve2gr.d	$a1, $xr3, 1
	xvori.b	$xr4, $xr17, 0
	xvpermi.q	$xr4, $xr17, 1
	vinsgr2vr.b	$vr4, $a1, 9
	xvpermi.q	$xr17, $xr4, 2
	xvpickve2gr.d	$a1, $xr3, 2
	xvori.b	$xr4, $xr17, 0
	xvpermi.q	$xr4, $xr17, 1
	vinsgr2vr.b	$vr4, $a1, 10
	xvpermi.q	$xr17, $xr4, 2
	xvpickve2gr.d	$a1, $xr3, 3
	xvori.b	$xr3, $xr17, 0
	xvpermi.q	$xr3, $xr17, 1
	vinsgr2vr.b	$vr3, $a1, 11
	xvpermi.q	$xr17, $xr3, 2
	xvslt.du	$xr3, $xr20, $xr22
	xvpickve2gr.d	$a1, $xr3, 0
	xvori.b	$xr4, $xr17, 0
	xvpermi.q	$xr4, $xr17, 1
	vinsgr2vr.b	$vr4, $a1, 12
	xvpermi.q	$xr17, $xr4, 2
	xvpickve2gr.d	$a1, $xr3, 1
	xvori.b	$xr4, $xr17, 0
	xvpermi.q	$xr4, $xr17, 1
	vinsgr2vr.b	$vr4, $a1, 13
	xvpermi.q	$xr17, $xr4, 2
	xvpickve2gr.d	$a1, $xr3, 2
	xvori.b	$xr4, $xr17, 0
	xvpermi.q	$xr4, $xr17, 1
	vinsgr2vr.b	$vr4, $a1, 14
	xvpermi.q	$xr17, $xr4, 2
	xvpickve2gr.d	$a1, $xr3, 3
	xvori.b	$xr4, $xr17, 0
	xvpermi.q	$xr4, $xr17, 1
	vinsgr2vr.b	$vr4, $a1, 15
	xvori.b	$xr3, $xr6, 0
	xvinsgr2vr.d	$xr3, $t6, 1
	xvinsgr2vr.d	$xr3, $s0, 2
	xvinsgr2vr.d	$xr3, $s2, 3
	xvinsgr2vr.d	$xr0, $s0, 1
	xvinsgr2vr.d	$xr0, $s1, 2
	xvpermi.q	$xr2, $xr11, 2
	xvpermi.q	$xr15, $xr19, 2
	xvand.v	$xr2, $xr2, $xr15
	xvpermi.q	$xr17, $xr4, 2
	xvinsgr2vr.d	$xr16, $t7, 1
	xvinsgr2vr.d	$xr16, $t4, 2
	xvinsgr2vr.d	$xr16, $t7, 3
	xvori.b	$xr4, $xr7, 0
	xvinsgr2vr.d	$xr4, $a3, 1
	xvinsgr2vr.d	$xr4, $t7, 2
	xvinsgr2vr.d	$xr4, $t4, 3
	xvinsgr2vr.d	$xr7, $a2, 1
	xvinsgr2vr.d	$xr7, $t7, 2
	xvinsgr2vr.d	$xr7, $a3, 3
	xvori.b	$xr9, $xr12, 0
	xvinsgr2vr.d	$xr9, $t7, 1
	xvinsgr2vr.d	$xr9, $a3, 2
	xvinsgr2vr.d	$xr9, $a2, 3
	xvinsgr2vr.d	$xr12, $a3, 1
	xvinsgr2vr.d	$xr12, $a5, 2
	xvinsgr2vr.d	$xr12, $t4, 3
	xvinsgr2vr.d	$xr10, $ra, 0
	xvinsgr2vr.d	$xr10, $t4, 1
	xvinsgr2vr.d	$xr10, $ra, 2
	xvinsgr2vr.d	$xr10, $t7, 3
	xvinsgr2vr.d	$xr13, $a5, 1
	xvinsgr2vr.d	$xr13, $ra, 2
	xvinsgr2vr.d	$xr13, $a3, 3
	xvinsgr2vr.d	$xr14, $s8, 1
	xvinsgr2vr.d	$xr14, $t4, 2
	xvinsgr2vr.d	$xr14, $s8, 3
	xvinsgr2vr.d	$xr0, $t6, 3
	xvori.b	$xr5, $xr8, 0
	xvinsgr2vr.d	$xr5, $s0, 1
	xvinsgr2vr.d	$xr5, $t2, 2
	xvinsgr2vr.d	$xr5, $t6, 3
	xvinsgr2vr.d	$xr6, $t8, 1
	xvinsgr2vr.d	$xr6, $t2, 2
	xvinsgr2vr.d	$xr6, $t6, 3
	xvinsgr2vr.d	$xr8, $t8, 1
	xvinsgr2vr.d	$xr8, $t6, 2
	xvinsgr2vr.d	$xr8, $t8, 3
	xvinsgr2vr.d	$xr18, $t5, 1
	xvinsgr2vr.d	$xr18, $s0, 2
	xvinsgr2vr.d	$xr18, $t5, 3
	xvori.b	$xr11, $xr1, 0
	xvinsgr2vr.d	$xr11, $t5, 1
	xvinsgr2vr.d	$xr11, $t2, 2
	xvinsgr2vr.d	$xr11, $t5, 3
	xvinsgr2vr.d	$xr1, $t6, 1
	xvinsgr2vr.d	$xr1, $t1, 2
	xvinsgr2vr.d	$xr1, $s0, 3
	xvslt.du	$xr14, $xr14, $xr1
	xvpickve2gr.d	$a1, $xr14, 0
	vinsgr2vr.b	$vr1, $a1, 0
	xvpickve2gr.d	$a1, $xr14, 1
	vinsgr2vr.b	$vr1, $a1, 1
	xvpickve2gr.d	$a1, $xr14, 2
	vinsgr2vr.b	$vr1, $a1, 2
	xvpickve2gr.d	$a1, $xr14, 3
	vinsgr2vr.b	$vr1, $a1, 3
	xvslt.du	$xr11, $xr13, $xr11
	xvpickve2gr.d	$a1, $xr11, 0
	vinsgr2vr.b	$vr1, $a1, 4
	xvpickve2gr.d	$a1, $xr11, 1
	vinsgr2vr.b	$vr1, $a1, 5
	xvpickve2gr.d	$a1, $xr11, 2
	vinsgr2vr.b	$vr1, $a1, 6
	xvpickve2gr.d	$a1, $xr11, 3
	vinsgr2vr.b	$vr1, $a1, 7
	xvslt.du	$xr10, $xr10, $xr18
	xvpickve2gr.d	$a1, $xr10, 0
	vinsgr2vr.b	$vr1, $a1, 8
	xvpickve2gr.d	$a1, $xr10, 1
	vinsgr2vr.b	$vr1, $a1, 9
	xvpickve2gr.d	$a1, $xr10, 2
	vinsgr2vr.b	$vr1, $a1, 10
	xvpickve2gr.d	$a1, $xr10, 3
	vinsgr2vr.b	$vr1, $a1, 11
	xvslt.du	$xr8, $xr12, $xr8
	xvpickve2gr.d	$a1, $xr8, 0
	vinsgr2vr.b	$vr1, $a1, 12
	xvpickve2gr.d	$a1, $xr8, 1
	vinsgr2vr.b	$vr1, $a1, 13
	xvpickve2gr.d	$a1, $xr8, 2
	vinsgr2vr.b	$vr1, $a1, 14
	xvpickve2gr.d	$a1, $xr8, 3
	vinsgr2vr.b	$vr1, $a1, 15
	xvslt.du	$xr6, $xr9, $xr6
	xvpickve2gr.d	$a1, $xr6, 0
	xvori.b	$xr8, $xr1, 0
	xvpermi.q	$xr8, $xr1, 1
	vinsgr2vr.b	$vr8, $a1, 0
	xvpermi.q	$xr1, $xr8, 2
	xvpickve2gr.d	$a1, $xr6, 1
	xvori.b	$xr8, $xr1, 0
	xvpermi.q	$xr8, $xr1, 1
	vinsgr2vr.b	$vr8, $a1, 1
	xvpermi.q	$xr1, $xr8, 2
	xvpickve2gr.d	$a1, $xr6, 2
	xvori.b	$xr8, $xr1, 0
	xvpermi.q	$xr8, $xr1, 1
	vinsgr2vr.b	$vr8, $a1, 2
	xvpermi.q	$xr1, $xr8, 2
	xvpickve2gr.d	$a1, $xr6, 3
	xvori.b	$xr6, $xr1, 0
	xvpermi.q	$xr6, $xr1, 1
	vinsgr2vr.b	$vr6, $a1, 3
	xvpermi.q	$xr1, $xr6, 2
	xvslt.du	$xr5, $xr7, $xr5
	xvpickve2gr.d	$a1, $xr5, 0
	xvori.b	$xr6, $xr1, 0
	xvpermi.q	$xr6, $xr1, 1
	vinsgr2vr.b	$vr6, $a1, 4
	xvpermi.q	$xr1, $xr6, 2
	xvpickve2gr.d	$a1, $xr5, 1
	xvori.b	$xr6, $xr1, 0
	xvpermi.q	$xr6, $xr1, 1
	vinsgr2vr.b	$vr6, $a1, 5
	xvpermi.q	$xr1, $xr6, 2
	xvpickve2gr.d	$a1, $xr5, 2
	xvori.b	$xr6, $xr1, 0
	xvpermi.q	$xr6, $xr1, 1
	vinsgr2vr.b	$vr6, $a1, 6
	xvpermi.q	$xr1, $xr6, 2
	xvpickve2gr.d	$a1, $xr5, 3
	xvori.b	$xr5, $xr1, 0
	xvpermi.q	$xr5, $xr1, 1
	vinsgr2vr.b	$vr5, $a1, 7
	xvpermi.q	$xr1, $xr5, 2
	xvslt.du	$xr0, $xr4, $xr0
	xvpickve2gr.d	$a1, $xr0, 0
	xvori.b	$xr4, $xr1, 0
	xvpermi.q	$xr4, $xr1, 1
	vinsgr2vr.b	$vr4, $a1, 8
	xvpermi.q	$xr1, $xr4, 2
	xvpickve2gr.d	$a1, $xr0, 1
	xvori.b	$xr4, $xr1, 0
	xvpermi.q	$xr4, $xr1, 1
	vinsgr2vr.b	$vr4, $a1, 9
	xvpermi.q	$xr1, $xr4, 2
	xvpickve2gr.d	$a1, $xr0, 2
	xvori.b	$xr4, $xr1, 0
	xvpermi.q	$xr4, $xr1, 1
	vinsgr2vr.b	$vr4, $a1, 10
	xvpermi.q	$xr1, $xr4, 2
	xvpickve2gr.d	$a1, $xr0, 3
	xvori.b	$xr0, $xr1, 0
	xvpermi.q	$xr0, $xr1, 1
	vinsgr2vr.b	$vr0, $a1, 11
	xvpermi.q	$xr1, $xr0, 2
	xvslt.du	$xr0, $xr16, $xr3
	xvpickve2gr.d	$a1, $xr0, 0
	xvori.b	$xr3, $xr1, 0
	xvpermi.q	$xr3, $xr1, 1
	vinsgr2vr.b	$vr3, $a1, 12
	xvpermi.q	$xr1, $xr3, 2
	xvpickve2gr.d	$a1, $xr0, 1
	xvori.b	$xr3, $xr1, 0
	xvpermi.q	$xr3, $xr1, 1
	vinsgr2vr.b	$vr3, $a1, 13
	xvpermi.q	$xr1, $xr3, 2
	xvpickve2gr.d	$a1, $xr0, 2
	xvori.b	$xr3, $xr1, 0
	xvpermi.q	$xr3, $xr1, 1
	vinsgr2vr.b	$vr3, $a1, 14
	xvpermi.q	$xr1, $xr3, 2
	xvpickve2gr.d	$a1, $xr0, 3
	xvori.b	$xr0, $xr1, 0
	xvpermi.q	$xr0, $xr1, 1
	vinsgr2vr.b	$vr0, $a1, 15
	xvpermi.q	$xr1, $xr0, 2
	xvand.v	$xr0, $xr17, $xr1
	xvor.v	$xr0, $xr2, $xr0
	xvst	$xr0, $sp, 640
	vpickve2gr.b	$a1, $vr0, 0
	vpickve2gr.b	$t5, $vr0, 1
	andi	$t5, $t5, 1
	bstrins.d	$a1, $t5, 63, 1
	vpickve2gr.b	$t5, $vr0, 2
	bstrins.d	$a1, $t5, 2, 2
	vpickve2gr.b	$t5, $vr0, 3
	bstrins.d	$a1, $t5, 3, 3
	vpickve2gr.b	$t5, $vr0, 4
	bstrins.d	$a1, $t5, 4, 4
	vpickve2gr.b	$t5, $vr0, 5
	bstrins.d	$a1, $t5, 5, 5
	vpickve2gr.b	$t5, $vr0, 6
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 6
	or	$a1, $a1, $t5
	vpickve2gr.b	$t5, $vr0, 7
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 7
	or	$a1, $a1, $t5
	vpickve2gr.b	$t5, $vr0, 8
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 8
	or	$a1, $a1, $t5
	vpickve2gr.b	$t5, $vr0, 9
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 9
	or	$a1, $a1, $t5
	vpickve2gr.b	$t5, $vr0, 10
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 10
	or	$a1, $a1, $t5
	vpickve2gr.b	$t5, $vr0, 11
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 11
	or	$a1, $a1, $t5
	vpickve2gr.b	$t5, $vr0, 12
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 12
	or	$a1, $a1, $t5
	vpickve2gr.b	$t5, $vr0, 13
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 13
	or	$a1, $a1, $t5
	vpickve2gr.b	$t5, $vr0, 14
	andi	$t5, $t5, 1
	slli.d	$t5, $t5, 14
	or	$a1, $a1, $t5
	vpickve2gr.b	$t5, $vr0, 15
	andi	$t5, $t5, 1
	ld.bu	$t6, $sp, 656
	slli.d	$t5, $t5, 15
	or	$a1, $a1, $t5
	ld.bu	$t5, $sp, 657
	andi	$t6, $t6, 1
	slli.d	$t6, $t6, 16
	or	$a1, $a1, $t6
	andi	$t5, $t5, 1
	ld.bu	$t6, $sp, 658
	slli.d	$t5, $t5, 17
	or	$a1, $a1, $t5
	ld.bu	$t5, $sp, 659
	andi	$t6, $t6, 1
	slli.d	$t6, $t6, 18
	or	$a1, $a1, $t6
	andi	$t5, $t5, 1
	ld.bu	$t6, $sp, 660
	slli.d	$t5, $t5, 19
	or	$a1, $a1, $t5
	ld.bu	$t5, $sp, 661
	andi	$t6, $t6, 1
	slli.d	$t6, $t6, 20
	or	$a1, $a1, $t6
	andi	$t5, $t5, 1
	ld.bu	$t6, $sp, 662
	slli.d	$t5, $t5, 21
	or	$a1, $a1, $t5
	ld.bu	$t5, $sp, 663
	andi	$t6, $t6, 1
	slli.d	$t6, $t6, 22
	or	$a1, $a1, $t6
	andi	$t5, $t5, 1
	ld.bu	$t6, $sp, 664
	slli.d	$t5, $t5, 23
	or	$a1, $a1, $t5
	ld.bu	$t5, $sp, 665
	andi	$t6, $t6, 1
	slli.d	$t6, $t6, 24
	or	$a1, $a1, $t6
	andi	$t5, $t5, 1
	ld.bu	$t6, $sp, 666
	slli.d	$t5, $t5, 25
	or	$a1, $a1, $t5
	ld.bu	$t5, $sp, 667
	andi	$t6, $t6, 1
	slli.d	$t6, $t6, 26
	or	$a1, $a1, $t6
	andi	$t5, $t5, 1
	ld.bu	$t6, $sp, 668
	slli.d	$t5, $t5, 27
	or	$a1, $a1, $t5
	ld.bu	$t5, $sp, 669
	andi	$t6, $t6, 1
	slli.d	$t6, $t6, 28
	or	$a1, $a1, $t6
	andi	$t5, $t5, 1
	ld.bu	$t6, $sp, 670
	slli.d	$t5, $t5, 29
	or	$a1, $a1, $t5
	ld.b	$t5, $sp, 671
	andi	$t6, $t6, 1
	slli.d	$t6, $t6, 30
	or	$a1, $a1, $t6
	slli.d	$t5, $t5, 31
	or	$a1, $a1, $t5
	st.w	$a1, $sp, 700
	ld.w	$a1, $sp, 700
	move	$t5, $zero
	bnez	$a1, .LBB4_86
# %bb.81:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_78 Depth=3
	sltu	$a1, $s8, $t2
	sltu	$t1, $a2, $t1
	and	$a1, $a1, $t1
	bnez	$a1, .LBB4_86
# %bb.82:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_78 Depth=3
	sltu	$a1, $t0, $t3
	sltu	$t1, $t7, $s0
	and	$a1, $a1, $t1
	bnez	$a1, .LBB4_86
# %bb.83:                               # %vector.ph
                                        #   in Loop: Header=BB4_78 Depth=3
	move	$a1, $zero
	ld.d	$t1, $sp, 528                   # 8-byte Folded Reload
	add.d	$a6, $t1, $a6
	move	$s0, $a4
	.p2align	4, , 16
.LBB4_84:                               # %vector.body
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_76 Depth=2
                                        #       Parent Loop BB4_78 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvldx	$xr0, $s6, $a1
	xvldx	$xr1, $s7, $a1
	xvldx	$xr2, $s5, $a1
	xvldx	$xr3, $ra, $a1
	xvldx	$xr4, $a5, $a1
	xvfadd.d	$xr0, $xr0, $xr1
	xvfadd.d	$xr0, $xr2, $xr0
	xvstx	$xr0, $s5, $a1
	xvfadd.d	$xr0, $xr3, $xr4
	xvldx	$xr1, $s8, $a1
	xvldx	$xr2, $a3, $a1
	xvldx	$xr3, $a7, $a1
	xvldx	$xr4, $a2, $a1
	xvfadd.d	$xr0, $xr1, $xr0
	xvstx	$xr0, $s8, $a1
	xvfadd.d	$xr0, $xr2, $xr3
	xvfadd.d	$xr0, $xr4, $xr0
	xvstx	$xr0, $a2, $a1
	xvldx	$xr0, $t0, $a1
	xvldx	$xr1, $t7, $a1
	xvstx	$xr31, $s6, $a1
	xvstx	$xr31, $s7, $a1
	xvstx	$xr31, $ra, $a1
	xvfadd.d	$xr0, $xr0, $xr1
	xvldx	$xr1, $t4, $a1
	xvstx	$xr31, $a5, $a1
	xvstx	$xr31, $a3, $a1
	xvstx	$xr31, $a7, $a1
	xvfadd.d	$xr0, $xr1, $xr0
	xvstx	$xr0, $t4, $a1
	xvstx	$xr31, $t0, $a1
	xvstx	$xr31, $t7, $a1
	addi.d	$a1, $a1, 32
	bne	$s3, $a1, .LBB4_84
# %bb.85:                               # %middle.block
                                        #   in Loop: Header=BB4_78 Depth=3
	ld.d	$a1, $sp, 528                   # 8-byte Folded Reload
	move	$t5, $a1
	ld.d	$a4, $sp, 632                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB4_77
	b	.LBB4_87
	.p2align	4, , 16
.LBB4_86:                               #   in Loop: Header=BB4_78 Depth=3
	move	$s0, $a4
	ld.d	$a4, $sp, 632                   # 8-byte Folded Reload
.LBB4_87:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB4_78 Depth=3
	slli.d	$a1, $a6, 3
	sub.d	$a2, $a0, $t5
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 400                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 408                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_88:                               # %scalar.ph
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_76 Depth=2
                                        #       Parent Loop BB4_78 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $t8, $a1
	fldx.d	$fa1, $t7, $a1
	fldx.d	$fa2, $t6, $a1
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t6, $a1
	stx.d	$zero, $t8, $a1
	stx.d	$zero, $t7, $a1
	fldx.d	$fa0, $t5, $a1
	fldx.d	$fa1, $t4, $a1
	fldx.d	$fa2, $t3, $a1
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t3, $a1
	stx.d	$zero, $t5, $a1
	stx.d	$zero, $t4, $a1
	fldx.d	$fa0, $t2, $a1
	fldx.d	$fa1, $t1, $a1
	fldx.d	$fa2, $t0, $a1
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t0, $a1
	stx.d	$zero, $t2, $a1
	stx.d	$zero, $t1, $a1
	fldx.d	$fa0, $a7, $a1
	fldx.d	$fa1, $a5, $a1
	fldx.d	$fa2, $a3, $a1
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $a3, $a1
	stx.d	$zero, $a7, $a1
	stx.d	$zero, $a5, $a1
	addi.d	$a6, $a6, 1
	addi.d	$t8, $t8, 8
	addi.d	$t7, $t7, 8
	addi.d	$t6, $t6, 8
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 8
	addi.d	$t2, $t2, 8
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	addi.d	$a5, $a5, 8
	addi.w	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	bnez	$a2, .LBB4_88
	b	.LBB4_77
.LBB4_89:                               # %.loopexit491
	move	$a0, $zero
	addi.d	$sp, $fp, -928
	fld.d	$fs7, $sp, 776                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 784                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 792                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 800                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 808                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 816                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 824                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 832                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 840                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 848                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 856                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 864                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 872                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 880                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 888                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 896                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 904                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 912                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 920                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 928
	ret
.Lfunc_end4:
	.size	hypre_SMG3RAPPeriodicNoSym, .Lfunc_end4-hypre_SMG3RAPPeriodicNoSym
                                        # -- End function
	.type	.L__const.hypre_SMG3CreateRAPOp.RAP_num_ghost,@object # @__const.hypre_SMG3CreateRAPOp.RAP_num_ghost
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L__const.hypre_SMG3CreateRAPOp.RAP_num_ghost:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.size	.L__const.hypre_SMG3CreateRAPOp.RAP_num_ghost, 24

	.section	".note.GNU-stack","",@progbits
	.addrsig
