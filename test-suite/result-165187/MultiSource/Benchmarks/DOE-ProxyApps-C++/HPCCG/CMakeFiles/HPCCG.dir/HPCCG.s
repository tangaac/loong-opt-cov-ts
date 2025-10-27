	.file	"HPCCG.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	_Z5HPCCGP24HPC_Sparse_Matrix_STRUCTPKdPdidRiRdS3_ # -- Begin function _Z5HPCCGP24HPC_Sparse_Matrix_STRUCTPKdPdidRiRdS3_
	.p2align	5
	.type	_Z5HPCCGP24HPC_Sparse_Matrix_STRUCTPKdPdidRiRdS3_,@function
_Z5HPCCGP24HPC_Sparse_Matrix_STRUCTPKdPdidRiRdS3_: # @_Z5HPCCGP24HPC_Sparse_Matrix_STRUCTPKdPdidRiRdS3_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -320
	.cfi_def_cfa_offset 320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	st.d	$s5, $sp, 256                   # 8-byte Folded Spill
	st.d	$s6, $sp, 248                   # 8-byte Folded Spill
	st.d	$s7, $sp, 240                   # 8-byte Folded Spill
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 200                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 184                  # 8-byte Folded Spill
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
	.cfi_offset 58, -112
	.cfi_offset 59, -120
	.cfi_offset 60, -128
	.cfi_offset 61, -136
	st.d	$a6, $sp, 8                     # 8-byte Folded Spill
	move	$s7, $a5
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	fmov.d	$fs1, $fa0
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $a2
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	move	$s1, $a0
	pcaddu18i	$ra, %call36(_Z7mytimerv)
	jirl	$ra, $ra, 0
	ld.w	$s8, $s1, 32
	ld.w	$s3, $s1, 36
	fmov.d	$fs0, $fa0
	st.d	$zero, $sp, 176
	slti	$a0, $s8, 0
	slti	$s4, $s3, 0
	slli.d	$a1, $s8, 3
	masknez	$a1, $a1, $a0
	addi.w	$s5, $zero, -1
	maskeqz	$a0, $s5, $a0
	or	$s2, $a0, $a1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	slli.d	$a0, $s3, 3
	masknez	$a0, $a0, $s4
	maskeqz	$a1, $s5, $s4
	or	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s2
	move	$s2, $s7
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.d	$zero, $s2, 0
	st.d	$zero, $sp, 168
	pcaddu18i	$ra, %call36(_Z7mytimerv)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	movgr2fr.d	$fa1, $zero
	vldi	$vr0, -912
	move	$a0, $s8
	move	$a1, $fp
	vst	$vr1, $sp, 144                  # 16-byte Folded Spill
                                        # kill: def $f1_64 killed $f1_64 killed $vr1
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	move	$a2, $fp
	move	$a3, $s6
	pcaddu18i	$ra, %call36(_Z6waxpbyidPKddS0_Pd)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_Z7mytimerv)
	jirl	$ra, $ra, 0
	fmov.d	$fs5, $fa0
	pcaddu18i	$ra, %call36(_Z7mytimerv)
	jirl	$ra, $ra, 0
	fmov.d	$fs3, $fa0
	st.d	$s1, $sp, 72                    # 8-byte Folded Spill
	move	$a0, $s1
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_Z12HPC_sparsemvP24HPC_Sparse_Matrix_STRUCTPKdPd)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_Z7mytimerv)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	pcaddu18i	$ra, %call36(_Z7mytimerv)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	vldi	$vr0, -912
	vldi	$vr1, -784
	move	$a0, $s8
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	move	$a2, $s7
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_Z6waxpbyidPKddS0_Pd)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_Z7mytimerv)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(_Z7mytimerv)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	addi.d	$a3, $sp, 168
	addi.d	$a4, $sp, 176
	move	$a0, $s8
	move	$a1, $s0
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_Z4ddotiPKdS0_PdRd)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_Z7mytimerv)
	jirl	$ra, $ra, 0
	fld.d	$fa2, $sp, 168
	fsqrt.d	$fa1, $fa2
	fcmp.cor.d	$fcc0, $fa1, $fa1
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	bceqz	$fcc0, .LBB0_31
.LBB0_1:                                # %.split
	fst.d	$fa1, $s2, 0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$fp, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 19
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s2, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$fp, $a1, 240
	beqz	$fp, .LBB0_30
