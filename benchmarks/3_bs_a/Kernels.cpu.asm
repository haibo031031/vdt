	.file	"/tmp/73797bf5-7f91-482c-95ca-6ffdacc12c9a.TMP"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	1077936128              # float 3.000000e+00
	.long	1077936128              # float 3.000000e+00
	.long	1077936128              # float 3.000000e+00
	.long	1077936128              # float 3.000000e+00
	.text
	.globl	read_4
	.align	16, 0x90
	.type	read_4,@function
read_4:                                 # @read_4
.Ltmp0:
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rax
	movl	16(%rdi), %r8d
	movl	8(%rax), %ecx
	imull	%r8d, %ecx
	movl	(%rax), %eax
	leal	(%rcx,%rax,4), %r11d
	movq	(%rdi), %rdx
	movq	8(%rdi), %rsi
	movq	24(%rdi), %rax
	movq	56(%rax), %r9
	movq	64(%rax), %r10
	xorl	%edi, %edi
	vmovaps	.LCPI0_0(%rip), %xmm0
	.align	16, 0x90
.LBB0_1:                                # %dim_0_pre_head.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
	movl	%r11d, %eax
	movq	%r9, %rcx
	.align	16, 0x90
.LBB0_2:                                # %scalar_kernel_entry.i
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%eax, %rax
	vmovups	(%rdx,%rax,4), %xmm1
	vaddps	%xmm0, %xmm1, %xmm1
	vmovups	%xmm1, (%rsi,%rax,4)
	addl	$4, %eax
	decq	%rcx
	jne	.LBB0_2
# BB#3:                                 # %dim_0_exit.i
                                        #   in Loop: Header=BB0_1 Depth=1
	addl	%r8d, %r11d
	incq	%rdi
	cmpq	%r10, %rdi
	jne	.LBB0_1
# BB#4:                                 # %__read_4_separated_args.exit
	ret
.Ltmp1:
	.size	read_4, .Ltmp1-read_4
.Ltmp2:
	.cfi_endproc
.Leh_func_end0:

	.section	.rodata,"a",@progbits
	.align	32
.LCPI1_0:
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
.Ltmp5:
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	movq	40(%rdi), %rcx
	movl	16(%rdi), %r8d
	movl	8(%rcx), %eax
	imull	%r8d, %eax
	movl	(%rcx), %r11d
	shll	$4, %r11d
	addl	%eax, %r11d
	movq	(%rdi), %rdx
	movq	8(%rdi), %rsi
	movq	24(%rdi), %rax
	movq	56(%rax), %r9
	movq	64(%rax), %r10
	xorl	%edi, %edi
	vmovaps	.LCPI1_0(%rip), %ymm0
	.align	16, 0x90
.LBB1_1:                                # %dim_0_pre_head.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
	movl	%r11d, %eax
	movq	%r9, %rcx
	.align	16, 0x90
.LBB1_2:                                # %scalar_kernel_entry.i
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%eax, %rax
	vmovups	(%rdx,%rax,4), %ymm1
	vmovups	32(%rdx,%rax,4), %ymm2
	vaddps	%ymm0, %ymm2, %ymm2
	vmovups	%ymm2, 32(%rsi,%rax,4)
	vaddps	%ymm0, %ymm1, %ymm1
	vmovups	%ymm1, (%rsi,%rax,4)
	addl	$16, %eax
	decq	%rcx
	jne	.LBB1_2
# BB#3:                                 # %dim_0_exit.i
                                        #   in Loop: Header=BB1_1 Depth=1
	addl	%r8d, %r11d
	incq	%rdi
	cmpq	%r10, %rdi
	jne	.LBB1_1
# BB#4:                                 # %__read_16_separated_args.exit
	popq	%rbp
	vzeroupper
	ret
.Ltmp9:
	.size	read_16, .Ltmp9-read_16
.Ltmp10:
	.cfi_endproc
.Leh_func_end1:

	.section	.rodata,"a",@progbits
	.align	32
.LCPI2_0:
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
.Ltmp13:
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	movq	40(%rdi), %rax
	movl	16(%rdi), %r8d
	movl	8(%rax), %ecx
	imull	%r8d, %ecx
	movl	(%rax), %eax
	leal	(%rcx,%rax,8), %r11d
	movq	(%rdi), %rdx
	movq	8(%rdi), %rsi
	movq	24(%rdi), %rax
	movq	56(%rax), %r9
	movq	64(%rax), %r10
	xorl	%edi, %edi
	vmovaps	.LCPI2_0(%rip), %ymm0
	.align	16, 0x90
.LBB2_1:                                # %dim_0_pre_head.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_2 Depth 2
	movl	%r11d, %eax
	movq	%r9, %rcx
	.align	16, 0x90
.LBB2_2:                                # %scalar_kernel_entry.i
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%eax, %rax
	vmovups	(%rdx,%rax,4), %ymm1
	vaddps	%ymm0, %ymm1, %ymm1
	vmovups	%ymm1, (%rsi,%rax,4)
	addl	$8, %eax
	decq	%rcx
	jne	.LBB2_2
# BB#3:                                 # %dim_0_exit.i
                                        #   in Loop: Header=BB2_1 Depth=1
	addl	%r8d, %r11d
	incq	%rdi
	cmpq	%r10, %rdi
	jne	.LBB2_1
# BB#4:                                 # %__read_8_separated_args.exit
	popq	%rbp
	vzeroupper
	ret
.Ltmp17:
	.size	read_8, .Ltmp17-read_8
