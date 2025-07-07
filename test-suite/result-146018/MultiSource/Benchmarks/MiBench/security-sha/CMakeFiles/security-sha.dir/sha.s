	.file	"sha.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function sha_init
.LCPI0_0:
	.word	1732584193                      # 0x67452301
	.word	4023233417                      # 0xefcdab89
	.word	2562383102                      # 0x98badcfe
	.word	271733878                       # 0x10325476
	.text
	.globl	sha_init
	.p2align	5
	.type	sha_init,@function
sha_init:                               # @sha_init
# %bb.0:
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	vst	$vr0, $a0, 0
	lu12i.w	$a1, -246482
	ori	$a1, $a1, 496
	lu32i.d	$a1, 0
	st.d	$a1, $a0, 16
	st.w	$zero, $a0, 24
	ret
.Lfunc_end0:
	.size	sha_init, .Lfunc_end0-sha_init
                                        # -- End function
	.globl	sha_update                      # -- Begin function sha_update
	.p2align	5
	.type	sha_update,@function
sha_update:                             # @sha_update
# %bb.0:                                # %._crit_edge22
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$a0, $a0, 20
	move	$fp, $a1
	slli.w	$a1, $a2, 3
	ld.w	$a3, $s0, 24
	nor	$a4, $a0, $zero
	addi.w	$a4, $a4, 0
	sltu	$a1, $a4, $a1
	add.d	$a1, $a3, $a1
	alsl.d	$a0, $a2, $a0, 3
	st.w	$a0, $s0, 20
	bstrpick.d	$a0, $a2, 31, 29
	add.d	$a0, $a1, $a0
	st.w	$a0, $s0, 24
	ori	$a0, $zero, 64
	addi.d	$s1, $s0, 28
	blt	$a2, $a0, .LBB1_3
# %bb.1:                                # %.lr.ph
	ori	$s2, $zero, 127
	.p2align	4, , 16
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $fp, 32
	xvst	$xr0, $s1, 32
	xvld	$xr0, $fp, 0
	move	$s3, $a2
	xvst	$xr0, $s1, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(byte_reverse)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(sha_transform)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 64
	addi.w	$a2, $s3, -64
	bltu	$s2, $s3, .LBB1_2
.LBB1_3:                                # %._crit_edge
	move	$a0, $s1
	move	$a1, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(memcpy)
	jr	$t8
.Lfunc_end1:
	.size	sha_update, .Lfunc_end1-sha_update
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function byte_reverse
.LCPI2_0:
	.byte	0                               # 0x0
	.byte	17                              # 0x11
	.byte	16                              # 0x10
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_1:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	19                              # 0x13
	.byte	18                              # 0x12
	.byte	17                              # 0x11
	.byte	16                              # 0x10
	.byte	23                              # 0x17
	.byte	22                              # 0x16
	.byte	21                              # 0x15
	.byte	20                              # 0x14
	.byte	27                              # 0x1b
	.byte	26                              # 0x1a
	.byte	25                              # 0x19
	.byte	24                              # 0x18
	.byte	31                              # 0x1f
	.byte	30                              # 0x1e
	.byte	29                              # 0x1d
	.byte	28                              # 0x1c
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.text
	.p2align	5
	.type	byte_reverse,@function
