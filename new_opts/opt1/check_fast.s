	.text
	.file	"check.cpp"
	.globl	_Z12brackets_muliii             # -- Begin function _Z12brackets_muliii
	.p2align	4, 0x90
	.type	_Z12brackets_muliii,@function
_Z12brackets_muliii:                    # @_Z12brackets_muliii
	.cfi_startproc
# %bb.0:
                                        # kill: def $esi killed $esi def $rsi
                                        # kill: def $edi killed $edi def $rdi
	leal	(%rsi,%rdi), %eax
	addl	%edx, %eax
	imull	%edi, %eax
	imull	%esi, %edx
	addl	%edx, %eax
	retq
.Lfunc_end0:
	.size	_Z12brackets_muliii, .Lfunc_end0-_Z12brackets_muliii
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI1_0:
	.quad	0x41cdcd6500000000              # double 1.0E+9
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	8(%rsi), %rdi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoll@PLT
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movl	$42416, %edi                    # imm = 0xA5B0
	callq	srand@PLT
.Ltmp0:
	movl	$4000, %edi                     # imm = 0xFA0
	xorl	%r15d, %r15d
	callq	_Znwm@PLT
.Ltmp1:
# %bb.1:
	movq	%rax, %rbp
	xorl	%ebx, %ebx
.Ltmp2:
	movl	$4000, %edi                     # imm = 0xFA0
	movq	%rax, %r15
	callq	_Znwm@PLT
.Ltmp3:
# %bb.2:
.Ltmp4:
	movq	%rax, %r14
	movl	$4000, %edi                     # imm = 0xFA0
	movq	%rax, %rbx
	movq	%rbp, %r15
	callq	_Znwm@PLT
.Ltmp5:
# %bb.3:
	movq	%rbp, %rcx
	addq	$4000, %rcx                     # imm = 0xFA0
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movabsq	$2305843009213693951, %r15      # imm = 0x1FFFFFFFFFFFFFFF
	movq	%r14, %rcx
	addq	$4000, %rcx                     # imm = 0xFA0
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	%rax, %rdx
	addq	$4000, %rdx                     # imm = 0xFA0
	movq	%rbp, %r12
	movq	%r14, %r13
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%rax, %rcx
	movq	%r14, %rbx
	movl	$10000, %r14d                   # imm = 0x2710
	jmp	.LBB1_4
	.p2align	4, 0x90
.LBB1_44:                               #   in Loop: Header=BB1_4 Depth=1
	movl	%ebx, (%rcx)
	movq	8(%rsp), %rbx                   # 8-byte Reload
.LBB1_61:                               #   in Loop: Header=BB1_4 Depth=1
	addq	$4, %r12
	addq	$4, %r13
	addq	$4, %rcx
	decl	%r14d
	je	.LBB1_6
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rbx, 8(%rsp)                   # 8-byte Spill
	callq	rand@PLT
	movslq	%eax, %rbx
	imulq	$274877907, %rbx, %rax          # imm = 0x10624DD3
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$38, %rax
	addl	%ecx, %eax
	imull	$1000, %eax, %eax               # imm = 0x3E8
	subl	%eax, %ebx
	cmpq	48(%rsp), %r12                  # 8-byte Folded Reload
	je	.LBB1_9
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	movl	%ebx, (%r12)
	jmp	.LBB1_25
	.p2align	4, 0x90
.LBB1_9:                                #   in Loop: Header=BB1_4 Depth=1
	movq	%rbp, (%rsp)                    # 8-byte Spill
	subq	%rbp, %r12
	movabsq	$9223372036854775804, %rax      # imm = 0x7FFFFFFFFFFFFFFC
	cmpq	%rax, %r12
	je	.LBB1_10
# %bb.12:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%r12, %rbp
	sarq	$2, %rbp
	cmpq	$1, %rbp
	movq	%rbp, %rax
	adcq	$0, %rax
	leaq	(%rax,%rbp), %rcx
	cmpq	%r15, %rcx
	jae	.LBB1_13
