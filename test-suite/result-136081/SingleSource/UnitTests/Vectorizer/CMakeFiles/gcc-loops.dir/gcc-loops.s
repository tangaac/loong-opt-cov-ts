	.file	"gcc-loops.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	_Z8example1v                    # -- Begin function _Z8example1v
	.p2align	5
	.type	_Z8example1v,@function
_Z8example1v:                           # @_Z8example1v
# %bb.0:                                # %vector.ph
	pcalau12i	$a0, %pc_hi20(b)
	addi.d	$a0, $a0, %pc_lo12(b)
	xvld	$xr0, $a0, 0
	xvld	$xr1, $a0, 32
	pcalau12i	$a1, %pc_hi20(c)
	addi.d	$a1, $a1, %pc_lo12(c)
	xvld	$xr2, $a1, 0
	xvld	$xr3, $a1, 32
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	pcalau12i	$a2, %pc_hi20(a)
	addi.d	$a2, $a2, %pc_lo12(a)
	xvld	$xr2, $a0, 64
	xvld	$xr3, $a0, 96
	xvld	$xr4, $a1, 64
	xvld	$xr5, $a1, 96
	xvst	$xr0, $a2, 0
	xvst	$xr1, $a2, 32
	xvadd.w	$xr0, $xr4, $xr2
	xvadd.w	$xr1, $xr5, $xr3
	xvld	$xr2, $a0, 128
	xvld	$xr3, $a0, 160
	xvld	$xr4, $a1, 128
	xvld	$xr5, $a1, 160
	xvst	$xr0, $a2, 64
	xvst	$xr1, $a2, 96
	xvadd.w	$xr0, $xr4, $xr2
	xvadd.w	$xr1, $xr5, $xr3
	xvld	$xr2, $a0, 192
	xvld	$xr3, $a0, 224
	xvld	$xr4, $a1, 192
	xvld	$xr5, $a1, 224
	xvst	$xr0, $a2, 128
	xvst	$xr1, $a2, 160
	xvadd.w	$xr0, $xr4, $xr2
	xvadd.w	$xr1, $xr5, $xr3
	xvld	$xr2, $a0, 256
	xvld	$xr3, $a0, 288
	xvld	$xr4, $a1, 256
	xvld	$xr5, $a1, 288
	xvst	$xr0, $a2, 192
	xvst	$xr1, $a2, 224
	xvadd.w	$xr0, $xr4, $xr2
	xvadd.w	$xr1, $xr5, $xr3
	xvld	$xr2, $a0, 320
	xvld	$xr3, $a0, 352
	xvld	$xr4, $a1, 320
	xvld	$xr5, $a1, 352
	xvst	$xr0, $a2, 256
	xvst	$xr1, $a2, 288
	xvadd.w	$xr0, $xr4, $xr2
	xvadd.w	$xr1, $xr5, $xr3
	xvld	$xr2, $a0, 384
	xvld	$xr3, $a0, 416
	xvld	$xr4, $a1, 384
	xvld	$xr5, $a1, 416
	xvst	$xr0, $a2, 320
	xvst	$xr1, $a2, 352
	xvadd.w	$xr0, $xr4, $xr2
	xvadd.w	$xr1, $xr5, $xr3
	xvld	$xr2, $a0, 448
	xvld	$xr3, $a0, 480
	xvld	$xr4, $a1, 448
	xvld	$xr5, $a1, 480
	xvst	$xr0, $a2, 384
	xvst	$xr1, $a2, 416
	xvadd.w	$xr0, $xr4, $xr2
	xvadd.w	$xr1, $xr5, $xr3
	xvld	$xr2, $a0, 512
	xvld	$xr3, $a0, 544
	xvld	$xr4, $a1, 512
	xvld	$xr5, $a1, 544
	xvst	$xr0, $a2, 448
	xvst	$xr1, $a2, 480
	xvadd.w	$xr0, $xr4, $xr2
	xvadd.w	$xr1, $xr5, $xr3
	xvld	$xr2, $a0, 576
	xvld	$xr3, $a0, 608
	xvld	$xr4, $a1, 576
	xvld	$xr5, $a1, 608
	xvst	$xr0, $a2, 512
	xvst	$xr1, $a2, 544
	xvadd.w	$xr0, $xr4, $xr2
	xvadd.w	$xr1, $xr5, $xr3
	xvld	$xr2, $a0, 640
	xvld	$xr3, $a0, 672
	xvld	$xr4, $a1, 640
	xvld	$xr5, $a1, 672
	xvst	$xr0, $a2, 576
	xvst	$xr1, $a2, 608
	xvadd.w	$xr0, $xr4, $xr2
	xvadd.w	$xr1, $xr5, $xr3
	xvld	$xr2, $a0, 704
	xvld	$xr3, $a0, 736
	xvld	$xr4, $a1, 704
	xvld	$xr5, $a1, 736
	xvst	$xr0, $a2, 640
	xvst	$xr1, $a2, 672
	xvadd.w	$xr0, $xr4, $xr2
	xvadd.w	$xr1, $xr5, $xr3
	xvld	$xr2, $a0, 768
	xvld	$xr3, $a0, 800
	xvld	$xr4, $a1, 768
	xvld	$xr5, $a1, 800
	xvst	$xr0, $a2, 704
	xvst	$xr1, $a2, 736
	xvadd.w	$xr0, $xr4, $xr2
	xvadd.w	$xr1, $xr5, $xr3
	xvld	$xr2, $a0, 832
	xvld	$xr3, $a0, 864
	xvld	$xr4, $a1, 832
	xvld	$xr5, $a1, 864
	xvst	$xr0, $a2, 768
	xvst	$xr1, $a2, 800
	xvadd.w	$xr0, $xr4, $xr2
	xvadd.w	$xr1, $xr5, $xr3
	xvld	$xr2, $a0, 896
	xvld	$xr3, $a0, 928
	xvld	$xr4, $a1, 896
	xvld	$xr5, $a1, 928
	xvst	$xr0, $a2, 832
	xvst	$xr1, $a2, 864
	xvadd.w	$xr0, $xr4, $xr2
	xvadd.w	$xr1, $xr5, $xr3
	xvld	$xr2, $a0, 960
	xvld	$xr3, $a0, 992
	xvld	$xr4, $a1, 960
	xvld	$xr5, $a1, 992
	xvst	$xr0, $a2, 896
	xvst	$xr1, $a2, 928
	xvadd.w	$xr0, $xr4, $xr2
	xvadd.w	$xr1, $xr5, $xr3
	xvst	$xr0, $a2, 960
	xvst	$xr1, $a2, 992
	ret
.Lfunc_end0:
	.size	_Z8example1v, .Lfunc_end0-_Z8example1v
                                        # -- End function
	.globl	_Z9example2aii                  # -- Begin function _Z9example2aii
	.p2align	5
	.type	_Z9example2aii,@function
_Z9example2aii:                         # @_Z9example2aii
# %bb.0:
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB1_14
# %bb.1:                                # %iter.check
	ori	$a3, $zero, 4
	pcalau12i	$a2, %pc_hi20(b)
	addi.d	$a2, $a2, %pc_lo12(b)
	bgeu	$a0, $a3, .LBB1_3
# %bb.2:
	move	$a3, $zero
	b	.LBB1_12
.LBB1_3:                                # %vector.main.loop.iter.check
	ori	$a3, $zero, 16
	bgeu	$a0, $a3, .LBB1_5
# %bb.4:
	move	$a3, $zero
	b	.LBB1_9
.LBB1_5:                                # %vector.ph
	bstrpick.d	$a3, $a0, 30, 4
	slli.d	$a3, $a3, 4
	addi.d	$a4, $a2, 32
	xvreplgr2vr.w	$xr0, $a1
	move	$a5, $a3
	.p2align	4, , 16
.LBB1_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a4, -32
	xvst	$xr0, $a4, 0
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB1_6
# %bb.7:                                # %middle.block
	beq	$a3, $a0, .LBB1_14
# %bb.8:                                # %vec.epilog.iter.check
	andi	$a4, $a0, 12
	beqz	$a4, .LBB1_12
.LBB1_9:                                # %vec.epilog.ph
	move	$a5, $a3
	bstrpick.d	$a3, $a0, 30, 2
	slli.d	$a3, $a3, 2
	vreplgr2vr.w	$vr0, $a1
	sub.d	$a4, $a5, $a3
	alsl.d	$a5, $a5, $a2, 2
	.p2align	4, , 16
.LBB1_10:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a5, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 16
	bnez	$a4, .LBB1_10
# %bb.11:                               # %vec.epilog.middle.block
	beq	$a3, $a0, .LBB1_14
.LBB1_12:                               # %.lr.ph.preheader
	alsl.d	$a2, $a3, $a2, 2
	sub.d	$a0, $a0, $a3
	.p2align	4, , 16
.LBB1_13:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a1, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB1_13
.LBB1_14:                               # %._crit_edge
	ret
.Lfunc_end1:
	.size	_Z9example2aii, .Lfunc_end1-_Z9example2aii
                                        # -- End function
	.globl	_Z9example2bii                  # -- Begin function _Z9example2bii
	.p2align	5
	.type	_Z9example2bii,@function
_Z9example2bii:                         # @_Z9example2bii
# %bb.0:
	beqz	$a0, .LBB2_15
# %bb.1:                                # %iter.check
	ori	$a4, $zero, 4
	pcalau12i	$a1, %pc_hi20(a)
	addi.d	$a1, $a1, %pc_lo12(a)
	pcalau12i	$a2, %pc_hi20(c)
	addi.d	$a2, $a2, %pc_lo12(c)
	pcalau12i	$a3, %pc_hi20(b)
	addi.d	$a3, $a3, %pc_lo12(b)
	bgeu	$a0, $a4, .LBB2_3
# %bb.2:
	move	$a4, $zero
	b	.LBB2_13
.LBB2_3:                                # %vector.main.loop.iter.check
	ori	$a4, $zero, 16
	bstrpick.d	$a5, $a0, 31, 0
	bgeu	$a0, $a4, .LBB2_5
# %bb.4:
	move	$a4, $zero
	b	.LBB2_9
.LBB2_5:                                # %vector.ph
	addi.d	$a6, $a1, 32
	addi.d	$a7, $a2, 32
	bstrpick.d	$a4, $a5, 31, 4
	slli.d	$a4, $a4, 4
	addi.d	$t0, $a3, 32
	move	$t1, $a4
	.p2align	4, , 16
.LBB2_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $t0, -32
	xvld	$xr1, $t0, 0
	xvld	$xr2, $a7, -32
	xvld	$xr3, $a7, 0
	xvand.v	$xr0, $xr2, $xr0
	xvand.v	$xr1, $xr3, $xr1
	xvst	$xr0, $a6, -32
	xvst	$xr1, $a6, 0
	addi.d	$t1, $t1, -16
	addi.d	$a6, $a6, 64
	addi.d	$a7, $a7, 64
	addi.d	$t0, $t0, 64
	bnez	$t1, .LBB2_6
# %bb.7:                                # %middle.block
	beq	$a4, $a5, .LBB2_15
# %bb.8:                                # %vec.epilog.iter.check
	andi	$a6, $a5, 12
	beqz	$a6, .LBB2_12
.LBB2_9:                                # %vec.epilog.ph
	move	$t1, $a4
	bstrpick.d	$a4, $a5, 31, 2
	slli.d	$a4, $a4, 2
	sub.d	$a0, $a0, $a4
	sub.d	$a6, $t1, $a4
	alsl.d	$a7, $t1, $a1, 2
	alsl.d	$t0, $t1, $a2, 2
	alsl.d	$t1, $t1, $a3, 2
	.p2align	4, , 16
.LBB2_10:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t1, 0
	vld	$vr1, $t0, 0
	vand.v	$vr0, $vr1, $vr0
	vst	$vr0, $a7, 0
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 16
	addi.d	$t0, $t0, 16
	addi.d	$t1, $t1, 16
	bnez	$a6, .LBB2_10
# %bb.11:                               # %vec.epilog.middle.block
	bne	$a4, $a5, .LBB2_13
	b	.LBB2_15
.LBB2_12:
	sub.d	$a0, $a0, $a4
.LBB2_13:                               # %.lr.ph.preheader
	alsl.d	$a1, $a4, $a1, 2
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$a3, $a4, $a3, 2
	.p2align	4, , 16
.LBB2_14:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	ld.w	$a5, $a2, 0
	addi.w	$a0, $a0, -1
	and	$a4, $a5, $a4
	st.w	$a4, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB2_14
.LBB2_15:                               # %._crit_edge
	ret
.Lfunc_end2:
	.size	_Z9example2bii, .Lfunc_end2-_Z9example2bii
                                        # -- End function
	.globl	_Z8example3iPiS_                # -- Begin function _Z8example3iPiS_
	.p2align	5
	.type	_Z8example3iPiS_,@function
_Z8example3iPiS_:                       # @_Z8example3iPiS_
# %bb.0:
	beqz	$a0, .LBB3_2
# %bb.1:                                # %.lr.ph.preheader
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a3, $a0, 2
	move	$a0, $a1
	move	$a1, $a2
	move	$a2, $a3
	pcaddu18i	$t8, %call36(memcpy)
	jr	$t8
.LBB3_2:                                # %._crit_edge
	ret
.Lfunc_end3:
	.size	_Z8example3iPiS_, .Lfunc_end3-_Z8example3iPiS_
                                        # -- End function
	.globl	_Z9example4aiPiS_               # -- Begin function _Z9example4aiPiS_
	.p2align	5
	.type	_Z9example4aiPiS_,@function
_Z9example4aiPiS_:                      # @_Z9example4aiPiS_
# %bb.0:
	beqz	$a0, .LBB4_14
# %bb.1:                                # %iter.check
	ori	$a3, $zero, 4
	bgeu	$a0, $a3, .LBB4_3
# %bb.2:
	move	$a4, $a2
	move	$a5, $a1
	b	.LBB4_13
.LBB4_3:                                # %vector.main.loop.iter.check
	ori	$a4, $zero, 16
	bstrpick.d	$a3, $a0, 31, 0
	bgeu	$a0, $a4, .LBB4_5
# %bb.4:
	move	$a6, $zero
	b	.LBB4_9
.LBB4_5:                                # %vector.ph
	bstrpick.d	$a4, $a3, 31, 4
	slli.d	$a6, $a4, 4
	addi.d	$a4, $a1, 32
	addi.d	$a5, $a2, 32
	move	$a7, $a6
	.p2align	4, , 16
.LBB4_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvaddi.wu	$xr0, $xr0, 5
	xvaddi.wu	$xr1, $xr1, 5
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a4, $a4, 64
	addi.d	$a7, $a7, -16
	addi.d	$a5, $a5, 64
	bnez	$a7, .LBB4_6
# %bb.7:                                # %middle.block
	beq	$a6, $a3, .LBB4_14
# %bb.8:                                # %vec.epilog.iter.check
	andi	$a4, $a3, 12
	beqz	$a4, .LBB4_12
.LBB4_9:                                # %vec.epilog.ph
	bstrpick.d	$a5, $a3, 31, 2
	slli.d	$a7, $a5, 2
	alsl.d	$a4, $a5, $a2, 4
	alsl.d	$a5, $a5, $a1, 4
	sub.d	$a0, $a0, $a7
	alsl.d	$a1, $a6, $a1, 2
	alsl.d	$a2, $a6, $a2, 2
	sub.d	$a6, $a6, $a7
	.p2align	4, , 16
.LBB4_10:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a2, 0
	vaddi.wu	$vr0, $vr0, 5
	vst	$vr0, $a1, 0
	addi.d	$a1, $a1, 16
	addi.d	$a6, $a6, 4
	addi.d	$a2, $a2, 16
	bnez	$a6, .LBB4_10
# %bb.11:                               # %vec.epilog.middle.block
	bne	$a7, $a3, .LBB4_13
	b	.LBB4_14
.LBB4_12:
	alsl.d	$a4, $a6, $a2, 2
	alsl.d	$a5, $a6, $a1, 2
	sub.d	$a0, $a0, $a6
	.p2align	4, , 16
.LBB4_13:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a4, 0
	addi.w	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	addi.d	$a1, $a1, 5
	addi.d	$a2, $a5, 4
	st.w	$a1, $a5, 0
	move	$a5, $a2
	bnez	$a0, .LBB4_13
.LBB4_14:                               # %._crit_edge
	ret
.Lfunc_end4:
	.size	_Z9example4aiPiS_, .Lfunc_end4-_Z9example4aiPiS_
                                        # -- End function
	.globl	_Z9example4biPiS_               # -- Begin function _Z9example4biPiS_
	.p2align	5
	.type	_Z9example4biPiS_,@function
_Z9example4biPiS_:                      # @_Z9example4biPiS_
# %bb.0:
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_14
# %bb.1:                                # %iter.check
	ori	$a4, $zero, 4
	pcalau12i	$a1, %pc_hi20(c)
	addi.d	$a1, $a1, %pc_lo12(c)
	pcalau12i	$a2, %pc_hi20(a)
	addi.d	$a2, $a2, %pc_lo12(a)
	pcalau12i	$a3, %pc_hi20(b)
	addi.d	$a3, $a3, %pc_lo12(b)
	bgeu	$a0, $a4, .LBB5_3
# %bb.2:
	move	$a4, $zero
	b	.LBB5_12
.LBB5_3:                                # %vector.main.loop.iter.check
	ori	$a4, $zero, 16
	bgeu	$a0, $a4, .LBB5_5
# %bb.4:
	move	$a4, $zero
	b	.LBB5_9
.LBB5_5:                                # %vector.ph
	addi.d	$a5, $a1, 44
	addi.d	$a6, $a2, 32
	bstrpick.d	$a4, $a0, 30, 4
	slli.d	$a4, $a4, 4
	addi.d	$a7, $a3, 36
	move	$t0, $a4
	.p2align	4, , 16
.LBB5_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a7, -32
	xvld	$xr1, $a7, 0
	xvld	$xr2, $a5, -32
	xvld	$xr3, $a5, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	xvst	$xr0, $a6, -32
	xvst	$xr1, $a6, 0
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 64
	addi.d	$t0, $t0, -16
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB5_6
# %bb.7:                                # %middle.block
	beq	$a4, $a0, .LBB5_14
# %bb.8:                                # %vec.epilog.iter.check
	andi	$a5, $a0, 12
	beqz	$a5, .LBB5_12
.LBB5_9:                                # %vec.epilog.ph
	move	$t0, $a4
	bstrpick.d	$a4, $a0, 30, 2
	slli.d	$a4, $a4, 2
	alsl.d	$a5, $t0, $a1, 2
	addi.d	$a5, $a5, 12
	alsl.d	$a6, $t0, $a3, 2
	addi.d	$a6, $a6, 4
	sub.d	$a7, $t0, $a4
	alsl.d	$t0, $t0, $a2, 2
	.p2align	4, , 16
.LBB5_10:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, 0
	vld	$vr1, $a5, 0
	vadd.w	$vr0, $vr1, $vr0
	vst	$vr0, $t0, 0
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 4
	addi.d	$t0, $t0, 16
	bnez	$a7, .LBB5_10
# %bb.11:                               # %vec.epilog.middle.block
	beq	$a4, $a0, .LBB5_14
.LBB5_12:                               # %.lr.ph.preheader
	alsl.d	$a1, $a4, $a1, 2
	addi.d	$a1, $a1, 12
	alsl.d	$a2, $a4, $a2, 2
	sub.d	$a0, $a0, $a4
	alsl.d	$a3, $a4, $a3, 2
	addi.d	$a3, $a3, 4
	.p2align	4, , 16
.LBB5_13:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	ld.w	$a5, $a1, 0
	add.d	$a4, $a5, $a4
	st.w	$a4, $a2, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB5_13
.LBB5_14:                               # %._crit_edge
	ret
.Lfunc_end5:
	.size	_Z9example4biPiS_, .Lfunc_end5-_Z9example4biPiS_
                                        # -- End function
	.globl	_Z9example4ciPiS_               # -- Begin function _Z9example4ciPiS_
	.p2align	5
	.type	_Z9example4ciPiS_,@function
_Z9example4ciPiS_:                      # @_Z9example4ciPiS_
# %bb.0:
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB6_14
# %bb.1:                                # %iter.check
	ori	$a1, $zero, 4
	pcalau12i	$a2, %pc_hi20(b)
	addi.d	$a2, $a2, %pc_lo12(b)
	pcalau12i	$a3, %pc_hi20(a)
	addi.d	$a3, $a3, %pc_lo12(a)
	bgeu	$a0, $a1, .LBB6_3
# %bb.2:
	move	$a4, $zero
	b	.LBB6_12
.LBB6_3:                                # %vector.main.loop.iter.check
	ori	$a4, $zero, 16
	bgeu	$a0, $a4, .LBB6_5
# %bb.4:
	move	$a4, $zero
	b	.LBB6_9
.LBB6_5:                                # %vector.ph
	addi.d	$a5, $a2, 32
	addi.d	$a6, $a3, 32
	bstrpick.d	$a4, $a0, 30, 4
	slli.d	$a4, $a4, 4
	xvrepli.w	$xr0, 4
	move	$a7, $a4
	.p2align	4, , 16
.LBB6_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a6, -32
	xvld	$xr2, $a6, 0
	xvslt.w	$xr1, $xr0, $xr1
	xvand.v	$xr1, $xr1, $xr0
	xvslt.w	$xr2, $xr0, $xr2
	xvand.v	$xr2, $xr2, $xr0
	xvst	$xr1, $a5, -32
	xvst	$xr2, $a5, 0
	addi.d	$a7, $a7, -16
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB6_6
# %bb.7:                                # %middle.block
	beq	$a4, $a0, .LBB6_14
# %bb.8:                                # %vec.epilog.iter.check
	andi	$a5, $a0, 12
	beqz	$a5, .LBB6_12
.LBB6_9:                                # %vec.epilog.ph
	move	$a7, $a4
	bstrpick.d	$a4, $a0, 30, 2
	slli.d	$a4, $a4, 2
	sub.d	$a5, $a7, $a4
	alsl.d	$a6, $a7, $a2, 2
	alsl.d	$a7, $a7, $a3, 2
	vrepli.w	$vr0, 4
	.p2align	4, , 16
.LBB6_10:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a7, 0
	vslt.w	$vr1, $vr0, $vr1
	vand.v	$vr1, $vr1, $vr0
	vst	$vr1, $a6, 0
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	bnez	$a5, .LBB6_10
# %bb.11:                               # %vec.epilog.middle.block
	beq	$a4, $a0, .LBB6_14
.LBB6_12:                               # %.lr.ph.preheader
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$a3, $a4, $a3, 2
	sub.d	$a0, $a0, $a4
	.p2align	4, , 16
.LBB6_13:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	slt	$a4, $a1, $a4
	slli.d	$a4, $a4, 2
	st.w	$a4, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB6_13
.LBB6_14:                               # %._crit_edge
	ret
.Lfunc_end6:
	.size	_Z9example4ciPiS_, .Lfunc_end6-_Z9example4ciPiS_
                                        # -- End function
	.globl	_Z8example5iP1A                 # -- Begin function _Z8example5iP1A
	.p2align	5
	.type	_Z8example5iP1A,@function
_Z8example5iP1A:                        # @_Z8example5iP1A
# %bb.0:
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB7_14
# %bb.1:                                # %iter.check
	ori	$a2, $zero, 4
	bgeu	$a0, $a2, .LBB7_3
# %bb.2:
	move	$a2, $zero
	b	.LBB7_12
.LBB7_3:                                # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	bgeu	$a0, $a2, .LBB7_5
# %bb.4:
	move	$a2, $zero
	b	.LBB7_9
.LBB7_5:                                # %vector.ph
	bstrpick.d	$a2, $a0, 30, 4
	slli.d	$a2, $a2, 4
	addi.d	$a3, $a1, 32
	xvrepli.w	$xr0, 5
	move	$a4, $a2
	.p2align	4, , 16
.LBB7_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB7_6
# %bb.7:                                # %middle.block
	beq	$a2, $a0, .LBB7_14
# %bb.8:                                # %vec.epilog.iter.check
	andi	$a3, $a0, 12
	beqz	$a3, .LBB7_12
