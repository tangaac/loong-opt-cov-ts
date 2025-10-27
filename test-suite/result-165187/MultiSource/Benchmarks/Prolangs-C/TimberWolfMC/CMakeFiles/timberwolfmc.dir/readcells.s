	.file	"readcells.c"
	.text
	.globl	readcells                       # -- Begin function readcells
	.p2align	5
	.type	readcells,@function
readcells:                              # @readcells
# %bb.0:
	addi.d	$sp, $sp, -1472
	st.d	$ra, $sp, 1464                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1456                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1448                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1440                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1432                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1424                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1416                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1408                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1400                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1392                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1384                  # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(parser)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pass2)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(perim)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(perim)
	ori	$a0, $zero, 1020
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(kArray)
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(kArray)
	addi.d	$a0, $a0, 20
	ori	$a2, $zero, 1000
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 248
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$s5, %pc_hi20(A)
	st.d	$a0, $s5, %pc_lo12(A)
	ori	$a0, $zero, 248
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(B)
	st.d	$a0, $s1, %pc_lo12(B)
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$s3, %pc_hi20(R)
	st.d	$a0, $s3, %pc_lo12(R)
	ori	$a0, $zero, 744
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(pSideArray)
	ld.d	$a1, $a1, %got_pc_lo12(pSideArray)
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ori	$s4, $zero, 1
	bne	$a0, $s4, .LBB0_184
# %bb.1:                                # %.lr.ph1123.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$a0, $a0, %got_pc_lo12(cellarray)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 272                  # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	st.d	$zero, $sp, 168                 # 8-byte Folded Spill
	st.d	$zero, $sp, 264                 # 8-byte Folded Spill
	lu12i.w	$a0, 1606
	ori	$a0, $a0, 368
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	lu12i.w	$a0, 472646
	ori	$a0, $a0, 368
	lu32i.d	$a0, 353385
	lu52i.d	$a0, $a0, 6
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	lu12i.w	$a0, 1766
	ori	$a0, $a0, 2416
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
                                        # implicit-def: $r25
                                        # implicit-def: $r29
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $vr0
                                        # kill: killed $vr0
                                        # implicit-def: $vr0
                                        # kill: killed $vr0
                                        # implicit-def: $vr0
                                        # kill: killed $vr0
                                        # implicit-def: $vr0
                                        # kill: killed $vr0
	st.d	$s1, $sp, 216                   # 8-byte Folded Spill
	b	.LBB0_6
.LBB0_2:                                #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(fixLRBT)
	ld.d	$a0, $a0, %got_pc_lo12(fixLRBT)
	ld.d	$a0, $a0, 0
	fld.d	$fa0, $sp, 1312
	st.w	$s4, $a0, 4
.LBB0_3:                                # %.loopexit
                                        #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(padspace)
	ld.d	$a0, $a0, %got_pc_lo12(padspace)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	fstx.d	$fa0, $a0, $a1
	.p2align	4, , 16
.LBB0_4:                                # %.loopexit
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s7, $s2
.LBB0_5:                                # %.loopexit
                                        #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	move	$s2, $s7
	bne	$a0, $s4, .LBB0_184
.LBB0_6:                                # %.lr.ph1123
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_59 Depth 2
                                        #     Child Loop BB0_161 Depth 2
                                        #     Child Loop BB0_173 Depth 2
                                        #     Child Loop BB0_177 Depth 2
                                        #     Child Loop BB0_180 Depth 2
                                        #     Child Loop BB0_183 Depth 2
                                        #     Child Loop BB0_141 Depth 2
                                        #     Child Loop BB0_90 Depth 2
                                        #     Child Loop BB0_147 Depth 2
                                        #     Child Loop BB0_143 Depth 2
                                        #     Child Loop BB0_73 Depth 2
                                        #     Child Loop BB0_78 Depth 2
                                        #     Child Loop BB0_97 Depth 2
                                        #     Child Loop BB0_112 Depth 2
                                        #     Child Loop BB0_118 Depth 2
                                        #     Child Loop BB0_129 Depth 2
                                        #       Child Loop BB0_133 Depth 3
                                        #     Child Loop BB0_106 Depth 2
                                        #     Child Loop BB0_39 Depth 2
                                        #     Child Loop BB0_64 Depth 2
                                        #     Child Loop BB0_67 Depth 2
                                        #     Child Loop BB0_26 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_43 Depth 2
                                        #     Child Loop BB0_50 Depth 2
                                        #     Child Loop BB0_54 Depth 2
	addi.d	$a0, $sp, 288
	ori	$a2, $zero, 5
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_22
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $sp, 288
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_35
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 288
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_44
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	addi.d	$a0, $sp, 288
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_55
# %bb.10:                               #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	addi.d	$a0, $sp, 288
	ori	$a2, $zero, 9
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_69
# %bb.11:                               #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $sp, 288
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_83
# %bb.12:                               #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	addi.d	$a0, $sp, 288
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_99
# %bb.13:                               #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	addi.d	$a0, $sp, 288
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_122
# %bb.14:                               #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	addi.d	$a0, $sp, 288
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_138
# %bb.15:                               #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	addi.d	$a0, $sp, 288
	ori	$a2, $zero, 9
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	addi.d	$a0, $sp, 288
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_4
.LBB0_17:                               #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $s6, 72
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, 72
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	addi.d	$a0, $sp, 288
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1368
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1368
	blez	$a0, .LBB0_150
# %bb.18:                               # %.lr.ph
                                        #   in Loop: Header=BB0_6 Depth=1
	st.d	$s2, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$s0, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s8, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	move	$a1, $s8
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	move	$a1, $s8
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	move	$a1, $s8
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(pinnames)
	ld.d	$a1, $a1, %got_pc_lo12(pinnames)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	addi.d	$s0, $s0, 1
	slli.d	$a2, $s0, 3
	stx.d	$a0, $a1, $a2
	addi.d	$a1, $sp, 288
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	move	$a1, $s8
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	move	$a1, $s8
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(hashfind)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(netarray)
	ld.d	$a1, $a1, %got_pc_lo12(netarray)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	slli.d	$a2, $a0, 3
	ldx.d	$s4, $a1, $a2
	ld.d	$a2, $s4, 64
	bnez	$a2, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_6 Depth=1
	alsl.d	$s1, $a0, $a1, 3
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 64
	addi.d	$a1, $sp, 288
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s1, 0
.LBB0_20:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s2, $s4, 0
	sltui	$s8, $s7, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.w	$s1, $a0, 0
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 0
	st.d	$s2, $a0, 0
	vld	$vr0, $sp, 272                  # 16-byte Folded Reload
	vst	$vr0, $a0, 8
	ld.d	$a1, $s6, 144
	ld.w	$a2, $sp, 1368
	addi.d	$s7, $s1, 1
	ori	$a3, $zero, 44
	mul.d	$a3, $s7, $a3
	add.d	$a4, $a1, $a3
	st.w	$a2, $a4, 28
	stx.w	$s0, $a1, $a3
	st.d	$s8, $sp, 48                    # 8-byte Folded Spill
	st.w	$s8, $a4, 32
	ld.w	$a1, $sp, 1368
	st.w	$s0, $a0, 24
	st.w	$zero, $a0, 28
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	st.w	$a2, $a0, 32
	st.w	$zero, $a0, 40
	move	$a3, $s7
	ori	$a0, $zero, 2
	blt	$a1, $a0, .LBB0_152
# %bb.21:                               # %.peel.next.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s8, $zero
	ori	$a0, $zero, 44
	mul.d	$s0, $s1, $a0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	addi.d	$s4, $a0, 16
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	move	$a3, $s7
	b	.LBB0_59
	.p2align	4, , 16
.LBB0_22:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	blez	$a0, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_6 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(watesides)
	jirl	$ra, $ra, 0
.LBB0_24:                               # %.preheader933
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	ldx.d	$s6, $a0, $a1
	addi.d	$a2, $sp, 1336
	move	$a0, $fp
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, 0
	addi.d	$a1, $sp, 288
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(A)
	ori	$a2, $zero, 248
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(R)
	vld	$vr0, $sp, 272                  # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	vst	$vr0, $a0, 16
	vst	$vr0, $a0, 32
	addi.d	$a2, $sp, 1348
	move	$a0, $fp
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1348
	blez	$a0, .LBB0_27