# %bb.14:                               #   in Loop: Header=BB1_4 Depth=1
	addq	%rbp, %rax
	jae	.LBB1_15
.LBB1_16:                               #   in Loop: Header=BB1_4 Depth=1
	testq	%r15, %r15
	movq	%r15, 24(%rsp)                  # 8-byte Spill
	je	.LBB1_17
.LBB1_18:                               #   in Loop: Header=BB1_4 Depth=1
	leaq	(,%r15,4), %rdi
.Ltmp7:
	callq	_Znwm@PLT
.Ltmp8:
# %bb.19:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%rax, %r15
	movl	%ebx, (%r15,%rbp,4)
	testq	%r12, %r12
	movq	(%rsp), %rbx                    # 8-byte Reload
	jle	.LBB1_22
.LBB1_21:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	memmove@PLT
.LBB1_22:                               #   in Loop: Header=BB1_4 Depth=1
	testq	%rbx, %rbx
	je	.LBB1_24
# %bb.23:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%rbx, %rdi
	callq	_ZdlPv@PLT
.LBB1_24:                               #   in Loop: Header=BB1_4 Depth=1
	addq	%r15, %r12
	movq	24(%rsp), %rax                  # 8-byte Reload
	leaq	(%r15,%rax,4), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%r15, %rbp
	movabsq	$2305843009213693951, %r15      # imm = 0x1FFFFFFFFFFFFFFF
.LBB1_25:                               #   in Loop: Header=BB1_4 Depth=1
	callq	rand@PLT
	movslq	%eax, %rbx
	imulq	$274877907, %rbx, %rax          # imm = 0x10624DD3
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$38, %rax
	addl	%ecx, %eax
	imull	$1000, %eax, %eax               # imm = 0x3E8
	subl	%eax, %ebx
	cmpq	40(%rsp), %r13                  # 8-byte Folded Reload
	je	.LBB1_27
# %bb.26:                               #   in Loop: Header=BB1_4 Depth=1
	movl	%ebx, (%r13)
	jmp	.LBB1_43
	.p2align	4, 0x90
.LBB1_27:                               #   in Loop: Header=BB1_4 Depth=1
	movl	%r14d, 24(%rsp)                 # 4-byte Spill
	subq	8(%rsp), %r13                   # 8-byte Folded Reload
	movabsq	$9223372036854775804, %rax      # imm = 0x7FFFFFFFFFFFFFFC
	cmpq	%rax, %r13
	movq	%rbp, (%rsp)                    # 8-byte Spill
	je	.LBB1_28
# %bb.30:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%r13, %r14
	sarq	$2, %r14
	cmpq	$1, %r14
	movq	%r14, %rax
	adcq	$0, %rax
	leaq	(%rax,%r14), %rcx
	cmpq	%r15, %rcx
	jae	.LBB1_31
# %bb.32:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%r15, %rbp
	addq	%r14, %rax
	jae	.LBB1_33
.LBB1_34:                               #   in Loop: Header=BB1_4 Depth=1
	testq	%rbp, %rbp
	je	.LBB1_35
.LBB1_36:                               #   in Loop: Header=BB1_4 Depth=1
	leaq	(,%rbp,4), %rdi
.Ltmp10:
	callq	_Znwm@PLT
.Ltmp11:
# %bb.37:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%rax, %r15
	movl	%ebx, (%r15,%r14,4)
	testq	%r13, %r13
	movq	8(%rsp), %rbx                   # 8-byte Reload
	jle	.LBB1_40
.LBB1_39:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	memmove@PLT
.LBB1_40:                               #   in Loop: Header=BB1_4 Depth=1
	testq	%rbx, %rbx
	movl	24(%rsp), %r14d                 # 4-byte Reload
	je	.LBB1_42
# %bb.41:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%rbx, %rdi
	callq	_ZdlPv@PLT
.LBB1_42:                               #   in Loop: Header=BB1_4 Depth=1
	addq	%r15, %r13
	leaq	(%r15,%rbp,4), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%r15, 8(%rsp)                   # 8-byte Spill
	movq	(%rsp), %rbp                    # 8-byte Reload
	movabsq	$2305843009213693951, %r15      # imm = 0x1FFFFFFFFFFFFFFF
