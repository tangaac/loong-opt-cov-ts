	.file	"stepanov_vector.cpp"
	.text
	.globl	_Z13record_resultdPKc           # -- Begin function _Z13record_resultdPKc
	.p2align	5
	.type	_Z13record_resultdPKc,@function
_Z13record_resultdPKc:                  # @_Z13record_resultdPKc
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(results)
	ld.d	$a2, $s2, %pc_lo12(results)
	pcalau12i	$s1, %pc_hi20(allocated_results)
	ld.w	$a1, $s1, %pc_lo12(allocated_results)
	move	$fp, $a0
	fmov.d	$fs0, $fa0
	pcalau12i	$s0, %pc_hi20(current_test)
	beqz	$a2, .LBB0_2
# %bb.1:
	ld.w	$a0, $s0, %pc_lo12(current_test)
	blt	$a0, $a1, .LBB0_4
.LBB0_2:
	addi.w	$a0, $a1, 10
	st.w	$a0, $s1, %pc_lo12(allocated_results)
	slli.d	$a1, $a0, 4
	move	$a0, $a2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, %pc_lo12(results)
	beqz	$a0, .LBB0_5
# %bb.3:                                # %._crit_edge
	move	$a2, $a0
	ld.w	$a0, $s0, %pc_lo12(current_test)
.LBB0_4:
	alsl.d	$a1, $a0, $a2, 4
	slli.d	$a3, $a0, 4
	fstx.d	$fs0, $a2, $a3
	st.d	$fp, $a1, 8
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, %pc_lo12(current_test)
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB0_5:
	ld.w	$a1, $s1, %pc_lo12(allocated_results)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_Z13record_resultdPKc, .Lfunc_end0-_Z13record_resultdPKc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z9summarizePKciiii
.LCPI1_0:
	.dword	0x412e848000000000              # double 1.0E+6
	.text
	.globl	_Z9summarizePKciiii
	.p2align	5
	.type	_Z9summarizePKciiii,@function
_Z9summarizePKciiii:                    # @_Z9summarizePKciiii
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
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	pcalau12i	$s6, %pc_hi20(current_test)
	ld.w	$s0, $s6, %pc_lo12(current_test)
	move	$s5, $a4
	move	$s2, $a2
	move	$s3, $a1
	move	$fp, $a0
	pcalau12i	$s7, %pc_hi20(results)
	blez	$s0, .LBB1_3
# %bb.1:                                # %.lr.ph
	ld.d	$a0, $s7, %pc_lo12(results)
	addi.d	$s4, $a0, 8
	ori	$s1, $zero, 12
	.p2align	4, , 16
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	slt	$a1, $a0, $s1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$s1, $a1, $a0
	addi.d	$s0, $s0, -1
	addi.d	$s4, $s4, 16
	bnez	$s0, .LBB1_2
	b	.LBB1_4
.LBB1_3:
	ori	$s1, $zero, 12
.LBB1_4:                                # %._crit_edge
	addi.w	$a1, $s1, -12
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$s4, $a2, %pc_lo12(.L.str.2)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, %pc_lo12(current_test)
	movgr2fr.d	$fs0, $zero
	blez	$a0, .LBB1_10
# %bb.5:                                # %.lr.ph45.preheader
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$s8, $zero
	move	$s4, $zero
	move	$s0, $zero
	movgr2fr.w	$fa0, $s3
	movgr2fr.w	$fa1, $s2
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI1_0)
	ffint.d.w	$fa0, $fa0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	fdiv.d	$fs1, $fa0, $fa2
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s2, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s3, $a0, %pc_lo12(.L.str.5)
	.p2align	4, , 16
.LBB1_6:                                # %.lr.ph45
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $s7, %pc_lo12(results)
	add.d	$a0, $fp, $s8
	ld.d	$s5, $a0, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	fldx.d	$fa0, $fp, $s8
	fld.d	$fa1, $fp, 0
	sub.w	$a2, $s1, $a0
	fdiv.d	$fa2, $fs1, $fa0
	fdiv.d	$fa1, $fa0, $fa1
	movfr2gr.d	$a5, $fa0
	movfr2gr.d	$a6, $fa2
	movfr2gr.d	$a7, $fa1
	move	$a0, $s2
	move	$a1, $s4
	move	$a3, $s3
	move	$a4, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, %pc_lo12(current_test)
	addi.d	$s0, $s0, 1
	addi.w	$s4, $s4, 1
	addi.d	$s8, $s8, 16
	blt	$s0, $a0, .LBB1_6
# %bb.7:                                # %.preheader39
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	blez	$a0, .LBB1_10
# %bb.8:                                # %.lr.ph49
	ld.d	$a1, $s7, %pc_lo12(results)
	movgr2fr.d	$fs0, $zero
	.p2align	4, , 16
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fadd.d	$fs0, $fs0, $fa0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 16
	bnez	$a0, .LBB1_9
.LBB1_10:                               # %._crit_edge50
	movfr2gr.d	$a2, $fs0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	beqz	$s5, .LBB1_15
# %bb.11:                               # %._crit_edge50
	ld.w	$a0, $s6, %pc_lo12(current_test)
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB1_15
# %bb.12:                               # %.lr.ph54
	ld.d	$a0, $s7, %pc_lo12(results)
	fld.d	$fs1, $a0, 0
	addi.d	$s0, $a0, 16
	movgr2fr.d	$fs0, $zero
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB1_13:                               # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $s0, 0
	fdiv.d	$fa0, $fa0, $fs1
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, %pc_lo12(current_test)
	fadd.d	$fs0, $fs0, $fa0
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 16
	blt	$s1, $a0, .LBB1_13
# %bb.14:                               # %._crit_edge55
	addi.d	$a0, $a0, -1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs0, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB1_15:
	st.w	$zero, $s6, %pc_lo12(current_test)
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
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
.Lfunc_end1:
	.size	_Z9summarizePKciiii, .Lfunc_end1-_Z9summarizePKciiii
                                        # -- End function
	.globl	_Z17summarize_simplefP8_IO_FILEPKc # -- Begin function _Z17summarize_simplefP8_IO_FILEPKc
	.p2align	5
	.type	_Z17summarize_simplefP8_IO_FILEPKc,@function
_Z17summarize_simplefP8_IO_FILEPKc:     # @_Z17summarize_simplefP8_IO_FILEPKc
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(current_test)
	ld.w	$fp, $s5, %pc_lo12(current_test)
	move	$s0, $a1
	move	$s7, $a0
	pcalau12i	$s3, %pc_hi20(results)
	blez	$fp, .LBB2_3
# %bb.1:                                # %.lr.ph
	ld.d	$a0, $s3, %pc_lo12(results)
	addi.d	$s2, $a0, 8
	ori	$s1, $zero, 12
	.p2align	4, , 16
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	slt	$a1, $a0, $s1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$s1, $a1, $a0
	addi.d	$fp, $fp, -1
	addi.d	$s2, $s2, 16
	bnez	$fp, .LBB2_2
	b	.LBB2_4
.LBB2_3:
	ori	$s1, $zero, 12
.LBB2_4:                                # %._crit_edge
	addi.w	$a2, $s1, -12
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s2, $a0, %pc_lo12(.L.str.2)
	move	$a0, $s7
	move	$a3, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $s7
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(current_test)
	movgr2fr.d	$fs0, $zero
	blez	$a0, .LBB2_10
# %bb.5:                                # %.lr.ph32.preheader
	st.d	$s0, $sp, 0                     # 8-byte Folded Spill
	move	$s8, $zero
	move	$s2, $zero
	move	$fp, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s4, $a0, %pc_lo12(.L.str.5)
	.p2align	4, , 16
.LBB2_6:                                # %.lr.ph32
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s6, $s3, %pc_lo12(results)
	add.d	$a0, $s6, $s8
	move	$s0, $s5
	ld.d	$s5, $a0, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ldx.d	$a6, $s6, $s8
	sub.w	$a3, $s1, $a0
	move	$a0, $s7
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	move	$a2, $s2
	move	$a4, $s4
	move	$a5, $s5
	move	$s5, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(current_test)
	addi.d	$fp, $fp, 1
	addi.w	$s2, $s2, 1
	addi.d	$s8, $s8, 16
	blt	$fp, $a0, .LBB2_6
# %bb.7:                                # %.preheader
	ld.d	$s0, $sp, 0                     # 8-byte Folded Reload
	blez	$a0, .LBB2_10
# %bb.8:                                # %.lr.ph36
	ld.d	$a1, $s3, %pc_lo12(results)
	movgr2fr.d	$fs0, $zero
	.p2align	4, , 16
.LBB2_9:                                # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fadd.d	$fs0, $fs0, $fa0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 16
	bnez	$a0, .LBB2_9
.LBB2_10:                               # %._crit_edge37
	movfr2gr.d	$a3, $fs0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	move	$a0, $s7
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	st.w	$zero, $s5, %pc_lo12(current_test)
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end2:
	.size	_Z17summarize_simplefP8_IO_FILEPKc, .Lfunc_end2-_Z17summarize_simplefP8_IO_FILEPKc
                                        # -- End function
	.globl	_Z11start_timerv                # -- Begin function _Z11start_timerv
	.p2align	5
	.type	_Z11start_timerv,@function
_Z11start_timerv:                       # @_Z11start_timerv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(start_time)
	st.d	$a0, $a1, %pc_lo12(start_time)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	_Z11start_timerv, .Lfunc_end3-_Z11start_timerv
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z5timerv
.LCPI4_0:
	.dword	0x412e848000000000              # double 1.0E+6
	.text
	.globl	_Z5timerv
	.p2align	5
	.type	_Z5timerv,@function
_Z5timerv:                              # @_Z5timerv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(start_time)
	ld.d	$a1, $a1, %pc_lo12(start_time)
	pcalau12i	$a2, %pc_hi20(end_time)
	pcalau12i	$a3, %pc_hi20(.LCPI4_0)
	fld.d	$fa0, $a3, %pc_lo12(.LCPI4_0)
	sub.d	$a1, $a0, $a1
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	st.d	$a0, $a2, %pc_lo12(end_time)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	_Z5timerv, .Lfunc_end4-_Z5timerv
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI5_0:
	.dword	0x409f400000000000              # double 2000
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
	addi.d	$sp, $sp, -352
	.cfi_def_cfa_offset 352
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	st.d	$s2, $sp, 312                   # 8-byte Folded Spill
	st.d	$s3, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 288                   # 8-byte Folded Spill
	st.d	$s6, $sp, 280                   # 8-byte Folded Spill
	st.d	$s7, $sp, 272                   # 8-byte Folded Spill
	st.d	$s8, $sp, 264                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 256                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 248                  # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	ori	$s1, $zero, 2
	pcalau12i	$s8, %pc_hi20(iterations)
	pcalau12i	$s5, %pc_hi20(init_value)
	blt	$a0, $s1, .LBB5_3
# %bb.1:
	move	$fp, $a1
	move	$s0, $a0
	ld.d	$a0, $a1, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	st.w	$a0, $s8, %pc_lo12(iterations)
	beq	$s0, $s1, .LBB5_3
# %bb.2:
	ld.d	$a0, $fp, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $s5, %pc_lo12(init_value)
.LBB5_3:                                # %.thread
	fld.d	$fa0, $s5, %pc_lo12(init_value)
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	addi.w	$a0, $a0, 123
	pcaddu18i	$ra, %call36(srand)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(dpb)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a4, $a0, %pc_lo12(dpb)
	pcalau12i	$a0, %pc_hi20(dpe)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $a0, %pc_lo12(dpe)
	beq	$a4, $a0, .LBB5_10
# %bb.4:                                # %.lr.ph.i.preheader
	fld.d	$fa0, $s5, %pc_lo12(init_value)
	sub.d	$a1, $a0, $a4
	addi.d	$a1, $a1, -8
	ori	$a2, $zero, 24
	bgeu	$a1, $a2, .LBB5_6
# %bb.5:
	move	$a1, $a4
	b	.LBB5_9
.LBB5_6:                                # %vector.ph
	srli.d	$a1, $a1, 3
	addi.d	$a2, $a1, 1
	bstrpick.d	$a1, $a2, 61, 2
	slli.d	$a3, $a1, 2
	slli.d	$a1, $a1, 5
	add.d	$a1, $a4, $a1
	vreplvei.d	$vr1, $vr0, 0
	addi.d	$a4, $a4, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB5_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr1, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB5_7
# %bb.8:                                # %middle.block
	beq	$a2, $a3, .LBB5_10
	.p2align	4, , 16
.LBB5_9:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $a1, 8
	fst.d	$fa0, $a1, 0
	move	$a1, $a2
	bne	$a2, $a0, .LBB5_9
.LBB5_10:                               # %.loopexit701
	st.d	$zero, $sp, 208
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 144                  # 16-byte Folded Spill
	vst	$vr0, $sp, 192
.Ltmp0:
	addi.d	$a0, $sp, 192
	ori	$a1, $zero, 2000
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp1:
# %bb.11:                               # %_ZNSt6vectorIdSaIdEE6resizeEm.exit
	ld.d	$s2, $sp, 192
	ld.d	$s3, $sp, 200
	beq	$s2, $s3, .LBB5_17
# %bb.12:                               # %.lr.ph.i64.preheader
	fld.d	$fa0, $s5, %pc_lo12(init_value)
	sub.d	$a0, $s3, $s2
	addi.d	$a1, $a0, -8
	ori	$a2, $zero, 24
	move	$a0, $s2
	bltu	$a1, $a2, .LBB5_16
# %bb.13:                               # %vector.ph760
	srli.d	$a0, $a1, 3
	addi.d	$a1, $a0, 1
	bstrpick.d	$a0, $a1, 61, 2
	slli.d	$a2, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a0, $s2, $a0
	vreplvei.d	$vr1, $vr0, 0
	addi.d	$a3, $s2, 16
	move	$a4, $a2
	.p2align	4, , 16
.LBB5_14:                               # %vector.body765
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr1, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_14
# %bb.15:                               # %middle.block770
	beq	$a1, $a2, .LBB5_17
	.p2align	4, , 16
.LBB5_16:                               # %.lr.ph.i64
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	bne	$a1, $s3, .LBB5_16
.LBB5_17:                               # %_ZN9benchmark4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_T0_.exit
	ld.w	$a0, $s8, %pc_lo12(iterations)
	pcalau12i	$a1, %pc_hi20(current_test)
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(rdpb)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(rdpe)
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	blez	$a0, .LBB5_89
# %bb.18:                               # %.lr.ph.i66
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s1, $a1, %pc_lo12(dpb)
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s4, $a1, %pc_lo12(dpe)
	pcalau12i	$s0, %pc_hi20(.LCPI5_0)
	beq	$s1, $s4, .LBB5_25
# %bb.19:                               # %.lr.ph.i.preheader.i.preheader
	move	$s6, $zero
	fld.d	$fs0, $s0, %pc_lo12(.LCPI5_0)
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$fp, $a1, %pc_lo12(.L.str.51)
	b	.LBB5_21
	.p2align	4, , 16
.LBB5_20:                               # %_Z9check_sumd.exit.i
                                        #   in Loop: Header=BB5_21 Depth=1
	addi.w	$s6, $s6, 1
	bge	$s6, $a0, .LBB5_29
.LBB5_21:                               # %.lr.ph.i.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_22 Depth 2
	fmov.d	$fa0, $fs1
	move	$a1, $s1
	.p2align	4, , 16
.LBB5_22:                               # %.lr.ph.i.i
                                        #   Parent Loop BB5_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	addi.d	$a2, $a1, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s4, .LBB5_22
# %bb.23:                               # %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.loopexit.i
                                        #   in Loop: Header=BB5_21 Depth=1
	fld.d	$fa1, $s5, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_20
# %bb.24:                               #   in Loop: Header=BB5_21 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(iterations)
	b	.LBB5_20
.LBB5_25:                               # %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.us.preheader.i
	move	$s1, $zero
	fld.d	$fa0, $s5, %pc_lo12(init_value)
	fld.d	$fs0, $s0, %pc_lo12(.LCPI5_0)
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$fp, $a1, %pc_lo12(.L.str.51)
	b	.LBB5_27
	.p2align	4, , 16
.LBB5_26:                               # %_Z9check_sumd.exit.us.i
                                        #   in Loop: Header=BB5_27 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_29
.LBB5_27:                               # %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.us.i
                                        # =>This Inner Loop Header: Depth=1
	fmul.d	$fa1, $fa0, $fs0
	fcmp.ceq.d	$fcc0, $fa1, $fs1
	bcnez	$fcc0, .LBB5_26
# %bb.28:                               #   in Loop: Header=BB5_27 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s5, %pc_lo12(init_value)
	ld.w	$a0, $s8, %pc_lo12(iterations)
	b	.LBB5_26
.LBB5_29:                               # %_Z15test_accumulateIPddEvT_S1_T0_PKc.exit
	blez	$a0, .LBB5_89
# %bb.30:                               # %.lr.ph.i68
	ld.d	$s1, $sp, 192
	ld.d	$s4, $sp, 200
	beq	$s1, $s4, .LBB5_37
# %bb.31:                               # %.lr.ph.preheader.i.i.preheader
	move	$s6, $zero
	fld.d	$fs0, $s0, %pc_lo12(.LCPI5_0)
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$fp, $a1, %pc_lo12(.L.str.51)
	b	.LBB5_33
	.p2align	4, , 16
.LBB5_32:                               # %_Z9check_sumd.exit.i74
                                        #   in Loop: Header=BB5_33 Depth=1
	addi.w	$s6, $s6, 1
	bge	$s6, $a0, .LBB5_41
.LBB5_33:                               # %.lr.ph.preheader.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_34 Depth 2
	fmov.d	$fa0, $fs1
	move	$a1, $s1
	.p2align	4, , 16
.LBB5_34:                               # %.lr.ph.i.i71
                                        #   Parent Loop BB5_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	addi.d	$a2, $a1, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s4, .LBB5_34
# %bb.35:                               # %_ZN9benchmark10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEET0_T_S9_S8_.exit.loopexit.i
                                        #   in Loop: Header=BB5_33 Depth=1
	fld.d	$fa1, $s5, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_32
# %bb.36:                               #   in Loop: Header=BB5_33 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(iterations)
	b	.LBB5_32
.LBB5_37:                               # %_ZN9benchmark10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEET0_T_S9_S8_.exit.us.preheader.i
	move	$s1, $zero
	fld.d	$fa0, $s5, %pc_lo12(init_value)
	fld.d	$fs0, $s0, %pc_lo12(.LCPI5_0)
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$fp, $a1, %pc_lo12(.L.str.51)
	b	.LBB5_39
	.p2align	4, , 16
.LBB5_38:                               # %_Z9check_sumd.exit.us.i77
                                        #   in Loop: Header=BB5_39 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_41
.LBB5_39:                               # %_ZN9benchmark10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEET0_T_S9_S8_.exit.us.i
                                        # =>This Inner Loop Header: Depth=1
	fmul.d	$fa1, $fa0, $fs0
	fcmp.ceq.d	$fcc0, $fa1, $fs1
	bcnez	$fcc0, .LBB5_38
# %bb.40:                               #   in Loop: Header=BB5_39 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s5, %pc_lo12(init_value)
	ld.w	$a0, $s8, %pc_lo12(iterations)
	b	.LBB5_38
.LBB5_41:                               # %_Z15test_accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_T0_PKc.exit
	blez	$a0, .LBB5_89
# %bb.42:                               # %.lr.ph.i79.preheader
	move	$s1, $zero
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s4, $a1, %pc_lo12(rdpb)
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $a1, %pc_lo12(rdpe)
	fld.d	$fs0, $s0, %pc_lo12(.LCPI5_0)
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$fp, $a1, %pc_lo12(.L.str.51)
	b	.LBB5_44
	.p2align	4, , 16
.LBB5_43:                               # %_Z9check_sumd.exit.i83
                                        #   in Loop: Header=BB5_44 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_49
.LBB5_44:                               # %.lr.ph.i79
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_46 Depth 2
	fmov.d	$fa0, $fs1
	beq	$s4, $s6, .LBB5_47
# %bb.45:                               # %.lr.ph.i.i81.preheader
                                        #   in Loop: Header=BB5_44 Depth=1
	move	$a1, $s4
	fmov.d	$fa0, $fs1
	.p2align	4, , 16
.LBB5_46:                               # %.lr.ph.i.i81
                                        #   Parent Loop BB5_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, -8
	addi.d	$a2, $a1, -8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s6, .LBB5_46
.LBB5_47:                               # %_ZN9benchmark10accumulateISt16reverse_iteratorIPdEdEET0_T_S5_S4_.exit.i
                                        #   in Loop: Header=BB5_44 Depth=1
	fld.d	$fa1, $s5, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_43
# %bb.48:                               #   in Loop: Header=BB5_44 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(iterations)
	b	.LBB5_43
.LBB5_49:                               # %_Z15test_accumulateISt16reverse_iteratorIPdEdEvT_S3_T0_PKc.exit
	blez	$a0, .LBB5_89
# %bb.50:                               # %.lr.ph.i85.preheader
	move	$s0, $zero
	ld.d	$s1, $sp, 200
	ld.d	$s4, $sp, 192
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$fp, $a1, %pc_lo12(.L.str.51)
	b	.LBB5_52
	.p2align	4, , 16
.LBB5_51:                               # %_Z9check_sumd.exit.i90
                                        #   in Loop: Header=BB5_52 Depth=1
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_57
.LBB5_52:                               # %.lr.ph.i85
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_54 Depth 2
	fmov.d	$fa0, $fs1
	beq	$s1, $s4, .LBB5_55
# %bb.53:                               # %.lr.ph.i.i87.preheader
                                        #   in Loop: Header=BB5_52 Depth=1
	move	$a1, $s1
	fmov.d	$fa0, $fs1
	.p2align	4, , 16
.LBB5_54:                               # %.lr.ph.i.i87
                                        #   Parent Loop BB5_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, -8
	addi.d	$a2, $a1, -8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s4, .LBB5_54
.LBB5_55:                               # %_ZN9benchmark10accumulateISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEET0_T_SB_SA_.exit.i
                                        #   in Loop: Header=BB5_52 Depth=1
	fld.d	$fa1, $s5, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_51
# %bb.56:                               #   in Loop: Header=BB5_52 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(iterations)
	b	.LBB5_51
.LBB5_57:                               # %_Z15test_accumulateISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_T0_PKc.exit
	blez	$a0, .LBB5_89
# %bb.58:                               # %.lr.ph.i92.preheader
	move	$s0, $zero
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$fp, $a1, %pc_lo12(.L.str.51)
	b	.LBB5_60
	.p2align	4, , 16
