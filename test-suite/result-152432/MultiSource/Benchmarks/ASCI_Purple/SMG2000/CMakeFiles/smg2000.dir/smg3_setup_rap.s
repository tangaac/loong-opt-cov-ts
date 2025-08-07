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
# %bb.0:
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
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a3, $a3, 8
	ld.d	$a7, $a3, 8
	ld.w	$a6, $a7, 8
	ori	$s6, $zero, 1
	st.d	$a5, $sp, 120                   # 8-byte Folded Spill
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	blt	$a6, $s6, .LBB1_62
# %bb.1:                                # %.preheader2464.lr.ph
	move	$s7, $a0
	ld.d	$a0, $a0, 24
	ld.d	$a1, $s7, 8
	move	$a4, $zero
	move	$a5, $zero
	ld.w	$s3, $a0, 8
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
	st.d	$s7, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %.critedge
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a7, 8
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	bge	$a4, $a0, .LBB1_62
.LBB1_3:                                # %.preheader2464
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
                                        #     Child Loop BB1_54 Depth 2
                                        #       Child Loop BB1_57 Depth 3
                                        #         Child Loop BB1_58 Depth 4
                                        #     Child Loop BB1_20 Depth 2
                                        #       Child Loop BB1_23 Depth 3
                                        #         Child Loop BB1_24 Depth 4
                                        #     Child Loop BB1_33 Depth 2
                                        #       Child Loop BB1_35 Depth 3
                                        #         Child Loop BB1_36 Depth 4
                                        #     Child Loop BB1_44 Depth 2
                                        #       Child Loop BB1_46 Depth 3
                                        #         Child Loop BB1_47 Depth 4
	slli.d	$a0, $a4, 2
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.d	$fp, $a5, -1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a1, $a5, $a1, 2
	slli.d	$a2, $a5, 4
	alsl.d	$a2, $a5, $a2, 3
	addi.d	$a3, $a5, -1
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
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $a7, 0
	slli.d	$a1, $a4, 4
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	alsl.d	$a1, $a4, $a1, 3
	st.d	$a1, $sp, 1192                  # 8-byte Folded Spill
	add.d	$a0, $a0, $a1
	addi.d	$a3, $sp, 1280
	st.d	$a0, $sp, 1216                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMapCoarseToFine)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 40
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $s1, 40
	ld.d	$a3, $a0, 0
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $s0, 40
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	ld.d	$a4, $a1, 0
	st.d	$a3, $sp, 1232                  # 8-byte Folded Spill
	add.d	$a1, $a3, $s4
	st.d	$a1, $sp, 1224                  # 8-byte Folded Spill
	ld.d	$s8, $a0, 0
	ld.d	$a0, $a2, 0
	st.d	$a0, $sp, 1184                  # 8-byte Folded Spill
	st.d	$a4, $sp, 1208                  # 8-byte Folded Spill
	add.d	$a0, $a4, $s4
	st.d	$a0, $sp, 1200                  # 8-byte Folded Spill
	st.d	$zero, $sp, 1292
	st.w	$s6, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1040                  # 8-byte Folded Spill
	addi.w	$s5, $zero, -1
	st.d	$zero, $sp, 1292
	st.d	$s5, $sp, 1256                  # 8-byte Folded Spill
	lu32i.d	$s5, 0
	st.w	$s5, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1032                  # 8-byte Folded Spill
	st.d	$zero, $sp, 1292
	st.w	$s6, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 688                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1292
	st.w	$s5, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 680                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 752                   # 8-byte Folded Spill
	st.d	$s5, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 744                   # 8-byte Folded Spill
	st.d	$s6, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1176                  # 8-byte Folded Spill
	ori	$s2, $zero, 0
	lu32i.d	$s2, -1
	st.d	$s2, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 736                   # 8-byte Folded Spill
	ori	$s0, $zero, 0
	lu32i.d	$s0, 1
	st.d	$s0, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1168                  # 8-byte Folded Spill
	st.d	$zero, $sp, 1292
	st.w	$s6, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 728                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1292
	st.w	$s5, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 784                   # 8-byte Folded Spill
	ori	$a0, $zero, 8
	st.d	$s8, $sp, 1248                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1240                  # 8-byte Folded Spill
	blt	$s3, $a0, .LBB1_10
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=1
	st.d	$s5, $sp, 1292
	st.w	$s6, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 608                   # 8-byte Folded Spill
	st.d	$s2, $sp, 1292
	st.w	$s6, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 600                   # 8-byte Folded Spill
	st.d	$s5, $sp, 1292
	st.w	$s5, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 776                   # 8-byte Folded Spill
	st.d	$s6, $sp, 1292
	st.w	$s5, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 592                   # 8-byte Folded Spill
	st.d	$s2, $sp, 1292
	st.w	$s5, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 584                   # 8-byte Folded Spill
	st.d	$s0, $sp, 1292
	st.w	$s5, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 576                   # 8-byte Folded Spill
	ori	$a0, $zero, 16
	bltu	$s3, $a0, .LBB1_10
# %bb.7:                                #   in Loop: Header=BB1_3 Depth=1
	ld.d	$s8, $sp, 1256                  # 8-byte Folded Reload
	st.d	$s8, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 568                   # 8-byte Folded Spill
	ori	$s5, $zero, 1
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 560                   # 8-byte Folded Spill
	move	$s1, $s8
	lu32i.d	$s1, 1
	st.d	$s1, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 20
	bltu	$s3, $a0, .LBB1_9
# %bb.8:                                #   in Loop: Header=BB1_3 Depth=1
	st.d	$s8, $sp, 1292
	ori	$s5, $zero, 1
	st.w	$s5, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	ori	$s3, $zero, 1
	lu32i.d	$s3, -1
	st.d	$s3, $sp, 1292
	st.w	$s5, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	st.d	$s8, $sp, 1292
	ld.d	$s8, $sp, 1240                  # 8-byte Folded Reload
	st.w	$s8, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	st.d	$s3, $sp, 1292
	st.w	$s8, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s1, $sp, 1292
	st.w	$s8, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 1292
	st.w	$s8, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
.LBB1_9:                                # %.thread2386
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$s8, $sp, 1248                  # 8-byte Folded Reload
	b	.LBB1_11
	.p2align	4, , 16
.LBB1_10:                               #   in Loop: Header=BB1_3 Depth=1
	move	$s5, $zero
.LBB1_11:                               # %.thread2386
                                        #   in Loop: Header=BB1_3 Depth=1
	add.d	$s1, $s8, $s4
	ld.d	$a0, $sp, 1192                  # 8-byte Folded Reload
	ld.d	$a1, $sp, 1184                  # 8-byte Folded Reload
	add.d	$s8, $a1, $a0
	st.d	$zero, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	move	$a0, $fp
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 672                   # 8-byte Folded Spill
	ld.d	$s7, $sp, 1240                  # 8-byte Folded Reload
	st.d	$s7, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 664                   # 8-byte Folded Spill
	st.d	$s2, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 656                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1292
	st.w	$s7, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 648                   # 8-byte Folded Spill
	st.d	$s7, $sp, 1292
	st.w	$s7, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 640                   # 8-byte Folded Spill
	st.d	$s6, $sp, 1292
	st.w	$s7, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 632                   # 8-byte Folded Spill
	st.d	$s2, $sp, 1292
	st.w	$s7, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 624                   # 8-byte Folded Spill
	st.d	$s0, $sp, 1292
	st.w	$s7, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 616                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 1256                  # 8-byte Folded Reload
	beqz	$s5, .LBB1_13
# %bb.12:                               #   in Loop: Header=BB1_3 Depth=1
	st.d	$s3, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	move	$a0, $s0
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 552                   # 8-byte Folded Spill
	ori	$fp, $zero, 1
	lu32i.d	$fp, -1
	st.d	$fp, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	st.d	$s3, $sp, 1292
	st.w	$s7, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 536                   # 8-byte Folded Spill
	st.d	$fp, $sp, 1292
	st.w	$s7, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	move	$a0, $s3
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 1292
	st.w	$s7, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 1292
	st.w	$s7, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
.LBB1_13:                               #   in Loop: Header=BB1_3 Depth=1
	st.d	$zero, $sp, 1292
	st.w	$s6, $sp, 1300
	ld.d	$s5, $sp, 1224                  # 8-byte Folded Reload
	ld.w	$a0, $s5, 4
	ld.w	$a1, $s5, -8
	sub.w	$a0, $a0, $a1
	slt	$a1, $s3, $a0
	maskeqz	$a0, $a0, $a1
	ld.d	$s2, $sp, 1232                  # 8-byte Folded Reload
	ldx.w	$a2, $s2, $s4
	ld.w	$a3, $s5, -12
	masknez	$a1, $s3, $a1
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	sub.w	$a1, $a2, $a3
	slt	$a2, $s3, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s3, $a2
	ld.d	$fp, $sp, 1200                  # 8-byte Folded Reload
	ld.w	$a3, $fp, 4
	ld.w	$a4, $fp, -8
	or	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	mulw.d.w	$a0, $a1, $a0
	st.d	$a0, $sp, 1240                  # 8-byte Folded Spill
	sub.w	$a0, $a3, $a4
	slt	$a1, $s3, $a0
	ld.d	$s0, $sp, 1208                  # 8-byte Folded Reload
	ldx.w	$a2, $s0, $s4
	ld.w	$a3, $fp, -12
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s3, $a1
	or	$a0, $a0, $a1
	sub.w	$a1, $a2, $a3
	slt	$a2, $s3, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s3, $a2
	or	$a1, $a1, $a2
	st.d	$s6, $sp, 1296
	ldx.w	$a2, $s0, $s4
	ld.w	$a3, $fp, -12
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	mulw.d.w	$a0, $a1, $a0
	st.d	$a0, $sp, 1192                  # 8-byte Folded Spill
	sub.w	$a0, $a2, $a3
	slt	$a1, $s3, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s3, $a1
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 1184                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a1, $sp, 1268
	ld.d	$s7, $sp, 1216                  # 8-byte Folded Reload
	move	$a0, $s7
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
	ld.w	$a4, $fp, -12
	ld.w	$a1, $s7, 4
	ld.w	$a2, $fp, -8
	ld.w	$a3, $s7, 8
	ld.w	$a5, $fp, -4
	ld.w	$a6, $fp, 4
	sub.d	$a7, $a0, $a4
	sub.d	$t0, $a1, $a2
	sub.d	$a5, $a3, $a5
	sub.w	$a2, $a6, $a2
	slt	$a6, $s3, $a2
	maskeqz	$a2, $a2, $a6
	masknez	$a6, $s3, $a6
	or	$a2, $a2, $a6
	ldx.w	$a6, $s0, $s4
	addi.d	$a2, $a2, 1
	mul.d	$a5, $a2, $a5
	add.d	$a5, $t0, $a5
	sub.w	$a4, $a6, $a4
	slt	$a6, $s3, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $s3, $a6
	or	$a4, $a4, $a6
	addi.d	$a4, $a4, 1
	st.d	$a4, $sp, 720                   # 8-byte Folded Spill
	mul.d	$a4, $a5, $a4
	add.w	$s7, $a7, $a4
	ld.w	$a4, $s1, -12
	ld.w	$a5, $s1, -8
	ld.w	$a6, $s1, -4
	ld.w	$a7, $s1, 4
	sub.d	$t0, $a0, $a4
	sub.d	$t1, $a1, $a5
	sub.d	$a6, $a3, $a6
	sub.w	$a5, $a7, $a5
	slt	$a7, $s3, $a5
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $s3, $a7
	or	$a5, $a5, $a7
	ld.d	$a7, $sp, 1248                  # 8-byte Folded Reload
	ldx.w	$t2, $a7, $s4
	addi.d	$a7, $a5, 1
	mul.d	$a5, $a7, $a6
	add.d	$a5, $t1, $a5
	sub.w	$a4, $t2, $a4
	slt	$a6, $s3, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $s3, $a6
	or	$a4, $a4, $a6
	addi.d	$a4, $a4, 1
	st.d	$a4, $sp, 712                   # 8-byte Folded Spill
	mul.d	$a4, $a5, $a4
	add.w	$t7, $t0, $a4
	ld.w	$a4, $sp, 1280
	ld.w	$a5, $s5, -12
	ld.w	$a6, $sp, 1284
	ld.w	$t0, $s5, -8
	ld.w	$t1, $sp, 1288
	ld.w	$t2, $s5, -4
	ld.w	$t3, $s5, 4
	sub.d	$a4, $a4, $a5
	sub.d	$a6, $a6, $t0
	sub.d	$t1, $t1, $t2
	sub.w	$t0, $t3, $t0
	slt	$t2, $s3, $t0
	maskeqz	$t0, $t0, $t2
	masknez	$t2, $s3, $t2
	or	$t0, $t0, $t2
	ldx.w	$t2, $s2, $s4
	addi.d	$t0, $t0, 1
	mul.d	$t1, $t0, $t1
	add.d	$a6, $a6, $t1
	sub.w	$a5, $t2, $a5
	slt	$t1, $s3, $a5
	maskeqz	$a5, $a5, $t1
	masknez	$t1, $s3, $t1
	or	$a5, $a5, $t1
	addi.d	$a5, $a5, 1
	mul.d	$a6, $a6, $a5
	add.w	$t2, $a4, $a6
	ld.w	$a4, $s8, 0
	ld.w	$a6, $s8, 4
	ld.w	$t1, $s8, 8
	ld.w	$t3, $s8, 16
	sub.d	$a0, $a0, $a4
	sub.d	$t4, $a1, $a6
	sub.d	$a3, $a3, $t1
	sub.w	$a1, $t3, $a6
	slt	$a6, $s3, $a1
	maskeqz	$a1, $a1, $a6
	masknez	$a6, $s3, $a6
	or	$a1, $a1, $a6
	ld.w	$a6, $s8, 12
	addi.d	$a1, $a1, 1
	mul.d	$a3, $a1, $a3
	add.d	$a3, $t4, $a3
	sub.w	$a4, $a6, $a4
	slt	$a6, $s3, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $s3, $a6
	or	$a4, $a4, $a6
	addi.d	$a4, $a4, 1
	st.d	$a4, $sp, 704                   # 8-byte Folded Spill
	mul.d	$a3, $a3, $a4
	add.w	$s4, $a0, $a3
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $a3, 0
	st.d	$a0, $sp, 696                   # 8-byte Folded Spill
	ld.w	$a0, $a3, 4
	ld.w	$a3, $a3, 8
	ld.w	$a4, $sp, 1268
	st.d	$a4, $sp, 768                   # 8-byte Folded Spill
	ld.w	$a4, $sp, 1272
	st.d	$a4, $sp, 760                   # 8-byte Folded Spill
	ld.w	$s2, $sp, 1276
	mul.d	$a0, $a0, $a5
	mulw.d.w	$a4, $a5, $t0
	mul.d	$a6, $a4, $a3
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ori	$a3, $zero, 19
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	beq	$s3, $a3, .LBB1_39
# %bb.14:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$a3, $zero, 15
	beq	$s3, $a3, .LBB1_28
# %bb.15:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$a3, $zero, 7
	move	$s5, $t7
	bne	$s3, $a3, .LBB1_50
# %bb.16:                               #   in Loop: Header=BB1_3 Depth=1
	blt	$s2, $s6, .LBB1_2
# %bb.17:                               # %.preheader2454.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$t8, $zero
	ld.d	$t5, $sp, 696                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 768                   # 8-byte Folded Reload
	mul.d	$a3, $t6, $t5
	ld.d	$t1, $sp, 720                   # 8-byte Folded Reload
	sub.d	$a4, $t1, $t6
	ld.d	$t3, $sp, 712                   # 8-byte Folded Reload
	sub.d	$a5, $t3, $t6
	sub.d	$fp, $a0, $a3
	ld.d	$t4, $sp, 704                   # 8-byte Folded Reload
	sub.d	$t0, $t4, $t6
	ld.d	$t7, $sp, 760                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $t7
	mul.d	$s1, $a2, $t1
	sub.d	$a2, $a7, $t7
	mul.d	$a7, $a2, $t3
	mul.d	$a2, $t7, $a0
	sub.d	$a6, $a6, $a2
	sub.d	$a1, $a1, $t7
	mul.d	$s8, $a1, $t4
	addi.d	$a1, $t7, -1
	mul.d	$a2, $a4, $a1
	add.d	$a2, $t1, $a2
	sub.d	$a2, $a2, $t6
	st.d	$a2, $sp, 968                   # 8-byte Folded Spill
	mul.d	$a2, $a5, $a1
	add.d	$a2, $t3, $a2
	sub.d	$a2, $a2, $t6
	st.d	$a2, $sp, 960                   # 8-byte Folded Spill
	st.d	$fp, $sp, 1144                  # 8-byte Folded Spill
	mul.d	$a2, $fp, $a1
	add.d	$a0, $a2, $a0
	sub.d	$a0, $a0, $a3
	st.d	$a0, $sp, 952                   # 8-byte Folded Spill
	mul.d	$a0, $t0, $a1
	add.d	$a0, $t4, $a0
	sub.d	$a0, $a0, $t6
	st.d	$a0, $sp, 944                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1240                  # 8-byte Folded Reload
	bstrpick.d	$a4, $a0, 31, 0
	ld.d	$a0, $sp, 1192                  # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 1184                  # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a2, $a1, 3
	ld.d	$a3, $sp, 1032                  # 8-byte Folded Reload
	sub.d	$a3, $a3, $a2
	st.d	$a3, $sp, 1128                  # 8-byte Folded Spill
	ld.d	$a5, $sp, 1040                  # 8-byte Folded Reload
	sub.d	$a3, $a5, $a2
	st.d	$a3, $sp, 1120                  # 8-byte Folded Spill
	slli.d	$a3, $a0, 3
	sub.d	$a2, $a2, $a3
	add.d	$a2, $a5, $a2
	st.d	$a2, $sp, 1112                  # 8-byte Folded Spill
	st.d	$a4, $sp, 1136                  # 8-byte Folded Spill
	slli.d	$a2, $a4, 3
	ld.d	$a4, $sp, 728                   # 8-byte Folded Reload
	sub.d	$a4, $a4, $a2
	st.d	$a4, $sp, 1104                  # 8-byte Folded Spill
	slli.d	$t0, $t5, 3
	ld.d	$a4, $sp, 1168                  # 8-byte Folded Reload
	sub.d	$a4, $a4, $a2
	st.d	$a4, $sp, 1088                  # 8-byte Folded Spill
	sub.d	$a3, $a5, $a3
	st.d	$a3, $sp, 1080                  # 8-byte Folded Spill
	add.d	$a0, $a0, $a1
	sub.d	$a0, $zero, $a0
	st.d	$a0, $sp, 1072                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 736                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 1064                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 744                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 1056                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 752                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 1048                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 1176                  # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 1024                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 784                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 1016                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1000                  # 8-byte Folded Spill
	st.d	$a7, $sp, 992                   # 8-byte Folded Spill
	st.d	$a6, $sp, 984                   # 8-byte Folded Spill
	st.d	$s8, $sp, 976                   # 8-byte Folded Spill
	st.d	$t0, $sp, 1096                  # 8-byte Folded Spill
	b	.LBB1_20
	.p2align	4, , 16
.LBB1_18:                               #   in Loop: Header=BB1_20 Depth=2
	move	$s0, $s4
.LBB1_19:                               # %._crit_edge2566
                                        #   in Loop: Header=BB1_20 Depth=2
	add.w	$s7, $s7, $s1
	add.w	$s5, $s5, $a7
	add.w	$t2, $a6, $t2
	addi.w	$t8, $t8, 1
	add.w	$s4, $s0, $s8
	beq	$t8, $s2, .LBB1_2
.LBB1_20:                               # %.preheader2454
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_23 Depth 3
                                        #         Child Loop BB1_24 Depth 4
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	blt	$a0, $s6, .LBB1_18
# %bb.21:                               # %.preheader2450.lr.ph
                                        #   in Loop: Header=BB1_20 Depth=2
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	move	$s0, $s4
	blt	$a0, $s6, .LBB1_27
# %bb.22:                               # %.preheader2450.us.preheader
                                        #   in Loop: Header=BB1_20 Depth=2
	st.d	$t8, $sp, 1008                  # 8-byte Folded Spill
	move	$a2, $zero
	.p2align	4, , 16
.LBB1_23:                               # %.preheader2450.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_20 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_24 Depth 4
	st.d	$a2, $sp, 1152                  # 8-byte Folded Spill
	move	$s3, $zero
	move	$ra, $zero
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$a7, $s5, $a0, 3
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	st.d	$s5, $sp, 800                   # 8-byte Folded Spill
	alsl.d	$t0, $s5, $a0, 3
	ld.d	$a0, $sp, 1104                  # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1256                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 1088                  # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1248                  # 8-byte Folded Spill
	ld.d	$t1, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$a2, $t2, $t1, 3
	ld.d	$a6, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a6, 3
	st.d	$a0, $sp, 1240                  # 8-byte Folded Spill
	ld.d	$a5, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a5, 3
	st.d	$a0, $sp, 1232                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a3, 3
	st.d	$a0, $sp, 1224                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1216                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 1136                  # 8-byte Folded Reload
	add.d	$a0, $a0, $t2
	ld.d	$a1, $sp, 1064                  # 8-byte Folded Reload
	alsl.d	$a4, $t2, $a1, 3
	ld.d	$a1, $sp, 1056                  # 8-byte Folded Reload
	alsl.d	$t3, $t2, $a1, 3
	ld.d	$a1, $sp, 1048                  # 8-byte Folded Reload
	alsl.d	$t4, $t2, $a1, 3
	ld.d	$a1, $sp, 1016                  # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1208                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 1024                  # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1200                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 1144                  # 8-byte Folded Reload
	add.d	$t2, $a1, $t2
	ld.d	$a1, $sp, 1032                  # 8-byte Folded Reload
	alsl.d	$t7, $s7, $a1, 3
	ld.d	$t5, $sp, 1040                  # 8-byte Folded Reload
	alsl.d	$fp, $s7, $t5, 3
	ld.d	$a1, $sp, 1128                  # 8-byte Folded Reload
	alsl.d	$a1, $s7, $a1, 3
	st.d	$a1, $sp, 1192                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 1120                  # 8-byte Folded Reload
	alsl.d	$a1, $s7, $a1, 3
	st.d	$a1, $sp, 1184                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 1112                  # 8-byte Folded Reload
	alsl.d	$a1, $s7, $a1, 3
	st.d	$a1, $sp, 1176                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 1080                  # 8-byte Folded Reload
	alsl.d	$s4, $s7, $a1, 3
	st.d	$s7, $sp, 808                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 1072                  # 8-byte Folded Reload
	add.d	$a1, $a1, $s7
	alsl.d	$a1, $a1, $t5, 3
	st.d	$a1, $sp, 1168                  # 8-byte Folded Spill
	alsl.d	$a1, $a0, $a6, 3
	st.d	$a1, $sp, 1160                  # 8-byte Folded Spill
	alsl.d	$s7, $a0, $a5, 3
	alsl.d	$s8, $a0, $a3, 3
	alsl.d	$t8, $a0, $t1, 3
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$t1, $s0, $a0, 3
	ld.d	$a0, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$a5, $s0, $a0, 3
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	alsl.d	$a6, $s0, $a0, 3
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a1, $s0, $a0, 3
	ld.d	$a0, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$a3, $s0, $a0, 3
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$t5, $s0, $a0, 3
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$t6, $s0, $a0, 3
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	st.d	$s0, $sp, 792                   # 8-byte Folded Spill
	alsl.d	$s0, $s0, $a0, 3
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 696                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 1096                  # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_24:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_20 Depth=2
                                        #       Parent Loop BB1_23 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $a7, $ra
	fldx.d	$fa1, $a4, $s3
	ld.d	$s1, $sp, 1168                  # 8-byte Folded Reload
	fldx.d	$fa2, $s1, $ra
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $t1, $ra
	fldx.d	$fa0, $a7, $ra
	fldx.d	$fa1, $t3, $s3
	add.d	$s1, $s4, $ra
	fld.d	$fa2, $s1, -8
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $a5, $ra
	fldx.d	$fa0, $a7, $ra
	fldx.d	$fa1, $t4, $s3
	fldx.d	$fa2, $s4, $ra
	fldx.d	$fa3, $a2, $s3
	ld.d	$s6, $sp, 1208                  # 8-byte Folded Reload
	fldx.d	$fa4, $s6, $s3
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	fstx.d	$fa0, $a6, $ra
	fldx.d	$fa0, $a7, $ra
	ld.d	$s6, $sp, 1200                  # 8-byte Folded Reload
	fldx.d	$fa1, $s6, $s3
	fld.d	$fa2, $s1, 8
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $a1, $ra
	fldx.d	$fa0, $a7, $ra
	ld.d	$s1, $sp, 1248                  # 8-byte Folded Reload
	fldx.d	$fa1, $s1, $s3
	ld.d	$s1, $sp, 1176                  # 8-byte Folded Reload
	fldx.d	$fa2, $s1, $ra
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $a3, $ra
	ld.d	$s1, $sp, 1240                  # 8-byte Folded Reload
	fldx.d	$fa0, $s1, $s3
	fldx.d	$fa1, $a7, $ra
	fldx.d	$fa2, $a4, $s3
	ld.d	$s1, $sp, 1192                  # 8-byte Folded Reload
	fldx.d	$fa3, $s1, $ra
	fldx.d	$fa4, $t0, $ra
	ld.d	$s1, $sp, 1160                  # 8-byte Folded Reload
	fldx.d	$fa5, $s1, $s3
	ld.d	$s1, $sp, 1184                  # 8-byte Folded Reload
	fldx.d	$fa6, $s1, $ra
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa1, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	fstx.d	$fa0, $t5, $ra
	ld.d	$s1, $sp, 1232                  # 8-byte Folded Reload
	fldx.d	$fa0, $s1, $s3
	fldx.d	$fa1, $a7, $ra
	fldx.d	$fa2, $t3, $s3
	add.d	$s1, $t7, $ra
	fld.d	$fa3, $s1, -8
	fldx.d	$fa4, $t0, $ra
	fldx.d	$fa5, $s7, $s3
	add.d	$s1, $fp, $ra
	fld.d	$fa6, $s1, -8
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa1, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	fstx.d	$fa0, $t6, $ra
	ld.d	$s1, $sp, 1224                  # 8-byte Folded Reload
	fldx.d	$fa0, $s1, $s3
	fldx.d	$fa1, $a7, $ra
	fldx.d	$fa2, $t4, $s3
	fldx.d	$fa3, $t7, $ra
	fldx.d	$fa4, $t0, $ra
	fldx.d	$fa5, $s8, $s3
	fldx.d	$fa6, $fp, $ra
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	ld.d	$s1, $sp, 1256                  # 8-byte Folded Reload
	fldx.d	$fa2, $s1, $s3
	fldx.d	$fa5, $t8, $s3
	fldx.d	$fa7, $a2, $s3
	ld.d	$s1, $sp, 1216                  # 8-byte Folded Reload
	fldx.d	$ft0, $s1, $s3
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmadd.d	$fa0, $fa4, $fa5, $fa0
	fmadd.d	$fa0, $fa7, $fa3, $fa0
	fmadd.d	$fa0, $ft0, $fa6, $fa0
	fstx.d	$fa0, $s0, $ra
	addi.d	$ra, $ra, 8
	addi.w	$a0, $a0, -1
	add.w	$t2, $t2, $s2
	add.d	$s3, $s3, $s5
	bnez	$a0, .LBB1_24
# %bb.25:                               # %._crit_edge.us
                                        #   in Loop: Header=BB1_23 Depth=3
	ld.d	$a1, $sp, 720                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 808                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	sub.w	$s7, $a1, $a0
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 800                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	sub.w	$s5, $a1, $a0
	ld.d	$a1, $sp, 704                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 792                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 1152                  # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	sub.w	$s0, $a1, $a0
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	bne	$a2, $a0, .LBB1_23
# %bb.26:                               # %._crit_edge2566.loopexit
                                        #   in Loop: Header=BB1_20 Depth=2
	ori	$s6, $zero, 1
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 1008                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1000                  # 8-byte Folded Reload
	ld.d	$a7, $sp, 992                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 984                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 976                   # 8-byte Folded Reload
	b	.LBB1_19
	.p2align	4, , 16
.LBB1_27:                               # %.preheader2450.preheader
                                        #   in Loop: Header=BB1_20 Depth=2
	ld.d	$a0, $sp, 968                   # 8-byte Folded Reload
	add.d	$s7, $a0, $s7
	ld.d	$a0, $sp, 960                   # 8-byte Folded Reload
	add.d	$s5, $a0, $s5
	ld.d	$a0, $sp, 952                   # 8-byte Folded Reload
	add.d	$t2, $a0, $t2
	ld.d	$a0, $sp, 944                   # 8-byte Folded Reload
	add.d	$s0, $a0, $s0
	b	.LBB1_19
	.p2align	4, , 16
.LBB1_28:                               #   in Loop: Header=BB1_3 Depth=1
	blt	$s2, $s6, .LBB1_2
# %bb.29:                               # %.preheader2455.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a3, $sp, 760                   # 8-byte Folded Reload
	blt	$a3, $s6, .LBB1_2
# %bb.30:                               # %.preheader2455.us.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$fp, $zero
	ld.d	$t5, $sp, 696                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 768                   # 8-byte Folded Reload
	mul.d	$a3, $t6, $t5
	ld.d	$t1, $sp, 720                   # 8-byte Folded Reload
	sub.d	$a4, $t1, $t6
	ld.d	$t3, $sp, 712                   # 8-byte Folded Reload
	sub.d	$a5, $t3, $t6
	sub.d	$s0, $a0, $a3
	ld.d	$t4, $sp, 704                   # 8-byte Folded Reload
	sub.d	$t0, $t4, $t6
	ld.d	$t8, $sp, 760                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $t8
	mul.d	$a2, $a2, $t1
	st.d	$a2, $sp, 840                   # 8-byte Folded Spill
	sub.d	$a2, $a7, $t8
	mul.d	$a2, $a2, $t3
	st.d	$a2, $sp, 832                   # 8-byte Folded Spill
	mul.d	$a2, $t8, $a0
	sub.d	$a2, $a6, $a2
	st.d	$a2, $sp, 824                   # 8-byte Folded Spill
	sub.d	$a1, $a1, $t8
	mul.d	$a1, $a1, $t4
	st.d	$a1, $sp, 816                   # 8-byte Folded Spill
	addi.d	$a1, $t8, -1
	mul.d	$a2, $a4, $a1
	add.d	$a2, $t1, $a2
	sub.d	$a2, $a2, $t6
	st.d	$a2, $sp, 504                   # 8-byte Folded Spill
	mul.d	$a2, $a5, $a1
	add.d	$a2, $t3, $a2
	sub.d	$a2, $a2, $t6
	st.d	$a2, $sp, 448                   # 8-byte Folded Spill
	st.d	$s0, $sp, 1016                  # 8-byte Folded Spill
	mul.d	$a2, $s0, $a1
	add.d	$a0, $a2, $a0
	sub.d	$a0, $a0, $a3
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	mul.d	$a0, $t0, $a1
	add.d	$a0, $t4, $a0
	sub.d	$a0, $a0, $t6
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1240                  # 8-byte Folded Reload
	bstrpick.d	$a4, $a0, 31, 0
	ld.d	$a0, $sp, 1192                  # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 1184                  # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a2, $a1, 3
	ld.d	$a3, $sp, 1032                  # 8-byte Folded Reload
	sub.d	$a3, $a3, $a2
	st.d	$a3, $sp, 1000                  # 8-byte Folded Spill
	ld.d	$a5, $sp, 1040                  # 8-byte Folded Reload
	sub.d	$a3, $a5, $a2
	st.d	$a3, $sp, 992                   # 8-byte Folded Spill
	slli.d	$a3, $a0, 3
	sub.d	$a2, $a2, $a3
	add.d	$a2, $a5, $a2
	st.d	$a2, $sp, 984                   # 8-byte Folded Spill
	st.d	$a4, $sp, 1008                  # 8-byte Folded Spill
	slli.d	$a2, $a4, 3
	ld.d	$a4, $sp, 728                   # 8-byte Folded Reload
	sub.d	$a4, $a4, $a2
	st.d	$a4, $sp, 976                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 608                   # 8-byte Folded Reload
	sub.d	$a4, $a4, $a2
	st.d	$a4, $sp, 968                   # 8-byte Folded Spill
	sub.d	$a3, $a5, $a3
	st.d	$a3, $sp, 960                   # 8-byte Folded Spill
	add.d	$a0, $a0, $a1
	sub.d	$a0, $zero, $a0
	st.d	$a0, $sp, 952                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 736                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 944                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 936                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 744                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 928                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 776                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 920                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 752                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 912                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 784                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 904                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1176                  # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 896                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 888                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1168                  # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 880                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 872                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 864                   # 8-byte Folded Spill
	slli.d	$a1, $t5, 3
	st.d	$a1, $sp, 856                   # 8-byte Folded Spill
	b	.LBB1_33
	.p2align	4, , 16
.LBB1_31:                               # %.preheader2451.us2536.preheader
                                        #   in Loop: Header=BB1_33 Depth=2
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	add.d	$s7, $a0, $s7
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	add.d	$t7, $a0, $t7
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	add.d	$t2, $a0, $t2
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	add.d	$s4, $a0, $s4
.LBB1_32:                               # %._crit_edge2520.us
                                        #   in Loop: Header=BB1_33 Depth=2
	ld.d	$a0, $sp, 840                   # 8-byte Folded Reload
	add.w	$s7, $s7, $a0
	ld.d	$a0, $sp, 832                   # 8-byte Folded Reload
	add.w	$t7, $t7, $a0
	ld.d	$a0, $sp, 824                   # 8-byte Folded Reload
	add.w	$t2, $a0, $t2
	addi.w	$fp, $fp, 1
	ld.d	$a0, $sp, 816                   # 8-byte Folded Reload
	add.w	$s4, $s4, $a0
	beq	$fp, $s2, .LBB1_2
.LBB1_33:                               # %.preheader2455.us
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_35 Depth 3
                                        #         Child Loop BB1_36 Depth 4
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	blt	$a0, $s6, .LBB1_31
# %bb.34:                               # %.preheader2451.us.us.preheader
                                        #   in Loop: Header=BB1_33 Depth=2
	st.d	$fp, $sp, 848                   # 8-byte Folded Spill
	move	$a1, $zero
	.p2align	4, , 16
.LBB1_35:                               # %.preheader2451.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_33 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_36 Depth 4
	st.d	$a1, $sp, 1024                  # 8-byte Folded Spill
	move	$a3, $zero
	move	$a5, $zero
	ld.d	$a0, $sp, 976                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1256                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 968                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1248                  # 8-byte Folded Spill
	ld.d	$a7, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$s3, $t2, $a7, 3
	ld.d	$a6, $sp, 776                   # 8-byte Folded Reload
	alsl.d	$a4, $t2, $a6, 3
	ld.d	$t5, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$t8, $t2, $t5, 3
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1240                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1232                  # 8-byte Folded Spill
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $t4, 3
	st.d	$a0, $sp, 1224                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1216                  # 8-byte Folded Spill
	ld.d	$t3, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $t3, 3
	st.d	$a0, $sp, 1208                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1200                  # 8-byte Folded Spill
	ld.d	$t1, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $t1, 3
	st.d	$a0, $sp, 1192                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1184                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 1008                  # 8-byte Folded Reload
	add.d	$a0, $a0, $t2
	ld.d	$a1, $sp, 944                   # 8-byte Folded Reload
	alsl.d	$t6, $t2, $a1, 3
	ld.d	$a1, $sp, 936                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1176                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 928                   # 8-byte Folded Reload
	alsl.d	$a2, $t2, $a1, 3
	ld.d	$a1, $sp, 920                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1168                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 912                   # 8-byte Folded Reload
	alsl.d	$t0, $t2, $a1, 3
	ld.d	$a1, $sp, 904                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1160                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 896                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1152                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 888                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1144                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 880                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1136                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 872                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1128                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 864                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 1016                  # 8-byte Folded Reload
	add.d	$t2, $a1, $t2
	ld.d	$a1, $sp, 952                   # 8-byte Folded Reload
	add.d	$a1, $a1, $s7
	ld.d	$fp, $sp, 1040                  # 8-byte Folded Reload
	alsl.d	$a1, $a1, $fp, 3
	st.d	$a1, $sp, 1112                  # 8-byte Folded Spill
	alsl.d	$a1, $a0, $t4, 3
	st.d	$a1, $sp, 1104                  # 8-byte Folded Spill
	alsl.d	$a1, $a0, $a7, 3
	st.d	$a1, $sp, 1096                  # 8-byte Folded Spill
	alsl.d	$a1, $a0, $t3, 3
	st.d	$a1, $sp, 1088                  # 8-byte Folded Spill
	alsl.d	$a1, $a0, $a6, 3
	st.d	$a1, $sp, 1080                  # 8-byte Folded Spill
	alsl.d	$a1, $a0, $t1, 3
	st.d	$a1, $sp, 1072                  # 8-byte Folded Spill
	alsl.d	$a0, $a0, $t5, 3
	st.d	$a0, $sp, 1064                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$s8, $t7, $a0, 3
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	st.d	$t7, $sp, 800                   # 8-byte Folded Spill
	alsl.d	$ra, $t7, $a0, 3
	ld.d	$a0, $sp, 1032                  # 8-byte Folded Reload
	alsl.d	$t4, $s7, $a0, 3
	alsl.d	$t5, $s7, $fp, 3
	ld.d	$a0, $sp, 1000                  # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 1056                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 992                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 1048                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 984                   # 8-byte Folded Reload
	alsl.d	$t3, $s7, $a0, 3
	st.d	$s7, $sp, 808                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 960                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	ld.d	$a1, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$s6, $s4, $a1, 3
	ld.d	$a1, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$s1, $s4, $a1, 3
	ld.d	$a1, $sp, 648                   # 8-byte Folded Reload
	alsl.d	$a1, $s4, $a1, 3
	ld.d	$a6, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$s5, $s4, $a6, 3
	ld.d	$a6, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$t1, $s4, $a6, 3
	ld.d	$a6, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$s7, $s4, $a6, 3
	ld.d	$a6, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$fp, $s4, $a6, 3
	ld.d	$a6, $sp, 672                   # 8-byte Folded Reload
	st.d	$s4, $sp, 792                   # 8-byte Folded Spill
	alsl.d	$s0, $s4, $a6, 3
	ld.d	$a6, $sp, 768                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 696                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 856                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_36:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_33 Depth=2
                                        #       Parent Loop BB1_35 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $s8, $a5
	fldx.d	$fa1, $t6, $a3
	ld.d	$s2, $sp, 1176                  # 8-byte Folded Reload
	fldx.d	$fa2, $s2, $a3
	ld.d	$a7, $sp, 1112                  # 8-byte Folded Reload
	fldx.d	$fa3, $a7, $a5
	fldx.d	$fa4, $s3, $a3
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $s6, $a5
	fldx.d	$fa0, $s8, $a5
	fldx.d	$fa1, $a2, $a3
	add.d	$s2, $a0, $a5
	ld.d	$a7, $sp, 1168                  # 8-byte Folded Reload
	fldx.d	$fa2, $a7, $a3
	fld.d	$fa3, $s2, -8
	fldx.d	$fa4, $a4, $a3
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $s1, $a5
	fldx.d	$fa0, $s8, $a5
	fldx.d	$fa1, $t0, $a3
	fldx.d	$fa2, $a0, $a5
	fldx.d	$fa3, $t8, $a3
	ld.d	$a7, $sp, 1160                  # 8-byte Folded Reload
	fldx.d	$fa4, $a7, $a3
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	fstx.d	$fa0, $a1, $a5
	fldx.d	$fa0, $s8, $a5
	ld.d	$a7, $sp, 1152                  # 8-byte Folded Reload
	fldx.d	$fa1, $a7, $a3
	ld.d	$a7, $sp, 1144                  # 8-byte Folded Reload
	fldx.d	$fa2, $a7, $a3
	fld.d	$fa3, $s2, 8
	ld.d	$s2, $sp, 1240                  # 8-byte Folded Reload
	fldx.d	$fa4, $s2, $a3
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $s5, $a5
	fldx.d	$fa0, $s8, $a5
	ld.d	$a7, $sp, 1136                  # 8-byte Folded Reload
	fldx.d	$fa1, $a7, $a3
	ld.d	$a7, $sp, 1128                  # 8-byte Folded Reload
	fldx.d	$fa2, $a7, $a3
	fldx.d	$fa3, $t3, $a5
	ld.d	$s2, $sp, 1232                  # 8-byte Folded Reload
	fldx.d	$fa4, $s2, $a3
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $t1, $a5
	ld.d	$s2, $sp, 1224                  # 8-byte Folded Reload
	fldx.d	$fa0, $s2, $a3
	fldx.d	$fa1, $s8, $a5
	fldx.d	$fa2, $t6, $a3
	ld.d	$a7, $sp, 1056                  # 8-byte Folded Reload
	fldx.d	$fa3, $a7, $a5
	fldx.d	$fa4, $ra, $a5
	ld.d	$a7, $sp, 1104                  # 8-byte Folded Reload
	fldx.d	$fa5, $a7, $a3
	ld.d	$a7, $sp, 1048                  # 8-byte Folded Reload
	fldx.d	$fa6, $a7, $a5
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fldx.d	$fa2, $s3, $a3
	ld.d	$s2, $sp, 1216                  # 8-byte Folded Reload
	fldx.d	$fa5, $s2, $a3
	ld.d	$a7, $sp, 1120                  # 8-byte Folded Reload
	fldx.d	$fa7, $a7, $a3
	ld.d	$a7, $sp, 1096                  # 8-byte Folded Reload
	fldx.d	$ft0, $a7, $a3
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	fstx.d	$fa0, $s7, $a5
	ld.d	$s2, $sp, 1208                  # 8-byte Folded Reload
	fldx.d	$fa0, $s2, $a3
	fldx.d	$fa1, $s8, $a5
	fldx.d	$fa2, $a2, $a3
	add.d	$s2, $t4, $a5
	fld.d	$fa3, $s2, -8
	fldx.d	$fa4, $ra, $a5
	ld.d	$a7, $sp, 1088                  # 8-byte Folded Reload
	fldx.d	$fa5, $a7, $a3
	add.d	$s2, $t5, $a5
	fld.d	$fa6, $s2, -8
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fldx.d	$fa2, $a4, $a3
	ld.d	$s2, $sp, 1200                  # 8-byte Folded Reload
	fldx.d	$fa5, $s2, $a3
	ld.d	$s2, $sp, 1248                  # 8-byte Folded Reload
	fldx.d	$fa7, $s2, $a3
	ld.d	$a7, $sp, 1080                  # 8-byte Folded Reload
	fldx.d	$ft0, $a7, $a3
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	fstx.d	$fa0, $fp, $a5
	ld.d	$s2, $sp, 1192                  # 8-byte Folded Reload
	fldx.d	$fa0, $s2, $a3
	fldx.d	$fa1, $s8, $a5
	fldx.d	$fa2, $t0, $a3
	fldx.d	$fa3, $t4, $a5
	fldx.d	$fa4, $ra, $a5
	ld.d	$a7, $sp, 1072                  # 8-byte Folded Reload
	fldx.d	$fa5, $a7, $a3
	fldx.d	$fa6, $t5, $a5
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	ld.d	$s2, $sp, 1256                  # 8-byte Folded Reload
	fldx.d	$fa2, $s2, $a3
	ld.d	$a7, $sp, 1064                  # 8-byte Folded Reload
	fldx.d	$fa5, $a7, $a3
	fldx.d	$fa7, $t8, $a3
	ld.d	$s2, $sp, 1184                  # 8-byte Folded Reload
	fldx.d	$ft0, $s2, $a3
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmadd.d	$fa0, $fa4, $fa5, $fa0
	fmadd.d	$fa0, $fa7, $fa3, $fa0
	fmadd.d	$fa0, $ft0, $fa6, $fa0
	fstx.d	$fa0, $s0, $a5
	addi.d	$a5, $a5, 8
	addi.w	$a6, $a6, -1
	add.w	$t2, $t2, $s4
	add.d	$a3, $a3, $t7
	bnez	$a6, .LBB1_36
# %bb.37:                               # %._crit_edge.us.us2549
                                        #   in Loop: Header=BB1_35 Depth=3
	ld.d	$a0, $sp, 720                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 808                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	sub.w	$s7, $a0, $a6
	ld.d	$a0, $sp, 712                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 800                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	sub.w	$t7, $a0, $a6
	ld.d	$a0, $sp, 704                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 792                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 1024                  # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	sub.w	$s4, $a0, $a6
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB1_35
# %bb.38:                               # %._crit_edge2520.us.loopexit
                                        #   in Loop: Header=BB1_33 Depth=2
	ori	$s6, $zero, 1
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 848                   # 8-byte Folded Reload
	b	.LBB1_32
	.p2align	4, , 16
.LBB1_39:                               #   in Loop: Header=BB1_3 Depth=1
	blt	$s2, $s6, .LBB1_2
# %bb.40:                               # %.preheader2456.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a3, $sp, 760                   # 8-byte Folded Reload
	blt	$a3, $s6, .LBB1_2
# %bb.41:                               # %.preheader2456.us.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$s1, $t7
	move	$t8, $zero
	ld.d	$t5, $sp, 696                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 768                   # 8-byte Folded Reload
	mul.d	$a3, $t6, $t5
	ld.d	$t1, $sp, 720                   # 8-byte Folded Reload
	sub.d	$a4, $t1, $t6
	ld.d	$t3, $sp, 712                   # 8-byte Folded Reload
	sub.d	$a5, $t3, $t6
	sub.d	$fp, $a0, $a3
	ld.d	$t4, $sp, 704                   # 8-byte Folded Reload
	sub.d	$t0, $t4, $t6
	ld.d	$t7, $sp, 760                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $t7
	mul.d	$a2, $a2, $t1
	st.d	$a2, $sp, 336                   # 8-byte Folded Spill
	sub.d	$a2, $a7, $t7
	mul.d	$a2, $a2, $t3
	st.d	$a2, $sp, 328                   # 8-byte Folded Spill
	mul.d	$a2, $t7, $a0
	sub.d	$a2, $a6, $a2
	st.d	$a2, $sp, 320                   # 8-byte Folded Spill
	sub.d	$a1, $a1, $t7
	mul.d	$a1, $a1, $t4
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	addi.d	$a1, $t7, -1
	mul.d	$a2, $a4, $a1
	add.d	$a2, $t1, $a2
	sub.d	$a2, $a2, $t6
	st.d	$a2, $sp, 304                   # 8-byte Folded Spill
	mul.d	$a2, $a5, $a1
	add.d	$a2, $t3, $a2
	sub.d	$a2, $a2, $t6
	st.d	$a2, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 912                   # 8-byte Folded Spill
	mul.d	$a2, $fp, $a1
	add.d	$a0, $a2, $a0
	sub.d	$a0, $a0, $a3
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	mul.d	$a0, $t0, $a1
	add.d	$a0, $t4, $a0
	sub.d	$a0, $a0, $t6
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1240                  # 8-byte Folded Reload
	bstrpick.d	$a3, $a0, 31, 0
	ld.d	$a0, $sp, 1192                  # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 1184                  # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 1032                  # 8-byte Folded Reload
	addi.d	$a4, $a2, -8
	ld.d	$a5, $sp, 1040                  # 8-byte Folded Reload
	addi.d	$a6, $a5, -8
	st.d	$a3, $sp, 904                   # 8-byte Folded Spill
	slli.d	$a2, $a3, 3
	ld.d	$a3, $sp, 728                   # 8-byte Folded Reload
	sub.d	$a3, $a3, $a2
	st.d	$a3, $sp, 880                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 608                   # 8-byte Folded Reload
	sub.d	$a3, $a3, $a2
	st.d	$a3, $sp, 872                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 600                   # 8-byte Folded Reload
	sub.d	$a3, $a3, $a2
	st.d	$a3, $sp, 864                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a3, $a3, $a2
	st.d	$a3, $sp, 856                   # 8-byte Folded Spill
	slli.d	$a3, $a1, 3
	st.d	$a4, $sp, 896                   # 8-byte Folded Spill
	sub.d	$a4, $a4, $a3
	st.d	$a4, $sp, 848                   # 8-byte Folded Spill
	sub.d	$a4, $a6, $a3
	st.d	$a4, $sp, 840                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 576                   # 8-byte Folded Reload
	sub.d	$a4, $a4, $a2
	st.d	$a4, $sp, 832                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 1168                  # 8-byte Folded Reload
	sub.d	$a4, $a4, $a2
	st.d	$a4, $sp, 824                   # 8-byte Folded Spill
	slli.d	$a4, $a0, 3
	sub.d	$a3, $a3, $a4
	st.d	$a6, $sp, 888                   # 8-byte Folded Spill
	add.d	$a3, $a6, $a3
	st.d	$a3, $sp, 816                   # 8-byte Folded Spill
	sub.d	$a3, $a5, $a4
	st.d	$a3, $sp, 504                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a3, $a3, $a2
	st.d	$a3, $sp, 448                   # 8-byte Folded Spill
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a2
	st.d	$a1, $sp, 440                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 1176                  # 8-byte Folded Reload
	sub.d	$a1, $a1, $a2
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	sub.d	$a0, $zero, $a0
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 784                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 568                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 736                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 744                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 776                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 752                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	slli.d	$a1, $t5, 3
	st.d	$a1, $sp, 352                   # 8-byte Folded Spill
	b	.LBB1_44
	.p2align	4, , 16
.LBB1_42:                               # %.preheader2452.us2493.preheader
                                        #   in Loop: Header=BB1_44 Depth=2
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	add.d	$s7, $a0, $s7
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	add.d	$s1, $a0, $s1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	add.d	$t2, $a0, $t2
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	add.d	$s4, $a0, $s4
.LBB1_43:                               # %._crit_edge2479.us
                                        #   in Loop: Header=BB1_44 Depth=2
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	add.w	$s7, $s7, $a0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	add.w	$s1, $s1, $a0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	add.w	$t2, $a0, $t2
	addi.w	$t8, $t8, 1
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	add.w	$s4, $s4, $a0
	beq	$t8, $s2, .LBB1_2
.LBB1_44:                               # %.preheader2456.us
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_46 Depth 3
                                        #         Child Loop BB1_47 Depth 4
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	blt	$a0, $s6, .LBB1_42
# %bb.45:                               # %.preheader2452.us.us.preheader
                                        #   in Loop: Header=BB1_44 Depth=2
	st.d	$t8, $sp, 344                   # 8-byte Folded Spill
	move	$a1, $zero
	.p2align	4, , 16
.LBB1_46:                               # %.preheader2452.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_44 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_47 Depth 4
	st.d	$a1, $sp, 920                   # 8-byte Folded Spill
	move	$a1, $zero
	move	$a3, $zero
	ld.d	$a0, $sp, 880                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1256                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 872                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1248                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 864                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1240                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 856                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1232                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1224                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 824                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1216                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1208                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1200                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1192                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1184                  # 8-byte Folded Spill
	ld.d	$t5, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$t3, $t2, $t5, 3
	ld.d	$t4, $sp, 776                   # 8-byte Folded Reload
	alsl.d	$a4, $t2, $t4, 3
	move	$ra, $s4
	ld.d	$s0, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$s4, $t2, $s0, 3
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1176                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1168                  # 8-byte Folded Spill
	ld.d	$a5, $sp, 568                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a5, 3
	st.d	$a0, $sp, 1160                  # 8-byte Folded Spill
	ld.d	$fp, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $fp, 3
	st.d	$a0, $sp, 1152                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1144                  # 8-byte Folded Spill
	ld.d	$a7, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a7, 3
	st.d	$a0, $sp, 1136                  # 8-byte Folded Spill
	ld.d	$t8, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $t8, 3
	st.d	$a0, $sp, 1128                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$t6, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $t6, 3
	st.d	$a0, $sp, 1112                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1104                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 904                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t2
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$t0, $t2, $a2, 3
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$t7, $t2, $a2, 3
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a2, $t2, $a2, 3
	st.d	$a2, $sp, 1096                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a6, $t2, $a2, 3
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$t1, $t2, $a2, 3
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$a2, $t2, $a2, 3
	st.d	$a2, $sp, 1088                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$s5, $t2, $a2, 3
	ld.d	$a2, $sp, 912                   # 8-byte Folded Reload
	add.d	$t2, $a2, $t2
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	add.d	$a2, $a2, $s7
	ld.d	$s2, $sp, 888                   # 8-byte Folded Reload
	alsl.d	$s6, $a2, $s2, 3
	alsl.d	$a2, $a0, $a5, 3
	st.d	$a2, $sp, 1080                  # 8-byte Folded Spill
	alsl.d	$a2, $a0, $fp, 3
	st.d	$a2, $sp, 1072                  # 8-byte Folded Spill
	alsl.d	$a2, $a0, $t5, 3
	st.d	$a2, $sp, 1064                  # 8-byte Folded Spill
	alsl.d	$a2, $a0, $a7, 3
	st.d	$a2, $sp, 1056                  # 8-byte Folded Spill
	alsl.d	$a2, $a0, $t8, 3
	st.d	$a2, $sp, 1048                  # 8-byte Folded Spill
	alsl.d	$a2, $a0, $t4, 3
	st.d	$a2, $sp, 1040                  # 8-byte Folded Spill
	alsl.d	$a2, $a0, $t6, 3
	st.d	$a2, $sp, 1032                  # 8-byte Folded Spill
	alsl.d	$a0, $a0, $s0, 3
	st.d	$a0, $sp, 1024                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$t8, $s1, $a0, 3
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	st.d	$s1, $sp, 800                   # 8-byte Folded Spill
	alsl.d	$t4, $s1, $a0, 3
	ld.d	$a0, $sp, 896                   # 8-byte Folded Reload
	alsl.d	$t5, $s7, $a0, 3
	alsl.d	$s2, $s7, $s2, 3
	ld.d	$a0, $sp, 848                   # 8-byte Folded Reload
	alsl.d	$t6, $s7, $a0, 3
	ld.d	$a0, $sp, 840                   # 8-byte Folded Reload
	alsl.d	$s8, $s7, $a0, 3
	ld.d	$a0, $sp, 816                   # 8-byte Folded Reload
	alsl.d	$a5, $s7, $a0, 3
	st.d	$s7, $sp, 808                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$s1, $s7, $a0, 3
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$a0, $ra, $a0, 3
	st.d	$a0, $sp, 1016                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$a0, $ra, $a0, 3
	st.d	$a0, $sp, 1008                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$a0, $ra, $a0, 3
	st.d	$a0, $sp, 1000                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$a0, $ra, $a0, 3
	st.d	$a0, $sp, 992                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	alsl.d	$a0, $ra, $a0, 3
	st.d	$a0, $sp, 984                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a0, $ra, $a0, 3
	st.d	$a0, $sp, 976                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$a0, $ra, $a0, 3
	st.d	$a0, $sp, 968                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$a0, $ra, $a0, 3
	st.d	$a0, $sp, 960                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a0, $ra, $a0, 3
	st.d	$a0, $sp, 952                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$a0, $ra, $a0, 3
	st.d	$a0, $sp, 944                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$a0, $ra, $a0, 3
	st.d	$a0, $sp, 936                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a0, $ra, $a0, 3
	st.d	$a0, $sp, 928                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$fp, $ra, $a0, 3
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	st.d	$ra, $sp, 792                   # 8-byte Folded Spill
	alsl.d	$ra, $ra, $a0, 3
	ld.d	$s0, $sp, 768                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 696                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 352                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_47:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_44 Depth=2
                                        #       Parent Loop BB1_46 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $t8, $a3
	fldx.d	$fa1, $t0, $a1
	fldx.d	$fa2, $s6, $a3
	fmul.d	$fa0, $fa0, $fa1
	add.d	$s7, $s6, $a3
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$a0, $sp, 1016                  # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a3
	fldx.d	$fa0, $t8, $a3
	fldx.d	$fa1, $t7, $a1
	ld.d	$a0, $sp, 1096                  # 8-byte Folded Reload
	fldx.d	$fa2, $a0, $a1
	fld.d	$fa3, $s7, 8
	fldx.d	$fa4, $t3, $a1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a0, $sp, 1008                  # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a3
	fldx.d	$fa0, $t8, $a3
	fldx.d	$fa1, $a6, $a1
	fld.d	$fa2, $s7, 16
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$a0, $sp, 1000                  # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a3
	fldx.d	$fa0, $t8, $a3
	fldx.d	$fa1, $t1, $a1
	add.d	$s7, $s1, $a3
	ld.d	$a0, $sp, 1088                  # 8-byte Folded Reload
	fldx.d	$fa2, $a0, $a1
	fld.d	$fa3, $s7, -8
	fldx.d	$fa4, $a4, $a1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a0, $sp, 992                   # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a3
	fldx.d	$fa0, $t8, $a3
	fldx.d	$fa1, $s5, $a1
	fldx.d	$fa2, $s1, $a3
	fldx.d	$fa3, $s4, $a1
	ld.d	$a0, $sp, 1184                  # 8-byte Folded Reload
	fldx.d	$fa4, $a0, $a1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	ld.d	$a0, $sp, 984                   # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a3
	fldx.d	$fa0, $t8, $a3
	ld.d	$a0, $sp, 1192                  # 8-byte Folded Reload
	fldx.d	$fa1, $a0, $a1
	ld.d	$a0, $sp, 1200                  # 8-byte Folded Reload
	fldx.d	$fa2, $a0, $a1
	fld.d	$fa3, $s7, 8
	ld.d	$a0, $sp, 1176                  # 8-byte Folded Reload
	fldx.d	$fa4, $a0, $a1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a0, $sp, 976                   # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a3
	fldx.d	$fa0, $t8, $a3
	ld.d	$a0, $sp, 1208                  # 8-byte Folded Reload
	fldx.d	$fa1, $a0, $a1
	fldx.d	$fa2, $a5, $a3
	fmul.d	$fa0, $fa0, $fa1
	add.d	$s7, $a5, $a3
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$a0, $sp, 968                   # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a3
	fldx.d	$fa0, $t8, $a3
	ld.d	$a0, $sp, 1216                  # 8-byte Folded Reload
	fldx.d	$fa1, $a0, $a1
	ld.d	$a0, $sp, 1224                  # 8-byte Folded Reload
	fldx.d	$fa2, $a0, $a1
	fld.d	$fa3, $s7, 8
	ld.d	$a0, $sp, 1168                  # 8-byte Folded Reload
	fldx.d	$fa4, $a0, $a1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a0, $sp, 960                   # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a3
	fldx.d	$fa0, $t8, $a3
	ld.d	$a0, $sp, 1232                  # 8-byte Folded Reload
	fldx.d	$fa1, $a0, $a1
	fld.d	$fa2, $s7, 16
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$a0, $sp, 952                   # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a3
	fldx.d	$fa0, $t8, $a3
	fldx.d	$fa1, $t0, $a1
	ld.d	$a0, $sp, 1160                  # 8-byte Folded Reload
	fldx.d	$fa2, $a0, $a1
	fmul.d	$fa0, $fa0, $fa1
	fldx.d	$fa1, $t6, $a3
	fldx.d	$fa3, $t4, $a3
	ld.d	$a0, $sp, 1080                  # 8-byte Folded Reload
	fldx.d	$fa4, $a0, $a1
	add.d	$s7, $t6, $a3
	fldx.d	$fa5, $s8, $a3
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fmul.d	$fa1, $fa3, $fa4
	add.d	$a0, $s8, $a3
	fmadd.d	$fa0, $fa1, $fa5, $fa0
	ld.d	$a7, $sp, 944                   # 8-byte Folded Reload
	fstx.d	$fa0, $a7, $a3
	ld.d	$a7, $sp, 1152                  # 8-byte Folded Reload
	fldx.d	$fa0, $a7, $a1
	fldx.d	$fa1, $t8, $a3
	fldx.d	$fa2, $t7, $a1
	fld.d	$fa3, $s7, 8
	fldx.d	$fa4, $t4, $a3
	ld.d	$a7, $sp, 1072                  # 8-byte Folded Reload
	fldx.d	$fa5, $a7, $a1
	fld.d	$fa6, $a0, 8
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fldx.d	$fa2, $t3, $a1
	ld.d	$a7, $sp, 1144                  # 8-byte Folded Reload
	fldx.d	$fa5, $a7, $a1
	ld.d	$a7, $sp, 1240                  # 8-byte Folded Reload
	fldx.d	$fa7, $a7, $a1
	ld.d	$a7, $sp, 1064                  # 8-byte Folded Reload
	fldx.d	$ft0, $a7, $a1
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$a7, $sp, 936                   # 8-byte Folded Reload
	fstx.d	$fa0, $a7, $a3
	fld.d	$fa0, $s7, 16
	ld.d	$a7, $sp, 1136                  # 8-byte Folded Reload
	fldx.d	$fa1, $a7, $a1
	fldx.d	$fa2, $t8, $a3
	fldx.d	$fa3, $a6, $a1
	fldx.d	$fa4, $t4, $a3
	ld.d	$a7, $sp, 1056                  # 8-byte Folded Reload
	fldx.d	$fa5, $a7, $a1
	fld.d	$fa6, $a0, 16
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa0, $fa2, $fa0, $fa1
	fmul.d	$fa1, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	ld.d	$a0, $sp, 928                   # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a3
	fldx.d	$fa0, $t8, $a3
	fldx.d	$fa1, $t1, $a1
	ld.d	$a0, $sp, 1128                  # 8-byte Folded Reload
	fldx.d	$fa2, $a0, $a1
	fmul.d	$fa1, $fa0, $fa1
	fldx.d	$fa3, $t5, $a3
	fldx.d	$fa4, $t4, $a3
	ld.d	$a0, $sp, 1048                  # 8-byte Folded Reload
	fldx.d	$fa5, $a0, $a1
	fldx.d	$fa6, $s2, $a3
	add.d	$a0, $t5, $a3
	fmadd.d	$fa1, $fa1, $fa3, $fa2
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa1, $fa2, $fa6, $fa1
	fldx.d	$fa2, $a4, $a1
	ld.d	$a7, $sp, 1120                  # 8-byte Folded Reload
	fldx.d	$fa5, $a7, $a1
	ld.d	$s7, $sp, 1248                  # 8-byte Folded Reload
	fldx.d	$fa7, $s7, $a1
	ld.d	$a7, $sp, 1040                  # 8-byte Folded Reload
	fldx.d	$ft0, $a7, $a1
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fmadd.d	$fa1, $fa5, $fa6, $fa1
	fmadd.d	$fa0, $fa0, $fa7, $fa1
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	fstx.d	$fa0, $fp, $a3
	fld.d	$fa0, $a0, 8
	add.d	$a0, $s2, $a3
	ld.d	$a7, $sp, 1112                  # 8-byte Folded Reload
	fldx.d	$fa1, $a7, $a1
	fldx.d	$fa2, $t8, $a3
	fldx.d	$fa3, $s5, $a1
	fldx.d	$fa4, $t4, $a3
	ld.d	$a7, $sp, 1032                  # 8-byte Folded Reload
	fldx.d	$fa5, $a7, $a1
	fld.d	$fa6, $a0, 8
	fmul.d	$fa3, $fa2, $fa3
	fmadd.d	$fa1, $fa3, $fa0, $fa1
	fmul.d	$fa3, $fa4, $fa5
	fmadd.d	$fa1, $fa3, $fa6, $fa1
	ld.d	$a0, $sp, 1256                  # 8-byte Folded Reload
	fldx.d	$fa3, $a0, $a1
	ld.d	$a0, $sp, 1024                  # 8-byte Folded Reload
	fldx.d	$fa5, $a0, $a1
	fldx.d	$fa7, $s4, $a1
	ld.d	$a0, $sp, 1104                  # 8-byte Folded Reload
	fldx.d	$ft0, $a0, $a1
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fmadd.d	$fa1, $fa4, $fa5, $fa1
	fmadd.d	$fa0, $fa7, $fa0, $fa1
	fmadd.d	$fa0, $ft0, $fa6, $fa0
	fstx.d	$fa0, $ra, $a3
	addi.d	$a3, $a3, 8
	addi.w	$s0, $s0, -1
	add.w	$t2, $t2, $a2
	add.d	$a1, $a1, $s3
	bnez	$s0, .LBB1_47
# %bb.48:                               # %._crit_edge.us.us
                                        #   in Loop: Header=BB1_46 Depth=3
	ld.d	$a0, $sp, 720                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 808                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	sub.w	$s7, $a0, $s0
	ld.d	$a0, $sp, 712                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 800                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	sub.w	$s1, $a0, $s0
	ld.d	$a0, $sp, 704                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 792                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 920                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	sub.w	$s4, $a0, $s0
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB1_46
# %bb.49:                               # %._crit_edge2479.us.loopexit
                                        #   in Loop: Header=BB1_44 Depth=2
	ori	$s6, $zero, 1
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 344                   # 8-byte Folded Reload
	b	.LBB1_43
	.p2align	4, , 16
.LBB1_50:                               #   in Loop: Header=BB1_3 Depth=1
	blt	$s2, $s6, .LBB1_2
# %bb.51:                               # %.preheader2453.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$t8, $zero
	ld.d	$t5, $sp, 696                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 768                   # 8-byte Folded Reload
	mul.d	$a3, $t6, $t5
	ld.d	$t1, $sp, 720                   # 8-byte Folded Reload
	sub.d	$a4, $t1, $t6
	ld.d	$t3, $sp, 712                   # 8-byte Folded Reload
	sub.d	$a5, $t3, $t6
	sub.d	$fp, $a0, $a3
	ld.d	$t4, $sp, 704                   # 8-byte Folded Reload
	sub.d	$t0, $t4, $t6
	ld.d	$t7, $sp, 760                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $t7
	mul.d	$s0, $a2, $t1
	sub.d	$a2, $a7, $t7
	mul.d	$a7, $a2, $t3
	mul.d	$a2, $t7, $a0
	sub.d	$a6, $a6, $a2
	sub.d	$a1, $a1, $t7
	mul.d	$s1, $a1, $t4
	addi.d	$a1, $t7, -1
	mul.d	$a2, $a4, $a1
	add.d	$a2, $t1, $a2
	sub.d	$a2, $a2, $t6
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	mul.d	$a2, $a5, $a1
	add.d	$a2, $t3, $a2
	sub.d	$a2, $a2, $t6
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	st.d	$fp, $sp, 448                   # 8-byte Folded Spill
	mul.d	$a2, $fp, $a1
	add.d	$a0, $a2, $a0
	sub.d	$a0, $a0, $a3
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	mul.d	$a0, $t0, $a1
	add.d	$a0, $t4, $a0
	sub.d	$a0, $a0, $t6
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 1240                  # 8-byte Folded Reload
	bstrpick.d	$a3, $a0, 31, 0
	ld.d	$a0, $sp, 1192                  # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 1184                  # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 1032                  # 8-byte Folded Reload
	addi.d	$a4, $a2, -8
	ld.d	$a5, $sp, 1040                  # 8-byte Folded Reload
	addi.d	$t0, $a5, -8
	st.d	$a3, $sp, 440                   # 8-byte Folded Spill
	slli.d	$a2, $a3, 3
	ld.d	$a3, $sp, 728                   # 8-byte Folded Reload
	sub.d	$a3, $a3, $a2
	st.d	$a3, $sp, 416                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 608                   # 8-byte Folded Reload
	sub.d	$a3, $a3, $a2
	st.d	$a3, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 488                   # 8-byte Folded Reload
	sub.d	$a3, $a3, $a2
	st.d	$a3, $sp, 400                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 600                   # 8-byte Folded Reload
	sub.d	$a3, $a3, $a2
	st.d	$a3, $sp, 392                   # 8-byte Folded Spill
	slli.d	$a3, $a1, 3
	st.d	$a4, $sp, 432                   # 8-byte Folded Spill
	sub.d	$a4, $a4, $a3
	st.d	$a4, $sp, 384                   # 8-byte Folded Spill
	sub.d	$a4, $t0, $a3
	st.d	$a4, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 496                   # 8-byte Folded Reload
	sub.d	$a4, $a4, $a2
	st.d	$a4, $sp, 368                   # 8-byte Folded Spill
	slli.d	$a4, $a0, 3
	sub.d	$a3, $a3, $a4
	sub.d	$a4, $a5, $a4
	st.d	$a4, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 456                   # 8-byte Folded Reload
	sub.d	$a4, $a4, $a2
	st.d	$a4, $sp, 352                   # 8-byte Folded Spill
	st.d	$t0, $sp, 424                   # 8-byte Folded Spill
	add.d	$a3, $t0, $a3
	st.d	$a3, $sp, 344                   # 8-byte Folded Spill
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a1, $a2
	st.d	$a1, $sp, 336                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 1168                  # 8-byte Folded Reload
	sub.d	$a1, $a1, $a2
	st.d	$a1, $sp, 328                   # 8-byte Folded Spill
	sub.d	$a0, $zero, $a0
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1176                  # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 568                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 736                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 744                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 776                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 752                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 784                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	slli.d	$a0, $t5, 3
	st.d	$a0, $sp, 816                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$a7, $sp, 144                   # 8-byte Folded Spill
	st.d	$a6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	b	.LBB1_54
	.p2align	4, , 16
.LBB1_52:                               #   in Loop: Header=BB1_54 Depth=2
	move	$t0, $s4
.LBB1_53:                               # %._crit_edge2597
                                        #   in Loop: Header=BB1_54 Depth=2
	add.w	$s7, $s7, $s0
	add.w	$s5, $s5, $a7
	add.w	$t2, $a6, $t2
	addi.w	$t8, $t8, 1
	add.w	$s4, $t0, $s1
	beq	$t8, $s2, .LBB1_2
.LBB1_54:                               # %.preheader2453
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_57 Depth 3
                                        #         Child Loop BB1_58 Depth 4
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	blt	$a0, $s6, .LBB1_52
# %bb.55:                               # %.preheader.lr.ph
                                        #   in Loop: Header=BB1_54 Depth=2
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	move	$t0, $s4
	blt	$a0, $s6, .LBB1_61
# %bb.56:                               # %.preheader.us.preheader
                                        #   in Loop: Header=BB1_54 Depth=2
	st.d	$t8, $sp, 176                   # 8-byte Folded Spill
	move	$a1, $zero
	.p2align	4, , 16
.LBB1_57:                               # %.preheader.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_54 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_58 Depth 4
	st.d	$a1, $sp, 504                   # 8-byte Folded Spill
	move	$a0, $zero
	move	$a2, $zero
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1256                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1248                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1240                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1232                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1224                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1216                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1208                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1200                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1192                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1184                  # 8-byte Folded Spill
	ld.d	$t6, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$s4, $t2, $t6, 3
	ld.d	$t8, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$t3, $t2, $t8, 3
	ld.d	$s8, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$t4, $t2, $s8, 3
	ld.d	$a1, $sp, 776                   # 8-byte Folded Reload
	st.d	$a1, $sp, 776                   # 8-byte Folded Spill
	alsl.d	$a6, $t2, $a1, 3
	ld.d	$a1, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$s6, $t2, $a1, 3
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1176                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1168                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1160                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1152                  # 8-byte Folded Spill
	ld.d	$a7, $sp, 568                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a7, 3
	st.d	$a1, $sp, 1144                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1136                  # 8-byte Folded Spill
	ld.d	$s3, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $s3, 3
	st.d	$a1, $sp, 1128                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$t5, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $t5, 3
	st.d	$a1, $sp, 1112                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1104                  # 8-byte Folded Spill
	ld.d	$s2, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $s2, 3
	st.d	$a1, $sp, 1096                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1088                  # 8-byte Folded Spill
	ld.d	$s0, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $s0, 3
	st.d	$a1, $sp, 1080                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1072                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t2
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	alsl.d	$fp, $t2, $a3, 3
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$a3, $t2, $a3, 3
	st.d	$a3, $sp, 1064                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$ra, $t2, $a3, 3
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a3, $t2, $a3, 3
	st.d	$a3, $sp, 1056                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$t7, $t2, $a3, 3
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a3, $t2, $a3, 3
	st.d	$a3, $sp, 1048                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$s1, $t2, $a3, 3
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a3, $t2, $a3, 3
	st.d	$a3, $sp, 1040                  # 8-byte Folded Spill
	move	$a4, $s5
	move	$s5, $s7
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$s7, $t2, $a3, 3
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a3, $t2, $a3, 3
	st.d	$a3, $sp, 1032                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$a3, $t2, $a3, 3
	st.d	$a3, $sp, 1024                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a3, $t2, $a3, 3
	st.d	$a3, $sp, 1016                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$a3, $t2, $a3, 3
	st.d	$a3, $sp, 1008                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 448                   # 8-byte Folded Reload
	add.d	$t2, $a3, $t2
	ld.d	$a3, $sp, 320                   # 8-byte Folded Reload
	add.d	$a3, $a3, $s5
	ld.d	$a5, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$t1, $a3, $a5, 3
	alsl.d	$a3, $a1, $a7, 3
	st.d	$a3, $sp, 1000                  # 8-byte Folded Spill
	alsl.d	$a3, $a1, $t6, 3
	st.d	$a3, $sp, 992                   # 8-byte Folded Spill
	alsl.d	$a3, $a1, $s3, 3
	st.d	$a3, $sp, 984                   # 8-byte Folded Spill
	alsl.d	$a3, $a1, $t8, 3
	st.d	$a3, $sp, 976                   # 8-byte Folded Spill
	alsl.d	$a3, $a1, $t5, 3
	st.d	$a3, $sp, 968                   # 8-byte Folded Spill
	alsl.d	$a3, $a1, $s8, 3
	st.d	$a3, $sp, 960                   # 8-byte Folded Spill
	alsl.d	$a3, $a1, $s2, 3
	st.d	$a3, $sp, 952                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 776                   # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a3, 3
	st.d	$a3, $sp, 944                   # 8-byte Folded Spill
	alsl.d	$a3, $a1, $s0, 3
	st.d	$a3, $sp, 936                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a3, 3
	st.d	$a1, $sp, 928                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$t5, $a4, $a1, 3
	ld.d	$a1, $sp, 688                   # 8-byte Folded Reload
	st.d	$a4, $sp, 800                   # 8-byte Folded Spill
	alsl.d	$a3, $a4, $a1, 3
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$s3, $s5, $a1, 3
	alsl.d	$a1, $s5, $a5, 3
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$s8, $s5, $a4, 3
	ld.d	$a4, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a5, $s5, $a4, 3
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$a4, $s5, $a4, 3
	st.d	$s5, $sp, 808                   # 8-byte Folded Spill
	ld.d	$a7, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$a7, $s5, $a7, 3
	ld.d	$t6, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$t6, $t0, $t6, 3
	st.d	$t6, $sp, 920                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$t6, $t0, $t6, 3
	st.d	$t6, $sp, 912                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$t6, $t0, $t6, 3
	st.d	$t6, $sp, 904                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$t6, $t0, $t6, 3
	st.d	$t6, $sp, 896                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 648                   # 8-byte Folded Reload
	alsl.d	$t6, $t0, $t6, 3
	st.d	$t6, $sp, 888                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$t6, $t0, $t6, 3
	st.d	$t6, $sp, 880                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$t6, $t0, $t6, 3
	st.d	$t6, $sp, 872                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$t6, $t0, $t6, 3
	st.d	$t6, $sp, 864                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$t6, $t0, $t6, 3
	st.d	$t6, $sp, 856                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$t6, $t0, $t6, 3
	st.d	$t6, $sp, 848                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$t6, $t0, $t6, 3
	st.d	$t6, $sp, 840                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$t6, $t0, $t6, 3
	st.d	$t6, $sp, 832                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$t6, $t0, $t6, 3
	st.d	$t6, $sp, 824                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 672                   # 8-byte Folded Reload
	st.d	$t0, $sp, 792                   # 8-byte Folded Spill
	alsl.d	$t6, $t0, $t6, 3
	ld.d	$s0, $sp, 768                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 696                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_58:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_54 Depth=2
                                        #       Parent Loop BB1_57 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $t5, $a2
	fldx.d	$fa1, $fp, $a0
	fmul.d	$fa1, $fa0, $fa1
	ld.d	$t0, $sp, 1064                  # 8-byte Folded Reload
	fldx.d	$fa2, $t0, $a0
	fldx.d	$fa3, $t1, $a2
	fldx.d	$fa4, $s4, $a0
	add.d	$t8, $t1, $a2
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t0, $sp, 920                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $a2
	fldx.d	$fa0, $t5, $a2
	fldx.d	$fa1, $ra, $a0
	ld.d	$t0, $sp, 1056                  # 8-byte Folded Reload
	fldx.d	$fa2, $t0, $a0
	fld.d	$fa3, $t8, 8
	fldx.d	$fa4, $t3, $a0
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t0, $sp, 912                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $a2
	fldx.d	$fa0, $t5, $a2
	fldx.d	$fa1, $t7, $a0
	ld.d	$t0, $sp, 1048                  # 8-byte Folded Reload
	fldx.d	$fa2, $t0, $a0
	fld.d	$fa3, $t8, 16
	fldx.d	$fa4, $t4, $a0
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t0, $sp, 904                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $a2
	fldx.d	$fa0, $t5, $a2
	fldx.d	$fa1, $s1, $a0
	add.d	$t8, $a7, $a2
	ld.d	$t0, $sp, 1040                  # 8-byte Folded Reload
	fldx.d	$fa2, $t0, $a0
	fld.d	$fa3, $t8, -8
	fldx.d	$fa4, $a6, $a0
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t0, $sp, 896                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $a2
	fldx.d	$fa0, $t5, $a2
	fldx.d	$fa1, $s7, $a0
	fldx.d	$fa2, $a7, $a2
	fldx.d	$fa3, $s6, $a0
	ld.d	$t0, $sp, 1032                  # 8-byte Folded Reload
	fldx.d	$fa4, $t0, $a0
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	ld.d	$t0, $sp, 888                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $a2
	fldx.d	$fa0, $t5, $a2
	ld.d	$t0, $sp, 1024                  # 8-byte Folded Reload
	fldx.d	$fa1, $t0, $a0
	ld.d	$t0, $sp, 1016                  # 8-byte Folded Reload
	fldx.d	$fa2, $t0, $a0
	fld.d	$fa3, $t8, 8
	ld.d	$t0, $sp, 1176                  # 8-byte Folded Reload
	fldx.d	$fa4, $t0, $a0
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t0, $sp, 880                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $a2
	fldx.d	$fa0, $t5, $a2
	ld.d	$t0, $sp, 1008                  # 8-byte Folded Reload
	fldx.d	$fa1, $t0, $a0
	fmul.d	$fa1, $fa0, $fa1
	ld.d	$t0, $sp, 1184                  # 8-byte Folded Reload
	fldx.d	$fa2, $t0, $a0
	fldx.d	$fa3, $a4, $a2
	ld.d	$t0, $sp, 1168                  # 8-byte Folded Reload
	fldx.d	$fa4, $t0, $a0
	add.d	$t8, $a4, $a2
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t0, $sp, 872                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $a2
	fldx.d	$fa0, $t5, $a2
	ld.d	$t0, $sp, 1192                  # 8-byte Folded Reload
	fldx.d	$fa1, $t0, $a0
	ld.d	$t0, $sp, 1200                  # 8-byte Folded Reload
	fldx.d	$fa2, $t0, $a0
	fld.d	$fa3, $t8, 8
	ld.d	$t0, $sp, 1160                  # 8-byte Folded Reload
	fldx.d	$fa4, $t0, $a0
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t0, $sp, 864                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $a2
	fldx.d	$fa0, $t5, $a2
	ld.d	$t0, $sp, 1208                  # 8-byte Folded Reload
	fldx.d	$fa1, $t0, $a0
	ld.d	$t0, $sp, 1216                  # 8-byte Folded Reload
	fldx.d	$fa2, $t0, $a0
	fld.d	$fa3, $t8, 16
	ld.d	$t0, $sp, 1152                  # 8-byte Folded Reload
	fldx.d	$fa4, $t0, $a0
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t0, $sp, 856                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $a2
	fldx.d	$fa0, $t5, $a2
	fldx.d	$fa1, $fp, $a0
	ld.d	$t0, $sp, 1144                  # 8-byte Folded Reload
	fldx.d	$fa2, $t0, $a0
	fmul.d	$fa1, $fa0, $fa1
	fldx.d	$fa3, $s8, $a2
	fldx.d	$fa4, $a3, $a2
	ld.d	$t0, $sp, 1000                  # 8-byte Folded Reload
	fldx.d	$fa5, $t0, $a0
	add.d	$t8, $s8, $a2
	fldx.d	$fa6, $a5, $a2
	fmadd.d	$fa1, $fa1, $fa3, $fa2
	fmul.d	$fa2, $fa4, $fa5
	add.d	$s5, $a5, $a2
	fmadd.d	$fa1, $fa2, $fa6, $fa1
	fldx.d	$fa2, $s4, $a0
	ld.d	$t0, $sp, 1136                  # 8-byte Folded Reload
	fldx.d	$fa5, $t0, $a0
	ld.d	$t0, $sp, 1224                  # 8-byte Folded Reload
	fldx.d	$fa7, $t0, $a0
	ld.d	$t0, $sp, 992                   # 8-byte Folded Reload
	fldx.d	$ft0, $t0, $a0
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fmadd.d	$fa1, $fa5, $fa6, $fa1
	fmadd.d	$fa0, $fa0, $fa7, $fa1
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$t0, $sp, 848                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $a2
	ld.d	$t0, $sp, 1128                  # 8-byte Folded Reload
	fldx.d	$fa0, $t0, $a0
	fldx.d	$fa1, $t5, $a2
	fldx.d	$fa2, $ra, $a0
	fld.d	$fa3, $t8, 8
	fldx.d	$fa4, $a3, $a2
	ld.d	$t0, $sp, 984                   # 8-byte Folded Reload
	fldx.d	$fa5, $t0, $a0
	fld.d	$fa6, $s5, 8
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fldx.d	$fa2, $t3, $a0
	ld.d	$t0, $sp, 1120                  # 8-byte Folded Reload
	fldx.d	$fa5, $t0, $a0
	ld.d	$t0, $sp, 1232                  # 8-byte Folded Reload
	fldx.d	$fa7, $t0, $a0
	ld.d	$t0, $sp, 976                   # 8-byte Folded Reload
	fldx.d	$ft0, $t0, $a0
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$t0, $sp, 840                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $a2
	fld.d	$fa0, $t8, 16
	ld.d	$t0, $sp, 1112                  # 8-byte Folded Reload
	fldx.d	$fa1, $t0, $a0
	fldx.d	$fa2, $t5, $a2
	fldx.d	$fa3, $t7, $a0
	fldx.d	$fa4, $a3, $a2
	ld.d	$t0, $sp, 968                   # 8-byte Folded Reload
	fldx.d	$fa5, $t0, $a0
	fld.d	$fa6, $s5, 16
	fmul.d	$fa3, $fa2, $fa3
	fmadd.d	$fa1, $fa3, $fa0, $fa1
	fmul.d	$fa3, $fa4, $fa5
	fmadd.d	$fa1, $fa3, $fa6, $fa1
	fldx.d	$fa3, $t4, $a0
	ld.d	$t0, $sp, 1104                  # 8-byte Folded Reload
	fldx.d	$fa5, $t0, $a0
	ld.d	$t8, $sp, 1240                  # 8-byte Folded Reload
	fldx.d	$fa7, $t8, $a0
	ld.d	$t0, $sp, 960                   # 8-byte Folded Reload
	fldx.d	$ft0, $t0, $a0
	fmadd.d	$fa0, $fa3, $fa0, $fa1
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa2, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$t0, $sp, 832                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $a2
	fldx.d	$fa0, $t5, $a2
	fldx.d	$fa1, $s1, $a0
	ld.d	$t0, $sp, 1096                  # 8-byte Folded Reload
	fldx.d	$fa2, $t0, $a0
	fmul.d	$fa1, $fa0, $fa1
	fldx.d	$fa3, $s3, $a2
	fldx.d	$fa4, $a3, $a2
	ld.d	$t0, $sp, 952                   # 8-byte Folded Reload
	fldx.d	$fa5, $t0, $a0
	fldx.d	$fa6, $a1, $a2
	add.d	$t8, $s3, $a2
	fmadd.d	$fa1, $fa1, $fa3, $fa2
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa1, $fa2, $fa6, $fa1
	fldx.d	$fa2, $a6, $a0
	ld.d	$t0, $sp, 1088                  # 8-byte Folded Reload
	fldx.d	$fa5, $t0, $a0
	ld.d	$s5, $sp, 1248                  # 8-byte Folded Reload
	fldx.d	$fa7, $s5, $a0
	ld.d	$t0, $sp, 944                   # 8-byte Folded Reload
	fldx.d	$ft0, $t0, $a0
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fmadd.d	$fa1, $fa5, $fa6, $fa1
	fmadd.d	$fa0, $fa0, $fa7, $fa1
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$t0, $sp, 824                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $a2
	fld.d	$fa0, $t8, 8
	add.d	$t8, $a1, $a2
	ld.d	$t0, $sp, 1080                  # 8-byte Folded Reload
	fldx.d	$fa1, $t0, $a0
	fldx.d	$fa2, $t5, $a2
	fldx.d	$fa3, $s7, $a0
	fldx.d	$fa4, $a3, $a2
	ld.d	$t0, $sp, 936                   # 8-byte Folded Reload
	fldx.d	$fa5, $t0, $a0
	fld.d	$fa6, $t8, 8
	fmul.d	$fa3, $fa2, $fa3
	fmadd.d	$fa1, $fa3, $fa0, $fa1
	fmul.d	$fa3, $fa4, $fa5
	fmadd.d	$fa1, $fa3, $fa6, $fa1
	ld.d	$t8, $sp, 1256                  # 8-byte Folded Reload
	fldx.d	$fa3, $t8, $a0
	ld.d	$t0, $sp, 928                   # 8-byte Folded Reload
	fldx.d	$fa5, $t0, $a0
	fldx.d	$fa7, $s6, $a0
	ld.d	$t0, $sp, 1072                  # 8-byte Folded Reload
	fldx.d	$ft0, $t0, $a0
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fmadd.d	$fa1, $fa4, $fa5, $fa1
	fmadd.d	$fa0, $fa7, $fa0, $fa1
	fmadd.d	$fa0, $ft0, $fa6, $fa0
	fstx.d	$fa0, $t6, $a2
	addi.d	$a2, $a2, 8
	addi.w	$s0, $s0, -1
	add.w	$t2, $t2, $s2
	ld.d	$t0, $sp, 816                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t0
	bnez	$s0, .LBB1_58
# %bb.59:                               # %._crit_edge.us2602
                                        #   in Loop: Header=BB1_57 Depth=3
	ld.d	$a0, $sp, 720                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 808                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	sub.w	$s7, $a0, $s0
	ld.d	$a0, $sp, 712                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 800                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	sub.w	$s5, $a0, $s0
	ld.d	$a0, $sp, 704                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 792                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	sub.w	$t0, $a0, $s0
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB1_57
# %bb.60:                               # %._crit_edge2597.loopexit
                                        #   in Loop: Header=BB1_54 Depth=2
	ori	$s6, $zero, 1
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	b	.LBB1_53
	.p2align	4, , 16
.LBB1_61:                               # %.preheader.preheader
                                        #   in Loop: Header=BB1_54 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	add.d	$s7, $a0, $s7
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.d	$s5, $a0, $s5
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.d	$t2, $a0, $t2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	add.d	$t0, $a0, $t0
	b	.LBB1_53
.LBB1_62:                               # %._crit_edge
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
# %bb.0:
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
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a3, $a3, 8
	ld.d	$a7, $a3, 8
	ld.w	$a6, $a7, 8
	ori	$s5, $zero, 1
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	blt	$a6, $s5, .LBB2_59
# %bb.1:                                # %.preheader2332.lr.ph
	move	$s6, $a0
	ld.d	$a0, $a0, 24
	ld.d	$a1, $s6, 8
	move	$a4, $zero
	move	$a5, $zero
	ld.w	$s4, $a0, 8
	ld.d	$a0, $a1, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $a3, 16
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
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
	st.d	$s6, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$a7, $sp, 24                    # 8-byte Folded Spill
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %.critedge
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a7, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a7, 8
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	bge	$a4, $a0, .LBB2_59
.LBB2_3:                                # %.preheader2332
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
                                        #     Child Loop BB2_52 Depth 2
                                        #       Child Loop BB2_55 Depth 3
                                        #         Child Loop BB2_56 Depth 4
                                        #     Child Loop BB2_19 Depth 2
                                        #       Child Loop BB2_22 Depth 3
                                        #         Child Loop BB2_23 Depth 4
                                        #     Child Loop BB2_31 Depth 2
                                        #       Child Loop BB2_33 Depth 3
                                        #         Child Loop BB2_34 Depth 4
                                        #     Child Loop BB2_42 Depth 2
                                        #       Child Loop BB2_44 Depth 3
                                        #         Child Loop BB2_45 Depth 4
	slli.d	$a0, $a4, 2
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.d	$s1, $a5, -1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a1, $a5, $a1, 2
	slli.d	$a2, $a5, 4
	alsl.d	$a2, $a5, $a2, 3
	addi.d	$a3, $a5, -1
	addi.d	$s0, $a2, -12
	.p2align	4, , 16
.LBB2_4:                                #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	addi.w	$a3, $a3, 1
	addi.w	$s1, $s1, 1
	addi.d	$a1, $a1, 4
	addi.d	$s0, $s0, 24
	bne	$a2, $a0, .LBB2_4
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=1
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $a7, 0
	slli.d	$a1, $a4, 4
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	alsl.d	$a1, $a4, $a1, 3
	st.d	$a1, $sp, 1064                  # 8-byte Folded Spill
	add.d	$a0, $a0, $a1
	addi.d	$a3, $sp, 1168
	st.d	$a0, $sp, 1088                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMapCoarseToFine)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 40
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $s2, 40
	ld.d	$a3, $a0, 0
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $fp, 40
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	ld.d	$a4, $a1, 0
	st.d	$a3, $sp, 1104                  # 8-byte Folded Spill
	add.d	$a1, $a3, $s0
	st.d	$a1, $sp, 1096                  # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1128                  # 8-byte Folded Spill
	ld.d	$a0, $a2, 0
	st.d	$a0, $sp, 1056                  # 8-byte Folded Spill
	st.d	$a4, $sp, 1080                  # 8-byte Folded Spill
	add.d	$a0, $a4, $s0
	st.d	$a0, $sp, 1072                  # 8-byte Folded Spill
	st.d	$zero, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1144                  # 8-byte Folded Spill
	addi.w	$s8, $zero, -1
	st.d	$zero, $sp, 1180
	move	$s3, $s8
	lu32i.d	$s3, 0
	st.w	$s3, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1136                  # 8-byte Folded Spill
	st.d	$zero, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 616                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1180
	st.w	$s3, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 608                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 600                   # 8-byte Folded Spill
	st.d	$s3, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 592                   # 8-byte Folded Spill
	st.d	$s5, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 632                   # 8-byte Folded Spill
	ori	$fp, $zero, 0
	lu32i.d	$fp, -1
	st.d	$fp, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 584                   # 8-byte Folded Spill
	ori	$s7, $zero, 0
	lu32i.d	$s7, 1
	st.d	$s7, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 624                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 576                   # 8-byte Folded Spill
	ori	$a0, $zero, 8
	st.d	$s8, $sp, 1112                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1120                  # 8-byte Folded Spill
	blt	$s4, $a0, .LBB2_9
# %bb.6:                                #   in Loop: Header=BB2_3 Depth=1
	st.d	$s3, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 672                   # 8-byte Folded Spill
	st.d	$s5, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	st.d	$fp, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 664                   # 8-byte Folded Spill
	st.d	$s7, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	st.d	$s5, $sp, 1180
	st.w	$s3, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	st.d	$s7, $sp, 1180
	st.w	$s3, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 656                   # 8-byte Folded Spill
	ori	$a0, $zero, 16
	bltu	$s4, $a0, .LBB2_9
# %bb.7:                                #   in Loop: Header=BB2_3 Depth=1
	st.d	$s8, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	ori	$s3, $zero, 1
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	move	$s2, $s8
	lu32i.d	$s2, 1
	st.d	$s2, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	ori	$a0, $zero, 20
	bltu	$s4, $a0, .LBB2_10
# %bb.8:                                #   in Loop: Header=BB2_3 Depth=1
	st.d	$s8, $sp, 1180
	ori	$s3, $zero, 1
	st.w	$s3, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 1180
	st.w	$s3, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	st.d	$s2, $sp, 1180
	st.w	$s3, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ori	$s4, $zero, 1
	lu32i.d	$s4, 1
	st.d	$s4, $sp, 1180
	st.w	$s3, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s2, $sp, 1180
	ld.d	$s2, $sp, 1120                  # 8-byte Folded Reload
	st.w	$s2, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s4, $sp, 1180
	st.w	$s2, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	b	.LBB2_10
	.p2align	4, , 16
.LBB2_9:                                #   in Loop: Header=BB2_3 Depth=1
	move	$s3, $zero
.LBB2_10:                               # %.thread2254
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 1128                  # 8-byte Folded Reload
	add.d	$s2, $a0, $s0
	ld.d	$a0, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$a1, $sp, 1056                  # 8-byte Folded Reload
	add.d	$s1, $a1, $a0
	st.d	$s5, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	move	$a0, $s4
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 568                   # 8-byte Folded Spill
	st.d	$s7, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 560                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 552                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1120                  # 8-byte Folded Reload
	st.d	$a0, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	st.d	$s5, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 536                   # 8-byte Folded Spill
	st.d	$fp, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	st.d	$s7, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 1112                  # 8-byte Folded Reload
	beqz	$s3, .LBB2_12
# %bb.11:                               #   in Loop: Header=BB2_3 Depth=1
	move	$fp, $s8
	lu32i.d	$fp, 1
	st.d	$fp, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	move	$a0, $s4
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	ori	$s3, $zero, 1
	lu32i.d	$s3, 1
	st.d	$s3, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	st.d	$s8, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	st.d	$fp, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	st.d	$s3, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
.LBB2_12:                               #   in Loop: Header=BB2_3 Depth=1
	st.d	$zero, $sp, 1180
	st.w	$s5, $sp, 1188
	ld.d	$s3, $sp, 1096                  # 8-byte Folded Reload
	ld.w	$a0, $s3, 4
	ld.w	$a1, $s3, -8
	sub.w	$a0, $a0, $a1
	slt	$a1, $s8, $a0
	maskeqz	$a0, $a0, $a1
	ld.d	$fp, $sp, 1104                  # 8-byte Folded Reload
	ldx.w	$a2, $fp, $s0
	ld.w	$a3, $s3, -12
	masknez	$a1, $s8, $a1
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	sub.w	$a1, $a2, $a3
	slt	$a2, $s8, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s8, $a2
	ld.d	$s6, $sp, 1072                  # 8-byte Folded Reload
	ld.w	$a3, $s6, 4
	ld.w	$a4, $s6, -8
	or	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	mulw.d.w	$a0, $a1, $a0
	st.d	$a0, $sp, 1120                  # 8-byte Folded Spill
	sub.w	$a0, $a3, $a4
	slt	$a1, $s8, $a0
	ld.d	$s7, $sp, 1080                  # 8-byte Folded Reload
	ldx.w	$a2, $s7, $s0
	ld.w	$a3, $s6, -12
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$a0, $a0, $a1
	sub.w	$a1, $a2, $a3
	slt	$a2, $s8, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s8, $a2
	or	$a1, $a1, $a2
	st.d	$s5, $sp, 1184
	ldx.w	$a2, $s7, $s0
	ld.w	$a3, $s6, -12
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	mulw.d.w	$a0, $a1, $a0
	st.d	$a0, $sp, 1064                  # 8-byte Folded Spill
	sub.w	$a0, $a2, $a3
	slt	$a1, $s8, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 1048                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a1, $sp, 1156
	ld.d	$s4, $sp, 1088                  # 8-byte Folded Reload
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	ld.w	$a1, $s6, -12
	ld.w	$a2, $s4, 4
	ld.w	$a3, $s6, -8
	ld.w	$a4, $s4, 8
	ld.w	$a5, $s6, -4
	ld.w	$a6, $s6, 4
	sub.d	$a7, $a0, $a1
	sub.d	$t0, $a2, $a3
	sub.d	$a5, $a4, $a5
	sub.w	$a3, $a6, $a3
	slt	$a6, $s8, $a3
	maskeqz	$a3, $a3, $a6
	masknez	$a6, $s8, $a6
	or	$a3, $a3, $a6
	ldx.w	$a6, $s7, $s0
	addi.d	$t4, $a3, 1
	mul.d	$a3, $t4, $a5
	add.d	$a3, $t0, $a3
	sub.w	$a1, $a6, $a1
	slt	$a5, $s8, $a1
	maskeqz	$a1, $a1, $a5
	masknez	$a5, $s8, $a5
	or	$a1, $a1, $a5
	addi.d	$a5, $a1, 1
	st.d	$a5, $sp, 952                   # 8-byte Folded Spill
	mul.d	$a3, $a3, $a5
	add.w	$s7, $a7, $a3
	ld.w	$a3, $s2, -12
	ld.w	$a5, $s2, -8
	ld.w	$a6, $s2, -4
	ld.w	$a7, $s2, 4
	sub.d	$t0, $a0, $a3
	sub.d	$t1, $a2, $a5
	sub.d	$a6, $a4, $a6
	sub.w	$a5, $a7, $a5
	slt	$a7, $s8, $a5
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $s8, $a7
	or	$a5, $a5, $a7
	ld.d	$a7, $sp, 1128                  # 8-byte Folded Reload
	ldx.w	$a7, $a7, $s0
	addi.d	$t5, $a5, 1
	mul.d	$a5, $t5, $a6
	add.d	$a5, $t1, $a5
	sub.w	$a3, $a7, $a3
	slt	$a6, $s8, $a3
	maskeqz	$a3, $a3, $a6
	masknez	$a6, $s8, $a6
	or	$a3, $a3, $a6
	addi.d	$a6, $a3, 1
	st.d	$a6, $sp, 944                   # 8-byte Folded Spill
	mul.d	$a5, $a5, $a6
	move	$t7, $s8
	add.w	$s8, $t0, $a5
	ld.w	$a5, $sp, 1168
	ld.w	$a6, $s3, -12
	ld.w	$a7, $sp, 1172
	ld.w	$t0, $s3, -8
	ld.w	$t1, $sp, 1176
	ld.w	$t2, $s3, -4
	ld.w	$t3, $s3, 4
	sub.d	$a5, $a5, $a6
	sub.d	$a7, $a7, $t0
	sub.d	$t1, $t1, $t2
	sub.w	$t0, $t3, $t0
	slt	$t2, $t7, $t0
	maskeqz	$t0, $t0, $t2
	masknez	$t2, $t7, $t2
	or	$t0, $t0, $t2
	ldx.w	$t2, $fp, $s0
	addi.d	$t0, $t0, 1
	mul.d	$t1, $t0, $t1
	add.d	$a7, $a7, $t1
	sub.w	$a6, $t2, $a6
	slt	$t1, $t7, $a6
	maskeqz	$a6, $a6, $t1
	masknez	$t1, $t7, $t1
	or	$a6, $a6, $t1
	addi.d	$a6, $a6, 1
	mul.d	$a7, $a7, $a6
	add.w	$a7, $a5, $a7
	ld.w	$a5, $s1, 0
	ld.w	$t1, $s1, 4
	ld.w	$t2, $s1, 8
	ld.w	$t3, $s1, 16
	sub.d	$a0, $a0, $a5
	sub.d	$t6, $a2, $t1
	sub.d	$a4, $a4, $t2
	sub.w	$a2, $t3, $t1
	slt	$t1, $t7, $a2
	maskeqz	$a2, $a2, $t1
	masknez	$t1, $t7, $t1
	or	$a2, $a2, $t1
	ld.w	$t1, $s1, 12
	addi.d	$a2, $a2, 1
	mul.d	$a4, $a2, $a4
	add.d	$t2, $t6, $a4
	sub.w	$a4, $t1, $a5
	slt	$a5, $t7, $a4
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $t7, $a5
	or	$a4, $a4, $a5
	addi.d	$a5, $a4, 1
	st.d	$a5, $sp, 936                   # 8-byte Folded Spill
	mul.d	$a5, $t2, $a5
	add.w	$ra, $a0, $a5
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	ld.w	$t6, $a5, 0
	ld.w	$a0, $a5, 4
	ld.w	$a5, $a5, 8
	ld.w	$s0, $sp, 1156
	ld.w	$t1, $sp, 1160
	st.d	$t1, $sp, 648                   # 8-byte Folded Spill
	ld.w	$t8, $sp, 1164
	mul.d	$a0, $a0, $a6
	mulw.d.w	$a6, $a6, $t0
	mul.d	$a6, $a6, $a5
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ori	$a5, $zero, 19
	st.d	$t6, $sp, 1128                  # 8-byte Folded Spill
	st.d	$s0, $sp, 640                   # 8-byte Folded Spill
	st.d	$t8, $sp, 160                   # 8-byte Folded Spill
	beq	$s4, $a5, .LBB2_37
# %bb.13:                               #   in Loop: Header=BB2_3 Depth=1
	ori	$a5, $zero, 15
	ld.d	$s3, $sp, 1144                  # 8-byte Folded Reload
	beq	$s4, $a5, .LBB2_26
# %bb.14:                               #   in Loop: Header=BB2_3 Depth=1
	ori	$a5, $zero, 7
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	bne	$s4, $a5, .LBB2_48
# %bb.15:                               #   in Loop: Header=BB2_3 Depth=1
	blt	$t8, $s5, .LBB2_2
# %bb.16:                               # %.preheader2322.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$fp, $zero
	mul.d	$a1, $s0, $t6
	ld.d	$t2, $sp, 952                   # 8-byte Folded Reload
	sub.d	$a3, $t2, $s0
	ld.d	$t3, $sp, 944                   # 8-byte Folded Reload
	sub.d	$a4, $t3, $s0
	sub.d	$s1, $a0, $a1
	ld.d	$t7, $sp, 936                   # 8-byte Folded Reload
	sub.d	$a5, $t7, $s0
	ld.d	$t1, $sp, 648                   # 8-byte Folded Reload
	sub.d	$t0, $t4, $t1
	mul.d	$t4, $t0, $t2
	sub.d	$t0, $t5, $t1
	mul.d	$t5, $t0, $t3
	mul.d	$t0, $t1, $a0
	sub.d	$a6, $a6, $t0
	sub.d	$a2, $a2, $t1
	mul.d	$t0, $a2, $t7
	addi.d	$a2, $t1, -1
	mul.d	$a3, $a3, $a2
	add.d	$a3, $t2, $a3
	sub.d	$a3, $a3, $s0
	st.d	$a3, $sp, 912                   # 8-byte Folded Spill
	mul.d	$a3, $a4, $a2
	add.d	$a3, $t3, $a3
	sub.d	$a3, $a3, $s0
	st.d	$a3, $sp, 904                   # 8-byte Folded Spill
	st.d	$s1, $sp, 1056                  # 8-byte Folded Spill
	mul.d	$a3, $s1, $a2
	add.d	$a0, $a3, $a0
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 896                   # 8-byte Folded Spill
	mul.d	$a0, $a5, $a2
	add.d	$a0, $t7, $a0
	sub.d	$a0, $a0, $s0
	st.d	$a0, $sp, 888                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1120                  # 8-byte Folded Reload
	bstrpick.d	$a1, $a0, 31, 0
	ld.d	$a0, $sp, 1064                  # 8-byte Folded Reload
	bstrpick.d	$a2, $a0, 31, 0
	ld.d	$a0, $sp, 1048                  # 8-byte Folded Reload
	bstrpick.d	$a3, $a0, 31, 0
	ld.d	$a0, $sp, 1136                  # 8-byte Folded Reload
	alsl.d	$a4, $a3, $a0, 3
	st.d	$a4, $sp, 1024                  # 8-byte Folded Spill
	st.d	$a3, $sp, 1032                  # 8-byte Folded Spill
	sub.d	$a3, $a2, $a3
	st.d	$a3, $sp, 1016                  # 8-byte Folded Spill
	st.d	$a2, $sp, 1040                  # 8-byte Folded Spill
	alsl.d	$a0, $a2, $a0, 3
	st.d	$a0, $sp, 1008                  # 8-byte Folded Spill
	slli.d	$a2, $t6, 3
	st.d	$a1, $sp, 1048                  # 8-byte Folded Spill
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 624                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 992                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 632                   # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	st.d	$a0, $sp, 984                   # 8-byte Folded Spill
	st.d	$t4, $sp, 968                   # 8-byte Folded Spill
	st.d	$t5, $sp, 960                   # 8-byte Folded Spill
	st.d	$a6, $sp, 928                   # 8-byte Folded Spill
	st.d	$t0, $sp, 920                   # 8-byte Folded Spill
	st.d	$a2, $sp, 1000                  # 8-byte Folded Spill
	b	.LBB2_19
	.p2align	4, , 16
.LBB2_17:                               # %.preheader2318.preheader
                                        #   in Loop: Header=BB2_19 Depth=2
	ld.d	$a0, $sp, 912                   # 8-byte Folded Reload
	add.d	$s7, $a0, $s7
	ld.d	$a0, $sp, 904                   # 8-byte Folded Reload
	add.d	$s8, $a0, $s8
	ld.d	$a0, $sp, 896                   # 8-byte Folded Reload
	add.d	$a7, $a0, $a7
	ld.d	$a0, $sp, 888                   # 8-byte Folded Reload
	add.d	$ra, $a0, $ra
.LBB2_18:                               # %._crit_edge2435
                                        #   in Loop: Header=BB2_19 Depth=2
	add.w	$s7, $s7, $t4
	add.w	$s8, $s8, $t5
	add.w	$a7, $a6, $a7
	addi.w	$fp, $fp, 1
	add.w	$ra, $ra, $t0
	beq	$fp, $t8, .LBB2_2
.LBB2_19:                               # %.preheader2322
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_22 Depth 3
                                        #         Child Loop BB2_23 Depth 4
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	blt	$a0, $s5, .LBB2_18
# %bb.20:                               # %.preheader2318.lr.ph
                                        #   in Loop: Header=BB2_19 Depth=2
	blt	$s0, $s5, .LBB2_17
# %bb.21:                               # %.preheader2318.us.preheader
                                        #   in Loop: Header=BB2_19 Depth=2
	st.d	$fp, $sp, 976                   # 8-byte Folded Spill
	move	$a1, $zero
	.p2align	4, , 16
.LBB2_22:                               # %.preheader2318.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_19 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_23 Depth 4
	st.d	$a1, $sp, 1064                  # 8-byte Folded Spill
	move	$t0, $zero
	move	$t1, $zero
	ld.d	$a0, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$t2, $s8, $a0, 3
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	st.d	$s8, $sp, 688                   # 8-byte Folded Spill
	alsl.d	$s6, $s8, $a0, 3
	ld.d	$a1, $sp, 1024                  # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a1, 3
	st.d	$a0, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 1032                  # 8-byte Folded Reload
	add.d	$a0, $a0, $s7
	alsl.d	$a0, $a0, $s3, 3
	st.d	$a0, $sp, 1112                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 1040                  # 8-byte Folded Reload
	add.d	$a0, $a0, $s7
	alsl.d	$a0, $a0, $a1, 3
	st.d	$a0, $sp, 1104                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 1016                  # 8-byte Folded Reload
	add.d	$a0, $a0, $s7
	ld.d	$a2, $sp, 1136                  # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a2, 3
	st.d	$a0, $sp, 1096                  # 8-byte Folded Spill
	ld.d	$s2, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $s2, 3
	st.d	$a0, $sp, 1088                  # 8-byte Folded Spill
	ld.d	$fp, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $fp, 3
	st.d	$a0, $sp, 1080                  # 8-byte Folded Spill
	ld.d	$t3, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $t3, 3
	st.d	$a0, $sp, 1072                  # 8-byte Folded Spill
	move	$a1, $s3
	ld.d	$a3, $sp, 1048                  # 8-byte Folded Reload
	add.d	$s3, $a3, $a7
	ld.d	$a0, $sp, 992                   # 8-byte Folded Reload
	alsl.d	$a4, $a7, $a0, 3
	ld.d	$a0, $sp, 984                   # 8-byte Folded Reload
	alsl.d	$a5, $a7, $a0, 3
	ld.d	$a3, $sp, 1056                  # 8-byte Folded Reload
	add.d	$a7, $a3, $a7
	ld.d	$a3, $sp, 1008                  # 8-byte Folded Reload
	alsl.d	$a6, $s7, $a3, 3
	alsl.d	$a2, $s7, $a2, 3
	st.d	$s7, $sp, 696                   # 8-byte Folded Spill
	alsl.d	$a1, $s7, $a1, 3
	ld.d	$a3, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$a3, $ra, $a3, 3
	ld.d	$t6, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$t6, $ra, $t6, 3
	ld.d	$t7, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$t7, $ra, $t7, 3
	ld.d	$t8, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$t8, $ra, $t8, 3
	ld.d	$s0, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$s0, $ra, $s0, 3
	alsl.d	$s1, $s3, $fp, 3
	alsl.d	$s4, $s3, $t3, 3
	ld.d	$t3, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$fp, $s3, $t3, 3
	alsl.d	$s5, $s3, $s2, 3
	ld.d	$t3, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$s2, $s3, $t3, 3
	ld.d	$t3, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$s7, $s3, $t3, 3
	ld.d	$t3, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$s8, $ra, $t3, 3
	ld.d	$t3, $sp, 568                   # 8-byte Folded Reload
	st.d	$ra, $sp, 680                   # 8-byte Folded Spill
	alsl.d	$ra, $ra, $t3, 3
	ld.d	$s3, $sp, 640                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 1128                  # 8-byte Folded Reload
	ld.d	$a0, $sp, 1000                  # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_23:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_19 Depth=2
                                        #       Parent Loop BB2_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $t2, $t1
	fldx.d	$fa1, $s1, $t0
	ld.d	$t3, $sp, 1104                  # 8-byte Folded Reload
	fldx.d	$fa2, $t3, $t1
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $a3, $t1
	fldx.d	$fa0, $t2, $t1
	fldx.d	$fa1, $s4, $t0
	add.d	$t3, $a6, $t1
	fld.d	$fa2, $t3, 8
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $t6, $t1
	fldx.d	$fa0, $t2, $t1
	fldx.d	$fa1, $fp, $t0
	fldx.d	$fa2, $a6, $t1
	ld.d	$t5, $sp, 1088                  # 8-byte Folded Reload
	fldx.d	$fa3, $t5, $t0
	fldx.d	$fa4, $s5, $t0
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	fstx.d	$fa0, $t7, $t1
	fldx.d	$fa0, $t2, $t1
	fldx.d	$fa1, $s2, $t0
	fld.d	$fa2, $t3, -8
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $t8, $t1
	fldx.d	$fa0, $t2, $t1
	fldx.d	$fa1, $s7, $t0
	ld.d	$t3, $sp, 1096                  # 8-byte Folded Reload
	fldx.d	$fa2, $t3, $t1
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $s0, $t1
	ld.d	$t3, $sp, 1080                  # 8-byte Folded Reload
	fldx.d	$fa0, $t3, $t0
	fldx.d	$fa1, $s6, $t1
	fldx.d	$fa2, $a4, $t0
	ld.d	$t3, $sp, 1120                  # 8-byte Folded Reload
	fldx.d	$fa3, $t3, $t1
	fldx.d	$fa4, $t2, $t1
	fldx.d	$fa5, $s1, $t0
	ld.d	$t3, $sp, 1112                  # 8-byte Folded Reload
	fldx.d	$fa6, $t3, $t1
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa1, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	fstx.d	$fa0, $s8, $t1
	ld.d	$t3, $sp, 1072                  # 8-byte Folded Reload
	fldx.d	$fa0, $t3, $t0
	fldx.d	$fa1, $s6, $t1
	fldx.d	$fa2, $a5, $t0
	add.d	$t3, $a2, $t1
	fld.d	$fa3, $t3, 8
	fldx.d	$fa4, $t2, $t1
	fldx.d	$fa5, $s4, $t0
	add.d	$t3, $a1, $t1
	fld.d	$fa6, $t3, 8
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa1, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	fstx.d	$fa0, $ra, $t1
	addi.d	$t1, $t1, 8
	addi.w	$s3, $s3, -1
	add.w	$a7, $a7, $t4
	add.d	$t0, $t0, $a0
	bnez	$s3, .LBB2_23
# %bb.24:                               # %._crit_edge.us
                                        #   in Loop: Header=BB2_22 Depth=3
	ld.d	$a0, $sp, 696                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 952                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	sub.w	$s7, $a0, $s3
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 944                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	sub.w	$s8, $a0, $s3
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 936                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 1064                  # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	sub.w	$ra, $a0, $s3
	ld.d	$s3, $sp, 1144                  # 8-byte Folded Reload
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB2_22
# %bb.25:                               # %._crit_edge2435.loopexit
                                        #   in Loop: Header=BB2_19 Depth=2
	ori	$s5, $zero, 1
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 640                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 160                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 976                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 968                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 960                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 928                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 920                   # 8-byte Folded Reload
	b	.LBB2_18
	.p2align	4, , 16
.LBB2_26:                               #   in Loop: Header=BB2_3 Depth=1
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	blt	$t8, $s5, .LBB2_2
# %bb.27:                               # %.preheader2323.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $sp, 648                   # 8-byte Folded Reload
	blt	$a1, $s5, .LBB2_2
# %bb.28:                               # %.preheader2323.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$fp, $zero
	mul.d	$a1, $s0, $t6
	ld.d	$t2, $sp, 952                   # 8-byte Folded Reload
	sub.d	$a3, $t2, $s0
	ld.d	$t3, $sp, 944                   # 8-byte Folded Reload
	sub.d	$a4, $t3, $s0
	sub.d	$s1, $a0, $a1
	ld.d	$t7, $sp, 936                   # 8-byte Folded Reload
	sub.d	$a5, $t7, $s0
	ld.d	$t1, $sp, 648                   # 8-byte Folded Reload
	sub.d	$t0, $t4, $t1
	mul.d	$t0, $t0, $t2
	st.d	$t0, $sp, 816                   # 8-byte Folded Spill
	sub.d	$t0, $t5, $t1
	mul.d	$t0, $t0, $t3
	st.d	$t0, $sp, 808                   # 8-byte Folded Spill
	mul.d	$t0, $t1, $a0
	sub.d	$a6, $a6, $t0
	st.d	$a6, $sp, 800                   # 8-byte Folded Spill
	sub.d	$a2, $a2, $t1
	mul.d	$a2, $a2, $t7
	st.d	$a2, $sp, 792                   # 8-byte Folded Spill
	addi.d	$a2, $t1, -1
	mul.d	$a3, $a3, $a2
	add.d	$a3, $t2, $a3
	sub.d	$a3, $a3, $s0
	st.d	$a3, $sp, 784                   # 8-byte Folded Spill
	mul.d	$a3, $a4, $a2
	add.d	$a3, $t3, $a3
	sub.d	$a3, $a3, $s0
	st.d	$a3, $sp, 776                   # 8-byte Folded Spill
	st.d	$s1, $sp, 920                   # 8-byte Folded Spill
	mul.d	$a3, $s1, $a2
	add.d	$a0, $a3, $a0
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 768                   # 8-byte Folded Spill
	mul.d	$a0, $a5, $a2
	add.d	$a0, $t7, $a0
	sub.d	$a0, $a0, $s0
	st.d	$a0, $sp, 760                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1120                  # 8-byte Folded Reload
	bstrpick.d	$a1, $a0, 31, 0
	ld.d	$a0, $sp, 1064                  # 8-byte Folded Reload
	bstrpick.d	$a2, $a0, 31, 0
	ld.d	$a0, $sp, 1048                  # 8-byte Folded Reload
	bstrpick.d	$a3, $a0, 31, 0
	ld.d	$a0, $sp, 1136                  # 8-byte Folded Reload
	alsl.d	$a4, $a3, $a0, 3
	st.d	$a4, $sp, 888                   # 8-byte Folded Spill
	st.d	$a3, $sp, 896                   # 8-byte Folded Spill
	sub.d	$a3, $a2, $a3
	st.d	$a3, $sp, 880                   # 8-byte Folded Spill
	st.d	$a2, $sp, 904                   # 8-byte Folded Spill
	alsl.d	$a0, $a2, $a0, 3
	st.d	$a0, $sp, 872                   # 8-byte Folded Spill
	slli.d	$a2, $t6, 3
	st.d	$a1, $sp, 912                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 624                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 856                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 848                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 632                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 840                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	st.d	$a0, $sp, 832                   # 8-byte Folded Spill
	st.d	$a2, $sp, 864                   # 8-byte Folded Spill
	b	.LBB2_31
	.p2align	4, , 16
.LBB2_29:                               # %.preheader2319.us2405.preheader
                                        #   in Loop: Header=BB2_31 Depth=2
	ld.d	$a0, $sp, 784                   # 8-byte Folded Reload
	add.d	$s7, $a0, $s7
	ld.d	$a0, $sp, 776                   # 8-byte Folded Reload
	add.d	$s8, $a0, $s8
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	add.d	$a7, $a0, $a7
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	add.d	$ra, $a0, $ra
.LBB2_30:                               # %._crit_edge2389.us
                                        #   in Loop: Header=BB2_31 Depth=2
	ld.d	$a0, $sp, 816                   # 8-byte Folded Reload
	add.w	$s7, $s7, $a0
	ld.d	$a0, $sp, 808                   # 8-byte Folded Reload
	add.w	$s8, $s8, $a0
	ld.d	$a0, $sp, 800                   # 8-byte Folded Reload
	add.w	$a7, $a0, $a7
	addi.w	$fp, $fp, 1
	ld.d	$a0, $sp, 792                   # 8-byte Folded Reload
	add.w	$ra, $ra, $a0
	beq	$fp, $t8, .LBB2_2
.LBB2_31:                               # %.preheader2323.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_33 Depth 3
                                        #         Child Loop BB2_34 Depth 4
	blt	$s0, $s5, .LBB2_29
# %bb.32:                               # %.preheader2319.us.us.preheader
                                        #   in Loop: Header=BB2_31 Depth=2
	st.d	$fp, $sp, 824                   # 8-byte Folded Spill
	move	$a1, $zero
	.p2align	4, , 16
.LBB2_33:                               # %.preheader2319.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_31 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_34 Depth 4
	st.d	$a1, $sp, 928                   # 8-byte Folded Spill
	move	$a1, $zero
	move	$a2, $zero
	ld.d	$a0, $sp, 896                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s7
	alsl.d	$a0, $a0, $s3, 3
	st.d	$a0, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 904                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s7
	ld.d	$t7, $sp, 888                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $t7, 3
	st.d	$a0, $sp, 1112                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 880                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s7
	ld.d	$t2, $sp, 1136                  # 8-byte Folded Reload
	alsl.d	$a0, $a0, $t2, 3
	st.d	$a0, $sp, 1104                  # 8-byte Folded Spill
	ld.d	$a6, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$s4, $a7, $a6, 3
	ld.d	$a3, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$s5, $a7, $a3, 3
	ld.d	$t6, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $t6, 3
	st.d	$a0, $sp, 1096                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a4, $a7, $a0, 3
	st.d	$a4, $sp, 1088                  # 8-byte Folded Spill
	ld.d	$a4, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$a5, $a7, $a4, 3
	st.d	$a5, $sp, 1080                  # 8-byte Folded Spill
	ld.d	$t4, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$a5, $a7, $t4, 3
	st.d	$a5, $sp, 1072                  # 8-byte Folded Spill
	ld.d	$t1, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$a5, $a7, $t1, 3
	st.d	$a5, $sp, 1064                  # 8-byte Folded Spill
	ld.d	$t3, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a5, $a7, $t3, 3
	st.d	$a5, $sp, 1056                  # 8-byte Folded Spill
	ld.d	$t0, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$a5, $a7, $t0, 3
	st.d	$a5, $sp, 1048                  # 8-byte Folded Spill
	ld.d	$a5, $sp, 912                   # 8-byte Folded Reload
	add.d	$a5, $a5, $a7
	ld.d	$t5, $sp, 856                   # 8-byte Folded Reload
	alsl.d	$t5, $a7, $t5, 3
	st.d	$t5, $sp, 1040                  # 8-byte Folded Spill
	ld.d	$t5, $sp, 848                   # 8-byte Folded Reload
	alsl.d	$t5, $a7, $t5, 3
	st.d	$t5, $sp, 1032                  # 8-byte Folded Spill
	ld.d	$t5, $sp, 840                   # 8-byte Folded Reload
	alsl.d	$t5, $a7, $t5, 3
	st.d	$t5, $sp, 1024                  # 8-byte Folded Spill
	ld.d	$t5, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$t5, $a7, $t5, 3
	st.d	$t5, $sp, 1016                  # 8-byte Folded Spill
	ld.d	$t5, $sp, 920                   # 8-byte Folded Reload
	add.d	$a7, $t5, $a7
	alsl.d	$s1, $a5, $t4, 3
	alsl.d	$a6, $a5, $a6, 3
	st.d	$a6, $sp, 1008                  # 8-byte Folded Spill
	alsl.d	$t5, $a5, $t3, 3
	alsl.d	$a3, $a5, $a3, 3
	st.d	$a3, $sp, 1000                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$a3, $a5, $a3, 3
	st.d	$a3, $sp, 992                   # 8-byte Folded Spill
	alsl.d	$a3, $a5, $t6, 3
	st.d	$a3, $sp, 984                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a3, $a5, $a3, 3
	st.d	$a3, $sp, 976                   # 8-byte Folded Spill
	alsl.d	$a0, $a5, $a0, 3
	st.d	$a0, $sp, 968                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$a0, $a5, $a3, 3
	st.d	$a0, $sp, 960                   # 8-byte Folded Spill
	alsl.d	$a3, $a5, $a4, 3
	alsl.d	$a6, $a5, $t1, 3
	alsl.d	$s2, $a5, $t0, 3
	ld.d	$a4, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$s6, $s8, $a4, 3
	ld.d	$a4, $sp, 608                   # 8-byte Folded Reload
	st.d	$s8, $sp, 688                   # 8-byte Folded Spill
	alsl.d	$s8, $s8, $a4, 3
	alsl.d	$t7, $s7, $t7, 3
	ld.d	$a4, $sp, 872                   # 8-byte Folded Reload
	alsl.d	$a5, $s7, $a4, 3
	alsl.d	$t0, $s7, $t2, 3
	st.d	$s7, $sp, 696                   # 8-byte Folded Spill
	alsl.d	$t2, $s7, $s3, 3
	ld.d	$a4, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$t3, $ra, $a4, 3
	ld.d	$a4, $sp, 536                   # 8-byte Folded Reload
	move	$t1, $ra
	alsl.d	$ra, $ra, $a4, 3
	ld.d	$a4, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$fp, $t1, $a4, 3
	ld.d	$a4, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$t8, $t1, $a4, 3
	ld.d	$a4, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$s7, $t1, $a4, 3
	ld.d	$a4, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$t6, $t1, $a4, 3
	ld.d	$a4, $sp, 568                   # 8-byte Folded Reload
	st.d	$t1, $sp, 680                   # 8-byte Folded Spill
	alsl.d	$s3, $t1, $a4, 3
	move	$t1, $s0
	ld.d	$s0, $sp, 1128                  # 8-byte Folded Reload
	ld.d	$a0, $sp, 864                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_34:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_31 Depth=2
                                        #       Parent Loop BB2_33 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $s6, $a2
	fldx.d	$fa1, $s1, $a1
	ld.d	$a4, $sp, 1008                  # 8-byte Folded Reload
	fldx.d	$fa2, $a4, $a1
	ld.d	$a4, $sp, 1112                  # 8-byte Folded Reload
	fldx.d	$fa3, $a4, $a2
	fldx.d	$fa4, $s4, $a1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $t3, $a2
	fldx.d	$fa0, $s6, $a2
	fldx.d	$fa1, $t5, $a1
	add.d	$a4, $a5, $a2
	ld.d	$t4, $sp, 1000                  # 8-byte Folded Reload
	fldx.d	$fa2, $t4, $a1
	fld.d	$fa3, $a4, 8
	fldx.d	$fa4, $s5, $a1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $ra, $a2
	fldx.d	$fa0, $s6, $a2
	ld.d	$t4, $sp, 992                   # 8-byte Folded Reload
	fldx.d	$fa1, $t4, $a1
	fldx.d	$fa2, $a5, $a2
	ld.d	$t4, $sp, 1096                  # 8-byte Folded Reload
	fldx.d	$fa3, $t4, $a1
	ld.d	$t4, $sp, 984                   # 8-byte Folded Reload
	fldx.d	$fa4, $t4, $a1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	fstx.d	$fa0, $fp, $a2
	fldx.d	$fa0, $s6, $a2
	ld.d	$t4, $sp, 976                   # 8-byte Folded Reload
	fldx.d	$fa1, $t4, $a1
	ld.d	$t4, $sp, 968                   # 8-byte Folded Reload
	fldx.d	$fa2, $t4, $a1
	fld.d	$fa3, $a4, -8
	ld.d	$a4, $sp, 1088                  # 8-byte Folded Reload
	fldx.d	$fa4, $a4, $a1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $t8, $a2
	fldx.d	$fa0, $s6, $a2
	ld.d	$a4, $sp, 960                   # 8-byte Folded Reload
	fldx.d	$fa1, $a4, $a1
	fldx.d	$fa2, $a3, $a1
	ld.d	$a4, $sp, 1104                  # 8-byte Folded Reload
	fldx.d	$fa3, $a4, $a2
	ld.d	$a4, $sp, 1080                  # 8-byte Folded Reload
	fldx.d	$fa4, $a4, $a1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $s7, $a2
	ld.d	$a4, $sp, 1072                  # 8-byte Folded Reload
	fldx.d	$fa0, $a4, $a1
	fldx.d	$fa1, $s8, $a2
	ld.d	$a4, $sp, 1040                  # 8-byte Folded Reload
	fldx.d	$fa2, $a4, $a1
	fldx.d	$fa3, $t7, $a2
	fldx.d	$fa4, $s6, $a2
	fldx.d	$fa5, $s1, $a1
	ld.d	$a4, $sp, 1120                  # 8-byte Folded Reload
	fldx.d	$fa6, $a4, $a2
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	ld.d	$a4, $sp, 1064                  # 8-byte Folded Reload
	fldx.d	$fa2, $a4, $a1
	fldx.d	$fa5, $s4, $a1
	ld.d	$a4, $sp, 1032                  # 8-byte Folded Reload
	fldx.d	$fa7, $a4, $a1
	fldx.d	$ft0, $a6, $a1
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	fstx.d	$fa0, $t6, $a2
	ld.d	$a4, $sp, 1056                  # 8-byte Folded Reload
	fldx.d	$fa0, $a4, $a1
	fldx.d	$fa1, $s8, $a2
	ld.d	$a4, $sp, 1024                  # 8-byte Folded Reload
	fldx.d	$fa2, $a4, $a1
	add.d	$a4, $t0, $a2
	fld.d	$fa3, $a4, 8
	fldx.d	$fa4, $s6, $a2
	fldx.d	$fa5, $t5, $a1
	add.d	$a4, $t2, $a2
	fld.d	$fa6, $a4, 8
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	ld.d	$a4, $sp, 1048                  # 8-byte Folded Reload
	fldx.d	$fa2, $a4, $a1
	fldx.d	$fa5, $s5, $a1
	ld.d	$a4, $sp, 1016                  # 8-byte Folded Reload
	fldx.d	$fa7, $a4, $a1
	fldx.d	$ft0, $s2, $a1
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	fstx.d	$fa0, $s3, $a2
	addi.d	$a2, $a2, 8
	addi.w	$t1, $t1, -1
	add.w	$a7, $a7, $s0
	add.d	$a1, $a1, $a0
	bnez	$t1, .LBB2_34
# %bb.35:                               # %._crit_edge.us.us2418
                                        #   in Loop: Header=BB2_33 Depth=3
	ld.d	$a0, $sp, 696                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 952                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	sub.w	$s7, $a0, $t1
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 944                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	sub.w	$s8, $a0, $t1
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 936                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 928                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	sub.w	$ra, $a0, $t1
	ld.d	$s3, $sp, 1144                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 640                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB2_33
# %bb.36:                               # %._crit_edge2389.us.loopexit
                                        #   in Loop: Header=BB2_31 Depth=2
	ori	$s5, $zero, 1
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 160                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 824                   # 8-byte Folded Reload
	b	.LBB2_30
	.p2align	4, , 16
.LBB2_37:                               #   in Loop: Header=BB2_3 Depth=1
	ld.d	$s3, $sp, 1144                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	blt	$t8, $s5, .LBB2_2
# %bb.38:                               # %.preheader2324.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a5, $sp, 648                   # 8-byte Folded Reload
	blt	$a5, $s5, .LBB2_2
# %bb.39:                               # %.preheader2324.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	st.d	$zero, $sp, 320                 # 8-byte Folded Spill
	mul.d	$a5, $s0, $t6
	ld.d	$fp, $sp, 952                   # 8-byte Folded Reload
	sub.d	$t0, $fp, $s0
	ld.d	$s1, $sp, 944                   # 8-byte Folded Reload
	sub.d	$t1, $s1, $s0
	st.d	$a1, $sp, 1112                  # 8-byte Folded Spill
	sub.d	$a1, $a0, $a5
	ld.d	$s2, $sp, 936                   # 8-byte Folded Reload
	sub.d	$t2, $s2, $s0
	ld.d	$t7, $sp, 648                   # 8-byte Folded Reload
	sub.d	$t3, $t4, $t7
	mul.d	$t3, $t3, $fp
	st.d	$t3, $sp, 312                   # 8-byte Folded Spill
	sub.d	$t3, $t5, $t7
	mul.d	$t3, $t3, $s1
	st.d	$t3, $sp, 304                   # 8-byte Folded Spill
	mul.d	$t3, $t7, $a0
	sub.d	$a6, $a6, $t3
	st.d	$a6, $sp, 296                   # 8-byte Folded Spill
	sub.d	$a2, $a2, $t7
	mul.d	$a2, $a2, $s2
	st.d	$a2, $sp, 288                   # 8-byte Folded Spill
	addi.d	$a2, $t7, -1
	mul.d	$a6, $t0, $a2
	add.d	$a6, $fp, $a6
	sub.d	$a6, $a6, $s0
	st.d	$a6, $sp, 280                   # 8-byte Folded Spill
	mul.d	$a6, $t1, $a2
	add.d	$a6, $s1, $a6
	sub.d	$a6, $a6, $s0
	st.d	$a6, $sp, 272                   # 8-byte Folded Spill
	st.d	$a1, $sp, 808                   # 8-byte Folded Spill
	mul.d	$a6, $a1, $a2
	add.d	$a0, $a6, $a0
	sub.d	$a0, $a0, $a5
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	mul.d	$a0, $t2, $a2
	add.d	$a0, $s2, $a0
	sub.d	$a0, $a0, $s0
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1120                  # 8-byte Folded Reload
	bstrpick.d	$a1, $a0, 31, 0
	ld.d	$a0, $sp, 1064                  # 8-byte Folded Reload
	bstrpick.d	$a5, $a0, 31, 0
	ld.d	$a0, $sp, 1048                  # 8-byte Folded Reload
	bstrpick.d	$a6, $a0, 31, 0
	sub.d	$a0, $a3, $s0
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 776                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 1136                  # 8-byte Folded Reload
	alsl.d	$a0, $a6, $a3, 3
	st.d	$a0, $sp, 768                   # 8-byte Folded Spill
	addi.d	$a0, $a3, 8
	st.d	$a0, $sp, 760                   # 8-byte Folded Spill
	alsl.d	$a0, $a6, $a0, 3
	st.d	$a0, $sp, 752                   # 8-byte Folded Spill
	st.d	$a1, $sp, 800                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 3
	ld.d	$a2, $sp, 512                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a0
	st.d	$a1, $sp, 744                   # 8-byte Folded Spill
	slli.d	$t0, $t6, 3
	ld.d	$a2, $sp, 632                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a0
	st.d	$a1, $sp, 728                   # 8-byte Folded Spill
	st.d	$a6, $sp, 784                   # 8-byte Folded Spill
	sub.d	$a1, $a5, $a6
	st.d	$a1, $sp, 720                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 456                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a0
	st.d	$a1, $sp, 712                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 504                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a0
	st.d	$a1, $sp, 704                   # 8-byte Folded Spill
	st.d	$a5, $sp, 792                   # 8-byte Folded Spill
	alsl.d	$a1, $a5, $a3, 3
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 1112                  # 8-byte Folded Reload
	sub.d	$a1, $a1, $s0
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 352                   # 8-byte Folded Spill
	sub.d	$a1, $a4, $s0
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 344                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 336                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 624                   # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	st.d	$t0, $sp, 736                   # 8-byte Folded Spill
	b	.LBB2_42
	.p2align	4, , 16
.LBB2_40:                               # %.preheader2320.us2362.preheader
                                        #   in Loop: Header=BB2_42 Depth=2
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	add.d	$s7, $a1, $s7
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	add.d	$s8, $a1, $s8
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	add.d	$a7, $a1, $a7
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	add.d	$ra, $a1, $ra
.LBB2_41:                               # %._crit_edge2348.us
                                        #   in Loop: Header=BB2_42 Depth=2
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	add.w	$s7, $s7, $a1
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	add.w	$s8, $s8, $a1
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	add.w	$a7, $a1, $a7
	addi.w	$a0, $a0, 1
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	add.w	$ra, $ra, $a1
	beq	$a0, $t8, .LBB2_2
.LBB2_42:                               # %.preheader2324.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_44 Depth 3
                                        #         Child Loop BB2_45 Depth 4
	blt	$s0, $s5, .LBB2_40
# %bb.43:                               # %.preheader2320.us.us.preheader
                                        #   in Loop: Header=BB2_42 Depth=2
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	move	$a2, $zero
	ld.d	$s6, $sp, 1136                  # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_44:                               # %.preheader2320.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_42 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_45 Depth 4
	st.d	$a2, $sp, 816                   # 8-byte Folded Spill
	move	$a1, $zero
	move	$a2, $zero
	move	$a0, $zero
	ld.d	$a3, $sp, 784                   # 8-byte Folded Reload
	add.d	$a3, $a3, $s7
	alsl.d	$a3, $a3, $s3, 3
	st.d	$a3, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $a3, 3
	st.d	$a3, $sp, 1112                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $a3, 3
	st.d	$a3, $sp, 1104                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $a3, 3
	st.d	$a3, $sp, 1096                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $a3, 3
	st.d	$a3, $sp, 1088                  # 8-byte Folded Spill
	ld.d	$t3, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$s4, $a7, $t3, 3
	ld.d	$a6, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$s5, $a7, $a6, 3
	ld.d	$t8, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $t8, 3
	st.d	$a3, $sp, 1080                  # 8-byte Folded Spill
	ld.d	$a5, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $a5, 3
	st.d	$a3, $sp, 1072                  # 8-byte Folded Spill
	ld.d	$t1, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $t1, 3
	st.d	$a3, $sp, 1064                  # 8-byte Folded Spill
	ld.d	$t0, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $t0, 3
	st.d	$a3, $sp, 1056                  # 8-byte Folded Spill
	ld.d	$t5, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $t5, 3
	st.d	$a3, $sp, 1048                  # 8-byte Folded Spill
	ld.d	$t6, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $t6, 3
	st.d	$a3, $sp, 1040                  # 8-byte Folded Spill
	ld.d	$t2, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $t2, 3
	st.d	$a3, $sp, 1032                  # 8-byte Folded Spill
	ld.d	$t7, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $t7, 3
	st.d	$a3, $sp, 1024                  # 8-byte Folded Spill
	ld.d	$t4, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $t4, 3
	st.d	$a3, $sp, 1016                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 800                   # 8-byte Folded Reload
	add.d	$a4, $a3, $a7
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $a3, 3
	st.d	$a3, $sp, 1008                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $a3, 3
	st.d	$a3, $sp, 1000                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 808                   # 8-byte Folded Reload
	add.d	$a7, $a3, $a7
	ld.d	$a3, $sp, 792                   # 8-byte Folded Reload
	add.d	$a3, $a3, $s7
	ld.d	$fp, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$s0, $a3, $fp, 3
	ld.d	$a3, $sp, 720                   # 8-byte Folded Reload
	add.d	$a3, $a3, $s7
	ld.d	$fp, $sp, 760                   # 8-byte Folded Reload
	alsl.d	$fp, $a3, $fp, 3
	move	$s2, $ra
	alsl.d	$ra, $a4, $t0, 3
	alsl.d	$t0, $a4, $t5, 3
	alsl.d	$a3, $a4, $t3, 3
	st.d	$a3, $sp, 992                   # 8-byte Folded Spill
	alsl.d	$t5, $a4, $t2, 3
	alsl.d	$a3, $a4, $t7, 3
	alsl.d	$a6, $a4, $a6, 3
	st.d	$a6, $sp, 984                   # 8-byte Folded Spill
	ld.d	$a6, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$a6, $a4, $a6, 3
	st.d	$a6, $sp, 976                   # 8-byte Folded Spill
	alsl.d	$a6, $a4, $t8, 3
	st.d	$a6, $sp, 968                   # 8-byte Folded Spill
	ld.d	$a6, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a6, $a4, $a6, 3
	st.d	$a6, $sp, 960                   # 8-byte Folded Spill
	alsl.d	$a5, $a4, $a5, 3
	st.d	$a5, $sp, 952                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a5, $a4, $a5, 3
	st.d	$a5, $sp, 944                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$a5, $a4, $a5, 3
	st.d	$a5, $sp, 936                   # 8-byte Folded Spill
	alsl.d	$a5, $a4, $t1, 3
	st.d	$a5, $sp, 928                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a5, $a4, $a5, 3
	st.d	$a5, $sp, 920                   # 8-byte Folded Spill
	alsl.d	$a5, $a4, $t6, 3
	st.d	$a5, $sp, 912                   # 8-byte Folded Spill
	alsl.d	$a4, $a4, $t4, 3
	st.d	$a4, $sp, 904                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$t7, $s8, $a4, 3
	ld.d	$a4, $sp, 608                   # 8-byte Folded Reload
	st.d	$s8, $sp, 688                   # 8-byte Folded Spill
	alsl.d	$a5, $s8, $a4, 3
	ld.d	$a4, $sp, 464                   # 8-byte Folded Reload
	add.d	$a4, $a4, $s7
	st.d	$a4, $sp, 896                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 768                   # 8-byte Folded Reload
	alsl.d	$a4, $s7, $a4, 3
	st.d	$a4, $sp, 888                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$s1, $s7, $a4, 3
	alsl.d	$a4, $s7, $s6, 3
	st.d	$a4, $sp, 880                   # 8-byte Folded Spill
	st.d	$s7, $sp, 696                   # 8-byte Folded Spill
	alsl.d	$a4, $s7, $s3, 3
	st.d	$a4, $sp, 872                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a4, $s2, $a4, 3
	st.d	$a4, $sp, 864                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$a4, $s2, $a4, 3
	st.d	$a4, $sp, 856                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a4, $s2, $a4, 3
	st.d	$a4, $sp, 848                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$a4, $s2, $a4, 3
	st.d	$a4, $sp, 840                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$a4, $s2, $a4, 3
	st.d	$a4, $sp, 832                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a4, $s2, $a4, 3
	st.d	$a4, $sp, 824                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$t2, $s2, $a4, 3
	ld.d	$a4, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$t4, $s2, $a4, 3
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$t6, $s2, $a4, 3
	ld.d	$a4, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$t3, $s2, $a4, 3
	ld.d	$a4, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$s7, $s2, $a4, 3
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a4, $s2, $a4, 3
	ld.d	$a6, $sp, 568                   # 8-byte Folded Reload
	st.d	$s2, $sp, 680                   # 8-byte Folded Spill
	alsl.d	$a6, $s2, $a6, 3
	ld.d	$s8, $sp, 640                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 736                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_45:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_42 Depth=2
                                        #       Parent Loop BB2_44 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $t7, $a2
	fldx.d	$fa1, $ra, $a1
	fldx.d	$fa2, $s0, $a2
	fmul.d	$fa0, $fa0, $fa1
	add.d	$s2, $s0, $a2
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$t8, $sp, 864                   # 8-byte Folded Reload
	fstx.d	$fa0, $t8, $a2
	fldx.d	$fa0, $t7, $a2
	fldx.d	$fa1, $t0, $a1
	ld.d	$t8, $sp, 992                   # 8-byte Folded Reload
	fldx.d	$fa2, $t8, $a1
	fld.d	$fa3, $s2, -8
	fldx.d	$fa4, $s4, $a1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t8, $sp, 856                   # 8-byte Folded Reload
	fstx.d	$fa0, $t8, $a2
	fldx.d	$fa0, $t7, $a2
	fldx.d	$fa1, $t5, $a1
	fld.d	$fa2, $s2, -16
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$t8, $sp, 848                   # 8-byte Folded Reload
	fstx.d	$fa0, $t8, $a2
	fldx.d	$fa0, $t7, $a2
	fldx.d	$fa1, $a3, $a1
	add.d	$s2, $s1, $a2
	ld.d	$t8, $sp, 984                   # 8-byte Folded Reload
	fldx.d	$fa2, $t8, $a1
	fld.d	$fa3, $s2, 8
	fldx.d	$fa4, $s5, $a1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t8, $sp, 840                   # 8-byte Folded Reload
	fstx.d	$fa0, $t8, $a2
	fldx.d	$fa0, $t7, $a2
	ld.d	$t8, $sp, 976                   # 8-byte Folded Reload
	fldx.d	$fa1, $t8, $a1
	fldx.d	$fa2, $s1, $a2
	ld.d	$t8, $sp, 1080                  # 8-byte Folded Reload
	fldx.d	$fa3, $t8, $a1
	ld.d	$t8, $sp, 968                   # 8-byte Folded Reload
	fldx.d	$fa4, $t8, $a1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	ld.d	$t8, $sp, 832                   # 8-byte Folded Reload
	fstx.d	$fa0, $t8, $a2
	fldx.d	$fa0, $t7, $a2
	ld.d	$t8, $sp, 960                   # 8-byte Folded Reload
	fldx.d	$fa1, $t8, $a1
	ld.d	$t8, $sp, 952                   # 8-byte Folded Reload
	fldx.d	$fa2, $t8, $a1
	fld.d	$fa3, $s2, -8
	ld.d	$t8, $sp, 1072                  # 8-byte Folded Reload
	fldx.d	$fa4, $t8, $a1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t8, $sp, 824                   # 8-byte Folded Reload
	fstx.d	$fa0, $t8, $a2
	fldx.d	$fa0, $t7, $a2
	ld.d	$t8, $sp, 944                   # 8-byte Folded Reload
	fldx.d	$fa1, $t8, $a1
	fldx.d	$fa2, $fp, $a2
	fmul.d	$fa0, $fa0, $fa1
	add.d	$s2, $fp, $a2
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $t2, $a2
	fldx.d	$fa0, $t7, $a2
	ld.d	$t8, $sp, 936                   # 8-byte Folded Reload
	fldx.d	$fa1, $t8, $a1
	ld.d	$t8, $sp, 928                   # 8-byte Folded Reload
	fldx.d	$fa2, $t8, $a1
	fld.d	$fa3, $s2, -8
	ld.d	$t8, $sp, 1064                  # 8-byte Folded Reload
	fldx.d	$fa4, $t8, $a1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $t4, $a2
	fldx.d	$fa0, $t7, $a2
	ld.d	$t8, $sp, 920                   # 8-byte Folded Reload
	fldx.d	$fa1, $t8, $a1
	fld.d	$fa2, $s2, -16
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $t6, $a2
	ld.d	$t8, $sp, 896                   # 8-byte Folded Reload
	add.w	$s2, $t8, $a0
	addi.w	$s3, $s2, 2
	ld.d	$t8, $sp, 1056                  # 8-byte Folded Reload
	fldx.d	$fa0, $t8, $a1
	fldx.d	$fa1, $a5, $a2
	ld.d	$t8, $sp, 1008                  # 8-byte Folded Reload
	fldx.d	$fa2, $t8, $a1
	slli.d	$s3, $s3, 3
	fldx.d	$fa3, $s6, $s3
	fldx.d	$fa4, $t7, $a2
	fldx.d	$fa5, $ra, $a1
	ld.d	$s6, $sp, 1144                  # 8-byte Folded Reload
	fldx.d	$fa6, $s6, $s3
	ld.d	$s6, $sp, 1136                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1144                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa1, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	fstx.d	$fa0, $t3, $a2
	ld.d	$t8, $sp, 1048                  # 8-byte Folded Reload
	fldx.d	$fa0, $t8, $a1
	fldx.d	$fa1, $a5, $a2
	ld.d	$t8, $sp, 1000                  # 8-byte Folded Reload
	fldx.d	$fa2, $t8, $a1
	ld.d	$t8, $sp, 888                   # 8-byte Folded Reload
	fldx.d	$fa3, $t8, $a2
	fldx.d	$fa4, $t7, $a2
	fldx.d	$fa5, $t0, $a1
	ld.d	$t8, $sp, 1120                  # 8-byte Folded Reload
	fldx.d	$fa6, $t8, $a2
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	ld.d	$t8, $sp, 1040                  # 8-byte Folded Reload
	fldx.d	$fa2, $t8, $a1
	fldx.d	$fa5, $s4, $a1
	ld.d	$t8, $sp, 1088                  # 8-byte Folded Reload
	fldx.d	$fa7, $t8, $a1
	ld.d	$t8, $sp, 912                   # 8-byte Folded Reload
	fldx.d	$ft0, $t8, $a1
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	fstx.d	$fa0, $s7, $a2
	ld.d	$t8, $sp, 1032                  # 8-byte Folded Reload
	fldx.d	$fa0, $t8, $a1
	fldx.d	$fa1, $a5, $a2
	ld.d	$t8, $sp, 1096                  # 8-byte Folded Reload
	fldx.d	$fa2, $t8, $a1
	slli.d	$s2, $s2, 3
	fldx.d	$fa3, $s6, $s2
	fldx.d	$fa4, $t7, $a2
	fldx.d	$fa5, $t5, $a1
	fldx.d	$fa6, $s3, $s2
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa1, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	fstx.d	$fa0, $a4, $a2
	ld.d	$t8, $sp, 1024                  # 8-byte Folded Reload
	fldx.d	$fa0, $t8, $a1
	fldx.d	$fa1, $a5, $a2
	ld.d	$t8, $sp, 1104                  # 8-byte Folded Reload
	fldx.d	$fa2, $t8, $a1
	ld.d	$t8, $sp, 880                   # 8-byte Folded Reload
	add.d	$s2, $t8, $a2
	fld.d	$fa3, $s2, 8
	fldx.d	$fa4, $t7, $a2
	fldx.d	$fa5, $a3, $a1
	ld.d	$t8, $sp, 872                   # 8-byte Folded Reload
	add.d	$s2, $t8, $a2
	fld.d	$fa6, $s2, 8
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	ld.d	$t8, $sp, 1016                  # 8-byte Folded Reload
	fldx.d	$fa2, $t8, $a1
	fldx.d	$fa5, $s5, $a1
	ld.d	$t8, $sp, 1112                  # 8-byte Folded Reload
	fldx.d	$fa7, $t8, $a1
	ld.d	$t8, $sp, 904                   # 8-byte Folded Reload
	fldx.d	$ft0, $t8, $a1
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	fstx.d	$fa0, $a6, $a2
	addi.w	$a0, $a0, 1
	addi.d	$a2, $a2, 8
	ld.d	$s2, $sp, 1128                  # 8-byte Folded Reload
	add.w	$a7, $a7, $s2
	add.d	$a1, $a1, $t1
	bne	$s8, $a0, .LBB2_45
# %bb.46:                               # %._crit_edge.us.us
                                        #   in Loop: Header=BB2_44 Depth=3
	ld.d	$a1, $sp, 696                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	add.w	$s7, $a1, $a0
	ld.d	$a1, $sp, 688                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 776                   # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	add.w	$s8, $a1, $a0
	ld.d	$a1, $sp, 680                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 816                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	add.w	$ra, $a1, $a0
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	bne	$a2, $a0, .LBB2_44
# %bb.47:                               # %._crit_edge2348.us.loopexit
                                        #   in Loop: Header=BB2_42 Depth=2
	ori	$s5, $zero, 1
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 640                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	b	.LBB2_41
	.p2align	4, , 16
.LBB2_48:                               #   in Loop: Header=BB2_3 Depth=1
	blt	$t8, $s5, .LBB2_2
# %bb.49:                               # %.preheader2321.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	mul.d	$a5, $s0, $t6
	ld.d	$fp, $sp, 952                   # 8-byte Folded Reload
	sub.d	$t0, $fp, $s0
	ld.d	$s1, $sp, 944                   # 8-byte Folded Reload
	sub.d	$t1, $s1, $s0
	st.d	$a1, $sp, 1112                  # 8-byte Folded Spill
	sub.d	$a1, $a0, $a5
	ld.d	$s2, $sp, 936                   # 8-byte Folded Reload
	sub.d	$t2, $s2, $s0
	ld.d	$t7, $sp, 648                   # 8-byte Folded Reload
	sub.d	$t3, $t4, $t7
	mul.d	$t4, $t3, $fp
	sub.d	$t3, $t5, $t7
	mul.d	$t5, $t3, $s1
	mul.d	$t3, $t7, $a0
	sub.d	$t3, $a6, $t3
	sub.d	$a2, $a2, $t7
	mul.d	$a2, $a2, $s2
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a2, $t7, -1
	mul.d	$a6, $t0, $a2
	add.d	$a6, $fp, $a6
	sub.d	$a6, $a6, $s0
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	mul.d	$a6, $t1, $a2
	add.d	$a6, $s1, $a6
	sub.d	$a6, $a6, $s0
	st.d	$a6, $sp, 72                    # 8-byte Folded Spill
	st.d	$a1, $sp, 352                   # 8-byte Folded Spill
	mul.d	$a6, $a1, $a2
	add.d	$a0, $a6, $a0
	sub.d	$a0, $a0, $a5
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	mul.d	$a0, $t2, $a2
	add.d	$a0, $s2, $a0
	sub.d	$a0, $a0, $s0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 1120                  # 8-byte Folded Reload
	bstrpick.d	$a1, $a0, 31, 0
	ld.d	$a0, $sp, 1064                  # 8-byte Folded Reload
	bstrpick.d	$a5, $a0, 31, 0
	ld.d	$a0, $sp, 1048                  # 8-byte Folded Reload
	bstrpick.d	$a6, $a0, 31, 0
	sub.d	$a0, $a3, $s0
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 1136                  # 8-byte Folded Reload
	alsl.d	$a0, $a6, $a3, 3
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	addi.d	$a0, $a3, 8
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	alsl.d	$a0, $a6, $a0, 3
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	st.d	$a1, $sp, 344                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 3
	ld.d	$a2, $sp, 512                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a0
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	slli.d	$a1, $t6, 3
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 632                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a0
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a0
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 456                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a0
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 1112                  # 8-byte Folded Reload
	sub.d	$a1, $a1, $s0
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	sub.d	$a1, $a4, $s0
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 624                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a6, $sp, 328                   # 8-byte Folded Spill
	sub.d	$a0, $a5, $a6
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	st.d	$a5, $sp, 336                   # 8-byte Folded Spill
	alsl.d	$a0, $a5, $a3, 3
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	st.d	$t4, $sp, 120                   # 8-byte Folded Spill
	st.d	$t5, $sp, 112                   # 8-byte Folded Spill
	st.d	$t3, $sp, 104                   # 8-byte Folded Spill
	b	.LBB2_52
	.p2align	4, , 16
.LBB2_50:                               # %.preheader.preheader
                                        #   in Loop: Header=BB2_52 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	add.d	$s7, $a0, $s7
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.d	$s8, $a0, $s8
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	add.d	$a7, $a0, $a7
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	add.d	$ra, $a0, $ra
.LBB2_51:                               # %._crit_edge2468
                                        #   in Loop: Header=BB2_52 Depth=2
	add.w	$s7, $s7, $t4
	add.w	$s8, $s8, $t5
	add.w	$a7, $t3, $a7
	addi.w	$a1, $a1, 1
	add.w	$ra, $ra, $a2
	beq	$a1, $t8, .LBB2_2
.LBB2_52:                               # %.preheader2321
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_55 Depth 3
                                        #         Child Loop BB2_56 Depth 4
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	blt	$a0, $s5, .LBB2_51
# %bb.53:                               # %.preheader.lr.ph
                                        #   in Loop: Header=BB2_52 Depth=2
	blt	$s0, $s5, .LBB2_50
# %bb.54:                               # %.preheader.us.preheader
                                        #   in Loop: Header=BB2_52 Depth=2
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	move	$a1, $zero
	.p2align	4, , 16
.LBB2_55:                               # %.preheader.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_52 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_56 Depth 4
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	move	$a2, $s7
	move	$s7, $zero
	move	$a5, $zero
	move	$fp, $zero
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	alsl.d	$a0, $a0, $s3, 3
	st.d	$a0, $sp, 1144                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1112                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1104                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1096                  # 8-byte Folded Spill
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$s0, $a7, $s2, 3
	ld.d	$t7, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$t2, $a7, $t7, 3
	ld.d	$t8, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$t1, $a7, $t8, 3
	ld.d	$a6, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$t6, $a7, $a6, 3
	ld.d	$t3, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $t3, 3
	st.d	$a0, $sp, 1088                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	st.d	$a0, $sp, 672                   # 8-byte Folded Spill
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1080                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1072                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	st.d	$a0, $sp, 664                   # 8-byte Folded Spill
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1064                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1056                  # 8-byte Folded Spill
	ld.d	$t0, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $t0, 3
	st.d	$a0, $sp, 1048                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1040                  # 8-byte Folded Spill
	ld.d	$s5, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $s5, 3
	st.d	$a0, $sp, 1032                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	st.d	$a0, $sp, 656                   # 8-byte Folded Spill
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1024                  # 8-byte Folded Spill
	ld.d	$t5, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $t5, 3
	st.d	$a0, $sp, 1016                  # 8-byte Folded Spill
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $s4, 3
	st.d	$a0, $sp, 1008                  # 8-byte Folded Spill
	ld.d	$s6, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $s6, 3
	st.d	$a0, $sp, 1000                  # 8-byte Folded Spill
	ld.d	$s1, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $s1, 3
	st.d	$a0, $sp, 992                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a7
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 984                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 976                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 968                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 960                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	add.d	$a7, $a1, $a7
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$t4, $a1, $a3, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a3, 3
	alsl.d	$t0, $a0, $t0, 3
	alsl.d	$a1, $a0, $s2, 3
	st.d	$a1, $sp, 952                   # 8-byte Folded Spill
	move	$a4, $s3
	alsl.d	$s3, $a0, $s5, 3
	alsl.d	$a1, $a0, $t7, 3
	st.d	$a1, $sp, 944                   # 8-byte Folded Spill
	alsl.d	$s5, $a0, $t5, 3
	alsl.d	$a1, $a0, $t8, 3
	st.d	$a1, $sp, 936                   # 8-byte Folded Spill
	alsl.d	$s6, $a0, $s6, 3
	alsl.d	$a1, $a0, $a6, 3
	st.d	$a1, $sp, 928                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 920                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $t3, 3
	st.d	$a1, $sp, 912                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 904                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 896                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 888                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 880                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 872                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 864                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 856                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 848                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 840                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 832                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s4, 3
	st.d	$a1, $sp, 824                   # 8-byte Folded Spill
	alsl.d	$a0, $a0, $s1, 3
	st.d	$a0, $sp, 816                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$t7, $s8, $a0, 3
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	st.d	$s8, $sp, 688                   # 8-byte Folded Spill
	alsl.d	$a0, $s8, $a0, 3
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	st.d	$a1, $sp, 808                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a1, $sp, 800                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$s8, $a2, $a1, 3
	ld.d	$s2, $sp, 1136                  # 8-byte Folded Reload
	alsl.d	$a1, $a2, $s2, 3
	st.d	$a1, $sp, 792                   # 8-byte Folded Spill
	st.d	$a2, $sp, 696                   # 8-byte Folded Spill
	alsl.d	$a1, $a2, $a4, 3
	st.d	$a1, $sp, 784                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a1, $ra, $a1, 3
	st.d	$a1, $sp, 776                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$a1, $ra, $a1, 3
	st.d	$a1, $sp, 768                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a1, $ra, $a1, 3
	st.d	$a1, $sp, 760                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$a1, $ra, $a1, 3
	st.d	$a1, $sp, 752                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$a1, $ra, $a1, 3
	st.d	$a1, $sp, 744                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a1, $ra, $a1, 3
	st.d	$a1, $sp, 736                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a1, $ra, $a1, 3
	st.d	$a1, $sp, 728                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$a1, $ra, $a2, 3
	st.d	$a1, $sp, 720                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a1, $ra, $a2, 3
	st.d	$a1, $sp, 712                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$a1, $ra, $a2, 3
	st.d	$a1, $sp, 704                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$t8, $ra, $a2, 3
	ld.d	$a2, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a2, $ra, $a2, 3
	ld.d	$t3, $sp, 568                   # 8-byte Folded Reload
	st.d	$ra, $sp, 680                   # 8-byte Folded Spill
	alsl.d	$t3, $ra, $t3, 3
	ld.d	$a1, $sp, 1128                  # 8-byte Folded Reload
	ld.d	$a6, $sp, 640                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_56:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_52 Depth=2
                                        #       Parent Loop BB2_55 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $t7, $a5
	fldx.d	$fa1, $t0, $s7
	fmul.d	$fa1, $fa0, $fa1
	ld.d	$t5, $sp, 952                   # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s7
	fldx.d	$fa3, $t4, $a5
	fldx.d	$fa4, $s0, $s7
	add.d	$s1, $t4, $a5
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t5, $sp, 776                   # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $a5
	fldx.d	$fa0, $t7, $a5
	fldx.d	$fa1, $s3, $s7
	ld.d	$t5, $sp, 944                   # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s7
	fld.d	$fa3, $s1, -8
	fldx.d	$fa4, $t2, $s7
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t5, $sp, 768                   # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $a5
	fldx.d	$fa0, $t7, $a5
	fldx.d	$fa1, $s5, $s7
	ld.d	$t5, $sp, 936                   # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s7
	fld.d	$fa3, $s1, -16
	fldx.d	$fa4, $t1, $s7
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t5, $sp, 760                   # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $a5
	fldx.d	$fa0, $t7, $a5
	fldx.d	$fa1, $s6, $s7
	add.d	$s1, $s8, $a5
	ld.d	$t5, $sp, 928                   # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s7
	fld.d	$fa3, $s1, 8
	fldx.d	$fa4, $t6, $s7
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t5, $sp, 752                   # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $a5
	fldx.d	$fa0, $t7, $a5
	ld.d	$t5, $sp, 920                   # 8-byte Folded Reload
	fldx.d	$fa1, $t5, $s7
	fldx.d	$fa2, $s8, $a5
	ld.d	$t5, $sp, 1088                  # 8-byte Folded Reload
	fldx.d	$fa3, $t5, $s7
	ld.d	$t5, $sp, 912                   # 8-byte Folded Reload
	fldx.d	$fa4, $t5, $s7
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	ld.d	$t5, $sp, 744                   # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $a5
	fldx.d	$fa0, $t7, $a5
	ld.d	$t5, $sp, 904                   # 8-byte Folded Reload
	fldx.d	$fa1, $t5, $s7
	ld.d	$t5, $sp, 896                   # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s7
	fld.d	$fa3, $s1, -8
	ld.d	$t5, $sp, 1080                  # 8-byte Folded Reload
	fldx.d	$fa4, $t5, $s7
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t5, $sp, 736                   # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $a5
	fldx.d	$fa0, $t7, $a5
	ld.d	$t5, $sp, 888                   # 8-byte Folded Reload
	fldx.d	$fa1, $t5, $s7
	fmul.d	$fa1, $fa0, $fa1
	ld.d	$t5, $sp, 880                   # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s7
	fldx.d	$fa3, $a3, $a5
	ld.d	$t5, $sp, 1072                  # 8-byte Folded Reload
	fldx.d	$fa4, $t5, $s7
	add.d	$s1, $a3, $a5
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t5, $sp, 728                   # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $a5
	fldx.d	$fa0, $t7, $a5
	ld.d	$t5, $sp, 872                   # 8-byte Folded Reload
	fldx.d	$fa1, $t5, $s7
	ld.d	$t5, $sp, 864                   # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s7
	fld.d	$fa3, $s1, -8
	ld.d	$t5, $sp, 1064                  # 8-byte Folded Reload
	fldx.d	$fa4, $t5, $s7
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t5, $sp, 720                   # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $a5
	fldx.d	$fa0, $t7, $a5
	ld.d	$t5, $sp, 856                   # 8-byte Folded Reload
	fldx.d	$fa1, $t5, $s7
	ld.d	$t5, $sp, 848                   # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s7
	fld.d	$fa3, $s1, -16
	ld.d	$t5, $sp, 1056                  # 8-byte Folded Reload
	fldx.d	$fa4, $t5, $s7
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t5, $sp, 712                   # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $a5
	ld.d	$t5, $sp, 808                   # 8-byte Folded Reload
	add.w	$s1, $t5, $fp
	addi.w	$t5, $s1, 2
	ld.d	$s4, $sp, 1048                  # 8-byte Folded Reload
	fldx.d	$fa0, $s4, $s7
	fldx.d	$fa1, $a0, $a5
	ld.d	$s4, $sp, 984                   # 8-byte Folded Reload
	fldx.d	$fa2, $s4, $s7
	slli.d	$t5, $t5, 3
	fldx.d	$fa3, $s2, $t5
	fldx.d	$fa4, $t7, $a5
	fldx.d	$fa5, $t0, $s7
	fldx.d	$fa6, $a4, $t5
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	ld.d	$t5, $sp, 1040                  # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s7
	fldx.d	$fa5, $s0, $s7
	ld.d	$t5, $sp, 976                   # 8-byte Folded Reload
	fldx.d	$fa7, $t5, $s7
	ld.d	$t5, $sp, 840                   # 8-byte Folded Reload
	fldx.d	$ft0, $t5, $s7
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$t5, $sp, 704                   # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $a5
	ld.d	$t5, $sp, 1032                  # 8-byte Folded Reload
	fldx.d	$fa0, $t5, $s7
	fldx.d	$fa1, $a0, $a5
	ld.d	$t5, $sp, 968                   # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s7
	ld.d	$t5, $sp, 800                   # 8-byte Folded Reload
	fldx.d	$fa3, $t5, $a5
	fldx.d	$fa4, $t7, $a5
	fldx.d	$fa5, $s3, $s7
	ld.d	$t5, $sp, 1144                  # 8-byte Folded Reload
	fldx.d	$fa6, $t5, $a5
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	ld.d	$t5, $sp, 1024                  # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s7
	fldx.d	$fa5, $t2, $s7
	ld.d	$t5, $sp, 960                   # 8-byte Folded Reload
	fldx.d	$fa7, $t5, $s7
	ld.d	$t5, $sp, 832                   # 8-byte Folded Reload
	fldx.d	$ft0, $t5, $s7
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	fstx.d	$fa0, $t8, $a5
	ld.d	$t5, $sp, 1016                  # 8-byte Folded Reload
	fldx.d	$fa0, $t5, $s7
	fldx.d	$fa1, $a0, $a5
	ld.d	$t5, $sp, 1096                  # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s7
	slli.d	$t5, $s1, 3
	fldx.d	$fa3, $s2, $t5
	fldx.d	$fa4, $t7, $a5
	fldx.d	$fa5, $s5, $s7
	fldx.d	$fa6, $a4, $t5
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	ld.d	$t5, $sp, 1008                  # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s7
	fldx.d	$fa5, $t1, $s7
	ld.d	$t5, $sp, 1104                  # 8-byte Folded Reload
	fldx.d	$fa7, $t5, $s7
	ld.d	$t5, $sp, 824                   # 8-byte Folded Reload
	fldx.d	$ft0, $t5, $s7
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	fstx.d	$fa0, $a2, $a5
	ld.d	$t5, $sp, 1000                  # 8-byte Folded Reload
	fldx.d	$fa0, $t5, $s7
	fldx.d	$fa1, $a0, $a5
	ld.d	$t5, $sp, 1112                  # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s7
	ld.d	$t5, $sp, 792                   # 8-byte Folded Reload
	add.d	$t5, $t5, $a5
	fld.d	$fa3, $t5, 8
	fldx.d	$fa4, $t7, $a5
	fldx.d	$fa5, $s6, $s7
	ld.d	$t5, $sp, 784                   # 8-byte Folded Reload
	add.d	$t5, $t5, $a5
	fld.d	$fa6, $t5, 8
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	ld.d	$t5, $sp, 992                   # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s7
	fldx.d	$fa5, $t6, $s7
	ld.d	$t5, $sp, 1120                  # 8-byte Folded Reload
	fldx.d	$fa7, $t5, $s7
	ld.d	$t5, $sp, 816                   # 8-byte Folded Reload
	fldx.d	$ft0, $t5, $s7
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	fstx.d	$fa0, $t3, $a5
	addi.w	$fp, $fp, 1
	addi.d	$a5, $a5, 8
	add.w	$a7, $a7, $a1
	add.d	$s7, $s7, $ra
	bne	$a6, $fp, .LBB2_56
# %bb.57:                               # %._crit_edge.us2473
                                        #   in Loop: Header=BB2_55 Depth=3
	ld.d	$a0, $sp, 696                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	add.w	$s7, $a0, $fp
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	add.w	$s8, $a0, $fp
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	add.w	$ra, $a0, $fp
	move	$s3, $a4
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB2_55
# %bb.58:                               # %._crit_edge2468.loopexit
                                        #   in Loop: Header=BB2_52 Depth=2
	ori	$s5, $zero, 1
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 640                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	b	.LBB2_51
.LBB2_59:                               # %._crit_edge
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
	addi.d	$sp, $sp, -528
	st.d	$ra, $sp, 520                   # 8-byte Folded Spill
	st.d	$fp, $sp, 512                   # 8-byte Folded Spill
	st.d	$s0, $sp, 504                   # 8-byte Folded Spill
	st.d	$s1, $sp, 496                   # 8-byte Folded Spill
	st.d	$s2, $sp, 488                   # 8-byte Folded Spill
	st.d	$s3, $sp, 480                   # 8-byte Folded Spill
	st.d	$s4, $sp, 472                   # 8-byte Folded Spill
	st.d	$s5, $sp, 464                   # 8-byte Folded Spill
	st.d	$s6, $sp, 456                   # 8-byte Folded Spill
	st.d	$s7, $sp, 448                   # 8-byte Folded Spill
	st.d	$s8, $sp, 440                   # 8-byte Folded Spill
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a2, $a0, 8
	ld.w	$a1, $a2, 64
	ori	$fp, $zero, 1
	bne	$a1, $fp, .LBB3_111
# %bb.1:
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 24
	ld.w	$a1, $a1, 8
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	ld.d	$s0, $a2, 8
	pcaddu18i	$ra, %call36(hypre_StructMatrixAssemble)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 8
	blt	$a0, $fp, .LBB3_111
# %bb.2:                                # %.lr.ph
	move	$a1, $s0
	move	$s0, $zero
	ori	$a0, $zero, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, 1
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	addi.w	$a2, $zero, -1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	lu32i.d	$a2, 0
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	ori	$s7, $zero, 16
	lu52i.d	$a0, $zero, 1024
	xvreplgr2vr.d	$xr6, $a0
	xvrepli.b	$xr7, 0
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
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	xvst	$xr6, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr7, $sp, 96                   # 32-byte Folded Spill
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %.critedge703
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 8
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
	addi.d	$s0, $s0, 1
	bge	$s0, $a0, .LBB3_111
.LBB3_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_11 Depth 2
                                        #       Child Loop BB3_13 Depth 3
                                        #         Child Loop BB3_38 Depth 4
                                        #         Child Loop BB3_17 Depth 4
                                        #     Child Loop BB3_57 Depth 2
                                        #       Child Loop BB3_60 Depth 3
                                        #         Child Loop BB3_63 Depth 4
                                        #         Child Loop BB3_66 Depth 4
                                        #     Child Loop BB3_73 Depth 2
                                        #       Child Loop BB3_75 Depth 3
                                        #         Child Loop BB3_92 Depth 4
                                        #         Child Loop BB3_78 Depth 4
                                        #     Child Loop BB3_101 Depth 2
                                        #       Child Loop BB3_104 Depth 3
                                        #         Child Loop BB3_107 Depth 4
                                        #         Child Loop BB3_110 Depth 4
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $fp, 40
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	slli.d	$a1, $s0, 4
	alsl.d	$a2, $s0, $a1, 3
	add.d	$a1, $a0, $a2
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	st.d	$s2, $sp, 428
	st.w	$zero, $sp, 436
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	ld.w	$a1, $a1, 12
	st.d	$a1, $sp, 368                   # 8-byte Folded Spill
	st.d	$a2, $sp, 400                   # 8-byte Folded Spill
	ldx.w	$a0, $a0, $a2
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	st.d	$s1, $sp, 432
	addi.d	$a2, $sp, 428
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	st.d	$s6, $sp, 428
	st.w	$s6, $sp, 436
	addi.d	$a2, $sp, 428
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 428
	st.w	$s6, $sp, 436
	addi.d	$a2, $sp, 428
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 428
	st.w	$s6, $sp, 436
	addi.d	$a2, $sp, 428
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	st.d	$s2, $sp, 428
	st.w	$s6, $sp, 436
	addi.d	$a2, $sp, 428
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$zero, $sp, 428
	st.w	$zero, $sp, 436
	addi.d	$a2, $sp, 428
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	st.d	$s6, $sp, 428
	st.w	$zero, $sp, 436
	addi.d	$a2, $sp, 428
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 428
	st.w	$zero, $sp, 436
	addi.d	$a2, $sp, 428
	move	$a0, $fp
	st.d	$s0, $sp, 176                   # 8-byte Folded Spill
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ori	$a1, $zero, 27
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	bne	$a0, $a1, .LBB3_6
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	st.d	$s2, $sp, 428
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	st.w	$s4, $sp, 436
	addi.d	$a2, $sp, 428
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	move	$a0, $s0
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	ori	$fp, $zero, 1
	lu32i.d	$fp, -1
	st.d	$fp, $sp, 428
	st.w	$s4, $sp, 436
	addi.d	$a2, $sp, 428
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	move	$a0, $s2
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 428
	st.w	$s4, $sp, 436
	addi.d	$a2, $sp, 428
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 428
	st.w	$s4, $sp, 436
	addi.d	$a2, $sp, 428
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$s2, $sp, 428
	st.w	$zero, $sp, 436
	addi.d	$a2, $sp, 428
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 428
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	st.w	$zero, $sp, 436
	addi.d	$a2, $sp, 428
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
.LBB3_6:                                #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	add.d	$a3, $a0, $a1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	sub.w	$a0, $a0, $a1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	addi.d	$a1, $sp, 416
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	move	$a0, $a3
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 424
	ori	$a0, $zero, 1
	vldi	$vr5, -1024
	xvld	$xr6, $sp, 32                   # 32-byte Folded Reload
	xvld	$xr7, $sp, 96                   # 32-byte Folded Reload
	ld.d	$ra, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 376                   # 8-byte Folded Reload
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	blt	$a1, $a0, .LBB3_67
# %bb.7:                                # %.preheader715.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$s6, $sp, 420
	ori	$a0, $zero, 1
	blt	$s6, $a0, .LBB3_67
# %bb.8:                                # %.preheader715.us.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$t1, $zero
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a0, $a4, 0
	ld.d	$t0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $t0, 0
	ld.w	$a2, $a4, 4
	ld.w	$a3, $t0, 4
	ld.w	$a4, $a4, 8
	ld.w	$a5, $t0, 8
	ld.w	$a6, $t0, 16
	sub.d	$a0, $a0, $a1
	sub.d	$a2, $a2, $a3
	sub.d	$a4, $a4, $a5
	sub.w	$a3, $a6, $a3
	ld.d	$a7, $sp, 168                   # 8-byte Folded Reload
	slt	$a5, $a7, $a3
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $a7, $a5
	or	$a3, $a3, $a5
	ld.w	$a5, $t0, 12
	addi.d	$a6, $a3, 1
	mul.d	$a3, $a6, $a4
	add.d	$a3, $a2, $a3
	sub.w	$a1, $a5, $a1
	slt	$a2, $a7, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a7, $a2
	or	$a1, $a1, $a2
	ld.wu	$a2, $sp, 416
	addi.d	$a4, $a1, 1
	mul.d	$a1, $a3, $a4
	add.w	$a5, $a1, $a0
	sub.d	$a1, $a4, $a2
	sub.d	$a0, $a6, $s6
	mul.d	$a0, $a4, $a0
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a0, $s6, -1
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	mul.d	$a0, $a1, $a0
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	add.d	$a0, $a4, $a0
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	addi.d	$a0, $a2, -1
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	nor	$t3, $a1, $zero
	bstrpick.d	$a1, $a0, 31, 0
	ld.d	$a3, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$a4, $a1, $a3, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 312                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$a4, $a1, $s0, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 304                   # 8-byte Folded Spill
	alsl.d	$a4, $a1, $fp, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 288                   # 8-byte Folded Spill
	alsl.d	$a4, $a1, $s8, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 272                   # 8-byte Folded Spill
	alsl.d	$a4, $a1, $ra, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 264                   # 8-byte Folded Spill
	addi.d	$a4, $s2, -8
	st.d	$a4, $sp, 400                   # 8-byte Folded Spill
	alsl.d	$a4, $a1, $s2, 3
	st.d	$a4, $sp, 256                   # 8-byte Folded Spill
	alsl.d	$a4, $a1, $s1, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 248                   # 8-byte Folded Spill
	alsl.d	$a1, $a1, $s5, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	add.d	$a0, $t3, $a0
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 30, 2
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	move	$a6, $a5
	st.d	$t3, $sp, 280                   # 8-byte Folded Spill
	b	.LBB3_11
	.p2align	4, , 16
.LBB3_9:                                # %.preheader711.us726.preheader
                                        #   in Loop: Header=BB3_11 Depth=2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	add.d	$a6, $a0, $a6
.LBB3_10:                               # %._crit_edge722.us
                                        #   in Loop: Header=BB3_11 Depth=2
	ld.d	$t1, $sp, 200                   # 8-byte Folded Reload
	addi.w	$t1, $t1, 1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	add.w	$a6, $a6, $a0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	beq	$t1, $a0, .LBB3_54
.LBB3_11:                               # %.preheader715.us
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_13 Depth 3
                                        #         Child Loop BB3_38 Depth 4
                                        #         Child Loop BB3_17 Depth 4
	st.d	$t1, $sp, 200                   # 8-byte Folded Spill
	addi.w	$a1, $a2, 0
	ori	$a0, $zero, 1
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	blt	$a1, $a0, .LBB3_9
# %bb.12:                               # %.preheader711.us.us.preheader
                                        #   in Loop: Header=BB3_11 Depth=2
	move	$t4, $zero
	.p2align	4, , 16
.LBB3_13:                               # %.preheader711.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_11 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_38 Depth 4
                                        #         Child Loop BB3_17 Depth 4
	bltu	$a2, $s7, .LBB3_15
# %bb.14:                               # %vector.scevcheck959
                                        #   in Loop: Header=BB3_13 Depth=3
	add.w	$t6, $a6, $t3
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	add.w	$a0, $a6, $a0
	bge	$a0, $t6, .LBB3_19
.LBB3_15:                               #   in Loop: Header=BB3_13 Depth=3
	move	$a4, $zero
.LBB3_16:                               # %scalar.ph1064.preheader
                                        #   in Loop: Header=BB3_13 Depth=3
	slli.d	$a0, $a6, 3
	add.w	$a7, $t3, $a6
	sub.d	$a4, $a2, $a4
	move	$t0, $fp
	move	$t1, $s1
	move	$t2, $s0
	ld.d	$t5, $sp, 400                   # 8-byte Folded Reload
	move	$t6, $ra
	move	$t7, $a3
	move	$t8, $s8
	.p2align	4, , 16
.LBB3_17:                               # %scalar.ph1064
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_11 Depth=2
                                        #       Parent Loop BB3_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $t8, $a0
	fldx.d	$fa1, $t7, $a0
	fmadd.d	$fa0, $fa0, $fa5, $fa1
	fstx.d	$fa0, $t7, $a0
	fldx.d	$fa0, $t6, $a0
	fldx.d	$fa1, $t5, $a0
	fldx.d	$fa2, $t2, $a0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t2, $a0
	fldx.d	$fa0, $t1, $a0
	slli.d	$a1, $a7, 3
	fldx.d	$fa1, $s5, $a1
	fldx.d	$fa2, $t0, $a0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t0, $a0
	addi.d	$a6, $a6, 1
	addi.d	$t8, $t8, 8
	addi.d	$t7, $t7, 8
	addi.d	$t6, $t6, 8
	addi.d	$t5, $t5, 8
	addi.d	$t2, $t2, 8
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, 8
	addi.w	$a4, $a4, -1
	addi.w	$a7, $a7, 1
	bnez	$a4, .LBB3_17
.LBB3_18:                               # %._crit_edge.us.us
                                        #   in Loop: Header=BB3_13 Depth=3
	addi.w	$t4, $t4, 1
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	add.w	$a6, $a0, $a6
	bne	$t4, $s6, .LBB3_13
	b	.LBB3_10
	.p2align	4, , 16
.LBB3_19:                               # %vector.memcheck960
                                        #   in Loop: Header=BB3_13 Depth=3
	alsl.d	$t7, $a6, $a3, 3
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a0, 3
	alsl.d	$t8, $a6, $s0, 3
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$t5, $a6, $a0, 3
	sltu	$a0, $t7, $t5
	sltu	$a4, $t8, $a1
	and	$a0, $a0, $a4
	move	$a4, $zero
	bnez	$a0, .LBB3_16
# %bb.20:                               # %vector.memcheck960
                                        #   in Loop: Header=BB3_13 Depth=3
	alsl.d	$t0, $a6, $fp, 3
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	alsl.d	$a0, $a6, $a0, 3
	sltu	$a7, $t7, $a0
	sltu	$t1, $t0, $a1
	and	$a7, $a7, $t1
	bnez	$a7, .LBB3_16
# %bb.21:                               # %vector.memcheck960
                                        #   in Loop: Header=BB3_13 Depth=3
	move	$t3, $s6
	alsl.d	$a7, $a6, $s8, 3
	ld.d	$t1, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$s6, $a6, $t1, 3
	sltu	$t1, $t7, $s6
	sltu	$t2, $a7, $a1
	and	$t1, $t1, $t2
	bnez	$t1, .LBB3_53
# %bb.22:                               # %vector.memcheck960
                                        #   in Loop: Header=BB3_13 Depth=3
	alsl.d	$t2, $a6, $ra, 3
	ld.d	$t1, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$s1, $a6, $t1, 3
	sltu	$t1, $t7, $s1
	sltu	$fp, $t2, $a1
	and	$t1, $t1, $fp
	bnez	$t1, .LBB3_52
# %bb.23:                               # %vector.memcheck960
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$t1, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$t1, $a6, $t1, 3
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$s2, $a6, $fp, 3
	sltu	$fp, $t7, $s2
	sltu	$s0, $t1, $a1
	and	$fp, $fp, $s0
	bnez	$fp, .LBB3_51
# %bb.24:                               # %vector.memcheck960
                                        #   in Loop: Header=BB3_13 Depth=3
	move	$a3, $s8
	ld.d	$fp, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$fp, $a6, $fp, 3
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$s7, $a6, $s0, 3
	sltu	$s0, $t7, $s7
	sltu	$s8, $fp, $a1
	and	$s0, $s0, $s8
	bnez	$s0, .LBB3_45
# %bb.25:                               # %vector.memcheck960
                                        #   in Loop: Header=BB3_13 Depth=3
	alsl.d	$s8, $t6, $s5, 3
	ld.d	$s0, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$s0, $t6, $s0, 3
	sltu	$ra, $t7, $s0
	sltu	$a1, $s8, $a1
	and	$a1, $ra, $a1
	bnez	$a1, .LBB3_46
# %bb.26:                               # %vector.memcheck960
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t8, $a0
	sltu	$ra, $t0, $t5
	and	$a1, $a1, $ra
	bnez	$a1, .LBB3_46
# %bb.27:                               # %vector.memcheck960
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t8, $s6
	sltu	$ra, $a7, $t5
	and	$a1, $a1, $ra
	bnez	$a1, .LBB3_46
# %bb.28:                               # %vector.memcheck960
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t8, $s1
	sltu	$ra, $t2, $t5
	and	$a1, $a1, $ra
	bnez	$a1, .LBB3_46
# %bb.29:                               # %vector.memcheck960
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t8, $s2
	sltu	$ra, $t1, $t5
	and	$a1, $a1, $ra
	bnez	$a1, .LBB3_46
# %bb.30:                               # %vector.memcheck960
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t8, $s7
	sltu	$ra, $fp, $t5
	and	$a1, $a1, $ra
	bnez	$a1, .LBB3_46
# %bb.31:                               # %vector.memcheck960
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t8, $s0
	sltu	$t5, $s8, $t5
	and	$a1, $a1, $t5
	ld.d	$ra, $sp, 352                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_45
# %bb.32:                               # %vector.memcheck960
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t0, $s6
	sltu	$t5, $a7, $a0
	and	$a1, $a1, $t5
	bnez	$a1, .LBB3_45
# %bb.33:                               # %vector.memcheck960
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t0, $s1
	sltu	$t5, $t2, $a0
	and	$a1, $a1, $t5
	move	$s6, $t3
	bnez	$a1, .LBB3_44
# %bb.34:                               # %vector.memcheck960
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t0, $s2
	sltu	$t5, $t1, $a0
	and	$a1, $a1, $t5
	ld.d	$s1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_43
# %bb.35:                               # %vector.memcheck960
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t0, $s7
	sltu	$t5, $fp, $a0
	and	$a1, $a1, $t5
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_40
# %bb.36:                               # %vector.memcheck960
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t0, $s0
	sltu	$a0, $s8, $a0
	and	$a0, $a1, $a0
	ori	$s7, $zero, 16
	bnez	$a0, .LBB3_41
# %bb.37:                               # %vector.ph1066
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	add.d	$a6, $a0, $a6
	move	$s8, $a3
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_38:                               # %vector.body1069
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_11 Depth=2
                                        #       Parent Loop BB3_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvld	$xr0, $a7, 0
	xvld	$xr1, $t7, 0
	xvld	$xr2, $t2, 0
	xvld	$xr3, $t1, 0
	xvfmadd.d	$xr0, $xr0, $xr6, $xr1
	xvst	$xr0, $t7, 0
	xvfadd.d	$xr0, $xr2, $xr3
	xvld	$xr1, $t8, 0
	xvld	$xr2, $fp, 0
	slli.d	$a1, $t6, 3
	xvldx	$xr3, $s5, $a1
	xvld	$xr4, $t0, 0
	xvfadd.d	$xr0, $xr1, $xr0
	xvst	$xr0, $t8, 0
	xvfadd.d	$xr0, $xr2, $xr3
	xvfadd.d	$xr0, $xr4, $xr0
	xvst	$xr0, $t0, 0
	addi.w	$t6, $t6, 4
	addi.d	$a0, $a0, -4
	addi.d	$t0, $t0, 32
	addi.d	$fp, $fp, 32
	addi.d	$t8, $t8, 32
	addi.d	$t1, $t1, 32
	addi.d	$t2, $t2, 32
	addi.d	$t7, $t7, 32
	addi.d	$a7, $a7, 32
	bnez	$a0, .LBB3_38
# %bb.39:                               # %middle.block1082
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	move	$a4, $a0
	ld.d	$a3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	bne	$a0, $a2, .LBB3_16
	b	.LBB3_18
.LBB3_40:                               #   in Loop: Header=BB3_13 Depth=3
	ori	$s7, $zero, 16
.LBB3_41:                               #   in Loop: Header=BB3_13 Depth=3
	move	$s8, $a3
.LBB3_42:                               # %scalar.ph1064.preheader
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$a3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	b	.LBB3_16
.LBB3_43:                               #   in Loop: Header=BB3_13 Depth=3
	ori	$s7, $zero, 16
	move	$s8, $a3
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	b	.LBB3_42
.LBB3_44:                               #   in Loop: Header=BB3_13 Depth=3
	ori	$s7, $zero, 16
	move	$s8, $a3
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 376                   # 8-byte Folded Reload
	b	.LBB3_48
.LBB3_45:                               #   in Loop: Header=BB3_13 Depth=3
	ori	$s7, $zero, 16
	move	$s8, $a3
	b	.LBB3_47
.LBB3_46:                               #   in Loop: Header=BB3_13 Depth=3
	ori	$s7, $zero, 16
	move	$s8, $a3
	ld.d	$ra, $sp, 352                   # 8-byte Folded Reload
.LBB3_47:                               # %scalar.ph1064.preheader
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 376                   # 8-byte Folded Reload
	move	$s6, $t3
.LBB3_48:                               # %scalar.ph1064.preheader
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$a3, $sp, 320                   # 8-byte Folded Reload
.LBB3_49:                               # %scalar.ph1064.preheader
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
.LBB3_50:                               # %scalar.ph1064.preheader
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	b	.LBB3_16
.LBB3_51:                               #   in Loop: Header=BB3_13 Depth=3
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 376                   # 8-byte Folded Reload
	move	$s6, $t3
	b	.LBB3_49
.LBB3_52:                               #   in Loop: Header=BB3_13 Depth=3
	ld.d	$s1, $sp, 376                   # 8-byte Folded Reload
	move	$s6, $t3
	b	.LBB3_50
.LBB3_53:                               #   in Loop: Header=BB3_13 Depth=3
	move	$s6, $t3
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	b	.LBB3_16
	.p2align	4, , 16
.LBB3_54:                               # %.preheader714.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a0, $zero
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	mul.d	$a1, $a1, $a3
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	add.d	$a1, $a3, $a1
	sub.d	$a4, $a1, $a2
	sub.d	$a1, $ra, $s8
	sub.d	$a6, $s2, $s8
	sub.d	$a7, $s1, $s8
	sub.d	$t0, $s5, $s8
	sub.d	$t1, $s2, $ra
	sub.d	$t2, $s1, $ra
	sub.d	$t3, $s5, $ra
	sub.d	$t4, $s1, $s2
	sub.d	$t5, $s5, $s2
	sltui	$a1, $a1, 64
	sltui	$a6, $a6, 64
	or	$a1, $a1, $a6
	sub.d	$a6, $s5, $s1
	sltui	$a7, $a7, 64
	or	$a1, $a1, $a7
	sltui	$a7, $t0, 64
	or	$a1, $a1, $a7
	sltui	$a7, $t1, 64
	or	$a1, $a1, $a7
	sltui	$a7, $t2, 64
	or	$a1, $a1, $a7
	sltui	$a7, $t3, 64
	or	$a1, $a1, $a7
	sltui	$a7, $t4, 64
	or	$a1, $a1, $a7
	sltui	$a7, $t5, 64
	or	$a1, $a1, $a7
	sltui	$a6, $a6, 64
	or	$a6, $a1, $a6
	bstrpick.d	$a1, $a2, 30, 3
	slli.d	$a7, $a1, 3
	addi.d	$t0, $s8, 32
	addi.d	$t1, $s5, 32
	addi.d	$t2, $ra, 32
	addi.d	$t3, $s1, 32
	addi.d	$t4, $s2, 32
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	b	.LBB3_57
	.p2align	4, , 16
.LBB3_55:                               # %.preheader710.us740.preheader
                                        #   in Loop: Header=BB3_57 Depth=2
	add.d	$a5, $a4, $a5
.LBB3_56:                               # %._crit_edge736.us
                                        #   in Loop: Header=BB3_57 Depth=2
	addi.w	$a0, $a0, 1
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	add.w	$a5, $a5, $a1
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB3_67
.LBB3_57:                               # %.preheader714.us
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_60 Depth 3
                                        #         Child Loop BB3_63 Depth 4
                                        #         Child Loop BB3_66 Depth 4
	ori	$a1, $zero, 1
	blt	$a3, $a1, .LBB3_55
# %bb.58:                               # %.preheader710.us.us.preheader
                                        #   in Loop: Header=BB3_57 Depth=2
	move	$t5, $zero
	b	.LBB3_60
	.p2align	4, , 16
.LBB3_59:                               # %._crit_edge.us.us747
                                        #   in Loop: Header=BB3_60 Depth=3
	addi.w	$t5, $t5, 1
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	add.w	$a5, $a1, $t6
	beq	$t5, $s6, .LBB3_56
.LBB3_60:                               # %.preheader710.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_57 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_63 Depth 4
                                        #         Child Loop BB3_66 Depth 4
	sltui	$a1, $a2, 12
	or	$a1, $a1, $a6
	andi	$a1, $a1, 1
	beqz	$a1, .LBB3_62
# %bb.61:                               #   in Loop: Header=BB3_60 Depth=3
	move	$s0, $zero
	move	$t6, $a5
	b	.LBB3_65
	.p2align	4, , 16
.LBB3_62:                               # %vector.ph948
                                        #   in Loop: Header=BB3_60 Depth=3
	add.d	$t6, $a7, $a5
	alsl.d	$a1, $a5, $t0, 3
	alsl.d	$t7, $a5, $t1, 3
	alsl.d	$t8, $a5, $t2, 3
	alsl.d	$fp, $a5, $t3, 3
	alsl.d	$a5, $a5, $t4, 3
	move	$s0, $a7
	.p2align	4, , 16
.LBB3_63:                               # %vector.body951
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_57 Depth=2
                                        #       Parent Loop BB3_60 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvst	$xr7, $a1, -32
	xvst	$xr7, $a1, 0
	xvst	$xr7, $t8, -32
	xvst	$xr7, $t8, 0
	xvst	$xr7, $a5, -32
	xvst	$xr7, $a5, 0
	xvst	$xr7, $fp, -32
	xvst	$xr7, $fp, 0
	xvst	$xr7, $t7, -32
	xvst	$xr7, $t7, 0
	addi.d	$s0, $s0, -8
	addi.d	$a1, $a1, 64
	addi.d	$t7, $t7, 64
	addi.d	$t8, $t8, 64
	addi.d	$fp, $fp, 64
	addi.d	$a5, $a5, 64
	bnez	$s0, .LBB3_63
# %bb.64:                               # %middle.block955
                                        #   in Loop: Header=BB3_60 Depth=3
	move	$s0, $a7
	beq	$a7, $a2, .LBB3_59
.LBB3_65:                               # %scalar.ph946.preheader
                                        #   in Loop: Header=BB3_60 Depth=3
	alsl.d	$a1, $t6, $s8, 3
	alsl.d	$a5, $t6, $ra, 3
	alsl.d	$t7, $t6, $s2, 3
	alsl.d	$t8, $t6, $s1, 3
	alsl.d	$fp, $t6, $s5, 3
	sub.d	$s0, $a2, $s0
	.p2align	4, , 16
.LBB3_66:                               # %scalar.ph946
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_57 Depth=2
                                        #       Parent Loop BB3_60 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.d	$zero, $a1, 0
	st.d	$zero, $a5, 0
	st.d	$zero, $t7, 0
	st.d	$zero, $t8, 0
	st.d	$zero, $fp, 0
	addi.d	$t6, $t6, 1
	addi.d	$a1, $a1, 8
	addi.d	$a5, $a5, 8
	addi.d	$t7, $t7, 8
	addi.d	$t8, $t8, 8
	addi.w	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	bnez	$s0, .LBB3_66
	b	.LBB3_59
	.p2align	4, , 16
.LBB3_67:                               # %.critedge697
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ori	$a1, $zero, 27
	bne	$a0, $a1, .LBB3_3
# %bb.68:                               #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a1, $sp, 416
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	xvld	$xr7, $sp, 96                   # 32-byte Folded Reload
	ld.w	$s6, $sp, 424
	ori	$a0, $zero, 1
	blt	$s6, $a0, .LBB3_3
# %bb.69:                               # %.preheader713.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $sp, 420
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB3_3
# %bb.70:                               # %.preheader713.us.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$t0, $zero
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a0, $a5, 0
	ld.d	$t1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a2, $t1, 0
	ld.w	$a3, $a5, 4
	ld.w	$a4, $t1, 4
	ld.w	$a5, $a5, 8
	ld.w	$a6, $t1, 8
	ld.w	$a7, $t1, 16
	sub.d	$a0, $a0, $a2
	sub.d	$a3, $a3, $a4
	sub.d	$a5, $a5, $a6
	sub.w	$a4, $a7, $a4
	ld.d	$a7, $sp, 168                   # 8-byte Folded Reload
	slt	$a6, $a7, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $a7, $a6
	or	$a4, $a4, $a6
	ld.w	$a6, $t1, 12
	addi.d	$a4, $a4, 1
	mul.d	$a5, $a4, $a5
	add.d	$a3, $a3, $a5
	sub.w	$a2, $a6, $a2
	slt	$a5, $a7, $a2
	maskeqz	$a2, $a2, $a5
	masknez	$a5, $a7, $a5
	or	$a5, $a2, $a5
	ld.wu	$a2, $sp, 416
	addi.d	$a5, $a5, 1
	mul.d	$a3, $a3, $a5
	add.w	$a6, $a3, $a0
	sub.d	$a3, $a5, $a2
	sub.d	$a0, $a4, $a1
	mul.d	$s8, $a5, $a0
	addi.d	$a0, $a1, -1
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	mul.d	$a0, $a3, $a0
	st.d	$a5, $sp, 304                   # 8-byte Folded Spill
	add.d	$a0, $a5, $a0
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	addi.w	$t3, $a2, -1
	bstrpick.d	$a0, $t3, 31, 0
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $t4, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 408                   # 8-byte Folded Spill
	ld.d	$t8, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $t8, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 400                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 376                   # 8-byte Folded Spill
	alsl.d	$a4, $a0, $s4, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 368                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 360                   # 8-byte Folded Spill
	alsl.d	$a0, $a0, $s3, 3
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	addi.d	$s0, $a2, -3
	bstrpick.d	$a0, $a2, 30, 2
	slli.d	$s1, $a0, 2
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	sub.d	$s2, $zero, $a0
	move	$s5, $a6
	ori	$t6, $zero, 12
	st.d	$s6, $sp, 336                   # 8-byte Folded Spill
	st.d	$s8, $sp, 328                   # 8-byte Folded Spill
	b	.LBB3_73
	.p2align	4, , 16
.LBB3_71:                               # %.preheader709.us757.preheader
                                        #   in Loop: Header=BB3_73 Depth=2
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	add.d	$s5, $a0, $s5
.LBB3_72:                               # %._crit_edge753.us
                                        #   in Loop: Header=BB3_73 Depth=2
	addi.w	$t0, $t0, 1
	ld.d	$s8, $sp, 328                   # 8-byte Folded Reload
	add.w	$s5, $s5, $s8
	ld.d	$s6, $sp, 336                   # 8-byte Folded Reload
	beq	$t0, $s6, .LBB3_98
.LBB3_73:                               # %.preheader713.us
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_75 Depth 3
                                        #         Child Loop BB3_92 Depth 4
                                        #         Child Loop BB3_78 Depth 4
	addi.w	$a4, $a2, 0
	ori	$a0, $zero, 1
	st.d	$a4, $sp, 320                   # 8-byte Folded Spill
	blt	$a4, $a0, .LBB3_71
# %bb.74:                               # %.preheader709.us.us.preheader
                                        #   in Loop: Header=BB3_73 Depth=2
	move	$s6, $zero
	.p2align	4, , 16
.LBB3_75:                               # %.preheader709.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_73 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_92 Depth 4
                                        #         Child Loop BB3_78 Depth 4
	bgeu	$a2, $t6, .LBB3_80
# %bb.76:                               #   in Loop: Header=BB3_75 Depth=3
	move	$s8, $zero
.LBB3_77:                               # %scalar.ph907.preheader
                                        #   in Loop: Header=BB3_75 Depth=3
	add.w	$a7, $s2, $s5
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$t1, $s5, $a0, 3
	alsl.d	$t2, $s5, $t4, 3
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$s7, $s5, $a0, 3
	alsl.d	$ra, $s5, $t8, 3
	sub.d	$a0, $a2, $s8
	.p2align	4, , 16
.LBB3_78:                               # %scalar.ph907
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_73 Depth=2
                                        #       Parent Loop BB3_75 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.w	$a4, $a7, -2
	fld.d	$fa0, $t1, 0
	slli.d	$a4, $a4, 3
	fldx.d	$fa1, $s4, $a4
	fld.d	$fa2, $t2, 0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $t2, 0
	fld.d	$fa0, $s7, 0
	slli.d	$a4, $a7, 3
	fldx.d	$fa1, $s3, $a4
	fld.d	$fa2, $ra, 0
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$s5, $s5, 1
	fadd.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $ra, 0
	addi.w	$a7, $a7, 1
	addi.d	$t1, $t1, 8
	addi.d	$t2, $t2, 8
	addi.d	$s7, $s7, 8
	addi.w	$a0, $a0, -1
	addi.d	$ra, $ra, 8
	bnez	$a0, .LBB3_78
.LBB3_79:                               # %._crit_edge.us.us764
                                        #   in Loop: Header=BB3_75 Depth=3
	addi.w	$s6, $s6, 1
	add.w	$s5, $a3, $s5
	bne	$s6, $a1, .LBB3_75
	b	.LBB3_72
	.p2align	4, , 16
.LBB3_80:                               # %vector.scevcheck
                                        #   in Loop: Header=BB3_75 Depth=3
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	sub.w	$s7, $s5, $a0
	addi.w	$t2, $s7, -2
	add.w	$a0, $s7, $s0
	move	$s8, $zero
	blt	$a0, $t2, .LBB3_77
# %bb.81:                               # %vector.scevcheck
                                        #   in Loop: Header=BB3_75 Depth=3
	add.w	$a0, $s7, $t3
	blt	$a0, $s7, .LBB3_77
# %bb.82:                               # %vector.memcheck851
                                        #   in Loop: Header=BB3_75 Depth=3
	alsl.d	$ra, $s5, $t4, 3
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a4, $s5, $a0, 3
	alsl.d	$t1, $s5, $t8, 3
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a0, $s5, $a0, 3
	sltu	$a5, $ra, $a0
	sltu	$a7, $t1, $a4
	and	$a5, $a5, $a7
	move	$s8, $zero
	bnez	$a5, .LBB3_77
# %bb.83:                               # %vector.memcheck851
                                        #   in Loop: Header=BB3_75 Depth=3
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a7, $s5, $a5, 3
	ld.d	$a5, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a5, $s5, $a5, 3
	sltu	$t4, $ra, $a5
	sltu	$t5, $a7, $a4
	and	$t4, $t4, $t5
	bnez	$t4, .LBB3_97
# %bb.84:                               # %vector.memcheck851
                                        #   in Loop: Header=BB3_75 Depth=3
	alsl.d	$t4, $t2, $s4, 3
	ld.d	$t5, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$t5, $t2, $t5, 3
	sltu	$t2, $ra, $t5
	sltu	$t6, $t4, $a4
	and	$t2, $t2, $t6
	bnez	$t2, .LBB3_95
# %bb.85:                               # %vector.memcheck851
                                        #   in Loop: Header=BB3_75 Depth=3
	ld.d	$t2, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$t2, $s5, $t2, 3
	ld.d	$t6, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$t6, $s5, $t6, 3
	sltu	$t7, $ra, $t6
	sltu	$fp, $t2, $a4
	and	$t7, $t7, $fp
	bnez	$t7, .LBB3_95
# %bb.86:                               # %vector.memcheck851
                                        #   in Loop: Header=BB3_75 Depth=3
	alsl.d	$t7, $s7, $s3, 3
	ld.d	$t8, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$fp, $s7, $t8, 3
	sltu	$t8, $ra, $fp
	sltu	$a4, $t7, $a4
	and	$a4, $t8, $a4
	bnez	$a4, .LBB3_96
# %bb.87:                               # %vector.memcheck851
                                        #   in Loop: Header=BB3_75 Depth=3
	sltu	$a4, $t1, $a5
	sltu	$a5, $a7, $a0
	and	$a4, $a4, $a5
	ld.d	$t8, $sp, 224                   # 8-byte Folded Reload
	bnez	$a4, .LBB3_95
# %bb.88:                               # %vector.memcheck851
                                        #   in Loop: Header=BB3_75 Depth=3
	sltu	$a4, $t1, $t5
	sltu	$a5, $t4, $a0
	and	$a4, $a4, $a5
	bnez	$a4, .LBB3_95
# %bb.89:                               # %vector.memcheck851
                                        #   in Loop: Header=BB3_75 Depth=3
	sltu	$a4, $t1, $t6
	sltu	$a5, $t2, $a0
	and	$a4, $a4, $a5
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	bnez	$a4, .LBB3_94
# %bb.90:                               # %vector.memcheck851
                                        #   in Loop: Header=BB3_75 Depth=3
	sltu	$a4, $t1, $fp
	sltu	$a0, $t7, $a0
	and	$a0, $a4, $a0
	ori	$t6, $zero, 12
	bnez	$a0, .LBB3_77
# %bb.91:                               # %vector.ph909
                                        #   in Loop: Header=BB3_75 Depth=3
	add.d	$s5, $s1, $s5
	move	$a0, $s1
	.p2align	4, , 16
.LBB3_92:                               # %vector.body912
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_73 Depth=2
                                        #       Parent Loop BB3_75 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.w	$a4, $s7, -2
	xvld	$xr0, $a7, 0
	slli.d	$a4, $a4, 3
	xvldx	$xr1, $s4, $a4
	xvfadd.d	$xr0, $xr0, $xr1
	xvld	$xr1, $ra, 0
	xvld	$xr2, $t2, 0
	slli.d	$a4, $s7, 3
	xvldx	$xr3, $s3, $a4
	xvld	$xr4, $t1, 0
	xvfadd.d	$xr0, $xr1, $xr0
	xvst	$xr0, $ra, 0
	xvfadd.d	$xr0, $xr2, $xr3
	xvfadd.d	$xr0, $xr4, $xr0
	xvst	$xr0, $t1, 0
	addi.w	$s7, $s7, 4
	addi.d	$a0, $a0, -4
	addi.d	$t1, $t1, 32
	addi.d	$t2, $t2, 32
	addi.d	$ra, $ra, 32
	addi.d	$a7, $a7, 32
	bnez	$a0, .LBB3_92
# %bb.93:                               # %middle.block922
                                        #   in Loop: Header=BB3_75 Depth=3
	move	$s8, $s1
	bne	$s1, $a2, .LBB3_77
	b	.LBB3_79
.LBB3_94:                               #   in Loop: Header=BB3_75 Depth=3
	ori	$t6, $zero, 12
	b	.LBB3_77
.LBB3_95:                               #   in Loop: Header=BB3_75 Depth=3
	ori	$t6, $zero, 12
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	b	.LBB3_77
.LBB3_96:                               #   in Loop: Header=BB3_75 Depth=3
	ori	$t6, $zero, 12
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 224                   # 8-byte Folded Reload
	b	.LBB3_77
.LBB3_97:                               #   in Loop: Header=BB3_75 Depth=3
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	b	.LBB3_77
.LBB3_98:                               # %.preheader712.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$t0, $zero
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	mul.d	$a0, $a3, $a0
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	add.d	$a0, $a4, $a0
	sub.d	$a7, $a0, $a2
	ld.d	$t4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 384                   # 8-byte Folded Reload
	sub.d	$a0, $t5, $t4
	sub.d	$a4, $s3, $t4
	sub.d	$a5, $s4, $t4
	sub.d	$t1, $s3, $t5
	sub.d	$t2, $s4, $t5
	sub.d	$t3, $s4, $s3
	sltui	$a0, $a0, 64
	sltui	$a4, $a4, 64
	or	$a0, $a0, $a4
	sltui	$a4, $a5, 64
	or	$a0, $a0, $a4
	sltui	$a4, $t1, 64
	or	$a0, $a0, $a4
	sltui	$a4, $t2, 64
	or	$a0, $a0, $a4
	sltui	$a4, $t3, 64
	or	$t1, $a0, $a4
	bstrpick.d	$a0, $a2, 30, 3
	slli.d	$t2, $a0, 3
	addi.d	$t3, $t4, 32
	addi.d	$t4, $s4, 32
	addi.d	$t5, $t5, 32
	addi.d	$t6, $s3, 32
	ori	$s7, $zero, 16
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	b	.LBB3_101
	.p2align	4, , 16
.LBB3_99:                               # %.preheader.us774.preheader
                                        #   in Loop: Header=BB3_101 Depth=2
	add.d	$a6, $a7, $a6
.LBB3_100:                              # %._crit_edge770.us
                                        #   in Loop: Header=BB3_101 Depth=2
	addi.w	$t0, $t0, 1
	add.w	$a6, $a6, $s8
	beq	$t0, $s6, .LBB3_3
.LBB3_101:                              # %.preheader712.us
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_104 Depth 3
                                        #         Child Loop BB3_107 Depth 4
                                        #         Child Loop BB3_110 Depth 4
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB3_99
# %bb.102:                              # %.preheader.us.us.preheader
                                        #   in Loop: Header=BB3_101 Depth=2
	move	$t7, $zero
	b	.LBB3_104
	.p2align	4, , 16
.LBB3_103:                              # %._crit_edge.us.us781
                                        #   in Loop: Header=BB3_104 Depth=3
	addi.w	$t7, $t7, 1
	add.w	$a6, $a3, $t8
	beq	$t7, $a1, .LBB3_100
.LBB3_104:                              # %.preheader.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_101 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_107 Depth 4
                                        #         Child Loop BB3_110 Depth 4
	sltui	$a0, $a2, 8
	or	$a0, $a0, $t1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB3_106
# %bb.105:                              #   in Loop: Header=BB3_104 Depth=3
	move	$a4, $zero
	move	$t8, $a6
	b	.LBB3_109
	.p2align	4, , 16
.LBB3_106:                              # %vector.ph
                                        #   in Loop: Header=BB3_104 Depth=3
	add.d	$t8, $t2, $a6
	alsl.d	$a0, $a6, $t3, 3
	alsl.d	$a4, $a6, $t4, 3
	alsl.d	$fp, $a6, $t5, 3
	alsl.d	$a6, $a6, $t6, 3
	move	$a5, $t2
	.p2align	4, , 16
.LBB3_107:                              # %vector.body
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_101 Depth=2
                                        #       Parent Loop BB3_104 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvst	$xr7, $a0, -32
	xvst	$xr7, $a0, 0
	xvst	$xr7, $fp, -32
	xvst	$xr7, $fp, 0
	xvst	$xr7, $a6, -32
	xvst	$xr7, $a6, 0
	xvst	$xr7, $a4, -32
	xvst	$xr7, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a0, $a0, 64
	addi.d	$a4, $a4, 64
	addi.d	$fp, $fp, 64
	addi.d	$a6, $a6, 64
	bnez	$a5, .LBB3_107
# %bb.108:                              # %middle.block
                                        #   in Loop: Header=BB3_104 Depth=3
	move	$a4, $t2
	beq	$t2, $a2, .LBB3_103
.LBB3_109:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB3_104 Depth=3
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a0, $t8, $a0, 3
	ld.d	$a5, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a6, $t8, $a5, 3
	alsl.d	$fp, $t8, $s3, 3
	alsl.d	$s0, $t8, $s4, 3
	sub.d	$s1, $a2, $a4
	.p2align	4, , 16
.LBB3_110:                              # %scalar.ph
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_101 Depth=2
                                        #       Parent Loop BB3_104 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.d	$zero, $a0, 0
	st.d	$zero, $a6, 0
	st.d	$zero, $fp, 0
	st.d	$zero, $s0, 0
	addi.d	$t8, $t8, 1
	addi.d	$a0, $a0, 8
	addi.d	$a6, $a6, 8
	addi.d	$fp, $fp, 8
	addi.w	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	bnez	$s1, .LBB3_110
	b	.LBB3_103
.LBB3_111:                              # %.loopexit
	move	$a0, $zero
	ld.d	$s8, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 504                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 512                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 520                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 528
	ret
.Lfunc_end3:
	.size	hypre_SMG3RAPPeriodicSym, .Lfunc_end3-hypre_SMG3RAPPeriodicSym
                                        # -- End function
	.globl	hypre_SMG3RAPPeriodicNoSym      # -- Begin function hypre_SMG3RAPPeriodicNoSym
	.p2align	5
	.type	hypre_SMG3RAPPeriodicNoSym,@function
hypre_SMG3RAPPeriodicNoSym:             # @hypre_SMG3RAPPeriodicNoSym
# %bb.0:
	addi.d	$sp, $sp, -832
	st.d	$ra, $sp, 824                   # 8-byte Folded Spill
	st.d	$fp, $sp, 816                   # 8-byte Folded Spill
	st.d	$s0, $sp, 808                   # 8-byte Folded Spill
	st.d	$s1, $sp, 800                   # 8-byte Folded Spill
	st.d	$s2, $sp, 792                   # 8-byte Folded Spill
	st.d	$s3, $sp, 784                   # 8-byte Folded Spill
	st.d	$s4, $sp, 776                   # 8-byte Folded Spill
	st.d	$s5, $sp, 768                   # 8-byte Folded Spill
	st.d	$s6, $sp, 760                   # 8-byte Folded Spill
	st.d	$s7, $sp, 752                   # 8-byte Folded Spill
	st.d	$s8, $sp, 744                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 736                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 728                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 720                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 712                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 704                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 696                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 688                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 680                  # 8-byte Folded Spill
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 8
	ld.w	$a2, $a0, 64
	ori	$a1, $zero, 1
	bne	$a2, $a1, .LBB4_95
# %bb.1:                                # %.preheader490
	ld.d	$a2, $a0, 8
	ld.w	$a0, $a2, 8
	blt	$a0, $a1, .LBB4_95
# %bb.2:                                # %.lr.ph
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 24
	move	$s3, $zero
	addi.w	$a1, $zero, -1
	ld.w	$a0, $a0, 8
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	lu32i.d	$a0, 1
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
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_3:                                # %.critedge479
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a2, 8
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	addi.d	$s3, $s3, 1
	bge	$s3, $a0, .LBB4_95
.LBB4_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_11 Depth 2
                                        #       Child Loop BB4_14 Depth 3
                                        #         Child Loop BB4_59 Depth 4
                                        #         Child Loop BB4_70 Depth 4
                                        #     Child Loop BB4_82 Depth 2
                                        #       Child Loop BB4_85 Depth 3
                                        #         Child Loop BB4_93 Depth 4
                                        #         Child Loop BB4_88 Depth 4
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $s1, 40
	ld.d	$a1, $a2, 0
	slli.d	$a2, $s3, 4
	alsl.d	$fp, $s3, $a2, 3
	ld.d	$s0, $a0, 0
	add.d	$a0, $a1, $fp
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$zero, $sp, 668
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	st.w	$s2, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s1
	move	$a1, $s3
	ori	$s7, $zero, 1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	st.d	$s2, $sp, 668
	st.w	$s2, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s7, $sp, 668
	st.w	$s2, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	st.d	$s5, $sp, 668
	st.w	$s2, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	st.d	$s4, $sp, 668
	st.w	$s2, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	st.d	$zero, $sp, 668
	st.w	$zero, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s2, $sp, 668
	st.w	$zero, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$s7, $sp, 668
	st.w	$zero, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 668
	st.w	$zero, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 668
	st.w	$zero, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	st.d	$zero, $sp, 668
	st.w	$s7, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s2, $sp, 668
	st.w	$s7, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	st.d	$s7, $sp, 668
	st.w	$s7, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	st.d	$s5, $sp, 668
	st.w	$s7, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	st.d	$s4, $sp, 668
	st.w	$s7, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	st.d	$s3, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ori	$a1, $zero, 27
	bne	$a0, $a1, .LBB4_6
# %bb.5:                                #   in Loop: Header=BB4_4 Depth=1
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	st.d	$s5, $sp, 668
	st.d	$fp, $sp, 624                   # 8-byte Folded Spill
	move	$fp, $s0
	move	$s0, $s6
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	st.w	$s6, $sp, 676
	addi.d	$a2, $sp, 668
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	ori	$s1, $zero, 1
	lu32i.d	$s1, -1
	st.d	$s1, $sp, 668
	st.w	$s6, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	move	$s2, $s5
	lu32i.d	$s2, 1
	st.d	$s2, $sp, 668
	st.w	$s6, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	ori	$s3, $zero, 1
	lu32i.d	$s3, 1
	st.d	$s3, $sp, 668
	st.w	$s6, $sp, 676
	move	$s6, $s0
	move	$s0, $fp
	ld.d	$fp, $sp, 624                   # 8-byte Folded Reload
	addi.d	$a2, $sp, 668
	move	$a0, $s4
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	st.d	$s5, $sp, 668
	st.w	$zero, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s4
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	st.d	$s1, $sp, 668
	st.w	$zero, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s4
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	st.d	$s2, $sp, 668
	st.w	$zero, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s4
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s3, $sp, 668
	st.w	$zero, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s4
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	st.d	$s5, $sp, 668
	st.w	$s7, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s4
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 668
	st.w	$s7, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s4
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 668
	st.w	$s7, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s4
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 668
	st.w	$s7, $sp, 676
	addi.d	$a2, $sp, 668
	move	$a0, $s4
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
.LBB4_6:                                #   in Loop: Header=BB4_4 Depth=1
	add.d	$a0, $s0, $fp
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a1, $sp, 656
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 664
	xvrepli.b	$xr28, 0
	ori	$t1, $zero, 1
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	blt	$a0, $t1, .LBB4_76
# %bb.7:                                # %.preheader487.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.w	$s4, $sp, 660
	blt	$s4, $t1, .LBB4_76
# %bb.8:                                # %.preheader487.us.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $t0, 4
	ld.w	$a1, $t0, 16
	move	$t2, $zero
	ld.wu	$t3, $sp, 656
	ld.w	$a2, $t0, 0
	sub.w	$a1, $a1, $a0
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
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
	sub.d	$t4, $a3, $t3
	sub.d	$a4, $a1, $s4
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a5, $a7, 0
	ld.w	$a6, $a7, 4
	ld.w	$a7, $a7, 8
	ld.w	$t0, $t0, 8
	mulw.d.w	$a4, $a3, $a4
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	sub.d	$a2, $a5, $a2
	sub.d	$a0, $a6, $a0
	sub.d	$a4, $a7, $t0
	mul.d	$a1, $a1, $a4
	add.d	$a0, $a0, $a1
	mul.d	$a0, $a0, $a3
	add.w	$a6, $a2, $a0
	addi.d	$a0, $s4, -1
	st.d	$t4, $sp, 456                   # 8-byte Folded Spill
	mul.d	$a0, $t4, $a0
	add.d	$a0, $a3, $a0
	sub.d	$a0, $a0, $t3
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a0, $t3, -1
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s8, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s3, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s6, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s0, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $ra, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s7, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s2, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s5, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 3
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	bstrpick.d	$a0, $t3, 30, 2
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	st.d	$t3, $sp, 592                   # 8-byte Folded Spill
	slli.d	$a0, $t3, 3
	bstrpick.d	$a0, $a0, 33, 5
	slli.d	$a0, $a0, 5
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s8, $sp, 416                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s4, $sp, 256                   # 8-byte Folded Spill
	b	.LBB4_11
	.p2align	4, , 16
.LBB4_9:                                # %.preheader485.us499.preheader
                                        #   in Loop: Header=BB4_11 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	add.d	$a6, $a0, $a6
.LBB4_10:                               # %._crit_edge495.us
                                        #   in Loop: Header=BB4_11 Depth=2
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	addi.w	$t2, $t2, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.w	$a6, $a6, $a0
	ori	$t1, $zero, 1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beq	$t2, $a0, .LBB4_76
.LBB4_11:                               # %.preheader487.us
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_14 Depth 3
                                        #         Child Loop BB4_59 Depth 4
                                        #         Child Loop BB4_70 Depth 4
	st.d	$t2, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	blt	$a0, $t1, .LBB4_9
# %bb.12:                               # %.preheader485.us.us.preheader
                                        #   in Loop: Header=BB4_11 Depth=2
	move	$a1, $zero
	b	.LBB4_14
	.p2align	4, , 16
.LBB4_13:                               # %._crit_edge.us.us
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$a1, $sp, 560                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	add.w	$a6, $a0, $a6
	beq	$a1, $s4, .LBB4_10
.LBB4_14:                               # %.preheader485.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_11 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_59 Depth 4
                                        #         Child Loop BB4_70 Depth 4
	st.d	$a1, $sp, 560                   # 8-byte Folded Spill
	ori	$a0, $zero, 40
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB4_16
# %bb.15:                               #   in Loop: Header=BB4_14 Depth=3
	move	$a3, $zero
	b	.LBB4_69
	.p2align	4, , 16
.LBB4_16:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	alsl.d	$t4, $a6, $s3, 3
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	move	$a1, $s0
	alsl.d	$s0, $a6, $a0, 3
	alsl.d	$t5, $a6, $s6, 3
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $s5
	alsl.d	$s5, $a6, $a0, 3
	alsl.d	$t6, $a6, $a1, 3
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$t3, $a6, $a0, 3
	alsl.d	$t7, $a6, $ra, 3
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$s4, $a6, $a0, 3
	alsl.d	$t8, $a6, $s1, 3
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$s6, $a6, $a0, 3
	alsl.d	$ra, $a6, $s7, 3
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$s8, $a6, $a0, 3
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$a7, $a6, $a0, 3
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$s3, $a6, $a0, 3
	alsl.d	$a5, $a6, $s2, 3
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$s2, $a6, $a0, 3
	alsl.d	$a0, $a6, $a2, 3
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$s1, $a6, $a1, 3
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$a2, $a6, $a1, 3
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$s7, $a6, $a1, 3
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$t0, $a6, $a1, 3
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$t2, $a6, $a1, 3
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$t1, $a6, $a1, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$a4, $a6, $a1, 3
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	xvinsgr2vr.d	$xr5, $a2, 0
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$fp, $a6, $a3, 3
	xvori.b	$xr2, $xr5, 0
	xvinsgr2vr.d	$xr2, $t6, 1
	xvinsgr2vr.d	$xr2, $t1, 2
	xvinsgr2vr.d	$xr6, $ra, 0
	xvinsgr2vr.d	$xr2, $t6, 3
	xvori.b	$xr3, $xr6, 0
	xvinsgr2vr.d	$xr3, $t6, 1
	xvinsgr2vr.d	$xr3, $a5, 2
	xvinsgr2vr.d	$xr3, $t6, 3
	xvinsgr2vr.d	$xr8, $t1, 0
	xvinsgr2vr.d	$xr8, $t5, 1
	xvinsgr2vr.d	$xr8, $t7, 2
	xvinsgr2vr.d	$xr8, $t6, 3
	xvinsgr2vr.d	$xr11, $a5, 0
	xvinsgr2vr.d	$xr11, $t5, 1
	xvinsgr2vr.d	$xr11, $a2, 2
	xvinsgr2vr.d	$xr1, $t7, 0
	xvinsgr2vr.d	$xr11, $t5, 3
	xvori.b	$xr13, $xr1, 0
	xvinsgr2vr.d	$xr13, $t5, 1
	xvinsgr2vr.d	$xr13, $ra, 2
	xvinsgr2vr.d	$xr9, $t4, 0
	xvinsgr2vr.d	$xr13, $t5, 3
	xvori.b	$xr15, $xr9, 0
	xvinsgr2vr.d	$xr15, $t1, 1
	xvinsgr2vr.d	$xr15, $t4, 2
	xvinsgr2vr.d	$xr15, $t5, 3
	xvori.b	$xr17, $xr9, 0
	xvinsgr2vr.d	$xr17, $a5, 1
	xvinsgr2vr.d	$xr17, $t4, 2
	xvinsgr2vr.d	$xr17, $a2, 3
	xvinsgr2vr.d	$xr9, $t7, 1
	xvinsgr2vr.d	$xr9, $t4, 2
	xvinsgr2vr.d	$xr19, $t3, 0
	xvinsgr2vr.d	$xr9, $ra, 3
	xvori.b	$xr7, $xr19, 0
	xvinsgr2vr.d	$xr7, $t2, 1
	xvinsgr2vr.d	$xr7, $t3, 2
	xvinsgr2vr.d	$xr7, $fp, 3
	xvori.b	$xr10, $xr19, 0
	xvinsgr2vr.d	$xr10, $s3, 1
	xvinsgr2vr.d	$xr10, $t3, 2
	xvinsgr2vr.d	$xr16, $s5, 0
	xvinsgr2vr.d	$xr10, $s1, 3
	xvori.b	$xr12, $xr16, 0
	xvinsgr2vr.d	$xr12, $fp, 1
	xvinsgr2vr.d	$xr12, $t3, 2
	xvinsgr2vr.d	$xr12, $s6, 3
	xvori.b	$xr14, $xr16, 0
	xvinsgr2vr.d	$xr14, $s1, 1
	xvinsgr2vr.d	$xr14, $s5, 2
	xvinsgr2vr.d	$xr14, $t2, 3
	xvinsgr2vr.d	$xr16, $s6, 1
	xvinsgr2vr.d	$xr16, $s5, 2
	xvinsgr2vr.d	$xr4, $t2, 0
	xvinsgr2vr.d	$xr16, $s3, 3
	xvori.b	$xr18, $xr4, 0
	xvinsgr2vr.d	$xr18, $s0, 1
	xvinsgr2vr.d	$xr18, $fp, 2
	xvinsgr2vr.d	$xr0, $s3, 0
	xvinsgr2vr.d	$xr18, $t3, 3
	xvori.b	$xr20, $xr0, 0
	xvinsgr2vr.d	$xr20, $s0, 1
	xvinsgr2vr.d	$xr20, $s1, 2
	xvinsgr2vr.d	$xr20, $s0, 3
	xvinsgr2vr.d	$xr19, $s0, 1
	xvinsgr2vr.d	$xr19, $s6, 2
	xvinsgr2vr.d	$xr19, $s0, 3
	xvslt.du	$xr19, $xr9, $xr19
	xvpickve2gr.d	$a3, $xr19, 0
	xvreplgr2vr.b	$xr9, $a3
	xvpermi.q	$xr9, $xr0, 18
	xvextrins.b	$xr9, $xr9, 0
	xvpickve2gr.d	$a3, $xr19, 1
	xvreplgr2vr.b	$xr21, $a3
	xvpermi.q	$xr21, $xr9, 18
	xvextrins.b	$xr9, $xr21, 17
	xvpickve2gr.d	$a3, $xr19, 2
	xvreplgr2vr.b	$xr21, $a3
	xvpermi.q	$xr21, $xr9, 18
	xvextrins.b	$xr9, $xr21, 34
	xvpickve2gr.d	$a3, $xr19, 3
	xvreplgr2vr.b	$xr19, $a3
	xvpermi.q	$xr19, $xr9, 18
	xvextrins.b	$xr9, $xr19, 51
	xvslt.du	$xr17, $xr17, $xr20
	xvpickve2gr.d	$a3, $xr17, 0
	xvreplgr2vr.b	$xr19, $a3
	xvpermi.q	$xr19, $xr9, 18
	xvextrins.b	$xr9, $xr19, 68
	xvpickve2gr.d	$a3, $xr17, 1
	xvreplgr2vr.b	$xr19, $a3
	xvpermi.q	$xr19, $xr9, 18
	xvextrins.b	$xr9, $xr19, 85
	xvpickve2gr.d	$a3, $xr17, 2
	xvreplgr2vr.b	$xr19, $a3
	xvpermi.q	$xr19, $xr9, 18
	xvextrins.b	$xr9, $xr19, 102
	xvpickve2gr.d	$a3, $xr17, 3
	xvreplgr2vr.b	$xr17, $a3
	xvpermi.q	$xr17, $xr9, 18
	xvextrins.b	$xr9, $xr17, 119
	xvslt.du	$xr15, $xr15, $xr18
	xvpickve2gr.d	$a3, $xr15, 0
	xvreplgr2vr.b	$xr17, $a3
	xvpermi.q	$xr17, $xr9, 18
	xvextrins.b	$xr9, $xr17, 136
	xvpickve2gr.d	$a3, $xr15, 1
	xvreplgr2vr.b	$xr17, $a3
	xvpermi.q	$xr17, $xr9, 18
	xvextrins.b	$xr9, $xr17, 153
	xvpickve2gr.d	$a3, $xr15, 2
	xvreplgr2vr.b	$xr17, $a3
	xvpermi.q	$xr17, $xr9, 18
	xvextrins.b	$xr9, $xr17, 170
	xvpickve2gr.d	$a3, $xr15, 3
	xvreplgr2vr.b	$xr15, $a3
	xvpermi.q	$xr15, $xr9, 18
	xvextrins.b	$xr9, $xr15, 187
	xvslt.du	$xr13, $xr13, $xr16
	xvpickve2gr.d	$a3, $xr13, 0
	xvreplgr2vr.b	$xr15, $a3
	xvpermi.q	$xr15, $xr9, 18
	xvextrins.b	$xr9, $xr15, 204
	xvpickve2gr.d	$a3, $xr13, 1
	xvreplgr2vr.b	$xr15, $a3
	xvpermi.q	$xr15, $xr9, 18
	xvextrins.b	$xr9, $xr15, 221
	xvpickve2gr.d	$a3, $xr13, 2
	xvreplgr2vr.b	$xr15, $a3
	xvpermi.q	$xr15, $xr9, 18
	xvextrins.b	$xr9, $xr15, 238
	xvpickve2gr.d	$a3, $xr13, 3
	xvreplgr2vr.b	$xr13, $a3
	xvpermi.q	$xr13, $xr9, 18
	xvextrins.b	$xr9, $xr13, 255
	xvslt.du	$xr11, $xr11, $xr14
	xvpickve2gr.d	$a3, $xr11, 0
	xvreplgr2vr.b	$xr13, $a3
	xvpermi.q	$xr13, $xr9, 48
	xvextrins.b	$xr9, $xr13, 0
	xvpickve2gr.d	$a3, $xr11, 1
	xvreplgr2vr.b	$xr13, $a3
	xvpermi.q	$xr13, $xr9, 48
	xvextrins.b	$xr9, $xr13, 17
	xvpickve2gr.d	$a3, $xr11, 2
	xvreplgr2vr.b	$xr13, $a3
	xvpermi.q	$xr13, $xr9, 48
	xvextrins.b	$xr9, $xr13, 34
	xvpickve2gr.d	$a3, $xr11, 3
	xvreplgr2vr.b	$xr11, $a3
	xvpermi.q	$xr11, $xr9, 48
	xvextrins.b	$xr9, $xr11, 51
	xvslt.du	$xr8, $xr8, $xr12
	xvpickve2gr.d	$a3, $xr8, 0
	xvreplgr2vr.b	$xr11, $a3
	xvpermi.q	$xr11, $xr9, 48
	xvextrins.b	$xr9, $xr11, 68
	xvpickve2gr.d	$a3, $xr8, 1
	xvreplgr2vr.b	$xr11, $a3
	xvpermi.q	$xr11, $xr9, 48
	xvextrins.b	$xr9, $xr11, 85
	xvpickve2gr.d	$a3, $xr8, 2
	xvreplgr2vr.b	$xr11, $a3
	xvpermi.q	$xr11, $xr9, 48
	xvextrins.b	$xr9, $xr11, 102
	xvpickve2gr.d	$a3, $xr8, 3
	xvreplgr2vr.b	$xr8, $a3
	xvpermi.q	$xr8, $xr9, 48
	xvextrins.b	$xr9, $xr8, 119
	xvslt.du	$xr3, $xr3, $xr10
	xvpickve2gr.d	$a3, $xr3, 0
	xvreplgr2vr.b	$xr8, $a3
	xvpermi.q	$xr8, $xr9, 48
	xvextrins.b	$xr9, $xr8, 136
	xvpickve2gr.d	$a3, $xr3, 1
	xvreplgr2vr.b	$xr8, $a3
	xvpermi.q	$xr8, $xr9, 48
	xvextrins.b	$xr9, $xr8, 153
	xvpickve2gr.d	$a3, $xr3, 2
	xvreplgr2vr.b	$xr8, $a3
	xvpermi.q	$xr8, $xr9, 48
	xvextrins.b	$xr9, $xr8, 170
	xvpickve2gr.d	$a3, $xr3, 3
	xvreplgr2vr.b	$xr3, $a3
	xvpermi.q	$xr3, $xr9, 48
	xvextrins.b	$xr9, $xr3, 187
	xvslt.du	$xr2, $xr2, $xr7
	xvpickve2gr.d	$a3, $xr2, 0
	xvreplgr2vr.b	$xr3, $a3
	xvpermi.q	$xr3, $xr9, 48
	xvextrins.b	$xr9, $xr3, 204
	xvpickve2gr.d	$a3, $xr2, 1
	xvreplgr2vr.b	$xr3, $a3
	xvpermi.q	$xr3, $xr9, 48
	xvextrins.b	$xr9, $xr3, 221
	xvpickve2gr.d	$a3, $xr2, 2
	xvreplgr2vr.b	$xr3, $a3
	xvpermi.q	$xr3, $xr9, 48
	xvextrins.b	$xr9, $xr3, 238
	xvpickve2gr.d	$a3, $xr2, 3
	xvreplgr2vr.b	$xr2, $a3
	xvpermi.q	$xr2, $xr9, 48
	xvinsgr2vr.d	$xr16, $t6, 0
	xvextrins.b	$xr9, $xr2, 255
	xvori.b	$xr11, $xr16, 0
	xvinsgr2vr.d	$xr11, $t0, 1
	xvinsgr2vr.d	$xr11, $t6, 2
	xvinsgr2vr.d	$xr11, $a1, 3
	xvori.b	$xr12, $xr16, 0
	xvinsgr2vr.d	$xr12, $a7, 1
	xvinsgr2vr.d	$xr12, $t6, 2
	xvinsgr2vr.d	$xr18, $t5, 0
	xvinsgr2vr.d	$xr12, $a0, 3
	xvori.b	$xr14, $xr18, 0
	xvinsgr2vr.d	$xr14, $a1, 1
	xvinsgr2vr.d	$xr14, $t6, 2
	xvinsgr2vr.d	$xr14, $t8, 3
	xvori.b	$xr17, $xr18, 0
	xvinsgr2vr.d	$xr17, $a0, 1
	xvinsgr2vr.d	$xr17, $t5, 2
	xvinsgr2vr.d	$xr17, $t0, 3
	xvinsgr2vr.d	$xr18, $t8, 1
	xvinsgr2vr.d	$xr18, $t5, 2
	xvinsgr2vr.d	$xr2, $t0, 0
	xvinsgr2vr.d	$xr18, $a7, 3
	xvori.b	$xr21, $xr2, 0
	xvinsgr2vr.d	$xr21, $t4, 1
	xvinsgr2vr.d	$xr21, $a1, 2
	xvinsgr2vr.d	$xr3, $a7, 0
	xvinsgr2vr.d	$xr21, $t6, 3
	xvori.b	$xr23, $xr3, 0
	xvinsgr2vr.d	$xr23, $t4, 1
	xvinsgr2vr.d	$xr23, $a0, 2
	xvinsgr2vr.d	$xr23, $t4, 3
	xvinsgr2vr.d	$xr16, $t4, 1
	xvinsgr2vr.d	$xr16, $t8, 2
	xvinsgr2vr.d	$xr7, $s7, 0
	xvinsgr2vr.d	$xr16, $t4, 3
	xvori.b	$xr13, $xr7, 0
	xvinsgr2vr.d	$xr13, $t3, 1
	xvinsgr2vr.d	$xr13, $a4, 2
	xvinsgr2vr.d	$xr8, $s8, 0
	xvinsgr2vr.d	$xr13, $t3, 3
	xvori.b	$xr15, $xr8, 0
	xvinsgr2vr.d	$xr15, $t3, 1
	xvinsgr2vr.d	$xr15, $s2, 2
	xvinsgr2vr.d	$xr15, $t3, 3
	xvinsgr2vr.d	$xr19, $a4, 0
	xvinsgr2vr.d	$xr19, $s5, 1
	xvinsgr2vr.d	$xr19, $s4, 2
	xvinsgr2vr.d	$xr19, $t3, 3
	xvinsgr2vr.d	$xr20, $s2, 0
	xvinsgr2vr.d	$xr20, $s5, 1
	xvinsgr2vr.d	$xr20, $s7, 2
	xvinsgr2vr.d	$xr10, $s4, 0
	xvinsgr2vr.d	$xr20, $s5, 3
	xvori.b	$xr22, $xr10, 0
	xvinsgr2vr.d	$xr22, $s5, 1
	xvinsgr2vr.d	$xr22, $s8, 2
	xvinsgr2vr.d	$xr25, $s0, 0
	xvinsgr2vr.d	$xr22, $s5, 3
	xvori.b	$xr24, $xr25, 0
	xvinsgr2vr.d	$xr24, $a4, 1
	xvinsgr2vr.d	$xr24, $s0, 2
	st.d	$s5, $sp, 544                   # 8-byte Folded Spill
	xvinsgr2vr.d	$xr24, $s5, 3
	xvori.b	$xr26, $xr25, 0
	xvinsgr2vr.d	$xr26, $s2, 1
	xvinsgr2vr.d	$xr26, $s0, 2
	xvinsgr2vr.d	$xr26, $s7, 3
	xvinsgr2vr.d	$xr25, $s4, 1
	st.d	$s0, $sp, 552                   # 8-byte Folded Spill
	xvinsgr2vr.d	$xr25, $s0, 2
	xvinsgr2vr.d	$xr25, $s8, 3
	xvslt.du	$xr25, $xr16, $xr25
	xvpickve2gr.d	$a3, $xr25, 0
	xvreplgr2vr.b	$xr16, $a3
	xvpermi.q	$xr16, $xr0, 18
	xvextrins.b	$xr16, $xr16, 0
	xvpickve2gr.d	$a3, $xr25, 1
	xvreplgr2vr.b	$xr27, $a3
	xvpermi.q	$xr27, $xr16, 18
	xvextrins.b	$xr16, $xr27, 17
	xvpickve2gr.d	$a3, $xr25, 2
	xvreplgr2vr.b	$xr27, $a3
	xvpermi.q	$xr27, $xr16, 18
	xvextrins.b	$xr16, $xr27, 34
	xvpickve2gr.d	$a3, $xr25, 3
	xvreplgr2vr.b	$xr25, $a3
	xvpermi.q	$xr25, $xr16, 18
	xvextrins.b	$xr16, $xr25, 51
	xvslt.du	$xr23, $xr23, $xr26
	xvpickve2gr.d	$a3, $xr23, 0
	xvreplgr2vr.b	$xr25, $a3
	xvpermi.q	$xr25, $xr16, 18
	xvextrins.b	$xr16, $xr25, 68
	xvpickve2gr.d	$a3, $xr23, 1
	xvreplgr2vr.b	$xr25, $a3
	xvpermi.q	$xr25, $xr16, 18
	xvextrins.b	$xr16, $xr25, 85
	xvpickve2gr.d	$a3, $xr23, 2
	xvreplgr2vr.b	$xr25, $a3
	xvpermi.q	$xr25, $xr16, 18
	xvextrins.b	$xr16, $xr25, 102
	xvpickve2gr.d	$a3, $xr23, 3
	xvreplgr2vr.b	$xr23, $a3
	xvpermi.q	$xr23, $xr16, 18
	xvextrins.b	$xr16, $xr23, 119
	xvslt.du	$xr21, $xr21, $xr24
	xvpickve2gr.d	$a3, $xr21, 0
	xvreplgr2vr.b	$xr23, $a3
	xvpermi.q	$xr23, $xr16, 18
	xvextrins.b	$xr16, $xr23, 136
	xvpickve2gr.d	$a3, $xr21, 1
	xvreplgr2vr.b	$xr23, $a3
	xvpermi.q	$xr23, $xr16, 18
	xvextrins.b	$xr16, $xr23, 153
	xvpickve2gr.d	$a3, $xr21, 2
	xvreplgr2vr.b	$xr23, $a3
	xvpermi.q	$xr23, $xr16, 18
	xvextrins.b	$xr16, $xr23, 170
	xvpickve2gr.d	$a3, $xr21, 3
	xvreplgr2vr.b	$xr21, $a3
	xvpermi.q	$xr21, $xr16, 18
	xvextrins.b	$xr16, $xr21, 187
	xvslt.du	$xr18, $xr18, $xr22
	xvpickve2gr.d	$a3, $xr18, 0
	xvreplgr2vr.b	$xr21, $a3
	xvpermi.q	$xr21, $xr16, 18
	xvextrins.b	$xr16, $xr21, 204
	xvpickve2gr.d	$a3, $xr18, 1
	xvreplgr2vr.b	$xr21, $a3
	xvpermi.q	$xr21, $xr16, 18
	xvextrins.b	$xr16, $xr21, 221
	xvpickve2gr.d	$a3, $xr18, 2
	xvreplgr2vr.b	$xr21, $a3
	xvpermi.q	$xr21, $xr16, 18
	xvextrins.b	$xr16, $xr21, 238
	xvpickve2gr.d	$a3, $xr18, 3
	xvreplgr2vr.b	$xr18, $a3
	xvpermi.q	$xr18, $xr16, 18
	xvextrins.b	$xr16, $xr18, 255
	xvslt.du	$xr17, $xr17, $xr20
	xvpickve2gr.d	$a3, $xr17, 0
	xvreplgr2vr.b	$xr18, $a3
	xvpermi.q	$xr18, $xr16, 48
	xvextrins.b	$xr16, $xr18, 0
	xvpickve2gr.d	$a3, $xr17, 1
	xvreplgr2vr.b	$xr18, $a3
	xvpermi.q	$xr18, $xr16, 48
	xvextrins.b	$xr16, $xr18, 17
	xvpickve2gr.d	$a3, $xr17, 2
	xvreplgr2vr.b	$xr18, $a3
	xvpermi.q	$xr18, $xr16, 48
	xvextrins.b	$xr16, $xr18, 34
	xvpickve2gr.d	$a3, $xr17, 3
	xvreplgr2vr.b	$xr17, $a3
	xvpermi.q	$xr17, $xr16, 48
	xvextrins.b	$xr16, $xr17, 51
	xvslt.du	$xr14, $xr14, $xr19
	xvpickve2gr.d	$a3, $xr14, 0
	xvreplgr2vr.b	$xr17, $a3
	xvpermi.q	$xr17, $xr16, 48
	xvextrins.b	$xr16, $xr17, 68
	xvpickve2gr.d	$a3, $xr14, 1
	xvreplgr2vr.b	$xr17, $a3
	xvpermi.q	$xr17, $xr16, 48
	xvextrins.b	$xr16, $xr17, 85
	xvpickve2gr.d	$a3, $xr14, 2
	xvreplgr2vr.b	$xr17, $a3
	xvpermi.q	$xr17, $xr16, 48
	xvextrins.b	$xr16, $xr17, 102
	xvpickve2gr.d	$a3, $xr14, 3
	xvreplgr2vr.b	$xr14, $a3
	xvpermi.q	$xr14, $xr16, 48
	xvextrins.b	$xr16, $xr14, 119
	xvslt.du	$xr12, $xr12, $xr15
	xvpickve2gr.d	$a3, $xr12, 0
	xvreplgr2vr.b	$xr14, $a3
	xvpermi.q	$xr14, $xr16, 48
	xvextrins.b	$xr16, $xr14, 136
	xvpickve2gr.d	$a3, $xr12, 1
	xvreplgr2vr.b	$xr14, $a3
	xvpermi.q	$xr14, $xr16, 48
	xvextrins.b	$xr16, $xr14, 153
	xvpickve2gr.d	$a3, $xr12, 2
	xvreplgr2vr.b	$xr14, $a3
	xvpermi.q	$xr14, $xr16, 48
	xvextrins.b	$xr16, $xr14, 170
	xvpickve2gr.d	$a3, $xr12, 3
	xvreplgr2vr.b	$xr12, $a3
	xvpermi.q	$xr12, $xr16, 48
	xvextrins.b	$xr16, $xr12, 187
	xvslt.du	$xr11, $xr11, $xr13
	xvpickve2gr.d	$a3, $xr11, 0
	xvreplgr2vr.b	$xr12, $a3
	xvpermi.q	$xr12, $xr16, 48
	xvextrins.b	$xr16, $xr12, 204
	xvpickve2gr.d	$a3, $xr11, 1
	xvreplgr2vr.b	$xr12, $a3
	xvpermi.q	$xr12, $xr16, 48
	xvextrins.b	$xr16, $xr12, 221
	xvpickve2gr.d	$a3, $xr11, 2
	xvreplgr2vr.b	$xr12, $a3
	xvpermi.q	$xr12, $xr16, 48
	xvextrins.b	$xr16, $xr12, 238
	xvpickve2gr.d	$a3, $xr11, 3
	xvreplgr2vr.b	$xr11, $a3
	xvpermi.q	$xr11, $xr16, 48
	xvextrins.b	$xr16, $xr11, 255
	xvand.v	$xr9, $xr9, $xr16
	xvori.b	$xr11, $xr3, 0
	xvinsgr2vr.d	$xr11, $a5, 1
	xvinsgr2vr.d	$xr11, $a2, 2
	xvinsgr2vr.d	$xr11, $a5, 3
	xvori.b	$xr12, $xr3, 0
	xvinsgr2vr.d	$xr12, $a2, 1
	xvinsgr2vr.d	$xr12, $a7, 2
	xvinsgr2vr.d	$xr12, $t1, 3
	xvori.b	$xr14, $xr6, 0
	xvinsgr2vr.d	$xr14, $t1, 1
	xvinsgr2vr.d	$xr14, $ra, 2
	xvinsgr2vr.d	$xr14, $a5, 3
	xvori.b	$xr16, $xr6, 0
	xvinsgr2vr.d	$xr16, $a5, 1
	xvinsgr2vr.d	$xr16, $ra, 2
	xvinsgr2vr.d	$xr16, $a2, 3
	xvori.b	$xr17, $xr5, 0
	xvinsgr2vr.d	$xr17, $t8, 1
	xvinsgr2vr.d	$xr17, $t1, 2
	xvinsgr2vr.d	$xr17, $t8, 3
	xvori.b	$xr19, $xr6, 0
	xvinsgr2vr.d	$xr19, $t8, 1
	xvinsgr2vr.d	$xr19, $a5, 2
	xvinsgr2vr.d	$xr19, $t8, 3
	xvinsgr2vr.d	$xr5, $t7, 1
	xvinsgr2vr.d	$xr5, $t1, 2
	xvinsgr2vr.d	$xr5, $t7, 3
	xvinsgr2vr.d	$xr6, $t7, 1
	xvinsgr2vr.d	$xr6, $a5, 2
	xvinsgr2vr.d	$xr6, $t7, 3
	xvinsgr2vr.d	$xr13, $fp, 0
	xvinsgr2vr.d	$xr13, $s1, 1
	xvinsgr2vr.d	$xr13, $s2, 2
	xvinsgr2vr.d	$xr13, $t2, 3
	xvinsgr2vr.d	$xr15, $s1, 0
	xvinsgr2vr.d	$xr15, $s3, 1
	xvinsgr2vr.d	$xr15, $t2, 2
	xvinsgr2vr.d	$xr15, $s3, 3
	xvinsgr2vr.d	$xr4, $s8, 1
	xvinsgr2vr.d	$xr4, $fp, 2
	xvinsgr2vr.d	$xr4, $s3, 3
	xvori.b	$xr18, $xr0, 0
	xvinsgr2vr.d	$xr18, $s8, 1
	xvinsgr2vr.d	$xr18, $s1, 2
	xvinsgr2vr.d	$xr21, $s6, 0
	xvinsgr2vr.d	$xr18, $s8, 3
	xvori.b	$xr20, $xr21, 0
	xvinsgr2vr.d	$xr20, $t2, 1
	xvinsgr2vr.d	$xr20, $s6, 2
	xvinsgr2vr.d	$xr20, $fp, 3
	xvinsgr2vr.d	$xr21, $s3, 1
	xvinsgr2vr.d	$xr21, $s6, 2
	xvinsgr2vr.d	$xr21, $s1, 3
	xvori.b	$xr22, $xr10, 0
	st.d	$t2, $sp, 536                   # 8-byte Folded Spill
	xvinsgr2vr.d	$xr22, $t2, 1
	xvinsgr2vr.d	$xr22, $s4, 2
	st.d	$fp, $sp, 624                   # 8-byte Folded Spill
	xvinsgr2vr.d	$xr22, $fp, 3
	xvinsgr2vr.d	$xr10, $s3, 1
	xvinsgr2vr.d	$xr10, $s4, 2
	xvinsgr2vr.d	$xr10, $s1, 3
	xvslt.du	$xr10, $xr6, $xr10
	xvpickve2gr.d	$a3, $xr10, 0
	xvreplgr2vr.b	$xr6, $a3
	xvpermi.q	$xr6, $xr0, 18
	xvextrins.b	$xr6, $xr6, 0
	xvpickve2gr.d	$a3, $xr10, 1
	xvreplgr2vr.b	$xr23, $a3
	xvpermi.q	$xr23, $xr6, 18
	xvextrins.b	$xr6, $xr23, 17
	xvpickve2gr.d	$a3, $xr10, 2
	xvreplgr2vr.b	$xr23, $a3
	xvpermi.q	$xr23, $xr6, 18
	xvextrins.b	$xr6, $xr23, 34
	xvpickve2gr.d	$a3, $xr10, 3
	xvreplgr2vr.b	$xr10, $a3
	xvpermi.q	$xr10, $xr6, 18
	xvextrins.b	$xr6, $xr10, 51
	xvslt.du	$xr5, $xr5, $xr22
	xvpickve2gr.d	$a3, $xr5, 0
	xvreplgr2vr.b	$xr10, $a3
	xvpermi.q	$xr10, $xr6, 18
	xvextrins.b	$xr6, $xr10, 68
	xvpickve2gr.d	$a3, $xr5, 1
	xvreplgr2vr.b	$xr10, $a3
	xvpermi.q	$xr10, $xr6, 18
	xvextrins.b	$xr6, $xr10, 85
	xvpickve2gr.d	$a3, $xr5, 2
	xvreplgr2vr.b	$xr10, $a3
	xvpermi.q	$xr10, $xr6, 18
	xvextrins.b	$xr6, $xr10, 102
	xvpickve2gr.d	$a3, $xr5, 3
	xvreplgr2vr.b	$xr5, $a3
	xvpermi.q	$xr5, $xr6, 18
	xvextrins.b	$xr6, $xr5, 119
	xvslt.du	$xr5, $xr19, $xr21
	xvpickve2gr.d	$a3, $xr5, 0
	xvreplgr2vr.b	$xr10, $a3
	xvpermi.q	$xr10, $xr6, 18
	xvextrins.b	$xr6, $xr10, 136
	xvpickve2gr.d	$a3, $xr5, 1
	xvreplgr2vr.b	$xr10, $a3
	xvpermi.q	$xr10, $xr6, 18
	xvextrins.b	$xr6, $xr10, 153
	xvpickve2gr.d	$a3, $xr5, 2
	xvreplgr2vr.b	$xr10, $a3
	xvpermi.q	$xr10, $xr6, 18
	xvextrins.b	$xr6, $xr10, 170
	xvpickve2gr.d	$a3, $xr5, 3
	xvreplgr2vr.b	$xr5, $a3
	xvpermi.q	$xr5, $xr6, 18
	xvextrins.b	$xr6, $xr5, 187
	xvslt.du	$xr5, $xr17, $xr20
	xvpickve2gr.d	$a3, $xr5, 0
	xvreplgr2vr.b	$xr10, $a3
	xvpermi.q	$xr10, $xr6, 18
	xvextrins.b	$xr6, $xr10, 204
	xvpickve2gr.d	$a3, $xr5, 1
	xvreplgr2vr.b	$xr10, $a3
	xvpermi.q	$xr10, $xr6, 18
	xvextrins.b	$xr6, $xr10, 221
	xvpickve2gr.d	$a3, $xr5, 2
	xvreplgr2vr.b	$xr10, $a3
	xvpermi.q	$xr10, $xr6, 18
	xvextrins.b	$xr6, $xr10, 238
	xvpickve2gr.d	$a3, $xr5, 3
	xvreplgr2vr.b	$xr5, $a3
	xvpermi.q	$xr5, $xr6, 18
	xvextrins.b	$xr6, $xr5, 255
	xvslt.du	$xr5, $xr16, $xr18
	xvpickve2gr.d	$a3, $xr5, 0
	xvreplgr2vr.b	$xr10, $a3
	xvpermi.q	$xr10, $xr6, 48
	xvextrins.b	$xr6, $xr10, 0
	xvpickve2gr.d	$a3, $xr5, 1
	xvreplgr2vr.b	$xr10, $a3
	xvpermi.q	$xr10, $xr6, 48
	xvextrins.b	$xr6, $xr10, 17
	xvpickve2gr.d	$a3, $xr5, 2
	xvreplgr2vr.b	$xr10, $a3
	xvpermi.q	$xr10, $xr6, 48
	xvextrins.b	$xr6, $xr10, 34
	xvpickve2gr.d	$a3, $xr5, 3
	xvreplgr2vr.b	$xr5, $a3
	xvpermi.q	$xr5, $xr6, 48
	xvextrins.b	$xr6, $xr5, 51
	xvslt.du	$xr4, $xr14, $xr4
	xvpickve2gr.d	$a3, $xr4, 0
	xvreplgr2vr.b	$xr5, $a3
	xvpermi.q	$xr5, $xr6, 48
	xvextrins.b	$xr6, $xr5, 68
	xvpickve2gr.d	$a3, $xr4, 1
	xvreplgr2vr.b	$xr5, $a3
	xvpermi.q	$xr5, $xr6, 48
	xvextrins.b	$xr6, $xr5, 85
	xvpickve2gr.d	$a3, $xr4, 2
	xvreplgr2vr.b	$xr5, $a3
	xvpermi.q	$xr5, $xr6, 48
	xvextrins.b	$xr6, $xr5, 102
	xvpickve2gr.d	$a3, $xr4, 3
	xvreplgr2vr.b	$xr4, $a3
	xvpermi.q	$xr4, $xr6, 48
	xvextrins.b	$xr6, $xr4, 119
	xvslt.du	$xr4, $xr12, $xr15
	xvpickve2gr.d	$a3, $xr4, 0
	xvreplgr2vr.b	$xr5, $a3
	xvpermi.q	$xr5, $xr6, 48
	xvextrins.b	$xr6, $xr5, 136
	xvpickve2gr.d	$a3, $xr4, 1
	xvreplgr2vr.b	$xr5, $a3
	xvpermi.q	$xr5, $xr6, 48
	xvextrins.b	$xr6, $xr5, 153
	xvpickve2gr.d	$a3, $xr4, 2
	xvreplgr2vr.b	$xr5, $a3
	xvpermi.q	$xr5, $xr6, 48
	xvextrins.b	$xr6, $xr5, 170
	xvpickve2gr.d	$a3, $xr4, 3
	xvreplgr2vr.b	$xr4, $a3
	xvpermi.q	$xr4, $xr6, 48
	xvextrins.b	$xr6, $xr4, 187
	xvslt.du	$xr4, $xr11, $xr13
	xvpickve2gr.d	$a3, $xr4, 0
	xvreplgr2vr.b	$xr5, $a3
	xvpermi.q	$xr5, $xr6, 48
	xvextrins.b	$xr6, $xr5, 204
	xvpickve2gr.d	$a3, $xr4, 1
	xvreplgr2vr.b	$xr5, $a3
	xvpermi.q	$xr5, $xr6, 48
	xvextrins.b	$xr6, $xr5, 221
	xvpickve2gr.d	$a3, $xr4, 2
	xvreplgr2vr.b	$xr5, $a3
	xvpermi.q	$xr5, $xr6, 48
	xvextrins.b	$xr6, $xr5, 238
	xvpickve2gr.d	$a3, $xr4, 3
	xvreplgr2vr.b	$xr4, $a3
	xvpermi.q	$xr4, $xr6, 48
	xvextrins.b	$xr6, $xr4, 255
	xvinsgr2vr.d	$xr4, $a1, 0
	xvinsgr2vr.d	$xr4, $a0, 1
	xvinsgr2vr.d	$xr4, $a5, 2
	xvinsgr2vr.d	$xr4, $t0, 3
	xvinsgr2vr.d	$xr5, $a0, 0
	xvinsgr2vr.d	$xr5, $a7, 1
	xvinsgr2vr.d	$xr5, $t0, 2
	xvinsgr2vr.d	$xr5, $a7, 3
	xvinsgr2vr.d	$xr2, $ra, 1
	xvinsgr2vr.d	$xr2, $a1, 2
	xvinsgr2vr.d	$xr2, $a7, 3
	xvinsgr2vr.d	$xr3, $ra, 1
	xvinsgr2vr.d	$xr3, $a0, 2
	xvinsgr2vr.d	$xr14, $t8, 0
	xvinsgr2vr.d	$xr3, $ra, 3
	xvori.b	$xr12, $xr14, 0
	xvinsgr2vr.d	$xr12, $t0, 1
	xvinsgr2vr.d	$xr12, $t8, 2
	xvinsgr2vr.d	$xr12, $a1, 3
	xvinsgr2vr.d	$xr14, $a7, 1
	xvinsgr2vr.d	$xr14, $t8, 2
	xvinsgr2vr.d	$xr14, $a0, 3
	xvori.b	$xr16, $xr1, 0
	xvinsgr2vr.d	$xr16, $t0, 1
	xvinsgr2vr.d	$xr16, $t7, 2
	xvinsgr2vr.d	$xr16, $a1, 3
	xvinsgr2vr.d	$xr1, $a7, 1
	xvinsgr2vr.d	$xr1, $t7, 2
	xvinsgr2vr.d	$xr1, $a0, 3
	xvori.b	$xr10, $xr0, 0
	xvinsgr2vr.d	$xr10, $s2, 1
	xvinsgr2vr.d	$xr10, $s7, 2
	xvinsgr2vr.d	$xr10, $s2, 3
	xvinsgr2vr.d	$xr0, $s7, 1
	st.d	$s3, $sp, 520                   # 8-byte Folded Spill
	xvinsgr2vr.d	$xr0, $s3, 2
	xvinsgr2vr.d	$xr0, $a4, 3
	xvori.b	$xr11, $xr8, 0
	xvinsgr2vr.d	$xr11, $a4, 1
	xvinsgr2vr.d	$xr11, $s8, 2
	xvinsgr2vr.d	$xr11, $s2, 3
	xvori.b	$xr13, $xr8, 0
	xvinsgr2vr.d	$xr13, $s2, 1
	st.d	$s8, $sp, 528                   # 8-byte Folded Spill
	xvinsgr2vr.d	$xr13, $s8, 2
	ld.d	$fp, $sp, 464                   # 8-byte Folded Reload
	xvinsgr2vr.d	$xr13, $s7, 3
	xvori.b	$xr15, $xr7, 0
	xvinsgr2vr.d	$xr15, $s6, 1
	xvinsgr2vr.d	$xr15, $a4, 2
	xvinsgr2vr.d	$xr15, $s6, 3
	xvori.b	$xr17, $xr8, 0
	xvinsgr2vr.d	$xr17, $s6, 1
	xvinsgr2vr.d	$xr17, $s2, 2
	xvinsgr2vr.d	$xr17, $s6, 3
	xvinsgr2vr.d	$xr7, $s4, 1
	xvinsgr2vr.d	$xr7, $a4, 2
	xvinsgr2vr.d	$xr7, $s4, 3
	xvinsgr2vr.d	$xr8, $s4, 1
	xvinsgr2vr.d	$xr8, $s2, 2
	xvinsgr2vr.d	$xr8, $s4, 3
	xvslt.du	$xr8, $xr1, $xr8
	xvpickve2gr.d	$a3, $xr8, 0
	xvreplgr2vr.b	$xr1, $a3
	xvpermi.q	$xr1, $xr0, 18
	xvextrins.b	$xr1, $xr1, 0
	xvpickve2gr.d	$a3, $xr8, 1
	xvreplgr2vr.b	$xr18, $a3
	xvpermi.q	$xr18, $xr1, 18
	xvextrins.b	$xr1, $xr18, 17
	xvpickve2gr.d	$a3, $xr8, 2
	xvreplgr2vr.b	$xr18, $a3
	xvpermi.q	$xr18, $xr1, 18
	xvextrins.b	$xr1, $xr18, 34
	xvpickve2gr.d	$a3, $xr8, 3
	xvreplgr2vr.b	$xr8, $a3
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 51
	xvslt.du	$xr7, $xr16, $xr7
	xvpickve2gr.d	$a3, $xr7, 0
	xvreplgr2vr.b	$xr8, $a3
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 68
	xvpickve2gr.d	$a3, $xr7, 1
	xvreplgr2vr.b	$xr8, $a3
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 85
	xvpickve2gr.d	$a3, $xr7, 2
	xvreplgr2vr.b	$xr8, $a3
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 102
	xvpickve2gr.d	$a3, $xr7, 3
	xvreplgr2vr.b	$xr7, $a3
	xvpermi.q	$xr7, $xr1, 18
	xvextrins.b	$xr1, $xr7, 119
	xvslt.du	$xr7, $xr14, $xr17
	xvpickve2gr.d	$a3, $xr7, 0
	xvreplgr2vr.b	$xr8, $a3
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 136
	xvpickve2gr.d	$a3, $xr7, 1
	xvreplgr2vr.b	$xr8, $a3
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 153
	xvpickve2gr.d	$a3, $xr7, 2
	xvreplgr2vr.b	$xr8, $a3
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 170
	xvpickve2gr.d	$a3, $xr7, 3
	xvreplgr2vr.b	$xr7, $a3
	xvpermi.q	$xr7, $xr1, 18
	xvextrins.b	$xr1, $xr7, 187
	xvslt.du	$xr7, $xr12, $xr15
	xvpickve2gr.d	$a3, $xr7, 0
	xvreplgr2vr.b	$xr8, $a3
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 204
	xvpickve2gr.d	$a3, $xr7, 1
	xvreplgr2vr.b	$xr8, $a3
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 221
	xvpickve2gr.d	$a3, $xr7, 2
	xvreplgr2vr.b	$xr8, $a3
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 238
	xvpickve2gr.d	$a3, $xr7, 3
	xvreplgr2vr.b	$xr7, $a3
	xvpermi.q	$xr7, $xr1, 18
	xvextrins.b	$xr1, $xr7, 255
	xvslt.du	$xr3, $xr3, $xr13
	xvpickve2gr.d	$a3, $xr3, 0
	xvreplgr2vr.b	$xr7, $a3
	xvpermi.q	$xr7, $xr1, 48
	xvextrins.b	$xr1, $xr7, 0
	xvpickve2gr.d	$a3, $xr3, 1
	xvreplgr2vr.b	$xr7, $a3
	xvpermi.q	$xr7, $xr1, 48
	xvextrins.b	$xr1, $xr7, 17
	xvpickve2gr.d	$a3, $xr3, 2
	xvreplgr2vr.b	$xr7, $a3
	xvpermi.q	$xr7, $xr1, 48
	xvextrins.b	$xr1, $xr7, 34
	xvpickve2gr.d	$a3, $xr3, 3
	xvreplgr2vr.b	$xr3, $a3
	xvpermi.q	$xr3, $xr1, 48
	xvextrins.b	$xr1, $xr3, 51
	xvslt.du	$xr2, $xr2, $xr11
	xvpickve2gr.d	$a3, $xr2, 0
	xvreplgr2vr.b	$xr3, $a3
	xvpermi.q	$xr3, $xr1, 48
	xvextrins.b	$xr1, $xr3, 68
	xvpickve2gr.d	$a3, $xr2, 1
	xvreplgr2vr.b	$xr3, $a3
	xvpermi.q	$xr3, $xr1, 48
	xvextrins.b	$xr1, $xr3, 85
	xvpickve2gr.d	$a3, $xr2, 2
	xvreplgr2vr.b	$xr3, $a3
	xvpermi.q	$xr3, $xr1, 48
	xvextrins.b	$xr1, $xr3, 102
	xvpickve2gr.d	$a3, $xr2, 3
	xvreplgr2vr.b	$xr2, $a3
	xvpermi.q	$xr2, $xr1, 48
	xvextrins.b	$xr1, $xr2, 119
	xvslt.du	$xr0, $xr5, $xr0
	xvpickve2gr.d	$a3, $xr0, 0
	xvreplgr2vr.b	$xr2, $a3
	xvpermi.q	$xr2, $xr1, 48
	xvextrins.b	$xr1, $xr2, 136
	xvpickve2gr.d	$a3, $xr0, 1
	xvreplgr2vr.b	$xr2, $a3
	xvpermi.q	$xr2, $xr1, 48
	xvextrins.b	$xr1, $xr2, 153
	xvpickve2gr.d	$a3, $xr0, 2
	xvreplgr2vr.b	$xr2, $a3
	xvpermi.q	$xr2, $xr1, 48
	xvextrins.b	$xr1, $xr2, 170
	xvpickve2gr.d	$a3, $xr0, 3
	xvreplgr2vr.b	$xr0, $a3
	xvpermi.q	$xr0, $xr1, 48
	xvextrins.b	$xr1, $xr0, 187
	xvslt.du	$xr0, $xr4, $xr10
	xvpickve2gr.d	$a3, $xr0, 0
	xvreplgr2vr.b	$xr2, $a3
	xvpermi.q	$xr2, $xr1, 48
	xvextrins.b	$xr1, $xr2, 204
	xvpickve2gr.d	$a3, $xr0, 1
	xvreplgr2vr.b	$xr2, $a3
	xvpermi.q	$xr2, $xr1, 48
	xvextrins.b	$xr1, $xr2, 221
	xvpickve2gr.d	$a3, $xr0, 2
	xvreplgr2vr.b	$xr2, $a3
	xvpermi.q	$xr2, $xr1, 48
	xvextrins.b	$xr1, $xr2, 238
	xvpickve2gr.d	$a3, $xr0, 3
	xvreplgr2vr.b	$xr0, $a3
	xvpermi.q	$xr0, $xr1, 48
	xvextrins.b	$xr1, $xr0, 255
	xvand.v	$xr0, $xr6, $xr1
	xvor.v	$xr0, $xr9, $xr0
	xvslli.b	$xr0, $xr0, 7
	xvmskltz.b	$xr0, $xr0
	xvpickve2gr.wu	$a3, $xr0, 0
	xvpickve2gr.wu	$t2, $xr0, 4
	bstrins.d	$a3, $t2, 31, 16
	addi.w	$t2, $a3, 0
	move	$a3, $zero
	bnez	$t2, .LBB4_75
# %bb.17:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	move	$s5, $s7
	move	$s3, $s4
	ld.d	$t2, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$s0, $a6, $t2, 3
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$s7, $a6, $t2, 3
	ld.d	$t2, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$t2, $a6, $t2, 3
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$s8, $a6, $fp, 3
	sltu	$s4, $s0, $s8
	sltu	$fp, $t2, $s7
	and	$fp, $s4, $fp
	bnez	$fp, .LBB4_64
# %bb.18:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$fp, $sp, 552                   # 8-byte Folded Reload
	sltu	$fp, $s0, $fp
	sltu	$s4, $t4, $s7
	and	$fp, $fp, $s4
	bnez	$fp, .LBB4_64
# %bb.19:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$fp, $sp, 544                   # 8-byte Folded Reload
	sltu	$fp, $s0, $fp
	sltu	$s4, $t5, $s7
	and	$fp, $fp, $s4
	bnez	$fp, .LBB4_64
# %bb.20:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$fp, $s0, $t3
	sltu	$s4, $t6, $s7
	and	$fp, $fp, $s4
	bnez	$fp, .LBB4_64
# %bb.21:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$fp, $s0, $s3
	sltu	$s4, $t7, $s7
	and	$fp, $fp, $s4
	bnez	$fp, .LBB4_64
# %bb.22:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$fp, $s0, $s6
	sltu	$s4, $t8, $s7
	and	$fp, $fp, $s4
	bnez	$fp, .LBB4_64
# %bb.23:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$fp, $sp, 528                   # 8-byte Folded Reload
	sltu	$fp, $s0, $fp
	sltu	$s4, $ra, $s7
	and	$fp, $fp, $s4
	bnez	$fp, .LBB4_64
# %bb.24:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$fp, $sp, 520                   # 8-byte Folded Reload
	sltu	$fp, $s0, $fp
	sltu	$s4, $a7, $s7
	and	$fp, $fp, $s4
	bnez	$fp, .LBB4_64
# %bb.25:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$fp, $s0, $s2
	sltu	$s4, $a5, $s7
	and	$fp, $fp, $s4
	bnez	$fp, .LBB4_64
# %bb.26:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$fp, $s0, $s1
	sltu	$s4, $a0, $s7
	and	$fp, $fp, $s4
	bnez	$fp, .LBB4_64
# %bb.27:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$fp, $s0, $s5
	sltu	$s4, $a2, $s7
	and	$fp, $fp, $s4
	bnez	$fp, .LBB4_64
# %bb.28:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$fp, $sp, 536                   # 8-byte Folded Reload
	sltu	$fp, $s0, $fp
	sltu	$s4, $t0, $s7
	and	$fp, $fp, $s4
	bnez	$fp, .LBB4_64
# %bb.29:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$fp, $s0, $a4
	sltu	$s4, $t1, $s7
	and	$fp, $fp, $s4
	bnez	$fp, .LBB4_64
# %bb.30:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$fp, $sp, 624                   # 8-byte Folded Reload
	sltu	$fp, $s0, $fp
	sltu	$s4, $a1, $s7
	and	$fp, $fp, $s4
	bnez	$fp, .LBB4_64
# %bb.31:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$fp, $sp, 552                   # 8-byte Folded Reload
	sltu	$fp, $t2, $fp
	sltu	$s4, $t4, $s8
	and	$fp, $fp, $s4
	bnez	$fp, .LBB4_71
# %bb.32:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$fp, $sp, 544                   # 8-byte Folded Reload
	sltu	$fp, $t2, $fp
	sltu	$s4, $t5, $s8
	and	$fp, $fp, $s4
	bnez	$fp, .LBB4_71
# %bb.33:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $t2, $t3
	sltu	$fp, $t6, $s8
	and	$t3, $t3, $fp
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	bnez	$t3, .LBB4_65
# %bb.34:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $t2, $s3
	sltu	$fp, $t7, $s8
	and	$t3, $t3, $fp
	bnez	$t3, .LBB4_65
# %bb.35:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $t2, $s6
	sltu	$fp, $t8, $s8
	and	$t3, $t3, $fp
	bnez	$t3, .LBB4_65
# %bb.36:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$t3, $sp, 528                   # 8-byte Folded Reload
	sltu	$t3, $t2, $t3
	sltu	$fp, $ra, $s8
	and	$t3, $t3, $fp
	bnez	$t3, .LBB4_65
# %bb.37:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$t3, $sp, 520                   # 8-byte Folded Reload
	sltu	$t3, $t2, $t3
	sltu	$fp, $a7, $s8
	and	$t3, $t3, $fp
	bnez	$t3, .LBB4_65
# %bb.38:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $t2, $s2
	sltu	$fp, $a5, $s8
	and	$t3, $t3, $fp
	bnez	$t3, .LBB4_65
# %bb.39:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $t2, $s1
	sltu	$fp, $a0, $s8
	and	$t3, $t3, $fp
	bnez	$t3, .LBB4_65
# %bb.40:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $t2, $s5
	sltu	$fp, $a2, $s8
	and	$t3, $t3, $fp
	bnez	$t3, .LBB4_65
# %bb.41:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$t3, $sp, 536                   # 8-byte Folded Reload
	sltu	$t3, $t2, $t3
	sltu	$fp, $t0, $s8
	and	$t3, $t3, $fp
	bnez	$t3, .LBB4_65
# %bb.42:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $t2, $a4
	sltu	$fp, $t1, $s8
	and	$t3, $t3, $fp
	bnez	$t3, .LBB4_65
# %bb.43:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$t3, $sp, 624                   # 8-byte Folded Reload
	sltu	$t3, $t2, $t3
	sltu	$fp, $a1, $s8
	and	$t3, $t3, $fp
	bnez	$t3, .LBB4_65
# %bb.44:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$t3, $sp, 544                   # 8-byte Folded Reload
	sltu	$t3, $t4, $t3
	ld.d	$fp, $sp, 552                   # 8-byte Folded Reload
	sltu	$fp, $t5, $fp
	and	$t3, $t3, $fp
	ld.d	$s8, $sp, 416                   # 8-byte Folded Reload
	bnez	$t3, .LBB4_66
# %bb.45:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $t7, $s6
	sltu	$fp, $t8, $s3
	and	$t3, $t3, $fp
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	bnez	$t3, .LBB4_73
# %bb.46:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $a5, $a4
	sltu	$fp, $t1, $s2
	and	$t3, $t3, $fp
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	bnez	$t3, .LBB4_72
# %bb.47:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$t3, $sp, 624                   # 8-byte Folded Reload
	sltu	$t3, $a5, $t3
	sltu	$fp, $a1, $s2
	and	$t3, $t3, $fp
	bnez	$t3, .LBB4_72
# %bb.48:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $a0, $s5
	sltu	$fp, $a2, $s1
	and	$t3, $t3, $fp
	ld.d	$s2, $sp, 288                   # 8-byte Folded Reload
	bnez	$t3, .LBB4_62
# %bb.49:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s3, $sp, 536                   # 8-byte Folded Reload
	sltu	$t3, $a0, $s3
	sltu	$fp, $t0, $s1
	and	$t3, $t3, $fp
	bnez	$t3, .LBB4_62
# %bb.50:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $a0, $a4
	sltu	$fp, $t1, $s1
	and	$t3, $t3, $fp
	bnez	$t3, .LBB4_62
# %bb.51:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$t3, $sp, 624                   # 8-byte Folded Reload
	sltu	$t3, $a0, $t3
	sltu	$fp, $a1, $s1
	and	$t3, $t3, $fp
	bnez	$t3, .LBB4_62
# %bb.52:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $a2, $s3
	sltu	$fp, $t0, $s5
	and	$t3, $t3, $fp
	bnez	$t3, .LBB4_62
# %bb.53:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $a2, $a4
	sltu	$fp, $t1, $s5
	and	$t3, $t3, $fp
	bnez	$t3, .LBB4_62
# %bb.54:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s1, $sp, 624                   # 8-byte Folded Reload
	sltu	$t3, $a2, $s1
	sltu	$fp, $a1, $s5
	and	$t3, $t3, $fp
	bnez	$t3, .LBB4_62
# %bb.55:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $t0, $a4
	sltu	$fp, $t1, $s3
	and	$t3, $t3, $fp
	ld.d	$s5, $sp, 464                   # 8-byte Folded Reload
	bnez	$t3, .LBB4_61
# %bb.56:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $t0, $s1
	sltu	$fp, $a1, $s3
	and	$t3, $t3, $fp
	bnez	$t3, .LBB4_61
# %bb.57:                               # %vector.memcheck874
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $t1, $s1
	sltu	$a4, $a1, $a4
	and	$a4, $t3, $a4
	bnez	$a4, .LBB4_61
# %bb.58:                               # %vector.ph1356
                                        #   in Loop: Header=BB4_14 Depth=3
	move	$a3, $zero
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	add.d	$a6, $a4, $a6
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_59:                               # %vector.body1359
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_11 Depth=2
                                        #       Parent Loop BB4_14 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvldx	$xr0, $t2, $a3
	xvldx	$xr1, $t4, $a3
	xvldx	$xr2, $s0, $a3
	xvfadd.d	$xr0, $xr0, $xr1
	xvldx	$xr1, $t6, $a3
	xvldx	$xr3, $t7, $a3
	xvfadd.d	$xr0, $xr2, $xr0
	xvstx	$xr0, $s0, $a3
	xvldx	$xr0, $t5, $a3
	xvfadd.d	$xr1, $xr1, $xr3
	xvldx	$xr2, $ra, $a3
	xvldx	$xr3, $a7, $a3
	xvfadd.d	$xr0, $xr0, $xr1
	xvstx	$xr0, $t5, $a3
	xvldx	$xr0, $t8, $a3
	xvfadd.d	$xr1, $xr2, $xr3
	xvldx	$xr2, $a0, $a3
	xvldx	$xr3, $a2, $a3
	xvfadd.d	$xr0, $xr0, $xr1
	xvstx	$xr0, $t8, $a3
	xvldx	$xr0, $a5, $a3
	xvfadd.d	$xr1, $xr2, $xr3
	xvstx	$xr28, $t2, $a3
	xvstx	$xr28, $t4, $a3
	xvfadd.d	$xr0, $xr0, $xr1
	xvstx	$xr0, $a5, $a3
	xvldx	$xr0, $t1, $a3
	xvldx	$xr1, $a1, $a3
	xvstx	$xr28, $t6, $a3
	xvstx	$xr28, $t7, $a3
	xvstx	$xr28, $ra, $a3
	xvfadd.d	$xr0, $xr0, $xr1
	xvldx	$xr1, $t0, $a3
	xvstx	$xr28, $a7, $a3
	xvstx	$xr28, $a0, $a3
	xvstx	$xr28, $a2, $a3
	xvfadd.d	$xr0, $xr1, $xr0
	xvstx	$xr0, $t0, $a3
	xvstx	$xr28, $t1, $a3
	xvstx	$xr28, $a1, $a3
	addi.d	$a3, $a3, 32
	bne	$a4, $a3, .LBB4_59
# %bb.60:                               # %middle.block1378
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	move	$a3, $a1
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB4_13
	b	.LBB4_69
.LBB4_61:                               #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 272                   # 8-byte Folded Reload
	b	.LBB4_69
.LBB4_62:                               #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 296                   # 8-byte Folded Reload
.LBB4_63:                               # %scalar.ph1354.preheader
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 272                   # 8-byte Folded Reload
	b	.LBB4_68
.LBB4_64:                               #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s8, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	b	.LBB4_69
.LBB4_65:                               #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s8, $sp, 416                   # 8-byte Folded Reload
.LBB4_66:                               #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
.LBB4_67:                               # %scalar.ph1354.preheader
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
.LBB4_68:                               # %scalar.ph1354.preheader
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s5, $sp, 464                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_69:                               # %scalar.ph1354.preheader
                                        #   in Loop: Header=BB4_14 Depth=3
	slli.d	$a0, $a6, 3
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a3
	ld.d	$a2, $sp, 504                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 512                   # 8-byte Folded Reload
	move	$a5, $s2
	ld.d	$a7, $sp, 488                   # 8-byte Folded Reload
	move	$t0, $s5
	move	$t1, $s1
	ld.d	$t2, $sp, 496                   # 8-byte Folded Reload
	move	$t3, $s7
	move	$t4, $s6
	move	$t5, $ra
	move	$t6, $s0
	ld.d	$t7, $sp, 472                   # 8-byte Folded Reload
	move	$t8, $s3
	move	$fp, $s8
	.p2align	4, , 16
.LBB4_70:                               # %scalar.ph1354
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_11 Depth=2
                                        #       Parent Loop BB4_14 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $fp, $a0
	fldx.d	$fa1, $t8, $a0
	fldx.d	$fa2, $t7, $a0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t7, $a0
	stx.d	$zero, $fp, $a0
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
	addi.d	$fp, $fp, 8
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
	bnez	$a1, .LBB4_70
	b	.LBB4_13
.LBB4_71:                               #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s8, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	b	.LBB4_67
.LBB4_72:                               #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	b	.LBB4_74
.LBB4_73:                               #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
.LBB4_74:                               # %scalar.ph1354.preheader
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 288                   # 8-byte Folded Reload
	b	.LBB4_63
.LBB4_75:                               #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	move	$s5, $fp
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	b	.LBB4_69
	.p2align	4, , 16
.LBB4_76:                               # %.critedge
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ori	$a1, $zero, 27
	bne	$a0, $a1, .LBB4_3
# %bb.77:                               #   in Loop: Header=BB4_4 Depth=1
	addi.d	$a1, $sp, 656
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	xvst	$xr28, $sp, 416                 # 32-byte Folded Spill
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ori	$t4, $zero, 1
	ld.w	$a0, $sp, 664
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	blt	$a0, $t4, .LBB4_3
# %bb.78:                               # %.preheader486.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.w	$a1, $sp, 660
	blt	$a1, $t4, .LBB4_3
# %bb.79:                               # %.preheader486.us.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$t3, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $t3, 4
	ld.w	$a2, $t3, 16
	move	$t5, $zero
	ld.wu	$a3, $sp, 656
	ld.w	$a5, $t3, 0
	sub.w	$a2, $a2, $a0
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	slt	$a4, $a7, $a2
	maskeqz	$a2, $a2, $a4
	ld.w	$a6, $t3, 12
	masknez	$a4, $a7, $a4
	or	$a2, $a2, $a4
	addi.d	$a2, $a2, 1
	sub.w	$a4, $a6, $a5
	slt	$a6, $a7, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $a7, $a6
	or	$a4, $a4, $a6
	addi.d	$a7, $a4, 1
	sub.d	$a4, $a7, $a3
	sub.d	$a6, $a2, $a1
	ld.d	$t2, $sp, 72                    # 8-byte Folded Reload
	ld.w	$t0, $t2, 0
	ld.w	$t1, $t2, 4
	ld.w	$t2, $t2, 8
	ld.w	$t3, $t3, 8
	mulw.d.w	$a6, $a7, $a6
	st.d	$a6, $sp, 296                   # 8-byte Folded Spill
	sub.d	$a5, $t0, $a5
	sub.d	$a0, $t1, $a0
	sub.d	$a6, $t2, $t3
	mul.d	$a2, $a2, $a6
	add.d	$a0, $a0, $a2
	mul.d	$a0, $a0, $a7
	add.w	$a6, $a5, $a0
	addi.d	$a0, $a1, -1
	mul.d	$a0, $a4, $a0
	add.d	$a0, $a7, $a0
	sub.d	$a0, $a0, $a3
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	addi.d	$a0, $a3, -1
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 552                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 544                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 536                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 528                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 520                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 512                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 504                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 496                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 488                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 480                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 472                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a2, 3
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a3, 30, 2
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	slli.d	$a0, $a3, 3
	bstrpick.d	$a0, $a0, 33, 5
	slli.d	$s3, $a0, 5
	b	.LBB4_82
	.p2align	4, , 16
.LBB4_80:                               # %.preheader.us513.preheader
                                        #   in Loop: Header=BB4_82 Depth=2
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	add.d	$a6, $a0, $a6
.LBB4_81:                               # %._crit_edge509.us
                                        #   in Loop: Header=BB4_82 Depth=2
	ld.d	$t5, $sp, 312                   # 8-byte Folded Reload
	addi.w	$t5, $t5, 1
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	add.w	$a6, $a6, $a0
	ori	$t4, $zero, 1
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	beq	$t5, $a0, .LBB4_3
.LBB4_82:                               # %.preheader486.us
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_85 Depth 3
                                        #         Child Loop BB4_93 Depth 4
                                        #         Child Loop BB4_88 Depth 4
	st.d	$t5, $sp, 312                   # 8-byte Folded Spill
	addi.w	$a0, $a3, 0
	blt	$a0, $t4, .LBB4_80
# %bb.83:                               # %.preheader.us.us.preheader
                                        #   in Loop: Header=BB4_82 Depth=2
	move	$s4, $zero
	b	.LBB4_85
	.p2align	4, , 16
.LBB4_84:                               # %._crit_edge.us.us520
                                        #   in Loop: Header=BB4_85 Depth=3
	addi.w	$s4, $s4, 1
	add.w	$a6, $a4, $a6
	beq	$s4, $a1, .LBB4_81
.LBB4_85:                               # %.preheader.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_82 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_93 Depth 4
                                        #         Child Loop BB4_88 Depth 4
	ori	$a0, $zero, 32
	bgeu	$a3, $a0, .LBB4_89
# %bb.86:                               #   in Loop: Header=BB4_85 Depth=3
	move	$t4, $zero
.LBB4_87:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB4_85 Depth=3
	slli.d	$a0, $a6, 3
	sub.d	$a2, $a3, $t4
	ld.d	$a5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 360                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 400                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 408                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_88:                               # %scalar.ph
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_82 Depth=2
                                        #       Parent Loop BB4_85 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $fp, $a0
	fldx.d	$fa1, $t8, $a0
	fldx.d	$fa2, $t7, $a0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t7, $a0
	stx.d	$zero, $fp, $a0
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
	addi.d	$a6, $a6, 1
	addi.d	$fp, $fp, 8
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
	addi.w	$a2, $a2, -1
	addi.d	$a5, $a5, 8
	bnez	$a2, .LBB4_88
	b	.LBB4_84
	.p2align	4, , 16
.LBB4_89:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_85 Depth=3
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$s5, $a6, $a0, 3
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$s2, $a6, $a0, 3
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$s6, $a6, $a0, 3
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$s1, $a6, $a0, 3
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$s7, $a6, $a0, 3
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$s0, $a6, $a0, 3
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$s8, $a6, $a0, 3
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$t1, $a6, $a0, 3
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$ra, $a6, $a0, 3
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$t4, $a6, $a0, 3
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a7, $a6, $a0, 3
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$t7, $a6, $a0, 3
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$a5, $a6, $a0, 3
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$t2, $a6, $a0, 3
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a0, $a6, $a0, 3
	ld.d	$a2, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$t8, $a6, $a2, 3
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$a2, $a6, $a2, 3
	ld.d	$t0, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$t5, $a6, $t0, 3
	ld.d	$t0, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$fp, $a6, $t0, 3
	ld.d	$t0, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$t0, $a6, $t0, 3
	xvinsgr2vr.d	$xr2, $t0, 0
	ld.d	$t3, $sp, 464                   # 8-byte Folded Reload
	alsl.d	$t3, $a6, $t3, 3
	xvori.b	$xr4, $xr2, 0
	xvinsgr2vr.d	$xr4, $s7, 1
	xvinsgr2vr.d	$xr4, $ra, 2
	xvinsgr2vr.d	$xr3, $a5, 0
	xvinsgr2vr.d	$xr4, $s8, 3
	xvori.b	$xr6, $xr3, 0
	xvinsgr2vr.d	$xr6, $s7, 1
	xvinsgr2vr.d	$xr6, $a2, 2
	xvinsgr2vr.d	$xr14, $s6, 0
	xvinsgr2vr.d	$xr6, $s7, 3
	xvori.b	$xr10, $xr14, 0
	xvinsgr2vr.d	$xr10, $s7, 1
	xvinsgr2vr.d	$xr10, $ra, 2
	xvinsgr2vr.d	$xr10, $s7, 3
	xvori.b	$xr12, $xr14, 0
	xvinsgr2vr.d	$xr12, $a2, 1
	xvinsgr2vr.d	$xr12, $s6, 2
	xvinsgr2vr.d	$xr12, $t0, 3
	xvori.b	$xr11, $xr14, 0
	xvinsgr2vr.d	$xr11, $ra, 1
	xvinsgr2vr.d	$xr11, $s6, 2
	xvinsgr2vr.d	$xr13, $s5, 0
	xvinsgr2vr.d	$xr11, $a5, 3
	xvori.b	$xr1, $xr13, 0
	xvinsgr2vr.d	$xr1, $t0, 1
	xvinsgr2vr.d	$xr1, $s5, 2
	xvinsgr2vr.d	$xr1, $s7, 3
	xvori.b	$xr19, $xr13, 0
	xvinsgr2vr.d	$xr19, $a5, 1
	xvinsgr2vr.d	$xr19, $s5, 2
	xvinsgr2vr.d	$xr19, $a2, 3
	xvinsgr2vr.d	$xr13, $s7, 1
	xvinsgr2vr.d	$xr13, $s5, 2
	xvinsgr2vr.d	$xr16, $s0, 0
	xvinsgr2vr.d	$xr13, $ra, 3
	xvori.b	$xr7, $xr16, 0
	xvinsgr2vr.d	$xr7, $t3, 1
	xvinsgr2vr.d	$xr7, $t1, 2
	xvinsgr2vr.d	$xr7, $t7, 3
	xvinsgr2vr.d	$xr16, $t8, 1
	xvinsgr2vr.d	$xr16, $s0, 2
	xvinsgr2vr.d	$xr9, $t3, 0
	xvinsgr2vr.d	$xr16, $fp, 3
	xvori.b	$xr0, $xr9, 0
	xvinsgr2vr.d	$xr0, $t1, 1
	xvinsgr2vr.d	$xr0, $s0, 2
	xvinsgr2vr.d	$xr18, $t8, 0
	xvst	$xr18, $sp, 592                 # 32-byte Folded Spill
	xvinsgr2vr.d	$xr0, $t7, 3
	xvinsgr2vr.d	$xr18, $s1, 1
	xvinsgr2vr.d	$xr18, $fp, 2
	xvinsgr2vr.d	$xr17, $t1, 0
	xvst	$xr17, $sp, 624                 # 32-byte Folded Spill
	xvinsgr2vr.d	$xr18, $s1, 3
	xvinsgr2vr.d	$xr17, $s1, 1
	xvinsgr2vr.d	$xr17, $t7, 2
	xvinsgr2vr.d	$xr5, $fp, 0
	xvinsgr2vr.d	$xr17, $s1, 3
	xvori.b	$xr20, $xr5, 0
	xvinsgr2vr.d	$xr20, $s2, 1
	xvinsgr2vr.d	$xr20, $t3, 2
	xvinsgr2vr.d	$xr8, $t7, 0
	xvinsgr2vr.d	$xr20, $s1, 3
	xvori.b	$xr21, $xr8, 0
	xvinsgr2vr.d	$xr21, $s2, 1
	xvinsgr2vr.d	$xr21, $t8, 2
	xvinsgr2vr.d	$xr15, $s1, 0
	xvinsgr2vr.d	$xr21, $s2, 3
	xvori.b	$xr22, $xr15, 0
	xvinsgr2vr.d	$xr22, $s2, 1
	xvinsgr2vr.d	$xr22, $t1, 2
	xvinsgr2vr.d	$xr22, $s2, 3
	xvslt.du	$xr22, $xr13, $xr22
	xvpickve2gr.d	$t6, $xr22, 0
	xvreplgr2vr.b	$xr13, $t6
	xvpermi.q	$xr13, $xr0, 18
	xvextrins.b	$xr13, $xr13, 0
	xvpickve2gr.d	$t6, $xr22, 1
	xvreplgr2vr.b	$xr23, $t6
	xvpermi.q	$xr23, $xr13, 18
	xvextrins.b	$xr13, $xr23, 17
	xvpickve2gr.d	$t6, $xr22, 2
	xvreplgr2vr.b	$xr23, $t6
	xvpermi.q	$xr23, $xr13, 18
	xvextrins.b	$xr13, $xr23, 34
	xvpickve2gr.d	$t6, $xr22, 3
	xvreplgr2vr.b	$xr22, $t6
	xvpermi.q	$xr22, $xr13, 18
	xvextrins.b	$xr13, $xr22, 51
	xvslt.du	$xr19, $xr19, $xr21
	xvpickve2gr.d	$t6, $xr19, 0
	xvreplgr2vr.b	$xr21, $t6
	xvpermi.q	$xr21, $xr13, 18
	xvextrins.b	$xr13, $xr21, 68
	xvpickve2gr.d	$t6, $xr19, 1
	xvreplgr2vr.b	$xr21, $t6
	xvpermi.q	$xr21, $xr13, 18
	xvextrins.b	$xr13, $xr21, 85
	xvpickve2gr.d	$t6, $xr19, 2
	xvreplgr2vr.b	$xr21, $t6
	xvpermi.q	$xr21, $xr13, 18
	xvextrins.b	$xr13, $xr21, 102
	xvpickve2gr.d	$t6, $xr19, 3
	xvreplgr2vr.b	$xr19, $t6
	xvpermi.q	$xr19, $xr13, 18
	xvextrins.b	$xr13, $xr19, 119
	xvslt.du	$xr1, $xr1, $xr20
	xvpickve2gr.d	$t6, $xr1, 0
	xvreplgr2vr.b	$xr19, $t6
	xvpermi.q	$xr19, $xr13, 18
	xvextrins.b	$xr13, $xr19, 136
	xvpickve2gr.d	$t6, $xr1, 1
	xvreplgr2vr.b	$xr19, $t6
	xvpermi.q	$xr19, $xr13, 18
	xvextrins.b	$xr13, $xr19, 153
	xvpickve2gr.d	$t6, $xr1, 2
	xvreplgr2vr.b	$xr20, $t6
	xvpickve2gr.d	$t6, $xr1, 3
	xvreplgr2vr.b	$xr1, $t6
	xvslt.du	$xr21, $xr11, $xr17
	xvpickve2gr.d	$t6, $xr21, 0
	xvreplgr2vr.b	$xr11, $t6
	xvpickve2gr.d	$t6, $xr21, 1
	xvreplgr2vr.b	$xr17, $t6
	xvpickve2gr.d	$t6, $xr21, 2
	xvreplgr2vr.b	$xr19, $t6
	xvpickve2gr.d	$t6, $xr21, 3
	xvreplgr2vr.b	$xr22, $t6
	xvslt.du	$xr12, $xr12, $xr18
	xvpickve2gr.d	$t6, $xr12, 0
	xvreplgr2vr.b	$xr24, $t6
	xvpickve2gr.d	$t6, $xr12, 1
	xvreplgr2vr.b	$xr26, $t6
	xvpickve2gr.d	$t6, $xr12, 2
	xvreplgr2vr.b	$xr28, $t6
	xvpickve2gr.d	$t6, $xr12, 3
	xvreplgr2vr.b	$xr12, $t6
	xvslt.du	$xr0, $xr10, $xr0
	xvpickve2gr.d	$t6, $xr0, 0
	xvreplgr2vr.b	$xr10, $t6
	xvpickve2gr.d	$t6, $xr0, 1
	xvreplgr2vr.b	$xr21, $t6
	xvpickve2gr.d	$t6, $xr0, 2
	xvreplgr2vr.b	$xr23, $t6
	xvpickve2gr.d	$t6, $xr0, 3
	xvreplgr2vr.b	$xr25, $t6
	xvslt.du	$xr0, $xr6, $xr16
	xvpickve2gr.d	$t6, $xr0, 0
	xvreplgr2vr.b	$xr27, $t6
	xvpickve2gr.d	$t6, $xr0, 1
	xvreplgr2vr.b	$xr29, $t6
	xvpickve2gr.d	$t6, $xr0, 2
	xvreplgr2vr.b	$xr30, $t6
	xvpickve2gr.d	$t6, $xr0, 3
	xvreplgr2vr.b	$xr31, $t6
	xvslt.du	$xr6, $xr4, $xr7
	xvpickve2gr.d	$t6, $xr6, 0
	xvreplgr2vr.b	$xr7, $t6
	xvpickve2gr.d	$t6, $xr6, 1
	xvreplgr2vr.b	$xr0, $t6
	xvpickve2gr.d	$t6, $xr6, 2
	xvreplgr2vr.b	$xr4, $t6
	xvpickve2gr.d	$t6, $xr6, 3
	xvreplgr2vr.b	$xr6, $t6
	ld.d	$t6, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$t6, $a6, $t6, 3
	xvpermi.q	$xr20, $xr13, 18
	xvextrins.b	$xr13, $xr20, 170
	xvpermi.q	$xr1, $xr13, 18
	xvextrins.b	$xr13, $xr1, 187
	xvori.b	$xr18, $xr15, 0
	xvori.b	$xr20, $xr15, 0
	xvinsgr2vr.d	$xr20, $t5, 1
	xvinsgr2vr.d	$xr20, $s1, 2
	xvinsgr2vr.d	$xr15, $t4, 1
	xvinsgr2vr.d	$xr15, $s1, 2
	ld.d	$s1, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$s1, $a6, $s1, 3
	xvpermi.q	$xr11, $xr13, 18
	xvextrins.b	$xr13, $xr11, 204
	xvpermi.q	$xr17, $xr13, 18
	xvextrins.b	$xr13, $xr17, 221
	xvpermi.q	$xr19, $xr13, 18
	xvextrins.b	$xr13, $xr19, 238
	xvpermi.q	$xr22, $xr13, 18
	xvextrins.b	$xr13, $xr22, 255
	xvpermi.q	$xr24, $xr13, 48
	xvextrins.b	$xr13, $xr24, 0
	xvpermi.q	$xr26, $xr13, 48
	xvextrins.b	$xr13, $xr26, 17
	xvpermi.q	$xr28, $xr13, 48
	xvinsgr2vr.d	$xr26, $s1, 0
	xvextrins.b	$xr13, $xr28, 34
	xvori.b	$xr16, $xr26, 0
	xvinsgr2vr.d	$xr28, $t2, 0
	xvinsgr2vr.d	$xr16, $s0, 1
	xvori.b	$xr19, $xr28, 0
	xvinsgr2vr.d	$xr19, $s0, 1
	xvinsgr2vr.d	$xr19, $t5, 2
	xvinsgr2vr.d	$xr19, $s0, 3
	xvinsgr2vr.d	$xr18, $s0, 1
	xvinsgr2vr.d	$xr18, $t4, 2
	xvinsgr2vr.d	$xr24, $s2, 0
	xvinsgr2vr.d	$xr18, $s0, 3
	xvori.b	$xr11, $xr24, 0
	xvinsgr2vr.d	$xr11, $s1, 1
	xvinsgr2vr.d	$xr11, $s2, 2
	xvinsgr2vr.d	$xr11, $s0, 3
	xvori.b	$xr1, $xr24, 0
	xvinsgr2vr.d	$xr24, $s0, 1
	ld.d	$s0, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$s0, $a6, $s0, 3
	xvpermi.q	$xr12, $xr13, 48
	xvextrins.b	$xr13, $xr12, 51
	xvpermi.q	$xr10, $xr13, 48
	xvextrins.b	$xr13, $xr10, 68
	xvpermi.q	$xr21, $xr13, 48
	xvextrins.b	$xr13, $xr21, 85
	xvpermi.q	$xr23, $xr13, 48
	xvextrins.b	$xr13, $xr23, 102
	xvpermi.q	$xr25, $xr13, 48
	xvextrins.b	$xr13, $xr25, 119
	xvpermi.q	$xr27, $xr13, 48
	xvextrins.b	$xr13, $xr27, 136
	xvpermi.q	$xr29, $xr13, 48
	xvextrins.b	$xr13, $xr29, 153
	xvpermi.q	$xr30, $xr13, 48
	xvextrins.b	$xr13, $xr30, 170
	xvpermi.q	$xr31, $xr13, 48
	xvextrins.b	$xr13, $xr31, 187
	xvpermi.q	$xr7, $xr13, 48
	xvextrins.b	$xr13, $xr7, 204
	xvpermi.q	$xr0, $xr13, 48
	xvextrins.b	$xr13, $xr0, 221
	xvpermi.q	$xr4, $xr13, 48
	xvextrins.b	$xr13, $xr4, 238
	xvpermi.q	$xr6, $xr13, 48
	xvinsgr2vr.d	$xr22, $s7, 0
	xvextrins.b	$xr13, $xr6, 255
	xvori.b	$xr21, $xr22, 0
	xvinsgr2vr.d	$xr21, $s0, 1
	xvinsgr2vr.d	$xr21, $s8, 2
	xvinsgr2vr.d	$xr21, $a7, 3
	xvinsgr2vr.d	$xr22, $a0, 1
	xvinsgr2vr.d	$xr22, $s7, 2
	xvinsgr2vr.d	$xr31, $s0, 0
	xvinsgr2vr.d	$xr22, $t6, 3
	xvori.b	$xr0, $xr31, 0
	xvinsgr2vr.d	$xr0, $s8, 1
	xvinsgr2vr.d	$xr0, $s7, 2
	xvinsgr2vr.d	$xr12, $a0, 0
	xvinsgr2vr.d	$xr0, $a7, 3
	xvori.b	$xr4, $xr12, 0
	xvinsgr2vr.d	$xr4, $s6, 1
	xvinsgr2vr.d	$xr4, $t6, 2
	xvinsgr2vr.d	$xr17, $s8, 0
	xvinsgr2vr.d	$xr4, $s6, 3
	xvori.b	$xr6, $xr17, 0
	xvinsgr2vr.d	$xr6, $s6, 1
	xvinsgr2vr.d	$xr6, $a7, 2
	xvinsgr2vr.d	$xr7, $t6, 0
	xvinsgr2vr.d	$xr6, $s6, 3
	xvori.b	$xr23, $xr7, 0
	xvinsgr2vr.d	$xr23, $s5, 1
	xvinsgr2vr.d	$xr23, $s0, 2
	xvinsgr2vr.d	$xr10, $a7, 0
	xvinsgr2vr.d	$xr23, $s6, 3
	xvori.b	$xr25, $xr10, 0
	xvinsgr2vr.d	$xr25, $s5, 1
	xvinsgr2vr.d	$xr25, $a0, 2
	xvinsgr2vr.d	$xr25, $s5, 3
	xvinsgr2vr.d	$xr14, $s5, 1
	xvinsgr2vr.d	$xr14, $s8, 2
	xvinsgr2vr.d	$xr14, $s5, 3
	xvinsgr2vr.d	$xr16, $t4, 2
	xvinsgr2vr.d	$xr16, $t1, 3
	xvinsgr2vr.d	$xr20, $s1, 3
	xvinsgr2vr.d	$xr15, $t2, 3
	xvinsgr2vr.d	$xr1, $t2, 1
	xvinsgr2vr.d	$xr1, $s2, 2
	xvinsgr2vr.d	$xr1, $t5, 3
	xvinsgr2vr.d	$xr24, $s2, 2
	xvinsgr2vr.d	$xr24, $t4, 3
	xvslt.du	$xr24, $xr14, $xr24
	xvpickve2gr.d	$s2, $xr24, 0
	xvreplgr2vr.b	$xr14, $s2
	xvpermi.q	$xr14, $xr0, 18
	xvextrins.b	$xr14, $xr14, 0
	xvpickve2gr.d	$s2, $xr24, 1
	xvreplgr2vr.b	$xr27, $s2
	xvpermi.q	$xr27, $xr14, 18
	xvextrins.b	$xr14, $xr27, 17
	xvpickve2gr.d	$s2, $xr24, 2
	xvreplgr2vr.b	$xr27, $s2
	xvpermi.q	$xr27, $xr14, 18
	xvextrins.b	$xr14, $xr27, 34
	xvpickve2gr.d	$s2, $xr24, 3
	xvreplgr2vr.b	$xr24, $s2
	xvpermi.q	$xr24, $xr14, 18
	xvextrins.b	$xr14, $xr24, 51
	xvslt.du	$xr1, $xr25, $xr1
	xvpickve2gr.d	$s2, $xr1, 0
	xvreplgr2vr.b	$xr24, $s2
	xvpermi.q	$xr24, $xr14, 18
	xvextrins.b	$xr14, $xr24, 68
	xvpickve2gr.d	$s2, $xr1, 1
	xvreplgr2vr.b	$xr24, $s2
	xvpermi.q	$xr24, $xr14, 18
	xvextrins.b	$xr14, $xr24, 85
	xvpickve2gr.d	$s2, $xr1, 2
	xvreplgr2vr.b	$xr24, $s2
	xvpermi.q	$xr24, $xr14, 18
	xvextrins.b	$xr14, $xr24, 102
	xvpickve2gr.d	$s2, $xr1, 3
	xvreplgr2vr.b	$xr1, $s2
	xvpermi.q	$xr1, $xr14, 18
	xvextrins.b	$xr14, $xr1, 119
	xvslt.du	$xr1, $xr23, $xr11
	xvpickve2gr.d	$s2, $xr1, 0
	xvreplgr2vr.b	$xr11, $s2
	xvpermi.q	$xr11, $xr14, 18
	xvextrins.b	$xr14, $xr11, 136
	xvpickve2gr.d	$s2, $xr1, 1
	xvreplgr2vr.b	$xr11, $s2
	xvpermi.q	$xr11, $xr14, 18
	xvextrins.b	$xr14, $xr11, 153
	xvpickve2gr.d	$s2, $xr1, 2
	xvreplgr2vr.b	$xr11, $s2
	xvpermi.q	$xr11, $xr14, 18
	xvextrins.b	$xr14, $xr11, 170
	xvpickve2gr.d	$s2, $xr1, 3
	xvreplgr2vr.b	$xr1, $s2
	xvpermi.q	$xr1, $xr14, 18
	xvextrins.b	$xr14, $xr1, 187
	xvslt.du	$xr1, $xr6, $xr15
	xvpickve2gr.d	$s2, $xr1, 0
	xvreplgr2vr.b	$xr6, $s2
	xvpermi.q	$xr6, $xr14, 18
	xvextrins.b	$xr14, $xr6, 204
	xvpickve2gr.d	$s2, $xr1, 1
	xvreplgr2vr.b	$xr6, $s2
	xvpermi.q	$xr6, $xr14, 18
	xvextrins.b	$xr14, $xr6, 221
	xvpickve2gr.d	$s2, $xr1, 2
	xvreplgr2vr.b	$xr6, $s2
	xvpermi.q	$xr6, $xr14, 18
	xvextrins.b	$xr14, $xr6, 238
	xvpickve2gr.d	$s2, $xr1, 3
	xvreplgr2vr.b	$xr1, $s2
	xvpermi.q	$xr1, $xr14, 18
	xvextrins.b	$xr14, $xr1, 255
	xvslt.du	$xr1, $xr4, $xr20
	xvpickve2gr.d	$s2, $xr1, 0
	xvreplgr2vr.b	$xr4, $s2
	xvpermi.q	$xr4, $xr14, 48
	xvextrins.b	$xr14, $xr4, 0
	xvpickve2gr.d	$s2, $xr1, 1
	xvreplgr2vr.b	$xr4, $s2
	xvpermi.q	$xr4, $xr14, 48
	xvextrins.b	$xr14, $xr4, 17
	xvpickve2gr.d	$s2, $xr1, 2
	xvreplgr2vr.b	$xr4, $s2
	xvpermi.q	$xr4, $xr14, 48
	xvextrins.b	$xr14, $xr4, 34
	xvpickve2gr.d	$s2, $xr1, 3
	xvreplgr2vr.b	$xr1, $s2
	xvpermi.q	$xr1, $xr14, 48
	xvextrins.b	$xr14, $xr1, 51
	xvslt.du	$xr0, $xr0, $xr18
	xvpickve2gr.d	$s2, $xr0, 0
	xvreplgr2vr.b	$xr1, $s2
	xvpermi.q	$xr1, $xr14, 48
	xvextrins.b	$xr14, $xr1, 68
	xvpickve2gr.d	$s2, $xr0, 1
	xvreplgr2vr.b	$xr1, $s2
	xvpermi.q	$xr1, $xr14, 48
	xvextrins.b	$xr14, $xr1, 85
	xvpickve2gr.d	$s2, $xr0, 2
	xvreplgr2vr.b	$xr1, $s2
	xvpermi.q	$xr1, $xr14, 48
	xvextrins.b	$xr14, $xr1, 102
	xvpickve2gr.d	$s2, $xr0, 3
	xvreplgr2vr.b	$xr0, $s2
	xvpermi.q	$xr0, $xr14, 48
	xvextrins.b	$xr14, $xr0, 119
	xvslt.du	$xr0, $xr22, $xr19
	xvpickve2gr.d	$s2, $xr0, 0
	xvreplgr2vr.b	$xr1, $s2
	xvpermi.q	$xr1, $xr14, 48
	xvextrins.b	$xr14, $xr1, 136
	xvpickve2gr.d	$s2, $xr0, 1
	xvreplgr2vr.b	$xr1, $s2
	xvpermi.q	$xr1, $xr14, 48
	xvextrins.b	$xr14, $xr1, 153
	xvpickve2gr.d	$s2, $xr0, 2
	xvreplgr2vr.b	$xr1, $s2
	xvpermi.q	$xr1, $xr14, 48
	xvextrins.b	$xr14, $xr1, 170
	xvpickve2gr.d	$s2, $xr0, 3
	xvreplgr2vr.b	$xr0, $s2
	xvpermi.q	$xr0, $xr14, 48
	xvextrins.b	$xr14, $xr0, 187
	xvslt.du	$xr0, $xr21, $xr16
	xvpickve2gr.d	$s2, $xr0, 0
	xvreplgr2vr.b	$xr1, $s2
	xvpermi.q	$xr1, $xr14, 48
	xvextrins.b	$xr14, $xr1, 204
	xvpickve2gr.d	$s2, $xr0, 1
	xvreplgr2vr.b	$xr1, $s2
	xvpermi.q	$xr1, $xr14, 48
	xvextrins.b	$xr14, $xr1, 221
	xvpickve2gr.d	$s2, $xr0, 2
	xvreplgr2vr.b	$xr1, $s2
	xvpermi.q	$xr1, $xr14, 48
	xvextrins.b	$xr14, $xr1, 238
	xvpickve2gr.d	$s2, $xr0, 3
	xvreplgr2vr.b	$xr0, $s2
	xvpermi.q	$xr0, $xr14, 48
	xvextrins.b	$xr14, $xr0, 255
	xvand.v	$xr0, $xr13, $xr14
	xvst	$xr0, $sp, 560                  # 32-byte Folded Spill
	xvori.b	$xr18, $xr2, 0
	xvinsgr2vr.d	$xr18, $a2, 1
	xvinsgr2vr.d	$xr18, $t0, 2
	xvinsgr2vr.d	$xr18, $t6, 3
	xvori.b	$xr19, $xr12, 0
	xvinsgr2vr.d	$xr19, $t0, 1
	xvinsgr2vr.d	$xr19, $a0, 2
	xvinsgr2vr.d	$xr19, $a2, 3
	xvori.b	$xr21, $xr3, 0
	xvinsgr2vr.d	$xr21, $t0, 1
	xvinsgr2vr.d	$xr21, $a5, 2
	xvinsgr2vr.d	$xr21, $a2, 3
	xvinsgr2vr.d	$xr2, $a7, 1
	xvinsgr2vr.d	$xr2, $a5, 2
	xvinsgr2vr.d	$xr2, $a2, 3
	xvinsgr2vr.d	$xr3, $a7, 1
	xvinsgr2vr.d	$xr3, $a2, 2
	xvinsgr2vr.d	$xr14, $a2, 0
	xvinsgr2vr.d	$xr3, $a7, 3
	xvori.b	$xr1, $xr14, 0
	xvinsgr2vr.d	$xr1, $ra, 1
	xvinsgr2vr.d	$xr1, $t0, 2
	xvinsgr2vr.d	$xr1, $ra, 3
	xvori.b	$xr4, $xr17, 0
	xvinsgr2vr.d	$xr4, $ra, 1
	xvinsgr2vr.d	$xr4, $a5, 2
	xvinsgr2vr.d	$xr4, $ra, 3
	xvinsgr2vr.d	$xr17, $a2, 1
	xvinsgr2vr.d	$xr17, $s8, 2
	xvinsgr2vr.d	$xr16, $t5, 0
	xvinsgr2vr.d	$xr17, $t0, 3
	xvori.b	$xr20, $xr16, 0
	xvinsgr2vr.d	$xr20, $t3, 1
	xvinsgr2vr.d	$xr20, $fp, 2
	xvinsgr2vr.d	$xr20, $t3, 3
	xvori.b	$xr22, $xr5, 0
	xvinsgr2vr.d	$xr22, $t8, 1
	xvinsgr2vr.d	$xr22, $t3, 2
	xvinsgr2vr.d	$xr22, $fp, 3
	xvinsgr2vr.d	$xr5, $t2, 1
	xvinsgr2vr.d	$xr5, $t3, 2
	xvinsgr2vr.d	$xr5, $t8, 3
	xvori.b	$xr0, $xr8, 0
	xvinsgr2vr.d	$xr0, $t3, 1
	xvinsgr2vr.d	$xr0, $t8, 2
	xvinsgr2vr.d	$xr0, $t2, 3
	xvinsgr2vr.d	$xr8, $t8, 1
	xvinsgr2vr.d	$xr8, $t7, 2
	xvinsgr2vr.d	$xr8, $fp, 3
	xvinsgr2vr.d	$xr6, $t4, 0
	xvinsgr2vr.d	$xr6, $fp, 1
	xvinsgr2vr.d	$xr6, $t4, 2
	xvinsgr2vr.d	$xr6, $t3, 3
	xvinsgr2vr.d	$xr9, $t7, 1
	xvinsgr2vr.d	$xr9, $t4, 2
	xvinsgr2vr.d	$xr9, $t8, 3
	xvld	$xr13, $sp, 592                 # 32-byte Folded Reload
	xvori.b	$xr11, $xr13, 0
	xvinsgr2vr.d	$xr11, $t1, 1
	xvinsgr2vr.d	$xr11, $fp, 2
	xvinsgr2vr.d	$xr11, $t1, 3
	xvslt.du	$xr11, $xr17, $xr11
	xvpickve2gr.d	$s2, $xr11, 0
	xvreplgr2vr.b	$xr15, $s2
	xvpermi.q	$xr15, $xr0, 18
	xvextrins.b	$xr15, $xr15, 0
	xvpickve2gr.d	$s2, $xr11, 1
	xvreplgr2vr.b	$xr17, $s2
	xvpermi.q	$xr17, $xr15, 18
	xvextrins.b	$xr15, $xr17, 17
	xvpickve2gr.d	$s2, $xr11, 2
	xvreplgr2vr.b	$xr17, $s2
	xvpermi.q	$xr17, $xr15, 18
	xvextrins.b	$xr15, $xr17, 34
	xvpickve2gr.d	$s2, $xr11, 3
	xvreplgr2vr.b	$xr11, $s2
	xvpermi.q	$xr11, $xr15, 18
	xvextrins.b	$xr15, $xr11, 51
	xvslt.du	$xr4, $xr4, $xr9
	xvpickve2gr.d	$s2, $xr4, 0
	xvreplgr2vr.b	$xr9, $s2
	xvpermi.q	$xr9, $xr15, 18
	xvextrins.b	$xr15, $xr9, 68
	xvpickve2gr.d	$s2, $xr4, 1
	xvreplgr2vr.b	$xr9, $s2
	xvpermi.q	$xr9, $xr15, 18
	xvextrins.b	$xr15, $xr9, 85
	xvpickve2gr.d	$s2, $xr4, 2
	xvreplgr2vr.b	$xr9, $s2
	xvpermi.q	$xr9, $xr15, 18
	xvextrins.b	$xr15, $xr9, 102
	xvpickve2gr.d	$s2, $xr4, 3
	xvreplgr2vr.b	$xr4, $s2
	xvpermi.q	$xr4, $xr15, 18
	xvextrins.b	$xr15, $xr4, 119
	xvslt.du	$xr1, $xr1, $xr6
	xvpickve2gr.d	$s2, $xr1, 0
	xvreplgr2vr.b	$xr4, $s2
	xvpermi.q	$xr4, $xr15, 18
	xvextrins.b	$xr15, $xr4, 136
	xvpickve2gr.d	$s2, $xr1, 1
	xvreplgr2vr.b	$xr4, $s2
	xvpermi.q	$xr4, $xr15, 18
	xvextrins.b	$xr15, $xr4, 153
	xvpickve2gr.d	$s2, $xr1, 2
	xvreplgr2vr.b	$xr4, $s2
	xvpermi.q	$xr4, $xr15, 18
	xvextrins.b	$xr15, $xr4, 170
	xvpickve2gr.d	$s2, $xr1, 3
	xvreplgr2vr.b	$xr1, $s2
	xvpermi.q	$xr1, $xr15, 18
	xvextrins.b	$xr15, $xr1, 187
	xvslt.du	$xr1, $xr3, $xr8
	xvpickve2gr.d	$s2, $xr1, 0
	xvreplgr2vr.b	$xr30, $s2
	xvpickve2gr.d	$s2, $xr1, 1
	xvreplgr2vr.b	$xr3, $s2
	xvpickve2gr.d	$s2, $xr1, 2
	xvreplgr2vr.b	$xr8, $s2
	xvpickve2gr.d	$s2, $xr1, 3
	xvreplgr2vr.b	$xr9, $s2
	xvslt.du	$xr0, $xr2, $xr0
	xvpickve2gr.d	$s2, $xr0, 0
	xvreplgr2vr.b	$xr17, $s2
	xvpickve2gr.d	$s2, $xr0, 1
	xvreplgr2vr.b	$xr23, $s2
	xvpickve2gr.d	$s2, $xr0, 2
	xvreplgr2vr.b	$xr24, $s2
	xvpickve2gr.d	$s2, $xr0, 3
	xvreplgr2vr.b	$xr25, $s2
	xvslt.du	$xr1, $xr21, $xr5
	xvpickve2gr.d	$s2, $xr1, 0
	xvreplgr2vr.b	$xr0, $s2
	xvpickve2gr.d	$s2, $xr1, 1
	xvreplgr2vr.b	$xr4, $s2
	xvpickve2gr.d	$s2, $xr1, 2
	xvreplgr2vr.b	$xr5, $s2
	xvpickve2gr.d	$s2, $xr1, 3
	xvreplgr2vr.b	$xr6, $s2
	xvslt.du	$xr1, $xr19, $xr22
	xvpickve2gr.d	$s2, $xr1, 0
	xvreplgr2vr.b	$xr19, $s2
	xvpickve2gr.d	$s2, $xr1, 1
	xvreplgr2vr.b	$xr21, $s2
	xvpickve2gr.d	$s2, $xr1, 2
	xvreplgr2vr.b	$xr22, $s2
	xvpickve2gr.d	$s2, $xr1, 3
	xvreplgr2vr.b	$xr27, $s2
	xvslt.du	$xr2, $xr18, $xr20
	xvpickve2gr.d	$s2, $xr2, 0
	xvreplgr2vr.b	$xr18, $s2
	xvpickve2gr.d	$s2, $xr2, 1
	xvreplgr2vr.b	$xr20, $s2
	xvpickve2gr.d	$s2, $xr2, 2
	xvreplgr2vr.b	$xr1, $s2
	xvpickve2gr.d	$s2, $xr2, 3
	xvreplgr2vr.b	$xr29, $s2
	xvpermi.q	$xr30, $xr15, 18
	xvextrins.b	$xr15, $xr30, 204
	xvori.b	$xr2, $xr26, 0
	xvinsgr2vr.d	$xr2, $t5, 1
	xvinsgr2vr.d	$xr2, $s1, 2
	xvinsgr2vr.d	$xr2, $fp, 3
	xvinsgr2vr.d	$xr13, $s1, 1
	xvinsgr2vr.d	$xr13, $t8, 2
	xvpermi.q	$xr3, $xr15, 18
	xvextrins.b	$xr15, $xr3, 221
	xvori.b	$xr3, $xr28, 0
	xvinsgr2vr.d	$xr26, $t7, 1
	xvinsgr2vr.d	$xr28, $t7, 1
	xvinsgr2vr.d	$xr28, $t5, 2
	xvinsgr2vr.d	$xr28, $t7, 3
	xvpermi.q	$xr8, $xr15, 18
	xvextrins.b	$xr15, $xr8, 238
	xvpermi.q	$xr9, $xr15, 18
	xvextrins.b	$xr15, $xr9, 255
	xvpermi.q	$xr17, $xr15, 48
	xvextrins.b	$xr15, $xr17, 0
	xvpermi.q	$xr23, $xr15, 48
	xvextrins.b	$xr15, $xr23, 17
	xvpermi.q	$xr24, $xr15, 48
	xvextrins.b	$xr15, $xr24, 34
	xvpermi.q	$xr25, $xr15, 48
	xvextrins.b	$xr15, $xr25, 51
	xvpermi.q	$xr0, $xr15, 48
	xvextrins.b	$xr15, $xr0, 68
	xvpermi.q	$xr4, $xr15, 48
	xvextrins.b	$xr15, $xr4, 85
	xvpermi.q	$xr5, $xr15, 48
	xvextrins.b	$xr15, $xr5, 102
	xvpermi.q	$xr6, $xr15, 48
	xvextrins.b	$xr15, $xr6, 119
	xvpermi.q	$xr19, $xr15, 48
	xvextrins.b	$xr15, $xr19, 136
	xvpermi.q	$xr21, $xr15, 48
	xvextrins.b	$xr15, $xr21, 153
	xvpermi.q	$xr22, $xr15, 48
	xvextrins.b	$xr15, $xr22, 170
	xvpermi.q	$xr27, $xr15, 48
	xvextrins.b	$xr15, $xr27, 187
	xvpermi.q	$xr18, $xr15, 48
	xvextrins.b	$xr15, $xr18, 204
	xvpermi.q	$xr20, $xr15, 48
	xvextrins.b	$xr15, $xr20, 221
	xvpermi.q	$xr1, $xr15, 48
	xvextrins.b	$xr15, $xr1, 238
	xvpermi.q	$xr29, $xr15, 48
	xvextrins.b	$xr15, $xr29, 255
	xvinsgr2vr.d	$xr14, $s0, 1
	xvinsgr2vr.d	$xr14, $t6, 2
	xvinsgr2vr.d	$xr14, $s0, 3
	xvori.b	$xr5, $xr7, 0
	xvinsgr2vr.d	$xr5, $a0, 1
	xvinsgr2vr.d	$xr5, $s0, 2
	xvinsgr2vr.d	$xr5, $t6, 3
	xvinsgr2vr.d	$xr7, $a5, 1
	xvinsgr2vr.d	$xr7, $s0, 2
	xvinsgr2vr.d	$xr7, $a0, 3
	xvori.b	$xr0, $xr10, 0
	xvinsgr2vr.d	$xr0, $s0, 1
	xvinsgr2vr.d	$xr0, $a0, 2
	xvinsgr2vr.d	$xr0, $a5, 3
	xvinsgr2vr.d	$xr10, $a0, 1
	xvinsgr2vr.d	$xr10, $a7, 2
	xvinsgr2vr.d	$xr10, $t6, 3
	xvinsgr2vr.d	$xr4, $ra, 0
	xvinsgr2vr.d	$xr4, $t6, 1
	xvinsgr2vr.d	$xr4, $ra, 2
	xvinsgr2vr.d	$xr4, $s0, 3
	xvinsgr2vr.d	$xr31, $a7, 1
	xvinsgr2vr.d	$xr31, $ra, 2
	xvinsgr2vr.d	$xr31, $a0, 3
	xvinsgr2vr.d	$xr12, $s8, 1
	xvinsgr2vr.d	$xr12, $t6, 2
	xvinsgr2vr.d	$xr12, $s8, 3
	xvinsgr2vr.d	$xr13, $t5, 3
	xvinsgr2vr.d	$xr3, $s1, 1
	xvinsgr2vr.d	$xr3, $t2, 2
	xvinsgr2vr.d	$xr3, $t5, 3
	xvinsgr2vr.d	$xr26, $t2, 2
	xvinsgr2vr.d	$xr26, $t5, 3
	xvinsgr2vr.d	$xr16, $t4, 1
	xvinsgr2vr.d	$xr16, $s1, 2
	xvinsgr2vr.d	$xr16, $t4, 3
	xvld	$xr1, $sp, 624                  # 32-byte Folded Reload
	xvori.b	$xr6, $xr1, 0
	xvinsgr2vr.d	$xr6, $t4, 1
	xvinsgr2vr.d	$xr6, $t2, 2
	xvinsgr2vr.d	$xr6, $t4, 3
	xvinsgr2vr.d	$xr1, $t5, 1
	xvinsgr2vr.d	$xr1, $t1, 2
	xvinsgr2vr.d	$xr1, $s1, 3
	xvslt.du	$xr8, $xr12, $xr1
	xvpickve2gr.d	$t4, $xr8, 0
	xvreplgr2vr.b	$xr1, $t4
	xvpermi.q	$xr1, $xr0, 18
	xvextrins.b	$xr1, $xr1, 0
	xvpickve2gr.d	$t4, $xr8, 1
	xvreplgr2vr.b	$xr9, $t4
	xvpermi.q	$xr9, $xr1, 18
	xvextrins.b	$xr1, $xr9, 17
	xvpickve2gr.d	$t4, $xr8, 2
	xvreplgr2vr.b	$xr9, $t4
	xvpermi.q	$xr9, $xr1, 18
	xvextrins.b	$xr1, $xr9, 34
	xvpickve2gr.d	$t4, $xr8, 3
	xvreplgr2vr.b	$xr8, $t4
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 51
	xvslt.du	$xr6, $xr31, $xr6
	xvpickve2gr.d	$t4, $xr6, 0
	xvreplgr2vr.b	$xr8, $t4
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 68
	xvpickve2gr.d	$t4, $xr6, 1
	xvreplgr2vr.b	$xr8, $t4
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 85
	xvpickve2gr.d	$t4, $xr6, 2
	xvreplgr2vr.b	$xr8, $t4
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 102
	xvpickve2gr.d	$t4, $xr6, 3
	xvreplgr2vr.b	$xr6, $t4
	xvpermi.q	$xr6, $xr1, 18
	xvextrins.b	$xr1, $xr6, 119
	xvslt.du	$xr4, $xr4, $xr16
	xvpickve2gr.d	$t4, $xr4, 0
	xvreplgr2vr.b	$xr6, $t4
	xvpermi.q	$xr6, $xr1, 18
	xvextrins.b	$xr1, $xr6, 136
	xvpickve2gr.d	$t4, $xr4, 1
	xvreplgr2vr.b	$xr6, $t4
	xvpermi.q	$xr6, $xr1, 18
	xvextrins.b	$xr1, $xr6, 153
	xvpickve2gr.d	$t4, $xr4, 2
	xvreplgr2vr.b	$xr6, $t4
	xvpermi.q	$xr6, $xr1, 18
	xvextrins.b	$xr1, $xr6, 170
	xvpickve2gr.d	$t4, $xr4, 3
	xvreplgr2vr.b	$xr4, $t4
	xvpermi.q	$xr4, $xr1, 18
	xvextrins.b	$xr1, $xr4, 187
	xvslt.du	$xr4, $xr10, $xr28
	xvpickve2gr.d	$t4, $xr4, 0
	xvreplgr2vr.b	$xr6, $t4
	xvpermi.q	$xr6, $xr1, 18
	xvextrins.b	$xr1, $xr6, 204
	xvpickve2gr.d	$t4, $xr4, 1
	xvreplgr2vr.b	$xr6, $t4
	xvpermi.q	$xr6, $xr1, 18
	xvextrins.b	$xr1, $xr6, 221
	xvpickve2gr.d	$t4, $xr4, 2
	xvreplgr2vr.b	$xr6, $t4
	xvpermi.q	$xr6, $xr1, 18
	xvextrins.b	$xr1, $xr6, 238
	xvpickve2gr.d	$t4, $xr4, 3
	xvreplgr2vr.b	$xr4, $t4
	xvpermi.q	$xr4, $xr1, 18
	xvextrins.b	$xr1, $xr4, 255
	xvslt.du	$xr0, $xr0, $xr26
	xvpickve2gr.d	$t4, $xr0, 0
	xvreplgr2vr.b	$xr4, $t4
	xvpermi.q	$xr4, $xr1, 48
	xvextrins.b	$xr1, $xr4, 0
	xvpickve2gr.d	$t4, $xr0, 1
	xvreplgr2vr.b	$xr4, $t4
	xvpermi.q	$xr4, $xr1, 48
	xvextrins.b	$xr1, $xr4, 17
	xvpickve2gr.d	$t4, $xr0, 2
	xvreplgr2vr.b	$xr4, $t4
	xvpermi.q	$xr4, $xr1, 48
	xvextrins.b	$xr1, $xr4, 34
	xvpickve2gr.d	$t4, $xr0, 3
	xvreplgr2vr.b	$xr0, $t4
	xvpermi.q	$xr0, $xr1, 48
	xvextrins.b	$xr1, $xr0, 51
	xvslt.du	$xr0, $xr7, $xr3
	xvpickve2gr.d	$t4, $xr0, 0
	xvreplgr2vr.b	$xr3, $t4
	xvpermi.q	$xr3, $xr1, 48
	xvextrins.b	$xr1, $xr3, 68
	xvpickve2gr.d	$t4, $xr0, 1
	xvreplgr2vr.b	$xr3, $t4
	xvpermi.q	$xr3, $xr1, 48
	xvextrins.b	$xr1, $xr3, 85
	xvpickve2gr.d	$t4, $xr0, 2
	xvreplgr2vr.b	$xr3, $t4
	xvpermi.q	$xr3, $xr1, 48
	xvextrins.b	$xr1, $xr3, 102
	xvpickve2gr.d	$t4, $xr0, 3
	xvreplgr2vr.b	$xr0, $t4
	xvpermi.q	$xr0, $xr1, 48
	xvextrins.b	$xr1, $xr0, 119
	xvslt.du	$xr0, $xr5, $xr13
	xvpickve2gr.d	$t4, $xr0, 0
	xvreplgr2vr.b	$xr3, $t4
	xvpermi.q	$xr3, $xr1, 48
	xvextrins.b	$xr1, $xr3, 136
	xvpickve2gr.d	$t4, $xr0, 1
	xvreplgr2vr.b	$xr3, $t4
	xvpermi.q	$xr3, $xr1, 48
	xvextrins.b	$xr1, $xr3, 153
	xvpickve2gr.d	$t4, $xr0, 2
	xvreplgr2vr.b	$xr3, $t4
	xvpermi.q	$xr3, $xr1, 48
	xvextrins.b	$xr1, $xr3, 170
	xvpickve2gr.d	$t4, $xr0, 3
	xvreplgr2vr.b	$xr0, $t4
	xvpermi.q	$xr0, $xr1, 48
	xvextrins.b	$xr1, $xr0, 187
	xvslt.du	$xr0, $xr14, $xr2
	xvpickve2gr.d	$t4, $xr0, 0
	xvreplgr2vr.b	$xr2, $t4
	xvpermi.q	$xr2, $xr1, 48
	xvextrins.b	$xr1, $xr2, 204
	xvpickve2gr.d	$t4, $xr0, 1
	xvreplgr2vr.b	$xr2, $t4
	xvpermi.q	$xr2, $xr1, 48
	xvextrins.b	$xr1, $xr2, 221
	xvpickve2gr.d	$t4, $xr0, 2
	xvreplgr2vr.b	$xr2, $t4
	xvpermi.q	$xr2, $xr1, 48
	xvextrins.b	$xr1, $xr2, 238
	xvpickve2gr.d	$t4, $xr0, 3
	xvreplgr2vr.b	$xr0, $t4
	xvpermi.q	$xr0, $xr1, 48
	xvextrins.b	$xr1, $xr0, 255
	xvand.v	$xr0, $xr15, $xr1
	xvld	$xr1, $sp, 560                  # 32-byte Folded Reload
	xvor.v	$xr0, $xr1, $xr0
	xvslli.b	$xr0, $xr0, 7
	xvmskltz.b	$xr0, $xr0
	xvpickve2gr.wu	$t4, $xr0, 0
	xvpickve2gr.wu	$t5, $xr0, 4
	bstrins.d	$t4, $t5, 31, 16
	addi.w	$t5, $t4, 0
	move	$t4, $zero
	bnez	$t5, .LBB4_87
# %bb.90:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_85 Depth=3
	sltu	$t2, $s8, $t2
	sltu	$t1, $a5, $t1
	and	$t1, $t2, $t1
	xvld	$xr5, $sp, 416                  # 32-byte Folded Reload
	bnez	$t1, .LBB4_87
# %bb.91:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_85 Depth=3
	sltu	$t1, $t0, $t3
	sltu	$t2, $s0, $s1
	and	$t1, $t1, $t2
	bnez	$t1, .LBB4_87
# %bb.92:                               # %vector.ph
                                        #   in Loop: Header=BB4_85 Depth=3
	move	$t1, $zero
	ld.d	$t2, $sp, 456                   # 8-byte Folded Reload
	add.d	$a6, $t2, $a6
	.p2align	4, , 16
.LBB4_93:                               # %vector.body
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_82 Depth=2
                                        #       Parent Loop BB4_85 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvldx	$xr0, $s6, $t1
	xvldx	$xr1, $s7, $t1
	xvldx	$xr2, $s5, $t1
	xvldx	$xr3, $ra, $t1
	xvldx	$xr4, $a7, $t1
	xvfadd.d	$xr0, $xr0, $xr1
	xvfadd.d	$xr0, $xr2, $xr0
	xvstx	$xr0, $s5, $t1
	xvfadd.d	$xr0, $xr3, $xr4
	xvldx	$xr1, $s8, $t1
	xvldx	$xr2, $a0, $t1
	xvldx	$xr3, $a2, $t1
	xvldx	$xr4, $a5, $t1
	xvfadd.d	$xr0, $xr1, $xr0
	xvstx	$xr0, $s8, $t1
	xvfadd.d	$xr0, $xr2, $xr3
	xvfadd.d	$xr0, $xr4, $xr0
	xvstx	$xr0, $a5, $t1
	xvldx	$xr0, $t0, $t1
	xvldx	$xr1, $s0, $t1
	xvstx	$xr5, $s6, $t1
	xvstx	$xr5, $s7, $t1
	xvstx	$xr5, $ra, $t1
	xvfadd.d	$xr0, $xr0, $xr1
	xvldx	$xr1, $t6, $t1
	xvstx	$xr5, $a7, $t1
	xvstx	$xr5, $a0, $t1
	xvstx	$xr5, $a2, $t1
	xvfadd.d	$xr0, $xr1, $xr0
	xvstx	$xr0, $t6, $t1
	xvstx	$xr5, $t0, $t1
	xvstx	$xr5, $s0, $t1
	addi.d	$t1, $t1, 32
	bne	$s3, $t1, .LBB4_93
# %bb.94:                               # %middle.block
                                        #   in Loop: Header=BB4_85 Depth=3
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	move	$t4, $a0
	beq	$a0, $a3, .LBB4_84
	b	.LBB4_87
.LBB4_95:                               # %.loopexit
	move	$a0, $zero
	fld.d	$fs7, $sp, 680                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 688                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 696                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 704                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 712                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 720                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 728                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 736                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 744                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 760                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 768                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 776                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 784                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 792                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 800                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 808                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 816                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 824                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 832
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