byte_reverse:                           # @byte_reverse
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 96
	bstrins.d	$sp, $zero, 4, 0
	ld.b	$a5, $a0, 2
	ld.b	$a6, $a0, 3
	ld.b	$a1, $a0, 32
	ld.h	$a7, $a0, 0
	ld.b	$a2, $a0, 33
	ld.b	$a3, $a0, 34
	ld.b	$a4, $a0, 35
	vinsgr2vr.h	$vr0, $a7, 0
	ld.w	$a7, $a0, 28
	st.b	$a6, $a0, 0
	vld	$vr1, $a0, 4
	ld.d	$a6, $a0, 20
	vinsgr2vr.w	$vr2, $a7, 0
	vinsgr2vr.b	$vr3, $a5, 0
	pcalau12i	$a5, %pc_hi20(.LCPI2_0)
	xvld	$xr4, $a5, %pc_lo12(.LCPI2_0)
	xvpermi.q	$xr0, $xr0, 2
	xvpermi.d	$xr3, $xr3, 68
	xvpermi.d	$xr0, $xr0, 68
	xvshuf.b	$xr0, $xr0, $xr3, $xr4
	pcalau12i	$a5, %pc_hi20(.LCPI2_1)
	xvld	$xr3, $a5, %pc_lo12(.LCPI2_1)
	xvpermi.q	$xr1, $xr0, 2
	xvpermi.d	$xr0, $xr0, 68
	xvpermi.d	$xr1, $xr1, 68
	xvshuf.b	$xr0, $xr1, $xr0, $xr3
	xvinsgr2vr.d	$xr1, $a6, 0
	xvstelm.b	$xr1, $sp, 58, 4
	xvstelm.b	$xr1, $sp, 57, 5
	xvstelm.b	$xr1, $sp, 56, 6
	xvstelm.b	$xr1, $sp, 55, 7
	xvstelm.b	$xr1, $sp, 54, 0
	xvstelm.b	$xr1, $sp, 53, 1
	xvstelm.b	$xr1, $sp, 52, 2
	xvstelm.b	$xr1, $sp, 51, 3
	xvstelm.b	$xr0, $sp, 50, 18
	xvstelm.b	$xr0, $sp, 49, 17
	xvstelm.b	$xr0, $sp, 48, 16
	xvstelm.b	$xr0, $sp, 47, 15
	xvstelm.b	$xr0, $sp, 46, 14
	xvstelm.b	$xr0, $sp, 45, 13
	xvstelm.b	$xr0, $sp, 44, 12
	xvstelm.b	$xr0, $sp, 43, 11
	xvstelm.b	$xr0, $sp, 42, 10
	xvstelm.b	$xr0, $sp, 41, 9
	xvstelm.b	$xr0, $sp, 40, 8
	xvstelm.b	$xr0, $sp, 39, 7
	xvstelm.b	$xr0, $sp, 38, 6
	xvstelm.b	$xr0, $sp, 37, 5
	xvstelm.b	$xr0, $sp, 36, 4
	xvstelm.b	$xr0, $sp, 35, 3
	xvstelm.b	$xr0, $sp, 34, 2
	xvstelm.b	$xr0, $sp, 33, 1
	xvstelm.b	$xr0, $sp, 32, 0
	xvld	$xr0, $sp, 32
	vstelm.b	$vr2, $sp, 30, 0
	vstelm.b	$vr2, $sp, 29, 1
	vstelm.b	$vr2, $sp, 28, 2
	vstelm.b	$vr2, $sp, 27, 3
	xvstelm.b	$xr0, $sp, 26, 26
	xvstelm.b	$xr0, $sp, 25, 25
	xvstelm.b	$xr0, $sp, 24, 24
	xvstelm.b	$xr0, $sp, 23, 23
	xvstelm.b	$xr0, $sp, 22, 22
	xvstelm.b	$xr0, $sp, 21, 21
	xvstelm.b	$xr0, $sp, 20, 20
	xvstelm.b	$xr0, $sp, 19, 19
	xvstelm.b	$xr0, $sp, 18, 18
	xvstelm.b	$xr0, $sp, 17, 17
	xvstelm.b	$xr0, $sp, 16, 16
	xvstelm.b	$xr0, $sp, 15, 15
	xvstelm.b	$xr0, $sp, 14, 14
	xvstelm.b	$xr0, $sp, 13, 13
	xvstelm.b	$xr0, $sp, 12, 12
	xvstelm.b	$xr0, $sp, 11, 11
	xvstelm.b	$xr0, $sp, 10, 10
	xvstelm.b	$xr0, $sp, 9, 9
	xvstelm.b	$xr0, $sp, 8, 8
	xvstelm.b	$xr0, $sp, 7, 7
	xvstelm.b	$xr0, $sp, 6, 6
	xvstelm.b	$xr0, $sp, 5, 5
	xvstelm.b	$xr0, $sp, 4, 4
	xvstelm.b	$xr0, $sp, 3, 3
	xvstelm.b	$xr0, $sp, 2, 2
	xvstelm.b	$xr0, $sp, 1, 1
	xvstelm.b	$xr0, $sp, 0, 0
	xvld	$xr0, $sp, 0
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.b	$vr1, $a4, 15
	xvpermi.q	$xr0, $xr1, 2
	xvst	$xr0, $a0, 1
	st.b	$a3, $a0, 33
	st.b	$a2, $a0, 34
	st.b	$a1, $a0, 35
	ld.b	$a1, $a0, 39
	ld.b	$a2, $a0, 38
	ld.b	$a3, $a0, 37
	ld.b	$a4, $a0, 36
	st.b	$a1, $a0, 36
	st.b	$a2, $a0, 37
	st.b	$a3, $a0, 38
	st.b	$a4, $a0, 39
	ld.b	$a1, $a0, 43
	ld.b	$a2, $a0, 42
	ld.b	$a3, $a0, 41
	ld.b	$a4, $a0, 40
	st.b	$a1, $a0, 40
	st.b	$a2, $a0, 41
	st.b	$a3, $a0, 42
	st.b	$a4, $a0, 43
	ld.b	$a1, $a0, 47
	ld.b	$a2, $a0, 46
	ld.b	$a3, $a0, 45
	ld.b	$a4, $a0, 44
	st.b	$a1, $a0, 44
	st.b	$a2, $a0, 45
	st.b	$a3, $a0, 46
	st.b	$a4, $a0, 47
	ld.b	$a1, $a0, 51
	ld.b	$a2, $a0, 50
	ld.b	$a3, $a0, 49
	ld.b	$a4, $a0, 48
	st.b	$a1, $a0, 48
	st.b	$a2, $a0, 49
	st.b	$a3, $a0, 50
	st.b	$a4, $a0, 51
	ld.b	$a1, $a0, 55
	ld.b	$a2, $a0, 54
	ld.b	$a3, $a0, 53
	ld.b	$a4, $a0, 52
	st.b	$a1, $a0, 52
	st.b	$a2, $a0, 53
	st.b	$a3, $a0, 54
	st.b	$a4, $a0, 55
	ld.b	$a1, $a0, 59
	ld.b	$a2, $a0, 58
	ld.b	$a3, $a0, 57
	ld.b	$a4, $a0, 56
	st.b	$a1, $a0, 56
	st.b	$a2, $a0, 57
	st.b	$a3, $a0, 58
	st.b	$a4, $a0, 59
	ld.b	$a1, $a0, 63
	ld.b	$a2, $a0, 62
	ld.b	$a3, $a0, 61
	ld.b	$a4, $a0, 60
	st.b	$a1, $a0, 60
	st.b	$a2, $a0, 61
	st.b	$a3, $a0, 62
	st.b	$a4, $a0, 63
	addi.d	$sp, $fp, -96
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end2:
	.size	byte_reverse, .Lfunc_end2-byte_reverse
                                        # -- End function
	.p2align	5                               # -- Begin function sha_transform
	.type	sha_transform,@function
