	.file	"hprobes.c"
	.text
	.globl	hprobes                         # -- Begin function hprobes
	.p2align	5
	.type	hprobes,@function
hprobes:                                # @hprobes
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
	pcalau12i	$a0, %got_pc_hi20(vFixedList)
	ld.d	$a0, $a0, %got_pc_lo12(vFixedList)
	ld.d	$fp, $a0, 0
	beqz	$fp, .LBB0_74
# %bb.1:                                # %.lr.ph314.preheader
	pcalau12i	$a0, %got_pc_hi20(edgeList)
	ld.d	$s1, $a0, %got_pc_lo12(edgeList)
	pcalau12i	$a0, %got_pc_hi20(Vptrs)
	ld.d	$s8, $a0, %got_pc_lo12(Vptrs)
	pcalau12i	$a0, %got_pc_hi20(Vroot)
	ld.d	$a1, $a0, %got_pc_lo12(Vroot)
                                        # implicit-def: $r27
                                        # implicit-def: $r30
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	b	.LBB0_6
.LBB0_2:                                # %.critedge238
                                        #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a1, %got_pc_hi20(numProbes)
	ld.d	$s5, $a1, %got_pc_lo12(numProbes)
	pcalau12i	$a1, %got_pc_hi20(edgeCount)
	ld.d	$s8, $a1, %got_pc_lo12(edgeCount)
	ld.w	$a1, $s5, 0
	ld.w	$a2, $s8, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $s5, 0
	add.w	$a1, $a2, $a1
	ori	$s0, $zero, 40
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a0, $a1
	st.w	$s6, $a1, 4
	ld.w	$a1, $s5, 0
	ld.w	$a2, $s8, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a0, $a1
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	st.w	$s1, $a1, 8
	ld.w	$a1, $s5, 0
	ld.w	$a2, $s8, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a0, $a1
	st.w	$s2, $a1, 12
	ld.w	$a1, $s5, 0
	ld.w	$a2, $s8, 0
	sub.d	$a3, $s1, $s6
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a0, $a1
	st.w	$a3, $a1, 16
	ld.w	$a1, $s5, 0
	ld.w	$a2, $s8, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a0, $a1
	st.w	$zero, $a1, 24
	ld.w	$a1, $s5, 0
	ld.w	$a2, $s8, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s0
	stx.w	$zero, $a0, $a1
	ld.w	$a1, $s5, 0
	ld.w	$a2, $s8, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s0
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 20
	ld.w	$a0, $s5, 0
	ld.w	$a1, $s8, 0
	add.w	$a2, $a1, $a0
	pcalau12i	$a0, %got_pc_hi20(hEdgeRoot)
	ld.d	$a0, $a0, %got_pc_lo12(hEdgeRoot)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$a1, $s4
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(fpdebug)
	ld.d	$s2, $a0, %got_pc_lo12(fpdebug)
	ld.d	$a0, $s2, 0
	ld.w	$a2, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ori	$a5, $zero, 1
	move	$a2, $s6
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 0
	ld.w	$a1, $s8, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s0
	add.d	$a0, $a2, $a0
	st.w	$s6, $a0, 4
	ld.w	$a0, $s5, 0
	ld.w	$a1, $s8, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s0
	add.d	$a0, $a2, $a0
	st.w	$s1, $a0, 8
	ld.w	$a0, $s5, 0
	ld.w	$a1, $s8, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s0
	add.d	$a0, $a2, $a0
	st.w	$s7, $a0, 12
	ld.w	$a0, $s5, 0
	ld.w	$a1, $s8, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s0
	add.d	$a0, $a2, $a0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.w	$a1, $a0, 16
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $s5, 0
	ld.w	$a1, $s8, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s0
	add.d	$a0, $a2, $a0
	st.w	$zero, $a0, 24
	ld.w	$a0, $s5, 0
	ld.w	$a1, $s8, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s0
	stx.w	$zero, $a2, $a0
	ld.w	$a0, $s5, 0
	ld.w	$a1, $s8, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s0
	add.d	$a0, $a2, $a0
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	move	$a1, $s0
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 20
	ld.w	$a0, $s5, 0
	ld.w	$a1, $s8, 0
	add.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.w	$a2, $s5, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	move	$a2, $s6
	move	$a3, $s3
	move	$a4, $s7
	move	$a5, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB0_3:                                # %.loopexit
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(doubleBack)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
.LBB0_4:                                #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s7, $sp, 104                   # 8-byte Folded Reload
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=1
	ld.d	$fp, $fp, 16
	beqz	$fp, .LBB0_74
