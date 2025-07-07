	.file	"uuencode.c"
	.text
	.globl	encode_char                     # -- Begin function encode_char
	.p2align	5
	.type	encode_char,@function
encode_char:                            # @encode_char
# %bb.0:
	andi	$a0, $a0, 63
	addi.d	$a0, $a0, 32
	ret
.Lfunc_end0:
	.size	encode_char, .Lfunc_end0-encode_char
                                        # -- End function
	.globl	encode_line                     # -- Begin function encode_line
	.p2align	5
	.type	encode_line,@function
encode_line:                            # @encode_line
# %bb.0:
	andi	$a4, $a2, 63
	addi.d	$a5, $a4, 32
	ori	$a4, $zero, 1
	st.b	$a5, $a3, 0
	blt	$a2, $a4, .LBB1_16
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 160
	bstrins.d	$sp, $zero, 4, 0
	bstrpick.d	$a4, $a2, 31, 0
	lu12i.w	$a5, -349526
	ori	$a5, $a5, 2731
	mul.d	$a6, $a2, $a5
	lu32i.d	$a5, 0
	mul.d	$a4, $a4, $a5
	srli.d	$a4, $a4, 33
	addi.w	$a5, $a6, -1
	sltu	$a6, $a4, $a5
	masknez	$a5, $a5, $a6
	maskeqz	$a4, $a4, $a6
	or	$a6, $a4, $a5
	ori	$a5, $zero, 32
	ori	$a4, $zero, 1
	bltu	$a6, $a5, .LBB1_7
# %bb.2:                                # %vector.memcheck
	addi.d	$a7, $a3, 1
	add.d	$a5, $a0, $a1
	alsl.d	$t0, $a6, $a6, 1
	add.d	$t0, $a5, $t0
	addi.d	$t0, $t0, 3
	bgeu	$a7, $t0, .LBB1_4
# %bb.3:                                # %vector.memcheck
	alsl.d	$a7, $a6, $a3, 2
	addi.d	$a7, $a7, 5
	bltu	$a5, $a7, .LBB1_7
.LBB1_4:                                # %vector.ph
	move	$a5, $zero
	addi.w	$a4, $a6, 1
	andi	$a6, $a4, 31
	sltui	$a7, $a6, 1
	masknez	$a6, $a6, $a7
	ori	$t0, $zero, 32
	maskeqz	$a7, $t0, $a7
	or	$a6, $a7, $a6
	sub.d	$a6, $a4, $a6
	alsl.d	$a4, $a6, $a6, 1
	add.d	$a7, $a4, $a1
	sub.w	$a2, $a2, $a4
	slli.d	$a4, $a6, 2
	addi.d	$a4, $a4, 1
	xvrepli.b	$xr0, 32
	.p2align	4, , 16