# %bb.25:                               # %.lr.ph1071.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s0, $zero
	.p2align	4, , 16
.LBB0_26:                               # %.lr.ph1071
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	addi.d	$a2, $sp, 1344
	addi.d	$a3, $sp, 1340
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(A)
	ld.w	$a1, $a0, 0
	ld.w	$a2, $sp, 1344
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 0
	slli.d	$a1, $a1, 3
	stx.w	$a2, $a0, $a1
	ld.w	$a1, $a0, 0
	ld.w	$a2, $sp, 1340
	alsl.d	$a0, $a1, $a0, 3
	st.w	$a2, $a0, 4
	ld.w	$a0, $sp, 1348
	addi.w	$s0, $s0, 1
	blt	$s0, $a0, .LBB0_26
.LBB0_27:                               # %._crit_edge1072
                                        #   in Loop: Header=BB0_6 Depth=1
	st.w	$a0, $s6, 64
	pcaddu18i	$ra, %call36(perimeter)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a2, $a3, %pc_lo12(perim)
	ld.d	$a1, $s5, %pc_lo12(A)
	add.d	$a0, $a2, $a0
	st.w	$a0, $a3, %pc_lo12(perim)
	ld.w	$a0, $a1, 0
	vld	$vr1, $sp, 240                  # 16-byte Folded Reload
	vld	$vr2, $sp, 224                  # 16-byte Folded Reload
	blez	$a0, .LBB0_49
# %bb.28:                               # %.lr.ph1077
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a4, $a2, 0
	addi.d	$a2, $a0, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a1, 12
	addi.d	$a4, $a4, 24
	ori	$a5, $zero, 1
	b	.LBB0_31
	.p2align	4, , 16
.LBB0_29:                               #   in Loop: Header=BB0_31 Depth=2
	ld.w	$a6, $a1, 8
	ld.w	$a7, $a3, -4
	sub.w	$a6, $a6, $a7
	srai.d	$a7, $a6, 31
	xor	$a6, $a6, $a7
	sub.d	$a6, $a6, $a7
	st.w	$a6, $a4, 0
	st.w	$zero, $a4, 16
	st.d	$zero, $a4, 8
	move	$a6, $a3
.LBB0_30:                               #   in Loop: Header=BB0_31 Depth=2
	ld.w	$a6, $a6, 0
	st.w	$a6, $a4, 20
	addi.d	$a5, $a5, 1
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, 24
	beq	$a2, $a5, .LBB0_41
.LBB0_31:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bgeu	$a5, $a0, .LBB0_29
# %bb.32:                               #   in Loop: Header=BB0_31 Depth=2
	andi	$a7, $a5, 1
	alsl.d	$a6, $a5, $a1, 3
	bnez	$a7, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_31 Depth=2
	ld.w	$a7, $a3, 4
	ld.w	$t0, $a3, -4
	sub.w	$a7, $a7, $t0
	srai.d	$t0, $a7, 31
	xor	$a7, $a7, $t0
	sub.d	$a7, $a7, $t0
	st.w	$a7, $a4, 0
	st.w	$zero, $a4, 16
	st.d	$zero, $a4, 8
	addi.d	$a6, $a6, 4
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_34:                               #   in Loop: Header=BB0_31 Depth=2
	ld.w	$a7, $a3, 8
	ld.w	$t0, $a3, 0
	sub.w	$a7, $a7, $t0
	srai.d	$t0, $a7, 31
	xor	$a7, $a7, $t0
	sub.d	$a7, $a7, $t0
	st.w	$a7, $a4, 0
	st.w	$s4, $a4, 16
	st.d	$zero, $a4, 8
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_35:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	bnez	$s4, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_6 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(watesides)
	jirl	$ra, $ra, 0
.LBB0_37:                               # %.preheader936
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	ldx.d	$s6, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	addi.d	$a2, $sp, 1336
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s7, $a0, %pc_lo12(.L.str.3)
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, 0
	addi.d	$a1, $sp, 288
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(A)
	ori	$a2, $zero, 248
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(R)
	vld	$vr0, $sp, 272                  # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	vst	$vr0, $a0, 16
	vst	$vr0, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1348
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1348
	blez	$a0, .LBB0_61
# %bb.38:                               # %.lr.ph1053.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s0, $zero
	.p2align	4, , 16
.LBB0_39:                               # %.lr.ph1053
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	addi.d	$a2, $sp, 1344
	addi.d	$a3, $sp, 1340
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(A)
	ld.w	$a1, $a0, 0
	ld.w	$a2, $sp, 1344
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 0
	slli.d	$a1, $a1, 3
	stx.w	$a2, $a0, $a1
	ld.w	$a1, $a0, 0
	ld.w	$a2, $sp, 1340
	alsl.d	$a3, $a1, $a0, 3
	st.w	$a2, $a3, 4
	ld.w	$a2, $sp, 1348
	addi.w	$s0, $s0, 1
	blt	$s0, $a2, .LBB0_39
# %bb.40:                               # %.preheader935
                                        #   in Loop: Header=BB0_6 Depth=1
	vld	$vr1, $sp, 240                  # 16-byte Folded Reload
	vld	$vr2, $sp, 224                  # 16-byte Folded Reload
	bgtz	$a1, .LBB0_62
	b	.LBB0_66
	.p2align	4, , 16
.LBB0_41:                               # %.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $a1, 8
	vinsgr2vr.d	$vr1, $a0, 0
	addi.d	$a0, $sp, 1344
	vstelm.w	$vr1, $a0, 0, 0
	addi.d	$a0, $sp, 1340
	vstelm.w	$vr1, $a0, 0, 1
	ld.w	$a0, $a1, 0
	ori	$a2, $zero, 2
	blt	$a0, $a2, .LBB0_48
# %bb.42:                               # %.lr.ph1085.peel.next.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a0, $a1, 20
	ori	$a2, $zero, 1
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB0_43:                               # %.lr.ph1085.peel.next
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a0, -4
	st.w	$a3, $sp, 1344
	ld.w	$a4, $a0, 0
	st.w	$a4, $sp, 1340
	vinsgr2vr.w	$vr0, $a3, 0
	vinsgr2vr.w	$vr0, $a4, 1
	ld.w	$a3, $a1, 0
	vmin.w	$vr2, $vr0, $vr2
	vmax.w	$vr1, $vr0, $vr1
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, 8
	blt	$a2, $a3, .LBB0_43
	b	.LBB0_49
.LBB0_44:                               #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $sp, 288
	ori	$a1, $zero, 76
	beq	$a0, $a1, .LBB0_82
# %bb.45:                               #   in Loop: Header=BB0_6 Depth=1
	ld.hu	$a0, $sp, 288
	ori	$a1, $zero, 84
	beq	$a0, $a1, .LBB0_98
# %bb.46:                               #   in Loop: Header=BB0_6 Depth=1
	ld.hu	$a0, $sp, 288
	ori	$a1, $zero, 82
	beq	$a0, $a1, .LBB0_102
# %bb.47:                               #   in Loop: Header=BB0_6 Depth=1
	ld.hu	$a1, $sp, 288
	ori	$a0, $zero, 4
	ori	$a2, $zero, 66
	beq	$a1, $a2, .LBB0_103
	b	.LBB0_185
.LBB0_48:                               #   in Loop: Header=BB0_6 Depth=1
	vori.b	$vr2, $vr1, 0
.LBB0_49:                               # %._crit_edge1086
                                        #   in Loop: Header=BB0_6 Depth=1
	vst	$vr2, $sp, 224                  # 16-byte Folded Spill
	vst	$vr1, $sp, 240                  # 16-byte Folded Spill
	ori	$a0, $zero, 104
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.d	$a0, $s6, 152
	st.d	$zero, $a0, 0
	vld	$vr4, $sp, 240                  # 16-byte Folded Reload
	vld	$vr3, $sp, 224                  # 16-byte Folded Reload
	vadd.w	$vr0, $vr4, $vr3
	vsrli.w	$vr1, $vr0, 31
	vadd.w	$vr0, $vr0, $vr1
	vsrai.w	$vr2, $vr0, 1
	vpickve2gr.w	$s0, $vr2, 0
	vpickve2gr.w	$s4, $vr2, 1
	vsub.w	$vr0, $vr3, $vr2
	vld	$vr3, $sp, 272                  # 16-byte Folded Reload
	vst	$vr3, $a0, 88
	vsub.w	$vr1, $vr4, $vr2
	vilvl.w	$vr0, $vr1, $vr0
	vst	$vr0, $a0, 72
	vst	$vr0, $a0, 56
	vst	$vr3, $a0, 40
	vstelm.w	$vr2, $s6, 12, 0
	vst	$vr2, $sp, 192                  # 16-byte Folded Spill
	vstelm.w	$vr2, $s6, 16, 1
	st.w	$zero, $s6, 60
	.p2align	4, , 16
