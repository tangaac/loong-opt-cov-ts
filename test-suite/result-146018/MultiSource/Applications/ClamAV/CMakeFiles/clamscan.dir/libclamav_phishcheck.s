	.file	"libclamav_phishcheck.c"
	.text
	.globl	phishingScan                    # -- Begin function phishingScan
	.p2align	5
	.type	phishingScan,@function
phishingScan:                           # @phishingScan
# %bb.0:
	addi.d	$sp, $sp, -416
	st.d	$ra, $sp, 408                   # 8-byte Folded Spill
	st.d	$fp, $sp, 400                   # 8-byte Folded Spill
	st.d	$s0, $sp, 392                   # 8-byte Folded Spill
	st.d	$s1, $sp, 384                   # 8-byte Folded Spill
	st.d	$s2, $sp, 376                   # 8-byte Folded Spill
	st.d	$s3, $sp, 368                   # 8-byte Folded Spill
	st.d	$s4, $sp, 360                   # 8-byte Folded Spill
	st.d	$s5, $sp, 352                   # 8-byte Folded Spill
	st.d	$s6, $sp, 344                   # 8-byte Folded Spill
	st.d	$s7, $sp, 336                   # 8-byte Folded Spill
	st.d	$s8, $sp, 328                   # 8-byte Folded Spill
	ld.d	$a0, $a2, 24
	ld.d	$s2, $a0, 72
	beqz	$s2, .LBB0_2
# %bb.1:
	ld.w	$a0, $s2, 192
	beqz	$a0, .LBB0_3
.LBB0_2:                                # %.loopexit
	move	$a0, $zero
	ld.d	$s8, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 400                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 416
	ret
.LBB0_3:
	move	$fp, $a2
	move	$s0, $a3
	ld.w	$a0, $a2, 52
	bnez	$a0, .LBB0_5
# %bb.4:
	ld.d	$a0, $fp, 0
	st.d	$zero, $a0, 0
.LBB0_5:
	ld.w	$a0, $s0, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_2
# %bb.6:                                # %.lr.ph
	move	$s3, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s4, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(src_text)
	addi.d	$a0, $a0, %pc_lo12(src_text)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(empty_string)
	addi.d	$s6, $a0, %pc_lo12(empty_string)
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB0_10
.LBB0_7:                                #   in Loop: Header=BB0_10 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a1, $a0, %pc_lo12(.L.str.55)
	.p2align	4, , 16
.LBB0_8:                                # %phishing_ret_toString.exit.thread
                                        #   in Loop: Header=BB0_10 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_9:                                #   in Loop: Header=BB0_10 Depth=1
	ld.w	$a0, $s0, 0
	addi.d	$s3, $s3, 1
	bge	$s3, $a0, .LBB0_2
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_70 Depth 2
                                        #     Child Loop BB0_75 Depth 2
                                        #     Child Loop BB0_80 Depth 2
                                        #     Child Loop BB0_35 Depth 2
                                        #     Child Loop BB0_40 Depth 2
                                        #     Child Loop BB0_45 Depth 2
	ld.d	$s7, $s0, 24
	slli.d	$s5, $s3, 3
	ldx.d	$a0, $s7, $s5
	beqz	$a0, .LBB0_25
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $s0, 8
	ldx.d	$s1, $a0, $s5
	ori	$a0, $zero, 512
	st.h	$a0, $sp, 122
	ori	$a2, $zero, 5
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 355
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 371
	maskeqz	$a0, $a2, $a0
	or	$s8, $a0, $a1
	st.h	$s8, $sp, 120
	st.h	$zero, $sp, 124
	ori	$a2, $zero, 4
	move	$a0, $s1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $fp, 40
	sltui	$a0, $a0, 1
	andi	$a2, $a1, 1024
	st.h	$a0, $sp, 124
	beqz	$a2, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=1
	addi.d	$a0, $s8, 512
	st.h	$a0, $sp, 120
.LBB0_13:                               #   in Loop: Header=BB0_10 Depth=1
	bstrpick.d	$a0, $a1, 12, 11
	slli.d	$a0, $a0, 11
	beqz	$a0, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_10 Depth=1
	lu12i.w	$a0, 1
	and	$a0, $a1, $a0
	sltui	$a0, $a0, 1
	andi	$a1, $a1, 2048
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 560
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 544
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 528
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	st.h	$a0, $sp, 122
.LBB0_15:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $s0, 16
	ldx.d	$a0, $a0, $s5
	alsl.d	$a1, $s3, $s7, 3
	sltu	$a2, $zero, $a0
	st.w	$a2, $sp, 32
	maskeqz	$a3, $a0, $a2
	masknez	$a2, $s6, $a2
	ld.d	$a0, $a1, 0
	or	$a1, $a3, $a2
	st.d	$a1, $sp, 48
	st.d	$zero, $sp, 40
	pcaddu18i	$ra, %call36(blobGetData)
	jirl	$ra, $ra, 0
	sltu	$a1, $zero, $a0
	st.w	$a1, $sp, 56
	masknez	$a2, $s6, $a1
	maskeqz	$a0, $a0, $a1
	ld.d	$a1, $s0, 24
	or	$s1, $a0, $a2
	st.d	$s1, $sp, 72
	st.d	$zero, $sp, 64
	ldx.d	$a0, $a1, $s5
	st.w	$zero, $sp, 80
	st.d	$s6, $sp, 96
	st.d	$zero, $sp, 88
	pcaddu18i	$ra, %call36(blobGetDataSize)
	jirl	$ra, $ra, 0
	add.d	$a0, $s1, $a0
	ld.bu	$a0, $a0, -1
	bnez	$a0, .LBB0_124
# %bb.16:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $s0, 8
	ldx.d	$a0, $a0, $s5
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$a1, $sp, 32
	st.w	$a1, $sp, 56
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	beqz	$a0, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 72
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 72
	move	$a1, $a0
.LBB0_18:                               # %thread-pre-split
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$s8, $fp, 24
	st.w	$zero, $sp, 228
	ori	$s7, $zero, 100
	beqz	$a1, .LBB0_33
# %bb.19:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $s8, 72
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a2, $sp, 72
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 48
	ld.d	$s1, $sp, 72
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_33
# %bb.20:                               #   in Loop: Header=BB0_10 Depth=1
	ld.hu	$a0, $sp, 120
	andi	$a0, $a0, 64
	beqz	$a0, .LBB0_29
# %bb.21:                               #   in Loop: Header=BB0_10 Depth=1
	addi.d	$a0, $sp, 32
	ori	$a2, $zero, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cleanupURL)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(cleanupURL)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 72
	ld.d	$s5, $sp, 48
	beqz	$s1, .LBB0_27
# %bb.22:                               #   in Loop: Header=BB0_10 Depth=1
	beqz	$s5, .LBB0_28
# %bb.23:                               #   in Loop: Header=BB0_10 Depth=1
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_29
# %bb.24:                               #   in Loop: Header=BB0_10 Depth=1
	ori	$s7, $zero, 101
	b	.LBB0_33
	.p2align	4, , 16
.LBB0_25:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $s0, 8
	ldx.d	$a0, $a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_9
# %bb.26:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_9
.LBB0_27:                               #   in Loop: Header=BB0_10 Depth=1
	move	$s1, $zero
	b	.LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_10 Depth=1
	move	$s5, $zero
	.p2align	4, , 16
.LBB0_29:                               #   in Loop: Header=BB0_10 Depth=1
	move	$a0, $s8
	move	$a1, $s5
	move	$a2, $s1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(whitelist_match)
	jirl	$ra, $ra, 0
	ori	$s7, $zero, 110
	bnez	$a0, .LBB0_33
# %bb.30:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a1, $sp, 72
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	beqz	$a1, .LBB0_32
# %bb.31:                               # %isURL.exit.i
                                        #   in Loop: Header=BB0_10 Depth=1
	move	$a0, $s1
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(cli_regexec)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_63
.LBB0_32:                               # %isURL.exit.thread.i
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a1, $sp, 72
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$s7, $zero, 113
	.p2align	4, , 16
.LBB0_33:                               # %phishingCheck.exit
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.w	$a0, $s2, 192
	bnez	$a0, .LBB0_2
# %bb.34:                               # %.preheader.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	addi.d	$a1, $sp, 32
	.p2align	4, , 16
.LBB0_35:                               # %.preheader
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.w	$a1, $a1, 0
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 0
	bnez	$a1, .LBB0_39
# %bb.36:                               #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB0_35
# %bb.37:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_10 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_39:                               # %string_free.exit.i.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	addi.d	$a1, $sp, 56
	.p2align	4, , 16
.LBB0_40:                               # %string_free.exit.i
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.w	$a1, $a1, 0
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 0
	bnez	$a1, .LBB0_44
# %bb.41:                               #   in Loop: Header=BB0_40 Depth=2
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB0_40
# %bb.42:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_10 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_44:                               # %string_free.exit7.i.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	addi.d	$a1, $sp, 80
	.p2align	4, , 16
.LBB0_45:                               # %string_free.exit7.i
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.w	$a1, $a1, 0
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 0
	bnez	$a1, .LBB0_49
# %bb.46:                               #   in Loop: Header=BB0_45 Depth=2
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB0_45
# %bb.47:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB0_49
# %bb.48:                               #   in Loop: Header=BB0_10 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_49:                               # %free_if_needed.exit
                                        #   in Loop: Header=BB0_10 Depth=1
	addi.d	$a0, $s7, -100
	ori	$a1, $zero, 20
	bltu	$a1, $a0, .LBB0_62
# %bb.50:                               # %free_if_needed.exit
                                        #   in Loop: Header=BB0_10 Depth=1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI0_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.38)
	add.d	$a0, $a1, $a0
	addi.d	$a1, $a2, %pc_lo12(.L.str.38)
	jr	$a0
.LBB0_51:                               #   in Loop: Header=BB0_10 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a1, $a0, %pc_lo12(.L.str.39)
	b	.LBB0_8
.LBB0_52:                               #   in Loop: Header=BB0_10 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a1, $a0, %pc_lo12(.L.str.54)
	b	.LBB0_8
.LBB0_53:                               #   in Loop: Header=BB0_10 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a1, $a0, %pc_lo12(.L.str.47)
	b	.LBB0_8
.LBB0_54:                               #   in Loop: Header=BB0_10 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a1, $a0, %pc_lo12(.L.str.44)
	b	.LBB0_8
.LBB0_55:                               #   in Loop: Header=BB0_10 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a1, $a0, %pc_lo12(.L.str.49)
	b	.LBB0_8
.LBB0_56:                               #   in Loop: Header=BB0_10 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a1, $a0, %pc_lo12(.L.str.43)
	b	.LBB0_8
.LBB0_57:                               #   in Loop: Header=BB0_10 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a1, $a0, %pc_lo12(.L.str.42)
	b	.LBB0_8
.LBB0_58:                               #   in Loop: Header=BB0_10 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a1, $a0, %pc_lo12(.L.str.45)
	b	.LBB0_8
.LBB0_59:                               #   in Loop: Header=BB0_10 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a1, $a0, %pc_lo12(.L.str.46)
	b	.LBB0_8
.LBB0_60:                               #   in Loop: Header=BB0_10 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a1, $a0, %pc_lo12(.L.str.41)
	b	.LBB0_8
.LBB0_61:                               #   in Loop: Header=BB0_10 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a1, $a0, %pc_lo12(.L.str.40)
	b	.LBB0_8
.LBB0_62:                               # %phishing_ret_toString.exit
                                        #   in Loop: Header=BB0_10 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	bstrins.d	$s7, $zero, 0, 0
	ori	$a0, $zero, 108
	beq	$s7, $a0, .LBB0_9
	b	.LBB0_127
.LBB0_63:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a1, $sp, 48
	beqz	$a1, .LBB0_32
# %bb.64:                               # %isRealURL.exit.i
                                        #   in Loop: Header=BB0_10 Depth=1
	addi.d	$a0, $s1, 32
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(cli_regexec)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_32
# %bb.65:                               #   in Loop: Header=BB0_10 Depth=1
	ld.hu	$a0, $sp, 120
	andi	$a0, $a0, 512
	beqz	$a0, .LBB0_68
# %bb.66:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a1, $sp, 48
	ld.d	$a2, $sp, 72
	move	$a0, $s8
	move	$a3, $zero
	move	$a4, $zero
	addi.d	$a5, $sp, 120
	pcaddu18i	$ra, %call36(domainlist_match)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_68
# %bb.67:                               #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $zero, 8
	st.w	$a0, $sp, 228
.LBB0_68:                               #   in Loop: Header=BB0_10 Depth=1
	st.w	$zero, $sp, 232
	st.d	$s6, $sp, 248
	st.d	$zero, $sp, 240
	st.w	$zero, $sp, 256
	st.d	$s6, $sp, 272
	st.d	$zero, $sp, 264
	st.w	$zero, $sp, 280
	st.d	$s6, $sp, 296
	st.d	$zero, $sp, 288
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 232
	addi.d	$a4, $sp, 228
	move	$a0, $s1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(url_get_host)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_86
# %bb.69:                               # %.preheader.i.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	move	$s1, $a0
	addi.d	$a1, $sp, 232
.LBB0_70:                               # %.preheader.i
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.w	$a1, $a1, 0
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 0
	bnez	$a1, .LBB0_74
# %bb.71:                               #   in Loop: Header=BB0_70 Depth=2
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB0_70
# %bb.72:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB0_74
# %bb.73:                               #   in Loop: Header=BB0_10 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_74:                               # %string_free.exit.i.i.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	addi.d	$a1, $sp, 256
.LBB0_75:                               # %string_free.exit.i.i
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.w	$a1, $a1, 0
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 0
	bnez	$a1, .LBB0_79
# %bb.76:                               #   in Loop: Header=BB0_75 Depth=2
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB0_75
# %bb.77:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB0_79
# %bb.78:                               #   in Loop: Header=BB0_10 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_79:                               # %string_free.exit7.i.i.preheader
                                        #   in Loop: Header=BB0_10 Depth=1
	addi.d	$a1, $sp, 280
.LBB0_80:                               # %string_free.exit7.i.i
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.w	$a1, $a1, 0
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 0
	bnez	$a1, .LBB0_84
# %bb.81:                               #   in Loop: Header=BB0_80 Depth=2
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB0_80
# %bb.82:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB0_84
# %bb.83:                               #   in Loop: Header=BB0_10 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_84:                               # %free_if_needed.exit.i
                                        #   in Loop: Header=BB0_10 Depth=1
	addi.w	$a0, $s1, -100
	sltui	$a0, $a0, 15
	ori	$a1, $zero, 100
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s1, $a0
.LBB0_85:                               # %phishingCheck.exit
                                        #   in Loop: Header=BB0_10 Depth=1
	or	$s7, $a0, $a1
	b	.LBB0_33
.LBB0_86:                               #   in Loop: Header=BB0_10 Depth=1
	ld.hu	$a0, $sp, 120
	andi	$a0, $a0, 512
	beqz	$a0, .LBB0_90
# %bb.87:                               #   in Loop: Header=BB0_10 Depth=1
	ld.wu	$s1, $sp, 228
	andi	$a0, $s1, 8
	bnez	$a0, .LBB0_90
# %bb.88:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a1, $sp, 272
	ld.d	$a2, $sp, 248
	ori	$a4, $zero, 1
	move	$a0, $s8
	addi.d	$a3, $sp, 80
	addi.d	$a5, $sp, 120
	pcaddu18i	$ra, %call36(domainlist_match)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_90
# %bb.89:                               #   in Loop: Header=BB0_10 Depth=1
	ori	$a0, $s1, 8
	st.w	$a0, $sp, 228
.LBB0_90:                               #   in Loop: Header=BB0_10 Depth=1
	ld.hu	$a0, $sp, 124
	ld.hu	$s5, $sp, 120
	andi	$a0, $a0, 1
	ori	$s7, $zero, 104
	beqz	$a0, .LBB0_92
# %bb.91:                               #   in Loop: Header=BB0_10 Depth=1
	andi	$a0, $s5, 256
	beqz	$a0, .LBB0_33
.LBB0_92:                               #   in Loop: Header=BB0_10 Depth=1
	andi	$a0, $s5, 512
	beqz	$a0, .LBB0_95
# %bb.93:                               #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $sp, 228
	andi	$a0, $a0, 8
	bnez	$a0, .LBB0_95
# %bb.94:                               #   in Loop: Header=BB0_10 Depth=1
	ld.hu	$a0, $sp, 122
	and	$s5, $a0, $s5
	st.h	$s5, $sp, 120
	beqz	$s5, .LBB0_102
.LBB0_95:                               #   in Loop: Header=BB0_10 Depth=1
	andi	$a0, $s5, 32
	bnez	$a0, .LBB0_103
# %bb.96:                               # %._crit_edge.i
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$s1, $sp, 72
.LBB0_97:                               #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $s1, 0
	beqz	$a0, .LBB0_105
# %bb.98:                               #   in Loop: Header=BB0_10 Depth=1
	andi	$a0, $s5, 16
	beqz	$a0, .LBB0_100
# %bb.99:                               # %isSSL.exit.i
                                        #   in Loop: Header=BB0_10 Depth=1
	pcalau12i	$a0, %pc_hi20(https)
	addi.d	$a0, $a0, %pc_lo12(https)
	ori	$a2, $zero, 8
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_112
.LBB0_100:                              #   in Loop: Header=BB0_10 Depth=1
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 232
	ori	$a3, $zero, 1
	addi.d	$a4, $sp, 228
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(url_get_host)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_108
# %bb.101:                              #   in Loop: Header=BB0_10 Depth=1
	move	$s7, $a0
.LBB0_102:                              #   in Loop: Header=BB0_10 Depth=1
	addi.d	$a0, $sp, 232
	pcaddu18i	$ra, %call36(free_if_needed)
	jirl	$ra, $ra, 0
	b	.LBB0_33
.LBB0_103:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 48
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_106
# %bb.104:                              #   in Loop: Header=BB0_10 Depth=1
	addi.d	$a0, $sp, 232
	pcaddu18i	$ra, %call36(free_if_needed)
	jirl	$ra, $ra, 0
	ori	$s7, $zero, 118
	b	.LBB0_33
.LBB0_105:                              #   in Loop: Header=BB0_10 Depth=1
	addi.d	$a0, $sp, 232
	pcaddu18i	$ra, %call36(free_if_needed)
	jirl	$ra, $ra, 0
	ori	$s7, $zero, 100
	b	.LBB0_33
.LBB0_106:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$s1, $sp, 72
	move	$a0, $s1
	pcaddu18i	$ra, %call36(isEncoded)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_97
# %bb.107:                              #   in Loop: Header=BB0_10 Depth=1
	addi.d	$a0, $sp, 232
	pcaddu18i	$ra, %call36(free_if_needed)
	jirl	$ra, $ra, 0
	ori	$s7, $zero, 117
	b	.LBB0_33
.LBB0_108:                              #   in Loop: Header=BB0_10 Depth=1
	ld.hu	$a0, $sp, 120
	andi	$a0, $a0, 512
	beqz	$a0, .LBB0_110
# %bb.109:                              #   in Loop: Header=BB0_10 Depth=1
	ld.bu	$a0, $sp, 228
	andi	$a0, $a0, 8
	beqz	$a0, .LBB0_102
.LBB0_110:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a1, $sp, 248
	ld.d	$a2, $sp, 272
	ori	$a3, $zero, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(whitelist_match)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_115
# %bb.111:                              #   in Loop: Header=BB0_10 Depth=1
	addi.d	$a0, $sp, 232
	pcaddu18i	$ra, %call36(free_if_needed)
	jirl	$ra, $ra, 0
	ori	$s7, $zero, 111
	b	.LBB0_33
.LBB0_112:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a1, $sp, 48
	beqz	$a1, .LBB0_114
# %bb.113:                              # %isSSL.exit114.i
                                        #   in Loop: Header=BB0_10 Depth=1
	pcalau12i	$a0, %pc_hi20(https)
	addi.d	$a0, $a0, %pc_lo12(https)
	ori	$a2, $zero, 8
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_100
.LBB0_114:                              # %isSSL.exit114.thread.i
                                        #   in Loop: Header=BB0_10 Depth=1
	addi.d	$a0, $sp, 232
	pcaddu18i	$ra, %call36(free_if_needed)
	jirl	$ra, $ra, 0
	ori	$s7, $zero, 119
	b	.LBB0_33
.LBB0_115:                              #   in Loop: Header=BB0_10 Depth=1
	ld.hu	$a1, $sp, 120
	andi	$a0, $a1, 1
	beqz	$a0, .LBB0_119
# %bb.116:                              #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_122
# %bb.117:                              #   in Loop: Header=BB0_10 Depth=1
	st.w	$zero, $sp, 128
	st.d	$s6, $sp, 144
	st.d	$zero, $sp, 136
	st.w	$zero, $sp, 152
	st.d	$s6, $sp, 168
	st.d	$zero, $sp, 160
	st.w	$zero, $sp, 176
	st.d	$s6, $sp, 192
	st.d	$zero, $sp, 184
	addi.d	$a1, $sp, 232
	addi.d	$a2, $sp, 128
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(url_get_domain)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144
	ld.d	$a1, $sp, 168
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_123
# %bb.118:                              #   in Loop: Header=BB0_10 Depth=1
	addi.d	$a0, $sp, 128
	pcaddu18i	$ra, %call36(free_if_needed)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 232
	pcaddu18i	$ra, %call36(free_if_needed)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $sp, 120
