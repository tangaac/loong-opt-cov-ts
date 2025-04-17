	.file	"readcells.c"
	.text
	.globl	readcells                       # -- Begin function readcells
	.p2align	5
	.type	readcells,@function
readcells:                              # @readcells
# %bb.0:
	addi.d	$sp, $sp, -1456
	st.d	$ra, $sp, 1448                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1440                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1432                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1424                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1416                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1408                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1400                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1392                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1384                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1376                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1368                  # 8-byte Folded Spill
	move	$s7, $a0
	pcaddu18i	$ra, %call36(parser)
	jirl	$ra, $ra, 0
	move	$a0, $s7
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
	pcalau12i	$a1, %pc_hi20(A)
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(A)
	ori	$a0, $zero, 248
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(B)
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(B)
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(R)
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(R)
	ori	$a0, $zero, 744
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(pSideArray)
	ld.d	$a1, $a1, %got_pc_lo12(pSideArray)
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 272
	move	$a0, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 1
	bne	$a0, $s3, .LBB0_188
# %bb.1:                                # %.lr.ph1136.preheader
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	st.d	$zero, $sp, 168                 # 8-byte Folded Spill
	st.d	$zero, $sp, 248                 # 8-byte Folded Spill
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
	vst	$vr0, $sp, 256                  # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
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
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
                                        # implicit-def: $r27
                                        # implicit-def: $r28
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r23
                                        # implicit-def: $r25
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r31
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r22
                                        # implicit-def: $r24
	st.d	$s7, $sp, 216                   # 8-byte Folded Spill
	b	.LBB0_5
.LBB0_2:                                #   in Loop: Header=BB0_5 Depth=1
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_3:                                #   in Loop: Header=BB0_5 Depth=1
	ld.d	$s6, $sp, 240                   # 8-byte Folded Reload
.LBB0_4:                                # %.loopexit
                                        #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 272
	move	$a0, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	move	$s4, $s6
	bne	$a0, $s3, .LBB0_188
.LBB0_5:                                # %.lr.ph1136
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_59 Depth 2
                                        #     Child Loop BB0_163 Depth 2
                                        #     Child Loop BB0_171 Depth 2
                                        #     Child Loop BB0_181 Depth 2
                                        #     Child Loop BB0_184 Depth 2
                                        #     Child Loop BB0_187 Depth 2
                                        #     Child Loop BB0_142 Depth 2
                                        #     Child Loop BB0_91 Depth 2
                                        #     Child Loop BB0_150 Depth 2
                                        #     Child Loop BB0_145 Depth 2
                                        #     Child Loop BB0_73 Depth 2
                                        #     Child Loop BB0_79 Depth 2
                                        #     Child Loop BB0_98 Depth 2
                                        #     Child Loop BB0_115 Depth 2
                                        #     Child Loop BB0_121 Depth 2
                                        #     Child Loop BB0_131 Depth 2
                                        #       Child Loop BB0_135 Depth 3
                                        #     Child Loop BB0_107 Depth 2
                                        #     Child Loop BB0_39 Depth 2
                                        #     Child Loop BB0_64 Depth 2
                                        #     Child Loop BB0_67 Depth 2
                                        #     Child Loop BB0_25 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_43 Depth 2
                                        #     Child Loop BB0_50 Depth 2
                                        #     Child Loop BB0_54 Depth 2
	addi.d	$a0, $sp, 272
	ori	$a2, $zero, 5
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_21
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	ld.w	$a0, $sp, 272
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_35
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 272
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_44
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	addi.d	$a0, $sp, 272
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_55
# %bb.9:                                #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	addi.d	$a0, $sp, 272
	ori	$a2, $zero, 9
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_69
# %bb.10:                               #   in Loop: Header=BB0_5 Depth=1
	ld.w	$a0, $sp, 272
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_84
# %bb.11:                               #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	addi.d	$a0, $sp, 272
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_100
# %bb.12:                               #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	addi.d	$a0, $sp, 272
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_125
# %bb.13:                               #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	addi.d	$a0, $sp, 272
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_139
# %bb.14:                               #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	addi.d	$a0, $sp, 272
	ori	$a2, $zero, 9
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	addi.d	$a0, $sp, 272
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_112
.LBB0_16:                               #   in Loop: Header=BB0_5 Depth=1
	ld.w	$a0, $s5, 72
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, 72
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	addi.d	$a0, $sp, 272
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1352
	move	$a0, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1352
	blt	$a0, $s3, .LBB0_155
# %bb.17:                               # %.lr.ph
                                        #   in Loop: Header=BB0_5 Depth=1
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s4, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.w	$s6, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	move	$s4, $s7
	addi.d	$s7, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 272
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 272
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 272
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 272
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(pinnames)
	ld.d	$a1, $a1, %got_pc_lo12(pinnames)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a2, $s6, 1
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	slli.d	$a2, $a2, 3
	stx.d	$a0, $a1, $a2
	addi.d	$a1, $sp, 272
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 272
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 272
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 272
	pcaddu18i	$ra, %call36(hashfind)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(netarray)
	ld.d	$a1, $a1, %got_pc_lo12(netarray)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	slli.d	$a2, $a0, 3
	ldx.d	$s7, $a1, $a2
	ld.d	$a2, $s7, 64
	bnez	$a2, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_5 Depth=1
	alsl.d	$s4, $a0, $a1, 3
	addi.d	$a0, $sp, 272
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 64
	addi.d	$a1, $sp, 272
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s4, 0
.LBB0_19:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $s7, 0
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	sltui	$s6, $a0, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$s4, $a0, 0
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	vld	$vr0, $sp, 256                  # 16-byte Folded Reload
	vst	$vr0, $a0, 8
	ld.d	$a1, $s5, 144
	ld.w	$a2, $sp, 1352
	addi.d	$a5, $s4, 1
	ori	$a3, $zero, 44
	mul.d	$a3, $a5, $a3
	add.d	$a4, $a1, $a3
	st.w	$a2, $a4, 28
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	stx.w	$a6, $a1, $a3
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.w	$s6, $a4, 32
	ld.w	$a1, $sp, 1352
	st.w	$a6, $a0, 24
	st.w	$zero, $a0, 28
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	st.w	$a2, $a0, 32
	st.w	$zero, $a0, 40
	move	$a3, $a5
	ori	$a0, $zero, 2
	st.d	$a5, $sp, 8                     # 8-byte Folded Spill
	blt	$a1, $a0, .LBB0_154
# %bb.20:                               # %.peel.next.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$a6, $zero
	ori	$a0, $zero, 44
	mul.d	$s7, $s4, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	addi.d	$a4, $a0, 16
	move	$a3, $a5
	b	.LBB0_59
	.p2align	4, , 16
.LBB0_21:                               #   in Loop: Header=BB0_5 Depth=1
	st.d	$s4, $sp, 240                   # 8-byte Folded Spill
	ori	$s1, $zero, 1
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	blt	$a0, $s3, .LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_5 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(watesides)
	jirl	$ra, $ra, 0
.LBB0_23:                               # %.preheader933
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	ldx.d	$s5, $a0, $a1
	addi.d	$a2, $sp, 1320
	move	$a0, $s7
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 272
	move	$a0, $s7
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 272
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 272
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 0
	addi.d	$a1, $sp, 272
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $s4, %pc_lo12(A)
	ori	$a2, $zero, 248
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $s3, %pc_lo12(R)
	vld	$vr0, $sp, 256                  # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	vst	$vr0, $a0, 16
	vst	$vr0, $a0, 32
	addi.d	$a2, $sp, 1332
	move	$a0, $s7
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 272
	move	$a0, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1332
	blt	$a0, $s1, .LBB0_26
# %bb.24:                               # %.lr.ph1084.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$fp, $zero
	.p2align	4, , 16
