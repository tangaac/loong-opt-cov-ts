	.file	"main.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	st.w	$a0, $sp, 12
	pcalau12i	$a0, %got_pc_hi20(_ZN9benchmark16PrintDefaultHelpEv)
	ld.d	$a2, $a0, %got_pc_lo12(_ZN9benchmark16PrintDefaultHelpEv)
	addi.d	$a0, $sp, 12
	pcaddu18i	$ra, %call36(_ZN9benchmark10InitializeEPiPPcPFvvE)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 256
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(inputImage)
	st.d	$a0, $s1, %pc_lo12(inputImage)
	beqz	$a0, .LBB0_5
# %bb.1:
	ori	$a1, $zero, 512
	ori	$a2, $zero, 512
	ori	$s2, $zero, 512
	pcaddu18i	$ra, %call36(_Z21initializeRandomImagePiii)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZN9benchmark22RunSpecifiedBenchmarksEv)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 256
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_5
# %bb.2:                                # %vector.ph
	move	$fp, $a0
	ld.d	$a2, $s1, %pc_lo12(inputImage)
	addu16i.d	$a0, $a0, 16
	addi.d	$s3, $a0, -2048
	ori	$a0, $zero, 512
	ori	$a1, $zero, 512
	ori	$a4, $zero, 10
	move	$a3, $fp
	pcaddu18i	$ra, %call36(anisotropicDiffusionKernel)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 255
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 2048
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$s0, 1
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $s3, 0
	vst	$vr0, $s3, 16
	vst	$vr0, $s3, 32
	vst	$vr0, $s3, 48
	vst	$vr0, $s3, 64
	vst	$vr0, $s3, 80
	vst	$vr0, $s3, 96
	vst	$vr0, $s3, 112
	vst	$vr0, $s3, 128
	vst	$vr0, $s3, 144
	vst	$vr0, $s3, 160
	vst	$vr0, $s3, 176
	vst	$vr0, $s3, 192
	vst	$vr0, $s3, 208
	vst	$vr0, $s3, 224
	vst	$vr0, $s3, 240
	vst	$vr0, $s3, 256
	vst	$vr0, $s3, 272
	vst	$vr0, $s3, 288
	vst	$vr0, $s3, 304
	vst	$vr0, $s3, 320
	vst	$vr0, $s3, 336
	vst	$vr0, $s3, 352
	vst	$vr0, $s3, 368
	vst	$vr0, $s3, 384
	vst	$vr0, $s3, 400
	vst	$vr0, $s3, 416
	vst	$vr0, $s3, 432
	vst	$vr0, $s3, 448
	vst	$vr0, $s3, 464
	vst	$vr0, $s3, 480
	vst	$vr0, $s3, 496
	vst	$vr0, $s3, 512
	vst	$vr0, $s3, 528
	vst	$vr0, $s3, 544
	vst	$vr0, $s3, 560
	vst	$vr0, $s3, 576
	vst	$vr0, $s3, 592
	vst	$vr0, $s3, 608
	vst	$vr0, $s3, 624
	vst	$vr0, $s3, 640
	vst	$vr0, $s3, 656
	vst	$vr0, $s3, 672
	vst	$vr0, $s3, 688
	vst	$vr0, $s3, 704
	vst	$vr0, $s3, 720
	vst	$vr0, $s3, 736
	vst	$vr0, $s3, 752
	vst	$vr0, $s3, 768
	vst	$vr0, $s3, 784
	vst	$vr0, $s3, 800
	vst	$vr0, $s3, 816
	vst	$vr0, $s3, 832
	vst	$vr0, $s3, 848
	vst	$vr0, $s3, 864
	vst	$vr0, $s3, 880
	vst	$vr0, $s3, 896
	vst	$vr0, $s3, 912
	vst	$vr0, $s3, 928
	vst	$vr0, $s3, 944
	vst	$vr0, $s3, 960
	vst	$vr0, $s3, 976
	vst	$vr0, $s3, 992
	vst	$vr0, $s3, 1008
	vst	$vr0, $s3, 1024
	vst	$vr0, $s3, 1040
	vst	$vr0, $s3, 1056
	vst	$vr0, $s3, 1072
	vst	$vr0, $s3, 1088
	vst	$vr0, $s3, 1104
	vst	$vr0, $s3, 1120
	vst	$vr0, $s3, 1136
	vst	$vr0, $s3, 1152
	vst	$vr0, $s3, 1168
	vst	$vr0, $s3, 1184
	vst	$vr0, $s3, 1200
	vst	$vr0, $s3, 1216
	vst	$vr0, $s3, 1232
	vst	$vr0, $s3, 1248
	vst	$vr0, $s3, 1264
	vst	$vr0, $s3, 1280
	vst	$vr0, $s3, 1296
	vst	$vr0, $s3, 1312
	vst	$vr0, $s3, 1328
	vst	$vr0, $s3, 1344
	vst	$vr0, $s3, 1360
	vst	$vr0, $s3, 1376
	vst	$vr0, $s3, 1392
	vst	$vr0, $s3, 1408
	vst	$vr0, $s3, 1424
	vst	$vr0, $s3, 1440
	vst	$vr0, $s3, 1456
	vst	$vr0, $s3, 1472
	vst	$vr0, $s3, 1488
	vst	$vr0, $s3, 1504
	vst	$vr0, $s3, 1520
	vst	$vr0, $s3, 1536
	vst	$vr0, $s3, 1552
	vst	$vr0, $s3, 1568
	vst	$vr0, $s3, 1584
	vst	$vr0, $s3, 1600
	vst	$vr0, $s3, 1616
	vst	$vr0, $s3, 1632
	vst	$vr0, $s3, 1648
	vst	$vr0, $s3, 1664
	vst	$vr0, $s3, 1680
	vst	$vr0, $s3, 1696
	vst	$vr0, $s3, 1712
	vst	$vr0, $s3, 1728
	vst	$vr0, $s3, 1744
	vst	$vr0, $s3, 1760
	vst	$vr0, $s3, 1776
	vst	$vr0, $s3, 1792
	vst	$vr0, $s3, 1808
	vst	$vr0, $s3, 1824
	vst	$vr0, $s3, 1840
	vst	$vr0, $s3, 1856
	vst	$vr0, $s3, 1872
	vst	$vr0, $s3, 1888
	vst	$vr0, $s3, 1904
	vst	$vr0, $s3, 1920
	vst	$vr0, $s3, 1936
	vst	$vr0, $s3, 1952
	vst	$vr0, $s3, 1968
	vst	$vr0, $s3, 1984
	vst	$vr0, $s3, 2000
	vst	$vr0, $s3, 2016
	vst	$vr0, $s3, 2032
	move	$a0, $fp
	.p2align	4, , 16