.LBB0_119:                              #   in Loop: Header=BB0_10 Depth=1
	ld.wu	$a0, $sp, 228
	andi	$a1, $a1, 512
	beqz	$a1, .LBB0_121
# %bb.120:                              #   in Loop: Header=BB0_10 Depth=1
	andi	$a1, $a0, 8
	beqz	$a1, .LBB0_33
.LBB0_121:                              #   in Loop: Header=BB0_10 Depth=1
	andi	$a1, $a0, 1
	sltui	$a1, $a1, 1
	andi	$a0, $a0, 2
	sltui	$a0, $a0, 1
	ori	$a2, $zero, 116
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 120
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	maskeqz	$a0, $a0, $a1
	ori	$a2, $zero, 115
	masknez	$a1, $a2, $a1
	b	.LBB0_85
.LBB0_122:                              #   in Loop: Header=BB0_10 Depth=1
	addi.d	$a0, $sp, 232
	pcaddu18i	$ra, %call36(free_if_needed)
	jirl	$ra, $ra, 0
	ori	$s7, $zero, 102
	b	.LBB0_33
.LBB0_123:                              # %.thread.i
                                        #   in Loop: Header=BB0_10 Depth=1
	addi.d	$a0, $sp, 232
	pcaddu18i	$ra, %call36(free_if_needed)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 128
	pcaddu18i	$ra, %call36(free_if_needed)
	jirl	$ra, $ra, 0
	ori	$s7, $zero, 103
	b	.LBB0_33
.LBB0_124:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_2
.LBB0_125:                              # %phishing_ret_toString.exit.thread67
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a1, %pc_hi20(.L.str.56)
	addi.d	$a1, $a1, %pc_lo12(.L.str.56)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	b	.LBB0_132
.LBB0_126:                              # %phishing_ret_toString.exit.thread65
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a1, %pc_hi20(.L.str.53)
	addi.d	$a1, $a1, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_127:                              # %.loopexit77
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	b	.LBB0_132
.LBB0_128:                              # %phishing_ret_toString.exit.thread69
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a1, %pc_hi20(.L.str.48)
	addi.d	$a1, $a1, %pc_lo12(.L.str.48)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	b	.LBB0_132
.LBB0_129:                              # %phishing_ret_toString.exit.thread75
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$a1, $a1, %pc_lo12(.L.str.51)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	b	.LBB0_132
.LBB0_130:                              # %phishing_ret_toString.exit.thread73
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$a1, $a1, %pc_lo12(.L.str.52)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	b	.LBB0_132
.LBB0_131:                              # %phishing_ret_toString.exit.thread71
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
.LBB0_132:                              # %.critedge
	st.d	$a1, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 52
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_2
.Lfunc_end0:
	.size	phishingScan, .Lfunc_end0-phishingScan
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_8-.LJTI0_0
	.word	.LBB0_51-.LJTI0_0
	.word	.LBB0_57-.LJTI0_0
	.word	.LBB0_56-.LJTI0_0
	.word	.LBB0_52-.LJTI0_0
	.word	.LBB0_54-.LJTI0_0
	.word	.LBB0_58-.LJTI0_0
	.word	.LBB0_59-.LJTI0_0
	.word	.LBB0_62-.LJTI0_0
	.word	.LBB0_62-.LJTI0_0
	.word	.LBB0_61-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_7-.LJTI0_0
	.word	.LBB0_55-.LJTI0_0
	.word	.LBB0_53-.LJTI0_0
	.word	.LBB0_129-.LJTI0_0
	.word	.LBB0_128-.LJTI0_0
	.word	.LBB0_125-.LJTI0_0
	.word	.LBB0_131-.LJTI0_0
	.word	.LBB0_130-.LJTI0_0
	.word	.LBB0_126-.LJTI0_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function free_if_needed
	.type	free_if_needed,@function
free_if_needed:                         # @free_if_needed
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	move	$a1, $a0
	.p2align	4, , 16
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.w	$a1, $a1, 0
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 0
	bnez	$a1, .LBB1_5
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB1_1
# %bb.3:
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB1_5
# %bb.4:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_5:                                # %string_free.exit
	addi.d	$a1, $fp, 24
	.p2align	4, , 16
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.w	$a1, $a1, 0
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 0
	bnez	$a1, .LBB1_10
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=1
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB1_6
# %bb.8:
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB1_10
# %bb.9:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_10:                               # %string_free.exit7
	addi.d	$a1, $fp, 48
	.p2align	4, , 16
.LBB1_11:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.w	$a1, $a1, 0
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 0
	bnez	$a1, .LBB1_15
# %bb.12:                               #   in Loop: Header=BB1_11 Depth=1
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB1_11
# %bb.13:
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB1_15
# %bb.14:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB1_15:                               # %string_free.exit12
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	free_if_needed, .Lfunc_end1-free_if_needed
                                        # -- End function
	.globl	phishing_init                   # -- Begin function phishing_init
	.p2align	5
	.type	phishing_init,@function
phishing_init:                          # @phishing_init
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
	move	$fp, $a0
	ld.d	$s0, $a0, 72
	beqz	$s0, .LBB2_3
# %bb.1:
	ld.w	$a0, $s0, 192
	bnez	$a0, .LBB2_5
.LBB2_2:
	move	$a0, $zero
	b	.LBB2_18
.LBB2_3:
	ori	$a0, $zero, 200
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 72
	beqz	$a0, .LBB2_10
# %bb.4:
	move	$s0, $a0
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 192
.LBB2_5:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s0, 160
	pcalau12i	$a1, %pc_hi20(cloaked_host_regex)
	addi.d	$a1, $a1, %pc_lo12(cloaked_host_regex)
	pcaddu18i	$ra, %call36(build_regex)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_17
# %bb.6:
	addi.d	$s1, $s0, 96
	pcalau12i	$a0, %pc_hi20(cctld_regex)
	addi.d	$a1, $a0, %pc_lo12(cctld_regex)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(build_regex)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_17
# %bb.7:
	addi.d	$s2, $s0, 64
	pcalau12i	$a0, %pc_hi20(tld_regex)
	addi.d	$a1, $a0, %pc_lo12(tld_regex)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(build_regex)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_11
# %bb.8:
	move	$a0, $s1
.LBB2_9:
	pcaddu18i	$ra, %call36(cli_regfree)
	jirl	$ra, $ra, 0
	b	.LBB2_17
.LBB2_10:
	addi.w	$a0, $zero, -114
	b	.LBB2_18
.LBB2_11:
	ori	$a0, $zero, 779
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	beqz	$a0, .LBB2_13
# %bb.12:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	ori	$a2, $zero, 196
	move	$a0, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s3, 196
	pcalau12i	$a1, %pc_hi20(.L.str.12)
	addi.d	$a1, $a1, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 425
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s3, 621
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	ori	$a2, $zero, 157
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.b	$zero, $s3, 778
.LBB2_13:                               # %str_compose.exit
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(build_regex)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_15
# %bb.14:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_regfree)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cli_regfree)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB2_17
.LBB2_15:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(str_compose)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	addi.d	$s4, $s0, 32
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(build_regex)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_19
# %bb.16:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_regfree)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cli_regfree)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_regfree)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_17:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 72
	addi.w	$a0, $zero, -124
.LBB2_18:
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
.LBB2_19:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s0, 128
	pcalau12i	$a1, %pc_hi20(numeric_url_regex)
	addi.d	$a1, $a1, %pc_lo12(numeric_url_regex)
	pcaddu18i	$ra, %call36(build_regex)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_21
# %bb.20:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_regfree)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cli_regfree)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_regfree)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	b	.LBB2_9
.LBB2_21:
	st.w	$zero, $s0, 192
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB2_2
.Lfunc_end2:
	.size	phishing_init, .Lfunc_end2-phishing_init
                                        # -- End function
	.p2align	5                               # -- Begin function build_regex
	.type	build_regex,@function
build_regex:                            # @build_regex
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 7
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_regcomp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_3
# %bb.1:
	move	$s1, $a0
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(cli_regerror)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_4
# %bb.2:
	move	$s0, $a0
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s2
	pcaddu18i	$ra, %call36(cli_regerror)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB3_5
.LBB3_3:
	move	$a0, $zero
	b	.LBB3_6
.LBB3_4:
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
.LBB3_5:
	ori	$a0, $zero, 1
.LBB3_6:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	build_regex, .Lfunc_end3-build_regex
                                        # -- End function
	.p2align	5                               # -- Begin function str_compose
	.type	str_compose,@function
str_compose:                            # @str_compose
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.d	$a0, $a0, 583
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	beqz	$a0, .LBB4_2
# %bb.1:
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	add.d	$s0, $fp, $s1
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 425
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s0, 425
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	ori	$a2, $zero, 157
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.b	$zero, $s0, 582
.LBB4_2:
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	str_compose, .Lfunc_end4-str_compose
                                        # -- End function
	.globl	phishing_done                   # -- Begin function phishing_done
	.p2align	5
	.type	phishing_done,@function
phishing_done:                          # @phishing_done
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s0, $a0, 72
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB5_4
# %bb.1:
	ld.w	$a0, $s0, 192
	bnez	$a0, .LBB5_3
# %bb.2:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_regfree)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s0, 160
	pcaddu18i	$ra, %call36(cli_regfree)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s0, 96
	pcaddu18i	$ra, %call36(cli_regfree)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s0, 64
	pcaddu18i	$ra, %call36(cli_regfree)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s0, 128
	pcaddu18i	$ra, %call36(cli_regfree)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s0, 32
	pcaddu18i	$ra, %call36(cli_regfree)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 192
.LBB5_3:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(whitelist_done)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(domainlist_done)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 72
	b	.LBB5_5
.LBB5_4:                                # %.critedge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(whitelist_done)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(domainlist_done)
	jirl	$ra, $ra, 0
.LBB5_5:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(cli_dbgmsg)
	jr	$t8
.Lfunc_end5:
	.size	phishing_done, .Lfunc_end5-phishing_done
                                        # -- End function
	.p2align	5                               # -- Begin function string_free
	.type	string_free,@function
string_free:                            # @string_free
# %bb.0:
	.p2align	4, , 16
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	move	$a1, $a0
	ld.w	$a0, $a0, 0
	addi.w	$a0, $a0, -1
	st.w	$a0, $a1, 0
	bnez	$a0, .LBB6_5
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	ld.d	$a0, $a1, 8
	bnez	$a0, .LBB6_1
# %bb.3:
	ld.d	$a0, $a1, 16
	beqz	$a0, .LBB6_5
# %bb.4:
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB6_5:                                # %.loopexit
	ret
.Lfunc_end6:
	.size	string_free, .Lfunc_end6-string_free
                                        # -- End function
	.p2align	5                               # -- Begin function url_get_host
	.type	url_get_host,@function
url_get_host:                           # @url_get_host
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
	move	$s0, $a3
	move	$s1, $a1
	sltui	$s6, $a3, 1
	ori	$a1, $zero, 16
	masknez	$a1, $a1, $s6
	ori	$a3, $zero, 40
	maskeqz	$a3, $a3, $s6
	or	$a1, $a3, $a1
	ldx.d	$s4, $s1, $a1
	move	$fp, $a4
	move	$s3, $a2
	move	$s2, $a0
	addi.d	$a4, $sp, 16
	addi.d	$a5, $sp, 8
	move	$a1, $s4
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(get_host)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_2
.LBB7_1:                                # %string_assign_dup.exit
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
.LBB7_2:
	ld.d	$s5, $sp, 16
	ld.d	$s8, $sp, 8
	ori	$a0, $zero, 24
	maskeqz	$a0, $a0, $s6
	add.d	$s3, $s3, $a0
	beqz	$s5, .LBB7_9
# %bb.3:
	beqz	$s8, .LBB7_9
# %bb.4:
	sub.d	$s7, $s8, $s5
	addi.d	$a0, $s7, 1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_14
# %bb.5:
	move	$s6, $a0
	move	$a1, $s5
	move	$a2, $s7
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s6, $s7
	move	$a1, $s3
	.p2align	4, , 16
.LBB7_6:                                # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.w	$a1, $a1, 0
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 0
	bnez	$a1, .LBB7_15
# %bb.7:                                #   in Loop: Header=BB7_6 Depth=1
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB7_6
# %bb.8:
	ld.d	$a0, $a0, 16
	ori	$s7, $zero, 1
	bnez	$a0, .LBB7_13
	b	.LBB7_16
.LBB7_9:                                # %.preheader.i.preheader
	addi.d	$s7, $zero, -1
	pcalau12i	$a0, %pc_hi20(empty_string)
	addi.d	$s6, $a0, %pc_lo12(empty_string)
	move	$a1, $s3
	.p2align	4, , 16
.LBB7_10:                               # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.w	$a1, $a1, 0
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 0
	bnez	$a1, .LBB7_16
# %bb.11:                               #   in Loop: Header=BB7_10 Depth=1
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB7_10
# %bb.12:
	ld.d	$a0, $a0, 16
	addi.d	$s7, $zero, -1
	pcalau12i	$a1, %pc_hi20(empty_string)
	addi.d	$s6, $a1, %pc_lo12(empty_string)
	beqz	$a0, .LBB7_16
.LBB7_13:                               # %string_assign_null.exit.sink.split
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB7_16
.LBB7_14:
	addi.w	$a0, $zero, -114
	b	.LBB7_1
.LBB7_15:
	ori	$s7, $zero, 1
.LBB7_16:                               # %string_assign_null.exit
	st.d	$s6, $s3, 16
	st.w	$s7, $s3, 0
	st.d	$zero, $s3, 8
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB7_24
# %bb.17:
	ld.d	$s4, $s3, 16
	beqz	$s4, .LBB7_25
.LBB7_18:
	ld.bu	$a0, $fp, 0
	andi	$a1, $a0, 4
	ori	$a0, $zero, 114
	bnez	$a1, .LBB7_1
# %bb.19:
	ori	$a1, $zero, 32
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_26
	.p2align	4, , 16
.LBB7_20:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s3, 0
	addi.w	$a2, $a0, -1
	st.w	$a2, $s3, 0
	ori	$a0, $zero, 113
	bnez	$a2, .LBB7_1
# %bb.21:                               #   in Loop: Header=BB7_20 Depth=1
	move	$a1, $s3
	ld.d	$s3, $s3, 8
	bnez	$s3, .LBB7_20
# %bb.22:
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB7_1
# %bb.23:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 113
	b	.LBB7_1
.LBB7_24:
	sub.d	$a0, $s5, $s4
	st.d	$a0, $s1, 72
	sub.d	$a0, $s8, $s4
	st.d	$a0, $s1, 80
	ld.d	$s4, $s3, 16
	bnez	$s4, .LBB7_18
.LBB7_25:
	ori	$a0, $zero, 101
	b	.LBB7_1
.LBB7_26:
	ld.hu	$a0, $s1, 88
	andi	$a0, $a0, 32
	beqz	$a0, .LBB7_29
# %bb.27:
	addi.d	$a0, $s2, 160
	move	$a1, $s4
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(cli_regexec)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_35
# %bb.28:                               # %._crit_edge
	ld.d	$s4, $s3, 16
.LBB7_29:
	beqz	$s0, .LBB7_31
# %bb.30:
	ld.bu	$a0, $s4, 0
	beqz	$a0, .LBB7_34
.LBB7_31:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(isNumeric)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_33
# %bb.32:
	ld.w	$a1, $fp, 0
	move	$a0, $zero
	ori	$a1, $a1, 2
	st.w	$a1, $fp, 0
	b	.LBB7_1
.LBB7_33:
	move	$a0, $zero
	b	.LBB7_1
.LBB7_34:
	ori	$a0, $zero, 100
	b	.LBB7_1
.LBB7_35:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(string_free)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 117
	b	.LBB7_1
.Lfunc_end7:
	.size	url_get_host, .Lfunc_end7-url_get_host
                                        # -- End function
	.p2align	5                               # -- Begin function isEncoded
	.type	isEncoded,@function
isEncoded:                              # @isEncoded
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$s0, $a0, %pc_lo12(.L.str.34)
	move	$a0, $fp
	.p2align	4, , 16
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	move	$s1, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_3
# %bb.2:                                #   in Loop: Header=BB8_1 Depth=1
	addi.d	$s2, $s1, 1
	ori	$a1, $zero, 59
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_1
.LBB8_3:                                # %.thread
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	slli.d	$a1, $a0, 3
	sub.d	$a0, $a1, $a0
	lu12i.w	$a1, -209716
	ori	$a1, $a1, 3277
	lu32i.d	$a1, -209716
	lu52i.d	$a1, $a1, -820
	mulh.du	$a0, $a0, $a1
	srli.d	$a0, $a0, 3
	sltu	$a0, $a0, $s1
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end8:
	.size	isEncoded, .Lfunc_end8-isEncoded
                                        # -- End function
	.p2align	5                               # -- Begin function url_get_domain
	.type	url_get_domain,@function
url_get_domain:                         # @url_get_domain
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	move	$a1, $a2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(get_domain)
	jirl	$ra, $ra, 0
	addi.d	$a1, $fp, 24
	addi.d	$a2, $s0, 24
	move	$a0, $s1
	pcaddu18i	$ra, %call36(get_domain)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s0, 88
	st.h	$a0, $fp, 88
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end9:
	.size	url_get_domain, .Lfunc_end9-url_get_domain
                                        # -- End function
	.p2align	5                               # -- Begin function cleanupURL
	.type	cleanupURL,@function
cleanupURL:                             # @cleanupURL
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	addi.d	$fp, $sp, 2032
	addi.d	$sp, $sp, -720
	bstrins.d	$sp, $zero, 4, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$s2, $a0, 16
	ld.bu	$a3, $s2, 0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	move	$s5, $a1
	beqz	$a3, .LBB10_3
# %bb.1:                                # %.lr.ph.i.preheader
	addi.d	$a0, $s2, 1
	ori	$a1, $zero, 32
	.p2align	4, , 16
.LBB10_2:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	andi	$a2, $a3, 127
	sltu	$a4, $a1, $a2
	masknez	$a5, $a1, $a4
	ld.bu	$a3, $a0, 0
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a5
	st.b	$a2, $a0, -1
	addi.d	$a0, $a0, 1
	bnez	$a3, .LBB10_2
.LBB10_3:                               # %clear_msb.exit
	move	$s6, $s2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$s0, $a0, 0
	move	$a0, $zero
	addi.d	$a1, $s2, 1
	lu12i.w	$s1, 2
	move	$s4, $s2
	.p2align	4, , 16
.LBB10_4:                               # =>This Inner Loop Header: Depth=1
	move	$s3, $s4
	ld.b	$a2, $s4, 0
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $s0, $a2
	move	$s8, $a0
	move	$s7, $a1
	and	$a2, $a2, $s1
	addi.d	$s4, $s4, 1
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	addi.d	$s6, $s6, 1
	bnez	$a2, .LBB10_4
# %bb.5:
	ori	$a0, $zero, 2656
	add.d	$a0, $sp, $a0
	st.d	$s3, $a0, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_16
# %bb.6:
	add.d	$a1, $s3, $a0
	addi.d	$a1, $a1, -1
	ori	$a2, $zero, 1
	ori	$a3, $zero, 2648
	add.d	$a3, $sp, $a3
	st.d	$a1, $a3, 0
	bge	$a2, $a0, .LBB10_25
# %bb.7:
	st.d	$s5, $sp, 40                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB10_8:                               # %.preheader137
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $s4, $a0
	ld.b	$a1, $a1, -2
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $s0, $a1
	and	$a1, $a1, $s1
	addi.d	$a0, $a0, -1
	bnez	$a1, .LBB10_8
# %bb.9:
	move	$s0, $a0
	add.d	$a0, $s4, $a0
	addi.d	$s5, $a0, -1
	ori	$a0, $zero, 2648
	add.d	$a0, $sp, $a0
	st.d	$s5, $a0, 0
	pcalau12i	$a0, %pc_hi20(dotnet)
	addi.d	$a1, $a0, %pc_lo12(dotnet)
	ori	$a2, $zero, 4
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_37
# %bb.10:
	pcalau12i	$a0, %pc_hi20(adonet)
	addi.d	$a1, $a0, %pc_lo12(adonet)
	ori	$a2, $zero, 7
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_37
# %bb.11:
	pcalau12i	$a0, %pc_hi20(aspnet)
	addi.d	$a1, $a0, %pc_lo12(aspnet)
	ori	$a2, $zero, 7
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_37
# %bb.12:
	bgeu	$s5, $s3, .LBB10_72
.LBB10_13:                              # %str_replace.exit112
	pcalau12i	$a0, %pc_hi20(lt)
	addi.d	$a2, $a0, %pc_lo12(lt)
	ori	$a0, $zero, 2656
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2648
	add.d	$a1, $sp, $a1
	ori	$a3, $zero, 3
	pcaddu18i	$ra, %call36(str_strip)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(gt)
	addi.d	$a2, $a0, %pc_lo12(gt)
	ori	$a0, $zero, 2656
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2648
	add.d	$a1, $sp, $a1
	ori	$a3, $zero, 3
	pcaddu18i	$ra, %call36(str_strip)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2656
	add.d	$a0, $sp, $a0
	ld.d	$s8, $a0, 0
	ori	$a1, $zero, 58
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 47
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_14:                              # =>This Inner Loop Header: Depth=1
	beqz	$a0, .LBB10_51
# %bb.15:                               #   in Loop: Header=BB10_14 Depth=1
	ld.bu	$a2, $a0, 1
	addi.d	$s4, $a0, 1
	move	$a0, $s4
	beq	$a2, $a1, .LBB10_14
	b	.LBB10_52
