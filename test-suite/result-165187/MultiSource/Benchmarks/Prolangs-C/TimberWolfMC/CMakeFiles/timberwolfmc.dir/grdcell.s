	.file	"grdcell.c"
	.text
	.globl	grdcell                         # -- Begin function grdcell
	.p2align	5
	.type	grdcell,@function
grdcell:                                # @grdcell
# %bb.0:
	addi.d	$sp, $sp, -1360
	st.d	$ra, $sp, 1352                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1344                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1336                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1328                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1320                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1312                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1304                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1296                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1288                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1280                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1272                  # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(gpass2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(ecount)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(ecount)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 176
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ori	$s7, $zero, 1
	bne	$a0, $s7, .LBB0_63
# %bb.1:                                # %.lr.ph315.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$a0, $a0, %got_pc_lo12(cellarray)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(A)
	ld.d	$s1, $a0, %got_pc_lo12(A)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s3, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	st.d	$zero, $sp, 168                 # 8-byte Folded Spill
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	lu12i.w	$a0, 1606
	ori	$a1, $a0, 368
	lu12i.w	$a0, 472646
	ori	$a0, $a0, 368
	lu32i.d	$a0, 353385
	lu52i.d	$a0, $a0, 6
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	lu12i.w	$a0, 1766
	ori	$a0, $a0, 2416
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
                                        # implicit-def: $r28
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r23
                                        # implicit-def: $r27
                                        # implicit-def: $r31
                                        # implicit-def: $r25
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	b	.LBB0_5
.LBB0_2:                                #   in Loop: Header=BB0_5 Depth=1
	move	$s2, $s4
	move	$s8, $s0
.LBB0_3:                                # %._crit_edge277
                                        #   in Loop: Header=BB0_5 Depth=1
	add.d	$a0, $s4, $s2
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	add.d	$a0, $s0, $s8
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
.LBB0_4:                                # %.loopexit
                                        #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 176
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	bne	$a0, $s7, .LBB0_63
.LBB0_5:                                # %.lr.ph315
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_18 Depth 2
                                        #       Child Loop BB0_19 Depth 3
                                        #     Child Loop BB0_55 Depth 2
                                        #     Child Loop BB0_58 Depth 2
                                        #     Child Loop BB0_49 Depth 2
                                        #     Child Loop BB0_52 Depth 2
                                        #     Child Loop BB0_32 Depth 2
                                        #     Child Loop BB0_28 Depth 2
                                        #     Child Loop BB0_46 Depth 2
                                        #     Child Loop BB0_24 Depth 2
                                        #     Child Loop BB0_36 Depth 2
                                        #     Child Loop BB0_40 Depth 2
	addi.d	$a0, $sp, 176
	ori	$a2, $zero, 5
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_22
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	ld.w	$a0, $sp, 176
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_26
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 176
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_30
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	addi.d	$a0, $sp, 176
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_41
# %bb.9:                                #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	addi.d	$a0, $sp, 176
	ori	$a2, $zero, 9
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_47
# %bb.10:                               #   in Loop: Header=BB0_5 Depth=1
	ld.w	$a0, $sp, 176
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_54
# %bb.11:                               #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	addi.d	$a0, $sp, 176
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_60
# %bb.12:                               #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	addi.d	$a0, $sp, 176
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_61
# %bb.13:                               #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	addi.d	$a0, $sp, 176
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_62
# %bb.14:                               #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	addi.d	$a0, $sp, 176
	ori	$a2, $zero, 9
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	addi.d	$a0, $sp, 176
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_4
.LBB0_16:                               #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1256
	blez	$a0, .LBB0_21
# %bb.17:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB0_18:                               # %.lr.ph
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_19 Depth 3
	move	$s6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s5, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 176
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 176
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 176
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 104                   # 8-byte Folded Reload
	addi.w	$s7, $s7, 1
	addi.d	$a2, $sp, 176
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 176
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 176
	pcaddu18i	$ra, %call36(hashfind)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(netarray)
	ld.d	$a1, $a1, %got_pc_lo12(netarray)
	ld.d	$a1, $a1, 0
	slli.d	$a0, $a0, 3
	ldx.d	$s5, $a1, $a0
	.p2align	4, , 16
.LBB0_19:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s5, $s5, 0
	ld.w	$a0, $s5, 24
	bne	$a0, $s7, .LBB0_19
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	st.d	$s7, $sp, 104                   # 8-byte Folded Spill
	ld.w	$a1, $sp, 1256
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	st.w	$a0, $s5, 32
	ori	$s7, $zero, 1
	st.w	$s7, $s5, 36
	addi.w	$a0, $s6, 1
	blt	$s6, $a1, .LBB0_18
