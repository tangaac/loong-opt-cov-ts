	.file	"Jacobi.c"
	.text
	.globl	ApplyGivens                     # -- Begin function ApplyGivens
	.p2align	5
	.type	ApplyGivens,@function
ApplyGivens:                            # @ApplyGivens
# %bb.0:
                                        # kill: def $f1_64 killed $f1_64 def $vr1
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	blt	$a4, $a3, .LBB0_12
# %bb.1:                                # %.lr.ph
	slli.d	$a5, $a1, 3
	ldx.d	$a6, $a0, $a5
	slli.d	$a5, $a2, 3
	ldx.d	$a7, $a0, $a5
	sub.d	$a5, $a4, $a3
	addi.w	$t3, $a5, 0
	ori	$t0, $zero, 5
	bgeu	$t3, $t0, .LBB0_3
# %bb.2:
	move	$t2, $a3
	b	.LBB0_8
.LBB0_3:                                # %vector.memcheck
	alsl.d	$t0, $a3, $a6, 3
	bstrpick.d	$t1, $a5, 31, 0
	add.d	$t1, $a3, $t1
	slli.d	$t1, $t1, 3
	addi.d	$t2, $t1, 8
	add.d	$t4, $a7, $t2
	alsl.d	$t1, $a3, $a7, 3
	bgeu	$t0, $t4, .LBB0_5
# %bb.4:                                # %vector.memcheck
	add.d	$t4, $a6, $t2
	move	$t2, $a3
	bltu	$t1, $t4, .LBB0_8
.LBB0_5:                                # %vector.ph
	bstrpick.d	$t2, $t3, 31, 0
	addi.d	$t3, $t2, 1
	bstrpick.d	$t2, $t3, 32, 1
	slli.d	$t4, $t2, 1
	alsl.d	$t2, $t2, $a3, 1
	vreplvei.d	$vr2, $vr0, 0
	vreplvei.d	$vr3, $vr1, 0
	move	$t5, $t4
	.p2align	4, , 16
.LBB0_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $t1, 0
	vld	$vr5, $t0, 0
	vbitrevi.d	$vr6, $vr4, 63
	vfmul.d	$vr6, $vr2, $vr6
	vfmadd.d	$vr6, $vr3, $vr5, $vr6
	vst	$vr6, $t0, 0
	vfmul.d	$vr4, $vr3, $vr4
	vfmadd.d	$vr4, $vr2, $vr5, $vr4
	vst	$vr4, $t1, 0
	addi.d	$t5, $t5, -2
	addi.d	$t1, $t1, 16
	addi.d	$t0, $t0, 16
	bnez	$t5, .LBB0_6
# %bb.7:                                # %middle.block
	beq	$t3, $t4, .LBB0_10
.LBB0_8:                                # %scalar.ph.preheader
	alsl.d	$a6, $t2, $a6, 3
	alsl.d	$a7, $t2, $a7, 3
	sub.d	$a4, $a4, $t2
	addi.d	$a4, $a4, 1
	.p2align	4, , 16
.LBB0_9:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa2, $a7, 0
	fld.d	$fa3, $a6, 0
	fneg.d	$fa4, $fa2
	fmul.d	$fa4, $fa0, $fa4
	fmadd.d	$fa4, $fa1, $fa3, $fa4
	fst.d	$fa4, $a6, 0
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa2, $fa0, $fa3, $fa2
	fst.d	$fa2, $a7, 0
	addi.d	$a6, $a6, 8
	addi.w	$a4, $a4, -1
	addi.d	$a7, $a7, 8
	bnez	$a4, .LBB0_9
.LBB0_10:                               # %.lr.ph53
	alsl.d	$a0, $a3, $a0, 3
	addi.d	$a3, $a5, 1
	slli.d	$a1, $a1, 3
	slli.d	$a2, $a2, 3
	.p2align	4, , 16
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	fldx.d	$fa2, $a4, $a2
	fldx.d	$fa3, $a4, $a1
	fneg.d	$fa4, $fa2
	fmul.d	$fa4, $fa0, $fa4
	fmadd.d	$fa4, $fa1, $fa3, $fa4
	fstx.d	$fa4, $a4, $a1
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa2, $fa0, $fa3, $fa2
	fstx.d	$fa2, $a4, $a2
	addi.w	$a3, $a3, -1
	addi.d	$a0, $a0, 8
	bnez	$a3, .LBB0_11