.LBB1_43:                               #   in Loop: Header=BB1_4 Depth=1
	callq	rand@PLT
	movslq	%eax, %rbx
	imulq	$274877907, %rbx, %rax          # imm = 0x10624DD3
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$38, %rax
	addl	%ecx, %eax
	imull	$1000, %eax, %eax               # imm = 0x3E8
	subl	%eax, %ebx
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	64(%rsp), %rcx                  # 8-byte Reload
	cmpq	%rdx, %rcx
	jne	.LBB1_44
# %bb.45:                               #   in Loop: Header=BB1_4 Depth=1
	movl	%r14d, 24(%rsp)                 # 4-byte Spill
	subq	16(%rsp), %rdx                  # 8-byte Folded Reload
	movabsq	$9223372036854775804, %rax      # imm = 0x7FFFFFFFFFFFFFFC
	cmpq	%rax, %rdx
	movq	%rbp, (%rsp)                    # 8-byte Spill
	je	.LBB1_46
# %bb.48:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%rdx, %r14
	sarq	$2, %r14
	cmpq	$1, %r14
	movq	%r14, %rax
	adcq	$0, %rax
	leaq	(%rax,%r14), %rcx
	cmpq	%r15, %rcx
	jae	.LBB1_49
# %bb.50:                               #   in Loop: Header=BB1_4 Depth=1
	addq	%r14, %rax
	jae	.LBB1_51
.LBB1_52:                               #   in Loop: Header=BB1_4 Depth=1
	testq	%r15, %r15
	movq	%rdx, %rbp
	movq	%r15, 32(%rsp)                  # 8-byte Spill
	je	.LBB1_53
.LBB1_54:                               #   in Loop: Header=BB1_4 Depth=1
	leaq	(,%r15,4), %rdi
.Ltmp13:
	callq	_Znwm@PLT
.Ltmp14:
# %bb.55:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%rax, %r15
	movq	%rbp, %rdx
	movl	%ebx, (%r15,%r14,4)
	testq	%rdx, %rdx
	movq	16(%rsp), %rbx                  # 8-byte Reload
	jle	.LBB1_58
.LBB1_57:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	memmove@PLT
	movq	%rbp, %rdx
.LBB1_58:                               #   in Loop: Header=BB1_4 Depth=1
	testq	%rbx, %rbx
	movq	%rbx, %rdi
	movq	8(%rsp), %rbx                   # 8-byte Reload
	movl	24(%rsp), %r14d                 # 4-byte Reload
	je	.LBB1_60
# %bb.59:                               #   in Loop: Header=BB1_4 Depth=1
	callq	_ZdlPv@PLT
	movq	%rbp, %rdx
.LBB1_60:                               #   in Loop: Header=BB1_4 Depth=1
	addq	%r15, %rdx
	movq	%rdx, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%r15,%rax,4), %rdx
	movq	%r15, 16(%rsp)                  # 8-byte Spill
	movq	(%rsp), %rbp                    # 8-byte Reload
	movabsq	$2305843009213693951, %r15      # imm = 0x1FFFFFFFFFFFFFFF
	jmp	.LBB1_61
.LBB1_13:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%r15, %rcx
	addq	%rbp, %rax
	jb	.LBB1_16
.LBB1_15:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%rcx, %r15
	testq	%r15, %r15
	movq	%r15, 24(%rsp)                  # 8-byte Spill
	jne	.LBB1_18
.LBB1_17:                               #   in Loop: Header=BB1_4 Depth=1
	xorl	%r15d, %r15d
	movl	%ebx, (%r15,%rbp,4)
	testq	%r12, %r12
	movq	(%rsp), %rbx                    # 8-byte Reload
	jg	.LBB1_21
	jmp	.LBB1_22
.LBB1_31:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%r15, %rcx
	movq	%r15, %rbp
	addq	%r14, %rax
	jb	.LBB1_34
.LBB1_33:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%rcx, %rbp
	testq	%rbp, %rbp
	jne	.LBB1_36