.LBB0_50:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s6, 60
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, 60
	ori	$a0, $zero, 104
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	st.d	$a0, $s7, 0
	st.d	$zero, $a0, 0
	vld	$vr0, $sp, 272                  # 16-byte Folded Reload
	vst	$vr0, $a0, 88
	pcaddu18i	$ra, %call36(buster)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(R)
	ld.w	$a1, $a0, 8
	sub.d	$a1, $a1, $s0
	ld.w	$a2, $a0, 32
	st.w	$a1, $s8, 72
	st.w	$a1, $s8, 56
	ld.w	$a1, $a0, 12
	sub.d	$a2, $a2, $s0
	st.w	$a2, $s8, 76
	st.w	$a2, $s8, 60
	sub.d	$a1, $a1, $s4
	ld.d	$a2, $s5, %pc_lo12(A)
	st.w	$a1, $s8, 80
	ld.w	$a0, $a0, 20
	vld	$vr0, $sp, 272                  # 16-byte Folded Reload
	vst	$vr0, $s8, 40
	ld.w	$a2, $a2, 0
	st.w	$a1, $s8, 64
	sub.d	$a0, $a0, $s4
	st.w	$a0, $s8, 84
	st.w	$a0, $s8, 68
	move	$s7, $s8
	bgtz	$a2, .LBB0_50
# %bb.51:                               #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s7, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s8, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1360
	move	$a0, $fp
	move	$a1, $s8
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1360
	st.w	$a0, $s6, 8
	addi.d	$a2, $sp, 1364
	move	$a0, $fp
	move	$a1, $s8
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1364
	blez	$a0, .LBB0_68
# %bb.52:                               #   in Loop: Header=BB0_6 Depth=1
	addi.d	$s0, $s6, 20
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1380
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1380
	slli.d	$a0, $a0, 2
	ori	$s4, $zero, 1
	stx.w	$s4, $s0, $a0
	ld.w	$a0, $sp, 1380
	ld.w	$a1, $sp, 1364
	st.w	$a0, $s6, 56
	st.w	$a0, $s6, 52
	ori	$a0, $zero, 2
	blt	$a1, $a0, .LBB0_4
# %bb.53:                               # %.peel.next1228.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB0_54:                               # %.peel.next1228
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1380
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1380
	slli.d	$a0, $a0, 2
	stx.w	$s4, $s0, $a0
	ld.w	$a0, $sp, 1364
	addi.w	$s1, $s1, 1
	blt	$s1, $a0, .LBB0_54
	b	.LBB0_107
.LBB0_55:                               #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	addi.d	$a2, $sp, 1312
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 80
	addi.d	$a0, $a0, -1
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB0_4
# %bb.56:                               #   in Loop: Header=BB0_6 Depth=1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI0_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB0_57:                               #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(fixLRBT)
	ld.d	$a0, $a0, %got_pc_lo12(fixLRBT)
	ld.d	$a0, $a0, 0
	fld.d	$fa0, $sp, 1312
	st.w	$s4, $a0, 0
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_58:                               #   in Loop: Header=BB0_59 Depth=2
	ld.d	$s2, $s1, 0
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 0
	st.d	$s2, $a0, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.d	$a1, $a1, $s8
	addi.d	$a1, $a1, 2
	st.w	$a1, $a0, 24
	st.w	$zero, $a0, 28
	vld	$vr0, $sp, 272                  # 16-byte Folded Reload
	vst	$vr0, $a0, 8
	ld.d	$a2, $s6, 144
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	st.w	$a3, $a0, 32
	st.w	$zero, $a0, 40
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	add.d	$a0, $a2, $s0
	st.w	$zero, $a0, 116
	st.w	$a1, $a0, 88
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.w	$a1, $a0, 120
	ld.w	$a1, $sp, 1368
	addi.d	$s0, $s0, 44
	addi.d	$a0, $s8, 1
	addi.w	$a2, $s8, 2
	addi.d	$s4, $s4, 8
	move	$s8, $a0
	bge	$a2, $a1, .LBB0_151
.LBB0_59:                               # %.peel.next
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s7, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	stx.d	$a0, $a1, $s4
	addi.d	$a1, $sp, 288
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(hashfind)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	slli.d	$a2, $a0, 3
	ldx.d	$s1, $a1, $a2
	ld.d	$a2, $s1, 64
	bnez	$a2, .LBB0_58
# %bb.60:                               #   in Loop: Header=BB0_59 Depth=2
	alsl.d	$s2, $a0, $a1, 3
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 64
	addi.d	$a1, $sp, 288
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s2, 0
	b	.LBB0_58
.LBB0_61:                               # %.preheader936..preheader935_crit_edge
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $s5, %pc_lo12(A)
	ld.w	$a1, $a0, 0
	vld	$vr1, $sp, 240                  # 16-byte Folded Reload
	vld	$vr2, $sp, 224                  # 16-byte Folded Reload
	blez	$a1, .LBB0_66
.LBB0_62:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a1, $a0, 8
	vinsgr2vr.d	$vr1, $a1, 0
	addi.d	$a1, $sp, 1344
	vstelm.w	$vr1, $a1, 0, 0
	addi.d	$a1, $sp, 1340
	vstelm.w	$vr1, $a1, 0, 1
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB0_65
# %bb.63:                               # %.lr.ph1060.peel.next.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a1, $a0, 20
	ori	$a2, $zero, 1
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB0_64:                               # %.lr.ph1060.peel.next
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a1, -4
	st.w	$a3, $sp, 1344
	ld.w	$a4, $a1, 0
	st.w	$a4, $sp, 1340
	vinsgr2vr.w	$vr0, $a3, 0
	vinsgr2vr.w	$vr0, $a4, 1
	ld.w	$a3, $a0, 0
	vmin.w	$vr2, $vr0, $vr2
	vmax.w	$vr1, $vr0, $vr1
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 8
	blt	$a2, $a3, .LBB0_64
	b	.LBB0_66
.LBB0_65:                               #   in Loop: Header=BB0_6 Depth=1
	vori.b	$vr2, $vr1, 0
.LBB0_66:                               # %._crit_edge1061
                                        #   in Loop: Header=BB0_6 Depth=1
	vst	$vr2, $sp, 224                  # 16-byte Folded Spill
	vst	$vr1, $sp, 240                  # 16-byte Folded Spill
	addi.w	$s4, $s4, 1
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	ori	$a0, $zero, 104
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.d	$a0, $s6, 152
	st.d	$zero, $a0, 0
	vld	$vr4, $sp, 240                  # 16-byte Folded Reload
	vld	$vr3, $sp, 224                  # 16-byte Folded Reload
	vadd.w	$vr0, $vr4, $vr3
	vsrli.w	$vr1, $vr0, 31
	vadd.w	$vr0, $vr0, $vr1
	vsrai.w	$vr2, $vr0, 1
	vpickve2gr.w	$s0, $vr2, 0
	vpickve2gr.w	$s4, $vr2, 1
	vsub.w	$vr0, $vr3, $vr2
	vld	$vr3, $sp, 272                  # 16-byte Folded Reload
	vst	$vr3, $a0, 88
	vsub.w	$vr1, $vr4, $vr2
	vilvl.w	$vr0, $vr1, $vr0
	vst	$vr0, $a0, 72
	vst	$vr0, $a0, 56
	vst	$vr3, $a0, 40
	vstelm.w	$vr2, $s6, 12, 0
	vst	$vr2, $sp, 192                  # 16-byte Folded Spill
	vstelm.w	$vr2, $s6, 16, 1
	st.w	$zero, $s6, 60
	.p2align	4, , 16