.LBB1_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	alsl.d	$t0, $a5, $a5, 1
	add.d	$t2, $t0, $a1
	ldx.b	$t1, $a0, $t2
	add.d	$t0, $a0, $t2
	ld.b	$t3, $t0, 3
	ld.b	$t4, $t0, 6
	vinsgr2vr.b	$vr1, $t1, 0
	ld.b	$t1, $t0, 9
	vinsgr2vr.b	$vr1, $t3, 1
	ld.b	$t3, $t0, 12
	vinsgr2vr.b	$vr1, $t4, 2
	ld.b	$t4, $t0, 15
	vinsgr2vr.b	$vr1, $t1, 3
	ld.b	$t1, $t0, 18
	vinsgr2vr.b	$vr1, $t3, 4
	ld.b	$t3, $t0, 21
	vinsgr2vr.b	$vr1, $t4, 5
	ld.b	$t4, $t0, 24
	vinsgr2vr.b	$vr1, $t1, 6
	ld.b	$t1, $t0, 27
	vinsgr2vr.b	$vr1, $t3, 7
	ld.b	$t3, $t0, 30
	vinsgr2vr.b	$vr1, $t4, 8
	ld.b	$t4, $t0, 33
	vinsgr2vr.b	$vr1, $t1, 9
	ld.b	$t1, $t0, 36
	vinsgr2vr.b	$vr1, $t3, 10
	ld.b	$t3, $t0, 39
	vinsgr2vr.b	$vr1, $t4, 11
	ld.b	$t4, $t0, 42
	vinsgr2vr.b	$vr1, $t1, 12
	ld.b	$t1, $t0, 45
	vinsgr2vr.b	$vr1, $t3, 13
	ld.b	$t3, $t0, 48
	vinsgr2vr.b	$vr1, $t4, 14
	vinsgr2vr.b	$vr1, $t1, 15
	ld.b	$t1, $t0, 51
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 0
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t3, $t0, 54
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t1, 1
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t1, $t0, 57
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 2
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t3, $t0, 60
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t1, 3
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t1, $t0, 63
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 4
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t3, $t0, 66
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t1, 5
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t1, $t0, 69
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 6
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t3, $t0, 72
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t1, 7
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t1, $t0, 75
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 8
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t3, $t0, 78
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t1, 9
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t1, $t0, 81
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 10
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t3, $t0, 84
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t1, 11
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t1, $t0, 87
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 12
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t3, $t0, 90
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t1, 13
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t1, $t0, 93
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 14
	xvpermi.q	$xr1, $xr2, 2
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t1, 15
	xvpermi.q	$xr1, $xr2, 2
	xvsrli.b	$xr1, $xr1, 2
	xvadd.b	$xr1, $xr1, $xr0
	alsl.d	$t1, $a5, $a3, 2
	xvstelm.b	$xr1, $t1, 1, 0
	xvstelm.b	$xr1, $t1, 5, 1
	xvstelm.b	$xr1, $t1, 9, 2
	xvstelm.b	$xr1, $t1, 13, 3
	xvstelm.b	$xr1, $t1, 17, 4
	xvstelm.b	$xr1, $t1, 21, 5
	xvstelm.b	$xr1, $t1, 25, 6
	xvstelm.b	$xr1, $t1, 29, 7
	xvstelm.b	$xr1, $t1, 33, 8
	xvstelm.b	$xr1, $t1, 37, 9
	xvstelm.b	$xr1, $t1, 41, 10
	xvstelm.b	$xr1, $t1, 45, 11
	xvstelm.b	$xr1, $t1, 49, 12
	xvstelm.b	$xr1, $t1, 53, 13
	xvstelm.b	$xr1, $t1, 57, 14
	xvstelm.b	$xr1, $t1, 61, 15
	xvst	$xr1, $sp, 0
	ld.b	$t3, $sp, 16
	st.b	$t3, $t1, 65
	ld.b	$t3, $sp, 17
	st.b	$t3, $t1, 69
	ld.b	$t3, $sp, 18
	st.b	$t3, $t1, 73
	ld.b	$t3, $sp, 19
	st.b	$t3, $t1, 77
	ld.b	$t3, $sp, 20
	st.b	$t3, $t1, 81
	ld.b	$t3, $sp, 21
	st.b	$t3, $t1, 85
	ld.b	$t3, $sp, 22
	st.b	$t3, $t1, 89
	ld.b	$t3, $sp, 23
	st.b	$t3, $t1, 93
	ld.b	$t3, $sp, 24
	st.b	$t3, $t1, 97
	ld.b	$t3, $sp, 25
	st.b	$t3, $t1, 101
	ld.b	$t3, $sp, 26
	st.b	$t3, $t1, 105
	ld.b	$t3, $sp, 27
	st.b	$t3, $t1, 109
	ld.b	$t3, $sp, 28
	st.b	$t3, $t1, 113
	ld.b	$t3, $sp, 29
	st.b	$t3, $t1, 117
	ld.b	$t3, $sp, 30
	ldx.b	$t2, $a0, $t2
	st.b	$t3, $t1, 121
	ld.b	$t3, $t0, 3
	ld.b	$t4, $t0, 6
	vinsgr2vr.b	$vr1, $t2, 0
	ld.b	$t2, $t0, 9
	vinsgr2vr.b	$vr1, $t3, 1
	ld.b	$t3, $t0, 12
	vinsgr2vr.b	$vr1, $t4, 2
	ld.b	$t4, $t0, 15
	vinsgr2vr.b	$vr1, $t2, 3
	ld.b	$t2, $t0, 18
	vinsgr2vr.b	$vr1, $t3, 4
	ld.b	$t3, $t0, 21
	vinsgr2vr.b	$vr1, $t4, 5
	ld.b	$t4, $t0, 24
	vinsgr2vr.b	$vr1, $t2, 6
	ld.b	$t2, $t0, 27
	vinsgr2vr.b	$vr1, $t3, 7
	ld.b	$t3, $t0, 30
	vinsgr2vr.b	$vr1, $t4, 8
	ld.b	$t4, $t0, 33
	vinsgr2vr.b	$vr1, $t2, 9
	ld.b	$t2, $t0, 36
	vinsgr2vr.b	$vr1, $t3, 10
	ld.b	$t3, $t0, 39
	vinsgr2vr.b	$vr1, $t4, 11
	ld.b	$t4, $t0, 42
	vinsgr2vr.b	$vr1, $t2, 12
	ld.b	$t5, $t0, 45
	vinsgr2vr.b	$vr1, $t3, 13
	ld.b	$t2, $sp, 31
	vinsgr2vr.b	$vr1, $t4, 14
	ld.b	$t3, $t0, 48
	vinsgr2vr.b	$vr1, $t5, 15
	ld.b	$t4, $t0, 51
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 0
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t3, $t0, 54
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t4, 1
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t4, $t0, 57
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 2
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t3, $t0, 60
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t4, 3
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t4, $t0, 63
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 4
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t3, $t0, 66
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t4, 5
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t4, $t0, 69
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 6
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t3, $t0, 72
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t4, 7
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t4, $t0, 75
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 8
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t3, $t0, 78
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t4, 9
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t4, $t0, 81
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 10
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t3, $t0, 84
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t4, 11
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t4, $t0, 87
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 12
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t3, $t0, 90
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t4, 13
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t4, $t0, 93
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 14
	xvpermi.q	$xr1, $xr2, 2
	st.b	$t2, $t1, 125
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t4, 15
	ld.b	$t2, $t0, 1
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t3, $t0, 4
	ld.b	$t4, $t0, 7
	vinsgr2vr.b	$vr2, $t2, 0
	ld.b	$t2, $t0, 10
	vinsgr2vr.b	$vr2, $t3, 1
	ld.b	$t3, $t0, 13
	vinsgr2vr.b	$vr2, $t4, 2
	ld.b	$t4, $t0, 16
	vinsgr2vr.b	$vr2, $t2, 3
	ld.b	$t2, $t0, 19
	vinsgr2vr.b	$vr2, $t3, 4
	ld.b	$t3, $t0, 22
	vinsgr2vr.b	$vr2, $t4, 5
	ld.b	$t4, $t0, 25
	vinsgr2vr.b	$vr2, $t2, 6
	ld.b	$t2, $t0, 28
	vinsgr2vr.b	$vr2, $t3, 7
	ld.b	$t3, $t0, 31
	vinsgr2vr.b	$vr2, $t4, 8
	ld.b	$t4, $t0, 34
	vinsgr2vr.b	$vr2, $t2, 9
	ld.b	$t2, $t0, 37
	vinsgr2vr.b	$vr2, $t3, 10
	ld.b	$t3, $t0, 40
	vinsgr2vr.b	$vr2, $t4, 11
	ld.b	$t4, $t0, 43
	vinsgr2vr.b	$vr2, $t2, 12
	ld.b	$t2, $t0, 46
	vinsgr2vr.b	$vr2, $t3, 13
	ld.b	$t3, $t0, 49
	vinsgr2vr.b	$vr2, $t4, 14
	vinsgr2vr.b	$vr2, $t2, 15
	ld.b	$t2, $t0, 52
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t3, 0
	xvpermi.q	$xr2, $xr3, 2
	ld.b	$t3, $t0, 55
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t2, 1
	xvpermi.q	$xr2, $xr3, 2
	ld.b	$t2, $t0, 58
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t3, 2
	xvpermi.q	$xr2, $xr3, 2
	ld.b	$t3, $t0, 61
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t2, 3
	xvpermi.q	$xr2, $xr3, 2
	ld.b	$t2, $t0, 64
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t3, 4
	xvpermi.q	$xr2, $xr3, 2
	ld.b	$t3, $t0, 67
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t2, 5
	xvpermi.q	$xr2, $xr3, 2
	ld.b	$t2, $t0, 70
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t3, 6
	xvpermi.q	$xr2, $xr3, 2
	ld.b	$t3, $t0, 73
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t2, 7
	xvpermi.q	$xr2, $xr3, 2
	ld.b	$t2, $t0, 76
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t3, 8
	xvpermi.q	$xr2, $xr3, 2
	ld.b	$t3, $t0, 79
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t2, 9
	xvpermi.q	$xr2, $xr3, 2
	ld.b	$t2, $t0, 82
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t3, 10
	xvpermi.q	$xr2, $xr3, 2
	ld.b	$t3, $t0, 85
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t2, 11
	xvpermi.q	$xr2, $xr3, 2
	ld.b	$t2, $t0, 88
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t3, 12
	xvpermi.q	$xr2, $xr3, 2
	ld.b	$t3, $t0, 91
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t2, 13
	xvpermi.q	$xr2, $xr3, 2
	ld.b	$t2, $t0, 94
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t3, 14
	xvpermi.q	$xr2, $xr3, 2
	xvslli.b	$xr1, $xr1, 4
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t2, 15
	xvpermi.q	$xr2, $xr3, 2
	xvsrai.b	$xr2, $xr2, 4
	xvor.v	$xr1, $xr2, $xr1
	xvandi.b	$xr1, $xr1, 63
	xvadd.b	$xr1, $xr1, $xr0
	xvstelm.b	$xr1, $t1, 2, 0
	xvstelm.b	$xr1, $t1, 6, 1
	xvstelm.b	$xr1, $t1, 10, 2
	xvstelm.b	$xr1, $t1, 14, 3
	xvstelm.b	$xr1, $t1, 18, 4
	xvstelm.b	$xr1, $t1, 22, 5
	xvstelm.b	$xr1, $t1, 26, 6
	xvstelm.b	$xr1, $t1, 30, 7
	xvstelm.b	$xr1, $t1, 34, 8
	xvstelm.b	$xr1, $t1, 38, 9
	xvstelm.b	$xr1, $t1, 42, 10
	xvstelm.b	$xr1, $t1, 46, 11
	xvstelm.b	$xr1, $t1, 50, 12
	xvstelm.b	$xr1, $t1, 54, 13
	xvstelm.b	$xr1, $t1, 58, 14
	xvstelm.b	$xr1, $t1, 62, 15
	xvst	$xr1, $sp, 32
	ld.b	$t2, $sp, 48
	st.b	$t2, $t1, 66
	ld.b	$t2, $sp, 49
	st.b	$t2, $t1, 70
	ld.b	$t2, $sp, 50
	st.b	$t2, $t1, 74
	ld.b	$t2, $sp, 51
	st.b	$t2, $t1, 78
	ld.b	$t2, $sp, 52
	st.b	$t2, $t1, 82
	ld.b	$t2, $sp, 53
	st.b	$t2, $t1, 86
	ld.b	$t2, $sp, 54
	st.b	$t2, $t1, 90
	ld.b	$t2, $sp, 55
	st.b	$t2, $t1, 94
	ld.b	$t2, $sp, 56
	st.b	$t2, $t1, 98
	ld.b	$t2, $sp, 57
	st.b	$t2, $t1, 102
	ld.b	$t2, $sp, 58
	st.b	$t2, $t1, 106
	ld.b	$t2, $sp, 59
	st.b	$t2, $t1, 110
	ld.b	$t2, $sp, 60
	st.b	$t2, $t1, 114
	ld.b	$t2, $sp, 61
	st.b	$t2, $t1, 118
	ld.b	$t2, $sp, 62
	ld.b	$t3, $t0, 1
	st.b	$t2, $t1, 122
	ld.b	$t2, $t0, 4
	ld.b	$t4, $t0, 7
	vinsgr2vr.b	$vr1, $t3, 0
	ld.b	$t3, $t0, 10
	vinsgr2vr.b	$vr1, $t2, 1
	ld.b	$t2, $t0, 13
	vinsgr2vr.b	$vr1, $t4, 2
	ld.b	$t4, $t0, 16
	vinsgr2vr.b	$vr1, $t3, 3
	ld.b	$t3, $t0, 19
	vinsgr2vr.b	$vr1, $t2, 4
	ld.b	$t2, $t0, 22
	vinsgr2vr.b	$vr1, $t4, 5
	ld.b	$t4, $t0, 25
	vinsgr2vr.b	$vr1, $t3, 6
	ld.b	$t3, $t0, 28
	vinsgr2vr.b	$vr1, $t2, 7
	ld.b	$t2, $t0, 31
	vinsgr2vr.b	$vr1, $t4, 8
	ld.b	$t4, $t0, 34
	vinsgr2vr.b	$vr1, $t3, 9
	ld.b	$t3, $t0, 37
	vinsgr2vr.b	$vr1, $t2, 10
	ld.b	$t2, $t0, 40
	vinsgr2vr.b	$vr1, $t4, 11
	ld.b	$t4, $t0, 43
	vinsgr2vr.b	$vr1, $t3, 12
	ld.b	$t3, $t0, 46
	vinsgr2vr.b	$vr1, $t2, 13
	ld.b	$t2, $sp, 63
	vinsgr2vr.b	$vr1, $t4, 14
	ld.b	$t4, $t0, 49
	vinsgr2vr.b	$vr1, $t3, 15
	ld.b	$t3, $t0, 52
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t4, 0
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t4, $t0, 55
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 1
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t3, $t0, 58
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t4, 2
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t4, $t0, 61
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 3
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t3, $t0, 64
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t4, 4
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t4, $t0, 67
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 5
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t3, $t0, 70
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t4, 6
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t4, $t0, 73
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 7
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t3, $t0, 76
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t4, 8
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t4, $t0, 79
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 9
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t3, $t0, 82
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t4, 10
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t4, $t0, 85
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 11
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t3, $t0, 88
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t4, 12
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t4, $t0, 91
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 13
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t3, $t0, 94
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t4, 14
	xvpermi.q	$xr1, $xr2, 2
	st.b	$t2, $t1, 126
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 15
	ld.b	$t2, $t0, 2
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t3, $t0, 5
	ld.b	$t4, $t0, 8
	vinsgr2vr.b	$vr2, $t2, 0
	ld.b	$t2, $t0, 11
	vinsgr2vr.b	$vr2, $t3, 1
	ld.b	$t3, $t0, 14
	vinsgr2vr.b	$vr2, $t4, 2
	ld.b	$t4, $t0, 17
	vinsgr2vr.b	$vr2, $t2, 3
	ld.b	$t2, $t0, 20
	vinsgr2vr.b	$vr2, $t3, 4
	ld.b	$t3, $t0, 23
	vinsgr2vr.b	$vr2, $t4, 5
	ld.b	$t4, $t0, 26
	vinsgr2vr.b	$vr2, $t2, 6
	ld.b	$t2, $t0, 29
	vinsgr2vr.b	$vr2, $t3, 7
	ld.b	$t3, $t0, 32
	vinsgr2vr.b	$vr2, $t4, 8
	ld.b	$t4, $t0, 35
	vinsgr2vr.b	$vr2, $t2, 9
	ld.b	$t2, $t0, 38
	vinsgr2vr.b	$vr2, $t3, 10
	ld.b	$t3, $t0, 41
	vinsgr2vr.b	$vr2, $t4, 11
	ld.b	$t4, $t0, 44
	vinsgr2vr.b	$vr2, $t2, 12
	ld.b	$t2, $t0, 47
	vinsgr2vr.b	$vr2, $t3, 13
	ld.b	$t3, $t0, 50
	vinsgr2vr.b	$vr2, $t4, 14
	vinsgr2vr.b	$vr2, $t2, 15
	ld.b	$t2, $t0, 53
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t3, 0
	xvpermi.q	$xr2, $xr3, 2
	ld.b	$t3, $t0, 56
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t2, 1
	xvpermi.q	$xr2, $xr3, 2
	ld.b	$t2, $t0, 59
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t3, 2
	xvpermi.q	$xr2, $xr3, 2
	ld.b	$t3, $t0, 62
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t2, 3
	xvpermi.q	$xr2, $xr3, 2
	ld.b	$t2, $t0, 65
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t3, 4
	xvpermi.q	$xr2, $xr3, 2
	ld.b	$t3, $t0, 68
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t2, 5
	xvpermi.q	$xr2, $xr3, 2
	ld.b	$t2, $t0, 71
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t3, 6
	xvpermi.q	$xr2, $xr3, 2
	ld.b	$t3, $t0, 74
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t2, 7
	xvpermi.q	$xr2, $xr3, 2
	ld.b	$t2, $t0, 77
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t3, 8
	xvpermi.q	$xr2, $xr3, 2
	ld.b	$t3, $t0, 80
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t2, 9
	xvpermi.q	$xr2, $xr3, 2
	ld.b	$t2, $t0, 83
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t3, 10
	xvpermi.q	$xr2, $xr3, 2
	ld.b	$t3, $t0, 86
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t2, 11
	xvpermi.q	$xr2, $xr3, 2
	ld.b	$t2, $t0, 89
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t3, 12
	xvpermi.q	$xr2, $xr3, 2
	ld.b	$t3, $t0, 92
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t2, 13
	xvpermi.q	$xr2, $xr3, 2
	ld.b	$t2, $t0, 95
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t3, 14
	xvpermi.q	$xr2, $xr3, 2
	xvslli.b	$xr1, $xr1, 2
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.b	$vr3, $t2, 15
	xvpermi.q	$xr2, $xr3, 2
	xvsrai.b	$xr2, $xr2, 6
	xvor.v	$xr1, $xr2, $xr1
	xvandi.b	$xr1, $xr1, 63
	xvadd.b	$xr1, $xr1, $xr0
	xvstelm.b	$xr1, $t1, 3, 0
	xvstelm.b	$xr1, $t1, 7, 1
	xvstelm.b	$xr1, $t1, 11, 2
	xvstelm.b	$xr1, $t1, 15, 3
	xvstelm.b	$xr1, $t1, 19, 4
	xvstelm.b	$xr1, $t1, 23, 5
	xvstelm.b	$xr1, $t1, 27, 6
	xvstelm.b	$xr1, $t1, 31, 7
	xvstelm.b	$xr1, $t1, 35, 8
	xvstelm.b	$xr1, $t1, 39, 9
	xvstelm.b	$xr1, $t1, 43, 10
	xvstelm.b	$xr1, $t1, 47, 11
	xvstelm.b	$xr1, $t1, 51, 12
	xvstelm.b	$xr1, $t1, 55, 13
	xvstelm.b	$xr1, $t1, 59, 14
	xvstelm.b	$xr1, $t1, 63, 15
	xvst	$xr1, $sp, 64
	ld.b	$t2, $sp, 80
	st.b	$t2, $t1, 67
	ld.b	$t2, $sp, 81
	st.b	$t2, $t1, 71
	ld.b	$t2, $sp, 82
	st.b	$t2, $t1, 75
	ld.b	$t2, $sp, 83
	st.b	$t2, $t1, 79
	ld.b	$t2, $sp, 84
	st.b	$t2, $t1, 83
	ld.b	$t2, $sp, 85
	st.b	$t2, $t1, 87
	ld.b	$t2, $sp, 86
	st.b	$t2, $t1, 91
	ld.b	$t2, $sp, 87
	st.b	$t2, $t1, 95
	ld.b	$t2, $sp, 88
	st.b	$t2, $t1, 99
	ld.b	$t2, $sp, 89
	st.b	$t2, $t1, 103
	ld.b	$t2, $sp, 90
	st.b	$t2, $t1, 107
	ld.b	$t2, $sp, 91
	st.b	$t2, $t1, 111
	ld.b	$t2, $sp, 92
	st.b	$t2, $t1, 115
	ld.b	$t2, $sp, 93
	st.b	$t2, $t1, 119
	ld.b	$t2, $sp, 94
	ld.b	$t3, $t0, 2
	st.b	$t2, $t1, 123
	ld.b	$t2, $t0, 5
	ld.b	$t4, $t0, 8
	vinsgr2vr.b	$vr1, $t3, 0
	ld.b	$t3, $t0, 11
	vinsgr2vr.b	$vr1, $t2, 1
	ld.b	$t2, $t0, 14
	vinsgr2vr.b	$vr1, $t4, 2
	ld.b	$t4, $t0, 17
	vinsgr2vr.b	$vr1, $t3, 3
	ld.b	$t3, $t0, 20
	vinsgr2vr.b	$vr1, $t2, 4
	ld.b	$t2, $t0, 23
	vinsgr2vr.b	$vr1, $t4, 5
	ld.b	$t4, $t0, 26
	vinsgr2vr.b	$vr1, $t3, 6
	ld.b	$t3, $t0, 29
	vinsgr2vr.b	$vr1, $t2, 7
	ld.b	$t2, $t0, 32
	vinsgr2vr.b	$vr1, $t4, 8
	ld.b	$t4, $t0, 35
	vinsgr2vr.b	$vr1, $t3, 9
	ld.b	$t3, $t0, 38
	vinsgr2vr.b	$vr1, $t2, 10
	ld.b	$t2, $t0, 41
	vinsgr2vr.b	$vr1, $t4, 11
	ld.b	$t4, $t0, 44
	vinsgr2vr.b	$vr1, $t3, 12
	ld.b	$t3, $t0, 47
	vinsgr2vr.b	$vr1, $t2, 13
	vinsgr2vr.b	$vr1, $t4, 14
	ld.b	$t2, $t0, 50
	vinsgr2vr.b	$vr1, $t3, 15
	ld.b	$t3, $t0, 53
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t2, 0
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t2, $t0, 56
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 1
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t3, $t0, 59
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t2, 2
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t2, $t0, 62
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 3
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t3, $t0, 65
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t2, 4
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t2, $t0, 68
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 5
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t3, $t0, 71
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t2, 6
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t2, $t0, 74
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 7
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t3, $t0, 77
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t2, 8
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t2, $t0, 80
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 9
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t3, $t0, 83
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t2, 10
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t2, $t0, 86
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 11
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t3, $t0, 89
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t2, 12
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t2, $t0, 92
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t3, 13
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t3, $sp, 95
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t2, 14
	ld.b	$t0, $t0, 95
	xvpermi.q	$xr1, $xr2, 2
	st.b	$t3, $t1, 127
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t0, 15
	xvpermi.q	$xr1, $xr2, 2
	xvandi.b	$xr1, $xr1, 63
	xvadd.b	$xr1, $xr1, $xr0
	xvstelm.b	$xr1, $t1, 4, 0
	xvstelm.b	$xr1, $t1, 8, 1
	xvstelm.b	$xr1, $t1, 12, 2
	xvstelm.b	$xr1, $t1, 16, 3
	xvstelm.b	$xr1, $t1, 20, 4
	xvstelm.b	$xr1, $t1, 24, 5
	xvstelm.b	$xr1, $t1, 28, 6
	xvstelm.b	$xr1, $t1, 32, 7
	xvstelm.b	$xr1, $t1, 36, 8
	xvstelm.b	$xr1, $t1, 40, 9
	xvstelm.b	$xr1, $t1, 44, 10
	xvstelm.b	$xr1, $t1, 48, 11
	xvstelm.b	$xr1, $t1, 52, 12
	xvstelm.b	$xr1, $t1, 56, 13
	xvstelm.b	$xr1, $t1, 60, 14
	xvstelm.b	$xr1, $t1, 64, 15
	xvst	$xr1, $sp, 96
	ld.b	$t0, $sp, 112
	st.b	$t0, $t1, 68
	ld.b	$t0, $sp, 113
	st.b	$t0, $t1, 72
	ld.b	$t0, $sp, 114
	st.b	$t0, $t1, 76
	ld.b	$t0, $sp, 115
	st.b	$t0, $t1, 80
	ld.b	$t0, $sp, 116
	st.b	$t0, $t1, 84
	ld.b	$t0, $sp, 117
	st.b	$t0, $t1, 88
	ld.b	$t0, $sp, 118
	st.b	$t0, $t1, 92
	ld.b	$t0, $sp, 119
	st.b	$t0, $t1, 96
	ld.b	$t0, $sp, 120
	st.b	$t0, $t1, 100
	ld.b	$t0, $sp, 121
	st.b	$t0, $t1, 104
	ld.b	$t0, $sp, 122
	st.b	$t0, $t1, 108
	ld.b	$t0, $sp, 123
	st.b	$t0, $t1, 112
	ld.b	$t0, $sp, 124
	st.b	$t0, $t1, 116
	ld.b	$t0, $sp, 125
	st.b	$t0, $t1, 120
	ld.b	$t0, $sp, 126
	st.b	$t0, $t1, 124
	ld.b	$t0, $sp, 127
	addi.d	$a5, $a5, 32
	st.b	$t0, $t1, 128
	bne	$a5, $a6, .LBB1_5