.LBB0_12:                               # %._crit_edge
	ret
.Lfunc_end0:
	.size	ApplyGivens, .Lfunc_end0-ApplyGivens
                                        # -- End function
	.globl	Jacobi                          # -- Begin function Jacobi
	.p2align	5
	.type	Jacobi,@function
Jacobi:                                 # @Jacobi
# %bb.0:
	addi.d	$sp, $sp, -512
	st.d	$ra, $sp, 504                   # 8-byte Folded Spill
	st.d	$fp, $sp, 496                   # 8-byte Folded Spill
	st.d	$s0, $sp, 488                   # 8-byte Folded Spill
	st.d	$s1, $sp, 480                   # 8-byte Folded Spill
	st.d	$s2, $sp, 472                   # 8-byte Folded Spill
	st.d	$s3, $sp, 464                   # 8-byte Folded Spill
	st.d	$s4, $sp, 456                   # 8-byte Folded Spill
	st.d	$s5, $sp, 448                   # 8-byte Folded Spill
	st.d	$s6, $sp, 440                   # 8-byte Folded Spill
	st.d	$s7, $sp, 432                   # 8-byte Folded Spill
	st.d	$s8, $sp, 424                   # 8-byte Folded Spill
	move	$fp, $a1
	move	$s2, $a0
	pcaddu18i	$ra, %call36(newIdMatrix)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	blt	$fp, $a1, .LBB1_35
# %bb.1:                                # %.preheader.preheader
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	slli.d	$a2, $a1, 3
	addi.d	$a3, $a2, -8
	alsl.w	$a0, $a1, $a1, 1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	sub.w	$a0, $a0, $a1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	sub.w	$a0, $zero, $a1
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	slli.d	$a0, $a1, 1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 1
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	addi.d	$a0, $a1, -2
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	add.d	$a0, $s2, $a3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -3
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	ori	$s3, $zero, 50
	ori	$s8, $zero, 0
	lu32i.d	$s8, 1
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$a2, $sp, 320                   # 8-byte Folded Spill
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	move	$a0, $a1
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %._crit_edge76
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $s5, -1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a1, $a1, -2
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a1, $a1, -3
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	addi.d	$a1, $a1, -1
	st.d	$a1, $sp, 336                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 328                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a1, $a1, -8
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	addi.d	$a1, $a1, -8
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a1, $a1, -1
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a1, $a1, -8
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ori	$a1, $zero, 2
	bge	$a1, $s5, .LBB1_35
.LBB1_3:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
                                        #       Child Loop BB1_11 Depth 3
                                        #       Child Loop BB1_14 Depth 3
                                        #       Child Loop BB1_16 Depth 3
                                        #       Child Loop BB1_22 Depth 3
                                        #         Child Loop BB1_27 Depth 4
                                        #         Child Loop BB1_31 Depth 4
                                        #         Child Loop BB1_33 Depth 4
	move	$s5, $a0
	bltu	$s3, $a0, .LBB1_2
# %bb.4:                                # %.lr.ph75
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$s4, $zero
	move	$s6, $zero
	move	$a3, $zero
	st.d	$zero, $sp, 232                 # 8-byte Folded Spill
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	slli.d	$a0, $a1, 1
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a0, $a2, $a0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ori	$a0, $zero, 51
	sub.d	$a0, $a0, $s5
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	slli.d	$a0, $s5, 1
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	addi.d	$a0, $s5, -1
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s2, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s5, $sp, 312                   # 8-byte Folded Spill
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_5:                                # %._crit_edge
                                        #   in Loop: Header=BB1_6 Depth=2
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	addi.w	$s6, $s6, -1
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	addi.d	$s4, $s4, 8
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	bge	$a3, $a0, .LBB1_2
.LBB1_6:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_11 Depth 3
                                        #       Child Loop BB1_14 Depth 3
                                        #       Child Loop BB1_16 Depth 3
                                        #       Child Loop BB1_22 Depth 3
                                        #         Child Loop BB1_27 Depth 4
                                        #         Child Loop BB1_31 Depth 4
                                        #         Child Loop BB1_33 Depth 4
	st.d	$a3, $sp, 240                   # 8-byte Folded Spill
	slli.d	$s1, $a3, 3
	ldx.d	$a0, $s2, $s1
	add.d	$s0, $a3, $s5
	addi.d	$a1, $s0, -1
	slli.d	$fp, $a1, 3
	fldx.d	$fa0, $a0, $fp
	slli.d	$s7, $s0, 3
	fldx.d	$fa1, $a0, $s7
	addi.d	$a0, $sp, 416
	addi.d	$a1, $sp, 408
	pcaddu18i	$ra, %call36(Givens)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	fld.d	$fa0, $sp, 416
	fld.d	$fa1, $sp, 408
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s6, $sp, 144                   # 8-byte Folded Spill
	bltu	$s3, $a7, .LBB1_18
