	.file	"vprobes.c"
	.text
	.globl	vprobes                         # -- Begin function vprobes
	.p2align	5
	.type	vprobes,@function
vprobes:                                # @vprobes
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(hFixedList)
	ld.d	$a0, $a0, %got_pc_lo12(hFixedList)
	ld.d	$fp, $a0, 0
	beqz	$fp, .LBB0_75
# %bb.1:                                # %.lr.ph314.preheader
	pcalau12i	$a0, %got_pc_hi20(edgeList)
	ld.d	$s2, $a0, %got_pc_lo12(edgeList)
	pcalau12i	$a0, %got_pc_hi20(Hptrs)
	ld.d	$a1, $a0, %got_pc_lo12(Hptrs)
	pcalau12i	$a0, %got_pc_hi20(Hroot)
	ld.d	$a0, $a0, %got_pc_lo12(Hroot)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$s1, $zero, 40
                                        # implicit-def: $r26
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r29
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	b	.LBB0_5
.LBB0_2:                                # %.critedge238
                                        #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a1, %got_pc_hi20(numProbes)
	ld.d	$s5, $a1, %got_pc_lo12(numProbes)
	pcalau12i	$a1, %got_pc_hi20(edgeCount)
	ld.d	$s2, $a1, %got_pc_lo12(edgeCount)
	ld.w	$a1, $s5, 0
	ld.w	$a2, $s2, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $s5, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s1
	add.d	$a1, $a0, $a1
	st.w	$s8, $a1, 4
	ld.w	$a1, $s5, 0
	ld.w	$a2, $s2, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s1
	add.d	$a1, $a0, $a1
	st.w	$s3, $a1, 8
	ld.w	$a1, $s5, 0
	ld.w	$a2, $s2, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s1
	add.d	$a1, $a0, $a1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.w	$a2, $a1, 12
	ld.w	$a1, $s5, 0
	ld.w	$a2, $s2, 0
	sub.d	$a3, $s3, $s8
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s1
	add.d	$a1, $a0, $a1
	st.w	$a3, $a1, 16
	ld.w	$a1, $s5, 0
	ld.w	$a2, $s2, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s1
	add.d	$a1, $a0, $a1
	st.w	$zero, $a1, 24
	ld.w	$a1, $s5, 0
	ld.w	$a2, $s2, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s1
	stx.w	$zero, $a0, $a1
	ld.w	$a1, $s5, 0
	ld.w	$a2, $s2, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s1
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 20
	ld.w	$a0, $s5, 0
	ld.w	$a1, $s2, 0
	add.w	$a2, $a1, $a0
	pcalau12i	$a0, %got_pc_hi20(vEdgeRoot)
	ld.d	$a0, $a0, %got_pc_lo12(vEdgeRoot)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$a1, $s4
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(fpdebug)
	ld.d	$s0, $a0, %got_pc_lo12(fpdebug)
	ld.d	$a0, $s0, 0
	ld.w	$a2, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ori	$a5, $zero, 1
	move	$a2, $s8
	move	$a3, $s7
	move	$a4, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 0
	ld.w	$a1, $s2, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s1
	add.d	$a0, $a2, $a0
	st.w	$s8, $a0, 4
	ld.w	$a0, $s5, 0
	ld.w	$a1, $s2, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s1
	add.d	$a0, $a2, $a0
	st.w	$s3, $a0, 8
	ld.w	$a0, $s5, 0
	ld.w	$a1, $s2, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s1
	add.d	$a0, $a2, $a0
	st.w	$s6, $a0, 12
	ld.w	$a0, $s5, 0
	ld.w	$a1, $s2, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s1
	add.d	$a0, $a2, $a0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.w	$a1, $a0, 16
	ld.w	$a0, $s5, 0
	ld.w	$a1, $s2, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s1
	add.d	$a0, $a2, $a0
	st.w	$zero, $a0, 24
	ld.w	$a0, $s5, 0
	ld.w	$a1, $s2, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s1
	stx.w	$zero, $a2, $a0
	ld.w	$a0, $s5, 0
	ld.w	$a1, $s2, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s1
	add.d	$a0, $a2, $a0
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	move	$a1, $s4
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 20
	ld.w	$a0, $s5, 0
	ld.w	$a1, $s2, 0
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	add.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$a1, $s6
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.w	$a2, $s5, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	move	$a2, $s8
	move	$a3, $s7
	move	$a4, $s6
	move	$a5, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB0_3:                                # %.loopexit
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(doubleDown)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=1
	ld.d	$fp, $fp, 16
	beqz	$fp, .LBB0_75