.LBB0_3:                                # %vector.body37
                                        # =>This Inner Loop Header: Depth=1
	st.d	$zero, $a0, 0
	vst	$vr0, $a0, 2040
	stptr.d	$zero, $a0, 4088
	addi.d	$s2, $s2, -2
	add.d	$a0, $a0, $s0
	bnez	$s2, .LBB0_3
# %bb.4:                                # %middle.block40
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 512
	ori	$a3, $zero, 512
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z9saveImagePiPKcii)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(inputImage)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB0_5:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	_Z30BENCHMARK_ANISTROPIC_DIFFUSIONRN9benchmark5StateE # -- Begin function _Z30BENCHMARK_ANISTROPIC_DIFFUSIONRN9benchmark5StateE
	.p2align	5
	.type	_Z30BENCHMARK_ANISTROPIC_DIFFUSIONRN9benchmark5StateE,@function
_Z30BENCHMARK_ANISTROPIC_DIFFUSIONRN9benchmark5StateE: # @_Z30BENCHMARK_ANISTROPIC_DIFFUSIONRN9benchmark5StateE
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$s1, $a0
	ld.d	$a0, $a0, 32
	ld.w	$fp, $a0, 0
	slli.d	$a0, $fp, 32
	srai.d	$a0, $a0, 30
	mul.d	$a0, $a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_10
# %bb.1:
	move	$s0, $a0
	pcalau12i	$s2, %pc_hi20(inputImage)
	ld.d	$a2, $s2, %pc_lo12(inputImage)
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a2, $s2, %pc_lo12(inputImage)
	addi.d	$a0, $a0, -1
	st.d	$a0, $s1, 0
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	ori	$a4, $zero, 10
	move	$a0, $fp
	move	$a1, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(anisotropicDiffusionKernel)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	bgtz	$a0, .LBB1_2
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	ld.bu	$a0, $s1, 24
	bnez	$a0, .LBB1_7
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 28
	bnez	$a0, .LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $s1, 0
	bgtz	$a0, .LBB1_2