.LBB0_6:                                # %.lr.ph314
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
                                        #     Child Loop BB0_21 Depth 2
                                        #     Child Loop BB0_38 Depth 2
                                        #     Child Loop BB0_53 Depth 2
                                        #     Child Loop BB0_57 Depth 2
                                        #     Child Loop BB0_49 Depth 2
                                        #     Child Loop BB0_66 Depth 2
                                        #     Child Loop BB0_70 Depth 2
                                        #     Child Loop BB0_31 Depth 2
	ld.w	$s2, $fp, 0
	ld.d	$a0, $s1, 0
	slli.d	$a1, $s2, 5
	alsl.d	$a1, $s2, $a1, 3
	add.d	$a1, $a0, $a1
	ld.w	$a2, $a1, 20
	bgtz	$a2, .LBB0_5
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a2, $a1, 28
	ld.w	$s6, $a1, 12
	ld.w	$a3, $a1, 4
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a2, $a0, $a2
	ld.w	$a2, $a2, 20
	ld.w	$s3, $a1, 8
	ori	$a1, $zero, 1
	bne	$a2, $a1, .LBB0_14
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s0, $s8, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(tprop)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 3
	ldx.d	$s5, $s0, $a0
	ld.d	$a0, $s1, 0
	beqz	$s5, .LBB0_14
# %bb.9:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_10:                               #   in Loop: Header=BB0_11 Depth=2
	ld.d	$s5, $s5, 16
	beqz	$s5, .LBB0_15
.LBB0_11:                               # %.lr.ph
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s5, 0
	slli.d	$a2, $a1, 5
	alsl.d	$a1, $a1, $a2, 3
	add.d	$a1, $a0, $a1
	ld.w	$a2, $a1, 20
	bltz	$a2, .LBB0_10
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=2
	ld.w	$s4, $a1, 12
	ld.w	$a2, $a1, 8
	ld.w	$s7, $a1, 4
	blt	$a2, $s3, .LBB0_10
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=2
	bge	$s7, $s3, .LBB0_10
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_14:                               #   in Loop: Header=BB0_6 Depth=1
	move	$s5, $zero
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	b	.LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_6 Depth=1
	move	$s5, $zero
	.p2align	4, , 16
.LBB0_16:                               # %.loopexit245
                                        #   in Loop: Header=BB0_6 Depth=1
	st.d	$s7, $sp, 104                   # 8-byte Folded Spill
	ori	$a2, $zero, 40
	mul.d	$a1, $s2, $a2
	add.d	$a1, $a0, $a1
	ld.w	$a1, $a1, 32
	mul.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	ld.w	$a0, $a0, 20
	addi.w	$a1, $zero, -1
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	beq	$a0, $a1, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_6 Depth=1
	move	$s7, $zero
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	b	.LBB0_26
.LBB0_18:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s0, $s8, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(tprop)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 3
	ldx.d	$s7, $s0, $a0
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	beqz	$s7, .LBB0_25
# %bb.19:                               # %.lr.ph264
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	b	.LBB0_21
	.p2align	4, , 16
.LBB0_20:                               #   in Loop: Header=BB0_21 Depth=2
	ld.d	$s7, $s7, 16
	beqz	$s7, .LBB0_24
.LBB0_21:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s7, 0
	slli.d	$a2, $a1, 5
	alsl.d	$a1, $a1, $a2, 3
	add.d	$a1, $a0, $a1
	ld.w	$a2, $a1, 20
	bltz	$a2, .LBB0_20
# %bb.22:                               #   in Loop: Header=BB0_21 Depth=2
	ld.w	$s2, $a1, 8
	ld.w	$a3, $a1, 12
	bge	$a4, $s2, .LBB0_20
# %bb.23:                               #   in Loop: Header=BB0_21 Depth=2
	ld.w	$a1, $a1, 4
	blt	$a4, $a1, .LBB0_20
	b	.LBB0_26
