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
	vld	$vr0, $fp, 48
	vst	$vr0, $s1, 48
	vld	$vr0, $fp, 32
	vst	$vr0, $s1, 32
	vld	$vr0, $fp, 16
	vst	$vr0, $s1, 16
	vld	$vr0, $fp, 0
	move	$s3, $a2
	vst	$vr0, $s1, 0
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
	.p2align	5                               # -- Begin function byte_reverse
	.type	byte_reverse,@function
byte_reverse:                           # @byte_reverse
# %bb.0:
	ld.b	$a1, $a0, 3
	ld.b	$a2, $a0, 2
	ld.b	$a3, $a0, 1
	ld.b	$a4, $a0, 0
	st.b	$a1, $a0, 0
	st.b	$a2, $a0, 1
	st.b	$a3, $a0, 2
	st.b	$a4, $a0, 3
	ld.b	$a1, $a0, 7
	ld.b	$a2, $a0, 6
	ld.b	$a3, $a0, 5
	ld.b	$a4, $a0, 4
	st.b	$a1, $a0, 4
	st.b	$a2, $a0, 5
	st.b	$a3, $a0, 6
	st.b	$a4, $a0, 7
	ld.b	$a1, $a0, 11
	ld.b	$a2, $a0, 10
	ld.b	$a3, $a0, 9
	ld.b	$a4, $a0, 8
	st.b	$a1, $a0, 8
	st.b	$a2, $a0, 9
	st.b	$a3, $a0, 10
	st.b	$a4, $a0, 11
	ld.b	$a1, $a0, 15
	ld.b	$a2, $a0, 14
	ld.b	$a3, $a0, 13
	ld.b	$a4, $a0, 12
	st.b	$a1, $a0, 12
	st.b	$a2, $a0, 13
	st.b	$a3, $a0, 14
	st.b	$a4, $a0, 15
	ld.b	$a1, $a0, 19
	ld.b	$a2, $a0, 18
	ld.b	$a3, $a0, 17
	ld.b	$a4, $a0, 16
	st.b	$a1, $a0, 16
	st.b	$a2, $a0, 17
	st.b	$a3, $a0, 18
	st.b	$a4, $a0, 19
	ld.b	$a1, $a0, 23
	ld.b	$a2, $a0, 22
	ld.b	$a3, $a0, 21
	ld.b	$a4, $a0, 20
	st.b	$a1, $a0, 20
	st.b	$a2, $a0, 21
	st.b	$a3, $a0, 22
	st.b	$a4, $a0, 23
	ld.b	$a1, $a0, 27
	ld.b	$a2, $a0, 26
	ld.b	$a3, $a0, 25
	ld.b	$a4, $a0, 24
	st.b	$a1, $a0, 24
	st.b	$a2, $a0, 25
	st.b	$a3, $a0, 26
	st.b	$a4, $a0, 27
	ld.b	$a1, $a0, 31
	ld.b	$a2, $a0, 30
	ld.b	$a3, $a0, 29
	ld.b	$a4, $a0, 28
	st.b	$a1, $a0, 28
	st.b	$a2, $a0, 29
	st.b	$a3, $a0, 30
	st.b	$a4, $a0, 31
	ld.b	$a1, $a0, 35
	ld.b	$a2, $a0, 34
	ld.b	$a3, $a0, 33
	ld.b	$a4, $a0, 32
	st.b	$a1, $a0, 32
	st.b	$a2, $a0, 33
	st.b	$a3, $a0, 34
	st.b	$a4, $a0, 35
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
	ret
.Lfunc_end2:
	.size	byte_reverse, .Lfunc_end2-byte_reverse
                                        # -- End function
	.p2align	5                               # -- Begin function sha_transform
	.type	sha_transform,@function
sha_transform:                          # @sha_transform
# %bb.0:                                # %.preheader112.preheader
	addi.d	$sp, $sp, -336
	st.d	$fp, $sp, 328                   # 8-byte Folded Spill
	move	$a1, $zero
	vld	$vr0, $a0, 76
	vld	$vr1, $a0, 60
	vld	$vr2, $a0, 44
	vld	$vr3, $a0, 28
	vst	$vr0, $sp, 56
	vst	$vr1, $sp, 40
	vst	$vr2, $sp, 24
	vst	$vr3, $sp, 8
	addi.d	$a2, $sp, 40
	addi.d	$a3, $sp, 8
	ori	$a4, $zero, 256
	.p2align	4, , 16