.LBB5_59:                               # %_Z9check_sumd.exit.i102
                                        #   in Loop: Header=BB5_60 Depth=1
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_65
.LBB5_60:                               # %.lr.ph.i92
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_62 Depth 2
	fmov.d	$fa0, $fs1
	beq	$s2, $s3, .LBB5_63
# %bb.61:                               # %.lr.ph.i.i96.preheader
                                        #   in Loop: Header=BB5_60 Depth=1
	move	$a1, $s3
	fmov.d	$fa0, $fs1
	.p2align	4, , 16
.LBB5_62:                               # %.lr.ph.i.i96
                                        #   Parent Loop BB5_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, -8
	addi.d	$a2, $a1, -8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s2, .LBB5_62
.LBB5_63:                               # %_ZN9benchmark10accumulateISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEET0_T_SB_SA_.exit.i100
                                        #   in Loop: Header=BB5_60 Depth=1
	fld.d	$fa1, $s5, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_59
# %bb.64:                               #   in Loop: Header=BB5_60 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(iterations)
	b	.LBB5_59
.LBB5_65:                               # %_Z15test_accumulateISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_T0_PKc.exit104
	blez	$a0, .LBB5_89
# %bb.66:                               # %.lr.ph.i105.preheader
	move	$s0, $zero
	pcalau12i	$a1, %pc_hi20(rrdpb+8)
	ld.d	$s1, $a1, %pc_lo12(rrdpb+8)
	pcalau12i	$a1, %pc_hi20(rrdpe+8)
	ld.d	$s4, $a1, %pc_lo12(rrdpe+8)
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$fp, $a1, %pc_lo12(.L.str.51)
	b	.LBB5_68
	.p2align	4, , 16
.LBB5_67:                               # %_Z9check_sumd.exit.i112
                                        #   in Loop: Header=BB5_68 Depth=1
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_73
.LBB5_68:                               # %.lr.ph.i105
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_70 Depth 2
	fmov.d	$fa0, $fs1
	beq	$s1, $s4, .LBB5_71
# %bb.69:                               # %.lr.ph.i.i108.preheader
                                        #   in Loop: Header=BB5_68 Depth=1
	move	$a1, $s1
	fmov.d	$fa0, $fs1
	.p2align	4, , 16
.LBB5_70:                               # %.lr.ph.i.i108
                                        #   Parent Loop BB5_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	addi.d	$a2, $a1, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s4, .LBB5_70
.LBB5_71:                               # %_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IPdEEdEET0_T_S6_S5_.exit.i
                                        #   in Loop: Header=BB5_68 Depth=1
	fld.d	$fa1, $s5, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_67
# %bb.72:                               #   in Loop: Header=BB5_68 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(iterations)
	b	.LBB5_67
.LBB5_73:                               # %_Z15test_accumulateISt16reverse_iteratorIS0_IPdEEdEvT_S4_T0_PKc.exit
	blez	$a0, .LBB5_89
# %bb.74:                               # %.lr.ph.i114.preheader
	move	$s0, $zero
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$fp, $a1, %pc_lo12(.L.str.51)
	b	.LBB5_76
	.p2align	4, , 16
.LBB5_75:                               # %_Z9check_sumd.exit.i122
                                        #   in Loop: Header=BB5_76 Depth=1
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_81
.LBB5_76:                               # %.lr.ph.i114
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_78 Depth 2
	fmov.d	$fa0, $fs1
	beq	$s2, $s3, .LBB5_79
# %bb.77:                               # %.lr.ph.i.i118.preheader
                                        #   in Loop: Header=BB5_76 Depth=1
	move	$a1, $s2
	fmov.d	$fa0, $fs1
	.p2align	4, , 16
.LBB5_78:                               # %.lr.ph.i.i118
                                        #   Parent Loop BB5_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	addi.d	$a2, $a1, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s3, .LBB5_78
.LBB5_79:                               # %_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEET0_T_SC_SB_.exit.i
                                        #   in Loop: Header=BB5_76 Depth=1
	fld.d	$fa1, $s5, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_75
# %bb.80:                               #   in Loop: Header=BB5_76 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(iterations)
	b	.LBB5_75
.LBB5_81:                               # %_Z15test_accumulateISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_T0_PKc.exit
	blez	$a0, .LBB5_89
# %bb.82:                               # %.lr.ph.i124.preheader
	move	$s0, $zero
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$fp, $a1, %pc_lo12(.L.str.51)
	b	.LBB5_84
	.p2align	4, , 16
.LBB5_83:                               # %_Z9check_sumd.exit.i135
                                        #   in Loop: Header=BB5_84 Depth=1
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_89
.LBB5_84:                               # %.lr.ph.i124
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_86 Depth 2
	fmov.d	$fa0, $fs1
	beq	$s2, $s3, .LBB5_87
# %bb.85:                               # %.lr.ph.i.i128.preheader
                                        #   in Loop: Header=BB5_84 Depth=1
	move	$a1, $s2
	fmov.d	$fa0, $fs1
	.p2align	4, , 16
.LBB5_86:                               # %.lr.ph.i.i128
                                        #   Parent Loop BB5_84 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	addi.d	$a2, $a1, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s3, .LBB5_86
.LBB5_87:                               # %_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEET0_T_SC_SB_.exit.i133
                                        #   in Loop: Header=BB5_84 Depth=1
	fld.d	$fa1, $s5, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_83
# %bb.88:                               #   in Loop: Header=BB5_84 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(iterations)
	b	.LBB5_83
.LBB5_89:                               # %_Z15test_accumulateISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_T0_PKc.exit.thread
	lu12i.w	$a1, 67108
	ori	$a1, $a1, 3539
	mul.d	$a0, $a0, $a1
	srli.d	$a1, $a0, 63
	srai.d	$a0, $a0, 38
	add.d	$a0, $a0, $a1
	st.w	$a0, $s8, %pc_lo12(iterations)
	st.d	$zero, $sp, 184
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	vst	$vr0, $sp, 168
.Ltmp3:
	addi.d	$a0, $sp, 168
	ori	$a1, $zero, 2000
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp4:
# %bb.90:                               # %_ZNSt6vectorIdSaIdEE6resizeEm.exit140
	pcalau12i	$a0, %pc_hi20(dMpb)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$fp, $a0, %pc_lo12(dMpb)
	pcalau12i	$a0, %pc_hi20(dMpe)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$s0, $a0, %pc_lo12(dMpe)
	beq	$fp, $s0, .LBB5_93
	.p2align	4, , 16
.LBB5_91:                               # %.lr.ph.i141
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	addi.d	$a0, $fp, 8
	fst.d	$fa0, $fp, 0
	move	$fp, $a0
	bne	$a0, $s0, .LBB5_91
# %bb.92:                               # %_ZN9benchmark11fill_randomIPddEEvT_S2_.exit.loopexit
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(dMpb)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(dMpe)
.LBB5_93:                               # %_ZN9benchmark11fill_randomIPddEEvT_S2_.exit
	ld.d	$s7, $sp, 168
	beq	$fp, $s0, .LBB5_100
# %bb.94:                               # %.lr.ph.i146.preheader
	sub.d	$a0, $s0, $fp
	addi.d	$a2, $a0, -8
	ori	$a3, $zero, 24
	move	$a0, $fp
	move	$a1, $s7
	bltu	$a2, $a3, .LBB5_99
# %bb.95:                               # %.lr.ph.i146.preheader
	sub.d	$a3, $s7, $fp
	ori	$a4, $zero, 32
	move	$a0, $fp
	move	$a1, $s7
	bltu	$a3, $a4, .LBB5_99
# %bb.96:                               # %vector.ph775
	srli.d	$a0, $a2, 3
	addi.d	$a2, $a0, 1
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$a3, $a0, 2
	slli.d	$a1, $a0, 5
	add.d	$a0, $fp, $a1
	add.d	$a1, $s7, $a1
	addi.d	$a4, $s7, 16
	addi.d	$a5, $fp, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB5_97:                               # %vector.body778
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a4, $a4, 32
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB5_97
# %bb.98:                               # %middle.block786
	beq	$a2, $a3, .LBB5_100
	.p2align	4, , 16
.LBB5_99:                               # %.lr.ph.i146
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a0, 0
	addi.d	$a2, $a0, 8
	addi.d	$a3, $a1, 8
	fst.d	$fa0, $a1, 0
	move	$a0, $a2
	move	$a1, $a3
	bne	$a2, $s0, .LBB5_99
.LBB5_100:                              # %_ZN9benchmark4copyIPdN9__gnu_cxx17__normal_iteratorIS1_St6vectorIdSaIdEEEEEEvT_S8_T0_.exit
	ld.d	$a0, $sp, 176
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(dpb)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(dpe)
.Ltmp6:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a4, $a0, %pc_lo12(.L.str.26)
	movgr2fr.d	$fa0, $zero
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc)
	jirl	$ra, $ra, 0
.Ltmp7:
# %bb.101:
	ld.d	$a0, $sp, 168
	ld.d	$a1, $sp, 176
	ld.d	$a2, $sp, 192
	ld.d	$a3, $sp, 200
.Ltmp8:
	pcalau12i	$a4, %pc_hi20(.L.str.27)
	addi.d	$a4, $a4, %pc_lo12(.L.str.27)
	movgr2fr.d	$fa0, $zero
	pcaddu18i	$ra, %call36(_Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc)
	jirl	$ra, $ra, 0
.Ltmp9:
# %bb.102:
	ld.w	$a4, $s8, %pc_lo12(iterations)
	pcalau12i	$a1, %pc_hi20(rdMpb)
	pcalau12i	$a2, %pc_hi20(rdMpe)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	blez	$a4, .LBB5_213
# %bb.103:                              # %.lr.ph.i148.preheader
	move	$s0, $zero
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(rdpb)
	ld.d	$s4, $a1, %pc_lo12(rdMpb)
	ld.d	$s5, $a2, %pc_lo12(rdMpe)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(rdpe)
	addi.d	$fp, $s1, -8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.w	$a0, $zero, -8
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	b	.LBB5_106
	.p2align	4, , 16
.LBB5_104:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIPdEEEbT_S4_.exit.i.i
                                        #   in Loop: Header=BB5_106 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s8, %pc_lo12(iterations)
.LBB5_105:                              # %_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i
                                        #   in Loop: Header=BB5_106 Depth=1
	addi.w	$s0, $s0, 1
	bge	$s0, $a4, .LBB5_119
.LBB5_106:                              # %.lr.ph.i148
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_108 Depth 2
                                        #     Child Loop BB5_112 Depth 2
                                        #       Child Loop BB5_113 Depth 3
                                        #     Child Loop BB5_117 Depth 2
	beq	$s4, $s5, .LBB5_109
# %bb.107:                              # %.lr.ph.i.i150.preheader
                                        #   in Loop: Header=BB5_106 Depth=1
	move	$a0, $fp
	move	$a1, $s4
	.p2align	4, , 16
.LBB5_108:                              # %.lr.ph.i.i150
                                        #   Parent Loop BB5_106 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, -8
	addi.d	$a2, $a1, -8
	fst.d	$fa0, $a0, 0
	addi.d	$a0, $a0, -8
	move	$a1, $a2
	bne	$a2, $s5, .LBB5_108
.LBB5_109:                              # %_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i
                                        #   in Loop: Header=BB5_106 Depth=1
	beq	$fp, $s6, .LBB5_116
# %bb.110:                              # %.lr.ph.i2.i.preheader
                                        #   in Loop: Header=BB5_106 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$a1, $fp
	b	.LBB5_112
	.p2align	4, , 16
.LBB5_111:                              # %..critedge.i.i_crit_edge
                                        #   in Loop: Header=BB5_112 Depth=2
	add.d	$a2, $s1, $a2
	fst.d	$fa0, $a2, -8
	addi.d	$a0, $a0, -8
	beq	$a1, $s6, .LBB5_116
.LBB5_112:                              # %.lr.ph.i2.i
                                        #   Parent Loop BB5_106 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_113 Depth 3
	fld.d	$fa0, $a1, -8
	addi.d	$a1, $a1, -8
	move	$a2, $a0
	.p2align	4, , 16
.LBB5_113:                              #   Parent Loop BB5_106 Depth=1
                                        #     Parent Loop BB5_112 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s1, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_111
# %bb.114:                              #   in Loop: Header=BB5_113 Depth=3
	add.d	$a3, $s1, $a2
	addi.d	$a2, $a2, 8
	fst.d	$fa1, $a3, -8
	bnez	$a2, .LBB5_113
# %bb.115:                              #   in Loop: Header=BB5_112 Depth=2
	move	$a2, $s1
	fst.d	$fa0, $a2, -8
	addi.d	$a0, $a0, -8
	bne	$a1, $s6, .LBB5_112
.LBB5_116:                              # %_ZN9benchmark13insertionSortISt16reverse_iteratorIPdEdEEvT_S4_.exit.i.preheader
                                        #   in Loop: Header=BB5_106 Depth=1
	move	$a0, $fp
	.p2align	4, , 16
.LBB5_117:                              # %_ZN9benchmark13insertionSortISt16reverse_iteratorIPdEdEEvT_S4_.exit.i
                                        #   Parent Loop BB5_106 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s6, .LBB5_105
# %bb.118:                              #   in Loop: Header=BB5_117 Depth=2
	fld.d	$fa0, $a0, -8
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_117
	b	.LBB5_104
.LBB5_119:                              # %_Z19test_insertion_sortISt16reverse_iteratorIPdEdEvT_S3_S3_S3_T0_PKc.exit
	blez	$a4, .LBB5_213
# %bb.120:                              # %.lr.ph.i153.preheader
	move	$s0, $zero
	ld.d	$s1, $sp, 200
	ld.d	$s4, $sp, 176
	ld.d	$s5, $sp, 168
	ld.d	$s6, $sp, 192
	addi.d	$fp, $s1, -8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.w	$a0, $zero, -8
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	b	.LBB5_123
	.p2align	4, , 16
.LBB5_121:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i
                                        #   in Loop: Header=BB5_123 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s8, %pc_lo12(iterations)
.LBB5_122:                              # %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i
                                        #   in Loop: Header=BB5_123 Depth=1
	addi.w	$s0, $s0, 1
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	bge	$s0, $a4, .LBB5_136
.LBB5_123:                              # %.lr.ph.i153
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_125 Depth 2
                                        #     Child Loop BB5_129 Depth 2
                                        #       Child Loop BB5_130 Depth 3
                                        #     Child Loop BB5_134 Depth 2
	beq	$s4, $s5, .LBB5_126
# %bb.124:                              # %.lr.ph.i.i155.preheader
                                        #   in Loop: Header=BB5_123 Depth=1
	move	$a0, $fp
	move	$a1, $s4
	.p2align	4, , 16
.LBB5_125:                              # %.lr.ph.i.i155
                                        #   Parent Loop BB5_123 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, -8
	addi.d	$a2, $a1, -8
	fst.d	$fa0, $a0, 0
	addi.d	$a0, $a0, -8
	move	$a1, $a2
	bne	$a2, $s5, .LBB5_125
.LBB5_126:                              # %_ZN9benchmark4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEES9_EEvT_SA_T0_.exit.i
                                        #   in Loop: Header=BB5_123 Depth=1
	beq	$fp, $s6, .LBB5_133
# %bb.127:                              # %.lr.ph.preheader.i.i158.preheader
                                        #   in Loop: Header=BB5_123 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$a1, $fp
	b	.LBB5_129
	.p2align	4, , 16
.LBB5_128:                              # %.lr.ph.i3.i..critedge.i.i159_crit_edge
                                        #   in Loop: Header=BB5_129 Depth=2
	add.d	$a2, $s1, $a2
	fst.d	$fa0, $a2, -8
	addi.d	$a0, $a0, -8
	beq	$a1, $s6, .LBB5_133
.LBB5_129:                              # %.lr.ph.preheader.i.i158
                                        #   Parent Loop BB5_123 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_130 Depth 3
	fld.d	$fa0, $a1, -8
	addi.d	$a1, $a1, -8
	move	$a2, $a0
	.p2align	4, , 16
.LBB5_130:                              # %.lr.ph.i3.i
                                        #   Parent Loop BB5_123 Depth=1
                                        #     Parent Loop BB5_129 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s1, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_128
# %bb.131:                              #   in Loop: Header=BB5_130 Depth=3
	add.d	$a3, $s1, $a2
	addi.d	$a2, $a2, 8
	fst.d	$fa1, $a3, -8
	bnez	$a2, .LBB5_130
# %bb.132:                              #   in Loop: Header=BB5_129 Depth=2
	move	$a2, $s1
	fst.d	$fa0, $a2, -8
	addi.d	$a0, $a0, -8
	bne	$a1, $s6, .LBB5_129
.LBB5_133:                              # %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i.preheader
                                        #   in Loop: Header=BB5_123 Depth=1
	move	$a0, $fp
	.p2align	4, , 16
.LBB5_134:                              # %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i
                                        #   Parent Loop BB5_123 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s6, .LBB5_122
# %bb.135:                              #   in Loop: Header=BB5_134 Depth=2
	fld.d	$fa0, $a0, -8
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_134
	b	.LBB5_121
.LBB5_136:                              # %_Z19test_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_S9_S9_T0_PKc.exit
	blez	$a4, .LBB5_213
# %bb.137:                              # %.lr.ph.i162.preheader
	move	$s0, $zero
	addi.d	$s1, $s3, -8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$fp, $a0, %pc_lo12(.L.str.52)
	addi.w	$s4, $zero, -8
	b	.LBB5_140
	.p2align	4, , 16
.LBB5_138:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i183
                                        #   in Loop: Header=BB5_140 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a4, $s8, %pc_lo12(iterations)
.LBB5_139:                              # %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i185
                                        #   in Loop: Header=BB5_140 Depth=1
	addi.w	$s0, $s0, 1
	bge	$s0, $a4, .LBB5_153
.LBB5_140:                              # %.lr.ph.i162
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_142 Depth 2
                                        #     Child Loop BB5_146 Depth 2
                                        #       Child Loop BB5_147 Depth 3
                                        #     Child Loop BB5_151 Depth 2
	beq	$a5, $s7, .LBB5_143
# %bb.141:                              # %.lr.ph.i.i166.preheader
                                        #   in Loop: Header=BB5_140 Depth=1
	move	$a0, $s1
	move	$a1, $a5
	.p2align	4, , 16
.LBB5_142:                              # %.lr.ph.i.i166
                                        #   Parent Loop BB5_140 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, -8
	addi.d	$a2, $a1, -8
	fst.d	$fa0, $a0, 0
	addi.d	$a0, $a0, -8
	move	$a1, $a2
	bne	$a2, $s7, .LBB5_142
.LBB5_143:                              # %_ZN9benchmark4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEES9_EEvT_SA_T0_.exit.i170
                                        #   in Loop: Header=BB5_140 Depth=1
	beq	$s1, $s2, .LBB5_150
# %bb.144:                              # %.lr.ph.preheader.i.i172.preheader
                                        #   in Loop: Header=BB5_140 Depth=1
	move	$a0, $s4
	move	$a1, $s1
	b	.LBB5_146
	.p2align	4, , 16
.LBB5_145:                              # %.lr.ph.i3.i174..critedge.i.i176_crit_edge
                                        #   in Loop: Header=BB5_146 Depth=2
	add.d	$a2, $s3, $a2
	fst.d	$fa0, $a2, -8
	addi.d	$a0, $a0, -8
	beq	$a1, $s2, .LBB5_150
.LBB5_146:                              # %.lr.ph.preheader.i.i172
                                        #   Parent Loop BB5_140 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_147 Depth 3
	fld.d	$fa0, $a1, -8
	addi.d	$a1, $a1, -8
	move	$a2, $a0
	.p2align	4, , 16
.LBB5_147:                              # %.lr.ph.i3.i174
                                        #   Parent Loop BB5_140 Depth=1
                                        #     Parent Loop BB5_146 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s3, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_145
# %bb.148:                              #   in Loop: Header=BB5_147 Depth=3
	add.d	$a3, $s3, $a2
	addi.d	$a2, $a2, 8
	fst.d	$fa1, $a3, -8
	bnez	$a2, .LBB5_147
# %bb.149:                              #   in Loop: Header=BB5_146 Depth=2
	move	$a2, $s3
	fst.d	$fa0, $a2, -8
	addi.d	$a0, $a0, -8
	bne	$a1, $s2, .LBB5_146
.LBB5_150:                              # %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i179.preheader
                                        #   in Loop: Header=BB5_140 Depth=1
	move	$a0, $s1
	.p2align	4, , 16
.LBB5_151:                              # %_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_.exit.i179
                                        #   Parent Loop BB5_140 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s2, .LBB5_139
# %bb.152:                              #   in Loop: Header=BB5_151 Depth=2
	fld.d	$fa0, $a0, -8
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_151
	b	.LBB5_138
.LBB5_153:                              # %_Z19test_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_S9_S9_T0_PKc.exit187
	blez	$a4, .LBB5_213
# %bb.154:                              # %.lr.ph.i188.preheader
	move	$s5, $zero
	pcalau12i	$a0, %pc_hi20(rrdMpb+8)
	ld.d	$a6, $a0, %pc_lo12(rrdMpb+8)
	pcalau12i	$a0, %pc_hi20(rrdMpe+8)
	pcalau12i	$a1, %pc_hi20(rrdpb+8)
	ld.d	$fp, $a1, %pc_lo12(rrdpb+8)
	ld.d	$s4, $a0, %pc_lo12(rrdMpe+8)
	pcalau12i	$a0, %pc_hi20(rrdpe+8)
	ld.d	$s6, $a0, %pc_lo12(rrdpe+8)
	addi.d	$s1, $fp, 8
	sub.d	$a0, $fp, $a6
	sub.d	$a1, $s4, $a6
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$a1, $a0, 2
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 5
	add.d	$a1, $fp, $a0
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	add.d	$a0, $a6, $a0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $a6, 16
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	addi.d	$a0, $fp, 16
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.w	$s0, $zero, -8
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	b	.LBB5_157
	.p2align	4, , 16
.LBB5_155:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IPdEEEEbT_S5_.exit.i.i
                                        #   in Loop: Header=BB5_157 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a4, $s8, %pc_lo12(iterations)
.LBB5_156:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i
                                        #   in Loop: Header=BB5_157 Depth=1
	addi.w	$s5, $s5, 1
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	bge	$s5, $a4, .LBB5_173
.LBB5_157:                              # %.lr.ph.i188
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_160 Depth 2
                                        #     Child Loop BB5_162 Depth 2
                                        #     Child Loop BB5_166 Depth 2
                                        #       Child Loop BB5_167 Depth 3
                                        #     Child Loop BB5_171 Depth 2
	beq	$a6, $s4, .LBB5_163
