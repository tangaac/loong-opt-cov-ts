	.file	"20000808-1.c"
	.text
	.globl	bar                             # -- Begin function bar
	.p2align	5
	.type	bar,@function
bar:                                    # @bar
# %bb.0:
	ret
.Lfunc_end0:
	.size	bar, .Lfunc_end0-bar
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function f
.LCPI1_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	-1                              # 0xffffffffffffffff
	.dword	0                               # 0x0
.LCPI1_1:
	.dword	1                               # 0x1
	.dword	-1                              # 0xffffffffffffffff
	.dword	-1                              # 0xffffffffffffffff
	.dword	1                               # 0x1
.LCPI1_2:
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.text
	.globl	f
	.p2align	5
	.type	f,@function
f:                                      # @f
# %bb.0:
	addi.d	$sp, $sp, -16
	ld.d	$t0, $sp, 40
	ld.d	$t1, $sp, 32
	ld.d	$t2, $sp, 24
	ld.d	$t3, $sp, 16
	xvinsgr2vr.d	$xr1, $a4, 0
	xvinsgr2vr.d	$xr1, $a5, 1
	xvinsgr2vr.d	$xr1, $a6, 2
	xvinsgr2vr.d	$xr1, $a7, 3
	xvinsgr2vr.d	$xr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	xvld	$xr2, $a0, %pc_lo12(.LCPI1_0)
	xvinsgr2vr.d	$xr0, $a1, 1
	xvinsgr2vr.d	$xr0, $a2, 2
	xvinsgr2vr.d	$xr0, $a3, 3
	xvseq.d	$xr0, $xr0, $xr2
	xvrepli.b	$xr2, -1
	xvxor.v	$xr3, $xr0, $xr2
	xvpickve2gr.d	$a0, $xr3, 0
	vinsgr2vr.h	$vr0, $a0, 0
	xvpickve2gr.d	$a0, $xr3, 1
	xvpickve2gr.d	$a1, $xr3, 2
	xvpickve2gr.d	$a2, $xr3, 3
	pcalau12i	$a3, %pc_hi20(.LCPI1_1)
	xvld	$xr3, $a3, %pc_lo12(.LCPI1_1)
	vinsgr2vr.h	$vr0, $a0, 1
	vinsgr2vr.h	$vr0, $a1, 2
	vinsgr2vr.h	$vr0, $a2, 3
	xvseq.d	$xr1, $xr1, $xr3
	xvxor.v	$xr1, $xr1, $xr2
	xvpickve2gr.d	$a3, $xr1, 0
	vinsgr2vr.h	$vr0, $a3, 4
	xvpickve2gr.d	$a3, $xr1, 1
	vinsgr2vr.h	$vr0, $a3, 5
	xvpickve2gr.d	$a3, $xr1, 2
	vinsgr2vr.h	$vr0, $a3, 6
	xvpickve2gr.d	$a3, $xr1, 3
	vinsgr2vr.h	$vr0, $a3, 7
	xvinsgr2vr.d	$xr1, $t3, 0
	pcalau12i	$a3, %pc_hi20(.LCPI1_2)
	xvld	$xr3, $a3, %pc_lo12(.LCPI1_2)
	xvinsgr2vr.d	$xr1, $t2, 1
	xvinsgr2vr.d	$xr1, $t1, 2
	xvinsgr2vr.d	$xr1, $t0, 3
	xvseq.d	$xr1, $xr1, $xr3
	xvxor.v	$xr1, $xr1, $xr2
	xvpickve2gr.d	$a3, $xr1, 0
	vinsgr2vr.w	$vr2, $a3, 0
	xvpickve2gr.d	$a3, $xr1, 1
	vinsgr2vr.w	$vr2, $a3, 1
	xvpickve2gr.d	$a3, $xr1, 2
	vinsgr2vr.w	$vr2, $a3, 2
	xvpickve2gr.d	$a3, $xr1, 3
	vinsgr2vr.w	$vr2, $a3, 3
	vpickve2gr.h	$a3, $vr0, 0
	vinsgr2vr.w	$vr1, $a3, 0
	vinsgr2vr.w	$vr1, $a0, 1
	vinsgr2vr.w	$vr1, $a1, 2
	vinsgr2vr.w	$vr1, $a2, 3
	vor.v	$vr1, $vr1, $vr2
	vpickve2gr.w	$a0, $vr1, 3
	st.h	$a0, $sp, 6
	vpickve2gr.w	$a0, $vr1, 2
	st.h	$a0, $sp, 4
	vpickve2gr.w	$a0, $vr1, 1
	st.h	$a0, $sp, 2
	vpickve2gr.w	$a0, $vr1, 0
	st.h	$a0, $sp, 0
	vld	$vr1, $sp, 0
	vshuf4i.d	$vr1, $vr0, 12
	vslli.h	$vr0, $vr1, 15
	vsrai.h	$vr0, $vr0, 15
	vmskltz.h	$vr0, $vr0
	vpickve2gr.hu	$a0, $vr0, 0
	andi	$a0, $a0, 255
	bnez	$a0, .LBB1_2
# %bb.1:
	addi.d	$sp, $sp, 16
	ret
.LBB1_2:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	f, .Lfunc_end1-f
                                        # -- End function
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:
	ret
.Lfunc_end2:
	.size	foo, .Lfunc_end2-foo
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