.LBB0_21:                               # %._crit_edge
                                        #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 176
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	addi.d	$a2, $sp, 1252
	addi.d	$a3, $sp, 1248
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_22:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a2, $sp, 1228
	move	$a0, $fp
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 176
	move	$a0, $fp
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 176
	move	$a0, $fp
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ori	$a2, $zero, 248
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 1244
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 176
	move	$a0, $fp
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1244
	blez	$a0, .LBB0_33
# %bb.23:                               # %.lr.ph286.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$s6, $zero
	.p2align	4, , 16
.LBB0_24:                               # %.lr.ph286
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	addi.d	$a2, $sp, 1236
	addi.d	$a3, $sp, 1232
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 0
	ld.w	$a2, $sp, 1236
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 0
	slli.d	$a1, $a1, 3
	stx.w	$a2, $a0, $a1
	ld.w	$a1, $a0, 0
	ld.w	$a2, $sp, 1232
	alsl.d	$a3, $a1, $a0, 3
	st.w	$a2, $a3, 4
	ld.w	$a2, $sp, 1244
	addi.w	$s6, $s6, 1
	blt	$s6, $a2, .LBB0_24
# %bb.25:                               # %.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	bgtz	$a1, .LBB0_34
	b	.LBB0_38
	.p2align	4, , 16
.LBB0_26:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	addi.d	$a2, $sp, 1228
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s6, $a0, %pc_lo12(.L.str.3)
	addi.d	$a2, $sp, 176
	move	$a0, $fp
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 176
	move	$a0, $fp
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ori	$a2, $zero, 248
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1244
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 176
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1244
	blez	$a0, .LBB0_43
# %bb.27:                               # %.lr.ph269.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$s6, $zero
	.p2align	4, , 16
.LBB0_28:                               # %.lr.ph269
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	addi.d	$a2, $sp, 1236
	addi.d	$a3, $sp, 1232
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 0
	ld.w	$a2, $sp, 1236
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 0
	slli.d	$a1, $a1, 3
	stx.w	$a2, $a0, $a1
	ld.w	$a1, $a0, 0
	ld.w	$a2, $sp, 1232
	alsl.d	$a3, $a1, $a0, 3
	st.w	$a2, $a3, 4
	ld.w	$a2, $sp, 1244
	addi.w	$s6, $s6, 1
	blt	$s6, $a2, .LBB0_28
# %bb.29:                               # %.preheader245
                                        #   in Loop: Header=BB0_5 Depth=1
	bgtz	$a1, .LBB0_44
	b	.LBB0_3
.LBB0_30:                               #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s7, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 176
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 176
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s6, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1268
	move	$a0, $fp
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 1240
	move	$a0, $fp
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 176
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1240
	blez	$a0, .LBB0_53
# %bb.31:                               # %.lr.ph264.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$s6, $zero
	ori	$s7, $zero, 1
	.p2align	4, , 16
.LBB0_32:                               # %.lr.ph264
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1236
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1240
	addi.w	$s6, $s6, 1
	blt	$s6, $a0, .LBB0_32
	b	.LBB0_4
.LBB0_33:                               # %..preheader_crit_edge
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 0
	blez	$a1, .LBB0_38
.LBB0_34:                               #   in Loop: Header=BB0_5 Depth=1
	ld.w	$s4, $a0, 8
	ld.w	$s0, $a0, 12
	st.w	$s4, $sp, 1236
	st.w	$s0, $sp, 1232
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB0_37
# %bb.35:                               # %.lr.ph293.peel.next.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$a1, $a0, 20
	ori	$a2, $zero, 1
	move	$s8, $s0
	move	$s2, $s4
	.p2align	4, , 16
.LBB0_36:                               # %.lr.ph293.peel.next
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a1, -4
	st.w	$a3, $sp, 1236
	ld.w	$a4, $a1, 0
	st.w	$a4, $sp, 1232
	slt	$a5, $a3, $s2
	masknez	$a6, $s2, $a5
	maskeqz	$a5, $a3, $a5
	or	$s2, $a5, $a6
	slt	$a5, $s4, $a3
	masknez	$a6, $s4, $a5
	maskeqz	$a3, $a3, $a5
	or	$s4, $a3, $a6
	slt	$a3, $a4, $s8
	masknez	$a5, $s8, $a3
	maskeqz	$a3, $a4, $a3
	or	$s8, $a3, $a5
	slt	$a3, $s0, $a4
	masknez	$a5, $s0, $a3
	ld.w	$a6, $a0, 0
	maskeqz	$a3, $a4, $a3
	or	$s0, $a3, $a5
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 8
	blt	$a2, $a6, .LBB0_36
	b	.LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_5 Depth=1
	move	$s2, $s4
	move	$s8, $s0