.LBB1_7:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 32
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 20
	bne	$a0, $a1, .LBB1_9
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	move	$a0, $s0
	move	$a2, $fp
	move	$a3, $fp
	pcaddu18i	$ra, %call36(_Z9saveImagePiPKcii)
	jirl	$ra, $ra, 0
.LBB1_9:
	move	$a0, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB1_10:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_Z30BENCHMARK_ANISTROPIC_DIFFUSIONRN9benchmark5StateE, .Lfunc_end1-_Z30BENCHMARK_ANISTROPIC_DIFFUSIONRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_main.cpp
	.type	_GLOBAL__sub_I_main.cpp,@function
_GLOBAL__sub_I_main.cpp:                # @_GLOBAL__sub_I_main.cpp
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal17InitializeStreamsEv)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$s1, $sp, 16
	st.d	$s1, $sp, 0
	ori	$a0, $zero, 30
	st.d	$a0, $sp, 32
.Ltmp0:
	addi.d	$a0, $sp, 0
	addi.d	$a1, $sp, 32
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1:
# %bb.1:                                # %.noexc.i
	st.d	$a0, $sp, 0
	ld.d	$a1, $sp, 32
	pcalau12i	$a2, %pc_hi20(.L.str.4)
	addi.d	$a2, $a2, %pc_lo12(.L.str.4)
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 22
	ld.d	$a2, $a2, 16
	st.d	$a1, $sp, 16
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 22
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 0
	st.d	$a1, $sp, 8
	stx.b	$zero, $a0, $a1
	ori	$s2, $zero, 1
.Ltmp3:
	addi.d	$a1, $sp, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp4:
# %bb.2:
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z30BENCHMARK_ANISTROPIC_DIFFUSIONRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z30BENCHMARK_ANISTROPIC_DIFFUSIONRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp5:
	move	$s2, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp6:
# %bb.3:
.Ltmp7:
	ori	$a1, $zero, 32
	move	$s2, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp8:
# %bb.4:
.Ltmp9:
	ori	$a1, $zero, 64
	move	$s2, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp10:
# %bb.5:
.Ltmp11:
	ori	$a1, $zero, 128
	move	$s2, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp12:
# %bb.6:
.Ltmp13:
	ori	$a1, $zero, 256
	move	$s2, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp14:
# %bb.7:
.Ltmp15:
	ori	$a1, $zero, 1
	move	$s2, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp16:
# %bb.8:
	move	$s0, $a0
	ld.d	$a0, $sp, 0
	beq	$a0, $s1, .LBB2_10
# %bb.9:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	ld.d	$a1, $sp, 16
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_10:                               # %__cxx_global_var_init.3.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_2_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_2_benchmark_)
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB2_11:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i
.Ltmp2:
	move	$s0, $a0
	b	.LBB2_15
.LBB2_12:
.Ltmp17:
	ld.d	$a2, $sp, 0
	move	$s0, $a0
	bne	$a2, $s1, .LBB2_14
# %bb.13:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i
	bnez	$s2, .LBB2_15
	b	.LBB2_16
.LBB2_14:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
	ld.d	$a0, $sp, 16
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB2_16
.LBB2_15:
	ori	$a1, $zero, 232
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_16:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_GLOBAL__sub_I_main.cpp, .Lfunc_end2-_GLOBAL__sub_I_main.cpp
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table2:
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
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp16-.Ltmp3                 #   Call between .Ltmp3 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Lfunc_end2-.Ltmp16            #   Call between .Ltmp16 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.type	inputImage,@object              # @inputImage
	.bss
	.globl	inputImage
	.p2align	3, 0x0
inputImage:
	.dword	0
	.size	inputImage, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"./anisotropicDiffusionOutput.txt"
	.size	.L.str, 33

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Insufficient memory\n"
	.size	.L.str.1, 21

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"testFailed.txt"
	.size	.L.str.2, 15

	.type	_ZL27benchmark_uniq_2_benchmark_,@object # @_ZL27benchmark_uniq_2_benchmark_
	.local	_ZL27benchmark_uniq_2_benchmark_
	.comm	_ZL27benchmark_uniq_2_benchmark_,8,8
	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.4:
	.asciz	"BENCHMARK_ANISTROPIC_DIFFUSION"
	.size	.L.str.4, 31

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_main.cpp
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
	.addrsig_sym _ZN9benchmark16PrintDefaultHelpEv
	.addrsig_sym _Z30BENCHMARK_ANISTROPIC_DIFFUSIONRN9benchmark5StateE
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _GLOBAL__sub_I_main.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZSt4cerr