sha_transform:                          # @sha_transform
# %bb.0:                                # %.preheader112.preheader
	addi.d	$sp, $sp, -320
	xvld	$xr0, $a0, 60
	xvld	$xr1, $a0, 28
	move	$a1, $zero
	xvst	$xr0, $sp, 32
	xvst	$xr1, $sp, 0
	addi.d	$a2, $sp, 0
	ori	$a3, $zero, 256
	.p2align	4, , 16
.LBB3_1:                                # %.preheader112
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a2, $a1
	ld.w	$a5, $a4, 52
	ld.w	$a6, $a4, 32
	ld.w	$a7, $a4, 8
	ldx.w	$t0, $a1, $a2
	xor	$a5, $a6, $a5
	xor	$a5, $a5, $a7
	xor	$a5, $a5, $t0
	addi.d	$a1, $a1, 4
	st.w	$a5, $a4, 64
	bne	$a1, $a3, .LBB3_1
# %bb.2:
	vld	$vr0, $a0, 0
	move	$a4, $zero
	ld.w	$a1, $a0, 16
	vpickve2gr.w	$a2, $vr0, 0
	vpickve2gr.w	$t2, $vr0, 1
	vpickve2gr.w	$a3, $vr0, 2
	vpickve2gr.w	$t5, $vr0, 3
	addi.d	$a7, $sp, 0
	lu12i.w	$a5, 370727
	ori	$t1, $a5, 2457
	ori	$t3, $zero, 80
	move	$t4, $a1
	.p2align	4, , 16
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	move	$a5, $a2
	move	$t0, $a3
	move	$a6, $t5
	and	$a2, $a3, $t2
	andn	$a3, $t5, $t2
	or	$a2, $a3, $a2
	ldx.w	$a3, $a4, $a7
	rotri.w	$t5, $a5, 27
	add.d	$t4, $t5, $t4
	add.d	$a2, $t4, $a2
	add.d	$a2, $a2, $a3
	add.d	$a2, $a2, $t1
	addi.d	$a4, $a4, 4
	rotri.w	$a3, $t2, 2
	move	$t4, $a6
	move	$t5, $t0
	move	$t2, $a5
	bne	$a4, $t3, .LBB3_3
# %bb.4:                                # %.preheader111.preheader
	ori	$t2, $zero, 80
	addi.d	$t3, $sp, 0
	lu12i.w	$a4, 454046
	ori	$t4, $a4, 2977
	ori	$t5, $zero, 160
	.p2align	4, , 16
.LBB3_5:                                # %.preheader111
                                        # =>This Inner Loop Header: Depth=1
	move	$a4, $a2
	move	$t1, $a3
	move	$a7, $t0
	rotri.w	$a2, $a2, 27
	xor	$a3, $a3, $a5
	ldx.w	$t0, $t2, $t3
	xor	$a3, $a3, $a7
	add.d	$a2, $a2, $a3
	add.d	$a2, $a2, $a6
	add.d	$a2, $a2, $t0
	add.d	$a2, $a2, $t4
	addi.d	$t2, $t2, 4
	rotri.w	$a3, $a5, 2
	move	$a6, $a7
	move	$t0, $t1
	move	$a5, $a4
	bne	$t2, $t5, .LBB3_5
# %bb.6:                                # %.preheader110.preheader
	ori	$t2, $zero, 160
	addi.d	$t3, $sp, 0
	lu12i.w	$a5, -462405
	ori	$t4, $a5, 3292
	ori	$t5, $zero, 240
	.p2align	4, , 16
.LBB3_7:                                # %.preheader110
                                        # =>This Inner Loop Header: Depth=1
	move	$a5, $a2
	move	$t0, $a3
	move	$a6, $t1
	or	$a2, $t1, $a3
	and	$a2, $a2, $a4
	and	$a3, $t1, $a3
	or	$a2, $a2, $a3
	ldx.w	$a3, $t2, $t3
	rotri.w	$t1, $a5, 27
	add.d	$a7, $t1, $a7
	add.d	$a2, $a7, $a2
	add.d	$a2, $a2, $a3
	add.d	$a2, $a2, $t4
	addi.d	$t2, $t2, 4
	rotri.w	$a3, $a4, 2
	move	$a7, $a6
	move	$t1, $t0
	move	$a4, $a5
	bne	$t2, $t5, .LBB3_7