.LBB0_38:                               # %._crit_edge294
                                        #   in Loop: Header=BB0_5 Depth=1
	add.d	$a0, $s4, $s2
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	add.d	$a0, $s0, $s8
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a2, $sp, 176
	move	$a0, $fp
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 1268
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 1240
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 176
	move	$a0, $fp
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1240
	blez	$a0, .LBB0_4
# %bb.39:                               # %.lr.ph302.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$s6, $zero
	.p2align	4, , 16
.LBB0_40:                               # %.lr.ph302
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a2, $sp, 1236
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1240
	addi.w	$s6, $s6, 1
	blt	$s6, $a0, .LBB0_40
	b	.LBB0_4
.LBB0_41:                               #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	addi.d	$a2, $sp, 1200
.LBB0_42:                               # %.loopexit
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	b	.LBB0_4
.LBB0_43:                               # %..preheader245_crit_edge
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 0
	blez	$a1, .LBB0_3
.LBB0_44:                               #   in Loop: Header=BB0_5 Depth=1
	ld.w	$s4, $a0, 8
	ld.w	$s0, $a0, 12
	st.w	$s4, $sp, 1236
	st.w	$s0, $sp, 1232
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB0_2
# %bb.45:                               # %.lr.ph276.peel.next.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$a1, $a0, 20
	ori	$a2, $zero, 1
	move	$s8, $s0
	move	$s2, $s4
	.p2align	4, , 16
.LBB0_46:                               # %.lr.ph276.peel.next
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a1, -4
	st.w	$a3, $sp, 1236
	ld.w	$a4, $a1, 0
	st.w	$a4, $sp, 1232
	slt	$a5, $a3, $s2
	masknez	$a6, $s2, $a5
	maskeqz	$a5, $a3, $a5
	or	$s2, $a5, $a6
	slt	$a5, $s4, $a3
	masknez	$a6, $s4, $a5
	maskeqz	$a3, $a3, $a5
	or	$s4, $a3, $a6
	slt	$a3, $a4, $s8
	masknez	$a5, $s8, $a3
	maskeqz	$a3, $a4, $a3
	or	$s8, $a3, $a5
	slt	$a3, $s0, $a4
	masknez	$a5, $s0, $a3
	ld.w	$a6, $a0, 0
	maskeqz	$a3, $a4, $a3
	or	$s0, $a3, $a5
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 8
	blt	$a2, $a6, .LBB0_46
	b	.LBB0_3
.LBB0_47:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	addi.d	$a2, $sp, 1228
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s6, $a0, %pc_lo12(.L.str.3)
	addi.d	$a2, $sp, 176
	move	$a0, $fp
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 176
	move	$a0, $fp
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1244
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 176
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1244
	blez	$a0, .LBB0_50
# %bb.48:                               # %.lr.ph255.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$s6, $zero
	.p2align	4, , 16
.LBB0_49:                               # %.lr.ph255
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	addi.d	$a2, $sp, 1236
	addi.d	$a3, $sp, 1232
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1244
	addi.w	$s6, $s6, 1
	blt	$s6, $a0, .LBB0_49
.LBB0_50:                               # %._crit_edge256
                                        #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s7, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 176
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s6, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1268
	move	$a0, $fp
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 1240
	move	$a0, $fp
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 176
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1240
	blez	$a0, .LBB0_53
# %bb.51:                               # %.lr.ph260.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$s6, $zero
	ori	$s7, $zero, 1
	.p2align	4, , 16
.LBB0_52:                               # %.lr.ph260
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1236
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1240
	addi.w	$s6, $s6, 1
	blt	$s6, $a0, .LBB0_52
	b	.LBB0_4
.LBB0_53:                               #   in Loop: Header=BB0_5 Depth=1
	ori	$s7, $zero, 1
	b	.LBB0_4
