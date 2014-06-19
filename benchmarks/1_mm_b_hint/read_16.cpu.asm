	.file	"/tmp/2e24accd-3d42-4632-bc5c-cbd756776b4d.TMP"
	.text
	.globl	read_16
	.align	16, 0x90
	.type	read_16,@function
read_16:                                # @read_16
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
.LBB0_1:                                # %dim_0_pre_head.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
                                        #       Child Loop BB0_3 Depth 3
	movl	%r9d, %r15d
	imull	%esi, %r15d
	movl	-60(%rbp), %r10d        # 4-byte Reload
	xorl	%eax, %eax
	movq	-48(%rbp), %rdx         # 8-byte Reload
	.align	16, 0x90
.LBB0_2:                                # %scalar_kernel_entry.i
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_3 Depth 3
	vxorps	%ymm0, %ymm0, %ymm0
	testl	%r8d, %r8d
	movl	%r10d, %edi
	movl	%r8d, %r12d
	vxorps	%ymm1, %ymm1, %ymm1
	jle	.LBB0_4
	.align	16, 0x90
.LBB0_3:                                # %.lr.ph.i
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	%edi, %rbx
	addl	%esi, %edi
	vmovups	32(%rcx,%rbx,4), %ymm2
	vaddps	%ymm2, %ymm1, %ymm1
	vmovups	(%rcx,%rbx,4), %ymm2
	vaddps	%ymm2, %ymm0, %ymm0
	decl	%r12d
	jne	.LBB0_3
.LBB0_4:                                # %._crit_edge.i
                                        #   in Loop: Header=BB0_2 Depth=2
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
	jne	.LBB0_2
# BB#5:                                 # %dim_0_exit.i
                                        #   in Loop: Header=BB0_1 Depth=1
	incq	%r9
	incq	%r11
	cmpq	-56(%rbp), %r11         # 8-byte Folded Reload
	jne	.LBB0_1
# BB#6:                                 # %__read_16_separated_args.exit
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	ret
.Ltmp12:
	.size	read_16, .Ltmp12-read_16
.Ltmp13:
	.cfi_endproc
.Leh_func_end0:


	.section	".note.GNU-stack","",@progbits
