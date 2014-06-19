	.file	"/tmp/f7b5f232-6e2c-45a3-bcba-2cf5e3e165ad.ll"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	1077936128              # float 3.000000e+00
	.long	1077936128              # float 3.000000e+00
	.long	1077936128              # float 3.000000e+00
	.long	1077936128              # float 3.000000e+00
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_1:
	.long	1077936128              # float 3.000000e+00
                                        #  (0x40400000)
	.text
	.globl	read_1
	.align	16, 0x90
	.type	read_1,@function
read_1:                                 # @read_1
	.cfi_startproc
# BB#0:                                 # %wrapper_entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp10:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp11:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 56
.Ltmp13:
	.cfi_offset %rbx, -56
.Ltmp14:
	.cfi_offset %r12, -48
.Ltmp15:
	.cfi_offset %r13, -40
.Ltmp16:
	.cfi_offset %r14, -32
.Ltmp17:
	.cfi_offset %r15, -24
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	(%rsi), %r11
	movq	8(%rsi), %r10
	movq	40(%rdi), %r13
	movq	32(%rdi), %r9
	movq	88(%rdi), %r14
	movq	80(%rdi), %r8
	movl	16(%rdi), %r15d
	movq	(%rdi), %rsi
	movq	8(%rdi), %rdi
	movq	%r8, %r12
	sarq	$2, %r12
	testq	%r12, %r12
	je	.LBB0_5
# BB#1:                                 # %dim_0_vector_pre_head.i.preheader
	movl	%r8d, %eax
	imull	%r11d, %eax
	addl	%r9d, %eax
	movl	%r14d, %ebp
	imull	%r10d, %ebp
	addl	%r13d, %ebp
	imull	%r15d, %ebp
	addl	%eax, %ebp
	xorl	%ecx, %ecx
	vmovaps	.LCPI0_0(%rip), %xmm0
	.align	16, 0x90
.LBB0_2:                                # %dim_0_vector_pre_head.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movl	%ebp, %edx
	movq	%r12, %rbx
	.align	16, 0x90
.LBB0_3:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%edx, %rdx
	vmovups	(%rsi,%rdx,4), %xmm1
	vaddps	%xmm0, %xmm1, %xmm1
	vmovups	%xmm1, (%rdi,%rdx,4)
	addl	$4, %edx
	decq	%rbx
	jne	.LBB0_3
# BB#4:                                 # %dim_0_vector_exit.i
                                        #   in Loop: Header=BB0_2 Depth=1
	addl	%r15d, %ebp
	incq	%rcx
	cmpq	%r14, %rcx
	jne	.LBB0_2
.LBB0_5:                                # %scalarIf.i
	movq	%r8, %rbx
	andq	$-4, %rbx
	cmpq	%rbx, %r8
	je	.LBB0_10
# BB#6:                                 # %dim_0_pre_head.i.preheader
	imull	%r8d, %r11d
	addl	%ebx, %r9d
	addl	%r11d, %r9d
	imull	%r14d, %r10d
	addl	%r10d, %r13d
	imull	%r15d, %r13d
	addl	%r9d, %r13d
	subq	%r8, %rbx
	xorl	%ecx, %ecx
	vmovss	.LCPI0_1(%rip), %xmm0
	.align	16, 0x90
.LBB0_7:                                # %dim_0_pre_head.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	movq	%rbx, %rdx
	movl	%r13d, %eax
	.align	16, 0x90
.LBB0_8:                                # %scalar_kernel_entry.i
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%eax, %rax
	vaddss	(%rsi,%rax,4), %xmm0, %xmm1
	vmovss	%xmm1, (%rdi,%rax,4)
	incl	%eax
	incq	%rdx
	jne	.LBB0_8
# BB#9:                                 # %dim_0_exit.i
                                        #   in Loop: Header=BB0_7 Depth=1
	addl	%r15d, %r13d
	incq	%rcx
	cmpq	%r14, %rcx
	jne	.LBB0_7
.LBB0_10:                               # %__read_1_separated_args.exit
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp19:
	.size	read_1, .Ltmp19-read_1
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_0:
	.long	1077936128              # float 3.000000e+00
                                        #  (0x40400000)
	.long	1077936128              # float 3.000000e+00
                                        #  (0x40400000)
	.zero	4
	.zero	4
	.text
	.globl	read_2
	.align	16, 0x90
	.type	read_2,@function