.LBB0_5:                                # %.lr.ph314
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #     Child Loop BB0_38 Depth 2
                                        #     Child Loop BB0_32 Depth 2
                                        #     Child Loop BB0_54 Depth 2
                                        #     Child Loop BB0_58 Depth 2
                                        #     Child Loop BB0_50 Depth 2
                                        #     Child Loop BB0_67 Depth 2
                                        #     Child Loop BB0_71 Depth 2
                                        #     Child Loop BB0_24 Depth 2
	ld.w	$s0, $fp, 0
	ld.d	$a0, $s2, 0
	slli.d	$a1, $s0, 5
	alsl.d	$a1, $s0, $a1, 3
	add.d	$a1, $a0, $a1
	ld.w	$a2, $a1, 20
	bltz	$a2, .LBB0_4
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	ld.w	$a2, $a1, 28
	ld.w	$s7, $a1, 12
	ld.w	$s4, $a1, 4
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a2, $a0, $a2
	ld.w	$a2, $a2, 20
	ld.w	$a1, $a1, 8
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	ori	$a1, $zero, 1
	bne	$a2, $a1, .LBB0_15
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s1, $a0, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(tprop)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 3
	ldx.d	$s5, $s1, $a0
	ld.d	$a0, $s2, 0
	beqz	$s5, .LBB0_41
# %bb.8:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	ori	$s1, $zero, 40
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                #   in Loop: Header=BB0_10 Depth=2
	ld.d	$s5, $s5, 16
	beqz	$s5, .LBB0_14
.LBB0_10:                               # %.lr.ph
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s5, 0
	slli.d	$a2, $a1, 5
	alsl.d	$a1, $a1, $a2, 3
	add.d	$a1, $a0, $a1
	ld.w	$a2, $a1, 20
	bgtz	$a2, .LBB0_9
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=2
	ld.w	$s6, $a1, 8
	ld.w	$a3, $a1, 12
	bge	$s4, $s6, .LBB0_9
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=2
	ld.w	$a1, $a1, 4
	blt	$s4, $a1, .LBB0_9
# %bb.13:                               #   in Loop: Header=BB0_5 Depth=1
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	b	.LBB0_16
.LBB0_14:                               #   in Loop: Header=BB0_5 Depth=1
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
.LBB0_15:                               # %.loopexit245
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$s5, $zero
.LBB0_16:                               # %.loopexit245
                                        #   in Loop: Header=BB0_5 Depth=1
	mul.d	$a1, $s0, $s1
	add.d	$a1, $a0, $a1
	ld.w	$a1, $a1, 32
	mul.d	$a1, $a1, $s1
	add.d	$a0, $a0, $a1
	ld.w	$a0, $a0, 20
	addi.w	$a1, $zero, -1
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	beq	$a0, $a1, .LBB0_35
# %bb.17:                               #   in Loop: Header=BB0_5 Depth=1
	move	$s8, $s7
.LBB0_18:                               #   in Loop: Header=BB0_5 Depth=1
	move	$s7, $zero
.LBB0_19:                               # %.loopexit244
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.w	$a4, $s3, 0
	st.d	$s6, $sp, 96                    # 8-byte Folded Spill
	beqz	$s5, .LBB0_29
# %bb.20:                               # %.loopexit244
                                        #   in Loop: Header=BB0_5 Depth=1
	bne	$s5, $s7, .LBB0_29