.LBB0_24:                               #   in Loop: Header=BB0_6 Depth=1
	move	$s7, $zero
	b	.LBB0_26
.LBB0_25:                               #   in Loop: Header=BB0_6 Depth=1
	move	$s7, $zero
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_26:                               # %.loopexit244
                                        #   in Loop: Header=BB0_6 Depth=1
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 96                    # 8-byte Folded Spill
	addi.w	$s4, $s4, 0
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	beqz	$s5, .LBB0_35
# %bb.27:                               # %.loopexit244
                                        #   in Loop: Header=BB0_6 Depth=1
	bne	$s5, $s7, .LBB0_35
# %bb.28:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s0, $s8, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$s7, $s6
	move	$a1, $s6
	pcaddu18i	$ra, %call36(tprop)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $s0, $a0
	ld.d	$a0, $s1, 0
	bnez	$a1, .LBB0_31
.LBB0_29:                               # %.critedge
                                        #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a1, %got_pc_hi20(numProbes)
	ld.d	$s8, $a1, %got_pc_lo12(numProbes)
	pcalau12i	$a1, %got_pc_hi20(edgeCount)
	ld.d	$s2, $a1, %got_pc_lo12(edgeCount)
	ld.w	$a1, $s8, 0
	ld.w	$a2, $s2, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $s8, 0
	add.w	$a1, $a2, $a1
	ori	$s0, $zero, 40
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a0, $a1
	st.w	$s7, $a1, 4
	ld.w	$a1, $s8, 0
	ld.w	$a2, $s2, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a0, $a1
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	st.w	$s5, $a1, 8
	ld.w	$a1, $s8, 0
	ld.w	$a2, $s2, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a0, $a1
	st.w	$s3, $a1, 12
	ld.w	$a1, $s8, 0
	ld.w	$a2, $s2, 0
	sub.d	$a3, $s5, $s7
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a0, $a1
	st.w	$a3, $a1, 16
	ld.w	$a1, $s8, 0
	ld.w	$a2, $s2, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a0, $a1
	st.w	$zero, $a1, 24
	ld.w	$a1, $s8, 0
	ld.w	$a2, $s2, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s0
	stx.w	$zero, $a0, $a1
	ld.w	$a1, $s8, 0
	ld.w	$a2, $s2, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s0
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 20
	ld.w	$a0, $s8, 0
	ld.w	$a1, $s2, 0
	add.w	$a2, $a1, $a0
	pcalau12i	$a0, %got_pc_hi20(hEdgeRoot)
	ld.d	$a0, $a0, %got_pc_lo12(hEdgeRoot)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$a1, $s3
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(fpdebug)
	ld.d	$s1, $a0, %got_pc_lo12(fpdebug)
	ld.d	$a0, $s1, 0
	ld.w	$a2, $s8, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ori	$a5, $zero, 1
	move	$a2, $s7
	move	$a3, $s4
	move	$a4, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 0
	ld.w	$a1, $s2, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s8, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s0
	add.d	$a0, $a2, $a0
	st.w	$s7, $a0, 4
	ld.w	$a0, $s8, 0
	ld.w	$a1, $s2, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s0
	add.d	$a0, $a2, $a0
	st.w	$s5, $a0, 8
	ld.w	$a0, $s8, 0
	ld.w	$a1, $s2, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s0
	add.d	$a0, $a2, $a0
	st.w	$s6, $a0, 12
	ld.w	$a0, $s8, 0
	ld.w	$a1, $s2, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s0
	add.d	$a0, $a2, $a0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.w	$a1, $a0, 16
	ld.w	$a0, $s8, 0
	ld.w	$a1, $s2, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s0
	add.d	$a0, $a2, $a0
	st.w	$zero, $a0, 24
	ld.w	$a0, $s8, 0
	ld.w	$a1, $s2, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s0
	stx.w	$zero, $a2, $a0
	ld.w	$a0, $s8, 0
	ld.w	$a1, $s2, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s0
	add.d	$a0, $a2, $a0
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	move	$a1, $s0
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 20
	ld.w	$a0, $s8, 0
	ld.w	$a1, $s2, 0
	add.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$a1, $s6
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a2, $s8, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	move	$a2, $s7
	move	$a3, $s4
	move	$s4, $s5
	move	$a4, $s6
	move	$a5, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_30:                               #   in Loop: Header=BB0_31 Depth=2
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB0_29
.LBB0_31:                               # %.lr.ph304
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a2, $a0, $a2
	ld.w	$a3, $a2, 20
	bltz	$a3, .LBB0_30
