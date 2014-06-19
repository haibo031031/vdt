# mark_begin;
# Threads 4
        .align    16,0x90
	.globl read_1
read_1:
..B1.1:                         # Preds ..B1.0 Latency 57
        pushq     %r12                                          # c1
        pushq     %r13                                          # c5
        pushq     %r14                                          # c9
        pushq     %r15                                          # c13
        pushq     %rbx                                          # c17
        movq      80(%rdi), %rcx                                # c21
        movq      %rsi, %rax                                    # c25
        movq      (%rdi), %rdx                                  # c25
        movq      %rcx, %r9                                     # c29
        movq      %rdx, -32(%rsp)                               # c29
        sarq      $4, %r9                                       # c33
        movq      40(%rdi), %r8                                 # c33
        movq      32(%rdi), %rdx                                # c37
        movq      88(%rdi), %r12                                # c37
        movl      16(%rdi), %r11d                               # c41
        movq      8(%rdi), %rsi                                 # c41
        movq      %rcx, %rdi                                    # c45
        movq      (%rax), %rbx                                  # c45
        andq      $-16, %rdi                                    # c49
        movq      8(%rax), %rax                                 # c49
        movq      %r9, -24(%rsp)                                # c53
        testq     %r9, %r9                                      # c53
        je        ..B1.9        # Prob 0%                       # c57
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r11 r12
..CL2:
..B1.3:                         # Preds ..B1.1 Latency 88
        movl      %r11d, %r10d                                  # c1
        movq      %r12, %r14                                    # c5
        movq      %rcx, %r13                                    # c5
        imulq     %rax, %r14                                    # c9
        imulq     %rbx, %r13                                    # c20
        addq      %r8, %r14                                     # c31
        movq      %r11, %r9                                     # c31
        imulq     %r14, %r9                                     # c35
        imull     %r10d, %r14d                                  # c46
        addq      %rdx, %r13                                    # c56
        movq      $0, -96(%rsp)                                 # c56
        movl      %r13d, %r15d                                  # c60
        addq      %r9, %r13                                     # c64
        addl      %r15d, %r14d                                  # c64
        movq      %rsi, %r15                                    # c68
        movq      -32(%rsp), %r9                                # c68
        movq      %rdi, -88(%rsp)                               # c72
        movq      %rsi, -40(%rsp)                               # c72
        movq      %rax, -80(%rsp)                               # c76
        movq      -24(%rsp), %rsi                               # c76
        movq      %rcx, -72(%rsp)                               # c80
        movq      %r8, -56(%rsp)                                # c80
        movq      %rdx, -64(%rsp)                               # c84
        movq      -96(%rsp), %r8                                # c84
        movq      %rbx, -48(%rsp)                               # c88
                                # LOE rbp rsi r8 r9 r11 r12 r13 r15 r10d r14d
..CL3:
..B1.4:                         # Preds ..B1.7 ..B1.3 Latency 21
        xorl      %ecx, %ecx                                    # c1
        lea       (%r15,%r13,4), %rdx                           # c1
        lea       (%r9,%r13,4), %rbx                            # c5
        movl      %r14d, %edi                                   # c5
        movq      %rsi, %rax                                    # c9
        movl      %r10d, -24(%rsp)                              # c9
        movq      %r8, -96(%rsp)                                # c13
        movq      -40(%rsp), %r10                               # c13
        movq      %r11, -16(%rsp)                               # c17
        movq      -32(%rsp), %r8                                # c17
        movq      %r12, -8(%rsp)                                # c21
        .align    16,0x90
                                # LOE rax rdx rcx rbx rbp rsi r8 r9 r10 r13 r15 edi r14d
..CL4:
..B1.5:                         # Preds ..B1.5 ..B1.4 Latency 33
        movl      %edi, %r12d                                   # c1
        movq      %rcx, %r11                                    # c1
        movslq    %r12d, %r12                                   # c5
        vprefetch0 64(%r11,%rbx)                                # c5
        vloadunpackld (%r8,%r12,4), %zmm0                       # c9
        vprefetch1 256(%r11,%rbx)                               # c9
        vloadunpackhd 64(%r8,%r12,4), %zmm0                     # c13
        vprefetche0 64(%r11,%rdx)                               # c13
        vaddps    _const_0(%rip){1to16}, %zmm0, %zmm1           # c17
        addl      $16, %edi                                     # c21
        vprefetche1 256(%r11,%rdx)                              # c21
        vpackstoreld %zmm1, (%r10,%r12,4)                       # c25
        lea       64(%r11), %rcx                                # c25
        vpackstorehd %zmm1, 64(%r10,%r12,4)                     # c29
        decq      %rax                                          # c29
        jne       ..B1.5        # Prob 0%                       # c33
                                # LOE rax rdx rcx rbx rbp rsi r8 r9 r10 r13 r15 edi r14d