.LBB3_1:                                # %.preheader112
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a2, $a1
	ld.w	$a6, $a5, 20
	ldx.w	$a7, $a2, $a1
	ld.w	$t0, $a5, -24
	ldx.w	$t1, $a1, $a3
	xor	$a6, $a7, $a6
	xor	$a6, $a6, $t0
	xor	$a6, $a6, $t1
	addi.d	$a1, $a1, 4
	st.w	$a6, $a5, 32
	bne	$a1, $a4, .LBB3_1
# %bb.2:
	move	$t0, $zero
	ld.w	$a5, $a0, 0
	ld.w	$a4, $a0, 4
	ld.w	$a3, $a0, 8
	ld.w	$a2, $a0, 12
	ld.w	$a1, $a0, 16
	addi.d	$t3, $sp, 8
	lu12i.w	$a6, 370727
	ori	$t5, $a6, 2457
	ori	$t6, $zero, 80
	move	$t7, $a1
	move	$fp, $a2
	move	$a6, $a3
	move	$t8, $a4
	move	$a7, $a5
	.p2align	4, , 16
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	move	$t1, $a7
	move	$t4, $a6
	move	$t2, $fp
	and	$a6, $a6, $t8
	andn	$a7, $fp, $t8
	or	$a6, $a7, $a6
	ldx.w	$a7, $t0, $t3
	rotri.w	$fp, $t1, 27
	add.d	$t7, $fp, $t7
	add.d	$a6, $t7, $a6
	add.d	$a6, $a6, $a7
	add.d	$a7, $a6, $t5
	addi.d	$t0, $t0, 4
	rotri.w	$a6, $t8, 2
	move	$t7, $t2
	move	$fp, $t4
	move	$t8, $t1
	bne	$t0, $t6, .LBB3_3
# %bb.4:                                # %.preheader111.preheader
	move	$t6, $zero
	addi.d	$t7, $sp, 88
	lu12i.w	$t0, 454046
	ori	$t8, $t0, 2977
	ori	$fp, $zero, 80
	.p2align	4, , 16
.LBB3_5:                                # %.preheader111
                                        # =>This Inner Loop Header: Depth=1
	move	$t0, $a7
	move	$t5, $a6
	move	$t3, $t4
	rotri.w	$a6, $a7, 27
	xor	$a7, $t5, $t1
	ldx.w	$t4, $t7, $t6
	xor	$a7, $a7, $t3
	add.d	$a6, $a6, $a7
	add.d	$a6, $a6, $t2
	add.d	$a6, $a6, $t4
	add.d	$a7, $a6, $t8
	addi.d	$t6, $t6, 4
	rotri.w	$a6, $t1, 2
	move	$t2, $t3
	move	$t4, $t5
	move	$t1, $t0
	bne	$t6, $fp, .LBB3_5
# %bb.6:                                # %.preheader110.preheader
	move	$t6, $zero
	addi.d	$t7, $sp, 168
	lu12i.w	$t1, -462405
	ori	$t8, $t1, 3292
	ori	$fp, $zero, 80
	.p2align	4, , 16
.LBB3_7:                                # %.preheader110
                                        # =>This Inner Loop Header: Depth=1
	move	$t1, $a7
	move	$t4, $a6
	move	$t2, $t5
	or	$a6, $t5, $a6
	and	$a6, $a6, $t0
	and	$a7, $t5, $t4
	or	$a6, $a6, $a7
	ldx.w	$a7, $t7, $t6
	rotri.w	$t5, $t1, 27
	add.d	$t3, $t5, $t3
	add.d	$a6, $t3, $a6
	add.d	$a6, $a6, $a7
	add.d	$a7, $a6, $t8
	addi.d	$t6, $t6, 4
	rotri.w	$a6, $t0, 2
	move	$t3, $t2
	move	$t5, $t4
	move	$t0, $t1
	bne	$t6, $fp, .LBB3_7
# %bb.8:                                # %.preheader.preheader
	move	$t0, $zero
	addi.d	$t3, $sp, 248
	lu12i.w	$t5, -219604
	ori	$t5, $t5, 470
	ori	$t6, $zero, 80
	.p2align	4, , 16