# %bb.8:                                # %.preheader.preheader
	ori	$a4, $zero, 240
	addi.d	$a7, $sp, 0
	lu12i.w	$t1, -219604
	ori	$t1, $t1, 470
	ori	$t2, $zero, 320
	.p2align	4, , 16
.LBB3_9:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	move	$t5, $a2
	move	$t4, $a3
	move	$t3, $t0
	rotri.w	$a2, $a2, 27
	xor	$a3, $a3, $a5
	ldx.w	$t0, $a4, $a7
	xor	$a3, $a3, $t3
	add.d	$a2, $a2, $a3
	add.d	$a2, $a2, $a6
	add.d	$a2, $a2, $t0
	add.d	$a2, $a2, $t1
	addi.d	$a4, $a4, 4
	rotri.w	$a3, $a5, 2
	move	$a6, $t3
	move	$t0, $t4
	move	$a5, $t5
	bne	$a4, $t2, .LBB3_9
# %bb.10:
	vinsgr2vr.w	$vr1, $a2, 0
	vinsgr2vr.w	$vr1, $t5, 1
	vinsgr2vr.w	$vr1, $a3, 2
	vinsgr2vr.w	$vr1, $t4, 3
	vadd.w	$vr0, $vr1, $vr0
	vst	$vr0, $a0, 0
	add.d	$a1, $t3, $a1
	st.w	$a1, $a0, 16
	addi.d	$sp, $sp, 320
	ret
.Lfunc_end3:
	.size	sha_transform, .Lfunc_end3-sha_transform
                                        # -- End function
	.globl	sha_final                       # -- Begin function sha_final
	.p2align	5
	.type	sha_final,@function
sha_final:                              # @sha_final
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$s1, $a0, 20
	ld.w	$s2, $a0, 24
	bstrpick.d	$a1, $s1, 8, 3
	addi.d	$s0, $a0, 28
	add.d	$a0, $s0, $a1
	ori	$a2, $zero, 128
	stx.b	$a2, $s0, $a1
	ori	$a2, $zero, 56
	addi.d	$a0, $a0, 1
	bltu	$a1, $a2, .LBB4_2
# %bb.1:
	xori	$a2, $a1, 63
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(byte_reverse)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sha_transform)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 48
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 32
	xvrepli.b	$xr0, 0
	xvst	$xr0, $s0, 0
	b	.LBB4_3
.LBB4_2:
	ori	$a2, $zero, 55
	sub.w	$a2, $a2, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB4_3:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(byte_reverse)
	jirl	$ra, $ra, 0
	st.w	$s2, $fp, 84
	st.w	$s1, $fp, 88
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(sha_transform)
	jr	$t8
.Lfunc_end4:
	.size	sha_final, .Lfunc_end4-sha_final
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function sha_stream
.LCPI5_0:
	.word	1732584193                      # 0x67452301
	.word	4023233417                      # 0xefcdab89
	.word	2562383102                      # 0x98badcfe
	.word	271733878                       # 0x10325476
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI5_1:
	.byte	0                               # 0x0
	.byte	17                              # 0x11
	.byte	16                              # 0x10
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI5_2:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	19                              # 0x13
	.byte	18                              # 0x12
	.byte	17                              # 0x11
	.byte	16                              # 0x10
	.byte	23                              # 0x17
	.byte	22                              # 0x16
	.byte	21                              # 0x15
	.byte	20                              # 0x14
	.byte	27                              # 0x1b
	.byte	26                              # 0x1a
	.byte	25                              # 0x19
	.byte	24                              # 0x18
	.byte	31                              # 0x1f
	.byte	30                              # 0x1e
	.byte	29                              # 0x1d
	.byte	28                              # 0x1c
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.text
	.globl	sha_stream
	.p2align	5
	.type	sha_stream,@function
sha_stream:                             # @sha_stream
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
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2672
	sub.d	$sp, $sp, $a2
	bstrins.d	$sp, $zero, 4, 0
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	move	$a3, $a1
	move	$s0, $a0
	vst	$vr0, $a0, 0
	lu12i.w	$a0, -246482
	ori	$a0, $a0, 496
	lu32i.d	$a0, 0
	st.d	$a0, $s0, 16
	st.w	$zero, $s0, 24
	lu12i.w	$a2, 2
	addi.d	$a0, $sp, 200
	ori	$a1, $zero, 1
	ori	$s1, $zero, 1
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	addi.d	$a2, $s0, 28
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	blt	$a1, $s1, .LBB5_18
# %bb.1:                                # %.lr.ph
	pcalau12i	$a1, %pc_hi20(.LCPI5_1)
	xvld	$xr5, $a1, %pc_lo12(.LCPI5_1)
	pcalau12i	$a1, %pc_hi20(.LCPI5_2)
	xvld	$xr6, $a1, %pc_lo12(.LCPI5_2)
	lu12i.w	$a1, 2
	ori	$a1, $a1, 200
	add.d	$s5, $sp, $a1
	ori	$t6, $zero, 256
	lu12i.w	$a1, 370727
	ori	$s7, $a1, 2457
	ori	$t7, $zero, 80
	lu12i.w	$a1, 454046
	ori	$s4, $a1, 2977
	ori	$s3, $zero, 160
	lu12i.w	$a1, -462405
	ori	$s2, $a1, 3292
	ori	$s1, $zero, 240
	lu12i.w	$a1, -219604
	ori	$s6, $a1, 470
	ori	$s8, $zero, 320
	ori	$t8, $zero, 127
	xvst	$xr5, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr6, $sp, 32                   # 32-byte Folded Spill
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_2:                                #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a1, $sp, 200
	move	$a3, $a0
	ld.d	$t5, $sp, 120                   # 8-byte Folded Reload