# %bb.158:                              # %.lr.ph.i.i190.preheader
                                        #   in Loop: Header=BB5_157 Depth=1
	move	$a0, $fp
	move	$a1, $a6
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	bnez	$a2, .LBB5_162
# %bb.159:                              # %vector.body797.preheader
                                        #   in Loop: Header=BB5_157 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_160:                              # %vector.body797
                                        #   Parent Loop BB5_157 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_160
# %bb.161:                              # %middle.block806
                                        #   in Loop: Header=BB5_157 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB5_163
	.p2align	4, , 16
.LBB5_162:                              # %.lr.ph.i.i190
                                        #   Parent Loop BB5_157 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $s4, .LBB5_162
.LBB5_163:                              # %_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i
                                        #   in Loop: Header=BB5_157 Depth=1
	beq	$s1, $s6, .LBB5_170
# %bb.164:                              # %.lr.ph.i2.i193.preheader
                                        #   in Loop: Header=BB5_157 Depth=1
	move	$a0, $zero
	move	$a1, $s1
	b	.LBB5_166
	.p2align	4, , 16
.LBB5_165:                              # %..critedge.i.i194_crit_edge
                                        #   in Loop: Header=BB5_166 Depth=2
	addi.d	$a2, $a3, 8
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	beq	$a1, $s6, .LBB5_170
.LBB5_166:                              # %.lr.ph.i2.i193
                                        #   Parent Loop BB5_157 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_167 Depth 3
	fld.d	$fa0, $a1, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB5_167:                              #   Parent Loop BB5_157 Depth=1
                                        #     Parent Loop BB5_166 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $fp, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a3, $fp, $a2
	bcnez	$fcc0, .LBB5_165
# %bb.168:                              #   in Loop: Header=BB5_167 Depth=3
	addi.d	$a2, $a2, -8
	fst.d	$fa1, $a3, 8
	bne	$a2, $s0, .LBB5_167
# %bb.169:                              #   in Loop: Header=BB5_166 Depth=2
	move	$a2, $fp
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$a1, $s6, .LBB5_166
.LBB5_170:                              # %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_.exit.i.preheader
                                        #   in Loop: Header=BB5_157 Depth=1
	move	$a0, $s1
	.p2align	4, , 16
.LBB5_171:                              # %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_.exit.i
                                        #   Parent Loop BB5_157 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s6, .LBB5_156
# %bb.172:                              #   in Loop: Header=BB5_171 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_171
	b	.LBB5_155
.LBB5_173:                              # %_Z19test_insertion_sortISt16reverse_iteratorIS0_IPdEEdEvT_S4_S4_S4_T0_PKc.exit
	blez	$a4, .LBB5_213
# %bb.174:                              # %.lr.ph.i198.preheader
	move	$s1, $zero
	addi.d	$s5, $s2, 8
	sub.d	$a0, $s2, $s7
	sub.d	$a1, $a5, $s7
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s6, $a1, $a0
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s4, $a0, 2
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 5
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	add.d	$a0, $s7, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a0, $s7, 16
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$fp, $a0, %pc_lo12(.L.str.52)
	b	.LBB5_177
	.p2align	4, , 16
.LBB5_175:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i
                                        #   in Loop: Header=BB5_177 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a4, $s8, %pc_lo12(iterations)
.LBB5_176:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i
                                        #   in Loop: Header=BB5_177 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $a4, .LBB5_193
.LBB5_177:                              # %.lr.ph.i198
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_180 Depth 2
                                        #     Child Loop BB5_182 Depth 2
                                        #     Child Loop BB5_186 Depth 2
                                        #       Child Loop BB5_187 Depth 3
                                        #     Child Loop BB5_191 Depth 2
	beq	$a5, $s7, .LBB5_183
# %bb.178:                              # %.lr.ph.i.i202.preheader
                                        #   in Loop: Header=BB5_177 Depth=1
	move	$a0, $s2
	move	$a1, $s7
	bnez	$s6, .LBB5_182
# %bb.179:                              # %vector.body817.preheader
                                        #   in Loop: Header=BB5_177 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_180:                              # %vector.body817
                                        #   Parent Loop BB5_177 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_180
# %bb.181:                              # %middle.block826
                                        #   in Loop: Header=BB5_177 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	beq	$a2, $s4, .LBB5_183
	.p2align	4, , 16
.LBB5_182:                              # %.lr.ph.i.i202
                                        #   Parent Loop BB5_177 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $a5, .LBB5_182
.LBB5_183:                              # %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i
                                        #   in Loop: Header=BB5_177 Depth=1
	beq	$s3, $s5, .LBB5_190
# %bb.184:                              # %.lr.ph28.i.i.preheader
                                        #   in Loop: Header=BB5_177 Depth=1
	move	$a0, $zero
	move	$a1, $s5
	b	.LBB5_186
	.p2align	4, , 16
.LBB5_185:                              # %.lr.ph.i2.i206..critedge.i.i208_crit_edge
                                        #   in Loop: Header=BB5_186 Depth=2
	addi.d	$a2, $a3, 8
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	beq	$s3, $a1, .LBB5_190
.LBB5_186:                              # %.lr.ph28.i.i
                                        #   Parent Loop BB5_177 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_187 Depth 3
	fld.d	$fa0, $a1, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB5_187:                              # %.lr.ph.i2.i206
                                        #   Parent Loop BB5_177 Depth=1
                                        #     Parent Loop BB5_186 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s2, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a3, $s2, $a2
	bcnez	$fcc0, .LBB5_185
# %bb.188:                              #   in Loop: Header=BB5_187 Depth=3
	addi.d	$a2, $a2, -8
	fst.d	$fa1, $a3, 8
	bne	$a2, $s0, .LBB5_187
# %bb.189:                              #   in Loop: Header=BB5_186 Depth=2
	move	$a2, $s2
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$s3, $a1, .LBB5_186
.LBB5_190:                              # %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_.exit.i.preheader
                                        #   in Loop: Header=BB5_177 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB5_191:                              # %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_.exit.i
                                        #   Parent Loop BB5_177 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s3, .LBB5_176
# %bb.192:                              #   in Loop: Header=BB5_191 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_191
	b	.LBB5_175
.LBB5_193:                              # %_Z19test_insertion_sortISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_SA_SA_T0_PKc.exit
	blez	$a4, .LBB5_213
# %bb.194:                              # %.lr.ph.i215.preheader
	move	$s1, $zero
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	slli.d	$s4, $a0, 2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	add.d	$a0, $s7, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a0, $s7, 16
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$fp, $a0, %pc_lo12(.L.str.52)
	b	.LBB5_197
	.p2align	4, , 16
.LBB5_195:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i239
                                        #   in Loop: Header=BB5_197 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a4, $s8, %pc_lo12(iterations)
.LBB5_196:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i241
                                        #   in Loop: Header=BB5_197 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $a4, .LBB5_213
.LBB5_197:                              # %.lr.ph.i215
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_200 Depth 2
                                        #     Child Loop BB5_202 Depth 2
                                        #     Child Loop BB5_206 Depth 2
                                        #       Child Loop BB5_207 Depth 3
                                        #     Child Loop BB5_211 Depth 2
	beq	$a5, $s7, .LBB5_203
# %bb.198:                              # %.lr.ph.i.i219.preheader
                                        #   in Loop: Header=BB5_197 Depth=1
	move	$a0, $s2
	move	$a1, $s7
	bnez	$s6, .LBB5_202
# %bb.199:                              # %vector.body837.preheader
                                        #   in Loop: Header=BB5_197 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_200:                              # %vector.body837
                                        #   Parent Loop BB5_197 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_200
# %bb.201:                              # %middle.block846
                                        #   in Loop: Header=BB5_197 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	beq	$a2, $s4, .LBB5_203
	.p2align	4, , 16
.LBB5_202:                              # %.lr.ph.i.i219
                                        #   Parent Loop BB5_197 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $a5, .LBB5_202
.LBB5_203:                              # %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i223
                                        #   in Loop: Header=BB5_197 Depth=1
	beq	$s3, $s5, .LBB5_210
# %bb.204:                              # %.lr.ph28.i.i226.preheader
                                        #   in Loop: Header=BB5_197 Depth=1
	move	$a0, $zero
	move	$a1, $s5
	b	.LBB5_206
	.p2align	4, , 16
.LBB5_205:                              # %.lr.ph.i2.i229..critedge.i.i231_crit_edge
                                        #   in Loop: Header=BB5_206 Depth=2
	addi.d	$a2, $a3, 8
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	beq	$s3, $a1, .LBB5_210
.LBB5_206:                              # %.lr.ph28.i.i226
                                        #   Parent Loop BB5_197 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_207 Depth 3
	fld.d	$fa0, $a1, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB5_207:                              # %.lr.ph.i2.i229
                                        #   Parent Loop BB5_197 Depth=1
                                        #     Parent Loop BB5_206 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s2, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a3, $s2, $a2
	bcnez	$fcc0, .LBB5_205
# %bb.208:                              #   in Loop: Header=BB5_207 Depth=3
	addi.d	$a2, $a2, -8
	fst.d	$fa1, $a3, 8
	bne	$a2, $s0, .LBB5_207
# %bb.209:                              #   in Loop: Header=BB5_206 Depth=2
	move	$a2, $s2
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$s3, $a1, .LBB5_206
.LBB5_210:                              # %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_.exit.i235.preheader
                                        #   in Loop: Header=BB5_197 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB5_211:                              # %_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_.exit.i235
                                        #   Parent Loop BB5_197 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s3, .LBB5_196
# %bb.212:                              #   in Loop: Header=BB5_211 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_211
	b	.LBB5_195
.LBB5_213:                              # %_Z19test_insertion_sortISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_SA_SA_T0_PKc.exit243
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(dMpb)
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(dMpe)
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(dpb)
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(dpe)
	slli.d	$a4, $a4, 3
	st.w	$a4, $s8, %pc_lo12(iterations)
.Ltmp10:
	pcalau12i	$a4, %pc_hi20(.L.str.34)
	addi.d	$a4, $a4, %pc_lo12(.L.str.34)
	movgr2fr.d	$fa0, $zero
	pcaddu18i	$ra, %call36(_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc)
	jirl	$ra, $ra, 0
.Ltmp11:
# %bb.214:
	ld.d	$a0, $sp, 168
	ld.d	$a1, $sp, 176
	ld.d	$a2, $sp, 192
	ld.d	$a3, $sp, 200
.Ltmp12:
	pcalau12i	$a4, %pc_hi20(.L.str.35)
	addi.d	$a4, $a4, %pc_lo12(.L.str.35)
	movgr2fr.d	$fa0, $zero
	pcaddu18i	$ra, %call36(_Z14test_quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc)
	jirl	$ra, $ra, 0
.Ltmp13:
# %bb.215:
	ld.w	$a0, $s8, %pc_lo12(iterations)
	blez	$a0, .LBB5_290
# %bb.216:                              # %.lr.ph.i244.preheader
	move	$fp, $s8
	move	$s0, $zero
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(rdpb)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(rdMpb)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(rdMpe)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(rdpe)
	addi.d	$s8, $s1, -8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	b	.LBB5_219
	.p2align	4, , 16
.LBB5_217:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIPdEEEbT_S4_.exit.i.i251
                                        #   in Loop: Header=BB5_219 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_218:                              # %_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i252
                                        #   in Loop: Header=BB5_219 Depth=1
	ld.w	$a0, $fp, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_226
.LBB5_219:                              # %.lr.ph.i244
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_221 Depth 2
                                        #     Child Loop BB5_224 Depth 2
	beq	$s4, $s5, .LBB5_222
# %bb.220:                              # %.lr.ph.i.i246.preheader
                                        #   in Loop: Header=BB5_219 Depth=1
	move	$a0, $s8
	move	$a1, $s4
	.p2align	4, , 16
.LBB5_221:                              # %.lr.ph.i.i246
                                        #   Parent Loop BB5_219 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, -8
	addi.d	$a2, $a1, -8
	fst.d	$fa0, $a0, 0
	addi.d	$a0, $a0, -8
	move	$a1, $a2
	bne	$a2, $s5, .LBB5_221
.LBB5_222:                              # %_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i248
                                        #   in Loop: Header=BB5_219 Depth=1
	st.d	$s1, $sp, 232
	st.d	$s6, $sp, 216
.Ltmp14:
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 216
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_)
	jirl	$ra, $ra, 0
.Ltmp15:
# %bb.223:                              # %.noexc253.preheader
                                        #   in Loop: Header=BB5_219 Depth=1
	move	$a0, $s8
	.p2align	4, , 16
.LBB5_224:                              # %.noexc253
                                        #   Parent Loop BB5_219 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s6, .LBB5_218
# %bb.225:                              #   in Loop: Header=BB5_224 Depth=2
	fld.d	$fa0, $a0, -8
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_224
	b	.LBB5_217
.LBB5_226:                              # %.loopexit644
	move	$s8, $fp
	blez	$a0, .LBB5_290
# %bb.227:                              # %.lr.ph.i254.preheader
	move	$s0, $zero
	ld.d	$s1, $sp, 200
	ld.d	$s4, $sp, 176
	ld.d	$s5, $sp, 168
	ld.d	$s6, $sp, 192
	addi.d	$fp, $s1, -8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	b	.LBB5_230
	.p2align	4, , 16
.LBB5_228:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i265
                                        #   in Loop: Header=BB5_230 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
.LBB5_229:                              # %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i266
                                        #   in Loop: Header=BB5_230 Depth=1
	ld.w	$a0, $s8, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_237
.LBB5_230:                              # %.lr.ph.i254
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_232 Depth 2
                                        #     Child Loop BB5_235 Depth 2
	beq	$s4, $s5, .LBB5_233
# %bb.231:                              # %.lr.ph.i.i257.preheader
                                        #   in Loop: Header=BB5_230 Depth=1
	move	$a0, $fp
	move	$a1, $s4
	.p2align	4, , 16
.LBB5_232:                              # %.lr.ph.i.i257
                                        #   Parent Loop BB5_230 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, -8
	addi.d	$a2, $a1, -8
	fst.d	$fa0, $a0, 0
	addi.d	$a0, $a0, -8
	move	$a1, $a2
	bne	$a2, $s5, .LBB5_232
.LBB5_233:                              # %_ZN9benchmark4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEES9_EEvT_SA_T0_.exit.i261
                                        #   in Loop: Header=BB5_230 Depth=1
	st.d	$s1, $sp, 232
	st.d	$s6, $sp, 216
.Ltmp17:
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 216
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_)
	jirl	$ra, $ra, 0
.Ltmp18:
# %bb.234:                              # %.noexc267.preheader
                                        #   in Loop: Header=BB5_230 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_235:                              # %.noexc267
                                        #   Parent Loop BB5_230 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s6, .LBB5_229
# %bb.236:                              #   in Loop: Header=BB5_235 Depth=2
	fld.d	$fa0, $a0, -8
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_235
	b	.LBB5_228
.LBB5_237:
	blez	$a0, .LBB5_290
# %bb.238:                              # %.lr.ph.i268.preheader
	move	$s0, $zero
	addi.d	$s1, $s3, -8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$fp, $a0, %pc_lo12(.L.str.52)
	b	.LBB5_241
	.p2align	4, , 16
.LBB5_239:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i280
                                        #   in Loop: Header=BB5_241 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
.LBB5_240:                              # %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i281
                                        #   in Loop: Header=BB5_241 Depth=1
	ld.w	$a0, $s8, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_248
.LBB5_241:                              # %.lr.ph.i268
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_243 Depth 2
                                        #     Child Loop BB5_246 Depth 2
	beq	$a1, $s7, .LBB5_244
# %bb.242:                              # %.lr.ph.i.i272.preheader
                                        #   in Loop: Header=BB5_241 Depth=1
	move	$a0, $s1
	.p2align	4, , 16
.LBB5_243:                              # %.lr.ph.i.i272
                                        #   Parent Loop BB5_241 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, -8
	addi.d	$a2, $a1, -8
	fst.d	$fa0, $a0, 0
	addi.d	$a0, $a0, -8
	move	$a1, $a2
	bne	$a2, $s7, .LBB5_243
.LBB5_244:                              # %_ZN9benchmark4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEES9_EEvT_SA_T0_.exit.i276
                                        #   in Loop: Header=BB5_241 Depth=1
	st.d	$s3, $sp, 232
	st.d	$s2, $sp, 216
.Ltmp20:
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 216
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_)
	jirl	$ra, $ra, 0
.Ltmp21:
# %bb.245:                              # %.noexc282.preheader
                                        #   in Loop: Header=BB5_241 Depth=1
	move	$a0, $s1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_246:                              # %.noexc282
                                        #   Parent Loop BB5_241 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s2, .LBB5_240
# %bb.247:                              #   in Loop: Header=BB5_246 Depth=2
	fld.d	$fa0, $a0, -8
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_246
	b	.LBB5_239
.LBB5_248:                              # %.loopexit638
	blez	$a0, .LBB5_290
# %bb.249:                              # %.lr.ph.i284
	move	$s0, $zero
	pcalau12i	$a0, %pc_hi20(rrdMpb+8)
	ld.d	$s1, $a0, %pc_lo12(rrdMpb+8)
	pcalau12i	$a0, %pc_hi20(rrdMpe+8)
	pcalau12i	$a1, %pc_hi20(rrdpb+8)
	ld.d	$s4, $a1, %pc_lo12(rrdpb+8)
	ld.d	$s5, $a0, %pc_lo12(rrdMpe+8)
	pcalau12i	$a0, %pc_hi20(rrdpe+8)
	ld.d	$s6, $a0, %pc_lo12(rrdpe+8)
	sub.d	$a0, $s4, $s1
	sub.d	$a1, $s5, $s1
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$a1, $a0, 2
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 5
	add.d	$a1, $s4, $a0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	add.d	$a0, $s1, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s1, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $s4, 16
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	addi.d	$fp, $s4, 8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	b	.LBB5_252
	.p2align	4, , 16
.LBB5_250:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IPdEEEEbT_S5_.exit.i.i293
                                        #   in Loop: Header=BB5_252 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
.LBB5_251:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i294
                                        #   in Loop: Header=BB5_252 Depth=1
	ld.w	$a0, $s8, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_262
.LBB5_252:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_255 Depth 2
                                        #     Child Loop BB5_257 Depth 2
                                        #     Child Loop BB5_260 Depth 2
	beq	$s1, $s5, .LBB5_258
# %bb.253:                              # %.lr.ph.i.i287.preheader
                                        #   in Loop: Header=BB5_252 Depth=1
	move	$a0, $s4
	move	$a1, $s1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	bnez	$a2, .LBB5_257
# %bb.254:                              # %vector.body857.preheader
                                        #   in Loop: Header=BB5_252 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_255:                              # %vector.body857
                                        #   Parent Loop BB5_252 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_255
# %bb.256:                              # %middle.block866
                                        #   in Loop: Header=BB5_252 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB5_258
	.p2align	4, , 16
.LBB5_257:                              # %.lr.ph.i.i287
                                        #   Parent Loop BB5_252 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $s5, .LBB5_257
.LBB5_258:                              # %_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i290
                                        #   in Loop: Header=BB5_252 Depth=1
	st.d	$s4, $sp, 240
	st.d	$s6, $sp, 224
.Ltmp23:
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 216
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_)
	jirl	$ra, $ra, 0
.Ltmp24:
# %bb.259:                              # %.noexc295.preheader
                                        #   in Loop: Header=BB5_252 Depth=1
	move	$a0, $fp
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_260:                              # %.noexc295
                                        #   Parent Loop BB5_252 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s6, .LBB5_251
# %bb.261:                              #   in Loop: Header=BB5_260 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_260
	b	.LBB5_250
.LBB5_262:
	blez	$a0, .LBB5_290
# %bb.263:                              # %.lr.ph.i296
	move	$s6, $zero
	sub.d	$a0, $s2, $s7
	sub.d	$a1, $a3, $s7
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s5, $a1, $a0
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s1, $a0, 2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 5
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	add.d	$a0, $s7, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a0, $s7, 16
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$s0, $s2, 16
	addi.d	$s4, $s2, 8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$fp, $a0, %pc_lo12(.L.str.52)
	b	.LBB5_266
	.p2align	4, , 16
.LBB5_264:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i308
                                        #   in Loop: Header=BB5_266 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
.LBB5_265:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i309
                                        #   in Loop: Header=BB5_266 Depth=1
	ld.w	$a0, $s8, %pc_lo12(iterations)
	addi.w	$s6, $s6, 1
	bge	$s6, $a0, .LBB5_276
.LBB5_266:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_269 Depth 2
                                        #     Child Loop BB5_271 Depth 2
                                        #     Child Loop BB5_274 Depth 2
	beq	$s7, $a3, .LBB5_272
# %bb.267:                              # %.lr.ph.i.i300.preheader
                                        #   in Loop: Header=BB5_266 Depth=1
	move	$a0, $s2
	move	$a1, $s7
	bnez	$s5, .LBB5_271
# %bb.268:                              # %vector.body877.preheader
                                        #   in Loop: Header=BB5_266 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_269:                              # %vector.body877
                                        #   Parent Loop BB5_266 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_269
# %bb.270:                              # %middle.block886
                                        #   in Loop: Header=BB5_266 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	beq	$a2, $s1, .LBB5_272
	.p2align	4, , 16
.LBB5_271:                              # %.lr.ph.i.i300
                                        #   Parent Loop BB5_266 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $a3, .LBB5_271
.LBB5_272:                              # %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i304
                                        #   in Loop: Header=BB5_266 Depth=1
	st.d	$s2, $sp, 240
	st.d	$s3, $sp, 224
.Ltmp26:
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 216
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_)
	jirl	$ra, $ra, 0
.Ltmp27:
# %bb.273:                              # %.noexc310.preheader
                                        #   in Loop: Header=BB5_266 Depth=1
	move	$a0, $s4
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_274:                              # %.noexc310
                                        #   Parent Loop BB5_266 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s3, .LBB5_265
# %bb.275:                              #   in Loop: Header=BB5_274 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_274
	b	.LBB5_264
.LBB5_276:                              # %.loopexit632
	blez	$a0, .LBB5_290
# %bb.277:                              # %.lr.ph.i311
	move	$s1, $zero
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	slli.d	$s6, $a0, 2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	add.d	$a0, $s7, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a0, $s7, 16
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$s0, $s2, 16
	addi.d	$s4, $s2, 8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$fp, $a0, %pc_lo12(.L.str.52)
	b	.LBB5_280
	.p2align	4, , 16
.LBB5_278:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i323
                                        #   in Loop: Header=BB5_280 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