.LBB3_9:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a7
	move	$t8, $a6
	move	$t7, $t4
	rotri.w	$a6, $a7, 27
	xor	$a7, $t8, $t1
	ldx.w	$t4, $t3, $t0
	xor	$a7, $a7, $t7
	add.d	$a6, $a6, $a7
	add.d	$a6, $a6, $t2
	add.d	$a6, $a6, $t4
	add.d	$a7, $a6, $t5
	addi.d	$t0, $t0, 4
	rotri.w	$a6, $t1, 2
	move	$t2, $t7
	move	$t4, $t8
	move	$t1, $fp
	bne	$t0, $t6, .LBB3_9
# %bb.10:
	add.d	$a5, $a7, $a5
	st.w	$a5, $a0, 0
	add.d	$a4, $fp, $a4
	st.w	$a4, $a0, 4
	add.d	$a3, $a6, $a3
	st.w	$a3, $a0, 8
	add.d	$a2, $t8, $a2
	st.w	$a2, $a0, 12
	add.d	$a1, $t7, $a1
	st.w	$a1, $a0, 16
	ld.d	$fp, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
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
	vst	$vr0, $s0, 16
	vst	$vr0, $s0, 0
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
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2496
	sub.d	$sp, $sp, $a2
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	move	$a3, $a1
	move	$fp, $a0
	vst	$vr0, $a0, 0
	lu12i.w	$a0, -246482
	ori	$a0, $a0, 496
	lu32i.d	$a0, 0
	st.d	$a0, $fp, 16
	st.w	$zero, $fp, 24
	lu12i.w	$a2, 2
	addi.d	$a0, $sp, 24
	ori	$a1, $zero, 1
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	blez	$a1, .LBB5_18
# %bb.1:                                # %.lr.ph
	lu12i.w	$a1, 2
	ori	$a1, $a1, 104
	add.d	$ra, $sp, $a1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 184
	add.d	$s4, $sp, $a1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 264
	add.d	$s5, $sp, $a1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 24
	add.d	$s7, $sp, $a1
	ori	$s8, $zero, 256
	lu12i.w	$a1, 370727
	ori	$s6, $a1, 2457
	ori	$s2, $zero, 80
	lu12i.w	$a1, 454046
	ori	$s1, $a1, 2977
	lu12i.w	$a1, -462405
	ori	$s0, $a1, 3292
	lu12i.w	$a1, -219604
	ori	$s3, $a1, 470
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_2:                                #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a1, $sp, 24
	move	$a7, $a0
	addi.d	$t8, $fp, 28
.LBB5_3:                                # %sha_update.exit
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.w	$a2, $a7, 0
	move	$a0, $t8
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 24
	ori	$a1, $zero, 1
	lu12i.w	$a2, 2
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 104
	add.d	$ra, $sp, $a1
	blez	$a0, .LBB5_18
.LBB5_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_6 Depth 2
                                        #       Child Loop BB5_7 Depth 3
                                        #       Child Loop BB5_9 Depth 3
                                        #       Child Loop BB5_11 Depth 3
                                        #       Child Loop BB5_13 Depth 3
                                        #       Child Loop BB5_15 Depth 3
	ld.w	$a1, $fp, 20
	addi.w	$a2, $a0, 0
	slli.w	$a3, $a0, 3
	nor	$a4, $a1, $zero
	addi.w	$a4, $a4, 0
	sltu	$a3, $a4, $a3
	ld.w	$a4, $fp, 24
	alsl.d	$a1, $a0, $a1, 3
	st.w	$a1, $fp, 20
	bstrpick.d	$a1, $a0, 31, 29
	add.d	$a1, $a4, $a1
	add.d	$a1, $a1, $a3
	st.w	$a1, $fp, 24
	ori	$a1, $zero, 64
	bltu	$a2, $a1, .LBB5_2
# %bb.5:                                # %.lr.ph.i
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.w	$a6, $fp, 0
	ld.w	$a5, $fp, 4
	ld.w	$a4, $fp, 8
	ld.w	$a3, $fp, 12
	ld.w	$a2, $fp, 16
	addi.d	$a1, $sp, 24
	addi.d	$t8, $fp, 28
	.p2align	4, , 16