# %bb.6:
	move	$a1, $a7
.LBB1_7:                                # %.lr.ph.preheader104
	add.d	$a0, $a1, $a0
	addi.d	$a1, $a0, 1
	addi.d	$a0, $a4, 4
	ori	$a4, $zero, 2
	.p2align	4, , 16
.LBB1_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	bgeu	$a4, $a2, .LBB1_11
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=1
	ld.bu	$a5, $a1, -1
	srli.d	$a5, $a5, 2
	addi.d	$a5, $a5, 32
	add.d	$a6, $a3, $a0
	st.b	$a5, $a6, -4
	ld.b	$a5, $a1, -1
	ld.b	$a7, $a1, 0
	slli.d	$a5, $a5, 4
	srli.d	$a7, $a7, 4
	or	$a5, $a7, $a5
	andi	$a5, $a5, 63
	addi.d	$a5, $a5, 32
	st.b	$a5, $a6, -3
	ld.b	$a5, $a1, 0
	ld.b	$a7, $a1, 1
	slli.d	$a5, $a5, 2
	srli.d	$a7, $a7, 6
	or	$a5, $a7, $a5
	andi	$a5, $a5, 63
	addi.d	$a5, $a5, 32
	st.b	$a5, $a6, -2
	ld.bu	$a5, $a1, 1
	andi	$a5, $a5, 63
	addi.d	$a5, $a5, 32
	st.b	$a5, $a6, -1
	addi.w	$a2, $a2, -3
	addi.d	$a1, $a1, 3
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB1_8
# %bb.10:                               # %._crit_edge.loopexit.loopexit
	addi.d	$a0, $a0, -4
	b	.LBB1_15