# %bb.21:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $a0, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$s7, $s8
	move	$a1, $s8
	move	$s5, $a4
	pcaddu18i	$ra, %call36(tprop)
	jirl	$ra, $ra, 0
	move	$a5, $s5
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $s0, $a0
	ld.d	$a0, $s2, 0
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	bnez	$a1, .LBB0_24
.LBB0_22:                               # %.critedge
                                        #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a1, %got_pc_hi20(numProbes)
	ld.d	$s2, $a1, %got_pc_lo12(numProbes)
	pcalau12i	$a1, %got_pc_hi20(edgeCount)
	ld.d	$s0, $a1, %got_pc_lo12(edgeCount)
	ld.w	$a1, $s2, 0
	ld.w	$a2, $s0, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $s2, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s1
	add.d	$a1, $a0, $a1
	st.w	$s7, $a1, 4
	ld.w	$a1, $s2, 0
	ld.w	$a2, $s0, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s1
	add.d	$a1, $a0, $a1
	st.w	$s3, $a1, 8
	ld.w	$a1, $s2, 0
	ld.w	$a2, $s0, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s1
	add.d	$a1, $a0, $a1
	st.w	$s4, $a1, 12
	ld.w	$a1, $s2, 0
	ld.w	$a2, $s0, 0
	move	$s1, $s3
	ori	$s3, $zero, 40
	sub.d	$a3, $s1, $s7
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s3
	add.d	$a1, $a0, $a1
	st.w	$a3, $a1, 16
	ld.w	$a1, $s2, 0
	ld.w	$a2, $s0, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s3
	add.d	$a1, $a0, $a1
	st.w	$zero, $a1, 24
	ld.w	$a1, $s2, 0
	ld.w	$a2, $s0, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s3
	stx.w	$zero, $a0, $a1
	ld.w	$a1, $s2, 0
	ld.w	$a2, $s0, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s3
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 20
	ld.w	$a0, $s2, 0
	ld.w	$a1, $s0, 0
	add.w	$a2, $a1, $a0
	pcalau12i	$a0, %got_pc_hi20(vEdgeRoot)
	ld.d	$a0, $a0, %got_pc_lo12(vEdgeRoot)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$a1, $s4
	move	$s5, $fp
	move	$fp, $a5
	st.d	$a5, $sp, 64                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(fpdebug)
	ld.d	$s8, $a0, %got_pc_lo12(fpdebug)
	ld.d	$a0, $s8, 0
	ld.w	$a2, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$s6, $a1, %pc_lo12(.L.str)
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ori	$a5, $zero, 1
	move	$a2, $s7
	move	$a3, $fp
	move	$fp, $s5
	move	$a4, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	ld.w	$a1, $s0, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s2, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s3
	add.d	$a0, $a2, $a0
	st.w	$s7, $a0, 4
	ld.w	$a0, $s2, 0
	ld.w	$a1, $s0, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s3
	add.d	$a0, $a2, $a0
	st.w	$s1, $a0, 8
	ld.w	$a0, $s2, 0
	ld.w	$a1, $s0, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s3
	add.d	$a0, $a2, $a0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.w	$a1, $a0, 12
	ld.w	$a0, $s2, 0
	ld.w	$a3, $s0, 0
	add.w	$a0, $a3, $a0
	mul.d	$a0, $a0, $s3
	move	$s3, $s1
	add.d	$a0, $a2, $a0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	st.w	$a3, $a0, 16
	ori	$s1, $zero, 40
	ld.w	$a0, $s2, 0
	ld.w	$a3, $s0, 0
	add.w	$a0, $a3, $a0
	mul.d	$a0, $a0, $s1
	add.d	$a0, $a2, $a0
	st.w	$zero, $a0, 24
	ld.w	$a0, $s2, 0
	ld.w	$a3, $s0, 0
	add.w	$a0, $a3, $a0
	mul.d	$a0, $a0, $s1
	stx.w	$zero, $a2, $a0
	ld.w	$a0, $s2, 0
	ld.w	$a3, $s0, 0
	add.w	$a0, $a3, $a0
	mul.d	$a0, $a0, $s1
	add.d	$a0, $a2, $a0
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	move	$a2, $s4
	lu32i.d	$a2, 0
	st.w	$a2, $a0, 20
	ld.w	$a0, $s2, 0
	ld.w	$a2, $s0, 0
	add.w	$a2, $a2, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$s0, $a1
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ld.w	$a2, $s2, 0
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	move	$a1, $s6
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	move	$a2, $s7
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	move	$a4, $s0
	move	$a5, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_23:                               #   in Loop: Header=BB0_24 Depth=2
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB0_22
.LBB0_24:                               # %.lr.ph304
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a2, $a0, $a2
	ld.w	$a3, $a2, 20
	bgtz	$a3, .LBB0_23
