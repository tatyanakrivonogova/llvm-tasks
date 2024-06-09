	.text
	.file	"check.cpp"
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	_ZStL8__ioinit(%rip), %rdi
	callq	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	leaq	_ZStL8__ioinit(%rip), %rsi
	leaq	__dso_handle(%rip), %rdx
	callq	__cxa_atexit@PLT
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z12brackets_muliii             # -- Begin function _Z12brackets_muliii
	.p2align	4, 0x90
	.type	_Z12brackets_muliii,@function
_Z12brackets_muliii:                    # @_Z12brackets_muliii
	.cfi_startproc
# %bb.0:
	movl	%edi, -4(%rsp)
	movl	%esi, -8(%rsp)
	movl	%edx, -12(%rsp)
	movl	-4(%rsp), %eax
	imull	-4(%rsp), %eax
	movl	-4(%rsp), %ecx
	imull	-8(%rsp), %ecx
	addl	%ecx, %eax
	movl	-4(%rsp), %ecx
	imull	-12(%rsp), %ecx
	addl	%ecx, %eax
	movl	-8(%rsp), %ecx
	imull	-12(%rsp), %ecx
	addl	%ecx, %eax
	retq
.Lfunc_end1:
	.size	_Z12brackets_muliii, .Lfunc_end1-_Z12brackets_muliii
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	subq	$232, %rsp
	.cfi_def_cfa_offset 240
	movl	$0, 228(%rsp)
	movl	%edi, 224(%rsp)
	movq	%rsi, 216(%rsp)
	movq	216(%rsp), %rax
	movq	8(%rax), %rdi
	callq	atoll@PLT
	movq	%rax, 208(%rsp)
	movl	$42416, %edi                    # imm = 0xA5B0
	callq	srand@PLT
	movq	$0, 200(%rsp)
	leaq	176(%rsp), %rdi
	movq	%rdi, 48(%rsp)                  # 8-byte Spill
	callq	_ZNSt6vectorIiSaIiEEC2Ev
	leaq	152(%rsp), %rdi
	callq	_ZNSt6vectorIiSaIiEEC2Ev
	leaq	128(%rsp), %rdi
	callq	_ZNSt6vectorIiSaIiEEC2Ev
	movq	48(%rsp), %rdi                  # 8-byte Reload
.Ltmp0:
	movl	$1000, %esi                     # imm = 0x3E8
	callq	_ZNSt6vectorIiSaIiEE7reserveEm
.Ltmp1:
	jmp	.LBB2_1
.LBB2_1:
.Ltmp2:
	leaq	152(%rsp), %rdi
	movl	$1000, %esi                     # imm = 0x3E8
	callq	_ZNSt6vectorIiSaIiEE7reserveEm
.Ltmp3:
	jmp	.LBB2_2
.LBB2_2:
.Ltmp4:
	leaq	128(%rsp), %rdi
	movl	$1000, %esi                     # imm = 0x3E8
	callq	_ZNSt6vectorIiSaIiEE7reserveEm
.Ltmp5:
	jmp	.LBB2_3
.LBB2_3:
	movl	$0, 112(%rsp)
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	cmpl	$10000, 112(%rsp)               # imm = 0x2710
	jge	.LBB2_11
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	callq	rand@PLT
	movslq	%eax, %rcx
	imulq	$274877907, %rcx, %rcx          # imm = 0x10624DD3
	movq	%rcx, %rdx
	shrq	$63, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	sarq	$38, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	addl	%edx, %ecx
	imull	$1000, %ecx, %ecx               # imm = 0x3E8
	subl	%ecx, %eax
	movl	%eax, 108(%rsp)
.Ltmp22:
	leaq	176(%rsp), %rdi
	leaq	108(%rsp), %rsi
	callq	_ZNSt6vectorIiSaIiEE9push_backEOi
.Ltmp23:
	jmp	.LBB2_6
.LBB2_6:                                #   in Loop: Header=BB2_4 Depth=1
	callq	rand@PLT
	movslq	%eax, %rcx
	imulq	$274877907, %rcx, %rcx          # imm = 0x10624DD3
	movq	%rcx, %rdx
	shrq	$63, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	sarq	$38, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	addl	%edx, %ecx
	imull	$1000, %ecx, %ecx               # imm = 0x3E8
	subl	%ecx, %eax
	movl	%eax, 104(%rsp)
.Ltmp24:
	leaq	152(%rsp), %rdi
	leaq	104(%rsp), %rsi
	callq	_ZNSt6vectorIiSaIiEE9push_backEOi
.Ltmp25:
	jmp	.LBB2_7
.LBB2_7:                                #   in Loop: Header=BB2_4 Depth=1
	callq	rand@PLT
	movslq	%eax, %rcx
	imulq	$274877907, %rcx, %rcx          # imm = 0x10624DD3
	movq	%rcx, %rdx
	shrq	$63, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	sarq	$38, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	addl	%edx, %ecx
	imull	$1000, %ecx, %ecx               # imm = 0x3E8
	subl	%ecx, %eax
	movl	%eax, 100(%rsp)
.Ltmp26:
	leaq	128(%rsp), %rdi
	leaq	100(%rsp), %rsi
	callq	_ZNSt6vectorIiSaIiEE9push_backEOi
.Ltmp27:
	jmp	.LBB2_8
.LBB2_8:                                #   in Loop: Header=BB2_4 Depth=1
	jmp	.LBB2_9