# %bb.2:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	move	$s1, $s2
	fsub.d	$fa0, $fs5, $fs2
	vld	$vr1, $sp, 144                  # 16-byte Folded Reload
	fadd.d	$fa0, $fa0, $fa1
	vld	$vr2, $sp, 96                   # 16-byte Folded Reload
	vld	$vr4, $sp, 48                   # 16-byte Folded Reload
	vextrins.d	$vr4, $vr2, 16
	ld.bu	$a1, $fp, 56
	vld	$vr2, $sp, 112                  # 16-byte Folded Reload
	vld	$vr3, $sp, 128                  # 16-byte Folded Reload
	vextrins.d	$vr3, $vr2, 16
	fsub.d	$fs2, $fs4, $fs3
	vfsub.d	$vr2, $vr4, $vr3
	vpackev.d	$vr0, $vr0, $vr1
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	beqz	$a1, .LBB0_4
# %bb.3:
	ld.bu	$a1, $fp, 67
	b	.LBB0_5
.LBB0_4:
	move	$s2, $a0
	move	$a0, $fp
	vst	$vr2, $sp, 128                  # 16-byte Folded Spill
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vld	$vr2, $sp, 128                  # 16-byte Folded Reload
	vld	$vr1, $sp, 144                  # 16-byte Folded Reload
	move	$a1, $a0
	move	$a0, $s2
.LBB0_5:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	fadd.d	$fs4, $fs2, $fa1
	vfadd.d	$vr0, $vr2, $vr0
	vst	$vr0, $sp, 144                  # 16-byte Folded Spill
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	blt	$s3, $a0, .LBB0_12
# %bb.6:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	fld.d	$fa0, $s1, 0
	fcmp.cule.d	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB0_12
# %bb.7:
	pcaddu18i	$ra, %call36(_Z7mytimerv)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	movgr2fr.d	$fa1, $zero
	vldi	$vr0, -912
	move	$a0, $s8
	move	$a1, $s0
	move	$a2, $s0
	move	$a3, $s6
	pcaddu18i	$ra, %call36(_Z6waxpbyidPKddS0_Pd)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_Z7mytimerv)
	jirl	$ra, $ra, 0
	fld.d	$fa2, $sp, 168
	fsqrt.d	$fa1, $fa2
	fcmp.cor.d	$fcc0, $fa1, $fa1
	fmov.d	$fs3, $fa0
	bceqz	$fcc0, .LBB0_32
# %bb.8:                                # %.split139
	ori	$a0, $zero, 19
	fst.d	$fa1, $s1, 0
	bltu	$a0, $s3, .LBB0_16
.LBB0_9:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$fp, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 14
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s1, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$fp, $a1, 240
	beqz	$fp, .LBB0_30
# %bb.10:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i110.peel
	ld.bu	$a1, $fp, 56
	beqz	$a1, .LBB0_14
# %bb.11:
	ld.bu	$a1, $fp, 67
	b	.LBB0_15
.LBB0_12:
	vld	$vr1, $sp, 144                  # 16-byte Folded Reload
.LBB0_13:                               # %.critedge
	fld.d	$fa0, $sp, 176
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	vst	$vr1, $fp, 8
	fst.d	$fs4, $fp, 24
	fst.d	$fa0, $fp, 32
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_Z7mytimerv)
	jirl	$ra, $ra, 0
	fsub.d	$fa0, $fa0, $fs0
	fst.d	$fa0, $fp, 0
	move	$a0, $zero
	fld.d	$fs5, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 224                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.LBB0_14:
	move	$s2, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s2