.LBB1_11:
	ld.bu	$a4, $a1, -1
	srli.d	$a4, $a4, 2
	addi.d	$a5, $a4, 32
	add.d	$a4, $a3, $a0
	st.b	$a5, $a4, -4
	ld.b	$a5, $a1, -1
	ori	$a6, $zero, 1
	slli.d	$a5, $a5, 4
	bne	$a2, $a6, .LBB1_13
# %bb.12:
	andi	$a1, $a5, 48
	addi.d	$a1, $a1, 32
	st.b	$a1, $a4, -3
	ori	$a1, $zero, 61
	b	.LBB1_14
.LBB1_13:
	ld.b	$a2, $a1, 0
	srli.d	$a2, $a2, 4
	or	$a2, $a2, $a5
	andi	$a2, $a2, 63
	addi.d	$a2, $a2, 32
	st.b	$a2, $a4, -3
	ld.b	$a1, $a1, 0
	slli.d	$a1, $a1, 2
	andi	$a1, $a1, 60
	addi.d	$a1, $a1, 32
.LBB1_14:                               # %.thread
	st.b	$a1, $a4, -2
	ori	$a1, $zero, 61
	st.b	$a1, $a4, -1
.LBB1_15:                               # %._crit_edge.loopexit
	bstrpick.d	$a4, $a0, 31, 0
	addi.d	$sp, $fp, -160
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
.LBB1_16:                               # %._crit_edge
	ori	$a0, $zero, 10
	stx.h	$a0, $a3, $a4
	ret
.Lfunc_end1:
	.size	encode_line, .Lfunc_end1-encode_line
                                        # -- End function
	.globl	encode                          # -- Begin function encode
	.p2align	5
	.type	encode,@function
encode:                                 # @encode
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	ori	$a3, $zero, 1
	move	$fp, $a2
	blt	$a1, $a3, .LBB2_6
# %bb.1:                                # %.lr.ph.preheader
	move	$s0, $a1
	move	$s1, $a0
	move	$s2, $zero
	ori	$s3, $zero, 45
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_2:                                #   in Loop: Header=BB2_4 Depth=1
	ori	$a2, $zero, 45
	addi.d	$a3, $sp, 1
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(encode_line)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, 45
.LBB2_3:                                #   in Loop: Header=BB2_4 Depth=1
	addi.d	$a1, $sp, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$fp, $fp, $a0
	bge	$s2, $s0, .LBB2_6
.LBB2_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	sub.w	$a2, $s0, $s2
	bge	$a2, $s3, .LBB2_2
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	addi.d	$a3, $sp, 1
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(encode_line)
	jirl	$ra, $ra, 0
	move	$s2, $s0
	b	.LBB2_3
.LBB2_6:                                # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ld.w	$a2, $a1, 0
	ld.h	$a1, $a1, 4
	add.d	$a3, $fp, $a0
	stx.w	$a2, $fp, $a0
	st.h	$a1, $a3, 4
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end2:
	.size	encode, .Lfunc_end2-encode
                                        # -- End function
	.globl	do_encode                       # -- Begin function do_encode
	.p2align	5
	.type	do_encode,@function
do_encode:                              # @do_encode
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(.L.str.1)
	addi.d	$a4, $a4, %pc_lo12(.L.str.1)
	ld.w	$a5, $a4, 7
	ld.d	$a4, $a4, 0
	move	$s0, $a2
	move	$fp, $a1
	move	$s1, $a0
	st.w	$a5, $a1, 7
	st.d	$a4, $a1, 0
	move	$a0, $a1
	move	$a1, $a3
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	ld.h	$a2, $a1, 0
	ld.b	$a1, $a1, 2
	add.d	$a3, $fp, $a0
	stx.h	$a2, $fp, $a0
	st.b	$a1, $a3, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	add.d	$s2, $fp, $a0
	blt	$s0, $a1, .LBB3_6
# %bb.1:                                # %.lr.ph.i.preheader
	move	$s3, $zero
	ori	$s4, $zero, 45
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_2:                                #   in Loop: Header=BB3_4 Depth=1
	ori	$a2, $zero, 45
	addi.d	$a3, $sp, 9
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(encode_line)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, 45
.LBB3_3:                                #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a1, $sp, 9
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$s2, $s2, $a0
	bge	$s3, $s0, .LBB3_6
.LBB3_4:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	sub.w	$a2, $s0, $s3
	bge	$a2, $s4, .LBB3_2
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a3, $sp, 9
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(encode_line)
	jirl	$ra, $ra, 0
	move	$s3, $s0
	b	.LBB3_3
