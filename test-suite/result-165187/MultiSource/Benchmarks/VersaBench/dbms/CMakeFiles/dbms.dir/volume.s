	.file	"volume.c"
	.text
	.globl	volume                          # -- Begin function volume
	.p2align	5
	.type	volume,@function
volume:                                 # @volume
# %bb.0:
	ld.d	$a1, $a0, 16
	ld.d	$a2, $a0, 0
	vinsgr2vr.d	$vr0, $a1, 0
	vinsgr2vr.d	$vr1, $a2, 0
	vfsub.s	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 0
	ld.d	$a1, $a0, 24
	ld.d	$a0, $a0, 8
	vreplvei.w	$vr0, $vr0, 1
	fmul.s	$fa0, $fa1, $fa0
	vinsgr2vr.d	$vr1, $a1, 0
	vinsgr2vr.d	$vr2, $a0, 0
	vfsub.s	$vr1, $vr1, $vr2
	vreplvei.w	$vr2, $vr1, 0
	fmul.s	$fa0, $fa0, $fa2
	vreplvei.w	$vr1, $vr1, 1
	fmul.s	$fa0, $fa0, $fa1
	ret
.Lfunc_end0:
	.size	volume, .Lfunc_end0-volume
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