.LBB0_67:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s6, 60
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, 60
	ori	$a0, $zero, 104
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	st.d	$a0, $s7, 0
	st.d	$zero, $a0, 0
	vld	$vr0, $sp, 272                  # 16-byte Folded Reload
	vst	$vr0, $a0, 88
	pcaddu18i	$ra, %call36(buster)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(R)
	ld.w	$a1, $a0, 8
	sub.d	$a1, $a1, $s0
	ld.w	$a2, $a0, 32
	st.w	$a1, $s8, 72
	st.w	$a1, $s8, 56
	ld.w	$a1, $a0, 12
	sub.d	$a2, $a2, $s0
	st.w	$a2, $s8, 76
	st.w	$a2, $s8, 60
	sub.d	$a1, $a1, $s4
	ld.d	$a2, $s5, %pc_lo12(A)
	st.w	$a1, $s8, 80
	ld.w	$a0, $a0, 20
	vld	$vr0, $sp, 272                  # 16-byte Folded Reload
	vst	$vr0, $s8, 40
	ld.w	$a2, $a2, 0
	st.w	$a1, $s8, 64
	sub.d	$a0, $a0, $s4
	st.w	$a0, $s8, 84
	st.w	$a0, $s8, 68
	move	$s7, $s8
	bgtz	$a2, .LBB0_67
.LBB0_68:                               #   in Loop: Header=BB0_6 Depth=1
	move	$s7, $s2
	ori	$s4, $zero, 1
	b	.LBB0_5
.LBB0_69:                               #   in Loop: Header=BB0_6 Depth=1
	st.d	$s2, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	blez	$a0, .LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_6 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(watesides)
	jirl	$ra, $ra, 0
.LBB0_71:                               # %.preheader942
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	ldx.d	$s6, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	addi.d	$a2, $sp, 1336
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s7, $a0, %pc_lo12(.L.str.3)
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, 0
	addi.d	$a1, $sp, 288
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(A)
	ld.d	$a1, $s1, %pc_lo12(B)
	st.w	$s4, $s6, 76
	st.d	$zero, $a0, 0
	st.d	$zero, $a1, 0
	st.d	$zero, $a0, 8
	st.d	$zero, $a1, 8
	st.d	$zero, $a0, 16
	st.d	$zero, $a1, 16
	st.d	$zero, $a0, 24
	st.d	$zero, $a1, 24
	st.d	$zero, $a0, 32
	st.d	$zero, $a1, 32
	st.d	$zero, $a0, 40
	st.d	$zero, $a1, 40
	st.d	$zero, $a0, 48
	st.d	$zero, $a1, 48
	st.d	$zero, $a0, 56
	st.d	$zero, $a1, 56
	st.d	$zero, $a0, 64
	st.d	$zero, $a1, 64
	st.d	$zero, $a0, 72
	st.d	$zero, $a1, 72
	st.d	$zero, $a0, 80
	st.d	$zero, $a1, 80
	st.d	$zero, $a0, 88
	st.d	$zero, $a1, 88
	st.d	$zero, $a0, 96
	st.d	$zero, $a1, 96
	st.d	$zero, $a0, 104
	st.d	$zero, $a1, 104
	st.d	$zero, $a0, 112
	st.d	$zero, $a1, 112
	st.d	$zero, $a0, 120
	st.d	$zero, $a1, 120
	st.d	$zero, $a0, 128
	st.d	$zero, $a1, 128
	st.d	$zero, $a0, 136
	st.d	$zero, $a1, 136
	st.d	$zero, $a0, 144
	st.d	$zero, $a1, 144
	st.d	$zero, $a0, 152
	st.d	$zero, $a1, 152
	st.d	$zero, $a0, 160
	st.d	$zero, $a1, 160
	st.d	$zero, $a0, 168
	st.d	$zero, $a1, 168
	st.d	$zero, $a0, 176
	st.d	$zero, $a1, 176
	st.d	$zero, $a0, 184
	st.d	$zero, $a1, 184
	st.d	$zero, $a0, 192
	st.d	$zero, $a1, 192
	st.d	$zero, $a0, 200
	st.d	$zero, $a1, 200
	st.d	$zero, $a0, 208
	st.d	$zero, $a1, 208
	st.d	$zero, $a0, 216
	st.d	$zero, $a1, 216
	st.d	$zero, $a0, 224
	st.d	$zero, $a1, 224
	st.d	$zero, $a0, 232
	ld.d	$a2, $s3, %pc_lo12(R)
	st.d	$zero, $a1, 232
	st.d	$zero, $a0, 240
	st.d	$zero, $a1, 240
	vld	$vr0, $sp, 272                  # 16-byte Folded Reload
	vst	$vr0, $a2, 32
	vst	$vr0, $a2, 16
	vst	$vr0, $a2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1348
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1348
	blez	$a0, .LBB0_74
# %bb.72:                               # %.lr.ph1008.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s0, $zero
	.p2align	4, , 16
.LBB0_73:                               # %.lr.ph1008
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	addi.d	$a2, $sp, 1344
	addi.d	$a3, $sp, 1340
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(A)
	ld.w	$a1, $a0, 0
	ld.w	$a2, $sp, 1344
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 0
	slli.d	$a1, $a1, 3
	stx.w	$a2, $a0, $a1
	ld.d	$a1, $s1, %pc_lo12(B)
	ld.w	$a2, $a0, 0
	ld.w	$a3, $sp, 1340
	ld.w	$a4, $a1, 0
	alsl.d	$a0, $a2, $a0, 3
	st.w	$a3, $a0, 4
	ld.w	$a0, $sp, 1344
	addi.w	$a2, $a4, 1
	st.w	$a2, $a1, 0
	slli.d	$a2, $a2, 3
	stx.w	$a0, $a1, $a2
	ld.w	$a0, $a1, 0
	ld.w	$a2, $sp, 1340
	alsl.d	$a0, $a0, $a1, 3
	st.w	$a2, $a0, 4
	ld.w	$a0, $sp, 1348
	addi.w	$s0, $s0, 1
	blt	$s0, $a0, .LBB0_73
.LBB0_74:                               # %._crit_edge1009
                                        #   in Loop: Header=BB0_6 Depth=1
	st.w	$a0, $s6, 64
	slli.d	$a0, $a0, 3
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, 216
	pcaddu18i	$ra, %call36(perimeter)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a2, $a3, %pc_lo12(perim)
	ld.d	$a1, $s5, %pc_lo12(A)
	add.d	$a0, $a2, $a0
	st.w	$a0, $a3, %pc_lo12(perim)
	ld.w	$a0, $a1, 0
	vld	$vr1, $sp, 240                  # 16-byte Folded Reload
	vld	$vr2, $sp, 224                  # 16-byte Folded Reload
	blez	$a0, .LBB0_111
# %bb.75:                               # %.lr.ph1014
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a4, $a2, 0
	addi.d	$a2, $a0, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a1, 12
	addi.d	$a4, $a4, 24
	ori	$a5, $zero, 1
	b	.LBB0_78
	.p2align	4, , 16
.LBB0_76:                               #   in Loop: Header=BB0_78 Depth=2
	ld.w	$a6, $a1, 8
	ld.w	$a7, $a3, -4
	sub.w	$a6, $a6, $a7
	srai.d	$a7, $a6, 31
	xor	$a6, $a6, $a7
	sub.d	$a6, $a6, $a7
	st.w	$a6, $a4, 0
	st.w	$zero, $a4, 16
	st.d	$zero, $a4, 8
	move	$a6, $a3
.LBB0_77:                               #   in Loop: Header=BB0_78 Depth=2
	ld.w	$a6, $a6, 0
	st.w	$a6, $a4, 20
	addi.d	$a5, $a5, 1
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, 24
	beq	$a2, $a5, .LBB0_95
.LBB0_78:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bgeu	$a5, $a0, .LBB0_76
# %bb.79:                               #   in Loop: Header=BB0_78 Depth=2
	andi	$a7, $a5, 1
	alsl.d	$a6, $a5, $a1, 3
	bnez	$a7, .LBB0_81
# %bb.80:                               #   in Loop: Header=BB0_78 Depth=2
	ld.w	$a7, $a3, 4
	ld.w	$t0, $a3, -4
	sub.w	$a7, $a7, $t0
	srai.d	$t0, $a7, 31
	xor	$a7, $a7, $t0
	sub.d	$a7, $a7, $t0
	st.w	$a7, $a4, 0
	st.w	$zero, $a4, 16
	st.d	$zero, $a4, 8
	addi.d	$a6, $a6, 4
	b	.LBB0_77
	.p2align	4, , 16