.LBB3_6:                                # %encode.exit
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ld.w	$a2, $a1, 0
	ld.h	$a1, $a1, 4
	add.d	$a3, $s2, $a0
	stx.w	$a2, $s2, $a0
	st.h	$a1, $a3, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end3:
	.size	do_encode, .Lfunc_end3-do_encode
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -448
	st.d	$ra, $sp, 440                   # 8-byte Folded Spill
	st.d	$fp, $sp, 432                   # 8-byte Folded Spill
	st.d	$s0, $sp, 424                   # 8-byte Folded Spill
	st.d	$s1, $sp, 416                   # 8-byte Folded Spill
	st.d	$s2, $sp, 408                   # 8-byte Folded Spill
	st.d	$s3, $sp, 400                   # 8-byte Folded Spill
	st.d	$s4, $sp, 392                   # 8-byte Folded Spill
	st.d	$s5, $sp, 384                   # 8-byte Folded Spill
	st.d	$s6, $sp, 376                   # 8-byte Folded Spill
	st.d	$s7, $sp, 368                   # 8-byte Folded Spill
	st.d	$s8, $sp, 360                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 448
	bstrins.d	$sp, $zero, 4, 0
	move	$s4, $a1
	move	$s3, $a0
	lu12i.w	$a0, 244
	ori	$s2, $a0, 576
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	lu12i.w	$a0, 488
	ori	$a0, $a0, 1152
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	move	$s0, $a0
	blt	$s3, $a1, .LBB4_3
# %bb.1:
	ld.d	$a0, $s4, 8
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_28
# %bb.2:
	ld.d	$a0, $s4, 8
	pcaddu18i	$ra, %call36(perror)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB4_3:
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$a0, $a0, %got_pc_lo12(stdin)
	ld.d	$a3, $a0, 0
	ori	$a0, $zero, 1
	bne	$s3, $a0, .LBB4_29
.LBB4_4:
	ori	$a1, $zero, 1
	move	$a0, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	addi.d	$a0, $sp, 280
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	addi.w	$s5, $s6, 0
	blez	$s5, .LBB4_30
# %bb.5:                                # %.lr.ph.i.i.preheader.us.preheader
	move	$a2, $zero
	addi.d	$a0, $s1, 1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a0, $s1, 2
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ld.w	$a1, $a0, 7
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 7
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ld.h	$a1, $a0, 0
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ld.b	$a0, $a0, 2
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$s8, $zero, 10
	addi.d	$s7, $sp, 296
	lu12i.w	$a0, -349526
	ori	$a0, $a0, 2731
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1365
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$s4, $zero, 2
	xvrepli.b	$xr0, 32
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_6:                                # %do_encode.exit.loopexit.us
                                        #   in Loop: Header=BB4_7 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ld.w	$a2, $a1, 0
	ld.h	$a1, $a1, 4
	add.d	$a3, $s3, $a0
	stx.w	$a2, $s3, $a0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	st.h	$a1, $a3, 4
	ori	$a0, $zero, 1000
	beq	$a2, $a0, .LBB4_32
.LBB4_7:                                # %.lr.ph.i.i.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_13 Depth 2
                                        #       Child Loop BB4_20 Depth 3
                                        #       Child Loop BB4_23 Depth 3
                                        #       Child Loop BB4_15 Depth 3
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.w	$a0, $s0, 7
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $s0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $s0, $a0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	stx.d	$a2, $s0, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.w	$a0, $a1, 7
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $s0, $a0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	stx.h	$a2, $s0, $a0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.b	$a0, $a1, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $zero
	add.d	$s3, $s0, $a0
	b	.LBB4_13
.LBB4_8:                                #   in Loop: Header=BB4_13 Depth=2
	andi	$a0, $a4, 48
	ori	$a3, $zero, 61
.LBB4_9:                                # %.thread.i.us
                                        #   in Loop: Header=BB4_13 Depth=2
	addi.d	$a0, $a0, 32
	st.b	$a0, $a2, -3
	st.b	$a3, $a2, -2
	ori	$a0, $zero, 61
	st.b	$a0, $a2, -1
.LBB4_10:                               # %._crit_edge.loopexit.i.us
                                        #   in Loop: Header=BB4_13 Depth=2
	bstrpick.d	$a1, $a1, 31, 0
.LBB4_11:                               # %encode_line.exit.us
                                        #   in Loop: Header=BB4_13 Depth=2
	move	$s2, $s6
	stx.h	$s8, $a1, $s7
.LBB4_12:                               #   in Loop: Header=BB4_13 Depth=2
	addi.d	$a1, $sp, 296
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s2, 0
	add.d	$s3, $s3, $a0
	bge	$a1, $s5, .LBB4_6
.LBB4_13:                               # %.lr.ph.i.i.us
                                        #   Parent Loop BB4_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_20 Depth 3
                                        #       Child Loop BB4_23 Depth 3
                                        #       Child Loop BB4_15 Depth 3
	sub.w	$a0, $s6, $s2
	ori	$a1, $zero, 44
	bge	$a1, $a0, .LBB4_17
# %bb.14:                               #   in Loop: Header=BB4_13 Depth=2
	ori	$a0, $zero, 77
	st.b	$a0, $sp, 296
	addi.w	$a0, $s2, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	addi.d	$a1, $sp, 300
	addi.d	$a2, $zero, -45
	.p2align	4, , 16
.LBB4_15:                               #   Parent Loop BB4_7 Depth=1
                                        #     Parent Loop BB4_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a3, $a0, -2
	srli.d	$a4, $a3, 2
	ld.b	$a5, $a0, -1
	addi.d	$a4, $a4, 32
	st.b	$a4, $a1, -3
	slli.d	$a3, $a3, 4
	srli.d	$a4, $a5, 4
	or	$a3, $a4, $a3
	andi	$a3, $a3, 63
	ld.b	$a4, $a0, 0
	addi.d	$a3, $a3, 32
	st.b	$a3, $a1, -2
	slli.d	$a3, $a5, 2
	srli.d	$a5, $a4, 6
	or	$a3, $a5, $a3
	andi	$a3, $a3, 63
	addi.d	$a3, $a3, 32
	st.b	$a3, $a1, -1
	andi	$a3, $a4, 63
	addi.d	$a3, $a3, 32
	st.b	$a3, $a1, 0
	addi.w	$a2, $a2, 3
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, 3
	bnez	$a2, .LBB4_15
# %bb.16:                               # %encode_line.exit40.us
                                        #   in Loop: Header=BB4_13 Depth=2
	st.h	$s8, $sp, 357
	addi.d	$s2, $s2, 45
	b	.LBB4_12
	.p2align	4, , 16
.LBB4_17:                               #   in Loop: Header=BB4_13 Depth=2
	andi	$a1, $a0, 63
	addi.d	$a2, $a1, 32
	ori	$a1, $zero, 1
	st.b	$a2, $sp, 296
	blt	$a0, $a1, .LBB4_11
# %bb.18:                               # %.lr.ph.preheader.i.us
                                        #   in Loop: Header=BB4_13 Depth=2
	addi.w	$a1, $s2, 0
	bstrpick.d	$a2, $a0, 31, 0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	mul.d	$a2, $a2, $a3
	srli.d	$a2, $a2, 33
	sub.d	$a3, $s2, $s6
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	mul.d	$a3, $a3, $a4
	addi.w	$a3, $a3, -1
	sltu	$a4, $a2, $a3
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a4, $a2, $a3
	ori	$a2, $zero, 1
	ori	$a6, $zero, 32
	bltu	$a4, $a6, .LBB4_22
# %bb.19:                               # %vector.ph
                                        #   in Loop: Header=BB4_13 Depth=2
	move	$a3, $zero
	addi.w	$a2, $a4, 1
	andi	$a4, $a2, 31
	sltui	$a5, $a4, 1
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a6, $a5
	or	$a4, $a5, $a4
	sub.d	$a4, $a2, $a4
	alsl.d	$a6, $a4, $a4, 1
	add.d	$a5, $a6, $a1
	slli.d	$a2, $a4, 2
	addi.d	$a2, $a2, 1
	sub.w	$a0, $a0, $a6
	xvld	$xr3, $sp, 64                   # 32-byte Folded Reload
	.p2align	4, , 16
