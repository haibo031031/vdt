        .file "/tmp/25bbc1bb-30de-46f8-9fa9-a2831eb3688f.ll"
        .text
        .align 4
        .globl _const_0
_const_0:
        .long 0x40400000
# mark_begin;
# Threads 4
        .align    16,0x90
	.globl read_1
read_1:
..B1.1:                         # Preds ..B1.0 Latency 71
        pushq     %r13                                          # c1
        pushq     %rbx                                          # c5
        movq      %rsi, %r10                                    # c5
        movq      88(%rdi), %rsi                                # c9
        movq      80(%rdi), %rdx                                # c9
        movl      %edx, %r13d                                   # c13
        movl      (%r10), %eax                                  # c17
        movl      8(%r10), %r11d                                # c17
        movl      %esi, %r10d                                   # c21
        imull     %r11d, %r10d                                  # c25
        imull     %eax, %r13d                                   # c35
        addl      40(%rdi), %r10d                               # c45
        movl      16(%rdi), %ecx                                # c45
        imull     %ecx, %r10d                                   # c49
        addl      32(%rdi), %r13d                               # c59
        movl      $1, %eax                                      # c59
        xorl      %r8d, %r8d                                    # c63
        movq      (%rdi), %r9                                   # c63
        movq      8(%rdi), %rbx                                 # c67
        addl      %r13d, %r10d                                  # c67
        kmov      %eax, %k1                                     # c71
                                # LOE rdx rbx rbp rsi r8 r9 r12 r14 r15 ecx r10d k1
..CL1:
..B1.2:                         # Preds ..B1.5 ..B1.1 Latency 1
        movl      %r10d, %edi                                   # c1
        movq      %rdx, %rax                                    # c1
                                # LOE rax rdx rbx rbp rsi r8 r9 r12 r14 r15 ecx edi r10d k1
..CL2:
..B1.3:                         # Preds ..B1.3 ..B1.2 Latency 21
        movl      %edi, %r11d                                   # c1
        incl      %edi                                          # c1
        movslq    %r11d, %r11                                   # c5
        decq      %rax                                          # c5
        vbroadcastss (%r9,%r11,4), %zmm0{%k1}                   # c9
        vaddps    _const_0(%rip){1to16}, %zmm0, %zmm1{%k1}      # c13
        nop                                                     # c17
        vpackstorelps %zmm1, (%rbx,%r11,4){%k1}                 # c21
        jne       ..B1.3        # Prob 0%                       # c21
                                # LOE rax rdx rbx rbp rsi r8 r9 r12 r14 r15 ecx edi r10d k1
..CL3:
..B1.5:                         # Preds ..B1.3 Latency 5
        incq      %r8                                           # c1
        addl      %ecx, %r10d                                   # c1
        cmpq      %rsi, %r8                                     # c5
        jne       ..B1.2        # Prob 0%                       # c5
                                # LOE rdx rbx rbp rsi r8 r9 r12 r14 r15 ecx r10d k1
..CL4:
..B1.7:                         # Preds ..B1.5 Latency 13
        popq      %rbx                                          # c5
        popq      %r13                                          # c9
        ret                                                     # c13
        .align    16,0x90
                                # LOE
# mark_end;
	.type	read_1,@function
	.size	read_1,.-read_1
# mark_begin;
# Threads 4
        .align    16,0x90
	.globl read_2
read_2:
..B2.1:                         # Preds ..B2.0 Latency 75
        pushq     %r12                                          # c1
        pushq     %r13                                          # c5
        pushq     %r15                                          # c9
        movq      %rsi, %rdx                                    # c9
        movq      88(%rdi), %r11                                # c13
        movq      80(%rdi), %rsi                                # c13
        movl      %esi, %r15d                                   # c17
        movl      (%rdx), %eax                                  # c21
        movl      8(%rdx), %ecx                                 # c21
        movl      %r11d, %edx                                   # c25
        imull     %ecx, %edx                                    # c29
        imull     %eax, %r15d                                   # c39
        addl      40(%rdi), %edx                                # c49
        movl      16(%rdi), %r9d                                # c49
        imull     %r9d, %edx                                    # c53
        addl      32(%rdi), %r15d                               # c63
        movl      $3, %eax                                      # c63
        xorl      %r12d, %r12d                                  # c67
        movq      (%rdi), %r8                                   # c67
        movq      8(%rdi), %r10                                 # c71
        lea       (%rdx,%r15,2), %edx                           # c71
        kmov      %eax, %k1                                     # c75
                                # LOE rbx rbp rsi r8 r10 r11 r12 r13 r14 edx r9d k1