.LBB5_3:                                # %sha_update.exit
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.w	$a2, $a3, 0
	move	$a0, $t5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 200
	ori	$a1, $zero, 1
	lu12i.w	$a2, 2
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	xvld	$xr5, $sp, 64                   # 32-byte Folded Reload
	xvld	$xr6, $sp, 32                   # 32-byte Folded Reload
	ori	$t6, $zero, 256
	ori	$t7, $zero, 80
	ori	$t8, $zero, 127
	blez	$a0, .LBB5_18
.LBB5_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_6 Depth 2
                                        #       Child Loop BB5_7 Depth 3
                                        #       Child Loop BB5_9 Depth 3
                                        #       Child Loop BB5_11 Depth 3
                                        #       Child Loop BB5_13 Depth 3
                                        #       Child Loop BB5_15 Depth 3
	ld.w	$a1, $s0, 20
	addi.w	$a2, $a0, 0
	slli.w	$a3, $a0, 3
	nor	$a4, $a1, $zero
	addi.w	$a4, $a4, 0
	sltu	$a3, $a4, $a3
	ld.w	$a4, $s0, 24
	alsl.d	$a1, $a0, $a1, 3
	st.w	$a1, $s0, 20
	bstrpick.d	$a1, $a0, 31, 29
	add.d	$a1, $a4, $a1
	add.d	$a1, $a1, $a3
	st.w	$a1, $s0, 24
	ori	$a1, $zero, 64
	bltu	$a2, $a1, .LBB5_2