.LBB0_15:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit113.peel
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.LBB0_16:
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	vreplvei.d	$vr0, $vr0, 1
	fsub.d	$fa1, $fs3, $fs2
	fadd.d	$fa0, $fa0, $fa1
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(_Z7mytimerv)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_Z12HPC_sparsemvP24HPC_Sparse_Matrix_STRUCTPKdPd)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_Z7mytimerv)
	jirl	$ra, $ra, 0
	fsub.d	$fa0, $fa0, $fs2
	fadd.d	$fs4, $fs4, $fa0
	st.d	$zero, $sp, 160
	pcaddu18i	$ra, %call36(_Z7mytimerv)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	addi.d	$a3, $sp, 160
	addi.d	$a4, $sp, 176
	move	$a0, $s8
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_Z4ddotiPKdS0_PdRd)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_Z7mytimerv)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 168
	fld.d	$fa2, $sp, 160
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	fdiv.d	$fa0, $fa1, $fa2
	fst.d	$fa0, $sp, 160
	pcaddu18i	$ra, %call36(_Z7mytimerv)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 160
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	vldi	$vr0, -912
	move	$a0, $s8
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a2, $s6
	move	$a3, $a1
	pcaddu18i	$ra, %call36(_Z6waxpbyidPKddS0_Pd)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 160
	fneg.d	$fa1, $fa0
	vldi	$vr0, -912
	move	$a0, $s8
	move	$a1, $s0
	move	$a2, $s7
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_Z6waxpbyidPKddS0_Pd)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_Z7mytimerv)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 144                  # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vld	$vr2, $sp, 96                   # 16-byte Folded Reload
	vextrins.d	$vr2, $vr0, 16
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vld	$vr3, $sp, 48                   # 16-byte Folded Reload
	vextrins.d	$vr0, $vr3, 16
	vfsub.d	$vr0, $vr2, $vr0
	vld	$vr2, $sp, 128                  # 16-byte Folded Reload
	vextrins.d	$vr1, $vr2, 16
	vfadd.d	$vr1, $vr1, $vr0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	bltu	$s3, $a1, .LBB0_13
# %bb.17:
	fld.d	$fa0, $s1, 0
	fcmp.cule.d	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB0_13
# %bb.18:                               # %.lr.ph.peel.next.preheader
	lu12i.w	$a0, 419430
	ori	$a0, $a0, 1639
	mul.d	$a0, $s3, $a0
	srli.d	$a1, $a0, 63
	srai.d	$a0, $a0, 34
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	slti	$a1, $a0, 50
	ori	$a2, $zero, 50
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$fp, $a0, $a1
	ori	$s4, $zero, 3
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_19:                               # %.lr.ph.peel.next
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr1, $sp, 144                  # 16-byte Folded Spill
	fld.d	$fs2, $sp, 168
	pcaddu18i	$ra, %call36(_Z7mytimerv)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	addi.d	$a3, $sp, 168
	addi.d	$a4, $sp, 176
	move	$a0, $s8
	move	$a1, $s0
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_Z4ddotiPKdS0_PdRd)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_Z7mytimerv)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 168
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	fdiv.d	$fs2, $fa1, $fs2
	pcaddu18i	$ra, %call36(_Z7mytimerv)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	vldi	$vr0, -912
	move	$a0, $s8
	move	$a1, $s0
	fmov.d	$fa1, $fs2
	move	$a2, $s6
	move	$a3, $s6
	pcaddu18i	$ra, %call36(_Z6waxpbyidPKddS0_Pd)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_Z7mytimerv)
	jirl	$ra, $ra, 0
	fld.d	$fa2, $sp, 168
	fsqrt.d	$fa1, $fa2
	fcmp.cor.d	$fcc0, $fa1, $fa1
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	bceqz	$fcc0, .LBB0_29
# %bb.20:                               # %.lr.ph.peel.next.split
                                        #   in Loop: Header=BB0_19 Depth=1
	addi.w	$s2, $s4, -1
	mod.wu	$a0, $s2, $fp
	fst.d	$fa1, $s1, 0
	beqz	$a0, .LBB0_22
.LBB0_21:                               # %.lr.ph.peel.next.split
                                        #   in Loop: Header=BB0_19 Depth=1
	bne	$s3, $s4, .LBB0_27
