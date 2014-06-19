	.file	"/tmp/d034a250-515e-4cba-b7f9-7c45b31ad1b1.TMP"
	.text
	.globl	read_1
	.align	16, 0x90
	.type	read_1,@function
read_1:                                 # @read_1
.Ltmp7:
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp9:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp11:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp12:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 56
.Ltmp14:
	.cfi_offset %rbx, -56
.Ltmp15:
	.cfi_offset %r12, -48
.Ltmp16:
	.cfi_offset %r13, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
.Ltmp19:
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
	je	.LBB0_7
# BB#1:                                 # %dim_1_vector_pre_head.i
	xorl	%r11d, %r11d
	movq	%r9, %r15
	.align	16, 0x90
.LBB0_2:                                # %dim_0_vector_pre_head.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_4 Depth 3
	movl	%r15d, %esi
	imull	%ecx, %esi
	xorl	%ebx, %ebx
	movl	%r8d, %ebp
	.align	16, 0x90
.LBB0_3:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_4 Depth 3
	vxorps	%xmm0, %xmm0, %xmm0
	testl	%r10d, %r10d
	movl	%ebp, %edi
	movl	%r10d, %eax
	jle	.LBB0_5
	.align	16, 0x90
.LBB0_4:                                # %.lr.phvector_func.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	%edi, %r8
	addl	%ecx, %edi
	vmovups	(%rdx,%r8,4), %xmm1
	vaddps	%xmm1, %xmm0, %xmm0
	decl	%eax
	jne	.LBB0_4
.LBB0_5:                                # %._crit_edgevector_func.i
                                        #   in Loop: Header=BB0_3 Depth=2
	leal	(%rsi,%rbp), %eax
	movslq	%eax, %rax
	vmovups	%xmm0, (%r12,%rax,4)
	addl	$4, %ebp
	incq	%rbx
	cmpq	%r13, %rbx
	jne	.LBB0_3
# BB#6:                                 # %dim_0_vector_exit.i
                                        #   in Loop: Header=BB0_2 Depth=1
	incq	%r15
	incq	%r11
	cmpq	-8(%rsp), %r11          # 8-byte Folded Reload
	movq	-16(%rsp), %r8          # 8-byte Reload
	jne	.LBB0_2
.LBB0_7:                                # %scalarIf.i
	movq	%r14, %rax
	andq	$-4, %rax
	cmpq	%rax, %r14
	je	.LBB0_14
# BB#8:                                 # %dim_1_pre_head.i
	subq	%rax, %r14
	leaq	(%rax,%r8), %r11
	addl	%eax, %r8d
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB0_9:                                # %dim_0_pre_head.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_11 Depth 3
	movl	%r9d, %r13d
	imull	%ecx, %r13d
	movl	%r8d, %ebp
	xorl	%edi, %edi
	movq	%r11, %rsi
	.align	16, 0x90
.LBB0_10:                               # %scalar_kernel_entry.i
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
	vxorps	%xmm0, %xmm0, %xmm0
	testl	%r10d, %r10d
	movl	%ebp, %ebx
	movl	%r10d, %eax
	jle	.LBB0_12
	.align	16, 0x90
.LBB0_11:                               # %.lr.ph.i
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	%ebx, %rbx
	vaddss	(%rdx,%rbx,4), %xmm0, %xmm0
	addl	%ecx, %ebx
	decl	%eax
	jne	.LBB0_11
.LBB0_12:                               # %._crit_edge.i
                                        #   in Loop: Header=BB0_10 Depth=2
	leal	(%r13,%rsi), %eax
	movslq	%eax, %rax
	vmovss	%xmm0, (%r12,%rax,4)
	incl	%ebp
	incq	%rsi
	incq	%rdi
	cmpq	%r14, %rdi
	jne	.LBB0_10
# BB#13:                                # %dim_0_exit.i
                                        #   in Loop: Header=BB0_9 Depth=1
	incq	%r9
	incq	%r15
	cmpq	-8(%rsp), %r15          # 8-byte Folded Reload
	jne	.LBB0_9
.LBB0_14:                               # %__read_1_separated_args.exit
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp20:
	.size	read_1, .Ltmp20-read_1
.Ltmp21:
	.cfi_endproc
.Leh_func_end0:


	.section	".note.GNU-stack","",@progbits
