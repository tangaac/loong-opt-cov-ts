	.file	"addpins.c"
	.text
	.globl	addpins                         # -- Begin function addpins
	.p2align	5
	.type	addpins,@function
addpins:                                # @addpins
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$s7, $a0, %got_pc_lo12(numcells)
	pcalau12i	$a0, %got_pc_hi20(numnets)
	ld.d	$s3, $a0, %got_pc_lo12(numnets)
	ld.w	$s4, $s7, 0
	pcalau12i	$a0, %got_pc_hi20(netarray)
	ld.d	$s0, $a0, %got_pc_lo12(netarray)
	ld.w	$a1, $s3, 0
	ld.d	$a0, $s0, 0
	add.d	$a1, $s4, $a1
	addi.w	$a1, $a1, 1
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 0
	blez	$s4, .LBB0_3
# %bb.1:                                # %.lr.ph
	ld.w	$fp, $s3, 0
	pcalau12i	$a1, %got_pc_hi20(Hdefault)
	ld.d	$a1, $a1, %got_pc_lo12(Hdefault)
	pcalau12i	$a2, %got_pc_hi20(Vdefault)
	ld.d	$a2, $a2, %got_pc_lo12(Vdefault)
	add.w	$s1, $fp, $s4
	fld.d	$fs0, $a1, 0
	fld.d	$fs1, $a2, 0
	alsl.d	$a0, $fp, $a0, 3
	addi.d	$s2, $a0, 8
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	.p2align	4, , 16
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	addi.d	$fp, $fp, 1
	ori	$a0, $zero, 72
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	st.d	$zero, $a0, 64
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	vst	$vr0, $a0, 16
	vst	$vr0, $a0, 32
	fst.d	$fs0, $a0, 48
	fst.d	$fs1, $a0, 56
	addi.d	$s2, $s2, 8
	blt	$fp, $s1, .LBB0_2
.LBB0_3:                                # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(maxterm)
	ld.d	$s6, $a0, %got_pc_lo12(maxterm)
	pcalau12i	$a0, %got_pc_hi20(pinnames)
	ld.d	$fp, $a0, %got_pc_lo12(pinnames)
	ld.w	$a1, $s6, 0
	ld.d	$a0, $fp, 0
	alsl.d	$a1, $s4, $a1, 1
	addi.w	$a1, $a1, 1
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s6, 0
	st.d	$a0, $fp, 0
	alsl.w	$fp, $s4, $s1, 1
	blez	$s4, .LBB0_6
# %bb.4:                                # %.lr.ph81.preheader
	alsl.d	$a0, $s1, $a0, 3
	addi.d	$s2, $a0, 8
	lu12i.w	$a0, 320532
	ori	$a0, $a0, 2128
	lu32i.d	$a0, -176300
	lu52i.d	$s5, $a0, 4
	.p2align	4, , 16
.LBB0_5:                                # %.lr.ph81
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s1, $s1, 1
	ori	$a0, $zero, 9
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	st.d	$s5, $a0, 0
	addi.d	$s2, $s2, 8
	blt	$s1, $fp, .LBB0_5
.LBB0_6:                                # %._crit_edge82
	pcalau12i	$a0, %got_pc_hi20(termarray)
	ld.d	$s1, $a0, %got_pc_lo12(termarray)
	ld.d	$a0, $s1, 0
	slli.d	$a1, $fp, 3
	addi.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$a0, $s1, 0
	blez	$s4, .LBB0_9
# %bb.7:                                # %.lr.ph86.preheader
	ld.w	$s1, $s6, 0
	slli.d	$a0, $s4, 1
	add.w	$s2, $s1, $a0
	alsl.d	$a0, $s1, $fp, 3
	addi.d	$s4, $a0, 8
	.p2align	4, , 16
.LBB0_8:                                # %.lr.ph86
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s1, $s1, 1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 0
	addi.d	$s4, $s4, 8
	blt	$s1, $s2, .LBB0_8
.LBB0_9:                                # %.preheader
	ld.w	$a0, $s7, 0
	blez	$a0, .LBB0_12