# %bb.32:                               #   in Loop: Header=BB0_31 Depth=2
	ld.w	$a3, $a2, 12
	bge	$a3, $s4, .LBB0_29
# %bb.33:                               #   in Loop: Header=BB0_31 Depth=2
	ld.w	$a3, $a2, 4
	bge	$a3, $s3, .LBB0_30
# %bb.34:                               #   in Loop: Header=BB0_31 Depth=2
	ld.w	$a2, $a2, 8
	bge	$s6, $a2, .LBB0_30
	b	.LBB0_3
.LBB0_35:                               #   in Loop: Header=BB0_6 Depth=1
	beqz	$s5, .LBB0_46
# %bb.36:                               #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $s5, 0
	ld.d	$a1, $s1, 0
	ori	$a2, $zero, 40
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 28
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 20
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_46
# %bb.37:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s0, $s8, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(tprop)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $s0, $a0
	ld.d	$a0, $s1, 0
	.p2align	4, , 16
.LBB0_38:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB0_41
# %bb.39:                               #   in Loop: Header=BB0_38 Depth=2
	ld.w	$a2, $a1, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a2, $a0, $a2
	ld.w	$a2, $a2, 12
	bge	$s4, $a2, .LBB0_38
# %bb.40:                               #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a1, $a1, 8
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	addi.w	$s5, $a2, 0
	bnez	$a1, .LBB0_53
	b	.LBB0_42
.LBB0_41:                               #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a1, %got_pc_hi20(vFixedEnd)
	ld.d	$a1, $a1, %got_pc_lo12(vFixedEnd)
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	addi.w	$s5, $a2, 0
	bnez	$a1, .LBB0_53
.LBB0_42:                               #   in Loop: Header=BB0_6 Depth=1
	move	$a1, $zero
.LBB0_43:                               # %._crit_edge
                                        #   in Loop: Header=BB0_6 Depth=1
	bne	$fp, $a1, .LBB0_46
# %bb.44:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s0, $s8, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(tprop)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $s0, $a0
	ld.d	$a0, $s1, 0
	bnez	$a1, .LBB0_57