# %bb.7:                                # %.lr.ph.i
                                        #   in Loop: Header=BB1_6 Depth=2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	sltui	$a1, $a0, 50
	masknez	$a3, $s3, $a1
	maskeqz	$a0, $a0, $a1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a7
	sltui	$a2, $a1, 50
	maskeqz	$a4, $a1, $a2
	masknez	$a5, $s3, $a2
	ldx.d	$a1, $s2, $fp
	ldx.d	$a2, $s2, $s7
	or	$a4, $a4, $a5
	addi.w	$a5, $a7, 0
	or	$a0, $a0, $a3
	move	$a3, $a7
	beq	$a4, $a5, .LBB1_13
# %bb.8:                                # %vector.memcheck99
                                        #   in Loop: Header=BB1_6 Depth=2
	sub.d	$a3, $a4, $a7
	bstrpick.d	$a4, $a3, 31, 0
	alsl.d	$a3, $a4, $s1, 3
	addi.d	$a3, $a3, 8
	add.d	$a5, $a1, $s1
	add.d	$a6, $a2, $a3
	bgeu	$a5, $a6, .LBB1_10
# %bb.9:                                # %vector.memcheck99
                                        #   in Loop: Header=BB1_6 Depth=2
	add.d	$a5, $a1, $a3
	add.d	$a6, $a2, $s1
	move	$a3, $a7
	bltu	$a6, $a5, .LBB1_13
.LBB1_10:                               # %vector.ph110
                                        #   in Loop: Header=BB1_6 Depth=2
	add.d	$a3, $a0, $s6
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a3, $a3, 1
	bstrpick.d	$a3, $a3, 32, 1
	slli.d	$a5, $a3, 1
	addi.d	$a4, $a4, 1
	bstrpick.d	$a3, $a4, 32, 1
	slli.d	$a6, $a3, 1
	alsl.d	$a3, $a3, $a7, 1
	vreplvei.d	$vr2, $vr0, 0
	vreplvei.d	$vr3, $vr1, 0
	add.d	$a7, $a2, $s4
	add.d	$t0, $a1, $s4
	.p2align	4, , 16
.LBB1_11:                               # %vector.body117
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr4, $a7, 0
	vld	$vr5, $t0, 0
	vbitrevi.d	$vr6, $vr4, 63
	vfmul.d	$vr6, $vr2, $vr6
	vfmadd.d	$vr6, $vr3, $vr5, $vr6
	vst	$vr6, $t0, 0
	vfmul.d	$vr4, $vr3, $vr4
	vfmadd.d	$vr4, $vr2, $vr5, $vr4
	vst	$vr4, $a7, 0
	addi.d	$a5, $a5, -2
	addi.d	$a7, $a7, 16
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB1_11
# %bb.12:                               # %middle.block123
                                        #   in Loop: Header=BB1_6 Depth=2
	beq	$a4, $a6, .LBB1_15
	.p2align	4, , 16
.LBB1_13:                               # %scalar.ph108.preheader
                                        #   in Loop: Header=BB1_6 Depth=2
	sub.d	$a4, $a0, $a3
	addi.d	$a4, $a4, 1
	alsl.d	$a2, $a3, $a2, 3
	alsl.d	$a1, $a3, $a1, 3
	.p2align	4, , 16
.LBB1_14:                               # %scalar.ph108
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a2, 0
	fld.d	$fa3, $a1, 0
	fneg.d	$fa4, $fa2
	fmul.d	$fa4, $fa0, $fa4
	fmadd.d	$fa4, $fa1, $fa3, $fa4
	fst.d	$fa4, $a1, 0
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa2, $fa0, $fa3, $fa2
	fst.d	$fa2, $a2, 0
	addi.w	$a4, $a4, -1
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 8
	bnez	$a4, .LBB1_14