read_2:                                 # @read_2
	.cfi_startproc
# BB#0:                                 # %wrapper_entry
	movq	80(%rdi), %r8
	movl	(%rsi), %eax
	imull	%r8d, %eax
	addl	32(%rdi), %eax
	movq	88(%rdi), %r9
	movl	8(%rsi), %ecx
	imull	%r9d, %ecx
	addl	40(%rdi), %ecx
	movl	16(%rdi), %r10d
	imull	%r10d, %ecx
	leal	(%rcx,%rax,2), %r11d
	movq	(%rdi), %rax
	movq	8(%rdi), %rdi
	xorl	%ecx, %ecx
	vmovaps	.LCPI1_0(%rip), %xmm0
	.align	16, 0x90
.LBB1_1:                                # %dim_0_pre_head.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
	movl	%r11d, %edx
	movq	%r8, %rsi
	.align	16, 0x90
.LBB1_2:                                # %scalar_kernel_entry.i
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%edx, %rdx
	vmovq	(%rax,%rdx,4), %xmm1
	vaddps	%xmm0, %xmm1, %xmm1
	vmovq	%xmm1, (%rdi,%rdx,4)
	addl	$2, %edx
	decq	%rsi
	jne	.LBB1_2
# BB#3:                                 # %dim_0_exit.i
                                        #   in Loop: Header=BB1_1 Depth=1
	addl	%r10d, %r11d
	incq	%rcx
	cmpq	%r9, %rcx
	jne	.LBB1_1
# BB#4:                                 # %__read_2_separated_args.exit
	ret
.Ltmp20:
	.size	read_2, .Ltmp20-read_2
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_0:
	.long	1077936128              # float 3.000000e+00
	.long	1077936128              # float 3.000000e+00
	.long	1077936128              # float 3.000000e+00
	.long	1077936128              # float 3.000000e+00
	.text
	.globl	read_4
	.align	16, 0x90
	.type	read_4,@function
read_4:                                 # @read_4
	.cfi_startproc
# BB#0:                                 # %wrapper_entry
	movq	80(%rdi), %r8
	movl	(%rsi), %eax
	imull	%r8d, %eax
	addl	32(%rdi), %eax
	movq	88(%rdi), %r9
	movl	8(%rsi), %ecx
	imull	%r9d, %ecx
	addl	40(%rdi), %ecx
	movl	16(%rdi), %r10d
	imull	%r10d, %ecx
	leal	(%rcx,%rax,4), %r11d
	movq	(%rdi), %rax
	movq	8(%rdi), %rdi
	xorl	%ecx, %ecx
	vmovaps	.LCPI2_0(%rip), %xmm0
	.align	16, 0x90
.LBB2_1:                                # %dim_0_pre_head.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_2 Depth 2
	movl	%r11d, %edx
	movq	%r8, %rsi
	.align	16, 0x90
.LBB2_2:                                # %scalar_kernel_entry.i
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%edx, %rdx
	vmovups	(%rax,%rdx,4), %xmm1
	vaddps	%xmm0, %xmm1, %xmm1
	vmovups	%xmm1, (%rdi,%rdx,4)
	addl	$4, %edx
	decq	%rsi
	jne	.LBB2_2
# BB#3:                                 # %dim_0_exit.i
                                        #   in Loop: Header=BB2_1 Depth=1
	addl	%r10d, %r11d
	incq	%rcx
	cmpq	%r9, %rcx
	jne	.LBB2_1
# BB#4:                                 # %__read_4_separated_args.exit
	ret
.Ltmp21:
	.size	read_4, .Ltmp21-read_4
	.cfi_endproc

	.section	.rodata,"a",@progbits
	.align	32
.LCPI3_0:
	.long	1077936128              # float 3.000000e+00
	.long	1077936128              # float 3.000000e+00
	.long	1077936128              # float 3.000000e+00
	.long	1077936128              # float 3.000000e+00
	.long	1077936128              # float 3.000000e+00
	.long	1077936128              # float 3.000000e+00
	.long	1077936128              # float 3.000000e+00
	.long	1077936128              # float 3.000000e+00
	.text
	.globl	read_8
	.align	16, 0x90
	.type	read_8,@function