.LBB0_81:                               #   in Loop: Header=BB0_78 Depth=2
	ld.w	$a7, $a3, 8
	ld.w	$t0, $a3, 0
	sub.w	$a7, $a7, $t0
	srai.d	$t0, $a7, 31
	xor	$a7, $a7, $t0
	sub.d	$a7, $a7, $t0
	st.w	$a7, $a4, 0
	st.w	$s4, $a4, 16
	st.d	$zero, $a4, 8
	b	.LBB0_77
.LBB0_82:                               #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 1
	b	.LBB0_103
.LBB0_83:                               #   in Loop: Header=BB0_6 Depth=1
	st.d	$s2, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s7, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(pinnames)
	ld.d	$a1, $a1, %got_pc_lo12(pinnames)
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	slli.d	$a2, $a2, 3
	stx.d	$a0, $a1, $a2
	addi.d	$a1, $sp, 288
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(hashfind)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(netarray)
	ld.d	$a1, $a1, %got_pc_lo12(netarray)
	ld.d	$a1, $a1, 0
	slli.d	$a2, $a0, 3
	ldx.d	$s0, $a1, $a2
	ld.d	$a2, $s0, 64
	bnez	$a2, .LBB0_85
# %bb.84:                               #   in Loop: Header=BB0_6 Depth=1
	alsl.d	$s1, $a0, $a1, 3
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 64
	addi.d	$a1, $sp, 288
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s1, 0
.LBB0_85:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ori	$s7, $zero, 1
	ld.d	$s1, $s0, 0
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 0
	st.d	$s1, $a0, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a1, $a0, 24
	st.w	$zero, $a0, 28
	vld	$vr0, $sp, 272                  # 16-byte Folded Reload
	vst	$vr0, $a0, 8
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.w	$a1, $a0, 32
	st.w	$zero, $a0, 40
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	addi.d	$a2, $sp, 1376
	addi.d	$a3, $sp, 1372
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	bnez	$s4, .LBB0_87
# %bb.86:                               #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a1, $sp, 1376
	ld.w	$a2, $sp, 1372
	move	$a0, $s6
	pcaddu18i	$ra, %call36(findside)
	jirl	$ra, $ra, 0
	vldi	$vr0, -912
	pcaddu18i	$ra, %call36(loadside)
	jirl	$ra, $ra, 0
.LBB0_87:                               #   in Loop: Header=BB0_6 Depth=1
	ld.w	$s4, $sp, 1376
	ld.w	$s2, $sp, 1372
	vld	$vr0, $sp, 192                  # 16-byte Folded Reload
	vpickve2gr.w	$a0, $vr0, 0
	sub.w	$s8, $s4, $a0
	ld.w	$a0, $s6, 76
	st.w	$s8, $sp, 1376
	vpickve2gr.w	$a1, $vr0, 1
	sub.w	$s0, $s2, $a1
	st.w	$s0, $sp, 1372
	ld.d	$s1, $sp, 216                   # 8-byte Folded Reload
	bne	$a0, $s7, .LBB0_93
# %bb.88:                               # %.preheader943
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a1, $s6, 128
	blez	$a1, .LBB0_93
# %bb.89:                               # %.lr.ph1002
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $s6, 152
	ld.d	$a2, $a0, 96
	move	$a0, $zero
	addi.d	$a3, $a1, 1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a2, 20
	addi.d	$a2, $a2, 36
	ori	$a4, $zero, 1
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB0_90:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $a6, -4
	ld.w	$t0, $a6, 0
	beq	$a7, $s8, .LBB0_142
# %bb.91:                               #   in Loop: Header=BB0_90 Depth=2
	beq	$t0, $s0, .LBB0_146
# %bb.92:                               #   in Loop: Header=BB0_90 Depth=2
	addi.d	$a3, $a3, 1
	addi.w	$a4, $a4, 1
	addi.d	$a6, $a6, 16
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 16
	bne	$a5, $a3, .LBB0_90
.LBB0_93:                               # %.loopexit944
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$s1, $s6, 68
	addi.d	$a0, $s1, 1
	st.w	$a0, $s6, 68
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	beqz	$s1, .LBB0_135
# %bb.94:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$s7, $a0, 0
	b	.LBB0_136
.LBB0_95:                               # %.preheader941
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $a1, 8
	vinsgr2vr.d	$vr1, $a0, 0
	addi.d	$a0, $sp, 1344
	vstelm.w	$vr1, $a0, 0, 0
	addi.d	$a0, $sp, 1340
	vstelm.w	$vr1, $a0, 0, 1
	ld.w	$a0, $a1, 0
	ori	$a2, $zero, 2
	blt	$a0, $a2, .LBB0_110
# %bb.96:                               # %.lr.ph1022.peel.next.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a0, $a1, 20
	ori	$a2, $zero, 1
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB0_97:                               # %.lr.ph1022.peel.next
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a0, -4
	st.w	$a3, $sp, 1344
	ld.w	$a4, $a0, 0
	st.w	$a4, $sp, 1340
	vinsgr2vr.w	$vr0, $a3, 0
	vinsgr2vr.w	$vr0, $a4, 1
	ld.w	$a3, $a1, 0
	vmin.w	$vr2, $vr0, $vr2
	vmax.w	$vr1, $vr0, $vr1
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, 8
	blt	$a2, $a3, .LBB0_97
	b	.LBB0_111
.LBB0_98:                               #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 2
	b	.LBB0_103
.LBB0_99:                               #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s7, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	addi.d	$a2, $sp, 1376
	addi.d	$a3, $sp, 1372
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_101
# %bb.100:                              #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a1, $sp, 1376
	ld.w	$a2, $sp, 1372
	move	$a0, $s6
	pcaddu18i	$ra, %call36(findside)
	jirl	$ra, $ra, 0
	vldi	$vr0, -912
	pcaddu18i	$ra, %call36(loadside)
	jirl	$ra, $ra, 0
.LBB0_101:                              #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $sp, 1376
	ld.w	$a1, $sp, 1372
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	vinsgr2vr.w	$vr0, $a0, 0
	vinsgr2vr.w	$vr0, $a1, 1
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vadd.w	$vr1, $vr0, $vr1
	vpickve2gr.w	$a0, $vr1, 1
	div.w	$a0, $a0, $a2
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	vpickve2gr.w	$a1, $vr1, 0
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	div.w	$a1, $a1, $a2
	vinsgr2vr.w	$vr0, $a1, 0
	vinsgr2vr.w	$vr0, $a0, 1
	vld	$vr1, $sp, 192                  # 16-byte Folded Reload
	vsub.w	$vr0, $vr0, $vr1
	vshuf4i.w	$vr0, $vr0, 68
	vst	$vr0, $s2, 8
	b	.LBB0_4
.LBB0_102:                              #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 3
.LBB0_103:                              #   in Loop: Header=BB0_6 Depth=1
	st.w	$a0, $s6, 80
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s7, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s8, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1360
	move	$a0, $fp
	move	$a1, $s8
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1360
	st.w	$a0, $s6, 8
	addi.d	$a2, $sp, 1364
	move	$a0, $fp
	move	$a1, $s8
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1364
	blez	$a0, .LBB0_4
# %bb.104:                              #   in Loop: Header=BB0_6 Depth=1
	addi.d	$s0, $s6, 20
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1380
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1380
	slli.d	$a0, $a0, 2
	stx.w	$s4, $s0, $a0
	ld.w	$a0, $sp, 1380
	ld.w	$a1, $sp, 1364
	st.w	$a0, $s6, 56
	st.w	$a0, $s6, 52
	ori	$a0, $zero, 2
	blt	$a1, $a0, .LBB0_4
# %bb.105:                              # %.peel.next1207.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB0_106:                              # %.peel.next1207
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1380
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1380
	slli.d	$a0, $a0, 2
	stx.w	$s4, $s0, $a0
	ld.w	$a0, $sp, 1364
	addi.w	$s1, $s1, 1
	blt	$s1, $a0, .LBB0_106
.LBB0_107:                              #   in Loop: Header=BB0_6 Depth=1
	move	$s7, $s2
	ld.d	$s1, $sp, 216                   # 8-byte Folded Reload
	b	.LBB0_5
.LBB0_108:                              #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(fixLRBT)
	ld.d	$a0, $a0, %got_pc_lo12(fixLRBT)
	ld.d	$a0, $a0, 0
	fld.d	$fa0, $sp, 1312
	st.w	$s4, $a0, 8
	b	.LBB0_3