.LBB4_20:                               # %vector.body
                                        #   Parent Loop BB4_7 Depth=1
                                        #     Parent Loop BB4_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	alsl.d	$a6, $a3, $a3, 1
	add.d	$a7, $a6, $a1
	add.d	$a6, $s1, $a7
	ldx.b	$a7, $s1, $a7
	ld.b	$t0, $a6, 3
	ld.b	$t1, $a6, 6
	ld.b	$t2, $a6, 9
	vinsgr2vr.b	$vr1, $a7, 0
	ld.b	$a7, $a6, 12
	vinsgr2vr.b	$vr1, $t0, 1
	ld.b	$t0, $a6, 15
	vinsgr2vr.b	$vr1, $t1, 2
	ld.b	$t1, $a6, 18
	vinsgr2vr.b	$vr1, $t2, 3
	ld.b	$t2, $a6, 21
	vinsgr2vr.b	$vr1, $a7, 4
	ld.b	$a7, $a6, 24
	vinsgr2vr.b	$vr1, $t0, 5
	ld.b	$t0, $a6, 27
	vinsgr2vr.b	$vr1, $t1, 6
	ld.b	$t1, $a6, 30
	vinsgr2vr.b	$vr1, $t2, 7
	ld.b	$t2, $a6, 33
	vinsgr2vr.b	$vr1, $a7, 8
	ld.b	$a7, $a6, 36
	vinsgr2vr.b	$vr1, $t0, 9
	ld.b	$t0, $a6, 39
	vinsgr2vr.b	$vr1, $t1, 10
	ld.b	$t1, $a6, 42
	vinsgr2vr.b	$vr1, $t2, 11
	ld.b	$t2, $a6, 45
	vinsgr2vr.b	$vr1, $a7, 12
	ld.b	$a7, $a6, 48
	vinsgr2vr.b	$vr1, $t0, 13
	vinsgr2vr.b	$vr1, $t1, 14
	vinsgr2vr.b	$vr1, $t2, 15
	ld.b	$t0, $a6, 51
	xvori.b	$xr0, $xr1, 0
	xvpermi.q	$xr0, $xr1, 1
	vinsgr2vr.b	$vr0, $a7, 0
	xvpermi.q	$xr1, $xr0, 2
	ld.b	$a7, $a6, 54
	xvori.b	$xr0, $xr1, 0
	xvpermi.q	$xr0, $xr1, 1
	vinsgr2vr.b	$vr0, $t0, 1
	xvpermi.q	$xr1, $xr0, 2
	ld.b	$t0, $a6, 57
	xvori.b	$xr0, $xr1, 0
	xvpermi.q	$xr0, $xr1, 1
	vinsgr2vr.b	$vr0, $a7, 2
	xvpermi.q	$xr1, $xr0, 2
	ld.b	$a7, $a6, 60
	xvori.b	$xr0, $xr1, 0
	xvpermi.q	$xr0, $xr1, 1
	vinsgr2vr.b	$vr0, $t0, 3
	xvpermi.q	$xr1, $xr0, 2
	ld.b	$t0, $a6, 63
	xvori.b	$xr0, $xr1, 0
	xvpermi.q	$xr0, $xr1, 1
	vinsgr2vr.b	$vr0, $a7, 4
	xvpermi.q	$xr1, $xr0, 2
	ld.b	$a7, $a6, 66
	xvori.b	$xr0, $xr1, 0
	xvpermi.q	$xr0, $xr1, 1
	vinsgr2vr.b	$vr0, $t0, 5
	xvpermi.q	$xr1, $xr0, 2
	ld.b	$t0, $a6, 69
	xvori.b	$xr0, $xr1, 0
	xvpermi.q	$xr0, $xr1, 1
	vinsgr2vr.b	$vr0, $a7, 6
	xvpermi.q	$xr1, $xr0, 2
	ld.b	$a7, $a6, 72
	xvori.b	$xr0, $xr1, 0
	xvpermi.q	$xr0, $xr1, 1
	vinsgr2vr.b	$vr0, $t0, 7
	xvpermi.q	$xr1, $xr0, 2
	ld.b	$t0, $a6, 75
	xvori.b	$xr0, $xr1, 0
	xvpermi.q	$xr0, $xr1, 1
	vinsgr2vr.b	$vr0, $a7, 8
	xvpermi.q	$xr1, $xr0, 2
	ld.b	$a7, $a6, 78
	xvori.b	$xr0, $xr1, 0
	xvpermi.q	$xr0, $xr1, 1
	vinsgr2vr.b	$vr0, $t0, 9
	xvpermi.q	$xr1, $xr0, 2
	ld.b	$t0, $a6, 81
	xvori.b	$xr0, $xr1, 0
	xvpermi.q	$xr0, $xr1, 1
	vinsgr2vr.b	$vr0, $a7, 10
	xvpermi.q	$xr1, $xr0, 2
	ld.b	$a7, $a6, 84
	xvori.b	$xr0, $xr1, 0
	xvpermi.q	$xr0, $xr1, 1
	vinsgr2vr.b	$vr0, $t0, 11
	xvpermi.q	$xr1, $xr0, 2
	ld.b	$t0, $a6, 87
	xvori.b	$xr0, $xr1, 0
	xvpermi.q	$xr0, $xr1, 1
	vinsgr2vr.b	$vr0, $a7, 12
	xvpermi.q	$xr1, $xr0, 2
	ld.b	$a7, $a6, 90
	xvori.b	$xr0, $xr1, 0
	xvpermi.q	$xr0, $xr1, 1
	vinsgr2vr.b	$vr0, $t0, 13
	xvpermi.q	$xr1, $xr0, 2
	ld.b	$t0, $a6, 93
	xvori.b	$xr0, $xr1, 0
	xvpermi.q	$xr0, $xr1, 1
	vinsgr2vr.b	$vr0, $a7, 14
	xvpermi.q	$xr1, $xr0, 2
	xvori.b	$xr0, $xr1, 0
	xvpermi.q	$xr0, $xr1, 1
	vinsgr2vr.b	$vr0, $t0, 15
	xvpermi.q	$xr1, $xr0, 2
	xvsrli.b	$xr0, $xr1, 2
	xvadd.b	$xr0, $xr0, $xr3
	alsl.d	$a7, $a3, $s7, 2
	xvstelm.b	$xr0, $a7, 1, 0
	xvstelm.b	$xr0, $a7, 5, 1
	xvstelm.b	$xr0, $a7, 9, 2
	xvstelm.b	$xr0, $a7, 13, 3
	xvstelm.b	$xr0, $a7, 17, 4
	xvstelm.b	$xr0, $a7, 21, 5
	xvstelm.b	$xr0, $a7, 25, 6
	xvstelm.b	$xr0, $a7, 29, 7
	xvstelm.b	$xr0, $a7, 33, 8
	xvstelm.b	$xr0, $a7, 37, 9
	xvstelm.b	$xr0, $a7, 41, 10
	xvstelm.b	$xr0, $a7, 45, 11
	xvstelm.b	$xr0, $a7, 49, 12
	xvstelm.b	$xr0, $a7, 53, 13
	xvstelm.b	$xr0, $a7, 57, 14
	xvstelm.b	$xr0, $a7, 61, 15
	xvst	$xr0, $sp, 128
	ld.b	$t0, $sp, 144
	st.b	$t0, $a7, 65
	ld.b	$t0, $sp, 145
	st.b	$t0, $a7, 69
	ld.b	$t0, $sp, 146
	st.b	$t0, $a7, 73
	ld.b	$t0, $sp, 147
	st.b	$t0, $a7, 77
	ld.b	$t0, $sp, 148
	st.b	$t0, $a7, 81
	ld.b	$t0, $sp, 149
	st.b	$t0, $a7, 85
	ld.b	$t0, $sp, 150
	st.b	$t0, $a7, 89
	ld.b	$t0, $sp, 151
	st.b	$t0, $a7, 93
	ld.b	$t0, $sp, 152
	st.b	$t0, $a7, 97
	ld.b	$t0, $sp, 153
	st.b	$t0, $a7, 101
	ld.b	$t0, $sp, 154
	st.b	$t0, $a7, 105
	ld.b	$t0, $sp, 155
	st.b	$t0, $a7, 109
	ld.b	$t0, $sp, 156
	st.b	$t0, $a7, 113
	ld.b	$t0, $sp, 157
	st.b	$t0, $a7, 117
	ld.b	$t0, $sp, 158
	st.b	$t0, $a7, 121
	ld.b	$t0, $sp, 159
	ld.b	$t1, $a6, 1
	st.b	$t0, $a7, 125
	ld.b	$t0, $a6, 4
	ld.b	$t2, $a6, 7
	vinsgr2vr.b	$vr0, $t1, 0
	ld.b	$t1, $a6, 10
	vinsgr2vr.b	$vr0, $t0, 1
	ld.b	$t0, $a6, 13
	vinsgr2vr.b	$vr0, $t2, 2
	ld.b	$t2, $a6, 16
	vinsgr2vr.b	$vr0, $t1, 3
	ld.b	$t1, $a6, 19
	vinsgr2vr.b	$vr0, $t0, 4
	ld.b	$t0, $a6, 22
	vinsgr2vr.b	$vr0, $t2, 5
	ld.b	$t2, $a6, 25
	vinsgr2vr.b	$vr0, $t1, 6
	ld.b	$t1, $a6, 28
	vinsgr2vr.b	$vr0, $t0, 7
	ld.b	$t0, $a6, 31
	vinsgr2vr.b	$vr0, $t2, 8
	ld.b	$t2, $a6, 34
	vinsgr2vr.b	$vr0, $t1, 9
	ld.b	$t1, $a6, 37
	vinsgr2vr.b	$vr0, $t0, 10
	ld.b	$t0, $a6, 40
	vinsgr2vr.b	$vr0, $t2, 11
	ld.b	$t2, $a6, 43
	vinsgr2vr.b	$vr0, $t1, 12
	ld.b	$t1, $a6, 46
	vinsgr2vr.b	$vr0, $t0, 13
	ld.b	$t0, $a6, 49
	vinsgr2vr.b	$vr0, $t2, 14
	vinsgr2vr.b	$vr0, $t1, 15
	ld.b	$t1, $a6, 52
	xvori.b	$xr2, $xr0, 0
	xvpermi.q	$xr2, $xr0, 1
	vinsgr2vr.b	$vr2, $t0, 0
	xvpermi.q	$xr0, $xr2, 2
	ld.b	$t0, $a6, 55
	xvori.b	$xr2, $xr0, 0
	xvpermi.q	$xr2, $xr0, 1
	vinsgr2vr.b	$vr2, $t1, 1
	xvpermi.q	$xr0, $xr2, 2
	ld.b	$t1, $a6, 58
	xvori.b	$xr2, $xr0, 0
	xvpermi.q	$xr2, $xr0, 1
	vinsgr2vr.b	$vr2, $t0, 2
	xvpermi.q	$xr0, $xr2, 2
	ld.b	$t0, $a6, 61
	xvori.b	$xr2, $xr0, 0
	xvpermi.q	$xr2, $xr0, 1
	vinsgr2vr.b	$vr2, $t1, 3
	xvpermi.q	$xr0, $xr2, 2
	ld.b	$t1, $a6, 64
	xvori.b	$xr2, $xr0, 0
	xvpermi.q	$xr2, $xr0, 1
	vinsgr2vr.b	$vr2, $t0, 4
	xvpermi.q	$xr0, $xr2, 2
	ld.b	$t0, $a6, 67
	xvori.b	$xr2, $xr0, 0
	xvpermi.q	$xr2, $xr0, 1
	vinsgr2vr.b	$vr2, $t1, 5
	xvpermi.q	$xr0, $xr2, 2
	ld.b	$t1, $a6, 70
	xvori.b	$xr2, $xr0, 0
	xvpermi.q	$xr2, $xr0, 1
	vinsgr2vr.b	$vr2, $t0, 6
	xvpermi.q	$xr0, $xr2, 2
	ld.b	$t0, $a6, 73
	xvori.b	$xr2, $xr0, 0
	xvpermi.q	$xr2, $xr0, 1
	vinsgr2vr.b	$vr2, $t1, 7
	xvpermi.q	$xr0, $xr2, 2
	ld.b	$t1, $a6, 76
	xvori.b	$xr2, $xr0, 0
	xvpermi.q	$xr2, $xr0, 1
	vinsgr2vr.b	$vr2, $t0, 8
	xvpermi.q	$xr0, $xr2, 2
	ld.b	$t0, $a6, 79
	xvori.b	$xr2, $xr0, 0
	xvpermi.q	$xr2, $xr0, 1
	vinsgr2vr.b	$vr2, $t1, 9
	xvpermi.q	$xr0, $xr2, 2
	ld.b	$t1, $a6, 82
	xvori.b	$xr2, $xr0, 0
	xvpermi.q	$xr2, $xr0, 1
	vinsgr2vr.b	$vr2, $t0, 10
	xvpermi.q	$xr0, $xr2, 2
	ld.b	$t0, $a6, 85
	xvori.b	$xr2, $xr0, 0
	xvpermi.q	$xr2, $xr0, 1
	vinsgr2vr.b	$vr2, $t1, 11
	xvpermi.q	$xr0, $xr2, 2
	ld.b	$t1, $a6, 88
	xvori.b	$xr2, $xr0, 0
	xvpermi.q	$xr2, $xr0, 1
	vinsgr2vr.b	$vr2, $t0, 12
	xvpermi.q	$xr0, $xr2, 2
	ld.b	$t0, $a6, 91
	xvori.b	$xr2, $xr0, 0
	xvpermi.q	$xr2, $xr0, 1
	vinsgr2vr.b	$vr2, $t1, 13
	xvpermi.q	$xr0, $xr2, 2
	ld.b	$t1, $a6, 94
	xvori.b	$xr2, $xr0, 0
	xvpermi.q	$xr2, $xr0, 1
	vinsgr2vr.b	$vr2, $t0, 14
	xvpermi.q	$xr0, $xr2, 2
	xvslli.b	$xr1, $xr1, 4
	xvori.b	$xr2, $xr0, 0
	xvpermi.q	$xr2, $xr0, 1
	vinsgr2vr.b	$vr2, $t1, 15
	xvpermi.q	$xr0, $xr2, 2
	xvsrai.b	$xr2, $xr0, 4
	xvor.v	$xr1, $xr2, $xr1
	xvandi.b	$xr1, $xr1, 63
	xvadd.b	$xr1, $xr1, $xr3
	xvstelm.b	$xr1, $a7, 2, 0
	xvstelm.b	$xr1, $a7, 6, 1
	xvstelm.b	$xr1, $a7, 10, 2
	xvstelm.b	$xr1, $a7, 14, 3
	xvstelm.b	$xr1, $a7, 18, 4
	xvstelm.b	$xr1, $a7, 22, 5
	xvstelm.b	$xr1, $a7, 26, 6
	xvstelm.b	$xr1, $a7, 30, 7
	xvstelm.b	$xr1, $a7, 34, 8
	xvstelm.b	$xr1, $a7, 38, 9
	xvstelm.b	$xr1, $a7, 42, 10
	xvstelm.b	$xr1, $a7, 46, 11
	xvstelm.b	$xr1, $a7, 50, 12
	xvstelm.b	$xr1, $a7, 54, 13
	xvstelm.b	$xr1, $a7, 58, 14
	xvstelm.b	$xr1, $a7, 62, 15
	xvst	$xr1, $sp, 160
	ld.b	$t0, $sp, 176
	st.b	$t0, $a7, 66
	ld.b	$t0, $sp, 177
	st.b	$t0, $a7, 70
	ld.b	$t0, $sp, 178
	st.b	$t0, $a7, 74
	ld.b	$t0, $sp, 179
	st.b	$t0, $a7, 78
	ld.b	$t0, $sp, 180
	st.b	$t0, $a7, 82
	ld.b	$t0, $sp, 181
	st.b	$t0, $a7, 86
	ld.b	$t0, $sp, 182
	st.b	$t0, $a7, 90
	ld.b	$t0, $sp, 183
	st.b	$t0, $a7, 94
	ld.b	$t0, $sp, 184
	st.b	$t0, $a7, 98
	ld.b	$t0, $sp, 185
	st.b	$t0, $a7, 102
	ld.b	$t0, $sp, 186
	st.b	$t0, $a7, 106
	ld.b	$t0, $sp, 187
	st.b	$t0, $a7, 110
	ld.b	$t0, $sp, 188
	st.b	$t0, $a7, 114
	ld.b	$t0, $sp, 189
	st.b	$t0, $a7, 118
	ld.b	$t0, $sp, 190
	ld.b	$t1, $a6, 2
	st.b	$t0, $a7, 122
	ld.b	$t0, $a6, 5
	ld.b	$t2, $a6, 8
	vinsgr2vr.b	$vr1, $t1, 0
	ld.b	$t1, $a6, 11
	vinsgr2vr.b	$vr1, $t0, 1
	ld.b	$t0, $a6, 14
	vinsgr2vr.b	$vr1, $t2, 2
	ld.b	$t2, $a6, 17
	vinsgr2vr.b	$vr1, $t1, 3
	ld.b	$t1, $a6, 20
	vinsgr2vr.b	$vr1, $t0, 4
	ld.b	$t0, $a6, 23
	vinsgr2vr.b	$vr1, $t2, 5
	ld.b	$t2, $a6, 26
	vinsgr2vr.b	$vr1, $t1, 6
	ld.b	$t1, $a6, 29
	vinsgr2vr.b	$vr1, $t0, 7
	ld.b	$t0, $a6, 32
	vinsgr2vr.b	$vr1, $t2, 8
	ld.b	$t2, $a6, 35
	vinsgr2vr.b	$vr1, $t1, 9
	ld.b	$t1, $a6, 38
	vinsgr2vr.b	$vr1, $t0, 10
	ld.b	$t0, $a6, 41
	vinsgr2vr.b	$vr1, $t2, 11
	ld.b	$t2, $a6, 44
	vinsgr2vr.b	$vr1, $t1, 12
	ld.b	$t1, $a6, 47
	vinsgr2vr.b	$vr1, $t0, 13
	vinsgr2vr.b	$vr1, $t2, 14
	ld.b	$t0, $a6, 50
	vinsgr2vr.b	$vr1, $t1, 15
	ld.b	$t1, $a6, 53
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t0, 0
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t0, $a6, 56
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t1, 1
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t1, $a6, 59
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t0, 2
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t0, $a6, 62
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t1, 3
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t1, $a6, 65
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t0, 4
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t0, $a6, 68
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t1, 5
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t1, $a6, 71
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t0, 6
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t0, $a6, 74
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t1, 7
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t1, $a6, 77
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t0, 8
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t0, $a6, 80
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t1, 9
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t1, $a6, 83
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t0, 10
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t0, $a6, 86
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t1, 11
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t1, $a6, 89
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t0, 12
	xvpermi.q	$xr1, $xr2, 2
	ld.b	$t0, $sp, 191
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t1, 13
	ld.b	$t1, $a6, 92
	xvpermi.q	$xr1, $xr2, 2
	st.b	$t0, $a7, 126
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $t1, 14
	ld.b	$a6, $a6, 95
	xvpermi.q	$xr1, $xr2, 2
	xvslli.b	$xr0, $xr0, 2
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr2, $a6, 15
	xvpermi.q	$xr1, $xr2, 2
	xvsrai.b	$xr2, $xr1, 6
	xvor.v	$xr0, $xr2, $xr0
	xvandi.b	$xr0, $xr0, 63
	xvadd.b	$xr0, $xr0, $xr3
	xvstelm.b	$xr0, $a7, 3, 0
	xvstelm.b	$xr0, $a7, 7, 1
	xvstelm.b	$xr0, $a7, 11, 2
	xvstelm.b	$xr0, $a7, 15, 3
	xvstelm.b	$xr0, $a7, 19, 4
	xvstelm.b	$xr0, $a7, 23, 5
	xvstelm.b	$xr0, $a7, 27, 6
	xvstelm.b	$xr0, $a7, 31, 7
	xvstelm.b	$xr0, $a7, 35, 8
	xvstelm.b	$xr0, $a7, 39, 9
	xvstelm.b	$xr0, $a7, 43, 10
	xvstelm.b	$xr0, $a7, 47, 11
	xvstelm.b	$xr0, $a7, 51, 12
	xvstelm.b	$xr0, $a7, 55, 13
	xvstelm.b	$xr0, $a7, 59, 14
	xvstelm.b	$xr0, $a7, 63, 15
	xvst	$xr0, $sp, 224
	ld.b	$a6, $sp, 240
	st.b	$a6, $a7, 67
	ld.b	$a6, $sp, 241
	st.b	$a6, $a7, 71
	ld.b	$a6, $sp, 242
	st.b	$a6, $a7, 75
	ld.b	$a6, $sp, 243
	st.b	$a6, $a7, 79
	ld.b	$a6, $sp, 244
	st.b	$a6, $a7, 83
	ld.b	$a6, $sp, 245
	st.b	$a6, $a7, 87
	ld.b	$a6, $sp, 246
	st.b	$a6, $a7, 91
	ld.b	$a6, $sp, 247
	st.b	$a6, $a7, 95
	ld.b	$a6, $sp, 248
	st.b	$a6, $a7, 99
	ld.b	$a6, $sp, 249
	st.b	$a6, $a7, 103
	ld.b	$a6, $sp, 250
	st.b	$a6, $a7, 107
	ld.b	$a6, $sp, 251
	st.b	$a6, $a7, 111
	ld.b	$a6, $sp, 252
	st.b	$a6, $a7, 115
	ld.b	$a6, $sp, 253
	st.b	$a6, $a7, 119
	ld.b	$a6, $sp, 254
	st.b	$a6, $a7, 123
	ld.b	$a6, $sp, 255
	st.b	$a6, $a7, 127
	xvandi.b	$xr0, $xr1, 63
	xvadd.b	$xr0, $xr0, $xr3
	xvstelm.b	$xr0, $a7, 4, 0
	xvstelm.b	$xr0, $a7, 8, 1
	xvstelm.b	$xr0, $a7, 12, 2
	xvstelm.b	$xr0, $a7, 16, 3
	xvstelm.b	$xr0, $a7, 20, 4
	xvstelm.b	$xr0, $a7, 24, 5
	xvstelm.b	$xr0, $a7, 28, 6
	xvstelm.b	$xr0, $a7, 32, 7
	xvstelm.b	$xr0, $a7, 36, 8
	xvstelm.b	$xr0, $a7, 40, 9
	xvstelm.b	$xr0, $a7, 44, 10
	xvstelm.b	$xr0, $a7, 48, 11
	xvstelm.b	$xr0, $a7, 52, 12
	xvstelm.b	$xr0, $a7, 56, 13
	xvstelm.b	$xr0, $a7, 60, 14
	xvstelm.b	$xr0, $a7, 64, 15
	xvst	$xr0, $sp, 192
	ld.b	$a6, $sp, 208
	st.b	$a6, $a7, 68
	ld.b	$a6, $sp, 209
	st.b	$a6, $a7, 72
	ld.b	$a6, $sp, 210
	st.b	$a6, $a7, 76
	ld.b	$a6, $sp, 211
	st.b	$a6, $a7, 80
	ld.b	$a6, $sp, 212
	st.b	$a6, $a7, 84
	ld.b	$a6, $sp, 213
	st.b	$a6, $a7, 88
	ld.b	$a6, $sp, 214
	st.b	$a6, $a7, 92
	ld.b	$a6, $sp, 215
	st.b	$a6, $a7, 96
	ld.b	$a6, $sp, 216
	st.b	$a6, $a7, 100
	ld.b	$a6, $sp, 217
	st.b	$a6, $a7, 104
	ld.b	$a6, $sp, 218
	st.b	$a6, $a7, 108
	ld.b	$a6, $sp, 219
	st.b	$a6, $a7, 112
	ld.b	$a6, $sp, 220
	st.b	$a6, $a7, 116
	ld.b	$a6, $sp, 221
	st.b	$a6, $a7, 120
	ld.b	$a6, $sp, 222
	st.b	$a6, $a7, 124
	ld.b	$a6, $sp, 223
	addi.d	$a3, $a3, 32
	st.b	$a6, $a7, 128
	bne	$a3, $a4, .LBB4_20