.LBB5_279:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i324
                                        #   in Loop: Header=BB5_280 Depth=1
	ld.w	$a0, $s8, %pc_lo12(iterations)
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_290
.LBB5_280:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_283 Depth 2
                                        #     Child Loop BB5_285 Depth 2
                                        #     Child Loop BB5_288 Depth 2
	beq	$s7, $a3, .LBB5_286
# %bb.281:                              # %.lr.ph.i.i315.preheader
                                        #   in Loop: Header=BB5_280 Depth=1
	move	$a0, $s2
	move	$a1, $s7
	bnez	$s5, .LBB5_285
# %bb.282:                              # %vector.body897.preheader
                                        #   in Loop: Header=BB5_280 Depth=1
	move	$a0, $s6
	move	$a1, $s0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_283:                              # %vector.body897
                                        #   Parent Loop BB5_280 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_283
# %bb.284:                              # %middle.block906
                                        #   in Loop: Header=BB5_280 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	beq	$a2, $s6, .LBB5_286
	.p2align	4, , 16
.LBB5_285:                              # %.lr.ph.i.i315
                                        #   Parent Loop BB5_280 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $a3, .LBB5_285
.LBB5_286:                              # %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i319
                                        #   in Loop: Header=BB5_280 Depth=1
	st.d	$s2, $sp, 240
	st.d	$s3, $sp, 224
.Ltmp29:
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 216
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_)
	jirl	$ra, $ra, 0
.Ltmp30:
# %bb.287:                              # %.noexc325.preheader
                                        #   in Loop: Header=BB5_280 Depth=1
	move	$a0, $s4
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_288:                              # %.noexc325
                                        #   Parent Loop BB5_280 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s3, .LBB5_279
# %bb.289:                              #   in Loop: Header=BB5_288 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_288
	b	.LBB5_278
.LBB5_290:                              # %.loopexit628
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(dMpb)
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(dMpe)
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(dpb)
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(dpe)
.Ltmp32:
	pcalau12i	$a4, %pc_hi20(.L.str.42)
	addi.d	$a4, $a4, %pc_lo12(.L.str.42)
	movgr2fr.d	$fa0, $zero
	pcaddu18i	$ra, %call36(_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc)
	jirl	$ra, $ra, 0
.Ltmp33:
# %bb.291:
	ld.d	$a0, $sp, 168
	ld.d	$a1, $sp, 176
	ld.d	$a2, $sp, 192
	ld.d	$a3, $sp, 200
.Ltmp34:
	pcalau12i	$a4, %pc_hi20(.L.str.43)
	addi.d	$a4, $a4, %pc_lo12(.L.str.43)
	movgr2fr.d	$fa0, $zero
	pcaddu18i	$ra, %call36(_Z14test_heap_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc)
	jirl	$ra, $ra, 0
.Ltmp35:
# %bb.292:
	ld.w	$a0, $s8, %pc_lo12(iterations)
	blez	$a0, .LBB5_367
# %bb.293:                              # %.lr.ph.i327.preheader
	st.d	$s8, $sp, 128                   # 8-byte Folded Spill
	move	$s0, $zero
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(rdpb)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(rdMpb)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(rdMpe)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(rdpe)
	addi.d	$s8, $s1, -8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$fp, $a0, %pc_lo12(.L.str.52)
	b	.LBB5_296
	.p2align	4, , 16
.LBB5_294:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIPdEEEbT_S4_.exit.i.i336
                                        #   in Loop: Header=BB5_296 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_295:                              # %_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i337
                                        #   in Loop: Header=BB5_296 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_303
.LBB5_296:                              # %.lr.ph.i327
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_298 Depth 2
                                        #     Child Loop BB5_301 Depth 2
	beq	$s4, $s5, .LBB5_299
# %bb.297:                              # %.lr.ph.i.i330.preheader
                                        #   in Loop: Header=BB5_296 Depth=1
	move	$a0, $s8
	move	$a1, $s4
	.p2align	4, , 16
.LBB5_298:                              # %.lr.ph.i.i330
                                        #   Parent Loop BB5_296 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, -8
	addi.d	$a2, $a1, -8
	fst.d	$fa0, $a0, 0
	addi.d	$a0, $a0, -8
	move	$a1, $a2
	bne	$a2, $s5, .LBB5_298
.LBB5_299:                              # %_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i333
                                        #   in Loop: Header=BB5_296 Depth=1
	st.d	$s1, $sp, 232
	st.d	$s6, $sp, 216
.Ltmp37:
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 216
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_)
	jirl	$ra, $ra, 0
.Ltmp38:
# %bb.300:                              # %.noexc338.preheader
                                        #   in Loop: Header=BB5_296 Depth=1
	move	$a0, $s8
	.p2align	4, , 16
.LBB5_301:                              # %.noexc338
                                        #   Parent Loop BB5_296 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s6, .LBB5_295
# %bb.302:                              #   in Loop: Header=BB5_301 Depth=2
	fld.d	$fa0, $a0, -8
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_301
	b	.LBB5_294
.LBB5_303:                              # %.loopexit625
	blez	$a0, .LBB5_367
# %bb.304:                              # %.lr.ph.i339.preheader
	move	$s0, $zero
	ld.d	$s1, $sp, 200
	ld.d	$s4, $sp, 176
	ld.d	$s5, $sp, 168
	ld.d	$s6, $sp, 192
	addi.d	$fp, $s1, -8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 128                   # 8-byte Folded Reload
	b	.LBB5_307
	.p2align	4, , 16
.LBB5_305:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i351
                                        #   in Loop: Header=BB5_307 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
.LBB5_306:                              # %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i352
                                        #   in Loop: Header=BB5_307 Depth=1
	ld.w	$a0, $s8, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_314
.LBB5_307:                              # %.lr.ph.i339
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_309 Depth 2
                                        #     Child Loop BB5_312 Depth 2
	beq	$s4, $s5, .LBB5_310
# %bb.308:                              # %.lr.ph.i.i343.preheader
                                        #   in Loop: Header=BB5_307 Depth=1
	move	$a0, $fp
	move	$a1, $s4
	.p2align	4, , 16
.LBB5_309:                              # %.lr.ph.i.i343
                                        #   Parent Loop BB5_307 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, -8
	addi.d	$a2, $a1, -8
	fst.d	$fa0, $a0, 0
	addi.d	$a0, $a0, -8
	move	$a1, $a2
	bne	$a2, $s5, .LBB5_309
.LBB5_310:                              # %_ZN9benchmark4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEES9_EEvT_SA_T0_.exit.i347
                                        #   in Loop: Header=BB5_307 Depth=1
	st.d	$s1, $sp, 232
	st.d	$s6, $sp, 216
.Ltmp40:
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 216
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_)
	jirl	$ra, $ra, 0
.Ltmp41:
# %bb.311:                              # %.noexc353.preheader
                                        #   in Loop: Header=BB5_307 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_312:                              # %.noexc353
                                        #   Parent Loop BB5_307 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s6, .LBB5_306
# %bb.313:                              #   in Loop: Header=BB5_312 Depth=2
	fld.d	$fa0, $a0, -8
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_312
	b	.LBB5_305
.LBB5_314:
	blez	$a0, .LBB5_367
# %bb.315:                              # %.lr.ph.i354.preheader
	move	$s0, $zero
	addi.d	$s1, $s3, -8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$fp, $a0, %pc_lo12(.L.str.52)
	b	.LBB5_318
	.p2align	4, , 16
.LBB5_316:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_.exit.i.i366
                                        #   in Loop: Header=BB5_318 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
.LBB5_317:                              # %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i367
                                        #   in Loop: Header=BB5_318 Depth=1
	ld.w	$a0, $s8, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_325
.LBB5_318:                              # %.lr.ph.i354
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_320 Depth 2
                                        #     Child Loop BB5_323 Depth 2
	beq	$a1, $s7, .LBB5_321
# %bb.319:                              # %.lr.ph.i.i358.preheader
                                        #   in Loop: Header=BB5_318 Depth=1
	move	$a0, $s1
	.p2align	4, , 16
.LBB5_320:                              # %.lr.ph.i.i358
                                        #   Parent Loop BB5_318 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, -8
	addi.d	$a2, $a1, -8
	fst.d	$fa0, $a0, 0
	addi.d	$a0, $a0, -8
	move	$a1, $a2
	bne	$a2, $s7, .LBB5_320
.LBB5_321:                              # %_ZN9benchmark4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEES9_EEvT_SA_T0_.exit.i362
                                        #   in Loop: Header=BB5_318 Depth=1
	st.d	$s3, $sp, 232
	st.d	$s2, $sp, 216
.Ltmp43:
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 216
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_)
	jirl	$ra, $ra, 0
.Ltmp44:
# %bb.322:                              # %.noexc368.preheader
                                        #   in Loop: Header=BB5_318 Depth=1
	move	$a0, $s1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_323:                              # %.noexc368
                                        #   Parent Loop BB5_318 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s2, .LBB5_317
# %bb.324:                              #   in Loop: Header=BB5_323 Depth=2
	fld.d	$fa0, $a0, -8
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_323
	b	.LBB5_316
.LBB5_325:                              # %.loopexit619
	blez	$a0, .LBB5_367
# %bb.326:                              # %.lr.ph.i370
	move	$s0, $zero
	pcalau12i	$a0, %pc_hi20(rrdMpb+8)
	ld.d	$s1, $a0, %pc_lo12(rrdMpb+8)
	pcalau12i	$a0, %pc_hi20(rrdMpe+8)
	pcalau12i	$a1, %pc_hi20(rrdpb+8)
	ld.d	$s4, $a1, %pc_lo12(rrdpb+8)
	ld.d	$s5, $a0, %pc_lo12(rrdMpe+8)
	pcalau12i	$a0, %pc_hi20(rrdpe+8)
	ld.d	$s6, $a0, %pc_lo12(rrdpe+8)
	sub.d	$a0, $s4, $s1
	sub.d	$a1, $s5, $s1
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$a1, $a0, 2
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 5
	add.d	$a1, $s4, $a0
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	add.d	$a0, $s1, $a0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a0, $s1, 16
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a0, $s4, 16
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$fp, $s4, 8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	b	.LBB5_329
	.p2align	4, , 16
.LBB5_327:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IPdEEEEbT_S5_.exit.i.i379
                                        #   in Loop: Header=BB5_329 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
.LBB5_328:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i380
                                        #   in Loop: Header=BB5_329 Depth=1
	ld.w	$a0, $s8, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_339
.LBB5_329:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_332 Depth 2
                                        #     Child Loop BB5_334 Depth 2
                                        #     Child Loop BB5_337 Depth 2
	beq	$s1, $s5, .LBB5_335
# %bb.330:                              # %.lr.ph.i.i373.preheader
                                        #   in Loop: Header=BB5_329 Depth=1
	move	$a0, $s4
	move	$a1, $s1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	bnez	$a2, .LBB5_334
# %bb.331:                              # %vector.body917.preheader
                                        #   in Loop: Header=BB5_329 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_332:                              # %vector.body917
                                        #   Parent Loop BB5_329 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_332
# %bb.333:                              # %middle.block926
                                        #   in Loop: Header=BB5_329 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB5_335
	.p2align	4, , 16
.LBB5_334:                              # %.lr.ph.i.i373
                                        #   Parent Loop BB5_329 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $s5, .LBB5_334
.LBB5_335:                              # %_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i376
                                        #   in Loop: Header=BB5_329 Depth=1
	st.d	$s4, $sp, 240
	st.d	$s6, $sp, 224
.Ltmp46:
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 216
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_)
	jirl	$ra, $ra, 0
.Ltmp47:
# %bb.336:                              # %.noexc381.preheader
                                        #   in Loop: Header=BB5_329 Depth=1
	move	$a0, $fp
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_337:                              # %.noexc381
                                        #   Parent Loop BB5_329 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s6, .LBB5_328
# %bb.338:                              #   in Loop: Header=BB5_337 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_337
	b	.LBB5_327
.LBB5_339:
	blez	$a0, .LBB5_367
# %bb.340:                              # %.lr.ph.i382
	move	$s6, $zero
	sub.d	$a0, $s2, $s7
	sub.d	$a1, $a3, $s7
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s5, $a1, $a0
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s1, $a0, 2
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 5
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	add.d	$a0, $s7, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $s7, 16
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.d	$s0, $s2, 16
	addi.d	$s4, $s2, 8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$fp, $a0, %pc_lo12(.L.str.52)
	b	.LBB5_343
	.p2align	4, , 16
.LBB5_341:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i394
                                        #   in Loop: Header=BB5_343 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
.LBB5_342:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i395
                                        #   in Loop: Header=BB5_343 Depth=1
	ld.w	$a0, $s8, %pc_lo12(iterations)
	addi.w	$s6, $s6, 1
	bge	$s6, $a0, .LBB5_353
.LBB5_343:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_346 Depth 2
                                        #     Child Loop BB5_348 Depth 2
                                        #     Child Loop BB5_351 Depth 2
	beq	$s7, $a3, .LBB5_349
# %bb.344:                              # %.lr.ph.i.i386.preheader
                                        #   in Loop: Header=BB5_343 Depth=1
	move	$a0, $s2
	move	$a1, $s7
	bnez	$s5, .LBB5_348
# %bb.345:                              # %vector.body937.preheader
                                        #   in Loop: Header=BB5_343 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_346:                              # %vector.body937
                                        #   Parent Loop BB5_343 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_346
# %bb.347:                              # %middle.block946
                                        #   in Loop: Header=BB5_343 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	beq	$a2, $s1, .LBB5_349
	.p2align	4, , 16
.LBB5_348:                              # %.lr.ph.i.i386
                                        #   Parent Loop BB5_343 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $a3, .LBB5_348
.LBB5_349:                              # %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i390
                                        #   in Loop: Header=BB5_343 Depth=1
	st.d	$s2, $sp, 240
	st.d	$s3, $sp, 224
.Ltmp49:
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 216
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_)
	jirl	$ra, $ra, 0
.Ltmp50:
# %bb.350:                              # %.noexc396.preheader
                                        #   in Loop: Header=BB5_343 Depth=1
	move	$a0, $s4
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_351:                              # %.noexc396
                                        #   Parent Loop BB5_343 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s3, .LBB5_342
# %bb.352:                              #   in Loop: Header=BB5_351 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_351
	b	.LBB5_341
.LBB5_353:                              # %.loopexit613
	blez	$a0, .LBB5_367
# %bb.354:                              # %.lr.ph.i397
	move	$s1, $zero
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	slli.d	$s6, $a0, 2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	add.d	$a0, $s7, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $s7, 16
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.d	$s0, $s2, 16
	addi.d	$s4, $s2, 8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$fp, $a0, %pc_lo12(.L.str.52)
	b	.LBB5_357
	.p2align	4, , 16
.LBB5_355:                              # %_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_.exit.i.i409
                                        #   in Loop: Header=BB5_357 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
.LBB5_356:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i410
                                        #   in Loop: Header=BB5_357 Depth=1
	ld.w	$a0, $s8, %pc_lo12(iterations)
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_367
.LBB5_357:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_360 Depth 2
                                        #     Child Loop BB5_362 Depth 2
                                        #     Child Loop BB5_365 Depth 2
	beq	$s7, $a3, .LBB5_363
# %bb.358:                              # %.lr.ph.i.i401.preheader
                                        #   in Loop: Header=BB5_357 Depth=1
	move	$a0, $s2
	move	$a1, $s7
	bnez	$s5, .LBB5_362
# %bb.359:                              # %vector.body957.preheader
                                        #   in Loop: Header=BB5_357 Depth=1
	move	$a0, $s6
	move	$a1, $s0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_360:                              # %vector.body957
                                        #   Parent Loop BB5_357 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_360
# %bb.361:                              # %middle.block966
                                        #   in Loop: Header=BB5_357 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	beq	$a2, $s6, .LBB5_363
	.p2align	4, , 16
.LBB5_362:                              # %.lr.ph.i.i401
                                        #   Parent Loop BB5_357 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $a3, .LBB5_362
.LBB5_363:                              # %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i405
                                        #   in Loop: Header=BB5_357 Depth=1
	st.d	$s2, $sp, 240
	st.d	$s3, $sp, 224
.Ltmp52:
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 216
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_)
	jirl	$ra, $ra, 0
.Ltmp53:
# %bb.364:                              # %.noexc411.preheader
                                        #   in Loop: Header=BB5_357 Depth=1
	move	$a0, $s4
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_365:                              # %.noexc411
                                        #   Parent Loop BB5_357 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s3, .LBB5_356
# %bb.366:                              #   in Loop: Header=BB5_365 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_365
	b	.LBB5_355
.LBB5_367:                              # %.loopexit609
	ld.d	$a0, $sp, 168
	beqz	$a0, .LBB5_369
# %bb.368:
	ld.d	$a1, $sp, 184
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_369:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit
	ld.d	$a0, $sp, 192
	beqz	$a0, .LBB5_371
# %bb.370:
	ld.d	$a1, $sp, 208
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_371:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit415
	move	$a0, $zero
	fld.d	$fs1, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 256                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
	ret
.LBB5_372:
.Ltmp5:
	b	.LBB5_387
.LBB5_373:
.Ltmp2:
	move	$fp, $a0
	ld.d	$a0, $sp, 192
	beqz	$a0, .LBB5_389
	b	.LBB5_391
.LBB5_374:                              # %.loopexit
.Ltmp54:
	b	.LBB5_387
.LBB5_375:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp31:
	b	.LBB5_387
.LBB5_376:                              # %.loopexit.split-lp.loopexit
.Ltmp51:
	b	.LBB5_387
.LBB5_377:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp28:
	b	.LBB5_387
.LBB5_378:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp48:
	b	.LBB5_387
.LBB5_379:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp25:
	b	.LBB5_387
.LBB5_380:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
.Ltmp36:
	b	.LBB5_387
.LBB5_381:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp45:
	b	.LBB5_387
.LBB5_382:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp22:
	b	.LBB5_387
.LBB5_383:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp42:
	b	.LBB5_387
.LBB5_384:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp19:
	b	.LBB5_387
.LBB5_385:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp39:
	b	.LBB5_387
.LBB5_386:                              # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp16:
.LBB5_387:                              # %.loopexit.split-lp
	move	$fp, $a0
	ld.d	$a0, $sp, 168
	bnez	$a0, .LBB5_390
# %bb.388:
	ld.d	$a0, $sp, 192
	bnez	$a0, .LBB5_391
.LBB5_389:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit419
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_390:
	ld.d	$a1, $sp, 184
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192
	beqz	$a0, .LBB5_389
.LBB5_391:
	ld.d	$a1, $sp, 208
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
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
	.uleb128 .Ltmp9-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp9
	.uleb128 .Ltmp36-.Lfunc_begin0          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 7 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp13-.Ltmp10                #   Call between .Ltmp10 and .Ltmp13
	.uleb128 .Ltmp36-.Lfunc_begin0          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp15-.Ltmp14                #   Call between .Ltmp14 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin0          #     jumps to .Ltmp16
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp17-.Ltmp15                #   Call between .Ltmp15 and .Ltmp17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp20-.Ltmp18                #   Call between .Ltmp18 and .Ltmp20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin0          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp23-.Ltmp21                #   Call between .Ltmp21 and .Ltmp23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp24-.Ltmp23                #   Call between .Ltmp23 and .Ltmp24
	.uleb128 .Ltmp25-.Lfunc_begin0          #     jumps to .Ltmp25
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp26-.Ltmp24                #   Call between .Ltmp24 and .Ltmp26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin0          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp29-.Ltmp27                #   Call between .Ltmp27 and .Ltmp29
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp30-.Ltmp29                #   Call between .Ltmp29 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin0          #     jumps to .Ltmp31
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp35-.Ltmp32                #   Call between .Ltmp32 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin0          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp37-.Ltmp35                #   Call between .Ltmp35 and .Ltmp37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin0          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp40-.Ltmp38                #   Call between .Ltmp38 and .Ltmp40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin0          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Ltmp43-.Ltmp41                #   Call between .Ltmp41 and .Ltmp43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin0          # >> Call Site 27 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin0          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin0          # >> Call Site 28 <<
	.uleb128 .Ltmp46-.Ltmp44                #   Call between .Ltmp44 and .Ltmp46
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin0          # >> Call Site 29 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin0          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin0          # >> Call Site 30 <<
	.uleb128 .Ltmp49-.Ltmp47                #   Call between .Ltmp47 and .Ltmp49
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin0          # >> Call Site 31 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin0          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin0          # >> Call Site 32 <<
	.uleb128 .Ltmp52-.Ltmp50                #   Call between .Ltmp50 and .Ltmp52
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin0          # >> Call Site 33 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin0          #     jumps to .Ltmp54
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin0          # >> Call Site 34 <<
	.uleb128 .Lfunc_end5-.Ltmp53            #   Call between .Ltmp53 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc,"axG",@progbits,_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc,comdat
	.weak	_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc # -- Begin function _Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc
	.p2align	5
	.type	_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc,@function
_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc: # @_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
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
	pcalau12i	$a4, %pc_hi20(iterations)
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a4, $a4, %pc_lo12(iterations)
	blez	$a4, .LBB6_50
# %bb.1:                                # %.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	addi.d	$s5, $a2, 8
	beq	$s5, $a3, .LBB6_20
# %bb.2:                                # %.lr.ph.split
	beq	$s2, $s1, .LBB6_32
# %bb.3:                                # %.lr.ph.i.preheader.preheader
	move	$s3, $zero
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s7, $a1, $a0
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s8, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s0, $a0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s4, $s0, 16
	addi.w	$s6, $zero, -8
	b	.LBB6_6
	.p2align	4, , 16