.LBB0_25:                               # %.lr.ph1084
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	addi.d	$a2, $sp, 1328
	addi.d	$a3, $sp, 1324
	move	$a0, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, %pc_lo12(A)
	ld.w	$a1, $a0, 0
	ld.w	$a2, $sp, 1328
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 0
	slli.d	$a1, $a1, 3
	stx.w	$a2, $a0, $a1
	ld.w	$a1, $a0, 0
	ld.w	$a2, $sp, 1324
	alsl.d	$a0, $a1, $a0, 3
	st.w	$a2, $a0, 4
	ld.w	$a0, $sp, 1332
	addi.w	$fp, $fp, 1
	blt	$fp, $a0, .LBB0_25
.LBB0_26:                               # %._crit_edge1085
                                        #   in Loop: Header=BB0_5 Depth=1
	st.w	$a0, $s5, 64
	pcaddu18i	$ra, %call36(perimeter)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a2, $a3, %pc_lo12(perim)
	ld.d	$a1, $s4, %pc_lo12(A)
	add.d	$a0, $a2, $a0
	st.w	$a0, $a3, %pc_lo12(perim)
	ld.w	$a0, $a1, 0
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	blt	$a0, $s1, .LBB0_49
# %bb.27:                               # %.lr.ph1090
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a3, $a2, 0
	addi.d	$a2, $a0, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a3, 44
	addi.d	$a4, $a1, 12
	ori	$a5, $zero, 1
	b	.LBB0_31
	.p2align	4, , 16
.LBB0_28:                               #   in Loop: Header=BB0_31 Depth=2
	ld.w	$a6, $a1, 8
.LBB0_29:                               #   in Loop: Header=BB0_31 Depth=2
	ld.w	$a7, $a4, -4
	sub.w	$a6, $a6, $a7
	srai.d	$a7, $a6, 31
	xor	$a6, $a6, $a7
	sub.d	$a6, $a6, $a7
	ld.w	$a7, $a4, 0
	st.w	$a6, $a3, -20
	st.w	$zero, $a3, -4
.LBB0_30:                               #   in Loop: Header=BB0_31 Depth=2
	st.d	$zero, $a3, -12
	st.w	$a7, $a3, 0
	addi.d	$a5, $a5, 1
	addi.d	$a3, $a3, 24
	addi.d	$a4, $a4, 8
	beq	$a2, $a5, .LBB0_41
.LBB0_31:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bgeu	$a5, $a0, .LBB0_28
# %bb.32:                               #   in Loop: Header=BB0_31 Depth=2
	andi	$a6, $a5, 1
	bnez	$a6, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_31 Depth=2
	ld.w	$a6, $a4, 4
	b	.LBB0_29
	.p2align	4, , 16
.LBB0_34:                               #   in Loop: Header=BB0_31 Depth=2
	ld.w	$a6, $a4, 8
	ld.w	$a7, $a4, 0
	sub.w	$a6, $a6, $a7
	srai.d	$a7, $a6, 31
	xor	$a6, $a6, $a7
	sub.d	$a6, $a6, $a7
	ld.w	$a7, $a4, -4
	st.w	$a6, $a3, -20
	st.w	$s1, $a3, -4
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_35:                               #   in Loop: Header=BB0_5 Depth=1
	ori	$fp, $zero, 1
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	bnez	$s1, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_5 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(watesides)
	jirl	$ra, $ra, 0
.LBB0_37:                               # %.preheader936
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	ldx.d	$s5, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	addi.d	$a2, $sp, 1320
	move	$a0, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s6, $a0, %pc_lo12(.L.str.3)
	addi.d	$a2, $sp, 272
	move	$a0, $s7
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 272
	move	$a0, $s7
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 272
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 0
	addi.d	$a1, $sp, 272
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $s3, %pc_lo12(A)
	ori	$a2, $zero, 248
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R)
	vld	$vr0, $sp, 256                  # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	vst	$vr0, $a0, 16
	vst	$vr0, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1332
	move	$a0, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 272
	move	$a0, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1332
	blt	$a0, $fp, .LBB0_61
# %bb.38:                               # %.lr.ph1066.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$fp, $zero
	.p2align	4, , 16
.LBB0_39:                               # %.lr.ph1066
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	addi.d	$a2, $sp, 1328
	addi.d	$a3, $sp, 1324
	move	$a0, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(A)
	ld.w	$a1, $a0, 0
	ld.w	$a2, $sp, 1328
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 0
	slli.d	$a1, $a1, 3
	stx.w	$a2, $a0, $a1
	ld.w	$a1, $a0, 0
	ld.w	$a2, $sp, 1324
	alsl.d	$a3, $a1, $a0, 3
	st.w	$a2, $a3, 4
	ld.w	$a2, $sp, 1332
	addi.w	$fp, $fp, 1
	blt	$fp, $a2, .LBB0_39
# %bb.40:                               # %.preheader935
                                        #   in Loop: Header=BB0_5 Depth=1
	st.d	$s4, $sp, 240                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	bge	$a1, $a2, .LBB0_62
	b	.LBB0_66
	.p2align	4, , 16
.LBB0_41:                               # %.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.w	$s2, $a1, 8
	ld.w	$s0, $a1, 12
	st.w	$s2, $sp, 1328
	st.w	$s0, $sp, 1324
	ld.w	$a0, $a1, 0
	ori	$a2, $zero, 2
	blt	$a0, $a2, .LBB0_48
# %bb.42:                               # %.lr.ph1098.peel.next.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$a0, $a1, 20
	ori	$a2, $zero, 1
	move	$s7, $s0
	move	$s8, $s2
	.p2align	4, , 16
.LBB0_43:                               # %.lr.ph1098.peel.next
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a0, -4
	st.w	$a3, $sp, 1328
	ld.w	$a4, $a0, 0
	st.w	$a4, $sp, 1324
	slt	$a5, $a3, $s8
	masknez	$a6, $s8, $a5
	maskeqz	$a5, $a3, $a5
	or	$s8, $a5, $a6
	slt	$a5, $s2, $a3
	masknez	$a6, $s2, $a5
	maskeqz	$a3, $a3, $a5
	or	$s2, $a3, $a6
	slt	$a3, $a4, $s7
	masknez	$a5, $s7, $a3
	maskeqz	$a3, $a4, $a3
	or	$s7, $a3, $a5
	slt	$a3, $s0, $a4
	masknez	$a5, $s0, $a3
	ld.w	$a6, $a1, 0
	maskeqz	$a3, $a4, $a3
	or	$s0, $a3, $a5
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, 8
	blt	$a2, $a6, .LBB0_43
	b	.LBB0_49
.LBB0_44:                               #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 272
	move	$a0, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $sp, 272
	ori	$a1, $zero, 76
	beq	$a0, $a1, .LBB0_83
# %bb.45:                               #   in Loop: Header=BB0_5 Depth=1
	ld.hu	$a0, $sp, 272
	ori	$a1, $zero, 84
	beq	$a0, $a1, .LBB0_99
# %bb.46:                               #   in Loop: Header=BB0_5 Depth=1
	ld.hu	$a0, $sp, 272
	ori	$a1, $zero, 82
	beq	$a0, $a1, .LBB0_103
# %bb.47:                               #   in Loop: Header=BB0_5 Depth=1
	ld.hu	$a1, $sp, 272
	ori	$a0, $zero, 4
	ori	$a2, $zero, 66
	beq	$a1, $a2, .LBB0_104
	b	.LBB0_189
.LBB0_48:                               #   in Loop: Header=BB0_5 Depth=1
	move	$s8, $s2
	move	$s7, $s0
.LBB0_49:                               # %._crit_edge1099
                                        #   in Loop: Header=BB0_5 Depth=1
	ori	$a0, $zero, 104
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$a0, $s5, 152
	st.d	$zero, $a0, 0
	add.d	$a0, $s2, $s8
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$s1, $a0, 1
	add.d	$a0, $s0, $s7
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$fp, $a0, 1
	sub.d	$a0, $s8, $s1
	vld	$vr0, $sp, 256                  # 16-byte Folded Reload
	vst	$vr0, $s6, 88
	st.w	$a0, $s6, 72
	st.w	$a0, $s6, 56
	sub.d	$a0, $s2, $s1
	st.w	$a0, $s6, 76
	st.w	$a0, $s6, 60
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	sub.d	$a0, $s7, $fp
	st.w	$a0, $s6, 80
	st.w	$a0, $s6, 64
	sub.d	$a0, $s0, $fp
	st.w	$a0, $s6, 84
	st.w	$a0, $s6, 68
	vst	$vr0, $s6, 40
	st.w	$s1, $s5, 12
	st.w	$fp, $s5, 16
	st.w	$zero, $s5, 60
	.p2align	4, , 16