.LBB7_9:                                # %vec.epilog.ph
	move	$a4, $a2
	bstrpick.d	$a2, $a0, 30, 2
	slli.d	$a2, $a2, 2
	sub.d	$a3, $a4, $a2
	alsl.d	$a4, $a4, $a1, 2
	vrepli.w	$vr0, 5
	.p2align	4, , 16
.LBB7_10:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	bnez	$a3, .LBB7_10
# %bb.11:                               # %vec.epilog.middle.block
	beq	$a2, $a0, .LBB7_14
.LBB7_12:                               # %.lr.ph.preheader
	alsl.d	$a1, $a2, $a1, 2
	sub.d	$a0, $a0, $a2
	ori	$a2, $zero, 5
	.p2align	4, , 16
.LBB7_13:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a2, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB7_13
.LBB7_14:                               # %._crit_edge
	ret
.Lfunc_end7:
	.size	_Z8example5iP1A, .Lfunc_end7-_Z8example5iP1A
                                        # -- End function
	.globl	_Z8example7i                    # -- Begin function _Z8example7i
	.p2align	5
	.type	_Z8example7i,@function
_Z8example7i:                           # @_Z8example7i
# %bb.0:
	pcalau12i	$a1, %pc_hi20(b)
	addi.d	$a1, $a1, %pc_lo12(b)
	alsl.d	$a1, $a0, $a1, 2
	pcalau12i	$a0, %pc_hi20(a)
	addi.d	$a0, $a0, %pc_lo12(a)
	lu12i.w	$a2, 1
	pcaddu18i	$t8, %call36(memcpy)
	jr	$t8
.Lfunc_end8:
	.size	_Z8example7i, .Lfunc_end8-_Z8example7i
                                        # -- End function
	.globl	_Z8example8i                    # -- Begin function _Z8example8i
	.p2align	5
	.type	_Z8example8i,@function
