	.file	"/tmp/9da53d5e-72e1-446c-aced-fd0da24cc5fa.TMP"
	.section	.rodata,"a",@progbits
	.align	32
.LCPI0_0:
	.quad	0                       # 0x0
	.quad	1                       # 0x1
	.quad	2                       # 0x2
	.quad	3                       # 0x3
	.text
	.globl	read_4
	.align	16, 0x90
	.type	read_4,@function
read_4:                                 # @read_4
.Ltmp3:
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
	movq	40(%rdi), %rax
	movl	20(%rdi), %r10d
	movl	16(%rdi), %ecx
	movq	(%rdi), %rdx
	movq	8(%rdi), %r9
	movq	(%rax), %r8
	movq	8(%rax), %r13
	movq	24(%rdi), %rax
	movq	56(%rax), %r11
	movq	64(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%r11, %r12
	sarq	$2, %r12
	testq	%r12, %r12
	je	.LBB0_7
# BB#1:                                 # %dim_1_vector_pre_head.i
	vmovaps	.LCPI0_0(%rip), %ymm0
	vextractf128	$1, %ymm0, %xmm1
	vmovd	%r8, %xmm2
	vmovlhps	%xmm2, %xmm2, %xmm2 # xmm2 = xmm2[0,0]
	vpaddq	%xmm1, %xmm2, %xmm1
	vpsllq	$2, %xmm1, %xmm1
	vpshufd	$8, %xmm1, %xmm1        # xmm1 = xmm1[0,2,0,0]
	vpaddq	%xmm0, %xmm2, %xmm0
	vpsllq	$2, %xmm0, %xmm0
	vpshufd	$8, %xmm0, %xmm2        # xmm2 = xmm0[0,2,0,0]
	vmovlhps	%xmm1, %xmm2, %xmm8 # xmm8 = xmm2[0],xmm1[0]
	vmovd	%xmm0, %edi
	vpextrd	$2, %xmm0, %eax
	subl	%edi, %eax
	xorl	%r14d, %r14d
	shll	$2, %eax
	vmovd	%eax, %xmm0
	vpshufd	$0, %xmm0, %xmm9        # xmm9 = xmm0[0,0,0,0]
	movq	%r13, %r15
	.align	16, 0x90
.LBB0_2:                                # %dim_0_vector_pre_head.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_4 Depth 3
	movl	%r15d, %eax
	imull	%ecx, %eax
	vmovd	%eax, %xmm0
	vpshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	vpaddd	%xmm8, %xmm0, %xmm1
	vpmovsxdq	%xmm1, %xmm0
	vmovd	%xmm0, %rdi
	vpextrq	$1, %xmm0, %rax
	subq	%rdi, %rax
	shlq	$2, %rax
	vmovd	%rax, %xmm2
	vmovlhps	%xmm2, %xmm2, %xmm2 # xmm2 = xmm2[0,0]
	vinsertf128	$1, %xmm2, %ymm2, %ymm10
	vmovhlps	%xmm1, %xmm1, %xmm1 # xmm1 = xmm1[1,1]
	vpmovsxdq	%xmm1, %xmm1
	vinsertf128	$1, %xmm1, %ymm0, %ymm11
	xorl	%ebx, %ebx
	vmovdqa	%xmm8, %xmm12
	.align	16, 0x90
.LBB0_3:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_4 Depth 3
	vxorps	%xmm13, %xmm13, %xmm13
	xorl	%edi, %edi
	testl	%r10d, %r10d
	movl	%r10d, %eax
	vxorps	%xmm7, %xmm7, %xmm7
	vxorps	%xmm15, %xmm15, %xmm15
	vpxor	%xmm0, %xmm0, %xmm0
	jle	.LBB0_5
	.align	16, 0x90
.LBB0_4:                                # %.lr.phvector_func.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovd	%edi, %xmm1
	vpshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	vpaddd	%xmm12, %xmm1, %xmm3
	addl	%ecx, %edi
	vpmovsxdq	%xmm3, %xmm2
	vmovd	%xmm2, %rsi
	vmovups	(%rdx,%rsi,4), %xmm1
	vpextrq	$1, %xmm2, %rsi
	vmovups	(%rdx,%rsi,4), %xmm2
	vmovhlps	%xmm1, %xmm2, %xmm5 # xmm5 = xmm1[1],xmm2[1]
	vmovhlps	%xmm3, %xmm3, %xmm3 # xmm3 = xmm3[1,1]
	vpmovsxdq	%xmm3, %xmm3
	vmovd	%xmm3, %rsi
	vmovups	(%rdx,%rsi,4), %xmm4
	vpextrq	$1, %xmm3, %rsi
	vmovups	(%rdx,%rsi,4), %xmm3
	vmovhlps	%xmm4, %xmm3, %xmm6 # xmm6 = xmm4[1],xmm3[1]
	vshufps	$-120, %xmm6, %xmm5, %xmm14 # xmm14 = xmm5[0,2],xmm6[0,2]
	vshufps	$-35, %xmm6, %xmm5, %xmm5 # xmm5 = xmm5[1,3],xmm6[1,3]
	decl	%eax
	vaddps	%xmm5, %xmm0, %xmm0
	vaddps	%xmm14, %xmm15, %xmm15
	vmovlhps	%xmm2, %xmm1, %xmm1 # xmm1 = xmm1[0],xmm2[0]
	vmovlhps	%xmm3, %xmm4, %xmm2 # xmm2 = xmm4[0],xmm3[0]
	vshufps	$-35, %xmm2, %xmm1, %xmm3 # xmm3 = xmm1[1,3],xmm2[1,3]
	vaddps	%xmm3, %xmm7, %xmm7
	vshufps	$-120, %xmm2, %xmm1, %xmm1 # xmm1 = xmm1[0,2],xmm2[0,2]
	vaddps	%xmm1, %xmm13, %xmm13
	jne	.LBB0_4
.LBB0_5:                                # %._crit_edgevector_func.i
                                        #   in Loop: Header=BB0_3 Depth=2
	vmovlhps	%xmm0, %xmm7, %xmm1 # xmm1 = xmm7[0],xmm0[0]
	vmovlhps	%xmm15, %xmm13, %xmm2 # xmm2 = xmm13[0],xmm15[0]
	vshufps	$-120, %xmm1, %xmm2, %xmm3 # xmm3 = xmm2[0,2],xmm1[0,2]
	vpermilps	$-40, %xmm3, %xmm3 # xmm3 = xmm3[0,2,1,3]
	vmovd	%xmm11, %rax
	vmovups	%xmm3, (%r9,%rax,4)
	vshufps	$-35, %xmm1, %xmm2, %xmm1 # xmm1 = xmm2[1,3],xmm1[1,3]
	vpermilps	$-40, %xmm1, %xmm1 # xmm1 = xmm1[0,2,1,3]
	vpextrq	$1, %xmm11, %rax
	vmovups	%xmm1, (%r9,%rax,4)
	vmovhlps	%xmm7, %xmm0, %xmm0 # xmm0 = xmm7[1],xmm0[1]
	vmovhlps	%xmm13, %xmm15, %xmm2 # xmm2 = xmm13[1],xmm15[1]
	vshufps	$-35, %xmm0, %xmm2, %xmm1 # xmm1 = xmm2[1,3],xmm0[1,3]
	vshufps	$-120, %xmm0, %xmm2, %xmm0 # xmm0 = xmm2[0,2],xmm0[0,2]
	vpermilps	$-40, %xmm0, %xmm2 # xmm2 = xmm0[0,2,1,3]
	vextractf128	$1, %ymm11, %xmm0
	vmovd	%xmm0, %rax
	vmovups	%xmm2, (%r9,%rax,4)
	vpermilps	$-40, %xmm1, %xmm1 # xmm1 = xmm1[0,2,1,3]
	vextractf128	$1, %ymm10, %xmm2
	vpaddq	%xmm2, %xmm0, %xmm2
	vpaddq	%xmm10, %xmm11, %xmm3
	vpextrq	$1, %xmm0, %rax
	vmovups	%xmm1, (%r9,%rax,4)
	vinsertf128	$1, %xmm2, %ymm3, %ymm11
	vpaddd	%xmm9, %xmm12, %xmm12
	incq	%rbx
	cmpq	%r12, %rbx
	jne	.LBB0_3
# BB#6:                                 # %dim_0_vector_exit.i
                                        #   in Loop: Header=BB0_2 Depth=1
	incq	%r15
	incq	%r14
	cmpq	-48(%rbp), %r14         # 8-byte Folded Reload
	jne	.LBB0_2
.LBB0_7:                                # %scalarIf.i
	movq	%r11, %rax
	andq	$-4, %rax
	cmpq	%rax, %r11
	movq	%r13, %rsi
	je	.LBB0_14
# BB#8:                                 # %dim_1_pre_head.i
	subq	%rax, %r11
	leaq	(%rax,%r8), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	addl	%eax, %r8d
	shll	$2, %r8d
	movq	%r8, -56(%rbp)          # 8-byte Spill
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB0_9:                                # %dim_0_pre_head.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_11 Depth 3
	movl	%esi, %r12d
	imull	%ecx, %r12d
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	%eax, %r8d
	xorl	%ebx, %ebx
	movq	-64(%rbp), %rax         # 8-byte Reload
	.align	16, 0x90
.LBB0_10:                               # %scalar_kernel_entry.i
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
	vxorps	%xmm0, %xmm0, %xmm0
	testl	%r10d, %r10d
	movl	%r8d, %edi
	movl	%r10d, %r13d
	jle	.LBB0_12
	.align	16, 0x90
.LBB0_11:                               # %.lr.ph.i
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	%edi, %r14
	addl	%ecx, %edi
	vmovups	(%rdx,%r14,4), %xmm1
	vaddps	%xmm1, %xmm0, %xmm0
	decl	%r13d
	jne	.LBB0_11
.LBB0_12:                               # %._crit_edge.i
                                        #   in Loop: Header=BB0_10 Depth=2
	leaq	(,%rax,4), %rdi
	addl	%r12d, %edi
	movslq	%edi, %rdi
	vmovups	%xmm0, (%r9,%rdi,4)
	addl	$4, %r8d
	incq	%rax
	incq	%rbx
	cmpq	%r11, %rbx
	jne	.LBB0_10
# BB#13:                                # %dim_0_exit.i
                                        #   in Loop: Header=BB0_9 Depth=1
	incq	%rsi
	incq	%r15
	cmpq	-48(%rbp), %r15         # 8-byte Folded Reload
	jne	.LBB0_9
.LBB0_14:                               # %__read_4_separated_args.exit
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	ret
.Ltmp12:
	.size	read_4, .Ltmp12-read_4
.Ltmp13:
	.cfi_endproc
.Leh_func_end0:

	.globl	read_2
	.align	16, 0x90
	.type	read_2,@function
read_2:                                 # @read_2
.Ltmp21:
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp25:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp26:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 56
.Ltmp28:
	.cfi_offset %rbx, -56
.Ltmp29:
	.cfi_offset %r12, -48
.Ltmp30:
	.cfi_offset %r13, -40
.Ltmp31:
	.cfi_offset %r14, -32
.Ltmp32:
	.cfi_offset %r15, -24
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	40(%rdi), %rax
	movl	20(%rdi), %r10d
	movq	(%rax), %rcx
	movq	%rcx, -8(%rsp)          # 8-byte Spill
	movq	8(%rax), %r9
	movl	16(%rdi), %ebx
	movq	(%rdi), %r13
	movq	8(%rdi), %r14
	movq	24(%rdi), %rax
	movq	56(%rax), %r15
	movq	64(%rax), %rax
	movq	%rax, -16(%rsp)         # 8-byte Spill
	xorl	%r11d, %r11d
	leal	(%rcx,%rcx), %eax
	movl	%eax, -20(%rsp)         # 4-byte Spill
	.align	16, 0x90
.LBB1_1:                                # %dim_0_pre_head.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
                                        #       Child Loop BB1_3 Depth 3
	movl	%r9d, %ebp
	imull	%ebx, %ebp
	movl	-20(%rsp), %ecx         # 4-byte Reload
	xorl	%edi, %edi
	movq	-8(%rsp), %rax          # 8-byte Reload
	.align	16, 0x90
.LBB1_2:                                # %scalar_kernel_entry.i
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_3 Depth 3
	xorl	%r8d, %r8d
	vxorps	%xmm0, %xmm0, %xmm0
	testl	%r10d, %r10d
	movl	%ecx, %edx
	movl	%r10d, %r12d
	jle	.LBB1_5
	.align	16, 0x90
.LBB1_3:                                # %.lr.ph.i
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	%edx, %rsi
	addl	%ebx, %edx
	vmovq	(%r13,%rsi,4), %xmm1
	vaddps	%xmm1, %xmm0, %xmm0
	decl	%r12d
	jne	.LBB1_3
# BB#4:                                 # %._crit_edge.loopexit.i
                                        #   in Loop: Header=BB1_2 Depth=2
	vmovd	%xmm0, %r8
.LBB1_5:                                # %._crit_edge.i
                                        #   in Loop: Header=BB1_2 Depth=2
	leaq	(%rax,%rax), %rdx
	addl	%ebp, %edx
	movslq	%edx, %rdx
	movq	%r8, (%r14,%rdx,4)
	addl	$2, %ecx
	incq	%rax
	incq	%rdi
	cmpq	%r15, %rdi
	jne	.LBB1_2
# BB#6:                                 # %dim_0_exit.i
                                        #   in Loop: Header=BB1_1 Depth=1
	incq	%r9
	incq	%r11
	cmpq	-16(%rsp), %r11         # 8-byte Folded Reload
	jne	.LBB1_1
# BB#7:                                 # %__read_2_separated_args.exit
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp34:
	.size	read_2, .Ltmp34-read_2
.Ltmp35:
	.cfi_endproc
.Leh_func_end1:

	.globl	read_1
	.align	16, 0x90
	.type	read_1,@function
read_1:                                 # @read_1
.Ltmp43:
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp46:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp47:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp48:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp49:
	.cfi_def_cfa_offset 56
.Ltmp50:
	.cfi_offset %rbx, -56
.Ltmp51:
	.cfi_offset %r12, -48
.Ltmp52:
	.cfi_offset %r13, -40
.Ltmp53:
	.cfi_offset %r14, -32
.Ltmp54:
	.cfi_offset %r15, -24
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	40(%rdi), %rax
	movl	20(%rdi), %r10d
	movl	16(%rdi), %ecx
	movq	(%rdi), %rdx
	movq	8(%rdi), %r12
	movq	(%rax), %r8
	movq	%r8, -16(%rsp)          # 8-byte Spill
	movq	8(%rax), %r9
	movq	24(%rdi), %rax
	movq	56(%rax), %r14
	movq	64(%rax), %rax
	movq	%rax, -8(%rsp)          # 8-byte Spill
	movq	%r14, %r13
	sarq	$2, %r13
	testq	%r13, %r13
	je	.LBB2_7
# BB#1:                                 # %dim_1_vector_pre_head.i
	xorl	%r11d, %r11d
	movq	%r9, %r15
	.align	16, 0x90
.LBB2_2:                                # %dim_0_vector_pre_head.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
                                        #       Child Loop BB2_4 Depth 3
	movl	%r15d, %esi
	imull	%ecx, %esi
	xorl	%ebx, %ebx
	movl	%r8d, %ebp
	.align	16, 0x90
.LBB2_3:                                #   Parent Loop BB2_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_4 Depth 3
	vxorps	%xmm0, %xmm0, %xmm0
	testl	%r10d, %r10d
	movl	%ebp, %edi
	movl	%r10d, %eax
	jle	.LBB2_5
	.align	16, 0x90
.LBB2_4:                                # %.lr.phvector_func.i
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	%edi, %r8
	addl	%ecx, %edi
	vmovups	(%rdx,%r8,4), %xmm1
	vaddps	%xmm1, %xmm0, %xmm0
	decl	%eax
	jne	.LBB2_4
.LBB2_5:                                # %._crit_edgevector_func.i
                                        #   in Loop: Header=BB2_3 Depth=2
	leal	(%rsi,%rbp), %eax
	movslq	%eax, %rax
	vmovups	%xmm0, (%r12,%rax,4)
	addl	$4, %ebp
	incq	%rbx
	cmpq	%r13, %rbx
	jne	.LBB2_3
# BB#6:                                 # %dim_0_vector_exit.i
                                        #   in Loop: Header=BB2_2 Depth=1
	incq	%r15
	incq	%r11
	cmpq	-8(%rsp), %r11          # 8-byte Folded Reload
	movq	-16(%rsp), %r8          # 8-byte Reload
	jne	.LBB2_2
.LBB2_7:                                # %scalarIf.i
	movq	%r14, %rax
	andq	$-4, %rax
	cmpq	%rax, %r14
	je	.LBB2_14
# BB#8:                                 # %dim_1_pre_head.i
	subq	%rax, %r14
	leaq	(%rax,%r8), %r11
	addl	%eax, %r8d
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB2_9:                                # %dim_0_pre_head.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_10 Depth 2
                                        #       Child Loop BB2_11 Depth 3
	movl	%r9d, %r13d
	imull	%ecx, %r13d
	movl	%r8d, %ebp
	xorl	%edi, %edi
	movq	%r11, %rsi
	.align	16, 0x90
.LBB2_10:                               # %scalar_kernel_entry.i
                                        #   Parent Loop BB2_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_11 Depth 3
	vxorps	%xmm0, %xmm0, %xmm0
	testl	%r10d, %r10d
	movl	%ebp, %ebx
	movl	%r10d, %eax
	jle	.LBB2_12
	.align	16, 0x90
.LBB2_11:                               # %.lr.ph.i
                                        #   Parent Loop BB2_9 Depth=1
                                        #     Parent Loop BB2_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	%ebx, %rbx
	vaddss	(%rdx,%rbx,4), %xmm0, %xmm0
	addl	%ecx, %ebx
	decl	%eax
	jne	.LBB2_11
.LBB2_12:                               # %._crit_edge.i
                                        #   in Loop: Header=BB2_10 Depth=2
	leal	(%r13,%rsi), %eax
	movslq	%eax, %rax
	vmovss	%xmm0, (%r12,%rax,4)
	incl	%ebp
	incq	%rsi
	incq	%rdi
	cmpq	%r14, %rdi
	jne	.LBB2_10
# BB#13:                                # %dim_0_exit.i
                                        #   in Loop: Header=BB2_9 Depth=1
	incq	%r9
	incq	%r15
	cmpq	-8(%rsp), %r15          # 8-byte Folded Reload
	jne	.LBB2_9
.LBB2_14:                               # %__read_1_separated_args.exit
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp56:
	.size	read_1, .Ltmp56-read_1
.Ltmp57:
	.cfi_endproc
.Leh_func_end2:

	.globl	read_8
	.align	16, 0x90
	.type	read_8,@function
read_8:                                 # @read_8
.Ltmp61:
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
.Ltmp65:
	.cfi_offset %rbx, -56
.Ltmp66:
	.cfi_offset %r12, -48
.Ltmp67:
	.cfi_offset %r13, -40
.Ltmp68:
	.cfi_offset %r14, -32
.Ltmp69:
	.cfi_offset %r15, -24
	movq	40(%rdi), %rax
	movl	20(%rdi), %r8d
	movq	(%rax), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	8(%rax), %r9
	movl	16(%rdi), %esi
	movq	(%rdi), %rcx
	movq	8(%rdi), %r14
	movq	24(%rdi), %rax
	movq	56(%rax), %r15
	movq	64(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	xorl	%r11d, %r11d
	leal	(,%rdx,8), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	.align	16, 0x90
.LBB3_1:                                # %dim_0_pre_head.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_2 Depth 2
                                        #       Child Loop BB3_3 Depth 3
	movl	%r9d, %r12d
	imull	%esi, %r12d
	movl	-60(%rbp), %r10d        # 4-byte Reload
	xorl	%edx, %edx
	movq	-48(%rbp), %rax         # 8-byte Reload
	.align	16, 0x90
.LBB3_2:                                # %scalar_kernel_entry.i
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_3 Depth 3
	vxorps	%ymm0, %ymm0, %ymm0
	testl	%r8d, %r8d
	movl	%r10d, %edi
	movl	%r8d, %r13d
	jle	.LBB3_4
	.align	16, 0x90
.LBB3_3:                                # %.lr.ph.i
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	%edi, %rbx
	addl	%esi, %edi
	vmovups	(%rcx,%rbx,4), %ymm1
	vaddps	%ymm1, %ymm0, %ymm0
	decl	%r13d
	jne	.LBB3_3
.LBB3_4:                                # %._crit_edge.i
                                        #   in Loop: Header=BB3_2 Depth=2
	leaq	(,%rax,8), %rdi
	addl	%r12d, %edi
	movslq	%edi, %rdi
	vmovups	%ymm0, (%r14,%rdi,4)
	addl	$8, %r10d
	incq	%rax
	incq	%rdx
	cmpq	%r15, %rdx
	jne	.LBB3_2
# BB#5:                                 # %dim_0_exit.i
                                        #   in Loop: Header=BB3_1 Depth=1
	incq	%r9
	incq	%r11
	cmpq	-56(%rbp), %r11         # 8-byte Folded Reload
	jne	.LBB3_1
# BB#6:                                 # %__read_8_separated_args.exit
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	ret
.Ltmp70:
	.size	read_8, .Ltmp70-read_8
.Ltmp71:
	.cfi_endproc
.Leh_func_end3:

	.globl	read_16
	.align	16, 0x90
	.type	read_16,@function
read_16:                                # @read_16
.Ltmp75:
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
.Ltmp79:
	.cfi_offset %rbx, -56
.Ltmp80:
	.cfi_offset %r12, -48
.Ltmp81:
	.cfi_offset %r13, -40
.Ltmp82:
	.cfi_offset %r14, -32
.Ltmp83:
	.cfi_offset %r15, -24
	movq	40(%rdi), %rax
	movl	20(%rdi), %r8d
	movq	(%rax), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	8(%rax), %r9
	movl	16(%rdi), %esi
	movq	(%rdi), %rcx
	movq	8(%rdi), %r13
	movq	24(%rdi), %rax
	movq	56(%rax), %r14
	movq	64(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	xorl	%r11d, %r11d
	movl	%edx, %eax
	shll	$4, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	.align	16, 0x90
.LBB4_1:                                # %dim_0_pre_head.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_2 Depth 2
                                        #       Child Loop BB4_3 Depth 3
	movl	%r9d, %r15d
	imull	%esi, %r15d
	movl	-60(%rbp), %r10d        # 4-byte Reload
	xorl	%eax, %eax
	movq	-48(%rbp), %rdx         # 8-byte Reload
	.align	16, 0x90
.LBB4_2:                                # %scalar_kernel_entry.i
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_3 Depth 3
	vxorps	%ymm0, %ymm0, %ymm0
	testl	%r8d, %r8d
	movl	%r10d, %edi
	movl	%r8d, %r12d
	vxorps	%ymm1, %ymm1, %ymm1
	jle	.LBB4_4
	.align	16, 0x90
.LBB4_3:                                # %.lr.ph.i
                                        #   Parent Loop BB4_1 Depth=1
                                        #     Parent Loop BB4_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	%edi, %rbx
	addl	%esi, %edi
	vmovups	32(%rcx,%rbx,4), %ymm2
	vaddps	%ymm2, %ymm1, %ymm1
	vmovups	(%rcx,%rbx,4), %ymm2
	vaddps	%ymm2, %ymm0, %ymm0
	decl	%r12d
	jne	.LBB4_3
.LBB4_4:                                # %._crit_edge.i
                                        #   in Loop: Header=BB4_2 Depth=2
	movq	%rdx, %rdi
	shlq	$4, %rdi
	addl	%r15d, %edi
	movslq	%edi, %rdi
	vmovups	%ymm1, 32(%r13,%rdi,4)
	vmovups	%ymm0, (%r13,%rdi,4)
	addl	$16, %r10d
	incq	%rdx
	incq	%rax
	cmpq	%r14, %rax
	jne	.LBB4_2
# BB#5:                                 # %dim_0_exit.i
                                        #   in Loop: Header=BB4_1 Depth=1
	incq	%r9
	incq	%r11
	cmpq	-56(%rbp), %r11         # 8-byte Folded Reload
	jne	.LBB4_1
# BB#6:                                 # %__read_16_separated_args.exit
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	ret
.Ltmp84:
	.size	read_16, .Ltmp84-read_16
.Ltmp85:
	.cfi_endproc
.Leh_func_end4:


	.section	".note.GNU-stack","",@progbits