# %bb.5:                                # %.lr.ph.i
                                        #   in Loop: Header=BB5_4 Depth=1
	vld	$vr0, $s0, 0
	ld.w	$a2, $s0, 16
	addi.d	$a1, $sp, 200
	ld.d	$t5, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_6:                                #   Parent Loop BB5_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_7 Depth 3
                                        #       Child Loop BB5_9 Depth 3
                                        #       Child Loop BB5_11 Depth 3
                                        #       Child Loop BB5_13 Depth 3
                                        #       Child Loop BB5_15 Depth 3
	xvld	$xr1, $a1, 32
	xvld	$xr2, $a1, 0
	xvst	$xr1, $t5, 32
	xvst	$xr2, $t5, 0
	ld.b	$a7, $s0, 30
	ld.b	$t0, $s0, 31
	ld.b	$a3, $s0, 60
	ld.h	$t1, $s0, 28
	ld.b	$a4, $s0, 61
	ld.b	$a5, $s0, 62
	ld.b	$a6, $s0, 63
	vinsgr2vr.h	$vr1, $t1, 0
	ld.w	$t1, $s0, 56
	st.b	$t0, $s0, 28
	vld	$vr2, $s0, 32
	ld.d	$t0, $s0, 48
	vinsgr2vr.w	$vr3, $t1, 0
	vinsgr2vr.b	$vr4, $a7, 0
	xvpermi.q	$xr1, $xr0, 2
	xvpermi.d	$xr4, $xr4, 68
	xvpermi.d	$xr1, $xr1, 68
	xvshuf.b	$xr1, $xr1, $xr4, $xr5
	xvpermi.q	$xr2, $xr0, 2
	xvpermi.d	$xr1, $xr1, 68
	xvpermi.d	$xr2, $xr2, 68
	xvshuf.b	$xr1, $xr2, $xr1, $xr6
	xvinsgr2vr.d	$xr2, $t0, 0
	addi.d	$a7, $sp, 186
	xvstelm.b	$xr2, $a7, 0, 4
	addi.d	$a7, $sp, 185
	xvstelm.b	$xr2, $a7, 0, 5
	addi.d	$a7, $sp, 184
	xvstelm.b	$xr2, $a7, 0, 6
	addi.d	$a7, $sp, 183
	xvstelm.b	$xr2, $a7, 0, 7
	addi.d	$a7, $sp, 182
	xvstelm.b	$xr2, $a7, 0, 0
	addi.d	$a7, $sp, 181
	xvstelm.b	$xr2, $a7, 0, 1
	addi.d	$a7, $sp, 180
	xvstelm.b	$xr2, $a7, 0, 2
	addi.d	$a7, $sp, 179
	xvstelm.b	$xr2, $a7, 0, 3
	addi.d	$a7, $sp, 178
	xvstelm.b	$xr1, $a7, 0, 18
	addi.d	$a7, $sp, 177
	xvstelm.b	$xr1, $a7, 0, 17
	addi.d	$a7, $sp, 176
	xvstelm.b	$xr1, $a7, 0, 16
	addi.d	$a7, $sp, 175
	xvstelm.b	$xr1, $a7, 0, 15
	addi.d	$a7, $sp, 174
	xvstelm.b	$xr1, $a7, 0, 14
	addi.d	$a7, $sp, 173
	xvstelm.b	$xr1, $a7, 0, 13
	addi.d	$a7, $sp, 172
	xvstelm.b	$xr1, $a7, 0, 12
	addi.d	$a7, $sp, 171
	xvstelm.b	$xr1, $a7, 0, 11
	addi.d	$a7, $sp, 170
	xvstelm.b	$xr1, $a7, 0, 10
	addi.d	$a7, $sp, 169
	xvstelm.b	$xr1, $a7, 0, 9
	addi.d	$a7, $sp, 168
	xvstelm.b	$xr1, $a7, 0, 8
	addi.d	$a7, $sp, 167
	xvstelm.b	$xr1, $a7, 0, 7
	addi.d	$a7, $sp, 166
	xvstelm.b	$xr1, $a7, 0, 6
	addi.d	$a7, $sp, 165
	xvstelm.b	$xr1, $a7, 0, 5
	addi.d	$a7, $sp, 164
	xvstelm.b	$xr1, $a7, 0, 4
	addi.d	$a7, $sp, 163
	xvstelm.b	$xr1, $a7, 0, 3
	addi.d	$a7, $sp, 162
	xvstelm.b	$xr1, $a7, 0, 2
	addi.d	$a7, $sp, 161
	xvstelm.b	$xr1, $a7, 0, 1
	addi.d	$a7, $sp, 160
	xvstelm.b	$xr1, $a7, 0, 0
	xvld	$xr1, $sp, 160
	addi.d	$a7, $sp, 158
	vstelm.b	$vr3, $a7, 0, 0
	addi.d	$a7, $sp, 157
	vstelm.b	$vr3, $a7, 0, 1
	addi.d	$a7, $sp, 156
	vstelm.b	$vr3, $a7, 0, 2
	addi.d	$a7, $sp, 155
	vstelm.b	$vr3, $a7, 0, 3
	addi.d	$a7, $sp, 154
	xvstelm.b	$xr1, $a7, 0, 26
	addi.d	$a7, $sp, 153
	xvstelm.b	$xr1, $a7, 0, 25
	addi.d	$a7, $sp, 152
	xvstelm.b	$xr1, $a7, 0, 24
	addi.d	$a7, $sp, 151
	xvstelm.b	$xr1, $a7, 0, 23
	addi.d	$a7, $sp, 150
	xvstelm.b	$xr1, $a7, 0, 22
	addi.d	$a7, $sp, 149
	xvstelm.b	$xr1, $a7, 0, 21
	addi.d	$a7, $sp, 148
	xvstelm.b	$xr1, $a7, 0, 20
	addi.d	$a7, $sp, 147
	xvstelm.b	$xr1, $a7, 0, 19
	addi.d	$a7, $sp, 146
	xvstelm.b	$xr1, $a7, 0, 18
	addi.d	$a7, $sp, 145
	xvstelm.b	$xr1, $a7, 0, 17
	addi.d	$a7, $sp, 144
	xvstelm.b	$xr1, $a7, 0, 16
	addi.d	$a7, $sp, 143
	xvstelm.b	$xr1, $a7, 0, 15
	addi.d	$a7, $sp, 142
	xvstelm.b	$xr1, $a7, 0, 14
	addi.d	$a7, $sp, 141
	xvstelm.b	$xr1, $a7, 0, 13
	addi.d	$a7, $sp, 140
	xvstelm.b	$xr1, $a7, 0, 12
	addi.d	$a7, $sp, 139
	xvstelm.b	$xr1, $a7, 0, 11
	addi.d	$a7, $sp, 138
	xvstelm.b	$xr1, $a7, 0, 10
	addi.d	$a7, $sp, 137
	xvstelm.b	$xr1, $a7, 0, 9
	addi.d	$a7, $sp, 136
	xvstelm.b	$xr1, $a7, 0, 8
	addi.d	$a7, $sp, 135
	xvstelm.b	$xr1, $a7, 0, 7
	addi.d	$a7, $sp, 134
	xvstelm.b	$xr1, $a7, 0, 6
	addi.d	$a7, $sp, 133
	xvstelm.b	$xr1, $a7, 0, 5
	addi.d	$a7, $sp, 132
	xvstelm.b	$xr1, $a7, 0, 4
	addi.d	$a7, $sp, 131
	xvstelm.b	$xr1, $a7, 0, 3
	addi.d	$a7, $sp, 130
	xvstelm.b	$xr1, $a7, 0, 2
	addi.d	$a7, $sp, 129
	xvstelm.b	$xr1, $a7, 0, 1
	addi.d	$a7, $sp, 128
	xvstelm.b	$xr1, $a7, 0, 0
	xvld	$xr1, $sp, 128
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $a6, 15
	xvpermi.q	$xr1, $xr2, 2
	xvst	$xr1, $s0, 29
	st.b	$a5, $s0, 61
	st.b	$a4, $s0, 62
	st.b	$a3, $s0, 63
	ld.b	$a3, $s0, 67
	ld.b	$a4, $s0, 66
	ld.b	$a5, $s0, 65
	ld.b	$a6, $s0, 64
	st.b	$a3, $s0, 64
	st.b	$a4, $s0, 65
	st.b	$a5, $s0, 66
	st.b	$a6, $s0, 67
	ld.b	$a3, $s0, 71
	ld.b	$a4, $s0, 70
	ld.b	$a5, $s0, 69
	ld.b	$a6, $s0, 68
	st.b	$a3, $s0, 68
	st.b	$a4, $s0, 69
	st.b	$a5, $s0, 70
	st.b	$a6, $s0, 71
	ld.b	$a3, $s0, 75
	ld.b	$a4, $s0, 74
	ld.b	$a5, $s0, 73
	ld.b	$a6, $s0, 72
	st.b	$a3, $s0, 72
	st.b	$a4, $s0, 73
	st.b	$a5, $s0, 74
	st.b	$a6, $s0, 75
	ld.b	$a3, $s0, 79
	ld.b	$a4, $s0, 78
	ld.b	$a5, $s0, 77
	ld.b	$a6, $s0, 76
	st.b	$a3, $s0, 76
	st.b	$a4, $s0, 77
	st.b	$a5, $s0, 78
	st.b	$a6, $s0, 79
	ld.b	$a3, $s0, 83
	ld.b	$a4, $s0, 82
	ld.b	$a5, $s0, 81
	ld.b	$a6, $s0, 80
	st.b	$a3, $s0, 80
	st.b	$a4, $s0, 81
	st.b	$a5, $s0, 82
	st.b	$a6, $s0, 83
	ld.b	$a3, $s0, 87
	ld.b	$a4, $s0, 86
	ld.b	$a5, $s0, 85
	ld.b	$a6, $s0, 84
	st.b	$a3, $s0, 84
	st.b	$a4, $s0, 85
	st.b	$a5, $s0, 86
	st.b	$a6, $s0, 87
	ld.b	$a3, $s0, 91
	ld.b	$a4, $s0, 90
	ld.b	$a5, $s0, 89
	ld.b	$a6, $s0, 88
	st.b	$a3, $s0, 88
	st.b	$a4, $s0, 89
	st.b	$a5, $s0, 90
	st.b	$a6, $s0, 91
	xvld	$xr1, $t5, 32
	xvld	$xr2, $t5, 0
	move	$a6, $zero
	lu12i.w	$a3, 2
	ori	$a3, $a3, 232
	add.d	$a3, $sp, $a3
	xvst	$xr1, $a3, 0
	lu12i.w	$a3, 2
	ori	$a3, $a3, 200
	add.d	$a3, $sp, $a3
	xvst	$xr2, $a3, 0
	vpickve2gr.w	$a3, $vr0, 0
	vpickve2gr.w	$a5, $vr0, 1
	vpickve2gr.w	$a4, $vr0, 2
	vpickve2gr.w	$a7, $vr0, 3
	.p2align	4, , 16
