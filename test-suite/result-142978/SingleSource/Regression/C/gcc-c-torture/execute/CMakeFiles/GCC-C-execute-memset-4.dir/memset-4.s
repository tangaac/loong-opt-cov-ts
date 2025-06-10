	.file	"memset-4.c"
	.text
	.globl	f                               # -- Begin function f
	.p2align	5
	.type	f,@function
f:                                      # @f
# %bb.0:
	st.d	$zero, $a0, 7
	st.d	$zero, $a0, 0
	ret
.Lfunc_end0:
	.size	f, .Lfunc_end0-f
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(f)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24
	vinsgr2vr.d	$vr0, $a0, 0
	vseqi.b	$vr0, $vr0, 0
	ld.d	$a0, $sp, 32
	vilvl.b	$vr0, $vr0, $vr0
	vslli.h	$vr0, $vr0, 8
	vsrai.h	$vr0, $vr0, 8
	vinsgr2vr.d	$vr1, $a0, 0
	vseqi.b	$vr1, $vr1, 0
	vilvl.b	$vr1, $vr1, $vr1
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 24
	vsrai.w	$vr1, $vr1, 24
	ld.b	$a2, $sp, 36
	ld.b	$a1, $sp, 37
	ld.bu	$a0, $sp, 38
	vpickve2gr.h	$a3, $vr0, 0
	vinsgr2vr.w	$vr2, $a3, 0
	vpickve2gr.h	$a3, $vr0, 1
	vinsgr2vr.w	$vr2, $a3, 1
	vpickve2gr.h	$a3, $vr0, 2
	vinsgr2vr.w	$vr2, $a3, 2
	vpickve2gr.h	$a3, $vr0, 3
	vinsgr2vr.w	$vr2, $a3, 3
	vand.v	$vr1, $vr2, $vr1
	vpickve2gr.w	$a3, $vr1, 3
	st.h	$a3, $sp, 6
	vpickve2gr.w	$a3, $vr1, 2
	st.h	$a3, $sp, 4
	vpickve2gr.w	$a3, $vr1, 1
	st.h	$a3, $sp, 2
	vpickve2gr.w	$a3, $vr1, 0
	st.h	$a3, $sp, 0
	vld	$vr1, $sp, 0
	andi	$a2, $a2, 255
	sltui	$a2, $a2, 1
	vshuf4i.d	$vr1, $vr0, 12
	vslli.h	$vr0, $vr1, 15
	vsrai.h	$vr0, $vr0, 15
	vmskltz.h	$vr0, $vr0
	vpickve2gr.hu	$a3, $vr0, 0
	andi	$a3, $a3, 255
	addi.d	$a3, $a3, -255
	sltui	$a3, $a3, 1
	and	$a2, $a3, $a2
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB1_4
# %bb.1:
	andi	$a1, $a1, 255
	bnez	$a1, .LBB1_4
# %bb.2:
	bnez	$a0, .LBB1_4
# %bb.3:
	move	$a0, $zero
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB1_4:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