.LBB10_16:                              # %.preheader.i.preheader
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	move	$a1, $s2
	.p2align	4, , 16
.LBB10_17:                              # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.w	$a1, $a1, 0
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 0
	bnez	$a1, .LBB10_21
# %bb.18:                               #   in Loop: Header=BB10_17 Depth=1
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB10_17
# %bb.19:
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB10_21
# %bb.20:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB10_21:                              # %string_assign_null.exit
	pcalau12i	$a0, %pc_hi20(empty_string)
	addi.d	$s0, $a0, %pc_lo12(empty_string)
	st.d	$s0, $s2, 16
	addi.w	$s1, $zero, -1
	lu32i.d	$s1, 0
	st.w	$s1, $s2, 0
	st.d	$zero, $s2, 8
	beqz	$s5, .LBB10_50
# %bb.22:                               # %.preheader.i53.preheader
	move	$a1, $s5
	.p2align	4, , 16
.LBB10_23:                              # %.preheader.i53
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.w	$a1, $a1, 0
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 0
	bnez	$a1, .LBB10_36
# %bb.24:                               #   in Loop: Header=BB10_23 Depth=1
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB10_23
	b	.LBB10_34
.LBB10_25:
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	move	$a1, $s2
	.p2align	4, , 16
.LBB10_26:                              # %.preheader.i60
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.w	$a1, $a1, 0
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 0
	bnez	$a1, .LBB10_30
# %bb.27:                               #   in Loop: Header=BB10_26 Depth=1
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB10_26
# %bb.28:
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB10_30
# %bb.29:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB10_30:                              # %string_assign_null.exit66
	pcalau12i	$a0, %pc_hi20(empty_string)
	addi.d	$s0, $a0, %pc_lo12(empty_string)
	st.d	$s0, $s2, 16
	addi.w	$s1, $zero, -1
	lu32i.d	$s1, 0
	st.w	$s1, $s2, 0
	st.d	$zero, $s2, 8
	beqz	$s5, .LBB10_50
# %bb.31:                               # %.preheader.i68.preheader
	move	$a1, $s5
	.p2align	4, , 16
.LBB10_32:                              # %.preheader.i68
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.w	$a1, $a1, 0
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 0
	bnez	$a1, .LBB10_36
# %bb.33:                               #   in Loop: Header=BB10_32 Depth=1
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB10_32
.LBB10_34:
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB10_36
# %bb.35:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB10_36:                              # %string_free.exit.i
	st.d	$s0, $s5, 16
	st.w	$s1, $s5, 0
	st.d	$zero, $s5, 8
	b	.LBB10_50
.LBB10_37:                              # %.preheader.i76.preheader
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	move	$a1, $s3
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_38:                              # %.preheader.i76
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.w	$a1, $a1, 0
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 0
	bnez	$a1, .LBB10_42
# %bb.39:                               #   in Loop: Header=BB10_38 Depth=1
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB10_38
# %bb.40:
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB10_42
# %bb.41:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB10_42:                              # %string_assign_null.exit82
	pcalau12i	$a0, %pc_hi20(empty_string)
	addi.d	$s0, $a0, %pc_lo12(empty_string)
	st.d	$s0, $s3, 16
	addi.w	$s1, $zero, -1
	lu32i.d	$s1, 0
	st.w	$s1, $s3, 0
	st.d	$zero, $s3, 8
	beqz	$s2, .LBB10_50
# %bb.43:                               # %.preheader.i84.preheader
	move	$a1, $s2
	.p2align	4, , 16
.LBB10_44:                              # %.preheader.i84
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.w	$a1, $a1, 0
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 0
	bnez	$a1, .LBB10_48
# %bb.45:                               #   in Loop: Header=BB10_44 Depth=1
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB10_44
# %bb.46:
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB10_48
# %bb.47:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB10_48:                              # %string_free.exit.i87
	st.d	$s0, $s2, 16
	st.w	$s1, $s2, 0
.LBB10_49:                              # %string_assign_null.exit58
	st.d	$zero, $s2, 8
.LBB10_50:                              # %string_assign_null.exit58
	addi.d	$sp, $fp, -2048
	addi.d	$sp, $sp, -704
	addi.d	$sp, $sp, 720
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB10_51:
	move	$s4, $s8
.LBB10_52:                              # %.critedge50
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strcspn)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_56
# %bb.53:                               # %.lr.ph.i114
	move	$s5, $a0
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB10_54:                              # =>This Inner Loop Header: Depth=1
	ld.b	$a1, $s4, 0
	ld.d	$a2, $a0, 0
	slli.d	$a1, $a1, 2
	ldx.b	$a1, $a2, $a1
	st.b	$a1, $s4, 0
	addi.d	$s5, $s5, -1
	addi.d	$s4, $s4, 1
	bnez	$s5, .LBB10_54
# %bb.55:                               # %str_make_lowercase.exit.loopexit
	ori	$a0, $zero, 2656
	add.d	$a0, $sp, $a0
	ld.d	$s8, $a0, 0
.LBB10_56:                              # %str_make_lowercase.exit
	ori	$a0, $zero, 2648
	add.d	$a0, $sp, $a0
	ld.d	$s6, $a0, 0
	bgeu	$s8, $s6, .LBB10_75
# %bb.57:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	bltu	$a0, $a1, .LBB10_76
# %bb.58:
	ld.bu	$a0, $s8, 0
	ori	$a1, $zero, 37
	bne	$a0, $a1, .LBB10_63
# %bb.59:
	ld.bu	$a1, $s8, 1
	ld.bu	$a0, $s8, 2
	ori	$a3, $zero, 48
	addi.d	$s8, $s8, 2
	bne	$a1, $a3, .LBB10_61
# %bb.60:
	ori	$a2, $zero, 1
	beq	$a0, $a3, .LBB10_62
.LBB10_61:                              # %._crit_edge.i.i
	slli.d	$a1, $a1, 1
	pcalau12i	$a2, %pc_hi20(hextable)
	addi.d	$a2, $a2, %pc_lo12(hextable)
	ldx.b	$a1, $a2, $a1
	slli.d	$a0, $a0, 1
	ldx.b	$a0, $a2, $a0
	slli.d	$a1, $a1, 4
	or	$a2, $a1, $a0
.LBB10_62:                              # %hex2int.exit.i
	st.b	$a2, $s8, 0
.LBB10_63:
	addi.d	$s3, $s8, 4
	ori	$a0, $zero, 2656
	add.d	$a0, $sp, $a0
	st.d	$s8, $a0, 0
	bgeu	$s3, $s6, .LBB10_85
# %bb.64:                               # %.preheader.i117.preheader
	addi.w	$a0, $zero, -3
	sub.d	$a1, $a0, $s8
	ori	$s0, $zero, 48
	pcalau12i	$a0, %pc_hi20(hextable)
	addi.d	$s1, $a0, %pc_lo12(hextable)
	b	.LBB10_66
	.p2align	4, , 16
.LBB10_65:                              # %.critedge.i
                                        #   in Loop: Header=BB10_66 Depth=1
	addi.d	$s3, $s2, 5
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a1, $a1, -1
	bgeu	$s3, $s6, .LBB10_85
.LBB10_66:                              # %.preheader.i117
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_69 Depth 2
	move	$s2, $s8
	ld.bu	$s7, $s8, 1
	addi.d	$s8, $s8, 1
	addi.d	$s4, $s2, 2
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	add.d	$s5, $s6, $a1
	b	.LBB10_69
	.p2align	4, , 16
.LBB10_67:                              # %._crit_edge.i33.i
                                        #   in Loop: Header=BB10_69 Depth=2
	slli.d	$a1, $a1, 1
	ldx.b	$a1, $s1, $a1
	slli.d	$a0, $a0, 1
	ldx.b	$a0, $s1, $a0
	slli.d	$a1, $a1, 4
	or	$s7, $a1, $a0
.LBB10_68:                              # %hex2int.exit34.i
                                        #   in Loop: Header=BB10_69 Depth=2
	st.b	$s7, $s8, 0
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, -2
	addi.d	$s5, $s5, -2
	bgeu	$s3, $s6, .LBB10_65
.LBB10_69:                              #   Parent Loop BB10_66 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$a0, $s7, 255
	ori	$a1, $zero, 37
	bne	$a0, $a1, .LBB10_65
# %bb.70:                               #   in Loop: Header=BB10_69 Depth=2
	ld.bu	$a1, $s2, 2
	ld.bu	$a0, $s2, 3
	bne	$a1, $s0, .LBB10_67
# %bb.71:                               #   in Loop: Header=BB10_69 Depth=2
	ori	$s7, $zero, 1
	beq	$a0, $s0, .LBB10_68
	b	.LBB10_67
.LBB10_72:                              # %iter.check
	add.d	$a0, $s8, $s2
	addi.d	$a2, $a0, 1
	add.d	$a1, $s6, $s0
	sltu	$a3, $a1, $a2
	masknez	$a4, $a1, $a3
	maskeqz	$a2, $a2, $a3
	or	$a2, $a2, $a4
	sub.d	$a0, $a2, $a0
	ori	$a2, $zero, 8
	move	$a4, $s3
	bltu	$a0, $a2, .LBB10_549
# %bb.73:                               # %vector.main.loop.iter.check
	ori	$a2, $zero, 32
	add.d	$a3, $s2, $s8
	bgeu	$a0, $a2, .LBB10_101
# %bb.74:
	move	$a2, $zero
	b	.LBB10_169
.LBB10_75:
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
.LBB10_76:                              # %str_hex_to_char.exit
	beqz	$s7, .LBB10_86
.LBB10_77:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a2, $a0, %pc_lo12(.L.str.26)
	ori	$a0, $zero, 2656
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2648
	add.d	$a1, $sp, $a1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(str_strip)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2656
	add.d	$a0, $sp, $a0
	ld.d	$s3, $a0, 0
	ori	$a0, $zero, 2648
	add.d	$a0, $sp, $a0
	ld.d	$s6, $a0, 0
	move	$s1, $s2
	sub.d	$s0, $s6, $s3
	addi.d	$a0, $s0, 2
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_95
.LBB10_78:
	move	$s4, $a0
	addi.d	$s5, $s0, 1
	move	$a1, $s3
	move	$a2, $s5
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s4, $s5
	move	$s0, $s1
	move	$a1, $s1
	.p2align	4, , 16
.LBB10_79:                              # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.w	$a1, $a1, 0
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 0
	bnez	$a1, .LBB10_83
# %bb.80:                               #   in Loop: Header=BB10_79 Depth=1
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB10_79
# %bb.81:
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB10_83
# %bb.82:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB10_83:                              # %.loopexit
	st.d	$s4, $s0, 16
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 0
	st.d	$zero, $s0, 8
	bnez	$s7, .LBB10_50
# %bb.84:
	ori	$a0, $zero, 2656
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2648
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(str_fixup_spaces)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2648
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2656
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a2, $a0, 1
	move	$a0, $s2
	addi.d	$sp, $fp, -2048
	addi.d	$sp, $sp, -704
	addi.d	$sp, $sp, 720
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	pcaddu18i	$t8, %call36(string_assign_dup)
	jr	$t8
.LBB10_85:                              # %._crit_edge.i
	ori	$a0, $zero, 2648
	add.d	$a0, $sp, $a0
	st.d	$s6, $a0, 0
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	bnez	$s7, .LBB10_77
.LBB10_86:                              # %.preheader
	ori	$a0, $zero, 2656
	add.d	$a0, $sp, $a0
	ld.d	$s3, $a0, 0
	bltu	$s6, $s3, .LBB10_90
# %bb.87:
	ori	$a0, $zero, 32
	.p2align	4, , 16
.LBB10_88:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $s3, 0
	bne	$a1, $a0, .LBB10_90
# %bb.89:                               #   in Loop: Header=BB10_88 Depth=1
	addi.d	$s3, $s3, 1
	bgeu	$s6, $s3, .LBB10_88
.LBB10_90:                              # %.critedge2
	ori	$a0, $zero, 2656
	add.d	$a0, $sp, $a0
	st.d	$s3, $a0, 0
	bltu	$s6, $s3, .LBB10_94
# %bb.91:                               # %.lr.ph162.preheader
	ori	$a0, $zero, 32
	.p2align	4, , 16
.LBB10_92:                              # %.lr.ph162
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $s6, 0
	bne	$a1, $a0, .LBB10_94
# %bb.93:                               #   in Loop: Header=BB10_92 Depth=1
	addi.d	$s6, $s6, -1
	bgeu	$s6, $s3, .LBB10_92
.LBB10_94:                              # %.critedge4.loopexit
	ori	$a0, $zero, 2648
	add.d	$a0, $sp, $a0
	st.d	$s6, $a0, 0
	sub.d	$s0, $s6, $s3
	addi.d	$a0, $s0, 2
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_78
.LBB10_95:
	move	$a1, $s2
	.p2align	4, , 16
.LBB10_96:                              # %.preheader.i126
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.w	$a1, $a1, 0
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 0
	bnez	$a1, .LBB10_100
# %bb.97:                               #   in Loop: Header=BB10_96 Depth=1
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB10_96
# %bb.98:
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB10_100
# %bb.99:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB10_100:                             # %string_assign_null.exit132
	pcalau12i	$a0, %pc_hi20(empty_string)
	addi.d	$a0, $a0, %pc_lo12(empty_string)
	st.d	$a0, $s2, 16
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $s2, 0
	b	.LBB10_49
.LBB10_101:                             # %vector.ph
	move	$a4, $zero
	addi.w	$a5, $zero, -32
	and	$a2, $a0, $a5
	sltu	$a6, $a1, $s7
	masknez	$a7, $a1, $a6
	maskeqz	$a6, $s7, $a6
	or	$a6, $a6, $a7
	sub.d	$a6, $a6, $a3
	and	$a5, $a6, $a5
	xvrepli.b	$xr0, 92
	ori	$a6, $zero, 47
	b	.LBB10_103
	.p2align	4, , 16
.LBB10_102:                             # %pred.store.continue105
                                        #   in Loop: Header=BB10_103 Depth=1
	addi.d	$a4, $a4, 32
	beq	$a5, $a4, .LBB10_167
.LBB10_103:                             # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a7, $s4, $a4
	xvld	$xr1, $a7, -1
	xvseq.b	$xr1, $xr1, $xr0
	vpickve2gr.b	$t0, $vr1, 0
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_119
# %bb.104:                              # %pred.store.if
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, -1
	vpickve2gr.b	$t0, $vr1, 1
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_120
.LBB10_105:                             # %pred.store.continue45
                                        #   in Loop: Header=BB10_103 Depth=1
	vpickve2gr.b	$t0, $vr1, 2
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_121
.LBB10_106:                             # %pred.store.if46
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 1
	vpickve2gr.b	$t0, $vr1, 3
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_122
.LBB10_107:                             # %pred.store.continue49
                                        #   in Loop: Header=BB10_103 Depth=1
	vpickve2gr.b	$t0, $vr1, 4
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_123
.LBB10_108:                             # %pred.store.if50
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 3
	vpickve2gr.b	$t0, $vr1, 5
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_124
.LBB10_109:                             # %pred.store.continue53
                                        #   in Loop: Header=BB10_103 Depth=1
	vpickve2gr.b	$t0, $vr1, 6
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_125
.LBB10_110:                             # %pred.store.if54
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 5
	vpickve2gr.b	$t0, $vr1, 7
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_126
.LBB10_111:                             # %pred.store.continue57
                                        #   in Loop: Header=BB10_103 Depth=1
	vpickve2gr.b	$t0, $vr1, 8
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_127
.LBB10_112:                             # %pred.store.if58
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 7
	vpickve2gr.b	$t0, $vr1, 9
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_128
.LBB10_113:                             # %pred.store.continue61
                                        #   in Loop: Header=BB10_103 Depth=1
	vpickve2gr.b	$t0, $vr1, 10
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_129
.LBB10_114:                             # %pred.store.if62
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 9
	vpickve2gr.b	$t0, $vr1, 11
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_130
.LBB10_115:                             # %pred.store.continue65
                                        #   in Loop: Header=BB10_103 Depth=1
	vpickve2gr.b	$t0, $vr1, 12
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_131
.LBB10_116:                             # %pred.store.if66
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 11
	vpickve2gr.b	$t0, $vr1, 13
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_132
.LBB10_117:                             # %pred.store.continue69
                                        #   in Loop: Header=BB10_103 Depth=1
	vpickve2gr.b	$t0, $vr1, 14
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_133
.LBB10_118:                             # %pred.store.if70
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 13
	vpickve2gr.b	$t0, $vr1, 15
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_134
	b	.LBB10_135
	.p2align	4, , 16
.LBB10_119:                             # %pred.store.continue
                                        #   in Loop: Header=BB10_103 Depth=1
	vpickve2gr.b	$t0, $vr1, 1
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_105
.LBB10_120:                             # %pred.store.if44
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 0
	vpickve2gr.b	$t0, $vr1, 2
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_106
.LBB10_121:                             # %pred.store.continue47
                                        #   in Loop: Header=BB10_103 Depth=1
	vpickve2gr.b	$t0, $vr1, 3
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_107
.LBB10_122:                             # %pred.store.if48
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 2
	vpickve2gr.b	$t0, $vr1, 4
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_108
.LBB10_123:                             # %pred.store.continue51
                                        #   in Loop: Header=BB10_103 Depth=1
	vpickve2gr.b	$t0, $vr1, 5
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_109
.LBB10_124:                             # %pred.store.if52
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 4
	vpickve2gr.b	$t0, $vr1, 6
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_110
.LBB10_125:                             # %pred.store.continue55
                                        #   in Loop: Header=BB10_103 Depth=1
	vpickve2gr.b	$t0, $vr1, 7
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_111
.LBB10_126:                             # %pred.store.if56
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 6
	vpickve2gr.b	$t0, $vr1, 8
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_112
.LBB10_127:                             # %pred.store.continue59
                                        #   in Loop: Header=BB10_103 Depth=1
	vpickve2gr.b	$t0, $vr1, 9
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_113
.LBB10_128:                             # %pred.store.if60
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 8
	vpickve2gr.b	$t0, $vr1, 10
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_114
.LBB10_129:                             # %pred.store.continue63
                                        #   in Loop: Header=BB10_103 Depth=1
	vpickve2gr.b	$t0, $vr1, 11
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_115
.LBB10_130:                             # %pred.store.if64
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 10
	vpickve2gr.b	$t0, $vr1, 12
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_116
.LBB10_131:                             # %pred.store.continue67
                                        #   in Loop: Header=BB10_103 Depth=1
	vpickve2gr.b	$t0, $vr1, 13
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_117
.LBB10_132:                             # %pred.store.if68
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 12
	vpickve2gr.b	$t0, $vr1, 14
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_118
.LBB10_133:                             # %pred.store.continue71
                                        #   in Loop: Header=BB10_103 Depth=1
	vpickve2gr.b	$t0, $vr1, 15
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_135
.LBB10_134:                             # %pred.store.if72
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 14
.LBB10_135:                             # %pred.store.continue73
                                        #   in Loop: Header=BB10_103 Depth=1
	ori	$t0, $zero, 2592
	add.d	$t0, $sp, $t0
	xvst	$xr1, $t0, 0
	ori	$t0, $zero, 2608
	add.d	$t0, $sp, $t0
	ld.bu	$t0, $t0, 0
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_137
# %bb.136:                              # %pred.store.if74
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 15
.LBB10_137:                             # %pred.store.continue75
                                        #   in Loop: Header=BB10_103 Depth=1
	ori	$t0, $zero, 2560
	add.d	$t0, $sp, $t0
	xvst	$xr1, $t0, 0
	ori	$t0, $zero, 2577
	add.d	$t0, $sp, $t0
	ld.bu	$t0, $t0, 0
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_139
# %bb.138:                              # %pred.store.if76
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 16
.LBB10_139:                             # %pred.store.continue77
                                        #   in Loop: Header=BB10_103 Depth=1
	ori	$t0, $zero, 2528
	add.d	$t0, $sp, $t0
	xvst	$xr1, $t0, 0
	ori	$t0, $zero, 2546
	add.d	$t0, $sp, $t0
	ld.bu	$t0, $t0, 0
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_141
# %bb.140:                              # %pred.store.if78
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 17
.LBB10_141:                             # %pred.store.continue79
                                        #   in Loop: Header=BB10_103 Depth=1
	ori	$t0, $zero, 2496
	add.d	$t0, $sp, $t0
	xvst	$xr1, $t0, 0
	ori	$t0, $zero, 2515
	add.d	$t0, $sp, $t0
	ld.bu	$t0, $t0, 0
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_143
# %bb.142:                              # %pred.store.if80
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 18
.LBB10_143:                             # %pred.store.continue81
                                        #   in Loop: Header=BB10_103 Depth=1
	ori	$t0, $zero, 2464
	add.d	$t0, $sp, $t0
	xvst	$xr1, $t0, 0
	ori	$t0, $zero, 2484
	add.d	$t0, $sp, $t0
	ld.bu	$t0, $t0, 0
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_145
# %bb.144:                              # %pred.store.if82
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 19
.LBB10_145:                             # %pred.store.continue83
                                        #   in Loop: Header=BB10_103 Depth=1
	ori	$t0, $zero, 2432
	add.d	$t0, $sp, $t0
	xvst	$xr1, $t0, 0
	ori	$t0, $zero, 2453
	add.d	$t0, $sp, $t0
	ld.bu	$t0, $t0, 0
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_147
# %bb.146:                              # %pred.store.if84
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 20
.LBB10_147:                             # %pred.store.continue85
                                        #   in Loop: Header=BB10_103 Depth=1
	ori	$t0, $zero, 2400
	add.d	$t0, $sp, $t0
	xvst	$xr1, $t0, 0
	ori	$t0, $zero, 2422
	add.d	$t0, $sp, $t0
	ld.bu	$t0, $t0, 0
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_149
# %bb.148:                              # %pred.store.if86
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 21
.LBB10_149:                             # %pred.store.continue87
                                        #   in Loop: Header=BB10_103 Depth=1
	ori	$t0, $zero, 2368
	add.d	$t0, $sp, $t0
	xvst	$xr1, $t0, 0
	ori	$t0, $zero, 2391
	add.d	$t0, $sp, $t0
	ld.bu	$t0, $t0, 0
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_151
# %bb.150:                              # %pred.store.if88
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 22
.LBB10_151:                             # %pred.store.continue89
                                        #   in Loop: Header=BB10_103 Depth=1
	ori	$t0, $zero, 2336
	add.d	$t0, $sp, $t0
	xvst	$xr1, $t0, 0
	ori	$t0, $zero, 2360
	add.d	$t0, $sp, $t0
	ld.bu	$t0, $t0, 0
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_153
# %bb.152:                              # %pred.store.if90
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 23
.LBB10_153:                             # %pred.store.continue91
                                        #   in Loop: Header=BB10_103 Depth=1
	ori	$t0, $zero, 2304
	add.d	$t0, $sp, $t0
	xvst	$xr1, $t0, 0
	ori	$t0, $zero, 2329
	add.d	$t0, $sp, $t0
	ld.bu	$t0, $t0, 0
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_155
# %bb.154:                              # %pred.store.if92
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 24
.LBB10_155:                             # %pred.store.continue93
                                        #   in Loop: Header=BB10_103 Depth=1
	ori	$t0, $zero, 2272
	add.d	$t0, $sp, $t0
	xvst	$xr1, $t0, 0
	ori	$t0, $zero, 2298
	add.d	$t0, $sp, $t0
	ld.bu	$t0, $t0, 0
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_157
# %bb.156:                              # %pred.store.if94
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 25
.LBB10_157:                             # %pred.store.continue95
                                        #   in Loop: Header=BB10_103 Depth=1
	ori	$t0, $zero, 2240
	add.d	$t0, $sp, $t0
	xvst	$xr1, $t0, 0
	ori	$t0, $zero, 2267
	add.d	$t0, $sp, $t0
	ld.bu	$t0, $t0, 0
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_159
# %bb.158:                              # %pred.store.if96
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 26
.LBB10_159:                             # %pred.store.continue97
                                        #   in Loop: Header=BB10_103 Depth=1
	ori	$t0, $zero, 2208
	add.d	$t0, $sp, $t0
	xvst	$xr1, $t0, 0
	ori	$t0, $zero, 2236
	add.d	$t0, $sp, $t0
	ld.bu	$t0, $t0, 0
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_161
# %bb.160:                              # %pred.store.if98
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 27
.LBB10_161:                             # %pred.store.continue99
                                        #   in Loop: Header=BB10_103 Depth=1
	ori	$t0, $zero, 2176
	add.d	$t0, $sp, $t0
	xvst	$xr1, $t0, 0
	ori	$t0, $zero, 2205
	add.d	$t0, $sp, $t0
	ld.bu	$t0, $t0, 0
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_163
# %bb.162:                              # %pred.store.if100
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 28
.LBB10_163:                             # %pred.store.continue101
                                        #   in Loop: Header=BB10_103 Depth=1
	ori	$t0, $zero, 2144
	add.d	$t0, $sp, $t0
	xvst	$xr1, $t0, 0
	ori	$t0, $zero, 2174
	add.d	$t0, $sp, $t0
	ld.bu	$t0, $t0, 0
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_165
# %bb.164:                              # %pred.store.if102
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 29
.LBB10_165:                             # %pred.store.continue103
                                        #   in Loop: Header=BB10_103 Depth=1
	ori	$t0, $zero, 2112
	add.d	$t0, $sp, $t0
	xvst	$xr1, $t0, 0
	ori	$t0, $zero, 2143
	add.d	$t0, $sp, $t0
	ld.bu	$t0, $t0, 0
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_102
# %bb.166:                              # %pred.store.if104
                                        #   in Loop: Header=BB10_103 Depth=1
	st.b	$a6, $a7, 30
	b	.LBB10_102
