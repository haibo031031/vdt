	.file	"/tmp/fde942cf-681f-4f32-9ea8-593dd0485b8f.TMP"
	.text
	.globl	read_2
	.align	16, 0x90
	.type	read_2,@function
read_2:                                 # @read_2
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
.LBB0_1:                                # %dim_0_pre_head.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
                                        #       Child Loop BB0_3 Depth 3
	movl	%r9d, %ebp
	imull	%ebx, %ebp
	movl	-20(%rsp), %ecx         # 4-byte Reload
	xorl	%edi, %edi
	movq	-8(%rsp), %rax          # 8-byte Reload
	.align	16, 0x90
.LBB0_2:                                # %scalar_kernel_entry.i
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_3 Depth 3
	xorl	%r8d, %r8d
	vxorps	%xmm0, %xmm0, %xmm0
	testl	%r10d, %r10d
	movl	%ecx, %edx
	movl	%r10d, %r12d
	jle	.LBB0_5
	.align	16, 0x90
.LBB0_3:                                # %.lr.ph.i
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	%edx, %rsi
	addl	%ebx, %edx
	vmovq	(%r13,%rsi,4), %xmm1
	vaddps	%xmm1, %xmm0, %xmm0
	decl	%r12d
	jne	.LBB0_3
# BB#4:                                 # %._crit_edge.loopexit.i
                                        #   in Loop: Header=BB0_2 Depth=2
	vmovd	%xmm0, %r8
.LBB0_5:                                # %._crit_edge.i
                                        #   in Loop: Header=BB0_2 Depth=2
	leaq	(%rax,%rax), %rdx
	addl	%ebp, %edx
	movslq	%edx, %rdx
	movq	%r8, (%r14,%rdx,4)
	addl	$2, %ecx
	incq	%rax
	incq	%rdi
	cmpq	%r15, %rdi
	jne	.LBB0_2
# BB#6:                                 # %dim_0_exit.i
                                        #   in Loop: Header=BB0_1 Depth=1
	incq	%r9
	incq	%r11
	cmpq	-16(%rsp), %r11         # 8-byte Folded Reload
	jne	.LBB0_1
# BB#7:                                 # %__read_2_separated_args.exit
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp20:
	.size	read_2, .Ltmp20-read_2
.Ltmp21:
	.cfi_endproc
.Leh_func_end0:


	.section	".note.GNU-stack","",@progbits