# %bb.25:                               #   in Loop: Header=BB0_24 Depth=2
	ld.w	$a3, $a2, 12
	bge	$a3, $a5, .LBB0_22
# %bb.26:                               #   in Loop: Header=BB0_24 Depth=2
	ld.w	$a3, $a2, 4
	bge	$a3, $a4, .LBB0_23
# %bb.27:                               #   in Loop: Header=BB0_24 Depth=2
	ld.w	$a2, $a2, 8
	bge	$s4, $a2, .LBB0_23
# %bb.28:                               #   in Loop: Header=BB0_5 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(doubleDown)
	jirl	$ra, $ra, 0
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_29:                               #   in Loop: Header=BB0_5 Depth=1
	beqz	$s5, .LBB0_47
# %bb.30:                               #   in Loop: Header=BB0_5 Depth=1
	ld.w	$a0, $s5, 0
	ld.d	$a1, $s2, 0
	mul.d	$a0, $a0, $s1
	add.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 28
	mul.d	$a0, $a0, $s1
	add.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 20
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_47
# %bb.31:                               #   in Loop: Header=BB0_5 Depth=1
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $a0, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	addi.w	$s5, $a1, 0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(tprop)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $s0, $a0
	ld.d	$a0, $s2, 0
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_32:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB0_42
# %bb.33:                               #   in Loop: Header=BB0_32 Depth=2
	ld.w	$a2, $a1, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a2, $a0, $a2
	ld.w	$a2, $a2, 12
	bge	$s5, $a2, .LBB0_32
# %bb.34:                               #   in Loop: Header=BB0_5 Depth=1
	addi.d	$a1, $a1, 8
	ld.d	$a1, $a1, 0
	addi.w	$s6, $a4, 0
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	bnez	$a1, .LBB0_54
	b	.LBB0_43
	.p2align	4, , 16
.LBB0_35:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $a0, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$s8, $s7
	move	$a1, $s7
	pcaddu18i	$ra, %call36(tprop)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 3
	ldx.d	$s7, $s0, $a0
	beqz	$s7, .LBB0_18
# %bb.36:                               # %.lr.ph264
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	b	.LBB0_38
	.p2align	4, , 16
.LBB0_37:                               #   in Loop: Header=BB0_38 Depth=2
	ld.d	$s7, $s7, 16
	beqz	$s7, .LBB0_18
.LBB0_38:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s7, 0
	slli.d	$a2, $a1, 5
	alsl.d	$a1, $a1, $a2, 3
	add.d	$a1, $a0, $a1
	ld.w	$a2, $a1, 20
	bgtz	$a2, .LBB0_37
# %bb.39:                               #   in Loop: Header=BB0_38 Depth=2
	ld.w	$s3, $a1, 12
	ld.w	$a2, $a1, 8
	ld.w	$a1, $a1, 4
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	blt	$a2, $a3, .LBB0_37
# %bb.40:                               #   in Loop: Header=BB0_38 Depth=2
	bge	$a1, $a3, .LBB0_37
	b	.LBB0_19
.LBB0_41:                               #   in Loop: Header=BB0_5 Depth=1
	move	$s5, $zero
	ori	$s1, $zero, 40
	b	.LBB0_16
