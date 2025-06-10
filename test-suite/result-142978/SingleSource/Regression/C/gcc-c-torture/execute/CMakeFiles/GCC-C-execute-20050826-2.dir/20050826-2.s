	.file	"20050826-2.c"
	.text
	.globl	inet_check_attr                 # -- Begin function inet_check_attr
	.p2align	5
	.type	inet_check_attr,@function
inet_check_attr:                        # @inet_check_attr
# %bb.0:
	ld.d	$a0, $a1, 0
	beqz	$a0, .LBB0_4
# %bb.1:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_3
# %bb.2:
	addi.w	$a0, $zero, -22
	ret
.LBB0_3:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 0
.LBB0_4:
	ld.d	$a0, $a1, 8
	beqz	$a0, .LBB0_8
# %bb.5:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_7
# %bb.6:
	addi.w	$a0, $zero, -22
	ret
.LBB0_7:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 8
.LBB0_8:
	ld.d	$a0, $a1, 16
	beqz	$a0, .LBB0_12
# %bb.9:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_11
# %bb.10:
	addi.w	$a0, $zero, -22
	ret
.LBB0_11:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 16
.LBB0_12:
	ld.d	$a0, $a1, 24
	beqz	$a0, .LBB0_16
# %bb.13:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_15
# %bb.14:
	addi.w	$a0, $zero, -22
	ret
.LBB0_15:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 24
.LBB0_16:
	ld.d	$a0, $a1, 32
	beqz	$a0, .LBB0_20
# %bb.17:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_19
# %bb.18:
	addi.w	$a0, $zero, -22
	ret
.LBB0_19:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 32
.LBB0_20:
	ld.d	$a0, $a1, 40
	beqz	$a0, .LBB0_24
# %bb.21:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_23
# %bb.22:
	addi.w	$a0, $zero, -22
	ret
.LBB0_23:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 40
.LBB0_24:
	ld.d	$a0, $a1, 48
	beqz	$a0, .LBB0_28
# %bb.25:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_27
# %bb.26:
	addi.w	$a0, $zero, -22
	ret
.LBB0_27:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 48
.LBB0_28:
	ld.d	$a0, $a1, 56
	beqz	$a0, .LBB0_31
# %bb.29:
	ld.hu	$a0, $a0, 0
	bstrpick.d	$a0, $a0, 15, 2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 4
	bne	$a0, $a2, .LBB0_31
# %bb.30:
	addi.w	$a0, $zero, -22
	ret
.LBB0_31:
	ld.d	$a0, $a1, 64
	beqz	$a0, .LBB0_34
# %bb.32:
	ld.hu	$a0, $a0, 0
	bstrpick.d	$a0, $a0, 15, 2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 4
	bne	$a0, $a2, .LBB0_34
# %bb.33:
	addi.w	$a0, $zero, -22
	ret
.LBB0_34:
	ld.d	$a0, $a1, 72
	beqz	$a0, .LBB0_38
# %bb.35:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_37
# %bb.36:
	addi.w	$a0, $zero, -22
	ret
.LBB0_37:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 72
.LBB0_38:
	ld.d	$a0, $a1, 80
	beqz	$a0, .LBB0_42
# %bb.39:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_41
# %bb.40:
	addi.w	$a0, $zero, -22
	ret
.LBB0_41:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 80
.LBB0_42:
	ld.d	$a0, $a1, 88
	beqz	$a0, .LBB0_46
# %bb.43:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_45
# %bb.44:
	addi.w	$a0, $zero, -22
	ret
.LBB0_45:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 88
.LBB0_46:
	ld.d	$a0, $a1, 96
	beqz	$a0, .LBB0_50
# %bb.47:
	ld.hu	$a2, $a0, 0
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_49
# %bb.48:
	addi.w	$a0, $zero, -22
	ret
.LBB0_49:
	addi.d	$a0, $a0, 4
	st.d	$a0, $a1, 96
.LBB0_50:
	ld.d	$a2, $a1, 104
	beqz	$a2, .LBB0_53
# %bb.51:
	ld.hu	$a0, $a2, 0
	bstrpick.d	$a0, $a0, 15, 2
	slli.d	$a0, $a0, 2
	ori	$a3, $zero, 4
	bne	$a0, $a3, .LBB0_54
# %bb.52:
	addi.w	$a0, $zero, -22
	ret
