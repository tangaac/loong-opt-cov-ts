	.file	"jfdctint.c"
	.text
	.globl	jpeg_fdct_islow                 # -- Begin function jpeg_fdct_islow
	.p2align	5
	.type	jpeg_fdct_islow,@function
jpeg_fdct_islow:                        # @jpeg_fdct_islow
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$fp, $sp, 120                   # 8-byte Folded Spill
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	st.d	$s1, $sp, 104                   # 8-byte Folded Spill
	st.d	$s2, $sp, 96                    # 8-byte Folded Spill
	st.d	$s3, $sp, 88                    # 8-byte Folded Spill
	st.d	$s4, $sp, 80                    # 8-byte Folded Spill
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
	st.d	$s6, $sp, 64                    # 8-byte Folded Spill
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	st.d	$s8, $sp, 48                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 8                    # 8-byte Folded Spill
	addi.w	$t5, $zero, -8
	lu12i.w	$a1, 1
	ori	$t2, $a1, 337
	lu12i.w	$a7, -4
	ori	$t1, $a7, 1247
	ori	$t3, $a1, 2174
	move	$t6, $t1
	lu32i.d	$t6, 2047
	lu12i.w	$a1, 2
	ori	$a3, $a1, 1441
	ori	$t7, $zero, 2446
	lu12i.w	$t4, 4
	ori	$a1, $t4, 435
	lu12i.w	$a2, 6
	ori	$a2, $a2, 596
	lu12i.w	$a4, 3
	ori	$a4, $a4, 11
	lu12i.w	$a5, -2
	ori	$a5, $a5, 819
	lu12i.w	$a6, -6
	ori	$a6, $a6, 3581
	ori	$a7, $a7, 315
	lu12i.w	$t0, -1
	ori	$t0, $t0, 900
	ori	$t8, $zero, 0
	lu32i.d	$t8, 1
	move	$fp, $a0
	.p2align	4, , 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	ld.w	$s0, $fp, 0
	ld.w	$s1, $fp, 28
	ld.w	$s2, $fp, 4
	ld.w	$s3, $fp, 24
	add.w	$s4, $s1, $s0
	sub.w	$s0, $s0, $s1
	add.w	$s1, $s3, $s2
	ld.w	$s5, $fp, 8
	ld.w	$s6, $fp, 20
	ld.w	$s7, $fp, 12
	ld.w	$s8, $fp, 16
	sub.w	$s2, $s2, $s3
	add.w	$s3, $s6, $s5
	sub.w	$s5, $s5, $s6
	add.w	$s6, $s8, $s7
	sub.w	$s7, $s7, $s8
	add.d	$s8, $s6, $s4
	sub.d	$s4, $s4, $s6
	add.d	$s6, $s3, $s1
	sub.d	$s1, $s1, $s3
	add.d	$s3, $s8, $s6
	slli.d	$s3, $s3, 2
	st.w	$s3, $fp, 0
	sub.d	$s3, $s8, $s6
	slli.d	$s3, $s3, 2
	st.w	$s3, $fp, 16
	add.d	$s3, $s4, $s1
	mul.d	$s3, $s3, $t2
	mul.d	$s4, $s4, $t3
	addi.d	$s3, $s3, 1024
	add.d	$s4, $s3, $s4
	srli.d	$s4, $s4, 11
	st.w	$s4, $fp, 8
	mul.d	$s1, $s1, $t6
	add.d	$s1, $s3, $s1
	srli.d	$s1, $s1, 11
	st.w	$s1, $fp, 24
	add.d	$s1, $s7, $s0
	add.d	$s3, $s5, $s2
	add.d	$s4, $s7, $s2
	add.d	$s6, $s5, $s0
	add.d	$s8, $s4, $s6
	mul.d	$s8, $s8, $a3
	mul.d	$s7, $s7, $t7
	mul.d	$s5, $s5, $a1
	mul.d	$s2, $s2, $a2
	mul.d	$s0, $s0, $a4
	mul.d	$s1, $s1, $a5
	mul.d	$s3, $s3, $a6
	mul.d	$s4, $s4, $a7
	mul.d	$s6, $s6, $t0
	add.d	$s4, $s8, $s4
	add.d	$s6, $s8, $s6
	addi.d	$s1, $s1, 1024
	add.d	$s7, $s1, $s7
	add.d	$s7, $s7, $s4
	srli.d	$s7, $s7, 11
	st.w	$s7, $fp, 28
	addi.d	$s3, $s3, 1024
	add.d	$s5, $s3, $s5
	add.d	$s5, $s5, $s6
	srli.d	$s5, $s5, 11
	st.w	$s5, $fp, 20
	add.d	$s2, $s3, $s2
	add.d	$s2, $s2, $s4
	srli.d	$s2, $s2, 11
	st.w	$s2, $fp, 12
	add.d	$s0, $s1, $s0
	add.d	$s0, $s0, $s6
	srli.d	$s0, $s0, 11
	st.w	$s0, $fp, 4
	bstrpick.d	$t5, $t5, 31, 0
	addi.d	$t5, $t5, 1
	and	$s0, $t5, $t8
	addi.d	$fp, $fp, 32
	beqz	$s0, .LBB0_1
