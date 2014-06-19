	.file	"/tmp/68614eea-f9f1-405c-b022-002560ea73be.TMP"
	.text
	.globl	read_8
	.align	16, 0x90
	.type	read_8,@function
read_8:                                 # @read_8
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
.LBB0_1:                                # %dim_0_pre_head.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
                                        #       Child Loop BB0_3 Depth 3
	movl	%r9d, %r12d
	imull	%esi, %r12d
	movl	-60(%rbp), %r10d        # 4-byte Reload
	xorl	%edx, %edx
	movq	-48(%rbp), %rax         # 8-byte Reload
	.align	16, 0x90
.LBB0_2:                                # %scalar_kernel_entry.i
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_3 Depth 3
	vxorps	%ymm0, %ymm0, %ymm0
	testl	%r8d, %r8d
	movl	%r10d, %edi
	movl	%r8d, %r13d
	jle	.LBB0_4
	.align	16, 0x90
.LBB0_3:                                # %.lr.ph.i
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	%edi, %rbx
	addl	%esi, %edi
	vmovups	(%rcx,%rbx,4), %ymm1
	vaddps	%ymm1, %ymm0, %ymm0
	decl	%r13d
	jne	.LBB0_3
.LBB0_4:                                # %._crit_edge.i
                                        #   in Loop: Header=BB0_2 Depth=2
	leaq	(,%rax,8), %rdi
	addl	%r12d, %edi
	movslq	%edi, %rdi
	vmovups	%ymm0, (%r14,%rdi,4)
	addl	$8, %r10d
	incq	%rax
	incq	%rdx
	cmpq	%r15, %rdx
	jne	.LBB0_2
# BB#5:                                 # %dim_0_exit.i
                                        #   in Loop: Header=BB0_1 Depth=1
	incq	%r9
	incq	%r11
	cmpq	-56(%rbp), %r11         # 8-byte Folded Reload
	jne	.LBB0_1
# BB#6:                                 # %__read_8_separated_args.exit
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	ret
.Ltmp12:
	.size	read_8, .Ltmp12-read_8
.Ltmp13:
	.cfi_endproc
.Leh_func_end0:


	.section	".note.GNU-stack","",@progbits