_Z8example8i:                           # @_Z8example8i
# %bb.0:                                # %.preheader
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a0, %pc_hi20(G)
	addi.d	$a0, $a0, %pc_lo12(G)
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	xvst	$xr0, $a0, 1024
	xvst	$xr0, $a0, 1056
	xvst	$xr0, $a0, 1088
	xvst	$xr0, $a0, 1120
	xvst	$xr0, $a0, 1152
	xvst	$xr0, $a0, 1184
	xvst	$xr0, $a0, 1216
	xvst	$xr0, $a0, 1248
	xvst	$xr0, $a0, 1280
	xvst	$xr0, $a0, 1312
	xvst	$xr0, $a0, 1344
	xvst	$xr0, $a0, 1376
	xvst	$xr0, $a0, 1408
	xvst	$xr0, $a0, 1440
	xvst	$xr0, $a0, 1472
	xvst	$xr0, $a0, 1504
	xvst	$xr0, $a0, 1536
	xvst	$xr0, $a0, 1568
	xvst	$xr0, $a0, 1600
	xvst	$xr0, $a0, 1632
	xvst	$xr0, $a0, 1664
	xvst	$xr0, $a0, 1696
	xvst	$xr0, $a0, 1728
	xvst	$xr0, $a0, 1760
	xvst	$xr0, $a0, 1792
	xvst	$xr0, $a0, 1824
	xvst	$xr0, $a0, 1856
	xvst	$xr0, $a0, 1888
	xvst	$xr0, $a0, 1920
	xvst	$xr0, $a0, 1952
	xvst	$xr0, $a0, 1984
	xvst	$xr0, $a0, 2016
	ori	$a1, $zero, 2048
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 2080
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 2112
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 2144
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 2176
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 2208
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 2240
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 2272
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 2304
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 2336
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 2368
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 2400
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 2432
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 2464
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 2496
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 2528
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 2560
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 2592
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 2624
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 2656
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 2688
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 2720
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 2752
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 2784
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 2816
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 2848
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 2880
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 2912
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 2944
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 2976
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3008
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3040
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3072
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3104
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3136
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3168
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3200
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3232
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3264
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3296
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3328
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3360
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3392
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3424
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3456
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3488
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3520
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3552
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3584
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3616
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3648
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3680
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3712
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3744
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3776
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3808
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3840
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3872
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3904
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3936
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3968
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 4000
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 4032
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 4064
	xvstx	$xr0, $a0, $a1
	lu12i.w	$a1, 1
	xvstx	$xr0, $a0, $a1
	ori	$a2, $a1, 32
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 64
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 96
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 128
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 160
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 192
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 224
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 256
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 288
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 320
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 352
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 384
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 416
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 448
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 480
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 512
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 544
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 576
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 608
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 640
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 672
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 704
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 736
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 768
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 800
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 832
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 864
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 896
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 928
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 960
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 992
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1024
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1056
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1088
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1120
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1152
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1184
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1216
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1248
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1280
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1312
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1344
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1376
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1408
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1440
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1472
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1504
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1536
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1568
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1600
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1632
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1664
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1696
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1728
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1760
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1792
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1824
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1856
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1888
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1920
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1952
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 1984
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2016
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2048
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2080
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2112
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2144
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2176
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2208
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2240
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2272
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2304
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2336
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2368
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2400
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2432
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2464
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2496
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2528
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2560
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2592
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2624
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2656
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2688
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2720
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2752
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2784
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2816
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2848
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2880
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2912
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2944
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 2976
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3008
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3040
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3072
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3104
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3136
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3168
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3200
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3232
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3264
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3296
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3328
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3360
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3392
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3424
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3456
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3488
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3520
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3552
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3584
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3616
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3648
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3680
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3712
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3744
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3776
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3808
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3840
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3872
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3904
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3936
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 3968
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 4000
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a1, 4032
	xvstx	$xr0, $a0, $a2
	ori	$a1, $a1, 4064
	xvstx	$xr0, $a0, $a1
	lu12i.w	$a2, 2
	xvstx	$xr0, $a0, $a2
	ori	$a1, $a2, 32
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 64
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 96
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 128
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 160
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 192
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 224
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 256
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 288
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 320
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 352
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 384
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 416
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 448
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 480
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 512
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 544
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 576
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 608
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 640
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 672
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 704
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 736
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 768
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 800
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 832
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 864
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 896
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 928
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 960
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 992
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1024
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1056
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1088
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1120
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1152
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1184
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1216
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1248
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1280
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1312
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1344
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1376
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1408
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1440
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1472
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1504
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1536
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1568
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1600
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1632
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1664
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1696
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1728
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1760
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1792
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1824
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1856
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1888
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1920
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1952
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 1984
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2016
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2048
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2080
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2112
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2144
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2176
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2208
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2240
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2272
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2304
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2336
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2368
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2400
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2432
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2464
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2496
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2528
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2560
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2592
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2624
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2656
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2688
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2720
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2752
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2784
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2816
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2848
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2880
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2912
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2944
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 2976
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a2, 3008
	xvstx	$xr0, $a0, $a1
	lu12i.w	$a3, 4
	ori	$a1, $a3, 2688
	xvstx	$xr0, $a0, $a1
	lu12i.w	$a4, 8
	ori	$a1, $a4, 2272
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 2240
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 2208
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 2176
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 2144
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 2112
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 2080
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 2048
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 2016
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1984
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1952
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1920
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1888
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1856
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1824
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1792
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1760
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1728
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1696
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1664
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1632
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1600
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1568
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1536
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1504
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1472
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1440
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1408
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1376
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1344
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1312
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1280
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1248
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1216
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1184
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1152
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1120
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1088
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1056
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 1024
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 992
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 960
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 928
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 896
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 864
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 832
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 800
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 768
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 736
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 704
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 672
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 640
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 608
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 576
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 544
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 512
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 480
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 448
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 416
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 384
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 352
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 320
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 288
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 256
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 224
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 192
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 160
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 128
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 96
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 64
	xvstx	$xr0, $a0, $a1
	ori	$a1, $a4, 32
	xvstx	$xr0, $a0, $a1
	xvstx	$xr0, $a0, $a4
	lu12i.w	$a1, 7
	ori	$a5, $a1, 4064
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 4032
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 4000
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 3968
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 3936
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 3904
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 3872
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 3840
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 3808
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 3776
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 3744
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 3712
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 3680
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 3648
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 3616
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 3584
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 3552
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 3520
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 3488
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 3456
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 3424
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 3392
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 3360
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 3328
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 3264
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 3232
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 3200
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 3168
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 3136
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 3104
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 3072
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 3040
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 3008
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2976
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2944
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2912
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2880
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2848
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2816
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2784
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2752
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2720
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2688
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2656
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2624
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2592
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2560
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2528
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2496
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2464
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2432
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2400
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2368
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2336
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2304
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2272
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2240
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2208
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2176
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2144
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2112
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2080
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2048
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 2016
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1984
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1952
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1920
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1888
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1856
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1824
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1792
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1760
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1728
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1696
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1664
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1632
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1600
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1568
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1536
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1504
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1472
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1440
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1408
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1376
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1344
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1312
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1280
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1248
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1216
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1184
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1152
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1120
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1088
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1056
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 1024
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 992
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 960
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 928
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 896
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 864
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 832
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 800
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 768
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 736
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 704
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 672
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 640
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 608
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 576
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 544
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 512
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 480
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 448
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 416
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 384
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 352
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 320
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 288
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 256
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 224
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 192
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 160
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 128
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 96
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 64
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a1, 32
	xvstx	$xr0, $a0, $a5
	xvstx	$xr0, $a0, $a1
	lu12i.w	$a5, 6
	ori	$a6, $a5, 4064
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 4032
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 4000
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3968
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3936
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3904
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3872
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3840
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3808
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3776
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3744
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3712
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3680
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3648
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3616
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3584
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3552
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3520
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3488
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3456
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3424
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3392
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3360
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3328
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3296
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3264
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3232
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3200
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3168
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3136
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3104
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3072
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3040
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3008
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2976
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2944
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2912
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2880
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2848
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2816
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2784
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2752
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2720
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 2656
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 2624
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 2592
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 2560
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 2528
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 2496
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 2464
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 2432
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 2400
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 2368
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 2336
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 2304
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 2272
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 2240
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 2208
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 2176
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 2144
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 2112
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 2080
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 2048
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 2016
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1984
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1952
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1920
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1888
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1856
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1824
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1792
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1760
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1728
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1696
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1664
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1632
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1600
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1568
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1536
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1504
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1472
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1440
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1408
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1376
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1344
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1312
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1280
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1248
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1216
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1184
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1152
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1120
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1088
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1056
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1024
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 992
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 960
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 928
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 896
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 864
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 832
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 800
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 768
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 736
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 704
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 672
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 640
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 608
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 576
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 544
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 512
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 480
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 448
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 416
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 384
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 352
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 320
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 288
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 256
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 224
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 192
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 160
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 128
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 96
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 64
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 32
	xvstx	$xr0, $a0, $a6
	xvstx	$xr0, $a0, $a3
	lu12i.w	$a6, 3
	ori	$a7, $a6, 4064
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 4032
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 4000
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3968
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3936
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3904
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3872
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3840
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3808
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3776
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3744
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3712
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3680
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3648
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3616
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3584
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3552
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3520
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3488
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3456
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3424
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3392
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3360
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3328
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3296
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3264
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3232
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3200
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3168
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3136
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3104
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3072
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3040
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3008
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2976
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2944
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2912
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2880
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2848
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2816
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2784
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2752
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2720
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2688
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2656
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2624
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2592
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2560
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2528
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2496
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2464
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2432
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2400
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2368
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2336
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2304
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2272
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2240
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2208
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2176
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2144
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2112
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2080
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2048
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2016
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1984
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1952
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1920
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1888
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1856
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1824
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1792
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1760
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1728
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1696
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1664
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1632
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1600
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1568
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1536
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1504
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1472
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1440
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1408
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1376
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1344
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1312
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1280
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1248
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1216
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1184
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1152
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1120
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1088
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1056
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1024
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 992
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 960
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 928
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 896
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 864
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 832
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 800
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 768
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 736
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 704
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 672
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 640
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 608
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 576
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 544
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 512
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 480
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 448
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 416
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 384
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 352
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 320
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 288
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 256
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 224
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 192
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 160
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 128
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 96
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 64
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 32
	xvstx	$xr0, $a0, $a7
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 4064
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 4032
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 4000
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3968
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3936
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3904
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3872
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3840
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3808
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3776
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3744
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3712
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3680
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3648
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3616
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3584
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3552
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3520
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3488
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3456
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3424
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3392
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3360
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3328
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3296
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3264
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3232
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3200
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3168
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3136
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3104
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3072
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a2, 3040
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2720
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2752
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2784
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2816
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2848
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2880
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2912
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2944
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2976
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3008
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3040
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3072
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3104
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3136
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3168
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3200
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3232
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3264
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3296
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3328
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3360
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3392
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3424
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3456
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3488
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3520
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3552
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3584
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3616
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3648
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3680
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3712
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3744
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3776
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3808
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3840
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3872
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3904
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3936
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3968
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 4000
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 4032
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 4064
	xvstx	$xr0, $a0, $a2
	lu12i.w	$a2, 5
	xvstx	$xr0, $a0, $a2
	ori	$a3, $a2, 32
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 64
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 96
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 128
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 160
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 192
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 224
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 256
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 288
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 320
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 352
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 384
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 416
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 448
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 480
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 512
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 544
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 576
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 608
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 640
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 672
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 704
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 736
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 768
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 800
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 832
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 864
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 896
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 928
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 960
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 992
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1024
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1056
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1088
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1120
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1152
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1184
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1216
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1248
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1280
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1312
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1344
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1376
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1408
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1440
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1472
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1504
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1536
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1568
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1600
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1632
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1664
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1696
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1728
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1760
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1792
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1824
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1856
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1888
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1920
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1952
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1984
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2016
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2048
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2080
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2112
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2144
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2176
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2208
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2240
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2272
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2304
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2336
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2368
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2400
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2432
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2464
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2496
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2528
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2560
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2592
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2624
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2656
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2688
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2720
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2752
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2784
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2816
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2848
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2880
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2912
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2944
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2976
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3008
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3040
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3072
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3104
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3136
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3168
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3200
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3232
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3264
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3296
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3328
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3360
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3392
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3424
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3456
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3488
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3520
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3552
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3584
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3616
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3648
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3680
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3712
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3744
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3776
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3808
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3840
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3872
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3904
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3936
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3968
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 4000
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 4032
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a2, 4064
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a5
	ori	$a2, $a5, 32
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 64
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 96
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 128
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 160
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 192
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 224
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 256
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 288
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 320
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 352
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 384
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 416
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 448
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 480
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 512
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 544
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 576
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 608
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 640
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 672
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 704
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 736
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 768
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 800
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 832
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 864
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 896
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 928
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 960
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 992
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1024
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1056
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1088
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1120
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1152
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1184
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1216
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1248
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1280
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1312
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1344
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1376
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1408
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1440
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1472
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1504
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1536
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1568
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1600
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1632
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1664
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1696
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1728
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1760
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1792
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1824
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1856
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1888
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1920
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1952
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 1984
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 2016
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 2048
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 2080
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 2112
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 2144
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 2176
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 2208
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 2240
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 2272
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 2304
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 2336
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 2368
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 2400
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 2432
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 2464
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 2496
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 2528
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 2560
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 2592
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 2624
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 2656
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a5, 2688
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a4, 2336
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a4, 2304
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a4, 2368
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a4, 2400
	ori	$a3, $a4, 2432
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2464
	ori	$a3, $a4, 2496
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2528
	ori	$a3, $a4, 2560
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2592
	ori	$a3, $a4, 2624
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2656
	ori	$a3, $a4, 2688
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2720
	ori	$a3, $a4, 2752
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2784
	ori	$a3, $a4, 2816
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2848
	ori	$a3, $a4, 2880
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2912
	ori	$a3, $a4, 2944
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2976
	ori	$a3, $a4, 3008
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3040
	ori	$a3, $a4, 3072
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3104
	ori	$a3, $a4, 3136
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3168
	ori	$a3, $a4, 3200
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3232
	ori	$a3, $a4, 3264
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3296
	ori	$a3, $a4, 3328
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3360
	ori	$a3, $a4, 3392
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3424
	ori	$a3, $a4, 3456
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3488
	ori	$a3, $a4, 3520
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3552
	ori	$a3, $a4, 3584
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3616
	ori	$a3, $a4, 3648
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3680
	ori	$a3, $a4, 3712
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3744
	ori	$a3, $a4, 3776
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3808
	ori	$a3, $a4, 3840
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3872
	ori	$a3, $a4, 3904
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3936
	ori	$a3, $a4, 3968
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 4000
	ori	$a3, $a4, 4032
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a4, 4064
	lu12i.w	$a2, 9
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a2
	ori	$a3, $a2, 32
	ori	$a4, $a2, 64
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 96
	ori	$a4, $a2, 128
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 160
	ori	$a4, $a2, 192
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 224
	ori	$a4, $a2, 256
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 288
	ori	$a4, $a2, 320
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 352
	ori	$a4, $a2, 384
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 416
	ori	$a4, $a2, 448
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 480
	ori	$a4, $a2, 512
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 544
	ori	$a4, $a2, 576
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 608
	ori	$a4, $a2, 640
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 672
	ori	$a4, $a2, 704
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 736
	ori	$a4, $a2, 768
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 800
	ori	$a4, $a2, 832
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 864
	ori	$a4, $a2, 896
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 928
	ori	$a4, $a2, 960
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 992
	ori	$a4, $a2, 1024
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1056
	ori	$a4, $a2, 1088
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1120
	ori	$a4, $a2, 1152
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1184
	ori	$a4, $a2, 1216
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1248
	ori	$a4, $a2, 1280
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1312
	ori	$a4, $a2, 1344
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1376
	ori	$a4, $a2, 1408
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1440
	ori	$a4, $a2, 1472
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1504
	ori	$a4, $a2, 1536
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1568
	ori	$a4, $a2, 1600
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1632
	ori	$a4, $a2, 1664
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1696
	ori	$a4, $a2, 1728
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1760
	ori	$a4, $a2, 1792
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1824
	ori	$a4, $a2, 1856
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1888
	ori	$a4, $a2, 1920
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1952
	ori	$a4, $a2, 1984
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2016
	ori	$a4, $a2, 2048
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2080
	ori	$a4, $a2, 2112
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2144
	ori	$a4, $a2, 2176
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2208
	ori	$a4, $a2, 2240
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2272
	ori	$a4, $a2, 2304
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2336
	ori	$a4, $a2, 2368
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2400
	ori	$a4, $a2, 2432
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2464
	ori	$a4, $a2, 2496
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2528
	ori	$a4, $a2, 2560
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2592
	ori	$a4, $a2, 2624
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2656
	ori	$a4, $a2, 2688
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2720
	ori	$a4, $a2, 2752
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2784
	ori	$a4, $a2, 2816
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2848
	ori	$a4, $a2, 2880
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2912
	ori	$a4, $a2, 2944
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2976
	ori	$a4, $a2, 3008
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3040
	ori	$a4, $a2, 3072
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3104
	ori	$a4, $a2, 3136
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3168
	ori	$a4, $a2, 3200
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3232
	ori	$a4, $a2, 3264
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3296
	ori	$a4, $a2, 3328
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3360
	ori	$a4, $a2, 3392
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3424
	ori	$a4, $a2, 3456
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3488
	ori	$a4, $a2, 3520
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3552
	ori	$a4, $a2, 3584
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3616
	ori	$a4, $a2, 3648
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3680
	ori	$a4, $a2, 3712
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3744
	ori	$a4, $a2, 3776
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3808
	ori	$a4, $a2, 3840
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3872
	ori	$a4, $a2, 3904
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3936
	ori	$a4, $a2, 3968
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 4000
	ori	$a4, $a2, 4032
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 4064
	lu12i.w	$a2, 10
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a2
	ori	$a3, $a2, 32
	ori	$a4, $a2, 64
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 96
	ori	$a4, $a2, 128
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 160
	ori	$a4, $a2, 192
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 224
	ori	$a4, $a2, 256
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 288
	ori	$a4, $a2, 320
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 352
	ori	$a4, $a2, 384
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 416
	ori	$a4, $a2, 448
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 480
	ori	$a4, $a2, 512
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 544
	ori	$a4, $a2, 576
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 608
	ori	$a4, $a2, 640
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 672
	ori	$a4, $a2, 704
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 736
	ori	$a4, $a2, 768
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 800
	ori	$a4, $a2, 832
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 864
	ori	$a4, $a2, 896
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 928
	ori	$a4, $a2, 960
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 992
	ori	$a4, $a2, 1024
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1056
	ori	$a4, $a2, 1088
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1120
	ori	$a4, $a2, 1152
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1184
	ori	$a4, $a2, 1216
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1248
	ori	$a4, $a2, 1280
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1312
	ori	$a4, $a2, 1344
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1376
	ori	$a4, $a2, 1408
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1440
	ori	$a4, $a2, 1472
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1504
	ori	$a4, $a2, 1536
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1568
	ori	$a4, $a2, 1600
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1632
	ori	$a4, $a2, 1664
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1696
	ori	$a4, $a2, 1728
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1760
	ori	$a4, $a2, 1792
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1824
	ori	$a4, $a2, 1856
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1888
	ori	$a4, $a2, 1920
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1952
	ori	$a4, $a2, 1984
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2016
	ori	$a4, $a2, 2048
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2080
	ori	$a4, $a2, 2112
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2144
	ori	$a4, $a2, 2176
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2208
	ori	$a4, $a2, 2240
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2272
	ori	$a4, $a2, 2304
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	lu12i.w	$a3, 12
	ori	$a4, $a3, 1952
	xvstx	$xr0, $a0, $a4
	lu12i.w	$a4, 16
	ori	$a5, $a4, 1504
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1472
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1440
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1408
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1376
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1344
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1312
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1280
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1248
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1216
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1184
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1152
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1120
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1088
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1056
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1024
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 992
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 960
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 928
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 896
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 864
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 832
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 800
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 768
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 736
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 704
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 672
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 640
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 608
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 576
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 544
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 512
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 480
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 448
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 416
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 384
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 352
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 320
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 288
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 256
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 224
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 192
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 160
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 128
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 96
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 64
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 32
	xvstx	$xr0, $a0, $a5
	xvstx	$xr0, $a0, $a4
	lu12i.w	$a5, 15
	ori	$a6, $a5, 4064
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 4032
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 4000
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3968
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3936
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3904
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3872
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3840
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3808
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3776
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3744
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3712
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3680
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3648
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3616
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3584
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3552
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3520
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3488
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3456
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3424
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3392
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3360
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3328
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3296
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3264
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3232
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3200
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3168
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3136
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3104
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3072
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3040
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3008
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2976
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2944
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2912
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2880
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2848
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2816
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2784
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2752
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2720
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2688
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2656
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2624
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2592
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2560
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2528
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2496
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2464
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2432
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2400
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2368
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2336
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2304
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2272
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2240
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2208
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2176
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2144
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2112
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2080
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2048
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2016
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1984
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1952
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1920
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1888
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1856
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1824
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1792
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1760
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1728
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1696
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1664
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1632
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1600
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1568
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1536
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1504
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1472
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1440
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1408
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1376
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1344
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1312
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1280
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1248
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1216
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1184
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1152
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1120
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1088
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1056
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1024
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 992
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 960
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 928
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 896
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 864
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 832
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 800
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 768
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 736
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 704
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 672
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 640
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 608
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 576
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 544
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 512
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 480
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 448
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 416
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 384
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 352
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 320
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 288
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 256
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 224
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 192
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 160
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 128
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 96
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 64
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 32
	xvstx	$xr0, $a0, $a6
	xvstx	$xr0, $a0, $a5
	lu12i.w	$a5, 14
	ori	$a6, $a5, 4064
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 4032
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 4000
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3968
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3936
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3904
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3872
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3840
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3808
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3776
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3744
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3712
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3680
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3648
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3616
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3584
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3552
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3520
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3488
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3456
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3424
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3392
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3360
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3328
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3296
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3264
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3232
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3200
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3168
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3136
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3104
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3072
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3040
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3008
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2976
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2944
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2912
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2880
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2848
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2816
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2784
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2752
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2720
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2688
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2656
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2624
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2592
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2560
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2528
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2496
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2464
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2432
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2400
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2368
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2336
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2304
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2272
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2240
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2208
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2176
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2144
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2112
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2080
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2048
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2016
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1984
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1920
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1888
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1856
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1824
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1792
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1760
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1728
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1696
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1664
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1632
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1600
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1568
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1536
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1504
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1472
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1440
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1408
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1376
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1344
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1312
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1280
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1248
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1216
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1184
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1152
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1120
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1088
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1056
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1024
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 992
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 960
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 928
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 896
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 864
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 832
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 800
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 768
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 736
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 704
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 672
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 640
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 608
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 576
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 544
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 512
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 480
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 448
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 416
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 384
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 352
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 320
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 288
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 256
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 224
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 192
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 160
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 128
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 96
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 64
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 32
	xvstx	$xr0, $a0, $a6
	xvstx	$xr0, $a0, $a3
	lu12i.w	$a6, 11
	ori	$a7, $a6, 4064
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 4032
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 4000
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3968
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3936
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3904
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3872
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3840
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3808
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3776
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3744
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3712
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3680
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3648
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3616
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3584
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3552
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3520
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3488
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3456
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3424
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3392
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3360
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3328
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3296
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3264
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3232
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3200
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3168
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3136
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3104
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3072
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3040
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3008
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2976
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2944
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2912
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2880
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2848
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2816
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2784
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2752
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2720
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2688
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2656
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2624
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2592
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2560
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2528
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2496
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2464
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2432
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2400
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2368
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2336
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2304
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2272
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2240
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2208
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2176
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2144
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2112
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2080
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2048
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2016
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1984
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1952
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1920
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1888
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1856
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1824
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1792
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1760
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1728
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1696
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1664
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1632
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1600
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1568
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1536
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1504
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1472
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1440
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1408
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1376
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1344
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1312
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1280
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1248
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1216
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1184
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1152
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1120
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1088
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1056
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1024
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 992
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 960
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 928
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 896
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 864
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 832
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 800
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 768
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 736
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 704
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 672
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 640
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 608
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 576
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 544
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 512
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 480
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 448
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 416
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 384
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 352
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 320
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 288
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 256
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 224
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 192
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 160
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 128
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 96
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 64
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 32
	xvstx	$xr0, $a0, $a7
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 4064
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 4032
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 4000
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3968
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3936
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3904
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3872
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3840
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3808
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3776
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3744
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3712
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3680
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3648
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3616
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3584
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3552
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3520
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3488
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3456
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3424
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3392
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3360
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3328
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3296
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3264
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3232
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3200
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3168
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3136
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3104
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3072
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3040
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3008
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2976
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2944
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2912
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2880
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2848
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2816
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2784
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2752
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2720
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2688
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2656
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2624
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2592
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2560
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2528
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2496
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2464
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2432
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2400
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2368
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a2, 2336
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 1984
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2016
	ori	$a6, $a3, 2048
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 2080
	ori	$a6, $a3, 2112
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 2144
	ori	$a6, $a3, 2176
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 2208
	ori	$a6, $a3, 2240
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 2272
	ori	$a6, $a3, 2304
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 2336
	ori	$a6, $a3, 2368
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 2400
	ori	$a6, $a3, 2432
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 2464
	ori	$a6, $a3, 2496
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 2528
	ori	$a6, $a3, 2560
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 2592
	ori	$a6, $a3, 2624
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 2656
	ori	$a6, $a3, 2688
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 2720
	ori	$a6, $a3, 2752
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 2784
	ori	$a6, $a3, 2816
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 2848
	ori	$a6, $a3, 2880
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 2912
	ori	$a6, $a3, 2944
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 2976
	ori	$a6, $a3, 3008
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 3040
	ori	$a6, $a3, 3072
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 3104
	ori	$a6, $a3, 3136
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 3168
	ori	$a6, $a3, 3200
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 3232
	ori	$a6, $a3, 3264
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 3296
	ori	$a6, $a3, 3328
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 3360
	ori	$a6, $a3, 3392
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 3424
	ori	$a6, $a3, 3456
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 3488
	ori	$a6, $a3, 3520
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 3552
	ori	$a6, $a3, 3584
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 3616
	ori	$a6, $a3, 3648
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 3680
	ori	$a6, $a3, 3712
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 3744
	ori	$a6, $a3, 3776
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 3808
	ori	$a6, $a3, 3840
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 3872
	ori	$a6, $a3, 3904
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 3936
	ori	$a6, $a3, 3968
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a3, 4000
	ori	$a6, $a3, 4032
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a3, 4064
	lu12i.w	$a2, 13
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a2
	ori	$a3, $a2, 32
	ori	$a6, $a2, 64
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 96
	ori	$a6, $a2, 128
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 160
	ori	$a6, $a2, 192
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 224
	ori	$a6, $a2, 256
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 288
	ori	$a6, $a2, 320
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 352
	ori	$a6, $a2, 384
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 416
	ori	$a6, $a2, 448
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 480
	ori	$a6, $a2, 512
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 544
	ori	$a6, $a2, 576
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 608
	ori	$a6, $a2, 640
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 672
	ori	$a6, $a2, 704
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 736
	ori	$a6, $a2, 768
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 800
	ori	$a6, $a2, 832
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 864
	ori	$a6, $a2, 896
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 928
	ori	$a6, $a2, 960
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 992
	ori	$a6, $a2, 1024
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 1056
	ori	$a6, $a2, 1088
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 1120
	ori	$a6, $a2, 1152
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 1184
	ori	$a6, $a2, 1216
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 1248
	ori	$a6, $a2, 1280
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 1312
	ori	$a6, $a2, 1344
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 1376
	ori	$a6, $a2, 1408
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 1440
	ori	$a6, $a2, 1472
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 1504
	ori	$a6, $a2, 1536
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 1568
	ori	$a6, $a2, 1600
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 1632
	ori	$a6, $a2, 1664
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 1696
	ori	$a6, $a2, 1728
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 1760
	ori	$a6, $a2, 1792
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 1824
	ori	$a6, $a2, 1856
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 1888
	ori	$a6, $a2, 1920
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 1952
	ori	$a6, $a2, 1984
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 2016
	ori	$a6, $a2, 2048
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 2080
	ori	$a6, $a2, 2112
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 2144
	ori	$a6, $a2, 2176
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 2208
	ori	$a6, $a2, 2240
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 2272
	ori	$a6, $a2, 2304
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 2336
	ori	$a6, $a2, 2368
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 2400
	ori	$a6, $a2, 2432
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 2464
	ori	$a6, $a2, 2496
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 2528
	ori	$a6, $a2, 2560
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 2592
	ori	$a6, $a2, 2624
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 2656
	ori	$a6, $a2, 2688
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 2720
	ori	$a6, $a2, 2752
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 2784
	ori	$a6, $a2, 2816
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 2848
	ori	$a6, $a2, 2880
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 2912
	ori	$a6, $a2, 2944
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 2976
	ori	$a6, $a2, 3008
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 3040
	ori	$a6, $a2, 3072
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 3104
	ori	$a6, $a2, 3136
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 3168
	ori	$a6, $a2, 3200
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 3232
	ori	$a6, $a2, 3264
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 3296
	ori	$a6, $a2, 3328
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 3360
	ori	$a6, $a2, 3392
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 3424
	ori	$a6, $a2, 3456
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 3488
	ori	$a6, $a2, 3520
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 3552
	ori	$a6, $a2, 3584
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 3616
	ori	$a6, $a2, 3648
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 3680
	ori	$a6, $a2, 3712
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 3744
	ori	$a6, $a2, 3776
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 3808
	ori	$a6, $a2, 3840
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 3872
	ori	$a6, $a2, 3904
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 3936
	ori	$a6, $a2, 3968
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a3, $a2, 4000
	ori	$a6, $a2, 4032
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a6
	ori	$a2, $a2, 4064
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a5
	ori	$a2, $a5, 32
	ori	$a3, $a5, 64
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 96
	ori	$a3, $a5, 128
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 160
	ori	$a3, $a5, 192
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 224
	ori	$a3, $a5, 256
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 288
	ori	$a3, $a5, 320
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 352
	ori	$a3, $a5, 384
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 416
	ori	$a3, $a5, 448
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 480
	ori	$a3, $a5, 512
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 544
	ori	$a3, $a5, 576
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 608
	ori	$a3, $a5, 640
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 672
	ori	$a3, $a5, 704
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 736
	ori	$a3, $a5, 768
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 800
	ori	$a3, $a5, 832
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 864
	ori	$a3, $a5, 896
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 928
	ori	$a3, $a5, 960
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 992
	ori	$a3, $a5, 1024
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 1056
	ori	$a3, $a5, 1088
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 1120
	ori	$a3, $a5, 1152
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 1184
	ori	$a3, $a5, 1216
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 1248
	ori	$a3, $a5, 1280
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 1312
	ori	$a3, $a5, 1344
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 1376
	ori	$a3, $a5, 1408
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 1440
	ori	$a3, $a5, 1472
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 1504
	ori	$a3, $a5, 1536
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 1568
	ori	$a3, $a5, 1600
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 1632
	ori	$a3, $a5, 1664
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 1696
	ori	$a3, $a5, 1728
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 1760
	ori	$a3, $a5, 1792
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 1824
	ori	$a3, $a5, 1856
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 1888
	ori	$a3, $a5, 1920
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 1952
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a4, 1568
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a4, 1536
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a4, 1600
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a4, 1632
	ori	$a3, $a4, 1664
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 1696
	ori	$a3, $a4, 1728
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 1760
	ori	$a3, $a4, 1792
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 1824
	ori	$a3, $a4, 1856
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 1888
	ori	$a3, $a4, 1920
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 1952
	ori	$a3, $a4, 1984
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2016
	ori	$a3, $a4, 2048
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2080
	ori	$a3, $a4, 2112
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2144
	ori	$a3, $a4, 2176
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2208
	ori	$a3, $a4, 2240
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2272
	ori	$a3, $a4, 2304
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2336
	ori	$a3, $a4, 2368
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2400
	ori	$a3, $a4, 2432
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2464
	ori	$a3, $a4, 2496
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2528
	ori	$a3, $a4, 2560
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2592
	ori	$a3, $a4, 2624
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2656
	ori	$a3, $a4, 2688
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2720
	ori	$a3, $a4, 2752
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2784
	ori	$a3, $a4, 2816
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2848
	ori	$a3, $a4, 2880
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2912
	ori	$a3, $a4, 2944
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2976
	ori	$a3, $a4, 3008
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3040
	ori	$a3, $a4, 3072
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3104
	ori	$a3, $a4, 3136
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3168
	ori	$a3, $a4, 3200
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3232
	ori	$a3, $a4, 3264
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3296
	ori	$a3, $a4, 3328
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3360
	ori	$a3, $a4, 3392
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3424
	ori	$a3, $a4, 3456
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3488
	ori	$a3, $a4, 3520
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3552
	ori	$a3, $a4, 3584
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3616
	ori	$a3, $a4, 3648
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3680
	ori	$a3, $a4, 3712
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3744
	ori	$a3, $a4, 3776
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3808
	ori	$a3, $a4, 3840
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3872
	ori	$a3, $a4, 3904
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3936
	ori	$a3, $a4, 3968
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 4000
	ori	$a3, $a4, 4032
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a4, 4064
	lu12i.w	$a2, 17
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a2
	ori	$a3, $a2, 32
	ori	$a4, $a2, 64
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 96
	ori	$a4, $a2, 128
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 160
	ori	$a4, $a2, 192
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 224
	ori	$a4, $a2, 256
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 288
	ori	$a4, $a2, 320
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 352
	ori	$a4, $a2, 384
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 416
	ori	$a4, $a2, 448
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 480
	ori	$a4, $a2, 512
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 544
	ori	$a4, $a2, 576
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 608
	ori	$a4, $a2, 640
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 672
	ori	$a4, $a2, 704
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 736
	ori	$a4, $a2, 768
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 800
	ori	$a4, $a2, 832
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 864
	ori	$a4, $a2, 896
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 928
	ori	$a4, $a2, 960
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 992
	ori	$a4, $a2, 1024
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1056
	ori	$a4, $a2, 1088
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1120
	ori	$a4, $a2, 1152
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1184
	ori	$a4, $a2, 1216
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1248
	ori	$a4, $a2, 1280
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1312
	ori	$a4, $a2, 1344
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1376
	ori	$a4, $a2, 1408
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1440
	ori	$a4, $a2, 1472
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1504
	ori	$a4, $a2, 1536
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1568
	ori	$a4, $a2, 1600
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1632
	ori	$a4, $a2, 1664
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1696
	ori	$a4, $a2, 1728
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1760
	ori	$a4, $a2, 1792
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1824
	ori	$a4, $a2, 1856
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1888
	ori	$a4, $a2, 1920
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1952
	ori	$a4, $a2, 1984
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2016
	ori	$a4, $a2, 2048
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2080
	ori	$a4, $a2, 2112
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2144
	ori	$a4, $a2, 2176
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2208
	ori	$a4, $a2, 2240
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2272
	ori	$a4, $a2, 2304
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2336
	ori	$a4, $a2, 2368
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2400
	ori	$a4, $a2, 2432
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2464
	ori	$a4, $a2, 2496
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2528
	ori	$a4, $a2, 2560
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2592
	ori	$a4, $a2, 2624
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2656
	ori	$a4, $a2, 2688
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2720
	ori	$a4, $a2, 2752
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2784
	ori	$a4, $a2, 2816
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2848
	ori	$a4, $a2, 2880
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2912
	ori	$a4, $a2, 2944
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2976
	ori	$a4, $a2, 3008
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3040
	ori	$a4, $a2, 3072
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3104
	ori	$a4, $a2, 3136
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3168
	ori	$a4, $a2, 3200
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3232
	ori	$a4, $a2, 3264
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3296
	ori	$a4, $a2, 3328
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3360
	ori	$a4, $a2, 3392
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3424
	ori	$a4, $a2, 3456
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3488
	ori	$a4, $a2, 3520
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3552
	ori	$a4, $a2, 3584
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3616
	ori	$a4, $a2, 3648
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3680
	ori	$a4, $a2, 3712
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3744
	ori	$a4, $a2, 3776
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3808
	ori	$a4, $a2, 3840
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3872
	ori	$a4, $a2, 3904
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3936
	ori	$a4, $a2, 3968
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 4000
	ori	$a4, $a2, 4032
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 4064
	lu12i.w	$a2, 18
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 32
	ori	$a4, $a2, 64
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 96
	ori	$a4, $a2, 128
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 160
	ori	$a4, $a2, 192
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 224
	ori	$a4, $a2, 256
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 288
	ori	$a4, $a2, 320
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 352
	ori	$a4, $a2, 384
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 416
	ori	$a4, $a2, 448
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 480
	ori	$a4, $a2, 512
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 544
	ori	$a4, $a2, 576
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 608
	ori	$a4, $a2, 640
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 672
	ori	$a4, $a2, 704
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 736
	ori	$a4, $a2, 768
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 800
	ori	$a4, $a2, 832
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 864
	ori	$a4, $a2, 896
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 928
	ori	$a4, $a2, 960
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 992
	ori	$a4, $a2, 1024
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1056
	ori	$a4, $a2, 1088
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1120
	ori	$a4, $a2, 1152
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1184
	ori	$a4, $a2, 1216
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1248
	ori	$a4, $a2, 1280
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1312
	ori	$a4, $a2, 1344
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1376
	ori	$a4, $a2, 1408
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1440
	ori	$a4, $a2, 1472
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1504
	ori	$a4, $a2, 1536
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1600
	xvstx	$xr0, $a0, $a3
	lu12i.w	$a3, 20
	ori	$a4, $a3, 1184
	xvstx	$xr0, $a0, $a4
	lu12i.w	$a4, 24
	ori	$a5, $a4, 704
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 672
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 640
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 608
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 576
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 544
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 512
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 480
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 448
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 416
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 384
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 352
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 320
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 288
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 256
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 224
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 192
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 160
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 128
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 96
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 64
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 32
	xvstx	$xr0, $a0, $a5
	xvstx	$xr0, $a0, $a4
	lu12i.w	$a5, 23
	ori	$a6, $a5, 4064
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 4032
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 4000
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3968
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3936
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3904
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3872
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3840
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3808
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3776
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3744
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3712
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3680
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3648
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3616
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3584
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3552
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3520
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3488
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3456
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3424
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3392
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3360
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3328
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3296
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3264
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3232
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3200
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3168
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3136
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3104
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3072
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3040
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3008
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2976
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2944
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2912
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2880
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2848
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2816
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2784
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2752
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2720
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2688
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2656
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2624
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2592
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2560
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2528
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2496
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2464
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2432
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2400
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2368
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2336
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2304
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2272
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2240
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2208
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2176
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2144
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2112
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2080
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2048
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2016
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1984
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1952
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1920
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1888
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1856
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1824
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1792
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1760
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1728
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1696
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1664
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1632
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1600
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1568
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1536
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1504
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1472
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1440
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1408
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1376
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1344
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1312
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1280
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1248
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1216
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1184
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1152
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1120
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1088
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1056
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1024
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 992
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 960
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 928
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 896
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 864
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 832
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 800
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 768
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 736
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 704
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 672
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 640
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 608
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 576
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 544
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 512
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 480
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 448
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 416
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 384
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 352
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 320
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 288
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 256
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 224
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 192
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 160
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 128
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 96
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 64
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 32
	xvstx	$xr0, $a0, $a6
	xvstx	$xr0, $a0, $a5
	lu12i.w	$a5, 22
	ori	$a6, $a5, 4064
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 4032
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 4000
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3968
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3936
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3904
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3872
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3840
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3808
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3776
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3744
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3712
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3680
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3648
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3616
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3584
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3552
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3520
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3488
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3456
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3424
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3392
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3360
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3328
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3296
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3264
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3232
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3200
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3168
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3136
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3104
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3072
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3040
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 3008
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2976
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2944
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2912
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2880
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2848
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2816
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2784
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2752
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2720
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2688
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2656
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2624
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2592
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2560
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2528
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2496
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2464
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2432
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2400
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2368
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2336
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2304
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2272
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2240
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2208
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2176
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2144
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2112
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2080
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2048
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 2016
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1984
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1952
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1920
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1888
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1856
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1824
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1792
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1760
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1728
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1696
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1664
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1632
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1600
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1568
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1536
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1504
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1472
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1440
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1408
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1376
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1344
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1312
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1280
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1248
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1216
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a5, 1184
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1152
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1120
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1088
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1056
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 1024
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 992
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 960
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 928
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 896
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 864
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 832
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 800
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 768
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 736
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 704
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 672
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 640
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 608
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 576
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 544
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 512
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 480
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 448
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 416
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 384
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 352
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 320
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 288
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 256
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 224
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 192
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 160
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 128
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 96
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 64
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a3, 32
	xvstx	$xr0, $a0, $a6
	xvstx	$xr0, $a0, $a3
	lu12i.w	$a6, 19
	ori	$a7, $a6, 4064
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 4032
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 4000
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3968
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3936
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3904
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3872
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3840
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3808
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3776
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3744
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3712
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3680
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3648
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3616
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3584
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3552
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3520
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3488
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3456
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3424
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3392
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3360
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3328
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3296
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3264
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3232
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3200
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3168
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3136
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3104
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3072
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3040
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 3008
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2976
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2944
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2912
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2880
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2848
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2816
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2784
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2752
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2720
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2688
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2656
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2624
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2592
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2560
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2528
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2496
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2464
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2432
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2400
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2368
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2336
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2304
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2272
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2240
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2208
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2176
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2144
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2112
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2080
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2048
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 2016
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1984
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1952
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1920
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1888
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1856
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1824
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1792
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1760
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1728
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1696
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1664
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1632
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1600
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1568
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1536
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1504
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1472
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1440
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1408
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1376
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1344
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1312
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1280
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1248
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1216
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1184
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1152
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1120
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1088
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1056
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 1024
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 992
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 960
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 928
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 896
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 864
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 832
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 800
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 768
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 736
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 704
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 672
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 640
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 608
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 576
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 544
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 512
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 480
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 448
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 416
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 384
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 352
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 320
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 288
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 256
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 224
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 192
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 160
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 128
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 96
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 64
	xvstx	$xr0, $a0, $a7
	ori	$a7, $a6, 32
	xvstx	$xr0, $a0, $a7
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 4064
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 4032
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 4000
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3968
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3936
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3904
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3872
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3840
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3808
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3776
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3744
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3712
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3680
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3648
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3616
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3584
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3552
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3520
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3488
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3456
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3424
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3392
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3360
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3328
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3296
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3264
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3232
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3200
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3168
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3136
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3104
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3072
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3040
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 3008
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2976
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2944
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2912
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2880
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2848
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2816
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2784
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2752
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2720
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2688
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2656
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2624
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2592
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2560
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2528
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2496
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2464
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2432
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2400
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2368
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2336
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2304
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2272
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2240
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2208
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2176
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2144
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2112
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2080
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2048
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 2016
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 1984
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 1952
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 1920
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 1888
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 1856
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 1824
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 1792
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 1760
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 1728
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 1696
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 1664
	xvstx	$xr0, $a0, $a6
	ori	$a6, $a2, 1632
	xvstx	$xr0, $a0, $a6
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a2, 1568
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 1216
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 1248
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 1280
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 1312
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 1344
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 1376
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 1408
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 1440
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 1472
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 1504
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 1536
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 1568
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 1600
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 1632
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 1664
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 1696
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 1728
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 1760
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 1792
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 1824
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 1856
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 1888
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 1920
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 1952
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 1984
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2016
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2048
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2080
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2112
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2144
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2176
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2208
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2240
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2272
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2304
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2336
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2368
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2400
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2432
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2464
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2496
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2528
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2560
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2592
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2624
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2656
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2688
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2720
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2752
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2784
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2816
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2848
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2880
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2912
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2944
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 2976
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3008
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3040
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3072
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3104
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3136
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3168
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3200
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3232
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3264
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3296
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3328
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3360
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3392
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3424
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3456
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3488
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3520
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3552
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3584
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3616
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3648
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3680
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3712
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3744
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3776
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3808
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3840
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3872
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3904
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3936
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 3968
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 4000
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a3, 4032
	xvstx	$xr0, $a0, $a2
	ori	$a3, $a3, 4064
	lu12i.w	$a2, 21
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a2
	ori	$a3, $a2, 32
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 64
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 96
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 128
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 160
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 192
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 224
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 256
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 288
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 320
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 352
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 384
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 416
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 448
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 480
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 512
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 544
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 576
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 608
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 640
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 672
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 704
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 736
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 768
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 800
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 832
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 864
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 896
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 928
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 960
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 992
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1024
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1056
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1088
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1120
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1152
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1184
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1216
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1248
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1280
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1312
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1344
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1376
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1408
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1440
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1472
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1504
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1536
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1568
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1600
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1632
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1664
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1696
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1728
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1760
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1792
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1824
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1856
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1888
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1920
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1952
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1984
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2016
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2048
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2080
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2112
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2144
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2176
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2208
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2240
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2272
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2304
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2336
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2368
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2400
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2432
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2464
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2496
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2528
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2560
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2592
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2624
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2656
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2688
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2720
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2752
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2784
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2816
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2848
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2880
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2912
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2944
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2976
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3008
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3040
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3072
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3104
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3136
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3168
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3200
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3232
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3264
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3296
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3328
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3360
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3392
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3424
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3456
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3488
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3520
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3552
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3584
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3616
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3648
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3680
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3712
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3744
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3776
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3808
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3840
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3872
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3904
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3936
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3968
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 4000
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 4032
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a2, 4064
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a5
	ori	$a2, $a5, 32
	ori	$a3, $a5, 64
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 96
	ori	$a3, $a5, 128
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 160
	ori	$a3, $a5, 192
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 224
	ori	$a3, $a5, 256
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 288
	ori	$a3, $a5, 320
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 352
	ori	$a3, $a5, 384
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 416
	ori	$a3, $a5, 448
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 480
	ori	$a3, $a5, 512
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 544
	ori	$a3, $a5, 576
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 608
	ori	$a3, $a5, 640
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 672
	ori	$a3, $a5, 704
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 736
	ori	$a3, $a5, 768
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 800
	ori	$a3, $a5, 832
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 864
	ori	$a3, $a5, 896
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 928
	ori	$a3, $a5, 960
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 992
	ori	$a3, $a5, 1024
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 1056
	ori	$a3, $a5, 1088
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a5, 1120
	ori	$a3, $a5, 1152
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 736
	ori	$a3, $a4, 800
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a4, 768
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 832
	xvstx	$xr0, $a0, $a2
	ori	$a2, $a4, 864
	ori	$a3, $a4, 896
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 928
	ori	$a3, $a4, 960
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 992
	ori	$a3, $a4, 1024
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 1056
	ori	$a3, $a4, 1088
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 1120
	ori	$a3, $a4, 1152
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 1184
	ori	$a3, $a4, 1216
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 1248
	ori	$a3, $a4, 1280
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 1312
	ori	$a3, $a4, 1344
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 1376
	ori	$a3, $a4, 1408
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 1440
	ori	$a3, $a4, 1472
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 1504
	ori	$a3, $a4, 1536
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 1568
	ori	$a3, $a4, 1600
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 1632
	ori	$a3, $a4, 1664
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 1696
	ori	$a3, $a4, 1728
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 1760
	ori	$a3, $a4, 1792
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 1824
	ori	$a3, $a4, 1856
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 1888
	ori	$a3, $a4, 1920
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 1952
	ori	$a3, $a4, 1984
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2016
	ori	$a3, $a4, 2048
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2080
	ori	$a3, $a4, 2112
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2144
	ori	$a3, $a4, 2176
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2208
	ori	$a3, $a4, 2240
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2272
	ori	$a3, $a4, 2304
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2336
	ori	$a3, $a4, 2368
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2400
	ori	$a3, $a4, 2432
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2464
	ori	$a3, $a4, 2496
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2528
	ori	$a3, $a4, 2560
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2592
	ori	$a3, $a4, 2624
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2656
	ori	$a3, $a4, 2688
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2720
	ori	$a3, $a4, 2752
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2784
	ori	$a3, $a4, 2816
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2848
	ori	$a3, $a4, 2880
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2912
	ori	$a3, $a4, 2944
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 2976
	ori	$a3, $a4, 3008
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3040
	ori	$a3, $a4, 3072
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3104
	ori	$a3, $a4, 3136
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3168
	ori	$a3, $a4, 3200
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3232
	ori	$a3, $a4, 3264
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3296
	ori	$a3, $a4, 3328
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3360
	ori	$a3, $a4, 3392
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3424
	ori	$a3, $a4, 3456
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3488
	ori	$a3, $a4, 3520
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3552
	ori	$a3, $a4, 3584
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3616
	ori	$a3, $a4, 3648
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3680
	ori	$a3, $a4, 3712
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3744
	ori	$a3, $a4, 3776
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3808
	ori	$a3, $a4, 3840
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3872
	ori	$a3, $a4, 3904
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 3936
	ori	$a3, $a4, 3968
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a4, 4000
	ori	$a3, $a4, 4032
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a4, 4064
	lu12i.w	$a2, 25
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a2
	ori	$a3, $a2, 32
	ori	$a4, $a2, 64
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 96
	ori	$a4, $a2, 128
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 160
	ori	$a4, $a2, 192
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 224
	ori	$a4, $a2, 256
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 288
	ori	$a4, $a2, 320
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 352
	ori	$a4, $a2, 384
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 416
	ori	$a4, $a2, 448
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 480
	ori	$a4, $a2, 512
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 544
	ori	$a4, $a2, 576
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 608
	ori	$a4, $a2, 640
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 672
	ori	$a4, $a2, 704
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 736
	ori	$a4, $a2, 768
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 800
	ori	$a4, $a2, 832
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 864
	ori	$a4, $a2, 896
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 928
	ori	$a4, $a2, 960
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 992
	ori	$a4, $a2, 1024
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1056
	ori	$a4, $a2, 1088
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1120
	ori	$a4, $a2, 1152
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1184
	ori	$a4, $a2, 1216
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1248
	ori	$a4, $a2, 1280
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1312
	ori	$a4, $a2, 1344
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1376
	ori	$a4, $a2, 1408
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1440
	ori	$a4, $a2, 1472
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1504
	ori	$a4, $a2, 1536
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1568
	ori	$a4, $a2, 1600
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1632
	ori	$a4, $a2, 1664
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1696
	ori	$a4, $a2, 1728
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1760
	ori	$a4, $a2, 1792
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1824
	ori	$a4, $a2, 1856
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1888
	ori	$a4, $a2, 1920
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1952
	ori	$a4, $a2, 1984
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2016
	ori	$a4, $a2, 2048
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2080
	ori	$a4, $a2, 2112
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2144
	ori	$a4, $a2, 2176
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2208
	ori	$a4, $a2, 2240
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2272
	ori	$a4, $a2, 2304
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2336
	ori	$a4, $a2, 2368
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2400
	ori	$a4, $a2, 2432
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2464
	ori	$a4, $a2, 2496
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2528
	ori	$a4, $a2, 2560
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2592
	ori	$a4, $a2, 2624
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2656
	ori	$a4, $a2, 2688
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2720
	ori	$a4, $a2, 2752
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2784
	ori	$a4, $a2, 2816
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2848
	ori	$a4, $a2, 2880
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2912
	ori	$a4, $a2, 2944
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2976
	ori	$a4, $a2, 3008
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3040
	ori	$a4, $a2, 3072
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3104
	ori	$a4, $a2, 3136
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3168
	ori	$a4, $a2, 3200
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3232
	ori	$a4, $a2, 3264
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3296
	ori	$a4, $a2, 3328
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3360
	ori	$a4, $a2, 3392
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3424
	ori	$a4, $a2, 3456
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3488
	ori	$a4, $a2, 3520
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3552
	ori	$a4, $a2, 3584
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3616
	ori	$a4, $a2, 3648
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3680
	ori	$a4, $a2, 3712
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3744
	ori	$a4, $a2, 3776
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3808
	ori	$a4, $a2, 3840
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3872
	ori	$a4, $a2, 3904
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3936
	ori	$a4, $a2, 3968
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 4000
	ori	$a4, $a2, 4032
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 4064
	lu12i.w	$a2, 26
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 32
	ori	$a4, $a2, 64
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 96
	ori	$a4, $a2, 128
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 160
	ori	$a4, $a2, 192
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 224
	ori	$a4, $a2, 256
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 288
	ori	$a4, $a2, 320
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 352
	ori	$a4, $a2, 384
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 416
	ori	$a4, $a2, 448
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 480
	ori	$a4, $a2, 512
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 544
	ori	$a4, $a2, 576
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 608
	ori	$a4, $a2, 640
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 672
	ori	$a4, $a2, 704
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 736
	ori	$a4, $a2, 768
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	lu12i.w	$a3, 28
	ori	$a4, $a3, 416
	xvstx	$xr0, $a0, $a4
	lu12i.w	$a4, 29
	ori	$a5, $a4, 32
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 4064
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 4032
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 4000
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3968
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3936
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3904
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3872
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3840
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3808
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3776
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3744
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3712
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3680
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3648
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3616
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3584
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3552
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3520
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3488
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3456
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3424
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3392
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3360
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3328
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3296
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3264
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3232
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3200
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3168
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3136
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3104
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3072
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3040
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 3008
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2976
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2944
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2912
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2880
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2848
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2816
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2784
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2752
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2720
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2688
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2656
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2624
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2592
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2560
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2528
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2496
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2464
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2432
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2400
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2368
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2336
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2304
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2272
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2240
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2208
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2176
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2144
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2112
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2080
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2048
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 2016
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1984
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1952
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1920
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1888
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1856
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1824
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1792
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1760
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1728
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1696
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1664
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1632
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1600
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1568
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1536
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1504
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1472
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1440
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1408
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1376
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1344
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1312
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1280
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1248
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1216
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1184
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1152
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1120
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1088
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1056
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 1024
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 992
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 960
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 928
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 896
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 864
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 832
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 800
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 768
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 736
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 704
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 672
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 640
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 608
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 576
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 544
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 512
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 480
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 448
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 416
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 384
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 352
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 320
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 288
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 256
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 224
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 192
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 160
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 128
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 96
	xvstx	$xr0, $a0, $a5
	ori	$a5, $a4, 64
	xvstx	$xr0, $a0, $a5
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 4064
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 4032
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 4000
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3968
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3936
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3904
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3872
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3840
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3808
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3776
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3744
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3712
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3680
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3648
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3616
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3584
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3552
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3520
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3488
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3456
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3424
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3392
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3360
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3328
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3296
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3264
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3232
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3200
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3168
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3136
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3104
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3072
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3040
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3008
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2976
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2944
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2912
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2880
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2848
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2816
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2784
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2752
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2720
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2688
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2656
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2624
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2592
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2560
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2528
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2496
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2464
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2432
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2400
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2368
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2336
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2304
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2272
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2240
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2208
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2176
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2144
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2112
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2080
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2048
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2016
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1984
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1952
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1920
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1888
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1856
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1824
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1792
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1760
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1728
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1696
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1664
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1632
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1600
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1568
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1536
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1504
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1472
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1440
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1408
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1376
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1344
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1312
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1280
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1248
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1216
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1184
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1152
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1120
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1088
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1056
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1024
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 992
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 960
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 928
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 896
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 864
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 832
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 800
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 768
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 736
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 704
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 672
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 640
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 608
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 576
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 544
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 512
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 480
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 448
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 384
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 352
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 320
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 288
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 256
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 224
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 192
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 160
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 128
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 96
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 64
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 32
	xvstx	$xr0, $a0, $a4
	xvstx	$xr0, $a0, $a3
	lu12i.w	$a3, 27
	ori	$a4, $a3, 4064
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 4032
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 4000
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3968
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3936
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3904
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3872
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3840
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3808
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3776
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3744
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3712
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3680
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3648
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3616
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3584
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3552
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3520
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3488
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3456
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3424
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3392
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3360
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3328
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3296
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3264
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3232
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3200
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3168
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3136
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3104
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3072
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3040
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 3008
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2976
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2944
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2912
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2880
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2848
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2816
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2784
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2752
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2720
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2688
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2656
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2624
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2592
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2560
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2528
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2496
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2464
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2432
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2400
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2368
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2336
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2304
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2272
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2240
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2208
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2176
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2144
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2112
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2080
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2048
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 2016
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1984
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1952
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1920
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1888
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1856
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1824
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1792
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1760
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1728
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1696
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1664
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1632
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1600
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1568
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1536
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1504
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1472
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1440
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1408
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1376
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1344
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1312
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1280
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1248
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1216
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1184
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1152
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1120
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1088
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1056
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 1024
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 992
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 960
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 928
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 896
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 864
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 832
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 800
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 768
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 736
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 704
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 672
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 640
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 608
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 576
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 544
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 512
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 480
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 448
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 416
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 384
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 352
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 320
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 288
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 256
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 224
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 192
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 160
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 128
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 96
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 64
	xvstx	$xr0, $a0, $a4
	ori	$a4, $a3, 32
	xvstx	$xr0, $a0, $a4
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 4064
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 4032
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 4000
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3968
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3936
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3904
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3872
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3840
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3808
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3776
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3744
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3712
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3680
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3648
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3616
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3584
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3552
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3520
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3488
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3456
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3424
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3392
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3360
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3328
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3296
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3264
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3232
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3200
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3168
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3136
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3104
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3072
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3040
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 3008
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2976
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2944
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2912
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2880
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2848
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2816
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2784
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2752
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2720
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2688
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2656
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2624
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2592
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2560
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2528
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2496
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2464
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2432
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2400
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2368
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2336
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2304
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2272
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2240
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2208
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2176
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2144
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2112
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2080
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2048
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 2016
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1984
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1952
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1920
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1888
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1856
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1824
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1792
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1760
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1728
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1696
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1664
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1632
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1600
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1568
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1536
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1504
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1472
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1440
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1408
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1376
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1344
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1312
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1280
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1248
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1216
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1184
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1152
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1120
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1088
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1056
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 1024
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 992
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 960
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 928
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 896
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 864
	xvstx	$xr0, $a0, $a3
	ori	$a3, $a2, 832
	xvstx	$xr0, $a0, $a3
	ori	$a2, $a2, 800
	xvstx	$xr0, $a0, $a2
	lu12i.w	$a2, 30
	xvstx	$xr0, $a0, $a2
	ori	$a3, $a2, 32
	ori	$a4, $a2, 64
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 96
	ori	$a4, $a2, 128
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 160
	ori	$a4, $a2, 192
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 224
	ori	$a4, $a2, 256
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 288
	ori	$a4, $a2, 320
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 352
	ori	$a4, $a2, 384
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 416
	ori	$a4, $a2, 448
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 480
	ori	$a4, $a2, 512
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 544
	ori	$a4, $a2, 576
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 608
	ori	$a4, $a2, 640
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 672
	ori	$a4, $a2, 704
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 736
	ori	$a4, $a2, 768
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 800
	ori	$a4, $a2, 832
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 864
	ori	$a4, $a2, 896
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 928
	ori	$a4, $a2, 960
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 992
	ori	$a4, $a2, 1024
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1056
	ori	$a4, $a2, 1088
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1120
	ori	$a4, $a2, 1152
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1184
	ori	$a4, $a2, 1216
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1248
	ori	$a4, $a2, 1280
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1312
	ori	$a4, $a2, 1344
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1376
	ori	$a4, $a2, 1408
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1440
	ori	$a4, $a2, 1472
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1504
	ori	$a4, $a2, 1536
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1568
	ori	$a4, $a2, 1600
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1632
	ori	$a4, $a2, 1664
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1696
	ori	$a4, $a2, 1728
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1760
	ori	$a4, $a2, 1792
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1824
	ori	$a4, $a2, 1856
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1888
	ori	$a4, $a2, 1920
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1952
	ori	$a4, $a2, 1984
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2016
	ori	$a4, $a2, 2048
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2080
	ori	$a4, $a2, 2112
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2144
	ori	$a4, $a2, 2176
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2208
	ori	$a4, $a2, 2240
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2272
	ori	$a4, $a2, 2304
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2336
	ori	$a4, $a2, 2368
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2400
	ori	$a4, $a2, 2432
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2464
	ori	$a4, $a2, 2496
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2528
	ori	$a4, $a2, 2560
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2592
	ori	$a4, $a2, 2624
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2656
	ori	$a4, $a2, 2688
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2720
	ori	$a4, $a2, 2752
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2784
	ori	$a4, $a2, 2816
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2848
	ori	$a4, $a2, 2880
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2912
	ori	$a4, $a2, 2944
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2976
	ori	$a4, $a2, 3008
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3040
	ori	$a4, $a2, 3072
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3104
	ori	$a4, $a2, 3136
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3168
	ori	$a4, $a2, 3200
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3232
	ori	$a4, $a2, 3264
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3296
	ori	$a4, $a2, 3328
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3360
	ori	$a4, $a2, 3392
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3424
	ori	$a4, $a2, 3456
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3488
	ori	$a4, $a2, 3520
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3552
	ori	$a4, $a2, 3584
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3616
	ori	$a4, $a2, 3648
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3680
	ori	$a4, $a2, 3712
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3744
	ori	$a4, $a2, 3776
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3808
	ori	$a4, $a2, 3840
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3872
	ori	$a4, $a2, 3904
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3936
	ori	$a4, $a2, 3968
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 4000
	ori	$a4, $a2, 4032
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 4064
	lu12i.w	$a2, 31
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a2
	ori	$a3, $a2, 32
	ori	$a4, $a2, 64
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 96
	ori	$a4, $a2, 128
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 160
	ori	$a4, $a2, 192
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 224
	ori	$a4, $a2, 256
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 288
	ori	$a4, $a2, 320
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 352
	ori	$a4, $a2, 384
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 416
	ori	$a4, $a2, 448
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 480
	ori	$a4, $a2, 512
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 544
	ori	$a4, $a2, 576
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 608
	ori	$a4, $a2, 640
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 672
	ori	$a4, $a2, 704
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 736
	ori	$a4, $a2, 768
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 800
	ori	$a4, $a2, 832
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 864
	ori	$a4, $a2, 896
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 928
	ori	$a4, $a2, 960
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 992
	ori	$a4, $a2, 1024
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1056
	ori	$a4, $a2, 1088
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1120
	ori	$a4, $a2, 1152
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1184
	ori	$a4, $a2, 1216
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1248
	ori	$a4, $a2, 1280
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1312
	ori	$a4, $a2, 1344
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1376
	ori	$a4, $a2, 1408
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1440
	ori	$a4, $a2, 1472
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1504
	ori	$a4, $a2, 1536
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1568
	ori	$a4, $a2, 1600
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1632
	ori	$a4, $a2, 1664
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1696
	ori	$a4, $a2, 1728
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1760
	ori	$a4, $a2, 1792
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1824
	ori	$a4, $a2, 1856
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1888
	ori	$a4, $a2, 1920
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 1952
	ori	$a4, $a2, 1984
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2016
	ori	$a4, $a2, 2048
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2080
	ori	$a4, $a2, 2112
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2144
	ori	$a4, $a2, 2176
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2208
	ori	$a4, $a2, 2240
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2272
	ori	$a4, $a2, 2304
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2336
	ori	$a4, $a2, 2368
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2400
	ori	$a4, $a2, 2432
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2464
	ori	$a4, $a2, 2496
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2528
	ori	$a4, $a2, 2560
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2592
	ori	$a4, $a2, 2624
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2656
	ori	$a4, $a2, 2688
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2720
	ori	$a4, $a2, 2752
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2784
	ori	$a4, $a2, 2816
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2848
	ori	$a4, $a2, 2880
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2912
	ori	$a4, $a2, 2944
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 2976
	ori	$a4, $a2, 3008
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3040
	ori	$a4, $a2, 3072
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3104
	ori	$a4, $a2, 3136
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3168
	ori	$a4, $a2, 3200
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3232
	ori	$a4, $a2, 3264
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3296
	ori	$a4, $a2, 3328
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3360
	ori	$a4, $a2, 3392
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3424
	ori	$a4, $a2, 3456
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3488
	ori	$a4, $a2, 3520
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3552
	ori	$a4, $a2, 3584
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3616
	ori	$a4, $a2, 3648
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3680
	ori	$a4, $a2, 3712
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3744
	ori	$a4, $a2, 3776
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3808
	ori	$a4, $a2, 3840
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3872
	ori	$a4, $a2, 3904
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 3936
	ori	$a4, $a2, 3968
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a3, $a2, 4000
	ori	$a4, $a2, 4032
	xvstx	$xr0, $a0, $a3
	xvstx	$xr0, $a0, $a4
	ori	$a2, $a2, 4064
	ori	$a1, $a1, 3296
	xvstx	$xr0, $a0, $a2
	xvstx	$xr0, $a0, $a1
	ret