.LBB0_50:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s5, 60
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, 60
	ori	$a0, $zero, 104
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.d	$a0, $s6, 0
	st.d	$zero, $a0, 0
	vld	$vr0, $sp, 256                  # 16-byte Folded Reload
	vst	$vr0, $a0, 88
	pcaddu18i	$ra, %call36(buster)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(R)
	ld.w	$a1, $a0, 8
	sub.d	$a1, $a1, $s1
	ld.w	$a2, $a0, 32
	st.w	$a1, $s7, 72
	st.w	$a1, $s7, 56
	ld.w	$a1, $a0, 12
	sub.d	$a2, $a2, $s1
	st.w	$a2, $s7, 76
	st.w	$a2, $s7, 60
	sub.d	$a1, $a1, $fp
	ld.d	$a2, $s4, %pc_lo12(A)
	st.w	$a1, $s7, 80
	ld.w	$a0, $a0, 20
	vld	$vr0, $sp, 256                  # 16-byte Folded Reload
	vst	$vr0, $s7, 40
	ld.w	$a2, $a2, 0
	st.w	$a1, $s7, 64
	sub.d	$a0, $a0, $fp
	st.w	$a0, $s7, 84
	st.w	$a0, $s7, 68
	move	$s6, $s7
	bgtz	$a2, .LBB0_50
# %bb.51:                               #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s6, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 272
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s7, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1344
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1344
	st.w	$a0, $s5, 8
	addi.d	$a2, $sp, 1348
	move	$a0, $s4
	move	$a1, $s7
	move	$s7, $s4
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 272
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1348
	ori	$s3, $zero, 1
	blt	$a0, $s3, .LBB0_3
# %bb.52:                               #   in Loop: Header=BB0_5 Depth=1
	addi.d	$s4, $s5, 20
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1364
	move	$a0, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1364
	slli.d	$a0, $a0, 2
	stx.w	$s3, $s4, $a0
	ld.w	$a0, $sp, 1364
	ld.w	$a1, $sp, 1348
	st.w	$a0, $s5, 56
	st.w	$a0, $s5, 52
	ori	$a0, $zero, 2
	blt	$a1, $a0, .LBB0_3
# %bb.53:                               # %.peel.next1240.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	ori	$s6, $zero, 1
	.p2align	4, , 16
.LBB0_54:                               # %.peel.next1240
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1364
	move	$a0, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1364
	slli.d	$a0, $a0, 2
	stx.w	$s3, $s4, $a0
	ld.w	$a0, $sp, 1348
	addi.w	$s6, $s6, 1
	blt	$s6, $a0, .LBB0_54
	b	.LBB0_3
.LBB0_55:                               #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	addi.d	$a2, $sp, 1296
	move	$a0, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 80
	addi.d	$a0, $a0, -1
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB0_112
# %bb.56:                               #   in Loop: Header=BB0_5 Depth=1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI0_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB0_57:                               #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(fixLRBT)
	ld.d	$a0, $a0, %got_pc_lo12(fixLRBT)
	pcalau12i	$a1, %got_pc_hi20(padspace)
	ld.d	$a1, $a1, %got_pc_lo12(padspace)
	ld.d	$a0, $a0, 0
	fld.d	$fa0, $sp, 1296
	ld.d	$a1, $a1, 0
	st.w	$s3, $a0, 0
	b	.LBB0_111
	.p2align	4, , 16
.LBB0_58:                               #   in Loop: Header=BB0_59 Depth=2
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s6, $s4, 0
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 0
	st.d	$s6, $a0, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a4
	addi.d	$a1, $a1, 2
	st.w	$a1, $a0, 24
	st.w	$zero, $a0, 28
	vld	$vr0, $sp, 256                  # 16-byte Folded Reload
	vst	$vr0, $a0, 8
	ld.d	$a2, $s5, 144
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	st.w	$a3, $a0, 32
	st.w	$zero, $a0, 40
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	add.d	$a0, $a2, $s7
	st.w	$zero, $a0, 116
	st.w	$a1, $a0, 88
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.w	$a1, $a0, 120
	ld.w	$a1, $sp, 1352
	addi.d	$s7, $s7, 44
	addi.d	$a0, $a4, 1
	addi.w	$a2, $a4, 2
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a4, $a4, 8
	move	$a6, $a0
	bge	$a2, $a1, .LBB0_153
.LBB0_59:                               # %.peel.next
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$a6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 88                    # 8-byte Folded Spill
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s6, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 272
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	move	$a0, $s4
	move	$a1, $s6
	move	$s7, $a4
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 272
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 272
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 272
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	stx.d	$a0, $a1, $s7
	addi.d	$a1, $sp, 272
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 272
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 272
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 272
	pcaddu18i	$ra, %call36(hashfind)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	slli.d	$a2, $a0, 3
	ldx.d	$s4, $a1, $a2
	ld.d	$a2, $s4, 64
	bnez	$a2, .LBB0_58
# %bb.60:                               #   in Loop: Header=BB0_59 Depth=2
	alsl.d	$s6, $a0, $a1, 3
	addi.d	$a0, $sp, 272
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 64
	addi.d	$a1, $sp, 272
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s6, 0
	b	.LBB0_58
.LBB0_61:                               # %.preheader936..preheader935_crit_edge
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $s3, %pc_lo12(A)
	ld.w	$a1, $a0, 0
	st.d	$s4, $sp, 240                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	blt	$a1, $a2, .LBB0_66
.LBB0_62:                               #   in Loop: Header=BB0_5 Depth=1
	ld.w	$s2, $a0, 8
	ld.w	$s0, $a0, 12
	st.w	$s2, $sp, 1328
	st.w	$s0, $sp, 1324
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB0_65
# %bb.63:                               # %.lr.ph1073.peel.next.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$a1, $a0, 20
	ori	$a2, $zero, 1
	move	$s3, $s0
	move	$s8, $s2
	.p2align	4, , 16
.LBB0_64:                               # %.lr.ph1073.peel.next
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a1, -4
	st.w	$a3, $sp, 1328
	ld.w	$a4, $a1, 0
	st.w	$a4, $sp, 1324
	slt	$a5, $a3, $s8
	masknez	$a6, $s8, $a5
	maskeqz	$a5, $a3, $a5
	or	$s8, $a5, $a6
	slt	$a5, $s2, $a3
	masknez	$a6, $s2, $a5
	maskeqz	$a3, $a3, $a5
	or	$s2, $a3, $a6
	slt	$a3, $a4, $s3
	masknez	$a5, $s3, $a3
	maskeqz	$a3, $a4, $a3
	or	$s3, $a3, $a5
	slt	$a3, $s0, $a4
	masknez	$a5, $s0, $a3
	ld.w	$a6, $a0, 0
	maskeqz	$a3, $a4, $a3
	or	$s0, $a3, $a5
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 8
	blt	$a2, $a6, .LBB0_64
	b	.LBB0_66
.LBB0_65:                               #   in Loop: Header=BB0_5 Depth=1
	move	$s8, $s2
	move	$s3, $s0