.LBB6_4:                                # %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i
                                        #   in Loop: Header=BB6_6 Depth=1
	pcalau12i	$a0, %pc_hi20(current_test)
	ld.w	$a1, $a0, %pc_lo12(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
.LBB6_5:                                # %_Z13verify_sortedIPdEvT_S1_.exit
                                        #   in Loop: Header=BB6_6 Depth=1
	addi.w	$s3, $s3, 1
	bge	$s3, $a4, .LBB6_50
.LBB6_6:                                # %.lr.ph.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_8 Depth 2
                                        #     Child Loop BB6_10 Depth 2
                                        #     Child Loop BB6_13 Depth 2
                                        #       Child Loop BB6_14 Depth 3
                                        #     Child Loop BB6_18 Depth 2
	move	$a0, $s0
	move	$a1, $s2
	bnez	$s7, .LBB6_10
# %bb.7:                                # %vector.body.preheader
                                        #   in Loop: Header=BB6_6 Depth=1
	move	$a0, $s8
	move	$a1, $s4
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_8:                                # %vector.body
                                        #   Parent Loop BB6_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB6_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB6_6 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	beq	$a2, $s8, .LBB6_11
	.p2align	4, , 16
.LBB6_10:                               # %.lr.ph.i
                                        #   Parent Loop BB6_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $s1, .LBB6_10
.LBB6_11:                               # %.lr.ph.i8.preheader
                                        #   in Loop: Header=BB6_6 Depth=1
	move	$a0, $zero
	move	$a1, $s5
	b	.LBB6_13
	.p2align	4, , 16
.LBB6_12:                               # %..critedge.i_crit_edge
                                        #   in Loop: Header=BB6_13 Depth=2
	addi.d	$a2, $a3, 8
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	beq	$a1, $fp, .LBB6_17
.LBB6_13:                               # %.lr.ph.i8
                                        #   Parent Loop BB6_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_14 Depth 3
	fld.d	$fa0, $a1, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB6_14:                               #   Parent Loop BB6_6 Depth=1
                                        #     Parent Loop BB6_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s0, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a3, $s0, $a2
	bcnez	$fcc0, .LBB6_12
# %bb.15:                               #   in Loop: Header=BB6_14 Depth=3
	addi.d	$a2, $a2, -8
	fst.d	$fa1, $a3, 8
	bne	$a2, $s6, .LBB6_14
# %bb.16:                               #   in Loop: Header=BB6_13 Depth=2
	move	$a2, $s0
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$a1, $fp, .LBB6_13
.LBB6_17:                               # %_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit.preheader
                                        #   in Loop: Header=BB6_6 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB6_18:                               # %_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit
                                        #   Parent Loop BB6_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB6_5
# %bb.19:                               #   in Loop: Header=BB6_18 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB6_18
	b	.LBB6_4
.LBB6_20:                               # %.lr.ph.split.us
	beq	$s2, $s1, .LBB6_44
# %bb.21:                               # %.lr.ph.i.preheader.us.preheader
	move	$s4, $zero
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s7, $a1, $a0
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s8, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s0, $a0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s6, $s0, 16
	pcalau12i	$a0, %pc_hi20(current_test)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s3, $a0, %pc_lo12(.L.str.52)
	b	.LBB6_24
	.p2align	4, , 16
.LBB6_22:                               # %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us
                                        #   in Loop: Header=BB6_24 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
.LBB6_23:                               # %_Z13verify_sortedIPdEvT_S1_.exit.us
                                        #   in Loop: Header=BB6_24 Depth=1
	addi.w	$s4, $s4, 1
	bge	$s4, $a4, .LBB6_50
.LBB6_24:                               # %.lr.ph.i.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_26 Depth 2
                                        #     Child Loop BB6_28 Depth 2
                                        #     Child Loop BB6_30 Depth 2
	move	$a0, $s0
	move	$a1, $s2
	bnez	$s7, .LBB6_28
# %bb.25:                               # %vector.body42.preheader
                                        #   in Loop: Header=BB6_24 Depth=1
	move	$a0, $s8
	move	$a1, $s6
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_26:                               # %vector.body42
                                        #   Parent Loop BB6_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB6_26
# %bb.27:                               # %middle.block51
                                        #   in Loop: Header=BB6_24 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	beq	$a2, $s8, .LBB6_29
	.p2align	4, , 16
.LBB6_28:                               # %.lr.ph.i.us
                                        #   Parent Loop BB6_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $s1, .LBB6_28
.LBB6_29:                               # %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit.us.preheader
                                        #   in Loop: Header=BB6_24 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB6_30:                               # %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit.us
                                        #   Parent Loop BB6_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB6_23
# %bb.31:                               #   in Loop: Header=BB6_30 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB6_30
	b	.LBB6_22
.LBB6_32:                               # %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us12.preheader
	move	$s2, $zero
	addi.w	$s3, $zero, -8
	pcalau12i	$s4, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s1, $a0, %pc_lo12(.L.str.52)
	b	.LBB6_35
	.p2align	4, , 16
.LBB6_33:                               # %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us16
                                        #   in Loop: Header=BB6_35 Depth=1
	ld.w	$a1, $s4, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
.LBB6_34:                               # %_Z13verify_sortedIPdEvT_S1_.exit.us17
                                        #   in Loop: Header=BB6_35 Depth=1
	addi.w	$s2, $s2, 1
	bge	$s2, $a4, .LBB6_50
.LBB6_35:                               # %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us12
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_37 Depth 2
                                        #       Child Loop BB6_38 Depth 3
                                        #     Child Loop BB6_42 Depth 2
	move	$a0, $zero
	move	$a1, $s5
	b	.LBB6_37
	.p2align	4, , 16
.LBB6_36:                               # %..critedge.i.us_crit_edge
                                        #   in Loop: Header=BB6_37 Depth=2
	addi.d	$a2, $a3, 8
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	beq	$a1, $fp, .LBB6_41
.LBB6_37:                               # %.lr.ph.i8.us
                                        #   Parent Loop BB6_35 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_38 Depth 3
	fld.d	$fa0, $a1, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB6_38:                               #   Parent Loop BB6_35 Depth=1
                                        #     Parent Loop BB6_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s0, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a3, $s0, $a2
	bcnez	$fcc0, .LBB6_36
# %bb.39:                               #   in Loop: Header=BB6_38 Depth=3
	addi.d	$a2, $a2, -8
	fst.d	$fa1, $a3, 8
	bne	$a2, $s3, .LBB6_38
# %bb.40:                               #   in Loop: Header=BB6_37 Depth=2
	move	$a2, $s0
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$a1, $fp, .LBB6_37
.LBB6_41:                               # %_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit.us.preheader
                                        #   in Loop: Header=BB6_35 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB6_42:                               # %_ZN9benchmark13insertionSortIPddEEvT_S2_.exit.loopexit.us
                                        #   Parent Loop BB6_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB6_34
# %bb.43:                               #   in Loop: Header=BB6_42 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB6_42
	b	.LBB6_33
.LBB6_44:                               # %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us.us.preheader
	move	$s1, $zero
	pcalau12i	$s2, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s0, $a0, %pc_lo12(.L.str.52)
	b	.LBB6_47
	.p2align	4, , 16
.LBB6_45:                               # %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us.us
                                        #   in Loop: Header=BB6_47 Depth=1
	ld.w	$a1, $s2, %pc_lo12(current_test)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
.LBB6_46:                               # %_Z13verify_sortedIPdEvT_S1_.exit.us.us
                                        #   in Loop: Header=BB6_47 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $a4, .LBB6_50
.LBB6_47:                               # %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_48 Depth 2
	move	$a0, $s5
	.p2align	4, , 16
.LBB6_48:                               #   Parent Loop BB6_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB6_46
# %bb.49:                               #   in Loop: Header=BB6_48 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB6_48
	b	.LBB6_45
.LBB6_50:                               # %._crit_edge
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end6:
	.size	_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc, .Lfunc_end6-_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc
	.cfi_endproc
                                        # -- End function
	.section	.text._Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc,"axG",@progbits,_Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc,comdat
	.weak	_Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc # -- Begin function _Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc
	.p2align	5
	.type	_Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc,@function
_Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc: # @_Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
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
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a4, $s4, %pc_lo12(iterations)
	blez	$a4, .LBB7_52
# %bb.1:                                # %.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	addi.d	$s5, $a2, 8
	beq	$s5, $a3, .LBB7_15
# %bb.2:                                # %.lr.ph.split
	bne	$s2, $s1, .LBB7_22
# %bb.3:                                # %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.us16.preheader
	move	$s2, $zero
	addi.w	$s3, $zero, -8
	pcalau12i	$s6, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s1, $a0, %pc_lo12(.L.str.52)
	b	.LBB7_6
	.p2align	4, , 16
.LBB7_4:                                # %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i.us19
                                        #   in Loop: Header=BB7_6 Depth=1
	ld.w	$a1, $s6, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s4, %pc_lo12(iterations)
.LBB7_5:                                # %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us20
                                        #   in Loop: Header=BB7_6 Depth=1
	addi.w	$s2, $s2, 1
	bge	$s2, $a4, .LBB7_52
.LBB7_6:                                # %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.us16
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_8 Depth 2
                                        #       Child Loop BB7_9 Depth 3
                                        #     Child Loop BB7_13 Depth 2
	move	$a0, $zero
	move	$a1, $s5
	b	.LBB7_8
	.p2align	4, , 16
.LBB7_7:                                # %..critedge.i.us_crit_edge
                                        #   in Loop: Header=BB7_8 Depth=2
	addi.d	$a2, $a3, 8
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	beq	$a1, $fp, .LBB7_12
.LBB7_8:                                # %.lr.ph.i12.us
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_9 Depth 3
	fld.d	$fa0, $a1, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB7_9:                                #   Parent Loop BB7_6 Depth=1
                                        #     Parent Loop BB7_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s0, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a3, $s0, $a2
	bcnez	$fcc0, .LBB7_7
# %bb.10:                               #   in Loop: Header=BB7_9 Depth=3
	addi.d	$a2, $a2, -8
	fst.d	$fa1, $a3, 8
	bne	$a2, $s3, .LBB7_9
# %bb.11:                               #   in Loop: Header=BB7_8 Depth=2
	move	$a2, $s0
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$a1, $fp, .LBB7_8
.LBB7_12:                               # %_ZN9benchmark13insertionSortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_.exit.loopexit.us.preheader
                                        #   in Loop: Header=BB7_6 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB7_13:                               # %_ZN9benchmark13insertionSortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_.exit.loopexit.us
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB7_5
# %bb.14:                               #   in Loop: Header=BB7_13 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB7_13
	b	.LBB7_4
.LBB7_15:                               # %.lr.ph.split.us
	bne	$s2, $s1, .LBB7_40
# %bb.16:                               # %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.us.us.preheader
	move	$s1, $zero
	pcalau12i	$s2, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s0, $a0, %pc_lo12(.L.str.52)
	b	.LBB7_19
	.p2align	4, , 16
.LBB7_17:                               # %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i.us.us
                                        #   in Loop: Header=BB7_19 Depth=1
	ld.w	$a1, $s2, %pc_lo12(current_test)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s4, %pc_lo12(iterations)
.LBB7_18:                               # %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us.us
                                        #   in Loop: Header=BB7_19 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $a4, .LBB7_52
.LBB7_19:                               # %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_20 Depth 2
	move	$a0, $s5
	.p2align	4, , 16
.LBB7_20:                               #   Parent Loop BB7_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB7_18
# %bb.21:                               #   in Loop: Header=BB7_20 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB7_20
	b	.LBB7_17
.LBB7_22:                               # %.lr.ph.preheader.i.preheader
	move	$s3, $zero
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s7, $a1, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s8, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s0, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.w	$s6, $zero, -8
	b	.LBB7_25
	.p2align	4, , 16
.LBB7_23:                               # %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i
                                        #   in Loop: Header=BB7_25 Depth=1
	pcalau12i	$a0, %pc_hi20(current_test)
	ld.w	$a1, $a0, %pc_lo12(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s4, %pc_lo12(iterations)
.LBB7_24:                               # %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit
                                        #   in Loop: Header=BB7_25 Depth=1
	addi.w	$s3, $s3, 1
	bge	$s3, $a4, .LBB7_52
.LBB7_25:                               # %.lr.ph.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_28 Depth 2
                                        #     Child Loop BB7_30 Depth 2
                                        #     Child Loop BB7_33 Depth 2
                                        #       Child Loop BB7_34 Depth 3
                                        #     Child Loop BB7_38 Depth 2
	beqz	$s7, .LBB7_27
# %bb.26:                               #   in Loop: Header=BB7_25 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	b	.LBB7_30
	.p2align	4, , 16
.LBB7_27:                               # %vector.body.preheader
                                        #   in Loop: Header=BB7_25 Depth=1
	move	$a0, $s8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_28:                               # %vector.body
                                        #   Parent Loop BB7_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a1, -16
	vld	$vr1, $a1, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB7_28
# %bb.29:                               # %middle.block
                                        #   in Loop: Header=BB7_25 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s8, .LBB7_31
	.p2align	4, , 16
.LBB7_30:                               # %.lr.ph.i
                                        #   Parent Loop BB7_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, 0
	addi.d	$a2, $a0, 8
	addi.d	$a3, $a1, 8
	fst.d	$fa0, $a1, 0
	move	$a0, $a2
	move	$a1, $a3
	bne	$a2, $s1, .LBB7_30
.LBB7_31:                               # %.lr.ph.i12.preheader
                                        #   in Loop: Header=BB7_25 Depth=1
	move	$a0, $zero
	move	$a1, $s5
	b	.LBB7_33
	.p2align	4, , 16
.LBB7_32:                               # %..critedge.i_crit_edge
                                        #   in Loop: Header=BB7_33 Depth=2
	addi.d	$a2, $a3, 8
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	beq	$a1, $fp, .LBB7_37
.LBB7_33:                               # %.lr.ph.i12
                                        #   Parent Loop BB7_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_34 Depth 3
	fld.d	$fa0, $a1, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB7_34:                               #   Parent Loop BB7_25 Depth=1
                                        #     Parent Loop BB7_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s0, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a3, $s0, $a2
	bcnez	$fcc0, .LBB7_32
# %bb.35:                               #   in Loop: Header=BB7_34 Depth=3
	addi.d	$a2, $a2, -8
	fst.d	$fa1, $a3, 8
	bne	$a2, $s6, .LBB7_34
# %bb.36:                               #   in Loop: Header=BB7_33 Depth=2
	move	$a2, $s0
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$a1, $fp, .LBB7_33
.LBB7_37:                               # %_ZN9benchmark13insertionSortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_.exit.loopexit.preheader
                                        #   in Loop: Header=BB7_25 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB7_38:                               # %_ZN9benchmark13insertionSortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_.exit.loopexit
                                        #   Parent Loop BB7_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB7_24
# %bb.39:                               #   in Loop: Header=BB7_38 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB7_38
	b	.LBB7_23
.LBB7_40:                               # %.lr.ph.preheader.i.us.preheader
	move	$s6, $zero
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s8, $a1, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s7, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s0, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(current_test)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s3, $a0, %pc_lo12(.L.str.52)
	b	.LBB7_43
	.p2align	4, , 16
.LBB7_41:                               # %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i.us
                                        #   in Loop: Header=BB7_43 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s4, %pc_lo12(iterations)
.LBB7_42:                               # %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us
                                        #   in Loop: Header=BB7_43 Depth=1
	addi.w	$s6, $s6, 1
	bge	$s6, $a4, .LBB7_52
.LBB7_43:                               # %.lr.ph.preheader.i.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_46 Depth 2
                                        #     Child Loop BB7_48 Depth 2
                                        #     Child Loop BB7_50 Depth 2
	beqz	$s8, .LBB7_45
# %bb.44:                               #   in Loop: Header=BB7_43 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	b	.LBB7_48
	.p2align	4, , 16
.LBB7_45:                               # %vector.body45.preheader
                                        #   in Loop: Header=BB7_43 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_46:                               # %vector.body45
                                        #   Parent Loop BB7_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a1, -16
	vld	$vr1, $a1, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB7_46
# %bb.47:                               # %middle.block54
                                        #   in Loop: Header=BB7_43 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s7, .LBB7_49
	.p2align	4, , 16
.LBB7_48:                               # %.lr.ph.i.us
                                        #   Parent Loop BB7_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, 0
	addi.d	$a2, $a0, 8
	addi.d	$a3, $a1, 8
	fst.d	$fa0, $a1, 0
	move	$a0, $a2
	move	$a1, $a3
	bne	$a2, $s1, .LBB7_48
.LBB7_49:                               # %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.loopexit.us.preheader
                                        #   in Loop: Header=BB7_43 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB7_50:                               # %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.loopexit.us
                                        #   Parent Loop BB7_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB7_42
# %bb.51:                               #   in Loop: Header=BB7_50 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB7_50
	b	.LBB7_41
.LBB7_52:                               # %._crit_edge
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end7:
	.size	_Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc, .Lfunc_end7-_Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc
	.cfi_endproc
                                        # -- End function
	.section	.text._Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc,"axG",@progbits,_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc,comdat
	.weak	_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc # -- Begin function _Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc
	.p2align	5
	.type	_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc,@function
_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc: # @_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
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
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a4, $s4, %pc_lo12(iterations)
	blez	$a4, .LBB8_19
# %bb.1:                                # %.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	beq	$a0, $a1, .LBB8_13
# %bb.2:                                # %.lr.ph.i.preheader.preheader
	move	$s5, $zero
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s7, $a1, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s8, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s0, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s6, $s0, 8
	pcalau12i	$a0, %pc_hi20(current_test)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s3, $a0, %pc_lo12(.L.str.52)
	b	.LBB8_5
	.p2align	4, , 16
.LBB8_3:                                # %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB8_4:                                # %_Z13verify_sortedIPdEvT_S1_.exit
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB8_19
.LBB8_5:                                # %.lr.ph.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_7 Depth 2
                                        #     Child Loop BB8_9 Depth 2
                                        #     Child Loop BB8_11 Depth 2
	move	$a0, $s0
	move	$a1, $s2
	bnez	$s7, .LBB8_9
# %bb.6:                                # %vector.body.preheader
                                        #   in Loop: Header=BB8_5 Depth=1
	move	$a0, $s8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB8_7:                                # %vector.body
                                        #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB8_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s8, .LBB8_10
	.p2align	4, , 16
.LBB8_9:                                # %.lr.ph.i
                                        #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $s1, .LBB8_9
.LBB8_10:                               # %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit
                                        #   in Loop: Header=BB8_5 Depth=1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortIPddEEvT_S2_)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	.p2align	4, , 16
.LBB8_11:                               #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB8_4
# %bb.12:                               #   in Loop: Header=BB8_11 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB8_11
	b	.LBB8_3
.LBB8_13:                               # %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us.preheader
	move	$s2, $zero
	addi.d	$s3, $s0, 8
	pcalau12i	$s5, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s1, $a0, %pc_lo12(.L.str.52)
	b	.LBB8_16
	.p2align	4, , 16
.LBB8_14:                               # %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us
                                        #   in Loop: Header=BB8_16 Depth=1
	ld.w	$a1, $s5, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB8_15:                               # %_Z13verify_sortedIPdEvT_S1_.exit.us
                                        #   in Loop: Header=BB8_16 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s2, $s2, 1
	bge	$s2, $a0, .LBB8_19
.LBB8_16:                               # %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_17 Depth 2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortIPddEEvT_S2_)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	.p2align	4, , 16
.LBB8_17:                               #   Parent Loop BB8_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB8_15
# %bb.18:                               #   in Loop: Header=BB8_17 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB8_17
	b	.LBB8_14
.LBB8_19:                               # %._crit_edge
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end8:
	.size	_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc, .Lfunc_end8-_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc
	.cfi_endproc
                                        # -- End function
	.section	.text._Z14test_quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc,"axG",@progbits,_Z14test_quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc,comdat
	.weak	_Z14test_quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc # -- Begin function _Z14test_quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc
	.p2align	5
	.type	_Z14test_quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc,@function
_Z14test_quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc: # @_Z14test_quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
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
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a4, $s4, %pc_lo12(iterations)
	blez	$a4, .LBB9_20
# %bb.1:                                # %.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	bne	$a0, $a1, .LBB9_8
# %bb.2:                                # %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.us.preheader
	move	$s2, $zero
	addi.d	$s3, $s0, 8
	pcalau12i	$s5, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s1, $a0, %pc_lo12(.L.str.52)
	b	.LBB9_5
	.p2align	4, , 16
.LBB9_3:                                # %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i.us
                                        #   in Loop: Header=BB9_5 Depth=1
	ld.w	$a1, $s5, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB9_4:                                # %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us
                                        #   in Loop: Header=BB9_5 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s2, $s2, 1
	bge	$s2, $a0, .LBB9_20
.LBB9_5:                                # %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_6 Depth 2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	.p2align	4, , 16
.LBB9_6:                                #   Parent Loop BB9_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB9_4
# %bb.7:                                #   in Loop: Header=BB9_6 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB9_6
	b	.LBB9_3
.LBB9_8:                                # %.lr.ph.preheader.i.preheader
	move	$s5, $zero
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s7, $a1, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s8, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s0, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s6, $s0, 8
	pcalau12i	$a0, %pc_hi20(current_test)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s3, $a0, %pc_lo12(.L.str.52)
	b	.LBB9_11
	.p2align	4, , 16
.LBB9_9:                                # %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB9_10:                               # %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB9_20
.LBB9_11:                               # %.lr.ph.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_14 Depth 2
                                        #     Child Loop BB9_16 Depth 2
                                        #     Child Loop BB9_18 Depth 2
	beqz	$s7, .LBB9_13
# %bb.12:                               #   in Loop: Header=BB9_11 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	b	.LBB9_16
	.p2align	4, , 16
.LBB9_13:                               # %vector.body.preheader
                                        #   in Loop: Header=BB9_11 Depth=1
	move	$a0, $s8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB9_14:                               # %vector.body
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a1, -16
	vld	$vr1, $a1, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB9_14
# %bb.15:                               # %middle.block
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s8, .LBB9_17
	.p2align	4, , 16
.LBB9_16:                               # %.lr.ph.i
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, 0
	addi.d	$a2, $a0, 8
	addi.d	$a3, $a1, 8
	fst.d	$fa0, $a1, 0
	move	$a0, $a2
	move	$a1, $a3
	bne	$a2, $s1, .LBB9_16
.LBB9_17:                               # %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.loopexit
                                        #   in Loop: Header=BB9_11 Depth=1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	.p2align	4, , 16
.LBB9_18:                               #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB9_10
# %bb.19:                               #   in Loop: Header=BB9_18 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB9_18
	b	.LBB9_9
.LBB9_20:                               # %._crit_edge
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end9:
	.size	_Z14test_quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc, .Lfunc_end9-_Z14test_quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc
	.cfi_endproc
                                        # -- End function
	.section	.text._Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc,"axG",@progbits,_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc,comdat
	.weak	_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc # -- Begin function _Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc
	.p2align	5
	.type	_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc,@function
_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc: # @_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
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
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a4, $s4, %pc_lo12(iterations)
	blez	$a4, .LBB10_19
# %bb.1:                                # %.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	beq	$a0, $a1, .LBB10_13
# %bb.2:                                # %.lr.ph.i.preheader.preheader
	move	$s5, $zero
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s7, $a1, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s8, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s0, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s6, $s0, 8
	pcalau12i	$a0, %pc_hi20(current_test)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s3, $a0, %pc_lo12(.L.str.52)
	b	.LBB10_5
	.p2align	4, , 16
.LBB10_3:                               # %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB10_4:                               # %_Z13verify_sortedIPdEvT_S1_.exit
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB10_19
.LBB10_5:                               # %.lr.ph.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_7 Depth 2
                                        #     Child Loop BB10_9 Depth 2
                                        #     Child Loop BB10_11 Depth 2
	move	$a0, $s0
	move	$a1, $s2
	bnez	$s7, .LBB10_9
# %bb.6:                                # %vector.body.preheader
                                        #   in Loop: Header=BB10_5 Depth=1
	move	$a0, $s8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_7:                               # %vector.body
                                        #   Parent Loop BB10_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB10_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s8, .LBB10_10
	.p2align	4, , 16
.LBB10_9:                               # %.lr.ph.i
                                        #   Parent Loop BB10_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $s1, .LBB10_9
.LBB10_10:                              # %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit
                                        #   in Loop: Header=BB10_5 Depth=1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortIPddEEvT_S2_)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	.p2align	4, , 16
.LBB10_11:                              #   Parent Loop BB10_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB10_4
# %bb.12:                               #   in Loop: Header=BB10_11 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB10_11
	b	.LBB10_3
.LBB10_13:                              # %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us.preheader
	move	$s2, $zero
	addi.d	$s3, $s0, 8
	pcalau12i	$s5, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s1, $a0, %pc_lo12(.L.str.52)
	b	.LBB10_16
	.p2align	4, , 16
.LBB10_14:                              # %_ZN9benchmark9is_sortedIPdEEbT_S2_.exit.i.us
                                        #   in Loop: Header=BB10_16 Depth=1
	ld.w	$a1, $s5, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB10_15:                              # %_Z13verify_sortedIPdEvT_S1_.exit.us
                                        #   in Loop: Header=BB10_16 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s2, $s2, 1
	bge	$s2, $a0, .LBB10_19
.LBB10_16:                              # %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_17 Depth 2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortIPddEEvT_S2_)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	.p2align	4, , 16
.LBB10_17:                              #   Parent Loop BB10_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB10_15
# %bb.18:                               #   in Loop: Header=BB10_17 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB10_17
	b	.LBB10_14
.LBB10_19:                              # %._crit_edge
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end10:
	.size	_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc, .Lfunc_end10-_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc
	.cfi_endproc
                                        # -- End function
	.section	.text._Z14test_heap_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc,"axG",@progbits,_Z14test_heap_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc,comdat
	.weak	_Z14test_heap_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc # -- Begin function _Z14test_heap_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc
	.p2align	5
	.type	_Z14test_heap_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc,@function
_Z14test_heap_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc: # @_Z14test_heap_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
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
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a4, $s4, %pc_lo12(iterations)
	blez	$a4, .LBB11_20
# %bb.1:                                # %.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	bne	$a0, $a1, .LBB11_8
# %bb.2:                                # %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.us.preheader
	move	$s2, $zero
	addi.d	$s3, $s0, 8
	pcalau12i	$s5, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s1, $a0, %pc_lo12(.L.str.52)
	b	.LBB11_5
	.p2align	4, , 16
.LBB11_3:                               # %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i.us
                                        #   in Loop: Header=BB11_5 Depth=1
	ld.w	$a1, $s5, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB11_4:                               # %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us
                                        #   in Loop: Header=BB11_5 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s2, $s2, 1
	bge	$s2, $a0, .LBB11_20
.LBB11_5:                               # %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_6 Depth 2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	.p2align	4, , 16
.LBB11_6:                               #   Parent Loop BB11_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB11_4
# %bb.7:                                #   in Loop: Header=BB11_6 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB11_6
	b	.LBB11_3
.LBB11_8:                               # %.lr.ph.preheader.i.preheader
	move	$s5, $zero
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$s7, $a1, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s8, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s0, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s6, $s0, 8
	pcalau12i	$a0, %pc_hi20(current_test)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s3, $a0, %pc_lo12(.L.str.52)
	b	.LBB11_11
	.p2align	4, , 16
.LBB11_9:                               # %_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_.exit.i
                                        #   in Loop: Header=BB11_11 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB11_10:                              # %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit
                                        #   in Loop: Header=BB11_11 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB11_20
.LBB11_11:                              # %.lr.ph.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_14 Depth 2
                                        #     Child Loop BB11_16 Depth 2
                                        #     Child Loop BB11_18 Depth 2
	beqz	$s7, .LBB11_13
# %bb.12:                               #   in Loop: Header=BB11_11 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	b	.LBB11_16
	.p2align	4, , 16
.LBB11_13:                              # %vector.body.preheader
                                        #   in Loop: Header=BB11_11 Depth=1
	move	$a0, $s8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB11_14:                              # %vector.body
                                        #   Parent Loop BB11_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a1, -16
	vld	$vr1, $a1, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB11_14
# %bb.15:                               # %middle.block
                                        #   in Loop: Header=BB11_11 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s8, .LBB11_17
	.p2align	4, , 16
.LBB11_16:                              # %.lr.ph.i
                                        #   Parent Loop BB11_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, 0
	addi.d	$a2, $a0, 8
	addi.d	$a3, $a1, 8
	fst.d	$fa0, $a1, 0
	move	$a0, $a2
	move	$a1, $a3
	bne	$a2, $s1, .LBB11_16
.LBB11_17:                              # %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.loopexit
                                        #   in Loop: Header=BB11_11 Depth=1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	.p2align	4, , 16
.LBB11_18:                              #   Parent Loop BB11_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB11_10
# %bb.19:                               #   in Loop: Header=BB11_18 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB11_18
	b	.LBB11_9
.LBB11_20:                              # %._crit_edge
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end11:
	.size	_Z14test_heap_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc, .Lfunc_end11-_Z14test_heap_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIdSaIdEE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorIdSaIdEE17_M_default_appendEm,comdat
	.weak	_ZNSt6vectorIdSaIdEE17_M_default_appendEm # -- Begin function _ZNSt6vectorIdSaIdEE17_M_default_appendEm
	.p2align	5
	.type	_ZNSt6vectorIdSaIdEE17_M_default_appendEm,@function
_ZNSt6vectorIdSaIdEE17_M_default_appendEm: # @_ZNSt6vectorIdSaIdEE17_M_default_appendEm
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	beqz	$a1, .LBB12_15
# %bb.1:
	move	$s0, $a1
	move	$fp, $a0
	ld.d	$a1, $a0, 8
	ld.d	$s4, $a0, 16
	sub.d	$a0, $s4, $a1
	srai.d	$a0, $a0, 3
	bgeu	$a0, $s0, .LBB12_10
# %bb.2:
	ld.d	$s1, $fp, 0
	sub.d	$s2, $a1, $s1
	srai.d	$a1, $s2, 3
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 255
	xor	$a2, $a1, $a0
	bltu	$a2, $s0, .LBB12_16
# %bb.3:
	sltu	$a2, $s0, $a1
	masknez	$a3, $s0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	add.d	$s6, $a0, $s2
	ori	$a0, $zero, 1
	stx.d	$zero, $s3, $s2
	beq	$s0, $a0, .LBB12_5
# %bb.4:                                # %.lr.ph.i.preheader.i.i.i31
	addi.d	$a0, $s6, 8
	slli.d	$a1, $s0, 3
	addi.d	$a2, $a1, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB12_5:                               # %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33
	blez	$s2, .LBB12_7
# %bb.6:
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB12_7:                               # %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
	beqz	$s1, .LBB12_9
# %bb.8:                                # %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i
	sub.d	$a1, $s4, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB12_9:                               # %_ZNSt6vectorIdSaIdEE12_Guard_allocD2Ev.exit
	st.d	$s3, $fp, 0
	alsl.d	$a0, $s0, $s6, 3
	st.d	$a0, $fp, 8
	alsl.d	$a0, $s5, $s3, 3
	st.d	$a0, $fp, 16
	b	.LBB12_15
.LBB12_10:
	st.d	$zero, $a1, 0
	ori	$a2, $zero, 1
	addi.d	$a0, $a1, 8
	bne	$s0, $a2, .LBB12_12
# %bb.11:
	st.d	$a0, $fp, 8
	b	.LBB12_15
.LBB12_12:
	slli.d	$a2, $s0, 3
	ori	$a3, $zero, 8
	alsl.d	$s0, $s0, $a1, 3
	beq	$a2, $a3, .LBB12_14
# %bb.13:                               # %.lr.ph.i.preheader.i.i.i
	addi.d	$a2, $a2, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB12_14:                              # %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit
	st.d	$s0, $fp, 8
.LBB12_15:
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
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
.LBB12_16:
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZNSt6vectorIdSaIdEE17_M_default_appendEm, .Lfunc_end12-_ZNSt6vectorIdSaIdEE17_M_default_appendEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark9quicksortIPddEEvT_S2_,"axG",@progbits,_ZN9benchmark9quicksortIPddEEvT_S2_,comdat
	.weak	_ZN9benchmark9quicksortIPddEEvT_S2_ # -- Begin function _ZN9benchmark9quicksortIPddEEvT_S2_
	.p2align	5
	.type	_ZN9benchmark9quicksortIPddEEvT_S2_,@function
_ZN9benchmark9quicksortIPddEEvT_S2_:    # @_ZN9benchmark9quicksortIPddEEvT_S2_
	.cfi_startproc
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
	move	$fp, $a1
	sub.d	$a1, $a1, $a0
	ori	$a2, $zero, 9
	blt	$a1, $a2, .LBB13_11
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$s1, $fp, -8
	ori	$s2, $zero, 8
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_2:                               # %tailrecurse
                                        #   in Loop: Header=BB13_3 Depth=1
	addi.d	$s0, $a1, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortIPddEEvT_S2_)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bge	$s2, $s3, .LBB13_11
.LBB13_3:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_4 Depth 2
                                        #       Child Loop BB13_5 Depth 3
                                        #       Child Loop BB13_8 Depth 3
	fld.d	$fa0, $a0, 0
	move	$a1, $fp
	move	$a2, $a0
	.p2align	4, , 16
.LBB13_4:                               #   Parent Loop BB13_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_5 Depth 3
                                        #       Child Loop BB13_8 Depth 3
	sub.d	$s3, $s1, $a1
	.p2align	4, , 16
.LBB13_5:                               #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a1, -8
	addi.d	$a1, $a1, -8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$s3, $s3, 8
	bcnez	$fcc0, .LBB13_5
# %bb.6:                                #   in Loop: Header=BB13_4 Depth=2
	bgeu	$a2, $a1, .LBB13_2
# %bb.7:                                # %.preheader.preheader
                                        #   in Loop: Header=BB13_4 Depth=2
	addi.d	$a2, $a2, -8
	.p2align	4, , 16
.LBB13_8:                               # %.preheader
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a2, 8
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a2, $a2, 8
	bcnez	$fcc0, .LBB13_8
# %bb.9:                                #   in Loop: Header=BB13_4 Depth=2
	bgeu	$a2, $a1, .LBB13_2
# %bb.10:                               #   in Loop: Header=BB13_4 Depth=2
	fst.d	$fa2, $a1, 0
	fst.d	$fa1, $a2, 0
	b	.LBB13_4
.LBB13_11:                              # %tailrecurse._crit_edge
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end13:
	.size	_ZN9benchmark9quicksortIPddEEvT_S2_, .Lfunc_end13-_ZN9benchmark9quicksortIPddEEvT_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_,"axG",@progbits,_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_,comdat
	.weak	_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_ # -- Begin function _ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_
	.p2align	5
	.type	_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_,@function
_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_: # @_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a1
	move	$s0, $a0
	sub.d	$a0, $a1, $a0
	ori	$a1, $zero, 9
	blt	$a0, $a1, .LBB14_11
# %bb.1:                                # %.lr.ph
	ori	$s1, $zero, 8
	b	.LBB14_3
	.p2align	4, , 16
.LBB14_2:                               # %tailrecurse
                                        #   in Loop: Header=BB14_3 Depth=1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_)
	jirl	$ra, $ra, 0
	sub.d	$a0, $fp, $s0
	bge	$s1, $a0, .LBB14_11
.LBB14_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_4 Depth 2
                                        #       Child Loop BB14_5 Depth 3
                                        #       Child Loop BB14_8 Depth 3
	move	$a0, $s0
	fld.d	$fa0, $s0, 0
	move	$a1, $s0
	move	$a2, $fp
	.p2align	4, , 16
.LBB14_4:                               #   Parent Loop BB14_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_5 Depth 3
                                        #       Child Loop BB14_8 Depth 3
	addi.d	$s0, $a2, 8
	.p2align	4, , 16
.LBB14_5:                               #   Parent Loop BB14_3 Depth=1
                                        #     Parent Loop BB14_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a2, -8
	addi.d	$a2, $a2, -8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$s0, $s0, -8
	bcnez	$fcc0, .LBB14_5
# %bb.6:                                #   in Loop: Header=BB14_4 Depth=2
	bgeu	$a1, $a2, .LBB14_2
# %bb.7:                                # %.preheader.preheader
                                        #   in Loop: Header=BB14_4 Depth=2
	addi.d	$a1, $a1, -8
	.p2align	4, , 16
.LBB14_8:                               # %.preheader
                                        #   Parent Loop BB14_3 Depth=1
                                        #     Parent Loop BB14_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a1, 8
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a1, $a1, 8
	bcnez	$fcc0, .LBB14_8
# %bb.9:                                #   in Loop: Header=BB14_4 Depth=2
	bgeu	$a1, $a2, .LBB14_2
# %bb.10:                               #   in Loop: Header=BB14_4 Depth=2
	fst.d	$fa2, $a2, 0
	fst.d	$fa1, $a1, 0
	b	.LBB14_4
.LBB14_11:                              # %tailrecurse._crit_edge
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end14:
	.size	_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_, .Lfunc_end14-_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_,"axG",@progbits,_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_,comdat
	.weak	_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_ # -- Begin function _ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_
	.p2align	5
	.type	_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_,@function
_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_: # @_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a1
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	sub.d	$a2, $a0, $a1
	ori	$a3, $zero, 9
	blt	$a2, $a3, .LBB15_9
# %bb.1:
	fld.d	$fa0, $a0, -8
	move	$a2, $a0
	.p2align	4, , 16
.LBB15_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_5 Depth 2
	fld.d	$fa1, $a1, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, 8
	bcnez	$fcc0, .LBB15_2
# %bb.3:                                #   in Loop: Header=BB15_2 Depth=1
	bgeu	$a1, $a2, .LBB15_8
# %bb.4:                                # %.preheader.preheader
                                        #   in Loop: Header=BB15_2 Depth=1
	addi.d	$a2, $a2, 8
	.p2align	4, , 16
.LBB15_5:                               # %.preheader
                                        #   Parent Loop BB15_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a2, -16
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a2, $a2, -8
	bcnez	$fcc0, .LBB15_5
# %bb.6:                                #   in Loop: Header=BB15_2 Depth=1
	bgeu	$a1, $a2, .LBB15_8
# %bb.7:                                #   in Loop: Header=BB15_2 Depth=1
	fst.d	$fa2, $a1, -8
	fst.d	$fa1, $a2, -8
	b	.LBB15_2
.LBB15_8:
	st.d	$a0, $sp, 32
	addi.d	$s0, $a1, -8
	st.d	$s0, $sp, 24
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 24
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	st.d	$s0, $sp, 16
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_)
	jirl	$ra, $ra, 0
