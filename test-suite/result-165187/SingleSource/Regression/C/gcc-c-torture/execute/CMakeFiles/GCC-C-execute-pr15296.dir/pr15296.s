	.file	"pr15296.c"
	.text
	.globl	f                               # -- Begin function f
	.p2align	5
	.type	f,@function
f:                                      # @f
# %bb.0:
	bge	$a3, $a4, .LBB0_2
	.p2align	4, , 16
.LBB0_1:                                # %.split
                                        # =>This Inner Loop Header: Depth=1
	b	.LBB0_1
.LBB0_2:
	beqz	$a3, .LBB0_8
# %bb.3:
	beqz	$a5, .LBB0_6
# %bb.4:
	ld.d	$a0, $a1, 16
	st.d	$a5, $a1, 8
	bnez	$a0, .LBB0_9
# %bb.5:
	st.d	$zero, $a5, 16
	ret
.LBB0_6:
	ld.d	$a0, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 8
	bnez	$a0, .LBB0_9
# %bb.7:
	addi.w	$a0, $zero, -1
	st.d	$a0, $zero, 24
	ret
.LBB0_8:                                # %.thread
	ld.d	$a0, $a1, 16
	st.d	$zero, $a1, 8
.LBB0_9:
	pcaddu18i	$ra, %call36(g)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	f, .Lfunc_end0-f
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.globl	g                               # -- Begin function g
	.p2align	5
	.type	g,@function
g:                                      # @g
# %bb.0:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	g, .Lfunc_end1-g
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI2_0:
	.dword	999                             # 0x3e7
	.dword	777                             # 0x309
.LCPI2_1:
	.dword	0                               # 0x0
	.dword	444                             # 0x1bc
.LCPI2_2:
	.dword	111                             # 0x6f
	.dword	222                             # 0xde
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L__const.main.uv)
	addi.d	$a0, $a0, %pc_lo12(.L__const.main.uv)
	vld	$vr0, $a0, 16
	vld	$vr1, $a0, 0
	vst	$vr0, $sp, 64
	vst	$vr1, $sp, 48
	st.d	$zero, $sp, 24
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI2_0)
	st.d	$zero, $sp, 8
	ori	$a0, $zero, 555
	st.d	$a0, $sp, 16
	vst	$vr0, $sp, 32
	lu12i.w	$a0, 4
	ori	$a3, $a0, 3616
	lu12i.w	$a0, 2
	ori	$a4, $a0, 1808
	addi.d	$a1, $sp, 8
	addi.d	$a5, $sp, 48
	addi.d	$fp, $sp, 48
	move	$a0, $zero
	pcaddu18i	$ra, %call36(f)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	bne	$a0, $fp, .LBB2_6
# %bb.1:
	vld	$vr0, $sp, 48
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_2)
	vld	$vr2, $sp, 64
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr3, $a0, %pc_lo12(.LCPI2_1)
	vseq.d	$vr0, $vr0, $vr1
	vrepli.b	$vr1, -1
	vxor.v	$vr0, $vr0, $vr1
	vseq.d	$vr2, $vr2, $vr3
	vxor.v	$vr1, $vr2, $vr1
	vpickev.w	$vr0, $vr1, $vr0
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a0, $vr0, 0
	andi	$a0, $a0, 15
	bnez	$a0, .LBB2_6
# %bb.2:
	ld.d	$a0, $sp, 24
	bnez	$a0, .LBB2_6
# %bb.3:
	ld.d	$a0, $sp, 32
	ori	$a1, $zero, 999
	bne	$a0, $a1, .LBB2_6
# %bb.4:
	ld.d	$a0, $sp, 40
	ori	$a1, $zero, 777
	bne	$a0, $a1, .LBB2_6
# %bb.5:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB2_6:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.type	.L__const.main.uv,@object       # @__const.main.uv
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	3, 0x0
.L__const.main.uv:
	.dword	111                             # 0x6f
	.dword	222                             # 0xde
	.dword	333                             # 0x14d
	.dword	444                             # 0x1bc
	.size	.L__const.main.uv, 32

	.section	".note.GNU-stack","",@progbits
	.addrsig