.LBB0_66:                               # %._crit_edge1074
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.w	$s1, $s1, 1
	st.d	$s1, $sp, 168                   # 8-byte Folded Spill
	ori	$a0, $zero, 104
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$a0, $s5, 152
	st.d	$zero, $a0, 0
	add.d	$a0, $s2, $s8
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$s1, $a0, 1
	add.d	$a0, $s0, $s3
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$fp, $a0, 1
	sub.d	$a0, $s8, $s1
	vld	$vr0, $sp, 256                  # 16-byte Folded Reload
	vst	$vr0, $s6, 88
	st.w	$a0, $s6, 72
	st.w	$a0, $s6, 56
	sub.d	$a0, $s2, $s1
	st.w	$a0, $s6, 76
	st.w	$a0, $s6, 60
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	sub.d	$a0, $s3, $fp
	st.w	$a0, $s6, 80
	st.w	$a0, $s6, 64
	sub.d	$a0, $s0, $fp
	st.w	$a0, $s6, 84
	st.w	$a0, $s6, 68
	vst	$vr0, $s6, 40
	st.w	$s1, $s5, 12
	st.w	$fp, $s5, 16
	st.w	$zero, $s5, 60
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_67:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s5, 60
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, 60
	ori	$a0, $zero, 104
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.d	$a0, $s6, 0
	st.d	$zero, $a0, 0
	vld	$vr0, $sp, 256                  # 16-byte Folded Reload
	vst	$vr0, $a0, 88
	pcaddu18i	$ra, %call36(buster)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(R)
	ld.w	$a1, $a0, 8
	sub.d	$a1, $a1, $s1
	ld.w	$a2, $a0, 32
	st.w	$a1, $s7, 72
	st.w	$a1, $s7, 56
	ld.w	$a1, $a0, 12
	sub.d	$a2, $a2, $s1
	st.w	$a2, $s7, 76
	st.w	$a2, $s7, 60
	sub.d	$a1, $a1, $fp
	ld.d	$a2, $s4, %pc_lo12(A)
	st.w	$a1, $s7, 80
	ld.w	$a0, $a0, 20
	vld	$vr0, $sp, 256                  # 16-byte Folded Reload
	vst	$vr0, $s7, 40
	ld.w	$a2, $a2, 0
	st.w	$a1, $s7, 64
	sub.d	$a0, $a0, $fp
	st.w	$a0, $s7, 84
	st.w	$a0, $s7, 68
	move	$s6, $s7
	bgtz	$a2, .LBB0_67
# %bb.68:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$s6, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 216                   # 8-byte Folded Reload
	ori	$s3, $zero, 1
	b	.LBB0_4
.LBB0_69:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	blt	$a0, $s3, .LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_5 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(watesides)
	jirl	$ra, $ra, 0
.LBB0_71:                               # %.preheader942
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	ldx.d	$s5, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	addi.d	$a2, $sp, 1320
	move	$a0, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s6, $a0, %pc_lo12(.L.str.3)
	addi.d	$a2, $sp, 272
	move	$a0, $s7
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 272
	move	$a0, $s7
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 272
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 0
	addi.d	$a1, $sp, 272
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $s3, %pc_lo12(A)
	ld.d	$s1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $s1, %pc_lo12(B)
	ori	$fp, $zero, 1
	st.w	$fp, $s5, 76
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
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(R)
	st.d	$zero, $a1, 232
	st.d	$zero, $a0, 240
	st.d	$zero, $a1, 240
	vld	$vr0, $sp, 256                  # 16-byte Folded Reload
	vst	$vr0, $a2, 32
	vst	$vr0, $a2, 16
	vst	$vr0, $a2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1332
	move	$a0, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 272
	move	$a0, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1332
	blt	$a0, $fp, .LBB0_74
# %bb.72:                               # %.lr.ph1021.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$fp, $zero
	.p2align	4, , 16
.LBB0_73:                               # %.lr.ph1021
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	addi.d	$a2, $sp, 1328
	addi.d	$a3, $sp, 1324
	move	$a0, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(A)
	ld.w	$a1, $a0, 0
	ld.w	$a2, $sp, 1328
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 0
	slli.d	$a1, $a1, 3
	stx.w	$a2, $a0, $a1
	ld.d	$a1, $s1, %pc_lo12(B)
	ld.w	$a2, $a0, 0
	ld.w	$a3, $sp, 1324
	ld.w	$a4, $a1, 0
	alsl.d	$a0, $a2, $a0, 3
	st.w	$a3, $a0, 4
	ld.w	$a0, $sp, 1328
	addi.w	$a2, $a4, 1
	st.w	$a2, $a1, 0
	slli.d	$a2, $a2, 3
	stx.w	$a0, $a1, $a2
	ld.w	$a0, $a1, 0
	ld.w	$a2, $sp, 1324
	alsl.d	$a0, $a0, $a1, 3
	st.w	$a2, $a0, 4
	ld.w	$a0, $sp, 1332
	addi.w	$fp, $fp, 1
	blt	$fp, $a0, .LBB0_73
.LBB0_74:                               # %._crit_edge1022
                                        #   in Loop: Header=BB0_5 Depth=1
	st.w	$a0, $s5, 64
	slli.d	$a0, $a0, 3
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 216
	pcaddu18i	$ra, %call36(perimeter)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a2, $a3, %pc_lo12(perim)
	ld.d	$a1, $s3, %pc_lo12(A)
	add.d	$a0, $a2, $a0
	st.w	$a0, $a3, %pc_lo12(perim)
	ld.w	$a0, $a1, 0
	ori	$t0, $zero, 1
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	blt	$a0, $t0, .LBB0_114
# %bb.75:                               # %.lr.ph1027
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a3, $a2, 0
	addi.d	$a2, $a0, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a3, 44
	addi.d	$a4, $a1, 12
	ori	$a5, $zero, 1
	b	.LBB0_79
	.p2align	4, , 16
.LBB0_76:                               #   in Loop: Header=BB0_79 Depth=2
	ld.w	$a6, $a1, 8
.LBB0_77:                               #   in Loop: Header=BB0_79 Depth=2
	ld.w	$a7, $a4, -4
	sub.w	$a6, $a6, $a7
	srai.d	$a7, $a6, 31
	xor	$a6, $a6, $a7
	sub.d	$a6, $a6, $a7
	ld.w	$a7, $a4, 0
	st.w	$a6, $a3, -20
	st.w	$zero, $a3, -4
.LBB0_78:                               #   in Loop: Header=BB0_79 Depth=2
	st.d	$zero, $a3, -12
	st.w	$a7, $a3, 0
	addi.d	$a5, $a5, 1
	addi.d	$a3, $a3, 24
	addi.d	$a4, $a4, 8
	beq	$a2, $a5, .LBB0_96
.LBB0_79:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bgeu	$a5, $a0, .LBB0_76
# %bb.80:                               #   in Loop: Header=BB0_79 Depth=2
	andi	$a6, $a5, 1
	bnez	$a6, .LBB0_82
# %bb.81:                               #   in Loop: Header=BB0_79 Depth=2
	ld.w	$a6, $a4, 4
	b	.LBB0_77
	.p2align	4, , 16
.LBB0_82:                               #   in Loop: Header=BB0_79 Depth=2
	ld.w	$a6, $a4, 8
	ld.w	$a7, $a4, 0
	sub.w	$a6, $a6, $a7
	srai.d	$a7, $a6, 31
	xor	$a6, $a6, $a7
	sub.d	$a6, $a6, $a7
	ld.w	$a7, $a4, -4
	st.w	$a6, $a3, -20
	st.w	$t0, $a3, -4
	b	.LBB0_78
.LBB0_83:                               #   in Loop: Header=BB0_5 Depth=1
	ori	$a0, $zero, 1
	b	.LBB0_104
.LBB0_84:                               #   in Loop: Header=BB0_5 Depth=1
	st.d	$s4, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s6, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 272
	move	$a0, $s7
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 272
	move	$a0, $s7
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 272
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(pinnames)
	ld.d	$a1, $a1, %got_pc_lo12(pinnames)
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	slli.d	$a2, $a2, 3
	stx.d	$a0, $a1, $a2
	addi.d	$a1, $sp, 272
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 272
	move	$a0, $s7
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 272
	move	$a0, $s7
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 272
	pcaddu18i	$ra, %call36(hashfind)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(netarray)
	ld.d	$a1, $a1, %got_pc_lo12(netarray)
	ld.d	$a1, $a1, 0
	slli.d	$a2, $a0, 3
	ldx.d	$s4, $a1, $a2
	ld.d	$a2, $s4, 64
	bnez	$a2, .LBB0_86