# %bb.10:                               # %.lr.ph89
	move	$s1, $s6
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$a0, $a0, %got_pc_lo12(cellarray)
	move	$s4, $zero
	ld.d	$a0, $a0, 0
	ld.d	$a1, $s0, 0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(blockl)
	ld.d	$a1, $a1, %got_pc_lo12(blockl)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(blockr)
	ld.d	$a1, $a1, %got_pc_lo12(blockr)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(blockb)
	ld.d	$a1, $a1, %got_pc_lo12(blockb)
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(blockt)
	ld.d	$a1, $a1, %got_pc_lo12(blockt)
	st.d	$a1, $sp, 0                     # 8-byte Folded Spill
	addi.d	$s2, $a0, 8
	ori	$s5, $zero, 1
	ori	$s6, $zero, 1
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s7, $s2, 0
	ld.w	$a0, $s7, 56
	alsl.d	$a0, $a0, $s7, 3
	ld.d	$s0, $a0, 152
	ld.d	$s8, $s0, 88
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	st.d	$a0, $s0, 88
	st.d	$s8, $a0, 0
	st.d	$zero, $a0, 8
	add.w	$s8, $s5, $a1
	st.w	$s8, $a0, 24
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 0
	add.d	$a2, $s4, $a1
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 3
	ld.d	$a2, $a2, 8
	move	$s0, $a0
	st.d	$a0, $a2, 0
	st.w	$s8, $a0, 24
	st.w	$s6, $a0, 32
	st.w	$zero, $a0, 28
	st.w	$zero, $a0, 40
	ld.d	$a0, $s7, 12
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	slli.d	$a2, $s8, 3
	ldx.d	$a2, $fp, $a2
	add.d	$a1, $s6, $a1
	st.d	$a0, $s0, 8
	st.w	$a1, $a2, 0
	st.d	$s0, $a2, 8
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	st.d	$a0, $s0, 0
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	add.d	$a1, $s5, $a1
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 24
	add.d	$a2, $a3, $a2
	bstrpick.d	$a3, $a2, 31, 31
	add.w	$a2, $a2, $a3
	srli.d	$a2, $a2, 1
	st.w	$a2, $a0, 8
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	ld.d	$a3, $sp, 0                     # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	st.w	$s6, $a0, 32
	st.w	$zero, $a0, 28
	st.w	$zero, $a0, 40
	add.d	$a2, $a3, $a2
	bstrpick.d	$a3, $a2, 31, 31
	add.w	$a2, $a2, $a3
	srli.d	$a2, $a2, 1
	ld.w	$a3, $s3, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $fp, $a1
	st.w	$a2, $a0, 12
	st.d	$zero, $a0, 0
	add.d	$a2, $s6, $a3
	st.w	$a2, $a1, 0
	st.d	$a0, $a1, 8
	ld.w	$a0, $s7, 0
	addi.d	$s4, $s4, 1
	addi.d	$s6, $s6, 1
	addi.d	$s2, $s2, 8
	addi.d	$s5, $s5, 2
	blt	$s4, $a0, .LBB0_11
.LBB0_12:                               # %._crit_edge90
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end0:
	.size	addpins, .Lfunc_end0-addpins
                                        # -- End function
	.globl	subpins                         # -- Begin function subpins
	.p2align	5
	.type	subpins,@function
subpins:                                # @subpins
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$fp, $a0, %got_pc_lo12(numcells)
	ld.w	$s0, $fp, 0
	blez	$s0, .LBB1_6
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a0, %got_pc_hi20(numnets)
	ld.d	$s1, $a0, %got_pc_lo12(numnets)
	ld.w	$s2, $s1, 0
	pcalau12i	$a0, %got_pc_hi20(netarray)
	ld.d	$s3, $a0, %got_pc_lo12(netarray)
	slli.d	$a0, $s2, 3
	addi.d	$s4, $a0, 8
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	.p2align	4, , 16
.LBB1_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ldx.d	$s5, $a0, $s4
	ld.d	$a0, $s5, 0
	ld.d	$a0, $a0, 0
	addi.d	$s2, $s2, 1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $s5, 0
	vst	$vr0, $s5, 16
	vst	$vr0, $s5, 32
	ld.w	$a0, $s1, 0
	st.d	$zero, $s5, 64
	add.w	$a0, $a0, $s0
	addi.d	$s4, $s4, 8
	blt	$s2, $a0, .LBB1_2
# %bb.3:                                # %.preheader
	pcalau12i	$a0, %got_pc_hi20(maxterm)
	ld.d	$a0, $a0, %got_pc_lo12(maxterm)
	pcalau12i	$a1, %got_pc_hi20(termarray)
	ld.d	$a1, $a1, %got_pc_lo12(termarray)
	ld.w	$a2, $a0, 0
	ld.d	$a0, $a1, 0
	alsl.w	$a1, $s0, $a2, 1
	addi.w	$a3, $a2, 1
	alsl.d	$a0, $a3, $a0, 3
	slt	$a4, $a3, $a1
	maskeqz	$a1, $a1, $a4
	masknez	$a3, $a3, $a4
	or	$a1, $a1, $a3
	sub.d	$a1, $a2, $a1
	nor	$a1, $a1, $zero
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	addi.d	$a2, $a1, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	blez	$a0, .LBB1_6
# %bb.4:                                # %.lr.ph42.preheader
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$s0, $a0, %got_pc_lo12(cellarray)
	move	$s1, $zero
	ori	$s2, $zero, 8
	.p2align	4, , 16
.LBB1_5:                                # %.lr.ph42
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ldx.d	$a0, $a0, $s2
	ld.w	$a1, $a0, 56
	alsl.d	$a0, $a1, $a0, 3
	ld.d	$a1, $a0, 152
	ld.d	$a0, $a1, 88
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 88
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	addi.d	$s1, $s1, 1
	addi.d	$s2, $s2, 8
	blt	$s1, $a0, .LBB1_5
.LBB1_6:                                # %._crit_edge43
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end1:
	.size	subpins, .Lfunc_end1-subpins
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