.LBB0_45:                               # %.critedge235
                                        #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a1, %got_pc_hi20(numProbes)
	st.d	$s6, $sp, 48                    # 8-byte Folded Spill
	ld.d	$s6, $a1, %got_pc_lo12(numProbes)
	pcalau12i	$a1, %got_pc_hi20(edgeCount)
	ld.d	$s8, $a1, %got_pc_lo12(edgeCount)
	ld.w	$a1, $s6, 0
	ld.w	$a2, $s8, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $s6, 0
	add.w	$a1, $a2, $a1
	ori	$s0, $zero, 40
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a0, $a1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.w	$a2, $a1, 4
	ld.w	$a1, $s6, 0
	ld.w	$a2, $s8, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a0, $a1
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	st.w	$s1, $a1, 8
	ld.w	$a1, $s6, 0
	ld.w	$a2, $s8, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a0, $a1
	st.w	$s3, $a1, 12
	ld.w	$a1, $s6, 0
	ld.w	$a2, $s8, 0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a3, $s1, $a3
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a0, $a1
	st.w	$a3, $a1, 16
	ld.w	$a1, $s6, 0
	ld.w	$a2, $s8, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a0, $a1
	st.w	$zero, $a1, 24
	ld.w	$a1, $s6, 0
	ld.w	$a2, $s8, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s0
	stx.w	$zero, $a0, $a1
	ld.w	$a1, $s6, 0
	ld.w	$a2, $s8, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s0
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 20
	ld.w	$a0, $s6, 0
	ld.w	$a1, $s8, 0
	add.w	$a2, $a1, $a0
	pcalau12i	$a0, %got_pc_hi20(hEdgeRoot)
	ld.d	$a0, $a0, %got_pc_lo12(hEdgeRoot)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$a1, $s3
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(fpdebug)
	ld.d	$s2, $a0, %got_pc_lo12(fpdebug)
	ld.d	$a0, $s2, 0
	ld.w	$a2, $s6, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ori	$a5, $zero, 1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	move	$a3, $s4
	move	$a4, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	ld.w	$a1, $s8, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s0
	add.d	$a0, $a2, $a0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.w	$a1, $a0, 4
	ld.w	$a0, $s6, 0
	ld.w	$a1, $s8, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s0
	add.d	$a0, $a2, $a0
	st.w	$s1, $a0, 8
	ld.w	$a0, $s6, 0
	ld.w	$a1, $s8, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s0
	add.d	$a0, $a2, $a0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.w	$a1, $a0, 12
	ld.w	$a0, $s6, 0
	ld.w	$a1, $s8, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s0
	add.d	$a0, $a2, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.w	$a1, $a0, 16
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $s6, 0
	ld.w	$a1, $s8, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s0
	add.d	$a0, $a2, $a0
	st.w	$zero, $a0, 24
	ld.w	$a0, $s6, 0
	ld.w	$a1, $s8, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s0
	stx.w	$zero, $a2, $a0
	ld.w	$a0, $s6, 0
	ld.w	$a1, $s8, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s0
	add.d	$a0, $a2, $a0
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	move	$a1, $s0
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 20
	ld.w	$a0, $s6, 0
	ld.w	$a1, $s8, 0
	add.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $s5
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.w	$a2, $s6, 0
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	move	$a2, $s6
	move	$a3, $s4
	move	$a4, $s5
	move	$a5, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_46:                               # %.loopexit242
                                        #   in Loop: Header=BB0_6 Depth=1
	beqz	$s7, .LBB0_3
# %bb.47:                               #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s1, 0
	ori	$a2, $zero, 40
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 32
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 20
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_3
# %bb.48:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s0, $s8, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	addi.w	$s3, $a1, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(tprop)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $s0, $a0
	ld.d	$a0, $s1, 0
	.p2align	4, , 16
.LBB0_49:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB0_61
# %bb.50:                               #   in Loop: Header=BB0_49 Depth=2
	ld.w	$a2, $a1, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a2, $a0, $a2
	ld.w	$a2, $a2, 12
	bge	$s3, $a2, .LBB0_49
# %bb.51:                               #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a1, $a1, 8
	ld.d	$a1, $a1, 0
	addi.w	$s4, $s2, 0
	bnez	$a1, .LBB0_66
	b	.LBB0_62
	.p2align	4, , 16
.LBB0_52:                               #   in Loop: Header=BB0_53 Depth=2
	ld.d	$a1, $a1, 8
	beqz	$a1, .LBB0_42
.LBB0_53:                               # %.lr.ph275
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a2, $a0, $a2
	ld.w	$a3, $a2, 20
	bgtz	$a3, .LBB0_52
# %bb.54:                               #   in Loop: Header=BB0_53 Depth=2
	ld.w	$a3, $a2, 8
	bge	$s5, $a3, .LBB0_52
# %bb.55:                               #   in Loop: Header=BB0_53 Depth=2
	ld.w	$a2, $a2, 4
	blt	$s5, $a2, .LBB0_52
	b	.LBB0_43
	.p2align	4, , 16
.LBB0_56:                               #   in Loop: Header=BB0_57 Depth=2
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB0_45
.LBB0_57:                               # %.lr.ph283
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a2, $a0, $a2
	ld.w	$a3, $a2, 20
	bltz	$a3, .LBB0_56
# %bb.58:                               #   in Loop: Header=BB0_57 Depth=2
	ld.w	$a3, $a2, 12
	bge	$a3, $s4, .LBB0_45
# %bb.59:                               #   in Loop: Header=BB0_57 Depth=2
	ld.w	$a3, $a2, 4
	bge	$a3, $s3, .LBB0_56
# %bb.60:                               #   in Loop: Header=BB0_57 Depth=2
	ld.w	$a2, $a2, 8
	bge	$s5, $a2, .LBB0_56
	b	.LBB0_46