.LBB10_167:                             # %middle.block
	beq	$a0, $a2, .LBB10_188
# %bb.168:                              # %vec.epilog.iter.check
	andi	$a4, $a0, 24
	beqz	$a4, .LBB10_548
.LBB10_169:                             # %vec.epilog.ph
	addi.w	$a6, $zero, -8
	and	$a5, $a0, $a6
	add.d	$a4, $s3, $a5
	sltu	$a7, $a1, $s7
	masknez	$t0, $a1, $a7
	maskeqz	$a7, $s7, $a7
	or	$a7, $a7, $t0
	sub.d	$a3, $a7, $a3
	and	$a3, $a3, $a6
	vrepli.b	$vr0, 92
	ori	$a6, $zero, 47
	b	.LBB10_171
	.p2align	4, , 16
.LBB10_170:                             # %pred.store.continue133
                                        #   in Loop: Header=BB10_171 Depth=1
	addi.d	$a2, $a2, 8
	beq	$a3, $a2, .LBB10_187
.LBB10_171:                             # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a7, $s4, $a2
	ld.d	$t0, $a7, -1
	vinsgr2vr.d	$vr1, $t0, 0
	vseq.b	$vr1, $vr1, $vr0
	vpickve2gr.h	$t0, $vr1, 0
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_179
# %bb.172:                              # %pred.store.if118
                                        #   in Loop: Header=BB10_171 Depth=1
	st.b	$a6, $a7, -1
	vilvl.b	$vr1, $vr1, $vr1
	vpickve2gr.h	$t0, $vr1, 1
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_180
.LBB10_173:                             # %pred.store.continue121
                                        #   in Loop: Header=BB10_171 Depth=1
	vpickve2gr.h	$t0, $vr1, 2
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_181
.LBB10_174:                             # %pred.store.if122
                                        #   in Loop: Header=BB10_171 Depth=1
	st.b	$a6, $a7, 1
	vpickve2gr.h	$t0, $vr1, 3
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_182
.LBB10_175:                             # %pred.store.continue125
                                        #   in Loop: Header=BB10_171 Depth=1
	vpickve2gr.h	$t0, $vr1, 4
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_183
.LBB10_176:                             # %pred.store.if126
                                        #   in Loop: Header=BB10_171 Depth=1
	st.b	$a6, $a7, 3
	vpickve2gr.h	$t0, $vr1, 5
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_184
.LBB10_177:                             # %pred.store.continue129
                                        #   in Loop: Header=BB10_171 Depth=1
	vpickve2gr.h	$t0, $vr1, 6
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_185
.LBB10_178:                             # %pred.store.if130
                                        #   in Loop: Header=BB10_171 Depth=1
	st.b	$a6, $a7, 5
	vpickve2gr.h	$t0, $vr1, 7
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_170
	b	.LBB10_186
	.p2align	4, , 16
.LBB10_179:                             # %pred.store.continue119
                                        #   in Loop: Header=BB10_171 Depth=1
	vilvl.b	$vr1, $vr1, $vr1
	vpickve2gr.h	$t0, $vr1, 1
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_173
.LBB10_180:                             # %pred.store.if120
                                        #   in Loop: Header=BB10_171 Depth=1
	st.b	$a6, $a7, 0
	vpickve2gr.h	$t0, $vr1, 2
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_174
.LBB10_181:                             # %pred.store.continue123
                                        #   in Loop: Header=BB10_171 Depth=1
	vpickve2gr.h	$t0, $vr1, 3
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_175
.LBB10_182:                             # %pred.store.if124
                                        #   in Loop: Header=BB10_171 Depth=1
	st.b	$a6, $a7, 2
	vpickve2gr.h	$t0, $vr1, 4
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_176
.LBB10_183:                             # %pred.store.continue127
                                        #   in Loop: Header=BB10_171 Depth=1
	vpickve2gr.h	$t0, $vr1, 5
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_177
.LBB10_184:                             # %pred.store.if128
                                        #   in Loop: Header=BB10_171 Depth=1
	st.b	$a6, $a7, 4
	vpickve2gr.h	$t0, $vr1, 6
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_178
.LBB10_185:                             # %pred.store.continue131
                                        #   in Loop: Header=BB10_171 Depth=1
	vpickve2gr.h	$t0, $vr1, 7
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_170
.LBB10_186:                             # %pred.store.if132
                                        #   in Loop: Header=BB10_171 Depth=1
	st.b	$a6, $a7, 6
	b	.LBB10_170
.LBB10_187:                             # %vec.epilog.middle.block
	bne	$a0, $a5, .LBB10_549
.LBB10_188:                             # %iter.check138
	ori	$a2, $zero, 8
	move	$a4, $s3
	bltu	$a0, $a2, .LBB10_554
# %bb.189:                              # %vector.main.loop.iter.check140
	ori	$a2, $zero, 32
	bgeu	$a0, $a2, .LBB10_191
# %bb.190:
	move	$a3, $zero
	b	.LBB10_259
.LBB10_191:                             # %vector.ph141
	move	$a4, $zero
	addi.w	$a5, $zero, -32
	and	$a3, $a0, $a5
	add.d	$a6, $s2, $s8
	sltu	$a7, $a1, $s7
	masknez	$t0, $a1, $a7
	maskeqz	$a7, $s7, $a7
	or	$a7, $a7, $t0
	sub.d	$a6, $a7, $a6
	and	$a5, $a6, $a5
	xvrepli.b	$xr0, 60
	b	.LBB10_193
	.p2align	4, , 16
.LBB10_192:                             # %pred.store.continue242
                                        #   in Loop: Header=BB10_193 Depth=1
	addi.d	$a4, $a4, 32
	beq	$a5, $a4, .LBB10_257
.LBB10_193:                             # %vector.body144
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a6, $s4, $a4
	xvld	$xr1, $a6, -1
	xvseq.b	$xr1, $xr1, $xr0
	vpickve2gr.b	$a7, $vr1, 0
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_209
# %bb.194:                              # %pred.store.if179
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, -1
	vpickve2gr.b	$a7, $vr1, 1
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_210
.LBB10_195:                             # %pred.store.continue182
                                        #   in Loop: Header=BB10_193 Depth=1
	vpickve2gr.b	$a7, $vr1, 2
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_211
.LBB10_196:                             # %pred.store.if183
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 1
	vpickve2gr.b	$a7, $vr1, 3
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_212
.LBB10_197:                             # %pred.store.continue186
                                        #   in Loop: Header=BB10_193 Depth=1
	vpickve2gr.b	$a7, $vr1, 4
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_213
.LBB10_198:                             # %pred.store.if187
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 3
	vpickve2gr.b	$a7, $vr1, 5
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_214
.LBB10_199:                             # %pred.store.continue190
                                        #   in Loop: Header=BB10_193 Depth=1
	vpickve2gr.b	$a7, $vr1, 6
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_215
.LBB10_200:                             # %pred.store.if191
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 5
	vpickve2gr.b	$a7, $vr1, 7
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_216
.LBB10_201:                             # %pred.store.continue194
                                        #   in Loop: Header=BB10_193 Depth=1
	vpickve2gr.b	$a7, $vr1, 8
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_217
.LBB10_202:                             # %pred.store.if195
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 7
	vpickve2gr.b	$a7, $vr1, 9
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_218
.LBB10_203:                             # %pred.store.continue198
                                        #   in Loop: Header=BB10_193 Depth=1
	vpickve2gr.b	$a7, $vr1, 10
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_219
.LBB10_204:                             # %pred.store.if199
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 9
	vpickve2gr.b	$a7, $vr1, 11
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_220
.LBB10_205:                             # %pred.store.continue202
                                        #   in Loop: Header=BB10_193 Depth=1
	vpickve2gr.b	$a7, $vr1, 12
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_221
.LBB10_206:                             # %pred.store.if203
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 11
	vpickve2gr.b	$a7, $vr1, 13
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_222
.LBB10_207:                             # %pred.store.continue206
                                        #   in Loop: Header=BB10_193 Depth=1
	vpickve2gr.b	$a7, $vr1, 14
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_223
.LBB10_208:                             # %pred.store.if207
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 13
	vpickve2gr.b	$a7, $vr1, 15
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_224
	b	.LBB10_225
	.p2align	4, , 16
.LBB10_209:                             # %pred.store.continue180
                                        #   in Loop: Header=BB10_193 Depth=1
	vpickve2gr.b	$a7, $vr1, 1
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_195
.LBB10_210:                             # %pred.store.if181
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 0
	vpickve2gr.b	$a7, $vr1, 2
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_196
.LBB10_211:                             # %pred.store.continue184
                                        #   in Loop: Header=BB10_193 Depth=1
	vpickve2gr.b	$a7, $vr1, 3
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_197
.LBB10_212:                             # %pred.store.if185
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 2
	vpickve2gr.b	$a7, $vr1, 4
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_198
.LBB10_213:                             # %pred.store.continue188
                                        #   in Loop: Header=BB10_193 Depth=1
	vpickve2gr.b	$a7, $vr1, 5
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_199
.LBB10_214:                             # %pred.store.if189
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 4
	vpickve2gr.b	$a7, $vr1, 6
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_200
.LBB10_215:                             # %pred.store.continue192
                                        #   in Loop: Header=BB10_193 Depth=1
	vpickve2gr.b	$a7, $vr1, 7
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_201
.LBB10_216:                             # %pred.store.if193
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 6
	vpickve2gr.b	$a7, $vr1, 8
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_202
.LBB10_217:                             # %pred.store.continue196
                                        #   in Loop: Header=BB10_193 Depth=1
	vpickve2gr.b	$a7, $vr1, 9
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_203
.LBB10_218:                             # %pred.store.if197
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 8
	vpickve2gr.b	$a7, $vr1, 10
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_204
.LBB10_219:                             # %pred.store.continue200
                                        #   in Loop: Header=BB10_193 Depth=1
	vpickve2gr.b	$a7, $vr1, 11
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_205
.LBB10_220:                             # %pred.store.if201
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 10
	vpickve2gr.b	$a7, $vr1, 12
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_206
.LBB10_221:                             # %pred.store.continue204
                                        #   in Loop: Header=BB10_193 Depth=1
	vpickve2gr.b	$a7, $vr1, 13
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_207
.LBB10_222:                             # %pred.store.if205
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 12
	vpickve2gr.b	$a7, $vr1, 14
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_208
.LBB10_223:                             # %pred.store.continue208
                                        #   in Loop: Header=BB10_193 Depth=1
	vpickve2gr.b	$a7, $vr1, 15
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_225
.LBB10_224:                             # %pred.store.if209
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 14
.LBB10_225:                             # %pred.store.continue210
                                        #   in Loop: Header=BB10_193 Depth=1
	ori	$a7, $zero, 2080
	add.d	$a7, $sp, $a7
	xvst	$xr1, $a7, 0
	ori	$a7, $zero, 2096
	add.d	$a7, $sp, $a7
	ld.bu	$a7, $a7, 0
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_227
# %bb.226:                              # %pred.store.if211
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 15
.LBB10_227:                             # %pred.store.continue212
                                        #   in Loop: Header=BB10_193 Depth=1
	ori	$a7, $zero, 2048
	add.d	$a7, $sp, $a7
	xvst	$xr1, $a7, 0
	ori	$a7, $zero, 2065
	add.d	$a7, $sp, $a7
	ld.bu	$a7, $a7, 0
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_242
# %bb.228:                              # %pred.store.if213
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 16
	xvst	$xr1, $sp, 2016
	ld.bu	$a7, $sp, 2034
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_243
.LBB10_229:                             # %pred.store.continue216
                                        #   in Loop: Header=BB10_193 Depth=1
	xvst	$xr1, $sp, 1984
	ld.bu	$a7, $sp, 2003
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_244
.LBB10_230:                             # %pred.store.if217
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 18
	xvst	$xr1, $sp, 1952
	ld.bu	$a7, $sp, 1972
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_245
.LBB10_231:                             # %pred.store.continue220
                                        #   in Loop: Header=BB10_193 Depth=1
	xvst	$xr1, $sp, 1920
	ld.bu	$a7, $sp, 1941
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_246
.LBB10_232:                             # %pred.store.if221
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 20
	xvst	$xr1, $sp, 1888
	ld.bu	$a7, $sp, 1910
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_247
.LBB10_233:                             # %pred.store.continue224
                                        #   in Loop: Header=BB10_193 Depth=1
	xvst	$xr1, $sp, 1856
	ld.bu	$a7, $sp, 1879
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_248
.LBB10_234:                             # %pred.store.if225
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 22
	xvst	$xr1, $sp, 1824
	ld.bu	$a7, $sp, 1848
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_249
.LBB10_235:                             # %pred.store.continue228
                                        #   in Loop: Header=BB10_193 Depth=1
	xvst	$xr1, $sp, 1792
	ld.bu	$a7, $sp, 1817
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_250
.LBB10_236:                             # %pred.store.if229
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 24
	xvst	$xr1, $sp, 1760
	ld.bu	$a7, $sp, 1786
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_251
.LBB10_237:                             # %pred.store.continue232
                                        #   in Loop: Header=BB10_193 Depth=1
	xvst	$xr1, $sp, 1728
	ld.bu	$a7, $sp, 1755
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_252
.LBB10_238:                             # %pred.store.if233
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 26
	xvst	$xr1, $sp, 1696
	ld.bu	$a7, $sp, 1724
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_253
.LBB10_239:                             # %pred.store.continue236
                                        #   in Loop: Header=BB10_193 Depth=1
	xvst	$xr1, $sp, 1664
	ld.bu	$a7, $sp, 1693
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_254
.LBB10_240:                             # %pred.store.if237
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 28
	xvst	$xr1, $sp, 1632
	ld.bu	$a7, $sp, 1662
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_255
.LBB10_241:                             # %pred.store.continue240
                                        #   in Loop: Header=BB10_193 Depth=1
	xvst	$xr1, $sp, 1600
	ld.bu	$a7, $sp, 1631
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_192
	b	.LBB10_256
	.p2align	4, , 16
.LBB10_242:                             # %pred.store.continue214
                                        #   in Loop: Header=BB10_193 Depth=1
	xvst	$xr1, $sp, 2016
	ld.bu	$a7, $sp, 2034
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_229
.LBB10_243:                             # %pred.store.if215
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 17
	xvst	$xr1, $sp, 1984
	ld.bu	$a7, $sp, 2003
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_230
.LBB10_244:                             # %pred.store.continue218
                                        #   in Loop: Header=BB10_193 Depth=1
	xvst	$xr1, $sp, 1952
	ld.bu	$a7, $sp, 1972
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_231
.LBB10_245:                             # %pred.store.if219
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 19
	xvst	$xr1, $sp, 1920
	ld.bu	$a7, $sp, 1941
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_232
.LBB10_246:                             # %pred.store.continue222
                                        #   in Loop: Header=BB10_193 Depth=1
	xvst	$xr1, $sp, 1888
	ld.bu	$a7, $sp, 1910
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_233
.LBB10_247:                             # %pred.store.if223
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 21
	xvst	$xr1, $sp, 1856
	ld.bu	$a7, $sp, 1879
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_234
.LBB10_248:                             # %pred.store.continue226
                                        #   in Loop: Header=BB10_193 Depth=1
	xvst	$xr1, $sp, 1824
	ld.bu	$a7, $sp, 1848
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_235
.LBB10_249:                             # %pred.store.if227
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 23
	xvst	$xr1, $sp, 1792
	ld.bu	$a7, $sp, 1817
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_236
.LBB10_250:                             # %pred.store.continue230
                                        #   in Loop: Header=BB10_193 Depth=1
	xvst	$xr1, $sp, 1760
	ld.bu	$a7, $sp, 1786
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_237
.LBB10_251:                             # %pred.store.if231
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 25
	xvst	$xr1, $sp, 1728
	ld.bu	$a7, $sp, 1755
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_238
.LBB10_252:                             # %pred.store.continue234
                                        #   in Loop: Header=BB10_193 Depth=1
	xvst	$xr1, $sp, 1696
	ld.bu	$a7, $sp, 1724
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_239
.LBB10_253:                             # %pred.store.if235
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 27
	xvst	$xr1, $sp, 1664
	ld.bu	$a7, $sp, 1693
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_240
.LBB10_254:                             # %pred.store.continue238
                                        #   in Loop: Header=BB10_193 Depth=1
	xvst	$xr1, $sp, 1632
	ld.bu	$a7, $sp, 1662
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_241
.LBB10_255:                             # %pred.store.if239
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 29
	xvst	$xr1, $sp, 1600
	ld.bu	$a7, $sp, 1631
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_192
.LBB10_256:                             # %pred.store.if241
                                        #   in Loop: Header=BB10_193 Depth=1
	st.b	$a2, $a6, 30
	b	.LBB10_192
.LBB10_257:                             # %middle.block244
	beq	$a0, $a3, .LBB10_278
# %bb.258:                              # %vec.epilog.iter.check249
	andi	$a4, $a0, 24
	beqz	$a4, .LBB10_553