.LBB15_9:
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end15:
	.size	_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_, .Lfunc_end15-_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_,"axG",@progbits,_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_,comdat
	.weak	_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_ # -- Begin function _ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_
	.p2align	5
	.type	_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_,@function
_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_: # @_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a1
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	sub.d	$a2, $a0, $a1
	ori	$a3, $zero, 9
	blt	$a2, $a3, .LBB16_9
# %bb.1:
	fld.d	$fa0, $a0, -8
	move	$a2, $a0
	.p2align	4, , 16
.LBB16_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_5 Depth 2
	fld.d	$fa1, $a1, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, 8
	bcnez	$fcc0, .LBB16_2
# %bb.3:                                #   in Loop: Header=BB16_2 Depth=1
	bgeu	$a1, $a2, .LBB16_8
# %bb.4:                                # %.preheader.preheader
                                        #   in Loop: Header=BB16_2 Depth=1
	addi.d	$a2, $a2, 8
	.p2align	4, , 16
.LBB16_5:                               # %.preheader
                                        #   Parent Loop BB16_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a2, -16
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a2, $a2, -8
	bcnez	$fcc0, .LBB16_5
# %bb.6:                                #   in Loop: Header=BB16_2 Depth=1
	bgeu	$a1, $a2, .LBB16_8
# %bb.7:                                #   in Loop: Header=BB16_2 Depth=1
	fst.d	$fa2, $a1, -8
	fst.d	$fa1, $a2, -8
	b	.LBB16_2
.LBB16_8:
	st.d	$a0, $sp, 32
	addi.d	$s0, $a1, -8
	st.d	$s0, $sp, 24
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 24
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	st.d	$s0, $sp, 16
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_)
	jirl	$ra, $ra, 0
.LBB16_9:
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end16:
	.size	_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_, .Lfunc_end16-_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_,"axG",@progbits,_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_,comdat
	.weak	_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_ # -- Begin function _ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_
	.p2align	5
	.type	_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_,@function
_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_: # @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a1
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	sub.d	$a2, $a1, $a0
	ori	$a3, $zero, 9
	blt	$a2, $a3, .LBB17_9
# %bb.1:
	fld.d	$fa0, $a0, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB17_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_5 Depth 2
	fld.d	$fa1, $a1, -8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, -8
	bcnez	$fcc0, .LBB17_2
# %bb.3:                                #   in Loop: Header=BB17_2 Depth=1
	bgeu	$a2, $a1, .LBB17_8
# %bb.4:                                # %.preheader.preheader
                                        #   in Loop: Header=BB17_2 Depth=1
	addi.d	$a2, $a2, -8
	.p2align	4, , 16
.LBB17_5:                               # %.preheader
                                        #   Parent Loop BB17_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a2, 8
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a2, $a2, 8
	bcnez	$fcc0, .LBB17_5
# %bb.6:                                #   in Loop: Header=BB17_2 Depth=1
	bgeu	$a2, $a1, .LBB17_8
# %bb.7:                                #   in Loop: Header=BB17_2 Depth=1
	fst.d	$fa2, $a1, 0
	fst.d	$fa1, $a2, 0
	b	.LBB17_2
.LBB17_8:
	st.d	$a0, $sp, 64
	addi.d	$s0, $a1, 8
	st.d	$s0, $sp, 48
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	st.d	$s0, $sp, 32
	st.d	$a0, $sp, 16
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_)
	jirl	$ra, $ra, 0
.LBB17_9:
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end17:
	.size	_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_, .Lfunc_end17-_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_,"axG",@progbits,_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_,comdat
	.weak	_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_ # -- Begin function _ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_
	.p2align	5
	.type	_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_,@function
_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_: # @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a1
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	sub.d	$a2, $a1, $a0
	ori	$a3, $zero, 9
	blt	$a2, $a3, .LBB18_10
# %bb.1:
	fld.d	$fa0, $a0, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB18_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_3 Depth 2
                                        #     Child Loop BB18_6 Depth 2
	addi.d	$s0, $a1, 8
	.p2align	4, , 16
.LBB18_3:                               #   Parent Loop BB18_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, -8
	addi.d	$a1, $a1, -8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$s0, $s0, -8
	bcnez	$fcc0, .LBB18_3
# %bb.4:                                #   in Loop: Header=BB18_2 Depth=1
	bgeu	$a2, $a1, .LBB18_9
# %bb.5:                                # %.preheader.preheader
                                        #   in Loop: Header=BB18_2 Depth=1
	addi.d	$a2, $a2, -8
	.p2align	4, , 16
.LBB18_6:                               # %.preheader
                                        #   Parent Loop BB18_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a2, 8
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a2, $a2, 8
	bcnez	$fcc0, .LBB18_6
# %bb.7:                                #   in Loop: Header=BB18_2 Depth=1
	bgeu	$a2, $a1, .LBB18_9
# %bb.8:                                #   in Loop: Header=BB18_2 Depth=1
	fst.d	$fa2, $a1, 0
	fst.d	$fa1, $a2, 0
	b	.LBB18_2
.LBB18_9:
	st.d	$a0, $sp, 64
	st.d	$s0, $sp, 48
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	st.d	$s0, $sp, 32
	st.d	$a0, $sp, 16
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_)
	jirl	$ra, $ra, 0
.LBB18_10:
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end18:
	.size	_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_, .Lfunc_end18-_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8heapsortIPddEEvT_S2_,"axG",@progbits,_ZN9benchmark8heapsortIPddEEvT_S2_,comdat
	.weak	_ZN9benchmark8heapsortIPddEEvT_S2_ # -- Begin function _ZN9benchmark8heapsortIPddEEvT_S2_
	.p2align	5
	.type	_ZN9benchmark8heapsortIPddEEvT_S2_,@function
_ZN9benchmark8heapsortIPddEEvT_S2_:     # @_ZN9benchmark8heapsortIPddEEvT_S2_
	.cfi_startproc
# %bb.0:
	sub.d	$a1, $a1, $a0
	srai.d	$a1, $a1, 3
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB19_25
# %bb.1:                                # %.lr.ph
	srli.d	$a3, $a1, 1
	addi.d	$a2, $a1, -1
	alsl.d	$a4, $a2, $a0, 3
	ori	$a5, $zero, 1
	b	.LBB19_4
	.p2align	4, , 16
.LBB19_2:                               #   in Loop: Header=BB19_4 Depth=1
	move	$t0, $a7
.LBB19_3:                               # %_ZN9benchmark7sift_inIPddEEvlT_lT0_.exit
                                        #   in Loop: Header=BB19_4 Depth=1
	slli.d	$a7, $t0, 3
	fstx.d	$fa0, $a0, $a7
	bge	$a5, $a6, .LBB19_13
.LBB19_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_6 Depth 2
                                        #     Child Loop BB19_10 Depth 2
	move	$a6, $a3
	addi.d	$a3, $a3, -1
	slli.d	$a7, $a3, 3
	fldx.d	$fa0, $a0, $a7
	slli.d	$a7, $a3, 1
	addi.d	$t0, $a7, 2
	bge	$t0, $a1, .LBB19_12
# %bb.5:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB19_4 Depth=1
	move	$t1, $a3
	.p2align	4, , 16
.LBB19_6:                               # %.lr.ph.i
                                        #   Parent Loop BB19_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$a7, $t0, $a0, 3
	slli.d	$t2, $t0, 3
	fld.d	$fa1, $a7, -8
	fldx.d	$fa2, $a0, $t2
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a7, $fcc0
	add.d	$t0, $t0, $a7
	addi.d	$a7, $t0, -1
	slli.d	$t2, $a7, 3
	fldx.d	$fa1, $a0, $t2
	slli.d	$t1, $t1, 3
	slli.d	$t0, $t0, 1
	fstx.d	$fa1, $a0, $t1
	move	$t1, $a7
	blt	$t0, $a1, .LBB19_6
