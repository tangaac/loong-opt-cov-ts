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
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	ori	$fp, $zero, 12
	ori	$a0, $zero, 12
	lu32i.d	$a0, 12
	st.d	$a0, $sp, 136
	addi.d	$s1, $sp, 136
	st.d	$s1, $sp, 24
	st.d	$s1, $sp, 32
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
	addi.d	$a1, $sp, 24
	pcaddu18i	$ra, %call36(inet_check_attr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_9
# %bb.1:                                # %.preheader29.preheader
	addi.d	$s0, $sp, 140
	xvld	$xr1, $sp, 56
	xvld	$xr0, $sp, 24
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	xvld	$xr2, $a0, %pc_lo12(.LCPI1_0)
	xvinsgr2vr.d	$xr3, $s0, 0
	xvinsgr2vr.d	$xr3, $s1, 1
	xvpermi.d	$xr3, $xr3, 68
	xvshuf.d	$xr2, $xr0, $xr3
	xvrepl128vei.d	$xr3, $xr3, 0
	xvseq.d	$xr3, $xr0, $xr3
	xvpickve2gr.d	$a0, $xr3, 0
	vinsgr2vr.h	$vr0, $a0, 0
	xvpickve2gr.d	$a1, $xr3, 1
	vinsgr2vr.h	$vr0, $a1, 1
	xvpickve2gr.d	$a2, $xr3, 2
	vinsgr2vr.h	$vr0, $a2, 2
	xvpickve2gr.d	$a3, $xr3, 3
	vinsgr2vr.h	$vr0, $a3, 3
	xvseq.d	$xr1, $xr1, $xr2
	xvpickve2gr.d	$a0, $xr1, 0
	vinsgr2vr.h	$vr0, $a0, 4
	xvpickve2gr.d	$a0, $xr1, 1
	vinsgr2vr.h	$vr0, $a0, 5
	xvpickve2gr.d	$a0, $xr1, 2
	vinsgr2vr.h	$vr0, $a0, 6
	xvpickve2gr.d	$a0, $xr1, 3
	xvinsgr2vr.d	$xr1, $s1, 0
	xvpermi.d	$xr1, $xr1, 68
	xvinsgr2vr.d	$xr2, $s0, 0
	xvpermi.d	$xr2, $xr2, 68
	xvpackev.d	$xr1, $xr2, $xr1
	pcalau12i	$a4, %pc_hi20(.LCPI1_1)
	xvld	$xr2, $a4, %pc_lo12(.LCPI1_1)
	xvld	$xr3, $sp, 88
	vinsgr2vr.h	$vr0, $a0, 7
	xvpermi.d	$xr1, $xr1, 68
	xvshuf.d	$xr2, $xr0, $xr1
	xvseq.d	$xr1, $xr3, $xr2
	xvpickve2gr.d	$a0, $xr1, 0
	vinsgr2vr.w	$vr2, $a0, 0
	xvpickve2gr.d	$a0, $xr1, 1
	vinsgr2vr.w	$vr2, $a0, 1
	xvpickve2gr.d	$a0, $xr1, 2
	vinsgr2vr.w	$vr2, $a0, 2
	xvpickve2gr.d	$a0, $xr1, 3
	vinsgr2vr.w	$vr2, $a0, 3
	ld.d	$a4, $sp, 120
	ld.d	$a0, $sp, 128
	vpickve2gr.h	$a5, $vr0, 0
	vinsgr2vr.w	$vr1, $a5, 0
	vinsgr2vr.w	$vr1, $a1, 1
	vinsgr2vr.w	$vr1, $a2, 2
	vinsgr2vr.w	$vr1, $a3, 3
	vand.v	$vr1, $vr1, $vr2
	vpickve2gr.w	$a1, $vr1, 3
	st.h	$a1, $sp, 6
	vpickve2gr.w	$a1, $vr1, 2
	st.h	$a1, $sp, 4
	vpickve2gr.w	$a1, $vr1, 1
	st.h	$a1, $sp, 2
	vpickve2gr.w	$a1, $vr1, 0
	st.h	$a1, $sp, 0
	vld	$vr1, $sp, 0
	xor	$a1, $a4, $s0
	sltui	$a1, $a1, 1
	vshuf4i.d	$vr1, $vr0, 12
	vslli.h	$vr0, $vr1, 15
	vsrai.h	$vr0, $vr0, 15
	vmskltz.h	$vr0, $vr0
	vpickve2gr.hu	$a2, $vr0, 0
	andi	$a2, $a2, 255
	addi.d	$a2, $a2, -255
	sltui	$a2, $a2, 1
	and	$a1, $a2, $a1
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB1_9
# %bb.2:                                # %.preheader29.preheader
	bne	$a0, $s0, .LBB1_9
# %bb.3:                                # %.preheader28.preheader
	addi.d	$a0, $sp, 136
	st.d	$a0, $sp, 24
	st.d	$a0, $sp, 40
	st.d	$a0, $sp, 48
	st.d	$a0, $sp, 56
	st.d	$a0, $sp, 72
	st.d	$a0, $sp, 80
	st.d	$a0, $sp, 88
	st.d	$a0, $sp, 96
	st.d	$a0, $sp, 104
	st.d	$a0, $sp, 112
	st.d	$a0, $sp, 120
	st.d	$a0, $sp, 128
	st.d	$zero, $sp, 32
	addi.d	$a0, $fp, -8
	st.h	$a0, $sp, 140
	st.d	$s0, $sp, 64
	addi.d	$a1, $sp, 24
	pcaddu18i	$ra, %call36(inet_check_attr)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -22
	bne	$a0, $a1, .LBB1_9
# %bb.4:                                # %.preheader
	ld.d	$a1, $sp, 32
	ld.d	$a0, $sp, 24
	bnez	$a1, .LBB1_9
# %bb.5:                                # %.preheader.split.us.preheader
	bne	$a0, $s0, .LBB1_9
# %bb.6:                                # %.preheader.split.us.preheader
	xvld	$xr0, $sp, 40
	xvreplgr2vr.d	$xr1, $s0
	xvseq.d	$xr0, $xr0, $xr1
	xvmskltz.d	$xr0, $xr0
	xvpickve2gr.wu	$a0, $xr0, 0
	xvpickve2gr.wu	$a1, $xr0, 4
	bstrins.d	$a0, $a1, 3, 2
	andi	$a0, $a0, 15
	ori	$a1, $zero, 15
	bne	$a0, $a1, .LBB1_9
# %bb.7:                                # %.thread.us.5
	xvld	$xr0, $sp, 72
	xvld	$xr1, $sp, 104
	addi.d	$a0, $sp, 136
	xvreplgr2vr.d	$xr2, $a0
	xvseq.d	$xr0, $xr0, $xr2
	xvpickve2gr.d	$a0, $xr0, 0
	vinsgr2vr.h	$vr3, $a0, 0
	xvpickve2gr.d	$a0, $xr0, 1
	vinsgr2vr.h	$vr3, $a0, 1
	xvpickve2gr.d	$a0, $xr0, 2
	vinsgr2vr.h	$vr3, $a0, 2
	xvpickve2gr.d	$a0, $xr0, 3
	vinsgr2vr.h	$vr3, $a0, 3
	xvseq.d	$xr0, $xr1, $xr2
	xvpickve2gr.d	$a0, $xr0, 0
	vinsgr2vr.h	$vr3, $a0, 4
	xvpickve2gr.d	$a0, $xr0, 1
	vinsgr2vr.h	$vr3, $a0, 5
	xvpickve2gr.d	$a0, $xr0, 2
	vinsgr2vr.h	$vr3, $a0, 6
	xvpickve2gr.d	$a0, $xr0, 3
	vinsgr2vr.h	$vr3, $a0, 7
	vmskltz.h	$vr0, $vr3
	vpickve2gr.hu	$a0, $vr0, 0
	andi	$a0, $a0, 255
	ori	$a1, $zero, 255
	bne	$a0, $a1, .LBB1_9
# %bb.8:                                # %.split37.us
	move	$a0, $zero
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB1_9:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
