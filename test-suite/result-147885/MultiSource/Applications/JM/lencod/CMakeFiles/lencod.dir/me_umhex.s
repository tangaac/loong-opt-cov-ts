	.file	"me_umhex.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function UMHEX_DefineThreshold
.LCPI0_0:
	.word	0x3c23d70a                      # float 0.00999999977
	.word	0x3c23d70a                      # float 0.00999999977
	.word	0x3c23d70a                      # float 0.00999999977
	.word	0x3ca3d70a                      # float 0.0199999996
.LCPI0_1:
	.word	0x3d75c28f                      # float 0.0599999987
	.word	0x3d8f5c29                      # float 0.0700000003
	.word	0x3d8f5c29                      # float 0.0700000003
	.word	0x3da3d70a                      # float 0.0799999982
	.text
	.globl	UMHEX_DefineThreshold
	.p2align	5
	.type	UMHEX_DefineThreshold,@function
UMHEX_DefineThreshold:                  # @UMHEX_DefineThreshold
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_0)
	pcalau12i	$a0, %pc_hi20(AlphaFourth_1)
	addi.d	$a0, $a0, %pc_lo12(AlphaFourth_1)
	vst	$vr0, $a0, 4
	lu12i.w	$a1, 249692
	ori	$a1, $a1, 655
	bstrins.d	$a1, $a1, 61, 32
	st.d	$a1, $a0, 20
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_1)
	lu12i.w	$a1, 250429
	ori	$a1, $a1, 1802
	st.w	$a1, $a0, 28
	pcalau12i	$a0, %pc_hi20(AlphaFourth_2)
	addi.d	$a0, $a0, %pc_lo12(AlphaFourth_2)
	vst	$vr0, $a0, 4
	lu12i.w	$a1, 253788
	ori	$a1, $a1, 655
	lu32i.d	$a1, 83886
	lu52i.d	$a1, $a1, 990
	st.d	$a1, $a0, 20
	lu12i.w	$a1, 254361
	ori	$a1, $a1, 2458
	st.w	$a1, $a0, 28
	pcaddu18i	$t8, %call36(UMHEX_DefineThresholdMB)
	jr	$t8
.Lfunc_end0:
	.size	UMHEX_DefineThreshold, .Lfunc_end0-UMHEX_DefineThreshold
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function UMHEX_DefineThresholdMB
.LCPI1_0:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
.LCPI1_2:
	.dword	0xbfeccccccccccccd              # double -0.90000000000000002
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI1_1:
	.word	0x424c0000                      # float 51
.LCPI1_3:
	.word	0x41b3851f                      # float 22.4400005
.LCPI1_4:
	.word	0x43800000                      # float 256
.LCPI1_5:
	.word	0x43960000                      # float 300
.LCPI1_6:
	.word	0x42f00000                      # float 120
.LCPI1_10:
	.word	0x42a00000                      # float 80
.LCPI1_11:
	.word	0x43c80000                      # float 400
.LCPI1_12:
	.word	0x437a0000                      # float 250
.LCPI1_13:
	.word	0x42200000                      # float 40
.LCPI1_14:
	.word	0x43480000                      # float 200
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_7:
	.word	0x443b8000                      # float 750
	.word	0x43af0000                      # float 350
	.word	0x43af0000                      # float 350
	.word	0x432a0000                      # float 170
.LCPI1_8:
	.word	0x453b8000                      # float 3000
	.word	0x44bb8000                      # float 1500
	.word	0x44bb8000                      # float 1500
	.word	0x44480000                      # float 800
.LCPI1_9:
	.word	0x45098000                      # float 2200
	.word	0x447a0000                      # float 1000
	.word	0x447a0000                      # float 1000
	.word	0x43fa0000                      # float 500
.LCPI1_15:
	.word	0x42700000                      # float 60
	.word	0x41f00000                      # float 30
	.word	0x41f00000                      # float 30
	.word	0x41700000                      # float 15
	.text
	.globl	UMHEX_DefineThresholdMB
	.p2align	5
	.type	UMHEX_DefineThresholdMB,@function
UMHEX_DefineThresholdMB:                # @UMHEX_DefineThresholdMB
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 16
	lu12i.w	$a2, 174762
	ori	$a2, $a2, 2731
	mul.d	$a2, $a1, $a2
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 32
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 2
	ldptr.w	$a0, $a0, 5252
	alsl.d	$a3, $a2, $a3, 1
	sub.w	$a3, $a1, $a3
	addi.d	$a2, $a2, 15
	movgr2fr.w	$fa0, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ffint.d.w	$fa0, $fa0
	pcalau12i	$a4, %pc_hi20(.LCPI1_0)
	fld.d	$fa1, $a4, %pc_lo12(.LCPI1_0)
	ld.d	$a0, $a0, 0
	fneg.d	$fa2, $fa0
	vldi	$vr3, -912
	fmadd.d	$fa2, $fa2, $fa1, $fa3
	ld.w	$a0, $a0, 52
	fmul.d	$fa0, $fa0, $fa1
	lu12i.w	$a4, 190650
	ori	$a4, $a4, 745
	mul.d	$a0, $a0, $a4
	srli.d	$a4, $a0, 63
	srai.d	$a0, $a0, 37
	add.d	$a0, $a0, $a4
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fcvt.s.d	$fa0, $fa0
	movgr2fr.w	$fa1, $a1
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	fld.s	$fa2, $a0, %pc_lo12(.LCPI1_1)
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	fld.d	$fa4, $a0, %pc_lo12(.LCPI1_2)
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa1, $fa1, $fa2
	fcvt.d.s	$fa1, $fa1
	fmadd.d	$fa1, $fa1, $fa4, $fa3
	fcvt.s.d	$fa1, $fa1
	ori	$a0, $zero, 1
	sll.w	$a0, $a0, $a2
	lu12i.w	$a1, -174763
	ori	$a1, $a1, 1365
	mul.d	$a1, $a0, $a1
	srli.d	$a2, $a1, 63
	slli.d	$a3, $a3, 6
	pcalau12i	$a4, %pc_hi20(quant_coef)
	addi.d	$a4, $a4, %pc_lo12(quant_coef)
	ldx.w	$a3, $a4, $a3
	srli.d	$a1, $a1, 32
	add.d	$a1, $a1, $a2
	add.w	$a0, $a1, $a0
	div.w	$a0, $a0, $a3
	movgr2fr.w	$fa2, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI1_3)
	fld.s	$fa3, $a0, %pc_lo12(.LCPI1_3)
	ffint.s.w	$fa2, $fa2
	pcalau12i	$a0, %pc_hi20(.LCPI1_4)
	fld.s	$fa4, $a0, %pc_lo12(.LCPI1_4)
	fdiv.s	$fa2, $fa2, $fa3
	fadd.s	$fa2, $fa2, $fa2
	fmul.s	$fa2, $fa2, $fa0
	fmul.s	$fa2, $fa2, $fa4
	pcalau12i	$a0, %pc_hi20(Bsize)
	addi.d	$a0, $a0, %pc_lo12(Bsize)
	fst.s	$fa2, $a0, 28
	vldi	$vr3, -1264
	fmul.s	$fa2, $fa2, $fa3
	fst.s	$fa2, $a0, 24
	fst.s	$fa2, $a0, 20
	fmul.s	$fa2, $fa2, $fa3
	fst.s	$fa2, $a0, 16
	fmul.s	$fa2, $fa2, $fa3
	fst.s	$fa2, $a0, 12
	pcalau12i	$a1, %pc_hi20(.LCPI1_5)
	fld.s	$fa4, $a1, %pc_lo12(.LCPI1_5)
	fst.s	$fa2, $a0, 8
	fmul.s	$fa2, $fa2, $fa3
	fst.s	$fa2, $a0, 4
	fmul.s	$fa2, $fa0, $fa4
	pcalau12i	$a0, %pc_hi20(.LCPI1_6)
	fld.s	$fa3, $a0, %pc_lo12(.LCPI1_6)
	fmul.s	$fa2, $fa2, $fa1
	ftintrz.w.s	$fa2, $fa2
	movfr2gr.s	$a1, $fa2
	fmul.s	$fa2, $fa0, $fa3
	fmul.s	$fa2, $fa2, $fa1
	pcalau12i	$a0, %pc_hi20(.LCPI1_7)
	vld	$vr3, $a0, %pc_lo12(.LCPI1_7)
	ftintrz.w.s	$fa2, $fa2
	movfr2gr.s	$a0, $fa2
	vreplvei.w	$vr2, $vr0, 0
	vfmul.s	$vr4, $vr2, $vr3
	vreplvei.w	$vr3, $vr1, 0
	vfmul.s	$vr4, $vr4, $vr3
	vftintrz.w.s	$vr4, $vr4
	pcalau12i	$a2, %pc_hi20(.LCPI1_8)
	vld	$vr5, $a2, %pc_lo12(.LCPI1_8)
	pcalau12i	$a2, %pc_hi20(Median_Pred_Thd_MB)
	addi.d	$a2, $a2, %pc_lo12(Median_Pred_Thd_MB)
	vst	$vr4, $a2, 4
	vfmul.s	$vr4, $vr2, $vr5
	vfmul.s	$vr4, $vr4, $vr3
	vftintrz.w.s	$vr4, $vr4
	pcalau12i	$a3, %pc_hi20(.LCPI1_9)
	vld	$vr5, $a3, %pc_lo12(.LCPI1_9)
	pcalau12i	$a3, %pc_hi20(Big_Hexagon_Thd_MB)
	addi.d	$a3, $a3, %pc_lo12(Big_Hexagon_Thd_MB)
	vst	$vr4, $a3, 4
	vfmul.s	$vr4, $vr2, $vr5
	vfmul.s	$vr4, $vr4, $vr3
	vftintrz.w.s	$vr4, $vr4
	pcalau12i	$a4, %pc_hi20(.LCPI1_10)
	fld.s	$fa5, $a4, %pc_lo12(.LCPI1_10)
	pcalau12i	$a4, %pc_hi20(Threshold_DSR_MB)
	addi.d	$a4, $a4, %pc_lo12(Threshold_DSR_MB)
	vst	$vr4, $a4, 4
	fmul.s	$fa4, $fa0, $fa5
	pcalau12i	$a5, %pc_hi20(.LCPI1_11)
	fld.s	$fa5, $a5, %pc_lo12(.LCPI1_11)
	fmul.s	$fa4, $fa4, $fa1
	ftintrz.w.s	$fa4, $fa4
	movfr2gr.s	$a5, $fa4
	fmul.s	$fa4, $fa0, $fa5
	pcalau12i	$a6, %pc_hi20(.LCPI1_12)
	fld.s	$fa5, $a6, %pc_lo12(.LCPI1_12)
	fmul.s	$fa4, $fa4, $fa1
	ftintrz.w.s	$fa4, $fa4
	movfr2gr.s	$a6, $fa4
	fmul.s	$fa4, $fa0, $fa5
	fmul.s	$fa4, $fa4, $fa1
	ftintrz.w.s	$fa4, $fa4
	movfr2gr.s	$a7, $fa4
	pcalau12i	$t0, %pc_hi20(.LCPI1_13)
	fld.s	$fa4, $t0, %pc_lo12(.LCPI1_13)
	pcalau12i	$t0, %pc_hi20(Multi_Ref_Thd_MB)
	addi.d	$t0, $t0, %pc_lo12(Multi_Ref_Thd_MB)
	st.w	$a1, $t0, 4
	st.w	$a5, $a2, 20
	st.w	$a5, $a2, 24
	fmul.s	$fa4, $fa0, $fa4
	fmul.s	$fa4, $fa4, $fa1
	ftintrz.w.s	$fa4, $fa4
	movfr2gr.s	$a1, $fa4
	pcalau12i	$a5, %pc_hi20(.LCPI1_14)
	fld.s	$fa4, $a5, %pc_lo12(.LCPI1_14)
	st.w	$a0, $t0, 8
	st.w	$a0, $t0, 12
	st.w	$a6, $a3, 20
	st.w	$a7, $a4, 20
	st.w	$a6, $a3, 24
	st.w	$a7, $a4, 24
	st.w	$a1, $a2, 28
	fmul.s	$fa0, $fa0, $fa4
	fmul.s	$fa0, $fa0, $fa1
	pcalau12i	$a1, %pc_hi20(.LCPI1_15)
	vld	$vr1, $a1, %pc_lo12(.LCPI1_15)
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	st.w	$a1, $a3, 28
	vfmul.s	$vr0, $vr2, $vr1
	vfmul.s	$vr0, $vr0, $vr3
	vftintrz.w.s	$vr0, $vr0
	vst	$vr0, $t0, 16
	st.w	$a0, $a4, 28
	ret
.Lfunc_end1:
	.size	UMHEX_DefineThresholdMB, .Lfunc_end1-UMHEX_DefineThresholdMB
                                        # -- End function
	.globl	UMHEX_get_mem                   # -- Begin function UMHEX_get_mem
	.p2align	5
	.type	UMHEX_get_mem,@function
UMHEX_get_mem:                          # @UMHEX_get_mem
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s0, 0
	ld.w	$a0, $a0, 52
	srai.d	$a0, $a0, 4
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 1
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(flag_intra)
	st.d	$a0, $a1, %pc_lo12(flag_intra)
	bnez	$a0, .LBB2_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB2_2:
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$s2, $a0, %got_pc_lo12(input)
	ld.d	$a0, $s2, 0
	ld.w	$a0, $a0, 28
	slli.d	$a0, $a0, 1
	addi.w	$a1, $a0, 1
	pcalau12i	$a0, %pc_hi20(McostState)
	addi.d	$a0, $a0, %pc_lo12(McostState)
	move	$a2, $a1
	pcaddu18i	$ra, %call36(get_mem2D)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ld.w	$a1, $a1, 32
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(fastme_ref_cost)
	addi.d	$a0, $a0, %pc_lo12(fastme_ref_cost)
	ori	$a2, $zero, 9
	ori	$a3, $zero, 4
	ori	$a4, $zero, 4
	pcaddu18i	$ra, %call36(get_mem4Dint)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ld.w	$a2, $a1, 68
	add.d	$fp, $a0, $fp
	ld.w	$a0, $a1, 52
	bstrpick.d	$a1, $a2, 62, 61
	add.w	$a1, $a2, $a1
	srai.d	$a2, $a1, 2
	bstrpick.d	$a1, $a0, 62, 61
	add.w	$a0, $a0, $a1
	srai.d	$a3, $a0, 2
	pcalau12i	$a0, %pc_hi20(fastme_l0_cost)
	addi.d	$a0, $a0, %pc_lo12(fastme_l0_cost)
	ori	$a1, $zero, 9
	pcaddu18i	$ra, %call36(get_mem3Dint)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ld.w	$a2, $a1, 68
	add.d	$fp, $fp, $a0
	ld.w	$a0, $a1, 52
	bstrpick.d	$a1, $a2, 62, 61
	add.w	$a1, $a2, $a1
	srai.d	$a2, $a1, 2
	bstrpick.d	$a1, $a0, 62, 61
	add.w	$a0, $a0, $a1
	srai.d	$a3, $a0, 2
	pcalau12i	$a0, %pc_hi20(fastme_l1_cost)
	addi.d	$a0, $a0, %pc_lo12(fastme_l1_cost)
	ori	$a1, $zero, 9
	pcaddu18i	$ra, %call36(get_mem3Dint)
	jirl	$ra, $ra, 0
	add.d	$fp, $fp, $a0
	pcalau12i	$a0, %pc_hi20(SearchState)
	addi.d	$a0, $a0, %pc_lo12(SearchState)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 7
	pcaddu18i	$ra, %call36(get_mem2D)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ld.w	$a1, $a1, 52
	add.d	$fp, $fp, $a0
	bstrpick.d	$a0, $a1, 62, 61
	add.w	$a0, $a1, $a0
	srai.d	$a2, $a0, 2
	pcalau12i	$a0, %pc_hi20(fastme_best_cost)
	addi.d	$a0, $a0, %pc_lo12(fastme_best_cost)
	ori	$a1, $zero, 7
	pcaddu18i	$ra, %call36(get_mem2Dint)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ldptr.w	$a1, $a1, 2120
	add.w	$fp, $fp, $a0
	bne	$a1, $s1, .LBB2_4
# %bb.3:
	ld.d	$a0, $s0, 0
	ld.w	$a1, $a0, 68
	ld.w	$a0, $a0, 52
	bstrpick.d	$a2, $a1, 62, 61
	add.w	$a1, $a1, $a2
	srai.d	$a2, $a1, 2
	bstrpick.d	$a1, $a0, 62, 61
	add.w	$a0, $a0, $a1
	srai.d	$a3, $a0, 2
	pcalau12i	$a0, %pc_hi20(fastme_l0_cost_bipred)
	addi.d	$a0, $a0, %pc_lo12(fastme_l0_cost_bipred)
	ori	$a1, $zero, 9
	pcaddu18i	$ra, %call36(get_mem3Dint)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ld.w	$a2, $a1, 68
	add.d	$fp, $a0, $fp
	ld.w	$a0, $a1, 52
	bstrpick.d	$a1, $a2, 62, 61
	add.w	$a1, $a2, $a1
	srai.d	$a2, $a1, 2
	bstrpick.d	$a1, $a0, 62, 61
	add.w	$a0, $a0, $a1
	srai.d	$a3, $a0, 2
	pcalau12i	$a0, %pc_hi20(fastme_l1_cost_bipred)
	addi.d	$a0, $a0, %pc_lo12(fastme_l1_cost_bipred)
	ori	$a1, $zero, 9
	pcaddu18i	$ra, %call36(get_mem3Dint)
	jirl	$ra, $ra, 0
	add.w	$fp, $fp, $a0
.LBB2_4:
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end2:
	.size	UMHEX_get_mem, .Lfunc_end2-UMHEX_get_mem
                                        # -- End function
	.globl	UMHEX_free_mem                  # -- Begin function UMHEX_free_mem
	.p2align	5
	.type	UMHEX_free_mem,@function
UMHEX_free_mem:                         # @UMHEX_free_mem
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(McostState)
	ld.d	$a0, $a0, %pc_lo12(McostState)
	pcaddu18i	$ra, %call36(free_mem2D)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(fastme_ref_cost)
	ld.d	$a0, $a0, %pc_lo12(fastme_ref_cost)
	ld.w	$a1, $a1, 32
	ori	$a2, $zero, 9
	pcaddu18i	$ra, %call36(free_mem4Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(fastme_l0_cost)
	ld.d	$a0, $a0, %pc_lo12(fastme_l0_cost)
	ori	$a1, $zero, 9
	pcaddu18i	$ra, %call36(free_mem3Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(fastme_l1_cost)
	ld.d	$a0, $a0, %pc_lo12(fastme_l1_cost)
	ori	$a1, $zero, 9
	pcaddu18i	$ra, %call36(free_mem3Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(SearchState)
	ld.d	$a0, $a0, %pc_lo12(SearchState)
	pcaddu18i	$ra, %call36(free_mem2D)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(fastme_best_cost)
	ld.d	$a0, $a0, %pc_lo12(fastme_best_cost)
	pcaddu18i	$ra, %call36(free_mem2Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(flag_intra)
	ld.d	$a0, $a0, %pc_lo12(flag_intra)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 2120
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB3_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(fastme_l0_cost_bipred)
	ld.d	$a0, $a0, %pc_lo12(fastme_l0_cost_bipred)
	ori	$a1, $zero, 9
	pcaddu18i	$ra, %call36(free_mem3Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(fastme_l1_cost_bipred)
	ld.d	$a0, $a0, %pc_lo12(fastme_l1_cost_bipred)
	ori	$a1, $zero, 9
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free_mem3Dint)
	jr	$t8
.LBB3_2:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	UMHEX_free_mem, .Lfunc_end3-UMHEX_free_mem
                                        # -- End function
	.globl	UMHEXIntegerPelBlockMotionSearch # -- Begin function UMHEXIntegerPelBlockMotionSearch
	.p2align	5
	.type	UMHEXIntegerPelBlockMotionSearch,@function
UMHEXIntegerPelBlockMotionSearch:       # @UMHEXIntegerPelBlockMotionSearch
# %bb.0:
	addi.d	$sp, $sp, -592
	st.d	$ra, $sp, 584                   # 8-byte Folded Spill
	st.d	$fp, $sp, 576                   # 8-byte Folded Spill
	st.d	$s0, $sp, 568                   # 8-byte Folded Spill
	st.d	$s1, $sp, 560                   # 8-byte Folded Spill
	st.d	$s2, $sp, 552                   # 8-byte Folded Spill
	st.d	$s3, $sp, 544                   # 8-byte Folded Spill
	st.d	$s4, $sp, 536                   # 8-byte Folded Spill
	st.d	$s5, $sp, 528                   # 8-byte Folded Spill
	st.d	$s6, $sp, 520                   # 8-byte Folded Spill
	st.d	$s7, $sp, 512                   # 8-byte Folded Spill
	st.d	$s8, $sp, 504                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 496                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 488                  # 8-byte Folded Spill
	pcalau12i	$t0, %got_pc_hi20(img)
	ld.d	$t4, $t0, %got_pc_lo12(img)
	ld.d	$t0, $t4, 0
	ldptr.w	$t1, $t0, 15268
	ld.d	$t2, $sp, 592
	move	$s4, $a5
	st.d	$a4, $sp, 248                   # 8-byte Folded Spill
	st.d	$a3, $sp, 240                   # 8-byte Folded Spill
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	beqz	$t1, .LBB4_3
# %bb.1:
	ld.w	$a0, $t0, 12
	ldptr.d	$a1, $t0, 14224
	ori	$a3, $zero, 536
	mul.d	$a3, $a0, $a3
	add.d	$a1, $a1, $a3
	ld.w	$a1, $a1, 424
	beqz	$a1, .LBB4_3
# %bb.2:
	andi	$a0, $a0, 1
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 4
	masknez	$a1, $a1, $a0
	ori	$a3, $zero, 2
	maskeqz	$a0, $a3, $a0
	or	$t3, $a0, $a1
	b	.LBB4_4
.LBB4_3:
	move	$t3, $zero
.LBB4_4:
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ld.d	$t6, $sp, 600
	alsl.d	$a4, $s4, $a0, 3
	pcalau12i	$a1, %pc_hi20(active_pps)
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.h	$t8, $t2, 0
	pcalau12i	$a3, %pc_hi20(fastme_best_cost)
	ld.d	$a3, $a3, %pc_lo12(fastme_best_cost)
	ld.w	$a5, $a1, 192
	slli.d	$t7, $s4, 2
	pcalau12i	$t1, %pc_hi20(Median_Pred_Thd_MB)
	addi.d	$t5, $t1, %pc_lo12(Median_Pred_Thd_MB)
	alsl.d	$t1, $s4, $a3, 3
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	beqz	$a5, .LBB4_7
# %bb.5:
	ld.w	$a3, $t0, 20
	beqz	$a3, .LBB4_9
# %bb.6:
	ori	$a5, $zero, 3
	beq	$a3, $a5, .LBB4_9
.LBB4_7:
	ld.w	$a1, $a1, 196
	beqz	$a1, .LBB4_10
# %bb.8:
	ld.w	$a1, $t0, 20
	ori	$a3, $zero, 1
	bne	$a1, $a3, .LBB4_10
.LBB4_9:
	ldptr.w	$a1, $a0, 2936
	sltu	$a1, $zero, $a1
	ori	$a3, $zero, 3
	maskeqz	$s0, $a3, $a1
	b	.LBB4_11
.LBB4_10:
	move	$a1, $zero
	move	$s0, $zero
.LBB4_11:                               # %.thread
	ld.w	$a3, $t0, 192
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	ld.w	$a3, $t0, 196
	st.d	$a3, $sp, 224                   # 8-byte Folded Spill
	ld.h	$s7, $t6, 0
	pcalau12i	$a3, %got_pc_hi20(listX)
	ld.d	$a5, $a3, %got_pc_lo12(listX)
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	st.d	$t8, $sp, 304                   # 8-byte Folded Spill
	add.w	$t8, $a3, $t8
	add.w	$a3, $t3, $a2
	slli.d	$a3, $a3, 3
	ldx.d	$a5, $a5, $a3
	ld.w	$t0, $a4, 76
	st.d	$t0, $sp, 296                   # 8-byte Folded Spill
	ld.w	$a4, $a4, 72
	st.d	$a4, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	slli.d	$a4, $a4, 3
	ldx.d	$a5, $a5, $a4
	ldx.w	$s1, $t5, $t7
	ld.d	$t7, $t1, -8
	pcalau12i	$t2, %pc_hi20(dist_method)
	ldptr.d	$a4, $a5, 6448
	pcalau12i	$t0, %got_pc_hi20(ref_pic_sub)
	ld.d	$fp, $t0, %got_pc_lo12(ref_pic_sub)
	lu12i.w	$s2, 1
	ori	$t0, $s2, 2296
	ldx.w	$t5, $a5, $t0
	pcalau12i	$t0, %got_pc_hi20(img_width)
	ld.d	$t0, $t0, %got_pc_lo12(img_width)
	pcalau12i	$t1, %pc_hi20(ref_pic_ptr)
	st.d	$a5, $t1, %pc_lo12(ref_pic_ptr)
	st.d	$a4, $fp, 0
	st.h	$t5, $t0, 0
	ori	$a4, $s2, 2312
	ldx.w	$t0, $a5, $a4
	ori	$a4, $s2, 2300
	ldx.w	$a4, $a5, $a4
	pcalau12i	$t1, %pc_hi20(width_pad)
	st.w	$t0, $t1, %pc_lo12(width_pad)
	pcalau12i	$t0, %got_pc_hi20(img_height)
	ld.d	$t0, $t0, %got_pc_lo12(img_height)
	ori	$t1, $s2, 2316
	ldx.w	$t1, $a5, $t1
	st.d	$t2, $sp, 216                   # 8-byte Folded Spill
	st.w	$s0, $t2, %pc_lo12(dist_method)
	st.h	$a4, $t0, 0
	pcalau12i	$t0, %pc_hi20(height_pad)
	st.w	$t1, $t0, %pc_lo12(height_pad)
	beqz	$a1, .LBB4_13
# %bb.12:
	pcalau12i	$t0, %pc_hi20(wp_weight)
	ld.d	$t0, $t0, %pc_lo12(wp_weight)
	ldx.d	$t0, $t0, $a3
	ld.d	$t1, $sp, 200                   # 8-byte Folded Reload
	slli.d	$t1, $t1, 3
	pcalau12i	$t2, %pc_hi20(wp_offset)
	ld.d	$t2, $t2, %pc_lo12(wp_offset)
	ldx.d	$t0, $t0, $t1
	ldx.d	$t2, $t2, $a3
	ld.w	$t0, $t0, 0
	pcalau12i	$t3, %got_pc_hi20(weight_luma)
	ld.d	$t3, $t3, %got_pc_lo12(weight_luma)
	ldx.d	$t1, $t2, $t1
	st.w	$t0, $t3, 0
	ld.w	$t0, $t1, 0
	pcalau12i	$t1, %got_pc_hi20(offset_luma)
	ld.d	$t1, $t1, %got_pc_lo12(offset_luma)
	st.w	$t0, $t1, 0
.LBB4_13:
	st.d	$t6, $sp, 128                   # 8-byte Folded Spill
	st.d	$t4, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$t0, %got_pc_hi20(ChromaMEEnable)
	ld.d	$t0, $t0, %got_pc_lo12(ChromaMEEnable)
	ld.w	$t0, $t0, 0
	ld.d	$t2, $sp, 608
	ld.d	$t1, $sp, 248                   # 8-byte Folded Reload
	add.w	$t3, $t1, $s7
	beqz	$t0, .LBB4_16
# %bb.14:
	ldptr.d	$t0, $a5, 6464
	ld.d	$t1, $t0, 0
	st.d	$t1, $fp, 8
	ld.d	$t0, $t0, 8
	st.d	$t0, $fp, 16
	ori	$t0, $s2, 2320
	ldx.w	$t0, $a5, $t0
	ori	$t1, $s2, 2324
	ldx.w	$a5, $a5, $t1
	pcalau12i	$t1, %pc_hi20(width_pad_cr)
	st.w	$t0, $t1, %pc_lo12(width_pad_cr)
	pcalau12i	$t0, %pc_hi20(height_pad_cr)
	st.w	$a5, $t0, %pc_lo12(height_pad_cr)
	beqz	$a1, .LBB4_16
# %bb.15:
	pcalau12i	$a1, %pc_hi20(wp_weight)
	ld.d	$a1, $a1, %pc_lo12(wp_weight)
	ldx.d	$a1, $a1, $a3
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	slli.d	$a5, $a5, 3
	ldx.d	$a1, $a1, $a5
	ld.d	$a1, $a1, 4
	pcalau12i	$t0, %got_pc_hi20(weight_cr)
	ld.d	$t1, $t0, %got_pc_lo12(weight_cr)
	pcalau12i	$t0, %pc_hi20(wp_offset)
	ld.d	$t0, $t0, %pc_lo12(wp_offset)
	st.d	$a1, $t1, 0
	ldx.d	$a1, $t0, $a3
	ldx.d	$a1, $a1, $a5
	ld.w	$a3, $a1, 4
	pcalau12i	$a5, %got_pc_hi20(offset_cr)
	ld.d	$a5, $a5, %got_pc_lo12(offset_cr)
	ld.w	$a1, $a1, 8
	st.w	$a3, $a5, 0
	st.w	$a1, $a5, 4
.LBB4_16:
	ld.d	$a1, $sp, 624
	st.d	$a1, $sp, 344                   # 8-byte Folded Spill
	ld.d	$s2, $sp, 616
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	alsl.w	$a1, $a1, $a6, 2
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	alsl.w	$a1, $a1, $a7, 2
	st.d	$a1, $sp, 336                   # 8-byte Folded Spill
	st.d	$a2, $sp, 352                   # 8-byte Folded Spill
	st.d	$t8, $sp, 264                   # 8-byte Folded Spill
	st.d	$t2, $sp, 280                   # 8-byte Folded Spill
	st.d	$t3, $sp, 272                   # 8-byte Folded Spill
	st.d	$t7, $sp, 152                   # 8-byte Folded Spill
	st.d	$a7, $sp, 112                   # 8-byte Folded Spill
	st.d	$a6, $sp, 160                   # 8-byte Folded Spill
	bge	$t2, $t8, .LBB4_21
# %bb.17:
	ext.w.h	$a2, $t5
	nor	$a1, $t2, $zero
	ld.d	$a3, $sp, 312                   # 8-byte Folded Reload
	sub.d	$a3, $a1, $a3
	add.w	$a2, $a3, $a2
	bge	$t8, $a2, .LBB4_21
# %bb.18:
	bge	$t2, $t3, .LBB4_21
# %bb.19:
	ext.w.h	$a2, $a4
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a3
	add.w	$a1, $a1, $a2
	bge	$t3, $a1, .LBB4_21
# %bb.20:
	move	$a1, $zero
	b	.LBB4_22
.LBB4_21:
	ori	$a1, $zero, 1
.LBB4_22:
	pcalau12i	$a2, %got_pc_hi20(ref_access_method)
	ld.d	$a2, $a2, %got_pc_lo12(ref_access_method)
	pcalau12i	$s6, %pc_hi20(McostState)
	ld.d	$a3, $s6, %pc_lo12(McostState)
	ld.w	$a4, $a0, 28
	st.w	$a1, $a2, 0
	ld.d	$a0, $a3, 0
	slli.d	$a1, $a4, 1
	addi.d	$a1, $a1, 1
	mul.w	$a2, $a1, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(mvbits)
	ld.d	$a0, $a0, %got_pc_lo12(mvbits)
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	ld.d	$s3, $sp, 264                   # 8-byte Folded Reload
	slli.d	$a1, $s3, 2
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	slli.d	$a2, $s5, 2
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	add.d	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(computeUniPred)
	ld.d	$a2, $a1, %got_pc_lo12(computeUniPred)
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$fp, $a0, 16
	slli.d	$a0, $s0, 3
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	ldx.d	$a6, $a2, $a0
	sub.w	$a3, $s2, $fp
	ori	$a0, $zero, 80
	alsl.w	$a4, $s3, $a0, 2
	alsl.w	$a5, $s5, $a0, 2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	move	$t0, $s6
	move	$a7, $s5
	move	$a5, $s3
	ld.d	$a1, $s6, %pc_lo12(McostState)
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	slli.d	$a2, $a6, 3
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	ldx.d	$a1, $a1, $a2
	add.w	$a2, $fp, $a0
	ori	$a0, $zero, 1
	stx.b	$a0, $a1, $a6
	slt	$a1, $a2, $s2
	maskeqz	$s0, $s3, $a1
	addi.w	$s3, $s0, -1
	sub.w	$a0, $s3, $a5
	srai.d	$a3, $a0, 31
	xor	$a4, $a0, $a3
	sub.w	$a3, $a4, $a3
	maskeqz	$a2, $a2, $a1
	masknez	$a4, $s2, $a1
	maskeqz	$s8, $s5, $a1
	or	$s6, $a2, $a4
	st.d	$s4, $sp, 176                   # 8-byte Folded Spill
	st.d	$t0, $sp, 232                   # 8-byte Folded Spill
	bge	$a6, $a3, .LBB4_24
# %bb.23:
	move	$t5, $s0
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	b	.LBB4_29
.LBB4_24:
	sub.w	$a1, $s8, $a7
	srai.d	$a2, $a1, 31
	xor	$a3, $a1, $a2
	sub.w	$a2, $a3, $a2
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	bltu	$a6, $a2, .LBB4_28
# %bb.25:
	ld.d	$a2, $t0, %pc_lo12(McostState)
	add.w	$a1, $a1, $a6
	slli.d	$s2, $a1, 3
	ldx.d	$a1, $a2, $s2
	add.w	$fp, $a0, $a6
	ldx.bu	$a0, $a1, $fp
	bnez	$a0, .LBB4_28
# %bb.26:
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	slli.d	$a0, $s3, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $a2, $a1
	slli.d	$a1, $s8, 2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a4, $a1, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a2, $a2, $a4
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	mul.w	$a2, $a2, $a3
	srai.d	$s4, $a2, 16
	bge	$s4, $s6, .LBB4_28
# %bb.27:
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a6, $a3, $a2
	sub.w	$a3, $s6, $s4
	addi.w	$a4, $a0, 80
	addi.w	$a5, $a1, 80
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $t0, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s2
	add.w	$a0, $a0, $s4
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $fp
	slt	$a1, $a0, $s6
	masknez	$a2, $s0, $a1
	maskeqz	$a3, $s3, $a1
	or	$t5, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$s6, $a0, $a1
	b	.LBB4_29
.LBB4_28:
	move	$t5, $s0
.LBB4_29:
	sub.w	$s2, $s0, $a5
	srai.d	$a0, $s2, 31
	xor	$a1, $s2, $a0
	sub.w	$s4, $a1, $a0
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	blt	$a6, $s4, .LBB4_31
# %bb.30:
	addi.w	$s5, $s8, 1
	sub.w	$a0, $s5, $a7
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	bgeu	$a6, $a1, .LBB4_39
.LBB4_31:
	move	$fp, $s7
.LBB4_32:
	move	$t6, $s8
.LBB4_33:
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	sub.d	$s1, $a0, $a1
	addi.w	$s7, $s0, 1
	sub.w	$a0, $s7, $a5
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	sub.d	$s5, $a2, $a3
	blt	$a6, $a1, .LBB4_44
# %bb.34:
	sub.w	$a1, $s8, $a7
	srai.d	$a2, $a1, 31
	xor	$a3, $a1, $a2
	sub.w	$a2, $a3, $a2
	bltu	$a6, $a2, .LBB4_44
# %bb.35:
	ld.d	$a2, $t0, %pc_lo12(McostState)
	add.w	$a1, $a1, $a6
	slli.d	$s3, $a1, 3
	ldx.d	$a1, $a2, $s3
	add.w	$t2, $a0, $a6
	ldx.bu	$a0, $a1, $t2
	bnez	$a0, .LBB4_44
# %bb.36:
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	slli.d	$a0, $s7, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $a2, $a1
	slli.d	$a1, $s8, 2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a4, $a1, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a2, $a2, $a4
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	mul.w	$a2, $a2, $a3
	move	$a4, $s6
	srai.d	$s6, $a2, 16
	bge	$s6, $a4, .LBB4_43
# %bb.37:
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a6, $a3, $a2
	sub.w	$a3, $a4, $s6
	st.d	$a4, $sp, 192                   # 8-byte Folded Spill
	addi.w	$a4, $a0, 80
	addi.w	$a5, $a1, 80
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.d	$t5, $sp, 144                   # 8-byte Folded Spill
	st.d	$t6, $sp, 88                    # 8-byte Folded Spill
	st.d	$t2, $sp, 224                   # 8-byte Folded Spill
	jirl	$ra, $a6, 0
	ld.d	$t6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $t0, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s3
	add.w	$a0, $a0, $s6
	ori	$a2, $zero, 1
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	stx.b	$a2, $a1, $a3
	ld.d	$s6, $sp, 192                   # 8-byte Folded Reload
	bge	$a0, $s6, .LBB4_44
# %bb.38:
	move	$t6, $s8
	move	$t5, $s7
	move	$s6, $a0
	b	.LBB4_44
.LBB4_39:
	move	$fp, $s7
	ld.d	$a1, $t0, %pc_lo12(McostState)
	add.w	$a0, $a0, $a6
	slli.d	$s3, $a0, 3
	ldx.d	$a0, $a1, $s3
	add.w	$s1, $s2, $a6
	ldx.bu	$a0, $a0, $s1
	bnez	$a0, .LBB4_32
# %bb.40:
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	slli.d	$a0, $s0, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $a2, $a1
	slli.d	$a1, $s5, 2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a4, $a1, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a2, $a2, $a4
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	mul.w	$a2, $a2, $a3
	move	$s7, $s6
	srai.d	$s6, $a2, 16
	bge	$s6, $s7, .LBB4_102
# %bb.41:
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a6, $a3, $a2
	sub.w	$a3, $s7, $s6
	addi.w	$a4, $a0, 80
	addi.w	$a5, $a1, 80
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.d	$t5, $sp, 144                   # 8-byte Folded Spill
	jirl	$ra, $a6, 0
	ld.d	$t5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $t0, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s3
	add.w	$a0, $a0, $s6
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $s1
	move	$t6, $s8
	move	$s6, $s7
	bge	$a0, $s7, .LBB4_33
# %bb.42:
	move	$t6, $s5
	move	$t5, $s0
	move	$s6, $a0
	b	.LBB4_33
.LBB4_43:
	move	$s6, $a4
.LBB4_44:
	slli.w	$t7, $s1, 16
	slli.w	$t8, $s5, 16
	bstrpick.d	$s1, $t1, 15, 0
	move	$s7, $fp
	bstrpick.d	$s5, $fp, 15, 0
	blt	$a6, $s4, .LBB4_50
# %bb.45:
	addi.w	$s4, $s8, -1
	sub.w	$a0, $s4, $a7
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	bltu	$a6, $a1, .LBB4_50
# %bb.46:
	ld.d	$a1, $t0, %pc_lo12(McostState)
	add.w	$a0, $a0, $a6
	slli.d	$s3, $a0, 3
	ldx.d	$a0, $a1, $s3
	add.w	$fp, $s2, $a6
	ldx.bu	$a0, $a0, $fp
	bnez	$a0, .LBB4_50
# %bb.47:
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	slli.d	$a0, $s0, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $a2, $a1
	slli.d	$a1, $s4, 2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a4, $a1, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a2, $a2, $a4
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	mul.w	$a2, $a2, $a3
	srai.d	$s2, $a2, 16
	bge	$s2, $s6, .LBB4_50
# %bb.48:
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a6, $a3, $a2
	sub.w	$a3, $s6, $s2
	addi.w	$a4, $a0, 80
	addi.w	$a5, $a1, 80
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.d	$t5, $sp, 144                   # 8-byte Folded Spill
	move	$s8, $t6
	st.d	$t7, $sp, 224                   # 8-byte Folded Spill
	st.d	$t8, $sp, 120                   # 8-byte Folded Spill
	jirl	$ra, $a6, 0
	ld.d	$t8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 224                   # 8-byte Folded Reload
	move	$t6, $s8
	ld.d	$t5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $t0, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s3
	add.w	$a0, $a0, $s2
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $fp
	bge	$a0, $s6, .LBB4_50
# %bb.49:
	move	$t6, $s4
	move	$t5, $s0
	move	$s6, $a0
.LBB4_50:
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	slli.d	$t2, $a1, 2
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	slli.d	$t3, $a0, 2
	or	$a0, $s1, $s5
	slli.d	$a0, $a0, 48
	bstrpick.d	$s0, $a1, 31, 2
	bnez	$a0, .LBB4_52
# %bb.51:
	move	$ra, $t6
	move	$t1, $t5
	b	.LBB4_78
.LBB4_52:
	srai.d	$a0, $t1, 31
	xor	$a1, $t1, $a0
	sub.w	$a0, $a1, $a0
	blt	$a6, $a0, .LBB4_58
# %bb.53:
	srai.d	$a0, $s7, 31
	xor	$a1, $s7, $a0
	sub.w	$a0, $a1, $a0
	bltu	$a6, $a0, .LBB4_58
# %bb.54:
	ld.d	$a0, $t0, %pc_lo12(McostState)
	sub.w	$a1, $a6, $s7
	slli.d	$s1, $a1, 3
	ldx.d	$a0, $a0, $s1
	sub.w	$fp, $a6, $t1
	ldx.bu	$a0, $a0, $fp
	bnez	$a0, .LBB4_58
# %bb.55:
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 2
	sub.d	$a1, $a0, $a1
	ld.w	$a1, $a1, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 2
	sub.d	$a0, $a0, $a2
	ld.w	$a0, $a0, 0
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s2, $a0, 16
	bge	$s2, $s6, .LBB4_58
# %bb.56:
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(dist_method)
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $s6, $s2
	addi.w	$a4, $t2, 80
	addi.w	$a5, $t3, 80
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.d	$t2, $sp, 192                   # 8-byte Folded Spill
	move	$s4, $t3
	move	$s5, $t5
	move	$s8, $t6
	st.d	$t7, $sp, 224                   # 8-byte Folded Spill
	move	$s3, $t8
	jirl	$ra, $a6, 0
	move	$t8, $s3
	ld.d	$t7, $sp, 224                   # 8-byte Folded Reload
	move	$t6, $s8
	move	$t5, $s5
	move	$t3, $s4
	ld.d	$t2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $t0, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s1
	add.w	$a0, $a0, $s2
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $fp
	bge	$a0, $s6, .LBB4_58
# %bb.57:
	ld.d	$t6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 240                   # 8-byte Folded Reload
	move	$s6, $a0
.LBB4_58:
	addi.w	$s1, $t5, -1
	sub.w	$a0, $s1, $a5
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	blt	$a6, $a1, .LBB4_63
# %bb.59:
	sub.w	$a1, $t6, $a7
	srai.d	$a2, $a1, 31
	xor	$a3, $a1, $a2
	sub.w	$a2, $a3, $a2
	bltu	$a6, $a2, .LBB4_63
# %bb.60:
	ld.d	$a2, $t0, %pc_lo12(McostState)
	add.w	$a1, $a1, $a6
	slli.d	$s2, $a1, 3
	ldx.d	$a1, $a2, $s2
	add.w	$fp, $a0, $a6
	ldx.bu	$a0, $a1, $fp
	bnez	$a0, .LBB4_63
# %bb.61:
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	slli.d	$a0, $s1, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $a2, $a1
	slli.d	$a1, $t6, 2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a4, $a1, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a2, $a2, $a4
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	mul.w	$a2, $a2, $a3
	srai.d	$s3, $a2, 16
	bge	$s3, $s6, .LBB4_63
# %bb.62:
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a6, $a3, $a2
	sub.w	$a3, $s6, $s3
	addi.w	$a4, $a0, 80
	addi.w	$a5, $a1, 80
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.d	$t2, $sp, 192                   # 8-byte Folded Spill
	move	$s5, $t3
	st.d	$t5, $sp, 144                   # 8-byte Folded Spill
	move	$s4, $t6
	st.d	$t7, $sp, 224                   # 8-byte Folded Spill
	move	$s8, $t8
	jirl	$ra, $a6, 0
	move	$t8, $s8
	ld.d	$t7, $sp, 224                   # 8-byte Folded Reload
	move	$t6, $s4
	ld.d	$t5, $sp, 144                   # 8-byte Folded Reload
	move	$t3, $s5
	ld.d	$t2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $t0, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s2
	add.w	$a0, $a0, $s3
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $fp
	slt	$a1, $a0, $s6
	masknez	$a2, $t5, $a1
	maskeqz	$a3, $s1, $a1
	or	$t1, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$s6, $a0, $a1
	b	.LBB4_64
.LBB4_63:
	move	$t1, $t5
.LBB4_64:
	sub.w	$s1, $t5, $a5
	srai.d	$a0, $s1, 31
	xor	$a1, $s1, $a0
	sub.w	$s2, $a1, $a0
	blt	$a6, $s2, .LBB4_70
# %bb.65:
	addi.w	$s4, $t6, 1
	sub.w	$a0, $s4, $a7
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	bltu	$a6, $a1, .LBB4_70
# %bb.66:
	ld.d	$a1, $t0, %pc_lo12(McostState)
	add.w	$a0, $a0, $a6
	slli.d	$s3, $a0, 3
	ldx.d	$a0, $a1, $s3
	add.w	$fp, $s1, $a6
	ldx.bu	$a0, $a0, $fp
	bnez	$a0, .LBB4_70
# %bb.67:
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	slli.d	$a0, $t5, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $a2, $a1
	slli.d	$a1, $s4, 2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a4, $a1, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a2, $a2, $a4
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	mul.w	$a2, $a2, $a3
	srai.d	$s5, $a2, 16
	bge	$s5, $s6, .LBB4_70
# %bb.68:
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a6, $a3, $a2
	sub.w	$a3, $s6, $s5
	addi.w	$a4, $a0, 80
	addi.w	$a5, $a1, 80
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.d	$t2, $sp, 192                   # 8-byte Folded Spill
	move	$s8, $t3
	st.d	$t1, $sp, 104                   # 8-byte Folded Spill
	st.d	$t5, $sp, 144                   # 8-byte Folded Spill
	st.d	$t6, $sp, 88                    # 8-byte Folded Spill
	st.d	$t7, $sp, 224                   # 8-byte Folded Spill
	st.d	$t8, $sp, 120                   # 8-byte Folded Spill
	jirl	$ra, $a6, 0
	ld.d	$t8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	move	$t3, $s8
	ld.d	$t2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $t0, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s3
	add.w	$a0, $a0, $s5
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $fp
	move	$ra, $t6
	bge	$a0, $s6, .LBB4_71
# %bb.69:
	move	$ra, $s4
	move	$t1, $t5
	move	$s6, $a0
	b	.LBB4_71
.LBB4_70:
	move	$ra, $t6
.LBB4_71:
	addi.w	$s4, $t5, 1
	sub.w	$a0, $s4, $a5
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	blt	$a6, $a1, .LBB4_77
# %bb.72:
	sub.w	$a1, $t6, $a7
	srai.d	$a2, $a1, 31
	xor	$a3, $a1, $a2
	sub.w	$a2, $a3, $a2
	bltu	$a6, $a2, .LBB4_77
# %bb.73:
	ld.d	$a2, $t0, %pc_lo12(McostState)
	add.w	$a1, $a1, $a6
	slli.d	$s3, $a1, 3
	ldx.d	$a1, $a2, $s3
	add.w	$fp, $a0, $a6
	ldx.bu	$a0, $a1, $fp
	bnez	$a0, .LBB4_77
# %bb.74:
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	slli.d	$a0, $s4, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $a2, $a1
	slli.d	$a1, $t6, 2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a4, $a1, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a2, $a2, $a4
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	mul.w	$a2, $a2, $a3
	srai.d	$s5, $a2, 16
	bge	$s5, $s6, .LBB4_77
# %bb.75:
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a6, $a3, $a2
	sub.w	$a3, $s6, $s5
	addi.w	$a4, $a0, 80
	addi.w	$a5, $a1, 80
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.d	$t2, $sp, 192                   # 8-byte Folded Spill
	move	$s8, $t3
	st.d	$t1, $sp, 104                   # 8-byte Folded Spill
	st.d	$ra, $sp, 96                    # 8-byte Folded Spill
	st.d	$t5, $sp, 144                   # 8-byte Folded Spill
	st.d	$t6, $sp, 88                    # 8-byte Folded Spill
	st.d	$t7, $sp, 224                   # 8-byte Folded Spill
	st.d	$t8, $sp, 120                   # 8-byte Folded Spill
	jirl	$ra, $a6, 0
	ld.d	$t8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	move	$t3, $s8
	ld.d	$t2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a1, $t0, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s3
	add.w	$a0, $a0, $s5
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $fp
	bge	$a0, $s6, .LBB4_77
# %bb.76:
	move	$ra, $t6
	move	$t1, $s4
	move	$s6, $a0
.LBB4_77:
	bge	$a6, $s2, .LBB4_89
.LBB4_78:
	ld.d	$s4, $sp, 176                   # 8-byte Folded Reload
.LBB4_79:                               # %.loopexit1027
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
.LBB4_80:                               # %.loopexit1027
	srai.d	$s8, $t7, 18
	srai.d	$s5, $t8, 18
	ext.w.h	$fp, $s0
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	st.d	$fp, $sp, 120                   # 8-byte Folded Spill
	blez	$a0, .LBB4_84
# %bb.81:
	ld.d	$a0, $a2, 0
	ld.w	$a1, $a0, 24
	bnez	$a1, .LBB4_84
# %bb.82:
	bge	$a3, $s6, .LBB4_84
# %bb.83:
	slli.d	$a1, $fp, 2
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ldx.w	$a1, $a2, $a1
	slli.d	$a2, $s4, 2
	pcalau12i	$a3, %pc_hi20(Multi_Ref_Thd_MB)
	addi.d	$a3, $a3, %pc_lo12(Multi_Ref_Thd_MB)
	ldx.w	$a2, $a3, $a2
	bge	$a1, $a2, .LBB4_87
	b	.LBB4_85
.LBB4_84:
	bge	$s6, $a3, .LBB4_86
.LBB4_85:
	move	$t3, $t1
	b	.LBB4_261
.LBB4_86:                               # %._crit_edge1153
	ld.d	$a0, $a2, 0
.LBB4_87:
	move	$s1, $ra
	move	$s0, $t1
	st.d	$t3, $sp, 64                    # 8-byte Folded Spill
	st.d	$t2, $sp, 192                   # 8-byte Folded Spill
	ldptr.d	$a5, $a0, 14384
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a3, $s8
	move	$a4, $s4
	pcaddu18i	$ra, %call36(UMHEX_setup)
	jirl	$ra, $ra, 0
	pcalau12i	$s3, %pc_hi20(pred_SAD)
	ld.w	$a2, $s3, %pc_lo12(pred_SAD)
	slli.d	$a0, $s4, 2
	pcalau12i	$a1, %pc_hi20(Big_Hexagon_Thd_MB)
	addi.d	$a1, $a1, %pc_lo12(Big_Hexagon_Thd_MB)
	beqz	$a2, .LBB4_94
# %bb.88:
	pcalau12i	$a3, %pc_hi20(Bsize)
	addi.d	$a3, $a3, %pc_lo12(Bsize)
	fldx.s	$fa0, $a3, $a0
	mul.d	$a2, $a2, $a2
	bstrpick.d	$a2, $a2, 31, 0
	movgr2fr.d	$fa1, $a2
	pcalau12i	$a2, %pc_hi20(AlphaFourth_1)
	addi.d	$a2, $a2, %pc_lo12(AlphaFourth_1)
	fldx.s	$fa2, $a2, $a0
	pcalau12i	$a2, %pc_hi20(AlphaFourth_2)
	addi.d	$a2, $a2, %pc_lo12(AlphaFourth_2)
	fldx.s	$fa3, $a2, $a0
	ffint.s.l	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	fsub.s	$fs0, $fa0, $fa2
	fsub.s	$fs1, $fa0, $fa3
	b	.LBB4_95
.LBB4_89:
	addi.w	$s2, $t6, -1
	sub.w	$a0, $s2, $a7
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	ld.d	$s4, $sp, 176                   # 8-byte Folded Reload
	bltu	$a6, $a1, .LBB4_79
# %bb.90:
	ld.d	$a1, $t0, %pc_lo12(McostState)
	add.w	$a0, $a0, $a6
	slli.d	$s3, $a0, 3
	ldx.d	$a0, $a1, $s3
	add.w	$fp, $s1, $a6
	ldx.bu	$a0, $a0, $fp
	bnez	$a0, .LBB4_79
# %bb.91:
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	slli.d	$a0, $t5, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $a2, $a1
	slli.d	$a1, $s2, 2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a4, $a1, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a2, $a2, $a4
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	mul.w	$a2, $a2, $a3
	srai.d	$s1, $a2, 16
	bge	$s1, $s6, .LBB4_79
# %bb.92:
	st.d	$t5, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a6, $a3, $a2
	sub.w	$a3, $s6, $s1
	addi.w	$a4, $a0, 80
	addi.w	$a5, $a1, 80
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.d	$t2, $sp, 192                   # 8-byte Folded Spill
	move	$s8, $t3
	st.d	$t1, $sp, 104                   # 8-byte Folded Spill
	move	$s5, $ra
	st.d	$t7, $sp, 224                   # 8-byte Folded Spill
	st.d	$t8, $sp, 120                   # 8-byte Folded Spill
	jirl	$ra, $a6, 0
	ld.d	$t8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 224                   # 8-byte Folded Reload
	move	$ra, $s5
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	move	$t3, $s8
	ld.d	$t2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s3
	add.w	$a0, $a0, $s1
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $fp
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	bge	$a0, $s6, .LBB4_80
# %bb.93:
	move	$ra, $s2
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	move	$s6, $a0
	b	.LBB4_80
.LBB4_94:
	movgr2fr.w	$fs0, $zero
	fmov.s	$fs1, $fs0
.LBB4_95:
	ld.d	$a7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 304                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$a0, $zero, 2
	ld.d	$t1, $sp, 272                   # 8-byte Folded Reload
	move	$t5, $s0
	move	$t6, $s1
	blt	$s4, $a0, .LBB4_104
# %bb.96:
	pcalau12i	$a0, %pc_hi20(pred_MV_uplayer)
	addi.d	$a2, $a0, %pc_lo12(pred_MV_uplayer)
	ld.w	$a0, $a2, 0
	bstrpick.d	$a1, $a0, 62, 61
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 2
	sub.w	$a1, $a0, $a6
	srai.d	$a3, $a1, 31
	xor	$a4, $a1, $a3
	sub.w	$a3, $a4, $a3
	blt	$t0, $a3, .LBB4_104
# %bb.97:
	ld.w	$a2, $a2, 4
	bstrpick.d	$a3, $a2, 62, 61
	add.w	$a2, $a2, $a3
	srai.d	$a2, $a2, 2
	sub.w	$a3, $a2, $s7
	srai.d	$a4, $a3, 31
	xor	$a5, $a3, $a4
	sub.w	$a4, $a5, $a4
	bltu	$t0, $a4, .LBB4_104
# %bb.98:
	ld.d	$a4, $t2, %pc_lo12(McostState)
	add.w	$a3, $a3, $t0
	slli.d	$s2, $a3, 3
	ldx.d	$a3, $a4, $s2
	add.w	$fp, $a1, $t0
	ldx.bu	$a1, $a3, $fp
	bnez	$a1, .LBB4_104
# %bb.99:
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	move	$s7, $s3
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	add.w	$a5, $a0, $a1
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	add.w	$t3, $a2, $a0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	slli.d	$a0, $a5, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $a2, $a1
	slli.d	$a1, $t3, 2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a4, $a1, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a2, $a2, $a4
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	mul.w	$a2, $a2, $a3
	srai.d	$s3, $a2, 16
	bge	$s3, $s6, .LBB4_103
# %bb.100:
	st.d	$t3, $sp, 144                   # 8-byte Folded Spill
	st.d	$a5, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a6, $a3, $a2
	sub.w	$a3, $s6, $s3
	addi.w	$a4, $a0, 80
	addi.w	$a5, $a1, 80
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	move	$t6, $s1
	move	$t5, $s0
	ld.d	$a6, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $t2, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s2
	add.w	$a0, $a0, $s3
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $fp
	move	$s3, $s7
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	bge	$a0, $s6, .LBB4_104
# %bb.101:
	ld.d	$t6, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 224                   # 8-byte Folded Reload
	move	$s6, $a0
	b	.LBB4_104
.LBB4_102:
	move	$t6, $s8
	move	$s6, $s7
	b	.LBB4_33
.LBB4_103:
	move	$s3, $s7
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
.LBB4_104:
	pcalau12i	$a0, %pc_hi20(pred_MV_ref_flag)
	ld.bu	$a0, $a0, %pc_lo12(pred_MV_ref_flag)
	beqz	$a0, .LBB4_112
# %bb.105:
	pcalau12i	$a0, %pc_hi20(pred_MV_ref)
	addi.d	$a2, $a0, %pc_lo12(pred_MV_ref)
	ld.w	$a0, $a2, 0
	bstrpick.d	$a1, $a0, 62, 61
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 2
	sub.w	$a1, $a0, $a6
	srai.d	$a3, $a1, 31
	xor	$a4, $a1, $a3
	sub.w	$a3, $a4, $a3
	blt	$t0, $a3, .LBB4_112
# %bb.106:
	ld.w	$a2, $a2, 4
	bstrpick.d	$a3, $a2, 62, 61
	add.w	$a2, $a2, $a3
	srai.d	$a2, $a2, 2
	sub.w	$a3, $a2, $s7
	srai.d	$a4, $a3, 31
	xor	$a5, $a3, $a4
	sub.w	$a4, $a5, $a4
	bltu	$t0, $a4, .LBB4_112
# %bb.107:
	ld.d	$a4, $t2, %pc_lo12(McostState)
	add.w	$a3, $a3, $t0
	slli.d	$s2, $a3, 3
	ldx.d	$a3, $a4, $s2
	add.w	$s1, $a1, $t0
	ldx.bu	$a1, $a3, $s1
	bnez	$a1, .LBB4_112
# %bb.108:
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	add.w	$a5, $a0, $a1
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	add.w	$s0, $a2, $a0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	slli.d	$a0, $a5, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $a2, $a1
	slli.d	$a1, $s0, 2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a4, $a1, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a2, $a2, $a4
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	mul.w	$a2, $a2, $a3
	srai.d	$s3, $a2, 16
	bge	$s3, $s6, .LBB4_111
# %bb.109:
	st.d	$a5, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a6, $a3, $a2
	sub.w	$a3, $s6, $s3
	addi.w	$a4, $a0, 80
	addi.w	$a5, $a1, 80
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	move	$s7, $t5
	move	$fp, $t6
	jirl	$ra, $a6, 0
	move	$t6, $fp
	move	$t5, $s7
	ld.d	$t2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $t2, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s2
	add.w	$a0, $a0, $s3
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $s1
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	bge	$a0, $s6, .LBB4_112
# %bb.110:
	move	$t6, $s0
	ld.d	$t5, $sp, 304                   # 8-byte Folded Reload
	move	$s6, $a0
	b	.LBB4_112
.LBB4_111:
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
.LBB4_112:
	addi.w	$s0, $t5, -1
	sub.w	$a0, $s0, $a7
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	blt	$t0, $a1, .LBB4_117
# %bb.113:
	sub.w	$a1, $t6, $t1
	srai.d	$a2, $a1, 31
	xor	$a3, $a1, $a2
	sub.w	$a2, $a3, $a2
	bltu	$t0, $a2, .LBB4_117
# %bb.114:
	ld.d	$a2, $t2, %pc_lo12(McostState)
	add.w	$a1, $a1, $t0
	slli.d	$s1, $a1, 3
	ldx.d	$a1, $a2, $s1
	add.w	$fp, $a0, $t0
	ldx.bu	$a0, $a1, $fp
	bnez	$a0, .LBB4_117
# %bb.115:
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	slli.d	$a0, $s0, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $a2, $a1
	slli.d	$a1, $t6, 2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a4, $a1, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a2, $a2, $a4
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	mul.w	$a2, $a2, $a3
	srai.d	$s2, $a2, 16
	bge	$s2, $s6, .LBB4_117
# %bb.116:
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a6, $a3, $a2
	sub.w	$a3, $s6, $s2
	addi.w	$a4, $a0, 80
	addi.w	$a5, $a1, 80
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	move	$s7, $t5
	st.d	$t6, $sp, 96                    # 8-byte Folded Spill
	jirl	$ra, $a6, 0
	ld.d	$t6, $sp, 96                    # 8-byte Folded Reload
	move	$t5, $s7
	ld.d	$t2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $t2, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s1
	add.w	$a0, $a0, $s2
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $fp
	slt	$a1, $a0, $s6
	masknez	$a2, $s7, $a1
	maskeqz	$a3, $s0, $a1
	or	$t3, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$s6, $a0, $a1
	b	.LBB4_118
.LBB4_117:
	move	$t3, $t5
.LBB4_118:
	sub.w	$s0, $t5, $a7
	srai.d	$a0, $s0, 31
	xor	$a1, $s0, $a0
	sub.w	$s1, $a1, $a0
	blt	$t0, $s1, .LBB4_120
# %bb.119:
	addi.w	$s2, $t6, 1
	sub.w	$a0, $s2, $t1
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	bgeu	$t0, $a1, .LBB4_121
.LBB4_120:
	move	$ra, $t6
	b	.LBB4_128
.LBB4_121:
	move	$s7, $s3
	ld.d	$a1, $t2, %pc_lo12(McostState)
	add.w	$a0, $a0, $t0
	slli.d	$s3, $a0, 3
	ldx.d	$a0, $a1, $s3
	add.w	$fp, $s0, $t0
	ldx.bu	$a0, $a0, $fp
	beqz	$a0, .LBB4_123
# %bb.122:
	move	$ra, $t6
	b	.LBB4_127
.LBB4_123:
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	slli.d	$a0, $t5, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $a2, $a1
	slli.d	$a1, $s2, 2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a4, $a1, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a2, $a2, $a4
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	mul.w	$a2, $a2, $a3
	srai.d	$s4, $a2, 16
	bge	$s4, $s6, .LBB4_126
# %bb.124:
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a6, $a3, $a2
	sub.w	$a3, $s6, $s4
	addi.w	$a4, $a0, 80
	addi.w	$a5, $a1, 80
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.d	$t3, $sp, 288                   # 8-byte Folded Spill
	st.d	$t5, $sp, 104                   # 8-byte Folded Spill
	st.d	$t6, $sp, 96                    # 8-byte Folded Spill
	jirl	$ra, $a6, 0
	ld.d	$t6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $t2, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s3
	add.w	$a0, $a0, $s4
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $fp
	move	$ra, $t6
	ld.d	$s4, $sp, 176                   # 8-byte Folded Reload
	move	$s3, $s7
	bge	$a0, $s6, .LBB4_128
# %bb.125:
	move	$ra, $s2
	move	$t3, $t5
	move	$s6, $a0
	b	.LBB4_128
.LBB4_126:
	move	$ra, $t6
	ld.d	$s4, $sp, 176                   # 8-byte Folded Reload
.LBB4_127:
	move	$s3, $s7
.LBB4_128:
	addi.w	$s2, $t5, 1
	sub.w	$a0, $s2, $a7
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	blt	$t0, $a1, .LBB4_136
# %bb.129:
	sub.w	$a1, $t6, $t1
	srai.d	$a2, $a1, 31
	xor	$a3, $a1, $a2
	sub.w	$a2, $a3, $a2
	bltu	$t0, $a2, .LBB4_136
# %bb.130:
	move	$s7, $s3
	ld.d	$a2, $t2, %pc_lo12(McostState)
	add.w	$a1, $a1, $t0
	slli.d	$s3, $a1, 3
	ldx.d	$a1, $a2, $s3
	add.w	$fp, $a0, $t0
	ldx.bu	$a0, $a1, $fp
	bnez	$a0, .LBB4_135
# %bb.131:
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	slli.d	$a0, $s2, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $a2, $a1
	slli.d	$a1, $t6, 2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a4, $a1, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a2, $a2, $a4
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	mul.w	$a2, $a2, $a3
	srai.d	$s4, $a2, 16
	bge	$s4, $s6, .LBB4_134
# %bb.132:
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a6, $a3, $a2
	sub.w	$a3, $s6, $s4
	addi.w	$a4, $a0, 80
	addi.w	$a5, $a1, 80
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.d	$t3, $sp, 288                   # 8-byte Folded Spill
	st.d	$ra, $sp, 304                   # 8-byte Folded Spill
	st.d	$t5, $sp, 104                   # 8-byte Folded Spill
	st.d	$t6, $sp, 96                    # 8-byte Folded Spill
	jirl	$ra, $a6, 0
	ld.d	$t6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $t2, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s3
	add.w	$a0, $a0, $s4
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $fp
	ld.d	$s4, $sp, 176                   # 8-byte Folded Reload
	move	$s3, $s7
	bge	$a0, $s6, .LBB4_136
# %bb.133:
	move	$ra, $t6
	move	$t3, $s2
	move	$s6, $a0
	b	.LBB4_136
.LBB4_134:
	ld.d	$s4, $sp, 176                   # 8-byte Folded Reload
.LBB4_135:
	move	$s3, $s7
.LBB4_136:
	st.d	$s8, $sp, 144                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	blt	$t0, $s1, .LBB4_142
# %bb.137:
	addi.w	$s1, $t6, -1
	sub.w	$a0, $s1, $t1
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	bltu	$t0, $a1, .LBB4_142
# %bb.138:
	ld.d	$a1, $t2, %pc_lo12(McostState)
	add.w	$a0, $a0, $t0
	slli.d	$s2, $a0, 3
	ldx.d	$a0, $a1, $s2
	add.w	$fp, $s0, $t0
	ldx.bu	$a0, $a0, $fp
	bnez	$a0, .LBB4_142
# %bb.139:
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	slli.d	$a0, $t5, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $a2, $a1
	slli.d	$a1, $s1, 2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a4, $a1, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a2, $a2, $a4
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	mul.w	$a2, $a2, $a3
	srai.d	$s0, $a2, 16
	bge	$s0, $s6, .LBB4_142
# %bb.140:
	move	$s8, $t5
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a6, $a3, $a2
	sub.w	$a3, $s6, $s0
	addi.w	$a4, $a0, 80
	addi.w	$a5, $a1, 80
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	move	$s7, $s3
	move	$s3, $t3
	move	$s5, $ra
	jirl	$ra, $a6, 0
	move	$ra, $s5
	move	$t3, $s3
	move	$s3, $s7
	ld.d	$t2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $t2, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s2
	add.w	$a0, $a0, $s0
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $fp
	bge	$a0, $s6, .LBB4_142
# %bb.141:
	move	$ra, $s1
	move	$t3, $s8
	move	$s6, $a0
.LBB4_142:
	ld.w	$a0, $s3, %pc_lo12(pred_SAD)
	sub.d	$a1, $s6, $a0
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa2, $fs1, $fa1
	fcmp.clt.s	$fcc0, $fa0, $fa2
	bceqz	$fcc0, .LBB4_145
.LBB4_143:                              # %.loopexit1020
	blez	$t0, .LBB4_164
# %bb.144:
	move	$s0, $t0
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	b	.LBB4_168
.LBB4_145:
	ori	$a0, $zero, 6
	blt	$a0, $s4, .LBB4_204
# %bb.146:
	fmul.s	$fa1, $fs0, $fa1
	fcmp.clt.s	$fcc0, $fa0, $fa1
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	bcnez	$fcc0, .LBB4_205
# %bb.147:                              # %.preheader1026
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	ori	$a0, $zero, 2
	blt	$t0, $a0, .LBB4_196
# %bb.148:                              # %.lr.ph
	sub.w	$a0, $ra, $t1
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a4, $a2, $a1
	add.w	$a5, $a0, $t0
	slli.d	$a1, $ra, 2
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	sub.w	$a6, $a1, $a0
	ori	$a0, $zero, 80
	alsl.w	$a0, $ra, $a0, 2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	slli.d	$a3, $t3, 2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	addi.d	$a1, $zero, -4
	sub.d	$t5, $a1, $a0
	nor	$s1, $a7, $zero
	sub.d	$a2, $t3, $a7
	addi.d	$s2, $a2, -1
	ori	$a1, $zero, 4
	sub.d	$t6, $a1, $a0
	ori	$a0, $zero, 1
	sub.d	$s5, $a0, $a7
	st.d	$a2, $sp, 0                     # 8-byte Folded Spill
	addi.d	$s3, $a2, 1
	addi.d	$t7, $zero, -1
	ori	$s4, $zero, 76
	ori	$s7, $zero, 84
	ori	$s8, $zero, 1
	ori	$s0, $zero, 1
	st.d	$t3, $sp, 104                   # 8-byte Folded Spill
	st.d	$t3, $sp, 288                   # 8-byte Folded Spill
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	b	.LBB4_151
.LBB4_149:                              #   in Loop: Header=BB4_151 Depth=1
	move	$s6, $a2
	.p2align	4, , 16
.LBB4_150:                              #   in Loop: Header=BB4_151 Depth=1
	addi.d	$s0, $s0, 2
	addi.d	$t7, $t7, -2
	addi.d	$s4, $s4, -8
	addi.d	$t5, $t5, -8
	addi.d	$s1, $s1, -2
	addi.d	$s2, $s2, -2
	addi.d	$s8, $s8, 2
	addi.d	$s7, $s7, 8
	addi.d	$t6, $t6, 8
	addi.d	$s5, $s5, 2
	addi.d	$s3, $s3, 2
	bge	$s0, $t0, .LBB4_197
.LBB4_151:                              # =>This Inner Loop Header: Depth=1
	add.w	$a0, $t3, $s5
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t0, $a0, .LBB4_158
# %bb.152:                              #   in Loop: Header=BB4_151 Depth=1
	bltu	$t0, $a4, .LBB4_158
# %bb.153:                              #   in Loop: Header=BB4_151 Depth=1
	ld.d	$a0, $t2, %pc_lo12(McostState)
	slli.d	$fp, $a5, 3
	ldx.d	$a0, $a0, $fp
	add.d	$a0, $a0, $t0
	ldx.bu	$a0, $a0, $s3
	bnez	$a0, .LBB4_158
# %bb.154:                              #   in Loop: Header=BB4_151 Depth=1
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	add.w	$a1, $a3, $t6
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $a6, 2
	ldx.w	$a0, $a0, $a2
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	move	$a2, $s6
	srai.d	$s6, $a0, 16
	addi.w	$a0, $a2, 0
	bge	$s6, $a0, .LBB4_157
# %bb.155:                              #   in Loop: Header=BB4_151 Depth=1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(dist_method)
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a2, $s6
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	add.w	$a4, $a0, $s7
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	st.d	$ra, $sp, 304                   # 8-byte Folded Spill
	st.d	$t5, $sp, 96                    # 8-byte Folded Spill
	st.d	$t6, $sp, 88                    # 8-byte Folded Spill
	st.d	$t7, $sp, 80                    # 8-byte Folded Spill
	jirl	$ra, $a6, 0
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $t2, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $fp
	add.w	$a0, $a0, $s6
	add.d	$a1, $a1, $t0
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $s3
	ld.d	$s6, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	bge	$a0, $a1, .LBB4_158
# %bb.156:                              #   in Loop: Header=BB4_151 Depth=1
	add.w	$a1, $t3, $s8
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	move	$s6, $a0
	b	.LBB4_158
.LBB4_157:                              #   in Loop: Header=BB4_151 Depth=1
	move	$s6, $a2
	.p2align	4, , 16
.LBB4_158:                              #   in Loop: Header=BB4_151 Depth=1
	add.w	$a0, $t3, $s1
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t0, $a0, .LBB4_150
# %bb.159:                              #   in Loop: Header=BB4_151 Depth=1
	bltu	$t0, $a4, .LBB4_150
# %bb.160:                              #   in Loop: Header=BB4_151 Depth=1
	ld.d	$a0, $t2, %pc_lo12(McostState)
	slli.d	$fp, $a5, 3
	ldx.d	$a0, $a0, $fp
	add.d	$a0, $a0, $t0
	ldx.bu	$a0, $a0, $s2
	bnez	$a0, .LBB4_150
# %bb.161:                              #   in Loop: Header=BB4_151 Depth=1
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	add.w	$a1, $a3, $t5
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $a6, 2
	ldx.w	$a0, $a0, $a2
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	move	$a2, $s6
	srai.d	$s6, $a0, 16
	addi.w	$a0, $a2, 0
	bge	$s6, $a0, .LBB4_149
# %bb.162:                              #   in Loop: Header=BB4_151 Depth=1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(dist_method)
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $a2, $s6
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	add.w	$a4, $a0, $s4
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	st.d	$ra, $sp, 304                   # 8-byte Folded Spill
	st.d	$t5, $sp, 96                    # 8-byte Folded Spill
	st.d	$t6, $sp, 88                    # 8-byte Folded Spill
	st.d	$t7, $sp, 80                    # 8-byte Folded Spill
	jirl	$ra, $a6, 0
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $t2, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $fp
	add.w	$a0, $a0, $s6
	add.d	$a1, $a1, $t0
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $s2
	ld.d	$s6, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	bge	$a0, $a1, .LBB4_150
# %bb.163:                              #   in Loop: Header=BB4_151 Depth=1
	add.w	$a1, $t3, $t7
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	move	$s6, $a0
	b	.LBB4_150
.LBB4_164:
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	b	.LBB4_261
.LBB4_165:                              #   in Loop: Header=BB4_168 Depth=1
	move	$s6, $a0
	move	$s1, $t3
	move	$s2, $s4
	.p2align	4, , 16
.LBB4_166:                              #   in Loop: Header=BB4_168 Depth=1
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
.LBB4_167:                              # %.thread1165
                                        #   in Loop: Header=BB4_168 Depth=1
	addi.w	$s0, $s0, -1
	move	$t3, $s1
	move	$ra, $s2
	beqz	$s0, .LBB4_261
.LBB4_168:                              # %.preheader1018
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s1, $t3, -1
	sub.w	$a0, $s1, $a7
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	sub.w	$s4, $ra, $t1
	blt	$t0, $a1, .LBB4_173
# %bb.169:                              #   in Loop: Header=BB4_168 Depth=1
	srai.d	$a1, $s4, 31
	xor	$a2, $s4, $a1
	sub.w	$a1, $a2, $a1
	bltu	$t0, $a1, .LBB4_173
# %bb.170:                              #   in Loop: Header=BB4_168 Depth=1
	ld.d	$a1, $t2, %pc_lo12(McostState)
	add.w	$a2, $s4, $t0
	slli.d	$s2, $a2, 3
	ldx.d	$a1, $a1, $s2
	add.w	$fp, $a0, $t0
	ldx.bu	$a0, $a1, $fp
	bnez	$a0, .LBB4_173
# %bb.171:                              #   in Loop: Header=BB4_168 Depth=1
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	slli.d	$a0, $s1, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $a2, $a1
	slli.d	$a1, $ra, 2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a4, $a1, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a2, $a2, $a4
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	mul.w	$a2, $a2, $a3
	srai.d	$s5, $a2, 16
	addi.w	$s3, $s6, 0
	bge	$s5, $s3, .LBB4_173
# %bb.172:                              #   in Loop: Header=BB4_168 Depth=1
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a6, $a3, $a2
	sub.w	$a3, $s6, $s5
	addi.w	$a4, $a0, 80
	addi.w	$a5, $a1, 80
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	move	$s6, $t3
	move	$s7, $ra
	jirl	$ra, $a6, 0
	move	$ra, $s7
	move	$t3, $s6
	ld.d	$t2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $t2, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s2
	add.w	$a0, $a0, $s5
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $fp
	slt	$a1, $a0, $s3
	masknez	$a2, $s6, $a1
	maskeqz	$a3, $s1, $a1
	or	$s1, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s3, $a1
	or	$s6, $a0, $a1
	b	.LBB4_174
	.p2align	4, , 16
.LBB4_173:                              #   in Loop: Header=BB4_168 Depth=1
	move	$s1, $t3
.LBB4_174:                              #   in Loop: Header=BB4_168 Depth=1
	sub.w	$s3, $t3, $a7
	srai.d	$a0, $s3, 31
	xor	$a1, $s3, $a0
	sub.w	$s5, $a1, $a0
	blt	$t0, $s5, .LBB4_177
# %bb.175:                              #   in Loop: Header=BB4_168 Depth=1
	addi.w	$fp, $ra, 1
	sub.w	$a0, $fp, $t1
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	bltu	$t0, $a1, .LBB4_177
# %bb.176:                              #   in Loop: Header=BB4_168 Depth=1
	ld.d	$a1, $t2, %pc_lo12(McostState)
	add.w	$a0, $a0, $t0
	slli.d	$s7, $a0, 3
	ldx.d	$a0, $a1, $s7
	add.w	$s2, $s3, $t0
	ldx.bu	$a0, $a0, $s2
	beqz	$a0, .LBB4_186
	.p2align	4, , 16
.LBB4_177:                              #   in Loop: Header=BB4_168 Depth=1
	move	$s2, $ra
.LBB4_178:                              #   in Loop: Header=BB4_168 Depth=1
	addi.w	$s7, $t3, 1
	sub.w	$a0, $s7, $a7
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	blt	$t0, $a1, .LBB4_181
# %bb.179:                              #   in Loop: Header=BB4_168 Depth=1
	srai.d	$a1, $s4, 31
	xor	$a2, $s4, $a1
	sub.w	$a1, $a2, $a1
	bltu	$t0, $a1, .LBB4_181
# %bb.180:                              #   in Loop: Header=BB4_168 Depth=1
	ld.d	$a1, $t2, %pc_lo12(McostState)
	add.w	$a2, $s4, $t0
	slli.d	$s4, $a2, 3
	ldx.d	$a1, $a1, $s4
	add.w	$fp, $a0, $t0
	ldx.bu	$a0, $a1, $fp
	beqz	$a0, .LBB4_189
	.p2align	4, , 16
.LBB4_181:                              #   in Loop: Header=BB4_168 Depth=1
	blt	$t0, $s5, .LBB4_194
.LBB4_182:                              #   in Loop: Header=BB4_168 Depth=1
	addi.w	$s4, $ra, -1
	sub.w	$a0, $s4, $t1
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	bltu	$t0, $a1, .LBB4_194
# %bb.183:                              #   in Loop: Header=BB4_168 Depth=1
	ld.d	$a1, $t2, %pc_lo12(McostState)
	add.w	$a0, $a0, $t0
	slli.d	$s5, $a0, 3
	ldx.d	$a0, $a1, $s5
	add.w	$fp, $s3, $t0
	ldx.bu	$a0, $a0, $fp
	bnez	$a0, .LBB4_194
# %bb.184:                              #   in Loop: Header=BB4_168 Depth=1
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	slli.d	$a0, $t3, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $a2, $a1
	slli.d	$a1, $s4, 2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a4, $a1, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a2, $a2, $a4
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	mul.w	$a2, $a2, $a3
	srai.d	$s7, $a2, 16
	addi.w	$s3, $s6, 0
	bge	$s7, $s3, .LBB4_194
# %bb.185:                              #   in Loop: Header=BB4_168 Depth=1
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a6, $a3, $a2
	sub.w	$a3, $s6, $s7
	addi.w	$a4, $a0, 80
	addi.w	$a5, $a1, 80
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.d	$t3, $sp, 288                   # 8-byte Folded Spill
	st.d	$ra, $sp, 304                   # 8-byte Folded Spill
	jirl	$ra, $a6, 0
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $t2, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s5
	add.w	$a0, $a0, $s7
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $fp
	bge	$a0, $s3, .LBB4_194
	b	.LBB4_165
.LBB4_186:                              #   in Loop: Header=BB4_168 Depth=1
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	slli.d	$a0, $t3, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $a2, $a1
	slli.d	$a1, $fp, 2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a4, $a1, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a2, $a2, $a4
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	mul.w	$a2, $a2, $a3
	srai.d	$s8, $a2, 16
	addi.w	$a2, $s6, 0
	bge	$s8, $a2, .LBB4_192
# %bb.187:                              #   in Loop: Header=BB4_168 Depth=1
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a6, $a3, $a2
	sub.w	$a3, $s6, $s8
	addi.w	$a4, $a0, 80
	addi.w	$a5, $a1, 80
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.d	$t3, $sp, 288                   # 8-byte Folded Spill
	st.d	$ra, $sp, 304                   # 8-byte Folded Spill
	jirl	$ra, $a6, 0
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $t2, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s7
	add.w	$a0, $a0, $s8
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $s2
	move	$s2, $ra
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB4_178
# %bb.188:                              #   in Loop: Header=BB4_168 Depth=1
	move	$s2, $fp
	move	$s1, $t3
	move	$s6, $a0
	b	.LBB4_178
.LBB4_189:                              #   in Loop: Header=BB4_168 Depth=1
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	slli.d	$a0, $s7, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $a2, $a1
	slli.d	$a1, $ra, 2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a4, $a1, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a2, $a2, $a4
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	mul.w	$a2, $a2, $a3
	srai.d	$s8, $a2, 16
	addi.w	$a2, $s6, 0
	bge	$s8, $a2, .LBB4_193
# %bb.190:                              #   in Loop: Header=BB4_168 Depth=1
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a6, $a3, $a2
	sub.w	$a3, $s6, $s8
	addi.w	$a4, $a0, 80
	addi.w	$a5, $a1, 80
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.d	$t3, $sp, 288                   # 8-byte Folded Spill
	st.d	$ra, $sp, 304                   # 8-byte Folded Spill
	jirl	$ra, $a6, 0
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $t2, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s4
	add.w	$a0, $a0, $s8
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $fp
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB4_181
# %bb.191:                              #   in Loop: Header=BB4_168 Depth=1
	move	$s2, $ra
	move	$s1, $s7
	move	$s6, $a0
	b	.LBB4_181
.LBB4_192:                              #   in Loop: Header=BB4_168 Depth=1
	move	$s2, $ra
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	b	.LBB4_178
.LBB4_193:                              #   in Loop: Header=BB4_168 Depth=1
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	bge	$t0, $s5, .LBB4_182
	.p2align	4, , 16
.LBB4_194:                              #   in Loop: Header=BB4_168 Depth=1
	bne	$s1, $t3, .LBB4_166
# %bb.195:                              #   in Loop: Header=BB4_168 Depth=1
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	bne	$s2, $ra, .LBB4_167
	b	.LBB4_261
.LBB4_196:
	move	$t5, $ra
	st.d	$t3, $sp, 104                   # 8-byte Folded Spill
	b	.LBB4_200
.LBB4_197:                              # %.preheader1025
	ori	$a0, $zero, 4
	blt	$t0, $a0, .LBB4_199
# %bb.198:                              # %.lr.ph1053
	ld.d	$a2, $sp, 0                     # 8-byte Folded Reload
	addi.w	$a0, $a2, 0
	srai.d	$a0, $a0, 31
	xor	$a1, $a2, $a0
	sub.w	$a0, $a1, $a0
	bgeu	$t0, $a0, .LBB4_246
.LBB4_199:
	move	$t5, $ra
.LBB4_200:                              # %._crit_edge
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(pred_SAD)
	sub.d	$a1, $s6, $a0
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa2, $fs1, $fa1
	fcmp.clt.s	$fcc0, $fa0, $fa2
	bceqz	$fcc0, .LBB4_202
# %bb.201:
	move	$ra, $t5
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	b	.LBB4_143
.LBB4_202:
	fmul.s	$fa1, $fs0, $fa1
	fcmp.clt.s	$fcc0, $fa0, $fa1
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	bceqz	$fcc0, .LBB4_219
# %bb.203:
	move	$ra, $t5
	move	$t3, $a6
.LBB4_204:
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
.LBB4_205:                              # %.loopexit1022
	blez	$t0, .LBB4_261
# %bb.206:                              # %.preheader1019.preheader
	move	$a1, $zero
	pcalau12i	$a0, %pc_hi20(Hexagon_x)
	addi.d	$s1, $a0, %pc_lo12(Hexagon_x)
	pcalau12i	$a0, %pc_hi20(Hexagon_y)
	addi.d	$a5, $a0, %pc_lo12(Hexagon_y)
	ori	$a6, $zero, 24
	st.d	$a5, $sp, 160                   # 8-byte Folded Spill
	b	.LBB4_208
	.p2align	4, , 16
.LBB4_207:                              #   in Loop: Header=BB4_208 Depth=1
	addi.w	$a1, $a0, 1
	beq	$a1, $t0, .LBB4_143
.LBB4_208:                              # %.preheader1019
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_210 Depth 2
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	move	$s8, $zero
	move	$t5, $ra
	move	$s5, $t3
	st.d	$ra, $sp, 192                   # 8-byte Folded Spill
	b	.LBB4_210
	.p2align	4, , 16
.LBB4_209:                              #   in Loop: Header=BB4_210 Depth=2
	addi.d	$s8, $s8, 4
	beq	$s8, $a6, .LBB4_216
.LBB4_210:                              #   Parent Loop BB4_208 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a0, $s1, $s8
	add.w	$s4, $a0, $s5
	sub.w	$a0, $s4, $a7
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	blt	$t0, $a1, .LBB4_209
# %bb.211:                              #   in Loop: Header=BB4_210 Depth=2
	ldx.w	$a1, $a5, $s8
	add.w	$fp, $a1, $t5
	sub.w	$a1, $fp, $t1
	srai.d	$a2, $a1, 31
	xor	$a3, $a1, $a2
	sub.w	$a2, $a3, $a2
	bltu	$t0, $a2, .LBB4_209
# %bb.212:                              #   in Loop: Header=BB4_210 Depth=2
	ld.d	$a2, $t2, %pc_lo12(McostState)
	add.w	$a1, $a1, $t0
	slli.d	$s2, $a1, 3
	ldx.d	$a1, $a2, $s2
	add.w	$s0, $a0, $t0
	ldx.bu	$a0, $a1, $s0
	bnez	$a0, .LBB4_209
# %bb.213:                              #   in Loop: Header=BB4_210 Depth=2
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	slli.d	$a0, $s4, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $a2, $a1
	slli.d	$a1, $fp, 2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a4, $a1, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a2, $a2, $a4
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	mul.w	$a2, $a2, $a3
	srai.d	$s7, $a2, 16
	addi.w	$s3, $s6, 0
	bge	$s7, $s3, .LBB4_209
# %bb.214:                              #   in Loop: Header=BB4_210 Depth=2
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a6, $a3, $a2
	sub.w	$a3, $s6, $s7
	addi.w	$a4, $a0, 80
	addi.w	$a5, $a1, 80
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.d	$t3, $sp, 288                   # 8-byte Folded Spill
	st.d	$ra, $sp, 304                   # 8-byte Folded Spill
	jirl	$ra, $a6, 0
	ld.d	$t5, $sp, 192                   # 8-byte Folded Reload
	ori	$a6, $zero, 24
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $t2, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s2
	add.w	$a0, $a0, $s7
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $s0
	bge	$a0, $s3, .LBB4_209
# %bb.215:                              #   in Loop: Header=BB4_210 Depth=2
	move	$ra, $fp
	move	$t3, $s4
	move	$s6, $a0
	b	.LBB4_209
	.p2align	4, , 16
.LBB4_216:                              #   in Loop: Header=BB4_208 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	bne	$t3, $s5, .LBB4_207
# %bb.217:                              #   in Loop: Header=BB4_208 Depth=1
	bne	$ra, $t5, .LBB4_207
# %bb.218:
	move	$ra, $t5
	move	$t3, $s5
	b	.LBB4_143
.LBB4_219:                              # %.preheader1024.preheader
	pcalau12i	$a0, %got_pc_hi20(spiral_search_x)
	ld.d	$a1, $a0, %got_pc_lo12(spiral_search_x)
	pcalau12i	$a0, %got_pc_hi20(spiral_search_y)
	ld.d	$a0, $a0, %got_pc_lo12(spiral_search_y)
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a2, $a0, 0
	ori	$s2, $zero, 2
	ori	$s3, $zero, 50
	move	$t3, $a6
	move	$ra, $t5
	st.d	$t5, $sp, 192                   # 8-byte Folded Spill
	b	.LBB4_222
.LBB4_220:                              #   in Loop: Header=BB4_222 Depth=1
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_221:                              #   in Loop: Header=BB4_222 Depth=1
	addi.d	$s2, $s2, 2
	beq	$s2, $s3, .LBB4_230
.LBB4_222:                              # %.preheader1024
                                        # =>This Inner Loop Header: Depth=1
	ldx.h	$a0, $a1, $s2
	add.w	$s5, $a6, $a0
	sub.w	$a0, $s5, $a7
	srai.d	$a3, $a0, 31
	xor	$a4, $a0, $a3
	sub.w	$a3, $a4, $a3
	blt	$t0, $a3, .LBB4_221
# %bb.223:                              #   in Loop: Header=BB4_222 Depth=1
	ldx.h	$a3, $a2, $s2
	add.w	$s7, $t5, $a3
	sub.w	$a3, $s7, $t1
	srai.d	$a4, $a3, 31
	xor	$a5, $a3, $a4
	sub.w	$a4, $a5, $a4
	bltu	$t0, $a4, .LBB4_221
# %bb.224:                              #   in Loop: Header=BB4_222 Depth=1
	ld.d	$a4, $t2, %pc_lo12(McostState)
	add.w	$a3, $a3, $t0
	slli.d	$fp, $a3, 3
	ldx.d	$a3, $a4, $fp
	add.w	$s8, $a0, $t0
	ldx.bu	$a0, $a3, $s8
	bnez	$a0, .LBB4_221
# %bb.225:                              #   in Loop: Header=BB4_222 Depth=1
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	slli.d	$a0, $s5, 2
	ld.d	$a4, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a4, $a0, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a3, $a4
	slli.d	$a5, $s7, 2
	ld.d	$a6, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a6, $a5, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a3, $a3, $a6
	add.d	$a3, $a3, $a4
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	mul.w	$a3, $a3, $a4
	srai.d	$s4, $a3, 16
	addi.w	$s0, $s6, 0
	bge	$s4, $s0, .LBB4_220
# %bb.226:                              #   in Loop: Header=BB4_222 Depth=1
	st.d	$ra, $sp, 304                   # 8-byte Folded Spill
	move	$s1, $t3
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(dist_method)
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a6, $a2, $a1
	sub.w	$a3, $s6, $s4
	addi.w	$a4, $a0, 80
	addi.w	$a5, $a5, 80
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	ld.d	$t2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $t2, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $fp
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $s8
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	add.w	$a0, $a0, $s4
	bge	$a0, $s0, .LBB4_228
# %bb.227:                              #   in Loop: Header=BB4_222 Depth=1
	move	$ra, $s7
	move	$t3, $s5
	move	$s6, $a0
	ld.d	$a7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 272                   # 8-byte Folded Reload
	b	.LBB4_229
.LBB4_228:                              #   in Loop: Header=BB4_222 Depth=1
	ld.d	$a7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 272                   # 8-byte Folded Reload
	move	$t3, $s1
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
.LBB4_229:                              #   in Loop: Header=BB4_222 Depth=1
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 192                   # 8-byte Folded Reload
	b	.LBB4_221
.LBB4_230:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(pred_SAD)
	sub.d	$a1, $s6, $a0
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa2, $fs1, $fa1
	fcmp.clt.s	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB4_143
# %bb.231:
	fmul.s	$fa1, $fs0, $fa1
	fcmp.clt.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB4_204
# %bb.232:
	pcalau12i	$a0, %pc_hi20(Big_Hexagon_x)
	addi.d	$a5, $a0, %pc_lo12(Big_Hexagon_x)
	vld	$vr0, $a5, 48
	vld	$vr1, $a5, 32
	vld	$vr2, $a5, 16
	vst	$vr0, $sp, 472
	vst	$vr1, $sp, 456
	vst	$vr2, $sp, 440
	vld	$vr0, $a5, 0
	pcalau12i	$a0, %pc_hi20(Big_Hexagon_y)
	addi.d	$s1, $a0, %pc_lo12(Big_Hexagon_y)
	vld	$vr1, $s1, 0
	vst	$vr0, $sp, 424
	vld	$vr0, $s1, 16
	vld	$vr2, $s1, 32
	vst	$vr1, $sp, 360
	vld	$vr1, $s1, 48
	vst	$vr0, $sp, 376
	vst	$vr2, $sp, 392
	ori	$a0, $zero, 4
	vst	$vr1, $sp, 408
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	blt	$t0, $a0, .LBB4_205
# %bb.233:                              # %.preheader1021.preheader
	bstrpick.d	$a0, $t0, 31, 2
	addi.d	$s3, $sp, 424
	addi.d	$s4, $sp, 360
	ori	$t6, $zero, 64
	addi.w	$a0, $a0, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a5, $sp, 112                   # 8-byte Folded Spill
.LBB4_234:                              # %.preheader1021
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_237 Depth 2
	move	$s2, $zero
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	b	.LBB4_237
.LBB4_235:                              #   in Loop: Header=BB4_237 Depth=2
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_236:                              #   in Loop: Header=BB4_237 Depth=2
	addi.d	$s2, $s2, 4
	beq	$s2, $t6, .LBB4_244
.LBB4_237:                              #   Parent Loop BB4_234 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a0, $s2, $s3
	ldx.w	$a2, $a5, $s2
	ldx.w	$a1, $s2, $s4
	ldx.w	$a3, $s1, $s2
	add.w	$s7, $a0, $a6
	add.d	$a0, $a2, $a0
	stx.w	$a0, $s2, $s3
	add.d	$a2, $a3, $a1
	sub.w	$a0, $s7, $a7
	srai.d	$a3, $a0, 31
	xor	$a4, $a0, $a3
	sub.w	$a3, $a4, $a3
	stx.w	$a2, $s2, $s4
	blt	$t0, $a3, .LBB4_236
# %bb.238:                              #   in Loop: Header=BB4_237 Depth=2
	add.w	$s8, $a1, $t5
	sub.w	$a1, $s8, $t1
	srai.d	$a2, $a1, 31
	xor	$a3, $a1, $a2
	sub.w	$a2, $a3, $a2
	bltu	$t0, $a2, .LBB4_236
# %bb.239:                              #   in Loop: Header=BB4_237 Depth=2
	ld.d	$a2, $t2, %pc_lo12(McostState)
	add.w	$a1, $a1, $t0
	slli.d	$s5, $a1, 3
	ldx.d	$a1, $a2, $s5
	add.w	$fp, $a0, $t0
	ldx.bu	$a0, $a1, $fp
	bnez	$a0, .LBB4_235
# %bb.240:                              #   in Loop: Header=BB4_237 Depth=2
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	slli.d	$a0, $s7, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $a2, $a1
	slli.d	$a1, $s8, 2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a4, $a1, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a2, $a2, $a4
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	mul.w	$a2, $a2, $a3
	srai.d	$s0, $a2, 16
	addi.w	$a2, $s6, 0
	bge	$s0, $a2, .LBB4_243
# %bb.241:                              #   in Loop: Header=BB4_237 Depth=2
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a6, $a3, $a2
	sub.w	$a3, $s6, $s0
	addi.w	$a4, $a0, 80
	addi.w	$a5, $a1, 80
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.d	$t3, $sp, 288                   # 8-byte Folded Spill
	st.d	$ra, $sp, 304                   # 8-byte Folded Spill
	jirl	$ra, $a6, 0
	ori	$t6, $zero, 64
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $t2, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s5
	add.w	$a0, $a0, $s0
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $fp
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB4_236
# %bb.242:                              #   in Loop: Header=BB4_237 Depth=2
	move	$ra, $s8
	move	$t3, $s7
	move	$s6, $a0
	b	.LBB4_236
.LBB4_243:                              #   in Loop: Header=BB4_237 Depth=2
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	b	.LBB4_236
.LBB4_244:                              #   in Loop: Header=BB4_234 Depth=1
	addi.w	$a0, $s6, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB4_260
# %bb.245:                              #   in Loop: Header=BB4_234 Depth=1
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	addi.w	$a0, $a2, 1
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	bne	$a2, $a1, .LBB4_234
	b	.LBB4_205
.LBB4_246:                              # %.lr.ph1053.split.preheader
	bstrpick.d	$a0, $t0, 31, 1
	add.w	$a5, $a2, $t0
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	sub.w	$a6, $a3, $a1
	ori	$a1, $zero, 80
	alsl.w	$a1, $t3, $a1, 2
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	addi.w	$t3, $a0, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 4
	sub.d	$t6, $a1, $a0
	ori	$a1, $zero, 1
	sub.d	$s5, $a1, $t1
	slli.d	$a1, $ra, 3
	slli.d	$a2, $t1, 3
	sub.d	$a1, $a1, $a2
	addi.d	$s7, $a1, 8
	nor	$s8, $t1, $zero
	addi.d	$s4, $a1, -8
	addi.d	$a1, $zero, -4
	sub.d	$s1, $a1, $a0
	ori	$t7, $zero, 84
	addi.d	$t8, $zero, -1
	ori	$s3, $zero, 76
	ori	$s0, $zero, 1
	ori	$s2, $zero, 1
	move	$t5, $ra
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	st.d	$a5, $sp, 88                    # 8-byte Folded Spill
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	st.d	$t3, $sp, 64                    # 8-byte Folded Spill
	b	.LBB4_249
.LBB4_247:                              #   in Loop: Header=BB4_249 Depth=1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_248:                              #   in Loop: Header=BB4_249 Depth=1
	addi.d	$s2, $s2, 2
	addi.d	$s0, $s0, 2
	addi.d	$t7, $t7, 8
	addi.d	$t6, $t6, 8
	addi.d	$s5, $s5, 2
	addi.d	$s7, $s7, 16
	addi.d	$s8, $s8, -2
	addi.d	$s4, $s4, -16
	addi.d	$t8, $t8, -2
	addi.d	$s3, $s3, -8
	addi.d	$s1, $s1, -8
	bgeu	$s2, $t3, .LBB4_200
.LBB4_249:                              # %.lr.ph1053.split
                                        # =>This Inner Loop Header: Depth=1
	add.w	$a0, $ra, $s5
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB4_255
# %bb.250:                              #   in Loop: Header=BB4_249 Depth=1
	ld.d	$a0, $t2, %pc_lo12(McostState)
	add.d	$a0, $a0, $a2
	ldx.d	$a0, $a0, $s7
	ldx.bu	$a0, $a0, $a5
	bnez	$a0, .LBB4_255
# %bb.251:                              #   in Loop: Header=BB4_249 Depth=1
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a6, 2
	ldx.w	$a1, $a0, $a1
	add.w	$a2, $a4, $t6
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$fp, $a0, 16
	addi.w	$a0, $s6, 0
	bge	$fp, $a0, .LBB4_254
# %bb.252:                              #   in Loop: Header=BB4_249 Depth=1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(dist_method)
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $s6, $fp
	add.w	$a5, $a4, $t7
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	st.d	$ra, $sp, 304                   # 8-byte Folded Spill
	st.d	$t5, $sp, 192                   # 8-byte Folded Spill
	st.d	$t6, $sp, 160                   # 8-byte Folded Spill
	st.d	$t7, $sp, 112                   # 8-byte Folded Spill
	st.d	$t8, $sp, 96                    # 8-byte Folded Spill
	jirl	$ra, $a6, 0
	ld.d	$t8, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$t5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $t2, %pc_lo12(McostState)
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	ldx.d	$a1, $a1, $s7
	add.w	$a0, $a0, $fp
	ori	$t7, $zero, 1
	stx.b	$t7, $a1, $a5
	ld.d	$t7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	bge	$a0, $a1, .LBB4_255
# %bb.253:                              #   in Loop: Header=BB4_249 Depth=1
	add.w	$t5, $ra, $s0
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	move	$s6, $a0
	b	.LBB4_255
.LBB4_254:                              #   in Loop: Header=BB4_249 Depth=1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_255:                              #   in Loop: Header=BB4_249 Depth=1
	add.w	$a0, $ra, $s8
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t0, $a0, .LBB4_248
# %bb.256:                              #   in Loop: Header=BB4_249 Depth=1
	ld.d	$a0, $t2, %pc_lo12(McostState)
	add.d	$a0, $a0, $a2
	ldx.d	$a0, $a0, $s4
	ldx.bu	$a0, $a0, $a5
	bnez	$a0, .LBB4_248
# %bb.257:                              #   in Loop: Header=BB4_249 Depth=1
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a6, 2
	ldx.w	$a1, $a0, $a1
	add.w	$a2, $a4, $s1
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$fp, $a0, 16
	addi.w	$a0, $s6, 0
	bge	$fp, $a0, .LBB4_247
# %bb.258:                              #   in Loop: Header=BB4_249 Depth=1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(dist_method)
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $s6, $fp
	add.w	$a5, $a4, $s3
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	st.d	$ra, $sp, 304                   # 8-byte Folded Spill
	st.d	$t5, $sp, 192                   # 8-byte Folded Spill
	st.d	$t6, $sp, 160                   # 8-byte Folded Spill
	st.d	$t7, $sp, 112                   # 8-byte Folded Spill
	st.d	$t8, $sp, 96                    # 8-byte Folded Spill
	jirl	$ra, $a6, 0
	ld.d	$t8, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$t5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $t2, %pc_lo12(McostState)
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	ldx.d	$a1, $a1, $s4
	add.w	$a0, $a0, $fp
	ori	$t7, $zero, 1
	stx.b	$t7, $a1, $a5
	ld.d	$t7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	bge	$a0, $a1, .LBB4_248
# %bb.259:                              #   in Loop: Header=BB4_249 Depth=1
	add.w	$t5, $ra, $t8
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	move	$s6, $a0
	b	.LBB4_248
.LBB4_260:
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
.LBB4_261:                              # %.loopexit
	move	$s7, $t3
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	srai.d	$a0, $a0, 2
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	blez	$a0, .LBB4_278
# %bb.262:                              # %.preheader.lr.ph
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	srai.d	$a1, $a1, 2
	blez	$a1, .LBB4_278
# %bb.263:                              # %.preheader.us.preheader
	move	$a2, $zero
	bstrpick.d	$a3, $a1, 30, 2
	slli.d	$a3, $a3, 2
	slli.d	$a4, $s5, 3
	addi.d	$a5, $a4, 16
	pcalau12i	$a6, %pc_hi20(fastme_l0_cost)
	pcalau12i	$a7, %pc_hi20(fastme_ref_cost)
	slli.d	$t0, $s4, 3
	slli.d	$t1, $s3, 3
	ori	$t2, $zero, 4
	b	.LBB4_265
	.p2align	4, , 16
.LBB4_264:                              # %._crit_edge1107.us
                                        #   in Loop: Header=BB4_265 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $a0, .LBB4_278
.LBB4_265:                              # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_267 Depth 2
                                        #     Child Loop BB4_274 Depth 2
                                        #     Child Loop BB4_277 Depth 2
                                        #     Child Loop BB4_272 Depth 2
	ld.d	$t4, $s2, 0
	add.d	$t5, $a2, $s8
	ld.d	$t3, $sp, 352                   # 8-byte Folded Reload
	beqz	$t3, .LBB4_268
# %bb.266:                              # %.lr.ph1106.split.us1112
                                        #   in Loop: Header=BB4_265 Depth=1
	pcalau12i	$t3, %pc_hi20(fastme_l1_cost)
	ld.d	$t3, $t3, %pc_lo12(fastme_l1_cost)
	ldx.d	$t3, $t3, $t1
	move	$t6, $s5
	move	$t7, $a1
	.p2align	4, , 16
.LBB4_267:                              #   Parent Loop BB4_265 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t8, $t4, 180
	srli.d	$t8, $t8, 2
	ld.w	$fp, $t4, 176
	add.w	$t8, $t6, $t8
	slli.d	$t8, $t8, 3
	ldx.d	$t8, $t3, $t8
	srli.d	$fp, $fp, 2
	add.w	$fp, $fp, $t5
	slli.d	$fp, $fp, 2
	stx.w	$s6, $t8, $fp
	addi.w	$t7, $t7, -1
	addi.d	$t6, $t6, 1
	bnez	$t7, .LBB4_267
	b	.LBB4_264
	.p2align	4, , 16
.LBB4_268:                              # %.lr.ph1106.split.us.us
                                        #   in Loop: Header=BB4_265 Depth=1
	ld.d	$t3, $a7, %pc_lo12(fastme_ref_cost)
	ldx.d	$t3, $t3, $t0
	ldx.d	$t6, $t3, $t1
	slli.d	$t3, $t5, 2
	beqz	$s4, .LBB4_271
# %bb.269:                              # %.lr.ph1106.split.us.split.us1115.preheader
                                        #   in Loop: Header=BB4_265 Depth=1
	bgeu	$a1, $t2, .LBB4_273
# %bb.270:                              #   in Loop: Header=BB4_265 Depth=1
	move	$t5, $zero
	b	.LBB4_276
.LBB4_271:                              # %.lr.ph1106.split.us.split.us.us
                                        #   in Loop: Header=BB4_265 Depth=1
	ld.d	$t7, $a6, %pc_lo12(fastme_l0_cost)
	alsl.d	$t7, $s3, $t7, 3
	ld.d	$t7, $t7, 0
	add.d	$t6, $t6, $a4
	move	$t8, $a1
	move	$fp, $s5
	.p2align	4, , 16
.LBB4_272:                              #   Parent Loop BB4_265 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $t6, 0
	stx.w	$s6, $s0, $t3
	ld.w	$s0, $t4, 180
	srli.d	$s0, $s0, 2
	ld.w	$s1, $t4, 176
	add.w	$s0, $fp, $s0
	slli.d	$s0, $s0, 3
	ldx.d	$s0, $t7, $s0
	srli.d	$s1, $s1, 2
	add.w	$s1, $s1, $t5
	slli.d	$s1, $s1, 2
	stx.w	$s6, $s0, $s1
	addi.d	$fp, $fp, 1
	addi.d	$t8, $t8, -1
	addi.d	$t6, $t6, 8
	bnez	$t8, .LBB4_272
	b	.LBB4_264
.LBB4_273:                              # %vector.body.preheader
                                        #   in Loop: Header=BB4_265 Depth=1
	add.d	$t4, $t6, $a5
	move	$t5, $a3
	.p2align	4, , 16
.LBB4_274:                              # %vector.body
                                        #   Parent Loop BB4_265 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t7, $t4, -16
	ld.d	$t8, $t4, -8
	ld.d	$fp, $t4, 0
	ld.d	$s0, $t4, 8
	stx.w	$s6, $t7, $t3
	stx.w	$s6, $t8, $t3
	stx.w	$s6, $fp, $t3
	stx.w	$s6, $s0, $t3
	addi.d	$t5, $t5, -4
	addi.d	$t4, $t4, 32
	bnez	$t5, .LBB4_274
# %bb.275:                              # %middle.block
                                        #   in Loop: Header=BB4_265 Depth=1
	move	$t5, $a3
	beq	$a3, $a1, .LBB4_264
.LBB4_276:                              # %.lr.ph1106.split.us.split.us1115.preheader1194
                                        #   in Loop: Header=BB4_265 Depth=1
	add.d	$t4, $t6, $a4
	alsl.d	$t4, $t5, $t4, 3
	sub.d	$t5, $a1, $t5
	.p2align	4, , 16
.LBB4_277:                              # %.lr.ph1106.split.us.split.us1115
                                        #   Parent Loop BB4_265 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t6, $t4, 0
	stx.w	$s6, $t6, $t3
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 8
	bnez	$t5, .LBB4_277
	b	.LBB4_264
.LBB4_278:                              # %._crit_edge1109
	addi.w	$a0, $s6, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 2
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	beqz	$s4, .LBB4_280
# %bb.279:
	ldx.w	$a2, $a4, $a1
	bge	$a0, $a2, .LBB4_281
.LBB4_280:                              # %._crit_edge1109._crit_edge
	stx.w	$s6, $a4, $a1
.LBB4_281:
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	sub.d	$a1, $s7, $a1
	st.h	$a1, $a3, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	sub.d	$a1, $ra, $a1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	st.h	$a1, $a2, 0
	fld.d	$fs1, $sp, 488                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 496                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 568                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 576                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 584                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 592
	ret
.Lfunc_end4:
	.size	UMHEXIntegerPelBlockMotionSearch, .Lfunc_end4-UMHEXIntegerPelBlockMotionSearch
                                        # -- End function
	.globl	UMHEX_setup                     # -- Begin function UMHEX_setup
	.p2align	5
	.type	UMHEX_setup,@function
UMHEX_setup:                            # @UMHEX_setup
# %bb.0:
	pcalau12i	$a6, %got_pc_hi20(input)
	ld.d	$a6, $a6, %got_pc_lo12(input)
	ld.d	$a6, $a6, 0
	ldptr.w	$t0, $a6, 2096
	beqz	$t0, .LBB5_3
# %bb.1:
	pcalau12i	$a6, %pc_hi20(frame_ctr+4)
	ld.w	$a6, $a6, %pc_lo12(frame_ctr+4)
	addi.w	$a7, $t0, 1
	mod.w	$t1, $a6, $a7
	ori	$a6, $zero, 2
	blt	$a4, $a6, .LBB5_4
.LBB5_2:
	slli.d	$a6, $a2, 3
	ldx.d	$a6, $a5, $a6
	slli.d	$a7, $a3, 3
	ldx.d	$a6, $a6, $a7
	slli.d	$a7, $a4, 2
	pcalau12i	$t2, %pc_hi20(.L__const.UMHEX_setup.indication_blocktype)
	slli.d	$t3, $a1, 3
	ldx.d	$a6, $a6, $t3
	addi.d	$t2, $t2, %pc_lo12(.L__const.UMHEX_setup.indication_blocktype)
	ldx.w	$a7, $t2, $a7
	slli.d	$t2, $a0, 3
	ldx.d	$a6, $a6, $t2
	slli.d	$t2, $a7, 3
	ldx.d	$a6, $a6, $t2
	ld.h	$t2, $a6, 0
	ld.h	$a6, $a6, 2
	pcalau12i	$t3, %pc_hi20(pred_MV_uplayer)
	addi.d	$t3, $t3, %pc_lo12(pred_MV_uplayer)
	st.w	$t2, $t3, 0
	st.w	$a6, $t3, 4
	pcalau12i	$a6, %pc_hi20(pred_MV_ref_flag)
	st.b	$zero, $a6, %pc_lo12(pred_MV_ref_flag)
	bnez	$a1, .LBB5_5
	b	.LBB5_9
.LBB5_3:
	move	$t1, $zero
	ori	$a6, $zero, 2
	bge	$a4, $a6, .LBB5_2
.LBB5_4:
	move	$a7, $zero
	pcalau12i	$a6, %pc_hi20(pred_MV_ref_flag)
	st.b	$zero, $a6, %pc_lo12(pred_MV_ref_flag)
	beqz	$a1, .LBB5_9
.LBB5_5:                                # %.thread121
	ori	$a5, $zero, 2
	move	$a0, $zero
	blt	$a4, $a5, .LBB5_8
# %bb.6:                                # %.thread121
	pcalau12i	$a4, %pc_hi20(flag_intra_SAD)
	ld.w	$a4, $a4, %pc_lo12(flag_intra_SAD)
	bnez	$a4, .LBB5_8
# %bb.7:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
	ld.d	$a0, $a0, 0
	pcalau12i	$a4, %pc_hi20(fastme_l1_cost)
	addi.d	$a4, $a4, %pc_lo12(fastme_l1_cost)
	pcalau12i	$a5, %pc_hi20(fastme_l0_cost)
	addi.d	$a5, $a5, %pc_lo12(fastme_l0_cost)
	masknez	$a5, $a5, $a1
	maskeqz	$a1, $a4, $a1
	ld.w	$a4, $a0, 180
	or	$a1, $a1, $a5
	ld.d	$a1, $a1, 0
	srli.d	$a4, $a4, 2
	slli.d	$a5, $a7, 3
	ldx.d	$a1, $a1, $a5
	ld.w	$a0, $a0, 176
	add.w	$a2, $a4, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	srli.d	$a0, $a0, 2
	add.w	$a0, $a0, $a3
	slli.d	$a0, $a0, 2
	ldx.wu	$a0, $a1, $a0
	srli.d	$a1, $a0, 31
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 1
.LBB5_8:
	pcalau12i	$a1, %pc_hi20(pred_SAD)
	st.w	$a0, $a1, %pc_lo12(pred_SAD)
	ret
.LBB5_9:
	pcalau12i	$t2, %got_pc_hi20(img)
	ld.d	$t2, $t2, %got_pc_lo12(img)
	ld.d	$t3, $t2, 0
	ldptr.w	$t2, $t3, 15312
	beqz	$t2, .LBB5_13
# %bb.10:
	ori	$t2, $zero, 1
	bge	$t2, $a0, .LBB5_16
# %bb.11:                               # %.thread126.thread
	slli.d	$a1, $a2, 3
	ldx.d	$a2, $a5, $a1
	slli.d	$a5, $a3, 3
	ldx.d	$a2, $a2, $a5
	ld.d	$a2, $a2, 0
	alsl.d	$a2, $a0, $a2, 3
	ld.d	$a5, $a2, -16
	slli.d	$a2, $a4, 3
	ldx.d	$a4, $a5, $a2
	ld.h	$a5, $a4, 0
	bstrpick.d	$a7, $a0, 15, 1
	addi.d	$t0, $a7, 1
	mul.d	$a5, $a5, $t0
	movgr2fr.w	$fa0, $a5
	ffint.s.w	$fa0, $fa0
	movgr2fr.d	$fa1, $a7
	ffint.s.l	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a5, $fa0
	ld.h	$a4, $a4, 2
	pcalau12i	$a7, %pc_hi20(pred_MV_ref)
	addi.d	$a7, $a7, %pc_lo12(pred_MV_ref)
	st.w	$a5, $a7, 0
	mul.d	$a4, $a4, $t0
	movgr2fr.w	$fa0, $a4
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fa1
	pcalau12i	$a4, %pc_hi20(flag_intra_SAD)
	ld.w	$a4, $a4, %pc_lo12(flag_intra_SAD)
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a5, $fa0
	st.w	$a5, $a7, 4
	st.b	$t2, $a6, %pc_lo12(pred_MV_ref_flag)
	beqz	$a4, .LBB5_25
# %bb.12:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(pred_SAD)
	st.w	$a0, $a1, %pc_lo12(pred_SAD)
	ret
.LBB5_13:
	blez	$a0, .LBB5_22
# %bb.14:                               # %.thread126
	slli.d	$a1, $a2, 3
	ldx.d	$a2, $a5, $a1
	slli.d	$a5, $a3, 3
	ldx.d	$a2, $a2, $a5
	ld.d	$a2, $a2, 0
	alsl.d	$a2, $a0, $a2, 3
	ld.d	$a5, $a2, -8
	slli.d	$a2, $a4, 3
	ldx.d	$a4, $a5, $a2
	ld.h	$a5, $a4, 0
	bstrpick.d	$a7, $a0, 15, 0
	addi.d	$t0, $a0, 1
	bstrpick.d	$t0, $t0, 15, 0
	mul.d	$a5, $a5, $t0
	movgr2fr.w	$fa0, $a5
	ffint.s.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a7
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a5, $fa0
	ld.h	$a4, $a4, 2
	pcalau12i	$a7, %pc_hi20(pred_MV_ref)
	addi.d	$a7, $a7, %pc_lo12(pred_MV_ref)
	st.w	$a5, $a7, 0
	mul.d	$a4, $a4, $t0
	movgr2fr.w	$fa0, $a4
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fa1
	ftintrz.w.s	$fa0, $fa0
	pcalau12i	$a4, %pc_hi20(flag_intra_SAD)
	ld.w	$a4, $a4, %pc_lo12(flag_intra_SAD)
	movfr2gr.s	$a5, $fa0
	st.w	$a5, $a7, 4
	ori	$a5, $zero, 1
	st.b	$a5, $a6, %pc_lo12(pred_MV_ref_flag)
	beqz	$a4, .LBB5_26
# %bb.15:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(pred_SAD)
	st.w	$a0, $a1, %pc_lo12(pred_SAD)
	ret
.LBB5_16:
	bltu	$t2, $a0, .LBB5_19
# %bb.17:
	ld.w	$t3, $t3, 20
	ori	$t2, $zero, 1
	bne	$t3, $t2, .LBB5_19
# %bb.18:
	slli.d	$t3, $a2, 3
	ldx.d	$a5, $a5, $t3
	slli.d	$t3, $a3, 3
	ldx.d	$a5, $a5, $t3
	ld.d	$a5, $a5, 8
	ld.d	$a5, $a5, 0
	slli.d	$t3, $a4, 3
	ldx.d	$a5, $a5, $t3
	ld.h	$t3, $a5, 0
	sub.d	$t4, $zero, $t1
	mul.d	$t3, $t3, $t4
	movgr2fr.w	$fa0, $t3
	ffint.s.w	$fa0, $fa0
	sub.d	$t0, $t0, $t1
	movgr2fr.w	$fa1, $t0
	ffint.s.w	$fa1, $fa1
	vldi	$vr2, -1168
	fadd.s	$fa1, $fa1, $fa2
	fdiv.s	$fa0, $fa0, $fa1
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$t0, $fa0
	ld.h	$a5, $a5, 2
	pcalau12i	$t1, %pc_hi20(pred_MV_ref)
	addi.d	$t1, $t1, %pc_lo12(pred_MV_ref)
	st.w	$t0, $t1, 0
	mul.d	$a5, $a5, $t4
	movgr2fr.w	$fa0, $a5
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fa1
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a5, $fa0
	st.w	$a5, $t1, 4
	st.b	$t2, $a6, %pc_lo12(pred_MV_ref_flag)
.LBB5_19:
	ori	$a5, $zero, 1
	bne	$a0, $a5, .LBB5_5
# %bb.20:                               # %.thread127
	pcalau12i	$a0, %pc_hi20(flag_intra_SAD)
	ld.w	$a0, $a0, %pc_lo12(flag_intra_SAD)
	beqz	$a0, .LBB5_28
# %bb.21:
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(pred_SAD)
	st.w	$a0, $a1, %pc_lo12(pred_SAD)
	ret
.LBB5_22:
	bnez	$a0, .LBB5_5
# %bb.23:
	ld.w	$t2, $t3, 20
	ori	$a0, $zero, 1
	bne	$t2, $a0, .LBB5_5
# %bb.24:
	slli.d	$t2, $a2, 3
	ldx.d	$a5, $a5, $t2
	slli.d	$t2, $a3, 3
	ldx.d	$a5, $a5, $t2
	ld.d	$a5, $a5, 8
	ld.d	$a5, $a5, 0
	slli.d	$t2, $a4, 3
	ldx.d	$a5, $a5, $t2
	ld.h	$t2, $a5, 0
	sub.d	$t3, $zero, $t1
	mul.d	$t2, $t2, $t3
	movgr2fr.w	$fa0, $t2
	ffint.s.w	$fa0, $fa0
	sub.d	$t0, $t0, $t1
	movgr2fr.w	$fa1, $t0
	ffint.s.w	$fa1, $fa1
	vldi	$vr2, -1168
	fadd.s	$fa1, $fa1, $fa2
	fdiv.s	$fa0, $fa0, $fa1
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$t0, $fa0
	ld.h	$a5, $a5, 2
	pcalau12i	$t1, %pc_hi20(pred_MV_ref)
	addi.d	$t1, $t1, %pc_lo12(pred_MV_ref)
	st.w	$t0, $t1, 0
	mul.d	$a5, $a5, $t3
	movgr2fr.w	$fa0, $a5
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fa1
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a5, $fa0
	st.w	$a5, $t1, 4
	st.b	$a0, $a6, %pc_lo12(pred_MV_ref_flag)
	b	.LBB5_5
.LBB5_25:                               # %.thread134
	pcalau12i	$a4, %pc_hi20(fastme_ref_cost)
	ld.d	$a4, $a4, %pc_lo12(fastme_ref_cost)
	alsl.d	$a0, $a0, $a4, 3
	ld.d	$a0, $a0, -16
	b	.LBB5_27
.LBB5_26:
	pcalau12i	$a4, %pc_hi20(fastme_ref_cost)
	ld.d	$a4, $a4, %pc_lo12(fastme_ref_cost)
	alsl.d	$a0, $a0, $a4, 3
	ld.d	$a0, $a0, -8
.LBB5_27:
	ldx.d	$a0, $a0, $a2
	b	.LBB5_29
.LBB5_28:                               # %.thread130
	pcalau12i	$a0, %pc_hi20(fastme_ref_cost)
	ld.d	$a0, $a0, %pc_lo12(fastme_ref_cost)
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a4, 3
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $a2, 3
.LBB5_29:
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $a3, 2
	ldx.w	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(pred_SAD)
	st.w	$a0, $a1, %pc_lo12(pred_SAD)
	ret
.Lfunc_end5:
	.size	UMHEX_setup, .Lfunc_end5-UMHEX_setup
                                        # -- End function
	.globl	UMHEXSubPelBlockMotionSearch    # -- Begin function UMHEXSubPelBlockMotionSearch
	.p2align	5
	.type	UMHEXSubPelBlockMotionSearch,@function
UMHEXSubPelBlockMotionSearch:           # @UMHEXSubPelBlockMotionSearch
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$t0, %got_pc_hi20(img)
	ld.d	$t0, $t0, %got_pc_lo12(img)
	ld.d	$t0, $t0, 0
	ldptr.w	$t1, $t0, 15268
	move	$s6, $a7
	move	$s7, $a6
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	beqz	$t1, .LBB6_3
# %bb.1:
	ld.w	$a0, $t0, 12
	ldptr.d	$a6, $t0, 14224
	ori	$a7, $zero, 536
	mul.d	$a7, $a0, $a7
	add.d	$a6, $a6, $a7
	ld.w	$a6, $a6, 424
	beqz	$a6, .LBB6_3
# %bb.2:
	andi	$a0, $a0, 1
	sltui	$a0, $a0, 1
	ori	$a6, $zero, 4
	masknez	$a6, $a6, $a0
	ori	$a7, $zero, 2
	maskeqz	$a0, $a7, $a0
	or	$a0, $a0, $a6
	b	.LBB6_4
.LBB6_3:
	move	$a0, $zero
.LBB6_4:
	ld.d	$s4, $sp, 208
	add.w	$a0, $a0, $a2
	pcalau12i	$a2, %got_pc_hi20(listX)
	ld.d	$a6, $a2, %got_pc_lo12(listX)
	pcalau12i	$a2, %got_pc_hi20(input)
	ld.d	$a7, $a2, %got_pc_lo12(input)
	slli.d	$a2, $a0, 3
	ldx.d	$a6, $a6, $a2
	slli.d	$t1, $a1, 3
	ld.d	$t4, $a7, 0
	pcalau12i	$a0, %pc_hi20(active_pps)
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ldx.d	$a6, $a6, $t1
	alsl.d	$a7, $a5, $t4, 3
	ori	$t1, $zero, 80
	ld.w	$a5, $a0, 192
	alsl.w	$a3, $a3, $t1, 2
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	lu12i.w	$a3, 1
	ori	$t2, $a3, 2296
	ori	$t3, $a3, 2300
	beqz	$a5, .LBB6_7
# %bb.5:
	ld.w	$a5, $t0, 20
	beqz	$a5, .LBB6_9
# %bb.6:
	ori	$t5, $zero, 3
	beq	$a5, $t5, .LBB6_9
.LBB6_7:
	ld.w	$a5, $a0, 196
	ori	$a0, $zero, 2
	beqz	$a5, .LBB6_10
# %bb.8:
	ld.w	$a5, $t0, 20
	ori	$t0, $zero, 1
	bne	$a5, $t0, .LBB6_10
.LBB6_9:
	ori	$a0, $zero, 2936
	ldx.w	$a0, $t4, $a0
	sltu	$a5, $zero, $a0
	ori	$a0, $zero, 2
	masknez	$a0, $a0, $a5
	ori	$t0, $zero, 5
	maskeqz	$t0, $t0, $a5
	or	$a0, $t0, $a0
	b	.LBB6_11
.LBB6_10:
	move	$a5, $zero
.LBB6_11:                               # %.thread
	ld.w	$t0, $a7, 72
	st.d	$t0, $sp, 104                   # 8-byte Folded Spill
	ld.w	$a7, $a7, 76
	st.d	$a7, $sp, 88                    # 8-byte Folded Spill
	ldx.w	$t0, $a6, $t2
	ldx.w	$a7, $a6, $t3
	ld.h	$t2, $s4, 0
	ld.d	$t6, $sp, 216
	alsl.w	$a4, $a4, $t1, 2
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$t3, %pc_hi20(dist_method)
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	add.w	$a4, $a4, $t2
	ori	$t1, $zero, 2
	st.d	$t3, $sp, 56                    # 8-byte Folded Spill
	st.w	$a0, $t3, %pc_lo12(dist_method)
	blt	$a4, $t1, .LBB6_16
# %bb.12:
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	sub.d	$t1, $t0, $t1
	slli.d	$t1, $t1, 2
	addi.d	$t1, $t1, 160
	ext.w.h	$t1, $t1
	addi.d	$t1, $t1, -1
	bge	$a4, $t1, .LBB6_16
# %bb.13:
	ld.h	$a4, $t6, 0
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	add.w	$a4, $t1, $a4
	ori	$t1, $zero, 2
	blt	$a4, $t1, .LBB6_16
# %bb.14:
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	sub.d	$t1, $a7, $t1
	slli.d	$t1, $t1, 2
	addi.d	$t1, $t1, 160
	ext.w.h	$t1, $t1
	addi.d	$t1, $t1, -1
	bge	$a4, $t1, .LBB6_16
# %bb.15:
	move	$t1, $zero
	b	.LBB6_17
.LBB6_16:
	ori	$t1, $zero, 1
.LBB6_17:
	pcalau12i	$a4, %got_pc_hi20(ref_access_method)
	ld.d	$t2, $a4, %got_pc_lo12(ref_access_method)
	ldptr.d	$t3, $a6, 6448
	pcalau12i	$a4, %got_pc_hi20(ref_pic_sub)
	ld.d	$a4, $a4, %got_pc_lo12(ref_pic_sub)
	pcalau12i	$t4, %got_pc_hi20(img_width)
	ld.d	$t4, $t4, %got_pc_lo12(img_width)
	pcalau12i	$t5, %got_pc_hi20(img_height)
	ld.d	$t5, $t5, %got_pc_lo12(img_height)
	st.w	$t1, $t2, 0
	st.h	$t0, $t4, 0
	st.d	$t3, $a4, 0
	st.h	$a7, $t5, 0
	ori	$a7, $a3, 2312
	ldx.w	$a7, $a6, $a7
	ori	$t0, $a3, 2316
	ldx.w	$t0, $a6, $t0
	pcalau12i	$t1, %pc_hi20(width_pad)
	st.w	$a7, $t1, %pc_lo12(width_pad)
	pcalau12i	$a7, %pc_hi20(height_pad)
	st.w	$t0, $a7, %pc_lo12(height_pad)
	beqz	$a5, .LBB6_19
# %bb.18:
	pcalau12i	$a7, %pc_hi20(wp_weight)
	ld.d	$a7, $a7, %pc_lo12(wp_weight)
	ldx.d	$a7, $a7, $a2
	slli.d	$t0, $a1, 3
	pcalau12i	$t1, %pc_hi20(wp_offset)
	ld.d	$t1, $t1, %pc_lo12(wp_offset)
	ldx.d	$a7, $a7, $t0
	ldx.d	$t1, $t1, $a2
	ld.w	$a7, $a7, 0
	pcalau12i	$t2, %got_pc_hi20(weight_luma)
	ld.d	$t2, $t2, %got_pc_lo12(weight_luma)
	ldx.d	$t0, $t1, $t0
	st.w	$a7, $t2, 0
	ld.w	$a7, $t0, 0
	pcalau12i	$t0, %got_pc_hi20(offset_luma)
	ld.d	$t0, $t0, %got_pc_lo12(offset_luma)
	st.w	$a7, $t0, 0
.LBB6_19:
	pcalau12i	$a7, %got_pc_hi20(ChromaMEEnable)
	ld.d	$a7, $a7, %got_pc_lo12(ChromaMEEnable)
	ld.w	$a7, $a7, 0
	beqz	$a7, .LBB6_22
# %bb.20:
	ldptr.d	$a7, $a6, 6464
	ld.d	$t0, $a7, 0
	st.d	$t0, $a4, 8
	ld.d	$a7, $a7, 8
	st.d	$a7, $a4, 16
	ori	$a4, $a3, 2320
	ldx.w	$a4, $a6, $a4
	ori	$a3, $a3, 2324
	ldx.w	$a3, $a6, $a3
	pcalau12i	$a6, %pc_hi20(width_pad_cr)
	st.w	$a4, $a6, %pc_lo12(width_pad_cr)
	pcalau12i	$a4, %pc_hi20(height_pad_cr)
	st.w	$a3, $a4, %pc_lo12(height_pad_cr)
	beqz	$a5, .LBB6_22
# %bb.21:
	pcalau12i	$a3, %pc_hi20(wp_weight)
	ld.d	$a3, $a3, %pc_lo12(wp_weight)
	ldx.d	$a3, $a3, $a2
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $a3, $a1
	ld.d	$a3, $a3, 4
	pcalau12i	$a4, %got_pc_hi20(weight_cr)
	ld.d	$a4, $a4, %got_pc_lo12(weight_cr)
	pcalau12i	$a5, %pc_hi20(wp_offset)
	ld.d	$a5, $a5, %pc_lo12(wp_offset)
	st.d	$a3, $a4, 0
	ldx.d	$a2, $a5, $a2
	ldx.d	$a1, $a2, $a1
	ld.w	$a2, $a1, 4
	pcalau12i	$a3, %got_pc_hi20(offset_cr)
	ld.d	$a3, $a3, %got_pc_lo12(offset_cr)
	ld.w	$a1, $a1, 8
	st.w	$a2, $a3, 0
	st.w	$a1, $a3, 4
.LBB6_22:
	ld.h	$a1, $s4, 0
	ld.d	$s8, $sp, 248
	ld.d	$s0, $sp, 240
	sub.d	$a1, $s7, $a1
	bstrpick.d	$a2, $a1, 31, 30
	add.d	$a2, $a1, $a2
	pcalau12i	$a5, %pc_hi20(SearchState)
	ld.d	$a3, $a5, %pc_lo12(SearchState)
	bstrpick.d	$a2, $a2, 31, 2
	ld.h	$a4, $t6, 0
	slli.d	$a2, $a2, 2
	ld.d	$a3, $a3, 0
	sub.w	$s1, $a1, $a2
	sub.d	$a1, $s6, $a4
	bstrpick.d	$a2, $a1, 31, 30
	st.b	$zero, $a3, 48
	vrepli.b	$vr0, 0
	vst	$vr0, $a3, 32
	vst	$vr0, $a3, 16
	vst	$vr0, $a3, 0
	pcalau12i	$a3, %pc_hi20(start_me_refinement_hp)
	ld.w	$a3, $a3, %pc_lo12(start_me_refinement_hp)
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 31, 2
	slli.d	$a2, $a2, 2
	sub.w	$s2, $a1, $a2
	st.d	$t6, $sp, 72                    # 8-byte Folded Spill
	st.d	$a5, $sp, 64                    # 8-byte Folded Spill
	beqz	$a3, .LBB6_24
# %bb.23:
	ld.d	$a0, $a5, %pc_lo12(SearchState)
	ld.d	$a0, $a0, 24
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 3
	ld.h	$s3, $s4, 0
	ld.h	$fp, $t6, 0
	b	.LBB6_28
.LBB6_24:
	pcalau12i	$a1, %got_pc_hi20(mvbits)
	ld.d	$a1, $a1, %got_pc_lo12(mvbits)
	ld.h	$s3, $s4, 0
	ld.d	$a1, $a1, 0
	ld.h	$fp, $t6, 0
	sub.d	$a2, $s3, $s7
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a1, $a2
	sub.d	$a3, $fp, $s6
	slli.d	$a3, $a3, 2
	ldx.w	$a1, $a1, $a3
	add.d	$a1, $a1, $a2
	pcalau12i	$a2, %got_pc_hi20(computeUniPred)
	ld.d	$a2, $a2, %got_pc_lo12(computeUniPred)
	mul.w	$a1, $a1, $s8
	srai.d	$s5, $a1, 16
	slli.d	$a0, $a0, 3
	ldx.d	$a6, $a2, $a0
	sub.w	$a3, $s0, $s5
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	add.w	$a4, $a0, $s3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.w	$a5, $a0, $fp
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a5, %pc_lo12(SearchState)
	ld.d	$a1, $a1, 24
	add.w	$a0, $s5, $a0
	ori	$a2, $zero, 1
	st.b	$a2, $a1, 3
	bge	$a0, $s0, .LBB6_26
# %bb.25:
	move	$s0, $a0
	b	.LBB6_27
.LBB6_26:
	move	$s3, $zero
	move	$fp, $zero
.LBB6_27:
	ld.d	$t6, $sp, 72                    # 8-byte Folded Reload
.LBB6_28:
	or	$a0, $s1, $s2
	st.d	$s6, $sp, 48                    # 8-byte Folded Spill
	st.d	$s7, $sp, 40                    # 8-byte Folded Spill
	st.d	$s8, $sp, 32                    # 8-byte Folded Spill
	beqz	$a0, .LBB6_31
# %bb.29:
	ld.h	$a0, $s4, 0
	pcalau12i	$a1, %got_pc_hi20(mvbits)
	ld.d	$a1, $a1, %got_pc_lo12(mvbits)
	ld.h	$a2, $t6, 0
	add.d	$s1, $s1, $a0
	ld.d	$a0, $a1, 0
	add.d	$s2, $s2, $a2
	sub.w	$a1, $s1, $s7
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	sub.w	$a2, $s2, $s6
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(dist_method)
	pcalau12i	$a2, %got_pc_hi20(computeUniPred)
	ld.d	$a2, $a2, %got_pc_lo12(computeUniPred)
	mul.w	$a0, $a0, $s8
	srai.d	$s5, $a0, 16
	slli.d	$a0, $a1, 3
	ldx.d	$a6, $a2, $a0
	sub.w	$a3, $s0, $s5
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	add.w	$a4, $s1, $a0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.w	$a5, $s2, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 72                    # 8-byte Folded Reload
	ld.h	$a1, $t6, 0
	ld.d	$a2, $a5, %pc_lo12(SearchState)
	sub.w	$a1, $s2, $a1
	alsl.d	$a1, $a1, $a2, 3
	ld.h	$a2, $s4, 0
	ld.d	$a1, $a1, 24
	add.w	$a0, $s5, $a0
	sub.w	$a2, $s1, $a2
	add.d	$a1, $a1, $a2
	ori	$a2, $zero, 1
	st.b	$a2, $a1, 3
	bge	$a0, $s0, .LBB6_31
# %bb.30:
	move	$s0, $a0
	move	$s3, $s1
	move	$fp, $s2
.LBB6_31:                               # %.preheader.preheader
	pcalau12i	$a0, %got_pc_hi20(mvbits)
	ld.d	$a0, $a0, %got_pc_lo12(mvbits)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(computeUniPred)
	ld.d	$a0, $a0, %got_pc_lo12(computeUniPred)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s8, $zero, 3
	ori	$s1, $zero, 3
	.p2align	4, , 16
.LBB6_32:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a0, $s4, 0
	addi.d	$s5, $s3, -1
	sub.w	$a0, $s5, $a0
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	bltu	$s8, $a1, .LBB6_35
# %bb.33:                               #   in Loop: Header=BB6_32 Depth=1
	ld.h	$a1, $t6, 0
	sub.w	$a1, $fp, $a1
	srai.d	$a2, $a1, 31
	xor	$a3, $a1, $a2
	sub.w	$a2, $a3, $a2
	bltu	$s8, $a2, .LBB6_35
# %bb.34:                               #   in Loop: Header=BB6_32 Depth=1
	ld.d	$a2, $a5, %pc_lo12(SearchState)
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a1, $a1, 24
	add.d	$a0, $a1, $a0
	ld.bu	$a0, $a0, 3
	beqz	$a0, .LBB6_51
	.p2align	4, , 16
.LBB6_35:                               #   in Loop: Header=BB6_32 Depth=1
	move	$s6, $s3
	ori	$s2, $zero, 1
.LBB6_36:                               #   in Loop: Header=BB6_32 Depth=1
	ld.h	$a0, $s4, 0
	sub.w	$a0, $s3, $a0
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	bltu	$s8, $a1, .LBB6_39
# %bb.37:                               #   in Loop: Header=BB6_32 Depth=1
	ld.h	$a1, $t6, 0
	addi.d	$s5, $fp, 1
	sub.w	$a1, $s5, $a1
	srai.d	$a2, $a1, 31
	xor	$a3, $a1, $a2
	sub.w	$a2, $a3, $a2
	bltu	$s8, $a2, .LBB6_39
# %bb.38:                               #   in Loop: Header=BB6_32 Depth=1
	ld.d	$a2, $a5, %pc_lo12(SearchState)
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a1, $a1, 24
	add.d	$a0, $a1, $a0
	ld.bu	$a0, $a0, 3
	beqz	$a0, .LBB6_53
	.p2align	4, , 16
.LBB6_39:                               #   in Loop: Header=BB6_32 Depth=1
	move	$s7, $fp
.LBB6_40:                               #   in Loop: Header=BB6_32 Depth=1
	ld.h	$a0, $s4, 0
	addi.d	$s5, $s3, 1
	sub.w	$a0, $s5, $a0
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	bltu	$s8, $a1, .LBB6_45
# %bb.41:                               #   in Loop: Header=BB6_32 Depth=1
	ld.h	$a1, $t6, 0
	sub.w	$a1, $fp, $a1
	srai.d	$a2, $a1, 31
	xor	$a3, $a1, $a2
	sub.w	$a2, $a3, $a2
	bltu	$s8, $a2, .LBB6_45
# %bb.42:                               #   in Loop: Header=BB6_32 Depth=1
	ld.d	$a2, $a5, %pc_lo12(SearchState)
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a1, $a1, 24
	add.d	$a0, $a1, $a0
	ld.bu	$a0, $a0, 3
	bnez	$a0, .LBB6_45
# %bb.43:                               #   in Loop: Header=BB6_32 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	sub.w	$a1, $s5, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	sub.w	$a2, $fp, $a2
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$a3, $a0, 16
	st.d	$a3, $sp, 0                     # 8-byte Folded Spill
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $s0, $a3
	addi.w	$a0, $s0, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	add.w	$a4, $s5, $a0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.w	$a5, $fp, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 72                    # 8-byte Folded Reload
	ld.h	$a1, $t6, 0
	ld.d	$a2, $a5, %pc_lo12(SearchState)
	sub.w	$a1, $fp, $a1
	alsl.d	$a1, $a1, $a2, 3
	ld.h	$a2, $s4, 0
	ld.d	$a1, $a1, 24
	ld.d	$a3, $sp, 0                     # 8-byte Folded Reload
	add.w	$a0, $a3, $a0
	sub.w	$a2, $s5, $a2
	add.d	$a1, $a1, $a2
	ori	$a2, $zero, 1
	st.b	$a2, $a1, 3
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	bge	$a0, $a1, .LBB6_45
# %bb.44:                               #   in Loop: Header=BB6_32 Depth=1
	move	$s2, $zero
	move	$s6, $s5
	move	$s7, $fp
	move	$s0, $a0
	.p2align	4, , 16
.LBB6_45:                               #   in Loop: Header=BB6_32 Depth=1
	ld.h	$a0, $s4, 0
	sub.w	$a0, $s3, $a0
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	bltu	$s8, $a1, .LBB6_49
# %bb.46:                               #   in Loop: Header=BB6_32 Depth=1
	ld.h	$a1, $t6, 0
	addi.d	$fp, $fp, -1
	sub.w	$a1, $fp, $a1
	srai.d	$a2, $a1, 31
	xor	$a3, $a1, $a2
	sub.w	$a2, $a3, $a2
	bltu	$s8, $a2, .LBB6_49
# %bb.47:                               #   in Loop: Header=BB6_32 Depth=1
	ld.d	$a2, $a5, %pc_lo12(SearchState)
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a1, $a1, 24
	add.d	$a0, $a1, $a0
	ld.bu	$a0, $a0, 3
	bnez	$a0, .LBB6_49
# %bb.48:                               #   in Loop: Header=BB6_32 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	sub.w	$a1, $s3, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	sub.w	$a2, $fp, $a2
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s5, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $s0, $s5
	addi.w	$a0, $s0, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	add.w	$a4, $s3, $a0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.w	$a5, $fp, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 72                    # 8-byte Folded Reload
	ld.h	$a1, $t6, 0
	ld.d	$a2, $a5, %pc_lo12(SearchState)
	sub.w	$a1, $fp, $a1
	alsl.d	$a1, $a1, $a2, 3
	ld.h	$a2, $s4, 0
	ld.d	$a1, $a1, 24
	add.w	$a0, $s5, $a0
	sub.w	$a2, $s3, $a2
	add.d	$a1, $a1, $a2
	ori	$a2, $zero, 1
	st.b	$a2, $a1, 3
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	blt	$a0, $a1, .LBB6_50
	.p2align	4, , 16
.LBB6_49:                               #   in Loop: Header=BB6_32 Depth=1
	move	$a0, $s0
	move	$fp, $s7
	move	$s3, $s6
	bnez	$s2, .LBB6_55
.LBB6_50:                               # %.thread226
                                        #   in Loop: Header=BB6_32 Depth=1
	addi.w	$s1, $s1, -1
	move	$s0, $a0
	move	$s7, $fp
	move	$s6, $s3
	bnez	$s1, .LBB6_32
	b	.LBB6_55
.LBB6_51:                               #   in Loop: Header=BB6_32 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	sub.w	$a1, $s5, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	sub.w	$a2, $fp, $a2
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s2, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $s0, $s2
	addi.w	$s7, $s0, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	add.w	$a4, $s5, $a0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.w	$a5, $fp, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 72                    # 8-byte Folded Reload
	ld.h	$a1, $t6, 0
	ld.d	$a2, $a5, %pc_lo12(SearchState)
	sub.w	$a1, $fp, $a1
	alsl.d	$a1, $a1, $a2, 3
	ld.h	$a2, $s4, 0
	ld.d	$a1, $a1, 24
	add.w	$a0, $s2, $a0
	sub.w	$a2, $s5, $a2
	add.d	$a1, $a1, $a2
	ori	$s2, $zero, 1
	st.b	$s2, $a1, 3
	move	$s6, $s3
	bge	$a0, $s7, .LBB6_36
# %bb.52:                               #   in Loop: Header=BB6_32 Depth=1
	move	$s2, $zero
	move	$s6, $s5
	move	$s0, $a0
	b	.LBB6_36
.LBB6_53:                               #   in Loop: Header=BB6_32 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	sub.w	$a1, $s3, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	sub.w	$a2, $s5, $a2
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(dist_method)
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	srai.d	$s7, $a0, 16
	slli.d	$a0, $a2, 3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a0
	sub.w	$a3, $s0, $s7
	addi.w	$a0, $s0, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	add.w	$a4, $s3, $a0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.w	$a5, $s5, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	jirl	$ra, $a6, 0
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 72                    # 8-byte Folded Reload
	ld.h	$a1, $t6, 0
	ld.d	$a2, $a5, %pc_lo12(SearchState)
	sub.w	$a1, $s5, $a1
	alsl.d	$a1, $a1, $a2, 3
	ld.h	$a2, $s4, 0
	ld.d	$a1, $a1, 24
	add.w	$a0, $s7, $a0
	sub.w	$a2, $s3, $a2
	add.d	$a1, $a1, $a2
	ori	$a2, $zero, 1
	st.b	$a2, $a1, 3
	move	$s7, $fp
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	bge	$a0, $a1, .LBB6_40
# %bb.54:                               #   in Loop: Header=BB6_32 Depth=1
	move	$s2, $zero
	move	$s6, $s3
	move	$s7, $s5
	move	$s0, $a0
	b	.LBB6_40
.LBB6_55:
	st.h	$s6, $s4, 0
	addi.w	$a0, $s0, 0
	st.h	$s7, $t6, 0
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end6:
	.size	UMHEXSubPelBlockMotionSearch, .Lfunc_end6-UMHEXSubPelBlockMotionSearch
                                        # -- End function
	.globl	UMHEX_decide_intrabk_SAD        # -- Begin function UMHEX_decide_intrabk_SAD
	.p2align	5
	.type	UMHEX_decide_intrabk_SAD,@function
UMHEX_decide_intrabk_SAD:               # @UMHEX_decide_intrabk_SAD
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 20
	ori	$a2, $zero, 2
	beq	$a1, $a2, .LBB7_11
# %bb.1:
	ld.w	$a1, $a0, 176
	ld.w	$a0, $a0, 180
	beqz	$a1, .LBB7_6
# %bb.2:
	pcalau12i	$a2, %pc_hi20(flag_intra)
	ld.d	$a2, $a2, %pc_lo12(flag_intra)
	srai.d	$a1, $a1, 4
	add.d	$a1, $a2, $a1
	beqz	$a0, .LBB7_8
# %bb.3:
	ld.bu	$a2, $a1, 0
	ori	$a0, $zero, 1
	bnez	$a2, .LBB7_10
# %bb.4:
	ld.bu	$a2, $a1, -1
	bnez	$a2, .LBB7_10
# %bb.5:
	ld.bu	$a0, $a1, 1
	sltu	$a0, $zero, $a0
	b	.LBB7_10
.LBB7_6:
	beqz	$a0, .LBB7_9
# %bb.7:
	pcalau12i	$a0, %pc_hi20(flag_intra)
	ld.d	$a0, $a0, %pc_lo12(flag_intra)
	ld.bu	$a0, $a0, 0
	b	.LBB7_10
.LBB7_8:
	ld.bu	$a0, $a1, -1
	b	.LBB7_10
.LBB7_9:
	move	$a0, $zero
.LBB7_10:                               # %.sink.split
	pcalau12i	$a1, %pc_hi20(flag_intra_SAD)
	st.w	$a0, $a1, %pc_lo12(flag_intra_SAD)
.LBB7_11:
	ret
.Lfunc_end7:
	.size	UMHEX_decide_intrabk_SAD, .Lfunc_end7-UMHEX_decide_intrabk_SAD
                                        # -- End function
	.globl	UMHEX_skip_intrabk_SAD          # -- Begin function UMHEX_skip_intrabk_SAD
	.p2align	5
	.type	UMHEX_skip_intrabk_SAD,@function
UMHEX_skip_intrabk_SAD:                 # @UMHEX_skip_intrabk_SAD
# %bb.0:
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$a3, $a2, %got_pc_lo12(img)
	ld.d	$a2, $a3, 0
	ld.w	$a4, $a2, 0
	addi.w	$a0, $a0, -9
	blez	$a4, .LBB8_2
# %bb.1:
	pcalau12i	$a4, %pc_hi20(flag_intra)
	ld.w	$a2, $a2, 176
	ld.d	$a4, $a4, %pc_lo12(flag_intra)
	sltui	$a5, $a0, 2
	srai.d	$a2, $a2, 4
	stx.b	$a5, $a4, $a2
	ld.d	$a2, $a3, 0
.LBB8_2:                                # %._crit_edge
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	ori	$a3, $zero, 1
	bltu	$a3, $a0, .LBB8_65
# %bb.3:                                # %._crit_edge
	ld.w	$a0, $a2, 20
	ori	$a2, $zero, 2
	beq	$a0, $a2, .LBB8_65
# %bb.4:                                # %.preheader29
	pcalau12i	$a0, %pc_hi20(fastme_l0_cost)
	ld.d	$s0, $a0, %pc_lo12(fastme_l0_cost)
	pcalau12i	$a0, %pc_hi20(fastme_l1_cost)
	ld.d	$s1, $a0, %pc_lo12(fastme_l1_cost)
	blez	$a1, .LBB8_63
# %bb.5:                                # %.preheader28.us.preheader
	move	$a0, $zero
	ld.d	$a2, $s0, 0
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a2, $s1, 0
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a4, $s0, 8
	ld.d	$a5, $s1, 8
	ld.d	$a6, $s0, 16
	ld.d	$a7, $s1, 16
	ld.d	$t0, $s0, 24
	ld.d	$t1, $s1, 24
	ld.d	$t2, $s0, 32
	ld.d	$t3, $s1, 32
	ld.d	$t4, $s0, 40
	ld.d	$t5, $s1, 40
	ld.d	$t6, $s0, 48
	ld.d	$t7, $s1, 48
	ld.d	$t8, $s0, 56
	ld.d	$fp, $s1, 56
	ld.d	$s0, $s0, 64
	ld.d	$s1, $s1, 64
	bstrpick.d	$s2, $a1, 30, 1
	slli.d	$s4, $s2, 1
	ori	$s3, $zero, 1
	b	.LBB8_7
	.p2align	4, , 16
.LBB8_6:                                # %.split34.us.us
                                        #   in Loop: Header=BB8_7 Depth=1
	addi.d	$a0, $a0, 1
	ori	$a2, $zero, 4
	beq	$a0, $a2, .LBB8_65
.LBB8_7:                                # %.preheader28.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_9 Depth 2
                                        #       Child Loop BB8_11 Depth 3
                                        #       Child Loop BB8_14 Depth 3
                                        #       Child Loop BB8_17 Depth 3
                                        #       Child Loop BB8_20 Depth 3
                                        #       Child Loop BB8_23 Depth 3
                                        #       Child Loop BB8_26 Depth 3
                                        #       Child Loop BB8_29 Depth 3
                                        #       Child Loop BB8_32 Depth 3
                                        #       Child Loop BB8_35 Depth 3
                                        #       Child Loop BB8_38 Depth 3
                                        #       Child Loop BB8_41 Depth 3
                                        #       Child Loop BB8_44 Depth 3
                                        #       Child Loop BB8_47 Depth 3
                                        #       Child Loop BB8_50 Depth 3
                                        #       Child Loop BB8_53 Depth 3
                                        #       Child Loop BB8_56 Depth 3
                                        #       Child Loop BB8_59 Depth 3
                                        #       Child Loop BB8_62 Depth 3
	move	$s5, $zero
	b	.LBB8_9
	.p2align	4, , 16
.LBB8_8:                                # %._crit_edge.us.us.us.8
                                        #   in Loop: Header=BB8_9 Depth=2
	addi.d	$s5, $s5, 1
	ori	$a2, $zero, 4
	beq	$s5, $a2, .LBB8_6
.LBB8_9:                                # %.preheader.us.us
                                        #   Parent Loop BB8_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_11 Depth 3
                                        #       Child Loop BB8_14 Depth 3
                                        #       Child Loop BB8_17 Depth 3
                                        #       Child Loop BB8_20 Depth 3
                                        #       Child Loop BB8_23 Depth 3
                                        #       Child Loop BB8_26 Depth 3
                                        #       Child Loop BB8_29 Depth 3
                                        #       Child Loop BB8_32 Depth 3
                                        #       Child Loop BB8_35 Depth 3
                                        #       Child Loop BB8_38 Depth 3
                                        #       Child Loop BB8_41 Depth 3
                                        #       Child Loop BB8_44 Depth 3
                                        #       Child Loop BB8_47 Depth 3
                                        #       Child Loop BB8_50 Depth 3
                                        #       Child Loop BB8_53 Depth 3
                                        #       Child Loop BB8_56 Depth 3
                                        #       Child Loop BB8_59 Depth 3
                                        #       Child Loop BB8_62 Depth 3
	move	$ra, $zero
	pcalau12i	$s2, %pc_hi20(fastme_ref_cost)
	slli.d	$s6, $s5, 3
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ldx.d	$a2, $a2, $s6
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$a3, $a3, $s6
	ld.d	$s8, $s2, %pc_lo12(fastme_ref_cost)
	slli.d	$s7, $a0, 2
	stx.w	$zero, $a2, $s7
	stx.w	$zero, $a3, $s7
	beq	$a1, $s3, .LBB8_13
# %bb.10:                               # %vector.ph164
                                        #   in Loop: Header=BB8_9 Depth=2
	addi.d	$ra, $s8, 8
	move	$s2, $s4
	.p2align	4, , 16
.LBB8_11:                               # %vector.body167
                                        #   Parent Loop BB8_7 Depth=1
                                        #     Parent Loop BB8_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $ra, -8
	ld.d	$a3, $ra, 0
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a3, 0
	ldx.d	$a2, $a2, $s6
	ldx.d	$a3, $a3, $s6
	stx.w	$zero, $a2, $s7
	stx.w	$zero, $a3, $s7
	addi.d	$s2, $s2, -2
	addi.d	$ra, $ra, 16
	bnez	$s2, .LBB8_11
# %bb.12:                               # %middle.block170
                                        #   in Loop: Header=BB8_9 Depth=2
	move	$ra, $s4
	beq	$s4, $a1, .LBB8_15
.LBB8_13:                               # %scalar.ph162.preheader
                                        #   in Loop: Header=BB8_9 Depth=2
	alsl.d	$s2, $ra, $s8, 3
	sub.d	$ra, $a1, $ra
	.p2align	4, , 16
.LBB8_14:                               # %scalar.ph162
                                        #   Parent Loop BB8_7 Depth=1
                                        #     Parent Loop BB8_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $s2, 0
	ld.d	$a2, $a2, 0
	ldx.d	$a2, $a2, $s6
	stx.w	$zero, $a2, $s7
	addi.d	$ra, $ra, -1
	addi.d	$s2, $s2, 8
	bnez	$ra, .LBB8_14
.LBB8_15:                               # %._crit_edge.us.us.us
                                        #   in Loop: Header=BB8_9 Depth=2
	ldx.d	$a2, $a4, $s6
	ldx.d	$a3, $a5, $s6
	move	$ra, $zero
	stx.w	$zero, $a2, $s7
	stx.w	$zero, $a3, $s7
	beq	$a1, $s3, .LBB8_19
# %bb.16:                               # %vector.ph153
                                        #   in Loop: Header=BB8_9 Depth=2
	addi.d	$ra, $s8, 8
	move	$s2, $s4
	.p2align	4, , 16
.LBB8_17:                               # %vector.body156
                                        #   Parent Loop BB8_7 Depth=1
                                        #     Parent Loop BB8_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $ra, -8
	ld.d	$a3, $ra, 0
	ld.d	$a2, $a2, 8
	ld.d	$a3, $a3, 8
	ldx.d	$a2, $a2, $s6
	ldx.d	$a3, $a3, $s6
	stx.w	$zero, $a2, $s7
	stx.w	$zero, $a3, $s7
	addi.d	$s2, $s2, -2
	addi.d	$ra, $ra, 16
	bnez	$s2, .LBB8_17
# %bb.18:                               # %middle.block159
                                        #   in Loop: Header=BB8_9 Depth=2
	move	$ra, $s4
	beq	$s4, $a1, .LBB8_21
.LBB8_19:                               # %scalar.ph151.preheader
                                        #   in Loop: Header=BB8_9 Depth=2
	sub.d	$s2, $a1, $ra
	alsl.d	$ra, $ra, $s8, 3
	.p2align	4, , 16
.LBB8_20:                               # %scalar.ph151
                                        #   Parent Loop BB8_7 Depth=1
                                        #     Parent Loop BB8_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $ra, 0
	ld.d	$a2, $a2, 8
	ldx.d	$a2, $a2, $s6
	stx.w	$zero, $a2, $s7
	addi.d	$s2, $s2, -1
	addi.d	$ra, $ra, 8
	bnez	$s2, .LBB8_20
.LBB8_21:                               # %._crit_edge.us.us.us.1
                                        #   in Loop: Header=BB8_9 Depth=2
	ldx.d	$a2, $a6, $s6
	ldx.d	$a3, $a7, $s6
	move	$ra, $zero
	stx.w	$zero, $a2, $s7
	stx.w	$zero, $a3, $s7
	beq	$a1, $s3, .LBB8_25
# %bb.22:                               # %vector.ph142
                                        #   in Loop: Header=BB8_9 Depth=2
	addi.d	$ra, $s8, 8
	move	$s2, $s4
	.p2align	4, , 16
.LBB8_23:                               # %vector.body145
                                        #   Parent Loop BB8_7 Depth=1
                                        #     Parent Loop BB8_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $ra, -8
	ld.d	$a3, $ra, 0
	ld.d	$a2, $a2, 16
	ld.d	$a3, $a3, 16
	ldx.d	$a2, $a2, $s6
	ldx.d	$a3, $a3, $s6
	stx.w	$zero, $a2, $s7
	stx.w	$zero, $a3, $s7
	addi.d	$s2, $s2, -2
	addi.d	$ra, $ra, 16
	bnez	$s2, .LBB8_23
# %bb.24:                               # %middle.block148
                                        #   in Loop: Header=BB8_9 Depth=2
	move	$ra, $s4
	beq	$s4, $a1, .LBB8_27
.LBB8_25:                               # %scalar.ph140.preheader
                                        #   in Loop: Header=BB8_9 Depth=2
	sub.d	$s2, $a1, $ra
	alsl.d	$ra, $ra, $s8, 3
	.p2align	4, , 16
.LBB8_26:                               # %scalar.ph140
                                        #   Parent Loop BB8_7 Depth=1
                                        #     Parent Loop BB8_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $ra, 0
	ld.d	$a2, $a2, 16
	ldx.d	$a2, $a2, $s6
	stx.w	$zero, $a2, $s7
	addi.d	$s2, $s2, -1
	addi.d	$ra, $ra, 8
	bnez	$s2, .LBB8_26
.LBB8_27:                               # %._crit_edge.us.us.us.2
                                        #   in Loop: Header=BB8_9 Depth=2
	ldx.d	$a2, $t0, $s6
	ldx.d	$a3, $t1, $s6
	move	$ra, $zero
	stx.w	$zero, $a2, $s7
	stx.w	$zero, $a3, $s7
	beq	$a1, $s3, .LBB8_31
# %bb.28:                               # %vector.ph131
                                        #   in Loop: Header=BB8_9 Depth=2
	addi.d	$ra, $s8, 8
	move	$s2, $s4
	.p2align	4, , 16
.LBB8_29:                               # %vector.body134
                                        #   Parent Loop BB8_7 Depth=1
                                        #     Parent Loop BB8_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $ra, -8
	ld.d	$a3, $ra, 0
	ld.d	$a2, $a2, 24
	ld.d	$a3, $a3, 24
	ldx.d	$a2, $a2, $s6
	ldx.d	$a3, $a3, $s6
	stx.w	$zero, $a2, $s7
	stx.w	$zero, $a3, $s7
	addi.d	$s2, $s2, -2
	addi.d	$ra, $ra, 16
	bnez	$s2, .LBB8_29
# %bb.30:                               # %middle.block137
                                        #   in Loop: Header=BB8_9 Depth=2
	move	$ra, $s4
	beq	$s4, $a1, .LBB8_33
.LBB8_31:                               # %scalar.ph129.preheader
                                        #   in Loop: Header=BB8_9 Depth=2
	sub.d	$s2, $a1, $ra
	alsl.d	$ra, $ra, $s8, 3
	.p2align	4, , 16
.LBB8_32:                               # %scalar.ph129
                                        #   Parent Loop BB8_7 Depth=1
                                        #     Parent Loop BB8_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $ra, 0
	ld.d	$a2, $a2, 24
	ldx.d	$a2, $a2, $s6
	stx.w	$zero, $a2, $s7
	addi.d	$s2, $s2, -1
	addi.d	$ra, $ra, 8
	bnez	$s2, .LBB8_32
.LBB8_33:                               # %._crit_edge.us.us.us.3
                                        #   in Loop: Header=BB8_9 Depth=2
	ldx.d	$a2, $t2, $s6
	ldx.d	$a3, $t3, $s6
	move	$ra, $zero
	stx.w	$zero, $a2, $s7
	stx.w	$zero, $a3, $s7
	beq	$a1, $s3, .LBB8_37
# %bb.34:                               # %vector.ph120
                                        #   in Loop: Header=BB8_9 Depth=2
	addi.d	$ra, $s8, 8
	move	$s2, $s4
	.p2align	4, , 16
.LBB8_35:                               # %vector.body123
                                        #   Parent Loop BB8_7 Depth=1
                                        #     Parent Loop BB8_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $ra, -8
	ld.d	$a3, $ra, 0
	ld.d	$a2, $a2, 32
	ld.d	$a3, $a3, 32
	ldx.d	$a2, $a2, $s6
	ldx.d	$a3, $a3, $s6
	stx.w	$zero, $a2, $s7
	stx.w	$zero, $a3, $s7
	addi.d	$s2, $s2, -2
	addi.d	$ra, $ra, 16
	bnez	$s2, .LBB8_35
# %bb.36:                               # %middle.block126
                                        #   in Loop: Header=BB8_9 Depth=2
	move	$ra, $s4
	beq	$s4, $a1, .LBB8_39
.LBB8_37:                               # %scalar.ph118.preheader
                                        #   in Loop: Header=BB8_9 Depth=2
	sub.d	$s2, $a1, $ra
	alsl.d	$ra, $ra, $s8, 3
	.p2align	4, , 16
.LBB8_38:                               # %scalar.ph118
                                        #   Parent Loop BB8_7 Depth=1
                                        #     Parent Loop BB8_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $ra, 0
	ld.d	$a2, $a2, 32
	ldx.d	$a2, $a2, $s6
	stx.w	$zero, $a2, $s7
	addi.d	$s2, $s2, -1
	addi.d	$ra, $ra, 8
	bnez	$s2, .LBB8_38
.LBB8_39:                               # %._crit_edge.us.us.us.4
                                        #   in Loop: Header=BB8_9 Depth=2
	ldx.d	$a2, $t4, $s6
	ldx.d	$a3, $t5, $s6
	move	$ra, $zero
	stx.w	$zero, $a2, $s7
	stx.w	$zero, $a3, $s7
	beq	$a1, $s3, .LBB8_43
# %bb.40:                               # %vector.ph109
                                        #   in Loop: Header=BB8_9 Depth=2
	addi.d	$ra, $s8, 8
	move	$s2, $s4
	.p2align	4, , 16
.LBB8_41:                               # %vector.body112
                                        #   Parent Loop BB8_7 Depth=1
                                        #     Parent Loop BB8_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $ra, -8
	ld.d	$a3, $ra, 0
	ld.d	$a2, $a2, 40
	ld.d	$a3, $a3, 40
	ldx.d	$a2, $a2, $s6
	ldx.d	$a3, $a3, $s6
	stx.w	$zero, $a2, $s7
	stx.w	$zero, $a3, $s7
	addi.d	$s2, $s2, -2
	addi.d	$ra, $ra, 16
	bnez	$s2, .LBB8_41
# %bb.42:                               # %middle.block115
                                        #   in Loop: Header=BB8_9 Depth=2
	move	$ra, $s4
	beq	$s4, $a1, .LBB8_45
.LBB8_43:                               # %scalar.ph107.preheader
                                        #   in Loop: Header=BB8_9 Depth=2
	sub.d	$s2, $a1, $ra
	alsl.d	$ra, $ra, $s8, 3
	.p2align	4, , 16
.LBB8_44:                               # %scalar.ph107
                                        #   Parent Loop BB8_7 Depth=1
                                        #     Parent Loop BB8_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $ra, 0
	ld.d	$a2, $a2, 40
	ldx.d	$a2, $a2, $s6
	stx.w	$zero, $a2, $s7
	addi.d	$s2, $s2, -1
	addi.d	$ra, $ra, 8
	bnez	$s2, .LBB8_44
.LBB8_45:                               # %._crit_edge.us.us.us.5
                                        #   in Loop: Header=BB8_9 Depth=2
	ldx.d	$a2, $t6, $s6
	ldx.d	$a3, $t7, $s6
	move	$ra, $zero
	stx.w	$zero, $a2, $s7
	stx.w	$zero, $a3, $s7
	beq	$a1, $s3, .LBB8_49
# %bb.46:                               # %vector.ph98
                                        #   in Loop: Header=BB8_9 Depth=2
	addi.d	$ra, $s8, 8
	move	$s2, $s4
	.p2align	4, , 16
.LBB8_47:                               # %vector.body101
                                        #   Parent Loop BB8_7 Depth=1
                                        #     Parent Loop BB8_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $ra, -8
	ld.d	$a3, $ra, 0
	ld.d	$a2, $a2, 48
	ld.d	$a3, $a3, 48
	ldx.d	$a2, $a2, $s6
	ldx.d	$a3, $a3, $s6
	stx.w	$zero, $a2, $s7
	stx.w	$zero, $a3, $s7
	addi.d	$s2, $s2, -2
	addi.d	$ra, $ra, 16
	bnez	$s2, .LBB8_47
# %bb.48:                               # %middle.block104
                                        #   in Loop: Header=BB8_9 Depth=2
	move	$ra, $s4
	beq	$s4, $a1, .LBB8_51
.LBB8_49:                               # %scalar.ph96.preheader
                                        #   in Loop: Header=BB8_9 Depth=2
	sub.d	$s2, $a1, $ra
	alsl.d	$ra, $ra, $s8, 3
	.p2align	4, , 16
.LBB8_50:                               # %scalar.ph96
                                        #   Parent Loop BB8_7 Depth=1
                                        #     Parent Loop BB8_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $ra, 0
	ld.d	$a2, $a2, 48
	ldx.d	$a2, $a2, $s6
	stx.w	$zero, $a2, $s7
	addi.d	$s2, $s2, -1
	addi.d	$ra, $ra, 8
	bnez	$s2, .LBB8_50
.LBB8_51:                               # %._crit_edge.us.us.us.6
                                        #   in Loop: Header=BB8_9 Depth=2
	ldx.d	$a2, $t8, $s6
	ldx.d	$a3, $fp, $s6
	move	$ra, $zero
	stx.w	$zero, $a2, $s7
	stx.w	$zero, $a3, $s7
	beq	$a1, $s3, .LBB8_55
# %bb.52:                               # %vector.ph87
                                        #   in Loop: Header=BB8_9 Depth=2
	addi.d	$ra, $s8, 8
	move	$s2, $s4
	.p2align	4, , 16
.LBB8_53:                               # %vector.body90
                                        #   Parent Loop BB8_7 Depth=1
                                        #     Parent Loop BB8_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $ra, -8
	ld.d	$a3, $ra, 0
	ld.d	$a2, $a2, 56
	ld.d	$a3, $a3, 56
	ldx.d	$a2, $a2, $s6
	ldx.d	$a3, $a3, $s6
	stx.w	$zero, $a2, $s7
	stx.w	$zero, $a3, $s7
	addi.d	$s2, $s2, -2
	addi.d	$ra, $ra, 16
	bnez	$s2, .LBB8_53
# %bb.54:                               # %middle.block93
                                        #   in Loop: Header=BB8_9 Depth=2
	move	$ra, $s4
	beq	$s4, $a1, .LBB8_57
.LBB8_55:                               # %scalar.ph85.preheader
                                        #   in Loop: Header=BB8_9 Depth=2
	sub.d	$s2, $a1, $ra
	alsl.d	$ra, $ra, $s8, 3
	.p2align	4, , 16
.LBB8_56:                               # %scalar.ph85
                                        #   Parent Loop BB8_7 Depth=1
                                        #     Parent Loop BB8_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $ra, 0
	ld.d	$a2, $a2, 56
	ldx.d	$a2, $a2, $s6
	stx.w	$zero, $a2, $s7
	addi.d	$s2, $s2, -1
	addi.d	$ra, $ra, 8
	bnez	$s2, .LBB8_56
.LBB8_57:                               # %._crit_edge.us.us.us.7
                                        #   in Loop: Header=BB8_9 Depth=2
	ldx.d	$a2, $s0, $s6
	ldx.d	$a3, $s1, $s6
	move	$ra, $zero
	stx.w	$zero, $a2, $s7
	stx.w	$zero, $a3, $s7
	beq	$a1, $s3, .LBB8_61
# %bb.58:                               # %vector.ph
                                        #   in Loop: Header=BB8_9 Depth=2
	addi.d	$ra, $s8, 8
	move	$s2, $s4
	.p2align	4, , 16
.LBB8_59:                               # %vector.body
                                        #   Parent Loop BB8_7 Depth=1
                                        #     Parent Loop BB8_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $ra, -8
	ld.d	$a3, $ra, 0
	ld.d	$a2, $a2, 64
	ld.d	$a3, $a3, 64
	ldx.d	$a2, $a2, $s6
	ldx.d	$a3, $a3, $s6
	stx.w	$zero, $a2, $s7
	stx.w	$zero, $a3, $s7
	addi.d	$s2, $s2, -2
	addi.d	$ra, $ra, 16
	bnez	$s2, .LBB8_59
# %bb.60:                               # %middle.block
                                        #   in Loop: Header=BB8_9 Depth=2
	move	$ra, $s4
	beq	$s4, $a1, .LBB8_8
.LBB8_61:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB8_9 Depth=2
	sub.d	$s2, $a1, $ra
	alsl.d	$s8, $ra, $s8, 3
	.p2align	4, , 16
.LBB8_62:                               # %scalar.ph
                                        #   Parent Loop BB8_7 Depth=1
                                        #     Parent Loop BB8_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $s8, 0
	ld.d	$a2, $a2, 64
	ldx.d	$a2, $a2, $s6
	stx.w	$zero, $a2, $s7
	addi.d	$s2, $s2, -1
	addi.d	$s8, $s8, 8
	bnez	$s2, .LBB8_62
	b	.LBB8_8
.LBB8_63:                               # %.preheader28.preheader
	ld.d	$s4, $s0, 8
	ld.d	$t0, $s1, 8
	ld.d	$a7, $s0, 16
	ld.d	$a3, $s1, 16
	ld.d	$t3, $s0, 24
	ld.d	$t1, $s1, 24
	ld.d	$a5, $s0, 32
	ld.d	$a6, $s1, 32
	ld.d	$s5, $s0, 40
	ld.d	$s6, $s1, 40
	ld.d	$s7, $s0, 48
	ld.d	$s8, $s1, 48
	ld.d	$ra, $s0, 56
	ld.d	$s3, $s1, 56
	ld.d	$a2, $s0, 0
	ld.d	$a4, $s1, 0
	ld.d	$a0, $s0, 64
	ld.d	$a1, $s1, 64
	ld.d	$t2, $a2, 0
	st.d	$t2, $sp, 80                    # 8-byte Folded Spill
	ld.d	$t2, $a4, 0
	st.d	$t2, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a2, $a2, 8
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a2, $a4, 8
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a2, $t0, 8
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a2, $a7, 8
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a2, $a3, 8
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a2, $t3, 8
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a2, $t1, 8
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a2, $a5, 8
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a2, $a6, 8
	st.d	$a2, $sp, 0                     # 8-byte Folded Spill
	move	$s2, $zero
	st.d	$a6, $sp, 88                    # 8-byte Folded Spill
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	move	$fp, $t1
	move	$a4, $t1
	move	$t8, $t3
	move	$t7, $a3
	move	$a2, $a3
	move	$t1, $a7
	move	$t6, $t0
	.p2align	4, , 16
.LBB8_64:                               # %.preheader28
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	stx.w	$zero, $a3, $s2
	ld.d	$t2, $s4, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	stx.w	$zero, $a3, $s2
	ld.d	$t0, $t0, 0
	ld.d	$a7, $a7, 0
	stx.w	$zero, $t2, $s2
	ld.d	$a2, $a2, 0
	stx.w	$zero, $t0, $s2
	stx.w	$zero, $a7, $s2
	ld.d	$a7, $t3, 0
	stx.w	$zero, $a2, $s2
	ld.d	$a2, $a4, 0
	ld.d	$a4, $a5, 0
	stx.w	$zero, $a7, $s2
	ld.d	$a5, $a6, 0
	stx.w	$zero, $a2, $s2
	stx.w	$zero, $a4, $s2
	ld.d	$a2, $s5, 0
	stx.w	$zero, $a5, $s2
	ld.d	$a4, $s6, 0
	ld.d	$a5, $s7, 0
	stx.w	$zero, $a2, $s2
	ld.d	$a2, $s8, 0
	stx.w	$zero, $a4, $s2
	stx.w	$zero, $a5, $s2
	ld.d	$a4, $ra, 0
	stx.w	$zero, $a2, $s2
	ld.d	$a2, $s3, 0
	ld.d	$a0, $a0, 0
	stx.w	$zero, $a4, $s2
	ld.d	$a1, $a1, 0
	stx.w	$zero, $a2, $s2
	stx.w	$zero, $a0, $s2
	ld.d	$a0, $s4, 8
	stx.w	$zero, $a1, $s2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	stx.w	$zero, $a1, $s2
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	stx.w	$zero, $a1, $s2
	stx.w	$zero, $a0, $s2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	stx.w	$zero, $a0, $s2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	stx.w	$zero, $a0, $s2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	stx.w	$zero, $a0, $s2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	stx.w	$zero, $a0, $s2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	stx.w	$zero, $a0, $s2
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	stx.w	$zero, $a0, $s2
	ld.d	$a1, $s0, 40
	ld.d	$a2, $s1, 40
	ld.d	$a0, $s0, 48
	ld.d	$a3, $sp, 0                     # 8-byte Folded Reload
	stx.w	$zero, $a3, $s2
	ld.d	$a5, $a1, 8
	ld.d	$a6, $a2, 8
	ld.d	$a7, $a0, 8
	ld.d	$a4, $s1, 48
	stx.w	$zero, $a5, $s2
	stx.w	$zero, $a6, $s2
	stx.w	$zero, $a7, $s2
	ld.d	$t0, $a4, 8
	ld.d	$a6, $s0, 56
	ld.d	$a7, $s1, 56
	ld.d	$a5, $s0, 64
	stx.w	$zero, $t0, $s2
	ld.d	$t2, $a6, 8
	ld.d	$t3, $a7, 8
	ld.d	$s3, $a5, 8
	ld.d	$t0, $s1, 64
	stx.w	$zero, $t2, $s2
	stx.w	$zero, $t3, $s2
	stx.w	$zero, $s3, $s2
	ld.d	$t2, $t0, 8
	ld.d	$t3, $s0, 0
	ld.d	$s3, $s1, 0
	ld.d	$s4, $s0, 8
	stx.w	$zero, $t2, $s2
	ld.d	$t2, $t3, 16
	ld.d	$s5, $s3, 16
	ld.d	$s6, $s4, 16
	ld.d	$s7, $t6, 16
	stx.w	$zero, $t2, $s2
	stx.w	$zero, $s5, $s2
	stx.w	$zero, $s6, $s2
	stx.w	$zero, $s7, $s2
	ld.d	$t2, $t1, 16
	ld.d	$s5, $t7, 16
	ld.d	$s6, $t8, 16
	ld.d	$s7, $fp, 16
	stx.w	$zero, $t2, $s2
	stx.w	$zero, $s5, $s2
	stx.w	$zero, $s6, $s2
	stx.w	$zero, $s7, $s2
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t2, $a3, 16
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $a3, 16
	ld.d	$a1, $a1, 16
	ld.d	$a2, $a2, 16
	stx.w	$zero, $t2, $s2
	stx.w	$zero, $s5, $s2
	stx.w	$zero, $a1, $s2
	stx.w	$zero, $a2, $s2
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a4, 16
	ld.d	$a2, $a6, 16
	ld.d	$a4, $a7, 16
	stx.w	$zero, $a0, $s2
	stx.w	$zero, $a1, $s2
	stx.w	$zero, $a2, $s2
	stx.w	$zero, $a4, $s2
	ld.d	$a0, $a5, 16
	ld.d	$a1, $t0, 16
	ld.d	$a2, $t3, 24
	ld.d	$a4, $s3, 24
	stx.w	$zero, $a0, $s2
	stx.w	$zero, $a1, $s2
	stx.w	$zero, $a2, $s2
	stx.w	$zero, $a4, $s2
	ld.d	$t0, $s1, 8
	ld.d	$a7, $s0, 16
	ld.d	$a2, $s1, 16
	ld.d	$a0, $s4, 24
	ld.d	$a1, $t0, 24
	ld.d	$a4, $a7, 24
	ld.d	$a5, $a2, 24
	stx.w	$zero, $a0, $s2
	stx.w	$zero, $a1, $s2
	stx.w	$zero, $a4, $s2
	stx.w	$zero, $a5, $s2
	ld.d	$t3, $s0, 24
	ld.d	$a4, $s1, 24
	ld.d	$a5, $s0, 32
	ld.d	$a6, $s1, 32
	ld.d	$a0, $t3, 24
	ld.d	$a1, $a4, 24
	ld.d	$t2, $a5, 24
	ld.d	$s3, $a6, 24
	stx.w	$zero, $a0, $s2
	stx.w	$zero, $a1, $s2
	stx.w	$zero, $t2, $s2
	stx.w	$zero, $s3, $s2
	ld.d	$s5, $s0, 40
	ld.d	$s6, $s1, 40
	ld.d	$s7, $s0, 48
	ld.d	$s8, $s1, 48
	ld.d	$a0, $s5, 24
	ld.d	$a1, $s6, 24
	ld.d	$t2, $s7, 24
	ld.d	$s3, $s8, 24
	stx.w	$zero, $a0, $s2
	stx.w	$zero, $a1, $s2
	stx.w	$zero, $t2, $s2
	stx.w	$zero, $s3, $s2
	ld.d	$ra, $s0, 56
	ld.d	$s3, $s1, 56
	ld.d	$a0, $s0, 64
	ld.d	$a1, $s1, 64
	ld.d	$t2, $ra, 24
	ld.d	$t4, $s3, 24
	ld.d	$a3, $a0, 24
	ld.d	$t5, $a1, 24
	stx.w	$zero, $t2, $s2
	stx.w	$zero, $t4, $s2
	stx.w	$zero, $a3, $s2
	stx.w	$zero, $t5, $s2
	addi.d	$s2, $s2, 4
	ori	$a3, $zero, 16
	bne	$s2, $a3, .LBB8_64
.LBB8_65:                               # %.loopexit
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end8:
	.size	UMHEX_skip_intrabk_SAD, .Lfunc_end8-UMHEX_skip_intrabk_SAD
                                        # -- End function
	.globl	UMHEXBipredIntegerPelBlockMotionSearch # -- Begin function UMHEXBipredIntegerPelBlockMotionSearch
	.p2align	5
	.type	UMHEXBipredIntegerPelBlockMotionSearch,@function
UMHEXBipredIntegerPelBlockMotionSearch: # @UMHEXBipredIntegerPelBlockMotionSearch
# %bb.0:
	addi.d	$sp, $sp, -608
	st.d	$ra, $sp, 600                   # 8-byte Folded Spill
	st.d	$fp, $sp, 592                   # 8-byte Folded Spill
	st.d	$s0, $sp, 584                   # 8-byte Folded Spill
	st.d	$s1, $sp, 576                   # 8-byte Folded Spill
	st.d	$s2, $sp, 568                   # 8-byte Folded Spill
	st.d	$s3, $sp, 560                   # 8-byte Folded Spill
	st.d	$s4, $sp, 552                   # 8-byte Folded Spill
	st.d	$s5, $sp, 544                   # 8-byte Folded Spill
	st.d	$s6, $sp, 536                   # 8-byte Folded Spill
	st.d	$s7, $sp, 528                   # 8-byte Folded Spill
	st.d	$s8, $sp, 520                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 512                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 504                  # 8-byte Folded Spill
	pcalau12i	$t0, %got_pc_hi20(img)
	ld.d	$t0, $t0, %got_pc_lo12(img)
	st.d	$t0, $sp, 176                   # 8-byte Folded Spill
	move	$s2, $a7
	move	$s8, $a6
	st.d	$a4, $sp, 240                   # 8-byte Folded Spill
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.d	$t3, $sp, 632
	ld.d	$t4, $t0, 0
	ld.d	$t2, $sp, 624
	ld.d	$a4, $sp, 648
	ld.d	$a3, $sp, 640
	ldptr.d	$a0, $t4, 14224
	ld.w	$a7, $t4, 12
	pcalau12i	$a6, %got_pc_hi20(input)
	ld.d	$t0, $a6, %got_pc_lo12(input)
	ori	$a6, $zero, 536
	mul.d	$a6, $a7, $a6
	add.d	$a0, $a0, $a6
	st.d	$t0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a7, $t0, 0
	pcalau12i	$a6, %pc_hi20(active_pps)
	ld.d	$a6, $a6, %pc_lo12(active_pps)
	ld.w	$t0, $a0, 432
	alsl.d	$s0, $a5, $a7, 3
	ld.h	$t7, $t2, 0
	ld.w	$t1, $a6, 196
	st.d	$a5, $sp, 136                   # 8-byte Folded Spill
	slli.d	$a5, $a5, 2
	pcalau12i	$a0, %pc_hi20(Median_Pred_Thd_MB)
	addi.d	$s4, $a0, %pc_lo12(Median_Pred_Thd_MB)
	slli.d	$a7, $a1, 3
	st.d	$t2, $sp, 160                   # 8-byte Folded Spill
	st.d	$a5, $sp, 288                   # 8-byte Folded Spill
	beqz	$t1, .LBB9_3
# %bb.1:
	pcalau12i	$a0, %pc_hi20(wp_offset)
	ld.d	$a0, $a0, %pc_lo12(wp_offset)
	alsl.d	$a0, $t0, $a0, 3
	beqz	$a2, .LBB9_4
# %bb.2:
	ld.d	$a6, $a0, 8
	ld.d	$a0, $a0, 0
	ld.d	$a6, $a6, 0
	ld.d	$a0, $a0, 0
	slli.d	$t2, $a1, 2
	ldx.w	$s1, $a6, $t2
	ldx.w	$s3, $a0, $t2
	b	.LBB9_5
.LBB9_3:                                # %._crit_edge1360
	move	$s1, $zero
	move	$s3, $zero
	b	.LBB9_5
.LBB9_4:
	ld.d	$a6, $a0, 0
	ld.d	$a0, $a0, 8
	ldx.d	$a6, $a6, $a7
	ldx.d	$a0, $a0, $a7
	ld.w	$s1, $a6, 0
	ld.w	$s3, $a0, 0
.LBB9_5:
	ld.w	$a0, $t4, 192
	ld.w	$ra, $t4, 196
	pcalau12i	$a6, %got_pc_hi20(listX)
	ld.d	$a6, $a6, %got_pc_lo12(listX)
	st.d	$t3, $sp, 168                   # 8-byte Folded Spill
	ld.h	$t3, $t3, 0
	add.w	$t2, $t0, $a2
	slli.d	$t2, $t2, 3
	ldx.d	$t4, $a6, $t2
	sltui	$t5, $a2, 1
	addi.w	$t2, $t0, 1
	masknez	$t6, $t0, $t5
	maskeqz	$t5, $t2, $t5
	or	$t5, $t5, $t6
	slli.d	$t5, $t5, 3
	ldx.d	$t5, $a6, $t5
	ldx.d	$s5, $t4, $a7
	ld.d	$a6, $sp, 208                   # 8-byte Folded Reload
	add.d	$fp, $t7, $a6
	ld.h	$a3, $a3, 0
	ld.d	$a5, $t5, 0
	ldptr.d	$a6, $s5, 6448
	pcalau12i	$t6, %got_pc_hi20(ref_pic1_sub)
	ld.d	$t8, $t6, %got_pc_lo12(ref_pic1_sub)
	ldptr.d	$t7, $a5, 6448
	pcalau12i	$a5, %got_pc_hi20(ref_pic2_sub)
	ld.d	$t6, $a5, %got_pc_lo12(ref_pic2_sub)
	ld.h	$a5, $a4, 0
	ld.w	$a4, $s0, 76
	st.d	$a4, $sp, 304                   # 8-byte Folded Spill
	st.d	$a6, $t8, 0
	st.d	$t7, $t6, 0
	lu12i.w	$t7, 1
	ori	$a4, $t7, 2296
	ldx.w	$a6, $s5, $a4
	pcalau12i	$a4, %got_pc_hi20(img_width)
	ld.d	$s6, $a4, %got_pc_lo12(img_width)
	ori	$a4, $t7, 2300
	ldx.w	$a4, $s5, $a4
	pcalau12i	$s7, %got_pc_hi20(img_height)
	ld.d	$s7, $s7, %got_pc_lo12(img_height)
	ld.w	$s0, $s0, 72
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 288                   # 8-byte Folded Reload
	ldx.w	$s0, $s4, $s0
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.h	$a6, $s6, 0
	st.h	$a4, $s7, 0
	ori	$s0, $t7, 2312
	ldx.w	$s0, $s5, $s0
	ori	$s4, $t7, 2316
	ldx.w	$s4, $s5, $s4
	pcalau12i	$s5, %pc_hi20(width_pad)
	st.w	$s0, $s5, %pc_lo12(width_pad)
	pcalau12i	$s0, %pc_hi20(height_pad)
	st.w	$s4, $s0, %pc_lo12(height_pad)
	pcalau12i	$s0, %pc_hi20(wbp_weight)
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	beqz	$t1, .LBB9_8
# %bb.6:
	ld.d	$s4, $s0, %pc_lo12(wbp_weight)
	slli.d	$s5, $t2, 3
	beqz	$a2, .LBB9_9
# %bb.7:
	ldx.d	$s5, $s4, $s5
	slli.d	$s6, $t0, 3
	ldx.d	$s4, $s4, $s6
	ld.d	$s5, $s5, 0
	ld.d	$s4, $s4, 0
	alsl.d	$s5, $a1, $s5, 3
	alsl.d	$s4, $a1, $s4, 3
	b	.LBB9_10
.LBB9_8:
	move	$s1, $zero
	pcalau12i	$s3, %pc_hi20(luma_log_weight_denom)
	ld.wu	$s4, $s3, %pc_lo12(luma_log_weight_denom)
	ori	$s5, $zero, 1
	pcalau12i	$s3, %got_pc_hi20(weight1)
	ld.d	$s6, $s3, %got_pc_lo12(weight1)
	pcalau12i	$s3, %got_pc_hi20(weight2)
	ld.d	$s7, $s3, %got_pc_lo12(weight2)
	pcalau12i	$s3, %got_pc_hi20(computeBiPredSAD1)
	ld.d	$s3, $s3, %got_pc_lo12(computeBiPredSAD1)
	sll.w	$s4, $s5, $s4
	st.h	$s4, $s6, 0
	st.h	$s4, $s7, 0
	b	.LBB9_11
.LBB9_9:
	slli.d	$s6, $t0, 3
	ldx.d	$s6, $s4, $s6
	ldx.d	$s4, $s4, $s5
	ldx.d	$s5, $s6, $a7
	ldx.d	$s4, $s4, $a7
.LBB9_10:
	ld.d	$s5, $s5, 0
	ld.d	$s4, $s4, 0
	ld.h	$s5, $s5, 0
	pcalau12i	$s6, %got_pc_hi20(weight1)
	ld.d	$s6, $s6, %got_pc_lo12(weight1)
	ld.h	$s4, $s4, 0
	pcalau12i	$s7, %got_pc_hi20(weight2)
	ld.d	$s7, $s7, %got_pc_lo12(weight2)
	st.h	$s5, $s6, 0
	st.h	$s4, $s7, 0
	ext.w.h	$s1, $s1
	ext.w.h	$s4, $s3
	pcalau12i	$s3, %got_pc_hi20(computeBiPredSAD2)
	ld.d	$s3, $s3, %got_pc_lo12(computeBiPredSAD2)
	add.d	$s1, $s1, $s4
	addi.d	$s1, $s1, 1
	bstrpick.d	$s1, $s1, 31, 1
.LBB9_11:
	ld.d	$s4, $sp, 240                   # 8-byte Folded Reload
	add.d	$t3, $t3, $s4
	pcalau12i	$s4, %got_pc_hi20(offsetBi)
	pcalau12i	$s5, %got_pc_hi20(ChromaMEEnable)
	ld.d	$s5, $s5, %got_pc_lo12(ChromaMEEnable)
	ld.d	$s4, $s4, %got_pc_lo12(offsetBi)
	pcalau12i	$s6, %got_pc_hi20(computeBiPred)
	ld.d	$a2, $s6, %got_pc_lo12(computeBiPred)
	ld.w	$s5, $s5, 0
	ld.d	$s6, $sp, 656
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	ext.w.h	$fp, $fp
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.h	$s1, $s4, 0
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	st.d	$s3, $a2, 0
	beqz	$s5, .LBB9_19
# %bb.12:
	alsl.d	$t4, $a1, $t4, 3
	ld.d	$t4, $t4, 0
	ldptr.d	$fp, $t4, 6464
	ld.d	$s1, $fp, 0
	ld.d	$t5, $t5, 0
	st.d	$s1, $t8, 8
	ld.d	$fp, $fp, 8
	ldptr.d	$t5, $t5, 6464
	st.d	$fp, $t8, 16
	ld.d	$t8, $t5, 0
	st.d	$t8, $t6, 8
	ld.d	$t5, $t5, 8
	st.d	$t5, $t6, 16
	ori	$t5, $t7, 2320
	ldx.w	$t5, $t4, $t5
	ori	$t6, $t7, 2324
	ldx.w	$t4, $t4, $t6
	pcalau12i	$t6, %pc_hi20(width_pad_cr)
	st.w	$t5, $t6, %pc_lo12(width_pad_cr)
	pcalau12i	$t5, %pc_hi20(height_pad_cr)
	st.w	$t4, $t5, %pc_lo12(height_pad_cr)
	beqz	$t1, .LBB9_15
# %bb.13:
	ld.d	$t1, $s0, %pc_lo12(wbp_weight)
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	beqz	$a2, .LBB9_16
# %bb.14:
	slli.d	$t2, $t2, 3
	ldx.d	$t4, $t1, $t2
	ld.d	$t4, $t4, 0
	ldx.d	$a7, $t4, $a7
	ld.h	$t4, $a7, 4
	pcalau12i	$t5, %got_pc_hi20(weight1_cr)
	slli.d	$t0, $t0, 3
	ldx.d	$t1, $t1, $t0
	pcalau12i	$t6, %pc_hi20(wp_offset)
	ld.d	$t6, $t6, %pc_lo12(wp_offset)
	ld.d	$t5, $t5, %got_pc_lo12(weight1_cr)
	ld.h	$a7, $a7, 8
	ld.d	$t7, $t1, 0
	ldx.d	$t1, $t6, $t2
	ldx.d	$t0, $t6, $t0
	st.h	$t4, $t5, 0
	st.h	$a7, $t5, 2
	alsl.d	$a7, $a1, $t7, 3
	b	.LBB9_17
.LBB9_15:
	pcalau12i	$a1, %pc_hi20(chroma_log_weight_denom)
	ld.wu	$a7, $a1, %pc_lo12(chroma_log_weight_denom)
	pcalau12i	$a1, %got_pc_hi20(weight1_cr)
	ld.d	$t0, $a1, %got_pc_lo12(weight1_cr)
	move	$a1, $zero
	ori	$t1, $zero, 1
	sll.w	$a7, $t1, $a7
	st.h	$a7, $t0, 0
	pcalau12i	$t1, %got_pc_hi20(weight2_cr)
	ld.d	$t1, $t1, %got_pc_lo12(weight2_cr)
	pcalau12i	$t2, %got_pc_hi20(offsetBi_cr)
	ld.d	$t2, $t2, %got_pc_lo12(offsetBi_cr)
	st.h	$a7, $t0, 2
	st.h	$a7, $t1, 0
	st.h	$a7, $t1, 2
	st.h	$zero, $t2, 0
	b	.LBB9_18
.LBB9_16:
	slli.d	$t0, $t0, 3
	ldx.d	$t4, $t1, $t0
	ldx.d	$t4, $t4, $a7
	ld.d	$t4, $t4, 0
	ld.h	$t5, $t4, 4
	pcalau12i	$t6, %got_pc_hi20(weight1_cr)
	ld.d	$t6, $t6, %got_pc_lo12(weight1_cr)
	st.h	$t5, $t6, 0
	pcalau12i	$t5, %pc_hi20(wp_offset)
	ld.d	$t5, $t5, %pc_lo12(wp_offset)
	slli.d	$t2, $t2, 3
	ldx.d	$t1, $t1, $t2
	ld.h	$t4, $t4, 8
	ldx.d	$t0, $t5, $t0
	ldx.d	$t2, $t5, $t2
	ldx.d	$a7, $t1, $a7
	st.h	$t4, $t6, 2
	alsl.d	$t1, $a1, $t0, 3
	alsl.d	$t0, $a1, $t2, 3
.LBB9_17:
	ld.d	$a1, $t1, 0
	ld.d	$t0, $t0, 0
	ld.w	$t1, $a1, 4
	ld.d	$a7, $a7, 0
	ld.w	$t2, $t0, 4
	ld.w	$a1, $a1, 8
	ld.w	$t0, $t0, 8
	ld.h	$t4, $a7, 4
	pcalau12i	$t5, %got_pc_hi20(weight2_cr)
	ld.d	$t5, $t5, %got_pc_lo12(weight2_cr)
	add.d	$t1, $t1, $t2
	add.d	$a1, $t0, $a1
	ld.h	$a7, $a7, 8
	st.h	$t4, $t5, 0
	pcalau12i	$t0, %got_pc_hi20(offsetBi_cr)
	ld.d	$t0, $t0, %got_pc_lo12(offsetBi_cr)
	addi.d	$t1, $t1, 1
	srli.d	$t1, $t1, 1
	st.h	$a7, $t5, 2
	st.h	$t1, $t0, 0
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 1
.LBB9_18:                               # %.sink.split
	pcalau12i	$a7, %got_pc_hi20(offsetBi_cr)
	ld.d	$a7, $a7, %got_pc_lo12(offsetBi_cr)
	st.h	$a1, $a7, 2
.LBB9_19:
	ld.d	$t4, $sp, 616
	ld.d	$t5, $sp, 608
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	add.d	$a1, $a5, $a1
	ext.w.h	$t2, $t3
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 320                   # 8-byte Folded Reload
	bge	$t1, $t0, .LBB9_24
# %bb.20:
	ext.w.h	$a6, $a6
	nor	$a5, $t1, $zero
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	sub.d	$a7, $a5, $a2
	add.w	$a6, $a7, $a6
	bge	$t0, $a6, .LBB9_24
# %bb.21:
	bge	$t1, $t2, .LBB9_24
# %bb.22:
	ext.w.h	$a6, $a4
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	sub.d	$a5, $a5, $a2
	add.w	$a5, $a5, $a6
	bge	$t2, $a5, .LBB9_24
# %bb.23:
	move	$a5, $zero
	b	.LBB9_25
.LBB9_24:
	ori	$a5, $zero, 1
.LBB9_25:
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	sub.d	$a0, $t0, $a0
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	sub.d	$a2, $a7, $ra
	ld.d	$a6, $sp, 672
	st.d	$a6, $sp, 368                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 664
	slli.d	$a6, $t0, 2
	st.d	$a6, $sp, 272                   # 8-byte Folded Spill
	slli.d	$s3, $a7, 2
	alsl.w	$a6, $t0, $t5, 2
	st.d	$a6, $sp, 328                   # 8-byte Folded Spill
	pcalau12i	$a6, %got_pc_hi20(bipred2_access_method)
	ld.d	$a6, $a6, %got_pc_lo12(bipred2_access_method)
	alsl.w	$a7, $a7, $t4, 2
	st.d	$a7, $sp, 336                   # 8-byte Folded Spill
	add.d	$s1, $a3, $t0
	ext.w.h	$fp, $a1
	st.w	$a5, $a6, 0
	st.d	$t2, $sp, 280                   # 8-byte Folded Spill
	st.d	$t4, $sp, 112                   # 8-byte Folded Spill
	st.d	$t5, $sp, 128                   # 8-byte Folded Spill
	bge	$t1, $fp, .LBB9_28
# %bb.26:
	ext.w.h	$a1, $a4
	nor	$a3, $t1, $zero
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	sub.d	$a3, $a3, $a4
	add.w	$a1, $a3, $a1
	bge	$fp, $a1, .LBB9_28
# %bb.27:
	move	$a1, $zero
	b	.LBB9_29
.LBB9_28:
	ori	$a1, $zero, 1
.LBB9_29:
	pcalau12i	$a3, %got_pc_hi20(bipred1_access_method)
	ld.d	$a3, $a3, %got_pc_lo12(bipred1_access_method)
	pcalau12i	$s7, %pc_hi20(McostState)
	ld.d	$a4, $s7, %pc_lo12(McostState)
	slli.w	$a0, $a0, 16
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	slli.w	$a0, $a2, 16
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	st.w	$a1, $a3, 0
	ld.d	$a0, $a4, 0
	slli.d	$a1, $t1, 1
	addi.d	$a1, $a1, 1
	mul.w	$a2, $a1, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(mvbits)
	ld.d	$a0, $a0, %got_pc_lo12(mvbits)
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	ext.w.h	$a1, $s1
	slli.d	$a1, $a1, 2
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	add.d	$a2, $a2, $s8
	sub.w	$a2, $a1, $a2
	slli.d	$a2, $a2, 2
	st.d	$a2, $sp, 352                   # 8-byte Folded Spill
	ldx.w	$a2, $a0, $a2
	slli.d	$a3, $fp, 2
	st.d	$s3, $sp, 104                   # 8-byte Folded Spill
	add.d	$a4, $s3, $s2
	sub.w	$a4, $a3, $a4
	slli.d	$a4, $a4, 2
	st.d	$a4, $sp, 344                   # 8-byte Folded Spill
	ldx.w	$a4, $a0, $a4
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	slli.d	$t1, $s5, 2
	ld.d	$a6, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a6, $t1, $a6
	slli.d	$s1, $a6, 2
	ldx.w	$a6, $a0, $s1
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	slli.d	$a7, $s6, 2
	ld.d	$t0, $sp, 336                   # 8-byte Folded Reload
	sub.w	$t0, $a7, $t0
	slli.d	$fp, $t0, 2
	ldx.w	$a0, $a0, $fp
	add.d	$a2, $a4, $a2
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	mul.w	$a2, $a2, $a4
	srli.d	$s3, $a2, 16
	add.d	$a0, $a0, $a6
	mul.w	$a0, $a0, $a4
	srli.d	$s4, $a0, 16
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 0
	addi.d	$a4, $a1, 80
	addi.d	$a5, $a3, 80
	addi.d	$s8, $t1, 80
	addi.d	$s2, $a7, 80
	lu12i.w	$a0, 524287
	ori	$a3, $a0, 4095
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.d	$a4, $sp, 224                   # 8-byte Folded Spill
	st.d	$a5, $sp, 216                   # 8-byte Folded Spill
	move	$a6, $s8
	move	$a7, $s2
	jirl	$ra, $t0, 0
	move	$t4, $s7
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $s7, %pc_lo12(McostState)
	slli.d	$t0, $t1, 3
	ldx.d	$a1, $a1, $t0
	add.d	$a0, $a0, $s3
	add.w	$a0, $a0, $s4
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $t1
	slt	$a1, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$s4, $a0, $a1
	st.d	$s7, $sp, 232                   # 8-byte Folded Spill
	st.d	$t0, $sp, 200                   # 8-byte Folded Spill
	blez	$t1, .LBB9_32
# %bb.30:
	ld.d	$a0, $t4, %pc_lo12(McostState)
	ldx.d	$a0, $a0, $t0
	addi.w	$s0, $t1, -1
	ldx.bu	$a0, $a0, $s0
	beqz	$a0, .LBB9_33
# %bb.31:
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	b	.LBB9_35
.LBB9_32:
	move	$s3, $s5
	move	$fp, $s6
	move	$t7, $s4
	move	$t2, $s5
	move	$t3, $s6
	b	.LBB9_49
.LBB9_33:
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	addi.d	$s3, $t2, -1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a3, $a1, $a0
	slli.d	$a0, $s3, 2
	ld.d	$a4, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a4, $a0, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	ldx.w	$a1, $a1, $fp
	add.d	$a2, $a3, $a2
	ld.d	$a3, $sp, 368                   # 8-byte Folded Reload
	mul.w	$a2, $a2, $a3
	srai.d	$a2, $a2, 16
	add.d	$a1, $a1, $a4
	mul.w	$a1, $a1, $a3
	srai.d	$a1, $a1, 16
	add.d	$s5, $a1, $a2
	bge	$s5, $s4, .LBB9_35
# %bb.34:
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 0
	sub.w	$a3, $s4, $s5
	addi.d	$a6, $a0, 80
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	move	$a7, $s2
	jirl	$ra, $t0, 0
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $t4, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $t0
	add.w	$a0, $a0, $s5
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $s0
	slt	$a1, $a0, $s4
	masknez	$a2, $t2, $a1
	maskeqz	$a3, $s3, $a1
	or	$s5, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$s4, $a0, $a1
	b	.LBB9_36
.LBB9_35:
	move	$s5, $t2
.LBB9_36:
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $t4, %pc_lo12(McostState)
	addi.w	$a1, $t1, 1
	slli.d	$s6, $a1, 3
	ldx.d	$a0, $a0, $s6
	ldx.bu	$a0, $a0, $t1
	bnez	$a0, .LBB9_40
# %bb.37:
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	addi.d	$s3, $t3, 1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a3, $a1, $a0
	slli.d	$a0, $s3, 2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a4, $a0, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	ldx.w	$a1, $a1, $s1
	add.d	$a2, $a3, $a2
	ld.d	$a3, $sp, 368                   # 8-byte Folded Reload
	mul.w	$a2, $a2, $a3
	srai.d	$a2, $a2, 16
	add.d	$a1, $a4, $a1
	mul.w	$a1, $a1, $a3
	srai.d	$a1, $a1, 16
	add.d	$s7, $a1, $a2
	bge	$s7, $s4, .LBB9_40
# %bb.38:
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 0
	sub.w	$a3, $s4, $s7
	addi.d	$a7, $a0, 80
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	move	$a6, $s8
	jirl	$ra, $t0, 0
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $t4, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s6
	add.w	$a0, $a0, $s7
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $t1
	move	$s6, $t3
	bge	$a0, $s4, .LBB9_41
# %bb.39:
	move	$s5, $t2
	move	$s6, $s3
	move	$s4, $a0
	b	.LBB9_41
.LBB9_40:
	move	$s6, $t3
.LBB9_41:
	ld.d	$a0, $t4, %pc_lo12(McostState)
	ldx.d	$a0, $a0, $t0
	bstrpick.d	$a1, $t1, 31, 0
	addi.d	$s7, $a1, 1
	ldx.bu	$a0, $a0, $s7
	bnez	$a0, .LBB9_44
# %bb.42:
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	addi.d	$s3, $t2, 1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a3, $a1, $a0
	slli.d	$a0, $s3, 2
	ld.d	$a4, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a4, $a0, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	ldx.w	$a1, $a1, $fp
	add.d	$a2, $a3, $a2
	ld.d	$a3, $sp, 368                   # 8-byte Folded Reload
	mul.w	$a2, $a2, $a3
	srai.d	$a2, $a2, 16
	add.d	$a1, $a1, $a4
	mul.w	$a1, $a1, $a3
	srai.d	$a1, $a1, 16
	add.d	$fp, $a1, $a2
	bge	$fp, $s4, .LBB9_44
# %bb.43:
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 0
	sub.w	$a3, $s4, $fp
	addi.d	$a6, $a0, 80
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	move	$a7, $s2
	jirl	$ra, $t0, 0
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $t4, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $t0
	add.w	$t7, $a0, $fp
	ori	$a0, $zero, 1
	stx.b	$a0, $a1, $s7
	move	$fp, $t3
	blt	$t7, $s4, .LBB9_45
.LBB9_44:
	move	$t7, $s4
	move	$fp, $s6
	move	$s3, $s5
.LBB9_45:
	ld.d	$a0, $t4, %pc_lo12(McostState)
	slli.d	$s2, $s0, 3
	ldx.d	$a0, $a0, $s2
	ldx.bu	$a0, $a0, $t1
	bnez	$a0, .LBB9_49
# %bb.46:
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	addi.d	$s0, $t3, -1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a3, $a1, $a0
	ldx.w	$a4, $a1, $s1
	slli.d	$a0, $s0, 2
	ld.d	$a5, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a5, $a0, $a5
	slli.d	$a5, $a5, 2
	ldx.w	$a1, $a1, $a5
	add.d	$a2, $a3, $a2
	ld.d	$a3, $sp, 368                   # 8-byte Folded Reload
	mul.w	$a2, $a2, $a3
	srai.d	$a2, $a2, 16
	add.d	$a1, $a1, $a4
	mul.w	$a1, $a1, $a3
	srai.d	$a1, $a1, 16
	add.d	$s1, $a1, $a2
	bge	$s1, $t7, .LBB9_49
# %bb.47:
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 0
	sub.w	$a3, $t7, $s1
	addi.d	$a7, $a0, 80
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	move	$a6, $s8
	move	$s4, $t7
	jirl	$ra, $t0, 0
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	move	$t7, $s4
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $t4, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s2
	add.w	$a0, $a0, $s1
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $t1
	bge	$a0, $s4, .LBB9_49
# %bb.48:
	move	$s3, $t2
	move	$fp, $s0
	move	$t7, $a0
.LBB9_49:                               # %.thread1381
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	bne	$a0, $t2, .LBB9_52
# %bb.50:                               # %.thread1381
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	bne	$a0, $t3, .LBB9_52
# %bb.51:
	move	$s8, $s3
	move	$s7, $fp
	b	.LBB9_83
.LBB9_52:
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	sub.w	$a0, $a0, $t2
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	blt	$t1, $a1, .LBB9_58
# %bb.53:
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	sub.w	$a1, $a1, $t3
	srai.d	$a2, $a1, 31
	xor	$a3, $a1, $a2
	sub.w	$a2, $a3, $a2
	bltu	$t1, $a2, .LBB9_58
# %bb.54:
	ld.d	$a2, $t4, %pc_lo12(McostState)
	add.w	$a1, $a1, $t1
	slli.d	$s1, $a1, 3
	ldx.d	$a1, $a2, $s1
	add.w	$s0, $a0, $t1
	ldx.bu	$a0, $a1, $s0
	bnez	$a0, .LBB9_58
# %bb.55:
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a2, $a0, $a2
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	slli.d	$a3, $a3, 2
	sub.d	$a3, $a0, $a3
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	slli.d	$a4, $a4, 2
	sub.d	$a0, $a0, $a4
	ld.w	$a3, $a3, 0
	ld.w	$a0, $a0, 0
	add.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	mul.w	$a1, $a1, $a2
	srai.d	$a1, $a1, 16
	add.d	$a0, $a0, $a3
	mul.w	$a0, $a0, $a2
	srai.d	$a0, $a0, 16
	add.d	$s2, $a0, $a1
	bge	$s2, $t7, .LBB9_58
# %bb.56:
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 0
	sub.w	$a3, $t7, $s2
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	addi.w	$a6, $a0, 80
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.w	$a7, $a0, 80
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	move	$s4, $t7
	jirl	$ra, $t0, 0
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	move	$t7, $s4
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $t4, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s1
	add.w	$a0, $a0, $s2
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $s0
	bge	$a0, $s4, .LBB9_58
# %bb.57:
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	move	$t7, $a0
.LBB9_58:
	addi.w	$s0, $s3, -1
	sub.w	$a0, $s0, $t2
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	sub.w	$s1, $fp, $t3
	blt	$t1, $a1, .LBB9_63
# %bb.59:
	srai.d	$a1, $s1, 31
	xor	$a2, $s1, $a1
	sub.w	$a1, $a2, $a1
	bltu	$t1, $a1, .LBB9_63
# %bb.60:
	ld.d	$a1, $t4, %pc_lo12(McostState)
	add.w	$a2, $s1, $t1
	slli.d	$s2, $a2, 3
	ldx.d	$a1, $a1, $s2
	add.w	$s4, $a0, $t1
	ldx.bu	$a0, $a1, $s4
	bnez	$a0, .LBB9_63
# %bb.61:
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $s0, 2
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $fp, 2
	ld.d	$a6, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	mul.w	$a3, $a3, $a4
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $a4
	srai.d	$a2, $a2, 16
	add.d	$s5, $a2, $a3
	bge	$s5, $t7, .LBB9_63
# %bb.62:
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t7, $s5
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	move	$s6, $t7
	jirl	$ra, $t0, 0
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $t4, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s2
	add.w	$a0, $a0, $s5
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $s4
	slt	$a1, $a0, $s6
	masknez	$a2, $s3, $a1
	maskeqz	$a3, $s0, $a1
	or	$s8, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$t7, $a0, $a1
	b	.LBB9_64
.LBB9_63:
	move	$s8, $s3
.LBB9_64:
	sub.w	$s0, $s3, $t2
	srai.d	$a0, $s0, 31
	xor	$a1, $s0, $a0
	sub.w	$s4, $a1, $a0
	blt	$t1, $s4, .LBB9_70
# %bb.65:
	addi.w	$s5, $fp, 1
	sub.w	$a0, $s5, $t3
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	bltu	$t1, $a1, .LBB9_70
# %bb.66:
	ld.d	$a1, $t4, %pc_lo12(McostState)
	add.w	$a0, $a0, $t1
	slli.d	$s2, $a0, 3
	ldx.d	$a0, $a1, $s2
	add.w	$s6, $s0, $t1
	ldx.bu	$a0, $a0, $s6
	bnez	$a0, .LBB9_70
# %bb.67:
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $s3, 2
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s5, 2
	ld.d	$a6, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	mul.w	$a3, $a3, $a4
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $a4
	srai.d	$a2, $a2, 16
	add.d	$s7, $a2, $a3
	bge	$s7, $t7, .LBB9_70
# %bb.68:
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t7, $s7
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	st.d	$s8, $sp, 96                    # 8-byte Folded Spill
	move	$s8, $t7
	jirl	$ra, $t0, 0
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	move	$t7, $s8
	ld.d	$s8, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $t4, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s2
	add.w	$a0, $a0, $s7
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $s6
	move	$s7, $fp
	bge	$a0, $t7, .LBB9_71
# %bb.69:
	move	$s8, $s3
	move	$s7, $s5
	move	$t7, $a0
	b	.LBB9_71
.LBB9_70:
	move	$s7, $fp
.LBB9_71:
	addi.w	$s5, $s3, 1
	sub.w	$a0, $s5, $t2
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	blt	$t1, $a1, .LBB9_77
# %bb.72:
	srai.d	$a1, $s1, 31
	xor	$a2, $s1, $a1
	sub.w	$a1, $a2, $a1
	bltu	$t1, $a1, .LBB9_77
# %bb.73:
	ld.d	$a1, $t4, %pc_lo12(McostState)
	add.w	$a2, $s1, $t1
	slli.d	$s2, $a2, 3
	ldx.d	$a1, $a1, $s2
	add.w	$s1, $a0, $t1
	ldx.bu	$a0, $a1, $s1
	bnez	$a0, .LBB9_77
# %bb.74:
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $s5, 2
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $fp, 2
	ld.d	$a6, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	mul.w	$a3, $a3, $a4
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $a4
	srai.d	$a2, $a2, 16
	add.d	$s6, $a2, $a3
	bge	$s6, $t7, .LBB9_77
# %bb.75:
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t7, $s6
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	move	$s7, $t7
	jirl	$ra, $t0, 0
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	move	$t7, $s7
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $t4, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s2
	add.w	$a0, $a0, $s6
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $s1
	bge	$a0, $t7, .LBB9_77
# %bb.76:
	move	$s8, $s5
	move	$s7, $fp
	move	$t7, $a0
.LBB9_77:
	blt	$t1, $s4, .LBB9_83
# %bb.78:
	addi.w	$fp, $fp, -1
	sub.w	$a0, $fp, $t3
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	bltu	$t1, $a1, .LBB9_83
# %bb.79:
	ld.d	$a1, $t4, %pc_lo12(McostState)
	add.w	$a0, $a0, $t1
	slli.d	$s1, $a0, 3
	ldx.d	$a0, $a1, $s1
	add.w	$s0, $s0, $t1
	ldx.bu	$a0, $a0, $s0
	bnez	$a0, .LBB9_83
# %bb.80:
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $s3, 2
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $fp, 2
	ld.d	$a6, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	mul.w	$a3, $a3, $a4
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $a4
	srai.d	$a2, $a2, 16
	add.d	$s2, $a2, $a3
	bge	$s2, $t7, .LBB9_83
# %bb.81:
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t7, $s2
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	move	$s4, $t7
	jirl	$ra, $t0, 0
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	move	$t7, $s4
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $t4, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s1
	add.w	$a0, $a0, $s2
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $s0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	bge	$a0, $s4, .LBB9_84
# %bb.82:
	move	$s8, $s3
	move	$s7, $fp
	move	$t7, $a0
	b	.LBB9_84
.LBB9_83:
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
.LBB9_84:                               # %.loopexit1242
	srai.d	$a6, $a2, 18
	srai.d	$a7, $a3, 18
	st.d	$a6, $sp, 152                   # 8-byte Folded Spill
	st.d	$a7, $sp, 144                   # 8-byte Folded Spill
	bge	$t7, $a1, .LBB9_86
# %bb.85:
	move	$ra, $s8
	move	$t5, $s7
	b	.LBB9_185
.LBB9_86:
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	bnez	$a5, .LBB9_88
# %bb.87:
	ld.d	$a0, $a0, 0
	ldptr.d	$a0, $a0, 14400
	slli.d	$a1, $a7, 3
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $a6, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 8
	pcalau12i	$a1, %pc_hi20(frame_ctr+4)
	ld.d	$a0, $a0, 0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ori	$a3, $zero, 2096
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	slli.d	$a4, $a4, 3
	ldx.d	$a0, $a0, $a4
	ldx.w	$a2, $a2, $a3
	ld.w	$a1, $a1, %pc_lo12(frame_ctr+4)
	ld.h	$a3, $a0, 0
	addi.w	$a4, $a2, 1
	mod.w	$a1, $a1, $a4
	sub.d	$a4, $zero, $a1
	mul.d	$a3, $a3, $a4
	movgr2fr.w	$fa0, $a3
	ffint.s.w	$fa0, $fa0
	sub.d	$a1, $a2, $a1
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	vldi	$vr2, -1168
	fadd.s	$fa1, $fa1, $fa2
	fdiv.s	$fa0, $fa0, $fa1
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	ld.h	$a0, $a0, 2
	pcalau12i	$a2, %pc_hi20(pred_MV_ref)
	addi.d	$a2, $a2, %pc_lo12(pred_MV_ref)
	st.w	$a1, $a2, 0
	mul.d	$a0, $a0, $a4
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	fdiv.s	$fa0, $fa0, $fa1
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $a2, 4
.LBB9_88:
	pcalau12i	$a0, %pc_hi20(SAD_a)
	ld.w	$a0, $a0, %pc_lo12(SAD_a)
	pcalau12i	$a1, %pc_hi20(SAD_b)
	ld.w	$a1, $a1, %pc_lo12(SAD_b)
	slt	$a2, $a0, $a1
	pcalau12i	$a3, %pc_hi20(SAD_c)
	ld.w	$a3, $a3, %pc_lo12(SAD_c)
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	slt	$a1, $a0, $a3
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a3, $a1
	or	$a1, $a0, $a1
	pcalau12i	$s5, %pc_hi20(pred_SAD)
	st.w	$a1, $s5, %pc_lo12(pred_SAD)
	pcalau12i	$a0, %pc_hi20(Big_Hexagon_Thd_MB)
	addi.d	$a0, $a0, %pc_lo12(Big_Hexagon_Thd_MB)
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	beqz	$a1, .LBB9_90
# %bb.89:
	pcalau12i	$a2, %pc_hi20(Bsize)
	addi.d	$a2, $a2, %pc_lo12(Bsize)
	fldx.s	$fa0, $a2, $a3
	mul.d	$a1, $a1, $a1
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa1, $a1
	pcalau12i	$a1, %pc_hi20(AlphaFourth_1)
	addi.d	$a1, $a1, %pc_lo12(AlphaFourth_1)
	fldx.s	$fa2, $a1, $a3
	pcalau12i	$a1, %pc_hi20(AlphaFourth_2)
	addi.d	$a1, $a1, %pc_lo12(AlphaFourth_2)
	fldx.s	$fa3, $a1, $a3
	ffint.s.l	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	fsub.s	$fs0, $fa0, $fa2
	fsub.s	$fs1, $fa0, $fa3
	ldx.w	$s6, $a0, $a3
	bnez	$a5, .LBB9_97
	b	.LBB9_91
.LBB9_90:
	movgr2fr.w	$fs1, $zero
	fmov.s	$fs0, $fs1
	ldx.w	$s6, $a0, $a3
	bnez	$a5, .LBB9_97
.LBB9_91:
	pcalau12i	$a0, %pc_hi20(pred_MV_ref)
	addi.d	$a1, $a0, %pc_lo12(pred_MV_ref)
	ld.w	$a0, $a1, 0
	bstrpick.d	$a2, $a0, 62, 61
	add.w	$a0, $a0, $a2
	srli.d	$a0, $a0, 2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	add.w	$fp, $a0, $a2
	sub.w	$a0, $fp, $t2
	srai.d	$a2, $a0, 31
	xor	$a3, $a0, $a2
	sub.w	$a2, $a3, $a2
	blt	$t1, $a2, .LBB9_97
# %bb.92:
	ld.w	$a1, $a1, 4
	bstrpick.d	$a2, $a1, 62, 61
	add.w	$a1, $a1, $a2
	srli.d	$a1, $a1, 2
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	add.w	$s0, $a1, $a2
	sub.w	$a1, $s0, $t3
	srai.d	$a2, $a1, 31
	xor	$a3, $a1, $a2
	sub.w	$a2, $a3, $a2
	bltu	$t1, $a2, .LBB9_97
# %bb.93:
	ld.d	$a2, $t4, %pc_lo12(McostState)
	add.w	$a1, $a1, $t1
	slli.d	$s2, $a1, 3
	ldx.d	$a1, $a2, $s2
	add.w	$s1, $a0, $t1
	ldx.bu	$a0, $a1, $s1
	bnez	$a0, .LBB9_97
# %bb.94:
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $fp, 2
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s0, 2
	ld.d	$a6, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	mul.w	$a3, $a3, $a4
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $a4
	srai.d	$a2, $a2, 16
	add.d	$s3, $a2, $a3
	bge	$s3, $t7, .LBB9_97
# %bb.95:
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t7, $s3
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	move	$s4, $t7
	jirl	$ra, $t0, 0
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	move	$t7, $s4
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $t4, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s2
	add.w	$a0, $a0, $s3
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $s1
	bge	$a0, $s4, .LBB9_97
# %bb.96:
	move	$s8, $fp
	move	$s7, $s0
	move	$t7, $a0
.LBB9_97:
	addi.w	$fp, $s8, -1
	sub.w	$a0, $fp, $t2
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	blt	$t1, $a1, .LBB9_102
# %bb.98:
	sub.w	$a1, $s7, $t3
	srai.d	$a2, $a1, 31
	xor	$a3, $a1, $a2
	sub.w	$a2, $a3, $a2
	bltu	$t1, $a2, .LBB9_102
# %bb.99:
	ld.d	$a2, $t4, %pc_lo12(McostState)
	add.w	$a1, $a1, $t1
	slli.d	$s1, $a1, 3
	ldx.d	$a1, $a2, $s1
	add.w	$s0, $a0, $t1
	ldx.bu	$a0, $a1, $s0
	bnez	$a0, .LBB9_102
# %bb.100:
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $fp, 2
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s7, 2
	ld.d	$a6, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	mul.w	$a3, $a3, $a4
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $a4
	srai.d	$a2, $a2, 16
	add.d	$s2, $a2, $a3
	bge	$s2, $t7, .LBB9_102
# %bb.101:
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t7, $s2
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	move	$s3, $t7
	jirl	$ra, $t0, 0
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $t4, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s1
	add.w	$a0, $a0, $s2
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $s0
	slt	$a1, $a0, $s3
	masknez	$a2, $s8, $a1
	maskeqz	$a3, $fp, $a1
	or	$ra, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s3, $a1
	or	$t7, $a0, $a1
	b	.LBB9_103
.LBB9_102:
	move	$ra, $s8
.LBB9_103:
	sub.w	$fp, $s8, $t2
	srai.d	$a0, $fp, 31
	xor	$a1, $fp, $a0
	sub.w	$s0, $a1, $a0
	blt	$t1, $s0, .LBB9_109
# %bb.104:
	addi.w	$s1, $s7, 1
	sub.w	$a0, $s1, $t3
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	bltu	$t1, $a1, .LBB9_109
# %bb.105:
	ld.d	$a1, $t4, %pc_lo12(McostState)
	add.w	$a0, $a0, $t1
	slli.d	$s2, $a0, 3
	ldx.d	$a0, $a1, $s2
	add.w	$s3, $fp, $t1
	ldx.bu	$a0, $a0, $s3
	bnez	$a0, .LBB9_109
# %bb.106:
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $s8, 2
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s1, 2
	ld.d	$a6, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	mul.w	$a3, $a3, $a4
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $a4
	srai.d	$a2, $a2, 16
	add.d	$s4, $a2, $a3
	bge	$s4, $t7, .LBB9_109
# %bb.107:
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t7, $s4
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s5, $sp, 40                    # 8-byte Folded Spill
	move	$s5, $t7
	move	$s7, $s6
	move	$s6, $ra
	jirl	$ra, $t0, 0
	move	$ra, $s6
	move	$s6, $s7
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	move	$t7, $s5
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $t4, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s2
	add.w	$a0, $a0, $s4
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $s3
	move	$t5, $s7
	bge	$a0, $t7, .LBB9_110
# %bb.108:
	move	$ra, $s8
	move	$t5, $s1
	move	$t7, $a0
	b	.LBB9_110
.LBB9_109:
	move	$t5, $s7
.LBB9_110:
	addi.w	$s1, $s8, 1
	sub.w	$a0, $s1, $t2
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	blt	$t1, $a1, .LBB9_116
# %bb.111:
	sub.w	$a1, $s7, $t3
	srai.d	$a2, $a1, 31
	xor	$a3, $a1, $a2
	sub.w	$a2, $a3, $a2
	bltu	$t1, $a2, .LBB9_116
# %bb.112:
	ld.d	$a2, $t4, %pc_lo12(McostState)
	add.w	$a1, $a1, $t1
	slli.d	$s2, $a1, 3
	ldx.d	$a1, $a2, $s2
	add.w	$s3, $a0, $t1
	ldx.bu	$a0, $a1, $s3
	bnez	$a0, .LBB9_116
# %bb.113:
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $s1, 2
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s7, 2
	ld.d	$a6, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	mul.w	$a3, $a3, $a4
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $a4
	srai.d	$a2, $a2, 16
	add.d	$s4, $a2, $a3
	bge	$s4, $t7, .LBB9_116
# %bb.114:
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t7, $s4
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	st.d	$s8, $sp, 96                    # 8-byte Folded Spill
	st.d	$s5, $sp, 40                    # 8-byte Folded Spill
	move	$s5, $t7
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	move	$s6, $ra
	move	$s8, $s7
	move	$s7, $t5
	jirl	$ra, $t0, 0
	move	$t5, $s7
	move	$s7, $s8
	move	$ra, $s6
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	move	$t7, $s5
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $t4, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s2
	add.w	$a0, $a0, $s4
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $s3
	bge	$a0, $t7, .LBB9_116
# %bb.115:
	move	$ra, $s1
	move	$t5, $s7
	move	$t7, $a0
.LBB9_116:
	blt	$t1, $s0, .LBB9_122
# %bb.117:
	addi.w	$s0, $s7, -1
	sub.w	$a0, $s0, $t3
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	bltu	$t1, $a1, .LBB9_122
# %bb.118:
	ld.d	$a1, $t4, %pc_lo12(McostState)
	add.w	$a0, $a0, $t1
	slli.d	$s1, $a0, 3
	ldx.d	$a0, $a1, $s1
	add.w	$fp, $fp, $t1
	ldx.bu	$a0, $a0, $fp
	bnez	$a0, .LBB9_122
# %bb.119:
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $s8, 2
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s0, 2
	ld.d	$a6, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	mul.w	$a3, $a3, $a4
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $a4
	srai.d	$a2, $a2, 16
	add.d	$s2, $a2, $a3
	bge	$s2, $t7, .LBB9_122
# %bb.120:
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t7, $s2
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	move	$s3, $t7
	move	$s4, $ra
	move	$s7, $s6
	move	$s6, $s5
	move	$s5, $t5
	jirl	$ra, $t0, 0
	move	$t5, $s5
	move	$s5, $s6
	move	$s6, $s7
	move	$ra, $s4
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	move	$t7, $s3
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $t4, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s1
	add.w	$a0, $a0, $s2
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $fp
	bge	$a0, $s3, .LBB9_122
# %bb.121:
	move	$ra, $s8
	move	$t5, $s0
	move	$t7, $a0
.LBB9_122:
	ld.w	$a0, $s5, %pc_lo12(pred_SAD)
	sub.d	$a1, $t7, $a0
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa2, $fs1, $fa1
	fcmp.clt.s	$fcc0, $fa0, $fa2
	bceqz	$fcc0, .LBB9_125
.LBB9_123:                              # %.loopexit1235
	blez	$t1, .LBB9_185
# %bb.124:
	move	$fp, $t1
	b	.LBB9_159
.LBB9_125:
	fmul.s	$fa1, $fs0, $fa1
	fcmp.clt.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB9_140
.LBB9_126:                              # %.loopexit1237
	blez	$t1, .LBB9_185
# %bb.127:                              # %.preheader1234.preheader
	move	$a2, $zero
	pcalau12i	$a0, %pc_hi20(Hexagon_x)
	addi.d	$s0, $a0, %pc_lo12(Hexagon_x)
	pcalau12i	$a0, %pc_hi20(Hexagon_y)
	addi.d	$a7, $a0, %pc_lo12(Hexagon_y)
	ori	$t0, $zero, 24
	st.d	$a7, $sp, 184                   # 8-byte Folded Spill
	b	.LBB9_129
	.p2align	4, , 16
.LBB9_128:                              #   in Loop: Header=BB9_129 Depth=1
	addi.w	$a2, $a2, 1
	beq	$a2, $t1, .LBB9_123
.LBB9_129:                              # %.preheader1234
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_131 Depth 2
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	move	$s8, $zero
	move	$s6, $ra
	move	$s5, $t5
	b	.LBB9_131
	.p2align	4, , 16
.LBB9_130:                              #   in Loop: Header=BB9_131 Depth=2
	addi.d	$s8, $s8, 4
	beq	$s8, $t0, .LBB9_137
.LBB9_131:                              #   Parent Loop BB9_129 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a0, $s0, $s8
	add.d	$s4, $a0, $s6
	sub.w	$a0, $s4, $t2
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	blt	$t1, $a1, .LBB9_130
# %bb.132:                              #   in Loop: Header=BB9_131 Depth=2
	ldx.w	$a1, $a7, $s8
	add.d	$s7, $a1, $s5
	sub.w	$a1, $s7, $t3
	srai.d	$a2, $a1, 31
	xor	$a3, $a1, $a2
	sub.w	$a2, $a3, $a2
	bltu	$t1, $a2, .LBB9_130
# %bb.133:                              #   in Loop: Header=BB9_131 Depth=2
	ld.d	$a2, $t4, %pc_lo12(McostState)
	add.w	$a1, $a1, $t1
	slli.d	$s2, $a1, 3
	ldx.d	$a1, $a2, $s2
	add.w	$fp, $a0, $t1
	ldx.bu	$a0, $a1, $fp
	bnez	$a0, .LBB9_130
# %bb.134:                              #   in Loop: Header=BB9_131 Depth=2
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $s4, 2
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s7, 2
	ld.d	$a6, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	mul.w	$a3, $a3, $a4
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $a4
	srai.d	$a2, $a2, 16
	add.d	$s3, $a2, $a3
	addi.w	$s1, $t7, 0
	bge	$s3, $s1, .LBB9_130
# %bb.135:                              #   in Loop: Header=BB9_131 Depth=2
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t7, $s3
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	st.d	$t7, $sp, 272                   # 8-byte Folded Spill
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$t5, $sp, 288                   # 8-byte Folded Spill
	jirl	$ra, $t0, 0
	ori	$t0, $zero, 24
	ld.d	$a7, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $t4, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s2
	add.w	$a0, $a0, $s3
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $fp
	bge	$a0, $s1, .LBB9_130
# %bb.136:                              #   in Loop: Header=BB9_131 Depth=2
	move	$ra, $s4
	move	$t5, $s7
	move	$t7, $a0
	b	.LBB9_130
	.p2align	4, , 16
.LBB9_137:                              #   in Loop: Header=BB9_129 Depth=1
	addi.w	$a0, $s6, 0
	addi.w	$a1, $ra, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB9_128
# %bb.138:                              #   in Loop: Header=BB9_129 Depth=1
	addi.w	$a0, $s5, 0
	addi.w	$a1, $t5, 0
	bne	$a1, $a0, .LBB9_128
# %bb.139:
	move	$ra, $s6
	move	$t5, $s5
	b	.LBB9_123
.LBB9_140:                              # %.preheader1241
	st.d	$s5, $sp, 40                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	ori	$a0, $zero, 2
	blt	$t1, $a0, .LBB9_195
# %bb.141:                              # %.lr.ph
	sub.w	$a0, $t5, $t3
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a6, $a2, $a1
	add.w	$a7, $a0, $t1
	slli.d	$a1, $t5, 2
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	sub.w	$t6, $a1, $a0
	ori	$a0, $zero, 80
	alsl.w	$a0, $t5, $a0, 2
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a5, $ra, 2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	addi.d	$a1, $zero, -4
	sub.d	$t8, $a1, $a0
	nor	$s3, $t2, $zero
	sub.d	$a2, $ra, $t2
	addi.d	$fp, $a2, -1
	ori	$a1, $zero, 4
	sub.d	$a3, $a1, $a0
	ori	$a0, $zero, 1
	sub.d	$s0, $a0, $t2
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	addi.d	$s1, $a2, 1
	addi.d	$a2, $zero, -1
	ori	$s8, $zero, 76
	ori	$s5, $zero, 84
	ori	$s4, $zero, 1
	ori	$s6, $zero, 1
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	st.d	$a6, $sp, 72                    # 8-byte Folded Spill
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	st.d	$t6, $sp, 56                    # 8-byte Folded Spill
	b	.LBB9_144
.LBB9_142:                              #   in Loop: Header=BB9_144 Depth=1
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB9_143:                              #   in Loop: Header=BB9_144 Depth=1
	addi.d	$s6, $s6, 2
	addi.d	$a2, $a2, -2
	addi.d	$s8, $s8, -8
	addi.d	$t8, $t8, -8
	addi.d	$s3, $s3, -2
	addi.d	$fp, $fp, -2
	addi.d	$s4, $s4, 2
	addi.d	$s5, $s5, 8
	addi.d	$a3, $a3, 8
	addi.d	$s0, $s0, 2
	addi.d	$s1, $s1, 2
	bge	$s6, $t1, .LBB9_196
.LBB9_144:                              # =>This Inner Loop Header: Depth=1
	add.w	$a0, $ra, $s0
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t1, $a0, .LBB9_151
# %bb.145:                              #   in Loop: Header=BB9_144 Depth=1
	bltu	$t1, $a6, .LBB9_151
# %bb.146:                              #   in Loop: Header=BB9_144 Depth=1
	ld.d	$a0, $t4, %pc_lo12(McostState)
	slli.d	$s2, $a7, 3
	ldx.d	$a0, $a0, $s2
	add.d	$a0, $a0, $t1
	ldx.bu	$a0, $a0, $s1
	bnez	$a0, .LBB9_151
# %bb.147:                              #   in Loop: Header=BB9_144 Depth=1
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a2, $a0, $a2
	st.d	$a3, $sp, 184                   # 8-byte Folded Spill
	add.w	$a3, $a5, $a3
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a0, $a3
	slli.d	$a4, $t6, 2
	ldx.w	$a0, $a0, $a4
	add.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	mul.w	$a1, $a1, $a2
	srai.d	$a1, $a1, 16
	add.d	$a0, $a0, $a3
	mul.w	$a0, $a0, $a2
	srai.d	$a0, $a0, 16
	add.d	$s7, $a0, $a1
	addi.w	$a0, $t7, 0
	bge	$s7, $a0, .LBB9_150
# %bb.148:                              #   in Loop: Header=BB9_144 Depth=1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 0
	sub.w	$a3, $t7, $s7
	add.w	$a6, $a5, $s5
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	st.d	$t7, $sp, 272                   # 8-byte Folded Spill
	st.d	$t5, $sp, 288                   # 8-byte Folded Spill
	st.d	$t8, $sp, 96                    # 8-byte Folded Spill
	jirl	$ra, $t0, 0
	ld.d	$t8, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $t4, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s2
	add.w	$a0, $a0, $s7
	add.d	$a1, $a1, $t1
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $s1
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bge	$a0, $a1, .LBB9_151
# %bb.149:                              #   in Loop: Header=BB9_144 Depth=1
	add.d	$a1, $ra, $s4
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	move	$t7, $a0
	b	.LBB9_151
.LBB9_150:                              #   in Loop: Header=BB9_144 Depth=1
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB9_151:                              #   in Loop: Header=BB9_144 Depth=1
	add.w	$a0, $ra, $s3
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	blt	$t1, $a0, .LBB9_143
# %bb.152:                              #   in Loop: Header=BB9_144 Depth=1
	bltu	$t1, $a6, .LBB9_143
# %bb.153:                              #   in Loop: Header=BB9_144 Depth=1
	ld.d	$a0, $t4, %pc_lo12(McostState)
	slli.d	$s2, $a7, 3
	ldx.d	$a0, $a0, $s2
	add.d	$a0, $a0, $t1
	ldx.bu	$a0, $a0, $fp
	bnez	$a0, .LBB9_143
# %bb.154:                              #   in Loop: Header=BB9_144 Depth=1
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	st.d	$a3, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a2, $a0, $a2
	add.w	$a3, $a5, $t8
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a0, $a3
	slli.d	$a4, $t6, 2
	ldx.w	$a0, $a0, $a4
	add.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	mul.w	$a1, $a1, $a2
	srai.d	$a1, $a1, 16
	add.d	$a0, $a0, $a3
	mul.w	$a0, $a0, $a2
	srai.d	$a0, $a0, 16
	add.d	$s7, $a0, $a1
	addi.w	$a0, $t7, 0
	bge	$s7, $a0, .LBB9_142
# %bb.155:                              #   in Loop: Header=BB9_144 Depth=1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 0
	sub.w	$a3, $t7, $s7
	add.w	$a6, $a5, $s8
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	st.d	$t7, $sp, 272                   # 8-byte Folded Spill
	st.d	$t5, $sp, 288                   # 8-byte Folded Spill
	st.d	$t8, $sp, 96                    # 8-byte Folded Spill
	jirl	$ra, $t0, 0
	ld.d	$t8, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $t4, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s2
	add.w	$a0, $a0, $s7
	add.d	$a1, $a1, $t1
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $fp
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bge	$a0, $a1, .LBB9_143
# %bb.156:                              #   in Loop: Header=BB9_144 Depth=1
	add.d	$a1, $ra, $a2
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	move	$t7, $a0
	b	.LBB9_143
.LBB9_157:                              #   in Loop: Header=BB9_159 Depth=1
	move	$t7, $a0
	move	$s0, $s4
	move	$s3, $ra
	.p2align	4, , 16
.LBB9_158:                              # %.thread1395
                                        #   in Loop: Header=BB9_159 Depth=1
	addi.w	$fp, $fp, -1
	move	$t5, $s0
	move	$ra, $s3
	beqz	$fp, .LBB9_185
.LBB9_159:                              # %.preheader1233
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s0, $ra, -1
	sub.w	$a0, $s0, $t2
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	blt	$t1, $a1, .LBB9_164
# %bb.160:                              #   in Loop: Header=BB9_159 Depth=1
	sub.w	$a1, $t5, $t3
	srai.d	$a2, $a1, 31
	xor	$a3, $a1, $a2
	sub.w	$a2, $a3, $a2
	bltu	$t1, $a2, .LBB9_164
# %bb.161:                              #   in Loop: Header=BB9_159 Depth=1
	ld.d	$a2, $t4, %pc_lo12(McostState)
	add.w	$a1, $a1, $t1
	slli.d	$s2, $a1, 3
	ldx.d	$a1, $a2, $s2
	add.w	$s1, $a0, $t1
	ldx.bu	$a0, $a1, $s1
	bnez	$a0, .LBB9_164
# %bb.162:                              #   in Loop: Header=BB9_159 Depth=1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $s0, 2
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $t5, 2
	ld.d	$a6, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	mul.w	$a3, $a3, $a4
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $a4
	srai.d	$a2, $a2, 16
	add.d	$s3, $a2, $a3
	addi.w	$s4, $t7, 0
	bge	$s3, $s4, .LBB9_164
# %bb.163:                              #   in Loop: Header=BB9_159 Depth=1
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t7, $s3
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	move	$s5, $ra
	move	$s6, $t5
	jirl	$ra, $t0, 0
	move	$t5, $s6
	move	$ra, $s5
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $t4, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s2
	add.w	$a0, $a0, $s3
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $s1
	slt	$a1, $a0, $s4
	masknez	$a2, $s5, $a1
	maskeqz	$a3, $s0, $a1
	or	$s3, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$t7, $a0, $a1
	b	.LBB9_165
	.p2align	4, , 16
.LBB9_164:                              #   in Loop: Header=BB9_159 Depth=1
	move	$s3, $ra
.LBB9_165:                              #   in Loop: Header=BB9_159 Depth=1
	sub.w	$s1, $ra, $t2
	srai.d	$a0, $s1, 31
	xor	$a1, $s1, $a0
	sub.w	$s4, $a1, $a0
	blt	$t1, $s4, .LBB9_171
# %bb.166:                              #   in Loop: Header=BB9_159 Depth=1
	addi.d	$s5, $t5, 1
	sub.w	$a0, $s5, $t3
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	bltu	$t1, $a1, .LBB9_171
# %bb.167:                              #   in Loop: Header=BB9_159 Depth=1
	ld.d	$a1, $t4, %pc_lo12(McostState)
	add.w	$a0, $a0, $t1
	slli.d	$s2, $a0, 3
	ldx.d	$a0, $a1, $s2
	add.w	$s0, $s1, $t1
	ldx.bu	$a0, $a0, $s0
	bnez	$a0, .LBB9_171
# %bb.168:                              #   in Loop: Header=BB9_159 Depth=1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $ra, 2
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s5, 2
	ld.d	$a6, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	mul.w	$a3, $a3, $a4
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $a4
	srai.d	$a2, $a2, 16
	add.d	$s7, $a2, $a3
	addi.w	$s6, $t7, 0
	bge	$s7, $s6, .LBB9_171
# %bb.169:                              #   in Loop: Header=BB9_159 Depth=1
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t7, $s7
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	st.d	$t7, $sp, 272                   # 8-byte Folded Spill
	move	$s8, $ra
	st.d	$t5, $sp, 288                   # 8-byte Folded Spill
	jirl	$ra, $t0, 0
	ld.d	$t5, $sp, 288                   # 8-byte Folded Reload
	move	$ra, $s8
	ld.d	$t7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $t4, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s2
	add.w	$a0, $a0, $s7
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $s0
	move	$s0, $t5
	bge	$a0, $s6, .LBB9_172
# %bb.170:                              #   in Loop: Header=BB9_159 Depth=1
	move	$s3, $ra
	move	$s0, $s5
	move	$t7, $a0
	b	.LBB9_172
	.p2align	4, , 16
.LBB9_171:                              #   in Loop: Header=BB9_159 Depth=1
	move	$s0, $t5
.LBB9_172:                              #   in Loop: Header=BB9_159 Depth=1
	addi.d	$s5, $ra, 1
	sub.w	$a0, $s5, $t2
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	blt	$t1, $a1, .LBB9_178
# %bb.173:                              #   in Loop: Header=BB9_159 Depth=1
	sub.w	$a1, $t5, $t3
	srai.d	$a2, $a1, 31
	xor	$a3, $a1, $a2
	sub.w	$a2, $a3, $a2
	bltu	$t1, $a2, .LBB9_178
# %bb.174:                              #   in Loop: Header=BB9_159 Depth=1
	ld.d	$a2, $t4, %pc_lo12(McostState)
	add.w	$a1, $a1, $t1
	slli.d	$s2, $a1, 3
	ldx.d	$a1, $a2, $s2
	add.w	$s6, $a0, $t1
	ldx.bu	$a0, $a1, $s6
	bnez	$a0, .LBB9_178
# %bb.175:                              #   in Loop: Header=BB9_159 Depth=1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $s5, 2
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $t5, 2
	ld.d	$a6, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	mul.w	$a3, $a3, $a4
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $a4
	srai.d	$a2, $a2, 16
	add.d	$s8, $a2, $a3
	addi.w	$s7, $t7, 0
	bge	$s8, $s7, .LBB9_178
# %bb.176:                              #   in Loop: Header=BB9_159 Depth=1
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t7, $s8
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	st.d	$t7, $sp, 272                   # 8-byte Folded Spill
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$t5, $sp, 288                   # 8-byte Folded Spill
	jirl	$ra, $t0, 0
	ld.d	$t5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $t4, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s2
	add.w	$a0, $a0, $s8
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $s6
	bge	$a0, $s7, .LBB9_178
# %bb.177:                              #   in Loop: Header=BB9_159 Depth=1
	move	$s3, $s5
	move	$s0, $t5
	move	$t7, $a0
	.p2align	4, , 16
.LBB9_178:                              #   in Loop: Header=BB9_159 Depth=1
	blt	$t1, $s4, .LBB9_183
# %bb.179:                              #   in Loop: Header=BB9_159 Depth=1
	addi.d	$s4, $t5, -1
	sub.w	$a0, $s4, $t3
	srai.d	$a1, $a0, 31
	xor	$a2, $a0, $a1
	sub.w	$a1, $a2, $a1
	bltu	$t1, $a1, .LBB9_183
# %bb.180:                              #   in Loop: Header=BB9_159 Depth=1
	ld.d	$a1, $t4, %pc_lo12(McostState)
	add.w	$a0, $a0, $t1
	slli.d	$s5, $a0, 3
	ldx.d	$a0, $a1, $s5
	add.w	$s1, $s1, $t1
	ldx.bu	$a0, $a0, $s1
	bnez	$a0, .LBB9_183
# %bb.181:                              #   in Loop: Header=BB9_159 Depth=1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $ra, 2
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s4, 2
	ld.d	$a6, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	mul.w	$a3, $a3, $a4
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $a4
	srai.d	$a2, $a2, 16
	add.d	$s6, $a2, $a3
	addi.w	$s2, $t7, 0
	bge	$s6, $s2, .LBB9_183
# %bb.182:                              #   in Loop: Header=BB9_159 Depth=1
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t7, $s6
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	move	$s7, $t7
	move	$s8, $ra
	st.d	$t5, $sp, 288                   # 8-byte Folded Spill
	jirl	$ra, $t0, 0
	ld.d	$t5, $sp, 288                   # 8-byte Folded Reload
	move	$ra, $s8
	move	$t7, $s7
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $t4, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s5
	add.w	$a0, $a0, $s6
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $s1
	blt	$a0, $s2, .LBB9_157
	.p2align	4, , 16
.LBB9_183:                              #   in Loop: Header=BB9_159 Depth=1
	addi.w	$a0, $ra, 0
	addi.w	$a1, $s3, 0
	bne	$a1, $a0, .LBB9_158
# %bb.184:                              #   in Loop: Header=BB9_159 Depth=1
	addi.w	$a0, $t5, 0
	addi.w	$a1, $s0, 0
	bne	$a1, $a0, .LBB9_158
.LBB9_185:                              # %.loopexit
	move	$s0, $t5
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	srai.d	$a0, $a0, 2
	ld.d	$t5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	blez	$a0, .LBB9_194
# %bb.186:                              # %.preheader.lr.ph
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	srai.d	$a1, $a1, 2
	blez	$a1, .LBB9_194
# %bb.187:                              # %.preheader.us.preheader
	move	$a2, $zero
	pcalau12i	$a3, %pc_hi20(fastme_l0_cost_bipred)
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	slli.d	$a4, $a4, 3
	pcalau12i	$a5, %pc_hi20(fastme_l1_cost_bipred)
	b	.LBB9_189
	.p2align	4, , 16
.LBB9_188:                              # %._crit_edge1322.us
                                        #   in Loop: Header=BB9_189 Depth=1
	addi.w	$a2, $a2, 1
	beq	$a2, $a0, .LBB9_194
.LBB9_189:                              # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_191 Depth 2
                                        #     Child Loop BB9_193 Depth 2
	ld.d	$a6, $t5, 0
	add.d	$a7, $a2, $t8
	beqz	$t6, .LBB9_192
# %bb.190:                              # %.lr.ph1321.split.us1327
                                        #   in Loop: Header=BB9_189 Depth=1
	ld.d	$t0, $a5, %pc_lo12(fastme_l1_cost_bipred)
	ldx.d	$t0, $t0, $a4
	move	$t1, $fp
	move	$t2, $a1
	.p2align	4, , 16
.LBB9_191:                              #   Parent Loop BB9_189 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $a6, 180
	srli.d	$t3, $t3, 2
	ld.w	$t4, $a6, 176
	add.w	$t3, $t1, $t3
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $t0, $t3
	srli.d	$t4, $t4, 2
	add.w	$t4, $a7, $t4
	slli.d	$t4, $t4, 2
	stx.w	$t7, $t3, $t4
	addi.w	$t2, $t2, -1
	addi.d	$t1, $t1, 1
	bnez	$t2, .LBB9_191
	b	.LBB9_188
	.p2align	4, , 16
.LBB9_192:                              # %.lr.ph1321.split.us.us
                                        #   in Loop: Header=BB9_189 Depth=1
	ld.d	$t0, $a3, %pc_lo12(fastme_l0_cost_bipred)
	ldx.d	$t0, $t0, $a4
	move	$t1, $fp
	move	$t2, $a1
	.p2align	4, , 16
.LBB9_193:                              #   Parent Loop BB9_189 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $a6, 180
	srli.d	$t3, $t3, 2
	ld.w	$t4, $a6, 176
	add.w	$t3, $t1, $t3
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $t0, $t3
	srli.d	$t4, $t4, 2
	add.w	$t4, $a7, $t4
	slli.d	$t4, $t4, 2
	stx.w	$t7, $t3, $t4
	addi.w	$t2, $t2, -1
	addi.d	$t1, $t1, 1
	bnez	$t2, .LBB9_193
	b	.LBB9_188
.LBB9_194:                              # %._crit_edge1324
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	sub.d	$a0, $ra, $a0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.h	$a0, $a1, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	sub.d	$a1, $s0, $a0
	addi.w	$a0, $t7, 0
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	st.h	$a1, $a2, 0
	fld.d	$fs1, $sp, 504                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 512                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 584                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 592                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 600                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 608
	ret
.LBB9_195:
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	b	.LBB9_198
.LBB9_196:                              # %.preheader1240
	ori	$a0, $zero, 4
	blt	$t1, $a0, .LBB9_198
# %bb.197:                              # %.lr.ph1268
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	addi.w	$a0, $a2, 0
	srai.d	$a0, $a0, 31
	xor	$a1, $a2, $a0
	sub.w	$a0, $a1, $a0
	bgeu	$t1, $a0, .LBB9_228
.LBB9_198:
	move	$t6, $t5
.LBB9_199:                              # %._crit_edge
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(pred_SAD)
	sub.d	$a1, $t7, $a0
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa2, $fs1, $fa1
	fcmp.clt.s	$fcc0, $fa0, $fa2
	bceqz	$fcc0, .LBB9_201
# %bb.200:
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	move	$t5, $t6
	b	.LBB9_123
.LBB9_201:
	fmul.s	$fa1, $fs0, $fa1
	fcmp.clt.s	$fcc0, $fa0, $fa1
	ld.d	$a7, $sp, 88                    # 8-byte Folded Reload
	bceqz	$fcc0, .LBB9_203
# %bb.202:
	move	$ra, $a7
	move	$t5, $t6
	b	.LBB9_126
.LBB9_203:                              # %.preheader1239.preheader
	pcalau12i	$a0, %got_pc_hi20(spiral_search_x)
	ld.d	$a1, $a0, %got_pc_lo12(spiral_search_x)
	pcalau12i	$a0, %got_pc_hi20(spiral_search_y)
	ld.d	$a0, $a0, %got_pc_lo12(spiral_search_y)
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a2, $a0, 0
	ori	$s1, $zero, 2
	ori	$s3, $zero, 50
	move	$t5, $t6
	move	$ra, $a7
	st.d	$t6, $sp, 184                   # 8-byte Folded Spill
	b	.LBB9_206
.LBB9_204:                              #   in Loop: Header=BB9_206 Depth=1
	ld.d	$a7, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB9_205:                              #   in Loop: Header=BB9_206 Depth=1
	addi.d	$s1, $s1, 2
	beq	$s1, $s3, .LBB9_214
.LBB9_206:                              # %.preheader1239
                                        # =>This Inner Loop Header: Depth=1
	ldx.h	$a0, $a1, $s1
	add.d	$s5, $a7, $a0
	sub.w	$a0, $s5, $t2
	srai.d	$a3, $a0, 31
	xor	$a4, $a0, $a3
	sub.w	$a3, $a4, $a3
	blt	$t1, $a3, .LBB9_205
# %bb.207:                              #   in Loop: Header=BB9_206 Depth=1
	ldx.h	$a3, $a2, $s1
	add.d	$s6, $t6, $a3
	sub.w	$a3, $s6, $t3
	srai.d	$a4, $a3, 31
	xor	$a5, $a3, $a4
	sub.w	$a4, $a5, $a4
	bltu	$t1, $a4, .LBB9_205
# %bb.208:                              #   in Loop: Header=BB9_206 Depth=1
	ld.d	$a4, $t4, %pc_lo12(McostState)
	add.w	$a3, $a3, $t1
	slli.d	$s7, $a3, 3
	ldx.d	$a3, $a4, $s7
	add.w	$s2, $a0, $t1
	ldx.bu	$a0, $a3, $s2
	bnez	$a0, .LBB9_205
# %bb.209:                              #   in Loop: Header=BB9_206 Depth=1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a5, $a3, $a0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a6, $a3, $a0
	slli.d	$a0, $s5, 2
	ld.d	$a4, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a4, $a0, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a7, $a3, $a4
	slli.d	$a4, $s6, 2
	ld.d	$t0, $sp, 336                   # 8-byte Folded Reload
	sub.w	$t0, $a4, $t0
	slli.d	$t0, $t0, 2
	ldx.w	$a3, $a3, $t0
	add.d	$a5, $a6, $a5
	ld.d	$a6, $sp, 368                   # 8-byte Folded Reload
	mul.w	$a5, $a5, $a6
	srai.d	$a5, $a5, 16
	add.d	$a3, $a3, $a7
	mul.w	$a3, $a3, $a6
	srai.d	$a3, $a3, 16
	add.d	$s8, $a3, $a5
	addi.w	$s4, $t7, 0
	bge	$s8, $s4, .LBB9_204
# %bb.210:                              #   in Loop: Header=BB9_206 Depth=1
	st.d	$t5, $sp, 288                   # 8-byte Folded Spill
	move	$s0, $ra
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 0
	move	$fp, $t7
	sub.w	$a3, $t7, $s8
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a4, 80
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $t4, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s7
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $s2
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	add.w	$a0, $a0, $s8
	bge	$a0, $s4, .LBB9_212
# %bb.211:                              #   in Loop: Header=BB9_206 Depth=1
	move	$ra, $s5
	move	$t5, $s6
	move	$t7, $a0
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	b	.LBB9_213
.LBB9_212:                              #   in Loop: Header=BB9_206 Depth=1
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	move	$t7, $fp
	move	$ra, $s0
	ld.d	$t5, $sp, 288                   # 8-byte Folded Reload
.LBB9_213:                              #   in Loop: Header=BB9_206 Depth=1
	ld.d	$a7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 184                   # 8-byte Folded Reload
	b	.LBB9_205
.LBB9_214:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(pred_SAD)
	sub.d	$a1, $t7, $a0
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	fmul.s	$fa2, $fs1, $fa1
	fcmp.clt.s	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB9_123
# %bb.215:
	fmul.s	$fa1, $fs0, $fa1
	fcmp.clt.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB9_126
# %bb.216:
	pcalau12i	$a0, %pc_hi20(Big_Hexagon_x)
	addi.d	$fp, $a0, %pc_lo12(Big_Hexagon_x)
	vld	$vr0, $fp, 48
	vst	$vr0, $sp, 488
	vld	$vr0, $fp, 32
	vld	$vr1, $fp, 16
	vld	$vr2, $fp, 0
	pcalau12i	$a0, %pc_hi20(Big_Hexagon_y)
	addi.d	$s0, $a0, %pc_lo12(Big_Hexagon_y)
	vld	$vr3, $s0, 0
	vst	$vr0, $sp, 472
	vst	$vr1, $sp, 456
	vst	$vr2, $sp, 440
	vst	$vr3, $sp, 376
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	vld	$vr0, $s0, 16
	vld	$vr1, $s0, 32
	vld	$vr2, $s0, 48
	ld.w	$a0, $a0, 28
	vst	$vr0, $sp, 392
	vst	$vr1, $sp, 408
	ori	$a1, $zero, 4
	vst	$vr2, $sp, 424
	blt	$a0, $a1, .LBB9_126
# %bb.217:                              # %.preheader1236.preheader
	addi.d	$s3, $sp, 440
	addi.d	$s4, $sp, 376
	ori	$t0, $zero, 64
	ori	$a0, $zero, 1
.LBB9_218:                              # %.preheader1236
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_220 Depth 2
	move	$s8, $zero
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	b	.LBB9_220
	.p2align	4, , 16
.LBB9_219:                              #   in Loop: Header=BB9_220 Depth=2
	addi.d	$s8, $s8, 4
	beq	$s8, $t0, .LBB9_226
.LBB9_220:                              #   Parent Loop BB9_218 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a0, $s8, $s3
	ldx.w	$a2, $fp, $s8
	ldx.w	$a1, $s8, $s4
	ldx.w	$a3, $s0, $s8
	add.d	$s1, $a0, $a7
	add.d	$a0, $a2, $a0
	stx.w	$a0, $s8, $s3
	add.d	$a2, $a3, $a1
	sub.w	$a0, $s1, $t2
	srai.d	$a3, $a0, 31
	xor	$a4, $a0, $a3
	sub.w	$a3, $a4, $a3
	stx.w	$a2, $s8, $s4
	blt	$t1, $a3, .LBB9_219
# %bb.221:                              #   in Loop: Header=BB9_220 Depth=2
	add.d	$s6, $a1, $t6
	sub.w	$a1, $s6, $t3
	srai.d	$a2, $a1, 31
	xor	$a3, $a1, $a2
	sub.w	$a2, $a3, $a2
	bltu	$t1, $a2, .LBB9_219
# %bb.222:                              #   in Loop: Header=BB9_220 Depth=2
	ld.d	$a2, $t4, %pc_lo12(McostState)
	add.w	$a1, $a1, $t1
	slli.d	$s5, $a1, 3
	ldx.d	$a1, $a2, $s5
	add.w	$s7, $a0, $t1
	ldx.bu	$a0, $a1, $s7
	bnez	$a0, .LBB9_219
# %bb.223:                              #   in Loop: Header=BB9_220 Depth=2
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a3, $a2, $a0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a4, $a2, $a0
	slli.d	$a0, $s1, 2
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a1, $a0, $a1
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a2, $a1
	slli.d	$a1, $s6, 2
	ld.d	$a6, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a2, $a2, $a6
	add.d	$a3, $a4, $a3
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	mul.w	$a3, $a3, $a4
	srai.d	$a3, $a3, 16
	add.d	$a2, $a2, $a5
	mul.w	$a2, $a2, $a4
	srai.d	$a2, $a2, 16
	add.d	$s2, $a2, $a3
	addi.w	$a2, $t7, 0
	bge	$s2, $a2, .LBB9_219
# %bb.224:                              #   in Loop: Header=BB9_220 Depth=2
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t0, $a2, 0
	sub.w	$a3, $t7, $s2
	addi.w	$a6, $a0, 80
	addi.w	$a7, $a1, 80
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	st.d	$t7, $sp, 272                   # 8-byte Folded Spill
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$t5, $sp, 288                   # 8-byte Folded Spill
	jirl	$ra, $t0, 0
	ori	$t0, $zero, 64
	ld.d	$t6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $t4, %pc_lo12(McostState)
	ldx.d	$a1, $a1, $s5
	add.w	$a0, $a0, $s2
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $s7
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB9_219
# %bb.225:                              #   in Loop: Header=BB9_220 Depth=2
	move	$ra, $s1
	move	$t5, $s6
	move	$t7, $a0
	b	.LBB9_219
.LBB9_226:                              #   in Loop: Header=BB9_218 Depth=1
	addi.w	$a0, $t7, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB9_185
# %bb.227:                              #   in Loop: Header=BB9_218 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 28
	srai.d	$a1, $a0, 2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a0, $a2, 1
	blt	$a2, $a1, .LBB9_218
	b	.LBB9_126
.LBB9_228:                              # %.lr.ph1268.split.preheader
	bstrpick.d	$a0, $t1, 31, 1
	add.w	$a6, $a2, $t1
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	sub.w	$a4, $a5, $a1
	ori	$a1, $zero, 80
	alsl.w	$a1, $ra, $a1, 2
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	addi.w	$t8, $a0, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 4
	sub.d	$ra, $a1, $a0
	ori	$a1, $zero, 1
	sub.d	$s5, $a1, $t3
	slli.d	$a1, $t5, 3
	slli.d	$a2, $t3, 3
	sub.d	$a1, $a1, $a2
	addi.d	$s6, $a1, 8
	nor	$s8, $t3, $zero
	addi.d	$s4, $a1, -8
	addi.d	$a1, $zero, -4
	sub.d	$s3, $a1, $a0
	ori	$a3, $zero, 84
	addi.d	$a7, $zero, -1
	ori	$s1, $zero, 76
	ori	$fp, $zero, 1
	ori	$s0, $zero, 1
	move	$t6, $t5
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	st.d	$t8, $sp, 64                    # 8-byte Folded Spill
	b	.LBB9_231
.LBB9_229:                              #   in Loop: Header=BB9_231 Depth=1
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB9_230:                              #   in Loop: Header=BB9_231 Depth=1
	addi.d	$s0, $s0, 2
	addi.d	$fp, $fp, 2
	addi.d	$a3, $a3, 8
	addi.d	$ra, $ra, 8
	addi.d	$s5, $s5, 2
	addi.d	$s6, $s6, 16
	addi.d	$s8, $s8, -2
	addi.d	$s4, $s4, -16
	addi.d	$a7, $a7, -2
	addi.d	$s1, $s1, -8
	addi.d	$s3, $s3, -8
	bgeu	$s0, $t8, .LBB9_199
.LBB9_231:                              # %.lr.ph1268.split
                                        # =>This Inner Loop Header: Depth=1
	add.w	$a0, $t5, $s5
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t1, $a0, .LBB9_237
# %bb.232:                              #   in Loop: Header=BB9_231 Depth=1
	ld.d	$a0, $t4, %pc_lo12(McostState)
	add.d	$a0, $a0, $t0
	ldx.d	$a0, $a0, $s6
	ldx.bu	$a0, $a0, $a6
	bnez	$a0, .LBB9_237
# %bb.233:                              #   in Loop: Header=BB9_231 Depth=1
	st.d	$a7, $sp, 112                   # 8-byte Folded Spill
	move	$a7, $a3
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a2, $a0, $a2
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a0, $a3
	add.w	$a4, $a5, $ra
	slli.d	$a4, $a4, 2
	ldx.w	$a0, $a0, $a4
	add.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	mul.w	$a1, $a1, $a2
	srai.d	$a1, $a1, 16
	add.d	$a0, $a0, $a3
	mul.w	$a0, $a0, $a2
	srai.d	$a0, $a0, 16
	add.d	$s7, $a0, $a1
	addi.w	$s2, $t7, 0
	bge	$s7, $s2, .LBB9_236
# %bb.234:                              #   in Loop: Header=BB9_231 Depth=1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 0
	sub.w	$a3, $t7, $s7
	st.d	$a7, $sp, 128                   # 8-byte Folded Spill
	add.w	$a7, $a5, $a7
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	st.d	$t7, $sp, 272                   # 8-byte Folded Spill
	st.d	$t5, $sp, 288                   # 8-byte Folded Spill
	st.d	$t6, $sp, 184                   # 8-byte Folded Spill
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	jirl	$ra, $t0, 0
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $t4, %pc_lo12(McostState)
	add.d	$a1, $a1, $t0
	ldx.d	$a1, $a1, $s6
	add.w	$a0, $a0, $s7
	ori	$a3, $zero, 1
	stx.b	$a3, $a1, $a6
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	bge	$a0, $s2, .LBB9_237
# %bb.235:                              #   in Loop: Header=BB9_231 Depth=1
	add.d	$t6, $t5, $fp
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	move	$t7, $a0
	b	.LBB9_237
.LBB9_236:                              #   in Loop: Header=BB9_231 Depth=1
	move	$a3, $a7
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB9_237:                              #   in Loop: Header=BB9_231 Depth=1
	add.w	$a0, $t5, $s8
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bltu	$t1, $a0, .LBB9_230
# %bb.238:                              #   in Loop: Header=BB9_231 Depth=1
	ld.d	$a0, $t4, %pc_lo12(McostState)
	add.d	$a0, $a0, $t0
	ldx.d	$a0, $a0, $s4
	ldx.bu	$a0, $a0, $a6
	bnez	$a0, .LBB9_230
# %bb.239:                              #   in Loop: Header=BB9_231 Depth=1
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a2, $a0, $a2
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a0, $a3
	add.w	$a4, $a5, $s3
	slli.d	$a4, $a4, 2
	ldx.w	$a0, $a0, $a4
	add.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	mul.w	$a1, $a1, $a2
	srai.d	$a1, $a1, 16
	add.d	$a0, $a0, $a3
	mul.w	$a0, $a0, $a2
	srai.d	$a0, $a0, 16
	add.d	$s7, $a0, $a1
	addi.w	$s2, $t7, 0
	bge	$s7, $s2, .LBB9_229
# %bb.240:                              #   in Loop: Header=BB9_231 Depth=1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t0, $a0, 0
	sub.w	$a3, $t7, $s7
	st.d	$a7, $sp, 112                   # 8-byte Folded Spill
	add.w	$a7, $a5, $s1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	st.d	$t7, $sp, 272                   # 8-byte Folded Spill
	st.d	$t5, $sp, 288                   # 8-byte Folded Spill
	st.d	$t6, $sp, 184                   # 8-byte Folded Spill
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	jirl	$ra, $t0, 0
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $t4, %pc_lo12(McostState)
	add.d	$a1, $a1, $t0
	ldx.d	$a1, $a1, $s4
	add.w	$a0, $a0, $s7
	ori	$a3, $zero, 1
	stx.b	$a3, $a1, $a6
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	bge	$a0, $s2, .LBB9_230
# %bb.241:                              #   in Loop: Header=BB9_231 Depth=1
	add.d	$t6, $t5, $a7
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	move	$t7, $a0
	b	.LBB9_230
.Lfunc_end9:
	.size	UMHEXBipredIntegerPelBlockMotionSearch, .Lfunc_end9-UMHEXBipredIntegerPelBlockMotionSearch
                                        # -- End function
	.globl	UMHEXSetMotionVectorPredictor   # -- Begin function UMHEXSetMotionVectorPredictor
	.p2align	5
	.type	UMHEXSetMotionVectorPredictor,@function
UMHEXSetMotionVectorPredictor:          # @UMHEXSetMotionVectorPredictor
# %bb.0:
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$t0, %got_pc_hi20(img)
	ld.d	$s2, $t0, %got_pc_lo12(img)
	move	$s3, $a7
	move	$s4, $a6
	move	$s6, $a5
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(bipred_flag)
	ld.w	$a1, $a1, %pc_lo12(bipred_flag)
	slli.w	$s8, $a5, 2
	slli.w	$a2, $a6, 2
	ld.w	$s7, $a0, 12
	sltui	$a0, $a1, 1
	pcalau12i	$a1, %pc_hi20(fastme_l0_cost_bipred)
	addi.d	$a1, $a1, %pc_lo12(fastme_l0_cost_bipred)
	pcalau12i	$a3, %pc_hi20(fastme_l0_cost)
	addi.d	$a3, $a3, %pc_lo12(fastme_l0_cost)
	masknez	$a1, $a1, $a0
	maskeqz	$a3, $a3, $a0
	or	$a1, $a3, $a1
	ld.d	$s5, $a1, 0
	pcalau12i	$a1, %pc_hi20(fastme_l1_cost_bipred)
	addi.d	$a1, $a1, %pc_lo12(fastme_l1_cost_bipred)
	pcalau12i	$a3, %pc_hi20(fastme_l1_cost)
	addi.d	$a3, $a3, %pc_lo12(fastme_l1_cost)
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a1
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(SAD_a)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(SAD_a)
	pcalau12i	$a0, %pc_hi20(SAD_b)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(SAD_b)
	pcalau12i	$a0, %pc_hi20(SAD_c)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(SAD_c)
	pcalau12i	$a0, %pc_hi20(SAD_d)
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(SAD_d)
	addi.d	$fp, $zero, -1
	alsl.w	$s1, $a5, $fp, 2
	addi.d	$a3, $sp, 160
	move	$a0, $s7
	move	$a1, $s1
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	alsl.w	$s0, $s4, $fp, 2
	addi.d	$a3, $sp, 136
	move	$a0, $s7
	move	$a1, $s8
	move	$a2, $s0
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	st.d	$s3, $sp, 72                    # 8-byte Folded Spill
	alsl.w	$s8, $s6, $s3, 2
	addi.d	$a3, $sp, 112
	move	$a0, $s7
	move	$a1, $s8
	move	$a2, $s0
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	addi.d	$a3, $sp, 88
	move	$a0, $s7
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	move	$t5, $s4
	blez	$s4, .LBB10_6
# %bb.1:
	ori	$a0, $zero, 1
	blt	$a0, $s6, .LBB10_4
# %bb.2:
	ori	$a0, $zero, 2
	bne	$t5, $a0, .LBB10_5
# %bb.3:
	ori	$a0, $zero, 16
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB10_6
	b	.LBB10_15
.LBB10_4:
	ori	$a0, $zero, 16
	bne	$s8, $a0, .LBB10_6
	b	.LBB10_15
.LBB10_5:
	ori	$a0, $zero, 8
	beq	$s8, $a0, .LBB10_15
.LBB10_6:
	ld.w	$a0, $sp, 112
	beqz	$a0, .LBB10_15
# %bb.7:
	ld.d	$a2, $s2, 0
	ldptr.w	$a4, $a2, 15268
	ld.d	$t3, $sp, 8                     # 8-byte Folded Reload
	beqz	$a4, .LBB10_16
.LBB10_8:
	ld.w	$a0, $a2, 12
	ldptr.d	$a1, $a2, 14224
	ori	$a3, $zero, 536
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 424
	ld.w	$a3, $sp, 160
	ld.d	$t4, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB10_22
# %bb.9:
	addi.d	$a0, $zero, -1
	beqz	$a3, .LBB10_11
# %bb.10:
	ld.w	$a0, $sp, 180
	ld.w	$a5, $sp, 164
	ori	$a6, $zero, 536
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $t3, $a0
	ld.w	$a7, $sp, 176
	mul.d	$a5, $a5, $a6
	add.d	$a5, $a1, $a5
	ld.w	$a5, $a5, 424
	ldx.b	$a0, $a0, $a7
	sltui	$a5, $a5, 1
	sll.w	$a0, $a0, $a5
.LBB10_11:
	ld.w	$a5, $sp, 136
	addi.d	$a7, $zero, -1
	beqz	$a5, .LBB10_13
# %bb.12:
	ld.w	$a6, $sp, 156
	ld.w	$a7, $sp, 140
	ori	$t0, $zero, 536
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $t3, $a6
	ld.w	$t1, $sp, 152
	mul.d	$a7, $a7, $t0
	add.d	$a7, $a1, $a7
	ld.w	$a7, $a7, 424
	ldx.b	$a6, $a6, $t1
	sltui	$a7, $a7, 1
	sll.w	$a7, $a6, $a7
.LBB10_13:
	ld.w	$a6, $sp, 112
	beqz	$a6, .LBB10_31
# %bb.14:
	ld.w	$t0, $sp, 132
	ld.w	$t1, $sp, 116
	ori	$t2, $zero, 536
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $t3, $t0
	ld.w	$t3, $sp, 128
	mul.d	$t1, $t1, $t2
	add.d	$a1, $a1, $t1
	ld.w	$a1, $a1, 424
	ldx.b	$t0, $t0, $t3
	sltui	$a1, $a1, 1
	sll.w	$fp, $t0, $a1
	b	.LBB10_32
.LBB10_15:                              # %.thread
	ld.d	$a0, $sp, 104
	vld	$vr0, $sp, 88
	st.d	$a0, $sp, 128
	vst	$vr0, $sp, 112
	ld.d	$a2, $s2, 0
	ldptr.w	$a4, $a2, 15268
	ld.d	$t3, $sp, 8                     # 8-byte Folded Reload
	bnez	$a4, .LBB10_8
.LBB10_16:
	ld.w	$a3, $sp, 160
	addi.d	$fp, $zero, -1
	addi.d	$a0, $zero, -1
	ld.d	$t4, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	beqz	$a3, .LBB10_18
# %bb.17:
	ld.w	$a0, $sp, 180
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $t3, $a0
	ld.w	$a1, $sp, 176
	ldx.b	$a0, $a0, $a1
.LBB10_18:
	ld.w	$a5, $sp, 136
	addi.d	$a7, $zero, -1
	beqz	$a5, .LBB10_20
# %bb.19:
	ld.w	$a1, $sp, 156
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $t3, $a1
	ld.w	$a6, $sp, 152
	ldx.b	$a7, $a1, $a6
.LBB10_20:
	ld.w	$a6, $sp, 112
	beqz	$a6, .LBB10_31
# %bb.21:
	ld.w	$a1, $sp, 132
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $t3, $a1
	ld.w	$t0, $sp, 128
	ldx.b	$fp, $a1, $t0
	b	.LBB10_32
.LBB10_22:
	addi.d	$fp, $zero, -1
	addi.d	$a0, $zero, -1
	beqz	$a3, .LBB10_25
# %bb.23:
	ld.w	$a0, $sp, 180
	ld.w	$a5, $sp, 164
	ori	$a6, $zero, 536
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $t3, $a0
	ld.w	$a7, $sp, 176
	mul.d	$a5, $a5, $a6
	add.d	$a5, $a1, $a5
	ld.w	$a5, $a5, 424
	ldx.bu	$a0, $a0, $a7
	ext.w.b	$a0, $a0
	beqz	$a5, .LBB10_25
# %bb.24:
	srai.d	$a0, $a0, 1
.LBB10_25:
	ld.w	$a5, $sp, 136
	addi.d	$a7, $zero, -1
	beqz	$a5, .LBB10_28
# %bb.26:
	ld.w	$a6, $sp, 156
	ld.w	$a7, $sp, 140
	ori	$t0, $zero, 536
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $t3, $a6
	ld.w	$t1, $sp, 152
	mul.d	$a7, $a7, $t0
	add.d	$a7, $a1, $a7
	ld.w	$t0, $a7, 424
	ldx.bu	$a6, $a6, $t1
	ext.w.b	$a7, $a6
	beqz	$t0, .LBB10_28
# %bb.27:
	srai.d	$a7, $a7, 1
.LBB10_28:
	ld.w	$a6, $sp, 112
	beqz	$a6, .LBB10_31
# %bb.29:
	ld.w	$t0, $sp, 132
	ld.w	$t1, $sp, 116
	ori	$t2, $zero, 536
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $t3, $t0
	ld.w	$t3, $sp, 128
	mul.d	$t1, $t1, $t2
	add.d	$a1, $a1, $t1
	ld.w	$a1, $a1, 424
	ldx.bu	$t0, $t0, $t3
	ext.w.b	$fp, $t0
	beqz	$a1, .LBB10_32
# %bb.30:
	srai.d	$fp, $fp, 1
	b	.LBB10_32
.LBB10_31:
	move	$a6, $zero
.LBB10_32:
	addi.w	$a1, $a0, 0
	addi.w	$t1, $fp, 0
	addi.w	$a7, $a7, 0
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	bne	$a1, $t4, .LBB10_35
# %bb.33:
	beq	$a7, $t4, .LBB10_35
# %bb.34:
	ori	$t0, $zero, 1
	bne	$t1, $t4, .LBB10_38
.LBB10_35:
	xor	$a0, $t1, $t4
	sltui	$a0, $a0, 1
	xor	$t0, $a7, $t4
	sltu	$t2, $zero, $t0
	xor	$t0, $a1, $t4
	sltui	$t0, $t0, 1
	or	$t0, $t0, $a0
	or	$t3, $t0, $t2
	ori	$t0, $zero, 2
	masknez	$t0, $t0, $t3
	beq	$a1, $t4, .LBB10_38
# %bb.36:
	beqz	$t3, .LBB10_38
# %bb.37:
	ori	$t0, $zero, 3
	maskeqz	$a0, $t0, $a0
	maskeqz	$t0, $a0, $t2
.LBB10_38:
	ld.d	$t3, $sp, 272
	ori	$a0, $zero, 8
	ld.d	$t2, $sp, 72                    # 8-byte Folded Reload
	bne	$t2, $a0, .LBB10_42
# %bb.39:
	ori	$a0, $zero, 16
	bne	$t3, $a0, .LBB10_42
# %bb.40:
	beqz	$s6, .LBB10_45
# %bb.41:
	xor	$a0, $t1, $t4
	sltui	$a0, $a0, 1
	masknez	$a1, $t0, $a0
	ori	$a7, $zero, 3
	b	.LBB10_47
.LBB10_42:
	ori	$a0, $zero, 16
	ld.d	$t1, $sp, 72                    # 8-byte Folded Reload
	bne	$t1, $a0, .LBB10_48
# %bb.43:
	ori	$a0, $zero, 8
	bne	$t3, $a0, .LBB10_48
# %bb.44:
	beqz	$t5, .LBB10_46
.LBB10_45:
	xor	$a0, $a1, $t4
	sltui	$a0, $a0, 1
	masknez	$a1, $t0, $a0
	ori	$a7, $zero, 1
	b	.LBB10_47
.LBB10_46:
	xor	$a0, $a7, $t4
	sltui	$a0, $a0, 1
	masknez	$a1, $t0, $a0
	ori	$a7, $zero, 2
.LBB10_47:
	maskeqz	$a0, $a7, $a0
	or	$t0, $a0, $a1
.LBB10_48:
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a1, $a0, 0
	ldptr.w	$a7, $a1, 5248
	ori	$a0, $zero, 1
	pcalau12i	$t1, %pc_hi20(UMHEX_blocktype)
	st.d	$t3, $sp, 24                    # 8-byte Folded Spill
	beq	$a7, $a0, .LBB10_50
# %bb.49:
	ldptr.w	$t2, $a1, 2120
	bne	$t2, $a0, .LBB10_58
.LBB10_50:
	beqz	$a3, .LBB10_53
# %bb.51:
	ld.w	$a0, $t1, %pc_lo12(UMHEX_blocktype)
	ld.w	$t3, $sp, 180
	ld.w	$t4, $sp, 176
	ori	$t5, $zero, 1
	slli.d	$t2, $a0, 3
	slli.d	$t3, $t3, 3
	slli.d	$a0, $t4, 2
	bne	$s4, $t5, .LBB10_59
# %bb.52:                               # %.thread230
	ldx.d	$t2, $fp, $t2
	ldx.d	$t3, $t2, $t3
	ldx.w	$t3, $t3, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.w	$t3, $a0, %pc_lo12(SAD_a)
	bnez	$a5, .LBB10_55
	b	.LBB10_60
.LBB10_53:
	move	$t3, $zero
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.w	$t3, $a0, %pc_lo12(SAD_a)
	beqz	$a5, .LBB10_60
.LBB10_54:                              # %.sink.split.sink.split
	addi.d	$a0, $s4, -1
	sltui	$a0, $a0, 1
	ld.w	$t2, $t1, %pc_lo12(UMHEX_blocktype)
	masknez	$t4, $s5, $a0
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $t4
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a0, $t2
.LBB10_55:                              # %.sink.split
	ld.w	$a0, $sp, 156
	slli.d	$a0, $a0, 3
	ld.w	$t4, $sp, 152
	ldx.d	$a0, $t2, $a0
	slli.d	$t2, $t4, 2
	ldx.w	$t2, $a0, $t2
	ld.w	$a0, $sp, 88
	ld.d	$t4, $sp, 40                    # 8-byte Folded Reload
	st.w	$t2, $t4, %pc_lo12(SAD_b)
	beqz	$a0, .LBB10_61
.LBB10_56:
	ld.w	$a0, $t1, %pc_lo12(UMHEX_blocktype)
	ld.w	$t4, $sp, 108
	ld.w	$t6, $sp, 104
	ori	$t7, $zero, 1
	slli.d	$a0, $a0, 3
	slli.d	$t5, $t4, 3
	slli.d	$t4, $t6, 2
	bne	$s4, $t7, .LBB10_62
# %bb.57:                               # %.thread233
	ldx.d	$a0, $fp, $a0
	ldx.d	$t5, $a0, $t5
	ldx.w	$t4, $t5, $t4
	ld.d	$t5, $sp, 0                     # 8-byte Folded Reload
	st.w	$t4, $t5, %pc_lo12(SAD_d)
	bnez	$a6, .LBB10_64
	b	.LBB10_65
.LBB10_58:                              # %._crit_edge
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$t3, $a0, %pc_lo12(SAD_a)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$t2, $a0, %pc_lo12(SAD_b)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$t4, $a0, %pc_lo12(SAD_c)
	b	.LBB10_66
.LBB10_59:
	ldx.d	$t2, $s5, $t2
	ldx.d	$t2, $t2, $t3
	ldx.w	$t3, $t2, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.w	$t3, $a0, %pc_lo12(SAD_a)
	bnez	$a5, .LBB10_54
.LBB10_60:
	move	$t2, $zero
	ld.w	$a0, $sp, 88
	ld.d	$t4, $sp, 40                    # 8-byte Folded Reload
	st.w	$t2, $t4, %pc_lo12(SAD_b)
	bnez	$a0, .LBB10_56
.LBB10_61:
	move	$t4, $zero
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	st.w	$t4, $a0, %pc_lo12(SAD_d)
	bnez	$a6, .LBB10_63
	b	.LBB10_65
.LBB10_62:
	ldx.d	$a0, $s5, $a0
	ldx.d	$a0, $a0, $t5
	ldx.w	$t4, $a0, $t4
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	st.w	$t4, $a0, %pc_lo12(SAD_d)
	beqz	$a6, .LBB10_65
.LBB10_63:                              # %.sink.split262.sink.split
	addi.d	$a0, $s4, -1
	sltui	$a0, $a0, 1
	ld.w	$t4, $t1, %pc_lo12(UMHEX_blocktype)
	masknez	$t5, $s5, $a0
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $t5
	slli.d	$t4, $t4, 3
	ldx.d	$a0, $a0, $t4
.LBB10_64:                              # %.sink.split262
	ld.w	$t4, $sp, 132
	slli.d	$t4, $t4, 3
	ld.w	$t5, $sp, 128
	ldx.d	$a0, $a0, $t4
	slli.d	$t4, $t5, 2
	ldx.w	$t4, $a0, $t4
.LBB10_65:
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.w	$t4, $a0, %pc_lo12(SAD_c)
.LBB10_66:
	ld.w	$a0, $sp, 180
	alsl.d	$s1, $a0, $s3, 3
	ld.w	$s0, $sp, 176
	ld.w	$t5, $sp, 156
	slt	$a0, $t4, $t2
	masknez	$t4, $t4, $a0
	maskeqz	$t6, $t2, $a0
	beqz	$a3, .LBB10_68
# %bb.67:
	ld.d	$a0, $s1, 0
	slli.d	$t2, $s0, 3
	ldx.d	$a0, $a0, $t2
	ld.h	$a0, $a0, 0
	b	.LBB10_69
.LBB10_68:
	move	$a0, $zero
.LBB10_69:
	ld.w	$t2, $sp, 132
	ld.w	$t8, $sp, 152
	or	$t4, $t6, $t4
	alsl.d	$fp, $t5, $s3, 3
	beqz	$a5, .LBB10_71
# %bb.70:
	ld.d	$t5, $fp, 0
	slli.d	$t6, $t8, 3
	ldx.d	$t5, $t5, $t6
	ld.h	$s6, $t5, 0
	b	.LBB10_72
.LBB10_71:
	move	$s6, $zero
.LBB10_72:
	ld.w	$t6, $sp, 128
	add.d	$s2, $a5, $a3
	slt	$t5, $t4, $t3
	alsl.d	$t7, $t2, $s3, 3
	beqz	$a6, .LBB10_74
# %bb.73:
	ld.d	$t2, $t7, 0
	slli.d	$s3, $t6, 3
	ldx.d	$t2, $t2, $s3
	ld.h	$s7, $t2, 0
	b	.LBB10_75
.LBB10_74:
	move	$s7, $zero
.LBB10_75:
	add.w	$t2, $s2, $a6
	masknez	$s8, $t4, $t5
	maskeqz	$t3, $t3, $t5
	slli.d	$t5, $t0, 2
	pcalau12i	$t0, %pc_hi20(.LJTI10_0)
	addi.d	$t0, $t0, %pc_lo12(.LJTI10_0)
	ldx.w	$t4, $t0, $t5
	ld.w	$t1, $t1, %pc_lo12(UMHEX_blocktype)
	pcalau12i	$s2, %pc_hi20(Threshold_DSR_MB)
	addi.d	$ra, $s2, %pc_lo12(Threshold_DSR_MB)
	add.d	$t0, $t0, $t4
	or	$t4, $a5, $a6
	move	$s5, $a0
	jr	$t0
.LBB10_76:
	move	$s5, $a0
	beqz	$t4, .LBB10_80
# %bb.77:
	slt	$t0, $s6, $s7
	masknez	$s2, $s7, $t0
	maskeqz	$t0, $s6, $t0
	or	$t0, $t0, $s2
	slt	$s2, $a0, $t0
	masknez	$t0, $t0, $s2
	maskeqz	$s2, $a0, $s2
	or	$t0, $s2, $t0
	slt	$s2, $s7, $s6
	masknez	$s3, $s7, $s2
	maskeqz	$s2, $s6, $s2
	or	$s2, $s2, $s3
	slt	$s3, $s2, $a0
	masknez	$s2, $s2, $s3
	maskeqz	$s3, $a0, $s3
	or	$s2, $s3, $s2
	add.d	$s3, $s6, $s7
	add.d	$s3, $s3, $a0
	add.d	$t0, $s2, $t0
	sub.d	$s5, $s3, $t0
	b	.LBB10_80
.LBB10_78:
	move	$s5, $s6
	b	.LBB10_80
.LBB10_79:
	move	$s5, $s7
.LBB10_80:
	ld.w	$s4, $sp, 164
	ld.w	$s3, $sp, 140
	ld.w	$s2, $sp, 116
	or	$t0, $t3, $s8
	alsl.d	$t1, $t1, $ra, 2
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	st.h	$s5, $s8, 0
	beqz	$a7, .LBB10_83
# %bb.81:
	ori	$t3, $zero, 1
	blt	$t3, $t2, .LBB10_90
# %bb.82:
	ld.w	$t3, $a1, 28
	bnez	$a4, .LBB10_84
	b	.LBB10_101
.LBB10_83:
                                        # implicit-def: $r15
	beqz	$a4, .LBB10_101
.LBB10_84:
	ld.w	$a0, $a2, 12
	ldptr.d	$a4, $a2, 14224
	ori	$a2, $zero, 536
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a4, $a0
	ld.w	$a0, $a0, 424
	beqz	$a0, .LBB10_93
# %bb.85:
	beqz	$a3, .LBB10_96
# %bb.86:
	ld.d	$a0, $s1, 0
	ori	$a2, $zero, 536
	slli.d	$a3, $s0, 3
	ldx.d	$a0, $a0, $a3
	mul.d	$a2, $s4, $a2
	add.d	$a2, $a4, $a2
	ld.w	$a2, $a2, 424
	ld.hu	$a0, $a0, 2
	beqz	$a2, .LBB10_107
# %bb.87:
	ext.w.h	$a2, $a0
	beqz	$a5, .LBB10_97
.LBB10_88:
	ld.d	$a0, $fp, 0
	ori	$a3, $zero, 536
	slli.d	$a5, $t8, 3
	ldx.d	$a0, $a0, $a5
	mul.d	$a3, $s3, $a3
	add.d	$a3, $a4, $a3
	ld.w	$a3, $a3, 424
	ld.hu	$a0, $a0, 2
	beqz	$a3, .LBB10_108
# %bb.89:
	ext.w.h	$a3, $a0
	ld.d	$t8, $sp, 80                    # 8-byte Folded Reload
	bnez	$a6, .LBB10_109
	b	.LBB10_115
.LBB10_90:
	srai.d	$t3, $a0, 31
	xor	$a0, $a0, $t3
	sub.w	$a0, $a0, $t3
	srai.d	$t3, $s6, 31
	xor	$s5, $s6, $t3
	sub.w	$t3, $s5, $t3
	srai.d	$s5, $s7, 31
	xor	$s6, $s7, $s5
	sub.w	$s5, $s6, $s5
	sltu	$s6, $s5, $t3
	masknez	$s7, $s5, $s6
	maskeqz	$s6, $t3, $s6
	or	$s6, $s6, $s7
	sltu	$s7, $s6, $a0
	masknez	$s6, $s6, $s7
	maskeqz	$s7, $a0, $s7
	add.d	$t3, $t3, $s5
	add.w	$a0, $t3, $a0
	or	$s5, $s7, $s6
	beqz	$a0, .LBB10_98
# %bb.91:
	ld.w	$t3, $a1, 28
	ori	$s6, $zero, 4
	bltu	$a0, $s6, .LBB10_99
# %bb.92:
	addi.w	$a0, $t3, 2
	srai.d	$a0, $a0, 2
	b	.LBB10_100
.LBB10_93:
	beqz	$a3, .LBB10_112
# %bb.94:
	ld.d	$a0, $s1, 0
	ori	$a2, $zero, 536
	slli.d	$a3, $s0, 3
	ldx.d	$a0, $a0, $a3
	mul.d	$a2, $s4, $a2
	add.d	$a2, $a4, $a2
	ld.w	$a2, $a2, 424
	ld.h	$a0, $a0, 2
	sltu	$a2, $zero, $a2
	sll.w	$a2, $a0, $a2
	beqz	$a5, .LBB10_113
.LBB10_95:
	ld.d	$a0, $fp, 0
	ori	$a3, $zero, 536
	slli.d	$a5, $t8, 3
	ldx.d	$a0, $a0, $a5
	mul.d	$a3, $s3, $a3
	add.d	$a3, $a4, $a3
	ld.w	$a3, $a3, 424
	ld.h	$a0, $a0, 2
	sltu	$a3, $zero, $a3
	sll.w	$a3, $a0, $a3
	ld.d	$t8, $sp, 80                    # 8-byte Folded Reload
	bnez	$a6, .LBB10_114
	b	.LBB10_115
.LBB10_96:
	move	$a2, $zero
	bnez	$a5, .LBB10_88
.LBB10_97:
	move	$a3, $zero
	ld.d	$t8, $sp, 80                    # 8-byte Folded Reload
	bnez	$a6, .LBB10_109
	b	.LBB10_115
.LBB10_98:
	ld.w	$t3, $a1, 28
	addi.w	$a0, $t3, 4
	srai.d	$a0, $a0, 3
	b	.LBB10_100
.LBB10_99:
	alsl.d	$a0, $t3, $t3, 1
	addi.w	$a0, $a0, 8
	srai.d	$a0, $a0, 4
.LBB10_100:
	slli.w	$s5, $s5, 1
	slt	$s6, $s5, $a0
	masknez	$s5, $s5, $s6
	maskeqz	$a0, $a0, $s6
	or	$a0, $a0, $s5
	slt	$s5, $t3, $a0
	ld.w	$s6, $t1, 0
	masknez	$a0, $a0, $s5
	maskeqz	$s5, $t3, $s5
	or	$a0, $s5, $a0
	slt	$s5, $s6, $t0
	masknez	$a0, $a0, $s5
	maskeqz	$t3, $t3, $s5
	or	$t3, $t3, $a0
	bnez	$a4, .LBB10_84
.LBB10_101:
	beqz	$a3, .LBB10_104
# %bb.102:
	ld.d	$a0, $s1, 0
	slli.d	$a2, $s0, 3
	ldx.d	$a0, $a0, $a2
	ld.h	$a2, $a0, 2
	beqz	$a5, .LBB10_105
.LBB10_103:
	ld.d	$a0, $fp, 0
	slli.d	$a3, $t8, 3
	ldx.d	$a0, $a0, $a3
	ld.h	$a3, $a0, 2
	ld.d	$t8, $sp, 80                    # 8-byte Folded Reload
	bnez	$a6, .LBB10_106
	b	.LBB10_115
.LBB10_104:
	move	$a2, $zero
	bnez	$a5, .LBB10_103
.LBB10_105:
	move	$a3, $zero
	ld.d	$t8, $sp, 80                    # 8-byte Folded Reload
	beqz	$a6, .LBB10_115
.LBB10_106:
	ld.d	$a0, $t7, 0
	slli.d	$a4, $t6, 3
	ldx.d	$a0, $a0, $a4
	ld.h	$a4, $a0, 2
	b	.LBB10_116
.LBB10_107:
	srli.d	$a2, $a0, 15
	add.d	$a0, $a0, $a2
	ext.w.h	$a0, $a0
	srai.d	$a2, $a0, 1
	bnez	$a5, .LBB10_88
	b	.LBB10_97
.LBB10_108:
	srli.d	$a3, $a0, 15
	add.d	$a0, $a0, $a3
	ext.w.h	$a0, $a0
	srai.d	$a3, $a0, 1
	ld.d	$t8, $sp, 80                    # 8-byte Folded Reload
	beqz	$a6, .LBB10_115
.LBB10_109:
	ld.d	$a0, $t7, 0
	ori	$a5, $zero, 536
	slli.d	$a6, $t6, 3
	ldx.d	$a0, $a0, $a6
	mul.d	$a5, $s2, $a5
	add.d	$a4, $a4, $a5
	ld.w	$a4, $a4, 424
	ld.hu	$a0, $a0, 2
	beqz	$a4, .LBB10_111
# %bb.110:
	pcalau12i	$a4, %pc_hi20(.LJTI10_1)
	addi.d	$a4, $a4, %pc_lo12(.LJTI10_1)
	ldx.w	$a5, $a4, $t5
	add.d	$a6, $a4, $a5
	ext.w.h	$a4, $a0
	move	$a5, $a2
	jr	$a6
.LBB10_111:
	pcalau12i	$a4, %pc_hi20(.LJTI10_1)
	addi.d	$a4, $a4, %pc_lo12(.LJTI10_1)
	ldx.w	$a5, $a4, $t5
	srli.d	$a6, $a0, 15
	add.d	$a0, $a0, $a6
	ext.w.h	$a0, $a0
	add.d	$a6, $a4, $a5
	srai.d	$a4, $a0, 1
	move	$a5, $a2
	jr	$a6
.LBB10_112:
	move	$a2, $zero
	bnez	$a5, .LBB10_95
.LBB10_113:
	move	$a3, $zero
	ld.d	$t8, $sp, 80                    # 8-byte Folded Reload
	beqz	$a6, .LBB10_115
.LBB10_114:
	ori	$a0, $zero, 536
	mul.d	$a0, $s2, $a0
	ld.d	$a5, $t7, 0
	add.d	$a0, $a4, $a0
	ld.w	$a0, $a0, 424
	slli.d	$a4, $t6, 3
	ldx.d	$a4, $a5, $a4
	pcalau12i	$a5, %pc_hi20(.LJTI10_1)
	addi.d	$a5, $a5, %pc_lo12(.LJTI10_1)
	ldx.w	$a6, $a5, $t5
	ld.h	$a4, $a4, 2
	sltu	$a0, $zero, $a0
	add.d	$a6, $a5, $a6
	sll.w	$a4, $a4, $a0
	move	$a5, $a2
	jr	$a6
.LBB10_115:
	move	$a4, $zero
.LBB10_116:
	pcalau12i	$a0, %pc_hi20(.LJTI10_1)
	addi.d	$a0, $a0, %pc_lo12(.LJTI10_1)
	ldx.w	$a5, $a0, $t5
	add.d	$a0, $a0, $a5
	move	$a5, $a2
	jr	$a0
.LBB10_117:
	beqz	$t4, .LBB10_137
# %bb.118:
	addi.w	$a0, $a4, 0
	addi.w	$a5, $a3, 0
	slt	$a6, $a5, $a0
	masknez	$t4, $a0, $a6
	maskeqz	$a6, $a5, $a6
	or	$a6, $a6, $t4
	addi.w	$t4, $a2, 0
	slt	$t5, $t4, $a6
	masknez	$a6, $a6, $t5
	maskeqz	$t5, $t4, $t5
	or	$a6, $t5, $a6
	slt	$t5, $a0, $a5
	masknez	$a0, $a0, $t5
	maskeqz	$a5, $a5, $t5
	or	$a0, $a5, $a0
	slt	$a5, $a0, $t4
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $t4, $a5
	or	$a0, $a5, $a0
	add.d	$a5, $a3, $a4
	add.d	$a5, $a5, $a2
	add.d	$a0, $a0, $a6
	sub.d	$a5, $a5, $a0
	st.h	$a5, $s8, 2
	bnez	$a7, .LBB10_122
	b	.LBB10_136
.LBB10_119:
	move	$a5, $a3
	st.h	$a5, $s8, 2
	bnez	$a7, .LBB10_122
	b	.LBB10_136
.LBB10_120:
	move	$a5, $a4
.LBB10_121:
	st.h	$a5, $s8, 2
	beqz	$a7, .LBB10_136
.LBB10_122:
	ori	$a0, $zero, 2
	bge	$t2, $a0, .LBB10_124
# %bb.123:
	ld.w	$a0, $a1, 28
	b	.LBB10_130
.LBB10_124:
	addi.w	$a0, $a2, 0
	srai.d	$a0, $a0, 31
	xor	$a2, $a2, $a0
	sub.w	$a0, $a2, $a0
	addi.w	$a2, $a3, 0
	srai.d	$a2, $a2, 31
	xor	$a3, $a3, $a2
	sub.w	$a2, $a3, $a2
	addi.w	$a3, $a4, 0
	srai.d	$a3, $a3, 31
	xor	$a4, $a4, $a3
	sub.w	$a3, $a4, $a3
	sltu	$a4, $a3, $a2
	masknez	$a5, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a4, $a4, $a5
	sltu	$a5, $a4, $a0
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a0, $a5
	add.d	$a2, $a2, $a3
	add.w	$a0, $a2, $a0
	or	$a3, $a5, $a4
	beqz	$a0, .LBB10_127
# %bb.125:
	ld.w	$a2, $a1, 28
	ori	$a4, $zero, 3
	bgeu	$a4, $a0, .LBB10_128
# %bb.126:
	addi.w	$a0, $a2, 2
	srai.d	$a0, $a0, 2
	b	.LBB10_129
.LBB10_127:
	ld.w	$a2, $a1, 28
	addi.w	$a0, $a2, 4
	srai.d	$a0, $a0, 3
	b	.LBB10_129
.LBB10_128:
	alsl.d	$a0, $a2, $a2, 1
	addi.w	$a0, $a0, 8
	srai.d	$a0, $a0, 4
.LBB10_129:
	slli.w	$a3, $a3, 1
	slt	$a4, $a3, $a0
	masknez	$a3, $a3, $a4
	maskeqz	$a0, $a0, $a4
	or	$a0, $a0, $a3
	slt	$a3, $a2, $a0
	ld.w	$a4, $t1, 0
	masknez	$a0, $a0, $a3
	maskeqz	$a3, $a2, $a3
	or	$a0, $a3, $a0
	slt	$a3, $a4, $t0
	masknez	$a0, $a0, $a3
	maskeqz	$a2, $a2, $a3
	or	$a0, $a2, $a0
.LBB10_130:
	ld.d	$a2, $sp, 280
	addi.w	$a3, $t3, 0
	addi.w	$a0, $a0, 0
	slt	$a4, $a0, $a3
	masknez	$a5, $a0, $a4
	maskeqz	$a3, $a3, $a4
	ldptr.w	$a0, $a1, 4140
	or	$a3, $a3, $a5
	pcalau12i	$a4, %pc_hi20(dsr_new_search_range)
	ori	$a5, $zero, 2
	st.w	$a3, $a4, %pc_lo12(dsr_new_search_range)
	beq	$a0, $a5, .LBB10_135
# %bb.131:
	ori	$a4, $zero, 1
	bne	$a0, $a4, .LBB10_133
# %bb.132:
	slti	$a0, $t8, 1
	masknez	$a1, $a4, $a0
	maskeqz	$a0, $t8, $a0
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 1
	b	.LBB10_134
.LBB10_133:
	slti	$a0, $t8, 1
	masknez	$a4, $a4, $a0
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	slli.d	$a5, $a5, 2
	bstrins.d	$a5, $zero, 3, 0
	add.d	$a1, $a5, $a1
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	bstrins.d	$a5, $zero, 1, 0
	add.d	$a1, $a1, $a5
	ld.w	$a1, $a1, 180
	maskeqz	$a0, $t8, $a0
	or	$a0, $a0, $a4
	addi.d	$a0, $a0, 1
	slti	$a4, $a1, 2
	maskeqz	$a1, $a1, $a4
	ori	$a5, $zero, 2
	masknez	$a4, $a5, $a4
	or	$a1, $a1, $a4
	mul.w	$a0, $a1, $a0
.LBB10_134:                             # %.sink.split270.sink.split
	div.w	$a3, $a3, $a0
.LBB10_135:                             # %.sink.split270
	st.w	$a3, $a2, 0
.LBB10_136:
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.LBB10_137:
	move	$a5, $a2
	st.h	$a5, $s8, 2
	bnez	$a7, .LBB10_122
	b	.LBB10_136
.Lfunc_end10:
	.size	UMHEXSetMotionVectorPredictor, .Lfunc_end10-UMHEXSetMotionVectorPredictor
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI10_0:
	.word	.LBB10_76-.LJTI10_0
	.word	.LBB10_80-.LJTI10_0
	.word	.LBB10_78-.LJTI10_0
	.word	.LBB10_79-.LJTI10_0
.LJTI10_1:
	.word	.LBB10_117-.LJTI10_1
	.word	.LBB10_121-.LJTI10_1
	.word	.LBB10_119-.LJTI10_1
	.word	.LBB10_120-.LJTI10_1
                                        # -- End function
	.type	AlphaFourth_1,@object           # @AlphaFourth_1
	.comm	AlphaFourth_1,32,4
	.type	AlphaFourth_2,@object           # @AlphaFourth_2
	.comm	AlphaFourth_2,32,4
	.type	quant_coef,@object              # @quant_coef
	.p2align	2, 0x0
quant_coef:
	.word	13107                           # 0x3333
	.word	8066                            # 0x1f82
	.word	13107                           # 0x3333
	.word	8066                            # 0x1f82
	.word	8066                            # 0x1f82
	.word	5243                            # 0x147b
	.word	8066                            # 0x1f82
	.word	5243                            # 0x147b
	.word	13107                           # 0x3333
	.word	8066                            # 0x1f82
	.word	13107                           # 0x3333
	.word	8066                            # 0x1f82
	.word	8066                            # 0x1f82
	.word	5243                            # 0x147b
	.word	8066                            # 0x1f82
	.word	5243                            # 0x147b
	.word	11916                           # 0x2e8c
	.word	7490                            # 0x1d42
	.word	11916                           # 0x2e8c
	.word	7490                            # 0x1d42
	.word	7490                            # 0x1d42
	.word	4660                            # 0x1234
	.word	7490                            # 0x1d42
	.word	4660                            # 0x1234
	.word	11916                           # 0x2e8c
	.word	7490                            # 0x1d42
	.word	11916                           # 0x2e8c
	.word	7490                            # 0x1d42
	.word	7490                            # 0x1d42
	.word	4660                            # 0x1234
	.word	7490                            # 0x1d42
	.word	4660                            # 0x1234
	.word	10082                           # 0x2762
	.word	6554                            # 0x199a
	.word	10082                           # 0x2762
	.word	6554                            # 0x199a
	.word	6554                            # 0x199a
	.word	4194                            # 0x1062
	.word	6554                            # 0x199a
	.word	4194                            # 0x1062
	.word	10082                           # 0x2762
	.word	6554                            # 0x199a
	.word	10082                           # 0x2762
	.word	6554                            # 0x199a
	.word	6554                            # 0x199a
	.word	4194                            # 0x1062
	.word	6554                            # 0x199a
	.word	4194                            # 0x1062
	.word	9362                            # 0x2492
	.word	5825                            # 0x16c1
	.word	9362                            # 0x2492
	.word	5825                            # 0x16c1
	.word	5825                            # 0x16c1
	.word	3647                            # 0xe3f
	.word	5825                            # 0x16c1
	.word	3647                            # 0xe3f
	.word	9362                            # 0x2492
	.word	5825                            # 0x16c1
	.word	9362                            # 0x2492
	.word	5825                            # 0x16c1
	.word	5825                            # 0x16c1
	.word	3647                            # 0xe3f
	.word	5825                            # 0x16c1
	.word	3647                            # 0xe3f
	.word	8192                            # 0x2000
	.word	5243                            # 0x147b
	.word	8192                            # 0x2000
	.word	5243                            # 0x147b
	.word	5243                            # 0x147b
	.word	3355                            # 0xd1b
	.word	5243                            # 0x147b
	.word	3355                            # 0xd1b
	.word	8192                            # 0x2000
	.word	5243                            # 0x147b
	.word	8192                            # 0x2000
	.word	5243                            # 0x147b
	.word	5243                            # 0x147b
	.word	3355                            # 0xd1b
	.word	5243                            # 0x147b
	.word	3355                            # 0xd1b
	.word	7282                            # 0x1c72
	.word	4559                            # 0x11cf
	.word	7282                            # 0x1c72
	.word	4559                            # 0x11cf
	.word	4559                            # 0x11cf
	.word	2893                            # 0xb4d
	.word	4559                            # 0x11cf
	.word	2893                            # 0xb4d
	.word	7282                            # 0x1c72
	.word	4559                            # 0x11cf
	.word	7282                            # 0x1c72
	.word	4559                            # 0x11cf
	.word	4559                            # 0x11cf
	.word	2893                            # 0xb4d
	.word	4559                            # 0x11cf
	.word	2893                            # 0xb4d
	.size	quant_coef, 384

	.type	Bsize,@object                   # @Bsize
	.comm	Bsize,32,4
	.type	Median_Pred_Thd_MB,@object      # @Median_Pred_Thd_MB
	.local	Median_Pred_Thd_MB
	.comm	Median_Pred_Thd_MB,32,4
	.type	Big_Hexagon_Thd_MB,@object      # @Big_Hexagon_Thd_MB
	.local	Big_Hexagon_Thd_MB
	.comm	Big_Hexagon_Thd_MB,32,4
	.type	Multi_Ref_Thd_MB,@object        # @Multi_Ref_Thd_MB
	.local	Multi_Ref_Thd_MB
	.comm	Multi_Ref_Thd_MB,32,4
	.type	Threshold_DSR_MB,@object        # @Threshold_DSR_MB
	.comm	Threshold_DSR_MB,32,4
	.type	flag_intra,@object              # @flag_intra
	.comm	flag_intra,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"UMHEX_get_mem: flag_intra"
	.size	.L.str, 26

	.type	McostState,@object              # @McostState
	.comm	McostState,8,8
	.type	fastme_ref_cost,@object         # @fastme_ref_cost
	.comm	fastme_ref_cost,8,8
	.type	fastme_l0_cost,@object          # @fastme_l0_cost
	.comm	fastme_l0_cost,8,8
	.type	fastme_l1_cost,@object          # @fastme_l1_cost
	.comm	fastme_l1_cost,8,8
	.type	SearchState,@object             # @SearchState
	.comm	SearchState,8,8
	.type	fastme_best_cost,@object        # @fastme_best_cost
	.comm	fastme_best_cost,8,8
	.type	fastme_l0_cost_bipred,@object   # @fastme_l0_cost_bipred
	.comm	fastme_l0_cost_bipred,8,8
	.type	fastme_l1_cost_bipred,@object   # @fastme_l1_cost_bipred
	.comm	fastme_l1_cost_bipred,8,8
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	dist_method,@object             # @dist_method
	.local	dist_method
	.comm	dist_method,4,4
	.type	ref_pic_ptr,@object             # @ref_pic_ptr
	.local	ref_pic_ptr
	.comm	ref_pic_ptr,8,8
	.type	width_pad,@object               # @width_pad
	.comm	width_pad,4,4
	.type	height_pad,@object              # @height_pad
	.comm	height_pad,4,4
	.type	wp_weight,@object               # @wp_weight
	.comm	wp_weight,8,8
	.type	wp_offset,@object               # @wp_offset
	.comm	wp_offset,8,8
	.type	width_pad_cr,@object            # @width_pad_cr
	.comm	width_pad_cr,4,4
	.type	height_pad_cr,@object           # @height_pad_cr
	.comm	height_pad_cr,4,4
	.type	pred_SAD,@object                # @pred_SAD
	.comm	pred_SAD,4,4
	.type	pred_MV_uplayer,@object         # @pred_MV_uplayer
	.comm	pred_MV_uplayer,8,4
	.type	pred_MV_ref_flag,@object        # @pred_MV_ref_flag
	.local	pred_MV_ref_flag
	.comm	pred_MV_ref_flag,1,4
	.type	pred_MV_ref,@object             # @pred_MV_ref
	.comm	pred_MV_ref,8,4
	.type	Big_Hexagon_x,@object           # @Big_Hexagon_x
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
Big_Hexagon_x:
	.word	0                               # 0x0
	.word	4294967294                      # 0xfffffffe
	.word	4294967292                      # 0xfffffffc
	.word	4294967292                      # 0xfffffffc
	.word	4294967292                      # 0xfffffffc
	.word	4294967292                      # 0xfffffffc
	.word	4294967292                      # 0xfffffffc
	.word	4294967294                      # 0xfffffffe
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	2                               # 0x2
	.size	Big_Hexagon_x, 64

	.type	Big_Hexagon_y,@object           # @Big_Hexagon_y
	.p2align	3, 0x0
Big_Hexagon_y:
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967294                      # 0xfffffffe
	.word	4294967293                      # 0xfffffffd
	.word	4294967292                      # 0xfffffffc
	.word	4294967293                      # 0xfffffffd
	.word	4294967294                      # 0xfffffffe
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.size	Big_Hexagon_y, 64

	.type	Hexagon_x,@object               # @Hexagon_x
	.p2align	2, 0x0
Hexagon_x:
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	4294967294                      # 0xfffffffe
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.size	Hexagon_x, 24

	.type	Hexagon_y,@object               # @Hexagon_y
	.p2align	2, 0x0
Hexagon_y:
	.word	0                               # 0x0
	.word	4294967294                      # 0xfffffffe
	.word	4294967294                      # 0xfffffffe
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	2                               # 0x2
	.size	Hexagon_y, 24

	.type	start_me_refinement_hp,@object  # @start_me_refinement_hp
	.comm	start_me_refinement_hp,4,4
	.type	flag_intra_SAD,@object          # @flag_intra_SAD
	.comm	flag_intra_SAD,4,4
	.type	.L__const.UMHEX_setup.indication_blocktype,@object # @__const.UMHEX_setup.indication_blocktype
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	2, 0x0
.L__const.UMHEX_setup.indication_blocktype:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	5                               # 0x5
	.size	.L__const.UMHEX_setup.indication_blocktype, 32

	.type	frame_ctr,@object               # @frame_ctr
	.comm	frame_ctr,20,4
	.type	wbp_weight,@object              # @wbp_weight
	.comm	wbp_weight,8,8
	.type	luma_log_weight_denom,@object   # @luma_log_weight_denom
	.comm	luma_log_weight_denom,4,4
	.type	chroma_log_weight_denom,@object # @chroma_log_weight_denom
	.comm	chroma_log_weight_denom,4,4
	.type	SAD_a,@object                   # @SAD_a
	.comm	SAD_a,4,4
	.type	SAD_b,@object                   # @SAD_b
	.comm	SAD_b,4,4
	.type	SAD_c,@object                   # @SAD_c
	.comm	SAD_c,4,4
	.type	bipred_flag,@object             # @bipred_flag
	.comm	bipred_flag,4,4
	.type	SAD_d,@object                   # @SAD_d
	.comm	SAD_d,4,4
	.type	UMHEX_blocktype,@object         # @UMHEX_blocktype
	.comm	UMHEX_blocktype,4,4
	.type	dsr_new_search_range,@object    # @dsr_new_search_range
	.comm	dsr_new_search_range,4,4
	.type	color_formats,@object           # @color_formats
	.comm	color_formats,4,4
	.type	top_pic,@object                 # @top_pic
	.comm	top_pic,8,8
	.type	bottom_pic,@object              # @bottom_pic
	.comm	bottom_pic,8,8
	.type	frame_pic,@object               # @frame_pic
	.comm	frame_pic,8,8
	.type	frame_pic_1,@object             # @frame_pic_1
	.comm	frame_pic_1,8,8
	.type	frame_pic_2,@object             # @frame_pic_2
	.comm	frame_pic_2,8,8
	.type	frame_pic_3,@object             # @frame_pic_3
	.comm	frame_pic_3,8,8
	.type	frame_pic_si,@object            # @frame_pic_si
	.comm	frame_pic_si,8,8
	.type	Bit_Buffer,@object              # @Bit_Buffer
	.comm	Bit_Buffer,8,8
	.type	imgY_org,@object                # @imgY_org
	.comm	imgY_org,8,8
	.type	imgUV_org,@object               # @imgUV_org
	.comm	imgUV_org,8,8
	.type	imgY_sub_tmp,@object            # @imgY_sub_tmp
	.comm	imgY_sub_tmp,8,8
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	log2_max_frame_num_minus4,@object # @log2_max_frame_num_minus4
	.comm	log2_max_frame_num_minus4,4,4
	.type	log2_max_pic_order_cnt_lsb_minus4,@object # @log2_max_pic_order_cnt_lsb_minus4
	.comm	log2_max_pic_order_cnt_lsb_minus4,4,4
	.type	me_tot_time,@object             # @me_tot_time
	.comm	me_tot_time,8,8
	.type	me_time,@object                 # @me_time
	.comm	me_time,8,8
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	mb_adaptive,@object             # @mb_adaptive
	.comm	mb_adaptive,4,4
	.type	MBPairIsField,@object           # @MBPairIsField
	.comm	MBPairIsField,4,4
	.type	wp_luma_round,@object           # @wp_luma_round
	.comm	wp_luma_round,4,4
	.type	wp_chroma_round,@object         # @wp_chroma_round
	.comm	wp_chroma_round,4,4
	.type	imgY_org_top,@object            # @imgY_org_top
	.comm	imgY_org_top,8,8
	.type	imgY_org_bot,@object            # @imgY_org_bot
	.comm	imgY_org_bot,8,8
	.type	imgUV_org_top,@object           # @imgUV_org_top
	.comm	imgUV_org_top,8,8
	.type	imgUV_org_bot,@object           # @imgUV_org_bot
	.comm	imgUV_org_bot,8,8
	.type	imgY_org_frm,@object            # @imgY_org_frm
	.comm	imgY_org_frm,8,8
	.type	imgUV_org_frm,@object           # @imgUV_org_frm
	.comm	imgUV_org_frm,8,8
	.type	imgY_com,@object                # @imgY_com
	.comm	imgY_com,8,8
	.type	imgUV_com,@object               # @imgUV_com
	.comm	imgUV_com,8,8
	.type	direct_ref_idx,@object          # @direct_ref_idx
	.comm	direct_ref_idx,8,8
	.type	direct_pdir,@object             # @direct_pdir
	.comm	direct_pdir,8,8
	.type	pixel_map,@object               # @pixel_map
	.comm	pixel_map,8,8
	.type	refresh_map,@object             # @refresh_map
	.comm	refresh_map,8,8
	.type	intras,@object                  # @intras
	.comm	intras,4,4
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	nextP_tr_fld,@object            # @nextP_tr_fld
	.comm	nextP_tr_fld,4,4
	.type	nextP_tr_frm,@object            # @nextP_tr_frm
	.comm	nextP_tr_frm,4,4
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	b8_ipredmode8x8,@object         # @b8_ipredmode8x8
	.comm	b8_ipredmode8x8,16,1
	.type	b8_intra_pred_modes8x8,@object  # @b8_intra_pred_modes8x8
	.comm	b8_intra_pred_modes8x8,16,1
	.type	gop_structure,@object           # @gop_structure
	.comm	gop_structure,8,8
	.type	rdopt,@object                   # @rdopt
	.comm	rdopt,8,8
	.type	rddata_top_frame_mb,@object     # @rddata_top_frame_mb
	.comm	rddata_top_frame_mb,1752,8
	.type	rddata_bot_frame_mb,@object     # @rddata_bot_frame_mb
	.comm	rddata_bot_frame_mb,1752,8
	.type	rddata_top_field_mb,@object     # @rddata_top_field_mb
	.comm	rddata_top_field_mb,1752,8
	.type	rddata_bot_field_mb,@object     # @rddata_bot_field_mb
	.comm	rddata_bot_field_mb,1752,8
	.type	p_stat,@object                  # @p_stat
	.comm	p_stat,8,8
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	p_trace,@object                 # @p_trace
	.comm	p_trace,8,8
	.type	p_in,@object                    # @p_in
	.comm	p_in,4,4
	.type	p_dec,@object                   # @p_dec
	.comm	p_dec,4,4
	.type	mb16x16_cost_frame,@object      # @mb16x16_cost_frame
	.comm	mb16x16_cost_frame,8,8
	.type	Bytes_After_Header,@object      # @Bytes_After_Header
	.comm	Bytes_After_Header,4,4
	.type	encode_one_macroblock,@object   # @encode_one_macroblock
	.comm	encode_one_macroblock,8,8
	.type	lrec,@object                    # @lrec
	.comm	lrec,8,8
	.type	lrec_uv,@object                 # @lrec_uv
	.comm	lrec_uv,8,8
	.type	si_frame_indicator,@object      # @si_frame_indicator
	.comm	si_frame_indicator,4,4
	.type	sp2_frame_indicator,@object     # @sp2_frame_indicator
	.comm	sp2_frame_indicator,4,4
	.type	number_sp2_frames,@object       # @number_sp2_frames
	.comm	number_sp2_frames,4,4
	.type	giRDOpt_B8OnlyFlag,@object      # @giRDOpt_B8OnlyFlag
	.comm	giRDOpt_B8OnlyFlag,4,4
	.type	imgY_tmp,@object                # @imgY_tmp
	.comm	imgY_tmp,8,8
	.type	imgUV_tmp,@object               # @imgUV_tmp
	.comm	imgUV_tmp,16,8
	.type	frameNuminGOP,@object           # @frameNuminGOP
	.comm	frameNuminGOP,4,4
	.type	redundant_coding,@object        # @redundant_coding
	.comm	redundant_coding,4,4
	.type	key_frame,@object               # @key_frame
	.comm	key_frame,4,4
	.type	redundant_ref_idx,@object       # @redundant_ref_idx
	.comm	redundant_ref_idx,4,4
	.type	img_pad_size_uv_x,@object       # @img_pad_size_uv_x
	.comm	img_pad_size_uv_x,4,4
	.type	img_pad_size_uv_y,@object       # @img_pad_size_uv_y
	.comm	img_pad_size_uv_y,4,4
	.type	chroma_mask_mv_y,@object        # @chroma_mask_mv_y
	.comm	chroma_mask_mv_y,1,1
	.type	chroma_mask_mv_x,@object        # @chroma_mask_mv_x
	.comm	chroma_mask_mv_x,1,1
	.type	chroma_shift_y,@object          # @chroma_shift_y
	.comm	chroma_shift_y,4,4
	.type	chroma_shift_x,@object          # @chroma_shift_x
	.comm	chroma_shift_x,4,4
	.type	shift_cr_x,@object              # @shift_cr_x
	.comm	shift_cr_x,4,4
	.type	shift_cr_y,@object              # @shift_cr_y
	.comm	shift_cr_y,4,4
	.type	img_padded_size_x,@object       # @img_padded_size_x
	.comm	img_padded_size_x,4,4
	.type	img_cr_padded_size_x,@object    # @img_cr_padded_size_x
	.comm	img_cr_padded_size_x,4,4
	.type	start_me_refinement_qp,@object  # @start_me_refinement_qp
	.comm	start_me_refinement_qp,4,4
	.type	predict_point,@object           # @predict_point
	.comm	predict_point,40,4
	.type	getNeighbour,@object            # @getNeighbour
	.comm	getNeighbour,8,8
	.type	get_mb_block_pos,@object        # @get_mb_block_pos
	.comm	get_mb_block_pos,8,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym computeBiPredSAD2
	.addrsig_sym computeBiPredSAD1
	.addrsig_sym McostState
	.addrsig_sym fastme_ref_cost
	.addrsig_sym fastme_l0_cost
	.addrsig_sym fastme_l1_cost
	.addrsig_sym SearchState
	.addrsig_sym fastme_best_cost
	.addrsig_sym fastme_l0_cost_bipred
	.addrsig_sym fastme_l1_cost_bipred