.Lfunc_end9:
	.size	_Z8example8i, .Lfunc_end9-_Z8example8i
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _Z8example9Pj
.LCPI10_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.text
	.globl	_Z8example9Pj
	.p2align	5
	.type	_Z8example9Pj,@function
_Z8example9Pj:                          # @_Z8example9Pj
# %bb.0:                                # %vector.ph
	xvrepli.b	$xr0, 0
	lu12i.w	$a1, -1
	pcalau12i	$a2, %pc_hi20(ub)
	addi.d	$a2, $a2, %pc_lo12(ub)
	lu12i.w	$a3, 1
	ori	$a4, $a3, 32
	pcalau12i	$a5, %pc_hi20(uc)
	addi.d	$a5, $a5, %pc_lo12(uc)
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB10_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a6, $a2, $a1
	xvldx	$xr2, $a6, $a3
	xvldx	$xr3, $a6, $a4
	add.d	$a6, $a5, $a1
	xvldx	$xr4, $a6, $a3
	xvldx	$xr5, $a6, $a4
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	xvsub.w	$xr0, $xr0, $xr4
	addi.d	$a1, $a1, 64
	xvsub.w	$xr1, $xr1, $xr5
	bnez	$a1, .LBB10_1
# %bb.2:                                # %middle.block
	pcalau12i	$a1, %pc_hi20(.LCPI10_0)
	xvld	$xr2, $a1, %pc_lo12(.LCPI10_0)
	xvadd.w	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvshuf.d	$xr2, $xr0, $xr1
	xvadd.w	$xr0, $xr0, $xr2
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a1, $xr0, 0
	st.w	$a1, $a0, 0
	ret
.Lfunc_end10:
	.size	_Z8example9Pj, .Lfunc_end10-_Z8example9Pj
                                        # -- End function
	.globl	_Z10example10aPsS_S_PiS0_S0_    # -- Begin function _Z10example10aPsS_S_PiS0_S0_
	.p2align	5
	.type	_Z10example10aPsS_S_PiS0_S0_,@function
_Z10example10aPsS_S_PiS0_S0_:           # @_Z10example10aPsS_S_PiS0_S0_
# %bb.0:                                # %vector.ph
	move	$a6, $zero
	ori	$a7, $zero, 2048
	.p2align	4, , 16
.LBB11_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, 0
	xvld	$xr1, $a5, 0
	vldx	$vr2, $a1, $a6
	vldx	$vr3, $a2, $a6
	xvadd.w	$xr0, $xr1, $xr0
	xvst	$xr0, $a3, 0
	vadd.h	$vr0, $vr3, $vr2
	vstx	$vr0, $a0, $a6
	addi.d	$a6, $a6, 16
	addi.d	$a3, $a3, 32
	addi.d	$a5, $a5, 32
	addi.d	$a4, $a4, 32
	bne	$a6, $a7, .LBB11_1
# %bb.2:                                # %middle.block
	ret
.Lfunc_end11:
	.size	_Z10example10aPsS_S_PiS0_S0_, .Lfunc_end11-_Z10example10aPsS_S_PiS0_S0_
                                        # -- End function
	.globl	_Z10example10bPsS_S_PiS0_S0_    # -- Begin function _Z10example10bPsS_S_PiS0_S0_
	.p2align	5
	.type	_Z10example10bPsS_S_PiS0_S0_,@function
_Z10example10bPsS_S_PiS0_S0_:           # @_Z10example10bPsS_S_PiS0_S0_
# %bb.0:                                # %vector.ph
	move	$a0, $zero
	ori	$a2, $zero, 2048
	.p2align	4, , 16
.LBB12_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $a1, $a0
	vpickve2gr.h	$a4, $vr0, 0
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr1, $a4, 0
	vpickve2gr.h	$a4, $vr0, 1
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr1, $a4, 1
	vpickve2gr.h	$a4, $vr0, 2
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr1, $a4, 2
	vpickve2gr.h	$a4, $vr0, 3
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr1, $a4, 3
	vpickve2gr.h	$a4, $vr0, 4
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr1, $a4, 4
	vpickve2gr.h	$a4, $vr0, 5
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr1, $a4, 5
	vpickve2gr.h	$a4, $vr0, 6
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr1, $a4, 6
	vpickve2gr.h	$a4, $vr0, 7
	ext.w.h	$a4, $a4
	xvinsgr2vr.w	$xr1, $a4, 7
	xvst	$xr1, $a3, 0
	addi.d	$a0, $a0, 16
	addi.d	$a3, $a3, 32
	bne	$a0, $a2, .LBB12_1
# %bb.2:                                # %middle.block
	ret
.Lfunc_end12:
	.size	_Z10example10bPsS_S_PiS0_S0_, .Lfunc_end12-_Z10example10bPsS_S_PiS0_S0_
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _Z9example11v
.LCPI13_0:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI13_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.text
	.globl	_Z9example11v
	.p2align	5
	.type	_Z9example11v,@function
_Z9example11v:                          # @_Z9example11v
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.LCPI13_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI13_0)
	pcalau12i	$a1, %pc_hi20(.LCPI13_1)
	xvld	$xr1, $a1, %pc_lo12(.LCPI13_1)
	pcalau12i	$a1, %pc_hi20(b)
	addi.d	$a1, $a1, %pc_lo12(b)
	pcalau12i	$a2, %pc_hi20(c)
	addi.d	$a2, $a2, %pc_lo12(c)
	pcalau12i	$a3, %pc_hi20(a)
	addi.d	$a3, $a3, %pc_lo12(a)
	pcalau12i	$a4, %pc_hi20(d)
	addi.d	$a4, $a4, %pc_lo12(d)
	ori	$a5, $zero, 2048
	.p2align	4, , 16