.LBB0_61:                               #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a1, %got_pc_hi20(vFixedEnd)
	ld.d	$a1, $a1, %got_pc_lo12(vFixedEnd)
	ld.d	$a1, $a1, 0
	addi.w	$s4, $s2, 0
	bnez	$a1, .LBB0_66
.LBB0_62:                               #   in Loop: Header=BB0_6 Depth=1
	move	$a1, $zero
.LBB0_63:                               # %._crit_edge290
                                        #   in Loop: Header=BB0_6 Depth=1
	bne	$fp, $a1, .LBB0_3
# %bb.64:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s0, $s8, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(tprop)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $s0, $a0
	ld.d	$a0, $s1, 0
	bnez	$a1, .LBB0_70
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_65:                               #   in Loop: Header=BB0_66 Depth=2
	ld.d	$a1, $a1, 8
	beqz	$a1, .LBB0_62
.LBB0_66:                               # %.lr.ph289
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a2, $a0, $a2
	ld.w	$a3, $a2, 20
	bgtz	$a3, .LBB0_65
# %bb.67:                               #   in Loop: Header=BB0_66 Depth=2
	ld.w	$a3, $a2, 8
	blt	$a3, $s4, .LBB0_65
# %bb.68:                               #   in Loop: Header=BB0_66 Depth=2
	ld.w	$a2, $a2, 4
	bge	$a2, $s4, .LBB0_65
	b	.LBB0_63
	.p2align	4, , 16
.LBB0_69:                               #   in Loop: Header=BB0_70 Depth=2
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB0_2
.LBB0_70:                               # %.lr.ph298
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a2, $a0, $a2
	ld.w	$a3, $a2, 20
	bltz	$a3, .LBB0_69
# %bb.71:                               #   in Loop: Header=BB0_70 Depth=2
	ld.w	$a3, $a2, 12
	bge	$a3, $s3, .LBB0_2
# %bb.72:                               #   in Loop: Header=BB0_70 Depth=2
	ld.w	$a3, $a2, 4
	bge	$a3, $s4, .LBB0_69
# %bb.73:                               #   in Loop: Header=BB0_70 Depth=2
	ld.w	$a2, $a2, 8
	bge	$s7, $a2, .LBB0_69
	b	.LBB0_3
.LBB0_74:                               # %._crit_edge315
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
	.size	hprobes, .Lfunc_end0-hprobes
                                        # -- End function
	.globl	doubleBack                      # -- Begin function doubleBack
	.p2align	5
	.type	doubleBack,@function
doubleBack:                             # @doubleBack
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
	pcalau12i	$a2, %got_pc_hi20(Vptrs)
	ld.d	$a3, $a2, %got_pc_lo12(Vptrs)
	pcalau12i	$a2, %got_pc_hi20(Vroot)
	ld.d	$a2, $a2, %got_pc_lo12(Vroot)
	ld.w	$s2, $a0, 8
	ld.w	$s8, $a0, 4
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	ld.d	$s0, $a3, 0
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $a2, 0
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(tprop)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 3
	ldx.d	$s3, $s0, $a0
	beqz	$s3, .LBB1_17