..CL5:
..B2.2:                         # Preds ..B2.11 ..B2.1 Latency 1
        movl      %edx, %ecx                                    # c1
        movq      %rsi, %rax                                    # c1
                                # LOE rax rbx rbp rsi r8 r10 r11 r12 r14 edx ecx r9d k1
..CL6:
..B2.3:                         # Preds ..B2.9 ..B2.2 Latency 21
        movslq    %ecx, %r15                                    # c1
        lea       (%r8,%r15,4), %r13                            # c5
        movq      %r13, %rdi                                    # c9
        andq      $63, %rdi                                     # c13
        vloadunpacklps (%r13), %zmm0{%k1}                       # c17
        cmpq      $57, %rdi                                     # c17
        jb        ..B2.6        # Prob 0%                       # c21
                                # LOE rax rbx rbp rsi r8 r10 r11 r12 r13 r14 r15 edx ecx r9d zmm0 k1
..CL8:
..B2.5:                         # Preds ..B2.3 Latency 1
        vloadunpackhps 64(%r13), %zmm0{%k1}                     # c1
                                # LOE rax rbx rbp rsi r8 r10 r11 r12 r14 r15 edx ecx r9d zmm0 k1
..CL7:
..B2.6:                         # Preds ..B2.5 ..B2.3 Latency 17
        lea       (%r10,%r15,4), %r13                           # c1
        vaddps    _const_0(%rip){1to16}, %zmm0, %zmm0           # c5
        movq      %r13, %rdi                                    # c9
        andq      $63, %rdi                                     # c13
        vpackstorelps %zmm0, (%r13){%k1}                        # c13
        cmpq      $57, %rdi                                     # c17
        jb        ..B2.9        # Prob 0%                       # c17
                                # LOE rax rbx rbp rsi r8 r10 r11 r12 r13 r14 edx ecx r9d zmm0 k1
..CL10:
..B2.8:                         # Preds ..B2.6 Latency 1
        vpackstorehps %zmm0, 64(%r13){%k1}                      # c1
        movb      %al, %al                                      # c1
                                # LOE rax rbx rbp rsi r8 r10 r11 r12 r14 edx ecx r9d k1
..CL9:
..B2.9:                         # Preds ..B2.8 ..B2.6 Latency 5
        addl      $2, %ecx                                      # c1
        decq      %rax                                          # c5
        jne       ..B2.3        # Prob 0%                       # c5
                                # LOE rax rbx rbp rsi r8 r10 r11 r12 r14 edx ecx r9d k1
..CL11:
..B2.11:                        # Preds ..B2.9 Latency 5
        incq      %r12                                          # c1
        addl      %r9d, %edx                                    # c1
        cmpq      %r11, %r12                                    # c5
        jne       ..B2.2        # Prob 0%                       # c5
                                # LOE rbx rbp rsi r8 r10 r11 r12 r13 r14 edx r9d k1
..CL12:
..B2.13:                        # Preds ..B2.11 Latency 17
        popq      %r15                                          # c5
        popq      %r13                                          # c9
        popq      %r12                                          # c13
        ret                                                     # c17
        .align    16,0x90
                                # LOE rbp
# mark_end;
	.type	read_2,@function
	.size	read_2,.-read_2
# mark_begin;
# Threads 4
        .align    16,0x90
	.globl read_4