.LBB0_42:                               #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a1, %got_pc_hi20(hFixedEnd)
	ld.d	$a1, $a1, %got_pc_lo12(hFixedEnd)
	ld.d	$a1, $a1, 0
	addi.w	$s6, $a4, 0
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	bnez	$a1, .LBB0_54
.LBB0_43:                               #   in Loop: Header=BB0_5 Depth=1
	move	$a1, $zero
.LBB0_44:                               # %._crit_edge
                                        #   in Loop: Header=BB0_5 Depth=1
	bne	$fp, $a1, .LBB0_47
# %bb.45:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $a0, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$a1, $s8
	pcaddu18i	$ra, %call36(tprop)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $s0, $a0
	ld.d	$a0, $s2, 0
	bnez	$a1, .LBB0_58
.LBB0_46:                               # %.critedge235
                                        #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a1, %got_pc_hi20(numProbes)
	ld.d	$s0, $a1, %got_pc_lo12(numProbes)
	pcalau12i	$a1, %got_pc_hi20(edgeCount)
	ld.d	$s2, $a1, %got_pc_lo12(edgeCount)
	ld.w	$a1, $s0, 0
	ld.w	$a2, $s2, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $s0, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s1
	add.d	$a1, $a0, $a1
	st.w	$s8, $a1, 4
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a1, $s0, 0
	ld.w	$a2, $s2, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s1
	add.d	$a1, $a0, $a1
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	st.w	$a3, $a1, 8
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a1, $s0, 0
	ld.w	$a2, $s2, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s1
	add.d	$a1, $a0, $a1
	st.w	$s4, $a1, 12
	ld.w	$a1, $s0, 0
	ld.w	$a2, $s2, 0
	sub.d	$a3, $a3, $s8
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s1
	add.d	$a1, $a0, $a1
	st.w	$a3, $a1, 16
	ld.w	$a1, $s0, 0
	ld.w	$a2, $s2, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s1
	add.d	$a1, $a0, $a1
	st.w	$zero, $a1, 24
	ld.w	$a1, $s0, 0
	ld.w	$a2, $s2, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s1
	stx.w	$zero, $a0, $a1
	ld.w	$a1, $s0, 0
	ld.w	$a2, $s2, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s1
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 20
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s2, 0
	add.w	$a2, $a1, $a0
	pcalau12i	$a0, %got_pc_hi20(vEdgeRoot)
	ld.d	$a0, $a0, %got_pc_lo12(vEdgeRoot)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$a1, $s4
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(fpdebug)
	ld.d	$s8, $a0, %got_pc_lo12(fpdebug)
	ld.d	$a0, $s8, 0
	st.d	$s8, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a2, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ori	$a5, $zero, 1
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	move	$a2, $s8
	move	$a3, $s5
	move	$a4, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s2, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s1
	add.d	$a0, $a2, $a0
	st.w	$s8, $a0, 4
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s2, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s1
	add.d	$a0, $a2, $a0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.w	$a1, $a0, 8
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s2, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s1
	add.d	$a0, $a2, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a1, $a0, 12
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s2, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s1
	add.d	$a0, $a2, $a0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.w	$a1, $a0, 16
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s2, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s1
	add.d	$a0, $a2, $a0
	st.w	$zero, $a0, 24
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s2, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s1
	stx.w	$zero, $a2, $a0
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s2, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s1
	add.d	$a0, $a2, $a0
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	move	$a1, $s4
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 20
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s2, 0
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	add.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$a1, $s6
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 0                     # 8-byte Folded Reload
	ld.d	$a0, $s8, 0
	ld.w	$a2, $s0, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	move	$s8, $a2
	move	$a3, $s5
	move	$a4, $s6
	move	$a5, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_47:                               # %.loopexit242
                                        #   in Loop: Header=BB0_5 Depth=1
	beqz	$s7, .LBB0_3
# %bb.48:                               #   in Loop: Header=BB0_5 Depth=1
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s2, 0
	mul.d	$a0, $a0, $s1
	add.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 32
	mul.d	$a0, $a0, $s1
	add.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 20
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_3
# %bb.49:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $a0, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$a1, $a4
	move	$s7, $a4
	pcaddu18i	$ra, %call36(tprop)
	jirl	$ra, $ra, 0
	move	$a4, $s7
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $s0, $a0
	ld.d	$a0, $s2, 0
	.p2align	4, , 16