.LBB10_259:                             # %vec.epilog.ph248
	addi.w	$a6, $zero, -8
	and	$a5, $a0, $a6
	add.d	$a4, $s3, $a5
	add.d	$a7, $s2, $s8
	sltu	$t0, $a1, $s7
	masknez	$t1, $a1, $t0
	maskeqz	$t0, $s7, $t0
	or	$t0, $t0, $t1
	sub.d	$a7, $t0, $a7
	and	$a6, $a7, $a6
	vrepli.b	$vr0, 60
	b	.LBB10_261
	.p2align	4, , 16
.LBB10_260:                             # %pred.store.continue280
                                        #   in Loop: Header=BB10_261 Depth=1
	addi.d	$a3, $a3, 8
	beq	$a6, $a3, .LBB10_277
.LBB10_261:                             # %vec.epilog.vector.body254
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a7, $s4, $a3
	ld.d	$t0, $a7, -1
	vinsgr2vr.d	$vr1, $t0, 0
	vseq.b	$vr1, $vr1, $vr0
	vpickve2gr.h	$t0, $vr1, 0
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_269
# %bb.262:                              # %pred.store.if265
                                        #   in Loop: Header=BB10_261 Depth=1
	st.b	$a2, $a7, -1
	vilvl.b	$vr1, $vr1, $vr1
	vpickve2gr.h	$t0, $vr1, 1
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_270
.LBB10_263:                             # %pred.store.continue268
                                        #   in Loop: Header=BB10_261 Depth=1
	vpickve2gr.h	$t0, $vr1, 2
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_271
.LBB10_264:                             # %pred.store.if269
                                        #   in Loop: Header=BB10_261 Depth=1
	st.b	$a2, $a7, 1
	vpickve2gr.h	$t0, $vr1, 3
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_272
.LBB10_265:                             # %pred.store.continue272
                                        #   in Loop: Header=BB10_261 Depth=1
	vpickve2gr.h	$t0, $vr1, 4
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_273
.LBB10_266:                             # %pred.store.if273
                                        #   in Loop: Header=BB10_261 Depth=1
	st.b	$a2, $a7, 3
	vpickve2gr.h	$t0, $vr1, 5
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_274
.LBB10_267:                             # %pred.store.continue276
                                        #   in Loop: Header=BB10_261 Depth=1
	vpickve2gr.h	$t0, $vr1, 6
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_275
.LBB10_268:                             # %pred.store.if277
                                        #   in Loop: Header=BB10_261 Depth=1
	st.b	$a2, $a7, 5
	vpickve2gr.h	$t0, $vr1, 7
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_260
	b	.LBB10_276
	.p2align	4, , 16
.LBB10_269:                             # %pred.store.continue266
                                        #   in Loop: Header=BB10_261 Depth=1
	vilvl.b	$vr1, $vr1, $vr1
	vpickve2gr.h	$t0, $vr1, 1
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_263
.LBB10_270:                             # %pred.store.if267
                                        #   in Loop: Header=BB10_261 Depth=1
	st.b	$a2, $a7, 0
	vpickve2gr.h	$t0, $vr1, 2
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_264
.LBB10_271:                             # %pred.store.continue270
                                        #   in Loop: Header=BB10_261 Depth=1
	vpickve2gr.h	$t0, $vr1, 3
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_265
.LBB10_272:                             # %pred.store.if271
                                        #   in Loop: Header=BB10_261 Depth=1
	st.b	$a2, $a7, 2
	vpickve2gr.h	$t0, $vr1, 4
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_266
.LBB10_273:                             # %pred.store.continue274
                                        #   in Loop: Header=BB10_261 Depth=1
	vpickve2gr.h	$t0, $vr1, 5
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_267
.LBB10_274:                             # %pred.store.if275
                                        #   in Loop: Header=BB10_261 Depth=1
	st.b	$a2, $a7, 4
	vpickve2gr.h	$t0, $vr1, 6
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_268
.LBB10_275:                             # %pred.store.continue278
                                        #   in Loop: Header=BB10_261 Depth=1
	vpickve2gr.h	$t0, $vr1, 7
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_260
.LBB10_276:                             # %pred.store.if279
                                        #   in Loop: Header=BB10_261 Depth=1
	st.b	$a2, $a7, 6
	b	.LBB10_260
.LBB10_277:                             # %vec.epilog.middle.block282
	bne	$a0, $a5, .LBB10_554
.LBB10_278:                             # %iter.check288
	ori	$a2, $zero, 8
	move	$a4, $s3
	bltu	$a0, $a2, .LBB10_559
# %bb.279:                              # %vector.main.loop.iter.check290
	ori	$a2, $zero, 32
	bgeu	$a0, $a2, .LBB10_281
# %bb.280:
	move	$a3, $zero
	b	.LBB10_349
.LBB10_281:                             # %vector.ph291
	move	$a4, $zero
	addi.w	$a5, $zero, -32
	and	$a3, $a0, $a5
	add.d	$a6, $s2, $s8
	sltu	$a7, $a1, $s7
	masknez	$t0, $a1, $a7
	maskeqz	$a7, $s7, $a7
	or	$a7, $a7, $t0
	sub.d	$a6, $a7, $a6
	and	$a5, $a6, $a5
	xvrepli.b	$xr0, 62
	b	.LBB10_283
	.p2align	4, , 16
.LBB10_282:                             # %pred.store.continue392
                                        #   in Loop: Header=BB10_283 Depth=1
	addi.d	$a4, $a4, 32
	beq	$a5, $a4, .LBB10_347
.LBB10_283:                             # %vector.body294
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a6, $s4, $a4
	xvld	$xr1, $a6, -1
	xvseq.b	$xr1, $xr1, $xr0
	vpickve2gr.b	$a7, $vr1, 0
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_315
# %bb.284:                              # %pred.store.if329
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, -1
	vpickve2gr.b	$a7, $vr1, 1
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_316
.LBB10_285:                             # %pred.store.continue332
                                        #   in Loop: Header=BB10_283 Depth=1
	vpickve2gr.b	$a7, $vr1, 2
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_317
.LBB10_286:                             # %pred.store.if333
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 1
	vpickve2gr.b	$a7, $vr1, 3
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_318
.LBB10_287:                             # %pred.store.continue336
                                        #   in Loop: Header=BB10_283 Depth=1
	vpickve2gr.b	$a7, $vr1, 4
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_319
.LBB10_288:                             # %pred.store.if337
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 3
	vpickve2gr.b	$a7, $vr1, 5
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_320
.LBB10_289:                             # %pred.store.continue340
                                        #   in Loop: Header=BB10_283 Depth=1
	vpickve2gr.b	$a7, $vr1, 6
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_321
.LBB10_290:                             # %pred.store.if341
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 5
	vpickve2gr.b	$a7, $vr1, 7
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_322
.LBB10_291:                             # %pred.store.continue344
                                        #   in Loop: Header=BB10_283 Depth=1
	vpickve2gr.b	$a7, $vr1, 8
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_323
.LBB10_292:                             # %pred.store.if345
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 7
	vpickve2gr.b	$a7, $vr1, 9
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_324
.LBB10_293:                             # %pred.store.continue348
                                        #   in Loop: Header=BB10_283 Depth=1
	vpickve2gr.b	$a7, $vr1, 10
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_325
.LBB10_294:                             # %pred.store.if349
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 9
	vpickve2gr.b	$a7, $vr1, 11
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_326
.LBB10_295:                             # %pred.store.continue352
                                        #   in Loop: Header=BB10_283 Depth=1
	vpickve2gr.b	$a7, $vr1, 12
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_327
.LBB10_296:                             # %pred.store.if353
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 11
	vpickve2gr.b	$a7, $vr1, 13
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_328
.LBB10_297:                             # %pred.store.continue356
                                        #   in Loop: Header=BB10_283 Depth=1
	vpickve2gr.b	$a7, $vr1, 14
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_329
.LBB10_298:                             # %pred.store.if357
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 13
	vpickve2gr.b	$a7, $vr1, 15
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_330
.LBB10_299:                             # %pred.store.continue360
                                        #   in Loop: Header=BB10_283 Depth=1
	xvst	$xr1, $sp, 1568
	ld.bu	$a7, $sp, 1584
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_331
.LBB10_300:                             # %pred.store.if361
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 15
	xvst	$xr1, $sp, 1536
	ld.bu	$a7, $sp, 1553
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_332
.LBB10_301:                             # %pred.store.continue364
                                        #   in Loop: Header=BB10_283 Depth=1
	xvst	$xr1, $sp, 1504
	ld.bu	$a7, $sp, 1522
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_333
.LBB10_302:                             # %pred.store.if365
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 17
	xvst	$xr1, $sp, 1472
	ld.bu	$a7, $sp, 1491
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_334
.LBB10_303:                             # %pred.store.continue368
                                        #   in Loop: Header=BB10_283 Depth=1
	xvst	$xr1, $sp, 1440
	ld.bu	$a7, $sp, 1460
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_335
.LBB10_304:                             # %pred.store.if369
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 19
	xvst	$xr1, $sp, 1408
	ld.bu	$a7, $sp, 1429
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_336
.LBB10_305:                             # %pred.store.continue372
                                        #   in Loop: Header=BB10_283 Depth=1
	xvst	$xr1, $sp, 1376
	ld.bu	$a7, $sp, 1398
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_337
.LBB10_306:                             # %pred.store.if373
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 21
	xvst	$xr1, $sp, 1344
	ld.bu	$a7, $sp, 1367
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_338
.LBB10_307:                             # %pred.store.continue376
                                        #   in Loop: Header=BB10_283 Depth=1
	xvst	$xr1, $sp, 1312
	ld.bu	$a7, $sp, 1336
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_339
.LBB10_308:                             # %pred.store.if377
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 23
	xvst	$xr1, $sp, 1280
	ld.bu	$a7, $sp, 1305
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_340
.LBB10_309:                             # %pred.store.continue380
                                        #   in Loop: Header=BB10_283 Depth=1
	xvst	$xr1, $sp, 1248
	ld.bu	$a7, $sp, 1274
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_341
.LBB10_310:                             # %pred.store.if381
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 25
	xvst	$xr1, $sp, 1216
	ld.bu	$a7, $sp, 1243
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_342
.LBB10_311:                             # %pred.store.continue384
                                        #   in Loop: Header=BB10_283 Depth=1
	xvst	$xr1, $sp, 1184
	ld.bu	$a7, $sp, 1212
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_343
.LBB10_312:                             # %pred.store.if385
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 27
	xvst	$xr1, $sp, 1152
	ld.bu	$a7, $sp, 1181
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_344
.LBB10_313:                             # %pred.store.continue388
                                        #   in Loop: Header=BB10_283 Depth=1
	xvst	$xr1, $sp, 1120
	ld.bu	$a7, $sp, 1150
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_345
.LBB10_314:                             # %pred.store.if389
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 29
	xvst	$xr1, $sp, 1088
	ld.bu	$a7, $sp, 1119
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_282
	b	.LBB10_346
	.p2align	4, , 16
.LBB10_315:                             # %pred.store.continue330
                                        #   in Loop: Header=BB10_283 Depth=1
	vpickve2gr.b	$a7, $vr1, 1
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_285
.LBB10_316:                             # %pred.store.if331
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 0
	vpickve2gr.b	$a7, $vr1, 2
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_286
.LBB10_317:                             # %pred.store.continue334
                                        #   in Loop: Header=BB10_283 Depth=1
	vpickve2gr.b	$a7, $vr1, 3
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_287
.LBB10_318:                             # %pred.store.if335
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 2
	vpickve2gr.b	$a7, $vr1, 4
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_288
.LBB10_319:                             # %pred.store.continue338
                                        #   in Loop: Header=BB10_283 Depth=1
	vpickve2gr.b	$a7, $vr1, 5
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_289
.LBB10_320:                             # %pred.store.if339
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 4
	vpickve2gr.b	$a7, $vr1, 6
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_290
.LBB10_321:                             # %pred.store.continue342
                                        #   in Loop: Header=BB10_283 Depth=1
	vpickve2gr.b	$a7, $vr1, 7
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_291
.LBB10_322:                             # %pred.store.if343
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 6
	vpickve2gr.b	$a7, $vr1, 8
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_292
.LBB10_323:                             # %pred.store.continue346
                                        #   in Loop: Header=BB10_283 Depth=1
	vpickve2gr.b	$a7, $vr1, 9
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_293
.LBB10_324:                             # %pred.store.if347
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 8
	vpickve2gr.b	$a7, $vr1, 10
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_294
.LBB10_325:                             # %pred.store.continue350
                                        #   in Loop: Header=BB10_283 Depth=1
	vpickve2gr.b	$a7, $vr1, 11
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_295
.LBB10_326:                             # %pred.store.if351
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 10
	vpickve2gr.b	$a7, $vr1, 12
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_296
.LBB10_327:                             # %pred.store.continue354
                                        #   in Loop: Header=BB10_283 Depth=1
	vpickve2gr.b	$a7, $vr1, 13
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_297
.LBB10_328:                             # %pred.store.if355
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 12
	vpickve2gr.b	$a7, $vr1, 14
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_298
.LBB10_329:                             # %pred.store.continue358
                                        #   in Loop: Header=BB10_283 Depth=1
	vpickve2gr.b	$a7, $vr1, 15
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_299
.LBB10_330:                             # %pred.store.if359
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 14
	xvst	$xr1, $sp, 1568
	ld.bu	$a7, $sp, 1584
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_300
.LBB10_331:                             # %pred.store.continue362
                                        #   in Loop: Header=BB10_283 Depth=1
	xvst	$xr1, $sp, 1536
	ld.bu	$a7, $sp, 1553
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_301
.LBB10_332:                             # %pred.store.if363
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 16
	xvst	$xr1, $sp, 1504
	ld.bu	$a7, $sp, 1522
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_302
.LBB10_333:                             # %pred.store.continue366
                                        #   in Loop: Header=BB10_283 Depth=1
	xvst	$xr1, $sp, 1472
	ld.bu	$a7, $sp, 1491
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_303
.LBB10_334:                             # %pred.store.if367
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 18
	xvst	$xr1, $sp, 1440
	ld.bu	$a7, $sp, 1460
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_304
.LBB10_335:                             # %pred.store.continue370
                                        #   in Loop: Header=BB10_283 Depth=1
	xvst	$xr1, $sp, 1408
	ld.bu	$a7, $sp, 1429
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_305
.LBB10_336:                             # %pred.store.if371
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 20
	xvst	$xr1, $sp, 1376
	ld.bu	$a7, $sp, 1398
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_306
.LBB10_337:                             # %pred.store.continue374
                                        #   in Loop: Header=BB10_283 Depth=1
	xvst	$xr1, $sp, 1344
	ld.bu	$a7, $sp, 1367
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_307
.LBB10_338:                             # %pred.store.if375
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 22
	xvst	$xr1, $sp, 1312
	ld.bu	$a7, $sp, 1336
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_308
.LBB10_339:                             # %pred.store.continue378
                                        #   in Loop: Header=BB10_283 Depth=1
	xvst	$xr1, $sp, 1280
	ld.bu	$a7, $sp, 1305
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_309
.LBB10_340:                             # %pred.store.if379
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 24
	xvst	$xr1, $sp, 1248
	ld.bu	$a7, $sp, 1274
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_310
.LBB10_341:                             # %pred.store.continue382
                                        #   in Loop: Header=BB10_283 Depth=1
	xvst	$xr1, $sp, 1216
	ld.bu	$a7, $sp, 1243
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_311
.LBB10_342:                             # %pred.store.if383
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 26
	xvst	$xr1, $sp, 1184
	ld.bu	$a7, $sp, 1212
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_312
.LBB10_343:                             # %pred.store.continue386
                                        #   in Loop: Header=BB10_283 Depth=1
	xvst	$xr1, $sp, 1152
	ld.bu	$a7, $sp, 1181
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_313
.LBB10_344:                             # %pred.store.if387
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 28
	xvst	$xr1, $sp, 1120
	ld.bu	$a7, $sp, 1150
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_314
.LBB10_345:                             # %pred.store.continue390
                                        #   in Loop: Header=BB10_283 Depth=1
	xvst	$xr1, $sp, 1088
	ld.bu	$a7, $sp, 1119
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_282
.LBB10_346:                             # %pred.store.if391
                                        #   in Loop: Header=BB10_283 Depth=1
	st.b	$a2, $a6, 30
	b	.LBB10_282
.LBB10_347:                             # %middle.block394
	beq	$a0, $a3, .LBB10_368
# %bb.348:                              # %vec.epilog.iter.check399
	andi	$a4, $a0, 24
	beqz	$a4, .LBB10_558
.LBB10_349:                             # %vec.epilog.ph398
	addi.w	$a6, $zero, -8
	and	$a5, $a0, $a6
	add.d	$a4, $s3, $a5
	add.d	$a7, $s2, $s8
	sltu	$t0, $a1, $s7
	masknez	$t1, $a1, $t0
	maskeqz	$t0, $s7, $t0
	or	$t0, $t0, $t1
	sub.d	$a7, $t0, $a7
	and	$a6, $a7, $a6
	vrepli.b	$vr0, 62
	b	.LBB10_351
	.p2align	4, , 16
.LBB10_350:                             # %pred.store.continue430
                                        #   in Loop: Header=BB10_351 Depth=1
	addi.d	$a3, $a3, 8
	beq	$a6, $a3, .LBB10_367
.LBB10_351:                             # %vec.epilog.vector.body404
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a7, $s4, $a3
	ld.d	$t0, $a7, -1
	vinsgr2vr.d	$vr1, $t0, 0
	vseq.b	$vr1, $vr1, $vr0
	vpickve2gr.h	$t0, $vr1, 0
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_359
# %bb.352:                              # %pred.store.if415
                                        #   in Loop: Header=BB10_351 Depth=1
	st.b	$a2, $a7, -1
	vilvl.b	$vr1, $vr1, $vr1
	vpickve2gr.h	$t0, $vr1, 1
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_360
.LBB10_353:                             # %pred.store.continue418
                                        #   in Loop: Header=BB10_351 Depth=1
	vpickve2gr.h	$t0, $vr1, 2
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_361
.LBB10_354:                             # %pred.store.if419
                                        #   in Loop: Header=BB10_351 Depth=1
	st.b	$a2, $a7, 1
	vpickve2gr.h	$t0, $vr1, 3
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_362
.LBB10_355:                             # %pred.store.continue422
                                        #   in Loop: Header=BB10_351 Depth=1
	vpickve2gr.h	$t0, $vr1, 4
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_363
.LBB10_356:                             # %pred.store.if423
                                        #   in Loop: Header=BB10_351 Depth=1
	st.b	$a2, $a7, 3
	vpickve2gr.h	$t0, $vr1, 5
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_364
.LBB10_357:                             # %pred.store.continue426
                                        #   in Loop: Header=BB10_351 Depth=1
	vpickve2gr.h	$t0, $vr1, 6
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_365
.LBB10_358:                             # %pred.store.if427
                                        #   in Loop: Header=BB10_351 Depth=1
	st.b	$a2, $a7, 5
	vpickve2gr.h	$t0, $vr1, 7
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_350
	b	.LBB10_366
	.p2align	4, , 16
.LBB10_359:                             # %pred.store.continue416
                                        #   in Loop: Header=BB10_351 Depth=1
	vilvl.b	$vr1, $vr1, $vr1
	vpickve2gr.h	$t0, $vr1, 1
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_353
.LBB10_360:                             # %pred.store.if417
                                        #   in Loop: Header=BB10_351 Depth=1
	st.b	$a2, $a7, 0
	vpickve2gr.h	$t0, $vr1, 2
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_354
.LBB10_361:                             # %pred.store.continue420
                                        #   in Loop: Header=BB10_351 Depth=1
	vpickve2gr.h	$t0, $vr1, 3
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_355
.LBB10_362:                             # %pred.store.if421
                                        #   in Loop: Header=BB10_351 Depth=1
	st.b	$a2, $a7, 2
	vpickve2gr.h	$t0, $vr1, 4
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_356
.LBB10_363:                             # %pred.store.continue424
                                        #   in Loop: Header=BB10_351 Depth=1
	vpickve2gr.h	$t0, $vr1, 5
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_357
.LBB10_364:                             # %pred.store.if425
                                        #   in Loop: Header=BB10_351 Depth=1
	st.b	$a2, $a7, 4
	vpickve2gr.h	$t0, $vr1, 6
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_358
.LBB10_365:                             # %pred.store.continue428
                                        #   in Loop: Header=BB10_351 Depth=1
	vpickve2gr.h	$t0, $vr1, 7
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_350
.LBB10_366:                             # %pred.store.if429
                                        #   in Loop: Header=BB10_351 Depth=1
	st.b	$a2, $a7, 6
	b	.LBB10_350
.LBB10_367:                             # %vec.epilog.middle.block432
	bne	$a0, $a5, .LBB10_559
.LBB10_368:                             # %iter.check438
	ori	$a2, $zero, 8
	move	$a4, $s3
	bltu	$a0, $a2, .LBB10_564
# %bb.369:                              # %vector.main.loop.iter.check440
	ori	$a2, $zero, 32
	bgeu	$a0, $a2, .LBB10_371
# %bb.370:
	move	$a3, $zero
	b	.LBB10_439
.LBB10_371:                             # %vector.ph441
	move	$a4, $zero
	addi.w	$a5, $zero, -32
	and	$a3, $a0, $a5
	add.d	$a6, $s2, $s8
	sltu	$a7, $a1, $s7
	masknez	$t0, $a1, $a7
	maskeqz	$a7, $s7, $a7
	or	$a7, $a7, $t0
	sub.d	$a6, $a7, $a6
	and	$a5, $a6, $a5
	xvrepli.b	$xr0, 34
	b	.LBB10_373
	.p2align	4, , 16