read_4:
..B3.1:                         # Preds ..B3.0 Latency 75
        pushq     %r12                                          # c1
        pushq     %r13                                          # c5
        pushq     %r15                                          # c9
        movq      %rsi, %rdx                                    # c9
        movq      88(%rdi), %r11                                # c13
        movq      80(%rdi), %rsi                                # c13
        movl      %esi, %r15d                                   # c17
        movl      (%rdx), %eax                                  # c21
        movl      8(%rdx), %ecx                                 # c21
        movl      %r11d, %edx                                   # c25
        imull     %ecx, %edx                                    # c29
        imull     %eax, %r15d                                   # c39
        addl      40(%rdi), %edx                                # c49
        movl      16(%rdi), %r9d                                # c49
        imull     %r9d, %edx                                    # c53
        addl      32(%rdi), %r15d                               # c63
        movl      $15, %eax                                     # c63
        xorl      %r12d, %r12d                                  # c67
        movq      (%rdi), %r8                                   # c67
        movq      8(%rdi), %r10                                 # c71
        lea       (%rdx,%r15,4), %edx                           # c71
        kmov      %eax, %k1                                     # c75
                                # LOE rbx rbp rsi r8 r10 r11 r12 r13 r14 edx r9d k1
..CL13:
..B3.2:                         # Preds ..B3.11 ..B3.1 Latency 1
        movl      %edx, %ecx                                    # c1
        movq      %rsi, %rax                                    # c1
                                # LOE rax rbx rbp rsi r8 r10 r11 r12 r14 edx ecx r9d k1
..CL14:
..B3.3:                         # Preds ..B3.9 ..B3.2 Latency 21
        movslq    %ecx, %r15                                    # c1
        lea       (%r8,%r15,4), %r13                            # c5
        movq      %r13, %rdi                                    # c9
        andq      $63, %rdi                                     # c13
        vloadunpacklps (%r13), %zmm0{%k1}                       # c17
        cmpq      $49, %rdi                                     # c17
        jb        ..B3.6        # Prob 0%                       # c21
                                # LOE rax rbx rbp rsi r8 r10 r11 r12 r13 r14 r15 edx ecx r9d zmm0 k1
..CL16:
..B3.5:                         # Preds ..B3.3 Latency 1
        vloadunpackhps 64(%r13), %zmm0{%k1}                     # c1
                                # LOE rax rbx rbp rsi r8 r10 r11 r12 r14 r15 edx ecx r9d zmm0 k1
..CL15:
..B3.6:                         # Preds ..B3.5 ..B3.3 Latency 17
        lea       (%r10,%r15,4), %r13                           # c1
        vaddps    _const_0(%rip){1to16}, %zmm0, %zmm0           # c5
        movq      %r13, %rdi                                    # c9
        andq      $63, %rdi                                     # c13
        vpackstorelps %zmm0, (%r13){%k1}                        # c13
        cmpq      $49, %rdi                                     # c17
        jb        ..B3.9        # Prob 0%                       # c17
                                # LOE rax rbx rbp rsi r8 r10 r11 r12 r13 r14 edx ecx r9d zmm0 k1
..CL18:
..B3.8:                         # Preds ..B3.6 Latency 1
        vpackstorehps %zmm0, 64(%r13){%k1}                      # c1
        movb      %al, %al                                      # c1
                                # LOE rax rbx rbp rsi r8 r10 r11 r12 r14 edx ecx r9d k1
..CL17:
..B3.9:                         # Preds ..B3.8 ..B3.6 Latency 5
        addl      $4, %ecx                                      # c1
        decq      %rax                                          # c5
        jne       ..B3.3        # Prob 0%                       # c5
                                # LOE rax rbx rbp rsi r8 r10 r11 r12 r14 edx ecx r9d k1
..CL19:
..B3.11:                        # Preds ..B3.9 Latency 5
        incq      %r12                                          # c1
        addl      %r9d, %edx                                    # c1
        cmpq      %r11, %r12                                    # c5
        jne       ..B3.2        # Prob 0%                       # c5
                                # LOE rbx rbp rsi r8 r10 r11 r12 r13 r14 edx r9d k1