.LBB0_50:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB0_62
# %bb.51:                               #   in Loop: Header=BB0_50 Depth=2
	ld.w	$a2, $a1, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a2, $a0, $a2
	ld.w	$a2, $a2, 12
	bge	$a4, $a2, .LBB0_50
# %bb.52:                               #   in Loop: Header=BB0_5 Depth=1
	addi.d	$a1, $a1, 8
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	addi.w	$s4, $a2, 0
	bnez	$a1, .LBB0_67
	b	.LBB0_63
	.p2align	4, , 16
.LBB0_53:                               #   in Loop: Header=BB0_54 Depth=2
	ld.d	$a1, $a1, 8
	beqz	$a1, .LBB0_43
.LBB0_54:                               # %.lr.ph275
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a2, $a0, $a2
	ld.w	$a3, $a2, 20
	bltz	$a3, .LBB0_53
# %bb.55:                               #   in Loop: Header=BB0_54 Depth=2
	ld.w	$a3, $a2, 8
	blt	$a3, $s6, .LBB0_53
# %bb.56:                               #   in Loop: Header=BB0_54 Depth=2
	ld.w	$a2, $a2, 4
	bge	$a2, $s6, .LBB0_53
	b	.LBB0_44
	.p2align	4, , 16
.LBB0_57:                               #   in Loop: Header=BB0_58 Depth=2
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB0_46
.LBB0_58:                               # %.lr.ph283
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a2, $a0, $a2
	ld.w	$a3, $a2, 20
	bgtz	$a3, .LBB0_57
# %bb.59:                               #   in Loop: Header=BB0_58 Depth=2
	ld.w	$a3, $a2, 12
	bge	$a3, $s5, .LBB0_46
# %bb.60:                               #   in Loop: Header=BB0_58 Depth=2
	ld.w	$a3, $a2, 4
	bge	$a3, $s6, .LBB0_57
# %bb.61:                               #   in Loop: Header=BB0_58 Depth=2
	ld.w	$a2, $a2, 8
	bge	$s4, $a2, .LBB0_57
	b	.LBB0_47
.LBB0_62:                               #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a1, %got_pc_hi20(hFixedEnd)
	ld.d	$a1, $a1, %got_pc_lo12(hFixedEnd)
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	addi.w	$s4, $a2, 0
	bnez	$a1, .LBB0_67
.LBB0_63:                               #   in Loop: Header=BB0_5 Depth=1
	move	$a1, $zero
.LBB0_64:                               # %._crit_edge290
                                        #   in Loop: Header=BB0_5 Depth=1
	bne	$fp, $a1, .LBB0_3
# %bb.65:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $a0, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$a1, $s8
	pcaddu18i	$ra, %call36(tprop)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $s0, $a0
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $s2, 0
	bnez	$a1, .LBB0_71
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_66:                               #   in Loop: Header=BB0_67 Depth=2
	ld.d	$a1, $a1, 8
	beqz	$a1, .LBB0_63
.LBB0_67:                               # %.lr.ph289
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a2, $a0, $a2
	ld.w	$a3, $a2, 20
	bltz	$a3, .LBB0_66
# %bb.68:                               #   in Loop: Header=BB0_67 Depth=2
	ld.w	$a3, $a2, 8
	bge	$s4, $a3, .LBB0_66
# %bb.69:                               #   in Loop: Header=BB0_67 Depth=2
	ld.w	$a2, $a2, 4
	blt	$s4, $a2, .LBB0_66
	b	.LBB0_64
	.p2align	4, , 16
.LBB0_70:                               #   in Loop: Header=BB0_71 Depth=2
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB0_2
.LBB0_71:                               # %.lr.ph298
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a2, $a0, $a2
	ld.w	$a3, $a2, 20
	bgtz	$a3, .LBB0_70
# %bb.72:                               #   in Loop: Header=BB0_71 Depth=2
	ld.w	$a3, $a2, 12
	bge	$a3, $s7, .LBB0_2