# %bb.21:                               #   in Loop: Header=BB4_13 Depth=2
	move	$a1, $a5
.LBB4_22:                               # %.lr.ph.i.us.preheader
                                        #   in Loop: Header=BB4_13 Depth=2
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a1
	addi.d	$a1, $a2, 4
	.p2align	4, , 16
.LBB4_23:                               # %.lr.ph.i.us
                                        #   Parent Loop BB4_7 Depth=1
                                        #     Parent Loop BB4_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bgeu	$s4, $a0, .LBB4_26
# %bb.24:                               #   in Loop: Header=BB4_23 Depth=3
	ld.bu	$a2, $a3, -1
	srli.d	$a4, $a2, 2
	addi.d	$a4, $a4, 32
	ld.b	$a5, $a3, 0
	add.d	$a6, $s7, $a1
	st.b	$a4, $a6, -4
	slli.d	$a2, $a2, 4
	srli.d	$a4, $a5, 4
	or	$a2, $a4, $a2
	andi	$a2, $a2, 63
	ld.b	$a4, $a3, 1
	addi.d	$a2, $a2, 32
	st.b	$a2, $a6, -3
	slli.d	$a2, $a5, 2
	srli.d	$a5, $a4, 6
	or	$a2, $a5, $a2
	andi	$a2, $a2, 63
	addi.d	$a2, $a2, 32
	st.b	$a2, $a6, -2
	andi	$a2, $a4, 63
	addi.d	$a2, $a2, 32
	st.b	$a2, $a6, -1
	addi.w	$a0, $a0, -3
	addi.d	$a3, $a3, 3
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB4_23
# %bb.25:                               # %._crit_edge.loopexit.i.us.loopexit
                                        #   in Loop: Header=BB4_13 Depth=2
	addi.d	$a1, $a1, -4
	b	.LBB4_10
