	.file	"zlib_crc32.c"
	.text
	.globl	get_crc_table                   # -- Begin function get_crc_table
	.p2align	5
	.type	get_crc_table,@function
get_crc_table:                          # @get_crc_table
# %bb.0:
	pcalau12i	$a0, %pc_hi20(crc_table)
	addi.d	$a0, $a0, %pc_lo12(crc_table)
	ret
.Lfunc_end0:
	.size	get_crc_table, .Lfunc_end0-get_crc_table
                                        # -- End function
	.globl	crc32_z                         # -- Begin function crc32_z
	.p2align	5
	.type	crc32_z,@function
crc32_z:                                # @crc32_z
# %bb.0:
	beqz	$a1, .LBB1_15
# %bb.1:
	nor	$t0, $a0, $zero
	pcalau12i	$a0, %pc_hi20(crc_table)
	addi.d	$a0, $a0, %pc_lo12(crc_table)
	beqz	$a2, .LBB1_6
# %bb.2:
	andi	$a3, $a1, 3
	beqz	$a3, .LBB1_6
# %bb.3:                                # %.lr.ph.i.preheader
	addi.d	$a3, $a1, 1
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB1_4:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a5, $a1, 0
	xor	$a5, $a5, $t0
	andi	$a5, $a5, 255
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a0, $a5
	move	$a6, $a2
	addi.d	$a1, $a1, 1
	bstrpick.d	$a2, $t0, 31, 8
	xor	$t0, $a5, $a2
	addi.d	$a2, $a6, -1
	beq	$a6, $a4, .LBB1_6
# %bb.5:                                # %.lr.ph.i
                                        #   in Loop: Header=BB1_4 Depth=1
	andi	$a5, $a3, 3
	addi.d	$a3, $a3, 1
	bnez	$a5, .LBB1_4
.LBB1_6:                                # %.preheader85.i
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB1_9
# %bb.7:
	lu12i.w	$a3, -4096
	lu32i.d	$a3, 0
	addi.d	$a5, $a0, 2047
	addi.d	$a4, $a5, 1025
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a0, 1024
	ori	$a7, $zero, 31
	.p2align	4, , 16
.LBB1_8:                                # %.lr.ph94.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a1, 0
	xor	$t0, $t1, $t0
	and	$t1, $t0, $a3
	andi	$t2, $t0, 255
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a4, $t2
	srli.d	$t3, $t0, 6
	andi	$t3, $t3, 1020
	ldx.w	$t3, $a5, $t3
	srli.d	$t0, $t0, 14
	andi	$t0, $t0, 1020
	ldx.w	$t0, $a6, $t0
	srli.d	$t1, $t1, 22
	ldx.w	$t1, $a0, $t1
	ld.w	$t4, $a1, 4
	xor	$t2, $t3, $t2
	xor	$t0, $t2, $t0
	xor	$t0, $t0, $t1
	xor	$t0, $t0, $t4
	and	$t1, $t0, $a3
	andi	$t2, $t0, 255
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a4, $t2
	srli.d	$t3, $t0, 6
	andi	$t3, $t3, 1020
	ldx.w	$t3, $a5, $t3
	srli.d	$t0, $t0, 14
	andi	$t0, $t0, 1020
	ldx.w	$t0, $a6, $t0
	srli.d	$t1, $t1, 22
	ldx.w	$t1, $a0, $t1
	ld.w	$t4, $a1, 8
	xor	$t2, $t3, $t2
	xor	$t0, $t2, $t0
	xor	$t0, $t0, $t1
	xor	$t0, $t0, $t4
	and	$t1, $t0, $a3
	andi	$t2, $t0, 255
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a4, $t2
	srli.d	$t3, $t0, 6
	andi	$t3, $t3, 1020
	ldx.w	$t3, $a5, $t3
	srli.d	$t0, $t0, 14
	andi	$t0, $t0, 1020
	ldx.w	$t0, $a6, $t0
	srli.d	$t1, $t1, 22
	ldx.w	$t1, $a0, $t1
	ld.w	$t4, $a1, 12
	xor	$t2, $t3, $t2
	xor	$t0, $t2, $t0
	xor	$t0, $t0, $t1
	xor	$t0, $t0, $t4
	and	$t1, $t0, $a3
	andi	$t2, $t0, 255
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a4, $t2
	srli.d	$t3, $t0, 6
	andi	$t3, $t3, 1020
	ldx.w	$t3, $a5, $t3
	srli.d	$t0, $t0, 14
	andi	$t0, $t0, 1020
	ldx.w	$t0, $a6, $t0
	srli.d	$t1, $t1, 22
	ldx.w	$t1, $a0, $t1
	ld.w	$t4, $a1, 16
	xor	$t2, $t3, $t2
	xor	$t0, $t2, $t0
	xor	$t0, $t0, $t1
	xor	$t0, $t0, $t4
	and	$t1, $t0, $a3
	andi	$t2, $t0, 255
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a4, $t2
	srli.d	$t3, $t0, 6
	andi	$t3, $t3, 1020
	ldx.w	$t3, $a5, $t3
	srli.d	$t0, $t0, 14
	andi	$t0, $t0, 1020
	ldx.w	$t0, $a6, $t0
	srli.d	$t1, $t1, 22
	ldx.w	$t1, $a0, $t1
	ld.w	$t4, $a1, 20
	xor	$t2, $t3, $t2
	xor	$t0, $t2, $t0
	xor	$t0, $t0, $t1
	xor	$t0, $t0, $t4
	and	$t1, $t0, $a3
	andi	$t2, $t0, 255
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a4, $t2
	srli.d	$t3, $t0, 6
	andi	$t3, $t3, 1020
	ldx.w	$t3, $a5, $t3
	srli.d	$t0, $t0, 14
	andi	$t0, $t0, 1020
	ldx.w	$t0, $a6, $t0
	srli.d	$t1, $t1, 22
	ldx.w	$t1, $a0, $t1
	ld.w	$t4, $a1, 24
	xor	$t2, $t3, $t2
	xor	$t0, $t2, $t0
	xor	$t0, $t0, $t1
	xor	$t0, $t0, $t4
	and	$t1, $t0, $a3
	andi	$t2, $t0, 255
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a4, $t2
	srli.d	$t3, $t0, 6
	andi	$t3, $t3, 1020
	ldx.w	$t3, $a5, $t3
	srli.d	$t0, $t0, 14
	andi	$t0, $t0, 1020
	ldx.w	$t0, $a6, $t0
	srli.d	$t1, $t1, 22
	ldx.w	$t1, $a0, $t1
	xor	$t2, $t3, $t2
	ld.w	$t3, $a1, 28
	xor	$t0, $t2, $t0
	xor	$t0, $t0, $t1
	addi.d	$a1, $a1, 32
	xor	$t0, $t0, $t3
	and	$t1, $t0, $a3
	andi	$t2, $t0, 255
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a4, $t2
	srli.d	$t3, $t0, 6
	andi	$t3, $t3, 1020
	ldx.w	$t3, $a5, $t3
	srli.d	$t0, $t0, 14
	andi	$t0, $t0, 1020
	ldx.w	$t0, $a6, $t0
	srli.d	$t1, $t1, 22
	ldx.w	$t1, $a0, $t1
	xor	$t2, $t3, $t2
	xor	$t0, $t2, $t0
	addi.d	$a2, $a2, -32
	xor	$t0, $t0, $t1
	bltu	$a7, $a2, .LBB1_8
.LBB1_9:                                # %.preheader84.i
	ori	$a3, $zero, 4
	bltu	$a2, $a3, .LBB1_16
# %bb.10:
	lu12i.w	$a4, -4096
	lu32i.d	$a4, 0
	ori	$a5, $zero, 3072
	ori	$a6, $zero, 2048
	ori	$a7, $zero, 3
	.p2align	4, , 16
.LBB1_11:                               # %.lr.ph101.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a1, 0
	addi.d	$a3, $a1, 4
	xor	$a1, $t1, $t0
	and	$t0, $a1, $a4
	andi	$t1, $a1, 255
	alsl.d	$t1, $t1, $a0, 2
	ldx.w	$t1, $t1, $a5
	srli.d	$t2, $a1, 6
	andi	$t2, $t2, 1020
	add.d	$t2, $a0, $t2
	ldx.w	$t2, $t2, $a6
	srli.d	$a1, $a1, 14
	andi	$a1, $a1, 1020
	add.d	$a1, $a0, $a1
	ld.w	$a1, $a1, 1024
	srli.d	$t0, $t0, 22
	ldx.w	$t0, $a0, $t0
	xor	$t1, $t2, $t1
	xor	$a1, $t1, $a1
	addi.d	$a2, $a2, -4
	xor	$t0, $a1, $t0
	move	$a1, $a3
	bltu	$a7, $a2, .LBB1_11
# %bb.12:                               # %._crit_edge.i
	beqz	$a2, .LBB1_14
	.p2align	4, , 16
.LBB1_13:                               # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a1, $a3, 0
	xor	$a1, $a1, $t0
	andi	$a1, $a1, 255
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	addi.d	$a3, $a3, 1
	bstrpick.d	$a4, $t0, 31, 8
	addi.d	$a2, $a2, -1
	xor	$t0, $a1, $a4
	bnez	$a2, .LBB1_13
.LBB1_14:                               # %crc32_little.exit
	nor	$a0, $t0, $zero
	bstrpick.d	$a0, $a0, 31, 0
	ret
.LBB1_15:
	move	$a0, $zero
	ret
.LBB1_16:
	move	$a3, $a1
	bnez	$a2, .LBB1_13
	b	.LBB1_14
.Lfunc_end1:
	.size	crc32_z, .Lfunc_end1-crc32_z
                                        # -- End function
	.globl	crc32                           # -- Begin function crc32
	.p2align	5
	.type	crc32,@function
crc32:                                  # @crc32
# %bb.0:
	bstrpick.d	$a2, $a2, 31, 0
	pcaddu18i	$t8, %call36(crc32_z)
	jr	$t8
.Lfunc_end2:
	.size	crc32, .Lfunc_end2-crc32
                                        # -- End function
	.globl	crc32_combine                   # -- Begin function crc32_combine
	.p2align	5
	.type	crc32_combine,@function
crc32_combine:                          # @crc32_combine
# %bb.0:
	pcaddu18i	$t8, %call36(crc32_combine_)
	jr	$t8
.Lfunc_end3:
	.size	crc32_combine, .Lfunc_end3-crc32_combine
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function crc32_combine_
.LCPI4_0:
	.dword	3988292384                      # 0xedb88320
	.dword	1                               # 0x1
.LCPI4_1:
	.dword	2                               # 0x2
	.dword	4                               # 0x4
.LCPI4_2:
	.dword	8                               # 0x8
	.dword	16                              # 0x10
.LCPI4_3:
	.dword	32                              # 0x20
	.dword	64                              # 0x40
.LCPI4_4:
	.dword	128                             # 0x80
	.dword	256                             # 0x100
.LCPI4_5:
	.dword	512                             # 0x200
	.dword	1024                            # 0x400
.LCPI4_6:
	.dword	2048                            # 0x800
	.dword	4096                            # 0x1000
.LCPI4_7:
	.dword	8192                            # 0x2000
	.dword	16384                           # 0x4000
.LCPI4_8:
	.dword	32768                           # 0x8000
	.dword	65536                           # 0x10000
.LCPI4_9:
	.dword	131072                          # 0x20000
	.dword	262144                          # 0x40000
.LCPI4_10:
	.dword	524288                          # 0x80000
	.dword	1048576                         # 0x100000
.LCPI4_11:
	.dword	2097152                         # 0x200000
	.dword	4194304                         # 0x400000
.LCPI4_12:
	.dword	8388608                         # 0x800000
	.dword	16777216                        # 0x1000000
.LCPI4_13:
	.dword	33554432                        # 0x2000000
	.dword	67108864                        # 0x4000000
.LCPI4_14:
	.dword	134217728                       # 0x8000000
	.dword	268435456                       # 0x10000000
.LCPI4_15:
	.dword	536870912                       # 0x20000000
	.dword	1073741824                      # 0x40000000
	.text
	.p2align	5
	.type	crc32_combine_,@function
crc32_combine_:                         # @crc32_combine_
# %bb.0:
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB4_52
# %bb.1:                                # %.preheader80.preheader
	addi.d	$sp, $sp, -512
	move	$a4, $zero
	pcalau12i	$a5, %pc_hi20(.LCPI4_0)
	vld	$vr0, $a5, %pc_lo12(.LCPI4_0)
	pcalau12i	$a5, %pc_hi20(.LCPI4_1)
	vld	$vr1, $a5, %pc_lo12(.LCPI4_1)
	pcalau12i	$a5, %pc_hi20(.LCPI4_2)
	vld	$vr2, $a5, %pc_lo12(.LCPI4_2)
	pcalau12i	$a5, %pc_hi20(.LCPI4_3)
	vld	$vr3, $a5, %pc_lo12(.LCPI4_3)
	vst	$vr0, $sp, 0
	vst	$vr1, $sp, 16
	vst	$vr2, $sp, 32
	vst	$vr3, $sp, 48
	pcalau12i	$a5, %pc_hi20(.LCPI4_4)
	vld	$vr0, $a5, %pc_lo12(.LCPI4_4)
	pcalau12i	$a5, %pc_hi20(.LCPI4_5)
	vld	$vr1, $a5, %pc_lo12(.LCPI4_5)
	pcalau12i	$a5, %pc_hi20(.LCPI4_6)
	vld	$vr2, $a5, %pc_lo12(.LCPI4_6)
	pcalau12i	$a5, %pc_hi20(.LCPI4_7)
	vld	$vr3, $a5, %pc_lo12(.LCPI4_7)
	vst	$vr0, $sp, 64
	vst	$vr1, $sp, 80
	vst	$vr2, $sp, 96
	vst	$vr3, $sp, 112
	pcalau12i	$a5, %pc_hi20(.LCPI4_8)
	vld	$vr0, $a5, %pc_lo12(.LCPI4_8)
	pcalau12i	$a5, %pc_hi20(.LCPI4_9)
	vld	$vr1, $a5, %pc_lo12(.LCPI4_9)
	pcalau12i	$a5, %pc_hi20(.LCPI4_10)
	vld	$vr2, $a5, %pc_lo12(.LCPI4_10)
	pcalau12i	$a5, %pc_hi20(.LCPI4_11)
	vld	$vr3, $a5, %pc_lo12(.LCPI4_11)
	vst	$vr0, $sp, 128
	vst	$vr1, $sp, 144
	vst	$vr2, $sp, 160
	vst	$vr3, $sp, 176
	pcalau12i	$a5, %pc_hi20(.LCPI4_12)
	vld	$vr0, $a5, %pc_lo12(.LCPI4_12)
	pcalau12i	$a5, %pc_hi20(.LCPI4_13)
	vld	$vr1, $a5, %pc_lo12(.LCPI4_13)
	pcalau12i	$a5, %pc_hi20(.LCPI4_14)
	vld	$vr2, $a5, %pc_lo12(.LCPI4_14)
	pcalau12i	$a5, %pc_hi20(.LCPI4_15)
	vld	$vr3, $a5, %pc_lo12(.LCPI4_15)
	vst	$vr0, $sp, 192
	vst	$vr1, $sp, 208
	vst	$vr2, $sp, 224
	vst	$vr3, $sp, 240
	addi.d	$a5, $sp, 0
	addi.d	$a6, $sp, 256
	ori	$a7, $zero, 32
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_2:                                #   in Loop: Header=BB4_4 Depth=1
	move	$t1, $zero
.LBB4_3:                                # %gf2_matrix_times.exit.i
                                        #   in Loop: Header=BB4_4 Depth=1
	addi.d	$a4, $a4, 1
	stx.d	$t1, $t0, $a6
	beq	$a4, $a7, .LBB4_9
.LBB4_4:                                # %.preheader80
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
	slli.d	$t0, $a4, 3
	ldx.d	$t3, $t0, $a5
	beqz	$t3, .LBB4_2