.LBB13_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvslli.d	$xr5, $xr1, 1
	xvslli.d	$xr4, $xr0, 1
	xvbitseti.d	$xr2, $xr4, 0
	xvbitseti.d	$xr3, $xr5, 0
	xvpickve2gr.d	$a6, $xr3, 0
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 1
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 2
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr3, 3
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr2, 0
	slli.d	$t2, $t2, 2
	xvpickve2gr.d	$t3, $xr2, 1
	slli.d	$t3, $t3, 2
	xvpickve2gr.d	$t4, $xr2, 2
	slli.d	$t4, $t4, 2
	xvpickve2gr.d	$t5, $xr2, 3
	slli.d	$t5, $t5, 2
	ldx.w	$t6, $a1, $a6
	ldx.w	$t7, $a1, $a7
	ldx.w	$t8, $a1, $t0
	ldx.w	$fp, $a1, $t1
	ldx.w	$s0, $a1, $t2
	ldx.w	$s1, $a1, $t3
	ldx.w	$s2, $a1, $t4
	ldx.w	$s3, $a1, $t5
	xvinsgr2vr.w	$xr2, $t6, 0
	xvinsgr2vr.w	$xr2, $t7, 1
	xvinsgr2vr.w	$xr2, $t8, 2
	xvinsgr2vr.w	$xr2, $fp, 3
	xvinsgr2vr.w	$xr2, $s0, 4
	xvinsgr2vr.w	$xr2, $s1, 5
	xvinsgr2vr.w	$xr2, $s2, 6
	xvinsgr2vr.w	$xr2, $s3, 7
	ldx.w	$a6, $a2, $a6
	ldx.w	$a7, $a2, $a7
	ldx.w	$t0, $a2, $t0
	ldx.w	$t1, $a2, $t1
	ldx.w	$t2, $a2, $t2
	ldx.w	$t3, $a2, $t3
	ldx.w	$t4, $a2, $t4
	ldx.w	$t5, $a2, $t5
	xvinsgr2vr.w	$xr3, $a6, 0
	xvinsgr2vr.w	$xr3, $a7, 1
	xvinsgr2vr.w	$xr3, $t0, 2
	xvinsgr2vr.w	$xr3, $t1, 3
	xvinsgr2vr.w	$xr3, $t2, 4
	xvinsgr2vr.w	$xr3, $t3, 5
	xvinsgr2vr.w	$xr3, $t4, 6
	xvinsgr2vr.w	$xr3, $t5, 7
	xvmul.w	$xr6, $xr3, $xr2
	xvpickve2gr.d	$a6, $xr5, 0
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr5, 1
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr5, 2
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr5, 3
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr4, 0
	slli.d	$t2, $t2, 2
	xvpickve2gr.d	$t3, $xr4, 1
	slli.d	$t3, $t3, 2
	xvpickve2gr.d	$t4, $xr4, 2
	slli.d	$t4, $t4, 2
	xvpickve2gr.d	$t5, $xr4, 3
	slli.d	$t5, $t5, 2
	ldx.w	$t6, $a1, $a6
	ldx.w	$t7, $a1, $a7
	ldx.w	$t8, $a1, $t0
	ldx.w	$fp, $a1, $t1
	ldx.w	$s0, $a1, $t2
	ldx.w	$s1, $a1, $t3
	ldx.w	$s2, $a1, $t4
	ldx.w	$s3, $a1, $t5
	xvinsgr2vr.w	$xr4, $t6, 0
	xvinsgr2vr.w	$xr4, $t7, 1
	xvinsgr2vr.w	$xr4, $t8, 2
	xvinsgr2vr.w	$xr4, $fp, 3
	xvinsgr2vr.w	$xr4, $s0, 4
	xvinsgr2vr.w	$xr4, $s1, 5
	xvinsgr2vr.w	$xr4, $s2, 6
	xvinsgr2vr.w	$xr4, $s3, 7
	ldx.w	$a6, $a2, $a6
	ldx.w	$a7, $a2, $a7
	ldx.w	$t0, $a2, $t0
	ldx.w	$t1, $a2, $t1
	ldx.w	$t2, $a2, $t2
	ldx.w	$t3, $a2, $t3
	ldx.w	$t4, $a2, $t4
	ldx.w	$t5, $a2, $t5
	xvinsgr2vr.w	$xr5, $a6, 0
	xvinsgr2vr.w	$xr5, $a7, 1
	xvinsgr2vr.w	$xr5, $t0, 2
	xvinsgr2vr.w	$xr5, $t1, 3
	xvinsgr2vr.w	$xr5, $t2, 4
	xvinsgr2vr.w	$xr5, $t3, 5
	xvinsgr2vr.w	$xr5, $t4, 6
	xvinsgr2vr.w	$xr5, $t5, 7
	xvmsub.w	$xr6, $xr5, $xr4
	xvstx	$xr6, $a3, $a0
	xvmul.w	$xr2, $xr5, $xr2
	xvmadd.w	$xr2, $xr4, $xr3
	xvstx	$xr2, $a4, $a0
	xvaddi.du	$xr1, $xr1, 8
	addi.d	$a0, $a0, 32
	xvaddi.du	$xr0, $xr0, 8
	bne	$a0, $a5, .LBB13_1
# %bb.2:                                # %middle.block
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end13:
	.size	_Z9example11v, .Lfunc_end13-_Z9example11v
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _Z9example12v
.LCPI14_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.text
	.globl	_Z9example12v
	.p2align	5
	.type	_Z9example12v,@function
_Z9example12v:                          # @_Z9example12v
# %bb.0:                                # %vector.ph
	pcalau12i	$a0, %pc_hi20(.LCPI14_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI14_0)
	lu12i.w	$a0, -1
	pcalau12i	$a1, %pc_hi20(a)
	addi.d	$a1, $a1, %pc_lo12(a)
	lu12i.w	$a2, 1
	ori	$a3, $a2, 32
	.p2align	4, , 16
.LBB14_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.wu	$xr1, $xr0, 8
	add.d	$a4, $a1, $a0
	xvstx	$xr0, $a4, $a2
	xvstx	$xr1, $a4, $a3
	addi.d	$a0, $a0, 64
	xvaddi.wu	$xr0, $xr0, 16
	bnez	$a0, .LBB14_1
# %bb.2:                                # %middle.block
	ret
.Lfunc_end14:
	.size	_Z9example12v, .Lfunc_end14-_Z9example12v
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _Z9example13PPiS0_S_
.LCPI15_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.text
	.globl	_Z9example13PPiS0_S_
	.p2align	5
	.type	_Z9example13PPiS0_S_,@function
_Z9example13PPiS0_S_:                   # @_Z9example13PPiS0_S_
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	move	$a3, $zero
	xvrepli.b	$xr0, 0
	ori	$a5, $zero, 3840
	ori	$a6, $zero, 3872
	ori	$a7, $zero, 3904
	ori	$t0, $zero, 3936
	ori	$t1, $zero, 3968
	ori	$t2, $zero, 4000
	ori	$t3, $zero, 4032
	ori	$t4, $zero, 4064
	lu12i.w	$t5, 1
	ori	$t6, $t5, 32
	ori	$t7, $t5, 64
	ori	$t8, $t5, 96
	ori	$fp, $t5, 128
	ori	$s0, $t5, 160
	pcalau12i	$s1, %pc_hi20(.LCPI15_0)
	xvld	$xr1, $s1, %pc_lo12(.LCPI15_0)
	ori	$s1, $t5, 192
	ori	$s2, $t5, 224
	.p2align	4, , 16
.LBB15_1:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_2 Depth 2
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	slli.d	$s4, $a3, 3
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$s5, $a0, $s4
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ldx.d	$s6, $a0, $s4
	addi.d	$s4, $s5, 256
	addi.d	$s5, $s6, 256
	lu12i.w	$s6, -1
	xvori.b	$xr2, $xr0, 0
	xvori.b	$xr3, $xr0, 0
	.p2align	4, , 16
.LBB15_2:                               # %vector.body
                                        #   Parent Loop BB15_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s7, $s5, $s6
	ldx.w	$s8, $s7, $a5
	ldx.w	$ra, $s7, $a6
	ldx.w	$a4, $s7, $a7
	ldx.w	$s3, $s7, $t0
	ldx.w	$a3, $s7, $t1
	ldx.w	$a2, $s7, $t2
	ldx.w	$a1, $s7, $t3
	ldx.w	$a0, $s7, $t4
	xvinsgr2vr.w	$xr4, $s8, 0
	xvinsgr2vr.w	$xr4, $ra, 1
	xvinsgr2vr.w	$xr4, $a4, 2
	xvinsgr2vr.w	$xr4, $s3, 3
	xvinsgr2vr.w	$xr4, $a3, 4
	xvinsgr2vr.w	$xr4, $a2, 5
	xvinsgr2vr.w	$xr4, $a1, 6
	xvinsgr2vr.w	$xr4, $a0, 7
	ldx.w	$a0, $s7, $t5
	ldx.w	$a1, $s7, $t6
	ldx.w	$a2, $s7, $t7
	ldx.w	$a3, $s7, $t8
	ldx.w	$a4, $s7, $fp
	ldx.w	$s3, $s7, $s0
	ldx.w	$s8, $s7, $s1
	ldx.w	$s7, $s7, $s2
	xvinsgr2vr.w	$xr5, $a0, 0
	xvinsgr2vr.w	$xr5, $a1, 1
	xvinsgr2vr.w	$xr5, $a2, 2
	xvinsgr2vr.w	$xr5, $a3, 3
	xvinsgr2vr.w	$xr5, $a4, 4
	xvinsgr2vr.w	$xr5, $s3, 5
	xvinsgr2vr.w	$xr5, $s8, 6
	xvinsgr2vr.w	$xr5, $s7, 7
	add.d	$a0, $s4, $s6
	ldx.w	$a1, $a0, $a5
	ldx.w	$a2, $a0, $a6
	ldx.w	$a3, $a0, $a7
	ldx.w	$a4, $a0, $t0
	ldx.w	$s3, $a0, $t1
	ldx.w	$s7, $a0, $t2
	ldx.w	$s8, $a0, $t3
	ldx.w	$ra, $a0, $t4
	xvinsgr2vr.w	$xr6, $a1, 0
	xvinsgr2vr.w	$xr6, $a2, 1
	xvinsgr2vr.w	$xr6, $a3, 2
	xvinsgr2vr.w	$xr6, $a4, 3
	xvinsgr2vr.w	$xr6, $s3, 4
	xvinsgr2vr.w	$xr6, $s7, 5
	xvinsgr2vr.w	$xr6, $s8, 6
	xvinsgr2vr.w	$xr6, $ra, 7
	ldx.w	$a1, $a0, $t5
	ldx.w	$a2, $a0, $t6
	ldx.w	$a3, $a0, $t7
	ldx.w	$a4, $a0, $t8
	ldx.w	$s3, $a0, $fp
	ldx.w	$s7, $a0, $s0
	ldx.w	$s8, $a0, $s1
	ldx.w	$a0, $a0, $s2
	xvinsgr2vr.w	$xr7, $a1, 0
	xvinsgr2vr.w	$xr7, $a2, 1
	xvinsgr2vr.w	$xr7, $a3, 2
	xvinsgr2vr.w	$xr7, $a4, 3
	xvinsgr2vr.w	$xr7, $s3, 4
	xvinsgr2vr.w	$xr7, $s7, 5
	xvinsgr2vr.w	$xr7, $s8, 6
	xvinsgr2vr.w	$xr7, $a0, 7
	xvadd.w	$xr2, $xr4, $xr2
	xvadd.w	$xr3, $xr5, $xr3
	xvsub.w	$xr2, $xr2, $xr6
	addi.d	$s6, $s6, 512
	xvsub.w	$xr3, $xr3, $xr7
	bnez	$s6, .LBB15_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB15_1 Depth=1
	xvadd.w	$xr2, $xr3, $xr2
	xvpermi.d	$xr3, $xr2, 78
	xvori.b	$xr4, $xr1, 0
	xvshuf.d	$xr4, $xr0, $xr3
	xvadd.w	$xr2, $xr2, $xr4
	xvpermi.d	$xr3, $xr2, 68
	xvrepl128vei.d	$xr3, $xr3, 1
	xvadd.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 68
	xvrepl128vei.w	$xr3, $xr3, 1
	xvadd.w	$xr2, $xr2, $xr3
	xvpickve2gr.w	$a0, $xr2, 0
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	slli.d	$a1, $a3, 2
	addi.d	$a3, $a3, 1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	stx.w	$a0, $a2, $a1
	ori	$a0, $zero, 32
	bne	$a3, $a0, .LBB15_1
# %bb.4:
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end15:
	.size	_Z9example13PPiS0_S_, .Lfunc_end15-_Z9example13PPiS0_S_
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z9example14PPiS0_S_
.LCPI16_0:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.globl	_Z9example14PPiS0_S_
	.p2align	5
	.type	_Z9example14PPiS0_S_,@function
_Z9example14PPiS0_S_:                   # @_Z9example14PPiS0_S_
# %bb.0:                                # %.preheader19
	addi.d	$sp, $sp, -16
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	move	$a3, $zero
	move	$a7, $zero
	addi.d	$a4, $a0, 56
	vinsgr2vr.w	$vr1, $zero, 0
	pcalau12i	$a5, %pc_hi20(.LCPI16_0)
	vld	$vr0, $a5, %pc_lo12(.LCPI16_0)
	vrepli.b	$vr2, 0
	lu12i.w	$a5, -2
	ori	$a6, $zero, 32
	.p2align	4, , 16
.LBB16_1:                               # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_2 Depth 2
	vinsgr2vr.w	$vr4, $a7, 0
	vori.b	$vr3, $vr0, 0
	vshuf.w	$vr3, $vr1, $vr4
	slli.d	$a7, $a3, 2
	move	$t0, $a5
	vori.b	$vr4, $vr2, 0
	.p2align	4, , 16
.LBB16_2:                               # %vector.body
                                        #   Parent Loop BB16_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t1, $a4, $t0
	ldptr.d	$t2, $t1, 8136
	ldptr.d	$t3, $t1, 8144
	ldptr.d	$t4, $t1, 8152
	ldptr.d	$t5, $t1, 8160
	ldptr.d	$t6, $t1, 8168
	ldptr.d	$t7, $t1, 8176
	ldptr.d	$t8, $t1, 8184
	ldptr.d	$t1, $t1, 8192
	ldx.w	$t2, $t2, $a7
	ldx.w	$t3, $t3, $a7
	ldx.w	$t4, $t4, $a7
	ldx.w	$t5, $t5, $a7
	vinsgr2vr.w	$vr5, $t2, 0
	vinsgr2vr.w	$vr5, $t3, 1
	vinsgr2vr.w	$vr5, $t4, 2
	vinsgr2vr.w	$vr5, $t5, 3
	ldx.w	$t2, $t6, $a7
	ldx.w	$t3, $t7, $a7
	ldx.w	$t4, $t8, $a7
	ldx.w	$t1, $t1, $a7
	vinsgr2vr.w	$vr6, $t2, 0
	vinsgr2vr.w	$vr6, $t3, 1
	vinsgr2vr.w	$vr6, $t4, 2
	vinsgr2vr.w	$vr6, $t1, 3
	add.d	$t1, $a1, $t0
	ldptr.d	$t2, $t1, 8192
	ldptr.d	$t3, $t1, 8200
	ldptr.d	$t4, $t1, 8208
	ldptr.d	$t5, $t1, 8216
	ldptr.d	$t6, $t1, 8224
	ldptr.d	$t7, $t1, 8232
	ldptr.d	$t8, $t1, 8240
	ldptr.d	$t1, $t1, 8248
	ldx.w	$t2, $t2, $a7
	ldx.w	$t3, $t3, $a7
	ldx.w	$t4, $t4, $a7
	ldx.w	$t5, $t5, $a7
	vinsgr2vr.w	$vr7, $t2, 0
	vinsgr2vr.w	$vr7, $t3, 1
	vinsgr2vr.w	$vr7, $t4, 2
	vinsgr2vr.w	$vr7, $t5, 3
	ldx.w	$t2, $t6, $a7
	ldx.w	$t3, $t7, $a7
	ldx.w	$t4, $t8, $a7
	ldx.w	$t1, $t1, $a7
	vinsgr2vr.w	$vr8, $t2, 0
	vinsgr2vr.w	$vr8, $t3, 1
	vinsgr2vr.w	$vr8, $t4, 2
	vinsgr2vr.w	$vr8, $t1, 3
	vmadd.w	$vr3, $vr7, $vr5
	addi.d	$t0, $t0, 64
	vmadd.w	$vr4, $vr8, $vr6
	bnez	$t0, .LBB16_2
# %bb.3:                                # %middle.block
                                        #   in Loop: Header=BB16_1 Depth=1
	vadd.w	$vr3, $vr4, $vr3
	vreplvei.d	$vr4, $vr3, 1
	vadd.w	$vr3, $vr3, $vr4
	vreplvei.w	$vr4, $vr3, 1
	vadd.w	$vr3, $vr3, $vr4
	addi.d	$a3, $a3, 1
	vpickve2gr.w	$a7, $vr3, 0
	bne	$a3, $a6, .LBB16_1
# %bb.4:                                # %.preheader19.1
	move	$a3, $zero
	move	$t0, $zero
	st.w	$a7, $a2, 0
	addi.d	$a4, $a1, 56
	addi.d	$a5, $a0, 32
	vinsgr2vr.w	$vr1, $zero, 0
	vrepli.b	$vr2, 0
	lu12i.w	$a6, -2
	ori	$a7, $zero, 32
	.p2align	4, , 16
.LBB16_5:                               # %vector.ph44
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_6 Depth 2
	vinsgr2vr.w	$vr4, $t0, 0
	vori.b	$vr3, $vr0, 0
	vshuf.w	$vr3, $vr1, $vr4
	slli.d	$t0, $a3, 2
	move	$t1, $a6
	vori.b	$vr4, $vr2, 0
	.p2align	4, , 16
.LBB16_6:                               # %vector.body45
                                        #   Parent Loop BB16_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t2, $a5, $t1
	ldptr.d	$t3, $t2, 8168
	ldptr.d	$t4, $t2, 8176
	ldptr.d	$t5, $t2, 8184
	ldptr.d	$t6, $t2, 8192
	ldptr.d	$t7, $t2, 8200
	ldptr.d	$t8, $t2, 8208
	ldptr.d	$fp, $t2, 8216
	ldptr.d	$t2, $t2, 8224
	ldx.w	$t3, $t3, $t0
	ldx.w	$t4, $t4, $t0
	ldx.w	$t5, $t5, $t0
	ldx.w	$t6, $t6, $t0
	vinsgr2vr.w	$vr5, $t3, 0
	vinsgr2vr.w	$vr5, $t4, 1
	vinsgr2vr.w	$vr5, $t5, 2
	vinsgr2vr.w	$vr5, $t6, 3
	ldx.w	$t3, $t7, $t0
	ldx.w	$t4, $t8, $t0
	ldx.w	$t5, $fp, $t0
	ldx.w	$t2, $t2, $t0
	vinsgr2vr.w	$vr6, $t3, 0
	vinsgr2vr.w	$vr6, $t4, 1
	vinsgr2vr.w	$vr6, $t5, 2
	vinsgr2vr.w	$vr6, $t2, 3
	add.d	$t2, $a4, $t1
	ldptr.d	$t3, $t2, 8136
	ldptr.d	$t4, $t2, 8144
	ldptr.d	$t5, $t2, 8152
	ldptr.d	$t6, $t2, 8160
	ldptr.d	$t7, $t2, 8168
	ldptr.d	$t8, $t2, 8176
	ldptr.d	$fp, $t2, 8184
	ldptr.d	$t2, $t2, 8192
	ldx.w	$t3, $t3, $t0
	ldx.w	$t4, $t4, $t0
	ldx.w	$t5, $t5, $t0
	ldx.w	$t6, $t6, $t0
	vinsgr2vr.w	$vr7, $t3, 0
	vinsgr2vr.w	$vr7, $t4, 1
	vinsgr2vr.w	$vr7, $t5, 2
	vinsgr2vr.w	$vr7, $t6, 3
	ldx.w	$t3, $t7, $t0
	ldx.w	$t4, $t8, $t0
	ldx.w	$t5, $fp, $t0
	ldx.w	$t2, $t2, $t0
	vinsgr2vr.w	$vr8, $t3, 0
	vinsgr2vr.w	$vr8, $t4, 1
	vinsgr2vr.w	$vr8, $t5, 2
	vinsgr2vr.w	$vr8, $t2, 3
	vmadd.w	$vr3, $vr7, $vr5
	addi.d	$t1, $t1, 64
	vmadd.w	$vr4, $vr8, $vr6
	bnez	$t1, .LBB16_6
# %bb.7:                                # %middle.block54
                                        #   in Loop: Header=BB16_5 Depth=1
	vadd.w	$vr3, $vr4, $vr3
	vreplvei.d	$vr4, $vr3, 1
	vadd.w	$vr3, $vr3, $vr4
	vreplvei.w	$vr4, $vr3, 1
	vadd.w	$vr3, $vr3, $vr4
	addi.d	$a3, $a3, 1
	vpickve2gr.w	$t0, $vr3, 0
	bne	$a3, $a7, .LBB16_5
# %bb.8:                                # %.preheader19.2
	move	$a3, $zero
	move	$a7, $zero
	st.w	$t0, $a2, 4
	addi.d	$a4, $a0, 72
	vinsgr2vr.w	$vr1, $zero, 0
	vrepli.b	$vr2, 0
	lu12i.w	$a5, -2
	ori	$a6, $zero, 32
	.p2align	4, , 16
.LBB16_9:                               # %vector.ph59
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_10 Depth 2
	vinsgr2vr.w	$vr4, $a7, 0
	vori.b	$vr3, $vr0, 0
	vshuf.w	$vr3, $vr1, $vr4
	slli.d	$a7, $a3, 2
	move	$t0, $a5
	vori.b	$vr4, $vr2, 0
	.p2align	4, , 16
.LBB16_10:                              # %vector.body60
                                        #   Parent Loop BB16_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t1, $a4, $t0
	ldptr.d	$t2, $t1, 8136
	ldptr.d	$t3, $t1, 8144
	ldptr.d	$t4, $t1, 8152
	ldptr.d	$t5, $t1, 8160
	ldptr.d	$t6, $t1, 8168
	ldptr.d	$t7, $t1, 8176
	ldptr.d	$t8, $t1, 8184
	ldptr.d	$t1, $t1, 8192
	ldx.w	$t2, $t2, $a7
	ldx.w	$t3, $t3, $a7
	ldx.w	$t4, $t4, $a7
	ldx.w	$t5, $t5, $a7
	vinsgr2vr.w	$vr5, $t2, 0
	vinsgr2vr.w	$vr5, $t3, 1
	vinsgr2vr.w	$vr5, $t4, 2
	vinsgr2vr.w	$vr5, $t5, 3
	ldx.w	$t2, $t6, $a7
	ldx.w	$t3, $t7, $a7
	ldx.w	$t4, $t8, $a7
	ldx.w	$t1, $t1, $a7
	vinsgr2vr.w	$vr6, $t2, 0
	vinsgr2vr.w	$vr6, $t3, 1
	vinsgr2vr.w	$vr6, $t4, 2
	vinsgr2vr.w	$vr6, $t1, 3
	add.d	$t1, $a1, $t0
	ldptr.d	$t2, $t1, 8192
	ldptr.d	$t3, $t1, 8200
	ldptr.d	$t4, $t1, 8208
	ldptr.d	$t5, $t1, 8216
	ldptr.d	$t6, $t1, 8224
	ldptr.d	$t7, $t1, 8232
	ldptr.d	$t8, $t1, 8240
	ldptr.d	$t1, $t1, 8248
	ldx.w	$t2, $t2, $a7
	ldx.w	$t3, $t3, $a7
	ldx.w	$t4, $t4, $a7
	ldx.w	$t5, $t5, $a7
	vinsgr2vr.w	$vr7, $t2, 0
	vinsgr2vr.w	$vr7, $t3, 1
	vinsgr2vr.w	$vr7, $t4, 2
	vinsgr2vr.w	$vr7, $t5, 3
	ldx.w	$t2, $t6, $a7
	ldx.w	$t3, $t7, $a7
	ldx.w	$t4, $t8, $a7
	ldx.w	$t1, $t1, $a7
	vinsgr2vr.w	$vr8, $t2, 0
	vinsgr2vr.w	$vr8, $t3, 1
	vinsgr2vr.w	$vr8, $t4, 2
	vinsgr2vr.w	$vr8, $t1, 3
	vmadd.w	$vr3, $vr7, $vr5
	addi.d	$t0, $t0, 64
	vmadd.w	$vr4, $vr8, $vr6
	bnez	$t0, .LBB16_10