..CL20:
..B3.13:                        # Preds ..B3.11 Latency 17
        popq      %r15                                          # c5
        popq      %r13                                          # c9
        popq      %r12                                          # c13
        ret                                                     # c17
        .align    16,0x90
                                # LOE rbp
# mark_end;
	.type	read_4,@function
	.size	read_4,.-read_4
# mark_begin;
# Threads 4
        .align    16,0x90
	.globl read_8
read_8:
..B4.1:                         # Preds ..B4.0 Latency 75
        pushq     %r12                                          # c1
        pushq     %r13                                          # c5
        pushq     %r15                                          # c9
        movq      %rsi, %rdx                                    # c9
        movq      88(%rdi), %r11                                # c13
        movq      80(%rdi), %rsi                                # c13
        movl      %esi, %r15d                                   # c17
        movl      (%rdx), %eax                                  # c21
        movl      8(%rdx), %ecx                                 # c21
        movl      %r11d, %edx                                   # c25
        imull     %ecx, %edx                                    # c29
        imull     %eax, %r15d                                   # c39
        addl      40(%rdi), %edx                                # c49
        movl      16(%rdi), %r9d                                # c49
        imull     %r9d, %edx                                    # c53
        addl      32(%rdi), %r15d                               # c63
        movl      $255, %eax                                    # c63
        xorl      %r12d, %r12d                                  # c67
        movq      (%rdi), %r8                                   # c67
        movq      8(%rdi), %r10                                 # c71
        lea       (%rdx,%r15,8), %edx                           # c71
        kmov      %eax, %k1                                     # c75
                                # LOE rbx rbp rsi r8 r10 r11 r12 r13 r14 edx r9d k1
..CL21:
..B4.2:                         # Preds ..B4.11 ..B4.1 Latency 1
        movl      %edx, %ecx                                    # c1
        movq      %rsi, %rax                                    # c1
                                # LOE rax rbx rbp rsi r8 r10 r11 r12 r14 edx ecx r9d k1
..CL22:
..B4.3:                         # Preds ..B4.9 ..B4.2 Latency 21
        movslq    %ecx, %r15                                    # c1
        lea       (%r8,%r15,4), %r13                            # c5
        movq      %r13, %rdi                                    # c9
        andq      $63, %rdi                                     # c13
        vloadunpacklps (%r13), %zmm0{%k1}                       # c17
        cmpq      $33, %rdi                                     # c17
        jb        ..B4.6        # Prob 0%                       # c21
                                # LOE rax rbx rbp rsi r8 r10 r11 r12 r13 r14 r15 edx ecx r9d zmm0 k1
..CL24:
..B4.5:                         # Preds ..B4.3 Latency 1
        vloadunpackhps 64(%r13), %zmm0{%k1}                     # c1
                                # LOE rax rbx rbp rsi r8 r10 r11 r12 r14 r15 edx ecx r9d zmm0 k1
..CL23:
..B4.6:                         # Preds ..B4.5 ..B4.3 Latency 17
        lea       (%r10,%r15,4), %r13                           # c1
        vaddps    _const_0(%rip){1to16}, %zmm0, %zmm0           # c5
        movq      %r13, %rdi                                    # c9
        andq      $63, %rdi                                     # c13
        vpackstorelps %zmm0, (%r13){%k1}                        # c13
        cmpq      $33, %rdi                                     # c17
        jb        ..B4.9        # Prob 0%                       # c17
                                # LOE rax rbx rbp rsi r8 r10 r11 r12 r13 r14 edx ecx r9d zmm0 k1
..CL26:
..B4.8:                         # Preds ..B4.6 Latency 1
        vpackstorehps %zmm0, 64(%r13){%k1}                      # c1
        movb      %al, %al                                      # c1
                                # LOE rax rbx rbp rsi r8 r10 r11 r12 r14 edx ecx r9d k1
..CL25:
..B4.9:                         # Preds ..B4.8 ..B4.6 Latency 5
        addl      $8, %ecx                                      # c1
        decq      %rax                                          # c5
        jne       ..B4.3        # Prob 0%                       # c5
                                # LOE rax rbx rbp rsi r8 r10 r11 r12 r14 edx ecx r9d k1