# %bb.73:                               #   in Loop: Header=BB0_71 Depth=2
	ld.w	$a3, $a2, 4
	bge	$a3, $s6, .LBB0_70
# %bb.74:                               #   in Loop: Header=BB0_71 Depth=2
	ld.w	$a2, $a2, 8
	bge	$s4, $a2, .LBB0_70
	b	.LBB0_3
.LBB0_75:                               # %._crit_edge315
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end0:
	.size	vprobes, .Lfunc_end0-vprobes
                                        # -- End function
	.globl	doubleDown                      # -- Begin function doubleDown
	.p2align	5
	.type	doubleDown,@function
doubleDown:                             # @doubleDown
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(edgeList)
	ld.d	$a1, $a1, %got_pc_lo12(edgeList)
	move	$fp, $a0
	ld.w	$a0, $a0, 0
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	slli.d	$a2, $a0, 5
	alsl.d	$a0, $a0, $a2, 3
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 12
	pcalau12i	$a2, %got_pc_hi20(Hptrs)
	ld.d	$a3, $a2, %got_pc_lo12(Hptrs)
	pcalau12i	$a2, %got_pc_hi20(Hroot)
	ld.d	$a2, $a2, %got_pc_lo12(Hroot)
	ld.w	$s3, $a0, 8
	ld.w	$s5, $a0, 4
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s0, $a3, 0
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $a2, 0
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(tprop)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 3
	ldx.d	$s2, $s0, $a0
	beqz	$s2, .LBB1_17
# %bb.1:                                # %.lr.ph62.preheader
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	addi.w	$s8, $zero, -1
	pcalau12i	$a1, %got_pc_hi20(numProbes)
	ld.d	$s7, $a1, %got_pc_lo12(numProbes)
	pcalau12i	$a1, %got_pc_hi20(edgeCount)
	ld.d	$s0, $a1, %got_pc_lo12(edgeCount)
	pcalau12i	$a1, %got_pc_hi20(vEdgeRoot)
	ld.d	$a1, $a1, %got_pc_lo12(vEdgeRoot)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(fpdebug)
	ld.d	$a1, $a1, %got_pc_lo12(fpdebug)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	move	$a1, $s8
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 0                     # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	b	.LBB1_4
.LBB1_2:                                # %.critedge
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.w	$a1, $s7, 0
	ld.w	$a2, $s0, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $s7, 0
	add.w	$a1, $a2, $a1
	ori	$s1, $zero, 40
	mul.d	$a1, $a1, $s1
	add.d	$a1, $a0, $a1
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	st.w	$s8, $a1, 4
	ld.w	$a1, $s7, 0
	ld.w	$a2, $s0, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s1
	add.d	$a1, $a0, $a1
	st.w	$s5, $a1, 8
	ld.w	$a1, $s7, 0
	ld.w	$a2, $s0, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s1
	add.d	$a1, $a0, $a1
	st.w	$s6, $a1, 12
	ld.w	$a1, $s7, 0
	ld.w	$a2, $s0, 0
	sub.d	$a3, $s5, $s8
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s1
	add.d	$a1, $a0, $a1
	st.w	$a3, $a1, 16
	ld.w	$a1, $s7, 0
	ld.w	$a2, $s0, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s1
	add.d	$a1, $a0, $a1
	st.w	$zero, $a1, 24
	ld.w	$a1, $s7, 0
	ld.w	$a2, $s0, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s1
	stx.w	$zero, $a0, $a1
	ld.w	$a1, $s7, 0
	ld.w	$a2, $s0, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s1
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 20
	ld.w	$a0, $s7, 0
	ld.w	$a1, $s0, 0
	add.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$a1, $s6
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a2, $s7, 0
	ori	$a6, $zero, 1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	move	$a3, $s8
	move	$a4, $s5
	move	$a5, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
	ld.w	$a1, $s0, 0
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $s6, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s7, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s1
	add.d	$a0, $a2, $a0
	st.w	$s8, $a0, 4
	ld.w	$a0, $s7, 0
	ld.w	$a1, $s0, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s1
	add.d	$a0, $a2, $a0
	st.w	$s5, $a0, 8
	ld.w	$a0, $s7, 0
	ld.w	$a1, $s0, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s1
	add.d	$a0, $a2, $a0
	st.w	$s4, $a0, 12
	ld.w	$a0, $s7, 0
	ld.w	$a1, $s0, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s1
	add.d	$a0, $a2, $a0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.w	$a1, $a0, 16
	ld.w	$a0, $s7, 0
	ld.w	$a1, $s0, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s1
	add.d	$a0, $a2, $a0
	st.w	$zero, $a0, 24
	ld.w	$a0, $s7, 0
	ld.w	$a1, $s0, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s1
	stx.w	$zero, $a2, $a0
	ld.w	$a0, $s7, 0
	ld.w	$a1, $s0, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s1
	add.d	$a0, $a2, $a0
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	st.w	$a1, $a0, 20
	ld.w	$a0, $s7, 0
	ld.w	$a1, $s0, 0
	add.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$a1, $s4
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a2, $s7, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	move	$a3, $s8
	move	$a4, $s5
	move	$a5, $s4
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	move	$a6, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_3:                                # %.loopexit
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$s2, $s2, 16
	beqz	$s2, .LBB1_17