# %bb.5:                                # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$t1, $zero
	addi.d	$t2, $sp, 0
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_6:                                #   in Loop: Header=BB4_7 Depth=2
	srli.d	$t3, $t4, 1
	addi.d	$t2, $t2, 8
	bgeu	$a3, $t4, .LBB4_3
.LBB4_7:                                # %.lr.ph.i.i
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t4, $t3
	andi	$t3, $t3, 1
	beqz	$t3, .LBB4_6
# %bb.8:                                #   in Loop: Header=BB4_7 Depth=2
	ld.d	$t3, $t2, 0
	xor	$t1, $t3, $t1
	b	.LBB4_6
.LBB4_9:                                # %gf2_matrix_square.exit.preheader
	move	$a3, $zero
	addi.d	$a4, $sp, 256
	addi.d	$a5, $sp, 0
	ori	$a6, $zero, 32
	ori	$a7, $zero, 1
	b	.LBB4_12
	.p2align	4, , 16
.LBB4_10:                               #   in Loop: Header=BB4_12 Depth=1
	move	$t1, $zero
.LBB4_11:                               # %gf2_matrix_times.exit.i37
                                        #   in Loop: Header=BB4_12 Depth=1
	addi.d	$a3, $a3, 1
	stx.d	$t1, $t0, $a5
	beq	$a3, $a6, .LBB4_17
.LBB4_12:                               # %gf2_matrix_square.exit
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_15 Depth 2
	slli.d	$t0, $a3, 3
	ldx.d	$t3, $t0, $a4
	beqz	$t3, .LBB4_10
# %bb.13:                               # %.lr.ph.i.i30.preheader
                                        #   in Loop: Header=BB4_12 Depth=1
	move	$t1, $zero
	addi.d	$t2, $sp, 256
	b	.LBB4_15
	.p2align	4, , 16
.LBB4_14:                               #   in Loop: Header=BB4_15 Depth=2
	srli.d	$t3, $t4, 1
	addi.d	$t2, $t2, 8
	bgeu	$a7, $t4, .LBB4_11
.LBB4_15:                               # %.lr.ph.i.i30
                                        #   Parent Loop BB4_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t4, $t3
	andi	$t3, $t3, 1
	beqz	$t3, .LBB4_14
# %bb.16:                               #   in Loop: Header=BB4_15 Depth=2
	ld.d	$t3, $t2, 0
	xor	$t1, $t3, $t1
	b	.LBB4_14
.LBB4_17:                               # %gf2_matrix_square.exit41.preheader
	addi.d	$a3, $sp, 0
	addi.d	$a4, $sp, 256
	ori	$a5, $zero, 32
	ori	$a6, $zero, 2
	ori	$a7, $zero, 3
	ori	$t0, $zero, 1
	b	.LBB4_20
	.p2align	4, , 16
.LBB4_18:                               #   in Loop: Header=BB4_20 Depth=1
	move	$a0, $t2
.LBB4_19:                               # %gf2_matrix_times.exit79
                                        #   in Loop: Header=BB4_20 Depth=1
	bgeu	$a7, $t1, .LBB4_51
.LBB4_20:                               # %gf2_matrix_square.exit41
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_23 Depth 2
                                        #       Child Loop BB4_26 Depth 3
                                        #     Child Loop BB4_48 Depth 2
                                        #     Child Loop BB4_35 Depth 2
                                        #       Child Loop BB4_38 Depth 3
                                        #     Child Loop BB4_44 Depth 2
	move	$t2, $zero
	move	$t1, $a2
	b	.LBB4_23
	.p2align	4, , 16
.LBB4_21:                               #   in Loop: Header=BB4_23 Depth=2
	move	$t3, $zero
.LBB4_22:                               # %gf2_matrix_times.exit.i51
                                        #   in Loop: Header=BB4_23 Depth=2
	addi.d	$t2, $t2, 1
	stx.d	$t3, $a2, $a4
	beq	$t2, $a5, .LBB4_28
.LBB4_23:                               #   Parent Loop BB4_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_26 Depth 3
	slli.d	$a2, $t2, 3
	ldx.d	$t5, $a2, $a3
	beqz	$t5, .LBB4_21
# %bb.24:                               # %.lr.ph.i.i44.preheader
                                        #   in Loop: Header=BB4_23 Depth=2
	move	$t3, $zero
	addi.d	$t4, $sp, 0
	b	.LBB4_26
	.p2align	4, , 16
.LBB4_25:                               #   in Loop: Header=BB4_26 Depth=3
	srli.d	$t5, $t6, 1
	addi.d	$t4, $t4, 8
	bgeu	$t0, $t6, .LBB4_22
.LBB4_26:                               # %.lr.ph.i.i44
                                        #   Parent Loop BB4_20 Depth=1
                                        #     Parent Loop BB4_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$t6, $t5
	andi	$t5, $t5, 1
	beqz	$t5, .LBB4_25
# %bb.27:                               #   in Loop: Header=BB4_26 Depth=3
	ld.d	$t5, $t4, 0
	xor	$t3, $t5, $t3
	b	.LBB4_25
	.p2align	4, , 16
.LBB4_28:                               # %gf2_matrix_square.exit55
                                        #   in Loop: Header=BB4_20 Depth=1
	andi	$a2, $t1, 1
	bnez	$a2, .LBB4_30
# %bb.29:                               #   in Loop: Header=BB4_20 Depth=1
	move	$t2, $a0
	b	.LBB4_31
	.p2align	4, , 16
.LBB4_30:                               #   in Loop: Header=BB4_20 Depth=1
	move	$t2, $zero
	bnez	$a0, .LBB4_46
.LBB4_31:                               # %gf2_matrix_times.exit
                                        #   in Loop: Header=BB4_20 Depth=1
	bltu	$t1, $a6, .LBB4_50
# %bb.32:                               # %.preheader.preheader
                                        #   in Loop: Header=BB4_20 Depth=1
	move	$a0, $zero
	srli.d	$a2, $t1, 2
	b	.LBB4_35
	.p2align	4, , 16
.LBB4_33:                               #   in Loop: Header=BB4_35 Depth=2
	move	$t4, $zero
.LBB4_34:                               # %gf2_matrix_times.exit.i65
                                        #   in Loop: Header=BB4_35 Depth=2
	addi.d	$a0, $a0, 1
	stx.d	$t4, $t3, $a3
	beq	$a0, $a5, .LBB4_40
.LBB4_35:                               # %.preheader
                                        #   Parent Loop BB4_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_38 Depth 3
	slli.d	$t3, $a0, 3
	ldx.d	$t6, $t3, $a4
	beqz	$t6, .LBB4_33
# %bb.36:                               # %.lr.ph.i.i58.preheader
                                        #   in Loop: Header=BB4_35 Depth=2
	move	$t4, $zero
	addi.d	$t5, $sp, 256
	b	.LBB4_38
	.p2align	4, , 16
.LBB4_37:                               #   in Loop: Header=BB4_38 Depth=3
	srli.d	$t6, $t7, 1
	addi.d	$t5, $t5, 8
	bgeu	$t0, $t7, .LBB4_34
.LBB4_38:                               # %.lr.ph.i.i58
                                        #   Parent Loop BB4_20 Depth=1
                                        #     Parent Loop BB4_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$t7, $t6
	andi	$t6, $t6, 1
	beqz	$t6, .LBB4_37
# %bb.39:                               #   in Loop: Header=BB4_38 Depth=3
	ld.d	$t6, $t5, 0
	xor	$t4, $t6, $t4
	b	.LBB4_37
	.p2align	4, , 16
.LBB4_40:                               # %gf2_matrix_square.exit69
                                        #   in Loop: Header=BB4_20 Depth=1
	andi	$a0, $t1, 2
	beqz	$a0, .LBB4_18
# %bb.41:                               #   in Loop: Header=BB4_20 Depth=1
	move	$a0, $zero
	beqz	$t2, .LBB4_19
# %bb.42:                               # %.lr.ph.i71.preheader
                                        #   in Loop: Header=BB4_20 Depth=1
	addi.d	$t3, $sp, 0
	b	.LBB4_44
	.p2align	4, , 16
.LBB4_43:                               #   in Loop: Header=BB4_44 Depth=2
	srli.d	$t2, $t4, 1
	addi.d	$t3, $t3, 8
	bgeu	$t0, $t4, .LBB4_19
.LBB4_44:                               # %.lr.ph.i71
                                        #   Parent Loop BB4_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t4, $t2
	andi	$t2, $t2, 1
	beqz	$t2, .LBB4_43
# %bb.45:                               #   in Loop: Header=BB4_44 Depth=2
	ld.d	$t2, $t3, 0
	xor	$a0, $t2, $a0
	b	.LBB4_43
.LBB4_46:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB4_20 Depth=1
	addi.d	$a2, $sp, 256
	b	.LBB4_48
	.p2align	4, , 16
.LBB4_47:                               #   in Loop: Header=BB4_48 Depth=2
	srli.d	$a0, $t3, 1
	addi.d	$a2, $a2, 8
	bgeu	$t0, $t3, .LBB4_31
.LBB4_48:                               # %.lr.ph.i
                                        #   Parent Loop BB4_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t3, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB4_47
# %bb.49:                               #   in Loop: Header=BB4_48 Depth=2
	ld.d	$a0, $a2, 0
	xor	$t2, $a0, $t2
	b	.LBB4_47
.LBB4_50:
	move	$a0, $t2
.LBB4_51:
	xor	$a0, $a0, $a1
	addi.d	$sp, $sp, 512
.LBB4_52:
	ret
.Lfunc_end4:
	.size	crc32_combine_, .Lfunc_end4-crc32_combine_
                                        # -- End function
	.globl	crc32_combine64                 # -- Begin function crc32_combine64
	.p2align	5
	.type	crc32_combine64,@function
crc32_combine64:                        # @crc32_combine64
# %bb.0:
	pcaddu18i	$t8, %call36(crc32_combine_)
	jr	$t8