# %bb.7:                                # %._crit_edge.i
                                        #   in Loop: Header=BB19_4 Depth=1
	bne	$t0, $a1, .LBB19_9
.LBB19_8:                               #   in Loop: Header=BB19_4 Depth=1
	fld.d	$fa1, $a4, 0
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $a2
.LBB19_9:                               #   in Loop: Header=BB19_4 Depth=1
	blt	$a7, $a6, .LBB19_2
	.p2align	4, , 16
.LBB19_10:                              # %.lr.ph50.i
                                        #   Parent Loop BB19_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB19_2
# %bb.11:                               #   in Loop: Header=BB19_10 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $t0
	bge	$t0, $a6, .LBB19_10
	b	.LBB19_3
	.p2align	4, , 16
.LBB19_12:                              #   in Loop: Header=BB19_4 Depth=1
	move	$a7, $a3
	beq	$t0, $a1, .LBB19_8
	b	.LBB19_9
.LBB19_13:                              # %.lr.ph44.preheader
	ori	$a2, $zero, 3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 2
	b	.LBB19_16
	.p2align	4, , 16
.LBB19_14:                              #   in Loop: Header=BB19_16 Depth=1
	move	$a6, $zero
.LBB19_15:                              # %_ZN9benchmark7sift_inIPddEEvlT_lT0_.exit34
                                        #   in Loop: Header=BB19_16 Depth=1
	slli.d	$a6, $a6, 3
	fstx.d	$fa0, $a0, $a6
	bge	$a4, $a5, .LBB19_25
.LBB19_16:                              # %.lr.ph44
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_18 Depth 2
                                        #     Child Loop BB19_23 Depth 2
	move	$a5, $a1
	addi.d	$a1, $a1, -1
	slli.d	$a6, $a1, 3
	fld.d	$fa1, $a0, 0
	fldx.d	$fa0, $a0, $a6
	fstx.d	$fa1, $a0, $a6
	bltu	$a1, $a2, .LBB19_21
# %bb.17:                               # %.lr.ph.i30.preheader
                                        #   in Loop: Header=BB19_16 Depth=1
	move	$t0, $zero
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB19_18:                              # %.lr.ph.i30
                                        #   Parent Loop BB19_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$a6, $a7, $a0, 3
	slli.d	$t1, $a7, 3
	fld.d	$fa1, $a6, -8
	fldx.d	$fa2, $a0, $t1
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a6, $fcc0
	or	$a7, $a7, $a6
	addi.d	$a6, $a7, -1
	slli.d	$t1, $a6, 3
	fldx.d	$fa1, $a0, $t1
	slli.d	$t0, $t0, 3
	slli.d	$a7, $a7, 1
	fstx.d	$fa1, $a0, $t0
	move	$t0, $a6
	blt	$a7, $a1, .LBB19_18
# %bb.19:                               # %._crit_edge.i21
                                        #   in Loop: Header=BB19_16 Depth=1
	bne	$a7, $a1, .LBB19_22
.LBB19_20:                              # %.thread
                                        #   in Loop: Header=BB19_16 Depth=1
	addi.d	$a7, $a5, -2
	slli.d	$t0, $a7, 3
	fldx.d	$fa1, $a0, $t0
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $a7
	b	.LBB19_23
	.p2align	4, , 16
.LBB19_21:                              #   in Loop: Header=BB19_16 Depth=1
	move	$a6, $zero
	ori	$a7, $zero, 2
	beq	$a7, $a1, .LBB19_20
.LBB19_22:                              #   in Loop: Header=BB19_16 Depth=1
	blez	$a6, .LBB19_15
	.p2align	4, , 16
.LBB19_23:                              # %.lr.ph50.i26
                                        #   Parent Loop BB19_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a6, -1
	srli.d	$t0, $a7, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB19_15
# %bb.24:                               #   in Loop: Header=BB19_23 Depth=2
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $t0
	bltu	$a3, $a7, .LBB19_23
	b	.LBB19_14
.LBB19_25:                              # %._crit_edge
	ret
.Lfunc_end19:
	.size	_ZN9benchmark8heapsortIPddEEvT_S2_, .Lfunc_end19-_ZN9benchmark8heapsortIPddEEvT_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_,"axG",@progbits,_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_,comdat
	.weak	_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_ # -- Begin function _ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_
	.p2align	5
	.type	_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_,@function
_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_: # @_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_
	.cfi_startproc
# %bb.0:
	sub.d	$a1, $a1, $a0
	srai.d	$a1, $a1, 3
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB20_25
# %bb.1:                                # %.lr.ph
	srli.d	$a3, $a1, 1
	addi.d	$a2, $a0, -8
	addi.d	$a4, $a1, -1
	alsl.d	$a5, $a4, $a0, 3
	ori	$a6, $zero, 1
	b	.LBB20_4
	.p2align	4, , 16
.LBB20_2:                               #   in Loop: Header=BB20_4 Depth=1
	move	$t1, $t0
.LBB20_3:                               # %_ZN9benchmark7sift_inIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvlT_lT0_.exit
                                        #   in Loop: Header=BB20_4 Depth=1
	slli.d	$t0, $t1, 3
	fstx.d	$fa0, $a0, $t0
	bge	$a6, $a7, .LBB20_13
.LBB20_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_6 Depth 2
                                        #     Child Loop BB20_10 Depth 2
	move	$a7, $a3
	addi.d	$a3, $a3, -1
	slli.d	$t0, $a3, 3
	fldx.d	$fa0, $a0, $t0
	slli.d	$t0, $a3, 1
	addi.d	$t1, $t0, 2
	bge	$t1, $a1, .LBB20_12
# %bb.5:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB20_4 Depth=1
	move	$t2, $a3
	.p2align	4, , 16
.LBB20_6:                               # %.lr.ph.i
                                        #   Parent Loop BB20_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$t0, $t1, 3
	fldx.d	$fa1, $a2, $t0
	fldx.d	$fa2, $a0, $t0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$t0, $fcc0
	add.d	$t1, $t1, $t0
	addi.d	$t0, $t1, -1
	slli.d	$t3, $t0, 3
	fldx.d	$fa1, $a0, $t3
	slli.d	$t2, $t2, 3
	slli.d	$t1, $t1, 1
	fstx.d	$fa1, $a0, $t2
	move	$t2, $t0
	blt	$t1, $a1, .LBB20_6
# %bb.7:                                # %._crit_edge.i
                                        #   in Loop: Header=BB20_4 Depth=1
	bne	$t1, $a1, .LBB20_9
.LBB20_8:                               #   in Loop: Header=BB20_4 Depth=1
	fld.d	$fa1, $a5, 0
	slli.d	$t0, $t0, 3
	fstx.d	$fa1, $a0, $t0
	move	$t0, $a4
.LBB20_9:                               #   in Loop: Header=BB20_4 Depth=1
	blt	$t0, $a7, .LBB20_2
	.p2align	4, , 16
.LBB20_10:                              # %.lr.ph77.i
                                        #   Parent Loop BB20_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t1, $t0, -1
	srli.d	$t2, $t1, 63
	add.d	$t1, $t1, $t2
	srai.d	$t1, $t1, 1
	slli.d	$t2, $t1, 3
	fldx.d	$fa1, $a0, $t2
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB20_2
# %bb.11:                               #   in Loop: Header=BB20_10 Depth=2
	slli.d	$t0, $t0, 3
	fstx.d	$fa1, $a0, $t0
	move	$t0, $t1
	bge	$t1, $a7, .LBB20_10
	b	.LBB20_3
	.p2align	4, , 16
.LBB20_12:                              #   in Loop: Header=BB20_4 Depth=1
	move	$t0, $a3
	beq	$t1, $a1, .LBB20_8
	b	.LBB20_9
.LBB20_13:                              # %.lr.ph52
	ori	$a3, $zero, 3
	ori	$a4, $zero, 1
	ori	$a5, $zero, 2
	b	.LBB20_16
	.p2align	4, , 16
.LBB20_14:                              #   in Loop: Header=BB20_16 Depth=1
	move	$a7, $zero
.LBB20_15:                              # %_ZN9benchmark7sift_inIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvlT_lT0_.exit29
                                        #   in Loop: Header=BB20_16 Depth=1
	slli.d	$a7, $a7, 3
	fstx.d	$fa0, $a0, $a7
	bge	$a5, $a6, .LBB20_25
.LBB20_16:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_18 Depth 2
                                        #     Child Loop BB20_23 Depth 2
	move	$a6, $a1
	addi.d	$a1, $a1, -1
	slli.d	$a7, $a1, 3
	fld.d	$fa1, $a0, 0
	fldx.d	$fa0, $a0, $a7
	fstx.d	$fa1, $a0, $a7
	bltu	$a1, $a3, .LBB20_21
# %bb.17:                               # %.lr.ph.i24.preheader
                                        #   in Loop: Header=BB20_16 Depth=1
	move	$t1, $zero
	ori	$t0, $zero, 2
	.p2align	4, , 16
.LBB20_18:                              # %.lr.ph.i24
                                        #   Parent Loop BB20_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a7, $t0, 3
	fldx.d	$fa1, $a2, $a7
	fldx.d	$fa2, $a0, $a7
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a7, $fcc0
	or	$t0, $t0, $a7
	addi.d	$a7, $t0, -1
	slli.d	$t2, $a7, 3
	fldx.d	$fa1, $a0, $t2
	slli.d	$t1, $t1, 3
	slli.d	$t0, $t0, 1
	fstx.d	$fa1, $a0, $t1
	move	$t1, $a7
	blt	$t0, $a1, .LBB20_18
# %bb.19:                               # %._crit_edge.i15
                                        #   in Loop: Header=BB20_16 Depth=1
	bne	$t0, $a1, .LBB20_22
.LBB20_20:                              # %.thread
                                        #   in Loop: Header=BB20_16 Depth=1
	addi.d	$t0, $a6, -2
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $t0
	b	.LBB20_23
	.p2align	4, , 16
.LBB20_21:                              #   in Loop: Header=BB20_16 Depth=1
	move	$a7, $zero
	ori	$t0, $zero, 2
	beq	$t0, $a1, .LBB20_20
.LBB20_22:                              #   in Loop: Header=BB20_16 Depth=1
	blez	$a7, .LBB20_15
	.p2align	4, , 16
.LBB20_23:                              # %.lr.ph77.i20
                                        #   Parent Loop BB20_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 1
	slli.d	$t2, $t1, 3
	fldx.d	$fa1, $a0, $t2
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB20_15
# %bb.24:                               #   in Loop: Header=BB20_23 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $t1
	bltu	$a4, $t0, .LBB20_23
	b	.LBB20_14
.LBB20_25:                              # %._crit_edge
	ret
.Lfunc_end20:
	.size	_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_, .Lfunc_end20-_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_,"axG",@progbits,_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_,comdat
	.weak	_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_ # -- Begin function _ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_
	.p2align	5
	.type	_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_,@function
_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_: # @_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_
	.cfi_startproc
# %bb.0:
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	sub.d	$a1, $a0, $a1
	srai.d	$a1, $a1, 3
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB21_27
# %bb.1:                                # %.lr.ph
	addi.d	$a0, $a0, -8
	srli.d	$a3, $a1, 1
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 1
	sub.d	$a5, $a4, $a1
	alsl.d	$a5, $a5, $a0, 3
	b	.LBB21_4
	.p2align	4, , 16
.LBB21_2:                               #   in Loop: Header=BB21_4 Depth=1
	move	$t0, $a7
.LBB21_3:                               # %_ZN9benchmark7sift_inISt16reverse_iteratorIPdEdEEvlT_lT0_.exit
                                        #   in Loop: Header=BB21_4 Depth=1
	slli.d	$a7, $t0, 3
	sub.d	$a7, $a0, $a7
	fst.d	$fa0, $a7, 0
	bge	$a4, $a6, .LBB21_13
.LBB21_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_6 Depth 2
                                        #     Child Loop BB21_10 Depth 2
	move	$a6, $a3
	addi.d	$a3, $a3, -1
	sub.d	$a7, $a4, $a6
	slli.d	$a7, $a7, 3
	fldx.d	$fa0, $a0, $a7
	slli.d	$a7, $a3, 1
	addi.d	$t0, $a7, 2
	bge	$t0, $a1, .LBB21_12
# %bb.5:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB21_4 Depth=1
	move	$t1, $a3
	.p2align	4, , 16
.LBB21_6:                               # %.lr.ph.i
                                        #   Parent Loop BB21_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sub.d	$a7, $a4, $t0
	slli.d	$a7, $a7, 3
	fldx.d	$fa1, $a0, $a7
	slli.d	$a7, $t0, 3
	sub.d	$a7, $a0, $a7
	fld.d	$fa2, $a7, 0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a7, $fcc0
	add.d	$t0, $t0, $a7
	addi.d	$a7, $t0, -1
	sub.d	$t2, $a4, $t0
	slli.d	$t2, $t2, 3
	fldx.d	$fa1, $a0, $t2
	slli.d	$t1, $t1, 3
	sub.d	$t1, $a0, $t1
	slli.d	$t0, $t0, 1
	fst.d	$fa1, $t1, 0
	move	$t1, $a7
	blt	$t0, $a1, .LBB21_6
# %bb.7:                                # %._crit_edge.i
                                        #   in Loop: Header=BB21_4 Depth=1
	bne	$t0, $a1, .LBB21_9
.LBB21_8:                               #   in Loop: Header=BB21_4 Depth=1
	fld.d	$fa1, $a5, 0
	slli.d	$a7, $a7, 3
	sub.d	$a7, $a0, $a7
	fst.d	$fa1, $a7, 0
	move	$a7, $a2
.LBB21_9:                               #   in Loop: Header=BB21_4 Depth=1
	blt	$a7, $a6, .LBB21_2
	.p2align	4, , 16
.LBB21_10:                              # %.lr.ph54.i
                                        #   Parent Loop BB21_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 1
	slli.d	$t1, $t0, 3
	sub.d	$t1, $a0, $t1
	fld.d	$fa1, $t1, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB21_2
# %bb.11:                               #   in Loop: Header=BB21_10 Depth=2
	slli.d	$a7, $a7, 3
	sub.d	$a7, $a0, $a7
	fst.d	$fa1, $a7, 0
	move	$a7, $t0
	bge	$t0, $a6, .LBB21_10
	b	.LBB21_3
	.p2align	4, , 16
.LBB21_12:                              #   in Loop: Header=BB21_4 Depth=1
	move	$a7, $a3
	beq	$t0, $a1, .LBB21_8
	b	.LBB21_9
.LBB21_13:                              # %.lr.ph70.preheader
	ori	$a2, $zero, 1
	ori	$a3, $zero, 3
	ori	$a4, $zero, 2
	b	.LBB21_16
	.p2align	4, , 16
.LBB21_14:                              #   in Loop: Header=BB21_16 Depth=1
	move	$a6, $zero
.LBB21_15:                              # %_ZN9benchmark7sift_inISt16reverse_iteratorIPdEdEEvlT_lT0_.exit38
                                        #   in Loop: Header=BB21_16 Depth=1
	slli.d	$a6, $a6, 3
	sub.d	$a6, $a0, $a6
	fst.d	$fa0, $a6, 0
	bge	$a4, $a5, .LBB21_27
.LBB21_16:                              # %.lr.ph70
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_18 Depth 2
                                        #     Child Loop BB21_24 Depth 2
	move	$a5, $a1
	sub.d	$a1, $a2, $a1
	slli.d	$a6, $a1, 3
	fld.d	$fa1, $a0, 0
	fldx.d	$fa0, $a0, $a6
	addi.d	$a1, $a5, -1
	fstx.d	$fa1, $a0, $a6
	bltu	$a1, $a3, .LBB21_21
# %bb.17:                               # %.lr.ph.i29.preheader
                                        #   in Loop: Header=BB21_16 Depth=1
	move	$a6, $zero
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB21_18:                              # %.lr.ph.i29
                                        #   Parent Loop BB21_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sub.d	$t0, $a2, $a7
	slli.d	$t0, $t0, 3
	fldx.d	$fa1, $a0, $t0
	slli.d	$t0, $a7, 3
	sub.d	$t0, $a0, $t0
	fld.d	$fa2, $t0, 0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$t0, $fcc0
	or	$t0, $a7, $t0
	sub.d	$a7, $a2, $t0
	slli.d	$a7, $a7, 3
	fldx.d	$fa1, $a0, $a7
	slli.d	$a7, $a6, 3
	addi.d	$a6, $t0, -1
	sub.d	$t1, $a0, $a7
	slli.d	$a7, $t0, 1
	fst.d	$fa1, $t1, 0
	blt	$a7, $a1, .LBB21_18
# %bb.19:                               # %._crit_edge.i13
                                        #   in Loop: Header=BB21_16 Depth=1
	beq	$a7, $a1, .LBB21_23
# %bb.20:                               #   in Loop: Header=BB21_16 Depth=1
	bge	$t0, $a4, .LBB21_24
	b	.LBB21_15
	.p2align	4, , 16
.LBB21_21:                              # %._crit_edge.i13.thread
                                        #   in Loop: Header=BB21_16 Depth=1
	bne	$a1, $a4, .LBB21_26
# %bb.22:                               #   in Loop: Header=BB21_16 Depth=1
	move	$a6, $zero
.LBB21_23:                              # %.thread
                                        #   in Loop: Header=BB21_16 Depth=1
	sub.d	$a7, $a4, $a5
	slli.d	$a7, $a7, 3
	fldx.d	$fa1, $a0, $a7
	slli.d	$a6, $a6, 3
	addi.d	$a7, $a5, -2
	sub.d	$a6, $a0, $a6
	fst.d	$fa1, $a6, 0
	move	$a6, $a7
	.p2align	4, , 16
.LBB21_24:                              # %.lr.ph54.i19
                                        #   Parent Loop BB21_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a6, -1
	srli.d	$t0, $a7, 1
	slli.d	$t1, $t0, 3
	sub.d	$t1, $a0, $t1
	fld.d	$fa1, $t1, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB21_15
# %bb.25:                               #   in Loop: Header=BB21_24 Depth=2
	slli.d	$a6, $a6, 3
	sub.d	$a6, $a0, $a6
	fst.d	$fa1, $a6, 0
	move	$a6, $t0
	bltu	$a2, $a7, .LBB21_24
	b	.LBB21_14
.LBB21_26:                              # %_ZN9benchmark7sift_inISt16reverse_iteratorIPdEdEEvlT_lT0_.exit38.thread
	fst.d	$fa0, $a0, 0
.LBB21_27:                              # %._crit_edge
	ret
.Lfunc_end21:
	.size	_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_, .Lfunc_end21-_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_,"axG",@progbits,_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_,comdat
	.weak	_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_ # -- Begin function _ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_
	.p2align	5
	.type	_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_,@function
_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_: # @_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_
	.cfi_startproc
# %bb.0:
	ld.d	$a5, $a0, 0
	ld.d	$a0, $a1, 0
	sub.d	$a0, $a5, $a0
	srai.d	$a1, $a0, 3
	ori	$a0, $zero, 2
	blt	$a1, $a0, .LBB22_27
# %bb.1:                                # %.lr.ph
	addi.d	$a0, $a5, -8
	srli.d	$a3, $a1, 1
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 1
	sub.d	$a6, $a4, $a1
	alsl.d	$a5, $a6, $a5, 3
	b	.LBB22_4
	.p2align	4, , 16
.LBB22_2:                               #   in Loop: Header=BB22_4 Depth=1
	move	$t0, $a7
.LBB22_3:                               # %_ZN9benchmark7sift_inISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvlT_lT0_.exit
                                        #   in Loop: Header=BB22_4 Depth=1
	slli.d	$a7, $t0, 3
	sub.d	$a7, $a0, $a7
	fst.d	$fa0, $a7, 0
	bge	$a4, $a6, .LBB22_13
.LBB22_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_6 Depth 2
                                        #     Child Loop BB22_10 Depth 2
	move	$a6, $a3
	addi.d	$a3, $a3, -1
	sub.d	$a7, $a4, $a6
	slli.d	$a7, $a7, 3
	fldx.d	$fa0, $a0, $a7
	slli.d	$a7, $a3, 1
	addi.d	$t0, $a7, 2
	bge	$t0, $a1, .LBB22_12
# %bb.5:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB22_4 Depth=1
	move	$t1, $a3
	.p2align	4, , 16
.LBB22_6:                               # %.lr.ph.i
                                        #   Parent Loop BB22_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sub.d	$a7, $a4, $t0
	slli.d	$a7, $a7, 3
	fldx.d	$fa1, $a0, $a7
	slli.d	$a7, $t0, 3
	sub.d	$a7, $a0, $a7
	fld.d	$fa2, $a7, 0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a7, $fcc0
	add.d	$t0, $t0, $a7
	addi.d	$a7, $t0, -1
	sub.d	$t2, $a4, $t0
	slli.d	$t2, $t2, 3
	fldx.d	$fa1, $a0, $t2
	slli.d	$t1, $t1, 3
	sub.d	$t1, $a0, $t1
	slli.d	$t0, $t0, 1
	fst.d	$fa1, $t1, 0
	move	$t1, $a7
	blt	$t0, $a1, .LBB22_6
# %bb.7:                                # %._crit_edge.i
                                        #   in Loop: Header=BB22_4 Depth=1
	bne	$t0, $a1, .LBB22_9
.LBB22_8:                               #   in Loop: Header=BB22_4 Depth=1
	fld.d	$fa1, $a5, -8
	slli.d	$a7, $a7, 3
	sub.d	$a7, $a0, $a7
	fst.d	$fa1, $a7, 0
	move	$a7, $a2
.LBB22_9:                               #   in Loop: Header=BB22_4 Depth=1
	blt	$a7, $a6, .LBB22_2
	.p2align	4, , 16
.LBB22_10:                              # %.lr.ph54.i
                                        #   Parent Loop BB22_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 1
	slli.d	$t1, $t0, 3
	sub.d	$t1, $a0, $t1
	fld.d	$fa1, $t1, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB22_2
# %bb.11:                               #   in Loop: Header=BB22_10 Depth=2
	slli.d	$a7, $a7, 3
	sub.d	$a7, $a0, $a7
	fst.d	$fa1, $a7, 0
	move	$a7, $t0
	bge	$t0, $a6, .LBB22_10
	b	.LBB22_3
	.p2align	4, , 16
.LBB22_12:                              #   in Loop: Header=BB22_4 Depth=1
	move	$a7, $a3
	beq	$t0, $a1, .LBB22_8
	b	.LBB22_9