.LBB1_15:                               # %.lr.ph53.i.preheader
                                        #   in Loop: Header=BB1_6 Depth=2
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_16:                               # %.lr.ph53.i
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $a1, 0
	fldx.d	$fa2, $a2, $s7
	fldx.d	$fa3, $a2, $fp
	fneg.d	$fa4, $fa2
	fmul.d	$fa4, $fa0, $fa4
	fmadd.d	$fa4, $fa1, $fa3, $fa4
	fstx.d	$fa4, $a2, $fp
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa2, $fa0, $fa3, $fa2
	fstx.d	$fa2, $a2, $s7
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB1_16
# %bb.17:                               # %ApplyGivens.exit.loopexit
                                        #   in Loop: Header=BB1_6 Depth=2
	fld.d	$fa0, $sp, 416
	fld.d	$fa1, $sp, 408
.LBB1_18:                               # %ApplyGivens.exit
                                        #   in Loop: Header=BB1_6 Depth=2
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	add.w	$a1, $a0, $a1
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(ApplyRGivens)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	bge	$s0, $a0, .LBB1_5
# %bb.19:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB1_6 Depth=2
	move	$s1, $zero
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 3
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	b	.LBB1_22
	.p2align	4, , 16
.LBB1_20:                               #   in Loop: Header=BB1_22 Depth=3
	ld.d	$t0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 376                   # 8-byte Folded Reload
.LBB1_21:                               # %ApplyGivens.exit72
                                        #   in Loop: Header=BB1_22 Depth=3
	ld.d	$s5, $sp, 312                   # 8-byte Folded Reload
	add.d	$s0, $t0, $s5
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	add.w	$a1, $t0, $a0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	ld.d	$s2, $sp, 368                   # 8-byte Folded Reload
	move	$a2, $s2
	pcaddu18i	$ra, %call36(ApplyRGivens)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 1
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	add.w	$s4, $s4, $a0
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	add.w	$a2, $a2, $a1
	st.d	$a2, $sp, 400                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	add.d	$s7, $s7, $a1
	add.d	$s6, $s6, $a0
	add.d	$fp, $fp, $a1
	move	$a1, $s2
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB1_5
.LBB1_22:                               # %.lr.ph
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_27 Depth 4
                                        #         Child Loop BB1_31 Depth 4
                                        #         Child Loop BB1_33 Depth 4
	st.d	$s6, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	st.d	$s0, $sp, 392                   # 8-byte Folded Spill
	move	$s3, $a1
	addi.d	$s0, $a1, -1
	slli.d	$a0, $s0, 3
	ldx.d	$a0, $s2, $a0
	add.d	$a2, $a1, $s5
	addi.d	$a1, $a2, -1
	move	$s6, $s5
	slli.d	$s5, $a1, 3
	fldx.d	$fa0, $a0, $s5
	move	$fp, $s2
	st.d	$a2, $sp, 368                   # 8-byte Folded Spill
	slli.d	$s2, $a2, 3
	fldx.d	$fa1, $a0, $s2
	addi.d	$a0, $sp, 416
	addi.d	$a1, $sp, 408
	pcaddu18i	$ra, %call36(Givens)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 416
	fld.d	$fa1, $sp, 408
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	add.w	$a0, $s3, $a0
	ori	$s3, $zero, 50
	slti	$a1, $a0, 50
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s3, $a1
	or	$a0, $a0, $a1
	blt	$a0, $s0, .LBB1_20
# %bb.23:                               # %.lr.ph.i62
                                        #   in Loop: Header=BB1_22 Depth=3
	slti	$a0, $s4, 50
	masknez	$a4, $s3, $a0
	maskeqz	$a0, $s4, $a0
	mul.d	$a1, $s6, $s1
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	add.w	$a1, $a2, $a1
	slti	$a2, $a1, 50
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s3, $a2
	or	$a3, $a1, $a2
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	mul.d	$a1, $a1, $s1
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	add.d	$a5, $a2, $a1
	ldx.d	$a1, $fp, $s5
	ldx.d	$a2, $fp, $s2
	add.d	$a5, $a3, $a5
	addi.w	$a3, $a5, 0
	or	$a0, $a0, $a4
	beqz	$a3, .LBB1_29