# %bb.85:                               #   in Loop: Header=BB0_5 Depth=1
	alsl.d	$s6, $a0, $a1, 3
	addi.d	$a0, $sp, 272
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 64
	addi.d	$a1, $sp, 272
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s6, 0
.LBB0_86:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$s6, $s4, 0
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 0
	st.d	$s6, $a0, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.w	$a1, $a0, 24
	st.w	$zero, $a0, 28
	vld	$vr0, $sp, 256                  # 16-byte Folded Reload
	vst	$vr0, $a0, 8
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.w	$a1, $a0, 32
	st.w	$zero, $a0, 40
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	addi.d	$a2, $sp, 1360
	addi.d	$a3, $sp, 1356
	move	$a0, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_88
# %bb.87:                               #   in Loop: Header=BB0_5 Depth=1
	ld.w	$a1, $sp, 1360
	ld.w	$a2, $sp, 1356
	move	$a0, $s5
	pcaddu18i	$ra, %call36(findside)
	jirl	$ra, $ra, 0
	vldi	$vr0, -912
	pcaddu18i	$ra, %call36(loadside)
	jirl	$ra, $ra, 0
.LBB0_88:                               #   in Loop: Header=BB0_5 Depth=1
	ld.w	$t3, $sp, 1360
	ld.w	$t2, $sp, 1356
	ld.w	$a0, $s5, 76
	sub.w	$s7, $t3, $s1
	st.w	$s7, $sp, 1360
	sub.w	$t4, $t2, $fp
	st.w	$t4, $sp, 1356
	ld.d	$s6, $sp, 240                   # 8-byte Folded Reload
	st.d	$t2, $sp, 32                    # 8-byte Folded Spill
	st.d	$t3, $sp, 24                    # 8-byte Folded Spill
	bne	$a0, $s3, .LBB0_94
# %bb.89:                               # %.preheader943
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.wu	$a5, $s5, 128
	addi.w	$a0, $a5, 0
	blt	$a0, $s3, .LBB0_94
# %bb.90:                               # %.lr.ph1002
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a1, $s5, 152
	ld.d	$a1, $a1, 96
	move	$a4, $zero
	addi.d	$a2, $a0, 1
	bstrpick.d	$a7, $a2, 31, 0
	addi.d	$a6, $a1, 20
	addi.d	$a1, $a1, 36
	ori	$a3, $zero, 1
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB0_91:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t0, $a6, -4
	beq	$t0, $s7, .LBB0_143
# %bb.92:                               #   in Loop: Header=BB0_91 Depth=2
	ld.w	$t1, $a6, 0
	beq	$t1, $t4, .LBB0_149
# %bb.93:                               #   in Loop: Header=BB0_91 Depth=2
	addi.d	$a2, $a2, 1
	addi.w	$a3, $a3, 1
	addi.d	$a6, $a6, 16
	addi.d	$a4, $a4, 1
	addi.d	$a1, $a1, 16
	bne	$a7, $a2, .LBB0_91
.LBB0_94:                               # %.loopexit944
                                        #   in Loop: Header=BB0_5 Depth=1
	st.d	$t4, $sp, 88                    # 8-byte Folded Spill
	ld.w	$s4, $s5, 68
	addi.d	$a0, $s4, 1
	st.w	$a0, $s5, 68
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	beqz	$s4, .LBB0_137
# %bb.95:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	st.d	$s6, $a0, 0
	b	.LBB0_138
.LBB0_96:                               # %.preheader941
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.w	$s2, $a1, 8
	ld.w	$s0, $a1, 12
	st.w	$s2, $sp, 1328
	st.w	$s0, $sp, 1324
	ld.w	$a0, $a1, 0
	ori	$a2, $zero, 2
	blt	$a0, $a2, .LBB0_113
# %bb.97:                               # %.lr.ph1035.peel.next.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$a0, $a1, 20
	ori	$a2, $zero, 1
	move	$s3, $s0
	move	$s8, $s2
	.p2align	4, , 16
.LBB0_98:                               # %.lr.ph1035.peel.next
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a0, -4
	st.w	$a3, $sp, 1328
	ld.w	$a4, $a0, 0
	st.w	$a4, $sp, 1324
	slt	$a5, $a3, $s8
	masknez	$a6, $s8, $a5
	maskeqz	$a5, $a3, $a5
	or	$s8, $a5, $a6
	slt	$a5, $s2, $a3
	masknez	$a6, $s2, $a5
	maskeqz	$a3, $a3, $a5
	or	$s2, $a3, $a6
	slt	$a3, $a4, $s3
	masknez	$a5, $s3, $a3
	maskeqz	$a3, $a4, $a3
	or	$s3, $a3, $a5
	slt	$a3, $s0, $a4
	masknez	$a5, $s0, $a3
	ld.w	$a6, $a1, 0
	maskeqz	$a3, $a4, $a3
	or	$s0, $a3, $a5
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, 8
	blt	$a2, $a6, .LBB0_98
	b	.LBB0_114
.LBB0_99:                               #   in Loop: Header=BB0_5 Depth=1
	ori	$a0, $zero, 2
	b	.LBB0_104
.LBB0_100:                              #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s6, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 272
	move	$a0, $s7
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 272
	move	$a0, $s7
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	addi.d	$a2, $sp, 1360
	addi.d	$a3, $sp, 1356
	move	$a0, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_102
# %bb.101:                              #   in Loop: Header=BB0_5 Depth=1
	ld.w	$a1, $sp, 1360
	ld.w	$a2, $sp, 1356
	move	$a0, $s5
	pcaddu18i	$ra, %call36(findside)
	jirl	$ra, $ra, 0
	vldi	$vr0, -912
	pcaddu18i	$ra, %call36(loadside)
	jirl	$ra, $ra, 0
.LBB0_102:                              #   in Loop: Header=BB0_5 Depth=1
	ld.w	$a0, $sp, 1360
	ld.w	$a1, $sp, 1356
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	addi.w	$a4, $a4, 1
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	add.w	$a3, $a0, $a3
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	add.w	$a2, $a1, $a2
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	div.w	$a0, $a3, $a4
	sub.d	$a0, $a0, $s1
	st.w	$a0, $s4, 8
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	div.w	$a1, $a2, $a4
	sub.d	$a1, $a1, $fp
	st.w	$a1, $s4, 12
	st.w	$a0, $s4, 16
	st.w	$a1, $s4, 20
	b	.LBB0_112
.LBB0_103:                              #   in Loop: Header=BB0_5 Depth=1
	ori	$a0, $zero, 3
.LBB0_104:                              #   in Loop: Header=BB0_5 Depth=1
	st.w	$a0, $s5, 80
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s6, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 272
	move	$a0, $s7
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s7, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1344
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1344
	st.w	$a0, $s5, 8
	addi.d	$a2, $sp, 1348
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	move	$a1, $s7
	ld.d	$s7, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 272
	move	$a0, $s7
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1348
	blt	$a0, $s3, .LBB0_112
# %bb.105:                              #   in Loop: Header=BB0_5 Depth=1
	st.d	$s4, $sp, 240                   # 8-byte Folded Spill
	addi.d	$s4, $s5, 20
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1364
	move	$a0, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1364
	slli.d	$a0, $a0, 2
	stx.w	$s3, $s4, $a0
	ld.w	$a0, $sp, 1364
	ld.w	$a1, $sp, 1348
	st.w	$a0, $s5, 56
	st.w	$a0, $s5, 52
	ori	$a0, $zero, 2
	blt	$a1, $a0, .LBB0_3
# %bb.106:                              # %.peel.next1219.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	ori	$s6, $zero, 1
	.p2align	4, , 16
.LBB0_107:                              # %.peel.next1219
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1364
	move	$a0, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1364
	slli.d	$a0, $a0, 2
	stx.w	$s3, $s4, $a0
	ld.w	$a0, $sp, 1348
	addi.w	$s6, $s6, 1
	blt	$s6, $a0, .LBB0_107
	b	.LBB0_3