.LBB10_372:                             # %pred.store.continue542
                                        #   in Loop: Header=BB10_373 Depth=1
	addi.d	$a4, $a4, 32
	beq	$a5, $a4, .LBB10_437
.LBB10_373:                             # %vector.body444
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a6, $s4, $a4
	xvld	$xr1, $a6, -1
	xvseq.b	$xr1, $xr1, $xr0
	vpickve2gr.b	$a7, $vr1, 0
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_405
# %bb.374:                              # %pred.store.if479
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, -1
	vpickve2gr.b	$a7, $vr1, 1
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_406
.LBB10_375:                             # %pred.store.continue482
                                        #   in Loop: Header=BB10_373 Depth=1
	vpickve2gr.b	$a7, $vr1, 2
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_407
.LBB10_376:                             # %pred.store.if483
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 1
	vpickve2gr.b	$a7, $vr1, 3
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_408
.LBB10_377:                             # %pred.store.continue486
                                        #   in Loop: Header=BB10_373 Depth=1
	vpickve2gr.b	$a7, $vr1, 4
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_409
.LBB10_378:                             # %pred.store.if487
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 3
	vpickve2gr.b	$a7, $vr1, 5
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_410
.LBB10_379:                             # %pred.store.continue490
                                        #   in Loop: Header=BB10_373 Depth=1
	vpickve2gr.b	$a7, $vr1, 6
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_411
.LBB10_380:                             # %pred.store.if491
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 5
	vpickve2gr.b	$a7, $vr1, 7
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_412
.LBB10_381:                             # %pred.store.continue494
                                        #   in Loop: Header=BB10_373 Depth=1
	vpickve2gr.b	$a7, $vr1, 8
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_413
.LBB10_382:                             # %pred.store.if495
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 7
	vpickve2gr.b	$a7, $vr1, 9
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_414
.LBB10_383:                             # %pred.store.continue498
                                        #   in Loop: Header=BB10_373 Depth=1
	vpickve2gr.b	$a7, $vr1, 10
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_415
.LBB10_384:                             # %pred.store.if499
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 9
	vpickve2gr.b	$a7, $vr1, 11
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_416
.LBB10_385:                             # %pred.store.continue502
                                        #   in Loop: Header=BB10_373 Depth=1
	vpickve2gr.b	$a7, $vr1, 12
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_417
.LBB10_386:                             # %pred.store.if503
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 11
	vpickve2gr.b	$a7, $vr1, 13
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_418
.LBB10_387:                             # %pred.store.continue506
                                        #   in Loop: Header=BB10_373 Depth=1
	vpickve2gr.b	$a7, $vr1, 14
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_419
.LBB10_388:                             # %pred.store.if507
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 13
	vpickve2gr.b	$a7, $vr1, 15
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_420
.LBB10_389:                             # %pred.store.continue510
                                        #   in Loop: Header=BB10_373 Depth=1
	xvst	$xr1, $sp, 1056
	ld.bu	$a7, $sp, 1072
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_421
.LBB10_390:                             # %pred.store.if511
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 15
	xvst	$xr1, $sp, 1024
	ld.bu	$a7, $sp, 1041
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_422
.LBB10_391:                             # %pred.store.continue514
                                        #   in Loop: Header=BB10_373 Depth=1
	xvst	$xr1, $sp, 992
	ld.bu	$a7, $sp, 1010
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_423
.LBB10_392:                             # %pred.store.if515
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 17
	xvst	$xr1, $sp, 960
	ld.bu	$a7, $sp, 979
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_424
.LBB10_393:                             # %pred.store.continue518
                                        #   in Loop: Header=BB10_373 Depth=1
	xvst	$xr1, $sp, 928
	ld.bu	$a7, $sp, 948
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_425
.LBB10_394:                             # %pred.store.if519
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 19
	xvst	$xr1, $sp, 896
	ld.bu	$a7, $sp, 917
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_426
.LBB10_395:                             # %pred.store.continue522
                                        #   in Loop: Header=BB10_373 Depth=1
	xvst	$xr1, $sp, 864
	ld.bu	$a7, $sp, 886
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_427
.LBB10_396:                             # %pred.store.if523
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 21
	xvst	$xr1, $sp, 832
	ld.bu	$a7, $sp, 855
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_428
.LBB10_397:                             # %pred.store.continue526
                                        #   in Loop: Header=BB10_373 Depth=1
	xvst	$xr1, $sp, 800
	ld.bu	$a7, $sp, 824
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_429
.LBB10_398:                             # %pred.store.if527
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 23
	xvst	$xr1, $sp, 768
	ld.bu	$a7, $sp, 793
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_430
.LBB10_399:                             # %pred.store.continue530
                                        #   in Loop: Header=BB10_373 Depth=1
	xvst	$xr1, $sp, 736
	ld.bu	$a7, $sp, 762
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_431
.LBB10_400:                             # %pred.store.if531
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 25
	xvst	$xr1, $sp, 704
	ld.bu	$a7, $sp, 731
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_432
.LBB10_401:                             # %pred.store.continue534
                                        #   in Loop: Header=BB10_373 Depth=1
	xvst	$xr1, $sp, 672
	ld.bu	$a7, $sp, 700
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_433
.LBB10_402:                             # %pred.store.if535
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 27
	xvst	$xr1, $sp, 640
	ld.bu	$a7, $sp, 669
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_434
.LBB10_403:                             # %pred.store.continue538
                                        #   in Loop: Header=BB10_373 Depth=1
	xvst	$xr1, $sp, 608
	ld.bu	$a7, $sp, 638
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_435
.LBB10_404:                             # %pred.store.if539
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 29
	xvst	$xr1, $sp, 576
	ld.bu	$a7, $sp, 607
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_372
	b	.LBB10_436
	.p2align	4, , 16
.LBB10_405:                             # %pred.store.continue480
                                        #   in Loop: Header=BB10_373 Depth=1
	vpickve2gr.b	$a7, $vr1, 1
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_375
.LBB10_406:                             # %pred.store.if481
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 0
	vpickve2gr.b	$a7, $vr1, 2
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_376
.LBB10_407:                             # %pred.store.continue484
                                        #   in Loop: Header=BB10_373 Depth=1
	vpickve2gr.b	$a7, $vr1, 3
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_377
.LBB10_408:                             # %pred.store.if485
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 2
	vpickve2gr.b	$a7, $vr1, 4
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_378
.LBB10_409:                             # %pred.store.continue488
                                        #   in Loop: Header=BB10_373 Depth=1
	vpickve2gr.b	$a7, $vr1, 5
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_379
.LBB10_410:                             # %pred.store.if489
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 4
	vpickve2gr.b	$a7, $vr1, 6
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_380
.LBB10_411:                             # %pred.store.continue492
                                        #   in Loop: Header=BB10_373 Depth=1
	vpickve2gr.b	$a7, $vr1, 7
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_381
.LBB10_412:                             # %pred.store.if493
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 6
	vpickve2gr.b	$a7, $vr1, 8
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_382
.LBB10_413:                             # %pred.store.continue496
                                        #   in Loop: Header=BB10_373 Depth=1
	vpickve2gr.b	$a7, $vr1, 9
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_383
.LBB10_414:                             # %pred.store.if497
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 8
	vpickve2gr.b	$a7, $vr1, 10
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_384
.LBB10_415:                             # %pred.store.continue500
                                        #   in Loop: Header=BB10_373 Depth=1
	vpickve2gr.b	$a7, $vr1, 11
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_385
.LBB10_416:                             # %pred.store.if501
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 10
	vpickve2gr.b	$a7, $vr1, 12
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_386
.LBB10_417:                             # %pred.store.continue504
                                        #   in Loop: Header=BB10_373 Depth=1
	vpickve2gr.b	$a7, $vr1, 13
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_387
.LBB10_418:                             # %pred.store.if505
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 12
	vpickve2gr.b	$a7, $vr1, 14
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_388
.LBB10_419:                             # %pred.store.continue508
                                        #   in Loop: Header=BB10_373 Depth=1
	vpickve2gr.b	$a7, $vr1, 15
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_389
.LBB10_420:                             # %pred.store.if509
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 14
	xvst	$xr1, $sp, 1056
	ld.bu	$a7, $sp, 1072
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_390
.LBB10_421:                             # %pred.store.continue512
                                        #   in Loop: Header=BB10_373 Depth=1
	xvst	$xr1, $sp, 1024
	ld.bu	$a7, $sp, 1041
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_391
.LBB10_422:                             # %pred.store.if513
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 16
	xvst	$xr1, $sp, 992
	ld.bu	$a7, $sp, 1010
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_392
.LBB10_423:                             # %pred.store.continue516
                                        #   in Loop: Header=BB10_373 Depth=1
	xvst	$xr1, $sp, 960
	ld.bu	$a7, $sp, 979
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_393
.LBB10_424:                             # %pred.store.if517
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 18
	xvst	$xr1, $sp, 928
	ld.bu	$a7, $sp, 948
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_394
.LBB10_425:                             # %pred.store.continue520
                                        #   in Loop: Header=BB10_373 Depth=1
	xvst	$xr1, $sp, 896
	ld.bu	$a7, $sp, 917
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_395
.LBB10_426:                             # %pred.store.if521
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 20
	xvst	$xr1, $sp, 864
	ld.bu	$a7, $sp, 886
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_396
.LBB10_427:                             # %pred.store.continue524
                                        #   in Loop: Header=BB10_373 Depth=1
	xvst	$xr1, $sp, 832
	ld.bu	$a7, $sp, 855
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_397
.LBB10_428:                             # %pred.store.if525
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 22
	xvst	$xr1, $sp, 800
	ld.bu	$a7, $sp, 824
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_398
.LBB10_429:                             # %pred.store.continue528
                                        #   in Loop: Header=BB10_373 Depth=1
	xvst	$xr1, $sp, 768
	ld.bu	$a7, $sp, 793
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_399
.LBB10_430:                             # %pred.store.if529
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 24
	xvst	$xr1, $sp, 736
	ld.bu	$a7, $sp, 762
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_400
.LBB10_431:                             # %pred.store.continue532
                                        #   in Loop: Header=BB10_373 Depth=1
	xvst	$xr1, $sp, 704
	ld.bu	$a7, $sp, 731
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_401
.LBB10_432:                             # %pred.store.if533
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 26
	xvst	$xr1, $sp, 672
	ld.bu	$a7, $sp, 700
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_402
.LBB10_433:                             # %pred.store.continue536
                                        #   in Loop: Header=BB10_373 Depth=1
	xvst	$xr1, $sp, 640
	ld.bu	$a7, $sp, 669
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_403
.LBB10_434:                             # %pred.store.if537
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 28
	xvst	$xr1, $sp, 608
	ld.bu	$a7, $sp, 638
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_404
.LBB10_435:                             # %pred.store.continue540
                                        #   in Loop: Header=BB10_373 Depth=1
	xvst	$xr1, $sp, 576
	ld.bu	$a7, $sp, 607
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_372
.LBB10_436:                             # %pred.store.if541
                                        #   in Loop: Header=BB10_373 Depth=1
	st.b	$a2, $a6, 30
	b	.LBB10_372
.LBB10_437:                             # %middle.block544
	beq	$a0, $a3, .LBB10_458
# %bb.438:                              # %vec.epilog.iter.check549
	andi	$a4, $a0, 24
	beqz	$a4, .LBB10_563
.LBB10_439:                             # %vec.epilog.ph548
	addi.w	$a6, $zero, -8
	and	$a5, $a0, $a6
	add.d	$a4, $s3, $a5
	add.d	$a7, $s2, $s8
	sltu	$t0, $a1, $s7
	masknez	$t1, $a1, $t0
	maskeqz	$t0, $s7, $t0
	or	$t0, $t0, $t1
	sub.d	$a7, $t0, $a7
	and	$a6, $a7, $a6
	vrepli.b	$vr0, 34
	b	.LBB10_441
	.p2align	4, , 16
.LBB10_440:                             # %pred.store.continue580
                                        #   in Loop: Header=BB10_441 Depth=1
	addi.d	$a3, $a3, 8
	beq	$a6, $a3, .LBB10_457
.LBB10_441:                             # %vec.epilog.vector.body554
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a7, $s4, $a3
	ld.d	$t0, $a7, -1
	vinsgr2vr.d	$vr1, $t0, 0
	vseq.b	$vr1, $vr1, $vr0
	vpickve2gr.h	$t0, $vr1, 0
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_449
# %bb.442:                              # %pred.store.if565
                                        #   in Loop: Header=BB10_441 Depth=1
	st.b	$a2, $a7, -1
	vilvl.b	$vr1, $vr1, $vr1
	vpickve2gr.h	$t0, $vr1, 1
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_450
.LBB10_443:                             # %pred.store.continue568
                                        #   in Loop: Header=BB10_441 Depth=1
	vpickve2gr.h	$t0, $vr1, 2
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_451
.LBB10_444:                             # %pred.store.if569
                                        #   in Loop: Header=BB10_441 Depth=1
	st.b	$a2, $a7, 1
	vpickve2gr.h	$t0, $vr1, 3
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_452
.LBB10_445:                             # %pred.store.continue572
                                        #   in Loop: Header=BB10_441 Depth=1
	vpickve2gr.h	$t0, $vr1, 4
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_453
.LBB10_446:                             # %pred.store.if573
                                        #   in Loop: Header=BB10_441 Depth=1
	st.b	$a2, $a7, 3
	vpickve2gr.h	$t0, $vr1, 5
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_454
.LBB10_447:                             # %pred.store.continue576
                                        #   in Loop: Header=BB10_441 Depth=1
	vpickve2gr.h	$t0, $vr1, 6
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_455
.LBB10_448:                             # %pred.store.if577
                                        #   in Loop: Header=BB10_441 Depth=1
	st.b	$a2, $a7, 5
	vpickve2gr.h	$t0, $vr1, 7
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_440
	b	.LBB10_456
	.p2align	4, , 16
.LBB10_449:                             # %pred.store.continue566
                                        #   in Loop: Header=BB10_441 Depth=1
	vilvl.b	$vr1, $vr1, $vr1
	vpickve2gr.h	$t0, $vr1, 1
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_443
.LBB10_450:                             # %pred.store.if567
                                        #   in Loop: Header=BB10_441 Depth=1
	st.b	$a2, $a7, 0
	vpickve2gr.h	$t0, $vr1, 2
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_444
.LBB10_451:                             # %pred.store.continue570
                                        #   in Loop: Header=BB10_441 Depth=1
	vpickve2gr.h	$t0, $vr1, 3
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_445
.LBB10_452:                             # %pred.store.if571
                                        #   in Loop: Header=BB10_441 Depth=1
	st.b	$a2, $a7, 2
	vpickve2gr.h	$t0, $vr1, 4
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_446
.LBB10_453:                             # %pred.store.continue574
                                        #   in Loop: Header=BB10_441 Depth=1
	vpickve2gr.h	$t0, $vr1, 5
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_447
.LBB10_454:                             # %pred.store.if575
                                        #   in Loop: Header=BB10_441 Depth=1
	st.b	$a2, $a7, 4
	vpickve2gr.h	$t0, $vr1, 6
	andi	$t0, $t0, 1
	bnez	$t0, .LBB10_448
.LBB10_455:                             # %pred.store.continue578
                                        #   in Loop: Header=BB10_441 Depth=1
	vpickve2gr.h	$t0, $vr1, 7
	andi	$t0, $t0, 1
	beqz	$t0, .LBB10_440
.LBB10_456:                             # %pred.store.if579
                                        #   in Loop: Header=BB10_441 Depth=1
	st.b	$a2, $a7, 6
	b	.LBB10_440
.LBB10_457:                             # %vec.epilog.middle.block582
	bne	$a0, $a5, .LBB10_564
.LBB10_458:                             # %iter.check588
	ori	$a2, $zero, 8
	bltu	$a0, $a2, .LBB10_569
# %bb.459:                              # %vector.main.loop.iter.check590
	ori	$a2, $zero, 32
	bgeu	$a0, $a2, .LBB10_461
# %bb.460:
	move	$a3, $zero
	b	.LBB10_529
.LBB10_461:                             # %vector.ph591
	move	$a4, $zero
	addi.w	$a5, $zero, -32
	and	$a3, $a0, $a5
	add.d	$a6, $s2, $s8
	sltu	$a7, $a1, $s7
	masknez	$t0, $a1, $a7
	maskeqz	$a7, $s7, $a7
	or	$a7, $a7, $t0
	sub.d	$a6, $a7, $a6
	and	$a5, $a6, $a5
	xvrepli.b	$xr0, 59
	b	.LBB10_463
	.p2align	4, , 16
.LBB10_462:                             # %pred.store.continue692
                                        #   in Loop: Header=BB10_463 Depth=1
	addi.d	$a4, $a4, 32
	beq	$a5, $a4, .LBB10_527
.LBB10_463:                             # %vector.body594
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a6, $s4, $a4
	xvld	$xr1, $a6, -1
	xvseq.b	$xr1, $xr1, $xr0
	vpickve2gr.b	$a7, $vr1, 0
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_495
# %bb.464:                              # %pred.store.if629
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, -1
	vpickve2gr.b	$a7, $vr1, 1
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_496
.LBB10_465:                             # %pred.store.continue632
                                        #   in Loop: Header=BB10_463 Depth=1
	vpickve2gr.b	$a7, $vr1, 2
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_497
.LBB10_466:                             # %pred.store.if633
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 1
	vpickve2gr.b	$a7, $vr1, 3
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_498
.LBB10_467:                             # %pred.store.continue636
                                        #   in Loop: Header=BB10_463 Depth=1
	vpickve2gr.b	$a7, $vr1, 4
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_499
.LBB10_468:                             # %pred.store.if637
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 3
	vpickve2gr.b	$a7, $vr1, 5
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_500
.LBB10_469:                             # %pred.store.continue640
                                        #   in Loop: Header=BB10_463 Depth=1
	vpickve2gr.b	$a7, $vr1, 6
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_501
.LBB10_470:                             # %pred.store.if641
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 5
	vpickve2gr.b	$a7, $vr1, 7
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_502
.LBB10_471:                             # %pred.store.continue644
                                        #   in Loop: Header=BB10_463 Depth=1
	vpickve2gr.b	$a7, $vr1, 8
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_503
.LBB10_472:                             # %pred.store.if645
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 7
	vpickve2gr.b	$a7, $vr1, 9
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_504
.LBB10_473:                             # %pred.store.continue648
                                        #   in Loop: Header=BB10_463 Depth=1
	vpickve2gr.b	$a7, $vr1, 10
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_505
.LBB10_474:                             # %pred.store.if649
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 9
	vpickve2gr.b	$a7, $vr1, 11
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_506
.LBB10_475:                             # %pred.store.continue652
                                        #   in Loop: Header=BB10_463 Depth=1
	vpickve2gr.b	$a7, $vr1, 12
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_507
.LBB10_476:                             # %pred.store.if653
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 11
	vpickve2gr.b	$a7, $vr1, 13
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_508
.LBB10_477:                             # %pred.store.continue656
                                        #   in Loop: Header=BB10_463 Depth=1
	vpickve2gr.b	$a7, $vr1, 14
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_509
.LBB10_478:                             # %pred.store.if657
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 13
	vpickve2gr.b	$a7, $vr1, 15
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_510
.LBB10_479:                             # %pred.store.continue660
                                        #   in Loop: Header=BB10_463 Depth=1
	xvst	$xr1, $sp, 544
	ld.bu	$a7, $sp, 560
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_511
.LBB10_480:                             # %pred.store.if661
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 15
	xvst	$xr1, $sp, 512
	ld.bu	$a7, $sp, 529
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_512
.LBB10_481:                             # %pred.store.continue664
                                        #   in Loop: Header=BB10_463 Depth=1
	xvst	$xr1, $sp, 480
	ld.bu	$a7, $sp, 498
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_513
.LBB10_482:                             # %pred.store.if665
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 17
	xvst	$xr1, $sp, 448
	ld.bu	$a7, $sp, 467
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_514
.LBB10_483:                             # %pred.store.continue668
                                        #   in Loop: Header=BB10_463 Depth=1
	xvst	$xr1, $sp, 416
	ld.bu	$a7, $sp, 436
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_515
.LBB10_484:                             # %pred.store.if669
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 19
	xvst	$xr1, $sp, 384
	ld.bu	$a7, $sp, 405
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_516
.LBB10_485:                             # %pred.store.continue672
                                        #   in Loop: Header=BB10_463 Depth=1
	xvst	$xr1, $sp, 352
	ld.bu	$a7, $sp, 374
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_517
.LBB10_486:                             # %pred.store.if673
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 21
	xvst	$xr1, $sp, 320
	ld.bu	$a7, $sp, 343
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_518
.LBB10_487:                             # %pred.store.continue676
                                        #   in Loop: Header=BB10_463 Depth=1
	xvst	$xr1, $sp, 288
	ld.bu	$a7, $sp, 312
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_519
.LBB10_488:                             # %pred.store.if677
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 23
	xvst	$xr1, $sp, 256
	ld.bu	$a7, $sp, 281
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_520
.LBB10_489:                             # %pred.store.continue680
                                        #   in Loop: Header=BB10_463 Depth=1
	xvst	$xr1, $sp, 224
	ld.bu	$a7, $sp, 250
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_521
.LBB10_490:                             # %pred.store.if681
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 25
	xvst	$xr1, $sp, 192
	ld.bu	$a7, $sp, 219
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_522
.LBB10_491:                             # %pred.store.continue684
                                        #   in Loop: Header=BB10_463 Depth=1
	xvst	$xr1, $sp, 160
	ld.bu	$a7, $sp, 188
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_523
.LBB10_492:                             # %pred.store.if685
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 27
	xvst	$xr1, $sp, 128
	ld.bu	$a7, $sp, 157
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_524
.LBB10_493:                             # %pred.store.continue688
                                        #   in Loop: Header=BB10_463 Depth=1
	xvst	$xr1, $sp, 96
	ld.bu	$a7, $sp, 126
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_525
.LBB10_494:                             # %pred.store.if689
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 29
	xvst	$xr1, $sp, 64
	ld.bu	$a7, $sp, 95
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_462
	b	.LBB10_526
	.p2align	4, , 16