# %bb.24:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_22 Depth=3
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	mul.d	$a6, $a4, $s1
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	add.d	$a4, $a4, $a6
	ld.d	$a7, $sp, 248                   # 8-byte Folded Reload
	add.d	$a6, $a7, $a6
	bstrpick.d	$a5, $a5, 31, 0
	alsl.d	$a5, $a5, $a6, 3
	add.d	$a6, $a1, $a4
	add.d	$a7, $a2, $a5
	ld.d	$t0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 376                   # 8-byte Folded Reload
	bgeu	$a6, $a7, .LBB1_26
# %bb.25:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_22 Depth=3
	add.d	$a5, $a1, $a5
	add.d	$a4, $a2, $a4
	bltu	$a4, $a5, .LBB1_30
.LBB1_26:                               # %vector.ph
                                        #   in Loop: Header=BB1_22 Depth=3
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	add.d	$a4, $a0, $a4
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a4, $a4, 1
	bstrpick.d	$a4, $a4, 32, 1
	slli.d	$a4, $a4, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a3, $a3, 1
	bstrpick.d	$a6, $a3, 32, 1
	slli.d	$a5, $a6, 1
	alsl.d	$s0, $a6, $s0, 1
	vreplvei.d	$vr2, $vr0, 0
	vreplvei.d	$vr3, $vr1, 0
	add.d	$a6, $a2, $s7
	add.d	$a7, $a1, $s7
	.p2align	4, , 16
.LBB1_27:                               # %vector.body
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        #       Parent Loop BB1_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr4, $a6, 0
	vld	$vr5, $a7, 0
	vbitrevi.d	$vr6, $vr4, 63
	vfmul.d	$vr6, $vr2, $vr6
	vfmadd.d	$vr6, $vr3, $vr5, $vr6
	vst	$vr6, $a7, 0
	vfmul.d	$vr4, $vr3, $vr4
	vfmadd.d	$vr4, $vr2, $vr5, $vr4
	vst	$vr4, $a6, 0
	addi.d	$a4, $a4, -2
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	bnez	$a4, .LBB1_27
# %bb.28:                               # %middle.block
                                        #   in Loop: Header=BB1_22 Depth=3
	bne	$a3, $a5, .LBB1_30
	b	.LBB1_32
.LBB1_29:                               #   in Loop: Header=BB1_22 Depth=3
	ld.d	$t0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 376                   # 8-byte Folded Reload
.LBB1_30:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB1_22 Depth=3
	nor	$a3, $a0, $zero
	add.w	$a3, $a3, $s0
	alsl.d	$a2, $s0, $a2, 3
	alsl.d	$a1, $s0, $a1, 3
	.p2align	4, , 16
.LBB1_31:                               # %scalar.ph
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        #       Parent Loop BB1_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa2, $a2, 0
	fld.d	$fa3, $a1, 0
	fneg.d	$fa4, $fa2
	fmul.d	$fa4, $fa0, $fa4
	fmadd.d	$fa4, $fa1, $fa3, $fa4
	fst.d	$fa4, $a1, 0
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa2, $fa0, $fa3, $fa2
	fst.d	$fa2, $a2, 0
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a3, $a3, 1
	and	$a4, $a3, $s8
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 8
	beqz	$a4, .LBB1_31
.LBB1_32:                               # %.lr.ph53.i67.preheader
                                        #   in Loop: Header=BB1_22 Depth=3
	sub.w	$a1, $s6, $a0
	move	$a0, $fp
	.p2align	4, , 16
.LBB1_33:                               # %.lr.ph53.i67
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        #       Parent Loop BB1_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a2, $a0, 0
	fldx.d	$fa2, $a2, $s2
	fldx.d	$fa3, $a2, $s5
	fneg.d	$fa4, $fa2
	fmul.d	$fa4, $fa0, $fa4
	fmadd.d	$fa4, $fa1, $fa3, $fa4
	fstx.d	$fa4, $a2, $s5
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa2, $fa0, $fa3, $fa2
	fstx.d	$fa2, $a2, $s2
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, 1
	and	$a2, $a1, $s8
	addi.d	$a0, $a0, 8
	beqz	$a2, .LBB1_33
# %bb.34:                               # %ApplyGivens.exit72.loopexit
                                        #   in Loop: Header=BB1_22 Depth=3
	fld.d	$fa0, $sp, 416
	fld.d	$fa1, $sp, 408
	b	.LBB1_21
.LBB1_35:                               # %._crit_edge78
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 488                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 496                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 504                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 512
	ret
.Lfunc_end1:
	.size	Jacobi, .Lfunc_end1-Jacobi
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
