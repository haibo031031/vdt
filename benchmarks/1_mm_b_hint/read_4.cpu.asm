	.file	"/tmp/095cf42d-a0a8-462b-a009-cf752c809105.TMP"
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


	.section	".note.GNU-stack","",@progbits