# %bb.11:                               # %middle.block69
                                        #   in Loop: Header=BB16_9 Depth=1
	vadd.w	$vr3, $vr4, $vr3
	vreplvei.d	$vr4, $vr3, 1
	vadd.w	$vr3, $vr3, $vr4
	vreplvei.w	$vr4, $vr3, 1
	vadd.w	$vr3, $vr3, $vr4
	addi.d	$a3, $a3, 1
	vpickve2gr.w	$a7, $vr3, 0
	bne	$a3, $a6, .LBB16_9
# %bb.12:                               # %.preheader19.3
	move	$a3, $zero
	move	$a6, $zero
	st.w	$a7, $a2, 8
	addi.d	$a0, $a0, 80
	vinsgr2vr.w	$vr1, $zero, 0
	vrepli.b	$vr2, 0
	lu12i.w	$a4, -2
	ori	$a5, $zero, 32
	.p2align	4, , 16
.LBB16_13:                              # %vector.ph74
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_14 Depth 2
	vinsgr2vr.w	$vr4, $a6, 0
	vori.b	$vr3, $vr0, 0
	vshuf.w	$vr3, $vr1, $vr4
	slli.d	$a6, $a3, 2
	move	$a7, $a4
	vori.b	$vr4, $vr2, 0
	.p2align	4, , 16
.LBB16_14:                              # %vector.body75
                                        #   Parent Loop BB16_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $a0, $a7
	ldptr.d	$t1, $t0, 8136
	ldptr.d	$t2, $t0, 8144
	ldptr.d	$t3, $t0, 8152
	ldptr.d	$t4, $t0, 8160
	ldptr.d	$t5, $t0, 8168
	ldptr.d	$t6, $t0, 8176
	ldptr.d	$t7, $t0, 8184
	ldptr.d	$t0, $t0, 8192
	ldx.w	$t1, $t1, $a6
	ldx.w	$t2, $t2, $a6
	ldx.w	$t3, $t3, $a6
	ldx.w	$t4, $t4, $a6
	vinsgr2vr.w	$vr5, $t1, 0
	vinsgr2vr.w	$vr5, $t2, 1
	vinsgr2vr.w	$vr5, $t3, 2
	vinsgr2vr.w	$vr5, $t4, 3
	ldx.w	$t1, $t5, $a6
	ldx.w	$t2, $t6, $a6
	ldx.w	$t3, $t7, $a6
	ldx.w	$t0, $t0, $a6
	vinsgr2vr.w	$vr6, $t1, 0
	vinsgr2vr.w	$vr6, $t2, 1
	vinsgr2vr.w	$vr6, $t3, 2
	vinsgr2vr.w	$vr6, $t0, 3
	add.d	$t0, $a1, $a7
	ldptr.d	$t1, $t0, 8192
	ldptr.d	$t2, $t0, 8200
	ldptr.d	$t3, $t0, 8208
	ldptr.d	$t4, $t0, 8216
	ldptr.d	$t5, $t0, 8224
	ldptr.d	$t6, $t0, 8232
	ldptr.d	$t7, $t0, 8240
	ldptr.d	$t0, $t0, 8248
	ldx.w	$t1, $t1, $a6
	ldx.w	$t2, $t2, $a6
	ldx.w	$t3, $t3, $a6
	ldx.w	$t4, $t4, $a6
	vinsgr2vr.w	$vr7, $t1, 0
	vinsgr2vr.w	$vr7, $t2, 1
	vinsgr2vr.w	$vr7, $t3, 2
	vinsgr2vr.w	$vr7, $t4, 3
	ldx.w	$t1, $t5, $a6
	ldx.w	$t2, $t6, $a6
	ldx.w	$t3, $t7, $a6
	ldx.w	$t0, $t0, $a6
	vinsgr2vr.w	$vr8, $t1, 0
	vinsgr2vr.w	$vr8, $t2, 1
	vinsgr2vr.w	$vr8, $t3, 2
	vinsgr2vr.w	$vr8, $t0, 3
	vmadd.w	$vr3, $vr7, $vr5
	addi.d	$a7, $a7, 64
	vmadd.w	$vr4, $vr8, $vr6
	bnez	$a7, .LBB16_14
# %bb.15:                               # %middle.block84
                                        #   in Loop: Header=BB16_13 Depth=1
	vadd.w	$vr3, $vr4, $vr3
	vreplvei.d	$vr4, $vr3, 1
	vadd.w	$vr3, $vr3, $vr4
	vreplvei.w	$vr4, $vr3, 1
	vadd.w	$vr3, $vr3, $vr4
	addi.d	$a3, $a3, 1
	vpickve2gr.w	$a6, $vr3, 0
	bne	$a3, $a5, .LBB16_13
# %bb.16:
	st.w	$a6, $a2, 12
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end16:
	.size	_Z9example14PPiS0_S_, .Lfunc_end16-_Z9example14PPiS0_S_
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _Z9example21Pii
.LCPI17_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI17_1:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.globl	_Z9example21Pii
	.p2align	5
	.type	_Z9example21Pii,@function
_Z9example21Pii:                        # @_Z9example21Pii
# %bb.0:
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB17_3
# %bb.1:                                # %iter.check
	ori	$a2, $zero, 4
	bgeu	$a1, $a2, .LBB17_4
# %bb.2:
	move	$a3, $zero
	move	$a4, $a1
	b	.LBB17_15
.LBB17_3:
	move	$a3, $zero
	st.w	$a3, $a0, 0
	ret
.LBB17_4:                               # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	bgeu	$a1, $a2, .LBB17_6
# %bb.5:
	move	$a2, $zero
	move	$a3, $zero
	b	.LBB17_10
.LBB17_6:                               # %vector.ph
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	alsl.d	$a3, $a1, $a0, 2
	xvrepli.b	$xr0, 0
	addi.d	$a3, $a3, -32
	move	$a4, $a2
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB17_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a3, 0
	xvld	$xr3, $a3, -32
	xvpermi.d	$xr2, $xr2, 78
	xvshuf4i.w	$xr2, $xr2, 27
	xvpermi.d	$xr3, $xr3, 78
	xvshuf4i.w	$xr3, $xr3, 27
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, -64
	bnez	$a4, .LBB17_7
# %bb.8:                                # %middle.block
	pcalau12i	$a3, %pc_hi20(.LCPI17_0)
	xvld	$xr2, $a3, %pc_lo12(.LCPI17_0)
	xvadd.w	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvshuf.d	$xr2, $xr0, $xr1
	xvadd.w	$xr0, $xr0, $xr2
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a3, $xr0, 0
	beq	$a2, $a1, .LBB17_13
# %bb.9:                                # %vec.epilog.iter.check
	andi	$a4, $a1, 12
	beqz	$a4, .LBB17_14
.LBB17_10:                              # %vec.epilog.ph
	bstrpick.d	$a4, $a1, 30, 2
	slli.d	$a5, $a4, 2
	pcalau12i	$a4, %pc_hi20(.LCPI17_1)
	vld	$vr0, $a4, %pc_lo12(.LCPI17_1)
	andi	$a4, $a1, 3
	vinsgr2vr.w	$vr1, $a3, 0
	vinsgr2vr.w	$vr2, $zero, 0
	vshuf.w	$vr0, $vr2, $vr1
	slli.d	$a3, $a1, 2
	slli.d	$a6, $a2, 2
	sub.d	$a3, $a3, $a6
	add.d	$a3, $a3, $a0
	addi.d	$a3, $a3, -16
	sub.d	$a2, $a2, $a5
	.p2align	4, , 16
.LBB17_11:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, 0
	vshuf4i.w	$vr1, $vr1, 27
	vadd.w	$vr0, $vr1, $vr0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -16
	bnez	$a2, .LBB17_11
# %bb.12:                               # %vec.epilog.middle.block
	vreplvei.d	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a3, $vr0, 0
	bne	$a5, $a1, .LBB17_15
.LBB17_13:                              # %._crit_edge
	st.w	$a3, $a0, 0
	ret
.LBB17_14:
	andi	$a4, $a1, 15
.LBB17_15:                              # %.lr.ph.preheader
	addi.d	$a1, $a4, 1
	alsl.d	$a2, $a4, $a0, 2
	addi.d	$a2, $a2, -4
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB17_16:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, 0
	add.d	$a3, $a5, $a3
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	bltu	$a4, $a1, .LBB17_16
	b	.LBB17_13
.Lfunc_end17:
	.size	_Z9example21Pii, .Lfunc_end17-_Z9example21Pii
                                        # -- End function
	.globl	_Z9example23PtPj                # -- Begin function _Z9example23PtPj
	.p2align	5
	.type	_Z9example23PtPj,@function
_Z9example23PtPj:                       # @_Z9example23PtPj
# %bb.0:                                # %vector.ph
	move	$a2, $zero
	ori	$a3, $zero, 512
	.p2align	4, , 16
.LBB18_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $a0, $a2
	vpickve2gr.h	$a4, $vr0, 0
	bstrpick.d	$a4, $a4, 15, 0
	xvinsgr2vr.w	$xr1, $a4, 0
	vpickve2gr.h	$a4, $vr0, 1
	bstrpick.d	$a4, $a4, 15, 0
	xvinsgr2vr.w	$xr1, $a4, 1
	vpickve2gr.h	$a4, $vr0, 2
	bstrpick.d	$a4, $a4, 15, 0
	xvinsgr2vr.w	$xr1, $a4, 2
	vpickve2gr.h	$a4, $vr0, 3
	bstrpick.d	$a4, $a4, 15, 0
	xvinsgr2vr.w	$xr1, $a4, 3
	vpickve2gr.h	$a4, $vr0, 4
	bstrpick.d	$a4, $a4, 15, 0
	xvinsgr2vr.w	$xr1, $a4, 4
	vpickve2gr.h	$a4, $vr0, 5
	bstrpick.d	$a4, $a4, 15, 0
	xvinsgr2vr.w	$xr1, $a4, 5
	vpickve2gr.h	$a4, $vr0, 6
	bstrpick.d	$a4, $a4, 15, 0
	xvinsgr2vr.w	$xr1, $a4, 6
	vpickve2gr.h	$a4, $vr0, 7
	bstrpick.d	$a4, $a4, 15, 0
	xvinsgr2vr.w	$xr1, $a4, 7
	xvslli.w	$xr0, $xr1, 7
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, 16
	addi.d	$a1, $a1, 32
	bne	$a2, $a3, .LBB18_1
# %bb.2:                                # %middle.block
	ret
.Lfunc_end18:
	.size	_Z9example23PtPj, .Lfunc_end18-_Z9example23PtPj
                                        # -- End function
	.globl	_Z9example24ss                  # -- Begin function _Z9example24ss
	.p2align	5
	.type	_Z9example24ss,@function
_Z9example24ss:                         # @_Z9example24ss
# %bb.0:                                # %vector.ph
	vinsgr2vr.h	$vr0, $a0, 0
	vreplvei.h	$vr0, $vr0, 0
	vinsgr2vr.h	$vr1, $a1, 0
	vreplvei.h	$vr1, $vr1, 0
	lu12i.w	$a0, -1
	pcalau12i	$a1, %pc_hi20(fa)
	addi.d	$a1, $a1, %pc_lo12(fa)
	lu12i.w	$a2, 1
	ori	$a3, $a2, 16
	pcalau12i	$a4, %pc_hi20(fb)
	addi.d	$a4, $a4, %pc_lo12(fb)
	vilvl.h	$vr0, $vr0, $vr0
	vslli.w	$vr0, $vr0, 16
	vsrai.w	$vr0, $vr0, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	pcalau12i	$a5, %pc_hi20(ic)
	addi.d	$a5, $a5, %pc_lo12(ic)
	.p2align	4, , 16
.LBB19_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a6, $a1, $a0
	vldx	$vr2, $a6, $a2
	vldx	$vr3, $a6, $a3
	add.d	$a6, $a4, $a0
	vldx	$vr4, $a6, $a2
	vldx	$vr5, $a6, $a3
	vfcmp.clt.s	$vr2, $vr2, $vr4
	vfcmp.clt.s	$vr3, $vr3, $vr5
	vbitsel.v	$vr2, $vr1, $vr0, $vr2
	vbitsel.v	$vr3, $vr1, $vr0, $vr3
	add.d	$a6, $a5, $a0
	vstx	$vr2, $a6, $a2
	addi.d	$a0, $a0, 32
	vstx	$vr3, $a6, $a3
	bnez	$a0, .LBB19_1
# %bb.2:                                # %middle.block
	ret
.Lfunc_end19:
	.size	_Z9example24ss, .Lfunc_end19-_Z9example24ss
                                        # -- End function
	.globl	_Z9example25v                   # -- Begin function _Z9example25v
	.p2align	5
	.type	_Z9example25v,@function
_Z9example25v:                          # @_Z9example25v
# %bb.0:                                # %vector.ph
	lu12i.w	$a0, -1
	pcalau12i	$a1, %pc_hi20(da)
	addi.d	$a1, $a1, %pc_lo12(da)
	lu12i.w	$a2, 1
	ori	$a3, $a2, 16
	pcalau12i	$a4, %pc_hi20(db)
	addi.d	$a4, $a4, %pc_lo12(db)
	pcalau12i	$a5, %pc_hi20(dc)
	addi.d	$a5, $a5, %pc_lo12(dc)
	pcalau12i	$a6, %pc_hi20(dd)
	addi.d	$a6, $a6, %pc_lo12(dd)
	vrepli.w	$vr0, 1
	pcalau12i	$a7, %pc_hi20(dj)
	addi.d	$a7, $a7, %pc_lo12(dj)
	.p2align	4, , 16
.LBB20_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t0, $a1, $a0
	vldx	$vr1, $t0, $a2
	vldx	$vr2, $t0, $a3
	add.d	$t0, $a4, $a0
	vldx	$vr3, $t0, $a2
	vldx	$vr4, $t0, $a3
	add.d	$t0, $a5, $a0
	vldx	$vr5, $t0, $a2
	vldx	$vr6, $t0, $a3
	add.d	$t0, $a6, $a0
	vldx	$vr7, $t0, $a2
	vldx	$vr8, $t0, $a3
	vfcmp.clt.s	$vr1, $vr1, $vr3
	vfcmp.clt.s	$vr2, $vr2, $vr4
	vfcmp.clt.s	$vr3, $vr5, $vr7
	vfcmp.clt.s	$vr4, $vr6, $vr8
	vand.v	$vr1, $vr1, $vr3
	vand.v	$vr2, $vr2, $vr4
	vand.v	$vr1, $vr1, $vr0
	vand.v	$vr2, $vr2, $vr0
	add.d	$t0, $a7, $a0
	vstx	$vr1, $t0, $a2
	addi.d	$a0, $a0, 32
	vstx	$vr2, $t0, $a3
	bnez	$a0, .LBB20_1
# %bb.2:                                # %middle.block
	ret
.Lfunc_end20:
	.size	_Z9example25v, .Lfunc_end20-_Z9example25v
                                        # -- End function
	.globl	_Z11init_memoryPvS_             # -- Begin function _Z11init_memoryPvS_
	.p2align	5
	.type	_Z11init_memoryPvS_,@function
_Z11init_memoryPvS_:                    # @_Z11init_memoryPvS_
# %bb.0:
	beq	$a0, $a1, .LBB21_3
# %bb.1:                                # %.lr.ph.preheader
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB21_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a3, $a2
	xori	$a2, $a2, 39
	addi.d	$a2, $a2, 1
	st.b	$a2, $a0, 0
	addi.d	$a0, $a0, 1
	bne	$a0, $a1, .LBB21_2
.LBB21_3:                               # %._crit_edge
	ret
.Lfunc_end21:
	.size	_Z11init_memoryPvS_, .Lfunc_end21-_Z11init_memoryPvS_
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z17init_memory_floatPfS_
.LCPI22_0:
	.dword	0x3ff199999999999a              # double 1.1000000000000001
	.text
	.globl	_Z17init_memory_floatPfS_
	.p2align	5
	.type	_Z17init_memory_floatPfS_,@function
_Z17init_memory_floatPfS_:              # @_Z17init_memory_floatPfS_
# %bb.0:
	beq	$a0, $a1, .LBB22_3
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a2, %pc_hi20(.LCPI22_0)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI22_0)
	vldi	$vr1, -1168
	.p2align	4, , 16
.LBB22_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fcvt.d.s	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 4
	bne	$a0, $a1, .LBB22_2
.LBB22_3:                               # %._crit_edge
	ret
.Lfunc_end22:
	.size	_Z17init_memory_floatPfS_, .Lfunc_end22-_Z17init_memory_floatPfS_
                                        # -- End function
	.globl	_Z13digest_memoryPvS_           # -- Begin function _Z13digest_memoryPvS_
	.p2align	5
	.type	_Z13digest_memoryPvS_,@function
_Z13digest_memoryPvS_:                  # @_Z13digest_memoryPvS_
# %bb.0:
	ori	$a2, $zero, 1
	beq	$a0, $a1, .LBB23_2
	.p2align	4, , 16
.LBB23_1:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a0, 0
	alsl.w	$a2, $a2, $a2, 1
	xor	$a3, $a2, $a3
	bstrpick.d	$a2, $a2, 31, 8
	slli.d	$a3, $a3, 8
	addi.d	$a0, $a0, 1
	xor	$a2, $a3, $a2
	bne	$a0, $a1, .LBB23_1
.LBB23_2:                               # %._crit_edge
	addi.w	$a0, $a2, 0
	ret
.Lfunc_end23:
	.size	_Z13digest_memoryPvS_, .Lfunc_end23-_Z13digest_memoryPvS_
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI24_0:
	.dword	0x3ff199999999999a              # double 1.1000000000000001
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI24_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI24_2:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -176
	.cfi_def_cfa_offset 176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	st.w	$zero, $sp, 84
	ori	$a2, $zero, 1
	lu12i.w	$a1, -1
	pcalau12i	$a3, %pc_hi20(ia)
	addi.d	$a3, $a3, %pc_lo12(ia)
	lu12i.w	$s6, 1
	.p2align	4, , 16
.LBB24_1:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a3, $a1
	slli.d	$a5, $a2, 3
	sub.d	$a2, $a5, $a2
	xori	$a2, $a2, 39
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 1
	stx.b	$a2, $a4, $s6
	bnez	$a1, .LBB24_1
# %bb.2:                                # %.lr.ph.i79.preheader
	ori	$a2, $zero, 1
	lu12i.w	$a1, -1
	pcalau12i	$a3, %pc_hi20(ib)
	addi.d	$a3, $a3, %pc_lo12(ib)
	.p2align	4, , 16
.LBB24_3:                               # %.lr.ph.i79
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a3, $a1
	slli.d	$a5, $a2, 3
	sub.d	$a2, $a5, $a2
	xori	$a2, $a2, 39
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 1
	stx.b	$a2, $a4, $s6
	bnez	$a1, .LBB24_3
# %bb.4:                                # %.lr.ph.i84.preheader
	ori	$a2, $zero, 1
	lu12i.w	$a1, -1
	pcalau12i	$a3, %pc_hi20(ic)
	addi.d	$a3, $a3, %pc_lo12(ic)
	.p2align	4, , 16
.LBB24_5:                               # %.lr.ph.i84
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a3, $a1
	slli.d	$a5, $a2, 3
	sub.d	$a2, $a5, $a2
	xori	$a2, $a2, 39
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 1
	stx.b	$a2, $a4, $s6
	bnez	$a1, .LBB24_5
# %bb.6:                                # %.lr.ph.i89.preheader
	move	$a1, $zero
	ori	$a3, $zero, 1
	pcalau12i	$a2, %pc_hi20(sa)
	addi.d	$a2, $a2, %pc_lo12(sa)
	ori	$a4, $zero, 2048
	.p2align	4, , 16
.LBB24_7:                               # %.lr.ph.i89
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a5, $a3, 3
	sub.d	$a3, $a5, $a3
	xori	$a3, $a3, 39
	addi.d	$a3, $a3, 1
	stx.b	$a3, $a2, $a1
	addi.d	$a1, $a1, 1
	bne	$a1, $a4, .LBB24_7
# %bb.8:                                # %.lr.ph.i94.preheader
	move	$a1, $zero
	ori	$a3, $zero, 1
	pcalau12i	$a2, %pc_hi20(sb)
	addi.d	$a2, $a2, %pc_lo12(sb)
	ori	$a4, $zero, 2048
	.p2align	4, , 16
.LBB24_9:                               # %.lr.ph.i94
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a5, $a3, 3
	sub.d	$a3, $a5, $a3
	xori	$a3, $a3, 39
	addi.d	$a3, $a3, 1
	stx.b	$a3, $a2, $a1
	addi.d	$a1, $a1, 1
	bne	$a1, $a4, .LBB24_9
# %bb.10:                               # %.lr.ph.i99.preheader
	move	$a1, $zero
	ori	$a3, $zero, 1
	pcalau12i	$a2, %pc_hi20(sc)
	addi.d	$a2, $a2, %pc_lo12(sc)
	ori	$a4, $zero, 2048
	.p2align	4, , 16
.LBB24_11:                              # %.lr.ph.i99
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a5, $a3, 3
	sub.d	$a3, $a5, $a3
	xori	$a3, $a3, 39
	addi.d	$a3, $a3, 1
	stx.b	$a3, $a2, $a1
	addi.d	$a1, $a1, 1
	bne	$a1, $a4, .LBB24_11
# %bb.12:                               # %.lr.ph.i104.preheader
	ori	$a3, $zero, 1
	lu12i.w	$a2, -2
	pcalau12i	$a1, %pc_hi20(a)
	addi.d	$s7, $a1, %pc_lo12(a)
	lu12i.w	$a1, 2
	.p2align	4, , 16
.LBB24_13:                              # %.lr.ph.i104
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $s7, $a2
	slli.d	$a5, $a3, 3
	sub.d	$a3, $a5, $a3
	xori	$a3, $a3, 39
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	stx.b	$a3, $a4, $a1
	bnez	$a2, .LBB24_13
# %bb.14:                               # %.lr.ph.i109.preheader
	ori	$a3, $zero, 1
	lu12i.w	$a2, -2
	pcalau12i	$a4, %pc_hi20(b)
	addi.d	$s0, $a4, %pc_lo12(b)
	.p2align	4, , 16
.LBB24_15:                              # %.lr.ph.i109
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $s0, $a2
	slli.d	$a5, $a3, 3
	sub.d	$a3, $a5, $a3
	xori	$a3, $a3, 39
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	stx.b	$a3, $a4, $a1
	bnez	$a2, .LBB24_15
# %bb.16:                               # %.lr.ph.i114.preheader
	ori	$a3, $zero, 1
	lu12i.w	$a2, -2
	pcalau12i	$a4, %pc_hi20(c)
	addi.d	$a4, $a4, %pc_lo12(c)
	.p2align	4, , 16
.LBB24_17:                              # %.lr.ph.i114
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a4, $a2
	slli.d	$a6, $a3, 3
	sub.d	$a3, $a6, $a3
	xori	$a3, $a3, 39
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	stx.b	$a3, $a5, $a1
	bnez	$a2, .LBB24_17
# %bb.18:                               # %.lr.ph.i119.preheader
	ori	$a2, $zero, 1
	lu12i.w	$a1, -1
	pcalau12i	$a3, %pc_hi20(ua)
	addi.d	$a3, $a3, %pc_lo12(ua)
	.p2align	4, , 16
.LBB24_19:                              # %.lr.ph.i119
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a3, $a1
	slli.d	$a5, $a2, 3
	sub.d	$a2, $a5, $a2
	xori	$a2, $a2, 39
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 1
	stx.b	$a2, $a4, $s6
	bnez	$a1, .LBB24_19
