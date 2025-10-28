	.file	"lpc.c"
	.text
	.globl	Gsm_LPC_Analysis                # -- Begin function Gsm_LPC_Analysis
	.p2align	5
	.type	Gsm_LPC_Analysis,@function
Gsm_LPC_Analysis:                       # @Gsm_LPC_Analysis
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -144
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
	move	$s0, $a1
	vld	$vr2, $a1, 0
	vld	$vr3, $a1, 16
	vslti.h	$vr4, $vr2, 0
	vslti.h	$vr5, $vr3, 0
	vldi	$vr0, -2688
	vseq.h	$vr6, $vr2, $vr0
	vseq.h	$vr7, $vr3, $vr0
	vneg.h	$vr8, $vr2
	vneg.h	$vr9, $vr3
	lu12i.w	$a0, 7
	ori	$s3, $a0, 4095
	vreplgr2vr.h	$vr1, $s3
	vbitsel.v	$vr6, $vr8, $vr1, $vr6
	vbitsel.v	$vr7, $vr9, $vr1, $vr7
	vld	$vr8, $a1, 32
	vld	$vr9, $a1, 48
	vbitsel.v	$vr2, $vr2, $vr6, $vr4
	vbitsel.v	$vr3, $vr3, $vr7, $vr5
	vslti.h	$vr4, $vr8, 0
	vslti.h	$vr5, $vr9, 0
	vseq.h	$vr6, $vr8, $vr0
	vseq.h	$vr7, $vr9, $vr0
	vneg.h	$vr10, $vr8
	vneg.h	$vr11, $vr9
	vbitsel.v	$vr6, $vr10, $vr1, $vr6
	vbitsel.v	$vr7, $vr11, $vr1, $vr7
	vbitsel.v	$vr4, $vr8, $vr6, $vr4
	vbitsel.v	$vr5, $vr9, $vr7, $vr5
	vld	$vr6, $a1, 64
	vld	$vr7, $a1, 80
	vmax.hu	$vr2, $vr4, $vr2
	vmax.hu	$vr3, $vr5, $vr3
	vslti.h	$vr4, $vr6, 0
	vslti.h	$vr5, $vr7, 0
	vseq.h	$vr8, $vr6, $vr0
	vseq.h	$vr9, $vr7, $vr0
	vneg.h	$vr10, $vr6
	vneg.h	$vr11, $vr7
	vbitsel.v	$vr8, $vr10, $vr1, $vr8
	vbitsel.v	$vr9, $vr11, $vr1, $vr9
	vbitsel.v	$vr4, $vr6, $vr8, $vr4
	vbitsel.v	$vr5, $vr7, $vr9, $vr5
	vld	$vr6, $a1, 96
	vld	$vr7, $a1, 112
	vmax.hu	$vr2, $vr4, $vr2
	vmax.hu	$vr3, $vr5, $vr3
	vslti.h	$vr4, $vr6, 0
	vslti.h	$vr5, $vr7, 0
	vseq.h	$vr8, $vr6, $vr0
	vseq.h	$vr9, $vr7, $vr0
	vneg.h	$vr10, $vr6
	vneg.h	$vr11, $vr7
	vbitsel.v	$vr8, $vr10, $vr1, $vr8
	vbitsel.v	$vr9, $vr11, $vr1, $vr9
	vbitsel.v	$vr4, $vr6, $vr8, $vr4
	vbitsel.v	$vr5, $vr7, $vr9, $vr5
	vld	$vr6, $a1, 128
	vld	$vr7, $a1, 144
	vmax.hu	$vr2, $vr4, $vr2
	vmax.hu	$vr3, $vr5, $vr3
	vslti.h	$vr4, $vr6, 0
	vslti.h	$vr5, $vr7, 0
	vseq.h	$vr8, $vr6, $vr0
	vseq.h	$vr9, $vr7, $vr0
	vneg.h	$vr10, $vr6
	vneg.h	$vr11, $vr7
	vbitsel.v	$vr8, $vr10, $vr1, $vr8
	vbitsel.v	$vr9, $vr11, $vr1, $vr9
	vbitsel.v	$vr4, $vr6, $vr8, $vr4
	vbitsel.v	$vr5, $vr7, $vr9, $vr5
	vld	$vr6, $a1, 160
	vld	$vr7, $a1, 176
	vmax.hu	$vr2, $vr4, $vr2
	vmax.hu	$vr3, $vr5, $vr3
	vslti.h	$vr4, $vr6, 0
	vslti.h	$vr5, $vr7, 0
	vseq.h	$vr8, $vr6, $vr0
	vseq.h	$vr9, $vr7, $vr0
	vneg.h	$vr10, $vr6
	vneg.h	$vr11, $vr7
	vbitsel.v	$vr8, $vr10, $vr1, $vr8
	vbitsel.v	$vr9, $vr11, $vr1, $vr9
	vbitsel.v	$vr4, $vr6, $vr8, $vr4
	vbitsel.v	$vr5, $vr7, $vr9, $vr5
	vld	$vr6, $a1, 192
	vld	$vr7, $a1, 208
	vmax.hu	$vr2, $vr4, $vr2
	vmax.hu	$vr3, $vr5, $vr3
	vslti.h	$vr4, $vr6, 0
	vslti.h	$vr5, $vr7, 0
	vseq.h	$vr8, $vr6, $vr0
	vseq.h	$vr9, $vr7, $vr0
	vneg.h	$vr10, $vr6
	vneg.h	$vr11, $vr7
	vbitsel.v	$vr8, $vr10, $vr1, $vr8
	vbitsel.v	$vr9, $vr11, $vr1, $vr9
	vbitsel.v	$vr4, $vr6, $vr8, $vr4
	vbitsel.v	$vr5, $vr7, $vr9, $vr5
	vld	$vr6, $a1, 224
	vld	$vr7, $a1, 240
	vmax.hu	$vr2, $vr4, $vr2
	vmax.hu	$vr3, $vr5, $vr3
	vslti.h	$vr4, $vr6, 0
	vslti.h	$vr5, $vr7, 0
	vseq.h	$vr8, $vr6, $vr0
	vseq.h	$vr9, $vr7, $vr0
	vneg.h	$vr10, $vr6
	vneg.h	$vr11, $vr7
	vbitsel.v	$vr8, $vr10, $vr1, $vr8
	vbitsel.v	$vr9, $vr11, $vr1, $vr9
	vbitsel.v	$vr4, $vr6, $vr8, $vr4
	vbitsel.v	$vr5, $vr7, $vr9, $vr5
	vld	$vr6, $a1, 256
	vld	$vr7, $a1, 272
	vmax.hu	$vr2, $vr4, $vr2
	vmax.hu	$vr3, $vr5, $vr3
	vslti.h	$vr4, $vr6, 0
	vslti.h	$vr5, $vr7, 0
	vseq.h	$vr8, $vr6, $vr0
	vseq.h	$vr9, $vr7, $vr0
	vneg.h	$vr10, $vr6
	vneg.h	$vr11, $vr7
	vbitsel.v	$vr8, $vr10, $vr1, $vr8
	vbitsel.v	$vr9, $vr11, $vr1, $vr9
	vbitsel.v	$vr4, $vr6, $vr8, $vr4
	vbitsel.v	$vr5, $vr7, $vr9, $vr5
	vld	$vr6, $a1, 288
	vld	$vr7, $a1, 304
	vmax.hu	$vr2, $vr4, $vr2
	vmax.hu	$vr3, $vr5, $vr3
	vslti.h	$vr4, $vr6, 0
	vslti.h	$vr5, $vr7, 0
	vseq.h	$vr8, $vr6, $vr0
	vseq.h	$vr0, $vr7, $vr0
	vneg.h	$vr9, $vr6
	vneg.h	$vr10, $vr7
	vbitsel.v	$vr8, $vr9, $vr1, $vr8
	vbitsel.v	$vr0, $vr10, $vr1, $vr0
	vbitsel.v	$vr1, $vr6, $vr8, $vr4
	vbitsel.v	$vr0, $vr7, $vr0, $vr5
	vmax.hu	$vr1, $vr1, $vr2
	vmax.hu	$vr0, $vr0, $vr3
	vmax.hu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 8
	vmax.hu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.hu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.hu	$vr0, $vr1, $vr0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	move	$s7, $a2
	beqz	$a0, .LBB0_5
