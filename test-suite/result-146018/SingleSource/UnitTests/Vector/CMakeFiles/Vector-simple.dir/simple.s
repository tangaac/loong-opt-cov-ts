	.file	"simple.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	0x408b49779a6b50b1              # double 873.18340000000001
	.dword	0x4040693404ea4a8c              # double 32.821899999999999
.LCPI0_1:
	.dword	0x409ccb9c779a6b51              # double 1842.9028000000001
	.dword	0x4053732fec56d5d0              # double 77.799800000000005
.LCPI0_3:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2, 0x0
.LCPI0_2:
	.word	0x411e0419                      # float 9.8760004
	.word	0x40f705bc                      # float 7.71944999
.LCPI0_5:
	.word	0x3f9df3b6                      # float 1.23399997
	.word	0x401874d1                      # float 2.38212991
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_4:
	.word	0x3f8e353f                      # float 1.11099994
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %.peel.next
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1027
	xor	$a1, $a0, $a1
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 2123
	xor	$a2, $a0, $a2
	sltui	$a2, $a2, 1
	addi.d	$a3, $a0, -1123
	slli.d	$a2, $a2, 3
	slli.d	$a1, $a1, 3
	pcalau12i	$a4, %pc_hi20(.LCPI0_1)
	addi.d	$a4, $a4, %pc_lo12(.LCPI0_1)
	fldx.d	$fa0, $a4, $a1
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	addi.d	$a1, $a1, %pc_lo12(.LCPI0_0)
	fldx.d	$fa1, $a1, $a2
	sltui	$a1, $a3, 1
	addi.d	$a0, $a0, -1432
	sltui	$a0, $a0, 1
	movfr2gr.d	$a2, $fa0
	vfadd.d	$vr0, $vr1, $vr1
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	slli.d	$a0, $a0, 2
	pcalau12i	$a3, %pc_hi20(.LCPI0_2)
	addi.d	$a3, $a3, %pc_lo12(.LCPI0_2)
	fldx.s	$fa0, $a3, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	vld	$vr2, $a0, %pc_lo12(.LCPI0_3)
	pcalau12i	$a0, %pc_hi20(.LCPI0_4)
	fld.s	$fa3, $a0, %pc_lo12(.LCPI0_4)
	slli.d	$a0, $a1, 2
	pcalau12i	$a1, %pc_hi20(.LCPI0_5)
	addi.d	$a1, $a1, %pc_lo12(.LCPI0_5)
	fldx.s	$fa4, $a1, $a0
	vinsgr2vr.d	$vr1, $a2, 1
	vfadd.d	$vr1, $vr1, $vr1
	vst	$vr1, $sp, 48                   # 16-byte Folded Spill
	vshuf.w	$vr2, $vr3, $vr0
	vreplvei.w	$vr1, $vr4, 0
	vfadd.s	$vr2, $vr2, $vr2
	vst	$vr2, $sp, 32                   # 16-byte Folded Spill
	movfr2gr.s	$a0, $fa0
	vori.b	$vr0, $vr1, 0
	vinsgr2vr.w	$vr0, $a0, 2
	vinsgr2vr.w	$vr0, $a0, 3
	vfadd.s	$vr0, $vr0, $vr0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vrepli.b	$vr0, 0
	vshuf4i.d	$vr1, $vr0, 12
	vfadd.s	$vr0, $vr1, $vr1
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	vfmul.s	$vr0, $vr4, $vr4
	vreplvei.w	$vr0, $vr0, 0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$fp, $a0, %pc_lo12(.L.str)
	move	$a0, $fp
	move	$a2, $a1
	move	$a3, $a1
	move	$a4, $a1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	vld	$vr3, $sp, 0                    # 16-byte Folded Reload
	vreplvei.w	$vr0, $vr3, 0
	fcvt.d.s	$fa0, $fa0
	vreplvei.w	$vr1, $vr3, 1
	fcvt.d.s	$fa1, $fa1
	vreplvei.w	$vr2, $vr3, 2
	fcvt.d.s	$fa2, $fa2
	vreplvei.w	$vr3, $vr3, 3
	fcvt.d.s	$fa3, $fa3
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	movfr2gr.d	$a3, $fa2
	movfr2gr.d	$a4, $fa3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	vld	$vr3, $sp, 16                   # 16-byte Folded Reload
	vreplvei.w	$vr0, $vr3, 0
	fcvt.d.s	$fa0, $fa0
	vreplvei.w	$vr1, $vr3, 1
	fcvt.d.s	$fa1, $fa1
	vreplvei.w	$vr2, $vr3, 2
	fcvt.d.s	$fa2, $fa2
	vreplvei.w	$vr3, $vr3, 3
	fcvt.d.s	$fa3, $fa3
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	movfr2gr.d	$a3, $fa2
	movfr2gr.d	$a4, $fa3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	vld	$vr3, $sp, 32                   # 16-byte Folded Reload
	vreplvei.w	$vr0, $vr3, 0
	fcvt.d.s	$fa0, $fa0
	vreplvei.w	$vr1, $vr3, 1
	fcvt.d.s	$fa1, $fa1
	vreplvei.w	$vr2, $vr3, 2
	fcvt.d.s	$fa2, $fa2
	vreplvei.w	$vr3, $vr3, 3
	fcvt.d.s	$fa3, $fa3
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	movfr2gr.d	$a3, $fa2
	movfr2gr.d	$a4, $fa3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vreplvei.d	$vr0, $vr0, 0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$fp, $a0, %pc_lo12(.L.str.1)
	move	$a0, $fp
	move	$a2, $a1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vreplvei.d	$vr0, $vr1, 0
	vreplvei.d	$vr1, $vr1, 1
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a2, $fa1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%f %f %f %f\n"
	.size	.L.str, 13

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%g %g\n"
	.size	.L.str.1, 7

	.section	".note.GNU-stack","",@progbits
	.addrsig