.LBB0_22:                               #   in Loop: Header=BB0_19 Depth=1
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	ori	$a2, $zero, 12
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	move	$a0, $s3
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a2, $zero, 14
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s1, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s5, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB0_30
# %bb.23:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i110
                                        #   in Loop: Header=BB0_19 Depth=1
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_19 Depth=1
	ld.bu	$a0, $s3, 67
	b	.LBB0_26
.LBB0_25:                               #   in Loop: Header=BB0_19 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.LBB0_26:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit113
                                        #   in Loop: Header=BB0_19 Depth=1
	ext.w.b	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
.LBB0_27:                               #   in Loop: Header=BB0_19 Depth=1
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vextrins.d	$vr1, $vr0, 16
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vld	$vr2, $sp, 96                   # 16-byte Folded Reload
	vextrins.d	$vr0, $vr2, 16
	vfsub.d	$vr0, $vr1, $vr0
	vld	$vr1, $sp, 144                  # 16-byte Folded Reload
	vfadd.d	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 144                  # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(_Z7mytimerv)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_Z12HPC_sparsemvP24HPC_Sparse_Matrix_STRUCTPKdPd)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_Z7mytimerv)
	jirl	$ra, $ra, 0
	fsub.d	$fa0, $fa0, $fs2
	fadd.d	$fs4, $fs4, $fa0
	st.d	$zero, $sp, 160
	pcaddu18i	$ra, %call36(_Z7mytimerv)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	addi.d	$a3, $sp, 160
	addi.d	$a4, $sp, 176
	move	$a0, $s8
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_Z4ddotiPKdS0_PdRd)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_Z7mytimerv)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 168
	fld.d	$fa2, $sp, 160
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	fdiv.d	$fa0, $fa1, $fa2
	fst.d	$fa0, $sp, 160
	pcaddu18i	$ra, %call36(_Z7mytimerv)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 160
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	vldi	$vr0, -912
	move	$a0, $s8
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a2, $s6
	move	$a3, $a1
	pcaddu18i	$ra, %call36(_Z6waxpbyidPKddS0_Pd)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 160
	fneg.d	$fa1, $fa0
	vldi	$vr0, -912
	move	$a0, $s8
	move	$a1, $s0
	move	$a2, $s7
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_Z6waxpbyidPKddS0_Pd)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_Z7mytimerv)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vextrins.d	$vr1, $vr0, 16
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vld	$vr2, $sp, 96                   # 16-byte Folded Reload
	vextrins.d	$vr0, $vr2, 16
	vfsub.d	$vr0, $vr1, $vr0
	vld	$vr1, $sp, 144                  # 16-byte Folded Reload
	vfadd.d	$vr1, $vr1, $vr0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.w	$s2, $a0, 0
	bge	$s4, $s3, .LBB0_13
# %bb.28:                               #   in Loop: Header=BB0_19 Depth=1
	fld.d	$fa0, $s1, 0
	fcmp.clt.d	$fcc0, $fs1, $fa0
	addi.w	$s4, $s4, 1
	bcnez	$fcc0, .LBB0_19
	b	.LBB0_13
.LBB0_29:                               # %call.sqrt141
                                        #   in Loop: Header=BB0_19 Depth=1
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	fmov.d	$fa0, $fa2
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	addi.w	$s2, $s4, -1
	mod.wu	$a0, $s2, $fp
	fst.d	$fa1, $s1, 0
	bnez	$a0, .LBB0_21
	b	.LBB0_22
.LBB0_30:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.LBB0_31:                               # %call.sqrt
	fmov.d	$fa0, $fa2
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	b	.LBB0_1
.LBB0_32:                               # %call.sqrt140
	fmov.d	$fa0, $fa2
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	ori	$a0, $zero, 19
	fst.d	$fa1, $s1, 0
	bgeu	$a0, $s3, .LBB0_9
	b	.LBB0_16
.Lfunc_end0:
	.size	_Z5HPCCGP24HPC_Sparse_Matrix_STRUCTPKdPdidRiRdS3_, .Lfunc_end0-_Z5HPCCGP24HPC_Sparse_Matrix_STRUCTPKdPdidRiRdS3_
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Initial Residual = "
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Iteration = "
	.size	.L.str.1, 13

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"   Residual = "
	.size	.L.str.2, 15

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _ZSt4cout