.LBB5_7:                                # %.preheader112.i
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t0, $s5, $a6
	ld.w	$t1, $t0, 52
	ld.w	$t2, $t0, 32
	ld.w	$t3, $t0, 8
	ldx.w	$t4, $a6, $s5
	xor	$t1, $t2, $t1
	xor	$t1, $t1, $t3
	xor	$t1, $t1, $t4
	addi.d	$a6, $a6, 4
	st.w	$t1, $t0, 64
	bne	$a6, $t6, .LBB5_7
# %bb.8:                                # %.preheader.preheader
                                        #   in Loop: Header=BB5_6 Depth=2
	move	$t2, $zero
	move	$t3, $a2
	.p2align	4, , 16
.LBB5_9:                                # %.preheader
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a6, $a3
	move	$t1, $a4
	move	$t0, $a7
	and	$a3, $a5, $a4
	andn	$a4, $a7, $a5
	or	$a3, $a4, $a3
	ldx.w	$a4, $t2, $s5
	rotri.w	$a7, $a6, 27
	add.d	$a7, $t3, $a7
	add.d	$a3, $a7, $a3
	add.d	$a3, $a3, $a4
	add.d	$a3, $a3, $s7
	addi.d	$t2, $t2, 4
	rotri.w	$a4, $a5, 2
	move	$t3, $t0
	move	$a7, $t1
	move	$a5, $a6
	bne	$t2, $t7, .LBB5_9
# %bb.10:                               # %.preheader111.i.preheader
                                        #   in Loop: Header=BB5_6 Depth=2
	ori	$t3, $zero, 80
	.p2align	4, , 16
.LBB5_11:                               # %.preheader111.i
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a5, $a3
	move	$t2, $a4
	move	$a7, $t1
	rotri.w	$a3, $a3, 27
	xor	$a4, $a4, $t1
	ldx.w	$t1, $t3, $s5
	xor	$a4, $a4, $a6
	add.d	$a3, $t0, $a3
	add.d	$a3, $a3, $a4
	add.d	$a3, $a3, $t1
	add.d	$a3, $a3, $s4
	addi.d	$t3, $t3, 4
	rotri.w	$a4, $a6, 2
	move	$t0, $a7
	move	$t1, $t2
	move	$a6, $a5
	bne	$t3, $s3, .LBB5_11