.LBB22_13:                              # %.lr.ph62.preheader
	ori	$a2, $zero, 1
	ori	$a3, $zero, 3
	ori	$a4, $zero, 2
	b	.LBB22_16
	.p2align	4, , 16
.LBB22_14:                              #   in Loop: Header=BB22_16 Depth=1
	move	$a6, $zero
.LBB22_15:                              # %_ZN9benchmark7sift_inISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvlT_lT0_.exit38
                                        #   in Loop: Header=BB22_16 Depth=1
	slli.d	$a6, $a6, 3
	sub.d	$a6, $a0, $a6
	fst.d	$fa0, $a6, 0
	bge	$a4, $a5, .LBB22_27
.LBB22_16:                              # %.lr.ph62
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_18 Depth 2
                                        #     Child Loop BB22_24 Depth 2
	move	$a5, $a1
	sub.d	$a1, $a2, $a1
	slli.d	$a6, $a1, 3
	fld.d	$fa1, $a0, 0
	fldx.d	$fa0, $a0, $a6
	addi.d	$a1, $a5, -1
	fstx.d	$fa1, $a0, $a6
	bltu	$a1, $a3, .LBB22_21
# %bb.17:                               # %.lr.ph.i29.preheader
                                        #   in Loop: Header=BB22_16 Depth=1
	move	$a6, $zero
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB22_18:                              # %.lr.ph.i29
                                        #   Parent Loop BB22_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sub.d	$t0, $a2, $a7
	slli.d	$t0, $t0, 3
	fldx.d	$fa1, $a0, $t0
	slli.d	$t0, $a7, 3
	sub.d	$t0, $a0, $t0
	fld.d	$fa2, $t0, 0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$t0, $fcc0
	or	$t0, $a7, $t0
	sub.d	$a7, $a2, $t0
	slli.d	$a7, $a7, 3
	fldx.d	$fa1, $a0, $a7
	slli.d	$a7, $a6, 3
	addi.d	$a6, $t0, -1
	sub.d	$t1, $a0, $a7
	slli.d	$a7, $t0, 1
	fst.d	$fa1, $t1, 0
	blt	$a7, $a1, .LBB22_18
# %bb.19:                               # %._crit_edge.i13
                                        #   in Loop: Header=BB22_16 Depth=1
	beq	$a7, $a1, .LBB22_23
# %bb.20:                               #   in Loop: Header=BB22_16 Depth=1
	bge	$t0, $a4, .LBB22_24
	b	.LBB22_15
	.p2align	4, , 16
.LBB22_21:                              # %._crit_edge.i13.thread
                                        #   in Loop: Header=BB22_16 Depth=1
	bne	$a1, $a4, .LBB22_26
# %bb.22:                               #   in Loop: Header=BB22_16 Depth=1
	move	$a6, $zero
.LBB22_23:                              # %.thread
                                        #   in Loop: Header=BB22_16 Depth=1
	sub.d	$a7, $a4, $a5
	slli.d	$a7, $a7, 3
	fldx.d	$fa1, $a0, $a7
	slli.d	$a6, $a6, 3
	addi.d	$a7, $a5, -2
	sub.d	$a6, $a0, $a6
	fst.d	$fa1, $a6, 0
	move	$a6, $a7
	.p2align	4, , 16
.LBB22_24:                              # %.lr.ph54.i19
                                        #   Parent Loop BB22_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a6, -1
	srli.d	$t0, $a7, 1
	slli.d	$t1, $t0, 3
	sub.d	$t1, $a0, $t1
	fld.d	$fa1, $t1, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB22_15
# %bb.25:                               #   in Loop: Header=BB22_24 Depth=2
	slli.d	$a6, $a6, 3
	sub.d	$a6, $a0, $a6
	fst.d	$fa1, $a6, 0
	move	$a6, $t0
	bltu	$a2, $a7, .LBB22_24
	b	.LBB22_14
.LBB22_26:                              # %_ZN9benchmark7sift_inISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvlT_lT0_.exit38.thread
	fst.d	$fa0, $a0, 0
.LBB22_27:                              # %._crit_edge
	ret
.Lfunc_end22:
	.size	_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_, .Lfunc_end22-_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_,"axG",@progbits,_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_,comdat
	.weak	_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_ # -- Begin function _ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_
	.p2align	5
	.type	_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_,@function
_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_: # @_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_
	.cfi_startproc
# %bb.0:
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	sub.d	$a1, $a1, $a0
	srai.d	$a1, $a1, 3
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB23_25
# %bb.1:                                # %.lr.ph
	srli.d	$a3, $a1, 1
	addi.d	$a2, $a0, -8
	addi.d	$a4, $a1, -1
	alsl.d	$a5, $a4, $a0, 3
	ori	$a6, $zero, 1
	b	.LBB23_4
	.p2align	4, , 16
.LBB23_2:                               #   in Loop: Header=BB23_4 Depth=1
	move	$t1, $t0
.LBB23_3:                               # %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IPdEEdEEvlT_lT0_.exit
                                        #   in Loop: Header=BB23_4 Depth=1
	slli.d	$t0, $t1, 3
	fstx.d	$fa0, $a0, $t0
	bge	$a6, $a7, .LBB23_13
.LBB23_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_6 Depth 2
                                        #     Child Loop BB23_10 Depth 2
	move	$a7, $a3
	addi.d	$a3, $a3, -1
	slli.d	$t0, $a3, 3
	fldx.d	$fa0, $a0, $t0
	slli.d	$t0, $a3, 1
	addi.d	$t1, $t0, 2
	bge	$t1, $a1, .LBB23_12
# %bb.5:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB23_4 Depth=1
	move	$t2, $a3
	.p2align	4, , 16
.LBB23_6:                               # %.lr.ph.i
                                        #   Parent Loop BB23_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$t0, $t1, 3
	fldx.d	$fa1, $a2, $t0
	fldx.d	$fa2, $a0, $t0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$t0, $fcc0
	add.d	$t1, $t1, $t0
	addi.d	$t0, $t1, -1
	slli.d	$t3, $t0, 3
	fldx.d	$fa1, $a0, $t3
	slli.d	$t2, $t2, 3
	slli.d	$t1, $t1, 1
	fstx.d	$fa1, $a0, $t2
	move	$t2, $t0
	blt	$t1, $a1, .LBB23_6
# %bb.7:                                # %._crit_edge.i
                                        #   in Loop: Header=BB23_4 Depth=1
	bne	$t1, $a1, .LBB23_9
.LBB23_8:                               #   in Loop: Header=BB23_4 Depth=1
	fld.d	$fa1, $a5, 0
	slli.d	$t0, $t0, 3
	fstx.d	$fa1, $a0, $t0
	move	$t0, $a4
.LBB23_9:                               #   in Loop: Header=BB23_4 Depth=1
	blt	$t0, $a7, .LBB23_2
	.p2align	4, , 16
.LBB23_10:                              # %.lr.ph56.i
                                        #   Parent Loop BB23_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t1, $t0, -1
	srli.d	$t2, $t1, 63
	add.d	$t1, $t1, $t2
	srai.d	$t1, $t1, 1
	slli.d	$t2, $t1, 3
	fldx.d	$fa1, $a0, $t2
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB23_2
# %bb.11:                               #   in Loop: Header=BB23_10 Depth=2
	slli.d	$t0, $t0, 3
	fstx.d	$fa1, $a0, $t0
	move	$t0, $t1
	bge	$t1, $a7, .LBB23_10
	b	.LBB23_3
	.p2align	4, , 16
.LBB23_12:                              #   in Loop: Header=BB23_4 Depth=1
	move	$t0, $a3
	beq	$t1, $a1, .LBB23_8
	b	.LBB23_9
.LBB23_13:                              # %.lr.ph48
	ori	$a3, $zero, 3
	ori	$a4, $zero, 1
	ori	$a5, $zero, 2
	b	.LBB23_16
	.p2align	4, , 16
.LBB23_14:                              #   in Loop: Header=BB23_16 Depth=1
	move	$a7, $zero
.LBB23_15:                              # %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IPdEEdEEvlT_lT0_.exit28
                                        #   in Loop: Header=BB23_16 Depth=1
	slli.d	$a7, $a7, 3
	fstx.d	$fa0, $a0, $a7
	bge	$a5, $a6, .LBB23_25
.LBB23_16:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_18 Depth 2
                                        #     Child Loop BB23_23 Depth 2
	move	$a6, $a1
	addi.d	$a1, $a1, -1
	slli.d	$a7, $a1, 3
	fld.d	$fa1, $a0, 0
	fldx.d	$fa0, $a0, $a7
	fstx.d	$fa1, $a0, $a7
	bltu	$a1, $a3, .LBB23_21
# %bb.17:                               # %.lr.ph.i22.preheader
                                        #   in Loop: Header=BB23_16 Depth=1
	move	$t1, $zero
	ori	$t0, $zero, 2
	.p2align	4, , 16
.LBB23_18:                              # %.lr.ph.i22
                                        #   Parent Loop BB23_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a7, $t0, 3
	fldx.d	$fa1, $a2, $a7
	fldx.d	$fa2, $a0, $a7
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a7, $fcc0
	or	$t0, $t0, $a7
	addi.d	$a7, $t0, -1
	slli.d	$t2, $a7, 3
	fldx.d	$fa1, $a0, $t2
	slli.d	$t1, $t1, 3
	slli.d	$t0, $t0, 1
	fstx.d	$fa1, $a0, $t1
	move	$t1, $a7
	blt	$t0, $a1, .LBB23_18
# %bb.19:                               # %._crit_edge.i13
                                        #   in Loop: Header=BB23_16 Depth=1
	bne	$t0, $a1, .LBB23_22
.LBB23_20:                              # %.thread
                                        #   in Loop: Header=BB23_16 Depth=1
	addi.d	$t0, $a6, -2
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $t0
	b	.LBB23_23
	.p2align	4, , 16
.LBB23_21:                              #   in Loop: Header=BB23_16 Depth=1
	move	$a7, $zero
	ori	$t0, $zero, 2
	beq	$t0, $a1, .LBB23_20
.LBB23_22:                              #   in Loop: Header=BB23_16 Depth=1
	blez	$a7, .LBB23_15
	.p2align	4, , 16
.LBB23_23:                              # %.lr.ph56.i18
                                        #   Parent Loop BB23_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 1
	slli.d	$t2, $t1, 3
	fldx.d	$fa1, $a0, $t2
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB23_15
# %bb.24:                               #   in Loop: Header=BB23_23 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $t1
	bltu	$a4, $t0, .LBB23_23
	b	.LBB23_14
.LBB23_25:                              # %._crit_edge
	ret
.Lfunc_end23:
	.size	_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_, .Lfunc_end23-_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_,"axG",@progbits,_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_,comdat
	.weak	_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_ # -- Begin function _ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_
	.p2align	5
	.type	_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_,@function
_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_: # @_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_
	.cfi_startproc
# %bb.0:
	ld.d	$a2, $a0, 8
	ld.d	$a1, $a1, 8
	sub.d	$a1, $a1, $a2
	srai.d	$a1, $a1, 3
	ori	$a3, $zero, 2
	blt	$a1, $a3, .LBB24_25
# %bb.1:                                # %.lr.ph
	srli.d	$a4, $a1, 1
	addi.d	$a3, $a2, -8
	addi.d	$a5, $a1, -1
	alsl.d	$a6, $a5, $a2, 3
	ori	$a7, $zero, 1
	b	.LBB24_4
	.p2align	4, , 16
.LBB24_2:                               #   in Loop: Header=BB24_4 Depth=1
	move	$t2, $t1
.LBB24_3:                               # %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvlT_lT0_.exit
                                        #   in Loop: Header=BB24_4 Depth=1
	slli.d	$t1, $t2, 3
	fstx.d	$fa0, $a2, $t1
	bge	$a7, $t0, .LBB24_13
.LBB24_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_6 Depth 2
                                        #     Child Loop BB24_10 Depth 2
	move	$t0, $a4
	addi.d	$a4, $a4, -1
	slli.d	$t1, $a4, 3
	fldx.d	$fa0, $a2, $t1
	slli.d	$t1, $a4, 1
	addi.d	$t2, $t1, 2
	bge	$t2, $a1, .LBB24_12
# %bb.5:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB24_4 Depth=1
	move	$t3, $a4
	.p2align	4, , 16
.LBB24_6:                               # %.lr.ph.i
                                        #   Parent Loop BB24_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$t1, $t2, 3
	fldx.d	$fa1, $a3, $t1
	fldx.d	$fa2, $a2, $t1
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$t1, $fcc0
	add.d	$t2, $t2, $t1
	addi.d	$t1, $t2, -1
	slli.d	$t4, $t1, 3
	fldx.d	$fa1, $a2, $t4
	slli.d	$t3, $t3, 3
	slli.d	$t2, $t2, 1
	fstx.d	$fa1, $a2, $t3
	move	$t3, $t1
	blt	$t2, $a1, .LBB24_6
# %bb.7:                                # %._crit_edge.i
                                        #   in Loop: Header=BB24_4 Depth=1
	bne	$t2, $a1, .LBB24_9
.LBB24_8:                               #   in Loop: Header=BB24_4 Depth=1
	fld.d	$fa1, $a6, 0
	slli.d	$t1, $t1, 3
	fstx.d	$fa1, $a2, $t1
	move	$t1, $a5
.LBB24_9:                               #   in Loop: Header=BB24_4 Depth=1
	blt	$t1, $t0, .LBB24_2
	.p2align	4, , 16
.LBB24_10:                              # %.lr.ph56.i
                                        #   Parent Loop BB24_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t2, $t1, -1
	srli.d	$t3, $t2, 63
	add.d	$t2, $t2, $t3
	srai.d	$t2, $t2, 1
	slli.d	$t3, $t2, 3
	fldx.d	$fa1, $a2, $t3
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB24_2
# %bb.11:                               #   in Loop: Header=BB24_10 Depth=2
	slli.d	$t1, $t1, 3
	fstx.d	$fa1, $a2, $t1
	move	$t1, $t2
	bge	$t2, $t0, .LBB24_10
	b	.LBB24_3
	.p2align	4, , 16
.LBB24_12:                              #   in Loop: Header=BB24_4 Depth=1
	move	$t1, $a4
	beq	$t2, $a1, .LBB24_8
	b	.LBB24_9
.LBB24_13:                              # %.lr.ph48
	ld.d	$a0, $a0, 8
	addi.d	$a2, $a0, -8
	ori	$a3, $zero, 3
	ori	$a4, $zero, 1
	ori	$a5, $zero, 2
	b	.LBB24_16
	.p2align	4, , 16
.LBB24_14:                              #   in Loop: Header=BB24_16 Depth=1
	move	$a7, $zero
.LBB24_15:                              # %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvlT_lT0_.exit28
                                        #   in Loop: Header=BB24_16 Depth=1
	slli.d	$a7, $a7, 3
	fstx.d	$fa0, $a0, $a7
	bge	$a5, $a6, .LBB24_25
.LBB24_16:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_18 Depth 2
                                        #     Child Loop BB24_23 Depth 2
	move	$a6, $a1
	addi.d	$a1, $a1, -1
	slli.d	$a7, $a1, 3
	fld.d	$fa1, $a0, 0
	fldx.d	$fa0, $a0, $a7
	fstx.d	$fa1, $a0, $a7
	bltu	$a1, $a3, .LBB24_21
# %bb.17:                               # %.lr.ph.i22.preheader
                                        #   in Loop: Header=BB24_16 Depth=1
	move	$t1, $zero
	ori	$t0, $zero, 2
	.p2align	4, , 16
.LBB24_18:                              # %.lr.ph.i22
                                        #   Parent Loop BB24_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a7, $t0, 3
	fldx.d	$fa1, $a2, $a7
	fldx.d	$fa2, $a0, $a7
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a7, $fcc0
	or	$t0, $t0, $a7
	addi.d	$a7, $t0, -1
	slli.d	$t2, $a7, 3
	fldx.d	$fa1, $a0, $t2
	slli.d	$t1, $t1, 3
	slli.d	$t0, $t0, 1
	fstx.d	$fa1, $a0, $t1
	move	$t1, $a7
	blt	$t0, $a1, .LBB24_18
# %bb.19:                               # %._crit_edge.i13
                                        #   in Loop: Header=BB24_16 Depth=1
	bne	$t0, $a1, .LBB24_22
.LBB24_20:                              # %.thread
                                        #   in Loop: Header=BB24_16 Depth=1
	addi.d	$t0, $a6, -2
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $t0
	b	.LBB24_23
	.p2align	4, , 16
.LBB24_21:                              #   in Loop: Header=BB24_16 Depth=1
	move	$a7, $zero
	ori	$t0, $zero, 2
	beq	$t0, $a1, .LBB24_20
.LBB24_22:                              #   in Loop: Header=BB24_16 Depth=1
	blez	$a7, .LBB24_15
	.p2align	4, , 16
.LBB24_23:                              # %.lr.ph56.i18
                                        #   Parent Loop BB24_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 1
	slli.d	$t2, $t1, 3
	fldx.d	$fa1, $a0, $t2
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB24_15
# %bb.24:                               #   in Loop: Header=BB24_23 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $t1
	bltu	$a4, $t0, .LBB24_23
	b	.LBB24_14
.LBB24_25:                              # %._crit_edge
	ret
.Lfunc_end24:
	.size	_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_, .Lfunc_end24-_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_
	.cfi_endproc
                                        # -- End function
	.type	results,@object                 # @results
	.bss
	.globl	results
	.p2align	3, 0x0
results:
	.dword	0
	.size	results, 8

	.type	current_test,@object            # @current_test
	.globl	current_test
	.p2align	2, 0x0
current_test:
	.word	0                               # 0x0
	.size	current_test, 4

	.type	allocated_results,@object       # @allocated_results
	.globl	allocated_results
	.p2align	2, 0x0
allocated_results:
	.word	0                               # 0x0
	.size	allocated_results, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Could not allocate %d results\n"
	.size	.L.str, 31

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\ntest %*s description   absolute   operations   ratio with\n"
	.size	.L.str.1, 60

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	" "
	.size	.L.str.2, 2

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"number %*s time       per second   test0\n\n"
	.size	.L.str.3, 43

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%2i %*s\"%s\"  %5.2f sec   %5.2f M     %.2f\n"
	.size	.L.str.4, 43

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.space	1
	.size	.L.str.5, 1

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"\nTotal absolute time for %s: %.2f sec\n"
	.size	.L.str.6, 39

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"\n%s Penalty: %.2f\n\n"
	.size	.L.str.7, 20

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"\ntest %*s description   absolute\n"
	.size	.L.str.8, 34

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"number %*s time\n\n"
	.size	.L.str.9, 18

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"%2i %*s\"%s\"  %5.2f sec\n"
	.size	.L.str.10, 24

	.type	start_time,@object              # @start_time
	.bss
	.globl	start_time
	.p2align	3, 0x0
start_time:
	.dword	0                               # 0x0
	.size	start_time, 8

	.type	end_time,@object                # @end_time
	.globl	end_time
	.p2align	3, 0x0
end_time:
	.dword	0                               # 0x0
	.size	end_time, 8

	.type	iterations,@object              # @iterations
	.data
	.globl	iterations
	.p2align	2, 0x0
iterations:
	.word	60000                           # 0xea60
	.size	iterations, 4

	.type	init_value,@object              # @init_value
	.globl	init_value
	.p2align	3, 0x0
init_value:
	.dword	0x4008000000000000              # double 3
	.size	init_value, 8

	.type	data,@object                    # @data
	.bss
	.globl	data
	.p2align	3, 0x0
data:
	.space	16000
	.size	data, 16000

	.type	dataMaster,@object              # @dataMaster
	.globl	dataMaster
	.p2align	3, 0x0
dataMaster:
	.space	16000
	.size	dataMaster, 16000

	.type	dpb,@object                     # @dpb
	.data
	.globl	dpb
	.p2align	3, 0x0
dpb:
	.dword	data
	.size	dpb, 8

	.type	dpe,@object                     # @dpe
	.globl	dpe
	.p2align	3, 0x0
dpe:
	.dword	data+16000
	.size	dpe, 8

	.type	dMpb,@object                    # @dMpb
	.globl	dMpb
	.p2align	3, 0x0
dMpb:
	.dword	dataMaster
	.size	dMpb, 8

	.type	dMpe,@object                    # @dMpe
	.globl	dMpe
	.p2align	3, 0x0
dMpe:
	.dword	dataMaster+16000
	.size	dMpe, 8

	.type	rdpb,@object                    # @rdpb
	.globl	rdpb
	.p2align	3, 0x0
rdpb:
	.dword	data+16000
	.size	rdpb, 8

	.type	rdpe,@object                    # @rdpe
	.globl	rdpe
	.p2align	3, 0x0
rdpe:
	.dword	data
	.size	rdpe, 8

	.type	rdMpb,@object                   # @rdMpb
	.globl	rdMpb
	.p2align	3, 0x0
rdMpb:
	.dword	dataMaster+16000
	.size	rdMpb, 8

	.type	rdMpe,@object                   # @rdMpe
	.globl	rdMpe
	.p2align	3, 0x0
rdMpe:
	.dword	dataMaster
	.size	rdMpe, 8

	.type	rrdpb,@object                   # @rrdpb
	.globl	rrdpb
	.p2align	3, 0x0
rrdpb:
	.space	8
	.dword	data
	.size	rrdpb, 16

	.type	rrdpe,@object                   # @rrdpe
	.globl	rrdpe
	.p2align	3, 0x0
rrdpe:
	.space	8
	.dword	data+16000
	.size	rrdpe, 16

	.type	rrdMpb,@object                  # @rrdMpb
	.globl	rrdMpb
	.p2align	3, 0x0
rrdMpb:
	.space	8
	.dword	dataMaster
	.size	rrdMpb, 16

	.type	rrdMpe,@object                  # @rrdMpe
	.globl	rrdMpe
	.p2align	3, 0x0
rrdMpe:
	.space	8
	.dword	dataMaster+16000
	.size	rrdMpe, 16

	.type	.L.str.26,@object               # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"insertion_sort double pointer verify2"
	.size	.L.str.26, 38

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"insertion_sort double vector iterator"
	.size	.L.str.27, 38

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"quicksort double pointer verify2"
	.size	.L.str.34, 33

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"quicksort double vector iterator"
	.size	.L.str.35, 33

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"heap_sort double pointer verify2"
	.size	.L.str.42, 33

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"heap_sort double vector iterator"
	.size	.L.str.43, 33

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"vector::_M_default_append"
	.size	.L.str.50, 26

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"test %i failed\n"
	.size	.L.str.51, 16

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"sort test %i failed\n"
	.size	.L.str.52, 21

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
	.addrsig_sym data
	.addrsig_sym dataMaster