.LBB4_26:                               #   in Loop: Header=BB4_13 Depth=2
	ld.bu	$a4, $a3, -1
	srli.d	$a2, $a4, 2
	addi.d	$a5, $a2, 32
	add.d	$a2, $s7, $a1
	st.b	$a5, $a2, -4
	slli.d	$a4, $a4, 4
	ori	$a5, $zero, 1
	beq	$a0, $a5, .LBB4_8
# %bb.27:                               #   in Loop: Header=BB4_13 Depth=2
	ld.b	$a3, $a3, 0
	srli.d	$a0, $a3, 4
	or	$a0, $a0, $a4
	andi	$a0, $a0, 63
	slli.d	$a3, $a3, 2
	andi	$a3, $a3, 60
	addi.d	$a3, $a3, 32
	b	.LBB4_9
.LBB4_28:
	move	$a3, $a0
	addi.w	$s3, $s3, -1
	ori	$a0, $zero, 1
	beq	$s3, $a0, .LBB4_4
.LBB4_29:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB4_30:                               # %do_encode.exit.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ld.w	$a1, $a0, 7
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ld.d	$s4, $a0, 0
	ld.w	$s5, $a0, 7
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ld.h	$s6, $a0, 0
	ld.b	$s7, $a0, 2
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.w	$s8, $a0, 0
	ld.h	$s2, $a0, 4
	ori	$s3, $zero, 1000
	.p2align	4, , 16
.LBB4_31:                               # %do_encode.exit
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.w	$a0, $s0, 7
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $s0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $s0, $a0
	stx.d	$s4, $s0, $a0
	st.w	$s5, $a1, 7
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $s0, $a0
	stx.h	$s6, $s0, $a0
	st.b	$s7, $a1, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$s1, $s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $s1, $a0
	stx.w	$s8, $s1, $a0
	addi.w	$s3, $s3, -1
	st.h	$s2, $a1, 4
	bnez	$s3, .LBB4_31
.LBB4_32:                               # %.split50.us
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$a0, $sp, 296
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" \nend"
	.size	.L.str, 6

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.1:
	.asciz	"begin 640 "
	.size	.L.str.1, 11

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	" \n"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"r"
	.size	.L.str.3, 2

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.5:
	.asciz	"uuencode.c"
	.size	.L.str.5, 11

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"%d\n"
	.size	.L.str.6, 4

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Usage: uuencode [infile]"
	.size	.Lstr, 25

	.section	".note.GNU-stack","",@progbits
	.addrsig