.LBB0_108:                              #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(fixLRBT)
	ld.d	$a0, $a0, %got_pc_lo12(fixLRBT)
	pcalau12i	$a1, %got_pc_hi20(padspace)
	ld.d	$a1, $a1, %got_pc_lo12(padspace)
	ld.d	$a0, $a0, 0
	fld.d	$fa0, $sp, 1296
	ld.d	$a1, $a1, 0
	st.w	$s3, $a0, 4
	b	.LBB0_111
.LBB0_109:                              #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(fixLRBT)
	ld.d	$a0, $a0, %got_pc_lo12(fixLRBT)
	pcalau12i	$a1, %got_pc_hi20(padspace)
	ld.d	$a1, $a1, %got_pc_lo12(padspace)
	ld.d	$a0, $a0, 0
	fld.d	$fa0, $sp, 1296
	ld.d	$a1, $a1, 0
	st.w	$s3, $a0, 8
	b	.LBB0_111
.LBB0_110:                              #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(fixLRBT)
	ld.d	$a0, $a0, %got_pc_lo12(fixLRBT)
	pcalau12i	$a1, %got_pc_hi20(padspace)
	ld.d	$a1, $a1, %got_pc_lo12(padspace)
	ld.d	$a0, $a0, 0
	fld.d	$fa0, $sp, 1296
	ld.d	$a1, $a1, 0
	st.w	$s3, $a0, 12
.LBB0_111:                              # %.loopexit
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	fstx.d	$fa0, $a1, $a0
.LBB0_112:                              # %.loopexit
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$s6, $s4
	b	.LBB0_4
.LBB0_113:                              #   in Loop: Header=BB0_5 Depth=1
	move	$s8, $s2
	move	$s3, $s0
.LBB0_114:                              # %._crit_edge1036
                                        #   in Loop: Header=BB0_5 Depth=1
	st.d	$s4, $sp, 240                   # 8-byte Folded Spill
	sub.d	$a0, $s0, $s3
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	sub.d	$a0, $s2, $s8
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s5, 96
	fst.d	$fa0, $s5, 104
	ori	$a0, $zero, 104
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$a0, $s5, 152
	st.d	$zero, $a0, 0
	add.d	$a0, $s2, $s8
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$s1, $a0, 1
	add.d	$a0, $s0, $s3
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$fp, $a0, 1
	sub.d	$a0, $s8, $s1
	vld	$vr0, $sp, 256                  # 16-byte Folded Reload
	vst	$vr0, $s6, 88
	st.w	$a0, $s6, 72
	st.w	$a0, $s6, 56
	sub.d	$a0, $s2, $s1
	st.w	$a0, $s6, 76
	st.w	$a0, $s6, 60
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	sub.d	$a0, $s3, $fp
	st.w	$a0, $s6, 80
	st.w	$a0, $s6, 64
	sub.d	$a0, $s0, $fp
	st.w	$a0, $s6, 84
	st.w	$a0, $s6, 68
	vst	$vr0, $s6, 40
	st.w	$s1, $s5, 12
	st.w	$fp, $s5, 16
	st.w	$zero, $s5, 60
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_115:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s5, 60
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, 60
	ori	$a0, $zero, 104
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.d	$a0, $s6, 0
	st.d	$zero, $a0, 0
	vld	$vr0, $sp, 256                  # 16-byte Folded Reload
	vst	$vr0, $a0, 88
	pcaddu18i	$ra, %call36(buster)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(R)
	ld.w	$a1, $a0, 8
	sub.d	$a1, $a1, $s1
	ld.w	$a2, $a0, 32
	st.w	$a1, $s7, 72
	st.w	$a1, $s7, 56
	ld.w	$a1, $a0, 12
	sub.d	$a2, $a2, $s1
	st.w	$a2, $s7, 76
	st.w	$a2, $s7, 60
	sub.d	$a1, $a1, $fp
	ld.d	$a2, $s4, %pc_lo12(A)
	st.w	$a1, $s7, 80
	ld.w	$a0, $a0, 20
	vld	$vr0, $sp, 256                  # 16-byte Folded Reload
	vst	$vr0, $s7, 40
	ld.w	$a2, $a2, 0
	st.w	$a1, $s7, 64
	sub.d	$a0, $a0, $fp
	st.w	$a0, $s7, 84
	st.w	$a0, $s7, 68
	move	$s6, $s7
	bgtz	$a2, .LBB0_115
# %bb.116:                              #   in Loop: Header=BB0_5 Depth=1
	ld.w	$a0, $s5, 132
	beqz	$a0, .LBB0_124
# %bb.117:                              #   in Loop: Header=BB0_5 Depth=1
	addi.w	$a0, $a0, 1
	ori	$a1, $zero, 44
	mul.d	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(B)
	ld.w	$a2, $a1, 0
	st.d	$a0, $s5, 144
	ori	$s3, $zero, 1
	blt	$a2, $s3, .LBB0_126
# %bb.118:                              # %.lr.ph1045.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$s6, $zero
	move	$s7, $zero
	move	$s4, $zero
	b	.LBB0_121
	.p2align	4, , 16
.LBB0_119:                              #   in Loop: Header=BB0_121 Depth=2
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $a4
	move	$a4, $zero
	pcaddu18i	$ra, %call36(Vside)
	jirl	$ra, $ra, 0
.LBB0_120:                              #   in Loop: Header=BB0_121 Depth=2
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(B)
	ld.d	$a3, $s5, 216
	add.d	$a0, $a0, $s4
	addi.d	$a4, $s4, 1
	ld.w	$a2, $a1, 0
	add.d	$a3, $a3, $s6
	st.w	$a4, $a3, 8
	st.w	$a0, $a3, 12
	addi.d	$s6, $s6, 8
	move	$s4, $a0
	bge	$s7, $a2, .LBB0_123
.LBB0_121:                              # %.lr.ph1045
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$s7, $s7, 1
	add.d	$a5, $a1, $s6
	addi.d	$a0, $a5, 8
	ld.w	$a4, $a5, 12
	bstrpick.d	$a2, $a2, 31, 0
	xor	$a2, $s7, $a2
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	ld.w	$a3, $a0, 12
	ld.w	$a1, $a5, 8
	bne	$a4, $a3, .LBB0_119
# %bb.122:                              #   in Loop: Header=BB0_121 Depth=2
	ld.w	$a2, $a0, 8
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	move	$a3, $a4
	move	$a4, $zero
	pcaddu18i	$ra, %call36(Hside)
	jirl	$ra, $ra, 0
	b	.LBB0_120
.LBB0_123:                              # %.loopexit940.loopexit
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.w	$a1, $s5, 132
	sltui	$s4, $a1, 1
	b	.LBB0_127
.LBB0_124:                              #   in Loop: Header=BB0_5 Depth=1
	move	$a0, $zero
	ori	$s4, $zero, 1
	ori	$s3, $zero, 1
	b	.LBB0_127
.LBB0_125:                              #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	addi.d	$a2, $sp, 1304
	move	$a0, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 1304
	fst.d	$fa0, $s5, 120
	b	.LBB0_112
.LBB0_126:                              #   in Loop: Header=BB0_5 Depth=1
	move	$s4, $zero
	move	$a0, $zero
.LBB0_127:                              # %.loopexit940
                                        #   in Loop: Header=BB0_5 Depth=1
	st.w	$a0, $s5, 128
	addi.w	$a0, $a0, 1
	slli.d	$s6, $a0, 4
	alsl.d	$a0, $a0, $s6, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 136
	move	$a0, $s6
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 152
	st.d	$a0, $a1, 96
	ld.d	$s7, $sp, 216                   # 8-byte Folded Reload
	bnez	$s4, .LBB0_2
# %bb.128:                              # %.preheader938
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(B)
	ld.w	$a2, $a0, 0
	blt	$a2, $s3, .LBB0_2
# %bb.129:                              # %.lr.ph1056.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$s7, $zero
	ori	$a3, $zero, 1
	ld.d	$s4, $sp, 240                   # 8-byte Folded Reload
	b	.LBB0_131
	.p2align	4, , 16