# %bb.12:                               # %.preheader110.i.preheader
                                        #   in Loop: Header=BB5_6 Depth=2
	ori	$t3, $zero, 160
	.p2align	4, , 16
.LBB5_13:                               # %.preheader110.i
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a6, $a3
	move	$t1, $a4
	move	$t0, $t2
	or	$a3, $a4, $t2
	and	$a3, $a3, $a5
	and	$a4, $a4, $t2
	or	$a3, $a3, $a4
	ldx.w	$a4, $t3, $s5
	rotri.w	$t2, $a6, 27
	add.d	$a7, $a7, $t2
	add.d	$a3, $a7, $a3
	add.d	$a3, $a3, $a4
	add.d	$a3, $a3, $s2
	addi.d	$t3, $t3, 4
	rotri.w	$a4, $a5, 2
	move	$a7, $t0
	move	$t2, $t1
	move	$a5, $a6
	bne	$t3, $s1, .LBB5_13
# %bb.14:                               # %.preheader.i.preheader
                                        #   in Loop: Header=BB5_6 Depth=2
	ori	$a5, $zero, 240
	.p2align	4, , 16
.LBB5_15:                               # %.preheader.i
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$t3, $a3
	move	$t2, $a4
	move	$a7, $t1
	rotri.w	$a3, $a3, 27
	xor	$a4, $a4, $t1
	ldx.w	$t1, $a5, $s5
	xor	$a4, $a4, $a6
	add.d	$a3, $t0, $a3
	add.d	$a3, $a3, $a4
	add.d	$a3, $a3, $t1
	add.d	$a3, $a3, $s6
	addi.d	$a5, $a5, 4
	rotri.w	$a4, $a6, 2
	move	$t0, $a7
	move	$t1, $t2
	move	$a6, $t3
	bne	$a5, $s8, .LBB5_15
# %bb.16:                               # %sha_transform.exit
                                        #   in Loop: Header=BB5_6 Depth=2
	vinsgr2vr.w	$vr1, $a3, 0
	vinsgr2vr.w	$vr1, $t3, 1
	vinsgr2vr.w	$vr1, $a4, 2
	vinsgr2vr.w	$vr1, $t2, 3
	vadd.w	$vr0, $vr1, $vr0
	add.d	$a2, $a7, $a2
	addi.d	$a3, $a0, -64
	addi.w	$a4, $a0, 0
	addi.d	$a1, $a1, 64
	move	$a0, $a3
	bltu	$t8, $a4, .LBB5_6
# %bb.17:                               # %sha_update.exit.loopexit
                                        #   in Loop: Header=BB5_4 Depth=1
	vst	$vr0, $s0, 0
	st.w	$a2, $s0, 16
	b	.LBB5_3
.LBB5_18:                               # %._crit_edge
	ld.w	$s1, $s0, 20
	ld.w	$s2, $s0, 24
	bstrpick.d	$a1, $s1, 8, 3
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	add.d	$a0, $s3, $a1
	ori	$a2, $zero, 128
	stx.b	$a2, $s3, $a1
	ori	$a2, $zero, 56
	addi.d	$a0, $a0, 1
	bltu	$a1, $a2, .LBB5_20
# %bb.19:
	xori	$a2, $a1, 63
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(byte_reverse)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(sha_transform)
	jirl	$ra, $ra, 0
	st.d	$zero, $s3, 48
	vrepli.b	$vr0, 0
	vst	$vr0, $s3, 32
	xvrepli.b	$xr0, 0
	xvst	$xr0, $s3, 0
	b	.LBB5_21
.LBB5_20:
	ori	$a2, $zero, 55
	sub.w	$a2, $a2, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB5_21:                               # %sha_final.exit
	move	$a0, $s3
	pcaddu18i	$ra, %call36(byte_reverse)
	jirl	$ra, $ra, 0
	st.w	$s2, $s0, 84
	st.w	$s1, $s0, 88
	move	$a0, $s0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 608
	sub.d	$sp, $fp, $a1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2672
	add.d	$sp, $sp, $a1
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
	pcaddu18i	$t8, %call36(sha_transform)
	jr	$t8
.Lfunc_end5:
	.size	sha_stream, .Lfunc_end5-sha_stream
                                        # -- End function
	.globl	sha_print                       # -- Begin function sha_print
	.p2align	5
	.type	sha_print,@function
sha_print:                              # @sha_print
# %bb.0:
	ld.w	$a1, $a0, 0
	ld.w	$a2, $a0, 4
	ld.w	$a3, $a0, 8
	ld.w	$a4, $a0, 12
	ld.w	$a5, $a0, 16
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end6:
	.size	sha_print, .Lfunc_end6-sha_print
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%08x %08x %08x %08x %08x\n"
	.size	.L.str, 26

	.section	".note.GNU-stack","",@progbits
	.addrsig
