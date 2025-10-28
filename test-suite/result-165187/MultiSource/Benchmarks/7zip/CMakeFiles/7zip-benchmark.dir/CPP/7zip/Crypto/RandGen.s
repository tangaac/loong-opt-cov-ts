	.file	"RandGen.cpp"
	.text
	.globl	_ZN16CRandomGenerator4InitEv    # -- Begin function _ZN16CRandomGenerator4InitEv
	.p2align	5
	.type	_ZN16CRandomGenerator4InitEv,@function
_ZN16CRandomGenerator4InitEv:           # @_ZN16CRandomGenerator4InitEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -208
	.cfi_def_cfa_offset 208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha112CContextBase4InitEv)
	jirl	$ra, $ra, 0
	st.w	$zero, $sp, 88
	pcaddu18i	$ra, %call36(getpid)
	jirl	$ra, $ra, 0
	st.w	$a0, $sp, 52
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 52
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha18CContext6UpdateEPKhm)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(getppid)
	jirl	$ra, $ra, 0
	st.w	$a0, $sp, 52
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 52
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha18CContext6UpdateEPKhm)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	addi.d	$s0, $sp, 40
	ori	$s2, $zero, 1000
	.p2align	4, , 16
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	addi.d	$a0, $sp, 32
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 32
	ori	$a2, $zero, 8
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha18CContext6UpdateEPKhm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 56
	ori	$a2, $zero, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha18CContext6UpdateEPKhm)
	jirl	$ra, $ra, 0
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 24
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 24
	ori	$a2, $zero, 8
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha18CContext6UpdateEPKhm)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(GetTickCount)
	jirl	$ra, $ra, 0
	st.w	$a0, $sp, 20
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 20
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha18CContext6UpdateEPKhm)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 100
	.p2align	4, , 16
.LBB0_4:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 56
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha18CContext5FinalEPh)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha112CContextBase4InitEv)
	jirl	$ra, $ra, 0
	st.w	$zero, $sp, 88
	addi.d	$a0, $sp, 56
	ori	$a2, $zero, 20
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha18CContext6UpdateEPKhm)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, -1
	bnez	$s3, .LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	addi.w	$s1, $s1, 1
	bne	$s1, $s2, .LBB0_1
# %bb.6:
	addi.d	$a0, $sp, 56
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha18CContext5FinalEPh)
	jirl	$ra, $ra, 0
	st.b	$zero, $fp, 20
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end0:
	.size	_ZN16CRandomGenerator4InitEv, .Lfunc_end0-_ZN16CRandomGenerator4InitEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8NWindows16NSynchronization16CCriticalSectionD2Ev,"axG",@progbits,_ZN8NWindows16NSynchronization16CCriticalSectionD2Ev,comdat
	.weak	_ZN8NWindows16NSynchronization16CCriticalSectionD2Ev # -- Begin function _ZN8NWindows16NSynchronization16CCriticalSectionD2Ev
	.p2align	5
	.type	_ZN8NWindows16NSynchronization16CCriticalSectionD2Ev,@function
_ZN8NWindows16NSynchronization16CCriticalSectionD2Ev: # @_ZN8NWindows16NSynchronization16CCriticalSectionD2Ev
# %bb.0:
	pcaddu18i	$t8, %call36(pthread_mutex_destroy)
	jr	$t8
.Lfunc_end1:
	.size	_ZN8NWindows16NSynchronization16CCriticalSectionD2Ev, .Lfunc_end1-_ZN8NWindows16NSynchronization16CCriticalSectionD2Ev
                                        # -- End function
	.text
	.globl	_ZN16CRandomGenerator8GenerateEPhj # -- Begin function _ZN16CRandomGenerator8GenerateEPhj
	.p2align	5
	.type	_ZN16CRandomGenerator8GenerateEPhj,@function
_ZN16CRandomGenerator8GenerateEPhj:     # @_ZN16CRandomGenerator8GenerateEPhj
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -192
	.cfi_def_cfa_offset 192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a2
	move	$s1, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(_ZL17g_CriticalSection)
	addi.d	$a0, $a0, %pc_lo12(_ZL17g_CriticalSection)
	pcaddu18i	$ra, %call36(pthread_mutex_lock)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 20
	beqz	$a0, .LBB2_2