.LBB0_130:                              # %._crit_edge1052
                                        #   in Loop: Header=BB0_131 Depth=2
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(B)
	ld.w	$a2, $a0, 0
	addi.d	$a3, $s6, 1
	move	$s7, $a1
	bge	$s6, $a2, .LBB0_136
.LBB0_131:                              # %.lr.ph1056
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_135 Depth 3
	move	$s6, $a3
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
	bne	$a5, $a3, .LBB0_133
# %bb.132:                              #   in Loop: Header=BB0_131 Depth=2
	ld.w	$a2, $a2, 8
	ori	$a4, $zero, 1
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	move	$a3, $a5
	pcaddu18i	$ra, %call36(Hside)
	jirl	$ra, $ra, 0
	add.w	$a1, $a0, $s7
	vld	$vr1, $sp, 256                  # 16-byte Folded Reload
	bge	$a0, $s3, .LBB0_134
	b	.LBB0_130
	.p2align	4, , 16
.LBB0_133:                              #   in Loop: Header=BB0_131 Depth=2
	ori	$a4, $zero, 1
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(Vside)
	jirl	$ra, $ra, 0
	add.w	$a1, $a0, $s7
	vld	$vr1, $sp, 256                  # 16-byte Folded Reload
	blt	$a0, $s3, .LBB0_130
.LBB0_134:                              # %.lr.ph1051
                                        #   in Loop: Header=BB0_131 Depth=2
	ld.d	$a0, $s5, 152
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(kArray)
	ld.d	$a3, $s5, 136
	ld.d	$a4, $a0, 96
	addi.d	$a0, $a2, 36
	slli.d	$a2, $s7, 4
	alsl.d	$a2, $s7, $a2, 2
	add.d	$a2, $a3, $a2
	addi.d	$a2, $a2, 36
	alsl.d	$a3, $s7, $a4, 4
	addi.d	$a3, $a3, 28
	.p2align	4, , 16
.LBB0_135:                              #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $a0, -8
	ld.w	$a5, $a0, -4
	ld.w	$a6, $a0, 0
	st.w	$a4, $a2, 0
	sub.d	$a4, $a5, $s1
	st.w	$a4, $a3, -12
	sub.d	$a5, $a6, $fp
	st.w	$a5, $a3, -8
	st.w	$a4, $a3, -4
	st.w	$a5, $a3, 0
	ld.d	$a4, $a0, -16
	addi.d	$s7, $s7, 1
	vinsgr2vr.d	$vr0, $a4, 0
	vpackev.d	$vr0, $vr0, $vr1
	vst	$vr0, $a2, -16
	addi.d	$a0, $a0, 20
	addi.d	$a2, $a2, 20
	addi.d	$a3, $a3, 16
	blt	$s7, $a1, .LBB0_135
	b	.LBB0_130
.LBB0_136:                              #   in Loop: Header=BB0_5 Depth=1
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	move	$s6, $s4
	ld.d	$s7, $sp, 216                   # 8-byte Folded Reload
	b	.LBB0_4
.LBB0_137:                              #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $s5, 152
	st.d	$s6, $a0, 88
.LBB0_138:                              #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.w	$a0, $s6, 24
	st.d	$zero, $s6, 0
	st.w	$s7, $s6, 8
	st.w	$a1, $s6, 12
	st.w	$s7, $s6, 16
	st.w	$a1, $s6, 20
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s7, $sp, 216                   # 8-byte Folded Reload
	b	.LBB0_4
.LBB0_139:                              #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	addi.d	$a2, $sp, 1312
	move	$a0, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 1312
	fst.d	$fa0, $s5, 112
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s6, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 272
	move	$a0, $s7
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s7, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1344
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1344
	st.w	$a0, $s5, 8
	addi.d	$a2, $sp, 1348
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	move	$a1, $s7
	ld.d	$s7, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 272
	move	$a0, $s7
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1348
	blt	$a0, $s3, .LBB0_112
# %bb.140:                              #   in Loop: Header=BB0_5 Depth=1
	st.d	$s4, $sp, 240                   # 8-byte Folded Spill
	addi.d	$s4, $s5, 20
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1364
	move	$a0, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1364
	slli.d	$a0, $a0, 2
	stx.w	$s3, $s4, $a0
	ld.w	$a0, $sp, 1364
	ld.w	$a1, $sp, 1348
	st.w	$a0, $s5, 56
	st.w	$a0, $s5, 52
	ori	$a0, $zero, 2
	blt	$a1, $a0, .LBB0_3
# %bb.141:                              # %.peel.next1179.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	ori	$s6, $zero, 1
	.p2align	4, , 16
.LBB0_142:                              # %.peel.next1179
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 1364
	move	$a0, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1364
	slli.d	$a0, $a0, 2
	stx.w	$s3, $s4, $a0
	ld.w	$a0, $sp, 1348
	addi.w	$s6, $s6, 1
	blt	$s6, $a0, .LBB0_142
	b	.LBB0_3
.LBB0_143:                              #   in Loop: Header=BB0_5 Depth=1
	bge	$a3, $a0, .LBB0_174
# %bb.144:                              # %.lr.ph1009.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.w	$a4, $a6, 0
	sub.w	$a4, $a4, $t4
	srai.d	$a6, $a4, 31
	xor	$a4, $a4, $a6
	sub.w	$a4, $a4, $a6
	ld.d	$t0, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_145:                              # %.lr.ph1009
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a6, $a1, -4
	bne	$a6, $s7, .LBB0_175
# %bb.146:                              #   in Loop: Header=BB0_145 Depth=2
	ld.w	$a6, $a1, 0
	sub.w	$a6, $a6, $t4
	srai.d	$a7, $a6, 31
	xor	$a6, $a6, $a7
	sub.w	$a6, $a6, $a7
	bgeu	$a6, $a4, .LBB0_175
# %bb.147:                              #   in Loop: Header=BB0_145 Depth=2
	addi.d	$a3, $a3, 1
	addi.d	$a5, $a5, -1
	addi.d	$a1, $a1, 16
	move	$a4, $a6
	bne	$a2, $a5, .LBB0_145
# %bb.148:                              #   in Loop: Header=BB0_5 Depth=1
	move	$a3, $a0
	b	.LBB0_175
.LBB0_149:                              #   in Loop: Header=BB0_5 Depth=1
	sub.w	$a5, $t0, $s7
	srai.d	$a6, $a5, 31
	xor	$a5, $a5, $a6
	sub.w	$a6, $a5, $a6
	slt	$a5, $a3, $a0
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $a0, $a5
	or	$a3, $a5, $a3
	ld.d	$t0, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_150:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bgeu	$a2, $a0, .LBB0_177
# %bb.151:                              #   in Loop: Header=BB0_150 Depth=2
	move	$a5, $a6
	ld.w	$a6, $a1, 0
	addi.d	$a4, $a4, 1
	bne	$a6, $t4, .LBB0_178
# %bb.152:                              #   in Loop: Header=BB0_150 Depth=2
	ld.w	$a6, $a1, -4
	sub.w	$a6, $a6, $s7
	srai.d	$a7, $a6, 31
	xor	$a6, $a6, $a7
	sub.w	$a6, $a6, $a7
	addi.d	$a1, $a1, 16
	addi.d	$a2, $a2, 1
	bltu	$a6, $a5, .LBB0_150
	b	.LBB0_178
.LBB0_153:                              # %._crit_edge.loopexit.loopexit
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	addi.d	$a6, $a0, 1
.LBB0_154:                              # %._crit_edge.loopexit
                                        #   in Loop: Header=BB0_5 Depth=1
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	st.d	$a6, $sp, 104                   # 8-byte Folded Spill
	ld.d	$s7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 240                   # 8-byte Folded Reload
.LBB0_155:                              # %._crit_edge
                                        #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 272
	move	$a0, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	addi.d	$a2, $sp, 1340
	addi.d	$a3, $sp, 1336
	move	$a0, $s7
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1340
	bltz	$a0, .LBB0_190
# %bb.156:                              #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(B)
	ld.w	$a2, $a1, 0
	blt	$a2, $a0, .LBB0_190