.LBB0_54:                               #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s5, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 176
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 176
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 176
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 176
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	addi.d	$a2, $sp, 1264
	addi.d	$a3, $sp, 1260
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	addi.w	$s5, $s5, 1
	addi.d	$a0, $sp, 176
	pcaddu18i	$ra, %call36(hashfind)
	jirl	$ra, $ra, 0
	move	$a2, $s5
	pcalau12i	$a1, %got_pc_hi20(netarray)
	ld.d	$a1, $a1, %got_pc_lo12(netarray)
	ld.d	$a1, $a1, 0
	slli.d	$a0, $a0, 3
	ldx.d	$s5, $a1, $a0
	.p2align	4, , 16
.LBB0_55:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s5, $s5, 0
	ld.w	$a0, $s5, 24
	bne	$a0, $a2, .LBB0_55
# %bb.56:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a3, 76
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.w	$a1, $s5, 32
	st.w	$s7, $s5, 36
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	bnez	$a0, .LBB0_4
# %bb.57:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $a3, 152
	addi.d	$a3, $a0, 88
	.p2align	4, , 16
.LBB0_58:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a3, 0
	ld.w	$a0, $a3, 24
	bne	$a0, $a2, .LBB0_58
# %bb.59:                               #   in Loop: Header=BB0_5 Depth=1
	ld.w	$a0, $sp, 1264
	ld.w	$a1, $sp, 1260
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.w	$a0, $a3, 8
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a2
	st.w	$a1, $a3, 12
	st.w	$a0, $a3, 16
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	st.w	$a1, $a3, 20
	b	.LBB0_4
.LBB0_60:                               #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s6, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 176
	move	$a0, $fp
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 176
	move	$a0, $fp
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 176
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(pinnames)
	ld.d	$a1, $a1, %got_pc_lo12(pinnames)
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a2, $a3, %pc_lo12(ecount)
	ld.d	$a1, $a1, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a3, %pc_lo12(ecount)
	pcalau12i	$a3, %got_pc_hi20(maxterm)
	ld.d	$a3, $a3, %got_pc_lo12(maxterm)
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a3, $a3, 0
	add.w	$s7, $a3, $a2
	slli.d	$a2, $s7, 3
	stx.d	$a0, $a1, $a2
	addi.d	$a1, $sp, 176
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$a0, $s5, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $s6, 0
	st.w	$s7, $s6, 24
	st.w	$zero, $s6, 28
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $s6, 8
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	st.w	$a0, $s6, 32
	st.d	$zero, $s6, 36
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	addi.d	$a2, $sp, 1264
	addi.d	$a3, $sp, 1260
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 68
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $s7, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $a1, 68
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(ecount)
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	st.d	$a0, $s7, 0
	ori	$s7, $zero, 1
	st.d	$s5, $a0, 0
	ld.w	$a3, $sp, 1264
	add.d	$a1, $a2, $a1
	ld.w	$a2, $sp, 1260
	st.w	$a1, $a0, 24
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	sub.d	$a1, $a3, $a1
	st.w	$a1, $a0, 8
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a3
	st.w	$a2, $a0, 12
	st.w	$a1, $a0, 16
	st.w	$a2, $a0, 20
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	move	$s5, $s6
	b	.LBB0_4
.LBB0_61:                               #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	addi.d	$a2, $sp, 1208
	b	.LBB0_42
.LBB0_62:                               #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	addi.d	$a2, $sp, 1216
	b	.LBB0_42
.LBB0_63:                               # %._crit_edge316
	pcaddu18i	$ra, %call36(ggenorien)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 1272                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1280                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1288                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1296                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1304                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1312                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1320                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1328                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1336                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1344                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1352                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1360
	ret
.Lfunc_end0:
	.size	grdcell, .Lfunc_end0-grdcell
                                        # -- End function
	.type	ecount,@object                  # @ecount
	.comm	ecount,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" %s "
	.size	.L.str, 5

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"cell"
	.size	.L.str.1, 5

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%d"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%s"
	.size	.L.str.3, 3

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	" %d "
	.size	.L.str.4, 5

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	" %d %d "
	.size	.L.str.5, 8

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"pad"
	.size	.L.str.6, 4

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"padside"
	.size	.L.str.7, 8

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"sidespace"
	.size	.L.str.8, 10

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	" %lf "
	.size	.L.str.9, 6

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"softcell"
	.size	.L.str.10, 9

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"pin"
	.size	.L.str.11, 4

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"equiv"
	.size	.L.str.12, 6

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"asplb"
	.size	.L.str.13, 6

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"%lf"
	.size	.L.str.14, 4

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"aspub"
	.size	.L.str.15, 6

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"sequence"
	.size	.L.str.16, 9

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"group"
	.size	.L.str.17, 6

	.section	".note.GNU-stack","",@progbits
	.addrsig