.LBB1_4:                                # %.lr.ph62
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_11 Depth 2
	ld.w	$a1, $s2, 0
	slli.d	$a2, $a1, 5
	alsl.d	$a1, $a1, $a2, 3
	add.d	$a1, $a0, $a1
	ld.w	$a2, $a1, 20
	bgtz	$a2, .LBB1_3
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	ld.w	$s4, $a1, 8
	bge	$s4, $s3, .LBB1_3
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	ld.w	$s6, $a1, 4
	bge	$s5, $s6, .LBB1_3
# %bb.7:                                #   in Loop: Header=BB1_4 Depth=1
	ld.w	$a2, $a1, 28
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a2, $a0, $a2
	ld.w	$a2, $a2, 20
	bne	$a2, $s8, .LBB1_3
# %bb.8:                                #   in Loop: Header=BB1_4 Depth=1
	ld.w	$a2, $a1, 32
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a2, $a0, $a2
	ld.w	$a2, $a2, 20
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB1_3
# %bb.9:                                #   in Loop: Header=BB1_4 Depth=1
	ld.w	$s5, $a1, 12
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $a0, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(tprop)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $s1, $a0
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $s8, 0
	bnez	$a1, .LBB1_11
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_10:                               #   in Loop: Header=BB1_11 Depth=2
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB1_2
.LBB1_11:                               # %.lr.ph
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $fp, .LBB1_10
# %bb.12:                               #   in Loop: Header=BB1_11 Depth=2
	ld.w	$a2, $a1, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a2, $a0, $a2
	ld.w	$a3, $a2, 20
	bltz	$a3, .LBB1_10
# %bb.13:                               #   in Loop: Header=BB1_11 Depth=2
	ld.w	$a3, $a2, 12
	blt	$s5, $a3, .LBB1_2
# %bb.14:                               #   in Loop: Header=BB1_11 Depth=2
	ld.w	$a3, $a2, 4
	bge	$a3, $s4, .LBB1_10
# %bb.15:                               #   in Loop: Header=BB1_11 Depth=2
	ld.w	$a2, $a2, 8
	bge	$s6, $a2, .LBB1_10
# %bb.16:                               #   in Loop: Header=BB1_4 Depth=1
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	b	.LBB1_3
.LBB1_17:                               # %._crit_edge
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end1:
	.size	doubleDown, .Lfunc_end1-doubleDown
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"vprobe:%d  "
	.size	.L.str, 12

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"start:%d  end:%d  loc:%d  UorR:%d\n"
	.size	.L.str.1, 35

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"vprobe:%d  start:%d  end:%d  loc:%d  UorR:%d\n"
	.size	.L.str.2, 46

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym vEdgeRoot