# %bb.1:
	slli.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(gsm_norm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	sub.d	$a1, $a1, $a0
	ext.w.h	$a1, $a1
	blez	$a1, .LBB0_6
# %bb.2:
	ori	$a3, $zero, 3
	ori	$a2, $zero, 1
	bltu	$a3, $a0, .LBB0_11
# %bb.3:
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 2
	pcalau12i	$a3, %pc_hi20(.LJTI0_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a3, $a0
	add.d	$a0, $a3, $a0
	jr	$a0
.LBB0_4:                                # %vector.body107
	vld	$vr0, $s0, 0
	vld	$vr1, $s0, 16
	vilvh.h	$vr2, $vr0, $vr0
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr0, $vr0, $vr0
	vslli.w	$vr0, $vr0, 16
	vsrai.w	$vr0, $vr0, 16
	vilvh.h	$vr3, $vr1, $vr1
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr4, $vr0, 11
	vslli.w	$vr2, $vr2, 11
	vslli.w	$vr1, $vr1, 11
	vslli.w	$vr3, $vr3, 11
	vldi	$vr0, -3776
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr4, $vr4, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr3, $vr3, 15
	vpickev.h	$vr2, $vr2, $vr4
	vpickev.h	$vr1, $vr3, $vr1
	vld	$vr3, $s0, 32
	vst	$vr2, $s0, 0
	vst	$vr1, $s0, 16
	vld	$vr1, $s0, 48
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 11
	vslli.w	$vr2, $vr2, 11
	vslli.w	$vr1, $vr1, 11
	vslli.w	$vr4, $vr4, 11
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 64
	vst	$vr2, $s0, 32
	vst	$vr1, $s0, 48
	vld	$vr1, $s0, 80
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 11
	vslli.w	$vr2, $vr2, 11
	vslli.w	$vr1, $vr1, 11
	vslli.w	$vr4, $vr4, 11
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 96
	vst	$vr2, $s0, 64
	vst	$vr1, $s0, 80
	vld	$vr1, $s0, 112
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 11
	vslli.w	$vr2, $vr2, 11
	vslli.w	$vr1, $vr1, 11
	vslli.w	$vr4, $vr4, 11
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 128
	vst	$vr2, $s0, 96
	vst	$vr1, $s0, 112
	vld	$vr1, $s0, 144
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 11
	vslli.w	$vr2, $vr2, 11
	vslli.w	$vr1, $vr1, 11
	vslli.w	$vr4, $vr4, 11
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 160
	vst	$vr2, $s0, 128
	vst	$vr1, $s0, 144
	vld	$vr1, $s0, 176
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 11
	vslli.w	$vr2, $vr2, 11
	vslli.w	$vr1, $vr1, 11
	vslli.w	$vr4, $vr4, 11
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 192
	vst	$vr2, $s0, 160
	vst	$vr1, $s0, 176
	vld	$vr1, $s0, 208
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 11
	vslli.w	$vr2, $vr2, 11
	vslli.w	$vr1, $vr1, 11
	vslli.w	$vr4, $vr4, 11
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 224
	vst	$vr2, $s0, 192
	vst	$vr1, $s0, 208
	vld	$vr1, $s0, 240
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 11
	vslli.w	$vr2, $vr2, 11
	vslli.w	$vr1, $vr1, 11
	vslli.w	$vr4, $vr4, 11
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 256
	vst	$vr2, $s0, 224
	vst	$vr1, $s0, 240
	vld	$vr1, $s0, 272
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 11
	vslli.w	$vr2, $vr2, 11
	vslli.w	$vr1, $vr1, 11
	vslli.w	$vr4, $vr4, 11
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 288
	vst	$vr2, $s0, 256
	vst	$vr1, $s0, 272
	vld	$vr1, $s0, 304
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 11
	vslli.w	$vr2, $vr2, 11
	vslli.w	$vr1, $vr1, 11
	vslli.w	$vr4, $vr4, 11
	b	.LBB0_10
.LBB0_5:
	move	$a2, $zero
	move	$a1, $zero
	b	.LBB0_11
.LBB0_6:
	move	$a2, $zero
	b	.LBB0_11
.LBB0_7:                                # %vector.body121
	vld	$vr0, $s0, 0
	vld	$vr1, $s0, 16
	vilvh.h	$vr2, $vr0, $vr0
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr0, $vr0, $vr0
	vslli.w	$vr0, $vr0, 16
	vsrai.w	$vr0, $vr0, 16
	vilvh.h	$vr3, $vr1, $vr1
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr4, $vr0, 13
	vslli.w	$vr2, $vr2, 13
	vslli.w	$vr1, $vr1, 13
	vslli.w	$vr3, $vr3, 13
	vldi	$vr0, -3776
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr4, $vr4, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr3, $vr3, 15
	vpickev.h	$vr2, $vr2, $vr4
	vpickev.h	$vr1, $vr3, $vr1
	vld	$vr3, $s0, 32
	vst	$vr2, $s0, 0
	vst	$vr1, $s0, 16
	vld	$vr1, $s0, 48
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 13
	vslli.w	$vr2, $vr2, 13
	vslli.w	$vr1, $vr1, 13
	vslli.w	$vr4, $vr4, 13
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 64
	vst	$vr2, $s0, 32
	vst	$vr1, $s0, 48
	vld	$vr1, $s0, 80
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 13
	vslli.w	$vr2, $vr2, 13
	vslli.w	$vr1, $vr1, 13
	vslli.w	$vr4, $vr4, 13
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 96
	vst	$vr2, $s0, 64
	vst	$vr1, $s0, 80
	vld	$vr1, $s0, 112
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 13
	vslli.w	$vr2, $vr2, 13
	vslli.w	$vr1, $vr1, 13
	vslli.w	$vr4, $vr4, 13
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 128
	vst	$vr2, $s0, 96
	vst	$vr1, $s0, 112
	vld	$vr1, $s0, 144
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 13
	vslli.w	$vr2, $vr2, 13
	vslli.w	$vr1, $vr1, 13
	vslli.w	$vr4, $vr4, 13
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 160
	vst	$vr2, $s0, 128
	vst	$vr1, $s0, 144
	vld	$vr1, $s0, 176
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 13
	vslli.w	$vr2, $vr2, 13
	vslli.w	$vr1, $vr1, 13
	vslli.w	$vr4, $vr4, 13
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 192
	vst	$vr2, $s0, 160
	vst	$vr1, $s0, 176
	vld	$vr1, $s0, 208
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 13
	vslli.w	$vr2, $vr2, 13
	vslli.w	$vr1, $vr1, 13
	vslli.w	$vr4, $vr4, 13
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 224
	vst	$vr2, $s0, 192
	vst	$vr1, $s0, 208
	vld	$vr1, $s0, 240
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 13
	vslli.w	$vr2, $vr2, 13
	vslli.w	$vr1, $vr1, 13
	vslli.w	$vr4, $vr4, 13
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 256
	vst	$vr2, $s0, 224
	vst	$vr1, $s0, 240
	vld	$vr1, $s0, 272
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 13
	vslli.w	$vr2, $vr2, 13
	vslli.w	$vr1, $vr1, 13
	vslli.w	$vr4, $vr4, 13
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 288
	vst	$vr2, $s0, 256
	vst	$vr1, $s0, 272
	vld	$vr1, $s0, 304
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 13
	vslli.w	$vr2, $vr2, 13
	vslli.w	$vr1, $vr1, 13
	vslli.w	$vr4, $vr4, 13
	b	.LBB0_10
.LBB0_8:                                # %vector.body128
	vld	$vr0, $s0, 0
	vld	$vr1, $s0, 16
	vilvh.h	$vr2, $vr0, $vr0
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr0, $vr0, $vr0
	vslli.w	$vr0, $vr0, 16
	vsrai.w	$vr0, $vr0, 16
	vilvh.h	$vr3, $vr1, $vr1
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr4, $vr0, 14
	vslli.w	$vr2, $vr2, 14
	vslli.w	$vr1, $vr1, 14
	vslli.w	$vr3, $vr3, 14
	vldi	$vr0, -3776
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr4, $vr4, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr3, $vr3, 15
	vpickev.h	$vr2, $vr2, $vr4
	vpickev.h	$vr1, $vr3, $vr1
	vld	$vr3, $s0, 32
	vst	$vr2, $s0, 0
	vst	$vr1, $s0, 16
	vld	$vr1, $s0, 48
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 14
	vslli.w	$vr2, $vr2, 14
	vslli.w	$vr1, $vr1, 14
	vslli.w	$vr4, $vr4, 14
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 64
	vst	$vr2, $s0, 32
	vst	$vr1, $s0, 48
	vld	$vr1, $s0, 80
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 14
	vslli.w	$vr2, $vr2, 14
	vslli.w	$vr1, $vr1, 14
	vslli.w	$vr4, $vr4, 14
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 96
	vst	$vr2, $s0, 64
	vst	$vr1, $s0, 80
	vld	$vr1, $s0, 112
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 14
	vslli.w	$vr2, $vr2, 14
	vslli.w	$vr1, $vr1, 14
	vslli.w	$vr4, $vr4, 14
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 128
	vst	$vr2, $s0, 96
	vst	$vr1, $s0, 112
	vld	$vr1, $s0, 144
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 14
	vslli.w	$vr2, $vr2, 14
	vslli.w	$vr1, $vr1, 14
	vslli.w	$vr4, $vr4, 14
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 160
	vst	$vr2, $s0, 128
	vst	$vr1, $s0, 144
	vld	$vr1, $s0, 176
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 14
	vslli.w	$vr2, $vr2, 14
	vslli.w	$vr1, $vr1, 14
	vslli.w	$vr4, $vr4, 14
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 192
	vst	$vr2, $s0, 160
	vst	$vr1, $s0, 176
	vld	$vr1, $s0, 208
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 14
	vslli.w	$vr2, $vr2, 14
	vslli.w	$vr1, $vr1, 14
	vslli.w	$vr4, $vr4, 14
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 224
	vst	$vr2, $s0, 192
	vst	$vr1, $s0, 208
	vld	$vr1, $s0, 240
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 14
	vslli.w	$vr2, $vr2, 14
	vslli.w	$vr1, $vr1, 14
	vslli.w	$vr4, $vr4, 14
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 256
	vst	$vr2, $s0, 224
	vst	$vr1, $s0, 240
	vld	$vr1, $s0, 272
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 14
	vslli.w	$vr2, $vr2, 14
	vslli.w	$vr1, $vr1, 14
	vslli.w	$vr4, $vr4, 14
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 288
	vst	$vr2, $s0, 256
	vst	$vr1, $s0, 272
	vld	$vr1, $s0, 304
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 14
	vslli.w	$vr2, $vr2, 14
	vslli.w	$vr1, $vr1, 14
	vslli.w	$vr4, $vr4, 14
	b	.LBB0_10
.LBB0_9:                                # %vector.body114
	vld	$vr0, $s0, 0
	vld	$vr1, $s0, 16
	vilvh.h	$vr2, $vr0, $vr0
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr0, $vr0, $vr0
	vslli.w	$vr0, $vr0, 16
	vsrai.w	$vr0, $vr0, 16
	vilvh.h	$vr3, $vr1, $vr1
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr4, $vr0, 12
	vslli.w	$vr2, $vr2, 12
	vslli.w	$vr1, $vr1, 12
	vslli.w	$vr3, $vr3, 12
	vldi	$vr0, -3776
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr4, $vr4, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr3, $vr3, 15
	vpickev.h	$vr2, $vr2, $vr4
	vpickev.h	$vr1, $vr3, $vr1
	vld	$vr3, $s0, 32
	vst	$vr2, $s0, 0
	vst	$vr1, $s0, 16
	vld	$vr1, $s0, 48
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 12
	vslli.w	$vr2, $vr2, 12
	vslli.w	$vr1, $vr1, 12
	vslli.w	$vr4, $vr4, 12
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 64
	vst	$vr2, $s0, 32
	vst	$vr1, $s0, 48
	vld	$vr1, $s0, 80
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 12
	vslli.w	$vr2, $vr2, 12
	vslli.w	$vr1, $vr1, 12
	vslli.w	$vr4, $vr4, 12
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 96
	vst	$vr2, $s0, 64
	vst	$vr1, $s0, 80
	vld	$vr1, $s0, 112
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 12
	vslli.w	$vr2, $vr2, 12
	vslli.w	$vr1, $vr1, 12
	vslli.w	$vr4, $vr4, 12
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 128
	vst	$vr2, $s0, 96
	vst	$vr1, $s0, 112
	vld	$vr1, $s0, 144
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 12
	vslli.w	$vr2, $vr2, 12
	vslli.w	$vr1, $vr1, 12
	vslli.w	$vr4, $vr4, 12
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 160
	vst	$vr2, $s0, 128
	vst	$vr1, $s0, 144
	vld	$vr1, $s0, 176
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 12
	vslli.w	$vr2, $vr2, 12
	vslli.w	$vr1, $vr1, 12
	vslli.w	$vr4, $vr4, 12
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 192
	vst	$vr2, $s0, 160
	vst	$vr1, $s0, 176
	vld	$vr1, $s0, 208
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 12
	vslli.w	$vr2, $vr2, 12
	vslli.w	$vr1, $vr1, 12
	vslli.w	$vr4, $vr4, 12
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 224
	vst	$vr2, $s0, 192
	vst	$vr1, $s0, 208
	vld	$vr1, $s0, 240
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 12
	vslli.w	$vr2, $vr2, 12
	vslli.w	$vr1, $vr1, 12
	vslli.w	$vr4, $vr4, 12
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 256
	vst	$vr2, $s0, 224
	vst	$vr1, $s0, 240
	vld	$vr1, $s0, 272
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 12
	vslli.w	$vr2, $vr2, 12
	vslli.w	$vr1, $vr1, 12
	vslli.w	$vr4, $vr4, 12
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr1, $vr1, $vr0
	vsrli.w	$vr3, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr1, $vr1, 15
	vsrli.w	$vr4, $vr4, 15
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 288
	vst	$vr2, $s0, 256
	vst	$vr1, $s0, 272
	vld	$vr1, $s0, 304
	vilvh.h	$vr2, $vr3, $vr3
	vslli.w	$vr2, $vr2, 16
	vsrai.w	$vr2, $vr2, 16
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvh.h	$vr4, $vr1, $vr1
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vslli.w	$vr3, $vr3, 12
	vslli.w	$vr2, $vr2, 12
	vslli.w	$vr1, $vr1, 12
	vslli.w	$vr4, $vr4, 12
.LBB0_10:                               # %.thread.i
	vadd.w	$vr2, $vr2, $vr0
	vadd.w	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr0
	vadd.w	$vr0, $vr1, $vr0
	vsrli.w	$vr1, $vr3, 15
	vsrli.w	$vr2, $vr2, 15
	vsrli.w	$vr0, $vr0, 15
	vsrli.w	$vr3, $vr4, 15
	vpickev.h	$vr1, $vr2, $vr1
	vpickev.h	$vr0, $vr3, $vr0
	vst	$vr1, $s0, 288
	vst	$vr0, $s0, 304
.LBB0_11:                               # %.thread.i
	ld.h	$t1, $s0, 0
	ld.h	$t0, $s0, 2
	move	$s8, $zero
	ld.h	$a7, $s0, 4
	mul.d	$a3, $t1, $t1
	mul.d	$a4, $t0, $t0
	add.d	$a3, $a4, $a3
	mul.d	$a4, $a7, $a7
	add.d	$a3, $a3, $a4
	ld.h	$a6, $s0, 6
	add.d	$a4, $a7, $t1
	mul.d	$a4, $a4, $t0
	mul.d	$a5, $a7, $t1
	mul.d	$t2, $a6, $a6
	add.d	$a3, $a3, $t2
	mul.d	$t4, $a6, $a7
	ld.h	$t6, $s0, 8
	mul.d	$t7, $a6, $t0
	addi.d	$t2, $s0, 8
	ld.h	$t8, $s0, 10
	mul.d	$t3, $t6, $t6
	add.d	$a3, $a3, $t3
	mul.d	$t3, $t6, $t1
	mul.d	$t5, $t8, $t8
	add.d	$a3, $a3, $t5
	mul.d	$fp, $t8, $a7
	ld.h	$s1, $s0, 12
	mul.d	$t5, $t8, $t0
	add.d	$t3, $t5, $t3
	mul.d	$t5, $t8, $t1
	mul.d	$s2, $s1, $s1
	add.d	$a3, $a3, $s2
	mul.d	$s2, $s1, $a7
	add.d	$s2, $t3, $s2
	ld.h	$s4, $s0, 14
	mul.d	$t3, $s1, $t0
	add.d	$s5, $t3, $t5
	mul.d	$s6, $s1, $t1
	bstrpick.d	$t5, $s4, 15, 0
	mul.d	$t3, $s4, $s4
	add.d	$t3, $a3, $t3
	add.d	$a3, $s4, $t8
	mul.d	$a3, $a3, $s1
	add.d	$a4, $t4, $a4
	add.d	$t4, $t8, $a6
	mul.d	$t4, $t4, $t6
	add.d	$a4, $a4, $t4
	add.d	$a3, $a4, $a3
	add.d	$a4, $s4, $a6
	mul.d	$a4, $a4, $t8
	add.d	$t4, $s1, $a7
	mul.d	$t4, $t4, $t6
	add.d	$a5, $t7, $a5
	add.d	$a5, $a5, $t4
	add.d	$a4, $a5, $a4
	add.d	$a5, $s4, $t0
	mul.d	$a5, $a5, $t6
	add.d	$t4, $s1, $t1
	mul.d	$t4, $t4, $a6
	add.d	$t4, $t4, $fp
	add.d	$a5, $t4, $a5
	mul.d	$a6, $s4, $a6
	add.d	$a6, $s2, $a6
	mul.d	$a7, $s4, $a7
	add.d	$a7, $s5, $a7
	mul.d	$t0, $s4, $t0
	add.d	$t0, $t0, $s6
	mul.d	$t1, $s4, $t1
	ori	$t4, $zero, 152
	.p2align	4, , 16
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	ld.h	$t6, $t2, 8
	mul.d	$t7, $t6, $t6
	add.d	$t3, $t7, $t3
	ext.w.h	$t5, $t5
	ld.h	$t7, $t2, 4
	mul.d	$t5, $t6, $t5
	add.d	$a3, $t5, $a3
	ld.h	$t5, $t2, 2
	mul.d	$t7, $t7, $t6
	ld.h	$t8, $t2, 0
	add.d	$a4, $t7, $a4
	mul.d	$t5, $t5, $t6
	add.d	$a5, $t5, $a5
	mul.d	$t5, $t8, $t6
	ld.h	$t7, $t2, -2
	add.d	$a6, $t5, $a6
	ld.h	$t5, $t2, -4
	bstrpick.d	$t8, $t6, 15, 0
	mul.d	$t7, $t7, $t6
	add.d	$a7, $t7, $a7
	mul.d	$t5, $t5, $t6
	ld.h	$t7, $t2, -6
	add.d	$t0, $t5, $t0
	ld.h	$t5, $t2, -8
	addi.d	$t2, $t2, 2
	mul.d	$t7, $t7, $t6
	add.d	$t1, $t7, $t1
	mul.d	$t5, $t5, $t6
	addi.w	$t4, $t4, -1
	add.d	$s8, $t5, $s8
	move	$t5, $t8
	bnez	$t4, .LBB0_12
# %bb.13:                               # %.preheader212.i
	slli.d	$s1, $t3, 1
	beqz	$a2, .LBB0_15
# %bb.14:                               # %vector.body135
	vld	$vr1, $s0, 0
	vld	$vr2, $s0, 16
	vreplgr2vr.w	$vr0, $a1
	vilvh.h	$vr3, $vr1, $vr1
	vilvl.h	$vr1, $vr1, $vr1
	vilvh.h	$vr4, $vr2, $vr2
	vilvl.h	$vr2, $vr2, $vr2
	vsll.w	$vr1, $vr1, $vr0
	vsll.w	$vr3, $vr3, $vr0
	vsll.w	$vr2, $vr2, $vr0
	vsll.w	$vr4, $vr4, $vr0
	vpickev.h	$vr1, $vr3, $vr1
	vpickev.h	$vr2, $vr4, $vr2
	vld	$vr3, $s0, 32
	vst	$vr1, $s0, 0
	vld	$vr1, $s0, 48
	vst	$vr2, $s0, 16
	vilvh.h	$vr2, $vr3, $vr3
	vilvl.h	$vr3, $vr3, $vr3
	vilvh.h	$vr4, $vr1, $vr1
	vilvl.h	$vr1, $vr1, $vr1
	vsll.w	$vr3, $vr3, $vr0
	vsll.w	$vr2, $vr2, $vr0
	vsll.w	$vr1, $vr1, $vr0
	vsll.w	$vr4, $vr4, $vr0
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 64
	vst	$vr2, $s0, 32
	vld	$vr2, $s0, 80
	vst	$vr1, $s0, 48
	vilvh.h	$vr1, $vr3, $vr3
	vilvl.h	$vr3, $vr3, $vr3
	vilvh.h	$vr4, $vr2, $vr2
	vilvl.h	$vr2, $vr2, $vr2
	vsll.w	$vr3, $vr3, $vr0
	vsll.w	$vr1, $vr1, $vr0
	vsll.w	$vr2, $vr2, $vr0
	vsll.w	$vr4, $vr4, $vr0
	vpickev.h	$vr1, $vr1, $vr3
	vpickev.h	$vr2, $vr4, $vr2
	vld	$vr3, $s0, 96
	vst	$vr1, $s0, 64
	vld	$vr1, $s0, 112
	vst	$vr2, $s0, 80
	vilvh.h	$vr2, $vr3, $vr3
	vilvl.h	$vr3, $vr3, $vr3
	vilvh.h	$vr4, $vr1, $vr1
	vilvl.h	$vr1, $vr1, $vr1
	vsll.w	$vr3, $vr3, $vr0
	vsll.w	$vr2, $vr2, $vr0
	vsll.w	$vr1, $vr1, $vr0
	vsll.w	$vr4, $vr4, $vr0
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 128
	vst	$vr2, $s0, 96
	vld	$vr2, $s0, 144
	vst	$vr1, $s0, 112
	vilvh.h	$vr1, $vr3, $vr3
	vilvl.h	$vr3, $vr3, $vr3
	vilvh.h	$vr4, $vr2, $vr2
	vilvl.h	$vr2, $vr2, $vr2
	vsll.w	$vr3, $vr3, $vr0
	vsll.w	$vr1, $vr1, $vr0
	vsll.w	$vr2, $vr2, $vr0
	vsll.w	$vr4, $vr4, $vr0
	vpickev.h	$vr1, $vr1, $vr3
	vpickev.h	$vr2, $vr4, $vr2
	vld	$vr3, $s0, 160
	vst	$vr1, $s0, 128
	vld	$vr1, $s0, 176
	vst	$vr2, $s0, 144
	vilvh.h	$vr2, $vr3, $vr3
	vilvl.h	$vr3, $vr3, $vr3
	vilvh.h	$vr4, $vr1, $vr1
	vilvl.h	$vr1, $vr1, $vr1
	vsll.w	$vr3, $vr3, $vr0
	vsll.w	$vr2, $vr2, $vr0
	vsll.w	$vr1, $vr1, $vr0
	vsll.w	$vr4, $vr4, $vr0
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 192
	vst	$vr2, $s0, 160
	vld	$vr2, $s0, 208
	vst	$vr1, $s0, 176
	vilvh.h	$vr1, $vr3, $vr3
	vilvl.h	$vr3, $vr3, $vr3
	vilvh.h	$vr4, $vr2, $vr2
	vilvl.h	$vr2, $vr2, $vr2
	vsll.w	$vr3, $vr3, $vr0
	vsll.w	$vr1, $vr1, $vr0
	vsll.w	$vr2, $vr2, $vr0
	vsll.w	$vr4, $vr4, $vr0
	vpickev.h	$vr1, $vr1, $vr3
	vpickev.h	$vr2, $vr4, $vr2
	vld	$vr3, $s0, 224
	vst	$vr1, $s0, 192
	vld	$vr1, $s0, 240
	vst	$vr2, $s0, 208
	vilvh.h	$vr2, $vr3, $vr3
	vilvl.h	$vr3, $vr3, $vr3
	vilvh.h	$vr4, $vr1, $vr1
	vilvl.h	$vr1, $vr1, $vr1
	vsll.w	$vr3, $vr3, $vr0
	vsll.w	$vr2, $vr2, $vr0
	vsll.w	$vr1, $vr1, $vr0
	vsll.w	$vr4, $vr4, $vr0
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr1, $vr4, $vr1
	vld	$vr3, $s0, 256
	vst	$vr2, $s0, 224
	vld	$vr2, $s0, 272
	vst	$vr1, $s0, 240
	vilvh.h	$vr1, $vr3, $vr3
	vilvl.h	$vr3, $vr3, $vr3
	vilvh.h	$vr4, $vr2, $vr2
	vilvl.h	$vr2, $vr2, $vr2
	vsll.w	$vr3, $vr3, $vr0
	vsll.w	$vr1, $vr1, $vr0
	vsll.w	$vr2, $vr2, $vr0
	vsll.w	$vr4, $vr4, $vr0
	vpickev.h	$vr1, $vr1, $vr3
	vpickev.h	$vr2, $vr4, $vr2
	vld	$vr3, $s0, 288
	vst	$vr1, $s0, 256
	vld	$vr1, $s0, 304
	vst	$vr2, $s0, 272
	vilvh.h	$vr2, $vr3, $vr3
	vilvl.h	$vr3, $vr3, $vr3
	vilvh.h	$vr4, $vr1, $vr1
	vilvl.h	$vr1, $vr1, $vr1
	vsll.w	$vr3, $vr3, $vr0
	vsll.w	$vr2, $vr2, $vr0
	vsll.w	$vr1, $vr1, $vr0
	vsll.w	$vr0, $vr4, $vr0
	vpickev.h	$vr2, $vr2, $vr3
	vpickev.h	$vr0, $vr0, $vr1
	vst	$vr2, $s0, 288
	vst	$vr0, $s0, 304
.LBB0_15:                               # %Autocorrelation.exit
	lu12i.w	$ra, 8
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	beqz	$s1, .LBB0_18
# %bb.16:                               # %.preheader69.preheader.i
	slli.d	$fp, $s8, 1
	slli.d	$s0, $t1, 1
	slli.d	$s2, $t0, 1
	slli.d	$s4, $a7, 1
	slli.d	$s6, $a6, 1
	slli.d	$s7, $a5, 1
	slli.d	$s8, $a4, 1
	slli.d	$s5, $a3, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(gsm_norm)
	jirl	$ra, $ra, 0
	sll.d	$a1, $s1, $a0
	srli.d	$a1, $a1, 16
	ext.w.h	$a3, $a1
	sll.d	$a2, $s5, $a0
	srli.d	$s5, $a2, 16
	bstrpick.d	$a2, $a2, 31, 16
	ext.w.h	$a4, $s5
	sll.d	$a5, $s8, $a0
	srli.d	$a5, $a5, 16
	sll.d	$a6, $s7, $a0
	srli.d	$a6, $a6, 16
	sll.d	$a7, $s6, $a0
	srli.d	$a7, $a7, 16
	sll.d	$t0, $s4, $a0
	srli.d	$t0, $t0, 16
	sll.d	$t1, $s2, $a0
	srli.d	$t1, $t1, 16
	sll.d	$t2, $s0, $a0
	srli.d	$t2, $t2, 16
	sll.d	$a0, $fp, $a0
	srli.d	$a0, $a0, 16
	st.h	$s5, $sp, 22
	st.h	$a5, $sp, 24
	st.h	$a6, $sp, 26
	st.h	$a7, $sp, 28
	st.h	$t0, $sp, 30
	st.h	$t1, $sp, 32
	st.h	$t2, $sp, 34
	st.h	$s5, $sp, 40
	st.h	$a5, $sp, 42
	st.h	$a6, $sp, 44
	st.h	$a7, $sp, 46
	st.h	$t0, $sp, 48
	st.h	$t1, $sp, 50
	st.h	$t2, $sp, 52
	st.h	$a0, $sp, 54
	slti	$a0, $a4, 0
	lu12i.w	$a4, 8
	xor	$a2, $a2, $a4
	sltui	$a2, $a2, 1
	sub.d	$a4, $zero, $s5
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a4
	masknez	$a4, $s5, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a4
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	ext.w.h	$a0, $a0
	ori	$a2, $zero, 16
	move	$s0, $a4
	bge	$a3, $a0, .LBB0_23
.LBB0_17:                               # %.lr.ph82.preheader.i
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$ra, 8
	b	.LBB0_19
.LBB0_18:                               # %.preheader.preheader.i
	vrepli.b	$vr0, 0
	vst	$vr0, $s7, 0
.LBB0_19:                               # %Reflection_coefficients.exit
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ld.hu	$a1, $s1, 0
	ext.w.h	$a0, $a1
	slti	$a0, $a0, 0
	xor	$a2, $a1, $ra
	sltui	$a2, $a2, 1
	sub.d	$a3, $zero, $a1
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $s3, $a2
	or	$a2, $a2, $a3
	maskeqz	$a2, $a2, $a0
	masknez	$a1, $a1, $a0
	or	$a1, $a2, $a1
	ext.w.h	$a2, $a1
	lu12i.w	$a3, 5
	ori	$a4, $a3, 1637
	blt	$a4, $a2, .LBB0_21
# %bb.20:
	srai.d	$a1, $a2, 1
	lu12i.w	$s2, 7
	b	.LBB0_31
.LBB0_21:
	bstrpick.d	$a2, $a1, 15, 0
	lu12i.w	$s2, 7
	ori	$a4, $s2, 2457
	bltu	$a4, $a2, .LBB0_30
# %bb.22:
	lu12i.w	$a2, -3
	ori	$a2, $a2, 1229
	add.d	$a1, $a1, $a2
	b	.LBB0_31
.LBB0_23:                               # %.lr.ph.preheader
	move	$s6, $zero
	ori	$s7, $zero, 8
	ori	$fp, $zero, 0
	lu32i.d	$fp, 32768
	lu12i.w	$s4, -8
	ori	$s8, $zero, 7
	move	$s0, $a4
	ori	$a2, $zero, 1
	b	.LBB0_25
	.p2align	4, , 16
.LBB0_24:                               # %._crit_edge.i
                                        #   in Loop: Header=BB0_25 Depth=1
	mul.d	$a0, $a1, $a0
	slli.d	$a0, $a0, 33
	add.d	$a0, $a0, $fp
	srai.d	$a0, $a0, 48
	add.d	$a0, $a0, $s1
	slt	$a1, $a0, $s3
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s3, $a1
	or	$a0, $a0, $a1
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a1, $a0, $a1
	addi.d	$a2, $s2, 1
	addi.d	$s0, $s0, 2
	addi.d	$s6, $s6, 1
	ext.w.h	$a0, $s5
	slti	$a0, $a0, 0
	bstrpick.d	$a3, $s5, 15, 0
	xor	$a3, $a3, $ra
	sltui	$a3, $a3, 1
	sub.d	$a4, $zero, $s5
	masknez	$a4, $a4, $a3
	maskeqz	$a3, $s3, $a3
	or	$a3, $a3, $a4
	maskeqz	$a3, $a3, $a0
	masknez	$a0, $s5, $a0
	or	$a0, $a3, $a0
	ext.w.h	$a0, $a0
	ext.w.h	$a3, $a1
	addi.d	$s8, $s8, -1
	blt	$a3, $a0, .LBB0_67
.LBB0_25:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_28 Depth 2
	move	$s2, $a2
	ext.w.h	$a0, $a0
	ext.w.h	$s1, $a1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(gsm_div)
	jirl	$ra, $ra, 0
	lu12i.w	$ra, 8
	ext.w.h	$a1, $s5
	slt	$a2, $zero, $a1
	sub.d	$a3, $zero, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a3, $a2
	or	$a0, $a2, $a0
	st.h	$a0, $s0, 0
	beq	$s2, $s7, .LBB0_19
# %bb.26:                               #   in Loop: Header=BB0_25 Depth=1
	ext.w.h	$a0, $a0
	ori	$a2, $zero, 7
	bltu	$a2, $s2, .LBB0_24
# %bb.27:                               # %.lr.ph.i
                                        #   in Loop: Header=BB0_25 Depth=1
	ori	$a3, $zero, 1
	sltu	$a2, $a3, $s8
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $s8, $a2
	or	$a2, $a2, $a3
	slli.d	$a3, $a0, 33
	addi.d	$a4, $sp, 22
	addi.d	$a5, $sp, 42
	.p2align	4, , 16
.LBB0_28:                               #   Parent Loop BB0_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a6, $a4, 0
	ld.h	$a7, $a5, 0
	mul.d	$t0, $a3, $a6
	add.d	$t0, $t0, $fp
	srai.d	$t0, $t0, 48
	add.d	$t0, $t0, $a7
	slt	$t1, $t0, $s3
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $s3, $t1
	or	$t0, $t0, $t1
	slt	$t1, $s4, $t0
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $s4, $t1
	or	$t0, $t0, $t1
	st.h	$t0, $a5, -2
	mul.d	$a7, $a3, $a7
	add.d	$a7, $a7, $fp
	srai.d	$a7, $a7, 48
	add.d	$a6, $a7, $a6
	slt	$a7, $a6, $s3
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $s3, $a7
	or	$a6, $a6, $a7
	slt	$a7, $s4, $a6
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $s4, $a7
	or	$a6, $a6, $a7
	st.h	$a6, $a4, 0
	addi.d	$a2, $a2, -1
	addi.d	$a5, $a5, 2
	addi.d	$a4, $a4, 2
	bnez	$a2, .LBB0_28
# %bb.29:                               # %._crit_edge.i.loopexit
                                        #   in Loop: Header=BB0_25 Depth=1
	ld.hu	$s5, $sp, 40
	b	.LBB0_24
.LBB0_30:
	lu12i.w	$a2, 6
	ori	$a2, $a2, 2048
	alsl.d	$a1, $a1, $a2, 2
.LBB0_31:
	ld.hu	$a4, $s1, 2
	ext.w.h	$a2, $a4
	slti	$a2, $a2, 0
	xor	$a5, $a4, $ra
	sltui	$a5, $a5, 1
	sub.d	$a6, $zero, $a4
	masknez	$a6, $a6, $a5
	maskeqz	$a5, $s3, $a5
	or	$a5, $a5, $a6
	maskeqz	$a5, $a5, $a2
	masknez	$a4, $a4, $a2
	or	$a4, $a5, $a4
	ext.w.h	$a6, $a4
	ori	$a5, $a3, 1638
	bge	$a6, $a5, .LBB0_33
# %bb.32:
	srai.d	$a3, $a6, 1
	b	.LBB0_36
.LBB0_33:
	bstrpick.d	$a3, $a4, 15, 0
	ori	$a6, $s2, 2458
	bgeu	$a3, $a6, .LBB0_35
# %bb.34:
	lu12i.w	$a3, -3
	ori	$a3, $a3, 1229
	add.d	$a3, $a4, $a3
	b	.LBB0_36
.LBB0_35:
	lu12i.w	$a3, 6
	ori	$a3, $a3, 2048
	alsl.d	$a3, $a4, $a3, 2
.LBB0_36:
	ld.hu	$a6, $s1, 4
	ext.w.h	$a4, $a6
	slti	$a4, $a4, 0
	xor	$a7, $a6, $ra
	sltui	$a7, $a7, 1
	sub.d	$t0, $zero, $a6
	masknez	$t0, $t0, $a7
	maskeqz	$a7, $s3, $a7
	or	$a7, $a7, $t0
	maskeqz	$a7, $a7, $a4
	masknez	$a6, $a6, $a4
	or	$a6, $a7, $a6
	ext.w.h	$a7, $a6
	bge	$a7, $a5, .LBB0_38
# %bb.37:
	srai.d	$a6, $a7, 1
	b	.LBB0_41
.LBB0_38:
	bstrpick.d	$a7, $a6, 15, 0
	ori	$t0, $s2, 2458
	bgeu	$a7, $t0, .LBB0_40
# %bb.39:
	lu12i.w	$a7, -3
	ori	$a7, $a7, 1229
	add.d	$a6, $a6, $a7
	b	.LBB0_41
.LBB0_40:
	lu12i.w	$a7, 6
	ori	$a7, $a7, 2048
	alsl.d	$a6, $a6, $a7, 2
.LBB0_41:
	ld.hu	$t0, $s1, 6
	ext.w.h	$a7, $t0
	slti	$a7, $a7, 0
	xor	$t1, $t0, $ra
	sltui	$t1, $t1, 1
	sub.d	$t2, $zero, $t0
	masknez	$t2, $t2, $t1
	maskeqz	$t1, $s3, $t1
	or	$t1, $t1, $t2
	maskeqz	$t1, $t1, $a7
	masknez	$t0, $t0, $a7
	or	$t0, $t1, $t0
	ext.w.h	$t1, $t0
	bge	$t1, $a5, .LBB0_43
# %bb.42:
	srai.d	$t0, $t1, 1
	b	.LBB0_46
.LBB0_43:
	bstrpick.d	$t1, $t0, 15, 0
	ori	$t2, $s2, 2458
	bgeu	$t1, $t2, .LBB0_45
# %bb.44:
	lu12i.w	$t1, -3
	ori	$t1, $t1, 1229
	add.d	$t0, $t0, $t1
	b	.LBB0_46
.LBB0_45:
	lu12i.w	$t1, 6
	ori	$t1, $t1, 2048
	alsl.d	$t0, $t0, $t1, 2
.LBB0_46:
	ld.hu	$t2, $s1, 8
	ext.w.h	$t1, $t2
	slti	$t1, $t1, 0
	xor	$t3, $t2, $ra
	sltui	$t3, $t3, 1
	sub.d	$t4, $zero, $t2
	masknez	$t4, $t4, $t3
	maskeqz	$t3, $s3, $t3
	or	$t3, $t3, $t4
	maskeqz	$t3, $t3, $t1
	masknez	$t2, $t2, $t1
	or	$t2, $t3, $t2
	ext.w.h	$t3, $t2
	bge	$t3, $a5, .LBB0_48
# %bb.47:
	srai.d	$t2, $t3, 1
	b	.LBB0_51
.LBB0_48:
	bstrpick.d	$t3, $t2, 15, 0
	ori	$t4, $s2, 2458
	bgeu	$t3, $t4, .LBB0_50
# %bb.49:
	lu12i.w	$t3, -3
	ori	$t3, $t3, 1229
	add.d	$t2, $t2, $t3
	b	.LBB0_51
.LBB0_50:
	lu12i.w	$t3, 6
	ori	$t3, $t3, 2048
	alsl.d	$t2, $t2, $t3, 2
.LBB0_51:
	ld.hu	$t4, $s1, 10
	ext.w.h	$t3, $t4
	slti	$t3, $t3, 0
	xor	$t5, $t4, $ra
	sltui	$t5, $t5, 1
	sub.d	$t6, $zero, $t4
	masknez	$t6, $t6, $t5
	maskeqz	$t5, $s3, $t5
	or	$t5, $t5, $t6
	maskeqz	$t5, $t5, $t3
	masknez	$t4, $t4, $t3
	or	$t4, $t5, $t4
	ext.w.h	$t5, $t4
	bge	$t5, $a5, .LBB0_53
# %bb.52:
	srai.d	$t4, $t5, 1
	b	.LBB0_56
.LBB0_53:
	bstrpick.d	$t5, $t4, 15, 0
	ori	$t6, $s2, 2458
	bgeu	$t5, $t6, .LBB0_55
# %bb.54:
	lu12i.w	$t5, -3
	ori	$t5, $t5, 1229
	add.d	$t4, $t4, $t5
	b	.LBB0_56
.LBB0_55:
	lu12i.w	$t5, 6
	ori	$t5, $t5, 2048
	alsl.d	$t4, $t4, $t5, 2
.LBB0_56:
	ld.hu	$t6, $s1, 12
	ext.w.h	$t5, $t6
	slti	$t5, $t5, 0
	xor	$t7, $t6, $ra
	sltui	$t7, $t7, 1
	sub.d	$t8, $zero, $t6
	masknez	$t8, $t8, $t7
	maskeqz	$t7, $s3, $t7
	or	$t7, $t7, $t8
	maskeqz	$t7, $t7, $t5
	masknez	$t6, $t6, $t5
	or	$t6, $t7, $t6
	ext.w.h	$t7, $t6
	bge	$t7, $a5, .LBB0_58
# %bb.57:
	srai.d	$t7, $t7, 1
	b	.LBB0_61
.LBB0_58:
	bstrpick.d	$t7, $t6, 15, 0
	ori	$t8, $s2, 2458
	bgeu	$t7, $t8, .LBB0_60
# %bb.59:
	lu12i.w	$t7, -3
	ori	$t7, $t7, 1229
	add.d	$t7, $t6, $t7
	b	.LBB0_61
.LBB0_60:
	lu12i.w	$t7, 6
	ori	$t7, $t7, 2048
	alsl.d	$t7, $t6, $t7, 2
.LBB0_61:
	ld.hu	$t8, $s1, 14
	ext.w.h	$t6, $t8
	slti	$t6, $t6, 0
	xor	$fp, $t8, $ra
	sltui	$fp, $fp, 1
	sub.d	$s0, $zero, $t8
	masknez	$s0, $s0, $fp
	maskeqz	$fp, $s3, $fp
	or	$fp, $fp, $s0
	maskeqz	$fp, $fp, $t6
	masknez	$t8, $t8, $t6
	or	$t8, $fp, $t8
	ext.w.h	$fp, $t8
	bge	$fp, $a5, .LBB0_63
# %bb.62:
	srai.d	$t8, $fp, 1
	b	.LBB0_66
.LBB0_63:
	bstrpick.d	$a5, $t8, 15, 0
	ori	$fp, $s2, 2458
	bgeu	$a5, $fp, .LBB0_65
# %bb.64:
	lu12i.w	$a5, -3
	ori	$a5, $a5, 1229
	add.d	$t8, $t8, $a5
	b	.LBB0_66
.LBB0_65:
	lu12i.w	$a5, 6
	ori	$a5, $a5, 2048
	alsl.d	$t8, $t8, $a5, 2
.LBB0_66:                               # %Transformation_to_Log_Area_Ratios.exit
	sub.d	$a5, $zero, $t7
	masknez	$t7, $t7, $t5
	maskeqz	$a5, $a5, $t5
	or	$a5, $a5, $t7
	sub.d	$t5, $zero, $t4
	masknez	$t4, $t4, $t3
	maskeqz	$t3, $t5, $t3
	or	$t3, $t3, $t4
	sub.d	$t4, $zero, $t2
	masknez	$t2, $t2, $t1
	maskeqz	$t1, $t4, $t1
	or	$t1, $t1, $t2
	sub.d	$t2, $zero, $t0
	masknez	$t0, $t0, $a7
	maskeqz	$a7, $t2, $a7
	or	$a7, $a7, $t0
	sub.d	$t0, $zero, $a6
	masknez	$a6, $a6, $a4
	maskeqz	$a4, $t0, $a4
	or	$a4, $a4, $a6
	sub.d	$a6, $zero, $a3
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a6, $a2
	or	$a3, $a2, $a3
	sub.d	$a2, $zero, $a1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
	sub.d	$a0, $zero, $t8
	masknez	$a2, $t8, $t6
	maskeqz	$a0, $a0, $t6
	or	$a0, $a0, $a2
	ext.w.h	$a1, $a1
	lu12i.w	$a6, 10
	mul.d	$a1, $a1, $a6
	addu16i.d	$a1, $a1, 256
	addi.w	$a1, $a1, 0
	srai.d	$a1, $a1, 25
	ori	$a2, $zero, 31
	slt	$t0, $a2, $a1
	addi.d	$a1, $a1, 32
	masknez	$a1, $a1, $t0
	ori	$t2, $zero, 63
	maskeqz	$t0, $t2, $t0
	or	$a1, $t0, $a1
	st.h	$a1, $s1, 0
	ext.w.h	$a1, $a3
	mul.d	$a1, $a1, $a6
	addu16i.d	$a1, $a1, 256
	addi.w	$a1, $a1, 0
	srai.d	$a1, $a1, 25
	slt	$a3, $a2, $a1
	addi.d	$a1, $a1, 32
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $t2, $a3
	or	$a1, $a3, $a1
	st.h	$a1, $s1, 2
	ext.w.h	$a3, $a4
	ori	$a1, $zero, 0
	ori	$a4, $zero, 0
	lu32i.d	$a4, 40960
	mul.d	$a3, $a3, $a4
	lu52i.d	$a6, $zero, 128
	add.d	$a3, $a3, $a6
	srli.d	$a3, $a3, 32
	addu16i.d	$a3, $a3, 256
	addi.w	$a3, $a3, 0
	srai.d	$a6, $a3, 25
	ori	$a3, $zero, 15
	slt	$t0, $a3, $a6
	addi.w	$t2, $zero, -16
	slt	$t4, $t2, $a6
	maskeqz	$a6, $a6, $t4
	masknez	$t4, $t2, $t4
	or	$a6, $a6, $t4
	addi.d	$a6, $a6, 16
	masknez	$a6, $a6, $t0
	maskeqz	$t0, $a2, $t0
	or	$a6, $t0, $a6
	st.h	$a6, $s1, 4
	ext.w.h	$a6, $a7
	mul.d	$a4, $a6, $a4
	lu52i.d	$a6, $zero, -160
	add.d	$a4, $a4, $a6
	srli.d	$a4, $a4, 32
	addu16i.d	$a4, $a4, 256
	addi.w	$a4, $a4, 0
	srai.d	$a4, $a4, 25
	slt	$a6, $a3, $a4
	slt	$a7, $t2, $a4
	maskeqz	$a4, $a4, $a7
	masknez	$a7, $t2, $a7
	or	$a4, $a4, $a7
	addi.d	$a4, $a4, 16
	masknez	$a4, $a4, $a6
	maskeqz	$a2, $a2, $a6
	or	$a2, $a2, $a4
	st.h	$a2, $s1, 6
	ext.w.h	$a2, $t1
	ori	$a4, $zero, 0
	lu32i.d	$a4, 27928
	mul.d	$a2, $a2, $a4
	ori	$a4, $zero, 0
	lu32i.d	$a4, -131072
	lu52i.d	$a4, $a4, 5
	add.d	$a2, $a2, $a4
	srli.d	$a2, $a2, 32
	addu16i.d	$a2, $a2, 256
	addi.w	$a2, $a2, 0
	srai.d	$a4, $a2, 25
	ori	$a2, $zero, 7
	slt	$a6, $a2, $a4
	addi.w	$a7, $zero, -8
	slt	$t0, $a7, $a4
	maskeqz	$a4, $a4, $t0
	masknez	$t0, $a7, $t0
	or	$a4, $a4, $t0
	addi.d	$a4, $a4, 8
	masknez	$a4, $a4, $a6
	maskeqz	$a6, $a3, $a6
	or	$a4, $a6, $a4
	st.h	$a4, $s1, 8
	ext.w.h	$a4, $t3
	ori	$a6, $zero, 0
	lu32i.d	$a6, 30720
	mul.d	$a4, $a4, $a6
	lu52i.d	$a6, $zero, -112
	add.d	$a4, $a4, $a6
	srli.d	$a4, $a4, 32
	addu16i.d	$a4, $a4, 256
	addi.w	$a4, $a4, 0
	srai.d	$a4, $a4, 25
	slt	$a6, $a2, $a4
	slt	$t0, $a7, $a4
	maskeqz	$a4, $a4, $t0
	masknez	$a7, $a7, $t0
	or	$a4, $a4, $a7
	addi.d	$a4, $a4, 8
	masknez	$a4, $a4, $a6
	maskeqz	$a3, $a3, $a6
	or	$a3, $a3, $a4
	st.h	$a3, $s1, 10
	ext.w.h	$a3, $a5
	ori	$a4, $zero, 0
	lu32i.d	$a4, 17068
	mul.d	$a3, $a3, $a4
	ori	$a4, $zero, 0
	lu32i.d	$a4, -327680
	lu52i.d	$a4, $a4, -22
	add.d	$a3, $a3, $a4
	srli.d	$a3, $a3, 32
	addu16i.d	$a3, $a3, 256
	addi.w	$a3, $a3, 0
	srai.d	$a3, $a3, 25
	ori	$a4, $zero, 3
	slt	$a5, $a4, $a3
	addi.w	$a6, $zero, -4
	slt	$a7, $a6, $a3
	maskeqz	$a3, $a3, $a7
	masknez	$a7, $a6, $a7
	or	$a3, $a3, $a7
	addi.d	$a3, $a3, 4
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $a2, $a5
	or	$a3, $a5, $a3
	st.h	$a3, $s1, 12
	ext.w.h	$a0, $a0
	ori	$a3, $zero, 0
	lu32i.d	$a3, 18072
	mul.d	$a0, $a0, $a3
	lu32i.d	$a1, -524288
	lu52i.d	$a1, $a1, -72
	add.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 32
	addu16i.d	$a0, $a0, 256
	addi.w	$a0, $a0, 0
	srai.d	$a0, $a0, 25
	slt	$a1, $a4, $a0
	slt	$a3, $a6, $a0
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a6, $a3
	or	$a0, $a0, $a3
	addi.d	$a0, $a0, 4
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	st.h	$a0, $s1, 14
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
.LBB0_67:                               # %.preheader64.i
	ori	$a0, $zero, 7
	bltu	$a0, $s2, .LBB0_19
# %bb.68:
	slli.d	$a0, $s6, 1
	ori	$a1, $zero, 16
	sub.d	$a2, $a1, $a0
	b	.LBB0_17
.Lfunc_end0:
	.size	Gsm_LPC_Analysis, .Lfunc_end0-Gsm_LPC_Analysis
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_4-.LJTI0_0
	.word	.LBB0_9-.LJTI0_0
	.word	.LBB0_7-.LJTI0_0
	.word	.LBB0_8-.LJTI0_0
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