.LBB0_109:                              #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(fixLRBT)
	ld.d	$a0, $a0, %got_pc_lo12(fixLRBT)
	ld.d	$a0, $a0, 0
	fld.d	$fa0, $sp, 1312
	st.w	$s4, $a0, 12
	b	.LBB0_3
.LBB0_110:                              #   in Loop: Header=BB0_6 Depth=1
	vori.b	$vr2, $vr1, 0
.LBB0_111:                              # %._crit_edge1023
                                        #   in Loop: Header=BB0_6 Depth=1
	vst	$vr2, $sp, 224                  # 16-byte Folded Spill
	vst	$vr1, $sp, 240                  # 16-byte Folded Spill
	vpickve2gr.w	$a0, $vr1, 1
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	vpickve2gr.w	$s8, $vr2, 1
	sub.d	$a0, $a0, $s8
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	vpickve2gr.w	$s2, $vr1, 0
	vpickve2gr.w	$s1, $vr2, 0
	sub.d	$a0, $s2, $s1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s6, 96
	fst.d	$fa0, $s6, 104
	ori	$a0, $zero, 104
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.d	$a0, $s6, 152
	st.d	$zero, $a0, 0
	vld	$vr0, $sp, 240                  # 16-byte Folded Reload
	vld	$vr1, $sp, 224                  # 16-byte Folded Reload
	vadd.w	$vr0, $vr0, $vr1
	vsrli.w	$vr1, $vr0, 31
	vadd.w	$vr0, $vr0, $vr1
	vsrai.w	$vr1, $vr0, 1
	vpickve2gr.w	$s4, $vr1, 1
	vpickve2gr.w	$s0, $vr1, 0
	sub.d	$a0, $s1, $s0
	vld	$vr0, $sp, 272                  # 16-byte Folded Reload
	vst	$vr0, $s7, 88
	st.w	$a0, $s7, 72
	st.w	$a0, $s7, 56
	sub.d	$a0, $s2, $s0
	st.w	$a0, $s7, 76
	st.w	$a0, $s7, 60
	sub.d	$a0, $s8, $s4
	st.w	$a0, $s7, 80
	st.w	$a0, $s7, 64
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $s4
	st.w	$a0, $s7, 84
	st.w	$a0, $s7, 68
	vst	$vr0, $s7, 40
	vstelm.w	$vr1, $s6, 12, 0
	vst	$vr1, $sp, 192                  # 16-byte Folded Spill
	vstelm.w	$vr1, $s6, 16, 1
	st.w	$zero, $s6, 60
	.p2align	4, , 16
.LBB0_112:                              #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s6, 60
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, 60
	ori	$a0, $zero, 104
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	st.d	$a0, $s7, 0
	st.d	$zero, $a0, 0
	vld	$vr0, $sp, 272                  # 16-byte Folded Reload
	vst	$vr0, $a0, 88
	pcaddu18i	$ra, %call36(buster)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(R)
	ld.w	$a1, $a0, 8
	sub.d	$a1, $a1, $s0
	ld.w	$a2, $a0, 32
	st.w	$a1, $s8, 72
	st.w	$a1, $s8, 56
	ld.w	$a1, $a0, 12
	sub.d	$a2, $a2, $s0
	st.w	$a2, $s8, 76
	st.w	$a2, $s8, 60
	sub.d	$a1, $a1, $s4
	ld.d	$a2, $s5, %pc_lo12(A)
	st.w	$a1, $s8, 80
	ld.w	$a0, $a0, 20
	vld	$vr0, $sp, 272                  # 16-byte Folded Reload
	vst	$vr0, $s8, 40
	ld.w	$a2, $a2, 0
	st.w	$a1, $s8, 64
	sub.d	$a0, $a0, $s4
	st.w	$a0, $s8, 84
	st.w	$a0, $s8, 68
	move	$s7, $s8
	bgtz	$a2, .LBB0_112
# %bb.113:                              #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $s6, 132
	ld.d	$s1, $sp, 216                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_121
# %bb.114:                              #   in Loop: Header=BB0_6 Depth=1
	addi.w	$a0, $a0, 1
	ori	$a1, $zero, 44
	mul.d	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(B)
	ld.w	$a2, $a1, 0
	st.d	$a0, $s6, 144
	blez	$a2, .LBB0_123
# %bb.115:                              # %.lr.ph1032.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s7, $zero
	move	$s8, $zero
	move	$s1, $zero
	b	.LBB0_118
	.p2align	4, , 16
.LBB0_116:                              #   in Loop: Header=BB0_118 Depth=2
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	move	$a2, $a4
	move	$a4, $zero
	pcaddu18i	$ra, %call36(Vside)
	jirl	$ra, $ra, 0
.LBB0_117:                              #   in Loop: Header=BB0_118 Depth=2
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(B)
	ld.d	$a3, $s6, 216
	add.d	$a0, $a0, $s1
	addi.d	$a4, $s1, 1
	ld.w	$a2, $a1, 0
	add.d	$a3, $a3, $s7
	st.w	$a4, $a3, 8
	st.w	$a0, $a3, 12
	addi.d	$s7, $s7, 8
	move	$s1, $a0
	bge	$s8, $a2, .LBB0_120
.LBB0_118:                              # %.lr.ph1032
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$s8, $s8, 1
	add.d	$a5, $a1, $s7
	addi.d	$a0, $a5, 8
	ld.w	$a4, $a5, 12
	bstrpick.d	$a2, $a2, 31, 0
	xor	$a2, $s8, $a2
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	ld.w	$a3, $a0, 12
	ld.w	$a1, $a5, 8
	bne	$a4, $a3, .LBB0_116
# %bb.119:                              #   in Loop: Header=BB0_118 Depth=2
	ld.w	$a2, $a0, 8
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	move	$a3, $a4
	move	$a4, $zero
	pcaddu18i	$ra, %call36(Hside)
	jirl	$ra, $ra, 0
	b	.LBB0_117
.LBB0_120:                              # %.loopexit940.loopexit
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a1, $s6, 132
	sltui	$s1, $a1, 1
	b	.LBB0_124
.LBB0_121:                              #   in Loop: Header=BB0_6 Depth=1
	move	$a0, $zero
	ori	$s1, $zero, 1
	b	.LBB0_124
.LBB0_122:                              #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	addi.d	$a2, $sp, 1320
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 1320
	fst.d	$fa0, $s6, 120
	b	.LBB0_4
.LBB0_123:                              #   in Loop: Header=BB0_6 Depth=1
	move	$s1, $zero
	move	$a0, $zero
.LBB0_124:                              # %.loopexit940
                                        #   in Loop: Header=BB0_6 Depth=1
	st.w	$a0, $s6, 128
	addi.w	$a0, $a0, 1
	slli.d	$s7, $a0, 4
	alsl.d	$a0, $a0, $s7, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, 136
	move	$a0, $s7
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 152
	st.d	$a0, $a1, 96
	beqz	$s1, .LBB0_126
# %bb.125:                              #   in Loop: Header=BB0_6 Depth=1
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	b	.LBB0_137
.LBB0_126:                              # %.preheader938
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $s1, %pc_lo12(B)
	ld.w	$a2, $a0, 0
	blez	$a2, .LBB0_134
# %bb.127:                              # %.lr.ph1043.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s8, $zero
	ori	$a3, $zero, 1
	b	.LBB0_129
	.p2align	4, , 16
.LBB0_128:                              # %._crit_edge1039
                                        #   in Loop: Header=BB0_129 Depth=2
	ld.d	$a0, $s1, %pc_lo12(B)
	ld.w	$a2, $a0, 0
	addi.d	$a3, $s7, 1
	move	$s8, $a1
	bge	$s7, $a2, .LBB0_134
.LBB0_129:                              # %.lr.ph1043
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_133 Depth 3
	move	$s7, $a3
	alsl.d	$a1, $a3, $a0, 3
	slli.d	$a4, $a3, 3
	ld.w	$a5, $a1, 4
	bstrpick.d	$a2, $a2, 31, 0
	xor	$a2, $a3, $a2
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a2, $a2, $a1
	ld.w	$a3, $a2, 12
	ldx.w	$a1, $a0, $a4
	bne	$a5, $a3, .LBB0_131