.LBB5_6:                                #   Parent Loop BB5_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_7 Depth 3
                                        #       Child Loop BB5_9 Depth 3
                                        #       Child Loop BB5_11 Depth 3
                                        #       Child Loop BB5_13 Depth 3
                                        #       Child Loop BB5_15 Depth 3
	move	$a7, $zero
	vld	$vr0, $a1, 48
	vld	$vr1, $a1, 32
	vld	$vr2, $a1, 16
	vld	$vr3, $a1, 0
	vst	$vr0, $t8, 48
	vst	$vr1, $t8, 32
	vst	$vr2, $t8, 16
	vst	$vr3, $t8, 0
	ld.b	$t0, $fp, 31
	ld.b	$t1, $fp, 30
	ld.b	$t2, $fp, 29
	ld.b	$t3, $fp, 28
	st.b	$t0, $fp, 28
	st.b	$t1, $fp, 29
	st.b	$t2, $fp, 30
	st.b	$t3, $fp, 31
	ld.b	$t0, $fp, 35
	ld.b	$t1, $fp, 34
	ld.b	$t2, $fp, 33
	ld.b	$t3, $fp, 32
	st.b	$t0, $fp, 32
	st.b	$t1, $fp, 33
	st.b	$t2, $fp, 34
	st.b	$t3, $fp, 35
	ld.b	$t0, $fp, 39
	ld.b	$t1, $fp, 38
	ld.b	$t2, $fp, 37
	ld.b	$t3, $fp, 36
	st.b	$t0, $fp, 36
	st.b	$t1, $fp, 37
	st.b	$t2, $fp, 38
	st.b	$t3, $fp, 39
	ld.b	$t0, $fp, 43
	ld.b	$t1, $fp, 42
	ld.b	$t2, $fp, 41
	ld.b	$t3, $fp, 40
	st.b	$t0, $fp, 40
	st.b	$t1, $fp, 41
	st.b	$t2, $fp, 42
	st.b	$t3, $fp, 43
	ld.b	$t0, $fp, 47
	ld.b	$t1, $fp, 46
	ld.b	$t2, $fp, 45
	ld.b	$t3, $fp, 44
	st.b	$t0, $fp, 44
	st.b	$t1, $fp, 45
	st.b	$t2, $fp, 46
	st.b	$t3, $fp, 47
	ld.b	$t0, $fp, 51
	ld.b	$t1, $fp, 50
	ld.b	$t2, $fp, 49
	ld.b	$t3, $fp, 48
	st.b	$t0, $fp, 48
	st.b	$t1, $fp, 49
	st.b	$t2, $fp, 50
	st.b	$t3, $fp, 51
	ld.b	$t0, $fp, 55
	ld.b	$t1, $fp, 54
	ld.b	$t2, $fp, 53
	ld.b	$t3, $fp, 52
	st.b	$t0, $fp, 52
	st.b	$t1, $fp, 53
	st.b	$t2, $fp, 54
	st.b	$t3, $fp, 55
	ld.b	$t0, $fp, 59
	ld.b	$t1, $fp, 58
	ld.b	$t2, $fp, 57
	ld.b	$t3, $fp, 56
	st.b	$t0, $fp, 56
	st.b	$t1, $fp, 57
	st.b	$t2, $fp, 58
	st.b	$t3, $fp, 59
	ld.b	$t0, $fp, 63
	ld.b	$t1, $fp, 62
	ld.b	$t2, $fp, 61
	ld.b	$t3, $fp, 60
	st.b	$t0, $fp, 60
	st.b	$t1, $fp, 61
	st.b	$t2, $fp, 62
	st.b	$t3, $fp, 63
	ld.b	$t0, $fp, 67
	ld.b	$t1, $fp, 66
	ld.b	$t2, $fp, 65
	ld.b	$t3, $fp, 64
	st.b	$t0, $fp, 64
	st.b	$t1, $fp, 65
	st.b	$t2, $fp, 66
	st.b	$t3, $fp, 67
	ld.b	$t0, $fp, 71
	ld.b	$t1, $fp, 70
	ld.b	$t2, $fp, 69
	ld.b	$t3, $fp, 68
	st.b	$t0, $fp, 68
	st.b	$t1, $fp, 69
	st.b	$t2, $fp, 70
	st.b	$t3, $fp, 71
	ld.b	$t0, $fp, 75
	ld.b	$t1, $fp, 74
	ld.b	$t2, $fp, 73
	ld.b	$t3, $fp, 72
	st.b	$t0, $fp, 72
	st.b	$t1, $fp, 73
	st.b	$t2, $fp, 74
	st.b	$t3, $fp, 75
	ld.b	$t0, $fp, 79
	ld.b	$t1, $fp, 78
	ld.b	$t2, $fp, 77
	ld.b	$t3, $fp, 76
	st.b	$t0, $fp, 76
	st.b	$t1, $fp, 77
	st.b	$t2, $fp, 78
	st.b	$t3, $fp, 79
	ld.b	$t0, $fp, 83
	ld.b	$t1, $fp, 82
	ld.b	$t2, $fp, 81
	ld.b	$t3, $fp, 80
	st.b	$t0, $fp, 80
	st.b	$t1, $fp, 81
	st.b	$t2, $fp, 82
	st.b	$t3, $fp, 83
	ld.b	$t0, $fp, 87
	ld.b	$t1, $fp, 86
	ld.b	$t2, $fp, 85
	ld.b	$t3, $fp, 84
	st.b	$t0, $fp, 84
	st.b	$t1, $fp, 85
	st.b	$t2, $fp, 86
	st.b	$t3, $fp, 87
	ld.b	$t0, $fp, 91
	ld.b	$t1, $fp, 90
	ld.b	$t2, $fp, 89
	ld.b	$t3, $fp, 88
	st.b	$t0, $fp, 88
	st.b	$t1, $fp, 89
	st.b	$t2, $fp, 90
	st.b	$t3, $fp, 91
	vld	$vr0, $t8, 48
	vld	$vr1, $t8, 32
	vld	$vr2, $t8, 16
	vld	$vr3, $t8, 0
	lu12i.w	$t0, 2
	ori	$t0, $t0, 72
	add.d	$t0, $sp, $t0
	vst	$vr0, $t0, 0
	lu12i.w	$t0, 2
	ori	$t0, $t0, 56
	add.d	$t0, $sp, $t0
	vst	$vr1, $t0, 0
	lu12i.w	$t0, 2
	ori	$t0, $t0, 40
	add.d	$t0, $sp, $t0
	vst	$vr2, $t0, 0
	lu12i.w	$t0, 2
	ori	$t0, $t0, 24
	add.d	$t0, $sp, $t0
	vst	$vr3, $t0, 0
	.p2align	4, , 16