..B1.6:                         # Preds ..B1.5 Latency 9
        movq      %r10, -40(%rsp)                               # c1
        movl      -24(%rsp), %r10d                              # c1
        movq      -96(%rsp), %r8                                # c5
        movq      -16(%rsp), %r11                               # c5
        movq      -8(%rsp), %r12                                # c9
                                # LOE rbp rsi r8 r9 r10 r11 r12 r13 r15 r8d r10d r11d r12d r14d r8b r10b r11b r12b
..CL5:
..B1.7:                         # Preds ..B1.6 Latency 9
        incq      %r8                                           # c1
        addl      %r10d, %r14d                                  # c1
        lea       (%r9,%r11,4), %r9                             # c5
        lea       (%r15,%r11,4), %r15                           # c5
        cmpq      %r12, %r8                                     # c9
        jne       ..B1.4        # Prob 0%                       # c9
                                # LOE rbp rsi r8 r9 r11 r12 r13 r15 r10d r11d r12d r14d r11b r12b
..B1.8:                         # Preds ..B1.7 Latency 13
        movq      -88(%rsp), %rdi                               # c1
        movq      -80(%rsp), %rax                               # c1
        movq      -40(%rsp), %rsi                               # c5
        movq      -72(%rsp), %rcx                               # c5
        movq      -64(%rsp), %rdx                               # c9
        movq      -56(%rsp), %r8                                # c9
        movq      -48(%rsp), %rbx                               # c13
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r11 r12
..CL1:
..B1.9:                         # Preds ..B1.8 ..B1.1 Latency 1
        cmpq      %rdi, %rcx                                    # c1
        je        ..B1.17       # Prob 0%                       # c1
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r11 r12
..CL7:
..B1.11:                        # Preds ..B1.9 Latency 55
        movl      %r12d, %r10d                                  # c1
        imull     %eax, %r10d                                   # c5
        movl      %edi, %r13d                                   # c15
        subq      %rcx, %rdi                                    # c19
        addl      %r10d, %r8d                                   # c19
        imull     %ebx, %ecx                                    # c23
        imull     %r11d, %r8d                                   # c33
        addl      %r13d, %edx                                   # c43
        movl      $1, %eax                                      # c43
        addl      %ecx, %edx                                    # c47
        xorl      %r9d, %r9d                                    # c47
        addl      %edx, %r8d                                    # c51
        kmov      %eax, %k1                                     # c51
        movq      -32(%rsp), %rcx                               # c55
                                # LOE rcx rbp rsi rdi r9 r12 r8d r11d k1
..CL8:
..B1.12:                        # Preds ..B1.15 ..B1.11 Latency 1
        movl      %r8d, %edx                                    # c1
        movq      %rdi, %rax                                    # c1
                                # LOE rax rcx rbp rsi rdi r9 r12 edx r8d r11d k1
..CL9:
..B1.13:                        # Preds ..B1.13 ..B1.12 Latency 21
        movl      %edx, %ebx                                    # c1
        incl      %edx                                          # c1
        movslq    %ebx, %rbx                                    # c5
        incq      %rax                                          # c5
        vbroadcastss (%rcx,%rbx,4), %zmm0{%k1}                  # c9
        vaddps    _const_0(%rip){1to16}, %zmm0, %zmm1{%k1}      # c13
        nop                                                     # c17
        vpackstorelps %zmm1, (%rsi,%rbx,4){%k1}                 # c21
        jne       ..B1.13       # Prob 0%                       # c21
                                # LOE rax rcx rbp rsi rdi r9 r12 edx r8d r11d k1
..CL10:
..B1.15:                        # Preds ..B1.13 Latency 5
        incq      %r9                                           # c1
        addl      %r11d, %r8d                                   # c1
        cmpq      %r12, %r9                                     # c5
        jne       ..B1.12       # Prob 0%                       # c5
                                # LOE rcx rbp rsi rdi r9 r12 r8d r11d k1
..CL6:
..B1.17:                        # Preds ..B1.15 ..B1.9 Latency 25
        popq      %rbx                                          # c5
        popq      %r15                                          # c9
        popq      %r14                                          # c13
        popq      %r13                                          # c17
        popq      %r12                                          # c21
        ret                                                     # c25
        .align    16,0x90
                                # LOE rbp
# mark_end;
	.type	read_1,@function
	.size	read_1,.-read_1
