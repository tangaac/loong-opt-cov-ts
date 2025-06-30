	.file	"HmacSha1.cpp"
	.text
	.globl	_ZN7NCrypto5NSha15CHmac6SetKeyEPKhm # -- Begin function _ZN7NCrypto5NSha15CHmac6SetKeyEPKhm
	.p2align	5
	.type	_ZN7NCrypto5NSha15CHmac6SetKeyEPKhm,@function
_ZN7NCrypto5NSha15CHmac6SetKeyEPKhm:    # @_ZN7NCrypto5NSha15CHmac6SetKeyEPKhm
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 32
	ori	$a0, $zero, 64
	xvst	$xr0, $sp, 0
	bgeu	$a0, $a2, .LBB0_2
# %bb.1:
	move	$a0, $fp
	move	$s0, $a2
	move	$s1, $a1
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha112CContextBase4InitEv)
	jirl	$ra, $ra, 0
	st.w	$zero, $fp, 32
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha18CContext6UpdateEPKhm)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha18CContext5FinalEPh)
	jirl	$ra, $ra, 0
	b	.LBB0_4
.LBB0_2:                                # %.preheader
	beqz	$a2, .LBB0_4
# %bb.3:                                # %.lr.ph.preheader
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_4:                                # %.loopexit
	xvld	$xr0, $sp, 0
	xvld	$xr1, $sp, 32
	xvxori.b	$xr0, $xr0, 54
	xvst	$xr0, $sp, 0
	xvxori.b	$xr0, $xr1, 54
	xvst	$xr0, $sp, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha112CContextBase4InitEv)
	jirl	$ra, $ra, 0
	st.w	$zero, $fp, 32
	addi.d	$a1, $sp, 0
	ori	$a2, $zero, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha18CContext6UpdateEPKhm)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 0
	xvld	$xr1, $sp, 32
	xvxori.b	$xr0, $xr0, 106
	xvst	$xr0, $sp, 0
	xvxori.b	$xr0, $xr1, 106
	xvst	$xr0, $sp, 32
	addi.d	$s0, $fp, 104
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha112CContextBase4InitEv)
	jirl	$ra, $ra, 0
	st.w	$zero, $fp, 136
	addi.d	$a1, $sp, 0
	ori	$a2, $zero, 64
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha18CContext6UpdateEPKhm)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end0:
	.size	_ZN7NCrypto5NSha15CHmac6SetKeyEPKhm, .Lfunc_end0-_ZN7NCrypto5NSha15CHmac6SetKeyEPKhm
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7NCrypto5NSha15CHmac5FinalEPhm # -- Begin function _ZN7NCrypto5NSha15CHmac5FinalEPhm
	.p2align	5
	.type	_ZN7NCrypto5NSha15CHmac5FinalEPhm,@function
_ZN7NCrypto5NSha15CHmac5FinalEPhm:      # @_ZN7NCrypto5NSha15CHmac5FinalEPhm
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$s0, $a2
	move	$fp, $a1
	move	$s1, $a0
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha18CContext5FinalEPh)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 104
	addi.d	$a1, $sp, 8
	ori	$a2, $zero, 20
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha18CContext6UpdateEPKhm)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha18CContext5FinalEPh)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB1_2
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_2:                                # %._crit_edge
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end1:
	.size	_ZN7NCrypto5NSha15CHmac5FinalEPhm, .Lfunc_end1-_ZN7NCrypto5NSha15CHmac5FinalEPhm
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN7NCrypto5NSha17CHmac326SetKeyEPKhm
.LCPI2_0:
	.byte	1                               # 0x1
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	4                               # 0x4
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	9                               # 0x9
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	12                              # 0xc
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI2_1:
	.byte	0                               # 0x0
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	5                               # 0x5
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	8                               # 0x8
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	13                              # 0xd
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI2_2:
	.byte	2                               # 0x2
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	6                               # 0x6
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	10                              # 0xa
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	14                              # 0xe
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
	.text
	.globl	_ZN7NCrypto5NSha17CHmac326SetKeyEPKhm
	.p2align	5
	.type	_ZN7NCrypto5NSha17CHmac326SetKeyEPKhm,@function