.Lfunc_end5:
	.size	crc32_combine64, .Lfunc_end5-crc32_combine64
                                        # -- End function
	.type	crc_table,@object               # @crc_table
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
crc_table:
	.word	0                               # 0x0
	.word	1996959894                      # 0x77073096
	.word	3993919788                      # 0xee0e612c
	.word	2567524794                      # 0x990951ba
	.word	124634137                       # 0x76dc419
	.word	1886057615                      # 0x706af48f
	.word	3915621685                      # 0xe963a535
	.word	2657392035                      # 0x9e6495a3
	.word	249268274                       # 0xedb8832
	.word	2044508324                      # 0x79dcb8a4
	.word	3772115230                      # 0xe0d5e91e
	.word	2547177864                      # 0x97d2d988
	.word	162941995                       # 0x9b64c2b
	.word	2125561021                      # 0x7eb17cbd
	.word	3887607047                      # 0xe7b82d07
	.word	2428444049                      # 0x90bf1d91
	.word	498536548                       # 0x1db71064
	.word	1789927666                      # 0x6ab020f2
	.word	4089016648                      # 0xf3b97148
	.word	2227061214                      # 0x84be41de
	.word	450548861                       # 0x1adad47d
	.word	1843258603                      # 0x6ddde4eb
	.word	4107580753                      # 0xf4d4b551
	.word	2211677639                      # 0x83d385c7
	.word	325883990                       # 0x136c9856
	.word	1684777152                      # 0x646ba8c0
	.word	4251122042                      # 0xfd62f97a
	.word	2321926636                      # 0x8a65c9ec
	.word	335633487                       # 0x14015c4f
	.word	1661365465                      # 0x63066cd9
	.word	4195302755                      # 0xfa0f3d63
	.word	2366115317                      # 0x8d080df5
	.word	997073096                       # 0x3b6e20c8
	.word	1281953886                      # 0x4c69105e
	.word	3579855332                      # 0xd56041e4
	.word	2724688242                      # 0xa2677172
	.word	1006888145                      # 0x3c03e4d1
	.word	1258607687                      # 0x4b04d447
	.word	3524101629                      # 0xd20d85fd
	.word	2768942443                      # 0xa50ab56b
	.word	901097722                       # 0x35b5a8fa
	.word	1119000684                      # 0x42b2986c
	.word	3686517206                      # 0xdbbbc9d6
	.word	2898065728                      # 0xacbcf940
	.word	853044451                       # 0x32d86ce3
	.word	1172266101                      # 0x45df5c75
	.word	3705015759                      # 0xdcd60dcf
	.word	2882616665                      # 0xabd13d59
	.word	651767980                       # 0x26d930ac
	.word	1373503546                      # 0x51de003a
	.word	3369554304                      # 0xc8d75180
	.word	3218104598                      # 0xbfd06116
	.word	565507253                       # 0x21b4f4b5
	.word	1454621731                      # 0x56b3c423
	.word	3485111705                      # 0xcfba9599
	.word	3099436303                      # 0xb8bda50f
	.word	671266974                       # 0x2802b89e
	.word	1594198024                      # 0x5f058808
	.word	3322730930                      # 0xc60cd9b2
	.word	2970347812                      # 0xb10be924
	.word	795835527                       # 0x2f6f7c87
	.word	1483230225                      # 0x58684c11
	.word	3244367275                      # 0xc1611dab
	.word	3060149565                      # 0xb6662d3d
	.word	1994146192                      # 0x76dc4190
	.word	31158534                        # 0x1db7106
	.word	2563907772                      # 0x98d220bc
	.word	4023717930                      # 0xefd5102a
	.word	1907459465                      # 0x71b18589
	.word	112637215                       # 0x6b6b51f
	.word	2680153253                      # 0x9fbfe4a5
	.word	3904427059                      # 0xe8b8d433
	.word	2013776290                      # 0x7807c9a2
	.word	251722036                       # 0xf00f934
	.word	2517215374                      # 0x9609a88e
	.word	3775830040                      # 0xe10e9818
	.word	2137656763                      # 0x7f6a0dbb
	.word	141376813                       # 0x86d3d2d
	.word	2439277719                      # 0x91646c97
	.word	3865271297                      # 0xe6635c01
	.word	1802195444                      # 0x6b6b51f4
	.word	476864866                       # 0x1c6c6162
	.word	2238001368                      # 0x856530d8
	.word	4066508878                      # 0xf262004e
	.word	1812370925                      # 0x6c0695ed
	.word	453092731                       # 0x1b01a57b
	.word	2181625025                      # 0x8208f4c1
	.word	4111451223                      # 0xf50fc457
	.word	1706088902                      # 0x65b0d9c6
	.word	314042704                       # 0x12b7e950
	.word	2344532202                      # 0x8bbeb8ea
	.word	4240017532                      # 0xfcb9887c
	.word	1658658271                      # 0x62dd1ddf
	.word	366619977                       # 0x15da2d49
	.word	2362670323                      # 0x8cd37cf3
	.word	4224994405                      # 0xfbd44c65
	.word	1303535960                      # 0x4db26158
	.word	984961486                       # 0x3ab551ce
	.word	2747007092                      # 0xa3bc0074
	.word	3569037538                      # 0xd4bb30e2
	.word	1256170817                      # 0x4adfa541
	.word	1037604311                      # 0x3dd895d7
	.word	2765210733                      # 0xa4d1c46d
	.word	3554079995                      # 0xd3d6f4fb
	.word	1131014506                      # 0x4369e96a
	.word	879679996                       # 0x346ed9fc
	.word	2909243462                      # 0xad678846
	.word	3663771856                      # 0xda60b8d0
	.word	1141124467                      # 0x44042d73
	.word	855842277                       # 0x33031de5
	.word	2852801631                      # 0xaa0a4c5f
	.word	3708648649                      # 0xdd0d7cc9
	.word	1342533948                      # 0x5005713c
	.word	654459306                       # 0x270241aa
	.word	3188396048                      # 0xbe0b1010
	.word	3373015174                      # 0xc90c2086
	.word	1466479909                      # 0x5768b525
	.word	544179635                       # 0x206f85b3
	.word	3110523913                      # 0xb966d409
	.word	3462522015                      # 0xce61e49f
	.word	1591671054                      # 0x5edef90e
	.word	702138776                       # 0x29d9c998
	.word	2966460450                      # 0xb0d09822
	.word	3352799412                      # 0xc7d7a8b4
	.word	1504918807                      # 0x59b33d17
	.word	783551873                       # 0x2eb40d81
	.word	3082640443                      # 0xb7bd5c3b
	.word	3233442989                      # 0xc0ba6cad
	.word	3988292384                      # 0xedb88320
	.word	2596254646                      # 0x9abfb3b6
	.word	62317068                        # 0x3b6e20c
	.word	1957810842                      # 0x74b1d29a
	.word	3939845945                      # 0xead54739
	.word	2647816111                      # 0x9dd277af
	.word	81470997                        # 0x4db2615
	.word	1943803523                      # 0x73dc1683
	.word	3814918930                      # 0xe3630b12
	.word	2489596804                      # 0x94643b84
	.word	225274430                       # 0xd6d6a3e
	.word	2053790376                      # 0x7a6a5aa8
	.word	3826175755                      # 0xe40ecf0b
	.word	2466906013                      # 0x9309ff9d
	.word	167816743                       # 0xa00ae27
	.word	2097651377                      # 0x7d079eb1
	.word	4027552580                      # 0xf00f9344
	.word	2265490386                      # 0x8708a3d2
	.word	503444072                       # 0x1e01f268
	.word	1762050814                      # 0x6906c2fe
	.word	4150417245                      # 0xf762575d
	.word	2154129355                      # 0x806567cb
	.word	426522225                       # 0x196c3671
	.word	1852507879                      # 0x6e6b06e7
	.word	4275313526                      # 0xfed41b76
	.word	2312317920                      # 0x89d32be0
	.word	282753626                       # 0x10da7a5a
	.word	1742555852                      # 0x67dd4acc
	.word	4189708143                      # 0xf9b9df6f
	.word	2394877945                      # 0x8ebeeff9
	.word	397917763                       # 0x17b7be43
	.word	1622183637                      # 0x60b08ed5
	.word	3604390888                      # 0xd6d6a3e8
	.word	2714866558                      # 0xa1d1937e
	.word	953729732                       # 0x38d8c2c4
	.word	1340076626                      # 0x4fdff252
	.word	3518719985                      # 0xd1bb67f1
	.word	2797360999                      # 0xa6bc5767
	.word	1068828381                      # 0x3fb506dd
	.word	1219638859                      # 0x48b2364b
	.word	3624741850                      # 0xd80d2bda
	.word	2936675148                      # 0xaf0a1b4c
	.word	906185462                       # 0x36034af6
	.word	1090812512                      # 0x41047a60
	.word	3747672003                      # 0xdf60efc3
	.word	2825379669                      # 0xa867df55
	.word	829329135                       # 0x316e8eef
	.word	1181335161                      # 0x4669be79
	.word	3412177804                      # 0xcb61b38c
	.word	3160834842                      # 0xbc66831a
	.word	628085408                       # 0x256fd2a0
	.word	1382605366                      # 0x5268e236
	.word	3423369109                      # 0xcc0c7795
	.word	3138078467                      # 0xbb0b4703
	.word	570562233                       # 0x220216b9
	.word	1426400815                      # 0x5505262f
	.word	3317316542                      # 0xc5ba3bbe
	.word	2998733608                      # 0xb2bd0b28
	.word	733239954                       # 0x2bb45a92
	.word	1555261956                      # 0x5cb36a04
	.word	3268935591                      # 0xc2d7ffa7
	.word	3050360625                      # 0xb5d0cf31
	.word	752459403                       # 0x2cd99e8b
	.word	1541320221                      # 0x5bdeae1d
	.word	2607071920                      # 0x9b64c2b0
	.word	3965973030                      # 0xec63f226
	.word	1969922972                      # 0x756aa39c
	.word	40735498                        # 0x26d930a
	.word	2617837225                      # 0x9c0906a9
	.word	3943577151                      # 0xeb0e363f
	.word	1913087877                      # 0x72076785
	.word	83908371                        # 0x5005713
	.word	2512341634                      # 0x95bf4a82
	.word	3803740692                      # 0xe2b87a14
	.word	2075208622                      # 0x7bb12bae
	.word	213261112                       # 0xcb61b38
	.word	2463272603                      # 0x92d28e9b
	.word	3855990285                      # 0xe5d5be0d
	.word	2094854071                      # 0x7cdcefb7
	.word	198958881                       # 0xbdbdf21
	.word	2262029012                      # 0x86d3d2d4
	.word	4057260610                      # 0xf1d4e242
	.word	1759359992                      # 0x68ddb3f8
	.word	534414190                       # 0x1fda836e
	.word	2176718541                      # 0x81be16cd
	.word	4139329115                      # 0xf6b9265b
	.word	1873836001                      # 0x6fb077e1
	.word	414664567                       # 0x18b74777
	.word	2282248934                      # 0x88085ae6
	.word	4279200368                      # 0xff0f6a70
	.word	1711684554                      # 0x66063bca
	.word	285281116                       # 0x11010b5c
	.word	2405801727                      # 0x8f659eff
	.word	4167216745                      # 0xf862ae69
	.word	1634467795                      # 0x616bffd3
	.word	376229701                       # 0x166ccf45
	.word	2685067896                      # 0xa00ae278
	.word	3608007406                      # 0xd70dd2ee
	.word	1308918612                      # 0x4e048354
	.word	956543938                       # 0x3903b3c2
	.word	2808555105                      # 0xa7672661
	.word	3495958263                      # 0xd06016f7
	.word	1231636301                      # 0x4969474d
	.word	1047427035                      # 0x3e6e77db
	.word	2932959818                      # 0xaed16a4a
	.word	3654703836                      # 0xd9d65adc
	.word	1088359270                      # 0x40df0b66
	.word	936918000                       # 0x37d83bf0
	.word	2847714899                      # 0xa9bcae53
	.word	3736837829                      # 0xdebb9ec5
	.word	1202900863                      # 0x47b2cf7f
	.word	817233897                       # 0x30b5ffe9
	.word	3183342108                      # 0xbdbdf21c
	.word	3401237130                      # 0xcabac28a
	.word	1404277552                      # 0x53b39330
	.word	615818150                       # 0x24b4a3a6
	.word	3134207493                      # 0xbad03605
	.word	3453421203                      # 0xcdd70693
	.word	1423857449                      # 0x54de5729
	.word	601450431                       # 0x23d967bf
	.word	3009837614                      # 0xb3667a2e
	.word	3294710456                      # 0xc4614ab8
	.word	1567103746                      # 0x5d681b02
	.word	711928724                       # 0x2a6f2b94
	.word	3020668471                      # 0xb40bbe37
	.word	3272380065                      # 0xc30c8ea1
	.word	1510334235                      # 0x5a05df1b
	.word	755167117                       # 0x2d02ef8d
	.word	0                               # 0x0
	.word	421212481                       # 0x191b3141
	.word	842424962                       # 0x32366282
	.word	724390851                       # 0x2b2d53c3
	.word	1684849924                      # 0x646cc504
	.word	2105013317                      # 0x7d77f445
	.word	1448781702                      # 0x565aa786
	.word	1329698503                      # 0x4f4196c7
	.word	3369699848                      # 0xc8d98a08
	.word	3519200073                      # 0xd1c2bb49
	.word	4210026634                      # 0xfaefe88a
	.word	3824474571                      # 0xe3f4d9cb
	.word	2897563404                      # 0xacb54f0c
	.word	3048111693                      # 0xb5ae7e4d
	.word	2659397006                      # 0x9e832d8e
	.word	2274893007                      # 0x87981ccf
	.word	1254232657                      # 0x4ac21251
	.word	1406739216                      # 0x53d92310
	.word	2029285587                      # 0x78f470d3
	.word	1643069842                      # 0x61ef4192
	.word	783210325                       # 0x2eaed755
	.word	934667796                       # 0x37b5e614
	.word	479770071                       # 0x1c98b5d7
	.word	92505238                        # 0x5838496
	.word	2182846553                      # 0x821b9859
	.word	2600511768                      # 0x9b00a918
	.word	2955803355                      # 0xb02dfadb
	.word	2838940570                      # 0xa936cb9a
	.word	3866582365                      # 0xe6775d5d
	.word	4285295644                      # 0xff6c6c1c
	.word	3561045983                      # 0xd4413fdf
	.word	3445231262                      # 0xcd5a0e9e
	.word	2508465314                      # 0x958424a2
	.word	2359236067                      # 0x8c9f15e3
	.word	2813478432                      # 0xa7b24620
	.word	3198777185                      # 0xbea97761
	.word	4058571174                      # 0xf1e8e1a6
	.word	3908292839                      # 0xe8f3d0e7
	.word	3286139684                      # 0xc3de8324
	.word	3670389349                      # 0xdac5b265
	.word	1566420650                      # 0x5d5daeaa
	.word	1145479147                      # 0x44469feb
	.word	1869335592                      # 0x6f6bcc28
	.word	1987116393                      # 0x7670fd69
	.word	959540142                       # 0x39316bae
	.word	539646703                       # 0x202a5aef
	.word	185010476                       # 0xb07092c
	.word	303839341                       # 0x121c386d
	.word	3745920755                      # 0xdf4636f3
	.word	3327985586                      # 0xc65d07b2
	.word	3983561841                      # 0xed705471
	.word	4100678960                      # 0xf46b6530
	.word	3140154359                      # 0xbb2af3f7
	.word	2721170102                      # 0xa231c2b6
	.word	2300350837                      # 0x891c9175
	.word	2416418868                      # 0x9007a034
	.word	396344571                       # 0x179fbcfb
	.word	243568058                       # 0xe848dba
	.word	631889529                       # 0x25a9de79
	.word	1018359608                      # 0x3cb2ef38
	.word	1945336319                      # 0x73f379ff
	.word	1793607870                      # 0x6ae848be
	.word	1103436669                      # 0x41c51b7d
	.word	1490954812                      # 0x58de2a3c
	.word	4034481925                      # 0xf0794f05
	.word	3915546180                      # 0xe9627e44
	.word	3259968903                      # 0xc24f2d87
	.word	3679722694                      # 0xdb541cc6
	.word	2484439553                      # 0x94158a01
	.word	2366552896                      # 0x8d0ebb40
	.word	2787371139                      # 0xa623e883
	.word	3208174018                      # 0xbf38d9c2
	.word	950060301                       # 0x38a0c50d
	.word	565965900                       # 0x21bbf44c
	.word	177645455                       # 0xa96a78f
	.word	328046286                       # 0x138d96ce
	.word	1556873225                      # 0x5ccc0009
	.word	1171730760                      # 0x45d73148
	.word	1861902987                      # 0x6efa628b
	.word	2011255754                      # 0x77e153ca
	.word	3132841300                      # 0xbabb5d54
	.word	2745199637                      # 0xa3a06c15
	.word	2290958294                      # 0x888d3fd6
	.word	2442530455                      # 0x91960e97
	.word	3738671184                      # 0xded79850
	.word	3352078609                      # 0xc7cca911
	.word	3974232786                      # 0xece1fad2
	.word	4126854035                      # 0xf5facb93
	.word	1919080284                      # 0x7262d75c
	.word	1803150877                      # 0x6b79e61d
	.word	1079293406                      # 0x4054b5de
	.word	1498383519                      # 0x594f849f
	.word	370020952                       # 0x160e1258
	.word	253043481                       # 0xf152319
	.word	607678682                       # 0x243870da
	.word	1025720731                      # 0x3d23419b
	.word	1711106983                      # 0x65fd6ba7
	.word	2095471334                      # 0x7ce65ae6
	.word	1472923941                      # 0x57cb0925
	.word	1322268772                      # 0x4ed03864
	.word	26324643                        # 0x191aea3
	.word	411738082                       # 0x188a9fe2
	.word	866634785                       # 0x33a7cc21
	.word	717028704                       # 0x2abcfd60
	.word	2904875439                      # 0xad24e1af
	.word	3024081134                      # 0xb43fd0ee
	.word	2668790573                      # 0x9f12832d
	.word	2248782444                      # 0x8609b26c
	.word	3376948395                      # 0xc94824ab
	.word	3495106026                      # 0xd05315ea
	.word	4219356713                      # 0xfb7e4629
	.word	3798300520                      # 0xe2657768
	.word	792689142                       # 0x2f3f79f6
	.word	908347575                       # 0x362448b7
	.word	487136116                       # 0x1d091b74
	.word	68299317                        # 0x4122a35
	.word	1263779058                      # 0x4b53bcf2
	.word	1380486579                      # 0x52488db3
	.word	2036719216                      # 0x7965de70
	.word	1618931505                      # 0x607eef31
	.word	3890672638                      # 0xe7e6f3fe
	.word	4278043327                      # 0xfefdc2bf
	.word	3587215740                      # 0xd5d0917c
	.word	3435896893                      # 0xcccba03d
	.word	2206873338                      # 0x838a36fa
	.word	2593195963                      # 0x9a9107bb
	.word	2981909624                      # 0xb1bc5478
	.word	2829542713                      # 0xa8a76539
	.word	998479947                       # 0x3b83984b
	.word	580430090                       # 0x2298a90a
	.word	162921161                       # 0x9b5fac9
	.word	279890824                       # 0x10aecb88
	.word	1609522511                      # 0x5fef5d4f
	.word	1190423566                      # 0x46f46c0e
	.word	1842954189                      # 0x6dd93fcd
	.word	1958874764                      # 0x74c20e8c
	.word	4082766403                      # 0xf35a1243
	.word	3930137346                      # 0xea412302
	.word	3245109441                      # 0xc16c70c1
	.word	3631694208                      # 0xd8774180
	.word	2536953671                      # 0x9736d747
	.word	2385372678                      # 0x8e2de606
	.word	2768287173                      # 0xa500b5c5
	.word	3155920004                      # 0xbc1b8484
	.word	1900120602                      # 0x71418a1a
	.word	1750776667                      # 0x685abb5b
	.word	1131931800                      # 0x4377e898
	.word	1517083097                      # 0x5a6cd9d9
	.word	355290910                       # 0x152d4f1e
	.word	204897887                       # 0xc367e5f
	.word	656092572                       # 0x271b2d9c
	.word	1040194781                      # 0x3e001cdd
	.word	3113746450                      # 0xb9980012
	.word	2692952403                      # 0xa0833153
	.word	2343461520                      # 0x8bae6290
	.word	2461357009                      # 0x92b553d1
	.word	3723805974                      # 0xddf4c516
	.word	3304059991                      # 0xc4eff457
	.word	4022511508                      # 0xefc2a794
	.word	4141455061                      # 0xf6d996d5
	.word	2919742697                      # 0xae07bce9
	.word	3072101800                      # 0xb71c8da8
	.word	2620513899                      # 0x9c31de6b
	.word	2234183466                      # 0x852aef2a
	.word	3396041197                      # 0xca6b79ed
	.word	3547351212                      # 0xd37048ac
	.word	4166851439                      # 0xf85d1b6f
	.word	3779471918                      # 0xe1462a2e
	.word	1725839073                      # 0x66de36e1
	.word	2143618976                      # 0x7fc507a0
	.word	1424512099                      # 0x54e85463
	.word	1307796770                      # 0x4df36522
	.word	45282277                        # 0x2b2f3e5
	.word	464110244                       # 0x1ba9c2a4
	.word	813994343                       # 0x30849167
	.word	698327078                       # 0x299fa026
	.word	3838160568                      # 0xe4c5aeb8
	.word	4259225593                      # 0xfdde9ff9
	.word	3606301754                      # 0xd6f3cc3a
	.word	3488152955                      # 0xcfe8fd7b
	.word	2158586812                      # 0x80a96bbc
	.word	2578602749                      # 0x99b25afd
	.word	2996767038                      # 0xb29f093e
	.word	2877569151                      # 0xab84387f
	.word	740041904                       # 0x2c1c24b0
	.word	889656817                       # 0x350715f1
	.word	506086962                       # 0x1e2a4632
	.word	120682355                       # 0x7317773
	.word	1215357364                      # 0x4870e1b4
	.word	1366020341                      # 0x516bd0f5
	.word	2051441462                      # 0x7a468336
	.word	1667084919                      # 0x635db277
	.word	3422213966                      # 0xcbfad74e
	.word	3538019855                      # 0xd2e1e60f
	.word	4190942668                      # 0xf9ccb5cc
	.word	3772220557                      # 0xe0d7848d
	.word	2945847882                      # 0xaf96124a
	.word	3062702859                      # 0xb68d230b
	.word	2644537544                      # 0x9da070c8
	.word	2226864521                      # 0x84bb4189
	.word	52649286                        # 0x3235d46
	.word	439905287                       # 0x1a386c07
	.word	823476164                       # 0x31153fc4
	.word	672009861                       # 0x280e0e85
	.word	1733269570                      # 0x674f9842
	.word	2119477507                      # 0x7e54a903
	.word	1434057408                      # 0x5579fac0
	.word	1281543041                      # 0x4c62cb81
	.word	2167981343                      # 0x8138c51f
	.word	2552493150                      # 0x9823f45e
	.word	3004082077                      # 0xb30ea79d
	.word	2853541596                      # 0xaa1596dc
	.word	3847487515                      # 0xe554001b
	.word	4233048410                      # 0xfc4f315a
	.word	3613549209                      # 0xd7626299
	.word	3464057816                      # 0xce7953d8
	.word	1239502615                      # 0x49e14f17
	.word	1358593622                      # 0x50fa7e56
	.word	2077699477                      # 0x7bd72d95
	.word	1657543892                      # 0x62cc1cd4
	.word	764250643                       # 0x2d8d8a13
	.word	882293586                       # 0x3496bb52
	.word	532408465                       # 0x1fbbe891
	.word	111204816                       # 0x6a0d9d0
	.word	1585378284                      # 0x5e7ef3ec
	.word	1197851309                      # 0x4765c2ad
	.word	1816695150                      # 0x6c48916e
	.word	1968414767                      # 0x7553a02f
	.word	974272232                       # 0x3a1236e8
	.word	587794345                       # 0x230907a9
	.word	136598634                       # 0x824546a
	.word	289367339                       # 0x113f652b
	.word	2527558116                      # 0x96a779e4
	.word	2411481253                      # 0x8fbc48a5
	.word	2760973158                      # 0xa4911b66
	.word	3179948583                      # 0xbd8a2a27
	.word	4073438432                      # 0xf2cbbce0
	.word	3956313505                      # 0xebd08da1
	.word	3237863010                      # 0xc0fdde62
	.word	3655790371                      # 0xd9e6ef23
	.word	347922877                       # 0x14bce1bd
	.word	229101820                       # 0xda7d0fc
	.word	646611775                       # 0x268a833f
	.word	1066513022                      # 0x3f91b27e
	.word	1892689081                      # 0x70d024b9
	.word	1774917112                      # 0x69cb15f8
	.word	1122387515                      # 0x42e6463b
	.word	1543337850                      # 0x5bfd777a
	.word	3697634229                      # 0xdc656bb5
	.word	3313392372                      # 0xc57e5af4
	.word	3998419255                      # 0xee530937
	.word	4148705398                      # 0xf7483876
	.word	3087642289                      # 0xb809aeb1
	.word	2702352368                      # 0xa1129ff0
	.word	2319436851                      # 0x8a3fcc33
	.word	2468674930                      # 0x9324fd72
	.word	0                               # 0x0
	.word	29518391                        # 0x1c26a37
	.word	59036782                        # 0x384d46e
	.word	38190681                        # 0x246be59
	.word	118073564                       # 0x709a8dc
	.word	114017003                       # 0x6cbc2eb
	.word	76381362                        # 0x48d7cb2
	.word	89069189                        # 0x54f1685
	.word	236147128                       # 0xe1351b8
	.word	265370511                       # 0xfd13b8f
	.word	228034006                       # 0xd9785d6
	.word	206958561                       # 0xc55efe1
	.word	152762724                       # 0x91af964
	.word	148411219                       # 0x8d89353
	.word	178138378                       # 0xa9e2d0a
	.word	190596925                       # 0xb5c473d
	.word	472294256                       # 0x1c26a370
	.word	501532999                       # 0x1de4c947
	.word	530741022                       # 0x1fa2771e
	.word	509615401                       # 0x1e601d29
	.word	456068012                       # 0x1b2f0bac
	.word	451764635                       # 0x1aed619b
	.word	413917122                       # 0x18abdfc2
	.word	426358261                       # 0x1969b5f5
	.word	305525448                       # 0x1235f2c8
	.word	334993663                       # 0x13f798ff
	.word	296822438                       # 0x11b126a6
	.word	275991697                       # 0x10734c91
	.word	356276756                       # 0x153c5a14
	.word	352202787                       # 0x14fe3023
	.word	381193850                       # 0x16b88e7a
	.word	393929805                       # 0x177ae44d
	.word	944588512                       # 0x384d46e0
	.word	965684439                       # 0x398f2cd7
	.word	1003065998                      # 0x3bc9928e
	.word	973863097                       # 0x3a0bf8b9
	.word	1061482044                      # 0x3f44ee3c
	.word	1049003019                      # 0x3e86840b
	.word	1019230802                      # 0x3cc03a52
	.word	1023561829                      # 0x3d025065
	.word	912136024                       # 0x365e1758
	.word	933002607                       # 0x379c7d6f
	.word	903529270                       # 0x35dac336
	.word	874031361                       # 0x3418a901
	.word	827834244                       # 0x3157bf84
	.word	815125939                       # 0x3095d5b3
	.word	852716522                       # 0x32d36bea
	.word	856752605                       # 0x331101dd
	.word	611050896                       # 0x246be590
	.word	631869351                       # 0x25a98fa7
	.word	669987326                       # 0x27ef31fe
	.word	640506825                       # 0x262d5bc9
	.word	593644876                       # 0x23624d4c
	.word	580921211                       # 0x22a0277b
	.word	551983394                       # 0x20e69922
	.word	556069653                       # 0x2124f315
	.word	712553512                       # 0x2a78b428
	.word	733666847                       # 0x2bbade1f
	.word	704405574                       # 0x29fc6046
	.word	675154545                       # 0x283e0a71
	.word	762387700                       # 0x2d711cf4
	.word	749958851                       # 0x2cb376c3
	.word	787859610                       # 0x2ef5c89a
	.word	792175277                       # 0x2f37a2ad
	.word	1889177024                      # 0x709a8dc0
	.word	1901651959                      # 0x7158e7f7
	.word	1931368878                      # 0x731e59ae
	.word	1927033753                      # 0x72dc3399
	.word	2006131996                      # 0x7793251c
	.word	1985040171                      # 0x76514f2b
	.word	1947726194                      # 0x7417f172
	.word	1976933189                      # 0x75d59b45
	.word	2122964088                      # 0x7e89dc78
	.word	2135668303                      # 0x7f4bb64f
	.word	2098006038                      # 0x7d0d0816
	.word	2093965857                      # 0x7ccf6221
	.word	2038461604                      # 0x798074a4
	.word	2017599123                      # 0x78421e93
	.word	2047123658                      # 0x7a04a0ca
	.word	2076625661                      # 0x7bc6cafd
	.word	1824272048                      # 0x6cbc2eb0
	.word	1836991623                      # 0x6d7e4487
	.word	1866005214                      # 0x6f38fade
	.word	1861914857                      # 0x6efa90e9
	.word	1807058540                      # 0x6bb5866c
	.word	1786244187                      # 0x6a77ec5b
	.word	1748062722                      # 0x68315202
	.word	1777547317                      # 0x69f33835
	.word	1655668488                      # 0x62af7f08
	.word	1668093247                      # 0x636d153f
	.word	1630251878                      # 0x612bab66
	.word	1625932113                      # 0x60e9c151
	.word	1705433044                      # 0x65a6d7d4
	.word	1684323811                      # 0x6464bde3
	.word	1713505210                      # 0x662203ba
	.word	1742760333                      # 0x67e0698d
	.word	1222101792                      # 0x48d7cb20
	.word	1226154263                      # 0x4915a117
	.word	1263738702                      # 0x4b531f4e
	.word	1251046777                      # 0x4a917579
	.word	1339974652                      # 0x4fde63fc
	.word	1310460363                      # 0x4e1c09cb
	.word	1281013650                      # 0x4c5ab792
	.word	1301863845                      # 0x4d98dda5
	.word	1187289752                      # 0x46c49a98
	.word	1191637167                      # 0x4706f0af
	.word	1161842422                      # 0x45404ef6
	.word	1149379777                      # 0x448224c1
	.word	1103966788                      # 0x41cd3244
	.word	1074747507                      # 0x400f5873
	.word	1112139306                      # 0x4249e62a
	.word	1133218845                      # 0x438b8c1d
	.word	1425107024                      # 0x54f16850
	.word	1429406311                      # 0x55330267
	.word	1467333694                      # 0x5775bc3e
	.word	1454888457                      # 0x56b7d609
	.word	1408811148                      # 0x53f8c08c
	.word	1379576507                      # 0x523aaabb
	.word	1350309090                      # 0x507c14e2
	.word	1371438805                      # 0x51be7ed5
	.word	1524775400                      # 0x5ae239e8
	.word	1528845279                      # 0x5b2053df
	.word	1499917702                      # 0x5966ed86
	.word	1487177649                      # 0x58a487b1
	.word	1575719220                      # 0x5deb9134
	.word	1546255107                      # 0x5c29fb03
	.word	1584350554                      # 0x5e6f455a
	.word	1605185389                      # 0x5fad2f6d
	.word	3778354048                      # 0xe1351b80
	.word	3774312887                      # 0xe0f771b7
	.word	3803303918                      # 0xe2b1cfee
	.word	3816007129                      # 0xe373a5d9
	.word	3862737756                      # 0xe63cb35c
	.word	3892238699                      # 0xe7fed96b
	.word	3854067506                      # 0xe5b86732
	.word	3833203973                      # 0xe47a0d05
	.word	4012263992                      # 0xef264a38
	.word	4007927823                      # 0xeee4200f
	.word	3970080342                      # 0xeca29e56
	.word	3982554209                      # 0xed60f461
	.word	3895452388                      # 0xe82fe2e4
	.word	3924658387                      # 0xe9ed88d3
	.word	3953866378                      # 0xebab368a
	.word	3932773565                      # 0xea695cbd
	.word	4245928176                      # 0xfd13b8f0
	.word	4241609415                      # 0xfcd1d2c7
	.word	4271336606                      # 0xfe976c9e
	.word	4283762345                      # 0xff5506a9
	.word	4196012076                      # 0xfa1a102c
	.word	4225268251                      # 0xfbd87a1b
	.word	4187931714                      # 0xf99ec442
	.word	4166823541                      # 0xf85cae75
	.word	4076923208                      # 0xf300e948
	.word	4072833919                      # 0xf2c2837f
	.word	4035198246                      # 0xf0843d26
	.word	4047918865                      # 0xf1465711
	.word	4094247316                      # 0xf4094194
	.word	4123732899                      # 0xf5cb2ba3
	.word	4153251322                      # 0xf78d95fa
	.word	4132437965                      # 0xf64fffcd
	.word	3648544096                      # 0xd9785d60
	.word	3636082519                      # 0xd8ba3757
	.word	3673983246                      # 0xdafc890e
	.word	3678331705                      # 0xdb3ee339
	.word	3732010428                      # 0xde71f5bc
	.word	3753090955                      # 0xdfb39f8b
	.word	3723829714                      # 0xddf521d2
	.word	3694611429                      # 0xdc374be5
	.word	3614117080                      # 0xd76b0cd8
	.word	3601426159                      # 0xd6a966ef
	.word	3572488374                      # 0xd4efd8b6
	.word	3576541825                      # 0xd52db281
	.word	3496125444                      # 0xd062a404
	.word	3516976691                      # 0xd1a0ce33
	.word	3555094634                      # 0xd3e6706a
	.word	3525581405                      # 0xd2241a5d
	.word	3311336976                      # 0xc55efe10
	.word	3298595879                      # 0xc49c9427
	.word	3336186494                      # 0xc6da2a7e
	.word	3340255305                      # 0xc7184049
	.word	3260503756                      # 0xc25756cc
	.word	3281337595                      # 0xc3953cfb
	.word	3251864226                      # 0xc1d382a2
	.word	3222399125                      # 0xc011e895
	.word	3410866088                      # 0xcb4dafa8
	.word	3398419871                      # 0xca8fc59f
	.word	3368647622                      # 0xc8c97bc6
	.word	3372945905                      # 0xc90b11f1
	.word	3427010420                      # 0xcc440774
	.word	3448139075                      # 0xcd866d43
	.word	3485520666                      # 0xcfc0d31a
	.word	3456284973                      # 0xce02b92d
	.word	2444203584                      # 0x91af9640
	.word	2423127159                      # 0x906dfc77
	.word	2452308526                      # 0x922b422e
	.word	2481530905                      # 0x93e92819
	.word	2527477404                      # 0x96a63e9c
	.word	2539934891                      # 0x976454ab
	.word	2502093554                      # 0x9522eaf2
	.word	2497740997                      # 0x94e080c5
	.word	2679949304                      # 0x9fbcc7f8
	.word	2659102159                      # 0x9e7eadcf
	.word	2620920726                      # 0x9c381396
	.word	2650438049                      # 0x9dfa79a1
	.word	2562027300                      # 0x98b56f24
	.word	2574714131                      # 0x99770513
	.word	2603727690                      # 0x9b31bb4a
	.word	2599670141                      # 0x9af3d17d
	.word	2374579504                      # 0x8d893530
	.word	2353749767                      # 0x8c4b5f07
	.word	2383274334                      # 0x8e0de15e
	.word	2412743529                      # 0x8fcf8b69
	.word	2323684844                      # 0x8a809dec
	.word	2336421851                      # 0x8b42f7db
	.word	2298759554                      # 0x89044982
	.word	2294686645                      # 0x88c623b5
	.word	2207933576                      # 0x839a6488
	.word	2186809023                      # 0x82580ebf
	.word	2149495014                      # 0x801eb0e6
	.word	2178734801                      # 0x81dcdad1
	.word	2224278612                      # 0x8493cc54
	.word	2236720739                      # 0x8551a663
	.word	2266437690                      # 0x8717183a
	.word	2262135309                      # 0x86d5720d
	.word	2850214048                      # 0xa9e2d0a0
	.word	2820717207                      # 0xa820ba97
	.word	2858812622                      # 0xaa6604ce
	.word	2879680249                      # 0xaba46ef9
	.word	2934667388                      # 0xaeeb787c
	.word	2938704459                      # 0xaf29124b
	.word	2909776914                      # 0xad6fac12
	.word	2897069605                      # 0xacadc625
	.word	2817622296                      # 0xa7f18118
	.word	2788420399                      # 0xa633eb2f
	.word	2759153014                      # 0xa4755576
	.word	2780249921                      # 0xa5b73f41
	.word	2700618180                      # 0xa0f829c4
	.word	2704950259                      # 0xa13a43f3
	.word	2742877610                      # 0xa37cfdaa
	.word	2730399645                      # 0xa2be979d
	.word	3049550800                      # 0xb5c473d0
	.word	3020298727                      # 0xb40619e7
	.word	3057690558                      # 0xb640a7be
	.word	3078802825                      # 0xb782cd89
	.word	2999835404                      # 0xb2cddb0c
	.word	3004150075                      # 0xb30fb13b
	.word	2974355298                      # 0xb1490f62
	.word	2961925461                      # 0xb08b6555
	.word	3151438440                      # 0xbbd72268
	.word	3121956959                      # 0xba15485f
	.word	3092510214                      # 0xb853f606
	.word	3113327665                      # 0xb9919c31
	.word	3168701108                      # 0xbcde8ab4
	.word	3172786307                      # 0xbd1ce083
	.word	3210370778                      # 0xbf5a5eda
	.word	3197646061                      # 0xbe9834ed
	.word	0                               # 0x0
	.word	3099354981                      # 0xb8bc6765
	.word	2852767883                      # 0xaa09c88b
	.word	313896942                       # 0x12b5afee
	.word	2405603159                      # 0x8f629757
	.word	937357362                       # 0x37def032
	.word	627793884                       # 0x256b5fdc
	.word	2648127673                      # 0x9dd738b9
	.word	3316918511                      # 0xc5b428ef
	.word	2097696650                      # 0x7d084f8a
	.word	1874714724                      # 0x6fbde064
	.word	3607201537                      # 0xd7018701
	.word	1255587768                      # 0x4ad6bfb8
	.word	4067088605                      # 0xf26ad8dd
	.word	3772741427                      # 0xe0df7733
	.word	1482887254                      # 0x58631056
	.word	1343838111                      # 0x5019579f
	.word	3903140090                      # 0xe8a530fa
	.word	4195393300                      # 0xfa109f14
	.word	1118632049                      # 0x42acf871
	.word	3749429448                      # 0xdf7bc0c8
	.word	1741137837                      # 0x67c7a7ad
	.word	1970407491                      # 0x75720843
	.word	3452858150                      # 0xcdce6f26
	.word	2511175536                      # 0x95ad7f70
	.word	756094997                       # 0x2d111815
	.word	1067759611                      # 0x3fa4b7fb
	.word	2266550430                      # 0x8718d09e
	.word	449832999                       # 0x1acfe827
	.word	2725482306                      # 0xa2738f42
	.word	2965774508                      # 0xb0c620ac
	.word	142231497                       # 0x87a47c9
	.word	2687676222                      # 0xa032af3e
	.word	412010587                       # 0x188ec85b
	.word	171665333                       # 0xa3b67b5
	.word	2995192016                      # 0xb28700d0
	.word	793786473                       # 0x2f503869
	.word	2548850444                      # 0x97ec5f0c
	.word	2237264098                      # 0x8559f0e2
	.word	1038456711                      # 0x3de59787
	.word	1703315409                      # 0x658687d1
	.word	3711623348                      # 0xdd3ae0b4
	.word	3482275674                      # 0xcf8f4f5a
	.word	1999841343                      # 0x7733283f
	.word	3940814982                      # 0xeae41086
	.word	1381529571                      # 0x525877e3
	.word	1089329165                      # 0x40edd80d
	.word	4166106984                      # 0xf851bf68
	.word	4029413537                      # 0xf02bf8a1
	.word	1217896388                      # 0x48979fc4
	.word	1512189994                      # 0x5a22302a
	.word	3802027855                      # 0xe29e574f
	.word	2135519222                      # 0x7f496ff6
	.word	3354724499                      # 0xc7f50893
	.word	3577784189                      # 0xd540a77d
	.word	1845280792                      # 0x6dfcc018
	.word	899665998                       # 0x359fd04e
	.word	2367928107                      # 0x8d23b72b
	.word	2677414085                      # 0x9f9618c5
	.word	657096608                       # 0x272a7fa0
	.word	3137160985                      # 0xbafd4719
	.word	37822588                        # 0x241207c
	.word	284462994                       # 0x10f48f92
	.word	2823350519                      # 0xa848e8f7
	.word	2601801789                      # 0x9b14583d
	.word	598228824                       # 0x23a83f58
	.word	824021174                       # 0x311d90b6
	.word	2309093331                      # 0x89a1f7d3
	.word	343330666                       # 0x1476cf6a
	.word	2898962447                      # 0xaccaa80f
	.word	3195996129                      # 0xbe7f07e1
	.word	113467524                       # 0x6c36084
	.word	1587572946                      # 0x5ea070d2
	.word	3860600759                      # 0xe61c17b7
	.word	4104763481                      # 0xf4a9b859
	.word	1276501820                      # 0x4c15df3c
	.word	3519211397                      # 0xd1c2e785
	.word	1769898208                      # 0x697e80e0
	.word	2076913422                      # 0x7bcb2f0e
	.word	3279374443                      # 0xc377486b
	.word	3406630818                      # 0xcb0d0fa2
	.word	1941006535                      # 0x73b168c7
	.word	1627703081                      # 0x6104c729
	.word	3652755532                      # 0xd9b8a04c
	.word	1148164341                      # 0x446f98f5
	.word	4241751952                      # 0xfcd3ff90
	.word	3999682686                      # 0xee66507e
	.word	1457141531                      # 0x56da371b
	.word	247015245                       # 0xeb9274d
	.word	3053797416                      # 0xb6054028
	.word	2763059142                      # 0xa4b0efc6
	.word	470583459                       # 0x1c0c88a3
	.word	2178658330                      # 0x81dbb01a
	.word	963106687                       # 0x3967d77f
	.word	735213713                       # 0x2bd27891
	.word	2473467892                      # 0x936e1ff4
	.word	992409347                       # 0x3b26f703
	.word	2207944806                      # 0x839a9066
	.word	2435792776                      # 0x912f3f88
	.word	697522413                       # 0x299358ed
	.word	3024379988                      # 0xb4446054
	.word	217581361                       # 0xcf80731
	.word	508405983                       # 0x1e4da8df
	.word	2800865210                      # 0xa6f1cfba
	.word	4271038444                      # 0xfe92dfec
	.word	1177467017                      # 0x462eb889
	.word	1419450215                      # 0x549b1767
	.word	3962007554                      # 0xec277002
	.word	1911572667                      # 0x71f048bb
	.word	3377213406                      # 0xc94c2fde
	.word	3690561584                      # 0xdbf98030
	.word	1665525589                      # 0x6345e755
	.word	1799331996                      # 0x6b3fa09c
	.word	3548628985                      # 0xd383c7f9
	.word	3241568279                      # 0xc1366817
	.word	2039091058                      # 0x798a0f72
	.word	3831314379                      # 0xe45d37cb
	.word	1558270126                      # 0x5ce150ae
	.word	1314193216                      # 0x4e54ff40
	.word	4142438437                      # 0xf6e89825
	.word	2928380019                      # 0xae8b8873
	.word	372764438                       # 0x1637ef16
	.word	75645176                        # 0x48240f8
	.word	3158189981                      # 0xbc3e279d
	.word	568925988                       # 0x21e91f24
	.word	2572515393                      # 0x99557841
	.word	2346768303                      # 0x8be0d7af
	.word	861712586                       # 0x335cb0ca
	.word	3982079547                      # 0xed59b63b
	.word	1441124702                      # 0x55e5d15e
	.word	1196457648                      # 0x47507eb0
	.word	4293663189                      # 0xffec19d5
	.word	1648042348                      # 0x623b216c
	.word	3666298377                      # 0xda874609
	.word	3358779879                      # 0xc832e9e7
	.word	1888390786                      # 0x708e8e82
	.word	686661332                       # 0x28ed9ed4
	.word	2421291441                      # 0x9051f9b1
	.word	2196002399                      # 0x82e4565f
	.word	978858298                       # 0x3a58313a
	.word	2811169155                      # 0xa78f0983
	.word	523464422                       # 0x1f336ee6
	.word	226935048                       # 0xd86c108
	.word	3040519789                      # 0xb53aa66d
	.word	3175145892                      # 0xbd40e1a4
	.word	100435649                       # 0x5fc86c1
	.word	390670639                       # 0x1749292f
	.word	2952089162                      # 0xaff54e4a
	.word	841119475                       # 0x322276f3
	.word	2325614998                      # 0x8a9e1196
	.word	2553003640                      # 0x982bbe78
	.word	546822429                       # 0x2097d91d
	.word	2029308235                      # 0x78f4c94b
	.word	3225988654                      # 0xc048ae2e
	.word	3539796416                      # 0xd2fd01c0
	.word	1782671013                      # 0x6a4166a5
	.word	4153826844                      # 0xf7965e1c
	.word	1328167289                      # 0x4f2a3979
	.word	1570739863                      # 0x5d9f9697
	.word	3844338162                      # 0xe523f1f2
	.word	1298864389                      # 0x4d6b1905
	.word	4124540512                      # 0xf5d77e60
	.word	3882013070                      # 0xe762d18e
	.word	1608431339                      # 0x5fdeb6eb
	.word	3255406162                      # 0xc2098e52
	.word	2058742071                      # 0x7ab5e937
	.word	1744848601                      # 0x680046d9
	.word	3501990332                      # 0xd0bc21bc
	.word	2296328682                      # 0x88df31ea
	.word	811816591                       # 0x3063568f
	.word	584513889                       # 0x22d6f961
	.word	2590678532                      # 0x9a6a9e04
	.word	129869501                       # 0x7bda6bd
	.word	3204563416                      # 0xbf01c1d8
	.word	2914283062                      # 0xadb46e36
	.word	352848211                       # 0x15080953
	.word	494030490                       # 0x1d724e9a
	.word	2781751807                      # 0xa5ce29ff
	.word	3078325777                      # 0xb77b8611
	.word	264757620                       # 0xfc7e174
	.word	2450577869                      # 0x9210d9cd
	.word	715964072                       # 0x2aacbea8
	.word	941166918                       # 0x38191146
	.word	2158327331                      # 0x80a57623
	.word	3636881013                      # 0xd8c66675
	.word	1618608400                      # 0x607a0110
	.word	1926213374                      # 0x72cfaefe
	.word	3396585883                      # 0xca73c99b
	.word	1470427426                      # 0x57a4f122
	.word	4011365959                      # 0xef189647
	.word	4255988137                      # 0xfdad39a9
	.word	1158766284                      # 0x45115ecc
	.word	1984818694                      # 0x764dee06
	.word	3471935843                      # 0xcef18963
	.word	3695453837                      # 0xdc44268d
	.word	1693991400                      # 0x64f841e8
	.word	4180638033                      # 0xf92f7951
	.word	1100160564                      # 0x41931e34
	.word	1395044826                      # 0x5326b1da
	.word	3952793279                      # 0xeb9ad6bf
	.word	3019491049                      # 0xb3f9c6e9
	.word	189112716                       # 0xb45a18c
	.word	435162722                       # 0x19f00e62
	.word	2706139399                      # 0xa14c6907
	.word	1016811966                      # 0x3c9b51be
	.word	2217162459                      # 0x842736db
	.word	2526189877                      # 0x96929935
	.word	774831696                       # 0x2e2efe50
	.word	643086745                       # 0x2654b999
	.word	2666061564                      # 0x9ee8defc
	.word	2354934034                      # 0x8c5d7112
	.word	887166583                       # 0x34e11677
	.word	2838900430                      # 0xa9362ece
	.word	294275499                       # 0x118a49ab
	.word	54519365                        # 0x33fe645
	.word	3145957664                      # 0xbb838120
	.word	3823145334                      # 0xe3e09176
	.word	1532818963                      # 0x5b5cf613
	.word	1240029693                      # 0x49e959fd
	.word	4048895640                      # 0xf1553e98
	.word	1820460577                      # 0x6c820621
	.word	3560857924                      # 0xd43e6144
	.word	3331051178                      # 0xc68bceaa
	.word	2117577167                      # 0x7e37a9cf
	.word	3598663992                      # 0xd67f4138
	.word	1858283101                      # 0x6ec3265d
	.word	2088143283                      # 0x7c7689b3
	.word	3301633750                      # 0xc4caeed6
	.word	1495127663                      # 0x591dd66f
	.word	3785470218                      # 0xe1a1b10a
	.word	4078182116                      # 0xf3141ee4
	.word	1269332353                      # 0x4ba87981
	.word	332098007                       # 0x13cb69d7
	.word	2876706482                      # 0xab770eb2
	.word	3116540252                      # 0xb9c2a15c
	.word	25085497                        # 0x17ec639
	.word	2628386432                      # 0x9ca9fe80
	.word	605395429                       # 0x241599e5
	.word	916469259                       # 0x36a0360b
	.word	2384220526                      # 0x8e1c516e
	.word	2254837415                      # 0x866616a7
	.word	1054503362                      # 0x3eda71c2
	.word	745528876                       # 0x2c6fde2c
	.word	2496903497                      # 0x94d3b949
	.word	151290352                       # 0x90481f0
	.word	2981684885                      # 0xb1b8e695
	.word	2735556987                      # 0xa30d497b
	.word	464596510                       # 0x1bb12e1e
	.word	1137851976                      # 0x43d23e48
	.word	4218313005                      # 0xfb6e592d
	.word	3923506883                      # 0xe9dbf6c3
	.word	1365741990                      # 0x516791a6
	.word	3434129695                      # 0xccb0a91f
	.word	1946996346                      # 0x740cce7a
	.word	1723425172                      # 0x66b96194
	.word	3724871409                      # 0xde0506f1
	.word	0                               # 0x0
	.word	2519730039                      # 0x96300777
	.word	744558318                       # 0x2c610eee
	.word	3125873049                      # 0xba510999
	.word	432303367                       # 0x19c46d07
	.word	2415159920                      # 0x8ff46a70
	.word	900031465                       # 0x35a563e9
	.word	2744476830                      # 0xa395649e
	.word	847829774                       # 0x3288db0e
	.word	2763578489                      # 0xa4b8dc79
	.word	518641120                       # 0x1ee9d5e0
	.word	2295976599                      # 0x88d9d297
	.word	726447625                       # 0x2b4cb609
	.word	3179065726                      # 0xbd7cb17e
	.word	120436967                       # 0x72db8e7
	.word	2434645904                      # 0x911dbf90
	.word	1678817053                      # 0x6410b71d
	.word	4062228586                      # 0xf220b06a
	.word	1215412723                      # 0x4871b9f3
	.word	3728850564                      # 0xde41be84
	.word	2111101466                      # 0x7dd4da1a
	.word	3957644653                      # 0xebe4dd6d
	.word	1370871028                      # 0x51b5d4f4
	.word	3347436419                      # 0xc785d383
	.word	1452829715                      # 0x56986c13
	.word	3232263012                      # 0xc0a86b64
	.word	2063164157                      # 0x7af962fd
	.word	3972621706                      # 0xecc9658a
	.word	1331429652                      # 0x4f5c0114
	.word	3647735395                      # 0xd96c0663
	.word	1664946170                      # 0x633d0ffa
	.word	4111272077                      # 0xf50d088d
	.word	3357568571                      # 0xc8206e3b
	.word	1578133836                      # 0x5e10694c
	.word	3829489877                      # 0xe44160d5
	.word	1920034722                      # 0x727167a2
	.word	3521381180                      # 0xd1e4033c
	.word	1205077067                      # 0x47d4044b
	.word	4253355474                      # 0xfd850dd2
	.word	1807026853                      # 0x6bb50aa5
	.word	4205360437                      # 0xfaa8b535
	.word	1821946434                      # 0x6c98b242
	.word	3603545051                      # 0xd6c9bbdb
	.word	1090108588                      # 0x40f9bcac
	.word	3815561266                      # 0xe36cd832
	.word	1969020741                      # 0x755cdf45
	.word	3473790684                      # 0xcf0dd6dc
	.word	1497223595                      # 0x593dd1ab
	.word	2888882470                      # 0xac30d926
	.word	973135441                       # 0x3a00de51
	.word	2152847304                      # 0x8051d7c8
	.word	375509183                       # 0x1661d0bf
	.word	3052712993                      # 0xb5f4b421
	.word	600093526                       # 0x23c4b356
	.word	2576726735                      # 0x9995bacf
	.word	262520248                       # 0xfa5bdb8
	.word	2662859304                      # 0x9eb80228
	.word	143131999                       # 0x888055f
	.word	3000569030                      # 0xb2d90cc6
	.word	619252657                       # 0x24e90bb1
	.word	2273079087                      # 0x877c6f2f
	.word	290220120                       # 0x114c6858
	.word	2870829505                      # 0xab1d61c1
	.word	1026385590                      # 0x3d2d66b6
	.word	2420235382                      # 0x9041dc76
	.word	108124929                       # 0x671db01
	.word	3156267672                      # 0xbc20d298
	.word	705746415                       # 0x2a10d5ef
	.word	2307240305                      # 0x8985b171
	.word	532002310                       # 0x1fb5b606
	.word	2783231903                      # 0xa5e4bf9f
	.word	869578984                       # 0x33d4b8e8
	.word	2731083640                      # 0xa2c90778
	.word	888733711                       # 0x34f9000f
	.word	2393377174                      # 0x8ea80996
	.word	412618465                       # 0x18980ee1
	.word	3138218623                      # 0xbb0d6a7f
	.word	759000328                       # 0x2d3d6d08
	.word	2540463249                      # 0x976c6491
	.word	22832102                        # 0x15c63e6
	.word	4098976619                      # 0xf4516b6b
	.word	1650551836                      # 0x62616c1c
	.word	3627050373                      # 0xd8306585
	.word	1308648178                      # 0x4e0062f2
	.word	3985966700                      # 0xed95066c
	.word	2074411291                      # 0x7ba5011b
	.word	3253995650                      # 0xc1f40882
	.word	1472466933                      # 0x57c40ff5
	.word	3336155237                      # 0xc6d9b065
	.word	1357494034                      # 0x50e9b712
	.word	3937975947                      # 0xeab8be8b
	.word	2089335292                      # 0x7c88b9fc
	.word	3743276386                      # 0xdf1ddd62
	.word	1227741717                      # 0x492dda15
	.word	4085044108                      # 0xf37cd38c
	.word	1699534075                      # 0x654cd4fb
	.word	1482797645                      # 0x5861b24d
	.word	3461461306                      # 0xce51b53a
	.word	1946205347                      # 0x7400bca3
	.word	3794844628                      # 0xe230bbd4
	.word	1101389642                      # 0x41a5df4a
	.word	3616921661                      # 0xd795d83d
	.word	1841615268                      # 0x6dc4d1a4
	.word	4227126995                      # 0xfbf4d6d3
	.word	1793681731                      # 0x6ae96943
	.word	4242107956                      # 0xfcd96e34
	.word	1183344557                      # 0x468867ad
	.word	3501744346                      # 0xd0b860da
	.word	1932330052                      # 0x732d0444
	.word	3843883827                      # 0xe51d0333
	.word	1598818986                      # 0x5f4c0aaa
	.word	3380350429                      # 0xc97c0ddd
	.word	1014039888                      # 0x3c710550
	.word	2856387111                      # 0xaa410227
	.word	269487038                       # 0x10100bbe
	.word	2250247369                      # 0x86200cc9
	.word	632645719                       # 0x25b56857
	.word	3011866400                      # 0xb3856f20
	.word	164914873                       # 0x9d466b9
	.word	2682544590                      # 0x9fe461ce
	.word	251256414                       # 0xef9de5e
	.word	2563365161                      # 0x98c9d929
	.word	580440240                       # 0x2298d0b0
	.word	3030964167                      # 0xb4a8d7c7
	.word	389919577                       # 0x173db359
	.word	2165158958                      # 0x810db42e
	.word	995933623                       # 0x3b5cbdb7
	.word	2909584064                      # 0xad6cbac0
	.word	545503469                       # 0x2083b8ed
	.word	3065233306                      # 0xb6b3bf9a
	.word	216184323                       # 0xce2b603
	.word	2597499252                      # 0x9ad2b174
	.word	961009130                       # 0x3947d5ea
	.word	2943865501                      # 0xaf77d29d
	.word	354867972                       # 0x1526db04
	.word	2199313523                      # 0x8316dc73
	.word	302736355                       # 0x120b63e3
	.word	2218484884                      # 0x843b6494
	.word	1047162125                      # 0x3e6a6d0d
	.word	2824497786                      # 0xa85a6a7a
	.word	198119140                       # 0xbcf0ee4
	.word	2650737043                      # 0x9dff0993
	.word	665714698                       # 0x27ae000a
	.word	2979923837                      # 0xb19e077d
	.word	1150488560                      # 0x44930ff0
	.word	3533899911                      # 0xd2a30887
	.word	1760690462                      # 0x68f2011e
	.word	4274128489                      # 0xfec20669
	.word	1566008055                      # 0x5d5762f7
	.word	3412551040                      # 0xcb676580
	.word	1899392025                      # 0x71366c19
	.word	3875957614                      # 0xe7066b6e
	.word	1981535486                      # 0x761bd4fe
	.word	3760968585                      # 0xe02bd389
	.word	1518000656                      # 0x5a7ada10
	.word	3427458407                      # 0xcc4add67
	.word	1876933113                      # 0x6fdfb9f9
	.word	4193238670                      # 0xf9efbe8e
	.word	1136572183                      # 0x43beb717
	.word	3582898272                      # 0xd58eb060
	.word	3903051478                      # 0xe8a3d6d6
	.word	2123616673                      # 0x7e93d1a1
	.word	3301103672                      # 0xc4c2d838
	.word	1391648591                      # 0x52f2df4f
	.word	4050107345                      # 0xf167bbd1
	.word	1733803174                      # 0x6757bca6
	.word	3708204351                      # 0xdd06b53f
	.word	1261875784                      # 0x4b36b248
	.word	3660254680                      # 0xda2b0dd8
	.word	1276840623                      # 0x4c1b0aaf
	.word	4132045622                      # 0xf64a0336
	.word	1618609217                      # 0x607a0441
	.word	3287245023                      # 0xc3ef60df
	.word	1440704424                      # 0x55df67a8
	.word	4019088945                      # 0xef8e6e31
	.word	2042521926                      # 0x79be6946
	.word	2360566219                      # 0x8cb361cb
	.word	444819132                       # 0x1a8366bc
	.word	2698145573                      # 0xa0d26f25
	.word	920807506                       # 0x36e26852
	.word	2507607244                      # 0x95770ccc
	.word	54987707                        # 0x3470bbb
	.word	3105227298                      # 0xb9160222
	.word	791020885                       # 0x2f260555
	.word	3191585477                      # 0xbe3bbac5
	.word	671858098                       # 0x280bbdb2
	.word	2455417899                      # 0x925ab42b
	.word	74101596                        # 0x46ab35c
	.word	2818561986                      # 0xa7ffd7c2
	.word	835702965                       # 0x31cfd0b5
	.word	2342443308                      # 0x8b9ed92c
	.word	497999451                       # 0x1daede5b
	.word	2965529755                      # 0xb0c2649b
	.word	653419500                       # 0x26f263ec
	.word	2627955317                      # 0x9ca36a75
	.word	177433858                       # 0xa936d02
	.word	2835745180                      # 0xa906099c
	.word	1060507371                      # 0x3f360eeb
	.word	2238121842                      # 0x85670772
	.word	324468741                       # 0x13570005
	.word	2185936789                      # 0x824abf95
	.word	343587042                       # 0x147ab8e2
	.word	2922099067                      # 0xae2bb17b
	.word	941340172                       # 0x381bb60c
	.word	2609828498                      # 0x9b8ed292
	.word	230610405                       # 0xdbed5e5
	.word	3085950076                      # 0xb7efdc7c
	.word	568318731                       # 0x21dfdb0b
	.word	3570586502                      # 0xd4d2d386
	.word	1122161905                      # 0x42e2d4f1
	.word	4172537192                      # 0xf8b3dd68
	.word	1854134815                      # 0x6e83da1f
	.word	3440819841                      # 0xcd16be81
	.word	1529264630                      # 0x5b26b9f6
	.word	3782717551                      # 0xe177b06f
	.word	2001188632                      # 0x7747b718
	.word	3864660104                      # 0xe65a0888
	.word	1885999103                      # 0x706a0fff
	.word	3392865894                      # 0xca3b0666
	.word	1544225041                      # 0x5c0b0111
	.word	4288570767                      # 0xff9e658f
	.word	1773036280                      # 0x69ae62f8
	.word	3556731745                      # 0xd3ff6b61
	.word	1171221526                      # 0x45cf6c16
	.word	2028079776                      # 0x78e20aa0
	.word	4006743511                      # 0xeed20dd7
	.word	1417872462                      # 0x5483044e
	.word	3266511673                      # 0xc2b30339
	.word	1629906855                      # 0x612667a7
	.word	4145438928                      # 0xf71660d0
	.word	1296525641                      # 0x4d476949
	.word	3682037310                      # 0xdb776e3e
	.word	1248514478                      # 0x4a6ad1ae
	.word	3696940761                      # 0xdc5ad6d9
	.word	1712054080                      # 0x660bdf40
	.word	4030453815                      # 0xf03bd837
	.word	1403960489                      # 0x53aebca9
	.word	3315514334                      # 0xc59ebbde
	.word	2144318023                      # 0x7fcfb247
	.word	3925849392                      # 0xe9ffb530
	.word	485670333                       # 0x1cf2bdbd
	.word	2328017610                      # 0x8ac2baca
	.word	814986067                       # 0x3093b353
	.word	2795746340                      # 0xa6a3b424
	.word	87478458                        # 0x536d0ba
	.word	2466699213                      # 0x9306d7cd
	.word	693624404                       # 0x2957de54
	.word	3211254051                      # 0xbf67d923
	.word	779773619                       # 0x2e7a66b3
	.word	3091882436                      # 0xb84a61c4
	.word	35350621                        # 0x21b685d
	.word	2485874474                      # 0x942b6f2a
	.word	935201716                       # 0x37be0bb4
	.word	2710441155                      # 0xa18e0cc3
	.word	467600730                       # 0x1bdf055a
	.word	2381251117                      # 0x8def022d
	.word	0                               # 0x0
	.word	1093737241                      # 0x41311b19
	.word	2187474482                      # 0x82623632
	.word	3277008171                      # 0xc3532d2b
	.word	80047204                        # 0x4c56c64
	.word	1173649277                      # 0x45f4777d
	.word	2259114582                      # 0x86a75a56
	.word	3348513103                      # 0xc796414f
	.word	143317448                       # 0x88ad9c8
	.word	1237041873                      # 0x49bbc2d1
	.word	2330521594                      # 0x8ae8effa
	.word	3420058851                      # 0xcbd9f4e3
	.word	206550444                       # 0xc4fb5ac
	.word	1300147893                      # 0x4d7eaeb5
	.word	2385347486                      # 0x8e2d839e
	.word	3474757767                      # 0xcf1c9887
	.word	1360183882                      # 0x5112c24a
	.word	270784851                       # 0x1023d953
	.word	3547395192                      # 0xd370f478
	.word	2453794657                      # 0x9241ef61
	.word	1440198190                      # 0x55d7ae2e
	.word	350663991                       # 0x14e6b537
	.word	3619002396                      # 0xd7b5981c
	.word	2525266693                      # 0x96848305
	.word	1503140738                      # 0x59981b82
	.word	413728923                       # 0x18a9009b
	.word	3690606000                      # 0xdbfa2db0
	.word	2597009065                      # 0x9acb36a9
	.word	1566406630                      # 0x5d5d77e6
	.word	476867839                       # 0x1c6c6cff
	.word	3745464788                      # 0xdf3f41d4
	.word	2651740877                      # 0x9e0e5acd
	.word	2720302229                      # 0xa2248495
	.word	3809845132                      # 0xe3159f8c
	.word	541504167                       # 0x2046b2a7
	.word	1635232190                      # 0x6177a9be
	.word	2799823089                      # 0xa6e1e8f1
	.word	3889230824                      # 0xe7d0f3e8
	.word	612622019                       # 0x2483dec3
	.word	1706214874                      # 0x65b2c5da
	.word	2863553885                      # 0xaaae5d5d
	.word	3953083972                      # 0xeb9f4644
	.word	684485487                       # 0x28cc6b6f
	.word	1778217078                      # 0x69fd7076
	.word	2926260537                      # 0xae6b3139
	.word	4015663648                      # 0xef5a2a20
	.word	738789131                       # 0x2c09070b
	.word	1832393746                      # 0x6d381c12
	.word	4080420575                      # 0xf33646df
	.word	2986827206                      # 0xb2075dc6
	.word	1901359341                      # 0x715470ed
	.word	811953140                       # 0x30656bf4
	.word	4159908539                      # 0xf7f32abb
	.word	3066180002                      # 0xb6c231a2
	.word	1972444297                      # 0x75911c89
	.word	882902928                       # 0x34a00790
	.word	4223442711                      # 0xfbbc9f17
	.word	3129836558                      # 0xba8d840e
	.word	2044635429                      # 0x79dea925
	.word	955232828                       # 0x38efb23c
	.word	4286182259                      # 0xff79f373
	.word	3192449130                      # 0xbe48e86a
	.word	2098971969                      # 0x7d1bc541
	.word	1009442392                      # 0x3c2ade58
	.word	89094640                        # 0x54f79f0
	.word	1149133545                      # 0x447e62e9
	.word	2267893698                      # 0x872d4fc2
	.word	3323745499                      # 0xc61c54db
	.word	25826708                        # 0x18a1594
	.word	1086000781                      # 0x40bb0e8d
	.word	2213028774                      # 0x83e823a6
	.word	3269015743                      # 0xc2d938bf
	.word	231055416                       # 0xdc5a038
	.word	1291107105                      # 0x4cf4bb21
	.word	2410124810                      # 0x8fa7960a
	.word	3465973011                      # 0xce968d13
	.word	151047260                       # 0x900cc5c
	.word	1211225925                      # 0x4831d745
	.word	2338519662                      # 0x8b62fa6e
	.word	3394494839                      # 0xca53e177
	.word	1415429050                      # 0x545dbbba
	.word	359440547                       # 0x156ca0a3
	.word	3594489224                      # 0xd63f8d88
	.word	2534315665                      # 0x970e9691
	.word	1352194014                      # 0x5098d7de
	.word	296340679                       # 0x11a9ccc7
	.word	3539657196                      # 0xd2fae1ec
	.word	2479618805                      # 0x93cbfaf5
	.word	1557619314                      # 0x5cd76272
	.word	501643627                       # 0x1de6796b
	.word	3736425536                      # 0xdeb55440
	.word	2676248409                      # 0x9f844f59
	.word	1477578262                      # 0x58120e16
	.word	421729551                       # 0x1923150f
	.word	3664787492                      # 0xda703824
	.word	2604737341                      # 0x9b41233d
	.word	2808872293                      # 0xa76bfd65
	.word	3864716924                      # 0xe65ae67c
	.word	621398871                       # 0x2509cb57
	.word	1681444942                      # 0x6438d04e
	.word	2746126593                      # 0xa3ae9101
	.word	3802106392                      # 0xe29f8a18
	.word	567060275                       # 0x21cca733
	.word	1627241514                      # 0x60fdbc2a
	.word	2950767789                      # 0xafe124ad
	.word	4006625204                      # 0xeed03fb4
	.word	763564703                       # 0x2d83129f
	.word	1823607174                      # 0x6cb20986
	.word	2871281865                      # 0xab2448c9
	.word	3927266256                      # 0xea1553d0
	.word	692485883                       # 0x29467efb
	.word	1752655330                      # 0x687765e2
	.word	4135141167                      # 0xf6793f2f
	.word	3074958390                      # 0xb7482436
	.word	1947928861                      # 0x741b091d
	.word	891949572                       # 0x352a1204
	.word	4072428363                      # 0xf2bc534b
	.word	3012380754                      # 0xb38d4852
	.word	1893623161                      # 0x70de6579
	.word	837779040                       # 0x31ef7e60
	.word	4277397223                      # 0xfef3e6e7
	.word	3217227262                      # 0xbfc2fdfe
	.word	2089930965                      # 0x7c91d0d5
	.word	1033948108                      # 0x3da0cbcc
	.word	4197878403                      # 0xfa368a83
	.word	3137835418                      # 0xbb07919a
	.word	2018819249                      # 0x7854bcb1
	.word	962963368                       # 0x3965a7a8
	.word	1268286267                      # 0x4b98833b
	.word	178886690                       # 0xaa99822
	.word	3388650761                      # 0xc9fab509
	.word	2295049744                      # 0x88cbae10
	.word	1331556191                      # 0x4f5def5f
	.word	242021446                       # 0xe6cf446
	.word	3443513709                      # 0xcd3fd96d
	.word	2349777524                      # 0x8c0ec274
	.word	1125276403                      # 0x43125af3
	.word	35865066                        # 0x22341ea
	.word	3245370561                      # 0xc1706cc1
	.word	2151774168                      # 0x804177d8
	.word	1205286551                      # 0x47d73697
	.word	115748238                       # 0x6e62d8e
	.word	3316973733                      # 0xc5b500a5
	.word	2223250364                      # 0x84841bbc
	.word	445268337                       # 0x1a8a4171
	.word	1539005032                      # 0x5bbb5a68
	.word	2565371715                      # 0x98e87743
	.word	3654904922                      # 0xd9d96c5a
	.word	508505365                       # 0x1e4f2d15
	.word	1602106892                      # 0x5f7e360c
	.word	2620201767                      # 0x9c2d1b27
	.word	3709599806                      # 0xdd1c003e
	.word	302028985                       # 0x120098b9
	.word	1395753888                      # 0x533183a0
	.word	2422386315                      # 0x9062ae8b
	.word	3511924114                      # 0xd153b592
	.word	382072029                       # 0x16c5f4dd
	.word	1475669956                      # 0x57f4efc4
	.word	2494022383                      # 0x94a7c2ef
	.word	3583433206                      # 0xd596d9f6
	.word	3921414062                      # 0xe9bc07ae
	.word	2827820215                      # 0xa88d1cb7
	.word	1809723804                      # 0x6bde319c
	.word	720317061                       # 0x2aef2a85
	.word	3984157642                      # 0xed796bca
	.word	2890428627                      # 0xac4870d3
	.word	1864064504                      # 0x6f1b5df8
	.word	774522593                       # 0x2e2a46e1
	.word	3778469478                      # 0xe136de66
	.word	2684863871                      # 0xa007c57f
	.word	1666508884                      # 0x6354e854
	.word	577106765                       # 0x2265f34d
	.word	3857953282                      # 0xe5f3b202
	.word	2764220699                      # 0xa4c2a91b
	.word	1737589808                      # 0x67918430
	.word	648060713                       # 0x26a09f29
	.word	3098461668                      # 0xb8aec5e4
	.word	4188004093                      # 0xf99fdefd
	.word	986510294                       # 0x3accf3d6
	.word	2080237775                      # 0x7bfde8cf
	.word	3161172352                      # 0xbc6ba980
	.word	4250579609                      # 0xfd5ab299
	.word	1040818098                      # 0x3e099fb2
	.word	2134410411                      # 0x7f3884ab
	.word	2955156524                      # 0xb0241c2c
	.word	4044687157                      # 0xf1150735
	.word	843459102                       # 0x32462a1e
	.word	1937191175                      # 0x73773107
	.word	3034673224                      # 0xb4e17048
	.word	4124076881                      # 0xf5d06b51
	.word	914572922                       # 0x3683467a
	.word	2008178019                      # 0x77b25d63
	.word	1322777291                      # 0x4ed7facb
	.word	266789330                       # 0xfe6e1d2
	.word	3434466553                      # 0xccb5ccf9
	.word	2374293472                      # 0x8d84d7e0
	.word	1242732207                      # 0x4a1296af
	.word	186879414                       # 0xb238db6
	.word	3362824349                      # 0xc870a09d
	.word	2302786436                      # 0x8941bb84
	.word	1180508931                      # 0x465d2303
	.word	124532762                       # 0x76c381a
	.word	3292468529                      # 0xc43f1531
	.word	2232290856                      # 0x850e0e28
	.word	1117278055                      # 0x42984f67
	.word	61428862                        # 0x3a9547e
	.word	3237640533                      # 0xc0fa7955
	.word	2177589836                      # 0x81cb624c
	.word	533018753                       # 0x1fc53881
	.word	1593058200                      # 0x5ef42398
	.word	2644971187                      # 0x9da70eb3
	.word	3700823466                      # 0xdc9615aa
	.word	453006565                       # 0x1b0054e5
	.word	1513181180                      # 0x5a314ffc
	.word	2573361879                      # 0x996262d7
	.word	3629349326                      # 0xd85379ce
	.word	391110985                       # 0x174fe149
	.word	1451162192                      # 0x567efa50
	.word	2502809467                      # 0x952dd77b
	.word	3558657122                      # 0xd41ccc62
	.word	327847213                       # 0x138a8d2d
	.word	1388025396                      # 0x52bb9634
	.word	2447948575                      # 0x91e8bb1f
	.word	3503923206                      # 0xd0d9a006
	.word	3975380574                      # 0xecf37e5e
	.word	2915198279                      # 0xadc26547
	.word	1855015020                      # 0x6e91486c
	.word	799036277                       # 0x2fa05375
	.word	3895857722                      # 0xe836123a
	.word	2835810595                      # 0xa9070923
	.word	1783899144                      # 0x6a542408
	.word	728055569                       # 0x2b653f11
	.word	3833178006                      # 0xe479a796
	.word	2773007503                      # 0xa548bc8f
	.word	1713082788                      # 0x661b91a4
	.word	657099453                       # 0x272a8abd
	.word	3770469362                      # 0xe0bccbf2
	.word	2710425835                      # 0xa18dd0eb
	.word	1658781120                      # 0x62defdc0
	.word	602924761                       # 0x23efe6d9
	.word	3185687572                      # 0xbde1bc14
	.word	4241532685                      # 0xfcd0a70d
	.word	1065585190                      # 0x3f838a26
	.word	2125631807                      # 0x7eb2913f
	.word	3106197616                      # 0xb924d070
	.word	4162177897                      # 0xf815cb69
	.word	994502210                       # 0x3b46e642
	.word	2054683995                      # 0x7a77fd5b
	.word	3043714524                      # 0xb56b65dc
	.word	4099571397                      # 0xf45a7ec5
	.word	923358190                       # 0x370953ee
	.word	1983400183                      # 0x763848f7
	.word	2980972984                      # 0xb1ae09b8
	.word	4036956833                      # 0xf09f12a1
	.word	869023626                       # 0x33cc3f8a
	.word	1929192595                      # 0x72fd2493
	.word	0                               # 0x0
	.word	929743361                       # 0x376ac201
	.word	1859421187                      # 0x6ed48403
	.word	1505641986                      # 0x59be4602
	.word	3701999879                      # 0xdca80907
	.word	3955411718                      # 0xebc2cb06
	.word	2994507012                      # 0xb27c8d04
	.word	2232831749                      # 0x85164f05
	.word	3092321038                      # 0xb851130e
	.word	2403062031                      # 0x8f3bd10f
	.word	3599079181                      # 0xd685970d
	.word	3790558476                      # 0xe1ef550c
	.word	1694046729                      # 0x64f91a09
	.word	1402198024                      # 0x5393d808
	.word	170761738                       # 0xa2d9e0a
	.word	1028086795                      # 0x3d475c0b
	.word	1889740316                      # 0x70a3261c
	.word	1204413469                      # 0x47c9e41d
	.word	511156767                       # 0x1e77a21f
	.word	689791006                       # 0x291d601e
	.word	2886414107                      # 0xac0b2f1b
	.word	2606886170                      # 0x9b61ed1a
	.word	3269438232                      # 0xc2dfab18
	.word	4122306841                      # 0xf5b56919
	.word	3371316498                      # 0xc8f23512
	.word	4288214803                      # 0xff98f713
	.word	2787553553                      # 0xa626b111
	.word	2437706512                      # 0x914c7310
	.word	341457941                       # 0x145a3c15
	.word	590413332                       # 0x2330fe14
	.word	2056173590                      # 0x7a8eb816
	.word	1306819095                      # 0x4de47a17
	.word	3762703672                      # 0xe0464d38
	.word	3610021689                      # 0xd72c8f39
	.word	2391984443                      # 0x8e92c93b
	.word	3120040762                      # 0xb9f80b3a
	.word	1022247999                      # 0x3cee443f
	.word	193234494                       # 0xb84863e
	.word	1379582012                      # 0x523ac03c
	.word	1699742269                      # 0x6550023d
	.word	1477926454                      # 0x58175e36
	.word	1870502967                      # 0x6f7d9c37
	.word	918805045                       # 0x36c3da35
	.word	27858996                        # 0x1a91834
	.word	2227132209                      # 0x84bf5731
	.word	3017119024                      # 0xb3d59530
	.word	3932934962                      # 0xea6bd332
	.word	3707834675                      # 0xdd011133
	.word	2430954276                      # 0x90e56b24
	.word	2811210021                      # 0xa78fa925
	.word	4264685351                      # 0xfe31ef27
	.word	3378195750                      # 0xc95b2d26
	.word	1280139811                      # 0x4c4d6223
	.word	2066194466                      # 0x7b27a022
	.word	580511264                       # 0x2299e620
	.word	368256033                       # 0x15f32421
	.word	682915882                       # 0x28b4782a
	.word	534690347                       # 0x1fdeba2b
	.word	1180761129                      # 0x4660fc29
	.word	1896496680                      # 0x710a3e28
	.word	4095504685                      # 0xf41c712d
	.word	3279336236                      # 0xc376b32c
	.word	2596861230                      # 0x9ac8f52e
	.word	2913089327                      # 0xada2372f
	.word	3230505584                      # 0xc08d9a70
	.word	4159133809                      # 0xf7e75871
	.word	2925076083                      # 0xae591e73
	.word	2570312818                      # 0x9933dc72
	.word	472224631                       # 0x1c259377
	.word	726618486                       # 0x2b4f5176
	.word	1928402804                      # 0x72f11774
	.word	1167840629                      # 0x459bd575
	.word	2027719038                      # 0x78dc897e
	.word	1337346943                      # 0x4fb64b7f
	.word	369626493                       # 0x16080d7d
	.word	560123772                       # 0x2162cf7c
	.word	2759098489                      # 0xa4748079
	.word	2468233848                      # 0x931e4278
	.word	3399484538                      # 0xcaa0047a
	.word	4257924731                      # 0xfdcac67b
	.word	2955852908                      # 0xb02ebc6c
	.word	2269412973                      # 0x87447e6d
	.word	3740940399                      # 0xdefa386f
	.word	3918592622                      # 0xe990fa6e
	.word	1820767595                      # 0x6c86b56b
	.word	1542223722                      # 0x5bec776a
	.word	38941032                        # 0x2523168
	.word	892924777                       # 0x3538f369
	.word	142585698                       # 0x87faf62
	.word	1058368867                      # 0x3f156d63
	.word	1722493793                      # 0x66ab2b61
	.word	1371662688                      # 0x51c1e960
	.word	3570902629                      # 0xd4d7a665
	.word	3820840036                      # 0xe3bd6464
	.word	3120767590                      # 0xba032266
	.word	2372526183                      # 0x8d69e067
	.word	550229832                       # 0x20cbd748
	.word	396432713                       # 0x17a11549
	.word	1310675787                      # 0x4e1f534b
	.word	2037748042                      # 0x7975914a
	.word	4234403407                      # 0xfc63de4f
	.word	3406371918                      # 0xcb091c4e
	.word	2461489740                      # 0x92b75a4c
	.word	2782763085                      # 0xa5dd984d
	.word	2560279622                      # 0x989ac446
	.word	2951743047                      # 0xaff00647
	.word	4132323397                      # 0xf64e4045
	.word	3240395332                      # 0xc1248244
	.word	1144180033                      # 0x4432cd41
	.word	1935150912                      # 0x73580f40
	.word	719735106                       # 0x2ae64942
	.word	495749955                       # 0x1d8c8b43
	.word	1349054804                      # 0x5068f154
	.word	1728197461                      # 0x67023355
	.word	1052538199                      # 0x3ebc7557
	.word	165066582                       # 0x9d6b756
	.word	2361456723                      # 0x8cc0f853
	.word	3148495442                      # 0xbbaa3a52
	.word	3792993360                      # 0xe2147c50
	.word	3581853265                      # 0xd57ebe51
	.word	3896107610                      # 0xe839e25a
	.word	3746766939                      # 0xdf53205b
	.word	2263705177                      # 0x86ed6659
	.word	2978456664                      # 0xb187a458
	.word	881978205                       # 0x3491eb5d
	.word	66791772                        # 0x3fb295c
	.word	1514499934                      # 0x5a456f5e
	.word	1831841119                      # 0x6d2fad5f
	.word	2149266913                      # 0x801b35e1
	.word	3077699552                      # 0xb771f7e0
	.word	4006588898                      # 0xeecfb1e2
	.word	3651498979                      # 0xd9a573e3
	.word	1555250406                      # 0x5cb33ce6
	.word	1809448679                      # 0x6bd9fee7
	.word	845658341                       # 0x3267b8e5
	.word	84769508                        # 0x50d7ae4
	.word	944383727                       # 0x384a26ef
	.word	253813998                       # 0xf20e4ee
	.word	1453236972                      # 0x569ea2ec
	.word	1643405549                      # 0x61f460ed
	.word	3840028648                      # 0xe4e22fe8
	.word	3548966377                      # 0xd388ede9
	.word	2318838763                      # 0x8a36abeb
	.word	3176950250                      # 0xbd5c69ea
	.word	4038595581                      # 0xf0b813fd
	.word	3352482300                      # 0xc7d2d1fc
	.word	2657916926                      # 0x9e6c97fe
	.word	2835764735                      # 0xa90655ff
	.word	739252986                       # 0x2c101afa
	.word	461035771                       # 0x1b7ad8fb
	.word	1120182009                      # 0x42c49ef9
	.word	1974361336                      # 0x75ae5cf8
	.word	1223229683                      # 0x48e900f3
	.word	2139341554                      # 0x7f83c2f2
	.word	641565936                       # 0x263d84f0
	.word	290932465                       # 0x115746f1
	.word	2487290356                      # 0x944109f4
	.word	2737556469                      # 0xa32bcbf5
	.word	4204105207                      # 0xfa958df7
	.word	3456061430                      # 0xcdff4ff6
	.word	1616738521                      # 0x605d78d9
	.word	1463270104                      # 0x5737bad8
	.word	243924186                       # 0xe89fcda
	.word	971194075                       # 0x39e33edb
	.word	3170202078                      # 0xbcf571de
	.word	2342499295                      # 0x8b9fb3df
	.word	3525440989                      # 0xd221f5dd
	.word	3846911964                      # 0xe54b37dc
	.word	3624692695                      # 0xd80c6bd7
	.word	4016482774                      # 0xef66a9d6
	.word	3067670484                      # 0xb6d8efd4
	.word	2175938005                      # 0x81b22dd5
	.word	77882064                        # 0x4a462d0
	.word	869179601                       # 0x33cea0d1
	.word	1785784019                      # 0x6a70e6d3
	.word	1561994450                      # 0x5d1a24d2
	.word	285105861                       # 0x10fe5ec5
	.word	664050884                       # 0x27949cc4
	.word	2116737734                      # 0x7e2adac6
	.word	1228937415                      # 0x494018c7
	.word	3428210626                      # 0xcc5657c2
	.word	4215051715                      # 0xfb3c95c3
	.word	2726482881                      # 0xa282d3c1
	.word	2515014080                      # 0x95e811c0
	.word	2830061003                      # 0xa8af4dcb
	.word	2680524746                      # 0x9fc58fca
	.word	3330001352                      # 0xc67bc9c8
	.word	4044426185                      # 0xf1110bc9
	.word	1946633420                      # 0x740744cc
	.word	1131251405                      # 0x436d86cd
	.word	450085071                       # 0x1ad3c0cf
	.word	767099598                       # 0x2db902ce
	.word	1083617169                      # 0x4096af91
	.word	2013031824                      # 0x77fc6d90
	.word	776088466                       # 0x2e422b92
	.word	422111635                       # 0x1928e993
	.word	2621351574                      # 0x9c3ea696
	.word	2874434711                      # 0xab546497
	.word	4075430549                      # 0xf2ea2295
	.word	3313557652                      # 0xc580e094
	.word	4173839519                      # 0xf8c7bc9f
	.word	3484253854                      # 0xcfad7e9e
	.word	2517842076                      # 0x9613389c
	.word	2709125789                      # 0xa179fa9d
	.word	611300760                       # 0x246fb598
	.word	319125401                       # 0x13057799
	.word	1253781915                      # 0x4abb319b
	.word	2110911386                      # 0x7dd1f39a
	.word	808814989                       # 0x3035898d
	.word	123685772                       # 0x75f4b8c
	.word	1591807374                      # 0x5ee10d8e
	.word	1770770319                      # 0x698bcf8f
	.word	3969745034                      # 0xec9d808a
	.word	3690414731                      # 0xdbf7428b
	.word	2185823369                      # 0x82490489
	.word	3039020680                      # 0xb523c688
	.word	2288294531                      # 0x88649a83
	.word	3205388418                      # 0xbf0e5882
	.word	3870301824                      # 0xe6b01e80
	.word	3520781441                      # 0xd1dadc81
	.word	1422693252                      # 0x54cc9384
	.word	1671844229                      # 0x63a65185
	.word	974657415                       # 0x3a181787
	.word	225629574                       # 0xd72d586
	.word	2698044073                      # 0xa0d0e2a9
	.word	2545557672                      # 0x97ba20a8
	.word	3456394922                      # 0xce0466aa
	.word	4184777899                      # 0xf96ea4ab
	.word	2088299438                      # 0x7c78ebae
	.word	1259481519                      # 0x4b1229af
	.word	313290669                       # 0x12ac6fad
	.word	633777580                       # 0x25c6adac
	.word	411169191                       # 0x1881f1a7
	.word	803943334                       # 0x2feb33a6
	.word	1985312164                      # 0x765575a4
	.word	1094694821                      # 0x413fb7a5
	.word	3291084960                      # 0xc429f8a0
	.word	4081269409                      # 0xf3433aa1
	.word	2868739235                      # 0xaafd7ca3
	.word	2643967650                      # 0x9d97bea2
	.word	3497247925                      # 0xd073c4b5
	.word	3877177012                      # 0xe71906b4
	.word	3198632118                      # 0xbea740b6
	.word	2311946935                      # 0x89cd82b7
	.word	215731634                       # 0xcdbcdb2
	.word	1001459635                      # 0x3bb10fb3
	.word	1645169073                      # 0x620f49b1
	.word	1432718256                      # 0x55658bb0
	.word	1747113915                      # 0x6822d7bb
	.word	1598559674                      # 0x5f4815ba
	.word	116806584                       # 0x6f653b8
	.word	832344505                       # 0x319c91b9
	.word	3028999868                      # 0xb48adebc
	.word	2212502717                      # 0x83e01cbd
	.word	3663616703                      # 0xda5e5abf
	.word	3979647166                      # 0xed3498be
	.word	0                               # 0x0
	.word	1701297336                      # 0x6567bcb8
	.word	2345142698                      # 0x8bc809aa
	.word	4004492562                      # 0xeeafb512
	.word	1469538959                      # 0x5797628f
	.word	854646327                       # 0x32f0de37
	.word	3697240869                      # 0xdc5f6b25
	.word	3107510173                      # 0xb938d79d
	.word	4012422341                      # 0xef28b4c5
	.word	2320435325                      # 0x8a4f087d
	.word	1692450159                      # 0x64e0bd6f
	.word	25625047                        # 0x18701d7
	.word	3099579978                      # 0xb8bfd64a
	.word	3721947890                      # 0xddd86af2
	.word	863494112                       # 0x3377dfe0
	.word	1443914584                      # 0x56106358
	.word	2673285456                      # 0x9f571950
	.word	4197492200                      # 0xfa30a5e8
	.word	345968890                       # 0x149f10fa
	.word	1912122434                      # 0x71f8ac42
	.word	3368057823                      # 0xc8c07bdf
	.word	2913453927                      # 0xada7c767
	.word	1124627061                      # 0x43087275
	.word	644861645                       # 0x266fcecd
	.word	1887415701                      # 0x707fad95
	.word	353898797                       # 0x1518112d
	.word	4223116351                      # 0xfbb7a43f
	.word	2664437895                      # 0x9ed01887
	.word	669568794                       # 0x27e8cf1a
	.word	1116697506                      # 0x428f73a2
	.word	2887829168                      # 0xac20c6b0
	.word	3376904712                      # 0xc9477a08
	.word	1051669152                      # 0x3eaf32a0
	.word	1539870232                      # 0x5bc88e18
	.word	3043441418                      # 0xb5673b0a
	.word	3489695666                      # 0xd00087b2
	.word	1765298223                      # 0x6938502f
	.word	207613079                       # 0xc5fec97
	.word	3807402373                      # 0xe2f05985
	.word	2274878781                      # 0x8797e53d
	.word	3515319909                      # 0xd1878665
	.word	3034594013                      # 0xb4e03add
	.word	1515163599                      # 0x5a4f8fcf
	.word	1059599223                      # 0x3f283377
	.word	2249254122                      # 0x8610e4ea
	.word	3816249426                      # 0xe3775852
	.word	232320320                       # 0xdd8ed40
	.word	1757368824                      # 0x68bf51f8
	.word	2717395952                      # 0xa1f82bf0
	.word	3298793288                      # 0xc49f9748
	.word	707797594                       # 0x2a30225a
	.word	1331142370                      # 0x4f579ee2
	.word	4134488447                      # 0xf66f497f
	.word	2466837959                      # 0x9308f5c7
	.word	2108113109                      # 0x7da740d5
	.word	415300717                       # 0x18c0fc6d
	.word	1322295093                      # 0x4ed09f35
	.word	733422477                       # 0x2bb7238d
	.word	3306722975                      # 0xc518969f
	.word	2692688423                      # 0xa07f2a27
	.word	424148410                       # 0x1947fdba
	.word	2082488578                      # 0x7c204102
	.word	2458907664                      # 0x928ff410
	.word	4159195304                      # 0xf7e848a8
	.word	1029182619                      # 0x3d58149b
	.word	1480566819                      # 0x583fa823
	.word	3062897969                      # 0xb6901d31
	.word	3556221321                      # 0xd3f7a189
	.word	1791981076                      # 0x6acf7614
	.word	262720172                       # 0xfa8caac
	.word	3775365054                      # 0xe1077fbe
	.word	2220933894                      # 0x8460c306
	.word	3530596446                      # 0xd270a05e
	.word	3071745254                      # 0xb7171ce6
	.word	1505274356                      # 0x59b8a9f4
	.word	1021252940                      # 0x3cdf154c
	.word	2246558417                      # 0x85e7c2d1
	.word	3766517353                      # 0xe0807e69
	.word	238013307                       # 0xe2fcb7b
	.word	1799911363                      # 0x6b4877c3
	.word	2718895563                      # 0xa20f0dcb
	.word	3345527155                      # 0xc768b173
	.word	700908641                       # 0x29c70461
	.word	1285601497                      # 0x4ca0b8d9
	.word	4120407876                      # 0xf5986f44
	.word	2432685052                      # 0x90ffd3fc
	.word	2119198446                      # 0x7e5066ee
	.word	456645206                       # 0x1b37da56
	.word	1294448910                      # 0x4d27b90e
	.word	675284406                       # 0x284005b6
	.word	3337597092                      # 0xc6efb0a4
	.word	2743602204                      # 0xa3880c1c
	.word	447798145                       # 0x1ab0db81
	.word	2144823097                      # 0x7fd76739
	.word	2440614443                      # 0x9178d22b
	.word	4095700627                      # 0xf41f6e93
	.word	66528827                        # 0x3f7263b
	.word	1720752771                      # 0x66909a83
	.word	2285842321                      # 0x883f2f91
	.word	3982005033                      # 0xed589329
	.word	1415595188                      # 0x546044b4
	.word	822605836                       # 0x3107f80c
	.word	3752348958                      # 0xdfa84d1e
	.word	3134189990                      # 0xbacff1a6
	.word	3974075134                      # 0xecdf92fe
	.word	2310549062                      # 0x89b82e46
	.word	1729600340                      # 0x67179b54
	.word	40904684                        # 0x27027ec
	.word	3142119537                      # 0xbb48f071
	.word	3727641801                      # 0xde2f4cc9
	.word	813758939                       # 0x3080f9db
	.word	1441219939                      # 0x55e74563
	.word	2627747691                      # 0x9ca03f6b
	.word	4190602195                      # 0xf9c783d3
	.word	392705729                       # 0x176836c1
	.word	1913621113                      # 0x720f8a79
	.word	3409403364                      # 0xcb375de4
	.word	2924536156                      # 0xae50e15c
	.word	1090475086                      # 0x40ff544e
	.word	630778102                       # 0x2598e8f6
	.word	1938328494                      # 0x73888bae
	.word	384775958                       # 0x16ef3716
	.word	4164977156                      # 0xf8408204
	.word	2636594876                      # 0x9d273ebc
	.word	606071073                       # 0x241fe921
	.word	1098405273                      # 0x41785599
	.word	2950160523                      # 0xafd7e08b
	.word	3400555571                      # 0xcab05c33
	.word	1001806317                      # 0x3bb659ed
	.word	1590814037                      # 0x5ed1e555
	.word	2961068103                      # 0xb07e5047
	.word	3575246079                      # 0xd519ecff
	.word	1814117218                      # 0x6c213b62
	.word	155617242                       # 0x94687da
	.word	3890819784                      # 0xe7e932c8
	.word	2190380656                      # 0x828e8e70
	.word	3567185192                      # 0xd49eed28
	.word	2985906576                      # 0xb1f95190
	.word	1599530114                      # 0x5f56e482
	.word	976312378                       # 0x3a31583a
	.word	2198441895                      # 0x83098fa7
	.word	3865981727                      # 0xe66e331f
	.word	146900493                       # 0x8c1860d
	.word	1839610549                      # 0x6da63ab5
	.word	2766225597                      # 0xa4e140bd
	.word	3246849029                      # 0xc186fc05
	.word	791234839                       # 0x2f294917
	.word	1246688687                      # 0x4a4ef5af
	.word	4084605490                      # 0xf3762232
	.word	2517737098                      # 0x96119e8a
	.word	2025728920                      # 0x78be2b98
	.word	500799264                       # 0x1dd99720
	.word	1271526520                      # 0x4bc9f478
	.word	783173824                       # 0x2eae48c0
	.word	3221355986                      # 0xc001fdd2
	.word	2774942058                      # 0xa566416a
	.word	475961079                       # 0x1c5e96f7
	.word	2033789519                      # 0x79392a4f
	.word	2543230813                      # 0x97969f5d
	.word	4075889637                      # 0xf2f123e5
	.word	85551949                        # 0x5196b4d
	.word	1618925557                      # 0x607ed7f5
	.word	2396087015                      # 0x8ed162e7
	.word	3954630239                      # 0xebb6de5f
	.word	1385040322                      # 0x528e09c2
	.word	938063226                       # 0x37e9b57a
	.word	3645243496                      # 0xd9460068
	.word	3156327632                      # 0xbc21bcd0
	.word	3929137032                      # 0xea31df88
	.word	2404803376                      # 0x8f566330
	.word	1643763234                      # 0x61f9d622
	.word	77490842                        # 0x49e6a9a
	.word	3181821191                      # 0xbda6bd07
	.word	3636527551                      # 0xd8c101bf
	.word	913224877                       # 0x366eb4ad
	.word	1393100821                      # 0x53090815
	.word	2588832285                      # 0x9a4e721d
	.word	4280929957                      # 0xff29cea5
	.word	294026167                       # 0x11867bb7
	.word	1960953615                      # 0x74e1c70f
	.word	3453554834                      # 0xcdd91092
	.word	2831068202                      # 0xa8beac2a
	.word	1175525688                      # 0x46111938
	.word	594978176                       # 0x2376a580
	.word	1969669848                      # 0x7566c6d8
	.word	268532320                       # 0x10017a60
	.word	4272869234                      # 0xfeaecf72
	.word	2613670858                      # 0x9bc973ca
	.word	586261591                       # 0x22f1a457
	.word	1201019119                      # 0x479618ef
	.word	2839129597                      # 0xa939adfd
	.word	3428716869                      # 0xcc5e1145
	.word	116280694                       # 0x6ee4d76
	.word	1669984718                      # 0x6389f1ce
	.word	2368095452                      # 0x8d2644dc
	.word	3896637540                      # 0xe841f864
	.word	1366896633                      # 0x51792ff9
	.word	874419009                       # 0x341e9341
	.word	3669042771                      # 0xdab12653
	.word	3218512619                      # 0xbfd69aeb
	.word	3922131379                      # 0xe9c6f9b3
	.word	2359379211                      # 0x8ca1450b
	.word	1645146137                      # 0x620ef019
	.word	124341409                       # 0x7694ca1
	.word	3193019196                      # 0xbe519b3c
	.word	3677759364                      # 0xdb362784
	.word	899256982                       # 0x35999296
	.word	1358835246                      # 0x50fe2e2e
	.word	2579059750                      # 0x99b95426
	.word	4242466974                      # 0xfcdee89e
	.word	309419404                       # 0x12715d8c
	.word	1997988148                      # 0x7716e134
	.word	3459135145                      # 0xce2e36a9
	.word	2873723409                      # 0xab498a11
	.word	1172717315                      # 0x45e63f03
	.word	545358779                       # 0x208183bb
	.word	1989271779                      # 0x7691e0e3
	.word	334912603                       # 0x13f65c5b
	.word	4250528073                      # 0xfd59e949
	.word	2554222065                      # 0x983e55f1
	.word	554074732                       # 0x2106826c
	.word	1147223764                      # 0x44613ed4
	.word	2865662918                      # 0xaace8bc6
	.word	3483973502                      # 0xcfa9377e
	.word	943816662                       # 0x38417fd6
	.word	1562821486                      # 0x5d26c36e
	.word	3012130428                      # 0xb389767c
	.word	3605973700                      # 0xd6eecac4
	.word	1876303193                      # 0x6fd61d59
	.word	179413473                       # 0xab1a1e1
	.word	3827176691                      # 0xe41e14f3
	.word	2172233803                      # 0x8179a84b
	.word	3614034707                      # 0xd769cb13
	.word	2987292587                      # 0xb20e77ab
	.word	1554105017                      # 0x5ca1c2b9
	.word	969309697                       # 0x39c67e01
	.word	2164173212                      # 0x80fea99c
	.word	3852014884                      # 0xe5991524
	.word	188129334                       # 0xb36a036
	.word	1850809486                      # 0x6e511c8e
	.word	2803263110                      # 0xa7166686
	.word	3262241342                      # 0xc271da3e
	.word	752774956                       # 0x2cde6f2c
	.word	1236915092                      # 0x49b9d394
	.word	4034987017                      # 0xf0810409
	.word	2514925745                      # 0x95e6b8b1
	.word	2068385187                      # 0x7b490da3
	.word	506376475                       # 0x1e2eb11b
	.word	1212076611                      # 0x483ed243
	.word	760835835                       # 0x2d596efb
	.word	3287735273                      # 0xc3f6dbe9
	.word	2794547025                      # 0xa6916751
	.word	531214540                       # 0x1fa9b0cc
	.word	2060323956                      # 0x7ace0c74
	.word	2489432422                      # 0x9461b966
	.word	4043703774                      # 0xf10605de
	.size	crc_table, 8192

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym crc_table