.LBB1_35:                               #   in Loop: Header=BB1_4 Depth=1
	xorl	%r15d, %r15d
	movl	%ebx, (%r15,%r14,4)
	testq	%r13, %r13
	movq	8(%rsp), %rbx                   # 8-byte Reload
	jg	.LBB1_39
	jmp	.LBB1_40
.LBB1_49:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%r15, %rcx
	addq	%r14, %rax
	jb	.LBB1_52
.LBB1_51:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%rcx, %r15
	testq	%r15, %r15
	movq	%rdx, %rbp
	movq	%r15, 32(%rsp)                  # 8-byte Spill
	jne	.LBB1_54
.LBB1_53:                               #   in Loop: Header=BB1_4 Depth=1
	xorl	%r15d, %r15d
	movl	%ebx, (%r15,%r14,4)
	testq	%rdx, %rdx
	movq	16(%rsp), %rbx                  # 8-byte Reload
	jg	.LBB1_57
	jmp	.LBB1_58
.LBB1_6:
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %r14
	movq	56(%rsp), %r15                  # 8-byte Reload
	testq	%r15, %r15
	jle	.LBB1_7
# %bb.68:
	xorl	%ecx, %ecx
	movabsq	$3777893186295716171, %rsi      # imm = 0x346DC5D63886594B
	movq	%rbp, %rdi
	movq	%rbx, %r8
	movq	16(%rsp), %r9                   # 8-byte Reload
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB1_69:                               # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	mulq	%rsi
	shrq	$11, %rdx
	imulq	$-40000, %rdx, %rax             # imm = 0xFFFF63C0
	movl	(%rdi,%rax), %edx
	movl	(%r8,%rax), %r10d
	movl	(%r9,%rax), %eax
	leal	(%r10,%rdx), %r11d
	addl	%eax, %r11d
	imull	%edx, %r11d
	imull	%r10d, %eax
	addl	%r11d, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	andl	$-2, %edx
	subl	%edx, %eax
	cltq
	addq	%rax, %r13
	incq	%rcx
	addq	$4, %r9
	addq	$4, %r8
	addq	$4, %rdi
	decq	%r15
	jne	.LBB1_69
	jmp	.LBB1_70
.LBB1_7:
	xorl	%r13d, %r13d
.LBB1_70:
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %r12
.Ltmp16:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movq	%r13, %rsi
	callq	_ZNSo9_M_insertIlEERSoT_@PLT
.Ltmp17:
# %bb.71:
	movq	%rax, %r13
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r13,%rax), %r15
	testq	%r15, %r15
	je	.LBB1_72
# %bb.74:
	cmpb	$0, 56(%r15)
	je	.LBB1_76
# %bb.75:
	movzbl	67(%r15), %eax
	jmp	.LBB1_78
.LBB1_76:
.Ltmp18:
	movq	%r15, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp19:
# %bb.77:
	movq	(%r15), %rax
.Ltmp20:
	movq	%r15, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp21:
.LBB1_78:
.Ltmp22:
	movsbl	%al, %esi
	movq	%r13, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp23:
# %bb.79:
.Ltmp24:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp25:
# %bb.80:
.Ltmp26:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str(%rip), %rsi
	movl	$33, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp27:
# %bb.81:
	subq	%r14, %r12
	cvtsi2sd	%r12, %xmm0
	divsd	.LCPI1_0(%rip), %xmm0
.Ltmp28:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
.Ltmp29:
# %bb.82:
.Ltmp30:
	leaq	.L.str.1(%rip), %rsi
	movl	$14, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp31:
# %bb.83:
	movq	16(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB1_85
# %bb.84:
	callq	_ZdlPv@PLT
.LBB1_85:
	testq	%rbx, %rbx
	je	.LBB1_87
# %bb.86:
	movq	%rbx, %rdi
	callq	_ZdlPv@PLT
.LBB1_87:
	testq	%rbp, %rbp
	je	.LBB1_89
# %bb.88:
	movq	%rbp, %rdi
	callq	_ZdlPv@PLT
.LBB1_89:
	xorl	%eax, %eax
	addq	$72, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB1_46:
	.cfi_def_cfa_offset 128
.Ltmp36:
	leaq	.L.str.3(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp37:
# %bb.47:
.LBB1_10:
.Ltmp42:
	leaq	.L.str.3(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp43:
# %bb.11:
.LBB1_28:
.Ltmp39:
	leaq	.L.str.3(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp40:
# %bb.29:
.LBB1_72:
.Ltmp33:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp34:
# %bb.73:
.LBB1_91:
.Ltmp32:
	jmp	.LBB1_92
.LBB1_8:
.Ltmp6:
	movq	%rax, %r14
	movq	%r15, (%rsp)                    # 8-byte Spill
	movq	%rbx, 8(%rsp)                   # 8-byte Spill
	cmpq	$0, 8(%rsp)                     # 8-byte Folded Reload
	je	.LBB1_97
	jmp	.LBB1_96
.LBB1_90:
.Ltmp35:
.LBB1_92:
	movq	%rbp, (%rsp)                    # 8-byte Spill
	jmp	.LBB1_93
.LBB1_66:
.Ltmp15:
	jmp	.LBB1_93
.LBB1_64:
.Ltmp12:
	jmp	.LBB1_93
.LBB1_62:
.Ltmp9:
	jmp	.LBB1_93
.LBB1_65:
.Ltmp41:
	jmp	.LBB1_93
.LBB1_63:
.Ltmp44:
	jmp	.LBB1_93
.LBB1_67:
.Ltmp38:
.LBB1_93:
	movq	%rax, %r14
	cmpq	$0, 16(%rsp)                    # 8-byte Folded Reload
	jne	.LBB1_94
# %bb.95:
	cmpq	$0, 8(%rsp)                     # 8-byte Folded Reload
	jne	.LBB1_96
.LBB1_97:
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	jne	.LBB1_98
.LBB1_99:
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.LBB1_94:
	movq	16(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv@PLT
	cmpq	$0, 8(%rsp)                     # 8-byte Folded Reload
	je	.LBB1_97
.LBB1_96:
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	_ZdlPv@PLT
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB1_99
.LBB1_98:
	movq	(%rsp), %rdi                    # 8-byte Reload
	callq	_ZdlPv@PLT
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table1:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp5-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp5
	.uleb128 .Ltmp6-.Lfunc_begin0           #     jumps to .Ltmp6
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp8-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp8
	.uleb128 .Ltmp9-.Lfunc_begin0           #     jumps to .Ltmp9
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp10-.Ltmp8                 #   Call between .Ltmp8 and .Ltmp10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp11-.Ltmp10                #   Call between .Ltmp10 and .Ltmp11
	.uleb128 .Ltmp12-.Lfunc_begin0          #     jumps to .Ltmp12
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp13-.Ltmp11                #   Call between .Ltmp11 and .Ltmp13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin0          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp16-.Ltmp14                #   Call between .Ltmp14 and .Ltmp16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp25-.Ltmp16                #   Call between .Ltmp16 and .Ltmp25
	.uleb128 .Ltmp35-.Lfunc_begin0          #     jumps to .Ltmp35
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp31-.Ltmp26                #   Call between .Ltmp26 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin0          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin0          #     jumps to .Ltmp38
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin0          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin0          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin0          #     jumps to .Ltmp35
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Lfunc_end1-.Ltmp34            #   Call between .Ltmp34 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_check.cpp
	.type	_GLOBAL__sub_I_check.cpp,@function
_GLOBAL__sub_I_check.cpp:               # @_GLOBAL__sub_I_check.cpp
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	leaq	_ZStL8__ioinit(%rip), %rbx
	movq	%rbx, %rdi
	callq	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	leaq	__dso_handle(%rip), %rdx
	movq	%rbx, %rsi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit@PLT                # TAILCALL
.Lfunc_end2:
	.size	_GLOBAL__sub_I_check.cpp, .Lfunc_end2-_GLOBAL__sub_I_check.cpp
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
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _GLOBAL__sub_I_check.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZSt4cout