.LBB10_495:                             # %pred.store.continue630
                                        #   in Loop: Header=BB10_463 Depth=1
	vpickve2gr.b	$a7, $vr1, 1
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_465
.LBB10_496:                             # %pred.store.if631
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 0
	vpickve2gr.b	$a7, $vr1, 2
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_466
.LBB10_497:                             # %pred.store.continue634
                                        #   in Loop: Header=BB10_463 Depth=1
	vpickve2gr.b	$a7, $vr1, 3
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_467
.LBB10_498:                             # %pred.store.if635
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 2
	vpickve2gr.b	$a7, $vr1, 4
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_468
.LBB10_499:                             # %pred.store.continue638
                                        #   in Loop: Header=BB10_463 Depth=1
	vpickve2gr.b	$a7, $vr1, 5
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_469
.LBB10_500:                             # %pred.store.if639
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 4
	vpickve2gr.b	$a7, $vr1, 6
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_470
.LBB10_501:                             # %pred.store.continue642
                                        #   in Loop: Header=BB10_463 Depth=1
	vpickve2gr.b	$a7, $vr1, 7
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_471
.LBB10_502:                             # %pred.store.if643
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 6
	vpickve2gr.b	$a7, $vr1, 8
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_472
.LBB10_503:                             # %pred.store.continue646
                                        #   in Loop: Header=BB10_463 Depth=1
	vpickve2gr.b	$a7, $vr1, 9
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_473
.LBB10_504:                             # %pred.store.if647
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 8
	vpickve2gr.b	$a7, $vr1, 10
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_474
.LBB10_505:                             # %pred.store.continue650
                                        #   in Loop: Header=BB10_463 Depth=1
	vpickve2gr.b	$a7, $vr1, 11
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_475
.LBB10_506:                             # %pred.store.if651
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 10
	vpickve2gr.b	$a7, $vr1, 12
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_476
.LBB10_507:                             # %pred.store.continue654
                                        #   in Loop: Header=BB10_463 Depth=1
	vpickve2gr.b	$a7, $vr1, 13
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_477
.LBB10_508:                             # %pred.store.if655
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 12
	vpickve2gr.b	$a7, $vr1, 14
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_478
.LBB10_509:                             # %pred.store.continue658
                                        #   in Loop: Header=BB10_463 Depth=1
	vpickve2gr.b	$a7, $vr1, 15
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_479
.LBB10_510:                             # %pred.store.if659
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 14
	xvst	$xr1, $sp, 544
	ld.bu	$a7, $sp, 560
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_480
.LBB10_511:                             # %pred.store.continue662
                                        #   in Loop: Header=BB10_463 Depth=1
	xvst	$xr1, $sp, 512
	ld.bu	$a7, $sp, 529
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_481
.LBB10_512:                             # %pred.store.if663
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 16
	xvst	$xr1, $sp, 480
	ld.bu	$a7, $sp, 498
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_482
.LBB10_513:                             # %pred.store.continue666
                                        #   in Loop: Header=BB10_463 Depth=1
	xvst	$xr1, $sp, 448
	ld.bu	$a7, $sp, 467
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_483
.LBB10_514:                             # %pred.store.if667
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 18
	xvst	$xr1, $sp, 416
	ld.bu	$a7, $sp, 436
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_484
.LBB10_515:                             # %pred.store.continue670
                                        #   in Loop: Header=BB10_463 Depth=1
	xvst	$xr1, $sp, 384
	ld.bu	$a7, $sp, 405
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_485
.LBB10_516:                             # %pred.store.if671
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 20
	xvst	$xr1, $sp, 352
	ld.bu	$a7, $sp, 374
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_486
.LBB10_517:                             # %pred.store.continue674
                                        #   in Loop: Header=BB10_463 Depth=1
	xvst	$xr1, $sp, 320
	ld.bu	$a7, $sp, 343
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_487
.LBB10_518:                             # %pred.store.if675
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 22
	xvst	$xr1, $sp, 288
	ld.bu	$a7, $sp, 312
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_488
.LBB10_519:                             # %pred.store.continue678
                                        #   in Loop: Header=BB10_463 Depth=1
	xvst	$xr1, $sp, 256
	ld.bu	$a7, $sp, 281
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_489
.LBB10_520:                             # %pred.store.if679
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 24
	xvst	$xr1, $sp, 224
	ld.bu	$a7, $sp, 250
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_490
.LBB10_521:                             # %pred.store.continue682
                                        #   in Loop: Header=BB10_463 Depth=1
	xvst	$xr1, $sp, 192
	ld.bu	$a7, $sp, 219
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_491
.LBB10_522:                             # %pred.store.if683
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 26
	xvst	$xr1, $sp, 160
	ld.bu	$a7, $sp, 188
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_492
.LBB10_523:                             # %pred.store.continue686
                                        #   in Loop: Header=BB10_463 Depth=1
	xvst	$xr1, $sp, 128
	ld.bu	$a7, $sp, 157
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_493
.LBB10_524:                             # %pred.store.if687
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 28
	xvst	$xr1, $sp, 96
	ld.bu	$a7, $sp, 126
	andi	$a7, $a7, 1
	bnez	$a7, .LBB10_494
.LBB10_525:                             # %pred.store.continue690
                                        #   in Loop: Header=BB10_463 Depth=1
	xvst	$xr1, $sp, 64
	ld.bu	$a7, $sp, 95
	andi	$a7, $a7, 1
	beqz	$a7, .LBB10_462
.LBB10_526:                             # %pred.store.if691
                                        #   in Loop: Header=BB10_463 Depth=1
	st.b	$a2, $a6, 30
	b	.LBB10_462
.LBB10_527:                             # %middle.block694
	beq	$a0, $a3, .LBB10_13
# %bb.528:                              # %vec.epilog.iter.check699
	andi	$a4, $a0, 24
	beqz	$a4, .LBB10_568
.LBB10_529:                             # %vec.epilog.ph698
	addi.w	$a5, $zero, -8
	and	$a4, $a0, $a5
	add.d	$s3, $s3, $a4
	add.d	$a6, $s2, $s8
	sltu	$a7, $a1, $s7
	masknez	$a1, $a1, $a7
	maskeqz	$a7, $s7, $a7
	or	$a1, $a7, $a1
	sub.d	$a1, $a1, $a6
	and	$a1, $a1, $a5
	vrepli.b	$vr0, 59
	b	.LBB10_531
	.p2align	4, , 16
.LBB10_530:                             # %pred.store.continue730
                                        #   in Loop: Header=BB10_531 Depth=1
	addi.d	$a3, $a3, 8
	beq	$a1, $a3, .LBB10_547
.LBB10_531:                             # %vec.epilog.vector.body704
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $s4, $a3
	ld.d	$a6, $a5, -1
	vinsgr2vr.d	$vr1, $a6, 0
	vseq.b	$vr1, $vr1, $vr0
	vpickve2gr.h	$a6, $vr1, 0
	andi	$a6, $a6, 1
	beqz	$a6, .LBB10_539
# %bb.532:                              # %pred.store.if715
                                        #   in Loop: Header=BB10_531 Depth=1
	st.b	$a2, $a5, -1
	vilvl.b	$vr1, $vr1, $vr1
	vpickve2gr.h	$a6, $vr1, 1
	andi	$a6, $a6, 1
	bnez	$a6, .LBB10_540
.LBB10_533:                             # %pred.store.continue718
                                        #   in Loop: Header=BB10_531 Depth=1
	vpickve2gr.h	$a6, $vr1, 2
	andi	$a6, $a6, 1
	beqz	$a6, .LBB10_541
.LBB10_534:                             # %pred.store.if719
                                        #   in Loop: Header=BB10_531 Depth=1
	st.b	$a2, $a5, 1
	vpickve2gr.h	$a6, $vr1, 3
	andi	$a6, $a6, 1
	bnez	$a6, .LBB10_542
.LBB10_535:                             # %pred.store.continue722
                                        #   in Loop: Header=BB10_531 Depth=1
	vpickve2gr.h	$a6, $vr1, 4
	andi	$a6, $a6, 1
	beqz	$a6, .LBB10_543
.LBB10_536:                             # %pred.store.if723
                                        #   in Loop: Header=BB10_531 Depth=1
	st.b	$a2, $a5, 3
	vpickve2gr.h	$a6, $vr1, 5
	andi	$a6, $a6, 1
	bnez	$a6, .LBB10_544
.LBB10_537:                             # %pred.store.continue726
                                        #   in Loop: Header=BB10_531 Depth=1
	vpickve2gr.h	$a6, $vr1, 6
	andi	$a6, $a6, 1
	beqz	$a6, .LBB10_545
.LBB10_538:                             # %pred.store.if727
                                        #   in Loop: Header=BB10_531 Depth=1
	st.b	$a2, $a5, 5
	vpickve2gr.h	$a6, $vr1, 7
	andi	$a6, $a6, 1
	beqz	$a6, .LBB10_530
	b	.LBB10_546
	.p2align	4, , 16
.LBB10_539:                             # %pred.store.continue716
                                        #   in Loop: Header=BB10_531 Depth=1
	vilvl.b	$vr1, $vr1, $vr1
	vpickve2gr.h	$a6, $vr1, 1
	andi	$a6, $a6, 1
	beqz	$a6, .LBB10_533
.LBB10_540:                             # %pred.store.if717
                                        #   in Loop: Header=BB10_531 Depth=1
	st.b	$a2, $a5, 0
	vpickve2gr.h	$a6, $vr1, 2
	andi	$a6, $a6, 1
	bnez	$a6, .LBB10_534
.LBB10_541:                             # %pred.store.continue720
                                        #   in Loop: Header=BB10_531 Depth=1
	vpickve2gr.h	$a6, $vr1, 3
	andi	$a6, $a6, 1
	beqz	$a6, .LBB10_535
.LBB10_542:                             # %pred.store.if721
                                        #   in Loop: Header=BB10_531 Depth=1
	st.b	$a2, $a5, 2
	vpickve2gr.h	$a6, $vr1, 4
	andi	$a6, $a6, 1
	bnez	$a6, .LBB10_536
.LBB10_543:                             # %pred.store.continue724
                                        #   in Loop: Header=BB10_531 Depth=1
	vpickve2gr.h	$a6, $vr1, 5
	andi	$a6, $a6, 1
	beqz	$a6, .LBB10_537
.LBB10_544:                             # %pred.store.if725
                                        #   in Loop: Header=BB10_531 Depth=1
	st.b	$a2, $a5, 4
	vpickve2gr.h	$a6, $vr1, 6
	andi	$a6, $a6, 1
	bnez	$a6, .LBB10_538
.LBB10_545:                             # %pred.store.continue728
                                        #   in Loop: Header=BB10_531 Depth=1
	vpickve2gr.h	$a6, $vr1, 7
	andi	$a6, $a6, 1
	beqz	$a6, .LBB10_530
.LBB10_546:                             # %pred.store.if729
                                        #   in Loop: Header=BB10_531 Depth=1
	st.b	$a2, $a5, 6
	b	.LBB10_530
.LBB10_547:                             # %vec.epilog.middle.block732
	beq	$a0, $a4, .LBB10_13
	b	.LBB10_569
.LBB10_548:
	add.d	$a4, $s3, $a2
.LBB10_549:                             # %.lr.ph.i91.preheader
	ori	$a2, $zero, 92
	ori	$a3, $zero, 47
	b	.LBB10_551
	.p2align	4, , 16
.LBB10_550:                             #   in Loop: Header=BB10_551 Depth=1
	addi.d	$a4, $a4, 1
	bltu	$s5, $a4, .LBB10_188
.LBB10_551:                             # %.lr.ph.i91
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $a4, 0
	bne	$a5, $a2, .LBB10_550
# %bb.552:                              #   in Loop: Header=BB10_551 Depth=1
	st.b	$a3, $a4, 0
	b	.LBB10_550
.LBB10_553:
	add.d	$a4, $s3, $a3
.LBB10_554:                             # %.lr.ph.i94.preheader
	ori	$a2, $zero, 60
	ori	$a3, $zero, 32
	b	.LBB10_556
	.p2align	4, , 16
.LBB10_555:                             #   in Loop: Header=BB10_556 Depth=1
	addi.d	$a4, $a4, 1
	bltu	$s5, $a4, .LBB10_278
.LBB10_556:                             # %.lr.ph.i94
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $a4, 0
	bne	$a5, $a2, .LBB10_555
# %bb.557:                              #   in Loop: Header=BB10_556 Depth=1
	st.b	$a3, $a4, 0
	b	.LBB10_555
.LBB10_558:
	add.d	$a4, $s3, $a3
.LBB10_559:                             # %.lr.ph.i99.preheader
	ori	$a2, $zero, 62
	ori	$a3, $zero, 32
	b	.LBB10_561
	.p2align	4, , 16
.LBB10_560:                             #   in Loop: Header=BB10_561 Depth=1
	addi.d	$a4, $a4, 1
	bltu	$s5, $a4, .LBB10_368
.LBB10_561:                             # %.lr.ph.i99
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $a4, 0
	bne	$a5, $a2, .LBB10_560
# %bb.562:                              #   in Loop: Header=BB10_561 Depth=1
	st.b	$a3, $a4, 0
	b	.LBB10_560
.LBB10_563:
	add.d	$a4, $s3, $a3
.LBB10_564:                             # %.lr.ph.i104.preheader
	ori	$a2, $zero, 34
	ori	$a3, $zero, 32
	b	.LBB10_566
	.p2align	4, , 16
.LBB10_565:                             #   in Loop: Header=BB10_566 Depth=1
	addi.d	$a4, $a4, 1
	bltu	$s5, $a4, .LBB10_458
.LBB10_566:                             # %.lr.ph.i104
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $a4, 0
	bne	$a5, $a2, .LBB10_565
# %bb.567:                              #   in Loop: Header=BB10_566 Depth=1
	st.b	$a3, $a4, 0
	b	.LBB10_565
.LBB10_568:
	add.d	$s3, $s3, $a3
.LBB10_569:                             # %.lr.ph.i109.preheader
	ori	$a0, $zero, 59
	ori	$a1, $zero, 32
	b	.LBB10_571
	.p2align	4, , 16
.LBB10_570:                             #   in Loop: Header=BB10_571 Depth=1
	addi.d	$s3, $s3, 1
	bltu	$s5, $s3, .LBB10_13
.LBB10_571:                             # %.lr.ph.i109
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $s3, 0
	bne	$a2, $a0, .LBB10_570
# %bb.572:                              #   in Loop: Header=BB10_571 Depth=1
	st.b	$a1, $s3, 0
	b	.LBB10_570
.Lfunc_end10:
	.size	cleanupURL, .Lfunc_end10-cleanupURL
                                        # -- End function
	.p2align	5                               # -- Begin function str_strip
	.type	str_strip,@function
str_strip:                              # @str_strip
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s2, $a0, 0
	ld.d	$s6, $a1, 0
	bgeu	$s2, $s6, .LBB11_10
# %bb.1:
	move	$fp, $a1
	move	$s3, $a0
	move	$s0, $a3
	move	$s1, $a2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bltu	$a0, $s0, .LBB11_10
# %bb.2:                                # %select.unfold.preheader.preheader
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	maskeqz	$s7, $s0, $a0
	add.d	$s8, $s2, $s7
	sub.d	$a0, $s6, $s8
	bltu	$a0, $s0, .LBB11_7
# %bb.3:
	sub.d	$a0, $s6, $s0
	addi.d	$a0, $a0, 1
	bgeu	$s8, $a0, .LBB11_7
# %bb.4:                                # %.lr.ph.preheader
	sub.d	$s4, $zero, $s0
	ori	$a0, $zero, 1
	sub.d	$s5, $a0, $s0
	.p2align	4, , 16
.LBB11_5:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $s6, $s5
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_7
# %bb.6:                                #   in Loop: Header=BB11_5 Depth=1
	add.d	$s6, $s6, $s4
	add.d	$a0, $s6, $s5
	bltu	$s8, $a0, .LBB11_5
.LBB11_7:                               # %.critedge2
	addi.d	$s4, $s8, 1
	add.d	$s5, $s4, $s0
	st.d	$s8, $s3, 0
	bgeu	$s6, $s5, .LBB11_11
# %bb.8:
	move	$a0, $s6
.LBB11_9:                               # %._crit_edge
	st.d	$a0, $fp, 0
.LBB11_10:
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB11_11:                              # %.preheader.lr.ph
	add.d	$a0, $s7, $s0
	add.d	$a0, $a0, $s2
	sub.d	$s2, $zero, $a0
	b	.LBB11_14
	.p2align	4, , 16
.LBB11_12:                              # %.critedge4split
                                        #   in Loop: Header=BB11_14 Depth=1
	add.d	$a0, $s6, $s3
.LBB11_13:                              # %.critedge4
                                        #   in Loop: Header=BB11_14 Depth=1
	addi.d	$s4, $s4, 1
	add.d	$s5, $s4, $s0
	addi.d	$s2, $s2, -1
	move	$s6, $a0
	bltu	$a0, $s5, .LBB11_9
.LBB11_14:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_15 Depth 2
	move	$s3, $zero
	add.d	$s7, $s6, $s2
	.p2align	4, , 16
.LBB11_15:                              #   Parent Loop BB11_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_12
# %bb.16:                               #   in Loop: Header=BB11_15 Depth=2
	add.d	$a2, $s7, $s3
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	sub.d	$s3, $s3, $s0
	add.d	$a0, $s6, $s3
	bgeu	$a0, $s5, .LBB11_15
	b	.LBB11_13
.Lfunc_end11:
	.size	str_strip, .Lfunc_end11-str_strip
                                        # -- End function
	.p2align	5                               # -- Begin function string_assign_dup
	.type	string_assign_dup,@function
string_assign_dup:                      # @string_assign_dup
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a1
	move	$fp, $a0
	sub.d	$s1, $a2, $a1
	addi.d	$a0, $s1, 1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_7
# %bb.1:
	move	$s0, $a0
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s0, $s1
	move	$a1, $fp
	.p2align	4, , 16
.LBB12_2:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.w	$a1, $a1, 0
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 0
	bnez	$a1, .LBB12_6
# %bb.3:                                #   in Loop: Header=BB12_2 Depth=1
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB12_2
# %bb.4:
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB12_6
# %bb.5:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB12_6:                               # %string_free.exit
	move	$a0, $zero
	st.d	$s0, $fp, 16
	ori	$a1, $zero, 1
	st.w	$a1, $fp, 0
	st.d	$zero, $fp, 8
	b	.LBB12_8
.LBB12_7:
	addi.w	$a0, $zero, -114
.LBB12_8:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end12:
	.size	string_assign_dup, .Lfunc_end12-string_assign_dup
                                        # -- End function
	.p2align	5                               # -- Begin function str_fixup_spaces
	.type	str_fixup_spaces,@function
str_fixup_spaces:                       # @str_fixup_spaces
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 8
	beqz	$a0, .LBB13_10
# %bb.1:
	beqz	$a1, .LBB13_10
# %bb.2:
	bltu	$a1, $a0, .LBB13_10
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a2, $a0, %pc_lo12(.L.str.26)
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 8
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(str_strip)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 8
	ld.d	$a2, $sp, 16
	.p2align	4, , 16
.LBB13_4:                               # =>This Inner Loop Header: Depth=1
	move	$a3, $a2
	ld.b	$a2, $a2, 0
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a0, $a2
	andi	$a4, $a2, 8
	addi.d	$a2, $a3, 1
	bnez	$a4, .LBB13_6
# %bb.5:                                #   in Loop: Header=BB13_4 Depth=1
	bgeu	$a1, $a3, .LBB13_4
.LBB13_6:                               # %.preheader.preheader
	addi.d	$a2, $a2, -1
	.p2align	4, , 16
.LBB13_7:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a3, $a1, -1
	bltu	$a1, $a2, .LBB13_9
# %bb.8:                                # %.preheader
                                        #   in Loop: Header=BB13_7 Depth=1
	ld.b	$a1, $a1, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	andi	$a4, $a1, 8
	move	$a1, $a3
	beqz	$a4, .LBB13_7
.LBB13_9:
	st.d	$a2, $s0, 0
	addi.d	$a0, $a3, 1
	st.d	$a0, $fp, 0
.LBB13_10:
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end13:
	.size	str_fixup_spaces, .Lfunc_end13-str_fixup_spaces
                                        # -- End function
	.p2align	5                               # -- Begin function get_host
	.type	get_host,@function
get_host:                               # @get_host
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a5
	move	$s0, $a4
	beqz	$a1, .LBB14_13