.LBB2_9:                                #   in Loop: Header=BB2_4 Depth=1
	movl	112(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 112(%rsp)
	jmp	.LBB2_4
.LBB2_10:
.Ltmp28:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 120(%rsp)
	movl	%eax, 116(%rsp)
	leaq	128(%rsp), %rdi
	callq	_ZNSt6vectorIiSaIiEED2Ev
	leaq	152(%rsp), %rdi
	callq	_ZNSt6vectorIiSaIiEED2Ev
	leaq	176(%rsp), %rdi
	callq	_ZNSt6vectorIiSaIiEED2Ev
	jmp	.LBB2_24
.LBB2_11:
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, 88(%rsp)
	movq	$0, 80(%rsp)
.LBB2_12:                               # =>This Inner Loop Header: Depth=1
	movq	80(%rsp), %rax
	cmpq	208(%rsp), %rax
	jge	.LBB2_15
# %bb.13:                               #   in Loop: Header=BB2_12 Depth=1
	movq	80(%rsp), %rax
	movl	$10000, %ecx                    # imm = 0x2710
	cqto
	idivq	%rcx
	movq	%rdx, %rsi
	leaq	176(%rsp), %rdi
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	(%rax), %eax
	movl	%eax, 40(%rsp)                  # 4-byte Spill
	movq	80(%rsp), %rax
	movl	$10000, %ecx                    # imm = 0x2710
	cqto
	idivq	%rcx
	movq	%rdx, %rsi
	leaq	152(%rsp), %rdi
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	(%rax), %eax
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	movq	80(%rsp), %rax
	movl	$10000, %ecx                    # imm = 0x2710
	cqto
	idivq	%rcx
	movq	%rdx, %rsi
	leaq	128(%rsp), %rdi
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	40(%rsp), %edi                  # 4-byte Reload
	movl	44(%rsp), %esi                  # 4-byte Reload
	movl	(%rax), %edx
	callq	_Z12brackets_muliii
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movslq	%edx, %rax
	addq	200(%rsp), %rax
	movq	%rax, 200(%rsp)
# %bb.14:                               #   in Loop: Header=BB2_12 Depth=1
	movq	80(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 80(%rsp)
	jmp	.LBB2_12
.LBB2_15:
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, 72(%rsp)
	movq	200(%rsp), %rsi
.Ltmp6:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSolsEl@PLT
.Ltmp7:
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB2_16
.LBB2_16:
.Ltmp8:
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	callq	_ZNSolsEPFRSoS_E@PLT
.Ltmp9:
	jmp	.LBB2_17
.LBB2_17:
.Ltmp10:
	leaq	72(%rsp), %rdi
	leaq	88(%rsp), %rsi
	callq	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
.Ltmp11:
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	jmp	.LBB2_18
.LBB2_18:
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 56(%rsp)
.Ltmp12:
	leaq	64(%rsp), %rdi
	leaq	56(%rsp), %rsi
	callq	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
.Ltmp13:
	jmp	.LBB2_19
.LBB2_19:
.Ltmp14:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.Ltmp15:
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB2_20
.LBB2_20:
.Ltmp16:
	leaq	64(%rsp), %rdi
	callq	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
.Ltmp17:
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	jmp	.LBB2_21
.LBB2_21:
.Ltmp18:
	movsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	16(%rsp), %rdi                  # 8-byte Reload
	callq	_ZNSolsEd@PLT
.Ltmp19:
	movq	%rax, (%rsp)                    # 8-byte Spill
	jmp	.LBB2_22
.LBB2_22:
.Ltmp20:
	movq	(%rsp), %rdi                    # 8-byte Reload
	leaq	.L.str.1(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.Ltmp21:
	jmp	.LBB2_23
.LBB2_23:
	movl	$0, 228(%rsp)
	leaq	128(%rsp), %rdi
	callq	_ZNSt6vectorIiSaIiEED2Ev
	leaq	152(%rsp), %rdi
	callq	_ZNSt6vectorIiSaIiEED2Ev
	leaq	176(%rsp), %rdi
	callq	_ZNSt6vectorIiSaIiEED2Ev
	movl	228(%rsp), %eax
	addq	$232, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB2_24:
	.cfi_def_cfa_offset 240
	movq	120(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
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
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp21-.Ltmp0                 #   Call between .Ltmp0 and .Ltmp21
	.uleb128 .Ltmp28-.Lfunc_begin0          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 2 <<
	.uleb128 .Lfunc_end2-.Ltmp21            #   Call between .Ltmp21 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEEC2Ev,"axG",@progbits,_ZNSt6vectorIiSaIiEEC2Ev,comdat
	.weak	_ZNSt6vectorIiSaIiEEC2Ev        # -- Begin function _ZNSt6vectorIiSaIiEEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorIiSaIiEEC2Ev,@function
_ZNSt6vectorIiSaIiEEC2Ev:               # @_ZNSt6vectorIiSaIiEEC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	_ZNSt12_Vector_baseIiSaIiEEC2Ev
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	_ZNSt6vectorIiSaIiEEC2Ev, .Lfunc_end3-_ZNSt6vectorIiSaIiEEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEE7reserveEm,"axG",@progbits,_ZNSt6vectorIiSaIiEE7reserveEm,comdat
	.weak	_ZNSt6vectorIiSaIiEE7reserveEm  # -- Begin function _ZNSt6vectorIiSaIiEE7reserveEm
	.p2align	4, 0x90
	.type	_ZNSt6vectorIiSaIiEE7reserveEm,@function
_ZNSt6vectorIiSaIiEE7reserveEm:         # @_ZNSt6vectorIiSaIiEE7reserveEm
	.cfi_startproc
# %bb.0:
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, 64(%rsp)
	movq	%rsi, 56(%rsp)
	movq	64(%rsp), %rdi
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt6vectorIiSaIiEE8max_sizeEv
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB4_2
# %bb.1:
	leaq	.L.str.2(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB4_2:
	movq	24(%rsp), %rdi                  # 8-byte Reload
	callq	_ZNKSt6vectorIiSaIiEE8capacityEv
	cmpq	56(%rsp), %rax
	jae	.LBB4_4
# %bb.3:
	movq	24(%rsp), %rdi                  # 8-byte Reload
	callq	_ZNKSt6vectorIiSaIiEE4sizeEv
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%rax, 48(%rsp)
	movq	56(%rsp), %rsi
	callq	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%rax, 40(%rsp)
	movq	(%rdi), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	8(%rdi), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	40(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	callq	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %rcx
	callq	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	(%rdi), %rsi
	movq	16(%rdi), %rdx
	movq	(%rdi), %rax
	subq	%rax, %rdx
	sarq	$2, %rdx
	callq	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	40(%rsp), %rcx
	movq	48(%rsp), %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 8(%rax)
	movq	(%rax), %rcx
	movq	56(%rsp), %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 16(%rax)
.LBB4_4:
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	_ZNSt6vectorIiSaIiEE7reserveEm, .Lfunc_end4-_ZNSt6vectorIiSaIiEE7reserveEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEE9push_backEOi,"axG",@progbits,_ZNSt6vectorIiSaIiEE9push_backEOi,comdat
	.weak	_ZNSt6vectorIiSaIiEE9push_backEOi # -- Begin function _ZNSt6vectorIiSaIiEE9push_backEOi
	.p2align	4, 0x90
	.type	_ZNSt6vectorIiSaIiEE9push_backEOi,@function
_ZNSt6vectorIiSaIiEE9push_backEOi:      # @_ZNSt6vectorIiSaIiEE9push_backEOi
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	16(%rsp), %rdi
	movq	8(%rsp), %rsi
	callq	_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	_ZNSt6vectorIiSaIiEE9push_backEOi, .Lfunc_end5-_ZNSt6vectorIiSaIiEE9push_backEOi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEEixEm,"axG",@progbits,_ZNSt6vectorIiSaIiEEixEm,comdat
	.weak	_ZNSt6vectorIiSaIiEEixEm        # -- Begin function _ZNSt6vectorIiSaIiEEixEm
	.p2align	4, 0x90
	.type	_ZNSt6vectorIiSaIiEEixEm,@function
_ZNSt6vectorIiSaIiEEixEm:               # @_ZNSt6vectorIiSaIiEEixEm
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movq	%rsi, -16(%rsp)
	movq	-8(%rsp), %rax
	movq	(%rax), %rax
	movq	-16(%rsp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	retq
.Lfunc_end6:
	.size	_ZNSt6vectorIiSaIiEEixEm, .Lfunc_end6-_ZNSt6vectorIiSaIiEEixEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,"axG",@progbits,_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,comdat
	.weak	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE # -- Begin function _ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.p2align	4, 0x90
	.type	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,@function
_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE: # @_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	24(%rsp), %rdi
	callq	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	movq	%rax, 8(%rsp)
	movq	16(%rsp), %rdi
	callq	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	movq	%rax, (%rsp)
	leaq	8(%rsp), %rdi
	movq	%rsp, %rsi
	callq	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	movq	%rax, 32(%rsp)
	movq	32(%rsp), %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, .Lfunc_end7-_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,comdat
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE # -- Begin function _ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.p2align	4, 0x90
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,@function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE: # @_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	24(%rsp), %rdi
	callq	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	movsd	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rdi
	callq	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	movq	8(%rsp), %rax                   # 8-byte Reload
	movsd	%xmm0, (%rax)
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end8:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE, .Lfunc_end8-_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv,comdat
	.weak	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv # -- Begin function _ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	.p2align	4, 0x90
	.type	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv,@function
_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv: # @_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movq	-8(%rsp), %rax
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	retq
.Lfunc_end9:
	.size	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv, .Lfunc_end9-_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEED2Ev,"axG",@progbits,_ZNSt6vectorIiSaIiEED2Ev,comdat
	.weak	_ZNSt6vectorIiSaIiEED2Ev        # -- Begin function _ZNSt6vectorIiSaIiEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorIiSaIiEED2Ev,@function
_ZNSt6vectorIiSaIiEED2Ev:               # @_ZNSt6vectorIiSaIiEED2Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	32(%rsp), %rdi
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	8(%rdi), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	callq	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp29:
	callq	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
.Ltmp30:
	jmp	.LBB10_1
.LBB10_1:
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	_ZNSt12_Vector_baseIiSaIiEED2Ev
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB10_2:
	.cfi_def_cfa_offset 48
.Ltmp31:
	movq	%rax, %rdi
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
.Lfunc_end10:
	.size	_ZNSt6vectorIiSaIiEED2Ev, .Lfunc_end10-_ZNSt6vectorIiSaIiEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt6vectorIiSaIiEED2Ev,"aG",@progbits,_ZNSt6vectorIiSaIiEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table10:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp29-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp30-.Ltmp29                #   Call between .Ltmp29 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin1          #     jumps to .Ltmp31
	.byte	1                               #   On action: 1
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEEC2Ev,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEEC2Ev # -- Begin function _ZNSt12_Vector_baseIiSaIiEEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEEC2Ev,@function
_ZNSt12_Vector_baseIiSaIiEEC2Ev:        # @_ZNSt12_Vector_baseIiSaIiEEC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end11:
	.size	_ZNSt12_Vector_baseIiSaIiEEC2Ev, .Lfunc_end11-_ZNSt12_Vector_baseIiSaIiEEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev # -- Begin function _ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev,@function
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev: # @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rdi
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	callq	_ZNSaIiEC2Ev
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end12:
	.size	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, .Lfunc_end12-_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaIiEC2Ev,"axG",@progbits,_ZNSaIiEC2Ev,comdat
	.weak	_ZNSaIiEC2Ev                    # -- Begin function _ZNSaIiEC2Ev
	.p2align	4, 0x90
	.type	_ZNSaIiEC2Ev,@function
_ZNSaIiEC2Ev:                           # @_ZNSaIiEC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	_ZN9__gnu_cxx13new_allocatorIiEC2Ev
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end13:
	.size	_ZNSaIiEC2Ev, .Lfunc_end13-_ZNSaIiEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev # -- Begin function _ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev,@function
_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev: # @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movq	-8(%rsp), %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	retq
.Lfunc_end14:
	.size	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, .Lfunc_end14-_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIiEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIiEC2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorIiEC2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIiEC2Ev,@function
_ZN9__gnu_cxx13new_allocatorIiEC2Ev:    # @_ZN9__gnu_cxx13new_allocatorIiEC2Ev
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	retq
.Lfunc_end15:
	.size	_ZN9__gnu_cxx13new_allocatorIiEC2Ev, .Lfunc_end15-_ZN9__gnu_cxx13new_allocatorIiEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,"axG",@progbits,_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,comdat
	.weak	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_ # -- Begin function _ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.p2align	4, 0x90
	.type	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,@function
_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_: # @_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.cfi_startproc
# %bb.0:
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 40(%rsp)
	movq	%rsi, 32(%rsp)
	movq	40(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 16(%rsp)
	leaq	16(%rsp), %rdi
	callq	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	32(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 8(%rsp)
	leaq	8(%rsp), %rdi
	callq	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	movq	%rax, %rcx
	movq	(%rsp), %rax                    # 8-byte Reload
	subq	%rcx, %rax
	movq	%rax, 24(%rsp)
	leaq	48(%rsp), %rdi
	leaq	24(%rsp), %rsi
	callq	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_
	movq	48(%rsp), %rax
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end16:
	.size	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, .Lfunc_end16-_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,"axG",@progbits,_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,comdat
	.weak	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv # -- Begin function _ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.p2align	4, 0x90
	.type	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,@function
_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv: # @_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.cfi_startproc
# %bb.0:
	movq	%rdi, -16(%rsp)
	movq	-16(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rsp)
	movq	-8(%rsp), %rax
	retq
.Lfunc_end17:
	.size	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, .Lfunc_end17-_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,comdat
	.weak	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv # -- Begin function _ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.p2align	4, 0x90
	.type	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,@function
_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv: # @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movq	-8(%rsp), %rax
	movq	(%rax), %rax
	retq
.Lfunc_end18:
	.size	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv, .Lfunc_end18-_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_,comdat
	.weak	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_ # -- Begin function _ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_
	.p2align	4, 0x90
	.type	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_,@function
_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_: # @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movq	%rsi, -16(%rsp)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end19:
	.size	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_, .Lfunc_end19-_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE,"axG",@progbits,_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE,comdat
	.weak	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE # -- Begin function _ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	.p2align	4, 0x90
	.type	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE,@function
_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE: # @_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
	movq	8(%rsp), %rdi
	callq	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE
	movsd	%xmm0, 16(%rsp)
	movsd	16(%rsp), %xmm0                 # xmm0 = mem[0],zero
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end20:
	.size	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE, .Lfunc_end20-_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE
.LCPI21_0:
	.quad	0x41cdcd6500000000              # double 1.0E+9
	.section	.text._ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE,"axG",@progbits,_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE,comdat
	.weak	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE
	.p2align	4, 0x90
	.type	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE,@function
_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE: # @_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
	movq	8(%rsp), %rdi
	callq	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	cvtsi2sd	%rax, %xmm0
	movsd	.LCPI21_0(%rip), %xmm1          # xmm1 = [1.0E+9,0.0E+0]
	divsd	%xmm1, %xmm0
	movsd	%xmm0, (%rsp)
	leaq	16(%rsp), %rdi
	movq	%rsp, %rsi
	callq	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_
	movsd	16(%rsp), %xmm0                 # xmm0 = mem[0],zero
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end21:
	.size	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE, .Lfunc_end21-_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_,comdat
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_ # -- Begin function _ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_
	.p2align	4, 0x90
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_,@function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_: # @_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movq	%rsi, -16(%rsp)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movsd	(%rcx), %xmm0                   # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	retq
.Lfunc_end22:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_, .Lfunc_end22-_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt8_DestroyIPiiEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E # -- Begin function _ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E,@function
_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E:       # @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	16(%rsp), %rdi
	movq	8(%rsp), %rsi
	callq	_ZSt8_DestroyIPiEvT_S1_
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end23:
	.size	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, .Lfunc_end23-_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv # -- Begin function _ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,@function
_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv: # @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movq	-8(%rsp), %rax
	retq
.Lfunc_end24:
	.size	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, .Lfunc_end24-_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	__cxa_begin_catch@PLT
	callq	_ZSt9terminatev@PLT
.Lfunc_end25:
	.size	__clang_call_terminate, .Lfunc_end25-__clang_call_terminate
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEED2Ev,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEED2Ev # -- Begin function _ZNSt12_Vector_baseIiSaIiEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEED2Ev,@function
_ZNSt12_Vector_baseIiSaIiEED2Ev:        # @_ZNSt12_Vector_baseIiSaIiEED2Ev
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rdi
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	movq	(%rdi), %rsi
	movq	16(%rdi), %rdx
	subq	%rsi, %rdx
	sarq	$2, %rdx
.Ltmp32:
	callq	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
.Ltmp33:
	jmp	.LBB26_1
.LBB26_1:
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB26_2:
	.cfi_def_cfa_offset 32
.Ltmp34:
	movq	%rax, %rdi
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
.Lfunc_end26:
	.size	_ZNSt12_Vector_baseIiSaIiEED2Ev, .Lfunc_end26-_ZNSt12_Vector_baseIiSaIiEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt12_Vector_baseIiSaIiEED2Ev,"aG",@progbits,_ZNSt12_Vector_baseIiSaIiEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table26:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp32-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin2          #     jumps to .Ltmp34
	.byte	1                               #   On action: 1
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZSt8_DestroyIPiEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPiEvT_S1_,comdat
	.weak	_ZSt8_DestroyIPiEvT_S1_         # -- Begin function _ZSt8_DestroyIPiEvT_S1_
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIPiEvT_S1_,@function
_ZSt8_DestroyIPiEvT_S1_:                # @_ZSt8_DestroyIPiEvT_S1_
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	16(%rsp), %rdi
	movq	8(%rsp), %rsi
	callq	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end27:
	.size	_ZSt8_DestroyIPiEvT_S1_, .Lfunc_end27-_ZSt8_DestroyIPiEvT_S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_ # -- Begin function _ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	.p2align	4, 0x90
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_,@function
_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_: # @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movq	%rsi, -16(%rsp)
	retq
.Lfunc_end28:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_, .Lfunc_end28-_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim # -- Begin function _ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,@function
_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim: # @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	cmpq	$0, 24(%rsp)
	je	.LBB29_2
# %bb.1:
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	24(%rsp), %rsi
	movq	16(%rsp), %rdx
	callq	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim
.LBB29_2:
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end29:
	.size	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, .Lfunc_end29-_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev # -- Begin function _ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev,@function
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev: # @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	_ZNSaIiED2Ev
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end30:
	.size	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev, .Lfunc_end30-_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim,"axG",@progbits,_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim,comdat
	.weak	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim # -- Begin function _ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim,@function
_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim: # @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	16(%rsp), %rdi
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdx
	callq	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end31:
	.size	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, .Lfunc_end31-_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim # -- Begin function _ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim,@function
_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim: # @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rdi
	callq	_ZdlPv@PLT
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end32:
	.size	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim, .Lfunc_end32-_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaIiED2Ev,"axG",@progbits,_ZNSaIiED2Ev,comdat
	.weak	_ZNSaIiED2Ev                    # -- Begin function _ZNSaIiED2Ev
	.p2align	4, 0x90
	.type	_ZNSaIiED2Ev,@function
_ZNSaIiED2Ev:                           # @_ZNSaIiED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	_ZN9__gnu_cxx13new_allocatorIiED2Ev
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end33:
	.size	_ZNSaIiED2Ev, .Lfunc_end33-_ZNSaIiED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIiED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIiED2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorIiED2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIiED2Ev,@function
_ZN9__gnu_cxx13new_allocatorIiED2Ev:    # @_ZN9__gnu_cxx13new_allocatorIiED2Ev
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	retq
.Lfunc_end34:
	.size	_ZN9__gnu_cxx13new_allocatorIiED2Ev, .Lfunc_end34-_ZN9__gnu_cxx13new_allocatorIiED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorIiSaIiEE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIiSaIiEE8max_sizeEv,comdat
	.weak	_ZNKSt6vectorIiSaIiEE8max_sizeEv # -- Begin function _ZNKSt6vectorIiSaIiEE8max_sizeEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIiSaIiEE8max_sizeEv,@function
_ZNKSt6vectorIiSaIiEE8max_sizeEv:       # @_ZNKSt6vectorIiSaIiEE8max_sizeEv
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	callq	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end35:
	.size	_ZNKSt6vectorIiSaIiEE8max_sizeEv, .Lfunc_end35-_ZNKSt6vectorIiSaIiEE8max_sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorIiSaIiEE8capacityEv,"axG",@progbits,_ZNKSt6vectorIiSaIiEE8capacityEv,comdat
	.weak	_ZNKSt6vectorIiSaIiEE8capacityEv # -- Begin function _ZNKSt6vectorIiSaIiEE8capacityEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIiSaIiEE8capacityEv,@function
_ZNKSt6vectorIiSaIiEE8capacityEv:       # @_ZNKSt6vectorIiSaIiEE8capacityEv
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movq	-8(%rsp), %rcx
	movq	16(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	sarq	$2, %rax
	retq
.Lfunc_end36:
	.size	_ZNKSt6vectorIiSaIiEE8capacityEv, .Lfunc_end36-_ZNKSt6vectorIiSaIiEE8capacityEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorIiSaIiEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIiSaIiEE4sizeEv,comdat
	.weak	_ZNKSt6vectorIiSaIiEE4sizeEv    # -- Begin function _ZNKSt6vectorIiSaIiEE4sizeEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIiSaIiEE4sizeEv,@function
_ZNKSt6vectorIiSaIiEE4sizeEv:           # @_ZNKSt6vectorIiSaIiEE4sizeEv
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movq	-8(%rsp), %rcx
	movq	8(%rcx), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	sarq	$2, %rax
	retq
.Lfunc_end37:
	.size	_ZNKSt6vectorIiSaIiEE4sizeEv, .Lfunc_end37-_ZNKSt6vectorIiSaIiEE4sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm # -- Begin function _ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm,@function
_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm: # @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	cmpq	$0, 24(%rsp)
	je	.LBB38_2
# %bb.1:
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movq	24(%rsp), %rsi
	callq	_ZNSt16allocator_traitsISaIiEE8allocateERS0_m
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	jmp	.LBB38_3
.LBB38_2:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	jmp	.LBB38_3
.LBB38_3:
	movq	8(%rsp), %rax                   # 8-byte Reload
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end38:
	.size	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, .Lfunc_end38-_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_,comdat
	.weak	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_ # -- Begin function _ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_,@function
_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_: # @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movq	32(%rsp), %rdi
	movq	24(%rsp), %rsi
	movq	16(%rsp), %rdx
	movq	8(%rsp), %rcx
	callq	_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end39:
	.size	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_, .Lfunc_end39-_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_,comdat
	.weak	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_ # -- Begin function _ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_,@function
_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_: # @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movabsq	$2305843009213693951, %rax      # imm = 0x1FFFFFFFFFFFFFFF
	movq	%rax, 24(%rsp)
	movq	32(%rsp), %rdi
	callq	_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_
	movq	%rax, 16(%rsp)
.Ltmp35:
	leaq	24(%rsp), %rdi
	leaq	16(%rsp), %rsi
	callq	_ZSt3minImERKT_S2_S2_
.Ltmp36:
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	jmp	.LBB40_1
.LBB40_1:
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rax), %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB40_2:
	.cfi_def_cfa_offset 48
.Ltmp37:
	movq	%rax, %rdi
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
.Lfunc_end40:
	.size	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_, .Lfunc_end40-_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_,"aG",@progbits,_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_,comdat
	.p2align	2, 0x0
GCC_except_table40:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp35-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin3          #     jumps to .Ltmp37
	.byte	1                               #   On action: 1
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv # -- Begin function _ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
	.type	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,@function
_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv: # @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movq	-8(%rsp), %rax
	retq
.Lfunc_end41:
	.size	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, .Lfunc_end41-_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_ # -- Begin function _ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_,@function
_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_: # @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end42:
	.size	_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_, .Lfunc_end42-_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_           # -- Begin function _ZSt3minImERKT_S2_S2_
	.p2align	4, 0x90
	.type	_ZSt3minImERKT_S2_S2_,@function
_ZSt3minImERKT_S2_S2_:                  # @_ZSt3minImERKT_S2_S2_
	.cfi_startproc
# %bb.0:
	movq	%rdi, -16(%rsp)
	movq	%rsi, -24(%rsp)
	movq	-24(%rsp), %rax
	movq	(%rax), %rax
	movq	-16(%rsp), %rcx
	cmpq	(%rcx), %rax
	jae	.LBB43_2
# %bb.1:
	movq	-24(%rsp), %rax
	movq	%rax, -8(%rsp)
	jmp	.LBB43_3
.LBB43_2:
	movq	-16(%rsp), %rax
	movq	%rax, -8(%rsp)
.LBB43_3:
	movq	-8(%rsp), %rax
	retq
.Lfunc_end43:
	.size	_ZSt3minImERKT_S2_S2_, .Lfunc_end43-_ZSt3minImERKT_S2_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv,comdat
	.weak	_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv # -- Begin function _ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv,@function
_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv: # @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movabsq	$2305843009213693951, %rax      # imm = 0x1FFFFFFFFFFFFFFF
	retq
.Lfunc_end44:
	.size	_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv, .Lfunc_end44-_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIiEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIiEE8allocateERS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIiEE8allocateERS0_m # -- Begin function _ZNSt16allocator_traitsISaIiEE8allocateERS0_m
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIiEE8allocateERS0_m,@function
_ZNSt16allocator_traitsISaIiEE8allocateERS0_m: # @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	16(%rsp), %rdi
	movq	8(%rsp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end45:
	.size	_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, .Lfunc_end45-_ZNSt16allocator_traitsISaIiEE8allocateERS0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv # -- Begin function _ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv,@function
_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv: # @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	32(%rsp), %rdi
	movq	24(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	callq	_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv
	movq	%rax, %rcx
	movq	8(%rsp), %rax                   # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB46_2
# %bb.1:
	callq	_ZSt17__throw_bad_allocv@PLT
.LBB46_2:
	movq	24(%rsp), %rdi
	shlq	$2, %rdi
	callq	_Znwm@PLT
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end46:
	.size	_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv, .Lfunc_end46-_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE,comdat
	.weak	_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE # -- Begin function _ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE
	.p2align	4, 0x90
	.type	_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE,@function
_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE: # @_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	movq	24(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	8(%rsp), %rdx
	movq	(%rsp), %rcx
	callq	_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end47:
	.size	_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE, .Lfunc_end47-_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_,"axG",@progbits,_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_,comdat
	.weak	_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_ # -- Begin function _ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_
	.p2align	4, 0x90
	.type	_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_,@function
_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_: # @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_
	.cfi_startproc
# %bb.0:
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 48(%rsp)
	movq	%rsi, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	48(%rsp), %rdi
	callq	_ZSt12__niter_baseIPiET_S1_
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	40(%rsp), %rdi
	callq	_ZSt12__niter_baseIPiET_S1_
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %rdi
	callq	_ZSt12__niter_baseIPiET_S1_
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	%rax, %rdx
	movq	24(%rsp), %rcx
	callq	_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end48:
	.size	_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_, .Lfunc_end48-_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E,"axG",@progbits,_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E,comdat
	.weak	_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E # -- Begin function _ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E
	.p2align	4, 0x90
	.type	_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E,@function
_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E: # @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movq	24(%rsp), %rax
	movq	32(%rsp), %rcx
	subq	%rcx, %rax
	sarq	$2, %rax
	movq	%rax, (%rsp)
	cmpq	$0, (%rsp)
	jle	.LBB49_2
# %bb.1:
	movq	16(%rsp), %rdi
	movq	32(%rsp), %rsi
	movq	(%rsp), %rdx
	shlq	$2, %rdx
	callq	memmove@PLT
.LBB49_2:
	movq	16(%rsp), %rax
	movq	(%rsp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end49:
	.size	_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E, .Lfunc_end49-_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__niter_baseIPiET_S1_,"axG",@progbits,_ZSt12__niter_baseIPiET_S1_,comdat
	.weak	_ZSt12__niter_baseIPiET_S1_     # -- Begin function _ZSt12__niter_baseIPiET_S1_
	.p2align	4, 0x90
	.type	_ZSt12__niter_baseIPiET_S1_,@function
_ZSt12__niter_baseIPiET_S1_:            # @_ZSt12__niter_baseIPiET_S1_
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movq	-8(%rsp), %rax
	retq
.Lfunc_end50:
	.size	_ZSt12__niter_baseIPiET_S1_, .Lfunc_end50-_ZSt12__niter_baseIPiET_S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_,"axG",@progbits,_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_,comdat
	.weak	_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_ # -- Begin function _ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_,@function
_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_: # @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movq	32(%rsp), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	8(%rcx), %rax
	cmpq	16(%rcx), %rax
	je	.LBB51_2
# %bb.1:
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	8(%rdi), %rsi
	movq	24(%rsp), %rdx
	callq	_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	8(%rax), %rcx
	addq	$4, %rcx
	movq	%rcx, 8(%rax)
	jmp	.LBB51_3
.LBB51_2:
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	_ZNSt6vectorIiSaIiEE3endEv
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	24(%rsp), %rdx
	movq	16(%rsp), %rsi
	callq	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
.LBB51_3:
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	_ZNSt6vectorIiSaIiEE4backEv
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end51:
	.size	_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_, .Lfunc_end51-_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_ # -- Begin function _ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_,@function
_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_: # @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	16(%rsp), %rdi
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdx
	callq	_ZN9__gnu_cxx13new_allocatorIiE9constructIiJiEEEvPT_DpOT0_
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end52:
	.size	_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_, .Lfunc_end52-_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_,comdat
	.weak	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_ # -- Begin function _ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_,@function
_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_: # @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
	.cfi_startproc
# %bb.0:
	subq	$136, %rsp
	.cfi_def_cfa_offset 144
	movq	%rsi, 128(%rsp)
	movq	%rdi, 120(%rsp)
	movq	%rdx, 112(%rsp)
	movq	120(%rsp), %rdi
	movq	%rdi, 48(%rsp)                  # 8-byte Spill
	movl	$1, %esi
	leaq	.L.str.3(%rip), %rdx
	callq	_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movq	%rax, 104(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 96(%rsp)
	movq	8(%rdi), %rax
	movq	%rax, 88(%rsp)
	callq	_ZNSt6vectorIiSaIiEE5beginEv
	movq	%rax, 72(%rsp)
	leaq	128(%rsp), %rdi
	leaq	72(%rsp), %rsi
	callq	_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movq	%rax, 80(%rsp)
	movq	104(%rsp), %rsi
	callq	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movq	%rax, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	64(%rsp), %rsi
	movq	80(%rsp), %rax
	shlq	$2, %rax
	addq	%rax, %rsi
	movq	112(%rsp), %rdx
	callq	_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_
	movq	$0, 56(%rsp)
	movq	96(%rsp), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	leaq	128(%rsp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	64(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	callq	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %rcx
	callq	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_
	movq	%rax, 56(%rsp)
	movq	56(%rsp), %rax
	addq	$4, %rax
	movq	%rax, 56(%rsp)
	leaq	128(%rsp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %rcx
	callq	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movq	%rax, 56(%rsp)
	movq	96(%rsp), %rsi
	movq	16(%rdi), %rdx
	movq	96(%rsp), %rax
	subq	%rax, %rdx
	sarq	$2, %rdx
	callq	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	64(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	56(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	64(%rsp), %rcx
	movq	104(%rsp), %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 16(%rax)
	addq	$136, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end53:
	.size	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, .Lfunc_end53-_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEE3endEv,"axG",@progbits,_ZNSt6vectorIiSaIiEE3endEv,comdat
	.weak	_ZNSt6vectorIiSaIiEE3endEv      # -- Begin function _ZNSt6vectorIiSaIiEE3endEv
	.p2align	4, 0x90
	.type	_ZNSt6vectorIiSaIiEE3endEv,@function
_ZNSt6vectorIiSaIiEE3endEv:             # @_ZNSt6vectorIiSaIiEE3endEv
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
	movq	8(%rsp), %rsi
	addq	$8, %rsi
	leaq	16(%rsp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_
	movq	16(%rsp), %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end54:
	.size	_ZNSt6vectorIiSaIiEE3endEv, .Lfunc_end54-_ZNSt6vectorIiSaIiEE3endEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEE4backEv,"axG",@progbits,_ZNSt6vectorIiSaIiEE4backEv,comdat
	.weak	_ZNSt6vectorIiSaIiEE4backEv     # -- Begin function _ZNSt6vectorIiSaIiEE4backEv
	.p2align	4, 0x90
	.type	_ZNSt6vectorIiSaIiEE4backEv,@function
_ZNSt6vectorIiSaIiEE4backEv:            # @_ZNSt6vectorIiSaIiEE4backEv
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rdi
	callq	_ZNSt6vectorIiSaIiEE3endEv
	movq	%rax, (%rsp)
	movq	%rsp, %rdi
	movl	$1, %esi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl
	movq	%rax, 8(%rsp)
	leaq	8(%rsp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end55:
	.size	_ZNSt6vectorIiSaIiEE4backEv, .Lfunc_end55-_ZNSt6vectorIiSaIiEE4backEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIiE9constructIiJiEEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiE9constructIiJiEEEvPT_DpOT0_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIiE9constructIiJiEEEvPT_DpOT0_ # -- Begin function _ZN9__gnu_cxx13new_allocatorIiE9constructIiJiEEEvPT_DpOT0_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIiE9constructIiJiEEEvPT_DpOT0_,@function
_ZN9__gnu_cxx13new_allocatorIiE9constructIiJiEEEvPT_DpOT0_: # @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJiEEEvPT_DpOT0_
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movq	%rsi, -16(%rsp)
	movq	%rdx, -24(%rsp)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movl	(%rcx), %ecx
	movl	%ecx, (%rax)
	retq
.Lfunc_end56:
	.size	_ZN9__gnu_cxx13new_allocatorIiE9constructIiJiEEEvPT_DpOT0_, .Lfunc_end56-_ZN9__gnu_cxx13new_allocatorIiE9constructIiJiEEEvPT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc,comdat
	.weak	_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc # -- Begin function _ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc,@function
_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc: # @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc
	.cfi_startproc
# %bb.0:
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, 80(%rsp)
	movq	%rsi, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movq	80(%rsp), %rdi
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt6vectorIiSaIiEE8max_sizeEv
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt6vectorIiSaIiEE4sizeEv
	movq	%rax, %rcx
	movq	40(%rsp), %rax                  # 8-byte Reload
	subq	%rcx, %rax
	cmpq	72(%rsp), %rax
	jae	.LBB57_2
# %bb.1:
	movq	64(%rsp), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.LBB57_2:
	movq	32(%rsp), %rdi                  # 8-byte Reload
	callq	_ZNKSt6vectorIiSaIiEE4sizeEv
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	callq	_ZNKSt6vectorIiSaIiEE4sizeEv
	movq	%rax, 48(%rsp)
	leaq	48(%rsp), %rdi
	leaq	72(%rsp), %rsi
	callq	_ZSt3maxImERKT_S2_S2_
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movq	%rax, %rcx
	movq	16(%rsp), %rax                  # 8-byte Reload
	addq	(%rcx), %rax
	movq	%rax, 56(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	callq	_ZNKSt6vectorIiSaIiEE4sizeEv
	movq	%rax, %rcx
	movq	24(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jb	.LBB57_4
# %bb.3:
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movq	56(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	callq	_ZNKSt6vectorIiSaIiEE8max_sizeEv
	movq	%rax, %rcx
	movq	8(%rsp), %rax                   # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB57_5
.LBB57_4:
	movq	32(%rsp), %rdi                  # 8-byte Reload
	callq	_ZNKSt6vectorIiSaIiEE8max_sizeEv
	movq	%rax, (%rsp)                    # 8-byte Spill
	jmp	.LBB57_6
.LBB57_5:
	movq	56(%rsp), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
.LBB57_6:
	movq	(%rsp), %rax                    # 8-byte Reload
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end57:
	.size	_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, .Lfunc_end57-_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,"axG",@progbits,_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,comdat
	.weak	_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_ # -- Begin function _ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,@function
_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_: # @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	16(%rsp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	movq	(%rax), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	8(%rsp), %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	movq	%rax, %rcx
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	sarq	$2, %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end58:
	.size	_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, .Lfunc_end58-_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEE5beginEv,"axG",@progbits,_ZNSt6vectorIiSaIiEE5beginEv,comdat
	.weak	_ZNSt6vectorIiSaIiEE5beginEv    # -- Begin function _ZNSt6vectorIiSaIiEE5beginEv
	.p2align	4, 0x90
	.type	_ZNSt6vectorIiSaIiEE5beginEv,@function
_ZNSt6vectorIiSaIiEE5beginEv:           # @_ZNSt6vectorIiSaIiEE5beginEv
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
	movq	8(%rsp), %rsi
	leaq	16(%rsp), %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_
	movq	16(%rsp), %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end59:
	.size	_ZNSt6vectorIiSaIiEE5beginEv, .Lfunc_end59-_ZNSt6vectorIiSaIiEE5beginEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv # -- Begin function _ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv: # @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movq	-8(%rsp), %rax
	retq
.Lfunc_end60:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, .Lfunc_end60-_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_           # -- Begin function _ZSt3maxImERKT_S2_S2_
	.p2align	4, 0x90
	.type	_ZSt3maxImERKT_S2_S2_,@function
_ZSt3maxImERKT_S2_S2_:                  # @_ZSt3maxImERKT_S2_S2_
	.cfi_startproc
# %bb.0:
	movq	%rdi, -16(%rsp)
	movq	%rsi, -24(%rsp)
	movq	-16(%rsp), %rax
	movq	(%rax), %rax
	movq	-24(%rsp), %rcx
	cmpq	(%rcx), %rax
	jae	.LBB61_2
# %bb.1:
	movq	-24(%rsp), %rax
	movq	%rax, -8(%rsp)
	jmp	.LBB61_3
.LBB61_2:
	movq	-16(%rsp), %rax
	movq	%rax, -8(%rsp)
.LBB61_3:
	movq	-8(%rsp), %rax
	retq
.Lfunc_end61:
	.size	_ZSt3maxImERKT_S2_S2_, .Lfunc_end61-_ZSt3maxImERKT_S2_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_ # -- Begin function _ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_,@function
_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_: # @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movq	%rsi, -16(%rsp)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end62:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, .Lfunc_end62-_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl # -- Begin function _ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl,@function
_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl: # @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	24(%rsp), %rax
	movq	(%rax), %rax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	subq	16(%rsp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rsi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_
	movq	32(%rsp), %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end63:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl, .Lfunc_end63-_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv # -- Begin function _ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv: # @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movq	-8(%rsp), %rax
	movq	(%rax), %rax
	retq
.Lfunc_end64:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv, .Lfunc_end64-_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_check.cpp
	.type	_GLOBAL__sub_I_check.cpp,@function
_GLOBAL__sub_I_check.cpp:               # @_GLOBAL__sub_I_check.cpp
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	__cxx_global_var_init
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end65:
	.size	_GLOBAL__sub_I_check.cpp, .Lfunc_end65-_GLOBAL__sub_I_check.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\320\222\321\200\320\265\320\274\321\217 \320\262\321\213\320\277\320\276\320\273\320\275\320\265\320\275\320\270\321\217: "
	.size	.L.str, 34

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	" \321\201\320\265\320\272\321\203\320\275\320\264\n"
	.size	.L.str.1, 15

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"vector::reserve"
	.size	.L.str.2, 16

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"vector::_M_realloc_insert"
	.size	.L.str.3, 26

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.quad	_GLOBAL__sub_I_check.cpp
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3, 0x0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"clang version 19.0.0git (git@github.com:tatyanakrivonogova/llvm_optimisations.git dbfae6c1c7b358ed9c065181e8a3ebc61568248d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __cxx_global_var_init
	.addrsig_sym __cxa_atexit
	.addrsig_sym _Z12brackets_muliii
	.addrsig_sym atoll
	.addrsig_sym srand
	.addrsig_sym _ZNSt6vectorIiSaIiEE7reserveEm
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _ZNSt6vectorIiSaIiEE9push_backEOi
	.addrsig_sym rand
	.addrsig_sym _ZNSt6chrono3_V212system_clock3nowEv
	.addrsig_sym _ZNSt6vectorIiSaIiEEixEm
	.addrsig_sym _ZNSolsEl
	.addrsig_sym _ZNSolsEPFRSoS_E
	.addrsig_sym _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.addrsig_sym _ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.addrsig_sym _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	.addrsig_sym _ZNSolsEd
	.addrsig_sym _ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	.addrsig_sym _ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.addrsig_sym _ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.addrsig_sym _ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.addrsig_sym _ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE
	.addrsig_sym _ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE
	.addrsig_sym _ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
	.addrsig_sym _ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.addrsig_sym __clang_call_terminate
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym _ZSt8_DestroyIPiEvT_S1_
	.addrsig_sym _ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	.addrsig_sym _ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.addrsig_sym _ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	.addrsig_sym _ZdlPv
	.addrsig_sym _ZNKSt6vectorIiSaIiEE8max_sizeEv
	.addrsig_sym _ZSt20__throw_length_errorPKc
	.addrsig_sym _ZNKSt6vectorIiSaIiEE8capacityEv
	.addrsig_sym _ZNKSt6vectorIiSaIiEE4sizeEv
	.addrsig_sym _ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	.addrsig_sym _ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_
	.addrsig_sym _ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_
	.addrsig_sym _ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.addrsig_sym _ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_
	.addrsig_sym _ZSt3minImERKT_S2_S2_
	.addrsig_sym _ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv
	.addrsig_sym _ZNSt16allocator_traitsISaIiEE8allocateERS0_m
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv
	.addrsig_sym _ZSt17__throw_bad_allocv
	.addrsig_sym _Znwm
	.addrsig_sym _ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE
	.addrsig_sym _ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_
	.addrsig_sym _ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E
	.addrsig_sym _ZSt12__niter_baseIPiET_S1_
	.addrsig_sym _ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_
	.addrsig_sym _ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_
	.addrsig_sym _ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
	.addrsig_sym _ZNSt6vectorIiSaIiEE3endEv
	.addrsig_sym _ZNSt6vectorIiSaIiEE4backEv
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorIiE9constructIiJiEEEvPT_DpOT0_
	.addrsig_sym _ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc
	.addrsig_sym _ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.addrsig_sym _ZNSt6vectorIiSaIiEE5beginEv
	.addrsig_sym _ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	.addrsig_sym _ZSt3maxImERKT_S2_S2_
	.addrsig_sym _ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl
	.addrsig_sym _ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv
	.addrsig_sym _GLOBAL__sub_I_check.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZSt4cout