_ZN7NCrypto5NSha17CHmac326SetKeyEPKhm:  # @_ZN7NCrypto5NSha17CHmac326SetKeyEPKhm
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -224
	.cfi_def_cfa_offset 224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 160
	ori	$a0, $zero, 64
	xvst	$xr0, $sp, 128
	bgeu	$a0, $a2, .LBB2_2
# %bb.1:
	addi.d	$a0, $sp, 24
	move	$s0, $a2
	move	$s1, $a1
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha112CContextBase4InitEv)
	jirl	$ra, $ra, 0
	st.w	$zero, $sp, 56
	addi.d	$a0, $sp, 24
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha18CContext6UpdateEPKhm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha18CContext5FinalEPh)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	vld	$vr1, $a0, %pc_lo12(.LCPI2_0)
	vrepli.b	$vr2, 0
	vshuf.b	$vr1, $vr2, $vr0, $vr1
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	vld	$vr3, $a0, %pc_lo12(.LCPI2_1)
	ori	$a0, $zero, 16
	lu32i.d	$a0, 24
	vreplgr2vr.d	$vr4, $a0
	vsll.w	$vr1, $vr1, $vr4
	vshuf.b	$vr3, $vr2, $vr0, $vr3
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	vld	$vr4, $a0, %pc_lo12(.LCPI2_2)
	ori	$a0, $zero, 24
	lu32i.d	$a0, 16
	vreplgr2vr.d	$vr5, $a0
	vsll.w	$vr3, $vr3, $vr5
	vor.v	$vr1, $vr3, $vr1
	vshuf.b	$vr2, $vr2, $vr0, $vr4
	vslli.w	$vr2, $vr2, 8
	ld.w	$a0, $sp, 16
	vor.v	$vr1, $vr1, $vr2
	vsrli.w	$vr0, $vr0, 24
	vor.v	$vr0, $vr1, $vr0
	revb.2w	$a0, $a0
	b	.LBB2_7
.LBB2_2:                                # %.preheader
	move	$a0, $zero
	beqz	$a2, .LBB2_6
# %bb.3:                                # %.lr.ph.preheader
	move	$a5, $zero
	ori	$a3, $zero, 24
	addi.d	$a4, $sp, 128
	.p2align	4, , 16
.LBB2_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a6, $a1, $a5
	addi.d	$a7, $a5, 1
	bstrins.d	$a5, $zero, 1, 0
	ldx.w	$t0, $a5, $a4
	andn	$t1, $a3, $a0
	sll.w	$a6, $a6, $t1
	or	$a6, $a6, $t0
	stx.w	$a6, $a5, $a4
	addi.d	$a0, $a0, 8
	move	$a5, $a7
	bne	$a2, $a7, .LBB2_4
# %bb.5:                                # %.loopexit.loopexit
	vld	$vr0, $sp, 128
	ld.w	$a0, $sp, 144
	b	.LBB2_7
.LBB2_6:
	vrepli.b	$vr0, 0