# %bb.1:
	move	$s1, $a3
	move	$s4, $a2
	move	$s2, $a1
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_14
# %bb.2:
	addi.d	$s2, $a0, 3
.LBB14_3:                               # %.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcspn)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	add.d	$s6, $s2, $a0
	ori	$a1, $zero, 64
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_19
# %bb.4:                                # %.lr.ph
	move	$s4, $a0
	addi.d	$s3, $s3, 64
	beqz	$s5, .LBB14_8
# %bb.5:                                # %.lr.ph
	bltu	$s6, $s4, .LBB14_19
	b	.LBB14_8
	.p2align	4, , 16
.LBB14_6:                               #   in Loop: Header=BB14_8 Depth=1
	move	$s4, $a0
	beqz	$s5, .LBB14_8
# %bb.7:                                #   in Loop: Header=BB14_8 Depth=1
	bltu	$s6, $s4, .LBB14_19
.LBB14_8:                               # %.lr.ph111
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 46
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_12
# %bb.9:                                #   in Loop: Header=BB14_8 Depth=1
	move	$s2, $a0
	sub.w	$a0, $a0, $s4
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_23
# %bb.10:                               #   in Loop: Header=BB14_8 Depth=1
	nor	$a1, $s4, $zero
	add.w	$s5, $s2, $a1
	move	$s6, $a0
	move	$a1, $s2
	move	$a2, $s5
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s6, $s5
	move	$a0, $s3
	move	$a1, $s6
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(cli_regexec)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB14_12
# %bb.11:                               #   in Loop: Header=BB14_8 Depth=1
	ld.w	$a0, $s1, 0
	ori	$a0, $a0, 1
	st.w	$a0, $s1, 0
.LBB14_12:                              # %.thread
                                        #   in Loop: Header=BB14_8 Depth=1
	addi.d	$s2, $s4, 1
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcspn)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	add.d	$s6, $s2, $a0
	ori	$a1, $zero, 64
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB14_6
	b	.LBB14_19
.LBB14_13:
	move	$a0, $zero
	st.d	$zero, $fp, 0
	st.d	$zero, $s0, 0
	b	.LBB14_20
.LBB14_14:
	pcalau12i	$a0, %pc_hi20(mailto)
	addi.d	$a1, $a0, %pc_lo12(mailto)
	ori	$a2, $zero, 7
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_17
# %bb.15:
	beqz	$s4, .LBB14_21
# %bb.16:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB14_3
.LBB14_17:
	addi.d	$s2, $s2, 7
	beqz	$s4, .LBB14_3
# %bb.18:
	ld.w	$a0, $s1, 0
	ori	$a0, $a0, 4
	st.w	$a0, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcspn)
	jirl	$ra, $ra, 0
	add.d	$s6, $s2, $a0
.LBB14_19:                              # %.thread90
	move	$a0, $zero
	st.d	$s2, $s0, 0
	st.d	$s6, $fp, 0
.LBB14_20:                              # %isTLD.exit
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB14_21:
	ld.bu	$a0, $s1, 0
	andi	$a0, $a0, 4
	beqz	$a0, .LBB14_3
# %bb.22:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcspn)
	jirl	$ra, $ra, 0
	add.d	$a1, $s2, $a0
	addi.d	$a1, $a1, 1
	xor	$a0, $a0, $s4
	sltui	$a0, $a0, 1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s2, $a0
	or	$s2, $a0, $a1
	b	.LBB14_3
.LBB14_23:
	addi.w	$a0, $zero, -114
	b	.LBB14_20
.Lfunc_end14:
	.size	get_host, .Lfunc_end14-get_host
                                        # -- End function
	.p2align	5                               # -- Begin function isNumeric
	.type	isNumeric,@function
isNumeric:                              # @isNumeric
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $zero
	addi.w	$a2, $a1, -16
	addi.w	$a3, $zero, -9
	st.w	$zero, $sp, 4
	bltu	$a2, $a3, .LBB15_7
# %bb.1:
	addi.w	$s0, $a1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a1, $a0, %pc_lo12(.L.str.33)
	addi.d	$a2, $sp, 20
	addi.d	$a3, $sp, 16
	addi.d	$a4, $sp, 12
	addi.d	$a5, $sp, 8
	addi.d	$a6, $sp, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 4
	bne	$a0, $s0, .LBB15_6
# %bb.2:
	ld.w	$a1, $sp, 20
	ori	$a0, $zero, 256
	bltu	$a0, $a1, .LBB15_6
# %bb.3:
	ld.w	$a1, $sp, 16
	bltu	$a0, $a1, .LBB15_6
# %bb.4:
	ld.w	$a0, $sp, 12
	ori	$a1, $zero, 256
	bltu	$a1, $a0, .LBB15_6
# %bb.5:
	ld.w	$a1, $sp, 8
	ori	$a2, $zero, 257
	ori	$a0, $zero, 1
	bltu	$a1, $a2, .LBB15_7
.LBB15_6:
	move	$a0, $zero
.LBB15_7:
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end15:
	.size	isNumeric, .Lfunc_end15-isNumeric
                                        # -- End function
	.p2align	5                               # -- Begin function get_domain
	.type	get_domain,@function
get_domain:                             # @get_domain
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
	ld.d	$s1, $a2, 16
	move	$s0, $a1
	move	$s3, $a0
	ori	$a1, $zero, 46
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_11
# %bb.1:
	move	$s2, $a0
	addi.d	$a1, $a0, 1
	addi.d	$a0, $s3, 96
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(cli_regexec)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_14
.LBB16_2:                               # %isTLD.exit.thread
	ld.d	$s1, $fp, 16
	beqz	$s1, .LBB16_6
# %bb.3:                                # %.lr.ph.preheader.i50
	addi.d	$a0, $s2, -1
	ori	$a1, $zero, 46
	.p2align	4, , 16
.LBB16_4:                               # %.lr.ph.i51
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a0, 0
	beq	$a2, $a1, .LBB16_24
# %bb.5:                                #   in Loop: Header=BB16_4 Depth=1
	addi.d	$a0, $a0, -1
	bgeu	$a0, $s1, .LBB16_4
.LBB16_6:                               # %.loopexit.preheader
	move	$a1, $s0
	.p2align	4, , 16
.LBB16_7:                               # %.loopexit
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.w	$a1, $a1, 0
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 0
	bnez	$a1, .LBB16_29
# %bb.8:                                #   in Loop: Header=BB16_7 Depth=1
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB16_7
# %bb.9:
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB16_29
# %bb.10:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 16
	b	.LBB16_29
.LBB16_11:
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	.p2align	4, , 16
.LBB16_12:                              # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.w	$a1, $a1, 0
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 0
	bnez	$a1, .LBB16_23
# %bb.13:                               #   in Loop: Header=BB16_12 Depth=1
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB16_12
	b	.LBB16_21
.LBB16_14:
	ld.d	$a1, $fp, 16
	beqz	$a1, .LBB16_18
# %bb.15:                               # %.lr.ph.preheader.i
	addi.d	$s2, $s2, -1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	ori	$a2, $zero, 46
	move	$s4, $a0
	.p2align	4, , 16
.LBB16_16:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $s2, 0
	beq	$a3, $a2, .LBB16_31
# %bb.17:                               #   in Loop: Header=BB16_16 Depth=1
	addi.d	$s2, $s2, -1
	add.d	$s4, $s4, $a0
	bgeu	$s2, $a1, .LBB16_16
.LBB16_18:                              # %.loopexit74
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	.p2align	4, , 16
.LBB16_19:                              # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.w	$a1, $a1, 0
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 0
	bnez	$a1, .LBB16_23
# %bb.20:                               #   in Loop: Header=BB16_19 Depth=1
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB16_19
.LBB16_21:
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB16_23
# %bb.22:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB16_23:                              # %string_assign.exit
	ld.w	$a0, $fp, 0
	ld.d	$s1, $fp, 16
	b	.LBB16_30
.LBB16_24:                              # %rfind.exit56
	addi.d	$s1, $a0, 1
	move	$a1, $s0
	.p2align	4, , 16
.LBB16_25:                              # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.w	$a1, $a1, 0
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 0
	bnez	$a1, .LBB16_29
# %bb.26:                               #   in Loop: Header=BB16_25 Depth=1
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB16_25
.LBB16_27:
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB16_29
# %bb.28:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB16_29:                              # %string_assign_ref.exit66
	ld.w	$a0, $fp, 0
.LBB16_30:                              # %.critedge
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 0
	st.d	$s1, $s0, 16
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 0
	st.d	$fp, $s0, 8
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
.LBB16_31:                              # %rfind.exit
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	add.d	$a0, $s4, $a0
	srai.d	$a0, $a0, 32
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_2
# %bb.32:                               # %isTLD.exit
	addi.d	$s1, $s2, 1
	srai.d	$s4, $s4, 32
	move	$s5, $a0
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s5, $s4
	addi.d	$a0, $s3, 64
	move	$a1, $s5
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(cli_regexec)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB16_2
# %bb.33:                               # %.preheader.preheader
	move	$a1, $s0
	.p2align	4, , 16
.LBB16_34:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.w	$a1, $a1, 0
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 0
	bnez	$a1, .LBB16_29
# %bb.35:                               #   in Loop: Header=BB16_34 Depth=1
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB16_34
	b	.LBB16_27
.Lfunc_end16:
	.size	get_domain, .Lfunc_end16-get_domain
                                        # -- End function
	.type	src_text,@object                # @src_text
	.section	.rodata,"a",@progbits
src_text:
	.asciz	"src"
	.size	src_text, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"urls.displayLink.data[...]"
	.size	.L.str, 27

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata,"a",@progbits
.L.str.1:
	.asciz	"href"
	.size	.L.str.1, 5

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Phishcheck: Phishing scan result: %s\n"
	.size	.L.str.2, 38

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Phishing.Heuristics.Email.HexURL"
	.size	.L.str.3, 33

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Phishing.Heuristics.Email.Cloaked.NumericIP"
	.size	.L.str.4, 44

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Phishing.Heuristics.Email.Cloaked.Null"
	.size	.L.str.5, 39

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Phishing.Heuristics.Email.SSL-Spoof"
	.size	.L.str.6, 36

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Phishing.Heuristics.Email.Cloaked.Username"
	.size	.L.str.7, 43

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Phishing.Heuristics.Email.SpoofedDomain"
	.size	.L.str.8, 40

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Phishcheck: href with no contents?\n"
	.size	.L.str.9, 36

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Initializing phishcheck module\n"
	.size	.L.str.10, 32

	.type	cloaked_host_regex,@object      # @cloaked_host_regex
	.section	.rodata,"a",@progbits
cloaked_host_regex:
	.asciz	"^(0[xX][0-9a-fA-F]+|[0-9]+)(\\.(0[xX][0-9a-fA-F]+|[0-9]+)){0,3}$"
	.size	cloaked_host_regex, 64

	.type	cctld_regex,@object             # @cctld_regex
cctld_regex:
	.asciz	"^(a[dfilmoqrtuwxz]|b[bdeghijmorstwyz]|c[ahlmnosuy]|d[ejkmz]|e[cegrstu]|f[ijr]|g[abdeghilmnprtuwy]|h[nrtu]|i[delnqst]|j[emop]|k[eghimwz]|l[birstuv]|m[acglmnoqrstuvwxyz]|n[aegilopru]|om|p[aehkltwy]|qa|r[ow]|s[cdeginorz]|t[dghjklmnorvwz]|u[agyz]|v[enu]|ws|y[etu])$"
	.size	cctld_regex, 262

	.type	tld_regex,@object               # @tld_regex
tld_regex:
	.asciz	"^(A[CDEFGILMNOQRSTUWXZ]|B[ABDEFGHIJMNORSTVWYZ]|C[ACDFGHIKLMNORUVXYZ]|D[EJKMOZ]|E[CEGRSTU]|F[IJKMOR]|G[ABDEFGHILMNPQRSTUWY]|H[KMNRTU]|I[DELMNOQRST]|J[EMOP]|K[EGHIMNRWYZ]|L[ABCIKRSTUVY]|M[ACDGHKLMNOPQRSTUVWXYZ]|N[ACEFGILOPRUZ]|OM|P[AEFGHKLMNRSTWY]|QA|R[EOUW]|S[ABCDEGHIJKLMNORTUVYZ]|T[CDFGHJKLMNOPRTVWZ]|U[AGKMSYZ]|V[ACEGINU]|W[FS]|Y[ETU]|Z[AMW]|BIZ|CAT|COM|EDU|GOV|INT|MIL|NET|ORG|PRO|AERO|ARPA|COOP|INFO|JOBS|MOBI|NAME|MUSEUM)$"
	.size	tld_regex, 428

	.type	.L.str.11,@object               # @.str.11
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.11:
	.asciz	"^ *(((http|https|ftp|mailto)://.+)|(([a-zA-Z]([-$_@&a-zA-Z0-9!*\"'(),]|%[0-9a-fA-f]{2})*:(//)?)?(([-$_@&a-zA-Z0-9!*\"'(),]|%[0-9a-fA-f]{2})|\\+)+\\.((([-$_@&a-zA-Z0-9!*\"'(),]|%[0-9a-fA-f]{2})|\\+)+\\.)*"
	.size	.L.str.11, 197

	.type	.L.str.12,@object               # @.str.12
	.p2align	3, 0x0
.L.str.12:
	.asciz	"(A[CDEFGILMNOQRSTUWXZ]|B[ABDEFGHIJMNORSTVWYZ]|C[ACDFGHIKLMNORUVXYZ]|D[EJKMOZ]|E[CEGRSTU]|F[IJKMOR]|G[ABDEFGHILMNPQRSTUWY]|H[KMNRTU]|I[DELMNOQRST]|J[EMOP]|K[EGHIMNRWYZ]|L[ABCIKRSTUVY]|M[ACDGHKLMNOPQRSTUVWXYZ]|N[ACEFGILOPRUZ]|OM|P[AEFGHKLMNRSTWY]|QA|R[EOUW]|S[ABCDEGHIJKLMNORTUVYZ]|T[CDFGHJKLMNOPRTVWZ]|U[AGKMSYZ]|V[ACEGINU]|W[FS]|Y[ETU]|Z[AMW]|BIZ|CAT|COM|EDU|GOV|INT|MIL|NET|ORG|PRO|AERO|ARPA|COOP|INFO|JOBS|MOBI|NAME|MUSEUM)"
	.size	.L.str.12, 426

	.type	.L.str.13,@object               # @.str.13
	.p2align	3, 0x0
.L.str.13:
	.asciz	"(/(([-$_@.&a-zA-Z0-9!*\"'(),]|%[0-9a-fA-f]{2})|\\+|=)*)*(\\?(([-$_@.&a-zA-Z0-9!*\"'(),]|%[0-9a-fA-f]{2})+)*)?(#([-$_@.&a-zA-Z0-9!*\"'(),]|%[0-9a-fA-f]{2})+)?)) *$"
	.size	.L.str.13, 158

	.type	.L.str.14,@object               # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"^ *(((http|https|ftp|mailto)://.+)|((([-$_@&a-zA-Z0-9!*\"'(),]|%[0-9a-fA-f]{2})|\\+)+\\.((([-$_@&a-zA-Z0-9!*\"'(),]|%[0-9a-fA-f]{2})|\\+)+\\.)*"
	.size	.L.str.14, 138

	.type	numeric_url_regex,@object       # @numeric_url_regex
	.section	.rodata,"a",@progbits
numeric_url_regex:
	.asciz	"^ *([a-zA-Z]([-$_@&a-zA-Z0-9!*\"'(),]|%[0-9a-fA-f]{2})*:(//)?)?[0-9]{1,3}(\\.[0-9]{1,3}){3}(:(([-$_@&a-zA-Z0-9!*\"'(),]|%[0-9a-fA-f]{2})|\\+)+)?(/((([-$_@.&a-zA-Z0-9!*\"'(),]|%[0-9a-fA-f]{2})|\\+)+/?)*)?(\\?(([-$_@.&a-zA-Z0-9!*\"'(),]|%[0-9a-fA-f]{2})+)*)?(#([-$_@.&a-zA-Z0-9!*\"'(),]|%[0-9a-fA-f]{2})+)? *$"
	.size	numeric_url_regex, 299

	.type	.L.str.15,@object               # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"Phishcheck module initialized\n"
	.size	.L.str.15, 31

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Cleaning up phishcheck\n"
	.size	.L.str.16, 24

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Freeing phishcheck struct\n"
	.size	.L.str.17, 27

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Phishcheck cleaned up\n"
	.size	.L.str.18, 23

	.type	empty_string,@object            # @empty_string
	.local	empty_string
	.comm	empty_string,1,1
	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Phishcheck: found Possibly Unwanted: %s\n"
	.size	.L.str.19, 41

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Phishcheck: Compiling regex: %s\n"
	.size	.L.str.20, 33

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"Phishcheck: Error in compiling regex:%s\nDisabling phishing checks\n"
	.size	.L.str.21, 67

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"Phishcheck: Error in compiling regex, disabling phishing checks. Additionally an Out-of-memory error was encountered while generating a detailed error message\n"
	.size	.L.str.22, 160

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"Phishcheck:Checking url %s->%s\n"
	.size	.L.str.23, 32

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"Displayed 'url' is not url:%s\n"
	.size	.L.str.24, 31

	.type	dotnet,@object                  # @dotnet
	.section	.rodata,"a",@progbits
dotnet:
	.asciz	".net"
	.size	dotnet, 5

	.type	adonet,@object                  # @adonet
adonet:
	.asciz	"ado.net"
	.size	adonet, 8

	.type	aspnet,@object                  # @aspnet
aspnet:
	.asciz	"asp.net"
	.size	aspnet, 8

	.type	lt,@object                      # @lt
lt:
	.asciz	"&lt"
	.size	lt, 4

	.type	gt,@object                      # @gt
gt:
	.asciz	"&gt"
	.size	gt, 4

	.type	.L.str.25,@object               # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"/?"
	.size	.L.str.25, 3

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	" "
	.size	.L.str.26, 2

	.type	hextable,@object                # @hextable
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
hextable:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.half	8                               # 0x8
	.half	9                               # 0x9
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	10                              # 0xa
	.half	11                              # 0xb
	.half	12                              # 0xc
	.half	13                              # 0xd
	.half	14                              # 0xe
	.half	15                              # 0xf
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	10                              # 0xa
	.half	11                              # 0xb
	.half	12                              # 0xc
	.half	13                              # 0xd
	.half	14                              # 0xe
	.half	15                              # 0xf
	.space	306
	.size	hextable, 512

	.type	.L.str.28,@object               # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"Phishcheck:host:%s\n"
	.size	.L.str.28, 20

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"://"
	.size	.L.str.29, 4

	.type	mailto,@object                  # @mailto
	.section	.rodata,"a",@progbits
mailto:
	.asciz	"mailto:"
	.size	mailto, 8

	.type	.L.str.30,@object               # @.str.30
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.30:
	.asciz	": "
	.size	.L.str.30, 3

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"Phishcheck: Real URL without protocol: %s\n"
	.size	.L.str.31, 43

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	":/?"
	.size	.L.str.32, 4

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"%d.%d.%d.%d%n"
	.size	.L.str.33, 14

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"&#"
	.size	.L.str.34, 3

	.type	https,@object                   # @https
	.section	.rodata,"a",@progbits
https:
	.asciz	"https://"
	.size	https, 9

	.type	.L.str.36,@object               # @.str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.36:
	.asciz	"Phishcheck: Encountered a host without a tld? (%s)\n"
	.size	.L.str.36, 52

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"Phishcheck: Weird, a name with only 2 levels (%s)\n"
	.size	.L.str.37, 51

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"Clean"
	.size	.L.str.38, 6

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"URLs match after cleanup"
	.size	.L.str.39, 25

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"URL is whitelisted"
	.size	.L.str.40, 19

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"host part of URL is whitelist"
	.size	.L.str.41, 30

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"Hosts match"
	.size	.L.str.42, 12

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"Domains match"
	.size	.L.str.43, 14

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"After redirecting realURL, they match"
	.size	.L.str.44, 38

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"After redirecting realURL, hosts match"
	.size	.L.str.45, 39

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"After redirecting the domains match"
	.size	.L.str.46, 36

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"URL is mailto"
	.size	.L.str.47, 14

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"IP address encountered in hostname"
	.size	.L.str.48, 35

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"Displayed link is not an URL, can't check if phishing or not"
	.size	.L.str.49, 61

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"Link URL is cloaked (null byte %00)"
	.size	.L.str.50, 36

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"Link URL contains username, and real<->displayed hosts don't match."
	.size	.L.str.51, 68

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"Visible links is SSL, real link is not"
	.size	.L.str.52, 39

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"URLs are way too different"
	.size	.L.str.53, 27

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"Host not listed in .pdb -> not checked"
	.size	.L.str.54, 39

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"Embedded image in mail -> clean"
	.size	.L.str.55, 32

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"Embedded hex urls"
	.size	.L.str.56, 18

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"Unknown return code"
	.size	.L.str.57, 20

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym src_text
	.addrsig_sym .L.str.1
	.addrsig_sym cloaked_host_regex
	.addrsig_sym cctld_regex
	.addrsig_sym tld_regex
	.addrsig_sym numeric_url_regex
	.addrsig_sym empty_string
	.addrsig_sym dotnet
	.addrsig_sym adonet
	.addrsig_sym aspnet
	.addrsig_sym lt
	.addrsig_sym gt
	.addrsig_sym mailto
	.addrsig_sym https
