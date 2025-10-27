	.file	"libclamav_msexpand.c"
	.text
	.globl	cli_msexpand                    # -- Begin function cli_msexpand
	.p2align	5
	.type	cli_msexpand,@function
cli_msexpand:                           # @cli_msexpand
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	move	$s1, $a1
	move	$s0, $a0
	addi.d	$a0, $sp, 68
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	ori	$s2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.w	$fp, $zero, -1
	bne	$a0, $s2, .LBB0_31
# %bb.1:
	ld.w	$a0, $sp, 68
	lu12i.w	$a1, 304149
	ori	$a1, $a1, 1867
	beq	$a0, $a1, .LBB0_23
# %bb.2:
	lu12i.w	$a1, 279621
	ori	$a1, $a1, 2643
	bne	$a0, $a1, .LBB0_29
# %bb.3:
	addi.d	$a0, $sp, 64
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	ori	$s2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB0_31
# %bb.4:
	addi.d	$a0, $sp, 58
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB0_31
# %bb.5:
	addi.d	$a0, $sp, 60
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	ori	$s2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB0_31
# %bb.6:
	ld.w	$a0, $sp, 64
	lu12i.w	$a1, 209535
	ori	$a1, $a1, 136
	bne	$a0, $a1, .LBB0_29
# %bb.7:
	lu12i.w	$a0, 1
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_33
# %bb.8:                                # %.preheader64
	move	$s2, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fgetc)
	jirl	$ra, $ra, 0
	addi.w	$fp, $zero, -1
	beq	$a0, $fp, .LBB0_22
# %bb.9:                                # %.preheader.preheader
	move	$s3, $a0
	ori	$s7, $zero, 4080
	ori	$s4, $zero, 1
	lu12i.w	$s5, -1
	vreplgr2vr.w	$vr0, $s5
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	lu32i.d	$s5, 0
.LBB0_10:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
                                        #       Child Loop BB0_17 Depth 3
	ori	$s6, $zero, 1
.LBB0_11:                               #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_17 Depth 3
	and	$s8, $s6, $s3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fgetc)
	jirl	$ra, $ra, 0
	beqz	$s8, .LBB0_15
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=2
	beq	$a0, $fp, .LBB0_21
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=2
	add.d	$a3, $s2, $s7
	stx.b	$a0, $s2, $s7
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1
	move	$a0, $a3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	bne	$a0, $s4, .LBB0_32
# %bb.14:                               #   in Loop: Header=BB0_11 Depth=2
	addi.w	$a0, $s7, 1
	bstrpick.d	$a1, $a0, 62, 51
	add.d	$a1, $a0, $a1
	and	$a1, $a1, $s5
	sub.w	$s7, $a0, $a1
	b	.LBB0_20
.LBB0_15:                               #   in Loop: Header=BB0_11 Depth=2
	beq	$a0, $fp, .LBB0_21
# %bb.16:                               #   in Loop: Header=BB0_11 Depth=2
	move	$s8, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fgetc)
	jirl	$ra, $ra, 0
	slli.d	$a1, $a0, 4
	andi	$a1, $a1, 3840
	add.d	$a1, $a1, $s8
	andi	$a0, $a0, 15
	vinsgr2vr.w	$vr0, $a1, 0
	vinsgr2vr.w	$vr0, $s7, 1
	addi.d	$s7, $a0, 3
.LBB0_17:                               #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vpickve2gr.w	$a0, $vr0, 0
	ldx.b	$a1, $s2, $a0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vpickve2gr.w	$a2, $vr0, 1
	add.d	$a0, $s2, $a2
	stx.b	$a1, $s2, $a2
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	bne	$a0, $s4, .LBB0_32
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=3
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vaddi.wu	$vr0, $vr0, 1
	vsrai.w	$vr1, $vr0, 31
	vsrli.w	$vr1, $vr1, 20
	vadd.w	$vr1, $vr0, $vr1
	vld	$vr2, $sp, 16                   # 16-byte Folded Reload
	vand.v	$vr1, $vr1, $vr2
	addi.w	$s7, $s7, -1
	vsub.w	$vr0, $vr0, $vr1
	bnez	$s7, .LBB0_17
# %bb.19:                               # %.loopexit.loopexit
                                        #   in Loop: Header=BB0_11 Depth=2
	vpickve2gr.w	$s7, $vr0, 1
.LBB0_20:                               # %.loopexit
                                        #   in Loop: Header=BB0_11 Depth=2
	andi	$a0, $s6, 127
	slli.w	$s6, $s6, 1
	bnez	$a0, .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_10 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fgetc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	bne	$a0, $fp, .LBB0_10
.LBB0_22:                               # %._crit_edge
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	b	.LBB0_31
.LBB0_23:
	addi.d	$a0, $sp, 64
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	ori	$s1, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB0_31
# %bb.24:
	addi.d	$a0, $sp, 60
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB0_31
# %bb.25:
	addi.d	$a0, $sp, 58
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	ori	$s1, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB0_31
# %bb.26:
	ld.w	$a0, $sp, 64
	lu12i.w	$a1, -191873
	ori	$a1, $a1, 136
	bne	$a0, $a1, .LBB0_29
# %bb.27:
	ld.w	$a0, $sp, 60
	lu12i.w	$a1, 288
	ori	$a1, $a1, 3
	bne	$a0, $a1, .LBB0_29
# %bb.28:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	b	.LBB0_30
.LBB0_29:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
.LBB0_30:
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
.LBB0_31:
	move	$a0, $fp
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB0_32:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_31
.LBB0_33:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_31
.Lfunc_end0:
	.size	cli_msexpand, .Lfunc_end0-cli_msexpand
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"msexpand: Not a MS-compressed file\n"
	.size	.L.str, 36

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"msexpand: unsupported version 6.22\n"
	.size	.L.str.1, 36

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"msexpand: Can't allocate memory\n"
	.size	.L.str.2, 33

	.section	".note.GNU-stack","",@progbits
	.addrsig