.Ltmp18:
	.cfi_endproc
.Leh_func_end2:

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI3_0:
	.long	1077936128              # float 3.000000e+00
	.long	1077936128              # float 3.000000e+00
	.long	1077936128              # float 3.000000e+00
	.long	1077936128              # float 3.000000e+00
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_1:
	.long	1077936128              # float 3.000000e+00
	.text
	.globl	read_1
	.align	16, 0x90
	.type	read_1,@function
read_1:                                 # @read_1
.Ltmp23:
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 32
.Ltmp27:
	.cfi_offset %rbx, -32
.Ltmp28:
	.cfi_offset %r14, -24
.Ltmp29:
	.cfi_offset %r15, -16
	movl	16(%rdi), %r11d
	movq	(%rdi), %rcx
	movq	8(%rdi), %rdx
	movq	40(%rdi), %rax
	movq	(%rax), %r8
	movq	8(%rax), %r15
	movq	24(%rdi), %rax
	movq	56(%rax), %r9
	movq	64(%rax), %r10
	movq	%r9, %r14
	sarq	$2, %r14
	testq	%r14, %r14
	je	.LBB3_5
# BB#1:                                 # %dim_0_vector_pre_head.i.preheader
	movl	%r11d, %esi
	imull	%r15d, %esi
	movl	%r8d, %eax
	addl	%esi, %eax
	xorl	%ebx, %ebx
	vmovaps	.LCPI3_0(%rip), %xmm0
	.align	16, 0x90
.LBB3_2:                                # %dim_0_vector_pre_head.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	movl	%eax, %edi
	movq	%r14, %rsi
	.align	16, 0x90
.LBB3_3:                                #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%edi, %rdi
	vmovups	(%rcx,%rdi,4), %xmm1
	vaddps	%xmm0, %xmm1, %xmm1
	vmovups	%xmm1, (%rdx,%rdi,4)
	addl	$4, %edi
	decq	%rsi
	jne	.LBB3_3
# BB#4:                                 # %dim_0_vector_exit.i
                                        #   in Loop: Header=BB3_2 Depth=1
	addl	%r11d, %eax
	incq	%rbx
	cmpq	%r10, %rbx
	jne	.LBB3_2
.LBB3_5:                                # %scalarIf.i
	movq	%r9, %rbx
	andq	$-4, %rbx
	cmpq	%rbx, %r9
	je	.LBB3_10
# BB#6:                                 # %dim_0_pre_head.i.preheader
	addl	%ebx, %r8d
	imull	%r11d, %r15d
	addl	%r8d, %r15d
	subq	%r9, %rbx
	xorl	%eax, %eax
	vmovss	.LCPI3_1(%rip), %xmm0
	.align	16, 0x90
.LBB3_7:                                # %dim_0_pre_head.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_8 Depth 2
	movq	%rbx, %rdi
	movl	%r15d, %esi
	.align	16, 0x90
.LBB3_8:                                # %scalar_kernel_entry.i
                                        #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%esi, %rsi
	vmovss	(%rcx,%rsi,4), %xmm1
	vaddss	%xmm0, %xmm1, %xmm1
	vmovss	%xmm1, (%rdx,%rsi,4)
	incl	%esi
	incq	%rdi
	jne	.LBB3_8
# BB#9:                                 # %dim_0_exit.i
                                        #   in Loop: Header=BB3_7 Depth=1
	addl	%r11d, %r15d
	incq	%rax
	cmpq	%r10, %rax
	jne	.LBB3_7
.LBB3_10:                               # %__read_1_separated_args.exit
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
.Ltmp30:
	.size	read_1, .Ltmp30-read_1
.Ltmp31:
	.cfi_endproc
.Leh_func_end3:

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI4_0:
	.long	1077936128              # float 3.000000e+00
	.long	1077936128              # float 3.000000e+00
	.zero	4
	.zero	4
	.text
	.globl	read_2
	.align	16, 0x90
	.type	read_2,@function
read_2:                                 # @read_2
.Ltmp32:
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rax
	movl	16(%rdi), %r8d
	movl	8(%rax), %ecx
	imull	%r8d, %ecx
	movl	(%rax), %eax
	leal	(%rcx,%rax,2), %r11d
	movq	(%rdi), %rdx
	movq	8(%rdi), %rsi
	movq	24(%rdi), %rax
	movq	56(%rax), %r9
	movq	64(%rax), %r10
	xorl	%edi, %edi
	vmovaps	.LCPI4_0(%rip), %xmm0
	.align	16, 0x90
.LBB4_1:                                # %dim_0_pre_head.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_2 Depth 2
	movl	%r11d, %eax
	movq	%r9, %rcx
	.align	16, 0x90
.LBB4_2:                                # %scalar_kernel_entry.i
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%eax, %rax
	vmovq	(%rdx,%rax,4), %xmm1
	vaddps	%xmm0, %xmm1, %xmm1
	movlps	%xmm1, (%rsi,%rax,4)
	addl	$2, %eax
	decq	%rcx
	jne	.LBB4_2
# BB#3:                                 # %dim_0_exit.i
                                        #   in Loop: Header=BB4_1 Depth=1
	addl	%r8d, %r11d
	incq	%rdi
	cmpq	%r10, %rdi
	jne	.LBB4_1
# BB#4:                                 # %__read_2_separated_args.exit
	ret
.Ltmp33:
	.size	read_2, .Ltmp33-read_2
.Ltmp34:
	.cfi_endproc
.Leh_func_end4:


	.section	".note.GNU-stack","",@progbits