# %bb.157:                              #   in Loop: Header=BB0_5 Depth=1
	ld.w	$a1, $sp, 1336
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a7, $sp, 96                    # 8-byte Folded Reload
	bltz	$a1, .LBB0_191
# %bb.158:                              #   in Loop: Header=BB0_5 Depth=1
	blt	$a2, $a1, .LBB0_191
# %bb.159:                              #   in Loop: Header=BB0_5 Depth=1
	addi.w	$a2, $a4, 0
	addi.w	$a3, $a7, 0
	beqz	$a0, .LBB0_166
# %bb.160:                              #   in Loop: Header=BB0_5 Depth=1
	beqz	$a1, .LBB0_169
# %bb.161:                              # %.preheader950
                                        #   in Loop: Header=BB0_5 Depth=1
	blt	$a3, $a2, .LBB0_165
# %bb.162:                              # %.lr.ph984
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $s5, 144
	ori	$a1, $zero, 44
	mul.d	$a1, $a2, $a1
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 24
	sub.d	$a1, $a7, $a4
	addi.d	$a1, $a1, 1
	ori	$a3, $zero, 2
	.p2align	4, , 16
.LBB0_163:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a3, $a0, -8
	ld.w	$a2, $sp, 1340
	st.w	$a2, $a0, -4
	ld.w	$a2, $sp, 1336
	st.w	$a2, $a0, 0
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 44
	bnez	$a1, .LBB0_163
# %bb.164:                              # %._crit_edge985.loopexit
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.w	$a0, $sp, 1340
.LBB0_165:                              # %._crit_edge985
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.w	$a1, $sp, 1352
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(loadside)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 1352
	ld.w	$a0, $sp, 1336
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	b	.LBB0_173
.LBB0_166:                              # %.preheader948
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.w	$a0, $s5, 64
	blt	$a3, $a2, .LBB0_185
# %bb.167:                              # %.lr.ph992
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a1, $s5, 144
	bne	$a3, $a2, .LBB0_180
# %bb.168:                              #   in Loop: Header=BB0_5 Depth=1
	move	$a3, $a2
	b	.LBB0_183
.LBB0_169:                              # %.preheader949
                                        #   in Loop: Header=BB0_5 Depth=1
	blt	$a3, $a2, .LBB0_172
# %bb.170:                              # %.lr.ph988
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $s5, 144
	ori	$a1, $zero, 44
	mul.d	$a1, $a2, $a1
	add.d	$a0, $a0, $a1
	addi.d	$a1, $a0, 20
	sub.d	$a0, $a7, $a4
	addi.d	$a2, $a0, 1
	.p2align	4, , 16
.LBB0_171:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$s3, $a1, -4
	ld.w	$a0, $sp, 1340
	st.w	$a0, $a1, 0
	addi.w	$a2, $a2, -1
	addi.d	$a1, $a1, 44
	bnez	$a2, .LBB0_171
.LBB0_172:                              # %._crit_edge989
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.w	$a1, $sp, 1352
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
.LBB0_173:                              # %.loopexit
                                        #   in Loop: Header=BB0_5 Depth=1
	pcaddu18i	$ra, %call36(loadside)
	jirl	$ra, $ra, 0
	b	.LBB0_112
.LBB0_174:                              #   in Loop: Header=BB0_5 Depth=1
	ld.d	$t0, $sp, 96                    # 8-byte Folded Reload
.LBB0_175:                              # %._crit_edge1010
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.w	$a0, $s5, 132
	addi.w	$a1, $t0, 0
	ld.d	$s7, $sp, 216                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB0_193
# %bb.176:                              #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $s5, 144
	addi.w	$t0, $t0, 1
	ori	$a1, $zero, 44
	st.d	$t0, $sp, 96                    # 8-byte Folded Spill
	mul.d	$a1, $t0, $a1
	add.d	$a2, $a0, $a1
	ori	$a5, $zero, 1
	ori	$a4, $zero, 1
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	st.w	$a5, $a2, 28
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	stx.w	$a4, $a0, $a1
	st.w	$zero, $a2, 16
	st.w	$a3, $a2, 20
	b	.LBB0_4
.LBB0_177:                              #   in Loop: Header=BB0_5 Depth=1
	move	$a4, $a3
.LBB0_178:                              # %.split.loop.exit1282
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.w	$a0, $s5, 132
	addi.w	$a1, $t0, 0
	bge	$a1, $a0, .LBB0_193
# %bb.179:                              #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $s5, 144
	addi.w	$t0, $t0, 1
	ori	$a1, $zero, 44
	st.d	$t0, $sp, 96                    # 8-byte Folded Spill
	mul.d	$a1, $t0, $a1
	add.d	$a2, $a0, $a1
	ori	$a5, $zero, 1
	ori	$a3, $zero, 1
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	st.w	$a5, $a2, 28
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	stx.w	$a3, $a0, $a1
	st.w	$zero, $a2, 16
	st.w	$a4, $a2, 20
	ld.d	$s7, $sp, 216                   # 8-byte Folded Reload
	b	.LBB0_4
.LBB0_180:                              # %vector.ph
                                        #   in Loop: Header=BB0_5 Depth=1
	sub.d	$a3, $a7, $a4
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
.LBB0_181:                              # %vector.body
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a0, $a2, -48
	st.w	$a0, $a2, -4
	st.w	$zero, $a2, -44
	st.w	$zero, $a2, 0
	addi.d	$a6, $a6, -2
	addi.d	$a2, $a2, 88
	bnez	$a6, .LBB0_181
# %bb.182:                              # %middle.block
                                        #   in Loop: Header=BB0_5 Depth=1
	beq	$a4, $a5, .LBB0_185
.LBB0_183:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	ori	$a2, $zero, 44
	mul.d	$a2, $a3, $a2
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 20
	sub.d	$a2, $a7, $a3
	addi.d	$a2, $a2, 1
	.p2align	4, , 16
.LBB0_184:                              # %scalar.ph
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a0, $a1, -4
	st.w	$zero, $a1, 0
	addi.w	$a2, $a2, -1
	addi.d	$a1, $a1, 44
	bnez	$a2, .LBB0_184
.LBB0_185:                              # %.preheader946
                                        #   in Loop: Header=BB0_5 Depth=1
	blt	$a0, $s3, .LBB0_112
# %bb.186:                              # %.lr.ph995.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$s6, $zero
	.p2align	4, , 16
.LBB0_187:                              # %.lr.ph995
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $sp, 1352
	addi.w	$s6, $s6, 1
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(loadside)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 64
	blt	$s6, $a0, .LBB0_187
	b	.LBB0_112
.LBB0_188:                              # %._crit_edge1137
	pcalau12i	$a0, %got_pc_hi20(totPins)
	ld.d	$a0, $a0, %got_pc_lo12(totPins)
	ld.w	$a0, $a0, 0
	movgr2fr.w	$fa0, $a0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(perim)
	ffint.d.w	$fa0, $fa0
	pcalau12i	$a1, %got_pc_hi20(pinsPerLen)
	ld.d	$a1, $a1, %got_pc_lo12(pinsPerLen)
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a1, 0
	pcaddu18i	$ra, %call36(setpwates)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(placepin)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(genorient)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 1368                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1376                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1384                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1392                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1400                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1408                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1416                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1424                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1432                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1440                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1448                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1456
	ret
.LBB0_189:
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
	ld.d	$a2, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_190:
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$fp, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	ori	$a1, $zero, 32
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(B)
	ld.d	$a0, $fp, 0
	ld.w	$a2, $sp, 1340
	ld.w	$a3, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	b	.LBB0_192
.LBB0_191:
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$fp, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	ori	$a1, $zero, 31
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(B)
	ld.d	$a0, $fp, 0
	ld.w	$a2, $sp, 1336
	ld.w	$a3, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
.LBB0_192:
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_193:
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
	.word	.LBB0_110-.LJTI0_0
	.word	.LBB0_108-.LJTI0_0
	.word	.LBB0_109-.LJTI0_0
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