# %bb.1:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN16CRandomGenerator4InitEv)
	jirl	$ra, $ra, 0
.LBB2_2:
	beqz	$fp, .LBB2_7
# %bb.3:                                # %.lr.ph
	lu12i.w	$a0, -39126
	ori	$s2, $a0, 3025
	lu32i.d	$s2, 0
	ori	$s3, $zero, 19
	.p2align	4, , 16
.LBB2_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_5 Depth 2
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha112CContextBase4InitEv)
	jirl	$ra, $ra, 0
	st.w	$zero, $sp, 64
	addi.d	$a0, $sp, 32
	ori	$a2, $zero, 20
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha18CContext6UpdateEPKhm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 32
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha18CContext5FinalEPh)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha112CContextBase4InitEv)
	jirl	$ra, $ra, 0
	st.w	$zero, $sp, 64
	st.w	$s2, $sp, 28
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 28
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha18CContext6UpdateEPKhm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 32
	ori	$a2, $zero, 20
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha18CContext6UpdateEPKhm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 8
	addi.d	$s4, $sp, 8
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha18CContext5FinalEPh)
	jirl	$ra, $ra, 0
	addi.w	$a0, $fp, -1
	sltui	$a1, $a0, 19
	masknez	$a2, $s3, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	addi.d	$a0, $a0, 1
	.p2align	4, , 16
.LBB2_5:                                #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a1, $s4, 0
	st.b	$a1, $s1, 0
	addi.d	$s1, $s1, 1
	addi.w	$fp, $fp, -1
	addi.d	$a0, $a0, -1
	addi.d	$s4, $s4, 1
	bnez	$a0, .LBB2_5
# %bb.6:                                #   in Loop: Header=BB2_4 Depth=1
	bnez	$fp, .LBB2_4
.LBB2_7:                                # %._crit_edge
	pcalau12i	$a0, %pc_hi20(_ZL17g_CriticalSection)
	addi.d	$a0, $a0, %pc_lo12(_ZL17g_CriticalSection)
	pcaddu18i	$ra, %call36(pthread_mutex_unlock)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end2:
	.size	_ZN16CRandomGenerator8GenerateEPhj, .Lfunc_end2-_ZN16CRandomGenerator8GenerateEPhj
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_RandGen.cpp
	.type	_GLOBAL__sub_I_RandGen.cpp,@function
_GLOBAL__sub_I_RandGen.cpp:             # @_GLOBAL__sub_I_RandGen.cpp
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	pcalau12i	$a0, %pc_hi20(_ZL17g_CriticalSection)
	addi.d	$fp, $a0, %pc_lo12(_ZL17g_CriticalSection)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(CriticalSection_Init)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZN8NWindows16NSynchronization16CCriticalSectionD2Ev)
	addi.d	$a0, $a0, %pc_lo12(_ZN8NWindows16NSynchronization16CCriticalSectionD2Ev)
	pcalau12i	$a1, %pc_hi20(__dso_handle)
	addi.d	$a2, $a1, %pc_lo12(__dso_handle)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(__cxa_atexit)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(g_RandomGenerator+20)
	ori	$a1, $zero, 1
	st.b	$a1, $a0, %pc_lo12(g_RandomGenerator+20)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	_GLOBAL__sub_I_RandGen.cpp, .Lfunc_end3-_GLOBAL__sub_I_RandGen.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZL17g_CriticalSection,@object  # @_ZL17g_CriticalSection
	.local	_ZL17g_CriticalSection
	.comm	_ZL17g_CriticalSection,40,8
	.hidden	__dso_handle
	.type	g_RandomGenerator,@object       # @g_RandomGenerator
	.bss
	.globl	g_RandomGenerator
g_RandomGenerator:
	.space	21
	.size	g_RandomGenerator, 21

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_RandGen.cpp
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _GLOBAL__sub_I_RandGen.cpp
	.addrsig_sym _ZL17g_CriticalSection
	.addrsig_sym __dso_handle