# %bb.20:                               # %.lr.ph.i124.preheader
	ori	$a2, $zero, 1
	lu12i.w	$a1, -1
	pcalau12i	$a3, %pc_hi20(ub)
	addi.d	$a3, $a3, %pc_lo12(ub)
	.p2align	4, , 16
.LBB24_21:                              # %.lr.ph.i124
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a3, $a1
	slli.d	$a5, $a2, 3
	sub.d	$a2, $a5, $a2
	xori	$a2, $a2, 39
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 1
	stx.b	$a2, $a4, $s6
	bnez	$a1, .LBB24_21
# %bb.22:                               # %.lr.ph.i129.preheader
	ori	$a2, $zero, 1
	lu12i.w	$a1, -1
	pcalau12i	$a3, %pc_hi20(uc)
	addi.d	$a3, $a3, %pc_lo12(uc)
	.p2align	4, , 16
.LBB24_23:                              # %.lr.ph.i129
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a3, $a1
	slli.d	$a5, $a2, 3
	sub.d	$a2, $a5, $a2
	xori	$a2, $a2, 39
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 1
	stx.b	$a2, $a4, $s6
	bnez	$a1, .LBB24_23
# %bb.24:                               # %.lr.ph.i134.preheader
	ori	$a2, $zero, 1
	lu12i.w	$a1, -1
	pcalau12i	$a3, %pc_hi20(G)
	addi.d	$s3, $a3, %pc_lo12(G)
	.p2align	4, , 16
.LBB24_25:                              # %.lr.ph.i134
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s3, $a1
	slli.d	$a4, $a2, 3
	sub.d	$a2, $a4, $a2
	xori	$a2, $a2, 39
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 1
	stx.b	$a2, $a3, $s6
	bnez	$a1, .LBB24_25
# %bb.26:                               # %.lr.ph.i139.preheader
	lu12i.w	$a1, -1
	pcalau12i	$a2, %pc_hi20(.LCPI24_0)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI24_0)
	vldi	$vr1, -1168
	pcalau12i	$a2, %pc_hi20(fa)
	addi.d	$a2, $a2, %pc_lo12(fa)
	.p2align	4, , 16
.LBB24_27:                              # %.lr.ph.i139
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a2, $a1
	fcvt.d.s	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	fcvt.s.d	$fa1, $fa1
	addi.d	$a1, $a1, 4
	fstx.s	$fa1, $a3, $s6
	bnez	$a1, .LBB24_27
# %bb.28:                               # %.lr.ph.i141.preheader
	lu12i.w	$a1, -1
	vldi	$vr1, -1168
	pcalau12i	$a2, %pc_hi20(fb)
	addi.d	$a2, $a2, %pc_lo12(fb)
	.p2align	4, , 16
.LBB24_29:                              # %.lr.ph.i141
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a2, $a1
	fcvt.d.s	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	fcvt.s.d	$fa1, $fa1
	addi.d	$a1, $a1, 4
	fstx.s	$fa1, $a3, $s6
	bnez	$a1, .LBB24_29
# %bb.30:                               # %.lr.ph.i146.preheader
	lu12i.w	$a1, -1
	vldi	$vr1, -1168
	pcalau12i	$a2, %pc_hi20(da)
	addi.d	$a2, $a2, %pc_lo12(da)
	.p2align	4, , 16
.LBB24_31:                              # %.lr.ph.i146
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a2, $a1
	fcvt.d.s	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	fcvt.s.d	$fa1, $fa1
	addi.d	$a1, $a1, 4
	fstx.s	$fa1, $a3, $s6
	bnez	$a1, .LBB24_31
# %bb.32:                               # %.lr.ph.i151.preheader
	lu12i.w	$a1, -1
	vldi	$vr1, -1168
	pcalau12i	$a2, %pc_hi20(db)
	addi.d	$a2, $a2, %pc_lo12(db)
	.p2align	4, , 16
.LBB24_33:                              # %.lr.ph.i151
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a2, $a1
	fcvt.d.s	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	fcvt.s.d	$fa1, $fa1
	addi.d	$a1, $a1, 4
	fstx.s	$fa1, $a3, $s6
	bnez	$a1, .LBB24_33
# %bb.34:                               # %.lr.ph.i156.preheader
	lu12i.w	$a1, -1
	vldi	$vr1, -1168
	pcalau12i	$a2, %pc_hi20(dc)
	addi.d	$a2, $a2, %pc_lo12(dc)
	.p2align	4, , 16
.LBB24_35:                              # %.lr.ph.i156
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a2, $a1
	fcvt.d.s	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	fcvt.s.d	$fa1, $fa1
	addi.d	$a1, $a1, 4
	fstx.s	$fa1, $a3, $s6
	bnez	$a1, .LBB24_35
# %bb.36:                               # %.lr.ph.i161.preheader
	lu12i.w	$a1, -1
	vldi	$vr1, -1168
	pcalau12i	$a2, %pc_hi20(dd)
	addi.d	$a2, $a2, %pc_lo12(dd)
	.p2align	4, , 16
.LBB24_37:                              # %.lr.ph.i161
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a2, $a1
	fcvt.d.s	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	fcvt.s.d	$fa1, $fa1
	addi.d	$a1, $a1, 4
	fstx.s	$fa1, $a3, $s6
	bnez	$a1, .LBB24_37
# %bb.38:                               # %_Z17init_memory_floatPfS_.exit165
	ori	$a1, $zero, 1
	slt	$s8, $a1, $a0
	pcaddu18i	$ra, %call36(_Z8example1v)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 32
	st.b	$s8, $sp, 40
	addi.d	$a0, $sp, 48
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	lu12i.w	$fp, 640
	.p2align	4, , 16
.LBB24_39:                              # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(_Z8example1v)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, -1
	bnez	$fp, .LBB24_39
# %bb.40:                               # %.lr.ph.i166.preheader
	move	$a0, $zero
	ori	$s1, $zero, 1
	ori	$a1, $zero, 1024
	.p2align	4, , 16
.LBB24_41:                              # %.lr.ph.i166
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a2, $s7, $a0
	alsl.w	$a3, $s1, $s1, 1
	xor	$a2, $a3, $a2
	bstrpick.d	$a3, $a3, 31, 8
	slli.d	$a2, $a2, 8
	addi.d	$a0, $a0, 1
	xor	$s1, $a2, $a3
	bne	$a0, $a1, .LBB24_41
# %bb.42:                               # %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i
.Ltmp0:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1:
# %bb.43:
	move	$fp, $a0
	st.w	$s1, $a0, 0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN5TimerD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1024
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(_Z9example2aii)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $sp, 32
	st.b	$s8, $sp, 40
	addi.d	$a0, $sp, 48
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	lu12i.w	$s1, 256
	.p2align	4, , 16
.LBB24_44:                              # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 1024
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(_Z9example2aii)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, -1
	bnez	$s1, .LBB24_44
# %bb.45:                               # %.lr.ph.i170.preheader
	ori	$s1, $zero, 1
	lu12i.w	$a0, -1
	.p2align	4, , 16
.LBB24_46:                              # %.lr.ph.i170
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $s0, $a0
	ldx.bu	$a1, $a1, $s6
	alsl.w	$a2, $s1, $s1, 1
	xor	$a1, $a2, $a1
	bstrpick.d	$a2, $a2, 31, 8
	slli.d	$a1, $a1, 8
	addi.d	$a0, $a0, 1
	xor	$s1, $a1, $a2
	bnez	$a0, .LBB24_46
# %bb.47:                               # %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i176
.Ltmp3:
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp4:
# %bb.48:                               # %.noexc182
	move	$s0, $a0
	ld.w	$a0, $fp, 0
	st.w	$s1, $s0, 4
	st.w	$a0, $s0, 0
	ori	$a1, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN5TimerD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1024
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_Z9example2bii)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 32
	st.b	$s8, $sp, 40
	addi.d	$a0, $sp, 48
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	lu12i.w	$fp, 128
	.p2align	4, , 16
.LBB24_49:                              # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 1024
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_Z9example2bii)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, -1
	bnez	$fp, .LBB24_49
# %bb.50:                               # %.lr.ph.i184.preheader
	ori	$s1, $zero, 1
	lu12i.w	$a0, -1
	.p2align	4, , 16
.LBB24_51:                              # %.lr.ph.i184
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $s7, $a0
	ldx.bu	$a1, $a1, $s6
	alsl.w	$a2, $s1, $s1, 1
	xor	$a1, $a2, $a1
	bstrpick.d	$a2, $a2, 31, 8
	slli.d	$a1, $a1, 8
	addi.d	$a0, $a0, 1
	xor	$s1, $a1, $a2
	bnez	$a0, .LBB24_51
# %bb.52:                               # %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i190
.Ltmp6:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp7:
# %bb.53:                               # %_ZNSt6vectorIjSaIjEE17_M_realloc_appendIJRKjEEEvDpOT_.exit.i194
	move	$fp, $a0
	ld.d	$a0, $s0, 0
	st.w	$s1, $fp, 8
	st.d	$a0, $fp, 0
	ori	$a1, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$s5, $fp, 16
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN5TimerD2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(ia)
	addi.d	$s0, $a0, %pc_lo12(ia)
	pcalau12i	$a0, %pc_hi20(ib)
	addi.d	$s1, $a0, %pc_lo12(ib)
	ori	$a0, $zero, 1024
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_Z8example3iPiS_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	st.d	$a0, $sp, 32
	st.b	$s8, $sp, 40
	addi.d	$a0, $sp, 48
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	lu12i.w	$s2, 128
	.p2align	4, , 16
.LBB24_54:                              # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 1024
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_Z8example3iPiS_)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, -1
	bnez	$s2, .LBB24_54
# %bb.55:                               # %.lr.ph.i198.preheader
	ori	$a1, $zero, 1
	lu12i.w	$a0, -1
	.p2align	4, , 16
.LBB24_56:                              # %.lr.ph.i198
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $s0, $a0
	ldx.bu	$a2, $a2, $s6
	alsl.w	$a1, $a1, $a1, 1
	xor	$a2, $a1, $a2
	bstrpick.d	$a1, $a1, 31, 8
	slli.d	$a2, $a2, 8
	addi.d	$a0, $a0, 1
	xor	$a1, $a2, $a1
	bnez	$a0, .LBB24_56
# %bb.57:                               # %_ZNSt6vectorIjSaIjEE9push_backERKj.exit211
	st.w	$a1, $fp, 12
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN5TimerD2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(ia)
	addi.d	$s2, $a0, %pc_lo12(ia)
	pcalau12i	$a0, %pc_hi20(ib)
	addi.d	$s1, $a0, %pc_lo12(ib)
	ori	$a0, $zero, 1024
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_Z9example4aiPiS_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	st.d	$a0, $sp, 32
	st.b	$s8, $sp, 40
	addi.d	$a0, $sp, 48
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	lu12i.w	$s0, 128
	.p2align	4, , 16
.LBB24_58:                              # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 1024
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_Z9example4aiPiS_)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, -1
	bnez	$s0, .LBB24_58
# %bb.59:                               # %.lr.ph.i212.preheader
	ori	$s4, $zero, 1
	lu12i.w	$a0, -1
	.p2align	4, , 16
.LBB24_60:                              # %.lr.ph.i212
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $s2, $a0
	ldx.bu	$a1, $a1, $s6
	alsl.w	$a2, $s4, $s4, 1
	xor	$a1, $a2, $a1
	bstrpick.d	$a2, $a2, 31, 8
	slli.d	$a1, $a1, 8
	addi.d	$a0, $a0, 1
	xor	$s4, $a1, $a2
	bnez	$a0, .LBB24_60
# %bb.61:                               # %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i218
.Ltmp9:
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp10:
# %bb.62:                               # %_ZNSt6vectorIjSaIjEE9push_backERKj.exit225
	move	$s0, $a0
	vld	$vr0, $fp, 0
	st.w	$s4, $a0, 16
	vst	$vr0, $a0, 0
	ori	$a1, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s0, 32
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN5TimerD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1014
	pcaddu18i	$ra, %call36(_Z9example4biPiS_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	st.d	$a0, $sp, 32
	st.b	$s8, $sp, 40
	addi.d	$a0, $sp, 48
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	lu12i.w	$fp, 128
	.p2align	4, , 16
.LBB24_63:                              # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 1014
	pcaddu18i	$ra, %call36(_Z9example4biPiS_)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, -1
	bnez	$fp, .LBB24_63
# %bb.64:                               # %.lr.ph.i226.preheader
	ori	$a1, $zero, 1
	lu12i.w	$a0, -1
	.p2align	4, , 16
.LBB24_65:                              # %.lr.ph.i226
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $s2, $a0
	ldx.bu	$a2, $a2, $s6
	alsl.w	$a1, $a1, $a1, 1
	xor	$a2, $a1, $a2
	bstrpick.d	$a1, $a1, 31, 8
	slli.d	$a2, $a2, 8
	addi.d	$a0, $a0, 1
	xor	$a1, $a2, $a1
	bnez	$a0, .LBB24_65
# %bb.66:                               # %_ZNSt6vectorIjSaIjEE9push_backERKj.exit239
	st.w	$a1, $s0, 20
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN5TimerD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1024
	pcaddu18i	$ra, %call36(_Z9example4ciPiS_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	st.d	$a0, $sp, 32
	st.b	$s8, $sp, 40
	addi.d	$a0, $sp, 48
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	lu12i.w	$fp, 128
	.p2align	4, , 16
.LBB24_67:                              # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 1024
	pcaddu18i	$ra, %call36(_Z9example4ciPiS_)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, -1
	bnez	$fp, .LBB24_67
# %bb.68:                               # %.lr.ph.i240.preheader
	ori	$a1, $zero, 1
	lu12i.w	$a0, -1
	.p2align	4, , 16
.LBB24_69:                              # %.lr.ph.i240
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $s1, $a0
	ldx.bu	$a2, $a2, $s6
	alsl.w	$a1, $a1, $a1, 1
	xor	$a2, $a1, $a2
	bstrpick.d	$a1, $a1, 31, 8
	slli.d	$a2, $a2, 8
	addi.d	$a0, $a0, 1
	xor	$a1, $a2, $a1
	bnez	$a0, .LBB24_69
# %bb.70:                               # %_Z13digest_memoryPvS_.exit244
	st.w	$a1, $s0, 24
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN5TimerD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Z8example7i)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	st.d	$a0, $sp, 32
	st.b	$s8, $sp, 40
	addi.d	$a0, $sp, 48
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	lu12i.w	$fp, 256
	.p2align	4, , 16
.LBB24_71:                              # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Z8example7i)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, -1
	bnez	$fp, .LBB24_71
# %bb.72:                               # %.lr.ph.i254.preheader
	ori	$a1, $zero, 1
	lu12i.w	$a0, -1
	.p2align	4, , 16
.LBB24_73:                              # %.lr.ph.i254
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $s7, $a0
	ldx.bu	$a2, $a2, $s6
	alsl.w	$a1, $a1, $a1, 1
	xor	$a2, $a1, $a2
	bstrpick.d	$a1, $a1, 31, 8
	slli.d	$a2, $a2, 8
	addi.d	$a0, $a0, 1
	xor	$a1, $a2, $a1
	bnez	$a0, .LBB24_73
# %bb.74:                               # %_Z13digest_memoryPvS_.exit258
	st.w	$a1, $s0, 28
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN5TimerD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Z8example8i)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	st.d	$a0, $sp, 32
	st.b	$s8, $sp, 40
	addi.d	$a0, $sp, 48
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	lu12i.w	$fp, 16
	.p2align	4, , 16
.LBB24_75:                              # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Z8example8i)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, -1
	bnez	$fp, .LBB24_75
# %bb.76:                               # %.lr.ph.i268.preheader
	ori	$s1, $zero, 1
	lu12i.w	$a0, -1
	.p2align	4, , 16
.LBB24_77:                              # %.lr.ph.i268
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $s3, $a0
	ldx.bu	$a1, $a1, $s6
	alsl.w	$a2, $s1, $s1, 1
	xor	$a1, $a2, $a1
	bstrpick.d	$a2, $a2, 31, 8
	slli.d	$a1, $a1, 8
	addi.d	$a0, $a0, 1
	xor	$s1, $a1, $a2
	bnez	$a0, .LBB24_77
# %bb.78:                               # %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i274
.Ltmp12:
	ori	$a0, $zero, 64
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp13:
# %bb.79:                               # %.noexc280
	move	$fp, $a0
	xvld	$xr0, $s0, 0
	st.w	$s1, $a0, 32
	xvst	$xr0, $a0, 0
	ori	$a1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 64
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN5TimerD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 84
	pcaddu18i	$ra, %call36(_Z8example9Pj)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	st.d	$a0, $sp, 32
	st.b	$s8, $sp, 40
	addi.d	$a0, $sp, 48
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	lu12i.w	$s0, 128
	.p2align	4, , 16
.LBB24_80:                              # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 84
	pcaddu18i	$ra, %call36(_Z8example9Pj)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, -1
	bnez	$s0, .LBB24_80
# %bb.81:                               # %_ZNSt6vectorIjSaIjEE9push_backERKj.exit290
	ld.w	$a0, $sp, 84
	st.w	$a0, $fp, 36
	addi.d	$a0, $fp, 40
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN5TimerD2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(sa)
	addi.d	$s0, $a0, %pc_lo12(sa)
	pcalau12i	$a0, %pc_hi20(sb)
	addi.d	$s2, $a0, %pc_lo12(sb)
	pcalau12i	$a0, %pc_hi20(sc)
	addi.d	$s3, $a0, %pc_lo12(sc)
	pcalau12i	$a0, %pc_hi20(ia)
	addi.d	$s1, $a0, %pc_lo12(ia)
	pcalau12i	$a0, %pc_hi20(ib)
	addi.d	$s4, $a0, %pc_lo12(ib)
	pcalau12i	$a0, %pc_hi20(ic)
	addi.d	$s5, $a0, %pc_lo12(ic)
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s3
	move	$a3, $s1
	move	$a4, $s4
	move	$a5, $s5
	pcaddu18i	$ra, %call36(_Z10example10aPsS_S_PiS0_S0_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	st.d	$a0, $sp, 32
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	st.b	$s8, $sp, 40
	addi.d	$a0, $sp, 48
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	lu12i.w	$s8, 128
	.p2align	4, , 16
.LBB24_82:                              # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s3
	move	$a3, $s1
	move	$a4, $s4
	move	$a5, $s5
	pcaddu18i	$ra, %call36(_Z10example10aPsS_S_PiS0_S0_)
	jirl	$ra, $ra, 0
	addi.w	$s8, $s8, -1
	bnez	$s8, .LBB24_82
# %bb.83:                               # %.lr.ph.i291.preheader
	ori	$a0, $zero, 1
	lu12i.w	$a1, -1
	.p2align	4, , 16
.LBB24_84:                              # %.lr.ph.i291
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $s1, $a1
	ldx.bu	$a2, $a2, $s6
	alsl.w	$a0, $a0, $a0, 1
	xor	$a2, $a0, $a2
	bstrpick.d	$a0, $a0, 31, 8
	slli.d	$a2, $a2, 8
	addi.d	$a1, $a1, 1
	xor	$a0, $a2, $a0
	bnez	$a1, .LBB24_84
# %bb.85:                               # %.lr.ph.i296.preheader
	move	$a1, $zero
	ori	$a3, $zero, 1
	ori	$a2, $zero, 2048
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	.p2align	4, , 16
.LBB24_86:                              # %.lr.ph.i296
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a4, $s0, $a1
	alsl.w	$a3, $a3, $a3, 1
	xor	$a4, $a3, $a4
	bstrpick.d	$a3, $a3, 31, 8
	slli.d	$a4, $a4, 8
	addi.d	$a1, $a1, 1
	xor	$a3, $a4, $a3
	bne	$a1, $a2, .LBB24_86
# %bb.87:                               # %_Z13digest_memoryPvS_.exit300
	add.d	$s1, $a3, $a0
	beq	$s3, $s5, .LBB24_89
# %bb.88:
	st.w	$s1, $s3, 0
	b	.LBB24_91
.LBB24_89:                              # %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i302
.Ltmp15:
	ori	$a0, $zero, 128
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp16:
# %bb.90:                               # %.noexc308
	move	$s0, $a0
	xvld	$xr0, $fp, 0
	xvld	$xr1, $fp, 32
	addi.d	$s3, $a0, 64
	st.w	$s1, $a0, 64
	xvst	$xr0, $a0, 0
	xvst	$xr1, $a0, 32
	ori	$a1, $zero, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s0, 128
	move	$fp, $s0
.LBB24_91:                              # %_ZNSt6vectorIjSaIjEE9push_backERKj.exit309
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN5TimerD2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(sb)
	addi.d	$s1, $a0, %pc_lo12(sb)
	pcalau12i	$a0, %pc_hi20(ia)
	addi.d	$s0, $a0, %pc_lo12(ia)
	move	$a1, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_Z10example10bPsS_S_PiS0_S0_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	st.d	$a0, $sp, 32
	st.b	$s8, $sp, 40
	addi.d	$a0, $sp, 48
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	lu12i.w	$s2, 256
	.p2align	4, , 16
.LBB24_92:                              # =>This Inner Loop Header: Depth=1
	move	$a1, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_Z10example10bPsS_S_PiS0_S0_)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, -1
	bnez	$s2, .LBB24_92
# %bb.93:                               # %.lr.ph.i310.preheader
	ori	$s2, $zero, 1
	lu12i.w	$a0, -1
	.p2align	4, , 16
.LBB24_94:                              # %.lr.ph.i310
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $s0, $a0
	ldx.bu	$a1, $a1, $s6
	alsl.w	$a2, $s2, $s2, 1
	xor	$a1, $a2, $a1
	bstrpick.d	$a2, $a2, 31, 8
	slli.d	$a1, $a1, 8
	addi.d	$a0, $a0, 1
	xor	$s2, $a1, $a2
	bnez	$a0, .LBB24_94
# %bb.95:                               # %_Z13digest_memoryPvS_.exit314
	addi.d	$a0, $s3, 4
	beq	$a0, $s5, .LBB24_97
# %bb.96:
	st.w	$s2, $s3, 4
	addi.d	$s2, $s3, 8
	move	$s0, $fp
	b	.LBB24_102
.LBB24_97:
	sub.d	$s1, $s5, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB24_181
# %bb.98:                               # %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i316
	srai.d	$a0, $s1, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	addi.w	$a2, $zero, -1
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
.Ltmp18:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp19:
# %bb.99:                               # %.noexc322
	move	$s0, $a0
	add.d	$s5, $a0, $s1
	stx.w	$s2, $a0, $s1
	blt	$s1, $s4, .LBB24_101
# %bb.100:
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB24_101:                             # %_ZNSt6vectorIjSaIjEE17_M_realloc_appendIJRKjEEEvDpOT_.exit.i320
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s5, 4
	alsl.d	$s5, $s3, $s0, 2
.LBB24_102:                             # %_ZNSt6vectorIjSaIjEE9push_backERKj.exit323
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN5TimerD2Ev)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_Z9example11v)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	st.d	$a0, $sp, 32
	st.b	$s8, $sp, 40
	addi.d	$a0, $sp, 48
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	lu12i.w	$fp, 128
	.p2align	4, , 16
.LBB24_103:                             # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(_Z9example11v)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, -1
	bnez	$fp, .LBB24_103
# %bb.104:                              # %.lr.ph.i324.preheader
	ori	$s3, $zero, 1
	lu12i.w	$a0, -1
	pcalau12i	$a1, %pc_hi20(d)
	addi.d	$a1, $a1, %pc_lo12(d)
	.p2align	4, , 16
.LBB24_105:                             # %.lr.ph.i324
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $a1, $a0
	ldx.bu	$a2, $a2, $s6
	alsl.w	$a3, $s3, $s3, 1
	xor	$a2, $a3, $a2
	bstrpick.d	$a3, $a3, 31, 8
	slli.d	$a2, $a2, 8
	addi.d	$a0, $a0, 1
	xor	$s3, $a2, $a3
	bnez	$a0, .LBB24_105
# %bb.106:                              # %_Z13digest_memoryPvS_.exit328
	beq	$s2, $s5, .LBB24_108
# %bb.107:
	st.w	$s3, $s2, 0
	move	$fp, $s0
	b	.LBB24_113