.LBB0_53:
	move	$a0, $zero
	ret
.LBB0_54:
	move	$a0, $zero
	addi.d	$a2, $a2, 4
	st.d	$a2, $a1, 104
	ret
.Lfunc_end0:
	.size	inet_check_attr, .Lfunc_end0-inet_check_attr
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI1_0:
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI1_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	1                               # 0x1
	.dword	1                               # 0x1
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	ori	$fp, $zero, 12
	ori	$a0, $zero, 12
	lu32i.d	$a0, 12
	st.d	$a0, $sp, 152
	addi.d	$s1, $sp, 152
	st.d	$s1, $sp, 40
	st.d	$s1, $sp, 48
	st.d	$s1, $sp, 56
	st.d	$s1, $sp, 64
	st.d	$s1, $sp, 72
	st.d	$s1, $sp, 80
	st.d	$s1, $sp, 88
	st.d	$s1, $sp, 96
	st.d	$s1, $sp, 104
	st.d	$s1, $sp, 112
	st.d	$s1, $sp, 120
	st.d	$s1, $sp, 128
	st.d	$s1, $sp, 136
	st.d	$s1, $sp, 144
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(inet_check_attr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_9
# %bb.1:                                # %.preheader29.preheader
	addi.d	$s0, $sp, 156
	xvld	$xr0, $sp, 72
	xvld	$xr1, $sp, 40
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	xvld	$xr2, $a0, %pc_lo12(.LCPI1_0)
	xvinsgr2vr.d	$xr3, $s0, 0
	xvinsgr2vr.d	$xr3, $s1, 1
	xvpermi.d	$xr3, $xr3, 68
	xvshuf.d	$xr2, $xr0, $xr3
	xvrepl128vei.d	$xr3, $xr3, 0
	xvseq.d	$xr1, $xr1, $xr3
	xvpickve2gr.d	$a0, $xr1, 3
	st.h	$a0, $sp, 22
	xvpickve2gr.d	$a0, $xr1, 2
	st.h	$a0, $sp, 20
	xvpickve2gr.d	$a0, $xr1, 1
	st.h	$a0, $sp, 18
	xvpickve2gr.d	$a0, $xr1, 0
	st.h	$a0, $sp, 16
	xvseq.d	$xr0, $xr0, $xr2
	xvpickve2gr.d	$a0, $xr0, 3
	xvpickve2gr.d	$a1, $xr0, 2
	xvpickve2gr.d	$a2, $xr0, 1
	xvpickve2gr.d	$a3, $xr0, 0
	xvld	$xr0, $sp, 104
	xvinsgr2vr.d	$xr1, $s1, 0
	xvpermi.d	$xr1, $xr1, 68
	xvinsgr2vr.d	$xr2, $s0, 0
	xvpermi.d	$xr2, $xr2, 68
	pcalau12i	$a4, %pc_hi20(.LCPI1_1)
	xvld	$xr3, $a4, %pc_lo12(.LCPI1_1)
	xvpackev.d	$xr1, $xr2, $xr1
	vld	$vr2, $sp, 16
	xvpermi.d	$xr1, $xr1, 68
	xvshuf.d	$xr3, $xr0, $xr1
	xvseq.d	$xr0, $xr0, $xr3
	xvpickve2gr.d	$a4, $xr0, 0
	vinsgr2vr.w	$vr1, $a4, 0
	xvpickve2gr.d	$a4, $xr0, 1
	vinsgr2vr.w	$vr1, $a4, 1
	xvpickve2gr.d	$a4, $xr0, 2
	ld.d	$a5, $sp, 136
	vinsgr2vr.w	$vr1, $a4, 2
	xvpickve2gr.d	$a4, $xr0, 3
	vinsgr2vr.w	$vr1, $a4, 3
	xor	$a4, $a5, $s0
	sltui	$a4, $a4, 1
	vpickve2gr.h	$a5, $vr2, 0
	vinsgr2vr.w	$vr0, $a5, 0
	vpickve2gr.h	$a5, $vr2, 1
	vinsgr2vr.w	$vr0, $a5, 1
	vpickve2gr.h	$a5, $vr2, 2
	vinsgr2vr.w	$vr0, $a5, 2
	vpickve2gr.h	$a5, $vr2, 3
	vinsgr2vr.w	$vr0, $a5, 3
	vand.v	$vr0, $vr0, $vr1
	vpickve2gr.w	$a5, $vr0, 3
	vpickve2gr.w	$a6, $vr0, 2
	vpickve2gr.w	$a7, $vr0, 0
	vpickve2gr.w	$t0, $vr0, 1
	andi	$t0, $t0, 1
	bstrins.d	$a7, $t0, 63, 1
	bstrins.d	$a7, $a6, 2, 2
	bstrins.d	$a7, $a5, 3, 3
	bstrins.d	$a7, $a3, 4, 4
	bstrins.d	$a7, $a2, 5, 5
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 6
	or	$a1, $a7, $a1
	slli.d	$a0, $a0, 7
	or	$a0, $a1, $a0
	andi	$a0, $a0, 255
	addi.d	$a0, $a0, -255
	sltui	$a0, $a0, 1
	and	$a0, $a0, $a4
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_9
# %bb.2:                                # %.preheader29.preheader
	ld.d	$a0, $sp, 144
	bne	$a0, $s0, .LBB1_9
# %bb.3:                                # %.preheader28.preheader
	addi.d	$a0, $sp, 152
	st.d	$a0, $sp, 40
	st.d	$a0, $sp, 56
	st.d	$a0, $sp, 64
	st.d	$a0, $sp, 72
	st.d	$a0, $sp, 88
	st.d	$a0, $sp, 96
	st.d	$a0, $sp, 104
	st.d	$a0, $sp, 112
	st.d	$a0, $sp, 120
	st.d	$a0, $sp, 128
	st.d	$a0, $sp, 136
	st.d	$a0, $sp, 144
	st.d	$zero, $sp, 48
	addi.d	$a0, $fp, -8
	st.h	$a0, $sp, 156
	st.d	$s0, $sp, 80
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(inet_check_attr)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -22
	bne	$a0, $a1, .LBB1_9
# %bb.4:                                # %.preheader
	ld.d	$a1, $sp, 48
	ld.d	$a0, $sp, 40
	bnez	$a1, .LBB1_9
# %bb.5:                                # %.preheader.split.us.preheader
	bne	$a0, $s0, .LBB1_9
# %bb.6:                                # %.preheader.split.us.preheader
	xvld	$xr0, $sp, 56
	xvreplgr2vr.d	$xr1, $s0
	xvseq.d	$xr0, $xr0, $xr1
	xvpickve2gr.d	$a0, $xr0, 0
	xvpickve2gr.d	$a1, $xr0, 1
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 1
	sub.d	$a0, $a1, $a0
	xvpickve2gr.d	$a1, $xr0, 2
	bstrins.d	$a0, $a1, 2, 2
	xvpickve2gr.d	$a1, $xr0, 3
	slli.d	$a1, $a1, 3
	or	$a0, $a0, $a1
	andi	$a0, $a0, 15
	ori	$a1, $zero, 15
	bne	$a0, $a1, .LBB1_9
# %bb.7:                                # %.thread.us.5
	xvld	$xr0, $sp, 88
	xvld	$xr1, $sp, 120
	addi.d	$a0, $sp, 152
	xvreplgr2vr.d	$xr2, $a0
	xvseq.d	$xr0, $xr0, $xr2
	xvpickve2gr.d	$a0, $xr0, 0
	xvpickve2gr.d	$a1, $xr0, 1
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 1
	sub.d	$a0, $a1, $a0
	xvpickve2gr.d	$a1, $xr0, 2
	bstrins.d	$a0, $a1, 2, 2
	xvpickve2gr.d	$a1, $xr0, 3
	bstrins.d	$a0, $a1, 3, 3
	xvseq.d	$xr0, $xr1, $xr2
	xvpickve2gr.d	$a1, $xr0, 0
	bstrins.d	$a0, $a1, 4, 4
	xvpickve2gr.d	$a1, $xr0, 1
	bstrins.d	$a0, $a1, 5, 5
	xvpickve2gr.d	$a1, $xr0, 2
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 6
	or	$a0, $a0, $a1
	xvpickve2gr.d	$a1, $xr0, 3
	slli.d	$a1, $a1, 7
	or	$a0, $a0, $a1
	andi	$a0, $a0, 255
	ori	$a1, $zero, 255
	bne	$a0, $a1, .LBB1_9
# %bb.8:                                # %.split37.us
	move	$a0, $zero
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB1_9:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