read_8:                                 # @read_8
	.cfi_startproc
# BB#0:                                 # %wrapper_entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	movq	80(%rdi), %r8
	movl	(%rsi), %eax
	imull	%r8d, %eax
	addl	32(%rdi), %eax
	movq	88(%rdi), %r9
	movl	8(%rsi), %ecx
	imull	%r9d, %ecx
	addl	40(%rdi), %ecx
	movl	16(%rdi), %r10d
	imull	%r10d, %ecx
	leal	(%rcx,%rax,8), %r11d
	movq	(%rdi), %rax
	movq	8(%rdi), %rdi
	xorl	%ecx, %ecx
	vmovaps	.LCPI3_0(%rip), %ymm0
	.align	16, 0x90
.LBB3_1:                                # %dim_0_pre_head.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_2 Depth 2
	movl	%r11d, %edx
	movq	%r8, %rsi
	.align	16, 0x90
.LBB3_2:                                # %scalar_kernel_entry.i
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%edx, %rdx
	vmovups	(%rax,%rdx,4), %ymm1
	vaddps	%ymm0, %ymm1, %ymm1
	vmovups	%ymm1, (%rdi,%rdx,4)
	addl	$8, %edx
	decq	%rsi
	jne	.LBB3_2
# BB#3:                                 # %dim_0_exit.i
                                        #   in Loop: Header=BB3_1 Depth=1
	addl	%r10d, %r11d
	incq	%rcx
	cmpq	%r9, %rcx
	jne	.LBB3_1
# BB#4:                                 # %__read_8_separated_args.exit
	popq	%rbp
	vzeroupper
	ret
.Ltmp27:
	.size	read_8, .Ltmp27-read_8
	.cfi_endproc

	.section	.rodata,"a",@progbits
	.align	32
.LCPI4_0:
	.long	1077936128              # float 3.000000e+00
	.long	1077936128              # float 3.000000e+00
	.long	1077936128              # float 3.000000e+00
	.long	1077936128              # float 3.000000e+00
	.long	1077936128              # float 3.000000e+00
	.long	1077936128              # float 3.000000e+00
	.long	1077936128              # float 3.000000e+00
	.long	1077936128              # float 3.000000e+00
	.text
	.globl	read_16
	.align	16, 0x90
	.type	read_16,@function
read_16:                                # @read_16
	.cfi_startproc
# BB#0:                                 # %wrapper_entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	movq	88(%rdi), %r8
	movl	8(%rsi), %eax
	imull	%r8d, %eax
	addl	40(%rdi), %eax
	movl	16(%rdi), %r9d
	imull	%r9d, %eax
	movq	80(%rdi), %r10
	movl	(%rsi), %r11d
	imull	%r10d, %r11d
	addl	32(%rdi), %r11d
	shll	$4, %r11d
	addl	%eax, %r11d
	movq	(%rdi), %rax
	movq	8(%rdi), %rdi
	xorl	%ecx, %ecx
	vmovaps	.LCPI4_0(%rip), %ymm0
	.align	16, 0x90
.LBB4_1:                                # %dim_0_pre_head.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_2 Depth 2
	movl	%r11d, %edx
	movq	%r10, %rsi
	.align	16, 0x90
.LBB4_2:                                # %scalar_kernel_entry.i
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%edx, %rdx
	vmovups	(%rax,%rdx,4), %ymm1
	vmovups	32(%rax,%rdx,4), %ymm2
	vaddps	%ymm0, %ymm2, %ymm2
	vmovups	%ymm2, 32(%rdi,%rdx,4)
	vaddps	%ymm0, %ymm1, %ymm1
	vmovups	%ymm1, (%rdi,%rdx,4)
	addl	$16, %edx
	decq	%rsi
	jne	.LBB4_2
# BB#3:                                 # %dim_0_exit.i
                                        #   in Loop: Header=BB4_1 Depth=1
	addl	%r9d, %r11d
	incq	%rcx
	cmpq	%r8, %rcx
	jne	.LBB4_1
# BB#4:                                 # %__read_16_separated_args.exit
	popq	%rbp
	vzeroupper
	ret
.Ltmp33:
	.size	read_16, .Ltmp33-read_16
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