.LBB24_108:
	sub.d	$s1, $s5, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB24_183
# %bb.109:                              # %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i330
	srai.d	$a0, $s1, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	addi.w	$a2, $zero, -1
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
.Ltmp20:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp21:
# %bb.110:                              # %.noexc336
	move	$fp, $a0
	stx.w	$s3, $a0, $s1
	blt	$s1, $s2, .LBB24_112
# %bb.111:
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB24_112:                             # %_ZNSt6vectorIjSaIjEE17_M_realloc_appendIJRKjEEEvDpOT_.exit.i334
	add.d	$s2, $fp, $s1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	alsl.d	$s5, $s4, $fp, 2
.LBB24_113:                             # %_ZNSt6vectorIjSaIjEE9push_backERKj.exit337
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN5TimerD2Ev)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_Z9example12v)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	st.d	$a0, $sp, 32
	st.b	$s8, $sp, 40
	addi.d	$a0, $sp, 48
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	lu12i.w	$s0, 256
	.p2align	4, , 16
.LBB24_114:                             # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(_Z9example12v)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, -1
	bnez	$s0, .LBB24_114
# %bb.115:                              # %.lr.ph.i338.preheader
	ori	$s3, $zero, 1
	lu12i.w	$a0, -1
	.p2align	4, , 16
.LBB24_116:                             # %.lr.ph.i338
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $s7, $a0
	ldx.bu	$a1, $a1, $s6
	alsl.w	$a2, $s3, $s3, 1
	xor	$a1, $a2, $a1
	bstrpick.d	$a2, $a2, 31, 8
	slli.d	$a1, $a1, 8
	addi.d	$a0, $a0, 1
	xor	$s3, $a1, $a2
	bnez	$a0, .LBB24_116
# %bb.117:                              # %_Z13digest_memoryPvS_.exit342
	addi.d	$a0, $s2, 4
	beq	$a0, $s5, .LBB24_119
# %bb.118:
	st.w	$s3, $s2, 4
	addi.d	$s2, $s2, 8
	move	$s0, $fp
	b	.LBB24_124
.LBB24_119:
	sub.d	$s1, $s5, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB24_185
# %bb.120:                              # %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i344
	srai.d	$a0, $s1, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	addi.w	$a2, $zero, -1
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
.Ltmp22:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp23:
# %bb.121:                              # %.noexc350
	move	$s0, $a0
	add.d	$s5, $a0, $s1
	stx.w	$s3, $a0, $s1
	blt	$s1, $s2, .LBB24_123
# %bb.122:
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB24_123:                             # %_ZNSt6vectorIjSaIjEE17_M_realloc_appendIJRKjEEEvDpOT_.exit.i348
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s5, 4
	alsl.d	$s5, $s4, $s0, 2
.LBB24_124:                             # %_ZNSt6vectorIjSaIjEE9push_backERKj.exit351
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN5TimerD2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(usa)
	addi.d	$fp, $a0, %pc_lo12(usa)
	pcalau12i	$a0, %pc_hi20(ua)
	addi.d	$s1, $a0, %pc_lo12(ua)
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_Z9example23PtPj)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	st.d	$a0, $sp, 32
	st.b	$s8, $sp, 40
	addi.d	$a0, $sp, 48
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	lu12i.w	$s3, 512
	.p2align	4, , 16
.LBB24_125:                             # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_Z9example23PtPj)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, -1
	bnez	$s3, .LBB24_125
# %bb.126:                              # %.lr.ph.i352.preheader
	move	$a0, $zero
	ori	$s3, $zero, 1
	ori	$a1, $zero, 512
	.p2align	4, , 16
.LBB24_127:                             # %.lr.ph.i352
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a2, $fp, $a0
	alsl.w	$a3, $s3, $s3, 1
	xor	$a2, $a3, $a2
	bstrpick.d	$a3, $a3, 31, 8
	slli.d	$a2, $a2, 8
	addi.d	$a0, $a0, 1
	xor	$s3, $a2, $a3
	bne	$a0, $a1, .LBB24_127
# %bb.128:                              # %_Z13digest_memoryPvS_.exit356
	beq	$s2, $s5, .LBB24_130
# %bb.129:
	st.w	$s3, $s2, 0
	move	$fp, $s0
	b	.LBB24_135
.LBB24_130:
	sub.d	$s1, $s5, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB24_187
# %bb.131:                              # %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i358
	srai.d	$a0, $s1, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	addi.w	$a2, $zero, -1
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
.Ltmp24:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp25:
# %bb.132:                              # %.noexc364
	move	$fp, $a0
	stx.w	$s3, $a0, $s1
	blt	$s1, $s2, .LBB24_134
# %bb.133:
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB24_134:                             # %_ZNSt6vectorIjSaIjEE17_M_realloc_appendIJRKjEEEvDpOT_.exit.i362
	add.d	$s2, $fp, $s1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	alsl.d	$s5, $s4, $fp, 2
.LBB24_135:                             # %_ZNSt6vectorIjSaIjEE9push_backERKj.exit365
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN5TimerD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(_Z9example24ss)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	st.d	$a0, $sp, 32
	st.b	$s8, $sp, 40
	addi.d	$a0, $sp, 48
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	lu12i.w	$s0, 128
	.p2align	4, , 16
.LBB24_136:                             # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 2
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(_Z9example24ss)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, -1
	bnez	$s0, .LBB24_136
# %bb.137:
	addi.d	$a0, $s2, 4
	beq	$a0, $s5, .LBB24_139
# %bb.138:
	st.w	$zero, $s2, 4
	addi.d	$s2, $s2, 8
	move	$s0, $fp
	b	.LBB24_144
.LBB24_139:
	sub.d	$s1, $s5, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB24_189
# %bb.140:                              # %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i367
	srai.d	$a0, $s1, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	addi.w	$a2, $zero, -1
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
.Ltmp26:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp27:
# %bb.141:                              # %.noexc373
	move	$s0, $a0
	add.d	$s4, $a0, $s1
	stx.w	$zero, $a0, $s1
	blt	$s1, $s2, .LBB24_143
# %bb.142:
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB24_143:                             # %_ZNSt6vectorIjSaIjEE17_M_realloc_appendIJRKjEEEvDpOT_.exit.i371
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s4, 4
	alsl.d	$s5, $s3, $s0, 2
.LBB24_144:                             # %_ZNSt6vectorIjSaIjEE9push_backERKj.exit374
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN5TimerD2Ev)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_Z9example25v)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	st.d	$a0, $sp, 32
	st.b	$s8, $sp, 40
	addi.d	$a0, $sp, 48
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	lu12i.w	$fp, 128
	.p2align	4, , 16
.LBB24_145:                             # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(_Z9example25v)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, -1
	bnez	$fp, .LBB24_145
# %bb.146:                              # %.lr.ph.i375.preheader
	ori	$s3, $zero, 1
	lu12i.w	$a0, -1
	pcalau12i	$a1, %pc_hi20(dj)
	addi.d	$a1, $a1, %pc_lo12(dj)
	.p2align	4, , 16
.LBB24_147:                             # %.lr.ph.i375
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $a1, $a0
	ldx.bu	$a2, $a2, $s6
	alsl.w	$a3, $s3, $s3, 1
	xor	$a2, $a3, $a2
	bstrpick.d	$a3, $a3, 31, 8
	slli.d	$a2, $a2, 8
	addi.d	$a0, $a0, 1
	xor	$s3, $a2, $a3
	bnez	$a0, .LBB24_147
# %bb.148:                              # %_Z13digest_memoryPvS_.exit379
	beq	$s2, $s5, .LBB24_150
# %bb.149:
	st.w	$s3, $s2, 0
	move	$fp, $s0
	b	.LBB24_155
.LBB24_150:
	sub.d	$s1, $s5, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB24_191
# %bb.151:                              # %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i381
	srai.d	$a0, $s1, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	addi.w	$a2, $zero, -1
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
.Ltmp28:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp29:
# %bb.152:                              # %.noexc387
	move	$fp, $a0
	stx.w	$s3, $a0, $s1
	blt	$s1, $s2, .LBB24_154
# %bb.153:
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB24_154:                             # %_ZNSt6vectorIjSaIjEE17_M_realloc_appendIJRKjEEEvDpOT_.exit.i385
	add.d	$s2, $fp, $s1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	alsl.d	$s5, $s4, $fp, 2
.LBB24_155:
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN5TimerD2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.wu	$a2, $a1, 24
	addi.w	$a3, $zero, -75
	lu32i.d	$a3, 0
	and	$a2, $a2, $a3
	addi.d	$a2, $a2, 8
	st.w	$a2, $a1, 24
.Ltmp30:
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp31:
# %bb.156:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	addi.d	$s0, $s2, 4
	beq	$fp, $s0, .LBB24_159
# %bb.157:                              # %iter.check
	sub.d	$a1, $s2, $fp
	ori	$a0, $zero, 12
	bgeu	$a1, $a0, .LBB24_160
# %bb.158:
	move	$a1, $zero
	move	$a3, $fp
	b	.LBB24_170
.LBB24_159:
	move	$a1, $zero
	b	.LBB24_172
.LBB24_160:                             # %vector.main.loop.iter.check
	srli.d	$a0, $a1, 2
	ori	$a2, $zero, 60
	addi.d	$a0, $a0, 1
	bgeu	$a1, $a2, .LBB24_162
# %bb.161:
	move	$a2, $zero
	move	$a1, $zero
	b	.LBB24_166
.LBB24_162:                             # %vector.ph
	bstrpick.d	$a1, $a0, 62, 4
	slli.d	$a2, $a1, 4
	xvrepli.b	$xr0, 0
	addi.d	$a1, $fp, 32
	move	$a3, $a2
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB24_163:                             # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a1, -32
	xvld	$xr3, $a1, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, 64
	bnez	$a3, .LBB24_163
# %bb.164:                              # %middle.block
	pcalau12i	$a1, %pc_hi20(.LCPI24_1)
	xvld	$xr2, $a1, %pc_lo12(.LCPI24_1)
	xvadd.w	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvshuf.d	$xr2, $xr0, $xr1
	xvadd.w	$xr0, $xr0, $xr2
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a1, $xr0, 0
	beq	$a0, $a2, .LBB24_172
# %bb.165:                              # %vec.epilog.iter.check
	andi	$a3, $a0, 12
	beqz	$a3, .LBB24_169
.LBB24_166:                             # %vec.epilog.ph
	bstrpick.d	$a3, $a0, 62, 2
	slli.d	$a4, $a3, 2
	pcalau12i	$a5, %pc_hi20(.LCPI24_2)
	vld	$vr0, $a5, %pc_lo12(.LCPI24_2)
	alsl.d	$a3, $a3, $fp, 4
	vinsgr2vr.w	$vr1, $a1, 0
	vinsgr2vr.w	$vr2, $zero, 0
	vshuf.w	$vr0, $vr2, $vr1
	alsl.d	$a1, $a2, $fp, 2
	sub.d	$a2, $a2, $a4
	.p2align	4, , 16
.LBB24_167:                             # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a1, 0
	vadd.w	$vr0, $vr1, $vr0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB24_167
# %bb.168:                              # %vec.epilog.middle.block
	vreplvei.d	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a1, $vr0, 0
	bne	$a0, $a4, .LBB24_170
	b	.LBB24_172
.LBB24_169:
	alsl.d	$a3, $a2, $fp, 2
.LBB24_170:                             # %.lr.ph.i391.preheader
	addi.d	$a0, $a3, -4
	.p2align	4, , 16
.LBB24_171:                             # %.lr.ph.i391
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a0, 4
	addi.d	$a3, $a0, 4
	add.w	$a1, $a2, $a1
	move	$a0, $a3
	bne	$a3, $s2, .LBB24_171
.LBB24_172:                             # %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiET0_T_S8_S7_.exit
.Ltmp32:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp33:
# %bb.173:
.Ltmp34:
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp35:
# %bb.174:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit394.preheader
	beq	$s0, $fp, .LBB24_179
# %bb.175:                              # %.lr.ph.preheader
	move	$s4, $zero
	sub.d	$a0, $s0, $fp
	srai.d	$s2, $a0, 2
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	ori	$s3, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$s1, $a0, %pc_lo12(.L.str.19)
	.p2align	4, , 16
.LBB24_176:                             # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
.Ltmp36:
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp37:
# %bb.177:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit398
                                        #   in Loop: Header=BB24_176 Depth=1
	slli.d	$a0, $s4, 2
	ldx.wu	$a1, $fp, $a0
.Ltmp38:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp39:
# %bb.178:                              # %_ZNSolsEj.exit
                                        #   in Loop: Header=BB24_176 Depth=1
	bstrpick.d	$s4, $s3, 31, 0
	addi.w	$s3, $s3, 1
	bltu	$s4, $s2, .LBB24_176
.LBB24_179:                             # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit394._crit_edge
.Ltmp41:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.20)
	addi.d	$a1, $a1, %pc_lo12(.L.str.20)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp42:
# %bb.180:                              # %_ZNSt6vectorIjSaIjEED2Ev.exit
	sub.d	$a1, $s5, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB24_181:
.Ltmp59:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp60:
# %bb.182:                              # %.noexc321
.LBB24_183:
.Ltmp56:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp57:
# %bb.184:                              # %.noexc335
.LBB24_185:
.Ltmp53:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp54:
# %bb.186:                              # %.noexc349
.LBB24_187:
.Ltmp50:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp51:
# %bb.188:                              # %.noexc363
.LBB24_189:
.Ltmp47:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp48:
# %bb.190:                              # %.noexc372
.LBB24_191:
.Ltmp44:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp45:
# %bb.192:                              # %.noexc386
.LBB24_193:
.Ltmp17:
	b	.LBB24_205
.LBB24_194:
.Ltmp46:
	b	.LBB24_199
.LBB24_195:
.Ltmp49:
	b	.LBB24_204
.LBB24_196:
.Ltmp52:
	b	.LBB24_199
.LBB24_197:
.Ltmp55:
	b	.LBB24_204
.LBB24_198:
.Ltmp58:
.LBB24_199:                             # %.thread
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	b	.LBB24_202
.LBB24_200:
.Ltmp61:
	b	.LBB24_204
.LBB24_201:
.Ltmp14:
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
.LBB24_202:                             # %.thread
	move	$s1, $a0
	b	.LBB24_207
.LBB24_203:
.Ltmp11:
.LBB24_204:                             # %.thread
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
.LBB24_205:                             # %.thread
	move	$s1, $a0
	b	.LBB24_209
.LBB24_206:
.Ltmp8:
	move	$s1, $a0
	addi.d	$a0, $s0, 8
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
.LBB24_207:                             # %.thread
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN5TimerD2Ev)
	jirl	$ra, $ra, 0
	move	$fp, $s0
	b	.LBB24_214
.LBB24_208:
.Ltmp5:
	move	$s1, $a0
	addi.d	$a0, $fp, 4
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
.LBB24_209:                             # %.thread
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN5TimerD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB24_214
.LBB24_210:                             # %.thread500
.Ltmp2:
	move	$s1, $a0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN5TimerD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB24_211:
.Ltmp43:
	b	.LBB24_213
.LBB24_212:
.Ltmp40:
.LBB24_213:                             # %.thread
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	move	$s1, $a0
.LBB24_214:                             # %.thread
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end24:
	.size	main, .Lfunc_end24-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table24:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp3-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp6-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 7 <<
	.uleb128 .Ltmp9-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 8 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp12-.Ltmp10                #   Call between .Ltmp10 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp15-.Ltmp13                #   Call between .Ltmp13 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp18-.Ltmp16                #   Call between .Ltmp16 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp61-.Lfunc_begin0          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp58-.Lfunc_begin0          #     jumps to .Ltmp58
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp55-.Lfunc_begin0          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp24-.Ltmp23                #   Call between .Ltmp23 and .Ltmp24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp52-.Lfunc_begin0          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp49-.Lfunc_begin0          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp46-.Lfunc_begin0          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp30-.Ltmp29                #   Call between .Ltmp29 and .Ltmp30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Ltmp35-.Ltmp30                #   Call between .Ltmp30 and .Ltmp35
	.uleb128 .Ltmp43-.Lfunc_begin0          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin0          # >> Call Site 27 <<
	.uleb128 .Ltmp39-.Ltmp36                #   Call between .Ltmp36 and .Ltmp39
	.uleb128 .Ltmp40-.Lfunc_begin0          #     jumps to .Ltmp40
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin0          # >> Call Site 28 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.uleb128 .Ltmp43-.Lfunc_begin0          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin0          # >> Call Site 29 <<
	.uleb128 .Ltmp59-.Ltmp42                #   Call between .Ltmp42 and .Ltmp59
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin0          # >> Call Site 30 <<
	.uleb128 .Ltmp60-.Ltmp59                #   Call between .Ltmp59 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin0          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin0          # >> Call Site 31 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp58-.Lfunc_begin0          #     jumps to .Ltmp58
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin0          # >> Call Site 32 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin0          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin0          # >> Call Site 33 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin0          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin0          # >> Call Site 34 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin0          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin0          # >> Call Site 35 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin0          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin0          # >> Call Site 36 <<
	.uleb128 .Lfunc_end24-.Ltmp45           #   Call between .Ltmp45 and .Lfunc_end24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN5TimerD2Ev
.LCPI25_0:
	.dword	0x408f400000000000              # double 1000
	.section	.text._ZN5TimerD2Ev,"axG",@progbits,_ZN5TimerD2Ev,comdat
	.weak	_ZN5TimerD2Ev
	.p2align	5
	.type	_ZN5TimerD2Ev,@function
_ZN5TimerD2Ev:                          # @_ZN5TimerD2Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	addi.d	$a0, $a0, 32
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 8
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB25_7
# %bb.1:
	ld.d	$s1, $fp, 32
	ld.d	$s2, $fp, 16
	ld.d	$s3, $fp, 40
	ld.d	$s0, $fp, 0
	ld.d	$fp, $fp, 24
	beqz	$s0, .LBB25_3
# %bb.2:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
.Ltmp62:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp63:
	b	.LBB25_4
.LBB25_3:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
.Ltmp64:
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.Ltmp65:
.LBB25_4:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
.Ltmp66:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp67:
# %bb.5:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
.Ltmp68:
	sub.d	$a0, $s1, $s2
	sub.d	$a1, $s3, $fp
	ori	$a2, $zero, 1000
	mul.d	$a0, $a0, $a2
	movgr2fr.d	$fa0, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI25_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI25_0)
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa2, $a1
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa1, $fa2, $fa1
	fadd.d	$fa0, $fa1, $fa0
	vldi	$vr1, -928
	fadd.d	$fa0, $fa0, $fa1
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIlEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp69:
# %bb.6:                                # %_ZNSolsEl.exit
.Ltmp70:
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 7
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp71:
.LBB25_7:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB25_8:
.Ltmp72:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end25:
	.size	_ZN5TimerD2Ev, .Lfunc_end25-_ZN5TimerD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN5TimerD2Ev,"aG",@progbits,_ZN5TimerD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table25:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp62-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp62
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp71-.Ltmp62                #   Call between .Ltmp62 and .Ltmp71
	.uleb128 .Ltmp72-.Lfunc_begin1          #     jumps to .Ltmp72
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp71-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Lfunc_end25-.Ltmp71           #   Call between .Ltmp71 and .Lfunc_end25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	5
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZSt9terminatev)
	jirl	$ra, $ra, 0
.Lfunc_end26:
	.size	__clang_call_terminate, .Lfunc_end26-__clang_call_terminate
                                        # -- End function
	.type	usa,@object                     # @usa
	.bss
	.globl	usa
	.p2align	1, 0x0
usa:
	.space	2048
	.size	usa, 2048

	.type	sa,@object                      # @sa
	.globl	sa
	.p2align	1, 0x0
sa:
	.space	2048
	.size	sa, 2048

	.type	sb,@object                      # @sb
	.globl	sb
	.p2align	1, 0x0
sb:
	.space	2048
	.size	sb, 2048

	.type	sc,@object                      # @sc
	.globl	sc
	.p2align	1, 0x0
sc:
	.space	2048
	.size	sc, 2048

	.type	ua,@object                      # @ua
	.globl	ua
	.p2align	2, 0x0
ua:
	.space	4096
	.size	ua, 4096

	.type	ia,@object                      # @ia
	.globl	ia
	.p2align	4, 0x0
ia:
	.space	4096
	.size	ia, 4096

	.type	ib,@object                      # @ib
	.globl	ib
	.p2align	4, 0x0
ib:
	.space	4096
	.size	ib, 4096

	.type	ic,@object                      # @ic
	.globl	ic
	.p2align	4, 0x0
ic:
	.space	4096
	.size	ic, 4096

	.type	ub,@object                      # @ub
	.globl	ub
	.p2align	2, 0x0
ub:
	.space	4096
	.size	ub, 4096

	.type	uc,@object                      # @uc
	.globl	uc
	.p2align	2, 0x0
uc:
	.space	4096
	.size	uc, 4096

	.type	fa,@object                      # @fa
	.globl	fa
	.p2align	2, 0x0
fa:
	.space	4096
	.size	fa, 4096

	.type	fb,@object                      # @fb
	.globl	fb
	.p2align	2, 0x0
fb:
	.space	4096
	.size	fb, 4096

	.type	da,@object                      # @da
	.globl	da
	.p2align	2, 0x0
da:
	.space	4096
	.size	da, 4096

	.type	db,@object                      # @db
	.globl	db
	.p2align	2, 0x0
db:
	.space	4096
	.size	db, 4096

	.type	dc,@object                      # @dc
	.globl	dc
	.p2align	2, 0x0
dc:
	.space	4096
	.size	dc, 4096

	.type	dd,@object                      # @dd
	.globl	dd
	.p2align	2, 0x0
dd:
	.space	4096
	.size	dd, 4096

	.type	dj,@object                      # @dj
	.globl	dj
	.p2align	2, 0x0
dj:
	.space	4096
	.size	dj, 4096

	.type	s,@object                       # @s
	.globl	s
	.p2align	2, 0x0
s:
	.space	4096
	.size	s, 4096

	.type	a,@object                       # @a
	.globl	a
	.p2align	5, 0x0
a:
	.space	8192
	.size	a, 8192

	.type	b,@object                       # @b
	.globl	b
	.p2align	5, 0x0
b:
	.space	8192
	.size	b, 8192

	.type	c,@object                       # @c
	.globl	c
	.p2align	5, 0x0
c:
	.space	8192
	.size	c, 8192

	.type	d,@object                       # @d
	.globl	d
	.p2align	4, 0x0
d:
	.space	8192
	.size	d, 8192

	.type	G,@object                       # @G
	.globl	G
	.p2align	5, 0x0
G:
	.space	131072
	.size	G, 131072

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Example1"
	.size	.L.str, 9

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Example2a"
	.size	.L.str.1, 10

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Example2b"
	.size	.L.str.2, 10

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Example3"
	.size	.L.str.3, 9

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Example4a"
	.size	.L.str.4, 10

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Example4b"
	.size	.L.str.5, 10

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Example4c"
	.size	.L.str.6, 10

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Example7"
	.size	.L.str.7, 9

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Example8"
	.size	.L.str.8, 9

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Example9"
	.size	.L.str.9, 9

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Example10a"
	.size	.L.str.10, 11

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Example10b"
	.size	.L.str.11, 11

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Example11"
	.size	.L.str.12, 10

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Example12"
	.size	.L.str.13, 10

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Example23"
	.size	.L.str.14, 10

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Example24"
	.size	.L.str.15, 10

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Example25"
	.size	.L.str.16, 10

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Results: ("
	.size	.L.str.17, 11

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"):"
	.size	.L.str.18, 3

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	" "
	.size	.L.str.19, 2

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"\n"
	.size	.L.str.20, 2

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	", "
	.size	.L.str.21, 3

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	", msec\n"
	.size	.L.str.22, 8

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"vector::_M_realloc_append"
	.size	.L.str.23, 26

	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3, 0x0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.dword	__gxx_personality_v0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Unwind_Resume
	.addrsig_sym usa
	.addrsig_sym sa
	.addrsig_sym sb
	.addrsig_sym sc
	.addrsig_sym ua
	.addrsig_sym ia
	.addrsig_sym ib
	.addrsig_sym ic
	.addrsig_sym _ZSt4cout