.LBB5_7:                                # %.preheader112.i
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t0, $s7, $a7
	ld.w	$t1, $t0, 52
	ld.w	$t2, $t0, 32
	ld.w	$t3, $t0, 8
	ldx.w	$t4, $a7, $s7
	xor	$t1, $t2, $t1
	xor	$t1, $t1, $t3
	xor	$t1, $t1, $t4
	addi.d	$a7, $a7, 4
	st.w	$t1, $t0, 64
	bne	$a7, $s8, .LBB5_7
# %bb.8:                                # %.preheader.preheader
                                        #   in Loop: Header=BB5_6 Depth=2
	move	$t1, $zero
	move	$t3, $a2
	move	$t7, $a3
	move	$a7, $a4
	move	$t6, $a5
	move	$t0, $a6
	.p2align	4, , 16
.LBB5_9:                                # %.preheader
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$t2, $t0
	move	$t5, $a7
	move	$t4, $t7
	and	$a7, $t6, $a7
	andn	$t0, $t7, $t6
	or	$a7, $t0, $a7
	ldx.w	$t0, $t1, $s7
	rotri.w	$t7, $t2, 27
	add.d	$t3, $t3, $t7
	add.d	$a7, $t3, $a7
	add.d	$a7, $a7, $t0
	add.d	$t0, $a7, $s6
	addi.d	$t1, $t1, 4
	rotri.w	$a7, $t6, 2
	move	$t3, $t4
	move	$t7, $t5
	move	$t6, $t2
	bne	$t1, $s2, .LBB5_9
# %bb.10:                               # %.preheader111.i.preheader
                                        #   in Loop: Header=BB5_6 Depth=2
	move	$t7, $zero
	.p2align	4, , 16
.LBB5_11:                               # %.preheader111.i
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$t1, $t0
	move	$t6, $a7
	move	$t3, $t5
	rotri.w	$a7, $t0, 27
	xor	$t0, $t6, $t5
	ldx.w	$t5, $ra, $t7
	xor	$t0, $t0, $t2
	add.d	$a7, $t4, $a7
	add.d	$a7, $a7, $t0
	add.d	$a7, $a7, $t5
	add.d	$t0, $a7, $s1
	addi.d	$t7, $t7, 4
	rotri.w	$a7, $t2, 2
	move	$t4, $t3
	move	$t5, $t6
	move	$t2, $t1
	bne	$t7, $s2, .LBB5_11