.LBB2_7:                                # %.loopexit
	ld.w	$a1, $sp, 148
	ld.d	$a2, $sp, 152
	xvinsgr2vr.w	$xr1, $a0, 0
	xvpermi.d	$xr1, $xr1, 68
	xvinsgr2vr.w	$xr2, $a1, 0
	xvpermi.d	$xr2, $xr2, 68
	xvpackev.w	$xr1, $xr2, $xr1
	xvpermi.q	$xr1, $xr0, 48
	xvpickve2gr.d	$a0, $xr1, 0
	xvinsgr2vr.d	$xr0, $a0, 0
	xvpickve2gr.d	$a0, $xr1, 1
	xvinsgr2vr.d	$xr0, $a0, 1
	xvpickve2gr.d	$a0, $xr1, 2
	xvinsgr2vr.d	$xr0, $a0, 2
	xvinsgr2vr.d	$xr0, $a2, 3
	xvld	$xr1, $sp, 160
	xvrepli.b	$xr2, 54
	xvxor.v	$xr0, $xr0, $xr2
	xvst	$xr0, $sp, 128
	xvxor.v	$xr0, $xr1, $xr2
	xvst	$xr0, $sp, 160
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha112CContextBase4InitEv)
	jirl	$ra, $ra, 0
	st.w	$zero, $fp, 32
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha110CContext326UpdateEPKjm)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 128
	xvld	$xr1, $sp, 160
	xvrepli.b	$xr2, 106
	xvxor.v	$xr0, $xr0, $xr2
	xvst	$xr0, $sp, 128
	xvxor.v	$xr0, $xr1, $xr2
	xvst	$xr0, $sp, 160
	addi.d	$s0, $fp, 104
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha112CContextBase4InitEv)
	jirl	$ra, $ra, 0
	st.w	$zero, $fp, 136
	addi.d	$a1, $sp, 128
	ori	$a2, $zero, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha110CContext326UpdateEPKjm)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.Lfunc_end2:
	.size	_ZN7NCrypto5NSha17CHmac326SetKeyEPKhm, .Lfunc_end2-_ZN7NCrypto5NSha17CHmac326SetKeyEPKhm
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7NCrypto5NSha17CHmac325FinalEPjm # -- Begin function _ZN7NCrypto5NSha17CHmac325FinalEPjm
	.p2align	5
	.type	_ZN7NCrypto5NSha17CHmac325FinalEPjm,@function
_ZN7NCrypto5NSha17CHmac325FinalEPjm:    # @_ZN7NCrypto5NSha17CHmac325FinalEPjm
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$s0, $a2
	move	$fp, $a1
	move	$s1, $a0
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha110CContext325FinalEPj)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 104
	addi.d	$a1, $sp, 8
	ori	$a2, $zero, 5
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha110CContext326UpdateEPKjm)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha110CContext325FinalEPj)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB3_2
# %bb.1:                                # %.lr.ph.preheader
	slli.d	$a2, $s0, 2
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_2:                                # %._crit_edge
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end3:
	.size	_ZN7NCrypto5NSha17CHmac325FinalEPjm, .Lfunc_end3-_ZN7NCrypto5NSha17CHmac325FinalEPjm
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7NCrypto5NSha17CHmac3216GetLoopXorDigestEPjj # -- Begin function _ZN7NCrypto5NSha17CHmac3216GetLoopXorDigestEPjj
	.p2align	5
	.type	_ZN7NCrypto5NSha17CHmac3216GetLoopXorDigestEPjj,@function
_ZN7NCrypto5NSha17CHmac3216GetLoopXorDigestEPjj: # @_ZN7NCrypto5NSha17CHmac3216GetLoopXorDigestEPjj
	.cfi_startproc
# %bb.0:                                # %.preheader
	addi.d	$sp, $sp, -176
	.cfi_def_cfa_offset 176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	addi.d	$a1, $sp, 64
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(_ZNK7NCrypto5NSha112CContextBase12PrepareBlockEPjj)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s1, 104
	addi.d	$a1, $sp, 0
	ori	$a2, $zero, 5
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNK7NCrypto5NSha112CContextBase12PrepareBlockEPjj)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 16
	vld	$vr0, $s0, 0
	st.w	$a0, $sp, 80
	vst	$vr0, $sp, 64
	beqz	$fp, .LBB4_2
	.p2align	4, , 16
.LBB4_1:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 0
	move	$a0, $s1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 0
	addi.d	$a2, $sp, 64
	move	$a0, $s2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 64
	vld	$vr1, $s0, 0
	ld.w	$a0, $sp, 80
	ld.w	$a1, $s0, 16
	vxor.v	$vr0, $vr1, $vr0
	vst	$vr0, $s0, 0
	xor	$a0, $a1, $a0
	addi.w	$fp, $fp, -1
	st.w	$a0, $s0, 16
	bnez	$fp, .LBB4_1
.LBB4_2:                                # %._crit_edge
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end4:
	.size	_ZN7NCrypto5NSha17CHmac3216GetLoopXorDigestEPjj, .Lfunc_end4-_ZN7NCrypto5NSha17CHmac3216GetLoopXorDigestEPjj
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