# %bb.130:                              #   in Loop: Header=BB0_129 Depth=2
	ld.w	$a2, $a2, 8
	ori	$a4, $zero, 1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	move	$a3, $a5
	pcaddu18i	$ra, %call36(Hside)
	jirl	$ra, $ra, 0
	add.w	$a1, $a0, $s8
	bgtz	$a0, .LBB0_132
	b	.LBB0_128
	.p2align	4, , 16
.LBB0_131:                              #   in Loop: Header=BB0_129 Depth=2
	ori	$a4, $zero, 1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(Vside)
	jirl	$ra, $ra, 0
	add.w	$a1, $a0, $s8
	blez	$a0, .LBB0_128
.LBB0_132:                              # %.lr.ph1038
                                        #   in Loop: Header=BB0_129 Depth=2
	ld.d	$a0, $s6, 152
	ld.d	$a0, $a0, 96
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(kArray)
	ld.d	$a3, $s6, 136
	alsl.d	$a0, $s8, $a0, 4
	slli.d	$a4, $s8, 4
	addi.d	$a0, $a0, 28
	addi.d	$a2, $a2, 36
	alsl.d	$a4, $s8, $a4, 2
	add.d	$a3, $a3, $a4
	addi.d	$a3, $a3, 36
	.p2align	4, , 16
.LBB0_133:                              #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_129 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $a2, -8
	ld.w	$a5, $a2, -4
	ld.w	$a6, $a2, 0
	st.w	$a4, $a3, 0
	sub.d	$a4, $a5, $s0
	st.w	$a4, $a0, -12
	sub.d	$a5, $a6, $s4
	st.w	$a5, $a0, -8
	st.w	$a4, $a0, -4
	st.w	$a5, $a0, 0
	st.d	$zero, $a3, -16
	ld.d	$a4, $a2, -16
	addi.d	$s8, $s8, 1
	st.d	$a4, $a3, -8
	addi.d	$a0, $a0, 16
	addi.d	$a2, $a2, 20
	addi.d	$a3, $a3, 20
	blt	$s8, $a1, .LBB0_133
	b	.LBB0_128
.LBB0_134:                              #   in Loop: Header=BB0_6 Depth=1
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	b	.LBB0_170
.LBB0_135:                              #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $s6, 152
	st.d	$s7, $a0, 88
.LBB0_136:                              #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $s7, 24
	st.d	$zero, $s7, 0
	st.w	$s8, $s7, 8
	st.w	$s0, $s7, 12
	st.w	$s8, $s7, 16
	st.w	$s0, $s7, 20
	vinsgr2vr.w	$vr0, $s4, 0
	vinsgr2vr.w	$vr0, $s2, 1
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
.LBB0_137:                              # %.loopexit
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s1, $sp, 216                   # 8-byte Folded Reload
	ori	$s4, $zero, 1
	b	.LBB0_5
.LBB0_138:                              #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	addi.d	$a2, $sp, 1328
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 1328
	fst.d	$fa0, $s6, 112
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s7, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s8, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1360
	move	$a0, $fp
	move	$a1, $s8
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1360
	st.w	$a0, $s6, 8
	addi.d	$a2, $sp, 1364
	move	$a0, $fp
	move	$a1, $s8
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1364
	blez	$a0, .LBB0_4
# %bb.139:                              #   in Loop: Header=BB0_6 Depth=1
	addi.d	$s0, $s6, 20
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1380
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1380
	slli.d	$a0, $a0, 2
	stx.w	$s4, $s0, $a0
	ld.w	$a0, $sp, 1380
	ld.w	$a1, $sp, 1364
	st.w	$a0, $s6, 56
	st.w	$a0, $s6, 52
	ori	$a0, $zero, 2
	blt	$a1, $a0, .LBB0_4
# %bb.140:                              # %.peel.next1166.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB0_141:                              # %.peel.next1166
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1380
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1380
	slli.d	$a0, $a0, 2
	stx.w	$s4, $s0, $a0
	ld.w	$a0, $sp, 1364
	addi.w	$s1, $s1, 1
	blt	$s1, $a0, .LBB0_141
	b	.LBB0_107
.LBB0_142:                              #   in Loop: Header=BB0_6 Depth=1
	sub.w	$a5, $t0, $s0
	srai.d	$a6, $a5, 31
	xor	$a5, $a5, $a6
	sub.w	$a6, $a5, $a6
	slt	$a5, $a4, $a1
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a1, $a5
	or	$a4, $a5, $a4
	ld.d	$t0, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_143:                              #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bgeu	$a3, $a1, .LBB0_167
# %bb.144:                              #   in Loop: Header=BB0_143 Depth=2
	move	$a5, $a6
	ld.w	$a6, $a2, -4
	addi.d	$a0, $a0, 1
	bne	$a6, $s8, .LBB0_168
# %bb.145:                              #   in Loop: Header=BB0_143 Depth=2
	ld.w	$a6, $a2, 0
	sub.w	$a6, $a6, $s0
	srai.d	$a7, $a6, 31
	xor	$a6, $a6, $a7
	sub.w	$a6, $a6, $a7
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 1
	bltu	$a6, $a5, .LBB0_143
	b	.LBB0_168
.LBB0_146:                              #   in Loop: Header=BB0_6 Depth=1
	sub.w	$a5, $a7, $s8
	srai.d	$a6, $a5, 31
	xor	$a5, $a5, $a6
	sub.w	$a6, $a5, $a6
	slt	$a5, $a4, $a1
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a1, $a5
	or	$a4, $a5, $a4
	ld.d	$t0, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_147:                              #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bgeu	$a3, $a1, .LBB0_167
# %bb.148:                              #   in Loop: Header=BB0_147 Depth=2
	move	$a5, $a6
	ld.w	$a6, $a2, 0
	addi.d	$a0, $a0, 1
	bne	$a6, $s0, .LBB0_168
# %bb.149:                              #   in Loop: Header=BB0_147 Depth=2
	ld.w	$a6, $a2, -4
	sub.w	$a6, $a6, $s8
	srai.d	$a7, $a6, 31
	xor	$a6, $a6, $a7
	sub.w	$a6, $a6, $a7
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 1
	bltu	$a6, $a5, .LBB0_147
	b	.LBB0_168
.LBB0_150:                              #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	b	.LBB0_153
.LBB0_151:                              # %._crit_edge.loopexit.loopexit
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	addi.d	$s0, $a0, 1
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
.LBB0_152:                              # %._crit_edge.loopexit
                                        #   in Loop: Header=BB0_6 Depth=1
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	st.d	$s0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$s1, $sp, 216                   # 8-byte Folded Reload
	ori	$s4, $zero, 1
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
.LBB0_153:                              # %._crit_edge
                                        #   in Loop: Header=BB0_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 288
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	addi.d	$a2, $sp, 1356
	addi.d	$a3, $sp, 1352
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1356
	bltz	$a0, .LBB0_186
# %bb.154:                              #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a1, $s1, %pc_lo12(B)
	ld.w	$a2, $a1, 0
	blt	$a2, $a0, .LBB0_186
# %bb.155:                              #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a1, $sp, 1352
	ld.d	$a7, $sp, 88                    # 8-byte Folded Reload
	bltz	$a1, .LBB0_187
# %bb.156:                              #   in Loop: Header=BB0_6 Depth=1
	blt	$a2, $a1, .LBB0_187
# %bb.157:                              #   in Loop: Header=BB0_6 Depth=1
	addi.w	$a2, $s7, 0
	addi.w	$a3, $a7, 0
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	beqz	$a0, .LBB0_164
# %bb.158:                              #   in Loop: Header=BB0_6 Depth=1
	beqz	$a1, .LBB0_171
# %bb.159:                              # %.preheader950
                                        #   in Loop: Header=BB0_6 Depth=1
	blt	$a3, $a2, .LBB0_163
# %bb.160:                              # %.lr.ph984
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $s6, 144
	ori	$a1, $zero, 44
	mul.d	$a1, $a2, $a1
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 24
	sub.d	$a1, $a7, $s7
	addi.d	$a1, $a1, 1
	ori	$a3, $zero, 2
	.p2align	4, , 16
.LBB0_161:                              #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a3, $a0, -8
	ld.w	$a2, $sp, 1356
	st.w	$a2, $a0, -4
	ld.w	$a2, $sp, 1352
	st.w	$a2, $a0, 0
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 44
	bnez	$a1, .LBB0_161