# %bb.12:                               # %.preheader110.i.preheader
                                        #   in Loop: Header=BB5_6 Depth=2
	move	$t7, $zero
	.p2align	4, , 16
.LBB5_13:                               # %.preheader110.i
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$t2, $t0
	move	$t5, $a7
	move	$t4, $t6
	or	$a7, $a7, $t6
	and	$a7, $a7, $t1
	and	$t0, $t5, $t6
	or	$a7, $a7, $t0
	ldx.w	$t0, $s4, $t7
	rotri.w	$t6, $t2, 27
	add.d	$t3, $t3, $t6
	add.d	$a7, $t3, $a7
	add.d	$a7, $a7, $t0
	add.d	$t0, $a7, $s0
	addi.d	$t7, $t7, 4
	rotri.w	$a7, $t1, 2
	move	$t3, $t4
	move	$t6, $t5
	move	$t1, $t2
	bne	$t7, $s2, .LBB5_13
# %bb.14:                               # %.preheader.i.preheader
                                        #   in Loop: Header=BB5_6 Depth=2
	move	$t1, $zero
	.p2align	4, , 16
.LBB5_15:                               # %.preheader.i
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$t7, $t0
	move	$t6, $a7
	move	$t3, $t5
	rotri.w	$a7, $t0, 27
	xor	$t0, $t6, $t5
	ldx.w	$t5, $s5, $t1
	xor	$t0, $t0, $t2
	add.d	$a7, $t4, $a7
	add.d	$a7, $a7, $t0
	add.d	$a7, $a7, $t5
	add.d	$t0, $a7, $s3
	addi.d	$t1, $t1, 4
	rotri.w	$a7, $t2, 2
	move	$t4, $t3
	move	$t5, $t6
	move	$t2, $t7
	bne	$t1, $s2, .LBB5_15
# %bb.16:                               # %sha_transform.exit
                                        #   in Loop: Header=BB5_6 Depth=2
	add.d	$a6, $t0, $a6
	add.d	$a5, $t7, $a5
	add.d	$a4, $a7, $a4
	add.d	$a3, $t6, $a3
	add.d	$a2, $t3, $a2
	addi.d	$a7, $a0, -64
	addi.w	$t0, $a0, 0
	addi.d	$a1, $a1, 64
	move	$a0, $a7
	ori	$t1, $zero, 127
	bltu	$t1, $t0, .LBB5_6
# %bb.17:                               # %sha_update.exit.loopexit
                                        #   in Loop: Header=BB5_4 Depth=1
	st.w	$a6, $fp, 0
	st.w	$a5, $fp, 4
	st.w	$a4, $fp, 8
	st.w	$a3, $fp, 12
	st.w	$a2, $fp, 16
	b	.LBB5_3
.LBB5_18:                               # %._crit_edge
	ld.w	$s0, $fp, 20
	ld.w	$s1, $fp, 24
	bstrpick.d	$a1, $s0, 8, 3
	addi.d	$s2, $fp, 28
	add.d	$a0, $s2, $a1
	ori	$a2, $zero, 128
	stx.b	$a2, $s2, $a1
	ori	$a2, $zero, 56
	addi.d	$a0, $a0, 1
	bltu	$a1, $a2, .LBB5_20
# %bb.19:
	xori	$a2, $a1, 63
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(byte_reverse)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sha_transform)
	jirl	$ra, $ra, 0
	st.d	$zero, $s2, 48
	vrepli.b	$vr0, 0
	vst	$vr0, $s2, 32
	vst	$vr0, $s2, 16
	vst	$vr0, $s2, 0
	b	.LBB5_21
.LBB5_20:
	ori	$a2, $zero, 55
	sub.w	$a2, $a2, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB5_21:                               # %sha_final.exit
	move	$a0, $s2
	pcaddu18i	$ra, %call36(byte_reverse)
	jirl	$ra, $ra, 0
	st.w	$s1, $fp, 84
	st.w	$s0, $fp, 88
	move	$a0, $fp
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2496
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