# %bb.2:                                # %vector.body
	xvld	$xr0, $a0, 0
	xvld	$xr1, $a0, 224
	xvadd.w	$xr2, $xr1, $xr0
	xvpermi.q	$xr3, $xr2, 1
	vpickve2gr.w	$t5, $vr3, 0
	xvinsgr2vr.d	$xr6, $t5, 0
	vpickve2gr.w	$t5, $vr3, 1
	xvinsgr2vr.d	$xr6, $t5, 1
	vpickve2gr.w	$t5, $vr3, 2
	xvinsgr2vr.d	$xr6, $t5, 2
	vpickve2gr.w	$t5, $vr3, 3
	xvinsgr2vr.d	$xr6, $t5, 3
	vpickve2gr.w	$t5, $vr2, 0
	xvinsgr2vr.d	$xr7, $t5, 0
	vpickve2gr.w	$t5, $vr2, 1
	xvinsgr2vr.d	$xr7, $t5, 1
	vpickve2gr.w	$t5, $vr2, 2
	xvinsgr2vr.d	$xr7, $t5, 2
	vpickve2gr.w	$t5, $vr2, 3
	xvinsgr2vr.d	$xr7, $t5, 3
	xvsub.w	$xr1, $xr0, $xr1
	vpickve2gr.w	$t5, $vr1, 0
	xvinsgr2vr.d	$xr0, $t5, 0
	vpickve2gr.w	$t5, $vr1, 1
	xvinsgr2vr.d	$xr0, $t5, 1
	vpickve2gr.w	$t5, $vr1, 2
	xvinsgr2vr.d	$xr0, $t5, 2
	vpickve2gr.w	$t5, $vr1, 3
	xvinsgr2vr.d	$xr0, $t5, 3
	xvpermi.q	$xr2, $xr1, 1
	vpickve2gr.w	$t5, $vr2, 0
	xvinsgr2vr.d	$xr1, $t5, 0
	vpickve2gr.w	$t5, $vr2, 1
	xvinsgr2vr.d	$xr1, $t5, 1
	vpickve2gr.w	$t5, $vr2, 2
	xvld	$xr3, $a0, 32
	xvld	$xr4, $a0, 192
	xvinsgr2vr.d	$xr1, $t5, 2
	vpickve2gr.w	$t5, $vr2, 3
	xvinsgr2vr.d	$xr1, $t5, 3
	xvadd.w	$xr2, $xr4, $xr3
	xvpermi.q	$xr5, $xr2, 1
	vpickve2gr.w	$t5, $vr5, 0
	xvinsgr2vr.d	$xr10, $t5, 0
	vpickve2gr.w	$t5, $vr5, 1
	xvinsgr2vr.d	$xr10, $t5, 1
	vpickve2gr.w	$t5, $vr5, 2
	xvinsgr2vr.d	$xr10, $t5, 2
	vpickve2gr.w	$t5, $vr5, 3
	xvinsgr2vr.d	$xr10, $t5, 3
	vpickve2gr.w	$t5, $vr2, 0
	xvinsgr2vr.d	$xr11, $t5, 0
	vpickve2gr.w	$t5, $vr2, 1
	xvinsgr2vr.d	$xr11, $t5, 1
	vpickve2gr.w	$t5, $vr2, 2
	xvinsgr2vr.d	$xr11, $t5, 2
	vpickve2gr.w	$t5, $vr2, 3
	xvinsgr2vr.d	$xr11, $t5, 3
	xvsub.w	$xr3, $xr3, $xr4
	vpickve2gr.w	$t5, $vr3, 0
	xvinsgr2vr.d	$xr2, $t5, 0
	vpickve2gr.w	$t5, $vr3, 1
	xvinsgr2vr.d	$xr2, $t5, 1
	vpickve2gr.w	$t5, $vr3, 2
	xvinsgr2vr.d	$xr2, $t5, 2
	vpickve2gr.w	$t5, $vr3, 3
	xvinsgr2vr.d	$xr2, $t5, 3
	xvpermi.q	$xr4, $xr3, 1
	vpickve2gr.w	$t5, $vr4, 0
	xvinsgr2vr.d	$xr3, $t5, 0
	vpickve2gr.w	$t5, $vr4, 1
	xvinsgr2vr.d	$xr3, $t5, 1
	vpickve2gr.w	$t5, $vr4, 2
	xvld	$xr5, $a0, 64
	xvld	$xr8, $a0, 160
	xvinsgr2vr.d	$xr3, $t5, 2
	vpickve2gr.w	$t5, $vr4, 3
	xvinsgr2vr.d	$xr3, $t5, 3
	xvadd.w	$xr4, $xr8, $xr5
	xvpermi.q	$xr9, $xr4, 1
	vpickve2gr.w	$t5, $vr9, 0
	xvinsgr2vr.d	$xr12, $t5, 0
	vpickve2gr.w	$t5, $vr9, 1
	xvinsgr2vr.d	$xr12, $t5, 1
	vpickve2gr.w	$t5, $vr9, 2
	xvinsgr2vr.d	$xr12, $t5, 2
	vpickve2gr.w	$t5, $vr9, 3
	xvinsgr2vr.d	$xr12, $t5, 3
	vpickve2gr.w	$t5, $vr4, 0
	xvinsgr2vr.d	$xr13, $t5, 0
	vpickve2gr.w	$t5, $vr4, 1
	xvinsgr2vr.d	$xr13, $t5, 1
	vpickve2gr.w	$t5, $vr4, 2
	xvinsgr2vr.d	$xr13, $t5, 2
	vpickve2gr.w	$t5, $vr4, 3
	xvinsgr2vr.d	$xr13, $t5, 3
	xvsub.w	$xr5, $xr5, $xr8
	vpickve2gr.w	$t5, $vr5, 0
	xvinsgr2vr.d	$xr4, $t5, 0
	vpickve2gr.w	$t5, $vr5, 1
	xvinsgr2vr.d	$xr4, $t5, 1
	vpickve2gr.w	$t5, $vr5, 2
	xvinsgr2vr.d	$xr4, $t5, 2
	vpickve2gr.w	$t5, $vr5, 3
	xvinsgr2vr.d	$xr4, $t5, 3
	xvpermi.q	$xr8, $xr5, 1
	vpickve2gr.w	$t5, $vr8, 0
	xvinsgr2vr.d	$xr5, $t5, 0
	vpickve2gr.w	$t5, $vr8, 1
	xvinsgr2vr.d	$xr5, $t5, 1
	vpickve2gr.w	$t5, $vr8, 2
	xvld	$xr9, $a0, 96
	xvld	$xr14, $a0, 128
	xvinsgr2vr.d	$xr5, $t5, 2
	vpickve2gr.w	$t5, $vr8, 3
	xvinsgr2vr.d	$xr5, $t5, 3
	xvadd.w	$xr8, $xr14, $xr9
	xvpermi.q	$xr15, $xr8, 1
	vpickve2gr.w	$t5, $vr15, 0
	xvinsgr2vr.d	$xr16, $t5, 0
	vpickve2gr.w	$t5, $vr15, 1
	xvinsgr2vr.d	$xr16, $t5, 1
	vpickve2gr.w	$t5, $vr15, 2
	xvinsgr2vr.d	$xr16, $t5, 2
	vpickve2gr.w	$t5, $vr15, 3
	xvinsgr2vr.d	$xr16, $t5, 3
	vpickve2gr.w	$t5, $vr8, 0
	xvinsgr2vr.d	$xr15, $t5, 0
	vpickve2gr.w	$t5, $vr8, 1
	xvinsgr2vr.d	$xr15, $t5, 1
	vpickve2gr.w	$t5, $vr8, 2
	xvinsgr2vr.d	$xr15, $t5, 2
	vpickve2gr.w	$t5, $vr8, 3
	xvinsgr2vr.d	$xr15, $t5, 3
	xvsub.w	$xr9, $xr9, $xr14
	vpickve2gr.w	$t5, $vr9, 0
	xvinsgr2vr.d	$xr8, $t5, 0
	vpickve2gr.w	$t5, $vr9, 1
	xvinsgr2vr.d	$xr8, $t5, 1
	vpickve2gr.w	$t5, $vr9, 2
	xvinsgr2vr.d	$xr8, $t5, 2
	vpickve2gr.w	$t5, $vr9, 3
	xvinsgr2vr.d	$xr8, $t5, 3
	xvpermi.q	$xr14, $xr9, 1
	vpickve2gr.w	$t5, $vr14, 0
	xvinsgr2vr.d	$xr9, $t5, 0
	vpickve2gr.w	$t5, $vr14, 1
	xvinsgr2vr.d	$xr9, $t5, 1
	vpickve2gr.w	$t5, $vr14, 2
	xvinsgr2vr.d	$xr9, $t5, 2
	vpickve2gr.w	$t5, $vr14, 3
	xvinsgr2vr.d	$xr9, $t5, 3
	xvadd.d	$xr17, $xr15, $xr7
	xvadd.d	$xr18, $xr16, $xr6
	xvsub.d	$xr14, $xr6, $xr16
	xvsub.d	$xr15, $xr7, $xr15
	xvadd.d	$xr6, $xr13, $xr11
	xvadd.d	$xr16, $xr12, $xr10
	xvsub.d	$xr7, $xr10, $xr12
	xvsub.d	$xr10, $xr11, $xr13
	xvadd.d	$xr11, $xr16, $xr18
	xvadd.d	$xr12, $xr6, $xr17
	xvaddi.du	$xr12, $xr12, 2
	xvaddi.du	$xr11, $xr11, 2
	xvsrli.d	$xr11, $xr11, 2
	xvsrli.d	$xr12, $xr12, 2
	xvpickve2gr.d	$t5, $xr12, 0
	xvinsgr2vr.w	$xr13, $t5, 0
	xvpickve2gr.d	$t5, $xr12, 1
	xvinsgr2vr.w	$xr13, $t5, 1
	xvpickve2gr.d	$t5, $xr12, 2
	xvinsgr2vr.w	$xr13, $t5, 2
	xvpickve2gr.d	$t5, $xr12, 3
	xvinsgr2vr.w	$xr13, $t5, 3
	xvpickve2gr.d	$t5, $xr11, 0
	xvinsgr2vr.w	$xr13, $t5, 4
	xvpickve2gr.d	$t5, $xr11, 1
	xvinsgr2vr.w	$xr13, $t5, 5
	xvpickve2gr.d	$t5, $xr11, 2
	xvinsgr2vr.w	$xr13, $t5, 6
	xvpickve2gr.d	$t5, $xr11, 3
	xvinsgr2vr.w	$xr13, $t5, 7
	xvst	$xr13, $a0, 0
	xvsub.d	$xr11, $xr18, $xr16
	xvsub.d	$xr6, $xr17, $xr6
	xvaddi.du	$xr6, $xr6, 2
	xvaddi.du	$xr11, $xr11, 2
	xvsrli.d	$xr11, $xr11, 2
	xvsrli.d	$xr6, $xr6, 2
	xvpickve2gr.d	$t5, $xr6, 0
	xvinsgr2vr.w	$xr12, $t5, 0
	xvpickve2gr.d	$t5, $xr6, 1
	xvinsgr2vr.w	$xr12, $t5, 1
	xvpickve2gr.d	$t5, $xr6, 2
	xvinsgr2vr.w	$xr12, $t5, 2
	xvpickve2gr.d	$t5, $xr6, 3
	xvinsgr2vr.w	$xr12, $t5, 3
	xvpickve2gr.d	$t5, $xr11, 0
	xvinsgr2vr.w	$xr12, $t5, 4
	xvpickve2gr.d	$t5, $xr11, 1
	xvinsgr2vr.w	$xr12, $t5, 5
	xvpickve2gr.d	$t5, $xr11, 2
	xvinsgr2vr.w	$xr12, $t5, 6
	xvpickve2gr.d	$t5, $xr11, 3
	xvinsgr2vr.w	$xr12, $t5, 7
	xvst	$xr12, $a0, 128
	xvadd.d	$xr11, $xr15, $xr10
	xvadd.d	$xr12, $xr14, $xr7
	xvreplgr2vr.d	$xr13, $t2
	xvreplgr2vr.d	$xr6, $t4
	xvreplgr2vr.d	$xr16, $t3
	xvori.b	$xr17, $xr6, 0
	xvori.b	$xr18, $xr6, 0
	xvmadd.d	$xr18, $xr11, $xr13
	xvmadd.d	$xr17, $xr12, $xr13
	xvori.b	$xr11, $xr18, 0
	xvmadd.d	$xr11, $xr15, $xr16
	xvori.b	$xr12, $xr17, 0
	xvmadd.d	$xr12, $xr14, $xr16
	xvsrli.d	$xr12, $xr12, 15
	xvsrli.d	$xr11, $xr11, 15
	xvpickve2gr.d	$t2, $xr11, 0
	xvinsgr2vr.w	$xr13, $t2, 0
	xvpickve2gr.d	$t2, $xr11, 1
	xvinsgr2vr.w	$xr13, $t2, 1
	xvpickve2gr.d	$t2, $xr11, 2
	xvinsgr2vr.w	$xr13, $t2, 2
	xvpickve2gr.d	$t2, $xr11, 3
	xvinsgr2vr.w	$xr13, $t2, 3
	xvpickve2gr.d	$t2, $xr12, 0
	xvinsgr2vr.w	$xr13, $t2, 4
	xvpickve2gr.d	$t2, $xr12, 1
	xvinsgr2vr.w	$xr13, $t2, 5
	xvpickve2gr.d	$t2, $xr12, 2
	xvinsgr2vr.w	$xr13, $t2, 6
	xvpickve2gr.d	$t2, $xr12, 3
	xvinsgr2vr.w	$xr13, $t2, 7
	xvst	$xr13, $a0, 64
	lu32i.d	$t1, 32767
	xvreplgr2vr.d	$xr11, $t1
	xvmadd.d	$xr18, $xr10, $xr11
	xvmadd.d	$xr17, $xr7, $xr11
	xvsrli.d	$xr7, $xr17, 15
	xvsrli.d	$xr10, $xr18, 15
	xvpickve2gr.d	$t1, $xr10, 0
	xvinsgr2vr.w	$xr11, $t1, 0
	xvpickve2gr.d	$t1, $xr10, 1
	xvinsgr2vr.w	$xr11, $t1, 1
	xvpickve2gr.d	$t1, $xr10, 2
	xvinsgr2vr.w	$xr11, $t1, 2
	xvpickve2gr.d	$t1, $xr10, 3
	xvinsgr2vr.w	$xr11, $t1, 3
	xvpickve2gr.d	$t1, $xr7, 0
	xvinsgr2vr.w	$xr11, $t1, 4
	xvpickve2gr.d	$t1, $xr7, 1
	xvinsgr2vr.w	$xr11, $t1, 5
	xvpickve2gr.d	$t1, $xr7, 2
	xvinsgr2vr.w	$xr11, $t1, 6
	xvpickve2gr.d	$t1, $xr7, 3
	xvinsgr2vr.w	$xr11, $t1, 7
	xvst	$xr11, $a0, 192
	xvadd.d	$xr19, $xr9, $xr1
	xvadd.d	$xr20, $xr8, $xr0
	xvadd.d	$xr17, $xr5, $xr3
	xvadd.d	$xr18, $xr4, $xr2
	xvadd.d	$xr12, $xr8, $xr2
	xvadd.d	$xr13, $xr9, $xr3
	xvadd.d	$xr21, $xr4, $xr0
	xvadd.d	$xr22, $xr5, $xr1
	xvadd.d	$xr7, $xr13, $xr22
	xvadd.d	$xr10, $xr12, $xr21
	xvreplgr2vr.d	$xr11, $a3
	xvmul.d	$xr10, $xr10, $xr11
	xvmul.d	$xr7, $xr7, $xr11
	ori	$a3, $zero, 2446
	xvreplgr2vr.d	$xr23, $a3
	xvreplgr2vr.d	$xr24, $a1
	xvreplgr2vr.d	$xr14, $a2
	xvreplgr2vr.d	$xr11, $a4
	xvreplgr2vr.d	$xr25, $a5
	xvreplgr2vr.d	$xr26, $a6
	xvreplgr2vr.d	$xr27, $a7
	xvreplgr2vr.d	$xr28, $t0
	xvori.b	$xr15, $xr7, 0
	xvmadd.d	$xr15, $xr13, $xr27
	xvori.b	$xr16, $xr10, 0
	xvmadd.d	$xr16, $xr12, $xr27
	xvmadd.d	$xr7, $xr22, $xr28
	xvmadd.d	$xr10, $xr21, $xr28
	xvori.b	$xr12, $xr6, 0
	xvori.b	$xr13, $xr6, 0
	xvmadd.d	$xr13, $xr19, $xr25
	xvmadd.d	$xr12, $xr20, $xr25
	xvori.b	$xr19, $xr13, 0
	xvmadd.d	$xr19, $xr9, $xr23
	xvori.b	$xr9, $xr12, 0
	xvmadd.d	$xr9, $xr8, $xr23
	xvadd.d	$xr8, $xr9, $xr16
	xvadd.d	$xr9, $xr19, $xr15
	xvsrli.d	$xr9, $xr9, 15
	xvsrli.d	$xr8, $xr8, 15
	xvpickve2gr.d	$a1, $xr8, 0
	xvinsgr2vr.w	$xr19, $a1, 0
	xvpickve2gr.d	$a1, $xr8, 1
	xvinsgr2vr.w	$xr19, $a1, 1
	xvpickve2gr.d	$a1, $xr8, 2
	xvinsgr2vr.w	$xr19, $a1, 2
	xvpickve2gr.d	$a1, $xr8, 3
	xvinsgr2vr.w	$xr19, $a1, 3
	xvpickve2gr.d	$a1, $xr9, 0
	xvinsgr2vr.w	$xr19, $a1, 4
	xvpickve2gr.d	$a1, $xr9, 1
	xvinsgr2vr.w	$xr19, $a1, 5
	xvpickve2gr.d	$a1, $xr9, 2
	xvinsgr2vr.w	$xr19, $a1, 6
	xvpickve2gr.d	$a1, $xr9, 3
	xvinsgr2vr.w	$xr19, $a1, 7
	xvst	$xr19, $a0, 224
	xvori.b	$xr8, $xr6, 0
	xvmadd.d	$xr6, $xr17, $xr26
	xvmadd.d	$xr8, $xr18, $xr26
	xvori.b	$xr9, $xr6, 0
	xvmadd.d	$xr9, $xr5, $xr24
	xvori.b	$xr5, $xr8, 0
	xvmadd.d	$xr5, $xr4, $xr24
	xvadd.d	$xr4, $xr5, $xr10
	xvadd.d	$xr5, $xr9, $xr7
	xvsrli.d	$xr5, $xr5, 15
	xvsrli.d	$xr4, $xr4, 15
	xvpickve2gr.d	$a1, $xr4, 0
	xvinsgr2vr.w	$xr9, $a1, 0
	xvpickve2gr.d	$a1, $xr4, 1
	xvinsgr2vr.w	$xr9, $a1, 1
	xvpickve2gr.d	$a1, $xr4, 2
	xvinsgr2vr.w	$xr9, $a1, 2
	xvpickve2gr.d	$a1, $xr4, 3
	xvinsgr2vr.w	$xr9, $a1, 3
	xvpickve2gr.d	$a1, $xr5, 0
	xvinsgr2vr.w	$xr9, $a1, 4
	xvpickve2gr.d	$a1, $xr5, 1
	xvinsgr2vr.w	$xr9, $a1, 5
	xvpickve2gr.d	$a1, $xr5, 2
	xvinsgr2vr.w	$xr9, $a1, 6
	xvpickve2gr.d	$a1, $xr5, 3
	xvinsgr2vr.w	$xr9, $a1, 7
	xvst	$xr9, $a0, 160
	xvmadd.d	$xr6, $xr3, $xr14
	xvmadd.d	$xr8, $xr2, $xr14
	xvadd.d	$xr2, $xr8, $xr16
	xvadd.d	$xr3, $xr6, $xr15
	xvsrli.d	$xr3, $xr3, 15
	xvsrli.d	$xr2, $xr2, 15
	xvpickve2gr.d	$a1, $xr2, 0
	xvinsgr2vr.w	$xr4, $a1, 0
	xvpickve2gr.d	$a1, $xr2, 1
	xvinsgr2vr.w	$xr4, $a1, 1
	xvpickve2gr.d	$a1, $xr2, 2
	xvinsgr2vr.w	$xr4, $a1, 2
	xvpickve2gr.d	$a1, $xr2, 3
	xvinsgr2vr.w	$xr4, $a1, 3
	xvpickve2gr.d	$a1, $xr3, 0
	xvinsgr2vr.w	$xr4, $a1, 4
	xvpickve2gr.d	$a1, $xr3, 1
	xvinsgr2vr.w	$xr4, $a1, 5
	xvpickve2gr.d	$a1, $xr3, 2
	xvinsgr2vr.w	$xr4, $a1, 6
	xvpickve2gr.d	$a1, $xr3, 3
	xvinsgr2vr.w	$xr4, $a1, 7
	xvst	$xr4, $a0, 96
	xvmadd.d	$xr13, $xr1, $xr11
	xvmadd.d	$xr12, $xr0, $xr11
	xvadd.d	$xr0, $xr12, $xr10
	xvadd.d	$xr1, $xr13, $xr7
	xvsrli.d	$xr1, $xr1, 15
	xvsrli.d	$xr0, $xr0, 15
	xvpickve2gr.d	$a1, $xr0, 0
	xvinsgr2vr.w	$xr2, $a1, 0
	xvpickve2gr.d	$a1, $xr0, 1
	xvinsgr2vr.w	$xr2, $a1, 1
	xvpickve2gr.d	$a1, $xr0, 2
	xvinsgr2vr.w	$xr2, $a1, 2
	xvpickve2gr.d	$a1, $xr0, 3
	xvinsgr2vr.w	$xr2, $a1, 3
	xvpickve2gr.d	$a1, $xr1, 0
	xvinsgr2vr.w	$xr2, $a1, 4
	xvpickve2gr.d	$a1, $xr1, 1
	xvinsgr2vr.w	$xr2, $a1, 5
	xvpickve2gr.d	$a1, $xr1, 2
	xvinsgr2vr.w	$xr2, $a1, 6
	xvpickve2gr.d	$a1, $xr1, 3
	xvinsgr2vr.w	$xr2, $a1, 7
	xvst	$xr2, $a0, 32
	fld.d	$fs4, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 40                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end0:
	.size	jpeg_fdct_islow, .Lfunc_end0-jpeg_fdct_islow
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