# %bb.162:                              # %._crit_edge985.loopexit
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $sp, 1356
.LBB0_163:                              # %._crit_edge985
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a1, $sp, 1368
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(loadside)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 1368
	ld.w	$a0, $sp, 1352
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	b	.LBB0_175
.LBB0_164:                              # %.preheader948
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a0, $s6, 64
	blt	$a3, $a2, .LBB0_181
# %bb.165:                              # %.lr.ph992
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a1, $s6, 144
	bne	$a3, $a2, .LBB0_176
# %bb.166:                              #   in Loop: Header=BB0_6 Depth=1
	move	$a3, $a2
	b	.LBB0_179
.LBB0_167:                              #   in Loop: Header=BB0_6 Depth=1
	move	$a0, $a4
.LBB0_168:                              # %.split.loop.exit1299
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a1, $s6, 132
	addi.w	$a2, $t0, 0
	bge	$a2, $a1, .LBB0_189
# %bb.169:                              #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a1, $s6, 144
	addi.w	$t0, $t0, 1
	ori	$a2, $zero, 44
	st.d	$t0, $sp, 88                    # 8-byte Folded Spill
	mul.d	$a2, $t0, $a2
	add.d	$a3, $a1, $a2
	ori	$a5, $zero, 1
	ori	$a4, $zero, 1
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	st.w	$a5, $a3, 28
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	stx.w	$a4, $a1, $a2
	st.w	$zero, $a3, 16
	st.w	$a0, $a3, 20
	vinsgr2vr.w	$vr0, $s4, 0
	vinsgr2vr.w	$vr0, $s2, 1
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
.LBB0_170:                              # %.loopexit
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ori	$s4, $zero, 1
	b	.LBB0_5
.LBB0_171:                              # %.preheader949
                                        #   in Loop: Header=BB0_6 Depth=1
	blt	$a3, $a2, .LBB0_174
# %bb.172:                              # %.lr.ph988
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $s6, 144
	ori	$a1, $zero, 44
	mul.d	$a1, $a2, $a1
	add.d	$a0, $a0, $a1
	addi.d	$a1, $a0, 20
	sub.d	$a0, $a7, $s7
	addi.d	$a2, $a0, 1
	.p2align	4, , 16
.LBB0_173:                              #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$s4, $a1, -4
	ld.w	$a0, $sp, 1356
	st.w	$a0, $a1, 0
	addi.w	$a2, $a2, -1
	addi.d	$a1, $a1, 44
	bnez	$a2, .LBB0_173
.LBB0_174:                              # %._crit_edge989
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.w	$a1, $sp, 1368
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
.LBB0_175:                              # %.loopexit
                                        #   in Loop: Header=BB0_6 Depth=1
	pcaddu18i	$ra, %call36(loadside)
	jirl	$ra, $ra, 0
	b	.LBB0_4
.LBB0_176:                              # %vector.ph
                                        #   in Loop: Header=BB0_6 Depth=1
	sub.d	$a3, $a7, $s7
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a4, $a3, 1
	bstrpick.d	$a3, $a4, 32, 1
	slli.d	$a5, $a3, 1
	alsl.d	$a3, $a3, $a2, 1
	ori	$a6, $zero, 44
	mul.d	$a2, $a2, $a6
	add.d	$a2, $a1, $a2
	addi.d	$a2, $a2, 64
	move	$a6, $a5
	.p2align	4, , 16
.LBB0_177:                              # %vector.body
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a0, $a2, -48
	st.w	$a0, $a2, -4
	st.w	$zero, $a2, -44
	st.w	$zero, $a2, 0
	addi.d	$a6, $a6, -2
	addi.d	$a2, $a2, 88
	bnez	$a6, .LBB0_177
# %bb.178:                              # %middle.block
                                        #   in Loop: Header=BB0_6 Depth=1
	beq	$a4, $a5, .LBB0_181
.LBB0_179:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a2, $zero, 44
	mul.d	$a2, $a3, $a2
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 20
	sub.d	$a2, $a7, $a3
	addi.d	$a2, $a2, 1
	.p2align	4, , 16
.LBB0_180:                              # %scalar.ph
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a0, $a1, -4
	st.w	$zero, $a1, 0
	addi.w	$a2, $a2, -1
	addi.d	$a1, $a1, 44
	bnez	$a2, .LBB0_180
.LBB0_181:                              # %.preheader946
                                        #   in Loop: Header=BB0_6 Depth=1
	blez	$a0, .LBB0_4
# %bb.182:                              # %.lr.ph995.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s7, $zero
	.p2align	4, , 16
.LBB0_183:                              # %.lr.ph995
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $sp, 1368
	addi.w	$s7, $s7, 1
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(loadside)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 64
	blt	$s7, $a0, .LBB0_183
	b	.LBB0_4
.LBB0_184:                              # %._crit_edge1124
	pcalau12i	$a0, %got_pc_hi20(totPins)
	ld.d	$a0, $a0, %got_pc_lo12(totPins)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(perim)
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	pcalau12i	$a0, %got_pc_hi20(pinsPerLen)
	ld.d	$a0, $a0, %got_pc_lo12(pinsPerLen)
	fst.d	$fa0, $a0, 0
	pcaddu18i	$ra, %call36(setpwates)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(placepin)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(genorient)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 1384                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1392                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1400                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1408                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1416                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1424                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1432                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1440                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1448                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1456                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1464                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1472
	ret
.LBB0_185:
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$fp, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 35
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $s6, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_186:
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$fp, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	ori	$a1, $zero, 32
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(B)
	ld.d	$a0, $fp, 0
	ld.w	$a2, $sp, 1356
	ld.w	$a3, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	b	.LBB0_188
.LBB0_187:
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$fp, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(B)
	ld.d	$a0, $fp, 0
	ld.w	$a2, $sp, 1352
	ld.w	$a3, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
.LBB0_188:
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_189:
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$fp, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	ori	$a1, $zero, 25
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	readcells, .Lfunc_end0-readcells
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_57-.LJTI0_0
	.word	.LBB0_109-.LJTI0_0
	.word	.LBB0_2-.LJTI0_0
	.word	.LBB0_108-.LJTI0_0
                                        # -- End function
	.type	perim,@object                   # @perim
	.comm	perim,4,4
	.type	kArray,@object                  # @kArray
	.comm	kArray,8,8
	.type	A,@object                       # @A
	.comm	A,8,8
	.type	B,@object                       # @B
	.comm	B,8,8
	.type	R,@object                       # @R
	.comm	R,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" %s "
	.size	.L.str, 5

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"cell"
	.size	.L.str.1, 5

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%d"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%s"
	.size	.L.str.3, 3

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	" %d "
	.size	.L.str.4, 5

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	" %d %d "
	.size	.L.str.5, 8

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"pad"
	.size	.L.str.6, 4

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"padside"
	.size	.L.str.7, 8

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"L"
	.size	.L.str.8, 2

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"T"
	.size	.L.str.9, 2

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"R"
	.size	.L.str.10, 2

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"B"
	.size	.L.str.11, 2

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"padside not specified properly for "
	.size	.L.str.12, 36

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"pad: %s\n"
	.size	.L.str.13, 9

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"sidespace"
	.size	.L.str.14, 10

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	" %lf "
	.size	.L.str.15, 6

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"softcell"
	.size	.L.str.16, 9

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"pin"
	.size	.L.str.17, 4

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"screwup in readcells: "
	.size	.L.str.18, 23

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"failed to properly count "
	.size	.L.str.19, 26

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"the no. of uncommitted pins\n"
	.size	.L.str.20, 29

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"equiv"
	.size	.L.str.21, 6

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"asplb"
	.size	.L.str.22, 6

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"%lf"
	.size	.L.str.23, 4

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"aspub"
	.size	.L.str.24, 6

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"sequence"
	.size	.L.str.25, 9

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"group"
	.size	.L.str.26, 6

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"value of firstside out of range\n"
	.size	.L.str.27, 33

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"firstside:%d  range:1 to %d\n"
	.size	.L.str.28, 29

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"current cell is:%d\n"
	.size	.L.str.29, 20

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"value of lastside out of range\n"
	.size	.L.str.30, 32

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"lastside:%d  range:1 to %d\n"
	.size	.L.str.31, 28

	.section	".note.GNU-stack","",@progbits
	.addrsig