# %bb.1:                                # %.lr.ph62.preheader
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	addi.w	$s1, $zero, -1
	pcalau12i	$a1, %got_pc_hi20(numProbes)
	ld.d	$s7, $a1, %got_pc_lo12(numProbes)
	pcalau12i	$a1, %got_pc_hi20(edgeCount)
	ld.d	$s0, $a1, %got_pc_lo12(edgeCount)
	pcalau12i	$a1, %got_pc_hi20(hEdgeRoot)
	ld.d	$a1, $a1, %got_pc_lo12(hEdgeRoot)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(fpdebug)
	ld.d	$a1, $a1, %got_pc_lo12(fpdebug)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	move	$a1, $s1
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 0                     # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	b	.LBB1_4
.LBB1_2:                                # %.critedge
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.w	$a1, $s7, 0
	ld.w	$a2, $s0, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $s7, 0
	add.w	$a1, $a2, $a1
	ori	$s8, $zero, 40
	mul.d	$a1, $a1, $s8
	add.d	$a1, $a0, $a1
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	st.w	$s1, $a1, 4
	ld.w	$a1, $s7, 0
	ld.w	$a2, $s0, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s8
	add.d	$a1, $a0, $a1
	st.w	$s5, $a1, 8
	ld.w	$a1, $s7, 0
	ld.w	$a2, $s0, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s8
	add.d	$a1, $a0, $a1
	st.w	$s6, $a1, 12
	ld.w	$a1, $s7, 0
	ld.w	$a2, $s0, 0
	sub.d	$a3, $s5, $s1
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s8
	add.d	$a1, $a0, $a1
	st.w	$a3, $a1, 16
	ld.w	$a1, $s7, 0
	ld.w	$a2, $s0, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s8
	add.d	$a1, $a0, $a1
	st.w	$zero, $a1, 24
	ld.w	$a1, $s7, 0
	ld.w	$a2, $s0, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s8
	stx.w	$zero, $a0, $a1
	ld.w	$a1, $s7, 0
	ld.w	$a2, $s0, 0
	add.w	$a1, $a2, $a1
	mul.d	$a1, $a1, $s8
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
	move	$a3, $s1
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
	mul.d	$a0, $a0, $s8
	add.d	$a0, $a2, $a0
	st.w	$s1, $a0, 4
	ld.w	$a0, $s7, 0
	ld.w	$a1, $s0, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s8
	add.d	$a0, $a2, $a0
	st.w	$s5, $a0, 8
	ld.w	$a0, $s7, 0
	ld.w	$a1, $s0, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s8
	add.d	$a0, $a2, $a0
	st.w	$s4, $a0, 12
	ld.w	$a0, $s7, 0
	ld.w	$a1, $s0, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s8
	add.d	$a0, $a2, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.w	$a1, $a0, 16
	ld.w	$a0, $s7, 0
	ld.w	$a1, $s0, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s8
	add.d	$a0, $a2, $a0
	st.w	$zero, $a0, 24
	ld.w	$a0, $s7, 0
	ld.w	$a1, $s0, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s8
	stx.w	$zero, $a2, $a0
	ld.w	$a0, $s7, 0
	ld.w	$a1, $s0, 0
	add.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s8
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
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
	move	$a3, $s1
	move	$a4, $s5
	move	$a5, $s4
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	move	$a6, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	.p2align	4, , 16
.LBB1_3:                                # %.loopexit
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$s3, $s3, 16
	beqz	$s3, .LBB1_17
.LBB1_4:                                # %.lr.ph62
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_11 Depth 2
	ld.w	$a1, $s3, 0
	slli.d	$a2, $a1, 5
	alsl.d	$a1, $a1, $a2, 3
	add.d	$a1, $a0, $a1
	ld.w	$a2, $a1, 20
	bltz	$a2, .LBB1_3
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	ld.w	$s6, $a1, 8
	bge	$s6, $s2, .LBB1_3
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	ld.w	$s4, $a1, 4
	bge	$s8, $s4, .LBB1_3
# %bb.7:                                #   in Loop: Header=BB1_4 Depth=1
	ld.w	$a2, $a1, 28
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a2, $a0, $a2
	ld.w	$a2, $a2, 20
	bne	$a2, $s1, .LBB1_3
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
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $a0, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(tprop)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $s1, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
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
	bgtz	$a3, .LBB1_10
# %bb.13:                               #   in Loop: Header=BB1_11 Depth=2
	ld.w	$a3, $a2, 12
	blt	$s5, $a3, .LBB1_2
# %bb.14:                               #   in Loop: Header=BB1_11 Depth=2
	ld.w	$a3, $a2, 4
	bge	$a3, $s6, .LBB1_10
# %bb.15:                               #   in Loop: Header=BB1_11 Depth=2
	ld.w	$a2, $a2, 8
	bge	$s4, $a2, .LBB1_10
# %bb.16:                               #   in Loop: Header=BB1_4 Depth=1
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
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
	.size	doubleBack, .Lfunc_end1-doubleBack
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"hprobe:%d  "
	.size	.L.str, 12

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"start:%d  end:%d  loc:%d  UorR:%d\n"
	.size	.L.str.1, 35

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"hprobe:%d  start:%d  end:%d  loc:%d  UorR:%d\n"
	.size	.L.str.2, 46

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym hEdgeRoot