..CL27:
..B4.11:                        # Preds ..B4.9 Latency 5
        incq      %r12                                          # c1
        addl      %r9d, %edx                                    # c1
        cmpq      %r11, %r12                                    # c5
        jne       ..B4.2        # Prob 0%                       # c5
                                # LOE rbx rbp rsi r8 r10 r11 r12 r13 r14 edx r9d k1
..CL28:
..B4.13:                        # Preds ..B4.11 Latency 17
        popq      %r15                                          # c5
        popq      %r13                                          # c9
        popq      %r12                                          # c13
        ret                                                     # c17
        .align    16,0x90
                                # LOE rbp
# mark_end;
	.type	read_8,@function
	.size	read_8,.-read_8
# mark_begin;
# Threads 4
        .align    16,0x90
	.globl read_16
read_16:
..B5.1:                         # Preds ..B5.0 Latency 67
        pushq     %r14                                          # c1
        pushq     %rbx                                          # c5
        movq      %rsi, %r10                                    # c5
        movq      88(%rdi), %rsi                                # c9
        movq      80(%rdi), %rdx                                # c9
        movl      %edx, %r14d                                   # c13
        movl      (%r10), %eax                                  # c17
        movl      8(%r10), %r11d                                # c17
        movl      %esi, %r10d                                   # c21
        imull     %r11d, %r10d                                  # c25
        imull     %eax, %r14d                                   # c35
        addl      40(%rdi), %r10d                               # c45
        movl      16(%rdi), %ecx                                # c45
        imull     %ecx, %r10d                                   # c49
        addl      32(%rdi), %r14d                               # c59
        xorl      %r9d, %r9d                                    # c59
        shll      $4, %r14d                                     # c63
        movq      (%rdi), %r8                                   # c63
        movq      8(%rdi), %rbx                                 # c67
        addl      %r14d, %r10d                                  # c67
                                # LOE rdx rbx rbp rsi r8 r9 r12 r13 r15 ecx r10d
..CL29:
..B5.2:                         # Preds ..B5.5 ..B5.1 Latency 1
        movl      %r10d, %edi                                   # c1
        movq      %rdx, %rax                                    # c1
                                # LOE rax rdx rbx rbp rsi r8 r9 r12 r13 r15 ecx edi r10d
..CL30:
..B5.3:                         # Preds ..B5.3 ..B5.2 Latency 29
        movl      %edi, %r11d                                   # c1
        addl      $16, %edi                                     # c1
        movslq    %r11d, %r11                                   # c5
        decq      %rax                                          # c5
        vloadunpacklps (%r8,%r11,4), %zmm0                      # c9
        vloadunpackhps 64(%r8,%r11,4), %zmm0                    # c13
        vaddps    _const_0(%rip){1to16}, %zmm0, %zmm1           # c17
        nop                                                     # c21
        vpackstorelps %zmm1, (%rbx,%r11,4)                      # c25
        vpackstorehps %zmm1, 64(%rbx,%r11,4)                    # c29
        jne       ..B5.3        # Prob 0%                       # c29
                                # LOE rax rdx rbx rbp rsi r8 r9 r12 r13 r15 ecx edi r10d
..CL31:
..B5.5:                         # Preds ..B5.3 Latency 5
        incq      %r9                                           # c1
        addl      %ecx, %r10d                                   # c1
        cmpq      %rsi, %r9                                     # c5
        jne       ..B5.2        # Prob 0%                       # c5
                                # LOE rdx rbx rbp rsi r8 r9 r12 r13 r15 ecx r10d
..CL32:
..B5.7:                         # Preds ..B5.5 Latency 13
        popq      %rbx                                          # c5
        popq      %r14                                          # c9
        ret                                                     # c13
        .align    16,0x90
                                # LOE rbp
# mark_end;
	.type	read_16,@function
	.size	read_16,.-read_16
	.section .note.GNU-stack, ""
